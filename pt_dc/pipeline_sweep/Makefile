.PHONY: all runtime fixed-levels fixed-l4 liveness pace-point pace-p6

all:
	./run_all.sh

runtime:
	@for depth in np p2 p3 p4 p5 p6 p7; do ./run_one.sh runtime $$depth; done

fixed-levels:
	./run_fixed_levels.sh

fixed-l4:
	@for depth in np p2 p3 p4 p5 p6 p7; do ./run_one.sh fixed_l4 $$depth; done

liveness:
	PIPELINE_DC_OUTPUT_ROOT=outputs_liveness PIPELINE_REPORT_ROOT=reports_liveness ./run_one.sh runtime p6
	PIPELINE_DC_OUTPUT_ROOT=outputs_liveness PIPELINE_REPORT_ROOT=reports_liveness ./run_one.sh runtime np

pace-point:
	PIPELINE_DC_OUTPUT_ROOT=outputs_liveness PIPELINE_REPORT_ROOT=reports_liveness ./run_one.sh fixed_l3 np
	PIPELINE_DC_OUTPUT_ROOT=outputs_liveness PIPELINE_REPORT_ROOT=reports_liveness ./run_one.sh fixed_l3 p6

pace-p6:
	PIPELINE_DC_OUTPUT_ROOT=outputs_liveness PIPELINE_REPORT_ROOT=reports_liveness ./run_one.sh fixed_l3 p6
