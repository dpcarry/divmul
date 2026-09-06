# OADM Paper Outline

This document is the argument and evidence outline for `oadm_divmul.tex`.
It is not a second result database. Numerical values must be refreshed from
the evidence files listed in the final section before the paper is submitted.

## 0. Paper Positioning

### Working title

**OADM: A Runtime-Configurable Shared Approximate Floating-Point Divider and
Multiplier with Precision-Co-Designed Fixed-Level Implementations**

The title should keep both parts of the work visible:

- one hardware organization supports runtime DIV/MUL and L0--L3 selection;
- elaboration-time fixed-level variants expose the best accuracy--PPA points.

Do not imply that the per-level fixed optimizations are all present in the
current runtime RTL. The production runtime point uses one common `10/14`
configuration, while the fixed designs use independently selected precision.

### One-sentence thesis

The OAD divider and OAM multiplier are two signed combinations of the same
midpoint-centered tangent-plane terms; evaluating the selected level directly,
reducing only low-significance internal precision, and compensating the two
operations according to their different error mechanisms produces a small
shared FP32 DIV/MUL datapath.

### Main claims, in priority order

1. **Algebraic unification.** The DIV and MUL local planes share partition
   indices, dyadic midpoints, the midpoint product, and two
   residual--midpoint products. They differ mainly in one add/subtract sign and
   the divider-only reciprocal-square scaling stage.
2. **Direct selected-plane implementation.** Instead of retaining L0 and all
   incremental correction rows through level `n`, OADM decodes the requested
   cell and evaluates its final plane once. Before truncation, this is an exact
   reorganization of the same tangent-plane approximation.
3. **Centered-residual hardware optimization.** Midpoint centering bounds the
   dynamic operands, and dyadic cell geometry turns residual formation into
   exact bit recoding rather than general subtraction.
4. **Operation-aware internal precision reduction.** DIV and MUL can discard
   different numbers of residual LSBs. DIV can additionally truncate the
   complete `w_n` operand before reciprocal scaling; MUL has no corresponding
   stage.
5. **Different, explicitly disclosed compensation mechanisms.** Fixed MUL
   uses a midpoint-dependent half-step compensation term after residual LSB
   truncation. Fixed DIV has no additive truncation bias; its stored
   reciprocal-square coefficients are calibrated offline against the complete
   truncated FP32 datapath.
6. **Measured arithmetic sharing.** The integrated fixed-level hardware shares
   one pair of residual--midpoint multipliers and the surrounding plane
   datapath while preserving each selected standalone DIV and balanced MUL
   result bit for bit.
7. **Fair local comparison.** Current PPA uses one TSMC65, 10 ns, no-pipeline,
   hierarchy-preserving ordinary-`compile` flow and one normal-finite FP32
   wrapper. DIV-only, MUL-only, and selectable DIV+MUL comparisons remain
   separate.

## 1. Abstract

Write the abstract in five moves:

1. **Problem.** Existing approximate FP multipliers and dividers are usually
   implemented as separate units even when their mantissa approximations have
   related piecewise-planar structure.
2. **Observation.** The OAD divider tangent plane and OAM multiplier tangent
   plane can be represented by the same midpoint and centered-residual terms.
3. **Method.** OADM directly evaluates the requested plane, applies exact
   residual bit recoding, and co-designs internal precision with
   operation-specific error compensation.
4. **Hardware.** Report both the live runtime L0--L3 DIV/MUL unit and the
   independently optimized fixed-level integrated units. State clearly that
   these are different hardware points.
5. **Results.** Lead with the fixed L3 versus exact selectable DIV+MUL result:
   88.9% area, 62.6% delay, and 94.6% vectorless-power reductions. Then state
   the 21.61--26.80% area saving from arithmetic sharing and the bounded
   DIV-only/MUL-only prior-work comparisons.

Avoid claiming full IEEE-754 compliance. The evaluated scope is normal finite
FP32 input data under the common wrapper.

## 2. Introduction

### 2.1 Motivation

- DIV is costly, but simply putting separate approximate DIV and MUL units
  behind a mux wastes their common arithmetic structure.
- Runtime approximation levels are useful when workloads change their error
  tolerance, but runtime flexibility has a real area cost compared with
  elaboration-time specialization.
- A useful unified design must therefore answer three questions: what is
  mathematically shareable, what is physically shared, and how much accuracy
  remains after the hardware widths are reduced.

