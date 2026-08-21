#!/bin/bash

set -euo pipefail

level=${1:-}
if [[ ! "$level" =~ ^[1-4]$ ]]; then
    echo "usage: $0 {1|2|3|4}" >&2
    exit 2
fi

case "$level" in
    1) mantissa_file=Mantissa_Div_L1.v ;;
    2) mantissa_file=Mantissa_Div_L2.v ;;
    3) mantissa_file=Mantissa_Div_L3.v ;;
    4) mantissa_file=Mantissa_Div_L4_Kec.v ;;
esac

work="work_l${level}"
rm -rf "$work"
vlib "$work"
vlog -work "$work" \
    ../../PACE/common/CSA3_2_Array.v \
    ../../PACE/common/FP_DIV_WRAPPER_32.v \
    "../../PACE/L${level}/${mantissa_file}" \
    "../../rtl/pace_original/pace_fp32_l${level}.v" \
    tb_pace.sv
vsim -c -lib "$work" -gLEVEL="$level" tb_pace -do "run -all; quit -f" \
    | tee "pace_l${level}.log"
