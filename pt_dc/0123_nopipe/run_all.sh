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
    mkdir -p "reports/${top}"
    TOP_LEVEL="${top}" pt_shell -file pt.tcl \
        | tee "reports/${top}/pt_console.txt"
done