### 2.2 Gap in prior work

- OAM supplies a multi-level approximate multiplier based on cumulative
  correction increments.
- OAD supplies a related approximate divider, but the connection between the
  two plane equations has not been developed into a precision-co-designed,
  measured shared DIV/MUL datapath.
- Prior PPA numbers cannot be compared fairly when wrappers, FP32 scope,
  synthesis flattening, timing constraints, or operator scope differ.

### 2.3 Contributions

Use a compact contribution list derived from the seven claims in Section 0.
In particular, do not use the internal project name `root_opt`. In the paper,
call it **operation-aware internal precision reduction and compensation** or
**precision-co-designed selected-plane implementation**.

## 3. Related Work

### 3.1 OAM multiplier

Present both the mathematics and the released hardware organization:

- OAM approximates `xy` with midpoint tangent planes.
- Its circuit form writes the level-`n` result as
  `z_hat_n = sum_{i=0}^n Delta z_i`.
- For `i>0`, each `Delta z_i` consists of sign-controlled, power-of-two-shifted
  input terms plus a precomputed partition constant. Equation 19 looks simple
  because midpoint-dependent algebra has already been absorbed into that
  constant.
- The AM-Lib RTL implements the later circuit-oriented partial-row/CSA form,
  algebraically derived from the same increments. It does not contain a
  general multiplier for each correction.
- The cumulative form is valuable for modular refinement, runtime depth
  selection, and gating. A fixed level still retains the arithmetic rows from
  L0 through that level, which creates an opportunity for a direct fixed-plane
  implementation.

Do not report the local legacy `correction_chain` RTL as OAM. The external OAM
reference is the unmodified AM-Lib mantissa core behind the common FP32 wrapper.

### 3.2 OAD and approximate division

- Position OAD as a piecewise tangent-plane divider, distinct from iterative
  reciprocal refinement and integer approximate division.
- Discuss PACE, QIAD, FaNZeD, TruncApp, and LEAD according to their available
  local RTL and evaluated interface.
- PACE is strictly a DIV-only comparator. Never compare its area directly with
  the complete selectable OADM DIV+MUL block.

### 3.3 Configurable DIV/MUL hardware

- Discuss SIMDive as an integer variable-precision architecture.
- Our local point must be called **SIMDive-derived SISD32 FP32 wrapper** or
  **SIMDive-derived integer-core FP32 wrapper**, not native FP32 SIMDive.
- Its DIV path uses a local Q8 quotient adapter. Treat it as runtime-hardware
  context, not as the primary strict FP32 accuracy comparison.

## 4. Mathematical Derivation

### 4.1 Normalized FP32 decomposition

- Separate sign, exponent, and normalized mantissa handling.
- State the current scope: finite normal inputs and the behavior of the common
  unpack/normalize/pack wrapper.
- Derive sign and exponent paths for multiplication and division before
  focusing on mantissa arithmetic.

### 4.2 OAM product plane

For a level-`n` cell centered at `(k_x^n,k_y^n)`, define

```text
r_x^n = x - k_x^n
r_y^n = y - k_y^n
```

The first-order product plane is

```text
m_hat_n = k_x^n k_y^n + k_y^n r_x^n + k_x^n r_y^n.
```

Relate it to the exact expansion

```text
xy = k_x^n k_y^n + k_y^n r_x^n + k_x^n r_y^n + r_x^n r_y^n.
```

This makes the intrinsic approximation explicit: OADM hardware does not
compute `r_x r_y`; the product-plane error is the omitted second-order term.
At cell half-width `h`, its magnitude is bounded by `h^2`.

### 4.3 Direct OAD divider plane

Derive the first-order Taylor/tangent plane of `f(x,y)=x/y` at the cell
midpoint:

```text
d_hat_n = (k_x^n k_y^n + k_y^n r_x^n - k_x^n r_y^n) / (k_y^n)^2
        = w_n / (k_y^n)^2.
```

Stress the sign: the centered OAD numerator is
`kk + k_y r_x - k_x r_y`. The first term `kk` is positive.

### 4.4 OAM-based equivalent derivation

- Approximate `1/y` by its tangent at `k_y`.
- Substitute the first-order OAM approximation of `xy`.
- Discard second-order products consistently.
- Show that the result is the same local divider plane as the direct
  first-order Taylor expansion of `x/y`.

