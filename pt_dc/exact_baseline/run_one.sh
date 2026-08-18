#!/bin/bash

set -euo pipefail

kind=${1:-}
if [[ ! "$kind" =~ ^(mul|div|divmul)$ ]]; then
    echo "usage: $0 {mul|div|divmul}" >&2
    exit 2
fi

report_root=${REPORT_ROOT:-reports}
report_dir="${report_root}/${kind}"
mkdir -p "$report_dir"
echo "--> PrimeTime seven-stage exact FP32 ${kind}"
BASELINE_KIND="$kind" pt_shell -file pt.tcl 2>&1 \
    | tee "$report_dir/pt.log"
