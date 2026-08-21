#!/bin/bash
set -euo pipefail

top=oadm_fixed_l0_opt
output_dir="outputs_l0_final/${top}"
mkdir -p "${output_dir}"
TOP_LEVEL="${top}" OUTPUT_ROOT=outputs_l0_final PERIOD_NS=10.0 \
    dc_shell -f module.tcl | tee "${output_dir}/dc_console.txt"
