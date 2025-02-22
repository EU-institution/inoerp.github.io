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
-- Table structure for table `inv_transaction_type`
--

DROP TABLE IF EXISTS `inv_transaction_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inv_transaction_type` (
  `transaction_type_id` int NOT NULL AUTO_INCREMENT,
  `oh_impact_type` enum('POSITIVE','NEGATIVE','BOTH','NONE') NOT NULL,
  `inv_transaction_code` varchar(50) NOT NULL,
  `gl_document_type` varchar(50) DEFAULT NULL,
  `inv_transaction_type` varchar(100) NOT NULL,
  `type_class` varchar(50) NOT NULL,
  `transaction_action` varchar(50) NOT NULL,
  `journal_profile_header_id` int NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `allow_negative_balance_cb` tinyint(1) DEFAULT NULL,
  `account_id` int DEFAULT NULL,
  `status` varchar(25) NOT NULL,
  `rev_enabled_cb` tinyint(1) DEFAULT NULL,
  `rev_number` varchar(256) DEFAULT NULL,
  `created_by` varchar(50) NOT NULL DEFAULT 'UNKOWN',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` varchar(50) NOT NULL DEFAULT 'UNKOWN',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gl_ac_profile_header_id` int DEFAULT NULL,
  PRIMARY KEY (`transaction_type_id`),
  KEY `fk_inv_transaction_type_02_idx` (`gl_document_type`),
  CONSTRAINT `fk_inv_transaction_type_02` FOREIGN KEY (`gl_document_type`) REFERENCES `gl_document_type` (`gl_document_type`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_transaction_type`
--

LOCK TABLES `inv_transaction_type` WRITE;
/*!40000 ALTER TABLE `inv_transaction_type` DISABLE KEYS */;
INSERT INTO `inv_transaction_type` VALUES (1,'NEGATIVE','MISCELLANEOUS_ISSUE','MISCELLANEOUS_ISSUE','Miscellaneous Issue','INVENTORY','ISSUE_FROM_STORES',4,'Miscellaneous Issue',0,20,'active',0,'','1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(2,'POSITIVE','MISCELLANEOUS_RECEIPT','MISCELLANEOUS_RECEIPT','Miscellaneous Receipt','INVENTORY','RECEIPT_INTO_STORES',3,'Miscellaneous Receipt',0,21,'active',0,'','1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(3,'BOTH','SUBINVENTORY_TRANSFER','SUBINVENTORY_TRANSFER','Subinventory Transfer','INVENTORY','SUBINVENTORY_TRANSFER',3,'Subinventory Transfer',0,0,'active',0,'','1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(4,'POSITIVE','PO_RECEIPT','PO_RECEIPT','PO Receipt','PO','LOGICAL_RECEIPT',3,'PO Receipt',0,NULL,'inactive',0,'','1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(5,'BOTH','PO_DELIVERY','PO_DELIVERY','PO Delivery','PO','RECEIPT_INTO_STORES',3,'PO Delivery',0,NULL,'active',0,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(6,'NEGATIVE','WIP_ISSUE','WIP_ISSUE','WIP Issue','WIP','ISSUE_FROM_STORES',3,'WIP Material Issue',0,NULL,'active',0,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(7,'POSITIVE','WIP_RETURN','WIP_RETURN','WIP Return','WIP','RECEIPT_INTO_STORES',3,'Material Return from WIP',0,20,'active',0,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(8,'POSITIVE','WIP_NEGATIVE_ISSUE','WIP_NEGATIVE_ISSUE','WIP Negative Issue','WIP','RECEIPT_INTO_STORES',3,'WIP Negative Issue',0,NULL,'active',0,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(9,'NEGATIVE','WIP_NEGATIVE_RETURN','WIP_NEGATIVE_RETURN','WIP Negative Return','WIP','ISSUE_FROM_STORES',3,'WIP Negative Return',0,NULL,'active',0,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(10,'POSITIVE','WIP_WOL_COMPLETION','WIP_WOL_COMPLETION','WIP WOL Completion','WIP','RECEIPT_INTO_STORES',3,'WIP WOL Completion',0,NULL,'active',0,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(11,'POSITIVE','WIP_ASSEMBLY_COMPLETION','WIP_ASSEMBLY_COMPLETION','WIP Assembly Completion','WIP','RECEIPT_INTO_STORES',3,'WIP Assembly Completion',1,NULL,'active',0,'','1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(12,'NEGATIVE','WIP_WOL_RETURN','WIP_WOL_RETURN','WIP WOL Return','WIP','ISSUE_FROM_STORES',3,'WIP Assembly Return',0,NULL,'active',0,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(13,'NEGATIVE','WIP_ASSEMBLY_RETURN','WIP_ASSEMBLY_RETURN','WIP Assembly Return','WIP','ISSUE_FROM_STORES',3,'WIP Assembly Return',NULL,NULL,'active',NULL,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(14,'BOTH','SO_PICKING','SO_PICKING','SO Picking','OM','SUBINVENTORY_TRANSFER',3,'Sales Order Picking',NULL,NULL,'active',NULL,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(15,'NEGATIVE','SO_SHIPPING','SO_SHIPPING','SO Shipping','OM','ISSUE_FROM_STORES',3,'Sales Order Shipping',NULL,NULL,'active',NULL,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(16,'NEGATIVE','COUNT_ADJUSTMENT_ISSUE','COUNT_ADJUSTMENT_ISSUE','Count Adjustment Issue','INVENTORY','CYCLE_COUNT_ADJUSTMENT',3,'Count Adjustment Issue - Cycle Count & Physical In',0,NULL,'active',0,'','1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(17,'POSITIVE','COUNT_ADJUSTMENT_RECEIPT','COUNT_ADJUSTMENT_RECEIPT','Count Adjustment Receipt','INVENTORY','CYCLE_COUNT_ADJUSTMENT',3,'Count Adjustment Receipt - Cycle Count & Physical ',NULL,NULL,'active',NULL,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(18,'BOTH','INTER_ORG_TRANSFER_DIRECT','INTER_ORG_TRANSFER_DIRECT','Inter Org Transfer - Direct','INVENTORY','DIRECT_ORGANIZATION_TRANSFER',3,'Inter Org Transfer - Direct',1,NULL,'active',0,'','1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(19,'NEGATIVE','INTER_ORG_TRANSFER_INTRANSIT','INTER_ORG_TRANSFER_INTRANSIT','Inter Org Transfer - Intransit','INVENTORY','DIRECT_ORGANIZATION_TRANSFER',3,'Inter Org Transfer - Intransit',1,NULL,'active',0,'','1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(20,'POSITIVE','INTER-ORG_TRASFER_RECEIPT','INTER-ORG_TRASFER_RECEIPT','Inter-Org Trasfer Receipt','INVENTORY','RECEIPT_INTO_STORES',3,'Inter-Org Trasfer Receipt',NULL,NULL,'active',NULL,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(21,'NEGATIVE','PO_RETURN','PO_RETURN','PO Return','PO','ISSUE_FROM_STORES',3,NULL,1,NULL,'ACTIVE',NULL,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(22,'NEGATIVE','POS_TRANSACTION','POS_TRANSACTION','POS Transaction','POS','ISSUE_FROM_STORES',3,'POS Transaction - Sale & Shipping',NULL,NULL,'ACTIVE',NULL,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(23,'BOTH','RMA_DELIVERY','RMA_DELIVERY','RMA Delivery','OM','RECEIPT_INTO_STORES',3,'Return Material Authorization Delivery',NULL,NULL,'ACTIVE',NULL,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(24,'NEGATIVE','MAINTENANCE_ISSUE','MAINTENANCE_ISSUE','Maintenance Issue','AM','ISSUE_FROM_STORES',3,NULL,NULL,NULL,'ACTIVE',NULL,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(25,'POSITIVE','MAINTENANCE_RETURN','MAINTENANCE_RETURN','Maintenance Return','AM','RECEIPT_INTO_STORES',3,NULL,NULL,NULL,'ACTIVE',NULL,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(26,'BOTH','INV_MOVE_TRANSACTION','INV_MOVE_TRANSACTION','Inv Move Transaction','INVENTORY','SUBINVENTORY_TRANSFER',3,NULL,NULL,NULL,'ACTIVE',NULL,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(27,'BOTH','SALES_MOVE_TRANSACTION','SALES_MOVE_TRANSACTION','Sales Move Transaction','INVENTORY','SUBINVENTORY_TRANSFER',3,NULL,NULL,NULL,'ACTIVE',NULL,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(28,'BOTH','WIP_MOVE_TRANSACTION','WIP_MOVE_TRANSACTION','WIP Move Transaction','INVENTORY','ISSUE_FROM_STORES',3,NULL,NULL,NULL,'ACTIVE',NULL,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(29,'NEGATIVE','PROCESS_WIP_ISSUE','PROCESS_WIP_ISSUE','Process WIP Issue','PM','ISSUE_FROM_STORES',3,NULL,NULL,NULL,'ACTIVE',NULL,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(30,'POSITIVE','PROCESS_WIP_RETURN','PROCESS_WIP_RETURN','Process WIP Return','PM','RECEIPT_INTO_STORES',3,NULL,NULL,NULL,'ACTIVE',NULL,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(31,'POSITIVE','BATCH_COMPLETION','BATCH_COMPLETION','Batch Completion','PM','RECEIPT_INTO_STORES',3,NULL,NULL,NULL,'ACTIVE',NULL,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(32,'NEGATIVE','BATCH_RETURN','BATCH_RETURN','Batch Return','PM','ISSUE_FROM_STORES',3,NULL,NULL,NULL,'ACTIVE',NULL,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(33,'POSITIVE','INTERLA_REQUISITION_RECEIPT','INTERLA_REQUISITION_RECEIPT','Interla Requisition Receipt','INVENTORY','RECEIPT_INTO_STORES',3,NULL,NULL,NULL,'ACTIVE',NULL,NULL,'1','2021-10-04 12:31:53','1','2021-10-04 12:38:06',NULL),(34,'NONE','CST_STANDARD_COST_UPDATE','CST_STANDARD_COST_UPDATE','Standard Cost Update','CST','CST_STANDARD_COST_UPDATE',3,'Standard Cost Update',NULL,NULL,'ACTIVE',NULL,NULL,'UNKOWN','2022-01-06 10:31:07','UNKOWN','2022-01-06 10:31:07',NULL);
/*!40000 ALTER TABLE `inv_transaction_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-08  3:48:10
