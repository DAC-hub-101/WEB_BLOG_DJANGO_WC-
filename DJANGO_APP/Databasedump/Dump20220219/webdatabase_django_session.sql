-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: webdatabase
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

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
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3ieek384rm1ashret3jxrk86kra5xdon','.eJxVjEEOwiAQRe_C2hBo6RRcuvcMZJgZpGpoUtqV8e7apAvd_vfef6mI21ri1mSJE6uz6tXpd0tID6k74DvW26xprusyJb0r-qBNX2eW5-Vw_w4KtvKt0XPwZvBjT53kAVPIAMGJG52AZDLoEQIIsssGHRlrCUSEOps9S1LvD_g6OQU:1nLBGt:Qe-8NaJXT84L455ct1s6ZSBukPdKtju8mBMrxmQP_j8','2022-02-18 22:58:35.145909'),('aznusmnkwkzjla98hhvc2b4wumnscxky','.eJxVjEEOwiAQRe_C2hBo6RRcuvcMZJgZpGpoUtqV8e7apAvd_vfef6mI21ri1mSJE6uz6tXpd0tID6k74DvW26xprusyJb0r-qBNX2eW5-Vw_w4KtvKt0XPwZvBjT53kAVPIAMGJG52AZDLoEQIIsssGHRlrCUSEOps9S1LvD_g6OQU:1nL7qp:gxdddYkIG67PmWgn4I3bLCYht9PzGWUg0FgbUzBZGiI','2022-02-18 19:19:27.223290'),('fdtxeej7b4f5slahrlr07f00b455t414','.eJxVjMsOwiAQRf-FtSEM9AEu3fsNZIYZpGpoUtqV8d-1SRe6veec-1IRt7XErckSJ1ZnZdXpdyNMD6k74DvW26zTXNdlIr0r-qBNX2eW5-Vw_w4KtvKtTTAolMFKwMzQW9cxehyIXQcAjr03NhALSg8h2DwGlCHR6JAMelbvD_PQOII:1nKpWj:2_v4dhl7j9I8N9FonkCOHHFMbFiNLUS52k5h8Rq0J-M','2022-02-17 23:45:29.117070');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-19  0:03:03
