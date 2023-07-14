-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shop
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `articolo`
--

DROP TABLE IF EXISTS `articolo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articolo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descrizione` varchar(255) DEFAULT NULL,
  `prezzo` decimal(6,2) DEFAULT NULL,
  `categoria` enum('hardware','software') DEFAULT NULL,
  `rimanenza` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articolo`
--

LOCK TABLES `articolo` WRITE;
/*!40000 ALTER TABLE `articolo` DISABLE KEYS */;
INSERT INTO `articolo` VALUES (1,'monitor',350.00,'hardware',87),(2,'chiavetta',38.50,'hardware',65),(3,'hard-disk',300.00,'hardware',94),(4,'smartwatch',400.00,'hardware',96),(5,'Photoshop',700.00,'software',98),(6,'Office',350.50,'software',95),(7,'Webcam',68.00,'hardware',94),(8,'Adobe CC',1200.00,'software',100),(9,'Office',120.00,'software',100);
/*!40000 ALTER TABLE `articolo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cognome` varchar(50) NOT NULL,
  `nome` varchar(40) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `indirizzo` varchar(100) NOT NULL,
  `citta` varchar(50) NOT NULL,
  `provincia` char(2) NOT NULL,
  `regione` varchar(30) NOT NULL,
  `credito` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `k_credito_provincia` (`credito`,`provincia`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'rossi','paolo','0116702323','paolo25@gmail.com','Via Roma 25','torino','To','Piemonte',974),(2,'mori','marco','0116704040','marco18@gmail.com','Via Torino 18','milano','Mi','Lombardia',0),(3,'bianchi','luca','0116701010','luca2@gmail.com','Via Milano 2','bologna','Bo','Emilia-Romagna',7671),(4,'verdi','mario','0116702020','mario128@gmail.com','Corso Francia 128','torino','To','Piemonte',0),(5,'rosso','alberto','0116707070','alberto12@icloud.com','Corso Svizzera 12','milano','Mi','Lombardia',785),(6,'esposito','franco','0119978812','francoe@icloud.com','Via Roma 3','Asti','At','Piemonte',3429),(7,'bruni','carlo','0117778816','brunicarlo@icloud.com','Corso Stati Uniti 13','Torino','To','Piemonte',0);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impiegato`
--

DROP TABLE IF EXISTS `impiegato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `impiegato` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `cognome` varchar(50) DEFAULT NULL,
  `ruolo` varchar(50) DEFAULT NULL,
  `rif_to` int DEFAULT NULL,
  `stipendio` decimal(6,2) DEFAULT NULL,
  `ufficio_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_impiegato_ufficio` (`ufficio_id`),
  CONSTRAINT `impiegato_ibfk_1` FOREIGN KEY (`ufficio_id`) REFERENCES `ufficio` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impiegato`
--

