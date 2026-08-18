vlib work
vmap work work

vlog -incr ../../rtl/csa3.v
vlog -incr ../../rtl/fixed/recip_scale_fixed.v
vlog -incr ../../rtl/fixed/oadm_core_fixed.v
vlog -incr ../../rtl/fixed/oadm_dm_fixed.v
vlog -incr ../../rtl/L0/oadm_dm_l0.v
vlog -incr ../../rtl/L1/oadm_dm_l1.v
vlog -incr ../../rtl/L2/oadm_dm_l2.v
vlog -incr ../../rtl/L3/oadm_dm_l3.v
vlog -incr ../../rtl/L4/oadm_dm_l4.v
vlog -incr ../../rtl/oadm_levels_opt/oadm_core_eq1011.v
vlog -incr ../../rtl/oadm_levels_opt/oadm_dm_eq1011.v
vlog -incr ../../rtl/oadm_levels_opt/oadm_dm_eq_l0.v
vlog -incr ../../rtl/oadm_levels_opt/oadm_dm_eq_l1.v
vlog -incr ../../rtl/oadm_levels_opt/oadm_dm_eq_l2.v
vlog -incr ../../rtl/oadm_levels_opt/oadm_dm_eq_l3.v
vlog -incr ../../rtl/oadm_levels_opt/oadm_dm_eq_l4.v
vlog -incr tb_eq1011_equiv.v

vsim -c -t ps -lib work tb_eq1011_equiv
run -all
quit -f
