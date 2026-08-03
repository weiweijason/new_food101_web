#!/usr/bin/env python3
"""修復 food_recipe_nr.sql 的 SQL 語法格式錯誤"""
import re

def fix_nr_sql():
    input_file = r'd:\food101_web\food-detect\food_recipe_nr.sql'
    output_file = r'd:\food101_web\food-detect\food_recipe_nr_fixed.sql'
    
    with open(input_file, 'r', encoding='utf-8') as f:
        content = f.read()
    
    print("開始修復 food_recipe_nr.sql...")
    
    # 統計原始的反引號數量
    original_backticks = content.count('`')
    print(f"原始檔案中的反引號數量: {original_backticks}")
    
    # 修復問題：將 INSERT 值中的反引號替換為單引號
    # 問題模式: (`recipe_name' → ('recipe_name')
    # 問題模式: `) → ')
    # 問題模式: `), → '),
    
    # 替換 (` 為 ('
    content = content.replace('(`', "('")
    
    # 替換 `) 為 ')
    content = content.replace('`)', "')")
    
    # 替換 `), 為 '),
    content = content.replace('`),', "'),")
    
    # 統計修復後的反引號數量
    fixed_backticks = content.count('`')
    print(f"修復後的反引號數量: {fixed_backticks}")
    print(f"已修復的反引號數量: {original_backticks - fixed_backticks}")
    
    # 計算 INSERT 記錄數量
    insert_pattern = r"\('\w+(_\w+)*'"
    insert_count = len(re.findall(insert_pattern, content))
    print(f"INSERT 記錄數量: {insert_count}")
    
    # 寫入修復後的檔案
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(content)
    
    print(f"修復完成！已儲存至 {output_file}")
    return insert_count

if __name__ == '__main__':
    fix_nr_sql()
