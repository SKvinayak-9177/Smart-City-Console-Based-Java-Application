CREATE DATABASE  IF NOT EXISTS `smartydb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `smartydb`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: smartydb
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `password_UNIQUE` (`password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('narendra','narendra@123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cafe_bahar`
--

DROP TABLE IF EXISTS `cafe_bahar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cafe_bahar` (
  `Menu` text,
  `price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cafe_bahar`
--

LOCK TABLES `cafe_bahar` WRITE;
/*!40000 ALTER TABLE `cafe_bahar` DISABLE KEYS */;
INSERT INTO `cafe_bahar` VALUES ('Chicken Hot/Sour Soup',60),('Chicken Corn Soup',60),('Chicken Clear Soup',60),('Veg. Corn Soup',60),('Veg. Clear Soup',60),('Tomato Soup',60),('Veg. Hot/Sour Soup',60),('Bahar Spl. Biryani Family Pack',380),('Chicken Jumbo Pack (Full Bird)',550),('Chicken Family Pack',340),('Chicken Biryani (2 Pcs)',300),('Chicken Biryani',170),('Extra Chicken Piece',100),('Mutton Jumbo Pack (2 Kg. Mutton)',580),('Mutton Family Pack',380),('Double Mutton Single Biryani',360),('Mutton Biryani',200),('Mutton Kheema Biryani',190),('Fish Boneless Biryani',190),('Egg Biryani (Non-Veg)',100),('Veg Biryani',100),('Grilled Chicken',230),('Tandoori Chicken Full',220),('Tandoori Chicken Half',150),('Chicken Kalmi Kebab (3pcs)',150),('Chicken Tangdi Kebab',150),('Chicken Garlic Kebab',180),('Chicken Tikka Kebab',180),('Fish Tikka Kebab',190),('Mutton Boti Kebab',320),('Paneer Tikka',170),('Subz Shaami Kebab',170),('Kadai Mutton',240),('Mutton Hyderabadi',240),('Bahar Spl. Mutton',250),('Ginger Mutton',240),('Mutton Shahi Kurma',310),('Mutton Mughlai',240),('Mutton-Do-Pyaza',240),('Mutton Roast',240),('Mutton Kheema Masala',160),('Mutton Chilly Fry',240),('Kheema Peas Masala',160),('Mutton Tikka Masala',310),('Chicken Tikka Masala',230),('Chicken Kashmiri',200),('Chicken Mughlai',200),('Chicken Chilly Masala',200),('Chicken Afghani',210),('Kadai Chicken',200),('Chicken Roast',200),('Dum Ka Chicken Full',300),('Dum Ka Chicken Half',180),('Chicken Chilly Fry',200),('Butter Chicken',180),('Chicken Shahi Kurma',230),('Tandoori Chicken Masala',230),('Chicken Drum Sticks',200),('Chilly Chicken Manchuria D/W',170),('Cashew Nut Chicken Dry',200),('Pepper Chicken Dry',200),('Ginger Chicken (With Bones)',170),('Ginger Chicken (Boneless) D/W',180),('Chicken 65 (Boneless)',140),('Chicken Manchuria (Boneless)',150),('Prawns Fried Rice',120),('Mixed Fried Rice',120),('Chicken Fried Rice',100),('Egg Fried Rice',90),('Veg. Fried Rice',90),('Zeera Fried Rice',80),('Plain Fried Rice',80),('Ginger Fried Rice',80),('Mixed Soft Noodles',120),('Chicken Soft Noodles',100),('Egg Soft Noodles',90),('Veg. Soft Noodles',90),('Apollo Fish',180),('Fried Fish',180),('Chilly Fish Dry/Wet',180),('Fish Manchuria Dry/Wet',180),('Fish Masala',190),('Loose Prawns',190),('Fried Prawns',190),('Prawns Manchuria Dry/Wet',190),('Prawns Masala',200),('Paneer Butter Masala',150),('Palak Paneer',150),('Veg - Do - Pyaza',130),('Gobi Masala',130),('Alu Gobi',130),('Simla Mirch Masala',130),('Green Peas Masala',130),('Dal Fry',130),('Mixed Veg. Curry',130),('Paneer Tikka Masala',200),('Mineral Water (750 ML)',25),('Soft Drinks (2.25 Ltr)',95),('Soft Drinks (750 ML)',45),('Soft Drinks (300 ML Can)',35),('Soft Drinks (300 ML)',25),('Soda (750 ML)',20),('Soda (300 ML)',12),('Plain Curd',15),('Coffee',20),('Tea',15),('Pure Lassi',25),('Special Lassi',50),('Chocobar Stick',20),('Mango Duet',20),('Raspberry Duet',20),('Butter Scotch Cone',30),('Chocolate Cone',30),('Matka Kulfi',30);
/*!40000 ALTER TABLE `cafe_bahar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chichas`
--

DROP TABLE IF EXISTS `chichas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chichas` (
  `Menu` text,
  `price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chichas`
--

LOCK TABLES `chichas` WRITE;
/*!40000 ALTER TABLE `chichas` DISABLE KEYS */;
INSERT INTO `chichas` VALUES ('Paneer Butter Masala',199),('Chicken 85 Roll',199),('Sheja Roll',199),('Kheema Roll (Lamb)',18),('Chicken Tikka Roll',199),('Butter Chicken Roll',199),('Talawa Gosht Roll (Lamb)',259),('Bheja Fry',179),('Gurda Fry',179),('Tava Kheema',199),('Tandoor Roti',30),('Plain Naan',30),('Butter Naan',39),('Cheese Naan',49),('Garlic Naan',49),('Laccha Naan',59),('Paneer Shahi Tikka (8 Pieces)',249),('Malai Chicken Kebab (8 Pieces)',309),('Chicken Tikka Kebab (8 Pieces)',309),('Garlic Chicken Kebab (8 Pieces)',309),('Assorted Chicken Kebab Platter',649),('Mutton Shikampur (2 Pieces)',219),('Gulfaham Kebab (4 Pieces)',369),('Patthar Ka Gosht',409),('Sheekh Kebab',349),('Assorted Mutton Kebab Platter',769),('Plain Basmati Rice',119),('Zeera Rice',149),('Biryani Rice',149),('Veg Biryani Misi',169),('Veg Biryani Regular',249),('Veg Biryani Family',389),('Chicken Biryani Mini (3 Pieces)',189),('Chicken Biryani Regular (5 Pieces)',249),('Chicken Biryani Family (10 Pieces)',469),('Mutton Biryani Mini (3 Pieces)',219),('Mutton Biryani Regular (5 Pieces)',359),('Special Mutton Biryani (Regular) (8 Pieces)',509),('Mutton Biryani Family (10 Pieces)',669),('Special Mutton Biryani (Family) (16 Pieces)',979),('Double Ka Meetha',129),('Qubani Ka Meetha (With Cream)',139),('Apricot Truffle (Weekends Only)',139),('Chicha\'s Special Dessert',149),('Mini Pet Soft Drink (250 ml)',26),('Mini Water Bottle (800 ml)',20),('Diet Cola (Can) Mini',40),('Masala Cola',70);
/*!40000 ALTER TABLE `chichas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colleges`
--

DROP TABLE IF EXISTS `colleges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colleges` (
  `college_id` int NOT NULL,
  `college_name` varchar(225) DEFAULT NULL,
  `city` varchar(225) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `ctype` varchar(225) DEFAULT NULL,
  `website` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colleges`
--

LOCK TABLES `colleges` WRITE;
/*!40000 ALTER TABLE `colleges` DISABLE KEYS */;
INSERT INTO `colleges` VALUES (1,'IIT Hyderabad','Hyderabad','IITH Rd, near NH-65, Sangareddy, Kandi, Telangana 502285','Engineering','http://www.iith.ac.in'),(2,'IIITH Hyderabad','Hyderabad','Professor CR Rao Rd, Gachibowli, Hyderabad, Telangana 500032','Engineering','https://www.iiit.ac.in/'),(3,'Uoh University of Hyderabad','Hyderabad','India Post Lingampally CR Rao Road, Hyderabad Central University Rd, Gachibowli, Hyderabad, Telangana 500046','Engineering','http://uohyd.ac.in/'),(4,'GITAM School of Technology','Hyderabad','Rudraram, Patancheru Mandal, Hyderabad - 502329, Telangana, India','Engineering','https://www.gitam.edu/'),(5,'Gokaraju Rangaraju Institute of Engineering & Technology','Hyderabad','Survey No, 288, Nizampet Rd, Bachupally, Kukatpally, Hyderabad, Telangana 500090','Engineering','http://www.griet.ac.in/'),(6,'Sreenidhi University','Hyderabad','Yamnampet, Ghatkesar, Hyderabad, Telangana, India -501301','Engineering','https://www.sreenidhi.edu.in/'),(7,'Chaitanya Bharathi Institute of Technology','Hyderabad','Osman Sagar Rd, Kokapet, Gandipet, Hyderabad, Telangana 500075','Engineering','http://cbit.ac.in/'),(8,'Woxsen University','Hyderabad','Kamkole Village, Sadasivpet, Sangareddy District, Hyderabad, Telangana, India','Engineering','https://woxsen.edu.in/'),(9,'Maulana Azad National Urdu University','Hyderabad','Urdu University Rd, near LNT Towers, Telecom Nagar, Gachibowli, Khajaguda, Hyderabad, Telangana 500032','Engineering','https://manuu.edu.in/'),(10,'Vignan’s Foundation for Science, Technology & Research','Hyderabad','VFSTRH, Off Campus, Deshmukhi Village, Pochampally (Mandal), Yadadri-Bhuvanagiri District, Telangana State, India','Engineering','https://vignan.ac.in/hyd/');
/*!40000 ALTER TABLE `colleges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses1`
--

DROP TABLE IF EXISTS `courses1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses1` (
  `courses` varchar(225) DEFAULT NULL,
  `fees` varchar(225) DEFAULT NULL,
  `duration` varchar(225) DEFAULT NULL,
  `id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses1`
--

LOCK TABLES `courses1` WRITE;
/*!40000 ALTER TABLE `courses1` DISABLE KEYS */;
INSERT INTO `courses1` VALUES ('B.Tech','₹2,00,000 per year','4 years',1),('Bachelor of Design (B.Des)','₹2,00,000 per year','4 years',2),('Master of Techology (M.Tech)','₹24,000 – ₹60,000 per semester.','2 years',3),('Master of Design (M.Des)','₹24,000 – ₹60,000 per semester.','2 years',4),('Master of Science (M.Sc)','₹24,000 per semester','2 years',5),('Master of Arts (M.A.)','₹24,000 per semester','2 years',6);
/*!40000 ALTER TABLE `courses1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses10`
--

DROP TABLE IF EXISTS `courses10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses10` (
  `courses` varchar(225) DEFAULT NULL,
  `fees` varchar(225) DEFAULT NULL,
  `duration` varchar(225) DEFAULT NULL,
  `id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses10`
--

LOCK TABLES `courses10` WRITE;
/*!40000 ALTER TABLE `courses10` DISABLE KEYS */;
INSERT INTO `courses10` VALUES ('B.Tech','₹2,80,000 per year','4 years',1),('B.Tech (ECE, VLSI)','₹2,00,000 per year','4 years',2),('B.Sc. (Hons.) Agriculture','₹1,80,000 per year','4 years',3),('B.Pharmacy','₹2,00,000 per year','4 years',4),('BBA / BCA','₹1,20,000 per year','3 years',5),('BBA LL.B. (Hons.) / BA LL.B. (Hons.)','₹90,000 per year','5 years',6),('M.Tech / M.Pharmacy','₹1,00,000 per year','2 years',7),('MBA / MBA (Business Analytics)','₹2,00,000 per year','2 years',8);
/*!40000 ALTER TABLE `courses10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses2`
--

DROP TABLE IF EXISTS `courses2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses2` (
  `courses` varchar(225) DEFAULT NULL,
  `fees` varchar(225) DEFAULT NULL,
  `duration` varchar(225) DEFAULT NULL,
  `id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses2`
--

LOCK TABLES `courses2` WRITE;
/*!40000 ALTER TABLE `courses2` DISABLE KEYS */;
INSERT INTO `courses2` VALUES ('Bachelor of Technology (B.Tech)','₹4.5 Lakh per year','4 years',1),('Dual Degree (B.Tech + M.S)','₹4.5 Lakh per year','5 years',2),('Master of Technology (M.tech)','₹4.5 Lakh year','2 years',3),('M.S by Research','₹60K per year','2-3 years',4),('Ph.D','₹60K','4-6years',5);
/*!40000 ALTER TABLE `courses2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses3`
--

DROP TABLE IF EXISTS `courses3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses3` (
  `courses` varchar(225) DEFAULT NULL,
  `fees` varchar(225) DEFAULT NULL,
  `duration` varchar(225) DEFAULT NULL,
  `id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses3`
--

LOCK TABLES `courses3` WRITE;
/*!40000 ALTER TABLE `courses3` DISABLE KEYS */;
INSERT INTO `courses3` VALUES ('Integrated B.Sc + M.Sc','₹55,220 – ₹56,050 per year','5 years',1),('Integrated B.Tech + M.Tech','₹2.67 Lakhs per year','5 years',2),('Master of Technology (M.tech)','₹1.0 – ₹1.48 Lakhs year','2 years',3),('M.Sc','₹12,350 – ₹31,220 per year','2 years',4),('MBA','₹1.05 – ₹2.7 Lakhs per year','2 years',5),('Ph.D.','₹8,670 – ₹76,420','3–5 years',6);
/*!40000 ALTER TABLE `courses3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses4`
--

DROP TABLE IF EXISTS `courses4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses4` (
  `courses` varchar(225) DEFAULT NULL,
  `fees` varchar(225) DEFAULT NULL,
  `duration` varchar(225) DEFAULT NULL,
  `id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses4`
--

LOCK TABLES `courses4` WRITE;
/*!40000 ALTER TABLE `courses4` DISABLE KEYS */;
INSERT INTO `courses4` VALUES ('B.Tech','₹2.84 – ₹3.82 Lakhs per year','4 years',1),('B.Tech (Lateral Entry)	','₹2.84 – ₹3.82 Lakhs per year','3 year',2),('M.Tech','₹1.22 – ₹1.28 Lakhs per year','2 years',3),('MBA','₹4.97 – ₹5.21 Lakhs per year','2 years',4),('Ph.D.','₹30,000','3years',5);
/*!40000 ALTER TABLE `courses4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses5`
--

DROP TABLE IF EXISTS `courses5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses5` (
  `courses` varchar(225) DEFAULT NULL,
  `fees` varchar(225) DEFAULT NULL,
  `duration` varchar(225) DEFAULT NULL,
  `id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses5`
--

LOCK TABLES `courses5` WRITE;
/*!40000 ALTER TABLE `courses5` DISABLE KEYS */;
INSERT INTO `courses5` VALUES ('B.Tech','₹1,30,000 per year','4 year',1),('B.Tech (Lateral Entry)','₹1,30,000 per year','3 years',2),('M.Tech','₹80,000 per year','2 years',3),('B.Tech','₹1,30,000 per year','4 year',1),('B.Tech (Lateral Entry)','₹1,30,000 per year','3 years',2),('M.Tech','₹80,000 per year','2 years',3);
/*!40000 ALTER TABLE `courses5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses6`
--

DROP TABLE IF EXISTS `courses6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses6` (
  `courses` varchar(225) DEFAULT NULL,
  `fees` varchar(225) DEFAULT NULL,
  `duration` varchar(225) DEFAULT NULL,
  `id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses6`
--

LOCK TABLES `courses6` WRITE;
/*!40000 ALTER TABLE `courses6` DISABLE KEYS */;
INSERT INTO `courses6` VALUES ('B.Tech in Computer Science and Engineering','₹1,25,000 per year','4 years',1),('B.Tech in Artificial Intelligence & Machine Learning ','₹1,50,000 per year','4 years',2),('B.Tech in Data Science ','₹2,30,000 per year','4 years',3),('B.Tech in Cyber Security ','₹2,90,000 per year','4 years',4),('B.Tech in Cloud ERP (SAP) ','₹3,50,000 per year','4 years',5),('M.Tech','₹1.58 Lakhs per year','2 years',6),('MBA','₹1.02 Lakhs per year','2 years',7),('B.Tech in Computer Science and Engineering','₹1,25,000 per year','4 years',1),('B.Tech in Artificial Intelligence & Machine Learning ','₹1,50,000 per year','4 years',2),('B.Tech in Data Science ','₹2,30,000 per year','4 years',3),('B.Tech in Cyber Security ','₹2,90,000 per year','4 years',4),('B.Tech in Cloud ERP (SAP) ','₹3,50,000 per year','4 years',5),('M.Tech','₹1.58 Lakhs per year','2 years',6),('MBA','₹1.02 Lakhs per year','2 years',7);
/*!40000 ALTER TABLE `courses6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses7`
--

DROP TABLE IF EXISTS `courses7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses7` (
  `courses` varchar(225) DEFAULT NULL,
  `fees` varchar(225) DEFAULT NULL,
  `duration` varchar(225) DEFAULT NULL,
  `id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses7`
--

LOCK TABLES `courses7` WRITE;
/*!40000 ALTER TABLE `courses7` DISABLE KEYS */;
INSERT INTO `courses7` VALUES ('B.E./B.Tech','₹1,40,000 per year','4 years',1),('M.Tech','₹1,51,000 per year','2 years',2),('MBA','₹36,000 per year','2 years',3),('BMCA','₹36,000 per year','2 years',4),('B.E./B.Tech','₹1,40,000 per year','4 years',1),('M.Tech','₹1,51,000 per year','2 years',2),('MBA','₹36,000 per year','2 years',3),('BMCA','₹36,000 per year','2 years',4);
/*!40000 ALTER TABLE `courses7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses8`
--

DROP TABLE IF EXISTS `courses8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses8` (
  `courses` varchar(225) DEFAULT NULL,
  `fees` varchar(225) DEFAULT NULL,
  `duration` varchar(225) DEFAULT NULL,
  `id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses8`
--

LOCK TABLES `courses8` WRITE;
/*!40000 ALTER TABLE `courses8` DISABLE KEYS */;
INSERT INTO `courses8` VALUES ('B.Tech','₹3,91,250 per year','4 years',1),('B.A(Hons.)','₹₹2,65,000 per year','4 years',2),('BBA (Hons.)','₹3,89,750 per year','4 years',3),('B.Arch','₹2,45,000 per year','5 years',4),('B.A. LL.B. (Hons.) / BBA LL.B. (Hons.))','₹2,60,000 per year','5 years',5),('Ph.D. ','₹2.8 Lakhs per course','3 years',6),('B.Tech','₹3,91,250 per year','4 years',1),('B.A(Hons.)','₹₹2,65,000 per year','4 years',2),('BBA (Hons.)','₹3,89,750 per year','4 years',3),('B.Arch','₹2,45,000 per year','5 years',4),('B.A. LL.B. (Hons.) / BBA LL.B. (Hons.))','₹2,60,000 per year','5 years',5),('Ph.D. ','₹2.8 Lakhs per course','3 years',6);
/*!40000 ALTER TABLE `courses8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses9`
--

DROP TABLE IF EXISTS `courses9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses9` (
  `courses` varchar(225) DEFAULT NULL,
  `fees` varchar(225) DEFAULT NULL,
  `duration` varchar(225) DEFAULT NULL,
  `id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses9`
--

LOCK TABLES `courses9` WRITE;
/*!40000 ALTER TABLE `courses9` DISABLE KEYS */;
INSERT INTO `courses9` VALUES ('B.Tech','₹91,250 per year','4 years',1),('Bachelor of Arts (B.A.)','₹61,000 per year','3 years',2),('Bachelor of Arts (B.A.)','₹51,250 per year','3 years',3),('Bachelor of Education (B.Ed.)','₹39,000 per year','2 years',4),('Master of Arts (M.A.)','₹20,250 per year','2 years',5),('Master of Education (M.Ed.)','₹26,000 per year','2 years',6),('Master of Computer Applications (MCA)','₹46,000 per year','3 years',7),('B.Tech','₹91,250 per year','4 years',1),('Bachelor of Arts (B.A.)','₹61,000 per year','3 years',2),('Bachelor of Arts (B.A.)','₹51,250 per year','3 years',3),('Bachelor of Education (B.Ed.)','₹39,000 per year','2 years',4),('Master of Arts (M.A.)','₹20,250 per year','2 years',5),('Master of Education (M.Ed.)','₹26,000 per year','2 years',6),('Master of Computer Applications (MCA)','₹46,000 per year','3 years',7);
/*!40000 ALTER TABLE `courses9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_everest`
--

DROP TABLE IF EXISTS `hotel_everest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_everest` (
  `rooms` int DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `costomer_name` varchar(30) DEFAULT NULL,
  `mobile` bigint DEFAULT NULL,
  `capacity` varchar(10) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  UNIQUE KEY `rooms` (`rooms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_everest`
--

LOCK TABLES `hotel_everest` WRITE;
/*!40000 ALTER TABLE `hotel_everest` DISABLE KEYS */;
INSERT INTO `hotel_everest` VALUES (101,'Available',NULL,NULL,'1 people','600'),(102,'Available',NULL,NULL,'1 people','600'),(103,'Available',NULL,NULL,'1 people','600'),(104,'Available',NULL,NULL,'2 people','999'),(105,'Available',NULL,NULL,'2 people','999'),(106,'Available',NULL,NULL,'3 people','1.4k'),(107,'Available',NULL,NULL,'4 people','1.9k'),(108,'Available',NULL,NULL,'4 people','1.9k'),(201,'Available',NULL,NULL,'1-2 people','1.1k'),(202,'Available',NULL,NULL,'1-2 people','1.1k'),(203,'Available',NULL,NULL,'5 people','2.4k'),(204,'Available',NULL,NULL,'5 people','2.4k'),(205,'Available',NULL,NULL,'5 people','2.4k'),(206,'Available',NULL,NULL,'2 people','999'),(207,'Available',NULL,NULL,'2 people','999'),(208,'Available',NULL,NULL,'2 people','999'),(301,'Available',NULL,NULL,'1 people','600'),(302,'Available',NULL,NULL,'1 people','600'),(303,'Available',NULL,NULL,'1-2 people','1k'),(304,'Available',NULL,NULL,'3 people','1.4k'),(305,'Available',NULL,NULL,'4 people','2.3k'),(306,'Available',NULL,NULL,'2 people','999');
/*!40000 ALTER TABLE `hotel_everest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_geetanjali`
--

DROP TABLE IF EXISTS `hotel_geetanjali`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_geetanjali` (
  `rooms` int DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `costomer_name` varchar(30) DEFAULT NULL,
  `mobile` bigint DEFAULT NULL,
  `capacity` varchar(10) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  UNIQUE KEY `rooms` (`rooms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_geetanjali`
--

LOCK TABLES `hotel_geetanjali` WRITE;
/*!40000 ALTER TABLE `hotel_geetanjali` DISABLE KEYS */;
INSERT INTO `hotel_geetanjali` VALUES (101,'reserved','siva',98765678,'3 people','2.3k'),(102,'reserved','vinayak',8765434567,'2 people','1.5k'),(103,'Available',NULL,NULL,'3 people','2.3k'),(104,'Available',NULL,NULL,'1 person','1k'),(105,'Available',NULL,NULL,'2 people','1.5k'),(106,'Available',NULL,NULL,'3 people','2.3k'),(107,'Available',NULL,NULL,'3 people','2.3k'),(108,'Available',NULL,NULL,'2 people','1.5k'),(201,'Available',NULL,NULL,'2 people','1.5k'),(202,'Available',NULL,NULL,'3 people','2.3k'),(203,'reserved','vinayak',876345678,'3 people','2.3k'),(204,'reserved','vinayak',8765345678,'2 people','1.5k'),(205,'Available',NULL,NULL,'3 people','2.3k'),(206,'Available',NULL,NULL,'3 people','2.3k'),(207,'Available',NULL,NULL,'2 people','1.5k'),(208,'Available',NULL,NULL,'1 person','1k'),(301,'reserved','vinayak',987645678987,'3 people','2.3k'),(302,'Available',NULL,NULL,'3 people','2.3k'),(303,'Available',NULL,NULL,'2 people','1.5k'),(304,'Available',NULL,NULL,'1 person','1k'),(305,'Available',NULL,NULL,'3 people','2.3k'),(306,'Available',NULL,NULL,'2 people','1.5k'),(307,'Available',NULL,NULL,'3 people','2.3k'),(308,'Available',NULL,NULL,'1 person','1k'),(401,'Available',NULL,NULL,'4 people','3.1k'),(402,'Available',NULL,NULL,'4 people','3.1k'),(403,'Available',NULL,NULL,'5 people','4.6k'),(404,'Available',NULL,NULL,'5 people','4.6k');
/*!40000 ALTER TABLE `hotel_geetanjali` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_nayaab`
--

DROP TABLE IF EXISTS `hotel_nayaab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_nayaab` (
  `Menu` text,
  `price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_nayaab`
--

LOCK TABLES `hotel_nayaab` WRITE;
/*!40000 ALTER TABLE `hotel_nayaab` DISABLE KEYS */;
INSERT INTO `hotel_nayaab` VALUES ('Vegetable Pakoda',230),('Paneer Tikka Dry',230),('Paneer 65',230),('Apollo Paneer',230),('Paneer Manchuria',230),('Veg Manchuria',230),('Veg 65',230),('Sweet Chilli Paneer',230),('Vegetable Curry',230),('Creamy Paneer',230),('Paneer Butter Masala',230),('Shahi Paneer',230),('Nayaab Spl. Paneer',230),('Paneer Tikka Masala',230),('Paneer Makkhan Wala',230),('Ginger Paneer',230),('Dal Fry',230),('Dal Makhani',230),('Golden Fish',300),('Fish Fry',300),('Apollo Fish',300),('Fish 65',300),('Fish Manchuria',300),('Sweet Chilli Fish',300),('Tandoori Roti',25),('Butter Naan',50),('Garlic Butter Naan',50),('Rumali Roti',25),('Nahari Shorba Paya Nahari',80),('Zaban Nahari',150),('Chicken Nahari (Saturday)',150),('Sheermal',20),('Chicken 65',260),('Chicken Manchuria',260),('Apollo Chicken',260),('Talahuwa Chicken (Dry W/B)',260),('Chicken Tikka',260),('Sweet Chilli Chicken',260),('Tandoori Chicken Desi',300),('Tandoori Chicken Arabi',300),('Dum Ka Chicken',260),('Chicken Masala',260),('Creamy Chicken',260),('Chicken Butter Masala',260),('Chicken Majestic',260),('Chicken Makhan Wala',260),('Nayaab Spl Chicken',260),('Chicken Tikka Masala',260),('Chicken Chatpata',260),('Chicken Moghlai',260),('Chicken Talahuwa (Dry)',260),('Chicken Curry',150),('Vegetable Fried Rice',200),('Egg Fried Rice',200),('Double Egg Fried Rice',200),('Chicken Fried Rice',200),('Mutton Fried Rice',200),('Mixed Fried Rice',200),('Zeera Rice',200),('Asli Ghee Rice',200),('Curd Rice',200),('Vegetable Noodles',200),('Egg Noodles',200),('Double Egg Noodles',200),('Chicken Noodles',200),('Mutton Noodles',200),('Mixed Noodles',200),('Chicken Schezwan Noodles',200),('Egg Schezwan Noodles',200),('Malai Special Paya',330),('Malai Special Zaban',330),('Paya Fry',330),('Zaban Fry',330),('Dum Ka Mutton',300),('Mutton Masala',300),('Mutton Talahuwa',300),('Mutton Butter Masala',300),('Mutton Moghlai',300),('Nayaab Spl Mutton',300),('Mutton Chatpata',300),('Kadai Mutton',300),('Mutton Biryani',300),('Chicken Biryani',230),('Fish Biryani',300),('Special Mutton Biryani',400),('Special Chicken Biryani',380),('Nayaab Spl. Biryani',650),('Egg Biryani',180),('Qubani Malai (Apricot)',130),('Caramel Egg Pudding',130),('Kaddu Ki Kheer',130),('Lassi Plain',60),('Dry Fruit Lassi Special',100),('Kesar Pista Lassi',100),('Butter Milk',20);
/*!40000 ALTER TABLE `hotel_nayaab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_rainbow_international`
--

DROP TABLE IF EXISTS `hotel_rainbow_international`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_rainbow_international` (
  `rooms` int DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `costomer_name` varchar(30) DEFAULT NULL,
  `mobile` bigint DEFAULT NULL,
  `capacity` varchar(10) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  UNIQUE KEY `rooms` (`rooms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_rainbow_international`
--

LOCK TABLES `hotel_rainbow_international` WRITE;
/*!40000 ALTER TABLE `hotel_rainbow_international` DISABLE KEYS */;
INSERT INTO `hotel_rainbow_international` VALUES (101,'Available',NULL,NULL,'5 people','3.9k'),(102,'Available',NULL,NULL,'1 person','2.9k'),(103,'Available',NULL,NULL,'5 people','3.9k'),(104,'Available',NULL,NULL,'1 person','1.4k'),(105,'Available',NULL,NULL,'1 person','1k'),(106,'Available',NULL,NULL,'1 person','2.9k'),(107,'Available',NULL,NULL,'5 people','3.9k'),(108,'Available',NULL,NULL,'1 person','1.4k'),(201,'Available',NULL,NULL,'5 people','3.9k'),(202,'Available',NULL,NULL,'1 person','2.9k'),(203,'Available',NULL,NULL,'1 person','1k'),(204,'Available',NULL,NULL,'1 person','1.4k'),(205,'Available',NULL,NULL,'3 people','2.2k'),(206,'Available',NULL,NULL,'1 person','2.9k'),(207,'Available',NULL,NULL,'5 people','3.9k'),(208,'Available',NULL,NULL,'1 person','1.4k'),(301,'Available',NULL,NULL,'1 person','1k'),(302,'Available',NULL,NULL,'1 person','2.9k'),(303,'Available',NULL,NULL,'5 people','3.9k'),(304,'Available',NULL,NULL,'1 person','1.4k'),(305,'Available',NULL,NULL,'3 people','2.2k'),(306,'Available',NULL,NULL,'1 person','2.9k'),(307,'Available',NULL,NULL,'5 people','3.9k'),(308,'Available',NULL,NULL,'1 person','1k'),(401,'Available',NULL,NULL,'5 people','3.9k'),(402,'Available',NULL,NULL,'1 person','2.9k'),(403,'Available',NULL,NULL,'5 people','3.9k'),(404,'Available',NULL,NULL,'1 person','1.4k'),(405,'Available',NULL,NULL,'3 people','2.2k'),(406,'Available',NULL,NULL,'1 person','1k');
/*!40000 ALTER TABLE `hotel_rainbow_international` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotels` (
  `id` int DEFAULT NULL,
  `hotel_name` text,
  `location` text,
  `amenities` text,
  `price` text,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` VALUES (1,'Hotel_Geetanjali','Abids, Hyderabad','Free WiFi, clean rooms, and a central location','Approximately ₹1,550'),(2,'Hotel_Rainbow_International','Lakdi Ka Pul, Hyderabad','Comfortable stay with breakfast included','Approximately ₹1,399'),(3,'Taj_Falaknuma_Palace','Engine Bowli, Falaknuma , 500053 Hyderabad, India','Outdoor swimming pool, Free WiFi, Airport shuttle, Family rooms, Free parking, Fitness centre, 4 restaurants, Tea/coffee maker in all rooms, Bar','Approximately ₹30k'),(4,'Trident_Hyderabad','Hitec City, Near Cyber Towers, Madhapur, 500081 Hyderabad, India','Outdoor swimming pool, Free WiFi, Airport shuttle, Spa and wellness centre, Free parking, Fitness centre, 3 restaurants, Tea/coffee maker in all rooms, Bar','Approximately ₹8k - 20k'),(5,'ITC_Kohenur','Plot no.5, Hyderabad Knowledge City, Madhapur, 500081 Hyderabad, India','Outdoor swimming pool, Free WiFi, Airport shuttle, Spa and wellness centre, Free parking, Room service, 8 restaurants, Tea/coffee maker in all rooms, 24-hour front desk, Facilities for disabled guests','Approximately ₹10k - 25k'),(6,'Park_Hyatt_Hotel_and_Residences','Road No. 2, Banjara Hills, 500034 Hyderabad, India','Outdoor swimming pool, Free WiFi, Airport shuttle, Family rooms, Free parking, Fitness centre, 3 restaurants, Tea/coffee maker in all rooms, Bar','Approximately ₹9k - 14k'),(7,'ITC_Kakatiya','6 -3 -1187, Begumpet, Hyderabad, Begumpet, 500016 Hyderabad, India','Outdoor swimming pool, Free WiFi, Airport shuttle, Spa and wellness centre, Free parking, Fitness centre, 4 restaurants, 24-hour front desk, Bar','Approximately ₹8.6k - 13.5k'),(8,'Oak_Business_Hotel','Pt-375,Raja Rajeswara nagar, Kondapur,Hyderabad, 500084 Hyderabad, India','Non-smoking rooms, Free WiFi, Airport shuttle, Room service, Free parking, restaurant, Tea/coffee maker in all rooms','Approximately ₹2k - 3k'),(9,'Vaaraahi_Hotels','13-23-100/1 KAMALA NAGAR , CHAITANYAPURI METRO STATION, BESIDE SHALINI SHIVANI THEATRE , HYDERABAD-500060, 500060 Hyderabad, India','Non-smoking rooms, Free WiFi, Airport shuttle, Room service, Free parking, Tea/coffee maker in all rooms','Approximately ₹1.5-k - 1.7k'),(10,'Hotel_Dolphin','Lakdikapul Road, 500004 Hyderabad, India','Free parking','Approximately ₹899'),(11,'Hotel_Everest','9-4-45 Secunderabad Railway Station Road, 500025 Hyderabad, India','Non-smoking rooms, Free WiFi, Airport shuttle, Room service, Free parking,','Approximately ₹999');
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itc_kakatiya`
--

DROP TABLE IF EXISTS `itc_kakatiya`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itc_kakatiya` (
  `rooms` int DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `costomer_name` varchar(30) DEFAULT NULL,
  `mobile` bigint DEFAULT NULL,
  `capacity` varchar(10) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  UNIQUE KEY `rooms` (`rooms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itc_kakatiya`
--

LOCK TABLES `itc_kakatiya` WRITE;
/*!40000 ALTER TABLE `itc_kakatiya` DISABLE KEYS */;
INSERT INTO `itc_kakatiya` VALUES (101,'Available',NULL,NULL,'1-2 people','8.6k'),(102,'Available',NULL,NULL,'1-2 people','8.6k'),(103,'Available',NULL,NULL,'1-2 people','8.6k'),(104,'Available',NULL,NULL,'1-2 people','8.6k'),(105,'Available',NULL,NULL,'3 people','9.5k'),(106,'Available',NULL,NULL,'3 people','9.5k'),(107,'Available',NULL,NULL,'4 people','11k'),(108,'Available',NULL,NULL,'4 people','11k'),(201,'Available',NULL,NULL,'1-2 people','8.6k'),(202,'Available',NULL,NULL,'1-2 people','8.6k'),(203,'Available',NULL,NULL,'3 people','9.5k'),(204,'Available',NULL,NULL,'5 people','13k'),(205,'Available',NULL,NULL,'5 people','13k'),(206,'Available',NULL,NULL,'4 people','12k'),(207,'Available',NULL,NULL,'4 people','12k'),(208,'Available',NULL,NULL,'3 people','9.5k'),(301,'Available',NULL,NULL,'7 people','14k'),(302,'Available',NULL,NULL,'7 people','14k'),(303,'Available',NULL,NULL,'1-2 people','8.6k'),(304,'Available',NULL,NULL,'5 people','12k'),(305,'Available',NULL,NULL,'6 people','13k'),(306,'Available',NULL,NULL,'6 people','14k'),(307,'Available',NULL,NULL,'3 people','11k'),(308,'Available',NULL,NULL,'8 people','16k');
/*!40000 ALTER TABLE `itc_kakatiya` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itc_kohenur`
--

DROP TABLE IF EXISTS `itc_kohenur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itc_kohenur` (
  `rooms` int DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `costomer_name` varchar(30) DEFAULT NULL,
  `mobile` bigint DEFAULT NULL,
  `capacity` varchar(10) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  UNIQUE KEY `rooms` (`rooms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itc_kohenur`
--

LOCK TABLES `itc_kohenur` WRITE;
/*!40000 ALTER TABLE `itc_kohenur` DISABLE KEYS */;
INSERT INTO `itc_kohenur` VALUES (101,'Available',NULL,NULL,'1-2 people','10k'),(102,'Available',NULL,NULL,'1-2 people','10k'),(103,'Available',NULL,NULL,'1-2 people','10k'),(104,'Available',NULL,NULL,'1-2 people','10k'),(105,'Available',NULL,NULL,'3 people','13k'),(106,'Available',NULL,NULL,'3 people','13k'),(107,'Available',NULL,NULL,'4 people','15k'),(108,'Available',NULL,NULL,'4 people','15k'),(201,'Available',NULL,NULL,'1-2 people','10k'),(202,'Available',NULL,NULL,'1-2 people','10k'),(203,'Available',NULL,NULL,'5 people','18k'),(204,'Available',NULL,NULL,'5 people','18k'),(205,'Available',NULL,NULL,'5 people','18k'),(206,'Available',NULL,NULL,'4 people','15k'),(207,'Available',NULL,NULL,'4 people','15k'),(208,'Available',NULL,NULL,'3 people','13k'),(301,'Available',NULL,NULL,'8 people','23k'),(302,'reserved','siva',987654345,'7 people','21k'),(303,'Available',NULL,NULL,'1-2 people','10k'),(304,'Available',NULL,NULL,'5 people','18k'),(305,'Available',NULL,NULL,'7 people','20k'),(306,'Available',NULL,NULL,'7 people','20k'),(307,'Available',NULL,NULL,'3 people','13k'),(308,'Available',NULL,NULL,'8 people','23k'),(401,'Available',NULL,NULL,'10 people','25k'),(402,'Available',NULL,NULL,'9 people','23k'),(403,'Available',NULL,NULL,'10 people','25k'),(404,'Available',NULL,NULL,'12 people','28k');
/*!40000 ALTER TABLE `itc_kohenur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jewel_of_nizam`
--

DROP TABLE IF EXISTS `jewel_of_nizam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jewel_of_nizam` (
  `Menu` text,
  `price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jewel_of_nizam`
--

LOCK TABLES `jewel_of_nizam` WRITE;
/*!40000 ALTER TABLE `jewel_of_nizam` DISABLE KEYS */;
INSERT INTO `jewel_of_nizam` VALUES ('Amrud ki Lassi',375),('Gulab Ras Thandai',375),('Kairi ka Aabshola (Seasonal)',375),('Palak Shorba',350),('Tamatar Khada Masala Shorba',350),('Adrak Subz Mutter ka Shorba',350),('Dal Shorba',350),('Paya Shorba',475),('Marag',400),('Yakhni Shorba',400),('Murgh Subz Shorba',375),('Subz Platter',800),('Paneer Tikka',625),('Zafraani Paneer Tikka',625),('Hara Bhara Kebab',600),('Corn Kurkuri Tikki',600),('Hyderabadi Subz Seekh',600),('Golkonda Khaas Kebab Platter',1250),('Nisha Jheenga',625),('Lal Mirch ka Jheenga',625),('Gilauti Kebab with Ulta Tawa ka Parantha',750),('Gilafi Seekh Kebab',750),('Bharwan Tangdi',750),('Barkas Patthar Gosht',750),('Chatpati Machhi',675),('Kagji Machhi Tikka',675),('Murgh ka Tikka',650),('Murgh Tikka Kalimirch',650),('Paneer Makkhan Masala',650),('Paneer Tamatar ka Qut',650),('Methi Paneer Chaman',650),('Subz Chatpata',625),('Nizami Tarkari Handi',625),('Subz Dum',625),('Bharwan Baghara Baingan',7625),('Jheenga Nizami',950),('Haleem',850),('Gosht Kalimirch',3775),('Mutton Rogan Josh',775),('Machhi Masaledar',7700),('Murgh Hara Masala',675),('Murgh Mazedaar',675),('Hyderabadi Dum ka Murgh',675),('Keema Kulcha',325),('Stuffed Kulcha (Paneer, Aloo, Onion, Masala)',210),('Phulkas',210),('Parantha (Plain, Chili, Pudina)',210),('Tandoori Roti',210),('Naan (Plain, Butter, Garlic)',210),('Dahi',300),('Subz Raita',300),('Khubani ka Meetha',425),('Anokhi Kheer',425),('Apricot Pudding',425),('Kulfi Falooda',400),('Double ka Meetha',400),('Shakhora Phirni',400),('Kaddu ka Halwa',400);
/*!40000 ALTER TABLE `jewel_of_nizam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `le_vantage_cafe`
--

DROP TABLE IF EXISTS `le_vantage_cafe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `le_vantage_cafe` (
  `Menu` text,
  `price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `le_vantage_cafe`
--

LOCK TABLES `le_vantage_cafe` WRITE;
/*!40000 ALTER TABLE `le_vantage_cafe` DISABLE KEYS */;
INSERT INTO `le_vantage_cafe` VALUES ('Mushroom Cappuccino',345),('Chowder Leek Potato Soup',345),('Pepper Corn',345),('Cream Of Broccoli',345),('Tomato Corn Tortilla',345),('Seafood Soup',425),('Mediterranean Salad',455),('Caesar Salad',415),('Watermelon Feta Salad',425),('House Special Salad',455),('Tuna Salad',485),('Veggie Grilled',475),('Panini Caprese Sandwich',475),('Avocado Halloumi Sandwich',525),('Moroccan Chicken Sandwich',545),('Chicken and Pepperoni Sandwich',545),('Grilled Chicken',545),('Creamy Spinach and Corn',495),('Italian Tuna Sandwich',525),('Veggie Lovers',515),('Cottage Cheese Chilli Bean',525),('Black Bean Halloumi Burger',515),('Crispy Fried Chicken Burger',565),('Smoked Grilled Chicken Sriracha Burger',575),('Chicken Hot & Spicy',565),('Chicken BBQ Bacon',575),('Fish Burger',625),('Lamb Burger',625),('Classic Ham Burger',645),('Bocconcini Tomato Bruschetta',405),('Cheese Rolls',465),('Onion Rings',415),('Garlic Loaf',395),('Garlic Loaf with Cheese',415),('Mushroom Picante',485),('Baked Nachos',465),('Cheese Baked Nachos (Chicken)',495),('Cheese Baked Nachos (Minced Mutton)',545),('French Fries/Potato Wedges',415),('Peri Peri Babycorn Fritters',435),('Spinach and Feta Mini Rolls',435),('Hummus with Pita & Lavash',475),('Falafel Pita Pockets with Hummus Tabbouleh Salad',485),('Quesadilla Veg',485),('Quesadilla Non-Veg',515),('BBQ Chicken Fingers',525),('Chicken Popcorn',525),('Peri Peri Shrimp Popcorn',595),('Pizza Margarita',595),('Pizza Formaggio',645),('Pizza Pesto Burrata',825),('Pizza Florentine',645),('Ortolana Peri Peri',645),('Spinach Egg Pizza',655),('Pizza Pollo Ala Siciliana',705),('Pizza Peri Peri Chicken',725),('Teriyaki Chicken Skewers with Garlic Butter Rice',695),('Grilled Chicken Breast',615),('Chicken Breast with Parmesan Cheese',665),('Roasted Seabass',725),('Herb Butter Sole',725),('Pan Seared Fish and Mashed Peas Rice Bowl',745),('Asian Chicken and Nuts Rice Bowl',645),('Roasted Lemon Chicken',625),('Mustard Grilled Chicken',625),('Stuffed Chicken Breast',635),('Burnt Garlic Chicken Shashlik with Rice',645),('Nasi Goreng Chicken',645),('Nasi Goreng Prawn',745),('Pork Ribs with JD Barbeque Sauce',795),('Grilled Jumbo Prawn',825),('Creme Bralée',425),('Brownie with Espresso and Ice-Cream',415),('Banoffee Pie',425),('Cheese Cake (Plain)',415),('Cheese Cake (Strawberry)',415),('Cheese Cake (Blueberry)',415),('Tiramisu',475);
/*!40000 ALTER TABLE `le_vantage_cafe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nimrah_cafe_and_bakery`
--

DROP TABLE IF EXISTS `nimrah_cafe_and_bakery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nimrah_cafe_and_bakery` (
  `Menu` text,
  `price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nimrah_cafe_and_bakery`
--

LOCK TABLES `nimrah_cafe_and_bakery` WRITE;
/*!40000 ALTER TABLE `nimrah_cafe_and_bakery` DISABLE KEYS */;
INSERT INTO `nimrah_cafe_and_bakery` VALUES ('Bun',8),('Osmania Biscuit',4),('Bun',8),('Fruit',6),('Kaju',6),('Oats',7),('Chand',6),('Rusk Toast',6),('Jam',7),('Cherry Coconut',7),('Flavor Coconut',7),('Safola',7),('Star Kaju',7),('pista',7),('Butter',7),('Choco Chips',7),('Dry Fruit',8),('Kaju Chocolet',7),('NanKhatai',10),('Dates',8),('Kalonji',8),('Conflex',8),('Tarbuz',8),('Khara',3),('Sponge Cake Piece',7),('Plum Cake Piece',20),('Round Plum Cake Piece',80),('Slice Plum Cake',150),('Pastry',7),('Pineapple Cake Piece',25),('Black Forest Cake Piece',35),('Strawberry Cake Piece',50),('Butterscotch Cake Piece',50),('White Forest Cake Piece',50),('Chocolate Cake Piece',50),('Pista Cake Piece',50),('Nimrah Spl Dry Fruit Piece',50),('Nimrah Spl Cake Piece',60),('Dry Fruit Cake Piece',60),('Rasmalai Cake Piece',60),('Kalakand Cake Piece',50);
/*!40000 ALTER TABLE `nimrah_cafe_and_bakery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oak_business_hotel`
--

DROP TABLE IF EXISTS `oak_business_hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oak_business_hotel` (
  `rooms` int DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `costomer_name` varchar(30) DEFAULT NULL,
  `mobile` bigint DEFAULT NULL,
  `capacity` varchar(10) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  UNIQUE KEY `rooms` (`rooms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oak_business_hotel`
--

LOCK TABLES `oak_business_hotel` WRITE;
/*!40000 ALTER TABLE `oak_business_hotel` DISABLE KEYS */;
INSERT INTO `oak_business_hotel` VALUES (101,'Available',NULL,NULL,'1 people','1.5k'),(102,'Available',NULL,NULL,'1 people','1.5k'),(103,'Available',NULL,NULL,'1 people','1.5k'),(104,'Available',NULL,NULL,'2 people','2k'),(105,'Available',NULL,NULL,'2 people','2k'),(106,'Available',NULL,NULL,'3 people','2.5k'),(107,'Available',NULL,NULL,'4 people','3k'),(108,'Available',NULL,NULL,'4 people','3k'),(201,'Available',NULL,NULL,'1-2 people','2k'),(202,'Available',NULL,NULL,'1-2 people','2k'),(203,'Available',NULL,NULL,'5 people','2.5k'),(204,'Available',NULL,NULL,'5 people','2.5k'),(205,'Available',NULL,NULL,'5 people','2.5k'),(206,'Available',NULL,NULL,'4 people','2k'),(207,'Available',NULL,NULL,'4 people','3k'),(208,'Available',NULL,NULL,'3 people','2.5k'),(301,'Available',NULL,NULL,'1 people','1.5k'),(302,'Available',NULL,NULL,'1 people','1.3k'),(303,'Available',NULL,NULL,'1-2 people','2k'),(304,'Available',NULL,NULL,'5 people','2.7k'),(305,'Available',NULL,NULL,'7 people','4k'),(306,'Available',NULL,NULL,'7 people','4k'),(307,'Available',NULL,NULL,'3 people','2.5k'),(308,'Available',NULL,NULL,'2 people','2k'),(401,'Available',NULL,NULL,'10 people','7k'),(402,'Available',NULL,NULL,'10 people','7k');
/*!40000 ALTER TABLE `oak_business_hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `park_hyatt_hotel_and_residences`
--

DROP TABLE IF EXISTS `park_hyatt_hotel_and_residences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `park_hyatt_hotel_and_residences` (
  `rooms` int DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `costomer_name` varchar(30) DEFAULT NULL,
  `mobile` bigint DEFAULT NULL,
  `capacity` varchar(10) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  UNIQUE KEY `rooms` (`rooms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `park_hyatt_hotel_and_residences`
--

LOCK TABLES `park_hyatt_hotel_and_residences` WRITE;
/*!40000 ALTER TABLE `park_hyatt_hotel_and_residences` DISABLE KEYS */;
INSERT INTO `park_hyatt_hotel_and_residences` VALUES (101,'Available',NULL,NULL,'1-2 people','9k'),(102,'Available',NULL,NULL,'1-2 people','9k'),(103,'Available',NULL,NULL,'1-2 people','9k'),(104,'Available',NULL,NULL,'1-2 people','9k'),(105,'Available',NULL,NULL,'3 people','1k'),(106,'Available',NULL,NULL,'3 people','8.5k'),(107,'Available',NULL,NULL,'4 people','9k'),(108,'Available',NULL,NULL,'4 people','9k'),(201,'Available',NULL,NULL,'1-2 people','8k'),(202,'Available',NULL,NULL,'1-2 people','9k'),(203,'Available',NULL,NULL,'3 people','10k'),(204,'Available',NULL,NULL,'5 people','14k'),(205,'Available',NULL,NULL,'5 people','14k'),(206,'Available',NULL,NULL,'4 people','12k'),(207,'Available',NULL,NULL,'4 people','13k'),(208,'Available',NULL,NULL,'3 people','11k'),(301,'Available',NULL,NULL,'8 people','15k'),(302,'Available',NULL,NULL,'7 people','14k'),(303,'Available',NULL,NULL,'1-2 people','9k'),(304,'Available',NULL,NULL,'5 people','13k'),(305,'Available',NULL,NULL,'6 people','14k'),(306,'Available',NULL,NULL,'6 people','14k'),(307,'Available',NULL,NULL,'3 people','11k');
/*!40000 ALTER TABLE `park_hyatt_hotel_and_residences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `costomer_name` varchar(30) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `hotel_name` text,
  `room` int DEFAULT NULL,
  `price` varchar(8) DEFAULT NULL,
  `reservation_status` text,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (1,'siva_krishna','Siva','9876523456','Hotel_Rainbow_International',202,'2.9k','reserved'),(2,'siva_krishna','krishna','9873476534','Trident_Hyderabad',307,'8.5k','Canceled'),(3,'siva_krishna','krishna','876567876','Hotel_Geetanjali',101,'2.3k','Canceled'),(4,'siva_krishna','siva','98765678','Hotel_Geetanjali',101,'2.3k','Canceled'),(5,'siva_krishna','Siva','7654234562','Taj_Falaknuma_Palace',101,'56k','Canceled'),(6,'siva_krishna','Tharun','6543456765','Taj_Falaknuma_Palace',101,'56k','reserved'),(7,'siva_krishna','tharun','76543456','Vaaraahi_Hotels',306,'4k','reserved');
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurents`
--

DROP TABLE IF EXISTS `restaurents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `restaurent_name` varchar(30) DEFAULT NULL,
  `location` text,
  `rating` float DEFAULT NULL,
  `timings` varchar(30) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `Price` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurents`
--

LOCK TABLES `restaurents` WRITE;
/*!40000 ALTER TABLE `restaurents` DISABLE KEYS */;
INSERT INTO `restaurents` VALUES (1,'Nimrah_Cafe_and_Bakery','20-4-1238/39, Beside Mecca Masjid, Charminar Road, Charminar, Hyderabad, Telangana',4.7,'04:00 - 23:00','Veg & Non-Veg','200 for two (approx.)'),(2,'Le_Vantage_Cafe','195/a Rd Number 13, Hyderabad, Telangana 500033 ',4.3,'11 AM to 12 AM','Veg & Non-Veg','2,000 for two (approx.)'),(3,'Chichas','Opposite Kun Hyundai, Masab Tank, on The Second Left After Mahavir Hospital, Hyderabad, Telangana 500004',3.9,'12:30 PM to 11:30 PM','Veg & Non-Veg','1,000 for two (approx.)'),(4,'Cafe_Bahar','Plot NO 10, MIG 10, Dharmareddy Colony Kphb, Rangareddy, Telangana 500072 ',4.2,'11 AM to 12 AM','Veg & Non-Veg','850 fo two (approx.)'),(5,'Jewel_Of_Nizam','The Golkonda Hotel, Ground Floor, Plot No. 10-1-124, Masab Tank, Banjara Hills, Asifnagar, Telangana 500028 ',4.3,'12 PM to 4 PM, 7 PM to 11 PM','Veg & Non-Veg','3,000 for two (approx.)'),(6,'Hotel_Nayaab','Plot 786, Pragathi Nagar, Kukatpally, Hyderabad, Hyderabad ',4,'4 AM to 12 AM','Veg & Non-Veg','850 for two (approx.)');
/*!40000 ALTER TABLE `restaurents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taj_falaknuma_palace`
--

DROP TABLE IF EXISTS `taj_falaknuma_palace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taj_falaknuma_palace` (
  `rooms` int DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `costomer_name` varchar(30) DEFAULT NULL,
  `mobile` bigint DEFAULT NULL,
  `capacity` varchar(10) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  UNIQUE KEY `rooms` (`rooms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taj_falaknuma_palace`
--

LOCK TABLES `taj_falaknuma_palace` WRITE;
/*!40000 ALTER TABLE `taj_falaknuma_palace` DISABLE KEYS */;
INSERT INTO `taj_falaknuma_palace` VALUES (101,'reserved','Tharun',6543456765,'5 people','56k'),(102,'Available',NULL,NULL,'3 people','41k'),(103,'Available',NULL,NULL,'5 people','56k'),(104,'Available',NULL,NULL,'2 people','30k'),(105,'Available',NULL,NULL,'1 person','15k'),(106,'Available',NULL,NULL,'4 people','49k'),(107,'Available',NULL,NULL,'5 people','56k'),(108,'Available',NULL,NULL,'2 people','30k'),(201,'Available',NULL,NULL,'3 people','41k'),(202,'Available',NULL,NULL,'4 people','49k'),(203,'Available',NULL,NULL,'1 person','15k'),(204,'Available',NULL,NULL,'2 people','30k'),(205,'Available',NULL,NULL,'5 people','56k'),(206,'Available',NULL,NULL,'4 people','49k'),(207,'Available',NULL,NULL,'3 people','41k'),(208,'Available',NULL,NULL,'2 people','30k'),(301,'Available',NULL,NULL,'1 person','15k'),(302,'Available',NULL,NULL,'4 people','49k'),(303,'Available',NULL,NULL,'3 people','41k'),(304,'Available',NULL,NULL,'2 people','30k'),(305,'Available',NULL,NULL,'5 people','56k'),(306,'Available',NULL,NULL,'3 people','41k'),(307,'Available',NULL,NULL,'5 people','56k'),(308,'Available',NULL,NULL,'1 person','15k'),(401,'Available',NULL,NULL,'6 people','59k'),(402,'Available',NULL,NULL,'7 people','63k'),(403,'Available',NULL,NULL,'8 people','67k'),(404,'Available',NULL,NULL,'9 people','71k'),(501,'Available',NULL,NULL,'10 people','85k'),(502,'Available',NULL,NULL,'13 people','95k');
/*!40000 ALTER TABLE `taj_falaknuma_palace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourist_places`
--

DROP TABLE IF EXISTS `tourist_places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourist_places` (
  `id` int DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  `location` text,
  `Description` text,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourist_places`
--

LOCK TABLES `tourist_places` WRITE;
/*!40000 ALTER TABLE `tourist_places` DISABLE KEYS */;
INSERT INTO `tourist_places` VALUES (1,'Charminar',' Charminar Road, Char Kaman, Ghansi Bazaar, Hyderabad, Telangana 500002, India','Charminar is a magnificent architectural masterpiece and a symbol of Hyderabad, a city rich in culture and history. It features a four-sided archway and towering minarets that reach 48.7 meters above ground level. Charminar represents more than just a landmark; it embodies historical, social, cultural, and economic values unique to Hyderabad. This monument is an exquisite example of Indo-Islamic architecture, boasting delicate Persian influences. Its arches and domes proudly display Islamic architectural styles. At the same time, the balconies and outside walls showcase intricate stucco floral ornamentation inspired by Hindu architecture - creating a harmonious union between two cultures within this grand edifice.'),(2,'Golconda Fort','Khair Complex, Ibrahim Bagh, Hyderabad, Telangana 500008, India','The Golconda Fort is a majestic testament to history and architectural grandeur in the western region of Hyderabad, only 9 km from Hussain Sagar Lake. It dates back to 1143 when it was known as Mangal and has witnessed centuries of stories and reigns from Bahmani Sultans to Qutub Shahi rulers. It served as their principal capital city during their rule between the 14th and 17th centuries. The fort also stands as one of India\'s finest fortress complexes, embodying an exquisite mix of Hindu-Islamic architecture. Its sprawling grounds and towering structures resound with centuries of history that will charm everyone who steps onto its ancient pathways.'),(3,'Falaknuma Palace','Engine Bowli, Fatima Nagar, Falaknuma, Hyderabad, Telangana, 500053, India','The pride of the Paigah family Atop a tranquil hillock in the city, merely 5 kilometres from Hyderabad\'s iconic Charminar, awaits a palace of dreams with its irresistible charm. Welcome to the enchanting Falaknuma Palace. It was once the pride of the Paigah family and later cherished by the Nizam of Hyderabad. The palace name Falaknuma means like the sky or mirror of the sky in Urdu - a true embodiment of its celestial title. The English architect William Ward Marret conceived the palace, a marvel sculpted entirely from Italian marble. It is adorned with captivating stained-glass windows that bestow a magical aura upon its majestic exterior.'),(4,'Birla Mandir','Naubath Pahad, Hyderabad, Telangana 302022, India.','Birla Mandir stands atop Naubath Pahad Hillock as an elegant testament of devotion and architectural brilliance, designed by visionary industrialist and philanthropist Dr. B.D. Birla. Conceived as an offering to Lord Venkateshwara or Vishnu by Dr. Birla himself, its white marble shines like a beacon of spiritual light as the sun casts its golden rays across it. Dravadian, Rajasthani and Utkala architectural styles combine in fascinating harmony resulting in captivating symphonies of architectural styles that leaves visitors breathless; intricate sculptures, stunning carvings and grand gopuram all come together in telling tale of divine craftsmanship that speaks directly to every beholder\'s heart!'),(5,'Salar Jung Museum','Dar-ul-Shifa, Hyderabad, Telangana 500002, India.','A museum born out of a visionary’s love for art and antiquities stands proudly as a place of cultural splendour and artistic treasures in the city of Hyderabad. The magnificent Salar Jung Museum was inaugurated by the Prime Minister of India, Jawahar Lal Nehru in 1951. It is the third-largest museum in India and situated picturesquely along the banks of the Musi River.'),(6,'Spanish Mosque','Sardar Patel Road, Indian Airlines Colony, Begumpet, Hyderabad, Telangana 500016, India.','Tucked away in the heart of Hyderabad, the Spanish Mosque gracefully adorns the city’s skyline as a symbol of inclusivity and diversity. This architectural marvel was commissioned in 1887 by Sir Viqar ul Umra, who was the Prime Minister of the Nizam and was also part of the Paigah family. It was completed by his successor in 1906. It is distinguished by its unique Moorish architecture, which features spires, instead of traditional minarets or domes. This gives it the appearance of a grand church, hence inspiring its current name. It is also massive in size, being able to accommodate around 3000 people at one time.'),(7,'Nehru Zoological Park.','Zoo Park Main Road, Kishan Bagh, Bahadurpura West, Hyderabad, Telangana, 500064, India.','In the heart of Hyderabad lies a historically important 200-year-old reservoir known as the Mir Alam Tank. This tank is known for two important reasons. One is that it is the first multi-arch masonry dam in the world. The other is that it feeds one of the largest animal parks in India, known as the Hyderabad Zoo, or Nehru Zoological Park.  Welcome to this massive 380-acre realm of wilderness, home to over 1,500 species of animals, birds, and reptiles, including 160 rare and exotic species.  Established in 1959, this sprawling park is the first zoo in India to house animals in zoological order in open enclosures, which makes the animals feel at home.  Nehru Zoological Park is dedicated to protecting endangered species like the Indian Rhino, Asiatic Lion, Bengal Tiger, and Gharial. Birdwatchers will delight in the fact that the zoo\'s natural landscape is a haven for both migratory and resident birds. And if reptiles are more your thing, there\'s an extensive snake house, home to over 40 species of snakes, both venomous and non-venomous.'),(8,'Sri Ujjaini Mahakali Temple','Endowment Colony-Ramanthapur, Hyderabad - 500013 (Near Secunderabad General Bazar, Endowment Department).','Sri Ujjaini Mahakali Temple has stood well over a century in the heart of Secunderabad, near Hyderabad. It is dedicated to Goddess Mahakali and draws innumerable devotees seeking her divine blessings. It has been a revered pilgrimage site for over 190 years.  The temple’s sanctum has a stone idol of Goddess Mahakali sitting gracefully. The idol wields a sword, a two-headed damaru (drum), a spear, and an amrut (food of the gods) vessel, all under a protective silver shield known as Vendi Kavacham. It is believed that this stone idol was unearthed during the construction of the innermost sanctum in 1964. In this sacred space, there is an idol of another Hindu deity, Goddess Manikyaladevi.'),(9,'KBR National Park','Near to LV Prasad Eye Hospital, Opp TDP Office, Road Number 2, Banjara Hills, Hyderabad, Telangana, 500034, India.','Step into the enchanting embrace of Kasu Brahmananda Reddy Park, or KBR National Park. Established in 1998, this sanctuary, named after former Chief Minister Kasu Brahmananda Reddy, is one of Hyderabad\'s oldest national parks.   This park is a treasure trove of biodiversity, boasting an astonishing number of animals and plants, with approximately 600 plant species and over 100 bird species calling it home. Amidst the vibrant foliage, graceful deer, playful monkeys, and elusive reptiles may cross your path, creating unforgettable wildlife encounters. For butterfly lovers, too, KBR National Park is a veritable paradise. With about 30 species gracefully flitting through the air, the park transforms into a vibrant tapestry of colour and wonder.'),(10,'Paigah Tombs','Qalender Nagar Rd, Santosh Nagar, Kanchan Bagh, Hyderabad, Telangana 500058','The Paigah noble family lies buried in the Paigah Tombs, also known as Maqbara Shams Al Umara; one of the many historical treasures of Hyderabad. It is an enchanting tribute to the refined craftsmanship of a bygone era, The tombs were built by Amir-e-Kabir H.E. Nawab Sir Khursheed Jah Bahadur, also from the Paigah family. They were among the most influential and powerful families of the Princely State of Hyderabad in the 18th Century. They were believed to be wealthier than the average Maharajah of the country and the only ones to have the privilege of maintaining their own court, palaces, and private armies,  The tombs were erected between 1796 and 1820 and exhibit a splendid fusion of Indo-Saracenic architecture and a captivating amalgamation of Asaf Jah and Rajputani styles. Crafted from pristine white marble, the tombs have intricately designed interiors, each adorned with the famous \'Jali\' work that adds to their allure.'),(11,'Lumbini Park','Opposite Secretariat New Gate, Khairatabad, Hyderabad, Telangana, 500004, India.','Nestled on the banks of the picturesque Hussain Sagar Lake in Hyderabad, Lumbini Park is a serene oasis that offers respite from the bustling city life. Named after Lumbini, the birthplace of Lord Buddha in Nepal, this park is not just a green space but also a place of historical significance and natural beauty. With its lush gardens, scenic lake views, and peaceful ambiance, Lumbini Park is a must-visit destination for nature lovers and history enthusiasts alike.'),(12,'St. Mary\'s Church','Rodamestri Nagar Road, Balaiah Hotel Bus Stop, Nlb Nagar Colony, Hyderabad, Telangana 500055 · 4.5 km','The church has an intriguing history. In 1839, Father Daniel Murphy began searching for a location to build a church in Hyderabad, the capital of the Nizam kingdom. Back then, no religion, other than Islam, was looked upon kindly. As a result, he considered Secunderabad as an alternative site. St. Mary\'s Church took a decade to reach completion in 1850. At that time, it proudly held the distinction of being the largest church in the state.'),(13,'Makkah Masji','Charminar Road, close to Ghansi Bazaar, Hyderabad, Telangana, India','The Makkah Masjid located in Hyderabad, in the Hyderabad district of the state of Telangana, India. It is the largest mosque in the city,[1] and one of the largest in the country, with a capacity of 10,000 worshippers.[2] The mosque was built during the 17th century, and is a state-protected monument. It serves as the primary mosque for the Old City of Hyderabad,[3] and is located close to the historic landmarks of Charminar, Chowmahalla Palace and Laad Bazaar.'),(14,'Taramati Baradari','Near PBEL City, Ramdev Guda, Ibrahim Bagh, Hyderabad, Telangana, 500031, India.','The tourism department promotes the location by romantic stories linking the then-Sultan with a courtesan named Taramati. One such story goes that during the reign of Abdullah Qutb Shah, he used to hear Taramati\'s voice as she sang for travelers at the Serai, while he sat two kilometers away at Golconda fort. Her voice was carried by wind, and the prince would listen from the fort. There is no recorded report of the same.  Another fable tells of two ravishing dancing sisters, Taramati and Premamati, who danced on ropes tied between their pavilion and the balcony of the king and patron, Abdulla Qutub Shah.'),(15,'Chilkur Balaji Temple','Chilkur Balaji Temple Rd, Himayatnagar, Hyderabad, Telangana 500075','Chilkur Balaji Temple is situated in the picturesque village of Chilkur, about 30 kilometres away from Hyderabad. It is also called the VISA Temple, and sits prettily on the banks of the Osman Sagar Lake, near the Vikarabad Road. It is believed that paying your obeisance to the presiding deity, Lord Balaji Venkateswara, along with Sridevi and Bhoodev can grant your wishes of gaining a USA Visa! The temple houses the Visa Balaji or the Visa God! The belief finds its roots in an incident when a few students who had their Visa applications rejected, came and prayed here only to have their applications accepted.'),(16,'Shilparamam','Hi Tech City Main Road, Madhapur Rd, HITEC City, Hyderabad, Telangana 500081, India.','Spread across an area of 50 acres, Shilparamam not just showcases various artefacts and traditionally made handicrafts but is also a home for various performing artists. In its complete form, the complex of Shilparamam is supposed to have Crafts Museum, Cultural Museum, Art Gallery & Library, Multi-purpose Auditorium, Common Facility Workshops and Research & Design Centre along with accommodation facilities for artists and visitors.  This is an ideal place for long walks too; its natural greenery dotted with carefully laid out sculptures and intricately designed buildings. There is also the facility of battery operated car which takes you for an enchanting tour of Shilparamam with a minimal charge.'),(17,'Ramoji Film City','Ramoji Film City, R.R. District, Hyderabad - 501512, Telangana, India.','Ramoji Film City is an integrated film studio facility located in Hyderabad, India. Spread over 2,000 acres (810 ha), it is recognized as the world\'s largest film studio complex by the Guinness World Records. Established in 1996 by Telugu media proprietor Ramoji Rao, it has been described as a city within a cit by The Guardian.[4]  In addition to serving as a major hub for film production, Ramoji Film City is a popular thematic holiday destination, featuring a mix of natural landscapes, artificial sets, and an amusement park. Around 15 Lakh tourists visit the place every year.');
/*!40000 ALTER TABLE `tourist_places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trident_hyderabad`
--

DROP TABLE IF EXISTS `trident_hyderabad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trident_hyderabad` (
  `rooms` int DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `costomer_name` varchar(30) DEFAULT NULL,
  `mobile` bigint DEFAULT NULL,
  `capacity` varchar(10) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  UNIQUE KEY `rooms` (`rooms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trident_hyderabad`
--

LOCK TABLES `trident_hyderabad` WRITE;
/*!40000 ALTER TABLE `trident_hyderabad` DISABLE KEYS */;
INSERT INTO `trident_hyderabad` VALUES (101,'Available',NULL,NULL,'1-2 people','8k'),(102,'Available',NULL,NULL,'1-2 people','8k'),(103,'Available',NULL,NULL,'1-2 people','8k'),(104,'reserved','narendhra',987654345,'1-2 people','8k'),(105,'Available',NULL,NULL,'3 people','8.5k'),(106,'Available',NULL,NULL,'3 people','8.5k'),(107,'Available',NULL,NULL,'4 people','9k'),(108,'Available',NULL,NULL,'4 people','9k'),(201,'Available',NULL,NULL,'1-2 people','8k'),(202,'reserved','Siva',98765234576,'1-2 people','8k'),(203,'Available',NULL,NULL,'5 people','10k'),(204,'Available',NULL,NULL,'5 people','10k'),(205,'Available',NULL,NULL,'5 people','10k'),(206,'Available',NULL,NULL,'4 people','9k'),(207,'Available',NULL,NULL,'4 people','9k'),(208,'Available',NULL,NULL,'3 people','8.5k'),(301,'Available',NULL,NULL,'8 people','15k'),(302,'Available',NULL,NULL,'7 people','13k'),(303,'Available',NULL,NULL,'1-2 people','8k'),(304,'Available',NULL,NULL,'5 people','10k'),(305,'Available',NULL,NULL,'7 people','13k'),(306,'Available',NULL,NULL,'7 people','13k'),(307,'Available',NULL,NULL,'3 people','8.5k'),(308,'Available',NULL,NULL,'9 people','15k'),(401,'Available',NULL,NULL,'11 people','20k'),(402,'Available',NULL,NULL,'12 people','22k'),(403,'Available',NULL,NULL,'10 people','20k'),(404,'Available',NULL,NULL,'15 people','25k');
/*!40000 ALTER TABLE `trident_hyderabad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(30) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobileno` varchar(45) DEFAULT NULL,
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `passwordl_UNIQUE` (`password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('kalyan','Kalyan@123','kalyan@gmail.com','9121456628'),('narendra','Narendra@123','narendrathammarapu1477@gmail.com','9121456628'),('shiva','Shiva@123','shiva@gmail.com','9876543212'),('siva_krishna','@Siva1234','siva@gmail.com','9876582512'),('teja','Teja@123','teja@gmail.com','9550988131');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaaraahi_hotels`
--

DROP TABLE IF EXISTS `vaaraahi_hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vaaraahi_hotels` (
  `rooms` int DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `costomer_name` varchar(30) DEFAULT NULL,
  `mobile` bigint DEFAULT NULL,
  `capacity` varchar(10) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  UNIQUE KEY `rooms` (`rooms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaaraahi_hotels`
--

LOCK TABLES `vaaraahi_hotels` WRITE;
/*!40000 ALTER TABLE `vaaraahi_hotels` DISABLE KEYS */;
INSERT INTO `vaaraahi_hotels` VALUES (101,'Available',NULL,NULL,'2 people','1.5k'),(102,'Available',NULL,NULL,'2 people','1.5k'),(103,'Available',NULL,NULL,'1 people','1k'),(104,'Available',NULL,NULL,'2 people','1.5k'),(105,'Available',NULL,NULL,'2 people','1.5k'),(106,'Available',NULL,NULL,'3 people','1.7k'),(107,'Available',NULL,NULL,'4 people','2k'),(108,'Available',NULL,NULL,'4 people','2k'),(201,'Available',NULL,NULL,'1-2 people','1.5k'),(202,'Available',NULL,NULL,'1-2 people','1.5k'),(203,'Available',NULL,NULL,'5 people','2.5k'),(204,'Available',NULL,NULL,'5 people','2.5k'),(205,'Available',NULL,NULL,'5 people','2.5k'),(206,'Available',NULL,NULL,'4 people','2k'),(207,'Available',NULL,NULL,'4 people','2k'),(208,'Available',NULL,NULL,'3 people','1.7k'),(301,'Available',NULL,NULL,'1 people','1k'),(302,'Available',NULL,NULL,'1 people','1k'),(303,'Available',NULL,NULL,'1-2 people','1.5k'),(304,'Available',NULL,NULL,'5 people','2.5k'),(305,'Available',NULL,NULL,'4 people','2.2k'),(306,'reserved','tharun',76543456,'6 people','4k'),(307,'Available',NULL,NULL,'3 people','1.7k'),(308,'Available',NULL,NULL,'2 people','1.5k'),(401,'Available',NULL,NULL,'2 people','1.7k'),(402,'Available',NULL,NULL,'6 people','4k');
/*!40000 ALTER TABLE `vaaraahi_hotels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-18 21:24:23
