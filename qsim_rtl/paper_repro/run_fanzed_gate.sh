#!/bin/bash
set -euo pipefail

PDK_MODEL=/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v
NETLIST_DIR=../../dc/paper_repro/outputs_10ns

rm -rf fanzed_t0_gate_work fanzed_t15_gate_work
vlib fanzed_t0_gate_work
vlog -work fanzed_t0_gate_work "$PDK_MODEL" \
    "$NETLIST_DIR/fanzed_fp32_div_t0.nl.v" tb_fanzed_gate.sv
vsim -c -lib fanzed_t0_gate_work tb_fanzed_gate -do "run -all; quit -f" | tee fanzed_t0_gate.log

vlib fanzed_t15_gate_work
vlog -work fanzed_t15_gate_work +define+FANZED_T15 "$PDK_MODEL" \
    "$NETLIST_DIR/fanzed_fp32_div_t15.nl.v" tb_fanzed_gate.sv
vsim -c -lib fanzed_t15_gate_work tb_fanzed_gate -do "run -all; quit -f" | tee fanzed_t15_gate.log
