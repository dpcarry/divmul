"""Publish only fully verified exact shift-add points from this directory."""
import csv
import hashlib
import importlib.util
import json
from pathlib import Path
import re

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
spec=importlib.util.spec_from_file_location('reports',ROOT/'experiments/input_trunc_bias/collect.py')
reader=importlib.util.module_from_spec(spec);spec.loader.exec_module(reader)


def main():
    for path,h in json.loads((HERE/'sources.json').read_text()).items():
        assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest()==h,path
    for l,scale in enumerate([128,1024,2048,4096]):
        for kind,count in [('rtl',208608),('gate',10608)]:
            log=(HERE/f'{kind}_l{l}.log').read_text()
            assert f'RECIP_SHIFTADD PASS L{l} checked={count} scale={scale if kind=="rtl" else 0}' in log
            assert 'Errors: 0' in log and 'MISMATCH' not in log and 'Fatal:' not in log
    rows=[];hashes={};constraints=[]
    for d in json.loads((HERE/'designs.json').read_text()):
        top=d['top'];dc=HERE/'dc'/top;pt=HERE/'pt'/top
        console=(dc/'dc_console.log').read_text()
        assert re.search(r'(?m)^compile\s*$',console)
        assert not re.search(r'(?m)^(?:ungroup|compile_ultra)(?:\s|$)|^Error:',console)
        p=reader.reports(top,dc,pt)
        sdc=(dc/f'{top}.syn.sdc').read_text()
        assert re.search(r'create_clock.*-period 10',sdc),top
        constraints.append('\n'.join(line.strip() for line in sdc.splitlines()
                                     if line.strip() and not line.lstrip().startswith('#')))
        rows.append(dict(**d,**p,adp_um2_ns=p['area_um2']*p['delay_ns'],
                         rtl_vectors=208608,gate_vectors=10608,accuracy='bit-identical to control on all tested vectors',status='pass'))
        for path in list(dc.glob('*.rpt'))+list(dc.glob('*.v'))+list(dc.glob('*.sdc'))+list(pt.glob('*.rpt')):
            hashes[str(path.relative_to(ROOT))]=hashlib.sha256(path.read_bytes()).hexdigest()
    assert len(set(constraints)) == 1, 'exported constraints differ'
    controls={r['level']:r for r in rows if r['kind']=='control'}
    for r in rows:
        base=controls[r['level']]
        for metric in ['area_um2','delay_ns','power_mw','adp_um2_ns']:
            r[metric+'_change_pct']=100*(r[metric]/base[metric]-1)
    reader.write_csv(HERE/'ppa.csv',sorted(rows,key=lambda r:(r['level'],r['kind'])))
    accuracy=list(csv.DictReader((ROOT/'experiments/arithmetic_sharing/accuracy.csv').open()))
    errors=[]
    for r in rows:
        for mode in ['DIV','MUL']:
            a=next(a for a in accuracy if a['level']==str(r['level']) and a['mode']==mode and a['dataset']=='uniform_100k')
            errors.append(dict(top=r['top'],level=r['level'],kind=r['kind'],mode=mode,dataset='arithmetic_sharing/uniform_100k',cases=100000,
                               mred=a['mred'],rmse=a['rmse'],sampled_max_relative=a['max_relative'],
                               source='experiments/arithmetic_sharing/accuracy.csv',
                               validation='same input file; full-output bitwise equivalence to unchanged control'))
    reader.write_csv(HERE/'accuracy.csv',errors)
    drift=[]
    for l,r in controls.items():
        top=r['top'];old=reader.reports(top,ROOT/'experiments/arithmetic_sharing/dc'/top,ROOT/'experiments/arithmetic_sharing/pt'/top)
        drift.append(dict(level=l,**{k+'_drift':r[k]-old[k] for k in ['area_um2','delay_ns','power_mw']}))
    reader.write_csv(HERE/'control_drift.csv',drift)
    report=['# Exact Reciprocal Shift-Add: Completed','',
            'Scope: fixed L0-L3 shared selectable DIV/MUL, not standalone DIV or runtime.',
            'All 12 RTL/DC/PT/gate points passed. No production selection changed.',
            'TSMC65 typical CCS, 10 ns, no pipeline, plain compile, no flatten/ultra.',
            'Power is vectorless PT. No placed-and-routed or workload-energy claim.',
            '208608 full-FP32 RTL cases and 10608 gate cases per design, both modes.',
            'The coefficient stage was additionally exhaustively checked at RTL:',
            '128/1024/2048/4096 retained-operand and legal-coefficient pairs at L0-L3.',
            'All outputs match the original; no accuracy sacrifice or new calibration.','',
            '| Level | Method | Area um2 | Delay ns | Power uW | ADP | ADP change |',
            '|---|---|---:|---:|---:|---:|---:|']
    for l in range(4):
        for kind in ['control','binary','csd']:
            r=next(r for r in rows if r['level']==l and r['kind']==kind)
            report.append(f'| L{l} | {kind} | {r["area_um2"]:.2f} | {r["delay_ns"]:.5f} | {1000*r["power_mw"]:.3f} | {r["adp_um2_ns"]:.2f} | {r["adp_um2_ns_change_pct"]:+.2f}% |')
    report+=['','Changes compare freshly synthesized controls in this experiment.',
             'Control drift versus the previous sharing campaign is in control_drift.csv.',
             'The binary variant gates shifted operands with the existing coefficient bits.',
             'The CSD variant selects precomputed signed-digit masks directly by partition.',
             'Thus CSD changes coefficient encoding/selection as part of the scale stage;',
             'it does not insert a runtime coefficient-to-CSD converter or approximate it.',
             'Intermediate sums use one guard bit; the final product is exactly the original width.',
             'This evaluates these specific balanced trees, not every possible shift/add graph.',
             'No pipeline, operand isolation, retiming, or change to residual/w_n truncation was added.','']
    (HERE/'RESULTS.md').write_text('\n'.join(report))
    for path in list(HERE.glob('*.py'))+list(HERE.glob('*.v'))+list(HERE.glob('*.sv'))+list(HERE.glob('*.log'))+list(HERE.glob('*.csv')):
        hashes[str(path.relative_to(ROOT))]=hashlib.sha256(path.read_bytes()).hexdigest()
    (HERE/'report_sha256.json').write_text(json.dumps(hashes,indent=2)+'\n')
    print('\n'.join(report))


if __name__=='__main__':main()
