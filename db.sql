/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.5-10.4.11-MariaDB : Database - un_project
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`un_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `un_project`;

/*Table structure for table `countries` */

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_name` (`country_name`)
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=latin1;

/*Data for the table `countries` */

insert  into `countries`(`id`,`country_name`) values (264,'Albania, Romania'),(265,'Brazil, Panama'),(266,'Comoros'),(267,'Costa Rica'),(268,'Dominican Republic'),(269,'Egypt, Morocco'),(270,'Ghana, Uganda, Sudan'),(271,'Honduras'),(272,'Jordan'),(290,'Jordan PPFA'),(273,'Madagascar'),(274,'Malaysia'),(275,'Maldives '),(276,'Mauritania '),(277,'Mauritius'),(278,'Mongolia'),(279,'Montenegro'),(280,'Myanmar'),(281,'Nepal'),(282,'Niger'),(283,'Pakistan'),(284,'Palestine '),(285,'Serbia'),(286,'South Sudan, Egypt'),(287,'Swaziland '),(288,'Tonga, uganda, Tanzania, Kenya '),(289,'Zimbabwe');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_05_19_173453_create_menu_table',1),(6,'2016_10_21_190000_create_roles_table',1),(7,'2016_10_21_190000_create_settings_table',1),(8,'2016_11_30_135954_create_permission_table',1),(9,'2016_11_30_141208_create_permission_role_table',1),(10,'2016_12_26_201236_data_types__add__server_side',1),(11,'2017_01_13_000000_add_route_to_menu_items_table',1),(12,'2017_01_14_005015_create_translations_table',1),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(14,'2017_03_06_000000_add_controller_to_data_types_table',1),(15,'2017_04_21_000000_add_order_to_data_rows_table',1),(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),(17,'2017_08_05_000000_add_group_to_settings_table',1),(18,'2017_11_26_013050_add_user_role_relationship',1),(19,'2017_11_26_015000_create_user_roles_table',1),(20,'2018_01_22_011911_create_categories_table',1),(21,'2018_03_11_000000_add_user_settings',1),(22,'2018_03_14_000000_add_details_to_data_types_table',1),(23,'2018_03_16_000000_make_settings_value_nullable',1);

/*Table structure for table `offices` */

DROP TABLE IF EXISTS `offices`;

