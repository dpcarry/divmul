#!/bin/bash
set -euo pipefail
level=${1:-}
if [[ ! "$level" =~ ^[0-4]$ ]]; then
    echo "usage: $0 {0|1|2|3|4}" >&2
    exit 2
fi
APPROX_LEVEL="$level" dc_shell -f module.tcl 2>&1 | tee "dc_l${level}.log"
