#!/bin/bash
set -euo pipefail

cd "$(dirname "$0")/../pipeline_sweep"
for config in runtime fixed_l0 fixed_l1 fixed_l2 fixed_l3; do
    echo "--> Q0.7 L0-L3 ${config} p6 at 1.5 ns"
    PIPELINE_OUTPUT_ROOT=../0123/outputs \
        ./run_one.sh "$config" p6 1.5
done
