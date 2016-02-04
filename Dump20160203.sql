CREATE DATABASE  IF NOT EXISTS `trombi_simplon` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `trombi_simplon`;
-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: trombi_simplon
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `cli_id` int(11) NOT NULL AUTO_INCREMENT,
  `cli_nom` varchar(45) DEFAULT NULL,
  `cli_contact` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competences`
--

DROP TABLE IF EXISTS `competences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competences` (
  `comp_id` int(11) NOT NULL AUTO_INCREMENT,
  `comp_nom` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`comp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competences`
--

LOCK TABLES `competences` WRITE;
/*!40000 ALTER TABLE `competences` DISABLE KEYS */;
/*!40000 ALTER TABLE `competences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competences_simploniens`
--

DROP TABLE IF EXISTS `competences_simploniens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competences_simploniens` (
  `simp_id` int(11) NOT NULL DEFAULT '0',
  `comp_id` int(11) NOT NULL,
  PRIMARY KEY (`simp_id`,`comp_id`),
  KEY `fk_competences_simploniens_competences1_idx` (`comp_id`),
  KEY `fk_competences_simploniens_simploniens1_idx` (`simp_id`),
  CONSTRAINT `fk_competences_simploniens_simploniens1` FOREIGN KEY (`simp_id`) REFERENCES `simploniens` (`simp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_competences_simploniens_competences1` FOREIGN KEY (`comp_id`) REFERENCES `competences` (`comp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competences_simploniens`
--

LOCK TABLES `competences_simploniens` WRITE;
/*!40000 ALTER TABLE `competences_simploniens` DISABLE KEYS */;
/*!40000 ALTER TABLE `competences_simploniens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projets`
--

DROP TABLE IF EXISTS `projets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projets` (
  `proj_id` int(11) NOT NULL AUTO_INCREMENT,
  `proj_nom` varchar(45) NOT NULL,
  `proj_langage` varchar(45) DEFAULT NULL,
  `clients_cli_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`proj_id`),
  KEY `fk_projets_clients1_idx` (`clients_cli_id`),
  CONSTRAINT `fk_projets_clients1` FOREIGN KEY (`clients_cli_id`) REFERENCES `clients` (`cli_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projets`
--

LOCK TABLES `projets` WRITE;
/*!40000 ALTER TABLE `projets` DISABLE KEYS */;
/*!40000 ALTER TABLE `projets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simploniens`
--

DROP TABLE IF EXISTS `simploniens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simploniens` (
  `simp_id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(80) NOT NULL,
  `prenom` varchar(80) NOT NULL,
  `photo` text,
  `lien_cv` text,
  `num_tel` varchar(20) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `adresse_mail` varchar(255) DEFAULT NULL,
  `proj_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`simp_id`),
  KEY `fk_simploniens_projets_idx` (`proj_id`),
  CONSTRAINT `fk_simploniens_projets` FOREIGN KEY (`proj_id`) REFERENCES `projets` (`proj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simploniens`
--

LOCK TABLES `simploniens` WRITE;
/*!40000 ALTER TABLE `simploniens` DISABLE KEYS */;
INSERT INTO `simploniens` VALUES (7,'HADJ','Kaled',NULL,NULL,NULL,NULL,NULL,NULL),(8,'NGOMA','Thomas',NULL,NULL,NULL,NULL,NULL,NULL),(9,'VIVANCOS','Renaud',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `simploniens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-03 15:07:41
