#!/bin/bash
set -euo pipefail

tops=(oadm_fixed_l3_div_nopipe oadm_fixed_l3_div_opt)
for top in "${tops[@]}"; do
    mkdir -p "outputs_fair10/${top}"
    TOP_LEVEL="${top}" OUTPUT_ROOT=outputs_fair10 PERIOD_NS=10.0 \
        dc_shell -f module.tcl \
        | tee "outputs_fair10/${top}/dc_console.txt"
done
