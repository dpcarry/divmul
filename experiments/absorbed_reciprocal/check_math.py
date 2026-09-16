"""Independent rational checks and exact mantissa-domain worst relative errors."""
import json
from fractions import Fraction

import numpy as np

from experiment import HERE, Q, core, model, random_inputs, write_csv


def rounded(v):
    return (v+Fraction(1,2)).numerator // (v+Fraction(1,2)).denominator


def scalar(x, y, c):
    n, d, b = c['level'], c['d'], c['b']
    ix, iy = (int(x)&(Q-1)) >> (23-n), (int(y)&(Q-1)) >> (23-n)
    kx, ky = 1+Fraction(2*ix+1,2**(n+1)), 1+Fraction(2*iy+1,2**(n+1))
    mx, my = 1+Fraction(int(x)&(Q-1),Q), 1+Fraction(int(y)&(Q-1),Q)
    step = Fraction(2**d,Q)
    rx, ry = ((mx-kx)//step)*step, ((my-ky)//step)*step
    coef = Fraction(c['coefficients'][iy],2**b)
    if c['kind'] in ('exact','unabsorbed','control'):
        plane = kx*ky+ky*rx-kx*ry
        if c['kind'] == 'control':
            plane = (plane//step)*step
        z = plane*coef
    else:
        s = c['s']
        f = s+23-d
        a = Fraction(rounded(coef*ky*2**s),2**s)
        zc = Fraction(rounded(coef*kx*2**s),2**s)
        t = Fraction(rounded(coef*kx*ky*2**f),2**f)
        z = t+a*rx-zc*ry
    assert (z*Q).denominator == 1
    return int(z*Q)


def main():
    rows = []
    for c in json.loads((HERE/'selected.json').read_text()):
        inputs = random_inputs(2026091704,1024)
        expected = np.array([scalar(x,y,c) for x,y in inputs], dtype=np.int64)
        assert np.array_equal(expected,core(inputs,c)), c['top']
        # Every result is constant within one retained-input bin. For positive
        # result z, z*y/x is monotone in each operand; extrema lie at corners.
        d = c['d']
        lo = np.arange(0,Q,2**d,dtype=np.int64)+Q
        xlo,ylo = np.meshgrid(lo,lo,indexing='ij')
        xlo,ylo = xlo.ravel(),ylo.ravel()
        xhi,yhi = xlo+2**d-1,ylo+2**d-1
        bits = np.column_stack((xlo-Q+0x3f800000,ylo-Q+0x3f800000)).astype(np.uint32)
        v = core(bits,c)
        assert np.array_equal(model(bits,c).view(np.float32).astype(np.float64),v/Q)
        relative = np.stack((np.abs(v*yhi-Q*xlo)/(Q*xlo),np.abs(v*ylo-Q*xhi)/(Q*xhi)))
        corner,index = np.unravel_index(np.argmax(relative),relative.shape)
        x,y = (xlo[index],yhi[index]) if corner == 0 else (xhi[index],ylo[index])
        rows.append(dict(top=c['top'], level=c['level'], kind=c['kind'],
            worst_relative=float(relative[corner,index]), x_mantissa_integer=int(x),y_mantissa_integer=int(y),
            output_q23_integer=int(v[index]),bins=len(v), rational_check_cases=len(inputs)))
    write_csv(HERE/'mantissa_worst_case.csv',rows)
    print(json.dumps(rows,indent=2))


if __name__ == '__main__':
    main()
