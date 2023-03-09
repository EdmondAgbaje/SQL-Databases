-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: agbaje19366741
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `candidateID` int NOT NULL COMMENT 'Candidate Id',
  `firstname` varchar(45) NOT NULL COMMENT 'Firstname',
  `surname` varchar(45) NOT NULL COMMENT 'Surname',
  `address` varchar(45) DEFAULT NULL COMMENT 'Candidate address',
  `telephoneNum` varchar(45) DEFAULT NULL COMMENT 'Candidate Telephone Number',
  PRIMARY KEY (`candidateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Candidate details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (11112,'Pauline','Stephens','330 Hugh\'s Park','089111643'),(12345,'Paul','Johnson','25 Brockery lane','083164577'),(12368,'Eunice','Simons','76 Gregory Avenue','087461113'),(26715,'Wesley','Crawford','44 John Richard Lane','085442137'),(36421,'Fredrick','Werner','145 Joey\'s Cross','087223471'),(41364,'Godfrey','Fox','59 Kevin\'s Cresent','089926311'),(67890,'Destiny','Brooker','16 Follen Lawn','087777332'),(71234,'Damon','Kyles','2 Francis Park','083222455'),(74623,'Kelly','Roland','37 Sycamores Street','083642103'),(81922,'Kevin ','Murphy','58 Springfield Lawns','085370460'),(99220,'DeAndre','Jefferson','12 Quincy Avenue','085673012');
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_skills`
--

DROP TABLE IF EXISTS `candidate_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_skills` (
  `candidateID` int NOT NULL COMMENT 'candidate identification',
  `skillTypes` varchar(45) NOT NULL COMMENT 'Types of skills each candidate has',
  PRIMARY KEY (`candidateID`,`skillTypes`),
  KEY `skillss_idx` (`skillTypes`),
  CONSTRAINT `candiID` FOREIGN KEY (`candidateID`) REFERENCES `candidate` (`candidateID`),
  CONSTRAINT `skillss` FOREIGN KEY (`skillTypes`) REFERENCES `skills` (`skillTypes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Different skills that each candidate has';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_skills`
--

LOCK TABLES `candidate_skills` WRITE;
/*!40000 ALTER TABLE `candidate_skills` DISABLE KEYS */;
INSERT INTO `candidate_skills` VALUES (12345,'Accounting'),(74623,'Administrative'),(41364,'Analytics'),(12345,'Communication'),(67890,'Communication'),(74623,'Communication'),(81922,'Creativity'),(11112,'Data Analysis'),(67890,'Fitness'),(26715,'Interpersonal'),(12368,'Leadership'),(67890,'Leadership'),(36421,'Listening'),(99220,'Management'),(11112,'Marketing'),(26715,'Marketing'),(41364,'Mathematical'),(71234,'Organisation'),(12368,'Problem Solving'),(81922,'Problem Solving'),(99220,'Problem Solving'),(36421,'Product Knowledge'),(36421,'Teamwork'),(41364,'Technical'),(81922,'Technical');
/*!40000 ALTER TABLE `candidate_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `deptCode` varchar(20) NOT NULL COMMENT 'Department code',
  `deptName` varchar(30) NOT NULL COMMENT 'Department name',
  `deptLocation` varchar(45) DEFAULT NULL COMMENT 'Department Address',
  `telephone` varchar(45) DEFAULT NULL COMMENT 'Telephone Number',
  PRIMARY KEY (`deptCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Department details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('Admin','Adminstration','Donnybrook','046997431'),('Fin&Acc','Finance and Accounting','O\'Connell Street','0469733218'),('Health','Health Department','Stillorgan','046327461'),('HR_MGMT','Human Resourse Management','Cabinteely','046227164'),('IT','Information Technology','O\'Connell Street','046224576'),('Mar&Ads','Marketing and Accounting','Donnybrook','046589431'),('Ment','Mentoring','Cabinteely','046553126'),('Prod','Production','Stillorgan','046988743'),('R&D','Research and Development','Bolton Street','046336814'),('Sales','Sales dept','Bolton Street','046774593'),('Sec','Security','O\'Connell Street','046883216');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interviews`
--

DROP TABLE IF EXISTS `interviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interviews` (
  `candidateID` int NOT NULL COMMENT 'candidate identification',
  `positionCode` varchar(20) NOT NULL COMMENT 'position code',
  `interview_date` varchar(45) NOT NULL COMMENT 'Date of interview',
  PRIMARY KEY (`candidateID`,`positionCode`),
  KEY `positioncode_idx` (`positionCode`),
  CONSTRAINT `candidateid` FOREIGN KEY (`candidateID`) REFERENCES `candidate` (`candidateID`),
  CONSTRAINT `positioncode` FOREIGN KEY (`positionCode`) REFERENCES `positions` (`positionCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Interviews for candidates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interviews`
--

LOCK TABLES `interviews` WRITE;
/*!40000 ALTER TABLE `interviews` DISABLE KEYS */;
INSERT INTO `interviews` VALUES (11112,'Advisor','28/03/2020'),(12345,'Accountant','23/04/2020'),(12368,'Prod Manager','29/08/2020'),(26715,'Advisor','06/06/2020'),(36421,'InternMent','13/10/2020'),(36421,'Sales Rep','07/06/2020'),(41364,'Engineer','12/03/2020'),(41364,'Program Tester','15/03/2020'),(67890,'Security Officer','17/09/2020'),(71234,'Gen Manager','13/09/2020'),(74623,'HR Manager','12/02/2020'),(81922,'Engineer','21/02/2020'),(99220,'Secratary','27/08/2020');
/*!40000 ALTER TABLE `interviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offerings`
--

DROP TABLE IF EXISTS `offerings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offerings` (
  `candidateID` int NOT NULL,
  `positionCode` varchar(20) NOT NULL,
  `offered` varchar(20) NOT NULL COMMENT 'was the candidate offered- Yes,No',
  PRIMARY KEY (`candidateID`,`positionCode`),
  KEY `codes_idx` (`positionCode`),
  CONSTRAINT `candidates` FOREIGN KEY (`candidateID`) REFERENCES `candidate` (`candidateID`),
  CONSTRAINT `codes` FOREIGN KEY (`positionCode`) REFERENCES `positions` (`positionCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='table for whether or not a candidate is offered a positon';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offerings`
--

LOCK TABLES `offerings` WRITE;
/*!40000 ALTER TABLE `offerings` DISABLE KEYS */;
INSERT INTO `offerings` VALUES (11112,'Advisor','Yes'),(12345,'Accountant','Yes'),(12368,'Prod Manager','Yes'),(26715,'Advisor','No'),(36421,'InternMent','No'),(36421,'Sales Rep','Yes'),(41364,'Engineer','No'),(41364,'Program Tester','Yes'),(67890,'Security Officer','Yes'),(71234,'Gen Manager','Yes'),(74623,'HR Manager','Yes'),(81922,'Engineer','Yes'),(99220,'Secratary','No');
/*!40000 ALTER TABLE `offerings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position_skills_required`
--

DROP TABLE IF EXISTS `position_skills_required`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position_skills_required` (
  `positionCode` varchar(20) NOT NULL COMMENT 'Postion Code',
  `companySkills` varchar(45) NOT NULL COMMENT 'Skills required for that position',
  PRIMARY KEY (`positionCode`,`companySkills`),
  KEY `reqSkills_idx` (`companySkills`),
  CONSTRAINT `codesPositions` FOREIGN KEY (`positionCode`) REFERENCES `positions` (`positionCode`),
  CONSTRAINT `reqSkills` FOREIGN KEY (`companySkills`) REFERENCES `required_skills` (`companySkills`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Table containing the skills needed for specific positions in the company';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_skills_required`
--

LOCK TABLES `position_skills_required` WRITE;
/*!40000 ALTER TABLE `position_skills_required` DISABLE KEYS */;
INSERT INTO `position_skills_required` VALUES ('Accountant','Accounting'),('HR Manager','Administrative'),('Secratary','Administrative'),('Accountant','Communication'),('HR Manager','Communication'),('InternMent','Communication'),('Sales Rep','Communication'),('Secratary','Communication'),('Security Officer','Communication'),('Engineer','Creativity'),('Advisor','Data Analysis'),('Security Officer','Fitness'),('Advisor','Interpersonal'),('HR Manager','Leadership'),('Prod Manager','Leadership'),('Security Officer','Leadership'),('InternMent','Listening'),('Prod Manager','Management'),('Advisor','Marketing'),('Gen Manager','Organisation'),('Accountant','Problem Solving'),('Engineer','Problem Solving'),('Prod Manager','Problem Solving'),('Program Tester','Problem Solving'),('Sales Rep','Product Knowledge'),('Engineer','Teamwork'),('Program Tester','Teamwork'),('Engineer','Technical'),('Program Tester','Technical');
/*!40000 ALTER TABLE `position_skills_required` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions` (
  `positionCode` varchar(20) NOT NULL COMMENT 'Position identification code',
  `deptOfferingPos` varchar(30) DEFAULT NULL COMMENT 'Department offering positon',
  `posType` varchar(45) DEFAULT NULL COMMENT 'Type of position',
  PRIMARY KEY (`positionCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Position details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES ('Accountant','Fin&Acc','Accounting and financial'),('Advisor','Marketing and Adverting','Marketing Advisor'),('Engineer','R&D','Research and Dev'),('Gen Manager','Administration','General Manager'),('HR Manager','HR_MGMT','Managerial'),('InternMent','Mentoring','Internship mentoring'),('Prod Manager','Production','Managerial'),('Program Tester','IT','Software Development'),('Sales Rep','Sales','Representative'),('Secratary','Administation','Office Secratary'),('Security Officer','Security','Security');
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `required_skills`
--

DROP TABLE IF EXISTS `required_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `required_skills` (
  `companySkills` varchar(45) NOT NULL COMMENT 'The types of skills needed in the company',
  PRIMARY KEY (`companySkills`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Table containing all the different kind of skills required for jobs in the company';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `required_skills`
--

LOCK TABLES `required_skills` WRITE;
/*!40000 ALTER TABLE `required_skills` DISABLE KEYS */;
INSERT INTO `required_skills` VALUES ('Accounting'),('Administrative'),('Communication'),('Creativity'),('Data Analysis'),('Fitness'),('Interpersonal'),('Leadership'),('Listening'),('Management'),('Marketing'),('Organisation'),('Problem Solving'),('Product Knowledge'),('Teamwork'),('Technical');
/*!40000 ALTER TABLE `required_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `skillTypes` varchar(45) NOT NULL COMMENT 'Types of skills ',
  PRIMARY KEY (`skillTypes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Different skills that candidates may have ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES ('Accounting'),('Administrative'),('Analytics'),('Communication'),('Creativity'),('Data Analysis'),('Fitness'),('Interpersonal'),('Leadership'),('Listening'),('Management'),('Marketing'),('Mathematical'),('Organisation'),('Problem Solving'),('Product Knowledge'),('Teamwork'),('Technical');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'agbaje19366741'
--

--
-- Dumping routines for database 'agbaje19366741'
--
/*!50003 DROP PROCEDURE IF EXISTS `new_Candidate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_Candidate`(IN id int,IN fname varchar(45),IN sname varchar(45),IN addy varchar(45),IN phone varchar(45))
BEGIN
insert into candidate(candidateID,firstname,surname,address,telephoneNum)
values(id, fname, sname, addy, phone);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_CandidateSkills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_CandidateSkills`(IN id int, IN skillT varchar(45))
BEGIN
insert into candidate_skills(candidateID, skillTypes)
values(id, skillT);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_Department` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_Department`(IN dCode varchar(20), IN dName varchar(30), IN dLocation varchar(45), IN phone varchar(45))
BEGIN
insert into department(deptCode, deptName,deptLocation,telephone)
values(dCode, dName, dLocation, phone);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_Interviews` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_Interviews`(IN id int, IN pCode varchar(20), IN dates varchar(45))
BEGIN
insert into interviews(candidateID, positionCode, interview_date)
values(id, pCode, dates);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_Offerings` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_Offerings`(IN id int, IN pCode varchar(20), IN offer varchar(20))
BEGIN
insert into offerings(candidateID, positionCode , offered)
values(id, pCode, offer);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_Positions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_Positions`(IN pCode varchar(20), IN dOfferingP varchar(30), IN pType varchar(45))
BEGIN
insert into positions(positionCode, deptOfferingPos, posType)
values(pCode, dOfferingP, pType);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_Postion_Skills_Required` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_Postion_Skills_Required`(IN pCode varchar(20), IN cSkills varchar(45))
BEGIN
insert into position_skills_required(positionCode, companySkills)
values(pCode, cSkills);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_Required_Skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_Required_Skills`(IN cSkills varchar(45))
BEGIN
insert into required_skills(companySkills)
values(cSkills);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_Skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_Skills`(IN skillT varchar(45))
BEGIN
insert into skills(skillTypes)
values(skillT);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q10_findPositionByDeptOffering` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q10_findPositionByDeptOffering`(IN dOfferingP varchar(30))
BEGIN
select positionCode
from positions
where deptOfferingPos = dOfferingP
group by deptOfferingPos;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q11_findNameAndIDOfCandidatesInterviewedMoreThanOnce` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q11_findNameAndIDOfCandidatesInterviewedMoreThanOnce`()
BEGIN
select candidate.firstname,candidate.surname,candidate.candidateID
from candidate,interviews 
where candidate.candidateID = interviews.candidateID
group by interviews.candidateID
having count(interviews.candidateID)>1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q1_findCandidateName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q1_findCandidateName`(IN fname varchar(45) )
BEGIN
select *
from candidate
where firstname = fname;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q2_findCandidateSname` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q2_findCandidateSname`(IN id int)
BEGIN
select surname
from candidate
where candidateID = id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q3_findDept` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q3_findDept`(IN dName varchar(45))
BEGIN
select deptCode
from department
where deptName = dName;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q4_findCandidatesWithAtLeastOneSkillRequiredForPos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q4_findCandidatesWithAtLeastOneSkillRequiredForPos`(IN  pCode varchar(20))
BEGIN
select *
from candidate,candidate_skills,position_skills_required
where position_skills_required.companySkills = candidate_skills.skillTypes
and candidate.candidateID = candidate_skills.candidateID
and position_skills_required.positionCode = pCode;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q5_findPostionReqSkill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q5_findPostionReqSkill`(IN cSkill varchar(45))
BEGIN
select positionCode
from position_skills_required
where companySkills = cSkill;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q6_findNumCandidatesOfferedPos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q6_findNumCandidatesOfferedPos`(IN pCode varchar(20))
BEGIN
select count(*)
from offerings
where offerings.offered = 'Yes'
and positionCode = pCode;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q7_findNumPosRequireAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q7_findNumPosRequireAdmin`()
BEGIN
select count(*)
from position_skills_required
where companySkills = 'Administrative';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q8_findCandidateIDInterviewOnDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q8_findCandidateIDInterviewOnDate`(IN dates varchar(45))
BEGIN
select candidateID
from interviews
where interview_date = dates;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q9_findInterviewsOnDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q9_findInterviewsOnDate`(IN dates varchar(45))
BEGIN
select *
from interviews
where interview_date = dates;

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

-- Dump completed on 2020-11-20 18:44:32
