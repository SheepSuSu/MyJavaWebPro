/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES gbk */;

SET FOREIGN_KEY_CHECKS=0;

DROP DATABASE IF EXISTS `MyCakeShop`;

CREATE DATABASE `MyCakeShop`
    CHARACTER SET 'gbk'
    COLLATE 'gbk_chinese_ci';

USE `MyCakeShop`;

#
# Structure for the `admin` table : 
#

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Structure for the `bank` table : 
#

CREATE TABLE `bank` (
  `cardname` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `money` double(20,3) default NULL,
  PRIMARY KEY  (`cardname`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Structure for the `moneylog` table : 
#

CREATE TABLE `moneylog` (
  `logid` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `money` double(15,3) default NULL,
  `time` varchar(30) default NULL,
  PRIMARY KEY  (`logid`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Structure for the `product` table : 
#

CREATE TABLE `product` (
  `pid` varchar(20) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `price` double(15,3) NOT NULL,
  `pcount` int(11) default NULL,
  `imgpath` varchar(80) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Structure for the `user` table : 
#

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `tel` varchar(20) default NULL,
  `address` varchar(20) default NULL,
  `sex` varchar(20) default NULL,
  `age` int(11) default NULL,
  `regtime` varchar(30) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Structure for the `useraccount` table : 
#

CREATE TABLE `useraccount` (
  `username` varchar(20) NOT NULL,
  `money` double(15,3) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Structure for the `userform` table : 
#

CREATE TABLE `userform` (
  `id` int(11) NOT NULL auto_increment,
  `fid` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `proprice` double(15,3) default NULL,
  `count` int(11) default NULL,
  `time` varchar(32) default NULL,
  `summoney` double(15,3) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Data for the `admin` table  (LIMIT 0,500)
#

INSERT INTO `admin` (`username`, `password`) VALUES 
  ('admin','admin');

COMMIT;

#
# Data for the `bank` table  (LIMIT 0,500)
#

INSERT INTO `bank` (`cardname`, `password`, `money`) VALUES 
  ('admin','admin',999429999);

COMMIT;

#
# Data for the `moneylog` table  (LIMIT 0,500)
#

INSERT INTO `moneylog` (`logid`, `username`, `money`, `time`) VALUES 
  ('L2020429269734','�û�1',500,'2020��11��27��08ʱ21��09�� '),
  ('L2020429270484','�û�2',500,'2020��01��27��06ʱ21��10�� ');
#   ('L2021304416270','user_for_test',0,'2021��12��10��11ʱ50��18�� ');

COMMIT;

#
# Data for the `product` table  (LIMIT 0,500)
#

INSERT INTO `product` (`pid`, `pname`, `price`, `pcount`, `imgpath`) VALUES 
  ('P1202240144093','��ݮ����',200,50,'http://localhost:8080/atashopping1_2_war_exploded/images/pic01.jpg'),
  ('P1202240170171','С������',150,100,'http://localhost:8080/atashopping1_2_war_exploded/images/pic02.jpg'),
  ('P1202373121005','�մ򵰸�',150,50,'http://localhost:8080/atashopping1_2_war_exploded/images/pic03.jpg'),
  ('P1202373156843','С���ӵ���',150,100,'http://localhost:8080/atashopping1_2_war_exploded/images/pic04.jpg'),
  ('P1202373225725','ӣ�ҵ���',250,50,'http://localhost:8080/atashopping1_2_war_exploded/images/pic05.jpg');

COMMIT;

#
# Data for the `user` table  (LIMIT 0,500)
#

INSERT INTO `user` (`username`, `password`, `email`, `tel`, `address`, `sex`, `age`, `regtime`) VALUES
  ('�û�1','123','cake20@126.com','19951652617','���ݷ�خ','��',20,'2019��01��27��08ʱ15��57��'),
  ('�û�2','123','cake19@126.com','19951652618','�������','Ů',19,'2019��01��27��09ʱ19��57��');

COMMIT;

#
# Data for the `useraccount` table  (LIMIT 0,500)
#

INSERT INTO `useraccount` (`username`, `money`) VALUES
  ('�û�1',1000),
  ('�û�2',1500);

COMMIT;

#
# Data for the `userform` table  (LIMIT 0,500)
#

INSERT INTO `userform` (`id`, `fid`, `username`, `pname`, `proprice`, `count`, `time`, `summoney`) VALUES 
  (1,'F1202046375203','�û�1','С������',150,1,'2020��01��29��08ʱ52��55�� ',150),
  (2,'F1202046482875','�û�1','��ݮ����',200,1,'2020��09��29��10ʱ54��42�� ',200),
  (3,'F1202246636015','�û�2','ӣ�ҵ���',250,1,'2022��12��10��03ʱ57��16�� ',250);

COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;