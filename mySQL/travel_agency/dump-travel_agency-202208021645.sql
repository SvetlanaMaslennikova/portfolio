-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: travel_agency
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `country_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Города';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Москва',1),(2,'Каир',2),(3,'Анкара',3),(4,'Афины',4),(5,'Ереван',5),(6,'Никосия',6),(7,'Мехико',7),(8,'Абу-Даби',8),(9,'Бангкок',9),(10,'Ташкент',10);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Страны';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Россия'),(2,'Египет'),(3,'Турция'),(4,'Греция'),(5,'Армения'),(6,'Кипр'),(7,'Мексика'),(8,'ОАЭ'),(9,'Таиланд'),(10,'Узбекистан');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flights` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `departure_city` bigint unsigned NOT NULL COMMENT 'Город вылета',
  `departure_date` date NOT NULL COMMENT 'Дата вылета',
  `departure_time` time NOT NULL COMMENT 'Время вылета',
  `arrival_city` bigint unsigned NOT NULL COMMENT 'Город прилета',
  `arrival_date` date NOT NULL COMMENT 'Дата прилета',
  `arrival_time` time NOT NULL COMMENT 'Время прилета',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `departure_city` (`departure_city`),
  KEY `arrival_city` (`arrival_city`),
  CONSTRAINT `flights_ibfk_1` FOREIGN KEY (`departure_city`) REFERENCES `cities` (`id`),
  CONSTRAINT `flights_ibfk_2` FOREIGN KEY (`arrival_city`) REFERENCES `cities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Авиарейсы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights`
--

