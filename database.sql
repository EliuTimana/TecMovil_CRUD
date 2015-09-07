-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tec_movil_crud

CREATE DATABASE IF NOT EXISTS `tec_movil_crud` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `tec_movil_crud`;


-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` (`id`, `nombre`) VALUES (19,'Argentina'),(20,'Belgium'),(8,'Burundi'),(16,'Chile'),(11,'Cook Islands'),(17,'Curaçao'),(13,'Cyprus'),(4,'Czech Republic'),(10,'Estonia'),(12,'Grenada'),(1,'Malaysia'),(15,'Montenegro'),(7,'Morocco'),(3,'Northern Mariana Islands'),(6,'Oman'),(9,'Perú'),(5,'Russian Federation'),(14,'Seychelles'),(18,'United Arab Emirates'),(2,'Venezuela');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `id_pais` smallint(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `persona_ibfk_1` (`id_pais`),
  CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` (`id`, `nombre`, `apellidos`, `direccion`, `telefono`, `email`, `fecha_nacimiento`, `id_pais`) VALUES (2,'Pascale','Koch','Ap #126-7487 Mattis Rd.','919-4148','dui.augue@Integerurna.com','1997-04-05',12),(3,'Vernon','Hendricks','4902 Adipiscing Av.','106-3495','orci@vitae.co.uk','2000-05-27',4),(4,'Brooke','Grant','P.O. Box 292, 2575 Ante Avenue','1-678-806-9955','neque.venenatis.lacus@Donectempus.ca','1994-04-10',20),(5,'Raya','Fitzgerald','P.O. Box 679, 9808 Sed Road','142-1151','et.rutrum@ipsum.ca','1996-01-13',9),(6,'Macaulay','Blair','Ap #156-2644 Feugiat Rd.','1-711-715-7807','sit.amet.massa@egetdictumplacerat.net','1999-06-18',5),(7,'Beau','Pickett','Ap #562-2862 Id Ave','1-746-632-9777','ut.erat.Sed@tellus.com','1995-11-26',16),(8,'Elliott','Santana','P.O. Box 395, 1880 Montes, Av.','782-8546','arcu.et@purus.ca','1997-09-16',5),(9,'Olympia','Kemp','809-2894 Erat Road','1-906-133-9405','nunc.interdum@a.edu','1995-11-07',17),(10,'Kendall','Mills','989-3460 Quam Street','770-4361','libero.lacus@facilisisfacilisismagna.co.uk','1993-08-13',10),(11,'Quinlan','Cooke','P.O. Box 817, 1861 Donec Street','468-4679','sollicitudin.orci@enimnec.edu','1991-03-26',15),(12,'Lara','Thompson','9944 Nunc Avenue','398-9274','ac.tellus@arcuSed.ca','1997-09-17',9),(13,'Ferdinand','French','1439 Primis Ave','1-834-625-2984','ac.sem@Aliquamgravidamauris.com','1996-07-21',18),(14,'Michelle','Willis','876-933 Morbi St.','1-821-185-2019','faucibus.orci.luctus@ac.ca','1999-07-24',5),(15,'Holly','Christensen','Ap #590-4948 Massa. Street','1-242-350-6384','turpis.non.enim@Donecsollicitudinadipiscing.co.uk','1994-10-22',9),(16,'Whilemina','Forbes','806-2279 Posuere Rd.','821-5933','nibh.vulputate@sem.net','1991-08-17',11),(17,'Lacey','Schultz','Ap #942-2164 Mauris Road','1-168-820-7040','leo.elementum@consectetueripsum.edu','2000-03-28',6),(18,'Tanisha','Acosta','511-9215 Non, St.','1-591-874-4667','amet.dapibus.id@Suspendisse.co.uk','1992-01-17',14),(19,'Lara','Barker','Ap #724-9995 Elementum Av.','977-6526','est@fermentum.org','1997-11-13',15),(20,'Demetria','Bradshaw','Ap #911-8662 Semper Ave','588-0735','Sed.molestie@massaQuisqueporttitor.ca','1994-08-27',13),(21,'Ivor','Harvey','Ap #105-9769 Maecenas Road','268-6061','magna.et@loremauctor.net','1997-08-03',19),(22,'Simon','Odom','P.O. Box 833, 1993 Phasellus Av.','1-819-822-7504','quis@purusMaecenaslibero.co.uk','1995-04-22',16),(23,'Trevor','Parks','Ap #176-9071 Litora Ave','1-170-694-8149','a.felis@nonbibendumsed.ca','1999-03-05',1),(24,'Hedley','Clark','8728 Et Road','1-159-982-1850','Nullam.suscipit.est@in.org','1993-02-14',16),(26,'Conan','Sargent','2848 Gravida St.','1-484-325-9502','hymenaeos.Mauris.ut@elementumdui.com','1992-02-25',6),(27,'Bryar','Delaney','Ap #117-4135 Tincidunt Ave','1-342-491-5647','elementum.at@elitpedemalesuada.ca','1998-08-26',12),(28,'Xerxes','Gonzales','3345 Ac St.','135-9710','et@elitelit.ca','1994-03-20',2),(29,'Melanie','Sweeney','Ap #759-8772 Cursus, St.','158-1717','non.lorem@mus.org','1998-04-23',10),(30,'Tyrone','Orr','508-9056 Vitae Road','1-665-737-0407','placerat.Cras.dictum@Cras.org','1991-02-08',5),(31,'Rooney','Henry','810-1767 Convallis Street','1-475-513-6238','risus.Morbi.metus@lacus.net','1999-10-17',13),(32,'Ocean','Walter','Ap #222-2206 Eu Rd.','261-9426','neque.Nullam@ornare.net','1992-04-23',12),(33,'Raymond','Espinoza','670-5028 Libero Av.','215-7755','luctus@arcuiaculisenim.com','1990-11-16',1),(34,'Orli','Macdonald','479-539 Sed, Rd.','1-354-414-8242','a.feugiat@nequeseddictum.net','1998-08-22',6),(35,'Carol','Watts','7851 Nulla St.','1-864-453-0491','Duis.sit@elitpellentesque.org','1996-12-03',7),(36,'Roth','Cash','Ap #977-4034 Quis, St.','1-392-219-4596','neque.Nullam@tempordiam.ca','1994-10-02',14),(37,'Kylie','Sweeney','P.O. Box 729, 5337 Donec Avenue','785-5549','tincidunt.nibh@auguescelerisque.edu','1995-08-12',11),(38,'Arthur','Norton','524-7102 Erat Rd.','1-555-429-8848','lobortis.mauris.Suspendisse@lacusMauris.co.uk','1991-06-04',17),(39,'Christine','Rodriguez','582-1002 Curabitur Rd.','1-585-958-2901','id.ante@tortorNunccommodo.com','1997-07-20',19),(40,'Kylie','Mejia','Ap #593-8180 Semper Rd.','259-1816','sem.semper@montesnascetur.org','1995-07-12',7),(41,'Aurelia','Delacruz','Ap #887-6241 Semper St.','215-8070','a.dui@diamnunc.ca','1992-09-09',16),(42,'Kenneth','Zamora','P.O. Box 876, 4927 Mauris Street','911-8733','luctus@Praesenteudui.edu','1991-10-22',19),(43,'Phyllis','Howe','P.O. Box 348, 3370 Ullamcorper Rd.','338-9514','sem@et.net','1991-06-01',6),(44,'Xaviera','Holman','909-2274 At, Ave','830-2632','malesuada.fames@CuraeDonec.com','1996-02-13',11),(45,'Bianca','Hurst','Ap #668-2097 Parturient Street','1-305-331-3466','non.magna.Nam@Donecluctusaliquet.org','1999-04-24',17),(46,'Lydia','Blackwell','9046 In Road','1-250-690-7593','elit@aliquamarcuAliquam.co.uk','1991-11-09',13),(47,'Uriah','Wooten','P.O. Box 441, 6280 Integer Rd.','991-6092','orci.adipiscing.non@Fusce.com','1997-11-08',13),(48,'Kelsey','Rocha','Ap #308-6955 Nunc Street','678-2038','ornare@nibhPhasellus.org','1994-07-12',4),(49,'Imelda','Wilkerson','Ap #953-4316 Libero. Av.','613-5248','Nulla.tincidunt@ullamcorper.net','1993-03-29',2),(50,'Emmanuel','Gardner','Ap #718-3826 Feugiat Rd.','486-0667','amet@enim.org','1993-10-09',13),(52,'Levi','King','P.O. Box 740, 9933 Integer Ave','1-898-230-2418','dis.parturient.montes@quisurna.edu','1994-10-02',16),(53,'Timothy','Garrett','P.O. Box 592, 5175 Enim Avenue','963-2646','odio.Aliquam@sem.com','1997-05-20',11),(54,'Wanda','Mathis','P.O. Box 585, 2091 At Ave','984-1641','lobortis@nullaat.com','1992-11-29',6),(55,'Galvin','Fulton','515-7465 Vel St.','1-143-495-3244','ac.arcu@magnanecquam.edu','1992-01-15',15),(56,'Mikayla','Brady','153-2971 Fusce Rd.','826-1283','eu@dui.ca','1994-09-14',16),(57,'Cadman','Flynn','5334 Gravida Avenue','1-927-417-5600','et.magnis.dis@justo.co.uk','1999-03-10',16),(58,'Brooke','Cole','P.O. Box 642, 2401 Nulla Road','606-8020','Suspendisse.sagittis.Nullam@nuncid.edu','2000-11-17',13),(59,'Deacon','Warner','Ap #128-6951 Mi. Ave','509-0278','at@nec.com','1991-08-30',15),(60,'Hanna','Goff','Ap #804-9587 Sodales. Ave','1-435-930-0223','ut.quam@eros.edu','1990-04-05',17),(61,'Camille','Tanner','241-3206 Donec Road','1-669-321-5943','erat@condimentumegetvolutpat.co.uk','2000-06-10',19),(62,'Dominique','Salinas','6053 Volutpat St.','384-9157','imperdiet.erat.nonummy@Phasellus.edu','1992-02-23',7),(63,'Victoria','Todd','P.O. Box 826, 671 Auctor, Avenue','543-8650','euismod.est.arcu@acsemut.edu','1996-07-29',13),(64,'Bevis','Fuentes','Ap #882-6519 Lectus Avenue','1-427-239-7033','porttitor@cursus.co.uk','1992-03-05',5),(65,'Nathaniel','Myers','P.O. Box 736, 5352 Ullamcorper Av.','884-2246','Suspendisse.commodo.tincidunt@non.net','1992-07-09',7),(66,'Meredith','Vargas','P.O. Box 400, 125 Proin Avenue','855-7498','faucibus.orci.luctus@CurabiturmassaVestibulum.co.uk','1997-09-17',15),(67,'Tanisha','Castro','P.O. Box 369, 7864 Tempus Av.','1-892-823-6419','eget.odio@orcilacus.org','1996-04-16',17),(69,'Raya','Mcleod','Ap #272-8176 Non, Avenue','1-420-982-8002','consequat@ametmetus.org','1991-11-13',6),(70,'Nerea','Justice','P.O. Box 121, 441 Semper Av.','552-7097','vel.nisl.Quisque@Nunclectus.net','1993-02-22',11),(71,'Dana','Alexander','986-480 Sed, Road','867-6087','eu.tellus@egestas.edu','1993-04-19',16),(72,'Christian','Mcfarland','949-4849 Dictum Road','1-819-171-8105','dolor.sit@consectetuereuismod.edu','1992-02-01',10),(73,'Perry','Pollard','Ap #561-5060 In Road','838-1546','Nunc.mauris.elit@natoquepenatibuset.edu','1997-05-24',17),(74,'Lucy','Salas','269-2514 Fringilla St.','130-3425','Suspendisse.eleifend@Proinnislsem.ca','1998-09-12',18),(75,'Keith','Joseph','905-368 Sed St.','1-597-411-0093','auctor.nunc.nulla@egestasDuisac.com','1996-09-03',19),(76,'Hermione','Barron','474-3492 Netus Avenue','1-878-635-3757','lacus.Cras.interdum@nullaDonec.edu','1991-02-06',19),(77,'Avram','Mathews','P.O. Box 213, 3803 Porttitor Rd.','507-4070','vel.faucibus.id@et.com','1996-06-19',1),(78,'Mohammad','Baldwin','695-1091 Risus Road','253-8593','tincidunt.orci.quis@Cras.com','1997-09-13',4),(79,'Claudia','Santiago','P.O. Box 164, 6575 Eleifend Rd.','1-615-526-7801','scelerisque@necdiamDuis.org','1999-02-23',17),(80,'Nissim','Harrell','Ap #337-5481 Neque. Street','1-974-171-6521','Quisque@eleifend.com','1996-10-05',12),(81,'Porter','Molina','290-4324 Duis St.','933-8550','ac@loremfringillaornare.edu','1993-04-12',11),(82,'Skyler','Kline','P.O. Box 242, 6215 Varius St.','1-185-585-2684','volutpat.Nulla@Integervulputate.com','1991-04-02',17),(84,'Matthew','Knox','436-109 Elementum Ave','1-144-535-3726','ornare.placerat.orci@utodiovel.ca','1993-05-29',18),(85,'Slade','Salinas','7820 Aliquam Avenue','1-261-680-1321','lectus@laciniaSedcongue.co.uk','1997-06-15',9),(86,'Kellie','Rosario','447-7769 Amet Road','271-4154','purus@ridiculus.net','1999-02-18',10),(87,'Lydia','Meyer','292-7877 Ac Road','981-0116','pede.ultrices.a@ac.co.uk','1998-04-02',19),(88,'Jackson','Faulkner','659-5029 Dapibus Ave','1-367-259-8639','vel@est.com','1992-02-23',8),(89,'Deirdre','Schmidt','Ap #571-201 Erat St.','145-7098','vitae@etrutrumnon.edu','1995-04-22',3),(90,'Kuame','Welch','9029 Sem St.','1-843-520-9754','arcu@Namporttitor.com','1998-11-10',8),(91,'Isabelle','Collins','P.O. Box 107, 378 Velit. Ave','826-9850','vestibulum@semNulla.edu','1997-10-19',11),(93,'Astra Josefina','Wood','Ap #761-4870 Molestie Street','849-0565','ornare.egestas@molestie.edu','1996-04-17',16),(94,'Claudia','Poole','P.O. Box 148, 9768 Dolor, Road','1-739-204-2185','ipsum.Donec.sollicitudin@Uttinciduntorci.ca','1993-08-05',16),(95,'Pearl','Morton','P.O. Box 793, 5802 Velit Road','1-525-452-9767','justo.nec@ipsumacmi.edu','1999-03-06',5),(96,'Geoffrey','Quinn','306-4105 Augue Rd.','1-394-177-7975','nostra@dapibusligulaAliquam.edu','1994-04-03',11),(97,'Cathleen','Harrington','907 Nibh. Av.','1-384-603-2710','hendrerit@arcu.co.uk','1996-12-27',2),(98,'Gillian','Oneill','Ap #744-362 Fringilla Ave','747-3989','pede.blandit.congue@Donec.ca','1997-08-09',16),(99,'Preston','Bowen','891 Ligula. Av.','1-569-206-2328','posuere@penatibus.net','1994-03-27',15);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'tec_movil_crud'
