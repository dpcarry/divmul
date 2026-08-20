#!/bin/bash
set -euo pipefail

mkdir -p outputs
dc_shell -f module.tcl | tee outputs/dc_console.txt