LOCK TABLES `flights` WRITE;
/*!40000 ALTER TABLE `flights` DISABLE KEYS */;
INSERT INTO `flights` VALUES (1,1,'2022-06-15','08:15:00',10,'2022-06-16','18:30:00'),(2,2,'2022-06-22','10:25:00',9,'2022-06-23','11:30:00'),(3,3,'2022-07-15','09:15:00',8,'2022-07-15','10:30:00'),(4,4,'2022-08-13','12:20:00',7,'2022-08-13','18:20:00'),(5,5,'2022-09-15','16:15:00',6,'2022-09-16','08:30:00'),(6,6,'2022-10-15','18:45:00',5,'2022-10-16','02:17:00'),(7,7,'2022-11-15','14:17:00',4,'2022-11-15','18:30:00'),(8,8,'2022-07-26','17:43:00',3,'2022-07-15','18:30:00'),(9,9,'2022-08-31','18:33:00',2,'2022-09-01','00:10:00'),(10,10,'2022-07-16','05:25:00',1,'2022-07-16','08:30:00');
/*!40000 ALTER TABLE `flights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_type`
--

DROP TABLE IF EXISTS `food_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_type` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Тип питания';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_type`
--

LOCK TABLES `food_type` WRITE;
/*!40000 ALTER TABLE `food_type` DISABLE KEYS */;
INSERT INTO `food_type` VALUES (1,'Без питания'),(2,'Завтраки'),(3,'Полупансион (завтрак + ужин)'),(4,'Полный пансион (завтрак, обед, ужин)'),(5,'Всё включенно (Полный пансион + напитки местного производства)'),(6,'Шведский стол'),(7,'Континентальный завтрак'),(8,'Расширенный полупансион (завтрак + ужин + напитки'),(9,'Расширенный полный пансион ( завтрак, обед, ужин + напитки'),(10,'Ультра всё включенно (всё включенно + напитки импортного производства');
/*!40000 ALTER TABLE `food_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `hot_tour`
--

DROP TABLE IF EXISTS `hot_tour`;
/*!50001 DROP VIEW IF EXISTS `hot_tour`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `hot_tour` AS SELECT 
 1 AS `id`,
 1 AS `date_begin`,
 1 AS `date_end`,
 1 AS `food_type_id`,
 1 AS `hotel_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `stars` int NOT NULL,
  `city_id` bigint unsigned NOT NULL,
  `type_of_allocation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `city_id` (`city_id`),
  KEY `type_of_allocation_id` (`type_of_allocation_id`),
  CONSTRAINT `hotels_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `hotels_ibfk_2` FOREIGN KEY (`type_of_allocation_id`) REFERENCES `type_of_allocation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Отели';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` VALUES (1,'Метрополь',5,1,10),(2,'Ramses Hilton',4,2,9),(3,'Hotel Evren',3,3,8),(4,'Candia Hotel',4,4,7),(5,'Республика Ереван',4,5,6),(6,'Merit Hotel',5,6,5),(7,'MX centro',3,7,4),(8,'Emirates Palace',5,8,3),(9,'Asia Hotel Bangkok',3,9,2),(10,'Гостиница Узбекистан',4,10,1);
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `p1`
--

DROP TABLE IF EXISTS `p1`;
/*!50001 DROP VIEW IF EXISTS `p1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `p1` AS SELECT 
 1 AS `id`,
 1 AS `tour_id`,
 1 AS `user_id`,
 1 AS `creater_at`,
 1 AS `price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tour_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `creater_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `price` float NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `tour_id` (`tour_id`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Продажи';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,3,1,'2022-05-31 14:30:25',35000),(2,5,2,'2022-05-31 14:30:25',15000),(3,7,3,'2022-05-31 14:30:25',7500),(4,2,4,'2022-05-31 14:30:25',27800),(5,1,5,'2022-05-31 14:30:25',64654),(6,6,6,'2022-05-31 14:30:25',56476),(7,9,7,'2022-05-31 14:30:25',7654),(8,10,8,'2022-05-31 14:30:25',76537),(9,3,9,'2022-05-31 14:30:25',54347),(10,7,10,'2022-05-31 14:30:25',8493);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_type`
--

DROP TABLE IF EXISTS `tour_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_type` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Тип тура';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_type`
--

LOCK TABLES `tour_type` WRITE;
/*!40000 ALTER TABLE `tour_type` DISABLE KEYS */;
INSERT INTO `tour_type` VALUES (1,'Пакетный'),(2,'Индивидуальный'),(3,'Горящий'),(4,'Экскурсионный'),(5,'Спортивный'),(6,'Морской круиз'),(7,'Горнолыжный'),(8,'Детский отдых'),(9,'Свадебный'),(10,'Оздоровительный');
/*!40000 ALTER TABLE `tour_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tours`
--

DROP TABLE IF EXISTS `tours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tours` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tour_type_id` bigint unsigned NOT NULL,
  `date_begin` date NOT NULL,
  `date_end` date NOT NULL,
  `food_type_id` bigint unsigned NOT NULL,
  `hotel_id` bigint unsigned NOT NULL,
  `flight_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `tour_type_id` (`tour_type_id`),
  KEY `food_type_id` (`food_type_id`),
  KEY `hotel_id` (`hotel_id`),
  KEY `flight_id` (`flight_id`),
  CONSTRAINT `tours_ibfk_1` FOREIGN KEY (`tour_type_id`) REFERENCES `tour_type` (`id`),
  CONSTRAINT `tours_ibfk_2` FOREIGN KEY (`food_type_id`) REFERENCES `food_type` (`id`),
  CONSTRAINT `tours_ibfk_3` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`),
  CONSTRAINT `tours_ibfk_4` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Туры';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours`
--

LOCK TABLES `tours` WRITE;
/*!40000 ALTER TABLE `tours` DISABLE KEYS */;
INSERT INTO `tours` VALUES (1,1,'2022-06-15','2022-06-26',2,5,7),(2,2,'2022-06-22','2022-07-23',1,1,3),(3,3,'2022-07-15','2022-08-05',3,2,6),(4,4,'2022-08-13','2022-08-30',5,6,4),(5,5,'2022-09-15','2022-09-26',4,6,8),(6,6,'2022-10-15','2022-10-29',8,2,3),(7,7,'2022-11-15','2022-11-15',7,3,7),(8,8,'2022-07-26','2022-07-26',7,8,4),(9,9,'2022-08-31','2022-09-01',2,9,7),(10,10,'2022-07-16','2022-07-16',10,6,2);
/*!40000 ALTER TABLE `tours` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_date_begin_before_insert` BEFORE INSERT ON `tours` FOR EACH ROW BEGIN 
	IF NEW.date_begin <= CURRENT_DATE() THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Insert Canceled. Birthday must be in the past!';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `type_of_allocation`
--

DROP TABLE IF EXISTS `type_of_allocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_of_allocation` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Тип размещения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_of_allocation`
--

LOCK TABLES `type_of_allocation` WRITE;
/*!40000 ALTER TABLE `type_of_allocation` DISABLE KEYS */;
INSERT INTO `type_of_allocation` VALUES (1,'Одноместное'),(2,'Двухместное'),(3,'Трехместное'),(4,'Четырехместный номер'),(5,'Дополнительная кровать'),(6,'Детская кровать'),(7,'Стандартная комната'),(8,'Номер повышенной комфортности'),(9,'Семейный номер'),(10,'Люкс');
/*!40000 ALTER TABLE `type_of_allocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(150) NOT NULL,
  `lastname` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` char(11) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Клиенты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Игорь','Петров','igor@mail.com','89211234567','2022-05-31 14:28:28','2022-05-31 14:28:28'),(2,'Оксана','Петрова','oksana@mail.com','89212345678','2022-05-31 14:28:28','2022-05-31 14:28:28'),(3,'Иван','Иванов','ivan@mail.com','89213456789','2022-05-31 14:28:28','2022-05-31 14:28:28'),(4,'Сергей','Сидоров','sergey@mail.com','89214567890','2022-05-31 14:28:28','2022-05-31 14:28:28'),(5,'Мария','Маркова','mariya@mail.com','89215678901','2022-05-31 14:28:28','2022-05-31 14:28:28'),(6,'Елена','Ленина','elena@mail.com','89216789012','2022-05-31 14:28:28','2022-05-31 14:28:28'),(7,'Армен','Хачатурян','armen@mail.com','89217890123','2022-05-31 14:28:28','2022-05-31 14:28:28'),(8,'Борис','Борисов','boris@mail.com','89218901234','2022-05-31 14:28:28','2022-05-31 14:28:28'),(9,'Виктория','Викторова','victor@mail.com','89219012345','2022-05-31 14:28:28','2022-05-31 14:28:28'),(10,'Давид','Давыдов','david@mail.com','89210123456','2022-05-31 14:28:28','2022-05-31 14:28:28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'travel_agency'
--

--
-- Dumping routines for database 'travel_agency'
--

--
-- Final view structure for view `hot_tour`
--

/*!50001 DROP VIEW IF EXISTS `hot_tour`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `hot_tour` AS select `t`.`id` AS `id`,`t`.`date_begin` AS `date_begin`,`t`.`date_end` AS `date_end`,`t`.`food_type_id` AS `food_type_id`,`t`.`hotel_id` AS `hotel_id` from `tours` `t` where (`t`.`tour_type_id` = 3) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `p1`
--

/*!50001 DROP VIEW IF EXISTS `p1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `p1` AS select `s`.`id` AS `id`,`s`.`tour_id` AS `tour_id`,`s`.`user_id` AS `user_id`,`s`.`creater_at` AS `creater_at`,`s`.`price` AS `price` from `sales` `s` where (`s`.`price` < '20000') */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-02 16:45:15
