-- 建立資料庫
CREATE DATABASE IF NOT EXISTS food_recipe CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE food_recipe;

-- 設定
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- 建立 dhr 表
DROP TABLE IF EXISTS `dhr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dhr` (
  `title` text,
  `have_healthy_recipe` int DEFAULT NULL,
  `remark` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- 插入 dhr 資料
LOCK TABLES `dhr` WRITE;
/*!40000 ALTER TABLE `dhr` DISABLE KEYS */;

INSERT INTO `dhr` VALUES 
('apple_pie',1,'Sugarless'),
('baby_back_ribs',0,''),
('baklava',0,''),
('beef_carpaccio',0,''),
('beef_tartare',0,''),
('beet_salad',1,'Low-fat'),
('beignets',0,''),
('bibimbap',0,''),
('bread_pudding',1,'Low-fat'),
('breakfast_burrito',0,''),
('bruschetta',1,'Low-calorie'),
('caesar_salad',1,'Low-fat'),
('cannoli',0,''),
('caprese_salad',0,''),
('carrot_cake',1,'Low-fat'),
('ceviche',0,''),
('cheesecake',1,''),
('cheese_plate',0,''),
('chicken_curry',1,'Good-for-heart'),
('chicken_quesadilla',0,''),
('chicken_wings',0,''),
('chocolate_cake',1,'Fat-free'),
('chocolate_mousse',1,'Low-calorie'),
('churros',0,''),
('clam_chowder',1,'Low-fat'),
('club_sandwich',0,''),
('crab_cakes',0,''),
('creme_brulee',0,''),
('croque_madame',0,''),
('cup_cakes',0,''),
('deviled_eggs',1,'Low-calorie'),
('donuts',0,''),
('dumplings',0,''),
('edamame',0,''),
('eggs_benedict',1,'diabetic'),
('escargots',0,''),
('falafel',0,''),
('filet_mignon',0,''),
('fish_and_chips',0,''),
('foie_gras',0,''),
('french_fries',1,'Low-fat'),
('french_onion_soup',1,'Low-fat'),
('french_toast',1,'Low-fat'),
('fried_calamari',0,''),
('fried_rice',1,''),
('frozen_yogurt',1,'Diabetic'),
('garlic_bread',0,''),
('gnocchi',0,''),
('greek_salad',1,'Low-crab'),
('grilled_cheese_sandwich',0,''),
('grilled_salmon',0,''),
('guacamole',1,'Low-fat'),
('gyoza',0,''),
('hamburger',0,''),
('hot_and_sour_soup',0,''),
('hot_dog',0,''),
('huevos_rancheros',1,'Non-fat'),
('hummus',0,''),
('ice_cream',1,'Sugarfree'),
('lasagna',1,'Low-fat'),
('lobster_bisque',0,''),
('lobster_roll_sandwich',0,''),
('macaroni_and_cheese',1,'Low-fat'),
('macarons',0,''),
('miso_soup',0,''),
('mussels',0,''),
('nachos',1,'Low-fat'),
('omelette',0,''),
('onion_rings',1,'Low-fat'),
('oysters',0,''),
('pad_thai',0,''),
('paella',1,'Low-fat'),
('pancakes',1,'Low-fat'),
('panna_cotta',0,''),
('peking_duck',0,''),
('pho',0,''),
('pizza',1,'Low-fat'),
('pork_chop',1,'Low-fat'),
('poutine',0,''),
('prime_rib',0,''),
('pulled_pork_sandwich',0,''),
('ramen',0,''),
('ravioli',0,''),
('red_velvet_cake',1,'Low-fat'),
('risotto',1,'Low-calorie and Low-cholesterol'),
('samosa',0,''),
('sashimi',0,''),
('scallops',1,'Low-calorie'),
('seaweed_salad',0,''),
('shrimp_and_grits',0,''),
('spaghetti_bolognese',0,''),
('spaghetti_carbonara',0,''),
('spring_rolls',0,''),
('steak',1,'Low-calorie'),
('strawberry_shortcake',1,'Fat-free'),
('sushi',0,''),
('tacos',1,'Low-fat'),
('takoyaki',0,''),
('tiramisu',1,'Low-fat'),
('tuna_tartare',0,''),
('waffles',1,'Low-fat');

/*!40000 ALTER TABLE `dhr` ENABLE KEYS */;
UNLOCK TABLES;

-- 建立 nr (normal recipe) 表
DROP TABLE IF EXISTS `nr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nr` (
  `title` text,
  `ingredients` json DEFAULT NULL,
  `directions` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- 插入 nr 資料
LOCK TABLES `nr` WRITE;
/*!40000 ALTER TABLE `nr` DISABLE KEYS */;
INSERT INTO `nr` VALUES ('apple_pie','["2 c. water", "1 1/2 c. sugar", "2 tsp. cream of tartar", "23 Ritz crackers", "1 uncooked pie crust", "2 tsp. butter", "1 tsp. cinnamon"]','["Bring water, sugar and cream of tartar to a boil and boil 1 minute.", "Add Ritz crackers, one at a time.", "Allow to boil 2 minutes after last cracker is dropped in.", "Remove from heat. Pour into unbaked pie shell.", "Dot filling with butter and sprinkle cinnamon over filling.", "Bake 20 minutes at 425° (pastry strips can be added across the top before baking, if desired)."]'),('baby_back_ribs','["1-2 slabs of baby back ribs", "2 Tbsp pickling spice", "water to cover", "1 bottle Open Pit BBQ sauce", "1-2 c. brown sugar"]','["Place ribs in a large pan.", "Cover with water and add pickling spice.", "Boil for 1 hour.", "Remove ribs and place on outdoor grill. Generously brush on BBQ sauce mixture of brown sugar and Open Pit BBQ sauce."]'),('baklava','["4 lb. ground nuts (walnuts, pecans or almonds)", "1 c. sugar", "1 1/2 tsp. cinnamon", "1/2 tsp. nutmeg", "2 lb. margarine, melted", "2 lb. filo dough"]','["Grind nuts fine and mix with sugar and spices.", "Grease 11 x 16-inch pan (not a cookie sheet) with butter.", "Place 4 sheets of filo into pan.", "Brush each sheet with butter.", "Sprinkle with nuts thinly.", "Cover with 3 sheets of filo, brushing each with butter. Add mixture of nuts again as before.", "Repeat this until all nuts are used.", "End with 3 sheets of filo on top.", "Brush with final butter.", "Slice the entire thing into diamond shapes to aid in baking.", "Preheat oven to 300°.", "Place in oven.", "Cook for 1 hour, until lightly brown.", "Remove from oven.", "Let cool."]'),('fried_rice','["1 c. white rice", "1/2 c. frozen peas and carrots", "2 to 3 Tbsp. onions, diced", "1 egg, slightly beaten", "2 Tbsp. real bacon bits", "1 Tbsp. butter or margarine", "light soy sauce to taste"]','["Cook rice according to package directions.", "Heat butter in large skillet.", "Add onions and cook until soft.", "Add frozen peas and carrots and cook 2 minutes.", "Add cooked rice and bacon bits.", "Add beaten egg and scramble everything together.", "Season with soy sauce to taste."]'),('pizza','["4 c. self-rising flour", "1/4 c. sugar", "2 c. warm milk", "1/3 c. oil"]','["Dissolve yeast in milk; add oil, flour and sugar.", "Knead 3 to 4 minutes.", "Divide and then spread on a greased pizza pan or cookie sheet.", "Let rise for 15 to 30 minutes.", "Bake 15 minutes. Take out and add sauce, meat, etc. and then cheese.", "Cook until cheese melts.", "For sauce use 1 jar Always Save spaghetti sauce. Add your own spices.", "Use Velveeta, Cheddar or Mozzarella cheeses."]'),('risotto','["3 c. low salt chicken broth", "1 medium onion, chopped", "6 Tbsp. extra virgin flavorful olive oil", "1 1/3 c. raw Italian Arborio rice", "1/3 c. grated Parmesan cheese", "1/4 tsp. black pepper"]','["In a medium pan, heat chicken broth to a simmer over medium heat.", "While broth is heating, saute onion in oil for 3 or 5 minutes until soft.", "Add rice and stir to coat with oil.", "Add 1/2 cup broth and stir with a wooden spoon until the broth has been absorbed.", "Continue this pattern with rest of broth, adding it 1/2 cup at a time and stirring until it is absorbed by the rice.", "When you have used all the broth, test the rice to see if it is still too chewy.", "If so, add more hot broth or hot water until it reaches the desired consistency.", "Remove from heat and stir in cheese and black pepper."]');
/*!40000 ALTER TABLE `nr` ENABLE KEYS */;
UNLOCK TABLES;

-- 建立 hr (healthy recipe) 表
DROP TABLE IF EXISTS `hr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr` (
  `title` text,
  `ingredients` json DEFAULT NULL,
  `directions` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- 插入 hr 資料
LOCK TABLES `hr` WRITE;
/*!40000 ALTER TABLE `hr` DISABLE KEYS */;
INSERT INTO `hr` VALUES ('apple_pie','["1 (6 oz.) can (3/4 c.) unsweetened frozen apple juice concentrate", "1 tsp. cinnamon", "2 tsp. margarine", "2 Tbsp. Minute tapioca", "1 tsp. nutmeg"]','["In saucepan, cook ingredients, stirring constantly until thick.", "Add 6 apples, peeled and sliced.", "Put into two crust pie shell and bake at 375° for one hour or usual timing for two crust pie."]'),('pizza','["2 pkg. Martha White pizza crust mix", "1/2 c. pizza sauce", "1 1/2 c. light or low-fat Mozzarella cheese", "1/2 c. sliced mushrooms", "1/4 c. sliced banana peppers", "1 c. turkey pastrami, chopped", "1 c. ground turkey burgers", "Pam cooking spray"]','["Prepare pizza crust according to package, except do not add cooking oil.", "Instead, spray dough with cooking spray.", "Prepare crust in pizza pan sprayed with cooking spray.", "First, spread sauce, then add cheese, then add remaining toppings.", "Preheat oven to 500°.", "Place pizza on lowest oven rack and cook 12 to 15 minutes.", "Enjoy!"]'),('risotto','["1 medium chopped onion", "1 c. uncooked rice", "2 Tbsp. vegetable oil", "1/2 c. chopped green pepper", "2 c. sliced mushrooms", "1/2 c. frozen corn", "2 c. bouillon or broth"]','["Cook onion", "and", "rice", "in", "the\\t2", "tablespoons oil over medium heat", "until", "golden,", "stirring", "constantly.", "Add green pepper and mushrooms\\tand cook 2 minutes.", "Stir in the frozen corn and the bouillon", "or broth.", "Bring to boil; stir once or twice.", "Reduce heat; cover and simmer 15 minutes or until rice is tender", "and liquid", "is\\tabsorbed.", "Toss lightly with fork. Sprinkle with grated Parmesan cheese, if desired.", "You can add leftover cut up chicken and water chestnuts (if desired) for a main", "dish.\\tYou can", "also", "add", "any", "combination", "of", "herbs: rosemary, parsley, basil or marjoram."]');
/*!40000 ALTER TABLE `hr` ENABLE KEYS */;
UNLOCK TABLES;

-- 建立 food101_recipe 表（保持原有結構）
DROP TABLE IF EXISTS `food101_recipe`;
CREATE TABLE IF NOT EXISTS food101_recipe (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) UNIQUE NOT NULL,
    ingredients JSON,
    directions JSON
);

-- 插入 food101_recipe 範例資料
INSERT INTO food101_recipe (title, ingredients, directions) VALUES
('risotto', JSON_ARRAY('rice', 'butter', 'parmesan cheese'), JSON_ARRAY('Boil water', 'Cook rice', 'Add cheese')),
('pizza', JSON_ARRAY('dough', 'tomato sauce', 'cheese'), JSON_ARRAY('Prepare dough', 'Add sauce', 'Bake'));

-- 恢復設定
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;