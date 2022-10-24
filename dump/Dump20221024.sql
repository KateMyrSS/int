-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `AuthorID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`AuthorID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Kate'),(2,'Test'),(3,'Maria'),(4,'Ann'),(5,'TestUser');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `BlogID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`BlogID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'Fashion'),(2,'Car'),(3,'Language'),(4,'Programming');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `PostID` int NOT NULL AUTO_INCREMENT,
  `BlogId` int NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Content` longtext NOT NULL,
  `CreatedOn` datetime NOT NULL,
  `CreatedBy` int NOT NULL,
  PRIMARY KEY (`PostID`),
  KEY `CreatedBy` (`CreatedBy`),
  KEY `BlogId` (`BlogId`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`CreatedBy`) REFERENCES `author` (`AuthorID`),
  CONSTRAINT `post_ibfk_2` FOREIGN KEY (`BlogId`) REFERENCES `blog` (`BlogID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,4,'Computer programming','Erik Bernhardsson is an outstanding blogger and coder with a programming blog. He discusses topics concerning all coders, such as Git repository, IDEs, naming conventions, and Windows support problems.','2022-10-20 11:59:59',1),(2,4,'Tips','Tips for Programming Beginners','2022-10-21 23:59:59',3),(3,4,'Modern programming','Programming is an intriguing sector as it gives us the superpower to regulate computer programs on the go. It can be used for ships, traffic control, robotics, self-driving vehicles, smartphone applications, websites, and many other things.','2022-10-24 10:59:59',1),(4,1,'Suspendisse','Mauris quis mauris egestas, varius mi eget, vehicula eros. Donec a interdum elit, a porttitor odio. Donec consectetur ullamcorper luctus. Quisque sollicitudin metus sed orci aliquam, in aliquam odio euismod. Duis nibh felis, suscipit ut nibh ac, facilisis pharetra erat. Integer velit ipsum, auctor at turpis nec, vehicula vestibulum ipsum. Aenean tincidunt justo eget libero accumsan lacinia. Aliquam a est mauris. In quis tortor vel ipsum facilisis condimentum. Aliquam tincidunt viverra nisi ac fermentum. Proin sed quam in lorem vestibulum porta eu at nulla. Nunc interdum ante eu mi porttitor, et placerat dolor lacinia. Nulla facilisi.','2022-10-10 10:59:59',4),(5,4,'Security','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id volutpat nisi, vitae lacinia justo. Cras quis augue nibh. Cras orci dolor, rhoncus quis ligula vitae, dignissim efficitur felis. Vivamus elementum libero sit amet tellus imperdiet ornare. Cras volutpat facilisis augue, non porttitor nulla. Etiam sem neque, fringilla id dui maximus, congue fringilla elit. Duis tortor mauris, pellentesque at pretium eu, ullamcorper at urna. Duis sit amet mauris sed lorem euismod efficitur. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec sed mattis diam, mattis hendrerit quam. Aenean fermentum pulvinar scelerisque. Pellentesque libero risus, imperdiet ut elit vitae, ullamcorper ultricies urna.','2021-10-10 10:59:59',5),(6,4,'Loren','Cras bibendum euismod lacus, eget pretium purus vulputate in. Aenean quis augue nunc. Integer porta, odio eu consequat lacinia, sapien risus rutrum augue, congue hendrerit sapien felis eu lectus. Integer commodo massa justo, id accumsan tortor dapibus quis. Proin vitae odio a augue commodo cursus ut eu velit. Praesent ante mi, gravida eu semper sit amet, vulputate euismod diam. Maecenas cursus rutrum sem, quis interdum dui finibus nec. Aliquam quis purus et nulla faucibus semper. Suspendisse potenti. Sed mollis lacus fermentum lectus gravida, suscipit ullamcorper nisi sodales.','2021-10-08 10:59:59',1);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posttag`
--

DROP TABLE IF EXISTS `posttag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posttag` (
  `PostID` int NOT NULL,
  `TagID` int NOT NULL,
  PRIMARY KEY (`PostID`,`TagID`),
  KEY `TagID` (`TagID`),
  CONSTRAINT `posttag_ibfk_1` FOREIGN KEY (`PostID`) REFERENCES `post` (`PostID`),
  CONSTRAINT `posttag_ibfk_2` FOREIGN KEY (`TagID`) REFERENCES `tag` (`TagID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posttag`
--

LOCK TABLES `posttag` WRITE;
/*!40000 ALTER TABLE `posttag` DISABLE KEYS */;
INSERT INTO `posttag` VALUES (4,1),(5,1),(1,4),(2,4),(3,4),(1,5),(5,6);
/*!40000 ALTER TABLE `posttag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `TagID` int NOT NULL AUTO_INCREMENT,
  `TagName` varchar(255) NOT NULL,
  PRIMARY KEY (`TagID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'fashion'),(2,'car'),(3,'moto'),(4,'programming'),(5,'testing'),(6,'desigh');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-24 20:00:21
