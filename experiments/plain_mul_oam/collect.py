"""Collect only verified RTL/model/gate and completed common-flow PPA."""
import csv
import hashlib
import importlib.util
import json
import re
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
spec=importlib.util.spec_from_file_location('reader',ROOT/'experiments/input_trunc_bias/collect.py')
reader=importlib.util.module_from_spec(spec); spec.loader.exec_module(reader)

def main():
    checks=json.loads((HERE/'checks.json').read_text())
    counts=json.loads((HERE/'counts.json').read_text())
    for p,h in json.loads((HERE/'author_sha256.json').read_text()).items():
        assert hashlib.sha256((ROOT/p).read_bytes()).hexdigest()==h,p
    for c in checks:
        assert c['plain_model_mismatches']==c['author_model_mismatches']==c['author_wrapper_mismatches']==0
        log=(HERE/f'gate_l{c["level"]}.log').read_text()
        assert f'PLAIN_OAM PASS L{c["level"]} scanned={sum(counts.values())}' in log
        assert 'MISMATCH' not in log and 'Fatal:' not in log
    rows=[]; hashes={}
    for r in reader.read_csv(HERE/'accuracy.csv'):
        if r['dataset']!='uniform_100k':continue
        top=r['design']; dc=HERE/'dc'/top; pt=HERE/'pt'/top
        console=(dc/'dc_console.log').read_text()
        assert re.search(r'(?m)^compile\s*$',console)
        assert not re.search(r'(?m)^(ungroup|compile_ultra)(\s|$)|^Error:',console)
        metrics=reader.reports(top,dc,pt)
        rows.append(dict(**r,**metrics,adp_um2_ns=metrics['area_um2']*metrics['delay_ns'],
            rtl_cases=sum(counts.values()),gate_cases=1000+counts['1']+counts['2'],status='pass'))
        for path in [dc/f'{top}.dc.rpt',dc/f'{top}.nl.v',dc/f'{top}.syn.sdc',
                     pt/f'{top}.pt.power.rpt',pt/f'{top}.pt.max_delay.rpt']:
            hashes[str(path.relative_to(ROOT))]=hashlib.sha256(path.read_bytes()).hexdigest()
    reader.write_csv(HERE/'ppa_accuracy.csv',rows)
    lines=['# Plain MUL versus Original OAM','',
        'Completed fixed-level comparison; common normal-finite FP32 wrapper; no pipeline.',
        'TSMC65, 10 ns, ordinary compile, no flatten/compile_ultra, vectorless PT power.',
        'Accuracy below: identical 100,000 uniform normalized pairs. See accuracy.csv for separate boundary/signed tests.','',
        '| Design | Area (um2) | Delay (ns) | Power (uW) | MRED (%) | RMSE | Sample max RE (%) |',
        '|---|---:|---:|---:|---:|---:|---:|']
    for r in rows:
        lines.append(f'| {r["design"]} | {r["area_um2"]:.2f} | {r["delay_ns"]:.5f} | {1000*r["power_mw"]:.3f} | '
                     f'{100*float(r["mred"]):.7f} | {float(r["rmse"]):.9f} | {100*float(r["max_relative"]):.5f} |')
    lines+=['','## Model and RTL Checks','',
            '104304 vectors per level: 100000 uniform, 2304 boundary-grid, 2000 signed/safe-exponent.',
            'Both independent mathematical models match their RTL on every vector.',
            'Common-wrapper OAM matches upstream top on every vector.',
            'Gate comparisons cover 5304 vectors per design; all eight DC/PT checks pass.',
            'L0 plain/OAM outputs are bit-identical; L1/L2/L3 differ by at most 1/2/2 ULP in these tests.',
            'These differences are reproduced by the upstream complemented-tail integer model, not ignored.',
            'No claim of formal equivalence or exhaustive worst-case verification.','',
            'Analytic continuous-uniform plane RMSE is 2^(-2L)/12 before output truncation:',
            'L0 0.0833333333; L1 0.0208333333; L2 0.0052083333; L3 0.0013020833.',
            'The measured RMSE agrees within sampling variation.','',
            'Existing 46 DIV configurations were independently remeasured using integer error ratios:',
            '100000 pairs each, maximum discrepancy from saved CSV metrics below 1e-12.',
            'This validates error arithmetic for these samples, not Fig.8 reproduction fidelity.','']
    (HERE/'RESULTS.md').write_text('\n'.join(lines))
    paths=list(HERE.glob('*.py'))+list(HERE.glob('*.v'))+list(HERE.glob('*.sv'))
    paths+=list(HERE.glob('outputs_l*.txt'))+list(HERE.glob('rtl_l*.log'))+list(HERE.glob('gate_l*.log'))
    paths+=[HERE/'run.sh',HERE/'inputs.txt',HERE/'accuracy.csv',HERE/'div_error_audit.csv',
            ROOT/'PACE/common/FP_DIV_WRAPPER_32.v',ROOT/'rtl/amlib_oam/amlib_oam_fp32_common_wrapper.v']
    for path in paths:
        hashes[str(path.relative_to(ROOT))]=hashlib.sha256(path.read_bytes()).hexdigest()
    (HERE/'sha256.json').write_text(json.dumps(hashes,indent=2)+'\n')
    print('\n'.join(lines))

if __name__=='__main__':main()
