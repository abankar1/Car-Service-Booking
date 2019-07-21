-- MySQL dump 10.13  Distrib 8.0.15, for macos10.14 (x86_64)
--
-- Host: localhost    Database: mean
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Table structure for table `Booking`
--

DROP TABLE IF EXISTS `Booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Booking` (
  `Onum` int(20) NOT NULL AUTO_INCREMENT,
  `Cnum` int(20) NOT NULL,
  `SCnum` int(20) NOT NULL,
  `Date` varchar(20) NOT NULL,
  `Time` varchar(20) NOT NULL,
  `Pickup` varchar(50) NOT NULL,
  `Services` varchar(200) NOT NULL,
  `Total` int(20) NOT NULL,
  PRIMARY KEY (`Onum`),
  KEY `Cnum` (`Cnum`),
  KEY `SCnum` (`SCnum`),
  CONSTRAINT `Booking_ibfk_1` FOREIGN KEY (`Cnum`) REFERENCES `customer` (`Cnum`),
  CONSTRAINT `Booking_ibfk_2` FOREIGN KEY (`SCnum`) REFERENCES `servicecenter` (`SCnum`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Booking`
--

LOCK TABLES `Booking` WRITE;
/*!40000 ALTER TABLE `Booking` DISABLE KEYS */;
INSERT INTO `Booking` VALUES (27,7,1,'2019-04-30','13:00','Next day','Car Paint, Wheel Balancing, Engine Check, ',800),(28,7,6,'2019-05-15','14:00','Same Day','AC Check, Car Wash, Wheel Alignment, Oil Filter, ',220),(29,7,1,'2019-04-24','13:00','221 Barton Creek Dr','Car Paint, Car Wash, Wheel Balancing, ',520),(30,7,1,'2019-04-23','13:00','221 Barton Creek Dr','Car Paint, ',400),(31,7,1,'2019-04-24','13:01','221 Barton Creek Dr','Car Wash, ',20),(32,7,1,'2019-04-24','21:00','221 Barton Creek Dr','Car Wash, Wheel Balancing, ',120),(33,7,1,'2019-04-23','14:00','221 Barton Creek Dr','Car Paint, Car Wash, ',420),(34,7,1,'2019-04-23','13:00','221 Barton Creek Dr','Car Paint, Wheel Balancing, ',500),(35,7,1,'2019-04-24','21:00','221 Barton Creek Dr','Car Paint, Car Wash, Wheel Balancing, ',520);
/*!40000 ALTER TABLE `Booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Customer` (
  `Cnum` int(20) NOT NULL AUTO_INCREMENT,
  `Cname` varchar(50) NOT NULL,
  `Caddr` varchar(100) NOT NULL,
  `Ccity` varchar(50) NOT NULL,
  `Cpincode` int(20) NOT NULL,
  `Cmobno` varchar(20) NOT NULL,
  `Cemail` varchar(50) NOT NULL,
  `Cpassword` varchar(200) NOT NULL,
  PRIMARY KEY (`Cnum`),
  UNIQUE KEY `Cemail` (`Cemail`),
  UNIQUE KEY `Cmobno` (`Cmobno`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (7,'Akshay','221 Barton Creek Dr','Charlotte',28262,'9808339512','akshaybankar47@gmail.com','8d809bec84b22a9090075e55ffb01f65704adce5fe305fb700c794c7056200fa'),(8,'Sai Santosh','216 Barton Creek Dr','Charlotte',28262,'9802028148','vperumal@uncc.edu','baf46c63046d25af13fa7d9003bbf3e9297623f1d7c7408fbeadd7156cc9cec3'),(9,'Vinay Krishna','216 Barton Creek Dr','Charlotte',28262,'9803199722','vmutukun@uncc.edu','929ba795df547ffa83fced5f9cdbb0381c1b841db6826cebf806e5bf620bd39a'),(10,'Grishma','Ashford Green Apts','Charlotte',28262,'9195797839','gkalidin@uncc.edu','03ddee4a305add285d46f365dc88f912de326ea3a72e61d1cc862d4acc0250e5');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Service`
--

DROP TABLE IF EXISTS `Service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Service` (
  `Snum` int(20) NOT NULL AUTO_INCREMENT,
  `Sname` varchar(50) DEFAULT NULL,
  `SCnum` int(20) DEFAULT NULL,
  `Sprice` int(20) DEFAULT NULL,
  PRIMARY KEY (`Snum`),
  KEY `SCnum` (`SCnum`),
  CONSTRAINT `Service_ibfk_1` FOREIGN KEY (`SCnum`) REFERENCES `servicecenter` (`SCnum`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Service`
--

LOCK TABLES `Service` WRITE;
/*!40000 ALTER TABLE `Service` DISABLE KEYS */;
INSERT INTO `Service` VALUES (1,'Car Paint',1,400),(2,'Car Wash',1,20),(3,'Wheel Balancing',1,100),(4,'Oil Filter',1,70),(5,'Engine Check',1,300),(6,'AC Check',2,100),(7,'Wheel Alignment',2,200),(8,'Car Wash',2,30),(9,'AC Check',3,100),(10,'Car Wash',3,25),(11,'Wheel Alignment',3,150),(12,'AC Check',4,50),(13,'Car Wash',4,15),(14,'Wheel Alignment',4,150),(15,'AC Check',5,90),(16,'Car Wash',5,10),(17,'Wheel Alignment',5,50),(18,'AC Check',6,20),(19,'Car Wash',6,10),(20,'Wheel Alignment',6,90),(21,'AC Check',7,20),(22,'Car Wash',7,30),(23,'Wheel Alignment',7,120),(24,'AC Check',8,30),(25,'Car Wash',8,20),(26,'Wheel Alignment',8,70),(27,'AC Check',9,20),(28,'Car Wash',9,35),(29,'Wheel Alignment',9,100),(30,'AC Check',10,30),(31,'Car Wash',10,40),(32,'Wheel Alignment',10,60),(33,'AC Check',11,20),(34,'Car Wash',11,30),(35,'Wheel Alignment',11,150),(36,'Oil Filter',2,100),(37,'Oil Filter',3,200),(38,'Oil Filter',4,300),(39,'Oil Filter',5,200),(40,'Oil Filter',6,100),(41,'Oil Filter',7,200),(42,'Oil Filter',8,300),(43,'Oil Filter',9,100),(44,'Oil Filter',10,300),(45,'Oil Filter',11,200),(46,'Car Paint',2,300),(47,'Car Paint',3,400),(48,'Car Paint',4,500),(49,'Car Paint',6,400),(50,'Car Paint',5,200),(51,'Car Paint',7,100),(52,'Car Paint',8,500),(53,'Car Paint',9,200),(54,'Car Paint',10,300),(55,'Car Paint',11,400),(56,'Car Wash',13,20),(57,'Engine Tuning',13,200),(58,'Car Wash',16,20),(59,'Car Paint',16,200),(60,'Wheel Alignment',16,50),(61,'Service 1',28,200),(62,'Service 2',28,20),(63,'Service 3',28,30);
/*!40000 ALTER TABLE `Service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ServiceCenter`
--

DROP TABLE IF EXISTS `ServiceCenter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ServiceCenter` (
  `SCnum` int(20) NOT NULL AUTO_INCREMENT,
  `SCname` varchar(50) NOT NULL,
  `SCaddr` varchar(100) NOT NULL,
  `SCcity` varchar(50) NOT NULL,
  `SCpincode` int(20) NOT NULL,
  `SCmobno` varchar(20) NOT NULL,
  `SCemail` varchar(50) NOT NULL,
  PRIMARY KEY (`SCnum`),
  UNIQUE KEY `SCmobno` (`SCmobno`),
  UNIQUE KEY `SCemail` (`SCemail`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ServiceCenter`
--

LOCK TABLES `ServiceCenter` WRITE;
/*!40000 ALTER TABLE `ServiceCenter` DISABLE KEYS */;
INSERT INTO `ServiceCenter` VALUES (1,'Care Point','N Tryon St','Charlotte',28262,'2020964606','test1@gmail.com'),(2,'Auto Clean','N Tryon St','Charlotte',28262,'3822511412','test11@gmail.com'),(3,'The Motor Works','N Tryon St','Charlotte',28262,'5588071021','test12@gmail.com'),(4,'Car Hub Station','University City Blvd','Charlotte',28213,'4898986569','test2@gmail.com'),(5,'Auto Zone','Concord','Charlotte',28027,'4898986567','test3@gmail.com'),(6,'Glaze Motors','Baileywick Rd','Raleigh',28223,'4898986547','test4@gmail.com'),(7,'Platinum Cars','Baileywick Rd','Raleigh',28223,'5898986545','test5@gmail.com'),(8,'Cars Hub','Glenwood','Raleigh',27560,'2898986578','test6@gmail.com'),(9,'Care Point','University Dr','Durham',12345,'3020986978','test7@gmail.com'),(10,'Car Hub','Dixon Rd','Durham',24311,'5020986979','test8@gmail.com'),(11,'Auto Clean','Massey Chapel Rd','Durham',22222,'6020987979','test9@gmail.com'),(12,'NTB','N Tryon St','Charlotte',28262,'9822454454','test13@gmail.com'),(13,'My Service Centre','N Tryon St','Charlotte',28262,'9808339512','myservicecenter@gmail.com'),(16,'Tuffy Tire and Auto Services Center','Folly Rd','Charleston',29412,'1234567890','test14@gmail.com'),(28,'Dummy Values','Dummy Rd','Charleston',12345,'4908357075','test10@gmail.com');
/*!40000 ALTER TABLE `ServiceCenter` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-23 18:44:10
