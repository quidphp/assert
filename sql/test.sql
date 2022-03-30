# ************************************************************
# Sequel Ace SQL dump
# Version 20031
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.7.3-MariaDB)
# Database: quid5
# Generation Time: 2022-03-29 19:09:14 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table cacheRoute
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cacheRoute`;

CREATE TABLE `cacheRoute` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `context` text DEFAULT NULL,
  `data` text DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table email
# ------------------------------------------------------------

DROP TABLE IF EXISTS `email`;

CREATE TABLE `email` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT NULL,
  `type` text DEFAULT NULL,
  `contentType` tinyint(1) DEFAULT NULL,
  `key` varchar(100) DEFAULT NULL,
  `name_fr` varchar(200) DEFAULT NULL,
  `name_en` varchar(200) DEFAULT NULL,
  `content_fr` text DEFAULT NULL,
  `content_en` text DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;

INSERT INTO `email` (`id`, `active`, `type`, `contentType`, `key`, `name_fr`, `name_en`, `content_fr`, `content_en`, `userAdd`, `dateAdd`, `userModify`, `dateModify`)
VALUES
	(1,1,'0',2,'resetPassword','Password reset [subject]','Password reset [subject]','FR Lorem ipsum [userPassword] [activateUri]\n\nThanks,\n[domain]','EN Lorem ipsum [userPassword] [activateUri]\n\nThanks,\n[domain]',NULL,NULL,NULL,NULL),
	(2,1,'0',2,'registerConfirm','Register confirm','Register confirm','BLA','BLA',NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table lang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lang`;

CREATE TABLE `lang` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` text DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `key` varchar(100) DEFAULT NULL,
  `content_fr` text DEFAULT NULL,
  `content_en` text DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `typeKey` (`type`(10),`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `context` varchar(100) DEFAULT NULL,
  `request` text DEFAULT NULL,
  `json` text DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `userCommit` int(11) DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table logCron
# ------------------------------------------------------------

DROP TABLE IF EXISTS `logCron`;

CREATE TABLE `logCron` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `route` varchar(100) DEFAULT NULL,
  `context` varchar(100) DEFAULT NULL,
  `json` text DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `userCommit` int(11) DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table logEmail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `logEmail`;

CREATE TABLE `logEmail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) DEFAULT NULL,
  `context` varchar(100) DEFAULT NULL,
  `json` text DEFAULT NULL,
  `request` text DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `userCommit` int(11) DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table logError
# ------------------------------------------------------------

DROP TABLE IF EXISTS `logError`;

CREATE TABLE `logError` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(11) DEFAULT NULL,
  `context` varchar(100) DEFAULT NULL,
  `error` text DEFAULT NULL,
  `request` text DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `userCommit` int(11) DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table logHttp
# ------------------------------------------------------------

DROP TABLE IF EXISTS `logHttp`;

CREATE TABLE `logHttp` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `context` varchar(100) DEFAULT NULL,
  `request` text DEFAULT NULL,
  `json` text DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `userCommit` int(11) DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table logSql
# ------------------------------------------------------------

DROP TABLE IF EXISTS `logSql`;

CREATE TABLE `logSql` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `context` varchar(100) DEFAULT NULL,
  `request` text DEFAULT NULL,
  `json` text DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `userCommit` int(11) DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table main
# ------------------------------------------------------------

DROP TABLE IF EXISTS `main`;

CREATE TABLE `main` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name_en` varchar(100) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table ormCell
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ormCell`;

CREATE TABLE `ormCell` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT 2,
  `name` varchar(100) NOT NULL DEFAULT '',
  `date` int(11) DEFAULT NULL,
  `integer` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_ids` text DEFAULT NULL,
  `media` text DEFAULT NULL,
  `thumbnail` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `float` float DEFAULT NULL,
  `enum` int(11) DEFAULT NULL,
  `set` text DEFAULT NULL,
  `vimeo` text DEFAULT NULL,
  `medias` text DEFAULT NULL,
  `thumbnails` text DEFAULT NULL,
  `googleMaps` text DEFAULT NULL,
  `dateStart` int(11) DEFAULT NULL,
  `dateEnd` int(11) DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) NOT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table ormCells
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ormCells`;

CREATE TABLE `ormCells` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT 6,
  `name_en` varchar(100) DEFAULT 'LOL',
  `email` varchar(200) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table ormCol
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ormCol`;

