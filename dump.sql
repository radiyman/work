-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `role` varchar(150) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'user1','user1@gmail.com','06s7bIKs','admin','2020-03-10 12:30:01','2020-03-10 12:30:01'),(2,'user2','user2@gmail.com','68z6DiVo','operator','2020-03-10 12:30:02','2020-03-10 12:30:02'),(3,'user3','user3@gmail.com','1Nay6t1H','operator','2020-03-10 12:30:02','2020-03-10 12:30:02'),(4,'user4','user4@gmail.com','fz271OOm','operator','2020-03-10 12:30:03','2020-03-10 12:30:03'),(5,'user5','user5@gmail.com','OeR24b1r','operator','2020-03-10 12:30:03','2020-03-10 12:30:03'),(6,'user6','user6@gmail.com','JD39g4zf','operator','2020-03-10 12:30:04','2020-03-10 12:30:04'),(7,'user7','user7@gmail.com','abk10AV4','operator','2020-03-10 12:30:04','2020-03-10 12:30:04'),(8,'user8','user8@gmail.com','HK13u3rn','operator','2020-03-10 12:30:05','2020-03-10 12:30:05'),(9,'user9','user9@gmail.com','eD8y3D1c','operator','2020-03-10 12:30:05','2020-03-10 12:30:05'),(10,'user10','user10@gmail.com','8p13tdBM','user','2020-03-10 12:30:06','2020-03-10 12:30:06'),(11,'user11','user11@gmail.com','79Aju8zF','user','2020-03-10 12:30:07','2020-03-10 12:30:07'),(12,'user12','user12@gmail.com','p4G7xf7I','user','2020-03-10 12:30:08','2020-03-10 12:30:08'),(13,'user13','user13@gmail.com','Biro89R1','user','2020-03-10 12:30:09','2020-03-10 12:30:09');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-23  8:21:30
