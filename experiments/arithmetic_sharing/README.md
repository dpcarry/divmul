# Arithmetic Sharing: Matched-Shell B/C Control

This isolated experiment does not modify the production shared RTL or existing
canonical result tables. It measures fixed L0-L3 selectable DIV/MUL hardware.
There is no runtime level port. One operation is selected at a time.

## A, B, C

- A: sum of independently synthesized standalone specialized DIV and balanced
  MUL, each with its own normal-finite FP32 shell. Reuse and verify current raw
  reports; these are not two newly synthesized cores behind a common mux.
- B: new `unshared.v`. Instantiate the existing specialized DIV plane and
  balanced MUL plane independently. Keep the DIV coefficient stage. Select
  the unnormalized result, then use the same normalization and FP32 shell
  source as C. Both independent cores receive the same input mantissas.
- C: unchanged `rtl/root_opt/oadm_fixed_divmul_root_opt.v`, freshly synthesized
  beside B using the same source list and constraints.

`prepare.py` derives B by mechanically replacing only C's shared arithmetic
region and changing the MUL result selection. `shell_changes.diff` exposes
every change. The midpoint/residual arithmetic is not reimplemented in B:
it instantiates `oadm_fixed_div_specialized_plane` and
`oadm_fixed_mul_plane_root_opt`. Their original parameters, truncation and
compensation are preserved. The original production files are SHA256 checked.

B has no dont_touch or artificial optimization barriers. Both B and C use
ordinary hierarchy-preserving compile and area optimization. Raw netlist and
hierarchical-area checks must confirm that B retains independent `div_plane`
and `mul_plane` instances and only one common `fp_wrapper`. L0 constant
multiplies may become shift/add logic: counting '*' operators is not a
post-synthesis resource audit.

## Interpretation

The primary quantity is `(area_B-area_C)/area_B`, the net benefit of the shared
arithmetic organization after paying its mode-dependent precision adaptation
and selection cost. This is not an attribution to the two multipliers alone.
Common normalization source is identical, but downstream mapped logic may
simplify differently with the different arithmetic organizations.

The A-to-B difference includes peripheral consolidation AND the additional
mode selection/control needed for one selectable unit; it is not a pure
wrapper-area subtraction. A can execute two operations concurrently, unlike
B/C, so A is only the historical area-sum reference, not matched throughput.

Power is the same vectorless PT policy as the established campaign. Neither
B nor C gains newly added operand isolation in this experiment. Power values
are structural estimates, not matched-workload energy savings. Workload-level
comparisons should additionally evaluate realistic operation mixes and fair
isolation of inactive B cores. This run does not claim such measurements.

## Verification and Reproduction

All PPA includes normal-finite FP32 sign/exponent/packing logic, not only a
mantissa core. Special values, subnormals, overflow/underflow and IEEE rounding
are outside this boundary. Test exponents keep outputs normal in both modes.

100000 uniform normalized input pairs, 2304 directed boundary pairs and 2000
signed/safe-exponent pairs, seed 20260905. Every pair is exercised in both
operation modes at every level. B, C and current standalone reference results
must match bitwise. `measure.py` also checks an independent integer model using
actual midpoint subtraction instead of residual MSB recoding. All datasets
remain separate for accuracy statistics.

Gate checks cover 1000 uniform plus every boundary/signed pair in both modes:
10608 checks per design. Combinational functional gate simulation is separate
from the DC/PT min/max timing checks; it is not SDF timing simulation.

PPA: TSMC65 typical CCS, 10 ns virtual clock, no pipeline, ordinary compile,
no flatten/compile_ultra, set_max_area 0, optimize_netlist -area, INVD0 input
drive, 20 ps I/O delay, 0.004 output load, vectorless PT power. Both B and C
are rerun; A reports are reused with explicit paths.

From the research directory:

```bash
.venv/bin/python experiments/arithmetic_sharing/prepare.py
bash experiments/arithmetic_sharing/run.sh rtl
.venv/bin/python experiments/arithmetic_sharing/measure.py
bash experiments/arithmetic_sharing/run.sh ppa
bash experiments/arithmetic_sharing/run.sh gate
.venv/bin/python experiments/arithmetic_sharing/collect.py
```
