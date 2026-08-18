#!/bin/bash

set -euo pipefail

for kind in mul div divmul; do
    ./run_one.sh "$kind"
done
