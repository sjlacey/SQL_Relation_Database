-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: lacey18902826
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `candidate_details`
--

DROP TABLE IF EXISTS `candidate_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_details` (
  `candidateid` int(11) NOT NULL,
  `firstname` varchar(15) DEFAULT NULL,
  `surname` varchar(15) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `telephone` varchar(11) NOT NULL,
  PRIMARY KEY (`candidateid`),
  UNIQUE KEY `candidateid_UNIQUE` (`candidateid`),
  UNIQUE KEY `telephone_UNIQUE` (`telephone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_details`
--

LOCK TABLES `candidate_details` WRITE;
/*!40000 ALTER TABLE `candidate_details` DISABLE KEYS */;
INSERT INTO `candidate_details` VALUES (1901,'Sarah','Ryan','83 Ravenhill Road','0826438321'),(1902,'John','Byrne','50 Stoke Bank','0839816949'),(1903,'Katherine','Foster','24 Harbour Street','0884068339'),(1904,'Annie','Gray','21 Tunstall Oak','0815597780'),(1905,'Daniel','Keegan','120 Pathfield Road','0864732062'),(1906,'Ryan','Armstrong','28 Cypress Acres','0890885804'),(1907,'Patrick','Byrne','95 Maryville Park','0898830130'),(1908,'Andrea','Kerr','38 Irvine South','0892721188'),(1909,'Peter','Knowles','47 Farriers Ridings','0885125154'),(1910,'Lucy','Guinness','149 Edith Grove','0874957642'),(1911,'Thomas','Day','24 Hill Street','0826489271'),(1912,'Finbar','Reilly','83 Donegal Road','0849372754'),(1913,'Lorcan','Flynn','182 Leinster Road','0824749275'),(1914,'Laura','Mullan','24 Stillorgan Road','0859373592'),(1915,'Jennifer','Pickoff','38 Henry Street','0812743923'),(1916,'Henry','Caton','28 Mary Street','0826184293'),(1917,'Mary','Reilly','94 Donegal Hill','0826142932');
/*!40000 ALTER TABLE `candidate_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_skills`
--

DROP TABLE IF EXISTS `candidate_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_skills` (
  `candidateid` int(11) NOT NULL,
  `skills` varchar(30) NOT NULL,
  PRIMARY KEY (`candidateid`,`skills`),
  KEY `candidateskills_idx` (`skills`),
  CONSTRAINT `candidateid` FOREIGN KEY (`candidateid`) REFERENCES `candidate_details` (`candidateid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `candidateskills` FOREIGN KEY (`skills`) REFERENCES `skills` (`skills`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_skills`
--

LOCK TABLES `candidate_skills` WRITE;
/*!40000 ALTER TABLE `candidate_skills` DISABLE KEYS */;
INSERT INTO `candidate_skills` VALUES (1903,'Cleaning and maintenance'),(1901,'Communication'),(1905,'Communication'),(1907,'Communication'),(1911,'Communication'),(1916,'Communication'),(1917,'Communication'),(1902,'Computers'),(1908,'Computers'),(1909,'Computers'),(1912,'Computers'),(1913,'Computers'),(1912,'Databases'),(1904,'Drug knowledge'),(1907,'Drug knowledge'),(1916,'Drug knowledge'),(1917,'Drug knowledge'),(1910,'Food science'),(1901,'High level experience'),(1907,'High level experience'),(1915,'High level experience'),(1909,'Management'),(1913,'Management'),(1902,'Mathematics'),(1912,'Mathematics'),(1904,'Medical analysis'),(1907,'Medical analysis'),(1917,'Medical analysis'),(1901,'Nursing'),(1906,'Nursing'),(1911,'Nursing'),(1914,'Nursing'),(1915,'Nursing'),(1905,'Psychology'),(1916,'Psychology');
/*!40000 ALTER TABLE `candidate_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_details`
--

DROP TABLE IF EXISTS `hospital_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_details` (
  `hospitalid` int(11) NOT NULL,
  `hospitalname` varchar(30) NOT NULL,
  `address` varchar(45) NOT NULL,
  `telephone` varchar(11) NOT NULL,
  PRIMARY KEY (`hospitalid`),
  UNIQUE KEY `Hospitalid_UNIQUE` (`hospitalid`),
  UNIQUE KEY `address_UNIQUE` (`address`),
  UNIQUE KEY `telephone number_UNIQUE` (`telephone`),
  UNIQUE KEY `hospitalname_UNIQUE` (`hospitalname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_details`
--

LOCK TABLES `hospital_details` WRITE;
/*!40000 ALTER TABLE `hospital_details` DISABLE KEYS */;
INSERT INTO `hospital_details` VALUES (1,'St Vincents','196 Merrion Road','01 328 3496'),(2,'St Jamess','James\'s Street','01 384 2947'),(3,'Central Mental','14 Dundrum Road','01 926 3693'),(4,'Mount Carmel','40 Braemor Park','01 423 4075'),(5,'Beacon','Bracken Road','01 284 2849'),(6,'Rotunda','Parnell Square E','01 238 4828'),(7,'St Lukes','Highfield Road','01 385 2956'),(8,'Beaumont','Beaumont Road','01 234 2373'),(9,'Saint John of God','Stillorgan Road','01 277 1400'),(10,'Our Ladys Childrens','Cooley Road','01 409 6100');
/*!40000 ALTER TABLE `hospital_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospitaladvertising_positions`
--

DROP TABLE IF EXISTS `hospitaladvertising_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitaladvertising_positions` (
  `positionid` varchar(10) NOT NULL,
  `hospitalid` int(11) NOT NULL,
  PRIMARY KEY (`positionid`,`hospitalid`),
  KEY `hospitaladvertising_idx` (`hospitalid`),
  CONSTRAINT `hospitaladvertising` FOREIGN KEY (`hospitalid`) REFERENCES `hospital_details` (`hospitalid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `positionid_hospadvert` FOREIGN KEY (`positionid`) REFERENCES `position_details` (`positionid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitaladvertising_positions`
--

LOCK TABLES `hospitaladvertising_positions` WRITE;
/*!40000 ALTER TABLE `hospitaladvertising_positions` DISABLE KEYS */;
INSERT INTO `hospitaladvertising_positions` VALUES ('MEDASST',1),('NUR',1),('PHYS',2),('REC',3),('THER',3),('NURASST',4),('THER',5),('NUR',6),('IT',7),('PHYS',7),('DIET',8),('JAN',9),('ADMIN',10);
/*!40000 ALTER TABLE `hospitaladvertising_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview_details`
--

DROP TABLE IF EXISTS `interview_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interview_details` (
  `interviewid` int(11) NOT NULL,
  `candidateid` int(11) NOT NULL,
  `positionid` varchar(10) NOT NULL,
  `hospitaladvertsing` int(11) NOT NULL,
  `dateconducted` date NOT NULL,
  `outcome` varchar(20) NOT NULL,
  PRIMARY KEY (`interviewid`),
  UNIQUE KEY `interviewid_UNIQUE` (`interviewid`),
  KEY `candidateid_idx` (`candidateid`),
  KEY `interviewpositionid_idx` (`positionid`),
  KEY `interviewhospitalid_idx` (`hospitaladvertsing`),
  CONSTRAINT `interviewcandidateid` FOREIGN KEY (`candidateid`) REFERENCES `candidate_details` (`candidateid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `interviewhospitalid` FOREIGN KEY (`hospitaladvertsing`) REFERENCES `hospitaladvertising_positions` (`hospitalid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `interviewpositionid` FOREIGN KEY (`positionid`) REFERENCES `position_details` (`positionid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview_details`
--

LOCK TABLES `interview_details` WRITE;
/*!40000 ALTER TABLE `interview_details` DISABLE KEYS */;
INSERT INTO `interview_details` VALUES (1,1901,'NUR',6,'2019-11-04','Second interview'),(2,1905,'THER',5,'2019-11-04','Second interview'),(3,1910,'DIET',8,'2019-11-04','Not hired'),(4,1911,'NUR',6,'2019-11-04','Not hired'),(5,1906,'NURASST',4,'2019-11-05','Hired'),(6,1911,'NURASST',4,'2019-11-05','Hired'),(7,1914,'NURASST',4,'2019-11-05','Second interview'),(8,1907,'PHYS',2,'2019-11-06','Second interview'),(9,1915,'NUR',1,'2019-11-06','Second interview'),(10,1904,'MEDASST',1,'2019-11-06','Second interview'),(11,1902,'IT',7,'2019-11-09','Not hired'),(12,1903,'JAN',9,'2019-11-09','Hired'),(13,1908,'REC',3,'2019-11-09','Not hired'),(15,1912,'IT',7,'2019-11-09','Hired'),(17,1916,'THER',3,'2019-11-09','Hired'),(18,1917,'PHYS',7,'2019-11-09','Second interview'),(19,1915,'NUR',1,'2019-11-13','Not hired'),(20,1901,'NUR',6,'2019-11-18','Hired'),(21,1905,'THER',5,'2019-11-18','Not hired'),(22,1904,'MEDASST',1,'2019-11-18','Hired'),(23,1914,'NURASST',4,'2019-11-19','Hired'),(24,1907,'PHYS',2,'2019-11-20','Third interview'),(25,1917,'PHYS',7,'2019-11-23','Not hired'),(26,1907,'PHYS',2,'2019-11-25','Hired');
/*!40000 ALTER TABLE `interview_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position_details`
--

DROP TABLE IF EXISTS `position_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position_details` (
  `positionid` varchar(10) NOT NULL,
  `positiontype` varchar(20) NOT NULL,
  PRIMARY KEY (`positionid`),
  UNIQUE KEY `positionid_UNIQUE` (`positionid`),
  UNIQUE KEY `positiontype_UNIQUE` (`positiontype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_details`
--

LOCK TABLES `position_details` WRITE;
/*!40000 ALTER TABLE `position_details` DISABLE KEYS */;
INSERT INTO `position_details` VALUES ('ADMIN','Administrator'),('DIET','Dietitian'),('IT','IT professional'),('JAN','Janitor'),('MEDASST','Medical assistant'),('NUR','Nurse'),('NURASST','Nursing assistant'),('PHYS','Physician'),('REC','Receptionist'),('THER','Therapist');
/*!40000 ALTER TABLE `position_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position_skills`
--

DROP TABLE IF EXISTS `position_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position_skills` (
  `positionid` varchar(10) NOT NULL,
  `skills` varchar(30) NOT NULL,
  PRIMARY KEY (`positionid`,`skills`),
  KEY `skills_idx` (`skills`),
  CONSTRAINT `positionid` FOREIGN KEY (`positionid`) REFERENCES `position_details` (`positionid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `positionskills` FOREIGN KEY (`skills`) REFERENCES `skills` (`skills`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_skills`
--

LOCK TABLES `position_skills` WRITE;
/*!40000 ALTER TABLE `position_skills` DISABLE KEYS */;
INSERT INTO `position_skills` VALUES ('JAN','Cleaning and maintenance'),('DIET','Communication'),('NUR','Communication'),('PHYS','Communication'),('REC','Communication'),('THER','Communication'),('ADMIN','Computers'),('IT','Computers'),('REC','Computers'),('IT','Databases'),('MEDASST','Drug knowledge'),('PHYS','Drug knowledge'),('THER','Drug knowledge'),('DIET','Food science'),('NUR','High level experience'),('PHYS','High level experience'),('ADMIN','Management'),('IT','Mathematics'),('MEDASST','Medical analysis'),('PHYS','Medical analysis'),('NUR','Nursing'),('NURASST','Nursing'),('THER','Psychology');
/*!40000 ALTER TABLE `position_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `skills` varchar(30) NOT NULL,
  PRIMARY KEY (`skills`),
  UNIQUE KEY `skills_UNIQUE` (`skills`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES ('Cleaning and maintenance'),('Communication'),('Computers'),('Databases'),('Drug knowledge'),('Food science'),('High level experience'),('Management'),('Mathematics'),('Medical analysis'),('Nursing'),('Psychology');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'lacey18902826'
--

--
-- Dumping routines for database 'lacey18902826'
--
/*!50003 DROP PROCEDURE IF EXISTS `4a)hospitals_from_hospitalid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4a)hospitals_from_hospitalid`(IN hosp_id INT)
BEGIN
	SELECT hospitalid, hospitalname, address, telephone
	FROM hospital_details
	WHERE hosp_id=hospitalid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4b)hospitals_from_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4b)hospitals_from_name`(IN hosp_name VARCHAR(30))
BEGIN

	SELECT hospitalid, hospitalname, address, telephone
	FROM hospital_details
	WHERE hosp_name=hospitalname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4c)candidates_from_candidateid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4c)candidates_from_candidateid`(IN cand_id INT)
BEGIN

	SELECT candidateid, firstname, surname, address, telephone
	FROM candidate_details
	WHERE cand_id=candidateid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4d)candidate_from_surname` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4d)candidate_from_surname`(IN cand_sur VARCHAR(15))
BEGIN
	SELECT candidateid, firstname, surname, address, telephone
	FROM candidate_details
	WHERE cand_sur=surname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4e)candidate_from_position_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4e)candidate_from_position_skills`(IN pos_id VARCHAR(30))
BEGIN
	SELECT DISTINCT candidate_skills.candidateid, firstname, surname
    FROM candidate_skills, position_skills, candidate_details
    WHERE candidate_skills.candidateid=candidate_details.candidateid AND candidate_skills.skills=position_skills.skills AND pos_id=position_skills.positionid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4f)numof_candidates_offered_position` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4f)numof_candidates_offered_position`()
BEGIN
	SELECT COUNT(*)
	FROM interview_details
	WHERE outcome='Hired';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4g)positions_by_required_skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4g)positions_by_required_skill`(IN pos_skill VARCHAR(30))
BEGIN

	SELECT position_skills.positionid, positiontype
	FROM position_skills, position_details
	WHERE pos_skill=skills AND position_skills.positionid=position_details.positionid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4h)numof_positions_requiring_nursing_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4h)numof_positions_requiring_nursing_skills`()
BEGIN

	SELECT COUNT(*)
	FROM position_skills
	WHERE skills= 'Nursing' OR skills= 'Communication' OR skills= 'High level experience';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4i)interviews_by_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4i)interviews_by_date`(IN int_date VARCHAR(10))
BEGIN
	SELECT interviewid, candidateid, positionid, dateconducted, outcome
	FROM interview_details
	WHERE int_date=dateconducted;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4j)candidates_interviewed_atleast_twice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4j)candidates_interviewed_atleast_twice`()
BEGIN
	SELECT interview_details.candidateid, firstname, surname
	FROM interview_details, candidate_details
	WHERE outcome='second interview' AND interview_details.candidateid=candidate_details.candidateid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4k)order_positions_by_hospitaladvertising` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4k)order_positions_by_hospitaladvertising`()
BEGIN
	SELECT position_details.positionid, positiontype, hospitaladvertising_positions.hospitalid
	FROM position_details, hospitaladvertising_positions
    WHERE position_details.positionid=hospitaladvertising_positions.positionid
	ORDER BY hospitalid ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addrowto_candidate_details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addrowto_candidate_details`(IN candidateid INT, IN firstname VARCHAR(15), IN surname VARCHAR(15), IN address VARCHAR(45), IN telephone VARCHAR(11))
BEGIN
INSERT INTO candidate_details(candidateid, firstname, surname, address, telephone)
VALUES (candidateid, firstname, surname, address, telephone);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addrowto_candidate_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addrowto_candidate_skills`(IN c_id INT, IN skill VARCHAR(30))
BEGIN
INSERT INTO candidate_skills(candidateid, skills)
VALUES (c_id, skill);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addrowto_hospitaladvertising_positions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addrowto_hospitaladvertising_positions`(IN pos_id VARCHAR(10), IN hospitalid VARCHAR(30))
BEGIN
INSERT INTO hospitaladvertising_positions(positionid, hospitalid)
VALUES (pos_id, hospitalid);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addrowto_hospital_details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addrowto_hospital_details`(IN hospitalid INT, IN hospitalname VARCHAR(30), IN address VARCHAR(45), IN telephone VARCHAR(11))
BEGIN
INSERT INTO hospital_details(hospitalid, hospitalname, address, telephone)
VALUES (hospitalid, hospitalname, address, telephone);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addrowto_interview_details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addrowto_interview_details`(IN interviewid INT, IN candidateid INT, IN positionid VARCHAR(10), IN hospitaladvertsing INT, IN dateconducted DATE, IN outcome VARCHAR(20))
BEGIN
INSERT INTO interview_details(interviewid, candidateid, positionid, hospitaladvertising, dateconducted, outcome)
VALUES (interviewid, candidateid, positionid, hospitaladvertising, dateconducted, outcome);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addrowto_position_details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addrowto_position_details`(IN positionid VARCHAR(10), IN positiontype VARCHAR(20))
BEGIN
INSERT INTO position_details(positionid, positiontype)
VALUES (positionid, positiontype);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addrowto_position_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addrowto_position_skills`(IN pos_id VARCHAR(10), IN skill VARCHAR(30))
BEGIN
INSERT INTO position_skills(positionid, skills)
VALUES (pos_id, skill);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addrowto_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addrowto_skills`(IN p_skill VARCHAR(30))
BEGIN
INSERT INTO skills(skills)
VALUES (p_skill);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-21 16:55:03
