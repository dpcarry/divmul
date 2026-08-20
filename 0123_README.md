# Q0.7 L0-L3 OADM branch

This branch removes L4 from both the runtime-configurable and fixed-level
hardware. The runtime `level` port is two bits and selects L0 through L3.
There is no hidden L4 correction or 16-entry L4 coefficient table.

The divider uses Q0.7 reciprocal-square coefficients. Each level retains its
original 1, 2, 4, or 8 midpoint intervals, while each selected coefficient is
stored with seven fractional bits. The multiplier equations and FP32 wrapper
are unchanged.

ModelSim verification is in `qsim_rtl/tb_pipeline_accuracy`. Dedicated DC and
PrimeTime results are written under `dc/0123` and `pt_dc/0123`; these paths keep
the branch experiment separate from the earlier Q0.9 L0-L4 reports.
