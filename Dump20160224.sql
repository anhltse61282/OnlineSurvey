CREATE DATABASE  IF NOT EXISTS `onlinesurveysystem` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `onlinesurveysystem`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: onlinesurveysystem
-- ------------------------------------------------------
-- Server version	5.7.9-enterprise-commercial-advanced-log

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
-- Table structure for table `__migrationhistory`
--

DROP TABLE IF EXISTS `__migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__migrationhistory` (
  `MigrationId` varchar(150) NOT NULL DEFAULT '',
  `ContextKey` text NOT NULL,
  `Model` blob NOT NULL,
  `ProductVersion` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`MigrationId`,`ContextKey`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__migrationhistory`
--

LOCK TABLES `__migrationhistory` WRITE;
/*!40000 ALTER TABLE `__migrationhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `__migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift`
--

DROP TABLE IF EXISTS `gift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DonatingUserID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL DEFAULT '',
  `ImgUrl` longtext NOT NULL,
  `Description` varchar(150) DEFAULT '',
  `Quantity` int(11) NOT NULL,
  `RequirePoints` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `DonatingDate` datetime NOT NULL,
  `ApprovingDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_Gift_Member` (`DonatingUserID`),
  CONSTRAINT `FK_Gift_Member` FOREIGN KEY (`DonatingUserID`) REFERENCES `member` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift`
--

LOCK TABLES `gift` WRITE;
/*!40000 ALTER TABLE `gift` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giftexchange`
--

DROP TABLE IF EXISTS `giftexchange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftexchange` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GiftID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `TotalPoints` int(11) NOT NULL,
  `DeliveryAddress` text NOT NULL,
  `Status` int(11) NOT NULL,
  `ExchangeDate` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_GiftExchange_Gift` (`GiftID`),
  KEY `FK_GiftExchange_Member` (`UserID`),
  CONSTRAINT `FK_GiftExchange_Gift` FOREIGN KEY (`GiftID`) REFERENCES `gift` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_GiftExchange_Member` FOREIGN KEY (`UserID`) REFERENCES `member` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giftexchange`
--

LOCK TABLES `giftexchange` WRITE;
/*!40000 ALTER TABLE `giftexchange` DISABLE KEYS */;
/*!40000 ALTER TABLE `giftexchange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history_store`
--

DROP TABLE IF EXISTS `history_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history_store` (
  `timemark` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `table_name` tinytext NOT NULL,
  `pk_date_src` text NOT NULL,
  `pk_date_dest` text NOT NULL,
  `record_state` int(11) NOT NULL,
  PRIMARY KEY (`table_name`(100),`pk_date_dest`(100))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_store`
--

LOCK TABLES `history_store` WRITE;
/*!40000 ALTER TABLE `history_store` DISABLE KEYS */;
INSERT INTO `history_store` VALUES ('2016-02-23 15:51:23','Users','<Id>admin</Id>','<Id>admin</Id>',1),('2016-02-23 15:51:58','Member','<ID>1</ID>','<ID>1</ID>',1),('2016-02-23 15:59:47','Survey','<ID>1</ID>','<ID>1</ID>',1),('2016-02-23 16:59:01','Question','<ID>7</ID>','<ID>7</ID>',1),('2016-02-23 16:59:01','Survey','<ID>9</ID>','<ID>9</ID>',1),('2016-02-23 16:53:56','Question','<ID>3</ID>','<ID>3</ID>',3),('2016-02-23 16:56:07','Question','<ID>6</ID>','<ID>6</ID>',1),('2016-02-23 16:53:56','Question','<ID>1</ID>','<ID>1</ID>',3),('2016-02-23 16:53:56','Question','<ID>2</ID>','<ID>2</ID>',3),('2016-02-23 16:54:44','Survey','<ID>7</ID>','<ID>7</ID>',1),('2016-02-23 16:56:06','Survey','<ID>8</ID>','<ID>8</ID>',1),('2016-02-23 17:02:19','Survey','<ID>10</ID>','<ID>10</ID>',1),('2016-02-23 17:02:20','Question','<ID>8</ID>','<ID>8</ID>',1),('2016-02-23 17:04:12','SurveyQuestion','<ID>1</ID>','<ID>1</ID>',1),('2016-02-23 17:05:38','Survey','<ID>11</ID>','<ID>11</ID>',1),('2016-02-23 17:05:39','Question','<ID>9</ID>','<ID>9</ID>',1),('2016-02-23 17:06:22','Survey','<ID>12</ID>','<ID>12</ID>',1),('2016-02-23 17:06:24','Question','<ID>10</ID>','<ID>10</ID>',1),('2016-02-23 17:07:03','Survey','<ID>13</ID>','<ID>13</ID>',1),('2016-02-23 17:07:04','Question','<ID>11</ID>','<ID>11</ID>',1),('2016-02-23 17:08:38','Survey','<ID>14</ID>','<ID>14</ID>',1),('2016-02-23 17:08:39','Question','<ID>12</ID>','<ID>12</ID>',1),('2016-02-23 17:09:31','Survey','<ID>15</ID>','<ID>15</ID>',1),('2016-02-23 17:09:32','Question','<ID>13</ID>','<ID>13</ID>',1),('2016-02-23 17:09:32','Option','<ID>3</ID>','<ID>3</ID>',1),('2016-02-23 17:09:32','Option','<ID>4</ID>','<ID>4</ID>',1),('2016-02-23 17:11:28','Survey','<ID>16</ID>','<ID>16</ID>',1),('2016-02-23 17:11:50','Survey','<ID>17</ID>','<ID>17</ID>',1),('2016-02-23 17:11:51','Question','<ID>14</ID>','<ID>14</ID>',1),('2016-02-23 17:11:51','Option','<ID>5</ID>','<ID>5</ID>',1),('2016-02-23 17:11:51','Option','<ID>6</ID>','<ID>6</ID>',1),('2016-02-23 17:14:08','Survey','<ID>18</ID>','<ID>18</ID>',1),('2016-02-23 17:14:08','Question','<ID>15</ID>','<ID>15</ID>',1),('2016-02-23 17:14:08','Option','<ID>7</ID>','<ID>7</ID>',1),('2016-02-23 17:14:08','Option','<ID>8</ID>','<ID>8</ID>',1),('2016-02-23 17:15:42','Survey','<ID>19</ID>','<ID>19</ID>',1),('2016-02-23 17:15:43','Question','<ID>16</ID>','<ID>16</ID>',1),('2016-02-23 17:15:43','Option','<ID>9</ID>','<ID>9</ID>',1),('2016-02-23 17:17:18','Survey','<ID>20</ID>','<ID>20</ID>',1),('2016-02-23 17:17:19','Question','<ID>17</ID>','<ID>17</ID>',1),('2016-02-23 17:17:19','Option','<ID>10</ID>','<ID>10</ID>',1),('2016-02-23 17:19:48','Survey','<ID>21</ID>','<ID>21</ID>',1),('2016-02-23 17:19:49','Question','<ID>18</ID>','<ID>18</ID>',1),('2016-02-23 17:19:49','Option','<ID>11</ID>','<ID>11</ID>',1),('2016-02-23 17:19:49','SurveyQuestion','<ID>3</ID>','<ID>3</ID>',1),('2016-02-23 17:20:37','Survey','<ID>22</ID>','<ID>22</ID>',1),('2016-02-23 17:20:38','Question','<ID>19</ID>','<ID>19</ID>',1),('2016-02-23 17:20:38','Option','<ID>12</ID>','<ID>12</ID>',1),('2016-02-23 17:20:38','Option','<ID>13</ID>','<ID>13</ID>',1),('2016-02-23 17:20:38','SurveyQuestion','<ID>4</ID>','<ID>4</ID>',1),('2016-02-23 17:20:38','Question','<ID>20</ID>','<ID>20</ID>',1),('2016-02-23 17:20:38','Option','<ID>14</ID>','<ID>14</ID>',1),('2016-02-23 17:20:38','Option','<ID>15</ID>','<ID>15</ID>',1),('2016-02-23 17:20:38','SurveyQuestion','<ID>5</ID>','<ID>5</ID>',1);
/*!40000 ALTER TABLE `history_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(128) NOT NULL DEFAULT '',
  `Gender` int(11) NOT NULL,
  `AvatarUrl` longtext,
  `Points` int(11) NOT NULL,
  `MemberLevel` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_Member_Username` (`UserID`),
  KEY `FK_Member_AspNetUsers` (`UserID`),
  CONSTRAINT `FK_Member_AspNetUsers` FOREIGN KEY (`UserID`) REFERENCES `users` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'admin',1,'acb',100,1,1);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option`
--

DROP TABLE IF EXISTS `option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `QuestionID` int(11) NOT NULL,
  `OptionContent` longtext NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_Option_Question` (`QuestionID`),
  CONSTRAINT `FK_Option_Question` FOREIGN KEY (`QuestionID`) REFERENCES `question` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option`
--

LOCK TABLES `option` WRITE;
/*!40000 ALTER TABLE `option` DISABLE KEYS */;
INSERT INTO `option` VALUES (3,13,'sdsadasd'),(4,13,'ghfghgfh'),(5,14,'dasdasd'),(6,14,'ygjhhgjhg'),(7,15,'dasdasd'),(8,15,'huyiyuiuy'),(9,16,'dasdsad'),(10,17,'asdasd'),(11,18,'asdasdsa'),(12,19,'dasdasd'),(13,19,'sadasdasd'),(14,20,'sadasdas'),(15,20,'wqeqwewq');
/*!40000 ALTER TABLE `option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MemberID` int(11) NOT NULL,
  `QuestionContent` longtext NOT NULL,
  `OfferedPoints` int(11) NOT NULL,
  `Type` int(11) NOT NULL,
  `AllowCustomAnswer` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_Question_Member` (`MemberID`),
  CONSTRAINT `FK_Question_Member` FOREIGN KEY (`MemberID`) REFERENCES `member` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (6,1,'Bạn bao nhiêu tuổi',10,0,0),(7,1,'dsadasd',10,0,0),(8,1,'asdasd',10,0,0),(9,1,'sadasdas',10,0,0),(10,1,'dasda',10,0,0),(11,1,'saddas',10,0,0),(12,1,'dsfsdfsd',10,0,0),(13,1,'asda',10,0,0),(14,1,'asdas',10,0,0),(15,1,'asdsadsa',10,0,0),(16,1,'sadasd',10,0,0),(17,1,'dasd',10,0,0),(18,1,'dasd',10,0,0),(19,1,'asdas',10,0,0),(20,1,'dsadsa',10,0,0);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `Id` varchar(128) NOT NULL DEFAULT '',
  `Name` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `AspNetRoles_RoleNameIndex` (`Name`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey`
--

DROP TABLE IF EXISTS `survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CreatingUserID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL DEFAULT '',
  `Description` text NOT NULL,
  `LogoUrl` longtext,
  `TotalOfferedPoints` int(11) NOT NULL,
  `CreateDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_Survey_Member` (`CreatingUserID`),
  CONSTRAINT `FK_Survey_Member` FOREIGN KEY (`CreatingUserID`) REFERENCES `member` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey`
--

LOCK TABLES `survey` WRITE;
/*!40000 ALTER TABLE `survey` DISABLE KEYS */;
INSERT INTO `survey` VALUES (1,1,'aaaa','aaaa','aaa',100,NULL),(7,1,'Làm giàu không khó','làm giàu ','adsdasd',100,'2016-02-23 23:54:44'),(8,1,'Làm giàu không khó','làm giàu','sadasdsa',100,'2016-02-23 23:56:06'),(9,1,'dasdsa','asdsad','asdasd',100,'2016-02-23 23:59:00'),(10,1,'asdsa','dasdasd','asdasdsa',100,'2016-02-24 00:02:19'),(11,1,'dsa','asdas','dasdasd',100,'2016-02-24 00:05:38'),(12,1,'dsad','asdasdas','dasdasd',100,'2016-02-24 00:06:22'),(13,1,'dsa','dasdas','asdasd',100,'2016-02-24 00:07:02'),(14,1,'dfsdf','dfsdsfsd','fsdfsd',100,'2016-02-24 00:08:37'),(15,1,'dsad','dasdasd','asdasdas',100,'2016-02-24 00:09:31'),(16,1,'dasd','asdasdas','asdasd',100,'2016-02-24 00:11:28'),(17,1,'dsa','asdas','dasdasda',100,'2016-02-24 00:11:49'),(18,1,'das','dasdasd','sadsad',100,'2016-02-24 00:14:07'),(19,1,'das','sdasd','asdasdsa',100,'2016-02-24 00:15:42'),(20,1,'sadas','dasdas','dasdasd',100,'2016-02-24 00:17:18'),(21,1,'asd','asdasd','asdasdas',100,'2016-02-24 00:19:48'),(22,1,'Bạn có muốn làm giàu','Bạn có muốn làm giàu','asdasdsad',100,'2016-02-24 00:20:37');
/*!40000 ALTER TABLE `survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyanswer`
--

DROP TABLE IF EXISTS `surveyanswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyanswer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SurveyRecordID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL,
  `QuestionOptionID` int(11) DEFAULT NULL,
  `CustomAnswer` varchar(100) DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `FK_SurveyAnswer_Option` (`QuestionOptionID`),
  KEY `FK_SurveyAnswer_Question` (`QuestionID`),
  KEY `FK_SurveyAnswer_SurveyRecord` (`SurveyRecordID`),
  CONSTRAINT `FK_SurveyAnswer_Option` FOREIGN KEY (`QuestionOptionID`) REFERENCES `option` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_SurveyAnswer_Question` FOREIGN KEY (`QuestionID`) REFERENCES `question` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_SurveyAnswer_SurveyRecord` FOREIGN KEY (`SurveyRecordID`) REFERENCES `surveyrecord` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyanswer`
--

LOCK TABLES `surveyanswer` WRITE;
/*!40000 ALTER TABLE `surveyanswer` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyanswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestion`
--

DROP TABLE IF EXISTS `surveyquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestion` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SurveyID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SurveyQuestion_Question` (`QuestionID`),
  KEY `FK_SurveyQuestion_Survey` (`SurveyID`),
  CONSTRAINT `FK_SurveyQuestion_Question` FOREIGN KEY (`QuestionID`) REFERENCES `question` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_SurveyQuestion_Survey` FOREIGN KEY (`SurveyID`) REFERENCES `survey` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestion`
--

LOCK TABLES `surveyquestion` WRITE;
/*!40000 ALTER TABLE `surveyquestion` DISABLE KEYS */;
INSERT INTO `surveyquestion` VALUES (1,7,6),(3,21,18),(4,22,19),(5,22,20);
/*!40000 ALTER TABLE `surveyquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyrecord`
--

DROP TABLE IF EXISTS `surveyrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyrecord` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `SurveyID` int(11) NOT NULL,
  `ObtainedPoints` int(11) NOT NULL,
  `RecordDate` datetime NOT NULL,
  `Status` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SurveyRecord_Member` (`UserID`),
  KEY `FK_SurveyRecord_Survey` (`SurveyID`),
  CONSTRAINT `FK_SurveyRecord_Member` FOREIGN KEY (`UserID`) REFERENCES `member` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_SurveyRecord_Survey` FOREIGN KEY (`SurveyID`) REFERENCES `survey` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyrecord`
--

LOCK TABLES `surveyrecord` WRITE;
/*!40000 ALTER TABLE `surveyrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userroles`
--

DROP TABLE IF EXISTS `userroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userroles` (
  `UserId` varchar(128) NOT NULL DEFAULT '',
  `RoleId` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`UserId`,`RoleId`),
  KEY `AspNetUserRoles_IX_RoleId` (`RoleId`),
  KEY `AspNetUserRoles_IX_UserId` (`UserId`),
  KEY `FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId` (`RoleId`),
  KEY `FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId` (`UserId`),
  CONSTRAINT `FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `roles` (`Id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userroles`
--

LOCK TABLES `userroles` WRITE;
/*!40000 ALTER TABLE `userroles` DISABLE KEYS */;
/*!40000 ALTER TABLE `userroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `Id` varchar(128) NOT NULL DEFAULT '',
  `Email` varchar(256) DEFAULT '',
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext,
  `SecurityStamp` longtext,
  `PhoneNumber` longtext,
  `UserName` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `AspNetUsers_UserNameIndex` (`UserName`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','acb@gmail.com',1,'123456','123456','1234567','admin');
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

-- Dump completed on 2016-02-24 13:00:27
