vlib accuracy_work
vmap accuracy_work accuracy_work

vlog -work accuracy_work -incr ../../rtl/csa3.v
vlog -work accuracy_work -incr ../../rtl/fixed/recip_scale_fixed.v
vlog -work accuracy_work -incr ../../rtl/oadm_levels_opt/oadm_core_eq1011.v
vlog -work accuracy_work -incr ../../rtl/oadm_levels_opt/oadm_dm_eq1011.v
vlog -work accuracy_work -incr ../../rtl/oadm_levels_opt/oadm_dm_eq_l0.v
vlog -work accuracy_work -incr ../../rtl/oadm_levels_opt/oadm_dm_eq_l1.v
vlog -work accuracy_work -incr ../../rtl/oadm_levels_opt/oadm_dm_eq_l2.v
vlog -work accuracy_work -incr ../../rtl/oadm_levels_opt/oadm_dm_eq_l3.v
vlog -work accuracy_work -incr oadm_dm_opt_mux.v
vlog -work accuracy_work -incr ../tb_oadm_divmul.v

vsim -c -t ps -lib accuracy_work tb_oadm_divmul
run -all
quit -f
