
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
DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `icon` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `non_exclude_fields` text COLLATE utf8_unicode_ci,
  `explicit_allowdeny` text COLLATE utf8_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `custom_options` text COLLATE utf8_unicode_ci,
  `db_mountpoints` text COLLATE utf8_unicode_ci,
  `pagetypes_select` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tables_select` text COLLATE utf8_unicode_ci,
  `tables_modify` text COLLATE utf8_unicode_ci,
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `groupMods` text COLLATE utf8_unicode_ci,
  `file_mountpoints` text COLLATE utf8_unicode_ci,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `subgroup` text COLLATE utf8_unicode_ci,
  `hide_in_lists` tinyint(4) NOT NULL DEFAULT '0',
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `tx_phpunit_is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `file_permissions` text COLLATE utf8_unicode_ci,
  `category_perms` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `phpunit_dummy` (`tx_phpunit_is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` longtext COLLATE utf8_unicode_ci,
  `ses_backuserid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `db_mountpoints` text COLLATE utf8_unicode_ci,
  `options` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `realName` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `userMods` text COLLATE utf8_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uc` mediumtext COLLATE utf8_unicode_ci,
  `file_mountpoints` text COLLATE utf8_unicode_ci,
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disableIPlock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `createdByAction` int(11) NOT NULL DEFAULT '0',
  `usergroup_cached_list` text COLLATE utf8_unicode_ci,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `workspace_preview` tinyint(3) NOT NULL DEFAULT '1',
  `tx_phpunit_is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `file_permissions` text COLLATE utf8_unicode_ci,
  `category_perms` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `username` (`username`),
  KEY `phpunit_dummy` (`tx_phpunit_is_dummy_record`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1371236451,'mhelmich','$1$ybEMIhKp$JTq7rOkHhDWYJUxOrP7c40',1,'',0,0,0,'','','',0,1368361205,0,'','','','a:26:{s:14:\"interfaceSetup\";s:7:\"backend\";s:10:\"moduleData\";a:10:{s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:6:\"web_ts\";a:6:{s:8:\"function\";s:89:\"TYPO3\\CMS\\TstemplateInfo\\Controller\\TypoScriptTemplateInformationModuleFunctionController\";s:19:\"constant_editor_cat\";s:14:\"internal notes\";s:15:\"ts_browser_type\";s:5:\"setup\";s:16:\"ts_browser_const\";s:1:\"0\";s:19:\"ts_browser_fixedLgd\";s:1:\"1\";s:23:\"ts_browser_showComments\";s:1:\"1\";}s:16:\"xMOD_alt_doc.php\";a:0:{}s:11:\"alt_doc.php\";a:2:{i:0;a:1:{s:32:\"029c05223c91389b8a9f94acbf80becc\";a:4:{i:0;s:19:\"<em>[No title]</em>\";i:1;a:7:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:2;s:4:\"edit\";}}s:7:\"defVals\";a:1:{s:10:\"tt_content\";a:3:{s:6:\"colPos\";s:1:\"0\";s:16:\"sys_language_uid\";s:1:\"0\";s:5:\"CType\";s:4:\"list\";}}s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:7:\"disHelp\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;}i:2;s:197:\"&edit[tt_content][2]=edit&defVals[tt_content][colPos]=0&defVals[tt_content][sys_language_uid]=0&defVals[tt_content][CType]=list&overrideVals=&columnsOnly=&disHelp=&noView=&editRegularContentFromId=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:1:\"2\";s:3:\"pid\";s:1:\"3\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}}i:1;s:32:\"3d060a9d3682d4912a33490d22c78b13\";}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:16:\"opendocs::recent\";a:4:{s:32:\"3d060a9d3682d4912a33490d22c78b13\";a:4:{i:0;s:15:\"Fliegenklatsche\";i:1;a:7:{s:4:\"edit\";a:1:{s:33:\"tx_inventory_domain_model_product\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:7:\"disHelp\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;}i:2;s:127:\"&edit[tx_inventory_domain_model_product][1]=edit&defVals=&overrideVals=&columnsOnly=&disHelp=&noView=&editRegularContentFromId=\";i:3;a:5:{s:5:\"table\";s:33:\"tx_inventory_domain_model_product\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"4\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}s:32:\"8f28f66c7fc666c419dfaf1b3bac8766\";a:4:{i:0;s:19:\"<em>[No title]</em>\";i:1;a:7:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:7:\"disHelp\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;}i:2;s:104:\"&edit[tt_content][1]=edit&defVals=&overrideVals=&columnsOnly=&disHelp=&noView=&editRegularContentFromId=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"3\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}s:32:\"99eb84e187fc30eeba3ec311ec622692\";a:4:{i:0;s:21:\"Default Root Template\";i:1;a:7:{s:4:\"edit\";a:1:{s:12:\"sys_template\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:7:\"disHelp\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;}i:2;s:106:\"&edit[sys_template][1]=edit&defVals=&overrideVals=&columnsOnly=&disHelp=&noView=&editRegularContentFromId=\";i:3;a:5:{s:5:\"table\";s:12:\"sys_template\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"1\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}s:32:\"b2a52a64aeabdfa079e0aca938cff05a\";a:4:{i:0;s:4:\"root\";i:1;a:7:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:7:\"disHelp\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;}i:2;s:99:\"&edit[pages][1]=edit&defVals=&overrideVals=&columnsOnly=&disHelp=&noView=&editRegularContentFromId=\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}}s:13:\"tools_install\";a:1:{s:8:\"function\";s:0:\"\";}s:8:\"web_list\";a:0:{}s:9:\"menuState\";a:5:{s:13:\"modmenu_tools\";i:1;s:11:\"modmenu_web\";i:0;s:12:\"modmenu_file\";i:1;s:12:\"modmenu_help\";i:1;s:12:\"modmenu_user\";i:1;}s:16:\"extensionbuilder\";a:1:{s:9:\"firstTime\";i:0;}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:13:\"condensedMode\";i:0;s:10:\"noMenuMode\";i:0;s:11:\"startModule\";s:17:\"help_aboutmodules\";s:18:\"hideSubmoduleIcons\";i:0;s:8:\"helpText\";i:1;s:8:\"titleLen\";i:50;s:17:\"edit_wideDocument\";s:1:\"0\";s:18:\"edit_showFieldHelp\";s:4:\"icon\";s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:13:\"navFrameWidth\";s:0:\"\";s:17:\"navFrameResizable\";i:0;s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1368361606;s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:3:{s:19:\"typo3-debug-console\";O:8:\"stdClass\":1:{s:9:\"collapsed\";b:1;}s:8:\"Pagetree\";O:8:\"stdClass\":1:{s:9:\"stateHash\";O:8:\"stdClass\":4:{s:1:\"0\";i:1;s:1:\"1\";i:1;s:4:\"root\";i:1;s:16:\"lastSelectedNode\";s:2:\"p4\";}}s:25:\"typo3-navigationContainer\";O:8:\"stdClass\":2:{s:9:\"collapsed\";b:0;s:5:\"width\";i:184;}}}s:15:\"moduleSessionID\";a:9:{s:10:\"web_layout\";s:32:\"5e760191e96d901e956fe8505a22925c\";s:6:\"web_ts\";s:32:\"5bda1ca190e1f34f368070b4cf1111c9\";s:16:\"xMOD_alt_doc.php\";s:32:\"69cb952c53cb88a481140447bc1069fe\";s:11:\"alt_doc.php\";s:32:\"328ddad928d4731faea7193b3214a357\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:32:\"328ddad928d4731faea7193b3214a357\";s:16:\"opendocs::recent\";s:32:\"328ddad928d4731faea7193b3214a357\";s:13:\"tools_install\";s:32:\"328ddad928d4731faea7193b3214a357\";s:8:\"web_list\";s:32:\"0ffcf18209cecaaec2437f06239f5488\";s:16:\"extensionbuilder\";s:32:\"328ddad928d4731faea7193b3214a357\";}s:18:\"disablePMKTextarea\";i:1;s:7:\"reports\";a:2:{s:9:\"selection\";a:2:{s:9:\"extension\";s:10:\"tx_reports\";s:6:\"report\";s:6:\"status\";}s:6:\"states\";a:8:{s:12:\"TYPO3-System\";N;s:6:\"System\";N;s:8:\"Security\";N;s:13:\"Configuration\";N;s:17:\"Extension-Manager\";N;s:7:\"PHPUnit\";i:0;s:7:\"extbase\";N;s:12:\"htmlArea-RTE\";N;}}s:8:\"tcaTrees\";a:1:{s:32:\"d2e1133f7858a3957716afd25af53d72\";i:0;}}','',1,'',0,0,NULL,1372582226,0,'',0,1,0,NULL,'');
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cache_imagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_imagesizes` (
  `md5hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `md5filename` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imagewidth` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `imageheight` mediumint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5filename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cache_imagesizes` WRITE;
/*!40000 ALTER TABLE `cache_imagesizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_imagesizes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cache_md5params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_md5params` (
  `md5hash` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cache_md5params` WRITE;
/*!40000 ALTER TABLE `cache_md5params` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_md5params` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cache_treelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_treelist` (
  `md5hash` char(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0',
  `treelist` text COLLATE utf8_unicode_ci,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cache_treelist` WRITE;
/*!40000 ALTER TABLE `cache_treelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_treelist` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cache_typo3temp_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_typo3temp_log` (
  `md5hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `orig_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cache_typo3temp_log` WRITE;
/*!40000 ALTER TABLE `cache_typo3temp_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_typo3temp_log` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_cache_hash` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash` DISABLE KEYS */;
INSERT INTO `cf_cache_hash` VALUES (16,'e3e8fb16cc7a3554ca881164746eb1e2',2145909600,'a:14:{s:7:\"config.\";a:5:{s:9:\"extTarget\";s:4:\"_top\";s:14:\"uniqueLinkVars\";i:1;s:8:\"language\";s:2:\"de\";s:10:\"locale_all\";s:5:\"de_DE\";s:11:\"tx_extbase.\";a:4:{s:4:\"mvc.\";a:2:{s:16:\"requestHandlers.\";a:4:{s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestHandler\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestHandler\";s:48:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\FrontendRequestHandler\";s:48:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\FrontendRequestHandler\";s:47:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\BackendRequestHandler\";s:47:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\BackendRequestHandler\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestHandler\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestHandler\";}s:48:\"throwPageNotFoundExceptionIfActionCantBeResolved\";s:1:\"0\";}s:12:\"persistence.\";a:4:{s:28:\"enableAutomaticCacheClearing\";s:1:\"1\";s:20:\"updateReferenceIndex\";s:1:\"0\";s:8:\"classes.\";a:14:{s:41:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FileMount.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:14:\"sys_filemounts\";s:8:\"columns.\";a:3:{s:6:\"title.\";a:1:{s:13:\"mapOnProperty\";s:5:\"title\";}s:5:\"path.\";a:1:{s:13:\"mapOnProperty\";s:4:\"path\";}s:5:\"base.\";a:1:{s:13:\"mapOnProperty\";s:14:\"isAbsolutePath\";}}}}s:45:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FileReference.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:18:\"sys_file_reference\";}}s:36:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\File.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:8:\"sys_file\";}}s:43:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\BackendUser.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:8:\"be_users\";s:8:\"columns.\";a:8:{s:9:\"username.\";a:1:{s:13:\"mapOnProperty\";s:8:\"userName\";}s:6:\"admin.\";a:1:{s:13:\"mapOnProperty\";s:15:\"isAdministrator\";}s:8:\"disable.\";a:1:{s:13:\"mapOnProperty\";s:10:\"isDisabled\";}s:9:\"realName.\";a:1:{s:13:\"mapOnProperty\";s:8:\"realName\";}s:10:\"starttime.\";a:1:{s:13:\"mapOnProperty\";s:16:\"startDateAndTime\";}s:8:\"endtime.\";a:1:{s:13:\"mapOnProperty\";s:14:\"endDateAndTime\";}s:14:\"disableIPlock.\";a:1:{s:13:\"mapOnProperty\";s:16:\"ipLockIsDisabled\";}s:10:\"lastlogin.\";a:1:{s:13:\"mapOnProperty\";s:20:\"lastLoginDateAndTime\";}}}}s:48:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\BackendUserGroup.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:9:\"be_groups\";s:8:\"columns.\";a:14:{s:9:\"subgroup.\";a:1:{s:13:\"mapOnProperty\";s:9:\"subGroups\";}s:10:\"groupMods.\";a:1:{s:13:\"mapOnProperty\";s:7:\"modules\";}s:14:\"tables_select.\";a:1:{s:13:\"mapOnProperty\";s:15:\"tablesListening\";}s:14:\"tables_modify.\";a:1:{s:13:\"mapOnProperty\";s:12:\"tablesModify\";}s:17:\"pagetypes_select.\";a:1:{s:13:\"mapOnProperty\";s:9:\"pageTypes\";}s:19:\"non_exclude_fields.\";a:1:{s:13:\"mapOnProperty\";s:20:\"allowedExcludeFields\";}s:19:\"explicit_allowdeny.\";a:1:{s:13:\"mapOnProperty\";s:22:\"explicitlyAllowAndDeny\";}s:18:\"allowed_languages.\";a:1:{s:13:\"mapOnProperty\";s:16:\"allowedLanguages\";}s:16:\"workspace_perms.\";a:1:{s:13:\"mapOnProperty\";s:19:\"workspacePermission\";}s:15:\"db_mountpoints.\";a:1:{s:13:\"mapOnProperty\";s:14:\"databaseMounts\";}s:17:\"file_permissions.\";a:1:{s:13:\"mapOnProperty\";s:24:\"fileOperationPermissions\";}s:13:\"lockToDomain.\";a:1:{s:13:\"mapOnProperty\";s:12:\"lockToDomain\";}s:14:\"hide_in_lists.\";a:1:{s:13:\"mapOnProperty\";s:10:\"hideInList\";}s:9:\"TSconfig.\";a:1:{s:13:\"mapOnProperty\";s:8:\"tsConfig\";}}}}s:44:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FrontendUser.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:8:\"fe_users\";s:8:\"columns.\";a:1:{s:13:\"lockToDomain.\";a:1:{s:13:\"mapOnProperty\";s:12:\"lockToDomain\";}}}}s:49:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FrontendUserGroup.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:9:\"fe_groups\";s:8:\"columns.\";a:1:{s:13:\"lockToDomain.\";a:1:{s:13:\"mapOnProperty\";s:12:\"lockToDomain\";}}}}s:40:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\Category.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:12:\"sys_category\";}}s:39:\"TYPO3\\CMS\\SysNote\\Domain\\Model\\SysNote.\";a:1:{s:8:\"mapping.\";a:3:{s:9:\"tableName\";s:8:\"sys_note\";s:10:\"recordType\";s:0:\"\";s:8:\"columns.\";a:3:{s:7:\"crdate.\";a:1:{s:13:\"mapOnProperty\";s:12:\"creationDate\";}s:7:\"tstamp.\";a:1:{s:13:\"mapOnProperty\";s:16:\"modificationDate\";}s:7:\"cruser.\";a:1:{s:13:\"mapOnProperty\";s:6:\"author\";}}}}s:42:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUser.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:8:\"be_users\";s:8:\"columns.\";a:4:{s:18:\"allowed_languages.\";a:1:{s:13:\"mapOnProperty\";s:16:\"allowedLanguages\";}s:17:\"file_mountpoints.\";a:1:{s:13:\"mapOnProperty\";s:15:\"fileMountPoints\";}s:15:\"db_mountpoints.\";a:1:{s:13:\"mapOnProperty\";s:13:\"dbMountPoints\";}s:10:\"usergroup.\";a:1:{s:13:\"mapOnProperty\";s:17:\"backendUserGroups\";}}}}s:47:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUserGroup.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:9:\"be_groups\";s:8:\"columns.\";a:1:{s:9:\"subgroup.\";a:1:{s:13:\"mapOnProperty\";s:9:\"subGroups\";}}}}s:41:\"Sjr\\SjrOffers\\Domain\\Model\\Administrator.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:8:\"fe_users\";s:10:\"recordType\";s:40:\"Sjr\\SjrOffers\\Domain\\Model\\Administrator\";}}s:33:\"Extbase\\Domain\\ModelFrontendUser.\";a:1:{s:11:\"subclasses.\";a:1:{s:50:\"ExtbaseTeam\\BlogExample\\Domain\\Model\\Administrator\";s:50:\"ExtbaseTeam\\BlogExample\\Domain\\Model\\Administrator\";}}s:51:\"ExtbaseTeam\\BlogExample\\Domain\\Model\\Administrator.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:8:\"fe_users\";s:10:\"recordType\";s:50:\"ExtbaseTeam\\BlogExample\\Domain\\Model\\Administrator\";}}}s:10:\"storagePid\";s:45:\"{$plugin.tx_sjroffers.persistence.storagePid}\";}s:9:\"features.\";a:3:{s:23:\"rewrittenPropertyMapper\";s:1:\"1\";s:20:\"skipDefaultArguments\";s:1:\"0\";s:25:\"ignoreAllEnableFieldsInBe\";s:1:\"0\";}s:7:\"legacy.\";a:1:{s:32:\"enableLegacyFlashMessageHandling\";s:1:\"1\";}}}s:7:\"plugin.\";a:4:{s:14:\"tx_felogin_pi1\";s:8:\"USER_INT\";s:15:\"tx_felogin_pi1.\";a:49:{s:11:\"includeLibs\";s:40:\"EXT:felogin/pi1/class.tx_felogin_pi1.php\";s:8:\"userFunc\";s:20:\"tx_felogin_pi1->main\";s:10:\"storagePid\";s:0:\"\";s:9:\"recursive\";s:0:\"\";s:12:\"templateFile\";s:25:\"EXT:felogin/template.html\";s:14:\"feloginBaseURL\";s:0:\"\";s:22:\"wrapContentInBaseClass\";s:1:\"1\";s:11:\"linkConfig.\";a:2:{s:6:\"target\";s:0:\"\";s:10:\"ATagParams\";s:14:\"rel=\"nofollow\"\";}s:15:\"preserveGETvars\";s:3:\"all\";s:22:\"showForgotPasswordLink\";s:0:\"\";s:14:\"showPermaLogin\";s:0:\"\";s:23:\"forgotLinkHashValidTime\";s:2:\"12\";s:20:\"newPasswordMinLength\";s:1:\"6\";s:22:\"welcomeHeader_stdWrap.\";a:1:{s:4:\"wrap\";s:10:\"<h3>|</h3>\";}s:23:\"welcomeMessage_stdWrap.\";a:1:{s:4:\"wrap\";s:12:\"<div>|</div>\";}s:22:\"successHeader_stdWrap.\";a:1:{s:4:\"wrap\";s:10:\"<h3>|</h3>\";}s:23:\"successMessage_stdWrap.\";a:1:{s:4:\"wrap\";s:12:\"<div>|</div>\";}s:21:\"logoutHeader_stdWrap.\";a:1:{s:4:\"wrap\";s:10:\"<h3>|</h3>\";}s:22:\"logoutMessage_stdWrap.\";a:1:{s:4:\"wrap\";s:12:\"<div>|</div>\";}s:20:\"errorHeader_stdWrap.\";a:1:{s:4:\"wrap\";s:10:\"<h3>|</h3>\";}s:21:\"errorMessage_stdWrap.\";a:1:{s:4:\"wrap\";s:12:\"<div>|</div>\";}s:21:\"forgotHeader_stdWrap.\";a:1:{s:4:\"wrap\";s:10:\"<h3>|</h3>\";}s:22:\"forgotMessage_stdWrap.\";a:1:{s:4:\"wrap\";s:12:\"<div>|</div>\";}s:27:\"forgotErrorMessage_stdWrap.\";a:1:{s:4:\"wrap\";s:12:\"<div>|</div>\";}s:43:\"forgotResetMessageEmailSentMessage_stdWrap.\";a:1:{s:4:\"wrap\";s:12:\"<div>|</div>\";}s:38:\"changePasswordNotValidMessage_stdWrap.\";a:1:{s:4:\"wrap\";s:12:\"<div>|</div>\";}s:38:\"changePasswordTooShortMessage_stdWrap.\";a:1:{s:4:\"wrap\";s:12:\"<div>|</div>\";}s:38:\"changePasswordNotEqualMessage_stdWrap.\";a:1:{s:4:\"wrap\";s:12:\"<div>|</div>\";}s:29:\"changePasswordHeader_stdWrap.\";a:1:{s:4:\"wrap\";s:10:\"<h3>|</h3>\";}s:30:\"changePasswordMessage_stdWrap.\";a:1:{s:4:\"wrap\";s:12:\"<div>|</div>\";}s:34:\"changePasswordDoneMessage_stdWrap.\";a:1:{s:4:\"wrap\";s:12:\"<div>|</div>\";}s:22:\"cookieWarning_stdWrap.\";a:1:{s:4:\"wrap\";s:45:\"<p style=\"color:red; font-weight:bold;\">|</p>\";}s:11:\"userfields.\";a:1:{s:9:\"username.\";a:2:{s:16:\"htmlSpecialChars\";s:1:\"1\";s:4:\"wrap\";s:18:\"<strong>|</strong>\";}}s:12:\"redirectMode\";s:0:\"\";s:19:\"redirectFirstMethod\";s:0:\"\";s:17:\"redirectPageLogin\";s:0:\"\";s:22:\"redirectPageLoginError\";s:0:\"\";s:18:\"redirectPageLogout\";s:0:\"\";s:15:\"redirectDisable\";s:0:\"\";s:10:\"email_from\";s:0:\"\";s:14:\"email_fromName\";s:0:\"\";s:7:\"replyTo\";s:0:\"\";s:7:\"domains\";s:0:\"\";s:24:\"showLogoutFormAfterLogin\";s:0:\"\";s:10:\"dateFormat\";s:9:\"Y-m-d H:i\";s:43:\"exposeNonexistentUserInForgotPasswordDialog\";s:1:\"0\";s:18:\"_CSS_DEFAULT_STYLE\";s:45:\"	.tx-felogin-pi1 label {\n		display: block;\n	}\";s:12:\"_LOCAL_LANG.\";a:1:{s:8:\"default.\";a:0:{}}s:17:\"_DEFAULT_PI_VARS.\";a:0:{}}s:20:\"tx_cssstyledcontent.\";a:1:{s:18:\"_CSS_DEFAULT_STYLE\";s:4790:\"	/* Headers */\n	.csc-header-alignment-center { text-align: center; }\n	.csc-header-alignment-right { text-align: right; }\n	.csc-header-alignment-left { text-align: left; }\n\n	div.csc-textpic-responsive, div.csc-textpic-responsive * { -moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;  }\n\n	/* Clear floats after csc-textpic and after csc-textpic-imagerow */\n	div.csc-textpic, div.csc-textpic div.csc-textpic-imagerow, ul.csc-uploads li { overflow: hidden; }\n\n	/* Set padding for tables */\n	div.csc-textpic .csc-textpic-imagewrap table { border-collapse: collapse; border-spacing: 0; }\n	div.csc-textpic .csc-textpic-imagewrap table tr td { padding: 0; vertical-align: top; }\n\n	/* Settings for figure and figcaption (HTML5) */\n	div.csc-textpic .csc-textpic-imagewrap figure, div.csc-textpic figure.csc-textpic-imagewrap { margin: 0; display: table; }\n\n	/* Captions */\n	figcaption.csc-textpic-caption { display: table-caption; }\n	.csc-textpic-caption { text-align: left; caption-side: bottom; }\n	div.csc-textpic-caption-c .csc-textpic-caption, .csc-textpic-imagewrap .csc-textpic-caption-c { text-align: center; }\n	div.csc-textpic-caption-r .csc-textpic-caption, .csc-textpic-imagewrap .csc-textpic-caption-r { text-align: right; }\n	div.csc-textpic-caption-l .csc-textpic-caption, .csc-textpic-imagewrap .csc-textpic-caption-l { text-align: left; }\n\n	/* Float the columns */\n	div.csc-textpic div.csc-textpic-imagecolumn { float: left; }\n\n	/* Border just around the image */\n	div.csc-textpic-border div.csc-textpic-imagewrap img {\n		border: 2px solid black;\n		padding: 0px 0px;\n	}\n\n	div.csc-textpic .csc-textpic-imagewrap img { border: none; display: block; }\n\n	/* Space below each image (also in-between rows) */\n	div.csc-textpic .csc-textpic-imagewrap .csc-textpic-image { margin-bottom: 10px; }\n	div.csc-textpic .csc-textpic-imagewrap .csc-textpic-imagerow-last .csc-textpic-image { margin-bottom: 0; }\n\n	/* colSpace around image columns, except for last column */\n	div.csc-textpic-imagecolumn, td.csc-textpic-imagecolumn .csc-textpic-image { margin-right: 10px; }\n	div.csc-textpic-imagecolumn.csc-textpic-lastcol, td.csc-textpic-imagecolumn.csc-textpic-lastcol .csc-textpic-image { margin-right: 0; }\n\n	/* Add margin from image-block to text (in case of \"Text & Images\") */\n	div.csc-textpic-intext-left .csc-textpic-imagewrap,\n	div.csc-textpic-intext-left-nowrap .csc-textpic-imagewrap {\n		margin-right: 10px;\n	}\n	div.csc-textpic-intext-right .csc-textpic-imagewrap,\n	div.csc-textpic-intext-right-nowrap .csc-textpic-imagewrap {\n		margin-left: 10px;\n	}\n\n	/* Positioning of images: */\n\n	/* Center (above or below) */\n	div.csc-textpic-center .csc-textpic-imagewrap, div.csc-textpic-center figure.csc-textpic-imagewrap { overflow: hidden; }\n	div.csc-textpic-center .csc-textpic-center-outer { position: relative; float: right; right: 50%; }\n	div.csc-textpic-center .csc-textpic-center-inner { position: relative; float: right; right: -50%; }\n\n	/* Right (above or below) */\n	div.csc-textpic-right .csc-textpic-imagewrap { float: right; }\n	div.csc-textpic-right div.csc-textpic-text { clear: right; }\n\n	/* Left (above or below) */\n	div.csc-textpic-left .csc-textpic-imagewrap { float: left; }\n	div.csc-textpic-left div.csc-textpic-text { clear: left; }\n\n	/* Left (in text) */\n	div.csc-textpic-intext-left .csc-textpic-imagewrap { float: left; }\n\n	/* Right (in text) */\n	div.csc-textpic-intext-right .csc-textpic-imagewrap { float: right; }\n\n	/* Right (in text, no wrap around) */\n	div.csc-textpic-intext-right-nowrap .csc-textpic-imagewrap { float: right; }\n\n	/* Left (in text, no wrap around) */\n	div.csc-textpic-intext-left-nowrap .csc-textpic-imagewrap { float: left; }\n\n	div.csc-textpic div.csc-textpic-imagerow-last, div.csc-textpic div.csc-textpic-imagerow-none div.csc-textpic-last { margin-bottom: 0; }\n\n	/* Browser fixes: */\n\n	/* Fix for unordered and ordered list with image \"In text, left\" */\n	.csc-textpic-intext-left ol, .csc-textpic-intext-left ul { padding-left: 40px; overflow: auto; }\n\n	/* File Links */\n	ul.csc-uploads { padding: 0; }\n	ul.csc-uploads li { list-style: none outside none; margin: 1em 0; }\n	ul.csc-uploads img { float: left; padding-right: 1em; vertical-align: top; }\n	ul.csc-uploads span { display: block; }\n	ul.csc-uploads span.csc-uploads-fileName { text-decoration: underline; }\n\n	/* Table background colors: */\n\n	table.contenttable-color-1 { background-color: #EDEBF1; }\n	table.contenttable-color-2 { background-color: #F5FFAA; }\n	table.contenttable-color-240 { background-color: black; }\n	table.contenttable-color-241 { background-color: white; }\n	table.contenttable-color-242 { background-color: #333333; }\n	table.contenttable-color-243 { background-color: gray; }\n	table.contenttable-color-244 { background-color: silver; }\";}s:15:\"tx_blogexample.\";a:4:{s:9:\"settings.\";a:3:{s:12:\"postsPerPage\";s:1:\"3\";s:18:\"editorUsergroupUid\";s:1:\"1\";s:17:\"plaintextPageType\";s:3:\"778\";}s:12:\"persistence.\";a:1:{s:10:\"storagePid\";s:0:\"\";}s:5:\"view.\";a:4:{s:16:\"templateRootPath\";s:45:\"EXT:blog_example/Resources/Private/Templates/\";s:15:\"partialRootPath\";s:44:\"EXT:blog_example/Resources/Private/Partials/\";s:14:\"layoutRootPath\";s:43:\"EXT:blog_example/Resources/Private/Layouts/\";s:10:\"defaultPid\";s:4:\"auto\";}s:12:\"_LOCAL_LANG.\";a:1:{s:8:\"default.\";a:1:{s:13:\"someUnusedKey\";s:3:\"foo\";}}}}s:4:\"lib.\";a:5:{s:12:\"parseTarget.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:10:\"parseFunc.\";a:8:{s:9:\"makelinks\";s:1:\"1\";s:10:\"makelinks.\";a:2:{s:5:\"http.\";a:3:{s:4:\"keep\";s:4:\"path\";s:10:\"extTarget.\";a:2:{s:8:\"override\";s:6:\"_blank\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:9:\"extTarget\";s:0:\"\";}s:7:\"mailto.\";a:1:{s:4:\"keep\";s:4:\"path\";}}s:5:\"tags.\";a:2:{s:4:\"link\";s:4:\"TEXT\";s:5:\"link.\";a:3:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:5:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:22:\"parameters : allParams\";}s:10:\"extTarget.\";a:2:{s:8:\"override\";s:6:\"_blank\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:9:\"extTarget\";s:0:\"\";s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";}s:10:\"parseFunc.\";a:1:{s:9:\"constants\";s:1:\"1\";}}}s:9:\"allowTags\";s:389:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:8:\"denyTags\";s:1:\"*\";s:5:\"sword\";s:32:\"<span class=\"csc-sword\">|</span>\";s:9:\"constants\";s:1:\"1\";s:18:\"nonTypoTagStdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"2\";}}}s:14:\"parseFunc_RTE.\";a:10:{s:9:\"makelinks\";s:1:\"1\";s:10:\"makelinks.\";a:2:{s:5:\"http.\";a:3:{s:4:\"keep\";s:4:\"path\";s:10:\"extTarget.\";a:2:{s:8:\"override\";s:6:\"_blank\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:9:\"extTarget\";s:0:\"\";}s:7:\"mailto.\";a:1:{s:4:\"keep\";s:4:\"path\";}}s:5:\"tags.\";a:2:{s:4:\"link\";s:4:\"TEXT\";s:5:\"link.\";a:3:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:5:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:22:\"parameters : allParams\";}s:10:\"extTarget.\";a:2:{s:8:\"override\";s:6:\"_blank\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:9:\"extTarget\";s:0:\"\";s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";}s:10:\"parseFunc.\";a:1:{s:9:\"constants\";s:1:\"1\";}}}s:9:\"allowTags\";s:389:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:8:\"denyTags\";s:1:\"*\";s:5:\"sword\";s:32:\"<span class=\"csc-sword\">|</span>\";s:9:\"constants\";s:1:\"1\";s:18:\"nonTypoTagStdWrap.\";a:3:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"2\";}s:12:\"encapsLines.\";a:5:{s:13:\"encapsTagList\";s:29:\"p,pre,h1,h2,h3,h4,h5,h6,hr,dt\";s:9:\"remapTag.\";a:1:{s:3:\"DIV\";s:1:\"P\";}s:13:\"nonWrappedTag\";s:1:\"P\";s:17:\"innerStdWrap_all.\";a:1:{s:7:\"ifBlank\";s:6:\"&nbsp;\";}s:14:\"addAttributes.\";a:1:{s:2:\"P.\";a:2:{s:5:\"class\";s:8:\"bodytext\";s:6:\"class.\";a:1:{s:7:\"setOnly\";s:5:\"blank\";}}}}}s:14:\"externalBlocks\";s:84:\"article, aside, blockquote, div, dd, dl, footer, header, nav, ol, section, table, ul\";s:15:\"externalBlocks.\";a:13:{s:11:\"blockquote.\";a:3:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";s:14:\"callRecursive.\";a:1:{s:11:\"tagStdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:1:{s:5:\"tags.\";a:1:{s:11:\"blockquote.\";a:1:{s:15:\"overrideAttribs\";s:37:\"style=\"margin-bottom:0;margin-top:0;\"\";}}}}}}s:3:\"ol.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:1:{s:9:\"parseFunc\";s:15:\"< lib.parseFunc\";}}s:3:\"ul.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:1:{s:9:\"parseFunc\";s:15:\"< lib.parseFunc\";}}s:6:\"table.\";a:4:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:5:\"tags.\";a:1:{s:6:\"table.\";a:1:{s:10:\"fixAttrib.\";a:1:{s:6:\"class.\";a:3:{s:7:\"default\";s:12:\"contenttable\";s:6:\"always\";s:1:\"1\";s:4:\"list\";s:12:\"contenttable\";}}}}s:18:\"keepNonMatchedTags\";s:1:\"1\";}}s:14:\"HTMLtableCells\";s:1:\"1\";s:15:\"HTMLtableCells.\";a:2:{s:8:\"default.\";a:1:{s:8:\"stdWrap.\";a:2:{s:9:\"parseFunc\";s:19:\"< lib.parseFunc_RTE\";s:10:\"parseFunc.\";a:1:{s:18:\"nonTypoTagStdWrap.\";a:1:{s:12:\"encapsLines.\";a:1:{s:13:\"nonWrappedTag\";s:0:\"\";}}}}}s:25:\"addChr10BetweenParagraphs\";s:1:\"1\";}}s:4:\"div.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:8:\"article.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:6:\"aside.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:7:\"footer.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:7:\"header.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:4:\"nav.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:8:\"section.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:3:\"dl.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:3:\"dd.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}}}s:9:\"stdheader\";s:3:\"COA\";s:10:\"stdheader.\";a:12:{i:3;s:13:\"LOAD_REGISTER\";s:2:\"3.\";a:1:{s:12:\"headerClass.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:5:{i:10;s:4:\"TEXT\";s:3:\"10.\";a:3:{s:5:\"field\";s:15:\"header_position\";s:8:\"required\";s:1:\"1\";s:10:\"noTrimWrap\";s:25:\"|csc-header-alignment-| |\";}i:20;s:4:\"TEXT\";s:3:\"20.\";a:2:{s:5:\"value\";s:15:\"csc-firstHeader\";s:3:\"if.\";a:2:{s:5:\"value\";s:1:\"1\";s:7:\"equals.\";a:1:{s:4:\"data\";s:23:\"cObj:parentRecordNumber\";}}}s:8:\"stdWrap.\";a:3:{s:4:\"trim\";s:1:\"1\";s:10:\"noTrimWrap\";s:12:\"| class=\"|\"|\";s:8:\"required\";s:1:\"1\";}}}}i:5;s:4:\"TEXT\";s:2:\"5.\";a:5:{s:5:\"field\";s:4:\"date\";s:3:\"if.\";a:3:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:4:\"date\";}s:7:\"isFalse\";s:1:\"1\";s:8:\"isFalse.\";a:1:{s:3:\"if.\";a:2:{s:5:\"value\";s:5:\"html5\";s:7:\"equals.\";a:1:{s:4:\"data\";s:26:\"TSFE:config|config|doctype\";}}}}s:8:\"strftime\";s:2:\"%x\";s:4:\"wrap\";s:32:\"<p class=\"csc-header-date\">|</p>\";s:13:\"prefixComment\";s:16:\"2 | Header date:\";}i:10;s:4:\"CASE\";s:3:\"10.\";a:12:{s:11:\"setCurrent.\";a:3:{s:5:\"field\";s:6:\"header\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:9:\"typolink.\";a:1:{s:10:\"parameter.\";a:1:{s:5:\"field\";s:11:\"header_link\";}}}s:4:\"key.\";a:3:{s:5:\"field\";s:13:\"header_layout\";s:7:\"ifEmpty\";s:1:\"1\";s:8:\"ifEmpty.\";a:1:{s:9:\"override.\";a:1:{s:4:\"data\";s:27:\"register: defaultHeaderType\";}}}i:1;s:4:\"TEXT\";s:2:\"1.\";a:2:{s:7:\"current\";s:1:\"1\";s:8:\"dataWrap\";s:32:\"<h1{register:headerClass}>|</h1>\";}i:2;s:4:\"TEXT\";s:2:\"2.\";a:2:{s:7:\"current\";s:1:\"1\";s:8:\"dataWrap\";s:32:\"<h2{register:headerClass}>|</h2>\";}i:3;s:4:\"TEXT\";s:2:\"3.\";a:2:{s:7:\"current\";s:1:\"1\";s:8:\"dataWrap\";s:32:\"<h3{register:headerClass}>|</h3>\";}i:4;s:4:\"TEXT\";s:2:\"4.\";a:2:{s:7:\"current\";s:1:\"1\";s:8:\"dataWrap\";s:32:\"<h4{register:headerClass}>|</h4>\";}i:5;s:4:\"TEXT\";s:2:\"5.\";a:2:{s:7:\"current\";s:1:\"1\";s:8:\"dataWrap\";s:32:\"<h5{register:headerClass}>|</h5>\";}}i:20;s:4:\"CASE\";s:3:\"20.\";a:14:{s:4:\"key.\";a:1:{s:5:\"field\";s:13:\"header_layout\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:3:{s:4:\"wrap\";s:10:\"<h2>|</h2>\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:5:\"field\";s:9:\"subheader\";}i:1;s:4:\"TEXT\";s:2:\"1.\";a:3:{s:4:\"wrap\";s:10:\"<h2>|</h2>\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:5:\"field\";s:9:\"subheader\";}i:2;s:4:\"TEXT\";s:2:\"2.\";a:3:{s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:5:\"field\";s:9:\"subheader\";}i:3;s:4:\"TEXT\";s:2:\"3.\";a:3:{s:4:\"wrap\";s:10:\"<h4>|</h4>\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:5:\"field\";s:9:\"subheader\";}i:4;s:4:\"TEXT\";s:2:\"4.\";a:3:{s:4:\"wrap\";s:10:\"<h5>|</h5>\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:5:\"field\";s:9:\"subheader\";}i:5;s:4:\"TEXT\";s:2:\"5.\";a:3:{s:4:\"wrap\";s:10:\"<h6>|</h6>\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:5:\"field\";s:9:\"subheader\";}s:3:\"if.\";a:5:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:9:\"subheader\";}s:5:\"value\";s:5:\"html5\";s:7:\"equals.\";a:1:{s:4:\"data\";s:26:\"TSFE:config|config|doctype\";}s:7:\"isFalse\";s:1:\"0\";s:8:\"isFalse.\";a:2:{s:8:\"override\";s:1:\"1\";s:9:\"override.\";a:1:{s:3:\"if.\";a:2:{s:7:\"equals.\";a:1:{s:5:\"field\";s:5:\"CType\";}s:5:\"value\";s:8:\"mailform\";}}}}}i:40;s:3:\"COA\";s:3:\"40.\";a:4:{s:8:\"stdWrap.\";a:3:{s:4:\"wrap\";s:32:\"<p class=\"csc-header-date\">|</p>\";s:10:\"innerWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:6:{i:10;s:4:\"TEXT\";s:3:\"10.\";a:1:{s:5:\"value\";s:5:\"<time\";}i:20;s:4:\"TEXT\";s:3:\"20.\";a:3:{s:10:\"noTrimWrap\";s:15:\"| datetime=\"|\"|\";s:5:\"field\";s:4:\"date\";s:8:\"strftime\";s:8:\"%Y-%m-%d\";}i:30;s:4:\"TEXT\";s:3:\"30.\";a:1:{s:5:\"value\";s:9:\">|</time>\";}}}s:8:\"required\";s:1:\"1\";}i:10;s:4:\"TEXT\";s:3:\"10.\";a:2:{s:5:\"field\";s:4:\"date\";s:8:\"strftime\";s:9:\"%B %e, %Y\";}s:3:\"if.\";a:3:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:4:\"date\";}s:5:\"value\";s:5:\"html5\";s:7:\"equals.\";a:1:{s:4:\"data\";s:26:\"TSFE:config|config|doctype\";}}}i:98;s:16:\"RESTORE_REGISTER\";s:8:\"stdWrap.\";a:7:{s:13:\"fieldRequired\";s:6:\"header\";s:3:\"if.\";a:3:{s:7:\"equals.\";a:1:{s:5:\"field\";s:13:\"header_layout\";}s:5:\"value\";s:3:\"100\";s:6:\"negate\";s:1:\"1\";}s:9:\"editIcons\";s:74:\"tt_content : header, [header_layout | header_position], [header_link|date]\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:57:\"LLL:EXT:css_styled_content/pi1/locallang.xml:eIcon.header\";}}s:8:\"dataWrap\";s:69:\"<div class=\"csc-header csc-header-n{cObj:parentRecordNumber}\">|</div>\";s:9:\"dataWrap.\";a:2:{s:8:\"override\";s:75:\"<header class=\"csc-header csc-header-n{cObj:parentRecordNumber}\">|</header>\";s:9:\"override.\";a:1:{s:3:\"if.\";a:3:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:4:\"date\";}s:5:\"value\";s:5:\"html5\";s:7:\"equals.\";a:1:{s:4:\"data\";s:26:\"TSFE:config|config|doctype\";}}}}s:13:\"prefixComment\";s:11:\"2 | Header:\";}}}s:10:\"tt_content\";s:4:\"CASE\";s:11:\"tt_content.\";a:42:{s:4:\"key.\";a:1:{s:5:\"field\";s:5:\"CType\";}s:8:\"stdWrap.\";a:8:{s:10:\"innerWrap.\";a:2:{s:7:\"cObject\";s:4:\"CASE\";s:8:\"cObject.\";a:21:{s:4:\"key.\";a:1:{s:5:\"field\";s:13:\"section_frame\";}s:7:\"default\";s:3:\"COA\";s:8:\"default.\";a:6:{i:10;s:4:\"TEXT\";s:3:\"10.\";a:3:{s:7:\"cObject\";s:4:\"CASE\";s:8:\"cObject.\";a:7:{s:4:\"key.\";a:1:{s:5:\"field\";s:5:\"CType\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:1:{s:5:\"value\";s:22:\"<div id=\"c{field:uid}\"\";}s:3:\"div\";s:4:\"TEXT\";s:4:\"div.\";a:1:{s:5:\"value\";s:4:\"<div\";}s:4:\"menu\";s:4:\"TEXT\";s:5:\"menu.\";a:3:{s:5:\"value\";s:22:\"<div id=\"c{field:uid}\"\";s:8:\"override\";s:22:\"<nav id=\"c{field:uid}\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:2:{s:5:\"value\";s:5:\"html5\";s:7:\"equals.\";a:1:{s:4:\"data\";s:26:\"TSFE:config|config|doctype\";}}}}}s:10:\"insertData\";s:1:\"1\";}i:20;s:3:\"COA\";s:3:\"20.\";a:7:{i:10;s:4:\"TEXT\";s:3:\"10.\";a:3:{s:5:\"value\";s:11:\"csc-default\";s:8:\"required\";s:1:\"1\";s:10:\"noTrimWrap\";s:4:\"|| |\";}i:20;s:4:\"USER\";s:3:\"20.\";a:4:{s:8:\"userFunc\";s:77:\"TYPO3\\CMS\\CssStyledContent\\Controller\\CssStyledContentController->renderSpace\";s:5:\"space\";s:6:\"before\";s:8:\"constant\";s:1:\"0\";s:13:\"classStdWrap.\";a:1:{s:10:\"noTrimWrap\";s:21:\"|csc-space-before-| |\";}}i:30;s:4:\"USER\";s:3:\"30.\";a:4:{s:8:\"userFunc\";s:77:\"TYPO3\\CMS\\CssStyledContent\\Controller\\CssStyledContentController->renderSpace\";s:5:\"space\";s:5:\"after\";s:8:\"constant\";s:1:\"0\";s:13:\"classStdWrap.\";a:1:{s:10:\"noTrimWrap\";s:20:\"|csc-space-after-| |\";}}s:8:\"stdWrap.\";a:3:{s:4:\"trim\";s:1:\"1\";s:10:\"noTrimWrap\";s:12:\"| class=\"|\"|\";s:8:\"required\";s:1:\"1\";}}i:30;s:4:\"TEXT\";s:3:\"30.\";a:2:{s:7:\"cObject\";s:4:\"CASE\";s:8:\"cObject.\";a:5:{s:4:\"key.\";a:1:{s:5:\"field\";s:5:\"CType\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:1:{s:5:\"value\";s:8:\">|</div>\";}s:4:\"menu\";s:4:\"TEXT\";s:5:\"menu.\";a:3:{s:5:\"value\";s:8:\">|</div>\";s:8:\"override\";s:8:\">|</nav>\";s:9:\"override.\";a:1:{s:3:\"if.\";a:2:{s:5:\"value\";s:5:\"html5\";s:7:\"equals.\";a:1:{s:4:\"data\";s:26:\"TSFE:config|config|doctype\";}}}}}}}i:1;s:46:\"< tt_content.stdWrap.innerWrap.cObject.default\";s:2:\"1.\";a:1:{s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:5:\"value\";s:29:\"csc-frame csc-frame-invisible\";}}}i:5;s:46:\"< tt_content.stdWrap.innerWrap.cObject.default\";s:2:\"5.\";a:1:{s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:5:\"value\";s:31:\"csc-frame csc-frame-rulerBefore\";}}}i:6;s:46:\"< tt_content.stdWrap.innerWrap.cObject.default\";s:2:\"6.\";a:1:{s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:5:\"value\";s:30:\"csc-frame csc-frame-rulerAfter\";}}}i:10;s:46:\"< tt_content.stdWrap.innerWrap.cObject.default\";s:3:\"10.\";a:1:{s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:5:\"value\";s:26:\"csc-frame csc-frame-indent\";}}}i:11;s:46:\"< tt_content.stdWrap.innerWrap.cObject.default\";s:3:\"11.\";a:1:{s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:5:\"value\";s:30:\"csc-frame csc-frame-indent3366\";}}}i:12;s:46:\"< tt_content.stdWrap.innerWrap.cObject.default\";s:3:\"12.\";a:1:{s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:5:\"value\";s:30:\"csc-frame csc-frame-indent6633\";}}}i:20;s:46:\"< tt_content.stdWrap.innerWrap.cObject.default\";s:3:\"20.\";a:1:{s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:5:\"value\";s:26:\"csc-frame csc-frame-frame1\";}}}i:21;s:46:\"< tt_content.stdWrap.innerWrap.cObject.default\";s:3:\"21.\";a:1:{s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:5:\"value\";s:26:\"csc-frame csc-frame-frame2\";}}}i:66;s:3:\"COA\";s:3:\"66.\";a:8:{i:10;s:4:\"TEXT\";s:3:\"10.\";a:2:{s:5:\"value\";s:25:\"<a id=\"c{field:uid}\"></a>\";s:10:\"insertData\";s:1:\"1\";}i:20;s:3:\"COA\";s:3:\"20.\";a:3:{i:10;s:4:\"USER\";s:3:\"10.\";a:4:{s:8:\"userFunc\";s:77:\"TYPO3\\CMS\\CssStyledContent\\Controller\\CssStyledContentController->renderSpace\";s:5:\"space\";s:6:\"before\";s:8:\"constant\";s:1:\"0\";s:13:\"classStdWrap.\";a:1:{s:4:\"wrap\";s:18:\"csc-space-before-|\";}}s:8:\"stdWrap.\";a:2:{s:4:\"wrap\";s:21:\"<div class=\"|\"></div>\";s:8:\"required\";s:1:\"1\";}}i:30;s:4:\"TEXT\";s:3:\"30.\";a:1:{s:5:\"value\";s:1:\"|\";}i:40;s:3:\"COA\";s:3:\"40.\";a:3:{i:10;s:4:\"USER\";s:3:\"10.\";a:4:{s:8:\"userFunc\";s:77:\"TYPO3\\CMS\\CssStyledContent\\Controller\\CssStyledContentController->renderSpace\";s:5:\"space\";s:5:\"after\";s:8:\"constant\";s:1:\"0\";s:13:\"classStdWrap.\";a:1:{s:4:\"wrap\";s:17:\"csc-space-after-|\";}}s:8:\"stdWrap.\";a:2:{s:4:\"wrap\";s:21:\"<div class=\"|\"></div>\";s:8:\"required\";s:1:\"1\";}}}}}s:10:\"innerWrap2\";s:105:\"| <p class=\"csc-linkToTop\"><a href=\"#\">{LLL:EXT:css_styled_content/pi1/locallang.xml:label.toTop}</a></p>\";s:11:\"innerWrap2.\";a:2:{s:10:\"insertData\";s:1:\"1\";s:13:\"fieldRequired\";s:9:\"linkToTop\";}s:7:\"prepend\";s:4:\"TEXT\";s:8:\"prepend.\";a:2:{s:8:\"dataWrap\";s:36:\"<a id=\"c{field:_LOCALIZED_UID}\"></a>\";s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:14:\"_LOCALIZED_UID\";}}}s:9:\"editPanel\";s:1:\"1\";s:10:\"editPanel.\";a:6:{s:5:\"allow\";s:25:\"move,new,edit,hide,delete\";s:4:\"line\";s:1:\"5\";s:5:\"label\";s:2:\"%s\";s:14:\"onlyCurrentPid\";s:1:\"1\";s:13:\"previewBorder\";s:1:\"4\";s:5:\"edit.\";a:1:{s:13:\"displayRecord\";s:1:\"1\";}}s:13:\"prefixComment\";s:50:\"1 | CONTENT ELEMENT, uid:{field:uid}/{field:CType}\";}s:6:\"header\";s:3:\"COA\";s:7:\"header.\";a:3:{i:10;s:15:\"< lib.stdheader\";i:20;s:4:\"TEXT\";s:3:\"20.\";a:8:{s:5:\"field\";s:9:\"subheader\";s:8:\"required\";s:1:\"1\";s:8:\"dataWrap\";s:59:\"<p class=\"csc-subheader csc-subheader-{field:layout}\">|</p>\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:3:\"if.\";a:3:{s:5:\"value\";s:5:\"html5\";s:7:\"equals.\";a:1:{s:4:\"data\";s:26:\"TSFE:config|config|doctype\";}s:6:\"negate\";s:1:\"1\";}s:9:\"editIcons\";s:27:\"tt_content:subheader,layout\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:60:\"LLL:EXT:css_styled_content/pi1/locallang.xml:eIcon.subheader\";}}s:13:\"prefixComment\";s:14:\"2 | Subheader:\";}}s:4:\"text\";s:3:\"COA\";s:5:\"text.\";a:3:{i:10;s:15:\"< lib.stdheader\";i:20;s:4:\"TEXT\";s:3:\"20.\";a:6:{s:5:\"field\";s:8:\"bodytext\";s:8:\"required\";s:1:\"1\";s:9:\"parseFunc\";s:19:\"< lib.parseFunc_RTE\";s:9:\"editIcons\";s:32:\"tt_content:bodytext, rte_enabled\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:59:\"LLL:EXT:css_styled_content/pi1/locallang.xml:eIcon.bodytext\";}}s:13:\"prefixComment\";s:9:\"2 | Text:\";}}s:5:\"image\";s:3:\"COA\";s:6:\"image.\";a:3:{i:10;s:15:\"< lib.stdheader\";i:20;s:4:\"USER\";s:3:\"20.\";a:41:{s:8:\"userFunc\";s:80:\"TYPO3\\CMS\\CssStyledContent\\Controller\\CssStyledContentController->render_textpic\";s:19:\"preRenderRegisters.\";a:1:{s:17:\"allImageCaptions.\";a:2:{s:7:\"cObject\";s:5:\"FILES\";s:8:\"cObject.\";a:3:{s:11:\"references.\";a:3:{s:5:\"table\";s:10:\"tt_content\";s:4:\"uid.\";a:1:{s:5:\"field\";s:3:\"uid\";}s:9:\"fieldName\";s:5:\"image\";}s:9:\"renderObj\";s:4:\"TEXT\";s:10:\"renderObj.\";a:1:{s:4:\"data\";s:24:\"file:current:description\";}}}}s:8:\"imgList.\";a:2:{s:7:\"cObject\";s:5:\"FILES\";s:8:\"cObject.\";a:3:{s:11:\"references.\";a:3:{s:5:\"table\";s:10:\"tt_content\";s:4:\"uid.\";a:1:{s:5:\"field\";s:3:\"uid\";}s:9:\"fieldName\";s:5:\"image\";}s:9:\"renderObj\";s:4:\"TEXT\";s:10:\"renderObj.\";a:2:{s:4:\"data\";s:16:\"file:current:uid\";s:4:\"wrap\";s:2:\"|,\";}}}s:7:\"imgPath\";s:13:\"uploads/pics/\";s:28:\"imgListContainsReferenceUids\";s:1:\"1\";s:9:\"imgObjNum\";s:1:\"1\";s:2:\"1.\";a:14:{s:5:\"file.\";a:3:{s:7:\"import.\";a:1:{s:4:\"data\";s:16:\"file:current:uid\";}s:18:\"treatIdAsReference\";s:1:\"1\";s:6:\"width.\";a:1:{s:5:\"field\";s:10:\"imagewidth\";}}s:9:\"layoutKey\";s:7:\"default\";s:7:\"layout.\";a:4:{s:8:\"default.\";a:1:{s:7:\"element\";s:128:\"<img src=\"###SRC###\" width=\"###WIDTH###\" height=\"###HEIGHT###\" ###PARAMS######ALTPARAMS######BORDER######SELFCLOSINGTAGSLASH###>\";}s:7:\"srcset.\";a:2:{s:7:\"element\";s:105:\"<img src=\"###SRC###\" srcset=\"###SOURCECOLLECTION###\"###PARAMS######ALTPARAMS######SELFCLOSINGTAGSLASH###>\";s:6:\"source\";s:69:\"|*|###SRC### ###SRCSETCANDIDATE###,|*|###SRC### ###SRCSETCANDIDATE###\";}s:8:\"picture.\";a:2:{s:7:\"element\";s:114:\"<picture>###SOURCECOLLECTION###<img src=\"###SRC###\"###PARAMS######ALTPARAMS######SELFCLOSINGTAGSLASH###></picture>\";s:6:\"source\";s:74:\"<source src=\"###SRC###\" media=\"###MEDIAQUERY###\"###SELFCLOSINGTAGSLASH###>\";}s:5:\"data.\";a:3:{s:7:\"element\";s:95:\"<img src=\"###SRC###\"###SOURCECOLLECTION######PARAMS######ALTPARAMS######SELFCLOSINGTAGSLASH###>\";s:6:\"source\";s:30:\"data-###DATAKEY###=\"###SRC###\"\";s:7:\"source.\";a:2:{s:10:\"noTrimWrap\";s:4:\"; ;;\";s:11:\"noTrimWrap.\";a:1:{s:9:\"splitChar\";s:1:\";\";}}}}s:17:\"sourceCollection.\";a:2:{s:6:\"small.\";a:4:{s:5:\"width\";s:3:\"200\";s:15:\"srcsetCandidate\";s:4:\"600w\";s:10:\"mediaQuery\";s:25:\"(max-device-width: 600px)\";s:7:\"dataKey\";s:5:\"small\";}s:12:\"smallRetina.\";a:6:{s:3:\"if.\";a:3:{s:5:\"value\";s:7:\"default\";s:6:\"equals\";s:7:\"default\";s:6:\"negate\";s:1:\"1\";}s:5:\"width\";s:3:\"200\";s:12:\"pixelDensity\";s:1:\"2\";s:15:\"srcsetCandidate\";s:7:\"600w 2x\";s:10:\"mediaQuery\";s:54:\"(max-device-width: 600px) AND (min-resolution: 192dpi)\";s:7:\"dataKey\";s:11:\"smallRetina\";}}s:13:\"imageLinkWrap\";s:1:\"1\";s:14:\"imageLinkWrap.\";a:11:{s:7:\"bodyTag\";s:41:\"<body style=\"margin:0; background:#fff;\">\";s:4:\"wrap\";s:37:\"<a href=\"javascript:close();\"> | </a>\";s:5:\"width\";s:4:\"800m\";s:6:\"height\";s:4:\"600m\";s:7:\"effects\";s:0:\"\";s:8:\"JSwindow\";s:1:\"1\";s:9:\"JSwindow.\";a:2:{s:9:\"newWindow\";s:1:\"0\";s:3:\"if.\";a:1:{s:7:\"isFalse\";s:1:\"0\";}}s:15:\"directImageLink\";s:1:\"0\";s:7:\"enable.\";a:2:{s:5:\"field\";s:10:\"image_zoom\";s:8:\"ifEmpty.\";a:1:{s:9:\"typolink.\";a:2:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:17:\"file:current:link\";}s:10:\"returnLast\";s:3:\"url\";}}}s:9:\"typolink.\";a:5:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:17:\"file:current:link\";}s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:10:\"extTarget.\";a:2:{s:8:\"override\";s:6:\"_blank\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:9:\"extTarget\";s:0:\"\";}s:11:\"linkParams.\";a:1:{s:11:\"ATagParams.\";a:1:{s:8:\"dataWrap\";s:44:\"class=\"lightbox\" rel=\"lightbox[{field:uid}]\"\";}}}s:7:\"altText\";s:4:\"TEXT\";s:8:\"altText.\";a:2:{s:4:\"data\";s:24:\"file:current:alternative\";s:9:\"stripHtml\";s:1:\"1\";}s:9:\"titleText\";s:4:\"TEXT\";s:10:\"titleText.\";a:2:{s:4:\"data\";s:18:\"file:current:title\";s:9:\"stripHtml\";s:1:\"1\";}s:12:\"longdescURL.\";a:1:{s:10:\"parameter.\";a:2:{s:5:\"field\";s:11:\"longdescURL\";s:6:\"split.\";a:2:{s:6:\"token.\";a:1:{s:4:\"char\";s:2:\"10\";}s:10:\"returnKey.\";a:1:{s:4:\"data\";s:28:\"register : IMAGE_NUM_CURRENT\";}}}}s:18:\"emptyTitleHandling\";s:10:\"removeAttr\";s:11:\"titleInLink\";s:1:\"1\";s:17:\"titleInLinkAndImg\";s:1:\"0\";}s:8:\"textPos.\";a:1:{s:5:\"field\";s:11:\"imageorient\";}s:4:\"maxW\";s:3:\"600\";s:5:\"maxW.\";a:1:{s:9:\"override.\";a:1:{s:4:\"data\";s:22:\"register:maxImageWidth\";}}s:10:\"maxWInText\";s:0:\"\";s:11:\"maxWInText.\";a:1:{s:9:\"override.\";a:1:{s:4:\"data\";s:28:\"register:maxImageWidthInText\";}}s:7:\"equalH.\";a:1:{s:5:\"field\";s:11:\"imageheight\";}s:18:\"image_compression.\";a:1:{s:5:\"field\";s:17:\"image_compression\";}s:14:\"image_effects.\";a:1:{s:5:\"field\";s:13:\"image_effects\";}s:7:\"noRows.\";a:1:{s:5:\"field\";s:12:\"image_noRows\";}s:5:\"cols.\";a:1:{s:5:\"field\";s:9:\"imagecols\";}s:7:\"border.\";a:1:{s:5:\"field\";s:11:\"imageborder\";}s:8:\"caption.\";a:4:{i:1;s:3:\"COA\";s:2:\"1.\";a:2:{i:1;s:4:\"TEXT\";s:2:\"1.\";a:4:{s:4:\"data\";s:24:\"file:current:description\";s:8:\"required\";s:1:\"1\";s:9:\"parseFunc\";s:15:\"< lib.parseFunc\";s:2:\"br\";s:1:\"1\";}}s:9:\"editIcons\";s:34:\"tt_content : imagecaption_position\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:67:\"LLL:EXT:css_styled_content/pi1/locallang.xml:eIcon.caption_position\";}}}s:13:\"captionAlign.\";a:1:{s:5:\"field\";s:21:\"imagecaption_position\";}s:14:\"imageTextSplit\";s:1:\"1\";s:11:\"borderThick\";s:1:\"2\";s:11:\"borderClass\";s:18:\"csc-textpic-border\";s:8:\"colSpace\";s:2:\"10\";s:10:\"textMargin\";s:2:\"10\";s:11:\"borderSpace\";s:1:\"0\";s:12:\"separateRows\";s:1:\"1\";s:10:\"addClasses\";s:0:\"\";s:13:\"addClassesCol\";s:0:\"\";s:14:\"addClassesCol.\";a:3:{s:7:\"ifEmpty\";s:40:\"csc-textpic-firstcol csc-textpic-lastcol\";s:8:\"override\";s:48:\"csc-textpic-firstcol |*| |*| csc-textpic-lastcol\";s:9:\"override.\";a:1:{s:3:\"if.\";a:2:{s:14:\"isGreaterThan.\";a:1:{s:5:\"field\";s:9:\"imagecols\";}s:5:\"value\";s:1:\"1\";}}}s:15:\"addClassesImage\";s:42:\"csc-textpic-first |*| |*| csc-textpic-last\";s:13:\"imageStdWrap.\";a:1:{s:8:\"dataWrap\";s:83:\"<div class=\"csc-textpic-imagewrap\" style=\"width:{register:totalwidth}px;\"> | </div>\";}s:20:\"imageStdWrapNoWidth.\";a:1:{s:4:\"wrap\";s:44:\"<div class=\"csc-textpic-imagewrap\"> | </div>\";}s:19:\"imageColumnStdWrap.\";a:1:{s:8:\"dataWrap\";s:86:\"<div class=\"csc-textpic-imagecolumn\" style=\"width:{register:columnwidth}px;\"> | </div>\";}s:6:\"layout\";s:4:\"CASE\";s:7:\"layout.\";a:21:{s:4:\"key.\";a:1:{s:5:\"field\";s:11:\"imageorient\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:3:{s:5:\"value\";s:103:\"<div class=\"csc-textpic csc-textpic-center csc-textpic-above###CLASSES###\">###IMAGES######TEXT###</div>\";s:8:\"override\";s:126:\"<div class=\"csc-textpic csc-textpic-responsive csc-textpic-center csc-textpic-above###CLASSES###\">###IMAGES######TEXT###</div>\";s:9:\"override.\";a:1:{s:3:\"if.\";a:3:{s:5:\"value\";s:7:\"default\";s:6:\"equals\";s:7:\"default\";s:6:\"negate\";s:1:\"1\";}}}i:1;s:4:\"TEXT\";s:2:\"1.\";a:3:{s:5:\"value\";s:102:\"<div class=\"csc-textpic csc-textpic-right csc-textpic-above###CLASSES###\">###IMAGES######TEXT###</div>\";s:8:\"override\";s:125:\"<div class=\"csc-textpic csc-textpic-responsive csc-textpic-right csc-textpic-above###CLASSES###\">###IMAGES######TEXT###</div>\";s:9:\"override.\";a:1:{s:3:\"if.\";a:3:{s:5:\"value\";s:7:\"default\";s:6:\"equals\";s:7:\"default\";s:6:\"negate\";s:1:\"1\";}}}i:2;s:4:\"TEXT\";s:2:\"2.\";a:3:{s:5:\"value\";s:101:\"<div class=\"csc-textpic csc-textpic-left csc-textpic-above###CLASSES###\">###IMAGES######TEXT###</div>\";s:8:\"override\";s:124:\"<div class=\"csc-textpic csc-textpic-responsive csc-textpic-left csc-textpic-above###CLASSES###\">###IMAGES######TEXT###</div>\";s:9:\"override.\";a:1:{s:3:\"if.\";a:3:{s:5:\"value\";s:7:\"default\";s:6:\"equals\";s:7:\"default\";s:6:\"negate\";s:1:\"1\";}}}i:8;s:4:\"TEXT\";s:2:\"8.\";a:3:{s:5:\"value\";s:103:\"<div class=\"csc-textpic csc-textpic-center csc-textpic-below###CLASSES###\">###TEXT######IMAGES###</div>\";s:8:\"override\";s:126:\"<div class=\"csc-textpic csc-textpic-responsive csc-textpic-center csc-textpic-below###CLASSES###\">###TEXT######IMAGES###</div>\";s:9:\"override.\";a:1:{s:3:\"if.\";a:3:{s:5:\"value\";s:7:\"default\";s:6:\"equals\";s:7:\"default\";s:6:\"negate\";s:1:\"1\";}}}i:9;s:4:\"TEXT\";s:2:\"9.\";a:3:{s:5:\"value\";s:102:\"<div class=\"csc-textpic csc-textpic-right csc-textpic-below###CLASSES###\">###TEXT######IMAGES###</div>\";s:8:\"override\";s:125:\"<div class=\"csc-textpic csc-textpic-responsive csc-textpic-right csc-textpic-below###CLASSES###\">###TEXT######IMAGES###</div>\";s:9:\"override.\";a:1:{s:3:\"if.\";a:3:{s:5:\"value\";s:7:\"default\";s:6:\"equals\";s:7:\"default\";s:6:\"negate\";s:1:\"1\";}}}i:10;s:4:\"TEXT\";s:3:\"10.\";a:3:{s:5:\"value\";s:101:\"<div class=\"csc-textpic csc-textpic-left csc-textpic-below###CLASSES###\">###TEXT######IMAGES###</div>\";s:8:\"override\";s:124:\"<div class=\"csc-textpic csc-textpic-responsive csc-textpic-left csc-textpic-below###CLASSES###\">###TEXT######IMAGES###</div>\";s:9:\"override.\";a:1:{s:3:\"if.\";a:3:{s:5:\"value\";s:7:\"default\";s:6:\"equals\";s:7:\"default\";s:6:\"negate\";s:1:\"1\";}}}i:17;s:4:\"TEXT\";s:3:\"17.\";a:3:{s:5:\"value\";s:91:\"<div class=\"csc-textpic csc-textpic-intext-right###CLASSES###\">###IMAGES######TEXT###</div>\";s:8:\"override\";s:114:\"<div class=\"csc-textpic csc-textpic-responsive csc-textpic-intext-right###CLASSES###\">###IMAGES######TEXT###</div>\";s:9:\"override.\";a:1:{s:3:\"if.\";a:3:{s:5:\"value\";s:7:\"default\";s:6:\"equals\";s:7:\"default\";s:6:\"negate\";s:1:\"1\";}}}i:18;s:4:\"TEXT\";s:3:\"18.\";a:3:{s:5:\"value\";s:90:\"<div class=\"csc-textpic csc-textpic-intext-left###CLASSES###\">###IMAGES######TEXT###</div>\";s:8:\"override\";s:113:\"<div class=\"csc-textpic csc-textpic-responsive csc-textpic-intext-left###CLASSES###\">###IMAGES######TEXT###</div>\";s:9:\"override.\";a:1:{s:3:\"if.\";a:3:{s:5:\"value\";s:7:\"default\";s:6:\"equals\";s:7:\"default\";s:6:\"negate\";s:1:\"1\";}}}i:25;s:4:\"TEXT\";s:3:\"25.\";a:3:{s:5:\"value\";s:98:\"<div class=\"csc-textpic csc-textpic-intext-right-nowrap###CLASSES###\">###IMAGES######TEXT###</div>\";s:8:\"override\";s:121:\"<div class=\"csc-textpic csc-textpic-responsive csc-textpic-intext-right-nowrap###CLASSES###\">###IMAGES######TEXT###</div>\";s:9:\"override.\";a:1:{s:3:\"if.\";a:3:{s:5:\"value\";s:7:\"default\";s:6:\"equals\";s:7:\"default\";s:6:\"negate\";s:1:\"1\";}}}i:26;s:4:\"TEXT\";s:3:\"26.\";a:3:{s:5:\"value\";s:97:\"<div class=\"csc-textpic csc-textpic-intext-left-nowrap###CLASSES###\">###IMAGES######TEXT###</div>\";s:8:\"override\";s:120:\"<div class=\"csc-textpic csc-textpic-responsive csc-textpic-intext-left-nowrap###CLASSES###\">###IMAGES######TEXT###</div>\";s:9:\"override.\";a:1:{s:3:\"if.\";a:3:{s:5:\"value\";s:7:\"default\";s:6:\"equals\";s:7:\"default\";s:6:\"negate\";s:1:\"1\";}}}}s:10:\"rendering.\";a:4:{s:16:\"singleNoCaption.\";a:11:{s:17:\"fallbackRendering\";s:3:\"COA\";s:18:\"fallbackRendering.\";a:6:{i:10;s:4:\"TEXT\";s:3:\"10.\";a:2:{s:3:\"if.\";a:3:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:24:\"file:current:description\";}s:5:\"value\";s:1:\"1\";s:7:\"equals.\";a:1:{s:4:\"data\";s:19:\"register:imageCount\";}}s:5:\"value\";s:13:\"singleCaption\";}i:20;s:4:\"TEXT\";s:3:\"20.\";a:2:{s:3:\"if.\";a:3:{s:5:\"value\";s:1:\"1\";s:14:\"isGreaterThan.\";a:1:{s:4:\"data\";s:19:\"register:imageCount\";}s:7:\"isTrue.\";a:2:{s:3:\"if.\";a:1:{s:8:\"isFalse.\";a:1:{s:4:\"data\";s:28:\"register:renderGlobalCaption\";}}s:4:\"data\";s:25:\"register:allImageCaptions\";}}s:5:\"value\";s:12:\"splitCaption\";}i:40;s:4:\"TEXT\";s:3:\"40.\";a:2:{s:3:\"if.\";a:3:{s:5:\"value\";s:1:\"1\";s:14:\"isGreaterThan.\";a:1:{s:4:\"data\";s:19:\"register:imageCount\";}s:8:\"isFalse.\";a:1:{s:4:\"data\";s:25:\"register:allImageCaptions\";}}s:5:\"value\";s:9:\"noCaption\";}}s:11:\"allStdWrap.\";a:3:{s:8:\"dataWrap\";s:44:\"<div class=\"csc-textpic-imagewrap\"> | </div>\";s:9:\"dataWrap.\";a:2:{s:8:\"override\";s:118:\"<div class=\"csc-textpic-imagewrap\" data-csc-images=\"{register:imageCount}\" data-csc-cols=\"{field:imagecols}\"> | </div>\";s:9:\"override.\";a:1:{s:3:\"if.\";a:2:{s:5:\"value\";s:5:\"html5\";s:7:\"equals.\";a:1:{s:4:\"data\";s:26:\"TSFE:config|config|doctype\";}}}}s:10:\"innerWrap.\";a:2:{s:7:\"cObject\";s:4:\"CASE\";s:8:\"cObject.\";a:5:{s:4:\"key.\";a:1:{s:5:\"field\";s:11:\"imageorient\";}i:0;s:4:\"TEXT\";s:2:\"0.\";a:1:{s:5:\"value\";s:91:\"<div class=\"csc-textpic-center-outer\"><div class=\"csc-textpic-center-inner\"> | </div></div>\";}i:8;s:4:\"TEXT\";s:2:\"8.\";a:1:{s:5:\"value\";s:91:\"<div class=\"csc-textpic-center-outer\"><div class=\"csc-textpic-center-inner\"> | </div></div>\";}}}}s:14:\"singleStdWrap.\";a:2:{s:4:\"wrap\";s:53:\"<div class=\"csc-textpic-image###CLASSES###\"> | </div>\";s:5:\"wrap.\";a:2:{s:8:\"override\";s:59:\"<figure class=\"csc-textpic-image###CLASSES###\"> | </figure>\";s:9:\"override.\";a:1:{s:3:\"if.\";a:2:{s:5:\"value\";s:5:\"html5\";s:7:\"equals.\";a:1:{s:4:\"data\";s:26:\"TSFE:config|config|doctype\";}}}}}s:11:\"rowStdWrap.\";a:1:{s:4:\"wrap\";s:1:\"|\";}s:14:\"noRowsStdWrap.\";a:1:{s:4:\"wrap\";s:1:\"|\";}s:15:\"lastRowStdWrap.\";a:1:{s:4:\"wrap\";s:1:\"|\";}s:14:\"columnStdWrap.\";a:1:{s:4:\"wrap\";s:1:\"|\";}s:14:\"imgTagStdWrap.\";a:1:{s:4:\"wrap\";s:1:\"|\";}s:17:\"editIconsStdWrap.\";a:1:{s:4:\"wrap\";s:14:\"<div> | </div>\";}s:8:\"caption.\";a:1:{s:4:\"wrap\";s:1:\"|\";}}s:10:\"noCaption.\";a:8:{s:17:\"fallbackRendering\";s:4:\"TEXT\";s:18:\"fallbackRendering.\";a:2:{s:3:\"if.\";a:3:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:24:\"file:current:description\";}s:5:\"value\";s:1:\"1\";s:7:\"equals.\";a:1:{s:4:\"data\";s:19:\"register:imageCount\";}}s:5:\"value\";s:13:\"singleCaption\";}s:11:\"allStdWrap.\";a:2:{s:8:\"dataWrap\";s:44:\"<div class=\"csc-textpic-imagewrap\"> | </div>\";s:9:\"dataWrap.\";a:2:{s:8:\"override\";s:118:\"<div class=\"csc-textpic-imagewrap\" data-csc-images=\"{register:imageCount}\" data-csc-cols=\"{field:imagecols}\"> | </div>\";s:9:\"override.\";a:1:{s:3:\"if.\";a:2:{s:5:\"value\";s:5:\"html5\";s:7:\"equals.\";a:1:{s:4:\"data\";s:26:\"TSFE:config|config|doctype\";}}}}}s:14:\"singleStdWrap.\";a:2:{s:4:\"wrap\";s:53:\"<div class=\"csc-textpic-image###CLASSES###\"> | </div>\";s:5:\"wrap.\";a:1:{s:8:\"override\";s:59:\"<figure class=\"csc-textpic-image###CLASSES###\"> | </figure>\";}}s:11:\"rowStdWrap.\";a:1:{s:4:\"wrap\";s:43:\"<div class=\"csc-textpic-imagerow\"> | </div>\";}s:14:\"noRowsStdWrap.\";a:1:{s:4:\"wrap\";s:69:\"<div class=\"csc-textpic-imagerow csc-textpic-imagerow-none\"> | </div>\";}s:15:\"lastRowStdWrap.\";a:1:{s:4:\"wrap\";s:69:\"<div class=\"csc-textpic-imagerow csc-textpic-imagerow-last\"> | </div>\";}s:14:\"columnStdWrap.\";a:1:{s:4:\"wrap\";s:59:\"<div class=\"csc-textpic-imagecolumn###CLASSES###\"> | </div>\";}}s:14:\"singleCaption.\";a:4:{s:17:\"fallbackRendering\";s:4:\"TEXT\";s:18:\"fallbackRendering.\";a:2:{s:3:\"if.\";a:3:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:24:\"file:current:description\";}s:5:\"value\";s:1:\"1\";s:7:\"equals.\";a:1:{s:4:\"data\";s:19:\"register:imageCount\";}}s:5:\"value\";s:13:\"singleCaption\";}s:14:\"singleStdWrap.\";a:2:{s:4:\"wrap\";s:114:\"<div class=\"csc-textpic-image###CLASSES###\"><table>###CAPTION###<tbody><tr><td> | </td></tr></tbody></table></div>\";s:5:\"wrap.\";a:2:{s:8:\"override\";s:70:\"<figure class=\"csc-textpic-image###CLASSES###\">|###CAPTION###</figure>\";s:9:\"override.\";a:1:{s:3:\"if.\";a:2:{s:5:\"value\";s:5:\"html5\";s:7:\"equals.\";a:1:{s:4:\"data\";s:26:\"TSFE:config|config|doctype\";}}}}}s:8:\"caption.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:63:\"<caption class=\"csc-textpic-caption###CLASSES###\"> | </caption>\";s:5:\"wrap.\";a:2:{s:8:\"override\";s:69:\"<figcaption class=\"csc-textpic-caption###CLASSES###\"> | </figcaption>\";s:9:\"override.\";a:1:{s:3:\"if.\";a:2:{s:5:\"value\";s:5:\"html5\";s:7:\"equals.\";a:1:{s:4:\"data\";s:26:\"TSFE:config|config|doctype\";}}}}}}s:13:\"splitCaption.\";a:8:{s:17:\"fallbackRendering\";s:4:\"TEXT\";s:18:\"fallbackRendering.\";a:2:{s:3:\"if.\";a:3:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:24:\"file:current:description\";}s:5:\"value\";s:1:\"1\";s:7:\"equals.\";a:1:{s:4:\"data\";s:19:\"register:imageCount\";}}s:5:\"value\";s:13:\"singleCaption\";}s:14:\"singleStdWrap.\";a:2:{s:4:\"wrap\";s:114:\"<div class=\"csc-textpic-image###CLASSES###\"><table>###CAPTION###<tbody><tr><td> | </td></tr></tbody></table></div>\";s:5:\"wrap.\";a:2:{s:8:\"override\";s:70:\"<figure class=\"csc-textpic-image###CLASSES###\">|###CAPTION###</figure>\";s:9:\"override.\";a:1:{s:3:\"if.\";a:2:{s:5:\"value\";s:5:\"html5\";s:7:\"equals.\";a:1:{s:4:\"data\";s:26:\"TSFE:config|config|doctype\";}}}}}s:11:\"rowStdWrap.\";a:1:{s:4:\"wrap\";s:43:\"<div class=\"csc-textpic-imagerow\"> | </div>\";}s:14:\"noRowsStdWrap.\";a:1:{s:4:\"wrap\";s:69:\"<div class=\"csc-textpic-imagerow csc-textpic-imagerow-none\"> | </div>\";}s:15:\"lastRowStdWrap.\";a:1:{s:4:\"wrap\";s:69:\"<div class=\"csc-textpic-imagerow csc-textpic-imagerow-last\"> | </div>\";}s:14:\"columnStdWrap.\";a:1:{s:4:\"wrap\";s:59:\"<div class=\"csc-textpic-imagecolumn###CLASSES###\"> | </div>\";}s:8:\"caption.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:63:\"<caption class=\"csc-textpic-caption###CLASSES###\"> | </caption>\";s:5:\"wrap.\";a:2:{s:8:\"override\";s:69:\"<figcaption class=\"csc-textpic-caption###CLASSES###\"> | </figcaption>\";s:9:\"override.\";a:1:{s:3:\"if.\";a:2:{s:5:\"value\";s:5:\"html5\";s:7:\"equals.\";a:1:{s:4:\"data\";s:26:\"TSFE:config|config|doctype\";}}}}}}}s:12:\"renderMethod\";s:15:\"singleNoCaption\";s:9:\"editIcons\";s:176:\"tt_content : image [imageorient|imagewidth|imageheight],[imagecols|image_noRows|imageborder],[image_zoom],[image_compression|image_effects|image_frames],[imagecaption_position]\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:57:\"LLL:EXT:css_styled_content/pi1/locallang.xml:eIcon.images\";}}s:8:\"stdWrap.\";a:1:{s:13:\"prefixComment\";s:16:\"2 | Image block:\";}}}s:7:\"textpic\";s:3:\"COA\";s:8:\"textpic.\";a:4:{i:10;s:3:\"COA\";s:3:\"10.\";a:2:{s:3:\"if.\";a:2:{s:5:\"value\";s:2:\"25\";s:11:\"isLessThan.\";a:1:{s:5:\"field\";s:11:\"imageorient\";}}i:10;s:15:\"< lib.stdheader\";}i:20;s:21:\"< tt_content.image.20\";s:3:\"20.\";a:1:{s:5:\"text.\";a:4:{i:10;s:3:\"COA\";s:3:\"10.\";a:3:{s:3:\"if.\";a:2:{s:5:\"value\";s:2:\"24\";s:14:\"isGreaterThan.\";a:1:{s:5:\"field\";s:11:\"imageorient\";}}i:10;s:15:\"< lib.stdheader\";s:3:\"10.\";a:1:{s:8:\"stdWrap.\";a:1:{s:8:\"dataWrap\";s:76:\"<div class=\"csc-textpicHeader csc-textpicHeader-{field:imageorient}\">|</div>\";}}}i:20;s:20:\"< tt_content.text.20\";s:4:\"wrap\";s:39:\"<div class=\"csc-textpic-text\"> | </div>\";}}}s:7:\"bullets\";s:3:\"COA\";s:8:\"bullets.\";a:3:{i:10;s:15:\"< lib.stdheader\";i:20;s:4:\"TEXT\";s:3:\"20.\";a:7:{s:5:\"field\";s:8:\"bodytext\";s:4:\"trim\";s:1:\"1\";s:6:\"split.\";a:4:{s:6:\"token.\";a:1:{s:4:\"char\";s:2:\"10\";}s:7:\"cObjNum\";s:11:\"|*|1|| 2|*|\";s:2:\"1.\";a:3:{s:7:\"current\";s:1:\"1\";s:9:\"parseFunc\";s:15:\"< lib.parseFunc\";s:4:\"wrap\";s:22:\"<li class=\"odd\">|</li>\";}s:2:\"2.\";a:3:{s:7:\"current\";s:1:\"1\";s:9:\"parseFunc\";s:15:\"< lib.parseFunc\";s:4:\"wrap\";s:23:\"<li class=\"even\">|</li>\";}}s:8:\"dataWrap\";s:63:\"<ul class=\"csc-bulletlist csc-bulletlist-{field:layout}\">|</ul>\";s:9:\"editIcons\";s:30:\"tt_content: bodytext, [layout]\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:58:\"LLL:EXT:css_styled_content/pi1/locallang.xlf:eIcon.bullets\";}}s:13:\"prefixComment\";s:16:\"2 | Bullet list:\";}}s:7:\"uploads\";s:3:\"COA\";s:8:\"uploads.\";a:3:{i:10;s:15:\"< lib.stdheader\";i:20;s:5:\"FILES\";s:3:\"20.\";a:7:{s:11:\"references.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:9:\"fieldName\";s:5:\"media\";}s:12:\"collections.\";a:1:{s:5:\"field\";s:16:\"file_collections\";}s:8:\"folders.\";a:1:{s:5:\"field\";s:10:\"select_key\";}s:8:\"sorting.\";a:1:{s:5:\"field\";s:16:\"filelink_sorting\";}s:9:\"renderObj\";s:3:\"COA\";s:10:\"renderObj.\";a:11:{i:10;s:5:\"IMAGE\";s:3:\"10.\";a:2:{s:5:\"file.\";a:2:{s:7:\"import.\";a:1:{s:4:\"data\";s:44:\"file:current:originalUid // file:current:uid\";}s:5:\"width\";s:3:\"150\";}s:8:\"stdWrap.\";a:2:{s:3:\"if.\";a:2:{s:5:\"value\";s:1:\"1\";s:14:\"isGreaterThan.\";a:1:{s:5:\"field\";s:6:\"layout\";}}s:9:\"typolink.\";a:4:{s:10:\"parameter.\";a:2:{s:4:\"data\";s:44:\"file:current:originalUid // file:current:uid\";s:4:\"wrap\";s:6:\"file:|\";}s:11:\"fileTarget.\";a:2:{s:8:\"override\";s:6:\"_blank\";s:9:\"override.\";a:2:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}s:9:\"override.\";a:1:{s:5:\"field\";s:6:\"target\";}}}s:10:\"fileTarget\";s:0:\"\";s:22:\"removePrependedNumbers\";s:1:\"1\";}}}i:15;s:5:\"IMAGE\";s:3:\"15.\";a:2:{s:5:\"file.\";a:2:{s:6:\"import\";s:20:\"typo3/gfx/fileicons/\";s:7:\"import.\";a:3:{s:4:\"data\";s:22:\"file:current:extension\";s:4:\"case\";s:5:\"lower\";s:4:\"wrap\";s:5:\"|.gif\";}}s:8:\"stdWrap.\";a:2:{s:3:\"if.\";a:3:{s:5:\"value\";s:1:\"0\";s:14:\"isGreaterThan.\";a:1:{s:5:\"field\";s:6:\"layout\";}s:8:\"isFalse.\";a:2:{s:7:\"cObject\";s:12:\"IMG_RESOURCE\";s:8:\"cObject.\";a:2:{s:5:\"file.\";a:2:{s:7:\"import.\";a:1:{s:4:\"data\";s:44:\"file:current:originalUid // file:current:uid\";}s:5:\"width\";s:3:\"150\";}s:8:\"stdWrap.\";a:1:{s:3:\"if.\";a:2:{s:5:\"value\";s:1:\"1\";s:14:\"isGreaterThan.\";a:1:{s:5:\"field\";s:6:\"layout\";}}}}}}s:9:\"typolink.\";a:4:{s:10:\"parameter.\";a:2:{s:4:\"data\";s:44:\"file:current:originalUid // file:current:uid\";s:4:\"wrap\";s:6:\"file:|\";}s:11:\"fileTarget.\";a:2:{s:8:\"override\";s:6:\"_blank\";s:9:\"override.\";a:2:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}s:9:\"override.\";a:1:{s:5:\"field\";s:6:\"target\";}}}s:10:\"fileTarget\";s:0:\"\";s:22:\"removePrependedNumbers\";s:1:\"1\";}}}i:20;s:4:\"TEXT\";s:3:\"20.\";a:6:{s:4:\"data\";s:17:\"file:current:name\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:8:\"required\";s:1:\"1\";s:12:\"replacement.\";a:2:{s:3:\"10.\";a:2:{s:6:\"search\";s:1:\"_\";s:8:\"replace.\";a:1:{s:4:\"char\";s:2:\"32\";}}s:4:\"_20.\";a:3:{s:6:\"search\";s:12:\"/(.*)(\\..*)/\";s:7:\"replace\";s:2:\"\\1\";s:9:\"useRegExp\";s:1:\"1\";}}s:9:\"typolink.\";a:4:{s:10:\"parameter.\";a:2:{s:4:\"data\";s:44:\"file:current:originalUid // file:current:uid\";s:4:\"wrap\";s:6:\"file:|\";}s:11:\"fileTarget.\";a:2:{s:8:\"override\";s:6:\"_blank\";s:9:\"override.\";a:2:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}s:9:\"override.\";a:1:{s:5:\"field\";s:6:\"target\";}}}s:10:\"fileTarget\";s:0:\"\";s:22:\"removePrependedNumbers\";s:1:\"1\";}s:4:\"wrap\";s:43:\"<span class=\"csc-uploads-fileName\">|</span>\";}i:30;s:4:\"TEXT\";s:3:\"30.\";a:4:{s:4:\"data\";s:24:\"file:current:description\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:4:\"wrap\";s:46:\"<span class=\"csc-uploads-description\">|</span>\";s:8:\"required\";s:1:\"1\";}i:40;s:4:\"TEXT\";s:3:\"40.\";a:5:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:13:\"filelink_size\";}}s:4:\"data\";s:17:\"file:current:size\";s:4:\"wrap\";s:43:\"<span class=\"csc-uploads-fileSize\">|</span>\";s:5:\"bytes\";s:1:\"1\";s:6:\"bytes.\";a:1:{s:6:\"labels\";s:12:\"\" | K| M| G\"\";}}s:5:\"wrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:5:{i:10;s:13:\"LOAD_REGISTER\";s:3:\"10.\";a:3:{s:12:\"oddEvenClass\";s:37:\"li-odd li-first |*| li-even || li-odd\";s:12:\"elementClass\";s:64:\"csc-uploads-element csc-uploads-element-{file:current:extension}\";s:13:\"elementClass.\";a:1:{s:10:\"insertData\";s:1:\"1\";}}i:20;s:4:\"TEXT\";s:3:\"20.\";a:2:{s:5:\"value\";s:66:\"<li class=\"{register:oddEvenClass} {register:elementClass}\">|</li>\";s:10:\"insertData\";s:1:\"1\";}i:30;s:16:\"RESTORE_REGISTER\";}}}s:8:\"stdWrap.\";a:4:{s:9:\"editIcons\";s:105:\"tt_content: media, layout [table_bgColor|table_border|table_cellspacing|table_cellpadding], filelink_size\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:59:\"LLL:EXT:css_styled_content/pi1/locallang.xml:eIcon.filelist\";}}s:13:\"prefixComment\";s:14:\"2 | File list:\";s:8:\"dataWrap\";s:57:\"<ul class=\"csc-uploads csc-uploads-{field:layout}\">|</ul>\";}}}s:5:\"table\";s:3:\"COA\";s:6:\"table.\";a:3:{i:10;s:15:\"< lib.stdheader\";i:20;s:4:\"USER\";s:3:\"20.\";a:9:{s:8:\"userFunc\";s:78:\"TYPO3\\CMS\\CssStyledContent\\Controller\\CssStyledContentController->render_table\";s:5:\"field\";s:8:\"bodytext\";s:6:\"color.\";a:9:{s:7:\"default\";s:0:\"\";i:1;s:7:\"#EDEBF1\";i:2;s:7:\"#F5FFAA\";i:200;s:0:\"\";i:240;s:5:\"black\";i:241;s:5:\"white\";i:242;s:7:\"#333333\";i:243;s:4:\"gray\";i:244;s:6:\"silver\";}s:14:\"tableParams_0.\";a:3:{s:6:\"border\";s:0:\"\";s:11:\"cellpadding\";s:0:\"\";s:11:\"cellspacing\";s:0:\"\";}s:14:\"tableParams_1.\";a:3:{s:6:\"border\";s:0:\"\";s:11:\"cellpadding\";s:0:\"\";s:11:\"cellspacing\";s:0:\"\";}s:14:\"tableParams_2.\";a:3:{s:6:\"border\";s:0:\"\";s:11:\"cellpadding\";s:0:\"\";s:11:\"cellspacing\";s:0:\"\";}s:14:\"tableParams_3.\";a:3:{s:6:\"border\";s:0:\"\";s:11:\"cellpadding\";s:0:\"\";s:11:\"cellspacing\";s:0:\"\";}s:13:\"innerStdWrap.\";a:2:{s:4:\"wrap\";s:1:\"|\";s:9:\"parseFunc\";s:15:\"< lib.parseFunc\";}s:8:\"stdWrap.\";a:3:{s:9:\"editIcons\";s:102:\"tt_content: cols, bodytext, [layout], [table_bgColor|table_border|table_cellspacing|table_cellpadding]\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:56:\"LLL:EXT:css_styled_content/pi1/locallang.xml:eIcon.table\";}}s:13:\"prefixComment\";s:10:\"2 | Table:\";}}}s:10:\"multimedia\";s:3:\"COA\";s:11:\"multimedia.\";a:3:{i:10;s:15:\"< lib.stdheader\";i:20;s:10:\"MULTIMEDIA\";s:3:\"20.\";a:3:{s:5:\"file.\";a:3:{s:5:\"field\";s:10:\"multimedia\";s:4:\"wrap\";s:14:\"uploads/media/\";s:7:\"listNum\";s:1:\"0\";}s:7:\"params.\";a:1:{s:5:\"field\";s:8:\"bodytext\";}s:8:\"stdWrap.\";a:3:{s:9:\"editIcons\";s:32:\"tt_content: multimedia, bodytext\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:61:\"LLL:EXT:css_styled_content/pi1/locallang.xml:eIcon.multimedia\";}}s:13:\"prefixComment\";s:23:\"2 | Multimedia element:\";}}}s:9:\"swfobject\";s:3:\"COA\";s:10:\"swfobject.\";a:3:{i:10;s:15:\"< lib.stdheader\";i:20;s:9:\"SWFOBJECT\";s:3:\"20.\";a:9:{s:4:\"file\";s:0:\"\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:11:\"flexParams.\";a:1:{s:5:\"field\";s:11:\"pi_flexform\";}s:19:\"alternativeContent.\";a:1:{s:5:\"field\";s:8:\"bodytext\";}s:6:\"layout\";s:15:\"###SWFOBJECT###\";s:6:\"video.\";a:5:{s:6:\"player\";s:38:\"typo3/contrib/flashmedia/flvplayer.swf\";s:12:\"defaultWidth\";s:3:\"600\";s:13:\"defaultHeight\";s:3:\"400\";s:8:\"default.\";a:1:{s:7:\"params.\";a:4:{s:7:\"quality\";s:4:\"high\";s:4:\"menu\";s:5:\"false\";s:17:\"allowScriptAccess\";s:10:\"sameDomain\";s:15:\"allowFullScreen\";s:4:\"true\";}}s:8:\"mapping.\";a:0:{}}s:6:\"audio.\";a:5:{s:6:\"player\";s:35:\"typo3/contrib/flashmedia/player.swf\";s:12:\"defaultWidth\";s:3:\"300\";s:13:\"defaultHeight\";s:2:\"30\";s:8:\"default.\";a:1:{s:7:\"params.\";a:3:{s:7:\"quality\";s:4:\"high\";s:17:\"allowScriptAccess\";s:10:\"sameDomain\";s:4:\"menu\";s:5:\"false\";}}s:8:\"mapping.\";a:1:{s:10:\"flashvars.\";a:1:{s:4:\"file\";s:9:\"soundFile\";}}}s:8:\"stdWrap.\";a:3:{s:9:\"editIcons\";s:70:\"tt_content: multimedia, imagewidth, imageheight, pi_flexform, bodytext\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:61:\"LLL:EXT:css_styled_content/pi1/locallang.xml:eIcon.multimedia\";}}s:13:\"prefixComment\";s:22:\"2 | SWFobject element:\";}}}s:8:\"qtobject\";s:3:\"COA\";s:9:\"qtobject.\";a:3:{i:10;s:15:\"< lib.stdheader\";i:20;s:8:\"QTOBJECT\";s:3:\"20.\";a:9:{s:4:\"file\";s:0:\"\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:11:\"flexParams.\";a:1:{s:5:\"field\";s:11:\"pi_flexform\";}s:19:\"alternativeContent.\";a:1:{s:5:\"field\";s:8:\"bodytext\";}s:6:\"layout\";s:14:\"###QTOBJECT###\";s:6:\"video.\";a:5:{s:6:\"player\";s:38:\"typo3/contrib/flashmedia/flvplayer.swf\";s:12:\"defaultWidth\";s:3:\"600\";s:13:\"defaultHeight\";s:3:\"400\";s:8:\"default.\";a:1:{s:7:\"params.\";a:4:{s:7:\"quality\";s:4:\"high\";s:4:\"menu\";s:5:\"false\";s:17:\"allowScriptAccess\";s:10:\"sameDomain\";s:15:\"allowFullScreen\";s:4:\"true\";}}s:8:\"mapping.\";a:0:{}}s:6:\"audio.\";a:5:{s:6:\"player\";s:35:\"typo3/contrib/flashmedia/player.swf\";s:12:\"defaultWidth\";s:3:\"300\";s:13:\"defaultHeight\";s:2:\"30\";s:8:\"default.\";a:1:{s:7:\"params.\";a:3:{s:7:\"quality\";s:4:\"high\";s:17:\"allowScriptAccess\";s:10:\"sameDomain\";s:4:\"menu\";s:5:\"false\";}}s:8:\"mapping.\";a:1:{s:10:\"flashvars.\";a:1:{s:4:\"file\";s:9:\"soundFile\";}}}s:8:\"stdWrap.\";a:3:{s:9:\"editIcons\";s:70:\"tt_content: multimedia, imagewidth, imageheight, pi_flexform, bodytext\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:61:\"LLL:EXT:css_styled_content/pi1/locallang.xml:eIcon.multimedia\";}}s:13:\"prefixComment\";s:21:\"2 | QTobject element:\";}}}s:5:\"media\";s:3:\"COA\";s:6:\"media.\";a:3:{i:10;s:15:\"< lib.stdheader\";i:20;s:5:\"MEDIA\";s:3:\"20.\";a:10:{s:11:\"flexParams.\";a:1:{s:5:\"field\";s:11:\"pi_flexform\";}s:18:\"alternativeContent\";s:4:\"TEXT\";s:19:\"alternativeContent.\";a:6:{s:5:\"field\";s:8:\"bodytext\";s:8:\"required\";s:1:\"1\";s:9:\"parseFunc\";s:19:\"< lib.parseFunc_RTE\";s:9:\"editIcons\";s:32:\"tt_content:bodytext, rte_enabled\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:59:\"LLL:EXT:css_styled_content/pi1/locallang.xml:eIcon.bodytext\";}}s:13:\"prefixComment\";s:9:\"2 | Text:\";}s:4:\"type\";s:5:\"video\";s:10:\"renderType\";s:4:\"auto\";s:13:\"allowEmptyUrl\";s:1:\"0\";s:11:\"forcePlayer\";s:1:\"1\";s:15:\"fileExtHandler.\";a:13:{s:7:\"default\";s:5:\"MEDIA\";s:3:\"avi\";s:5:\"MEDIA\";s:3:\"asf\";s:5:\"MEDIA\";s:5:\"class\";s:5:\"MEDIA\";s:3:\"wmv\";s:5:\"MEDIA\";s:3:\"mp3\";s:3:\"SWF\";s:3:\"mp4\";s:3:\"SWF\";s:3:\"m4v\";s:2:\"QT\";s:3:\"swa\";s:3:\"SWF\";s:3:\"flv\";s:3:\"SWF\";s:3:\"swf\";s:3:\"SWF\";s:3:\"mov\";s:2:\"QT\";s:3:\"m4a\";s:2:\"QT\";}s:9:\"mimeConf.\";a:6:{s:9:\"swfobject\";s:9:\"SWFOBJECT\";s:10:\"swfobject.\";a:9:{s:4:\"file\";s:0:\"\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:11:\"flexParams.\";a:1:{s:5:\"field\";s:11:\"pi_flexform\";}s:19:\"alternativeContent.\";a:1:{s:5:\"field\";s:8:\"bodytext\";}s:6:\"layout\";s:15:\"###SWFOBJECT###\";s:6:\"video.\";a:5:{s:6:\"player\";s:38:\"typo3/contrib/flashmedia/flvplayer.swf\";s:12:\"defaultWidth\";s:3:\"600\";s:13:\"defaultHeight\";s:3:\"400\";s:8:\"default.\";a:1:{s:7:\"params.\";a:4:{s:7:\"quality\";s:4:\"high\";s:4:\"menu\";s:5:\"false\";s:17:\"allowScriptAccess\";s:10:\"sameDomain\";s:15:\"allowFullScreen\";s:4:\"true\";}}s:8:\"mapping.\";a:0:{}}s:6:\"audio.\";a:5:{s:6:\"player\";s:35:\"typo3/contrib/flashmedia/player.swf\";s:12:\"defaultWidth\";s:3:\"300\";s:13:\"defaultHeight\";s:2:\"30\";s:8:\"default.\";a:1:{s:7:\"params.\";a:3:{s:7:\"quality\";s:4:\"high\";s:17:\"allowScriptAccess\";s:10:\"sameDomain\";s:4:\"menu\";s:5:\"false\";}}s:8:\"mapping.\";a:1:{s:10:\"flashvars.\";a:1:{s:4:\"file\";s:9:\"soundFile\";}}}s:8:\"stdWrap.\";a:3:{s:9:\"editIcons\";s:70:\"tt_content: multimedia, imagewidth, imageheight, pi_flexform, bodytext\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:61:\"LLL:EXT:css_styled_content/pi1/locallang.xml:eIcon.multimedia\";}}s:13:\"prefixComment\";s:22:\"2 | SWFobject element:\";}}s:8:\"qtobject\";s:8:\"QTOBJECT\";s:9:\"qtobject.\";a:9:{s:4:\"file\";s:0:\"\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:11:\"flexParams.\";a:1:{s:5:\"field\";s:11:\"pi_flexform\";}s:19:\"alternativeContent.\";a:1:{s:5:\"field\";s:8:\"bodytext\";}s:6:\"layout\";s:14:\"###QTOBJECT###\";s:6:\"video.\";a:5:{s:6:\"player\";s:38:\"typo3/contrib/flashmedia/flvplayer.swf\";s:12:\"defaultWidth\";s:3:\"600\";s:13:\"defaultHeight\";s:3:\"400\";s:8:\"default.\";a:1:{s:7:\"params.\";a:4:{s:7:\"quality\";s:4:\"high\";s:4:\"menu\";s:5:\"false\";s:17:\"allowScriptAccess\";s:10:\"sameDomain\";s:15:\"allowFullScreen\";s:4:\"true\";}}s:8:\"mapping.\";a:0:{}}s:6:\"audio.\";a:5:{s:6:\"player\";s:35:\"typo3/contrib/flashmedia/player.swf\";s:12:\"defaultWidth\";s:3:\"300\";s:13:\"defaultHeight\";s:2:\"30\";s:8:\"default.\";a:1:{s:7:\"params.\";a:3:{s:7:\"quality\";s:4:\"high\";s:17:\"allowScriptAccess\";s:10:\"sameDomain\";s:4:\"menu\";s:5:\"false\";}}s:8:\"mapping.\";a:1:{s:10:\"flashvars.\";a:1:{s:4:\"file\";s:9:\"soundFile\";}}}s:8:\"stdWrap.\";a:3:{s:9:\"editIcons\";s:70:\"tt_content: multimedia, imagewidth, imageheight, pi_flexform, bodytext\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:61:\"LLL:EXT:css_styled_content/pi1/locallang.xml:eIcon.multimedia\";}}s:13:\"prefixComment\";s:21:\"2 | QTobject element:\";}}s:10:\"flowplayer\";s:9:\"SWFOBJECT\";s:11:\"flowplayer.\";a:9:{s:4:\"file\";s:0:\"\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:11:\"flexParams.\";a:1:{s:5:\"field\";s:11:\"pi_flexform\";}s:19:\"alternativeContent.\";a:1:{s:5:\"field\";s:8:\"bodytext\";}s:6:\"layout\";s:15:\"###SWFOBJECT###\";s:6:\"video.\";a:5:{s:6:\"player\";s:46:\"typo3/contrib/flowplayer/flowplayer-3.2.16.swf\";s:12:\"defaultWidth\";s:3:\"600\";s:13:\"defaultHeight\";s:3:\"400\";s:8:\"default.\";a:1:{s:7:\"params.\";a:4:{s:7:\"quality\";s:4:\"high\";s:4:\"menu\";s:5:\"false\";s:17:\"allowScriptAccess\";s:10:\"sameDomain\";s:15:\"allowFullScreen\";s:4:\"true\";}}s:8:\"mapping.\";a:0:{}}s:6:\"audio.\";a:5:{s:6:\"player\";s:46:\"typo3/contrib/flowplayer/flowplayer-3.2.16.swf\";s:12:\"defaultWidth\";s:3:\"300\";s:13:\"defaultHeight\";s:2:\"30\";s:8:\"default.\";a:1:{s:7:\"params.\";a:3:{s:7:\"quality\";s:4:\"high\";s:17:\"allowScriptAccess\";s:10:\"sameDomain\";s:4:\"menu\";s:5:\"false\";}}s:8:\"mapping.\";a:1:{s:10:\"flashvars.\";a:1:{s:4:\"file\";s:9:\"soundFile\";}}}s:8:\"stdWrap.\";a:3:{s:9:\"editIcons\";s:70:\"tt_content: multimedia, imagewidth, imageheight, pi_flexform, bodytext\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:61:\"LLL:EXT:css_styled_content/pi1/locallang.xml:eIcon.multimedia\";}}s:13:\"prefixComment\";s:22:\"2 | SWFobject element:\";}}}s:8:\"stdWrap.\";a:3:{s:9:\"editIcons\";s:33:\"tt_content: pi_flexform, bodytext\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:61:\"LLL:EXT:css_styled_content/pi1/locallang.xml:eIcon.multimedia\";}}s:13:\"prefixComment\";s:18:\"2 | Media element:\";}}}s:8:\"mailform\";s:3:\"COA\";s:9:\"mailform.\";a:3:{i:10;s:15:\"< lib.stdheader\";i:20;s:4:\"FORM\";s:3:\"20.\";a:25:{s:23:\"useDefaultContentObject\";s:1:\"1\";s:13:\"accessibility\";s:1:\"1\";s:10:\"noWrapAttr\";s:1:\"1\";s:8:\"formName\";s:8:\"mailform\";s:17:\"dontMd5FieldNames\";s:1:\"1\";s:6:\"layout\";s:61:\"<div class=\"csc-mailform-field\">###LABEL### ###FIELD###</div>\";s:10:\"labelWrap.\";a:1:{s:4:\"wrap\";s:1:\"|\";}s:12:\"commentWrap.\";a:1:{s:4:\"wrap\";s:1:\"|\";}s:10:\"radioWrap.\";a:2:{s:4:\"wrap\";s:7:\"|<br />\";s:17:\"accessibilityWrap\";s:82:\"<fieldset###RADIO_FIELD_ID###><legend>###RADIO_GROUP_LABEL###</legend>|</fieldset>\";}s:3:\"REQ\";s:1:\"1\";s:4:\"REQ.\";a:1:{s:10:\"labelWrap.\";a:1:{s:4:\"wrap\";s:1:\"|\";}}s:8:\"COMMENT.\";a:1:{s:6:\"layout\";s:49:\"<div class=\"csc-mailform-label\">###LABEL###</div>\";}s:6:\"RADIO.\";a:1:{s:6:\"layout\";s:101:\"<div class=\"csc-mailform-field\">###LABEL### <span class=\"csc-mailform-radio\">###FIELD###</span></div>\";}s:6:\"LABEL.\";a:1:{s:6:\"layout\";s:101:\"<div class=\"csc-mailform-field\">###LABEL### <span class=\"csc-mailform-label\">###FIELD###</span></div>\";}s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:8:\"goodMess\";s:0:\"\";s:7:\"badMess\";s:0:\"\";s:9:\"redirect.\";a:2:{s:5:\"field\";s:5:\"pages\";s:7:\"listNum\";s:1:\"0\";}s:10:\"recipient.\";a:1:{s:5:\"field\";s:9:\"subheader\";}s:5:\"data.\";a:1:{s:5:\"field\";s:8:\"bodytext\";}s:12:\"locationData\";s:1:\"1\";s:13:\"hiddenFields.\";a:1:{s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:34:\"<div style=\"display:none;\">|</div>\";}}s:7:\"params.\";a:3:{s:5:\"radio\";s:26:\"class=\"csc-mailform-radio\"\";s:5:\"check\";s:26:\"class=\"csc-mailform-check\"\";s:6:\"submit\";s:27:\"class=\"csc-mailform-submit\"\";}s:8:\"stdWrap.\";a:4:{s:4:\"wrap\";s:45:\"<fieldset class=\"csc-mailform\"> | </fieldset>\";s:9:\"editIcons\";s:38:\"tt_content: bodytext, pages, subheader\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:55:\"LLL:EXT:css_styled_content/pi1/locallang.xml:eIcon.form\";}}s:13:\"prefixComment\";s:23:\"2 | Mail form inserted:\";}}}s:6:\"search\";s:3:\"COA\";s:7:\"search.\";a:5:{i:10;s:15:\"< lib.stdheader\";i:20;s:12:\"SEARCHRESULT\";s:3:\"20.\";a:16:{s:11:\"allowedCols\";s:275:\"pages.title-subtitle-keywords-description : tt_content.header-bodytext-imagecaption : tt_address.name-title-address-email-company-city-country : tt_links.title-note-note2-url : tt_board.subject-message-author-email : tt_calender.title-note : tt_products.title-note-itemnumber\";s:14:\"languageField.\";a:1:{s:10:\"tt_content\";s:16:\"sys_language_uid\";}s:9:\"renderObj\";s:3:\"COA\";s:10:\"renderObj.\";a:4:{i:10;s:4:\"TEXT\";s:3:\"10.\";a:4:{s:5:\"field\";s:11:\"pages_title\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:9:\"typolink.\";a:4:{s:10:\"parameter.\";a:1:{s:5:\"field\";s:3:\"uid\";}s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:17:\"additionalParams.\";a:3:{s:4:\"data\";s:21:\"register:SWORD_PARAMS\";s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:11:\"&no_cache=1\";}}s:4:\"wrap\";s:41:\"<h3 class=\"csc-searchResultHeader\">|</h3>\";}i:20;s:3:\"COA\";s:3:\"20.\";a:3:{i:10;s:4:\"TEXT\";s:3:\"10.\";a:3:{s:5:\"field\";s:19:\"tt_content_bodytext\";s:9:\"stripHtml\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:8:\"stdWrap.\";a:2:{s:4:\"crop\";s:9:\"200 | ...\";s:4:\"wrap\";s:33:\"<p class=\"csc-searchResult\">|</p>\";}}}s:6:\"layout\";s:3:\"COA\";s:7:\"layout.\";a:5:{s:4:\"wrap\";s:112:\"<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" class=\"csc-searchResultInfo\"><tr> | </tr></table> ###RESULT###\";i:10;s:4:\"TEXT\";s:3:\"10.\";a:2:{s:4:\"data\";s:63:\"LLL:EXT:css_styled_content/pi1/locallang.xml:search.resultRange\";s:4:\"wrap\";s:47:\"<td class=\"csc-searchResultRange\"><p>|</p></td>\";}i:20;s:4:\"TEXT\";s:3:\"20.\";a:2:{s:5:\"value\";s:38:\"###PREV###&nbsp;&nbsp;&nbsp;###NEXT###\";s:4:\"wrap\";s:50:\"<td class=\"csc-searchResultPrevNext\"><p>|</p></td>\";}}s:11:\"noResultObj\";s:3:\"COA\";s:12:\"noResultObj.\";a:2:{i:10;s:4:\"TEXT\";s:3:\"10.\";a:2:{s:4:\"data\";s:63:\"LLL:EXT:css_styled_content/pi1/locallang.xml:search.emptySearch\";s:4:\"wrap\";s:40:\"<h3 class=\"csc-noSearchResultMsg\">|</h3>\";}}s:4:\"next\";s:4:\"TEXT\";s:5:\"next.\";a:1:{s:4:\"data\";s:68:\"LLL:EXT:css_styled_content/pi1/locallang.xml:search.searchResultNext\";}s:4:\"prev\";s:4:\"TEXT\";s:5:\"prev.\";a:1:{s:4:\"data\";s:68:\"LLL:EXT:css_styled_content/pi1/locallang.xml:search.searchResultPrev\";}s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:5:\"range\";s:2:\"20\";s:8:\"stdWrap.\";a:1:{s:13:\"prefixComment\";s:18:\"2 | Search result:\";}}i:30;s:4:\"FORM\";s:3:\"30.\";a:25:{s:23:\"useDefaultContentObject\";s:1:\"1\";s:13:\"accessibility\";s:1:\"1\";s:10:\"noWrapAttr\";s:1:\"1\";s:8:\"formName\";s:8:\"mailform\";s:17:\"dontMd5FieldNames\";s:1:\"1\";s:6:\"layout\";s:61:\"<div class=\"csc-mailform-field\">###LABEL### ###FIELD###</div>\";s:10:\"labelWrap.\";a:1:{s:4:\"wrap\";s:1:\"|\";}s:12:\"commentWrap.\";a:1:{s:4:\"wrap\";s:1:\"|\";}s:10:\"radioWrap.\";a:2:{s:4:\"wrap\";s:7:\"|<br />\";s:17:\"accessibilityWrap\";s:82:\"<fieldset###RADIO_FIELD_ID###><legend>###RADIO_GROUP_LABEL###</legend>|</fieldset>\";}s:3:\"REQ\";s:1:\"1\";s:4:\"REQ.\";a:1:{s:10:\"labelWrap.\";a:1:{s:4:\"wrap\";s:1:\"|\";}}s:8:\"COMMENT.\";a:1:{s:6:\"layout\";s:49:\"<div class=\"csc-mailform-label\">###LABEL###</div>\";}s:6:\"RADIO.\";a:1:{s:6:\"layout\";s:101:\"<div class=\"csc-mailform-field\">###LABEL### <span class=\"csc-mailform-radio\">###FIELD###</span></div>\";}s:6:\"LABEL.\";a:1:{s:6:\"layout\";s:101:\"<div class=\"csc-mailform-field\">###LABEL### <span class=\"csc-mailform-label\">###FIELD###</span></div>\";}s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:8:\"goodMess\";s:0:\"\";s:7:\"badMess\";s:0:\"\";s:12:\"locationData\";s:14:\"HTTP_POST_VARS\";s:13:\"hiddenFields.\";a:1:{s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:34:\"<div style=\"display:none;\">|</div>\";}}s:7:\"params.\";a:3:{s:5:\"radio\";s:26:\"class=\"csc-mailform-radio\"\";s:5:\"check\";s:26:\"class=\"csc-mailform-check\"\";s:6:\"submit\";s:27:\"class=\"csc-mailform-submit\"\";}s:8:\"stdWrap.\";a:4:{s:4:\"wrap\";s:85:\"<table border=\"0\" cellspacing=\"1\" cellpadding=\"1\" class=\"csc-searchform\">  | </table>\";s:9:\"editIcons\";s:38:\"tt_content: bodytext, pages, subheader\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:57:\"LLL:EXT:css_styled_content/pi1/locallang.xml:eIcon.search\";}}s:13:\"prefixComment\";s:25:\"2 | Search form inserted:\";}s:10:\"dataArray.\";a:4:{s:3:\"10.\";a:2:{s:6:\"label.\";a:1:{s:4:\"data\";s:62:\"LLL:EXT:css_styled_content/pi1/locallang.xml:search.searchWord\";}s:4:\"type\";s:11:\"sword=input\";}s:3:\"20.\";a:3:{s:6:\"label.\";a:1:{s:4:\"data\";s:60:\"LLL:EXT:css_styled_content/pi1/locallang.xml:search.searchIn\";}s:4:\"type\";s:12:\"scols=select\";s:11:\"valueArray.\";a:2:{s:3:\"10.\";a:2:{s:6:\"label.\";a:1:{s:4:\"data\";s:67:\"LLL:EXT:css_styled_content/pi1/locallang.xml:search.headersKeywords\";}s:5:\"value\";s:59:\"pages.title-subtitle-keywords-description:tt_content.header\";}s:3:\"20.\";a:2:{s:6:\"label.\";a:1:{s:4:\"data\";s:63:\"LLL:EXT:css_styled_content/pi1/locallang.xml:search.pageContent\";}s:5:\"value\";s:39:\"tt_content.header-bodytext-imagecaption\";}}}s:3:\"30.\";a:2:{s:4:\"type\";s:12:\"stype=hidden\";s:5:\"value\";s:2:\"L0\";}s:3:\"40.\";a:2:{s:4:\"type\";s:13:\"submit=submit\";s:6:\"value.\";a:1:{s:4:\"data\";s:64:\"LLL:EXT:css_styled_content/pi1/locallang.xml:search.searchButton\";}}}s:5:\"type.\";a:2:{s:5:\"field\";s:5:\"pages\";s:7:\"listNum\";s:1:\"0\";}s:8:\"no_cache\";s:1:\"1\";}}s:4:\"menu\";s:3:\"COA\";s:5:\"menu.\";a:3:{i:10;s:15:\"< lib.stdheader\";i:20;s:4:\"CASE\";s:3:\"20.\";a:24:{s:4:\"key.\";a:1:{s:5:\"field\";s:9:\"menu_type\";}s:7:\"default\";s:5:\"HMENU\";s:8:\"default.\";a:5:{s:7:\"special\";s:4:\"list\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:8:\"stdWrap.\";a:4:{s:7:\"prepend\";s:3:\"COA\";s:8:\"prepend.\";a:6:{s:8:\"stdWrap.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}}i:10;s:13:\"LOAD_REGISTER\";s:3:\"10.\";a:2:{s:25:\"accessibility_bypass_text\";s:4:\"TEXT\";s:26:\"accessibility_bypass_text.\";a:1:{s:5:\"field\";s:25:\"accessibility_bypass_text\";}}i:20;s:7:\"CONTENT\";s:3:\"20.\";a:4:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:5:{s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:9:\"andWhere.\";a:1:{s:8:\"dataWrap\";s:23:\"sorting>{field:sorting}\";}s:13:\"languageField\";s:16:\"sys_language_uid\";s:3:\"max\";s:1:\"1\";}s:9:\"renderObj\";s:4:\"TEXT\";s:10:\"renderObj.\";a:7:{s:8:\"required\";s:1:\"1\";s:4:\"data\";s:66:\"LLL:EXT:css_styled_content/pi1/locallang.xml:menu.bypassNavigation\";s:9:\"override.\";a:1:{s:4:\"data\";s:34:\"register:accessibility_bypass_text\";}s:4:\"trim\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:9:\"typolink.\";a:2:{s:10:\"parameter.\";a:1:{s:5:\"field\";s:3:\"pid\";}s:8:\"section.\";a:1:{s:5:\"field\";s:3:\"uid\";}}s:4:\"wrap\";s:33:\"<li class=\"csc-nav-bypass\">|</li>\";}}i:30;s:16:\"RESTORE_REGISTER\";}s:9:\"outerWrap\";s:40:\"<ul class=\"csc-menu csc-menu-def\">|</ul>\";s:8:\"required\";s:1:\"1\";}i:1;s:5:\"TMENU\";s:2:\"1.\";a:3:{s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:3:\"NO.\";a:3:{s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}s:14:\"wrapItemAndSub\";s:10:\"<li>|</li>\";s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:20:\"description // title\";}}}}i:1;s:5:\"HMENU\";s:2:\"1.\";a:5:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:8:\"stdWrap.\";a:4:{s:7:\"prepend\";s:3:\"COA\";s:8:\"prepend.\";a:6:{s:8:\"stdWrap.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}}i:10;s:13:\"LOAD_REGISTER\";s:3:\"10.\";a:2:{s:25:\"accessibility_bypass_text\";s:4:\"TEXT\";s:26:\"accessibility_bypass_text.\";a:1:{s:5:\"field\";s:25:\"accessibility_bypass_text\";}}i:20;s:7:\"CONTENT\";s:3:\"20.\";a:4:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:5:{s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:9:\"andWhere.\";a:1:{s:8:\"dataWrap\";s:23:\"sorting>{field:sorting}\";}s:13:\"languageField\";s:16:\"sys_language_uid\";s:3:\"max\";s:1:\"1\";}s:9:\"renderObj\";s:4:\"TEXT\";s:10:\"renderObj.\";a:7:{s:8:\"required\";s:1:\"1\";s:4:\"data\";s:66:\"LLL:EXT:css_styled_content/pi1/locallang.xml:menu.bypassNavigation\";s:9:\"override.\";a:1:{s:4:\"data\";s:34:\"register:accessibility_bypass_text\";}s:4:\"trim\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:9:\"typolink.\";a:2:{s:10:\"parameter.\";a:1:{s:5:\"field\";s:3:\"pid\";}s:8:\"section.\";a:1:{s:5:\"field\";s:3:\"uid\";}}s:4:\"wrap\";s:33:\"<li class=\"csc-nav-bypass\">|</li>\";}}i:30;s:16:\"RESTORE_REGISTER\";}s:9:\"outerWrap\";s:38:\"<ul class=\"csc-menu csc-menu-1\">|</ul>\";s:8:\"required\";s:1:\"1\";}i:1;s:5:\"TMENU\";s:2:\"1.\";a:3:{s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:3:\"NO.\";a:3:{s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}s:14:\"wrapItemAndSub\";s:10:\"<li>|</li>\";s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:20:\"description // title\";}}}}i:2;s:5:\"HMENU\";s:2:\"2.\";a:15:{s:8:\"stdWrap.\";a:4:{s:7:\"prepend\";s:3:\"COA\";s:8:\"prepend.\";a:6:{s:8:\"stdWrap.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}}i:10;s:13:\"LOAD_REGISTER\";s:3:\"10.\";a:2:{s:25:\"accessibility_bypass_text\";s:4:\"TEXT\";s:26:\"accessibility_bypass_text.\";a:1:{s:5:\"field\";s:25:\"accessibility_bypass_text\";}}i:20;s:7:\"CONTENT\";s:3:\"20.\";a:4:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:5:{s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:9:\"andWhere.\";a:1:{s:8:\"dataWrap\";s:23:\"sorting>{field:sorting}\";}s:13:\"languageField\";s:16:\"sys_language_uid\";s:3:\"max\";s:1:\"1\";}s:9:\"renderObj\";s:4:\"TEXT\";s:10:\"renderObj.\";a:7:{s:8:\"required\";s:1:\"1\";s:4:\"data\";s:66:\"LLL:EXT:css_styled_content/pi1/locallang.xml:menu.bypassNavigation\";s:9:\"override.\";a:1:{s:4:\"data\";s:34:\"register:accessibility_bypass_text\";}s:4:\"trim\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:9:\"typolink.\";a:2:{s:10:\"parameter.\";a:1:{s:5:\"field\";s:3:\"pid\";}s:8:\"section.\";a:1:{s:5:\"field\";s:3:\"uid\";}}s:4:\"wrap\";s:33:\"<li class=\"csc-nav-bypass\">|</li>\";}}i:30;s:16:\"RESTORE_REGISTER\";}s:9:\"outerWrap\";s:32:\"<div class=\"csc-sitemap\">|</div>\";s:8:\"required\";s:1:\"1\";}i:1;s:5:\"TMENU\";s:2:\"1.\";a:5:{s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:6:\"expAll\";s:1:\"1\";s:4:\"wrap\";s:10:\"<ul>|</ul>\";s:3:\"NO.\";a:3:{s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}s:14:\"wrapItemAndSub\";s:10:\"<li>|</li>\";s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:20:\"description // title\";}}}i:2;s:5:\"TMENU\";s:2:\"2.\";a:5:{s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:6:\"expAll\";s:1:\"1\";s:4:\"wrap\";s:10:\"<ul>|</ul>\";s:3:\"NO.\";a:3:{s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}s:14:\"wrapItemAndSub\";s:10:\"<li>|</li>\";s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:20:\"description // title\";}}}i:3;s:5:\"TMENU\";s:2:\"3.\";a:5:{s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:6:\"expAll\";s:1:\"1\";s:4:\"wrap\";s:10:\"<ul>|</ul>\";s:3:\"NO.\";a:3:{s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}s:14:\"wrapItemAndSub\";s:10:\"<li>|</li>\";s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:20:\"description // title\";}}}i:4;s:5:\"TMENU\";s:2:\"4.\";a:5:{s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:6:\"expAll\";s:1:\"1\";s:4:\"wrap\";s:10:\"<ul>|</ul>\";s:3:\"NO.\";a:3:{s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}s:14:\"wrapItemAndSub\";s:10:\"<li>|</li>\";s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:20:\"description // title\";}}}i:5;s:5:\"TMENU\";s:2:\"5.\";a:5:{s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:6:\"expAll\";s:1:\"1\";s:4:\"wrap\";s:10:\"<ul>|</ul>\";s:3:\"NO.\";a:3:{s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}s:14:\"wrapItemAndSub\";s:10:\"<li>|</li>\";s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:20:\"description // title\";}}}i:6;s:5:\"TMENU\";s:2:\"6.\";a:5:{s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:6:\"expAll\";s:1:\"1\";s:4:\"wrap\";s:10:\"<ul>|</ul>\";s:3:\"NO.\";a:3:{s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}s:14:\"wrapItemAndSub\";s:10:\"<li>|</li>\";s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:20:\"description // title\";}}}i:7;s:5:\"TMENU\";s:2:\"7.\";a:5:{s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:6:\"expAll\";s:1:\"1\";s:4:\"wrap\";s:10:\"<ul>|</ul>\";s:3:\"NO.\";a:3:{s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}s:14:\"wrapItemAndSub\";s:10:\"<li>|</li>\";s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:20:\"description // title\";}}}}i:3;s:5:\"HMENU\";s:2:\"3.\";a:5:{s:7:\"special\";s:4:\"list\";s:8:\"special.\";a:1:{s:6:\"value.\";a:2:{s:5:\"field\";s:5:\"pages\";s:9:\"override.\";a:2:{s:4:\"data\";s:8:\"page:uid\";s:3:\"if.\";a:1:{s:8:\"isFalse.\";a:1:{s:5:\"field\";s:5:\"pages\";}}}}}s:8:\"stdWrap.\";a:4:{s:7:\"prepend\";s:3:\"COA\";s:8:\"prepend.\";a:6:{s:8:\"stdWrap.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}}i:10;s:13:\"LOAD_REGISTER\";s:3:\"10.\";a:2:{s:25:\"accessibility_bypass_text\";s:4:\"TEXT\";s:26:\"accessibility_bypass_text.\";a:1:{s:5:\"field\";s:25:\"accessibility_bypass_text\";}}i:20;s:7:\"CONTENT\";s:3:\"20.\";a:4:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:5:{s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:9:\"andWhere.\";a:1:{s:8:\"dataWrap\";s:23:\"sorting>{field:sorting}\";}s:13:\"languageField\";s:16:\"sys_language_uid\";s:3:\"max\";s:1:\"1\";}s:9:\"renderObj\";s:4:\"TEXT\";s:10:\"renderObj.\";a:7:{s:8:\"required\";s:1:\"1\";s:4:\"data\";s:66:\"LLL:EXT:css_styled_content/pi1/locallang.xml:menu.bypassNavigation\";s:9:\"override.\";a:1:{s:4:\"data\";s:34:\"register:accessibility_bypass_text\";}s:4:\"trim\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:9:\"typolink.\";a:2:{s:10:\"parameter.\";a:1:{s:5:\"field\";s:3:\"pid\";}s:8:\"section.\";a:1:{s:5:\"field\";s:3:\"uid\";}}s:4:\"wrap\";s:33:\"<li class=\"csc-nav-bypass\">|</li>\";}}i:30;s:16:\"RESTORE_REGISTER\";}s:9:\"outerWrap\";s:38:\"<ul class=\"csc-menu csc-menu-3\">|</ul>\";s:8:\"required\";s:1:\"1\";}i:1;s:5:\"TMENU\";s:2:\"1.\";a:5:{s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:3:\"NO.\";a:3:{s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}s:14:\"wrapItemAndSub\";s:30:\"<li class=\"csc-section\">|</li>\";s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:20:\"description // title\";}}s:12:\"sectionIndex\";s:1:\"1\";s:13:\"sectionIndex.\";a:1:{s:4:\"type\";s:6:\"header\";}}}i:4;s:5:\"HMENU\";s:2:\"4.\";a:5:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:8:\"stdWrap.\";a:4:{s:7:\"prepend\";s:3:\"COA\";s:8:\"prepend.\";a:7:{s:8:\"stdWrap.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}}i:10;s:13:\"LOAD_REGISTER\";s:3:\"10.\";a:2:{s:25:\"accessibility_bypass_text\";s:4:\"TEXT\";s:26:\"accessibility_bypass_text.\";a:1:{s:5:\"field\";s:25:\"accessibility_bypass_text\";}}i:20;s:7:\"CONTENT\";s:3:\"20.\";a:4:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:5:{s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:9:\"andWhere.\";a:1:{s:8:\"dataWrap\";s:23:\"sorting>{field:sorting}\";}s:13:\"languageField\";s:16:\"sys_language_uid\";s:3:\"max\";s:1:\"1\";}s:9:\"renderObj\";s:4:\"TEXT\";s:10:\"renderObj.\";a:7:{s:8:\"required\";s:1:\"1\";s:4:\"data\";s:66:\"LLL:EXT:css_styled_content/pi1/locallang.xml:menu.bypassNavigation\";s:9:\"override.\";a:1:{s:4:\"data\";s:34:\"register:accessibility_bypass_text\";}s:4:\"trim\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:9:\"typolink.\";a:2:{s:10:\"parameter.\";a:1:{s:5:\"field\";s:3:\"pid\";}s:8:\"section.\";a:1:{s:5:\"field\";s:3:\"uid\";}}s:4:\"wrap\";s:33:\"<li class=\"csc-nav-bypass\">|</li>\";}}i:30;s:16:\"RESTORE_REGISTER\";s:10:\"renderObj.\";a:1:{s:4:\"wrap\";s:48:\"<dt class=\"csc-nav-bypass\">|</dt><dd>&nbsp;</dd>\";}}s:9:\"outerWrap\";s:38:\"<dl class=\"csc-menu csc-menu-4\">|</dl>\";s:8:\"required\";s:1:\"1\";}i:1;s:5:\"TMENU\";s:2:\"1.\";a:3:{s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:3:\"NO.\";a:4:{s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:20:\"description // title\";}s:8:\"linkWrap\";s:10:\"<dt>|</dt>\";s:6:\"after.\";a:4:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:3:{s:4:\"data\";s:59:\"field : abstract // field : description // field : subtitle\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:8:\"required\";s:1:\"1\";}s:7:\"ifBlank\";s:6:\"&nbsp;\";s:4:\"wrap\";s:10:\"<dd>|</dd>\";}}}}i:5;s:5:\"HMENU\";s:2:\"5.\";a:5:{s:7:\"special\";s:7:\"updated\";s:8:\"special.\";a:3:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}s:6:\"maxAge\";s:9:\"3600*24*7\";s:20:\"excludeNoSearchPages\";s:1:\"1\";}s:8:\"stdWrap.\";a:4:{s:7:\"prepend\";s:3:\"COA\";s:8:\"prepend.\";a:6:{s:8:\"stdWrap.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}}i:10;s:13:\"LOAD_REGISTER\";s:3:\"10.\";a:2:{s:25:\"accessibility_bypass_text\";s:4:\"TEXT\";s:26:\"accessibility_bypass_text.\";a:1:{s:5:\"field\";s:25:\"accessibility_bypass_text\";}}i:20;s:7:\"CONTENT\";s:3:\"20.\";a:4:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:5:{s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:9:\"andWhere.\";a:1:{s:8:\"dataWrap\";s:23:\"sorting>{field:sorting}\";}s:13:\"languageField\";s:16:\"sys_language_uid\";s:3:\"max\";s:1:\"1\";}s:9:\"renderObj\";s:4:\"TEXT\";s:10:\"renderObj.\";a:7:{s:8:\"required\";s:1:\"1\";s:4:\"data\";s:66:\"LLL:EXT:css_styled_content/pi1/locallang.xml:menu.bypassNavigation\";s:9:\"override.\";a:1:{s:4:\"data\";s:34:\"register:accessibility_bypass_text\";}s:4:\"trim\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:9:\"typolink.\";a:2:{s:10:\"parameter.\";a:1:{s:5:\"field\";s:3:\"pid\";}s:8:\"section.\";a:1:{s:5:\"field\";s:3:\"uid\";}}s:4:\"wrap\";s:33:\"<li class=\"csc-nav-bypass\">|</li>\";}}i:30;s:16:\"RESTORE_REGISTER\";}s:9:\"outerWrap\";s:38:\"<ul class=\"csc-menu csc-menu-5\">|</ul>\";s:8:\"required\";s:1:\"1\";}i:1;s:5:\"TMENU\";s:2:\"1.\";a:3:{s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:3:\"NO.\";a:3:{s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}s:14:\"wrapItemAndSub\";s:10:\"<li>|</li>\";s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:20:\"description // title\";}}}}i:6;s:5:\"HMENU\";s:2:\"6.\";a:5:{s:7:\"special\";s:8:\"keywords\";s:8:\"special.\";a:2:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}s:20:\"excludeNoSearchPages\";s:1:\"1\";}s:8:\"stdWrap.\";a:4:{s:7:\"prepend\";s:3:\"COA\";s:8:\"prepend.\";a:6:{s:8:\"stdWrap.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}}i:10;s:13:\"LOAD_REGISTER\";s:3:\"10.\";a:2:{s:25:\"accessibility_bypass_text\";s:4:\"TEXT\";s:26:\"accessibility_bypass_text.\";a:1:{s:5:\"field\";s:25:\"accessibility_bypass_text\";}}i:20;s:7:\"CONTENT\";s:3:\"20.\";a:4:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:5:{s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:9:\"andWhere.\";a:1:{s:8:\"dataWrap\";s:23:\"sorting>{field:sorting}\";}s:13:\"languageField\";s:16:\"sys_language_uid\";s:3:\"max\";s:1:\"1\";}s:9:\"renderObj\";s:4:\"TEXT\";s:10:\"renderObj.\";a:7:{s:8:\"required\";s:1:\"1\";s:4:\"data\";s:66:\"LLL:EXT:css_styled_content/pi1/locallang.xml:menu.bypassNavigation\";s:9:\"override.\";a:1:{s:4:\"data\";s:34:\"register:accessibility_bypass_text\";}s:4:\"trim\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:9:\"typolink.\";a:2:{s:10:\"parameter.\";a:1:{s:5:\"field\";s:3:\"pid\";}s:8:\"section.\";a:1:{s:5:\"field\";s:3:\"uid\";}}s:4:\"wrap\";s:33:\"<li class=\"csc-nav-bypass\">|</li>\";}}i:30;s:16:\"RESTORE_REGISTER\";}s:9:\"outerWrap\";s:38:\"<ul class=\"csc-menu csc-menu-6\">|</ul>\";s:8:\"required\";s:1:\"1\";}i:1;s:5:\"TMENU\";s:2:\"1.\";a:3:{s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:3:\"NO.\";a:3:{s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}s:14:\"wrapItemAndSub\";s:10:\"<li>|</li>\";s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:20:\"description // title\";}}}}i:7;s:5:\"HMENU\";s:2:\"7.\";a:7:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:8:\"stdWrap.\";a:4:{s:7:\"prepend\";s:3:\"COA\";s:8:\"prepend.\";a:6:{s:8:\"stdWrap.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}}i:10;s:13:\"LOAD_REGISTER\";s:3:\"10.\";a:2:{s:25:\"accessibility_bypass_text\";s:4:\"TEXT\";s:26:\"accessibility_bypass_text.\";a:1:{s:5:\"field\";s:25:\"accessibility_bypass_text\";}}i:20;s:7:\"CONTENT\";s:3:\"20.\";a:4:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:5:{s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:9:\"andWhere.\";a:1:{s:8:\"dataWrap\";s:23:\"sorting>{field:sorting}\";}s:13:\"languageField\";s:16:\"sys_language_uid\";s:3:\"max\";s:1:\"1\";}s:9:\"renderObj\";s:4:\"TEXT\";s:10:\"renderObj.\";a:7:{s:8:\"required\";s:1:\"1\";s:4:\"data\";s:66:\"LLL:EXT:css_styled_content/pi1/locallang.xml:menu.bypassNavigation\";s:9:\"override.\";a:1:{s:4:\"data\";s:34:\"register:accessibility_bypass_text\";}s:4:\"trim\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:9:\"typolink.\";a:2:{s:10:\"parameter.\";a:1:{s:5:\"field\";s:3:\"pid\";}s:8:\"section.\";a:1:{s:5:\"field\";s:3:\"uid\";}}s:4:\"wrap\";s:33:\"<li class=\"csc-nav-bypass\">|</li>\";}}i:30;s:16:\"RESTORE_REGISTER\";}s:9:\"outerWrap\";s:38:\"<ul class=\"csc-menu csc-menu-7\">|</ul>\";s:8:\"required\";s:1:\"1\";}i:1;s:5:\"TMENU\";s:2:\"1.\";a:4:{s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:3:\"NO.\";a:3:{s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}s:14:\"wrapItemAndSub\";s:10:\"<li>|</li>\";s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:20:\"description // title\";}}s:6:\"expAll\";s:1:\"1\";}i:2;s:5:\"TMENU\";s:2:\"2.\";a:7:{s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:3:\"NO.\";a:3:{s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}s:14:\"wrapItemAndSub\";s:30:\"<li class=\"csc-section\">|</li>\";s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:20:\"description // title\";}}s:6:\"expAll\";s:1:\"1\";s:12:\"sectionIndex\";s:1:\"1\";s:13:\"sectionIndex.\";a:1:{s:4:\"type\";s:6:\"header\";}s:4:\"wrap\";s:10:\"<ul>|</ul>\";}}i:8;s:5:\"HMENU\";s:2:\"8.\";a:17:{s:8:\"stdWrap.\";a:4:{s:7:\"prepend\";s:3:\"COA\";s:8:\"prepend.\";a:6:{s:8:\"stdWrap.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}}i:10;s:13:\"LOAD_REGISTER\";s:3:\"10.\";a:2:{s:25:\"accessibility_bypass_text\";s:4:\"TEXT\";s:26:\"accessibility_bypass_text.\";a:1:{s:5:\"field\";s:25:\"accessibility_bypass_text\";}}i:20;s:7:\"CONTENT\";s:3:\"20.\";a:4:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:5:{s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:9:\"andWhere.\";a:1:{s:8:\"dataWrap\";s:23:\"sorting>{field:sorting}\";}s:13:\"languageField\";s:16:\"sys_language_uid\";s:3:\"max\";s:1:\"1\";}s:9:\"renderObj\";s:4:\"TEXT\";s:10:\"renderObj.\";a:7:{s:8:\"required\";s:1:\"1\";s:4:\"data\";s:66:\"LLL:EXT:css_styled_content/pi1/locallang.xml:menu.bypassNavigation\";s:9:\"override.\";a:1:{s:4:\"data\";s:34:\"register:accessibility_bypass_text\";}s:4:\"trim\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:9:\"typolink.\";a:2:{s:10:\"parameter.\";a:1:{s:5:\"field\";s:3:\"pid\";}s:8:\"section.\";a:1:{s:5:\"field\";s:3:\"uid\";}}s:4:\"wrap\";s:33:\"<li class=\"csc-nav-bypass\">|</li>\";}}i:30;s:16:\"RESTORE_REGISTER\";}s:9:\"outerWrap\";s:32:\"<div class=\"csc-sitemap\">|</div>\";s:8:\"required\";s:1:\"1\";}i:1;s:5:\"TMENU\";s:2:\"1.\";a:5:{s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:6:\"expAll\";s:1:\"1\";s:4:\"wrap\";s:10:\"<ul>|</ul>\";s:3:\"NO.\";a:3:{s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}s:14:\"wrapItemAndSub\";s:10:\"<li>|</li>\";s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:20:\"description // title\";}}}i:2;s:5:\"TMENU\";s:2:\"2.\";a:5:{s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:6:\"expAll\";s:1:\"1\";s:4:\"wrap\";s:10:\"<ul>|</ul>\";s:3:\"NO.\";a:3:{s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}s:14:\"wrapItemAndSub\";s:10:\"<li>|</li>\";s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:20:\"description // title\";}}}i:3;s:5:\"TMENU\";s:2:\"3.\";a:5:{s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:6:\"expAll\";s:1:\"1\";s:4:\"wrap\";s:10:\"<ul>|</ul>\";s:3:\"NO.\";a:3:{s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}s:14:\"wrapItemAndSub\";s:10:\"<li>|</li>\";s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:20:\"description // title\";}}}i:4;s:5:\"TMENU\";s:2:\"4.\";a:5:{s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:6:\"expAll\";s:1:\"1\";s:4:\"wrap\";s:10:\"<ul>|</ul>\";s:3:\"NO.\";a:3:{s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}s:14:\"wrapItemAndSub\";s:10:\"<li>|</li>\";s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:20:\"description // title\";}}}i:5;s:5:\"TMENU\";s:2:\"5.\";a:5:{s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:6:\"expAll\";s:1:\"1\";s:4:\"wrap\";s:10:\"<ul>|</ul>\";s:3:\"NO.\";a:3:{s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}s:14:\"wrapItemAndSub\";s:10:\"<li>|</li>\";s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:20:\"description // title\";}}}i:6;s:5:\"TMENU\";s:2:\"6.\";a:5:{s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:6:\"expAll\";s:1:\"1\";s:4:\"wrap\";s:10:\"<ul>|</ul>\";s:3:\"NO.\";a:3:{s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}s:14:\"wrapItemAndSub\";s:10:\"<li>|</li>\";s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:20:\"description // title\";}}}i:7;s:5:\"TMENU\";s:2:\"7.\";a:5:{s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:6:\"expAll\";s:1:\"1\";s:4:\"wrap\";s:10:\"<ul>|</ul>\";s:3:\"NO.\";a:3:{s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}s:14:\"wrapItemAndSub\";s:10:\"<li>|</li>\";s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:20:\"description // title\";}}}s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}}s:17:\"categorized_pages\";s:5:\"HMENU\";s:18:\"categorized_pages.\";a:5:{s:7:\"special\";s:10:\"categories\";s:8:\"special.\";a:4:{s:6:\"value.\";a:1:{s:5:\"field\";s:19:\"selected_categories\";}s:9:\"relation.\";a:1:{s:5:\"field\";s:14:\"category_field\";}s:7:\"sorting\";s:5:\"title\";s:5:\"order\";s:3:\"asc\";}s:8:\"stdWrap.\";a:4:{s:7:\"prepend\";s:3:\"COA\";s:8:\"prepend.\";a:6:{s:8:\"stdWrap.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}}i:10;s:13:\"LOAD_REGISTER\";s:3:\"10.\";a:2:{s:25:\"accessibility_bypass_text\";s:4:\"TEXT\";s:26:\"accessibility_bypass_text.\";a:1:{s:5:\"field\";s:25:\"accessibility_bypass_text\";}}i:20;s:7:\"CONTENT\";s:3:\"20.\";a:4:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:5:{s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:9:\"andWhere.\";a:1:{s:8:\"dataWrap\";s:23:\"sorting>{field:sorting}\";}s:13:\"languageField\";s:16:\"sys_language_uid\";s:3:\"max\";s:1:\"1\";}s:9:\"renderObj\";s:4:\"TEXT\";s:10:\"renderObj.\";a:7:{s:8:\"required\";s:1:\"1\";s:4:\"data\";s:66:\"LLL:EXT:css_styled_content/pi1/locallang.xml:menu.bypassNavigation\";s:9:\"override.\";a:1:{s:4:\"data\";s:34:\"register:accessibility_bypass_text\";}s:4:\"trim\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:9:\"typolink.\";a:2:{s:10:\"parameter.\";a:1:{s:5:\"field\";s:3:\"pid\";}s:8:\"section.\";a:1:{s:5:\"field\";s:3:\"uid\";}}s:4:\"wrap\";s:33:\"<li class=\"csc-nav-bypass\">|</li>\";}}i:30;s:16:\"RESTORE_REGISTER\";}s:9:\"outerWrap\";s:54:\"<ul class=\"csc-menu csc-menu-categorized-pages\">|</ul>\";s:8:\"required\";s:1:\"1\";}i:1;s:5:\"TMENU\";s:2:\"1.\";a:3:{s:7:\"target.\";a:2:{s:8:\"override\";s:0:\"\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:20:\"TSFE:dtdAllowsFrames\";}}}}s:6:\"target\";s:0:\"\";s:3:\"NO.\";a:3:{s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}s:14:\"wrapItemAndSub\";s:10:\"<li>|</li>\";s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:20:\"description // title\";}}}}s:19:\"categorized_content\";s:7:\"RECORDS\";s:20:\"categorized_content.\";a:4:{s:11:\"categories.\";a:2:{s:5:\"field\";s:19:\"selected_categories\";s:9:\"relation.\";a:1:{s:5:\"field\";s:14:\"category_field\";}}s:6:\"tables\";s:10:\"tt_content\";s:5:\"conf.\";a:2:{s:10:\"tt_content\";s:4:\"TEXT\";s:11:\"tt_content.\";a:3:{s:5:\"field\";s:6:\"header\";s:9:\"typolink.\";a:2:{s:9:\"parameter\";s:23:\"{field:pid}#{field:uid}\";s:10:\"parameter.\";a:1:{s:10:\"insertData\";s:1:\"1\";}}s:4:\"wrap\";s:10:\"<li>|</li>\";}}s:4:\"wrap\";s:10:\"<ul>|</ul>\";}s:8:\"stdWrap.\";a:4:{s:5:\"wrap.\";a:3:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:4:{i:10;s:4:\"TEXT\";s:3:\"10.\";a:4:{s:5:\"field\";s:19:\"accessibility_title\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:8:\"dataWrap\";s:35:\"<map id=\"map{field:uid}\" title=\"|\">\";s:9:\"dataWrap.\";a:2:{s:8:\"override\";s:37:\"<map name=\"map{field:uid}\" title=\"|\">\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:8:\"isFalse.\";a:1:{s:4:\"data\";s:17:\"TSFE:xhtmlDoctype\";}}}}}i:20;s:4:\"TEXT\";s:3:\"20.\";a:1:{s:5:\"value\";s:7:\"|</map>\";}}s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:19:\"accessibility_title\";}}}s:9:\"editIcons\";s:28:\"tt_content: menu_type, pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:62:\"LLL:EXT:css_styled_content/pi1/locallang.xml:eIcon.menuSitemap\";}}s:13:\"prefixComment\";s:25:\"2 | Menu/Sitemap element:\";}}}s:8:\"shortcut\";s:3:\"COA\";s:9:\"shortcut.\";a:2:{i:20;s:7:\"RECORDS\";s:3:\"20.\";a:3:{s:7:\"source.\";a:1:{s:5:\"field\";s:7:\"records\";}s:6:\"tables\";s:98:\"tt_content,tt_address,tt_links,tt_guest,tt_board,tt_calender,tt_products,tt_news,tt_rating,tt_poll\";s:8:\"stdWrap.\";a:3:{s:9:\"editIcons\";s:19:\"tt_content: records\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:61:\"LLL:EXT:css_styled_content/pi1/locallang.xml:eIcon.recordList\";}}s:13:\"prefixComment\";s:46:\"2 | Inclusion of other records (by reference):\";}}}s:4:\"list\";s:3:\"COA\";s:5:\"list.\";a:3:{i:10;s:15:\"< lib.stdheader\";i:20;s:4:\"CASE\";s:3:\"20.\";a:12:{s:4:\"key.\";a:1:{s:5:\"field\";s:9:\"list_type\";}s:8:\"stdWrap.\";a:3:{s:9:\"editIcons\";s:60:\"tt_content: list_type, layout, select_key, pages [recursive]\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:57:\"LLL:EXT:css_styled_content/pi1/locallang.xml:eIcon.plugin\";}}s:13:\"prefixComment\";s:20:\"2 | Plugin inserted:\";}s:14:\"sjroffers_list\";s:4:\"USER\";s:15:\"sjroffers_list.\";a:4:{s:8:\"userFunc\";s:37:\"TYPO3\\CMS\\Extbase\\Core\\Bootstrap->run\";s:13:\"extensionName\";s:9:\"SjrOffers\";s:10:\"pluginName\";s:4:\"List\";s:10:\"vendorName\";s:3:\"Sjr\";}s:23:\"sjroffers_organizations\";s:4:\"USER\";s:24:\"sjroffers_organizations.\";a:4:{s:8:\"userFunc\";s:37:\"TYPO3\\CMS\\Extbase\\Core\\Bootstrap->run\";s:13:\"extensionName\";s:9:\"SjrOffers\";s:10:\"pluginName\";s:13:\"Organizations\";s:10:\"vendorName\";s:3:\"Sjr\";}s:15:\"sjroffers_admin\";s:4:\"USER\";s:16:\"sjroffers_admin.\";a:4:{s:8:\"userFunc\";s:37:\"TYPO3\\CMS\\Extbase\\Core\\Bootstrap->run\";s:13:\"extensionName\";s:9:\"SjrOffers\";s:10:\"pluginName\";s:5:\"Admin\";s:10:\"vendorName\";s:3:\"Sjr\";}s:15:\"blogexample_pi1\";s:4:\"USER\";s:16:\"blogexample_pi1.\";a:4:{s:8:\"userFunc\";s:37:\"TYPO3\\CMS\\Extbase\\Core\\Bootstrap->run\";s:13:\"extensionName\";s:11:\"BlogExample\";s:10:\"pluginName\";s:3:\"Pi1\";s:10:\"vendorName\";s:11:\"ExtbaseTeam\";}s:12:\"inventory_pi\";s:4:\"USER\";s:13:\"inventory_pi.\";a:4:{s:8:\"userFunc\";s:37:\"TYPO3\\CMS\\Extbase\\Core\\Bootstrap->run\";s:13:\"extensionName\";s:9:\"Inventory\";s:10:\"pluginName\";s:2:\"Pi\";s:10:\"vendorName\";s:7:\"OReilly\";}}}s:3:\"div\";s:4:\"TEXT\";s:4:\"div.\";a:5:{s:5:\"value\";s:4:\"<hr>\";s:8:\"override\";s:6:\"<hr />\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:17:\"TSFE:xhtmlDoctype\";}}}s:4:\"wrap\";s:28:\"<div class=\"divider\">|</div>\";s:13:\"prefixComment\";s:15:\"2 | Div element\";}s:4:\"html\";s:4:\"TEXT\";s:5:\"html.\";a:4:{s:5:\"field\";s:8:\"bodytext\";s:9:\"editIcons\";s:19:\"tt_content:bodytext\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:55:\"LLL:EXT:css_styled_content/pi1/locallang.xml:eIcon.html\";}}s:13:\"prefixComment\";s:21:\"2 | Raw HTML content:\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:3:{s:5:\"field\";s:5:\"CType\";s:4:\"wrap\";s:108:\"<p style=\"background-color: yellow;\"><b>ERROR:</b> Content Element type \"|\" has no rendering definition!</p>\";s:13:\"prefixComment\";s:28:\"2 | Unknown element message:\";}s:5:\"login\";s:3:\"COA\";s:6:\"login.\";a:2:{i:10;s:15:\"< lib.stdheader\";i:20;s:23:\"< plugin.tx_felogin_pi1\";}}s:4:\"page\";s:4:\"PAGE\";s:5:\"page.\";a:6:{s:11:\"includeCSS.\";a:2:{s:9:\"bootstrap\";s:75:\"EXT:helmbert_bootstrapsite/Resources/Public/Bootstrap/css/bootstrap.min.css\";s:20:\"bootstrap_responsive\";s:86:\"EXT:helmbert_bootstrapsite/Resources/Public/Bootstrap/css/bootstrap-responsive.min.css\";}s:10:\"includeJS.\";a:2:{s:6:\"jquery\";s:70:\"EXT:helmbert_bootstrapsite/Resources/Public/Jquery/jquery-1.9.1.min.js\";s:9:\"bootstrap\";s:73:\"EXT:helmbert_bootstrapsite/Resources/Public/Bootstrap/js/bootstrap.min.js\";}s:7:\"typeNum\";s:1:\"0\";s:7:\"bodyTag\";s:32:\"<body style=\"margin-top: 60px;\">\";i:10;s:13:\"FLUIDTEMPLATE\";s:3:\"10.\";a:4:{s:4:\"file\";s:70:\"EXT:helmbert_bootstrapsite/Resources/Private/Templates/Page/Index.html\";s:14:\"layoutRootPath\";s:53:\"EXT:helmbert_bootstrapsite/Resources/Private/Layouts/\";s:15:\"partialRootPath\";s:54:\"EXT:helmbert_bootstrapsite/Resources/Private/Partials/\";s:10:\"variables.\";a:6:{s:8:\"siteName\";s:4:\"TEXT\";s:9:\"siteName.\";a:1:{s:5:\"value\";s:13:\"Extbase/Fluid\";}s:10:\"navigation\";s:5:\"HMENU\";s:11:\"navigation.\";a:4:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:5:\"value\";s:1:\"1\";}i:1;s:5:\"TMENU\";s:2:\"1.\";a:5:{s:4:\"wrap\";s:24:\"<ul class=\"nav\"> | </ul>\";s:2:\"NO\";s:1:\"1\";s:3:\"NO.\";a:1:{s:8:\"linkWrap\";s:12:\"<li> | </li>\";}s:3:\"ACT\";s:1:\"1\";s:4:\"ACT.\";a:1:{s:8:\"linkWrap\";s:27:\"<li class=\"active\"> | </li>\";}}}s:7:\"content\";s:7:\"CONTENT\";s:8:\"content.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:3:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:8:\"colPos=0\";s:13:\"languageField\";s:16:\"sys_language_uid\";}}}}}s:7:\"module.\";a:6:{s:15:\"tx_blogexample.\";a:3:{s:9:\"settings.\";a:3:{s:12:\"postsPerPage\";s:1:\"3\";s:18:\"editorUsergroupUid\";s:1:\"1\";s:17:\"plaintextPageType\";s:3:\"778\";}s:12:\"persistence.\";a:1:{s:10:\"storagePid\";s:0:\"\";}s:5:\"view.\";a:4:{s:16:\"templateRootPath\";s:53:\"EXT:blog_example/Resources/Private/Backend/Templates/\";s:15:\"partialRootPath\";s:44:\"EXT:blog_example/Resources/Private/Partials/\";s:14:\"layoutRootPath\";s:51:\"EXT:blog_example/Resources/Private/Backend/Layouts/\";s:10:\"defaultPid\";s:4:\"auto\";}}s:20:\"tx_extensionmanager.\";a:2:{s:9:\"settings.\";a:1:{s:13:\"repositoryUid\";s:1:\"1\";}s:9:\"features.\";a:1:{s:20:\"skipDefaultArguments\";s:1:\"0\";}}s:11:\"tx_sysnote.\";a:1:{s:5:\"view.\";a:3:{s:14:\"layoutRootPath\";s:39:\"EXT:sys_note/Resources/Private/Layouts/\";s:16:\"templateRootPath\";s:41:\"EXT:sys_note/Resources/Private/Templates/\";s:15:\"partialRootPath\";s:40:\"EXT:sys_note/Resources/Private/Partials/\";}}s:10:\"tx_beuser.\";a:2:{s:12:\"persistence.\";a:1:{s:10:\"storagePid\";s:1:\"0\";}s:9:\"settings.\";a:1:{s:5:\"dummy\";s:3:\"foo\";}}s:9:\"tx_belog.\";a:2:{s:12:\"persistence.\";a:1:{s:8:\"classes.\";a:3:{s:38:\"TYPO3\\CMS\\Belog\\Domain\\Model\\LogEntry.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:7:\"sys_log\";s:8:\"columns.\";a:8:{s:7:\"userid.\";a:1:{s:13:\"mapOnProperty\";s:14:\"backendUserUid\";}s:7:\"recuid.\";a:1:{s:13:\"mapOnProperty\";s:9:\"recordUid\";}s:10:\"tablename.\";a:1:{s:13:\"mapOnProperty\";s:9:\"tableName\";}s:7:\"recpid.\";a:1:{s:13:\"mapOnProperty\";s:9:\"recordPid\";}s:11:\"details_nr.\";a:1:{s:13:\"mapOnProperty\";s:13:\"detailsNumber\";}s:3:\"IP.\";a:1:{s:13:\"mapOnProperty\";s:2:\"ip\";}s:10:\"workspace.\";a:1:{s:13:\"mapOnProperty\";s:12:\"workspaceUid\";}s:6:\"NEWid.\";a:1:{s:13:\"mapOnProperty\";s:5:\"newId\";}}}}s:39:\"TYPO3\\CMS\\Belog\\Domain\\Model\\Workspace.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:13:\"sys_workspace\";}}s:42:\"TYPO3\\CMS\\Belog\\Domain\\Model\\HistoryEntry.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:11:\"sys_history\";}}}}s:9:\"settings.\";a:3:{s:29:\"selectableNumberOfLogEntries.\";a:7:{i:20;s:2:\"20\";i:50;s:2:\"50\";i:100;s:3:\"100\";i:200;s:3:\"200\";i:500;s:3:\"500\";i:1000;s:4:\"1000\";i:1000000;s:3:\"any\";}s:21:\"selectableTimeFrames.\";a:8:{i:0;s:8:\"thisWeek\";i:1;s:8:\"lastWeek\";i:2;s:9:\"last7Days\";i:10;s:9:\"thisMonth\";i:11;s:9:\"lastMonth\";i:12;s:10:\"last31Days\";i:20;s:7:\"noLimit\";i:30;s:11:\"userDefined\";}s:18:\"selectableActions.\";a:7:{i:0;s:3:\"any\";i:1;s:14:\"actionDatabase\";i:2;s:10:\"actionFile\";i:3;s:11:\"actionCache\";i:254;s:14:\"actionSettings\";i:255;s:11:\"actionLogin\";i:-1;s:12:\"actionErrors\";}}}s:18:\"extension_builder.\";a:1:{s:9:\"settings.\";a:1:{s:20:\"codeTemplateRootPath\";s:62:\"EXT:extension_builder/Resources/Private/CodeTemplates/Extbase/\";}}}s:24:\"tx_blogexample_plaintext\";s:4:\"PAGE\";s:25:\"tx_blogexample_plaintext.\";a:4:{s:7:\"typeNum\";s:3:\"778\";i:10;s:4:\"USER\";s:3:\"10.\";a:4:{s:8:\"userFunc\";s:30:\"tx_extbase_core_bootstrap->run\";s:13:\"extensionName\";s:11:\"BlogExample\";s:10:\"pluginName\";s:3:\"Pi1\";s:28:\"switchableControllerActions.\";a:1:{s:5:\"Post.\";a:1:{i:1;s:5:\"index\";}}}s:7:\"config.\";a:5:{s:8:\"admPanel\";s:1:\"0\";s:8:\"no_cache\";s:1:\"1\";s:20:\"disableAllHeaderCode\";s:1:\"1\";s:17:\"additionalHeaders\";s:23:\"Content-type:text/plain\";s:15:\"defaultGetVars.\";a:1:{s:24:\"tx_blogexample_postlist.\";a:1:{s:6:\"format\";s:3:\"txt\";}}}}s:23:\"fluidAjaxWidgetResponse\";s:4:\"PAGE\";s:24:\"fluidAjaxWidgetResponse.\";a:4:{s:7:\"typeNum\";s:4:\"7076\";s:7:\"config.\";a:3:{s:8:\"no_cache\";s:1:\"1\";s:20:\"disableAllHeaderCode\";s:1:\"1\";s:17:\"additionalHeaders\";s:23:\"Content-type:text/plain\";}i:10;s:8:\"USER_INT\";s:3:\"10.\";a:1:{s:8:\"userFunc\";s:35:\"tx_fluid_core_widget_bootstrap->run\";}}s:9:\"sitetitle\";s:0:\"\";s:6:\"types.\";a:3:{i:0;s:4:\"page\";i:778;s:24:\"tx_blogexample_plaintext\";i:7076;s:23:\"fluidAjaxWidgetResponse\";}}'),(17,'6635c4a5fde71e5e3370e63c6e1627db',2145909600,'a:1:{s:32:\"bb033113e74c21275eb0dae3f0111148\";s:75:\"[globalVar = TYPO3_CONF_VARS|EXTCONF|blog_example|registerSinglePlugin > 0]\";}'),(18,'2c5051846e695f48f21eb45ae84f8dfa',1395063974,'a:2:{i:0;a:1:{s:8:\"linkWrap\";s:27:\"<li class=\"active\"> | </li>\";}i:1;a:1:{s:8:\"linkWrap\";s:12:\"<li> | </li>\";}}'),(19,'6345975392a2e8cbd2fc04fc46845611',2145909600,'a:1:{s:4:\"data\";a:1:{s:4:\"sDEF\";a:1:{s:4:\"lDEF\";a:2:{s:8:\"basePath\";a:1:{s:4:\"vDEF\";s:10:\"fileadmin/\";}s:8:\"pathType\";a:1:{s:4:\"vDEF\";s:8:\"relative\";}}}}}'),(20,'f8bb6408befa37d6a9b8812679241871',1395063980,'a:2:{i:0;a:1:{s:8:\"linkWrap\";s:12:\"<li> | </li>\";}i:1;a:1:{s:8:\"linkWrap\";s:27:\"<li class=\"active\"> | </li>\";}}');
/*!40000 ALTER TABLE `cf_cache_hash` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash_tags` DISABLE KEYS */;
INSERT INTO `cf_cache_hash_tags` VALUES (16,'e3e8fb16cc7a3554ca881164746eb1e2','ident_TS_TEMPLATE'),(17,'6635c4a5fde71e5e3370e63c6e1627db','ident_TMPL_CONDITIONS_ALL'),(18,'2c5051846e695f48f21eb45ae84f8dfa','ident_MENUDATA'),(19,'6345975392a2e8cbd2fc04fc46845611','ident_ident_xml2array'),(20,'f8bb6408befa37d6a9b8812679241871','ident_MENUDATA');
/*!40000 ALTER TABLE `cf_cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_cache_pages` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages` DISABLE KEYS */;
INSERT INTO `cf_cache_pages` VALUES (5,'d83a6b8da913d63322661abb7bda72a5',1395063974,'xú’io„6ˆÛ‰W®⁄˝ÍS>bÁ(rN3õÃM∫≈Jz∂ô»¢JRéç\"ˇ}ﬂ#%YŒ1v2È¢ êLæ˚&≈Ü˝·üjÿj]A¢˘òÉt˜‘–k›h◊cΩ`7bÉñı<Ø›ÓıZ,˙Aƒ˙m÷%∏˛–MŸ|π{|ÿ∂+°H4£˝÷Ó`0t˜:˝vr˚üÎ3g™gÒ·Œ>=úò%ìóÄEá;;˚3–Ã	ßL*–n¶«µ]⁄˛©Vsv>›Nπr P\\ÉÉØ©x\0	ë,$˛ÕsjOT %O&N\n\"ç¡—¬QH~BtÉxÃK\0G§ê8Jd2ÁƒäÏ\\±’ô—Îπd3xÚârÕY/ùP”ñ„øòJA:7˜å…©∏sX91!Q∏ü%Ó}˛˙[„ÛıeΩ¬:ÈRÚ…T;≠¡`∑÷n∂:é?%VwŒ(é‚\"Ai%T–XOÅKG¢ÑöœQëá§B6…X»”àg‰!GHdvA£ıu:l4Ù2^]»IcßVC´£›5◊1˛\"f∞ﬂ∞Ôπ/4¬Å;‰¿¥êÆì;˜¿µ:ıÍmÁ‰Í∆%Á≈<πGπ‚WÈej\n†]π!\r›ïrù©Ñ1˛&4Ã“∆\n÷ºñ◊	«°WG–ü[ﬁ†3Ë˜ª˝ÆÎÃ ‚Ï¿E/P<ºôJ=n–∆‚Y\0R˚ÅZi…Rä¶∆Ø`A5Æ≥\0›ÿ8.∂âT£ÆœxRë≠3ËzŸj1õ≈$ß´PÚT;JÜÔï‰À»e„Œ<j≠˙†ﬁ2¨Ô÷9Wîøcsf˘∫á˚\r˚v¯¢¨år˜‘_oïÜl”∞i?—“1é<pgLNxR”\":Ωf∫ÿ#wG|ÓÑ1SÍ¿Mÿ<`“±è\ZOÊòïP¸ÛDÑãHüûc!8¶Ì≠mR∂1^Ï|⁄«\\÷òÀV˚√-`ù8¯_≥]\'bö!√…ÑdE£È†XFU®¬÷∏VÓüˆU íÇ(G	jDéÏÉÎ≤ﬂ∞\nÿ¨TCbÈ*‰Ó!ñ¬Ä)hú«èˆÃÇØ∞T¡y™KW¿ê}ÃãﬂÃO˜–A÷ñ«™Ω®ß”Ùg¥]\'ØáA\Z1\'‹◊Ä1™/–ﬂ	ñ»e£ë≈π™(Ô!µ±∆ö≈™ø≈ˆNÒÃ;ØB	a\"ïBîêLo5Mõ7ïVølƒ¡∞πg€|»¬)¯Óz‘˝{¶cè˘ÑV¥Ç-≥„÷ƒÏ]ü\"óh‡{ñpL¯K¨sˇ∆FMçøÖ;ªCó:zÜ˝ì\0iÄ0/ƒ5!ã¡ß“É+]⁄ÚOœÃne]¯`ù\\\':$≤ôÕCÛªmFîR≤U˙åèò\Zﬁ\nyõv4¬V42Å2:FøÛU»øÆ°Ω>/–—’<˝¡Ë\\\Z≥Gà◊ˇﬁ1Ô?≠˘\Z⁄IÃG?\nˇhÕ†ßR<\\c¨|˙\\‡ºt∂!•AÂb|“ÛÑ%˙®Œ«sàL¨›¶!@éÛí‚\nÌV¢¶çî!aAGô4	Ö\'\'10ö\ns*-†(vñb& è1ŒëHËÇrz≈…ƒ¥…?∞¡÷≤—÷zIﬂSd«ì—ïà ùÛÆP+m—IÕXö¢´†∆<”$ÏW≤ä‰RKÂè}FË™BƒŸ,±B9k∆¥˝ñg|KÆ%∂R/ÛL3`∆j]ö’ıtJ«BeVæéARsu†£2\r◊ˇêVw+Kïˆ’Z≠≠µª≤ñ/\Zƒœ/Ω≠8øçaÖüÂ“Ò6r…≥Ï7Úm±Ä0¯‚Ωª9\nÌ”àæ¡Eª““~4·√\"\Zç6x∂k<Kêú∆):\0:íã∏\"i7†É•:µ∞ë¡PgÒ◊≠Ñ. m÷#1ÖÉã÷|#.µ{ä˘}îD∑<\'b\nD¥\rÖéÅ|äOÀπÓ◊ÿ÷Ó∑Ñßóx±n”ô“±òlÙC;áΩ$ÿuâlûΩÿW^ã√œRdÈ€Çq`ÇqBà/E£≠ã§≤`≤N˝E},‰Áú\\nÉà¬™\r»ÿ‘f\" dU:ƒ»™|1ûà∑àii⁄áÈ\nÎtê</7—iW‹…ÔCh>ﬂRûÅ≈∏%KWë‡H∆ŒIcÒF£PÑ‡t%Ä\Z)·ù¥í\",R<%qÌ®íM˙µ€+§xyDXußàhiÓñ˝bÏ€$$ÂBésY†Xb∏A7-x4¡G¯ŸFRÉ\n∆5\"pE∑%ñ\ZÕóÅo\Zh*8v—-Rù&b ö´ºÌÊŒ4Ω%-ÈotC«¢|KÈ∫V¢Â4=3ﬂﬂ\nõù[Yºå‘)«»‡âcoTØi·/ä¯¢ﬂﬁÿ°s÷Í$?‰’¶≥π∑Ê£Ïª⁄ﬁ¯ı∂W ˘c6¥jﬁ§∆˚™Ê¯{UÛ#ïyq_SÊ˚∆èßo≤⁄vË	sÏ|ºZ≥›ÕR·ˇÑ]æ¯*7Ô;VÇàE‰JÖå®<“\n.º6”≈≥§q~ö{\\LJÍ•&!˙ÊöÕ6u.™T¶=ÅPfk·˛\"*ÅôûöA zÆ]5Â1çˇ…izˆ«ñÒ¢`æ°Ùv-ä)ª◊„ù5‹#Ñgdöv›f(!ÈÉ\'Sí*Ω‘Éó˛ÇÎáÊ+´ûZoÓ‰ˇøçÒ¨§÷≈_Ú®d?OZ*N€≤ŒÎjıR{πØ–ÍªvRßın≥§rl6:∆Y˚lÅI√w%x?&…ﬁmΩ˜ÉM˛~ Éñêòÿ◊‹‹º–A˛œ¶qFgΩ’ù∆ìıÍ5Ã\nÁ±ò2∆Xg3	ï2›ˆH÷…5\"A{Ö\n€À§ÍÌå∫ÁÈ)åYÎ#9…Ë´ú™ﬁŒ¥Èx:IÑOœÃµèùz/ícXª0¬Ïça¬¬JÛ£/úˆ™Ë“ÏúcÙLØ@)‘¿\\V≠]=Ê5I¬LÃ!ÍÀMÓXh:Ü«Ö‡<Al∏°ØÌ[ò•ÁÊ∆¿^ìöKX1K—(Íãπ<mÊMiA∏ß\"‘∆á_Û”™B_\"µ<ú—úI*‡—ÅGUã‡JVÆ¥ÚR†Ω9H_¨Cív„A=Ÿi;ÿ5T∑V◊IÊûàDÀóYÃô™4h:√∞π_BÁÀiæBUñzt¥]äLWıÃƒäßîÍ‚†r¸ØÆ˜À#˝ì´ªb¯™p£ﬁEﬁ¬Û≥∏…Ç‘ˆÆ5Zë∏◊y·j\'ßUåÀ‰òº‚ÿh˜”ÁÊ„xˆ„π}*æ0\rÌJª≤·ãxmœ3zò[:òÆÈÿÓñ-À∑FÙ‘ŒèaÎTÃÕøô‡8¨¸ÙH!˘b4µûES˚Øé&˙ÿÚˇM•vo\rß÷«ÑS°¡ﬂ,úÚﬁAÌÂ∆~Uµbñﬂ äbãîK∞üéºA∑ŸÛ˝éıî√Û˚˘ø≥˜¯_¿t:'),(6,'6e4c6e311ec9094c781d9758a8a213f0',1395063980,'xú’\Z€r€∏ı9˛\nÜÌcu°.∂•»⁄q|…:Î€¨Ω›È‘DI∞)Ç@Y⁄K_Ú\'˘±ûêÈKd;ﬁŒ63	E‡‹Ô\0√˙[˝ﬂUﬂkˆ]B¨˘òÉt?®~ª’w7°lB€Û Ë5{ù`k€{[›m∂ÕZ^{‹$∏≠æõ∞	¯<t?~€Æ\"÷Håˆ[ùÕvﬂºﬂ?€ª¸«˘Å3’≥h∏1†á±x≤„BÏ“∞p∏±1òÅfN0eRÅﬁqS=Æm”ˆ˚ZÕŸxw9Â πÖë‚\Z¸ôà[ê:£•Éƒœ⁄NÕ·±J∏‰ÒƒI@$8Z8\n…¡{D70à«ú±pD±£D*pˆ¨»Œ	ãQù˝<îl∑Bﬁ QÆ9ã¢•H`⁄r¸â©§sq√òúäká≈°Ò\0bÖ˚i‚ﬁß”_\ZüŒèÎ%÷ÅHñíO¶⁄ÒzΩÌZ´Èu1æO¨Ó,P≈Eå“J(°!∞ûóéD	4ü£\"∑1HÖlé‚±ê3¶œ»Céê|î⁄ç÷◊Iø—–ÀD¥ÎBN\Zµ\ZZÌÆπé`xœQs!óÉÜ]»£%v‹	 Ü€Æìyx«µäm÷[Œﬁ…ÖKåx|É¬E;Æ“À‘@ª≤D\n\Z∫(Â:S	c|\'A4Ãí∆\n÷Ôı⁄^ªåÉvA⁄ΩNok´ª’uùÑúÌ∏Ë\n\näsB©«\r⁄òB4Å‘˛H≠¥d	ÖT„g∞—†\ZÁÈ}Ÿ¯òo©F\\üÒ∏$[ß◊mˇid´Q\\`ÿ`\\¨ì<Ø…Ì(ºVíœˇNA.◊ÊQÛÍΩ∫gX_W9óîøfsf˘∫√A√˛\ZæÖ(+£\\ﬂ˜◊K•!€4lY\ZåD∏tå#w‹ì◊¥H˙Œf3Y| wá|ÓSj«çŸ|ƒ§c5éÖµ,ÛÑÑãHÔb!8¶ÌU6)€œwﬁ\r0°5&¥U¡æ∏9ÏH«˛≠YÇÆ2Õê·dB≤\"ä–tê/£*TfÎ\\+ˆèwï∞8\' QÇ\Zë#˚‡˙Ç\ZV˚¬\n5$÷Ø<A˛‚±éòÇ∆aîÚp–`ºj¿BÁæ.iTCˆ:»ÀRÁX´ıdö¸¿√ùñÎ3 Œ†ÅÄú#3Sn›ßp1™ ¥ –H£LUîwHΩ¨Q±∏CE8ﬂﬁ»üŸc„…@@HjãŒﬁŸÈÂ¡È•sp|pÇœø9h°~9+Ì¸s¨ˇ 9)‘\rZEº*®Ö0fi§m‹öÁQäx‘M1È Ïﬂ#Ùn0ıÜ«ÿ(Âî˛˙≠Äπ‚ë¥öç∞ÎfƒÌã˘∑Üô»M‡kiXÈÈ\\ä0Ω—#¯\rx0ç”xÇ≠g˙`Whold’ÌBåïlHõåìs¡g8¸ƒPç¯7à@X¨ˇ™â›⁄}˝\"5ü‘+€-Øïø[¬˜È˛å1œæ~ôÇ¨ ~í‚Î›à•∫J¥{ü$>…B$ˆìÊá8\\?îıÓ/°e\nU4ä13è—†Ê·¿Gùÿ/Ü∑Qø˘¡éÜ¶‡S…p?∞~õ&∆M3Âç˘ÑVz¥“ÎªXL/MI!ÇùæÎS°#\Z¯;ç9ˆáclã«·éÜEw∂˚.MÅ):“Lã}74?àk$ÅOù\nW∫¥ÂÔò]e]¯`kBùDËê»f6Ã{Àåµ(•d´Ùè\"\rI+`‰m¶ó+ú\\ÆL]π⁄Æ~Â!™ê=~Æ†Ωﬁ/´gW\'Û‡ÍW]Jcˆ\rÒ∂æÖ˜ë7oä÷|\nm/‚WﬂgÕ†ßR‹ûc¨ú\n}(0ª$4‹çwzÓ±X\Z¢9÷\Zäïæ€4(¿q∆Vò•®i!eà)wS-hzˆ(‡˜\"`tí»®x&@QÏ4¡L@c<{ °#j+N&¶M˘lûç6Ô1}˜ëèØND—’!è‡µ“ç∞ê‘å%	\n±\njÃ3S.Nq&œìK-ï?FÙ°´\\•≥ÿ\nëÁ¨ôÍWÙΩ∂apc°E€ËeñiÃX≠KÁ;=]É“±P9FëïOcê‘\\Ìé–Q©ÜsãåêV˜Yñ*Ïˇ§µºG≠µΩ≤ñ/s\Zƒœºõœ‚¸2Ü%~ñKßΩñKñeø`ıY, Ã¸ÒÇÌÖˆÈD∑∆E€““æ3·√Bö§◊x∂k<Kêú¶o:/:íπ\"i◊†ÀµoaCÉ€£:Œ¢”g	ùC⁄¨Gb8H≠˘Z\\jvÛ{7/yFƒà9:Ú>>-g∫ùc[ªyÜ <9F¿£™L[dJGb≤÷≠ˆò`´Ÿ<{¥Ø<á8–§…ÀÇ±gÇqBàèE£≠ã§“—§J˝Q},‰ßå\\fÉà¬™5»ÿ‘f8J‚AºpàëU˘\n\"Ù3b⁄¬õˆa∫BïíÁ„Â::≠˛ƒÄ[\"Ÿ\ZÁû)Oœb\\Ü•Å+±àq$\n¢Á§1áh≠Q(Bp∫∑@çî\rZA	™πˆ\rTÒ:˝Z≠R¥‹%,å∫}D¥4∑Ü~>ˆ≠ír!√9ŒQ,1‹†€9<I‡#¸l-©^	„∏¢6KçÊÀëo\Zh\"8v—g§:Mƒî5\'Y€ÕúizKR–_ÎÜéE9KËv\rV¢e4€fæπ6;üde\"Rß#É«>\r÷™◊¥G1E|^Ñ//Ï–øækµó≤j”Yﬂ[≥QˆUmo¸t€+‰¸>Z5z/R„uUs¸≠™˘ñ <:ÉWîŸ√æ1r˘§èY-;Ùv6^Ulw±T8≈ﬂcó->…≠˝ç	+Fƒ<r%BÜTiû\ZâÈcÖ§q˛&4wˇòî‘KMBlQòk6[◊π®Rôˆ¿ÉôV¬˝QTS=5Éîı\\´l è@4˛\'#§ÈŸo[∆ÛÇ˘Ç“€µ(¶ÏûåW÷6!< ”¥ÉÔsÜí~toJRÖó∂^‡•?`¿˙Æ˘ jÄß÷ãkyÖœ∆xVRUÒ+C˛wïÏáIK≈Èπ¨≥˙ÇZ=VƒÔ+táÑ˙VNÍ¥ﬁmT.ÅÕÆ>‚¨}∞¿$è‡õºìdÔzØ¡}cìø^Å‚†%$&ˆ977/têˇ˝Øâπ ¨ÎÖØÆ•0û¨óØaV8w˘î1∆:õJ(ïÈVõdΩï\\#R¥\'®∞ΩL*ﬂŒ®ûÏ€˚Ï]9IÈKÆ*ﬂŒ¥Ëx:âÖOÃµèùzè‚èPπ0¬Ïç`¬ÇRÛ£Ø‚ˆ™ËÿÏbÙLO@)‘¿\\VUÆãÓ≤ö$a&Êê	ı˘\"Û,4√£\\p#6\\–G¶÷%ÃíCsc`ØIÕ%¨ò%hıŸ\\û6≥¶¥†‹}h„√”Ï¥*Ö–«H-ãg4gí\nxt‡aŸ\"∏í+^V\nt{“UH√n‹™{;^æÉ\rQCykuùdÓâH¥lôEú©RÉ¶3õ˚t∂åêÊ£eiiìé∂KëÍ2£M3±‚)•ºÿ+ˇÀÎ[≈ë˛ﬁ’]>|ï∏QÔ\"o·˘Y\\§£ƒˆÆ\n≠P‹Ë,ãpµì— «erLVql¥˚…CÛq<˚qâÃ>%_òÜˆ\0•U⁄ETŸk=Ã-L+:∂∫EÀÚ≠˝µÛ#òCïäπ˘7áïüÓ($ç&ÔA4µˇ–hB¬≈Á∂ˇóê*T|iLyoSπ≤ò \Zıò˚%ﬁäY|_Õ+2,.¡~?j˜∫ÕÕvoªi=egÒl«¸ó‹π˚/9Ô');
/*!40000 ALTER TABLE `cf_cache_pages` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages_tags` DISABLE KEYS */;
INSERT INTO `cf_cache_pages_tags` VALUES (6,'d83a6b8da913d63322661abb7bda72a5','pageId_2'),(7,'6e4c6e311ec9094c781d9758a8a213f0','pageId_3');
/*!40000 ALTER TABLE `cf_cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_cache_pagesection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_cache_pagesection` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection` DISABLE KEYS */;
INSERT INTO `cf_cache_pagesection` VALUES (3,'2_222419149',1397569558,'xú’VÎn”0~ï*@„$mZW °‚ÇâV!Ài‹ÃÃâ#€ŸV±æ;\'âù9›çã˚±ƒ«Á;ﬂπ|vJqåøk¯P!Ç≈®[F8»≤0éäYöl#•3ñÖ9eÒ.Dó,Çï∆È_\n!3*Œ®ö<ül>ü~à……á˜o»ŸÀèÎõ◊ü6Ì‚&≤ Ïöñµ`7ä\\¶÷º*;M¡´…ãI¯5X4^‡@IiﬁÒäµ˘D¯;«a˚íÿDkû∑‹a˚K3XP˚\\‚¿ƒóL9ˆD°€∏“G;»ÌhC\rÛ∑†B√çËlIüö5S¡©nﬂ!¨•≠Ë%º≠<KñsÍôÊ8t/„ÅÒúÁ9´|#ƒÑåî1ºeï‚ÄU˘±Z∑c§P≤©=6ëŸµˇç\\7YM¶èbÂÚ¬Ïk+±±6Î≠¨vºVÔmè¥ë\n‡§æ€>ÆâÊ0T€o•l*syDä—^‹’í·)e>™1Ç~ft{Âêæâ§ÇÍà`ól ﬂ¬0©8ªù”Åctøö–5E[Moe?¿ˇAMCuOï˙3rr¸cr:tΩVÚj›î›˝πpV‹ø∏¥∫>Xºb;⁄3˘≈M6ÓƒN%Gñ≈)äK¶É^á` ‹`´µ6{¡rh(¬L[ùÒÌ‘ëƒn^~§w$˜xF0áC˚¢\'0Ωs& å)ìAz⁄(Z∑Éòût≥k¿e5›Ïk©∑ä◊f ùE=©Éì\'‡m*±üJ©¥ü\r˚’∏\'¿zú@Ç˙¸oÕÉ(è5Õ ©[ÉI+êßrÌŸ83?»j\'∫õƒv«[[ˇπÔüv°3™ôCå-ìav¨ìµáÒ,≥8¬ËΩÆ§xùÖ8ì-}‘ù±Fﬂvbd∞’üµôxıkÈ∫Ωõæ)π€1•áÜáùë‹Zt$⁄ˆæî2†£ﬁL<ª√«Œ<k∏»ΩôßﬁÒ6]§‰ˆ7\ntÁÙíä¬Q;7•ò¬=(„)4ÇL]ü÷2S8°ï—œÃµÈsh≥]&Àtèéq6bìQ3”‘è∞Õ}∂˘‚Q∂^OÁäÊ≥é+q•?·Ç—˛JY∏≥?\0%r¥'),(4,'3_222419149',1397569580,'xú’VÌn€6}C0ã¢lŸ:`Ë:`¿–±Ql\nÇ≤hÖ-%\n$ÂƒH¸ÓªíHÖríÈ–ÂG$^ﬁsœ˝8§Ã&w˛EL ËÇ‘/Âyå1BògÈ.AI∂‡y\\0é˜1Çøt]í-HÙo)UŒ‰{¶gØf€.ﬂa˙˙›€?Ë˚ﬂÆ6˜o˛ﬁvã˚\\™íÚ[V5íﬂk^\ncπﬁà∫î¸R∂•®gøŒ‚—≈…êâ¥Rˆ/QÛ.üÑ‹	w/©K¥E«çHwO∞¥£uœ5â,>pM’‘≈~„∆úÌ øc,≥<‹Ç\n≠∞≤∑•CjŒÃ§`¶{á∞é∂f:z;3xVº,0-I$ŸQµ6$„µ(\n^áFà	ikE5…*#Øãs+¥nœi©U€l\"Û[˛[µiÛÜï‹ú≈*‘\'{l|¨‘≈⁄nv™ﬁã2∫xÎzd¨“\0ßÕ„ˆ	CçÄ°∫˛≥®T[€Gê$ÿ†JNˆp_HF‘¥R≈§∆˙ô≥›\'(áM§5TG%?i(√,ï¸aN\'A–”jBè‘Ñ®ö üıÅ◊–”„ˇERcâ/’˙>öÚ¸dö:ıΩ÷Íf”V˝%∫Ú∑^|:Ò,~Á{÷J;ªÇ‚f[c/A«ÉpÜjç‚lÌ‘Ìå1ˆ(y\rÖAÿy\'6±õ{1‡˙%‡GG˙Ñgs8uè z\n”ªÊ≤ π∂9§g¨fM7à˘Î~v≠∏™Á€c£ÃNã∆é§ãd ıp˙ºKá©`H•˚v∏O«6”R4$~pûE¨ÈdV^›¸+VÉ<µ\'xnœ≈YÑq@V{Ÿ_\'Æ;¡⁄˘/Cˇ¨ù3√=bjqòÏ≥ÁΩ¨L`qò’∆M≠Ï»≥Í-‘õhÇ†Óú∑Ê°ÉC†¯¨˛ºÀ$®\\{¿D◊››ÙQ´˝ûk36<ÓçÙ¡Í°—v˜E†îùf\Zÿ=?;Ûº≤fû{4ÿÙë“á*–]8úÛ+5É£vm+9á{P·94ÇÃ}üü◊2S8°µ5øÿ[;‰–eªN◊Ÿ=„b¬#£·∂m>√∂Ÿñ´œ≤\röx9W≤\\Ù\\ŸÑ+˚åˆk Z¡ù}˙kctˇ');
/*!40000 ALTER TABLE `cf_cache_pagesection` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_cache_pagesection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_cache_pagesection_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` DISABLE KEYS */;
INSERT INTO `cf_cache_pagesection_tags` VALUES (5,'2_222419149','pageId_2'),(6,'2_222419149','mpvarHash_222419149'),(7,'3_222419149','pageId_3'),(8,'3_222419149','mpvarHash_222419149');
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_cache_rootline` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline` DISABLE KEYS */;
INSERT INTO `cf_cache_rootline` VALUES (12,'1__0_0_0',1394981158,'a:1:{i:0;a:24:{s:3:\"pid\";s:1:\"0\";s:3:\"uid\";s:1:\"1\";s:9:\"t3ver_oid\";s:1:\"0\";s:10:\"t3ver_wsid\";s:1:\"0\";s:11:\"t3ver_state\";s:1:\"0\";s:5:\"title\";s:4:\"root\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";s:1:\"0\";s:6:\"hidden\";s:1:\"0\";s:9:\"starttime\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:8:\"fe_group\";s:0:\"\";s:16:\"extendToSubpages\";s:1:\"0\";s:7:\"doktype\";s:1:\"4\";s:8:\"TSconfig\";N;s:11:\"storage_pid\";s:1:\"0\";s:11:\"is_siteroot\";s:1:\"1\";s:9:\"mount_pid\";s:1:\"0\";s:12:\"mount_pid_ol\";s:1:\"0\";s:13:\"fe_login_mode\";s:1:\"0\";s:25:\"backend_layout_next_level\";s:1:\"0\";s:10:\"categories\";s:0:\"\";}}'),(13,'2__0_0_0',1394981158,'a:2:{i:1;a:24:{s:3:\"pid\";s:1:\"1\";s:3:\"uid\";s:1:\"2\";s:9:\"t3ver_oid\";s:1:\"0\";s:10:\"t3ver_wsid\";s:1:\"0\";s:11:\"t3ver_state\";s:1:\"0\";s:5:\"title\";s:4:\"Home\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";s:1:\"0\";s:6:\"hidden\";s:1:\"0\";s:9:\"starttime\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:8:\"fe_group\";s:1:\"0\";s:16:\"extendToSubpages\";s:1:\"0\";s:7:\"doktype\";s:1:\"1\";s:8:\"TSconfig\";N;s:11:\"storage_pid\";s:1:\"0\";s:11:\"is_siteroot\";s:1:\"0\";s:9:\"mount_pid\";s:1:\"0\";s:12:\"mount_pid_ol\";s:1:\"0\";s:13:\"fe_login_mode\";s:1:\"0\";s:25:\"backend_layout_next_level\";s:1:\"0\";s:10:\"categories\";s:0:\"\";}i:0;a:24:{s:3:\"pid\";s:1:\"0\";s:3:\"uid\";s:1:\"1\";s:9:\"t3ver_oid\";s:1:\"0\";s:10:\"t3ver_wsid\";s:1:\"0\";s:11:\"t3ver_state\";s:1:\"0\";s:5:\"title\";s:4:\"root\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";s:1:\"0\";s:6:\"hidden\";s:1:\"0\";s:9:\"starttime\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:8:\"fe_group\";s:0:\"\";s:16:\"extendToSubpages\";s:1:\"0\";s:7:\"doktype\";s:1:\"4\";s:8:\"TSconfig\";N;s:11:\"storage_pid\";s:1:\"0\";s:11:\"is_siteroot\";s:1:\"1\";s:9:\"mount_pid\";s:1:\"0\";s:12:\"mount_pid_ol\";s:1:\"0\";s:13:\"fe_login_mode\";s:1:\"0\";s:25:\"backend_layout_next_level\";s:1:\"0\";s:10:\"categories\";s:0:\"\";}}'),(14,'3__0_0_0',1394981180,'a:2:{i:1;a:24:{s:3:\"pid\";s:1:\"1\";s:3:\"uid\";s:1:\"3\";s:9:\"t3ver_oid\";s:1:\"0\";s:10:\"t3ver_wsid\";s:1:\"0\";s:11:\"t3ver_state\";s:1:\"0\";s:5:\"title\";s:9:\"Inventory\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";s:1:\"0\";s:6:\"hidden\";s:1:\"0\";s:9:\"starttime\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:8:\"fe_group\";s:1:\"0\";s:16:\"extendToSubpages\";s:1:\"0\";s:7:\"doktype\";s:1:\"1\";s:8:\"TSconfig\";N;s:11:\"storage_pid\";s:1:\"0\";s:11:\"is_siteroot\";s:1:\"0\";s:9:\"mount_pid\";s:1:\"0\";s:12:\"mount_pid_ol\";s:1:\"0\";s:13:\"fe_login_mode\";s:1:\"0\";s:25:\"backend_layout_next_level\";s:1:\"0\";s:10:\"categories\";s:0:\"\";}i:0;a:24:{s:3:\"pid\";s:1:\"0\";s:3:\"uid\";s:1:\"1\";s:9:\"t3ver_oid\";s:1:\"0\";s:10:\"t3ver_wsid\";s:1:\"0\";s:11:\"t3ver_state\";s:1:\"0\";s:5:\"title\";s:4:\"root\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";s:1:\"0\";s:6:\"hidden\";s:1:\"0\";s:9:\"starttime\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:8:\"fe_group\";s:0:\"\";s:16:\"extendToSubpages\";s:1:\"0\";s:7:\"doktype\";s:1:\"4\";s:8:\"TSconfig\";N;s:11:\"storage_pid\";s:1:\"0\";s:11:\"is_siteroot\";s:1:\"1\";s:9:\"mount_pid\";s:1:\"0\";s:12:\"mount_pid_ol\";s:1:\"0\";s:13:\"fe_login_mode\";s:1:\"0\";s:25:\"backend_layout_next_level\";s:1:\"0\";s:10:\"categories\";s:0:\"\";}}');
/*!40000 ALTER TABLE `cf_cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` DISABLE KEYS */;
INSERT INTO `cf_cache_rootline_tags` VALUES (16,'1__0_0_0','pageId_1'),(17,'2__0_0_0','pageId_2'),(18,'2__0_0_0','pageId_1'),(19,'3__0_0_0','pageId_3'),(20,'3__0_0_0','pageId_1');
/*!40000 ALTER TABLE `cf_cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_extbase_datamapfactory_datamap` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` DISABLE KEYS */;
INSERT INTO `cf_extbase_datamapfactory_datamap` VALUES (10,'OReilly%Inventory%Domain%Model%Product',1394981180,'O:52:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMap\":19:{s:12:\"\0*\0className\";s:38:\"OReilly\\Inventory\\Domain\\Model\\Product\";s:12:\"\0*\0tableName\";s:33:\"tx_inventory_domain_model_product\";s:13:\"\0*\0recordType\";N;s:13:\"\0*\0subclasses\";a:0:{}s:13:\"\0*\0columnMaps\";a:10:{s:14:\"sysLanguageUid\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"sysLanguageUid\";s:13:\"\0*\0columnName\";s:16:\"sys_language_uid\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:10:\"l10nParent\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"l10nParent\";s:13:\"\0*\0columnName\";s:11:\"l10n_parent\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:14:\"l10nDiffsource\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"l10nDiffsource\";s:13:\"\0*\0columnName\";s:15:\"l10n_diffsource\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:11:\"PASSTHROUGH\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:10:\"t3verLabel\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"t3verLabel\";s:13:\"\0*\0columnName\";s:11:\"t3ver_label\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:6:\"hidden\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:6:\"hidden\";s:13:\"\0*\0columnName\";s:6:\"hidden\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:9:\"starttime\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:9:\"starttime\";s:13:\"\0*\0columnName\";s:9:\"starttime\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:7:\"endtime\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:7:\"endtime\";s:13:\"\0*\0columnName\";s:7:\"endtime\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:4:\"name\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:4:\"name\";s:13:\"\0*\0columnName\";s:4:\"name\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:11:\"description\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:11:\"description\";s:13:\"\0*\0columnName\";s:11:\"description\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:4:\"TEXT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:8:\"quantity\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:8:\"quantity\";s:13:\"\0*\0columnName\";s:8:\"quantity\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}}s:19:\"\0*\0pageIdColumnName\";s:3:\"pid\";s:23:\"\0*\0languageIdColumnName\";s:16:\"sys_language_uid\";s:30:\"\0*\0translationOriginColumnName\";s:11:\"l10n_parent\";s:29:\"\0*\0modificationDateColumnName\";s:6:\"tstamp\";s:25:\"\0*\0creationDateColumnName\";s:6:\"crdate\";s:20:\"\0*\0creatorColumnName\";s:9:\"cruser_id\";s:24:\"\0*\0deletedFlagColumnName\";s:7:\"deleted\";s:25:\"\0*\0disabledFlagColumnName\";s:6:\"hidden\";s:22:\"\0*\0startTimeColumnName\";s:9:\"starttime\";s:20:\"\0*\0endTimeColumnName\";s:7:\"endtime\";s:30:\"\0*\0frontendUserGroupColumnName\";N;s:23:\"\0*\0recordTypeColumnName\";N;s:11:\"\0*\0isStatic\";b:0;s:12:\"\0*\0rootLevel\";b:0;}');
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_extbase_datamapfactory_datamap_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_extbase_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=547 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_extbase_object` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object` DISABLE KEYS */;
INSERT INTO `cf_extbase_object` VALUES (477,'3bcc835c5d8d7866a0ce2dc41464b9a8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(478,'48ee39591354d5b031b745485de55720',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(479,'dbac534c00a92e4f7b105be73fba4655',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(480,'a6993d6ce1dd11daab5560826404f359',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:60:\"TYPO3\\CMS\\Extbase\\Configuration\\FrontendConfigurationManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:15:\"flexFormService\";s:41:\"TYPO3\\CMS\\Extbase\\Service\\FlexFormService\";s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:17:\"typoScriptService\";s:43:\"TYPO3\\CMS\\Extbase\\Service\\TypoScriptService\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(481,'7e27373c7241e8ff24a8f03a1b8705d9',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:41:\"TYPO3\\CMS\\Extbase\\Service\\FlexFormService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(482,'d9a9ae73d3607000daec9828154ef861',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:43:\"TYPO3\\CMS\\Extbase\\Service\\TypoScriptService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(483,'3316fa0a4297a6ddcca7021a1565a7e9',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\TemplateParser\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(484,'e8d805b35474fd740277e82b2633dfdc',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Fluid\\Core\\Rendering\\RenderingContext\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:31:\"injectTemplateVariableContainer\";s:57:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TemplateVariableContainer\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:27:\"viewHelperVariableContainer\";s:59:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\ViewHelperVariableContainer\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(485,'6e9736d7b31f65e8bab9afe208da72f5',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:57:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TemplateVariableContainer\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:13:\"variableArray\";s:12:\"defaultValue\";a:0:{}}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(486,'a640fdb9512138cae8d3d392619d9034',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:59:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\ViewHelperVariableContainer\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(487,'ffab3d90bc879cb5f9bc7dad6eeca0fe',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:33:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\Request\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:3:{s:11:\"hashService\";s:51:\"TYPO3\\CMS\\Extbase\\Security\\Cryptography\\HashService\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(488,'b50521e5e180c67942dcfb9564f33b28',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:51:\"TYPO3\\CMS\\Extbase\\Security\\Cryptography\\HashService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(489,'4162aee1fc2f8a1059d3c19ec4daa1c7',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\Routing\\UriBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:3:{s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:16:\"extensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(490,'161ec4a31f0f6bbc932fcc1ae6d48887',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(491,'6c06740645171b100a0605c1774e691c',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\ControllerContext\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:3:{s:19:\"flashMessageService\";s:44:\"TYPO3\\CMS\\Core\\Messaging\\FlashMessageService\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:16:\"extensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(492,'fcd3672a290f64f6875bb8d84ef8362b',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Core\\Messaging\\FlashMessageService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(493,'5ed31dbb2262e355409980a4c85adca5',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Fluid\\Core\\Compiler\\TemplateCompiler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(494,'82775a44b14c5ee1f99fb06534415b03',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:41:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\Configuration\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(495,'f542e57a147c74616c2c14ae45a7da4e',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\Interceptor\\Escape\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(496,'434532454ee301095ce48df889c5685c',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\ParsingState\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:17:\"variableContainer\";s:57:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TemplateVariableContainer\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(497,'78b1b7823d2022e2377301c0f55ac4e6',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\SyntaxTree\\RootNode\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(498,'630b0da604b2c9cabe61e71b441dd0e2',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\SyntaxTree\\TextNode\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:1:{s:4:\"name\";s:4:\"text\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(499,'1fb2371d594668a70e77b8c6ad79fab3',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:57:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\SyntaxTree\\ObjectAccessorNode\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:1:{s:4:\"name\";s:10:\"objectPath\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(500,'c7cb88ec1a57cdfb6bb3a8518f770ffe',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:61:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\HtmlspecialcharsViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(501,'33557becb5fd776e48ac1a4e8877c048',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(502,'4a3a325facbf7a9fc8d188cb22d15301',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:53:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\SyntaxTree\\ViewHelperNode\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:2:{i:0;a:2:{s:4:\"name\";s:10:\"viewHelper\";s:10:\"dependency\";s:50:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\AbstractViewHelper\";}i:1;a:1:{s:4:\"name\";s:9:\"arguments\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(503,'5b9bc39514aff3e59f378bd70fcc2a90',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\RawViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(504,'1c4ccf3b1c0e8b02b14c2468bd494521',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:56:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\PersistenceManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:3:{s:12:\"queryFactory\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryFactoryInterface\";s:7:\"backend\";s:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\BackendInterface\";s:18:\"persistenceSession\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(505,'a0b1e155c87dc5e77879a87871025d81',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryFactory\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:3:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:10:\"dataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(506,'07a1866183ac6e1ac9234808c4928fb3',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:7:{s:11:\"identityMap\";s:49:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\IdentityMap\";s:17:\"reflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:10:\"qomFactory\";s:65:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\QueryObjectModelFactory\";s:18:\"persistenceSession\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";s:14:\"dataMapFactory\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapFactory\";s:12:\"queryFactory\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryFactoryInterface\";s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(507,'1a3b2f16107ec1391d0da233f4a07261',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\IdentityMap\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:18:\"persistenceSession\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(508,'b2d13edc404dad53fde6e8ed67946954',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:17:\"reflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(509,'7b6eafa37459ae90810443b105992a61',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:65:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\QueryObjectModelFactory\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(510,'2c1c56e551397ae5c80783e1cf2c3eda',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapFactory\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:17:\"reflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:12:\"cacheManager\";s:33:\"TYPO3\\CMS\\Core\\Cache\\CacheManager\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(511,'993ae131d5bac2569b6e9d01b5777ed7',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Backend\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:20:\"configurationManager\";s:10:\"dependency\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:6:{s:7:\"session\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";s:17:\"reflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:10:\"qomFactory\";s:65:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\QueryObjectModelFactory\";s:14:\"storageBackend\";s:62:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Storage\\BackendInterface\";s:10:\"dataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:20:\"signalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(512,'01ab75a69565e18f3f821b42318e0ff1',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:60:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Storage\\Typo3DbBackend\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:5:{s:10:\"dataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:12:\"cacheService\";s:38:\"TYPO3\\CMS\\Extbase\\Service\\CacheService\";s:12:\"cacheManager\";s:33:\"TYPO3\\CMS\\Core\\Cache\\CacheManager\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(513,'d3b9a967a6af09d391d44dc0c1d5c4ff',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:38:\"TYPO3\\CMS\\Extbase\\Service\\CacheService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:18:\"injectCacheManager\";s:33:\"TYPO3\\CMS\\Core\\Cache\\CacheManager\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(514,'f4161c7b5ff989cc5937476177f76d76',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(515,'81de039aca085362d0579722eb57e000',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Extbase\\Mvc\\RequestHandlerResolver\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:3:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:17:\"reflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(516,'02602cfbe105200536e162488f3b34d8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestHandler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:6:{s:23:\"ajaxWidgetContextHolder\";s:51:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\AjaxWidgetContextHolder\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:14:\"requestBuilder\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestBuilder\";s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:10:\"dispatcher\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(517,'17dd4738af3c1aa88da935f7c7461a76',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:51:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\AjaxWidgetContextHolder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(518,'38da5993ff181e4a0878ed613360749b',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:29:\"injectAjaxWidgetContextHolder\";s:51:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\AjaxWidgetContextHolder\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:16:\"extensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(519,'3ed752e7ea60eee5026a21c8b9990a63',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:13:\"objectManager\";s:10:\"dependency\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:17:\"reflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:20:\"signalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(520,'1a281c1a4f3a0a8df38130ed92e539a8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\FrontendRequestHandler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:6:{s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:16:\"extensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:10:\"dispatcher\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:14:\"requestBuilder\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\RequestBuilder\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(521,'97da3abbad45298c6665a64c93a84160',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\RequestBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:16:\"extensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(522,'a4a0eb9689419bdf7e2be55e876763a2',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\BackendRequestHandler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:10:\"dispatcher\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:14:\"requestBuilder\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\RequestBuilder\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(523,'8b1d5067ef201f9397a919b581c2febb',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestHandler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:10:\"dispatcher\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:14:\"requestBuilder\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestBuilder\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(524,'a85a0e954caaa9232e9c899c517e8c23',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:17:\"reflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:14:\"commandManager\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\CommandManager\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(525,'73785a4df7cf6265f746a280a022f98d',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\CommandManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(526,'72a02a2afa1e8aed876e2ed7fab01e20',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:53:\"TYPO3\\CMS\\Extbase\\Security\\Channel\\RequestHashService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:11:\"hashService\";s:51:\"TYPO3\\CMS\\Extbase\\Security\\Cryptography\\HashService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(527,'65aa369e3ef7755812afb4329fd61d4d',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:34:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\Response\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(528,'6c136dff66af52cdcd9d84d8b97a6499',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"OReilly\\Inventory\\Controller\\ProductController\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:27:\"injectFlashMessageContainer\";s:54:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\FlashMessageContainer\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:7:{s:17:\"productRepository\";s:53:\"OReilly\\Inventory\\Domain\\Repository\\ProductRepository\";s:17:\"reflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:12:\"cacheService\";s:38:\"TYPO3\\CMS\\Extbase\\Service\\CacheService\";s:38:\"mvcPropertyMappingConfigurationService\";s:71:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\MvcPropertyMappingConfigurationService\";s:20:\"signalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";s:24:\"deprecatedPropertyMapper\";s:33:\"TYPO3\\CMS\\Extbase\\Property\\Mapper\";s:17:\"validatorResolver\";s:46:\"TYPO3\\CMS\\Extbase\\Validation\\ValidatorResolver\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(529,'52b735058f3ab10579fbc382b26f85ac',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\Arguments\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(530,'ffb3215815a9810f8d66a8304cf46b41',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:54:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\FlashMessageContainer\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(531,'65c014190d645817e0c9174ed706838b',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:53:\"OReilly\\Inventory\\Domain\\Repository\\ProductRepository\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:13:\"objectManager\";s:10:\"dependency\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:11:\"identityMap\";s:49:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\IdentityMap\";s:7:\"backend\";s:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\BackendInterface\";s:7:\"session\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";s:18:\"persistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(532,'71dc71d2ae1928473ef30d8028432258',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:71:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\MvcPropertyMappingConfigurationService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:11:\"hashService\";s:51:\"TYPO3\\CMS\\Extbase\\Security\\Cryptography\\HashService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(533,'ca1298c72d5d4795cbe3c614a0aeea8f',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:33:\"TYPO3\\CMS\\Extbase\\Property\\Mapper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:5:{s:17:\"validatorResolver\";s:46:\"TYPO3\\CMS\\Extbase\\Validation\\ValidatorResolver\";s:17:\"reflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:18:\"persistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:12:\"queryFactory\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryFactoryInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(534,'c3680131daaff065daf3097af71f1980',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Extbase\\Validation\\ValidatorResolver\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:17:\"reflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(535,'b7435caf112d881773a587972170ccea',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:33:\"TYPO3\\CMS\\Fluid\\View\\TemplateView\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:22:\"injectTemplateCompiler\";s:46:\"TYPO3\\CMS\\Fluid\\Core\\Compiler\\TemplateCompiler\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:14:\"templateParser\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\TemplateParser\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(536,'0c9864d50540c5c98ef6e9b2dd7e2762',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:43:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Query\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:1:{s:4:\"name\";s:4:\"type\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:10:\"dataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:18:\"persistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";s:10:\"qomFactory\";s:65:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\QueryObjectModelFactory\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(537,'ee36b5aa7e756497c1be0353ea554c27',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:56:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Typo3QuerySettings\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(538,'48f018e2873c2af1edd116918ebb6f2c',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMap\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:4:{i:0;a:1:{s:4:\"name\";s:9:\"className\";}i:1;a:1:{s:4:\"name\";s:9:\"tableName\";}i:2;a:2:{s:4:\"name\";s:10:\"recordType\";s:12:\"defaultValue\";N;}i:3;a:2:{s:4:\"name\";s:10:\"subclasses\";s:12:\"defaultValue\";a:0:{}}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(539,'9d8fa21d3f4c3a4f8c86686a248c4e46',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:2:{i:0;a:1:{s:4:\"name\";s:10:\"columnName\";}i:1;a:1:{s:4:\"name\";s:12:\"propertyName\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(540,'513918375379c108c2e5ced6ccfaff81',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Reflection\\ClassSchema\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:1:{s:4:\"name\";s:9:\"className\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:19:\"typeHandlingService\";s:45:\"TYPO3\\CMS\\Extbase\\Service\\TypeHandlingService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(541,'8e8a46863e8042a6325d3c0f542cb4e4',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:45:\"TYPO3\\CMS\\Extbase\\Service\\TypeHandlingService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(542,'6a53dafc39e8ae9870a1dc56f0f3f129',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryResult\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:5:\"query\";s:10:\"dependency\";s:44:\"TYPO3\\CMS\\Extbase\\Persistence\\QueryInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:10:\"dataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:18:\"persistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(543,'c2e9ae889aae6db5bc680e826e21142d',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:41:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\ForViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(544,'94720331734d5825fd7738bc922ef871',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\CropViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(545,'eaa726cb847b952868ce51ad1debc96a',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\Selector\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:2:{i:0;a:1:{s:4:\"name\";s:12:\"selectorName\";}i:1;a:1:{s:4:\"name\";s:12:\"nodeTypeName\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(546,'3c201a8b9b5446fe966f8833368df912',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:38:\"OReilly\\Inventory\\Domain\\Model\\Product\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}');
/*!40000 ALTER TABLE `cf_extbase_object` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_extbase_object_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_extbase_object_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_object_tags` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_extbase_reflection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_extbase_reflection` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection` DISABLE KEYS */;
INSERT INTO `cf_extbase_reflection` VALUES (18,'ReflectionData_Inventory',2145909600,'a:8:{s:19:\"reflectedClassNames\";a:1:{s:38:\"OReilly\\Inventory\\Domain\\Model\\Product\";i:1394977581;}s:18:\"classPropertyNames\";a:1:{s:38:\"OReilly\\Inventory\\Domain\\Model\\Product\";a:7:{i:0;s:4:\"name\";i:1;s:11:\"description\";i:2;s:8:\"quantity\";i:3;s:3:\"uid\";i:4;s:13:\"_localizedUid\";i:5;s:12:\"_languageUid\";i:6;s:3:\"pid\";}}s:15:\"classTagsValues\";a:0:{}s:16:\"methodTagsValues\";a:5:{s:38:\"OReilly\\Inventory\\Domain\\Model\\Product\";a:25:{s:7:\"getName\";a:1:{s:6:\"return\";a:1:{i:0;s:13:\"\\string $name\";}}s:7:\"setName\";a:2:{s:5:\"param\";a:1:{i:0;s:13:\"\\string $name\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:14:\"getDescription\";a:1:{s:6:\"return\";a:1:{i:0;s:20:\"\\string $description\";}}s:14:\"setDescription\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"\\string $description\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:11:\"getQuantity\";a:1:{s:6:\"return\";a:1:{i:0;s:18:\"\\integer $quantity\";}}s:11:\"setQuantity\";a:2:{s:5:\"param\";a:1:{i:0;s:18:\"\\integer $quantity\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:8:\"__wakeup\";a:1:{s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:6:\"getUid\";a:1:{s:6:\"return\";a:1:{i:0;s:40:\"integer the uid or NULL if none set yet.\";}}s:6:\"setPid\";a:2:{s:5:\"param\";a:1:{i:0;s:17:\"integer|NULL $pid\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:6:\"getPid\";a:1:{s:6:\"return\";a:1:{i:0;s:40:\"integer The pid or NULL if none set yet.\";}}s:12:\"_setProperty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"string $propertyName\";i:1;s:20:\"mixed $propertyValue\";}s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:12:\"_getProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:23:\"mixed The propertyValue\";}}s:14:\"_getProperties\";a:1:{s:6:\"return\";a:1:{i:0;s:20:\"array The properties\";}}s:12:\"_hasProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:101:\"boolean TRUE bool true if the property exists, FALSE if it doesn\'t exist or NULL in case of an error.\";}}s:6:\"_isNew\";a:1:{s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:19:\"_memorizeCleanState\";a:2:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omitted all persistable properties are memorized.\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:27:\"_memorizePropertyCleanState\";a:2:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omittet all persistable properties are memorized.\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:19:\"_getCleanProperties\";a:1:{s:6:\"return\";a:1:{i:0;s:5:\"array\";}}s:17:\"_getCleanProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omittet all persistable properties are memorized.\";}s:6:\"return\";a:1:{i:0;s:38:\"mixed The clean property value or NULL\";}}s:8:\"_isDirty\";a:3:{s:5:\"param\";a:1:{i:0;s:87:\"string $propertyName An optional name of a property to be checked if its value is dirty\";}s:6:\"throws\";a:1:{i:0;s:66:\"\\TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Exception\\TooDirtyException\";}s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:15:\"isPropertyDirty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"mixed $previousValue\";i:1;s:19:\"mixed $currentValue\";}s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:8:\"_isClone\";a:1:{s:6:\"return\";a:1:{i:0;s:42:\"boolean TRUE if the object has been cloned\";}}s:9:\"_setClone\";a:1:{s:5:\"param\";a:1:{i:0;s:14:\"boolean $clone\";}}s:7:\"__clone\";a:1:{s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:10:\"__toString\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}}s:51:\"TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\";a:10:{s:6:\"setPid\";a:2:{s:5:\"param\";a:1:{i:0;s:17:\"integer|NULL $pid\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:12:\"_setProperty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"string $propertyName\";i:1;s:20:\"mixed $propertyValue\";}s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:12:\"_getProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:23:\"mixed The propertyValue\";}}s:12:\"_hasProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:101:\"boolean TRUE bool true if the property exists, FALSE if it doesn\'t exist or NULL in case of an error.\";}}s:19:\"_memorizeCleanState\";a:2:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omitted all persistable properties are memorized.\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:27:\"_memorizePropertyCleanState\";a:2:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omittet all persistable properties are memorized.\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:17:\"_getCleanProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omittet all persistable properties are memorized.\";}s:6:\"return\";a:1:{i:0;s:38:\"mixed The clean property value or NULL\";}}s:8:\"_isDirty\";a:3:{s:5:\"param\";a:1:{i:0;s:87:\"string $propertyName An optional name of a property to be checked if its value is dirty\";}s:6:\"throws\";a:1:{i:0;s:66:\"\\TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Exception\\TooDirtyException\";}s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:15:\"isPropertyDirty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"mixed $previousValue\";i:1;s:19:\"mixed $currentValue\";}s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:9:\"_setClone\";a:1:{s:5:\"param\";a:1:{i:0;s:14:\"boolean $clone\";}}}s:41:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\ForViewHelper\";a:1:{s:6:\"render\";a:3:{s:5:\"param\";a:5:{i:0;s:86:\"array $each The array or \\TYPO3\\CMS\\Extbase\\Persistence\\ObjectStorage to iterated over\";i:1;s:45:\"string $as The name of the iteration variable\";i:2;s:67:\"string $key The name of the variable to store the current array key\";i:3;s:96:\"boolean $reverse If enabled, the iterator will start with the last element and proceed reversely\";i:4;s:120:\"string $iteration The name of the variable to store iteration information (index, cycle, isFirst, isLast, isEven, isOdd)\";}s:6:\"return\";a:1:{i:0;s:22:\"string Rendered string\";}s:3:\"api\";a:0:{}}}s:49:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\CropViewHelper\";a:1:{s:6:\"render\";a:2:{s:5:\"param\";a:4:{i:0;s:57:\"integer $maxCharacters Place where to truncate the string\";i:1;s:53:\"string $append What to append, if truncation happened\";i:2;s:116:\"boolean $respectWordBoundaries If TRUE and division is in the middle of a word, the remains of that word is removed.\";i:3;s:153:\"boolean $respectHtml If TRUE the cropped string will respect HTML tags and entities. Technically that means, that cropHTML() is called rather than crop()\";}s:6:\"return\";a:1:{i:0;s:19:\"string cropped text\";}}}s:61:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\HtmlspecialcharsViewHelper\";a:1:{s:6:\"render\";a:4:{s:5:\"param\";a:4:{i:0;s:30:\"string $value string to format\";i:1;s:96:\"boolean $keepQuotes if TRUE, single and double quotes won\'t be replaced (sets ENT_NOQUOTES flag)\";i:2;s:16:\"string $encoding\";i:3;s:109:\"boolean $doubleEncode If FALSE existing html entities won\'t be encoded, the default is to convert everything.\";}s:6:\"return\";a:1:{i:0;s:25:\"string the altered string\";}s:3:\"see\";a:1:{i:0;s:55:\"http://www.php.net/manual/function.htmlspecialchars.php\";}s:3:\"api\";a:0:{}}}}s:16:\"methodParameters\";a:5:{s:46:\"OReilly\\Inventory\\Controller\\ProductController\";a:3:{s:10:\"listAction\";a:0:{}s:16:\"initializeAction\";a:0:{}s:11:\"errorAction\";a:0:{}}s:38:\"OReilly\\Inventory\\Domain\\Model\\Product\";a:13:{s:7:\"setName\";a:1:{s:4:\"name\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:14:\"setDescription\";a:1:{s:11:\"description\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:11:\"setQuantity\";a:1:{s:8:\"quantity\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"integer\";}}s:6:\"setPid\";a:1:{s:3:\"pid\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:12:\"integer|NULL\";}}s:12:\"_setProperty\";a:2:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}s:13:\"propertyValue\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}}s:12:\"_getProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:12:\"_hasProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:19:\"_memorizeCleanState\";a:1:{s:12:\"propertyName\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}s:27:\"_memorizePropertyCleanState\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:17:\"_getCleanProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:8:\"_isDirty\";a:1:{s:12:\"propertyName\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}s:15:\"isPropertyDirty\";a:2:{s:13:\"previousValue\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}s:12:\"currentValue\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}}s:9:\"_setClone\";a:1:{s:5:\"clone\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"boolean\";}}}s:41:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\ForViewHelper\";a:1:{s:6:\"render\";a:5:{s:4:\"each\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"array\";}s:2:\"as\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}s:3:\"key\";a:8:{s:8:\"position\";i:2;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";s:0:\"\";s:4:\"type\";s:6:\"string\";}s:7:\"reverse\";a:8:{s:8:\"position\";i:3;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:9:\"iteration\";a:8:{s:8:\"position\";i:4;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}}s:49:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\CropViewHelper\";a:1:{s:6:\"render\";a:4:{s:13:\"maxCharacters\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"integer\";}s:6:\"append\";a:8:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";s:3:\"...\";s:4:\"type\";s:6:\"string\";}s:21:\"respectWordBoundaries\";a:8:{s:8:\"position\";i:2;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:1;s:4:\"type\";s:7:\"boolean\";}s:11:\"respectHtml\";a:8:{s:8:\"position\";i:3;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:1;s:4:\"type\";s:7:\"boolean\";}}}s:61:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\HtmlspecialcharsViewHelper\";a:1:{s:6:\"render\";a:4:{s:5:\"value\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:10:\"keepQuotes\";a:8:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:8:\"encoding\";a:8:{s:8:\"position\";i:2;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:12:\"doubleEncode\";a:8:{s:8:\"position\";i:3;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:1;s:4:\"type\";s:7:\"boolean\";}}}}s:18:\"propertyTagsValues\";a:1:{s:38:\"OReilly\\Inventory\\Domain\\Model\\Product\";a:7:{s:4:\"name\";a:2:{s:3:\"var\";a:1:{i:0;s:7:\"\\string\";}s:8:\"validate\";a:1:{i:0;s:8:\"NotEmpty\";}}s:11:\"description\";a:1:{s:3:\"var\";a:1:{i:0;s:7:\"\\string\";}}s:8:\"quantity\";a:2:{s:3:\"var\";a:1:{i:0;s:8:\"\\integer\";}s:8:\"validate\";a:1:{i:0;s:8:\"NotEmpty\";}}s:3:\"uid\";a:1:{s:3:\"var\";a:1:{i:0;s:87:\"int The uid of the record. The uid is only unique in the context of the database table.\";}}s:13:\"_localizedUid\";a:1:{s:3:\"var\";a:1:{i:0;s:142:\"int The uid of the localized record. In TYPO3 v4.x the property \"uid\" holds the uid of the record in default language (the translationOrigin).\";}}s:12:\"_languageUid\";a:1:{s:3:\"var\";a:1:{i:0;s:122:\"int The uid of the language of the object. In TYPO3 v4.x this is the uid of the language record in the table sys_language.\";}}s:3:\"pid\";a:1:{s:3:\"var\";a:1:{i:0;s:46:\"int The id of the page the record is \"stored\".\";}}}}s:13:\"taggedClasses\";a:0:{}s:13:\"classSchemata\";a:1:{s:38:\"OReilly\\Inventory\\Domain\\Model\\Product\";O:40:\"TYPO3\\CMS\\Extbase\\Reflection\\ClassSchema\":7:{s:12:\"\0*\0className\";s:38:\"OReilly\\Inventory\\Domain\\Model\\Product\";s:12:\"\0*\0modelType\";i:1;s:16:\"\0*\0aggregateRoot\";b:1;s:19:\"\0*\0uuidPropertyName\";N;s:13:\"\0*\0properties\";a:7:{s:4:\"name\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:11:\"description\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:8:\"quantity\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:3:\"uid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:13:\"_localizedUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:12:\"_languageUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:3:\"pid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}}s:21:\"\0*\0identityProperties\";a:0:{}s:22:\"\0*\0typeHandlingService\";O:45:\"TYPO3\\CMS\\Extbase\\Service\\TypeHandlingService\":0:{}}}}');
/*!40000 ALTER TABLE `cf_extbase_reflection` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_extbase_reflection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_extbase_reflection_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_tablecolumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_tablecolumns` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_extbase_typo3dbbackend_tablecolumns` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns` DISABLE KEYS */;
INSERT INTO `cf_extbase_typo3dbbackend_tablecolumns` VALUES (2,'tx_inventory_domain_model_product',1394981180,'a:25:{s:3:\"uid\";a:6:{s:5:\"Field\";s:3:\"uid\";s:4:\"Type\";s:7:\"int(11)\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:3:\"PRI\";s:7:\"Default\";N;s:5:\"Extra\";s:14:\"auto_increment\";}s:3:\"pid\";a:6:{s:5:\"Field\";s:3:\"pid\";s:4:\"Type\";s:7:\"int(11)\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:3:\"MUL\";s:7:\"Default\";s:1:\"0\";s:5:\"Extra\";s:0:\"\";}s:4:\"name\";a:6:{s:5:\"Field\";s:4:\"name\";s:4:\"Type\";s:12:\"varchar(255)\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";s:0:\"\";s:5:\"Extra\";s:0:\"\";}s:11:\"description\";a:6:{s:5:\"Field\";s:11:\"description\";s:4:\"Type\";s:4:\"text\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";}s:8:\"quantity\";a:6:{s:5:\"Field\";s:8:\"quantity\";s:4:\"Type\";s:7:\"int(11)\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";s:1:\"0\";s:5:\"Extra\";s:0:\"\";}s:6:\"tstamp\";a:6:{s:5:\"Field\";s:6:\"tstamp\";s:4:\"Type\";s:16:\"int(11) unsigned\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";s:1:\"0\";s:5:\"Extra\";s:0:\"\";}s:6:\"crdate\";a:6:{s:5:\"Field\";s:6:\"crdate\";s:4:\"Type\";s:16:\"int(11) unsigned\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";s:1:\"0\";s:5:\"Extra\";s:0:\"\";}s:9:\"cruser_id\";a:6:{s:5:\"Field\";s:9:\"cruser_id\";s:4:\"Type\";s:16:\"int(11) unsigned\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";s:1:\"0\";s:5:\"Extra\";s:0:\"\";}s:7:\"deleted\";a:6:{s:5:\"Field\";s:7:\"deleted\";s:4:\"Type\";s:19:\"tinyint(4) unsigned\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";s:1:\"0\";s:5:\"Extra\";s:0:\"\";}s:6:\"hidden\";a:6:{s:5:\"Field\";s:6:\"hidden\";s:4:\"Type\";s:19:\"tinyint(4) unsigned\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";s:1:\"0\";s:5:\"Extra\";s:0:\"\";}s:9:\"starttime\";a:6:{s:5:\"Field\";s:9:\"starttime\";s:4:\"Type\";s:16:\"int(11) unsigned\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";s:1:\"0\";s:5:\"Extra\";s:0:\"\";}s:7:\"endtime\";a:6:{s:5:\"Field\";s:7:\"endtime\";s:4:\"Type\";s:16:\"int(11) unsigned\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";s:1:\"0\";s:5:\"Extra\";s:0:\"\";}s:9:\"t3ver_oid\";a:6:{s:5:\"Field\";s:9:\"t3ver_oid\";s:4:\"Type\";s:7:\"int(11)\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:3:\"MUL\";s:7:\"Default\";s:1:\"0\";s:5:\"Extra\";s:0:\"\";}s:8:\"t3ver_id\";a:6:{s:5:\"Field\";s:8:\"t3ver_id\";s:4:\"Type\";s:7:\"int(11)\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";s:1:\"0\";s:5:\"Extra\";s:0:\"\";}s:10:\"t3ver_wsid\";a:6:{s:5:\"Field\";s:10:\"t3ver_wsid\";s:4:\"Type\";s:7:\"int(11)\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";s:1:\"0\";s:5:\"Extra\";s:0:\"\";}s:11:\"t3ver_label\";a:6:{s:5:\"Field\";s:11:\"t3ver_label\";s:4:\"Type\";s:12:\"varchar(255)\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";s:0:\"\";s:5:\"Extra\";s:0:\"\";}s:11:\"t3ver_state\";a:6:{s:5:\"Field\";s:11:\"t3ver_state\";s:4:\"Type\";s:10:\"tinyint(4)\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";s:1:\"0\";s:5:\"Extra\";s:0:\"\";}s:11:\"t3ver_stage\";a:6:{s:5:\"Field\";s:11:\"t3ver_stage\";s:4:\"Type\";s:7:\"int(11)\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";s:1:\"0\";s:5:\"Extra\";s:0:\"\";}s:11:\"t3ver_count\";a:6:{s:5:\"Field\";s:11:\"t3ver_count\";s:4:\"Type\";s:7:\"int(11)\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";s:1:\"0\";s:5:\"Extra\";s:0:\"\";}s:12:\"t3ver_tstamp\";a:6:{s:5:\"Field\";s:12:\"t3ver_tstamp\";s:4:\"Type\";s:7:\"int(11)\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";s:1:\"0\";s:5:\"Extra\";s:0:\"\";}s:13:\"t3ver_move_id\";a:6:{s:5:\"Field\";s:13:\"t3ver_move_id\";s:4:\"Type\";s:7:\"int(11)\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";s:1:\"0\";s:5:\"Extra\";s:0:\"\";}s:10:\"t3_origuid\";a:6:{s:5:\"Field\";s:10:\"t3_origuid\";s:4:\"Type\";s:7:\"int(11)\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";s:1:\"0\";s:5:\"Extra\";s:0:\"\";}s:16:\"sys_language_uid\";a:6:{s:5:\"Field\";s:16:\"sys_language_uid\";s:4:\"Type\";s:7:\"int(11)\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";s:1:\"0\";s:5:\"Extra\";s:0:\"\";}s:11:\"l10n_parent\";a:6:{s:5:\"Field\";s:11:\"l10n_parent\";s:4:\"Type\";s:7:\"int(11)\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:3:\"MUL\";s:7:\"Default\";s:1:\"0\";s:5:\"Extra\";s:0:\"\";}s:15:\"l10n_diffsource\";a:6:{s:5:\"Field\";s:15:\"l10n_diffsource\";s:4:\"Type\";s:10:\"mediumblob\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";}}');
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_tablecolumns_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cf_extbase_typo3dbbackend_tablecolumns_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `subgroup` tinytext COLLATE utf8_unicode_ci,
  `TSconfig` text COLLATE utf8_unicode_ci,
  `tx_extbase_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `felogin_redirectPid` tinytext COLLATE utf8_unicode_ci,
  `tx_phpunit_is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `phpunit_dummy` (`tx_phpunit_is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `fe_session_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_session_data` (
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` mediumblob,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hash`),
  KEY `tstamp` (`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `fe_session_data` WRITE;
/*!40000 ALTER TABLE `fe_session_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_session_data` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` blob,
  `ses_permanent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `usergroup` tinytext COLLATE utf8_unicode_ci,
  `disable` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `middle_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `telephone` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uc` blob,
  `title` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `www` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image` tinytext COLLATE utf8_unicode_ci,
  `TSconfig` text COLLATE utf8_unicode_ci,
  `fe_cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `is_online` int(10) unsigned NOT NULL DEFAULT '0',
  `tx_extbase_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `felogin_redirectPid` tinytext COLLATE utf8_unicode_ci,
  `felogin_forgotHash` varchar(80) COLLATE utf8_unicode_ci DEFAULT '',
  `tx_phpunit_is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`),
  KEY `username` (`username`),
  KEY `is_online` (`is_online`),
  KEY `phpunit_dummy` (`tx_phpunit_is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `perms_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_user` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_group` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_everybody` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `editlock` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `storage_pid` int(11) NOT NULL DEFAULT '0',
  `is_siteroot` tinyint(4) NOT NULL DEFAULT '0',
  `php_tree_stop` tinyint(4) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `no_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `url_scheme` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `media` text COLLATE utf8_unicode_ci,
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8_unicode_ci,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `no_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text COLLATE utf8_unicode_ci,
  `module` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extendToSubpages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_hide` tinyint(4) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` tinyint(4) NOT NULL DEFAULT '0',
  `alias` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_cfg` tinyint(4) NOT NULL DEFAULT '0',
  `fe_login_mode` tinyint(4) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) COLLATE utf8_unicode_ci DEFAULT '',
  `backend_layout_next_level` varchar(64) COLLATE utf8_unicode_ci DEFAULT '',
  `tx_phpunit_is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`sorting`),
  KEY `alias` (`alias`),
  KEY `phpunit_dummy` (`tx_phpunit_is_dummy_record`),
  KEY `determineSiteRoot` (`deleted`,`hidden`,`is_siteroot`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,0,0,0,'',0,0,0,0,0,0,1368373473,512,0,0,0,0,0,0,0,1368361211,0,0,'root',4,NULL,0,1,0,0,'',0,0,0,2,0,0,'','',0,0,'','0',0,NULL,0,'',0,NULL,0,1368361211,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0',0,0),(2,1,0,0,0,'',0,0,0,0,0,0,1368373322,256,0,1,0,31,27,0,0,1368373303,1,0,'Home',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,1368373322,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0',0,0),(3,1,0,0,0,'',0,0,0,0,0,0,1369056007,512,0,1,0,31,27,0,0,1369055882,1,0,'Inventory',1,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,1372583767,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0',0,0),(4,0,0,0,0,'',0,0,0,0,0,0,1369056059,256,0,1,0,31,27,0,0,1369056045,1,0,'Inventory',254,NULL,0,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',NULL,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0',0,0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pages_language_overlay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_language_overlay` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `media` text COLLATE utf8_unicode_ci,
  `keywords` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `abstract` text COLLATE utf8_unicode_ci,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pages_language_overlay` WRITE;
/*!40000 ALTER TABLE `pages_language_overlay` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_language_overlay` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` text COLLATE utf8_unicode_ci,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sc_group` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `items` int(11) NOT NULL DEFAULT '0',
  `tx_phpunit_is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `phpunit_dummy` (`tx_phpunit_is_dummy_record`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  `tx_phpunit_is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `fieldname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablenames` (`uid_foreign`,`tablenames`),
  KEY `phpunit_dummy` (`tx_phpunit_is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `fe_group` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'static',
  `table_name` tinytext COLLATE utf8_unicode_ci,
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_collection` WRITE;
/*!40000 ALTER TABLE `sys_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_collection_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection_entries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_collection_entries` WRITE;
/*!40000 ALTER TABLE `sys_collection_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection_entries` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_domain` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `domainName` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirectTo` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirectHttpStatusCode` int(4) unsigned NOT NULL DEFAULT '301',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `prepend_params` int(10) NOT NULL DEFAULT '0',
  `forced` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `getSysDomain` (`redirectTo`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_domain` WRITE;
/*!40000 ALTER TABLE `sys_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_domain` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `storage` int(11) NOT NULL DEFAULT '0',
  `identifier` text COLLATE utf8_unicode_ci,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mime_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8_unicode_ci,
  `sha1` tinytext COLLATE utf8_unicode_ci,
  `size` int(11) NOT NULL DEFAULT '0',
  `creation_date` int(11) NOT NULL DEFAULT '0',
  `modification_date` int(11) NOT NULL DEFAULT '0',
  `tx_phpunit_is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `last_indexed` int(11) NOT NULL DEFAULT '0',
  `missing` tinyint(4) NOT NULL DEFAULT '0',
  `metadata` int(11) NOT NULL DEFAULT '0',
  `identifier_hash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `folder_hash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `sha1` (`sha1`(40)),
  KEY `phpunit_dummy` (`tx_phpunit_is_dummy_record`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sel01` (`storage`,`identifier_hash`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES (1,0,1368361797,'2',0,'/typo3/sysext/about/ext_icon.gif','gif','image/gif','ext_icon.gif','359ae0fb420fe8afe1a8b8bc5e46d75090a826b9',637,1368287531,1368287531,0,0,0,0,'',''),(2,0,1368361797,'2',0,'/typo3/sysext/aboutmodules/ext_icon.gif','gif','image/gif','ext_icon.gif','9d5fc8f9fab3a3efa46c1842d4f82da55cc93a7f',642,1368287531,1368287531,0,0,0,0,'',''),(3,0,1368361797,'2',0,'/typo3/sysext/adodb/ext_icon.gif','gif','image/gif','ext_icon.gif','2a54cd4dd32062ae916a12fedfee81c91cd94766',1030,1368287531,1368287531,0,0,0,0,'',''),(4,0,1368361797,'2',0,'/typo3/sysext/backend/ext_icon.png','png','image/png','ext_icon.png','fba9573807897088b0e67958a5f5d1ea96a50fae',344,1368287531,1368287531,0,0,0,0,'',''),(5,0,1368361797,'2',0,'/typo3/sysext/belog/ext_icon.gif','gif','image/gif','ext_icon.gif','ee7d55af61353254b82c663a3b532c53ee7324c7',359,1368287531,1368287531,0,0,0,0,'',''),(6,0,1368361797,'2',0,'/typo3/sysext/beuser/ext_icon.gif','gif','image/gif','ext_icon.gif','18ea9ee90f8537b1411a9053de731c6d61de0dbd',157,1368287531,1368287531,0,0,0,0,'',''),(7,0,1368361797,'2',0,'/typo3/sysext/cms/ext_icon.gif','gif','image/gif','ext_icon.gif','55d721454b6ae200c9512cc320a7f8c07a4a648e',357,1368287531,1368287531,0,0,0,0,'',''),(8,0,1368361797,'2',0,'/typo3/sysext/context_help/ext_icon.gif','gif','image/gif','ext_icon.gif','3bf69d49b8f991557bdc7430d533e3cd0794234a',619,1368287531,1368287531,0,0,0,0,'',''),(9,0,1368361797,'2',0,'/typo3/sysext/core/ext_icon.png','png','image/png','ext_icon.png','fba9573807897088b0e67958a5f5d1ea96a50fae',344,1368287531,1368287531,0,0,0,0,'',''),(10,0,1368361797,'2',0,'/typo3/sysext/cshmanual/ext_icon.gif','gif','image/gif','ext_icon.gif','a863b8384991b598fffd6c7a3f301457ba6d49cb',1051,1368287531,1368287531,0,0,0,0,'',''),(11,0,1368361797,'2',0,'/typo3/sysext/css_styled_content/ext_icon.gif','gif','image/gif','ext_icon.gif','0a78cb0d24ff27b8e1183e39d5ac6562a6e545ad',142,1368287531,1368287531,0,0,0,0,'',''),(12,0,1368361797,'2',0,'/typo3/sysext/dbal/ext_icon.gif','gif','image/gif','ext_icon.gif','2feadd53a6ebcde933910d6a9ee9b00d1c4dcda6',622,1368287551,1368287551,0,0,0,0,'',''),(13,0,1368361797,'2',0,'/typo3/sysext/extbase/ext_icon.gif','gif','image/gif','ext_icon.gif','23c189072cfe4edf1eb5038e4ebc62b013ccd57b',177,1368287568,1368287568,0,0,0,0,'',''),(14,0,1368361797,'2',0,'/typo3/sysext/extensionmanager/ext_icon.gif','gif','image/gif','ext_icon.gif','e67da46684aa49e6991ded936467fc063936032e',614,1368287531,1368287531,0,0,0,0,'',''),(15,0,1368361797,'2',0,'/typo3/sysext/extra_page_cm_options/ext_icon.gif','gif','image/gif','ext_icon.gif','a99cc2f0e36d9b7a146e703ad57a485096c70e5d',241,1368287531,1368287531,0,0,0,0,'',''),(16,0,1368361797,'2',0,'/typo3/sysext/feedit/ext_icon.gif','gif','image/gif','ext_icon.gif','0d19ca588b292b1e94aefb6fed4e8f2db3e97433',110,1368287531,1368287531,0,0,0,0,'',''),(17,0,1368361797,'2',0,'/typo3/sysext/felogin/ext_icon.gif','gif','image/gif','ext_icon.gif','3e627f00b843d94e3905b4fa490e6d41bdf9c969',194,1368287531,1368287531,0,0,0,0,'',''),(18,0,1368361797,'2',0,'/typo3/sysext/filelist/ext_icon.gif','gif','image/gif','ext_icon.gif','8ee012fc11e8da3042bc9a4df1e52109406b0c59',227,1368287531,1368287531,0,0,0,0,'',''),(19,0,1368361797,'2',0,'/typo3/sysext/fluid/ext_icon.gif','gif','image/gif','ext_icon.gif','23c189072cfe4edf1eb5038e4ebc62b013ccd57b',177,1368287576,1368287576,0,0,0,0,'',''),(20,0,1368361797,'2',0,'/typo3/sysext/form/ext_icon.gif','gif','image/gif','ext_icon.gif','9c735e89a469f015a4a1c43b3450c783dba8cbe4',622,1368287531,1368287531,0,0,0,0,'',''),(21,0,1368361797,'2',0,'/typo3/sysext/frontend/ext_icon.png','png','image/png','ext_icon.png','fba9573807897088b0e67958a5f5d1ea96a50fae',344,1368287531,1368287531,0,0,0,0,'',''),(22,0,1368361797,'2',0,'/typo3/sysext/func/ext_icon.gif','gif','image/gif','ext_icon.gif','530725c4a56f8b5b72efd09e6f7cf594f896e8e5',118,1368287531,1368287531,0,0,0,0,'',''),(23,0,1368361797,'2',0,'/typo3/sysext/func_wizards/ext_icon.gif','gif','image/gif','ext_icon.gif','5f4b36af8d29685a9bc44d425104a49334c6d34e',565,1368287531,1368287531,0,0,0,0,'',''),(24,0,1368361797,'2',0,'/typo3/sysext/impexp/ext_icon.gif','gif','image/gif','ext_icon.gif','21aa38a8577e0c6539a1dcf6bd880c381ec1de46',229,1368287531,1368287531,0,0,0,0,'',''),(25,0,1368361797,'2',0,'/typo3/sysext/indexed_search/ext_icon.gif','gif','image/gif','ext_icon.gif','3b1186bfb3b1fe3ed608f68a80949b20e7414a23',90,1368287531,1368287531,0,0,0,0,'',''),(26,0,1368361797,'2',0,'/typo3/sysext/indexed_search_mysql/ext_icon.gif','gif','image/gif','ext_icon.gif','3b1186bfb3b1fe3ed608f68a80949b20e7414a23',90,1368287531,1368287531,0,0,0,0,'',''),(27,0,1368361797,'2',0,'/typo3/sysext/info/ext_icon.gif','gif','image/gif','ext_icon.gif','d4e3ec69f6c7e02f9d2c5d749024bf46ab0c22e1',1000,1368287531,1368287531,0,0,0,0,'',''),(28,0,1368361797,'2',0,'/typo3/sysext/info_pagetsconfig/ext_icon.gif','gif','image/gif','ext_icon.gif','fb0fb3390936ad820c5b7436cd87d442123bd33d',619,1368287531,1368287531,0,0,0,0,'',''),(29,0,1368361797,'2',0,'/typo3/sysext/install/ext_icon.gif','gif','image/gif','ext_icon.gif','1e092ba01ec0babe2fe1b22b67c45de899c484c8',601,1368287531,1368287531,0,0,0,0,'',''),(30,0,1368361797,'2',0,'/typo3/sysext/lang/ext_icon.gif','gif','image/gif','ext_icon.gif','f35e159406d07c9675830bc51ef14a210f1cab1f',581,1368287531,1368287531,0,0,0,0,'',''),(31,0,1368361797,'2',0,'/typo3/sysext/linkvalidator/ext_icon.gif','gif','image/png','ext_icon.gif','cdada35018dfbdd57e6442ea038a0314677d9114',918,1368287580,1368287580,0,0,0,0,'',''),(32,0,1368361797,'2',0,'/typo3/sysext/lowlevel/ext_icon.gif','gif','image/gif','ext_icon.gif','c182aec01a3225de5f72ef272d0e8a59ec670d93',82,1368287531,1368287531,0,0,0,0,'',''),(33,0,1368361797,'2',0,'/typo3/sysext/opendocs/ext_icon.gif','gif','image/gif','ext_icon.gif','54f00d2070213715d290f2f813601a27c5277869',84,1368287531,1368287531,0,0,0,0,'',''),(34,0,1368361797,'2',0,'/typo3/sysext/openid/ext_icon.gif','gif','image/gif','ext_icon.gif','734c40675f05fd730cea8e39c77af5eb47cc4d9b',346,1368287531,1368287531,0,0,0,0,'',''),(35,0,1368361797,'2',0,'/typo3/sysext/perm/ext_icon.gif','gif','image/png','ext_icon.gif','03717e1ac333d0bef7a33a3ceff1305ef6deecbc',733,1368287531,1368287531,0,0,0,0,'',''),(36,0,1368361797,'2',0,'/typo3/sysext/recordlist/ext_icon.gif','gif','image/gif','ext_icon.gif','332e96b6dac59bffa4dbf87137e1fee4f44bd5d3',129,1368287532,1368287532,0,0,0,0,'',''),(37,0,1368361797,'2',0,'/typo3/sysext/recycler/ext_icon.gif','gif','image/gif','ext_icon.gif','1861cc8eecb71a20e757de83386ba3841ab4da1d',349,1368287532,1368287532,0,0,0,0,'',''),(38,0,1368361797,'2',0,'/typo3/sysext/reports/ext_icon.gif','gif','image/gif','ext_icon.gif','ee7d55af61353254b82c663a3b532c53ee7324c7',359,1368287772,1368287772,0,0,0,0,'',''),(39,0,1368361797,'2',0,'/typo3/sysext/rsaauth/ext_icon.gif','gif','image/gif','ext_icon.gif','70c2aab11e104ec14fc3934f28201630d0935b8a',850,1368287532,1368287532,0,0,0,0,'',''),(40,0,1368361797,'2',0,'/typo3/sysext/rtehtmlarea/ext_icon.gif','gif','image/gif','ext_icon.gif','5061eebad398d086cc5dfafb2182c159a723af56',161,1368287532,1368287532,0,0,0,0,'',''),(41,0,1368361797,'2',0,'/typo3/sysext/saltedpasswords/ext_icon.gif','gif','image/gif','ext_icon.gif','a6a08a082b189dd1f669595ac91fc90fde913e23',282,1368287532,1368287532,0,0,0,0,'',''),(42,0,1368361797,'2',0,'/typo3/sysext/scheduler/ext_icon.gif','gif','image/gif','ext_icon.gif','405729c40df7f0e38105583492a8d33bae1db0fe',667,1368287532,1368287532,0,0,0,0,'',''),(43,0,1368361797,'2',0,'/typo3/sysext/setup/ext_icon.gif','gif','image/gif','ext_icon.gif','efba11523cbede8368582445e9036f4eab580d3f',231,1368287532,1368287532,0,0,0,0,'',''),(44,0,1368361797,'2',0,'/typo3/sysext/sv/ext_icon.gif','gif','image/gif','ext_icon.gif','55d721454b6ae200c9512cc320a7f8c07a4a648e',357,1368287532,1368287532,0,0,0,0,'',''),(45,0,1368361797,'2',0,'/typo3/sysext/sys_action/ext_icon.gif','gif','image/gif','ext_icon.gif','fdd57620b7a3a3e9755595363fa207af86f598ff',630,1368287532,1368287532,0,0,0,0,'',''),(46,0,1368361797,'2',0,'/typo3/sysext/sys_note/ext_icon.gif','gif','image/gif','ext_icon.gif','7a97bb0a5cc6e5e0339a1a90f28094a7a41c693f',156,1368287532,1368287532,0,0,0,0,'',''),(47,0,1368361797,'2',0,'/typo3/sysext/t3editor/ext_icon.gif','gif','image/gif','ext_icon.gif','fb9c533ec6c7536c0f5b4049994d3f9aba80121f',1023,1368287532,1368287532,0,0,0,0,'',''),(48,0,1368361797,'2',0,'/typo3/sysext/t3skin/ext_icon.gif','gif','image/gif','ext_icon.gif','ad4e9bb93928007bad9b98c36a794eaa86544308',254,1368287532,1368287532,0,0,0,0,'',''),(49,0,1368361797,'2',0,'/typo3/sysext/taskcenter/ext_icon.gif','gif','image/gif','ext_icon.gif','b4f17c0cd49f4ac83b3fe99946d4df7861f01962',167,1368287532,1368287532,0,0,0,0,'',''),(50,0,1368361797,'2',0,'/typo3/sysext/tsconfig_help/ext_icon.gif','gif','image/gif','ext_icon.gif','ce2ce494584ed2b1dae4639a17531a5ea7295dab',1049,1368287772,1368287772,0,0,0,0,'',''),(51,0,1368361797,'2',0,'/typo3/sysext/tstemplate/ext_icon.gif','gif','image/gif','ext_icon.gif','9aa8f313a25f48c65529acdf796557f3149c3c74',99,1368287532,1368287532,0,0,0,0,'',''),(52,0,1368361797,'2',0,'/typo3/sysext/tstemplate_analyzer/ext_icon.gif','gif','image/gif','ext_icon.gif','18b089a7e39a2831d775c54d9b4ad781810dbb0b',366,1368287532,1368287532,0,0,0,0,'',''),(53,0,1368361797,'2',0,'/typo3/sysext/tstemplate_ceditor/ext_icon.gif','gif','image/gif','ext_icon.gif','bbcb0ff3d075efe84d03ac8a039fcad4dd1027e9',134,1368287532,1368287532,0,0,0,0,'',''),(54,0,1368361797,'2',0,'/typo3/sysext/tstemplate_info/ext_icon.gif','gif','image/gif','ext_icon.gif','e5cc70deccb28078e5840223c70e15a9f70b3de9',194,1368287532,1368287532,0,0,0,0,'',''),(55,0,1368361797,'2',0,'/typo3/sysext/tstemplate_objbrowser/ext_icon.gif','gif','image/gif','ext_icon.gif','56a3a27afae4d201ccbb9b1cd73717e94bb7a940',203,1368287532,1368287532,0,0,0,0,'',''),(56,0,1368361797,'2',0,'/typo3/sysext/version/ext_icon.gif','gif','image/gif','ext_icon.gif','61c9380cfa98ccc2dbbe8e9bcc94081815bf6109',383,1368287583,1368287583,0,0,0,0,'',''),(57,0,1368361797,'2',0,'/typo3/sysext/viewpage/ext_icon.gif','gif','image/gif','ext_icon.gif','9d5ce162e3a36bc67590ba0c1a5360ab2a83d2e8',367,1368287532,1368287532,0,0,0,0,'',''),(58,0,1368361797,'2',0,'/typo3/sysext/wizard_crpages/ext_icon.gif','gif','image/gif','ext_icon.gif','db136645cf980646e414fc50b7c35e9f4a049143',649,1368287532,1368287532,0,0,0,0,'',''),(59,0,1368361797,'2',0,'/typo3/sysext/wizard_sortpages/ext_icon.gif','gif','image/gif','ext_icon.gif','86de0fe6bfe0d29b7bf4771b13dde1fc206336a6',206,1368287532,1368287532,0,0,0,0,'',''),(60,0,1368361797,'2',0,'/typo3/sysext/workspaces/ext_icon.gif','gif','image/gif','ext_icon.gif','1d8dd277a444da23b8c4d4da51b477dccacd21de',374,1368287593,1368287593,0,0,0,0,'',''),(61,0,1368361797,'2',0,'/typo3conf/ext/coreapi/ext_icon.gif','gif','image/gif','ext_icon.gif','23c189072cfe4edf1eb5038e4ebc62b013ccd57b',177,1368287725,1368287725,0,0,0,0,'',''),(62,0,1368361797,'2',0,'/typo3conf/ext/phpunit/ext_icon.gif','gif','image/gif','ext_icon.gif','76338b18df868edb741378a96ddcc79cd814dca3',630,1368287669,1368287669,0,0,0,0,'',''),(63,0,1368370630,'2',0,'/typo3conf/ext/helmbert_bootstrapsite/ext_icon.gif','gif','image/gif','ext_icon.gif','ce737f51ff9d83aac1f93d3d03e6a9cd2445ac88',1062,1368370514,1368370514,0,0,0,0,'',''),(64,0,1371398504,'2',0,'/typo3conf/ext/blog_example/ext_icon.gif','gif','image/gif','ext_icon.gif','23c189072cfe4edf1eb5038e4ebc62b013ccd57b',177,1371237855,1371237855,0,0,0,0,'',''),(65,0,1371398504,'2',0,'/typo3conf/ext/extension_builder/ext_icon.gif','gif','image/gif','ext_icon.gif','23c189072cfe4edf1eb5038e4ebc62b013ccd57b',177,1371398687,1371398687,0,0,0,0,'',''),(66,0,1372325669,'2',0,'/typo3conf/ext/inventory/ext_icon.gif','gif','image/gif','ext_icon.gif','23c189072cfe4edf1eb5038e4ebc62b013ccd57b',177,1372329102,1372329102,0,0,0,0,'','');
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `type` varchar(30) COLLATE utf8_unicode_ci DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `folder` text COLLATE utf8_unicode_ci NOT NULL,
  `tx_phpunit_is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `phpunit_dummy` (`tx_phpunit_is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `file` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `alternative` text COLLATE utf8_unicode_ci,
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `original` int(11) NOT NULL DEFAULT '0',
  `identifier` varchar(512) COLLATE utf8_unicode_ci DEFAULT '',
  `name` tinytext COLLATE utf8_unicode_ci,
  `configuration` text COLLATE utf8_unicode_ci,
  `originalfilesha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `task_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `checksum` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  `configurationsha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`,`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(249))
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
INSERT INTO `sys_file_processedfile` VALUES (1,1368361810,1368361810,0,1,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','359ae0fb420fe8afe1a8b8bc5e46d75090a826b9','Image.CropScaleMask','43ab9bcabb',0,0,''),(2,1368361810,1368361810,0,2,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','9d5fc8f9fab3a3efa46c1842d4f82da55cc93a7f','Image.CropScaleMask','ecbe7094a2',0,0,''),(3,1368361810,1368361810,0,3,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','2a54cd4dd32062ae916a12fedfee81c91cd94766','Image.CropScaleMask','ae284a1af5',0,0,''),(4,1368361810,1368361810,0,4,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','fba9573807897088b0e67958a5f5d1ea96a50fae','Image.CropScaleMask','c134a993e3',0,0,''),(5,1368361810,1368361810,0,5,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','ee7d55af61353254b82c663a3b532c53ee7324c7','Image.CropScaleMask','bbf0954d7e',0,0,''),(6,1368361810,1368361810,0,6,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','18ea9ee90f8537b1411a9053de731c6d61de0dbd','Image.CropScaleMask','5757ce9c1e',0,0,''),(7,1368361810,1368361810,0,7,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','55d721454b6ae200c9512cc320a7f8c07a4a648e','Image.CropScaleMask','f9831e5b18',0,0,''),(8,1368361811,1368361811,0,8,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','3bf69d49b8f991557bdc7430d533e3cd0794234a','Image.CropScaleMask','d937a778bc',0,0,''),(9,1368361811,1368361811,0,9,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','fba9573807897088b0e67958a5f5d1ea96a50fae','Image.CropScaleMask','16a33b92d1',0,0,''),(10,1368361811,1368361811,0,10,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','a863b8384991b598fffd6c7a3f301457ba6d49cb','Image.CropScaleMask','201b949b9b',0,0,''),(11,1368361811,1368361811,0,11,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','0a78cb0d24ff27b8e1183e39d5ac6562a6e545ad','Image.CropScaleMask','15039a41cd',0,0,''),(12,1368361811,1368361811,0,12,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','2feadd53a6ebcde933910d6a9ee9b00d1c4dcda6','Image.CropScaleMask','c060bfc7a2',0,0,''),(13,1368361811,1368361811,0,13,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','23c189072cfe4edf1eb5038e4ebc62b013ccd57b','Image.CropScaleMask','08ef7baf0f',0,0,''),(14,1368361811,1368361811,0,14,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','e67da46684aa49e6991ded936467fc063936032e','Image.CropScaleMask','fdb287cbc8',0,0,''),(15,1368361811,1368361811,0,15,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','a99cc2f0e36d9b7a146e703ad57a485096c70e5d','Image.CropScaleMask','615322548f',0,0,''),(16,1368361811,1368361811,0,16,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','0d19ca588b292b1e94aefb6fed4e8f2db3e97433','Image.CropScaleMask','9d565d11d6',0,0,''),(17,1368361812,1368361812,0,17,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','3e627f00b843d94e3905b4fa490e6d41bdf9c969','Image.CropScaleMask','6120f25ffa',0,0,''),(18,1368361812,1368361812,0,18,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','8ee012fc11e8da3042bc9a4df1e52109406b0c59','Image.CropScaleMask','59605e70c2',0,0,''),(19,1368361812,1368361812,0,19,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','23c189072cfe4edf1eb5038e4ebc62b013ccd57b','Image.CropScaleMask','a5bc487cca',0,0,''),(20,1368361812,1368361812,0,20,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','9c735e89a469f015a4a1c43b3450c783dba8cbe4','Image.CropScaleMask','33acc26f09',0,0,''),(21,1368361812,1368361812,0,21,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','fba9573807897088b0e67958a5f5d1ea96a50fae','Image.CropScaleMask','055ea0d078',0,0,''),(22,1368361812,1368361812,0,22,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','530725c4a56f8b5b72efd09e6f7cf594f896e8e5','Image.CropScaleMask','534ab67d90',0,0,''),(23,1368361812,1368361812,0,23,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','5f4b36af8d29685a9bc44d425104a49334c6d34e','Image.CropScaleMask','4e7af0b376',0,0,''),(24,1368361813,1368361813,0,24,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','21aa38a8577e0c6539a1dcf6bd880c381ec1de46','Image.CropScaleMask','739341a158',0,0,''),(25,1368361813,1368361813,0,25,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','3b1186bfb3b1fe3ed608f68a80949b20e7414a23','Image.CropScaleMask','227ed9ab0b',0,0,''),(26,1368361813,1368361813,0,26,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','3b1186bfb3b1fe3ed608f68a80949b20e7414a23','Image.CropScaleMask','3a8bb92a7e',0,0,''),(27,1368361813,1368361813,0,27,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','d4e3ec69f6c7e02f9d2c5d749024bf46ab0c22e1','Image.CropScaleMask','a183766da9',0,0,''),(28,1368361813,1368361813,0,28,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','fb0fb3390936ad820c5b7436cd87d442123bd33d','Image.CropScaleMask','e04f785a19',0,0,''),(29,1368361813,1368361813,0,29,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','1e092ba01ec0babe2fe1b22b67c45de899c484c8','Image.CropScaleMask','5c904d8744',0,0,''),(30,1368361813,1368361813,0,30,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','f35e159406d07c9675830bc51ef14a210f1cab1f','Image.CropScaleMask','b18d4029b3',0,0,''),(31,1368361814,1368361814,0,31,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','cdada35018dfbdd57e6442ea038a0314677d9114','Image.CropScaleMask','78295dbe29',0,0,''),(32,1368361814,1368361814,0,32,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','c182aec01a3225de5f72ef272d0e8a59ec670d93','Image.CropScaleMask','18b42ead3e',0,0,''),(33,1368361814,1368361814,0,33,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','54f00d2070213715d290f2f813601a27c5277869','Image.CropScaleMask','5d6eeb04a4',0,0,''),(34,1368361814,1368361814,0,34,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','734c40675f05fd730cea8e39c77af5eb47cc4d9b','Image.CropScaleMask','73555dd387',0,0,''),(35,1368361814,1368361814,0,35,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','03717e1ac333d0bef7a33a3ceff1305ef6deecbc','Image.CropScaleMask','54159e7c3f',0,0,''),(36,1368361814,1368361814,0,36,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','332e96b6dac59bffa4dbf87137e1fee4f44bd5d3','Image.CropScaleMask','9fb59c6cea',0,0,''),(37,1368361814,1368361814,0,37,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','1861cc8eecb71a20e757de83386ba3841ab4da1d','Image.CropScaleMask','fdcb2aae67',0,0,''),(38,1371229287,1368361797,0,38,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','cbaafb62f40fa004732d86e5d93fc50ca067a009','Image.CropScaleMask','42b2925b38',0,0,''),(39,1368361815,1368361815,0,39,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','70c2aab11e104ec14fc3934f28201630d0935b8a','Image.CropScaleMask','36e7feec9c',0,0,''),(40,1368361815,1368361815,0,40,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','5061eebad398d086cc5dfafb2182c159a723af56','Image.CropScaleMask','582beadb9c',0,0,''),(41,1368361815,1368361815,0,41,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','a6a08a082b189dd1f669595ac91fc90fde913e23','Image.CropScaleMask','0f1ae947a3',0,0,''),(42,1368361815,1368361815,0,42,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','405729c40df7f0e38105583492a8d33bae1db0fe','Image.CropScaleMask','1e5216cadd',0,0,''),(43,1368361815,1368361815,0,43,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','efba11523cbede8368582445e9036f4eab580d3f','Image.CropScaleMask','b9f73dd06b',0,0,''),(44,1368361815,1368361815,0,44,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','55d721454b6ae200c9512cc320a7f8c07a4a648e','Image.CropScaleMask','73bfe96718',0,0,''),(45,1368361816,1368361816,0,45,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','fdd57620b7a3a3e9755595363fa207af86f598ff','Image.CropScaleMask','bccfbf21f2',0,0,''),(46,1368361816,1368361816,0,46,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','7a97bb0a5cc6e5e0339a1a90f28094a7a41c693f','Image.CropScaleMask','d27e7d5d22',0,0,''),(47,1368361816,1368361816,0,47,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','fb9c533ec6c7536c0f5b4049994d3f9aba80121f','Image.CropScaleMask','05ca56ed65',0,0,''),(48,1368361816,1368361816,0,48,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','ad4e9bb93928007bad9b98c36a794eaa86544308','Image.CropScaleMask','b9daa4183b',0,0,''),(49,1368361816,1368361816,0,49,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','b4f17c0cd49f4ac83b3fe99946d4df7861f01962','Image.CropScaleMask','0c30efa6ae',0,0,''),(50,1368361816,1368361816,0,50,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','ce2ce494584ed2b1dae4639a17531a5ea7295dab','Image.CropScaleMask','9dc58cf005',0,0,''),(51,1368361816,1368361816,0,51,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','9aa8f313a25f48c65529acdf796557f3149c3c74','Image.CropScaleMask','5faf9063a4',0,0,''),(52,1368361817,1368361817,0,52,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','18b089a7e39a2831d775c54d9b4ad781810dbb0b','Image.CropScaleMask','4743adab70',0,0,''),(53,1368361817,1368361817,0,53,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','bbcb0ff3d075efe84d03ac8a039fcad4dd1027e9','Image.CropScaleMask','7a363281a9',0,0,''),(54,1368361817,1368361817,0,54,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','e5cc70deccb28078e5840223c70e15a9f70b3de9','Image.CropScaleMask','1b4cc2d5ac',0,0,''),(55,1368361817,1368361817,0,55,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','56a3a27afae4d201ccbb9b1cd73717e94bb7a940','Image.CropScaleMask','17938c0d41',0,0,''),(56,1368361817,1368361817,0,56,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','61c9380cfa98ccc2dbbe8e9bcc94081815bf6109','Image.CropScaleMask','c57d81d97f',0,0,''),(57,1368361817,1368361817,0,57,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','9d5ce162e3a36bc67590ba0c1a5360ab2a83d2e8','Image.CropScaleMask','fbd8301637',0,0,''),(58,1368361817,1368361817,0,58,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','db136645cf980646e414fc50b7c35e9f4a049143','Image.CropScaleMask','983d5d0fab',0,0,''),(59,1368361817,1368361817,0,59,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','86de0fe6bfe0d29b7bf4771b13dde1fc206336a6','Image.CropScaleMask','8753ab68f2',0,0,''),(60,1368361818,1368361818,0,60,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','1d8dd277a444da23b8c4d4da51b477dccacd21de','Image.CropScaleMask','ebd46d191d',0,0,''),(61,1368361818,1368361818,0,61,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','23c189072cfe4edf1eb5038e4ebc62b013ccd57b','Image.CropScaleMask','ef403aca5c',0,0,''),(62,1368361818,1368361818,0,62,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','76338b18df868edb741378a96ddcc79cd814dca3','Image.CropScaleMask','7085e3f312',0,0,''),(63,1368370641,1368370641,0,63,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','ce737f51ff9d83aac1f93d3d03e6a9cd2445ac88','Image.CropScaleMask','0b8357f4a1',0,0,''),(64,1371398515,1371398515,0,64,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','23c189072cfe4edf1eb5038e4ebc62b013ccd57b','Image.CropScaleMask','db0ac8457b',0,0,''),(65,1371398515,1371398515,0,65,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','23c189072cfe4edf1eb5038e4ebc62b013ccd57b','Image.CropScaleMask','18231b7f21',0,0,''),(66,1372325682,1372325682,0,66,'',NULL,'a:9:{s:5:\"width\";N;s:6:\"height\";s:2:\"16\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;}','23c189072cfe4edf1eb5038e4ebc62b013ccd57b','Image.CropScaleMask','eba6f8c6f8',0,0,'');
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(10) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) COLLATE utf8_unicode_ci DEFAULT '',
  `fieldname` varchar(64) COLLATE utf8_unicode_ci DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  `table_local` varchar(64) COLLATE utf8_unicode_ci DEFAULT '',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `alternative` tinytext COLLATE utf8_unicode_ci,
  `link` tinytext COLLATE utf8_unicode_ci,
  `downloadname` tinytext COLLATE utf8_unicode_ci,
  `tx_phpunit_is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `phpunit_dummy` (`tx_phpunit_is_dummy_record`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `driver` tinytext COLLATE utf8_unicode_ci,
  `configuration` text COLLATE utf8_unicode_ci,
  `is_browsable` tinyint(4) NOT NULL DEFAULT '0',
  `is_public` tinyint(4) NOT NULL DEFAULT '0',
  `is_writable` tinyint(4) NOT NULL DEFAULT '0',
  `is_online` tinyint(4) NOT NULL DEFAULT '1',
  `processingfolder` tinytext COLLATE utf8_unicode_ci,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `deleted_hidden` (`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1368361606,1368361606,0,0,0,'fileadmin/ (auto-created)','This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,NULL,0);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(120) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `base` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_log_uid` int(11) NOT NULL DEFAULT '0',
  `history_data` mediumtext COLLATE utf8_unicode_ci,
  `fieldlist` text COLLATE utf8_unicode_ci,
  `recuid` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `history_files` mediumtext COLLATE utf8_unicode_ci,
  `snapshot` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `recordident_1` (`tablename`,`recuid`),
  KEY `recordident_2` (`tablename`,`tstamp`),
  KEY `sys_log_uid` (`sys_log_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_language` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flag` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `record_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT '0',
  `record_pid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `feuserid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `recuid` int(11) unsigned NOT NULL DEFAULT '0',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT '0',
  `error` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `details_nr` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `IP` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `log_data` text COLLATE utf8_unicode_ci,
  `event_pid` int(11) NOT NULL DEFAULT '-1',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `NEWid` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `request_id` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time_micro` float NOT NULL DEFAULT '0',
  `component` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_unicode_ci,
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`,`uid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_news` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_note` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser` int(11) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8_unicode_ci,
  `personal` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_preview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_preview` (
  `keyword` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_preview` WRITE;
/*!40000 ALTER TABLE `sys_preview` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_preview` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT '0',
  `field` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flexpointer` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `softref_key` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `softref_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `ref_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT '0',
  `ref_string` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`,`recuid`),
  KEY `lookup_uid` (`ref_table`,`ref_uid`),
  KEY `lookup_string` (`ref_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
INSERT INTO `sys_refindex` VALUES ('0ee5bd47fd084e1824af37db81224686','pages',1,'shortcut','','','',0,0,'pages',2,''),('3475342c8d4b2839278d50353cdd3b1e','pages',1,'media','','','',0,0,'',0,''),('42f485e7699d313f0f92e5d578adc6c5','tt_content',2,'media','','','',0,0,'',0,''),('5305884e40123a43be225a05c12bc943','tt_content',1,'pages','','','',0,1,'pages',4,''),('ce8cb8de0845cbef26e3f0f6f55e1560','pages',4,'media','','','',0,0,'',0,''),('d148c45bf427946bea27b31a5853b0da','tt_content',2,'image','','','',0,0,'',0,''),('db898e731429caa03c4853f85b974647','tt_content',1,'image','','','',0,1,'',0,''),('e2a08ea63f4518b57212bc23425e698c','tt_content',2,'pages','','','',0,0,'pages',4,''),('ee1165b91133aa3ed87cb5365aab8c13','pages',2,'media','','','',0,0,'',0,''),('f0e1e0476e8faca525e0bf70178ed6f4','tt_content',1,'media','','','',0,1,'',0,''),('f5a44f9568bd0723deee98f4799867d2','pages',3,'media','','','',0,0,'',0,'');
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entry_key` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entry_value` blob,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'core','formSessionToken:1','s:64:\"9124eb6c7223978acd6bef6167d79e5229eb748995bed610bf0dd659b57da883\";'),(2,'tx_reports','status.highestSeverity','i:2;');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sitetitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `root` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `clear` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `include_static_file` text COLLATE utf8_unicode_ci,
  `constants` text COLLATE utf8_unicode_ci,
  `config` text COLLATE utf8_unicode_ci,
  `nextLevel` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `basedOn` tinytext COLLATE utf8_unicode_ci,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeStaticAfterBasedOn` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `static_file_mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `tx_phpunit_is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `phpunit_dummy` (`tx_phpunit_is_dummy_record`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,1,0,0,0,'',0,0,0,0,0,1371389107,0,1368361211,0,'Default Root Template','',0,0,0,1,1,'EXT:css_styled_content/static/,EXT:helmbert_bootstrapsite/Configuration/Typoscript/,EXT:blog_example/Configuration/TypoScript',NULL,NULL,'',NULL,NULL,0,0,0,0,0);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `CType` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header_position` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bodytext` mediumtext COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `imagewidth` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `imageorient` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imagecaption` text COLLATE utf8_unicode_ci,
  `imagecols` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imageborder` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `media` text COLLATE utf8_unicode_ci,
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `cols` int(11) unsigned NOT NULL DEFAULT '0',
  `records` text COLLATE utf8_unicode_ci,
  `pages` tinytext COLLATE utf8_unicode_ci,
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `colPos` int(11) unsigned NOT NULL DEFAULT '0',
  `subheader` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `spaceBefore` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spaceAfter` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `header_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imagecaption_position` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_link` text COLLATE utf8_unicode_ci,
  `image_zoom` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image_noRows` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image_effects` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image_compression` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `altText` text COLLATE utf8_unicode_ci,
  `titleText` text COLLATE utf8_unicode_ci,
  `longdescURL` text COLLATE utf8_unicode_ci,
  `header_layout` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `menu_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `list_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `table_border` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_cellspacing` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_cellpadding` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_bgColor` int(11) unsigned NOT NULL DEFAULT '0',
  `select_key` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sectionIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `linkToTop` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `file_collections` text COLLATE utf8_unicode_ci,
  `filelink_size` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `section_frame` int(11) unsigned NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `multimedia` tinytext COLLATE utf8_unicode_ci,
  `image_frames` int(11) unsigned NOT NULL DEFAULT '0',
  `recursive` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `imageheight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rte_enabled` tinyint(4) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext COLLATE utf8_unicode_ci,
  `accessibility_title` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `accessibility_bypass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `tx_phpunit_is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  `selected_categories` text COLLATE utf8_unicode_ci,
  `category_field` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `phpunit_dummy` (`tx_phpunit_is_dummy_record`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,3,0,0,0,'',0,0,0,0,0,0,1372583182,1369076030,1,0,1000000000,'list','','',NULL,NULL,0,0,NULL,1,0,NULL,0,1,0,NULL,'4',0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','inventory_list',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,NULL,'',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"list_type\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"select_key\";N;s:5:\"pages\";N;s:9:\"recursive\";N;}',0,0,NULL,''),(2,3,0,0,0,'',0,0,0,0,0,0,1372583767,1372583624,1,0,256,'list','','',NULL,NULL,0,0,NULL,1,0,NULL,0,0,0,NULL,'4',0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','inventory_pi',0,0,0,0,'',1,0,NULL,0,'','',0,0,NULL,0,0,0,0,0,0,NULL,'',0,'',0,'a:23:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"list_type\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"select_key\";N;s:5:\"pages\";N;s:9:\"recursive\";N;s:10:\"categories\";N;}',0,0,NULL,'');
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_blogexample_domain_model_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_blogexample_domain_model_blog` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `logo` tinyblob NOT NULL,
  `administrator` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `posts` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_blogexample_domain_model_blog` WRITE;
/*!40000 ALTER TABLE `tx_blogexample_domain_model_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_blogexample_domain_model_blog` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_blogexample_domain_model_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_blogexample_domain_model_comment` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `post` int(11) NOT NULL DEFAULT '0',
  `date` int(11) NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_blogexample_domain_model_comment` WRITE;
/*!40000 ALTER TABLE `tx_blogexample_domain_model_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_blogexample_domain_model_comment` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_blogexample_domain_model_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_blogexample_domain_model_person` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_blogexample_domain_model_person` WRITE;
/*!40000 ALTER TABLE `tx_blogexample_domain_model_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_blogexample_domain_model_person` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_blogexample_domain_model_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_blogexample_domain_model_post` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `blog` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT '0',
  `author` int(255) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `tags` int(11) unsigned NOT NULL DEFAULT '0',
  `comments` int(11) unsigned NOT NULL DEFAULT '0',
  `related_posts` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sorting` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_blogexample_domain_model_post` WRITE;
/*!40000 ALTER TABLE `tx_blogexample_domain_model_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_blogexample_domain_model_post` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_blogexample_domain_model_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_blogexample_domain_model_tag` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posts` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_blogexample_domain_model_tag` WRITE;
/*!40000 ALTER TABLE `tx_blogexample_domain_model_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_blogexample_domain_model_tag` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_blogexample_post_post_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_blogexample_post_post_mm` (
  `uid_local` int(11) unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_blogexample_post_post_mm` WRITE;
/*!40000 ALTER TABLE `tx_blogexample_post_post_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_blogexample_post_post_mm` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_blogexample_post_tag_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_blogexample_post_tag_mm` (
  `uid_local` int(11) unsigned DEFAULT '0',
  `uid_foreign` int(11) unsigned DEFAULT '0',
  `sorting` int(11) unsigned DEFAULT '0',
  `sorting_foreign` int(11) unsigned DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_blogexample_post_tag_mm` WRITE;
/*!40000 ALTER TABLE `tx_blogexample_post_tag_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_blogexample_post_tag_mm` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `repository` int(11) unsigned NOT NULL DEFAULT '1',
  `version` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alldownloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `downloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci,
  `state` int(4) NOT NULL DEFAULT '0',
  `review_state` int(4) NOT NULL DEFAULT '0',
  `category` int(4) NOT NULL DEFAULT '0',
  `last_updated` int(11) unsigned NOT NULL DEFAULT '0',
  `serialized_dependencies` mediumtext COLLATE utf8_unicode_ci,
  `author_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ownerusername` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `md5hash` varchar(35) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `update_comment` mediumtext COLLATE utf8_unicode_ci,
  `authorcompany` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT '0',
  `current_version` int(3) NOT NULL DEFAULT '0',
  `lastreviewedversion` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`repository`,`extension_key`),
  KEY `index_versionrepo` (`repository`,`integer_version`),
  KEY `index_currentversions` (`review_state`,`current_version`)
) ENGINE=InnoDB AUTO_INCREMENT=29778 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci,
  `wsdl_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_update` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,0,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','http://typo3.org/wsdl/tx_ter_wsdl.php','http://repositories.typo3.org/mirrors.xml.gz',1372582859,6048);
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_uid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `public` tinyint(3) NOT NULL DEFAULT '0',
  `item_uid` int(11) NOT NULL DEFAULT '0',
  `preset_data` blob,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_inventory_domain_model_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_inventory_domain_model_product` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_inventory_domain_model_product` WRITE;
/*!40000 ALTER TABLE `tx_inventory_domain_model_product` DISABLE KEYS */;
INSERT INTO `tx_inventory_domain_model_product` VALUES (1,4,'Gartenzwerg','Klein und b√§rtig.',212,1372583994,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:4:\"name\";N;s:11:\"description\";N;s:8:\"quantity\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}'),(2,4,'Rasenm√§her','Gro√ü und laut.',5,1372584028,1372584028,1,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:4:\"name\";N;s:11:\"description\";N;s:8:\"quantity\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}');
/*!40000 ALTER TABLE `tx_inventory_domain_model_product` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_phpunit_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_phpunit_test` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `related_records` int(11) unsigned NOT NULL DEFAULT '0',
  `bidirectional` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `phpunit_dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_phpunit_test` WRITE;
/*!40000 ALTER TABLE `tx_phpunit_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_phpunit_test` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_phpunit_test_article_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_phpunit_test_article_mm` (
  `uid_local` int(11) unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `phpunit_dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_phpunit_test_article_mm` WRITE;
/*!40000 ALTER TABLE `tx_phpunit_test_article_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_phpunit_test_article_mm` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_phpunit_testchild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_phpunit_testchild` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `is_dummy_record` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `phpunit_dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_phpunit_testchild` WRITE;
/*!40000 ALTER TABLE `tx_phpunit_testchild` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_phpunit_testchild` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_rsaauth_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rsaauth_keys` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `key_value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `crdate` (`crdate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_rsaauth_keys` WRITE;
/*!40000 ALTER TABLE `tx_rsaauth_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rsaauth_keys` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_rtehtmlarea_acronym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rtehtmlarea_acronym` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `term` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `acronym` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_rtehtmlarea_acronym` WRITE;
/*!40000 ALTER TABLE `tx_rtehtmlarea_acronym` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rtehtmlarea_acronym` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_domain_model_agerange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_domain_model_agerange` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `minimum_value` int(11) unsigned DEFAULT NULL,
  `maximum_value` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_domain_model_agerange` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_agerange` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_agerange` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_domain_model_attendancefee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_domain_model_attendancefee` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `offer` int(11) NOT NULL DEFAULT '0',
  `amount` decimal(19,2) NOT NULL DEFAULT '0.00',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_domain_model_attendancefee` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_attendancefee` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_attendancefee` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_domain_model_attendancerange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_domain_model_attendancerange` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `minimum_value` int(11) unsigned DEFAULT NULL,
  `maximum_value` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_domain_model_attendancerange` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_attendancerange` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_attendancerange` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_domain_model_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_domain_model_category` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `is_internal` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_domain_model_category` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_category` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_domain_model_daterange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_domain_model_daterange` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `minimum_value` int(11) unsigned DEFAULT NULL,
  `maximum_value` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_domain_model_daterange` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_daterange` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_daterange` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_domain_model_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_domain_model_offer` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `organization` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `teaser` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `services` text COLLATE utf8_unicode_ci NOT NULL,
  `dates` text COLLATE utf8_unicode_ci NOT NULL,
  `venue` text COLLATE utf8_unicode_ci NOT NULL,
  `image` tinyblob NOT NULL,
  `age_range` int(11) NOT NULL DEFAULT '0',
  `date_range` int(11) NOT NULL DEFAULT '0',
  `attendance_range` int(11) NOT NULL DEFAULT '0',
  `attendance_fees` int(11) NOT NULL DEFAULT '0',
  `contact` int(11) NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  `regions` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_domain_model_offer` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_offer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_offer` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_domain_model_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_domain_model_organization` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `status` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `telephone_number` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `telefax_number` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email_address` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contacts` int(11) NOT NULL DEFAULT '0',
  `offers` int(11) NOT NULL DEFAULT '0',
  `administrator` int(11) DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  `access_group` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_domain_model_organization` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_organization` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_organization` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_domain_model_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_domain_model_person` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `telephone_number` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `telefax_number` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email_address` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_domain_model_person` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_person` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_domain_model_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_domain_model_region` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_domain_model_region` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_region` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_region` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_domain_model_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_domain_model_status` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `allowed_categories` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_domain_model_status` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_sjroffers_domain_model_status` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_offer_category_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_offer_category_mm` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `uid_local` int(11) unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`uid_local`,`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_offer_category_mm` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_offer_category_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_sjroffers_offer_category_mm` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_offer_region_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_offer_region_mm` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `uid_local` int(11) unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`uid_local`,`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_offer_region_mm` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_offer_region_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_sjroffers_offer_region_mm` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_organization_person_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_organization_person_mm` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `uid_local` int(11) unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`uid_local`,`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_organization_person_mm` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_organization_person_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_sjroffers_organization_person_mm` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tx_sjroffers_status_category_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_sjroffers_status_category_mm` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `uid_local` int(11) unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`uid_local`,`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tx_sjroffers_status_category_mm` WRITE;
/*!40000 ALTER TABLE `tx_sjroffers_status_category_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_sjroffers_status_category_mm` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

