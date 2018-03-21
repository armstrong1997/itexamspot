-- MySQL dump 10.16  Distrib 10.1.30-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: u275571278_exam
-- ------------------------------------------------------
-- Server version	10.1.30-MariaDB

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `roll` int(10) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (165041,'aaaAAA1!');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `roll` varchar(10) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `mark` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES ('5a7e75352a8bb','12.1 seconds','5a7e75352a9b1'),('5a7e75352a8bb','15 seconds      ','5a7e75352a96f'),('5a7e75352a8bb','10 seconds','5a7e75352a9e6'),('5a7e75352a8bb','8.1 seconds','5a7e75352aa1c'),('5a7e75352b627','230 meters','5a7e75352b661'),('5a7e75352b627','235 meters','5a7e75352b697'),('5a7e75352b627','240 meters','5a7e75352b6cd'),('5a7e75352b627','245 meters','5a7e75352b703'),('5a7e75352b81a','14 cm','5a7e75352b875'),('5a7e75352b81a','13.5 cm','5a7e75352b8aa'),('5a7e75352b81a','12.5 cm','5a7e75352b8e0'),('5a7e75352b81a','11.4 cm','5a7e75352b915'),('5a7e75352be33','1080 cm','5a7e75352bea4'),('5a7e75352be33','180 m','5a7e75352beda'),('5a7e75352be33','108 m','5a7e75352bf0f'),('5a7e75352be33','118 cm','5a7e75352bf46'),('5a7e75352c037','39, 30','5a7e75352c08e'),('5a7e75352c037','41, 32','5a7e75352c0c4'),('5a7e75352c037','42, 33','5a7e75352c0f9'),('5a7e75352c037','43, 34','5a7e75352c12e'),('5a7e75352c1fc','2:3','5a7e75352c27b'),('5a7e75352c1fc','1:1','5a7e75352c2b0'),('5a7e75352c1fc','3:4','5a7e75352c2e6'),('5a7e75352c1fc','4:3','5a7e75352c31b'),('5a7e75352c405','Rs.4991','5a7e75352c45e'),('5a7e75352c405','Rs.5991','5a7e75352c493'),('5a7e75352c405','Rs.6001','5a7e75352c4c8'),('5a7e75352c405','Rs.6991','5a7e75352c4fe'),('5a7e75352c5ce','47.55 kg','5a7e75352c600'),('5a7e75352c5ce','48 kg','5a7e75352c635'),('5a7e75352c5ce','48.55 kg','5a7e75352c66b'),('5a7e75352c5ce','49.25 kg','5a7e75352c6a0'),('5a7e75352c7aa','1 km/hr','5a7e75352c802'),('5a7e75352c7aa','2 km/hr','5a7e75352c837'),('5a7e75352c7aa','1.5 km/hr','5a7e75352c86c'),('5a7e75352c7aa','2.5 km/hr','5a7e75352c8a2'),('5a7e75352c982','9.4 km','5a7e75352c9da'),('5a7e75352c982','10.2 km','5a7e75352c9eb'),('5a7e75352c982','10.4 km','5a7e75352ca21'),('5a7e75352c982','9.2 km','5a7e75352ca57'),('5a7e75352cb37','3 km','5a7e75352cba5'),('5a7e75352cb37','4 km','5a7e75352cbdb'),('5a7e75352cb37','5 km','5a7e75352cc10'),('5a7e75352cb37','6 km','5a7e75352cc46'),('5a7e75352cd16','10:30 am','5a7e75352cd6e'),('5a7e75352cd16','10 am ','5a7e75352cda3'),('5a7e75352cd16','12 noon','5a7e75352cde8'),('5a7e75352cd16','11 am','5a7e75352ce1e'),('5a7e75352cf00','10 days','5a7e75352cf79'),('5a7e75352cf00','20 days','5a7e75352cfaf'),('5a7e75352cf00','5 days','5a7e75352cfe4'),('5a7e75352cf00','4 days','5a7e75352d01a'),('5a7e75352d0f1','16 2/3 days','5a7e75352d149'),('5a7e75352d0f1','13 1/3 days','5a7e75352d17f'),('5a7e75352d0f1','17 1/3 days','5a7e75352d1b4'),('5a7e75352d0f1','16 ½ days','5a7e75352d1ea'),('5a7e75352d2ce','360','5a7e75352d33c'),('5a7e75352d2ce','480','5a7e75352d372'),('5a7e75352d2ce','720','5a7e75352d3a7'),('5a7e75352d2ce','5040','5a7e75352d3dd'),('5a7e75352d4ac','210','5a7e75352d504'),('5a7e75352d4ac','1050','5a7e75352d53a'),('5a7e75352d4ac','25200','5a7e75352d56f'),('5a7e75352d4ac','21400','5a7e75352d5b6'),('5a7e75352d6ac','159','5a7e75352d716'),('5a7e75352d6ac','194','5a7e75352d74c'),('5a7e75352d6ac','205','5a7e75352d782'),('5a7e75352d6ac','209','5a7e75352d7b7'),('5a7e75352d893','266','5a7e75352d8eb'),('5a7e75352d893','5040','5a7e75352d920'),('5a7e75352d893','11760','5a7e75352d956'),('5a7e75352d893','86400','5a7e75352d98d'),('5a7e75352da7d','2:5','5a7e75352daf6'),('5a7e75352da7d','3:5','5a7e75352db2b'),('5a7e75352da7d','4:5','5a7e75352db61'),('5a7e75352da7d','6:7','5a7e75352db96'),('5a7e75352dc7a','Rs.500','5a7e75352dcc6'),('5a7e75352dc7a','Rs.1500','5a7e75352dcfc'),('5a7e75352dc7a','Rs.2000','5a7e75352dd31'),('5a7e75352dc7a','None of these','5a7e75352dd67'),('5a7e75352de47','20 ltr','5a7e75352dea1'),('5a7e75352de47','30 ltr','5a7e75352deda'),('5a7e75352de47','40 ltr','5a7e75352df0f'),('5a7e75352de47','60 ltr','5a7e75352df45'),('5a7e75352e022','20','5a7e75352e079'),('5a7e75352e022','30','5a7e75352e0af'),('5a7e75352e022','48','5a7e75352e0e4'),('5a7e75352e022','58','5a7e75352e11a'),('5a7e75352e202','4 1/3 hr','5a7e75352e25b'),('5a7e75352e202','7 hr','5a7e75352e292'),('5a7e75352e202','8 hr ','5a7e75352e2c8'),('5a7e75352e202','14 hr','5a7e75352e2fd'),('5a7e75352e3d2','6 hr','5a7e75352e436'),('5a7e75352e3d2','10 hr','5a7e75352e46b'),('5a7e75352e3d2','15 hr','5a7e75352e4a1'),('5a7e75352e3d2','30 hr','5a7e75352e4d7'),('5a7e75352e5d0','20 hr','5a7e75352e629'),('5a7e75352e5d0','25 hr','5a7e75352e65e'),('5a7e75352e5d0','35 hr','5a7e75352e694'),('5a7e75352e5d0','None of these','5a7e75352e6c9'),('5a7e7cf75f390','Swift','5a7e7cf75fead'),('5a7e7cf75f390','java','5a7e7cf75fee4'),('5a7e7cf75f390','wift','5a7e7cf75ff1a'),('5a7e7cf75f390','earl','5a7e7cf75ff50'),('5a7e7cf760536','120','5a7e7cf760598'),('5a7e7cf760536','g','5a7e7cf7605cd'),('5a7e7cf760536','garbage value','5a7e7cf760602'),('5a7e7cf760536','null','5a7e7cf760608'),('5a7e7cf760701','2','5a7e7cf76075c'),('5a7e7cf760701','2017','5a7e7cf760791'),('5a7e7cf760701','2017 Audi s4','5a7e7cf7607c6'),('5a7e7cf760701','address of the variable','5a7e7cf7607fc'),('5a7e7cf7608cd','17','5a7e7cf760924'),('5a7e7cf7608cd','34','5a7e7cf76095a'),('5a7e7cf7608cd','35','5a7e7cf76098f'),('5a7e7cf7608cd','compile error','5a7e7cf7609c4'),('5a7e7cf760ab9','%%HELLO%%%%WORLD%%','5a7e7cf760b13'),('5a7e7cf760ab9','HELLO WORLD','5a7e7cf760b49'),('5a7e7cf760ab9','%HELLO%','5a7e7cf760b7e'),('5a7e7cf760ab9','%HELLO%%WORLD%','5a7e7cf760bb3'),('5a7e7cf760c83','1','5a7e7cf760cdc'),('5a7e7cf760c83','0','5a7e7cf760d11'),('5a7e7cf760c83','false','5a7e7cf760d46'),('5a7e7cf760c83','true','5a7e7cf760d7b'),('5a7e7cf760e63','30','5a7e7cf760ebe'),('5a7e7cf760e63','27','5a7e7cf760ef4'),('5a7e7cf760e63','9','5a7e7cf760f29'),('5a7e7cf760e63','3','5a7e7cf760f5f'),('5a7e7cf761043','M','5a7e7cf76109c'),('5a7e7cf761043','Mello','5a7e7cf7610d2'),('5a7e7cf761043','MHello','5a7e7cf761107'),('5a7e7cf761043','HelloM','5a7e7cf76113d'),('5a7e7cf761228','J','5a7e7cf761282'),('5a7e7cf761228','Enter your name','5a7e7cf7612b8'),('5a7e7cf761228','s','5a7e7cf7612f3'),('5a7e7cf761228','JEnter your name','5a7e7cf761329'),('5a7e7cf761410','3 3','5a7e7cf761468'),('5a7e7cf761410','4 3 ','5a7e7cf76149e'),('5a7e7cf761410','3 5 ','5a7e7cf7614d3'),('5a7e7cf761410','3 6','5a7e7cf761508'),('5a7e7cf7615dd','ew_c_questioyWelcome   ','5a7e7cf761639'),('5a7e7cf7615dd','Welcomeew_c_questioy','5a7e7cf76166f'),('5a7e7cf7615dd','ew_c_question Welcome','5a7e7cf7616a4'),('5a7e7cf7615dd','Welcomeestioy','5a7e7cf7616e3'),('5a7e7cf7617dd','i=3  ','5a7e7cf761835'),('5a7e7cf7617dd','i=1','5a7e7cf76186a'),('5a7e7cf7617dd',' i=Garbage value','5a7e7cf7618a0'),('5a7e7cf7617dd','Complier error','5a7e7cf7618d5'),('5a7e7cf7619ab','110   ','5a7e7cf761a07'),('5a7e7cf7619ab','110 /*And this??*/','5a7e7cf761a3c'),('5a7e7cf7619ab','0','5a7e7cf761a72'),('5a7e7cf7619ab','5060','5a7e7cf761aa7'),('5a7e7cf761b9d','5 4 3 2 1   ','5a7e7cf761bf5'),('5a7e7cf761b9d','0 0 0 0','5a7e7cf761c2b'),('5a7e7cf761b9d','1 2 3 4 5','5a7e7cf761c60'),('5a7e7cf761b9d','infinite loop','5a7e7cf761c96'),('5a7e7cf761d93','Runtime Error ','5a7e7cf761df2'),('5a7e7cf761d93','100.120000','5a7e7cf761e28'),('5a7e7cf761d93','Complier error ','5a7e7cf761e6a'),('5a7e7cf761d93','100','5a7e7cf761eab'),('5a7e7cf761f80','Infinite loop  ','5a7e7cf761fd8'),('5a7e7cf761f80','0 ','5a7e7cf76200d'),('5a7e7cf761f80','1000','5a7e7cf762043'),('5a7e7cf761f80','DIVIDE ERROR','5a7e7cf762078'),('5a7e7cf76214a','1','5a7e7cf7621b8'),('5a7e7cf76214a','infinite loop','5a7e7cf7621f2'),('5a7e7cf76214a','7 5 3 1','5a7e7cf762227'),('5a7e7cf76214a','6 4 2','5a7e7cf76225d'),('5a7e7cf76236d','Compiler error','5a7e7cf7623c4'),('5a7e7cf76236d','0','5a7e7cf7623f9'),('5a7e7cf76236d','97','5a7e7cf76242f'),('5a7e7cf76236d','31','5a7e7cf762464'),('5a7e7cf762534','Compiler Error ','5a7e7cf7625b6'),('5a7e7cf762534','200 Berryspot ','5a7e7cf7625ec'),('5a7e7cf762534','NULL NULL','5a7e7cf762622'),('5a7e7cf762534','Garbage value','5a7e7cf762657'),('5a7e7cf762754','Compiler error  ','5a7e7cf7627aa'),('5a7e7cf762754','infinite loop','5a7e7cf7627e0'),('5a7e7cf762754','Non-Zero number ','5a7e7cf762815'),('5a7e7cf762754','Cannot be predicted','5a7e7cf76284b'),('5a7e7cf762920','15   ','5a7e7cf762987'),('5a7e7cf762920','53','5a7e7cf7629bd'),('5a7e7cf762920','12','5a7e7cf7629f2'),('5a7e7cf762920','10','5a7e7cf762a28'),('5a7e7cf762b0e','Hello ','5a7e7cf762b64'),('5a7e7cf762b0e','Hello Hello Hello Hello …….','5a7e7cf762b9a'),('5a7e7cf762b0e','Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello','5a7e7cf762bcf'),('5a7e7cf762b0e','Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello','5a7e7cf762c05'),('5a7e7cf762cd8','-1<<1 ','5a7e7cf762d33'),('5a7e7cf762cd8','fffffffe','5a7e7cf762d69'),('5a7e7cf762cd8','%x','5a7e7cf762d9e'),('5a7e7cf762cd8','fffe','5a7e7cf762dd4'),('5a7e7cf762ebe','34','5a7e7cf762f15'),('5a7e7cf762ebe','290','5a7e7cf762f4a'),('5a7e7cf762ebe','GARBAGE','5a7e7cf762f80'),('5a7e7cf762ebe','ERROR','5a7e7cf762fb6'),('5a7e7cf763096','1','5a7e7cf7630ec'),('5a7e7cf763096','7','5a7e7cf763122'),('5a7e7cf763096','0','5a7e7cf763157'),('5a7e7cf763096','8','5a7e7cf76318d');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES ('5a7e6ebb8af41','5a7e75352a8bb','How long does a train 110 meters long running at the speed of 72 km/hour take to cross a bridge 132 meters in length?',4,1),('5a7e6ebb8af41','5a7e75352b627','Length of train is 130 meters and speed of train is 45 km/hour. This train can pass a bridge in 30 seconds, then find the length of the bridge.\r\n',4,2),('5a7e6ebb8af41','5a7e75352b81a','A flagstaff 17.5 m high casts a shadow of length 40.25 m. What will be the height of a building, which casts a shadow of length 28.75 m under similar conditions?',4,3),('5a7e6ebb8af41','5a7e75352be33','A vertical toy 18 cm long casts a shadow 8 cm long on the ground. At the same time a pole casts a shadow 48 m. long on the ground. Then find the height of the pole?',4,4),('5a7e6ebb8af41','5a7e75352c037','Two students appeared at an examination. One of them secured 9 marks more than the other and his marks was 56% of the sum of their marks. The marks obtained by them are:',4,5),('5a7e6ebb8af41','5a7e75352c1fc','Two numbers A and B are such that the sum of 5% of A and 4% of B is two-third of the sum of 6% of A and 8% of B. Find the ratio of A : B',4,6),('5a7e6ebb8af41','5a7e75352c405','A grocer has a sale of Rs. 6435, Rs. 6927, Rs. 6855, Rs. 7230 and Rs. 6562 for 5 consecutive months. How much sale must he have in the sixth month so that he gets an average sale of Rs. 6500?',4,7),('5a7e6ebb8af41','5a7e75352c5ce','The average weight of 16 boys in a class is 50.25 kg and that of the remaining 8 boys is 45.15 kg. Find the average weights of all the boys in the class.',4,8),('5a7e6ebb8af41','5a7e75352c7aa','A man rows to a place 48 km distant and come back in 14 hours. He finds that he can row 4 km with the stream in the same time as 3 km against the stream. The rate of the stream is:',4,9),('5a7e6ebb8af41','5a7e75352c982','The speed of a boat in still water in 22 km/hr and the rate of current is 4 km/hr. The distance travelled downstream in 24 minutes is:',4,10),('5a7e6ebb8af41','5a7e75352cb37','A man goes to his office from his house at a speed of 3 km/hr and returns at a speed of 2 km/hr. If he takes 5 hours in going and coming, what is the distance between his house and office?',4,11),('5a7e6ebb8af41','5a7e75352cd16','The distance between two cities A and B is 330 km. A train starts from A at 8 a.m. and travels towards B at 60 km/hr. Another train starts from B at 9 a.m. and travels towards A at 75 km/hr. At what time will they meet?',4,12),('5a7e6ebb8af41','5a7e75352cf00','A can do a piece of work in 4 days. B can do it in 5 days. With the assistance of C they completed the work in 2 days. Find in how many days can C alone do it?',4,13),('5a7e6ebb8af41','5a7e75352d0f1','A can do a piece of work in 30 days. He works at it for 5 days and then B finishes it in 20 days. In what time can A and B together it?',4,14),('5a7e6ebb8af41','5a7e75352d4ac','Out of 7 consonants and 4 vowels, how many words of 3 consonants and 2 vowels can be formed?',4,16),('5a7e6ebb8af41','5a7e75352d6ac','In a group of 6 boys and 4 girls, four children are to be selected. In how many different ways can they be selected such that at least one boy should be there?',4,17),('5a7e6ebb8af41','5a7e75352d893','In how many ways a committee, consisting of 5 men and 6 women can be formed from 8 men and 10 women?',4,18),('5a7e6ebb8af41','5a7e75352da7d','Two numbers are respectively 20% and 50% more than a third number. The ratio of the two numbers is:',4,19),('5a7e6ebb8af41','5a7e75352de47','In a mixture 60 litres, the ratio of milk and water 2 : 1. If this ratio is to be 1 : 2, then the quanity of water to be further added is:',4,21),('5a7e6ebb8af41','5a7e75352e022','The sum of three numbers is 98. If the ratio of the first to second is 2 :3 and that of the second to the third is 5 : 8, then the second number is:',4,22),('5a7e6ebb8af41','5a7e75352e202','A pump can fill a tank with water in 2 hours. Because of a leak, it took 2  hours to fill the tank. The leak can drain all the water of the tank in:',4,23),('5a7e6ebb8af41','5a7e75352e3d2','A tank is filled by three pipes with uniform flow. The first two pipes operating simultaneously fill the tank in the same time during which the tank is filled by the third pipe alone. The second pipe fills the tank 5 hours faster than the first pipe and 4 hours slower than the third pipe. The time required by the first pipe is:',4,24),('5a7e6ebb8af41','5a7e75352e5d0','A tank is filled in 5 hours by three pipes A, B and C. The pipe C is twice as fast as B and B is twice as fast as A. How much time will pipe A alone take to fill the tank?',4,25),('5a7e7768aa5fe','5a7e7cf75f390','#include<stdio.h>\r\nInt main(){\r\nStatic char *s[]={“python”,”pearl”,”swift”,”java”};\r\nChar **ptr[]={s+3,s+2,s+1,s}, **p;\r\nP=ptr;\r\n++p;\r\nPrintf(“%s”,**p+1);\r\nReturn 0;\r\n}\r\n',4,1),('5a7e7768aa5fe','5a7e7cf760536','#include<stdio.h>\r\nInt main(){\r\nChar a=30;\r\nChar b=40;\r\nChar c=10;\r\nChar d=(a*b)/c;\r\nPrintf(“%d”,d);\r\nReturn 0;\r\n}\r\n',4,2),('5a7e7768aa5fe','5a7e7cf760701','Char *getString(){\r\n  Char *str=”2017 Audi S4 ”;\r\n  Return str;\r\n}\r\nInt main(){\r\n  Printf(“%s”,getString());\r\n Getch(); \r\n Return 0;\r\n}\r\n',4,3),('5a7e7768aa5fe','5a7e7cf7608cd','Int main(){\r\n  Char arr[]=”DocumentAreaDemo”;\r\n //check virtual\r\n“DocumentAreaDemo()”;\r\n  Printf(“%d”,sizeof(arr));\r\n  Getch();\r\n  Return 0;\r\n}\r\n',4,4),('5a7e7768aa5fe','5a7e7cf760ab9','Int main(){\r\nPrintf(“%% HELLO %%%%WORLD %%”);\r\nReturn 0; }\r\n',4,5),('5a7e7768aa5fe','5a7e7cf760c83','#include<stdio.h>\r\nEnum{ false, true};\r\n#include<conio.h>\r\n\r\nInt main(){\r\n  Int i=1;\r\n Do{\r\n Printf(“%d\n”,i);\r\n i++;\r\nif (i<15)\r\n   break;\r\n} while(true); \r\nGetch(); return 0;\r\n}\r\n',4,6),('5a7e7768aa5fe','5a7e7cf760e63','Int main(){\r\n  Int i=3,*j;\r\nj=&i;\r\nprintf(“%d\n”,i**j*i+*j);\r\nreturn 0;\r\n}\r\n',4,7),('5a7e7768aa5fe','5a7e7cf761043','Int main(){\r\nChar str[20]=”Hello”;\r\nChar *const p=str;\r\n*p=’M’;\r\nPrintf(“%s\n”,str);\r\nGetch();\r\nReturn 0;\r\n}\r\n',4,8),('5a7e7768aa5fe','5a7e7cf761228','Int main(){\r\n  Char *str=”Enter your name”;\r\nStr=”%s”;\r\nPrintf(str,”J\n”);\r\nGetch();\r\nReturn 0;\r\n}\r\n',4,9),('5a7e7768aa5fe','5a7e7cf761410','Int main(){\r\nInt a=1;\r\nInt b=0;\r\nb=++a + ++a;\r\nPrintf(“%d %d”,a,b);\r\nReturn 0;\r\n}\r\n',4,10),('5a7e7768aa5fe','5a7e7cf7615dd','Int main(){\r\nPrintf(“\new_c_questiony”);\r\nPrintf(“\rWelcome”);\r\nReturn 0;\r\n}\r\n',4,11),('5a7e7768aa5fe','5a7e7cf7617dd','Int main(){\r\n  Int i;\r\ni=(1,2,3);\r\nPrintf(“i=%d\n”);\r\nReturn 0;\r\n}\r\n',4,12),('5a7e7768aa5fe','5a7e7cf7619ab','Int main(){\r\nInt first=50,second=60,third;\r\nThird=first /*will this comment work?? */ +second;\r\nPrintf(“%d /* and this ?*/”,first+second);\r\n}\r\n',4,13),('5a7e7768aa5fe','5a7e7cf761b9d','Int main(){\r\nStatic int i=5;\r\nIf(--i){\r\n main():\r\nprintf(“%d”,i);\r\n}\r\nReturn 0;\r\n}\r\n',4,14),('5a7e7768aa5fe','5a7e7cf761d93','#include<stdio.h>\r\n#define f(g,g2) g##g2\r\nInt main(){\r\nInt var12=100;\r\nPrintf(“%d”,f(var,12));\r\nGetch();return 0;\r\n}\r\n',4,15),('5a7e7768aa5fe','5a7e7cf761f80','Int main(){\r\nInt c=5,no=1000;\r\nDo{\r\n no/=c;\r\n} while(c--);\r\nPrintf(“%d\n”,no);\r\nReturn 0;\r\n}\r\n',4,16),('5a7e7768aa5fe','5a7e7cf76214a','#include<stdio.h>\r\nint main()\r\n{\r\n   int n;\r\n   for(n = 7; n!=0; n--)\r\n     printf(\"n = %d\", n--);\r\n   getchar();\r\n   return 0;\r\n}\r\n',4,17),('5a7e7768aa5fe','5a7e7cf76236d','#include <stdio.h>\r\nint main()\r\n{\r\n    int Berry;\r\n    Berry = (97, 65, 31);         \r\n    printf(\"i  = %d\n\", i);\r\n \r\n    getchar();\r\n     return 0;\r\n}\r\n',4,18),('5a7e7768aa5fe','5a7e7cf762534','#include‹stdio.h›\r\nint main()\r\n{\r\n    struct site\r\n    {\r\n        char name[] = \"BerrySpot\";\r\n        int no_of_projects = 200;\r\n    };\r\n    struct site *ptr;\r\n    printf(\"%d\",ptr->no_of_projects);\r\n    printf(\"%s\",ptr->name); \r\n    getchar();\r\n    return 0;\r\n}\r\n',4,19),('5a7e7768aa5fe','5a7e7cf762754','int main()\r\n{\r\n    while(1){\r\n        if(printf(\"%d\",printf(\"%d\")))\r\n            break;\r\n        else\r\n            continue;\r\n    }\r\n    return 0;\r\n}\r\n',4,20),('5a7e7768aa5fe','5a7e7cf762920','#define prod(a,b) a*b\r\nint main()\r\n{\r\n    int x=3,y=4;\r\n    printf(\"%d\",prod(x+2,y-1));\r\n    return 0;\r\n}\r\n',4,21),('5a7e7768aa5fe','5a7e7cf762b0e','#include <iostream>\r\nusing namespace std;\r\nint main()\r\n{\r\n    int loopvar = 10;\r\n    while (printf(\"Hello \") && loopvar--)\r\n        ;\r\n    return 0;\r\n}\r\n',4,22),('5a7e7768aa5fe','5a7e7cf762cd8','#include<stdio.h>\r\nint main()\r\n{\r\n   printf(\"%x\", -1<<1);\r\n   getchar();\r\n   return 0;\r\n} //Assume 32-bit complier\r\n',4,23),('5a7e7768aa5fe','5a7e7cf762ebe','#include <stdio.h>\r\nvoid main(){\r\n    unsigned char c=290;\r\n    printf(\"%d\",c);\r\n}\r\n',4,24),('5a7e7768aa5fe','5a7e7cf763096','#include <stdio.h>\r\nvoid main(){\r\n    int a=0;\r\n    a=5||2|1;\r\n    printf(\"%d\",a);\r\n}\r\n',4,25);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `mark` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `rank`
--

DROP TABLE IF EXISTS `rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rank` (
  `roll` varchar(10) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `upload`
--

DROP TABLE IF EXISTS `upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload`
--

/*!40000 ALTER TABLE `upload` DISABLE KEYS */;
INSERT INTO `upload` VALUES (1,'fb7335d4d27d430fcd76f90a7515d40e.jpg');
/*!40000 ALTER TABLE `upload` ENABLE KEYS */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `roll` varchar(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `mailid` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `section` varchar(1) NOT NULL,
  `cgpa` float NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `sig` varchar(30) NOT NULL,
  `middlename` varchar(30) NOT NULL,
  `filename` varchar(40) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`roll`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping routines for database 'u275571278_exam'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-07 11:50:09
