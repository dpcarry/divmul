.PHONY: run clean

run:
	vlib work
	vlog -sv ../../PACE/common/CSA3_2_Array.v \
	      ../../PACE/common/FP_DIV_WRAPPER_32.v \
	      ../../PACE/L1/Mantissa_Div_L1.v \
	      ../../PACE/L2/Mantissa_Div_L2.v \
	      ../../PACE/L3/Mantissa_Div_L3.v \
	      ../../PACE/L4/Mantissa_Div_L4_Kec.v \
	      ../../rtl/pace_original/pace_fp32_l1.v \
	      ../../rtl/pace_original/pace_fp32_l2.v \
	      ../../rtl/pace_original/pace_fp32_l3.v \
	      ../../rtl/pace_original/pace_fp32_l4.v \
	      ../../rtl/divopt/oadm_multilevel_rounding_lut.v \
	      ../../rtl/divopt/oadm_lowlevel_plane_direct.v \
	      ../../rtl/divopt/oadm_multilevel_plane_direct.v \
	      ../../rtl/divopt/oadm_multilevel_opt.v \
	      tb_pace_oadm_compare.sv
	vsim -c -do "run -all; quit -f" tb_pace_oadm_compare

clean:
	rm -rf work transcript vsim.wlf error_comparison.csv
