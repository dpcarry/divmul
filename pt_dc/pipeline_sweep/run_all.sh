#!/bin/bash
set -euo pipefail

for config in runtime fixed_l0 fixed_l1 fixed_l2 fixed_l3 fixed_l4; do
    for depth in np p2 p3 p4 p5 p6 p7; do
        echo "--> PrimeTime $config $depth"
        ./run_one.sh "$config" "$depth"
    done
done
