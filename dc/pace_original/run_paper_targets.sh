#!/bin/bash

set -euo pipefail

output_root=outputs_paper_targets

# The output delay is 0.02 ns, so period = paper delay + 0.02 ns.
declare -A periods=(
    [1]=2.13
    [2]=2.50
    [3]=2.95
    [4]=3.45
)

for level in 1 2 3 4; do
    PACE_OUTPUT_ROOT="$output_root" \
    PACE_PERIOD_NS="${periods[$level]}" \
        ./run_one.sh "$level"
done
