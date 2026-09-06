#!/usr/bin/env bash
set -euo pipefail
HERE=$(cd "$(dirname "$0")" && pwd)
ROOT=$(cd "$HERE/../../.." && pwd)
TMP=$(mktemp -d /tmp/trunc_independent_audit.XXXXXX)
trap 'rm -rf "$TMP"' EXIT
kind=${1:-rtl}
extras=()
vlib "$TMP/work"
if [[ $kind == gate ]]; then
    vlog -work "$TMP/work" /courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v
    for top in audit_pace_l1_b5 audit_pace_l3_b6; do
        "$ROOT/.venv/bin/python" "$ROOT/scripts/prefix_verilog_modules.py" "$HERE/dc/$top/$top.nl.v" "$TMP/$top.v" "$top"
    done
    extras=(+define+GATE "$TMP/"*.v)
fi
vlog -sv -work "$TMP/work" "$ROOT/PACE/common/FP_DIV_WRAPPER_32.v" \
    "$ROOT/PACE/common/CSA3_2_Array.v" "$ROOT/PACE/L1/Mantissa_Div_L1.v" "$ROOT/PACE/L3/Mantissa_Div_L3.v" \
    "$ROOT/rtl/pace_original/pace_fp32_l1.v" "$ROOT/rtl/pace_original/pace_fp32_l3.v" \
    "$ROOT/rtl/mul_root_opt/oadm_mul_root_opt.v" "$ROOT/experiments/fixed_div_level_specialization/specialized_rtl.v" \
    "$HERE/../direct.v" "$HERE/../tops.v" "$HERE/pace_truncated.v" "${extras[@]}" "$HERE/tb_audit.sv"
vsim -c -suppress 3053 -lib "$TMP/work" -l "$HERE/$kind.log" tb_audit -do 'run -all; quit -f'
rg -q 'AUDIT_.* PASS:' "$HERE/$kind.log"
if rg -q 'Fatal:|MISMATCH' "$HERE/$kind.log"; then exit 1; fi
