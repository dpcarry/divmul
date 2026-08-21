#!/bin/bash
set -euo pipefail

tops=(oadm_fixed_l3_div_nopipe oadm_fixed_l3_div_opt \
      oadm_fixed_l3_div_opt_csd oadm_fixed_l3_div_opt_unsigned)
for top in "${tops[@]}"; do
    mkdir -p "outputs/${top}"
    TOP_LEVEL="${top}" dc_shell -f module.tcl \
        | tee "outputs/${top}/dc_console.txt"
done
