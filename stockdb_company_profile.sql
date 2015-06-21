-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: stockdb
-- ------------------------------------------------------
-- Server version	5.6.24-log

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
-- Table structure for table `company_profile`
--

DROP TABLE IF EXISTS `company_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_profile` (
  `CompanyId` int(11) NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(50) DEFAULT NULL,
  `Sector` varchar(35) DEFAULT NULL,
  `Industry` varchar(35) DEFAULT NULL,
  `StockSymbol` varchar(10) NOT NULL,
  `SharesOutstanding` double(10,0) DEFAULT NULL,
  `AverageVolume` double(10,0) DEFAULT NULL,
  `Beta` float(3,2) DEFAULT NULL,
  `ForwardPE` float(3,2) DEFAULT NULL,
  `PEG` float(3,2) DEFAULT NULL,
  PRIMARY KEY (`CompanyId`),
  UNIQUE KEY `StockSymbol` (`StockSymbol`),
  CONSTRAINT `company_profile_ibfk_1` FOREIGN KEY (`StockSymbol`) REFERENCES `price_history` (`StockSymbol`),
  CONSTRAINT `company_profile_ibfk_2` FOREIGN KEY (`StockSymbol`) REFERENCES `price_history` (`StockSymbol`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_profile`
--

LOCK TABLES `company_profile` WRITE;
/*!40000 ALTER TABLE `company_profile` DISABLE KEYS */;
INSERT INTO `company_profile` VALUES (1,'3-D Systems Corp','Technology','Computer Peripherals','DDD',111000000,2580360,1.32,9.99,2.08),(2,'3M','Conglomerates','Basic Materials','MMM',634000000,2279380,1.19,9.99,2.35),(3,'Apple Inc.','Consumer Goods','Electronic Equipment','AAPL',5750000000,49000700,0.91,9.99,1.11),(4,'Chevron Corporation','Conglomerates','Major Oil & Gas','CVX',1880000000,6879720,1.20,9.99,-7.83),(5,'Boeing','Industrial Goods','\"Aerospace/\nDefense\"','BA',691520000,3858450,0.89,9.99,1.34),(6,'Intel Corp','Technology','\"Semiconductor - \nBroad Line\"','INTC',4740000000,31192900,0.94,9.99,1.91),(7,'JP Morgan','Financial','Money Center Banks','JPM',3710000000,14695200,1.78,9.99,1.48),(8,'Microsoft Corporation','Technology','Business Software & Services','MSFT',8110000000,36997600,0.86,9.99,2.66),(9,'Nextera Energy Inc','Utilities','Electric Utilities','NEE',444120000,2256070,0.29,9.99,2.81),(10,'Pepsico Inc','Consumer Goods','Beverages - Soft Drinks','PEP',1480000000,4516750,0.60,9.99,3.39),(11,'Pfizer','Healthcare','\"Drug Manufactures -\nMajor\"','PFE',6160000000,26162600,0.84,9.99,5.34),(12,'Procter & Gamble Co','Consumer Goods','Personal Products','PG',2710000000,8063700,0.84,9.99,2.97),(13,'Walt Disney','Services ','Entertainment - Diversified','DIS',1700000000,5836120,1.08,9.99,1.44),(14,'Celgene Corp','Healthcare','Biotechnology','CELG',793140000,5287580,1.79,9.99,0.96),(15,'Gilead Sciences','Healthcare','Biotechnology','GILD',1470000000,11072700,0.93,9.99,0.78);
/*!40000 ALTER TABLE `company_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-20 13:37:49
