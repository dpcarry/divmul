if {![info exists ::env(TOP_LEVEL)] || ![info exists ::env(DC_OUTPUT_DIR)] || ![info exists ::env(REPORT_DIR)]} {
    exit 2
}
set top $::env(TOP_LEVEL)
set dc_dir $::env(DC_OUTPUT_DIR)
set report_dir $::env(REPORT_DIR)
file mkdir $report_dir
set search_path [list "." "/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/timing_power_noise/CCS/tcbn65gplus_200a"]
set link_path [list "*" "tcbn65gplustc_ccs.db"]
read_db [list "tcbn65gplustc_ccs.db"]
set power_enable_analysis true
read_verilog "${dc_dir}/${top}.nl.v"
link_design $top
read_sdc "${dc_dir}/${top}.syn.sdc"
set period [get_attribute [get_clocks vclk] period]
set_switching_activity -static_probability 0.5 -toggle_rate 0.1 -period $period [get_ports {x[*] y[*]}]
foreach level {0 1 2 3} {
    foreach mode {0 1} {
        set b0 [expr {$level & 1}]
        set b1 [expr {($level >> 1) & 1}]
        set_case_analysis $b0 [get_ports {level[0]}]
        set_case_analysis $b1 [get_ports {level[1]}]
        set_case_analysis $mode [get_ports divide_mode]
        update_timing
        update_power
        report_timing -significant_digits 5 -delay_type max -nworst 1 -path full > "${report_dir}/${top}.l${level}.m${mode}.timing.rpt"
        report_power -significant_digits 5 > "${report_dir}/${top}.l${level}.m${mode}.power.rpt"
        remove_case_analysis [get_ports {level[*] divide_mode}]
    }
}
quit
