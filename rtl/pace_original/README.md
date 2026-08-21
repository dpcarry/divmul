# PACE original-RTL wrappers

These combinational FP32 tops wrap the author-provided RTL under `../../PACE`
without changing the PACE mantissa datapath.  Separate names avoid the repeated
`top` module name in the original L1--L4 directories.

There is intentionally no clock, state, or pipeline.  The author source remains
unmodified and is not duplicated here because it has no redistribution license.
