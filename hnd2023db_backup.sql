/*
SQLyog Ultimate v8.55 
MySQL - 5.5.5-10.5.8-MariaDB : Database - hnd2023db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hnd2023db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hnd2023db`;

/*Table structure for table `tbl_department` */

DROP TABLE IF EXISTS `tbl_department`;

CREATE TABLE `tbl_department` (
  `dept_code` varchar(20) NOT NULL,
  `dept_name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `num_of_members` int(5) DEFAULT NULL,
  `created_user` varchar(20) DEFAULT NULL,
  `created_datetime` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`dept_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_department` */

insert  into `tbl_department`(`dept_code`,`dept_name`,`description`,`num_of_members`,`created_user`,`created_datetime`) values ('IT','Information Tech',NULL,25,'ravinath','2023-05-21 19:59:28');

/*Table structure for table `tbl_employee` */

DROP TABLE IF EXISTS `tbl_employee`;

CREATE TABLE `tbl_employee` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `tp` int(10) DEFAULT NULL,
  `nic` varchar(12) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `dept_code` varchar(20) DEFAULT NULL,
  `created_user` varchar(12) DEFAULT NULL,
  `created_datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_employee` */

insert  into `tbl_employee`(`id`,`first_name`,`last_name`,`gender`,`tp`,`nic`,`address`,`dept_code`,`created_user`,`created_datetime`) values (1,'Kumara','Perera','M',558884545,'5544455','Negombo','IT','admin','2023-05-21 20:03:58');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
