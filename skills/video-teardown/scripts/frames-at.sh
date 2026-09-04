#!/usr/bin/env bash
# Frames pleine resolution a des instants precis.
# usage: frames-at.sh <video> <prefixe_sortie> <t1> [t2 t3 ...]
set -euo pipefail
. "$(cd "$(dirname "$0")" && pwd)/lib.sh"
need_ffmpeg

SRC="$1"; PREFIX="$2"; shift 2
IDX=$(video_stream_index "$SRC")
for T in "$@"; do
  TAG=$(echo "$T" | tr '.' '_')
  OUT="${PREFIX}_${TAG}s.jpg"
  # -update 1 : sinon ffmpeg lit le nom de fichier comme un motif de sequence.
  ffmpeg -v error -y -ss "$T" -i "$SRC" -map "0:${IDX}" \
    -frames:v 1 -update 1 -vf "scale='min(900,iw)':-1" -q:v 2 "$OUT"
  echo "$OUT"
done
