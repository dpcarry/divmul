#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/.." && pwd)
DC_SCRIPT="$ROOT/dc/hier_compile_10ns/module.tcl"
PT_SCRIPT="$ROOT/pt_dc/canonical_refresh/pt.tcl"
RTL_FILES="$ROOT/PACE/common/FP_DIV_WRAPPER_32.v|$ROOT/rtl/divopt/oadm_experiment_variants.v|$ROOT/rtl/root_opt/oadm_root_opt.v|$ROOT/rtl/runtime_drop_sweep/oadm_runtime_drop_sweep.v"

for residual_drop in 10 12 14 16 18; do
    for scale_drop in 14 16 18; do
        tag="r${residual_drop}_s${scale_drop}"
        top="oadm_runtime_drop_${tag}"
        dc_dir="$ROOT/dc/runtime_drop_sweep/outputs/$tag"
        pt_dir="$ROOT/pt_dc/runtime_drop_sweep/reports/$tag"
        mkdir -p "$dc_dir" "$pt_dir"

        if [[ ! -s "$dc_dir/$top.dc.rpt" ]]; then
            printf 'Running DC %s\n' "$tag"
            (
                cd "$ROOT/dc/hier_compile_10ns"
                TOP_LEVEL="$top" RTL_FILES="$RTL_FILES" OUTPUT_DIR="$dc_dir" \
                    PERIOD_NS=10.0 dc_shell -f "$DC_SCRIPT" \
                    >"$dc_dir/dc_console.log" 2>&1
            )
        fi
        if [[ ! -s "$pt_dir/$top.pt.qor.rpt" ]]; then
            printf 'Running PT %s\n' "$tag"
            TOP_LEVEL="$top" DC_OUTPUT_DIR="$dc_dir" REPORT_DIR="$pt_dir" \
                pt_shell -file "$PT_SCRIPT" >"$pt_dir/pt_console.log" 2>&1
        fi
    done
done

