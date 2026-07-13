##################################################
# ModelSim do file to run post-layout simulation
##################################################

vlib work
vmap work work

vlog +acc -incr /courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus_pwr.v
vlog -sv +acc -incr tb_oad_lut_divider.sv
vlog +acc -incr ../../innovus/oad_lut_divider/oad_lut_divider.PG.v

vsim -voptargs=+acc -t ps -lib work \
-sdfmax testbench/oad_lut_divider_inst=../../innovus/oad_lut_divider/oad_lut_divider.verilog.sdf \
testbench

do waveformat.do
run -all
