#!/bin/bash

set -euo pipefail

level=${1:-}
if [[ ! "$level" =~ ^[0-4]$ ]]; then
    echo "usage: $0 LEVEL  # LEVEL must be 0, 1, 2, 3, or 4" >&2
    exit 2
fi

output_root=${OUTPUT_ROOT:-outputs}
output_dir="${output_root}/L${level}"
mkdir -p "$output_dir"
echo "--> Synthesizing fixed OADM L${level}"
APPROX_LEVEL="$level" dc_shell -f module.tcl 2>&1 \
    | tee "$output_dir/dc.log"
