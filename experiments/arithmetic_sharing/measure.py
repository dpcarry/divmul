"""Independent integer model for the selected optimized DIV and MUL."""
import csv
import hashlib
import json
import math
import struct
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
MASK=(1<<23)-1
COEFFICIENTS=((59,),(83,42),(203,136,97,73),(227,182,149,124,105,90,78,68))

def fp(w):return struct.unpack('>f',struct.pack('>I',w))[0]

def model(x,y,level,mode):
    X=(1<<23)+(x&MASK); Y=(1<<23)+(y&MASK)
    ix=(x&MASK)>>(23-level); iy=(y&MASK)>>(23-level)
    Kx=16+(1<<(3-level))+(ix<<(4-level))
    Ky=16+(1<<(3-level))+(iy<<(4-level))
    # Exact midpoint subtraction, not the DUT's inverted-MSB bit recoding.
    rx=X-(Kx<<19); ry=Y-(Ky<<19)
    drop=(18 if level==0 else 16) if mode else 16-2*level
    xterm=((rx>>drop)*Ky)<<(drop-4)
    yterm=((ry>>drop)*Kx)<<(drop-4)
    q=(Kx*Ky<<15)+xterm+(-yterm if mode else yterm)
    if mode:
        wd=18 if level==0 else 16
        cb=7 if level<2 else 8
        q=((q>>wd)*COEFFICIENTS[level][iy])<<(wd-cb)
    else:
        q+=(Kx+Ky)<<(drop-5)
    assert 0<q<(1<<25)
    adjust=1 if q>=(1<<24) else (0 if q>=(1<<23) else (-1 if q>=(1<<22) else -2))
    fraction=((q>>adjust) if adjust>=0 else (q<<-adjust))&MASK
    ex,ey=(x>>23)&255,(y>>23)&255
    exponent=(ex-ey+127 if mode else ex+ey-127)+adjust
    assert 0<exponent<255
    return ((x^y)&0x80000000)|(exponent<<23)|fraction

def main():
    for path,h in json.loads((HERE/'source_sha256.json').read_text()).items():
        assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest()==h,path
    counts=json.loads((HERE/'counts.json').read_text()); total=2*sum(counts.values())
    rows=[]; checks=[]; first_inputs=None
    for level in range(4):
        log=(HERE/f'rtl_l{level}.log').read_text()
        assert f'ARITHMETIC_SHARING PASS L{level} checked={total}' in log
        assert 'Errors: 0' in log and 'MISMATCH' not in log
        inputs=[]; acc={(ds,mode):[] for ds in range(3) for mode in range(2)}
        for line in (HERE/f'outputs_l{level}.txt').open():
            ds,mode,sx,sy,so=line.split();ds=int(ds);mode=int(mode)
            x,y,out=[int(v,16) for v in (sx,sy,so)]
            inputs.append((ds,mode,x,y))
            assert out==model(x,y,level,mode),(level,mode,sx,sy,so)
            reference=fp(x)/fp(y) if mode else fp(x)*fp(y)
            e=fp(out)-reference
            acc[ds,mode].append((e,abs(e/reference)))
        assert len(inputs)==total
        if first_inputs is None:first_inputs=inputs
        assert first_inputs==inputs
        for (ds,mode),values in acc.items():
            assert len(values)==counts[str(ds)]
            rows.append(dict(level=level,mode='DIV' if mode else 'MUL',
                dataset=('uniform_100k','boundaries','signed_exponents')[ds],cases=len(values),
                mred=math.fsum(r for _,r in values)/len(values),
                rmse=math.sqrt(math.fsum(e*e for e,_ in values)/len(values)),
                max_relative=max(r for _,r in values),
                mean_error=math.fsum(e for e,_ in values)/len(values),
                scope='identical B/C/standalone outputs'))
        checks.append(dict(level=level,checks=total,independent_model_mismatches=0,
            b_c_mismatches=0,standalone_mismatches=0))
    with (HERE/'accuracy.csv').open('w',newline='') as f:
        w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
    (HERE/'checks.json').write_text(json.dumps(checks,indent=2)+'\n')
    print(json.dumps(checks,indent=2))

if __name__=='__main__':main()
