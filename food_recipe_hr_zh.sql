DROP TABLE IF EXISTS `hr`;

CREATE TABLE `hr` (
  `title` text,
  `title_zh` text DEFAULT NULL,
  `ingredients` json DEFAULT NULL,
  `ingredients_zh` json DEFAULT NULL,
  `directions` json DEFAULT NULL,
  `directions_zh` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `hr` (
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
    '["1 (6 oz.) can (3/4 c.) unsweetened frozen apple juice concentrate", "1 tsp. cinnamon", "2 tsp. margarine", "2 Tbsp. Minute tapioca", "1 tsp. nutmeg"]',
    '["1罐（6盎司）（3/4杯）無糖冷凍蘋果汁濃縮液", "1茶匙肉桂", "2茶匙人造奶油", "2大匙速煮木薯粉", "1茶匙肉豆蔻"]',
    '["In saucepan, cook ingredients, stirring constantly until thick.", "Add 6 apples, peeled and sliced.", "Put into two crust pie shell and bake at 375° for one hour or usual timing for two crust pie."]',
    '["將材料放入鍋中，不斷攪拌煮至濃稠。", "加入6個去皮切片的蘋果。", "放入雙層派皮中，以375°F烘烤一小時，或按照雙層派皮的常規時間烘烤。"]'
),
(
    'beet_salad',
    '甜菜沙拉',
    '["1 (15 1/2 oz.) can crushed pineapple (save the juice)", "1 (15 1/2 oz.) can beets (diced, sliced or chopped; save the juice)", "1/4 c. lemon juice", "1/4 c. vinegar", "1 large raspberry jello", "1 Tbsp. sugar", "1/2 c. chopped nuts"]',
    '["1罐（15.5盎司）碎鳳梨（保留果汁）", "1罐（15.5盎司）甜菜（切丁、切片或切碎；保留果汁）", "1/4杯檸檬汁", "1/4杯醋", "1大盒覆盆子果凍粉", "1大匙糖", "1/2杯切碎堅果"]',
    '["Drain the pineapple and beets, saving the juice.", "Add lemon juice, vinegar and enough water added to the juice to make 3 1/2 cups liquid.", "Heat.", "Add the sugar and jello, stirring until completely dissolved; cool.", "Add cut up beets, pineapple and nuts. Pour into a large (9 x 13-inch or more) pan.", "Chill until set. Serve on lettuce with a little mayonnaise, if desired."]',
    '["將鳳梨和甜菜瀝乾，保留果汁。", "加入檸檬汁、醋和足夠的水，使果汁總量達到3.5杯。", "加熱。", "加入糖和果凍粉，攪拌至完全溶解；冷卻。", "加入切好的甜菜、鳳梨和堅果。倒入大烤盤（9x13英寸或更大）。", "冷藏至凝固。如需，可搭配生菜和少量美乃滋食用。"]'
),
(
    'bread_pudding',
    '麵包布丁',
    '["4 c. cubed (3/4-inch) French bread", "1/2 c. raisins", "3 c. 1% milk, divided", "3 Tbsp. packed brown sugar, divided", "pinch of salt", "1 large egg", "2 large egg whites", "1/3 c. sugar", "1 tsp. vanilla", "1/4 tsp. nutmeg", "1/2 tsp. cinnamon", "boiling water"]',
    '["4杯（3/4英寸）法式麵包丁", "1/2杯葡萄乾", "3杯1%低脂牛奶，分次使用", "3大匙緊壓紅糖，分次使用", "少許鹽", "1個大蛋", "2個大蛋清", "1/3杯糖", "1茶匙香草精", "1/4茶匙肉豆蔻", "1/2茶匙肉桂", "沸水"]',
    '["Preheat oven to 350°.", "In an 8-inch pan, spread bread and raisins.", "Whisk 2 cups of milk, 2 tablespoons brown sugar and salt in bowl.", "Pour over bread.", "Let stand 15 minutes, turning bread once."]',
    '["預熱烤箱至350°F。", "在8英寸烤盤中鋪上麵包和葡萄乾。", "在碗中攪拌2杯牛奶、2大匙紅糖和鹽。", "倒在麵包上。", "靜置15分鐘，中途翻動麵包一次。"]'
),
(
    'bruschetta',
    '義式烤麵包',
    '["1 c. nonfat process cream cheese", "1/4 c. plus 2 Tbsp. nonfat sour cream", "2 Tbsp. reduced calorie mayonnaise", "1 c. finely shredded low sodium fat Swiss cheese, divided", "1/4 c. finely grated fresh Parmesan cheese", "2 Tbsp. minced parsley", "1 Tbsp. minced green onion", "2 cloves garlic, minced", "16 (1-inch) diagonally cut slices French bread, toasted", "1/4 tsp. pepper"]',
    '["1杯無脂加工奶油起司", "1/4杯加2大匙無脂酸奶油", "2大匙低卡路里美乃滋", "1杯細碎低鈉瑞士起司，分次使用", "1/4杯新鮮帕馬森起司碎", "2大匙碎歐芹", "1大匙碎蔥", "2瓣大蒜，切碎", "16片（1英寸）斜切法式麵包，烤過", "1/4茶匙黑胡椒"]',
    '["Combine first 3 ingredients in a bowl; beat at medium speed of electric mixer until smooth.", "Stir in 1/2 cup of Swiss cheese, Parmesan cheese and next 3 ingredients.", "Spread cheese mixture evenly over toast slices; sprinkle evenly with remaining 1/2 cup Swiss cheese.", "Broil for 1 1/2 minutes or until Swiss cheese melts.", "Sprinkle with pepper.", "Yield: 16 servings."]',
    '["將前3種材料放入碗中；用電動攪拌器中速攪拌至光滑。", "加入1/2杯瑞士起司、帕馬森起司和接下來3種材料，攪拌均勻。", "將起司混合物均勻塗在吐司片上；均勻撒上剩下的1/2杯瑞士起司。", "烤1.5分鐘或直到瑞士起司融化。", "撒上黑胡椒。", "產量：16份。"]'
),
(
    'caesar_salad',
    '凱薩沙拉',
    '["2 (1 oz.) slices white bread", "olive oil flavored spray", "1/2 tsp. garlic powder", "1 clove garlic, halved", "4 c. shredded romaine lettuce", "1/3 c. no salt added chicken broth", "3 Tbsp. lemon juice", "2 tsp. low sodium Worcestershire sauce", "1 tsp. anchovy paste", "1/4 tsp. dry mustard", "3 Tbsp. freshly grated Parmesan cheese", "1/2 tsp. cracked pepper"]',
    '["2片（1盎司）白麵包", "橄欖油風味噴霧", "1/2茶匙大蒜粉", "1瓣大蒜，切半", "4杯碎羅馬生菜", "1/3杯無鹽雞高湯", "3大匙檸檬汁", "2茶匙低鈉伍斯特醬", "1茶匙鰹魚醬", "1/4茶匙乾芥末", "3大匙新鮮帕馬森起司碎", "1/2茶匙粗黑胡椒"]',
    '["Coat one side of each slice of bread lightly with cooking spray.", "Sprinkle evenly with garlic powder.", "Place on ungreased baking sheet.", "Bake at 300° for 18 to 20 minutes.", "Cut into cubes and set aside.", "Rub inside of a large salad bowl with garlic. Place lettuce in bowl.", "Combine chicken broth, lemon juice, Worcestershire, anchovy and mustard in a small bowl, stirring well. Drizzle over lettuce.", "Sprinkle salad with Parmesan cheese and cracked pepper.", "Toss well.", "Top with bread cubes.", "Serve immediately.", "Contains 82 calories, 27% from fat per 1 cup serving."]',
    '["每片麵包的一面輕輕塗上烹飪噴霧。", "均勻撒上大蒜粉。", "放在未塗油的烤盤上。", "以300°F烘烤18至20分鐘。", "切成小塊，備用。", "用大蒜擦拭大沙拉碗的內部。將生菜放入碗中。", "在小碗中混合雞高湯、檸檬汁、伍斯特醬、鰹魚醬和芥末，攪拌均勻。淋在生菜上。", "在沙拉上撒上帕馬森起司和粗黑胡椒。", "充分攪拌。", "放上麵包丁。", "立即食用。", "每1杯含82卡路里，27%來自脂肪。"]'
),
(
    'carrot_cake',
    '胡蘿蔔蛋糕',
    '["1 c. ground carrots", "1 c. raisins", "1 c. walnuts", "3 Tbsp. margarine", "1 1/2 c. water", "1 tsp. cinnamon", "1 tsp. cloves", "1 tsp. nutmeg", "2 c. flour", "2 tsp. soda", "1/2 tsp. salt"]',
    '["1杯磨碎胡蘿蔔", "1杯葡萄乾", "1杯核桃", "3大匙人造奶油", "1.5杯水", "1茶匙肉桂", "1茶匙丁香", "1茶匙肉豆蔻", "2杯麵粉", "2茶匙小蘇打", "1/2茶匙鹽"]',
    '["Mix the first eight ingredients.", "Heat to boil and then simmer 5 minutes.", "Cool to warm and add flour, soda and salt.", "Mix well. Bake in a greased and floured 9 x 13-inch pan 45 to 60 minutes at 325° or until done."]',
    '["混合前八種材料。", "加熱至沸騰，然後小火煮5分鐘。", "冷卻至溫熱，加入麵粉、小蘇打和鹽。", "混合均勻。在塗油並撒麵粉的9x13英寸烤盤中，以325°F烘烤45至60分鐘，或直到烤熟。"]'
),
(
    'cheesecake',
    '芝士蛋糕',
    '["8 oz. pkg. nonfat or reduced fat cream cheese", "8 oz. nonfat sour cream", "1 Tbsp. nonfat or low-fat yogurt", "1 Tbsp. water", "1 pkg. instant pudding (no sugar)", "1 prepared graham cracker crust"]',
    '["8盎司無脂或減脂奶油起司", "8盎司無脂酸奶油", "1大匙無脂或低脂優格", "1大匙水", "1包即食布丁粉（無糖）", "1個準備好的奶油餅乾派皮"]',
    '["Soften cream cheese.", "Combine first 4 ingredients in blender (or bowl) and blend thoroughly.", "In large bowl, add instant pudding to blended mixture and mix with spoon quickly until powder is incorporated.", "This step must be done by hand.", "Spoon into prepared crust and smooth top.", "Refrigerate several hours to firm. Garnish with fruit, if desired."]',
    '["將奶油起司軟化。", "將前4種材料放入果汁機（或碗）中，充分攪拌。", "在大碗中，將即食布丁粉加入混合物中，用勺子快速攪拌至粉末完全混合。", "此步驟必須手動完成。", "舀入準備好的派皮中，抹平表面。", "冷藏數小時至凝固。如需，可用水果裝飾。"]'
),
(
    'chicken_curry',
    '咖哩雞',
    '["2 c. cooked, diced chicken", "1/2 lb. thinly sliced fresh mushrooms", "1 Tbsp. oil or margarine", "1/3 c. chopped onion", "3 Tbsp. flour", "1 c. chicken broth", "1 1/2 tsp. curry powder", "1 c. chopped apple", "1/4 c. chopped parsley", "3/4 c. skim milk", "1 c. water"]',
    '["2杯煮熟切丁的雞肉", "1/2磅切片新鮮蘑菇", "1大匙油或人造奶油", "1/3杯切碎洋蔥", "3大匙麵粉", "1杯雞高湯", "1.5茶匙咖哩粉", "1杯切碎蘋果", "1/4杯切碎歐芹", "3/4杯脫脂牛奶", "1杯水"]',
    '["In a large skillet, saute chicken, mushrooms and onions in oil until chicken is lightly browned on all sides.", "Stir in flour, broth and curry powder.", "Add apple and parsley, then pour milk and water.", "Simmer, stirring constantly, for 3 minutes or until apple pieces are tender and crisp.", "Serve over rice.", "Makes 4 to 6 servings.", "Calories per serving: 235 (or 335 with 1/2 cup rice)."]',
    '["在大平底鍋中，用油炒雞肉、蘑菇和洋蔥，直到雞肉各面呈淺棕色。", "加入麵粉、高湯和咖哩粉，攪拌均勻。", "加入蘋果和歐芹，然後倒入牛奶和水。", "不斷攪拌，小火煮3分鐘或直到蘋果塊軟嫩脆爽。", "搭配白飯食用。", "可做4至6份。", "每份卡路里：235（加1/2杯白飯為335卡路里）。"]'
),
(
    'chocolate_cake',
    '巧克力蛋糕',
    '["1 c. flour", "1/3 c. plus 1 Tbsp. unsweetened cocoa powder", "1 tsp. instant Espresso powder", "1 tsp. baking powder", "1 tsp. baking soda", "6 large egg whites", "1 tsp. vanilla", "1 1/3 c. firmly packed golden brown sugar", "1 c. coffee flavored nonfat yogurt"]',
    '["1杯麵粉", "1/3杯加1大匙無糖可可粉", "1茶匙即溶濃縮咖啡粉", "1茶匙泡打粉", "1茶匙小蘇打", "6個大蛋清", "1茶匙香草精", "1.3杯緊壓金紅糖", "1杯咖啡風味無脂優格"]',
    '["Preheat oven to 350°.", "Line bottom of a 9-inch cake pan with waxed paper.", "Spray pan and paper with vegetable oil spray.", "Dust pan with flour."]',
    '["預熱烤箱至350°F。", "在9英寸蛋糕盤底部鋪上蠟紙。", "在烤盤和紙上噴上植物油噴霧。", "在烤盤上撒一層麵粉。"]'
),
(
    'chocolate_mousse',
    '巧克力慕斯',
    '["1 (12 oz.) pkg. semi-sweet chocolate pieces", "1/2 c. boiling water", "2 tsp. Angostura aromatic bitters", "3 egg yolks", "4 egg whites"]',
    '["1包（12盎司）半甜巧克力塊", "1/2杯沸水", "2茶匙安古斯圖拉苦精", "3個蛋黃", "4個蛋清"]',
    '["Combine chocolate pieces, boiling water, Angostura and egg yolks in blender.", "Whirl until smooth.", "Cool to room temperature. Beat egg whites in bowl until stiff.", "Fold in chocolate mixture. Spoon mixture into serving dishes; chill for several hours.", "Serve with demi-tasse.", "Contains 265 calories per serving."]',
    '["將巧克力塊、沸水、安古斯圖拉苦精和蛋黃放入果汁機中。", "攪拌至光滑。", "冷卻至室溫。在碗中將蛋清打發至硬性發泡。", "將巧克力混合物拌入蛋清中。將混合物舀入餐具中；冷藏數小時。", "搭配小咖啡杯食用。", "每份含265卡路里。"]'
),
(
    'clam_chowder',
    '蛤蜊濃湯',
    '["2 cans clams", "2 bay leaves", "1 Tbsp. oregano", "1/2 c. chopped onion", "4 c. low-fat chicken broth", "2 medium carrots, sliced", "2 medium potatoes, diced", "1 c. cut green beans", "1 Tbsp. parsley", "1 Tbsp. tarragon", "1/4 tsp. black pepper"]',
    '["2罐蛤蜊", "2片月桂葉", "1大匙牛至", "1/2杯切碎洋蔥", "4杯低脂雞高湯", "2根中等胡蘿蔔，切片", "2個中等馬鈴薯，切丁", "1杯切段綠豆", "1大匙歐芹", "1大匙龍蒿", "1/4茶匙黑胡椒"]',
    '["In a large saucepan, cook all ingredients except clams, about 20 minutes or until vegetables are tender. Add clam juice and cook 5 minutes more.", "Remove from heat and add clams.", "Has only about 3 grams fat."]',
    '["在大鍋中，除蛤蜊外，烹煮所有材料約20分鐘或直到蔬菜軟嫩。加入蛤蜊汁，再煮5分鐘。", "離火，加入蛤蜊。", "僅含約3克脂肪。"]'
),
(
    'deviled_eggs',
    '魔鬼蛋',
    '["6 hard-boiled eggs", "1/4 c. creamed cottage cheese", "2 Tbsp. skim milk", "1/2 tsp. cream-style horseradish"]',
    '["6個水煮蛋", "1/4杯奶油起司", "2大匙脫脂牛奶", "1/2茶匙奶油風味辣根"]',
    '["Halve eggs lengthwise.", "Remove yolks and mash yolks.", "Add cottage cheese, skim milk and horseradish; mix well.", "Then return to halved egg whites.", "Top with sprinkle of paprika or dry minced parsley.", "Makes 12 servings.", "One serving equals 48 calories or 1 lean meat exchange."]',
    '["將蛋縱向切半。", "取出蛋黃並壓碎。", "加入起司、脫脂牛奶和辣根；混合均勻。", "然後填回蛋清中。", "撒上紅椒粉或乾碎歐芹。", "可做12份。", "每份等於48卡路里或1份瘦肉交換。"]'
),
(
    'eggs_benedict',
    '班尼迪克蛋',
    '["2 oz. shredded low-fat Cheddar cheese", "2/3 c. nonfat dry milk", "1/2 c. water", "1/4 tsp. dry mustard", "1 Tbsp. imitation bacon bits", "1 English muffin, split and toasted", "2 eggs, poached"]',
    '["2盎司碎低脂切達起司", "2/3杯無脂奶粉", "1/2杯水", "1/4茶匙乾芥末", "1大匙仿培根碎", "1個英式麥芬，切開並烤過", "2個水煮蛋"]',
    '["In the top of a double boiler over boiling water, combine cheese, dry milk, water and mustard.", "Cook, stirring, until cheese is melted.", "Sprinkle bacon bits evenly on English muffin halves. Top each half with a poached egg; spoon sauce over eggs.", "Serves 2."]',
    '["在沸水上方的雙層鍋上層，混合起司、奶粉、水和芥末。", "邊煮邊攪拌，直到起司融化。", "在英式麥芬兩半上均勻撒上培根碎。每半個麥芬上放一個水煮蛋；將醬汁淋在蛋上。", "2人份。"]'
),
(
    'french_fries',
    '法式薯條',
    '["2 large potatoes", "olive oil flavored nonstick spray", "3 Tbsp. grated Parmesan cheese", "1/4 tsp. paprika"]',
    '["2個大馬鈴薯", "橄欖油風味不沾噴霧", "3大匙帕馬森起司碎", "1/4茶匙紅椒粉"]',
    '["Cut potatoes lengthwise into thin wedges.", "Place in a plastic bag.", "Spray wedges lightly with coating.", "Add Parmesan cheese and paprika to bag; toss to coat wedges."]',
    '["將馬鈴薯縱向切成薄楔形。", "放入塑膠袋中。", "在楔形塊上輕輕噴上噴霧。", "在袋中加入帕馬森起司和紅椒粉；搖晃使楔形塊均勻裹上。"]'
),
(
    'french_onion_soup',
    '法式洋蔥湯',
    '["3 medium onions, sliced", "1 Tbsp. flour", "2 cans Swanson beef broth, defatted", "1 c. water", "2 tsp. Molly McButter", "1/4 c. red cooking wine", "1/2 tsp. salt (optional)", "black pepper to taste", "6 slices sourdough bread, toasted", "6 slices Borden fat-free Swiss cheese"]',
    '["3個中等洋蔥，切片", "1大匙麵粉", "2罐史雲生牛高湯，去脂", "1杯水", "2茶匙莫莉麥奶油", "1/4杯紅廚酒", "1/2茶匙鹽（可選）", "適量黑胡椒", "6片酸種麵包，烤過", "6片博登無脂瑞士起司"]',
    '["Preheat oven to 375°.", "In a large skillet sprayed with nonstick cooking spray, brown onions until golden brown.", "Sprinkle flour over onions and continue browning and stirring.", "In a medium saucepan, combine beef broth, water, Molly McButter, wine, salt and black pepper.", "Add onions and simmer 15 to 20 minutes.", "Pour soup into individual bowls; top with 1 slice of toast and 1 slice of cheese.", "Warm at 375° until cheese starts to melt.", "Serve immediately.", "Recipe makes 6 servings."]',
    '["預熱烤箱至375°F。", "在噴上不沾噴霧的大平底鍋中，將洋蔥煎至金棕色。", "在洋蔥上撒上面粉，繼續煎炒並攪拌。", "在中號鍋中，混合牛高湯、水、莫莉麥奶油、酒、鹽和黑胡椒。", "加入洋蔥，小火煮15至20分鐘。", "將湯倒入個人碗中；每碗放1片吐司和1片起司。", "以375°F加熱直到起司開始融化。", "立即食用。", "此食譜可做6份。"]'
),
(
    'french_toast',
    '法式吐司',
    '["1 (8 oz.) carton Egg Beaters (1 c.)", "1/3 c. skim milk", "1 tsp. ground cinnamon", "1 tsp. vanilla extract", "2 Tbsp. liquid Butter Buds", "10 slices white bread (Wonder fat-free)", "lite maple syrup"]',
    '["1盒（8盎司）Egg Beaters蛋液替代品（1杯）", "1/3杯脫脂牛奶", "1茶匙肉桂粉", "1茶匙香草精", "2大匙液態奶油替代品", "10片白麵包（Wonder無脂）", "低脂楓糖漿"]',
    '["In a shallow pan or bowl, combine Egg Beaters, milk, cinnamon and vanilla.", "In a nonstick skillet, over medium heat in liquid Butter Buds, place the pieces of bread after they have been dipped in the Egg Beater mixture. Brown about 3 minutes on each side. Add more liquid Butter Buds, if needed.", "Serve with lite maple syrup."]',
    '["在淺盤或碗中，混合Egg Beaters、牛奶、肉桂和香草精。", "在不沾平底鍋中，用液態奶油替代品以中火加熱，將麵包片浸入Egg Beaters混合物後放入鍋中。每面煎約3分鐘。如需，可加入更多液態奶油替代品。", "搭配低脂楓糖漿食用。"]'
),
(
    'fried_rice',
    '炒飯',
    '["6 c. steamed white rice (better if cooked in an electric rice cooker)", "1 c. frozen mixed vegetables", "2 eggs", "1 c. chopped lean cooked ham", "2 Tbsp. olive oil, divided", "3/4 Tbsp. soy sauce", "1/2 tsp. fish sauce", "1/2 tsp. garlic powder", "1/8 tsp. pepper", "1/4 tsp. sugar", "1 tsp. sesame oil"]',
    '["6杯蒸白飯（用電飯煲煮更好）", "1杯冷凍混合蔬菜", "2個蛋", "1杯切碎的低脂熟火腿", "2大匙橄欖油，分次使用", "3/4大匙醬油", "1/2茶匙魚露", "1/2茶匙大蒜粉", "1/8茶匙黑胡椒", "1/4茶匙糖", "1茶匙芝麻油"]',
    '["Keep the rice hot in the rice cooker.", "Thaw the mixed vegetables; drain and make sure they are diced and ready to use. Scramble eggs and fry in 1/2 tablespoon of olive oil in a nonstick pan.", "Spread evenly and lightly like a pancake.", "When done, dice them and set aside.", "Chop the cooked ham.", "If raw, precook in the microwave and drain."]',
    '["在電飯煲中保持飯的溫度。", "解凍混合蔬菜；瀝乾並確保已切丁備用。將蛋打散，在不沾鍋中用1/2大匙橄欖油炒熟。", "像鬆餅一樣均勻攤平。", "炒熟後切丁，備用。", "將熟火腿切碎。", "如果是生的，先用微波爐預煮並瀝乾。"]'
),
(
    'frozen_yogurt',
    '冷凍優格',
    '["1 envelope plain gelatin", "1/4 c. water", "2 c. evaporated skim milk", "1/2 c. plus 2 tsp. granulated fructose, divided", "1/4 tsp. salt", "32 oz. nonfat yogurt", "2 Tbsp. vanilla", "1 pt. strawberries", "1/4 c. skim milk"]',
    '["1包原味吉利丁", "1/4杯水", "2杯蒸餾脫脂牛奶", "1/2杯加2茶匙粒狀果糖，分次使用", "1/4茶匙鹽", "32盎司無脂優格", "2大匙香草精", "1品脫草莓", "1/4杯脫脂牛奶"]',
    '["In a large saucepan, soften gelatin in water for 2 minutes. Place over medium heat until gelatin is dissolved.", "Add evaporated milk, 1/2 cup of the fructose and salt to gelatin.", "Stir over medium heat until well blended, approximately 5 minutes.", "Remove from heat.", "Stir in yogurt and vanilla.", "Set aside."]',
    '["在大鍋中，將吉利丁在水中軟化2分鐘。以中火加熱直到吉利丁溶解。", "將蒸餾牛奶、1/2杯果糖和鹽加入吉利丁中。", "以中火攪拌直到完全混合，約5分鐘。", "離火。", "加入優格和香草精，攪拌均勻。", "備用。"]'
),
(
    'greek_salad',
    '希臘沙拉',
    '["12 medium shrimp", "1/2 c. + 2 Tbsp. olive oil", "2 cloves garlic, minced", "1 tsp. coarse salt, separated", "1/2 tsp. pepper, separated", "1/4 c. lemon juice", "1/2 tsp. dried oregano", "1 head romaine lettuce, washed and cut crosswise into 1 inch strips", "1 large tomato, cut into wedges", "2 small cucumbers, peeled and cut into large chunks", "1 small red onion, thinly sliced", "1/4 lb. black olives"]',
    '["12隻中等蝦仁", "1/2杯加2大匙橄欖油", "2瓣大蒜，切碎", "1茶匙粗鹽，分次使用", "1/2茶匙黑胡椒，分次使用", "1/4杯檸檬汁", "1/2茶匙乾牛至", "1顆羅馬生菜，洗淨並橫向切成1英寸條", "1個大番茄，切塊", "2根小黃瓜，去皮並切成大塊", "1個小紅洋蔥，切片", "1/4磅黑橄欖"]',
    '["12 medium shrimp", "1/2 c. + 2 Tbsp. olive oil", "2 cloves garlic, minced", "1 tsp. coarse salt, separated", "1/2 tsp. pepper, separated", "1/4 c. lemon juice", "1/2 tsp. dried oregano", "1 head romaine lettuce, washed and cut crosswise into 1 inch strips", "1 large tomato, cut into wedges", "2 small cucumbers, peeled and cut into large chunks", "1 small red onion, thinly sliced", "1/4 lb. black olives"]',
    '["12隻中等蝦仁", "1/2杯加2大匙橄欖油", "2瓣大蒜，切碎", "1茶匙粗鹽，分次使用", "1/2茶匙黑胡椒，分次使用", "1/4杯檸檬汁", "1/2茶匙乾牛至", "1顆羅馬生菜，洗淨並橫向切成1英寸條", "1個大番茄，切塊", "2根小黃瓜，去皮並切成大塊", "1個小紅洋蔥，切片", "1/4磅黑橄欖"]'
),
(
    'guacamole',
    '酪梨醬',
    '["1 mashed rip avocado", "1/2 cup non-fat yogurt plain", "1/2 teaspoon sugar", "2 tablespoons salsa"]',
    '["1個壓碎的熟酪梨", "1/2杯無脂原味優格", "1/2茶匙糖", "2大莎莎醬"]',
    '["Mix together and serve with baked tortillas or veggies."]',
    '["混合均勻，搭配烤玉米餅或蔬菜食用。"]'
),
(
    'huevos_rancheros',
    '墨西哥煎蛋',
    '["nonfat tortilla shells", "nonfat refried beans", "nonfat Cheddar cheese", "egg", "nonfat sour cream", "green pepper", "green onion", "salsa"]',
    '["無脂玉米餅皮", "無脂炒豆泥", "無脂切達起司", "蛋", "無脂酸奶油", "青椒", "蔥", "莎莎醬"]',
    '["Cover tortilla with 1/2 cup nonfat refried beans (heated), 1/2 cup nonfat Cheddar cheese, 1 fried egg white, 2 tablespoons salsa, 1/4 cup nonfat sour cream and 1/2 cup nonfat Cheddar cheese.", "Put in preheated oven at 350° until cheese melts.", "Top with 2 tablespoons green pepper and 1 chopped green onion.", "Serves one."]',
    '["在玉米餅上鋪上1/2杯無脂炒豆泥（加熱）、1/2杯無脂切達起司、1個煎蛋清、2大匙莎莎醬、1/4杯無脂酸奶油和1/2杯無脂切達起司。", "放入預熱350°F的烤箱中，直到起司融化。", "撒上2大匙青椒和1個切碎的蔥。", "1人份。"]'
),
(
    'ice_cream',
    '冰淇淋',
    '["1 small box vanilla sugar-free Jell-O pudding mix", "6 pkg. sweetener", "1 tsp. vanilla", "3 c. 2% milk", "pinch of salt"]',
    '["1小盒香草無糖果凍布丁粉", "6包甜味劑", "1茶匙香草精", "3杯2%牛奶", "少許鹽"]',
    '["Mix all ingredients well.", "Pour into 1/2 gallon ice cream freezer; fill to freeze level with 2% milk and freeze."]',
    '["將所有材料混合均勻。", "倒入1/2加侖冰淇淋機中；用2%牛奶填至冷凍線並冷凍。"]'
),
(
    'lasagna',
    '千層麵',
    '["1/2 lb. ground turkey", "1/2 tsp. garlic salt", "1 (30 oz.) jar Prego sauce (I use tomato/basil)", "3/4 c. water", "1 (8 oz.) pkg. lasagna noodles, cooked", "1 (11 oz.) container fat-free Ricotta cheese", "1 Tbsp. chopped parsley", "1 (8 oz.) pkg. fat-free Mozzarella cheese"]',
    '["1/2磅火雞肉末", "1/2茶匙大蒜鹽", "1罐（30盎司）Prego醬（我用番茄羅勒味）", "3/4杯水", "1包（8盎司）千層麵條，煮熟", "1盒（11盎司）無脂瑞可塔起司", "1大匙碎歐芹", "1包（8盎司）無脂莫札瑞拉起司"]',
    '["Heat oven to 375°.", "Brown ground turkey.", "Add garlic salt, Prego and water.", "Bring to boil and remove from heat.", "In 9 x 13-inch glass dish, layer 1/3 of sauce, 1/2 of uncooked lasagna noodles, 1/2 of Ricotta cheese and 1/2 of Mozzarella.", "Sprinkle with parsley.", "Repeat layers, ending with sauce.", "Cover tightly with foil.", "Bake 1 hour.", "Uncover; sprinkle with Parmesan cheese if desired.", "Let stand 10 minutes before serving."]',
    '["將烤箱預熱至375°F。", "將火雞肉末煎至棕色。", "加入大蒜鹽、Prego醬和水。", "煮沸後離火。", "在9x13英寸玻璃烤盤中，鋪上1/3的醬汁、1/2的未煮千層麵條、1/2的瑞可塔起司和1/2的莫札瑞拉起司。", "撒上歐芹。", "重複鋪層，最後以醬汁結束。", "用鋁箔紙緊密覆蓋。", "烘烤1小時。", "打開鋁箔紙；如需，撒上帕馬森起司。", "食用前靜置10分鐘。"]'
),
(
    'macaroni_and_cheese',
    '起司通心麵',
    '["2 qt. water", "8 tsp. low-sodium chicken bouillon", "8 oz. tube pasta", "1/2 lb. smoked ham, thinly sliced and cut into 1/2-inch strips", "1 c. 2% milk", "1 c. nonfat milk", "2/3 c. liquid egg substitute", "1 Tbsp. unbleached all-purpose flour", "1/4 tsp. salt", "1/4 tsp. freshly ground pepper", "3 oz. reduced fat sharp Cheddar cheese, grated (3/4 c.)", "1 oz. Parmesan cheese, freshly grated (1/4 c.)"]',
    '["2夸脫水", "8茶匙低鈉雞高湯塊", "8盎司管狀麵", "1/2磅煙燻火腿，切片並切成1/2英寸條", "1杯2%牛奶", "1杯無脂牛奶", "2/3杯液態蛋液替代品", "1大匙未漂白全能麵粉", "1/4茶匙鹽", "1/4茶匙新鮮研磨黑胡椒", "3盎司減脂濃味切達起司，磨碎（3/4杯）", "1盎司帕馬森起司，新鮮磨碎（1/4杯）"]',
    '["Preheat oven to 350°.", "In a large pot, bring water and bouillon to a boil. Add pasta and boil 8 minutes or until just done; drain well. Spray a 9 x 13-inch glass baking dish with nonstick vegetable oil.", "Place half the pasta in dish and cover with half of the ham strips.", "Repeat with the remaining pasta and ham.", "Combine milk, egg substitute, flour, salt and pepper; pour over pasta and ham.", "Sprinkle with both cheeses and bake about 30 minutes or until custard is set and casserole is lightly browned. Makes 8 servings."]',
    '["預熱烤箱至350°F。", "在大鍋中，將水和高湯塊煮沸。加入麵條，煮8分鐘或直到剛熟；瀝乾。在9x13英寸玻璃烤盤上噴上不沾植物油。", "將一半麵條放入烤盤，鋪上一半火腿條。", "用剩下的麵條和火腿重複此步驟。", "混合牛奶、蛋液替代品、麵粉、鹽和黑胡椒；倒在麵條和火腿上。", "撒上兩種起司，烘烤約30分鐘或直到蛋奶醬凝固且烤盤呈淺棕色。可做8份。"]'
),
(
    'nachos',
    '墨西哥玉米片',
    '["4 c. baked tortilla chips", "1 c. grated fat-free Mozzarella cheese", "1/2 c. fat-free sour cream", "1/2 c. minced canned green chilies", "2 Tbsp. minced fresh cilantro (optional)"]',
    '["4杯烤玉米片", "1杯無脂莫札瑞拉起司碎", "1/2杯無脂酸奶油", "1/2杯切碎罐裝青椒", "2大匙切碎新鮮香菜（可選）"]',
    '["Preheat broiler.", "Arrange tortilla chips on a nonstick baking pan.", "In a small bowl, stir together remaining ingredients.", "Spoon over chips.", "Broil nachos until brown and bubbling, about 5 minutes.", "Serve immediately.", "Serves 4 to 6."]',
    '["預熱烤爐。", "將玉米片放在不沾烤盤上。", "在小碗中，將剩下的材料混合均勻。", "倒在玉米片上。", "烤玉米片直到呈棕色並冒泡，約5分鐘。", "立即食用。", "4至6人份。"]'
),
(
    'onion_rings',
    '洋蔥圈',
    '["2 large sweet onions", "1 (7 oz.) pkg. corn flakes cereal, crushed", "1 tsp. seasoned salt", "2 tsp. sugar", "2 tsp. paprika", "1 c. egg substitute", "vegetable cooking spray"]',
    '["2個大甜洋蔥", "1包（7盎司）玉米片麥片，壓碎", "1茶匙調味鹽", "2茶匙糖", "2茶匙紅椒粉", "1杯蛋液替代品", "植物油噴霧"]',
    '["Cut each onion into 4 thick slices; separate into rings (reserve small rings for another use).", "Set aside.", "Combine cereal and next 3 ingredients; divide in half and set aside.", "Beat egg substitute at high speed with an electric mixer until soft peaks form.", "Dip half of onion rings in egg substitute; dredge in half of crumb mixture.", "Place in a single layer on baking sheets coated with cooking spray.", "Repeat procedure with remaining onion rings, egg substitute and crumb mixture.", "Bake at 375° for 15 minutes, or until crisp.", "Serve warm."]',
    '["將每個洋蔥切成4片厚片；分離成圈（保留小圈備用）。", "備用。", "混合麥片和接下來3種材料；分成兩半，備用。", "用電動攪拌器高速將蛋液替代品打發至軟性發泡。", "將一半洋蔥圈浸入蛋液替代品；裹上一半麵包屑混合物。", "單層放在塗有烹飪噴霧的烤盤上。", "用剩下的洋蔥圈、蛋液替代品和麵包屑混合物重複此步驟。", "以375°F烘烤15分鐘，或直到酥脆。", "溫熱食用。"]'
),
(
    'paella',
    '西班牙海鮮飯',
    '["1 Tbsp. olive oil", "1/2 lb. chicken breast cubes", "1 c. uncooked long-grain white rice*", "1 medium onion, chopped", "1 clove garlic, minced", "1 1/2 c. chicken broth *", "1 (8 oz.) can stewed tomatoes, chopped (reserving liquid)", "1/2 tsp. paprika", "1/8 to 1/4 tsp. ground red pepper", "1/8 tsp. ground saffron", "1/2 lb. medium shrimp, peeled and deveined", "1 small red pepper, cut into strips", "1 small green pepper, cut into strips", "1/2 c. frozen green peas"]',
    '["1大匙橄欖油", "1/2磅雞胸肉塊", "1杯未煮長粒白米*", "1個中等洋蔥，切碎", "1瓣大蒜，切碎", "1.5杯雞高湯*", "1罐（8盎司）燉番茄，切碎（保留汁液）", "1/2茶匙紅椒粉", "1/8至1/4茶匙紅椒粉", "1/8茶匙藏紅花", "1/2磅中等蝦仁，去皮去腸", "1個小紅椒，切條", "1個小青椒，切條", "1/2杯冷凍青豆"]',
    '["Heat oil in Dutch oven over medium-high heat until hot.", "Add chicken and stir until browned.", "Add rice, onion and garlic. Cook, stirring, until onion is tender and rice is lightly browned. Add broth, tomatoes, tomato liquid, paprika, ground red pepper and saffron.", "Bring to a boil over high heat; stir.", "Reduce heat to low.", "Cover and simmer 10 minutes.", "Add shrimp, pepper strips and peas.", "Cover and simmer 10 minutes or until rice is tender, liquid is absorbed and shrimp are opaque."]',
    '["在荷蘭鍋中以中高火加熱油直到熱。", "加入雞肉，攪拌直到呈棕色。", "加入米、洋蔥和大蒜。邊煮邊攪拌，直到洋蔥軟嫩且米呈淺棕色。加入高湯、番茄、番茄汁、紅椒粉、紅椒粉和藏紅花。", "以大火煮沸；攪拌。", "轉小火。", "蓋上鍋蓋，小火煮10分鐘。", "加入蝦仁、椒條和青豆。", "蓋上鍋蓋，小火煮10分鐘或直到米軟嫩、汁液吸收且蝦仁變不透明。"]'
),
(
    'pancakes',
    '鬆餅',
    '["2 eggs", "2 c. flour", "1 3/4 c. nonfat milk", "2 tsp. vanilla (optional)", "2 Tbsp. sugar (optional)", "2 Tbsp. baking powder", "1/2 tsp. salt"]',
    '["2個蛋", "2杯麵粉", "1.75杯無脂牛奶", "2茶匙香草精（可選）", "2大匙糖（可選）", "2大匙泡打粉", "1/2茶匙鹽"]',
    '["Beat eggs until fluffy; beat in remaining ingredients until smooth.", "Spray pan with Pam and cook to desired doneness.", "More milk may be added for thinner pancake batter."]',
    '["將蛋打發至蓬鬆；加入剩下的材料，攪拌至光滑。", "在鍋上噴上Pam不沾噴霧，煎至理想的熟度。", "可加入更多牛奶使鬆餅麵糊更稀。"]'
),
(
    'pizza',
    '披薩',
    '["2 pkg. Martha White pizza crust mix", "1/2 c. pizza sauce", "1 1/2 c. light or low-fat Mozzarella cheese", "1/2 c. sliced mushrooms", "1/4 c. sliced banana peppers", "1 c. turkey pastrami, chopped", "1 c. ground turkey burgers", "Pam cooking spray"]',
    '["2包Martha White披薩麵皮粉", "1/2杯披薩醬", "1.5杯輕量或低脂莫札瑞拉起司", "1/2杯切片蘑菇", "1/4杯切片香蕉椒", "1杯火煙燻牛肉，切碎", "1杯火雞肉堡肉末", "Pam烹飪噴霧"]',
    '["Prepare pizza crust according to package, except do not add cooking oil.", "Instead, spray dough with cooking spray.", "Prepare crust in pizza pan sprayed with cooking spray.", "First, spread sauce, then add cheese, then add remaining toppings.", "Preheat oven to 500°.", "Place pizza on lowest oven rack and cook 12 to 15 minutes.", "Enjoy!"]',
    '["按照包裝說明製作披薩麵皮，但不要加入烹飪油。", "改為在麵團上噴上烹飪噴霧。", "在噴有烹飪噴霧的披薩盤中準備麵皮。", "首先塗上醬汁，然後加上起司，最後加上剩下的配料。", "預熱烤箱至500°F。", "將披薩放在烤箱最下層，烘烤12至15分鐘。", "享用！"]'
),
(
    'pork_chop',
    '豬排',
    '["6 half cut pork chops", "1 can fat-free sweet and sour sauce", "dash of salt", "pepper to taste"]',
    '["6片半切豬排", "1罐無脂甜酸醬", "少許鹽", "適量黑胡椒"]',
    '["Foil line a 9 x 13 pan or baking dish. Place chops flat and pour the sauce evenly over meat, adding enough water to cover, if necessary. Bake at 400° about 1 hour, until tender. If you like, you may brown by turning on broiler for about 5 minutes."]',
    '["用鋁箔紙鋪在9x13烤盤或烤盤中。將豬排平放，將醬汁均勻倒在肉上，如需，加入足夠的水覆蓋。以400°F烘烤約1小時，直到軟嫩。如需，可開啟烤爐烤約5分鐘使其呈棕色。"]'
),
(
    'red_velvet_cake',
    '紅絲絨蛋糕',
    '["1/2 c. butter, softened", "4 oz. fat-free cream cheese, softened", "1 1/2 c. sugar", "1/2 c. egg substitute", "2 (1 oz.) bottles liquid red food coloring", "2 1/4 c. sifted cake flour", "2 Tbsp. unsweetened cocoa", "1 tsp. baking soda", "1/4 tsp. salt", "1 c. nonfat buttermilk", "1 tsp. vanilla extract", "vegetable cooking spray", "Boiled Frosting"]',
    '["1/2杯奶油，軟化", "4盎司無脂奶油起司，軟化", "1.5杯糖", "1/2杯蛋液替代品", "2瓶（1盎司）液態紅色食用色素", "2.25杯過篩蛋糕麵粉", "2大匙無糖可可", "1茶匙小蘇打", "1/4茶匙鹽", "1杯無脂酪乳", "1茶匙香草精", "植物油噴霧", "煮製糖霜"]',
    '["Beat butter and cream cheese at medium speed until creamy. Gradually add sugar, beating well. Gradually add egg substitute, beating well. Stir in food coloring.", "Combine flour and next 3 ingredients.", "Add to butter mixture alternately with buttermilk, beginning and ending with flour mixture.", "Mix until just blended after each addition.", "Stir in vanilla.", "Pour batter into three 9-inch cake pans coated with cooking spray.", "Bake at 350° for 18 minutes.", "Cool in pans on wire racks for 10 minutes. Remove from pans.", "Cool completely on wire racks. Spread Boiled Frosting between layers, on sides and top of cake."]',
    '["以中速攪拌奶油和奶油起司直到奶油狀。逐漸加入糖，充分攪拌。逐漸加入蛋液替代品，充分攪拌。加入食用色素，攪拌均勻。", "混合麵粉和接下來3種材料。", "交替加入奶油混合物和酪乳，以麵粉混合物開始和結束。", "每次加入後混合直到剛混合均勻。", "加入香草精，攪拌均勻。", "將麵糊倒入三個塗有烹飪噴霧的9英寸蛋糕盤中。", "以350°F烘烤18分鐘。", "在烤盤中放在鐵架上冷卻10分鐘。從烤盤中取出。", "在鐵架上完全冷卻。在蛋糕層之間、側面和頂部塗上煮製糖霜。"]'
),
(
    'risotto',
    '義大利燉飯',
    '["1 medium chopped onion", "1 c. uncooked rice", "2 Tbsp. vegetable oil", "1/2 c. chopped green pepper", "2 c. sliced mushrooms", "1/2 c. frozen corn", "2 c. bouillon or broth"]',
    '["1個中等洋蔥，切碎", "1杯未煮米", "2大匙植物油", "1/2杯切碎青椒", "2杯切片蘑菇", "1/2杯冷凍玉米", "2杯高湯塊或高湯"]',
    '["Cook onion and rice in the 2 tablespoons oil over medium heat until golden, stirring constantly.", "Add green pepper and mushrooms and cook 2 minutes.", "Stir in the frozen corn and the bouillon or broth.", "Bring to boil; stir once or twice.", "Reduce heat; cover and simmer 15 minutes or until rice is tender and liquid is absorbed.", "Toss lightly with fork. Sprinkle with grated Parmesan cheese, if desired.", "You can add leftover cut up chicken and water chestnuts (if desired) for a main dish. You can also add any combination of herbs: rosemary, parsley, basil or marjoram."]',
    '["將洋蔥和米在2大匙油中以中火炒至金黃色，不斷攪拌。", "加入青椒和蘑菇煮2分鐘。", "加入冷凍玉米和高湯塊或高湯。", "煮沸；攪拌一兩次。", "轉小火；蓋上鍋蓋，小火煮15分鐘或直到米軟嫩且汁液被吸收。", "用叉子輕輕攪拌。如需，撒上帕馬森起司碎。", "你可加入剩下的切塊雞肉和荸薺（可選）作為主菜。你也可加入任意組合的香草：迷迭香、歐芹、羅勒或馬郁蘭。"]'
),
(
    'scallops',
    '干貝',
    '["1 lb. scallops", "1 Tbsp. vegetable oil", "1 garlic clove, minced", "2 medium tomatoes, halved", "pepper", "salt", "1 1/2 Tbsp. lemon juice", "1 Tbsp. melted margarine", "lemon twists (for garnish)", "chopped parsley (for garnish)"]',
    '["1磅干貝", "1大匙植物油", "1瓣大蒜，切碎", "2個中等番茄，切半", "黑胡椒", "鹽", "1.5大匙檸檬汁", "1大匙融化的人造奶油", "檸檬皮扭（裝飾用）", "碎歐芹（裝飾用）"]',
    '["About 50 minutes before serving, let scallops stand in oil and garlic for 30 minutes.", "Preheat broiler 10 minutes.", "Meanwhile, sprinkle tomato halves with pepper and 1/2 teaspoon salt.", "In shallow roasting pan, arrange with scallops.", "Over scallops pour margarine, 1/2 teaspoon salt, lemon juice and 1/8 teaspoon pepper. Broil about 10 minutes, turning once.", "Serve garnished with lemon twists and parsley."]',
    '["食用前約50分鐘，將干貝放在油和大蒜中醃製30分鐘。", "預熱烤爐10分鐘。", "同時，在番茄半塊上撒上黑胡椒和1/2茶匙鹽。", "在淺烤盤中，與干貝一起排列。", "在干貝上倒上人造奶油、1/2茶匙鹽、檸檬汁和1/8茶匙黑胡椒。烤約10分鐘，翻一次。", "裝飾檸檬皮扭和歐芹後食用。"]'
),
(
    'steak',
    '牛排',
    '["1 Tbsp. flour", "3/4 tsp. salt", "dash of pepper", "1 lb. lean round steak", "1 Tbsp. margarine", "16 oz. canned tomatoes", "1 1/2 c. sliced onion", "1/3 c. diced celery", "1 clove garlic, crushed", "1/2 tsp. sugar"]',
    '["1大匙麵粉", "3/4茶匙鹽", "少許黑胡椒", "1磅瘦圓牛排", "1大匙人造奶油", "16盎司罐裝番茄", "1.5杯切片洋蔥", "1/3杯切碎芹菜", "1瓣大蒜，壓碎", "1/2茶匙糖"]',
    '["Combine flour, salt and pepper.", "Cut steak into four pieces. Pound flour mixture into steak.", "In heavy skillet, melt margarine. Add meat and brown on both sides.", "Add remaining ingredients. Reduce heat and simmer for one hour.", "Serves 4, 315 calories per serving."]',
    '["混合麵粉、鹽和黑胡椒。", "將牛排切成四塊。將麵粉混合物拍入牛排。", "在厚底鍋中，融化人造奶油。加入肉，兩面煎至棕色。", "加入剩下的材料。轉小火，小火煮一小時。", "4人份，每份315卡路里。"]'
),
(
    'strawberry_shortcake',
    '草莓鮮奶油蛋糕',
    '["1 3/4 angel food cakes, sliced in thirds", "4 containers no fat strawberry yogurt", "1 1/2 containers fat-free Cool Whip", "1 large can crushed pineapple, drained", "1 1/2 qt. sliced strawberries", "1/2 c. slivered almonds"]',
    '["1.75個天使食物蛋糕，切成三片", "4盒無脂草莓優格", "1.5盒無脂酷 Whip", "1大罐碎鳳梨，瀝乾", "1.5夸脫切片草莓", "1/2杯杏仁片"]',
    '["Make the following layers: cake, Cool Whip, cake, yogurt, cake, nuts, cake, pineapple and top with strawberries."]',
    '["製作以下層次：蛋糕、酷 Whip、蛋糕、優格、蛋糕、堅果、蛋糕、鳳梨，頂部放草莓。"]'
),
(
    'tacos',
    '墨西哥捲餅',
    '["1 lb. extra lean ground beef", "1 pkg. taco mix", "1 doz. (6-inch) flour tortillas", "8 oz. grated reduced-fat Cheddar", "shredded lettuce", "chopped tomatoes", "chopped onions (if desired)", "non-fat sour cream (optional)"]',
    '["1磅特瘦牛肉末", "1包捲餅調味料", "1打（6英寸）麵粉玉米餅", "8盎司減脂切達起司碎", "碎生菜", "切碎番茄", "切碎洋蔥（可選）", "無脂酸奶油（可選）"]',
    '["Brown meat, then rinse in a colander under hot water.", "Let drain.", "Return meat to pan, add taco mix and follow instructions on mix package to prepare taco meat.", "Steam tortillas, and assemble tacos.", "Makes about 6 to 8 tacos."]',
    '["將肉煎至棕色，然後在濾碗中以熱水沖洗。", "瀝乾。", "將肉放回鍋中，加入捲餅調味料，按照包裝說明製作捲餅肉。", "蒸玉米餅，然後組裝捲餅。", "可做約6至8個捲餅。"]'
),
(
    'tiramisu',
    '提拉米蘇',
    '["18 ladyfingers (about 4 1/2 oz.)", "2 tsp. Dutch processed cocoa powder", "3/4 c. fat-free or light whipped topping (optional)"]',
    '["18根手指餅乾（約4.5盎司）", "2茶匙荷蘭處理可可粉", "3/4杯無脂或輕量鮮奶油（可選）"]',
    '["To assemble the desserts, coarsely crumble 1 1/2 ladyfingers into the bottom of each of six (10 oz.) balloon wine glasses.", "Top the ladyfingers with 1 tablespoon of the coffee mixture, and 1/4 cup of the custard.", "Repeat the layers.", "Then sift a little cocoa over the top of each dessert.", "Cover the desserts and refrigerate for at least 2 hours.", "If desired, top each serving with 2 tablespoons of the whipped topping just before serving."]',
    '["組裝甜點時，將1.5根手指餅乾粗略碾碎，放入六個（10盎司）氣球葡萄酒杯的底部。", "在手指餅乾上倒上1大匙咖啡混合物和1/4杯蛋奶醬。", "重複鋪層。", "然後在每個甜點的頂部篩上少量可可粉。", "覆蓋甜點，冷藏至少2小時。", "如需，食用前每份撒上2大匙鮮奶油。"]'
),
(
    'waffles',
    '華夫餅',
    '["3/4 c. egg substitute", "1 1/2 c. skim milk", "1/3 c. safflower oil", "2 c. all-purpose flour", "2 tsp. baking powder", "2 tsp. sugar", "1/2 tsp. or less salt"]',
    '["3/4杯蛋液替代品", "1.5杯脫脂牛奶", "1/3杯紅花籽油", "2杯全能麵粉", "2茶匙泡打粉", "2茶匙糖", "1/2茶匙或更少鹽"]',
    '["Whirl eggs in blender; add milk and oil.", "Blend 2 minutes; add dry ingredients and whirl.", "Bake in preheated Teflon waffle iron. Makes 4 large waffles."]',
    '["在果汁機中攪拌蛋；加入牛奶和油。", "攪拌2分鐘；加入乾性材料，再次攪拌。", "在預熱的特氟龍華夫餅機中烘烤。可做4個大華夫餅。"]'
);
