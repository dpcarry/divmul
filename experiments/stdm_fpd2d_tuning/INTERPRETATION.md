# What this experiment can establish

## Comparison boundary

This is a comparison of fixed-level DIV-only FP32 wrappers. It does not measure
DIV/MUL sharing, mode switching, or the benefit of integrating both operations.
No tuned parameters have been propagated into the production shared design.

The primary FPD2D references use the independently optimized 8x8 coefficient
tables from the preceding reproduction. They are not supplied author RTL.
Printed-paper-table results are preserved, but using their worse errors as the
only reference would overstate STDM's competitiveness.

## Why width tuning is not automatically enough

The original-expression L2 candidate `stdm_tune_00` has this measured hierarchical
area breakdown in `dc/stdm_tune_00/stdm_tune_00.dc.rpt`:

| Block | Area (um2) |
|---|---:|
| Complete normalized-finite FP32 divider | 1355.76 |
| Common FP32 wrapper, including its submodules | 182.88 |
| Reciprocal coefficient multiplier | 405.72 |
| Complete plane block | 693.36 |
| x residual times y midpoint, inside the plane | 228.60 |
| y residual times x midpoint, inside the plane | 171.00 |
| Midpoint product, inside the plane | 139.68 |

The plane entries are nested and must not be added to their parent a second time.
The reciprocal product and the two residual products alone total 805.32 um2.
For context, the whole reconstructed FPD2D 8x8 t17 MILP wrapper is 790.56 um2.
This is a datapoint for this implementation, not a lower bound on STDM area.

The midpoint shift-add/table rewrite reduces that candidate to 1242.72 um2.
However, its critical timing path still passes through the plane, then the
reciprocal multiplication, then normalization/exponent handling. In
`pt/stdm_tune_00_midpoint/stdm_tune_00_midpoint.pt.max_delay.rpt`, the first path
reaches the end of the plane at approximately 1.250 ns, the end of the coefficient
multiplier at 2.055 ns, and the output at 2.714 ns. These are cumulative arrival
times on one path, not separately measured block delays.

In the local FPD2D implementation, short integer slope products and the cell
constant feed a carry-save reduction and final addition. There is no subsequent
reciprocal-square multiplication of a completed plane. This structural
difference helps explain the measured gap; a common FP32 interface does not make
the internal arithmetic costs equal.

Moving STDM's reciprocal multiplication into new slope/intercept coefficients
would interact with the location of plane truncation. It has not been silently
substituted for the requested parameter-only experiment.

## Accuracy interpretation

Reducing truncation can substantially improve L3 accuracy. The software-only
no-residual-drop/no-plane-drop diagnostic with calibrated B=11 coefficients has
MRED about 0.081% and RMSE about 0.001115 on the independent screening data. It
does not have measured PPA, and it still includes coefficient quantization and
Q23 integer rounding. It is not an exact divider or a proven accuracy floor.

Input masking is not an independent benefit in every configuration. When the
midpoint is representable at the retained input precision, it is equivalent to
increasing residual truncation. The three explicit mask/effective-drop designs
test that fact without counting duplicate arithmetic as a new approximation.

Mean-error matching uses both MRED and RMSE. It does not imply lower maximum
error, distribution-independent accuracy, or a formal worst-case bound. See
the separate grid, cell-boundary, diagonal, signed and fresh-uniform rows in
`accuracy_model.csv` before drawing stronger conclusions.
