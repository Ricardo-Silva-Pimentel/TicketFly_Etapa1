-- MySQL dump 10.13  Distrib 8.4.0, for Win64 (x86_64)
--
-- Host: localhost    Database: stickets
-- ------------------------------------------------------
-- Server version	8.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `asiento`
--

DROP TABLE IF EXISTS `asiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asiento` (
  `id_asiento` int NOT NULL AUTO_INCREMENT,
  `disponibilidad` tinyint(1) DEFAULT '1',
  `ID_recinto` int DEFAULT NULL,
  PRIMARY KEY (`id_asiento`),
  KEY `ID_recinto` (`ID_recinto`),
  CONSTRAINT `asiento_ibfk_1` FOREIGN KEY (`ID_recinto`) REFERENCES `recinto` (`ID_recinto`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asiento`
--

LOCK TABLES `asiento` WRITE;
/*!40000 ALTER TABLE `asiento` DISABLE KEYS */;
INSERT INTO `asiento` VALUES (1,0,1),(2,1,1),(3,1,1),(4,1,1),(5,1,1),(6,1,1),(7,1,1),(8,1,1),(9,1,1),(10,1,1),(11,1,2),(12,1,2),(13,1,2),(14,1,2),(15,1,2),(16,1,2),(17,1,2),(18,1,2),(19,1,2),(20,1,2),(21,1,3),(22,1,3),(23,1,3),(24,1,3),(25,1,3),(26,1,3),(27,1,3),(28,1,3),(29,1,3),(30,1,3),(31,1,4),(32,1,4),(33,1,4),(34,1,4),(35,1,4),(36,1,4),(37,1,4),(38,1,4),(39,1,4),(40,1,4),(41,1,5),(42,1,5),(43,1,5),(44,1,5),(45,1,5),(46,1,5),(47,1,5),(48,1,5),(49,1,5),(50,1,5),(51,1,6),(52,1,6),(53,1,6),(54,1,6),(55,1,6),(56,1,6),(57,1,6),(58,1,6),(59,1,6),(60,1,6),(61,1,7),(62,1,7),(63,1,7),(64,1,7),(65,1,7),(66,1,7),(67,1,7),(68,1,7),(69,1,7),(70,1,7),(71,1,8),(72,1,8),(73,1,8),(74,1,8),(75,1,8),(76,1,8),(77,1,8),(78,1,8),(79,1,8),(80,1,8),(81,1,9),(82,1,9),(83,1,9),(84,1,9),(85,1,9),(86,1,9),(87,1,9),(88,1,9),(89,1,9),(90,1,9),(91,1,10),(92,1,10),(93,1,10),(94,1,10),(95,1,10),(96,1,10),(97,1,10),(98,1,10),(99,1,10),(100,1,10);
/*!40000 ALTER TABLE `asiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `ID_cliente` int NOT NULL AUTO_INCREMENT,
  `Rut_cliente` varchar(20) DEFAULT NULL,
  `nombre_cliente` varchar(50) DEFAULT NULL,
  `apellido_cliente` varchar(50) DEFAULT NULL,
  `contrasena_cliente` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cliente_vip` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID_cliente`),
  UNIQUE KEY `Rut_cliente` (`Rut_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (2,'11222333-4','Carlos','López','password789','carlos.lopez@example.com',0),(3,'22333444-5','María','Pérez','password123','maria.perez@example.com',1),(4,'33444555-6','Ana','Gómez','password456','ana.gomez@example.com',0),(5,'44555666-7','Pedro','Martínez','password890','pedro.martinez@example.com',1),(6,'55666777-8','Juan','Hernández','password234','juan.hernandez@example.com',0),(7,'66777888-9','Sofía','Ramírez','password567','sofia.ramirez@example.com',1),(8,'77888999-0','Luis','Torres','password910','luis.torres@example.com',0),(9,'88999000-1','Carmen','Morales','password321','carmen.morales@example.com',1),(10,'99000111-2','Jorge','Vargas','password654','jorge.vargas@example.com',0),(11,'11111222-3','Elena','Navarro','password987','elena.navarro@example.com',1),(12,'44455566-7','Javier','Martínez','password123',NULL,0);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_realiza_venta`
--

DROP TABLE IF EXISTS `cliente_realiza_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_realiza_venta` (
  `id_venta` int NOT NULL,
  `ID_cliente` int NOT NULL,
  PRIMARY KEY (`id_venta`,`ID_cliente`),
  KEY `ID_cliente` (`ID_cliente`),
  CONSTRAINT `cliente_realiza_venta_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_venta`),
  CONSTRAINT `cliente_realiza_venta_ibfk_2` FOREIGN KEY (`ID_cliente`) REFERENCES `cliente` (`ID_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_realiza_venta`
--

LOCK TABLES `cliente_realiza_venta` WRITE;
/*!40000 ALTER TABLE `cliente_realiza_venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente_realiza_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evento` (
  `id_evento` int NOT NULL AUTO_INCREMENT,
  `RUN_prod` varchar(20) DEFAULT NULL,
  `ID_recinto` int DEFAULT NULL,
  `nombre_evento` varchar(100) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `hora_termino` time DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`id_evento`),
  KEY `RUN_prod` (`RUN_prod`),
  KEY `ID_recinto` (`ID_recinto`),
  CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`RUN_prod`) REFERENCES `productora` (`RUN_prod`),
  CONSTRAINT `evento_ibfk_2` FOREIGN KEY (`ID_recinto`) REFERENCES `recinto` (`ID_recinto`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` VALUES (1,'12345678-9',1,'Concierto de Rock en Santiago','2024-10-20','19:00:00','22:00:00','Concierto con bandas locales de rock.'),(2,'98765432-1',2,'Festival de Jazz en Valparaíso','2024-11-10','18:00:00','23:00:00','Festival de jazz con artistas nacionales e internacionales.'),(3,'76543210-1',3,'Concierto de Música Clásica en Concepción','2024-12-05','20:00:00','22:30:00','Presentación de orquesta sinfónica.'),(4,'34567891-2',4,'Festival de Cine en La Serena','2024-09-15','17:00:00','22:00:00','Muestra de cine nacional e internacional.'),(5,'56789123-4',5,'Expo Música en Antofagasta','2024-12-20','15:00:00','21:00:00','Exposición de música y tecnología.'),(6,'87654321-0',6,'Festival Folclórico en Rancagua','2024-10-01','18:30:00','22:30:00','Festival de música y danzas folclóricas.'),(7,'23456789-0',7,'Concierto de Reggae en Talca','2024-11-05','20:00:00','23:00:00','Concierto de bandas de reggae locales e internacionales.'),(8,'65432109-8',8,'Feria del Libro en Temuco','2024-09-25','10:00:00','18:00:00','Feria del libro y encuentro de autores.'),(9,'45678901-2',9,'Festival de Comedia en Iquique','2024-11-15','19:00:00','22:00:00','Presentación de comediantes locales y nacionales.'),(10,'19283746-5',10,'Muestra de Danza en Punta Arenas','2024-10-30','18:00:00','21:00:00','Muestra de danza contemporánea y folclórica.'),(11,'12345678-9',1,'Concierto de Rock','2024-10-15','20:00:00','23:00:00','Concierto de rock con bandas locales.'),(12,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'98765432-1',2,'Fiesta Electrónica','2024-11-15','22:00:00','04:00:00','Una fiesta con DJs nacionales e internacionales.'),(15,'12345678-9',1,'Concierto de Rock','2024-10-15','20:00:00','23:00:00','Concierto de rock con bandas locales.');
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento_asigna_ticket`
--

DROP TABLE IF EXISTS `evento_asigna_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evento_asigna_ticket` (
  `id_ticket` int NOT NULL,
  `id_evento` int NOT NULL,
  PRIMARY KEY (`id_ticket`,`id_evento`),
  KEY `id_evento` (`id_evento`),
  CONSTRAINT `evento_asigna_ticket_ibfk_1` FOREIGN KEY (`id_ticket`) REFERENCES `ticket` (`id_ticket`),
  CONSTRAINT `evento_asigna_ticket_ibfk_2` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento_asigna_ticket`
--

LOCK TABLES `evento_asigna_ticket` WRITE;
/*!40000 ALTER TABLE `evento_asigna_ticket` DISABLE KEYS */;
INSERT INTO `evento_asigna_ticket` VALUES (1,1),(2,1),(3,2),(4,2),(5,2),(6,3),(7,4),(8,4),(9,5),(10,5),(11,5),(12,6),(13,6),(14,6),(15,6),(16,7),(17,8),(18,8),(19,9),(20,9),(21,9),(22,10);
/*!40000 ALTER TABLE `evento_asigna_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productora`
--

DROP TABLE IF EXISTS `productora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productora` (
  `RUN_prod` varchar(20) NOT NULL,
  `nombre_prod` varchar(100) DEFAULT NULL,
  `nro_ventas` int DEFAULT '0',
  `contrasena_prod` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RUN_prod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productora`
--

LOCK TABLES `productora` WRITE;
/*!40000 ALTER TABLE `productora` DISABLE KEYS */;
INSERT INTO `productora` VALUES ('12345678-9','Eventos Chile Ltda',5,'password123'),('19283746-5','Eventos Arica',0,'password8910'),('23456789-0','Producciones del Pacífico',0,'password3456'),('34567891-2','Norte Cultura S.A.',0,'password1234'),('45678901-2','Eventos del Sur',0,'password567'),('56789123-4','Centro Producciones Ltda',0,'password5678'),('65432109-8','Andes Music Co.',0,'password2345'),('76543210-1','Sur Eventos',0,'password789'),('87654321-0','Magallanes Eventos',0,'password9101'),('98765432-1','Producciones Valpo S.A.',0,'password456');
/*!40000 ALTER TABLE `productora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productora_realiza_evento`
--

DROP TABLE IF EXISTS `productora_realiza_evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productora_realiza_evento` (
  `RUN_prod` varchar(20) NOT NULL,
  `id_evento` int NOT NULL,
  PRIMARY KEY (`RUN_prod`,`id_evento`),
  KEY `id_evento` (`id_evento`),
  CONSTRAINT `productora_realiza_evento_ibfk_1` FOREIGN KEY (`RUN_prod`) REFERENCES `productora` (`RUN_prod`),
  CONSTRAINT `productora_realiza_evento_ibfk_2` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productora_realiza_evento`
--

LOCK TABLES `productora_realiza_evento` WRITE;
/*!40000 ALTER TABLE `productora_realiza_evento` DISABLE KEYS */;
/*!40000 ALTER TABLE `productora_realiza_evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recinto`
--

DROP TABLE IF EXISTS `recinto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recinto` (
  `ID_recinto` int NOT NULL AUTO_INCREMENT,
  `ciudad` varchar(50) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `capacidad` int DEFAULT NULL,
  PRIMARY KEY (`ID_recinto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recinto`
--

LOCK TABLES `recinto` WRITE;
/*!40000 ALTER TABLE `recinto` DISABLE KEYS */;
INSERT INTO `recinto` VALUES (1,'Santiago','Metropolitana',5000),(2,'Valparaíso','Valparaíso',3000),(3,'Concepción','Biobío',4000),(4,'La Serena','Coquimbo',2000),(5,'Antofagasta','Antofagasta',3500),(6,'Rancagua','OHiggins',2500),(7,'Talca','Maule',1800),(8,'Temuco','Araucanía',3200),(9,'Iquique','Tarapacá',2800),(10,'Punta Arenas','Magallanes',1500);
/*!40000 ALTER TABLE `recinto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recinto_tiene_asientos`
--

DROP TABLE IF EXISTS `recinto_tiene_asientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recinto_tiene_asientos` (
  `ID_recinto` int NOT NULL,
  `id_asiento` int NOT NULL,
  PRIMARY KEY (`ID_recinto`,`id_asiento`),
  KEY `id_asiento` (`id_asiento`),
  CONSTRAINT `recinto_tiene_asientos_ibfk_1` FOREIGN KEY (`ID_recinto`) REFERENCES `recinto` (`ID_recinto`),
  CONSTRAINT `recinto_tiene_asientos_ibfk_2` FOREIGN KEY (`id_asiento`) REFERENCES `asiento` (`id_asiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recinto_tiene_asientos`
--

LOCK TABLES `recinto_tiene_asientos` WRITE;
/*!40000 ALTER TABLE `recinto_tiene_asientos` DISABLE KEYS */;
INSERT INTO `recinto_tiene_asientos` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),(3,21),(3,22),(3,23),(3,24),(3,25),(3,26),(3,27),(3,28),(3,29),(3,30),(4,31),(4,32),(4,33),(4,34),(4,35),(4,36),(4,37),(4,38),(4,39),(4,40),(5,41),(5,42),(5,43),(5,44),(5,45),(5,46),(5,47),(5,48),(5,49),(5,50),(6,51),(6,52),(6,53),(6,54),(6,55),(6,56),(6,57),(6,58),(6,59),(6,60),(7,61),(7,62),(7,63),(7,64),(7,65),(7,66),(7,67),(7,68),(7,69),(7,70),(8,71),(8,72),(8,73),(8,74),(8,75),(8,76),(8,77),(8,78),(8,79),(8,80),(9,81),(9,82),(9,83),(9,84),(9,85),(9,86),(9,87),(9,88),(9,89),(9,90),(10,91),(10,92),(10,93),(10,94),(10,95),(10,96),(10,97),(10,98),(10,99),(10,100);
/*!40000 ALTER TABLE `recinto_tiene_asientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `id_ticket` int NOT NULL AUTO_INCREMENT,
  `id_venta` int DEFAULT NULL,
  `id_evento` int DEFAULT NULL,
  `id_asiento` int DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_ticket`),
  KEY `id_venta` (`id_venta`),
  KEY `id_evento` (`id_evento`),
  KEY `id_asiento` (`id_asiento`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_venta`),
  CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`),
  CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`id_asiento`) REFERENCES `asiento` (`id_asiento`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,1,1,1,75.00),(2,1,1,2,75.00),(3,2,2,11,100.00),(4,2,2,12,100.00),(5,2,2,13,100.00),(6,3,3,21,100.00),(7,4,4,31,100.00),(8,4,4,32,100.00),(9,5,5,41,83.33),(10,5,5,42,83.33),(11,5,5,43,83.33),(12,6,6,51,75.00),(13,6,6,52,75.00),(14,6,6,53,75.00),(15,6,6,54,75.00),(16,7,7,61,100.00),(17,8,8,71,60.00),(18,8,8,72,60.00),(19,9,9,81,60.00),(20,9,9,82,60.00),(21,9,9,83,60.00),(22,10,10,91,90.00);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `Rut_cliente` varchar(20) DEFAULT NULL,
  `id_evento` int DEFAULT NULL,
  `total_ventas` decimal(10,2) DEFAULT NULL,
  `cant_ticket` int DEFAULT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `Rut_cliente` (`Rut_cliente`),
  KEY `id_evento` (`id_evento`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`Rut_cliente`) REFERENCES `cliente` (`Rut_cliente`),
  CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,'11222333-4',1,150.00,2),(2,'22333444-5',2,300.00,3),(3,'33444555-6',3,100.00,1),(4,'44555666-7',4,200.00,2),(5,'55666777-8',5,250.00,3),(6,'66777888-9',6,300.00,4),(7,'77888999-0',7,100.00,1),(8,'88999000-1',8,120.00,2),(9,'99000111-2',9,180.00,3),(10,'11111222-3',10,90.00,1);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta_tiene_tickets`
--

DROP TABLE IF EXISTS `venta_tiene_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta_tiene_tickets` (
  `id_venta` int NOT NULL,
  `id_ticket` int NOT NULL,
  PRIMARY KEY (`id_venta`,`id_ticket`),
  KEY `id_ticket` (`id_ticket`),
  CONSTRAINT `venta_tiene_tickets_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_venta`),
  CONSTRAINT `venta_tiene_tickets_ibfk_2` FOREIGN KEY (`id_ticket`) REFERENCES `ticket` (`id_ticket`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_tiene_tickets`
--

LOCK TABLES `venta_tiene_tickets` WRITE;
/*!40000 ALTER TABLE `venta_tiene_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `venta_tiene_tickets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-27  0:01:06
