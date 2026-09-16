"""Run serial licensed jobs with simulation libraries on local scratch storage."""
import hashlib
import json
import os
import sys
import tempfile
from pathlib import Path

from prepare import HERE, ROOT, OLD, ABS, MUL, module

engine = module('engine',ABS/'run.py')
reader = module('reader',ROOT/'experiments/input_trunc_bias/collect.py')


def simulate(c,phase,sources):
    top = c['top']
    folder = HERE/phase/top
    folder.mkdir(parents=True,exist_ok=True)
    expected = HERE/f"{c['group']}_l{c['level']}.{phase}.expected.hex"
    tb = HERE/f'{top}.{phase}.tb.sv'
    vectors = OLD/('inputs.hex' if phase == 'rtl' else 'gate_inputs.hex')
    sig = hashlib.sha256(b''.join(p.read_bytes() for p in sources+[tb,expected,vectors])).hexdigest()
    done = folder/'done.sha256'
    if done.exists() and done.read_text() == sig:
        assert (folder/'outputs.hex').read_bytes() == expected.read_bytes()
        return
    work = Path(tempfile.mkdtemp(prefix=f'{top}_{phase}_',dir='/tmp'))/'work'
    engine.call(['vlib',work],folder,folder/'vlib.log')
    engine.call(['vlog','-sv','-timescale','1ns/1ps','-work',work,*sources,tb],folder,folder/'vlog.log')
    engine.call(['vsim','-c','-quiet','-lib',work,'-l',folder/'sim.log','tb','-do',
                 'onerror {quit -code 1}; run -all; quit -f'],folder,folder/'console.log')
    count = expected.stat().st_size//9
    assert f'TUNING_CHECK PASS count={count}' in (folder/'sim.log').read_text()
    assert (folder/'outputs.hex').read_bytes() == expected.read_bytes()
    done.write_text(sig)
    print(f'{phase} PASS {top} count={count}',flush=True)


def main():
    for path,h in json.loads((HERE/'sources.json').read_text()).items():
        assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest() == h,path
    phase = sys.argv[1] if len(sys.argv)>1 else 'all'
    for c in json.loads((HERE/'selected.json').read_text()):
        top = c['top']
        if len(sys.argv)>2 and top not in sys.argv[2:]:
            continue
        sources = [ROOT/'PACE/common/FP_DIV_WRAPPER_32.v',HERE/(top+'.v')]
        if phase in ('rtl','all'):
            simulate(c,'rtl',sources+[MUL,HERE/(c['div_reference']+'.v')])
        if phase in ('ppa','all'):
            assert (HERE/'rtl'/top/'done.sha256').exists()
            dc,pt = HERE/'dc'/top,HERE/'pt'/top
            dc.mkdir(parents=True,exist_ok=True)
            pt.mkdir(parents=True,exist_ok=True)
            flow = [ROOT/'dc/hier_compile_10ns/module.tcl',ROOT/'dc/common_scripts/common.tcl',
                    ROOT/'dc/common_scripts/namingrules.tcl',ROOT/'pt_dc/canonical_refresh/pt.tcl']
            sig = hashlib.sha256(b''.join(p.read_bytes() for p in sources+flow)).hexdigest()
            done = pt/'done.sha256'
            if not done.exists() or done.read_text() != sig:
                env = dict(os.environ,TOP_LEVEL=top,OUTPUT_DIR=str(dc),PERIOD_NS='10.0',RTL_FILES='|'.join(map(str,sources)))
                engine.call(['dc_shell','-f','module.tcl'],ROOT/'dc/hier_compile_10ns',dc/'console.log',env)
                env.update(DC_OUTPUT_DIR=str(dc),REPORT_DIR=str(pt))
                engine.call(['pt_shell','-file',ROOT/'pt_dc/canonical_refresh/pt.tcl'],HERE,pt/'console.log',env)
                p = reader.reports(top,dc,pt)
                (pt/'summary.json').write_text(json.dumps(p,indent=2))
                done.write_text(sig)
                print('PPA PASS '+top+' '+json.dumps(p),flush=True)
        if phase in ('gate','all'):
            simulate(c,'gate',[engine.CELL,HERE/'dc'/top/f'{top}.nl.v'])


if __name__ == '__main__':
    main()
