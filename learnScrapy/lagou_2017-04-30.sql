# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.1.21-MariaDB)
# Database: lagou
# Generation Time: 2017-04-30 10:16:09 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table city
# ------------------------------------------------------------

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cityname` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table job_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `job_category`;

CREATE TABLE `job_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) NOT NULL DEFAULT '',
  `job_url` varchar(255) NOT NULL DEFAULT '',
  `job_category_level1` varchar(255) NOT NULL DEFAULT '',
  `job_category_level2` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table job_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `job_info`;

CREATE TABLE `job_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) DEFAULT '',
  `positionName` varchar(255) DEFAULT '',
  `salary` varchar(255) DEFAULT '',
  `companySize` varchar(255) DEFAULT '',
  `city` varchar(255) DEFAULT '',
  `companyFullName` varchar(255) DEFAULT '',
  `jobNature` varchar(255) DEFAULT '',
  `workYear` varchar(255) DEFAULT '',
  `education` varchar(255) DEFAULT '',
  `positionId` varchar(255) DEFAULT '',
  `financeStage` varchar(255) DEFAULT '',
  `industryField` varchar(255) DEFAULT '',
  `approve` varchar(255) DEFAULT '',
  `positionAdvantage` varchar(255) DEFAULT '',
  `companyLabelList` varchar(255) DEFAULT '',
  `score` varchar(255) DEFAULT '',
  `adWord` varchar(255) DEFAULT '',
  `createTime` varchar(255) DEFAULT '',
  `companyId` varchar(255) DEFAULT '',
  `companyShortName` varchar(255) DEFAULT '',
  `district` varchar(255) DEFAULT '',
  `businessZones` varchar(255) DEFAULT '',
  `imState` varchar(255) DEFAULT '',
  `lastLogin` varchar(255) DEFAULT '',
  `publisherId` varchar(255) DEFAULT '',
  `plus` varchar(255) DEFAULT '',
  `pcShow` varchar(255) DEFAULT '',
  `companyLogo` varchar(255) DEFAULT '',
  `appShow` varchar(255) DEFAULT '',
  `deliver` varchar(255) DEFAULT '',
  `gradeDescription` varchar(255) DEFAULT '',
  `formatCreateTime` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
