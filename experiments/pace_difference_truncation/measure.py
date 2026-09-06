"""Independent signed-integer Table-3 reference, plus actual FP32 RTL errors."""
import csv
import hashlib
import json
import math
import struct
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
MASK=(1<<23)-1
# (sign, shift) terms in units of 2^-24; Table 3 coefficients shift one more.
L2=[[(1,2)],[(-1,3)],[(1,3)],[]]
L3=[[(1,3),(1,6)],[(-1,4),(1,5)],[(1,3),(1,5)],[],
    [(1,3)],[(1,4),(-1,5)],[(1,4),(1,5)],[(1,6)]]
L4=[[(1,4)],[(-1,4),(1,7)],[(1,4),(-1,7)],[(-1,4),(1,6)],
    [(1,4),(-1,6)],[(-1,5),(-1,7)],[(1,5),(1,7)],[(-1,5)],
    [(1,5)],[(-1,6),(-1,7)],[(1,6),(1,7)],[(-1,6)],
    [(1,6)],[(-1,7)],[(1,7)],[]]


def decode(w): return struct.unpack('>f',struct.pack('>I',w))[0]


def model(x,y,level,drop):
    mx,my=x&MASK,y&MASK
    z=((mx-my)>>drop)<<drop
    terms=[(1,0)]
    if my < (1<<22): terms.append((1,1))
    if level>=2: terms+=L2[my>>21]
    if level>=3: terms+=L3[my>>20]
    if level>=4: terms+=L4[my>>19]
    q=(1<<24)+sum((sign*z)>>shift for sign,shift in terms)
    ideal=1+sum(sign*z/(2**(shift+24)) for sign,shift in terms)
    assert abs(q/(1<<24)-ideal) <= len(terms)/(1<<24)+1e-15
    raw=q&((1<<25)-1)
    above=bool(raw&(1<<24))
    fraction=((raw>>1)&MASK) if above else ((raw&MASK) if raw&(1<<23) else ((raw>>2)&MASK))
    exponent=(((x>>23)&255)-((y>>23)&255)+127-(not above))&255
    packed=((x^y)&0x80000000)|(exponent<<23)|fraction
    return packed,z,ideal,q


def main():
    configs=json.loads((HERE/'designs.json').read_text())
    expected=json.loads((HERE/'counts.json').read_text())
    log=(HERE/'rtl.log').read_text()
    assert f"ZTRUNC_RTL PASS: {expected['total']}" in log
    assert 'MISMATCH' not in log and 'Fatal:' not in log
    for path,digest in json.loads((HERE/'author_sha256.json').read_text()).items():
        assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest()==digest,path
    # Keep distributions separate; boundary inputs must not skew uniform RMSE.
    acc={(dataset,i):[0,0.,0.,0.,0.,0.,0,0.,0.] for dataset in range(3) for i in range(len(configs))}
    count=0
    with (HERE/'rtl_outputs.txt').open() as f:
        for line in f:
            parts=line.split(); dataset=int(parts[0]); values=[int(s,16) for s in parts[1:]]
            assert len(values)==len(configs)+2
            x,y=values[:2]; reference=decode(x)/decode(y)
            normalized_reference=(1+(x&MASK)/(1<<23))/(1+(y&MASK)/(1<<23))
            for i,c in enumerate(configs):
                packed,z,ideal,q=model(x,y,c['level'],c['drop'])
                assert packed==values[i+2],(c,count,hex(x),hex(y),hex(packed),hex(values[i+2]))
                # Exact difference truncation preserves low-bit borrowing.
                assert 0 <= ((x&MASK)-(y&MASK))-z < (1<<c['drop'])
                actual=decode(values[i+2]); err=actual-reference; rel=abs(err/reference)
                a=acc[dataset,i]; a[0]+=1; a[1]+=abs(err); a[2]+=rel; a[3]+=err*err
                a[4]+=err; a[5]=max(a[5],rel)
                a[6]+=int(not (.5<=q/(1<<24)<2))
                a[7]+=(ideal-normalized_reference)**2
                # An independent scalar coefficient model of Eq.27 before FP packing.
                a[8]+=abs(ideal-normalized_reference)/normalized_reference
            count+=1
    assert count==expected['total']
    rows=[]
    for (dataset,i),a in acc.items():
        rows.append(dict(dataset=('uniform_100k','targeted_boundaries','signed_exponents')[dataset],
                         **configs[i],cases=a[0],mae=a[1]/a[0],mred=a[2]/a[0],rmse=math.sqrt(a[3]/a[0]),
                         mean_error=a[4]/a[0],max_relative=a[5],
                         author_normalizer_out_of_range_cases=a[6],
                         equation27_normalized_rmse=math.sqrt(a[7]/a[0]),equation27_mred=a[8]/a[0]))
    with (HERE/'accuracy.csv').open('w',newline='') as f:
        w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
    checks=dict(designs=len(configs),cases_per_design=count,bit_mismatches=0,
                drop0_controls='all four match original RTL on every input',
                signed_truncation='floor; z_b = (z >> drop) << drop; all negative terms use -z_b',
                note='Table-3 reference includes original per-term arithmetic shifts and original output normalizer')
    (HERE/'model_checks.json').write_text(json.dumps(checks,indent=2)+'\n')
    print(json.dumps(checks,indent=2))
    print(json.dumps([r for r in rows if r['dataset']=='uniform_100k' and r['drop'] in (0,17,18)],indent=2))


if __name__=='__main__': main()
