#!/usr/bin/env python3
"""Direct operand truncation controls; integer models and reproducible RTL vectors."""
import csv
import json
import sys
from pathlib import Path
import numpy as np

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
sys.path.insert(0, str(ROOT / 'python'))
from root_opt_search import centered_plane, midpoint_numerators, scale_plane
from pace_grid_accuracy import pack_fp32

TABLES = [(59,), (83, 42), (203, 136, 97, 73),
          (227, 182, 149, 124, 105, 90, 78, 68)]

def packed(q, fractional):
    q23 = q << (23 - fractional) if fractional <= 23 else q >> (fractional - 23)
    return pack_fp32(q23).astype(np.uint32)

def baseline(x, y, mode, bits, bias):
    # A trailing one restores half the discarded input interval exactly.
    a = ((x >> (23 - bits)) << 1) + bias
    b = ((y >> (23 - bits)) << 1) + bias
    if mode == 'mul':
        return packed(a * b, 2 * (bits + 1))
    fractional = bits + 2
    return packed((a << fractional) // b, fractional)

def oadm(x, y, mode, level):
    drop = (18 if level == 0 else 16) if mode == 'div' else 16 - 2 * level
    plane = centered_plane(x, y, level, mode == 'div', drop)
    if mode == 'div':
        index = ((y - (1 << 23)) >> (23 - level)) if level else np.zeros_like(y)
        coefficient = np.array(TABLES[level], dtype=np.int64)[index]
        plane = scale_plane(plane, coefficient, 7 if level < 2 else 8, drop)
    else:
        plane += (midpoint_numerators(x, level) + midpoint_numerators(y, level)) << (drop - 5)
    return pack_fp32(plane).astype(np.uint32)

def metrics(expected, output):
    actual = output.view(np.float32).astype(np.float64)
    error = actual - expected
    relative = np.abs(error) / expected
    return dict(cases=len(expected), mae=float(np.mean(np.abs(error))),
                mred=float(np.mean(relative)), rmse=float(np.sqrt(np.mean(error**2))),
                mean_error=float(np.mean(error)), max_abs=float(np.max(np.abs(error))),
                max_relative=float(np.max(relative)), p99_relative=float(np.quantile(relative, .99)))

def write_csv(path, rows):
    with path.open('w', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=list(rows[0]))
        writer.writeheader()
        writer.writerows(rows)

def main():
    out = HERE / 'results'
    out.mkdir(exist_ok=True)
    rng = np.random.default_rng(63212026)
    rows = []
    sets = {'random_200k': (rng.integers(1 << 23, 1 << 24, 200000, dtype=np.int64),
                           rng.integers(1 << 23, 1 << 24, 200000, dtype=np.int64))}
    # Probe both sides of every 1/256 boundary, including the domain endpoints.
    boundaries = np.arange(257, dtype=np.int64) << 15
    edge = np.unique(np.clip(np.concatenate([boundaries - 1, boundaries, boundaries + 1]), 0, (1 << 23) - 1)) + (1 << 23)
    gx, gy = np.meshgrid(edge, edge)
    sets['boundary_grid'] = (gx.ravel(), gy.ravel())
    for dataset, (x, y) in sets.items():
        for mode in ('div', 'mul'):
            expected = x / y if mode == 'div' else (x / (1 << 23)) * (y / (1 << 23))
            for level in range(4):
                rows.append(dict(dataset=dataset, design=f'oadm_{mode}_l{level}', mode=mode,
                                 bits='', bias='', **metrics(expected, oadm(x, y, mode, level))))
            for bits in range(2, 12):
                for bias in (0, 1):
                    name = f'input_{mode}_b{bits}_bias{bias}'
                    rows.append(dict(dataset=dataset, design=name, mode=mode, bits=bits, bias=bias,
                                     **metrics(expected, baseline(x, y, mode, bits, bias))))
    write_csv(out / 'accuracy.csv', rows)
    # Select the smallest compensated input width meeting each OADM MRED AND RMSE.
    random = {r['design']: r for r in rows if r['dataset'] == 'random_200k'}
    selected = {}
    matches = []
    for mode in ('div', 'mul'):
        for level in range(4):
            ref = random[f'oadm_{mode}_l{level}']
            candidate = next(random[f'input_{mode}_b{b}_bias1'] for b in range(2, 12)
                             if random[f'input_{mode}_b{b}_bias1']['mred'] <= ref['mred']
                             and random[f'input_{mode}_b{b}_bias1']['rmse'] <= ref['rmse'])
            selected[candidate['design']] = dict(mode=mode, bits=candidate['bits'], bias=1)
            matches.append(dict(oadm=ref['design'], candidate=candidate['design'],
                                oadm_mred=ref['mred'], candidate_mred=candidate['mred'],
                                oadm_rmse=ref['rmse'], candidate_rmse=candidate['rmse']))
    (out / 'selected.json').write_text(json.dumps(selected, indent=2) + '\n')
    write_csv(out / 'matched_accuracy.csv', matches)
    # Include all selected RTLs and the actual OADM references in model checking.
    checks = dict(selected)
    checks.update({f'oadm_{mode}_l{level}': dict(mode=mode, level=level)
                   for mode in ('div', 'mul') for level in range(4)})
    x, y = sets['random_200k']
    x, y = x[:10000], y[:10000]
    vx = np.concatenate([x, gx.ravel()[::53]])
    vy = np.concatenate([y, gy.ravel()[::53]])
    outputs = [oadm(vx, vy, c['mode'], c['level']) if 'level' in c
               else baseline(vx, vy, **c) for c in checks.values()]
    # Valid finite exponents and both signs; avoid wrapper under/overflow.
    ex = rng.integers(115, 140, len(vx), dtype=np.uint32)
    ey = rng.integers(115, 140, len(vx), dtype=np.uint32)
    sx = rng.integers(0, 2, len(vx), dtype=np.uint32)
    sy = rng.integers(0, 2, len(vx), dtype=np.uint32)
    xb = (sx << 31) | (ex << 23) | (vx.astype(np.uint32) & 0x7fffff)
    yb = (sy << 31) | (ey << 23) | (vy.astype(np.uint32) & 0x7fffff)
    for k, c in enumerate(checks.values()):
        exp = (outputs[k] >> 23).astype(np.int64)
        exp += (ex.astype(np.int64) - ey) if c['mode'] == 'div' else (ex.astype(np.int64) + ey - 254)
        outputs[k] = ((sx ^ sy) << 31) | (exp.astype(np.uint32) << 23) | (outputs[k] & 0x7fffff)
    with (out / 'vectors.txt').open('w') as f:
        for row in zip(xb, yb, *outputs):
            f.write(' '.join(f'{int(v):08x}' for v in row) + '\n')
    (out / 'checks.json').write_text(json.dumps(checks, indent=2) + '\n')
    print(json.dumps(matches, indent=2))

if __name__ == '__main__':
    main()
