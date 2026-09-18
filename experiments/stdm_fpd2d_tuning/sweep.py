"""Joint parameter screening; all error columns are fractions, not percentages."""
import csv
import hashlib
import itertools
import json
from pathlib import Path

import numpy as np

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
Q = 1 << 23
CURRENT = [(18,18,18,7,[59]), (16,16,16,7,[83,42]),
           (16,16,16,8,[203,136,97,73]),
           (16,16,16,8,[227,182,149,124,105,90,78,68])]


def write_csv(path, rows):
    with path.open('w', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=list(rows[0]))
        writer.writeheader()
        writer.writerows(rows)


def data(seed, count):
    return np.random.default_rng(seed).integers(Q, 2*Q, (count,2), dtype=np.int64)


def plane(xy, level, dx, dy, input_bits=23):
    p = 23-input_bits
    x,y = ((xy >> p) << p).T
    ix,iy = (x-Q) >> (23-level), (y-Q) >> (23-level)
    kx,ky = 16+(2*ix+1)*(8 >> level),16+(2*iy+1)*(8 >> level)
    rx,ry = x-(kx << 19),y-(ky << 19)
    rx,ry = (rx >> dx) << dx, (ry >> dy) << dy
    return (kx*ky << 15)+((rx*ky) >> 4)-((ry*kx) >> 4), iy


def core(xy, c):
    w,iy = plane(xy,c['level'],c['dx'],c['dy'],c.get('input_bits',23))
    v = (w >> c['w'])*np.asarray(c['coefficients'],dtype=np.int64)[iy]
    shift = c['w']-c['b']
    return v << shift if shift >= 0 else v >> -shift


def stats(actual, expected):
    error = actual-expected
    relative = np.abs(error/expected)
    return dict(mae=float(np.mean(np.abs(error))),mred=float(np.mean(relative)),
                rmse=float(np.sqrt(np.mean(error**2))),
                max_relative=float(np.max(relative)),p99_relative=float(np.quantile(relative,.99)))


