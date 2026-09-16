"""Reuse the established simulation and DC/PT execution policy without edits."""
import hashlib
import importlib.util
import json
import os
import sys

from prepare import HERE, ROOT, ABS, MUL

spec = importlib.util.spec_from_file_location('engine',ABS/'run.py')
engine = importlib.util.module_from_spec(spec)
spec.loader.exec_module(engine)
engine.HERE = HERE


def main():
    for path,h in json.loads((HERE/'sources.json').read_text()).items():
        assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest() == h,path
    phase = sys.argv[1] if len(sys.argv) > 1 else 'all'
    for c in json.loads((HERE/'selected.json').read_text()):
        top = c['top']
        if len(sys.argv) > 2 and top not in sys.argv[2:]:
            continue
        sources = [ROOT/'PACE/common/FP_DIV_WRAPPER_32.v',MUL,HERE/(top+'.v')]
        if phase in ('all','rtl'):
            engine.simulate(top,'rtl',sources+[ABS/(c['div_top']+'.v')])
        if phase in ('all','ppa'):
            assert (HERE/'rtl'/top/'done.sha256').exists()
            dc,pt = HERE/'dc'/top,HERE/'pt'/top
            dc.mkdir(parents=True,exist_ok=True)
            pt.mkdir(parents=True,exist_ok=True)
            signature = hashlib.sha256(b''.join(p.read_bytes() for p in sources+[ROOT/'dc/hier_compile_10ns/module.tcl',ROOT/'pt_dc/canonical_refresh/pt.tcl'])).hexdigest()
            done = pt/'done.sha256'
            if not done.exists() or done.read_text() != signature:
                env = dict(os.environ,TOP_LEVEL=top,OUTPUT_DIR=str(dc),PERIOD_NS='10.0',RTL_FILES='|'.join(map(str,sources)))
                engine.call(['dc_shell','-f','module.tcl'],ROOT/'dc/hier_compile_10ns',dc/'console.log',env)
                env.update(DC_OUTPUT_DIR=str(dc),REPORT_DIR=str(pt))
                engine.call(['pt_shell','-file',ROOT/'pt_dc/canonical_refresh/pt.tcl'],HERE,pt/'console.log',env)
                spec = importlib.util.spec_from_file_location('reader',ROOT/'experiments/input_trunc_bias/collect.py')
                reader = importlib.util.module_from_spec(spec)
                spec.loader.exec_module(reader)
                result = reader.reports(top,dc,pt)
                (pt/'summary.json').write_text(json.dumps(result,indent=2))
                done.write_text(signature)
                print('PPA PASS '+top+' '+json.dumps(result),flush=True)
        if phase in ('all','gate'):
            engine.simulate(top,'gate',[engine.CELL,HERE/'dc'/top/f'{top}.nl.v'])


if __name__ == '__main__':
    main()
