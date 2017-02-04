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
  `source` varchar(255) NOT NULL DEFAULT 'anonymous',
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (14,'2017-02-04 19:49:32','anonymous','Woman in a forest','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent cursus nec nunc ac pulvinar. Quisque eu dui ante. Nulla facilisi. Aliquam facilisis sed tellus et interdum. Aliquam ac tincidunt sapien.','pexels-photo-314120.jpeg','image/jpeg','C:/wamp64/www/imgSquare/uploads/','C:/wamp64/www/imgSquare/uploads/pexels-photo-314120.jpeg','pexels-photo-314120','pexels-photo-314120.jpeg','pexels-photo-314120.jpeg','.jpeg',698,1,1789,1300,'jpeg','width=\"1789\" height=\"1300\"'),(15,'2017-02-04 19:50:01','anonymous','Man running on air','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent cursus nec nunc ac pulvinar. Quisque eu dui ante. Nulla facilisi. Aliquam facilisis sed tellus et interdum. Aliquam ac tincidunt sapien.','pexels-photo-314040.jpeg','image/jpeg','C:/wamp64/www/imgSquare/uploads/','C:/wamp64/www/imgSquare/uploads/pexels-photo-314040.jpeg','pexels-photo-314040','pexels-photo-314040.jpeg','pexels-photo-314040.jpeg','.jpeg',1236,1,4486,2991,'jpeg','width=\"4486\" height=\"2991\"'),(16,'2017-02-04 20:14:21','anonymous','Coffee makes you happy','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent cursus nec nunc ac pulvinar. Quisque eu dui ante. Nulla facilisi. Aliquam facilisis sed tellus et interdum. Aliquam ac tincidunt sapien.','coffee-cup-working-happy.jpg','image/jpeg','C:/wamp64/www/imgSquare/uploads/','C:/wamp64/www/imgSquare/uploads/coffee-cup-working-happy.jpg','coffee-cup-working-happy','coffee-cup-working-happy.jpg','coffee-cup-working-happy.jpg','.jpg',7890,1,5472,3648,'jpeg','width=\"5472\" height=\"3648\"'),(17,'2017-02-04 20:15:09','anonymous','Seattle Spaceneedle on fire','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent cursus nec nunc ac pulvinar. Quisque eu dui ante. Nulla facilisi. Aliquam facilisis sed tellus et interdum. Aliquam ac tincidunt sapien.','pexels-photo-29503.jpg','image/jpeg','C:/wamp64/www/imgSquare/uploads/','C:/wamp64/www/imgSquare/uploads/pexels-photo-29503.jpg','pexels-photo-29503','pexels-photo-29503.jpg','pexels-photo-29503.jpg','.jpg',802,1,1365,2048,'jpeg','width=\"1365\" height=\"2048\"'),(18,'2017-02-04 20:15:39','anonymous','A spacey desk','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent cursus nec nunc ac pulvinar. Quisque eu dui ante. Nulla facilisi. Aliquam facilisis sed tellus et interdum. Aliquam ac tincidunt sapien.','pexels-photo.jpg','image/jpeg','C:/wamp64/www/imgSquare/uploads/','C:/wamp64/www/imgSquare/uploads/pexels-photo.jpg','pexels-photo','pexels-photo.jpg','pexels-photo.jpg','.jpg',3737,1,3588,1842,'jpeg','width=\"3588\" height=\"1842\"'),(19,'2017-02-04 20:16:20','anonymous','Question, why is there a pineapple?','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent cursus nec nunc ac pulvinar. Quisque eu dui ante. Nulla facilisi. Aliquam facilisis sed tellus et interdum. Aliquam ac tincidunt sapien.','pexels-photo-185348.jpeg','image/jpeg','C:/wamp64/www/imgSquare/uploads/','C:/wamp64/www/imgSquare/uploads/pexels-photo-185348.jpeg','pexels-photo-185348','pexels-photo-185348.jpeg','pexels-photo-185348.jpeg','.jpeg',3237,1,5878,3919,'jpeg','width=\"5878\" height=\"3919\"'),(20,'2017-02-04 20:16:41','anonymous','Possible dream setup?','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent cursus nec nunc ac pulvinar. Quisque eu dui ante. Nulla facilisi. Aliquam facilisis sed tellus et interdum. Aliquam ac tincidunt sapien.','pexels-photo-196658.jpeg','image/jpeg','C:/wamp64/www/imgSquare/uploads/','C:/wamp64/www/imgSquare/uploads/pexels-photo-196658.jpeg','pexels-photo-196658','pexels-photo-196658.jpeg','pexels-photo-196658.jpeg','.jpeg',4646,1,4000,2669,'jpeg','width=\"4000\" height=\"2669\"'),(21,'2017-02-04 20:17:05','anonymous','Artiste','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent cursus nec nunc ac pulvinar. Quisque eu dui ante. Nulla facilisi. Aliquam facilisis sed tellus et interdum. Aliquam ac tincidunt sapien.','pexels-photo-271558.jpeg','image/jpeg','C:/wamp64/www/imgSquare/uploads/','C:/wamp64/www/imgSquare/uploads/pexels-photo-271558.jpeg','pexels-photo-271558','pexels-photo-271558.jpeg','pexels-photo-271558.jpeg','.jpeg',2182,1,5626,3393,'jpeg','width=\"5626\" height=\"3393\"'),(22,'2017-02-04 20:18:32','anonymous','Angel wings','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent cursus nec nunc ac pulvinar. Quisque eu dui ante. Nulla facilisi. Aliquam facilisis sed tellus et interdum. Aliquam ac tincidunt sapien.','pexels-photo_(1).jpg','image/jpeg','C:/wamp64/www/imgSquare/uploads/','C:/wamp64/www/imgSquare/uploads/pexels-photo_(1).jpg','pexels-photo_(1)','pexels-photo_(1).jpg','pexels-photo (1).jpg','.jpg',2490,1,2560,1920,'jpeg','width=\"2560\" height=\"1920\"'),(23,'2017-02-04 20:19:08','anonymous','Hanging lights in the shop','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent cursus nec nunc ac pulvinar. Quisque eu dui ante. Nulla facilisi. Aliquam facilisis sed tellus et interdum. Aliquam ac tincidunt sapien.','pexels-photo-38106.jpeg','image/jpeg','C:/wamp64/www/imgSquare/uploads/','C:/wamp64/www/imgSquare/uploads/pexels-photo-38106.jpeg','pexels-photo-38106','pexels-photo-38106.jpeg','pexels-photo-38106.jpeg','.jpeg',2933,1,3456,1944,'jpeg','width=\"3456\" height=\"1944\"'),(24,'2017-02-04 20:19:32','anonymous','Pour it. Pour it real good.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent cursus nec nunc ac pulvinar. Quisque eu dui ante. Nulla facilisi. Aliquam facilisis sed tellus et interdum. Aliquam ac tincidunt sapien.','pexels-photo-192527.jpeg','image/jpeg','C:/wamp64/www/imgSquare/uploads/','C:/wamp64/www/imgSquare/uploads/pexels-photo-192527.jpeg','pexels-photo-192527','pexels-photo-192527.jpeg','pexels-photo-192527.jpeg','.jpeg',2303,1,5472,3078,'jpeg','width=\"5472\" height=\"3078\"'),(25,'2017-02-04 20:20:55','anonymous','Forest Vibes','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent cursus nec nunc ac pulvinar. Quisque eu dui ante. Nulla facilisi. Aliquam facilisis sed tellus et interdum. Aliquam ac tincidunt sapien.','pexels-photo-211880.jpeg','image/jpeg','C:/wamp64/www/imgSquare/uploads/','C:/wamp64/www/imgSquare/uploads/pexels-photo-211880.jpeg','pexels-photo-211880','pexels-photo-211880.jpeg','pexels-photo-211880.jpeg','.jpeg',8185,1,4896,3264,'jpeg','width=\"4896\" height=\"3264\"');
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

-- Dump completed on 2017-02-04 16:00:28
