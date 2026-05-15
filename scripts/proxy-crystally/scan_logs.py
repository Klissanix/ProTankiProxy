"""Quick log scanner: find buy packets and crystal updates across all logs."""
import json, glob, sys, os, struct
sys.stdout.reconfigure(encoding='utf-8')

LOG_DIR = os.path.join(os.path.dirname(__file__), 'logs')
BUY_PIDS = (-1961983005, -523392052)

files = sorted(glob.glob(os.path.join(LOG_DIR, '*.jsonl')))
for f in files:
    fname = os.path.basename(f)
    lines = open(f, encoding='utf-8').readlines()
    hits = []
    for i, l in enumerate(lines):
        d = json.loads(l)
        ev = d['event']
        pid = d.get('pid')
        if ev in ('CRYSTAL_UPDATE', 'INJECT') or pid in BUY_PIDS:
            h = str(d.get('hex') or '')[:80]
            bal = f" balance={d['balance']}" if 'balance' in d else ''
            hits.append(f"  L{i:3d} {d['ts']} {ev:<22} pid={str(pid or ''):<14}{bal} hex={h}")

    if hits:
        print(f"=== {fname} ({len(lines)} lines) ===")
        for x in hits:
            print(x)
        print()
