"""Join all measured OADM variants and DW baselines on identical inputs."""
import csv
import hashlib
from itertools import islice
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
DW=HERE.parent/'pace_fig8_reverse'

def read(path):
    with path.open() as f:
        return list(csv.DictReader(f))

def inputs(path):
    with path.open() as f:
        return list(islice((line.split()[1:3] for line in f if int(line.split()[0])==0),10000))

def main():
    assert inputs(HERE/'inputs.txt')==inputs(DW/'inputs.txt')
    assert len(inputs(HERE/'inputs.txt'))==10000
    for folder in (HERE,DW):
        for name in ('source_sha256.json','report_sha256.json'):
            for path,digest in json.loads((folder/name).read_text()).items():
                assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest()==digest,path
    acc={r['top']:r for r in read(HERE/'accuracy.csv') if r['dataset']=='uniform_10k'}
    rows=[]
    for origin,source in [('oadm',HERE),('dw',DW)]:
        for r in read(source/'ppa_accuracy.csv'):
            if origin=='dw' and r['family']!='dw':continue
            assert r['status']=='pass'
            a=acc[r['top']] if origin=='oadm' else r
            assert a['cases']=='10000'
            row=dict(family=origin,top=r['top'],level=r['level'],bits=r['bits'],
                     variant=r['kind'] if origin=='oadm' else r['rounding'],
                     wrapper='common' if origin=='oadm' else r['shell'],
                     dataset='uniform_10k',cases=10000)
            row.update({k:a[k] for k in ('rmse','mred','max_relative')})
            row.update({k:r[k] for k in ('area_um2','delay_ns','power_mw','adp_um2_ns','dc_report','pt_dir','status')})
            rows.append(row)
    assert len(rows)==57
    with (HERE/'oadm_vs_dw_all_10k.csv').open('w',newline='') as f:
        writer=csv.DictWriter(f,fieldnames=list(rows[0]));writer.writeheader();writer.writerows(rows)
    print('57 verified configurations; identical 10000 input pairs')
    for r in rows:
        b,l=int(r['bits']),int(r['level']) if r['level'] else 0
        if r['family']=='oadm' and r['variant']!='control' and b>(5 if l==0 else 7):continue
        print(r['top'],*(f'{float(r[k])*s:.6f}' for k,s in [('rmse',1),('mred',100),('area_um2',1),
              ('delay_ns',1),('power_mw',1000),('adp_um2_ns',1)]))

if __name__=='__main__':main()
