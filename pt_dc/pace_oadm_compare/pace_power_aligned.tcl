if {![info exists ::env(PACE_LEVEL)]} {
    puts "ERROR: PACE_LEVEL is required"
    exit 2
}
set sh_enable_page_mode false
set power_enable_analysis true
set level $::env(PACE_LEVEL)
set top_level "pace_fp32_l${level}"
set dc_dir "../../dc/pace_original/outputs/L${level}"
set report_dir "reports/pace_l${level}"
file mkdir $report_dir

set search_path [list "." \
    "/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/timing_power_noise/CCS/tcbn65gplus_200a" \
    "/tools/synopsys/syn/U-2022.12-SP7/libraries/syn"]
set link_path [list "*" "tcbn65gplustc_ccs.db"]
read_db [list "tcbn65gplustc_ccs.db"]
set svr_enable_vpp true
read_verilog "${dc_dir}/${top_level}.nl.v"
link_design $top_level
read_sdc "${dc_dir}/${top_level}.syn.sdc"
update_timing

set activity_period [get_attribute [get_clocks vclk] period]
set_switching_activity -static_probability 0.5 -toggle_rate 0.1 \
    -period $activity_period [all_inputs]
update_power
report_power -significant_digits 5 \
    > "${report_dir}/${top_level}.pt.power_aligned.rpt"
quit
