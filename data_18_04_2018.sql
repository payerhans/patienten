CREATE DATABASE  IF NOT EXISTS `dj_patienten` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dj_patienten`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dj_patienten
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add datengruppen',7,'add_datengruppen'),(20,'Can change datengruppen',7,'change_datengruppen'),(21,'Can delete datengruppen',7,'delete_datengruppen'),(22,'Can add daten',8,'add_daten'),(23,'Can change daten',8,'change_daten'),(24,'Can delete daten',8,'delete_daten'),(25,'Can add datenverwendung',9,'add_datenverwendung'),(26,'Can change datenverwendung',9,'change_datenverwendung'),(27,'Can delete datenverwendung',9,'delete_datenverwendung'),(28,'Can add datenuebermittlung',10,'add_datenuebermittlung'),(29,'Can change datenuebermittlung',10,'change_datenuebermittlung'),(30,'Can delete datenuebermittlung',10,'delete_datenuebermittlung'),(31,'Can add empfaenger',11,'add_empfaenger'),(32,'Can change empfaenger',11,'change_empfaenger'),(33,'Can delete empfaenger',11,'delete_empfaenger');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$dONqWMqRRjmr$oIa+3Krw1c6BF1OAxYrMGeCoRxKE0uMAvrK7W9Ypf08=','2018-04-16 09:44:48.273604',1,'hans','','','hans-christian.payer@krages.at',1,1,'2018-04-16 09:44:17.032400');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-04-16 11:11:13.597796','40','Stammdaten Minderjähriger',2,'[{\"changed\": {\"fields\": [\"datengruppe\"]}}]',7,1),(2,'2018-04-16 12:19:36.093360','1','huber',1,'[{\"added\": {}}]',11,1),(3,'2018-04-16 12:19:46.844837','1','huber',3,'',11,1),(4,'2018-04-17 06:01:52.595872','1','Patientenaufnahmezahl',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(5,'2018-04-17 06:02:17.131355','2','Name (Familienname, Vorname)',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(6,'2018-04-17 06:03:25.130416','3','Frühere Namen',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(7,'2018-04-17 06:11:14.788419','4','Titel',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(8,'2018-04-17 06:11:47.189213','5','Geburtsjahr/Alter',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(9,'2018-04-17 06:12:08.937974','6','Geburtsdatum',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(10,'2018-04-17 06:12:26.158935','7','Geburtsort/Geburtsland',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(11,'2018-04-17 06:12:43.720262','8','Geschlecht',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(12,'2018-04-17 06:13:02.775278','9','Familienstand',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(13,'2018-04-17 06:18:30.509179','10','Anschrift',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(14,'2018-04-17 06:18:48.740566','11','Bundesland',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(15,'2018-04-17 06:19:05.467399','12','Staatsbürgerschaft',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(16,'2018-04-17 06:19:53.005697','13','Beruf',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(17,'2018-04-17 06:20:08.491762','14','Religion',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(18,'2018-04-17 06:23:08.121844','15','Name, Adresse und Erreichbarkeit des Arbeitgebers',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(19,'2018-04-17 06:23:26.700852','16','Daten zu Sozialversicherungsträger',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(20,'2018-04-17 06:24:12.805661','17','Sozialversicherungsnummer',2,'[{\"changed\": {\"fields\": [\"daten\", \"daten_anmerkung\"]}}]',8,1),(21,'2018-04-17 06:24:33.693217','98','Gebührenklasse',1,'[{\"added\": {}}]',8,1),(22,'2018-04-17 06:24:54.420170','18','Daten von Hauptversicherten',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(23,'2018-04-17 06:25:22.371627','19','Verrechnungsrelevante Diagnosen',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(24,'2018-04-17 06:26:18.199380','20','Verrechnungsrelevante medizinische Einzelleistungen (z.B. Therapien)',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(25,'2018-04-17 06:26:29.062559','21','Sonstige Versicherungs- und Abrechnungsdaten (z.B. Krankenschein, Arzthonorare, Befundhonorare)',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(26,'2018-04-17 06:27:41.210940','22','Unabweisbarkeitsparere',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(27,'2018-04-17 06:27:54.398071','23','Auskunftssperre',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(28,'2018-04-17 06:28:34.585024','24','Dauerpatient J/N',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(29,'2018-04-17 06:28:55.478969','25','Aufnahme-, Besuchs- (Kontroll-)Transferierungs- und Entlassungs-(Abschluss-)daten',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(30,'2018-04-17 06:29:12.064005','26','Daten der Verlegung (Aufnahme-,Transferierungs- und Entlassungsabteilung)',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(31,'2018-04-17 06:29:36.065755','26','Daten der Verlegung (Aufnahme-,Transferierungs- und Entlassungsabteilung)',2,'[]',8,1),(32,'2018-04-17 06:29:48.682441','27','Aufnahme-, Entlassungsart bzw.-zustand',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(33,'2018-04-17 06:30:05.816979','28','Daten der Zuweisung (z.B.Zuweisungsdiagnose)',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(34,'2018-04-17 06:30:59.333210','29','Einweisende Stelle (Name, Adresse von Arzt bzw. Krankenanstalt',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(35,'2018-04-17 06:31:18.252062','30','Entlassungsbefund',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(36,'2018-04-17 06:31:40.217672','31','Daten von Angehörigen oder Verständigungspersonen',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(37,'2018-04-17 06:32:07.255320','32','Daten der Begleitperson',2,'[{\"changed\": {\"fields\": [\"daten\", \"daten_anmerkung\"]}}]',8,1),(38,'2018-04-17 06:32:31.551699','33','Nachuntersuchungsdatum',2,'[{\"changed\": {\"fields\": [\"daten\", \"daten_anmerkung\"]}}]',8,1),(39,'2018-04-17 06:32:49.541979','34','Nachsorgeschema',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(40,'2018-04-17 06:35:50.931222','35','Archivierte Krankengeschichten aller Fachbereiche',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(41,'2018-04-17 06:36:11.975485','36','Archivierungsnummer',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(42,'2018-04-17 06:36:31.682401','37','Anzeigensperre für Krankengeschichte',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(43,'2018-04-17 06:36:42.308290','38','Status u. Änderungsdaten',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(44,'2018-04-17 06:36:53.991875','39','Herkunftsstelle der Bestandteile der Krankengeschichte',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(45,'2018-04-17 06:37:23.933360','40','Patientenidentifikation',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(46,'2018-04-17 06:38:28.539213','99','Diagnosen',1,'[{\"added\": {}}]',8,1),(47,'2018-04-17 06:38:59.397597','41','Datum der Diagnose',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(48,'2018-04-17 06:39:23.142373','42','Anamnestische Daten',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(49,'2018-04-17 06:40:27.978899','42','Anamnestische Daten',2,'[]',8,1),(50,'2018-04-17 06:40:42.967188','43','Aufnahmestatus (Status Präsens)',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(51,'2018-04-17 06:40:56.864962','44','externe Konsiliarbefunddaten',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(52,'2018-04-17 06:41:18.078714','45','Therapieplan (inkl. OP-Planung etc.)',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(53,'2018-04-17 06:41:29.702647','46','Durchgeführte Therapien',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(54,'2018-04-17 06:41:49.248009','47','Empfohlene Untersuchungen,Therapieempfehlung',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(55,'2018-04-17 06:42:03.030723','48','Medikation, ev. einschließlich Dokumentation von Chargennummern und Hersteller',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(56,'2018-04-17 06:42:13.150946','49','Komplikationen',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(57,'2018-04-17 06:42:53.384459','49','Komplikationen',2,'[]',8,1),(58,'2018-04-17 06:43:03.427279','50','Therapieverlauf /Heilerfolg',2,'[{\"changed\": {\"fields\": [\"daten\", \"daten_anmerkung\"]}}]',8,1),(59,'2018-04-17 06:43:15.196943','51','Krankheitsverlauf (decursus morbi)',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(60,'2018-04-17 06:43:26.099628','52','Risikofaktoren, (Allergie, Diabetes, Blutgruppe, Bluter usw.)',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(61,'2018-04-17 06:43:44.675497','53','Spezialdokumentation des Fachbereichs Unfallchirurgie',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(62,'2018-04-17 06:44:00.209467','54','Spezialdokumentation des chirurgischen (Thorax-, Gefäß-, Plastische, Chirurgie, Transplantationschirurgie) Fachbereichs',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(63,'2018-04-17 06:44:17.839241','55','Spezialdokumentation des internistischen (Gastroenterologie, Nephrologie (Nierenkrankheiten), Onkologie, Kardiologie, Infektion) Fachbereichs',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(64,'2018-04-17 06:44:26.805796','56','Gynäkologische und geburtshilfliche Spezialdokumentation inkl. pränatale Spezialdokumentation',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(65,'2018-04-17 06:44:41.824324','57','Spezialdokumentation des neurologisch-psychiatrischen Fachbereichs',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(66,'2018-04-17 06:44:56.559469','58','Spezialdokumentation des pädiatrischen Fachbereichs (Kinderheilkunde)',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(67,'2018-04-17 06:45:18.120825','59','Spezialdokumentation des Fachbereichs Radiodiagnostik',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(68,'2018-04-17 06:45:29.406151','60','Spezialdokumentation Interdisziplinäre Erstversorgungszentren',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(69,'2018-04-17 06:45:46.224771','61','Spezialdokumentation des Fachbereichs Anästhesie u. Intensivmedizin',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(70,'2018-04-17 06:45:57.509958','62','Spezialdokumentation des Fachbereichs Kinderchirurgie',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(71,'2018-04-17 06:46:10.686534','63','Spezialdokumentation des Fachbereichs Orthopädie',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(72,'2018-04-17 06:46:19.302460','64','Spezialdokumentation des Fachbereichs Urologie',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(73,'2018-04-17 06:46:28.486162','65','Spezialdokumentation des Fachbereichs Augenheilkunde',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(74,'2018-04-17 06:46:40.340015','66','Spezialdokumentation des Fachbereichs HNO',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(75,'2018-04-17 06:47:07.095511','67','Spezialdokumentation des Fachbereichs Nuklearmedizin',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(76,'2018-04-17 06:47:21.150726','68','Spezialdokumentation des Fachbereichs Physikalische Medizin',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(77,'2018-04-17 06:47:44.335158','69','Spezialdokumentation des gehobenen medizintechnischen Dienstes (z.B. Diäten, Logopädie, orthoptischer Dienst)',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(78,'2018-04-17 06:48:42.066970','70','Allgemeine Angaben zu Prothesen und Implantate, einschließlich Kostenvoranschlag, Hersteller und Lieferant',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(79,'2018-04-17 06:48:49.799681','71','Spezialdokumentation des Neuropathologisch und Neurochemischen Fachbereichs',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(80,'2018-04-17 06:48:59.364141','72','Spezialdokumentation des Fachbereiches Akutgeriatrie',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(81,'2018-04-17 06:49:21.278559','74','Zuweisender Arzt',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(82,'2018-04-17 06:49:39.939040','73','Ethnische Herkunft',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(83,'2018-04-17 06:49:56.893935','75','Behandelnder Arzt (in der KA)',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(84,'2018-04-17 06:50:09.126497','76','Daten zur Freiheitsbeschränkung nach HeimAufG',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(85,'2018-04-17 06:50:45.191273','77','Bilddaten bei Videoaufzeichnungen für med. Diagnostik (analog/digital)',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(86,'2018-04-17 06:52:43.342617','78','Daten des Pflegedienstes (Pflegeberichte)',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(87,'2018-04-17 06:52:58.353273','79','Pflegepersonal',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(88,'2018-04-17 06:53:19.553644','80','Anfordernde Stelle',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(89,'2018-04-17 06:53:40.421160','81','Leistende Stelle',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(90,'2018-04-17 06:53:51.588456','82','Beschreibung des Untersuchungsmaterial (z.B. Blut, Speichel, Gewebsproben, etc) Proben- bzw. Protokollnummer',2,'[{\"changed\": {\"fields\": [\"daten\", \"daten_anmerkung\"]}}]',8,1),(91,'2018-04-17 06:55:21.308272','100','Proben- bzw: Protokollnummer',1,'[{\"added\": {}}]',8,1),(92,'2018-04-17 06:56:51.952586','83','Untersuchungsanforderung an leistende Stellen',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(93,'2018-04-17 06:57:17.605622','84','Datum/Zeit der Entnahme',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(94,'2018-04-17 06:57:37.357954','85','Befund- und Untersuchungsdatum',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(95,'2018-04-17 06:57:44.926986','85','Befund- und Untersuchungsdatum',2,'[]',8,1),(96,'2018-04-17 06:58:00.093107','86','Freigabestatus des Befundes (Validierungshinweise, Vidierung)',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(97,'2018-04-17 06:58:24.468129','87','Ergebnisse von Untersuchungen (Befunde)',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(98,'2018-04-17 06:59:09.909248','88','Digitale Bilddaten (Datum der Untersuchung, Untersuchungsparameter, Pixel)',2,'[{\"changed\": {\"fields\": [\"daten\", \"daten_anmerkung\"]}}]',8,1),(99,'2018-04-17 06:59:24.713916','90','Tumorbeschreibung, histologische Daten',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(100,'2018-04-17 06:59:44.649218','91','Daten zur Strahlenbelastung',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(101,'2018-04-17 06:59:51.563504','92','Impfdaten',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(102,'2018-04-17 07:00:52.745737','93','Obduktions- und Todesdaten',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(103,'2018-04-17 07:01:00.535312','94','pathologische Diagnose',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(104,'2018-04-17 07:01:15.254017','95','Befundender Arzt',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(105,'2018-04-17 07:01:56.637472','89','Untersuchung, Untersuchungsparameter, Pixel)',3,'',8,1),(106,'2018-04-17 07:02:14.611235','96','Aufnahme und Entlassungstag in einer Krankenanstalt mit Aufnahme -und Entlassungsdiagnose',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(107,'2018-04-17 07:02:22.765166','97','Bekanntgabe der Umstände, die den Transport der betreuten Person notwendig machten unter Angabe von allfälligem Fremdverschulden und Einsatzgrund',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(108,'2018-04-17 09:40:23.387512','1','Patientenaufnahmezahl',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(109,'2018-04-17 09:40:51.982670','2','Name (Familienname, Vorname)',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(110,'2018-04-17 09:41:03.981629','3','Frühere Namen',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(111,'2018-04-17 09:41:37.084473','5','Geburtsjahr/Alter',2,'[{\"changed\": {\"fields\": [\"daten_anmerkung\"]}}]',8,1),(112,'2018-04-17 09:49:31.438083','1','Patientenstammdaten',2,'[{\"changed\": {\"name\": \"daten\", \"object\": \"Patientenaufnahmezahl\", \"fields\": [\"daten_anmerkung\"]}}, {\"changed\": {\"name\": \"daten\", \"object\": \"Name (Familienname, Vorname)\", \"fields\": [\"daten_anmerkung\"]}}, {\"changed\": {\"name\": \"daten\", \"object\": \"Fr\\u00fchere Namen\", \"fields\": [\"daten_anmerkung\"]}}, {\"changed\": {\"name\": \"daten\", \"object\": \"Titel\", \"fields\": [\"daten_anmerkung\"]}}, {\"changed\": {\"name\": \"daten\", \"object\": \"Geburtsdatum\", \"fields\": [\"daten_anmerkung\"]}}, {\"changed\": {\"name\": \"daten\", \"object\": \"Geburtsort/Geburtsland\", \"fields\": [\"daten_anmerkung\"]}}, {\"changed\": {\"name\": \"daten\", \"object\": \"Geschlecht\", \"fields\": [\"daten_anmerkung\"]}}, {\"changed\": {\"name\": \"daten\", \"object\": \"Familienstand\", \"fields\": [\"daten_anmerkung\"]}}, {\"changed\": {\"name\": \"daten\", \"object\": \"Anschrift\", \"fields\": [\"daten_anmerkung\"]}}, {\"changed\": {\"name\": \"daten\", \"object\": \"Staatsb\\u00fcrgerschaft\", \"fields\": [\"daten_anmerkung\"]}}, {\"changed\": {\"name\": \"daten\", \"object\": \"Beruf\", \"fields\": [\"daten_anmerkung\"]}}, {\"changed\": {\"name\": \"daten\", \"object\": \"Religion\", \"fields\": [\"daten_anmerkung\"]}}]',7,1),(113,'2018-04-17 09:49:55.968973','1','Patientenaufnahmezahl',2,'[]',8,1),(114,'2018-04-17 09:57:15.131472','11','Verletzungen die durch Fremdverschulden außerhalb des KRAGES',2,'[{\"added\": {\"name\": \"daten\", \"object\": \"Patientenstammdaten\"}}, {\"added\": {\"name\": \"daten\", \"object\": \"Versicherungsstammdaten\"}}, {\"added\": {\"name\": \"daten\", \"object\": \"Name und Anschrift Erziehungsberechtigter bei Kindern\"}}]',7,1),(115,'2018-04-17 10:02:06.580866','11','Verletzungen die durch Fremdverschulden außerhalb des KRAGES',2,'[{\"added\": {\"name\": \"daten\", \"object\": \"Einlieferung durch\"}}, {\"added\": {\"name\": \"daten\", \"object\": \"Fremdverschulden\"}}, {\"added\": {\"name\": \"daten\", \"object\": \"Unfallversicherungstr\\u00e4ger\"}}, {\"added\": {\"name\": \"daten\", \"object\": \"Arbeitsunfall/Freizeitunfall\"}}, {\"added\": {\"name\": \"daten\", \"object\": \"Unfallzeitpunkt\"}}, {\"added\": {\"name\": \"daten\", \"object\": \"Unfallort\"}}, {\"added\": {\"name\": \"daten\", \"object\": \"Unfallhergang\"}}, {\"added\": {\"name\": \"daten\", \"object\": \"Anamnesische Angabe\"}}, {\"added\": {\"name\": \"daten\", \"object\": \"Vereletzungsdiagnose\"}}, {\"added\": {\"name\": \"daten\", \"object\": \"Verletzungsgrad\"}}, {\"added\": {\"name\": \"daten\", \"object\": \"Einvernahme m\\u00f6glich J/N\"}}, {\"added\": {\"name\": \"daten\", \"object\": \"Station\\u00e4re/Ambulante Abteilung\"}}, {\"added\": {\"name\": \"daten\", \"object\": \"Behandlungsende\"}}, {\"added\": {\"name\": \"daten\", \"object\": \"Hausarzt/\\u00fcberweisender Arzt\"}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(8,'vvt','daten'),(7,'vvt','datengruppen'),(10,'vvt','datenuebermittlung'),(9,'vvt','datenverwendung'),(11,'vvt','empfaenger');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-04-16 09:43:52.578425'),(2,'auth','0001_initial','2018-04-16 09:43:53.622333'),(3,'admin','0001_initial','2018-04-16 09:43:53.878669'),(4,'admin','0002_logentry_remove_auto_add','2018-04-16 09:43:53.892255'),(5,'contenttypes','0002_remove_content_type_name','2018-04-16 09:43:54.045007'),(6,'auth','0002_alter_permission_name_max_length','2018-04-16 09:43:54.121264'),(7,'auth','0003_alter_user_email_max_length','2018-04-16 09:43:54.212161'),(8,'auth','0004_alter_user_username_opts','2018-04-16 09:43:54.212161'),(9,'auth','0005_alter_user_last_login_null','2018-04-16 09:43:54.298073'),(10,'auth','0006_require_contenttypes_0002','2018-04-16 09:43:54.302078'),(11,'auth','0007_alter_validators_add_error_messages','2018-04-16 09:43:54.312159'),(12,'auth','0008_alter_user_username_max_length','2018-04-16 09:43:54.495577'),(13,'auth','0009_alter_user_last_name_max_length','2018-04-16 09:43:54.574292'),(14,'sessions','0001_initial','2018-04-16 09:43:54.661773'),(15,'vvt','0001_initial','2018-04-16 10:27:43.761951'),(16,'vvt','0002_datengruppen_datengruppe_anmerkung','2018-04-16 10:29:50.597023'),(17,'vvt','0003_daten_datenverwendung','2018-04-16 10:58:45.727824'),(18,'vvt','0004_datenuebermittlung','2018-04-16 11:27:29.817942'),(19,'vvt','0005_datenuebermittlung_datenuebermittlung_zweck','2018-04-16 11:30:39.036136'),(20,'vvt','0006_auto_20180416_1350','2018-04-16 11:50:45.006614'),(21,'vvt','0007_empfaenger','2018-04-16 12:18:01.934686');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3yxjlq5wtd4ylts51hvrcagkk1rpqgi2','NDA4ZGU0YTE1NmRkNTQ4YjRhOTRjZDA2N2ViYzFkYjkyNWNlNWFmMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0M2IwZWNiMTIwYTk0NDk4MzkwYzI5NzM0MDhhYzM2ZmMzNmE1OWEwIn0=','2018-04-30 09:44:48.280629');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vvt_daten`
--

