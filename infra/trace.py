#!/usr/bin/env python3
import os
import glob
import re
import yaml

CH_ORDER = {
    'chA': 1, 'chB': 2, 'chC': 3, 'chD': 4, 'chE': 5, 'chF': 6, 'chG': 7,
    'ch01': 8, 'ch02': 9, 'ch03': 10, 'ch04': 11, 'ch05': 12, 'ch06': 13,
    'ch07': 14, 'ch08': 15, 'ch09': 16
}

def parse_tex_file(filepath):
    data = {
        'filepath': filepath,
        'module_id': None,
        'status': 'UNKNOWN',
        'feeds': 'none',
        'sources': 'none',
        'depends_on': [],
        'regulators': 'none'
    }
    with open(filepath, 'r') as f:
        for line in f:
            if not line.startswith('%'):
                continue
            match_id = re.search(r'% Module ID:\s*(.+)', line)
            if match_id: data['module_id'] = match_id.group(1).strip()
            
            match_status = re.search(r'% Status:\s*(.+)', line)
            if match_status: data['status'] = match_status.group(1).strip()
            
            match_feeds = re.search(r'% Target TOC Section:\s*(.+)', line) or re.search(r'% Feeds:\s*(.+)', line)
            if match_feeds: data['feeds'] = match_feeds.group(1).strip()
            
            match_sources = re.search(r'% Sources:\s*(.+)', line)
            if match_sources: data['sources'] = match_sources.group(1).strip()
            
            match_depends = re.search(r'% Depends On:\s*(.+)', line)
            if match_depends: 
                deps = match_depends.group(1).split(',')
                data['depends_on'] = [d.strip() for d in deps if d.strip()]
                
            match_regs = re.search(r'% Regulators:\s*(.+)', line)
            if match_regs: data['regulators'] = match_regs.group(1).strip()
    return data

def main():
    modules = []
    for filepath in glob.glob('src/ch*/*.tex'):
        modules.append(parse_tex_file(filepath))
        
    manifest = {}
    for m in modules:
        if m['module_id']:
            manifest[m['module_id']] = m
            
    # DAG and Cycle Check
    # For simplicity, we just check chapter order dependencies.
    # In a full tool, we would build a graph and run topological sort.
    print("Running DAG checks...")
    for m in modules:
        mod_ch = m['filepath'].split('/')[1]
        mod_order = CH_ORDER.get(mod_ch, 99)
        for dep in m['depends_on']:
            # Assuming dep label is something like chA_m01:thm:1
            dep_ch_match = re.match(r'(ch[A-G0-9]+)', dep)
            if dep_ch_match:
                dep_ch = dep_ch_match.group(1)
                dep_order = CH_ORDER.get(dep_ch, 99)
                if dep_order > mod_order:
                    print(f"WARNING: DAG Violation. {m['module_id']} in {mod_ch} depends on {dep} in {dep_ch}")
                elif dep_order == mod_order:
                    # check module num
                    dep_m = re.search(r'm(\d+)', dep)
                    mod_m = re.search(r'm(\d+)', m['filepath'])
                    if dep_m and mod_m:
                        if int(dep_m.group(1)) >= int(mod_m.group(1)):
                            print(f"WARNING: DAG Violation. {m['module_id']} depends on later module {dep} within {mod_ch}")

    # Generate MANIFEST.yaml
    with open('MANIFEST.yaml', 'w') as f:
        yaml.dump(manifest, f, sort_keys=False)
        
    print("Generated MANIFEST.yaml")
    print(f"Found {len(modules)} modules.")

if __name__ == '__main__':
    main()