Recommended interpretation sentence:

> The direct derivation is the first-order Taylor plane of the quotient
> surface, whereas the OAM-based derivation first linearizes the reciprocal and
> product components. Their equality after retaining first-order terms exposes
> the common midpoint-partition structure that enables OADM sharing.

Do not vaguely call this a “subtle relation.” State exactly what is equivalent
and at what approximation order.

### 4.5 Multi-level cells and exact midpoint representation

- At level `n`, each axis is partitioned into `2^n` intervals.
- Midpoints are dyadic and exactly represented as `K/16` for L0--L3.
- The midpoint used to form `w_n` is therefore not approximated and is not
  modified by residual or `w_n` LSB truncation.
- The reciprocal-square `1/(k_y^n)^2` is different: it generally has a
  non-terminating binary expansion and is stored as a finite fixed-point
  coefficient.

Use the professional wording **Q0.7/Q0.8 fixed-point encodings of the
reciprocal-square coefficients**, not “quantized versions of the midpoints.”

## 5. Circuit Implementation and Optimization

This should be the technical center of the paper. Organize it as a sequence of
exact transformations followed by explicitly identified approximations.

### 5.1 Direct selected-level plane versus cumulative corrections

- OAM starts from L0 and accumulates all correction increments through the
  requested level.
- OADM decodes the requested cell midpoint and evaluates the final selected
  tangent plane once.
- Before internal LSB truncation, both organizations evaluate the same
  level-`n` approximation. This must be supported by the arithmetic-model/RTL
  miter, not asserted only from visual similarity.
- This explains why a fixed OADM plane can be smaller than the AM-Lib fixed
  OAM implementation even though AM-Lib uses shifts/adders: OADM avoids the
  cumulative partial-row structure and specializes widths for the selected
  level.
- Do not claim that “exact multipliers are inherently cheaper than shift-add.”
  OADM uses ordinary synthesizable multiplication on already narrowed
  operands; synthesis maps the resulting small constant/dynamic products to
  standard cells.

### 5.2 Centered residuals

- Rewrite both planes around `(k_x,k_y)` to expose the common terms
  `C=k_xk_y`, `T_x=k_y r_x`, and `T_y=k_x r_y`.
- DIV uses `C+T_x-T_y`; MUL uses `C+T_x+T_y`.
- The local residual range shrinks with level, so higher levels can retain
  fewer independent bits for the same absolute internal error.
- Centering itself is algebraically exact and introduces no error.

### 5.3 Exact residual bit recoding

- Because the midpoint is the center of a binary interval, subtracting it from
  a mantissa is offset-binary to two's-complement conversion.
- Invert the local residual field MSB and sign-extend the remaining bits.
- No arithmetic subtractor is required.
- Give the natural independent residual widths: 23, 22, 21, and 20 bits for
  L0--L3.

### 5.4 Residual LSB truncation

Define truncation rigorously:

```text
T_D(v) = floor(v / 2^D) 2^D.
```

- It removes low-significance fixed-point bits while preserving the original
  binary-point alignment with zero wiring.
- For negative two's-complement residuals, slicing corresponds to floor, not
  truncation toward zero.
- It narrows the operands of the two residual--midpoint multipliers.
- Use **residual LSB truncation** or **residual-precision reduction**. Avoid the
  ambiguous shorthand “drop” and avoid calling every optimization “pruning.”

### 5.5 Divider-only `w_n` LSB truncation

- First combine the complete divider plane
  `w_n = kk + k_y r_x - k_x r_y`.
- Then remove `D_w` low bits only at the operand entering the
  reciprocal-coefficient multiplier.
- This does not truncate a midpoint, a LUT coefficient, or the final product.
- MUL has no reciprocal stage and therefore no `w_n` truncation boundary.
- Use **`w_n` LSB truncation** or **reciprocal-scaling operand precision
  reduction**, never “scale drop” in paper prose.

### 5.6 Fixed DIV coefficient calibration: no additive bias

This subsection must distinguish DIV compensation from MUL compensation.

- The fixed DIV plane contains no separately added truncation-bias term.
- For coefficient width `B`, the LUT stores integer `C_{n,q}` representing
  `C_{n,q}/2^B`; division by `2^B` is binary-point placement, not a hardware
  divider.
- The nearest fixed-point encoding of `1/(k_y^n)^2` minimizes coefficient-only
  error but need not minimize final packed FP32 quotient error after plane
  approximation, residual truncation, `w_n` truncation, normalization, and
  packing.
