# Runtime Separate Truncation

Isolated two-point comparison requested by the user. Production RTL and canonical
CSV files are not modified. Both tops retain runtime `level` and `divide_mode`.

| Configuration | DIV residual drops L0-L3 | MUL residual drops L0-L3 | DIV w_n drops L0-L3 |
|---|---|---|---|
| Original runtime | 10/10/10/10 | 10/10/10/10 | 14/14/14/14 |
| runtime_both | 18/16/16/16 | 16/14/12/10 | 18/16/16/16 |

Both use the original runtime Q0.7 coefficient table and no MUL truncation
compensation. This isolates truncation changes; it does not transplant the
fixed-level coefficient calibration or MUL bias. MUL bypasses the DIV w_n
truncation and reciprocal multiplication. Midpoints remain exact.

The shared residual multipliers retain the common binary scaling and 13-bit
signed input container. Per-mode/per-level truncation zeroes low bits inside that
container. The DIV coefficient multiplier input shrinks from 11 to 9 bits;
L0 additionally zeroes two low bits. There is one shared runtime plane, not four
separate fixed-level instances followed by an output mux.

The initial preparation also generated two intermediate RTL-only controls before
the user narrowed the experiment. They are not synthesized or published. Only
indices 0 and 3 are selected in run.sh, measure.py and collect.py.

## Reproduction

From this directory, using the repository Python environment and licensed tools:

```bash
../../.venv/bin/python prepare.py
bash run.sh rtl
../../.venv/bin/python measure.py
bash run.sh ppa
bash run.sh gate
../../.venv/bin/python collect.py
```

Inputs reuse the seeded arithmetic_sharing campaign, with its path and hash in
sources.json: 100,000 uniform normalized pairs, 2,304 boundary pairs and 2,000
signed safe-exponent pairs. Every pair is checked in all eight level/mode states.
Gate checks use 1,000 uniform pairs plus all boundary and signed-exponent pairs.
Gate checks are functional netlist checks; timing comes separately from PrimeTime.

DC/PT uses the existing common 10 ns flow: ordinary compile, hierarchy preserved,
no compile_ultra, no pipeline, TSMC65 typical CCS, identical I/O constraints and
normal-finite FP32 wrapper. Power is vectorless, not workload-specific energy.

Accuracy is measured after output normalization and FP32 packing against the
exact real operation on the input values (not against rounded FP32 reference).
The independent model uses midpoint subtraction instead of the RTL's bit recoding.
Dataset maxima are sampled maxima, not proven worst-case bounds. The historical
runtime model is preserved even where approximation crosses a normalization
boundary; no exceptional-value/IEEE-compliance claim is made.

See RESULTS.md, ppa.csv and accuracy.csv after collect.py has verified completion.
