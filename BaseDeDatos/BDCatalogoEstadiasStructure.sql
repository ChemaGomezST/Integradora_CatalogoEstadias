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
  `contrasenia` varchar(40) NOT NULL,
  `num_seguro` varchar(45) NOT NULL,
  `carreras_id` int(11) NOT NULL,
  `personas_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_alumnos_carreras1_idx` (`carreras_id`),
  KEY `fk_alumnos_personas1_idx` (`personas_id`),
  CONSTRAINT `fk_alumnos_carreras1` FOREIGN KEY (`carreras_id`) REFERENCES `carreras` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_alumnos_personas1` FOREIGN KEY (`personas_id`) REFERENCES `personas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `asignacion`
--

DROP TABLE IF EXISTS `asignacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Aprobacion` varchar(45) NOT NULL,
  `Quien_aprobo` varchar(45) NOT NULL,
  `Fecha_aprobacion` datetime NOT NULL,
  `Fecha_inicio` datetime NOT NULL,
  `Fecha_fin` datetime NOT NULL,
  `propuesta_id` int(11) NOT NULL,
  `personal_id` int(11) NOT NULL,
  `personal_carreras_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Asignacion_propuesta1_idx` (`propuesta_id`),
  KEY `fk_asignacion_personal1_idx` (`personal_id`,`personal_carreras_id`),
  CONSTRAINT `fk_Asignacion_propuesta1` FOREIGN KEY (`propuesta_id`) REFERENCES `propuesta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_asignacion_personal1` FOREIGN KEY (`personal_id`) REFERENCES `personal` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carreras`
--

DROP TABLE IF EXISTS `carreras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carreras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Nivel` varchar(40) NOT NULL,
  `Director` varchar(90) NOT NULL,
  `Area` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
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
  `Ubicacion` varchar(45) NOT NULL,
  `Encargado` varchar(45) NOT NULL,
  `empresas_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_contacto_empresa_empresas1_idx` (`empresas_id`),
  CONSTRAINT `fk_contacto_empresa_empresas1` FOREIGN KEY (`empresas_id`) REFERENCES `empresas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `empresas`
--

DROP TABLE IF EXISTS `empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Tipo` varchar(45) NOT NULL,
  `Caracteristicas` varchar(45) NOT NULL,
  `Informacion` varchar(45) NOT NULL,
  `Giro` varchar(45) NOT NULL,
  `Rol` varchar(45) NOT NULL,
  `Vinculada` enum('Si','No') NOT NULL,
  `RFC` varchar(45) NOT NULL,
  `Tamaño` enum('Pequeña','Grande','Mediana') NOT NULL,
  `ubicaciones_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_empresas_ubicaciones1_idx` (`ubicaciones_id`),
  CONSTRAINT `fk_empresas_ubicaciones1` FOREIGN KEY (`ubicaciones_id`) REFERENCES `ubicaciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `evaluacion_estadia`
--

DROP TABLE IF EXISTS `evaluacion_estadia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion_estadia` (
  `id` int(11) NOT NULL,
  `Calificacion` enum('Bueno','Muy bueno','Regular','Malo') NOT NULL,
  `Comentarios` varchar(45) NOT NULL,
  `procesos_id` int(11) NOT NULL,
  `alumnos_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_evaluacion_estadia_procesos1_idx` (`procesos_id`),
  KEY `fk_evaluacion_estadia_alumnos1_idx` (`alumnos_id`),
  CONSTRAINT `fk_evaluacion_estadia_alumnos1` FOREIGN KEY (`alumnos_id`) REFERENCES `alumnos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_evaluacion_estadia_procesos1` FOREIGN KEY (`procesos_id`) REFERENCES `procesos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
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
  `contrasenia` varchar(45) NOT NULL,
  `estatus` enum('habilitado','inhabilitado') DEFAULT NULL,
  `departamento` varchar(45) NOT NULL,
  `carreras_id` int(11) NOT NULL,
  `personas_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_personal_carreras1_idx` (`carreras_id`),
  KEY `fk_personal_personas1_idx` (`personas_id`),
  CONSTRAINT `fk_personal_carreras1` FOREIGN KEY (`carreras_id`) REFERENCES `carreras` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_personal_personas1` FOREIGN KEY (`personas_id`) REFERENCES `personas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Apellidos` varchar(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
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
  `Observaciones` varchar(45) NOT NULL,
  `Estatus` enum('Aceptada','No aceptada','En espera') NOT NULL,
  `propuesta_id` int(11) NOT NULL,
  `alumnos_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_postulaciones_propuesta1_idx` (`propuesta_id`),
  KEY `fk_postulaciones_alumnos1_idx` (`alumnos_id`),
  CONSTRAINT `fk_postulaciones_alumnos1` FOREIGN KEY (`alumnos_id`) REFERENCES `alumnos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_postulaciones_propuesta1` FOREIGN KEY (`propuesta_id`) REFERENCES `propuesta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `procesos`