DROP TABLE IF EXISTS `vvt_daten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vvt_daten` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `daten` varchar(200) NOT NULL,
  `daten_anmerkung` longtext NOT NULL,
  `datengruppe_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vvt_daten_datengruppe_id_609d8742_fk_vvt_datengruppen_id` (`datengruppe_id`),
  CONSTRAINT `vvt_daten_datengruppe_id_609d8742_fk_vvt_datengruppen_id` FOREIGN KEY (`datengruppe_id`) REFERENCES `vvt_datengruppen` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vvt_daten`
--

LOCK TABLES `vvt_daten` WRITE;
/*!40000 ALTER TABLE `vvt_daten` DISABLE KEYS */;
INSERT INTO `vvt_daten` VALUES (1,'Patientenaufnahmezahl','01, 02, 04, 05, 10, 11, 12, 13, 06,\r\n14, 17, 18, 28, 29',1),(2,'Name (Familienname, Vorname)','01, 03, 04, 05, 10, 11, 12, 13, 06,\r\n14, 17, 18, 19, 26, 28, 29',1),(3,'Frühere Namen','14, 18, 28, 06',1),(4,'Titel','01, 03, 04, 05, 06, 10, 11, 12, 13,\r\n14, 17, 18, 19, 26, 28, 29',1),(5,'Geburtsjahr/Alter','10, 13, 14, 18, 19, 26, 28, 06',1),(6,'Geburtsdatum','01, 02, 03, 04, 05, 06, 10, 11, 12,\r\n13, 14, 17, 18, 19, 20, 21, 22,\r\n26, 28, 29',1),(7,'Geburtsort/Geburtsland','04, 06, 12, 14, 18',1),(8,'Geschlecht','01, 02, 03, 04, 05, 06, 10, 11, 12,\r\n13, 14, 17, 18, 19, 20, 21, 22,\r\n26, 29, 29',1),(9,'Familienstand','01, 04, 06, 12, 14, 18, 19, 26, 28',1),(10,'Anschrift','01, 02, 03, 04, 05,  06, 10, 11, 12,\r\n13, 14, 18, 19, 26, 28, 29',1),(11,'Bundesland','22, 28',1),(12,'Staatsbürgerschaft','02, 04, 05,  06, 10, 11, 12, 13, 14,\r\n18',1),(13,'Beruf','06, 10, 13, 14, 18, 28',1),(14,'Religion','06, 10, 13, 14, 18',1),(15,'Name, Adresse und Erreichbarkeit des Arbeitgebers','04, 05, 14, 18, 19, 20',2),(16,'Daten zu Sozialversicherungsträger','01, 02, 03, 04, 05, 12, 14, 18,\r\n19, 20, 29',2),(17,'Sozialversicherungsnummer','01, 02, 03, 04, 05,11, 14,18,\r\n19, 20, 29',2),(18,'Daten von Hauptversicherten','01, 02, 03, 04, 05,11, 14,18,\r\n19, 20, 29',2),(19,'Verrechnungsrelevante Diagnosen','01, 02, 04, 05, 14,18, 29',2),(20,'Verrechnungsrelevante medizinische Einzelleistungen (z.B. Therapien)','01, 02, 04, 05, 14,18, 29',2),(21,'Sonstige Versicherungs- und Abrechnungsdaten (z.B. Krankenschein, Arzthonorare, Befundhonorare)','01, 02, 04, 05, 14,18, 29',2),(22,'Unabweisbarkeitsparere','14, 18',3),(23,'Auskunftssperre','14, 18',3),(24,'Dauerpatient J/N','14, 18',3),(25,'Aufnahme-, Besuchs- (Kontroll-)Transferierungs- und Entlassungs-(Abschluss-)daten','01, 02, 04, 05, 10, 11, 12, 13,\r\n14, 17, 18, 29',3),(26,'Daten der Verlegung (Aufnahme-,Transferierungs- und Entlassungsabteilung)','01, 02, 04, 05, 10, 11, 12, 13,\r\n14, 17, 18, 29',3),(27,'Aufnahme-, Entlassungsart bzw.-zustand','01, 02, 04, 05, 10, 11, 12, 13,\r\n14, 17, 18, 29',3),(28,'Daten der Zuweisung (z.B.Zuweisungsdiagnose)','01, 02, 04, 05, 10, 11, 12, 13,\r\n14, 17, 18, 29',3),(29,'Einweisende Stelle (Name, Adresse von Arzt bzw. Krankenanstalt','01, 02, 04, 05, 10, 11, 12, 13,\r\n14, 17, 18, 29',3),(30,'Entlassungsbefund','01, 02, 04, 10, 11, 12, 13, 14,\r\n18, 29',3),(31,'Daten von Angehörigen oder Verständigungspersonen','14, 18, 26',3),(32,'Daten der Begleitperson','13, 14, 18',3),(33,'Nachuntersuchungsdatum','14, 18',3),(34,'Nachsorgeschema','14, 18',3),(35,'Archivierte Krankengeschichten aller Fachbereiche','01, 02, 10, 11, 12, 14, 18, 29',4),(36,'Archivierungsnummer','14, 18',4),(37,'Anzeigensperre für Krankengeschichte','14, 18',4),(38,'Status u. Änderungsdaten','14, 18',4),(39,'Herkunftsstelle der Bestandteile der Krankengeschichte','14, 18',5),(40,'Patientenidentifikation','01, 02, 10, 13, 14, 18, 28',5),(41,'Datum der Diagnose','22, 28',5),(42,'Anamnestische Daten','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(43,'Aufnahmestatus (Status Präsens)','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(44,'externe Konsiliarbefunddaten','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(45,'Therapieplan (inkl. OP-Planung etc.)','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(46,'Durchgeführte Therapien','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(47,'Empfohlene Untersuchungen,Therapieempfehlung','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(48,'Medikation, ev. einschließlich Dokumentation von Chargennummern und Hersteller','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(49,'Komplikationen','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(50,'Therapieverlauf /Heilerfolg','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(51,'Krankheitsverlauf (decursus morbi)','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(52,'Risikofaktoren, (Allergie, Diabetes, Blutgruppe, Bluter usw.)','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(53,'Spezialdokumentation des Fachbereichs Unfallchirurgie','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(54,'Spezialdokumentation des chirurgischen (Thorax-, Gefäß-, Plastische, Chirurgie, Transplantationschirurgie) Fachbereichs','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(55,'Spezialdokumentation des internistischen (Gastroenterologie, Nephrologie (Nierenkrankheiten), Onkologie, Kardiologie, Infektion) Fachbereichs','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(56,'Gynäkologische und geburtshilfliche Spezialdokumentation inkl. pränatale Spezialdokumentation','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(57,'Spezialdokumentation des neurologisch-psychiatrischen Fachbereichs','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(58,'Spezialdokumentation des pädiatrischen Fachbereichs (Kinderheilkunde)','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(59,'Spezialdokumentation des Fachbereichs Radiodiagnostik','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(60,'Spezialdokumentation Interdisziplinäre Erstversorgungszentren','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(61,'Spezialdokumentation des Fachbereichs Anästhesie u. Intensivmedizin','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(62,'Spezialdokumentation des Fachbereichs Kinderchirurgie','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(63,'Spezialdokumentation des Fachbereichs Orthopädie','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(64,'Spezialdokumentation des Fachbereichs Urologie','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(65,'Spezialdokumentation des Fachbereichs Augenheilkunde','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(66,'Spezialdokumentation des Fachbereichs HNO','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(67,'Spezialdokumentation des Fachbereichs Nuklearmedizin','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(68,'Spezialdokumentation des Fachbereichs Physikalische Medizin','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(69,'Spezialdokumentation des gehobenen medizintechnischen Dienstes (z.B. Diäten, Logopädie, orthoptischer Dienst)','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(70,'Allgemeine Angaben zu Prothesen und Implantate, einschließlich Kostenvoranschlag, Hersteller und Lieferant','14, 18, 28',5),(71,'Spezialdokumentation des Neuropathologisch und Neurochemischen Fachbereichs','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(72,'Spezialdokumentation des Fachbereiches Akutgeriatrie','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(73,'Ethnische Herkunft','01, 10, 13, 18, 28',5),(74,'Zuweisender Arzt','01, 02, 10, 11, 12, 13, 14, 18,\r\n22, 28, 29',5),(75,'Behandelnder Arzt (in der KA)','01, 02, 10, 11, 12, 13, 14, 17,\r\n18, 29',5),(76,'Daten zur Freiheitsbeschränkung nach HeimAufG','17',5),(77,'Bilddaten bei Videoaufzeichnungen für med. Diagnostik (analog/digital)','01, 02, 10, 11, 14, 17, 28',5),(78,'Daten des Pflegedienstes (Pflegeberichte)','01, 02, 10, 11, 12, 13, 14, 19,\r\n18, 28, 29',6),(79,'Pflegepersonal','01, 02, 10, 11, 12, 13, 14, 18',6),(80,'Anfordernde Stelle','14, 18',7),(81,'Leistende Stelle','01, 02, 11, 14, 18',7),(82,'Beschreibung des Untersuchungsmaterial (z.B. Blut, Speichel, Gewebsproben, etc) Proben- bzw. Protokollnummer','01, 02, 11, 12, 14, 18, 28',7),(83,'Untersuchungsanforderung an leistende Stellen','01, 02, 11, 12, 14, 18, 28',7),(84,'Datum/Zeit der Entnahme','01, 02, 10, 11, 12, 13, 14, 18,\r\n28',7),(85,'Befund- und Untersuchungsdatum','01, 02, 10, 11, 12, 13, 14, 18,\r\n28, 29',7),(86,'Freigabestatus des Befundes (Validierungshinweise, Vidierung)','01, 02, 11, 12, 14, 18, 28',7),(87,'Ergebnisse von Untersuchungen (Befunde)','01, 02, 10, 11, 12, 13, 14, 18,\r\n28, 29',7),(88,'Digitale Bilddaten (Datum der Untersuchung, Untersuchungsparameter, Pixel)','01, 02, 10, 11, 12, 13, 14, 18,\r\n28',7),(90,'Tumorbeschreibung, histologische Daten','08, 10, 11, 14, 18, 28',7),(91,'Daten zur Strahlenbelastung','13, 14, 18, 28',7),(92,'Impfdaten','01, 02, 12, 13, 14, 18, 22, 28',7),(93,'Obduktions- und Todesdaten','01, 02, 04, 06, 07, 08, 12, 14,\r\n18, 28',7),(94,'pathologische Diagnose','01, 02, 04, 06, 07, 08, 12, 14,\r\n18, 28',7),(95,'Befundender Arzt','01, 02, 10, 11, 12, 13, 14, 18,\r\n28',7),(96,'Aufnahme und Entlassungstag in einer Krankenanstalt mit Aufnahme -und Entlassungsdiagnose','19',8),(97,'Bekanntgabe der Umstände, die den Transport der betreuten Person notwendig machten unter Angabe von allfälligem Fremdverschulden und Einsatzgrund','19',8),(98,'Gebührenklasse','04, 05, 14, 18, 29',2),(99,'Diagnosen','01, 02, 04, 05, 10, 11, 12, 13,\r\n14, 17, 18, 21, 22, 28, 29',5),(100,'Proben- bzw: Protokollnummer','01, 02, 11, 12, 14, 18, 28',7),(101,'Patientenstammdaten','06, 14',11),(102,'Versicherungsstammdaten','06, 14',11),(103,'Name und Anschrift Erziehungsberechtigter bei Kindern','06, 14',11),(104,'Einlieferung durch','06, 14',11),(105,'Fremdverschulden','06, 14',11),(106,'Unfallversicherungsträger','06, 14',11),(107,'Arbeitsunfall/Freizeitunfall','06, 14',11),(108,'Unfallzeitpunkt','06, 14',11),(109,'Unfallort','06, 14',11),(110,'Unfallhergang','06, 14',11),(111,'Anamnesische Angabe','06, 14',11),(112,'Vereletzungsdiagnose','06, 14',11),(113,'Verletzungsgrad','06, 14',11),(114,'Einvernahme möglich J/N','06, 14',11),(115,'Stationäre/Ambulante Abteilung','06, 14',11),(116,'Behandlungsende','06, 14',11),(117,'Hausarzt/überweisender Arzt','06, 14',11);
/*!40000 ALTER TABLE `vvt_daten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vvt_datengruppen`
--

DROP TABLE IF EXISTS `vvt_datengruppen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vvt_datengruppen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datengruppe` varchar(200) NOT NULL,
  `datengruppe_anmerkung` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vvt_datengruppen`
