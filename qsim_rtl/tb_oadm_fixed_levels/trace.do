vlib work
vmap work work

vlog -incr ../../rtl/csa3.v
vlog -incr ../../rtl/sa_scale.v
vlog -incr ../../rtl/fixed/recip_lut_fixed.v
vlog -incr ../../rtl/fixed/recip_scale_fixed.v
vlog -incr ../../rtl/fixed/oadm_core_fixed.v
vlog -incr ../../rtl/fixed/oadm_dm_fixed.v
vlog -incr ../../rtl/L0/oadm_dm_l0.v
vlog -incr ../../rtl/L1/oadm_dm_l1.v
vlog -incr ../../rtl/L2/oadm_dm_l2.v
vlog -incr ../../rtl/L3/oadm_dm_l3.v
vlog -incr ../../rtl/L4/oadm_dm_l4.v
vlog -incr tb_fixed_trace.v

vsim -c -t ps -lib work tb_fixed_trace
run -all
quit -f
