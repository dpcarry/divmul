#!/bin/bash
set -euo pipefail

rm -rf work
vlib work
vlog -work work ../../rtl/paper_repro/paper_fp32_dividers.v tb_paper_fp32_dividers.sv
vsim -c -lib work tb_paper_fp32_dividers -do "run -all; quit -f" | tee accuracy.log