- Coefficients are therefore selected offline for the complete datapath and
  hard-coded by denominator interval.
- This calibration can cancel correlated mean error, but it is not an
  input-dependent correction and not a claim that the chosen code is the
  mathematically closest reciprocal.

Use L0 as the explanatory example:

- exact midpoint reciprocal-square: `1/(3/2)^2 = 4/9`;
- nearest Q0.7 code: `57/128`;
- selected end-to-end RMSE code for `D_r=D_w=18`: `59/128`;
- on the 500-by-500 grid, RMSE is 0.07119 at `C=57` and 0.05663 at `C=59`;
- `C=58` minimizes MAE/MRED, while `C=59` minimizes MSE/RMSE.

The coefficient-sweep figure should show only the informative neighborhood
`C=52...65`, while the caption or text notes that the complete code space was
checked. Do not plot `1...127` merely to prove exhaustiveness.

### 5.7 Fixed MUL midpoint-dependent half-step compensation

Residual floor truncation has a different effect in MUL because both variable
terms are added. If `D_m` residual LSBs are removed, each residual loses an
average of approximately half a quantization step under a uniform within-cell
model. The lost mean product-plane value is compensated by

```text
B_m = (K_x^n + K_y^n) 2^(D_m-5),    K=16k.
```

Equivalently in real-value notation,

```text
B_m = (k_x^n + k_y^n) q_n / 2,
q_n = 2^(D_m-23).
```

Explain the hardware plainly:

- `q_n` is a power-of-two residual quantization step fixed by `D_m`;
- no runtime division and no general multiplication by `q_n` are introduced;
- `K_x+K_y` is already available, and the compensation is a constant shift;
- the value changes with the selected midpoint cell and level, but not with
  the residual tail bits of each individual input;
- the compensation is added once to the selected fixed MUL plane, not once per
  OAM correction level.

This is a statistical mean-error correction. It does not reconstruct discarded
bits, guarantee improvement for every input, or eliminate the intrinsic
`r_x r_y` tangent-plane error. Its cost is included in synthesis, so it is a
legitimate disclosed design technique rather than an accuracy-only adjustment.

The paper should include an ablation with three logical points when the data
are ready: untruncated plane, LSB truncation without compensation, and LSB
truncation with half-step compensation. Report mean error as well as
MAE/MRED/RMSE and worst-case error.

### 5.8 Selected fixed-level precision

Divider settings:

| Level | Residual LSBs truncated | `w_n` LSBs truncated | Coefficient encoding |
|---|---:|---:|---|
| L0 | 18 | 18 | Q0.7 `{59}` |
| L1 | 16 | 16 | Q0.7 `{83,42}` |
| L2 | 16 | 16 | Q0.8 `{203,136,97,73}` |
| L3 | 16 | 16 | Q0.8 `{227,182,149,124,105,90,78,68}` |

Balanced MUL residual settings are `16,14,12,10` for L0--L3. Also retain the
accuracy-oriented `12,10,8,6` and area-oriented `18,16,14,12` sets as design
space points, but use one named set consistently in each comparison.

Explain why aggressive truncation preserves average accuracy:

- the removed bits have low positional weight;
- the intrinsic tangent-plane error dominates at low levels;
- residual ranges shrink as the level increases;
- MUL half-step compensation removes much of the mean floor-truncation shift;
- DIV coefficient calibration optimizes the complete error rather than the
  coefficient in isolation.

Also report the limitation: sampled worst-case error does increase. In the
two-million-vector balanced-MUL audit, RMSE rises only about 0.17% relative to
the untruncated current plane, but maximum absolute error rises about
3.6--4.3% depending on level. L0 maximum relative error remains about 24.9%,
mostly because of the intrinsic coarse tangent plane rather than the newly
removed LSBs.

### 5.9 Fixed integrated sharing with asymmetric precision

- Instantiate one physical pair of residual--midpoint multipliers.
- Size that pair for the wider balanced-MUL retained residual.
- In DIV mode, zero the additional low positions required by the more
  aggressive DIV residual truncation.
- Select `-T_y` for DIV and `+T_y+B_m` for MUL.
- Share midpoint/index generation, residual formation, both products,
  midpoint product, plane adder, normalizer, FP32 wrapper, and output path.
