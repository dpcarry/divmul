#!/bin/bash
set -euo pipefail

tops=(
    oadm_fixed_l0_nopipe oadm_fixed_l0_opt
    oadm_fixed_l1_nopipe oadm_fixed_l1_opt
    oadm_fixed_l2_nopipe oadm_fixed_l2_opt
    oadm_dm_nopipe oadm_runtime_opt
)

for top in "${tops[@]}"; do
    output_dir="outputs_fair10_area/${top}"
    mkdir -p "${output_dir}"
    TOP_LEVEL="${top}" OUTPUT_ROOT=outputs_fair10_area PERIOD_NS=10.0 \
        dc_shell -f module.tcl | tee "${output_dir}/dc_console.txt"
done
