set sh_enable_page_mode false
set power_enable_analysis true

if {![info exists ::env(PACE_LEVEL)]} {
    puts "ERROR: PACE_LEVEL must be 1, 2, 3, or 4"
    exit 2
}
set level $::env(PACE_LEVEL)
if {$level < 1 || $level > 4} {
    puts "ERROR: invalid PACE_LEVEL=$level"
    exit 2
}

set top_level "pace_fp32_l${level}"
set dc_output_root "outputs"
if {[info exists ::env(PACE_DC_OUTPUT_ROOT)]} {
    set dc_output_root $::env(PACE_DC_OUTPUT_ROOT)
}
set report_root "reports"
if {[info exists ::env(PACE_REPORT_ROOT)]} {
    set report_root $::env(PACE_REPORT_ROOT)
}
set report_dir "./${report_root}/L${level}"
file mkdir $report_dir

set search_path [list "." \
  "/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/timing_power_noise/CCS/tcbn65gplus_200a" \
  "/tools/synopsys/syn/U-2022.12-SP7/libraries/syn"]
set link_path [list "*" "tcbn65gplustc_ccs.db"]
read_db [list "tcbn65gplustc_ccs.db"]

set svr_enable_vpp true
read_verilog "../../dc/pace_original/${dc_output_root}/L${level}/${top_level}.nl.v"
link_design $top_level
read_sdc "../../dc/pace_original/${dc_output_root}/L${level}/${top_level}.syn.sdc"
update_timing

report_units > "${report_dir}/${top_level}.pt.units.rpt"
check_timing > "${report_dir}/${top_level}.pt.check_timing.rpt"
report_timing -significant_digits 5 -delay_type max -nworst 10 -path full \
    -slack_lesser_than 1000.0 \
    > "${report_dir}/${top_level}.pt.critical_path.rpt"
report_constraint -all_violators -max_delay \
    > "${report_dir}/${top_level}.pt.max_delay.violations.rpt"
report_qor > "${report_dir}/${top_level}.pt.qor.rpt"
report_reference > "${report_dir}/${top_level}.pt.reference.rpt"

# Vectorless assumptions are identical for all four fixed-level designs.
set_switching_activity -static_probability 0.5 -toggle_rate 0.1 [all_inputs]
update_power
report_power -significant_digits 5 \
    > "${report_dir}/${top_level}.pt.power.rpt"
report_power -hierarchy -significant_digits 5 \
    > "${report_dir}/${top_level}.pt.power.hier.rpt"

quit