- Keep the reciprocal coefficient LUT and coefficient multiplier DIV-only.
- State that sharing cannot make the integrated unit as small as the larger
  standalone core: mux/control logic and the wider MUL-sized product path
  introduce overhead and critical-path delay.

The integrated RTL must be described as bit-exact to the selected standalone
fixed DIV and balanced MUL outputs, supported by both RTL and final-netlist
miters.

### 5.10 Runtime implementation

- Both `level` and `divide_mode` remain live inputs.
- One selected-plane datapath computes L0--L3 and both operations without
  instantiating four fixed cores.
- The current runtime implementation uses one conservative residual truncation
  (`D_r=10`) and one divider `w_n` truncation (`D_w=14`) with Q0.7
  coefficients across levels.
- The current runtime RTL does **not** contain the fixed-MUL half-step
  compensation used by the balanced fixed designs. Do not silently transfer
  fixed-level accuracy claims to runtime mode.
- The runtime-drop sweep shows why the runtime unit is not simply the smallest
  fixed design with a selector: shared physical width is governed by the least
  aggressive active precision, and L3 MUL becomes the first accuracy limiter.
- Of the tested common `(D_r,D_w)` settings, only `10/14` passes the 10% bound
  on MAE, MRED, and RMSE at every mode and level. The `12/14` point saves 7.26%
  area but fails the bound; `14/16` becomes smaller than fixed L3 only with a
  2.62x worst-RMSE ratio.

Present this sweep as a negative but useful result, preferably in an appendix
or a short design-space subsection. It motivates future mode- and
level-dependent runtime precision and compensation.

## 6. Experimental Methodology

### 6.1 Fair PPA boundary

Every paper-facing local PPA comparison must use:

- TSMC65 typical CCS standard-cell library;
- 10 ns virtual clock, combinational design, no pipeline;
- zero uncertainty and 20 ps input/output delay;
- `INVD0` input driver and 0.004 output load;
- hierarchy-preserving ordinary Design Compiler `compile`;
- `set_max_area 0` and post-map `optimize_netlist -area`;
- no explicit flattening, no `ungroup`, and no `compile_ultra`;
- PrimeTime probability 0.5 and input toggle rate 0.1 per 10 ns;
- setup, minimum-delay, sequential-cell, hierarchy, and black-box checks.

All valid current points pass setup and minimum-delay checks. Do not mix these
PPA values with the older explicit-flatten or 1.5 ns pipelined campaigns.

### 6.2 Common FP32 wrapper and accuracy protocol

- Use `fp32_normal_finite_wrapper` for OADM DIV, OADM MUL, PACE, AM-Lib OAM,
  QIAD, FaNZeD, TruncApp, and LEAD where the local reproduction supports it.
- Structural PPA comparability requires the common synthesis boundary.
- Accuracy comparability additionally requires the same input set, operand
  interpretation, result packing, and metric definitions.
- Report MAE, MRED, RMSE, signed mean error, maximum absolute error, and maximum
  relative error where available.
- Keep grid-based architecture search separate from independent random-vector
  validation and gate-level equivalence.

### 6.3 Validation ladder

For every selected implementation, document:

1. independent arithmetic model versus RTL;
2. standalone versus integrated-mode RTL equivalence where applicable;
3. post-synthesis gate miter;
4. DC netlist completeness and absence of black boxes;
5. PrimeTime setup and minimum-delay status.

## 7. Evaluation

### 7.1 Accuracy versus level

- Plot DIV and MUL MAE/MRED/RMSE from L0 through L3.
- Show that increasing level reduces intrinsic tangent-plane error.
- Distinguish fixed optimized points from the runtime common-precision point.
- Add a worst-case table or appendix so average metrics do not hide the L0
  maximum relative error.

### 7.2 Internal precision and compensation ablation

Required logical ablations:

- centered plane before LSB truncation;
- residual LSB truncation alone;
- MUL truncation plus midpoint half-step compensation;
- DIV residual plus `w_n` truncation with nearest reciprocal code;
- DIV complete-datapath coefficient calibration.

The L0 coefficient sweep is the clearest DIV calibration figure. A compact
MUL mean-error/bias ablation should be added if it can be regenerated under the
current wrapper.

### 7.3 Fixed OADM versus exact arithmetic

Current hierarchy-preserving PPA anchors:

