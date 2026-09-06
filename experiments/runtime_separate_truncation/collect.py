"""Collect only complete RTL/model/DC/PT/gate points."""
import csv
import hashlib
import importlib.util
import json
import re
from prepare import HERE, ROOT, TOPS

spec=importlib.util.spec_from_file_location('reader',ROOT/'experiments/input_trunc_bias/collect.py')
reader=importlib.util.module_from_spec(spec);spec.loader.exec_module(reader)


def main():
    counts=json.loads((HERE/'counts.json').read_text())
    checks=json.loads((HERE/'checks.json').read_text())
    for p,h in json.loads((HERE/'sources.json').read_text()).items():
        assert hashlib.sha256((ROOT/p).read_bytes()).hexdigest()==h,p
    rows=[]
    for i in (0,3):
        top=TOPS[i]
        assert next(c for c in checks if c['top']==top)['model_mismatches']==0
        for kind,count in [('rtl',8*sum(counts.values())),('gate',8*(1000+counts['1']+counts['2']))]:
            log=(HERE/f'{kind}{i}.log').read_text()
            assert f'RUNTIME PASS checked={count}' in log and 'Errors: 0' in log
            assert 'Fatal:' not in log and 'MISMATCH' not in log
        dc=HERE/'dc'/top; pt=HERE/'pt'/top
        console=(dc/'dc_console.log').read_text()
        assert re.search(r'(?m)^compile\s*$',console)
        assert not re.search(r'(?m)^(ungroup|compile_ultra)(\s|$)|^Error:',console)
        p=reader.reports(top,dc,pt)
        timing=(pt/f'{top}.pt.max_delay.rpt').read_text()
        rows.append(dict(top=top,**p,adp=p['area_um2']*p['delay_ns'],
            critical_startpoint=re.search(r'Startpoint:\s+([^\n]+)',timing).group(1).strip(),status='pass'))
    reader.write_csv(HERE/'ppa.csv',rows)
    report=['# Runtime Separate Truncation: Completed', '',
        'Both designs retain runtime level and operation ports. One shared plane, not four fixed cores.',
        'Common normal-finite FP32 wrapper, TSMC65 typical CCS, 10 ns, no pipeline, ordinary compile, no flatten/ultra.',
        'Reciprocal coefficients remain the original Q0.7 table; no MUL bias in any point.',
        'Residual variant: DIV drops 18/16/16/16; MUL drops 16/14/12/10.',
        'WN variant: DIV plane drops 18/16/16/16, instead of 14. MUL bypasses this stage.',
        'This is a truncation-only ablation, not the complete fixed-level optimization package.', '',
        '| Design | Area um2 | Delay ns | Vectorless power uW | ADP change % |',
        '|---|---:|---:|---:|---:|']
    for r in rows:
        report.append(f'| {r["top"]} | {r["area_um2"]:.2f} | {r["delay_ns"]:.5f} | {1000*r["power_mw"]:.3f} | {100*(r["adp"]/rows[0]["adp"]-1):.2f} |')
    report+=['', '## Packed-Output Accuracy', '',
        'Uniform normalized 100,000-pair dataset. MRED and sampled maximum RE are percentages.', '',
        '| Level | Mode | Original MRED | Separate MRED | Original max RE | Separate max RE |',
        '|---|---|---:|---:|---:|---:|']
    accuracy=list(csv.DictReader((HERE/'accuracy.csv').open()))
    for l in range(4):
        for mode in ('DIV','MUL'):
            matched=[next(r for r in accuracy if r['top']==top and int(r['level'])==l and r['mode']==mode and r['dataset']=='uniform_100k') for top in (TOPS[0],TOPS[3])]
            a,b=matched
            report.append(f'| L{l} | {mode} | {100*float(a["mred"]):.5f} | {100*float(b["mred"]):.5f} | {100*float(a["max_relative"]):.4f} | {100*float(b["max_relative"]):.4f} |')
    report+=['',f'Per design: {checks[0]["checks"]} independent-model RTL checks and {8*(1000+counts["1"]+counts["2"])} gate comparisons passed.',
        'PT check_timing, max/min constraints passed; no sequential cells or black boxes.',
        'accuracy.csv reports packed-output MRED, RMSE, signed mean error and sampled maximum RE.',
        'Boundary maxima are sampled, not formal global bounds. Vectorless power is not workload energy.',
        'No production RTL, canonical results or original runtime 10/14 data replaced.', '']
    (HERE/'RESULTS.md').write_text('\n'.join(report))
    paths=list(HERE.glob('*.py'))+list(HERE.glob('*.v'))+list(HERE.glob('*.sv'))+list(HERE.glob('*.sh'))+list(HERE.glob('*.log'))+list(HERE.glob('dc/*/*.nl.v'))+list(HERE.glob('dc/*/*.rpt'))+list(HERE.glob('pt/*/*.rpt'))
    (HERE/'sha256.json').write_text(json.dumps({str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in paths},indent=2))
    print('\n'.join(report))


if __name__=='__main__':
    main()
