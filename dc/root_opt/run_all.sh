#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
DC_SCRIPT="$ROOT/dc/canonical_refresh/module.tcl"
PT_SCRIPT="$ROOT/pt_dc/canonical_refresh/pt.tcl"
DC_ROOT="$ROOT/dc/root_opt/outputs_10ns"
PT_ROOT="$ROOT/pt_dc/root_opt/reports_10ns"

RTL=(
    "$ROOT/rtl/divopt/oadm_experiment_variants.v"
    "$ROOT/rtl/root_opt/oadm_root_opt.v"
)

join_rtl() {
    local IFS='|'
    printf '%s' "$*"
}

run_one() {
    local top=$1
    local dc_dir="$DC_ROOT/$top"
    local pt_dir="$PT_ROOT/$top"
    mkdir -p "$dc_dir" "$pt_dir"
    printf 'Running DC: %s\n' "$top"
    (
        cd "$ROOT/dc/canonical_refresh"
        TOP_LEVEL="$top" RTL_FILES="$(join_rtl "${RTL[@]}")" \
            OUTPUT_DIR="$dc_dir" PERIOD_NS=10.0 \
            dc_shell -f "$DC_SCRIPT" >"$dc_dir/dc_console.log" 2>&1
    )
    printf 'Running PT: %s\n' "$top"
    TOP_LEVEL="$top" DC_OUTPUT_DIR="$dc_dir" REPORT_DIR="$pt_dir" \
        pt_shell -file "$PT_SCRIPT" >"$pt_dir/pt_console.log" 2>&1
}

for top in oadm_runtime_root_opt \
           oadm_fixed_l0_div_root_opt \
           oadm_fixed_l1_div_root_opt \
           oadm_fixed_l2_div_root_opt \
           oadm_fixed_l3_div_root_opt; do
    if [[ -z ${ONLY_TOP:-} || $ONLY_TOP == "$top" ]]; then
        run_one "$top"
    fi
done

printf 'root_opt DC/PT campaign completed.\n'
