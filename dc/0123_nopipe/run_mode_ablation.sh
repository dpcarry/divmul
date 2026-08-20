#!/bin/bash
set -euo pipefail

tops=(
    oadm_runtime_div_nopipe
    oadm_runtime_mul_nopipe
    oadm_fixed_l3_div_nopipe
    oadm_fixed_l3_mul_nopipe
)

for top in "${tops[@]}"; do
    mkdir -p "outputs/${top}"
    TOP_LEVEL="${top}" dc_shell -f module.tcl \
        | tee "outputs/${top}/dc_console.txt"
done
