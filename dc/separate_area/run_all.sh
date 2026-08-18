#!/bin/bash

set -euo pipefail

: "${AM_LIB_ROOT:?Set AM_LIB_ROOT to the skycrapers/AM-Lib clone}"

for level in 0 1 2 3 4; do
    ./run_one.sh div "$level"
    ./run_one.sh mul "$level"
done
