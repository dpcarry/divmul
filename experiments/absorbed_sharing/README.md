# Sharing after reciprocal absorption

Isolated experiment on `experiment/absorbed-reciprocal`. No existing absorbed
DIV results, canonical RTL, manuscript or canonical CSV are changed.

DIV is the previously tested absorbed short-coefficient implementation at each
level, with slope fractional bits 7,6,5,4 and residual drops 18,16,16,16.
MUL preserves the balanced production multiplier, with residual drops
16,14,12,10 and its midpoint-dependent truncation compensation. MUL has no
new coefficient quantization or additional plane truncation.

## Three implementations

- separate_native_mul: absorbed DIV core and unchanged native MUL plane are
  independent. A result mux precedes a common normalizer and FP32 wrapper.
- separate: the same DIV core plus an independent MUL core whose midpoint
  product and compensation are precomputed in a cell table. This controls for
  moving the MUL constant calculation into the table; its outputs are unchanged.
- shared: select DIV or MUL coefficients and constants, then share residual
  recoding, two products, the signed sum, normalizer and FP32 wrapper. The MUL
  compensation is included exactly in the selected MUL constant.

Each design has a fixed level and a live divide_mode input. All three have
identical throughput (one selected operation), the same mode input and the same
normalization/wrapper source. The separate cores are not protected by dont_touch
or artificial barriers. No new operand isolation is added to either side.

The primary sharing comparison is separate versus shared. Comparison against
separate_native_mul also exposes the total benefit relative to retaining the
original multiplier core. These are not sums of standalone PPA measurements.

## Binary-point alignment

The shared residual uses MUL's retained precision. In DIV mode its extra low
bits are set to zero, preserving exactly the original DIV residual truncation.
For slope fractional precision S, MUL coefficients are K*2^(S-4), which exactly
represent K/16. DIV coefficients retain the previously selected integers.
The DIV constant is shifted to the common output scale F=S+23-Dmul. The MUL
constant contains Kx*Ky and the exact existing bias at that same scale.
Coefficients, the constant, and residual precision are selected by mode; the
second product is subtracted for DIV and added for MUL. The final
conversion to Q23 is a fixed shift in each level, not a mode-dependent multiplier.

## Validation and measurement

Each RTL design is checked against both the independent integer model and the
unchanged standalone reference RTL: absorbed DIV plus balanced production MUL.
Inputs include the previous 200k paired random set, grids, signed safe exponents,
cell edges and diagonals, and extra boundaries around residual truncation steps.
Every pair is tested in both operation modes. Gate simulation checks the mapped
netlist against the same expected words. This is functional gate simulation,
not SDF simulation. Arithmetic outputs must agree across all three organizations.

The same TSMC65 10 ns ordinary-compile DC/PT flow is used, preserving hierarchy,
without flatten or pipeline. Both cores in separate receive their inputs;
vectorless PT applies probability 0.5 and toggle rate 0.1 per 10 ns to all inputs,
including mode. Power is a structural estimate, not a measured workload energy
claim. Application-level benefits depend on mode activity and operand isolation.

Run with the research NumPy environment and licensed tool environment:

    python experiments/absorbed_sharing/prepare.py
    python experiments/absorbed_sharing/run.py rtl
    python experiments/absorbed_sharing/run.py all
    python experiments/absorbed_sharing/collect.py

New DIV error differs from the old production DIV. Therefore comparing new and
old shared PPA is not an equal-output sharing ablation. Only the three new
implementations above provide the matched-output sharing experiment.

This tests direct sharing with mode-selected coefficients, not every possible
factorization or partial-sharing architecture. A negative result does not prove
that all implementations of absorbed DIV/MUL sharing are unprofitable.
