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

## RTL-Validated OADM Emulator

`src/oadm_emulator.py` mirrors the current pipelined RTL value behavior. It
supports broadcasted FP32 multiplication and division at levels L0-L3, flushes
subnormal inputs, and uses the same Q5.23 truncation and Q0.8 reciprocal LUT as
the hardware. Pipeline latency is omitted from software inference because it
does not affect output values.

Run the Python tests, then compare the emulator bit-for-bit with ModelSim:

```bash
cd research
source .venv/bin/activate
pytest -q fairness/tests
python fairness/src/validate_oadm_rtl.py
```

If ModelSim must be launched separately to obtain its license:

```bash
cd research/fairness/rtl_validation
make run
cd ../..
python fairness/src/validate_oadm_rtl.py --reuse-transcript
```

The regression includes finite random FP32 values, signs, zero, infinity, NaN,
and every implemented level.

## Adult OADM Workflow

Run the complete layer-level search after generating the accurate baseline:

```bash
cd research
source .venv/bin/activate
python fairness/src/adult_oadm_workflow.py \
  --split validation --out-dir fairness/results/oadm_validation_search
python fairness/src/adult_oadm_workflow.py \
  --split test --out-dir fairness/results/oadm_layer_search
python fairness/src/select_adult_assignments.py \
  --validation-csv fairness/results/oadm_validation_search/assignments.csv \
  --test-csv fairness/results/oadm_layer_search/assignments.csv
```

The three Linear layers independently select from `Exact,L0,L1,L2,L3`, giving
125 assignments. The script caches shared activations within each batch and
writes `assignments.csv` and `summary.json`. Assignments are selected using
validation metrics; test metrics are joined only after selection and recorded
in `fairness/summaries/adult_oadm_seed42.json`. Products use the OADM emulator while
accumulations and biases remain FP32. `approximation_strength` is only an
operation-weighted ordering proxy; it must not be reported as measured energy.
ASIC energy must come from matched RTL/APR/VCD/PrimeTime experiments.

A quick smoke test is available without changing the full workflow:

```bash
python fairness/src/adult_oadm_workflow.py \
  --max-test-samples 256 --levels exact,0,3 \
  --out-dir /tmp/adult_oadm_smoke
```

## Dermatology GPU Migration

See `GPU_DERMATOLOGY_WORKFLOW.md` for the local-GPU workflow for Fitzpatrick17k
and ISIC2019. It is intentionally separated from the CPU Adult proof of concept
because convolution needs a memory-bounded GPU implementation, not a direct
materialization of every product tensor.

## Initial Scope

1. Build an accurate Adult Income MLP baseline.
2. Implement vectorized OADM `approx_mul` and `approx_div` functions. (Done)
3. Validate the emulator against the existing scalar model and RTL vectors. (Done)
4. Implement layer-level `ApproxLinear` and uniform-level sweeps. (Done)
5. Profile accuracy and fairness sensitivity per layer and level. (Implemented)
6. Compare accuracy-only and fairness-aware level assignments. (Implemented)

Generated datasets, checkpoints, and result files are intentionally excluded
from Git. Experiment configuration and summary tables should remain tracked.
