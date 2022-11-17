-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.8.3-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table apscripts.ap_appointments
CREATE TABLE IF NOT EXISTS `ap_appointments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(100) DEFAULT NULL,
  `name` tinytext DEFAULT NULL,
  `appData` longtext DEFAULT NULL,
  `type` varchar(60) DEFAULT NULL,
  `state` int(11) DEFAULT 0,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table apscripts.ap_appointments: ~0 rows (approximately)
/*!40000 ALTER TABLE `ap_appointments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ap_appointments` ENABLE KEYS */;

-- Dumping structure for table apscripts.ap_dlcsettings
CREATE TABLE IF NOT EXISTS `ap_dlcsettings` (
  `script` varchar(60) DEFAULT 'SCRIPT',
  `settings` longtext DEFAULT '{}',
  `other` longtext DEFAULT '{}',
  `id_storage` LONGTEXT NOT NULL DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table apscripts.ap_dlcsettings: ~0 rows (approximately)
/*!40000 ALTER TABLE `ap_dlcsettings` DISABLE KEYS */;
INSERT INTO `ap_dlcsettings` (`script`, `settings`, `other`, `id_storage`) VALUES
	('ap_voting', '{"currentType":0,"voteState":0,"funds":10000}', '{"Item":0.7,"Vehicle":0.2,"Business":0.15,"Housing":0.2,"Income":0.15}', '{}');
/*!40000 ALTER TABLE `ap_dlcsettings` ENABLE KEYS */;

-- Dumping structure for table apscripts.ap_tax
CREATE TABLE IF NOT EXISTS `ap_tax` (
  `business` varchar(60) DEFAULT 'JOB NAME',
  `label` varchar(60) DEFAULT 'JOB LABEL',
  `amount_owed` int(11) DEFAULT 0,
  `total_tax_paid` int(11) DEFAULT 0,
  `owner` varchar(60) DEFAULT 'COMPANY OWNER',
  `base_tax` int(11) DEFAULT NULL,
  `grants` longtext DEFAULT 'nil'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table apscripts.ap_tax: ~1 rows (approximately)
/*!40000 ALTER TABLE `ap_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `ap_tax` ENABLE KEYS */;

-- Dumping structure for table apscripts.ap_voting
CREATE TABLE IF NOT EXISTS `ap_voting` (
  `identifier` varchar(100) DEFAULT NULL,
  `name` varchar(70) DEFAULT NULL,
  `age` text DEFAULT NULL,
  `shortDescription` mediumtext DEFAULT NULL,
  `whyDoYouWantToBeACandidate` longtext DEFAULT NULL,
  `WhatYoullBringToTheCity` longtext DEFAULT NULL,
  `denied` longtext DEFAULT 'N/A',
  `votes` int(10) DEFAULT NULL,
  `state` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table apscripts.ap_voting: ~0 rows (approximately)
/*!40000 ALTER TABLE `ap_voting` DISABLE KEYS */;
/*!40000 ALTER TABLE `ap_voting` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
