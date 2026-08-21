#!/bin/bash
set -euo pipefail

run_one() {
    local top=$1
    local dc_dir=$2
    local tag=$3
    mkdir -p "reports/${tag}"
    TOP_LEVEL="${top}" DC_DIR="${dc_dir}" REPORT_TAG="${tag}" \
        pt_shell -file oadm_aligned.tcl | tee "reports/${tag}/pt_console.txt"
}

for level in 0 1 2; do
    top="oadm_fixed_l${level}_div_paceio_opt"
    run_one "${top}" \
        "../../dc/multilevel_opt/outputs_paceio/${top}" "oadm_l${level}"
done

run_one oadm_fixed_l3_div_opt_paceio \
    ../../dc/0123_divopt/outputs_fair10_area/oadm_fixed_l3_div_opt_paceio \
    oadm_l3