LOCK TABLES `impiegato` WRITE;
/*!40000 ALTER TABLE `impiegato` DISABLE KEYS */;
INSERT INTO `impiegato` VALUES (1,'Mario','Rossi','tecnico',NULL,2500.00,1),(2,'Marco','Bianchi','amministrativo',7,1600.00,2),(3,'Paolo','Verdi','amministrativo',7,1600.00,2),(4,'Enrico','Marrone','venditore',8,1300.00,3),(5,'Nicola','Testa','venditore',8,1300.00,3),(6,'Franco','Barba','tecnico',1,1500.00,1),(7,'Elena','Totti','amministrativo',NULL,2600.00,2),(8,'Paola','Capra','venditore',NULL,2300.00,3),(9,'Mauro','Barba','venditore',8,1300.00,3);
/*!40000 ALTER TABLE `impiegato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordine`
--

DROP TABLE IF EXISTS `ordine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int DEFAULT NULL,
  `data` date DEFAULT NULL,
  `consegna` enum('consegnato','da spedire','spedito') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ordine_cliente` (`cliente_id`),
  CONSTRAINT `ordine_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordine`
--

LOCK TABLES `ordine` WRITE;
/*!40000 ALTER TABLE `ordine` DISABLE KEYS */;
INSERT INTO `ordine` VALUES (1,1,'2017-12-01','consegnato'),(2,3,'2018-01-11','consegnato'),(3,5,'2018-01-21','da spedire'),(4,3,'2018-01-23','spedito'),(5,6,'2018-02-03','consegnato'),(7,6,'2018-02-13','da spedire'),(12,3,'2018-02-28','spedito');
/*!40000 ALTER TABLE `ordine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordine_dettaglio`
--

DROP TABLE IF EXISTS `ordine_dettaglio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordine_dettaglio` (
  `ordine_id` int NOT NULL,
  `articolo_id` int NOT NULL,
  `quantita` tinyint unsigned DEFAULT NULL,
  `prezzo` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`ordine_id`,`articolo_id`),
  KEY `fk_od_articolo` (`articolo_id`),
  CONSTRAINT `ordine_dettaglio_ibfk_1` FOREIGN KEY (`articolo_id`) REFERENCES `articolo` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordine_dettaglio`
--

LOCK TABLES `ordine_dettaglio` WRITE;
/*!40000 ALTER TABLE `ordine_dettaglio` DISABLE KEYS */;
INSERT INTO `ordine_dettaglio` VALUES (1,2,20,38.50),(1,7,3,68.00),(2,5,1,700.00),(2,6,5,350.50),(3,2,10,38.50),(3,4,1,400.00),(4,1,3,350.00),(4,3,2,300.00),(4,7,1,68.00),(5,3,2,300.00),(5,4,3,400.00),(5,5,1,700.00),(5,7,1,68.00),(7,2,5,38.50),(7,3,2,300.00),(7,7,1,68.00),(12,1,10,350.00);
/*!40000 ALTER TABLE `ordine_dettaglio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ufficio`
--

DROP TABLE IF EXISTS `ufficio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ufficio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `indirizzo` varchar(50) DEFAULT NULL,
  `citta` varchar(30) DEFAULT NULL,
  `regione` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ufficio`
--

LOCK TABLES `ufficio` WRITE;
/*!40000 ALTER TABLE `ufficio` DISABLE KEYS */;
INSERT INTO `ufficio` VALUES (1,'IT','3332208666','via milano 31','torino','piemonte'),(2,'Amministrazione','3332208688','via torino 25','milano','lombardia'),(3,'Commerciale','3332207899','via milano 33','torino','piemonte'),(4,'Logistica','3332204366','via torino 27','milano','lombardia');
/*!40000 ALTER TABLE `ufficio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-14 17:49:49
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: liceo
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `alunni`
--

DROP TABLE IF EXISTS `alunni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunni` (
  `id` int NOT NULL AUTO_INCREMENT,
  `aula_id` int DEFAULT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `cognome` varchar(40) DEFAULT NULL,
  `genere` enum('m','f') DEFAULT NULL,
  `data_nascita` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunni`
--

LOCK TABLES `alunni` WRITE;
/*!40000 ALTER TABLE `alunni` DISABLE KEYS */;
INSERT INTO `alunni` VALUES (1,1,'franco','rossi','m','1978-10-01'),(2,1,'mario','verdi','m','1981-10-01'),(3,1,'paolo','bianchi','m','1983-10-01'),(4,1,'sara','rossi','f','1983-10-01'),(5,1,'elisa','verdi','f','1987-10-01'),(6,2,'marco','bianchi','m','1993-10-01'),(7,2,'franca','verdi','f','1993-10-01'),(8,2,'mauro','bruni','m','1988-10-01'),(9,2,'osvaldo','rossi','m','1987-01-02'),(10,2,'oscar','verdi','m','1990-02-03'),(11,3,'paola','bianchi','f','1985-03-04'),(12,3,'franca','verdi','f','1989-11-05'),(13,3,'eleonora','verdi','f','1989-12-06'),(14,3,'enrico','macello','m','1983-10-01'),(15,3,'fabio','baggio','m','1983-10-01'),(16,NULL,'francesco','gamba','m','1987-10-01'),(17,NULL,'marco','demarchi','m','1993-10-01'),(18,NULL,'franca','verdone','f','1994-09-01'),(19,NULL,'marco','zippo','m','1995-11-01'),(20,NULL,'giorgio','galvani','m','1996-02-01'),(21,NULL,'alex','porro','m','1989-10-01'),(22,NULL,'andrea','giorgio','f','1998-02-01'),(23,NULL,'paola','valeri','f','1992-10-09'),(24,NULL,'federico','rossi','m','1994-08-08'),(25,NULL,'irene','storti','f','1999-09-09'),(26,NULL,'samuele','borsa','m','1992-02-02'),(27,NULL,'Luigi','Verdi','m','1999-06-03'),(28,NULL,'Martina','Bianchi','f','2001-01-23'),(29,NULL,'Giulia','Neri','f','1996-07-15'),(30,NULL,'Giovanni','Russo','m','1997-09-27'),(31,NULL,'Luisa','Ferrari','f','1998-04-10'),(32,NULL,'Simone','Rossi','m','1992-11-02'),(33,NULL,'Francesca','Verdi','f','1994-12-18'),(34,NULL,'Alessandro','Bianchi','m','1990-05-25'),(35,NULL,'Sara','Neri','f','1993-08-30'),(36,NULL,'Fabio','Russo','m','1989-03-12'),(37,NULL,'Laura','Ferrari','f','1991-12-01'),(38,NULL,'Antonio','Rossi','m','1998-05-09'),(39,NULL,'Mario','Rossi','m','1990-05-15'),(40,NULL,'Giulia','Verdi','f','1995-06-12'),(41,NULL,'Lorenzo','Bianchi','m','1999-07-18'),(42,NULL,'Alessia','Neri','f','1994-08-20'),(43,NULL,'Paolo','Rizzo','m','1998-09-27'),(44,NULL,'Laura','Conti','f','1992-10-08'),(45,NULL,'Federico','Galli','m','1997-11-11'),(46,NULL,'Martina','Ferrari','f','1993-12-19'),(47,NULL,'Simone','Marini','m','1991-01-24'),(48,NULL,'Valentina','Riva','f','1996-02-21'),(49,NULL,'Andrea','Costa','m','2000-03-30'),(50,NULL,'Sara','Santoro','f','1998-10-05');
/*!40000 ALTER TABLE `alunni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aule`
--

DROP TABLE IF EXISTS `aule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aule` (
  `aula_id` int NOT NULL AUTO_INCREMENT,
  `nome` char(2) DEFAULT NULL,
  `piano` varchar(20) DEFAULT NULL,
  `capienza` tinyint unsigned DEFAULT '30',
  PRIMARY KEY (`aula_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aule`
--

LOCK TABLES `aule` WRITE;
/*!40000 ALTER TABLE `aule` DISABLE KEYS */;
INSERT INTO `aule` VALUES (1,'1a','1° piano',30),(2,'2a','2° piano',30),(3,'3a','seminterrato',30),(4,'4a','1° piano',30),(5,'5a','seminterrato',30);
/*!40000 ALTER TABLE `aule` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-14 17:49:49
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: goal2023
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `africa`
--

DROP TABLE IF EXISTS `africa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `africa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stato` varchar(50) DEFAULT NULL,
  `capitale` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `africa`
--

LOCK TABLES `africa` WRITE;
/*!40000 ALTER TABLE `africa` DISABLE KEYS */;
INSERT INTO `africa` VALUES (1,'Egitto','Il Cairo'),(2,'Algeria','Algeri'),(3,'Marocco','Rabat');
/*!40000 ALTER TABLE `africa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `america`
--

DROP TABLE IF EXISTS `america`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `america` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stato` varchar(50) DEFAULT NULL,
  `capitale` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `america`
--

LOCK TABLES `america` WRITE;
/*!40000 ALTER TABLE `america` DISABLE KEYS */;
INSERT INTO `america` VALUES (1,'Canada','Ottawa'),(2,'USA','Washington'),(3,'Brasile','Brasilia');
/*!40000 ALTER TABLE `america` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amici`
--

DROP TABLE IF EXISTS `amici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amici` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `cognome` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amici`
--

LOCK TABLES `amici` WRITE;
/*!40000 ALTER TABLE `amici` DISABLE KEYS */;
INSERT INTO `amici` VALUES (1,'franco','rossi'),(2,'mario','verdi'),(3,'paolo','bianchi'),(4,'sara','rossi'),(5,'elisa','verdi'),(6,'marco','bianchi'),(7,'franca','verdi'),(8,'mauro','bruni'),(9,'osvaldo','rossi'),(10,'oscar','verdi'),(11,'paola','bianchi'),(12,'franca','verdi'),(13,'eleonora','verdi'),(14,'enrico','macello'),(15,'fabio','baggio'),(16,'francesco','gamba'),(17,'marco','demarchi'),(18,'franca','verdone'),(19,'marco','zippo'),(20,'giorgio','galvani'),(21,'alex','porro'),(22,'andrea','giorgio'),(23,'paola','valeri'),(24,'federico','rossi'),(25,'irene','storti'),(26,'samuele','borsa'),(27,'Luigi','Verdi'),(28,'Martina','Bianchi'),(29,'Giulia','Neri'),(30,'Giovanni','Russo'),(31,'Luisa','Ferrari'),(32,'Simone','Rossi'),(33,'Francesca','Verdi'),(34,'Alessandro','Bianchi'),(35,'Sara','Neri'),(36,'Fabio','Russo'),(37,'Laura','Ferrari'),(38,'Antonio','Rossi'),(39,'Mario','Rossi'),(40,'Giulia','Verdi'),(41,'Lorenzo','Bianchi'),(42,'Alessia','Neri'),(43,'Paolo','Rizzo'),(44,'Laura','Conti'),(45,'Federico','Galli'),(46,'Martina','Ferrari'),(47,'Simone','Marini'),(48,'Valentina','Riva'),(49,'Andrea','Costa'),(50,'Sara','Santoro'),(51,NULL,NULL),(52,NULL,'allegri'),(53,'mario','rossi');
/*!40000 ALTER TABLE `amici` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articolo`
--

DROP TABLE IF EXISTS `articolo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articolo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descrizione` varchar(50) DEFAULT NULL,
  `specifiche` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articolo`
--

LOCK TABLES `articolo` WRITE;
/*!40000 ALTER TABLE `articolo` DISABLE KEYS */;
INSERT INTO `articolo` VALUES (1,'TV SAMSUNG 32\" SMART TV','{\"marca\": \"SHARP\", \"pesoKg\": 5.5, \"uscite\": [\"HDMI\", \"HDMI2\", \"S/PDIF\", \"RGB\"], \"pollici\": 32, \"schermo\": \"LCD\", \"ingressi\": [\"ETHERNET\", \"USB\"]}'),(2,'TV SONY 32\" SMART TV','{\"marca\": \"SONY\", \"pesoKg\": 6.5, \"uscite\": \"HDMI\", \"pollici\": 32, \"schermo\": \"LED\"}');
/*!40000 ALTER TABLE `articolo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canzoni`
--

DROP TABLE IF EXISTS `canzoni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canzoni` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cantante` varchar(255) DEFAULT NULL,
  `titolo` varchar(255) DEFAULT NULL,
  `anno` int NOT NULL,
  `genere` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canzoni`
--

LOCK TABLES `canzoni` WRITE;
/*!40000 ALTER TABLE `canzoni` DISABLE KEYS */;
INSERT INTO `canzoni` VALUES (1,'Fred De Palma feat. Ana Mena','Una volta ancora',2019,'pop'),(2,'Pedro Capò & Farruko','Calma [remix]',2019,'pop'),(3,'Mahmood','Soldi',2019,'pop'),(4,'Coez','E\' sempre bello',2019,'Rap'),(5,'BoomDaBash','Per un milione',2019,'pop'),(6,'Charlie Charles feat. Sfera Ebbasta & Mahmood & Fabri Fibra','Calipso',2019,'Rap'),(7,'Benji & Fede','Dove e quando',2019,'pop'),(8,'Tones and I','Dance monkey',2019,'pop'),(9,'Daddy Yankee feat. Snow','Con calma',2019,'pop'),(10,'Takagi & Ketra & Omi & Giusy Ferreri','Jambo',2019,'pop'),(11,'J-Ax','Ostia Lido',2019,'pop'),(12,'Ultimo','I tuoi particolari',2019,'pop'),(13,'Ava Max','Sweet but psycho',2019,'pop'),(14,'Salmo feat. Nstasia','Il cielo nella stanza',2019,'Rap'),(15,'Boomdabash feat. Alessandra Amoroso','Mambo salentino',2019,'pop'),(16,'Billie Eilish','Bad guy',2019,'pop'),(17,'Shawn Mendes & Camila Cabello','Senorita',2019,'pop'),(18,'Machete & Dani Faiv & Tha Supreme feat. Fabri Fibra','Yoshi',2019,'pop'),(19,'Irama','Arrogante',2019,'pop'),(20,'Lewis Capaldi','Someone you loved',2019,'pop'),(21,'Marco Mengoni feat. Tom Walker','Hola (I say)',2019,'pop'),(22,'Lady Gaga & Bradley Cooper','Shallow (A star is born)',2019,'pop'),(23,'Elodie & Marracash','Margarita',2019,'pop'),(24,'Rocco Hunt feat. JAx & BoomDaBash','Ti volevo dedicare',2019,'pop'),(25,'Ed Sheeran & Justin Bieber','I don\'t care',2019,'pop'),(26,'Tommaso Paradiso','Non avere paura',2019,'pop'),(27,'Meduza & Goodboys','Piece of your heart',2019,'pop'),(28,'Random','Chiasso',2019,'pop'),(29,'tha Supreme','blun7 a swishland',2019,'pop'),(30,'Sfera Ebbasta','Mademoiselle',2019,'Rap'),(31,'Baby K','Playa',2019,'pop'),(32,'Irama','La ragazza con il cuore di latta',2019,'pop'),(33,'Boro Boro feat. MamboLosco','Lento',2019,'pop'),(34,'Maneskin','Torna a casa',2019,'Rock'),(35,'Ozuna','Baila baila baila',2019,'pop'),(36,'Mahmood','Barrio',2019,'pop'),(37,'Luchè feat. Sfera Ebbasta','Stamm fort',2019,'Rap'),(38,'Thegiornalisti','Maradona y Pelé',2019,'pop'),(39,'Calvin Harris & Rag\'n\'Bone Man','Giant',2019,'pop'),(40,'Marshmello & Bastille','Happier',2019,'pop'),(41,'Alfa & Yanomi','Cin Cin',2019,'pop'),(42,'Ultimo','Rondini al guinzaglio',2019,'pop'),(43,'Aya Nakamura feat. Capo Plaza','Pookie',2019,'pop'),(44,'Takagi & Ketra feat. Tommaso Paradiso & Jovanotti & Calcutta','La luna e la gatta',2019,'pop'),(45,'Dj Snake & J Balvin & Tyga','Loco contigo',2019,'pop'),(46,'Kolors & Elodie','Pensare male',2019,'pop'),(47,'Shade & Federica Carta','Senza farlo apposta',2019,'pop'),(48,'Imagine Dragons','Bad liar',2019,'pop'),(49,'Ultimo','Piccola stella',2019,'pop'),(50,'Coez','Domenica',2019,'Rap'),(51,'Salmo','90MIN',2019,'Rap'),(52,'Carl Brave feat. Max GazzÃ¨','Posso',2019,'pop'),(53,'Shade','La hit dell\'estate',2019,'pop'),(54,'Panic! At The Disco','High hopes',2019,'pop'),(55,'Black Eyed Peas & J Balvin','Ritmo (Bad boys for life)',2019,'pop'),(56,'Elisa x Carl Brave','Vivere tutte le vite',2019,'pop'),(57,'Elisa','Anche fragile',2019,'pop'),(58,'Ultimo','Cascare nei tuoi occhi',2019,'pop'),(59,'Mabel','Don\'t call me up',2019,'pop'),(60,'Paulo Londra','Adan y Eva',2019,'pop'),(61,'Gemitaiz & Venerus & Franco 126','Senza di me',2019,'pop'),(62,'Ultimo','Ti dedico il silenzio',2019,'pop'),(63,'Ultimo','Pianeti',2019,'pop'),(64,'Gemitaiz','Veleno 7',2019,'pop'),(65,'Machete & Salmo & Lazza','Ho paura di uscire 2',2019,'Rap'),(66,'Marracash & tha Supreme & Sfera Ebbasta','SUPREME: L\'ego',2019,'Rap'),(67,'Tha Supreme','M8nstar',2019,'pop'),(68,'Maroon 5','Memories',2019,'pop'),(69,'Loredana Berté','Cosa ti aspetti da me',2019,'pop'),(70,'Sfera Ebbasta','Happy birthday',2019,'Rap'),(71,'Ghali','I love you',2019,'pop'),(72,'Machete & Salmo & Nitro feat. Marracash','Marylean',2019,'Rap'),(73,'Dj Snake feat. Selena Gomez & Ozuna & Cardi B','Taki Taki',2019,'pop'),(74,'A Boogie wit da Hoodie feat. Capo Plaza','Look back at it',2019,'pop'),(75,'Rkomi feat. Elisa','Blu',2019,'pop'),(76,'Tha Supreme feat. Nayt','Oh 9od',2019,'pop'),(77,'Nicky Jam & Ozuna','Te robaré',2019,'pop'),(78,'Ed Sheeran feat. Khalid','Beautiful people',2019,'pop'),(79,'Lil Nas X','Old town road',2019,'pop'),(80,'Y2K & Bbno$','Lalala',2019,'pop'),(81,'Fabio Rovazzi feat. JAx & Loredana BertÃ¨','Senza pensieri',2019,'pop'),(82,'Achille Lauro feat. Boss Doms & Frenetik&Orang3','Rolls Royce',2019,'pop'),(83,'Izi feat. Sfera Ebbasta','48H',2019,'Rap'),(84,'Anuel AA & Daddy Yankee & Karol G feat. Ozuna & J Balvin','China',2019,'pop'),(85,'Lil Nas X feat. Billy Ray Cyrus','Old town road [remix]',2019,'pop'),(86,'Elisa & Calcutta','Se piovesse il tuo nome',2019,'pop'),(87,'Fred De Palma feat. Ana Mena','D\'estate non vale',2019,'pop'),(88,'Shiva & Emis Killa','Mon Fre',2019,'pop'),(89,'Dark Polo Gang','Cambiare adesso',2019,'pop'),(90,'Emis Killa','Fuoco e benzina',2019,'pop'),(91,'Tiziano Ferro','Accetto miracoli',2019,'pop'),(92,'Shiva','Bossoli',2019,'pop'),(93,'Marracash','CRUDELIA: I nervi',2019,'pop'),(94,'Coez','La tua canzone',2019,'Rap'),(95,'Salmo feat. Sfera Ebbasta','Cabriolet',2019,'Rap'),(96,'Achille Lauro & Boss Doms','C\'est la vie',2019,'pop'),(97,'Ariana Grande','7 rings',2019,'pop'),(98,'Marco Mengoni','Muhammad Ali',2019,'pop'),(99,'Maluma','HP',2019,'pop'),(100,'Boomdabash & Alessandra Amoroso','Karaoke',2020,'pop'),(101,'Irama','Mediterranea',2020,'pop'),(102,'Ghali','Good times',2020,'pop'),(103,'Rocco Hunt & Ana Mena','A un passo dalla luna',2020,'pop'),(104,'The Weeknd','Blinding lights',2020,'pop'),(105,'Ernia','Superclassico',2020,'pop'),(106,'Purple Disco Machine & Sophie and the Giants','Hypnotized',2020,'pop'),(107,'Tones and I','Dance monkey',2020,'pop'),(108,'Diodato','Fai rumore',2020,'pop'),(109,'tha Supreme','blun7 a swishland',2020,'pop'),(110,'Francesco Gabbani','Viceversa',2020,'pop'),(111,'Master KG feat. Nomcebo Zikode','Jerusalema',2020,'pop'),(112,'Ghali feat. Salmo','Boogieman',2020,'Rap'),(113,'Topic & A7S','Breaking me',2020,'pop'),(114,'Mahmood','Rapide',2020,'pop'),(115,'Gaia Gozzi','Chega',2020,'pop'),(116,'Black Eyed Peas & Ozuna & J. Rey Soul','Mamacita',2020,'pop'),(117,'Shablo & Geolier & Sfera Ebbasta','M\' manc',2020,'Rap'),(118,'Rocco Hunt feat. JAx & BoomDaBash','Ti volevo dedicare',2020,'pop'),(119,'Pinguini Tattici Nucleari','Ringo Starr',2020,'pop'),(120,'Karol G & Nicki Minaj','Tusa',2020,'pop'),(121,'Baby K feat. Chiara Ferragni','Non mi basta più',2020,'pop'),(122,'Mr. Rain','Fiori di Chernobyl',2020,'pop'),(123,'Fred De Palma feat. Anitta','Paloma',2020,'pop'),(124,'Saint Jhn','Roses [imanbek remix]',2020,'pop'),(125,'Anna','Bando',2020,'pop'),(126,'Fred De Palma feat. Ana Mena','Una volta ancora',2020,'pop'),(127,'Deddy','0 passi',2021,'pop'),(128,'Rocco Hunt & Ana Mena','A un passo dalla luna',2021,'pop'),(129,'Ed Sheeran','Afterglow',2021,'pop'),(130,'Sfera Ebbasta & J Balvin','Baby',2021,'Rap'),(131,'Ed Sheeran','Bad habits',2021,'pop'),(132,'Maroon 5 & Megan Thee Stallion','Beautiful mistakes',2021,'pop'),(133,'Joel Corry & Raye & David Guetta','Bed',2021,'pop'),(134,'Maneskin','Beggin',2021,'Rock'),(135,'Blanco','Blu celeste',2021,'pop'),(136,'Goodboys','Bongo cha cha cha',2021,'pop'),(137,'Marco Mengoni','Cambia un uomo',2021,'pop'),(138,'Francesca Michielin & Fedez','Chiamami per nome',2021,'pop'),(139,'Elton John & Dua Lipa','Cold heart [pnau remix]',2021,'pop'),(140,'Coez','Come nelle canzoni',2021,'Rap'),(141,'Marracash','Crazy love',2021,'pop'),(142,'Gazzelle','Destri',2021,'pop'),(143,'Annalisa','Dieci',2021,'pop'),(144,'Camila Cabello','Don\'t go yet',2021,'pop'),(145,'Purple Disco Machine feat. Eyelar','Dopamine',2021,'pop'),(146,'Olivia Rodrigo','Drivers license',2021,'pop'),(147,'Adele','Easy on me',2021,'pop'),(148,'Ernia feat. Pinguini Tattici Nucleari','Ferma a guardare',2021,'pop'),(149,'Coma_Cose','Fiamme negli occhi',2021,'pop'),(150,'Blanco','Finché non mi seppelliscono',2021,'pop'),(151,'Purple Disco Machine feat. Moss Kena & Knocks','Fireworks',2021,'pop'),(152,'Imagine Dragons','Follow you',2021,'pop'),(153,'Riton & Nightcrawlers feat. Mufasa & Hypeman','Friday [dopamine re-edit]',2021,'pop'),(154,'Noemi','Glicine',2021,'pop'),(155,'Boza','Hecha pa\' mi',2021,'pop'),(156,'Coldplay','Higher power',2021,'pop'),(157,'Maneskin','I wanna be your slave',2021,'Rock'),(158,'Justin Wellington feat. Small Jam','Iko iko',2021,'pop'),(159,'Lil Nas X & Jack Harlow','Industry baby',2021,'pop'),(160,'Mahmood','Inuyasha',2021,'pop'),(161,'Salmo','Kumite',2021,'Rap'),(162,'Mace & Blanco & Salmo','La canzone nostra',2021,'Rap'),(163,'Irama','La genesi del tuo colore',2021,'pop'),(164,'Mecna & CoCo','La più bella',2021,'pop'),(165,'Sangiovanni','Lady',2021,'pop'),(166,'Tancredi','Las Vegas',2021,'pop'),(167,'Bruno Mars & Anderson .Paak & Silk Sonic','Leave the door open',2021,'pop'),(168,'Aka 7even','Loca',2021,'pop'),(169,'Dua Lipa','Love again',2021,'pop'),(170,'Shouse','Love tonight',2021,'pop'),(171,'Ariete','L\'ultima notte',2021,'pop'),(172,'Rkomi & Irama & Shablo','Luna piena',2021,'pop'),(173,'Marco Mengoni','Ma stasera',2021,'pop'),(174,'Tommaso Paradiso','Magari no',2021,'pop'),(175,'Noemi & Carl Brave','Makumba',2021,'pop'),(176,'Sangiovanni','Malibù',2021,'pop'),(177,'Maneskin','Mammamia',2021,'Rock'),(178,'Madame','Marea',2021,'pop'),(179,'Fedez','Meglio del cinema',2021,'pop'),(180,'Irama','Melodia proibita',2021,'pop'),(181,'Blanco & Sfera Ebbasta','Mi fai impazzire',2021,'Rap'),(182,'Aka 7even','Mi manchi',2021,'pop'),(183,'Fedez & Achille Lauro & Orietta Berti','Mille',2021,'pop'),(184,'BoomDaBash & Baby K','Mohicani',2021,'pop'),(185,'Lil Nas X','Montero (Call me by your name)',2021,'pop'),(186,'Annalisa feat. Federico Rossi','Movimento lento',2021,'Rock'),(187,'Colapesce & Dimartino','Musica leggerissima',2021,'pop'),(188,'Coldplay & BTS','My universe',2021,'pop'),(189,'Kungs','Never going home',2021,'pop'),(190,'Blanco','Notti in bianco',2021,'pop'),(191,'Rkomi & Sfera Ebbasta & Junior K','Nuovo range',2021,'Rap'),(192,'Meduza feat. Dermot Kennedy','Paradise',2021,'pop'),(193,'Blanco','Paraocchi',2021,'pop'),(194,'Rkomi','Partire da te',2021,'pop'),(195,'Pinguini Tattici Nucleari','Pastello bianco',2021,'pop'),(196,'Justin Bieber feat. Daniel Caesar & Giveon','Peaches',2021,'pop'),(197,'Farruko','Pepas',2021,'pop'),(198,'Emma & Alessandra Amoroso','Pezzo di cuore',2021,'pop'),(199,'Elettra Lamborghini','Pistolero',2021,'pop'),(200,'Mahmood & Elisa','Rubini',2021,'pop'),(201,'OneRepublic','Run',2021,'pop'),(202,'J-Ax & Jake La Furia','Salsa',2021,'pop'),(203,'The Weeknd','Save your tears',2021,'pop'),(204,'Pinguini Tattici Nucleari','Scooby Doo',2021,'pop'),(205,'Pinguini Tattici Nucleari','Scrivile scemo',2021,'pop'),(206,'Takagi & Ketra & Giusy Ferreri','Shimmy Shimmy',2021,'pop'),(207,'Ed Sheeran','Shivers',2021,'pop'),(208,'Vasco Rossi','Siamo qui',2021,'Rock'),(209,'The Kid Laroi & Justin Bieber','Stay',2021,'pop'),(210,'Ernia','Superclassico',2021,'pop'),(211,'The Weeknd','Take my breath',2021,'pop'),(212,'Fred De Palma','Ti raggiungerò',2021,'pop'),(213,'Madame & Sfera Ebbasta','Tu mi hai capito',2021,'Rap'),(214,'Sangiovanni','Tutta la notte',2021,'pop'),(215,'Fred De Palma feat. Anitta','Un altro ballo',2021,'pop'),(216,'Rocco Hunt & Ana Mena','Un bacio all\'improvviso',2021,'pop'),(217,'Vasco Rossi','Una canzone d\'amore buttata via',2021,'Rock'),(218,'Yungest Moonstar & Neffa & tha Supreme','uNa DiReZioNe giUsTa',2021,'pop'),(219,'Takagi e Ketra & Marco Mengoni & Frah Quintale','Venere e Marte',2021,'pop'),(220,'Maneskin','Vent\'anni',2021,'Rock'),(221,'Elodie','Vertigine',2021,'pop'),(222,'Madame','Voce',2021,'pop'),(223,'Martin Garrix feat. Bono & the Edge','We are the people',2021,'pop'),(224,'Bob Sinclar feat. Molly Hammar','We could be dancing',2021,'pop'),(225,'ATB & Topic & A7S','Your love (9 PM)',2021,'pop'),(226,'Maneskin','Zitti e buoni',2021,'Rock'),(231,'Mahmood & Blanco','Brividi',2022,'pop');
/*!40000 ALTER TABLE `canzoni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `europa`
--

DROP TABLE IF EXISTS `europa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `europa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stato` varchar(50) DEFAULT NULL,
  `capitale` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `europa`
--

LOCK TABLES `europa` WRITE;
/*!40000 ALTER TABLE `europa` DISABLE KEYS */;
INSERT INTO `europa` VALUES (1,'Italia','Roma'),(2,'Francia','Parigi'),(3,'Spagna','Madrid');
/*!40000 ALTER TABLE `europa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titolo` varchar(45) DEFAULT NULL,
  `genere` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (1,'Titanic','drammatico'),(2,'Big Hero 6','animazione'),(3,'Kill Bill','azione'),(4,'Spider-Man','Azione'),(5,'Spider-Man','Azione');
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impiegato`
--

DROP TABLE IF EXISTS `impiegato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `impiegato` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `cognome` varchar(50) DEFAULT NULL,
  `ruolo` varchar(50) DEFAULT NULL,
  `id_respo` int DEFAULT NULL,
  `stipendio` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_self_impiegato` (`id_respo`),
  CONSTRAINT `fk_self_impiegato` FOREIGN KEY (`id_respo`) REFERENCES `impiegato` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impiegato`
--

LOCK TABLES `impiegato` WRITE;
/*!40000 ALTER TABLE `impiegato` DISABLE KEYS */;
INSERT INTO `impiegato` VALUES (1,'Mario','Rossi','tecnico',10,2500.00),(2,'Marco','Bianchi','amministrativo',7,1600.00),(3,'Paolo','Verdi','amministrativo',7,1600.00),(4,'Enrico','Marrone','venditore',8,1300.00),(5,'Nicola','Testa','venditore',8,1300.00),(6,'Franco','Barba','tecnico',1,1500.00),(7,'Elena','Totti','amministrativo',10,2600.00),(8,'Paola','Capra','venditore',10,2300.00),(9,'Mauro','Barba','venditore',8,1300.00);
/*!40000 ALTER TABLE `impiegato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titolo` varchar(255) NOT NULL,
  `testo` text NOT NULL,
  `data_pubblicazione` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `k_titolo_testo` (`titolo`,`testo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'Gestione di un form in React','Le applicazioni Web spesso devono inviare dati dal browser al server back-end. Certamente, il modo più utilizzato per farlo è attraverso un form HTML, utilizzando input di testo, pulsanti di opzione, caselle di controllo, selezioni e così via. Questo rimane vero in React. Stai cercando come gestire i moduli in React? Se è così, questo articolo è perfetto per te. Buona lettura.','2019-01-01 00:00:00'),(2,'Quale framework JavaScript dovresti imparare per ottenere un lavoro nel 2019?','Ti stai chiedendo quale framework o libreria JavaScript dovresti usare per ottenere un lavoro nel 2019? In questo post, esaminerò un confronto tra i framework JavaScript più popolari disponibili oggi. Entro la fine di questo post, sarai pronto per scegliere il framework giusto per aiutarti a ottenere un lavoro di sviluppatore front-end nel 2019.','2019-03-02 00:00:00'),(3,'Costruire un componente modale React accessibile','Modal è un overlay sulla pagina web, ma ha alcuni standard da seguire. Le pratiche di authoring WAI-ARIA sono gli standard stabiliti dal W3C. Ciò consente a bot e lettori di schermo di sapere che si tratta di un modale. Non rientra nel flusso regolare della pagina. Creeremo una fantastica modalità di reazione usando i componenti React.','2019-01-15 00:00:00'),(4,'Redux Vs. Mobx – Cosa dovrei scegliere per la mia app Web?','La gestione dello stato è un problema difficile da risolvere nelle applicazioni di grandi dimensioni. Redux e Mobx sono entrambe librerie esterne comunemente utilizzate per risolvere problemi di gestione dello stato.','2019-02-20 00:00:00'),(5,'Componenti stateful e stateless in reazione','Oggi esamineremo quali componenti con stato e senza stato sono in React, come puoi distinguere e il complesso processo per decidere se rendere i componenti con stato o meno.','2019-03-29 00:00:00');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prova`
--

DROP TABLE IF EXISTS `prova`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prova` (
  `a` varchar(30) DEFAULT NULL,
  `b` varchar(30) DEFAULT NULL,
  `c` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prova`
--

LOCK TABLES `prova` WRITE;
/*!40000 ALTER TABLE `prova` DISABLE KEYS */;
/*!40000 ALTER TABLE `prova` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serietv`
--

DROP TABLE IF EXISTS `serietv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serietv` (
  `id` int NOT NULL AUTO_INCREMENT,
  `locandina` varchar(255) DEFAULT NULL,
  `rating` double NOT NULL,
  `titolo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serietv`
--

LOCK TABLES `serietv` WRITE;
/*!40000 ALTER TABLE `serietv` DISABLE KEYS */;
INSERT INTO `serietv` VALUES (1,'https://static.tvmaze.com/uploads/images/medium_portrait/445/1114092.jpg',8.9,'anelli del potere'),(2,'https://static.tvmaze.com/uploads/images/medium_portrait/190/476117.jpg',7.3,'game of thrones'),(3,'https://static.tvmaze.com/uploads/images/medium_portrait/4/11308.jpg',8.3,'Gilmore Girls'),(4,'https://static.tvmaze.com/uploads/images/medium_portrait/445/1113506.jpg',6.8,'only murders in the building'),(5,'https://static.tvmaze.com/uploads/images/medium_portrait/0/2451.jpg',7.8,'how i met your mother'),(6,'https://static.tvmaze.com/uploads/images/medium_portrait/467/1168262.jpg',6.4,'the summer i turned pretty'),(7,'https://static.tvmaze.com/uploads/images/medium_portrait/465/1164115.jpg',7.7,'the bear'),(8,'https://static.tvmaze.com/uploads/images/medium_portrait/13/34761.jpg',10,'castle');
/*!40000 ALTER TABLE `serietv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studenti`
--

DROP TABLE IF EXISTS `studenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studenti` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) DEFAULT NULL,
  `cognome` varchar(50) DEFAULT NULL,
  `genere` enum('m','f') DEFAULT NULL,
  `indirizzo` varchar(100) DEFAULT NULL,
  `citta` varchar(30) DEFAULT NULL,
  `provincia` char(2) DEFAULT 'To',
  `regione` varchar(39) DEFAULT 'piemonte',
  `email` varchar(100) NOT NULL,
  `data_nascita` date DEFAULT NULL,
  `ins` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `k_provincia` (`provincia`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studenti`
--

LOCK TABLES `studenti` WRITE;
/*!40000 ALTER TABLE `studenti` DISABLE KEYS */;
INSERT INTO `studenti` VALUES (1,'franco','rossi','m','via Tripoli 10','torino','TO','piemonte','franco.rossi@gmail.com','1978-10-01','2023-06-30 12:54:08'),(2,'mario','verdi','m','via Vicenza 17','asti','AT','piemonte','mario.verdi@gmail.com','1981-10-01','2023-06-30 12:54:08'),(3,'paolo','bianchi','m','via Volvera 47','asti','AT','piemonte','paolo.bianchi@gmail.com','1983-10-01','2023-06-30 12:54:08'),(4,'sara','rossi','f','corso Vigevano 301','cuneo','CN','piemonte','sara.rossi@gmail.com','1983-10-01','2023-06-30 12:54:08'),(5,'elisa','verdi','f','corso Francia 18','alessandria','AL','piemonte','elisa.verdi@gmail.com','1987-10-01','2023-06-30 12:54:08'),(6,'marco','bianchi','m','via Siccardi 3','novara','NO','piemonte','marcob@gmail.com','1993-10-01','2023-06-30 12:54:08'),(7,'franca','verdi','f','via MIlano 33','torino','TO','piemonte','fv@icloud.com','1993-10-01','2023-06-07 12:44:03'),(8,'mauro','bruni','m','via Roma 72','torino','TO','piemonte','mb@icloud.com','1988-10-01','2023-06-07 12:44:03'),(9,'osvaldo','rossi','m','via Firenze 5','torino','TO','piemonte','or@icloud.com','1987-01-02','2023-06-07 12:44:03'),(10,'oscar','verdi','m','lungo Dora Siena 34','torino','TO','piemonte','ov@icloud.com','1990-02-03','2023-06-07 12:44:03'),(11,'paola','bianchi','f','Corso Regina 300','torino','TO','piemonte','paolab@icloud.com','1985-03-04','2023-06-07 12:44:03'),(12,'franca','verdi','f','Corso Mortara 231','torino','TO','piemonte','francaverdi@icloud.com','1989-11-05','2023-06-07 12:44:03'),(13,'eleonora','verdi','f','via Bardonecchia 121','torino','TO','piemonte','ele@icloud.com','1989-12-06','2023-06-07 12:44:03'),(14,'enrico','macello','m','via Grosseto 125','asti','AT','piemonte','emacello@gmail.com','1983-10-01','2023-06-30 12:54:08'),(15,'fabio','baggio','m','via Dogliani 7','cuneo','CN','piemonte','fbaggio@gmail.com','1983-10-01','2023-06-30 12:54:08'),(16,'francesco','gamba','m','via Torino 1','alessandria','AL','piemonte','gamba@gmail.com','1987-10-01','2023-06-30 12:54:08'),(17,'marco','demarchi','m','via Napoli 10','novara','NO','piemonte','marcodem@gmail.com','1993-10-01','2023-06-30 12:54:08'),(18,'franca','verdone','f','via Parma 9','torino','TO','piemonte','fverdone@gmail.com','1994-09-01','2023-06-30 12:54:08'),(19,'marco','zippo','m','via Palermo 19','torino','TO','piemonte','zippo@gmail.com','1995-11-01','2023-06-30 12:54:08'),(20,'giorgio','galvani','m','via Reggio 9','cuneo','cn','piemonte','ggalv@icloud.com','1996-02-01','2023-06-07 12:44:03'),(21,'alex','porro','m','via Verona 13','asti','at','piemonte','porroale@gmail.com','1989-10-01','2023-06-30 12:54:08'),(22,'andrea','giorgio','f','via Bava 9','torino','TO','piemonte','giorgia@icloud.com','1998-02-01','2023-06-07 12:44:03'),(23,'paola','valeri','f','via Balbo 65','novara','no','piemonte','valerip@gamil.com','1992-10-09','2023-06-07 12:44:03'),(24,'federico','rossi','m','via Venezia 3','alessandria','al','piemonte','federoss@icloud.com','1994-08-08','2023-06-07 12:44:03'),(25,'irene','storti','f','corso vittorio 30','torino','TO','piemonte','stortii@gmail.com','1999-09-09','2023-06-30 12:54:08'),(26,'samuele','borsa','m','via Pio 9','torino','TO','piemonte','borsamu@gmail.com','1992-02-02','2023-06-30 12:54:08'),(27,'Luigi','Verdi','m','Via Garibaldi 2','Asti','AT','Piemonte','luigi.verdi@example.com','1999-06-03','2023-06-07 12:44:03'),(28,'Martina','Bianchi','f','Via Dante 3','Cuneo','CN','Piemonte','martina.bianchi@example.com','2001-01-23','2023-06-07 12:44:03'),(29,'Giulia','Neri','f','Via Mazzini 4','Alessandria','AL','Piemonte','giulia.neri@example.com','1996-07-15','2023-06-07 12:44:03'),(30,'Giovanni','Russo','m','Via Montegrappa 5','Novara','NO','Piemonte','giovanni.russo@example.com','1997-09-27','2023-06-07 12:44:03'),(31,'Luisa','Ferrari','f','Via Garibaldi 6','Vercelli','VC','Piemonte','luisa.ferrari@example.com','1998-04-10','2023-06-07 12:44:03'),(32,'Simone','Rossi','m','Via Roma 7','Torino','TO','Piemonte','simone.rossi@example.com','1992-11-02','2023-06-07 12:44:03'),(33,'Francesca','Verdi','f','Via Garibaldi 8','Asti','AT','Piemonte','francesca.verdi@example.com','1994-12-18','2023-06-07 12:44:03'),(34,'Alessandro','Bianchi','m','Via Dante 9','Cuneo','CN','Piemonte','alessandro.bianchi@example.com','1990-05-25','2023-06-07 12:44:03'),(35,'Sara','Neri','f','Via Mazzini 10','Alessandria','AL','Piemonte','sara.neri@example.com','1993-08-30','2023-06-07 12:44:03'),(36,'Fabio','Russo','m','Via Montegrappa 11','Novara','NO','Piemonte','fabio.russo@example.com','1989-03-12','2023-06-07 12:44:03'),(37,'Laura','Ferrari','f','Via Garibaldi 12','Vercelli','VC','Piemonte','laura.ferrari@example.com','1991-12-01','2023-06-07 12:44:03'),(38,'Antonio','Rossi','m','Via Roma 13','Torino','TO','Piemonte','antonio.rossi@example.com','1998-05-09','2023-06-07 12:44:03'),(39,'Mario','Rossi','m','Via Roma 1','Torino','TO','Piemonte','mario.rossi@esempio.com','1990-05-15','2023-06-07 12:44:03'),(40,'Giulia','Verdi','f','Via Garibaldi 2','Asti','AT','Piemonte','giulia.verdi@esempio.com','1995-06-12','2023-06-07 12:44:03'),(41,'Lorenzo','Bianchi','m','Corso Italia 3','Cuneo','CN','Piemonte','lorenzo.bianchi@esempio.com','1999-07-18','2023-06-07 12:44:03'),(42,'Alessia','Neri','f','Via Mazzini 4','Alessandria','AL','Piemonte','alessia.neri@esempio.com','1994-08-20','2023-06-07 12:44:03'),(43,'Paolo','Rizzo','m','Via Garibaldi 5','Novara','NO','Piemonte','paolo.rizzo@esempio.com','1998-09-27','2023-06-07 12:44:03'),(44,'Laura','Conti','f','Piazza Vittorio Emanuele II 6','Vercelli','VC','Piemonte','laura.conti@esempio.com','1992-10-08','2023-06-07 12:44:03'),(45,'Federico','Galli','m','Via Monte Napoleone 7','Milano','MI','Lombardia','federico.galli@esempio.com','1997-11-11','2023-06-07 12:44:03'),(46,'Martina','Ferrari','f','Via Manzoni 8','Monza','MB','Lombardia','martina.ferrari@esempio.com','1993-12-19','2023-06-07 12:44:03'),(47,'Simone','Marini','m','Via XX Settembre 9','Bergamo','BG','Lombardia','simone.marini@esempio.com','1991-01-24','2023-06-07 12:44:03'),(48,'Valentina','Riva','f','Corso Garibaldi 10','Pavia','PV','Lombardia','valentina.riva@esempio.com','1996-02-21','2023-06-07 12:44:03'),(49,'Andrea','Costa','m','Piazza del Popolo 11','Como','CO','Lombardia','andrea.costa@esempio.com','2000-03-30','2023-06-07 12:44:03'),(50,'Sara','Santoro','f','Via Sempione 12','Torino','TO','Piemonte','sara.santoro@esempio.com','1998-10-05','2023-06-07 12:44:03'),(51,NULL,NULL,NULL,NULL,NULL,'To','piemonte','test@gmail.com',NULL,'2023-06-30 12:54:08'),(52,NULL,'allegri',NULL,NULL,NULL,'cn','piemonte','allegri@gmail.com','1969-10-05','2023-07-04 14:40:23'),(53,'mario','rossi',NULL,NULL,NULL,'To','piemonte','mario@gmail.com',NULL,'2023-07-07 08:52:21');
/*!40000 ALTER TABLE `studenti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studenti_2`
--

DROP TABLE IF EXISTS `studenti_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studenti_2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) DEFAULT NULL,
  `cognome` varchar(50) DEFAULT NULL,
  `genere` enum('m','f') DEFAULT NULL,
  `indirizzo` varchar(100) DEFAULT NULL,
  `citta` varchar(30) DEFAULT NULL,
  `provincia` char(2) DEFAULT 'To',
  `regione` varchar(39) DEFAULT 'piemonte',
  `email` varchar(100) NOT NULL,
  `data_nascita` date DEFAULT NULL,
  `ins` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studenti_2`
--

LOCK TABLES `studenti_2` WRITE;
/*!40000 ALTER TABLE `studenti_2` DISABLE KEYS */;
INSERT INTO `studenti_2` VALUES (1,NULL,'bianchi',NULL,NULL,NULL,'To','piemonte','bb@gmail.com',NULL,'2023-05-31 14:00:55');
/*!40000 ALTER TABLE `studenti_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studenti_3`
--

DROP TABLE IF EXISTS `studenti_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studenti_3` (
  `id` int NOT NULL DEFAULT '0',
  `nome` varchar(40) DEFAULT NULL,
  `cognome` varchar(50) DEFAULT NULL,
  `genere` enum('m','f') DEFAULT NULL,
  `indirizzo` varchar(100) DEFAULT NULL,
  `citta` varchar(30) DEFAULT NULL,
  `provincia` char(2) DEFAULT 'To',
  `regione` varchar(39) DEFAULT 'piemonte',
  `email` varchar(100) NOT NULL,
  `data_nascita` date DEFAULT NULL,
  `ins` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studenti_3`
--

LOCK TABLES `studenti_3` WRITE;
/*!40000 ALTER TABLE `studenti_3` DISABLE KEYS */;
INSERT INTO `studenti_3` VALUES (1,'oscar','vecchione','m','piazza crimea 1','torino','to','piemonte','oscar.vecchione@cloud.com','1969-10-05','2023-05-31 13:30:38'),(6,'paolo','bruni','m','via torino 39','torino','To','piemonte','pb@icloud.com','2000-01-01','2023-05-31 13:30:38'),(7,'maria','verdi','f','piazza santa giulia','milano','mi','lombardia','mv@icloud.com','2001-05-31','2023-05-31 13:36:47'),(8,'mauro','bruno','m','viale parmigiana 39','cuneo','cn','piemonte','mb@icloud.com','1978-12-19','2023-05-31 13:30:38'),(9,'maura','bianchi','f','corso regina 22','torino','to','piemonte','maurab@icloud.com','1988-12-19','2023-05-31 13:30:38'),(10,NULL,'rossi',NULL,NULL,NULL,'To','piemonte','rossi.mario@icloud.com',NULL,'2023-05-31 13:30:38');
/*!40000 ALTER TABLE `studenti_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `studenti_giovani`
--

DROP TABLE IF EXISTS `studenti_giovani`;
/*!50001 DROP VIEW IF EXISTS `studenti_giovani`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `studenti_giovani` AS SELECT 
 1 AS `cognome`,
 1 AS `nome`,
 1 AS `email`,
 1 AS `eta`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `studenti_info`
--

DROP TABLE IF EXISTS `studenti_info`;
/*!50001 DROP VIEW IF EXISTS `studenti_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `studenti_info` AS SELECT 
 1 AS `cognome`,
 1 AS `nome`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `studenti_to`
--

DROP TABLE IF EXISTS `studenti_to`;
/*!50001 DROP VIEW IF EXISTS `studenti_to`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `studenti_to` AS SELECT 
 1 AS `id`,
 1 AS `nome`,
 1 AS `cognome`,
 1 AS `genere`,
 1 AS `indirizzo`,
 1 AS `citta`,
 1 AS `provincia`,
 1 AS `regione`,
 1 AS `email`,
 1 AS `data_nascita`,
 1 AS `ins`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `studenti_giovani`
--

/*!50001 DROP VIEW IF EXISTS `studenti_giovani`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`app_goal`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `studenti_giovani` AS select `studenti`.`cognome` AS `cognome`,`studenti`.`nome` AS `nome`,`studenti`.`email` AS `email`,timestampdiff(YEAR,`studenti`.`data_nascita`,curdate()) AS `eta` from `studenti` having (`eta` < 31) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `studenti_info`
--

/*!50001 DROP VIEW IF EXISTS `studenti_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`app_goal`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `studenti_info` AS select `studenti`.`cognome` AS `cognome`,`studenti`.`nome` AS `nome`,`studenti`.`email` AS `email` from `studenti` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `studenti_to`
--

/*!50001 DROP VIEW IF EXISTS `studenti_to`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`app_goal`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `studenti_to` AS select `studenti`.`id` AS `id`,`studenti`.`nome` AS `nome`,`studenti`.`cognome` AS `cognome`,`studenti`.`genere` AS `genere`,`studenti`.`indirizzo` AS `indirizzo`,`studenti`.`citta` AS `citta`,`studenti`.`provincia` AS `provincia`,`studenti`.`regione` AS `regione`,`studenti`.`email` AS `email`,`studenti`.`data_nascita` AS `data_nascita`,`studenti`.`ins` AS `ins` from `studenti` where (`studenti`.`provincia` = 'to') order by `studenti`.`cognome` */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-14 17:49:49
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: catalogo
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `autore`
--

