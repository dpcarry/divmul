##################################################
# ModelSim do file to run RTL simulation
##################################################

vlib work
vmap work work

vlog -sv +acc -incr tb_oad_lut_divider.sv
vlog -sv +acc -incr ../../rtl/oad_coefficient.sv
vlog -sv +acc -incr ../../rtl/oad_lut_divider.sv

vsim -voptargs=+acc -t ps -lib work testbench
do waveformat.do
run -all
