#!/bin/bash
set -euo pipefail

for level in 0 1 2 3 4; do
    top="oadm_fixed_l${level}_nopipe"
    mkdir -p "reports/${top}"
    TOP_LEVEL="${top}" pt_shell -file pt.tcl \
        | tee "reports/${top}/pt_console.txt"
done
