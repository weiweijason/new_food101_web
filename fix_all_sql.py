#!/usr/bin/env python3
"""修復所有 SQL 檔案的錯誤"""

import re

def fix_nr_sql():
    """修復 food_recipe_nr.sql"""
    input_file = r'd:\food101_web\food-detect\food_recipe_nr.sql'
    
    with open(input_file, 'r', encoding='utf-8') as f:
        content = f.read()
    
    print("開始修復 food_recipe_nr.sql...")
    
    lines = content.split('\n')
    fixed_lines = []
    in_insert = False
    
    for line in lines:
        # 檢測是否在 INSERT 區塊內
        if 'INSERT INTO `nr` VALUES' in line:
            in_insert = True
            fixed_lines.append(line)
            continue
        
        if in_insert:
            # 檢查是否離開 INSERT 區塊
            if 'ENABLE KEYS' in line or 'UNLOCK TABLES' in line:
                in_insert = False
                fixed_lines.append(line)
                continue
            
            # 修復反引號：行首的 (` 改為 ('，行尾的 `) 改為 ')
            line = re.sub(r'^\(\`', "('", line)
            line = re.sub(r'\`)\s*,', "'),", line)
            line = re.sub(r'\`)\s*$', "')", line)
            
            fixed_lines.append(line)
        else:
            fixed_lines.append(line)
    
    content = '\n'.join(fixed_lines)
    
    # 修復最後一行的 ')`) 為 '),'
    content = content.replace("')`)", "'),")
    
    # 修復 pho 的 "翻 cup" 和 "翻 onion"
    content = content.replace('"翻 cup fish sauce"', '"1/2 cup fish sauce"')
    content = content.replace('"翻 onion"', '"1/2 onion"')
    
    # 修復 fried_rice 的 directions
    old_fried_rice = """('fried_rice','["1 c. white rice", "1/2 c. frozen peas and carrots", "2 to 3 Tbsp. onions, diced", "1 egg, slightly beaten", "2 Tbsp. real bacon bits", "1 Tbsp. butter or margarine", "light soy sauce to taste"]','["1 c. white rice", "1/2 c. frozen peas and carrots", "2 to 3 Tbsp. onions, diced", "1 egg, slightly beaten", "2 Tbsp. real bacon bits", "1 Tbsp. butter or margarine", "light soy sauce to taste"]')"""
    
    new_fried_rice = """('fried_rice','["1 c. white rice", "1/2 c. frozen peas and carrots", "2 to 3 Tbsp. onions, diced", "1 egg, slightly beaten", "2 Tbsp. real bacon bits", "1 Tbsp. butter or margarine", "light soy sauce to taste"]','["Cook rice according to package directions; drain.", "In a large skillet, melt butter over medium heat.", "Add onions and cook until softened, about 3 minutes.", "Add frozen peas and carrots; cook 2 minutes.", "Push vegetables to the side of the skillet; add egg and scramble.", "Add cooked rice, bacon bits, and soy sauce to taste.", "Stir-fry everything together until heated through, about 3 minutes.", "Serve hot."])"""
    
    content = content.replace(old_fried_rice, new_fried_rice)
    
    # 修復 pork_chop 的 directions
    pork_chop_pattern = r"\('pork_chop','\[.*?\]','\[.*?\]'\)"
    
    def replace_pork_chop(match):
        return """('pork_chop','["1 medium onion", "1 large pepper", "1 can stewed tomatoes, chopped", "2 tsp. sugar", "salt and pepper to taste", "1/2 c. V-8 tomato juice", "4 to 5 pork chops"]','["In a large skillet, brown pork chops on both sides over medium-high heat.", "Remove chops and set aside.", "In the same skillet, saute onion and pepper until softened.", "Return pork chops to the skillet.", "Add chopped tomatoes, V-8 juice, sugar, salt and pepper.", "Bring to a boil, then reduce heat to low.", "Cover and simmer for 30 to 40 minutes, or until pork chops are tender.", "Serve with the sauce spooned over the chops."])"""
    
    content = re.sub(pork_chop_pattern, replace_pork_chop, content, count=1)
    
    # 修復 pizza 的 directions
    pizza_pattern = r"\('pizza','\[.*?\]','\[.*?\]'\)"
    
    def replace_pizza(match):
        return """('pizza','["4 c. self-rising flour", "1/4 c. sugar", "2 c. warm milk", "1/3 c. oil"]','["Dissolve yeast in milk; add oil, flour and sugar.", "Knead 3 to 4 minutes.", "Divide and then spread on a greased pizza pan or cookie sheet.", "Let rise for 15 to 30 minutes.", "Bake 15 minutes. Take out and add sauce, meat, etc. and then cheese.", "Cook until cheese melts.", "For sauce use 1 jar Always Save spaghetti sauce. Add your own spices.", "Use Velveeta, Cheddar or Mozzarella cheeses."])"""
    
    content = re.sub(pizza_pattern, replace_pizza, content, count=1)
    
    with open(input_file, 'w', encoding='utf-8') as f:
        f.write(content)
    
    print("✓ food_recipe_nr.sql 修復完成！")


def fix_hr_sql():
    """修復 food_recipe_hr.sql"""
    input_file = r'd:\food101_web\food-detect\food_recipe_hr.sql'
    
    with open(input_file, 'r', encoding='utf-8') as f:
        content = f.read()
    
    print("開始修復 food_recipe_hr.sql...")
    
    # 修復 greek_salad 的 directions（目前與 ingredients 相同）
    # 找到 greek_salad 這行並替換 directions
    greek_salad_pattern = r"\('greek_salad','\[.*?\]','\[.*?\]'\)"
    
    def replace_greek_salad(match):
        return """('greek_salad','["12 medium shrimp", "1/2 c. + 2 Tbsp. olive oil", "2 cloves garlic, minced", "1 tsp. coarse salt, separated", "1/2 tsp. pepper, separated", "1/4 c. lemon juice", "1/2 tsp. dried oregano", "1 head romaine lettuce, washed and cut crosswise into 1 inch strips", "1 large tomato, cut into wedges", "2 small cucumbers, peeled and cut into large chunks", "1 small red onion, thinly sliced", "1/4 lb. black olives"]','["In a large bowl, combine lettuce, tomato, cucumbers, and red onion.", "In a small bowl, whisk together olive oil, lemon juice, garlic, oregano, salt and pepper.", "Pour dressing over the vegetables and toss to coat.", "Top with black olives and shrimp.", "Serve immediately."])"""
    
    content = re.sub(greek_salad_pattern, replace_greek_salad, content, count=1)
    
    with open(input_file, 'w', encoding='utf-8') as f:
        f.write(content)
    
    print("✓ food_recipe_hr.sql 修復完成！")


def main():
    print("=" * 50)
    print("SQL 檔案修復工具")
    print("=" * 50)
    
    fix_nr_sql()
    fix_hr_sql()
    
    print("=" * 50)
    print("所有修復完成！")
    print("=" * 50)
    print("\n已修復的問題：")
    print("1. food_recipe_nr.sql:")
    print("   - 所有 INSERT 資料行中的反引號已改為單引號")
    print("   - 最後一行的語法錯誤已修復")
    print("   - pho 的 '翻 cup' 和 '翻 onion' 已改為 '1/2 cup' 和 '1/2 onion'")
    print("   - fried_rice 的 directions 已修正")
    print("   - pork_chop 的 directions 已修正")
    print("   - pizza 的 directions 已修正")
    print("\n2. food_recipe_hr.sql:")
    print("   - greek_salad 的 directions 已修正")


if __name__ == '__main__':
    main()
