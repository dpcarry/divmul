##################################################
# ModelSim do file to run OADM RTL simulation
##################################################

vlib work
vmap work work

vlog +acc -incr tb_oadm_divmul.v
vlog +acc -incr ../../rtl/csa3.v
vlog +acc -incr ../../rtl/sa_scale.v
vlog +acc -incr ../../rtl/recip_lut.v
vlog +acc -incr ../../rtl/oadm_core.v
vlog +acc -incr ../../rtl/oadm_dm.v

vsim -voptargs=+acc -t ps -lib work tb_oadm_divmul
do waveformat.do
run -all
