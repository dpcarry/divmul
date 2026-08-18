vlib work
vmap work work

vlog +acc -incr ../../rtl/csa3.v
vlog +acc -incr ../../rtl/pipeline_sweep/oadm_pipe_cut.v
vlog +acc -incr ../../rtl/pipeline_sweep/oadm_dm_pipe.v
vlog +acc -incr tb_grid_model_crosscheck.v

vsim -c -voptargs=+acc -t ps -lib work tb_grid_model_crosscheck
run -all
quit -f
