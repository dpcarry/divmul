# PLSAD Extended Exact-MSB Sweep

This isolated experiment extends the paper's PLSAD m=4/6/8 points with m=10,
m=12, and m=15. All variants retain the paper-derived eight-plane equations,
ten-bit FP32 input fractions, Q1.14 addends, and shared normal-finite wrapper.
Only the number of exactly added MSBs changes. At m=15 all 15 addend bits are
summed exactly and no lower-part OR approximation remains.

## Results

All points use the same 10,000 normal-finite FP32 operand pairs and the same
TSMC65, 10 ns, no-pipeline, hierarchy-preserving ordinary-`compile` boundary.

| m | LOA bits | MRED | RMSE | Area (um2) | Delay (ns) | Power (mW) |
|---:|---:|---:|---:|---:|---:|---:|
| 8 | 7 | 0.8732% | 0.013420 | 659.88 | 1.7384 | 0.02414 |
| 10 | 5 | 0.8243% | 0.012264 | 714.60 | 1.8397 | 0.02684 |
| 12 | 3 | 0.8220% | 0.012291 | 781.56 | 1.8742 | 0.02931 |
| 15 | 0 | 0.8203% | 0.012305 | 753.84 | 1.9123 | 0.02787 |

The useful accuracy gain is almost exhausted at m=10. Relative to m=8, m=10
reduces MRED by about 5.60% and RMSE by 8.61% for 8.29% more area. Increasing
from m=10 to the fully exact m=15 point reduces MRED by only another 0.49%,
while area increases by a further 5.49%. The non-monotonic m=12/m=15 area is a
mapping effect: the all-exact m=15 adder avoids the mixed LOA boundary logic.

Every point has zero mismatches against the independent bit model. The m=10,
m=12, and m=15 synthesized netlists each pass 20,002 RTL/gate vectors.
PrimeTime reports successful timing checks and no max-delay or min-delay
violations. These extended points are not reported by the PLSAD paper and do
not replace the paper-derived m=4/6/8 prior-work rows.

Detailed results are in `results/summary.csv`.
