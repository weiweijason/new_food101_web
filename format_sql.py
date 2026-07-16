import re
import sys

def format_sql_file(filename):
    with open(filename, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Find the INSERT statement for nr table
    pattern = r"(INSERT INTO `nr` VALUES )((?:\([^)]+\),?)+)(\s*\/\*!\d+\*\/;\s*UNLOCK TABLES)"
    
    def replace_insert(match):
        prefix = match.group(1)
        values = match.group(2)
        suffix = match.group(3)
        
        # Split by ),( to separate records
        # Each record is like ('title', 'ingredients', 'directions')
        records = re.split(r"\),\s*\(", values)
        
        # Format each record on its own line
        formatted_records = []
        for i, record in enumerate(records):
            if i == 0:
                # First record - add opening (
                formatted_records.append(f"({record}")
            else:
                # Other records - add ) and (
                formatted_records.append(f"),\n({record}")
        
        # Join all records
        result = prefix + "\n".join(formatted_records) + suffix
        return result
    
    new_content = re.sub(pattern, replace_insert, content, flags=re.DOTALL)
    
    with open(filename, 'w', encoding='utf-8') as f:
        f.write(new_content)
    
    print(f"Formatted {filename}")

if __name__ == "__main__":
    if len(sys.argv) > 1:
        format_sql_file(sys.argv[1])
    else:
        # Format all three recipe files
        format_sql_file("food_recipe_nr.sql")
        format_sql_file("food_recipe_hr.sql")
        format_sql_file("food_recipe_dhr.sql")
