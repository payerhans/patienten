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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-04-16 11:11:13.597796','40','Stammdaten Minderjähriger',2,'[{\"changed\": {\"fields\": [\"datengruppe\"]}}]',7,1),(2,'2018-04-16 12:19:36.093360','1','huber',1,'[{\"added\": {}}]',11,1),(3,'2018-04-16 12:19:46.844837','1','huber',3,'',11,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vvt_daten`
--

LOCK TABLES `vvt_daten` WRITE;
/*!40000 ALTER TABLE `vvt_daten` DISABLE KEYS */;
INSERT INTO `vvt_daten` VALUES (1,'Patientenaufnahmezahl','-',1),(2,'Name (Familienname, Vorname)','-',1),(3,'Frühere Namen','-',1),(4,'Titel','-',1),(5,'Geburtsjahr/Alter','-',1),(6,'Geburtsdatum','-',1),(7,'Geburtsort/Geburtsland','-',1),(8,'Geschlecht','-',1),(9,'Familienstand','-',1),(10,'Anschrift','-',1),(11,'Bundesland','-',1),(12,'Staatsbürgerschaft','-',1),(13,'Beruf','-',1),(14,'Religion','-',1),(15,'Name, Adresse und Erreichbarkeit des Arbeitgebers','-',2),(16,'Daten zu Sozialversicherungsträger','-',2),(17,'Sozialversicherungsnummer Gebührenklasse','-',2),(18,'Daten von Hauptversicherten','-',2),(19,'Verrechnungsrelevante Diagnosen','-',2),(20,'Verrechnungsrelevante medizinische Einzelleistungen (z.B. Therapien)','-',2),(21,'Sonstige Versicherungs- und Abrechnungsdaten (z.B. Krankenschein, Arzthonorare, Befundhonorare)','-',2),(22,'Unabweisbarkeitsparere','-',3),(23,'Auskunftssperre','-',3),(24,'Dauerpatient J/N','-',3),(25,'Aufnahme-, Besuchs- (Kontroll-)Transferierungs- und Entlassungs-(Abschluss-)daten','-',3),(26,'Daten der Verlegung (Aufnahme-,Transferierungs- und Entlassungsabteilung)','-',3),(27,'Aufnahme-, Entlassungsart bzw.-zustand','-',3),(28,'Daten der Zuweisung (z.B.Zuweisungsdiagnose)','-',3),(29,'Einweisende Stelle (Name, Adresse von Arzt bzw. Krankenanstalt','-',3),(30,'Entlassungsbefund','-',3),(31,'Daten von Angehörigen oder Verständigungspersonen','-',3),(32,'Daten der Begleitperson ','-',3),(33,'Nachuntersuchungsdatum ','-',3),(34,'Nachsorgeschema','-',3),(35,'Archivierte Krankengeschichten aller Fachbereiche','-',4),(36,'Archivierungsnummer','-',4),(37,'Anzeigensperre für Krankengeschichte','-',4),(38,'Status u. Änderungsdaten','-',4),(39,'Herkunftsstelle der Bestandteile der Krankengeschichte','-',5),(40,'Patientenidentifikation','-',5),(41,'Datum der Diagnose','-',5),(42,'Anamnestische Daten','-',5),(43,'Aufnahmestatus (Status Präsens)','-',5),(44,'externe Konsiliarbefunddaten','-',5),(45,'Therapieplan (inkl. OP-Planung etc.)','-',5),(46,'Durchgeführte Therapien','-',5),(47,'Empfohlene Untersuchungen,Therapieempfehlung','-',5),(48,'Medikation, ev. einschließlich Dokumentation von Chargennummern und Hersteller','-',5),(49,'Komplikationen','-',5),(50,'Therapieverlauf /Heilerfolg ','-',5),(51,'Krankheitsverlauf (decursus morbi)','-',5),(52,'Risikofaktoren, (Allergie, Diabetes, Blutgruppe, Bluter usw.)','-',5),(53,'Spezialdokumentation des Fachbereichs Unfallchirurgie','-',5),(54,'Spezialdokumentation des chirurgischen (Thorax-, Gefäß-, Plastische, Chirurgie, Transplantationschirurgie) Fachbereichs','-',5),(55,'Spezialdokumentation des internistischen (Gastroenterologie, Nephrologie (Nierenkrankheiten), Onkologie, Kardiologie, Infektion) Fachbereichs','-',5),(56,'Gynäkologische und geburtshilfliche Spezialdokumentation inkl. pränatale Spezialdokumentation','-',5),(57,'Spezialdokumentation des neurologisch-psychiatrischen Fachbereichs','-',5),(58,'Spezialdokumentation des pädiatrischen Fachbereichs (Kinderheilkunde)','-',5),(59,'Spezialdokumentation des Fachbereichs Radiodiagnostik','-',5),(60,'Spezialdokumentation Interdisziplinäre Erstversorgungszentren','-',5),(61,'Spezialdokumentation des Fachbereichs Anästhesie u. Intensivmedizin','-',5),(62,'Spezialdokumentation des Fachbereichs Kinderchirurgie','-',5),(63,'Spezialdokumentation des Fachbereichs Orthopädie','-',5),(64,'Spezialdokumentation des Fachbereichs Urologie','-',5),(65,'Spezialdokumentation des Fachbereichs Augenheilkunde','-',5),(66,'Spezialdokumentation des Fachbereichs HNO','-',5),(67,'Spezialdokumentation des Fachbereichs Nuklearmedizin','-',5),(68,'Spezialdokumentation des Fachbereichs Physikalische Medizin','-',5),(69,'Spezialdokumentation des gehobenen medizintechnischen Dienstes (z.B. Diäten, Logopädie, orthoptischer Dienst)','-',5),(70,'Allgemeine Angaben zu Prothesen und Implantate, einschließlich Kostenvoranschlag, Hersteller und Lieferant','-',5),(71,'Spezialdokumentation des Neuropathologisch und Neurochemischen Fachbereichs','-',5),(72,'Spezialdokumentation des Fachbereiches Akutgeriatrie','-',5),(73,'Ethnische Herkunft','-',5),(74,'Zuweisender Arzt','-',5),(75,'Behandelnder Arzt (in der KA)','-',5),(76,'Daten zur Freiheitsbeschränkung nach HeimAufG','-',5),(77,'Bilddaten bei Videoaufzeichnungen für med. Diagnostik (analog/digital)','-',5),(78,'Daten des Pflegedienstes (Pflegeberichte)','-',6),(79,'Pflegepersonal','-',6),(80,'Anfordernde Stelle','-',7),(81,'Leistende Stelle','-',7),(82,'Beschreibung des Untersuchungsmaterial (z.B. Blut, Speichel, Gewebsproben, etc) Proben- bzw. Protokollnummer ','-',7),(83,'Untersuchungsanforderung an leistende Stellen','-',7),(84,'Datum/Zeit der Entnahme','-',7),(85,'Befund- und Untersuchungsdatum','-',7),(86,'Freigabestatus des Befundes (Validierungshinweise, Vidierung)','-',7),(87,'Ergebnisse von Untersuchungen (Befunde)','-',7),(88,'Digitale Bilddaten (Datum der','-',7),(89,'Untersuchung, Untersuchungsparameter, Pixel)','-',7),(90,'Tumorbeschreibung, histologische Daten','-',7),(91,'Daten zur Strahlenbelastung','-',7),(92,'Impfdaten','-',7),(93,'Obduktions- und Todesdaten','-',7),(94,'pathologische Diagnose','-',7),(95,'Befundender Arzt','-',7),(96,'Aufnahme und Entlassungstag in einer Krankenanstalt mit Aufnahme -und Entlassungsdiagnose','-',8),(97,'Bekanntgabe der Umstände, die den Transport der betreuten Person notwendig machten unter Angabe von allfälligem Fremdverschulden und Einsatzgrund','-',8);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
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

-- Dump completed on 2018-04-16 14:34:07
