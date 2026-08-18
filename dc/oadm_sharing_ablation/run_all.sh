#!/bin/bash
set -euo pipefail

for level in 0 1 2 3 4; do
    for kind in mul div fused; do
        output_dir="outputs/L${level}/${kind}"
        mkdir -p "$output_dir"
        echo "--> Synthesizing L${level} ${kind} mantissa core"
        APPROX_LEVEL="$level" CORE_KIND="$kind" dc_shell -f module.tcl 2>&1 \
            | tee "$output_dir/dc.log"
    done
done
