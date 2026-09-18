"""Check new integer model against pre-existing, completed control RTL outputs."""
import json
import numpy as np
from prepare import model
from sweep import CURRENT,HERE,ROOT

inputs=np.load(ROOT/'experiments/fpd2d/inputs.npy')
rows=[]
for level,(dx,dy,w,b,coefficients) in enumerate(CURRENT):
    top=f'oadm_fixed_l{level}_div_specialized'
    c=dict(level=level,dx=dx,dy=dy,w=w,b=b,coefficients=coefficients,top=top)
    old=np.array([int(s,16) for s in (ROOT/'experiments/fpd2d/rtl'/top/'outputs.hex').read_text().split()],dtype=np.uint32)
    new=model(inputs,c)
    count=int(np.count_nonzero(old!=new))
    assert count==0,(top,count)
    rows.append(dict(top=top,cases=len(inputs),mismatches=count))
(HERE/'control_model_check.json').write_text(json.dumps(rows,indent=2))
print(json.dumps(rows,indent=2))
