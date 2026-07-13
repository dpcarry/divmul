##################################################
# ModelSim do file to run OADM post-layout simulation
##################################################

vlib work
vmap work work

vlog +acc -incr /courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus_pwr.v
vlog +acc -incr tb_oadm_divmul.v
vlog +acc -incr ../../innovus/oadm_dm/oadm_dm.PG.v

vsim -voptargs=+acc -t ps -lib work \
-sdfmax tb_oadm_divmul/dut=../../innovus/oadm_dm/oadm_dm.verilog.sdf \
tb_oadm_divmul

do waveformat.do
run -all
