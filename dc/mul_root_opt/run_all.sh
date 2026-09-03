#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
DC_SCRIPT="$ROOT/dc/canonical_refresh/module.tcl"
PT_SCRIPT="$ROOT/pt_dc/canonical_refresh/pt.tcl"
DC_ROOT="$ROOT/dc/mul_root_opt/outputs_10ns"
PT_ROOT="$ROOT/pt_dc/mul_root_opt/reports_10ns"
RTL="$ROOT/PACE/common/FP_DIV_WRAPPER_32.v|$ROOT/rtl/mul_root_opt/oadm_mul_root_opt.v"

run_one() {
    local top=$1
    if [[ -n ${ONLY_TOP:-} && $ONLY_TOP != "$top" ]]; then
        return
    fi
    local dc_dir="$DC_ROOT/$top"
    local pt_dir="$PT_ROOT/$top"
    mkdir -p "$dc_dir" "$pt_dir"
    printf 'Running DC: %s\n' "$top"
    (
        cd "$ROOT/dc/canonical_refresh"
        TOP_LEVEL="$top" RTL_FILES="$RTL" OUTPUT_DIR="$dc_dir" \
            PERIOD_NS=10.0 dc_shell -f "$DC_SCRIPT" \
            >"$dc_dir/dc_console.log" 2>&1
    )
    printf 'Running PT: %s\n' "$top"
    TOP_LEVEL="$top" DC_OUTPUT_DIR="$dc_dir" REPORT_DIR="$pt_dir" \
        pt_shell -file "$PT_SCRIPT" >"$pt_dir/pt_console.log" 2>&1
}

for level in 0 1 2 3; do
    run_one "oadm_fixed_l${level}_mul_root_opt_accuracy"
    run_one "oadm_fixed_l${level}_mul_root_opt"
    run_one "oadm_fixed_l${level}_mul_root_opt_aggressive"
done

echo "MUL root-opt DC/PT campaign completed."
