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
  ('L2020429269734','用户1',500,'2020年11月27日08时21分09秒 '),
  ('L2020429270484','用户2',500,'2020年01月27日06时21分10秒 ');
#   ('L2021304416270','user_for_test',0,'2021年12月10日11时50分18秒 ');

COMMIT;

#
# Data for the `product` table  (LIMIT 0,500)
#

INSERT INTO `product` (`pid`, `pname`, `price`, `pcount`, `imgpath`) VALUES 
  ('P1202240144093','蓝莓蛋糕',200,50,'http://localhost:8080/atashopping1_2_war_exploded/images/pic01.jpg'),
  ('P1202240170171','小鸡蛋糕',150,100,'http://localhost:8080/atashopping1_2_war_exploded/images/pic02.jpg'),
  ('P1202373121005','苏打蛋糕',150,50,'http://localhost:8080/atashopping1_2_war_exploded/images/pic03.jpg'),
  ('P1202373156843','小兔子蛋糕',150,100,'http://localhost:8080/atashopping1_2_war_exploded/images/pic04.jpg'),
  ('P1202373225725','樱桃蛋糕',250,50,'http://localhost:8080/atashopping1_2_war_exploded/images/pic05.jpg');

COMMIT;

#
# Data for the `user` table  (LIMIT 0,500)
#

INSERT INTO `user` (`username`, `password`, `email`, `tel`, `address`, `sex`, `age`, `regtime`) VALUES
  ('用户1','123','cake20@126.com','19951652617','广州番禺','男',20,'2019年01月27日08时15分57秒'),
  ('用户2','123','cake19@126.com','19951652618','广州天河','女',19,'2019年01月27日09时19分57秒');

COMMIT;

#
# Data for the `useraccount` table  (LIMIT 0,500)
#

INSERT INTO `useraccount` (`username`, `money`) VALUES
  ('用户1',1000),
  ('用户2',1500);

COMMIT;

#
# Data for the `userform` table  (LIMIT 0,500)
#

INSERT INTO `userform` (`id`, `fid`, `username`, `pname`, `proprice`, `count`, `time`, `summoney`) VALUES 
  (1,'F1202046375203','用户1','小鸡蛋糕',150,1,'2020年01月29日08时52分55秒 ',150),
  (2,'F1202046482875','用户1','蓝莓蛋糕',200,1,'2020年09月29日10时54分42秒 ',200),
  (3,'F1202246636015','用户2','樱桃蛋糕',250,1,'2022年12月10日03时57分16秒 ',250);

COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;