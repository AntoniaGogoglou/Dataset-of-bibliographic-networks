-- MySQL dump 10.13  Distrib 5.6.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: dblp_antonia
-- ------------------------------------------------------
-- Server version	5.6.38-1~dotdeb+7.1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ms_pub`
--

DROP TABLE IF EXISTS `ms_pub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_pub` (
  `mspub_id` bigint(20) unsigned NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `doi` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `n_authors` smallint(5) unsigned DEFAULT NULL,
  `pub_type` enum('conference','journal','other') COLLATE utf8_unicode_ci DEFAULT 'other',
  `ms_type` smallint(6) DEFAULT NULL,
  `year` smallint(6) NOT NULL,
  `year_e` smallint(6) NOT NULL,
  `year_e_by` enum('estim','dblp') COLLATE utf8_unicode_ci DEFAULT 'estim',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `times_updated` smallint(6) NOT NULL DEFAULT '0',
  `msjournal_id` int(10) unsigned DEFAULT NULL,
  `last_fetch_journal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mspub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-01 21:49:53
