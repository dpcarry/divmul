"""Publish only report-backed, regression-complete comparisons."""
import csv
import hashlib
import importlib.util
import json
import re

import numpy as np

from experiment import HERE, ROOT, ORIGINAL, write_csv


def main():
    selected = json.loads((HERE/'selected.json').read_text())
    metrics = {(r['top'],r['dataset']):r for r in csv.DictReader((HERE/'accuracy.csv').open())}
    spec = importlib.util.spec_from_file_location('reader', ROOT/'experiments/input_trunc_bias/collect.py')
    reader = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(reader)
    rows = []
    for c in selected:
        top = c['top']
        for stage in ('rtl', 'gate'):
            assert (HERE/stage/top/'done.sha256').exists(), (top, stage)
            actual = (HERE/stage/top/'outputs.hex').read_bytes()
            expected = (HERE/f'{top}.{stage}.expected.hex').read_bytes()
            assert actual == expected
        dc, pt = HERE/'dc'/top, HERE/'pt'/top
        assert (pt/'done.sha256').exists()
        log = (dc/'console.log').read_text()
        assert re.search(r'(?m)^compile$', log)
        assert not re.search(r'(?m)^(ungroup|compile_ultra)(\s|$)', log)
        report = reader.reports(top, dc, pt)
        met = metrics[top, 'random_200k']
        fresh = metrics[top, 'independent_200k']
        row = dict(top=top, level=c['level'], kind=c['kind'], slope_fraction_bits=c.get('s','exact'),
                   **report, adp_um2_ns=report['area_um2']*report['delay_ns'],
                   **{k:float(met[k]) for k in ('mred','rmse','mae','mean_error','max_relative','p99_relative')},
                   independent_mred=float(fresh['mred']), independent_rmse=float(fresh['rmse']),
                   rtl_vectors=len((HERE/f'{top}.rtl.expected.hex').read_text().splitlines()),
                   gate_vectors=len((HERE/f'{top}.gate.expected.hex').read_text().splitlines()), status='PASS')
        rows.append(row)
    write_csv(HERE/'ppa_accuracy.csv', rows)
    controls = {r['level']:r for r in rows if r['kind'] == 'control'}
    comparisons = []
    for r in rows:
        if r['kind'] == 'control':
            continue
        base = controls[r['level']]
        comparisons.append(dict(top=r['top'], control=base['top'],
            **{k+'_change_pct':100*(r[k]/base[k]-1) for k in ('area_um2','delay_ns','power_mw','adp_um2_ns','mred','rmse','max_relative')},
            both_errors_no_worse=r['mred'] <= base['mred'] and r['rmse'] <= base['rmse'],
            independent_both_errors_no_worse=r['independent_mred'] <= base['independent_mred'] and r['independent_rmse'] <= base['independent_rmse']))
    write_csv(HERE/'comparison.csv', comparisons)
    absorption = []
    for level in range(4):
        before = next(r for r in rows if r['level'] == level and r['kind'] == 'unabsorbed')
        after = next(r for r in rows if r['level'] == level and r['kind'] == 'exact')
        for phase in ('rtl','gate'):
            assert (HERE/phase/before['top']/'outputs.hex').read_bytes() == (HERE/phase/after['top']/'outputs.hex').read_bytes()
        absorption.append(dict(level=level, before=before['top'], after=after['top'], bit_identical=True,
            **{k+'_change_pct':100*(after[k]/before[k]-1) for k in ('area_um2','delay_ns','power_mw','adp_um2_ns')}))
    write_csv(HERE/'absorption_ablation.csv', absorption)
    # Re-read the previous baseline and FPD2D reports; do not trust just the CSV.
    baseline_rows, reference_hashes = [], {}
    fp_validation = {(r['top'],r['dataset']):r for r in csv.DictReader((HERE/'fpd2d_validation.csv').open())}
    old_reader_root = reader.ROOT
    reader.ROOT = ORIGINAL
    original_data = np.load(ORIGINAL/'experiments/fpd2d/inputs.npy')
    data = np.load(HERE/'inputs.npy')
    assert np.array_equal(data[:200000], original_data[:200000])
    drift = []
    for old in csv.DictReader((ORIGINAL/'experiments/fpd2d/ppa_accuracy.csv').open()):
        top = old['top']
        if not (top.startswith('oadm_fixed_') or top.endswith('_milp')):
            continue
        p = reader.reports(top, ORIGINAL/'experiments/fpd2d/dc'/top, ORIGINAL/'experiments/fpd2d/pt'/top)
        for key in ('area_um2','delay_ns','power_mw'):
            assert abs(p[key]-float(old[key])) < 1e-8
        baseline_rows.append(dict(top=top, source_root=str(ORIGINAL), **p, mred=float(old['mred']), rmse=float(old['rmse']), adp_um2_ns=p['area_um2']*p['delay_ns']))
        for report in [ORIGINAL/p['dc_report'], *list((ORIGINAL/p['pt_dir']).glob('*.rpt'))]:
            reference_hashes[str(report)] = hashlib.sha256(report.read_bytes()).hexdigest()
        if top.endswith('_milp'):
            for key in ('mred','rmse'):
                assert abs(float(old[key])-float(fp_validation[top,'random_200k'][key])) < 1e-14
        if top.startswith('oadm_fixed_'):
            n = int(top.split('_')[2][1:])
            ctrl = controls[n]
            assert abs(ctrl['mred']-float(old['mred'])) < 1e-14
            assert abs(ctrl['rmse']-float(old['rmse'])) < 1e-14
            drift.append(dict(level=n, **{k+'_change_pct':100*(ctrl[k]/p[k]-1) for k in ('area_um2','delay_ns','power_mw')}))
    reader.ROOT = old_reader_root
    write_csv(HERE/'baseline.csv', baseline_rows)
    (HERE/'baseline_report_sha256.json').write_text(json.dumps(reference_hashes,indent=2))
    write_csv(HERE/'control_drift.csv', drift)
    fp_matches = []
    for fp in baseline_rows:
        if not fp['top'].endswith('_milp'):
            continue
        candidates = [r for r in rows if r['kind'] in ('exact','quantized') and r['mred'] <= fp['mred'] and r['rmse'] <= fp['rmse']]
        if candidates:
            best = min(candidates, key=lambda r:r['adp_um2_ns'])
            independent = fp_validation[fp['top'],'independent_200k']
            fp_matches.append(dict(fpd2d=fp['top'], candidate=best['top'], candidate_mred=best['mred'], candidate_rmse=best['rmse'],
                independent_both_errors_no_worse=best['independent_mred'] <= float(independent['mred']) and best['independent_rmse'] <= float(independent['rmse']),
                **{k+'_change_pct':100*(best[k]/fp[k]-1) for k in ('area_um2','delay_ns','power_mw','adp_um2_ns')}))
    if fp_matches:
        write_csv(HERE/'fpd2d_matched.csv', fp_matches)
    retained = {}
    for d in (18,16):
        pairs = ((data[:,0]&0x7fffff) >> d)*128+((data[:,1]&0x7fffff) >> d)
        retained[str(d)] = dict(covered=int(len(np.unique(pairs))), total=2**(2*(23-d)))
        assert retained[str(d)]['covered'] == retained[str(d)]['total']
    report = ['# Absorbed Reciprocal Results', '',
              'All rows passed RTL/model, DC/PT and gate regression. DIV-only, common FP32 wrapper.',
              'Power is vectorless, not measured application power. Error is evaluated on the same 200k pairs.',
              'Original W truncation is absent in every absorbed variant. Exact means exact coefficient absorption, not exact division.', '',
              '| Design | MRED (%) | RMSE | Area (um2) | Delay (ns) | Power (uW) | ADP | Max sampled RE (%) |',
              '|---|---:|---:|---:|---:|---:|---:|---:|---:|']
    for r in rows:
        report.append(f"| {r['top']} | {r['mred']*100:.5f} | {r['rmse']:.6f} | {r['area_um2']:.2f} | {r['delay_ns']:.5f} | {r['power_mw']*1000:.3f} | {r['adp_um2_ns']:.2f} | {r['max_relative']*100:.3f} |")
    report += ['', '## Relative to Original Controls', '',
               '| Candidate | Area change (%) | Delay change (%) | Power change (%) | ADP change (%) | Both errors no worse | Fresh-set match |',
               '|---|---:|---:|---:|---:|---|---|']
    for r in comparisons:
        report.append(f"| {r['top']} | {r['area_um2_change_pct']:.2f} | {r['delay_ns_change_pct']:.2f} | {r['power_mw_change_pct']:.2f} | {r['adp_um2_ns_change_pct']:.2f} | {r['both_errors_no_worse']} | {r['independent_both_errors_no_worse']} |")
    report += ['', '## Same-Output Absorption Ablation', '',
               'Both sides omit W truncation and retain the original coefficients. All RTL and gate outputs agree bit for bit.', '',
               '| Level | Area change (%) | Delay change (%) | Power change (%) | ADP change (%) |',
               '|---|---:|---:|---:|---:|']
    for r in absorption:
        report.append(f"| L{r['level']} | {r['area_um2_change_pct']:.2f} | {r['delay_ns_change_pct']:.2f} | {r['power_mw_change_pct']:.2f} | {r['adp_um2_ns_change_pct']:.2f} |")
    report += ['', '## FPD2D Accuracy-Matched References', '',
               'FPD2D rows are our independently MILP-optimized reconstruction, not supplied author RTL.',
               'Both MRED and RMSE must be no worse; this does not match worst-case error.', '',
               '| FPD2D | Lowest-ADP qualifying candidate | Area change (%) | Power change (%) | ADP change (%) |',
               '|---|---|---:|---:|---:|']
    for r in fp_matches:
        report.append(f"| {r['fpd2d']} | {r['candidate']} | {r['area_um2_change_pct']:.2f} | {r['power_mw_change_pct']:.2f} | {r['adp_um2_ns_change_pct']:.2f} |")
    report += ['', '## Validation and Limitations', '',
               f"RTL cases/design: {rows[0]['rtl_vectors']}; gate cases/design: {rows[0]['gate_vectors']}.",
               'The RTL input set covers all 1,024 retained mantissa pairs at L0 and all 16,384 at L1-L3.',
               'Only retained arithmetic codes are exhaustively covered, not the FP32 input space or exact-quotient error extrema.',
               'Boundary, diagonal, signed and fresh independent errors are separately listed in accuracy.csv.',
               'check_math.py also checks an independent Fraction implementation and computes mantissa-domain worst-case relative errors by bin endpoints; see ERROR_NOTES.md.',
               'No formal equivalence, physical placement/routing, or application activity simulation is claimed.',
               'Shared DIV/MUL savings must be remeasured after any integration; these results cannot be applied to the shared block.',
               'Calibration at the original reciprocal precision selected the original integers at all levels; aliases.json records duplicate variants.',
               'absorption_ablation.csv isolates exact absorption against unabsorbed no-W controls with identical outputs.']
    (HERE/'RESULTS.md').write_text('\n'.join(report)+'\n')
    evidence = [p for p in HERE.rglob('*') if p.is_file() and (p.suffix in ('.rpt','.json','.csv','.v','.py') or p.name in ('sim.log','console.log','done.sha256')) and 'work' not in p.parts]
    (HERE/'evidence_sha256.json').write_text(json.dumps({str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in evidence if p.name != 'evidence_sha256.json'}, indent=2))
    (HERE/'audit.json').write_text(json.dumps(dict(designs=len(rows), status='PASS', retained_code_coverage=retained, control_drift=drift), indent=2))
    print('\n'.join(report))


if __name__ == '__main__':
    main()
