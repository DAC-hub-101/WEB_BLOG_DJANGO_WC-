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
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `link` varchar(200) NOT NULL,
  `requirements` longtext NOT NULL DEFAULT (_utf8mb3'gips'),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (49,'https://jobs.bg/job/6000908','[\'cisco\', \'linux\']'),(50,'https://jobs.bg/job/6000766','[\'shell scripts\', \'mysql\', \'sql\', \'ms sql\', \'switching\', \'routing\', \'firewall/waf\', \'docker\', \'linux\', \'windows\', \'active directory\', \'vmware\', \'nginx\', \'iis\', \'ansible\', \'terraform\']'),(51,'https://jobs.bg/job/6000761','[\'sql\', \'ms sql\', \'linux\', \'windows\']'),(52,'https://jobs.bg/job/6000537','[\'python\', \'postgresql\', \'sql\']'),(53,'https://jobs.bg/job/5999522','[\'c#\', \'asp.net\', \'entity framework\', \'soapui\', \'sql\', \'ms sql\', \'postgresql\', \'mysql\', \'mongodb\', \'nosql\', \'redis\', \'docker\', \'kubernetes\', \'nginx\', \'linux\', \'azure\', \'aws\']'),(54,'https://jobs.bg/job/6000369','[\'bi\', \'python\', \'power bi\', \'data visualization\', \'tableau\']'),(55,'https://jobs.bg/job/5999900','[\'python\', \'sql\']'),(56,'https://jobs.bg/job/5999751','[\'shell scripts\', \'python\', \'groovy\', \'jenkins\', \'azure\', \'aws\', \'linux\', \'terraform\', \'vmware\', \'ansible\', \'shell scripts\', \'python\', \'groovy\', \'jenkins\', \'azure\', \'aws\', \'linux\', \'terraform\', \'vmware\', \'ansible\']'),(57,'https://jobs.bg/job/5999746','[\'shell scripts\', \'python\', \'groovy\', \'jenkins\', \'azure\', \'aws\', \'linux\', \'terraform\', \'vmware\', \'ansible\', \'shell scripts\', \'python\', \'groovy\', \'jenkins\', \'azure\', \'aws\', \'linux\', \'terraform\', \'vmware\', \'ansible\']'),(58,'https://jobs.bg/job/5999658','[\'python\', \'shell scripts\', \'aws\', \'terraform\']'),(59,'https://jobs.bg/job/5986780','[\'windows\', \'linux\']'),(60,'https://jobs.bg/job/5999124','[\'crm\', \'swift\', \'groovy\', \'python\', \'shell scripts\', \'docker\', \'jenkins\', \'grafana\', \'elasticsearch\', \'nosql\', \'gcp\', \'terraform\', \'kubernetes\']'),(61,'https://jobs.bg/job/5979875','[\'pci dss\', \'aws\', \'linux\', \'windows\', \'puppet\', \'chef\', \'ansible\', \'terraform\']'),(62,'https://jobs.bg/job/5979868','[\'php\', \'shell scripts\', \'python\', \'drupal\', \'symfony\', \'laravel\', \'magento\', \'nosql\', \'mongodb\', \'redis\', \'elasticsearch\', \'jenkins\', \'docker\', \'linux\', \'kafka\', \'php\', \'shell scripts\', \'python\', \'drupal\', \'symfony\', \'laravel\', \'magento\', \'nosql\', \'mongodb\', \'redis\', \'elasticsearch\', \'jenkins\', \'docker\', \'linux\', \'kafka\']'),(63,'https://jobs.bg/job/5998939','[\'php\', \'python\', \'shell scripts\', \'linux\', \'php\', \'python\', \'shell scripts\', \'linux\']'),(64,'https://jobs.bg/job/5998936','[\'java\', \'javascript\', \'python\', \'shell scripts\', \'jenkins\', \'sap\', \'azure\', \'terraform\', \'ansible\', \'aws\', \'gcp\', \'kubernetes\']'),(65,'https://jobs.bg/job/5998706','[\'java\', \'python\', \'golang\', \'vue.js\', \'sql\', \'hadoop\', \'spark\', \'kafka\', \'linux\', \'java\', \'python\', \'golang\', \'vue.js\', \'sql\', \'hadoop\', \'spark\', \'kafka\', \'linux\']'),(66,'https://jobs.bg/job/5998701','[\'php\', \'javascript\', \'python\', \'shell scripts\', \'c/c++\', \'java\', \'sql\', \'redis\', \'nosql\', \'docker\', \'linux\', \'php\', \'javascript\', \'python\', \'shell scripts\', \'c/c++\', \'java\', \'sql\', \'redis\', \'nosql\', \'docker\', \'linux\']'),(67,'https://jobs.bg/job/5998637','[\'python\', \'shell scripts\', \'perl\', \'javascript\', \'angular\', \'mysql\', \'sql\', \'mongodb\', \'nosql\', \'linux\', \'aws\', \'python\', \'shell scripts\', \'perl\', \'javascript\', \'angular\', \'mysql\', \'sql\', \'mongodb\', \'nosql\', \'linux\', \'aws\']'),(68,'https://jobs.bg/job/5998578','[\'shell scripts\', \'python\', \'php\', \'java\', \'postgresql\', \'sql\', \'grafana\', \'docker\', \'linux\', \'kubernetes\', \'tomcat\', \'shell scripts\', \'python\', \'php\', \'java\', \'postgresql\', \'sql\', \'grafana\', \'docker\', \'linux\', \'kubernetes\', \'tomcat\']'),(69,'https://jobs.bg/job/5998395','[\'shell scripts\', \'python\', \'jenkins\', \'vmware\', \'aws\', \'gcp\', \'ansible\', \'terraform\']'),(70,'https://jobs.bg/job/5998525','[\'bi\', \'python\', \'data visualization\', \'sql\', \'tableau\', \'routing\']'),(71,'https://jobs.bg/job/5998196','[\'data visualization\', \'python\', \'power bi\', \'sql\', \'tableau\']'),(72,'https://jobs.bg/job/5981679','[\'android\', \'ios\', \'azure\', \'linux\', \'macos\', \'windows\', \'active directory\']'),(73,'https://jobs.bg/job/5998064','[\'php\', \'javascript\', \'cakephp\', \'html/css\', \'mysql\', \'linux\']'),(74,'https://jobs.bg/job/5997762','[\'java\', \'python\', \'node.js\', \'groovy\', \'.net\', \'spring\', \'mysql\', \'sql\', \'cassandra\', \'nosql\', \'grafana\', \'kafka\']'),(75,'https://jobs.bg/job/5997681','[\'python\', \'javascript\']'),(76,'https://jobs.bg/job/5997722','[\'linux\']'),(77,'https://jobs.bg/job/5975079','[\'python\', \'c/c++\', \'pytorch\', \'docker\', \'jenkins\', \'kubernetes\']'),(78,'https://jobs.bg/job/5997491','[\'jenkins\', \'docker\', \'aws\', \'linux\', \'vmware\', \'kubernetes\']'),(79,'https://jobs.bg/job/5997485','[\'python\', \'sql\', \'jira\', \'jenkins\']'),(80,'https://jobs.bg/job/5997444','[\'python\', \'java\', \'javascript\', \'typescript\', \'django\', \'flask\', \'angular\', \'vue.js\', \'react\', \'sql\', \'nosql\', \'docker\', \'azure\', \'kubernetes\']'),(81,'https://jobs.bg/job/5997446','[\'php\', \'javascript\', \'html/css\', \'wordpress\', \'drupal\', \'mysql\', \'sql\', \'linux\']'),(82,'https://jobs.bg/job/5997360','[\'python\', \'shell scripts\', \'docker\', \'jenkins\', \'aws\', \'kubernetes\', \'linux\', \'windows\', \'python\', \'shell scripts\', \'docker\', \'jenkins\', \'aws\', \'kubernetes\', \'linux\', \'windows\']'),(83,'https://jobs.bg/job/5997366','[\'python\', \'sql\', \'mongodb\', \'nosql\', \'jira\', \'jenkins\', \'aws\', \'kubernetes\']'),(84,'https://jobs.bg/job/5997368','[\'node.js\', \'java\', \'python\', \'typescript\']'),(85,'https://jobs.bg/job/5997357','[\'python\', \'java\', \'c#\', \'angular\', \'aws\']'),(86,'https://jobs.bg/job/5997262','[\'routing\', \'linux\']'),(87,'https://jobs.bg/job/5997121','[\'six sigma\', \'perl\', \'python\', \'shell scripts\', \'mysql\', \'sql\', \'excel\', \'aws\']'),(88,'https://jobs.bg/job/5996926','[\'python\', \'jenkins\', \'kubernetes\', \'aws\']'),(89,'https://jobs.bg/job/5996799','[\'python\', \'sql\', \'ms sql\', \'aws\', \'spark\', \'hadoop\']'),(90,'https://jobs.bg/job/5996869','[\'python\', \'shell scripts\', \'jenkins\', \'docker\', \'kubernetes\', \'linux\', \'python\', \'shell scripts\', \'jenkins\', \'docker\', \'kubernetes\', \'linux\']'),(91,'https://jobs.bg/job/5996859','[\'php\', \'groovy\', \'javascript\', \'python\', \'shell scripts\', \'symfony\', \'html/css\', \'angular\', \'react\', \'mysql\', \'sql\', \'mariadb\', \'jenkins\', \'linux\', \'rabbitmq\', \'php\', \'groovy\', \'javascript\', \'python\', \'shell scripts\', \'symfony\', \'html/css\', \'angular\', \'react\', \'mysql\', \'sql\', \'mariadb\', \'jenkins\', \'linux\', \'rabbitmq\']'),(92,'https://jobs.bg/job/5996830','[\'javascript\', \'php\', \'angular\', \'jquery\', \'html/css\', \'react\', \'vue.js\', \'docker\', \'rabbitmq\', \'linux\']'),(93,'https://jobs.bg/job/5996804','[\'python\', \'shell scripts\', \'php\', \'groovy\', \'mariadb\', \'sql\', \'mysql\', \'docker\', \'jenkins\', \'linux\', \'rabbitmq\', \'python\', \'shell scripts\', \'php\', \'groovy\', \'mariadb\', \'sql\', \'mysql\', \'docker\', \'jenkins\', \'linux\', \'rabbitmq\']'),(94,'https://jobs.bg/job/5996700','[\'swift\', \'sql\', \'ms sql\', \'ibm db2\', \'linux\', \'windows\']'),(95,'https://jobs.bg/job/5996493','[\'c/c++\', \'java\', \'spring\', \'windows\', \'macos\', \'linux\']'),(96,'https://jobs.bg/job/5996417','[\'c/c++\', \'c#\', \'python\', \'java\', \'php\']');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
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
