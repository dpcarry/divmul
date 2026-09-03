# OADM Multiplier Root-Precision Experiment

## Scope

This experiment transfers residual-width co-design from the OADM divider to
the fixed-level OAM-equivalent multiplier plane. It is isolated from the
upstream AM-Lib OAM snapshot and from the existing OADM multiplier RTL and
reports. No existing paper table has been replaced.

The optimized plane remains

\[
  \widehat m_n = k_x^n k_y^n + k_y^n r_x + k_x^n r_y.
\]

Only the internal precision used to represent the centered residuals changes.
The partition, midpoint coordinates, tangent-plane slopes, FP32 sign/exponent
logic, normalization, and packing remain intact.

## Analytic Truncation-Bias Compensation

For a residual drop of `D` bits, the hardware forms

\[
  \widetilde r = 2^D\left\lfloor\frac{r}{2^D}\right\rfloor.
\]

Arithmetic truncation therefore produces a residual error
`e = r - r_tilde` in `[0,2^D)`, with mean approximately `2^(D-1)` under a
uniform within-cell distribution. Let `K_x=16k_x` and `K_y=16k_y` be the
integer midpoint numerators used by the RTL. The mean plane value removed by
truncating both residuals is

\[
  \frac{K_y E[e_x] + K_x E[e_y]}{16}
  \simeq (K_x+K_y)2^{D-5}.
\]

The new RTL adds exactly this midpoint-sum bias. It requires no coefficient or
two-dimensional correction table. It is a quantization-aware implementation
of the same OAM tangent plane, not a new multiplier approximation formula.

## Candidate Sets

The 250,000-point-per-candidate screen evaluated arithmetic truncation,
midpoint-sum bias compensation, and explicit residual rounding. The selected
midpoint-bias sets are:

| Set | L0 | L1 | L2 | L3 | Purpose |
|---|---:|---:|---:|---:|---|
| accuracy | 12 | 10 | 8 | 6 | Error change approximately zero |
| conservative | 16 | 14 | 12 | 10 | Balanced PPA, less than 0.42% MAE increase |
| aggressive | 18 | 16 | 14 | 12 | Area-oriented, less than 4.7% metric increase |

Values are residual LSBs removed. The corresponding retained independent
residual widths are:

| Set | L0 | L1 | L2 | L3 |
|---|---:|---:|---:|---:|
| accuracy | 11 | 12 | 13 | 14 |
| conservative | 7 | 8 | 9 | 10 |
| aggressive | 5 | 6 | 7 | 8 |

## Accuracy-Preserving Result

On 200,000 common normalized finite FP32 multiplication vectors, relative to
the current centered-residual OADM MUL-only implementation:

| Level | MAE change | MRED change | RMSE change |
|---|---:|---:|---:|
| L0 | +0.00034% | -0.00017% | -0.00048% |
| L1 | +0.00034% | +0.00022% | -0.00006% |
| L2 | +0.00151% | +0.00140% | +0.00058% |
| L3 | +0.00263% | +0.00195% | +0.00063% |

These differences are negligible at the sampled precision; do not describe
the candidates as bit-exact to the current multiplier. The independently
coded integer model was bit-exact to each candidate RTL for all 200,000
vectors.

## Canonical PPA

All points use the existing canonical TSMC65, 10 ns, no-pipeline,
explicit-flatten, `compile_ultra -area_high_effort_script`, and
`optimize_netlist -area` flow. The MUL candidates use the same
`fp32_normal_finite_wrapper` as DIV and PACE. The accuracy-preserving set gives:

| Level | Area (um^2) | Delay (ns) | Power (mW) | Area change | Delay change | Power change |
|---|---:|---:|---:|---:|---:|---:|
| L0 | 524.880004 | 1.76777 | 0.0212952 | -37.34% | -25.24% | -41.47% |
| L1 | 787.680008 | 2.23311 | 0.0314033 | -42.30% | -25.95% | -40.20% |
| L2 | 1247.760009 | 2.64256 | 0.0582298 | -29.58% | -20.26% | -31.29% |
| L3 | 1679.400010 | 2.90501 | 0.0775867 | -26.98% | -11.75% | -21.96% |

The conservative and aggressive points are retained in
`ppa_results/mul_root_opt_results_10ns.csv`. All 12 final netlists have zero
hierarchical cells, pass PrimeTime `check_timing`, and pass a 20,002-vector
normal-finite RTL-versus-netlist miter.

## Evidence

- Search: `python/mul_root_opt_search.py`
- Full sweep: `python/results_mul_root_opt/mul_fixed_sweep.csv`
- RTL: `rtl/mul_root_opt/oadm_mul_root_opt.v`
- Same-vector harness: `qsim_rtl/mul_root_opt/`
- Accuracy: `qsim_rtl/mul_root_opt/logs/mul_root_opt_accuracy.csv`
- Gate miter: `qsim_rtl/mul_root_opt/gate_miter.log`
- DC reports: `dc/mul_root_opt/outputs_10ns/`
- PT reports: `pt_dc/mul_root_opt/reports_10ns/`
- Collected table: `ppa_results/mul_root_opt_results_10ns.csv`
- Collector: `scripts/collect_mul_root_opt_results.py`

## Remaining Boundary

This experiment covers fixed-level MUL-only implementations. It has not yet
been folded into the runtime selectable DIV+MUL datapath, and the sharing
ablation has not been regenerated. That integration must preserve the common
plane rather than adding separate optimized DIV and MUL cores.
