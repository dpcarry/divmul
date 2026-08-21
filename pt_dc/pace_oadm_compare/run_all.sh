#!/bin/bash
set -euo pipefail

for level in 1 2 3 4; do
    mkdir -p "reports/pace_l${level}"
    PACE_LEVEL="${level}" pt_shell -file pace_power_aligned.tcl \
        | tee "reports/pace_l${level}/pt_console.txt"
done
