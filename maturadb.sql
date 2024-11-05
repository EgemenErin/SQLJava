CREATE DATABASE  IF NOT EXISTS `maturadb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `maturadb`;

-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: maturadb
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dictionary`
--

DROP TABLE IF EXISTS `dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dictionary` (
  `code` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `en` varchar(50) NOT NULL,
  `sq` varchar(50) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COMMENT='Most common used words in website';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dictionary`
--

LOCK TABLES `dictionary` WRITE;
/*!40000 ALTER TABLE `dictionary` DISABLE KEYS */;
INSERT INTO `dictionary` VALUES (1,'newsevents','News &#38; Events','Lajme &#38; Ngjarje',''),(2,'search','Search','Kerkim',''),(3,'go','Go!','Kerko',''),(4,'contactus','Contact Us!','Kontaktet',''),(5,'membersignin','Members Sign-In','Hyni ne llogrine tuaj',''),(6,'copyright','Copyright','Te drejta te rezervuara',''),(8,'sitemap','Site Map','Harta e Sajtit',''),(9,'contacts','Contacts','Kontaktet',''),(10,'aboutsite','About this site','Rreth ketij sajti',''),(11,'pastevents','Past Events','Ngjarje te kaluara',''),(12,'home','Home','Shtepi',''),(13,'relatedlinks','Related Links','Faqe te ngjashme',''),(15,'logonas','Log On as','Hy si',''),(16,'forget','Forget Me!','Me Harro',''),(17,'logout','Logout','Dil',''),(18,'mymenu','My Menu','Menyja Ime',''),(19,'printpg','Print','Printo',''),(20,'homename','Home','Shtepi','');
/*!40000 ALTER TABLE `dictionary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `browsers`
--

DROP TABLE IF EXISTS `browsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `browsers` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=1446 DEFAULT CHARSET=utf8 COMMENT='Browser List';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `browsers`
--

LOCK TABLES `browsers` WRITE;
/*!40000 ALTER TABLE `browsers` DISABLE KEYS */;
INSERT INTO `browsers` VALUES (1165,'Bot-Bing'),(1167,'Chrome'),(1168,'Mozilla'),(1169,'Mozilla Firefox'),(1170,'Bot-Baiduspider'),(1171,'Bot-Googlebot'),(1173,'Bot-AhrefsBot'),(1174,'Bot-MJ12bot'),(1175,'Wget'),(1176,'Bot-Exabot'),(1178,'Opera'),(1179,'Bot-Yandex'),(1180,'curl'),(1184,'Bot-SeznamBot'),(1187,'Lynx'),(1189,'Bot-msnbot'),(1190,'Opera Mini'),(1196,'Bot-Semrush'),(1201,'Nokia'),(1209,'Mediapartners-Google'),(1210,'Java-1.6'),(1212,'Jakarta Commons-Http'),(1241,'Jakarta Commons-Http'),(1256,'Bot-ia_archiver');
/*!40000 ALTER TABLE `browsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `kcode` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `lang` int(11) DEFAULT NULL,
  `scode` int(11) DEFAULT NULL,
  PRIMARY KEY (`kcode`)
) ENGINE=MyISAM AUTO_INCREMENT=1410 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (485,'Eden',0,1004),(486,'Gjergji',2,1008),(487,'Ilia',2,1009),(488,'Qiro',2,1017),(489,'Aleksandra',2,1020),(490,'Aleksandra',2,1021),(1159,'Endi',1,1099),(1151,'Varvara',0,943),(540,'Danja',2,921),(617,'Elena',2,1080),(538,'Tedi',2,1068),(539,'Dajana',2,920),(939,'Xhoan',2,1142),(938,'Sotiraq',1,1140),(937,'Marjan',2,1137),(936,'Adri',1,1122),(934,'Stela',2,1141),(932,'Paola',2,1138),(931,'Laura',2,1136),(930,'Kristina',2,1135),(929,'Kristel',2,1134),(928,'Jori',2,1133),(927,'Jorgjia',2,1132),(926,'Geriola',2,1131),(925,'Geraldina',0,1130),(924,'Erlinda',2,1129),(923,'Erika',2,1128),(922,'Elvis',2,1127),(921,'Eleni',2,1126),(920,'Biora',2,1124),(919,'Theodhor',2,1120),(918,'Kristi',1,1110),(917,'Jorgo',2,1105),(916,'Jorgo',0,1104),(914,'Deivid',2,1097),(1148,'Sildi',2,1119),(1174,'Andria',2,1072),(913,'Aleks',2,1095),(895,'Spiro',2,1092),(896,'Besiana',0,1096),(897,'Efrosini',2,1098),(898,'Evi',1,1101),(899,'Ilaria',2,1102),(885,'Iris',2,1083),(886,'Mariasilvia',0,1086),(887,'Pamela',0,1090),(888,'Xhulia',2,1094),(889,'Aurel',2,1073),(890,'Belisar',1,1074),(891,'Dardi',0,1077),(586,'Vangjush',2,992),(909,'Sara',0,1117),(1158,'Romina',0,1116),(906,'Lefteria',2,1113),(905,'Kristina',2,1112),(904,'Kristina',2,1111),(903,'Kristela',2,1109),(594,'Klea',2,983),(595,'Kristiana',2,984),(596,'Kristina',2,986),(597,'Kristina',2,985),(598,'Sara',2,987),(635,'Xhoel',1,1093),(600,'Endri',2,974),(601,'Gabriel',2,975),(602,'Stivi',2,989),(603,'Theodhor',2,991),(631,'Joan',2,1084),(642,'Kasandra',2,1107),(648,'Nadia',2,1114),(948,'Artjona',0,1123),(664,'Dea',2,1125),(585,'Theodhor',1,990),(529,'Elio',2,1051),(530,'Klajdi',0,1055),(531,'Kristian',2,1056),(910,'Sara',2,1118),(907,'Rea',2,1115),(545,'Elena',2,927),(546,'Erina',2,928),(547,'Ilirjana',2,931),(548,'Jonida',2,932),(901,'Kamela',2,1106),(915,'Eno',2,1100),(900,'Irisa',2,1103),(894,'Nevis',2,1089),(883,'Franceska',2,1081),(893,'Klejdi',2,1085),(892,'Donaldo',2,1078),(933,'Romina',0,1139),(884,'Geljana',2,1082),(902,'Klea',2,1108),(882,'Egla',0,1079),(881,'Daneta',1,1076),(1168,'Leonidha ',2,936),(940,'Elefteria',1,926),(941,'Arisa',2,972),(943,'Katerina',1,981),(951,'Viktoria',2,993),(1167,'Alma',2,946),(953,'Gabriel ',2,954),(947,'Anamaria',0,1070),(534,'Mikael',2,1062),(1153,'Sara',2,1043),(1166,'Stiven',0,988),(610,'Pandi',2,1064),(611,'Rigels',0,1065),(623,'Nensi',2,1088),(625,'Pamela',2,1091),(593,'Julia',2,980),(592,'Joana',2,994),(587,'Vasil',2,968),(584,'Tedi',2,967),(583,'Shpendi',2,966),(582,'Rexhep',2,965),(581,'Montheos',2,962),(580,'Marçelo',2,960),(579,'Klidi',2,957),(577,'Klaus',2,982),(576,'Kevi',2,955),(575,'Antonio',2,971),(574,'Xhoana',2,969),(570,'Lueda',2,959),(569,'Elena',2,952),(567,'Arba',2,949),(566,'Antoneta',2,948),(564,'Thimio',2,941),(563,'Rigels',2,939),(562,'Kserdi',2,935),(561,'Kevin',2,933),(559,'Gabriel',2,929),(558,'Andrea',2,919),(551,'Rasheila',2,938),(552,'Roksana',2,940),(557,'Amadeo',2,918),(1163,'Xhuljana',1,1143),(568,'Daniela',2,951),(1160,'Gabriel',1,1029),(555,'Xhesilda',2,944),(560,'Ilia',2,930),(550,'Marilena',2,937),(549,'Ksenja',2,934),(1164,'Fioralba',2,953),(880,'Besa',2,1075),(1175,'Theodhora',2,1121),(578,'Kledis',2,956),(571,'Mikaela',2,961),(517,'Anisa',2,1049),(544,'Eda',2,925),(543,'Doris',2,924),(565,'Anisa',2,947),(532,'Leonidha',2,1058),(541,'Dea',2,922),(572,'Muke',2,963),(591,'Isabela',2,979),(590,'Irini',0,978),(589,'Iliana',2,977),(588,'Eleni-Maria',2,973),(553,'Vanisa',0,942),(1152,'Xhoela',2,945),(518,'Enxhi',2,1052),(573,'Ordesa',2,964),(535,'Niko',2,1063),(622,'Marina',2,1087),(542,'Dhimitra',2,923),(533,'Merdi',2,1061),(528,'Denilson',2,1050),(527,'Anesti',2,1048),(526,'Xhuljana',2,1069),(525,'Sonja',0,1066),(524,'Shela',2,1067),(523,'Megi',2,1060),(522,'Lueda',2,1059),(521,'Kristina',0,1057),(520,'Kejsi',2,1054),(519,'Fabiola',2,1053),(516,'Amelda',2,1047),(515,'Albi',2,1046),(514,'Adriana',2,1045),(513,'Oresti',2,1042),(512,'Kostika',2,1036),(507,'Stefani',2,1044),(508,'Erik',0,1028),(510,'Herdi',2,1030),(511,'Ivi',2,1033),(500,'Klementina',2,1035),(501,'Lorela',0,1037),(502,'Maria',2,1038),(503,'Marinela',2,1039),(955,'Sara',2,1018),(505,'Megi',2,1041),(499,'Klaudia',2,1034),(498,'Ina',2,1032),(497,'Hrisula',2,1031),(496,'Elisavet',2,1027),(482,'Andon',2,997),(475,'Maria',0,1012),(495,'Elga',2,1026),(494,'Dhoksjana',2,1025),(493,'Denada',2,1024),(492,'Ardela',2,1023),(491,'Anxhi',2,1022),(484,'Denis',2,1002),(483,'Dajan',2,1001),(481,'Xhorxhia',2,1019),(479,'Oli',2,1016),(954,'Mateina',2,1040),(478,'Olga',2,1015),(476,'Marsilda',2,1013),(477,'Megi',2,1014),(474,'Joana',2,1011),(473,'Joana',2,1010),(472,'Glorja',2,1007),(471,'Frenki',2,1006),(470,'Doriela',2,1003),(469,'Bora',2,1000),(468,'Bleona',2,999),(467,'Ariola',2,998),(612,'Andja',0,1071),(466,'Aleksia',2,996),(465,'Aleksa',2,995);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uinfo`
--

DROP TABLE IF EXISTS `uinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uinfo` (
  `scode` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `locked` tinyint(1) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`scode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uinfo`
--

LOCK TABLES `uinfo` WRITE;
/*!40000 ALTER TABLE `uinfo` DISABLE KEYS */;
INSERT INTO `uinfo` VALUES (995,'Aleksa','2030-06-30',NULL,'XII-A',0),(996,'Aleksia','2030-08-08',NULL,'XII-A',0),(998,'Ariola','2030-06-23',NULL,'XII-A',0),(999,'Bleona','2030-08-26',NULL,'XII-A',0),(1000,'Bora','2030-09-23',NULL,'XII-A',0),(1003,'Doriela','2030-03-11',NULL,'XII-A',0),(1006,'Frenki','2030-06-22',NULL,'XII-A',1),(1007,'Glorja','2030-12-31',NULL,'XII-A',0),(1010,'Joana','2030-12-09',NULL,'XII-A',0),(1011,'Joana','2030-01-09',NULL,'XII-A',0),(1012,'Maria','2030-06-05',NULL,'XII-A',0),(1013,'Marsilda','2030-03-12',NULL,'XII-A',0),(1014,'Megi','2030-12-31',NULL,'XII-A',0),(1015,'Olga','2030-07-22',NULL,'XII-A',0),(1016,'Oli','2030-02-28',NULL,'XII-A',0),(1019,'Xhorxhia','2030-04-22',NULL,'XII-A',0),(997,'Andon','2030-09-14',NULL,'XII-A',1),(1001,'Dajan','2030-04-23',NULL,'XII-A',1),(1002,'Denis','2030-07-31',NULL,'XII-A',1),(1004,'Eden','2030-05-08',NULL,'XII-A',1),(1008,'Gjergji','2030-12-31',NULL,'XII-A',1),(1009,'Ilia','2030-09-24',NULL,'XII-A',1),(1017,'Qiro','2030-05-09',NULL,'XII-A',1),(1020,'Aleksandra','2030-01-10',NULL,'XII-B',0),(1021,'Aleksandra','2030-12-31',NULL,'XII-B',0),(1022,'Anxhi','2030-11-23',NULL,'XII-B',0),(1023,'Ardela','2030-09-04',NULL,'XII-B',0),(1024,'Denada','2030-02-28',NULL,'XII-B',0),(1025,'Dhoksjana','2030-08-03',NULL,'XII-B',0),(1026,'Elga','2030-03-22',NULL,'XII-B',0),(1027,'Elisavet','2030-07-06',NULL,'XII-B',0),(1031,'Hrisula','2030-01-12',NULL,'XII-B',0),(1032,'Ina','2030-05-01',NULL,'XII-B',0),(1034,'Klaudia','2030-12-29',NULL,'XII-B',0),(1035,'Klementina','2030-10-02',NULL,'XII-C',0),(1037,'Lorela','2030-12-20',NULL,'XII-B',0),(1038,'Maria','2030-12-10',NULL,'XII-B',0),(1039,'Marinela','2030-09-26',NULL,'XII-C',0),(1041,'Megi','2030-07-14',NULL,'XII-B',0),(1044,'Stefani','2030-01-29',NULL,'XII-B',0),(1028,'Erik','2030-02-28',NULL,'XII-B',1),(946,'Alma','2030-06-16',NULL,'ex-students',0),(1030,'Herdi','2030-12-02',NULL,'XII-B',1),(1033,'Ivi','2030-05-26',NULL,'XII-B',1),(1036,'Kostika','2030-09-15',NULL,'XII-B',1),(1042,'Oresti','2030-10-01',NULL,'XII-B',1),(1045,'Adriana','2030-12-31',NULL,'XII-C',0),(1046,'Albi','2030-04-22',NULL,'XII-C',1),(1047,'Amelda','2030-05-14',NULL,'XII-C',0),(1049,'Anisa','2030-08-16',NULL,'XII-C',0),(1052,'Enxhi','2030-12-31',NULL,'XII-C',0),(1053,'Fabiola','2030-11-29',NULL,'XII-C',0),(1054,'Kejsi','2030-05-25',NULL,'XII-C',0),(1057,'Kristina','2030-12-31',NULL,'XII-C',0),(1059,'Lueda','2030-05-14',NULL,'XII-C',0),(1060,'Megi','2030-02-01',NULL,'XII-C',0),(1067,'Shela','2030-05-23',NULL,'XII-C',0),(1066,'Sonja','2030-12-31',NULL,'XII-C',0),(1069,'Xhuljana','2030-03-02',NULL,'XII-C',0),(1048,'Anesti','2030-04-11',NULL,'XII-C',1),(1050,'Denilson','2030-12-17',NULL,'XII-C',1),(1051,'Elio','2030-12-31',NULL,'XII-C',1),(1055,'Klajdi','2030-10-07',NULL,'XII-C',1),(1056,'Kristian','2030-12-31',NULL,'XII-C',1),(1058,'Leonidha','2030-05-15',NULL,'XII-C',1),(1061,'Merdi','2030-03-05',NULL,'XII-C',1),(1062,'Mikael','2030-03-21',NULL,'XII-C',1),(1063,'Niko','2030-12-04',NULL,'XII-C',1),(1068,'Tedi','2030-07-30',NULL,'XII-C',1),(921,'Danja','2030-08-24',NULL,'ex-students',0),(922,'Dea','2030-09-20',NULL,'ex-students',0),(923,'Dhimitra','2030-03-01',NULL,'ex-students',0),(924,'Doris','2030-12-31',NULL,'ex-students',0),(925,'Eda','2030-04-07',NULL,'ex-students',0),(927,'Elena','2030-04-15',NULL,'ex-students',0),(928,'Erina','2030-02-21',NULL,'ex-students',0),(931,'Ilirjana','2030-09-09',NULL,'ex-students',0),(932,'Jonida','2030-02-01',NULL,'ex-students',0),(937,'Marilena','2030-07-08',NULL,'ex-students',0),(938,'Rasheila','2030-06-30',NULL,'ex-students',0),(940,'Roksana','2030-09-24',NULL,'ex-students',0),(942,'Vanisa','2030-03-20',NULL,'ex-students',0),(944,'Xhesilda','2030-07-06',NULL,'ex-students',0),(918,'Amadeo','2030-09-20',NULL,'ex-students',1),(919,'Andrea','2030-11-30',NULL,'ex-students',1),(929,'Gabriel','2030-10-02',NULL,'ex-students',1),(930,'Ilia','2030-05-10',NULL,'ex-students',1),(933,'Kevin','2030-06-26',NULL,'ex-students',1),(939,'Rigels','2030-01-10',NULL,'ex-students',1),(941,'Thimio','2030-12-19',NULL,'ex-students',1),(947,'Anisa','2030-03-29',NULL,'ex-students',0),(948,'Antoneta','2030-10-27',NULL,'ex-students',0),(949,'Arba','2030-06-01',NULL,'ex-students',0),(951,'Daniela','2030-06-19',NULL,'ex-students',0),(952,'Elena','2030-09-11',NULL,'ex-students',0),(961,'Mikaela','2030-09-21',NULL,'ex-students',0),(963,'Muke','2030-02-25',NULL,'ex-students',1),(964,'Ordesa','2030-05-22',NULL,'ex-students',0),(969,'Xhoana','2030-07-23',NULL,'ex-students',0),(971,'Antonio','2030-01-18',NULL,'ex-students',1),(955,'Kevi','2030-10-27',NULL,'ex-students',1),(982,'Klaus','2030-07-07',NULL,'ex-students',1),(956,'Kledis','2030-01-30',NULL,'ex-students',1),(957,'Klidi','2030-11-17',NULL,'ex-students',1),(960,'Marçelo','2030-06-17',NULL,'ex-students',1),(962,'Montheos','2030-11-30',NULL,'ex-students',1),(965,'Rexhep','2030-08-04',NULL,'ex-students',1),(966,'Shpendi','2030-11-27',NULL,'ex-students',1),(967,'Tedi','2030-04-02',NULL,'ex-students',1),(990,'Theodhor','2030-10-30',NULL,'ex-students',1),(992,'Vangjush','2030-04-25',NULL,'ex-students',1),(968,'Vasil','2030-12-30',NULL,'ex-students',1),(973,'Eleni-Maria','2030-06-07',NULL,'ex-students',0),(977,'Iliana','2030-07-21',NULL,'ex-students',0),(978,'Irini','2030-10-31',NULL,'ex-students',0),(979,'Isabela','2030-02-03',NULL,'ex-students',0),(994,'Joana','2030-04-02',NULL,'ex-students',0),(980,'Julia','2030-02-03',NULL,'ex-students',0),(983,'Klea','2030-06-10',NULL,'ex-students',0),(984,'Kristiana','2030-10-29',NULL,'ex-students',0),(986,'Kristina','2030-12-16',NULL,'ex-students',0),(985,'Kristina','2030-06-28',NULL,'ex-students',0),(987,'Sara','2030-09-24',NULL,'ex-students',0),(974,'Endri','2030-10-02',NULL,'ex-students',1),(975,'Gabriel','2030-11-06',NULL,'ex-students',1),(989,'Stivi','2030-10-14',NULL,'ex-students',1),(991,'Theodhor','2030-04-21',NULL,'ex-students',1),(926,'Elefteria','2030-12-31',NULL,'ex-students',0),(981,'Katerina','2030-02-16',NULL,'ex-students',0),(993,'Viktoria','2030-06-26',NULL,'ex-students',0),(954,'Gabriel ','2030-07-24',NULL,'ex-students',1),(1040,'Mateina','2030-10-09',NULL,'XII-B',0),(1018,'Sara','2030-02-17',NULL,'XII-A',0),(943,'Varvara','2030-04-15',NULL,'ex-students',0),(1043,'Sara','2030-10-01',NULL,'XII-B',0),(1029,'Gabriel','2030-12-31',NULL,'XII-B',0),(1071,'Andja','2030-08-15',NULL,'X-A',0),(1080,'Elena','2030-01-01',NULL,'XI-A',0),(1087,'Marina','2030-12-31',NULL,'XI-A',0),(1088,'Nensi','2030-01-01',NULL,'XI-A',0),(1091,'Pamela','2030-01-23',NULL,'XI-A',0),(1084,'Joan','2030-06-13',NULL,'XI-A',1),(1093,'Xhoel','2030-07-25',NULL,'XI-A',1),(1107,'Kasandra','2030-12-31',NULL,'XI-B',0),(1114,'Nadia','2030-01-01',NULL,'XI-B',0),(1125,'Dea','2030-08-10',NULL,'XI-C',0),(1075,'Besa','2030-05-20',NULL,'XI-A',0),(1076,'Daneta','2030-01-01',NULL,'XI-A',0),(1079,'Egla','2030-01-01',NULL,'XI-A',0),(1081,'Franceska','2030-01-01',NULL,'XI-A',0),(1082,'Geljana','2030-01-01',NULL,'XI-A',0),(1083,'Iris','2030-01-01',NULL,'XI-A',0),(1086,'Mariasilvia','2030-01-01',NULL,'XI-A',0),(1094,'Xhulia','2030-01-01',NULL,'XI-A',0),(1073,'Aurel','2030-09-15',NULL,'XI-A',1),(1074,'Belisar','2030-01-01',NULL,'XI-A',1),(1077,'Dardi','2030-01-01',NULL,'XI-A',0),(1078,'Donaldo','2030-05-05',NULL,'XI-A',1),(1085,'Klejdi','2030-01-01',NULL,'XI-A',0),(1089,'Nevis','2030-01-01',NULL,'XI-A',0),(1092,'Spiro','2030-10-17',NULL,'XI-A',1),(1096,'Besiana','2030-12-31',NULL,'XI-B',0),(1098,'Efrosini','2030-01-01',NULL,'XI-B',0),(1101,'Evi','2030-01-01',NULL,'XI-B',0),(1102,'Ilaria','2030-01-01',NULL,'XI-B',0),(1103,'Irisa','2030-01-01',NULL,'XI-B',0),(1106,'Kamela','2030-12-31',NULL,'XI-B',0),(1108,'Klea','2030-01-01',NULL,'XI-B',0),(1109,'Kristela','2030-01-01',NULL,'XI-B',0),(1111,'Kristina','2030-01-01',NULL,'XI-B',0),(1112,'Kristina','2030-03-30',NULL,'XI-B',0),(1115,'Rea','2030-06-25',NULL,'XI-B',0),(1117,'Sara','2030-01-06',NULL,'XI-B',0),(1118,'Sara','2030-01-01',NULL,'XI-B',0),(1095,'Aleks','2030-01-01',NULL,'XI-B',0),(1097,'Deivid','2030-01-01',NULL,'XI-B',0),(1100,'Eno','2030-01-01',NULL,'XI-B',0),(1104,'Jorgo','2030-01-01',NULL,'XI-B',0),(1105,'Jorgo','2030-05-11',NULL,'XI-B',1),(1110,'Kristi','2030-07-31',NULL,'XI-B',1),(1120,'Theodhor','2030-12-31',NULL,'XI-B',1),(1124,'Biora','2030-03-18',NULL,'XI-C',0),(1126,'Eleni','2030-01-01',NULL,'XI-C',0),(1127,'Elvis','2030-01-01',NULL,'XI-C',1),(1128,'Erika','2030-01-01',NULL,'XI-C',0),(1129,'Erlinda','2030-01-01',NULL,'XI-C',0),(1130,'Geraldina','2030-01-01',NULL,'XI-C',0),(1131,'Geriola','2030-01-01',NULL,'XI-C',0),(1132,'Jorgjia','2030-01-01',NULL,'XI-C',0),(1133,'Jori','2030-05-16',NULL,'XI-C',0),(1134,'Kristel','2030-01-01',NULL,'XI-C',0),(1135,'Kristina','2030-01-01',NULL,'XI-C',0),(1136,'Laura','2030-01-01',NULL,'XI-C',0),(1138,'Paola','2030-07-07',NULL,'XI-C',0),(1139,'Romina','2030-12-03',NULL,'XI-C',0),(1141,'Stela','2030-01-01',NULL,'XI-C',0),(1122,'Adri','2030-12-30',NULL,'X-C',1),(1137,'Marjan','2030-08-29',NULL,'XI-C',1),(1140,'Sotiraq','2030-01-01',NULL,'XI-C',0),(1142,'Xhoan','2030-01-01',NULL,'XI-C',0),(1070,'Anamaria','2030-01-01',NULL,'XI-A',0),(1123,'Artjona','2030-08-26',NULL,'XI-C',0),(1119,'Sildi','2030-04-12',NULL,'XI-B',0),(1116,'Romina','2030-12-31',NULL,'XI-B',0),(1099,'Endi','2030-02-16',NULL,'XI-B',0),(1143,'Xhuljana','2030-08-21',NULL,'XI-C',0),(953,'Fioralba','2030-10-05',NULL,'ex-students',0),(988,'Stiven','2030-04-23',NULL,'ex-students',1),(936,'Leonidha ','2030-04-15',NULL,'ex-students',1);
/*!40000 ALTER TABLE `uinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-18 13:07:17
