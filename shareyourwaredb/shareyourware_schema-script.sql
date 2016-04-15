CREATE DATABASE  IF NOT EXISTS `shareyourware` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `shareyourware`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: shareyourware
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `listings`
--

DROP TABLE IF EXISTS `listings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listings` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto fdgfdg',
  `item_name` varchar(45) DEFAULT NULL,
  `item_askingprice_per_day` varchar(45) DEFAULT NULL,
  `item_category` varchar(45) DEFAULT NULL,
  `is_appropriate` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `item_description` text,
  `lister_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listings`
--

LOCK TABLES `listings` WRITE;
/*!40000 ALTER TABLE `listings` DISABLE KEYS */;
INSERT INTO `listings` VALUES (1,'Lawn Mower','$15.00','Gardening','Y','Richardson','2016-04-18','2016-04-29','Yamaha Lawn mower, brand new condition. Works lawns exceptionally well when in built shred and compacter tools. ',1),(2,'Ducati Monster 782','$85.00','Automobiles','Y','Addison','2016-04-22','2016-04-26','Ducati Motorcycle is all you need to relax in your own special way. Rides smooth and is full of torque. ',2),(3,'5000 W Marshall Speakers','$76.99','Electronics','Y','Downtown Dallas','2016-04-19','2016-05-30','Heavy sounding masterpiece of a sound that will be sufficient to perform live on a local concert and please the audience. Works on low range as well as high range sounds equally well. Produces crisp notes always. ',3),(4,'Carpet Cleaning Equipment','$22.99','Home Making','Y','Downtown Dallas','2016-04-18','2016-05-30','Professional Grade carpet cleaner that cleans out the carpet to perfection ',3);
/*!40000 ALTER TABLE `listings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `per_user`
--

DROP TABLE IF EXISTS `per_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `per_user` (
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(45) DEFAULT NULL,
  `is_admin` varchar(10) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `per_user`
--

LOCK TABLES `per_user` WRITE;
/*!40000 ALTER TABLE `per_user` DISABLE KEYS */;
INSERT INTO `per_user` VALUES ('Pavithran','Chittoor Rajarajan','2200 Waterview pkwy, Apt 1916 Richardson TX 75080',1,'Fused','Y','4692717277'),('Prasanjit','Khuntia','2200 Waterview pkwy, Apt 1916 Richardson TX 75080',2,'Fused','Y','(972) 804-0246'),('Avinash','Mishra','2200 Waterview pkwy, Apt 1916 Richardson TX 75080',3,'Fused','N','(313) 707-4298');
/*!40000 ALTER TABLE `per_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservations` (
  `item_id` int(11) NOT NULL COMMENT 'sas',
  `renter_id` int(11) NOT NULL,
  `from_date` varchar(45) DEFAULT NULL,
  `to_date` varchar(45) DEFAULT NULL,
  `reservation_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`reservation_id`),
  KEY `item_idx` (`item_id`),
  KEY `renter_idx` (`renter_id`),
  CONSTRAINT `item` FOREIGN KEY (`item_id`) REFERENCES `listings` (`item_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `renter` FOREIGN KEY (`renter_id`) REFERENCES `per_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9002 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (1,3,'2016-04-23','2016-04-26',9001);
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-15 17:19:19
