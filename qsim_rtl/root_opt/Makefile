.PHONY: run crosscheck clean

run:
	vlib work
	vlog -sv \
		../../PACE/common/CSA3_2_Array.v \
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
		../../rtl/divopt/oadm_experiment_variants.v \
		../../rtl/root_opt/oadm_root_opt.v \
		tb_root_opt.sv
	vsim -c -do "run -all; quit -f" tb_root_opt

crosscheck:
	../../.venv/bin/python ../../python/root_opt_crosscheck.py \
		--output root_opt_crosscheck_vectors.txt
	vlib crosscheck_work
	vlog -sv -work crosscheck_work \
		../../PACE/common/FP_DIV_WRAPPER_32.v \
		../../rtl/root_opt/oadm_root_opt.v \
		tb_root_opt_model_crosscheck.sv
	vsim -c -lib crosscheck_work -do "run -all; quit -f" \
		tb_root_opt_model_crosscheck

clean:
	rm -rf work crosscheck_work transcript vsim.wlf root_opt_accuracy.csv \
		root_opt_crosscheck_vectors.txt
