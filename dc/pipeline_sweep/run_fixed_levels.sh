#!/bin/bash
set -euo pipefail

depths=(np p2 p3 p4 p5 p6 p7)
periods=(7.0 4.0 2.8 2.2 1.8 1.5 1.5)

for level in 0 1 2 3; do
    config="fixed_l${level}"
    for index in "${!depths[@]}"; do
        echo "--> ${config} ${depths[$index]} at ${periods[$index]} ns"
        ./run_one.sh "$config" "${depths[$index]}" "${periods[$index]}"
    done
done