--

DROP TABLE IF EXISTS `procesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procesos` (
  `id` int(11) NOT NULL,
  `periodo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Procesos_periodo1_idx` (`periodo_id`),
  CONSTRAINT `fk_Procesos_periodo1` FOREIGN KEY (`periodo_id`) REFERENCES `periodo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `propuesta`
--

DROP TABLE IF EXISTS `propuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propuesta` (
  `id` int(11) NOT NULL,
  `Descripcion_propuesta` varchar(45) NOT NULL,
  `Vigencia` varchar(45) NOT NULL,
  `Requisitos` varchar(45) NOT NULL,
  `Total_vacantes` varchar(45) NOT NULL,
  `Tipo` enum('Alumno','Asesor academico','Asesor Empresarial','Mexprotec') NOT NULL,
  `empresas_id` int(11) NOT NULL,
  `personas_id` int(11) NOT NULL,
  `Procesos_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_propuesta_empresas1_idx` (`empresas_id`),
  KEY `fk_propuesta_personas1_idx` (`personas_id`),
  KEY `fk_propuesta_Procesos1_idx` (`Procesos_id`),
  CONSTRAINT `fk_propuesta_Procesos1` FOREIGN KEY (`Procesos_id`) REFERENCES `procesos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_propuesta_empresas1` FOREIGN KEY (`empresas_id`) REFERENCES `empresas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_propuesta_personas1` FOREIGN KEY (`personas_id`) REFERENCES `personas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `propuesta_requiere_carreras`
--

DROP TABLE IF EXISTS `propuesta_requiere_carreras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propuesta_requiere_carreras` (
  `propuesta_id` int(11) NOT NULL,
  `carreras_id` int(11) NOT NULL,
  `num_vacantes` int(11) DEFAULT NULL,
  `estatus` varchar(45) DEFAULT NULL,
  KEY `fk_propuesta_has_carreras_carreras1_idx` (`carreras_id`),
  KEY `fk_propuesta_has_carreras_propuesta1_idx` (`propuesta_id`),
  CONSTRAINT `fk_propuesta_has_carreras_carreras1` FOREIGN KEY (`carreras_id`) REFERENCES `carreras` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_propuesta_has_carreras_propuesta1` FOREIGN KEY (`propuesta_id`) REFERENCES `propuesta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ubicaciones`
--

DROP TABLE IF EXISTS `ubicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ubicaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Ciudad` varchar(45) NOT NULL,
  `Distrito_Estado` varchar(45) NOT NULL,
  `Pais` varchar(45) NOT NULL,
  `Region` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  `estatus` enum('habilitado','inhabilitado') NOT NULL,
  `personas_id` int(11) DEFAULT NULL,
  `tipo_usuario` enum('Personal','Alumno','UsuarioNormal') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usuario_personas1_idx` (`personas_id`),
  CONSTRAINT `fk_usuario_personas1` FOREIGN KEY (`personas_id`) REFERENCES `personas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
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

-- Dump completed on 2019-07-07 22:51:45