DROP TABLE IF EXISTS `autore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autore` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `cognome` varchar(50) DEFAULT NULL,
  `nazionalita` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autore`
--

LOCK TABLES `autore` WRITE;
/*!40000 ALTER TABLE `autore` DISABLE KEYS */;
INSERT INTO `autore` VALUES (1,'John Ronald Reuel','Tolkien','za'),(2,'Dan','Brown','us'),(3,'Paulo','Coelho','br'),(4,'J. D.','Salinger','us'),(5,'Agatha','Christie','en'),(6,'J. K.','Rowling','en'),(7,'Tsao','Chan','cn'),(8,'E. L.','James','en'),(9,'Antoine','de Saint-Exup?ry','fr'),(10,'Charles','Dickens','en'),(11,'Miguel','de Cervantes','es'),(12,'Clive Staples','Lewis','en'),(13,'Tse-tung','Mao','cn'),(14,'Michele','Rech, Zerocalcare','it'),(15,'Andrea','Camilleri','it'),(16,'Ken','Follett','en'),(17,'Kazuo','Ishiguro','jp'),(18,'Carlo','Fruttero','it'),(19,'Franco','Lucentini','it'),(20,'Italo','Calvino','it'),(21,'Stephen','King','us'),(22,'Isabel','Allende','cl');
/*!40000 ALTER TABLE `autore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autore_libro`
--

DROP TABLE IF EXISTS `autore_libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autore_libro` (
  `libro_id` int NOT NULL,
  `autore_id` int NOT NULL,
  PRIMARY KEY (`libro_id`,`autore_id`),
  KEY `fk_al_autore` (`autore_id`),
  CONSTRAINT `fk_al_autore` FOREIGN KEY (`autore_id`) REFERENCES `autore` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_al_libro` FOREIGN KEY (`libro_id`) REFERENCES `libro` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autore_libro`
--

LOCK TABLES `autore_libro` WRITE;
/*!40000 ALTER TABLE `autore_libro` DISABLE KEYS */;
INSERT INTO `autore_libro` VALUES (11,1),(15,1),(6,2),(17,2),(1,3),(7,4),(3,5),(5,6),(12,7),(2,8),(10,9),(20,10),(4,11),(8,12),(9,13),(16,14),(19,15),(13,16),(18,17),(14,18),(14,19),(21,20),(22,21);
/*!40000 ALTER TABLE `autore_libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editore`
--

DROP TABLE IF EXISTS `editore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editore` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editore`
--

