#!/bin/bash
set -euo pipefail

tops=()
for level in 0 1 2 3; do
    tops+=("oadm_fixed_l${level}_opt")
    tops+=("oadm_fixed_l${level}_div_opt")
    tops+=("oadm_fixed_l${level}_mul_opt")
done

for top in "${tops[@]}"; do
    output_dir="outputs_sharing_10ns/${top}"
    mkdir -p "$output_dir"
    TOP_LEVEL="$top" OUTPUT_ROOT=outputs_sharing_10ns PERIOD_NS=10.0 \
        dc_shell -f module.tcl | tee "$output_dir/dc_console.txt"
done
