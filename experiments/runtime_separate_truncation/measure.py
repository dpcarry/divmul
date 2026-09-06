"""Check every RTL output against midpoint-subtraction integer arithmetic."""
import csv
import hashlib
import json
import math
import struct
from pathlib import Path
from prepare import HERE, ROOT, TOPS

MASK = (1 << 23)-1
COEFF = ((57,), (82,42), (101,68,48,36), (113,91,74,62,52,45,39,34))


def fp(w):
    return struct.unpack('>f', struct.pack('>I', w))[0]


def model(x, y, l, m, variant):
    X=(1<<23)+(x&MASK); Y=(1<<23)+(y&MASK)
    ix=(x&MASK)>>(23-l); iy=(y&MASK)>>(23-l)
    kx=16+(1<<(3-l))+(ix<<(4-l))
    ky=16+(1<<(3-l))+(iy<<(4-l))
    rx=X-(kx<<19); ry=Y-(ky<<19)
    drop=((18 if l==0 else 16) if m else 16-2*l) if variant in (1,3) else 10
    q=(kx*ky<<15)+(((rx>>drop)*ky)<<(drop-4))
    t=((ry>>drop)*kx)<<(drop-4)
    q+=-t if m else t
    if m:
        wd=(18 if l==0 else 16) if variant in (2,3) else 14
        q=(((q&((1<<25)-1))>>wd)*COEFF[l][iy])<<(wd-7)
    adjust=1 if q&(1<<24) else (0 if q&(1<<23) else (-1 if q&(1<<22) else -2))
    fraction=((q>>adjust) if adjust>=0 else (q<<-adjust))&MASK
    ex,ey=(x>>23)&255,(y>>23)&255
    exponent=((ex-ey+127 if m else ex+ey-127)+adjust)&255
    return ((x^y)&0x80000000)|(exponent<<23)|fraction


def main():
    for p,h in json.loads((HERE/'sources.json').read_text()).items():
        assert hashlib.sha256((ROOT/p).read_bytes()).hexdigest()==h,p
    counts=json.loads((HERE/'counts.json').read_text())
    rows=[]; checks=[]
    for i in (0,3):
        top=TOPS[i]
        log=(HERE/f'rtl{i}.log').read_text()
        assert f'RUNTIME PASS checked={8*sum(counts.values())}' in log
        assert 'Errors: 0' in log and 'Fatal:' not in log
        acc={}; n=0
        with (HERE/f'outputs{i}.txt').open() as f:
            for line in f:
                ds,l,m,x,y,o=line.split();ds,l,m=map(int,(ds,l,m));x,y,o=[int(v,16) for v in (x,y,o)]
                assert o==model(x,y,l,m,i),(i,l,m,hex(x),hex(y),hex(o),hex(model(x,y,l,m,i)))
                ref=fp(x)/fp(y) if m else fp(x)*fp(y)
                error=fp(o)-ref
                acc.setdefault((ds,l,m),[]).append((error,abs(error/ref)))
                n+=1
        assert n==8*sum(counts.values())
        for (ds,l,m),v in sorted(acc.items()):
            assert len(v)==counts[str(ds)]
            rows.append(dict(top=top,level=l,mode='DIV' if m else 'MUL',dataset=['uniform_100k','boundaries','signed_exponents'][ds],
                cases=len(v),mred=math.fsum(r for _,r in v)/len(v),rmse=math.sqrt(math.fsum(e*e for e,_ in v)/len(v)),
                mean_error=math.fsum(e for e,_ in v)/len(v),max_relative=max(r for _,r in v)))
        checks.append(dict(top=top,checks=n,model_mismatches=0))
    with (HERE/'accuracy.csv').open('w',newline='') as f:
        w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
    (HERE/'checks.json').write_text(json.dumps(checks,indent=2))
    print(json.dumps(checks,indent=2))


if __name__=='__main__':
    main()
