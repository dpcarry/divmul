if {[file exists work]} {vdel -lib work -all}
vlib work
vlog ../../rtl/csa3.v
vlog ../../rtl/fixed/recip_scale_fixed.v
vlog ../../rtl/fixed/oadm_core_fixed.v
vlog ../../rtl/fixed/oadm_dm_fixed.v
vlog ../../rtl/pipeline_sweep/oadm_pipe_cut.v
vlog ../../rtl/pipeline_sweep/oadm_dm_pipe.v
vlog tb_pipeline_sweep.v
vsim -c work.tb_pipeline_sweep
run -all
quit -f
