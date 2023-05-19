CREATE DATABASE  IF NOT EXISTS `users` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `users`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: users
-- ------------------------------------------------------
-- Server version	5.7.42-log

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `birth_date` date NOT NULL,
  `email` varchar(254) NOT NULL,
  `profession` varchar(100) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `cel` varchar(15) NOT NULL,
  `cel_has_whatsapp` tinyint(1) DEFAULT '0',
  `notify_email` tinyint(1) DEFAULT '0',
  `notify_sms` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Letícia Pacheco dos Santos','1990-05-10','leticia@gmail.com','Desenvolvedora web','(11) 4033-2019','(11) 98493-2039',1,1,0,'2023-05-15 20:52:08','2023-05-15 20:52:08'),(2,'Rafael Oliveira Souza','1985-09-15','rafael@gmail.com','Engenheiro Civil','(21) 3302-8876','(21) 98765-4321',1,0,1,'2023-05-15 20:52:08','2023-05-15 20:52:08'),(3,'Carolina Mendes Rocha','1992-03-25','carolina@gmail.com','Advogada','(31) 4101-2020','(31) 98765-4321',1,1,1,'2023-05-15 20:52:08','2023-05-15 20:52:08'),(4,'Rodrigo Almeida Castro','1988-07-08','rodrigo@gmail.com','Médico','(11) 3201-3322','(11) 91234-5678',1,0,0,'2023-05-15 20:52:08','2023-05-15 20:52:08'),(5,'Fernanda Santos Silva','1995-11-01','fernanda@gmail.com','Arquiteta','(51) 3555-8899','(51) 99876-5432',1,1,1,'2023-05-15 20:52:08','2023-05-15 20:52:08');
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

-- Dump completed on 2023-05-19 16:12:24
