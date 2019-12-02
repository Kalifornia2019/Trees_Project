-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: abills
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `trees`
--

DROP TABLE IF EXISTS `trees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trees` (
  `id` int(45) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id of table',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tree_age` int(45) NOT NULL COMMENT 'age of tree',
  `tree_height` int(45) NOT NULL COMMENT 'height of tree',
  `tree_circle` int(45) NOT NULL COMMENT 'circumference of tree',
  `tree_type` varchar(45) NOT NULL DEFAULT '' COMMENT 'type of tree',
  `tree_status` varchar(100) NOT NULL DEFAULT '' COMMENT 'status of tree',
  `value_x` double(20,14) NOT NULL DEFAULT '0.00000000000000',
  `value_y` double(20,14) NOT NULL DEFAULT '0.00000000000000',
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trees`
--

LOCK TABLES `trees` WRITE;
/*!40000 ALTER TABLE `trees` DISABLE KEYS */;
INSERT INTO `trees` VALUES (1,'2019-11-20 12:23:54',0,0,0,'','work',0.00000000000000,0.00000000000000,NULL),(2,'0000-00-00 00:00:00',0,0,0,'','',0.00000000000000,0.00000000000000,NULL),(3,'0000-00-00 00:00:00',0,0,0,'','',0.00000000000000,0.00000000000000,NULL),(4,'0000-00-00 00:00:00',0,0,0,'','',0.00000000000000,0.00000000000000,NULL),(5,'2019-11-22 12:25:27',0,0,0,'','rtyrty',0.00000000000000,0.00000000000000,NULL),(6,'2019-11-22 12:29:12',122,11112,1111,'','fdddgfdfgd',0.00000000000000,0.00000000000000,NULL),(7,'2019-11-22 13:09:06',5,10,10,'','здорове',0.00000000000000,0.00000000000000,NULL),(8,'2019-11-22 13:11:14',2,2,3,'klen','hels',0.00000000000000,0.00000000000000,NULL),(9,'2019-11-23 07:45:31',0,0,0,'good','good',0.00000000000000,0.00000000000000,NULL),(11,'2019-11-23 08:03:53',5,5,5,'jklklklkjl','jkhjkhjkhjk',0.00000000000000,0.00000000000000,NULL),(12,'2019-11-23 08:06:43',5,5,5,'fghfh','fdgdfgfdgd',0.00000000000000,0.00000000000000,NULL),(13,'2019-11-23 08:08:06',10,10,0,'hjghjgh','',0.00000000000000,0.00000000000000,NULL),(14,'2019-11-23 08:08:17',0,0,0,'','',0.00000000000000,0.00000000000000,'hjhkjkhjk'),(15,'2019-11-23 09:22:24',0,2,3,'bereza','helth',22.55555000000000,36.00000000000000,'good'),(16,'2019-11-23 09:26:08',0,0,0,'bereza','',0.00000000000000,0.00000000000000,''),(18,'2019-11-25 11:24:16',1111,1111,1111,'aaaa','aaaaaa',22.55555000000000,36.00000000000000,'aaaaaa');
/*!40000 ALTER TABLE `trees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-25 14:15:24