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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-02-17 17:46:10.701897'),(2,'auth','0001_initial','2022-02-17 17:46:11.600583'),(3,'admin','0001_initial','2022-02-17 17:46:11.752988'),(4,'admin','0002_logentry_remove_auto_add','2022-02-17 17:46:11.760990'),(5,'admin','0003_logentry_add_action_flag_choices','2022-02-17 17:46:11.768679'),(6,'contenttypes','0002_remove_content_type_name','2022-02-17 17:46:11.902014'),(7,'auth','0002_alter_permission_name_max_length','2022-02-17 17:46:11.987377'),(8,'auth','0003_alter_user_email_max_length','2022-02-17 17:46:12.015960'),(9,'auth','0004_alter_user_username_opts','2022-02-17 17:46:12.027793'),(10,'auth','0005_alter_user_last_login_null','2022-02-17 17:46:12.438816'),(11,'auth','0006_require_contenttypes_0002','2022-02-17 17:46:12.447817'),(12,'auth','0007_alter_validators_add_error_messages','2022-02-17 17:46:12.454816'),(13,'auth','0008_alter_user_username_max_length','2022-02-17 17:46:12.531711'),(14,'auth','0009_alter_user_last_name_max_length','2022-02-17 17:46:12.604159'),(15,'auth','0010_alter_group_name_max_length','2022-02-17 17:46:12.622059'),(16,'auth','0011_update_proxy_permissions','2022-02-17 17:46:12.630058'),(17,'auth','0012_alter_user_first_name_max_length','2022-02-17 17:46:12.707802'),(18,'blog','0001_initial','2022-02-17 17:46:12.811534'),(19,'blog','0002_comment','2022-02-17 17:46:12.918007'),(20,'blog','0003_rename_data_added_comment_date_added','2022-02-17 17:46:12.942597'),(21,'blog','0004_auto_20211123_2337','2022-02-17 17:46:13.373466'),(22,'blog','0005_rename_comment_comments','2022-02-17 17:46:13.541256'),(23,'blog','0006_delete_comments','2022-02-17 17:46:13.645925'),(24,'blog','0007_comments','2022-02-17 17:46:13.889637'),(25,'blog','0008_delete_comments','2022-02-17 17:46:13.907637'),(26,'blog','0009_comments','2022-02-17 17:46:14.078206'),(27,'blog','0010_auto_20211124_2227','2022-02-17 17:46:14.193034'),(28,'blog','0011_auto_20211124_2319','2022-02-17 17:46:14.373163'),(29,'job_posts','0001_initial','2022-02-17 17:46:14.399408'),(30,'job_posts','0002_auto_20211111_1826','2022-02-17 17:46:14.639962'),(31,'job_posts','0003_alter_job_requirements_requirements','2022-02-17 17:46:14.938136'),(32,'job_posts','0004_auto_20211116_0249','2022-02-17 17:46:15.003575'),(33,'job_posts','0005_rename_job_postings_job_postingss','2022-02-17 17:46:15.026966'),(34,'job_posts','0006_alter_job_postingss_requirements','2022-02-17 17:46:15.030967'),(35,'job_posts','0007_rename_job_postingss_job_postings','2022-02-17 17:46:15.055945'),(36,'job_posts','0008_rename_job_postings_job_posting','2022-02-17 17:46:15.083426'),(37,'job_posts','0009_rename_job_posting_job_postings','2022-02-17 17:46:15.103426'),(38,'job_posts','0010_alter_job_postings_table','2022-02-17 17:46:15.123339'),(39,'sessions','0001_initial','2022-02-17 17:46:15.166055'),(40,'users','0001_initial','2022-02-17 17:46:15.268048'),(41,'blog','0012_auto_20220218_1719','2022-02-18 17:19:33.019455'),(42,'blog','0013_auto_20220218_1816','2022-02-18 18:16:30.687917'),(43,'blog','0014_item','2022-02-18 21:19:39.028074');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
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
