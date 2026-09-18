# NLMS application evaluation

This experiment evaluates the current paper configurations of STDM L0-L3 in a 16-tap normalized least-mean-square system-identification task. Every approximate multiplication and division is evaluated by the corresponding combinational RTL. FP32 additions and the exact reference use host IEEE single-precision operations, with each operation explicitly rounded to `float`.

The adaptive update is

```text
w[n+1] = w[n] + mu * e[n] / (epsilon + ||x[n]||^2) * x[n].
```

The default run uses 20 seeds, 5,000 iterations per seed, 16 taps, `mu=0.5`, `epsilon=0.001`, and additive Gaussian noise with standard deviation 0.01. The unknown filter is independently generated and normalized for each seed. Exact and approximate runs use the same filter, input sequence, noise sequence, and zero initialization.

## RTL configurations

- L0: unsigned H recoding, `S=6`
- L1: unsigned H recoding, `S=4`
- L2: current unsigned H-recoded shared implementation
- L3: current unsigned H-recoded shared implementation

The RTL files are snapshots of the implementations used for the current paper tables. `results/sources.sha256` records the exact source hashes used by a run.

## Scope handling

The STDM wrapper is defined for normal finite FP32 operands and normal finite results. An NLMS operation outside that scope is evaluated with exact FP32 arithmetic instead of allowing exponent wraparound. Every such fallback is counted in `per_seed.csv` and `summary.csv`; the rate is also shown in `RESULTS.md`. This makes the application experiment explicit about the current wrapper boundary.

## Run

```bash
./run.sh
```

For a short smoke test:

```bash
ITERATIONS=200 SEEDS=2 TAPS=8 RESULT_DIR=smoke ./run.sh
```

Both `OBJ_DIR` and `RESULT_DIR` may point to scratch storage when the home quota is limited.

Generated results include per-seed metrics, an aggregate summary, the mean learning curve, source hashes, and a PDF plot. Convergence is the first point where the 100-sample moving-average NMSD drops below -20 dB. Steady-state output NMSE and NMSD are evaluated over the final 20% of each run. A seed is marked as diverged if NMSD becomes non-finite or exceeds 60 dB.
