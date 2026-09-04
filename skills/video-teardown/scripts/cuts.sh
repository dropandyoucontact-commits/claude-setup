#!/usr/bin/env bash
# Liste horodatée des changements de plan + rythme de montage.
# usage: cuts.sh <video> [seuil]
#   seuil : 0.30 par défaut | 0.10 contenu statique (slides, talking head fixe)
#           0.40 action rapide (beaucoup de mouvement, faux positifs sinon)
set -euo pipefail
. "$(cd "$(dirname "$0")" && pwd)/lib.sh"
need_ffmpeg

SRC="${1:?usage: cuts.sh <video> [seuil]}"; TH="${2:-0.30}"
IDX=$(video_stream_index "$SRC")
DUR=$(video_duration "$SRC"); { [ -z "$DUR" ] || [ "$DUR" -lt 1 ]; } && DUR=1

# `ffprobe -f lavfi movie=...` échoue silencieusement sur les chemins à caractères
# spéciaux et renvoie zéro plan. On passe par ffmpeg + showinfo, qui est fiable.
CUTS=$(ffmpeg -v info -nostdin -i "$SRC" -map "0:${IDX}" \
         -vf "select='gt(scene,${TH})',showinfo" -f null - 2>&1 \
       | grep -oE 'pts_time:[0-9.]+' | cut -d: -f2 || true)

N=$(printf '%s' "$CUTS" | grep -c . || true)
echo "seuil=${TH}  plans=$((N + 1))  coupes=${N}  duree=${DUR}s  rythme=$(python3 -c "print(f'{$N/$DUR:.2f}')") coupes/s"
echo "--- horodatage des coupes ---"
[ -n "$CUTS" ] && printf '%s\n' "$CUTS" || echo "(aucune coupe détectée — plan unique, ou seuil trop haut : réessaie à 0.10)"
