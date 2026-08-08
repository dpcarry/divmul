# Fairness-Aware OADM Experiments

This directory contains the software/model-level research that maps neural
network arithmetic sites to OADM approximation levels. The completed RTL and
EDA workflows remain outside this directory and are treated as the frozen
hardware reference.

## Environment

The project uses an isolated Python 3.11 environment at `research/.venv`.

```bash
cd research
source .venv/bin/activate
export MPLCONFIGDIR="$PWD/fairness/.cache/matplotlib"
python -m pip install -r fairness/requirements.txt
```

Exit the environment with `deactivate`.

## Accurate Adult Baseline

The first experiment trains a deterministic CPU MLP and evaluates fairness
across the `sex` attribute. The sensitive attribute is excluded from model
inputs and is used only for stratification and evaluation.

```bash
cd research
source .venv/bin/activate
python fairness/src/adult_baseline.py \
  --config fairness/configs/adult_mlp.yaml
```

The first run downloads Adult from OpenML into `fairness/data`. Metrics, the
training history, fitted preprocessor, and model state are written under
`fairness/results/accurate_baseline`.

## Reference Baseline

The tracked `summaries/adult_accurate_seed42.json` records the reference CPU
run used as the starting point for approximation experiments. It is a compact
summary, not a replacement for rerunning the deterministic experiment.

## Initial Scope

1. Build an accurate Adult Income MLP baseline.
2. Implement vectorized OADM `approx_mul` and `approx_div` functions.
3. Validate the emulator against the existing scalar model and RTL vectors.
4. Implement layer-level `ApproxLinear` and uniform-level sweeps.
5. Profile accuracy and fairness sensitivity per layer and level.
6. Compare accuracy-only and fairness-aware level assignments.

Generated datasets, checkpoints, and result files are intentionally excluded
from Git. Experiment configuration and summary tables should remain tracked.