CREATE TABLE `offices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `office_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `region_name` (`office_name`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=latin1;

/*Data for the table `offices` */

insert  into `offices`(`id`,`office_name`) values (204,'Africa Office'),(203,'Asia Pacific Office'),(201,'CTCN'),(198,'Economy Division'),(199,'Ecosystems'),(197,'Europe Office'),(200,'Latin America Office'),(205,'Policy & Programme Division'),(202,'West Asia Office');

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `project_titles` */

DROP TABLE IF EXISTS `project_titles`;

CREATE TABLE `project_titles` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `project_id` int(20) NOT NULL,
  `title` varchar(300) COLLATE utf8_german2_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `project_titles_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

/*Data for the table `project_titles` */

insert  into `project_titles`(`id`,`project_id`,`title`,`created_at`,`updated_at`) values (122,413,'Readiness support to Albania',NULL,NULL),(123,414,'Technology Needs Assessment for the Implementation of Climate Action Plans',NULL,NULL),(124,415,'1. Establishing and strengthening National Designated Authorities or Focal Points',NULL,NULL),(125,415,'\n2. Developing strategic frameworks for engagement with the GCF, including the preparation of country programmes.',NULL,NULL),(126,416,'Building sub-national capacities for the implementation of the National Adaptation Plan in Costa Rica',NULL,NULL),(127,417,'Building capacity to advance National Adaptation Plan Process in the Dominican Republic',NULL,NULL),(128,418,'Supporting Egypt’s engagement with the Green Climate Fund: Logical framework support',NULL,NULL),(129,419,'Drought Early Warning and Forecasting System: Improving resiliency of crops to drought through strengthened early warning within Ghana, Uganda and Sudan',NULL,NULL),(130,420,'Supporting strategic planning to engage with the GCF and comply with the national commitments under the Paris Agreement regarding the LULUCF sector',NULL,NULL),(131,421,'Strengthening NDA of Jordan to deliver on GCF Investment Framework',NULL,NULL),(132,422,'Building Capacity in Madagascar to engage with the GCF',NULL,NULL),(133,423,'Accessing REDD+ result-based payments in Malaysia',NULL,NULL),(134,424,'Establishing and strengthening National Designated Authority (NDA), and developing strategic framework for engagement with the GCF in Maldives',NULL,NULL),(135,425,'Building capacity to advance National Adaptation Plan Process in Mauritania',NULL,NULL),(136,426,'Climate Change Vulnerability and Adaptation Study for Port of Port Louis',NULL,NULL),(137,427,'Scaling-up of Implementation of Low-Carbon District Heating Systems in Mongolia',NULL,NULL),(138,428,'Building capacity to advance National Adaptation Plan Process in Mongolia',NULL,NULL),(139,429,'1. Establishing and strengthening National Designated Authorities or Focal Points',NULL,NULL),(140,429,'\n2. Developing strategic frameworks for engagement with the GCF, including the preparation of country programmes.',NULL,NULL),(141,430,'Establishing and Strengthening National Designated Authority (NDA), and Developing Strategic Framework for Engagement with the GCF in Myanmar',NULL,NULL),(142,431,'Strengthened drought and flood management through improved science‐based information availability and management in Myanmar',NULL,NULL),(143,432,'Building Capacity to Advance National Adaptation Plan Process in Nepal',NULL,NULL),(144,433,'Building Niger’s engagement with the GCF: Establishment and strengthening of the NDA, and elaboration of a country programme identifying strategic priorities',NULL,NULL),(145,434,'Building capacity to advance National Adaptation Plan Process in Pakistan',NULL,NULL),(146,435,'Technology Road Map for the Implementation of Climate Action Plans in Palestine.',NULL,NULL),(147,436,'Developing the capacities of the Republic of Serbia for an effective engagement with the Green Climate Fund',NULL,NULL),(148,437,'Republic of South Sudan Green Climate Fund’s Readiness and Preparatory Support Project ',NULL,NULL),(149,438,'Green Climate Fund Readiness Support for Swaziland',NULL,NULL),(150,439,'Building capacity to advance National Adaptation Plan process in Swaziland ',NULL,NULL),(151,440,'To develop an energy efficiency master plan for the Kingdom of Tonga and East Africa',NULL,NULL),(152,441,'1. Establishing and strengthening National Designated Authorities or Focal Points',NULL,NULL),(153,441,'\n2. Developing strategic frameworks for engagement with the GCF, including the preparation of country programmes.',NULL,NULL),(154,442,'Building capacity to advance National Adaptation Plan Process in Zimbabwe',NULL,NULL),(155,443,'Jordan Integrated Landscape Management Initiative (JILMI)',NULL,NULL);

/*Table structure for table `projects` */

DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `office_id` int(11) NOT NULL,
  `readiness_id` int(11) NOT NULL,
  `readiness_category_id` int(20) NOT NULL,
  `project_ref` varchar(11) DEFAULT NULL,
  `grant_amount` double(10,2) NOT NULL,
  `duration` int(11) NOT NULL,
  `date_from_gcf` date NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `first_disbursement_amount` double(10,2) NOT NULL,
  `project_status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_ref` (`project_ref`),
  KEY `office_id` (`office_id`),
  KEY `project_ibfk_1` (`readiness_id`),
  KEY `country_id` (`country_id`),
  KEY `projects_ibfk_1` (`readiness_category_id`),
  CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`readiness_category_id`) REFERENCES `readiness_categories` (`id`),
  CONSTRAINT `projects_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  CONSTRAINT `projects_ibfk_3` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`),
  CONSTRAINT `projects_ibfk_4` FOREIGN KEY (`readiness_id`) REFERENCES `readiness` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=444 DEFAULT CHARSET=latin1;

/*Data for the table `projects` */

insert  into `projects`(`id`,`country_id`,`office_id`,`readiness_id`,`readiness_category_id`,`project_ref`,`grant_amount`,`duration`,`date_from_gcf`,`start_date`,`end_date`,`first_disbursement_amount`,`project_status`,`created_at`,`updated_at`) values (413,264,197,153,221,'ALB-RS-001',300000.00,12,'2016-11-15','2016-08-30','2017-08-30',147500.00,'completed',NULL,NULL),(414,265,198,154,221,'BRA-RS-001',700000.00,18,'2018-06-20','2018-06-20','2019-12-19',197450.00,'under implementation',NULL,NULL),(415,266,199,153,221,'COM-RS-001',426080.00,24,'2018-11-01','2018-11-01','2020-10-21',115117.00,'under implementation',NULL,NULL),(416,267,200,155,222,'CRI-RS-002',2861917.00,36,'2018-10-23','2018-10-23','2021-10-23',350575.33,'under implementation',NULL,NULL),(417,268,200,155,222,'DOM-RS-002',2998325.00,36,'2018-07-11','2018-07-11','2021-06-10',1161912.00,'under implementation',NULL,NULL),(418,269,199,153,221,'EGY-RS-001',300000.00,18,'2017-05-02','2017-04-24','2018-10-23',122456.00,'under implementation',NULL,NULL),(419,270,201,154,221,'GHA-RS-001',300150.00,24,'2017-05-15','2017-05-15','2019-05-10',300150.00,'completion report submitted',NULL,NULL),(420,271,200,156,221,'HND-RS-002',764960.00,18,'2018-01-18','2018-01-18','2019-07-19',243515.00,'under implementation',NULL,NULL),(421,272,202,153,221,'JOR-RS-001',300000.00,18,'2017-06-15','2017-06-15','2018-12-14',150000.00,'under implementation',NULL,NULL),(422,273,199,153,221,'MDG-RS-001',300000.00,12,'2018-07-20','2018-07-20','2019-07-19',177588.00,'under implementation',NULL,NULL),(423,274,203,156,221,'MLY-RS-002',819230.00,24,'2018-11-12','2018-11-12','2020-11-13',465695.33,'under implementation',NULL,NULL),(424,275,203,153,221,'MDV-RS-001',300000.00,12,'2017-06-16','2017-06-16','2018-06-13',198545.00,'under implementation',NULL,NULL),(425,276,204,155,222,'MRT-RS-002',2670374.00,36,'2018-07-17','2018-07-17','2021-07-08',742163.00,'under implementation',NULL,NULL),(426,277,201,154,221,'MUS-RS-002',324764.00,15,'2018-01-22','2018-01-22','2019-04-19',324764.00,'under implementation',NULL,NULL),(427,278,203,154,221,'MNG-RS-003',368000.00,12,'2018-02-01','2018-02-01','2019-02-01',250000.00,'under implementation',NULL,NULL),(428,278,203,155,222,'MNG-RS-004',2895461.00,36,'2018-06-20','2018-06-20','2021-06-19',406123.00,'under implementation',NULL,NULL),(429,279,197,153,221,'MNE-RS-001',300000.00,12,'2016-11-15','2016-08-30','2017-08-30',145300.00,'under implementation',NULL,NULL),(430,280,203,153,221,'MMR-RS-002',300000.00,18,'2017-11-10','2017-11-10','2019-05-11',115840.00,'under implementation',NULL,NULL),(431,280,201,154,221,'MMR-RS-001',336520.00,12,'2017-07-26','2017-07-26','2018-07-26',336520.00,'under implementation',NULL,NULL),(432,281,203,155,222,'NPL-RS-001',2935350.00,36,'2017-05-15','2017-05-15','2020-05-14',465410.00,'under implementation',NULL,NULL),(433,282,199,153,221,'NER-RS-002',300000.00,18,'2018-06-20','2018-06-20','2019-12-19',138100.00,'requesting funds',NULL,NULL),(434,283,203,155,222,'PAK-RS-003',2969674.00,36,'2018-03-02','2018-03-03','2021-03-04',675420.00,'under implementation',NULL,NULL),(435,284,201,154,221,'PSE-RS-002',254100.00,12,'2017-10-18','2017-10-18','2018-10-18',254100.00,'under implementation',NULL,NULL),(436,285,197,153,221,'SRB-RS-001',300000.00,12,'2018-01-12','2018-01-12','2019-01-12',130000.00,'under implementation',NULL,NULL),(437,286,205,153,221,'SSD-RS-001',300000.00,18,'2018-06-20','2018-06-20','2019-12-19',153178.00,'under implementation',NULL,NULL),(438,287,199,153,221,'SWZ-RS-002',299032.00,24,'2018-03-12','2018-03-12','2020-03-13',83046.00,'under implementation',NULL,NULL),(439,287,204,155,222,'SWZ-RS-003',2796359.00,36,'2018-06-28','2018-06-28','2021-06-27',744662.00,'under implementation',NULL,NULL),(440,288,201,154,221,'TON-RS-002',200000.00,6,'2017-04-20','2017-04-20','2017-10-09',200000.00,'under implementation',NULL,NULL),(441,289,199,153,221,'ZWE-RS-001',300000.00,24,'2018-03-05','2018-03-05','2020-03-04',121354.00,'under implementation',NULL,NULL),(442,289,204,155,222,'ZWE-RS-002',2993349.00,36,'2018-05-11','2018-05-11','2021-05-13',877525.00,'under implementation',NULL,NULL),(443,290,199,155,221,'S1-32GCL-00',2886275.00,12,'2018-03-05','2018-08-28','2019-12-28',278946.28,'under implementation',NULL,NULL);

/*Table structure for table `readiness` */

DROP TABLE IF EXISTS `readiness`;

CREATE TABLE `readiness` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `readiness_type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `readiness_type` (`readiness_type`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=latin1;

/*Data for the table `readiness` */

insert  into `readiness`(`id`,`readiness_type`) values (153,'Capacity Building'),(154,'FI/TNA/other'),(155,'NAP'),(156,'REDD+');

/*Table structure for table `readiness_categories` */

DROP TABLE IF EXISTS `readiness_categories`;

CREATE TABLE `readiness_categories` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) COLLATE utf8_german2_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

/*Data for the table `readiness_categories` */

insert  into `readiness_categories`(`id`,`category`) values (222,'National Adaptation Plans'),(221,'Readiness');

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `roles` */

/*Table structure for table `user_roles` */

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_roles` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`role_id`,`name`,`email`,`avatar`,`user_type`,`password`,`remember_token`,`settings`,`created_at`,`updated_at`) values (1,NULL,'Brenda','admin@mail.com','users/default.png','admin','$2y$10$x5gdc7W/87T4fAO2cHYnHu6OPuf1JaBOf9L2xoyfTO.BtBp5/8gqi','s7wdC8jpnDHS1YBXhh2hAfE5saTvrbB3b9e9Zo9f2ScgDsx1b5xcjF6Q6Yms',NULL,'2020-11-21 11:22:26','2020-11-21 11:22:26');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
