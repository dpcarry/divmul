vlib work
vlog ../../rtl/csa3.v ../../rtl/recip_lut.v ../../rtl/sa_scale.v \
     ../../rtl/oadm_core.v ../../rtl/oadm_dm.v tb_oadm_mul_vectors.v
vsim -c -voptargs=+acc tb_oadm_mul_vectors
run -all
quit -f
