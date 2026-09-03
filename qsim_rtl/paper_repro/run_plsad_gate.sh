#!/bin/bash
set -euo pipefail

PDK_MODEL=/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v
NETLIST_DIR=../../dc/paper_repro/outputs_10ns

rm -rf gate_work
vlib gate_work
vlog -work gate_work "$PDK_MODEL" \
    "$NETLIST_DIR/plsad_fp32_div_10bit.nl.v" \
    "$NETLIST_DIR/plsad_fp32_div_23bit.nl.v" \
    tb_plsad_gate.sv
vsim -c -lib gate_work tb_plsad_gate -do "run -all; quit -f" | tee plsad_gate.log
