#!/bin/bash
set -euo pipefail

for level in 0 1 2 3; do
    top="oadm_fixed_l${level}_div_paceio_opt"
    output_dir="outputs_paceio/${top}"
    mkdir -p "${output_dir}"
    TOP_LEVEL="${top}" OUTPUT_ROOT=outputs_paceio PERIOD_NS=10.0 \
        dc_shell -f module.tcl | tee "${output_dir}/dc_console.txt"
done
