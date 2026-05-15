import os
scripts = r'C:\Users\Oleh\Documents\ProTanki-security\artifacts\swf\decompiled_library\scripts'

# Read §with var else§.as
for d in os.listdir(scripts):
    if '5214235774235787' not in d: continue
    pkg_path = os.path.join(scripts, d)
    for f in os.listdir(pkg_path):
        if 'with var else' in f:
            full = os.path.join(pkg_path, f)
            print(f'=== {d}/{f} ===')
            print(open(full, encoding='utf-8').read())
            print()
