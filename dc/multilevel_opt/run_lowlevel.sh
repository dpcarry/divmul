#!/bin/bash
set -euo pipefail

for top in oadm_fixed_l0_opt oadm_fixed_l1_opt; do
    output_dir="outputs_lowlevel_shift/${top}"
    mkdir -p "${output_dir}"
    TOP_LEVEL="${top}" OUTPUT_ROOT=outputs_lowlevel_shift PERIOD_NS=10.0 \
        dc_shell -f module.tcl | tee "${output_dir}/dc_console.txt"
done
