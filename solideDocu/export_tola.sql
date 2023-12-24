-- MySQL dump 10.13  Distrib 5.7.11, for Win64 (x86_64)
--
-- Host: localhost    Database: tola
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Current Database: `tola`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `tola` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tola`;

--
-- Table structure for table `tb_article`
--

DROP TABLE IF EXISTS `tb_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_article` (
  `ARTICLENO` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CATEGORYNO` int(11) DEFAULT NULL,
  `PRICE` int(11) DEFAULT NULL,
  `OLD_NEW` varchar(3) DEFAULT NULL,
  `ownerNo` int(11) DEFAULT NULL,
  `CRUSERNO` int(11) DEFAULT NULL,
  `CHUSERNO` int(11) DEFAULT NULL,
  `CRUSERDTTM` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CHUSERDTTM` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image1` varchar(255),
  `image2` varchar(255),
  `image3` varchar(255),
  PRIMARY KEY (`ARTICLENO`),
  KEY `fk_CATEGORYNO` (`CATEGORYNO`),
  KEY `fk_ownerNo` (`ownerNo`),
  CONSTRAINT `fk_CATEGORYNO` FOREIGN KEY (`CATEGORYNO`) REFERENCES `tb_category` (`CATEGORYNO`),
  CONSTRAINT `fk_ownerNo` FOREIGN KEY (`ownerNo`) REFERENCES `tb_user` (`userno`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_article`
--

LOCK TABLES `tb_article` WRITE;
/*!40000 ALTER TABLE `tb_article` DISABLE KEYS */;
INSERT INTO `tb_article` VALUES (10,'deffa','deffa jdida',2,876,'old',3,3,3,'2016-12-06 09:56:17','2016-12-06 09:56:17',NULL,NULL,NULL),(11,'bab','bab occasion',2,541,'New',2,2,2,'2016-12-06 10:13:38','2016-12-06 10:13:38',NULL,NULL,NULL),(12,'sldfjslfdj','sdfsfsfd',2,34,'old',3,3,3,'2016-12-06 10:48:29','2016-12-06 10:48:29',NULL,NULL,NULL),(13,'aaaa','mmmmmmmmmmmm',2,33,'New',3,3,3,'2016-12-06 10:50:21','2016-12-06 10:50:21',NULL,NULL,NULL),(14,'kkkkkk','kkkkk\r\njjgfgh\r\nfghfh',8,231,'old',5,5,5,'2016-12-06 12:54:24','2016-12-06 12:54:24',NULL,NULL,NULL),(15,'kkkkkk','kkkkk\r\njjgfgh\r\nfghfh',8,231,'old',5,5,5,'2016-12-06 12:56:20','2016-12-06 12:56:20',NULL,NULL,NULL),(16,'gggg','gdsfgd',2,34,'old',5,5,5,'2016-12-06 14:03:29','2016-12-06 14:03:29',NULL,NULL,NULL),(17,'vvvvv','fsdfsfd',6,45,'old',5,5,5,'2016-12-06 14:04:13','2016-12-06 14:04:13',NULL,NULL,NULL),(18,'kkkkkk','kkkkkkkk',9,56,'New',5,5,5,'2016-12-07 13:43:35','2016-12-07 13:43:35',NULL,NULL,NULL),(19,'zzzzzz','zzzzz',2,45,'old',3,3,3,'2016-12-07 16:30:03','2016-12-07 16:30:03',NULL,NULL,NULL),(20,'pieca','sdfsfdds',7,456,'old',3,3,3,'2016-12-07 16:54:47','2016-12-07 16:54:47',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tb_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_category`
--

DROP TABLE IF EXISTS `tb_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_category` (
  `CATEGORYNO` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORYNAME` varchar(255) DEFAULT NULL,
  `cruserdttm` date DEFAULT NULL,
  `chuserdttm` date DEFAULT NULL,
  `chuserno` int(11) DEFAULT NULL,
  `cruserno` int(11) DEFAULT NULL,
  PRIMARY KEY (`CATEGORYNO`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_category`
--

LOCK TABLES `tb_category` WRITE;
/*!40000 ALTER TABLE `tb_category` DISABLE KEYS */;
INSERT INTO `tb_category` VALUES (2,'Portes','2016-11-09','2016-11-09',-1,-1),(6,'Ailes','2016-12-06','2016-12-06',-1,-1),(7,'Pare brise','2016-12-06','2016-12-06',-1,-1),(8,'Vitres','2016-12-06','2016-12-06',-1,-1),(9,'Capots','2016-12-06','2016-12-06',-1,-1),(10,'Poigneés','2016-12-06','2016-12-06',-1,-1),(11,'Pare choc','2016-12-06','2016-12-06',-1,-1);
/*!40000 ALTER TABLE `tb_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_contact`
--

DROP TABLE IF EXISTS `tb_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_contact` (
  `CONTACTNO` int(11) NOT NULL AUTO_INCREMENT,
  `ADDRESSE` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `TELEFONNR` varchar(255) DEFAULT NULL,
  `cruserdttm` date DEFAULT NULL,
  `chuserdttm` date DEFAULT NULL,
  `chuserno` int(11) DEFAULT NULL,
  `cruserno` int(11) DEFAULT NULL,
  `contactname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CONTACTNO`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_contact`
--

LOCK TABLES `tb_contact` WRITE;
/*!40000 ALTER TABLE `tb_contact` DISABLE KEYS */;
INSERT INTO `tb_contact` VALUES (1,'qarfaoui@gmail.com','qarfaoui@gmail.com','12345678','2016-11-06','2016-11-06',1,1,'cont_Assil'),(2,'qarfaoui@gmail.com','qarfaoui@gmail.com','0909090909','2016-11-06','2016-11-29',1,1,'cont_Barae'),(7,NULL,'qarfaoui@gmail.com','888888888','2016-11-13','2016-11-29',1,1,'cont_Adil'),(8,NULL,NULL,NULL,'2016-11-13','2016-11-13',1,1,'cont_Azziz'),(9,NULL,'qarfaoui@gmail.com','87878787','2016-11-13','2016-11-27',1,1,'cont_Hicham'),(17,NULL,'qarfaoui@gmail.com','44444444','2016-11-27','2016-11-27',1,1,'cont_Yassin'),(18,NULL,'qarfaoui@gmail.com','654646546','2016-12-11','2016-12-11',1,1,'cont_Reda'),(19,NULL,'qarfaoui@gmail.com','998723985','2016-12-11','2016-12-11',1,1,'cont_Karim'),(20,NULL,'qarfaoui@gmail.com','09098','2016-12-11','2016-12-11',1,1,'cont_Khalid'),(21,NULL,'qarfaoui@gmail.com','987','2016-12-12','2016-12-12',1,1,'cont_Hassan'),(22,NULL,'qarfaoui@gmail.com','234243','2016-12-12','2016-12-12',1,1,'cont_Mehdi'),(23,NULL,'qarfaoui@gmail.com','657575','2016-12-12','2016-12-12',1,1,'cont_Faisal'),(24,NULL,'qarfaoui@gmail.com','098098','2016-12-12','2016-12-12',1,1,'cont_Kamal'),(25,NULL,'qarfaoui@gmail.com','098098','2016-12-12','2016-12-12',1,1,'cont_Kamal');
/*!40000 ALTER TABLE `tb_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_location`
--

DROP TABLE IF EXISTS `tb_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_location` (
  `LOCATIONNO` int(11) NOT NULL AUTO_INCREMENT,
  `LOCATIONNAME` varchar(255) DEFAULT NULL,
  `cruserno` int(11) DEFAULT NULL,
  `chuserno` int(11) DEFAULT NULL,
  `chuserdttm` date DEFAULT NULL,
  `cruserdttm` date DEFAULT NULL,
  PRIMARY KEY (`LOCATIONNO`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_location`
--

LOCK TABLES `tb_location` WRITE;
/*!40000 ALTER TABLE `tb_location` DISABLE KEYS */;
INSERT INTO `tb_location` VALUES (13,'loc_Assil',1,1,'2016-11-06','2016-11-06'),(14,'loc_Barae',1,1,'2016-11-06','2016-11-06'),(19,'loc_Adil',1,1,'2016-11-13','2016-11-13'),(20,'loc_Azziz',1,1,'2016-11-13','2016-11-13'),(21,'loc_Hicham',1,1,'2016-11-13','2016-11-13'),(29,'loc_Yassin',1,1,'2016-11-27','2016-11-27'),(30,'loc_Reda',1,1,'2016-12-11','2016-12-11'),(31,'loc_Karim',1,1,'2016-12-11','2016-12-11'),(32,'loc_Khalid',1,1,'2016-12-11','2016-12-11'),(33,'loc_Hassan',1,1,'2016-12-12','2016-12-12'),(34,'loc_Mehdi',1,1,'2016-12-12','2016-12-12'),(35,'loc_Faisal',1,1,'2016-12-12','2016-12-12'),(36,'loc_Kamal',1,1,'2016-12-12','2016-12-12'),(37,'loc_Kamal',1,1,'2016-12-12','2016-12-12');
/*!40000 ALTER TABLE `tb_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `userno` int(11) NOT NULL AUTO_INCREMENT,
  `SURNAME` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `CONTACTNO` int(11) DEFAULT NULL,
  `LOCATIONNO` int(11) DEFAULT NULL,
  `cruserno` int(11) DEFAULT NULL,
  `cruserdttm` date DEFAULT NULL,
  `chuserdttm` date DEFAULT NULL,
  `chuserno` int(11) DEFAULT NULL,
  PRIMARY KEY (`userno`),
  KEY `cont` (`CONTACTNO`),
  KEY `loc` (`LOCATIONNO`),
  CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`CONTACTNO`) REFERENCES `tb_contact` (`CONTACTNO`) ON DELETE CASCADE,
  CONSTRAINT `tb_user_ibfk_2` FOREIGN KEY (`LOCATIONNO`) REFERENCES `tb_location` (`LOCATIONNO`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (1,'Mr','Assil','hammouda',1,13,1,'2016-11-06','2016-11-06',1),(2,'Mr','Barae','barae',2,14,1,'2016-11-06','2016-11-06',1),(3,'Mr','Adil','adil',7,19,1,'2016-11-13','2016-11-13',1),(4,'Mr','Azziz','azziz',8,20,1,'2016-11-13','2016-11-13',1),(5,'Mr','Hicham','hicham',9,21,1,'2016-11-13','2016-11-13',1),(13,'Mr','Yassin','tawhid',17,29,1,'2016-11-27','2016-11-27',1),(14,'Mr','Reda','reda',18,30,1,'2016-12-11','2016-12-11',1),(15,'Mr','Karim','karim',19,31,1,'2016-12-11','2016-12-11',1),(16,'Mr','Khalid','kahlid',20,32,1,'2016-12-11','2016-12-11',1),(17,'Mr','Hassan','hassan',21,33,1,'2016-12-12','2016-12-12',1),(18,'Mr','Mehdi','mehdi',22,34,1,'2016-12-12','2016-12-12',1),(19,'Mr','Faisal','faisal',23,35,1,'2016-12-12','2016-12-12',1),(20,'Mr','Kamal','kamal',24,36,1,'2016-12-12','2016-12-12',1),(21,'Mr','Kamal','kamal',24,36,1,'2016-12-12','2016-12-12',1);
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-29  9:31:39

DROP TABLE IF EXISTS `tb_norange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_norange` (
  `NOOBJ` varchar(255) NOT NULL,
  `RANGEFROM` int(11),
  `RANGETO` int(11),
  `NEXTNO` int(11),
  `chuserdttm` date DEFAULT NULL,
  `chuserno` int(11) DEFAULT NULL,
  `cruserno` int(11) DEFAULT NULL,
  KEY `loc` (`LOCATIONNO`),
  CONSTRAINT `tb_norange_ibfk_1` FOREIGN KEY (`locationno`) REFERENCES `tb_location` (`locationno`) ON DELETE CASCADE,
  constraint PK_tb_norange primary key (`loc`, `NOOBJ`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