--

LOCK TABLES `vvt_datengruppen` WRITE;
/*!40000 ALTER TABLE `vvt_datengruppen` DISABLE KEYS */;
INSERT INTO `vvt_datengruppen` VALUES (1,'Patientenstammdaten','-'),(2,'Daten zur Versicherung und Abrechnung','-'),(3,'Daten zur Aufnahme/Transferierung/Entlassung','-'),(4,'Medizinische Dokumentation/Archivierte Krankengeschichte','-'),(5,'Medizinische Dokumentation','-'),(6,'Pflegedaten','-'),(7,'Untersuchungsdaten (medizinische Institute)','-'),(8,'Daten für die Organisationen der Rettungs -und Krankenbeförderungsdienste','-'),(9,'Datenartengruppe Sozialhilfeträger','-'),(10,'Angaben zu einer vermuteten Berufskrankheit','-'),(11,'Verletzungen die durch Fremdverschulden außerhalb des KRAGES','-'),(12,'Verletzungen die durch Fremdverschulden innerhalb der KRAGES','-'),(13,'Daten mit onkologischen Befunden','-'),(14,'Aufnahmenblatt','-'),(15,'OP-Daten','-'),(16,'Medizinische Daten/Krankenblatt Intensiv','-'),(17,'Medizinische Daten/OP- /Drainagen-Pflege','-'),(18,'Zytogenetik-Anforderung/Befund','-'),(19,'Vorgeburtliche Ersterhebung/Daten des Kindesvaters (Angabe durch Patientin)','-'),(20,'Vorgeburtliche Ersterhebung / Daten von Patientin (Angabe durch Patientin) Pränatalbogen','-'),(21,'Aufnahme in den Kreißsaal / Geburtsverlauf','-'),(22,'zusätzliche Hebammendokumentation zur Mutter','-'),(23,'Entlassungsdokumentation','-'),(24,'Daten der Geburtsanzeige','-'),(25,'Neugeborenenuntersuchung','-'),(26,'Datenarten gemäß Diagnosen- und Leistungsdokumentationsverordnung','-'),(27,'Hygenie Mikrobiologie','-'),(28,'Beschreibung OP Dokumentation','-'),(29,'Infektionsdokumentation','-'),(30,'Stammdaten Bedienstete','-'),(31,'Daten der Zugriffsprotokollierung','-'),(32,'Dokumentation gemäß AllgStrSchV (Dosimeter)','-'),(33,'Administrationsdaten','-'),(34,'Medizinische Dokumentation bzw. Daten zum Atemwegsereignis','-'),(35,'Angehörigenstammdaten','-'),(36,'Begleitpersonen zu Patienten','-'),(37,'Arbeitgeberdaten','-'),(38,'Patienten nach HeimAufG','-'),(39,'Daten In-vitro-Fertilisation','-'),(40,'Stammdaten Minderjähriger','-'),(41,'Gefährdungen Minderjähriger','-'),(42,'Begleitpersonen Minderjähriger','-'),(43,'Arztbericht Gefährdung Minderjähriger','-'),(44,'Melder Gefährung Minderjähriger','-'),(45,'Meldedaten Substitutionsbehandlung','-'),(46,'Meldedaten KSV','-'),(47,'Meldedaten anzeigepflichtigen Krankheiten','-');
/*!40000 ALTER TABLE `vvt_datengruppen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vvt_datenuebermittlung`
--

DROP TABLE IF EXISTS `vvt_datenuebermittlung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vvt_datenuebermittlung` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datenuebermittlung` varchar(200) NOT NULL,
  `datenuebermittlung_rechtsgrundlagen` longtext NOT NULL,
  `datenuebermittlung_anmerkung` longtext NOT NULL,
  `datenuebermittlung_zweck` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vvt_datenuebermittlung`
--

LOCK TABLES `vvt_datenuebermittlung` WRITE;
/*!40000 ALTER TABLE `vvt_datenuebermittlung` DISABLE KEYS */;
INSERT INTO `vvt_datenuebermittlung` VALUES (1,'Übermittlung von Entlassungsbriefen','§ 17 und § 52 Bgld. KAG 2000','-','Übermitlung von kostenlose Kopien von Krankengeschichten und ärztlichen oder zahnärztlichen Äußerungen über den Gesundheitszustand von Patienten  zur unerlässlich gebotenen Betreuungskontinuität'),(2,'Diagnosen - und Leistungsdokumentation','Bgld. Gesundheitswesengesetz; Statistikverordnung für landesfondsfinanzierte Krankenanstalten iVm Diagnosen- und Leistungsdokumentationsverordnung; § 17 Bgld. KAG 2000','-','Unentgeltliche Bereitstellung von Dokumentationsdaten (LKF-Daten für den stationären Bereich bzw. Leistungsdokumentation für den ambulanten Bereich) der Krankenanstalten zur Steuerung, Planung und Finanzierung des Gesundheitswesen.'),(3,'Feststellung des zuständigen Sozialversicherungsträgers','§ 61, § 62 und § 63 Bgld. KAG 2000','-',' Erhebung der für die Einbringung der LKF-Gebühren oder Pflegegebühren und allfälliger Sondergebühren notwendigen Informationen. '),(4,'Feststellen des Versicherungsanspruches und Kostenübernahme','§ 17, § 61, § 62 und § 63 Bgld. KAG 2000; § 148 lit 5a ASVG','-',' Erhebung der für die Einbringung der LKF-Gebühren oder Pflegegebühren und allfälliger Sondergebühren notwendigen Informationen. Vorschreibung und Einbringung der Pflege(Sonder)gebühren und Kostenbeiträge.'),(5,'Ambulanzverrechnung','§ 17, § 61, § 62 und § 63 Bgld. KAG 2000','-',' Erhebung der für die Einbringung der LKF-Gebühren oder Pflegegebühren und allfälliger Sondergebühren notwendigen Informationen. Vorschreibung und Einbringung der Pflege(Sonder)gebühren und Kostenbeiträge.'),(6,'Verletzungsanzeige','§ 7 GuKG; § 54 Abs. 4 und 5 Ärztegesetz 1998','-','Anzeige an die Sicherheitsbehörde bei Verdacht, dass ein Minderjähriger misshandelt, gequält, vernachlässigt oder sexuell missbraucht worden ist. Anzeige an die Sicherheitsbehörde bei Verdacht, dass durch eine gerichtlich strafbare Handlung der Tod oder eine schwere Körperverletzung herbeigeführt wurde oder eine volljährige Person, die ihre Interessen nicht selbst wahrzunehmen vermag, misshandelt, gequält, vernachlässigt oder sexuell missbraucht worden ist.'),(7,'Geburtsfälle, Todesfälle','§ 9 PStG; § 3 Bgld. Leichen- und Bestattungswesengesetz; § 8 Hebammengesetz','-','Die Anzeige der Geburt hat spätestens eine Woche nach der Geburt and die Standesämter'),(8,'Übermittlung Krebsregister','§ 3 und § 4 Krebsstatistikgesetz; § 2 und § 3 Krebsstatistikverordnung','-',' Einmeldung von vorgeschriebenen Angaben bei Erkrankungen und Sterbefällen an einer Geschwulstkrankheit an die Bundesanstalt Österreichische Statistik.'),(9,'Verrechnung mit ausländischen Versicherungsträgern','§ 56 bis § 63 Bgld. KAG 2000; aufgrund bi- und multilateraler Sozialversicherungsabkommen; Für den Empfängerkreis der Privatversicherungen wird eine Zustimmungserklärung vom Betroffenen eingeholt','-','Vorschreibung von LKF-Gebühren, Pflege(Sonder)gebühren und Kostenbeiträge der öffentlichen Krankenanstalten vom Rechtsträger der Krankenanstalt an den Zahlungspflichtigen vorzuschreiben.'),(10,'Koordination Organspenden','Zustimmungserklärung','-','In- und ausländische Transplantationszentren zum Zwecke der Koordination und Verwaltung von Organspenden (z.B. Leiden/Niederlande, ÖTDR-Wels)'),(11,'(Tele-)Konsultationen','§ 49 Ärztegesetz 1998','-','Spitäler, Ärzte und ambulanter Leistungsbereich (z.B. radiologische Institute, Labors) zum Zwecke der (Tele-)Konsultation, Übertragung von ärztlichen Tätigkeiten, sofern diese vom Tätigkeitsbereich des entsprechenden Gesundheitsberufes (Röntgen, Labor, etc.) umfasst sind.'),(12,'Übermittlungen zum Zwecke der Rechtsdurchsetzung und der Klärung von Beschwerden','-','-','-');
/*!40000 ALTER TABLE `vvt_datenuebermittlung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vvt_datenuebermittlung_daten`
--

DROP TABLE IF EXISTS `vvt_datenuebermittlung_daten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vvt_datenuebermittlung_daten` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datenuebermittlung_id` int(11) NOT NULL,
  `daten_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vvt_datenuebermittlung_d_datenuebermittlung_id_da_e09b0534_uniq` (`datenuebermittlung_id`,`daten_id`),
  KEY `vvt_datenuebermittlung_daten_daten_id_ea27fe4e_fk_vvt_daten_id` (`daten_id`),
  CONSTRAINT `vvt_datenuebermittlu_datenuebermittlung_i_dbfd0b75_fk_vvt_daten` FOREIGN KEY (`datenuebermittlung_id`) REFERENCES `vvt_datenuebermittlung` (`id`),
  CONSTRAINT `vvt_datenuebermittlung_daten_daten_id_ea27fe4e_fk_vvt_daten_id` FOREIGN KEY (`daten_id`) REFERENCES `vvt_daten` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vvt_datenuebermittlung_daten`
--

LOCK TABLES `vvt_datenuebermittlung_daten` WRITE;
/*!40000 ALTER TABLE `vvt_datenuebermittlung_daten` DISABLE KEYS */;
/*!40000 ALTER TABLE `vvt_datenuebermittlung_daten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vvt_empfaenger`
--

DROP TABLE IF EXISTS `vvt_empfaenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vvt_empfaenger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empfaenger` varchar(200) NOT NULL,
  `empfaenger_beschreibung` longtext NOT NULL,
  `unsicherer_drittstaat` tinyint(1) NOT NULL,
  `empfaenger_land` varchar(2) NOT NULL,
  `empfaenger_art` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vvt_empfaenger`
--

LOCK TABLES `vvt_empfaenger` WRITE;
/*!40000 ALTER TABLE `vvt_empfaenger` DISABLE KEYS */;
/*!40000 ALTER TABLE `vvt_empfaenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vvt_empfaenger_datenuebermittlung`
--

DROP TABLE IF EXISTS `vvt_empfaenger_datenuebermittlung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vvt_empfaenger_datenuebermittlung` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empfaenger_id` int(11) NOT NULL,
  `datenuebermittlung_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vvt_empfaenger_datenuebe_empfaenger_id_datenueber_1571bf51_uniq` (`empfaenger_id`,`datenuebermittlung_id`),
  KEY `vvt_empfaenger_daten_datenuebermittlung_i_05304f98_fk_vvt_daten` (`datenuebermittlung_id`),
  CONSTRAINT `vvt_empfaenger_daten_datenuebermittlung_i_05304f98_fk_vvt_daten` FOREIGN KEY (`datenuebermittlung_id`) REFERENCES `vvt_datenuebermittlung` (`id`),
  CONSTRAINT `vvt_empfaenger_daten_empfaenger_id_6357205b_fk_vvt_empfa` FOREIGN KEY (`empfaenger_id`) REFERENCES `vvt_empfaenger` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vvt_empfaenger_datenuebermittlung`
--

LOCK TABLES `vvt_empfaenger_datenuebermittlung` WRITE;
/*!40000 ALTER TABLE `vvt_empfaenger_datenuebermittlung` DISABLE KEYS */;
/*!40000 ALTER TABLE `vvt_empfaenger_datenuebermittlung` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-18  7:57:38
