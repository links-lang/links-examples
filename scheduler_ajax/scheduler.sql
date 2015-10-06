-- MySQL dump 10.13  Distrib 5.6.25, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: links_scheduler
-- ------------------------------------------------------
-- Server version	5.6.25-0ubuntu0.15.04.1

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
-- Table structure for table `consts`
--

DROP TABLE IF EXISTS `consts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consts` (
  `item` varchar(255) DEFAULT NULL,
  `value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consts`
--

LOCK TABLES `consts` WRITE;
/*!40000 ALTER TABLE `consts` DISABLE KEYS */;
INSERT INTO `consts` VALUES ('max_event_id',1),('max_person_id',65),('max_join_id',97);
/*!40000 ALTER TABLE `consts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventinfo`
--

DROP TABLE IF EXISTS `eventinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventinfo` (
  `event_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sponsor_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventinfo`
--

LOCK TABLES `eventinfo` WRITE;
/*!40000 ALTER TABLE `eventinfo` DISABLE KEYS */;
INSERT INTO `eventinfo` VALUES (1,'Scottish Programming Languages Seminar',1,'The Scottish Programming Languages Seminar, Wednesday 21st October 2015, at the University of Edinburgh.');
/*!40000 ALTER TABLE `eventinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventtime`
--

DROP TABLE IF EXISTS `eventtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventtime` (
  `event_id` int(11) DEFAULT NULL,
  `available_time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventtime`
--

LOCK TABLES `eventtime` WRITE;
/*!40000 ALTER TABLE `eventtime` DISABLE KEYS */;
INSERT INTO `eventtime` VALUES (1,'201510211200');
/*!40000 ALTER TABLE `eventtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joininfo`
--

DROP TABLE IF EXISTS `joininfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joininfo` (
  `join_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joininfo`
--

LOCK TABLES `joininfo` WRITE;
/*!40000 ALTER TABLE `joininfo` DISABLE KEYS */;
INSERT INTO `joininfo` VALUES (6,1,5),(9,1,8),(10,1,9),(11,1,10),(12,1,11),(19,1,16),(20,1,17),(21,1,18),(22,1,19),(27,1,23),(28,1,24),(29,1,25),(30,1,26),(32,1,27),(34,1,28),(36,1,24),(37,1,4),(39,1,30),(40,1,6),(41,1,12),(42,1,13),(43,1,21),(44,1,22),(46,1,15),(48,1,31),(49,1,32),(71,1,45),(72,1,46),(73,1,47),(75,1,48),(81,1,51),(82,1,52),(83,1,53),(84,1,54),(85,1,55),(86,1,56),(87,1,57),(88,1,58),(89,1,59),(90,1,20),(91,1,60),(92,1,49),(93,1,61),(94,1,62),(95,1,63),(96,1,64),(97,1,65);
/*!40000 ALTER TABLE `joininfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jointime`
--

DROP TABLE IF EXISTS `jointime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jointime` (
  `join_id` int(11) DEFAULT NULL,
  `available_time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jointime`
--

LOCK TABLES `jointime` WRITE;
/*!40000 ALTER TABLE `jointime` DISABLE KEYS */;
INSERT INTO `jointime` VALUES (6,'201510211200'),(9,'201510211200'),(10,'201510211200'),(11,'201510211200'),(12,'201510211200'),(19,'201510211200'),(20,'201510211200'),(21,'201510211200'),(22,'201510211200'),(27,'201510211200'),(28,'201510211200'),(29,'201510211200'),(30,'201510211200'),(32,'201510211200'),(34,'201510211200'),(36,'201510211200'),(37,'201510211200'),(39,'201510211200'),(40,'201510211200'),(41,'201510211200'),(42,'201510211200'),(43,'201510211200'),(44,'201510211200'),(46,'201510211200'),(48,'201510211200'),(49,'201510211200'),(72,'201510211200'),(73,'201510211200'),(71,'201510211200'),(75,'201510211200'),(81,'201510211200'),(82,'201510211200'),(83,'201510211200'),(84,'201510211200'),(85,'201510211200'),(86,'201510211200'),(87,'201510211200'),(88,'201510211200'),(89,'201510211200'),(90,'201510211200'),(91,'201510211200'),(92,'201510211200'),(93,'201510211200'),(94,'201510211200'),(95,'201510211200'),(96,'201510211200'),(97,'201510211200');
/*!40000 ALTER TABLE `jointime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personinfo`
--

DROP TABLE IF EXISTS `personinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personinfo` (
  `person_id` int(11) DEFAULT NULL,
  `person_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personinfo`
--

LOCK TABLES `personinfo` WRITE;
/*!40000 ALTER TABLE `personinfo` DISABLE KEYS */;
INSERT INTO `personinfo` VALUES (1,'',''),(2,'SimonJF',''),(3,'Test user',''),(4,'Roly Perera',''),(5,'Natalia Chechina',''),(6,'A. Barwell',''),(7,'Shayan',''),(8,'Magnus Morton',''),(9,'Don Sannella',''),(10,'Daniel Hillerström',''),(11,'Craig McLaughlin',''),(12,'Stefan Fehrenbach',''),(13,'Brian Campbell',''),(14,'',''),(15,'Artem Shinkarov',''),(16,'Ornela Dardha',''),(17,'Kenneth MacKenzie',''),(18,'Michel Steuwer',''),(19,'gallais',''),(20,'Philip Wadler',''),(21,'Bob Atkey',''),(22,'Jan de Muijnck-Hughes',''),(23,'Jack Williams',''),(24,'James McKinna',''),(25,'Jakub Zalewski',''),(26,'Miëtek Bak',''),(27,'Garrett Morris',''),(28,'Danel Ahman',''),(29,'dsada',''),(30,'Shayan Najd',''),(31,'Adam Harries',''),(32,'Fredrik Nordvall Forsberg',''),(33,'SimonJF',''),(34,'SimonJF2',''),(35,'SimonJF3',''),(36,'SimonJF4',''),(37,'PinesPinesington',''),(38,'fdsfds',''),(39,'gfdgfd',''),(40,'fffff',''),(41,'hiuh',''),(42,'SimonJF235',''),(43,'SimonJF5255',''),(44,'fdsf',''),(45,'Sam Lindley',''),(46,'James Chapman',''),(48,'Matus Tejiscak',''),(49,'Simon Fowler',''),(50,'SimonJF87',''),(51,'Aaron Crane',''),(52,'Charles Grellois',''),(53,'Rob Stewart',''),(54,'James Cheney',''),(55,'Gian Pietro Farina',''),(56,'Frantisek Farka',''),(57,'Chris Warburton',''),(58,'Blair Archibald',''),(59,'Wim Vanderbauwhede',''),(60,'Florian Weber',''),(61,'Jeremy Singer',''),(62,'Ian Stark',''),(63,'Jaroslaw Hirniak',''),(64,'Hans-Wolfgang Loidl',''),(65,'Victor Dumitrescu','');
/*!40000 ALTER TABLE `personinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-06  6:02:11
