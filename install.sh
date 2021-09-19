#!/usr/bin/env bash

ROOT=$(dirname "$0")
OUTDIR="$HOME/.local/bin"

[ -e "${OUTDIR}" ] || mkdir -p "${OUTDIR}"

state1=$(ls -1 "${OUTDIR}" | grep -E "wall-d")

[ -n "$state1" ] && rm "${OUTDIR}"/wall-d

cp "${ROOT}"/wall-d "{$OUTDIR}"
