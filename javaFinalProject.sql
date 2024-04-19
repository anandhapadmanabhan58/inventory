CREATE DATABASE  IF NOT EXISTS `inventory` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `inventory`;
-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (arm64)
--
-- Host: localhost    Database: inventory
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `currentstock`
--

DROP TABLE IF EXISTS `currentstock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currentstock` (
  `productcode` varchar(45) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`productcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currentstock`
--

LOCK TABLES `currentstock` WRITE;
/*!40000 ALTER TABLE `currentstock` DISABLE KEYS */;
INSERT INTO `currentstock` VALUES ('c011',280),('prod1',131),('prod2',98),('prod3',200),('prod4',172),('prod5',500),('prod6',500),('prod7',10),('prod8',20);
/*!40000 ALTER TABLE `currentstock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `customercode` varchar(45) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (301,'vip1','Justin Thomas','New York','9818562354'),(302,'vip2','Sarath Kumar','Texas','9650245489'),(303,'std1','Rositta Ann','Hamilton','9236215622'),(304,'std2','Hari Krishna','London','8854612478'),(306,'vip3','John Victor','New Jersey','9826546182'),(308,'c112','Alen Antony','GTA','4332623724');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `productcode` varchar(45) NOT NULL,
  `productname` varchar(45) NOT NULL,
  `costprice` double NOT NULL,
  `sellprice` double NOT NULL,
  `brand` varchar(45) NOT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `productcode_UNIQUE` (`productcode`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (111,'prod1','Laptop',85000,90000,'Dell'),(112,'prod2','Laptop',70000,72000,'HP'),(113,'prod3','Mobile',60000,64000,'Apple'),(114,'prod4','Mobile',50000,51000,'Samsung'),(121,'prod5','Charger',2000,2100,'Apple'),(122,'prod6','Mouse',1700,1900,'Dell'),(128,'prod7','Power Adapter',3000,3500,'Dell'),(129,'prod8','Smart Watch',15000,17000,'Apple'),(130,'c011','VR headset',1700,2200,'Apple');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseinfo`
--

DROP TABLE IF EXISTS `purchaseinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseinfo` (
  `purchaseID` int NOT NULL AUTO_INCREMENT,
  `suppliercode` varchar(45) NOT NULL,
  `productcode` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  `quantity` int NOT NULL,
  `totalcost` double NOT NULL,
  PRIMARY KEY (`purchaseID`)
) ENGINE=InnoDB AUTO_INCREMENT=1013 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseinfo`
--

LOCK TABLES `purchaseinfo` WRITE;
/*!40000 ALTER TABLE `purchaseinfo` DISABLE KEYS */;
INSERT INTO `purchaseinfo` VALUES (1001,'sup1','prod1','Wed Jan 14 00:15:19 IST 2021',10,850000),(1002,'sup1','prod6','Wed Jan 14 00:15:19 IST 2021',20,34000),(1003,'sup2','prod3','Wed Jan 14 00:15:19 IST 2021',5,300000),(1004,'sup2','prod5','Wed Jan 14 00:15:19 IST 2021',5,10000),(1005,'sup3','prod2','Wed Jan 14 00:15:19 IST 2021',2,140000),(1006,'sup4','prod4','Wed Jan 14 00:15:19 IST 2021',2,100000),(1009,'sup2','prod3','Wed Sep 01 04:11:13 IST 2021',2,120000),(1010,'sup1','prod7','Wed Sep 01 04:25:06 IST 2021',10,30000),(1011,'sup2','prod8','Fri Sep 03 00:00:00 IST 2021',20,300000),(1012,'sup2','c011','Mon Apr 15 17:49:36 EDT 2024',100,170000);
/*!40000 ALTER TABLE `purchaseinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesinfo`
--

DROP TABLE IF EXISTS `salesinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesinfo` (
  `salesid` int NOT NULL AUTO_INCREMENT,
  `date` varchar(45) NOT NULL,
  `productcode` varchar(45) NOT NULL,
  `customercode` varchar(45) NOT NULL,
  `quantity` int NOT NULL,
  `revenue` double NOT NULL,
  `soldby` varchar(45) NOT NULL,
  PRIMARY KEY (`salesid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesinfo`
--

LOCK TABLES `salesinfo` WRITE;
/*!40000 ALTER TABLE `salesinfo` DISABLE KEYS */;
INSERT INTO `salesinfo` VALUES (2,'Wed Apr 10 00:00:00 EDT 2024','prod1','vip1',2,180000,'Dominic'),(3,'Thu Apr 11 00:00:00 EDT 2024','prod3','c112',2,128000,'abin');
/*!40000 ALTER TABLE `salesinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `suppliercode` varchar(45) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=411 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (402,'sup2','Torornto Appliances','Oshawa','1800560041'),(403,'sup3','Samsung','Scarborough','6546521234'),(404,'sup4','Google','Ajax','8555202215'),(407,'sup5','Lambton','New Market','8555203300'),(408,'sup6','Conestoga','Kitchener','9696969696'),(409,'c0987','Apple','California','436778994');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlogs`
--

DROP TABLE IF EXISTS `userlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userlogs` (
  `username` varchar(45) NOT NULL,
  `in_time` varchar(45) NOT NULL,
  `out_time` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlogs`
--

LOCK TABLES `userlogs` WRITE;
/*!40000 ALTER TABLE `userlogs` DISABLE KEYS */;
INSERT INTO `userlogs` VALUES ('root','2024-04-09T18:35:25.970575','2024-04-09T18:35:38.415528'),('root','2024-04-09T18:35:42.816522','2024-04-09T18:35:51.481707'),('anandhu','2024-04-09T18:35:57.084018','2024-04-09T18:36:54.964811'),('abin','2024-04-09T18:37:00.530824','2024-04-09T18:37:38.117632'),('abin','2024-04-09T19:07:35.457299','2024-04-09T19:08:21.427820'),('anandhu','2024-04-12T11:09:52.842009','2024-04-12T11:10:11.557287'),('anandhu','2024-04-12T12:12:34.673733','2024-04-12T12:13:15.672726'),('anandhu','2024-04-13T17:58:22.974880','2024-04-13T18:01:57.432220'),('anandhu','2024-04-15T18:27:23.354924','2024-04-15T18:27:37.978443'),('anandhu','2024-04-15T18:39:56.305450','2024-04-15T18:41:13.581390'),('anandhu','2024-04-15T18:42:48.216653','2024-04-15T18:42:54.143842'),('anandhu','2024-04-16T16:16:44.164788','2024-04-16T16:21:03.214599'),('anandhu','2024-04-16T16:29:54.555083','2024-04-16T16:40:46.279250'),('abin','2024-04-16T16:51:06.655450','2024-04-16T16:54:44.560442'),('anandhu','2024-04-16T17:17:15.279144','2024-04-16T17:17:21.401596'),('anandhu','2024-04-16T17:17:46.547371','2024-04-16T17:37:12.116559'),('anandhu','2024-04-16T17:40:26.255143','2024-04-16T17:56:02.162909'),('anandhu','2024-04-16T17:56:20.360716','2024-04-16T17:57:14.944093'),('anandhu','2024-04-16T17:57:23.815767','2024-04-16T17:59:35.691371'),('anandhu','2024-04-16T17:59:43.335313','2024-04-16T18:00:56.842381'),('anandhu','2024-04-16T18:01:29.621886','2024-04-16T18:03:27.857009'),('anandhu','2024-04-16T18:05:00.861624','2024-04-16T18:07:02.522741'),('abin','2024-04-16T18:07:08.954495','2024-04-16T18:09:54.099030'),('anandhu','2024-04-16T18:18:13.961200','2024-04-16T19:17:26.429569'),('anandhu','2024-04-16T19:17:37.478511','2024-04-16T19:18:17.111368');
/*!40000 ALTER TABLE `userlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  `usertype` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (31,'Anandhu','Toronto','4375595263','anandhu','anandhu','ADMINISTRATOR'),(32,'Abin','Toronto','9999998888','abin','abin','EMPLOYEE'),(33,'Dominic','North York','4374334842','dominic','dominic','EMPLOYEE'),(36,'root','GTA','root','root','root','ADMINISTRATOR');
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

-- Dump completed on 2024-04-16 19:19:32
