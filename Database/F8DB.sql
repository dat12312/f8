CREATE DATABASE  IF NOT EXISTS `f8db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `f8db`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: f8db
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `BlogID` int NOT NULL AUTO_INCREMENT,
  `BlogTitle` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `BlogImage` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `BlogDetail` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PostDate` datetime DEFAULT NULL,
  `User_UserID` int NOT NULL,
  `BlogStatus` int DEFAULT NULL,
  PRIMARY KEY (`BlogID`),
  KEY `fk_Blog_User1_idx` (`User_UserID`),
  CONSTRAINT `fk_Blog_User1` FOREIGN KEY (`User_UserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `Email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Facebook` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Password` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Phone` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `FullName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Image` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Dob` date DEFAULT NULL,
  `Address` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `GmailID` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `FacebookID` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `UserRole_RoleID` int NOT NULL,
  `CodeVerify` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  KEY `fk_User_UserRole1_idx` (`UserRole_RoleID`),
  CONSTRAINT `fk_User_UserRole1` FOREIGN KEY (`UserRole_RoleID`) REFERENCES `userrole` (`RoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'datnthe163935@fpt.edu.vn',NULL,'1234567',NULL,'nguyen tien dat',NULL,'2002-04-30',NULL,NULL,NULL,1,1,NULL),(2,'hientk160222@fpt.edu.vn',NULL,'1234567',NULL,'tran khanh hien',NULL,NULL,NULL,NULL,NULL,1,1,NULL),(3,'kienbvhe161471@fpt.edu.vn',NULL,'1234567',NULL,'bui van kien',NULL,NULL,NULL,NULL,NULL,1,1,NULL),(4,'duongnqhe171601@fpt.edu.vn',NULL,'1234567',NULL,'nguyen quy duong',NULL,NULL,NULL,NULL,NULL,1,1,NULL),(5,'test@gmail.com',NULL,'1234567',NULL,'test',NULL,NULL,NULL,NULL,NULL,0,2,NULL),(6,'tiendat320@gmail.com',NULL,'1234567','','tien dat','https://lh3.googleusercontent.com/a/AAcHTtfSlrWyn8NyiGA6h3JGIVw13gqnbuv1VNTQ_Y1MDes=s96-c','2023-05-26','','107695717564484456736',NULL,1,2,'007344');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userrole` (
  `RoleID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrole`
--

LOCK TABLES `userrole` WRITE;
/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
INSERT INTO `userrole` VALUES (1,'Admin'),(2,'Customer'),(3,'Sales'),(4,'Expert'),(5,'Marketing');
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'f8db'
--

--
-- Dumping routines for database 'f8db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-26 20:29:35
