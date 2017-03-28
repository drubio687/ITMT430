-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: hawkstagram
-- ------------------------------------------------------
-- Server version	5.5.54-0ubuntu0.14.04.1-log

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
-- Table structure for table `Likes`
--

DROP TABLE IF EXISTS `Likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Likes` (
  `user_id` int(11) NOT NULL,
  `photo_id` int(11) unsigned NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Likes`
--

LOCK TABLES `Likes` WRITE;
/*!40000 ALTER TABLE `Likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo_comments`
--

DROP TABLE IF EXISTS `photo_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo_comments` (
  `photo_id` int(11) unsigned NOT NULL,
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_comments`
--

LOCK TABLES `photo_comments` WRITE;
/*!40000 ALTER TABLE `photo_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `photo_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo_tags`
--

DROP TABLE IF EXISTS `photo_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo_tags` (
  `photo_id` int(11) unsigned NOT NULL,
  `tag_id` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`photo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_tags`
--

LOCK TABLES `photo_tags` WRITE;
/*!40000 ALTER TABLE `photo_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `photo_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `photo_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `caption` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `image_path` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image_size` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`photo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `salted_password` varchar(255) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Bburton','bburt1234@hawk.itt.edu','password','Barry','Burton','2017-03-08 06:20:13','2017-03-08 06:20:13'),(2,'JValenine','Jv121@hawk.itt.edu','password','Jill','Valentine','2017-03-08 07:24:03','2017-03-08 07:24:03'),(3,'RChambers','rcham231@hawk.itt.edu','password','Rebecca','Chambers','2017-03-08 07:24:03','2017-03-08 07:24:03'),(4,'AWesker','awesk123@hawk.itt.edu','password','Albert','Wesker','2017-03-08 07:24:04','2017-03-08 07:24:04'),(5,'CRedfield','cred123@hawk.itt.edu','password','Chris','Redfield','2017-03-08 07:24:04','2017-03-08 07:24:04'),(6,'EWinters','Ewint123@hawk.itt.edu','password','Ethan','Winters','2017-03-08 07:24:04','2017-03-08 07:24:04'),(7,'BVickers','bvick123@hawk.itt.edu','password','Brad','Vickers','2017-03-08 07:24:04','2017-03-08 07:24:04'),(8,'DVazquez','Dvaz123@hawk.itt.edu','password','Damary','Vazquez','2017-03-08 07:24:04','2017-03-08 07:24:04'),(9,'CRedfield1','Cred6146@hawk.itt.edu','password','Claire','Redfield','2017-03-08 07:24:04','2017-03-08 07:24:04'),(10,'SBurkin','Sburkin231@hawk.itt.edu','password','Sherry','Burkin','2017-03-08 07:24:05','2017-03-08 07:24:05'),(11,'StBurnside','stburn@hawk.itt.edu','password','Steve','Burnside','2017-03-08 07:24:05','2017-03-08 07:24:05'),(12,'Link','link123@hawk.itt.edu','password','Link','Hyrule','2017-03-08 07:24:05','2017-03-08 07:24:05'),(13,'Zelda','zelda123@hawk.itt.edu','password','Zelda','Hyrule','2017-03-08 07:24:05','2017-03-08 07:24:05'),(14,'Ganondorf','ganon123@hawk.itt.edu','password','Ganon','Gerudo','2017-03-08 07:24:05','2017-03-08 07:24:05'),(15,'LKnope','leslie123@hawk.itt.edu','password','Leslie','Knope','2017-03-08 07:24:06','2017-03-08 07:24:06'),(16,'ARose','axel123@hawk.itt.edu','password','Axel','Rose','2017-03-08 07:24:06','2017-03-08 07:24:06'),(17,'SSLash','slash123@hawk.itt.edu','password','Slash','Monster','2017-03-08 07:24:06','2017-03-08 07:24:06'),(18,'DMckaggen','Duff123@hawk.itt.edu','password','Duff','Mckaggen','2017-03-08 07:24:59','2017-03-08 07:24:59'),(19,'AAshford','Aash123@hawk.iit.edu','password','Alexa','Ashford','2017-03-08 08:54:03','2017-03-08 08:54:03');
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

-- Dump completed on 2017-03-27 22:11:50
