"""Final evidence audit and compact ablation/matched summaries."""
import csv
import hashlib
import importlib.util
import json

import numpy as np

from sweep import HERE,ROOT,write_csv


def main():
    spec=importlib.util.spec_from_file_location('reader',ROOT/'experiments/input_trunc_bias/collect.py')
    reader=importlib.util.module_from_spec(spec);spec.loader.exec_module(reader)
    for p,h in json.loads((HERE/'baseline_sha256.json').read_text()).items():
        assert hashlib.sha256((ROOT/p).read_bytes()).hexdigest()==h,p
    baseline=list(csv.DictReader((HERE/'baseline.csv').open()))
    for r in baseline:
        top=r['top']
        p=reader.reports(top,(ROOT/r['dc_report']).parent,ROOT/r['pt_dir'])
        for metric in ('area_um2','delay_ns','power_mw'):
            assert abs(p[metric]-float(r[metric]))<1e-8,(top,metric)
    selected=json.loads((HERE/'selected.json').read_text())
    evidence=[]
    for c in selected:
        top=c['top']
        for phase in ('rtl','gate'):
            folder=HERE/phase/top
            assert (folder/'done.sha256').exists(),top
            expected=(HERE/f'{top}.{phase}.expected.hex').read_bytes()
            assert (folder/'outputs.hex').read_bytes()==expected,(top,phase)
            assert f'TUNING_CHECK PASS count={len(expected)//9}' in (folder/'sim.log').read_text(),top
        p=reader.reports(top,HERE/'dc'/top,HERE/'pt'/top)
        recorded=json.loads((HERE/'pt'/top/'summary.json').read_text())
        assert p==recorded,top
        console=(HERE/'dc'/top/'console.log').read_text()
        assert '\ncompile\n' in console and '\ncompile_ultra\n' not in console and '\nungroup ' not in console
        evidence.append(dict(top=top,rtl_cases=(HERE/f'{top}.rtl.expected.hex').stat().st_size//9,
                             gate_cases=(HERE/f'{top}.gate.expected.hex').stat().st_size//9,status='pass'))
    rows=list(csv.DictReader((HERE/'ppa_accuracy.csv').open()))
    lookup={r['top']:r for r in rows}
    pairs=json.loads((HERE/'ablation_pairs.json').read_text())
    ablations=[]
    for pair in pairs:
        a,b=pair['reference'],pair['candidate']
        assert (HERE/'rtl'/a/'outputs.hex').read_bytes()==(HERE/'rtl'/b/'outputs.hex').read_bytes(),pair
        assert (HERE/'gate'/a/'outputs.hex').read_bytes()==(HERE/'gate'/b/'outputs.hex').read_bytes(),pair
        ablations.append(dict(**pair,mismatches=0,**{k+'_change_pct':100*(float(lookup[b][k])/float(lookup[a][k])-1)
                         for k in ('area_um2','delay_ns','power_mw','adp_um2_ns')}))
    write_csv(HERE/'ablation.csv',ablations)
    # Identify all winning and non-winning primary matches without hiding losses.
    matched=[]
    for ref in baseline:
        feasible=[r for r in rows if float(r['mred'])<=float(ref['mred']) and float(r['rmse'])<=float(ref['rmse'])]
        if not feasible:continue
        best=min(feasible,key=lambda r:float(r['adp_um2_ns']))
        matched.append(dict(reference=ref['top'],candidate=best['top'],
                            reference_mred=float(ref['mred']),candidate_mred=float(best['mred']),
                            reference_rmse=float(ref['rmse']),candidate_rmse=float(best['rmse']),
                            reference_adp=float(ref['adp_um2_ns']),candidate_adp=float(best['adp_um2_ns']),
                            adp_change_pct=100*(float(best['adp_um2_ns'])/float(ref['adp_um2_ns'])-1)))
    write_csv(HERE/'best_matches.csv',matched)
    diagnostics=json.loads((HERE/'diagnostics.json').read_text())
    screen=json.loads((HERE/'screen.json').read_text())
    unique={tuple(c[k] for k in ('level','dx','dy','w','b')) for c in screen}
    summary=dict(verified_designs=evidence,baseline_report_rows_verified=len(baseline),
                 baseline_hashes_unchanged=True,numerical_configs_with_valid_tables=len(unique),
                 numerical_tables=len(screen),ablations_verified=len(ablations),
                 input_mask_tables=len(json.loads((HERE/'input_screen.json').read_text())))
    (HERE/'audit.json').write_text(json.dumps(summary,indent=2))
    notes=['','## Equivalent Implementation Ablations','',
           'Each row below has bit-identical ModelSim RTL and gate outputs to its paired reference.',
           '| Reference | Variant | Area change (%) | Delay change (%) | Power change (%) | ADP change (%) |',
           '|---|---|---:|---:|---:|---:|']
    for a in ablations:
        notes.append(f'| {a["reference"]} | {a["candidate"]} | {a["area_um2_change_pct"]:+.2f} | {a["delay_ns_change_pct"]:+.2f} | {a["power_mw_change_pct"]:+.2f} | {a["adp_um2_ns_change_pct"]:+.2f} |')
    notes+=['','## Search Coverage and Limits','',
      '- Coarse/refined search visited 3,885 parameter configurations and retained 5,814 valid objective-selected tables.',
      '- Coarse calibration used 4,096 pairs. Shortlisted configurations were recalibrated on 65,536 pairs and screened on an independent 65,536 pairs.',
      '- Both MSE and MRED coefficient objectives were explored; mixed-objective tables were not exhaustively searched.',
      '- The synthesis shortlist uses a width proxy and is not a proof of a globally minimum-area or minimum-ADP implementation.',
      '- Primary accuracy-matched L2/L3 finalists are inside the initial precision search limits. Coarse high-error low-B configurations reach search boundaries; those regions are not claimed optimal.',
      '- Input masking tested 128 calibrated tables. Where at least level+1 fractional bits remain, masking is exactly equivalent to increasing each residual drop to max(drop, 23-input_bits).',
      '- This follows because the midpoint integer is a multiple of 2^(23-input_bits): floor((M-K)/2^E) can be taken after masking M without changing the result for E >= 23-input_bits.',
      '- Input precision below level+1 was not searched. The midpoint-alignment equivalence does not cover that regime.',
      '- Explicit compact-width, input-mask and constant-multiplication variants were measured separately; matching numerical models alone were never counted as PPA evidence.',
      '- No-drop diagnostics keep Q23 arithmetic and finite B=11 coefficients. They are numerical diagnostics, not exact arithmetic or new measured PPA rows.',
      '- Fresh independent-200k error is model-based; the 343,790 common/boundary/signed RTL cases verify the model. Formal exhaustive equivalence was not performed.',
      '- Maximum relative error is sampled and reported separately for each dataset; it is not an analytic upper bound.','']
    with (HERE/'RESULTS.md').open('a') as f:f.write('\n'.join(notes))
    files=list(HERE.glob('*.py'))+list(HERE.glob('*.json'))+list(HERE.glob('*.csv'))+list(HERE.glob('*.v'))
    files=[p for p in files if p.name not in ('final_sha256.json',)]
    (HERE/'final_sha256.json').write_text(json.dumps({str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in files},indent=2))
    print(json.dumps(matched,indent=2))


if __name__=='__main__':main()
