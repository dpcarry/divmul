"""Recheck reference arithmetic on the paired and independent validation sets."""
import hashlib
import importlib.util
import json

import numpy as np

from experiment import HERE, ORIGINAL, write_csv


def main():
    source = ORIGINAL/'experiments/fpd2d/prepare.py'
    coeff = ORIGINAL/'experiments/fpd2d/coefficients_milp_8x8.json'
    spec = importlib.util.spec_from_file_location('fpd2d_reference', source)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    module.TABLES['8x8'] = json.loads(coeff.read_text())
    rows = []
    for dataset, values in [('random_200k', np.load(HERE/'inputs.npy')[:200000]),
                            ('independent_200k', np.load(HERE/'independent_inputs.npy'))]:
        x,y = values.T
        reference = x.copy().view(np.float32).astype(np.float64)/y.copy().view(np.float32).astype(np.float64)
        for t in (17,16,15):
            actual = module.model(x,y,8,8,t).view(np.float32).astype(np.float64)
            error = actual-reference
            rows.append(dict(top=f'fpd2d_8x8_t{t}_milp', dataset=dataset, count=len(values),
                             mred=float(np.mean(np.abs(error/reference))), rmse=float(np.sqrt(np.mean(error**2))),
                             max_relative=float(np.max(np.abs(error/reference)))))
    write_csv(HERE/'fpd2d_validation.csv', rows)
    (HERE/'fpd2d_model_sources.json').write_text(json.dumps({str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in (source,coeff)},indent=2))
    print(json.dumps(rows,indent=2))


if __name__ == '__main__':
    main()
