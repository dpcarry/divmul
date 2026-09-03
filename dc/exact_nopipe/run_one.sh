#!/bin/bash
set -euo pipefail

kind=${1:-}
if [[ ! "$kind" =~ ^(mul|div|divmul)$ ]]; then
    echo "usage: $0 {mul|div|divmul}" >&2
    exit 2
fi

output_root=${OUTPUT_ROOT:-outputs_10ns}
output_dir="${output_root}/${kind}"
mkdir -p "$output_dir"
echo "--> Synthesizing combinational exact FP32 ${kind} at ${EXACT_PERIOD_NS:-10} ns"
BASELINE_KIND="$kind" dc_shell -f module.tcl 2>&1 | tee "$output_dir/dc.log"