def assess(xy,c):
    v = core(xy,c)
    assert np.all((v >= Q//4) & (v < 2*Q)), c
    return stats(v.astype(np.float64)/Q,xy[:,0]/xy[:,1])


def calibrate(xy, level, dx, dy, w, b, input_bits=23):
    raw, iy = plane(xy,level,dx,dy,input_bits)
    reduced = raw >> w
    expected = xy[:,0]/xy[:,1]
    tables = {'mse':[], 'mred':[]}
    for cell in range(1 << level):
        mask = iy == cell
        base = reduced[mask]*2.0**(w-b-23)
        ref = expected[mask]
        optimum = np.dot(base,ref)/np.dot(base,base)
        # Absolute relative error is convex in C; its continuous optimum is
        # the weighted median of ref/base with weights base/ref.
        ratio = ref/base
        weights = base/ref
        order = np.argsort(ratio)
        median = ratio[order[np.searchsorted(np.cumsum(weights[order]),weights.sum()/2)]]
        choices = sorted(set(max(1,min((1<<b)-1,int(np.floor(v))+delta))
                             for v in (optimum,median) for delta in (-1,0,1,2)))
        integer = reduced[mask,None]*np.array(choices)[None,:]
        shift = w-b
        integer = integer << shift if shift >= 0 else integer >> -shift
        errors = integer/Q-ref[:,None]
        tables['mse'].append(choices[int(np.argmin(np.mean(errors**2,axis=0)))])
        tables['mred'].append(choices[int(np.argmin(np.mean(np.abs(errors/ref[:,None]),axis=0)))])
    rows=[]
    for objective, coefficients in tables.items():
        if rows and coefficients == rows[0]['coefficients']:
            continue
        c=dict(level=level,dx=dx,dy=dy,w=w,b=b,input_bits=input_bits,
               objective=objective,coefficients=coefficients)
        v=core(xy,c)
        if np.any((v<Q//4)|(v>=2*Q)):
            continue
        c.update(assess(xy,c))
        c['cost_proxy']=6*(46-2*level-dx-dy)+(25-w)*b
        rows.append(c)
    return rows


def key(c):
    return tuple(c[k] for k in ('level','dx','dy','w','b','input_bits'))+(tuple(c['coefficients']),)


def select(rows, per_target=3):
    targets=[(.0052821,.006828),(.0040958,.005134),(.0037354,.004636)]
    # Also preserve near-control regions for L0/L1 and high-accuracy L3.
    targets +=[(.0426502,.056460),(.0107733,.016165),(.0027943,.003482)]
    selected={}
    for mred,rmse in targets:
        for level in range(4):
            feasible=[r for r in rows if r['level']==level and r['mred']<=mred and r['rmse']<=rmse]
            for r in sorted(feasible,key=lambda r:(r['cost_proxy'],r['rmse']))[:per_target]:
                selected[key(r)]=r
    return list(selected.values())


def main():
    baseline=ROOT/'experiments/fpd2d/ppa_accuracy.csv'
    (HERE/'baseline.csv').write_bytes(baseline.read_bytes())
    evidence=[baseline,ROOT/'experiments/fpd2d/inputs.npy',
              ROOT/'experiments/fixed_div_level_specialization/specialized_rtl.v',
              ROOT/'PACE/common/FP_DIV_WRAPPER_32.v',
              ROOT/'dc/hier_compile_10ns/module.tcl',ROOT/'pt_dc/canonical_refresh/pt.tcl']
    (HERE/'baseline_sha256.json').write_text(json.dumps({str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in evidence},indent=2))
    xy=data(2026091601,4096)
    rows=[]
    seen=set()
    for level in range(4):
        d0,_,w0,_,_=CURRENT[level]
        drops=range(d0-4,min(22-level,d0+4)+1,2)
        for dx,dy,w,b in itertools.product(drops,drops,range(w0-4,w0+5,2),range(5,12)):
            seen.add((level,dx,dy,w,b))
            rows.extend(calibrate(xy,level,dx,dy,w,b))
        print('Coarse L%d complete: %d tables'%(level,len(rows)),flush=True)
    (HERE/'coarse.json').write_text(json.dumps(rows,indent=2))
    centers=select(rows,1)
    for c in centers:
        level=c['level']
        for dx,dy,w,b in itertools.product(*[range(c[k]-1,c[k]+2) for k in ('dx','dy','w','b')]):
            config=(level,dx,dy,w,b)
            if config in seen or not(0<=dx<=22-level and 0<=dy<=22-level and 5<=b<=11 and b<=w<=23):continue
            seen.add(config)
            rows.extend(calibrate(xy,*config))
    print('Refinement complete: %d configs, %d tables'%(len(seen),len(rows)),flush=True)
    (HERE/'screen.json').write_text(json.dumps(rows,indent=2))
    write_csv(HERE/'screen.csv',[dict(r,coefficients=' '.join(map(str,r['coefficients']))) for r in rows])
    candidates=select(rows,3)
    train=data(2026091601,65536)
    screen=data(2026091602,65536)
    refined=[]
    for c in candidates:
        for r in calibrate(train,*[c[k] for k in ('level','dx','dy','w','b')]):
            r.update(assess(screen,r))
            refined.append(r)
    (HERE/'independent_screen.json').write_text(json.dumps(refined,indent=2))
    final=select(refined,1)
    final=list({key(c):c for c in final}.values())
    for i,c in enumerate(final):c['top']=f'stdm_tune_{i:02d}'
    (HERE/'selected.json').write_text(json.dumps(final,indent=2))
    diagnostic=[]
    for level,(dx,dy,w,b,coefficients) in enumerate(CURRENT):
        c=dict(level=level,dx=dx,dy=dy,w=w,b=b,input_bits=23,coefficients=coefficients)
        diagnostic.append(dict(c,kind='current',**assess(screen,c)))
        for r in calibrate(train,level,0,0,0,11):
            diagnostic.append(dict(r,kind='no_residual_or_plane_drop_Q23_B11',**assess(screen,r)))
    (HERE/'diagnostics.json').write_text(json.dumps(diagnostic,indent=2))
    print(json.dumps(final,indent=2),flush=True)


if __name__=='__main__':main()
