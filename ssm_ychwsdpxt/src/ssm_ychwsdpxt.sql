/*
SQLyog Ultimate v12.2.6 (64 bit)
MySQL - 5.5.53 : Database - ssm_ychwsdpxt
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm_ychwsdpxt` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `ssm_ychwsdpxt`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `adminid` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`adminid`,`username`,`password`,`realname`,`contact`,`addtime`) values 
('1','admin','123456','admin','admin','-'),
('A20200412084244170','admin001','123456','管理员1','15211111111','2022-04-12'),
('A20200412090217630','admin002','123456','管理员2','15222222222','2022-04-12');

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `articleid` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `hits` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`articleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `article` */

insert  into `article`(`articleid`,`title`,`image`,`contents`,`addtime`,`hits`) values 
('A20190325053950736','测试测试','upfiles/20190325053946.jpg','<p>1111</p>\r\n','2022-03-25','1'),
('A20200412084433911','新品发布','upfiles/20200412084420.jpg','<p>今天有个演唱会</p>\r\n','2022-04-12','1'),
('A20200412090335156','新闻公告','upfiles/20200412090327.jpg','<p>王力宏的新闻公告</p>\r\n','2022-04-12','2');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `cartid` varchar(255) NOT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `concertid` varchar(255) DEFAULT NULL,
  `ticketid` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cartid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cart` */

/*Table structure for table `cate` */

DROP TABLE IF EXISTS `cate`;

CREATE TABLE `cate` (
  `cateid` varchar(255) NOT NULL,
  `catename` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cate` */

insert  into `cate`(`cateid`,`catename`,`memo`) values 
('C20190324122622544','流行','流行'),
('C20190324152708973','DJ','DJ'),
('C20190324153023404','摇滚','摇滚'),
('C20200412090415178','新类型演唱会','11111');

/*Table structure for table `concert` */

DROP TABLE IF EXISTS `concert`;

