-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: cafeina
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `cakes`
--

DROP TABLE IF EXISTS `cakes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cakes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imgUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` bit(1) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `weigth` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `composition` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cakes`
--

LOCK TABLES `cakes` WRITE;
/*!40000 ALTER TABLE `cakes` DISABLE KEYS */;
INSERT INTO `cakes` VALUES (1,'Ciasto na bazie smietany ze szpinakiem','zielony_mech.jpg','Zielony Mech','14.5','','Normalne','1.45-1.70','smietana, biszkopt, szpinak'),(2,'Ciasto na bazie smietany z adwokatem','tiramisu.jpg','Tiramisu','12.34','','Normalne','1.5-1.8','smietana, biszkopt, adwokat, kakao'),(3,'Ciasto czekoladowo pomaranczowe ze skorkami pomaranczy','czeko_pom.jpg','Czekoladowo-pomaranczowe','16.8','','Bezglutenowe','1.9-2.4','czekolada, pomarancze, cos tam'),(4,'Ciasto z farszem na bazie maku i jablek','makowiec.jpg','Makowiec','9.99','','Normalne','1.0-1.6','mak, jablka, cynamon, drozdze'),(5,'Ciasto na bazie ciemnej czekolady i masla','brownie.jpg','Brownie','10.45','','Normalne','1.2-1.5','czekolada, mleko, maslo'),(6,'Ciasto bezowe z kremem na bazie mascarpone','bezowe.jpg','Dacquoise','13.70','','Normalne','0.9-1.3','beza, mascarpone, mleko, jajka'),(7,'Ciasto na bazie sera z rodzynkami','sernik_krak.jpg','Sernik Krakowski','15','','Serowe','1.6-2.0','masa serowa, rodzynki, brzoskwinie'),(8,'Ciasto weganskie na bazie jablek','szarlotka.jpg','Szarlotka Weganska','13.20','','Weganskie','1.41-1.68','jablka, ziemia, trawa, kamienie'),(9,'Ciasto na bazie marchwi z lukrowa polewa','marchewkowe.jpg','Marchewkowe','13.99','','Normalne','1.75-1.95','marchew, jajka, mleko, orzechy');
/*!40000 ALTER TABLE `cakes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-26 14:21:17
