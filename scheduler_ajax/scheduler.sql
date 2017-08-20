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
-- Table structure for table consts
--

DROP TABLE IF EXISTS consts;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE consts (
  item varchar(255) DEFAULT NULL,
  value int DEFAULT NULL
)
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table consts
--


/*!40000 ALTER TABLE consts DISABLE KEYS */;
INSERT INTO consts VALUES ('max_event_id',1),('max_person_id',65),('max_join_id',97);
/*!40000 ALTER TABLE consts ENABLE KEYS */;


--
-- Table structure for table eventinfo
--

DROP TABLE IF EXISTS eventinfo;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE eventinfo (
  event_id int DEFAULT NULL,
  title varchar(255) DEFAULT NULL,
  sponsor_id int DEFAULT NULL,
  description varchar(255) DEFAULT NULL
)
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table eventinfo
--


/*!40000 ALTER TABLE eventinfo DISABLE KEYS */;
INSERT INTO eventinfo VALUES (1,'Scottish Programming Languages Seminar',1,'The Scottish Programming Languages Seminar, Wednesday 21st October 2015, at the University of Edinburgh.');
/*!40000 ALTER TABLE eventinfo ENABLE KEYS */;


--
-- Table structure for table eventtime
--

DROP TABLE IF EXISTS eventtime;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE eventtime (
  event_id int DEFAULT NULL,
  available_time varchar(255) DEFAULT NULL
)
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table eventtime
--


/*!40000 ALTER TABLE eventtime DISABLE KEYS */;
INSERT INTO eventtime VALUES (1,'201510211200');
/*!40000 ALTER TABLE eventtime ENABLE KEYS */;


--
-- Table structure for table joininfo
--

DROP TABLE IF EXISTS joininfo;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE joininfo (
  join_id int DEFAULT NULL,
  event_id int DEFAULT NULL,
  person_id int DEFAULT NULL
)
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table joininfo
--

--
-- Table structure for table jointime
--

DROP TABLE IF EXISTS jointime;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE jointime (
  join_id int DEFAULT NULL,
  available_time varchar(255) DEFAULT NULL
)
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table jointime
--

--
-- Table structure for table personinfo
--

DROP TABLE IF EXISTS personinfo;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE personinfo (
  person_id int DEFAULT NULL,
  person_name varchar(255) DEFAULT NULL,
  password varchar(255) DEFAULT NULL
);

INSERT INTO personinfo (person_id, person_name, password) VALUES (1, 'dummy user', 'dummy password');

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-06  6:02:11
