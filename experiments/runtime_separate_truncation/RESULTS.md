# Runtime Separate Truncation: Completed

Both designs retain runtime level and operation ports. One shared plane, not four fixed cores.
Common normal-finite FP32 wrapper, TSMC65 typical CCS, 10 ns, no pipeline, ordinary compile, no flatten/ultra.
Reciprocal coefficients remain the original Q0.7 table; no MUL bias in any point.
Residual variant: DIV drops 18/16/16/16; MUL drops 16/14/12/10.
WN variant: DIV plane drops 18/16/16/16, instead of 14. MUL bypasses this stage.
This is a truncation-only ablation, not the complete fixed-level optimization package.

| Design | Area um2 | Delay ns | Vectorless power uW | ADP change % |
|---|---:|---:|---:|---:|
| oadm_runtime_root_opt | 3174.12 | 3.96574 | 128.427 | 0.00 |
| runtime_both | 3124.80 | 3.91689 | 113.731 | -2.77 |

## Packed-Output Accuracy

Uniform normalized 100,000-pair dataset. MRED and sampled maximum RE are percentages.

| Level | Mode | Original MRED | Separate MRED | Original max RE | Separate max RE |
|---|---|---:|---:|---:|---:|
| L0 | DIV | 4.28896 | 4.57836 | 33.1087 | 33.2729 |
| L0 | MUL | 3.12584 | 3.20590 | 24.7120 | 25.7957 |
| L1 | DIV | 1.11756 | 1.16328 | 9.7835 | 10.0853 |
| L1 | MUL | 0.75859 | 0.77539 | 6.1407 | 6.5282 |
| L2 | DIV | 0.86462 | 0.96749 | 2.9657 | 3.3513 |
| L2 | MUL | 0.18895 | 0.19262 | 1.5230 | 1.5641 |
| L3 | DIV | 0.33045 | 0.47077 | 1.3270 | 2.1036 |
| L3 | MUL | 0.04810 | 0.04810 | 0.3811 | 0.3811 |

Per design: 834432 independent-model RTL checks and 42432 gate comparisons passed.
PT check_timing, max/min constraints passed; no sequential cells or black boxes.
accuracy.csv reports packed-output MRED, RMSE, signed mean error and sampled maximum RE.
Boundary maxima are sampled, not formal global bounds. Vectorless power is not workload energy.
No production RTL, canonical results or original runtime 10/14 data replaced.
