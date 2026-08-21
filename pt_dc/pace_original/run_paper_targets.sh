#!/bin/bash

set -euo pipefail

for level in 1 2 3 4; do
    PACE_DC_OUTPUT_ROOT=outputs_paper_targets \
    PACE_REPORT_ROOT=reports_paper_targets \
        ./run_one.sh "$level"
done
