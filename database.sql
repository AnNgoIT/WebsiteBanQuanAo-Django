CREATE DATABASE  IF NOT EXISTS `shop_web` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shop_web`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: shop_web
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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add manufacturer',7,'add_manufacturer'),(26,'Can change manufacturer',7,'change_manufacturer'),(27,'Can delete manufacturer',7,'delete_manufacturer'),(28,'Can view manufacturer',7,'view_manufacturer'),(29,'Can add category',8,'add_category'),(30,'Can change category',8,'change_category'),(31,'Can delete category',8,'delete_category'),(32,'Can view category',8,'view_category'),(33,'Can add product',9,'add_product'),(34,'Can change product',9,'change_product'),(35,'Can delete product',9,'delete_product'),(36,'Can view product',9,'view_product'),(37,'Can add feedback',10,'add_feedback'),(38,'Can change feedback',10,'change_feedback'),(39,'Can delete feedback',10,'delete_feedback'),(40,'Can view feedback',10,'view_feedback'),(41,'Can add source',11,'add_source'),(42,'Can change source',11,'change_source'),(43,'Can delete source',11,'delete_source'),(44,'Can view source',11,'view_source'),(45,'Can add thumbnail',12,'add_thumbnail'),(46,'Can change thumbnail',12,'change_thumbnail'),(47,'Can delete thumbnail',12,'delete_thumbnail'),(48,'Can view thumbnail',12,'view_thumbnail'),(49,'Can add thumbnail dimensions',13,'add_thumbnaildimensions'),(50,'Can change thumbnail dimensions',13,'change_thumbnaildimensions'),(51,'Can delete thumbnail dimensions',13,'delete_thumbnaildimensions'),(52,'Can view thumbnail dimensions',13,'view_thumbnaildimensions'),(53,'Can add Password Reset Token',14,'add_resetpasswordtoken'),(54,'Can change Password Reset Token',14,'change_resetpasswordtoken'),(55,'Can delete Password Reset Token',14,'delete_resetpasswordtoken'),(56,'Can view Password Reset Token',14,'view_resetpasswordtoken'),(57,'Can add association',15,'add_association'),(58,'Can change association',15,'change_association'),(59,'Can delete association',15,'delete_association'),(60,'Can view association',15,'view_association'),(61,'Can add code',16,'add_code'),(62,'Can change code',16,'change_code'),(63,'Can delete code',16,'delete_code'),(64,'Can view code',16,'view_code'),(65,'Can add nonce',17,'add_nonce'),(66,'Can change nonce',17,'change_nonce'),(67,'Can delete nonce',17,'delete_nonce'),(68,'Can view nonce',17,'view_nonce'),(69,'Can add user social auth',18,'add_usersocialauth'),(70,'Can change user social auth',18,'change_usersocialauth'),(71,'Can delete user social auth',18,'delete_usersocialauth'),(72,'Can view user social auth',18,'view_usersocialauth'),(73,'Can add partial',19,'add_partial'),(74,'Can change partial',19,'change_partial'),(75,'Can delete partial',19,'delete_partial'),(76,'Can view partial',19,'view_partial'),(77,'Can add order',20,'add_order'),(78,'Can change order',20,'change_order'),(79,'Can delete order',20,'delete_order'),(80,'Can view order',20,'view_order'),(81,'Can add order item',21,'add_orderitem'),(82,'Can change order item',21,'change_orderitem'),(83,'Can delete order item',21,'delete_orderitem'),(84,'Can view order item',21,'view_orderitem');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_user`
--

DROP TABLE IF EXISTS `customer_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `full_name` varchar(30) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `avatar` varchar(100) NOT NULL,
  `is_shipper` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_user`
--

