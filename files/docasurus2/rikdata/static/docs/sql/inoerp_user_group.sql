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
-- Table structure for table `user_group`
--

DROP TABLE IF EXISTS `user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_group` (
  `user_group_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_group_code` varchar(25) NOT NULL,
  `ino_user_id` int unsigned NOT NULL,
  `created_by` varchar(50) NOT NULL DEFAULT 'UNKOWN',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` varchar(50) NOT NULL DEFAULT 'UNKOWN',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_group_id`),
  UNIQUE KEY `user_group_code` (`user_group_code`,`ino_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group`
--

LOCK TABLES `user_group` WRITE;
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
INSERT INTO `user_group` VALUES (1,'ALL_ORG_BOTH',34,'1','2021-10-04 12:34:15','1','2021-10-04 12:38:25'),(2,'US_BOTH',99,'1','2021-10-04 12:34:15','1','2021-10-04 12:38:25'),(3,'ALL_ORG_BOTH',1,'1','2021-10-04 12:34:15','1','2021-10-04 12:38:25'),(4,'US_BOTH',1,'1','2021-10-04 12:34:15','1','2021-10-04 12:38:25'),(5,'ALL_ORG_BOTH',96,'1','2021-10-04 12:34:15','1','2021-10-04 12:38:25'),(6,'ALL_ORG_BOTH',114,'1','2021-10-04 12:34:15','1','2021-10-04 12:38:25'),(7,'ALL_ORG_BOTH',2,'1','2021-10-04 12:34:15','1','2021-10-04 12:38:25'),(8,'ALL_ORG_BOTH',4,'1','2021-10-04 12:34:15','1','2021-10-04 12:38:25'),(9,'ALL_ORG_BOTH',6,'1','2021-10-04 12:34:15','1','2021-10-04 12:38:25'),(10,'ALL_ORG_BOTH',3,'1','2021-10-04 12:34:15','1','2021-10-04 12:38:25');
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-08  3:49:07
