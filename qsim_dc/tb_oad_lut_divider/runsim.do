##################################################
# ModelSim do file to run post-synthesis simulation
##################################################

vlib work
vmap work work

vlog +acc -incr /courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v
vlog +acc -incr ../../dc/oad_lut_divider/oad_lut_divider.nl.v
vlog -sv +acc -incr tb_oad_lut_divider.sv

vsim -t ps -lib work testbench
do waveformat.do
run -all
