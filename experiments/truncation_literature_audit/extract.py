"""Inventory local root-level research PDFs and extract their text for audit."""
import hashlib
import json
import subprocess
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
out = HERE / 'texts'
out.mkdir(exist_ok=True)
rows = []
for i, path in enumerate(sorted(ROOT.glob('*.pdf'))):
    target = out / f'{i:02d}.txt'
    subprocess.run(['pdftotext', '-layout', str(path), str(target)], check=True)
    rows.append(dict(id=i, source=str(path.relative_to(ROOT)),
                     sha256=hashlib.sha256(path.read_bytes()).hexdigest(),
                     text=str(target.relative_to(HERE))))
(HERE / 'inventory.json').write_text(json.dumps(rows, indent=2) + '\n')
for row in rows:
    print(row['id'], row['source'])