| Design | Area (um^2) | Delay (ns) | Power (mW) |
|---|---:|---:|---:|
| Exact MUL | 4316.76 | 3.79170 | 0.239667 |
| Exact DIV | 19604.52 | 9.75016 | 1.895090 |
| Exact selectable DIV+MUL | 24025.68 | 9.85585 | 2.084210 |
| OADM fixed integrated L0 | 957.96 | 2.49427 | 0.038220 |
| OADM fixed integrated L1 | 1696.68 | 2.89371 | 0.073253 |
| OADM fixed integrated L2 | 2106.72 | 3.31142 | 0.091174 |
| OADM fixed integrated L3 | 2663.64 | 3.68527 | 0.111693 |
| OADM runtime L0--L3 DIV+MUL | 3174.12 | 3.96574 | 0.128427 |

Use exact selectable DIV+MUL only for the complete selectable OADM comparison.
Use exact DIV and exact MUL for mode-specialized comparisons.

### 7.4 Sharing ablation

Compare current root-optimized DIV-only plus balanced MUL-only with the exact
same arithmetic integrated into the fixed selectable unit:

| Level | Separate area | Shared area | Area saved | Power saved | Delay overhead |
|---|---:|---:|---:|---:|---:|
| L0 | 1280.88 | 957.96 | 25.21% | 31.58% | 24.12% |
| L1 | 2164.32 | 1696.68 | 21.61% | 31.45% | 11.29% |
| L2 | 2877.84 | 2106.72 | 26.80% | 35.63% | 25.28% |
| L3 | 3561.84 | 2663.64 | 25.22% | 32.96% | 23.84% |

Interpret absolute saved area as well as percentage: 322.92, 467.64, 771.12,
and 898.20 um^2 from L0 to L3. Explain delay overhead as the cost of mode
selection and the shared wider arithmetic path. Do not reuse the deleted
pre-truncation sharing table.

### 7.5 Strict DIV-only comparison with PACE

Pair OADM L0--L3 with PACE L1--L4 under the common wrapper and current mapping:

| Pair | Area reduction | Delay change | Power reduction | Accuracy reading |
|---|---:|---:|---:|---|
| OADM L0 / PACE L1 | 22.80% | 9.25% faster | 22.95% | OADM is less accurate |
| OADM L1 / PACE L2 | 21.65% | 10.10% slower | 13.14% | OADM has lower MRED/RMSE |
| OADM L2 / PACE L3 | 31.33% | 6.29% faster | 35.65% | OADM has lower MRED/RMSE |
| OADM L3 / PACE L4 | 39.19% | 0.37% faster | 51.32% | OADM has lower MRED/RMSE |

The text must acknowledge the two exceptions to any blanket “better” claim:
OADM L0 is less accurate than paired PACE L1, and OADM L1 is slower than PACE
L2. PACE remains DIV-only throughout this comparison.

### 7.6 MUL-only comparison with author OAM RTL

Compare the unmodified AM-Lib OAM cores with balanced fixed OADM MUL under the
same wrapper and mapping flow:

| Level | OADM area reduction | OADM delay reduction | OADM power reduction |
|---|---:|---:|---:|
| L0 | 52.36% | 38.57% | 57.34% |
| L1 | 46.71% | 27.35% | 56.05% |
| L2 | 49.26% | 21.77% | 60.89% |
| L3 | 49.35% | 13.93% | 59.92% |

Accuracy is nearly unchanged in average metrics but not bit-exact. On the
two-million-vector audit, balanced OADM raises RMSE by about 0.17% and sampled
maximum absolute error by roughly 3.6--4.3%. Attribute the PPA advantage to the
combination of direct selected-plane organization and narrowed operands, not
to an unsupported claim that generic multiplication is cheaper than OAM's
shift/add implementation.

### 7.7 Other DIV prior work

Use the current hierarchy-preserving PPA values with the existing
normal-finite-wrapper accuracy values:

| Design | MRED | Area (um^2) | Delay (ns) | Power (mW) |
|---|---:|---:|---:|---:|
| FaNZeD | 0.031130 | 2775.96 | 4.96810 | 0.088798 |
| LEAD combinational unroll | 0.020993 | 6666.12 | 5.67436 | 0.606302 |
| QIAD | 0.005880 | 12097.80 | 8.07414 | 0.952010 |
| TruncApp | 0.119617 | 4581.36 | 3.13271 | 0.261362 |

