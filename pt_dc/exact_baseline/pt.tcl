set sh_enable_page_mode false
set power_enable_analysis true

if {![info exists ::env(BASELINE_KIND)]} {
    puts "ERROR: BASELINE_KIND must be mul, div, or divmul"
    exit 2
}
set baseline_kind $::env(BASELINE_KIND)
if {$baseline_kind != "mul" && $baseline_kind != "div" &&
    $baseline_kind != "divmul"} {
    puts "ERROR: BASELINE_KIND must be mul, div, or divmul"
    exit 2
}

set top_level "exact_fp32_${baseline_kind}_7stage"
set report_root "reports"
if {[info exists ::env(REPORT_ROOT)]} {
    set report_root $::env(REPORT_ROOT)
}
set dc_output_root "outputs"
if {[info exists ::env(DC_OUTPUT_ROOT)]} {
    set dc_output_root $::env(DC_OUTPUT_ROOT)
}
set report_dir "./${report_root}/${baseline_kind}"
file mkdir $report_dir

set search_path [list "." \
  "/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/timing_power_noise/CCS/tcbn65gplus_200a" \
  "/home/cad/installs/synopsys/syn/O-2018.06-SP5-1/libraries/syn"]
set link_path [list "*" "tcbn65gplustc_ccs.db"]
read_db [list "tcbn65gplustc_ccs.db"]

set svr_enable_vpp true
read_verilog "../../dc/exact_baseline/${dc_output_root}/${baseline_kind}/${top_level}.nl.v"
link_design $top_level
source "../oadm_dm/timing.tcl"
update_timing

check_timing > "${report_dir}/${top_level}.pt.check_timing.rpt"
report_timing -significant_digits 4 -delay_type max -nworst 10 -path full \
  > "${report_dir}/${top_level}.pt.setup.rpt"
report_timing -significant_digits 4 -delay_type min -nworst 10 -path full \
  > "${report_dir}/${top_level}.pt.hold.rpt"
report_constraint -all_violators -max_delay \
  > "${report_dir}/${top_level}.pt.setup.violations.rpt"
report_constraint -all_violators -min_delay \
  > "${report_dir}/${top_level}.pt.hold.violations.rpt"
report_qor > "${report_dir}/${top_level}.pt.qor.rpt"
report_reference > "${report_dir}/${top_level}.pt.area.rpt"

# Match the vectorless assumptions used for the fixed-level OADM reports.
set clock_ports [get_ports -quiet clk]
set data_inputs [remove_from_collection [all_inputs] $clock_ports]
set_switching_activity -static_probability 0.5 -toggle_rate 0.1 $data_inputs
update_power
report_power -significant_digits 4 \
  > "${report_dir}/${top_level}.pt.power.rpt"
report_power -hierarchy -significant_digits 4 \
  > "${report_dir}/${top_level}.pt.power.hier.rpt"

quit
