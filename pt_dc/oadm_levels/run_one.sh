#!/bin/bash

set -euo pipefail

level=${1:-}
if [[ ! "$level" =~ ^[0-4]$ ]]; then
    echo "usage: $0 LEVEL  # LEVEL must be 0, 1, 2, 3, or 4" >&2
    exit 2
fi

report_root=${REPORT_ROOT:-reports}
report_dir="${report_root}/L${level}"
mkdir -p "$report_dir"
echo "--> PrimeTime fixed OADM L${level}"
APPROX_LEVEL="$level" pt_shell -file pt.tcl 2>&1 \
    | tee "$report_dir/pt.log"
