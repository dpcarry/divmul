#!/bin/bash
set -euo pipefail

for depth in np p2 p3 p4 p5 p6 p7; do
    echo "--> post-DC runtime $depth"
    ./run_one.sh "$depth"
done
