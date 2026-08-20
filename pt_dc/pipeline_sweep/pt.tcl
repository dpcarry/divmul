set sh_enable_page_mode false
set power_enable_analysis true

foreach required_env {CONFIG DEPTH} {
    if {![info exists ::env($required_env)]} {
        puts "ERROR: $required_env is required"
        exit 2
    }
}

set config $::env(CONFIG)
set depth $::env(DEPTH)
if {$config eq "runtime"} {
    set top_level "oadm_runtime_${depth}"
} elseif {[regexp {^fixed_l[0-4]$} $config]} {
    set top_level "oadm_${config}_${depth}"
} else {
    puts "ERROR: unsupported CONFIG=$config"
    exit 2
}

set dc_output_root "outputs"
if {[info exists ::env(PIPELINE_DC_OUTPUT_ROOT)]} {
    set dc_output_root $::env(PIPELINE_DC_OUTPUT_ROOT)
}
set report_root "reports"
if {[info exists ::env(PIPELINE_REPORT_ROOT)]} {
    set report_root $::env(PIPELINE_REPORT_ROOT)
}
set dc_dir "../../dc/pipeline_sweep/${dc_output_root}/${config}/${depth}"
set report_dir "${report_root}/${config}/${depth}"
file mkdir $report_dir

set search_path [list "." \
    "/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/timing_power_noise/CCS/tcbn65gplus_200a" \
    "/home/cad/installs/synopsys/syn/O-2018.06-SP5-1/libraries/syn"]
set link_path [list "*" "tcbn65gplustc_ccs.db"]
read_db [list "tcbn65gplustc_ccs.db"]

set svr_enable_vpp true
read_verilog "${dc_dir}/${top_level}.nl.v"
link_design $top_level
read_sdc "${dc_dir}/${top_level}.syn.sdc"
update_timing

check_timing > "${report_dir}/${top_level}.pt.check_timing.rpt"
report_timing -significant_digits 4 -delay_type max -nworst 10 \
    -slack_lesser_than 1000 -path full \
    > "${report_dir}/${top_level}.pt.setup.rpt"
report_timing -significant_digits 4 -delay_type min -nworst 10 \
    -slack_lesser_than 1000 -path full \
    > "${report_dir}/${top_level}.pt.hold.rpt"
report_constraint -all_violators -max_delay \
    > "${report_dir}/${top_level}.pt.setup.violations.rpt"
report_constraint -all_violators -min_delay \
    > "${report_dir}/${top_level}.pt.hold.violations.rpt"
report_qor > "${report_dir}/${top_level}.pt.qor.rpt"
report_reference > "${report_dir}/${top_level}.pt.reference.rpt"

# Use identical vectorless activity per operation. Each pipelined design accepts
# one operation per cycle, so tie the 0.1 transition rate to its own clock period.
set clock_ports [get_ports -quiet clk]
set data_inputs [remove_from_collection [all_inputs] $clock_ports]
set activity_period [get_attribute [get_clocks clk] period]
set_switching_activity -static_probability 0.5 -toggle_rate 0.1 \
    -period $activity_period $data_inputs
update_power
report_power -significant_digits 4 \
    > "${report_dir}/${top_level}.pt.power.rpt"
report_power -hierarchy -significant_digits 4 \
    > "${report_dir}/${top_level}.pt.power.hier.rpt"

quit
