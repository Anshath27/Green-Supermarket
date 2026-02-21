-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shoppingsystem
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `tblproduct`
--

DROP TABLE IF EXISTS `tblproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproduct` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` varchar(100) DEFAULT NULL,
  `code` varchar(5) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `image_name` varchar(400) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `mrp_price` varchar(200) DEFAULT NULL,
  `product_category` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproduct`
--

LOCK TABLES `tblproduct` WRITE;
/*!40000 ALTER TABLE `tblproduct` DISABLE KEYS */;
INSERT INTO `tblproduct` VALUES (67,'Active','FEX','2023-12-31 09:13:06','fresh','C:UsersRaveen GunawardanaDocumentsNetBeansProjectsOnlineShoppingSystemwebuploadsgu99.jpg','gu99.jpg','Guava','100','','fruits'),(68,'Active','2YF','2023-12-31 09:13:40','fresh','C:UsersRaveen GunawardanaDocumentsNetBeansProjectsOnlineShoppingSystemwebuploadsdu99.jpg','du99.jpg','Duriyan','300','','fruits'),(69,'Active','WZG','2023-12-31 09:14:56','fresh','C:UsersRaveen GunawardanaDocumentsNetBeansProjectsOnlineShoppingSystemwebuploadssa99.jpg','sa99.jpg','strawberry','500','','fruits'),(70,'Active','1RH','2023-12-31 09:15:35','fresh','C:UsersRaveen GunawardanaDocumentsNetBeansProjectsOnlineShoppingSystemwebuploadsch99.jpg','ch99.jpg','Chicken','1000','','meat'),(71,'Active','WMN','2023-12-31 09:16:45','fresh','C:UsersRaveen GunawardanaDocumentsNetBeansProjectsOnlineShoppingSystemwebuploadsis99.jpg','is99.jpg','Prawns','1200','','meat'),(72,'Active','J7F','2023-12-31 09:17:22','fresh','C:UsersRaveen GunawardanaDocumentsNetBeansProjectsOnlineShoppingSystemwebuploadslu99.jpg','lu99.jpg','Onion','200','','Vegetables'),(73,'Active','XC0','2023-12-31 09:17:53','fresh','C:UsersRaveen GunawardanaDocumentsNetBeansProjectsOnlineShoppingSystemwebuploadsma99.jpg','ma99.jpg','Potatoes','175','','Vegetables'),(74,'Active','8Q0','2023-12-31 09:18:33','soft drinks','C:UsersRaveen GunawardanaDocumentsNetBeansProjectsOnlineShoppingSystemwebuploadsor99.jpg','or99.jpg','Fanta','200','','beverages'),(75,'Active','FNI','2023-12-31 09:19:25','soft drinks','C:UsersRaveen GunawardanaDocumentsNetBeansProjectsOnlineShoppingSystemwebuploadscin99.jpg','cin99.jpg','Sprite','200','','beverages'),(76,'Active','30W','2023-12-31 09:20:03','fresh','C:UsersRaveen GunawardanaDocumentsNetBeansProjectsOnlineShoppingSystemwebuploadsba99.png','ba99.png','Banana','300','','fruits'),(77,'Active','J2U','2023-12-31 09:20:54','fresh','C:UsersRaveen GunawardanaDocumentsNetBeansProjectsOnlineShoppingSystemwebuploadsfi99.jpg','fi99.jpg','Fish','600','','meat'),(79,'Active','IM1','2023-12-31 09:39:10','soft drinks','C:UsersRaveen GunawardanaDocumentsNetBeansProjectsOnlineShoppingSystemwebuploadssp99.jpg','sp99.jpg','Sprite','150','200','beverages');
/*!40000 ALTER TABLE `tblproduct` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-31 15:22:54
