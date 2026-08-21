#!/bin/bash

set -euo pipefail

level=${1:-}
if [[ ! "$level" =~ ^[1-4]$ ]]; then
    echo "usage: $0 {1|2|3|4}" >&2
    exit 2
fi

output_root=${PACE_OUTPUT_ROOT:-outputs}
mkdir -p "${output_root}/L${level}"
PACE_LEVEL="$level" PACE_OUTPUT_ROOT="$output_root" dc_shell -f module.tcl 2>&1 \
    | tee "${output_root}/L${level}/dc.log"
