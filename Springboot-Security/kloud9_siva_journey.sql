-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: kloud9_siva
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `journey`
--

DROP TABLE IF EXISTS `journey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `journey` (
  `BUS_NUMBER` int(11) NOT NULL,
  `BUS_NAME` varchar(45) NOT NULL,
  `SOURCE` varchar(45) NOT NULL,
  `DESTINATION` varchar(45) NOT NULL,
  `BUS_TYPE` varchar(45) DEFAULT NULL,
  `FARE` int(11) NOT NULL,
  `SEATS` int(11) DEFAULT NULL,
  `RATING` decimal(2,1) DEFAULT NULL,
  `BOARDING_TIME` time DEFAULT NULL,
  `DROPPING_TIME` time DEFAULT NULL,
  PRIMARY KEY (`BUS_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journey`
--

LOCK TABLES `journey` WRITE;
/*!40000 ALTER TABLE `journey` DISABLE KEYS */;
INSERT INTO `journey` VALUES (123,'Orange Tours & Travels','Bangalore','Hyderabad','A/C Multi-Axel Sleeper Semi (2+2)',1700,23,4.2,'23:30:00','07:45:00'),(231,'Orange Tours & Travels','Bangalore','Hyderabad','A/C Sleeper (2+1)',1400,32,4.1,'20:00:00','06:00:00'),(3456,'Kaveri Travels','Bangalore','Hyderabad','Volvo A/C Multi Axle Sleeper(2+1)',1390,24,3.9,'20:30:00','06:30:00'),(4565,'Evacay Bus','Bangalore','Chennai','Scania AC Multi Axle Semi Sleeper(2+2)',650,33,4.7,'23:30:00','04:45:00'),(4567,'Dream Liner Travels','Bangalore','Chennai','A/C Sleeper (2+1)',799,29,4.6,'22:30:00','05:00:00'),(5485,'SRS Travels','Bangalore','Chennai','Mercedes Benz Multi Axle (2+2)',850,49,4.0,'23:30:00','06:00:00'),(5647,'Diwakar Travels','Bangalore','Hyderabad','Scania AC Multi Axle Semi Sleeper(2+2)',845,43,4.2,'19:00:00','04:45:00'),(5654,'Asian Xpress','Bangalore','Chennai','Volvo A/C Multi-Axle Semisleeper (2+2)',550,31,4.6,'22:00:00','04:00:00'),(5765,'Sri Krishna Travel','Bangalore','Hyderabad','A/C Sleeper (2+1)',1290,18,4.3,'21:45:00','06:00:00'),(7769,'Morning Star Travel','Bangalore','Hyderabad','A/C Sleeper (2+1)',1390,31,3.4,'21:15:00','06:30:00'),(8628,'National Travels','Bangalore','Chennai','Volvo A/C Multi Axle Sleeper(2+1)',830,28,4.4,'23:30:00','05:30:00'),(9438,'Meenakshi Travels','Bangalore','Chennai','A/C Sleeper (2+1)',3874,36,4.0,'23:55:00','06:30:00');
/*!40000 ALTER TABLE `journey` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-03 20:58:04
