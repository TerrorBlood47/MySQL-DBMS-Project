-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: db_Mens_Football_Leagues_Club_Management_System
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `fixture`
--

DROP TABLE IF EXISTS `fixture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fixture` (
  `league_id` int NOT NULL,
  `season` year NOT NULL,
  `match_id` int NOT NULL,
  PRIMARY KEY (`league_id`,`match_id`,`season`),
  KEY `fk_fixture_ref_league` (`league_id`,`season`),
  KEY `fk_fixture_ref_match` (`match_id`),
  CONSTRAINT `fk_fixture_ref_league` FOREIGN KEY (`league_id`, `season`) REFERENCES `tbl_league` (`league_id`, `season`),
  CONSTRAINT `fk_fixture_ref_match` FOREIGN KEY (`match_id`) REFERENCES `tbl_match` (`match_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fixture`
--

LOCK TABLES `fixture` WRITE;
/*!40000 ALTER TABLE `fixture` DISABLE KEYS */;
INSERT INTO `fixture` VALUES (1,2018,1),(1,2018,2),(1,2018,3),(1,2018,4),(1,2018,5),(1,2018,6),(1,2018,7),(1,2018,8),(1,2018,9),(1,2018,10),(1,2018,11),(1,2018,12),(1,2019,13),(1,2019,14),(1,2019,15),(1,2018,16),(1,2019,17),(1,2019,18);
/*!40000 ALTER TABLE `fixture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_club`
--

DROP TABLE IF EXISTS `tbl_club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_club` (
  `club_id` int NOT NULL,
  `club_name` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `net_worth` int DEFAULT NULL,
  PRIMARY KEY (`club_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_club`
--

LOCK TABLES `tbl_club` WRITE;
/*!40000 ALTER TABLE `tbl_club` DISABLE KEYS */;
INSERT INTO `tbl_club` VALUES (1,'Liverpool FC','England','Liverpool',1000000000),(2,'Manchester City','England','Manchester',1500000000),(3,'Manchester United','England','Manchester',1200000000),(4,'Arsenal','England','London',900000000);
/*!40000 ALTER TABLE `tbl_club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_club_officials`
--

DROP TABLE IF EXISTS `tbl_club_officials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_club_officials` (
  `official_id` int NOT NULL,
  `official_name` varchar(200) DEFAULT NULL,
  `role_in_club` varchar(200) DEFAULT NULL,
  `nationality` varchar(200) DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `release_clause` int DEFAULT NULL,
  PRIMARY KEY (`official_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_club_officials`
--

LOCK TABLES `tbl_club_officials` WRITE;
/*!40000 ALTER TABLE `tbl_club_officials` DISABLE KEYS */;
INSERT INTO `tbl_club_officials` VALUES (1,'Jürgen Klopp','Manager','German',7000000,10000000),(2,'Pepijn Lijnders','Assistant Manager','Dutch',500000,500000),(3,'Peter Krawietz','Assistant Manager','German',500000,34340),(4,'Andreas Kornmayer','Head of Fitness and Conditioning','German',300000,21320),(5,'John Achterberg','Goalkeeping Coach','Dutch',300000,324240),(6,'Mona Nemmer','Nutritionist','German',200000,0),(7,'Vitor Matos','Elite Development Coach','Portuguese',200000,343440),(8,'Pep Guardiola','Manager','Spanish',9000000,15000000),(9,'Mikel Arteta','Assistant Manager','Spanish',500000,10000000),(10,'Brian Kidd','Assistant Manager','English',400000,8000000),(11,'Carles Planchart','Coach','Spanish',300000,7000000),(12,'Xabi Mancisidor','Goalkeeping Coach','Spanish',300000,9000000),(13,'Sam Erith','Physiotherapist','English',200000,6000000),(14,'Lee Nobes','Fitness Coach','English',200000,7000000),(15,'José Mourinho','Manager','Portuguese',8000000,15000000),(16,'Michael Carrick','Assistant Manager','English',400000,10000000),(17,'Kieran McKenna','Coach','Irish',300000,8000000),(18,'Silvino Louro','Goalkeeping Coach','Portuguese',300000,9000000),(19,'Emilio Álvarez Blanco','Goalkeeping Coach','Spanish',300000,8000000),(20,'Gary Walker','Physiotherapist','English',200000,6000000),(21,'Unai Emery','Manager','Spanish',7000000,12000000),(22,'Juan Carlos Carcedo','Assistant Manager','Spanish',400000,9000000),(23,'Pablo Villanueva','Coach','Spanish',300000,8000000),(24,'Javi Garcia','Goalkeeping Coach','Spanish',300000,7000000),(25,'Pedro Marques','Fitness Coach','Portuguese',200000,6000000);
/*!40000 ALTER TABLE `tbl_club_officials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_employs`
--

DROP TABLE IF EXISTS `tbl_employs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_employs` (
  `league_id` int NOT NULL,
  `season` year NOT NULL,
  `referee_id` int NOT NULL,
  PRIMARY KEY (`league_id`,`season`,`referee_id`),
  KEY `fk_employs_ref_referee` (`referee_id`),
  CONSTRAINT `fk_employs_ref_league` FOREIGN KEY (`league_id`, `season`) REFERENCES `tbl_league` (`league_id`, `season`),
  CONSTRAINT `fk_employs_ref_referee` FOREIGN KEY (`referee_id`) REFERENCES `tbl_referee` (`referee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_employs`
--

LOCK TABLES `tbl_employs` WRITE;
/*!40000 ALTER TABLE `tbl_employs` DISABLE KEYS */;
INSERT INTO `tbl_employs` VALUES (1,2018,1),(1,2019,1),(1,2018,2),(1,2019,2),(1,2018,3),(1,2019,3),(1,2018,4),(1,2019,4);
/*!40000 ALTER TABLE `tbl_employs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_league`
--

DROP TABLE IF EXISTS `tbl_league`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_league` (
  `league_id` int NOT NULL,
  `season` year NOT NULL,
  `league_name` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `prize_money` int DEFAULT NULL,
  `division` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`league_id`,`season`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_league`
--

LOCK TABLES `tbl_league` WRITE;
/*!40000 ALTER TABLE `tbl_league` DISABLE KEYS */;
INSERT INTO `tbl_league` VALUES (1,2018,'Premier League','England',100000000,'Division 1'),(1,2019,'Premier League','England',100000000,'Division 1'),(2,2018,'La Liga','Spain',90000000,'Division 1'),(3,2018,'Serie A','Italy',80000000,'Division 1'),(4,2018,'Bundesliga','Germany',85000000,'Division 1');
/*!40000 ALTER TABLE `tbl_league` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_match`
--

DROP TABLE IF EXISTS `tbl_match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_match` (
  `match_id` int NOT NULL,
  `match_date` date NOT NULL,
  `match_time` time NOT NULL,
  `home_team` int NOT NULL,
  `away_team` int NOT NULL,
  `spectators` int DEFAULT NULL,
  `ticket_price` int DEFAULT NULL,
  `home_score` int DEFAULT NULL,
  `away_score` int DEFAULT NULL,
  `match_status` enum('finished','disrupted','upcoming') DEFAULT NULL,
  PRIMARY KEY (`match_id`),
  UNIQUE KEY `unique_match_date_time` (`match_date`,`match_time`),
  KEY `fk_match_ref_home_club` (`home_team`),
  KEY `fk_match_ref_away_club` (`away_team`),
  CONSTRAINT `fk_match_ref_away_club` FOREIGN KEY (`away_team`) REFERENCES `tbl_club` (`club_id`),
  CONSTRAINT `fk_match_ref_home_club` FOREIGN KEY (`home_team`) REFERENCES `tbl_club` (`club_id`),
  CONSTRAINT `chk_match_status` CHECK ((`match_status` in (_utf8mb4'finished',_utf8mb4'disrupted',_utf8mb4'upcoming')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_match`
--

LOCK TABLES `tbl_match` WRITE;
/*!40000 ALTER TABLE `tbl_match` DISABLE KEYS */;
INSERT INTO `tbl_match` VALUES (1,'2018-01-01','15:00:00',1,2,55000,50,2,1,'finished'),(2,'2018-02-15','14:30:00',3,4,60000,60,3,0,'finished'),(3,'2018-03-10','16:00:00',2,1,52000,55,1,1,'finished'),(4,'2018-04-05','15:30:00',4,3,58000,65,0,2,'finished'),(5,'2018-05-20','17:00:00',1,3,53000,58,2,1,'finished'),(6,'2018-06-12','14:45:00',4,2,61000,62,1,1,'finished'),(7,'2018-07-07','15:15:00',2,3,54000,54,2,1,'finished'),(8,'2018-08-23','17:30:00',1,4,59000,59,2,0,'finished'),(9,'2018-09-18','15:30:00',3,2,58000,62,2,2,'finished'),(10,'2018-10-30','14:45:00',4,1,60000,60,1,3,'finished'),(11,'2018-11-25','16:00:00',3,1,54000,56,0,2,'finished'),(12,'2018-12-12','15:00:00',2,4,52000,55,2,1,'finished'),(13,'2019-01-15','14:00:00',1,2,NULL,NULL,NULL,NULL,'upcoming'),(14,'2019-01-20','16:30:00',4,3,NULL,NULL,NULL,NULL,'upcoming'),(15,'2019-03-15','14:00:00',1,3,NULL,NULL,NULL,NULL,'upcoming'),(16,'2019-02-20','16:30:00',4,2,NULL,NULL,NULL,NULL,'upcoming'),(17,'2019-02-17','14:00:00',1,4,NULL,NULL,NULL,NULL,'upcoming'),(18,'2019-04-20','16:30:00',2,3,NULL,NULL,NULL,NULL,'upcoming');
/*!40000 ALTER TABLE `tbl_match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_match_events`
--

DROP TABLE IF EXISTS `tbl_match_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_match_events` (
  `match_id` int NOT NULL,
  `player_id` int NOT NULL,
  `type_of_events` varchar(200) NOT NULL,
  `min` int NOT NULL,
  PRIMARY KEY (`match_id`,`player_id`,`type_of_events`,`min`),
  KEY `fk_match_events_ref_player` (`player_id`),
  CONSTRAINT `fk_match_events_ref_match` FOREIGN KEY (`match_id`) REFERENCES `tbl_match` (`match_id`),
  CONSTRAINT `fk_match_events_ref_player` FOREIGN KEY (`player_id`) REFERENCES `tbl_players` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_match_events`
--

LOCK TABLES `tbl_match_events` WRITE;
/*!40000 ALTER TABLE `tbl_match_events` DISABLE KEYS */;
INSERT INTO `tbl_match_events` VALUES (1,1,'Goal',60),(3,1,'Goal',82),(5,1,'Goal',10),(1,2,'Goal',15),(1,2,'Red Card',75),(1,3,'Penalty Goal',70),(5,3,'Goal',60),(3,10,'Assist',32),(1,11,'Penalty Goal',40),(1,12,'Goal',85),(3,12,'Goal',32),(2,16,'Goal',55),(4,16,'Assist',18),(3,17,'Assist',75),(2,18,'Red Card',80),(3,19,'Goal',75),(1,20,'Goal',30),(1,27,'Yellow Card',28),(2,31,'Yellow Card',20),(5,33,'Assist',32),(4,34,'Goal',55),(5,35,'Goal',32),(4,36,'Assist',55),(4,38,'Goal',68),(5,38,'Assist',10),(2,44,'Goal',10),(4,46,'Goal',18),(2,47,'Goal',40),(2,47,'Penalty Goal',60);
/*!40000 ALTER TABLE `tbl_match_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_officiates`
--

DROP TABLE IF EXISTS `tbl_officiates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_officiates` (
  `referee_id` int NOT NULL,
  `match_id` int NOT NULL,
  `role_in_match` enum('Referee','Assistant Referee','Linesman','VAR') DEFAULT NULL,
  PRIMARY KEY (`referee_id`,`match_id`),
  KEY `fk_officiates_ref_match` (`match_id`),
  CONSTRAINT `fk_officiates_ref_match` FOREIGN KEY (`match_id`) REFERENCES `tbl_match` (`match_id`),
  CONSTRAINT `fk_officiates_ref_referee` FOREIGN KEY (`referee_id`) REFERENCES `tbl_referee` (`referee_id`),
  CONSTRAINT `chk_role_referee_officiates` CHECK ((`role_in_match` in (_utf8mb4'Referee',_utf8mb4'Assistant Referee',_utf8mb4'Linesman',_utf8mb4'VAR')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_officiates`
--

LOCK TABLES `tbl_officiates` WRITE;
/*!40000 ALTER TABLE `tbl_officiates` DISABLE KEYS */;
INSERT INTO `tbl_officiates` VALUES (1,1,'Referee'),(1,5,'Assistant Referee'),(1,9,'Linesman'),(1,13,'VAR'),(2,2,'Referee'),(2,6,'Assistant Referee'),(2,10,'Linesman'),(2,14,'VAR'),(3,3,'Referee'),(3,7,'Assistant Referee'),(3,11,'Linesman'),(3,15,'VAR'),(4,4,'Referee'),(4,8,'Assistant Referee'),(4,12,'Linesman'),(4,16,'VAR');
/*!40000 ALTER TABLE `tbl_officiates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_own_stadium`
--

DROP TABLE IF EXISTS `tbl_own_stadium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_own_stadium` (
  `club_id` int NOT NULL,
  `stadium_id` int NOT NULL,
  `stadium_name` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `built_date` date DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  PRIMARY KEY (`club_id`,`stadium_id`),
  CONSTRAINT `fk_ownstadium_ref_club` FOREIGN KEY (`club_id`) REFERENCES `tbl_club` (`club_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_own_stadium`
--

LOCK TABLES `tbl_own_stadium` WRITE;
/*!40000 ALTER TABLE `tbl_own_stadium` DISABLE KEYS */;
INSERT INTO `tbl_own_stadium` VALUES (1,1,'Anfield','Liverpool, England','1884-01-01',54074),(2,1,'Etihad Stadium','Manchester, England','2003-07-25',53097),(3,1,'Old Trafford','Manchester, England','1910-02-19',74326),(4,1,'Emirates Stadium','London, England','2006-07-22',60260);
/*!40000 ALTER TABLE `tbl_own_stadium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_personal_trainers`
--

DROP TABLE IF EXISTS `tbl_personal_trainers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_personal_trainers` (
  `player_id` int NOT NULL,
  `official_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`player_id`,`official_id`,`start_date`),
  KEY `fk_per_trainer_ref_officials` (`official_id`),
  CONSTRAINT `fk_per_trainer_ref_officials` FOREIGN KEY (`official_id`) REFERENCES `tbl_club_officials` (`official_id`),
  CONSTRAINT `fk_per_trainer_ref_player` FOREIGN KEY (`player_id`) REFERENCES `tbl_players` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_personal_trainers`
--

LOCK TABLES `tbl_personal_trainers` WRITE;
/*!40000 ALTER TABLE `tbl_personal_trainers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_personal_trainers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_players`
--

DROP TABLE IF EXISTS `tbl_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_players` (
  `player_id` int NOT NULL,
  `player_name` varchar(200) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `fav_position` varchar(200) DEFAULT NULL,
  `nationality` varchar(200) DEFAULT NULL,
  `weekly_wage` int DEFAULT NULL,
  `release_clause` int DEFAULT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_players`
--

LOCK TABLES `tbl_players` WRITE;
/*!40000 ALTER TABLE `tbl_players` DISABLE KEYS */;
INSERT INTO `tbl_players` VALUES (1,'Mohamed Salah','1992-06-15','Forward','Egyptian',200000,300000000),(2,'Sadio Mané','1992-04-10','Forward','Senegalese',180000,250000000),(3,'Roberto Firmino','1991-10-02','Forward','Brazilian',180000,250000000),(4,'Virgil van Dijk','1991-07-08','Defender','Dutch',160000,220000000),(5,'Andrew Robertson','1994-03-11','Defender','Scottish',150000,210000000),(6,'Alisson Becker','1992-10-02','Goalkeeper','Brazilian',170000,240000000),(7,'Trent Alexander-Arnold','1998-10-07','Defender','English',130000,190000000),(8,'Georginio Wijnaldum','1990-11-11','Midfielder','Dutch',140000,200000000),(9,'James Milner','1986-01-04','Midfielder','English',130000,190000000),(10,'Naby Keïta','1995-02-10','Midfielder','Guinean',150000,210000000),(11,'Jordan Henderson','1990-06-17','Midfielder','English',140000,200000000),(12,'Joel Matip','1991-08-08','Defender','Cameroonian',130000,190000000),(13,'Dejan Lovren','1989-07-05','Defender','Croatian',130000,190000000),(14,'Divock Origi','1995-04-18','Forward','Belgian',120000,180000000),(15,'Xherdan Shaqiri','1991-10-10','Midfielder','Swiss',140000,200000000),(16,'Sergio Aguero','1988-06-02','Forward','Argentinian',170000,220000000),(17,'Kevin De Bruyne','1991-06-28','Midfielder','Belgian',190000,230000000),(18,'Leroy Sané','1996-01-11','Midfielder','German',140000,180000000),(19,'Raheem Sterling','1994-12-08','Forward','English',160000,210000000),(20,'David Silva','1986-01-08','Midfielder','Spanish',150000,200000000),(21,'Bernardo Silva','1994-08-10','Midfielder','Portuguese',140000,190000000),(22,'Kyle Walker','1990-05-28','Defender','English',130000,170000000),(23,'Fernandinho','1985-05-04','Midfielder','Brazilian',120000,160000000),(24,'Aymeric Laporte','1994-05-27','Defender','French',130000,170000000),(25,'John Stones','1994-05-28','Defender','English',120000,160000000),(26,'Ederson Moraes','1993-08-17','Goalkeeper','Brazilian',120000,160000000),(27,'Riyad Mahrez','1991-02-21','Midfielder','Algerian',150000,200000000),(28,'Gabriel Jesus','1997-04-03','Forward','Brazilian',130000,170000000),(29,'Vincent Kompany','1986-04-10','Defender','Belgian',100000,130000000),(30,'Ilkay Gündogan','1990-10-24','Midfielder','German',140000,180000000),(31,'Romelu Lukaku','1993-05-13','Forward','Belgian',170000,220000000),(32,'Paul Pogba','1993-03-15','Midfielder','French',190000,230000000),(33,'David De Gea','1990-11-07','Goalkeeper','Spanish',150000,200000000),(34,'Anthony Martial','1995-12-05','Forward','French',140000,180000000),(35,'Marcus Rashford','1997-10-31','Forward','English',130000,170000000),(36,'Nemanja Matic','1988-08-01','Midfielder','Serbian',120000,160000000),(37,'Juan Mata','1988-04-28','Midfielder','Spanish',120000,160000000),(38,'Ander Herrera','1989-08-14','Midfielder','Spanish',120000,160000000),(39,'Chris Smalling','1989-11-22','Defender','English',100000,130000000),(40,'Victor Lindelöf','1994-07-17','Defender','Swedish',110000,140000000),(41,'Luke Shaw','1995-07-12','Defender','English',110000,140000000),(42,'Ashley Young','1985-07-09','Defender','English',120000,160000000),(43,'Jesse Lingard','1992-12-15','Midfielder','English',130000,170000000),(44,'Phil Jones','1992-02-21','Defender','English',100000,130000000),(45,'Andreas Pereira','1996-01-01','Midfielder','Brazilian',120000,160000000),(46,'Pierre-Emerick Aubameyang','1989-06-18','Forward','Gabonese',180000,250000000),(47,'Alexandre Lacazette','1991-05-28','Forward','French',160000,230000000),(48,'Mesut Özil','1988-10-15','Midfielder','German',170000,240000000),(49,'Hector Bellerin','1995-03-19','Defender','Spanish',130000,180000000),(50,'Lucas Torreira','1996-02-11','Midfielder','Uruguayan',120000,170000000),(51,'Granit Xhaka','1992-09-27','Midfielder','Swiss',140000,210000000),(52,'Bernd Leno','1992-03-04','Goalkeeper','German',130000,190000000),(53,'Sokratis Papastathopoulos','1988-06-09','Defender','Greek',120000,170000000),(54,'Shkodran Mustafi','1992-04-17','Defender','German',130000,190000000),(55,'Aaron Ramsey','1990-12-26','Midfielder','Welsh',140000,210000000),(56,'Sead Kolašinac','1993-06-20','Defender','Bosnian',120000,180000000),(57,'Rob Holding','1995-09-20','Defender','English',110000,170000000),(58,'Emiliano Martinez','1992-09-02','Goalkeeper','Argentine',100000,160000000),(59,'Alex Iwobi','1996-05-03','Midfielder','Nigerian',110000,170000000),(60,'Danny Welbeck','1990-11-26','Forward','English',120000,180000000);
/*!40000 ALTER TABLE `tbl_players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_plays_for`
--

DROP TABLE IF EXISTS `tbl_plays_for`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_plays_for` (
  `player_id` int NOT NULL,
  `club_id` int NOT NULL,
  `jersey_no` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `prev_club_id` int DEFAULT NULL,
  PRIMARY KEY (`player_id`,`club_id`,`jersey_no`,`start_date`),
  KEY `fk_plays_for_ref_club` (`club_id`),
  CONSTRAINT `fk_plays_for_ref_club` FOREIGN KEY (`club_id`) REFERENCES `tbl_club` (`club_id`),
  CONSTRAINT `fk_plays_for_ref_players` FOREIGN KEY (`player_id`) REFERENCES `tbl_players` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_plays_for`
--

LOCK TABLES `tbl_plays_for` WRITE;
/*!40000 ALTER TABLE `tbl_plays_for` DISABLE KEYS */;
INSERT INTO `tbl_plays_for` VALUES (1,1,10,'2018-01-01','2023-06-30',NULL),(2,1,7,'2018-01-01','2024-06-30',NULL),(3,1,1,'2018-01-01','2022-06-30',NULL),(4,1,11,'2018-01-01','2025-06-30',NULL),(5,1,9,'2018-01-01','2023-06-30',NULL),(6,1,14,'2018-01-01','2024-06-30',NULL),(7,1,26,'2018-01-01','2022-06-30',NULL),(8,1,3,'2018-01-01','2023-06-30',NULL),(9,1,4,'2018-01-01','2022-06-30',NULL),(10,1,6,'2018-01-01','2024-06-30',NULL),(11,1,12,'2018-01-01','2024-06-30',NULL),(12,1,2,'2018-01-01','2025-06-30',NULL),(13,1,22,'2018-01-01','2023-06-30',NULL),(14,1,18,'2018-01-01','2023-06-30',NULL),(15,1,20,'2018-01-01','2024-06-30',NULL),(16,2,10,'2018-01-01','2023-06-30',NULL),(17,2,17,'2018-01-01','2024-06-30',NULL),(18,2,19,'2018-01-01','2022-06-30',NULL),(19,2,7,'2018-01-01','2025-06-30',NULL),(20,2,21,'2018-01-01','2023-06-30',NULL),(21,2,20,'2018-01-01','2024-06-30',NULL),(22,2,2,'2018-01-01','2022-06-30',NULL),(23,2,25,'2018-01-01','2023-06-30',NULL),(24,2,5,'2018-01-01','2022-06-30',NULL),(25,2,24,'2018-01-01','2024-06-30',NULL),(26,2,31,'2018-01-01','2025-06-30',NULL),(27,2,8,'2018-01-01','2023-06-30',NULL),(28,2,33,'2018-01-01','2023-06-30',NULL),(29,2,30,'2018-01-01','2024-06-30',NULL),(30,2,4,'2018-01-01','2022-06-30',NULL),(31,3,9,'2018-01-01','2024-06-30',NULL),(32,3,6,'2018-01-01','2024-06-30',NULL),(33,3,1,'2018-01-01','2024-06-30',NULL),(34,3,11,'2018-01-01','2023-06-30',NULL),(35,3,10,'2018-01-01','2023-06-30',NULL),(36,3,31,'2018-01-01','2022-06-30',NULL),(37,3,8,'2018-01-01','2023-06-30',NULL),(38,3,21,'2018-01-01','2022-06-30',NULL),(39,3,12,'2018-01-01','2022-06-30',NULL),(40,3,2,'2018-01-01','2024-06-30',NULL),(41,3,23,'2018-01-01','2022-06-30',NULL),(42,3,18,'2018-01-01','2024-06-30',NULL),(43,3,14,'2018-01-01','2022-06-30',NULL),(44,3,4,'2018-01-01','2024-06-30',NULL),(45,3,7,'2018-01-01','2023-06-30',NULL),(46,4,14,'2018-01-01','2023-06-30',NULL),(47,4,17,'2018-01-01','2023-06-30',NULL),(48,4,10,'2018-01-01','2024-06-30',NULL),(49,4,7,'2018-01-01','2023-06-30',NULL),(50,4,8,'2018-01-01','2024-06-30',NULL),(51,4,19,'2018-01-01','2023-06-30',NULL),(52,4,12,'2018-01-01','2022-06-30',NULL),(53,4,5,'2018-01-01','2024-06-30',NULL),(54,4,11,'2018-01-01','2024-06-30',NULL),(55,4,18,'2018-01-01','2023-06-30',NULL),(56,4,16,'2018-01-01','2023-06-30',NULL),(57,4,15,'2018-01-01','2023-06-30',NULL),(58,4,22,'2018-01-01','2023-06-30',NULL),(59,4,9,'2018-01-01','2024-06-30',NULL),(60,4,21,'2018-01-01','2024-06-30',NULL);
/*!40000 ALTER TABLE `tbl_plays_for` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_plays_in_league`
--

DROP TABLE IF EXISTS `tbl_plays_in_league`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_plays_in_league` (
  `league_id` int NOT NULL,
  `club_id` int NOT NULL,
  `season` year NOT NULL,
  PRIMARY KEY (`league_id`,`club_id`,`season`),
  KEY `fk_plays_in_ref_league` (`league_id`,`season`),
  KEY `fk_plays_in_ref_club` (`club_id`),
  CONSTRAINT `fk_plays_in_ref_club` FOREIGN KEY (`club_id`) REFERENCES `tbl_club` (`club_id`),
  CONSTRAINT `fk_plays_in_ref_league` FOREIGN KEY (`league_id`, `season`) REFERENCES `tbl_league` (`league_id`, `season`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_plays_in_league`
--

LOCK TABLES `tbl_plays_in_league` WRITE;
/*!40000 ALTER TABLE `tbl_plays_in_league` DISABLE KEYS */;
INSERT INTO `tbl_plays_in_league` VALUES (1,1,2018),(1,2,2018),(1,3,2018),(1,4,2018);
/*!40000 ALTER TABLE `tbl_plays_in_league` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ranking`
--

DROP TABLE IF EXISTS `tbl_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ranking` (
  `ranking_id` int NOT NULL,
  `league_id` int NOT NULL,
  `season` year NOT NULL,
  `club_id` int NOT NULL,
  `match_played` int DEFAULT NULL,
  `wins` int DEFAULT NULL,
  `losses` int DEFAULT NULL,
  `draws` int DEFAULT NULL,
  `goals_for` int DEFAULT NULL,
  `goals_against` int DEFAULT NULL,
  PRIMARY KEY (`ranking_id`,`league_id`,`season`,`club_id`),
  KEY `fk_ranking_ref_league` (`league_id`,`season`),
  KEY `fk_ranking_ref_club` (`club_id`),
  CONSTRAINT `fk_ranking_ref_club` FOREIGN KEY (`club_id`) REFERENCES `tbl_club` (`club_id`),
  CONSTRAINT `fk_ranking_ref_league` FOREIGN KEY (`league_id`, `season`) REFERENCES `tbl_league` (`league_id`, `season`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ranking`
--

LOCK TABLES `tbl_ranking` WRITE;
/*!40000 ALTER TABLE `tbl_ranking` DISABLE KEYS */;
INSERT INTO `tbl_ranking` VALUES (1,1,2018,1,38,30,4,4,90,31),(2,1,2018,2,38,32,3,3,95,26),(3,1,2018,3,38,25,6,7,80,42),(4,1,2018,4,38,22,10,6,70,45);
/*!40000 ALTER TABLE `tbl_ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_referee`
--

DROP TABLE IF EXISTS `tbl_referee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_referee` (
  `referee_id` int NOT NULL,
  `refreee_name` varchar(200) DEFAULT NULL,
  `nationality` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`referee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_referee`
--

LOCK TABLES `tbl_referee` WRITE;
/*!40000 ALTER TABLE `tbl_referee` DISABLE KEYS */;
INSERT INTO `tbl_referee` VALUES (1,'Michael Oliver','English'),(2,'Anthony Taylor','English'),(3,'Martin Atkinson','English'),(4,'Kevin Friend','English'),(5,'Paul Tierney','English'),(6,'Craig Pawson','English'),(7,'Chris Kavanagh','English'),(8,'Andre Marriner','English'),(9,'Stuart Attwell','English'),(10,'Lee Mason','English');
/*!40000 ALTER TABLE `tbl_referee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_works_for`
--

DROP TABLE IF EXISTS `tbl_works_for`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_works_for` (
  `club_id` int NOT NULL,
  `official_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`club_id`,`official_id`,`start_date`),
  KEY `fk_works_ref_officials` (`official_id`),
  CONSTRAINT `fk_works_ref_club` FOREIGN KEY (`club_id`) REFERENCES `tbl_club` (`club_id`),
  CONSTRAINT `fk_works_ref_officials` FOREIGN KEY (`official_id`) REFERENCES `tbl_club_officials` (`official_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_works_for`
--

LOCK TABLES `tbl_works_for` WRITE;
/*!40000 ALTER TABLE `tbl_works_for` DISABLE KEYS */;
INSERT INTO `tbl_works_for` VALUES (1,1,'2018-01-01','2019-12-31'),(1,2,'2018-01-01','2019-12-31'),(1,3,'2018-01-01','2019-12-31'),(1,4,'2018-01-01','2019-12-31'),(1,5,'2018-01-01','2019-12-31'),(1,6,'2018-01-01','2019-12-31'),(1,7,'2018-01-01','2019-12-31'),(2,8,'2018-01-01','2019-12-31'),(2,9,'2018-01-01','2019-12-31'),(2,10,'2018-01-01','2019-12-31'),(2,11,'2018-01-01','2019-12-31'),(2,12,'2018-01-01','2019-12-31'),(2,13,'2018-01-01','2019-12-31'),(2,14,'2018-01-01','2019-12-31'),(3,15,'2018-01-01','2019-12-31'),(3,16,'2018-01-01','2019-12-31'),(3,17,'2018-01-01','2019-12-31'),(3,18,'2018-01-01','2019-12-31'),(3,19,'2018-01-01','2019-12-31'),(3,20,'2018-01-01','2019-12-31'),(4,21,'2018-01-01','2019-12-31'),(4,22,'2018-01-01','2019-12-31'),(4,23,'2018-01-01','2019-12-31'),(4,24,'2018-01-01','2019-12-31'),(4,25,'2018-01-01','2019-12-31');
/*!40000 ALTER TABLE `tbl_works_for` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-29  0:42:56