--
/*!50003 DROP PROCEDURE IF EXISTS `spActualizarPersona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `spActualizarPersona`(p1 VARCHAR(255), 
p2 VARCHAR(255), 
p3 VARCHAR(255),
p4 VARCHAR(100),
p5 VARCHAR(255),
p6 DATE,
p7 SMALLINT(5),
p8 int)
BEGIN
	update persona
    set nombre = p1,
    apellidos = p2,
    direccion = p3,
    telefono = p4,
    email = p5,
    fecha_nacimiento = p6,
    id_pais = p7
    where id = p8;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spAgregarPersona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `spAgregarPersona`(p1 VARCHAR(255), 
p2 VARCHAR(255), 
p3 VARCHAR(255),
p4 VARCHAR(100),
p5 VARCHAR(255),
p6 DATE,
p7 SMALLINT(5))
BEGIN
	INSERT INTO persona
    (nombre, apellidos, direccion,telefono,email,fecha_nacimiento,id_pais) 
	VALUES(p1, p2,p3,p4,p5,p6,p7);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spEliminarPersona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `spEliminarPersona`(p1 smallint(5))
begin
	if p1 is not null then
		delete from persona where id = p1;
    end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetPaises` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `spGetPaises`()
begin
	select id as ID, nombre as NOMBRE 
    from pais
    order by nombre;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetPersonas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `spGetPersonas`(id SMALLINT)
BEGIN
	SELECT 
		pp.id AS ID, 
        pp.nombre AS NOMBRE, 
        pp.apellidos AS APELLIDOS, 
        pp.direccion AS DIRECCION, 
        pp.telefono AS TELEFONO, 
        pp.email AS EMAIL, 
        pp.fecha_nacimiento AS FECHA_NACIMIENTO, 
        p.nombre AS PAIS
    FROM persona pp
    INNER JOIN pais p
    ON pp.id_pais = p.id
    WHERE pp.id = id or id is null
    ORDER BY pp.nombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-06 17:45:36
