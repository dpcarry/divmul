#########################################
# TSMC 65nm Synthesis                   #
# TCL script for Design Compiler        #
#########################################

#########################################
# READ Design and Library               #
#########################################

set top_level oadm_dm

source -verbose "../common_scripts/common.tcl"

analyze -format verilog {../../rtl/csa3.v ../../rtl/sa_scale.v ../../rtl/recip_lut.v ../../rtl/oadm_core.v ../../rtl/oadm_dm.v}
elaborate $top_level

list_designs
if { [check_error -v] == 1 } { exit 1 }

link
check_design

current_design $top_level
check_design

#########################################
# Design Constraints                    #
#########################################

set_max_capacitance 0.005 [all_inputs]
set_max_fanout 4 [all_inputs]
set_max_fanout 4 $top_level

set_fix_multiple_port_nets -all -buffer_constants

check_design

source -verbose "./timing.tcl"

#########################################
# Compile                               #
#########################################

current_design $top_level
link

# Ultra compile (better QoR than plain compile)
compile_ultra -no_autoungroup
update_timing

#########################################
# Write outputs                         #
#########################################

source -verbose "../common_scripts/namingrules.tcl"

write      -hierarchy -format verilog -output "${top_level}.nl.v"
write_sdf  -context verilog "${top_level}.temp.sdf"
write_sdf  "${top_level}.syn.sdf"
write_sdc  "${top_level}.syn.sdc" -version 2.1

#########################################
# Reports                               #
#########################################

set maxpaths 20
set rpt_file "${top_level}.dc.rpt"
check_design > $rpt_file
report_area  >> $rpt_file
report_power -verbose -hier -analysis_effort medium >> $rpt_file
report_design >> $rpt_file
report_cell >> $rpt_file
report_port -verbose >> $rpt_file
report_compile_options >> $rpt_file
report_constraint -all_violators -verbose >> $rpt_file
report_timing -path full -delay max -max_paths $maxpaths -nworst 100 >> $rpt_file

report_timing -delay max -nworst 1 -max_paths 10000 -path end   -nosplit -unique -sort_by slack > ${top_level}.syn.critical_regs
report_timing -delay max -nworst 1 -max_paths 10000 -path full  -nosplit -unique -sort_by slack > ${top_level}.syn.critical_regs.full
report_timing -delay max -nworst 1 -max_paths 10000 -path end   -nosplit -unique -sort_by slack -to [all_outputs] > ${top_level}.syn.critical_regs.output
report_timing -delay max -nworst 1 -max_paths 10000 -path end   -nosplit -unique -sort_by slack -to [all_registers -data_pins] > ${top_level}.syn.critical_regs.regs
report_timing -delay min -nworst 1 -max_paths 10000 -path short -nosplit -unique -sort_by slack > ${top_level}.syn.fast_path

quit
