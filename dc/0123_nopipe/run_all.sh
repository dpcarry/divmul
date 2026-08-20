#!/bin/bash
set -euo pipefail

tops=(
    oadm_dm_nopipe
    oadm_fixed_l0_nopipe
    oadm_fixed_l1_nopipe
    oadm_fixed_l2_nopipe
    oadm_fixed_l3_nopipe
)

for top in "${tops[@]}"; do
    mkdir -p "outputs/${top}"
    TOP_LEVEL="${top}" dc_shell -f module.tcl \
        | tee "outputs/${top}/dc_console.txt"
done
