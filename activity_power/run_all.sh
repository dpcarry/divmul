#!/bin/bash
set -euo pipefail

source ./scenarios.sh

while read -r scenario; do
    echo "--> gate activity: $scenario"
    ./run_sim.sh "$scenario"
    echo "--> PrimeTime power: $scenario"
    ./run_pt.sh "$scenario"
done < <(all_scenarios)

./summarize.py
echo "Results: $(pwd)/RESULTS.md"