- Describe these as local RTL reproductions under a common boundary, not as
  transplanted published PPA.
- The retained accuracy campaigns do not all have the same sample count
  (`QIAD` uses 100,000 cases while the other listed rows use 10,000). Until a
  single common-vector rerun is available, use these metrics for design-space
  context rather than paired percentage-improvement claims.
- Explain that LEAD's two phases were combinationally unrolled and verified
  against the supplied behavior.
- A PPA--accuracy scatter is more informative than a ranking table because the
  designs occupy different accuracy regions.

### 7.8 Runtime context with SIMDive-derived hardware

- Valid local specialized point: 3729.24 um^2, 7.64970 ns, 0.109912 mW.
- OADM runtime uses 14.9% less area and 48.2% less delay, but about 16.9% more
  vectorless power.
- Same-vector SIMDive-derived accuracy is MRED 0.008274 for DIV and 0.008792
  for MUL. These lie between different OADM runtime levels.
- The complete as-received all-mode SIMDive RTL infers 23 latches under the
  ordinary hierarchy-preserving flow and is not a valid strict combinational
  point. The valid result source-specializes only the fixed 32-bit lane mode.
- Repeat that the Q8 DIV adapter makes this contextual rather than a native
  FP32 SIMDive reproduction.

### 7.9 Runtime flexibility cost

Compare runtime OADM with fixed L3 without presenting either as universally
better:

- runtime contains both modes and all four levels with live selectors;
- fixed L3 contains both modes but only one elaboration-time level;
- runtime costs 3174.12 um^2 versus 2663.64 um^2 for fixed L3;
- the area difference is the price of live level selection and common
  conservative precision, not evidence that sharing failed.

## 8. Discussion

### 8.1 Why the design can remove many bits

Tie the empirical result back to the mathematics:

- cell centering reduces dynamic range;
- higher-level cells reduce it further;
- only low-significance information is removed;
- intrinsic plane error often dominates those discarded terms;
- operation-specific compensation controls systematic mean shifts.

Be equally explicit about what is not guaranteed: low average error does not
imply a small global maximum error, monotonic error for every input, or
application-level quality.

### 8.2 Fixed specialization versus runtime configurability

- OAM's cumulative structure naturally supports progressive refinement.
- OADM's direct fixed plane enables stronger per-level width specialization.
- The runtime OADM organization selects a plane directly, but common physical
  width limits how much of the fixed-level optimization transfers for free.
- Present this as an architectural tradeoff, not as one design invalidating
  the other.

### 8.3 Fairness and reproducibility

- Explain why wrapper unification matters as much as the mantissa core.
- State the normal-finite scope and vectorless-power limitation.
- Separate same-vector accuracy comparisons from merely structural PPA
  comparisons.
- Include RTL/model/gate evidence and report invalid experiments rather than
  silently omitting them.

### 8.4 Limitations and next experiments

- Special values, subnormals, overflow/underflow edge behavior, and full
  IEEE-754 rounding are outside the current common-wrapper scope.
- Add application-level DIV/MUL workloads.
- Replace vectorless activity with VCD/SAIF workload power.
- Add placed-and-routed extracted PPA at common corners.
- Explore mode- and level-dependent runtime residual precision and runtime MUL
  compensation.
- Strengthen worst-case analysis beyond random sampling, especially for L0.

## 9. Conclusion

Return to three bounded conclusions:

1. OAD DIV and OAM MUL share a real algebraic and physical plane datapath.
2. Direct plane selection plus centered-residual precision co-design produces
   substantial fixed-level PPA reductions without materially changing average
   MUL accuracy and improves several matched DIV/PACE points.
3. Runtime configurability is implemented and measured, but it has a visible
   cost relative to fixed specialization; the paper reports the two scopes
   separately.

Do not conclude that OADM dominates every prior design on every metric.

## 10. Figure and Table Plan

### Main figures

1. **Shared selected-level OADM architecture.** Use the newly drawn
   level-parallel/selected-plane figure, not the old generic sign/exponent box
   diagram. Show L0--L3 plane alternatives, shared inputs, mode-dependent sign,
   DIV-only reciprocal scaling, and final normalization.
2. **Centered-residual datapath and truncation boundaries.** Mark residual LSB
   truncation before `k*r`, `w_n` LSB truncation only before DIV reciprocal
   scaling, and MUL half-step compensation at the plane adder.
