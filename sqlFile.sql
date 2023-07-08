@@ -0,0 +1,405 @@
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (arm64)
--
-- Host: localhost    Database: OTT
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `accounting`
--

DROP TABLE IF EXISTS `accounting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounting` (
  `acc_ID` int NOT NULL,
  `password` int NOT NULL,
  `movie_deal_ID` int DEFAULT NULL,
  `show_deal_ID` int DEFAULT NULL,
  PRIMARY KEY (`acc_ID`),
  KEY `movie_deal_ID` (`movie_deal_ID`),
  KEY `show_deal_ID` (`show_deal_ID`),
  CONSTRAINT `accounting_ibfk_1` FOREIGN KEY (`movie_deal_ID`) REFERENCES `costofmovies` (`deal_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `accounting_ibfk_2` FOREIGN KEY (`show_deal_ID`) REFERENCES `costofshows` (`deal_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounting`
--

LOCK TABLES `accounting` WRITE;
/*!40000 ALTER TABLE `accounting` DISABLE KEYS */;
INSERT INTO `accounting` VALUES (1,123,101,NULL),(2,234,NULL,NULL),(3,345,102,104),(4,678,104,101),(5,157,105,106),(6,826,103,103),(7,953,110,101),(8,824,101,107),(9,685,106,105),(10,818,108,103);
/*!40000 ALTER TABLE `accounting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actorofmovies`
--

DROP TABLE IF EXISTS `actorofmovies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actorofmovies` (
  `actor_ID` int NOT NULL,
  `movie_name` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`actor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actorofmovies`
--

LOCK TABLES `actorofmovies` WRITE;
/*!40000 ALTER TABLE `actorofmovies` DISABLE KEYS */;
INSERT INTO `actorofmovies` VALUES (101,'3 idiots','aamir khan'),(102,'KGF','Naveen kumar'),(103,'Dear zindagi','Alia bhat'),(104,'Drishyam','Ajay devgun'),(105,'PK','Anoushka Sharma'),(106,'URI','Vicky Kaushal'),(107,'Ra-one','Shah-Rukh-Khan'),(108,'Dangal','Aamir-Khan'),(109,'Barfi','Ranbir-Kapoor'),(110,'Oh-My-God','Akshay-Kumar');
/*!40000 ALTER TABLE `actorofmovies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actorofshows`
--

DROP TABLE IF EXISTS `actorofshows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actorofshows` (
  `actor_ID` int NOT NULL,
  `show_name` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`actor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actorofshows`
--

LOCK TABLES `actorofshows` WRITE;
/*!40000 ALTER TABLE `actorofshows` DISABLE KEYS */;
INSERT INTO `actorofshows` VALUES (101,'1899','Andreas Pietschmann'),(102,'Squid Game','Lee'),(103,'Stranger things','Milly-Bobby-Brown'),(104,'Dark','Louis Hoffman'),(105,'Peaky Blinders','Cillian Murphy'),(106,'Money Heist','Asa Butterfield'),(107,'Manifest','Melissa-Roxburgh'),(108,'The Witcher','Henry-Cavill'),(109,'Cursed','Katherine-Langford'),(110,'Enola Holmes','Milly-Bobby-Brown');
/*!40000 ALTER TABLE `actorofshows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `auth_ID` int NOT NULL,
  `password` int NOT NULL,
  `movie_ID` int DEFAULT NULL,
  `show_ID` int DEFAULT NULL,
  PRIMARY KEY (`auth_ID`),
  KEY `movie_ID` (`movie_ID`),
  KEY `show_ID` (`show_ID`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`movie_ID`) REFERENCES `movies` (`movie_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `admin_ibfk_2` FOREIGN KEY (`show_ID`) REFERENCES `shows` (`show_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,123,1,NULL),(3,345,3,NULL),(4,456,4,NULL),(5,567,5,NULL),(6,678,6,NULL),(7,123,NULL,1),(8,234,NULL,2),(9,345,NULL,3),(10,456,NULL,4),(11,567,NULL,5),(12,678,NULL,6),(13,233,7,NULL),(14,764,8,NULL),(15,147,9,NULL),(16,876,10,NULL),(17,139,NULL,7),(18,498,NULL,8),(19,510,NULL,9),(20,618,NULL,10);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `ID` int NOT NULL,
  `password` int NOT NULL,
  `name` varchar(40) NOT NULL,
  `address` varchar(100) NOT NULL,
  `age` int NOT NULL,
  `payment_option` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `movie_ID` int DEFAULT NULL,
  `show_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `movie_ID` (`movie_ID`),
  KEY `show_ID` (`show_ID`),
  CONSTRAINT `client_ibfk_1` FOREIGN KEY (`movie_ID`) REFERENCES `movies` (`movie_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `client_ibfk_2` FOREIGN KEY (`show_ID`) REFERENCES `shows` (`show_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,123,'ayush','uttam nagar',20,'debit','ayush_0',1,NULL),(2,123,'lalit','dwarka',19,'credit','lalit_0',NULL,NULL),(3,345,'ashmeet','pahar ganj',25,'cash','ashmeet_0',2,4),(4,678,'bhavya','vikar puri',23,'debit','bhavya_0',4,1),(5,157,'abhishek','tilak nagar',27,'credit','abhishek_0',5,6),(6,826,'sam','karol bagh',21,'cash','sam_0',3,3),(7,157,'aman','mumbai',27,'credit','aman_0',10,1),(8,811,'rahul','kolkata',21,'cash','rahul_0',1,7),(9,787,'shiv','noida',23,'debit','shiv_0',6,5),(10,109,'ram','gurugram',27,'credit','ram_0',8,3);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `costofmovies`
--

DROP TABLE IF EXISTS `costofmovies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `costofmovies` (
  `deal_ID` int NOT NULL,
  `value` int NOT NULL,
  `movie_name` varchar(40) NOT NULL,
  PRIMARY KEY (`deal_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costofmovies`
--

LOCK TABLES `costofmovies` WRITE;
/*!40000 ALTER TABLE `costofmovies` DISABLE KEYS */;
INSERT INTO `costofmovies` VALUES (101,55,'3 idiots'),(102,80,'KGF'),(103,44,'Dear zindagi'),(104,38,'Drishyam'),(105,67,'PK'),(106,25,'URI'),(107,144,'Ra-one'),(108,340,'Dangal'),(109,55,'Barfi'),(110,40,'Oh-My-God');
/*!40000 ALTER TABLE `costofmovies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `costofshows`
--

DROP TABLE IF EXISTS `costofshows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `costofshows` (
  `deal_ID` int NOT NULL,
  `value` int NOT NULL,
  `show_name` varchar(40) NOT NULL,
  PRIMARY KEY (`deal_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costofshows`
--

LOCK TABLES `costofshows` WRITE;
/*!40000 ALTER TABLE `costofshows` DISABLE KEYS */;
INSERT INTO `costofshows` VALUES (101,62,'1899'),(102,122,'Squid Game'),(103,188,'Stranger Things'),(104,89,'Dark'),(105,66,'Peaky Blinders'),(106,32,'Money Heist'),(107,66,'Manifest'),(108,220,'The Witcher'),(109,122,'Cursed'),(110,155,'Enola Holmes');
/*!40000 ALTER TABLE `costofshows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directorofmovies`
--

DROP TABLE IF EXISTS `directorofmovies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `directorofmovies` (
  `dir_ID` int NOT NULL,
  `movie_name` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`dir_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directorofmovies`
--

LOCK TABLES `directorofmovies` WRITE;
/*!40000 ALTER TABLE `directorofmovies` DISABLE KEYS */;
INSERT INTO `directorofmovies` VALUES (101,'3 idiots','Rajkumar hirani'),(102,'KGF','Prashanth Neel'),(103,'Dear zindagi','Gauri shinde'),(104,'Drishyam','Jeetu Joseph'),(105,'PK','Rajkumar hirani'),(106,'URI','Aditya Dhar'),(107,'Ra-one','Anubhav-Sinha'),(108,'Dangal','Nitest-Tiwari'),(109,'Barfi','Anurag-Basu'),(110,'Oh-My-God','Umesh-Shukla');
/*!40000 ALTER TABLE `directorofmovies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directorofshows`
--

DROP TABLE IF EXISTS `directorofshows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `directorofshows` (
  `dir_ID` int NOT NULL,
  `show_name` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`dir_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directorofshows`
--

LOCK TABLES `directorofshows` WRITE;
/*!40000 ALTER TABLE `directorofshows` DISABLE KEYS */;
INSERT INTO `directorofshows` VALUES (101,'1899','Baran Bo Odar'),(102,'Squid Game','Dong-hyuk'),(103,'Stranger things','Duffer-Brothers'),(104,'Dark','Baran Bo Odar'),(105,'Peaky Blinders','Otto-Bathrust'),(106,'Money Heist','Alejandro'),(107,'Manifest','Michael-Smith'),(108,'The Witcher','Tomasz-Baginski'),(109,'Cursed','Sean-Ellis'),(110,'Enola Holmes','Harry-Bradbeer');
/*!40000 ALTER TABLE `directorofshows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `episode`
--

DROP TABLE IF EXISTS `episode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `episode` (
  `ID` int NOT NULL,
  `content` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `episode_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `shows` (`show_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episode`
--

LOCK TABLES `episode` WRITE;
/*!40000 ALTER TABLE `episode` DISABLE KEYS */;
INSERT INTO `episode` VALUES (1,9,'1899'),(2,10,'Squid Game'),(3,34,'Stranger things'),(4,24,'Dark'),(5,36,'Peaky Blinders'),(6,40,'Money Heist'),(7,52,'Manifest'),(8,20,'The Witcher'),(9,10,'Cursed'),(10,16,'Enola Holmes');
/*!40000 ALTER TABLE `episode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `movie_ID` int NOT NULL,
  `name` varchar(40) NOT NULL,
  `rating` varchar(20) DEFAULT NULL,
  `genre` varchar(20) DEFAULT NULL,
  `score` int NOT NULL,
  `picture` varchar(40) NOT NULL,
  `description` varchar(300) NOT NULL,
  `actor_ID` int NOT NULL,
  `dir_ID` int NOT NULL,
  `deal_ID` int NOT NULL,
  PRIMARY KEY (`movie_ID`),
  KEY `actor_ID` (`actor_ID`),
  KEY `dir_ID` (`dir_ID`),
  KEY `deal_ID` (`deal_ID`),
  CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`actor_ID`) REFERENCES `actorofmovies` (`actor_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `movies_ibfk_2` FOREIGN KEY (`dir_ID`) REFERENCES `directorofmovies` (`dir_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `movies_ibfk_3` FOREIGN KEY (`deal_ID`) REFERENCES `costofmovies` (`deal_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'3 idiots','U','COMEDY/DRAMA',9,'3idiots.jpg','In college Farhan',101,101,101),(2,'KGF','U','drama/action',10,'RRR.jpg','Best movie',102,102,102),(3,'Dear zindagi','U','COMEDY/DRAMA',7,'dearzindagi.jpg','The plot centers on a budding cinematography who is dicontened with her life and meets a free spirit psychologist.',103,103,103),(4,'Drishyam','A','COMEDY/MYSTERY',10,'drishyam.jpg','Desperate measures are taken by a man who tries to save his family from the dark side of the law,after they commit an unexpected crime.',104,104,104),(5,'PK','U','ROMANCE/DRAMA',8,'pk.jpg','PK is a movie about ideas of stranger in the city who asks question that no one has asked before.',105,105,105),(6,'URI','A','CRIME/DRAMA',8,'uri.jpg','Indian army speical forces execute a covert operation, avenging the kiling of fellow army men at their base by a terrorist group.',106,106,106),(7,'Ra-one','U','DRAMA/ACTION',7,'raone.jpg','An immensely powerful virtual character that is designed to be stronger than G-one and has the ability to take any human form enters the real world.',107,107,107),(8,'Dangal','A','DRAMA',9,'dangal.jpg','Mahavir singh phogat and his two wrestler daughters struggle towards glory at the commonwealth games in the face of societal opression.',108,108,108),(9,'Barfi','U','COMEDY',8,'barfi.jpg','set in the 1970s in a pretty corner of india,barfi is the story of three young people who learn that love can neither be defined nor contained by society norms.',109,109,109),(10,'Oh-My-God','U','DRAMA',8,'ohmygod.jpg','Oh My God is a comedy drama.The story of a shopkeeper who blames god for his misfortunes after village is struck by an earthquake.',110,110,110);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shows`
--

DROP TABLE IF EXISTS `shows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shows` (
  `show_ID` int NOT NULL,
  `name` varchar(40) NOT NULL,
  `rating` varchar(20) DEFAULT NULL,
  `genre` varchar(20) DEFAULT NULL,
  `score` int NOT NULL,
  `picture` varchar(40) NOT NULL,
  `description` varchar(300) NOT NULL,
  `actor_ID` int NOT NULL,
  `dir_ID` int NOT NULL,
  `deal_ID` int NOT NULL,
  PRIMARY KEY (`show_ID`),
  KEY `actor_ID` (`actor_ID`),
  KEY `dir_ID` (`dir_ID`),
  KEY `deal_ID` (`deal_ID`),
  CONSTRAINT `shows_ibfk_1` FOREIGN KEY (`actor_ID`) REFERENCES `actorofshows` (`actor_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shows_ibfk_2` FOREIGN KEY (`dir_ID`) REFERENCES `directorofshows` (`dir_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shows_ibfk_3` FOREIGN KEY (`deal_ID`) REFERENCES `costofshows` (`deal_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shows`
--

LOCK TABLES `shows` WRITE;
/*!40000 ALTER TABLE `shows` DISABLE KEYS */;
INSERT INTO `shows` VALUES (1,'1899','U/A 16+','MYSTERY',10,'1899.jpg','Dark secrets and mysterious connections among the passengers of the kerberos come to light when they encounter a missing ship.',101,101,101),(2,'Squid Game','A','CRIME/DRAMA',9,'squidgame.jpg','As alliances form among the players,no one is safe in the dorm after the lights are down,Survive or die.',102,102,102),(3,'Stranger things','A','MYSTERY/DRAMA',9,'strangerthings.jpg','The sci-fi series featuring Milly Bobby Brown is a thriller story of a group of friends investigating their lost friend Will.',103,103,103),(4,'Dark','A','MYSTERY/DRAMA',9,'dark.jpg','In 2019, a local boy\'s disapperence stokes fear in the residents of Widen, a small German town with a strange and tragic history',104,104,104),(5,'Peaky Blinders','U/A 16+','CRIME/DRAMA',9,'peakyblinders.jpg','A Notorious gang in 1919 Birmingham,England, is led by the fierce tommy shellby,a crime boss set on moving up in the world no matter the cost',105,105,105),(6,'Money Heist','U/A 15+','CRIME/DRAMA',8,'moneyheist.jpg','This crime drama, which interlaces social commentary amid bullies,for gold.',106,106,106),(7,'Manifest','U/A 16+','SURVIVAL',8,'manifest.jpg','When a plane mysteriously lands years after take-off,the people onboard return to a world that has moved on without them.',102,102,102),(8,'The Witcher','U/A 18+','DRAMA/ACTION',9,'thewitcher.jpg','3 destinies interwined Witcher Geralt, a monster hunter for hire.',103,103,103),(9,'Cursed','U/A','HORROR/ACTION',8,'cursed.jpg','This fantasy series featuring Katherine Langford is based on a illustrated novel by Frank Miller and Tom Wheeler.',104,104,104),(10,'Enola Holmes','U/A 13+','MYSTERY/DRAMA',9,'enolaholmes.jpg','Cast goes sleuthing as the brilliant teen sister of famed detective sherlock holmes.',105,105,105);
/*!40000 ALTER TABLE `shows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `trans_ID` int NOT NULL,
  `status` varchar(30) NOT NULL,
  `pay` int NOT NULL,
  `client_ID` int NOT NULL,
  `acc_ID` int NOT NULL,
  PRIMARY KEY (`trans_ID`),
  KEY `client_ID` (`client_ID`),
  KEY `acc_ID` (`acc_ID`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`client_ID`) REFERENCES `client` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`acc_ID`) REFERENCES `accounting` (`acc_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,'NO',55,1,1),(2,'NO',0,2,2),(3,'YES',133,3,3),(4,'NO',100,4,4),(5,'YES',99,5,5),(6,'NO',232,6,6),(7,'YES',102,7,7),(8,'NO',121,8,8),(9,'YES',91,9,9),(10,'NO',528,10,10);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-20 13:34:30
