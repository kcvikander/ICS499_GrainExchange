-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 192.168.130.213    Database: mgex_margins
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `t_mgex_portfolio_spreads`
--

DROP TABLE IF EXISTS `t_mgex_portfolio_spreads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mgex_portfolio_spreads` (
  `Portfolio` int(11) DEFAULT NULL,
  `Direction` varchar(6) DEFAULT NULL,
  `Contracts` int(11) DEFAULT NULL,
  `Expiration` varchar(25) DEFAULT NULL,
  `Product` varchar(25) DEFAULT NULL,
  `MarginRequirement` int(11) DEFAULT NULL,
  `Leg` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Product_Settlement` decimal(10,5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_mgex_portfolio_spreads_settlements_history`
--

DROP TABLE IF EXISTS `t_mgex_portfolio_spreads_settlements_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mgex_portfolio_spreads_settlements_history` (
  `Portfolio` int(11) DEFAULT NULL,
  `Product` varchar(16) DEFAULT NULL,
  `Product_Settle` double DEFAULT NULL,
  `Product2` varchar(16) DEFAULT NULL,
  `Product2_Settle` double DEFAULT NULL,
  `Product_Flux` double DEFAULT NULL,
  `Product2_Flux` double DEFAULT NULL,
  `Spread_Flux` double DEFAULT NULL,
  `Flux_Extension` double DEFAULT NULL,
  `margin_requirement` int(11) DEFAULT '0',
  `Margin_Coverage` double DEFAULT NULL,
  `Settlement_Date` date DEFAULT '0000-00-00',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Product_OI` varchar(16) DEFAULT NULL,
  `Product2_OI` varchar(16) DEFAULT NULL,
  `Max_OI` int(11) DEFAULT NULL,
  `Margin_Ext` double DEFAULT NULL,
  `Flux_Ext` double DEFAULT NULL,
  `Coverage_Ext` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-29 16:04:14
