"""Read Fig.8 polyline vertices from its PDF vector graphics, not a raster fit."""
import csv
import hashlib
import json
import re
import subprocess
import xml.etree.ElementTree as ET
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
subprocess.run(['pdftocairo','-f','15','-l','15','-svg',str(ROOT/'PACE.pdf'),
                str(HERE/'paper_page15.svg')],check=True)
tree=ET.parse(HERE/'paper_page15.svg')
# Major axis ticks in PDF points: x=10^3,10^4,10^5; y=0,0.01,...0.05.
# Derived directly from the axis path transforms; their labels were inspected.
x0,x1=155.533,249.502
y0,y05=219.227,91.334
colors={'17.425537%,43.328857%,72.44873%':('dw',0),
        '95.466614%,41.026306%,9.063721%':('pace',1),
        '18.435669%,63.346863%,25.018311%':('pace',2),
        '84.008789%,11.701965%,14.572144%':('pace',3),
        '53.309631%,30.72052%,67.64679%':('pace',4)}
drops=[0,4,8,12,14,15,16,17,18]
rows=[]
for p in tree.getroot().iter('{http://www.w3.org/2000/svg}path'):
    style=p.attrib.get('style',''); d=p.attrib.get('d','')
    if 'stroke-width:0.931;stroke-linecap:square;stroke-linejoin:round;' not in style or d.count(' L ')<4:
        continue
    color=re.search(r'stroke:rgb\(([^)]+)\)',style).group(1)
    family,level=colors[color]
    matrix=[float(v) for v in re.search(r'matrix\(([^)]+)\)',p.attrib['transform']).group(1).split(',')]
    assert matrix[:4]==[1,0,0,-1]
    vertices=re.findall(r'[ML]\s+([-\d.eE+]+)\s+([-\d.eE+]+)',d)
    for drop,(px,py) in zip(drops,vertices):
        x=matrix[4]+float(px); y=matrix[5]-float(py)
        rows.append(dict(family=family,level=level,drop=drop,pdf_x=x,pdf_y=y,
                         paper_adp=10**(3+(x-x0)/(x1-x0)),
                         paper_rmse=(y0-y)*.05/(y0-y05)))
assert len(rows)==42
with (HERE/'paper_digitized.csv').open('w',newline='') as f:
    w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
pace=next(r for r in rows if r['family']=='pace' and r['level']==3 and r['drop']==17)
exact=next(r for r in rows if r['family']=='dw' and r['drop']==18)
ratio=pace['paper_adp']/exact['paper_adp']
evidence=dict(pdf_sha256=hashlib.sha256((ROOT/'PACE.pdf').read_bytes()).hexdigest(),
    page=15,axis_x_log10_ticks=[x0,x1],axis_y_0_and_005=[y0,y05],
    note='Plot-derived coordinates, not author raw measurement files. PDF path rounding limits precision.',
    pace_l3_d17=pace,exact_d18=exact,adp_ratio=ratio,adp_reduction_pct=100*(1-ratio),
    text_claim_reduction_pct=44.3)
(HERE/'paper_digitization.json').write_text(json.dumps(evidence,indent=2)+'\n')
print(json.dumps(evidence,indent=2))

if (HERE/'accuracy.csv').exists():
    local=list(csv.DictReader((HERE/'accuracy.csv').open()))
    matched=[]
    for p in rows:
        name=f'fig8_pace_l{p["level"]}_d{p["drop"]}' if p['family']=='pace' else f'fig8_dw_d{p["drop"]}'
        r=next(r for r in local if r['top']==name and r['dataset']=='uniform_10k')
        matched.append(dict(**p,local_top=name,local_rmse=float(r['rmse']),
                            rmse_delta=float(r['rmse'])-p['paper_rmse']))
    with (HERE/'paper_accuracy_alignment.csv').open('w',newline='') as f:
        w=csv.DictWriter(f,fieldnames=list(matched[0]));w.writeheader();w.writerows(matched)
    print('Maximum absolute RMSE disagreement:',max(abs(r['rmse_delta']) for r in matched))
