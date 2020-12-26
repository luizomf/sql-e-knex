-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: base_de_dados
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `knex_migrations`
--

DROP TABLE IF EXISTS `knex_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `knex_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batch` int DEFAULT NULL,
  `migration_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knex_migrations`
--

LOCK TABLES `knex_migrations` WRITE;
/*!40000 ALTER TABLE `knex_migrations` DISABLE KEYS */;
INSERT INTO `knex_migrations` VALUES (3,'20201222130157_create_users.js',1,'2020-12-22 17:25:58'),(4,'20201222142703_create_profiles.js',2,'2020-12-22 17:29:52'),(5,'20201222233714_create_roles.js',3,'2020-12-23 02:38:46'),(7,'20201222234900_create_users_roles.js',4,'2020-12-23 02:54:02');
/*!40000 ALTER TABLE `knex_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knex_migrations_lock`
--

DROP TABLE IF EXISTS `knex_migrations_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `knex_migrations_lock` (
  `index` int unsigned NOT NULL AUTO_INCREMENT,
  `is_locked` int DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knex_migrations_lock`
--

LOCK TABLES `knex_migrations_lock` WRITE;
/*!40000 ALTER TABLE `knex_migrations_lock` DISABLE KEYS */;
INSERT INTO `knex_migrations_lock` VALUES (1,0);
/*!40000 ALTER TABLE `knex_migrations_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profiles_user_id_unique` (`user_id`),
  CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'Bio de Luiz','Des de Luiz',NULL),(3,'1	Bio de Luiz	Des de Luiz	','1	Bio de Luiz	Des de Luiz	',NULL);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (2,'DELETE'),(1,'PUT');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_password_hash_unique` (`password_hash`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (10,'Helena','A.','1@email.com','3_hash',481.12,'2020-12-23 04:32:13','2020-12-23 04:32:13'),(11,'Joana','B.','2@email.com','4_hash',12335.22,'2020-12-23 04:34:07','2020-12-23 04:34:07'),(12,'Rosana','C.','3@email.com','5_hash',6456.12,'2020-12-23 04:34:07','2020-12-23 04:34:07'),(13,'Tanner','Mayo','vitae.diam@consectetueripsum.ca','QLN12HIN3RL',NULL,'2021-07-26 01:12:26','2020-12-24 00:09:58'),(14,'Brittany','Stewart','nibh.sit@nunc.edu','ROM35HMM4SA',NULL,'2020-08-22 16:41:06','2020-12-24 00:09:58'),(15,'Ferris','Hall','neque.Morbi@porttitorscelerisqueneque.edu','YTU15GQR9HT',NULL,'2020-02-28 08:52:36','2020-12-24 00:09:58'),(16,'Jacob','Manning','risus.at@sociis.edu','EQS93HLI6QZ',NULL,'2021-04-22 09:01:30','2020-12-24 00:09:58'),(17,'Keelie','Petersen','Nulla@lobortis.org','ZHE87TSO6DA',NULL,'2021-07-10 23:51:19','2020-12-24 00:09:58'),(18,'Benjamin','Daniels','nec@dolor.org','CNW39GMH4NZ',NULL,'2021-01-31 01:33:14','2020-12-24 00:09:58'),(19,'Aspen','Cain','Nullam.ut@primisinfaucibus.com','ZFC58TUT0MB',NULL,'2020-06-12 17:52:39','2020-12-24 00:09:58'),(20,'Oprah','Reeves','nisi.nibh.lacinia@mattissemper.net','LYD20HWD3UN',NULL,'2020-03-05 16:41:49','2020-12-24 00:09:58'),(21,'Lynn','Hendricks','neque.tellus.imperdiet@dolor.net','CRA59DIT0TW',NULL,'2020-04-12 18:26:28','2020-12-24 00:09:58'),(22,'Wayne','Walters','torquent.per.conubia@Utsagittislobortis.co.uk','BVD19AUV2JO',NULL,'2020-10-04 06:36:24','2020-12-24 00:09:58'),(23,'Shana','Barnett','tempus.scelerisque@lectusjustoeu.net','GXF87LGA4XZ',NULL,'2020-01-26 07:16:58','2020-12-24 00:09:58'),(24,'Merrill','Dunn','a.feugiat.tellus@CuraePhasellus.ca','BQS83WCA3QM',NULL,'2021-05-27 23:27:02','2020-12-24 00:09:58'),(25,'Minerva','Craft','ac.mattis@liberoIntegerin.ca','XAX94LBA7BI',NULL,'2021-11-17 23:14:37','2020-12-24 00:09:58'),(26,'Ishmael','Garcia','Nunc.sed@tellus.co.uk','MYA25WWC2HB',NULL,'2020-04-15 20:51:28','2020-12-24 00:09:58'),(27,'Xyla','Rocha','mi.enim.condimentum@faucibus.ca','NJB51CIZ2YT',NULL,'2021-10-11 17:19:33','2020-12-24 00:09:58'),(28,'Giacomo','Kidd','quis.diam@convallisin.com','QAM99GPQ0BE',NULL,'2020-05-14 19:04:51','2020-12-24 00:09:58'),(29,'Lucian','Shepherd','dis@Integervulputate.co.uk','PKI61CTD1WE',NULL,'2021-02-20 09:42:36','2020-12-24 00:09:58'),(30,'Iona','Gillespie','ac.facilisis@vitae.org','THH68JIH4QZ',NULL,'2020-08-27 08:26:00','2020-12-24 00:09:58'),(31,'Nyssa','Roberson','massa.Suspendisse@nisidictumaugue.co.uk','VOW26KCN4CZ',NULL,'2021-01-11 22:18:46','2020-12-24 00:09:58'),(32,'Lacy','Guthrie','purus@ullamcorper.net','NGL35MWG5OL',NULL,'2020-03-15 07:05:58','2020-12-24 00:09:58'),(33,'Karina','Carson','a.aliquet@cursusaenim.org','RMZ97KTB0LP',NULL,'2020-11-09 04:34:20','2020-12-24 00:09:58'),(34,'Carly','Wilkinson','egestas.a.dui@utcursusluctus.co.uk','YUS28DJB5UR',NULL,'2021-05-28 22:43:17','2020-12-24 00:09:58'),(35,'Madison','Pierce','arcu.eu@antelectus.edu','JVZ98CGE6XW',NULL,'2020-09-04 22:06:55','2020-12-24 00:09:58'),(36,'Carly','Guerrero','feugiat.non.lobortis@porttitorvulputate.ca','HAS68KVZ2IW',NULL,'2021-01-26 05:40:51','2020-12-24 00:09:58'),(37,'Eric','Cash','Aenean.eget@libero.ca','JTY19RSK6AY',NULL,'2021-08-28 19:36:43','2020-12-24 00:09:58'),(38,'Hannah','Pitts','dapibus.ligula.Aliquam@magnaPhasellusdolor.ca','OMF54AOD3FM',NULL,'2021-08-28 22:44:45','2020-12-24 00:09:58'),(39,'Gray','Barnes','Aenean.egestas.hendrerit@pharetranibh.edu','RUY00LNZ4XD',NULL,'2021-02-09 15:08:06','2020-12-24 00:09:58'),(40,'Seth','Duke','ante.ipsum.primis@Quisque.ca','YUA24MFN1ES',NULL,'2020-09-27 04:28:26','2020-12-24 00:09:58'),(41,'Leandra','Ratliff','Suspendisse@feugiatSednec.edu','HSC55TYX0JV',NULL,'2020-01-25 12:46:01','2020-12-24 00:09:58'),(42,'Jillian','Lamb','arcu@rutrum.org','DWR34TLE3MF',NULL,'2020-06-07 12:55:48','2020-12-24 00:09:58'),(43,'Baker','Richards','elit@Maecenasmalesuada.edu','UPI22LBI7ZW',NULL,'2020-02-23 01:36:48','2020-12-24 00:09:58'),(44,'Kennan','Callahan','tortor.dictum.eu@intempus.org','GEL99BNX1UJ',NULL,'2021-12-03 23:48:09','2020-12-24 00:09:58'),(45,'Hedy','Kim','amet@cursusinhendrerit.com','NZR75UQU2MQ',NULL,'2020-12-27 05:47:14','2020-12-24 00:09:58'),(46,'Dolan','Pearson','semper.tellus.id@fringillaporttitor.edu','HXS85QIR7YW',NULL,'2021-06-12 03:11:24','2020-12-24 00:09:58'),(47,'Tanisha','Atkins','convallis.ante@id.org','QFN12VIE2CM',NULL,'2021-09-07 03:41:28','2020-12-24 00:09:58'),(48,'Hedwig','Freeman','elit.Curabitur@dolorvitaedolor.co.uk','WFW24JAV6HV',NULL,'2020-07-19 20:14:29','2020-12-24 00:09:58'),(49,'Xanthus','Dejesus','diam@Suspendisse.co.uk','FDB64NOK6HP',NULL,'2020-02-16 23:16:21','2020-12-24 00:09:58'),(50,'Xavier','Walton','magna.Phasellus@orci.co.uk','ROH80LTQ3UL',NULL,'2021-04-10 02:42:08','2020-12-24 00:09:58'),(51,'Melissa','Boone','Nullam.scelerisque.neque@imperdietdictummagna.com','ILA84FVZ1LT',NULL,'2021-01-02 14:12:48','2020-12-24 00:09:58'),(52,'Elijah','Espinoza','Nunc.ac.sem@necimperdietnec.edu','CUY37VUP3IR',NULL,'2020-01-31 16:09:25','2020-12-24 00:09:58'),(53,'Xena','Aguirre','mollis.Integer@Phasellus.edu','TGB25KRR0VO',NULL,'2020-03-10 11:58:41','2020-12-24 00:09:58'),(54,'Hayfa','Powers','posuere.at.velit@fringillaporttitor.edu','TEO28VNF5BU',NULL,'2021-01-18 11:44:16','2020-12-24 00:09:58'),(55,'Armando','Nunez','nulla.ante.iaculis@Morbiaccumsanlaoreet.ca','XUT85OLS0CA',NULL,'2021-11-07 08:13:37','2020-12-24 00:09:58'),(56,'Hayley','Stanley','ipsum.Suspendisse@velit.edu','SWB87FCO7UY',NULL,'2020-04-20 10:20:53','2020-12-24 00:09:58'),(57,'Zia','Elliott','In.lorem.Donec@mattis.com','SXA35NRK8LC',NULL,'2021-09-08 13:45:44','2020-12-24 00:09:58'),(58,'Vernon','Wolf','porttitor.scelerisque.neque@disparturient.net','RSJ71EFP1HP',NULL,'2020-05-17 23:37:24','2020-12-24 00:09:58'),(59,'Zachery','Copeland','libero@anunc.edu','HTN15HIK1JO',NULL,'2020-05-12 05:22:09','2020-12-24 00:09:58'),(60,'Hayfa','Tanner','dignissim.Maecenas@eueros.co.uk','VFK34JGG4GH',NULL,'2020-07-08 03:25:22','2020-12-24 00:09:58'),(61,'Rosalyn','Mercado','ullamcorper.nisl.arcu@eunequepellentesque.org','YZT80OSH6AS',NULL,'2021-09-04 14:33:50','2020-12-24 00:09:58'),(62,'Kalia','Russell','Pellentesque@placerat.net','GHM91NMW9XI',NULL,'2021-09-07 21:07:42','2020-12-24 00:09:58'),(63,'Xavier','Coleman','Proin@velitAliquamnisl.net','TES61QXM8OK',NULL,'2020-10-11 23:29:25','2020-12-24 00:09:58'),(64,'Jaime','Dalton','lorem.semper.auctor@fringillaornareplacerat.co.uk','IZN87CKQ8NY',NULL,'2021-06-04 05:43:01','2020-12-24 00:09:58'),(65,'Magee','Wynn','non.egestas.a@cubiliaCuraePhasellus.co.uk','XBZ84QFE1QJ',NULL,'2021-07-11 00:33:24','2020-12-24 00:09:58'),(66,'Alika','Sims','augue.ut@Nullasemper.edu','IZH92SNA7CY',NULL,'2021-07-28 23:20:41','2020-12-24 00:09:58'),(67,'Xyla','Fletcher','est.Nunc.ullamcorper@vestibulum.ca','JCW18ISX7FC',NULL,'2020-02-19 18:33:39','2020-12-24 00:09:58'),(68,'Tatum','Houston','elementum@rutrumnonhendrerit.com','UGI43ADF3ZF',NULL,'2019-12-29 04:46:33','2020-12-24 00:09:58'),(69,'Hilda','Graves','Nullam.ut.nisi@arcuMorbisit.org','ZXM84DUO5RH',NULL,'2020-12-16 17:48:40','2020-12-24 00:09:58'),(70,'Jordan','Gould','turpis.vitae@penatibus.edu','SDR33TEI1JY',NULL,'2020-01-21 10:33:05','2020-12-24 00:09:58'),(71,'Iris','Whitehead','massa@egestasSedpharetra.com','POB14LPE6JA',NULL,'2021-08-30 06:23:44','2020-12-24 00:09:58'),(72,'Tanek','English','metus.vitae.velit@inmagna.com','NDC34LGD4UO',NULL,'2021-03-23 22:31:26','2020-12-24 00:09:58'),(73,'Fitzgerald','Dickson','ac.feugiat@ullamcorper.edu','BVE71ESA2VJ',NULL,'2020-05-02 02:14:53','2020-12-24 00:09:58'),(74,'Allen','Cotton','placerat.Cras@quamdignissimpharetra.ca','NRY69AEP4GD',NULL,'2020-01-01 07:24:42','2020-12-24 00:09:58'),(75,'Cedric','Davenport','Nam@nullaInteger.org','GDU02ZWD8IA',NULL,'2021-08-02 10:34:58','2020-12-24 00:09:58'),(76,'Ira','Davenport','Morbi@rutrum.ca','WPZ92RAW1JW',NULL,'2021-04-17 01:20:05','2020-12-24 00:09:58'),(77,'Kuame','Buchanan','tellus.justo@dapibus.ca','SXX86HNJ8PE',NULL,'2021-01-06 07:08:11','2020-12-24 00:09:58'),(78,'Dorian','Clemons','arcu.ac@Integerinmagna.co.uk','UWP21NIC6YQ',NULL,'2020-09-28 12:55:45','2020-12-24 00:09:58'),(79,'Emerson','Howe','feugiat.tellus.lorem@Classaptenttaciti.net','FWN62CYE5PF',NULL,'2020-02-11 16:43:09','2020-12-24 00:09:58'),(80,'Buckminster','Sharpe','Pellentesque.habitant.morbi@Aenean.ca','HVG02WFR3PT',NULL,'2020-06-03 03:15:09','2020-12-24 00:09:58'),(81,'Candice','Fields','quis@fringilla.co.uk','JXT67OZX6XN',NULL,'2020-08-03 11:47:56','2020-12-24 00:09:58'),(82,'Moses','Paul','pretium.et.rutrum@nisi.net','QSA85YOL4PB',NULL,'2020-09-18 02:42:14','2020-12-24 00:09:58'),(83,'Ima','Sawyer','ornare.Fusce.mollis@inconsequat.net','DYC03ASQ5KM',NULL,'2020-02-15 02:29:44','2020-12-24 00:09:58'),(84,'Barry','Wooten','aliquet.vel.vulputate@posuereenimnisl.com','PLK61AYG5IH',NULL,'2020-09-16 02:40:51','2020-12-24 00:09:58'),(85,'Geoffrey','Meyer','sem@laciniaSedcongue.net','CIQ44MQS9YO',NULL,'2020-11-24 19:46:18','2020-12-24 00:09:58'),(86,'Jared','Zimmerman','Praesent.eu@diam.com','HIH19QIW5LZ',NULL,'2021-12-09 12:45:27','2020-12-24 00:09:58'),(87,'Molly','Benton','elit.Etiam.laoreet@inmagna.org','PYW76ZKR7PS',NULL,'2020-09-25 15:04:19','2020-12-24 00:09:58'),(88,'Wang','Webb','netus@arcuimperdiet.org','TXD59LXO7YR',NULL,'2020-11-20 04:52:21','2020-12-24 00:09:58'),(89,'Cain','Pacheco','libero.mauris@semutdolor.co.uk','PKF15YOD8ZZ',NULL,'2021-05-02 08:23:44','2020-12-24 00:09:58'),(90,'Giacomo','Mccullough','odio@nonmassa.ca','GTY42BME9AN',NULL,'2020-07-18 07:09:18','2020-12-24 00:09:58'),(91,'Katelyn','Carney','in.molestie@quisturpisvitae.edu','VEV32VLJ8LV',NULL,'2020-11-19 00:26:37','2020-12-24 00:09:58'),(92,'Evelyn','Decker','Suspendisse.aliquet.molestie@lacus.co.uk','QRQ49FUY6QF',NULL,'2021-02-21 16:38:08','2020-12-24 00:09:58'),(93,'Hamish','Campos','a.odio@et.edu','JKT18FNQ7ZV',NULL,'2020-09-18 06:06:31','2020-12-24 00:09:58'),(94,'Haley','Hobbs','lacus.Quisque@nonlobortis.co.uk','TGP40NLZ6BQ',NULL,'2020-05-15 01:11:58','2020-12-24 00:09:58'),(95,'Ryan','Bishop','vestibulum.massa.rutrum@perconubianostra.net','BUS13NPN9FX',NULL,'2021-03-31 09:59:57','2020-12-24 00:09:58'),(96,'Suki','Chambers','amet@pharetranibh.com','BJY34VDO6QO',NULL,'2020-06-12 20:38:52','2020-12-24 00:09:58'),(97,'Thaddeus','Noble','tempor@actellus.co.uk','IHG89RMX3OI',NULL,'2020-11-12 21:35:31','2020-12-24 00:09:58'),(98,'John','Orr','eros.Nam@Curabitur.net','JDD45SGI9UI',NULL,'2020-03-10 04:38:18','2020-12-24 00:09:58'),(99,'Travis','Hughes','elit.Aliquam@lacus.ca','RQI44ZJK3FH',NULL,'2021-08-01 08:20:23','2020-12-24 00:09:58'),(100,'Cameron','Copeland','Donec@nisiaodio.edu','QGW70CYB2SD',NULL,'2020-11-05 20:12:28','2020-12-24 00:09:58'),(101,'Howard','Cash','lorem@nonlobortisquis.org','DIF42OGX2PS',NULL,'2020-03-24 23:35:29','2020-12-24 00:09:58'),(102,'Arthur','Hale','Aenean@Ut.edu','ESH22TJS0AA',NULL,'2020-01-21 11:24:40','2020-12-24 00:09:58'),(103,'Buffy','Riddle','posuere.vulputate.lacus@dignissim.org','AGP47FVJ0FH',NULL,'2020-03-06 06:08:47','2020-12-24 00:09:58'),(104,'Blythe','Todd','iaculis@Quisquenonummy.com','CZQ81FMO0DG',NULL,'2020-02-04 18:44:37','2020-12-24 00:09:58'),(105,'Elaine','Cotton','neque.vitae.semper@odio.net','DGZ74IDT5OX',NULL,'2021-09-27 07:40:21','2020-12-24 00:09:58'),(106,'Riley','Frazier','Sed.neque@facilisisSuspendisse.co.uk','AGZ17TIV3MS',NULL,'2020-10-22 06:33:55','2020-12-24 00:09:58'),(107,'Hayden','Hodges','arcu.et.pede@maurissagittisplacerat.org','DWT14ISL3FX',NULL,'2020-07-18 12:48:50','2020-12-24 00:09:58'),(108,'Dennis','Conrad','ultrices@consectetuermaurisid.net','NHY14EKI6AN',NULL,'2020-12-27 07:35:07','2020-12-24 00:09:58'),(109,'Len','Graham','metus.In.nec@arcuSed.ca','MTO36MZQ4GA',NULL,'2021-11-22 09:47:54','2020-12-24 00:09:58'),(110,'Harding','Lester','semper.cursus@porttitorscelerisqueneque.net','QKK49WUE8XY',NULL,'2021-12-01 15:04:13','2020-12-24 00:09:58'),(111,'Jelani','Townsend','ridiculus.mus@molestietellusAenean.net','IQG53SCW4XD',NULL,'2021-02-08 21:11:04','2020-12-24 00:09:58'),(112,'Hilda','Valentine','mollis.Duis@aaliquetvel.co.uk','SOA17EEA6KX',NULL,'2021-03-30 04:48:13','2020-12-24 00:09:58');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_roles` (
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `users_roles_role_id_foreign` (`role_id`),
  CONSTRAINT `users_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `users_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-24  6:44:15
