"""Run the unchanged 10 ns hierarchy-preserving DC/PT flow and ModelSim tests."""
import hashlib
import importlib.util
import json
import os
import re
import subprocess
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
CELL = Path('/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/verilog/tcbn65gplus_140b/tcbn65gplus.v')


def call(args, cwd, log, env=None):
    with log.open('w') as f:
        subprocess.run(list(map(str, args)), cwd=cwd, env=env, stdout=f, stderr=subprocess.STDOUT, check=True)
    if re.search(r'(?m)^(?:#\s*)?(?:\*\*\s*)?(?:Error:|Fatal:|Error\b)', log.read_text(errors='replace')):
        raise RuntimeError(str(log))


def simulate(top, phase, sources):
    folder = HERE/phase/top
    folder.mkdir(parents=True, exist_ok=True)
    expected = HERE/f'{top}.{phase}.expected.hex'
    signature = hashlib.sha256(b''.join(p.read_bytes() for p in sources+[HERE/f'{top}.{phase}.tb.sv', expected])).hexdigest()
    done = folder/'done.sha256'
    if done.exists() and done.read_text() == signature:
        return
    work = folder/'work'
    call(['vlib', work], folder, folder/'vlib.log')
    call(['vlog', '-sv', '-timescale', '1ns/1ps', '-work', work, *sources, HERE/f'{top}.{phase}.tb.sv'], folder, folder/'vlog.log')
    call(['vsim', '-c', '-quiet', '-lib', work, '-l', folder/'sim.log', 'tb', '-do', 'onerror {quit -code 1}; run -all; quit -f'], folder, folder/'console.log')
    count = expected.stat().st_size//9
    assert f'TUNING_CHECK PASS count={count}' in (folder/'sim.log').read_text()
    assert (folder/'outputs.hex').read_bytes() == expected.read_bytes()
    done.write_text(signature)
    print(f'{phase} PASS {top} count={count}', flush=True)


def main():
    for path, value in json.loads((HERE/'sources.json').read_text()).items():
        assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest() == value, path
    phase = sys.argv[1] if len(sys.argv) > 1 else 'all'
    for c in json.loads((HERE/'selected.json').read_text()):
        top = c['top']
        if len(sys.argv) > 2 and top not in sys.argv[2:]:
            continue
        sources = [ROOT/'PACE/common/FP_DIV_WRAPPER_32.v', HERE/(top+'.v')]
        if phase in ('all', 'rtl'):
            simulate(top, 'rtl', sources)
        if phase in ('all', 'ppa'):
            assert (HERE/'rtl'/top/'done.sha256').exists()
            dc, pt = HERE/'dc'/top, HERE/'pt'/top
            dc.mkdir(parents=True, exist_ok=True)
            pt.mkdir(parents=True, exist_ok=True)
            signature = hashlib.sha256(b''.join(p.read_bytes() for p in sources+[ROOT/'dc/hier_compile_10ns/module.tcl', ROOT/'pt_dc/canonical_refresh/pt.tcl'])).hexdigest()
            done = pt/'done.sha256'
            if not done.exists() or done.read_text() != signature:
                env = dict(os.environ, TOP_LEVEL=top, OUTPUT_DIR=str(dc), PERIOD_NS='10.0', RTL_FILES='|'.join(map(str, sources)))
                call(['dc_shell', '-f', 'module.tcl'], ROOT/'dc/hier_compile_10ns', dc/'console.log', env)
                env.update(DC_OUTPUT_DIR=str(dc), REPORT_DIR=str(pt))
                call(['pt_shell', '-file', ROOT/'pt_dc/canonical_refresh/pt.tcl'], HERE, pt/'console.log', env)
                spec = importlib.util.spec_from_file_location('reader', ROOT/'experiments/input_trunc_bias/collect.py')
                reader = importlib.util.module_from_spec(spec)
                spec.loader.exec_module(reader)
                result = reader.reports(top, dc, pt)
                (pt/'summary.json').write_text(json.dumps(result, indent=2))
                done.write_text(signature)
                print('PPA PASS '+top+' '+json.dumps(result), flush=True)
        if phase in ('all', 'gate'):
            simulate(top, 'gate', [CELL, HERE/'dc'/top/f'{top}.nl.v'])


if __name__ == '__main__':
    main()
