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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'Bio de Luiz','Des de Luiz',NULL),(3,'1	Bio de Luiz	Des de Luiz	','1	Bio de Luiz	Des de Luiz	',NULL),(6,'Bio de Joana','Description de Joana',11),(7,'Bio de Rosana','Description de Rosana',12),(8,'Bio de Tanner','Description de Tanner',13),(9,'Bio de Brittany','Description de Brittany',14),(10,'Bio de Ferris','Description de Ferris',15),(11,'Bio de Jacob','Description de Jacob',16),(12,'Bio de Keelie','Description de Keelie',17),(14,'Bio de Aspen','Description de Aspen',19),(15,'Bio de Oprah','Description de Oprah',20),(16,'Bio de Lynn','Description de Lynn',21),(17,'Bio de Wayne','Description de Wayne',22),(18,'Bio de Shana','Description de Shana',23),(19,'Bio de Merrill','Description de Merrill',24),(20,'Bio de Minerva','Description de Minerva',25),(21,'Bio de Ishmael','Description de Ishmael',26),(22,'Bio de Xyla','Description de Xyla',27),(23,'Bio de Giacomo','Description de Giacomo',28),(24,'Bio de Lucian','Description de Lucian',29),(31,'Bio de Carly','Description de Carly',36),(32,'Bio de Eric','Description de Eric',37),(33,'Bio de Hannah','Description de Hannah',38),(34,'Bio de Gray','Description de Gray',39),(35,'Bio de Seth','Description de Seth',40),(36,'Bio de Leandra','Description de Leandra',41),(37,'Bio de Jillian','Description de Jillian',42),(38,'Bio de Baker','Description de Baker',43),(39,'Bio de Kennan','Description de Kennan',44),(40,'Bio de Hedy','Description de Hedy',45),(41,'Bio de Dolan','Description de Dolan',46),(42,'Bio de Tanisha','Description de Tanisha',47),(43,'Bio de Hedwig','Description de Hedwig',48),(44,'Bio de Xanthus','Description de Xanthus',49),(45,'Bio de Xavier','Description de Xavier',50),(46,'Bio de Melissa','Description de Melissa',51),(47,'Bio de Elijah','Description de Elijah',52),(48,'Bio de Xena','Description de Xena',53),(49,'Bio de Hayfa','Description de Hayfa',54),(50,'Bio de Armando','Description de Armando',55),(51,'Bio de Hayley','Description de Hayley',56),(52,'Bio de Zia','Description de Zia',57),(53,'Bio de Vernon','Description de Vernon',58),(54,'Bio de Zachery','Description de Zachery',59),(55,'Bio de Hayfa','Description de Hayfa',60),(56,'Bio de Rosalyn','Description de Rosalyn',61),(57,'Bio de Kalia','Description de Kalia',62),(58,'Bio de Xavier','Description de Xavier',63),(59,'Bio de Jaime','Description de Jaime',64),(60,'Bio de Magee','Description de Magee',65),(61,'Bio de Alika','Description de Alika',66),(62,'Bio de Xyla','Description de Xyla',67),(63,'Bio de Tatum','Description de Tatum',68),(64,'Bio de Hilda','Description de Hilda',69),(65,'Bio de Jordan','Description de Jordan',70),(66,'Bio de Iris','Description de Iris',71),(67,'Bio de Tanek','Description de Tanek',72),(68,'Bio de Fitzgerald','Description de Fitzgerald',73),(69,'Bio de Allen','Description de Allen',74),(70,'Bio de Cedric','Description de Cedric',75),(71,'Bio de Ira','Description de Ira',76),(72,'Bio de Kuame','Description de Kuame',77),(73,'Bio de Dorian','Description de Dorian',78),(74,'Bio de Emerson','Description de Emerson',79),(75,'Bio de Buckminster','Description de Buckminster',80),(76,'Bio de Candice','Description de Candice',81),(77,'Bio de Moses','Description de Moses',82),(78,'Bio de Ima','Description de Ima',83),(79,'Bio de Barry','Description de Barry',84),(80,'Bio de Geoffrey','Description de Geoffrey',85),(81,'Bio de Jared','Description de Jared',86),(82,'Bio de Molly','Description de Molly',87),(83,'Bio de Wang','Description de Wang',88),(84,'Bio de Cain','Description de Cain',89),(85,'Bio de Giacomo','Description de Giacomo',90),(86,'Bio de Katelyn','Description de Katelyn',91),(87,'Bio de Evelyn','Description de Evelyn',92),(88,'Bio de Hamish','Description de Hamish',93),(89,'Bio de Haley','Description de Haley',94),(90,'Bio de Ryan','Description de Ryan',95),(91,'Bio de Suki','Description de Suki',96),(92,'Bio de Thaddeus','Description de Thaddeus',97),(93,'Bio de John','Description de John',98),(94,'Bio de Travis','Description de Travis',99),(95,'Bio de Cameron','Description de Cameron',100),(96,'Bio de Howard','Description de Howard',101),(97,'Bio de Arthur','Description de Arthur',102),(98,'Bio de Buffy','Description de Buffy',103),(99,'Bio de Blythe','Description de Blythe',104),(100,'Bio de Elaine','Description de Elaine',105),(101,'Bio de Riley','Description de Riley',106),(102,'Bio de Hayden','Description de Hayden',107),(103,'Bio de Dennis','Description de Dennis',108),(104,'Bio de Len','Description de Len',109),(105,'Bio de Harding','Description de Harding',110),(106,'Bio de Jelani','Description de Jelani',111),(107,'Bio de Hilda','Description de Hilda',112);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (5,'DELETE'),(6,'GET'),(3,'POST'),(4,'PUT');
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
INSERT INTO `users` VALUES (10,'Helena','A.','1@email.com','3_hash',4783.00,'2020-12-23 04:32:13','2020-12-23 04:32:13'),(11,'Joana','B.','2@email.com','4_hash',6885.10,'2020-12-23 04:34:07','2020-12-23 04:34:07'),(12,'Rosana','C.','3@email.com','5_hash',76.52,'2020-12-23 04:34:07','2020-12-23 04:34:07'),(13,'Tanner','Mayo','vitae.diam@consectetueripsum.ca','QLN12HIN3RL',9727.29,'2021-07-26 01:12:26','2020-12-24 00:09:58'),(14,'Brittany','Stewart','nibh.sit@nunc.edu','ROM35HMM4SA',8406.90,'2020-08-22 16:41:06','2020-12-24 00:09:58'),(15,'Ferris','Hall','neque.Morbi@porttitorscelerisqueneque.edu','YTU15GQR9HT',2852.62,'2020-02-28 08:52:36','2020-12-24 00:09:58'),(16,'Jacob','Manning','risus.at@sociis.edu','EQS93HLI6QZ',9042.39,'2021-04-22 09:01:30','2020-12-24 00:09:58'),(17,'Keelie','Petersen','Nulla@lobortis.org','ZHE87TSO6DA',6654.08,'2021-07-10 23:51:19','2020-12-24 00:09:58'),(19,'Aspen','Cain','Nullam.ut@primisinfaucibus.com','ZFC58TUT0MB',6143.26,'2020-06-12 17:52:39','2020-12-24 00:09:58'),(20,'Oprah','Reeves','nisi.nibh.lacinia@mattissemper.net','LYD20HWD3UN',754.07,'2020-03-05 16:41:49','2020-12-24 00:09:58'),(21,'Lynn','Hendricks','neque.tellus.imperdiet@dolor.net','CRA59DIT0TW',5340.56,'2020-04-12 18:26:28','2020-12-24 00:09:58'),(22,'Wayne','Walters','torquent.per.conubia@Utsagittislobortis.co.uk','BVD19AUV2JO',4440.59,'2020-10-04 06:36:24','2020-12-24 00:09:58'),(23,'Shana','Barnett','tempus.scelerisque@lectusjustoeu.net','GXF87LGA4XZ',6181.25,'2020-01-26 07:16:58','2020-12-24 00:09:58'),(24,'Merrill','Dunn','a.feugiat.tellus@CuraePhasellus.ca','BQS83WCA3QM',7584.51,'2021-05-27 23:27:02','2020-12-24 00:09:58'),(25,'Minerva','Craft','ac.mattis@liberoIntegerin.ca','XAX94LBA7BI',9378.78,'2021-11-17 23:14:37','2020-12-24 00:09:58'),(26,'Ishmael','Garcia','Nunc.sed@tellus.co.uk','MYA25WWC2HB',4140.36,'2020-04-15 20:51:28','2020-12-24 00:09:58'),(27,'Xyla','Rocha','mi.enim.condimentum@faucibus.ca','NJB51CIZ2YT',2565.47,'2021-10-11 17:19:33','2020-12-24 00:09:58'),(28,'Giacomo','Kidd','quis.diam@convallisin.com','QAM99GPQ0BE',406.28,'2020-05-14 19:04:51','2020-12-24 00:09:58'),(29,'Luiz','Miranda','dis@Integervulputate.co.uk','PKI61CTD1WE',4335.00,'2021-02-20 09:42:36','2020-12-24 00:09:58'),(36,'Carly','Guerrero','feugiat.non.lobortis@porttitorvulputate.ca','HAS68KVZ2IW',456.16,'2021-01-26 05:40:51','2020-12-24 00:09:58'),(37,'Eric','Cash','Aenean.eget@libero.ca','JTY19RSK6AY',9275.81,'2021-08-28 19:36:43','2020-12-24 00:09:58'),(38,'Hannah','Pitts','dapibus.ligula.Aliquam@magnaPhasellusdolor.ca','OMF54AOD3FM',5010.57,'2021-08-28 22:44:45','2020-12-24 00:09:58'),(39,'Gray','Barnes','Aenean.egestas.hendrerit@pharetranibh.edu','RUY00LNZ4XD',7225.43,'2021-02-09 15:08:06','2020-12-24 00:09:58'),(40,'Seth','Duke','ante.ipsum.primis@Quisque.ca','YUA24MFN1ES',1095.43,'2020-09-27 04:28:26','2020-12-24 00:09:58'),(41,'Leandra','Ratliff','Suspendisse@feugiatSednec.edu','HSC55TYX0JV',3800.87,'2020-01-25 12:46:01','2020-12-24 00:09:58'),(42,'Jillian','Lamb','arcu@rutrum.org','DWR34TLE3MF',5718.07,'2020-06-07 12:55:48','2020-12-24 00:09:58'),(43,'Baker','Richards','elit@Maecenasmalesuada.edu','UPI22LBI7ZW',7187.73,'2020-02-23 01:36:48','2020-12-24 00:09:58'),(44,'Kennan','Callahan','tortor.dictum.eu@intempus.org','GEL99BNX1UJ',8784.44,'2021-12-03 23:48:09','2020-12-24 00:09:58'),(45,'Hedy','Kim','amet@cursusinhendrerit.com','NZR75UQU2MQ',2359.01,'2020-12-27 05:47:14','2020-12-24 00:09:58'),(46,'Dolan','Pearson','semper.tellus.id@fringillaporttitor.edu','HXS85QIR7YW',5441.74,'2021-06-12 03:11:24','2020-12-24 00:09:58'),(47,'Tanisha','Atkins','convallis.ante@id.org','QFN12VIE2CM',131.65,'2021-09-07 03:41:28','2020-12-24 00:09:58'),(48,'Hedwig','Freeman','elit.Curabitur@dolorvitaedolor.co.uk','WFW24JAV6HV',4333.06,'2020-07-19 20:14:29','2020-12-24 00:09:58'),(49,'Xanthus','Dejesus','diam@Suspendisse.co.uk','FDB64NOK6HP',1270.33,'2020-02-16 23:16:21','2020-12-24 00:09:58'),(50,'Xavier','Walton','magna.Phasellus@orci.co.uk','ROH80LTQ3UL',3352.45,'2021-04-10 02:42:08','2020-12-24 00:09:58'),(51,'Melissa','Boone','Nullam.scelerisque.neque@imperdietdictummagna.com','ILA84FVZ1LT',2951.30,'2021-01-02 14:12:48','2020-12-24 00:09:58'),(52,'Elijah','Espinoza','Nunc.ac.sem@necimperdietnec.edu','CUY37VUP3IR',4699.12,'2020-01-31 16:09:25','2020-12-24 00:09:58'),(53,'Xena','Aguirre','mollis.Integer@Phasellus.edu','TGB25KRR0VO',4641.70,'2020-03-10 11:58:41','2020-12-24 00:09:58'),(54,'Hayfa','Powers','posuere.at.velit@fringillaporttitor.edu','TEO28VNF5BU',9111.16,'2021-01-18 11:44:16','2020-12-24 00:09:58'),(55,'Armando','Nunez','nulla.ante.iaculis@Morbiaccumsanlaoreet.ca','XUT85OLS0CA',1630.69,'2021-11-07 08:13:37','2020-12-24 00:09:58'),(56,'Hayley','Stanley','ipsum.Suspendisse@velit.edu','SWB87FCO7UY',819.98,'2020-04-20 10:20:53','2020-12-24 00:09:58'),(57,'Zia','Elliott','In.lorem.Donec@mattis.com','SXA35NRK8LC',9207.84,'2021-09-08 13:45:44','2020-12-24 00:09:58'),(58,'Vernon','Wolf','porttitor.scelerisque.neque@disparturient.net','RSJ71EFP1HP',3579.26,'2020-05-17 23:37:24','2020-12-24 00:09:58'),(59,'Zachery','Copeland','libero@anunc.edu','HTN15HIK1JO',272.78,'2020-05-12 05:22:09','2020-12-24 00:09:58'),(60,'Hayfa','Tanner','dignissim.Maecenas@eueros.co.uk','VFK34JGG4GH',626.14,'2020-07-08 03:25:22','2020-12-24 00:09:58'),(61,'Rosalyn','Mercado','ullamcorper.nisl.arcu@eunequepellentesque.org','YZT80OSH6AS',2312.33,'2021-09-04 14:33:50','2020-12-24 00:09:58'),(62,'Kalia','Russell','Pellentesque@placerat.net','GHM91NMW9XI',9683.23,'2021-09-07 21:07:42','2020-12-24 00:09:58'),(63,'Xavier','Coleman','Proin@velitAliquamnisl.net','TES61QXM8OK',1479.19,'2020-10-11 23:29:25','2020-12-24 00:09:58'),(64,'Jaime','Dalton','lorem.semper.auctor@fringillaornareplacerat.co.uk','IZN87CKQ8NY',8346.23,'2021-06-04 05:43:01','2020-12-24 00:09:58'),(65,'Magee','Wynn','non.egestas.a@cubiliaCuraePhasellus.co.uk','XBZ84QFE1QJ',7293.57,'2021-07-11 00:33:24','2020-12-24 00:09:58'),(66,'Alika','Sims','augue.ut@Nullasemper.edu','IZH92SNA7CY',1429.17,'2021-07-28 23:20:41','2020-12-24 00:09:58'),(67,'Xyla','Fletcher','est.Nunc.ullamcorper@vestibulum.ca','JCW18ISX7FC',5265.15,'2020-02-19 18:33:39','2020-12-24 00:09:58'),(68,'Tatum','Houston','elementum@rutrumnonhendrerit.com','UGI43ADF3ZF',2038.23,'2019-12-29 04:46:33','2020-12-24 00:09:58'),(69,'Hilda','Graves','Nullam.ut.nisi@arcuMorbisit.org','ZXM84DUO5RH',4395.72,'2020-12-16 17:48:40','2020-12-24 00:09:58'),(70,'Jordan','Gould','turpis.vitae@penatibus.edu','SDR33TEI1JY',5863.90,'2020-01-21 10:33:05','2020-12-24 00:09:58'),(71,'Iris','Whitehead','massa@egestasSedpharetra.com','POB14LPE6JA',6132.36,'2021-08-30 06:23:44','2020-12-24 00:09:58'),(72,'Tanek','English','metus.vitae.velit@inmagna.com','NDC34LGD4UO',3070.07,'2021-03-23 22:31:26','2020-12-24 00:09:58'),(73,'Fitzgerald','Dickson','ac.feugiat@ullamcorper.edu','BVE71ESA2VJ',6953.27,'2020-05-02 02:14:53','2020-12-24 00:09:58'),(74,'Allen','Cotton','placerat.Cras@quamdignissimpharetra.ca','NRY69AEP4GD',5556.14,'2020-01-01 07:24:42','2020-12-24 00:09:58'),(75,'Cedric','Davenport','Nam@nullaInteger.org','GDU02ZWD8IA',6920.91,'2021-08-02 10:34:58','2020-12-24 00:09:58'),(76,'Ira','Davenport','Morbi@rutrum.ca','WPZ92RAW1JW',7936.13,'2021-04-17 01:20:05','2020-12-24 00:09:58'),(77,'Kuame','Buchanan','tellus.justo@dapibus.ca','SXX86HNJ8PE',8917.91,'2021-01-06 07:08:11','2020-12-24 00:09:58'),(78,'Dorian','Clemons','arcu.ac@Integerinmagna.co.uk','UWP21NIC6YQ',781.18,'2020-09-28 12:55:45','2020-12-24 00:09:58'),(79,'Emerson','Howe','feugiat.tellus.lorem@Classaptenttaciti.net','FWN62CYE5PF',7152.15,'2020-02-11 16:43:09','2020-12-24 00:09:58'),(80,'Buckminster','Sharpe','Pellentesque.habitant.morbi@Aenean.ca','HVG02WFR3PT',3417.23,'2020-06-03 03:15:09','2020-12-24 00:09:58'),(81,'Candice','Fields','quis@fringilla.co.uk','JXT67OZX6XN',5629.69,'2020-08-03 11:47:56','2020-12-24 00:09:58'),(82,'Moses','Paul','pretium.et.rutrum@nisi.net','QSA85YOL4PB',7896.75,'2020-09-18 02:42:14','2020-12-24 00:09:58'),(83,'Ima','Sawyer','ornare.Fusce.mollis@inconsequat.net','DYC03ASQ5KM',2594.68,'2020-02-15 02:29:44','2020-12-24 00:09:58'),(84,'Barry','Wooten','aliquet.vel.vulputate@posuereenimnisl.com','PLK61AYG5IH',9283.17,'2020-09-16 02:40:51','2020-12-24 00:09:58'),(85,'Geoffrey','Meyer','sem@laciniaSedcongue.net','CIQ44MQS9YO',8631.81,'2020-11-24 19:46:18','2020-12-24 00:09:58'),(86,'Jared','Zimmerman','Praesent.eu@diam.com','HIH19QIW5LZ',5309.52,'2021-12-09 12:45:27','2020-12-24 00:09:58'),(87,'Molly','Benton','elit.Etiam.laoreet@inmagna.org','PYW76ZKR7PS',652.16,'2020-09-25 15:04:19','2020-12-24 00:09:58'),(88,'Wang','Webb','netus@arcuimperdiet.org','TXD59LXO7YR',7332.27,'2020-11-20 04:52:21','2020-12-24 00:09:58'),(89,'Cain','Pacheco','libero.mauris@semutdolor.co.uk','PKF15YOD8ZZ',4704.85,'2021-05-02 08:23:44','2020-12-24 00:09:58'),(90,'Giacomo','Mccullough','odio@nonmassa.ca','GTY42BME9AN',1527.46,'2020-07-18 07:09:18','2020-12-24 00:09:58'),(91,'Katelyn','Carney','in.molestie@quisturpisvitae.edu','VEV32VLJ8LV',3522.75,'2020-11-19 00:26:37','2020-12-24 00:09:58'),(92,'Evelyn','Decker','Suspendisse.aliquet.molestie@lacus.co.uk','QRQ49FUY6QF',3031.36,'2021-02-21 16:38:08','2020-12-24 00:09:58'),(93,'Hamish','Campos','a.odio@et.edu','JKT18FNQ7ZV',4588.54,'2020-09-18 06:06:31','2020-12-24 00:09:58'),(94,'Haley','Hobbs','lacus.Quisque@nonlobortis.co.uk','TGP40NLZ6BQ',3848.62,'2020-05-15 01:11:58','2020-12-24 00:09:58'),(95,'Ryan','Bishop','vestibulum.massa.rutrum@perconubianostra.net','BUS13NPN9FX',5477.48,'2021-03-31 09:59:57','2020-12-24 00:09:58'),(96,'Suki','Chambers','amet@pharetranibh.com','BJY34VDO6QO',5841.56,'2020-06-12 20:38:52','2020-12-24 00:09:58'),(97,'Thaddeus','Noble','tempor@actellus.co.uk','IHG89RMX3OI',2775.36,'2020-11-12 21:35:31','2020-12-24 00:09:58'),(98,'John','Orr','eros.Nam@Curabitur.net','JDD45SGI9UI',6352.10,'2020-03-10 04:38:18','2020-12-24 00:09:58'),(99,'Travis','Hughes','elit.Aliquam@lacus.ca','RQI44ZJK3FH',3434.42,'2021-08-01 08:20:23','2020-12-24 00:09:58'),(100,'Cameron','Copeland','Donec@nisiaodio.edu','QGW70CYB2SD',8115.81,'2020-11-05 20:12:28','2020-12-24 00:09:58'),(101,'Howard','Cash','lorem@nonlobortisquis.org','DIF42OGX2PS',275.80,'2020-03-24 23:35:29','2020-12-24 00:09:58'),(102,'Arthur','Hale','Aenean@Ut.edu','ESH22TJS0AA',7031.55,'2020-01-21 11:24:40','2020-12-24 00:09:58'),(103,'Buffy','Riddle','posuere.vulputate.lacus@dignissim.org','AGP47FVJ0FH',4330.34,'2020-03-06 06:08:47','2020-12-24 00:09:58'),(104,'Blythe','Todd','iaculis@Quisquenonummy.com','CZQ81FMO0DG',557.08,'2020-02-04 18:44:37','2020-12-24 00:09:58'),(105,'Elaine','Cotton','neque.vitae.semper@odio.net','DGZ74IDT5OX',9794.37,'2021-09-27 07:40:21','2020-12-24 00:09:58'),(106,'Riley','Frazier','Sed.neque@facilisisSuspendisse.co.uk','AGZ17TIV3MS',7300.62,'2020-10-22 06:33:55','2020-12-24 00:09:58'),(107,'Hayden','Hodges','arcu.et.pede@maurissagittisplacerat.org','DWT14ISL3FX',7119.99,'2020-07-18 12:48:50','2020-12-24 00:09:58'),(108,'Dennis','Conrad','ultrices@consectetuermaurisid.net','NHY14EKI6AN',3698.08,'2020-12-27 07:35:07','2020-12-24 00:09:58'),(109,'Len','Graham','metus.In.nec@arcuSed.ca','MTO36MZQ4GA',7130.42,'2021-11-22 09:47:54','2020-12-24 00:09:58'),(110,'Harding','Lester','semper.cursus@porttitorscelerisqueneque.net','QKK49WUE8XY',4557.88,'2021-12-01 15:04:13','2020-12-24 00:09:58'),(111,'Jelani','Townsend','ridiculus.mus@molestietellusAenean.net','IQG53SCW4XD',1398.11,'2021-02-08 21:11:04','2020-12-24 00:09:58'),(112,'Hilda','Valentine','mollis.Duis@aaliquetvel.co.uk','SOA17EEA6KX',3316.95,'2021-03-30 04:48:13','2020-12-24 00:09:58');
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
INSERT INTO `users_roles` VALUES (10,3),(15,3),(17,3),(19,3),(21,3),(25,3),(27,3),(28,3),(36,3),(38,3),(39,3),(41,3),(42,3),(43,3),(45,3),(46,3),(47,3),(48,3),(49,3),(50,3),(51,3),(52,3),(53,3),(55,3),(58,3),(59,3),(60,3),(62,3),(65,3),(68,3),(70,3),(72,3),(73,3),(75,3),(76,3),(78,3),(79,3),(80,3),(88,3),(90,3),(92,3),(93,3),(94,3),(95,3),(97,3),(100,3),(103,3),(105,3),(107,3),(110,3),(111,3),(112,3),(11,4),(12,4),(19,4),(22,4),(24,4),(25,4),(26,4),(36,4),(37,4),(39,4),(40,4),(41,4),(44,4),(49,4),(50,4),(51,4),(52,4),(53,4),(54,4),(55,4),(56,4),(57,4),(59,4),(60,4),(61,4),(62,4),(64,4),(66,4),(67,4),(70,4),(71,4),(74,4),(75,4),(76,4),(77,4),(78,4),(79,4),(81,4),(82,4),(85,4),(87,4),(89,4),(91,4),(93,4),(94,4),(95,4),(96,4),(97,4),(99,4),(101,4),(104,4),(105,4),(106,4),(107,4),(108,4),(109,4),(110,4),(112,4),(10,5),(11,5),(12,5),(13,5),(14,5),(15,5),(17,5),(20,5),(21,5),(23,5),(24,5),(26,5),(27,5),(29,5),(36,5),(40,5),(41,5),(43,5),(46,5),(48,5),(51,5),(53,5),(54,5),(55,5),(56,5),(57,5),(61,5),(62,5),(63,5),(64,5),(65,5),(66,5),(67,5),(69,5),(72,5),(73,5),(74,5),(77,5),(78,5),(79,5),(80,5),(81,5),(83,5),(84,5),(87,5),(88,5),(89,5),(90,5),(92,5),(93,5),(95,5),(96,5),(97,5),(101,5),(102,5),(103,5),(105,5),(107,5),(109,5),(111,5),(10,6),(14,6),(16,6),(19,6),(21,6),(22,6),(23,6),(24,6),(26,6),(27,6),(28,6),(29,6),(37,6),(42,6),(43,6),(44,6),(45,6),(47,6),(50,6),(56,6),(58,6),(63,6),(65,6),(67,6),(69,6),(70,6),(71,6),(74,6),(75,6),(80,6),(83,6),(84,6),(85,6),(86,6),(87,6),(88,6),(91,6),(92,6),(98,6),(99,6),(100,6),(101,6),(102,6),(104,6),(106,6),(108,6),(110,6),(111,6),(112,6);
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

-- Dump completed on 2020-12-26 18:28:23
