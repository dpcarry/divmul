"""Diagnose existing B/C netlists; do not synthesize or replace PPA results."""
import csv
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]


def main():
    for manifest in (HERE.parent / 'source_sha256.json', HERE.parent / 'sha256.json'):
        for path, expected in json.loads(manifest.read_text()).items():
            assert hashlib.sha256((ROOT / path).read_bytes()).hexdigest() == expected, path
    results = []
    hashes = {}
    for level in range(4):
        for role, suffix in [('B', 'unshared'), ('C', 'root_opt')]:
            top = f'oadm_fixed_l{level}_divmul_{suffix}'
            dc = HERE.parent / 'dc' / top
            for ext in ('nl.v', 'syn.sdc'):
                path = dc / f'{top}.{ext}'
                hashes[str(path.relative_to(ROOT))] = hashlib.sha256(path.read_bytes()).hexdigest()
            env = dict(os.environ, TOP_LEVEL=top, RESEARCH_ROOT=str(ROOT))
            log_path = HERE / f'{top}.log'
            with log_path.open('w') as log:
                subprocess.run(['pt_shell', '-file', str(HERE / 'paths.tcl')],
                               cwd=HERE, env=env, stdout=log, stderr=subprocess.STDOUT, check=True)
            log = log_path.read_text()
            assert f'LEVEL_PATH_AUDIT_COMPLETE {top}' in log
            assert not re.search(r'(?m)^(Error:|Fatal:)', log), log_path
            for report in sorted((HERE / top).glob('*.rpt')):
                text = report.read_text()
                start = re.search(r'Startpoint:\s+([^\n]+)', text)
                end = re.search(r'Endpoint:\s+([^\n]+)', text)
                arrival = re.search(r'data arrival time\s+([\d.]+)', text)
                assert start and end and arrival, report
                results.append(dict(level=level, role=role, group=report.stem,
                                    start=start[1], end=end[1], arrival_ns=arrival[1],
                                    report=str(report.relative_to(ROOT))))
            old = (HERE.parent / 'pt' / top / f'{top}.pt.max_delay.rpt').read_text()
            expected = re.search(r'data arrival time\s+([\d.]+)', old)[1]
            actual = next(r['arrival_ns'] for r in results
                          if r['level'] == level and r['role'] == role and r['group'] == 'global')
            assert abs(float(expected) - float(actual)) < 0.00002, (top, expected, actual)
            print(f'PASS {top}: original global delay reproduced, grouped/mode-fixed reports complete', flush=True)
    with (HERE / 'paths.csv').open('w', newline='') as handle:
        writer = csv.DictWriter(handle, fieldnames=list(results[0]))
        writer.writeheader()
        writer.writerows(results)
    (HERE / 'netlist_sdc_sha256.json').write_text(json.dumps(hashes, indent=2) + '\n')
    print(f'PASS: {len(results)} diagnostic rows; no canonical results modified', flush=True)


if __name__ == '__main__':
    main()
