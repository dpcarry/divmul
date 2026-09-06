#!/usr/bin/env python3
"""Publish only completed report- and simulation-backed experiment results."""
import csv
import hashlib
import json
import re
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
OUT = HERE / 'results'

def read_csv(path):
    with path.open(newline='') as f:
        return list(csv.DictReader(f))

def write_csv(path, rows):
    with path.open('w', newline='') as f:
        w = csv.DictWriter(f, fieldnames=list(rows[0]))
        w.writeheader()
        w.writerows(rows)

def number(pattern, text):
    match = re.search(pattern, text)
    if not match:
        raise ValueError(pattern)
    return float(match.group(1))

def reports(top, dc_dir, pt_dir):
    dc = (dc_dir / f'{top}.dc.rpt').read_text()
    maximum = (pt_dir / f'{top}.pt.max_delay.rpt').read_text()
    power = (pt_dir / f'{top}.pt.power.rpt').read_text()
    check = (pt_dir / f'{top}.pt.check_timing.rpt').read_text()
    assert 'check_timing succeeded.' in check, top
    assert number(r'Number of sequential cells:\s+(\d+)', dc) == 0, top
    assert number(r'Number of macros/black boxes:\s+(\d+)', dc) == 0, top
    for suffix in ('max_delay', 'min_delay', 'max_delay.violations', 'min_delay.violations'):
        assert 'VIOLATED' not in (pt_dir / f'{top}.pt.{suffix}.rpt').read_text(), top
    return dict(area_um2=number(r'Total cell area:\s+([\d.eE+-]+)', dc),
                delay_ns=number(r'data arrival time\s+([\d.eE+-]+)', maximum),
                slack_ns=number(r'slack \(MET\)\s+([\d.eE+-]+)', maximum),
                power_mw=1000 * number(r'Total Power\s+=\s+([\d.eE+-]+)', power),
                dc_report=str((dc_dir / f'{top}.dc.rpt').relative_to(ROOT)),
                pt_dir=str(pt_dir.relative_to(ROOT)))

