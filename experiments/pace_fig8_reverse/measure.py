"""Check every RTL output with an independent integer reference."""
import csv
import importlib.util
import json
import math
import struct
from pathlib import Path

HERE=Path(__file__).resolve().parent
spec=importlib.util.spec_from_file_location('terms',HERE.parent/'pace_difference_truncation/measure.py')
terms=importlib.util.module_from_spec(spec)
spec.loader.exec_module(terms)
MASK=(1<<23)-1
def fp(w): return struct.unpack('>f',struct.pack('>I',w))[0]

def reference(x,y,c):
    b=c['bits']; mask=(1<<b)-1
    mx=(x&MASK)>>(23-b); my=(y&MASK)>>(23-b)
    sign=(x^y)&0x80000000
    exp=((x>>23)&255)-((y>>23)&255)+127
    if c['family']=='dw':
        a=(1<<b)+mx; den=(1<<b)+my
        shift=-int(a<den)
        q,rem=divmod(a<<(b-shift),den)
        if c['rounding']=='RNE' and (2*rem>den or (2*rem==den and q&1)):
            q+=1
        if q==(1<<(b+1)):
            q>>=1; shift+=1
        return sign|(((exp+shift)&255)<<23)|((q&mask)<<(23-b))
    z=mx-my
    ts=[(1,0)]
    if my < (1<<(b-1)): ts.append((1,1))
    if c['level']>=2: ts+=terms.L2[my>>(b-2)]
    if c['level']>=3: ts+=terms.L3[my>>(b-3)]
    if c['level']>=4: ts+=terms.L4[my>>(b-4)]
    q=(1<<(b+1))+sum((s*z)>>shift for s,shift in ts)
    raw=q&((1<<(b+2))-1)
    above=bool(raw&(1<<(b+1)))
    frac=((raw>>1)&mask) if above else ((raw&mask) if raw&(1<<b) else ((raw>>2)&mask))
    return sign|(((exp-int(not above))&255)<<23)|(frac<<(23-b))

def main():
    configs=json.loads((HERE/'designs.json').read_text())
    counts=json.loads((HERE/'counts.json').read_text())
    log=(HERE/'rtl.log').read_text()
    assert f'FIG8_RTL PASS: {counts["total"]}' in log and 'Fatal:' not in log
    acc={(d,i):[0,0.,0.,0.,0.,0.] for d in range(3) for i in range(len(configs))}
    lines=0
    with (HERE/'rtl_outputs.txt').open() as stream:
        for line in stream:
            words=line.split(); dataset=int(words[0]); values=[int(w,16) for w in words[1:]]
            x,y=values[:2]; exact=fp(x)/fp(y)
            assert len(values)==len(configs)+2
            for i,c in enumerate(configs):
                expected=reference(x,y,c)
                assert values[i+2]==expected,(c['top'],lines,hex(x),hex(y),hex(expected),hex(values[i+2]))
                error=fp(values[i+2])-exact; rel=abs(error/exact)
                a=acc[dataset,i]; a[0]+=1; a[1]+=error**2; a[2]+=rel
                a[3]+=error; a[4]=max(a[4],rel); a[5]+=abs(error)
            lines+=1
    assert lines==counts['total']
    rows=[]
    for (d,i),a in acc.items():
        rows.append(dict(**configs[i],dataset=('uniform_10k','boundaries','signed_safe')[d],
                         cases=a[0],rmse=math.sqrt(a[1]/a[0]),mred=a[2]/a[0],
                         mean_error=a[3]/a[0],max_relative=a[4],mae=a[5]/a[0]))
    with (HERE/'accuracy.csv').open('w',newline='') as f:
        w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
    (HERE/'model_checks.json').write_text(json.dumps(dict(configurations=len(configs),
        vectors_per_configuration=lines,bit_mismatches=0,
        dw_reference='exact integer quotient with RTZ or ties-to-even RNE',
        pace_reference='signed partial-sum shifts and original output normalization'),indent=2)+'\n')
    for r in rows:
        if r['dataset']=='uniform_10k' and r['drop']>=16:
            print(r['top'],r['rmse'],100*r['mred'])
    print('PASS: all RTL words match integer references')

if __name__=='__main__': main()
