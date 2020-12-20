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
  UNIQUE KEY `profiles_UN` (`user_id`),
  CONSTRAINT `profiles_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=875 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (755,'Bio de Oprah','Description de Oprah',523),(756,'Bio de Lynn','Description de Lynn',524),(757,'Bio de Wayne','Description de Wayne',525),(758,'Bio de Shana','Description de Shana',526),(759,'Bio de Merrill','Description de Merrill',527),(760,'Bio de Minerva','Description de Minerva',528),(761,'Bio de Ishmael','Description de Ishmael',529),(762,'Bio de Xyla','Description de Xyla',530),(763,'Bio de Giacomo','Description de Giacomo',531),(764,'Bio de Lucian','Description de Lucian',532),(765,'Bio de Iona','Description de Iona',533),(766,'Bio de Nyssa','Description de Nyssa',534),(767,'Bio de Lacy','Description de Lacy',535),(768,'Bio de Karina','Description de Karina',536),(769,'Bio de Carly','Description de Carly',537),(770,'Bio de Madison','Description de Madison',538),(771,'Bio de Carly','Description de Carly',539),(772,'Bio de Eric','Description de Eric',540),(773,'Bio de Hannah','Description de Hannah',541),(774,'Bio de Gray','Description de Gray',542),(775,'Bio de Seth','Description de Seth',543),(776,'Bio de Leandra','Description de Leandra',544),(777,'Bio de Jillian','Description de Jillian',545),(778,'Bio de Baker','Description de Baker',546),(779,'Bio de Kennan','Description de Kennan',547),(780,'Bio de Hedy','Description de Hedy',548),(781,'Bio de Dolan','Description de Dolan',549),(782,'Bio de Tanisha','Description de Tanisha',550),(783,'Bio de Hedwig','Description de Hedwig',551),(784,'Bio de Xanthus','Description de Xanthus',552),(785,'Bio de Xavier','Description de Xavier',553),(786,'Bio de Melissa','Description de Melissa',554),(787,'Bio de Elijah','Description de Elijah',555),(788,'Bio de Xena','Description de Xena',556),(789,'Bio de Hayfa','Description de Hayfa',557),(790,'Bio de Armando','Description de Armando',558),(791,'Bio de Hayley','Description de Hayley',559),(792,'Bio de Zia','Description de Zia',560),(793,'Bio de Vernon','Description de Vernon',561),(794,'Bio de Zachery','Description de Zachery',562),(795,'Bio de Hayfa','Description de Hayfa',563),(796,'Bio de Rosalyn','Description de Rosalyn',564),(797,'Bio de Kalia','Description de Kalia',565),(798,'Bio de Xavier','Description de Xavier',566),(799,'Bio de Jaime','Description de Jaime',567),(800,'Bio de Magee','Description de Magee',568),(801,'Bio de Alika','Description de Alika',569),(802,'Bio de Xyla','Description de Xyla',570),(803,'Bio de Tatum','Description de Tatum',571),(804,'Bio de Hilda','Description de Hilda',572),(805,'Bio de Jordan','Description de Jordan',573),(806,'Bio de Iris','Description de Iris',574),(807,'Bio de Tanek','Description de Tanek',575),(808,'Bio de Fitzgerald','Description de Fitzgerald',576),(809,'Bio de Allen','Description de Allen',577),(810,'Bio de Cedric','Description de Cedric',578),(811,'Bio de Ira','Description de Ira',579),(812,'Bio de Kuame','Description de Kuame',580),(813,'Bio de Dorian','Description de Dorian',581),(814,'Bio de Emerson','Description de Emerson',582),(815,'Bio de Buckminster','Description de Buckminster',583),(816,'Bio de Candice','Description de Candice',584),(817,'Bio de Moses','Description de Moses',585),(818,'Bio de Ima','Description de Ima',586),(819,'Bio de Barry','Description de Barry',587),(820,'Bio de Geoffrey','Description de Geoffrey',588),(821,'Bio de Jared','Description de Jared',589),(822,'Bio de Molly','Description de Molly',590),(823,'Bio de Wang','Description de Wang',591),(824,'Bio de Cain','Description de Cain',592),(825,'Bio de Giacomo','Description de Giacomo',593),(826,'Bio de Katelyn','Description de Katelyn',594),(827,'Bio de Evelyn','Description de Evelyn',595),(828,'Bio de Hamish','Description de Hamish',596),(829,'Bio de Haley','Description de Haley',597),(830,'Bio de Ryan','Description de Ryan',598),(831,'Bio de Suki','Description de Suki',599),(832,'Bio de Thaddeus','Description de Thaddeus',600),(833,'Bio de John','Description de John',601),(834,'Bio de Travis','Description de Travis',602),(835,'Bio de Cameron','Description de Cameron',603),(836,'Bio de Howard','Description de Howard',604),(837,'Bio de Arthur','Description de Arthur',605),(838,'Bio de Buffy','Description de Buffy',606),(839,'Bio de Blythe','Description de Blythe',607),(840,'Bio de Elaine','Description de Elaine',608),(841,'Bio de Riley','Description de Riley',609),(842,'Bio de Hayden','Description de Hayden',610),(843,'Bio de Dennis','Description de Dennis',611),(844,'Bio de Len','Description de Len',612),(845,'Bio de Harding','Description de Harding',613),(846,'Bio de Jelani','Description de Jelani',614),(847,'Bio de Hilda','Description de Hilda',615);
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
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
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
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `salary` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_un_email` (`email`),
  UNIQUE KEY `users_un_password_hash` (`password_hash`)
) ENGINE=InnoDB AUTO_INCREMENT=617 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (516,'Tanner','Mayo','vitae.diam@consectetueripsum.ca','QLN12HIN3RL','2021-07-25 22:12:26','2020-12-18 17:08:36',7972.60),(517,'Brittany','Stewart','nibh.sit@nunc.edu','ROM35HMM4SA','2020-08-22 13:41:06','2020-12-18 17:08:36',6438.43),(518,'Ferris','Hall','neque.Morbi@porttitorscelerisqueneque.edu','YTU15GQR9HT','2020-02-28 05:52:36','2020-12-18 17:08:36',8274.36),(519,'Jacob','Manning','risus.at@sociis.edu','EQS93HLI6QZ','2021-04-22 06:01:30','2020-12-18 17:08:36',2056.52),(520,'Keelie','Petersen','Nulla@lobortis.org','ZHE87TSO6DA','2021-07-10 20:51:19','2020-12-18 17:08:36',5459.51),(523,'Oprah','Reeves','nisi.nibh.lacinia@mattissemper.net','LYD20HWD3UN','2020-03-05 13:41:49','2020-12-18 17:08:36',1127.99),(524,'Lynn','Hendricks','neque.tellus.imperdiet@dolor.net','CRA59DIT0TW','2020-04-12 15:26:28','2020-12-18 17:08:36',9261.44),(525,'Wayne','Walters','torquent.per.conubia@Utsagittislobortis.co.uk','BVD19AUV2JO','2020-10-04 03:36:24','2020-12-18 17:08:36',2923.21),(526,'Shana','Barnett','tempus.scelerisque@lectusjustoeu.net','GXF87LGA4XZ','2020-01-26 04:16:58','2020-12-18 17:08:36',6831.73),(527,'Merrill','Dunn','a.feugiat.tellus@CuraePhasellus.ca','BQS83WCA3QM','2021-05-27 20:27:02','2020-12-18 17:08:36',5389.03),(528,'Minerva','Craft','ac.mattis@liberoIntegerin.ca','XAX94LBA7BI','2021-11-17 20:14:37','2020-12-18 17:08:36',6449.95),(529,'Ishmael','Garcia','Nunc.sed@tellus.co.uk','MYA25WWC2HB','2020-04-15 17:51:28','2020-12-18 17:08:36',6082.66),(530,'Xyla','Rocha','mi.enim.condimentum@faucibus.ca','NJB51CIZ2YT','2021-10-11 14:19:33','2020-12-18 17:08:36',1063.44),(531,'Giacomo','Kidd','quis.diam@convallisin.com','QAM99GPQ0BE','2020-05-14 16:04:51','2020-12-18 17:08:36',7069.23),(532,'Lucian','Shepherd','dis@Integervulputate.co.uk','PKI61CTD1WE','2021-02-20 06:42:36','2020-12-18 17:08:36',2155.82),(533,'Iona','Gillespie','ac.facilisis@vitae.org','THH68JIH4QZ','2020-08-27 05:26:00','2020-12-18 17:08:36',9571.41),(534,'Nyssa','Roberson','massa.Suspendisse@nisidictumaugue.co.uk','VOW26KCN4CZ','2021-01-11 19:18:46','2020-12-18 17:08:36',1389.59),(535,'Lacy','Guthrie','purus@ullamcorper.net','NGL35MWG5OL','2020-03-15 04:05:58','2020-12-18 17:08:36',8233.74),(536,'Karina','Carson','a.aliquet@cursusaenim.org','RMZ97KTB0LP','2020-11-09 01:34:20','2020-12-18 17:08:36',6999.93),(537,'Carly','Wilkinson','egestas.a.dui@utcursusluctus.co.uk','YUS28DJB5UR','2021-05-28 19:43:17','2020-12-18 17:08:36',298.42),(538,'Madison','Pierce','arcu.eu@antelectus.edu','JVZ98CGE6XW','2020-09-04 19:06:55','2020-12-18 17:08:36',492.31),(539,'Carly','Guerrero','feugiat.non.lobortis@porttitorvulputate.ca','HAS68KVZ2IW','2021-01-26 02:40:51','2020-12-18 17:08:36',1566.31),(540,'Eric','Cash','Aenean.eget@libero.ca','JTY19RSK6AY','2021-08-28 16:36:43','2020-12-18 17:08:36',6354.60),(541,'Hannah','Pitts','dapibus.ligula.Aliquam@magnaPhasellusdolor.ca','OMF54AOD3FM','2021-08-28 19:44:45','2020-12-18 17:08:36',7074.08),(542,'Gray','Barnes','Aenean.egestas.hendrerit@pharetranibh.edu','RUY00LNZ4XD','2021-02-09 12:08:06','2020-12-18 17:08:36',6306.60),(543,'Seth','Duke','ante.ipsum.primis@Quisque.ca','YUA24MFN1ES','2020-09-27 01:28:26','2020-12-18 17:08:36',310.75),(544,'Leandra','Ratliff','Suspendisse@feugiatSednec.edu','HSC55TYX0JV','2020-01-25 09:46:01','2020-12-18 17:08:36',2633.94),(545,'Jillian','Lamb','arcu@rutrum.org','DWR34TLE3MF','2020-06-07 09:55:48','2020-12-18 17:08:36',2237.47),(546,'Baker','Richards','elit@Maecenasmalesuada.edu','UPI22LBI7ZW','2020-02-22 22:36:48','2020-12-18 17:08:36',3285.52),(547,'Kennan','Callahan','tortor.dictum.eu@intempus.org','GEL99BNX1UJ','2021-12-03 20:48:09','2020-12-18 17:08:36',9715.19),(548,'Hedy','Kim','amet@cursusinhendrerit.com','NZR75UQU2MQ','2020-12-27 02:47:14','2020-12-18 17:08:36',8719.39),(549,'Dolan','Pearson','semper.tellus.id@fringillaporttitor.edu','HXS85QIR7YW','2021-06-12 00:11:24','2020-12-18 17:08:36',4451.37),(550,'Tanisha','Atkins','convallis.ante@id.org','QFN12VIE2CM','2021-09-07 00:41:28','2020-12-18 17:08:36',6098.71),(551,'Hedwig','Freeman','elit.Curabitur@dolorvitaedolor.co.uk','WFW24JAV6HV','2020-07-19 17:14:29','2020-12-18 17:08:36',7139.41),(552,'Xanthus','Dejesus','diam@Suspendisse.co.uk','FDB64NOK6HP','2020-02-16 20:16:21','2020-12-18 17:08:36',7400.93),(553,'Xavier','Walton','magna.Phasellus@orci.co.uk','ROH80LTQ3UL','2021-04-09 23:42:08','2020-12-18 17:08:36',5586.40),(554,'Melissa','Boone','Nullam.scelerisque.neque@imperdietdictummagna.com','ILA84FVZ1LT','2021-01-02 11:12:48','2020-12-18 17:08:36',5729.24),(555,'Elijah','Espinoza','Nunc.ac.sem@necimperdietnec.edu','CUY37VUP3IR','2020-01-31 13:09:25','2020-12-18 17:08:36',1886.99),(556,'Xena','Aguirre','mollis.Integer@Phasellus.edu','TGB25KRR0VO','2020-03-10 08:58:41','2020-12-18 17:08:36',2247.25),(557,'Hayfa','Powers','posuere.at.velit@fringillaporttitor.edu','TEO28VNF5BU','2021-01-18 08:44:16','2020-12-18 17:08:36',5575.27),(558,'Armando','Nunez','nulla.ante.iaculis@Morbiaccumsanlaoreet.ca','XUT85OLS0CA','2021-11-07 05:13:37','2020-12-18 17:08:36',1134.59),(559,'Hayley','Stanley','ipsum.Suspendisse@velit.edu','SWB87FCO7UY','2020-04-20 07:20:53','2020-12-18 17:08:36',8947.15),(560,'Zia','Elliott','In.lorem.Donec@mattis.com','SXA35NRK8LC','2021-09-08 10:45:44','2020-12-18 17:08:36',1331.98),(561,'Vernon','Wolf','porttitor.scelerisque.neque@disparturient.net','RSJ71EFP1HP','2020-05-17 20:37:24','2020-12-18 17:08:36',9818.43),(562,'Zachery','Copeland','libero@anunc.edu','HTN15HIK1JO','2020-05-12 02:22:09','2020-12-18 17:08:36',5096.24),(563,'Hayfa','Tanner','dignissim.Maecenas@eueros.co.uk','VFK34JGG4GH','2020-07-08 00:25:22','2020-12-18 17:08:36',6025.89),(564,'Rosalyn','Mercado','ullamcorper.nisl.arcu@eunequepellentesque.org','YZT80OSH6AS','2021-09-04 11:33:50','2020-12-18 17:08:36',4840.72),(565,'Kalia','Russell','Pellentesque@placerat.net','GHM91NMW9XI','2021-09-07 18:07:42','2020-12-18 17:08:36',6125.93),(566,'Xavier','Coleman','Proin@velitAliquamnisl.net','TES61QXM8OK','2020-10-11 20:29:25','2020-12-18 17:08:36',6107.49),(567,'Jaime','Dalton','lorem.semper.auctor@fringillaornareplacerat.co.uk','IZN87CKQ8NY','2021-06-04 02:43:01','2020-12-18 17:08:36',2159.66),(568,'Magee','Wynn','non.egestas.a@cubiliaCuraePhasellus.co.uk','XBZ84QFE1QJ','2021-07-10 21:33:24','2020-12-18 17:08:36',2475.82),(569,'Alika','Sims','augue.ut@Nullasemper.edu','IZH92SNA7CY','2021-07-28 20:20:41','2020-12-18 17:08:36',5900.15),(570,'Xyla','Fletcher','est.Nunc.ullamcorper@vestibulum.ca','JCW18ISX7FC','2020-02-19 15:33:39','2020-12-18 17:08:36',2073.27),(571,'Tatum','Houston','elementum@rutrumnonhendrerit.com','UGI43ADF3ZF','2019-12-29 01:46:33','2020-12-18 17:08:36',2665.91),(572,'Hilda','Graves','Nullam.ut.nisi@arcuMorbisit.org','ZXM84DUO5RH','2020-12-16 14:48:40','2020-12-18 17:08:36',7109.75),(573,'Jordan','Gould','turpis.vitae@penatibus.edu','SDR33TEI1JY','2020-01-21 07:33:05','2020-12-18 17:08:36',7551.00),(574,'Iris','Whitehead','massa@egestasSedpharetra.com','POB14LPE6JA','2021-08-30 03:23:44','2020-12-18 17:08:36',6425.78),(575,'Tanek','English','metus.vitae.velit@inmagna.com','NDC34LGD4UO','2021-03-23 19:31:26','2020-12-18 17:08:36',9475.88),(576,'Fitzgerald','Dickson','ac.feugiat@ullamcorper.edu','BVE71ESA2VJ','2020-05-01 23:14:53','2020-12-18 17:08:36',8102.06),(577,'Allen','Cotton','placerat.Cras@quamdignissimpharetra.ca','NRY69AEP4GD','2020-01-01 04:24:42','2020-12-18 17:08:36',2082.68),(578,'Cedric','Davenport','Nam@nullaInteger.org','GDU02ZWD8IA','2021-08-02 07:34:58','2020-12-18 17:08:36',6107.22),(579,'Ira','Davenport','Morbi@rutrum.ca','WPZ92RAW1JW','2021-04-16 22:20:05','2020-12-18 17:08:36',4288.04),(580,'Kuame','Buchanan','tellus.justo@dapibus.ca','SXX86HNJ8PE','2021-01-06 04:08:11','2020-12-18 17:08:36',3118.56),(581,'Dorian','Clemons','arcu.ac@Integerinmagna.co.uk','UWP21NIC6YQ','2020-09-28 09:55:45','2020-12-18 17:08:36',2728.66),(582,'Emerson','Howe','feugiat.tellus.lorem@Classaptenttaciti.net','FWN62CYE5PF','2020-02-11 13:43:09','2020-12-18 17:08:36',4287.63),(583,'Buckminster','Sharpe','Pellentesque.habitant.morbi@Aenean.ca','HVG02WFR3PT','2020-06-03 00:15:09','2020-12-18 17:08:36',3252.16),(584,'Candice','Fields','quis@fringilla.co.uk','JXT67OZX6XN','2020-08-03 08:47:56','2020-12-18 17:08:36',3397.93),(585,'Moses','Paul','pretium.et.rutrum@nisi.net','QSA85YOL4PB','2020-09-17 23:42:14','2020-12-18 17:08:36',7233.17),(586,'Ima','Sawyer','ornare.Fusce.mollis@inconsequat.net','DYC03ASQ5KM','2020-02-14 23:29:44','2020-12-18 17:08:36',5972.07),(587,'Barry','Wooten','aliquet.vel.vulputate@posuereenimnisl.com','PLK61AYG5IH','2020-09-15 23:40:51','2020-12-18 17:08:36',8160.85),(588,'Geoffrey','Meyer','sem@laciniaSedcongue.net','CIQ44MQS9YO','2020-11-24 16:46:18','2020-12-18 17:08:36',2888.01),(589,'Jared','Zimmerman','Praesent.eu@diam.com','HIH19QIW5LZ','2021-12-09 09:45:27','2020-12-18 17:08:36',9957.53),(590,'Molly','Benton','elit.Etiam.laoreet@inmagna.org','PYW76ZKR7PS','2020-09-25 12:04:19','2020-12-18 17:08:36',1123.60),(591,'Wang','Webb','netus@arcuimperdiet.org','TXD59LXO7YR','2020-11-20 01:52:21','2020-12-18 17:08:36',5745.41),(592,'Cain','Pacheco','libero.mauris@semutdolor.co.uk','PKF15YOD8ZZ','2021-05-02 05:23:44','2020-12-18 17:08:36',5356.27),(593,'Giacomo','Mccullough','odio@nonmassa.ca','GTY42BME9AN','2020-07-18 04:09:18','2020-12-18 17:08:36',9545.11),(594,'Katelyn','Carney','in.molestie@quisturpisvitae.edu','VEV32VLJ8LV','2020-11-18 21:26:37','2020-12-18 17:08:36',1656.73),(595,'Evelyn','Decker','Suspendisse.aliquet.molestie@lacus.co.uk','QRQ49FUY6QF','2021-02-21 13:38:08','2020-12-18 17:08:36',9648.31),(596,'Hamish','Campos','a.odio@et.edu','JKT18FNQ7ZV','2020-09-18 03:06:31','2020-12-18 17:08:36',3271.36),(597,'Haley','Hobbs','lacus.Quisque@nonlobortis.co.uk','TGP40NLZ6BQ','2020-05-14 22:11:58','2020-12-18 17:08:36',7411.87),(598,'Ryan','Bishop','vestibulum.massa.rutrum@perconubianostra.net','BUS13NPN9FX','2021-03-31 06:59:57','2020-12-18 17:08:36',7245.27),(599,'Suki','Chambers','amet@pharetranibh.com','BJY34VDO6QO','2020-06-12 17:38:52','2020-12-18 17:08:36',3990.76),(600,'Thaddeus','Noble','tempor@actellus.co.uk','IHG89RMX3OI','2020-11-12 18:35:31','2020-12-18 17:08:36',8217.96),(601,'John','Orr','eros.Nam@Curabitur.net','JDD45SGI9UI','2020-03-10 01:38:18','2020-12-18 17:08:36',9117.54),(602,'Travis','Hughes','elit.Aliquam@lacus.ca','RQI44ZJK3FH','2021-08-01 05:20:23','2020-12-18 17:08:36',933.84),(603,'Cameron','Copeland','Donec@nisiaodio.edu','QGW70CYB2SD','2020-11-05 17:12:28','2020-12-18 17:08:36',7316.55),(604,'Howard','Cash','lorem@nonlobortisquis.org','DIF42OGX2PS','2020-03-24 20:35:29','2020-12-18 17:08:36',3781.26),(605,'Arthur','Hale','Aenean@Ut.edu','ESH22TJS0AA','2020-01-21 08:24:40','2020-12-18 17:08:36',6956.61),(606,'Buffy','Riddle','posuere.vulputate.lacus@dignissim.org','AGP47FVJ0FH','2020-03-06 03:08:47','2020-12-18 17:08:36',3439.31),(607,'Blythe','Todd','iaculis@Quisquenonummy.com','CZQ81FMO0DG','2020-02-04 15:44:37','2020-12-18 17:08:36',6326.71),(608,'Elaine','Cotton','neque.vitae.semper@odio.net','DGZ74IDT5OX','2021-09-27 04:40:21','2020-12-18 17:08:36',1315.60),(609,'Riley','Frazier','Sed.neque@facilisisSuspendisse.co.uk','AGZ17TIV3MS','2020-10-22 03:33:55','2020-12-18 17:08:36',7597.88),(610,'Hayden','Hodges','arcu.et.pede@maurissagittisplacerat.org','DWT14ISL3FX','2020-07-18 09:48:50','2020-12-18 17:08:36',4042.60),(611,'Dennis','Conrad','ultrices@consectetuermaurisid.net','NHY14EKI6AN','2020-12-27 04:35:07','2020-12-18 17:08:36',7419.38),(612,'Len','Graham','metus.In.nec@arcuSed.ca','MTO36MZQ4GA','2021-11-22 06:47:54','2020-12-18 17:08:36',4969.07),(613,'Harding','Lester','semper.cursus@porttitorscelerisqueneque.net','QKK49WUE8XY','2021-12-01 12:04:13','2020-12-18 17:08:36',2587.21),(614,'Jelani','Townsend','ridiculus.mus@molestietellusAenean.net','IQG53SCW4XD','2021-02-08 18:11:04','2020-12-18 17:08:36',8028.84),(615,'Hilda','Valentine','mollis.Duis@aaliquetvel.co.uk','SOA17EEA6KX','2021-03-30 01:48:13','2020-12-18 17:08:36',2382.56);
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
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `users_roles_FK_1` (`role_id`),
  CONSTRAINT `users_roles_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `users_roles_FK_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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

-- Dump completed on 2020-12-19  1:58:57
