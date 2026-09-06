#!/usr/bin/env python3
"""Measure actual RTL words against IEEE decoding and host double arithmetic.

No OADM model, prior pack_fp32 helper, or previous metrics routine is imported.
"""
import csv
import hashlib
import json
import math
import struct
from pathlib import Path
import numpy as np

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
CONFIGS = json.loads((HERE / 'designs.json').read_text())
DATASETS = ('heldout_uniform', 'log_uniform', 'eight_fraction_bits', 'signed_exponents')

def decode(word):
    return struct.unpack('>f', struct.pack('>I', word))[0]

def encode(value):
    return struct.unpack('>I', struct.pack('>f', value))[0]

def independent_candidate(xw, yw, c):
    # Floating arithmetic reconstruction, not the integer model used before.
    mx = 1.0 + (xw & 0x7fffff) / 8388608.0
    my = 1.0 + (yw & 0x7fffff) / 8388608.0
    scale = 2.0 ** c['bits']
    ax = (math.floor(mx * scale) + 0.5) / scale
    ay = (math.floor(my * scale) + 0.5) / scale
    ex, ey = ((xw >> 23) & 255) - 127, ((yw >> 23) & 255) - 127
    if c['mode'] == 'div':
        outscale = 2.0 ** (c['bits'] + 2)
        value = math.ldexp(math.floor(ax / ay * outscale) / outscale, ex - ey)
    else:
        value = math.ldexp(ax * ay, ex + ey)
    if (xw ^ yw) >> 31:
        value = -value
    return encode(value)

def main():
    assert 'AUDIT_RTL_DUMP PASS: 275536 vectors' in (HERE / 'rtl.log').read_text()
    accum = {(d,n): np.zeros(7) for d in DATASETS for n in CONFIGS}
    golden_errors = {n: 0 for n in CONFIGS if n.startswith('input_')}
    sample_count = 0
    with (HERE / 'rtl_outputs.txt').open() as f:
        for line in f:
            fields = line.split()
            assert len(fields) == 3 + len(CONFIGS)
            dataset = DATASETS[int(fields[0])]
            xw, yw = int(fields[1],16), int(fields[2],16)
            x,y = decode(xw),decode(yw)
            for (name,c), text in zip(CONFIGS.items(), fields[3:]):
                word = int(text,16)
                actual = decode(word)
                expected = x/y if c['mode']=='div' else x*y
                assert math.isfinite(actual) and actual != 0
                err = actual-expected
                relative = abs(err/expected)
                a = accum[dataset,name]
                a[0] += 1
                a[1] += abs(err)
                a[2] += relative
                a[3] += err*err
                a[4] += err
                a[5] = max(a[5],relative)
                a[6] += abs((actual-decode(encode(expected)))/decode(encode(expected)))
                if name in golden_errors:
                    golden_errors[name] += word != independent_candidate(xw,yw,c)
            sample_count += 1
    assert sample_count == 275536
    rows = []
    for (dataset,name), a in accum.items():
        rows.append(dict(dataset=dataset, design=name, cases=int(a[0]), mae=a[1]/a[0],
                         mred=a[2]/a[0], rmse=math.sqrt(a[3]/a[0]), mean_error=a[4]/a[0],
                         max_relative=a[5], mred_vs_fp32_rne=a[6]/a[0]))
    with (HERE/'independent_accuracy.csv').open('w', newline='') as f:
        w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
    analytic = []
    for b in (3,5,7,9):
        delta = 2.0**(-b)
        analytic.append(dict(bits=b, uniform_continuous_rmse=math.sqrt(7*delta**2/18-delta**4/144)))
    (HERE/'independent_checks.json').write_text(json.dumps(dict(
        cases_per_design=sample_count, direct_reference_bit_mismatches=golden_errors,
        analytic_mul_rmse=analytic),indent=2)+'\n')
    assert not any(golden_errors.values()), golden_errors
    old_manifest=json.loads((HERE.parent/'results/sha256.json').read_text())
    changed=[p for p,h in old_manifest.items() if hashlib.sha256((ROOT/p).read_bytes()).hexdigest()!=h]
    assert not changed, changed
    print(json.dumps(dict(cases=sample_count, mismatches=golden_errors, unchanged_sources=len(old_manifest)),indent=2))

if __name__=='__main__':
    main()
