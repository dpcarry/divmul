"""Compare both PACE hypotheses using identical captured RTL input pairs."""
import csv
import json
import math
import struct
from pathlib import Path

HERE=Path(__file__).resolve().parent
OLD=HERE.parent/'pace_difference_truncation'
def fp(w): return struct.unpack('>f',struct.pack('>I',w))[0]
new_pairs=[]
with (HERE/'inputs.txt').open() as stream:
    for line in stream:
        d,x,y=line.split()
        if d=='0': new_pairs.append((int(x,16),int(y,16)))
configs=json.loads((OLD/'designs.json').read_text())
square_sums=[0.]*len(configs)
cases=0
with (OLD/'rtl_outputs.txt').open() as stream:
    for line in stream:
        parts=line.split()
        if parts[0]!='0': continue
        values=[int(w,16) for w in parts[1:]]
        x,y=values[:2]
        assert (x,y)==new_pairs[cases]
        exact=fp(x)/fp(y)
        for i,out in enumerate(values[2:]): square_sums[i]+=(fp(out)-exact)**2
        cases+=1
        if cases==len(new_pairs): break
assert cases==10000
zonly={(c['level'],c['drop']):math.sqrt(s/cases) for c,s in zip(configs,square_sums)}
rows=[]
with (HERE/'paper_accuracy_alignment.csv').open() as stream:
    for row in csv.DictReader(stream):
        if row['family']!='pace': continue
        level,drop=int(row['level']),int(row['drop'])
        paper=float(row['paper_rmse']); narrow=float(row['local_rmse'])
        wide=zonly[level,drop]
        rows.append(dict(level=level,drop=drop,cases=cases,paper_rmse=paper,
                         whole_width_rmse=narrow,z_only_rmse=wide,
                         whole_width_delta=narrow-paper,z_only_delta=wide-paper))
with (HERE/'hypothesis_alignment.csv').open('w',newline='') as f:
    w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
for row in rows:
    if row['drop']=={1:18,2:18,3:17,4:16}[row['level']]: print(row)
print('PASS: both RTL captures use the identical 10,000 uniform input pairs')
