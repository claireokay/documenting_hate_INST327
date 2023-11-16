-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: documenting_hate
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `arrests_made`
--

DROP TABLE IF EXISTS `arrests_made`;
/*!50001 DROP VIEW IF EXISTS `arrests_made`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `arrests_made` AS SELECT 
 1 AS `trial_id`,
 1 AS `crime_id`,
 1 AS `status_type`,
 1 AS `arrested_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `article_id` double NOT NULL,
  `article_summary` longtext,
  `article_date` date DEFAULT NULL,
  `article_title` longtext,
  `org_id` int DEFAULT NULL,
  `crime_id` int DEFAULT NULL,
  PRIMARY KEY (`article_id`),
  KEY `fk_article_org_id` (`org_id`),
  KEY `fk_crime_id_idx` (`crime_id`),
  CONSTRAINT `fk_article_org_id` FOREIGN KEY (`org_id`) REFERENCES `reporting_org` (`org_id`),
  CONSTRAINT `fk_crime_id` FOREIGN KEY (`crime_id`) REFERENCES `crimes` (`crime_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'A white military veteran accused of a hate crime for the stabbing death of a black man in New York regarded the attack as practice for a larger assault he hoped to carry out in Times Square, court documents claim.','2017-03-24','White veteran \'regarded fatal stabbing of black man as practice for larger attack\'',1,38),(2,'bomb threats to jewish school','2017-03-24','It\'s time for South Asians to get stuck in the gossip',2,39),(3,'bomb threats to intimidate girlfriend ','2017-03-24','bomb threats to intimidate girlfriend ',3,40),(4,'A white supremacist who traveled to New York City to kill black men subscribed to numerous neo-Nazi, anti-feminist and far-right conspiracy theory channels on YouTube, according to what appears to be his personal account on the website. ','2017-03-24','White supremacist who traveled to New York to murder black men followed extremist racist online groups who support Trump',4,41),(5,'Family suspects son-in-law in woman-son murder case in NJ, police investigates','2017-03-24','Family suspects son-in-law in woman-son murder case in NJ, police investigates',5,42),(6,'Local activist and others take a new look at the Emmett Till case','2017-03-24','Local activist and others take a new look at the Emmett Till case',6,43),(7,NULL,'2017-03-24','Junction City gunman to face hate crime charges',7,44),(8,'A wave of bomb threats against hundreds of Jewish institutions across the country have incited worries about a resurgence of anti-Semitism in America.   	','2017-03-24','The Hate Report: Fake hate strikes. So does real hate',8,45),(9,'Hampden vigil to honor New York man killed in alleged hate crime','2017-03-24','Hampden vigil to honor New York man killed in alleged hate crime',9,46),(10,NULL,'2017-03-24','Junction City gunman to face hate crimes charges',10,47),(11,'White man shouts \'go back to Lebanon\' to Sikh-American girl','2017-03-24','White man shouts \'go back to Lebanon\' to Sikh-American girl',11,48),(12,'NULL',NULL,'A Sikh-American girl was harassed on a subway train in New York when a white man, mistaking her to be from the Middle East, allegedly shouted \"go back to Lebanon\"\" and \"\"you don\'t belong in this country',12,49),(13,'Man shouts \'go back to Lebanon\' to Sikh-American girl on NY subway','2017-03-25','Man shouts \'go back to Lebanon\' to Sikh-American girl on NY subway',13,50),(14,'De Blasio blames \'dynamic of hatred\' created by Trump for racist murder','2017-03-25','De Blasio blames \'dynamic of hatred\' created by Trump for racist murder',14,51),(15,'Junction City Man Faces Hate Crime Charge','2017-03-25','Junction City Man Faces Hate Crime Charge',15,52),(16,'Why would anybody do this?\' Immigrants unsettled by Tri-City incidents','2017-03-25','Why would anybody do this?\' Immigrants unsettled by Tri-City incidents',16,53),(17,'Baltimore vigils remember NYC man killed in apparent hate crime','2017-03-25','Baltimore vigils remember NYC man killed in apparent hate crime',17,54),(18,'Balance of Power: South Asian hate crimes','2017-03-26','Balance of Power: South Asian hate crimes',18,55),(19,'Rocks, Bible thrown through windows of mosque','2017-03-26','Rocks, Bible thrown through windows of mosque',19,56),(20,'Suspect says he would rather have killed younger black man','2017-03-26','Suspect says he would rather have killed younger black man',20,57),(21,'New York City: Army veteran kills 66-year-old black man in racist attack','2017-03-26','New York City: Army veteran kills 66-year-old black man in racist attack',21,58),(23,'Police investigate vandalism at Colorado mosque','2017-03-27','Bible, rocks thrown through doors of Colorado mosque',22,59),(24,'White Supremacist Charged With Murdering 66-Year-Old Black Stranger Says He Wishes He Killed Someone Younger','2017-03-27','Police investigate vandalism at Colorado mosque',23,60),(25,'Racist sword killer says he\'d mulled racial attack for years','2017-03-27','White Supremacist Charged With Murdering 66-Year-Old Black Stranger Says He Wishes He Killed Someone Younger',24,61),(26,'Racist Murderer Wishes Elderly Black Man He Killed Was A \'Young Thug\'','2017-03-27','Racist sword killer says he\'d mulled racial attack for years',25,62),(27,'The Latest: White racist charged with murder as terrorism','2017-03-27','Racist Murderer Wishes Elderly Black Man He Killed Was A \'Young Thug\'',26,63),(28,'Man who came to NYC to \'kill black men\' indicted on terrorism charges','2017-03-27','The Latest: White racist charged with murder as terrorism',27,64),(29,'Instead of denouncing hate crime murder, Sean Spicer implied conservatives are the victims','2017-03-27','Man who came to NYC to \'kill black men\' indicted on terrorism charges',28,65),(30,'Man arrested in connection with vandalism at Colorado mosque','2017-03-27','Instead of denouncing hate crime murder, Sean Spicer implied conservatives are the victims',29,66),(31,'Man arrested in connection with vandalism at Colorado mosque','2017-03-27','Man arrested in connection with vandalism at Colorado mosque',30,67),(32,'Man arrested in connection with vandalism at Colorado mosque','2017-03-27','Man arrested in connection with vandalism at Colorado mosque',31,68),(33,'Man arrested in connection with vandalism at Colorado mosque ','2017-03-27','Man arrested in connection with vandalism at Colorado mosque ',32,69),(34,'','2017-03-27','Man arrested in connection with vandalism at Colorado mosque ',33,70),(36,'','2017-03-27','DA VANCE: JAMES JACKSON INDICTED ON CHARGES OF MURDER IN THE FIRST AND SECOND DEGREES, AMONG OTHER CHARGES',34,71);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crimes`
--

DROP TABLE IF EXISTS `crimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crimes` (
  `crime_id` int NOT NULL,
  `crime_type` varchar(45) DEFAULT NULL,
  `crime_city` varchar(45) DEFAULT NULL,
  `crime_state` varchar(45) DEFAULT NULL,
  `crime_country` varchar(45) DEFAULT NULL,
  `crime_motivation` varchar(45) DEFAULT NULL,
  `victim_id` int DEFAULT NULL,
  `suspect_id` int DEFAULT NULL,
  PRIMARY KEY (`crime_id`),
  KEY `fk_victim_id` (`victim_id`),
  KEY `fk_suspect_id` (`suspect_id`),
  CONSTRAINT `fk_suspect_id` FOREIGN KEY (`suspect_id`) REFERENCES `suspect` (`suspect_id`),
  CONSTRAINT `fk_victim_id` FOREIGN KEY (`victim_id`) REFERENCES `victim` (`victim_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crimes`
--

LOCK TABLES `crimes` WRITE;
/*!40000 ALTER TABLE `crimes` DISABLE KEYS */;
INSERT INTO `crimes` VALUES (38,'murder ',NULL,'NY','USA','Hate Crime',1,1),(39,'murder ','Seattle ','WA','USA','Hate Crime',2,2),(40,'threat/attempted murder','West Palm Beach','FL','USA','Hate Crime',3,3),(41,'murder ',NULL,'NY','USA','Hate Crime',4,4),(42,'murder ','Waltham','MA','USA','Hate Crime',5,5),(43,'murder ','Kansas City','KS','USA','Hate Crime',6,6),(44,'threat/attempted murder','Stevens Point','WI','USA','Hate Crime',7,7),(45,'threat/attempted murder','Emeryvile','CA','USA','Hate Crime',8,8),(46,'murder ','Baltimore','MD','USA','Hate Crime',9,9),(47,'threat/attempted murder','Sheboygan','WI','USA','Hate Crime',10,10),(48,'assault','Union City','CA','USA','Hate Crime',11,11),(49,'assault','Altadena ','CA','USA','Hate Crime',12,12),(50,'threat/attempted murder','Milwaukee','WI','USA','Hate Crime',13,13),(51,'threat/attempted murder','kennewick','WA','USA','Hate Crime',14,14),(52,'murder ',NULL,'NY','USA','Hate Crime',15,15),(53,'threat/attempted murder','Denver','CO','USA','Hate Crime',16,16),(54,'violence ','Clumbus','OH','USA','Hate Crime',17,17),(55,'threat/attempted murder','Wichita','KS','USA','Hate Crime',18,18),(56,'murder ','Oak Park','MI','USA','Hate Crime',19,19),(57,'violence ','Orlando','FL','USA','Hate Crime',20,20),(58,'vandalism ','Greeneville','TN','USA','Hate Crime',21,21),(59,'murder ',NULL,'NY','USA','Hate Crime',22,22),(60,'murder ','Wichita','KS','USA','Hate Crime',23,23),(61,'murder ','San Ramon','CA','USA','Hate Crime',24,24),(62,'murder ','Washington','DC','USA','Hate Crime',25,25),(63,'terrorism','New York City','NY','USA','Hate Crime',26,26),(64,'murder ','New York','NY','USA','Hate Crime',27,27),(65,'vandalism ','Charlotte','NC','USA','Hate Crime',28,28),(66,'vandalism ','Colorado Springs','CO','USA','Hate Crime',29,29),(67,'vandalism ','Spokane','WA','USA','Hate Crime',30,30),(68,'vandalism ','Youngstown','OH','USA','Hate Crime',31,31),(69,'murder ','New York','NY','USA','Hate Crime',32,32),(70,'vandalism',NULL,'CO','USA','Hate Crime',33,33),(71,'vandalism',NULL,'CO','USA','Hate Crime',34,34);
/*!40000 ALTER TABLE `crimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `most_offended_groups`
--

DROP TABLE IF EXISTS `most_offended_groups`;
/*!50001 DROP VIEW IF EXISTS `most_offended_groups`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `most_offended_groups` AS SELECT 
 1 AS `victim_group`,
 1 AS `suspect_group`,
 1 AS `num_crimes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `murder_crimes`
--

DROP TABLE IF EXISTS `murder_crimes`;
/*!50001 DROP VIEW IF EXISTS `murder_crimes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `murder_crimes` AS SELECT 
 1 AS `article_title`,
 1 AS `article_summary`,
 1 AS `organization_name`,
 1 AS `organization_city`,
 1 AS `organization_state`,
 1 AS `crime_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `reporting_org`
--

DROP TABLE IF EXISTS `reporting_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reporting_org` (
  `org_id` int NOT NULL,
  `organization_name` varchar(45) NOT NULL,
  `organization_city` varchar(45) DEFAULT NULL,
  `organization_state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporting_org`
--

LOCK TABLES `reporting_org` WRITE;
/*!40000 ALTER TABLE `reporting_org` DISABLE KEYS */;
INSERT INTO `reporting_org` VALUES (1,'The Guardian',NULL,NULL),(2,'Seattle Globalist','Seattle','WA'),(3,'BizPac Review','West Palm Beach','Florida'),(4,'Salon',NULL,NULL),(5,'India New England','Waltham','MA'),(6,'Wyandotte Daily','Kansas City','KS'),(7,'Stevens Point Journal','Stevens Point','WI'),(8,'Reveal','Emeryville','CA'),(9,'Baltimore Sun','Baltimore','MD'),(10,'The Sheboygan Press','Sheboygan','WI'),(11,'IndiaPost.com','Union City','CA'),(12,'Yahoo News','Altadena','California'),(13,'The Times',NULL,NULL),(14,'American Thinker','Bellevue','WA'),(15,'WDJT','Milwaukee','WI'),(16,'Tri-City Herald','Kennewick','WA'),(17,'Fox Baltimore',NULL,NULL),(18,'9NEWS.com','Denver','CO'),(19,'NBC4i.com','Columbus','OH'),(20,'Wichita Eagle','Wichita','KS'),(21,'World Socialist Web Site','Oak Park','MI'),(22,'WESH Orlando','Orlando','FL'),(23,'Greeneville Sun','Greeneville','TN'),(24,'Newsday','New York','New York'),(25,'LawNewz',NULL,NULL),(26,'Wichita Eagle','Wichita','KS'),(27,'Carbonated.tv','San Ramon','CA'),(28,'Washington Post','Washington','DC'),(29,'New York\'s PIX11 / WPIX-TV','New York City','New York'),(30,'Mic','New York','NY'),(31,'WSOC Charlotte','Charlotte','NC'),(32,'KOAA.com Colorado Springs and Pueblo News','Colorado Springs','Colorado'),(33,'KHQ Right Now','Spokane','WA'),(34,'WFMJ','Youngstown','OH'),(35,'manhattanda.org','New York','NY');
/*!40000 ALTER TABLE `reporting_org` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `status_id` int NOT NULL,
  `status_type` varchar(45) NOT NULL,
  PRIMARY KEY (`status_id`,`status_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Awaiting Trial'),(2,'Arrested'),(3,'In Custody'),(4,'Trial in Progress'),(5,'No Action'),(6,'Trial Ajourned'),(7,'Suspect Guilty'),(8,'Suspect Not Guilty'),(9,'Awaiting Trial'),(10,'Dropped Case'),(11,'Trial Date Set'),(12,'Cold Case'),(13,'Reopened'),(14,'Set For Review'),(15,'New Filing'),(16,'Bail Set'),(17,'Bail Paid'),(18,'Charged'),(19,'Charges Droped'),(20,'Exonerated'),(21,'Expunged '),(22,'Retrial '),(23,'Awaiting Retrial'),(24,'Retrial Denied'),(25,'Court Adjourned'),(26,'Jury Decideing'),(27,'Jury Verdict Complete'),(28,'Sentenced'),(29,'Awaiting Hearing'),(30,'N/A');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suspect`
--

DROP TABLE IF EXISTS `suspect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suspect` (
  `suspect_id` int NOT NULL,
  `suspect_name` varchar(45) DEFAULT NULL,
  `suspect_age` int DEFAULT NULL,
  `suspect_gender` varchar(45) DEFAULT NULL,
  `suspect_group` varchar(45) DEFAULT NULL,
  `suspect_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`suspect_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suspect`
--

LOCK TABLES `suspect` WRITE;
/*!40000 ALTER TABLE `suspect` DISABLE KEYS */;
INSERT INTO `suspect` VALUES (1,'James Jackson',26,'M','White','Arrested'),(2,'Adam Purinton',52,'M','White','Arrested'),(3,'Juan Thompson ',NULL,'M','Black','Arrested'),(4,'James Harris ',NULL,'M','White','Arrested'),(5,'Hanumantha Rao ',NULL,'M','Asian',NULL),(6,NULL,NULL,'F','White',NULL),(7,'Henry Kaminski',80,'M','White','Arrested'),(8,NULL,NULL,NULL,NULL,NULL),(9,'James  Jackson',NULL,'M','White','Arrested'),(10,'Henry Kaminski',80,'M','White','Arrested'),(11,NULL,NULL,'M','White',NULL),(12,NULL,NULL,'M','White',NULL),(13,NULL,NULL,'M','White',NULL),(14,'James Jackson',NULL,'M','White','Arrested'),(15,'Henry Kaminski',80,'M','White','Arrested'),(16,'James Jackson',NULL,'M','White','Arrested'),(17,'James Jackson ',NULL,'M','White','Arrested'),(18,'Adam Purinton',52,'M','White','Arrested'),(19,NULL,NULL,'M',NULL,NULL),(20,'James Jackson',NULL,'M','White','Arrested'),(21,'James Jackson',NULL,'M','White','Arrested'),(22,NULL,NULL,'M',NULL,NULL),(23,NULL,NULL,'M',NULL,NULL),(24,'James Jackson',NULL,'M','White','Arrested'),(25,'James Jackson',NULL,'M','White','Arrested'),(26,'James Jackson',NULL,'M','White','Arrested'),(27,'James Jackson',NULL,'M','White','Arrested'),(28,'James Jackson',28,'M','White','Arrested'),(29,'James Jackson',NULL,'M','White','Arrested'),(30,'Joseph Giaquinto',35,'M','Hispanic','Arrested'),(31,'Joseph Giaquinto',35,'M','Hispanic','Arrested'),(32,'Joseph Giaquinto',35,'M','Hispanic','Arrested'),(33,'Joseph Giaquinto',35,'M','Hispanic','Arrested'),(34,'James Jackson',NULL,'M','White','Arrested');
/*!40000 ALTER TABLE `suspect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trial`
--

DROP TABLE IF EXISTS `trial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trial` (
  `trial_id` int NOT NULL,
  `court_name` varchar(45) DEFAULT NULL,
  `court_location` varchar(45) DEFAULT NULL,
  `trial_status` varchar(45) DEFAULT NULL,
  `crime_id` int DEFAULT NULL,
  `vctim_id` int DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  PRIMARY KEY (`trial_id`),
  KEY `victim_id_idx` (`vctim_id`),
  KEY `crime_id_idx` (`crime_id`),
  KEY `status_id_idx` (`status_id`),
  CONSTRAINT `crime_id` FOREIGN KEY (`crime_id`) REFERENCES `crimes` (`crime_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`),
  CONSTRAINT `victim_id` FOREIGN KEY (`vctim_id`) REFERENCES `victim` (`victim_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trial`
--

LOCK TABLES `trial` WRITE;
/*!40000 ALTER TABLE `trial` DISABLE KEYS */;
INSERT INTO `trial` VALUES (648,'State','New York','In Progress',38,1,28),(651,'State','Kansas','In Progress',39,2,30),(652,'State','Israel','In Progress',40,3,2),(654,'State','New York','In Progress',41,4,28),(655,'State','New Jersey','In Progress',42,5,30),(656,'State','Kansas','In Progress',43,6,28),(658,'District','Kansas','In Progress',44,7,28),(661,'State','Israel','In Progress',45,8,2),(662,'State','New York','In Progress',46,9,28),(663,'District','Kansas','In Progress',47,10,28),(666,'District','New York','Unresolved',48,11,30),(667,'District','New York','Unresolved',49,12,30),(669,'District','New York','Unresolved',50,13,30),(673,'State','New York','In Progress',51,14,28),(675,'District','Kansas','In Progress',52,15,28),(676,'District','Washington','Unresolved',53,16,30),(677,'State','New York','In Progress',54,17,28),(679,'State','Kansas','In Progress',55,18,30),(680,'District','Colorado','Unresolved',56,19,2),(682,'State','New York','In Progress',57,20,28),(683,'State','New York','In Progress',58,21,28),(684,'District','Colorado','Unresolved',59,22,2),(685,'District','Colorado','Unresolved',60,23,2),(687,'State','New York','In Progress',61,24,28),(688,'State','New York','In Progress',62,25,28),(689,'State','New York','In Progress',63,26,28),(692,'State','New York','In Progress',64,27,28),(693,'State','New York','In Progress',65,28,28),(694,'State','New York','In Progress',66,29,28),(695,'District','Colorado','Unresolved',67,30,2),(696,'District','Colorado','Unresolved',68,31,2),(697,'District','Colorado','Unresolved',69,32,2),(698,'District','Colorado','Unresolved',70,33,2);
/*!40000 ALTER TABLE `trial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `victim`
--

DROP TABLE IF EXISTS `victim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `victim` (
  `victim_id` int NOT NULL,
  `victim_name` varchar(45) DEFAULT NULL,
  `victim_age` int DEFAULT NULL,
  `victim_group` varchar(45) DEFAULT NULL,
  `victim_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`victim_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `victim`
--

LOCK TABLES `victim` WRITE;
/*!40000 ALTER TABLE `victim` DISABLE KEYS */;
INSERT INTO `victim` VALUES (1,'Timothy Caughman',66,'White','dead'),(2,'Srinivas Kuchibhotla',NULL,'South Asian','dead'),(3,'Alok Madasani',NULL,'South Asian','Injured'),(4,NULL,NULL,'Jewish',NULL),(5,NULL,NULL,'Black',NULL),(6,'Emmett Till',14,'African-American','dead'),(7,'Mai Houa Moua',NULL,'Hmong','Uninjured'),(8,NULL,NULL,'Jewish','Uninjured'),(9,'Timothy Caughman',66,'White','dead'),(10,'Mai Houa Moua',NULL,'Hmong','Uninjured'),(11,'Heir',NULL,'South Asian','Uninjured'),(12,'Heir',NULL,'South Asian','Uninjured'),(13,'Heir',NULL,'South Asian','Uninjured'),(14,'Timothy Caughman',66,'White','dead'),(15,NULL,NULL,'Hmong',NULL),(16,'Timothy Caughman',66,'White','dead'),(17,'Timothy Caughman',66,'White','dead'),(18,'Srinivas Kuchibhotla',NULL,'South Asian','dead'),(19,'Alok Madasani',NULL,'South Asian','Injured'),(20,NULL,NULL,'Muslim','Uninjured'),(21,'Timothy Caughman',66,'White','dead'),(22,'Timothy Caughman',66,'White','dead'),(23,NULL,NULL,'Muslim','Uninjured'),(24,NULL,NULL,'Muslim','Uninjured'),(25,'Timothy Caughman',66,'White','dead'),(26,'Timothy Caughman',66,'White','dead'),(27,'Timothy Caughman',66,'White','dead'),(28,'Timothy Caughman',66,'White','dead'),(29,'Timothy Caughman',66,'White','dead'),(30,'Timothy Caughman',66,'White','dead'),(31,NULL,NULL,'Muslim','Uninjured'),(32,NULL,NULL,'Muslim','Uninjured'),(33,NULL,NULL,'Muslim','Uninjured'),(34,NULL,NULL,'Muslim','Uninjured');
/*!40000 ALTER TABLE `victim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `victim_group_count_view`
--

DROP TABLE IF EXISTS `victim_group_count_view`;
/*!50001 DROP VIEW IF EXISTS `victim_group_count_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `victim_group_count_view` AS SELECT 
 1 AS `hmong_count`,
 1 AS `white_count`,
 1 AS `South_Asian`,
 1 AS `Muslim`,
 1 AS `other_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `victim_suspect_average_age`
--

DROP TABLE IF EXISTS `victim_suspect_average_age`;
/*!50001 DROP VIEW IF EXISTS `victim_suspect_average_age`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `victim_suspect_average_age` AS SELECT 
 1 AS `average_victim_age`,
 1 AS `average_suspect_age`,
 1 AS `suspect_group`,
 1 AS `victim_group`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'documenting_hate'
--

--
-- Final view structure for view `arrests_made`
--

/*!50001 DROP VIEW IF EXISTS `arrests_made`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `arrests_made` AS select `trial`.`trial_id` AS `trial_id`,`crimes`.`crime_id` AS `crime_id`,`status`.`status_type` AS `status_type`,count(0) AS `arrested_count` from ((`trial` join `status` on((`trial`.`status_id` = `status`.`status_id`))) join `crimes` on((`trial`.`crime_id` = `crimes`.`crime_id`))) where (`status`.`status_type` = 'Arrested') group by `trial`.`trial_id`,`crimes`.`crime_id`,`status`.`status_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `most_offended_groups`
--

/*!50001 DROP VIEW IF EXISTS `most_offended_groups`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `most_offended_groups` AS select `v`.`victim_group` AS `victim_group`,`s`.`suspect_group` AS `suspect_group`,count(0) AS `num_crimes` from ((`crimes` `c` join `suspect` `s` on((`c`.`suspect_id` = `s`.`suspect_id`))) join `victim` `v` on((`c`.`victim_id` = `v`.`victim_id`))) where (`s`.`suspect_group` is not null) group by `v`.`victim_group`,`s`.`suspect_group` having (count(0) >= 1) order by `num_crimes` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `murder_crimes`
--

/*!50001 DROP VIEW IF EXISTS `murder_crimes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `murder_crimes` AS select `a`.`article_title` AS `article_title`,`a`.`article_summary` AS `article_summary`,`ro`.`organization_name` AS `organization_name`,`ro`.`organization_city` AS `organization_city`,`ro`.`organization_state` AS `organization_state`,`c`.`crime_type` AS `crime_type` from ((`article` `a` join `reporting_org` `ro` on((`a`.`org_id` = `ro`.`org_id`))) join `crimes` `c` on((`a`.`crime_id` = `c`.`crime_id`))) where (`c`.`crime_type` = 'murder') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `victim_group_count_view`
--

/*!50001 DROP VIEW IF EXISTS `victim_group_count_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `victim_group_count_view` AS select count((case when (`victim`.`victim_group` = 'Hmong') then 1 end)) AS `hmong_count`,count((case when (`victim`.`victim_group` = 'White') then 1 end)) AS `white_count`,count((case when (`victim`.`victim_group` = 'South Asian') then 1 end)) AS `South_Asian`,count((case when (`victim`.`victim_group` = 'Muslim') then 1 end)) AS `Muslim`,count((case when (`victim`.`victim_group` not in ('Hmong','White','South Asian','Muslim')) then 1 end)) AS `other_count` from `victim` where ((`victim`.`victim_group` is not null) and `victim`.`victim_group` in (select distinct `suspect`.`suspect_group` from `suspect` where (`suspect`.`suspect_group` = 'White'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `victim_suspect_average_age`
--

/*!50001 DROP VIEW IF EXISTS `victim_suspect_average_age`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `victim_suspect_average_age` AS select avg(`victim`.`victim_age`) AS `average_victim_age`,avg(`suspect`.`suspect_age`) AS `average_suspect_age`,`suspect`.`suspect_group` AS `suspect_group`,`victim`.`victim_group` AS `victim_group` from (`victim` join `suspect` on((`victim`.`victim_id` = `suspect`.`suspect_id`))) where ((`victim`.`victim_age` is not null) and (`suspect`.`suspect_age` is not null)) group by `victim`.`victim_group`,`suspect`.`suspect_group` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-15 12:29:10
