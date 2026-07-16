#!/usr/bin/env python3
"""Fix SQL INSERT format: convert ')recipe','...'], ' to ('recipe','...'),"""

import sys
import os


def fix_file(filepath):
    """Fix INSERT format in SQL file."""
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    # Replace the broken format: ),\n)recipe' -> '),\n('recipe'
    # Pattern: ],\n)recipe_name' -> ']),\n('recipe_name'
    lines = content.split('\n')
    output = []
    fixed = 0

    for i, line in enumerate(lines):
        # Check if line starts with )recipe_name'
        if line.startswith(')') and "'" in line:
            # This is a broken line, fix it
            # Remove leading ) and add ('
            fixed_line = line[1:]  # Remove leading )
            fixed_line = "(' " + fixed_line  # Add ('
            
            # Fix the previous line if it ends with ],
            if output and output[-1].rstrip().endswith('],'):
                output[-1] = output[-1].rstrip().rstrip(',') + "'])"
            
            output.append(fixed_line)
            fixed = fixed + 1
        else:
            output.append(line)

    # Write back
    with open(filepath, 'w', encoding='utf-8') as f:
        f.write('\n'.join(output))

    print('Fixed: ' + filepath)
    print('Records fixed: ' + str(fixed))


if __name__ == '__main__':
    files = ['food_recipe_hr.sql', 'food_recipe_nr.sql', 'food_recipe_dhr.sql']
    
    if len(sys.argv) > 1:
        files = sys.argv[1:]
    
    for f in files:
        if os.path.exists(f):
            fix_file(f)
        else:
            print('Missing: ' + f)
