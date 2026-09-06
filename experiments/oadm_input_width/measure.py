"""Check captured RTL with an integer plane reference, then measure error."""
import csv
import hashlib
import json
from pathlib import Path
import numpy as np

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]

def write(path,rows):
    with path.open('w',newline='') as f:
        w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)

def main():
    log=(HERE/'rtl.log').read_text()
    assert 'INPUT_WIDTH_RTL PASS: 101833' in log and 'MISMATCH' not in log and 'Fatal:' not in log
    configs=json.loads((HERE/'designs.json').read_text())
    for path,digest in json.loads((HERE/'source_sha256.json').read_text()).items():
        assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest()==digest,path
    data=np.loadtxt(HERE/'rtl_outputs.txt',dtype=np.uint32,converters=lambda s:int(s,16))
    assert data.shape==(101833,len(configs)+3)
    x,y=data[:,1].astype(np.int64),data[:,2].astype(np.int64)
    ref=data[:,1].copy().view(np.float32).astype(np.float64)/data[:,2].copy().view(np.float32).astype(np.float64)
    masks=[('uniform_100k',data[:,0]==0),('uniform_10k',(data[:,0]==0)&(np.arange(len(data))<11833)),
           ('boundaries',data[:,0]==1),('signed_safe',data[:,0]==2)]
    rows=[]
    for i,c in enumerate(configs):
        b,l,r,w,cb=(c[k] for k in ('bits','level','residual_drop','wn_drop','coefficient_bits'))
        mask=((1<<23)-1)^((1<<(23-b))-1)
        fx,fy=x&mask,y&mask
        ix,iy=fx>>(23-l),fy>>(23-l)
        kx,ky=16+(1<<(3-l))+(ix<<(4-l)),16+(1<<(3-l))+(iy<<(4-l))
        # Arithmetic subtraction, not RTL sign-bit recoding.
        rx,ry=(1<<23)+fx-(kx<<19),(1<<23)+fy-(ky<<19)
        plane=(kx*ky<<15)+(((rx>>r)*ky-(ry>>r)*kx)<<(r-4))
        coefficient=np.array(c['coefficients'],dtype=np.int64)[iy]
        v=(((plane&((1<<25)-1))>>w)*coefficient)<<(w-cb)
        adj=np.where(v&(1<<23),0,np.where(v&(1<<22),-1,-2))
        fraction=(v<<(-adj))&((1<<23)-1)
        exponent=(((x>>23)&255)-((y>>23)&255)+127+adj)&255
        expected=((x^y)&(1<<31))|(exponent<<23)|fraction
        assert np.array_equal(expected,data[:,i+3]),c['top']
        actual=data[:,i+3].copy().view(np.float32).astype(np.float64)
        error=actual-ref; relative=abs(error/ref)
        for name,m in masks:
            rows.append(dict(**{k:v for k,v in c.items() if k!='coefficients'},dataset=name,cases=int(m.sum()),
                             rmse=float(np.sqrt(np.mean(error[m]**2))),mred=float(relative[m].mean()),
                             max_relative=float(relative[m].max()),mean_error=float(error[m].mean())))
    # Check control identity against the previous 100k actual RTL capture.
    previous=np.loadtxt(ROOT/'experiments/div_truncation_figure/rtl_outputs.txt',dtype=np.uint32,
                        converters=lambda s:int(s,16))
    uniform=data[data[:,0]==0]
    assert np.array_equal(uniform[:,1:3],previous[:,:2])
    for i,c in enumerate(configs):
        if c['kind']=='control':
            assert np.array_equal(uniform[:,i+3],previous[:,8+c['level']]),c['top']
    write(HERE/'accuracy.csv',rows)
    checks=dict(configurations=len(configs),vectors_per_configuration=len(data),bit_mismatches=0,
                historical_control_matches=100000,mask_narrow_equivalence='RTL miter PASS')
    (HERE/'model_checks.json').write_text(json.dumps(checks,indent=2)+'\n')
    for row in rows:
        if row['dataset']=='uniform_100k' and row['kind']!='mask':
            print(row['top'], 'RMSE',round(row['rmse'],8),'MRED%',round(row['mred']*100,5))

if __name__=='__main__': main()
