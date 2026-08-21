#!/bin/bash
set -euo pipefail

run_pt() {
    local top=$1
    local root=$2
    local tag=$3
    mkdir -p "reports/${tag}"
    TOP_LEVEL="${top}" DC_OUTPUT_ROOT="${root}" REPORT_TAG="${tag}" \
        pt_shell -file pt.tcl | tee "reports/${tag}/pt_console.txt"
}

run_pt oadm_fixed_l0_nopipe outputs_fair10_area l0_baseline
run_pt oadm_fixed_l0_opt    outputs_final_opt     l0_optimized
run_pt oadm_fixed_l1_nopipe outputs_fair10_area l1_baseline
run_pt oadm_fixed_l1_opt    outputs_final_opt     l1_optimized
run_pt oadm_fixed_l2_nopipe outputs_fair10_area l2_baseline
run_pt oadm_fixed_l2_opt    outputs_final_opt     l2_optimized
run_pt oadm_dm_nopipe       outputs_fair10_area runtime_baseline
run_pt oadm_runtime_opt     outputs_final_opt     runtime_optimized