CREATE TABLE `ormCol` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT 'lol2',
  `email` varchar(100) DEFAULT 'lol',
  `phone` varchar(100) DEFAULT NULL,
  `slug_fr` varchar(100) DEFAULT NULL,
  `def` varchar(100) NOT NULL DEFAULT 'James',
  `json` text DEFAULT NULL,
  `wysiwyg` text DEFAULT NULL,
  `googleMaps` text DEFAULT NULL,
  `myVideo` text DEFAULT NULL,
  `myRelation` int(11) DEFAULT NULL,
  `relationRange` int(11) DEFAULT NULL,
  `relationStr` varchar(100) DEFAULT NULL,
  `relationLang` int(11) DEFAULT NULL,
  `relationCall` int(11) DEFAULT NULL,
  `float` float DEFAULT NULL,
  `int` int(11) DEFAULT NULL,
  `media` text DEFAULT NULL,
  `medias` text DEFAULT NULL,
  `storage` text DEFAULT NULL,
  `multi` text DEFAULT NULL,
  `check` text DEFAULT NULL,
  `form` text DEFAULT NULL,
  `rangeInt` int(11) DEFAULT NULL,
  `other` text DEFAULT NULL,
  `other2` text DEFAULT NULL,
  `dateStart` int(11) DEFAULT NULL,
  `dateEnd` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_ids` text DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) unsigned DEFAULT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `date` (`date`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table ormCols
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ormCols`;

CREATE TABLE `ormCols` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT 1,
  `name_en` varchar(100) DEFAULT 'LOL',
  `email` varchar(200) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table ormDb
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ormDb`;

CREATE TABLE `ormDb` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name_en` varchar(200) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `ormDb` WRITE;
/*!40000 ALTER TABLE `ormDb` DISABLE KEYS */;

INSERT INTO `ormDb` (`id`, `name_en`, `dateAdd`)
VALUES
	(1,'james',10),
	(2,'james2',11),
	(3,'james3',10);

/*!40000 ALTER TABLE `ormDb` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ormRow
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ormRow`;

CREATE TABLE `ormRow` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT NULL,
  `name_en` varchar(100) DEFAULT NULL,
  `name_de` varchar(100) DEFAULT NULL,
  `content_en` text DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table ormRows
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ormRows`;

CREATE TABLE `ormRows` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table ormRowsIndex
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ormRowsIndex`;

CREATE TABLE `ormRowsIndex` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `activez` tinyint(1) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table ormRowsIndexDeep
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ormRowsIndexDeep`;

CREATE TABLE `ormRowsIndexDeep` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `activez` tinyint(1) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table ormSql
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ormSql`;

CREATE TABLE `ormSql` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table ormTable
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ormTable`;

CREATE TABLE `ormTable` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT 1,
  `name_en` varchar(100) DEFAULT 'LOL',
  `name_fr` varchar(100) DEFAULT NULL,
  `content_en` text DEFAULT NULL,
  `test_ok` int(11) DEFAULT NULL,
  `relation` int(11) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table ormTables
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ormTables`;

CREATE TABLE `ormTables` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table ormTableSibling
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ormTableSibling`;

CREATE TABLE `ormTableSibling` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `activez` tinyint(1) DEFAULT NULL,
  `name_en` varchar(100) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `content_en` text DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table queueEmail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `queueEmail`;

CREATE TABLE `queueEmail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) DEFAULT NULL,
  `context` varchar(100) DEFAULT NULL,
  `json` text DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table redirection
# ------------------------------------------------------------

DROP TABLE IF EXISTS `redirection`;

CREATE TABLE `redirection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT 1,
  `type` text DEFAULT NULL,
  `key` varchar(200) DEFAULT NULL,
  `value` varchar(200) DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `typeKey` (`type`(10),`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `session`;

CREATE TABLE `session` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `envType` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sid` varchar(100) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sid` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT NULL,
  `role` text DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `passwordReset` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `timezone` int(11) DEFAULT NULL,
  `dateLogin` int(11) DEFAULT NULL,
  `userAdd` int(11) DEFAULT NULL,
  `dateAdd` int(11) DEFAULT NULL,
  `userModify` int(11) DEFAULT NULL,
  `dateModify` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `active`, `role`, `username`, `password`, `passwordReset`, `email`, `timezone`, `dateLogin`, `userAdd`, `dateAdd`, `userModify`, `dateModify`)
VALUES
	(1,1,'1','nobody','$2y$11$8nFxo4CJfdzkT3ljRTrnAeYVsRIWDNlb/UDh.yRyuA9DN0GqZzMfe',NULL,'nobody@quid.com',NULL,1518037067,1,1384403273,1,1384403273),
	(2,1,'80','admin','$2y$11$8nFxo4CJfdzkT3ljRTrnAeYVsRIWDNlb/UDh.yRyuA9DN0GqZzMfe',NULL,'administrator@quid.com',NULL,1518037067,2,1384403273,2,1384403273),
	(3,1,'20','user','$2y$04$cuuc4e5Ek8d/0Q3GD4PM3.frGAWQTBsByvVn1m2aYut9A/spoGSGu',NULL,'user@quid.com',NULL,1648579406,3,1384403273,3,1648579406),
	(4,0,'20','inactive','$2y$11$8nFxo4CJfdzkT3ljRTrnAeYVsRIWDNlb/UDh.yRyuA9DN0GqZzMfe',NULL,'inactive@quid.com',NULL,1519241542,4,1384403273,4,1519241545),
	(5,0,'90','cli','$2y$11$8nFxo4CJfdzkT3ljRTrnAeYVsRIWDNlb/UDh.yRyuA9DN0GqZzMfe',NULL,'cli@quid.com',NULL,1519241542,5,1384403273,5,1519241545);

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
