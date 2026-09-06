"""Strict evaluator for the small, already mapped L0 constant-product module."""
from collections import Counter
import hashlib
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
TOP = 'oadm_fixed_l0_divmul_root_opt'
NETLIST = HERE.parent / 'dc' / TOP / (TOP + '.nl.v')
MODULE = 'oadm_fixed_divmul_root_opt_0_18_16_18_7_3b_DW_mult_uns_0'
source = NETLIST.read_text()
body = source.split('module ' + MODULE + ' (', 1)[1].split('endmodule', 1)[0]
cells = []
for statement in body.split(';')[1:]:
    statement = statement.strip()
    if not statement or statement.startswith(('input ', 'output ', 'wire ')):
        continue
    match = re.fullmatch(r'(\w+)\s+(\w+)\s*\((.*)\)', statement, re.S)
    assert match, statement
    kind, name, connections = match.groups()
    ports = dict(re.findall(r'\.(\w+)\((\w+(?:\[\d+\])?)\)', connections))
    assert re.sub(r'\.(\w+)\((\w+(?:\[\d+\])?)\)|[\s,]', '', connections) == ''
    assert not any(net.startswith('b[') for net in ports.values())
    cells.append((kind, name, ports))

# Boolean functions checked against the actual TSMC65 simulation cell library.
def evaluate(kind, inputs):
    if kind in ('FA1D0', 'HA1D0'):
        total = sum(inputs.values())
        return {'S': total & 1, 'CO': total >> 1}
    if kind == 'INVD1':
        return {'ZN': 1 - inputs['I']}
    if kind == 'CKBD1':
        return {'Z': inputs['I']}
    a, b = inputs['A1'], inputs['A2']
    if kind == 'XNR2D0':
        return {'ZN': 1 ^ a ^ b}
    if kind == 'CKND2D0':
        return {'ZN': 1 - (a & b)}
    if kind == 'NR2D0':
        return {'ZN': 1 - (a | b)}
    raise ValueError(kind)

rows = []
for a in range(128):
    values = {f'a[{i}]': (a >> i) & 1 for i in range(7)}
    pending = list(cells)
    while pending:
        remaining = []
        for kind, name, ports in pending:
            inputs = {p: net for p, net in ports.items() if p not in ('S', 'CO', 'ZN', 'Z')}
            if not all(net in values for net in inputs.values()):
                remaining.append((kind, name, ports))
                continue
            outputs = evaluate(kind, {p: values[net] for p, net in inputs.items()})
            assert set(outputs) == set(ports) - set(inputs)
            for p, bit in outputs.items():
                assert ports[p] not in values
                values[ports[p]] = bit
        assert len(remaining) < len(pending), remaining
        pending = remaining
    product = sum(values[f'product[{i}]'] << i for i in range(13))
    assert product == 59 * a == (a << 6) - (a << 2) - a
    rows.append({'a': a, 'gate_product': product})

result = {
    'netlist': str(NETLIST),
    'sha256': hashlib.sha256(NETLIST.read_bytes()).hexdigest(),
    'module': MODULE,
    'cell_counts': dict(sorted(Counter(k for k, _, _ in cells).items())),
    'total_cells': len(cells),
    'coefficient_b_used': False,
    'exhaustive_cases': len(rows),
    'mismatches': 0,
    'method': 'Boolean evaluation of mapped cell connectivity, not timing simulation',
    'vectors': rows,
}
(HERE / 'audit.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps({k: v for k, v in result.items() if k != 'vectors'}, indent=2))