CREATE TABLE `concert` (
  `concertid` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `cateid` varchar(255) DEFAULT NULL,
  `actor` varchar(255) DEFAULT NULL,
  `recommend` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `hits` varchar(255) DEFAULT NULL,
  `sellnum` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`concertid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `concert` */

insert  into `concert`(`concertid`,`title`,`image`,`cateid`,`actor`,`recommend`,`address`,`addtime`,`hits`,`sellnum`,`contents`) values 
('C20190324132817899','2020南京音乐节','upfiles/20190324132626.jpg','C20190324122622544','南京音乐节','是','南京站','2022-03-30','12','0','<p>南京音乐节--我来了</p>\r\n'),
('C20190324132900359','2020无锡音乐节','upfiles/20190324132838.jpg','C20190324122622544','无锡音乐节','是','无锡站','2022-03-30','7','0','<p>无锡音乐节--我来了</p>\r\n'),
('C20190324132922833','2020宿迁音乐节','upfiles/20190324132908.jpg','C20190324122622544','宿迁音乐节','是','宿迁站','2022-03-30','1','0','<p>宿迁音乐节--我来了</p>\r\n'),
('C20190324132940717','2020南通音乐节','upfiles/20190324132928.jpg','C20190324122622544','南通音乐节','是','南通站','2022-03-30','1','0','<p>南通音乐节--我来了</p>\r\n'),
('C20190324144538905','2020徐州音乐节','upfiles/20190324144527.jpg','C20190324122622544','徐州音乐节','是','武汉站','2022-03-31','0','0','<p>徐州音乐节--我来了</p>\r\n'),
('C20190324144849287','2019扬州音乐节','upfiles/20190324144837.jpg','C20190324122622544','扬州音乐节','是','扬州之夜','2022-03-30','0','0','<p>扬州音乐节--我来了</p>\r\n'),
('C20190324152822656','刘德华演唱会','upfiles/20190324152814.jpg','C20190324152708973','刘德华演唱会','是','北京站','2022-03-31','2','0','<p>刘德华演唱会--我来了</p>\r\n'),
('C20190324152923179','武汉站音乐节','upfiles/20190324152905.jpg','C20190324152708973','武汉站音乐节','是','武汉站','2022-03-31','0','0','<p>武汉站音乐节--我来了</p>\r\n'),
('C20190324152947147','爱不爱演唱会武汉站','upfiles/20190324152928.jpg','C20190324152708973','爱不爱演唱会武汉站','是','武汉站','2022-03-31','1','0','<p>爱不爱演唱会武汉站--我来了</p>\r\n'),
('C20190324153008397','群星演唱会','upfiles/20190324152953.jpg','C20190324152708973','群星演唱会','是','北京站','2022-03-31','2','0','<p>群星演唱会--我来了</p>\r\n'),
('C20190324153046597','巡回演唱会','upfiles/20190324153032.jpg','C20190324153023404','巡回演唱会','是','广州站','2022-03-31','0','0','<p>巡回演唱会--我来了</p>\r\n'),
('C20190324153105215','全球经典音乐节','upfiles/20190324153051.jpg','C20190324153023404','全球经典音乐节','是','北京','2022-03-31','5','3','<p>全球经典音乐节--我来了</p>\r\n'),
('C20190325054052999','2020演唱会 ','upfiles/20190325054035.jpg','C20190324153023404','2020演唱会 ','是','昆明站','2022-03-31','11','2','<p>2020演唱会 --我来了</p>\r\n'),
('C20200412090521143','刘德华的演唱会','upfiles/20200412090446.jpg','C20200412090415178','华仔','是','广州','2022-04-13','8','1','<p>这个演唱会一定会很精彩</p>\r\n');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `ordersid` varchar(255) NOT NULL,
  `ordercode` varchar(255) DEFAULT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `concertid` varchar(255) DEFAULT NULL,
  `ticketid` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ordersid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`ordersid`,`ordercode`,`usersid`,`concertid`,`ticketid`,`price`,`num`,`total`,`status`) values 
('O20190324200732317','PD20190324200732699','U20190324184927582','C20190324153105215','T20190324185000662','229','3','687.00','已出票'),
('O20190324200732396','PD20190324200732298','U20190324184927582','C20190324153105215','T20190324185012937','699','1','699.00','未付款'),
('O20190324200732702','PD20190324200732591','U20190324184927582','C20190324153105215','T20190324185007874','399','2','798.00','未付款'),
('O20190325054222225','PD20190325054222884','U20190325054151435','C20190325054052999','T20190325054121215','399','1','399.00','已出票'),
('O20190325054222330','PD20190325054222648','U20190325054151435','C20190325054052999','T20190325054136575','1200','3','3600.00','未付款'),
('O20190325054222514','PD20190325054222494','U20190325054151435','C20190325054052999','T20190325054112215','229','1','229.00','已出票'),
('O20200412083435909','PD20200412083435177','U20190324184927582','C20190325054052999','T20190325054112215','229','1','229.00','未付款'),
('O20200412090657490','PD20200412090657633','U20200412090255608','C20200412090521143','T20200412090556734','100','1','100.00','已出票'),
('O20200412091233866','PD20200412091233739','U20200412090255608','C20200412090521143','T20200412090615462','300','1','300.00','未付款');

/*Table structure for table `ticket` */

DROP TABLE IF EXISTS `ticket`;

CREATE TABLE `ticket` (
  `ticketid` varchar(255) NOT NULL,
  `concertid` varchar(255) DEFAULT NULL,
  `areaname` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `storage` varchar(255) DEFAULT NULL,
  `sellnum` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ticketid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ticket` */

insert  into `ticket`(`ticketid`,`concertid`,`areaname`,`price`,`storage`,`sellnum`,`balance`) values 
('T20190324153122616','C20190324132817899','A区','169','150','0','0'),
('T20190324153140582','C20190324132817899','B区','399','150','0','0'),
('T20190324153152536','C20190324132817899','C区','599','150','0','0'),
('T20190324153203665','C20190324132817899','D区','699','150','0','0'),
('T20190324184952581','C20190324153105215','A区','149','150','0','0'),
('T20190324185000662','C20190324153105215','B区','229','150','3','147'),
('T20190324185007874','C20190324153105215','C区','399','150','0','0'),
('T20190324185012937','C20190324153105215','D区','699','150','0','0'),
('T20190325054112215','C20190325054052999','A区','229','150','1','149'),
('T20190325054121215','C20190325054052999','B区','399','150','1','149'),
('T20190325054129463','C20190325054052999','C区','699','450','0','0'),
('T20190325054136575','C20190325054052999','D区','1200','150','0','0'),
('T20200412090556734','C20200412090521143','A区','100','100','1','99'),
('T20200412090605114','C20200412090521143','B区','200','200','0','0'),
('T20200412090615462','C20200412090521143','C区','300','300','0','0');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `usersid` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `regdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`usersid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`usersid`,`username`,`password`,`realname`,`sex`,`birthday`,`contact`,`address`,`regdate`) values 
('U20190324184927582','user1','123456','123123','男','2022-03-24','15211111111','南京雨花台','2022-03-24'),
('U20190325054151435','user2','123456','234234','男','2022-03-25','15222222222','宿迁','2022-03-25'),
('U20200412090255608','user3','123456','用户3','男','2022-04-12','15211111111','连云港','2022-04-12');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