LOCK TABLES `customer_user` WRITE;
/*!40000 ALTER TABLE `customer_user` DISABLE KEYS */;
INSERT INTO `customer_user` VALUES (1,'pbkdf2_sha256$260000$B4xpOvp6AkaSxHj32BMVrW$SgddvinlN937dXABgwX0eGH8PQEceaf5+CFlvuCy+7s=','2022-11-13 15:10:10.864107',0,'quy20082002','','','yenanh@gmail.com',0,1,'2022-11-13 15:09:57.074914','',NULL,NULL,NULL,'',0),(2,'pbkdf2_sha256$260000$MH1NXAnuJGuCITieISv5vp$xD0Ot9JzK19g5eQjIqdFcvKdYmoONSGV1V4gRD5n87Q=','2022-11-13 15:15:23.407864',0,'yenanh','','','anh@gmail.com',0,1,'2022-11-13 15:15:13.275536','',NULL,NULL,NULL,'',0),(3,'pbkdf2_sha256$260000$0qDA7s4BJQi6YUHmPaw7jR$urp8E0waAKlZJnkv/dX1mf8n6x2CJJeJYsey8UoaRpA=','2022-11-13 15:17:48.774081',0,'thuclinh','','','linh@gmail.com',0,1,'2022-11-13 15:17:39.504041','',NULL,NULL,NULL,'',0),(4,'pbkdf2_sha256$260000$YeMFkkRT95o4hmhqhxvuGb$DY/XxiOBT3uGQ939uPo2JraqvcTjX/3+4K2MLNx76l4=','2022-11-13 15:20:31.630650',0,'diemquynh','','','diemquynh@gmail.com',0,1,'2022-11-13 15:20:22.963291','',NULL,NULL,NULL,'',0),(5,'pbkdf2_sha256$260000$yDKjHDBuk9iqHxiHhNSDY2$1PRs2i4RbgC82om4zD762bUElK0Y0sqCtxS9v6mPysc=','2022-11-13 15:24:01.973349',0,'nhuquynh','','','nhuquynh@gmail.com',0,1,'2022-11-13 15:23:53.433577','',NULL,NULL,NULL,'',0),(6,'pbkdf2_sha256$260000$AZzZrzjf8DuARD0hkoVV4U$GEPTTIfVGY5GJRWH8H9VIbRflIoIRvhAnTNFHdqc/fM=','2022-11-13 15:26:36.821073',0,'dan','','','dan@gmail.com',0,1,'2022-11-13 15:26:28.859150','',NULL,NULL,NULL,'',0),(7,'pbkdf2_sha256$260000$fYcz3Q8EA67NMU2pTflWap$ic6i8sVR3pyrjd/ZhUBqK1EzW84DyoZLKLoP/o41xNc=','2022-11-13 15:29:17.619781',0,'ly','','','ly@gmail.com',0,1,'2022-11-13 15:29:08.294178','',NULL,NULL,NULL,'',0),(8,'!kQddoTNRJcQS7vf5yuzzNjbRtuQ8D87RzCREc4Fp','2022-11-27 13:15:27.846212',0,'ducthonew','Đức Thọ','Ninh','ducthonew@gmail.com',0,1,'2022-11-27 10:29:16.943210','',NULL,NULL,NULL,'',1),(9,'!XsGZ2c7pnE5qFF12zo4yxKHE88ici6IYoRjo5f8y','2022-11-27 12:43:56.672091',0,'ductho23pro','Võ','Ngọc','ductho23pro@gmail.com',0,1,'2022-11-27 10:45:13.898706','',NULL,NULL,NULL,'',0),(10,'pbkdf2_sha256$320000$n4m9tJ6fYGE4Cq8ubb9qfG$uwywBLcOPp370RfOThZ5JBlJhjoAIzaxnLuk40/UbnI=','2022-11-27 13:46:46.186321',1,'ninhtho','','','tho@gmail.com',1,1,'2022-11-27 13:33:12.715337','',NULL,NULL,NULL,'',0),(11,'!wwufEg0CxJUUu8N3lW6QbcXghJJLJpnSqMZJiAI9','2023-11-09 14:22:16.302300',0,'nguyenthang13a32020','Thắng','Nguyễn','nguyenthang13a32020@gmail.com',0,1,'2023-11-09 14:12:25.293310','',NULL,NULL,NULL,'',0),(12,'pbkdf2_sha256$390000$hTtVfxZ4RIAiLzYRchcoGX$neugMHkgztI6QfDzLb8YyjyIALZgwwLpENeE/Ccp0f0=','2023-11-09 14:21:36.875874',1,'thang','','','thang@gmail.com',1,1,'2023-11-09 14:16:35.579273','',NULL,NULL,NULL,'',0),(13,'pbkdf2_sha256$390000$tY17w8uXGAkAQQsE4mCImx$Xd0TfPIgmgBEbcOkHkr97jWPhwg7gKu4Ajh21B73jNo=',NULL,1,'thang123','','','thang123@gmail.com',1,1,'2023-11-09 14:18:54.809384','',NULL,NULL,NULL,'',0),(14,'!F3pBDQlLximaoAhVyN2EzlVTGJzKPRjB8Efd8T5q','2023-11-09 14:25:29.345088',0,'NguynThang','Nguyễn','Thang','',0,1,'2023-11-09 14:25:29.307612','',NULL,NULL,NULL,'',0);
/*!40000 ALTER TABLE `customer_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_user_groups`
--

DROP TABLE IF EXISTS `customer_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_user_groups_user_id_group_id_71aeaf5a_uniq` (`user_id`,`group_id`),
  KEY `customer_user_groups_group_id_7d15206e_fk_auth_group_id` (`group_id`),
  CONSTRAINT `customer_user_groups_group_id_7d15206e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `customer_user_groups_user_id_d038c250_fk_customer_user_id` FOREIGN KEY (`user_id`) REFERENCES `customer_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_user_groups`
--

LOCK TABLES `customer_user_groups` WRITE;
/*!40000 ALTER TABLE `customer_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_user_user_permissions`
--

DROP TABLE IF EXISTS `customer_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_user_user_permi_user_id_permission_id_806fb87a_uniq` (`user_id`,`permission_id`),
  KEY `customer_user_user_p_permission_id_4bc8253e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `customer_user_user_p_permission_id_4bc8253e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `customer_user_user_p_user_id_71ea88a5_fk_customer_` FOREIGN KEY (`user_id`) REFERENCES `customer_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_user_user_permissions`
--

LOCK TABLES `customer_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `customer_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_customer_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_customer_user_id` FOREIGN KEY (`user_id`) REFERENCES `customer_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-11-09 14:21:49.981958','28','Order 28',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',20,12);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(6,'customer','user'),(14,'django_rest_passwordreset','resetpasswordtoken'),(11,'easy_thumbnails','source'),(12,'easy_thumbnails','thumbnail'),(13,'easy_thumbnails','thumbnaildimensions'),(10,'feedback','feedback'),(7,'manufacturer','manufacturer'),(20,'orders','order'),(21,'orders','orderitem'),(8,'product','category'),(9,'product','product'),(5,'sessions','session'),(15,'social_django','association'),(16,'social_django','code'),(17,'social_django','nonce'),(19,'social_django','partial'),(18,'social_django','usersocialauth');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-11-09 14:08:49.963430'),(2,'contenttypes','0002_remove_content_type_name','2023-11-09 14:08:50.018905'),(3,'auth','0001_initial','2023-11-09 14:08:50.180801'),(4,'auth','0002_alter_permission_name_max_length','2023-11-09 14:08:50.229718'),(5,'auth','0003_alter_user_email_max_length','2023-11-09 14:08:50.238770'),(6,'auth','0004_alter_user_username_opts','2023-11-09 14:08:50.246283'),(7,'auth','0005_alter_user_last_login_null','2023-11-09 14:08:50.252791'),(8,'auth','0006_require_contenttypes_0002','2023-11-09 14:08:50.260502'),(9,'auth','0007_alter_validators_add_error_messages','2023-11-09 14:08:50.269332'),(10,'auth','0008_alter_user_username_max_length','2023-11-09 14:08:50.277084'),(11,'auth','0009_alter_user_last_name_max_length','2023-11-09 14:08:50.282622'),(12,'auth','0010_alter_group_name_max_length','2023-11-09 14:08:50.298742'),(13,'auth','0011_update_proxy_permissions','2023-11-09 14:08:50.311802'),(14,'auth','0012_alter_user_first_name_max_length','2023-11-09 14:08:50.330939'),(15,'customer','0001_initial','2023-11-09 14:08:50.573314'),(16,'admin','0001_initial','2023-11-09 14:08:50.693572'),(17,'admin','0002_logentry_remove_auto_add','2023-11-09 14:08:50.699628'),(18,'admin','0003_logentry_add_action_flag_choices','2023-11-09 14:08:50.707836'),(19,'customer','0002_alter_user_full_name','2023-11-09 14:08:50.714296'),(20,'customer','0003_alter_user_options','2023-11-09 14:08:50.728843'),(21,'customer','0004_alter_user_options','2023-11-09 14:08:50.848077'),(22,'customer','0005_alter_user_options','2023-11-09 14:08:50.860677'),(23,'customer','0006_user_role','2023-11-09 14:08:50.949507'),(24,'customer','0007_remove_user_role_user_is_shipper','2023-11-09 14:08:51.057210'),(25,'django_rest_passwordreset','0001_initial','2023-11-09 14:08:51.110475'),(26,'django_rest_passwordreset','0002_pk_migration','2023-11-09 14:08:51.315728'),(27,'django_rest_passwordreset','0003_allow_blank_and_null_fields','2023-11-09 14:08:51.359180'),(28,'easy_thumbnails','0001_initial','2023-11-09 14:08:51.546827'),(29,'easy_thumbnails','0002_thumbnaildimensions','2023-11-09 14:08:51.600780'),(30,'feedback','0001_initial','2023-11-09 14:08:51.626012'),(31,'manufacturer','0001_initial','2023-11-09 14:08:51.666462'),(32,'product','0001_initial','2023-11-09 14:08:51.826342'),(33,'product','0002_alter_product_options','2023-11-09 14:08:51.831873'),(34,'orders','0001_initial','2023-11-09 14:08:52.023908'),(35,'orders','0002_alter_order_options_alter_order_status','2023-11-09 14:08:52.037573'),(36,'orders','0003_alter_order_options','2023-11-09 14:08:52.053179'),(37,'orders','0004_alter_order_status','2023-11-09 14:08:52.078541'),(38,'product','0003_alter_category_options','2023-11-09 14:08:52.097765'),(39,'sessions','0001_initial','2023-11-09 14:08:52.174133'),(40,'default','0001_initial','2023-11-09 14:08:52.377805'),(41,'social_auth','0001_initial','2023-11-09 14:08:52.380453'),(42,'default','0002_add_related_name','2023-11-09 14:08:52.392873'),(43,'social_auth','0002_add_related_name','2023-11-09 14:08:52.396873'),(44,'default','0003_alter_email_max_length','2023-11-09 14:08:52.411548'),(45,'social_auth','0003_alter_email_max_length','2023-11-09 14:08:52.414149'),(46,'default','0004_auto_20160423_0400','2023-11-09 14:08:52.428688'),(47,'social_auth','0004_auto_20160423_0400','2023-11-09 14:08:52.440799'),(48,'social_auth','0005_auto_20160727_2333','2023-11-09 14:08:52.498417'),(49,'social_django','0006_partial','2023-11-09 14:08:52.565418'),(50,'social_django','0007_code_timestamp','2023-11-09 14:08:52.631432'),(51,'social_django','0008_partial_timestamp','2023-11-09 14:08:52.712691'),(52,'social_django','0009_auto_20191118_0520','2023-11-09 14:08:52.847590'),(53,'social_django','0010_uid_db_index','2023-11-09 14:08:52.882045'),(54,'social_django','0005_auto_20160727_2333','2023-11-09 14:08:52.892580'),(55,'social_django','0002_add_related_name','2023-11-09 14:08:52.895581'),(56,'social_django','0003_alter_email_max_length','2023-11-09 14:08:52.897580'),(57,'social_django','0004_auto_20160423_0400','2023-11-09 14:08:52.898578'),(58,'social_django','0001_initial','2023-11-09 14:08:52.901654');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_rest_passwordreset_resetpasswordtoken`
--

DROP TABLE IF EXISTS `django_rest_passwordreset_resetpasswordtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_rest_passwordreset_resetpasswordtoken` (
  `created_at` datetime(6) NOT NULL,
  `key` varchar(64) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `user_agent` varchar(256) NOT NULL,
  `user_id` bigint NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_rest_passwordreset_resetpasswordtoken_key_f1b65873_uniq` (`key`),
  KEY `django_rest_password_user_id_e8015b11_fk_customer_` (`user_id`),
  CONSTRAINT `django_rest_password_user_id_e8015b11_fk_customer_` FOREIGN KEY (`user_id`) REFERENCES `customer_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_rest_passwordreset_resetpasswordtoken`
--

LOCK TABLES `django_rest_passwordreset_resetpasswordtoken` WRITE;
/*!40000 ALTER TABLE `django_rest_passwordreset_resetpasswordtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_rest_passwordreset_resetpasswordtoken` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `django_session` VALUES ('bfab8dvjub5f6nrozg6oqjhi68lt4qen','.eJxVjsFqwzAQRP9F52AsWZYt35pCLiFpCbgtuYiVtKpFHKtYyink36sUB5rbMjvzZq7EwJxId72tiIoYow-T8pNPKvkzxgTnH0U6KqSsKylpU1DWCkn5ijgwqEM4qWxKSDpyaBEOY9V_rnfb_WsPrHoHPNqvPfb8uGs_SG6ASxrUJeKsvM0Ryp9FDeaE0_0Tg_EwKhNmLBY1Fo_KYrMcby85yp4ZA8ThjhagrXRGm8o0thSOlyBEreusWFY7kNqVumG8adu6tJQj485JSkvrmBQmQ5cNf-gRYlJj-PbTv5GPPeT2C3LFbKA:1r15yL:307RpDxo1cqLTuNDIKMoJ2_jgga3j9CiEKRvWyNxWuY','2023-11-23 14:25:29.445153');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_source`
--

DROP TABLE IF EXISTS `easy_thumbnails_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_thumbnails_source` (
  `id` int NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_source_storage_hash_name_481ce32d_uniq` (`storage_hash`,`name`),
  KEY `easy_thumbnails_source_storage_hash_946cbcc9` (`storage_hash`),
  KEY `easy_thumbnails_source_name_5fe0edc6` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_source`
--

LOCK TABLES `easy_thumbnails_source` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnail`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `source_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq` (`storage_hash`,`name`,`source_id`),
  KEY `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` (`source_id`),
  KEY `easy_thumbnails_thumbnail_storage_hash_f1435f49` (`storage_hash`),
  KEY `easy_thumbnails_thumbnail_name_b5882c31` (`name`),
  CONSTRAINT `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnail`
--

LOCK TABLES `easy_thumbnails_thumbnail` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnaildimensions`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnaildimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_thumbnails_thumbnaildimensions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `thumbnail_id` int NOT NULL,
  `width` int unsigned DEFAULT NULL,
  `height` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `thumbnail_id` (`thumbnail_id`),
  CONSTRAINT `easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`),
  CONSTRAINT `easy_thumbnails_thumbnaildimensions_chk_1` CHECK ((`width` >= 0)),
  CONSTRAINT `easy_thumbnails_thumbnaildimensions_chk_2` CHECK ((`height` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnaildimensions`
--

LOCK TABLES `easy_thumbnails_thumbnaildimensions` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback_feedback`
--

DROP TABLE IF EXISTS `feedback_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback_feedback` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `subject_name` varchar(30) NOT NULL,
  `contents` varchar(1000) NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback_feedback`
--

LOCK TABLES `feedback_feedback` WRITE;
/*!40000 ALTER TABLE `feedback_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer_manufacturer`
--

DROP TABLE IF EXISTS `manufacturer_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturer_manufacturer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer_manufacturer`
--

LOCK TABLES `manufacturer_manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer_manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer_manufacturer` VALUES (4,'Zanzea','12344321','Lok Shun Path Barbecue Area, Lok Shun Path, Fo Tan, Hồng Kông','images/manufacturers/Zanzea.png',0),(5,'Afeg','9819995634','AFEG, No. 201,Raj Mandir Apartment, Mira Bhayander Road, Gita Nagar, Mira Road East, Mira Bhayandar,','images/manufacturers/Afeg.jpg',0),(6,'Xiaozhainv','0967122211','Lok Shun Path, Fo Tan, Hồng Kông','images/manufacturers/xiaozai.jpg',0),(7,'Ammin','0987421111','òa nhà Melody, N1 Điện Biên Phủ, Phường 25, Quận Bình Thạnh, Tp.HCM','images/manufacturers/ammin.jpg',0),(8,'Vonda','094111232','A-33 Sector 83, Phase II Noida Gautam Buddha Nagar UP 201305 IN','images/manufacturers/vonda.jpg',0),(9,'Sero','09831265742','64-80 Hoàng Xuân Nhị, Phú Trung, Tân Phú, Thành phố Hồ Chí Minh','images/manufacturers/sezo.jpg',0),(10,'Tingoan','0984054291','62 Nguyễn Trãi Quận 1 TP.Hồ Chí Minh','images/manufacturers/tingoan.jpg',0),(11,'Owen','0981235671','Số 380B Hai Bà Trưng, P. Tân Định, Quận 1, TP. HCM','images/manufacturers/owen.jpg',0),(12,'Mk Clever','0308808576','Tòa nhà Saigon Centre – Tháp 2, 67 Lê Lợi, Phường Bến Nghé, Quận 1, Tp. Hồ Chí Minh, Việt Nam.','images/manufacturers/mk_clever.jpeg',0),(13,'Vuug','0971245631','467 Điện Biên Phủ, Phường 3, Quận 3, Thành phố Hồ Chí Minh 700000','images/manufacturers/vuug.jpeg',0),(14,'Capman','0774971020','KDC City LAND PRAKILL Phường 10, Gò Vấp , TP. Hồ Chí Minh','images/manufacturers/capman.png',0),(15,'4 Men','0868444644','904C Hà Hoàng Hổ, P. Mỹ Xuyên, Tp. Long Xuyên, An Giang','images/manufacturers/4_men.jpeg',0),(16,'Gap','18004277895','San Francisco, Califoria','images/manufacturers/gap.jpg',0),(17,'H&M','09126374612','Thụy Điển','images/manufacturers/hm.png',0),(18,'Zara','0982176252','Tây Ban Nha','images/manufacturers/zara.png',0);
/*!40000 ALTER TABLE `manufacturer_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_order`
--

DROP TABLE IF EXISTS `orders_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `pin_code` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `status` varchar(50) NOT NULL,
  `total_price` double NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_order_user_id_e9b59eb1_fk_customer_user_id` (`user_id`),
  CONSTRAINT `orders_order_user_id_e9b59eb1_fk_customer_user_id` FOREIGN KEY (`user_id`) REFERENCES `customer_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_order`
--

LOCK TABLES `orders_order` WRITE;
/*!40000 ALTER TABLE `orders_order` DISABLE KEYS */;
INSERT INTO `orders_order` VALUES (1,'Lưu Xuân Ngọc','Ninh Thuận','(84-8) 3843 3167 ','7000','Phan Rang',0,'2022-11-13 15:11:52.554187','2022-11-13 15:11:52.554187','Giao hàng thành công',180000,1),(2,'Ngọc Thắng','Ninh Thuận','(04) 37734322 ','7000','Phan Rang',0,'2022-11-13 15:12:42.813152','2022-11-13 15:12:42.813152','Giao hàng thành công',381000,1),(3,'Phương Tuấn','Ninh Thuận','(84-650) 3 848 963 ','7000','Phan Rang',0,'2022-11-13 15:13:03.808528','2022-11-13 15:13:03.808528','Giao hàng thành công',346000,1),(4,'Văn Hải','Bình Thuận','(84-66) 3 822 478 ','8000','Phan Thiết',0,'2022-11-13 15:16:06.823933','2022-11-13 15:16:06.823933','Giao hàng thành công',375000,2),(5,'Xuân Như','Bình Thuận','(84-4) 38 812 152 ','8000','Phan Thiết',0,'2022-11-13 15:16:40.673868','2022-11-13 15:16:40.673868','Giao hàng thành công',329000,2),(6,'Đình Vũ','Bình Thuận','(84-8) 2509395 ','8000','Phan Thiết',0,'2022-11-13 15:17:06.723742','2022-11-13 15:17:06.723742','Giao hàng thành công',389000,2),(7,'An Nhiên','Hồ Chí Minh','0689426781','9000','Hồ Chí Minh',0,'2022-11-13 15:18:45.893759','2022-11-13 15:18:45.893759','Giao hàng thành công',266000,3),(8,'Thị Thảo','Hồ Chí Minh','0978563710','9000','Hồ Chí Minh',0,'2022-11-13 15:19:11.193455','2022-11-13 15:19:11.193455','Giao hàng thành công',304000,3),(9,'Thiên An','Hồ Chí Minh','0234569745','9000','Hồ Chí Minh',0,'2022-11-13 15:19:49.168555','2022-11-13 15:19:49.168555','Giao hàng thành công',351000,3),(10,'Quốc Thiên','Ninh Thuận','0311821586','7000','Phan Rang',0,'2022-11-13 15:20:50.963020','2022-11-13 15:20:50.963020','Giao hàng thành công',393000,4),(11,'Nguyễn Quốc Thi','Ninh Thuận','38 35482 ','7000','Phan Rang',0,'2022-11-13 15:21:19.276633','2022-11-13 15:21:19.276633','Giao hàng thành công',546000,4),(12,'Nguyễn Xuân Vũ','Ninh Thuận','(08) 39690215 ','7000','Phan Rang',0,'2022-11-13 15:22:28.733697','2022-11-13 15:22:28.733697','Giao hàng thành công',284000,4),(13,'Trần Thanh Thảo','Ninh Thuận','(84-8) 3842 0572 ','7000','Phan Rang',0,'2022-11-13 15:22:49.132045','2022-11-13 15:22:49.132045','Giao hàng thành công',234000,4),(14,'Võ Văn Hân','Ninh Thuận','33 861 770 ','7000','Phan Rang',0,'2022-11-13 15:23:11.123283','2022-11-13 15:23:11.123283','Giao hàng thành công',367000,4),(15,'Ngô Quốc Thái','Ninh Thuận','38418996 ','7000','Phan Rang',0,'2022-11-13 15:24:27.810266','2022-11-13 15:24:27.810266','Giao hàng thành công',915000,5),(16,'Văn Dũng','Ninh Thuận',' 3 861 339 ','7000','Phan Rang',0,'2022-11-13 15:24:58.323902','2022-11-13 15:24:58.323902','Giao hàng thành công',587000,5),(17,'Trần Đức','Ninh Thuận','3848 9610','7000','Phan Rang',0,'2022-11-13 15:25:49.483007','2022-11-13 15:25:49.483007','Giao hàng thành công',720000,5),(18,'Văn Tài','Đăk Nông','3 861 452 ','2000','Gia Nghĩa',0,'2022-11-13 15:27:49.519631','2022-11-13 15:27:49.519631','Giao hàng thành công',918000,6),(19,'Thị Nguyệt','Đăk Nông','672974 ','2000','Gia Nghĩa',0,'2022-11-13 15:28:13.836180','2022-11-13 15:28:13.836180','Giao hàng thành công',1077000,6),(20,'Út Nhâm','Đăk Nông','(84-62) 3834651 ','2000','Gia Nghĩa',0,'2022-11-13 15:28:33.960023','2022-11-13 15:28:33.960023','Giao hàng thành công',120000,6),(21,'Vũ Lệ','Khánh Hòa','(04) 38359410 ','3000','Gia Nghĩa',0,'2022-11-13 15:29:50.788594','2022-11-13 15:29:50.788594','Giao hàng thành công',136000,7),(22,'Xuân Hoa','Khánh Hòa','(84-511) 684139 ','3000','Gia Nghĩa',0,'2022-11-13 15:30:04.836374','2022-11-13 15:30:04.836374','Giao hàng thành công',324000,7),(23,'Võ Thị Thu Nguyệt','Khánh Hòa','84-8-2944904 ','3000','Gia Nghĩa',0,'2022-11-13 15:30:19.598937','2022-11-13 15:30:19.598937','Giao hàng thành công',138000,7),(24,'Quốc Bảo','303 Phạm Văn Đồng - Phường 1 - Q.Gò Vấp','0918276484','70000','Hồ Chí Minh',0,'2022-11-27 10:30:18.766511','2022-11-27 10:30:18.767510','Đang chờ xác nhận',319000,8),(25,'Võ Ngọc','228 đường số 6, Linh Chiểu-Thủ Đức','09786543120','70000','Hồ Chí Minh',0,'2022-11-27 10:47:28.179166','2022-11-27 10:47:28.179166','Đang chờ xác nhận',147000,9),(26,'Văn Khang','123 Nguyễn Văn Linh, Quận 7','0957902100','70000','Hồ Chí Minh',0,'2022-11-27 12:51:05.698980','2022-11-27 12:51:05.698980','Đang chờ xác nhận',180000,9),(27,'Trần Ngọc','118 Điện Biên Phủ, Bình Thạnh','0357129876','70000','Hồ Chí Minh',0,'2022-11-27 13:04:50.536049','2022-11-27 13:04:50.536049','Đang chờ xác nhận',754000,9),(28,'Nguyễn Ngọc Thắng','3/32A Quận 9','0917238876','3000','TPHCM',0,'2023-11-09 14:13:22.754845','2023-11-09 14:21:49.967092','Đã xác nhận đơn hàng',858000,11);
/*!40000 ALTER TABLE `orders_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_orderitem`
--

DROP TABLE IF EXISTS `orders_orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_orderitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int unsigned NOT NULL,
  `total` double NOT NULL,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_orderitem_order_id_fe61a34d_fk_orders_order_id` (`order_id`),
  KEY `orders_orderitem_product_id_afe4254a_fk_product_product_id` (`product_id`),
  CONSTRAINT `orders_orderitem_order_id_fe61a34d_fk_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders_order` (`id`),
  CONSTRAINT `orders_orderitem_product_id_afe4254a_fk_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`),
  CONSTRAINT `orders_orderitem_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_orderitem`
--

LOCK TABLES `orders_orderitem` WRITE;
/*!40000 ALTER TABLE `orders_orderitem` DISABLE KEYS */;
INSERT INTO `orders_orderitem` VALUES (1,1,180000,1,4),(2,1,229000,2,8),(3,1,152000,2,10),(4,1,133000,3,9),(5,1,213000,3,13),(6,1,168000,4,14),(7,1,207000,4,22),(8,1,231000,5,16),(9,1,98000,5,23),(10,1,180000,6,4),(11,1,209000,6,24),(12,1,171000,7,7),(13,1,95000,7,65),(14,1,180000,8,4),(15,1,124000,8,6),(16,1,138000,9,5),(17,1,213000,9,13),(18,1,180000,10,4),(19,1,213000,10,13),(20,1,239000,11,15),(21,1,159000,11,17),(22,1,148000,11,18),(23,1,148000,12,18),(24,1,136000,12,21),(25,1,136000,13,21),(26,1,98000,13,23),(27,1,180000,14,4),(28,1,187000,14,20),(29,1,138000,15,5),(30,1,207000,15,22),(31,1,570000,15,40),(32,1,148000,16,18),(33,1,319000,16,52),(34,1,120000,16,56),(35,1,180000,17,4),(36,1,138000,17,5),(37,1,124000,17,6),(38,1,133000,17,9),(39,1,145000,17,71),(40,1,213000,18,13),(41,1,425000,18,48),(42,1,280000,18,57),(43,1,138000,19,5),(44,1,570000,19,40),(45,1,369000,19,49),(46,1,120000,20,56),(47,1,136000,21,21),(48,1,324000,22,41),(49,1,138000,23,5),(50,1,319000,24,51),(51,1,147000,25,11),(52,1,180000,26,4),(53,2,350000,27,47),(54,1,404000,27,59),(55,4,720000,28,4),(56,1,138000,28,5);
/*!40000 ALTER TABLE `orders_orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,'Thời trang Nữ'),(2,'Thời trang Nam'),(3,'Thời trang trẻ em');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_product`
--

DROP TABLE IF EXISTS `product_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `image` varchar(100) NOT NULL,
  `size` varchar(6) NOT NULL,
  `material` varchar(20) NOT NULL,
  `sleeve_length` varchar(20) NOT NULL,
  `season` varchar(20) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `status` int NOT NULL,
  `category_id_id` bigint NOT NULL,
  `manufacturer_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_product_category_id_id_c3f31c00_fk_product_category_id` (`category_id_id`),
  KEY `product_product_manufacturer_id_id_a9b6ff2a_fk_manufactu` (`manufacturer_id_id`),
  CONSTRAINT `product_product_category_id_id_c3f31c00_fk_product_category_id` FOREIGN KEY (`category_id_id`) REFERENCES `product_category` (`id`),
  CONSTRAINT `product_product_manufacturer_id_id_a9b6ff2a_fk_manufactu` FOREIGN KEY (`manufacturer_id_id`) REFERENCES `manufacturer_manufacturer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_product`
--

LOCK TABLES `product_product` WRITE;
/*!40000 ALTER TABLE `product_product` DISABLE KEYS */;
INSERT INTO `product_product` VALUES (4,'ZANZEA Áo Hoa Thụng Thường Ngày Diềm Xếp Nếp Cổ Tròn Tay Dài Cho Nữ Áo Kiểu Số 1',180000,'images/products/zanzea_áo_hoa_thụng_thường_oDSlSxY.jpg','','','','','Chất liệu: 100% Rayon Chiều dài tay áo: dài tay Đường viền cổ áo: O-Cổ Hoạ tiết: in ấn, hoa Độ dày: mỏng Trang trí: nút phía trước Đặc điểm: viền nhún Phong cách: thoải mái, Bohemian, retro, Châu Âu, váy hồi giáo abaya kaftan Mùa: Mùa xuân, mùa hè, mùa thu Nhân dịp: gia đình, kỳ nghỉ, việc làm',0,1,4),(5,'ZANZEA Áo Sơ Mi Công Sở In Hình Cho Nữ Áo Thường Nhật Dáng Rộng Tay Phồng Áo Cánh',138000,'images/products/zanzea_Áo_sơ_mi_công_sở.jpg','','','','','Chất liệu: 100% Polyester Cắt: khớp nối Cổ áo: Cổ tròn Kiểu tay áo: Ống tay phồng Chiều dài tay áo: Tay áo dài Trang trí: in ấn Đặc điểm: Ghép nối Họa tiết: động vật Độ dày: Tiêu chuẩn Phong cách: thường ngày, thời trang đường phố, Preppy Mùa: Xuân, Thu, Đông Dịp lễ: hàng ngày, văn phòng, kỳ nghỉ, thường ngày, đi tiệc cưới',0,1,4),(6,'ZANZEA Áo Cotton Cổ Điển Cho Nữ Áo Thun Cổ Chữ V Dáng Rộng Vừa Vặn Áo Kẻ Sọc',124000,'images/products/zanzea_áo_cotton_cổ_điển.jpg','','','','','Chất liệu: 65% Cotton + 35% rayon Cắt: rộng Cổ áo: Cổ tròn Kiểu tay áo: Thông thường Chiều dài tay áo: tay áo lửng Trang trí: in ấn Đặc điểm: Ghép nối Họa tiết: kẻ sọc Độ dày: Tiêu chuẩn Phong cách: thường ngày, thời trang đường phố, Preppy, đi lại, Mùa: Xuân, Hạ, Thu Dịp lễ: hàng ngày, tiệc tùng, văn phòng, kỳ nghỉ, thường ngày, đám cưới, du lịch',0,1,4),(7,'ZANZEA Áo Trơn Sang Trọng Phong Cách Hàn Quốc Cho Nữ Áo Cánh Cổ Tròn Tay Lỡ Phồng',171000,'images/products/zanzea_áo_trơn_sang_trọng.jpg','','','','','Chất liệu: Cotton Chiều dài tay áo: tay áo lửng Cổ áo: Cổ tròn Hoạ tiết: Màu trơn Chuỗi khóa: nút ở mặt sau Độ dày: mỏng Các tính năng: Ống tay phồng, băng quấn đàn hồi Phong cách: thoải mái, Bohemian, retro, Châu Âu, rộng rãi, phù hợp với mọi loại Mùa: Xuân, Hạ, Thu Dịp lễ: Gia đình, tiệc tùng, bãi biển, đám cưới, kỳ nghỉ, việc làm',0,1,4),(8,'ZANZEA Áo Sơ Mi Nữ Tay Ngắn Bằng Cotton Mùa Hè Có Khuy Ren Có Lỗ Xỏ Lỗ Áo Kiểu Trơn',229000,'images/products/zanzea_Áo_sơ_mi_trắng_nữ.jpg','','','','','Chất liệu: Cotton Chiều dài Tay áo: Tay ngắn Cổ áo: Cổ tròn Hoạ tiết: Màu trơn Chuỗi khóa: cài cúc phía trước Độ dày: mỏng Đặc điểm: bông nguyên chất, cổ áo búp bê Phong cách: thoải mái, Bohemian, retro, Châu Âu, rộng rãi, phù hợp với mọi loại Mùa: Xuân, Hạ, Thu Dịp lễ: Gia đình, tiệc tùng, bãi biển, đám cưới, ngày lễ',0,1,4),(9,'ZANZEA Áo Cánh In Họa Tiết Cổ Điển Mùa Hè Cho Nữ Áo Tay Lửng Áo Thun Cổ Tròn',133000,'images/products/zanzea_Áo_cánh_in_họa_tiết.jpg','','','','','Chất liệu: 65% Cotton + 35% rayon Chiều dài tay áo: tay lửng Cổ áo: Cổ tròn Họa tiết: in hình học Độ dày: mỏng Đặc điểm: tay áo cánh dơi Phong cách: thoải mái, Bohemian, retro, Châu Âu, quốc gia, phù hợp với mọi loại Mùa: Mùa xuân, mùa hè, mùa thu, mùa đông Dịp lễ: Gia đình, tiệc tùng, bãi biển, đám cưới, ngày lễ',0,1,4),(10,'ZANZEA Áo Nữ In Hoa Cổ Chữ V Tay Áo Mùa Hè 3/4 Áo Chui Đầu Áo Cánh',152000,'images/products/zanzea_áo_in_hoa_cổ_chữ_V.jpg','','','','','Chất liệu: Cotton  Chiều dài tay áo: 3/4 Tay áo Đường viền cổ áo: V-Cổ Họa tiết: in hoa Chuỗi khóa: Nút xuống phía trước, còng nút Độ dày: mỏng Trang trí: túi hai bên Đặc điểm: cotton nguyên chất Phong cách: thoải mái, Bohemian, retro, Châu Âu, quốc gia, phù hợp với mọi loại Mùa: Mùa xuân, mùa hè, mùa thu, mùa đông Dịp lễ: Gia đình, tiệc tùng, bãi biển, đám cưới, ngày lễ',0,1,4),(11,'Fancystyle ZANZEA Áo Sơ Mi Nữ Tay Áo Lửng Chạm Khoét Áo Áo Sơ Mi Cổ Rộng Giản Dị Plus',147000,'images/products/zanaea_Áo_sơ_mi_tay_lửng.jpg','','','','','Chất liệu: Vải bông  Gói bao gồm: 1 áo Loại vừa vặn: rộng Cổ áo: Cổ chữ O Kiểu tay áo: Thường xuyên Chiều dài tay áo: tay áo lửng Tính năng: ghép Hoa văn: Màu trơn Độ dày: Tiêu chuẩn Phong cách: giản dị, dạo phố Mùa: Mùa xuân, mùa hè, mùa thu, mùa đông Dịp: Hàng ngày',0,1,4),(12,'AFEG Áo Cánh Ngắn Tay Vải Voan Kim Cương Đính Cườm Dáng Rộng Thời Trang Cổ Tròn Phong Cách Hàn Quốc Mới Cho Nữ',280000,'images/products/afeg_áo_cánh_ngắn_tay.jpg','','','','','Chất Liệu: Chiffon Dịp:Thường ngày Kiểu: Cổ Áo Cổ tròn Kiểu Hoa VănTrơn Phong Cách: Thời Trang Tiếng HànTay Áo Tay áo cài nút,Tay ngắn Nhóm Kích Thước: Bình thường',0,1,5),(13,'Áo Voan Dài Tay AFEG Cho Nữ, Chất Liệu Chiffon, Có Nơ, Phong Cách Hàn Quốc',213000,'images/products/afeg_áo_voan_dài_tay.jpg','','','','','Thương hiệu: AFEG Chất Liệu: Chiffon Kiểu Hoa Văn Trơn Dịp: Thường ngày Tay Áo: Tay dài',0,1,5),(14,'AFEG Áo Cánh Thanh Lịch Ngắn Tay In Hình Phong Cách Hàn Quốc Cho Nữ, Đối Với Phụ Nữ',168000,'images/products/afeg_áo_cánh_thanh_lịch.jpg','','','','','Thương hiệu:AFEG Chất Liệu: Polyester Tay Áo: Tay ngắn Dịp: Thường ngày',0,1,5),(15,'AFEG Áo Cánh Thanh Lịch Thêu Cổ Chữ V Ngắn Tay Phong Cách Hàn Quốc Cho Nữ, Dành Cho Nữ',239000,'images/products/afeg_áo_cánh_thanh_lịch_cổ_v.jpg','','','','','Thương hiệu: AFEG Chất Liệu: Cotton Kiểu Cổ Áo: V-NECK Tay Áo: Tay ngắn Dịp: Thường ngày Kiểu Hoa Văn: Trơn',0,1,5),(16,'AFEG Áo Cánh Khí Chất Thanh Lịch Dài Tay Cổ Chữ V Màu Đen Và Trắng Phong Cách Mới, Đối Với Phụ Nữ',231000,'images/products/afeg_áo_cánh_ngầu.jpg','','','','','Thương hiệu: AFEG Chất Liệu: Chiffon Kiểu Cổ Áo: V-NECK Dịp: Thường ngày Tay Áo: Tay dài',0,1,5),(17,'Xiaozhainv Áo Sơ Mi Dài Tay Có Ve Áo Nhung Kẻ Phiên Bản Hàn Quốc Có Túi Cho Nữ',159000,'images/products/xiao_áo_sơ_mi_dài_tay.png','','','','','Chất liệu: vải nhung Kích thước: Một cỡ Phong cách: Hàn Quốc Hoạ tiết: trơn Phân loại màu: đen, xám, xanh dương Cổ áo: ve áo Tay áo: dài tay Chiều dài: Trung bình Quần áo vừa vặn: Thông thường Thích hợp cho các hoạt động: Giải trí, họp mặt gia đình, tiệc tùng, đi bộ',0,1,6),(18,'Xiaozhainv Áo Sơ Mi Nữ Tay Dài Ve Áo Đơn Hàng Kẻ Sọc Hàn Quốc',148000,'images/products/xiao_áo_sơ_mi_nữ_tay_dài.jpg','','','','','Chất liệu: Polyester Kích thước: M L XL 2XL 3XL 4XL Phong cách: Hàn Quốc Hoạ tiết: sọc Danh mục màu: Trắng Kiểu cổ áo: Ve áo Tay áo: Tay áo dài Chiều dài: Chiều dài trung bình Loại phiên bản quần áo: rộng Các hoạt động phù hợp: Giải trí, tụ họp gia đình, tiệc tùng, đi bộ',0,1,6),(19,'Xiaozhainv Áo Sơ Mi Nữ Ngắn Tay Dệt Kim Ngắn In Hình Tình Yêu Kẻ Sọc Thời Trang',104000,'images/products/xiao_áo_sơ_mi_nữ_ngắn_tay.jpg','','','','','Chất liệu: dệt kim Kích thước: Một cỡ Phong cách: Hàn Quốc Hoạ tiết: sọc Loại màu: xanh lá Kiểu cổ áo: Cổ tròn Chiều dài Tay áo: ngắn tay Chiều dài: Ngắn Loại phiên bản quần áo: ôm sát Các hoạt động phù hợp: Giải trí, họp mặt gia đình, tiệc tùng, đi dạo',0,1,6),(20,'Xiaozhainv Áo Sơ Mi Ngắn Tay Kẻ Sọc Dáng Rộng Retro Phong Cách Hàn Quốc Cho Nữ',187000,'images/products/xiao_áo_sơ_mi_kẻ_sọc.jpg','','','','','Chất liệu: Cotton Polyester Kích thước: Một cỡ Phong cách: phiên bản Hàn Quốc Hoạ tiết: sọc Loại màu: mơ, Xám Đường viền cổ áo: Ve Áo Tay áo: ngắn tay Chiều dài: Trung bình Quần áo vừa vặn: Thông thường Thích hợp cho các hoạt động: Giải trí, họp mặt gia đình, tiệc tùng, đi bộ',0,1,6),(21,'Xiaozhainv Áo Kiểu Nữ Retro Hàn Quốc Áo Sơ Mi Dài Tay Dáng Rộng Dễ Phối',136000,'images/products/xiao_sơ_mi_nam_xanh.jpg','','','','','Kích thước: Một cỡ Phong cách: Hàn Quốc Phân loại màu: Màu xanh lá cây đậm, Xám nhạt, xanh nhạt, trắng, hồng, xanh nước biển, lục lam, đen Kiểu tay áo: Thông thường Chiều dài tay áo: Tay áo dài Độ dài: thường xuyên Kiểu phiên bản quần áo: rộng',0,2,6),(22,'Xiaozhainv Áo Sơ Mi Dài Tay Một Hàng Khuy Kẻ Sọc Retro Phong Cách Hàn Quốc Cho Nữ',207000,'images/products/xiao_sơ_mi_dài_tay_1_hàng_khuy.jpg','','','','','Chất liệu: Cotton Polyester Kích thước: Một cỡ Phong cách: Hàn Quốc Hoạ tiết: sọc Loại màu: xanh dương Đường viền cổ áo: Ve Áo  Tay áo: dài tay Chiều dài: Trung bình và dài Quần áo vừa vặn: rộng Thích hợp cho các hoạt động: Ngủ, giải trí, họp mặt gia đình, tiệc tùng, đi bộ',0,1,6),(23,'Xiaozhainv Áo Dệt Kim Ngắn Tay Cổ Polo Thêu Chữ Cái Dáng Ôm Phong Cách Hàn Quốc Cho Nữ',98000,'images/products/xiao_áo_diệt_kim_ngắn_tay.jpg','','','','','Chất liệu: dệt kim Kích thước: Một cỡ Phong cách: phiên bản Hàn Quốc Họa tiết: thêu Loại màu: trắng, xám, đen Đường viền cổ áo: Ve Áo Tay áo: ngắn tay Chiều dài: Trung bình Quần áo vừa vặn: Thông thường Thích hợp cho các hoạt động: Giải trí, họp mặt gia đình, tiệc tùng, đi bộ,',0,1,6),(24,'Áo Sơ Mi AMMIN Thêu Hoa Cho Nữ, Áo Voan Thêu Hoa, Tay Bồng, 7 Điểm, Thời Trang Hàng Đầu',209000,'images/products/ammin_sơ_mi_thiêu_hoa.jpg','','','','','Thương hiệu: AMMIN Chất Liệu: Chiffon Kiểu Cổ Áo: Cổ tròn Phong Cách Thời Trang: Hàn Kiểu Áo: Áo bèo nhún Dịp: Thường ngày Kiểu Hoa Văn: Kẻ sọc Tay Áo: Da PU,Tay dài Nhóm Kích Thước: Bình thường',0,1,7),(25,'Áo AMMIN Áo Voan Kẻ Ca Rô Tay Ngắn Cạp Cao Xếp Ly Cổ Chữ V Phong Cách Mới 2021',193414,'images/products/ammin_áo_voan_kẻ_caro.jpg','','','','','Thương hiệu:	AMMIN Dịp	Thường ngày Kiểu Cổ Áo	V-NECK Kiểu Hoa Văn	Trơn Tay Áo	Da PU,Tay ngắn Kho hàng	Quốc tế',0,1,7),(26,'AMMIN Áo Cánh Thanh Lịch Tay Phồng Nhỏ Cổ Tròn Kiểu Pháp Cổ Điển Phong Cách Retro Mới 2021',176000,'images/products/ammin_áo_cánh_thanh_lịch.jpg','','','','','Thương hiệu	AMMIN  Chất Liệu	Chiffon Dịp	Thường ngày Kiểu Cổ Áo	Cổ Tròn Mùa	Summer Xu Hướng Nữ	Cơ bản Top Type	Áo sơ mi Tay Áo	Tay ngắn,Tay ngắn Năm sản xuất	2021 Kiểu Hoa Văn	Embroidery',0,1,7),(27,'AMMIN Áo Cổ Búp Bê 2021 Áo Voan Thiết Kế Dáng Ôm',238000,'images/products/ammin_áo_cổ_búp_bê.jpg','','','','','Thương hiệu	AMMIN Chất Liệ  Chiffon Kiểu Hoa Văn	Họa tiết patchwork Phong Cách Thời Trang	Thường ngày Kiểu Áo	Áo nhún Tay Áo	Da PU Nhóm Kích Thước	Bình thường Kiểu Cổ Áo	Cổ tròn',0,1,7),(28,'MASHYCHIC VONDA Áo Sơ Mi Thường Ngày Cổ Tròn Hàn Quốc Cho Nữ Áo Trùm Hông Tay Phồng Áo Chui Đầu Rộng Thùng Thình Ngoại Cỡ',191000,'images/products/vonda_áo_sơ_mi_thường_ngày.jpg','','','','','Chất liệu: 80% polyester + 20% Cotton  Màu sắc: Đen, Trắng, Kaki  Tay áo: tay lỡ 3/4  Hoạ tiết: trơn  Tính năng: Xếp Nếp  Phong cách: thoải mái, thoải mái, kỳ nghỉ, Châu Âu, hàng ngày, thời trang',0,1,8),(29,'Áo Nữ VONDA Áo Chui Đầu Thường Ngày Mùa Hè Áo Cánh Tay Lửng Màu Trơn Áo Thun Xếp Li Dự Tiệc',147000,'images/products/vonda_áo_chui_đầu.jpg','','','','','Chất liệu: 80% polyester + 20% Cotton  Màu sắc: Đen, Trắng, Kaki  Tay áo: tay lỡ 3/4  Hoạ tiết: trơn  Tính năng: Xếp Nếp  Phong cách: thoải mái, thoải mái, kỳ nghỉ, Châu Âu, hàng ngày, thời trang',0,1,8),(30,'VONDA Áo Cánh Rộng Màu Trơn Cổ Tròn Tay Ngắn Thường Ngày Cho Nữ Áo Dáng Suông Rộng Thường Ngày',111000,'images/products/vonda_áo_cánh_rộng.jpg','','','','','Chất liệu: 100% Polyester Màu sắc: trắng, xanh lá cây, kaki Tay áo: tay lửng Đặc điểm: tay phồng Phong cách: Giải trí, kỳ nghỉ, Châu Âu, hàng ngày, thời trang Mùa: Mùa hè',0,1,8),(31,'VONDA Áo Cánh Xếp Ly Màu Trơn Cổ Tròn Tay Ngắn Cho Nữ Áo Peplum',121000,'images/products/vonda_áo_cánh_xoắn.jpg','','','','','Chất liệu: 100% Polyester Màu sắc: Trắng, Kaki, đen Tay áo: ngắn tay Đặc điểm: Xếp Nếp, tay phồng Phong cách: Giải trí, kỳ nghỉ, Châu Âu, hàng ngày, thời trang Mùa: Mùa hè',0,1,8),(32,'VONDA Áo Thường Ngày Tay Phồng Cổ Tròn Thời Trang Cho Nữ Áo Cánh Tay Ngắn Màu Trơn Xếp Li',132000,'images/products/vonda_áo_thường_ngày_tay_phồng.jpg','','','','','Chất liệu: 100% Polyester Màu sắc: Xanh lá cây, cà phê, trắng Tay áo: ngắn tay Đặc điểm: Xếp Nếp, tay phồng Phong cách: Giải trí, kỳ nghỉ, Châu Âu, hàng ngày, thời trang Mùa: Mùa xuân, mùa thu',0,1,8),(33,'VONDA Áo Cánh Màu Trơn Không Tay Cho Nữ Áo Ba Lỗ Thường Ngày Mùa Hè',91000,'images/products/vonda_áo_cánh_màu_trơn.jpg','','','','','Gói bao gồm: 1 đầu Chất liệu: 100% Polyester Màu sắc: Cam, đen, kahki Tay áo: không tay Pocket: không Kích thước: S,M,L,XL,2XL,3XL,4XL,5XL Hoạ tiết: trơn Tính năng: chữ A Phong cách: Giải trí, kỳ nghỉ, Châu Âu, hàng ngày, thời trang Mùa: Mùa hè Dịp: Tiệc tùng, ngày lễ, đường phố, việc làm, du lịch, hẹn hò, đám cưới, tiệc tùng',0,1,8),(34,'SEZO Áo Dáng Lửng Cổ Vuông Màu Đen Cổ Điển Phong Cách Hàn Quốc Cho Nữ',127000,'images/products/sezo_áo_dáng_lửng.jpg','','','','','Chất liệu: Cotton Polyester Kích thước: M, L Phong cách: Hàn Quốc Hoạ tiết: trơn Màu sắc: Đen Kiểu cổ áo: cổ vuông Chiều dài tay áo: dài tay Chiều dài: Ngắn Loại phiên bản quần áo: ôm sát Các hoạt động phù hợp: Giải trí, họp mặt gia đình, tiệc tùng, đi dạo',0,1,9),(35,'SEZO Áo Trễ Vai Ngắn Tay Phồng Cổ Vuông Phong Cách Hàn Quốc Cho Nữ',183000,'images/products/sezo_áo_trễ_vai.jpg','','','','','Chất liệu: Polyester, voan Kích thước: Một cỡ Phong cách: Hàn Quốc Hoạ tiết: trơn Loại màu: hoa mai, hồng, xanh dương Đường viền cổ áo: cổ vuông Tay áo: ngắn tay Độ dài: Ngắn Loại quần áo: Thông thường Thích hợp cho các hoạt động: Giải trí, họp mặt gia đình, tiệc tùng, đi bộ,',0,1,9),(36,'Áo len crop lửng ngắn tay cổ vuông kẻ trắng hồng tingoan BORA BORA TOP/PK',347000,'images/products/tin_áo_len_crop.jpg','','','','','Áo len crop lửng ngắn tay cổ vuông kẻ trắng hồng tingoan BORA BORA TOP/PK   - CHẤT LIỆU LEN TRONG QUÁ TRÌNH SỬ DỤNG SẼ XÙ BÔNG VÀ CO GIÃN DẦN THEO THỜI GIAN  - FORM ÁO CROP NGẮN NHỎ NHẮN, CỔ RỘNG HỞ NHIỀU  - LEN MÙA THU, KHÔNG DÀY  - LEN KHÔNG GIẶT MÁY, GIẶT THEO HƯỚNG DẪN ĐI KÈM  - CỔ ÁO PHẢI ĐIỀU CHỈNH KHI MẶC',0,1,10),(37,'Áo len croptop ngắn tay chống nhăn trắng ALISSA TOP/WH',390000,'images/products/tin_áo_len_croptop.jpg','','','','','Áo len croptop ngắn tay chống nhăn trắng ALISSA TOP/WH  - DÁNG NGẮN, FORM NHỎ NHẮN - CHẤT LEN SỢI ĐAN KHÍT MỎNG - CHẤT LIỆU CO GIÃN DẦN THEO THỜI GIAN - BỀ MẶT SỢI KHÔ, CÓ LỖ SỢI - BO THÂN VÀ TAY ÔM',0,1,10),(38,'Áo len crop ngắn tay chéo dây trắng tingoan MISSIN\' U TOP/WH',288000,'images/products/tin_áo_len_crop_ngắn_tay.jpg','','','','','Áo len crop ngắn tay chéo dây trắng tingoan MISSIN\' U TOP/WH  - CHẤT LIỆU LEN TRONG QUÁ TRÌNH SỬ DỤNG SẼ XÙ BÔNG VÀ CO GIÃN DẦN THEO THỜI GIAN - FORM DÁNG NHỎ NHẮN, ÁO NGẮN, ỐNG TAY BÓ ÔM - LEN MÙA THU, KHÔNG DÀY  - LEN KHÔNG GIẶT MÁY, GIẶT THEO HƯỚNG DẪN ĐI KÈM - CỔ ÁO PHẢI ĐIỀU CHỈNH KHI MẶC',0,1,10),(39,'Áo len ngắn tay cổ lượn viền mint tingoan DATE MAKER TOP/MINT',287000,'images/products/tin_áo_len_ngắn_tay_cổ_lượn.jpg','','','','','Áo len ngắn tay cổ lượn viền mint tingoan DATE MAKER TOP/MINT- CHẤT LIỆU LEN TRONG QUÁ TRÌNH SỬ DỤNG SẼ XÙ BÔNG VÀ CO GIÃN DẦN THEO THỜI GIAN- FORM ÁO NHỎ NHẮN, THÂN NGẮN- TAY ÁO ÔM, NGỰC CỔ RỘNG- LEN MÙA THU, KHÔNG DÀY- LEN KHÔNG GIẶT MÁY, GIẶT THEO HƯỚNG DẪN ĐI KÈM- CỔ ÁO PHẢI ĐIỀU CHỈNH KHI MẶC',0,1,10),(40,'OWEN - Áo sơ mi ngắn tay Bodyfit Kẻ màu hồng BA90047N',570000,'images/products/owen_áo_sơ_mi_ngắn_tay_oufit.jpg','','','','','OWEN - Áo sơ mi ngắn tay Bodyfit Kẻ màu hồng BA90047N Thương hiệu : OWEN Kiểu dáng : trẻ trung , thanh lịch. Thiết kế cổ bẻ Cài nút dọc thân Đường may chắc chắn, tỉ mỉ Tính năng kháng khuẩn tự nhiên ưu việt. Mềm mịn, thoáng khí. Size :38-43',0,2,11),(41,'OWEN - Áo sơ mi dài tay Bamboo Regularfit Xanh đen AR21053DT',324000,'images/products/owen_áo_sơ_mi_dài_tay_bombo.jpg','','','','','Chất liệu: 50% Bamboo, 50% Microfiber ; Kiểu dáng: Regularfit OWEN - Áo sơ mi nam  dài tay Regularfit mềm mại, đường may chắc chắn và tỉ mỉ giúp sản phẩm có độ bền cao mang đến người mặc sự thoải mái và dễ chịu khi mặc. Bên cạnh đó, Áo sơ mi với thiết kế kiểu dáng đơn giản phối cùng gam màu hiện đại, mang đến cho bạn nam sự trẻ trung, nam tính cũng như dễ dàng phối cùng các trang phục.',0,2,11),(42,'Áo Polo Nam Ngắn Tay Nhiều Màu Thời Trang Cao Cấp OWEN',160000,'images/products/owen_áo_polo_ngắn_tay.jpg','','','','','Thương hiệu: AVIANO Chất Liệu: Cotton Kiểu Tay Áo: Tay ngắn',0,2,11),(43,'OWEN - Áo polo Scafe APV221133 Bodyfit màu Đen',413000,'images/products/owen_áo_polo_scafe.jpg','','','','','Thương hiệu: Owen Chất Liệu: 35% Scafe 65% Function Polyester Phong Cách: Thường ngày Kiểu Cổ Áo: Polo Collar Họa Tiết: Đen Kiểu Tay Áo: Ngắn tay Form Áo: Bodyfit',0,2,11),(44,'OWEN Áo sơ mi dài tay RegularFit Có Túi Màu Đen Caro Trắng AR90772DT',648000,'images/products/owen_áo_sơ_mi_tay_dài.jpg','','','','','•Thương hiệu : OWEN • Thành phần vải : 60% Lotus 40% Cool nano. • Kiểu dáng : trẻ trung , thanh lịch. • Thiết kế cổ bẻ, tay dài • Cài nút dọc thân, 1 túi đắp ngực • Form Regular fit tôn dáng • Đường may chắc chắn, tỉ mỉ • Tính năng kháng khuẩn tự nhiên ưu việt. • Mềm mịn, thoáng khí. • Chống tia cực tím , khử mùi và bền màu. • Xuất xứ : Việt Nam • Size :38-43.',0,2,11),(45,'OWEN - Áo polo Scafe APV221131 Bodyfit màu Cam',413000,'images/products/owen_áo_polo_scafe2.jpg','','','','','Thương hiệu: Owen Chất Liệu: 35% Scafe 65% Function Polyester Phong Cách: Thường ngày Kiểu Cổ Áo: Polo Collar Họa Tiết: Đen Kiểu Tay Áo: Ngắn tay Form Áo: Bodyfit',0,2,11),(46,'Quần Jogger nam Kaki Basic MK Clever - Chất kaki mềm mịn không bai xù, thiết kế cạp và gấu quần chun cực trẻ trung QJKB017',143000,'images/products/Quần_jogger_nam_kaki.jpg','','','','','Quần jogger kaki mềm mịn,co giãn,không bai không xù,mặc và giặt thoải mái Quần có 4 màu : Đen-Xanh Than-Xanh Rêu-Xám Ghi Size: M - L - XL - XXL Size M: 1m6 - 1m65, 50kg - 58kg Size L: 1m65 - 1m7, 59kg - 65kg Size XL: 1m68 - 1m73, 66kg - 75kg Size XXL: 1m70 - 1m80, 76kg - 85kg Phù hợp mặc đi làm,dạo phố,du lịch rất đẹp và lịch sự Kết hợp với áo thun,áo khoác,áo sơ mi ..',0,2,12),(47,'Quần nam kaki slimfit, chất vải mềm mịn, ống xuông thoải mái - Quần nam thời trang MK Clever - QKX06',175000,'images/products/mk_quần_nam_kaki.jpg','','','','','Chất vải kaki mềm mịn và co giãn, đã được qua xử lý vải Thiết kế ống xuông đơn giản, tạo sự thoải mái khi đi làm cũng như đi chơi Form slimfit ôm gọn gàng Thiết kế tỉ mỉ đường may, mũi chỉ',0,2,12),(48,'Áo Khoác Nhung Nam Bomber Lót Lông Cừu Trơn Form Hàn Quốc Trẻ Trung Năng Động 3 Màu Đen Nâu Be',425000,'images/products/mk_áo_khoác_nhung_nam_lụa.jpg','','','','','- Áo Khoác Nam Dáng Bomber Chất Liệu Vải Nhung được thiết kế tỉ mỉ ,nổi bật vẻ lịch sự, trẻ trung   - Áo khoác nhung nam phù hợp mặc mùa thu, đông cực kì ấm   - Áo được thiết kế theo dáng cổ Bomber được giới trẻ ưa chuộng, kết hợp chất liệu gió phổ thông tạo nên sự đa năng và tiện lợi khi sử dung vào các mục đích khác nhau   - Chất liệu: vải nhung   - Màu sắc: Đen, Nâu, Be   - Có 4 size cho ae thoải mái lựa chọn   Size: M, L, XL, XXL   - Mặc đi làm,dạo phố,du lịch đơn giản nhưng vẫn nổi bật   - Xuất xứ: Việt Nam   - Thương hiệu: MK CLEVER',0,2,12),(49,'Áo Khoác Nam Vurg Áo Khoác Bomber Áo Khoác Thanh Niên Thường Nhật Đồng Phục Bóng Chày Hàn Quốc Hip Hop Chữ Dạo Phố',369000,'images/products/vuug_áo_khoác_nam_nâu_đen.jpg','','','','','Tên Thương hiệu: vurg Kiểu đóng: Khóa kéo Loại sản phẩm: áo khoác Độ dài: Thông thường Độ dày: Tiêu chuẩn Phong cách: thể thao  Chất liệu: Polyester Chất liệu lót: Polyester Kiểu vòng bít: thường xuyên Mặt hàng: Áo khoác nam Áo khoác nam: Áo khoác nam Áo khoác thường ngày: áo khoác phi công thường ngày',0,2,13),(50,'VUUG Áo Nỉ Cổ Điển Áo Hoodie Nam In Chữ Phong Cách Hàn Quốc Áo Nỉ Chui Đầu Có Mũ Cho Nam Tuổi Teen Có Khóa Kéo Quần Áo Nam',329000,'images/products/vuug_áo_khoác_nỉ_đen.jpg','','','','','Trùm đầu: Có Độ dày: Tiêu chuẩn Chất liệu: Polyester Chất liệu: Spandex Loại: Thông thường Phần có thể tháo rời: KHÔNG CÓ Phong cách: thường ngày Áo Hoodie Nam: Áo hoodie nam Áo Hoodie Nam: Áo hoodie nam, áo nỉ có mũ trùm đầu thường ngày Áo Hoodie trùm đầu nam: Áo hoodie nam Túi Khóa kéo: Đầm Có MũTên Thương hiệu: vuug Chiều dài tay áo (cm) : Dài Giới tính: Nam Phong cách: Hip Hop Kiểu Họa tiết: in Chiều dài quần áo: Thông thường Cổ áo: trùm đầu Số Model: 6708 Loại sản phẩm: Áo Hoodie Kiểu đóng: không có Kiểu tay áo: Thông thường',0,2,13),(51,'VUUG Áo Len Mới Mùa Thu Áo Mặc Trong Áo Xu Hướng Thường Ngày Dáng Rộng Cổ Tròn Quần Áo Nam Dài Tay',319000,'images/products/vuug_áo_len_mùa_thu.jpg','','','','','Thể loại: Áo len Kiểu cổ áo: Cổ tròn Phong cách: Bảo Hiểm Rủi Ro Kiểu tay áo: Thông thường Họa tiết: Hình học Đối tượng sử dụng: thanh thiếu niên Bối cảnh sử dụng: Giải trí Mùa áp dụng: mùa thu và mùa đông Phong cách cơ bản: trẻ trung Phong cách Phân Khu: Hợp thời trang Màu sắc: trắng, xám, đen Kích thước: M, L, XL, 3XL, 2XL, 4XL Thành phần chất liệu: 69.7% cotton 25.7% Polyester 4.6% Spandex',0,2,13),(52,'VUUG Áo Len Áo Chui Đầu Không Mũ Dáng Rộng Cổ Tròn Màu Đen Xuân Thu Cho Nam Áo Thun Dài Tay Dễ Phối Xu Hướng Mùa Thu Và Mùa Thu Quần Áo Mùa Thu',319000,'images/products/vuug_áo_len_áo_chui_đầu.jpg','','','','','Thể loại: Áo len Kiểu cổ áo: Cổ tròn Họa tiết: khác Phong cách cơ bản: Khác Cỡ: M,L,XL Đồ thủ công: Khác Chất liệu: Khác Màu sắc: trắng, đen, xanh dương Thành phần chất liệu: 100% sợi polyester Phiên bản: ôm sát Phong cách Phân Khu: Hợp thời trang Kiểu tay áo: Thông thường Mùa sử dụng: Mùa thu Đối tượng sử dụng: thanh thiếu niên Phong cách: Bảo Hiểm Rủi Ro Độ dày: thông thường',0,2,13),(53,'VUUG Áo Thun Nam Dài Tay Mới Xuân Thu Áo Len Thường Ngày Trẻ Trung Cổ Tròn Áo Thời Thượng Thời Trang',309000,'images/products/vuug_áo_thun_tay_dài_mùa_thu.jpg','','','','','Thể loại: Áo len Hoạ tiết: khâu Phong cách cơ bản: trẻ trung Kích thước: M, L, XL, 3XL, 2XL Thành phần chất liệu: Vải len giả Cotton 100% sợi polyester Phong cách: Bảo Hiểm Rủi Ro Màu sắc: Trắng, Xám nhạt, xanh dương',0,2,13),(54,'VUUG Áo Len Có Mũ Áo Thun Dài Tay Mùa Xuân Mới Cho Nam, Dáng Rộng, Thường Ngày, Phong Cách Nhật Bản',309000,'images/products/vuug_áo_len_có_mũ.jpg','','','','','Thể loại: Áo len Màu sắc: Xanh đậu, mơ, xanh sương mù, xám đậm, đỏ cam, đen Đối tượng sử dụng: Thanh niên Mùa sử dụng: Mùa xuân Bối cảnh sử dụng: Giải trí Phong cách Phân Khu: sức sống trẻ trung Kiểu cổ áo: trùm đầu Chất liệu: Khác Công nghệ quần áo: xử lý không sắt Kích thước: M, L, XL, 3XL, 2XL, 4XL Phong cách cơ bản: trẻ trung Hoạ tiết: Bảng Đèn Độ dày: Phần mỏng Phong cách: Bảo Hiểm Rủi Ro',0,2,13),(55,'Áo thun unisex sọc xanh phom rộng CAPMAN dành cho nam nữ màu trắng chữ xanh',197000,'images/products/capman_áo_thun_unisex.jpg','','','','','Thương hiệu: CAPMAN Kiểu Tay: ÁoTay ngắn Họa Tiết: LOGO Kiểu Cổ Áo: Cổ tròn Form Áo: Unisex Chất Liệu: Tici Mùa Phù Hợp: Quanh năm Country of origin: Việt Nam',0,2,14),(56,'Áo phông unisex phom rộng CAPMAN tay lỡ basic TEE dành cho nam',120000,'images/products/capman_áo_phông.jpg','','','','','Thương hiệu: CAPMAN Kiểu Cổ: ÁoCổ tròn Họa Tiết: Trơn Form Áo: Unisex Mùa Phù Hợp: Quanh năm Chất Liệu: cotton Kiểu Tay Áo: Tay ngắn',0,2,14),(57,'Áo thun WASH unisex chính hãng Capman',280000,'images/products/capman_áo_wash.jpg','','','','','Chất liệu cotton 2 chiều Áo thuộc dạng form rộng, unisex, mặc thoải mái rồi nên khi đặt không cần nhích size (trừ trường hợp thích oversize size hẳn)',0,2,14),(58,'Áo thun cổ tròn basic Capman',220000,'images/products/capman_áo_thun_cổ_tròn.jpg','','','','','- Chất vải 100% Cotton, dày dặn,co giãn tốt, độ bền màu cao.  - Giặt ko đổ lông hay bay màu, thấm hút mồ hôi và thoải mái ko gò bó khi vận động.  - Thiết kế cấu trúc lỗ thoáng, mắt vải to tạo sự thoáng mát cho người mặc.  - Màu sắc & kích cỡ Áo thun T-Shirt: form áo Regular Fit thoải mái ko gò bó khi vận động tạo nên sự nặng động,trẻ trung..',0,2,14),(59,'Quần Tây Caro Trơn Nam 4MEN QT028 form slimfit ôm vừa vặn, kiểu dáng trẻ trung, vải polyester có giãn tốt',404000,'images/products/4men_quần_tây_sọc_caro.jpg','','','','','Chất liệu: polyester.  - Kiểu dáng: quần tây form slimfit dáng đứng thanh lịch, hiện đại.  - Màu sắc: Xanh  - Đặc tính: chất vải mềm mịn, có độ giãn rất tốt cùng khả năng chống co rút. Đường chỉ may tinh tế, không có chỉ thừa',0,2,15),(60,'Áo thun polo nam có cổ đẹp 4MEN PO044 cổ trụ bẻ, vải cá sấu cotton co giãn, mềm mịn, phối màu kẻ ngang',245000,'images/products/4men_áo_polo_cổ_dẹp.png','','','','','Chất liệu: áo polo nam vải cá sấu cao cấp (95% cotton, 5% spandex).  - Kiểu áo: áo thun polo nam form regular suông nhẹ, không ôm bó sát cơ thể, nhưng vẫn tôn lên vẻ đẹp hình thể cho người mặc. Thiết kế áo polo nam cổ bẻ cơ bản khỏe khoắn, ấn tượng mang tới diện mạo trẻ trung, lịch lãm cho người mặc, áo polo ngắn tay phối kẻ sọc ngang ngực và tay đẹp.  - Màu sắc: áo polo nam có 2 màu basic: Đen - Trắng.  - Đặc tính: áo thun nam polo cotton cao cấp có khả năng hút ẩm cao, thoáng mát, tính năng nổi bật là co giãn 4 chiều tạo cảm giác thoải mái dễ chịu khi mặc',0,2,15),(61,'Quần Jeans Nam Regular Blue 4MEN QJ049 cotton co giãn thoải mái, ôm thanh lịch, trẻ trung',470000,'images/products/4men_quần_jean_nam.jpg','','','','','Chất liệu: vải denim cao cấp, sợi vải co giãn tốt cấu thành từ cotton.  - Kiểu dáng: jeans form regular, trẻ trung tạo cảm giác săn chắc, năng động.  - Màu sắc: Xanh  - Đặc tính: chất vải mềm, co giãn tốt, khó phai màu. Đường chỉ may chắc chắn, từng chi tiết được đầu tư tỉ mỉ, chắc chắn và đẹp mắt.',0,2,15),(62,'Áo Sơ Mi Nam Form Loose Escape 4MEN ASM095 dài tay vai chéo thoáng mát, len dáng đẹp, trẻ trung',375000,'images/products/4men_áo_sơ_mi_foome.png','','','','','Chất liệu: vải chéo  - Kiểu áo: áo sơ mi nam loose escape tay dài phong cách retro, đường phố phóng khoáng, năng động, trẻ trung.  - Màu sắc: Trắng - Đen - Xanh biển.  - Đặc tính: khả năng thấm hút tốt, tạo cảm giác thoải mái khi sử dụng, khá thoáng và mát',0,2,15),(63,'Áo Sơ Mi Nam Loose Basic 4MEN ASM090 tay ngắn, chất liệu vải linen chống nhăn, mềm mịn, form đẹp',356000,'images/products/4men_sơ_mi_loose.jpg','','','','','Chất liệu: vải linen  - Kiểu áo: áo sơ mi nam loose basic tay ngắn.  - Màu sắc: Nâu - Be - Trắng - Đen.  - Đặc tính: khả năng thấm hút tốt, tạo cảm giác thoải mái khi sử dụng, khá thoáng và mát',0,2,15),(64,'Áo sơ mi nam ngắn tay đẹp 4MEN SM064 vải linen in họa tiết hoa đẹp trẻ trung, hiện đại',299000,'images/products/4men_sơ_mi_họa_tiết.jpg','','','','','Áo sơ mi nam tay ngắn SM064 có thiết kế in họa tiết hoa lá, một trong những sản phẩm nổi bật trong BST SUMMER mới , form suông thoải mái cho người mặc. Thiết kế năng động, trẻ trung là lựa chọn phù hợp cho những chuyến đi hay cà phê dạo phố cùng bạn bè',0,2,15),(65,'Bộ sát nách balo thun cotton GAP Kids bé trai 2-7T họa tiết người nhện xe khủng long',95000,'images/products/gap_áo_sát_nách.jpg','','','','','Bộ sát nách thun cotton Gap KIDs vài xuất dư  cotton mềm.  Form hàng xuất thoải mái  ✔️ Tên sản phẩm: Bộ balo cotton Gap KID bé trai  ✔️ Độ tuổi: Thích hợp cho bé trai từ 2Y đến 7 tuổi (cân nặng từ 11-24Kg).  ✔️ Cạp chun mềm co giãn thoải mái  ✔️Chất liệu:Chất rất xịn, cotton mềm co giãn thoải mái, ko bai nhão  ✔️ Màu sắc: họa tiết nhiều hình ngộ nghĩnh các bé cực mê, được in công nghệ cao không phai mờ bong tróc khi giặt máy',0,3,16),(66,'Áo thun bé trai tay ngắn 24-28kg GAP KIDS, OSHKOSH (Hàng VN xuất)',110000,'images/products/gap_áo_thun_bé_trai.jpg','','','','','Áo thun bé trai tay ngắn hàng VN xuất các thương hiệu GAP KIDS, OSHKOSH cho bé có cân nặng dao động 24 -28kg tùy theo chiều cao  -	Chất liệu 100% cotton thoáng mát thấm hút mồ hôi tốt cho bé thoải mái vận động -	Kích thước: ngang ngực 37cm, dài áo 53cm, số đo là shop đo trực tiếp trên sản phẩm chưa kéo co giãn, sản phẩm là chất thun cotton nên có thể co giãn thêm 5-10cm các mẹ có thể tham khảo và đối chiếu theo áo của bé nhà mình dùm shop ạ!',0,3,16),(67,'CHÂN VÁY GIẤY GAP CHO BÉ GÁI - CỐM KIDS NT',145000,'images/products/gap_chân_váy.jpg','','','','','Chân váy giấy GAP  - Chất siêu nhẹ siêu êm mix gì cũng xinh nè - Size: 80-110',0,3,16),(68,'Đầm cánh tiên GAP KIDS',85000,'images/products/gap_đầm_cánh_tươi.jpg','','','','','Đầm cánh tiên Gap kids cotton hoa nhí trend mới  Size đại cỡ XS(4)-2XL(14):  20kg- 35kg Hàng chuyền đẹp may trên nền vải xuất dư xịn.   Màu sắc rực rỡ, luôn luôn bán tốt.  Màu được tuyển nên nguyên lô màu nào cũng đẹp nhé. Vải mềm mịn dễ thương, bé thường xuyên mặc thoáng mát.  Tay cánh tiên dễ thương, tùng xòe rộng bé mặc dễ thương',0,3,16),(69,'Quần &Aacute, Trẻ Em M&ugrave;a H&egrave, Trang Phục Cho B&eacute,Trai &Aacute',101000,'images/products/hm_quần_áo_trẻ_em.jpg','','','','','Mùa: Mùa hè Phong cách: giản dị, dễ thương, nắng đẹp, sống động Màu sắc: trắng, xám, xanh đậm Giới tính: bé trai Chất liệu: Cotton Chiều dài Tay áo: ngắn tay Độ tuổi: 6m-4t',0,3,17),(70,'Bộ cộc tay H&M bé trai - Quần áo trẻ em Sumin Kids - 3 chi tiết - Chất cotton',185000,'images/products/hm_bộ_cộc_tay.jpg','','','','','Chất liệu cotton mềm mịn, co giãn và thấm mồ hôi tốt   Set đồ 3  chi tiết, một quần kèm 2 áo thun được phối màu cơ bản, dễ mặc, phù hợp với tất cả các bé Bé mặc đi học, đi chơi cực mát lun nè, giá siêu yêu mẹ nhanh tay sắm ngay cho bé nào',0,3,17),(71,'Sét Bộ Y3 mũ - túi hộp áo quần khỏe mạnh phong cách của hãng M&H kids!',145000,'images/products/hm_set_áo.jpg','','','','','Thương hiệu: No Brand Phân Loại: Cổ ÁoTrùm đầu Phân Loại Họa Tiết: Trơn Phân Loại Tay Áo Khoác: Tay dài Phân Loại Chất Liệu: Polyester',0,3,17),(72,'Bộ Đồ Trẻ Em, &Aacute Kh&ocirc Tay Hoạt H&igrave',118000,'images/products/hm_bộ_đồ_trẻ_em.jpg','','','','','Phong cách: thời trang Kiểu tay áo: Thông thường Cổ áo: Cổ tròn Chất liệu: Cotton, Spandex Kiểu mẫu: in Chiều dài Tay áo (cm): không tay Giới tính: Con Trai Loại áo khoác ngoài: Áo vest Kiểu khóa: Áo chui đầu Tên thương hiệu: không có Số Model: 1 Phù hợp: Phù hợp với đúng kích cỡ, lấy kích cỡ bình thường của bạn Xuất xứ: CN (Xuất xứ) Mùa: Mùa hè Độ tuổi: 13-24m,25-36M, 4-6Y Loại sản phẩm: Bộ Tên sản phẩm: trẻ em',0,3,17),(73,'Set ba chi tiết HM CHINA chính hãng sz từ 9-12m đến 3-4y',345000,'images/products/hm_chian.jpg','','','','','Kích thước: Dành cho bé từ 9 tháng tuổi đến 4 tuổi  Màu sắc: Tùy theo điều kiện ánh sáng mà màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%.',0,3,17),(74,'Áo thun catton cổ tròn',52000,'images/products/hm_áo_thun_catton.jpg','','','','','Phong cách: thời trang Kiểu tay áo: Thông thường Cổ áo: Cổ tròn Chất liệu: Cotton, Polyester Kiểu mẫu: in Chiều dài Tay áo (cm): Ngắn Giới tính: Unisex Loại áo khoác ngoài: Quần đùi Kiểu khóa: Áo chui đầu Tên thương hiệu: không có Phù hợp: Phù hợp với kích cỡ thật, lấy Kích thước bình thường của bạn Xuất xứ: CN (Xuất xứ) Mùa: Mùa hè Độ tuổi: 0-7y Loại sản phẩm: Bộ Tên sản phẩm: trẻ em',0,3,17),(75,'Bộ đồ hai mảnh hoa tay phồng',122000,'images/products/hm_đồ_bộ_mùa_hè_bé_gái.jpg','','','','','Phong cách: thời trang Kiểu tay áo: tay phồng Cổ áo: cổ vuông Chất liệu: Cotton, Polyester Kiểu mẫu: in Chiều dài Tay áo (cm): Ngắn',0,3,17),(76,'VÁY TRẮNG ZARA CHO BÉ GÁI ĐI HỌC ĐI CHƠI TỪ 1 ĐẾN 7 TUỔI',129000,'images/products/zara_váy_trắng.jpg','','','','','Phân Loại Chất Liệu: Cotton Phân Loại Họa Tiết: Floral Phân Loại Tay Áo: Tay ngắn Phân Loại Đầm: Váy chữ A,Dài đến gối',0,3,18),(77,'Váy Đầm ZARA Bé Gái 1-5 Tuổi Tay Viền Bèo',159000,'images/products/zara_váy_đầm.jpg','','','','','Váy Cho Bé ZARA Tay Viền Bèo Cao Cấp  Dáng suông trắng đơn giản, tinh tế  Chất vải cao cấp  Tay viền bèo xinh xắn  Bé gái nào cũng nên có 1 chiếc trong tủ đồ xuân hè  Gồm các size : 12/18 tháng - 18/24 tháng - 2/3 tuổi - 3/4 tuổi - 4/5 tuổi',0,3,18),(78,'Áo khoác zara màu vàng chấm bi lót nỉ cho bé gái',315000,'images/products/zara_áo_khoác.jpg','','','','','Áo khoác Zara màu vàng chấm bi tqxk xuất dư . Siêu đẹp   mã này hot hit bom tấn luôn ạ   Quá đẹp và ấm áp luôn shop nha  Hàng mềm đẹp ưng ý vô cùng   /9m đến 3/4 years',0,3,18),(79,'Quần jean bé trai / không đủ size thanh lý giá rẻ/ hàng chuẩn zara',70000,'images/products/zara_quần_jean_trẻ_nam.jpg','','','','','Thương hiệu: Zara Phân Loại Độ Tuổi: Mẫu giáo (2-5 tuổi) Phân Loại Dáng Quần: Ngắn Phân Loại Họa Tiết: Trơn Phân Loại Chất Liệu: Denim',0,3,18);
/*!40000 ALTER TABLE `product_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_association`
--

DROP TABLE IF EXISTS `social_auth_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_association` (
  `id` int NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int NOT NULL,
  `lifetime` int NOT NULL,
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_association`
--

LOCK TABLES `social_auth_association` WRITE;
/*!40000 ALTER TABLE `social_auth_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_code`
--

DROP TABLE IF EXISTS `social_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_code` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  KEY `social_auth_code_code_a2393167` (`code`),
  KEY `social_auth_code_timestamp_176b341f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_code`
--

LOCK TABLES `social_auth_code` WRITE;
/*!40000 ALTER TABLE `social_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_nonce`
--

DROP TABLE IF EXISTS `social_auth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_nonce` (
  `id` int NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int NOT NULL,
  `salt` varchar(65) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_nonce`
--

LOCK TABLES `social_auth_nonce` WRITE;
/*!40000 ALTER TABLE `social_auth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_partial`
--

DROP TABLE IF EXISTS `social_auth_partial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_partial` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` varchar(32) NOT NULL,
  `next_step` smallint unsigned NOT NULL,
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_auth_partial_token_3017fea3` (`token`),
  KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`),
  CONSTRAINT `social_auth_partial_chk_1` CHECK ((`next_step` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_partial`
--

LOCK TABLES `social_auth_partial` WRITE;
/*!40000 ALTER TABLE `social_auth_partial` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_partial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_usersocialauth`
--

DROP TABLE IF EXISTS `social_auth_usersocialauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_usersocialauth` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  KEY `social_auth_usersocialauth_user_id_17d28448_fk_customer_user_id` (`user_id`),
  KEY `social_auth_usersocialauth_uid_796e51dc` (`uid`),
  CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_customer_user_id` FOREIGN KEY (`user_id`) REFERENCES `customer_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_usersocialauth`
--

LOCK TABLES `social_auth_usersocialauth` WRITE;
/*!40000 ALTER TABLE `social_auth_usersocialauth` DISABLE KEYS */;
INSERT INTO `social_auth_usersocialauth` VALUES (1,'google-oauth2','nguyenthang13a32020@gmail.com','{\"auth_time\": 1699539736, \"expires\": 3599, \"token_type\": \"Bearer\", \"access_token\": \"ya29.a0AfB_byDK49s-D1y3k8BPV4IMbEPPqKBE9I8q1uyI1XUta7xPgvt_eBcOCntXk3Gpw5NVP9DXZezSsLRbcewWceZPZg1Se6lJQSxbeIpy9uxsq5joVZJr5Q2gKh6MjoFGt4nfx43N5ldBFMbdUsx3AihOeuKo4EMO5tCoaCgYKATwSARISFQHGX2MiMFOuu4aOEyQ_3JVkaG0asw0171\"}',11,'2023-11-09 14:12:25.301848','2023-11-09 14:22:16.239784'),(2,'facebook','453637270203808','{\"auth_time\": 1699539929, \"id\": \"453637270203808\", \"expires\": 5183998, \"granted_scopes\": [\"public_profile\"], \"denied_scopes\": null, \"access_token\": \"EAAIeoPs9tgsBO9ZBcnuGt4OiBxuBuOZBPZBrd6ZCiIxTFSXxJYZCdijeHGjm5TwZCo9ZBy74m5WOsguEMpCCbMschuchqTHulwMpHZCxAGQH3CPXsXjw9ki1fRcApjGl1p1tHcGCnLTJVFV5iC00GyT1sb300tldAknrU3qfOZBE1xr4qMSUPAStt4yZCPbsHiHxX8ziQ2UamqftpmQHSDDBOcTnHguoTepVqKHzatUsfoFV0D2jmj\", \"token_type\": null}',14,'2023-11-09 14:25:29.312628','2023-11-09 14:25:29.323337');
/*!40000 ALTER TABLE `social_auth_usersocialauth` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-09 21:38:29
