#!/bin/bash

set -euo pipefail

kind=${1:-}
if [[ ! "$kind" =~ ^(mul|div|divmul)$ ]]; then
    echo "usage: $0 {mul|div|divmul}" >&2
    exit 2
fi

output_root=${OUTPUT_ROOT:-outputs}
output_dir="${output_root}/${kind}"
mkdir -p "$output_dir"
echo "--> Synthesizing seven-stage exact FP32 ${kind}"
BASELINE_KIND="$kind" dc_shell -f module.tcl 2>&1 \
    | tee "$output_dir/dc.log"
