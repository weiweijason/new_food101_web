DROP TABLE IF EXISTS `nr`;


CREATE TABLE `nr` (
    `title` text,
    `title_zh` text DEFAULT NULL,
    `ingredients` json,
    `ingredients_zh` json,
    `directions` json,
    `directions_zh` json
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40000 ALTER TABLE `nr` DISABLE KEYS */;
INSERT INTO `nr` (
    `title`,
    `title_zh`,
    `ingredients`,
    `ingredients_zh`,
    `directions`,
    `directions_zh`
) VALUES
(
    'apple_pie',
    '蘋果派',
    '["2 c. water", "1 1/2 c. sugar", "2 tsp. cream of tartar", "23 Ritz crackers", "1 uncooked pie crust", "2 tsp. butter", "1 tsp. cinnamon"]',
    '["2杯水", "1.5杯糖", "2茶匙塔塔粉", "23片Ritz餅乾", "1個未烤派皮", "2茶匙奶油", "1茶匙肉桂"]',
    '["Bring water, sugar and cream of tartar to a boil and boil 1 minute.", "Add Ritz crackers, one at a time.", "Allow to boil 2 minutes after last cracker is dropped in.", "Remove from heat. Pour into unbaked pie shell.", "Dot filling with butter and sprinkle cinnamon over filling.", "Bake 20 minutes at 425° (pastry strips can be added across the top before baking, if desired)."]',
    '["將水、糖和塔塔粉煮沸，煮1分鐘。", "逐一加入Ritz餅乾。", "最後一片餅乾放入後再煮2分鐘。", "離火。倒入未烤的派皮中。", "在餡料上點上奶油，撒上肉桂。", "以425°F烘烤20分鐘（如需，可在烘烤前在頂部加上酥皮條）。"]'
),
(
    'baby_back_ribs',
    '豬小排',
    '["1-2 slabs of baby back ribs", "2 Tbsp pickling spice", "water to cover", "1 bottle Open Pit BBQ sauce", "1-2 c. brown sugar"]',
    '["1-2塊豬小排", "2大匙醃製香料", "足夠的水覆蓋", "1瓶Open Pit烤肉醬", "1-2杯紅糖"]',
    '["Place ribs in a large pan.", "Cover with water and add pickling spice.", "Boil for 1 hour.", "Remove ribs and place on outdoor grill. Generously brush on BBQ sauce mixture of brown sugar and Open Pit BBQ sauce."]',
    '["將豬排放入大鍋中。", "加水覆蓋，加入醃製香料。", "煮沸1小時。", "取出豬排，放在戶外烤架上。大量刷上紅糖和Open Pit烤肉醬的混合物。"]'
),
(
    'baklava',
    '巴克拉瓦甜點',
    '["4 lb. ground nuts (walnuts, pecans or almonds)", "1 c. sugar", "1 1/2 tsp. cinnamon", "1/2 tsp. nutmeg", "2 lb. margarine, melted", "2 lb. filo dough"]',
    '["4磅磨碎堅果（核桃、山核桃或杏仁）", "1杯糖", "1.5茶匙肉桂", "1/2茶匙肉豆蔻", "2磅融化的人造奶油", "2磅酥皮麵團"]',
    '["Grind nuts fine and mix with sugar and spices.", "Grease 11 x 16-inch pan (not a cookie sheet) with butter.", "Place 4 sheets of filo into pan.", "Brush each sheet with butter.", "Sprinkle with nuts thinly.", "Cover with 3 sheets of filo, brushing each with butter. Add mixture of nuts again as before.", "Repeat this until all nuts are used.", "End with 3 sheets of filo on top.", "Brush with final butter.", "Slice the entire thing into diamond shapes to aid in baking.", "Preheat oven to 300°.", "Place in oven.", "Cook for 1 hour, until lightly brown.", "Remove from oven.", "Let cool."]',
    '["將堅果磨細，與糖和香料混合。", "在11x16英寸烤盤（不是餅乾盤）上塗上奶油。", "在盤中放入4張酥皮。", "每張刷上奶油。", "薄薄地撒上堅果。", "覆蓋3張酥皮，每張刷上奶油。再次撒上堅果混合物。", "重複此步驟直到所有堅果用完。", "最後以3張酥皮覆蓋頂部。", "刷上最後一層奶油。", "將整個東西切成菱形以便烘烤。", "預熱烤箱至300°F。", "放入烤箱。", "烘烤1小時，直到呈淺棕色。", "從烤箱取出。", "冷卻。"]'
),
(
    'beef_carpaccio',
    '生牛肉薄片',
    '["8 -10 ounces beef tenderloin, from the tip end of the roast", "4 cups arugula or 4 cups mixed greens", "your favorite vinaigrette (amount to taste)", "kosher salt", "fresh ground black pepper", "shaved parmesan cheese"]',
    '["8-10盎司牛里脊，來自烤牛肉的尖端", "4杯芝麻菜或4杯混合生菜", "你喜歡的油醋汁（適量）", "kosher鹽", "新鮮研磨黑胡椒", "刨絲帕馬森起司"]',
    '["Wrap the tenderloin in plastic wrap and place in the freezer for 2 hours.", "After 2 hours, unwrap the tenderloin and thinly slice the beef into approximately into 1/8 to 1/4-inch pieces.", "Lay out sheets of plastic wrap and place each slice onto the plastic. Top with another piece of plastic and gently pound the meat with a meat mallet until paper thin.", "Repeat until all of the meat is sliced and pounded.", "Divide the meat evenly among 4 chilled plates. Serve with greens tossed with vinaigrette, salt, pepper and/or Parmesan."]',
    '["用保鮮膜包裹牛里脊，放入冷凍庫2小時。", "2小時後，打開牛里脊，將牛肉切成約1/8至1/4英寸的薄片。", "鋪上保鮮膜，將每片牛肉放在塑膠上。上面再蓋一層塑膠，用肉鎚輕輕敲打肉直到薄如紙。", "重複直到所有肉都切片並敲打。", "將肉均勻分裝到4個冷藏盤中。搭配油醋汁、鹽、胡椒和/或帕馬森起司拌生菜食用。"]'
),
(
'beef_tartare',
'生牛肉塔塔',
'["1 lb. ground sirloin (very lean)", "1 egg", "1 small onion, chopped very fine", "2 Tbsp. olive oil", "1 tsp. Worcestershire sauce", "salt and pepper to taste"]',
'["1磅牛臀腰肉末（非常瘦）", "1個蛋", "1個小洋蔥，切得很細", "2大匙橄欖油", "1茶匙伍斯特醬", "適量鹽和胡椒"]',
'["Cut away all visible fat from ground sirloin.", "Grind meat twice.", "Add eggs, onion and olive oil.", "Mix very well.", "Add Worcestershire sauce, salt and pepper to taste.", "Form into mound."]',
'["切掉牛臀腰肉末中所有可見的脂肪。", "將肉研磨兩次。", "加入蛋、洋蔥和橄欖油。", "充分混合。", "加入伍斯特醬、鹽和胡椒調味。", "堆成小山狀。"]'
),
(
'beet_salad',
'甜菜沙拉',
'["1 can beets, drained well and liquid reserved", "1 c. sugar", "1 (6 oz.) pkg. raspberry Jell-O", "1 Tbsp. unflavored gelatin", "1/2 c. wine vinegar", "1 tsp. onion, grated", "1 tsp. mustard seed"]',
'["1罐甜菜，瀝乾並保留汁液", "1杯糖", "1包（6盎司）覆盆子果凍粉", "1大匙無味吉利丁", "1/2杯酒醋", "1茶匙洋蔥，磨碎", "1茶匙芥末籽"]',
'["Mash beets.", "Combine reserved liquid with enough water to make 3 cups.", "Heat and add sugar.", "Add Jell-O and gelatin; dissolve.", "Let mixture cool.", "Pour vinegar over beets.", "Fold beets, onion, and mustard seed into jello mixture.", "Allow to cool and gel."]',
'["將甜菜壓碎。", "將保留的汁液與足夠的水混合，製成3杯。", "加熱，加入糖。", "加入果凍粉和吉利丁；溶解。", "讓混合物冷卻。", "將醋倒在甜菜上。", "將甜菜、洋蔥和芥末籽拌入果凍混合物中。", "冷卻至凝固。"]'
),
(
'beignets',
'貝奈特炸糕',
'["1/2 c. warm water", "1 pkg. dry yeast", "2 tsp. sugar", "3/4 c. milk", "1/2 tsp. vanilla", "1/4 c. unsalted butter, melted", "1 egg, lightly beaten", "1/3 c. sugar", "1 tsp. salt", "1/2 tsp. grated nutmeg", "3 1/2 c. flour", "vegetable oil (for frying)", "powdered sugar"]',
'["1/2杯溫水", "1包乾酵母", "2茶匙糖", "3/4杯牛奶", "1/2茶匙香草精", "1/4杯無鹽奶油，融化", "1個蛋，輕打", "1/3杯糖", "1茶匙鹽", "1/2茶匙磨碎肉豆蔻", "3.5杯麵粉", "植物油（用於油炸）", "糖粉"]',
'["In a small bowl, combine water, yeast and 2 teaspoons sugar. Let stand about 10 minutes, until yeast foams.", "Meanwhile, combine milk, vanilla, butter, egg, 1/3 cup sugar, salt and nutmeg.", "Stir in the yeast mixture.", "Add the flour, one cup at a time, mixing well after each addition.", "After three cups have been added, knead in the remaining flour, 1 to 2 tablespoons at a time.", "Knead until smooth, about 10 minutes.", "Place dough in an oiled bowl, turning to coat.", "Cover and let rise in a warm place until doubled in bulk, about 1 1/2 hours.", "Punch down dough and roll to a 1/2-inch thickness.", "Cut the dough into 2-inch diamond shapes.", "Place on ungreased baking sheets.", "Cover and let rise in a warm place until doubled, about 1 hour.", "Pour oil to a depth of 3-inches in a heavy pot or fryer.", "Heat to 365° and fry the beignets, 4 or 5 at a time, for 2 to 3 minutes on each side.", "Drain on paper towel and place in a warm oven while frying the remaining beignets.", "Sprinkle with powdered sugar before serving warm.", "Makes about 30."]',
'["在小碗中，混合水、酵母和2茶匙糖。靜置約10分鐘，直到酵母起泡。", "同時，混合牛奶、香草精、奶油、蛋、1/3杯糖、鹽和肉豆蔻。", "加入酵母混合物，攪拌均勻。", "逐杯加入麵粉，每次加入後充分混合。", "加入三杯後，將剩下的麵粉揉入，每次1至2大匙。", "揉至光滑，約10分鐘。", "將麵團放入塗油的碗中，翻轉使其均勻塗油。", "覆蓋，在溫暖的地方發酵直到體積翻倍，約1.5小時。", "將麵團壓扁，滾成1/2英寸厚。", "將麵團切成2英寸的菱形。", "放在未塗油的烤盤上。", "覆蓋，在溫暖的地方發酵直到體積翻倍，約1小時。", "在厚鍋或炸鍋中倒入3英寸深的油。", "加熱至365°F，每次炸4或5個貝奈特，每面炸2至3分鐘。", "放在紙巾上瀝乾，在炸剩下的貝奈特時放在溫暖的烤箱中。", "溫熱食用前撒上糖粉。", "可做約30個。"]'
),
(
'bibimbap',
'韓式拌飯',
'["3 tablespoons soy sauce", "3 tablespoons white sugar", "5 tablespoons sesame oil, divided, or to taste", "1 tablespoon garlic, minced", "1 teaspoon minced fresh ginger root", "1/2 pound beef brisket, thinly sliced, or to taste", "1 cup uncooked white rice", "1 1/2 cups water", "1 cup dried shiitake mushrooms", "1 small eggplant, cut into 1/4-inch slices", "salt to taste", "1 small yellow squash, cut into 1/4-inch slices", "2 carrots, chopped", "1 cup broccoli florets", "1 cup bean sprouts", "2 eggs", "1 1/2 tablespoons rice vinegar", "4 leaves red leaf lettuce, cut widthwise into strips", "1 daikon radish, peeled and cut into matchsticks", "2 green onions, chopped (optional)"]',
'["3大匙醬油", "3大匙白砂糖", "5大匙芝麻油，分次使用或適量", "1大匙大蒜，切碎", "1茶匙新鮮薑末", "1/2磅牛腩，切片，或適量", "1杯未煮白米", "1.5杯水", "1杯乾香菇", "1個小茄子，切成1/4英寸片", "適量鹽", "1個小黃瓜，切成1/4英寸片", "2根胡蘿蔔，切碎", "1杯西蘭花小花", "1杯豆芽", "2個蛋", "1.5大匙米醋", "4片紅葉生菜，橫向切條", "1條白蘿蔔，去皮切成細條", "2根蔥，切碎（可選）"]',
'["Mix soy sauce, sugar, sesame oil, garlic, and ginger together in a bowl. Add beef brisket and cover with plastic wrap. Marinate in the refrigerator for 30 minutes.", "Rinse rice until water turns clear. Pour into a rice cooker and add 1 1/2 cups water. Seal and select setting according to manufacturer''s instructions; cook until tender, 20 to 30 minutes. Keep warm.", "Place mushrooms in a bowl of warm water. Soak for 20 minutes.", "Coat eggplant with salt on all sides and allow to ''sweat,'' about 10 minutes. Rinse with cool water."]',
'["在碗中混合醬油、糖、芝麻油、大蒜和薑。加入牛腩，用保鮮膜覆蓋。在冰箱中醃製30分鐘。", "將米洗至水變清澈。倒入電飯煲，加入1.5杯水。按照製造商的說明密封並選擇設定；煮至軟嫩，20至30分鐘。保持溫暖。", "將香菇放入溫水中。浸泡20分鐘。", "在茄子各面撒上鹽，讓其''出汗''，約10分鐘。用冷水沖洗。"]'
),
(
'bread_pudding',
'麵包布丁',
'["12 slices white bread", "1 (8 oz.) pkg. cream cheese, cubed", "12 eggs", "2 c. milk", "1/3 c. maple syrup", "1/4 tsp. salt"]',
'["12片白麵包", "1包（8盎司）奶油起司，切塊", "12個蛋", "2杯牛奶", "1/3杯楓糖漿", "1/4茶匙鹽"]',
'["Remove and discard crusts from bread; cut bread into cubes. Toss lightly with cream cheese cubes.", "Place in greased 13 x 9 x 2-inch baking pan.", "In a large mixing bowl, beat eggs.", "Add milk, syrup and salt.", "Mix well.", "Pour over bread mixture.", "Cover and refrigerate 8 hours or overnight."]',
'["去除並丟棄麵包的皮；將麵包切成塊。與奶油起司塊輕輕混合。", "放入塗油的13x9x2英寸烤盤中。", "在大攪拌碗中，打蛋。", "加入牛奶、糖漿和鹽。", "充分混合。", "倒在麵包混合物上。", "覆蓋，冷藏8小時或過夜。"]'
),
('breakfast_burrito','早餐捲餅',
'["1 pkg. soft shells (taco or burrito)", "1 doz. eggs", "1 lb. Polish sausage", "1 medium tomato, diced", "1 medium potato, diced", "1 medium onion, diced", "1/2 c. milk"]',
'["1包軟殼（捲餅或墨西哥捲餅）", "1打蛋", "1磅波蘭香腸", "1個中等番茄，切丁", "1個中等馬鈴薯，切丁", "1個中等洋蔥，切丁", "1/2杯牛奶"]',
'["Dice and saute sausage, potato and onion in large skillet. Brown and add tomato pieces.", "Crack eggs and stir until well blended as if you''re scrambling the eggs in large bowl.", "Add milk; stir.", "When sausage mixture is browned, add egg mixture and scramble.", "When the eggs are cooked, put them into the burrito shells (about 3/4 cup into each) and wrap shells around egg mixture.", "Put two stuffed burritos in foil and bake for 15 minutes."]',
'["在大平底鍋中將香腸、馬鈴薯和洋蔥切丁並炒熟。煎至棕色，加入番茄塊。", "在打蛋碗中將蛋打散並攪拌直到充分混合，就像你在炒蛋一樣。", "加入牛奶；攪拌。", "當香腸混合物呈棕色時，加入蛋混合物並炒散。", "當蛋煮熟時，將它們放入捲餅殼中（每個約3/4杯），將殼包裹在蛋混合物周圍。", "將兩個填滿的捲餅放在鋁箔紙上，烘烤15分鐘。"]'
),

('bruschetta','義式烤麵包',
'["2 c. chopped ripe tomatoes", "2 Tbsp. olive oil", "1 clove garlic, minced", "1/2 tsp. salt", "4 thick slices Italian bread", "1 Tbsp. olive oil"]',
'["2杯切碎熟番茄", "2大匙橄欖油", "1瓣大蒜，切碎", "1/2茶匙鹽", "4片厚義大利麵包", "1大匙橄欖油"]',
'["Mix first 4 ingredients in a small bowl.", "Let stand so tomatoes release their juices.", "Brush both sides of bread with olive oil.", "Broil 4 to 5 inches from heat source on both sides until lightly browned.", "Place bread on serving plates and spoon topping over slices.", "Serve immediately."]',
'["在小碗中混合前4種材料。", "靜置讓番茄釋放汁液。", "在麵包兩面刷上橄欖油。", "在距離熱源4至5英寸處兩面烤至淺棕色。", "將麵包放在餐盤上，將配料舀在切片上。", "立即食用。"]'
),

('caesar_salad','凱薩沙拉',
'["2 Tbsp. grated Parmesan cheese", "2 Tbsp. water", "2 Tbsp. red wine vinegar", "1 tsp. Worcestershire sauce", "1 Tbsp. olive oil", "1 clove garlic", "1/4 tsp. dry mustard", "1 large bunch romaine lettuce, cleaned and torn into pieces", "1/3 c. croutons (optional)"]',
'["2大匙帕馬森起司碎", "2大匙水", "2大匙紅酒醋", "1茶匙伍斯特醬", "1大匙橄欖油", "1瓣大蒜", "1/4茶匙乾芥末", "1大顆羅馬生菜，洗淨並撕成塊", "1/3杯麵包丁（可選）"]',
'["Combine all ingredients together except lettuce in food processor and blend until smooth.", "Pour over lettuce, tossing well.", "Top with croutons, if desired.", "Yields 4 servings."]',
'["除生菜外，將所有材料放入食物處理機中混合直到光滑。", "倒在生菜上，充分拌勻。", "如需，放上麵包丁。", "可做4份。"]'
),

('cannoli','義大利奶油香酥卷',
'["1 (15 oz.) container Ricotta cheese", "2/3 c. confectioners sugar", "1/2 tsp. grated orange peel", "1/2 tsp. vanilla", "2 Tbsp. mini chocolate chips", "10 sugar ice cream cones"]',
'["1盒（15盎司）瑞可塔起司", "2/3杯糖粉", "1/2茶匙磨碎橙皮", "1/2茶匙香草精", "2大匙迷你巧克力豆", "10個糖冰淇淋筒"]',
'["In a large bowl with electric mixer at low, beat Ricotta, sugar, orange peel and vanilla just until smooth.", "Stir in chocolate chips.", "Cover.", "Refrigerate for 30 minutes.", "Spoon mixture into ice cream cones.", "Serves 10."]',
'["在大碗中用電動攪拌器低速攪打瑞可塔起司、糖、橙皮和香草精直到光滑。", "加入巧克力豆，攪拌均勻。", "覆蓋。", "冷藏30分鐘。", "將混合物舀入冰淇淋筒中。", "10人份。"]'),

('caprese_salad','卡普里沙拉',
'["2 pt. cherry tomatoes, halved", "4 oz. part-skim Mozzarella cheese, cut into 1/4-inch cubes", "1/3 c. slivered green olives", "1/3 c. chopped fresh basil", "2 Tbsp. balsamic vinegar", "1 Tbsp. olive oil", "1/2 tsp. salt"]',
'["2品脫櫻桃番茄，切半", "4盎司部分脫脂莫札瑞拉起司，切成1/4英寸塊", "1/3杯切片綠橄欖", "1/3杯切碎新鮮羅勒", "2大匙香醋", "1大匙橄欖油", "1/2茶匙鹽"]',
'["In medium bowl, combine all of the ingredients.", "Toss and serve.", "Will serve 4. High in vitamins A and C. One of the best sources of lycopene."]',
'["在中碗中，混合所有材料。", "拌勻並食用。", "4人份。富含維生素A和C。是茄紅素的最佳來源之一。"]'
),
('carrot_cake','胡蘿蔔蛋糕',
'["2 c. flour, sifted", "1 tsp. soda", "1 tsp. salt", "2 c. sugar", "1 tsp. cinnamon", "1 1/2 c. oil", "4 eggs", "2 c. grated carrots", "1 c. nuts"]',
'["2杯麵粉，過篩", "1茶匙小蘇打", "1茶匙鹽", "2杯糖", "1茶匙肉桂", "1.5杯油", "4個蛋", "2杯磨碎胡蘿蔔", "1杯堅果"]',
'["Place dry ingredients in a large bowl and mix thoroughly.", "Add rest of ingredients and mix well.", "Bake in well-greased and floured pans.", "Bake at 350° for 30 minutes.", "Remove from pans and cool.", "Makes 2 (9-inch) or 3 (8-inch) layers."]',
'["將乾性材料放入大碗中，充分混合。", "加入剩下的材料，充分混合。", "在塗油並撒麵粉的烤盤中烘烤。", "以350°F烘烤30分鐘。", "從烤盤中取出，冷卻。", "可做2層（9英寸）或3層（8英寸）。"]'
),

('ceviche','酸橘汁醃魚',
'["1 lb. whitefish fillets (raw)", "juice of 1 lime", "2 medium size tomatoes, peeled", "2 green chilies, chopped", "1 small onion, thinly sliced", "1/4 tsp. oregano", "3 sprigs cilantro, chopped", "slices of 1 avocado", "wedges of 1 tomato"]',
'["1磅白魚柳（生）", "1個萊姆汁", "2個中等番茄，去皮", "2個青椒，切碎", "1個小洋蔥，切片", "1/4茶匙牛至", "3枝香菜，切碎", "1個酪梨切片", "1個番茄切塊"]',
'["Cut uncooked fish into small pieces.", "Add lime juice to cover fish; cover and refrigerate 3 to 4 hours, or until fish become opaque.", "Stir occasionally."]',
'["將未煮的魚切成小塊。", "加入萊姆汁覆蓋魚；覆蓋，冷藏3至4小時，或直到魚變不透明。", "偶爾攪拌。"]'
),

('cheesecake','芝士蛋糕',
'["1/2 c. sugar", "8 oz. cream cheese", "8 oz. Cool Whip", "1 c. sour cream", "2 tsp. vanilla", "1 frozen graham cracker crust"]',
'["1/2杯糖", "8盎司奶油起司", "8盎司酷 Whip", "1杯酸奶油", "2茶匙香草精", "1個冷凍奶油餅乾派皮"]',
'["Mix all ingredients together and pour into graham cracker crust. Add fresh fruit or any canned fruit pie filling on top. Refrigerate 2 hours."]',
'["將所有材料混合均勻，倒入奶油餅乾派皮中。在頂部加入新鮮水果或任何罐裝水果派餡。冷藏2小時。"]'
),

('cheese_plate','起司拼盤',
'["3 ounces sliced drunken goat cheese", "3 ounces sliced manchego cheese (may sub any sharp, sturdy white cheese)", "20 onion flavored crackers", "1/4 cup blackberry jam", "2 tablespoons sunflower seeds", "2 tablespoons pepitas (shelled pumpkin seeds)"]',
'["3盎司切片醉山羊起司", "3盎司切片曼切戈起司（可用任何濃味、堅實的白起司替代）", "20片洋蔥風味餅乾", "1/4杯黑莓果醬", "2大匙葵花籽", "2大匙南瓜籽"]',
'["Get out a nice square platter and 2 small bowls (which fit on the platter).", "Place goat cheese fanned out in one corner.", "Fan the manchego out on the opposite corner.", "Place jam/preserves in one bowl and place in an empty corner of the plate.", "Then mix the seeds together in the remaining bowl and place in the opposite corner.", "Feel free to garnish the plate with fresh berries and mint if you have some.", "Place crackers on another plate and serve!", "Guests will take 1 cracker, put 1 piece of cheese on it, spread a small amt of jam on the cheese and top with a small sprinkling of the seed. DELISH! (NOTE: You can also serve them on a platter already made up in this manner)."]',
'["拿出一個漂亮的方形盤子和2個小碗（可以放在盤子上）。", "將山羊起司在一個角落扇形排列。", "在相對的角落扇形排列曼切戈起司。", "將果醬/果醬放入一個碗中，放在盤子的空角落。", "然後將種子混合在剩下的碗中，放在相對的角落。", "如果有新鮮漿果和薄荷，可以自由裝飾盤子。", "將餅乾放在另一個盤子上，上桌！", "客人會拿1片餅乾，在上面放1片起司，在起司上塗少量果醬，頂部撒上少量種子。美味！（注意：你也可以將它們以這種方式組裝在盤子上上桌）。"]'
),

('chicken_curry','咖哩雞',
'["4 (6 oz.) boneless, skinned chicken breasts", "3 Tbsp. flour", "1 Tbsp. curry powder", "4 Tbsp. oil", "1 Tbsp. sugar", "2 chicken bouillon cubes", "1 c. water", "16 oz. can apricots", "1/2 c. chopped onion", "1 c. sliced mushrooms", "2 Tbsp. soy sauce", "2 Tbsp. lemon juice"]',
'["4個（6盎司）去骨去皮雞胸肉", "3大匙麵粉", "1大匙咖哩粉", "4大匙油", "1大匙糖", "2塊雞高湯塊", "1杯水", "16盎司罐裝杏", "1/2杯切碎洋蔥", "1杯切片蘑菇", "2大匙醬油", "2大匙檸檬汁"]',
'["Rub chicken breasts with curry powder and put in baking dish. Pour on orange juice sweetened with a little honey.", "Bake until done in very slow oven (or adjust for microwave).", "Thicken juices with cornstarch.", "Serve with brown or white rice.", "(Slow oven is 300° and would take about 1 1/2 hours, depending on the number of chicken breasts.)"]',
'["在雞胸肉上塗上咖哩粉，放入烤盤。倒入加少量蜂蜜的柳橙汁。", "在非常慢的烤箱中烘烤直到熟（或根據微波爐調整）。", "用玉米澱粉濃縮汁液。", "搭配糙米或白米食用。", "（慢烤箱為300°F，約需1.5小時，取決於雞胸肉的數量。）"]'
),

 (
    'chicken_quesadilla',
    '雞肉烤餅',
    '["flour tortillas", "chicken breast (boneless) strips", "Chihuahua cheese, grated", "green onions, chopped (optional)", "butter (real butter)"]',
    '["麵粉玉米餅", "雞胸肉（去骨）條", "奇瓦瓦起司，磨碎", "蔥，切碎（可選）", "奶油（真奶油）"]',
    '["Season chicken and cook.", "Lightly butter pan.", "Put tortilla in pan.", "Place chicken, onion and cheese on 1/2 of tortilla and fold in half.", "Cook until fairly toasted on one side and flip over. Cook until toasted and cheese is melted."]',
    '["調味雞肉並煮熟。", "在鍋中輕輕塗上奶油。", "將玉米餅放入鍋中。", "在玉米餅的1/2上放雞肉、洋蔥和起司，對折。", "煮到一面相當烤焦，然後翻面。煮到烤焦且起司融化。"]'
),
(
    'chicken_wings',
    '雞翅',
    '["1 pkg. chicken wings", "1 c. sugar", "1 c. soy sauce", "1 1/2 tsp. ginger", "1/4 tsp. pepper", "1/4 tsp. m.s.g.", "1/2 c. chopped green onion"]',
    '["1包雞翅", "1杯糖", "1杯醬油", "1.5茶匙薑", "1/4茶匙黑胡椒", "1/4茶匙味精", "1/2杯切碎蔥"]',
    '["Mix all ingredients with chicken wings and marinate in refrigerator overnight.", "Bake in uncovered pan in single layers at 325° for 1 1/2 hours.", "Stir midway through."]',
    '["將所有材料與雞翅混合，在冰箱中醃製過夜。", "在未覆蓋的烤盤中單層以325°F烘烤1.5小時。", "中途攪拌。"]'
),
(
    'chocolate_cake',
    '巧克力蛋糕',
    '["2 c. flour", "2 c. sugar", "1 tsp. salt", "1 tsp. baking powder", "2 tsp. baking soda", "3/4 c. cocoa powder", "1 c. oil", "1 c. hot coffee", "2 eggs", "1 tsp. vanilla"]',
    '["2杯麵粉", "2杯糖", "1茶匙鹽", "1茶匙泡打粉", "2茶匙小蘇打", "3/4杯可可粉", "1杯油", "1杯熱咖啡", "2個蛋", "1茶匙香草精"]',
    '["Mix together and put in 9 x 13-inch cake pan or 9-inch round pans.", "Bake at 350° for 35 to 40 minutes.", "Very moist chocolate cake."]',
    '["混合均勻，放入9x13英寸蛋糕盤或9英寸圓盤中。", "以350°F烘烤35至40分鐘。", "非常濕潤的巧克力蛋糕。"]'
),
(
    'chocolate_mousse',
    '巧克力慕斯',
    '["12 oz. Nestle semi-sweet chocolate morsels", "6 Tbsp. cold water", "4 Tbsp. sugar", "6 eggs, separated", "1 1/2 pt. heavy cream", "2 tsp. vanilla", "2 pkg. ladyfingers (unfilled type)", "sprinkling of chocolate sprinkles", "2 Tbsp. sugar"]',
    '["12盎司雀巢半甜巧克力豆", "6大匙冷水", "4大匙糖", "6個蛋，分離蛋清和蛋黃", "1.5品脫鮮奶油", "2茶匙香草精", "2包手指餅乾（未填充型）", "少量巧克力碎", "2大匙糖"]',
    '["Make one day in advance!", "Line bottom of spring-form pan with wax paper (trace pan bottom onto wax paper; cut and fit into pan bottom).", "Melt chocolate morsels and 6 tablespoons water in double boiler.", "Add sugar.", "Remove from heat.", "Add 6 egg yolks.", "Beat egg whites until stiff.", "Fold into chocolate mixture.", "(Do in large bowl.)", "Beat 1 pint heavy cream, adding vanilla.", "Fold into chocolate mixture.", "Line bottom and sides of pan with ladyfingers (there will be a couple of leftover ones) to form picket fence. Chill overnight.", "Two hours before serving, beat 1/2 pint heavy cream with 2 tablespoons sugar.", "Pour over mousse, then sprinkle with chocolate sprinkles immediately before serving."]',
    '["提前一天製作！", "在活底烤盤底部鋪上蠟紙（將盤底描在蠟紙上；剪下並放入盤底）。", "在雙層鍋中融化巧克力豆和6大匙水。", "加入糖。", "離火。", "加入6個蛋黃。", "將蛋清打發至硬性發泡。", "拌入巧克力混合物。", "（在大碗中進行。）", "打發1品脫鮮奶油，加入香草精。", "拌入巧克力混合物。", "用手指餅乾鋪滿盤底和盤邊（會剩下幾個）形成柵欄狀。過夜冷藏。", "食用前2小時，將1/2品脫鮮奶油與2大匙糖打發。", "倒在慕斯上，然後在食用前立即撒上巧克力碎。"]'
),
(
    'churros',
    '吉拿棒',
    '["1 1/2 c. Bisquick", "1 c. water", "1 egg", "1/2 tsp. cinnamon", "1 Tbsp. sugar plus a little extra", "vegetable oil"]',
    '["1.5杯Bisquick速發麵粉", "1杯水", "1個蛋", "1/2茶匙肉桂", "1大匙糖再加一點", "植物油"]',
    '["In small saucepan, combine Bisquick and cinnamon.", "In a 1-quart saucepan, heat water and 1 tablespoon sugar to boiling. Add boiling mixture to Bisquick mixture.", "Reduce heat and stir vigorously until dough forms a ball.", "Remove from heat; beat in egg until smooth.", "Transfer dough into a pastry bag fitted with a star tip.", "Pipe 5-inch strips into a hot skillet with 1-inch of oil.", "Cook until golden brown on all sides, turning to coat evenly.", "While still hot, roll in extra sugar.", "Serve warm."]',
    '["在小鍋中，混合Bisquick和肉桂。", "在1夸脫鍋中，將水和1大匙糖加熱至沸騰。將沸騰的混合物加入Bisquick混合物中。", "轉小火，用力攪拌直到麵團形成球狀。", "離火；加入蛋，攪打至光滑。", "將麵團轉移到裝有星形嘴的擠花袋中。", "在熱平底鍋中倒入1英寸深的油，擠出5英寸長的條。", "煮到各面呈金棕色，翻轉使其均勻受熱。", "趁熱滾上額外的糖。", "溫熱食用。"]'
),
(
    'clam_chowder',
    '蛤蜊濃湯',
    '["6 to 8 large potatoes, diced", "3 medium onions, diced", "2 small green peppers, chopped", "5 stalks celery, chopped", "1 1/2 tsp. thyme", "1 Tbsp. salt", "1 tsp. pepper", "juice of 1 lemon", "4 c. water", "6 to 7 cans minced clams (juice and all)", "1/2 c. flour", "1 qt. half and half", "1/2 lb. melted butter", "dash or 2 Tabasco", "sherry"]',
    '["6至8個大馬鈴薯，切丁", "3個中等洋蔥，切丁", "2個小青椒，切碎", "5根芹菜，切碎", "1.5茶匙百里香", "1大匙鹽", "1茶匙黑胡椒", "1個檸檬汁", "4杯水", "6至7罐碎蛤蜊（包括汁液）", "1/2杯麵粉", "1夸脫半奶油半牛奶", "1/2磅融化奶油", "1或2滴塔巴斯科辣醬", "雪莉酒"]',
    '["Simmer first 9 ingredients until vegetables are tender, 30 to 45 minutes.", "Add minced clams, juice and all.", "Cook another 5 minutes.", "In blender mix flour, 1/2 quart half and half and melted butter.", "Add to chowder.", "Then add rest of half and half.", "Add 1/8 to 1/4 pound more butter and a dash or 2 of Tabasco.", "Serve with 1 tablespoon sherry (I add more)."]',
    '["將前9種材料小火煮至蔬菜軟嫩，30至45分鐘。", "加入碎蛤蜊，包括汁液。", "再煮5分鐘。", "在果汁機中混合麵粉、1/2夸脫半奶油半牛奶和融化奶油。", "加入濃湯中。", "然後加入剩下的半奶油半牛奶。", "加入1/8至1/4磅更多奶油和1或2滴塔巴斯科辣醬。", "搭配1大匙雪莉酒食用（我會加更多）。"]'
),
(
    'club_sandwich',
    '俱樂部三明治',
    '["3 slices buttered toast", "lettuce", "cold sliced chicken", "mayonnaise", "tomato slice", "2 to 3 strips crisp cooked bacon"]',
    '["3片塗奶油吐司", "生菜", "冷切片雞肉", "美乃滋", "番茄片", "2至3條脆煎培根"]',
    '["For each sandwich:", "Top first slice of toast with lettuce and cold chicken slice.", "Add mayonnaise, if desired.", "Top with second toast slice.", "Add tomato slice and bacon strips.", "Top with third slice of toast.", "Peg with 4 toothpicks.", "Cut in quarters diagonally.", "Serve with sandwiches, point up."]',
    '["每個三明治：", "在第一片吐司上放生菜和冷雞肉片。", "如需，加入美乃滋。", "放上第二片吐司。", "加入番茄片和培根條。", "放上第三片吐司。", "用4根牙籤固定。", "對角切成四塊。", "三明治尖朝上食用。"]'
),
(
    'crab_cakes',
    '蟹肉餅',
    '["1 Tbsp. Worcestershire sauce", "2 or 3 shakes Old Bay", "1 tsp. dry mustard", "2 Tbsp. mayonnaise", "1 egg"]',
    '["1大匙伍斯特醬", "2或3下Old Bay調味料", "1茶匙乾芥末", "2大匙美乃滋", "1個蛋"]',
    '["Mix together and carefully add 1 pound lump crab meat.", "Mix ahead of time and refrigerate so they will hold together better."]',
    '["混合均勻，小心加入1磅塊狀蟹肉。", "提前混合並冷藏，這樣它們會更好地保持形狀。"]'
),
(
    'creme_brulee',
    '法式焦糖布丁',
    '["3 c. heavy cream", "1/3 c. whole milk", "3/4 c. plus 2 Tbsp. sugar, divided", "1 whole vanilla bean, or 2 tsp. vanilla extract", "6 large egg yolks", "1 large egg", "1 tsp. vanilla extract", "4-6 Tbsp. sugar, for topping"]',
    '["3杯鮮奶油", "1/3杯全脂牛奶", "3/4杯加2大匙糖，分次使用", "1根完整香草豆，或2茶匙香草精", "6個大蛋黃", "1個大蛋", "1茶匙香草精", "4-6大匙糖，用於頂部"]',
    '["In a large, heavy saucepan, combine the cream, milk and 1/2 cup of the sugar. Place the pan over high heat and bring to a boil, watching carefully to prevent a boil-over, then remove from the heat. Add 2 teaspoons vanilla extract, or, if using a vanilla bean, cut the vanilla bean on a cutting board in half lengthwise and scrape the seeds out with the tip of a sharp knife. Add the seeds and the pod to the pan. Let the cream mixture stand for 30 minutes."]',
    '["在大厚底鍋中，混合鮮奶油、牛奶和1/2杯糖。將鍋放在大火上煮沸，小心觀察防止沸騰溢出，然後離火。加入2茶匙香草精，或使用香草豆，在砧板上將香草豆縱向切半，用尖刀尖刮出種子。將種子和豆莢加入鍋中。讓鮮奶油混合物靜置30分鐘。"]'
),
(
    'croque_madame',
    '法式火腿起司三明治',
    '["1 egg", "2 pieces bread", "1 piece cheese", "1 slice ham"]',
    '["1個蛋", "2片麵包", "1片起司", "1片火腿"]',
    '["Smear bread with butter.", "Put 1 piece into a hot skillet with the butter facing the bottom.", "Put cheese and ham and bread (butter side up).", "Brown both sides.", "Fry an egg and put it on top of the grilled open-faced ham and cheese sandwich."]',
    '["在麵包上塗上奶油。", "將1片麵包放入熱平底鍋中，奶油面朝下。", "放上起司、火腿和麵包（奶油面朝上）。", "兩面煎至棕色。", "煎一個蛋，放在烤開面火腿起司三明治上。"]'
),
(
    'grilled_cheese_sandwich',
    '烤起司三明治',
    '["2 Tbsp. unsalted butter", "4 large mushrooms, sliced", "2 medium green onions, minced", "1/4 tsp. salt", "1/8 tsp. freshly ground pepper", "4 oz. cold Brie, cut into 1/8-inch thick slices", "8 slices firm textured white bread, crusts removed", "4 sprigs fresh tarragon"]',
    '["2大匙無鹽奶油", "4個大蘑菇，切片", "2根中等蔥，切碎", "1/4茶匙鹽", "1/8茶匙新鮮研磨黑胡椒", "4盎司冷布里起司，切成1/8英寸厚片", "8片堅實質地白麵包，去皮", "4枝新鮮龍蒿"]',
    '["In a heavy medium skillet, melt the butter over high heat. When the butter begins to brown, add the mushrooms and toss to coat.", "Saute, stirring occasionally, until the mushrooms have browned around the edges, 2 to 3 minutes.", "Add the green onions and cook for 1 minute longer. Transfer the mushrooms to a plate and season with salt and pepper.", "Divide the cheese among 4 slices of bread.", "Top each with the mushrooms, leaving about 1/4-inch from the edge of the bread. Add a tarragon sprig and cover with the remaining 4 slices of bread.", "Preheat a cast-iron ridged griddle or skillet for 10 minutes over moderate heat. Grill the sandwiches for 4 minutes per side or until the bread is lightly browned and the cheese has melted.", "Serve halved as a first course or quartered as an hors d''oeuvre."]',
    '["在厚中號平底鍋中，以大火融化奶油。當奶油開始變棕色時，加入蘑菇，拌勻。", "偶爾攪拌炒，直到蘑菇邊緣變棕色，2至3分鐘。", "加入蔥，再煮1分鐘。將蘑菇轉移到盤子上，用鹽和黑胡椒調味。", "將起司分到4片麵包上。", "每片放上蘑菇，距離麵包邊緣約1/4英寸。加上一枝龍蒿，用剩下的4片麵包覆蓋。", "以中火預熱鑄鐵烤盤或平底鍋10分鐘。每面烤三明治4分鐘或直到麵包呈淺棕色且起司融化。", "切成半作為第一道菜，或切成四分之一作為開胃菜。"]'
),
(
    'grilled_salmon',
    '烤鮭魚',
    '["2 Cloves Garlic (Crushed)", "1/3 c. California Orange Juice", "1/3 c. Soy Sauce", "3 Tbsp. Ketchup", "1 Tbsp. Honey", "1/2 tsp. Ginger", "4 Kodiak Salmon Steaks"]',
    '["2瓣大蒜（壓碎）", "1/3杯加州柳橙汁", "1/3杯醬油", "3大匙番茄醬", "1大匙蜂蜜", "1/2茶匙薑", "4塊科迪亞克鮭魚排"]',
    '["1. Mix garlic, OJ, ketchup, honey, and ginger in a shallow dish. Place Salmon steak in the shallow dish and let soak for at least 15 minutes, but preferably for 1 hour.", "2. Turn steaks several times to expose both sides to marinade.", "3. Put Salmon and marinade in a tin foil dish and place on grill, cover. Cook with medium heat until Salmon is flaky."]',
    '["1. 在淺盤中混合大蒜、柳橙汁、番茄醬、蜂蜜和薑。將鮭魚排放入淺盤中，讓其浸泡至少15分鐘，最好1小時。", "2. 將魚排翻轉幾次，使兩面都接觸醃料。", "3. 將鮭魚和醃料放入鋁箔盤中，放在烤架上，覆蓋。以中火煮直到鮭魚鬆散。"]'
),
(
    'guacamole',
    '酪梨醬',
    '["2 medium tomatoes", "1 ripe medium avocado", "1 c. low-fat cottage cheese", "1 Tbsp. lemon juice", "1 tsp. bottled minced garlic or dash of garlic powder", "1/8 tsp. salt", "few dashes of hot pepper sauce"]',
    '["2個中等番茄", "1個熟中等酪梨", "1杯低脂起司", "1大匙檸檬汁", "1茶匙罐裝碎大蒜或少許大蒜粉", "1/8茶匙鹽", "幾滴辣醬"]',
    '["Cut stem ends off tomatoes and hollow out, leaving 1/4 to 1/2-inch thick shells.", "Discard seeds.", "Chop tomato pulp and tops. Set aside.", "Halve, seed, peel and cut the avocado into chunks. Combine the chunks, cottage cheese, lemon juice, garlic, salt and pepper sauce in blender or food processor until mixture is smooth. Stir in chopped tomato.", "Makes 16 (2 tablespoon) servings of dip."]',
    '["切掉番茄的莖端，掏空，留下1/4至1/2英寸厚的殼。", "丟棄種子。", "切碎番茄果肉和頂部。備用。", "將酪梨切半、去籽、去皮並切成塊。將塊、起司、檸檬汁、大蒜、鹽和辣醬放入果汁機或食物處理機中，直到混合物光滑。拌入碎番茄。", "可做16份（2大匙）蘸醬。"]'
),
(
    'gyoza',
    '日式煎餃',
    '["1 lb. ground beef", "1 egg", "1/2 to 3/4 c. cabbage, finely chopped", "1/2 c. green onion, finely chopped", "salt and pepper to taste", "1 pkg. wonton wraps", "water (one bowl)", "oil"]',
    '["1磅牛肉末", "1個蛋", "1/2至3/4杯高麗菜，細切", "1/2杯蔥，細切", "適量鹽和胡椒", "1包雲吞皮", "水（一碗）", "油"]',
    '["Mix first 6 ingredients well.", "Take small amounts of meat mixture (about 1 tablespoon) and place in center of wonton wrap. With wet fingers, wet all sides of wonton wrap and fold over into a triangle, pressing all sides down firmly, flattening the meat mixture lightly."]',
    '["將前6種材料充分混合。", "取少量肉混合物（約1大匙），放在雲吞皮中心。用濕手指，將雲吞皮各面弄濕，對折成三角形，壓緊各面，輕輕壓平肉混合物。"]'
),
(
    'hamburger',
    '漢堡',
    '["1 lb. hamburger", "1 can golden mushroom soup", "flour", "2 to 3 tsp. oil"]',
    '["1磅漢堡肉", "1罐金蘑菇湯", "麵粉", "2至3茶匙油"]',
    '["Make hamburger into patties.", "Coat with flour and brown lightly in oil.", "Add mushroom soup and simmer for about 15 minutes."]',
    '["將漢堡肉做成餅。", "裹上麵粉，在油中輕輕煎至棕色。", "加入蘑菇湯，小火煮約15分鐘。"]'
),
(
    'hot_and_sour_soup',
    '酸辣湯',
    '["4 dried black mushrooms", "1/2 c. dried Chinese fungus", "1 c. lean pork", "1 c. bamboo shoots", "2 Tbsp. oil", "12 dried red chili peppers", "8 c. chicken broth", "2 Tbsp. light soy sauce", "1 tsp. pepper", "1/2 c. vinegar", "3 Tbsp. cornstarch, dissolved in 1/2 c. cold water", "1 pkg. fresh tofu or bean curd, cut into thin strips", "6 eggs, beaten", "1 Tbsp. sesame oil", "hot oil (if desired)", "2 scallions, chopped"]',
    '["4個乾香菇", "1/2杯乾冬菇", "1杯瘦豬肉", "1杯竹筍", "2大匙油", "12個乾紅辣椒", "8杯雞高湯", "2大匙淡醬油", "1茶匙黑胡椒", "1/2杯醋", "3大匙玉米澱粉，溶於1/2杯冷水中", "1包新鮮豆腐或豆乾，切成細條", "6個蛋，打散", "1大匙芝麻油", "熱油（可選）", "2根蔥，切碎"]',
    '["Rehydrate mushrooms and fungus as directed on the package labels.", "Separately cut mushrooms, fungus, pork and bamboo shoots to fine julienne.", "Stir-fry pork with salt in heated oil.", "Bring chicken broth to boil in pot.", "Add dried peppers, mushrooms, fungus, pork and bamboo shoots.", "Stir frequently.", "Add soy sauce, pepper and vinegar.", "Thicken with dissolved cornstarch, stirring constantly, over moderate heat.", "Add bean curd.", "Bring to boil. Turn off heat.", "Add beaten eggs and stir.", "Add sesame seed oil. Garnish with scallions.", "Use additional vinegar for sourness and hot oil for hotness if desired."]',
    '["按照包裝標籤說明將香菇和冬菇重新水合。", "分別將香菇、冬菇、豬肉和竹筍切成細絲。", "在熱油中用鹽炒豬肉。", "在鍋中將雞高湯煮沸。", "加入乾辣椒、香菇、冬菇、豬肉和竹筍。", "經常攪拌。", "加入醬油、黑胡椒和醋。", "用溶解的玉米澱粉濃稠，以中火不斷攪拌。", "加入豆乾。", "煮沸。關火。", "加入打散的蛋，攪拌。", "加入芝麻油。用蔥裝飾。", "如需，使用額外的醋增加酸味和熱油增加辣味。"]'
),
(
    'hot_dog',
    '熱狗',
    '["2 lb. wieners", "3/4 c. vinegar", "1 1/2 c. catsup", "1/2 c. brown sugar", "1 1/2 tsp. minced onion"]',
    '["2磅香腸", "3/4杯醋", "1.5杯番茄醬", "1/2杯紅糖", "1.5茶匙碎洋蔥"]',
    '["Wieners can be chunked up or left whole.", "Mix all ingredients, except wieners.", "Bring to a boil.", "Add wieners and simmer."]',
    '["香腸可以切塊或保持完整。", "混合所有材料，除了香腸。", "煮沸。", "加入香腸，小火煮。"]'
),
(
    'huevos_rancheros',
    '墨西哥煎蛋',
    '["2 Tbsp. vegetable oil", "4 eggs", "1 Tbsp. chopped onion", "1 Tbsp. chopped green pepper", "1 medium tomato, chopped", "1 jalapeno pepper, chopped", "salt and pepper to taste"]',
    '["2大匙植物油", "4個蛋", "1大匙碎洋蔥", "1大匙碎青椒", "1個中等番茄，切碎", "1個哈拉佩諾辣椒，切碎", "適量鹽和胡椒"]',
    '["In skillet with oil over slow heat, add all ingredients, except eggs, within 1 minute.", "Add eggs, scramble and enjoy with refried beans and tortillas if you were brave enough to include the jalapeno.", "Sit down by yourself and enjoy, as no one else will want to make a trip to the creek with you."]',
    '["在平底鍋中以小火加熱油，在1分鐘內加入所有材料，除了蛋。", "加入蛋，炒散，如果你夠勇敢加入哈拉佩諾辣椒，可以搭配炒豆泥和玉米餅食用。", "獨自坐下享用，因為沒有人會想和你一起去小溪。"]'
),
(
    'hummus',
    '鷹嘴豆泥',
    '["2 cans garbanzo beans, drained, rinsed and whirled in food processor until chunky to smooth", "2 green onions", "1 c. parsley, chopped", "2 cloves", "crushed garlic", "salt", "pepper", "1/2 to 1 c. sesame paste"]',
    '["2罐鷹嘴豆，瀝乾、沖洗並在食物處理機中攪拌直到從粗顆粒到光滑", "2根蔥", "1杯歐芹，切碎", "2瓣", "壓碎大蒜", "鹽", "黑胡椒", "1/2至1杯芝麻醬"]',
    '["When all finely chopped and mixed, add sesame paste (will stiffen mix).", "Stir, cover and chill.", "Serve with vegetables and pita bread."]',
    '["當所有材料細切並混合後，加入芝麻醬（會使混合物變硬）。", "攪拌，覆蓋並冷藏。", "搭配蔬菜和皮塔餅食用。"]'
),
(
    'ice_cream',
    '冰淇淋',
    '["3 bananas", "juice from 3 lemons and 3 oranges", "3 c. sugar", "3 c. milk", "1 tsp. vanilla"]',
    '["3根香蕉", "3個檸檬和3個柳橙的汁", "3杯糖", "3杯牛奶", "1茶匙香草精"]',
    '["Mash bananas, then add the lemon and orange juice.", "Add sugar, milk and vanilla.", "Pour in a pan and freeze in refrigerator."]',
    '["將香蕉壓碎，然後加入檸檬和柳橙汁。", "加入糖、牛奶和香草精。", "倒入盤中，在冰箱中冷凍。"]'
),
(
    'lasagna',
    '千層麵',
    '["1 lb. ground beef", "1 medium onion, chopped", "1 large jar meatless spaghetti sauce", "1 pkg. lasagna noodles", "1 pkg. Swiss cheese", "1 pkg. Cheddar cheese", "1 pkg. Mozzarella cheese", "salt and pepper to taste", "oregano to taste", "red pepper to taste", "powdered garlic to taste"]',
    '["1磅牛肉末", "1個中等洋蔥，切碎", "1大罐素義大利麵醬", "1包千層麵條", "1包瑞士起司", "1包切達起司", "1包莫札瑞拉起司", "適量鹽和胡椒", "適量牛至", "適量紅椒", "適量大蒜粉"]',
    '["Brown beef and onions; drain and add salt, pepper, oregano, red pepper and powdered garlic.", "Add spaghetti sauce and simmer. Cook noodles about 20 minutes.", "Drain noodles and add butter so they don''t stick."]',
    '["將牛肉和洋蔥煎至棕色；瀝乾，加入鹽、黑胡椒、牛至、紅椒和大蒜粉。", "加入義大利麵醬，小火煮。煮麵條約20分鐘。", "瀝乾麵條，加入奶油以防粘連。"]'
),
(
    'lobster_bisque',
    '龍蝦濃湯',
    '["1 (46 oz.) College Inn broth plus 1 c. water", "1 pkg. Knorr Newberg sauce mix", "8 oz. lobster meat (fresh or frozen)", "3 sticks butter", "1/3 c. brandy", "2/3 c. dry sherry", "4 pt. light cream", "1 1/4 c. all-purpose flour", "garlic powder to taste"]',
    '["1罐（46盎司）College Inn高湯加1杯水", "1包Knorr Newberg醬料粉", "8盎司龍蝦肉（新鮮或冷凍）", "3條奶油", "1/3杯白蘭地", "2/3杯乾雪莉酒", "4品脫輕奶油", "1.25杯全能麵粉", "適量大蒜粉"]',
    '["Heat chicken broth, diluted with 1 cup water, in saucepan. Keep hot.", "Lightly saute lobster meat in 1/2 stick of butter (1/4 cup).", "Season with garlic powder to taste.", "Add brandy.", "Remove from heat and allow to cool.", "Process in food processor to chop. In a large pot, melt remaining butter (1 1/4 cups or 2 1/2 sticks); add 1 1/2 cups flour and Newberg sauce mix to make a roux.", "Cook roux over very low heat 3 to 5 minutes.", "Slowly add hot chicken broth to roux, mixing thoroughly with whisk after each addition. Mixture will be very thick."]',
    '["在鍋中加熱用1杯水稀釋的雞高湯。保持熱。", "在1/2條奶油（1/4杯）中輕輕炒龍蝦肉。", "用大蒜粉調味。", "加入白蘭地。", "離火，讓其冷卻。", "在食物處理機中處理切碎。在大鍋中，融化剩下的奶油（1.25杯或2.5條）；加入1.5杯麵粉和Newberg醬料粉製成麵醬。", "以非常小火煮麵醬3至5分鐘。", "慢慢將熱雞高湯加入麵醬中，每次加入後用打蛋器充分混合。混合物會非常濃稠。"]'
),
(
    'lobster_roll_sandwich',
    '龍蝦堡',
    '["1/2 cup mayonnaise", "2 teaspoons Dijon mustard", "1/3 cup celery, diced", "1 tablespoon fresh lemon juice", "1/4 teaspoon Old Bay Seasoning", "3 cups lobster meat, cooked and cut into bite sized chunks", "6 lettuce leaves", "6 hot dog rolls"]',
    '["1/2杯美乃滋", "2茶匙第戎芥末", "1/3杯芹菜，切丁", "1大匙新鮮檸檬汁", "1/4茶匙Old Bay調味料", "3杯龍蝦肉，煮熟並切成一口大小的塊", "6片生菜葉", "6個熱狗麵包"]',
    '["Combine first five ingredients in a mixing bowl; mix well.", "Line the roll with lettuce.", "Stuff the lobster salad into the hot dog rolls."]',
    '["在搅拌碗中混合前五種材料；充分混合。", "在麵包中鋪上生菜。", "將龍蝦沙拉填入熱狗麵包中。"]'
),
(
    'macaroni_and_cheese',
    '起司通心麵',
    '["1 (8 oz.) pkg. elbow macaroni", "1/4 c. butter or margarine", "1/4 c. all-purpose flour", "1 tsp. salt", "1/8 tsp. pepper", "2 c. milk", "2 c. (8 oz.) Cheddar cheese, grated", "1 large tomato, thickly sliced"]',
    '["1包（8盎司）彎管通心麵", "1/4杯奶油或人造奶油", "1/4杯全能麵粉", "1茶匙鹽", "1/8茶匙黑胡椒", "2杯牛奶", "2杯（8盎司）切達起司，磨碎", "1個大番茄，厚切"]',
    '["Preheat oven to 375°.", "Cook macaroni as package label directs; drain.", "Meanwhile, melt butter in medium saucepan.", "Remove from heat.", "Stir in flour, salt and pepper until smooth.", "Gradually stir in milk.", "Bring to boiling, stirring.", "Reduce heat and simmer mixture 1 minute.", "Remove from heat.", "Stir in 1 1/2 cups cheese and the macaroni.", "Pour into a 1 1/2-quart shallow casserole. Arrange tomato slices over top.", "Sprinkle remaining cheese over top.", "Bake 15 minutes or until cheese is golden brown.", "Makes 4 to 6 servings."]',
    '["預熱烤箱至375°F。", "按照包裝標籤說明煮通心麵；瀝乾。", "同時，在中號鍋中融化奶油。", "離火。", "加入麵粉、鹽和黑胡椒，攪拌直到光滑。", "慢慢加入牛奶，攪拌。", "煮沸，攪拌。", "轉小火，小火煮混合物1分鐘。", "離火。", "加入1.5杯起司和通心麵，攪拌。", "倒入1.5夸脫淺烤盤中。在頂部排列番茄片。", "在頂部撒上剩下的起司。", "烘烤15分鐘或直到起司呈金棕色。", "可做4至6份。"]'
),
(
    'macarons',
    '馬卡龍',
    '["4 extra large egg whites", "1 2/3 cups confectioners'' sugar", "1 1/3 cups almond flour", "1/8 teaspoon salt", "1/4 cup superfine (castor) sugar"]',
    '["4個特大蛋清", "1.67杯糖粉", "1.33杯杏仁粉", "1/8茶匙鹽", "1/4杯超細（卡斯特）糖"]',
    '["Place egg whites into a metal mixing bowl and refrigerate overnight. The next day, bring egg whites to room temperature.", "Preheat oven to 280 degrees F (138 degrees C). Line baking sheets with parchment paper.", "Whisk confectioners'' sugar and almond flour in a bowl. Beat the egg whites with salt in metal bowl with an electric mixer on medium speed until foamy, about 1 minute; increase speed to high and gradually beat in superfine sugar, about 1 tablespoon at a time, until the egg whites are glossy and hold stiff peaks, 3 to 5 more minutes.", "Gently fold almond flour mixture into whipped egg whites until thoroughly incorporated; spoon meringue into a pastry big fitted with a 3/8-inch tip.", "Pipe 1-inch disks of meringue onto the prepared baking sheets, leaving 2 inches of space between cookies. The batter will spread. Lift the baking sheets a few inches above the work surface and hit them lightly on the work surface several times to remove any air bubbles from the cookies. Let the cookies stand at room temperature until the shiny surfaces become dull and a thin skin forms, about 15 minutes.", "Place the baking sheets in the preheated oven and bake with the oven door open slightly until the macarons'' surfaces are completely dry, about 15 minutes. Let cookies cool completely on a baking sheet before peeling parchment paper from the cookies.", "Spread half the cookies with any desired filling, top with remaining cookies to make sandwiches, and refrigerate at least 2 hours to overnight to let the cookies soften."]',
    '["將蛋清放入金屬搅拌碗中，冷藏過夜。第二天，將蛋清恢復至室溫。", "預熱烤箱至280°F（138°C）。在烤盤上鋪上烘焙紙。", "在碗中攪拌糖粉和杏仁粉。在金屬碗中用電動攪拌器以中速將蛋清和鹽打發直到起泡，約1分鐘；轉高速，慢慢加入超細糖，每次約1大匙，直到蛋清有光澤且保持硬性發泡，再打3至5分鐘。", "輕輕將杏仁粉混合物拌入打發的蛋清中，直到完全混合；將蛋白霜舀入裝有3/8英寸嘴的擠花袋中。", "在準備好的烤盤上擠出1英寸的蛋白霜圓盤，餅乾之間留出2英寸的間隙。麵糊會擴散。將烤盤抬高幾英寸，在工作表面上輕輕敲打幾次，以去除餅乾中的任何氣泡。讓餅乾在室溫下靜置，直到光亮的表面變暗淡並形成一層薄皮，約15分鐘。", "將烤盤放入預熱的烤箱中，烤箱門稍微打開，烘烤直到馬卡龍表面完全乾燥，約15分鐘。在將烘焙紙從餅乾上剝離之前，讓餅乾在烤盤上完全冷卻。", "在一半的餅乾上塗上任何想要的餡料，用剩下的餅乾覆蓋做成三明治，冷藏至少2小時至過夜，讓餅乾變軟。"]'
),
(
    'miso_soup',
    '味噌湯',
    '["4 c. dashi (4 c. water and 1 Tbsp. hondashi, Japanese seasoning)", "3 oz. lean pork", "3 to 4 Tbsp. miso, or to taste", "1 long green onion and top, cut into 1/2-inch lengths or 2-inch onions cut crosswise into thin slices", "2 tsp. ginger juice*"]',
    '["4杯出汁（4杯水和1大匙日式出汁調味料）", "3盎司瘦豬肉", "3至4大匙味噌，或適量", "1根長蔥和蔥葉，切成1/2英寸長或2英寸洋蔥橫向切片", "2茶匙薑汁*"]',
    '["*Peel and grate fresh ginger root, then squeeze."]',
    '["*去皮並磨碎新鮮薑根，然後擠汁。"]'
),
(
    'mussels',
    '青口貝',
    '["3 to 5 lb. washed mussels", "2 cloves fresh garlic", "2 c. wine"]',
    '["3至5磅洗淨青口貝", "2瓣新鮮大蒜", "2杯葡萄酒"]',
    '["Steam for 5 minutes.", "Dip in melted butter."]',
    '["蒸5分鐘。", "蘸融化奶油食用。"]'
),
(
    'nachos',
    '墨西哥玉米片',
    '["1 pkg. cream cheese", "1 can chili", "1 c. Monterey Jack cheese", "1/2 c. Cheddar cheese"]',
    '["1包奶油起司", "1罐辣椒", "1杯蒙特雷傑克起司", "1/2杯切達起司"]',
    '["Spread package of cream cheese on bottom of pie plate.", "Spread can of chili on top of cream cheese.", "Sprinkle the 2 cheeses on top.", "Bake at 350° until cheese melts.", "Serve with tortilla chips."]',
    '["在派盤底部塗上奶油起司。", "在奶油起司上塗上辣椒。", "在頂部撒上2種起司。", "以350°F烘烤直到起司融化。", "搭配玉米片食用。"]'
),
(
    'omelette',
    '煎蛋捲',
    '["eggs", "bacon or ham", "cheese", "green peppers or other vegetables", "vegetable oil"]',
    '["蛋", "培根或火腿", "起司", "青椒或其他蔬菜", "植物油"]',
    '["Cook bacon or ham.", "Beat eggs; pour in hot skillet with oil. Add cheese slices.", "Crumble bacon.", "Dice peppers and onions and add.", "Cook until eggs bubble and hold together.", "Then fold one side over other.", "Cook until done.", "Do not overcook or burn."]',
    '["煮熟培根或火腿。", "打蛋；倒入有油的熱平底鍋中。加入起司片。", "將培根弄碎。", "將青椒和洋蔥切丁並加入。", "煮到蛋起泡並保持形狀。", "然後將一側折到另一側上。", "煮到熟。", "不要煮過頭或燒焦。"]'
),
(
    'onion_rings',
    '洋蔥圈',
    '["1 c. flour", "1/4 tsp. salt", "1/2 c. milk", "2 Tbsp. salad oil", "1 egg white (unbeaten)", "6 Tbsp. water", "2 to 3 large onions"]',
    '["1杯麵粉", "1/4茶匙鹽", "1/2杯牛奶", "2大匙沙拉油", "1個蛋清（未打發）", "6大匙水", "2至3個大洋蔥"]',
    '["Mix together in large bowl.", "Cut onions into slices; separate into rings.", "Deep-fry in hot oil."]',
    '["在大碗中混合均勻。", "將洋蔥切片；分離成圈。", "在熱油中深炸。"]'
),
(
    'oysters',
    '牡蠣',
    '["12 oz. pkg. frozen spinach souffle", "1 pt. oysters, drained", "dash of Tabasco", "3 Tbsp. Parmesan cheese", "2 Tbsp. melted butter", "1/2 tsp. minced onion", "1/4 c. seasoned crumbs"]',
    '["12盎司包冷凍菠菜舒芙蕾", "1品脫牡蠣，瀝乾", "少許塔巴斯科辣醬", "3大匙帕馬森起司", "2大匙融化奶油", "1/2茶匙碎洋蔥", "1/4杯調味麵包屑"]',
    '["Mix together spinach, oysters, onions and Tabasco and put into casserole dish.", "Top with bread crumbs, butter and Parmesan.", "Bake at 350° for 50 to 60 minutes."]',
    '["混合菠菜、牡蠣、洋蔥和塔巴斯科辣醬，放入烤盤中。", "在頂部撒上麵包屑、奶油和帕馬森起司。", "以350°F烘烤50至60分鐘。"]'
),
(
    'pad_thai',
    '泰式炒河粉',
    '["1/2 lb. linguine (fresh is best)", "3 Tbsp. soy sauce", "2 tsp. sugar", "3 Tbsp. vegetable oil or butter", "1/2 lb. boneless chicken breast, cut into small pieces", "1/2 lb. bean sprouts, drained", "1/2 lb. cooked shrimp", "curry powder and/or cayenne pepper", "3/4 c. tomato juice", "1 Tbsp. vinegar", "3/4 tsp. cornstarch", "garlic to taste", "1/2 c. chopped green onions and tops"]',
    '["1/2磅長麵（新鮮最好）", "3大匙醬油", "2茶匙糖", "3大匙植物油或奶油", "1/2磅去骨雞胸肉，切成小塊", "1/2磅豆芽，瀝乾", "1/2磅煮熟蝦仁", "咖哩粉和/或辣椒粉", "3/4杯番茄汁", "1大匙醋", "3/4茶匙玉米澱粉", "適量大蒜", "1/2杯碎蔥和蔥葉"]',
    '["Cook linguine according to package directions; drain.", "Combine tomato juice, soy sauce, vinegar, sugar and cornstarch; set aside. Heat 1 tablespoon of oil or butter in hot wok or large skillet. Add chicken and stir-fry 1 minute; remove.", "(I cook my chicken until it is completely done which takes quite a bit longer than 1 minute.)", "Add garlic, bean sprouts and green onions and stir-fry for 1 minute.", "Stir in linguine and cook 2 more minutes or until heated through.", "Return chicken with shrimp, curry, pepper and tomato mixture.", "Cook, stirring until sauce boils and thickens. Makes 4 servings."]',
    '["按照包裝說明煮長麵；瀝乾。", "混合番茄汁、醬油、醋、糖和玉米澱粉；備用。在熱炒鍋或大平底鍋中加熱1大匙油或奶油。加入雞肉，炒1分鐘；取出。", "（我將雞肉煮到完全熟，這比1分鐘長很多。）", "加入大蒜、豆芽和蔥，炒1分鐘。", "拌入長麵，再煮2分鐘或直到熱透。", "將雞肉與蝦仁、咖哩、黑胡椒和番茄混合物一起放回。", "邊煮邊攪拌直到醬汁沸騰並濃稠。可做4份。"]'
),
(
    'paella',
    '西班牙海鮮飯',
    '["1 lb. chicken, cut in small pieces", "1 lb. rabbit, cut in small pieces", "1/2 lb. pork, chopped, boned and cut in small pieces", "1 lb. mussels", "1 lb. shrimp, leave in shell", "1 clove garlic", "1 lb. clams", "3 tomatoes, peeled and chopped", "1 small onion, chopped", "1 Tbsp. parsley", "1/2 lb. scallops", "1 can peas or frozen", "pinch of saffron or 2 tsp. turmeric", "olive oil for frying", "1 chopped green pepper"]',
    '["1磅雞肉，切成小塊", "1磅兔肉，切成小塊", "1/2磅豬肉，切碎、去骨並切成小塊", "1磅青口貝", "1磅蝦仁，保留殼", "1瓣大蒜", "1磅蛤蜊", "3個番茄，去皮並切碎", "1個小洋蔥，切碎", "1大匙歐芹", "1/2磅干貝", "1罐青豆或冷凍", "少許藏紅花或2茶匙薑黃", "油炸用橄欖油", "1個切碎青椒"]',
    '["In a paella pan or large skillet, fry chicken and rabbit. Remove.", "In same pan, cook pork.", "Remove.", "In pan, saute onion, green pepper and garlic.", "Add to the vegetables and chopped tomatoes.", "Add parsley.", "Re-add poultry and pork.", "Mix well.", "Add all seafood that has been washed.", "Fill pan with water and bring to a boil.", "Add 2 cups rice and saffron/turmeric and bring to second boil.", "Add peas.", "Simmer for 20 minutes or until rice is cooked.", "Garnish with red peppers, sliced lemons or sliced oranges."]',
    '["在西班牙海鮮飯鍋或大平底鍋中，煎雞肉和兔肉。取出。", "在同一鍋中，煮豬肉。", "取出。", "在鍋中，炒洋蔥、青椒和大蒜。", "加入蔬菜和碎番茄。", "加入歐芹。", "重新加入家禽和豬肉。", "充分混合。", "加入所有已清洗的海鮮。", "在鍋中加水，煮沸。", "加入2杯米和藏紅花/薑黃，再次煮沸。", "加入青豆。", "小火煮20分鐘或直到米煮熟。", "用紅椒、切片檸檬或切片柳橙裝飾。"]'
),
(
    'pancakes',
    '鬆餅',
    '["1 c. flour", "1 tsp. soda", "1 tsp. salt", "1 Tbsp. sugar", "1 egg", "3 Tbsp. margarine, melted", "1 c. buttermilk"]',
    '["1杯麵粉", "1茶匙小蘇打", "1茶匙鹽", "1大匙糖", "1個蛋", "3大匙融化的人造奶油", "1杯酪乳"]',
    '["Mix dry ingredients.", "Add egg, margarine and buttermilk. Stir by hand until well blended.", "Pour onto non-stick pan or griddle with a little oil added.", "Cook until bubbly and turn over."]',
    '["混合乾性材料。", "加入蛋、人造奶油和酪乳。用手攪拌直到充分混合。", "倒入加少量油的不沾鍋或烤盤中。", "煮到起泡並翻面。"]'
),
(
    'panna_cotta',
    '義大利奶凍',
    '["1/3 cup skim milk", "1 (.25 ounce) envelope unflavored gelatin", "2 1/2 cups heavy cream", "1/2 cup white sugar", "1 1/2 teaspoons vanilla extract"]',
    '["1/3杯脫脂牛奶", "1包（0.25盎司）無味吉利丁", "2.5杯鮮奶油", "1/2杯白砂糖", "1.5茶匙香草精"]',
    '["Pour milk into a small bowl, and stir in the gelatin powder. Set aside.", "In a saucepan, stir together the heavy cream and sugar, and set over medium heat. Bring to a full boil, watching carefully, as the cream will quickly rise to the top of the pan. Pour the gelatin and milk into the cream, stirring until completely dissolved. Cook for one minute, stirring constantly. Remove from heat, stir in the vanilla and pour into six individual ramekin dishes.", "Cool the ramekins uncovered at room temperature. When cool, cover with plastic wrap, and refrigerate for at least 4 hours, but preferably overnight before serving."]',
    '["將牛奶倒入小碗中，加入吉利丁粉，攪拌均勻。備用。", "在鍋中，將鮮奶油和糖混合，以中火加熱。煮沸，小心觀察，因為奶油會快速上升到鍋頂。將吉利丁和牛奶倒入奶油中，攪拌直到完全溶解。煮1分鐘，不斷攪拌。離火，加入香草精，倒入六個個人小烤盅中。", "不蓋蓋子在室溫下冷卻小烤盅。冷卻後，用保鮮膜覆蓋，冷藏至少4小時，最好過夜後食用。"]'
),
(
    'peking_duck',
    '北京烤鴨',
    '["1 (4 pound) whole duck, dressed", "1/2 teaspoon ground cinnamon", "1/2 teaspoon ground ginger", "1/4 teaspoon ground nutmeg", "1/4 teaspoon ground white pepper", "1/8 teaspoon ground cloves", "3 tablespoons soy sauce", "1 tablespoon honey", "1 orange, sliced in rounds", "1 tablespoon chopped fresh parsley, for garnish", "5 green onions", "1/2 cup plum jam", "1 1/2 teaspoons sugar", "1 1/2 teaspoons distilled white vinegar", "1/4 cup finely chopped chutney"]',
    '["1隻（4磅）整鴨，處理過", "1/2茶匙肉桂粉", "1/2茶匙薑粉", "1/4茶匙肉豆蔻粉", "1/4茶匙白胡椒粉", "1/8茶匙丁香粉", "3大匙醬油", "1大匙蜂蜜", "1個柳橙，切片", "1大匙碎新鮮歐芹，裝飾用", "5根蔥", "1/2杯梅子果醬", "1.5茶匙糖", "1.5茶匙白醋", "1/4杯細碎酸辣醬"]',
    '["Rinse the duck inside and out, and pat dry. Cut off tail and discard. In a small bowl, mix together the cinnamon, ginger, nutmeg, white pepper and cloves. Sprinkle one teaspoon of the mixture into the cavity of the duck. Stir one tablespoon of the soy sauce into the remaining spice mixture and rub evenly over the entire outside of the bird. Cut one of the green onions in half and tuck inside the cavity. Cover and refrigerate the bird for at least 2 hours, or overnight.", "Place duck breast side up on a rack in a big enough wok or pot and steam for an hour adding a little more water, if necessary, as it evaporates. Lift duck with two large spoons, and drain juices and green onion.", "Preheat the oven to 375 degrees F (190 degrees C). Place duck breast side up in a roasting pan and prick skin all over using a fork.", "Roast for 30 minutes in the preheated oven. While the duck is roasting, mix together the remaining 2 tablespoons of soy sauce and honey. After 30 minutes, brush the honey mixture onto the duck and return it to the oven. Turn the heat up to 500 degrees F (260 degrees C). Roast for 5 minutes, or until the skin is richly browned. Do not allow the skin to char.", "Prepare the duck sauce by mixing the plum jam with the sugar, vinegar and chutney in a small serving bowl. Chop remaining green onions and place them into a separate bowl. Place whole duck onto a serving platter and garnish with orange slices and fresh parsley. Use plum sauce and onion"]',
    '["將鴨子內外沖洗，拍乾。切掉尾巴，丟棄。在小碗中，混合肉桂、薑、肉豆蔻、白胡椒和丁香。將1茶匙混合物撒入鴨子腔內。將1大匙醬油加入剩下的香料混合物中，均勻塗抹在鴨子整個外側。將一根蔥切半，塞入腔內。覆蓋，將鴨子冷藏至少2小時，或過夜。", "將鴨子胸朝上放在足夠大的炒鍋或鍋中的烤架上，蒸一小時，如需，隨著水分蒸發加入更多水。用兩個大勺子將鴨子抬起，瀝乾汁液和蔥。", "預熱烤箱至375°F（190°C）。將鴨子胸朝上放在烤盤中，用叉子在皮膚上戳洞。", "在預熱的烤箱中烘烤30分鐘。在鴨子烘烤時，混合剩下的2大匙醬油和蜂蜜。30分鐘後，將蜂蜜混合物刷在鴨子上，放回烤箱。將溫度調高至500°F（260°C）。烘烤5分鐘，或直到皮膚呈深棕色。不要讓皮膚燒焦。", "將梅子果醬與糖、醋和酸辣醬在小碗中混合，製成鴨醬。將剩下的蔥切碎，放在單獨的碗中。將整鴨放在餐盤上，用柳橙片和新鲜歐芹裝飾。搭配梅子醬和蔥"]'
),
(
    'pho',
    '越南河粉',
    '["2 packs Vietnamese rice noodles", "4 ounces fresh beef slices", "Beef broth base", "2 pounds beef bones", "1 pound beef brisket", "1 onion", "5 liters water", "Broth seasonings", "4 thick slices ginger", "1 onion", "3 cinnamon sticks", "4 cardamom pods", "3 star anise", "4 sprigs cilantro stems", "1 teaspoon salt", "1 teaspoon sugar", "1/2 cup fish sauce", "Garnishes", "4 ounces bean sprouts", "1/2 onion", "A few red and green chilies", "A few chopped scallions", "Several stalks of scallions", "A small handful of basil", "A pinch of black pepper", "1/4 lime"]',
    '["2包越南米粉", "4盎司新鮮牛肉片", "牛高湯基底", "2磅牛骨", "1磅牛腩", "1個洋蔥", "5公升水", "高湯調味料", "4片厚薑", "1個洋蔥", "3根肉桂", "4顆豆蔻", "3顆八角", "4枝香菜莖", "1茶匙鹽", "1茶匙糖", "1/2杯魚露", "裝飾", "4盎司豆芽", "1/2個洋蔥", "幾個紅綠辣椒", "幾根碎蔥", "幾根蔥", "一小把羅勒", "少許黑胡椒", "1/4個萊姆"]',
    '["Clean the beef bones in a large pot, blanch in boiling water for 5 minutes to remove excess fat and impurities. Remove and rinse the bones.", "Clean the pot, add beef bones, cleaned brisket, peeled whole onion, and 5 liters of water.", "Bring to a boil on high heat, then reduce to medium heat and simmer for 2 hours. During this time, prepare the broth seasonings.", "Cut ginger into thick slices about the size of a finger, halve the onion, wash cilantro stems, and set aside cinnamon sticks, cardamom pods, and star anise.", "Heat a dry pan and add the ginger, onion, cilantro stems, cinnamon, cardamom, and star anise. Toast over medium-high heat until fragrant.", "Once toasted, scrape off the burnt parts of the ginger and onion to avoid clouding the broth. Add the toasted seasonings to the beef broth and simmer to infuse the flavors.", "After 1 hour of simmering, remove the brisket and slice it.", "After 2 hours of simmering, add salt, sugar, and fish sauce to taste.", "Meanwhile, prepare the garnishes: blanch the bean sprouts in boiling water for 10 seconds, drain and set aside.", "Cut half an onion into thin strips and soak in ice water to remove the pungency.", "Deseed and dice the red and green chilies (keep the seeds for extra spice if desired), chop the scallions, split the white parts to enhance flavor, and wash the basil leaves.", "Cut the lime into 4 wedges. Optionally, prepare seafood sauce and sriracha.", "Cook the Vietnamese rice noodles according to the package instructions: soak in cold water for 5-10 minutes, then cook in boiling water for 6-8 minutes, drain and set aside.", "Thinly slice the fresh beef (ask your butcher to slice it thinly). If concerned, you can blanch it in boiling water briefly before use.", "For the soup, you can"]',
    '["在大鍋中清洗牛骨，在沸水中焯水5分鐘以去除多餘的脂肪和雜質。取出並沖洗牛骨。", "清洗鍋，加入牛骨、清洗過的牛腩、去皮的整洋蔥和5公升水。", "以大火煮沸，然後轉中火小火煮2小時。在此期間，準備高湯調味料。", "將薑切成約手指大小的厚片，洋蔥切半，洗淨香菜莖，備用肉桂、豆蔻和八角。", "加熱乾鍋，加入薑、洋蔥、香菜莖、肉桂、豆蔻和八角。以中高火烘烤直到出香味。", "烘烤後，刮掉薑和洋蔥的燒焦部分，以避免高湯變渾濁。將烘烤過的調味料加入牛高湯中，小火煮以融入風味。", "小火煮1小時後，取出牛腩並切片。", "小火煮2小時後，加入鹽、糖和魚露調味。", "同時，準備裝飾：將豆芽在沸水中焯水10秒，瀝乾，備用。", "將半個洋蔥切成細條，浸泡在冰水中以去除辛辣味。", "將紅綠辣椒去籽並切丁（如需保留籽以增加辣味），切碎蔥，將白色部分切開以增強風味，洗淨羅勒葉。", "將萊姆切成4塊。可選，準備海鮮醬和是拉差辣醬。", "按照包裝說明煮越南米粉：在冷水中浸泡5-10分鐘，然後在沸水中煮6-8分鐘，瀝乾，備用。", "將新鮮牛肉切片（請肉販切薄片）。如有需要，可以在使用前在沸水中快速焯水。", "對於湯，你可以"]'
),
(
    'pizza',
    '披薩',
    '["4 c. self-rising flour", "1/4 c. sugar", "2 c. warm milk", "1/3 c. oil"]',
    '["4杯自發麵粉", "1/4杯糖", "2杯溫牛奶", "1/3杯油"]',
    '["Dissolve yeast in milk; add oil, flour and sugar.", "Knead 3 to 4 minutes.", "Divide and then spread on a greased pizza pan or cookie sheet.", "Let rise for 15 to 30 minutes.", "Bake 15 minutes. Take out and add sauce, meat, etc. and then cheese.", "Cook until cheese melts.", "For sauce use 1 jar Always Save spaghetti sauce. Add your own spices.", "Use Velveeta, Cheddar or Mozzarella cheeses."]',
    '["將酵母溶於牛奶中；加入油、麵粉和糖。", "揉3至4分鐘。", "分開，然後塗在塗油的披薩盤或餅乾盤上。", "發酵15至30分鐘。", "烘烤15分鐘。取出，加入醬汁、肉等，然後加起司。", "煮到起司融化。", "醬汁使用1罐Always Save義大利麵醬。加入你自己的香料。", "使用維維塔、切達或莫札瑞拉起司。"]'
),
(
    'pork_chop',
    '豬排',
    '["1 medium onion", "1 large pepper", "1 can stewed tomatoes, chopped", "2 tsp. sugar", "salt and pepper to taste", "1/2 c. V-8 tomato juice", "4 to 5 pork chops"]',
    '["1個中等洋蔥", "1個大辣椒", "1罐燉番茄，切碎", "2茶匙糖", "適量鹽和胡椒", "1/2杯V-8番茄汁", "4至5片豬排"]',
    '["Clean the beef bones in a large pot, blanch in boiling water for 5 minutes to remove excess fat and impurities. Remove and rinse the bones.", "Clean the pot, add beef bones, cleaned brisket, peeled whole onion, and 5 liters of water.", "Bring to a boil on high heat, then reduce to medium heat and simmer for 2 hours. During this time, prepare the broth seasonings.", "Cut ginger into thick slices about the size of a finger, halve the onion, wash cilantro stems, and set aside cinnamon sticks, cardamom pods, and star anise.", "Heat a dry pan and add the ginger, onion, cilantro stems, cinnamon, cardamom, and star anise. Toast over medium-high heat until fragrant.", "Once toasted, scrape off the burnt parts of the ginger and onion to avoid clouding the broth. Add the toasted seasonings to the beef broth and simmer to infuse the flavors.", "After 1 hour of simmering, remove the brisket and slice it.", "After 2 hours of simmering, add salt, sugar, and fish sauce to taste.", "Meanwhile, prepare the garnishes: blanch the bean sprouts in boiling water for 10 seconds, drain and set aside.", "Cut half an onion into thin strips and soak in ice water to remove the pungency.", "Deseed and dice the red and green chilies (keep the seeds for extra spice if desired), chop the scallions, split the white parts to enhance flavor, and wash the basil leaves.", "Cut the lime into 4 wedges. Optionally, prepare seafood sauce and sriracha.", "Cook the Vietnamese rice noodles according to the package instructions: soak in cold water for 5-10 minutes, then cook in boiling water for 6-8 minutes, drain and set aside.", "Thinly slice the fresh beef (ask your butcher to slice it thinly). If concerned, you can blanch it in boiling water briefly before use.", "For the soup, you can"]',
    '["在大鍋中清洗牛骨，在沸水中焯水5分鐘以去除多餘的脂肪和雜質。取出並沖洗牛骨。", "清洗鍋，加入牛骨、清洗過的牛腩、去皮的整洋蔥和5公升水。", "以大火煮沸，然後轉中火小火煮2小時。在此期間，準備高湯調味料。", "將薑切成約手指大小的厚片，洋蔥切半，洗淨香菜莖，備用肉桂、豆蔻和八角。", "加熱乾鍋，加入薑、洋蔥、香菜莖、肉桂、豆蔻和八角。以中高火烘烤直到出香味。", "烘烤後，刮掉薑和洋蔥的燒焦部分，以避免高湯變渾濁。將烘烤過的調味料加入牛高湯中，小火煮以融入風味。", "小火煮1小時後，取出牛腩並切片。", "小火煮2小時後，加入鹽、糖和魚露調味。", "同時，準備裝飾：將豆芽在沸水中焯水10秒，瀝乾，備用。", "將半個洋蔥切成細條，浸泡在冰水中以去除辛辣味。", "將紅綠辣椒去籽並切丁（如需保留籽以增加辣味），切碎蔥，將白色部分切開以增強風味，洗淨羅勒葉。", "將萊姆切成4塊。可選，準備海鮮醬和是拉差辣醬。", "按照包裝說明煮越南米粉：在冷水中浸泡5-10分鐘，然後在沸水中煮6-8分鐘，瀝乾，備用。", "將新鮮牛肉切片（請肉販切薄片）。如有需要，可以在使用前在沸水中快速焯水。", "對於湯，你可以"]'
),
(
    'poutine',
    '魁北克薯條起司球',
    '["3 tablespoons extra-virgin olive oil", "1 teaspoon salt", "1 teaspoon freshly ground black pepper", "1/2 teaspoon garlic powder", "1 teaspoon dried parsley", "5 red potatoes, scrubbed and cut into wedges", "2 (.75 ounce) packets brown gravy mix", "2 cups low-sodium chicken broth", "2 cups cheese curds"]',
    '["3大匙特級初榨橄欖油", "1茶匙鹽", "1茶匙新鮮研磨黑胡椒", "1/2茶匙大蒜粉", "1茶匙乾歐芹", "5個紅馬鈴薯，刷洗並切成楔形", "2包（0.75盎司）棕色肉汁粉", "2杯低鈉雞高湯", "2杯起司塊"]',
    '["Preheat oven to 350 degrees F (175 degrees C).", "Combine extra-virgin olive oil, salt, black pepper, garlic powder, and parsley in a large zip lock bag; add cut red potatoes and shake until potatoes are covered.", "Line a cookie sheet with foil; lightly cover with oil. Arrange potatoes on cookie sheet. Bake potatoes, flipping every 20 minutes, until golden brown, about 45 minutes to 1 hour. Transfer fries to a large bowl.", "Whisk brown gravy mix with chicken broth in a saucepan, place over medium heat, and bring to a boil, whisking often. Reduce heat to low; simmer for 1 minute, continuing to whisk. Let stand off the heat for 1 minute for gravy to thicken.", "Layer cheese curds over fries and top with prepared gravy."]',
    '["預熱烤箱至350°F（175°C）。", "在大拉鍊袋中混合特級初榨橄欖油、鹽、黑胡椒、大蒜粉和歐芹；加入切好的紅馬鈴薯，搖晃直到馬鈴薯被覆蓋。", "在餅乾盤上鋪上鋁箔紙；輕輕塗上油。將馬鈴薯排列在餅乾盤上。烘烤馬鈴薯，每20分鐘翻一次，直到金棕色，約45分鐘至1小時。將薯條轉移到碗中。", "在鍋中將棕色肉汁粉與雞高湯混合，以中火加熱，煮沸，經常攪拌。轉小火；小火煮1分鐘，繼續攪拌。離火靜置1分鐘，讓肉汁濃稠。", "在薯條上鋪上起司塊，頂部放上準備好的肉汁。"]'
),
(
    'prime_rib',
    '頂級肋眼牛排',
    '["1 large prime rib roast", "12 cloves garlic", "3 Tbsp. kosher salt", "3 Tbsp. pepper", "1 1/2 Tbsp. paprika"]',
    '["1個大頂級肋眼牛排", "12瓣大蒜", "3大匙 kosher鹽", "3大匙黑胡椒", "1.5大匙紅椒粉"]',
    '["Cover meat with all ingredients.", "Cover with rock salt all over top.", "Bake, uncovered, at 200° for 3 to 4 hours or if a large roast, bake 7 to 8 hours."]',
    '["用所有材料覆蓋肉。", "在頂部覆蓋岩鹽。", "不蓋蓋子，以200°F烘烤3至4小時，或如果是大烤肉，烘烤7至8小時。"]'
),
(
    'pulled_pork_sandwich',
    '手撕豬肉堡',
    '["1 1/2 cups barbeque sauce, or more as desired", "1/2 cup chopped white onion", "1/4 cup ketchup", "1/4 cup brown sugar", "1 teaspoon salt", "1 teaspoon ground black pepper", "1/2 teaspoon chili powder", "1 pound boneless pork loin, quartered", "4 onion rolls, halved"]',
    '["1.5杯烤肉醬，或按需更多", "1/2杯碎白洋蔥", "1/4杯番茄醬", "1/4杯紅糖", "1茶匙鹽", "1茶匙黑胡椒粉", "1/2茶匙辣椒粉", "1磅去骨豬里脊，切成四塊", "4個洋蔥麵包，切半"]',
    '["Stir barbeque sauce, onion, ketchup, brown sugar, salt, black pepper, and chili powder in slow cooker; add pork loin and coat with sauce. Cover and cook on High until pork is very tender, about 4 1/2 hours. Shred pork with 2 forks. Keep warm on Low until ready to serve.", "Serve on onion rolls."]',
    '["在慢煮鍋中攪拌烤肉醬、洋蔥、番茄醬、紅糖、鹽、黑胡椒和辣椒粉；加入豬里脊，塗上醬汁。覆蓋，以高檔煮直到豬肉非常軟嫩，約4.5小時。用2把叉子將豬肉撕碎。以低檔保持溫暖直到準備食用。", "放在洋蔥麵包上食用。"]'
),
(
    'ramen',
    '拉麵',
    '["1 pkg. Ramen Oriental noodles", "4 c. chopped cabbage", "3 Tbsp. sugar", "3 Tbsp. vinegar", "2 Tbsp. olive oil", "dry soup base packet"]',
    '["1包拉麵東方麵條", "4杯碎高麗菜", "3大匙糖", "3大匙醋", "2大匙橄欖油", "乾湯料包"]',
    '["Cook noodles according to package and drain.", "Mix sugar, vinegar, dry soup base and olive oil.", "Add to cabbage and drained noodles.", "Toss gently and chill.", "May add nuts, chicken or shrimp."]',
    '["按照包裝說明煮麵條，瀝乾。", "混合糖、醋、乾湯料和橄欖油。", "加入高麗菜和瀝乾的麵條。", "輕輕拌勻，冷藏。", "可加入堅果、雞肉或蝦仁。"]'
),
(
    'ravioli',
    '義大利餃',
    '["2 lb. can Ricotta cheese", "8 eggs (large)", "handful of Romano cheese, grated", "salt", "pepper", "3 c. flour", "8 oz. water"]',
    '["2磅罐裝瑞可塔起司", "8個蛋（大）", "一把羅馬諾起司，磨碎", "鹽", "黑胡椒", "3杯麵粉", "8盎司水"]',
    '["Mix together in a bowl the Ricotta cheese, 5 eggs, Romano cheese and salt and pepper to taste.", "Beat with electric mixer. Set aside."]',
    '["在碗中混合瑞可塔起司、5個蛋、羅馬諾起司和適量鹽和黑胡椒。", "用電動攪拌器攪打。備用。"]'
),
(
    'red_velvet_cake',
    '紅絲絨蛋糕',
    '["2 c. Wesson oil", "2 1/2 c. plain flour", "1 1/2 c. sugar", "1 c. buttermilk", "2 eggs", "2 tsp. cocoa", "2 tsp. soda", "1 tsp. baking powder", "1 tsp. vinegar", "1 oz. red food coloring", "1 tsp. vanilla"]',
    '["2杯Wesson油", "2.5杯普通麵粉", "1.5杯糖", "1杯酪乳", "2個蛋", "2茶匙可可", "2茶匙小蘇打", "1茶匙泡打粉", "1茶匙醋", "1盎司紅色食用色素", "1茶匙香草精"]',
    '["Grease and flour pans.", "(Makes three (9-inch) layers.) Mix all ingredients together and bake at 350° for 30 minutes."]',
    '["在烤盤上塗油並撒麵粉。", "（可做三層（9英寸）。）將所有材料混合均勻，以350°F烘烤30分鐘。"]'
),
(
    'risotto',
    '義大利燉飯',
    '["3 c. low salt chicken broth", "1 medium onion, chopped", "6 Tbsp. extra virgin flavorful olive oil", "1 1/3 c. raw Italian Arborio rice", "1/3 c. grated Parmesan cheese", "1/4 tsp. black pepper"]',
    '["3杯低鹽雞高湯", "1個中等洋蔥，切碎", "6大匙特級初榨風味橄欖油", "1.33杯生義大利阿博里奧米", "1/3杯帕馬森起司碎", "1/4茶匙黑胡椒"]',
    '["In a medium pan, heat chicken broth to a simmer over medium heat.", "While broth is heating, saute onion in oil for 3 or 5 minutes until soft.", "Add rice and stir to coat with oil.", "Add 1/2 cup broth and stir with a wooden spoon until the broth has been absorbed.", "Continue this pattern with rest of broth, adding it 1/2 cup at a time and stirring until it is absorbed by the rice.", "When you have used all the broth, test the rice to see if it is still too chewy.", "If so, add more hot broth or hot water until it reaches the desired consistency.", "Remove from heat and stir in cheese and black pepper."]',
    '["在中號鍋中，以中火將雞高湯加熱到小火煮。", "在高湯加熱時，在油中炒洋蔥3或5分鐘直到軟。", "加入米，攪拌使其裹上油。", "加入1/2杯高湯，用木勺攪拌直到高湯被吸收。", "用剩下的高湯繼續此模式，每次加入1/2杯，攪拌直到被米吸收。", "當你用完了所有高湯，測試米是否仍然太有嚼勁。", "如果是，加入更多熱高湯或熱水直到達到理想的稠度。", "離火，加入起司和黑胡椒，攪拌。"]'
),
(
    'samosa',
    '印度三角餃',
    '["8 oz. potatoes, cut in even size pieces", "3/4 c. frozen green peas", "2 Tbsp. corn oil", "1 onion, finely chopped", "1/2 tsp. cumin seed", "1 (1/2-inch) piece ginger root, peeled and grated", "1/2 tsp. turmeric", "1/2 tsp. Garam Masala", "1/2 tsp. salt", "2 tsp. lemon juice", "1 c. all-purpose flour", "2 Tbsp. butter", "2 Tbsp. warm milk", "vegetable oil for deep frying", "lime twists, if desired", "fresh celery leaves, if desired", "Mango Chutney"]',
    '["8盎司馬鈴薯，切成均勻大小的塊", "3/4杯冷凍青豆", "2大匙玉米油", "1個洋蔥，細切", "1/2茶匙孜然籽", "1塊（1/2英寸）薑根，去皮並磨碎", "1/2茶匙薑黃", "1/2茶匙印度綜合香料", "1/2茶匙鹽", "2茶匙檸檬汁", "1杯全能麵粉", "2大匙奶油", "2大匙溫牛奶", "深炸用植物油", "萊姆皮扭，可選", "新鮮芹菜葉，可選", "芒果酸辣醬"]',
    '["In a saucepan, boil potatoes in salted water 15 to 20 minutes or until tender.", "Drain well, return to saucepan and shake over low heat a few moments or until dry.", "Mash well.", "Cook peas in boiling salted water 4 minutes.", "Drain well."]',
    '["在鍋中，在鹽水中煮馬鈴薯15至20分鐘或直到軟。", "充分瀝乾，放回鍋中，在小火上搖晃幾分鐘或直到乾。", "充分壓碎。", "在沸鹽水中煮青豆4分鐘。", "充分瀝乾。"]'
),
(
    'sashimi',
    '生魚片',
    '["1/2 to 1 lb. fresh ahi", "2 to 3 Tbsp. garlic, minced", "4 Tbsp. capers", "1/4 c. virgin olive oil", "1/4 c. balsamic vinegar or other seasoned vinegar", "grated fresh Parmesan cheese (may use fresh Romano cheese)"]',
    '["1/2至1磅新鮮黃鰭金槍魚", "2至3大匙大蒜，切碎", "4大匙酸豆", "1/4杯初榨橄欖油", "1/4杯香醋或其他調味醋", "新鮮帕馬森起司碎（可用新鮮羅馬諾起司）"]',
    '["Thinly slice ahi and lay on platter.", "Cover with plastic wrap. Use wooden meat hammer to pound thin.", "Remove plastic wrap.", "Spread minced (or crushed) garlic over ahi.", "Grate fresh Parmesan and sprinkle capers.", "Chill until ready to serve.", "Mix olive oil and seasoned vinegar in a small covered jar.", "Shake well.", "Just prior to serving, pour vinegar and oil mixture evenly over the dish and enjoy."]',
    '["將黃鰭金槍魚切片，放在盤子上。", "用保鮮膜覆蓋。用木肉鎚敲打直到薄。", "移除保鮮膜。", "在黃鰭金槍魚上塗上碎（或壓碎）大蒜。", "磨上新鮮帕馬森起司，撒上酸豆。", "冷藏直到準備食用。", "在帶蓋小罐中混合橄欖油和調味醋。", "充分搖晃。", "在食用前，將醋和油混合物均勻倒在菜上，享用。"]'
),
(
    'scallops',
    '干貝',
    '["6 oz. onion cheese", "1/4 c. dry white wine", "1 medium onion, chopped", "1 c. real mayonnaise", "1 lb. bay scallops", "1/2 lb. mushrooms, sliced"]',
    '["6盎司洋蔥起司", "1/4杯乾白葡萄酒", "1個中等洋蔥，切碎", "1杯真美乃滋", "1磅灣干貝", "1/2磅蘑菇，切片"]',
    '["Stir together the cheese, mayonnaise and wine; reserve.", "In a 10-inch skillet over medium-high heat, melt 2 tablespoons butter; add the scallops and cook, stirring, just until they are opaque, a minute or so.", "With a slotted spoon, remove scallops to paper toweling to drain.", "Add the remaining 2 tablespoons butter to the skillet with the onion; cook gently until slightly golden and add mushrooms.", "Cook rapidly, stirring, so they do not release their liquid, a few minutes.", "Turn off heat and stir in the reserved cheese mixture and scallops.", "Bake in casserole until warmed through.", "Serve over noodles."]',
    '["將起司、美乃滋和葡萄酒混合；備用。", "在10英寸平底鍋中以中高火加熱，融化2大匙奶油；加入干貝，邊煮邊攪拌，直到它們變不透明，約1分鐘。", "用漏勺將干貝移到紙巾上瀝乾。", "在平底鍋中加入剩下的2大匙奶油和洋蔥；輕輕煮直到稍微金黃色，加入蘑菇。", "快速煮，攪拌，使它們不釋放汁液，幾分鐘。", "關火，拌入備用的起司混合物和干貝。", "在烤盤中烘烤直到熱透。", "放在麵條上食用。"]'
),
(
    'seaweed_salad',
    '海帶沙拉',
    '["1 pkg. lemon jello", "1 pkg. lime jello", "1 1/2 c. boiling water", "1 (No. 2) can crushed pineapple", "1 c. evaporated milk", "pinch of salt", "1 lb. cottage cheese", "1 c. mayonnaise", "1 Tbsp. horseradish", "1 c. nuts"]',
    '["1包檸檬果凍粉", "1包萊姆果凍粉", "1.5杯沸水", "1罐（2號）碎鳳梨", "1杯蒸餾牛奶", "少許鹽", "1磅起司", "1杯美乃滋", "1大匙辣根", "1杯堅果"]',
    '["Make day before.", "Combine jello and water, then add other ingredients, leaving cottage cheese and nuts last.", "Keep in refrigerator until ready to use.", "Serve on lettuce leaf, if desired."]',
    '["提前一天製作。", "混合果凍粉和水，然後加入其他材料，起司和堅果最後加入。", "存放在冰箱中直到準備食用。", "如需，放在生菜葉上食用。"]'
),
(
    'shrimp_and_grits',
    '蝦仁粗玉米粉',
    '["1 lb. fresh shrimp, peeled", "6 slices bacon", "peanut oil", "2 c. sliced mushrooms", "1 c. scallions or green onions", "1 large clove garlic, minced", "4 tsp. lemon juice", "Tabasco sauce", "chopped parsley", "salt and pepper to taste", "Cheese Grits (see index)"]',
    '["1磅新鮮蝦仁，去皮", "6片培根", "花生油", "2杯切片蘑菇", "1杯蔥或青蔥", "1大瓣大蒜，切碎", "4茶匙檸檬汁", "塔巴斯科辣醬", "碎歐芹", "適量鹽和胡椒", "起司粗玉米粉（見索引）"]',
    '["Wash shrimp and pat dry.", "Dice bacon and cook until just crisp in a large skillet. Drain bacon and reserve. Add enough oil to bacon fat to make a thin layer.", "When hot, add shrimp.", "Stir about and add scallions and garlic.", "Season to taste with lemon, hot sauce, parsley, salt and pepper. Divide grits. Spoon shrimp over grits and top with bacon.", "Serves 4."]',
    '["洗蝦仁，拍乾。", "將培根切丁，在大平底鍋中煮到剛脆。瀝乾培根，備用。在培根脂肪中加入足夠的油形成一層薄油。", "當熱時，加入蝦仁。", "攪拌，加入蔥和大蒜。", "用檸檬、辣醬、歐芹、鹽和胡椒調味。分裝粗玉米粉。將蝦仁舀在粗玉米粉上，頂部放上培根。", "4人份。"]'
),
(
    'spaghetti_bolognese',
    '肉醬義大利麵',
    '["1 lb. ground beef", "1 onion", "1/2 lb. mushrooms", "1 oz. butter", "garlic to taste", "2 Tbsp. Worcestershire sauce", "1 c. ketchup", "1 tsp. paprika", "1 c. Naturally Fresh sweet and sour sauce", "1 packet spaghetti"]',
    '["1磅牛肉末", "1個洋蔥", "1/2磅蘑菇", "1盎司奶油", "適量大蒜", "2大匙伍斯特醬", "1杯番茄醬", "1茶匙紅椒粉", "1杯Naturally Fresh甜酸醬", "1包義大利麵"]',
    '["Fry meat until brown.", "In separate pan, fry mushrooms, garlic and onions in the butter.", "Drain off fat from both pans and join together.", "Cook spaghetti as directed on package.", "Add all other ingredients, stirring until blended.", "Cook over medium heat while spaghetti is cooking."]',
    '["將肉煎至棕色。", "在單獨的鍋中，在奶油中煎蘑菇、大蒜和洋蔥。", "將兩個鍋中的脂肪瀝乾，合併。", "按照包裝說明煮義大利麵。", "加入所有其他材料，攪拌直到混合。", "在義大利麵煮的時候以中火煮。"]'
),
(
    'spaghetti_carbonara',
    '奶油培根義大利麵',
    '["3 gloves garlic", "1/2 lb. bacon, chopped", "1/4 c. white wine", "salt and pepper", "grated cheese", "1 medium onion, chopped", "1 pkg. frozen peas", "1/4 c. chicken broth", "1 egg, beaten", "1 lb. spaghetti"]',
    '["3瓣大蒜", "1/2磅培根，切碎", "1/4杯白葡萄酒", "鹽和黑胡椒", "起司碎", "1個中等洋蔥，切碎", "1包冷凍青豆", "1/4杯雞高湯", "1個蛋，打散", "1磅義大利麵"]',
    '["Saute onion, garlic and bacon together.", "Add wine and broth; cook 10 minutes.", "Add defrosted peas; continue cooking over medium heat for 5 more minutes.", "Cook spaghetti according to package directions.", "Add mixture to spaghetti.", "Add egg and cheese; mix well and serve."]',
    '["一起炒洋蔥、大蒜和培根。", "加入葡萄酒和高湯；煮10分鐘。", "加入解凍的青豆；以中火繼續煮5分鐘。", "按照包裝說明煮義大利麵。", "將混合物加入義大利麵中。", "加入蛋和起司；充分混合，食用。"]'
),
(
    'spring_rolls',
    '春捲',
    '["1 c. ground pork", "1/2 c. cooked shrimp, chopped", "1/2 c. crab meat, boiled", "1 c. bean sprouts", "1 Tbsp. sugar", "2 Tbsp. chopped green onion", "2 Tbsp. chopped celery leaves", "2 tsp. salt", "1/2 c. jelly noodles (a kind of transparent vermicelli made of mung bean)", "1/2 Tbsp. chopped garlic", "6 dried black mushrooms, chopped", "1 Tbsp. nampla (fish sauce)", "1 Tbsp. soy sauce", "4 eggs, slightly beaten, fried and chopped", "1 egg yolk", "2 c. vegetable oil", "1 tsp. pepper"]',
    '["1杯豬肉末", "1/2杯煮熟蝦仁，切碎", "1/2杯蟹肉，煮熟", "1杯豆芽", "1大匙糖", "2大匙碎蔥", "2大匙碎芹菜葉", "2茶匙鹽", "1/2杯粉條（一種由綠豆製成的透明細麵）", "1/2大匙碎大蒜", "6個乾香菇，切碎", "1大匙魚露", "1大匙醬油", "4個蛋，輕打，煎熟並切碎", "1個蛋黃", "2杯植物油", "1茶匙黑胡椒"]',
    '["Heat vegetable oil in frying pan.", "Add chopped garlic and fry for 2 minutes.", "Put in ground pork, shrimp, crab meat, bean sprouts, eggs, green onion, celery, black mushrooms and jelly noodles.", "Fry for 5 minutes.", "Add soy sauce, nampla, salt and pepper"]',
    '["在平底鍋中加熱植物油。", "加入碎大蒜，煎2分鐘。", "加入豬肉末、蝦仁、蟹肉、豆芽、蛋、蔥、芹菜、香菇和粉條。", "煎5分鐘。", "加入醬油、魚露、鹽和黑胡椒"]'
),
(
    'steak',
    '牛排',
    '["1 whole deer tenderloin steak", "bacon", "wine", "A.1. steak sauce", "onion", "pepper", "butter", "season salt"]',
    '["1整塊鹿里脊牛排", "培根", "葡萄酒", "A.1牛排醬", "洋蔥", "黑胡椒", "奶油", "調味鹽"]',
    '["Take whole deer tenderloin steak, put 5 or 6 slices of bacon in pan, a little cooking wine (red) and a little A.1.", "steak sauce.", "Add sliced onion and pepper.", "Fry all in butter for 5 to 7 minutes on high.", "Add a little Morton Nature Season."]',
    '["取整塊鹿里脊牛排，在鍋中放入5或6片培根、少量烹飪葡萄酒（紅）和少量A.1。", "牛排醬。", "加入切片洋蔥和黑胡椒。", "在奶油中以大火煎5至7分鐘。", "加入少量Morton Nature調味鹽。"]'
),
(
    'strawberry_shortcake',
    '草莓鮮奶油蛋糕',
    '["1 1/2 c. sugar", "1/2 c. Crisco, melted", "2 eggs", "2 tsp. baking powder", "1 1/2 c. flour", "1 c. milk", "2 tsp. vanilla"]',
    '["1.5杯糖", "1/2杯Crisco起酥油，融化", "2個蛋", "2茶匙泡打粉", "1.5杯麵粉", "1杯牛奶", "2茶匙香草精"]',
    '["Add, in the order listed, and mix well.", "Pour into oblong baking pan or dish.", "Bake at 375° for 40 minutes.", "Cool and add fresh strawberries and milk, if so desired."]',
    '["按照列出的順序加入，充分混合。", "倒入長方形烤盤或烤盅中。", "以375°F烘烤40分鐘。", "冷卻，如需，加入新鮮草莓和牛奶。"]'
),
(
    'sushi',
    '壽司',
    '["1 c. water", "3 Tbsp. white vinegar", "2 Tbsp. sugar", "3/4 c. short-grain rice", "6 Nori seaweed squares", "soy sauce", "wasabi", "filling of choice (see following)"]',
    '["1杯水", "3大匙白醋", "2大匙糖", "3/4杯短粒米", "6片海苔", "醬油", "芥末", "自選餡料（見下文）"]',
    '["Combine rice, water, sugar and vinegar in a saucepan.", "Bring to a boil.", "Turn fire down to low.", "Cover and cook until rice is done.", "Allow to cool to room temperature.", "Toast Nori lightly by waving briefly over an open flame.", "Place on a kitchen towel or a sushi mat.", "Top with a thin layer of rice, leaving 1/2-inch at far end of Nori uncovered.", "Along the proximal end of the square, line up your filling of choice.", "Roll in jelly roll fashion, using the mat or towel as an aid.", "Remember that 1/2-inch of the tail end of the Nori you left uncovered?", "Dampen it with a wet finger and use it to seal your sushi roll. You should end up with a sausage-like black tube, the filling in the middle."]',
    '["在鍋中混合米、水、糖和醋。", "煮沸。", "轉小火。", "蓋上鍋蓋，煮直到米熟。", "冷卻至室溫。", "將海苔在明火上輕輕揮動，稍微烘烤。", "放在廚房毛巾或壽司墊上。", "鋪上一層薄薄的米，在海苔的遠端留出1/2英寸不覆蓋。", "在方塊的近端，排列你選擇的餡料。", "像捲蛋糕一樣捲起，使用墊子或毛巾作為輔助。", "記得你留下的海苔尾端1/2英寸沒有覆蓋嗎？", "用濕手指弄濕它，用它來密封你的壽司捲。你應該得到一個像香腸一樣的黑色管子，餡料在中间。"]'
),
(
    'tacos',
    '墨西哥捲餅',
    '["1 pkg. shaped taco shells or 1 pkg. soft tortillas", "1 lb. ground beef or turkey", "grated Cheddar cheese", "chopped olives", "chopped tomatoes", "shredded cheese", "sour cream", "hot sauce"]',
    '["1包成型捲餅殼或1包軟玉米餅", "1磅牛肉末或火雞肉", "切達起司碎", "碎橄欖", "碎番茄", "起司絲", "酸奶油", "辣醬"]',
    '["Brown chopped meat, stirring often.", "Add salt and pepper to taste.", "Drain off fat.", "Put ground meat in a bowl.", "Everyone puts their favorite things on their own tacos.", "Eat and enjoy."]',
    '["將碎肉煎至棕色，經常攪拌。", "加入適量鹽和黑胡椒。", "瀝乾脂肪。", "將肉末放入碗中。", "每個人在自己的捲餅上放上他們喜歡的東西。", "食用並享用。"]'
),
(
    'takoyaki',
    '章魚燒',
    '["10.5 ounces Cake Flour", "3 Eggs - beaten", "4.25 cups Ice Cold Water", "1/2 teaspoon Salt", "1 teaspoon Hondashi Granules", "2 teaspoons Ponzu or Yuzupon Sauce", "1/2 pound Boiled Octopus Legs (cut into 1/2\" pieces)", "4 Green Onions Minced", "1 bunch Pickled Ginger Minced", "1 cup Rice Crispy Cearal", "Oil", "Aonori (Dried Seaweed Powder)", "Takoyaki Sauce", "Mayonnaise", "Bonito Flake"]',
    '["10.5盎司蛋糕麵粉", "3個蛋 - 打散", "4.25杯冰水", "1/2茶匙鹽", "1茶匙日式出汁顆粒", "2茶匙ポン酢或柚子ポン醬", "1/2磅煮熟章魚腳（切成1/2英寸塊）", "4根蔥切碎", "1束醃薑切碎", "1杯米脆麥片", "油", "海苔粉", "章魚燒醬", "美乃滋", "柴魚片"]',
    '["Blend the ice water and dashi stock granules until dissolved. Add the sauce and eggs. Add the flour, and mix together gently. Do not over mix, the batter will be slightly lumpy.", "Wad up a paper towel into a fat cigar shape and soak one end with oil. Oil each hole in the pan as well as the surface. Pour batter into each hole 2/3rds full. (pour in a clockwise direction starting at 12:00 so you remember where you started) Add 1 piece of octopus to each hole and sprinkle in a little bit each of the following: green onion, ginger and cereal. When finished fill each hole to the top with batter.", "Use wooden chopsticks to sweep the edge of the first hole you poured. Once it starts to release (about 3 minutes total) sweep the chopstick under to flip the takoyaki on its side 90 degrees. Let the uncooked batter on top fall into the bottom the flip the takoyaki the whole way. Continue cooking and spinning the balls until they are evenly golden brown on all sides. (an additional 4-5 minutes total from the 90 degree flip)", "Top with takoyaki sauce, mayonnaise, bonito flake and aonori. Enjoy!"]',
    '["將冰水和出汁顆粒混合直到溶解。加入醬和蛋。加入麵粉，輕輕混合。不要過度混合，麵糊會稍微結塊。", "將紙巾揉成粗香腸形狀，一端浸泡油。在鍋的每個洞和表面塗油。將麵糊倒入每個洞，倒至2/3滿。（從12點開始順時針倒，這樣你記得從哪裡開始）每個洞加入1塊章魚，撒上少量以下材料：蔥、薑和麥片。完成後，用麵糊將每個洞填滿。", "用木筷子掃過你倒的第一個洞的邊緣。當它開始脫落（總共約3分鐘）時，用筷子在下方掃過，將章魚燒翻側90度。讓頂部的未煮麵糊掉到底部，將章魚燒完全翻轉。繼續煮並旋轉球，直到各面均勻呈金棕色。（從90度翻轉後再4-5分鐘）", "頂部放上章魚燒醬、美乃滋、柴魚片和海苔粉。享用！"]'
);
-- (
--     'tiramisu',
--     '提拉米蘇',
--     '["8 oz. bittersweet chocolate", "24 ladyfingers", "2 c. strong Espresso coffee, cooled", "6 eggs, separated", "6 heaping Tbsp. granulated sugar", "1 lb. Mascarpone"]',
--     '["8盎司苦甜巧克力", "24根手指餅乾", "2杯濃縮咖啡，冷卻", "6個蛋，分離", "6滿大匙粒糖", "1磅馬斯卡彭起司"]',
--     '["Chop the chocolate coarsely or cut into small pieces.", "Put ladyfingers on a plate and lightly soak them with cold coffee. Arrange half of the ladyfingers in 1 layer on a rectangular or oval serving dish with sides at least 2 inches high."]',
--     '["將巧克力粗略切碎或切成小塊。", "將手指餅乾放在盤子上，用冷咖啡輕輕浸泡。將一半的手指餅乾鋪在長方形或橢圓形餐盤上，盤邊至少2英寸高。"]'
-- ),
-- (
--     'tuna_tartare',
--     '吞拿魚塔塔',
--     '["1 pound sushi grade tuna, finely diced", "3 tablespoons olive oil", "1/4 teaspoon wasabi powder", "1 tablespoon sesame seeds", "1/8 teaspoon cracked black pepper", "sliced French bread"]',
--     '["1磅壽司級吞拿魚，細切", "3大匙橄欖油", "1/4茶匙芥末粉", "1大匙芝麻", "1/8茶匙粗黑胡椒", "切片法式麵包"]',
--     '["In a bowl, stir together olive oil, wasabi powder, sesame seeds, and cracked black pepper. Toss tuna into mixture until evenly coated. Adjust seasoning as desired with additional wasabi powder or black pepper. Serve on sliced French bread."]',
--     '["在碗中，混合橄欖油、芥末粉、芝麻和粗黑胡椒。將吞拿魚拌入混合物中，直到均勻裹上。按需加入更多芥末粉或黑胡椒調味。放在切片法式麵包上食用。"]'
-- ),
-- (
--     'waffles',
--     '華夫餅',
--     '["2 c. flour", "2 c. milk", "3 tsp. baking powder", "1/2 tsp. salt", "4 Tbsp. melted butter", "2 eggs, beat separately"]',
--     '["2杯麵粉", "2杯牛奶", "3茶匙泡打粉", "1/2茶匙鹽", "4大匙融化奶油", "2個蛋，分別打發"]',
--     '["Sift flour, salt and baking powder into bowl.", "Beat yolks well and add milk.", "Beat, adding this to the flour mixture, slowly beating until smooth.", "Add melted butter and fold in stiffly beaten egg whites.", "Bake in waffle iron."]',
--     '["將麵粉、鹽和泡打粉過篩入碗中。", "將蛋黃打發，加入牛奶。", "攪打，將此加入麵粉混合物中，慢慢攪打直到光滑。", "加入融化奶油，拌入硬性打發的蛋清。", "在華夫餅機中烘烤。"]'
-- );


