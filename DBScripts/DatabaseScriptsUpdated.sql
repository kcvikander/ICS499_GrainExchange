CREATE DATABASE  IF NOT EXISTS `mgex_margins` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mgex_margins`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: mgex_margins
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
-- Dumping data for table `t_mgex_portfolio_spreads`
--

LOCK TABLES `t_mgex_portfolio_spreads` WRITE;
/*!40000 ALTER TABLE `t_mgex_portfolio_spreads` DISABLE KEYS */;
INSERT INTO `t_mgex_portfolio_spreads` VALUES (1,'long',1,'Sep-15','MW',500,1,1,NULL),(2,'short',1,'Sep-15','MW',500,1,2,NULL),(3,'long',1,'Sep-15','MW',500,1,3,NULL),(4,'short',1,'Sep-15','MW',500,1,4,NULL),(5,'short',1,'Sep-15','MW',500,1,5,NULL),(6,'long',1,'Sep-15','MW',500,1,6,NULL),(7,'short',1,'Sep-15','MW',500,1,7,NULL),(8,'long',1,'Sep-15','MW',500,1,8,NULL),(3,'short',1,'Dec-15','MW',500,2,9,NULL),(4,'long',1,'Dec-15','MW',500,2,10,NULL),(5,'long',1,'Sep-15','CW',500,2,11,NULL),(6,'short',1,'Sep-15','CW',500,2,12,NULL),(7,'long',1,'Sep-15','KW',500,2,13,NULL),(8,'short',1,'Sep-15','KW',500,2,14,NULL);
/*!40000 ALTER TABLE `t_mgex_portfolio_spreads` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mgex_portfolio_spreads_settlements_history`
--

