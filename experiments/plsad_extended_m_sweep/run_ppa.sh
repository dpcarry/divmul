#!/usr/bin/env bash
set -euo pipefail

HERE=$(cd "$(dirname "$0")" && pwd)
ROOT=$(cd "$HERE/../.." && pwd)
DC_SCRIPT="$ROOT/dc/hier_compile_10ns/module.tcl"
PT_SCRIPT="$ROOT/pt_dc/canonical_refresh/pt.tcl"
RTL_FILES="$ROOT/PACE/common/FP_DIV_WRAPPER_32.v|$ROOT/rtl/paper_repro/plsad_prior_fp32_paceio.v|$HERE/tops.v"

run_one() {
    local top=$1
    local dc_dir="$HERE/dc/$top"
    local pt_dir="$HERE/pt/$top"
    mkdir -p "$dc_dir" "$pt_dir"
    (
        cd "$ROOT/dc/hier_compile_10ns"
        TOP_LEVEL="$top" RTL_FILES="$RTL_FILES" OUTPUT_DIR="$dc_dir" \
            PERIOD_NS=10.0 dc_shell -f "$DC_SCRIPT" \
            >"$dc_dir/dc_console.log" 2>&1
    )
    TOP_LEVEL="$top" DC_OUTPUT_DIR="$dc_dir" REPORT_DIR="$pt_dir" \
        pt_shell -file "$PT_SCRIPT" >"$pt_dir/pt_console.log" 2>&1
}

run_one plsad_m10_fp32_paceio
run_one plsad_m12_fp32_paceio
run_one plsad_m15_fp32_paceio
