#!/usr/bin/env bash
# Planche-contact : N vignettes en UNE seule image.
# Grille adaptée au ratio : 3 colonnes en vertical (9:16), 5 en horizontal.
# usage: contact-sheet.sh <video> <sortie.jpg> [nb_vignettes] [largeur_vignette]
set -euo pipefail
. "$(cd "$(dirname "$0")" && pwd)/lib.sh"
need_ffmpeg

SRC="${1:?usage: contact-sheet.sh <video> <sortie.jpg> [nb] [largeur]}"
OUT="${2:?sortie manquante}"; N="${3:-}"; W="${4:-}"

IDX=$(video_stream_index "$SRC")
read -r VW VH <<< "$(video_dims "$SRC" "$IDX")"
VW=${VW:-1080}; VH=${VH:-1920}
DUR=$(ffprobe -v error -show_entries format=duration -of csv=p=0 "$SRC" 2>/dev/null)
DUR=${DUR:-1}

if [ "$VH" -gt "$VW" ]; then COLS=3; N="${N:-15}"; W="${W:-260}"
else                        COLS=5; N="${N:-20}"; W="${W:-320}"; fi
ROWS=$(python3 -c "import math;print(math.ceil($N/$COLS))")
N=$((COLS*ROWS))

TMP=$(mktemp -d); trap 'rm -rf "$TMP"' EXIT

# Passe 1 : une frame par instant calculé. `-ss` avant `-i` est exact et ne
# dérive pas, contrairement au filtre `fps=` qui suit les PTS du conteneur et
# rend une planche à moitié vide sur un fichier aux timestamps irréguliers.
STEP=$(python3 -c "print(f'{$DUR/$N:.6f}')")
GOT=0
for k in $(seq 0 $((N-1))); do
  T=$(python3 -c "print(f'{$k*$STEP:.3f}')")
  if ffmpeg -v error -nostdin -y -ss "$T" -i "$SRC" -map "0:${IDX}" \
       -frames:v 1 -update 1 -vf "scale=${W}:-2" -q:v 4 \
       "$TMP/$(printf '%04d' "$k").jpg" 2>/dev/null; then GOT=$((GOT+1)); fi
done
[ "$GOT" -gt 0 ] || { echo "aucune frame extraite de $SRC" >&2; exit 1; }

# La grille est recalculée sur ce qu'on a VRAIMENT obtenu : pas de cases vides.
ROWS=$(python3 -c "import math;print(math.ceil($GOT/$COLS))")

# Passe 2 : assemblage. Le glob évite de dépendre d'une numérotation continue.
ffmpeg -v error -nostdin -y -pattern_type glob -i "$TMP/*.jpg" \
  -vf "tile=${COLS}x${ROWS}:margin=4:padding=4:color=black" \
  -frames:v 1 -update 1 -q:v 4 "$OUT"

echo "$OUT"
echo "  grille ${COLS}x${ROWS} = ${GOT} vignettes | source ${VW}x${VH}, ${DUR%.*}s, flux ${IDX}"
echo "  lecture : vignettes numérotées à partir de 0, de gauche à droite puis ligne par ligne."
echo "            instant de la vignette k  =  k × ${STEP}s"
