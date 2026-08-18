##############################################
# Separate divider/OAM multiplier area study
##############################################

if {![info exists ::env(APPROX_LEVEL)] || ![info exists ::env(BLOCK_KIND)]} {
    echo "ERROR: APPROX_LEVEL and BLOCK_KIND are required"
    exit 2
}

set approx_level $::env(APPROX_LEVEL)
set block_kind $::env(BLOCK_KIND)
if {$approx_level < 0 || $approx_level > 4} {
    echo "ERROR: unsupported APPROX_LEVEL=$approx_level"
    exit 2
}
if {$block_kind != "div" && $block_kind != "mul"} {
    echo "ERROR: BLOCK_KIND must be div or mul"
    exit 2
}

set output_root "outputs"
if {[info exists ::env(OUTPUT_ROOT)]} {
    set output_root $::env(OUTPUT_ROOT)
}
set output_dir "./${output_root}/${block_kind}/L${approx_level}"
file mkdir $output_dir
source -verbose "../common_scripts/common.tcl"

if {$block_kind == "div"} {
    set top_level "oad_div_l${approx_level}"
    analyze -format verilog [list \
        ../../rtl/csa3.v \
        ../../rtl/sa_scale.v \
        ../../rtl/fixed/recip_lut_fixed.v \
        ../../rtl/fixed/recip_scale_fixed.v \
        ../../rtl/fixed/oadm_core_fixed.v \
        ../../rtl/fixed/oadm_dm_fixed.v \
        ../../rtl/fixed/oad_div_fixed.v \
        ../../rtl/L${approx_level}/${top_level}.v]
} else {
    if {![info exists ::env(AM_LIB_ROOT)]} {
        echo "ERROR: AM_LIB_ROOT must point to a clone of skycrapers/AM-Lib"
        exit 2
    }
    set top_level top
    set source_dir "$::env(AM_LIB_ROOT)/OAM/L${approx_level}/src"
    set source_files [glob -nocomplain "${source_dir}/*.v"]
    if {[llength $source_files] == 0} {
        echo "ERROR: no OAM source files found in $source_dir"
        exit 2
    }
    analyze -format verilog $source_files
}

elaborate $top_level
if {[check_error -v] == 1} {
    exit 1
}
link
current_design $top_level
check_design

set_max_capacitance 0.005 [all_inputs]
set_max_fanout 4 [all_inputs]
set_max_fanout 4 $top_level
set_fix_multiple_port_nets -all -buffer_constants
source -verbose "../oadm_dm/timing.tcl"

compile_ultra -no_autoungroup
update_timing

set report_prefix "${block_kind}_l${approx_level}"
set report_file "${output_dir}/${report_prefix}.dc.rpt"
check_design > $report_file
report_area >> $report_file
report_constraint -all_violators -verbose >> $report_file
report_timing -path full -delay max -max_paths 20 -nworst 20 >> $report_file
report_timing -delay max -nworst 1 -max_paths 1 -path full -nosplit \
    > "${output_dir}/${report_prefix}.setup.rpt"
report_timing -delay min -nworst 1 -max_paths 1 -path full -nosplit \
    > "${output_dir}/${report_prefix}.hold.rpt"

quit