LOCK TABLES `editore` WRITE;
/*!40000 ALTER TABLE `editore` DISABLE KEYS */;
INSERT INTO `editore` VALUES (1,'Mondadori','info-mondadori@gmail.com'),(3,'Einaudi','amm-einaudi@gmail.com'),(4,'Salani','salani-info@gmail.com'),(5,'Edizioni Clandestine','clandestine-info@gmail.com'),(6,'Bao Publishing','bao_editore@gmail.com'),(7,'Sellerio','amm-sellerio@gmail.com'),(8,'BUR','bur_editore@gmail.com'),(9,'Sperling & Kupfer','sperling-info@gmail.com'),(10,'Bompiani','contact-bompiani@gmail.com'),(11,'Adelphi','adelphi-info@gmail.com');
/*!40000 ALTER TABLE `editore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `editori_nolibri`
--

DROP TABLE IF EXISTS `editori_nolibri`;
/*!50001 DROP VIEW IF EXISTS `editori_nolibri`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `editori_nolibri` AS SELECT 
 1 AS `editore`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `editori_quanti_libri`
--

DROP TABLE IF EXISTS `editori_quanti_libri`;
/*!50001 DROP VIEW IF EXISTS `editori_quanti_libri`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `editori_quanti_libri` AS SELECT 
 1 AS `editore`,
 1 AS `quantita`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titolo` varchar(100) DEFAULT NULL,
  `prezzo` decimal(6,2) unsigned DEFAULT NULL,
  `pagine` smallint unsigned DEFAULT NULL,
  `editore_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_libro_editore` (`editore_id`),
  CONSTRAINT `fk_libro_editore` FOREIGN KEY (`editore_id`) REFERENCES `editore` (`id`),
  CONSTRAINT `ck_pagine` CHECK ((`pagine` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (1,'Alchimista (L\')',27.00,10,1),(2,'Cinquanta sfumature di grigio',10.20,560,1),(3,'Dieci piccoli indiani',10.20,208,1),(4,'Don Chisciotte della Mancha',20.40,NULL,3),(5,'Harry Potter e la Pietra Filosofale',8.50,302,4),(6,'Il Codice da Vinci',11.00,512,1),(7,'Il giovane Holden',10.20,251,3),(8,'Il leone, la strega e l\'armadio',7.65,182,1),(9,'Il libretto rosso',7.22,160,5),(10,'Il Piccolo Principe',4.25,95,1),(11,'Il Signore degli Anelli: La compagnia dell\'anello. Le due torri. Il ritorno del re',25.00,1255,10),(12,'Il sogno della camera rossa. Romanzo cinese del XVIII secolo',15.30,721,3),(13,'La colonna di fuoco',27.00,912,1),(14,'La donna della domenica',12.00,434,1),(15,'Lo Hobbit',9.35,417,10),(16,'Macerie prime',14.45,192,6),(17,'Origin',21.25,564,1),(18,'Quel che resta del giorno',12.00,276,3),(19,'Un mese con Montalbano',12.75,512,7),(20,'Una storia tra due città',9.77,600,10),(21,'Marcovaldo',10.00,120,7),(22,'IT',25.00,550,9),(23,'gomorra',12.59,345,1);
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `libro_tot`
--

DROP TABLE IF EXISTS `libro_tot`;
/*!50001 DROP VIEW IF EXISTS `libro_tot`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `libro_tot` AS SELECT 
 1 AS `titolo`,
 1 AS `pagine`,
 1 AS `prezzo`,
 1 AS `editore`,
 1 AS `nome`,
 1 AS `cognome`,
 1 AS `nazionalita`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `editori_nolibri`
--

/*!50001 DROP VIEW IF EXISTS `editori_nolibri`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`app_goal`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `editori_nolibri` AS select `editore`.`nome` AS `editore` from (`editore` left join `libro` on((`editore`.`id` = `libro`.`editore_id`))) where (`libro`.`editore_id` is null) group by `editore` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `editori_quanti_libri`
--

/*!50001 DROP VIEW IF EXISTS `editori_quanti_libri`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`app_goal`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `editori_quanti_libri` AS select `editore`.`nome` AS `editore`,count(0) AS `quantita` from (`editore` join `libro` on((`editore`.`id` = `libro`.`editore_id`))) group by `libro`.`editore_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `libro_tot`
--

/*!50001 DROP VIEW IF EXISTS `libro_tot`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`app_goal`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `libro_tot` AS select `l`.`titolo` AS `titolo`,`l`.`pagine` AS `pagine`,`l`.`prezzo` AS `prezzo`,`e`.`nome` AS `editore`,`a`.`nome` AS `nome`,`a`.`cognome` AS `cognome`,`a`.`nazionalita` AS `nazionalita` from (((`libro` `l` join `autore_libro` `al` on((`l`.`id` = `al`.`libro_id`))) join `autore` `a` on((`a`.`id` = `al`.`autore_id`))) join `editore` `e` on((`e`.`id` = `l`.`editore_id`))) order by `l`.`titolo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-14 17:49:50
