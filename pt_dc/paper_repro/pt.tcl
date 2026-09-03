set sh_enable_page_mode false
set power_enable_analysis true
if {![info exists ::env(TOP_LEVEL)]} {
    puts "ERROR: TOP_LEVEL must name a paper reconstruction top"
    exit 2
}
set top_level $::env(TOP_LEVEL)
set dc_output_root "outputs_10ns"
if {[info exists ::env(DC_OUTPUT_ROOT)]} { set dc_output_root $::env(DC_OUTPUT_ROOT) }
set report_root "reports_10ns"
if {[info exists ::env(REPORT_ROOT)]} { set report_root $::env(REPORT_ROOT) }
file mkdir $report_root
set search_path [list "." "/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/timing_power_noise/CCS/tcbn65gplus_200a" "/tools/synopsys/syn/U-2022.12-SP7/libraries/syn"]
set link_path [list "*" "tcbn65gplustc_ccs.db"]
read_db "tcbn65gplustc_ccs.db"
read_verilog "../../dc/paper_repro/${dc_output_root}/${top_level}.nl.v"
link_design $top_level
read_sdc "../../dc/paper_repro/${dc_output_root}/${top_level}.syn.sdc"
update_timing
report_timing -significant_digits 5 -delay_type max -nworst 10 -path full -slack_lesser_than 1000 \
    > "$report_root/$top_level.pt.critical_path.rpt"
set_switching_activity -static_probability 0.5 -toggle_rate 0.1 [all_inputs]
update_power
report_power -significant_digits 5 > "$report_root/$top_level.pt.power.rpt"
quit
