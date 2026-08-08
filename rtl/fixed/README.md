# Fixed-Level OADM RTL

`oadm_dm_fixed` keeps the FP32 interface and seven-cycle pipeline of the
runtime-configurable design, but makes `APPROX_LEVEL` an elaboration-time
constant. The wrappers in `../L0` through `../L4` select one level each and do
not expose a runtime `level` input.

The reciprocal-square table remains necessary for division. Its fixed size is
one, two, four, eight, or sixteen Q0.8 coefficients for L0 through L4. Because
`APPROX_LEVEL` is a parameter, synthesis can remove all other table branches
and correction levels.

L0 through L3 are intended to be bit-identical to the corresponding modes of
the existing runtime design. L4 extends the same correction equation by one
mantissa bit and uses sixteen reciprocal-square intervals.
