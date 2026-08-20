#!/bin/bash
set -euo pipefail

tops=(
    oadm_runtime_div_nopipe
    oadm_runtime_mul_nopipe
    oadm_fixed_l3_div_nopipe
    oadm_fixed_l3_mul_nopipe
)

for top in "${tops[@]}"; do
    mkdir -p "reports/${top}"
    TOP_LEVEL="${top}" pt_shell -file pt.tcl \
        | tee "reports/${top}/pt_console.txt"
done
