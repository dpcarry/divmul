#!/bin/bash
set -euo pipefail

if [[ $# -ne 3 ]]; then
    echo "Usage: $0 <runtime|fixed_l4> <np|p2|...|p7> <period_ns>" >&2
    exit 2
fi

config=$1
depth=$2
period=$3
case "$config" in
    runtime) top_level="oadm_runtime_${depth}" ;;
    fixed_l4) top_level="oadm_fixed_l4_${depth}" ;;
    *) echo "ERROR: config must be runtime or fixed_l4" >&2; exit 2 ;;
esac

output_dir="outputs/${config}/${depth}"
mkdir -p "$output_dir"
TOP_LEVEL="$top_level" OUTPUT_DIR="$output_dir" CLOCK_PERIOD="$period" \
    dc_shell -f module.tcl | tee "$output_dir/dc_console.txt"
