#!/bin/bash

set -euo pipefail

level=${1:-}
if [[ ! "$level" =~ ^[1-4]$ ]]; then
    echo "usage: $0 {1|2|3|4}" >&2
    exit 2
fi

dc_output_root=${PACE_DC_OUTPUT_ROOT:-outputs}
report_root=${PACE_REPORT_ROOT:-reports}
mkdir -p "${report_root}/L${level}"
PACE_LEVEL="$level" \
PACE_DC_OUTPUT_ROOT="$dc_output_root" \
PACE_REPORT_ROOT="$report_root" \
    pt_shell -file pt.tcl 2>&1 | tee "${report_root}/L${level}/pt.log"

if grep -q '^Error:' "${report_root}/L${level}/pt.log"; then
    echo "ERROR: PrimeTime reported an error for L${level}" >&2
    exit 1
fi
