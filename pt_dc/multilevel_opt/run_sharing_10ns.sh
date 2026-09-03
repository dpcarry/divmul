#!/bin/bash
set -euo pipefail

for level in 0 1 2 3; do
    for mode in full div mul; do
        case "$mode" in
            full) top="oadm_fixed_l${level}_opt" ;;
            div)  top="oadm_fixed_l${level}_div_opt" ;;
            mul)  top="oadm_fixed_l${level}_mul_opt" ;;
        esac
        tag="sharing_l${level}_${mode}"
        mkdir -p "reports/$tag"
        TOP_LEVEL="$top" DC_OUTPUT_ROOT=outputs_sharing_10ns REPORT_TAG="$tag" \
            pt_shell -file pt.tcl | tee "reports/$tag/pt_console.txt"
    done
done
