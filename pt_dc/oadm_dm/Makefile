run:
	pt_shell -file pt.tcl | tee pt.log

modes:
	pt_shell -file pt_modes.tcl | tee pt_modes.log

timing:
	pt_shell -file pt_timing_only.tcl | tee pt_timing_only.log

clean:
	rm -rf *.log
	rm -rf *.rpt
	rm -rf *.sdf
	rm -rf *.fsdb	
