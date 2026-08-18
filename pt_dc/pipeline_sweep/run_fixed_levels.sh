#!/bin/bash
set -euo pipefail

for level in 0 1 2 3; do
    config="fixed_l${level}"
    for depth in np p2 p3 p4 p5 p6 p7; do
        echo "--> PrimeTime $config $depth"
        ./run_one.sh "$config" "$depth"
    done
done
