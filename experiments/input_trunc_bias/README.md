# Direct Input Truncation and Half-Step Compensation

Independent follow-up audit: [audit/README.md](audit/README.md). This includes
actual RTL-output accuracy on new distributions and two truncated PACE DC/PT
points. The original OADM comparison must not be generalized to superiority
over prior work or over other input distributions.

This experiment tests whether a reduced-precision exact arithmetic core can
match the current OADM fixed-level accuracy and PPA. It is an independent
baseline, not a modification to the OADM arithmetic.

Completed: seven DC/PT points and 21,129-vector RTL/gate checks per candidate.
See [results/RESULTS.md](results/RESULTS.md) and
[results/comparison.csv](results/comparison.csv).
On the uniform random set, the compensated MUL candidates have lower
MRED/RMSE, smaller area (22.65%-32.56%), lower delay, and lower vectorless power
than balanced OADM MUL L0-L3; MAE is slightly higher. DIV candidates have lower
area, MRED/RMSE, and power but higher delay. Their ADP is slightly lower than
OADM L0/L1 and higher than OADM L2/L3. These results require revisiting broad
standalone-PPA superiority claims; they do not establish an RTL correctness bug.

## Arithmetic

For each normalized significand m in [1,2), retain b fraction bits:

    m_lo = floor(m * 2^b) / 2^b
    m_hat = m_lo + 2^(-b-1)

The compensated integer operand is `{1'b1, fraction[22 -: b], 1'b1}`,
with b+1 fractional bits. This is a fixed half-bin reconstruction, without
per-sample error access, coefficient fitting, or an output-error oracle.
The uncompensated software control uses a trailing zero instead of one.
The half-bin value assumes approximately uniform discarded bits; it is not
an unbiased estimator for every input distribution or for a nonlinear quotient.

MUL computes the exact product of the reconstructed operands and normalizes
it to the common FP32 wrapper. DIV computes an exact unsigned integer quotient
at b+2 fractional output bits (floor rounding), then normalizes it to FP32.
Thus DIV includes both input approximation and finite quotient precision.
No IEEE exceptional/subnormal support is claimed: the exact operation refers
to the reduced integer core, not a fully IEEE-compliant FP32 divider.

All candidate cores are combinational and use the repository's unchanged
`fp32_normal_finite_wrapper`. DC/PT use the existing TSMC65 typical CCS,
10 ns virtual-clock, INVD0, 0.004 output-load, ordinary `compile`, hierarchy-
preserving, `set_max_area 0`, `optimize_netlist -area`, vectorless power flow.

## Accuracy and Selection

`sweep.py` tests b=2 through 11, with/without input compensation, on the same
200,000 independent uniform random significand pairs (NumPy seed 63212026).
It also evaluates a Cartesian boundary grid covering both sides of all
1/256 boundaries and the [1,2) endpoints. Boundary metrics are a stress test,
not a uniform-distribution estimate. Reported maxima are observed sample
maxima, not a proof of worst-case bounds.

For each OADM level, the smallest compensated width meeting BOTH the OADM
MRED and RMSE on the random set is selected for DC/PT. This yields DIV b=3,5,7
and MUL b=3,5,7,9 (the same DIV b=7 matches both L2 and L3).
This selection does not claim the Pareto optimum over all truncation,
compensation, output-width, rounding, or synthesis choices.

The OADM DIV reference is the freshly specialized fixed plane: L0 uses
18/18 truncation and C=59 in Q0.7; L1-L3 use 16/16 with their unchanged tables.
The MUL reference is the balanced fixed implementation with residual drops
16,14,12,10 and its existing midpoint-sum compensation.

There is no mathematical requirement for the OADM plane to outperform this
baseline. Before truncation, the multiplication plane omits r_x*r_y from the
exact product. Direct multiplication of reconstructed inputs retains their
entire product and introduces a different input-quantization error. A matching
result therefore challenges a claimed advantage against simple baselines; it
does not by itself demonstrate an RTL error. For DIV, an exact short quotient
can exchange additional delay for a smaller area and lower approximation error.

On the boundary grid, compensated MUL b=7 and b=9 have higher average MRED and
RMSE than their OADM L2/L3 matches, despite lower observed maximum relative
errors. Their uniform-random advantage is distribution-dependent. A fixed
half-step correction can overestimate inputs whose discarded bits are zero.

`run_check.sh` verifies the selected candidate integer models AND all eight
OADM models against actual RTL with 21,129 vectors per DUT. These include
random and boundary significands with both signs and safe normal exponents.
`run_check.sh gate` additionally compares all seven new netlists to RTL.

## Existing PACE Comparisons

The local `PACE.pdf` is the journal version (ACM TODAES 30(2), January 2025).
Section 6.1 / Figure 8 compares truncated PACE against a Synopsys DesignWare
exact FP32 divider with mantissa truncation. The listed removed-bit counts
are 0,4,8,12,14,15,16,17,18. This is the directly relevant baseline family.
The text does not describe the input half-step compensation used here.
Section 5.3 additionally truncates PACE's internal x-y term.

Section 6.2 separately compares TruncApp (DATE 2017, reference 29). TruncApp
uses an approximate reciprocal followed by multiplication (Section 2,
Equation 4); it is not just an exact divider fed shortened operands.

Our TruncApp reproduction HAS been simulated and synthesized:

- RTL: `../worktrees/truncapp-repro/rtl/truncapp/truncapp_fp32_paceio.v`
  relative to the research root, instantiating `top #(.width(24), .t(24))`.
- Current PPA: `ppa_results/priorwork_hier_compile_10ns.csv` gives
  4581.359992 um2, 3.13271 ns, 0.2613620 mW.
- Current gate evidence: `qsim_rtl/hier_compile_gate/logs/truncapp.log`,
  `PRIOR_HIER_GATE_MITER PASS: 10000 vectors`.
- Historical accuracy record: `ppa_results/priorwork_comparison_10ns.csv`,
  10,000 vectors, MRED 0.119617, RMSE 0.162391. Its PPA columns belong to
  the older flatten campaign and must not be used for current comparisons.
  The older worktree transcript separately records a 1,000-vector run with
  MRED 0.121953, RMSE 0.165129. Neither accuracy set is our new common set.

The t=24 configuration is not a sweep of short input widths. No corresponding
completed truncated-exact-plus-half-step campaign was found in the inspected
current PPA tables and synthesis source lists; this directory supplies it.

## Reproduction

Run from the research root, using the installed EDA environment:

```sh
.venv/bin/python experiments/input_trunc_bias/sweep.py
.venv/bin/python experiments/input_trunc_bias/build_checks.py
bash experiments/input_trunc_bias/run_check.sh
bash experiments/input_trunc_bias/run_ppa.sh
bash experiments/input_trunc_bias/run_check.sh gate
.venv/bin/python experiments/input_trunc_bias/collect.py
```

The collector requires successful RTL/gate logs and DC/PT reports. It writes
`results/ppa_accuracy.csv`, `results/comparison.csv`, an area/accuracy plot,
and a source/netlist SHA256 manifest. `results/accuracy.csv` contains both
random and boundary metrics, including signed mean error, p99 relative error,
and observed maximum relative error. Official PPA tables are unaffected.
