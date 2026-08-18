#!/bin/bash
set -euo pipefail

if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <runtime|fixed_l4> <np|p2|...|p7>" >&2
    exit 2
fi

config=$1
depth=$2
case "$config" in
    runtime|fixed_l4) ;;
    *) echo "ERROR: unsupported config $config" >&2; exit 2 ;;
esac
case "$depth" in
    np|p2|p3|p4|p5|p6|p7) ;;
    *) echo "ERROR: unsupported depth $depth" >&2; exit 2 ;;
esac

mkdir -p "reports/$config/$depth"
CONFIG="$config" DEPTH="$depth" pt_shell -file pt.tcl \
    | tee "reports/$config/$depth/pt_console.txt"
