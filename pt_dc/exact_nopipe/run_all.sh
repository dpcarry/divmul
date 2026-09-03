#!/bin/bash
set -euo pipefail

for kind in mul div divmul; do
    BASELINE_KIND="$kind" pt_shell -file pt.tcl | tee "${kind}.pt.log"
done
