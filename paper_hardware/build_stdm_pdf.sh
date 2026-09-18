#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
WORKSPACE_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
mkdir -p "$SCRIPT_DIR/build_stdm" "$WORKSPACE_ROOT/.cache"
cd "$SCRIPT_DIR"
dot -Tpdf pictures/stdm_compact_circuit.dot -o pictures/stdm_compact_circuit.pdf
env XDG_CACHE_HOME="$WORKSPACE_ROOT/.cache" \
    "$WORKSPACE_ROOT/.local/bin/tectonic" --keep-logs --keep-intermediates \
    --outdir build_stdm stdm_divmul.tex
cp build_stdm/stdm_divmul.pdf stdm_divmul.pdf
printf 'Built %s\n' "$SCRIPT_DIR/stdm_divmul.pdf"
