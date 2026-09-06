#!/usr/bin/env bash
set -euo pipefail
HERE=$(cd "$(dirname "$0")" && pwd)
ROOT=$(cd "$HERE/../../.." && pwd)
for top in audit_pace_l1_b5 audit_pace_l3_b6; do
    dc_dir="$HERE/dc/$top"
    pt_dir="$HERE/pt/$top"
    mkdir -p "$dc_dir" "$pt_dir"
    (
        cd "$ROOT/dc/hier_compile_10ns"
        TOP_LEVEL="$top" OUTPUT_DIR="$dc_dir" PERIOD_NS=10.0 \
            RTL_FILES="$ROOT/PACE/common/FP_DIV_WRAPPER_32.v|$ROOT/PACE/common/CSA3_2_Array.v|$ROOT/PACE/L1/Mantissa_Div_L1.v|$ROOT/PACE/L3/Mantissa_Div_L3.v|$HERE/pace_truncated.v" \
            dc_shell -f module.tcl > "$dc_dir/console.log" 2>&1
    )
    TOP_LEVEL="$top" DC_OUTPUT_DIR="$dc_dir" REPORT_DIR="$pt_dir" \
        pt_shell -file "$ROOT/pt_dc/canonical_refresh/pt.tcl" > "$pt_dir/console.log" 2>&1
    printf 'Completed %s\n' "$top"
done
