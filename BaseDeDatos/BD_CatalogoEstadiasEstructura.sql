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

-- Dump completed on 2019-08-17 16:16:29