3. **L0 reciprocal coefficient sweep.** Plot `C=52...65`, mark nearest code 57
   and RMSE optimum 59.
4. **Accuracy versus PPA.** Separate DIV-only and MUL-only panels or marker
   families so operator scope is never ambiguous.
5. **Sharing ablation.** Separate-sum versus integrated area for L0--L3, with
   saved area annotated.

### Main tables

1. Fixed DIV/MUL precision settings and coefficient encodings.
2. Fixed and runtime OADM accuracy by level, including maximum errors where
   available.
3. Fixed integrated and runtime PPA versus exact references.
4. Current sharing ablation.
5. Strict OADM DIV-only versus PACE.
6. Balanced OADM MUL-only versus AM-Lib OAM.

### Appendix material

- complete runtime residual/`w_n` truncation sweep;
- accuracy-oriented and area-oriented MUL variants;
- prior-work reproduction details and wrapper adapters;
- model/RTL/gate-miter vector counts;
- invalid as-received SIMDive latch audit;
- detailed coefficient tables and full L0 coefficient scan.

## 11. Terminology and Claim Rules

Use consistently:

- **residual LSB truncation**, not residual drop;
- **`w_n` LSB truncation** or **reciprocal-scaling operand precision
  reduction**, not scale drop or `w_n` pruning;
- **fixed-point encoding of the reciprocal-square coefficient**, not a
  quantized midpoint;
- **end-to-end coefficient calibration**, not a more accurate approximation of
  `4/9`;
- **midpoint-dependent half-step compensation**, not an unexplained bias;
- **direct selected-plane implementation**, not `root_opt`;
- **fixed-level integrated OADM** versus **runtime-selectable OADM**;
- **SIMDive-derived integer-core FP32 wrapper**, not FP32 SIMDive.

Never claim:

- that fixed DIV contains the MUL additive compensation term;
- that the midpoint itself is approximated or changed from 57 to 59;
- that all fixed per-level precision settings are present in runtime RTL;
- that balanced truncated MUL is bit-exact to AM-Lib OAM;
- that the legacy local correction chain is the authors' OAM RTL;
- that PACE is a DIV+MUL competitor;
- that old explicit-flatten PPA and current hierarchy-preserving PPA belong in
  one comparison table;
- that average accuracy guarantees worst-case or application accuracy.

## 12. Evidence Map

Use these files as the current source hierarchy:

### Current RTL

- `rtl/README.md`
- `rtl/root_opt/oadm_root_opt.v`
- `rtl/root_opt/oadm_fixed_divmul_root_opt.v`
- `rtl/mul_root_opt/oadm_mul_root_opt.v`
- `PACE/common/FP_DIV_WRAPPER_32.v`

### Current hierarchy-preserving PPA

- `ppa_results/hier_compile_master_10ns.csv`
- `ppa_results/exact_baselines_hier_compile_10ns.csv`
- `ppa_results/root_opt_hier_compile_10ns.csv`
- `ppa_results/mul_root_opt_hier_compile_10ns.csv`
- `ppa_results/divmul_sharing_ablation_hier_compile_10ns.csv`
- `ppa_results/div_only_vs_pace_hier_compile_10ns.csv`
- `ppa_results/priorwork_hier_compile_10ns.csv`
- `ppa_results/amlib_oam_vs_oadm_mul_hier_compile_10ns.csv`

### Accuracy and design-space evidence

- `qsim_rtl/root_opt/root_opt_accuracy.csv`
- `qsim_rtl/mul_root_opt/logs_worstcase_2m/mul_root_opt_accuracy.csv`
- `qsim_rtl/simdive_original/simdive_oadm_common_accuracy.csv`
- `qsim_rtl/runtime_drop_sweep/runtime_drop_accuracy.csv`
- `python/results_root_opt/l0_q07_coefficient_sweep.csv`
- `ppa_results/runtime_drop_sweep_10ns.csv`

### Provenance and interpretation

- `ppa_results/README.md`
- `ppa_results/hier_compile_10ns.md`
- `root_opt.md`
- `mul_root_opt.md` (historical experiment record; its explicit-flatten PPA is
  superseded by the hierarchy-preserving CSV)
- `third_party/amlib_oam/PROVENANCE.md`

Before final submission, regenerate every paper table from these files or a
single checked script. Do not manually carry numbers from the obsolete
unsuffixed PPA CSVs.
