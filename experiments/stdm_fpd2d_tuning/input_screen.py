"""Test existing input masking; identify arithmetic duplicates explicitly."""
import json
import numpy as np
from sweep import HERE,calibrate,core,data,key,select,write_csv

xy=data(2026091601,4096)
original=json.loads((HERE/'screen.json').read_text())
centers=select(original,1)
rows=[]
for c in centers:
    for bits in range(c['level']+1,11):
        for r in calibrate(xy,*[c[k] for k in ('level','dx','dy','w','b')],input_bits=bits):
            equivalent=dict(r,input_bits=23,dx=max(r['dx'],23-bits),dy=max(r['dy'],23-bits))
            # Here the midpoint is aligned to the retained input precision.
            mismatch=int(np.count_nonzero(core(xy,r)!=core(xy,equivalent)))
            assert mismatch==0,(r,mismatch)
            r.update(equivalent_dx=equivalent['dx'],equivalent_dy=equivalent['dy'],equivalence_mismatches=mismatch)
            rows.append(r)
(HERE/'input_screen.json').write_text(json.dumps(rows,indent=2))
write_csv(HERE/'input_screen.csv',[dict(r,coefficients=' '.join(map(str,r['coefficients']))) for r in rows])
print(f'{len(rows)} input-mask tables checked; all equal to effective residual-drop configurations on calibration inputs.')
