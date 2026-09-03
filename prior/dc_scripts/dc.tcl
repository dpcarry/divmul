reset_design 
remove_design

set MAX_AREA 3400.5
set MAX_DELAY 0
set PATH_NUM 10

# proj_path should be passed through CLI arguments, e.g. dc_shell -f mulsys.tcl -x "set proj_path /path/to/proj/src"
if {![file exists $proj_path]} {
  puts "Error: proj path ($proj_path) not existed"
  quit
}
set DC_OUT_PATH  "$proj_path/.DC"
if {![file exists $DC_OUT_PATH]} {
  file mkdir $DC_OUT_PATH
}
set cell_path "/home/data/home/zhangli/foundry/UMC40/FARADAY/cell/7-Track_Generic_Core/fsh0l_ers/2018Q2v2.2/GENERIC_CORE/FrontEnd/synopsys/synthesis"
set ram_path "/home/data/home/zhangli/PROJ/ASICflow/PEwithMC/LIBS/lib/ram"
set syn_path {/home/cz/EDA/synopsys/syn_2015.06-SP4/libraries/syn /home/cz/EDA/synopsys/syn_2015.06-SP4/minpower/syn /home/cz/EDA/synopsys/syn_2015.06-SP4/dw/syn_ver /home/cz/EDA/synopsys/syn_2015.06-SP4/dw/sim_ver }
set rtl_path "$proj_path"
set search_path [list $syn_path $cell_path $ram_path/SP16X16X1 $ram_path/SP64X64X1 $ram_path/TP32X16X1 $rtl_path]

set symbol_library /home/zhangli/foundry/UMC40/FARADAY/cell/7-Track_Generic_Core/fsh0l_ers/2018Q2v2.2/GENERIC_CORE/FrontEnd/synopsys/symbol/fsh0l_ers_generic_core.sdb
#########get link files#############
set linkfile ""
foreach dir_link $search_path {
  set linkfile [concat $linkfile [concat [glob -nocomplain $dir_link/*.db]]]
}
#########get target files#############no use?
set targetfile ""
foreach tar_dir $cell_path {
  set targetfile [concat $targetfile [concat [glob -nocomplain $tar_dir/*.db]]]
}
###############set library
set link_library  " * $linkfile"

#set target_library   $targetfile     
set target_library    fsh0l_ers_generic_core_ss0p99v125c.db

###########-library WORK ###no influence
#########get verilog files#############
set vfile ""
if {$lib_path != ""} {
  puts "lib_path: $lib_path"
  foreach dir $lib_path {
    set vfile [concat $vfile [concat [glob -nocomplain $dir/*.v*]]] 
  }
}

foreach dir $rtl_path {
  set vfile [concat $vfile [concat [glob -nocomplain $dir/*.v*]]] 
}


puts "vfile: $vfile"
###.vh ==》*.v*

if {![file exists "$DC_OUT_PATH/work"]} {
    file mkdir "$DC_OUT_PATH/work"
}

define_design_lib WORK -path "$DC_OUT_PATH/work"
analyze -library WORK -format verilog $vfile
elaborate top -library WORK  
##real name of the module
current_design top

puts "Start linking"
link
uplevel #0 check_design

set_max_delay $MAX_DELAY -from [all_inputs] -to [all_outputs]

set all_in_ex_clk [all_inputs]
set MAX_LOAD [expr [load_of fsh0l_ers_generic_core_tt1p18v25c/INVLERMX1/I]*15]
set_max_capacitance $MAX_LOAD $all_in_ex_clk
set_load [expr $MAX_LOAD * 2] [all_outputs]
set_driving_cell -library fsh0l_ers_generic_core_tt1p18v25c -lib_cell INVLERMX1 -pin O $all_in_ex_clk

set_operating_conditions -library fsh0l_ers_generic_core_ss0p99v125c WCCOM
set_wire_load_model -name enG50K -library fsh0l_ers_generic_core_tt1p18v25c
set_wire_load_mode enclosed

###fanout/transition?

set_max_area $MAX_AREA


set_fix_multiple_port_nets -all -buffer_constants 
puts "start compiling"
compile

##convert tri to wire -eliminate assign
set_app_var verilogout_no_tri true

##change name in order to meet requirements for name
change_names -rules verilog -hierarchy -verbose

##netlist
write -f verilog -hierarchy -output $DC_OUT_PATH/netlist.v
# write_scan_def -out $DC_OUT_PATH/my_design.def
# write -f ddc -hierarchy -output $DC_OUT_PATH/$MULT_NAME.ddc
# write_sdf $DC_OUT_PATH/$MULT_NAME.sdf
# write_sdc $DC_OUT_PATH/$MULT_NAME.sdc

#report_constraint -verbose
#report_constraint -all_violators
#report_timing

# output report, override
uplevel #0 { report_area -hierarchy } > $DC_OUT_PATH/area.report
uplevel #0 { report_power -analysis_effort low } > $DC_OUT_PATH/power.report
uplevel #0 { report_timing -path full -delay max -nworst $PATH_NUM -max_paths $PATH_NUM -significant_digits 4 -sort_by group } > $DC_OUT_PATH/timing.report
uplevel #0 { report_constraint -all_violators -significant_digits 4 } > $DC_OUT_PATH/violators.report

quit
