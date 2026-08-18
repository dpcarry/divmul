run:
	vsim -do "runsim.do"

crosscheck:
	../../.venv/bin/python ../../python/pace_grid_accuracy.py \
		--crosscheck-vectors rtl_crosscheck_vectors.txt
	vsim -do "crosscheck.do"

clean:
	rm -rf work modelsim.ini transcript *.wlf
