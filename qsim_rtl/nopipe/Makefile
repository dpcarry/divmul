.PHONY: run clean

run:
	vlib work
	vlog ../../rtl/csa3.v \
	      ../../rtl/pipeline_sweep/oadm_pipe_cut.v \
	      ../../rtl/pipeline_sweep/oadm_dm_pipe.v \
	      ../../rtl/nopipe/oadm_dm_nopipe.v tb_nopipe.v
	vsim -c -do "run -all; quit -f" tb_nopipe

clean:
	rm -rf work transcript vsim.wlf
