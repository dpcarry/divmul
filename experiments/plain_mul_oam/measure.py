"""Audit final FP32 errors with independent exact integer/Fraction arithmetic."""
import csv
import hashlib
import json
import math
import struct
from fractions import Fraction
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
MASK=(1<<23)-1

def decode(w): return struct.unpack('>f',struct.pack('>I',w))[0]

def rational(w):
    e=((w>>23)&255)-150
    m=(1<<23)+(w&MASK)
    return (-1 if w>>31 else 1)*Fraction(m)*Fraction(2)**e

def plane(x,y,level):
    # Independent centered identity, unlike the direct three-product RTL.
    den=1<<(level+1)
    mx,my=Fraction((1<<23)+(x&MASK),1<<23),Fraction((1<<23)+(y&MASK),1<<23)
    kx=Fraction(den+2*((x&MASK)>>(23-level))+1,den)
    ky=Fraction(den+2*((y&MASK)>>(23-level))+1,den)
    q=kx*ky+ky*(mx-kx)+kx*(my-ky)
    assert mx*my-q==(mx-kx)*(my-ky)
    adjust=1 if q>=2 else (0 if q>=1 else -1)
    significand=int(q*Fraction(2)**(23-adjust))
    exponent=((x>>23)&255)+((y>>23)&255)-127+adjust
    assert 1<=exponent<=254
    word=((x^y)&0x80000000)|(exponent<<23)|(significand&MASK)
    return word

def author_model(x,y,level):
    # Reconstruct upstream complemented-tail rows and constant, independently
    # of its CSA hierarchy. One's complements are intentionally not +1 corrected.
    fx,fy=x&MASK,y&MASK
    F=24+level
    q=3*(fx+fy)*(1<<level)
    q+=(3<<(F-2)) if level==0 else ((1<<(F-1))+(1<<(F-2*level-2)))
    complement_deficit_q31=0
    for j in range(1,level+1):
        tail_bits=23-j; mask=(1<<tail_bits)-1
        bx,by=(fx>>tail_bits)&1,(fy>>tail_bits)&1
        tx,ty=fx&mask,fy&mask
        rowx=(int(bx==by)<<tail_bits)+(ty if bx else mask-ty)
        rowy=tx if by else mask-tx
        q+=(rowx+rowy)<<(level-j)
        complement_deficit_q31+=(2-bx-by)<<(7-j)
    kx=16+(1<<(3-level))+((fx>>(23-level))<<(4-level))
    ky=16+(1<<(3-level))+((fy>>(23-level))<<(4-level))
    plane_q31=16*(ky*((1<<23)+fx)+kx*((1<<23)+fy))-(kx*ky<<23)
    assert plane_q31-(q<<(31-F))==complement_deficit_q31
    adjust=1 if q>=(2<<F) else (0 if q>=(1<<F) else -1)
    significand=q>>(F-23+adjust)
    exponent=((x>>23)&255)+((y>>23)&255)-127+adjust
    return ((x^y)&0x80000000)|(exponent<<23)|(significand&MASK)

def main():
    counts=json.loads((HERE/'counts.json').read_text())
    for p,h in json.loads((HERE/'author_sha256.json').read_text()).items():
        assert hashlib.sha256((ROOT/p).read_bytes()).hexdigest()==h
    rows=[]; checks=[]
    canonical_inputs=None
    for level in range(4):
        log=(HERE/f'rtl_l{level}.log').read_text()
        assert 'PLAIN_OAM PASS' in log and 'Fatal:' not in log
        inputs=[]; acc={(d,k):[] for d in range(3) for k in range(2)}
        mismatch=0; max_ulp=0; examples=[]
        for n,line in enumerate((HERE/f'outputs_l{level}.txt').read_text().splitlines()):
            ds,sx,sy,sp,sa=line.split(); ds=int(ds)
            x,y,p,a=[int(v,16) for v in (sx,sy,sp,sa)]
            inputs.append((ds,x,y))
            assert p==plane(x,y,level),(level,n,hex(x),hex(y),hex(p))
            assert a==author_model(x,y,level),('author',level,n,hex(x),hex(y),hex(a),hex(author_model(x,y,level)))
            # Binary64 represents the product of two FP32 significands exactly
            # (at most 48 bits), and all selected exponents are safely bounded.
            exact=decode(x)*decode(y)
            if n<2000 or ds!=0:
                exact_fraction=rational(x)*rational(y)
                assert Fraction(exact)==exact_fraction
            for k,out in enumerate((p,a)):
                assert 0<((out>>23)&255)<255
                error=decode(out)-exact
                relative=abs(error)/abs(exact)
                if n<2000 or ds!=0:
                    fraction_error=rational(out)-exact_fraction
                    assert error==float(fraction_error)
                    assert abs(relative-float(abs(fraction_error/exact_fraction)))<1e-15
                acc[ds,k].append((error,relative))
            delta=abs((p&0x7fffffff)-(a&0x7fffffff))
            max_ulp=max(max_ulp,delta)
            if p!=a:
                mismatch+=1
                if len(examples)<8: examples.append(dict(x=sx,y=sy,plain=sp,oam=sa,ulp_delta=delta))
        assert len(inputs)==sum(counts.values())
        if canonical_inputs is None: canonical_inputs=inputs
        assert canonical_inputs==inputs
        for (ds,k),values in acc.items():
            assert len(values)==counts[str(ds)]
            errors=[v[0] for v in values]; rels=sorted(v[1] for v in values)
            rows.append(dict(design=f'plain_mul_l{level}' if k==0 else f'amlib_oam_l{level}_fp32_common',
                level=level,dataset=('uniform_100k','boundaries','signed_exponents')[ds],cases=len(values),
                mred=math.fsum(rels)/len(values),rmse=math.sqrt(math.fsum(e*e for e in errors)/len(values)),
                mae=math.fsum(abs(e) for e in errors)/len(values),mean_error=math.fsum(errors)/len(values),
                max_relative=max(rels),p99_relative=rels[math.ceil(.99*len(rels))-1]))
        checks.append(dict(level=level,cases=len(inputs),plain_model_mismatches=0,
            author_model_mismatches=0,author_wrapper_mismatches=0,plain_author_bit_differences=mismatch,
            max_plain_author_ulp_distance=max_ulp,examples=examples))
    with (HERE/'accuracy.csv').open('w',newline='') as f:
        w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
    (HERE/'checks.json').write_text(json.dumps(checks,indent=2)+'\n')
    print(json.dumps(checks,indent=2))
    print(json.dumps([r for r in rows if r['dataset']=='uniform_100k'],indent=2))

if __name__=='__main__': main()
