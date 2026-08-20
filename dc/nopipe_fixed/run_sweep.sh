#!/bin/bash
set -euo pipefail

for level in 0 1 2 3; do
    top="oadm_fixed_l${level}_nopipe"
    mkdir -p "outputs/${top}"
    TOP_LEVEL="${top}" dc_shell -f module.tcl \
        | tee "outputs/${top}/dc_console.txt"
done
