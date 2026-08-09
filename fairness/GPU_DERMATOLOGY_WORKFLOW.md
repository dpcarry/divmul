# GPU Dermatology OADM Workflow

## Purpose

This is the handoff specification for running the fairness-aware OADM study on
a local NVIDIA GPU. The target experiments are:

| Dataset | Backbone | Prediction | Sensitive groups |
|---|---|---|---|
| Fitzpatrick17k | VGG-11 | 114 conditions | light 1-3, dark 4-6 |
| ISIC2019 | ResNet18 | 9 diagnoses | female, male |

These choices reproduce the FairQuantize paper's application setting. The new
method does **not** convert selected weights to powers of two. It keeps trained
FP32 weights and maps Conv2d/Linear arithmetic to OADM levels L0-L3 according
to accuracy and group-fairness sensitivity.

The OADM divider remains available, but these inference graphs do not contain
a compelling variable-denominator division after input preprocessing and
BatchNorm folding. Do not inject artificial division merely to exercise it.

## Sources

- This project: <https://github.com/dpcarry/divmul>
- FairQuantize reference: <https://github.com/guoyb17/FairQuantize>
- Paper: <https://papers.miccai.org/miccai-2024/paper/3697_paper.pdf>
- Fitzpatrick17k: <https://github.com/mattgroh/fitzpatrick17k>
- ISIC2019: <https://challenge.isic-archive.com/landing/2019/>

Pin the exact Git commit of every repository in the experiment manifest. Do
not silently update a dependency midway through a result sweep.

## 1. Create the GPU Environment

Start by recording the machine rather than assuming CUDA compatibility:

```bash
nvidia-smi
python3 --version
git rev-parse HEAD
```

Create a fresh environment. Install a CUDA-enabled PyTorch wheel selected from
the official PyTorch installer for the CUDA driver on that machine; do not use
the CPU-only lock file from the Adult environment.

```bash
python3 -m venv .venv-gpu
source .venv-gpu/bin/activate
python -m pip install --upgrade pip
# Install the matching CUDA torch/torchvision wheels here.
python -m pip install numpy pandas scikit-learn scikit-image \
  fairlearn matplotlib seaborn tqdm pyyaml pytest
python -m pip install torch-pruning backpack-for-pytorch
```

Verify the actual execution device:

```bash
python - <<'PY'
import torch
print("torch:", torch.__version__)
print("cuda available:", torch.cuda.is_available())
print("cuda runtime:", torch.version.cuda)
print("gpu:", torch.cuda.get_device_name(0) if torch.cuda.is_available() else None)
PY
```

For OADM attribution, disable alternate arithmetic during evaluation:

```python
torch.backends.cuda.matmul.allow_tf32 = False
torch.backends.cudnn.allow_tf32 = False
```

Do not use AMP/autocast in FP32-versus-OADM comparisons. AMP, TF32, FP16, or
BF16 would introduce a second approximation and invalidate the attribution.

## 2. Prepare Data Reproducibly

Use the packaged paths expected by the official FairQuantize dataloaders, or
pass explicit `--csv_file_name` and `--image_dir` arguments. Record checksums,
the split CSV files, excluded/missing sensitive labels, class mapping, image
transforms, and random seed.

For Fitzpatrick17k:

- Use the official CSV and images.
- Preserve the FairQuantize train/validation/test split.
- Use skin type 1-3 as light and 4-6 as dark.
- The paper treats dark as privileged and light as unprivileged.

For ISIC2019:

- Use the official training images, labels, and metadata.
- Preserve the FairQuantize split and its unknown-class handling.
- Exclude samples without the required sex label from group metrics only as
  specified by the reference code; report the excluded count.
- The paper treats female as privileged and male as unprivileged.

Never choose a new split after looking at fairness results. Copy the finalized
split manifests into the experiment output directory.

## 3. Reproduce Exact GPU Baselines First

Clone FairQuantize separately and use its `pre_train.py`, `test.py`, dataloaders,
and `fairness_metrics.py` as the reference. Its README documents dependencies
and dataset paths. Run `python pre_train.py --help` and `python test.py --help`
because the repository's CLI is the source of truth for that pinned commit.

Reproduce these exact models before adding OADM:

```text
Fitzpatrick17k -> VGG-11 -> 114 classes
ISIC2019       -> ResNet18 -> 9 classes
```

Acceptance criteria:

1. Exact GPU predictions are deterministic across two evaluation runs.
2. Dataset counts and group counts match the pinned reference dataloaders.
3. Precision, recall, F1, EOpp0, EOpp1, and EOdd are saved by group.
4. The metric formulas match `fairness_metrics.py`; do not substitute the
   binary Adult/Fairlearn definitions for these multiclass experiments.
5. Differences from the paper tables are documented rather than hidden.

The paper defines EOpp0 from the TNR gap, EOpp1 from the TPR gap, and EOdd from
the TPR/FPR gaps. Preserve the exact reference aggregation over classes.

## 4. Validate OADM on CUDA

Bring `fairness/src/oadm_emulator.py` and its tests from this repository into
the GPU checkout. Before modifying a network:

1. Run all CPU tests.
2. Run the same vectors on CUDA and compare output bits with CPU.
3. Compare a sampled CUDA vector set with the RTL regression output.
4. Cover signs, exponent extremes, zero, Inf, NaN, and L0-L3.

The emulator uses integer tensor operations and should remain bit-identical,
but CUDA equivalence must be tested rather than assumed.

