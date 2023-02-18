CREATE DATABASE  IF NOT EXISTS `capitais` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `capitais`;
-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: capitais
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

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
-- Table structure for table `caracteristicas`
--

DROP TABLE IF EXISTS `caracteristicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caracteristicas` (
  `indice` int NOT NULL AUTO_INCREMENT,
  `capital` varchar(20) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `areakm2` float DEFAULT NULL,
  `populacao` float DEFAULT NULL,
  `idhm` float DEFAULT NULL,
  `pib` float DEFAULT NULL,
  `EsporteDestaque` varchar(20) NOT NULL DEFAULT 'Futebol',
  PRIMARY KEY (`indice`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caracteristicas`
--

LOCK TABLES `caracteristicas` WRITE;
/*!40000 ALTER TABLE `caracteristicas` DISABLE KEYS */;
INSERT INTO `caracteristicas` VALUES (1,'Aracaju','Sergipe',182.2,672614,0.771,30427.7,'Futebol'),(2,'Fortaleza','Ceará',312.3,2703390,0.754,24253.9,'Futebol'),(3,'João Pessoa','Paraíba',210.1,825796,0.763,25402.2,'Futebol'),(4,'Maceió','Alagoas',509.3,1031600,0.721,22307.1,'Futebol'),(5,'Natal','Rio Grande do Norte',167.4,896708,0.763,25525.3,'Futebol'),(6,'Recife','Pernambuco',218.8,1661020,0.772,30427.6,'Futebol'),(7,'São Luís','Maranhão',583.1,1115930,0.768,29823.9,'Futebol'),(8,'Salvador','Bahia',693.4,2900320,0.759,20417.1,'Futebol'),(9,'Teresina','Piauí',1391.3,871126,0.751,24858.3,'Futebol'),(10,'Belém','Pará',1059.4,1506420,0.746,20562.1,'Futebol'),(11,'Boa vista','Roraima',5687.1,436591,0.752,28181.1,'Futebol'),(12,'Macapá','Amapá',6563.8,522357,0.733,22880.7,'Futebol'),(13,'Manaus','Amazonas',11401.1,2255900,0.737,41345.1,'Futebol'),(14,'Palmas','Tocantins',2227.3,313349,0.788,32452.5,'Futebol'),(15,'Porto Velho','Rondônia',34091,548952,0.736,36059.3,'Futebol'),(16,'Rio Branco','Acre',8835.1,419452,0.727,23171.6,'Futebol'),(17,'Brasília','Distrito Federal',5760.8,3094320,0.824,87016.2,'Futebol'),(18,'Campo Grande','Mato Grosso do Sul',8083.1,916001,0.784,33243.6,'Futebol'),(19,'Cuiabá','Mato Grosso',5077.1,623614,0.785,42918.3,'Futebol'),(20,'Goiânia','Goiás',729.3,1555630,0.799,33826.8,'Futebol'),(21,'Belo Horizonte','Minas Gerais',331.4,2530700,0.811,38670.4,'Futebol'),(22,'Rio de Janeiro','Rio de Janeiro',1200.3,6775560,0.799,49094.4,'Futebol'),(23,'São Paulo','São Paulo',1521.2,12396400,0.805,60750.1,'Futebol'),(24,'Vitória','Espírito Santo',97.1,369534,0.845,69628.4,'Futebol'),(25,'Curitiba','Paraná',434.9,1963730,0.823,45318.5,'Futebol'),(26,'Florianópolis','Santa Catarina',674.8,516524,0.847,41885.5,'Futebol'),(27,'Porto Alegre','Rio Grande do Sul',495.4,1492530,0.805,51116.7,'Futebol');
/*!40000 ALTER TABLE `caracteristicas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-17 23:07:35
