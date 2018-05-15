/*
SQLyog - Free MySQL GUI v5.17
Host - 5.0.24-community-nt : Database - facebook
*********************************************************************
Server version : 5.0.24-community-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `facebook`;

USE `facebook`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `friends` */

DROP TABLE IF EXISTS `friends`;

CREATE TABLE `friends` (
  `friend_id` int(10) unsigned NOT NULL auto_increment,
  `profile_id` int(10) unsigned NOT NULL,
  `registration_id` int(10) unsigned NOT NULL,
  `profile_display` varchar(200) default 'public',
  PRIMARY KEY  (`friend_id`),
  KEY `FK_friends_profile` (`profile_id`),
  KEY `FK_friends_registration` (`registration_id`),
  CONSTRAINT `FK_friends_profile` FOREIGN KEY (`profile_id`) REFERENCES `registration` (`registration_id`),
  CONSTRAINT `FK_friends_registration` FOREIGN KEY (`registration_id`) REFERENCES `registration` (`registration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `friends` */

insert into `friends` (`friend_id`,`profile_id`,`registration_id`,`profile_display`) values (1,5,6,'public');
insert into `friends` (`friend_id`,`profile_id`,`registration_id`,`profile_display`) values (2,5,6,'public');

/*Table structure for table `post` */

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `post_id` int(10) unsigned NOT NULL auto_increment,
  `sender_id` int(10) unsigned NOT NULL,
  `reciver_id` int(10) unsigned NOT NULL,
  `description` varchar(500) default NULL,
  `image_path` varchar(100) default NULL,
  `post_display` varchar(45) NOT NULL default 'public',
  `po_date` datetime default NULL,
  `blockfriend` varchar(300) default NULL,
  PRIMARY KEY  (`post_id`),
  KEY `FK_post_registration` (`sender_id`),
  KEY `FK_post_registration_2` (`reciver_id`),
  CONSTRAINT `FK_post_registration` FOREIGN KEY (`sender_id`) REFERENCES `registration` (`registration_id`),
  CONSTRAINT `FK_post_registration_2` FOREIGN KEY (`reciver_id`) REFERENCES `registration` (`registration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `post` */

insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (1,6,5,'pralhad testing','noimage','private','2016-11-13 12:56:57',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (3,5,5,'hello','noimage','public','2014-11-16 10:23:59',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (5,5,5,'testing wall for public','noimage','public','2014-11-16 10:24:01',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (6,5,5,'please update status','noimage','public','2014-11-16 10:24:03',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (7,6,5,'please update status2','noimage','public','2014-11-16 10:24:04',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (9,5,5,'please update status4','noimage','public','2014-11-16 10:24:06',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (11,6,5,'please update status4','noimage','public','2014-11-16 10:24:07',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (12,5,5,'please update status4','noimage','public','2014-11-16 10:24:09',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (15,5,6,'sandeep','noimage','private','2014-11-16 10:24:14',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (16,6,5,'sanddep','noimage','public','2014-11-16 10:24:13',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (17,6,5,'HI PRALHAD','noimage','private','2014-11-16 10:24:12',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (19,5,6,'hi','noimage','public','2014-11-16 10:24:16',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (20,5,5,'post','noimage','public','2014-11-16 10:24:11',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (21,5,5,'hi hell ','noimage','public','2014-11-16 10:21:58',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (22,6,5,'hi','noimage','public',NULL,NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (23,5,5,'hi hjjghg gh gh hg','Post/','private','2014-11-16 11:56:48',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (24,5,5,'fdfghrtttttttttrtyrrt rtyrt','Post/','private','2014-11-16 11:57:11',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (25,5,5,'hdgjhf gd fhdsgfhgsdhgfsdhgfhjg','Post/','private','2014-11-16 11:57:45',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (26,5,5,'hg','Post/','public','2014-11-16 12:00:34',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (27,5,5,'hghh    h j','Post/','friend','2014-11-16 12:01:17',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (28,5,5,'uifik sdhfsjdhfj djfhsd djhsd  sd fdjsdfsdjhd shf df jsdfsdfsd fdsf d fd fdf sdhfjsdjsdhhdjhjkhfjhsjdhfjsdhfdf   dj hj dhfjhd hdh hf dhf fdhfjdhfdfhd f dhjdhjf hsdj hjfhj df hd hfhdfjh jdjdhjfhd fdh dfhdhjd dhjhjh djh dj','Post/','public','2014-11-16 16:10:54',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (29,5,5,'   dh dh kjhfkjhkjghfkjh nghhdbjhd  n jkhkjhkjh kjhh jh j hhjhfdjhh jkhkdhjdhjhdjhdjhh jhdjhjhdjhhhkd','Post/','public','2014-11-16 16:12:09',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (30,5,5,'jhj g jhhhjghjghg h hghgh','Post/','private','2014-11-16 16:28:50',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (31,5,5,'hjgh hg hjgjhgjhgjhgg','Post/','public','2014-11-16 16:30:22',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (32,5,5,'hjhjhekjh berjhhjwegjg hgwhjeg jhg','Post/','private','2014-11-16 16:35:18',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (33,5,5,'g hgghfhgfhgfhgh  fgff fhhgfgh','post/','public','2014-11-16 16:36:14',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (34,5,5,'dhfjsd jjdhfjfdjf hjsh','post/Penguins.jpg','friend','2014-11-16 16:49:40',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (35,5,5,'drtdg        grg','post/Desert.jpg','private','2014-11-16 16:51:04',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (36,5,5,'kkhjk jhjkhkj hj hgh','post/Penguins.jpg','public','2014-11-16 16:53:36',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (37,14,14,'Screenshot','post/Screenshot (1).png','public','2018-02-04 04:36:02',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (38,16,16,'image','post/Screenshot (2).png','public','2018-02-20 22:23:28',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (39,14,14,'captured image','post/Screenshot (4).png','private','2018-02-20 22:24:35',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (40,16,16,'custom','noimage','custom','2018-02-25 05:16:50',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (41,16,16,'bcgf','noimage','custom','2018-02-25 05:18:16',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (42,16,16,'dsf','noimage','custom','2018-02-25 05:18:28',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (43,16,16,'fs','noimage','custom','2018-02-25 05:21:11',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (44,16,16,'dsf','noimage','custom','2018-02-25 05:22:13',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (45,16,16,'dsf','noimage','custom','2018-02-25 05:23:03',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (46,16,16,'sad','noimage','custom','2018-02-27 00:33:00',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (47,16,16,'asd','noimage','custom','2018-02-27 00:38:57',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (48,16,16,'sd','noimage','custom','2018-02-27 00:43:28',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (49,16,16,'ancd','noimage','custom','2018-02-27 13:05:15',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (50,16,16,'asd','noimage','custom','2018-02-27 14:01:28',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (51,16,16,'sad','noimage','custom','2018-02-27 14:38:21',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (52,16,16,'df','noimage','custom','2018-02-27 14:49:29',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (53,16,16,'sf','noimage','public','2018-02-27 15:01:29',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (54,16,16,'dsf','noimage','custom','2018-02-27 15:11:45',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (55,16,16,'sdf','noimage','Ankit Chouksey <ankit.chouksey123@gmail.com>','2018-02-27 15:12:06',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (56,16,16,'sdf','noimage','custom','2018-02-27 15:13:41',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (57,16,16,'asd','noimage','custom','2018-02-27 15:15:56',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (58,16,16,'sdf','noimage','custom','2018-02-27 15:24:39',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (59,16,16,'sd','noimage','custom','2018-02-27 15:25:16',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (60,16,16,'dsf','noimage','custom','2018-02-27 15:31:13',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (61,16,16,'df','noimage','custom','2018-02-27 15:33:42',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (62,16,16,'ghfhg','noimage','custom','2018-02-27 16:27:53',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (63,16,16,'hghj','noimage','custom','2018-02-27 16:33:33',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (64,16,16,'kjhjh','noimage','Ankit Chouksey ankit.chouksey123@gmail.com ','2018-02-27 16:35:43','');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (65,16,16,'kjhjh','noimage','Ankit Chouksey ankit.chouksey123@gmail.com ','2018-02-27 16:35:43',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (66,16,16,'ghhh','noimage','custom','2018-02-27 16:42:54',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (67,16,16,'ghh','noimage','Sandeep Singh sandeep@gmail.com ','2018-02-27 16:43:35','');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (68,16,16,'ghh','noimage','Sandeep Singh sandeep@gmail.com ','2018-02-27 16:43:35',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (69,16,16,'jhg','noimage','custom','2018-02-27 16:47:59',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (70,16,16,'jjhhh','noimage','pralhad ingole pralhad@gmail.com ','2018-02-27 16:53:47','');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (71,16,16,'jjhhh','noimage','pralhad ingole pralhad@gmail.com ','2018-02-27 16:53:47',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (72,16,16,'hgf','noimage','custom','2018-02-27 16:54:04',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (73,16,16,'jhggg','noimage','Ankit Chouksey ankit.chouksey123@gmail.com ','2018-02-27 16:54:17','');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (74,16,16,'jhggg','noimage','Ankit Chouksey ankit.chouksey123@gmail.com ','2018-02-27 16:54:17',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (75,16,16,'hgf','noimage','custom','2018-02-27 17:03:17',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (76,16,16,'jhg','noimage','Ankit Chouksey ankit.chouksey123@gmail.com ','2018-02-27 17:03:35','');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (77,16,16,'jhg','noimage','Ankit Chouksey ankit.chouksey123@gmail.com ','2018-02-27 17:03:35',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (78,16,16,'hgf','noimage','custom','2018-02-27 17:22:39',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (79,16,16,'jhg','noimage','Ankit Chouksey ankit.chouksey123@gmail.com ','2018-02-27 17:22:54','adhar.rajput21@gmail.com,ankit.chouksey123@gmail.com');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (80,16,16,'jhg','noimage','Ankit Chouksey ankit.chouksey123@gmail.com ','2018-02-27 17:22:54',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (81,16,16,'hgf','noimage','custom','2018-02-27 17:27:22',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (82,16,16,'mnbvc','noimage','Ankit Chouksey ankit.chouksey123@gmail.com ','2018-02-27 17:27:34',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (83,16,16,'hgfd','noimage','custom','2018-02-27 17:28:57',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (84,16,16,'nbvc','noimage','Ankit Chouksey ankit.chouksey123@gmail.com ','2018-02-27 17:29:12','adhar.rajput21@gmail.com,ankit.chouksey123@gmail.com');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (85,16,16,'nbvc','noimage','Ankit Chouksey ankit.chouksey123@gmail.com ','2018-02-27 17:29:12',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (86,16,16,'asd','noimage','custom','2018-02-27 17:37:21',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (87,16,16,'jhd','noimage','Ankit Chouksey ankit.chouksey123@gmail.com ','2018-02-27 17:39:19','adhar.rajput21@gmail.com,ankit.chouksey123@gmail.com');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (88,16,16,'jhd','noimage','Ankit Chouksey ankit.chouksey123@gmail.com ','2018-02-27 17:41:11',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (89,16,16,'jhf','noimage','custom','2018-02-27 17:46:26',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (90,16,16,'oiuyte','noimage','custom','2018-02-27 17:46:40','adhar.rajput21@gmail.com,ankit.chouksey123@gmail.com');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (91,16,16,'oiuyte','noimage','custom','2018-02-27 17:46:40',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (92,16,16,'jhgfty','noimage','custom','2018-02-27 17:49:06','adhar.rajput21@gmail.com,ankit.chouksey123@gmail.com');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (93,5,5,'dsf','noimage','custom','2018-03-01 22:29:27','adhar.rajput21@gmail.com,pralhad@gmail.com');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (94,5,5,'jjhghj','noimage','custom','2018-03-02 01:00:00','adhar.rajput21@gmail.com,ankit.chouksey123@gmail.com');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (95,19,19,'hello','noimage','custom','2018-03-05 22:21:10','adhar.rajput21@gmail.com,ankit.chouksey123@gmail.com');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (96,14,14,'cgfdg','noimage','public','2018-03-05 22:35:07',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (97,14,14,'sf','noimage','public','2018-03-09 01:52:50',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (98,14,14,'sd','noimage','public','2018-03-15 23:16:47',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (99,14,14,'fg','noimage','custom','2018-03-18 21:51:23','adhar.rajput21@gmail.com,ankit.chouksey123@gmail.com');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (100,14,14,'sdf','noimage','public','2018-03-19 00:24:59',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (101,14,14,'sdf','noimage','custom','2018-03-19 00:42:46','adhar.rajput2121@gmail.com,pralhad.ingole@saiinfocorpsolution.com');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (102,14,14,'dfg','noimage','custom','2018-03-19 00:46:26','sandeep@gmail.com,pralhad.ingole@saiinfocorpsolution.com');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (103,14,14,'sd','noimage','custom','2018-03-19 01:34:38','adhar.rajput21@gmail.com,pralhad.ingole@saiinfocorpsolution.com');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (104,14,14,'erty','noimage','custom','2018-03-19 01:42:57','adhar.rajput21@gmail.com,pralhad.ingole@saiinfocorpsolution.com');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (105,16,16,'erty','noimage','public','2018-03-19 01:44:04',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (106,14,14,'hello','noimage','custom','2018-03-27 22:48:37','adhar.rajput21@gmail.com,pralhad.ingole@saiinfocorpsolution.com');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (107,16,16,'Hi','noimage','custom','2018-03-27 22:49:36','');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (108,14,14,'posting by removing adher','noimage','custom','2018-03-27 22:51:36','adhar.rajput2121@gmail.com,pralhad.ingole@saiinfocorpsolution.com');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (109,14,14,'df','post/Screenshot(8).png','public','2018-03-28 00:22:14',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (110,14,14,'sf','post/Capture.PNG','private','2018-03-30 13:26:43',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (111,14,14,'posting','post/Screenshot (2).png','private','2018-04-03 22:42:26',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (112,14,14,'post','post/Screenshot (3).png','public','2018-04-03 22:43:04',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (113,14,14,'poster','post/Screenshot (5).png','private','2018-04-03 22:44:27',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (114,14,14,'abcd','noimage','public','2018-04-03 22:45:00',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (115,14,14,'upsc','post/Screenshot(8).png','public','2018-04-03 22:45:25',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (116,14,14,'abcf','noimage','public','2018-04-04 01:53:15',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (117,14,14,'po','post/Screenshot (3).png','public','2018-04-04 01:53:38',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (118,14,14,'fggbhfg','post/Screenshot (6).png','public','2018-04-09 22:59:16',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (119,5,5,'hello','noimage','private','2018-04-09 23:00:21',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (120,19,19,'java','noimage','private','2018-04-09 23:06:06',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (121,16,16,'sasa','post/Screenshot (1).png','private','2018-04-09 23:07:24',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (122,5,5,'sf','noimage','custom','2018-04-14 22:24:40','rohit.yadav@gmail.com,ankit.chouksey123@gmail.com,relatives');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (123,5,5,'sdf','noimage','custom','2018-04-14 22:25:39','a12@gmail.com,relatives,Section A');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (124,16,16,'hello','noimage','custom','2018-04-16 22:51:37','pralhad@gmail.com,pralhad@gmail.com,pralhad@gmail.com,relatives');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (125,19,19,'hi blocking groups','noimage','custom','2018-04-16 23:30:34','adhar.rajput21@gmail.com,relatives,Neighbours,Section A,Sports Club');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (126,19,19,'sf','noimage','custom','2018-04-16 23:49:19',',relatives,Section A');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (127,16,14,'block','noimage','custom','2018-04-17 01:14:33','adhar.rajput21@gmail.com,neighbours,Section A');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (128,14,14,'blocking','noimage','custom','2018-04-17 01:53:46',',neighbours');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (129,19,19,'Hi Showing for family and relatives','noimage','custom','2018-04-23 23:03:26',',family,neighbours,relatives');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (130,14,14,'blocking','noimage','custom','2018-04-24 01:56:14','family,neighbours,relatives');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (131,14,14,'showing for relatives','noimage','custom','2018-04-24 01:59:14','family,relatives');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (132,14,14,'showing for Sports Club, Family,Relative','noimage','custom','2018-04-24 02:28:00','Sports Club,family,neighbours,relatives,university');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (133,19,19,'Hii','noimage','public','2018-04-24 21:38:20',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (134,19,19,'Hi Public','noimage','public','2018-04-24 21:42:09',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (135,19,19,'Hi Private','noimage','private','2018-04-24 21:48:08',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (136,19,19,'Hi oblic','noimage','public','2018-04-24 21:48:19',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (137,16,16,'Hi Relatives','noimage','custom','2018-04-24 21:49:06','family,relatives');
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (138,19,19,'Hi posting to all','noimage','public','2018-04-24 22:45:18',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (139,16,16,'Hi Private Posting','noimage','private','2018-04-24 22:45:49',NULL);
insert into `post` (`post_id`,`sender_id`,`reciver_id`,`description`,`image_path`,`post_display`,`po_date`,`blockfriend`) values (140,19,19,'Posting Relatives and neighbours','noimage','custom','2018-04-24 22:48:06','family,neighbours,relatives');

/*Table structure for table `profile` */

DROP TABLE IF EXISTS `profile`;

CREATE TABLE `profile` (
  `profile_id` int(10) unsigned NOT NULL auto_increment,
  `registration_id` int(10) unsigned NOT NULL,
  `contact_no` varchar(45) default NULL,
  `address` varchar(100) default NULL,
  `profile_display` varchar(45) default 'public',
  `image_path` varchar(100) default 'images/placeholder-person.png',
  PRIMARY KEY  (`profile_id`),
  KEY `FK_profile_registration` (`registration_id`),
  CONSTRAINT `FK_profile_registration` FOREIGN KEY (`registration_id`) REFERENCES `registration` (`registration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `profile` */

insert into `profile` (`profile_id`,`registration_id`,`contact_no`,`address`,`profile_display`,`image_path`) values (6,5,'','','public','images/placeholder-person.png');
insert into `profile` (`profile_id`,`registration_id`,`contact_no`,`address`,`profile_display`,`image_path`) values (7,6,'9898989898','pune','public','profile/10413413_284936538369649_2587972099089471515_n.jpg');
insert into `profile` (`profile_id`,`registration_id`,`contact_no`,`address`,`profile_display`,`image_path`) values (21,13,NULL,NULL,'public','images/placeholder-person.png');
insert into `profile` (`profile_id`,`registration_id`,`contact_no`,`address`,`profile_display`,`image_path`) values (22,14,NULL,'','public','profile/Screenshot(8).png');
insert into `profile` (`profile_id`,`registration_id`,`contact_no`,`address`,`profile_display`,`image_path`) values (23,15,NULL,NULL,'public','images/placeholder-person.png');
insert into `profile` (`profile_id`,`registration_id`,`contact_no`,`address`,`profile_display`,`image_path`) values (24,16,NULL,'Wakad','public','profile/Screenshot (3).png');
insert into `profile` (`profile_id`,`registration_id`,`contact_no`,`address`,`profile_display`,`image_path`) values (25,17,NULL,NULL,'public','images/placeholder-person.png');
insert into `profile` (`profile_id`,`registration_id`,`contact_no`,`address`,`profile_display`,`image_path`) values (26,18,NULL,NULL,'public','images/placeholder-person.png');
insert into `profile` (`profile_id`,`registration_id`,`contact_no`,`address`,`profile_display`,`image_path`) values (27,19,NULL,NULL,'public','images/placeholder-person.png');

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `registration_id` int(10) unsigned NOT NULL auto_increment,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `email_id` varchar(70) NOT NULL,
  `password` varchar(45) NOT NULL,
  `status` varchar(100) NOT NULL default 'deactive',
  `customgroup` varchar(100) default NULL,
  PRIMARY KEY  (`registration_id`),
  UNIQUE KEY `email_id` (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert into `registration` (`registration_id`,`first_name`,`last_name`,`email_id`,`password`,`status`,`customgroup`) values (5,'pralhad','ingole','pralhad@gmail.com','898','Active','family,relatives,university,Section A');
insert into `registration` (`registration_id`,`first_name`,`last_name`,`email_id`,`password`,`status`,`customgroup`) values (6,'Sandeep','Singh','sandeep@gmail.com','9898','Active','university');
insert into `registration` (`registration_id`,`first_name`,`last_name`,`email_id`,`password`,`status`,`customgroup`) values (13,'pralhad','ingole','pralhad.ingole@gmail.com','510488','Active','university');
insert into `registration` (`registration_id`,`first_name`,`last_name`,`email_id`,`password`,`status`,`customgroup`) values (14,'Ankit','Chouksey','ankit.chouksey123@gmail.com','1234','Active','family,neighbours,relatives');
insert into `registration` (`registration_id`,`first_name`,`last_name`,`email_id`,`password`,`status`,`customgroup`) values (15,'Adhar Pratap','Singh Bhati','adhar.rajput2121@gmail.com','171744','Active','family');
insert into `registration` (`registration_id`,`first_name`,`last_name`,`email_id`,`password`,`status`,`customgroup`) values (16,'Adhar Pratap','Singh Bhati','adhar.rajput21@gmail.com','1234567','Active','Sports Club,family,neighbours,relatives');
insert into `registration` (`registration_id`,`first_name`,`last_name`,`email_id`,`password`,`status`,`customgroup`) values (17,'asdf','asda','a@g.com','12345','deactive','family');
insert into `registration` (`registration_id`,`first_name`,`last_name`,`email_id`,`password`,`status`,`customgroup`) values (18,'qwer','qwer','a12@gmail.com','12345','Active','Section A,family,relatives,university');
insert into `registration` (`registration_id`,`first_name`,`last_name`,`email_id`,`password`,`status`,`customgroup`) values (19,'rohit','yadav','rohit.yadav@gmail.com','123456','Active','Section A,family,neighbours,university');

/*Table structure for table `shared` */

DROP TABLE IF EXISTS `shared`;

CREATE TABLE `shared` (
  `share_id` int(10) unsigned NOT NULL auto_increment,
  `post_id` int(10) unsigned NOT NULL,
  `registartion_id` int(10) unsigned NOT NULL,
  `share_display` varchar(200) NOT NULL default 'public',
  `description` varchar(200) default NULL,
  PRIMARY KEY  (`share_id`),
  KEY `FK_shared_post` (`post_id`),
  KEY `FK_shared_profile` (`registartion_id`),
  CONSTRAINT `FK_shared_post` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
  CONSTRAINT `FK_shared_profile` FOREIGN KEY (`registartion_id`) REFERENCES `registration` (`registration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `shared` */

insert into `shared` (`share_id`,`post_id`,`registartion_id`,`share_display`,`description`) values (1,19,6,'public','fght tyhtreye tyety st yeyty');
insert into `shared` (`share_id`,`post_id`,`registartion_id`,`share_display`,`description`) values (6,19,6,'public','hi dednejhje efksje');
insert into `shared` (`share_id`,`post_id`,`registartion_id`,`share_display`,`description`) values (7,19,6,'public','hi dednejhje efksje');
insert into `shared` (`share_id`,`post_id`,`registartion_id`,`share_display`,`description`) values (8,19,6,'public','hi dednejhje efksje');
insert into `shared` (`share_id`,`post_id`,`registartion_id`,`share_display`,`description`) values (9,16,5,'public','hi shared post testing');
insert into `shared` (`share_id`,`post_id`,`registartion_id`,`share_display`,`description`) values (10,36,5,'public','dfjhsdkjhf jhdkjfhsjdkhfkhdsjhfhsdj');
insert into `shared` (`share_id`,`post_id`,`registartion_id`,`share_display`,`description`) values (11,37,14,'public','hgjg');
insert into `shared` (`share_id`,`post_id`,`registartion_id`,`share_display`,`description`) values (12,38,13,'public','abcd');
insert into `shared` (`share_id`,`post_id`,`registartion_id`,`share_display`,`description`) values (13,94,5,'public','ffdsf');
insert into `shared` (`share_id`,`post_id`,`registartion_id`,`share_display`,`description`) values (14,119,5,'public','fg');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