LOCK TABLES `t_mgex_portfolio_spreads_settlements_history` WRITE;
/*!40000 ALTER TABLE `t_mgex_portfolio_spreads_settlements_history` DISABLE KEYS */;
INSERT INTO `t_mgex_portfolio_spreads_settlements_history` VALUES (1,'Sep-15 MW',8.125,NULL,NULL,NULL,NULL,NULL,NULL,500,NULL,'2015-06-29',1,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Sep-15 MW',8.125,NULL,NULL,NULL,NULL,NULL,NULL,500,NULL,'2015-06-29',2,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Sep-15 MW',8.125,'Dec-15 MW',8.5,NULL,NULL,NULL,NULL,500,NULL,'2015-06-29',3,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Sep-15 MW',8.125,'Dec-15 MW',8.5,NULL,NULL,NULL,NULL,500,NULL,'2015-06-29',4,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Sep-15 MW',8.125,'Sep-15 CW',8.375,NULL,NULL,NULL,NULL,500,NULL,'2015-06-29',5,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Sep-15 MW',8.125,'Sep-15 CW',8.375,NULL,NULL,NULL,NULL,500,NULL,'2015-06-29',6,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Sep-15 MW',8.125,'Sep-15 KW',7.825,NULL,NULL,NULL,NULL,500,NULL,'2015-06-29',7,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Sep-15 MW',8.125,'Sep-15 KW',7.825,NULL,NULL,NULL,NULL,500,NULL,'2015-06-29',8,NULL,NULL,NULL,NULL,NULL,NULL),(1,'Sep-15 MW',8,NULL,NULL,-0.125,NULL,NULL,NULL,500,NULL,'2015-06-29',16,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Sep-15 MW',8,NULL,NULL,-0.125,NULL,NULL,NULL,500,NULL,'2015-06-29',17,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Sep-15 MW',8,'Dec-15 MW',6,-0.125,-2.5,2.375,11875,500,-11375,'2015-06-29',18,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Sep-15 MW',8,'Dec-15 MW',6,-0.125,-2.5,2.375,11875,500,-11375,'2015-06-29',19,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Sep-15 MW',8,'Sep-15 CW',5,-0.125,-3.375,3.25,16250,500,-15750,'2015-06-29',20,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Sep-15 MW',8,'Sep-15 CW',5,-0.125,-3.375,3.25,16250,500,-15750,'2015-06-29',21,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Sep-15 MW',8,'Sep-15 KW',10,-0.125,2.175,2.3,11500,500,-11000,'2015-06-29',22,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Sep-15 MW',8,'Sep-15 KW',10,-0.125,2.175,2.3,11500,500,-11000,'2015-06-29',23,NULL,NULL,NULL,NULL,NULL,NULL),(1,'Sep-15 MW',6.0625,NULL,NULL,-2.0625,NULL,NULL,NULL,500,NULL,'2015-07-02',31,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Sep-15 MW',6.0625,NULL,NULL,-2.0625,NULL,NULL,NULL,500,NULL,'2015-07-02',32,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Sep-15 MW',6.0625,'Dec-15 MW',6.0325,-2.0625,-2.4675000000000002,0.40500000000000025,2025.0000000000011,500,-1525.0000000000011,'2015-07-02',33,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Sep-15 MW',6.0625,'Dec-15 MW',6.0325,-2.0625,-2.4675000000000002,0.40500000000000025,2025.0000000000011,500,-1525.0000000000011,'2015-07-02',34,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Sep-15 MW',6.0625,'Sep-15 CW',5.575,-2.0625,-2.8,0.7374999999999998,3687.499999999999,500,-3187.499999999999,'2015-07-02',35,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Sep-15 MW',6.0625,'Sep-15 CW',5.575,-2.0625,-2.8,0.7374999999999998,3687.499999999999,500,-3187.499999999999,'2015-07-02',36,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Sep-15 MW',6.0625,'Sep-15 KW',4.6235,-2.0625,-3.2015000000000002,1.1390000000000002,5695.000000000001,500,-5195.000000000001,'2015-07-02',37,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Sep-15 MW',6.0625,'Sep-15 KW',4.6235,-2.0625,-3.2015000000000002,1.1390000000000002,5695.000000000001,500,-5195.000000000001,'2015-07-02',38,NULL,NULL,NULL,NULL,NULL,NULL),(1,'Sep-15 MW',NULL,NULL,NULL,NULL,NULL,NULL,NULL,500,NULL,'2015-07-04',46,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Sep-15 MW',NULL,NULL,NULL,NULL,NULL,NULL,NULL,500,NULL,'2015-07-04',47,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Sep-15 MW',NULL,'Dec-15 MW',NULL,NULL,NULL,NULL,NULL,500,NULL,'2015-07-04',48,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Sep-15 MW',NULL,'Dec-15 MW',NULL,NULL,NULL,NULL,NULL,500,NULL,'2015-07-04',49,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Sep-15 MW',NULL,'Sep-15 CW',NULL,NULL,NULL,NULL,NULL,500,NULL,'2015-07-04',50,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Sep-15 MW',NULL,'Sep-15 CW',NULL,NULL,NULL,NULL,NULL,500,NULL,'2015-07-04',51,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Sep-15 MW',NULL,'Sep-15 KW',NULL,NULL,NULL,NULL,NULL,500,NULL,'2015-07-04',52,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Sep-15 MW',NULL,'Sep-15 KW',NULL,NULL,NULL,NULL,NULL,500,NULL,'2015-07-04',53,NULL,NULL,NULL,NULL,NULL,NULL),(1,'Sep-15 MW',8.125,NULL,NULL,NULL,NULL,NULL,NULL,500,NULL,'2015-07-15',61,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Sep-15 MW',8.125,NULL,NULL,NULL,NULL,NULL,NULL,500,NULL,'2015-07-15',62,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Sep-15 MW',8.125,'Dec-15 MW',7,NULL,NULL,NULL,NULL,500,NULL,'2015-07-15',63,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Sep-15 MW',8.125,'Dec-15 MW',7,NULL,NULL,NULL,NULL,500,NULL,'2015-07-15',64,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Sep-15 MW',8.125,'Sep-15 CW',15.25,NULL,NULL,NULL,NULL,500,NULL,'2015-07-15',65,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Sep-15 MW',8.125,'Sep-15 CW',15.25,NULL,NULL,NULL,NULL,500,NULL,'2015-07-15',66,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Sep-15 MW',8.125,'Sep-15 KW',4.5225,NULL,NULL,NULL,NULL,500,NULL,'2015-07-15',67,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Sep-15 MW',8.125,'Sep-15 KW',4.5225,NULL,NULL,NULL,NULL,500,NULL,'2015-07-15',68,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_mgex_portfolio_spreads_settlements_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mgex_margins'
--

--
-- Dumping routines for database 'mgex_margins'
--
/*!50003 DROP PROCEDURE IF EXISTS `get_all_spread_records` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_all_spread_records`()
SELECT *
	FROM t_mgex_portfolio_spreads
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_History_records` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_History_records`(IN vPortfolio INT, IN vDateStart DATE, IN vDateEnd DATE)
BEGIN
	SELECT 
		Portfolio,
		Product,
		Product_Settle,
		Product2,
		Product2_Settle,
		Product_Flux,
		Product2_Flux,
		Spread_Flux,
		Flux_Extension,
		margin_requirement,
		Margin_Coverage,
		Settlement_Date
	FROM mgex_margins.t_mgex_portfolio_spreads_settlements_history
    WHERE Portfolio = vPortfolio 
    AND Settlement_Date BETWEEN vDateStart AND vDateEnd;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_portfolio_margin_Calc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_portfolio_margin_Calc`()
BEGIN

	DROP TABLE IF EXISTS port_tmp;
    CREATE TEMPORARY TABLE port_tmp
    (
		Portfolio INT,
	    Product varchar(16),
	    Product_Settle double,
        Product_Settle_previous double,
	    Product2 varchar(16),
	    Product2_Settle double,
        Product2_Settle_previous double,
	    Product_Flux double,
	    Product2_Flux double,
	    Spread_Flux double,
	    Flux_Extension double,
	    margin_requirement int(11),
	    Margin_Coverage double,
	    Settlement_Date date,
	    id int(11),
	    Product_OI varchar(16),
	    Product2_OI varchar(16),
	    Max_OI int(11),
	    Margin_Ext double,
	    Flux_Ext double,
	    Coverage_Ext double
    );
    
    INSERT INTO port_tmp (Portfolio, Product, Product_Settle, Settlement_Date, margin_requirement)
    SELECT Portfolio, CONCAT(Expiration, ' ', Product) AS Product, Product_Settlement, CURDATE(), marginrequirement FROM t_mgex_portfolio_spreads WHERE Leg = 1;

    
    UPDATE port_tmp AS a
    INNER JOIN t_mgex_portfolio_spreads AS b ON a.Portfolio = b.Portfolio
    SET a.Product2 = CONCAT(b.Expiration, ' ', b.Product),
		a.Product2_Settle = b.Product_Settlement
	WHERE b.Leg = 2;

    UPDATE port_tmp AS a
    INNER JOIN t_mgex_portfolio_spreads_settlements_history AS b ON a.Portfolio = b.Portfolio AND a.Product = b.Product
    SET a.Product_Settle_previous = b.Product_Settle
	WHERE b.Settlement_Date = (SELECT MAX(Settlement_Date) FROM t_mgex_portfolio_spreads_settlements_history);
    
    UPDATE port_tmp AS a
    INNER JOIN t_mgex_portfolio_spreads_settlements_history AS b ON a.Portfolio = b.Portfolio AND a.Product2 = b.Product2
    SET a.Product2_Settle_previous = b.Product2_Settle
	WHERE b.Settlement_Date = (SELECT MAX(Settlement_Date) FROM t_mgex_portfolio_spreads_settlements_history);
    
    UPDATE port_tmp 
    SET Product_Flux = Product_Settle - Product_Settle_previous,
		Product2_Flux = Product2_Settle - Product2_Settle_previous;
        
	UPDATE port_tmp 
    SET Spread_Flux = ABS(Product_Flux - Product2_Flux);
    
    UPDATE port_tmp
    SET FLUX_Extension = (Spread_Flux * 5000),
    Margin_Coverage = (margin_requirement - FLUX_Extension);
    
    INSERT INTO t_mgex_portfolio_spreads_settlements_history (Portfolio, Product, Product_Settle, Product2, Product2_Settle, Settlement_Date, Product_Flux, Product2_Flux, Spread_Flux, FLUX_Extension, margin_requirement, Margin_Coverage)
    SELECT Portfolio, Product, Product_Settle, Product2, Product2_Settle, Settlement_Date, Product_Flux, Product2_Flux, Spread_Flux, FLUX_Extension, margin_requirement, Margin_Coverage FROM port_tmp;
    
    UPDATE t_mgex_portfolio_spreads
    SET Product_Settlement = NULL;

    -- SELECT * FROM port_tmp;
    -- SELECT * FROM t_mgex_portfolio_spreads_settlements_history;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `testHistory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `testHistory`()
BEGIN
	SELECT 
		Portfolio,
		Product,
		Product_Settle,
		Product2,
		Product2_Settle,
		Product_Flux,
		Product2_Flux,
		Spread_Flux,
		Flux_Extension,
		margin_requirement,
		Margin_Coverage,
		Settlement_Date
	FROM mgex_margins.t_mgex_portfolio_spreads_settlements_history;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-15 22:39:08
DELIMITER $$
drop procedure if exists `save_settlement`$$
create procedure save_settlement(spread_id INT(10), settlement_in INT(10))
begin
	UPDATE t_mgex_portfolio_spreads
    SET Product_Settlement = settlement_in
    WHERE id = spread_id;
end$$

DELIMITER ;