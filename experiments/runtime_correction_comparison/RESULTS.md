# Runtime Correction Comparison Results

All three designs are combinational FP32 normal-finite DIV/MUL units with
runtime level[1:0] and divide_mode. They use the same wrapper, coefficient
table, 10 ns constraint, TSMC65 typical CCS library, hierarchy-preserving
ordinary compile, and vectorless PT assumptions.

| Design | Area (um2) | Delay (ns) | Power (uW) | Area vs direct | Delay vs direct | Power vs direct |
|---|---:|---:|---:|---:|---:|---:|
| oadm_runtime_opt | 5302.80 | 4.88742 | 221.513 | +0.00% | +0.00% | +0.00% |
| oadm_runtime_correction_common | 8022.96 | 4.65460 | 378.583 | +51.30% | -4.76% | +70.91% |
| oadm_runtime_correction_tapped | 8840.88 | 4.71164 | 433.457 | +66.72% | -3.60% | +95.68% |

RTL cross-equivalence: PASS, 800,136 comparisons.
Gate/RTL and cross-design equivalence: PASS, 2,048 comparisons.
Per-mode case analysis: complete.

| Mode | Direct delay (ns) | Common delay (ns) | Common change | Tapped delay (ns) | Tapped change |
|---|---:|---:|---:|---:|---:|
| MUL L0 | 3.16528 | 2.83088 | -10.56% | 2.75897 | -12.84% |
| DIV L0 | 4.05474 | 3.83682 | -5.37% | 3.75392 | -7.42% |
| MUL L1 | 3.51430 | 3.26932 | -6.97% | 3.27264 | -6.88% |
| DIV L1 | 4.36374 | 4.17683 | -4.28% | 4.18086 | -4.19% |
| MUL L2 | 3.71430 | 3.29009 | -11.42% | 3.31139 | -10.85% |
| DIV L2 | 4.62869 | 4.26524 | -7.85% | 4.25014 | -8.18% |
| MUL L3 | 3.79842 | 3.30292 | -13.04% | 3.42553 | -9.82% |
| DIV L3 | 4.72385 | 4.28555 | -9.28% | 4.40880 | -6.67% |

The correction implementations are diagnostic realizations of the same
piecewise-plane recurrence. They are not claimed to be bit-level ports of
the AM-Lib OAM or PACE author RTL.

The common correction organization is faster in every statically selected
mode, but its extra correction generators and wide accumulation increase
area and vectorless power. Explicit taps improve L0 delay further; duplicated
accumulation makes the tapped organization the largest and highest-power
implementation. Per-mode power values are in mode_timing_power.csv.
