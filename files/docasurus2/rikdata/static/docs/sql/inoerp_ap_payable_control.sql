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
-- Table structure for table `ap_payable_control`
--

DROP TABLE IF EXISTS `ap_payable_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ap_payable_control` (
  `ap_payable_control_id` int unsigned NOT NULL AUTO_INCREMENT,
  `org_id` int NOT NULL,
  `payment_term_id` int DEFAULT NULL,
  `ship_to_id` int DEFAULT NULL,
  `bill_to_id` int DEFAULT NULL,
  `inv_approval_hierarchy` varchar(25) DEFAULT NULL,
  `payment_approval_hierarchy` varchar(25) DEFAULT NULL,
  `tax_ac_id` int DEFAULT NULL,
  `liability_ac_id` int DEFAULT NULL,
  `pre_payment_ac_id` int DEFAULT NULL,
  `discount_ac_id` int DEFAULT NULL,
  `rate_gain_ac_id` int DEFAULT NULL,
  `rate_loss_ac_id` int DEFAULT NULL,
  `cash_ac_id` int DEFAULT NULL,
  `default_exchange_rate_type` int DEFAULT NULL,
  `expense_payment_term` int DEFAULT NULL,
  `expense_pay_group` varchar(25) DEFAULT NULL,
  `expense_payment_priority` int DEFAULT NULL,
  `expense_template_id` int DEFAULT NULL,
  `created_by` varchar(50) NOT NULL DEFAULT 'UNKOWN',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` varchar(50) NOT NULL DEFAULT 'UNKOWN',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ap_payable_control_id`),
  UNIQUE KEY `org` (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ap_payable_control`
--

LOCK TABLES `ap_payable_control` WRITE;
/*!40000 ALTER TABLE `ap_payable_control` DISABLE KEYS */;
INSERT INTO `ap_payable_control` VALUES (1,5,1,NULL,NULL,NULL,NULL,35,286,184,NULL,NULL,NULL,NULL,NULL,NULL,'EMPLOYEE',NULL,NULL,'1','2021-10-04 12:31:43','1','2021-10-04 12:37:51');
/*!40000 ALTER TABLE `ap_payable_control` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-08  3:47:50
