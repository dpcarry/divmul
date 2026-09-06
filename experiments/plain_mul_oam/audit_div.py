"""Recompute existing DIV metrics from raw outputs using integer error ratios."""
import csv
import json
import math
from pathlib import Path
from measure import decode

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]

def main():
    results=[]
    for folder,tagged in [('pace_difference_truncation',True),('div_truncation_figure',False)]:
        base=ROOT/'experiments'/folder
        configs=json.loads((base/'designs.json').read_text())
        with (base/('accuracy.csv' if tagged else 'comparison.csv')).open() as f:
            old={r['design']:r for r in csv.DictReader(f) if not tagged or r['dataset']=='uniform_100k'}
        sums=[([],[],[]) for _ in configs]; count=0
        for line in (base/'rtl_outputs.txt').open():
            parts=line.split()
            if tagged:
                if int(parts.pop(0))!=0: continue
            values=[int(v,16) for v in parts]
            x,y=values[:2]
            assert x>>23==127 and y>>23==127
            X=(1<<23)+(x&0x7fffff); Y=(1<<23)+(y&0x7fffff)
            for i,out in enumerate(values[2:]):
                A,B=decode(out).as_integer_ratio()
                # No floating-point division or subtraction to form the error.
                N=A*Y-X*B
                e=N/(B*Y); rel=abs(N)/(B*X)
                sums[i][0].append(e*e);sums[i][1].append(rel);sums[i][2].append(abs(e))
            count+=1
        assert count==100000
        for c,(sq,rel,ab) in zip(configs,sums):
            name=c['design']; r=old[name]
            metrics=dict(rmse=math.sqrt(math.fsum(sq)/count),mred=math.fsum(rel)/count,
                         mae=math.fsum(ab)/count,max_relative=max(rel))
            deltas={k:abs(v-float(r[k])) for k,v in metrics.items()}
            assert max(deltas.values())<1e-12,(name,deltas)
            results.append(dict(design=name,cases=count,**metrics,max_csv_delta=max(deltas.values())))
    with (HERE/'div_error_audit.csv').open('w',newline='') as f:
        w=csv.DictWriter(f,fieldnames=list(results[0]));w.writeheader();w.writerows(results)
    print(f'PASS: {len(results)} DIV configurations, 100000 inputs each; max CSV difference '
          f'{max(r["max_csv_delta"] for r in results):.3g}')

if __name__=='__main__':main()
