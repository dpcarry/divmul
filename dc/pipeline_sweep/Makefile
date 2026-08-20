.PHONY: nominal fixed-levels liveness pace-point pace-p6

nominal:
	./run_nominal.sh

fixed-levels:
	./run_fixed_levels.sh

liveness:
	PIPELINE_OUTPUT_ROOT=outputs_liveness ./run_one.sh runtime p6 1.5
	PIPELINE_OUTPUT_ROOT=outputs_liveness ./run_one.sh runtime np 7.0

pace-point:
	PIPELINE_OUTPUT_ROOT=outputs_liveness ./run_one.sh fixed_l3 np 7.0
	PIPELINE_OUTPUT_ROOT=outputs_liveness ./run_one.sh fixed_l3 p6 1.5

pace-p6:
	PIPELINE_OUTPUT_ROOT=outputs_liveness ./run_one.sh fixed_l3 p6 1.5
