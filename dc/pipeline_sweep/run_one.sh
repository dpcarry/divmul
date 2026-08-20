#!/bin/bash
set -euo pipefail

if [[ $# -ne 3 ]]; then
    echo "Usage: $0 <runtime|fixed_l0|...|fixed_l4> <np|p2|...|p7> <period_ns>" >&2
    exit 2
fi

config=$1
depth=$2
period=$3
case "$config" in
    runtime) top_level="oadm_runtime_${depth}" ;;
    fixed_l[0-4]) top_level="oadm_${config}_${depth}" ;;
    *) echo "ERROR: unsupported config $config" >&2; exit 2 ;;
esac

output_root=${PIPELINE_OUTPUT_ROOT:-outputs}
output_dir="${output_root}/${config}/${depth}"
mkdir -p "$output_dir"
TOP_LEVEL="$top_level" OUTPUT_DIR="$output_dir" CLOCK_PERIOD="$period" \
    dc_shell -f module.tcl | tee "$output_dir/dc_console.txt"
