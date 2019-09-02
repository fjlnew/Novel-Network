/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.1.49-community : Database - qidian
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`qidian` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `qidian`;

/*Table structure for table `allbooks` */

DROP TABLE IF EXISTS `allbooks`;

CREATE TABLE `allbooks` (
  `bookid` int(10) NOT NULL AUTO_INCREMENT COMMENT '书籍编号',
  `kindid` int(2) NOT NULL COMMENT '书籍类型',
  `bookname` char(10) NOT NULL COMMENT '书籍名称',
  `bookautor` char(5) NOT NULL COMMENT '书籍作者',
  `bookintroduce` varchar(50) NOT NULL COMMENT '书籍简介',
  `bookReaders` int(10) NOT NULL COMMENT '书籍热度',
  `booksize` int(10) NOT NULL COMMENT '书籍字数',
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB AUTO_INCREMENT=14568557 DEFAULT CHARSET=utf8;

/*Data for the table `allbooks` */

insert  into `allbooks`(`bookid`,`kindid`,`bookname`,`bookautor`,`bookintroduce`,`bookReaders`,`booksize`) values (1000001,2,'夏逆','楚白','魔兽践踏，巨龙咆哮，巫师诅咒，魔法璀璨之光照耀知识灯塔！',29500,290200),(1000002,5,'工业心脏','长风浪xo','重生过去、畅想未来、梦幻现实，再塑传奇人生！',26800,225100),(1000003,1,'浩瀚仙秦','未名北','心潮澎湃，无限幻想，迎风挥击千层浪，少年不败热血！',71400,236800),(1000004,4,'九龙吞珠','齐家七哥','修仙觅长生，热血任逍遥，踏莲曳波涤剑骨，凭虚御风塑圣魂！',91900,320600),(1000006,5,'茵魂不散','奥比椰','考古探险、鉴宝收藏，侦探推理、诡秘分析，戏说传承古今中外的民间悬疑文化！',27800,222700),(1000007,6,'山村养殖','我喝大麦茶','【都市现实文物主题原创征文】参赛作品',27000,336100),(1000008,9,'科技垄断巨头','紫苏叶','【第四届全国现实主义网络文学征文大赛】参赛作品',67600,264800),(1000009,9,'重生之完美未来','紫苏叶子','人生在世，不过俯仰之间，纵然微小，绝不卑微',67600,264800),(10000010,5,'我有一支星际舰队','紫苏叶3','星海漫游，时空穿梭，机械科技，目标是未知的星辰大海！',67600,264800),(10000011,9,'大医凌然','222','医学院学生凌然心中有个小目标：要成为世界上最伟大',67600,264800),(10000012,9,'科技垄断巨头','紫苏叶2','【第四届全国现实主义网络文学征文大赛】参赛作品',67600,264800),(10000013,9,'我给西游加个点','紫苏叶54','修仙觅长生，热血任逍遥，踏莲曳波涤剑骨，凭虚御风塑圣魂！',67600,264800),(10000014,9,'科技垄断巨头','222','医学院学生凌然心中有个小目标：要成为世界上最伟大',67600,264800),(10000015,9,'大医凌然','55','医学院学生凌然心中有个小目标：要成为世界上最伟大',67600,264800),(10000016,9,'科技垄断巨头','547','【第四届全国现实主义网络文学征文大赛】参赛作品',67600,264800),(10000017,9,'大医凌然','紫苏叶子4','【第四届全国现实主义网络文学征文大赛】参赛作品',67600,264800),(10000018,9,'我给西游加个点','紫5叶子苏','修仙觅长生，热血任逍遥，踏莲曳波涤剑骨，凭虚御风塑圣魂！',67600,264800),(10000019,9,'科技垄断巨头','紫苏5子苏','【第四届全国现实主义网络文学征文大赛】参赛作品',67600,264800),(10000020,8,'大医凌然','页表飒飒','医学院学生凌然心中有个小目标：要成为世界上最伟大',66620,365044),(10000021,8,'我给西游加个点','页表飒','修仙觅长生，热血任逍遥，踏莲曳波涤剑骨，凭虚御风塑圣魂！',50002,365044),(10000022,8,'猛卒','页表飒','奥术大师大所大所大所大所多',545,365044),(10000023,8,'大医凌然','页表飒','医学院学生凌然心中有个小目标：要成为世界上最伟大',548,365044),(10000024,8,'猛卒','页表飒','奥术大师大所大所大所大所多',77589,365044),(10000025,8,'大医凌然','页表飒','奥术大师大所大所大所大所多',55656,365044),(10000026,8,'我给西游加个点','页表飒','修仙觅长生，热血任逍遥，踏莲曳波涤剑骨，凭虚御风塑圣魂！',66620,365044),(10000029,8,'猛卒','页表飒','奥术大师大所大所大所大所多',55555,365044),(10001025,4,'宠物天王','网速','偶然下载的可疑app捕捉神奇宠物当伙伴',60000,453200),(12345346,1,'扭曲界域','答复','庞大的神话传说、神秘陨灭的古文明、难以想像的诡秘',5456,453543),(12455353,3,'外挂傍身的杂草','babt','来到异界，成为大佬门前一株杂草，没事就被踩一脚。',420045,45374),(13452042,2,'美食供应商','沙阿斯顿','厨神小店带你领略不一样的美食，不一样的故事',5645,5457),(14568556,4,'西游之掠夺万界','阿萨德','万界无尽，周易的证道之路注定不凡。',12353,45653);

/*Table structure for table `bookkinds` */

DROP TABLE IF EXISTS `bookkinds`;

CREATE TABLE `bookkinds` (
  `kindid` int(2) NOT NULL AUTO_INCREMENT COMMENT '种类编号',
  `kindname` char(5) NOT NULL COMMENT '种类名称',
  `kindnum` int(20) NOT NULL COMMENT '种类数量',
  PRIMARY KEY (`kindid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `bookkinds` */

insert  into `bookkinds`(`kindid`,`kindname`,`kindnum`) values (1,'玄幻',721722),(2,'奇幻',159241),(3,'武侠',45378),(4,'仙侠',236460),(5,'都市',374244),(6,'现实',43492),(7,'军事',26023),(8,'历史',77225),(9,'游戏',108311),(10,'体育',9109),(11,'科幻',157333),(12,'悬疑',66996),(13,'女生网',800308),(14,'轻小说',113490);

/*Table structure for table `captername` */

DROP TABLE IF EXISTS `captername`;

CREATE TABLE `captername` (
  `bookid` int(10) NOT NULL,
  `capterid` int(3) NOT NULL,
  `captername` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `captername` */

insert  into `captername`(`bookid`,`capterid`,`captername`) values (1000001,1,'我家是大夏第一逆贼'),(1000001,2,'侠少是怎样炼成的'),(1000001,3,'侠少是怎样炼成的'),(1000001,4,'江湖你好');

/*Table structure for table `onebook` */

DROP TABLE IF EXISTS `onebook`;

CREATE TABLE `onebook` (
  `bookid` int(10) NOT NULL COMMENT '书籍名称',
  `bookchapter` int(5) NOT NULL AUTO_INCREMENT COMMENT '章节号',
  `bookchaptername` char(30) NOT NULL COMMENT '章节名称',
  `bookchapterview` longtext COMMENT '章节内容',
  `chaptersize` int(10) NOT NULL COMMENT '章节字数',
  `chapterid` int(3) NOT NULL COMMENT '章节编号',
  KEY `bookchapter` (`bookchapter`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

/*Data for the table `onebook` */

insert  into `onebook`(`bookid`,`bookchapter`,`bookchaptername`,`bookchapterview`,`chaptersize`,`chapterid`) values (1000001,1,'老爹究竟在想啥',NULL,12312,1),(1000001,2,'我家原来竟有如此宝贝！',NULL,12312,1),(1000001,3,'巴拉巴拉，芝麻开门',NULL,12312,1),(1000001,4,'这个世界我有点眼熟……',NULL,12312,1),(1000001,5,'游戏的世界',NULL,12312,1),(1000001,6,'鲁纳村寻宝记',NULL,12312,1),(1000001,7,'此宝竟恐怖如斯',NULL,12312,1),(1000001,8,'该来的终于来了',NULL,33542,1),(1000001,9,'鲁纳村寻宝记',NULL,12312,1),(1000001,10,'鲁纳村寻宝记',NULL,12312,1),(1000001,11,'鲁纳村寻宝记',NULL,33542,1),(1000001,12,'鲁纳村寻宝记',NULL,33542,1),(1000001,13,'鲁纳村寻宝记',NULL,33542,2),(1000001,14,'鲁纳村寻宝记',NULL,12312,2),(1000001,15,'鲁纳村寻宝记',NULL,12312,2),(1000001,16,'鲁纳村寻宝记',NULL,33542,2),(1000001,17,'鲁纳村寻宝记',NULL,33542,2),(1000001,18,'鲁纳村寻宝记',NULL,12312,2),(1000001,19,'鲁纳村寻宝记',NULL,33542,2),(1000001,20,'鲁纳村寻宝记',NULL,33542,2),(1000001,21,'鲁纳村寻宝记',NULL,12312,2),(1000001,22,'鲁纳村寻宝记',NULL,33542,2),(1000001,23,'鲁纳村寻宝记',NULL,12312,2),(1000001,24,'鲁纳村寻宝记',NULL,33542,2),(1000001,25,'鲁纳村寻宝记',NULL,12312,3),(1000001,26,'鲁纳村寻宝记',NULL,12312,3),(1000001,27,'鲁纳村寻宝记',NULL,12312,3),(1000001,28,'鲁纳村寻宝记',NULL,12312,3),(1000001,29,'鲁纳村寻宝记',NULL,33542,3),(1000001,30,'鲁纳村寻宝记',NULL,12312,3),(1000001,31,'鲁纳村寻宝记',NULL,33542,3),(1000001,32,'鲁纳村寻宝记',NULL,12312,3),(1000001,33,'鲁纳村寻宝记',NULL,33542,3),(1000001,34,'鲁纳村寻宝记',NULL,12312,4),(1000001,35,'鲁纳村寻宝记',NULL,33542,4),(1000001,36,'鲁纳村寻宝记',NULL,12312,4),(1000001,37,'asdasd',NULL,12312,4);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userid` int(5) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `userphone` char(11) NOT NULL COMMENT '电话号码',
  `username` char(20) DEFAULT NULL COMMENT '用户姓名',
  `userpassword` char(16) NOT NULL COMMENT '密码',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`userid`,`userphone`,`username`,`userpassword`) values (11,'1456287838','李四','11'),(12,'14562878381','李四','12'),(13,'12345678691','user12345678691','123456'),(14,'18881203209','user18881203209','123456'),(15,'12345354334','user12345354334','123456'),(16,'15456456455','user15456456455','123456'),(17,'15456456456','user15456456456','123456'),(18,'18881203209','user18881203209','520544'),(19,'123','123','123'),(20,'1','1','1'),(21,'12312312322','user12312312322','123456');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
