-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: inoerp
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `user_favourite`
--

DROP TABLE IF EXISTS `user_favourite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_favourite` (
  `user_favourite_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `path_id` int DEFAULT NULL,
  `external_link` varchar(256) DEFAULT NULL,
  `fav_name` varchar(100) NOT NULL,
  `fav_group` varchar(50) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `created_by` varchar(50) NOT NULL DEFAULT 'UNKOWN',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` varchar(50) NOT NULL DEFAULT 'UNKOWN',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_favourite_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_favourite`
--

LOCK TABLES `user_favourite` WRITE;
/*!40000 ALTER TABLE `user_favourite` DISABLE KEYS */;
INSERT INTO `user_favourite` VALUES (1,34,18,NULL,'sys - Option',NULL,NULL,'1','2021-10-04 12:34:15','1','2021-10-04 12:38:24'),(2,34,NULL,'www.google.com','Google',NULL,1,'1','2021-10-04 12:34:15','1','2021-10-04 12:38:24'),(3,34,26,NULL,'sys - Path',NULL,2,'1','2021-10-04 12:34:15','1','2021-10-04 12:38:24'),(4,34,0,'www.inoideas.org','inoERP',NULL,2,'1','2021-10-04 12:34:15','1','2021-10-04 12:38:24'),(5,34,99,NULL,'pur - Purchase Order',NULL,2,'1','2021-10-04 12:34:15','1','2021-10-04 12:38:24'),(6,34,56,NULL,'inv - Inventory Transaction',NULL,2,'1','2021-10-04 12:34:15','1','2021-10-04 12:38:24'),(7,34,44,NULL,'inv - Item Master',NULL,NULL,'1','2021-10-04 12:34:15','1','2021-10-04 12:38:24');
/*!40000 ALTER TABLE `user_favourite` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-08  3:49:20
