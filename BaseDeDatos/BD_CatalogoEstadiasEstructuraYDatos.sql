CREATE DATABASE  IF NOT EXISTS `bd_estadia` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bd_estadia`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_estadia
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` int(11) NOT NULL,
  `num_seguro` varchar(45) NOT NULL,
  `nombre_completo` varchar(60) NOT NULL,
  `carreras_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_alumnos_carreras1_idx` (`carreras_id`),
  KEY `fk_alumnos_usuarios1_idx` (`usuarios_id`),
  CONSTRAINT `fk_alumnos_carreras1` FOREIGN KEY (`carreras_id`) REFERENCES `carreras` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_alumnos_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (7,160199,'IMMMS090909','Jose Maria Gomez Santos',1,18),(8,123456,'IMMS78909767','Israel Gomez Santamaria',3,83),(10,666666,'IMSASADASAS','PruebasCrazys',3,88),(11,160448,'IMMMSSASADAS','Alicia Ortega',1,90);
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carreras`
--

DROP TABLE IF EXISTS `carreras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carreras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cr` varchar(50) NOT NULL,
  `Nivel` varchar(40) NOT NULL,
  `Director` varchar(90) NOT NULL,
  `Area` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carreras`
--

LOCK TABLES `carreras` WRITE;
/*!40000 ALTER TABLE `carreras` DISABLE KEYS */;
INSERT INTO `carreras` VALUES (1,'Tecnologias de la información y Comunicacion','TSU','Jose Maria Gomez Santos','Sistemas Informaticos'),(2,'Tecnologias de la Informacion y Comunicación','ING','Esmeralda Hernandez Hernandez','Tecnoligias de la Información'),(3,'Administracion','TSU','Miguel Angel Leon Baños','Recursos Humanos');
/*!40000 ALTER TABLE `carreras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto_empresa`
--

DROP TABLE IF EXISTS `contacto_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacto_empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Correo` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Encargado` varchar(45) NOT NULL,
  `empresas_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_contacto_empresa_empresas1_idx` (`empresas_id`),
  CONSTRAINT `fk_contacto_empresa_empresas1` FOREIGN KEY (`empresas_id`) REFERENCES `empresas` (`id_emp`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto_empresa`
--

LOCK TABLES `contacto_empresa` WRITE;
/*!40000 ALTER TABLE `contacto_empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacto_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresas`
--

DROP TABLE IF EXISTS `empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresas` (
  `id_emp` int(11) NOT NULL AUTO_INCREMENT,
  `imagen_empresa` varchar(1000) NOT NULL,
  `nombre_e` varchar(450) NOT NULL,
  `Tamaño` enum('Pequeña','Mediana','Grande') NOT NULL,
  `Caracteristicas` varchar(1000) NOT NULL,
  `Informacion` varchar(1000) NOT NULL,
  `Vinculada` enum('En Proceso','Si','No') NOT NULL,
  `RFC` varchar(450) NOT NULL,
  `total_vacantes` int(11) NOT NULL,
  `estatus` enum('En Proceso','Aprobada','Rechazada') NOT NULL,
  `carreras_id` int(11) NOT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  `ubicacion` varchar(850) NOT NULL,
  PRIMARY KEY (`id_emp`),
  KEY `fk_empresas_carreras1_idx` (`carreras_id`),
  CONSTRAINT `fk_empresas_carreras1` FOREIGN KEY (`carreras_id`) REFERENCES `carreras` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas`
--

LOCK TABLES `empresas` WRITE;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` VALUES (42,'fotos/450_1000.jpg','Wolskvagen','Grande','Para los jÃ³venes interesados en participar, los requisitos son:','La convocatoria estÃ¡ abierta a estudiantes de carreras relacionadas con las Ã¡reas de:','Si','UTXJ2004HPLMNE33',12,'En Proceso',1,'2019-07-31 03:47:49',' Periferico Sur 4121, Fuentes del Pedregal, 14141 Tlalpan, CDMX'),(43,'fotos/IMSS.jpg','IMMS','Pequeña','ReparciÃ³n de relojes de pulso,analogicos y construcciÃ³n de relojes solares','Requerimos de personal capacitado en el area de administración ','No','RLJMN01010101',2,'En Proceso',2,'2019-07-31 03:47:49','Xicotepec de Juarez Puebla,Mexico'),(44,'fotos/azteca.jpg','Tv Azteca','Pequeña','Requisitos:','PRACTICANTES DE EDICIÃ“N DIGITAL - TV AZTECA','Si','123467',12,'En Proceso',1,'2019-07-31 03:47:49',' Periferico Sur 4121, Fuentes del Pedregal, 14141 Tlalpan, CDMX'),(45,'fotos/bimbo.jpeg','Bimbo','Pequeña','Â¿QuÃ© buscamos?','Programa de prÃ¡cticas','Si','123467',12,'En Proceso',1,'2019-07-31 03:47:49','Corporativo Bimbo S.A. de C.V.'),(46,'fotos/coca.jpeg','Coca Cola','Pequeña','No se atenderÃ¡n solicitudes enviadas en formato OCC','Auxiliar servicio a ventas','Si','123467',12,'En Proceso',1,'2019-07-31 03:47:49','Puebla, Puebla'),(47,'fotos/manto.jpg','2122','Mediana','11111113','sddddddddd12321','Si','Universidad Tecnológica de Xicotepec de Juarez',123,'En Proceso',2,'2019-07-31 03:47:49','Huachinango Puebla,Mexico'),(48,'fotos/travelent.jpg','Travelnet','Pequeña','EXPERIENCIA','ANALISTA DE SISTEMAS INFORMÃTICOS','Si','Universidad Tecnológica de Xicotepec de Juarez',223,'En Proceso',1,'2019-07-31 03:47:49','RÃ­o Ganges 45, CuauhtÃ©moc, 06500 Ciudad de MÃ©xico, CDMX'),(49,'fotos/1 (1).jpg','wdqwq','Pequeña','aaaasdasda','123123adad','Si','Universidad Tecnológica de Xicotepec de Juarez',223,'En Proceso',2,'2019-07-31 03:47:49','Huachinango Puebla,Mexico'),(50,'fotos/televisa.jpg','Televisa','Pequeña','REQUISITOS:','Lugar de Trabajo:','Si','qwertyu12345',12,'En Proceso',1,'2019-07-31 03:47:49','CoyoacÃ¡n, Distrito Federal'),(51,'fotos/asosa.jpg','Asosa','Pequeña','CaracterÃ­sticas:','Especialista en infraestructura TI','Si','qwertyu12345',12,'En Proceso',1,'2019-07-31 03:47:49','Azcapotzalco'),(52,'fotos/1.jpg','qwerty2','Pequeña','qqetewe12','qweerer','Si','qwertyu12345',12,'En Proceso',2,'2019-07-31 03:47:49','Huachinango Puebla,Mexico'),(53,'fotos/1 (1).jpg','TeamDevelopment12','Pequeña','qwerty2','qwett123','Si','Universidad Tecnológica de Xicotepec de Juarez',222,'En Proceso',2,'2019-07-31 03:47:49','Huachinango Puebla,Mexico'),(54,'fotos/manto.jpg','Grupo Modelo','Mediana','','TeamDevelopment123','Si','TeamDevelopment123',12,'En Proceso',1,'2019-07-31 03:47:49','Xicotepec de Juarez Puebla,Mexico'),(55,'fotos/compucentro.jpg','Compucentro','Mediana','Requisitos indispensables:','TÃ©cnico de ImplementaciÃ³n POR PROYECTO','Si','TeamDevelopment123',12,'En Proceso',1,'2019-07-31 03:47:49','Edo de Mex. (norte)'),(56,'fotos/iapza.jpg','Iapza','Mediana','LÃDER DE PROYECTO','LÃDER DE PROYECTO','Si','TeamDevelopment123',12,'En Proceso',1,'2019-07-31 03:47:49','Calle Yacatas 465, Narvarte Poniente, 03000 Benito Juarez, CDMX'),(57,'fotos/iconinnova.jpg','Innova','Mediana','          Ofrecemos:','PROJECT MANAGER','Si','TeamDevelopment123',12,'En Proceso',1,'2019-07-31 03:47:49','CDMX: AlcaldÃ­a Benito JuÃ¡rez (Cerca del metro Mixcoac).'),(58,'fotos/IZZI.jpg','IZZI','Mediana','FUNCIONES DEL PUESTO:','EJECUTIVO SERVICIO A CLIENTES EMPRESARIAL','Si','TeamDevelopment123',12,'En Proceso',1,'2019-07-31 03:47:49','Estado de MÃ©xico, sucursal los Reyes â€“ Av. Puebla NÂ° .81 Col. Los Reyes Acaquilpan C.P. 56400'),(59,'fotos/1043.jpg','TeamDevelopment123','Mediana','','TeamDevelopment123','Si','TeamDevelopment123',12,'En Proceso',1,'2019-07-31 03:47:49','Xicotepec de Juarez Puebla,Mexico'),(60,'fotos/1043.jpg','TeamDevelopment123','Mediana','','TeamDevelopment123','Si','TeamDevelopment123',12,'En Proceso',1,'2019-07-31 03:47:49','Xicotepec de Juarez Puebla,Mexico'),(61,'fotos/1043.jpg','TeamDevelopment123','Mediana','','TeamDevelopment123','Si','TeamDevelopment123',12,'En Proceso',1,'2019-07-31 03:47:49','Xicotepec de Juarez Puebla,Mexico'),(62,'fotos/1043.jpg','TeamDevelopment123','Mediana','','TeamDevelopment123','Si','TeamDevelopment123',12,'En Proceso',1,'2019-07-31 03:47:49','Xicotepec de Juarez Puebla,Mexico'),(63,'fotos/1043.jpg','TeamDevelopment123','Mediana','','TeamDevelopment123','Si','TeamDevelopment123',12,'En Proceso',1,'2019-07-31 03:47:49','Xicotepec de Juarez Puebla,Mexico'),(64,'fotos/1043.jpg','TeamDevelopment123','Mediana','','TeamDevelopment123','Si','TeamDevelopment123',12,'En Proceso',1,'2019-07-31 03:47:49','Xicotepec de Juarez Puebla,Mexico'),(65,'fotos/1043.jpg','TeamDevelopment24214123432','Mediana','','TeamDevelopment123','Si','TeamDevelopment123',12,'En Proceso',1,'2019-07-31 03:47:49','Xicotepec de Juarez Puebla,Mexico'),(66,'fotos/1043.jpg','TeamDevelopment123','Mediana','','TeamDevelopment123','Si','TeamDevelopment123',12,'En Proceso',1,'2019-07-31 03:47:49','Xicotepec de Juarez Puebla,Mexico'),(67,'fotos/1043.jpg','TeamDevelopment123','Mediana','','TeamDevelopment123','Si','TeamDevelopment123',12,'En Proceso',1,'2019-07-31 03:47:49','Xicotepec de Juarez Puebla,Mexico'),(68,'fotos/Tarea.jpg','HelloThere','Mediana','qwertywqere','12312dsdsa','Si','Universidad Tecnológica de Xicotepec de Juarez',12,'En Proceso',2,'2019-07-31 03:47:49','Estado de MÃ©xico, sucursal los Reyes â€“ Av. Puebla NÂ° .81 Col. Los Reyes Acaquilpan C.P. 56400'),(69,'fotos/E52.jpg','HelloThere','Mediana','qwertywqere','12312dsdsa','Si','Universidad Tecnológica de Xicotepec de Juarez',12,'En Proceso',2,'2019-07-31 03:47:49','Estado de MÃ©xico, sucursal los Reyes â€“ Av. Puebla NÂ° .81 Col. Los Reyes Acaquilpan C.P. 56400'),(70,'fotos/bender3.png','Chicarcas','Mediana','Chicarcas','Chicarcas','Si','ChicarcasChicarcas',123,'En Proceso',3,'2019-07-31 03:47:49','Huachinango Puebla,Mexico'),(71,'fotos/82.jpeg','Utxj','Mediana','asdsadasdas','asdasdas','Si','Universidad Tecnológica de Xicotepec de Juarez',123,'En Proceso',3,'2019-07-31 03:47:49','Huachinango Puebla,Mexico'),(72,'fotos/82.jpeg','TeamDevelopment12321321','Mediana','adasdsadasdasda','dsadasdasdasasda','Si','dsadasdasdadadqewe',12,'En Proceso',3,'2019-07-31 03:47:49','Estado de MÃ©xico, sucursal los Reyes â€“ Av. Puebla NÂ° .81 Col. Los Reyes Acaquilpan C.P. 56400'),(73,'fotos/483.jpg','Prueba','Pequeña','Prueba','Prueba','Si','123467',123,'En Proceso',3,'2019-07-31 03:47:49','Estado de MÃ©xico, sucursal los Reyes â€“ Av. Puebla NÂ° .81 Col. Los Reyes Acaquilpan C.P. 56400'),(74,'fotos/483.jpg','Prueba','Pequeña','Prueba','Prueba','Si','123467',123,'En Proceso',3,'2019-07-31 03:47:49','Estado de MÃ©xico, sucursal los Reyes â€“ Av. Puebla NÂ° .81 Col. Los Reyes Acaquilpan C.P. 56400'),(75,'fotos/483.jpg','adsdasdasdasda','Pequeña','fgfhsff','fgffdfsgh','Si','gsgfdfs',22,'En Proceso',3,'2019-07-31 03:47:49','Estado de MÃ©xico, sucursal los Reyes â€“ Av. Puebla NÂ° .81 Col. Los Reyes Acaquilpan C.P. 56400'),(76,'fotos/483.jpg','qwertyu','Mediana','QWERTYUI','qwertyui','Si','qwertyuio',13,'En Proceso',1,'2019-07-31 03:47:49','Estado de MÃ©xico, sucursal los Reyes â€“ Av. Puebla NÂ° .81 Col. Los Reyes Acaquilpan C.P. 56400'),(77,'fotos/483.jpg','qwertyu','Mediana','QWERTYUI','qwertyui','Si','qwertyuio',13,'En Proceso',1,'2019-07-31 03:47:49','Estado de MÃ©xico, sucursal los Reyes â€“ Av. Puebla NÂ° .81 Col. Los Reyes Acaquilpan C.P. 56400'),(78,'fotos/483.jpg','qwertyu','Mediana','QWERTYUI','qwertyui','Si','qwertyuio',13,'En Proceso',1,'2019-07-31 03:47:49','Estado de MÃ©xico, sucursal los Reyes â€“ Av. Puebla NÂ° .81 Col. Los Reyes Acaquilpan C.P. 56400'),(79,'fotos/483.jpg','qwertyu','Mediana','QWERTYUI','qwertyui','Si','qwertyuio',13,'En Proceso',1,'2019-07-31 03:47:49','Estado de MÃ©xico, sucursal los Reyes â€“ Av. Puebla NÂ° .81 Col. Los Reyes Acaquilpan C.P. 56400'),(80,'fotos/483.jpg','qwertyu','Mediana','QWERTYUI','qwertyui','Si','qwertyuio',13,'En Proceso',1,'2019-07-31 03:47:49','Estado de MÃ©xico, sucursal los Reyes â€“ Av. Puebla NÂ° .81 Col. Los Reyes Acaquilpan C.P. 56400'),(81,'fotos/483.jpg','qwertyu','Mediana','QWERTYUI','qwertyui','Si','qwertyuio',13,'En Proceso',1,'2019-07-31 03:47:49','Estado de MÃ©xico, sucursal los Reyes â€“ Av. Puebla NÂ° .81 Col. Los Reyes Acaquilpan C.P. 56400'),(82,'fotos/483.jpg','qwertyu','Mediana','QWERTYUI','qwertyui','Si','qwertyuio',13,'En Proceso',1,'2019-07-31 03:47:49','Estado de MÃ©xico, sucursal los Reyes â€“ Av. Puebla NÂ° .81 Col. Los Reyes Acaquilpan C.P. 56400'),(83,'fotos/483.jpg','qwertyu','Mediana','QWERTYUI','qwertyui','Si','qwertyuio',13,'En Proceso',1,'2019-07-31 03:47:49','Estado de MÃ©xico, sucursal los Reyes â€“ Av. Puebla NÂ° .81 Col. Los Reyes Acaquilpan C.P. 56400'),(84,'fotos/649.jpg','qweqweqweq','Grande','ewqeqw','eqweqwe','Si','Universidad Tecnológica de Xicotepec de Juarez',223,'En Proceso',3,'2019-07-31 03:47:49','Estado de MÃ©xico, sucursal los Reyes â€“ Av. Puebla NÂ° .81 Col. Los Reyes Acaquilpan C.P. 56400'),(85,'fotos/649.jpg','qweqweqweq','Grande','ewqeqw','eqweqwe','Si','Universidad Tecnológica de Xicotepec de Juarez',223,'En Proceso',3,'2019-07-31 03:47:49','Estado de MÃ©xico, sucursal los Reyes â€“ Av. Puebla NÂ° .81 Col. Los Reyes Acaquilpan C.P. 56400'),(86,'fotos/649.jpg','qweqweqweq','Grande','ewqeqw','eqweqwe','Si','Universidad Tecnológica de Xicotepec de Juarez',223,'En Proceso',3,'2019-07-31 03:47:49','Estado de MÃ©xico, sucursal los Reyes â€“ Av. Puebla NÂ° .81 Col. Los Reyes Acaquilpan C.P. 56400'),(87,'fotos/649.jpg','qweqweqweq','Grande','ewqeqw','eqweqwe','Si','Universidad Tecnológica de Xicotepec de Juarez',223,'En Proceso',3,'2019-07-31 03:47:49','Huachinango Puebla,Mexico'),(88,'fotos/649.jpg','qweqweqweq','Grande','ewqeqw','eqweqwe','Si','Universidad Tecnológica de Xicotepec de Juarez',223,'En Proceso',3,'2019-07-31 03:47:49','Huachinango Puebla,Mexico'),(89,'fotos/649.jpg','qweqweqweq','Grande','ewqeqw','eqweqwe','Si','Universidad Tecnológica de Xicotepec de Juarez',223,'En Proceso',3,'2019-07-31 03:47:49','Huachinango Puebla,Mexico'),(90,'fotos/649.jpg','qweqweqweq','Grande','ewqeqw','eqweqwe','Si','Universidad Tecnológica de Xicotepec de Juarez',223,'En Proceso',3,'2019-07-31 03:47:49','Huachinango Puebla,Mexico'),(91,'fotos/649.jpg','qweqweqweq','Grande','ewqeqw','eqweqwe','Si','Universidad Tecnológica de Xicotepec de Juarez',223,'En Proceso',3,'2019-07-31 03:47:49','Huachinango Puebla,Mexico'),(92,'fotos/649.jpg','qweqweqweq','Grande','ewqeqw','eqweqwe','Si','Universidad Tecnológica de Xicotepec de Juarez',223,'En Proceso',3,'2019-07-31 03:47:49','Huachinango Puebla,Mexico'),(93,'fotos/649.jpg','qweqweqweq','Grande','ewqeqw','eqweqwe','Si','Universidad Tecnológica de Xicotepec de Juarez',223,'En Proceso',3,'2019-07-31 03:47:49','Huachinango Puebla,Mexico'),(94,'fotos/649.jpg','qweqweqweq','Grande','ewqeqw','eqweqwe','Si','Universidad Tecnológica de Xicotepec de Juarez',223,'En Proceso',3,'2019-07-31 03:47:49','Huachinango Puebla,Mexico'),(95,'fotos/649.jpg','prueba11','Mediana','QWERTYUI','qwertyui','Si','qwertyuio',13,'En Proceso',1,'2019-07-31 03:47:49','Huachinango Puebla,Mexico'),(96,'fotos/649.jpg','qwertyu','Mediana','QWERTYUI','qwertyui','Si','qwertyuio',13,'En Proceso',1,'2019-07-31 03:47:49','Huachinango Puebla,Mexico'),(97,'fotos/649.jpg','qwertyu','Mediana','QWERTYUI','qwertyui','Si','qwertyuio',13,'En Proceso',1,'2019-07-31 03:47:49','Huachinango Puebla,Mexico'),(98,'fotos/649.jpg','qwertyu','Mediana','QWERTYUI','qwertyui','Si','qwertyuio',13,'En Proceso',1,'2019-07-31 03:47:49','Huachinango Puebla,Mexico'),(99,'fotos/649.jpg','qwertyu','Mediana','QWERTYUI','qwertyui','Si','qwertyuio',13,'En Proceso',1,'2019-07-31 03:47:49','Huachinango Puebla,Mexico'),(100,'fotos/649.jpg','chemaPrueba','Mediana','QWERTYUI','qwertyui','Si','qwertyuio',13,'En Proceso',1,'2019-07-31 03:47:49','Huachinango Puebla,Mexico'),(101,'fotos/649.jpg','HelloThere','Mediana','sadasd','dsadad','Si','Universidad Tecnológica de Xicotepec de Juarez',123,'En Proceso',1,'2019-07-31 03:47:49','Huachinango Puebla,Mexico'),(102,'fotos/649.jpg','HelloThere','Mediana','sadasd','dsadad','Si','Universidad Tecnológica de Xicotepec de Juarez',123,'En Proceso',1,'2019-07-31 03:47:49','Huachinango Puebla,Mexico'),(103,'fotos/2010-07-16_IMG_2010-07-08_23.00.31__4977439.jpg','Prueba12','Pequeña','Pruebas','Pruebas','Si','Universidad Tecnológica de Xicotepec de Juarez',12,'En Proceso',1,'2019-07-31 04:05:30','Huachinango Puebla,Mexico'),(104,'fotos/Report.pdf','Utxj','Pequeña','eqweqwe','qeqweqweqw','Si','Universidad Tecnológica de Xicotepec de Juarez',12,'En Proceso',1,'2019-08-01 03:02:54','Huachinango Puebla,Mexico'),(105,'fotos/4202.jpg','Empresa de Lisha','Mediana','Es de lisha','Por Lisha','Si','LISHARMLAKAS',111,'En Proceso',1,'2019-08-03 17:34:06','Huachinango Puebla,Mexico'),(106,'fotos/4202.jpg','asdad','Mediana','sadasda','dasda','En Proceso','adasasdas',12,'En Proceso',2,'2019-08-16 01:19:14','adasdasdas'),(107,'fotos/4202.jpg','asdad','Mediana','sadasda','dasda','En Proceso','adasasdas',12,'En Proceso',2,'2019-08-16 01:19:30','adasdasdas'),(108,'fotos/login.png','dsadas','Pequeña','dsadas','dasdasd','Si','dasdad',22,'En Proceso',2,'2019-08-16 01:37:51','sadasdas'),(109,'fotos/login.png','Pruebas','Mediana','Grande','Pruebas','En Proceso','PRUEABASDAS',0,'En Proceso',1,'2019-08-16 01:42:24','Ofelia Galindo'),(110,'fotos/images.jpg','PruebaDeSoftwareShilas','Pequeña','sada','dasdas','Si','dsada',123,'En Proceso',2,'2019-08-16 01:44:12','Pruebas'),(111,'fotos/images.jpg','PruebaDeSoftwareShilas','Pequeña','sada','dasdas','Si','dsada',123,'En Proceso',2,'2019-08-16 01:44:26','Pruebas'),(112,'fotos/login.png','','Mediana','Grande','Pruebas','En Proceso','PRUEABASDAS',0,'En Proceso',1,'2019-08-16 01:49:02','Ofelia Galindo'),(113,'fotos/login.png','','Mediana','Grande','Pruebas','En Proceso','PRUEABASDAS',0,'En Proceso',1,'2019-08-16 01:49:04','Ofelia Galindo'),(114,'fotos/login.png','','Mediana','Grande','Pruebas','En Proceso','PRUEABASDAS',0,'En Proceso',1,'2019-08-16 01:49:28','Ofelia Galindo'),(115,'fotos/login.png','','Mediana','Grande','Pruebas','En Proceso','PRUEABASDAS',0,'En Proceso',1,'2019-08-16 01:49:30','Ofelia Galindo'),(116,'fotos/login.png','','Mediana','Grande','Pruebas','En Proceso','PRUEABASDAS',0,'En Proceso',1,'2019-08-16 01:49:35','Ofelia Galindo'),(117,'fotos/login.png','Pruebas','Mediana','Grande','Pruebas','En Proceso','PRUEABASDAS',0,'En Proceso',1,'2019-08-16 01:49:54','Ofelia Galindo'),(118,'fotos/login.png','Pruebas','Mediana','Grande','Pruebas','En Proceso','PRUEABASDAS',0,'En Proceso',1,'2019-08-16 01:51:48','Ofelia Galindo'),(119,'fotos/login.png','Pruebas','Mediana','Grande','Pruebas','En Proceso','PRUEABASDAS',0,'En Proceso',1,'2019-08-16 01:52:03','Ofelia Galindo'),(120,'fotos/login.png','Pruebas','Mediana','Grande','Pruebas','En Proceso','PRUEABASDAS',0,'En Proceso',1,'2019-08-16 01:52:20','Ofelia Galindo'),(121,'fotos/login.png','Pruebas','Mediana','Grande','Pruebas','En Proceso','PRUEABASDAS',0,'En Proceso',1,'2019-08-16 01:52:31','Ofelia Galindo'),(122,'fotos/login.png','PruebasDeSoftware','Mediana','Grande','Pruebas','En Proceso','PRUEABASDAS',0,'En Proceso',1,'2019-08-16 01:52:55','Ofelia Galindo'),(123,'fotos/login.png','PruebasDeSoftware','Mediana','Grande','Pruebas','En Proceso','PRUEABASDAS',0,'En Proceso',1,'2019-08-16 01:52:58','Ofelia Galindo'),(124,'fotos/login.png','PruebasNocturnas','Mediana','Grande','Pruebas','En Proceso','PRUEABASDAS',0,'En Proceso',1,'2019-08-16 01:53:26','Ofelia Galindo'),(125,'fotos/login.png','','Mediana','Pruebas','Pruebas','En Proceso','RFMLMKN',0,'En Proceso',1,'2019-08-16 02:04:16','Ofelia Galindo'),(126,'fotos/login.png','','Mediana','Pruebas','Pruebas','En Proceso','RFMLMKN',0,'En Proceso',1,'2019-08-16 02:04:50','Ofelia Galindo #134'),(127,'fotos/login.png','','Mediana','Pruebas','Pruebas','En Proceso','RFMLMKN',0,'En Proceso',1,'2019-08-16 02:04:52','Ofelia Galindo #134'),(128,'fotos/login.png','Pruebas Nocturnas 1','Mediana','Desarrollo De Software','Ofelia Galindo #134','En Proceso','Erizo fuerte',0,'En Proceso',1,'2019-08-16 02:12:37','Ofelia Galindo #134'),(129,'fotos/login.png','Pruebas Nocturnas 1','Mediana','Desarrollo De Software','Ofelia Galindo #134','En Proceso','Erizo fuerte',0,'En Proceso',1,'2019-08-16 02:12:59','Ofelia Galindo #134');
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion_estadia`
--

DROP TABLE IF EXISTS `evaluacion_estadia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion_estadia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Calificacion` enum('Buena','Muy Buena','Regular','Mala') NOT NULL,
  `Comentarios` varchar(1000) NOT NULL,
  `empresas_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `fecha_coment` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_evaluacion_estadia_empresas1_idx` (`empresas_id`),
  KEY `fk_evaluacion_estadia_usuarios1_idx` (`usuarios_id`),
  CONSTRAINT `fk_evaluacion_estadia_empresas1` FOREIGN KEY (`empresas_id`) REFERENCES `empresas` (`id_emp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_evaluacion_estadia_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion_estadia`
--

LOCK TABLES `evaluacion_estadia` WRITE;
/*!40000 ALTER TABLE `evaluacion_estadia` DISABLE KEYS */;
INSERT INTO `evaluacion_estadia` VALUES (1,'Muy Buena','Muy buena empresa',42,18,NULL),(2,'Muy Buena','Muy buena empresa',42,19,NULL),(3,'Regular','Muy buena empresa Muy buena empresa Muy buena empresa Muy buena empresa Muy buena empresa',42,18,NULL),(4,'Regular','qwew ',42,18,NULL),(5,'Regular','qwew ',42,18,NULL),(6,'Muy Buena','adasdas',42,18,NULL),(7,'Muy Buena','adasdas',42,18,NULL),(8,'Muy Buena','adasdas',42,18,NULL),(9,'Muy Buena','adasdas',42,18,NULL),(10,'Muy Buena','adasdas',42,18,NULL),(11,'Muy Buena','adasdas',42,18,NULL),(12,'Muy Buena','adasda',42,18,NULL),(13,'Mala','Prueba',42,18,NULL),(14,'Regular','Prueba Shila jaja',42,18,'2019-08-03 00:40:19'),(15,'Regular','Prueba Shila jaja',42,18,'2019-08-03 00:58:08'),(16,'Regular','Prueba Shila jaja',42,18,'2019-08-03 01:32:58'),(17,'Regular','Prueba Shila jaja',42,18,'2019-08-03 02:56:48'),(18,'Regular','Prueba Shila jaja',42,18,'2019-08-03 02:56:53'),(19,'Regular','Prueba Shila jaja',42,18,'2019-08-03 03:13:14'),(20,'Regular','Prueba Shila jaja',42,18,'2019-08-03 03:13:47'),(21,'Regular','Prueba Shila jaja',42,18,'2019-08-03 03:14:53'),(22,'Regular','Prueba Shila jaja',42,18,'2019-08-03 03:15:09'),(23,'Regular','Prueba Shila jaja',42,18,'2019-08-03 03:15:22'),(24,'Regular','Prueba Shila jaja',42,18,'2019-08-03 03:15:54'),(25,'Regular','Prueba Shila jaja',42,18,'2019-08-03 03:16:35'),(26,'Regular','dasdasdasdas',42,18,'2019-08-03 03:39:36'),(27,'Regular','dasdasdasdas',42,18,'2019-08-03 03:43:04'),(28,'Regular','dasdasdasdas',42,18,'2019-08-03 03:47:09'),(29,'Regular','dasdasdasdas',42,18,'2019-08-03 03:49:01'),(30,'Regular','dasdasdasdas',42,18,'2019-08-03 03:50:07'),(31,'Regular','dasdasdasdas',42,18,'2019-08-03 03:50:22'),(32,'Regular','dasdasdasdas',42,18,'2019-08-03 03:51:35'),(33,'Muy Buena','Esta es una Prueba de que funciona realmente el codigo de guarda mi comentario',42,18,'2019-08-03 05:26:10'),(35,'Buena','Hello there',72,88,'2019-08-03 05:32:29'),(42,'Muy Buena','Pruebas',70,83,'2019-08-16 17:16:55');
/*!40000 ALTER TABLE `evaluacion_estadia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periodo`
--

DROP TABLE IF EXISTS `periodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_inicio` date NOT NULL,
  `Fecha_fin` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodo`
--

LOCK TABLES `periodo` WRITE;
/*!40000 ALTER TABLE `periodo` DISABLE KEYS */;
INSERT INTO `periodo` VALUES (1,'2019-05-01','2019-08-31'),(2,'2020-01-01','2020-01-01'),(3,'2020-05-01','2020-08-31');
/*!40000 ALTER TABLE `periodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricula_trabajador` varchar(45) NOT NULL,
  `nombre_completo` varchar(60) NOT NULL,
  `departamento` varchar(45) NOT NULL,
  `carreras_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_personal_carreras1_idx` (`carreras_id`),
  KEY `fk_personal_usuarios1_idx` (`usuarios_id`),
  CONSTRAINT `fk_personal_carreras1` FOREIGN KEY (`carreras_id`) REFERENCES `carreras` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_personal_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postulaciones`
--

DROP TABLE IF EXISTS `postulaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `postulaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_postulacion` datetime NOT NULL,
  `curriculum_v` varchar(400) NOT NULL,
  `empresas_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `estatusPost` enum('En Proceso','Aceptada','Rechazada') NOT NULL,
  `cartaAceptacion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_postulaciones_empresas1_idx` (`empresas_id`),
  KEY `fk_postulaciones_usuarios1_idx` (`usuarios_id`),
  CONSTRAINT `fk_postulaciones_empresas1` FOREIGN KEY (`empresas_id`) REFERENCES `empresas` (`id_emp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_postulaciones_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postulaciones`
--

LOCK TABLES `postulaciones` WRITE;
/*!40000 ALTER TABLE `postulaciones` DISABLE KEYS */;
INSERT INTO `postulaciones` VALUES (4,'2019-08-01 02:12:43','documentos/Report.pdf',42,18,'En Proceso',NULL),(5,'2019-08-01 02:15:32','documentos/Report.pdf',42,18,'En Proceso',NULL),(6,'2019-08-01 02:17:22','documentos/Report.pdf',42,18,'En Proceso',NULL),(7,'2019-08-01 02:18:22','documentos/Report.pdf',42,18,'En Proceso',NULL),(8,'2019-08-01 02:20:14','documentos/Report.pdf',42,18,'En Proceso',NULL),(9,'2019-08-01 02:20:39','documentos/Report.pdf',42,18,'En Proceso',NULL),(10,'2019-08-01 02:22:11','documentos/Report.pdf',42,18,'En Proceso',NULL),(11,'2019-08-01 02:25:20','documentos/Report.pdf',42,18,'En Proceso',NULL),(12,'2019-08-01 02:45:47','documentos/Report.pdf',42,18,'En Proceso',NULL),(13,'2019-08-01 03:04:02','documentos/Report.pdf',42,18,'En Proceso',NULL),(14,'2019-08-01 03:21:30','documentos/Report.pdf',42,18,'En Proceso',NULL),(15,'2019-08-01 03:25:18','documentos/Report.pdf',42,18,'En Proceso',NULL),(16,'2019-08-01 03:26:11','documentos/Report.pdf',42,18,'En Proceso',NULL),(17,'2019-08-01 03:28:10','documentos/Report.pdf',42,18,'En Proceso',NULL),(18,'2019-08-01 03:29:53','documentos/Report.pdf',42,18,'En Proceso',NULL),(19,'2019-08-01 03:30:09','documentos/Report.pdf',42,18,'En Proceso',NULL),(20,'2019-08-01 03:34:49','documentos/Report.pdf',42,18,'En Proceso',NULL),(21,'2019-08-01 03:36:57','documentos/Report.pdf',42,18,'En Proceso',NULL),(22,'2019-08-01 03:37:32','documentos/Report.pdf',42,18,'En Proceso',NULL),(23,'2019-08-01 03:37:53','documentos/Report.pdf',42,18,'En Proceso',NULL),(24,'2019-08-01 03:38:06','documentos/Report.pdf',42,18,'En Proceso',NULL),(25,'2019-08-01 03:38:18','documentos/Report.pdf',42,18,'En Proceso',NULL),(26,'2019-08-01 03:38:27','documentos/Report.pdf',42,18,'En Proceso',NULL),(27,'2019-08-01 03:44:18','documentos/Report.pdf',42,18,'En Proceso',NULL),(28,'2019-08-01 03:49:05','documentos/Report.pdf',42,18,'En Proceso',NULL),(29,'2019-08-01 12:53:47','documentos/Report.pdf',42,18,'En Proceso',NULL),(30,'2019-08-01 12:54:34','documentos/Report.pdf',42,18,'En Proceso',NULL),(31,'2019-08-01 16:20:01','documentos/Report.pdf',42,18,'En Proceso',NULL),(32,'2019-08-01 16:32:59','documentos/Report.pdf',42,18,'En Proceso',NULL),(33,'2019-08-01 16:46:44','documentos/Señales Analógicas y Digitales- José María Gómez Santos.pdf',42,18,'En Proceso',NULL),(34,'2019-08-01 16:48:59','documentos/Report.pdf',42,18,'En Proceso',NULL),(35,'2019-08-01 16:52:30','documentos/Report.pdf',42,18,'En Proceso',NULL),(36,'2019-08-01 16:54:44','documentos/PN-16 AUDITORIAS INTERNAS.pdf',42,18,'En Proceso',NULL),(37,'2019-08-01 16:55:38','documentos/PN-16 AUDITORIAS INTERNAS.pdf',42,18,'En Proceso',NULL),(38,'2019-08-01 16:56:21','documentos/Diagram pert.docx',42,18,'En Proceso',NULL),(39,'2019-08-01 17:01:28','documentos/doc RGT.pdf',54,18,'En Proceso',NULL),(40,'2019-08-01 17:23:39','documentos/Diagram pert.docx',54,18,'En Proceso',NULL),(41,'2019-08-01 17:26:02','documentos/85-2013-11-29-ct02_2010_polit_concil.pdf',103,18,'En Proceso',NULL),(48,'2019-08-02 03:06:22','documentos/INEJoseMriaGomezSantos.pdf',44,18,'En Proceso',NULL),(49,'2019-08-02 03:09:05','documentos/PN-16 AUDITORIAS INTERNAS.pdf',42,18,'En Proceso',NULL),(50,'2019-08-02 03:39:41','documentos/Señales Analógicas y Digitales- José María Gómez Santos.pdf',42,18,'En Proceso',NULL),(51,'2019-08-02 03:46:23','documentos/formatoDePagoChema.pdf',42,18,'En Proceso',NULL),(52,'2019-08-02 03:46:26','documentos/formatoDePagoChema.pdf',42,18,'En Proceso',NULL),(53,'2019-08-02 03:47:01','documentos/formatoDePagoChema.pdf',42,18,'En Proceso',NULL),(54,'2019-08-02 15:37:27','documentos/85-2013-11-29-ct02_2010_polit_concil.pdf',42,18,'En Proceso',NULL),(55,'2019-08-02 17:20:37','documentos/85-2013-11-29-ct02_2010_polit_concil.pdf',42,18,'En Proceso',NULL),(56,'2019-08-02 18:07:55','documentos/doc.pdf',42,18,'En Proceso',NULL),(57,'2019-08-03 02:57:04','documentos/doc.pdf',42,18,'En Proceso',NULL),(58,'2019-08-03 16:59:58','documentos/doc RGT.pdf',54,18,'En Proceso',NULL),(59,'2019-08-03 17:36:02','documentos/Report.pdf',105,18,'En Proceso',NULL);
/*!40000 ALTER TABLE `postulaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procesos`
--

DROP TABLE IF EXISTS `procesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procesos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `periodo_id` int(11) NOT NULL,
  `Nivel` enum('TSU.','Ing.','Licenciatura') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Procesos_periodo1_idx` (`periodo_id`),
  CONSTRAINT `fk_Procesos_periodo1` FOREIGN KEY (`periodo_id`) REFERENCES `periodo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procesos`
--

LOCK TABLES `procesos` WRITE;
/*!40000 ALTER TABLE `procesos` DISABLE KEYS */;
INSERT INTO `procesos` VALUES (1,1,'TSU.'),(2,2,'Ing.'),(3,3,'Licenciatura');
/*!40000 ALTER TABLE `procesos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propuesta`
--

DROP TABLE IF EXISTS `propuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propuesta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_empresa` varchar(45) NOT NULL,
  `Contacto` varchar(45) NOT NULL,
  `Total_vacantes` varchar(45) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `Procesos_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_propuesta_personas1_idx` (`usuarios_id`),
  KEY `fk_propuesta_Procesos1_idx` (`Procesos_id`),
  CONSTRAINT `fk_propuesta_Procesos1` FOREIGN KEY (`Procesos_id`) REFERENCES `procesos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_propuesta_personas1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='			';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propuesta`
--

LOCK TABLES `propuesta` WRITE;
/*!40000 ALTER TABLE `propuesta` DISABLE KEYS */;
INSERT INTO `propuesta` VALUES (7,'UTXJ','7641005949','12',18,2),(9,'TV Azteca CDMX','7641005949','12',18,1);
/*!40000 ALTER TABLE `propuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_invitado`
--

DROP TABLE IF EXISTS `usuario_invitado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_invitado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_completo` varchar(45) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usuario_invitado_usuarios1_idx` (`usuarios_id`),
  CONSTRAINT `fk_usuario_invitado_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_invitado`
--

LOCK TABLES `usuario_invitado` WRITE;
/*!40000 ALTER TABLE `usuario_invitado` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_invitado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `correo` varchar(60) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  `estatus` enum('habilitado','inhabilitado') NOT NULL,
  `tipo_usuario` enum('Personal','Alumno','UsuarioNormal') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (18,'chema9223@gmail.com','12345','habilitado','Alumno'),(19,'josearmandocd1998@gmail.com','1234yop','inhabilitado','UsuarioNormal'),(20,'josearmandocd1998@gmail.com','1234yop','inhabilitado','UsuarioNormal'),(21,'josearmandocd1998@gmail.com','1234yop','inhabilitado','UsuarioNormal'),(22,'josearmandocd1998@gmail.com','1234yop','inhabilitado','UsuarioNormal'),(23,'josearmandocd1998@gmail.com','prueba','inhabilitado','UsuarioNormal'),(83,'checo@gmail.com','4321','habilitado','Alumno'),(84,'mayra@gmail.com','54321','habilitado','Personal'),(85,'hola@gmail.com','12345','habilitado','Alumno'),(88,'88esmeh@gmail.com','1234','habilitado','Alumno'),(90,'eo12.0914@gmail.com','lisha','habilitado','Alumno'),(91,'monky@gmail.com','12345678','habilitado','Alumno');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bd_estadia'
--

--
-- Dumping routines for database 'bd_estadia'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-17 16:15:26