## 5. Implement Memory-Bounded OADM Layers

Start with `nn.Linear`, then implement `nn.Conv2d`. Keep bias addition,
accumulation, ReLU, pooling, and normalization exact FP32 in the first study.
Only each multiplication is replaced by `approx_mul`.

Do not create the full convolution product tensor
`[batch, out_channel, in_channel, kernel_h, kernel_w, out_h, out_w]`. It will
exhaust GPU memory. Use one of these implementations:

1. A correctness-first `unfold` implementation chunked over output channels
   and spatial tiles.
2. A production Triton/CUDA kernel that decomposes operands, applies the OADM
   mantissa plane, and accumulates FP32 without materializing all products.

The chunked implementation must numerically match a scalar OADM convolution on
small tensors before scaling up. Record peak GPU memory and examples/second.

For ResNet18, leave BatchNorm exact. For deployment accounting, report both
the unfused software graph and the standard Conv-BatchNorm folded inference
interpretation. Do not count a general divider for folded BatchNorm.

## 6. Run the Approximation Experiments

Perform the following sequence independently for each dataset:

1. Exact FP32 baseline.
2. Uniform OADM L0, L1, L2, and L3 across all eligible Conv2d/Linear layers.
3. One-layer-at-a-time sensitivity for every eligible layer and level.
4. Accuracy-only level assignment under fixed accuracy-loss budgets.
5. Fairness-aware assignment under the same accuracy-loss budgets.
6. Optional fine-tuning after inference-only results are frozen.

For each candidate, save:

```text
dataset, split_hash, seed, model_commit, checkpoint_hash
assignment per layer, eligible MAC count per level
overall and group precision/recall/F1
worst-group metric and group accuracy gap
EOpp0, EOpp1, EOdd
runtime, peak memory, prediction checksum
```

There are too many image-model layers for exhaustive `5^N` search. Use the
one-layer profiles to build a shortlist, then perform a deterministic greedy or
beam search. Evaluate every selected final assignment on the untouched test
set. Hyperparameters and assignments must be selected on validation data only.

An accuracy-only search ranks candidates without group metrics. A
fairness-aware search may use group metrics on validation data to constrain
EOpp/EOdd. Both searches must use identical approximation choices and budgets
so their comparison is fair.

## 7. Fine-Tuning Is a Separate Experiment

The bit-accurate OADM emulator is non-differentiable. First publish the
inference-only sweep. If fine-tuning is added, use a documented straight-through
estimator or differentiable surrogate in backward propagation while retaining
the bit-accurate OADM operation in forward propagation. Report inference-only
and fine-tuned results separately.

Never claim the fine-tuned model uses the RTL arithmetic unless its final
forward predictions are rerun through the bit-accurate emulator.

## 8. Connect Software Results to ASIC PPA

GPU runtime and GPU energy are not ASIC OADM energy. Export representative
operand traces from the final assignments:

```text
weight_bits, activation_bits, layer_id, OADM_level
```

Use those traces to drive matched multiplier-only RTL variants and generate
VCD activity. Compare Exact FP32 and OADM under the same TSMC65 library, PVT,
clock, throughput, APR flow, and PrimeTime method. Then calculate model energy:

```text
energy_per_inference = sum(level_MAC_count * measured_energy_per_MAC_level)
```

If a shared runtime-level OADM block is used, report its area once and use
trace-driven mixed-level power. If fixed-level blocks are used, report each
implementation separately. The current `approximation_strength` software proxy
must never be presented as PPA.

## 9. Required Deliverables for the Local GPT

The local GPT should finish with:

1. Environment lock file and hardware/software manifest.
2. Immutable train/validation/test split manifests.
3. Exact VGG-11 and ResNet18 checkpoints and baseline metric tables.
4. CUDA-versus-CPU-versus-RTL OADM validation report.
5. Tested `ApproxLinear` and memory-bounded `ApproxConv2d` implementations.
6. Uniform-level and one-layer sensitivity CSV files.
7. Accuracy-only and fairness-aware assignment CSV files.
8. Accuracy/fairness Pareto plots with confidence intervals across seeds.
9. Operand traces and per-level operation counts for ASIC power analysis.
10. A limitations section covering FP32 truncation, subnormal flush, exact FP32
    accumulation, no runtime divider in these models, and dataset limitations.

The GPT must not report a result as complete merely because code runs. Each
stage is complete only after its acceptance checks and artifacts are recorded.

## Starter Prompt for the Local GPT

Use this after the local checkout and dataset paths are available:

```text
Read fairness/GPU_DERMATOLOGY_WORKFLOW.md completely before editing. Work on
the fairness branch only and do not change RTL. First record git, GPU, CUDA,
PyTorch, dataset, and split metadata. Reproduce the exact FairQuantize
Fitzpatrick17k/VGG-11 or ISIC2019/ResNet18 GPU baseline with TF32 and AMP off.
Do not proceed until dataset/group counts and exact metrics are saved. Then
validate fairness/src/oadm_emulator.py CPU versus CUDA and against the provided
RTL vectors. Implement a memory-bounded OADM ApproxConv2d that approximates
products only and retains FP32 accumulation. Prove it on small scalar test
cases before a full model. Run uniform L0-L3 and one-layer sensitivity sweeps,
then validation-selected accuracy-only and fairness-aware level assignments.
Keep paper metric definitions, save every assignment and operation count, and
never label GPU runtime or approximation_strength as ASIC energy. Stop and
report any mismatch instead of changing splits, formulas, or metric definitions.
```
