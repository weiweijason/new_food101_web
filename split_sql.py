#!/usr/bin/env python3
"""Split long INSERT statements in SQL files into multiple lines."""

import sys
import os


def process_file(filepath):
    """Split INSERT statements into multiple lines."""
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    lines = content.split('\n')
    output = []
    count = 0

    for line in lines:
        if 'INSERT INTO' in line and 'VALUES' in line:
            # Find VALUES position
            pos = line.find('VALUES')
            prefix = line[:pos + 6]  # "INSERT INTO ... VALUES"
            vals = line[pos + 7:].strip()  # Everything after "VALUES "

            # Split by "),('" to get individual records
            parts = vals.split("'),('")

            # Add prefix line
            output.append(prefix)

            # Add each record on its own line
            for i, part in enumerate(parts):
                if i == 0:
                    rec = part
                else:
                    rec = ')' + part

                if i < len(parts) - 1:
                    output.append(rec + ',')
                else:
                    output.append(rec)

                count = count + 1
        else:
            output.append(line)

    # Write back to file
    with open(filepath, 'w', encoding='utf-8') as f:
        f.write('\n'.join(output))

    print('Done: ' + filepath)
    print('Records: ' + str(count))


if __name__ == '__main__':
    if len(sys.argv) > 1:
        files = sys.argv[1:]
    else:
        files = ['food_recipe_nr.sql', 'food_recipe_hr.sql', 'food_recipe_dhr.sql']

    for f in files:
        if os.path.exists(f):
            process_file(f)
        else:
            print('Missing: ' + f)
