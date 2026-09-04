#!/usr/bin/env bash
# Transcription horodatee de la piste audio d'une video, via l'API OpenAI.
# usage: transcribe.sh <video|audio> [langue]   -> JSON sur stdout
set -euo pipefail
SRC="${1:?usage: transcribe.sh <video|audio> [langue]}"; LANG="${2:-}"

KEY="${OPENAI_API_KEY:-}"
[ -z "$KEY" ] && [ -f "$HOME/.config/openai/key" ] && KEY=$(tr -d '\r\n' < "$HOME/.config/openai/key")
[ -z "$KEY" ] && { echo '{"error":"pas de cle OpenAI (OPENAI_API_KEY ou ~/.config/openai/key)"}' >&2; exit 1; }

command -v ffmpeg >/dev/null || { echo '{"error":"ffmpeg absent — brew install ffmpeg"}' >&2; exit 1; }

# la video a-t-elle une piste audio ?
HAS=$(ffprobe -v error -select_streams a -show_entries stream=codec_type -of csv=p=0 "$SRC" | head -1)
[ -z "$HAS" ] && { echo '{"error":"aucune piste audio dans ce fichier"}'; exit 0; }

TMP=$(mktemp -d); trap 'rm -rf "$TMP"' EXIT
# mono 16 kHz : format optimal pour l'ASR, fichier minuscule
ffmpeg -v error -y -i "$SRC" -vn -ac 1 -ar 16000 -c:a libmp3lame -q:a 6 "$TMP/a.mp3"

ARGS=(-s -X POST https://api.openai.com/v1/audio/transcriptions
      -H "Authorization: Bearer $KEY"
      -F "file=@$TMP/a.mp3"
      -F "model=whisper-1"
      -F "response_format=verbose_json"
      -F "timestamp_granularities[]=segment")
[ -n "$LANG" ] && ARGS+=(-F "language=$LANG")

curl "${ARGS[@]}" | python3 -c '
import json,sys
try: d=json.load(sys.stdin)
except Exception: print(sys.stdin.read() if not sys.stdin.closed else "{}"); sys.exit(0)
if "error" in d: print(json.dumps(d,ensure_ascii=False)); sys.exit(0)
out={"language":d.get("language"),"duration":d.get("duration"),
     "segments":[{"t":round(s["start"],2),"end":round(s["end"],2),"text":s["text"].strip()}
                 for s in d.get("segments",[])],
     "text":d.get("text","").strip()}
print(json.dumps(out,ensure_ascii=False,indent=1))
'
