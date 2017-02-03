CREATE DATABASE  IF NOT EXISTS `imgsquare` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `imgsquare`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: imgsquare
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_uploaded` datetime NOT NULL,
  `title` varchar(100) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `file_type` varchar(100) NOT NULL,
  `file_path` varchar(150) NOT NULL,
  `full_path` varchar(255) NOT NULL,
  `raw_name` varchar(100) NOT NULL,
  `orig_name` varchar(100) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `file_ext` varchar(10) NOT NULL,
  `file_size` decimal(10,0) NOT NULL,
  `is_image` tinyint(1) NOT NULL,
  `image_width` int(11) NOT NULL,
  `image_height` int(11) NOT NULL,
  `image_type` varchar(10) NOT NULL,
  `image_size_str` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'2017-02-03 14:26:00','Mountain Men','Before the meeting ...','lol2.jpg','image/jpeg','C:/wamp64/www/imgSquare/uploads/','C:/wamp64/www/imgSquare/uploads/lol2.jpg','lol2','lol.jpg','lol.jpg','.jpg',140,1,954,562,'jpeg','width=\"954\" height=\"562\"'),(2,'2017-02-03 14:26:00','Flat UI - Check Icon','Great icon for success messages','Retina-Ready.png','image/png','C:/wamp64/www/imgSquare/uploads/','C:/wamp64/www/imgSquare/uploads/Retina-Ready.png','Retina-Ready','Retina-Ready.png','Retina-Ready.png','.png',10,1,234,208,'png','width=\"234\" height=\"208\"'),(3,'2017-02-03 14:26:00','Flat UI - Chat Icon','Great icon for interactive chat','Chat.png','image/png','C:/wamp64/www/imgSquare/uploads/','C:/wamp64/www/imgSquare/uploads/Chat.png','Chat','Chat.png','Chat.png','.png',4,1,200,200,'png','width=\"200\" height=\"200\"'),(4,'2017-02-03 14:26:00','Flat UI - Pencils','Cool for info graphics','Pensils.png','image/png','C:/wamp64/www/imgSquare/uploads/','C:/wamp64/www/imgSquare/uploads/Pensils.png','Pensils','Pensils.png','Pensils.png','.png',12,1,200,200,'png','width=\"200\" height=\"200\"'),(5,'2017-02-03 14:26:00','awdwad','','Mail.png','image/png','C:/wamp64/www/imgSquare/uploads/','C:/wamp64/www/imgSquare/uploads/Mail.png','Mail','Mail.png','Mail.png','.png',7,1,193,200,'png','width=\"193\" height=\"200\"'),(6,'2017-02-03 14:26:00','What?','When would you ever use this','Toilet-Paper.png','image/png','C:/wamp64/www/imgSquare/uploads/','C:/wamp64/www/imgSquare/uploads/Toilet-Paper.png','Toilet-Paper','Toilet-Paper.png','Toilet-Paper.png','.png',4,1,200,200,'png','width=\"200\" height=\"200\"'),(9,'0000-00-00 00:00:00','Elf','he\'s green','IMG_6713.JPG','image/jpeg','C:/wamp64/www/imgSquare/uploads/','C:/wamp64/www/imgSquare/uploads/IMG_6713.JPG','IMG_6713','IMG_6713.JPG','IMG_6713.JPG','.JPG',90,1,640,480,'jpeg','width=\"640\" height=\"480\"'),(10,'1970-01-01 00:00:00','Blah','Hello','IMG_6728.JPG','image/jpeg','C:/wamp64/www/imgSquare/uploads/','C:/wamp64/www/imgSquare/uploads/IMG_6728.JPG','IMG_6728','IMG_6728.JPG','IMG_6728.JPG','.JPG',101,1,640,480,'jpeg','width=\"640\" height=\"480\"'),(11,'2017-02-03 21:58:11','awdwad','','IMG_6726.JPG','image/jpeg','C:/wamp64/www/imgSquare/uploads/','C:/wamp64/www/imgSquare/uploads/IMG_6726.JPG','IMG_6726','IMG_6726.JPG','IMG_6726.JPG','.JPG',79,1,640,480,'jpeg','width=\"640\" height=\"480\"'),(12,'2017-02-03 21:58:25','awdwadaw','','IMG_6715.JPG','image/jpeg','C:/wamp64/www/imgSquare/uploads/','C:/wamp64/www/imgSquare/uploads/IMG_6715.JPG','IMG_6715','IMG_6715.JPG','IMG_6715.JPG','.JPG',131,1,640,480,'jpeg','width=\"640\" height=\"480\"'),(13,'2017-02-03 21:59:29','The logo','','ThePartridg_DD77a0a.jpg','image/jpeg','C:/wamp64/www/imgSquare/uploads/','C:/wamp64/www/imgSquare/uploads/ThePartridg_DD77a0a.jpg','ThePartridg_DD77a0a','ThePartridg_DD77a0a.jpg','ThePartridg_DD77a0a.jpg','.jpg',142,1,2100,2100,'jpeg','width=\"2100\" height=\"2100\"');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-03 16:32:23
