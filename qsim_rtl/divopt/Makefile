.PHONY: run best4 postcorr reduced-midpoint paceio plane multilevel-plane multilevel-full clean

run:
	vlib work
	vlog ../../rtl/csa3.v \
	      ../../rtl/pipeline_sweep/oadm_pipe_cut.v \
	      ../../rtl/pipeline_sweep/oadm_dm_pipe.v \
	      ../../rtl/nopipe/oadm_dm_mode_nopipe.v \
	      ../../rtl/divopt/oadm_rounding_error_lut.v \
	      ../../rtl/divopt/oadm_l3_plane_direct.v \
	      ../../rtl/divopt/oadm_l3_plane_factored.v \
	      ../../rtl/divopt/oadm_fixed_l3_div_opt.v \
	      tb_divopt_equiv.v
	vsim -c -do "run -all; quit -f" tb_divopt_equiv

best4:
	vlib work
	vlog ../../rtl/csa3.v \
	      ../../rtl/pipeline_sweep/oadm_pipe_cut.v \
	      ../../rtl/pipeline_sweep/oadm_dm_pipe.v \
	      ../../rtl/nopipe/oadm_dm_mode_nopipe.v \
	      ../../rtl/divopt/oadm_rounding_error_lut.v \
	      ../../rtl/divopt/oadm_l3_plane_direct.v \
	      ../../rtl/divopt/oadm_l3_plane_factored.v \
	      ../../rtl/divopt/oadm_fixed_l3_div_opt.v \
	      tb_best4_equiv.v
	vsim -c -do "run -all; quit -f" tb_best4_equiv

postcorr:
	vlib work
	vlog ../../rtl/csa3.v \
	      ../../rtl/pipeline_sweep/oadm_pipe_cut.v \
	      ../../rtl/pipeline_sweep/oadm_dm_pipe.v \
	      ../../rtl/nopipe/oadm_dm_mode_nopipe.v \
	      ../../rtl/divopt/oadm_rounding_error_lut.v \
	      ../../rtl/divopt/oadm_l3_plane_direct.v \
	      ../../rtl/divopt/oadm_l3_plane_factored.v \
	      ../../rtl/divopt/oadm_fixed_l3_div_opt.v \
	      tb_postcorr_equiv.v
	vsim -c -do "run -all; quit -f" tb_postcorr_equiv

reduced-midpoint:
	vlib work
	vlog ../../rtl/csa3.v \
	      ../../rtl/pipeline_sweep/oadm_pipe_cut.v \
	      ../../rtl/pipeline_sweep/oadm_dm_pipe.v \
	      ../../rtl/nopipe/oadm_dm_mode_nopipe.v \
	      ../../rtl/divopt/oadm_rounding_error_lut.v \
	      ../../rtl/divopt/oadm_l3_plane_direct.v \
	      ../../rtl/divopt/oadm_l3_plane_factored.v \
	      ../../rtl/divopt/oadm_fixed_l3_div_opt.v \
	      tb_reduced_midpoint_equiv.v
	vsim -c -do "run -all; quit -f" tb_reduced_midpoint_equiv

paceio:
	vlib work
	vlog ../../rtl/csa3.v \
	      ../../rtl/pipeline_sweep/oadm_pipe_cut.v \
	      ../../rtl/pipeline_sweep/oadm_dm_pipe.v \
	      ../../rtl/nopipe/oadm_dm_mode_nopipe.v \
	      ../../rtl/divopt/oadm_rounding_error_lut.v \
	      ../../rtl/divopt/oadm_l3_plane_direct.v \
	      ../../rtl/divopt/oadm_l3_plane_factored.v \
	      ../../rtl/divopt/oadm_fixed_l3_div_opt.v \
	      tb_paceio_equiv.v
	vsim -c -do "run -all; quit -f" tb_paceio_equiv

plane:
	vlib work
	vlog ../../rtl/csa3.v \
	      ../../rtl/pipeline_sweep/oadm_pipe_cut.v \
	      ../../rtl/pipeline_sweep/oadm_dm_pipe.v \
	      ../../rtl/nopipe/oadm_dm_mode_nopipe.v \
	      ../../rtl/divopt/oadm_rounding_error_lut.v \
	      ../../rtl/divopt/oadm_l3_plane_direct.v \
	      ../../rtl/divopt/oadm_l3_plane_factored.v \
	      tb_plane_direct.v
	vsim -c -do "run -all; quit -f" tb_plane_direct

multilevel-plane:
	vlib work
	vlog ../../rtl/csa3.v \
	      ../../rtl/pipeline_sweep/oadm_pipe_cut.v \
	      ../../rtl/pipeline_sweep/oadm_dm_pipe.v \
	      ../../rtl/divopt/oadm_multilevel_rounding_lut.v \
	      ../../rtl/divopt/oadm_lowlevel_plane_direct.v \
	      ../../rtl/divopt/oadm_multilevel_plane_direct.v \
	      tb_multilevel_plane_equiv.v
	vsim -c -do "run -all; quit -f" tb_multilevel_plane_equiv

multilevel-full:
	vlib work
	vlog ../../rtl/csa3.v \
	      ../../rtl/pipeline_sweep/oadm_pipe_cut.v \
	      ../../rtl/pipeline_sweep/oadm_dm_pipe.v \
	      ../../rtl/divopt/oadm_multilevel_rounding_lut.v \
	      ../../rtl/divopt/oadm_lowlevel_plane_direct.v \
	      ../../rtl/divopt/oadm_multilevel_plane_direct.v \
	      ../../rtl/divopt/oadm_multilevel_opt.v \
	      tb_multilevel_full_equiv.v
	vsim -c -do "run -all; quit -f" tb_multilevel_full_equiv

clean:
	rm -rf work transcript vsim.wlf