def main():
    counts = []
    for kind in ('rtl', 'gate'):
        text = (OUT / f'{kind}_check.log').read_text()
        assert 'MISMATCH' not in text and 'Fatal:' not in text
        counts.append(int(number(r'INPUT_TRUNC_CHECK PASS: (\d+)', text)))
    assert counts[0] == counts[1]
    accuracy = {r['design']: r for r in read_csv(OUT / 'accuracy.csv') if r['dataset'] == 'random_200k'}
    selected = json.loads((OUT / 'selected.json').read_text())
    rows = []
    for name, c in selected.items():
        console = (HERE / 'dc' / name / 'dc_console.log').read_text()
        assert re.search(r'(?m)^compile$', console)
        assert not re.search(r'(?m)^(ungroup|compile_ultra)(\s|$)', console)
        assert not re.search(r'(?m)^Error:', console)
        p = reports(name, HERE / 'dc' / name, HERE / 'pt' / name)
        rows.append(dict(design=name, mode=c['mode'], bits=c['bits'], level='',
                         **p, **{k: accuracy[name][k] for k in ('mae','mred','rmse','mean_error','max_relative','p99_relative')},
                         rtl_vectors=counts[0], gate_vectors=counts[1], status='pass'))
    for mode in ('div', 'mul'):
        for level in range(4):
            name = f'oadm_{mode}_l{level}'
            if mode == 'div':
                top = f'oadm_fixed_l{level}_div_specialized'
                base = ROOT / 'experiments/fixed_div_level_specialization'
                p = reports(top, base / 'dc' / top, base / 'pt' / top)
            else:
                top = f'oadm_fixed_l{level}_mul_root_opt'
                p = reports(top, ROOT / 'dc/hier_compile_10ns/outputs/mul_root' / top,
                            ROOT / 'pt_dc/hier_compile_10ns/reports/mul_root' / top)
            rows.append(dict(design=name, mode=mode, bits='', level=level,
                             **p, **{k: accuracy[name][k] for k in ('mae','mred','rmse','mean_error','max_relative','p99_relative')},
                             rtl_vectors=counts[0], gate_vectors='existing campaign', status='pass'))
    write_csv(OUT / 'ppa_accuracy.csv', rows)
    lookup = {r['design']: r for r in rows}
    pairs = []
    for match in read_csv(OUT / 'matched_accuracy.csv'):
        old, new = lookup[match['oadm']], lookup[match['candidate']]
        pairs.append(dict(**match, oadm_area=old['area_um2'], candidate_area=new['area_um2'],
                          area_change_pct=100 * (new['area_um2']/old['area_um2']-1),
                          oadm_delay=old['delay_ns'], candidate_delay=new['delay_ns'],
                          oadm_power_mw=old['power_mw'], candidate_power_mw=new['power_mw'],
                          oadm_adp=old['area_um2']*old['delay_ns'], candidate_adp=new['area_um2']*new['delay_ns']))
    write_csv(OUT / 'comparison.csv', pairs)
    report = ['# Completed Results', '',
              'Accuracy uses the same 200,000 uniform random normalized significand pairs.',
              'Candidate selection matches MRED and RMSE; it does not require lower MAE or signed bias.',
              'All seven candidates passed RTL/model and gate comparisons on 21,129 vectors each.',
              'DC/PT: ordinary compile, hierarchy preserved, common FP32 wrapper, TSMC65, 10 ns.', '',
              '| Design | MRED (%) | RMSE | MAE | Area (um2) | Delay (ns) | Power (uW) | Sample max RE (%) |',
              '|---|---:|---:|---:|---:|---:|---:|---:|']
    for r in sorted(rows, key=lambda r: (r['mode'], str(r['level']), str(r['bits']))):
        report.append(f"| {r['design']} | {100*float(r['mred']):.5f} | {float(r['rmse']):.6f} | {float(r['mae']):.6f} | {r['area_um2']:.2f} | {r['delay_ns']:.5f} | {1000*r['power_mw']:.3f} | {100*float(r['max_relative']):.3f} |")
    report += ['', '## Matched Comparisons', '',
               '| OADM reference | Candidate | Area change (%) | ADP change (%) | Power change (%) |',
               '|---|---|---:|---:|---:|']
    for p in pairs:
        report.append(f"| {p['oadm']} | {p['candidate']} | {p['area_change_pct']:.2f} | {100*(p['candidate_adp']/p['oadm_adp']-1):.2f} | {100*(p['candidate_power_mw']/p['oadm_power_mw']-1):.2f} |")
    report += ['', 'Boundary-grid accuracy is in `accuracy.csv`. On that distribution, MUL b=7/9',
               'has worse average MRED/RMSE than OADM L2/L3. Maxima are sampled, not formal bounds.',
               'These results concern standalone fixed MUL/DIV, not runtime configurability or sharing.',
               'TruncApp provenance and the relevant PACE Figure 8 discussion are in `../README.md`.', '']
    (OUT / 'RESULTS.md').write_text('\n'.join(report))
    sources = [ROOT / 'PACE/common/FP_DIV_WRAPPER_32.v', ROOT / 'rtl/mul_root_opt/oadm_mul_root_opt.v',
               ROOT / 'experiments/fixed_div_level_specialization/specialized_rtl.v']
    sources += list(HERE.glob('*.py')) + list(HERE.glob('*.v')) + list(HERE.glob('*.sv')) + list(HERE.glob('*.sh'))
    sources += list((HERE / 'dc').glob('*/*.nl.v'))
    (OUT / 'sha256.json').write_text(json.dumps({str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest()
                                              for p in sources}, indent=2) + '\n')
    import matplotlib
    matplotlib.use('Agg')
    import matplotlib.pyplot as plt
    fig, axes = plt.subplots(1, 2, figsize=(9, 3.7))
    for ax, mode in zip(axes, ('div','mul')):
        for is_oadm, label, marker in ((True,'OADM','o'), (False,'Input truncation + half-step','s')):
            group = [r for r in rows if r['mode'] == mode and r['design'].startswith('oadm') == is_oadm]
            ax.plot([r['area_um2'] for r in group], [100*float(r['mred']) for r in group], marker=marker, label=label)
            for r in group:
                ax.annotate(f"L{r['level']}" if is_oadm else f"b={r['bits']}",
                            (r['area_um2'],100*float(r['mred'])), xytext=(4,4), textcoords='offset points', fontsize=8)
        ax.set(title=mode.upper(), xlabel='Area (um$^2$)', ylabel='MRED (%)', yscale='log')
        ax.margins(x=.10, y=.12)
        ax.grid(alpha=.25)
        ax.legend(fontsize=8)
    fig.tight_layout()
    fig.savefig(OUT / 'area_accuracy.pdf')
    fig.savefig(OUT / 'area_accuracy.png', dpi=180)
    print(json.dumps(pairs, indent=2))

if __name__ == '__main__':
    main()
