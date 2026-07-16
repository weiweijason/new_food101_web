-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: food_recipe
-- ------------------------------------------------------
-- Server version	8.0.36

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

--
-- Table structure for table `dhr`
--

DROP TABLE IF EXISTS `dhr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dhr` (
  `title` text,
  `have_healthy_recipe` int DEFAULT NULL,
  `remark` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dhr`
--

LOCK TABLES `dhr` WRITE;
/*!40000 ALTER TABLE `dhr` DISABLE KEYS */;
INSERT INTO `dhr` VALUES ('apple_pie',1,'Sugarless'),('baby_back_ribs',0,''),('baklava',0,''),('beef_carpaccio',0,''),('beef_tartare',0,''),('beet_salad',1,'Low-fat'),('beignets',0,''),('bibimbap',0,''),('bread_pudding',1,'Low-fat'),('breakfast_burrito',0,''),('bruschetta',1,'Low-calorie'),('caesar_salad',1,'Low-fat'),('cannoli',0,''),('caprese_salad',0,''),('carrot_cake',1,'Low-fat'),('ceviche',0,''),('cheesecake',1,''),('cheese_plate',0,''),('chicken_curry',1,'Good-for-heart'),('chicken_quesadilla',0,''),('chicken_wings',0,''),('chocolate_cake',1,'Fat-free'),('chocolate_mousse',1,'Low-calorie'),('churros',0,''),('clam_chowder',1,'Low-fat'),('club_sandwich',0,''),('crab_cakes',0,''),('creme_brulee',0,''),('croque_madame',0,''),('cup_cakes',0,''),('deviled_eggs',1,'Low-calorie'),('donuts',0,''),('dumplings',0,''),('edamame',0,''),('eggs_benedict',1,'diabetic'),('escargots',0,''),('falafel',0,''),('filet_mignon',0,''),('fish_and_chips',0,''),('foie_gras',0,''),('french_fries',1,'Low-fat'),('french_onion_soup',1,'Low-fat'),('french_toast',1,'Low-fat'),('fried_calamari',0,''),('fried_rice',1,''),('frozen_yogurt',1,'Diabetic'),('garlic_bread',0,''),('gnocchi',0,''),('greek_salad',1,'Low-crab'),('grilled_cheese_sandwich',0,''),('grilled_salmon',0,''),('guacamole',1,'Low-fat'),('gyoza',0,''),('hamburger',0,''),('hot_and_sour_soup',0,''),('hot_dog',0,''),('huevos_rancheros',1,'Non-fat'),('hummus',0,''),('ice_cream',1,'Sugarfree'),('lasagna',1,'Low-fat'),('lobster_bisque',0,''),('lobster_roll_sandwich',0,''),('macaroni_and_cheese',1,'Low-fat'),('macarons',0,''),('miso_soup',0,''),('mussels',0,''),('nachos',1,'Low-fat'),('omelette',0,''),('onion_rings',1,'Low-fat'),('oysters',0,''),('pad_thai',0,''),('paella',1,'Low-fat'),('pancakes',1,'Low-fat'),('panna_cotta',0,''),('peking_duck',0,''),('pho',0,''),('pizza',1,'Low-fat'),('pork_chop',1,'Low-fat'),('poutine',0,''),('prime_rib',0,''),('pulled_pork_sandwich',0,''),('ramen',0,''),('ravioli',0,''),('red_velvet_cake',1,'Low-fat'),('risotto',1,'Low-calorie and Low-cholesterol'),('samosa',0,''),('sashimi',0,''),('scallops',1,'Low-calorie'),('seaweed_salad',0,''),('shrimp_and_grits',0,''),('spaghetti_bolognese',0,''),('spaghetti_carbonara',0,''),('spring_rolls',0,''),('steak',1,'Low-calorie'),('strawberry_shortcake',1,'Fat-free'),('sushi',0,''),('tacos',1,'Low-fat'),('takoyaki',0,''),('tiramisu',1,'Low-fat'),('tuna_tartare',0,''),('waffles',1,'Low-fat');
/*!40000 ALTER TABLE `dhr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-20 12:00:15
