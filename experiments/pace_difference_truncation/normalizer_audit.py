"""Record examples where the retained author normalizer leaves its assumed range."""
import csv
import json
from pathlib import Path
from measure import model, decode

HERE=Path(__file__).resolve().parent
configs=json.loads((HERE/'designs.json').read_text())
counts={}
examples=[]
with (HERE/'rtl_outputs.txt').open() as f:
    for line in f:
        parts=line.split()
        if parts[0]!='0': continue
        x,y=int(parts[1],16),int(parts[2],16)
        for i,c in enumerate(configs):
            if c['level']<3 or c['drop'] not in (0,17,18): continue
            if counts.get(c['design'],0)>=2: continue
            packed,z,ideal,q=model(x,y,c['level'],c['drop'])
            if .5<=q/(1<<24)<2: continue
            assert packed==int(parts[i+3],16)
            examples.append(dict(design=c['design'],x_hex=f'{x:08x}',y_hex=f'{y:08x}',
                                 rtl_hex=f'{packed:08x}',reference=decode(x)/decode(y),
                                 equation27_quotient=ideal,partial_sum_quotient=q/(1<<24),
                                 packed_quotient=decode(packed)))
            counts[c['design']]=counts.get(c['design'],0)+1
        if len(examples)==12: break
with (HERE/'normalizer_examples.csv').open('w',newline='') as f:
    writer=csv.DictWriter(f,fieldnames=list(examples[0]));writer.writeheader();writer.writerows(examples)
print(json.dumps(examples[:2],indent=2))
