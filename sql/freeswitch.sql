-- MySQL dump 10.13  Distrib 5.5.60, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: freeswitch
-- ------------------------------------------------------
-- Server version	5.5.60-0+deb8u1

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
-- Table structure for table `aliases`
--

DROP TABLE IF EXISTS `aliases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aliases` (
  `sticky` int(11) DEFAULT NULL,
  `alias` varchar(128) DEFAULT NULL,
  `command` varchar(4096) DEFAULT NULL,
  `hostname` varchar(256) DEFAULT NULL,
  KEY `alias1` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `basic_calls`
--

DROP TABLE IF EXISTS `basic_calls`;
/*!50001 DROP VIEW IF EXISTS `basic_calls`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `basic_calls` (
  `uuid` tinyint NOT NULL,
  `direction` tinyint NOT NULL,
  `created` tinyint NOT NULL,
  `created_epoch` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `cid_name` tinyint NOT NULL,
  `cid_num` tinyint NOT NULL,
  `ip_addr` tinyint NOT NULL,
  `dest` tinyint NOT NULL,
  `presence_id` tinyint NOT NULL,
  `presence_data` tinyint NOT NULL,
  `accountcode` tinyint NOT NULL,
  `callstate` tinyint NOT NULL,
  `callee_name` tinyint NOT NULL,
  `callee_num` tinyint NOT NULL,
  `callee_direction` tinyint NOT NULL,
  `call_uuid` tinyint NOT NULL,
  `hostname` tinyint NOT NULL,
  `sent_callee_name` tinyint NOT NULL,
  `sent_callee_num` tinyint NOT NULL,
  `b_uuid` tinyint NOT NULL,
  `b_direction` tinyint NOT NULL,
  `b_created` tinyint NOT NULL,
  `b_created_epoch` tinyint NOT NULL,
  `b_name` tinyint NOT NULL,
  `b_state` tinyint NOT NULL,
  `b_cid_name` tinyint NOT NULL,
  `b_cid_num` tinyint NOT NULL,
  `b_ip_addr` tinyint NOT NULL,
  `b_dest` tinyint NOT NULL,
  `b_presence_id` tinyint NOT NULL,
  `b_presence_data` tinyint NOT NULL,
  `b_accountcode` tinyint NOT NULL,
  `b_callstate` tinyint NOT NULL,
  `b_callee_name` tinyint NOT NULL,
  `b_callee_num` tinyint NOT NULL,
  `b_callee_direction` tinyint NOT NULL,
  `b_sent_callee_name` tinyint NOT NULL,
  `b_sent_callee_num` tinyint NOT NULL,
  `call_created_epoch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `calls`
--

DROP TABLE IF EXISTS `calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls` (
  `call_uuid` varchar(255) DEFAULT NULL,
  `call_created` varchar(128) DEFAULT NULL,
  `call_created_epoch` int(11) DEFAULT NULL,
  `caller_uuid` varchar(256) DEFAULT NULL,
  `callee_uuid` varchar(256) DEFAULT NULL,
  `hostname` varchar(256) DEFAULT NULL,
  KEY `calls1` (`hostname`),
  KEY `callsidx1` (`hostname`),
  KEY `eruuindex` (`caller_uuid`,`hostname`),
  KEY `eeuuindex` (`callee_uuid`),
  KEY `eeuuindex2` (`call_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `channels`
--

DROP TABLE IF EXISTS `channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channels` (
  `uuid` varchar(256) DEFAULT NULL,
  `direction` varchar(32) DEFAULT NULL,
  `created` varchar(128) DEFAULT NULL,
  `created_epoch` int(11) DEFAULT NULL,
  `name` varchar(1024) DEFAULT NULL,
  `state` varchar(64) DEFAULT NULL,
  `cid_name` varchar(1024) DEFAULT NULL,
  `cid_num` varchar(256) DEFAULT NULL,
  `ip_addr` varchar(256) DEFAULT NULL,
  `dest` varchar(1024) DEFAULT NULL,
  `application` varchar(128) DEFAULT NULL,
  `application_data` varchar(4096) DEFAULT NULL,
  `dialplan` varchar(128) DEFAULT NULL,
  `context` varchar(128) DEFAULT NULL,
  `read_codec` varchar(128) DEFAULT NULL,
  `read_rate` varchar(32) DEFAULT NULL,
  `read_bit_rate` varchar(32) DEFAULT NULL,
  `write_codec` varchar(128) DEFAULT NULL,
  `write_rate` varchar(32) DEFAULT NULL,
  `write_bit_rate` varchar(32) DEFAULT NULL,
  `secure` varchar(64) DEFAULT NULL,
  `hostname` varchar(256) DEFAULT NULL,
  `presence_id` varchar(4096) DEFAULT NULL,
  `presence_data` varchar(4096) DEFAULT NULL,
  `accountcode` varchar(256) DEFAULT NULL,
  `callstate` varchar(64) DEFAULT NULL,
  `callee_name` varchar(1024) DEFAULT NULL,
  `callee_num` varchar(256) DEFAULT NULL,
  `callee_direction` varchar(5) DEFAULT NULL,
  `call_uuid` varchar(256) DEFAULT NULL,
  `sent_callee_name` varchar(1024) DEFAULT NULL,
  `sent_callee_num` varchar(256) DEFAULT NULL,
  `initial_cid_name` varchar(1024) DEFAULT NULL,
  `initial_cid_num` varchar(256) DEFAULT NULL,
  `initial_ip_addr` varchar(256) DEFAULT NULL,
  `initial_dest` varchar(1024) DEFAULT NULL,
  `initial_dialplan` varchar(128) DEFAULT NULL,
  `initial_context` varchar(128) DEFAULT NULL,
  KEY `channels1` (`hostname`),
  KEY `chidx1` (`hostname`),
  KEY `uuindex` (`uuid`,`hostname`),
  KEY `uuindex2` (`call_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_channels_ins AFTER INSERT
ON channels FOR EACH ROW
BEGIN 
  insert into my_channels (uuid,ip_addr,sip_from_user,sip_to_user) values(NEW.uuid,NEW.initial_ip_addr,NEW.cid_num,NEW.initial_dest);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_channels_del AFTER DELETE
ON channels FOR EACH ROW
BEGIN
   DELETE from my_channels where uuid = OLD.uuid;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `complete`
--

DROP TABLE IF EXISTS `complete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complete` (
  `sticky` int(11) DEFAULT NULL,
  `a1` varchar(128) DEFAULT NULL,
  `a2` varchar(128) DEFAULT NULL,
  `a3` varchar(128) DEFAULT NULL,
  `a4` varchar(128) DEFAULT NULL,
  `a5` varchar(128) DEFAULT NULL,
  `a6` varchar(128) DEFAULT NULL,
  `a7` varchar(128) DEFAULT NULL,
  `a8` varchar(128) DEFAULT NULL,
  `a9` varchar(128) DEFAULT NULL,
  `a10` varchar(128) DEFAULT NULL,
  `hostname` varchar(256) DEFAULT NULL,
  KEY `complete1` (`a1`,`hostname`),
  KEY `complete2` (`a2`,`hostname`),
  KEY `complete3` (`a3`,`hostname`),
  KEY `complete4` (`a4`,`hostname`),
  KEY `complete5` (`a5`,`hostname`),
  KEY `complete6` (`a6`,`hostname`),
  KEY `complete7` (`a7`,`hostname`),
  KEY `complete8` (`a8`,`hostname`),
  KEY `complete9` (`a9`,`hostname`),
  KEY `complete10` (`a10`,`hostname`),
  KEY `complete11` (`a1`,`a2`,`a3`,`a4`,`a5`,`a6`,`a7`,`a8`,`a9`,`a10`,`hostname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `detailed_calls`
--

DROP TABLE IF EXISTS `detailed_calls`;
/*!50001 DROP VIEW IF EXISTS `detailed_calls`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `detailed_calls` (
  `uuid` tinyint NOT NULL,
  `direction` tinyint NOT NULL,
  `created` tinyint NOT NULL,
  `created_epoch` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `cid_name` tinyint NOT NULL,
  `cid_num` tinyint NOT NULL,
  `ip_addr` tinyint NOT NULL,
  `dest` tinyint NOT NULL,
  `application` tinyint NOT NULL,
  `application_data` tinyint NOT NULL,
  `dialplan` tinyint NOT NULL,
  `context` tinyint NOT NULL,
  `read_codec` tinyint NOT NULL,
  `read_rate` tinyint NOT NULL,
  `read_bit_rate` tinyint NOT NULL,
  `write_codec` tinyint NOT NULL,
  `write_rate` tinyint NOT NULL,
  `write_bit_rate` tinyint NOT NULL,
  `secure` tinyint NOT NULL,
  `hostname` tinyint NOT NULL,
  `presence_id` tinyint NOT NULL,
  `presence_data` tinyint NOT NULL,
  `accountcode` tinyint NOT NULL,
  `callstate` tinyint NOT NULL,
  `callee_name` tinyint NOT NULL,
  `callee_num` tinyint NOT NULL,
  `callee_direction` tinyint NOT NULL,
  `call_uuid` tinyint NOT NULL,
  `sent_callee_name` tinyint NOT NULL,
  `sent_callee_num` tinyint NOT NULL,
  `b_uuid` tinyint NOT NULL,
  `b_direction` tinyint NOT NULL,
  `b_created` tinyint NOT NULL,
  `b_created_epoch` tinyint NOT NULL,
  `b_name` tinyint NOT NULL,
  `b_state` tinyint NOT NULL,
  `b_cid_name` tinyint NOT NULL,
  `b_cid_num` tinyint NOT NULL,
  `b_ip_addr` tinyint NOT NULL,
  `b_dest` tinyint NOT NULL,
  `b_application` tinyint NOT NULL,
  `b_application_data` tinyint NOT NULL,
  `b_dialplan` tinyint NOT NULL,
  `b_context` tinyint NOT NULL,
  `b_read_codec` tinyint NOT NULL,
  `b_read_rate` tinyint NOT NULL,
  `b_read_bit_rate` tinyint NOT NULL,
  `b_write_codec` tinyint NOT NULL,
  `b_write_rate` tinyint NOT NULL,
  `b_write_bit_rate` tinyint NOT NULL,
  `b_secure` tinyint NOT NULL,
  `b_hostname` tinyint NOT NULL,
  `b_presence_id` tinyint NOT NULL,
  `b_presence_data` tinyint NOT NULL,
  `b_accountcode` tinyint NOT NULL,
  `b_callstate` tinyint NOT NULL,
  `b_callee_name` tinyint NOT NULL,
  `b_callee_num` tinyint NOT NULL,
  `b_callee_direction` tinyint NOT NULL,
  `b_call_uuid` tinyint NOT NULL,
  `b_sent_callee_name` tinyint NOT NULL,
  `b_sent_callee_num` tinyint NOT NULL,
  `call_created_epoch` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `interfaces`
--

DROP TABLE IF EXISTS `interfaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interfaces` (
  `type` varchar(128) DEFAULT NULL,
  `name` varchar(1024) DEFAULT NULL,
  `description` varchar(4096) DEFAULT NULL,
  `ikey` varchar(1024) DEFAULT NULL,
  `filename` varchar(4096) DEFAULT NULL,
  `syntax` varchar(4096) DEFAULT NULL,
  `hostname` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `my_channels`
--

DROP TABLE IF EXISTS `my_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_channels` (
  `uuid` varchar(256) DEFAULT NULL,
  `ip_addr` varchar(256) DEFAULT NULL,
  `call_type` int(11) DEFAULT '0',
  `my_call_type` int(11) DEFAULT '0',
  `my_from_charge` int(11) DEFAULT '0',
  `my_to_charge` int(11) DEFAULT '0',
  `my_from_charge_cam` int(11) DEFAULT '0',
  `my_to_charge_cam` int(11) DEFAULT '0',
  `my_from_user_type` int(11) DEFAULT '0',
  `my_to_user_type` int(11) DEFAULT '0',
  `my_charge_count` int(11) DEFAULT '1',
  `sip_from_user` varchar(256) DEFAULT NULL,
  `sip_to_user` varchar(256) DEFAULT NULL,
  `first_charged` int(11) DEFAULT '0',
  `is_camera_viewer_on` int(11) DEFAULT '0',
  KEY `uuindex2` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nat`
--

DROP TABLE IF EXISTS `nat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nat` (
  `sticky` int(11) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `proto` int(11) DEFAULT NULL,
  `hostname` varchar(256) DEFAULT NULL,
  KEY `nat_map_port_proto` (`port`,`proto`,`hostname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recovery`
--

DROP TABLE IF EXISTS `recovery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recovery` (
  `runtime_uuid` varchar(255) DEFAULT NULL,
  `technology` varchar(255) DEFAULT NULL,
  `profile_name` varchar(255) DEFAULT NULL,
  `hostname` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `metadata` text,
  KEY `recovery1` (`technology`),
  KEY `recovery2` (`profile_name`),
  KEY `recovery3` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `registrations`
--

DROP TABLE IF EXISTS `registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registrations` (
  `reg_user` varchar(256) DEFAULT NULL,
  `realm` varchar(256) DEFAULT NULL,
  `token` varchar(256) DEFAULT NULL,
  `url` text,
  `expires` int(11) DEFAULT NULL,
  `network_ip` varchar(256) DEFAULT NULL,
  `network_port` varchar(256) DEFAULT NULL,
  `network_proto` varchar(256) DEFAULT NULL,
  `hostname` varchar(256) DEFAULT NULL,
  `metadata` varchar(256) DEFAULT NULL,
  KEY `regindex1` (`reg_user`,`realm`,`hostname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `task_id` int(11) DEFAULT NULL,
  `task_desc` varchar(4096) DEFAULT NULL,
  `task_group` varchar(1024) DEFAULT NULL,
  `task_runtime` bigint(20) DEFAULT NULL,
  `task_sql_manager` int(11) DEFAULT NULL,
  `hostname` varchar(256) DEFAULT NULL,
  KEY `tasks1` (`hostname`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `basic_calls`
--

/*!50001 DROP TABLE IF EXISTS `basic_calls`*/;
/*!50001 DROP VIEW IF EXISTS `basic_calls`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `basic_calls` AS select `a`.`uuid` AS `uuid`,`a`.`direction` AS `direction`,`a`.`created` AS `created`,`a`.`created_epoch` AS `created_epoch`,`a`.`name` AS `name`,`a`.`state` AS `state`,`a`.`cid_name` AS `cid_name`,`a`.`cid_num` AS `cid_num`,`a`.`ip_addr` AS `ip_addr`,`a`.`dest` AS `dest`,`a`.`presence_id` AS `presence_id`,`a`.`presence_data` AS `presence_data`,`a`.`accountcode` AS `accountcode`,`a`.`callstate` AS `callstate`,`a`.`callee_name` AS `callee_name`,`a`.`callee_num` AS `callee_num`,`a`.`callee_direction` AS `callee_direction`,`a`.`call_uuid` AS `call_uuid`,`a`.`hostname` AS `hostname`,`a`.`sent_callee_name` AS `sent_callee_name`,`a`.`sent_callee_num` AS `sent_callee_num`,`b`.`uuid` AS `b_uuid`,`b`.`direction` AS `b_direction`,`b`.`created` AS `b_created`,`b`.`created_epoch` AS `b_created_epoch`,`b`.`name` AS `b_name`,`b`.`state` AS `b_state`,`b`.`cid_name` AS `b_cid_name`,`b`.`cid_num` AS `b_cid_num`,`b`.`ip_addr` AS `b_ip_addr`,`b`.`dest` AS `b_dest`,`b`.`presence_id` AS `b_presence_id`,`b`.`presence_data` AS `b_presence_data`,`b`.`accountcode` AS `b_accountcode`,`b`.`callstate` AS `b_callstate`,`b`.`callee_name` AS `b_callee_name`,`b`.`callee_num` AS `b_callee_num`,`b`.`callee_direction` AS `b_callee_direction`,`b`.`sent_callee_name` AS `b_sent_callee_name`,`b`.`sent_callee_num` AS `b_sent_callee_num`,`c`.`call_created_epoch` AS `call_created_epoch` from ((`channels` `a` left join `calls` `c` on(((`a`.`uuid` = `c`.`caller_uuid`) and (`a`.`hostname` = `c`.`hostname`)))) left join `channels` `b` on(((`b`.`uuid` = `c`.`callee_uuid`) and (`b`.`hostname` = `c`.`hostname`)))) where ((`a`.`uuid` = `c`.`caller_uuid`) or (not(`a`.`uuid` in (select `calls`.`callee_uuid` from `calls`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `detailed_calls`
--

/*!50001 DROP TABLE IF EXISTS `detailed_calls`*/;
/*!50001 DROP VIEW IF EXISTS `detailed_calls`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `detailed_calls` AS select `a`.`uuid` AS `uuid`,`a`.`direction` AS `direction`,`a`.`created` AS `created`,`a`.`created_epoch` AS `created_epoch`,`a`.`name` AS `name`,`a`.`state` AS `state`,`a`.`cid_name` AS `cid_name`,`a`.`cid_num` AS `cid_num`,`a`.`ip_addr` AS `ip_addr`,`a`.`dest` AS `dest`,`a`.`application` AS `application`,`a`.`application_data` AS `application_data`,`a`.`dialplan` AS `dialplan`,`a`.`context` AS `context`,`a`.`read_codec` AS `read_codec`,`a`.`read_rate` AS `read_rate`,`a`.`read_bit_rate` AS `read_bit_rate`,`a`.`write_codec` AS `write_codec`,`a`.`write_rate` AS `write_rate`,`a`.`write_bit_rate` AS `write_bit_rate`,`a`.`secure` AS `secure`,`a`.`hostname` AS `hostname`,`a`.`presence_id` AS `presence_id`,`a`.`presence_data` AS `presence_data`,`a`.`accountcode` AS `accountcode`,`a`.`callstate` AS `callstate`,`a`.`callee_name` AS `callee_name`,`a`.`callee_num` AS `callee_num`,`a`.`callee_direction` AS `callee_direction`,`a`.`call_uuid` AS `call_uuid`,`a`.`sent_callee_name` AS `sent_callee_name`,`a`.`sent_callee_num` AS `sent_callee_num`,`b`.`uuid` AS `b_uuid`,`b`.`direction` AS `b_direction`,`b`.`created` AS `b_created`,`b`.`created_epoch` AS `b_created_epoch`,`b`.`name` AS `b_name`,`b`.`state` AS `b_state`,`b`.`cid_name` AS `b_cid_name`,`b`.`cid_num` AS `b_cid_num`,`b`.`ip_addr` AS `b_ip_addr`,`b`.`dest` AS `b_dest`,`b`.`application` AS `b_application`,`b`.`application_data` AS `b_application_data`,`b`.`dialplan` AS `b_dialplan`,`b`.`context` AS `b_context`,`b`.`read_codec` AS `b_read_codec`,`b`.`read_rate` AS `b_read_rate`,`b`.`read_bit_rate` AS `b_read_bit_rate`,`b`.`write_codec` AS `b_write_codec`,`b`.`write_rate` AS `b_write_rate`,`b`.`write_bit_rate` AS `b_write_bit_rate`,`b`.`secure` AS `b_secure`,`b`.`hostname` AS `b_hostname`,`b`.`presence_id` AS `b_presence_id`,`b`.`presence_data` AS `b_presence_data`,`b`.`accountcode` AS `b_accountcode`,`b`.`callstate` AS `b_callstate`,`b`.`callee_name` AS `b_callee_name`,`b`.`callee_num` AS `b_callee_num`,`b`.`callee_direction` AS `b_callee_direction`,`b`.`call_uuid` AS `b_call_uuid`,`b`.`sent_callee_name` AS `b_sent_callee_name`,`b`.`sent_callee_num` AS `b_sent_callee_num`,`c`.`call_created_epoch` AS `call_created_epoch` from ((`channels` `a` left join `calls` `c` on(((`a`.`uuid` = `c`.`caller_uuid`) and (`a`.`hostname` = `c`.`hostname`)))) left join `channels` `b` on(((`b`.`uuid` = `c`.`callee_uuid`) and (`b`.`hostname` = `c`.`hostname`)))) where ((`a`.`uuid` = `c`.`caller_uuid`) or (not(`a`.`uuid` in (select `calls`.`callee_uuid` from `calls`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-25 12:00:21
