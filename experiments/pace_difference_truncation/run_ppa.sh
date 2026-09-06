#!/usr/bin/env bash
set -euo pipefail
HERE=$(cd "$(dirname "$0")" && pwd)
ROOT=$(cd "$HERE/../.." && pwd)
test -f "$HERE/model_checks.json"
while read -r top; do
    dc_dir="$HERE/dc/$top"
    pt_dir="$HERE/pt/$top"
    mkdir -p "$dc_dir" "$pt_dir"
    (
        cd "$ROOT/dc/hier_compile_10ns"
        TOP_LEVEL="$top" OUTPUT_DIR="$dc_dir" PERIOD_NS=10.0 \
            RTL_FILES="$ROOT/PACE/common/FP_DIV_WRAPPER_32.v|$ROOT/PACE/common/CSA3_2_Array.v|$HERE/cores.v|$HERE/tops.v" \
            dc_shell -f module.tcl > "$dc_dir/dc_console.log" 2>&1
    )
    TOP_LEVEL="$top" DC_OUTPUT_DIR="$dc_dir" REPORT_DIR="$pt_dir" \
        pt_shell -file "$ROOT/pt_dc/canonical_refresh/pt.tcl" > "$pt_dir/pt_console.log" 2>&1
    printf 'Completed %s\n' "$top"
done < "$HERE/tops.txt"
