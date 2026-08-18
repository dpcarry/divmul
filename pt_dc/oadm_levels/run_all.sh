#!/bin/bash

set -euo pipefail

for level in 0 1 2 3 4; do
    ./run_one.sh "$level"
done
