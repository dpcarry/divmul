run:
	vsim -do "runsim.do"

accuracy:
	vsim -c -do "accuracy.do" | tee accuracy.log

clean:
	rm -rf work accuracy_work transcript vsim.wlf accuracy.log
