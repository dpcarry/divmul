vlib work
vmap work work

vlog +acc -incr ../../rtl/csa3.v
vlog +acc -incr ../../rtl/sa_scale.v
vlog +acc -incr ../../rtl/recip_lut.v
vlog +acc -incr ../../rtl/oadm_core.v
vlog +acc -incr ../../rtl/oadm_dm.v
vlog +acc -incr ../../rtl/fixed/recip_lut_fixed.v
vlog +acc -incr ../../rtl/fixed/oadm_core_fixed.v
vlog +acc -incr ../../rtl/fixed/oadm_dm_fixed.v
vlog +acc -incr ../../rtl/L0/oadm_dm_l0.v
vlog +acc -incr ../../rtl/L1/oadm_dm_l1.v
vlog +acc -incr ../../rtl/L2/oadm_dm_l2.v
vlog +acc -incr ../../rtl/L3/oadm_dm_l3.v
vlog +acc -incr ../../rtl/L4/oadm_dm_l4.v
vlog +acc -incr tb_oadm_fixed_levels.v

vsim -c -voptargs=+acc -t ps -lib work tb_oadm_fixed_levels
run -all
quit -f
