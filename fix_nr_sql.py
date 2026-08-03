#!/usr/bin/env python3
"""修復 food_recipe_nr.sql 的 SQL 語法格式錯誤"""

def fix_nr_sql():
    input_file = r'd:\food101_web\food-detect\food_recipe_nr.sql'
    
    with open(input_file, 'r', encoding='utf-8') as f:
        lines = f.readlines()
    
    print("開始修復 food_recipe_nr.sql...")
    
    output_lines = []
    in_insert = False
    line_count = 0
    
    for line in lines:
        # 檢測 INSERT 區塊開始
        if "INSERT INTO `nr` VALUES" in line:
            in_insert = True
            output_lines.append(line)
            continue
        
        # 檢測 INSERT 區塊結束
        if in_insert and "/*!40000 ALTER TABLE `nr` ENABLE KEYS */;" in line:
            in_insert = False
            output_lines.append(line)
            continue
        
        if in_insert and line.strip():
            line_count += 1
            fixed = line.rstrip()
            
            # 檢查是否是最後一行
            if "]);" in fixed:
                # 最後一行，保持不變
                output_lines.append(fixed + "\n")
                continue
            
            # 修復行開頭
            stripped = fixed.strip()
            
            if stripped.startswith(")"):
                # )recipe_name' → ('recipe_name'
                # 移除開頭的 ) 並添加 ('
                inner = stripped[1:]  # 移除 )
                # 找到第一個 ' 的位置
                quote_pos = inner.find("'")
                if quote_pos > 0:
                    recipe_name = inner[:quote_pos]
                    rest = inner[quote_pos:]
                    fixed = fixed.replace(stripped, "(" + "'" + recipe_name + rest)
            
            elif stripped.startswith("'"):
                # 'recipe_name' → ('recipe_name'
                fixed = fixed.replace(stripped, "(" + stripped)
            
            # 修復行結尾
            if fixed.rstrip().endswith("],)'"):
                fixed = fixed.rstrip()[:-3] + "]),"
            elif fixed.rstrip().endswith("],"):
                fixed = fixed.rstrip()[:-2] + "]),"
            
            output_lines.append(fixed + "\n")
        else:
            output_lines.append(line)
    
    with open(input_file, 'w', encoding='utf-8') as f:
        f.writelines(output_lines)
    
    print(f"已修復 {input_file}")
    print(f"共修復 {line_count} 筆記錄")

if __name__ == '__main__':
    fix_nr_sql()
