CREATE DATABASE  IF NOT EXISTS `sa40team06` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sa40team06`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: localhost    Database: sa40team06
-- ------------------------------------------------------
-- Server version	5.7.7-rc-log

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `CustomerID` int(10) NOT NULL,
  `CustomerName` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `PhoneNo` int(15) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (10,'Zin tan','choa chu kang ',96392345),(11,'Ducky','sembavang',96922340),(12,'Dony','poongol',95874755),(13,'Megha','tampanise',43747855),(14,'Salman','changi',34569422),(15,'Nivin','clementi',96933845),(16,'Karthik','jurongeast',93765345),(17,'Geetha','Boonlay',98345755),(18,'Johnson','Pioneer',87464646),(19,'Mariya','Dover',98464325),(20,'Marry','Woodlands',96243647),(21,'Catherine','Yishun',93647568),(22,'Mavin','Bishan',92636474),(23,'Kathrina','CityHall',95647635),(24,'Renika','Lavender',96268334),(25,'Sathish','PayaLabor',75434822),(26,'Abhilash','Bedok',45454656),(27,'Sen Tan','WestCoast',74662788),(28,'YO Lee','PasirRise',46774465),(29,'Gatine','Yew tee',64588499),(30,'Sameer','Bukit batok',63243543);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturer` (
  `ManufacturerName` varchar(45) NOT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `PhoneNo` int(15) DEFAULT NULL,
  `ContactPerson` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ManufacturerName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES ('Aafloat  Ltd. ','jurongeast',93765346,'senthil'),('Aarti Industries Ltd','changi',34569423,'abhinaya'),('Aastha Minmet (India) Ltd. ','CityHall',95647636,'aruna'),('Acrow India Ltd. ','Boonlay',98345756,'kumer'),('Aditya Birla Ltd ','clementi',96933846,'mukunth'),('Advance Multitech Ltd. ','Lavender',96268335,'merlin'),('AJ Brothers Ltd ','Yishun',93647569,'vishali'),('Arex Industries Ltd ','Dover',98464326,'siva'),('ASCU ARCH Protection Ltd. ','Bishan',92636475,'vijayalakshmi'),('Ashima Ltd ','Pioneer',87464647,'karthik'),('Aviva Industries Ltd ','Woodlands',96243648,'shobhana'),('Elantas Beck India Ltd. ','WestCoast',74662789,'gopal'),('Emmessar Ltd ','PasirRise',46774466,'john'),('Entegra Ltd ','Bedok',45454657,'rajesh'),('Eureka Industries Ltd. ','PayaLabor',75434823,'mani'),('Faze Three Ltd ','Yew tee',64588498,'jessie'),('First Winner Industries Ltd ','Bukit batok',63243544,'jennifer'),('Fix Tools','choa chu kang ',96392346,'arun'),('M&M Tools','poongol',95874756,'sreesha'),('Robert Bosch GmbH‎','tampanise',43747856,'dhivya'),('TMC','sembavang',96922341,'santhosh');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordertransaction`
--

DROP TABLE IF EXISTS `ordertransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordertransaction` (
  `OrTransactionId` int(10) NOT NULL,
  `PartNo` int(10) DEFAULT NULL,
  `OrderQty` int(10) DEFAULT NULL,
  `ManufacturerName` varchar(45) DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `UserId` int(10) DEFAULT NULL,
  `OrderPrice` double DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OrTransactionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordertransaction`
--

LOCK TABLES `ordertransaction` WRITE;
/*!40000 ALTER TABLE `ordertransaction` DISABLE KEYS */;
INSERT INTO `ordertransaction` VALUES (1000,4,10,'Fix Tools','2015-03-20',1,600,'Confirm'),(1001,5,23,'TMC','2015-05-12',2,2023.54,'Pending'),(1002,6,34,'M&M Tools','2015-04-20',2,1092.08,'Confirm'),(1003,7,2,'Robert Bosch GmbH‎','2015-06-12',2,157.4,'Pending'),(1004,8,45,'Aarti Industries Ltd','2015-05-01',1,3015,'Pending'),(1005,9,34,'Aditya Birla Ltd ','2015-03-12',1,2210,'Confirm'),(1006,10,12,'Aafloat  Ltd. ','2015-06-10',1,12,'Pending'),(1007,11,23,'Acrow India Ltd. ','2015-03-09',1,23000,'Confirm'),(1008,12,34,'Ashima Ltd ','2015-03-12',2,1904,'Confirm'),(1009,13,11,'Arex Industries Ltd ','2015-03-22',2,15000,'Confirm'),(1010,14,33,'Aviva Industries Ltd ','2015-01-20',2,396,'Confirm'),(1011,15,45,'AJ Brothers Ltd ','2015-06-09',2,2025,'Pending'),(1012,16,23,'ASCU ARCH Protection Ltd. ','2015-06-10',2,1541,'Pending'),(1013,17,23,'Aastha Minmet (India) Ltd. ','2015-05-21',1,1288,'Pending'),(1014,18,56,'Advance Multitech Ltd. ','2015-03-02',1,5525.52,'Confirm'),(1015,19,43,'Eureka Industries Ltd. ','2015-05-21',1,1487.8,'Pending'),(1016,20,65,'Entegra Ltd ','2015-05-10',1,1522.95,'Pending'),(1017,21,45,'Elantas Beck India Ltd. ','2015-05-13',2,3959.1,'Pending'),(1018,22,78,'Emmessar Ltd ','2015-01-19',2,78000,'Confirm'),(1019,23,57,'Faze Three Ltd ','2015-05-10',2,78.7,'Pending'),(1020,24,43,'First Winner Industries Ltd ','2015-05-11',1,43000,'Pending'),(1021,25,23,'Fedders Lloyd Corporation Ltd. ','2015-01-19',1,78,'Confirm'),(1022,26,56,'Forbes & Company Ltd. ','2015-05-13',1,56000,'Pending'),(1023,27,76,'GSL (India) Ltd. ','2015-05-05',1,76000,'Pending'),(1024,28,42,'Gravity (India) Ltd ','2015-01-14',2,42000,'Confirm'),(1025,29,12,'Gujarat Industries Power Company Ltd ','2015-05-10',1,12000,'Pending'),(1026,30,45,'Grand Foundry Ltd ','2015-03-19',1,45000,'Confirm'),(1027,31,87,'Gorani Industries Ltd. ','2015-05-13',1,87000,'Pending'),(1028,32,54,'GTN Industries Ltd ','2015-01-19',1,54000,'Confirm'),(1029,33,34,'GB Tools & Forgings Ltd. ','2015-05-10',2,35000,'Pending'),(1030,34,57,'GSAL (India) Ltd ','2015-01-01',2,57000,'Confirm'),(1031,35,53,'Global Industries Ltd. ','2015-05-01',2,53000,'Pending'),(1032,36,12,'Haria Exports Ltd ','2015-05-01',2,15000,'Pending'),(1034,37,76,'Havells India Ltd ','2015-05-03',2,76000,'Pending'),(1035,38,56,'M&M Tools','2015-01-10',2,56000,'Confirm'),(1036,39,45,'Hindusthan Udyog Ltd. ','2015-05-13',2,45000,'Pending'),(1037,40,34,'S & S Industries Ltd. ','2015-05-03',1,35000,'Pending'),(1038,41,23,'Hinafil India Ltd ','2015-05-13',1,23000,'Pending'),(1039,42,34,'HK Finechem Ltd ','2015-05-12',1,34000,'Pending'),(1040,43,56,'Hariyana Metals Ltd. ','2015-02-12',1,54000,'Confirm'),(1041,44,67,'Hexa Tradex Ltd. ','2015-01-14',2,70000,'Confirm'),(1042,45,75,'Hind Rectifiers Ltd. ','2015-02-13',2,80000,'Confirm'),(1043,46,23,'ISPL Industries Ltd. ','2015-05-12',2,23000,'Pending'),(1044,47,46,'IFB Industries Ltd ','2015-02-12',1,50000,'Confirm'),(1045,48,67,'Indokem Ltd. ','2015-05-12',1,70000,'Pending'),(1046,49,45,'Indus Fila Ltd ','2015-01-10',1,2520,'Confirm'),(1047,50,12,'JCT Limited ','2015-05-12',1,432,'Pending');
/*!40000 ALTER TABLE `ordertransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `PartNo` int(10) NOT NULL,
  `PartName` varchar(45) NOT NULL,
  `UnitPrice` double DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `Color` varchar(45) DEFAULT NULL,
  `Dimension` varchar(45) DEFAULT NULL,
  `Category` varchar(45) DEFAULT NULL,
  `ManufacturerName` varchar(45) DEFAULT NULL,
  `ReorderLvl` int(10) DEFAULT NULL,
  `MinReorderQty` int(10) DEFAULT NULL,
  `ShelfLocation` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PartNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (4,'Door latch',60,' locking mechanism','grey','50cm','Car Part','Fix Tools',3,45,'D23'),(5,'Hydrometer',87.98,'used to measure the specific gravity','white','30inch','Lorry Part','TMC',2,56,'C12'),(6,'airbag',32.12,'car safety part','black','23inch','Auto Part','M&M Tools',4,75,'G54'),(7,'emergency brake',78.7,'used to stop vehicle','black','43inch','Bus Part','Robert Bosch GmbH‎',5,34,'A23'),(8,'headlight',67,'s','red','10mm','Car Part','Aarti Industries Ltd',7,87,'A12'),(9,'odometer',65,'used to caluclate distance','blue','43mm','Lorry Part','Aditya Birla Ltd ',8,65,'B45'),(10,'power steering',43,'helps drivers steer','black','23mm','Auto Part','Aafloat  Ltd. ',2,23,'K45'),(11,'roof rack',78,'a framework for carrying luggage ','blue','78mm','Bus Part','Acrow India Ltd. ',1,45,'C76'),(12,'vents',56,'an opening that allows air','grey','50cm','Car Part','Ashima Ltd ',6,12,'E24'),(13,'rims',36,'the upper or outer edge of an object,','white','30inch','Lorry Part','Arex Industries Ltd ',3,89,'G43'),(14,'mirror',12,'a surface, typically of glass coated','lemon','23inch','Auto Part','Aviva Industries Ltd ',2,54,'J36'),(15,'manifold',45,'a pipe or chamber branching','purple','43inch','Bus Part','AJ Brothers Ltd ',4,29,'D02'),(16,'jack',67,'a device for lifting heavy objects,','white','10mm','Car Part','ASCU ARCH Protection Ltd. ',6,65,'E21'),(17,'fuse',56,'blend to form a single entity','red','43mm','Lorry Part','Aastha Minmet (India) Ltd. ',8,47,'B32'),(18,'baby seat',98.67,'car seat for kids','blue','23mm','Auto Part','Advance Multitech Ltd. ',1,76,'F23'),(19,'bumper',34.6,'used to to reduce damage in a collision.','black','78mm','Bus Part','Eureka Industries Ltd. ',2,49,'S07'),(20,'horn',23.43,'a hard permanent outgrowth','white','50cm','Car Part','Entegra Ltd ',4,45,'V45'),(21,'piston',87.98,'a disc or short cylinder ','red','30inch','Lorry Part','Elantas Beck India Ltd. ',5,56,'N45'),(22,'hubcap',32.12,'a metal or plastic cover','white','23inch','Auto Part','Emmessar Ltd ',5,75,'A78'),(23,'GPS',78.7,'Global Positioning System','red','43inch','Bus Part','Faze Three Ltd ',7,34,'F12'),(24,'axle',43,'a rod or spindle ','red','10mm','Car Part','First Winner Industries Ltd ',8,87,'U45'),(25,'carburetor',78,'a device in an internal-combustion engine','black','43mm','Lorry Part','Fedders Lloyd Corporation Ltd. ',2,65,'A09'),(26,'gauge',56,' measures contents','white','30inch','Auto Part','Forbes & Company Ltd. ',1,23,'B08'),(27,'exhaust pipe',36,'a long tube made of metal ','red','23inch','Bus Part','GSL (India) Ltd. ',6,45,'C07'),(28,'crankshaft',56,'a shaft driven by a crank.','blue','43inch','Car Part','Gravity (India) Ltd ',3,12,'D06'),(29,'windshield',36,'a windscreen','red','10mm','Lorry Part','Gujarat Industries Power Company Ltd ',2,89,'E05'),(30,'gasket',32.1,'ring of rubber','white','43mm','Auto Part','Grand Foundry Ltd ',4,54,'F05'),(31,'alarm',29.3,'an anxious awareness of danger.','red','23mm','Bus Part','Gorani Industries Ltd. ',6,29,'G46'),(32,'radio',65,'send a message by radio.','white','30inch','Car Part','GTN Industries Ltd ',8,65,'H43'),(33,'valve',87.98,'controlling the passage of fluid','white','23inch','Lorry Part','GB Tools & Forgings Ltd. ',1,47,'I12'),(34,'grille',32.12,'a grating or screen of metal bars','black','43inch','Auto Part','GSAL (India) Ltd ',2,76,'T66'),(35,'tire',78.7,'used for smooth running','white','10mm','Bus Part','Global Industries Ltd. ',4,49,'C01'),(36,'tachometer',77,'measures the working speed','blue','43mm','Car Part','Haria Exports Ltd ',5,45,'V03'),(37,'chassis',98.67,'the base frame of a car','black','23mm','Lorry Part','Havells India Ltd ',5,56,'N04'),(38,'speaker',34.6,'device which provides sound','red','78mm','Auto Part','M&M Tools',7,75,'H07'),(39,'fuel cap',23.43,'cap for the fuel tank','black','43mm','Bus Part','Hindusthan Udyog Ltd. ',8,34,'H91'),(40,'Ratchet Spring',60,'Switch device','blue','23mm','Car Part','S & S Industries Ltd. ',2,87,'H02'),(41,'High Speed Needle',87.98,'Controls how much fuel gets','black','78mm','Lorry Part','Hinafil India Ltd ',1,65,'H01'),(42,'Throttle Arm',32.12,'lever that controls a throttle valve','red','50cm','Auto Part','HK Finechem Ltd ',6,23,'S27'),(43,'Lock Cone',48.2,'very thin and flat','white','30inch','Bus Part','Hariyana Metals Ltd. ',3,45,'S05'),(44,'Venturi',98.67,'a short piece of narrow tube','white','23inch','Car Part','Hexa Tradex Ltd. ',2,12,'F51'),(45,'Silent Muffler',34.6,'device for reducing noise','black','43inch','Lorry Part','Hind Rectifiers Ltd. ',4,89,'O08'),(46,'Prop Washer',23.43,'holds a rotating part in place','red','56mm','Auto Part','ISPL Industries Ltd. ',6,54,'H03'),(47,'Carb Retainer',65.61,'means of conical needle','blue','54mm','Bus Part','IFB Industries Ltd ',8,29,'H05'),(48,'Stay Bolt Set',78,'comprising a shank','black','87mm','Car Part','Indokem Ltd. ',1,65,'Z23'),(49,'Sump',56,'depression in which liquid collects','black','23mm','Lorry Part','Indus Fila Ltd ',2,47,'V44'),(50,'Spark Plug',36,'engines make use of a spark','blue','09mm','Auto Part','JCT Limited ',4,76,'G55');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_inventory`
--

DROP TABLE IF EXISTS `product_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_inventory` (
  `PartNo` int(10) NOT NULL,
  `TotalQty` int(10) DEFAULT NULL,
  `DamagedQty` int(10) DEFAULT NULL,
  `AvailableQty` int(10) DEFAULT NULL,
  PRIMARY KEY (`PartNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_inventory`
--

LOCK TABLES `product_inventory` WRITE;
/*!40000 ALTER TABLE `product_inventory` DISABLE KEYS */;
INSERT INTO `product_inventory` VALUES (4,5,0,5),(5,100,11,90),(6,6,1,5),(7,15,2,13),(8,120,10,100),(9,50,4,46),(10,60,10,50),(11,80,3,77),(12,40,5,35),(13,61,4,57),(14,80,2,78),(15,95,8,87),(16,150,10,140),(17,250,4,146),(18,170,5,165),(19,300,7,243),(20,250,15,135),(21,30,7,23),(22,50,9,41),(23,70,11,59),(24,25,1,24),(25,45,0,45),(26,20,1,19),(27,100,30,70),(28,280,20,260),(29,21,1,20),(30,12,2,10),(31,5,0,5),(32,40,12,28),(33,111,11,100),(34,25,20,5),(35,72,3,69),(36,45,4,41),(37,30,3,27),(38,95,5,90),(39,15,2,13),(40,120,20,100),(41,12,10,2),(42,33,3,30),(43,96,6,90),(44,48,8,40),(45,50,25,25),(46,67,7,60),(47,32,2,30),(48,12,2,10),(49,10,1,9),(50,80,5,75);
/*!40000 ALTER TABLE `product_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usagetransaction`
--

DROP TABLE IF EXISTS `usagetransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usagetransaction` (
  `UsTransactionId` int(10) NOT NULL,
  `UserId` int(10) DEFAULT NULL,
  `CustomerId` int(10) DEFAULT NULL,
  `VehicleId` varchar(45) DEFAULT NULL,
  `PartNo` int(10) DEFAULT NULL,
  `QtyUsed` int(10) DEFAULT NULL,
  `UsageDate` date DEFAULT NULL,
  PRIMARY KEY (`UsTransactionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usagetransaction`
--

LOCK TABLES `usagetransaction` WRITE;
/*!40000 ALTER TABLE `usagetransaction` DISABLE KEYS */;
INSERT INTO `usagetransaction` VALUES (10000,3,10,'E02048',4,30,'2006-06-05'),(10001,4,11,'A03452',5,40,'2015-04-06'),(10002,3,12,'V04755',6,20,'2014-08-03'),(10003,4,13,'B37585',7,18,'2012-07-02'),(10004,3,14,'B79435',8,50,'2015-05-03'),(10005,4,15,'E02049',9,35,'2013-06-05'),(10006,3,16,'A03453',10,25,'2015-06-06'),(10007,4,17,'V04756',11,45,'2015-05-02'),(10008,3,18,'B121285',12,20,'2014-06-02'),(10009,4,19,'B163135',13,61,'2013-06-05'),(10010,3,20,'E02050',14,85,'2013-03-04'),(10011,4,21,'A03454',15,45,'2013-08-05'),(10012,3,22,'V04757',16,45,'2015-04-02'),(10013,4,23,'B204985',17,90,'2015-04-03'),(10014,3,24,'B246835',18,67,'2014-05-04'),(10015,4,25,'E02051',19,38,'2014-07-02'),(10016,3,26,'A03455',20,50,'2014-07-02'),(10017,4,27,'V04758',21,55,'2013-03-02'),(10018,3,28,'B288685',22,65,'2014-04-03'),(10019,4,29,'B330535',23,20,'2015-08-06'),(10020,3,30,'E02052',24,14,'2014-07-05'),(10021,4,31,'A03456',25,12,'2013-04-03'),(10022,3,32,'V04759',26,78,'2012-06-05'),(10023,4,33,'B372385',27,34,'2014-06-08'),(10024,3,34,'B414235',28,64,'2015-04-01'),(10025,4,35,'E02053',29,27,'2014-02-09'),(10026,3,36,'A03457',30,84,'2015-04-07'),(10027,4,37,'V04760',31,90,'2014-08-05'),(10028,3,38,'B456085',32,67,'2015-03-09'),(10029,4,39,'B497935',33,85,'2015-05-07'),(10030,3,40,'E02054',34,23,'2005-09-08'),(10031,4,41,'A03458',35,78,'2009-09-06');
/*!40000 ALTER TABLE `usagetransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `UserId` int(10) NOT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `PhoneNo` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `UserType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Divya','KentRidge','77382761','abc123','Admin'),(2,'Phu','MaryMount','88992719','abcdefg','Admin'),(3,'Zeus','Boonlay','82936281','aaa123','Mechanic'),(4,'Carl','Clementi','77288261','bond007','Mechanic');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle` (
  `VehicleID` varchar(45) NOT NULL,
  `OwnerID` int(10) NOT NULL,
  `VehicleType` varchar(45) DEFAULT NULL,
  `VehicleModel` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`VehicleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES ('A03452',11,'Sedan','Chevrolet Corvet'),('A03453',16,'Sports','Ford Mustang'),('A03454',21,'Sports','Porshe 914'),('A03455',26,'Sedan','Buick Riviera'),('A03456',31,'Sports','Lamborghini Gallato'),('A03457',36,'Sports','Mitshubishi Cordia'),('A03458',41,'Sedan','Chevrolet Corvett'),('B121285',18,'Sports','Pontiac GTO'),('B163135',19,'Sedan','Audi A6'),('B204985',23,'Sedan','Toyota Celica'),('B246835',24,'Sedan','Mecedez Benz W123'),('B288685',28,'Hatchback','Maruti 800'),('B330535',29,'Sedan','Honda Civic'),('B372385',33,'Hatchback','Hyndai Santro'),('B37585',13,'Sports','Ford Thunderbird'),('B414235',34,'Sedan','BMW'),('B456085',38,'Sedan','Audi Quattro'),('B497935',39,'Sedan','Subaru Brat'),('B79435',14,'Hatchback','Austin MiniCooper'),('E02048',10,'Sports','Chryslar Imperial'),('E02049',15,'Sports','Pontiac Tempest'),('E02050',20,'Sports','Mercury Cougar'),('E02051',25,'Sports','Volkswagen Golf'),('E02052',30,'Sports','LandRover'),('E02053',35,'Sedan','Nissan 280x'),('E02054',40,'Sports','Porshe 944'),('V04755',12,'Sports','BMW 600'),('V04756',17,'Hatchback','Volkswagen Beetle'),('V04757',22,'Sports','Chevrolet Monza'),('V04758',27,'Hatchback','Dodge Omni'),('V04759',32,'Sports','Ferrari'),('V04760',37,'Sedan','Buick Electra');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-14 13:30:04
