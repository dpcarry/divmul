##################################################
# ModelSim do file to run OADM post-synthesis simulation
##################################################

vlib work
vmap work work

vlog +acc -incr /courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v
vlog +acc -incr ../../dc/oadm_dm/oadm_dm.nl.v
vlog +acc -incr tb_oadm_divmul.v

vsim -voptargs=+acc -t ps -lib work tb_oadm_divmul
do waveformat.do
run -all
