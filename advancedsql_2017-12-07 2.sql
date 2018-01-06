# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.19)
# Database: advancedsql
# Generation Time: 2017-12-07 06:09:09 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table article
# ------------------------------------------------------------

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `views` int(10) unsigned NOT NULL,
  `comments` int(10) unsigned NOT NULL,
  `title` varbinary(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_article_cv` (`category_id`,`views`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;

INSERT INTO `article` (`id`, `author_id`, `category_id`, `views`, `comments`, `title`, `content`)
VALUES
	(1,1,1,1,1,X'31','1'),
	(2,2,2,2,2,X'32','2'),
	(3,1,1,3,3,X'33','3');

/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table book
# ------------------------------------------------------------

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `bookid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bookid`),
  KEY `Y` (`card`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;

INSERT INTO `book` (`bookid`, `card`)
VALUES
	(2,2),
	(10,2),
	(8,5),
	(5,6),
	(9,7),
	(11,7),
	(12,8),
	(20,8),
	(18,9),
	(4,11),
	(19,11),
	(7,12),
	(16,13),
	(14,15),
	(3,16),
	(15,16),
	(6,18),
	(17,18),
	(1,19),
	(13,20);

/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table class
# ------------------------------------------------------------

DROP TABLE IF EXISTS `class`;

CREATE TABLE `class` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;

INSERT INTO `class` (`id`, `card`)
VALUES
	(1,17),
	(2,3),
	(3,5),
	(4,13),
	(5,11),
	(6,17),
	(7,10),
	(8,20),
	(9,7),
	(10,15),
	(11,12),
	(12,15),
	(13,20),
	(14,13),
	(15,3),
	(16,18),
	(17,1),
	(18,9),
	(19,4),
	(20,10);

/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mylock
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mylock`;

CREATE TABLE `mylock` (
  ` id` int(11) NOT NULL AUTO_INCREMENT,
  ` name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (` id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

LOCK TABLES `mylock` WRITE;
/*!40000 ALTER TABLE `mylock` DISABLE KEYS */;

INSERT INTO `mylock` (` id`, ` name`)
VALUES
	(1,'a'),
	(2,'b'),
	(3,'c'),
	(4,'d'),
	(5,'e');

/*!40000 ALTER TABLE `mylock` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table phone
# ------------------------------------------------------------

DROP TABLE IF EXISTS `phone`;

CREATE TABLE `phone` (
  `phoneid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card` int(10) unsigned NOT NULL,
  PRIMARY KEY (`phoneid`),
  KEY `z` (`card`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

LOCK TABLES `phone` WRITE;
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;

INSERT INTO `phone` (`phoneid`, `card`)
VALUES
	(2,1),
	(4,1),
	(9,1),
	(17,2),
	(6,3),
	(7,3),
	(1,5),
	(8,6),
	(18,6),
	(19,6),
	(10,7),
	(16,7),
	(14,8),
	(3,9),
	(11,10),
	(12,10),
	(20,10),
	(5,17),
	(15,18),
	(13,20);

/*!40000 ALTER TABLE `phone` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table staffs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `staffs`;

CREATE TABLE `staffs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(24) NOT NULL DEFAULT '' COMMENT '姓名',
  `age` int(11) NOT NULL DEFAULT '0' COMMENT '年龄',
  `pos` varchar(20) NOT NULL DEFAULT '' COMMENT '职位',
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '入职时间',
  PRIMARY KEY (`id`),
  KEY `idx_staffs_nameAgePos` (`NAME`,`age`,`pos`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='员工记录表';

LOCK TABLES `staffs` WRITE;
/*!40000 ALTER TABLE `staffs` DISABLE KEYS */;

INSERT INTO `staffs` (`id`, `NAME`, `age`, `pos`, `add_time`)
VALUES
	(1,'z3',22,'manager','2017-11-30 14:50:36'),
	(2,'July',23,'dev','2017-11-30 14:50:36');

/*!40000 ALTER TABLE `staffs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tbl_dept
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_dept`;

CREATE TABLE `tbl_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deptName` varchar(30) DEFAULT NULL,
  `locAdd` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

LOCK TABLES `tbl_dept` WRITE;
/*!40000 ALTER TABLE `tbl_dept` DISABLE KEYS */;

INSERT INTO `tbl_dept` (`id`, `deptName`, `locAdd`)
VALUES
	(1,'RD','11'),
	(2,'HR','12'),
	(3,'MK','13'),
	(4,'MIS','14'),
	(5,'FD','15');

/*!40000 ALTER TABLE `tbl_dept` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tbl_emp
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_emp`;

CREATE TABLE `tbl_emp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `deptId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_dept_id` (`deptId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

LOCK TABLES `tbl_emp` WRITE;
/*!40000 ALTER TABLE `tbl_emp` DISABLE KEYS */;

INSERT INTO `tbl_emp` (`id`, `name`, `deptId`)
VALUES
	(1,'z3',1),
	(2,'z4',1),
	(3,'z5',1),
	(4,'w5',2),
	(5,'w6',2),
	(6,'s7',3),
	(7,'s8',4),
	(8,'s9',51);

/*!40000 ALTER TABLE `tbl_emp` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tblA
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tblA`;

CREATE TABLE `tblA` (
  `age` int(11) DEFAULT NULL,
  `birth` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `idx_A_ageBirth` (`age`,`birth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tblA` WRITE;
/*!40000 ALTER TABLE `tblA` DISABLE KEYS */;

INSERT INTO `tblA` (`age`, `birth`)
VALUES
	(22,'2017-12-04 15:33:18'),
	(23,'2017-12-04 15:33:18'),
	(24,'2017-12-04 15:33:18');

/*!40000 ALTER TABLE `tblA` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table test_innodb_lock
# ------------------------------------------------------------

DROP TABLE IF EXISTS `test_innodb_lock`;

CREATE TABLE `test_innodb_lock` (
  `a` int(11) DEFAULT NULL,
  `b` varchar(16) DEFAULT NULL,
  KEY `test_innodb_a_ind` (`a`),
  KEY `test_innodb_lock_b_ind` (`b`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `test_innodb_lock` WRITE;
/*!40000 ALTER TABLE `test_innodb_lock` DISABLE KEYS */;

INSERT INTO `test_innodb_lock` (`a`, `b`)
VALUES
	(1,'b2'),
	(3,'3'),
	(4,'4000'),
	(5,'5000'),
	(6,'6000'),
	(7,'7000'),
	(8,'8000'),
	(9,'9000'),
	(1,'b1');

/*!40000 ALTER TABLE `test_innodb_lock` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table test03
# ------------------------------------------------------------

DROP TABLE IF EXISTS `test03`;

CREATE TABLE `test03` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c1` char(10) DEFAULT NULL,
  `c2` char(10) DEFAULT NULL,
  `c3` char(10) DEFAULT NULL,
  `c4` char(10) DEFAULT NULL,
  `c5` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_test03_c1234` (`c1`,`c2`,`c3`,`c4`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

LOCK TABLES `test03` WRITE;
/*!40000 ALTER TABLE `test03` DISABLE KEYS */;

INSERT INTO `test03` (`id`, `c1`, `c2`, `c3`, `c4`, `c5`)
VALUES
	(1,'a1','a2','a3','a4','a5'),
	(2,'b1','b2','b3','b4','b5'),
	(3,'c1','c2','c3','c4','c5'),
	(4,'d1','d2','d3','d4','d5'),
	(5,'e1','e2','e3','e4','e5');

/*!40000 ALTER TABLE `test03` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
