#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORKSPACE_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
TECTONIC="$WORKSPACE_ROOT/.local/bin/tectonic"
CACHE_DIR="$WORKSPACE_ROOT/.cache"

mkdir -p "$SCRIPT_DIR/build" "$CACHE_DIR"
cd "$SCRIPT_DIR"

env XDG_CACHE_HOME="$CACHE_DIR" \
  "$TECTONIC" --keep-logs --keep-intermediates \
  --outdir build oadm_divmul.tex

cp build/oadm_divmul.pdf divmul.pdf
printf 'Built %s\n' "$SCRIPT_DIR/divmul.pdf"
