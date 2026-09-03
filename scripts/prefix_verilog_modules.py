#!/usr/bin/env python3
"""Rename every module in a synthesized netlist for RTL/gate co-simulation."""

from __future__ import annotations

import re
import sys
from pathlib import Path


if len(sys.argv) != 4:
    raise SystemExit("usage: prefix_verilog_modules.py SRC DST TOP")

src, dst, top = Path(sys.argv[1]), Path(sys.argv[2]), sys.argv[3]
source = src.read_text()
names = re.findall(r"(?m)^\s*module\s+([A-Za-z_$][A-Za-z0-9_$]*)", source)
if top not in names:
    raise SystemExit(f"top module {top!r} not found in {src}")

for name in sorted(set(names), key=len, reverse=True):
    replacement = f"{top}_gate" if name == top else f"{top}_gate__{name}"
    source = re.sub(
        rf"(?<![A-Za-z0-9_$]){re.escape(name)}(?![A-Za-z0-9_$])",
        replacement,
        source,
    )

dst.write_text(source)
