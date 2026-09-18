# Common DIV-only accuracy set for the H-paper update

This experiment evaluates complete packed FP32 outputs for the selected
H-recoded STDM DIV-only specializations, PACE L1--L4, the paper-derived PLSAD
`m=8` reconstruction, and the independently optimized FPD2D `8x8`
reconstructions. All rows use the first 200,000 normalized positive operand
pairs from `experiments/fpd2d/inputs.hex`.

`common_accuracy.csv` is the paper-facing accuracy source. It does not replace
any canonical PPA CSV. Hardware values continue to come from the already
verified DC/PT experiments for each design. FPD2D and PLSAD are local
paper-derived reconstructions, not author RTL.

Run `bash run.sh` to rebuild the Verilator executable and regenerate the CSV.
