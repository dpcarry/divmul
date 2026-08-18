vlib work
vmap work work

vlog -incr ../../rtl/sa_scale.v
vlog -incr ../../rtl/fixed/recip_lut_fixed.v
vlog -incr ../../rtl/fixed/recip_scale_fixed.v
vlog -incr tb_recip_scale_exact.v

vsim -c -t ps -lib work tb_recip_scale_exact
run -all
quit -f
