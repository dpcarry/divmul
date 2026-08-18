#!/bin/bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <np|p2|...|p7>" >&2
    exit 2
fi

depth=$1
case "$depth" in
    np) mask=0;   stages=0 ;;
    p2) mask=68;  stages=2 ;;
    p3) mask=74;  stages=3 ;;
    p4) mask=86;  stages=4 ;;
    p5) mask=93;  stages=5 ;;
    p6) mask=95;  stages=6 ;;
    p7) mask=127; stages=7 ;;
    *) echo "ERROR: unsupported depth $depth" >&2; exit 2 ;;
esac

top="oadm_runtime_${depth}"
dc_dir="../../dc/pipeline_sweep/outputs/runtime/${depth}"
work="work_${depth}"
log="${depth}.transcript"
library="/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v"

rm -rf "$work"
vlib "$work" >/dev/null
vlog -work "$work" "$library" >/dev/null
vlog -work "$work" "$dc_dir/${top}.nl.v" >/dev/null
vlog -work "$work" ../../rtl/csa3.v \
    ../../rtl/pipeline_sweep/oadm_pipe_cut.v \
    ../../rtl/pipeline_sweep/oadm_dm_pipe.v >/dev/null
vlog -work "$work" \
    "+define+DUT_MODULE=${top}" \
    "+define+PIPE_MASK=${mask}" \
    "+define+PIPE_DEPTH=${stages}" \
    "+define+SDF_FILE=\"${dc_dir}/${top}.syn.sdf\"" \
    tb_pipeline_dc.v >/dev/null

vsim -c -t ps -lib "$work" tb_pipeline_dc \
    -do "run -all; quit -f" | tee "$log"
grep -q "SDF Backannotation Successfully Completed" "$log"
grep -q "PASS:.*post-DC vectors" "$log"
grep -q "Errors: 0" "$log"
if grep -q "FAIL:" "$log"; then
    exit 1
fi
