#!/bin/bash

set -euo pipefail

kind=${1:-}
level=${2:-}
if [[ ! "$kind" =~ ^(div|mul)$ ]] || [[ ! "$level" =~ ^[0-4]$ ]]; then
    echo "usage: $0 {div|mul} {0|1|2|3|4}" >&2
    exit 2
fi
if [[ "$kind" == mul && -z "${AM_LIB_ROOT:-}" ]]; then
    echo "ERROR: set AM_LIB_ROOT to the skycrapers/AM-Lib clone" >&2
    exit 2
fi

output_root=${OUTPUT_ROOT:-outputs}
output_dir="${output_root}/${kind}/L${level}"
mkdir -p "$output_dir"
echo "--> Synthesizing ${kind} L${level}"
BLOCK_KIND="$kind" APPROX_LEVEL="$level" dc_shell -f module.tcl 2>&1 \
    | tee "$output_dir/dc.log"
