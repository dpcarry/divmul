#!/bin/bash
set -euo pipefail

if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <runtime|fixed_l0|...|fixed_l3> <np|p2|...|p7>" >&2
    exit 2
fi

config=$1
depth=$2
case "$config" in
    runtime|fixed_l[0-3]) ;;
    *) echo "ERROR: unsupported config $config" >&2; exit 2 ;;
esac
case "$depth" in
    np|p2|p3|p4|p5|p6|p7) ;;
    *) echo "ERROR: unsupported depth $depth" >&2; exit 2 ;;
esac

dc_output_root=${PIPELINE_DC_OUTPUT_ROOT:-outputs}
report_root=${PIPELINE_REPORT_ROOT:-reports}
report_dir="${report_root}/${config}/${depth}"
mkdir -p "$report_dir"
CONFIG="$config" DEPTH="$depth" \
    PIPELINE_DC_OUTPUT_ROOT="$dc_output_root" \
    PIPELINE_REPORT_ROOT="$report_root" \
    pt_shell -file pt.tcl | tee "$report_dir/pt_console.txt"
