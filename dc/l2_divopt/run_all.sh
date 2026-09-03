#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
DC_SCRIPT="$ROOT/dc/canonical_refresh/module.tcl"
PT_SCRIPT="$ROOT/pt_dc/canonical_refresh/pt.tcl"
DC_ROOT="$ROOT/dc/l2_divopt/outputs_10ns"
PT_ROOT="$ROOT/pt_dc/l2_divopt/reports_10ns"

RTL=(
    "$ROOT/rtl/divopt/oadm_multilevel_rounding_lut.v"
    "$ROOT/rtl/divopt/oadm_fixed_plane_centered.v"
    "$ROOT/rtl/divopt/oadm_multilevel_plane_direct.v"
    "$ROOT/rtl/divopt/oadm_multilevel_opt.v"
    "$ROOT/rtl/divopt/oadm_fixed_l2_div_opt.v"
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

tops=(
    oadm_fixed_l2_div_paceio_opt
    oadm_fixed_l2_div_specialized_paceio
    oadm_fixed_l2_div_specialized_unsigned_paceio
    oadm_fixed_l2_div_specialized_reduced_scale_paceio
    oadm_fixed_l2_div_specialized_reduced_signed_scale_paceio
    oadm_fixed_l2_div_specialized_shiftadd_paceio
    oadm_fixed_l2_div_specialized_scale_shiftadd_paceio
    oadm_fixed_l2_div_specialized_postcorr_paceio
    oadm_fixed_l2_div_specialized_shiftadd_postcorr_paceio
)

for top in "${tops[@]}"; do
    if [[ -z ${ONLY_TOP:-} || $ONLY_TOP == "$top" ]]; then
        run_one "$top"
    fi
done

printf 'L2 specialized campaign completed.\n'
