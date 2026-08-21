#!/bin/bash
set -euo pipefail

for top in oadm_fixed_l0_opt oadm_fixed_l1_opt oadm_fixed_l2_opt oadm_runtime_opt; do
    output_dir="outputs_final_opt/${top}"
    mkdir -p "${output_dir}"
    TOP_LEVEL="${top}" OUTPUT_ROOT=outputs_final_opt PERIOD_NS=10.0 \
        dc_shell -f module.tcl | tee "${output_dir}/dc_console.txt"
done
