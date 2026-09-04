#!/usr/bin/env bash
# Helpers partages. A sourcer : . "$(dirname "$0")/lib.sh"

need_ffmpeg() {
  command -v ffmpeg >/dev/null 2>&1 || { echo "ffmpeg absent — brew install ffmpeg" >&2; exit 1; }
  command -v ffprobe >/dev/null 2>&1 || { echo "ffprobe absent — brew install ffmpeg" >&2; exit 1; }
}

# Index du VRAI flux video.
# Les MP4 telecharges depuis TikTok / Instagram embarquent une vignette MJPEG
# en flux 0 : sans ce filtre, ffmpeg extrait 25 fois la miniature au lieu de la video.
video_stream_index() {
  ffprobe -v error -show_streams -of json "$1" 2>/dev/null | python3 -c "
import sys, json
try: d = json.load(sys.stdin)
except Exception: print(0); raise SystemExit
vids = [s for s in d.get('streams', []) if s.get('codec_type') == 'video']
for s in vids:
    if s.get('disposition', {}).get('attached_pic', 0) == 1: continue
    if s.get('codec_name') == 'mjpeg' and s.get('avg_frame_rate') in ('0/0', '0/1'): continue
    print(s.get('index', 0)); raise SystemExit
print(vids[0].get('index', 0) if vids else 0)
" 2>/dev/null || echo 0
}

# "largeur hauteur" du flux donne
video_dims() {
  ffprobe -v error -select_streams "$2" -show_entries stream=width,height -of csv=p=0 "$1" 2>/dev/null | tr ',' ' '
}

video_duration() {
  ffprobe -v error -show_entries format=duration -of csv=p=0 "$1" 2>/dev/null | cut -d. -f1
}
