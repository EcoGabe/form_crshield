-- MySQL dump 10.13  Distrib 5.7.44, for osx10.17 (x86_64)
--
-- Host: 127.0.0.1    Database: typo3_formcrshield_acceptance_v13
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `t3ver_oid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint NOT NULL DEFAULT '0',
  `t3ver_stage` int NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `icon` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `non_exclude_fields` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `explicit_allowdeny` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `allowed_languages` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_options` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `db_mountpoints` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `pagetypes_select` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `tables_select` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `tables_modify` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `groupMods` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `mfa_providers` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `file_mountpoints` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `file_permissions` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `TSconfig` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `subgroup` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `workspace_perms` smallint unsigned NOT NULL DEFAULT '0',
  `category_perms` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `be_sessions`
--

DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int unsigned NOT NULL DEFAULT '0',
  `ses_data` longblob,
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `disable` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `avatar` int unsigned NOT NULL DEFAULT '0',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin` smallint unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `db_mountpoints` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `options` smallint unsigned NOT NULL DEFAULT '3',
  `realName` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userMods` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `allowed_languages` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uc` mediumblob,
  `file_mountpoints` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `file_permissions` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `workspace_perms` smallint unsigned NOT NULL DEFAULT '1',
  `TSconfig` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `lastlogin` bigint NOT NULL DEFAULT '0',
  `workspace_id` int NOT NULL DEFAULT '0',
  `mfa` mediumblob,
  `category_perms` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `password_reset_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `username` (`username`),
  KEY `parent` (`pid`,`deleted`,`disable`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cache_hash`
--

DROP TABLE IF EXISTS `cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_hash` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int unsigned NOT NULL DEFAULT '0',
  `content` longblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cache_hash_tags`
--

DROP TABLE IF EXISTS `cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_hash_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cache_imagesizes`
--

DROP TABLE IF EXISTS `cache_imagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_imagesizes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int unsigned NOT NULL DEFAULT '0',
  `content` longblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cache_imagesizes_tags`
--

DROP TABLE IF EXISTS `cache_imagesizes_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_imagesizes_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cache_pages`
--

DROP TABLE IF EXISTS `cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int unsigned NOT NULL DEFAULT '0',
  `content` longblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cache_pages_tags`
--

DROP TABLE IF EXISTS `cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_pages_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cache_rootline`
--

DROP TABLE IF EXISTS `cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_rootline` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int unsigned NOT NULL DEFAULT '0',
  `content` longblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cache_rootline_tags`
--

DROP TABLE IF EXISTS `cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_rootline_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subgroup` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int unsigned NOT NULL DEFAULT '0',
  `ses_data` mediumblob,
  `ses_permanent` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `disable` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tx_extbase_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `usergroup` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `name` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `middle_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `telephone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uc` blob,
  `title` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `www` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` int unsigned NOT NULL DEFAULT '0',
  `lastlogin` bigint NOT NULL DEFAULT '0',
  `is_online` int unsigned NOT NULL DEFAULT '0',
  `mfa` mediumblob,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`(100)),
  KEY `username` (`username`(100)),
  KEY `is_online` (`is_online`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `rowDescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `editlock` smallint unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_source` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint NOT NULL DEFAULT '0',
  `t3ver_stage` int NOT NULL DEFAULT '0',
  `perms_userid` int unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int unsigned NOT NULL DEFAULT '0',
  `perms_user` smallint unsigned NOT NULL DEFAULT '0',
  `perms_group` smallint unsigned NOT NULL DEFAULT '0',
  `perms_everybody` smallint unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `doktype` int unsigned NOT NULL DEFAULT '0',
  `TSconfig` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `is_siteroot` smallint unsigned NOT NULL DEFAULT '0',
  `php_tree_stop` smallint unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shortcut` int unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `layout` int unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `media` int unsigned NOT NULL DEFAULT '0',
  `lastUpdated` bigint NOT NULL DEFAULT '0',
  `keywords` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `cache_timeout` int unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `newUntil` bigint NOT NULL DEFAULT '0',
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `no_search` smallint unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int unsigned NOT NULL DEFAULT '0',
  `abstract` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extendToSubpages` smallint unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nav_hide` smallint unsigned NOT NULL DEFAULT '0',
  `content_from_pid` int unsigned NOT NULL DEFAULT '0',
  `mount_pid` int unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` smallint NOT NULL DEFAULT '0',
  `l18n_cfg` smallint unsigned NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tsconfig_includes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `categories` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `slug` (`slug`(127)),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `userid` int unsigned NOT NULL DEFAULT '0',
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `arguments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int NOT NULL DEFAULT '0',
  `sc_group` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint NOT NULL DEFAULT '0',
  `t3ver_stage` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `items` int NOT NULL DEFAULT '0',
  `parent` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int unsigned NOT NULL DEFAULT '0',
  `sorting` int unsigned NOT NULL DEFAULT '0',
  `sorting_foreign` int unsigned NOT NULL DEFAULT '0',
  `tablenames` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid_local`,`uid_foreign`,`tablenames`,`fieldname`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_csp_resolution`
--

DROP TABLE IF EXISTS `sys_csp_resolution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_csp_resolution` (
  `summary` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` int unsigned NOT NULL,
  `scope` varchar(264) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mutation_identifier` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mutation_collection` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`summary`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `last_indexed` int NOT NULL DEFAULT '0',
  `missing` smallint unsigned NOT NULL DEFAULT '0',
  `storage` int unsigned NOT NULL DEFAULT '0',
  `type` int unsigned NOT NULL DEFAULT '0',
  `metadata` int unsigned NOT NULL DEFAULT '0',
  `identifier` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `identifier_hash` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `folder_hash` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mime_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sha1` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `size` int NOT NULL DEFAULT '0',
  `creation_date` int NOT NULL DEFAULT '0',
  `modification_date` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint NOT NULL DEFAULT '0',
  `t3ver_stage` int NOT NULL DEFAULT '0',
  `title` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'static',
  `files` int unsigned NOT NULL DEFAULT '0',
  `recursive` smallint unsigned NOT NULL DEFAULT '0',
  `category` int unsigned NOT NULL DEFAULT '0',
  `folder_identifier` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint NOT NULL DEFAULT '0',
  `t3ver_stage` int NOT NULL DEFAULT '0',
  `file` int unsigned NOT NULL DEFAULT '0',
  `title` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `width` int NOT NULL DEFAULT '0',
  `height` int NOT NULL DEFAULT '0',
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `alternative` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `categories` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `tstamp` int NOT NULL DEFAULT '0',
  `crdate` int NOT NULL DEFAULT '0',
  `storage` int NOT NULL DEFAULT '0',
  `original` int NOT NULL DEFAULT '0',
  `identifier` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `processing_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `configuration` blob,
  `configurationsha1` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `task_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checksum` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `width` int DEFAULT '0',
  `height` int DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`(100),`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(180))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint NOT NULL DEFAULT '0',
  `t3ver_stage` int NOT NULL DEFAULT '0',
  `uid_local` int NOT NULL DEFAULT '0',
  `uid_foreign` int NOT NULL DEFAULT '0',
  `tablenames` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting_foreign` int NOT NULL DEFAULT '0',
  `title` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `alternative` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (_utf8mb4''),
  `crop` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `autoplay` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `driver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `configuration` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `is_default` smallint unsigned NOT NULL DEFAULT '0',
  `is_browsable` smallint unsigned NOT NULL DEFAULT '1',
  `is_public` smallint NOT NULL DEFAULT '0',
  `is_writable` smallint unsigned NOT NULL DEFAULT '1',
  `is_online` smallint unsigned NOT NULL DEFAULT '1',
  `auto_extract_metadata` smallint unsigned NOT NULL DEFAULT '1',
  `processingfolder` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `read_only` smallint unsigned NOT NULL DEFAULT '0',
  `identifier` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `actiontype` smallint NOT NULL DEFAULT '0',
  `usertype` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BE',
  `userid` int unsigned DEFAULT NULL,
  `originaluserid` int unsigned DEFAULT NULL,
  `recuid` int NOT NULL DEFAULT '0',
  `tablename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `history_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `workspace` int DEFAULT '0',
  `correlation_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `recordident_1` (`tablename`(100),`recuid`),
  KEY `recordident_2` (`tablename`(100),`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_http_report`
--

DROP TABLE IF EXISTS `sys_http_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_http_report` (
  `uuid` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint unsigned NOT NULL DEFAULT '0',
  `created` int unsigned NOT NULL,
  `changed` int unsigned NOT NULL,
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_time` bigint unsigned NOT NULL,
  `meta` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `summary` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `type_scope` (`type`,`scope`),
  KEY `created` (`created`),
  KEY `changed` (`changed`),
  KEY `request_time` (`request_time`),
  KEY `summary_created` (`summary`,`created`),
  KEY `all_conditions` (`type`,`status`,`scope`,`summary`,`request_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `userid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `record_table` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `record_uid` int NOT NULL DEFAULT '0',
  `record_pid` int NOT NULL DEFAULT '0',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `feuserid` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `userid` int unsigned NOT NULL DEFAULT '0',
  `action` smallint unsigned NOT NULL DEFAULT '0',
  `recuid` int unsigned NOT NULL DEFAULT '0',
  `tablename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `recpid` int NOT NULL DEFAULT '0',
  `error` smallint unsigned NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` smallint unsigned NOT NULL DEFAULT '0',
  `channel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `details_nr` smallint NOT NULL DEFAULT '0',
  `IP` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `log_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `event_pid` int NOT NULL DEFAULT '-1',
  `workspace` int NOT NULL DEFAULT '0',
  `NEWid` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `request_id` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time_micro` double NOT NULL DEFAULT '0',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `level` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'info',
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`),
  KEY `combined_1` (`tstamp`,`type`,`userid`),
  KEY `errorcount` (`tstamp`,`error`),
  KEY `index_channel` (`channel`),
  KEY `index_level` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_messenger_messages`
--

DROP TABLE IF EXISTS `sys_messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_messenger_messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `queue_name` (`queue_name`),
  KEY `available_at` (`available_at`),
  KEY `delivered_at` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_news` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tablename` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `recuid` int unsigned NOT NULL DEFAULT '0',
  `field` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `flexpointer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `softref_key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `softref_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int NOT NULL DEFAULT '0',
  `workspace` int unsigned NOT NULL DEFAULT '0',
  `ref_table` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ref_uid` int NOT NULL DEFAULT '0',
  `ref_string` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '2147483647',
  `t3ver_state` int unsigned NOT NULL DEFAULT '0',
  `ref_field` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ref_hidden` smallint unsigned NOT NULL DEFAULT '0',
  `ref_starttime` int unsigned NOT NULL DEFAULT '0',
  `ref_endtime` int unsigned NOT NULL DEFAULT '2147483647',
  `ref_t3ver_state` int unsigned NOT NULL DEFAULT '0',
  `ref_sorting` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`hash`),
  KEY `lookup_string` (`ref_string`(191)),
  KEY `lookup_ref` (`ref_table`,`ref_uid`,`tablename`,`workspace`,`t3ver_state`,`hidden`,`starttime`,`endtime`),
  KEY `lookup_rec` (`tablename`,`recuid`,`field`,`workspace`,`ref_t3ver_state`,`ref_hidden`,`ref_starttime`,`ref_endtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_value` mediumblob,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `root` smallint unsigned NOT NULL DEFAULT '0',
  `clear` smallint unsigned NOT NULL DEFAULT '0',
  `include_static_file` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `constants` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `basedOn` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `includeStaticAfterBasedOn` smallint unsigned NOT NULL DEFAULT '0',
  `static_file_mode` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `rowDescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `editlock` smallint unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l18n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_source` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `l18n_diffsource` mediumblob,
  `t3ver_oid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint NOT NULL DEFAULT '0',
  `t3ver_stage` int NOT NULL DEFAULT '0',
  `CType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bodytext` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `bullets_type` int unsigned NOT NULL DEFAULT '0',
  `uploads_description` smallint unsigned NOT NULL DEFAULT '0',
  `uploads_type` int unsigned NOT NULL DEFAULT '0',
  `assets` int unsigned NOT NULL DEFAULT '0',
  `image` int unsigned NOT NULL DEFAULT '0',
  `imagewidth` int unsigned NOT NULL DEFAULT '0',
  `imageorient` int unsigned NOT NULL DEFAULT '0',
  `imagecols` int unsigned NOT NULL DEFAULT '0',
  `imageborder` smallint unsigned NOT NULL DEFAULT '0',
  `media` int unsigned NOT NULL DEFAULT '0',
  `layout` int unsigned NOT NULL DEFAULT '0',
  `frame_class` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `cols` int unsigned NOT NULL DEFAULT '0',
  `space_before_class` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `space_after_class` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `records` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `pages` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `colPos` int unsigned NOT NULL DEFAULT '0',
  `subheader` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header_link` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (_utf8mb4''),
  `image_zoom` smallint unsigned NOT NULL DEFAULT '0',
  `header_layout` int unsigned NOT NULL DEFAULT '0',
  `list_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sectionIndex` smallint unsigned NOT NULL DEFAULT '1',
  `linkToTop` smallint unsigned NOT NULL DEFAULT '0',
  `file_collections` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `filelink_size` smallint unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filelink_sorting_direction` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date` bigint NOT NULL DEFAULT '0',
  `recursive` int unsigned NOT NULL DEFAULT '0',
  `imageheight` int unsigned NOT NULL DEFAULT '0',
  `pi_flexform` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `accessibility_title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `accessibility_bypass` smallint unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `category_field` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_class` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_delimiter` int unsigned NOT NULL DEFAULT '0',
  `table_enclosure` int unsigned NOT NULL DEFAULT '0',
  `table_header_position` int unsigned NOT NULL DEFAULT '0',
  `table_tfoot` smallint unsigned NOT NULL DEFAULT '0',
  `categories` int unsigned NOT NULL DEFAULT '0',
  `selected_categories` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `extension_key` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `remote` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ter',
  `version` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alldownloadcounter` int unsigned NOT NULL DEFAULT '0',
  `downloadcounter` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `state` int unsigned NOT NULL DEFAULT '0',
  `review_state` int NOT NULL DEFAULT '0',
  `category` int unsigned NOT NULL DEFAULT '0',
  `last_updated` bigint NOT NULL DEFAULT '0',
  `serialized_dependencies` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `author_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ownerusername` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5hash` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `update_comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT (NULL),
  `authorcompany` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `integer_version` int NOT NULL DEFAULT '0',
  `current_version` smallint unsigned NOT NULL DEFAULT '0',
  `lastreviewedversion` int NOT NULL DEFAULT '0',
  `documentation_link` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distribution_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distribution_welcome_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`remote`),
  KEY `index_extrepo` (`extension_key`,`remote`),
  KEY `index_versionrepo` (`integer_version`,`remote`,`extension_key`),
  KEY `index_currentversions` (`current_version`,`review_state`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-21 14:51:52
-- MySQL dump 10.13  Distrib 5.7.44, for osx10.17 (x86_64)
--
-- Host: 127.0.0.1    Database: typo3_formcrshield_acceptance_v13
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
INSERT INTO `be_sessions` VALUES ('240091c757da594e3933f906d6542e883485da96a28b9626f28150a10bbb683c','[DISABLED]',1,1721561608,_binary 'a:1:{s:26:\"formProtectionSessionToken\";s:64:\"cffba6cb3fc5e8eeac56abfd06875767ec96839114fc1ff721b0b1e885ffd8e0\";}'),('c695244c3e09cfd6f602f7a183f9c97b1220f3de91a43cdfc911a83c01c8705a','[DISABLED]',1,1705136101,_binary 'a:2:{s:26:\"formProtectionSessionToken\";s:64:\"17e7f65fe5196ea59d864a73727aa98376b8b3e1ed7b6e1931e6fbe79a42abac\";s:29:\"extFormProtectionSessionToken\";s:64:\"b7b653cc25658f26a6f15bc79b10ee1e59c77b96166fef74e07bbe6ecfc1c85f\";}');
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1667048107,1667048107,0,0,0,0,NULL,'admin',0,'$2y$12$r.AERNKN21sXh.34pkRh2.O3Lt2h93BHjvV..QBGRkTG286swXXQC',1,NULL,'default','',NULL,0,'',NULL,'',_binary 'a:11:{s:14:\"interfaceSetup\";s:0:\"\";s:10:\"moduleData\";a:6:{s:10:\"web_layout\";a:3:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";s:19:\"constant_editor_cat\";N;}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:9:\"file_list\";a:3:{s:8:\"function\";N;s:8:\"language\";N;s:19:\"constant_editor_cat\";N;}s:10:\"FormEngine\";a:2:{i:0;a:0:{}i:1;s:32:\"af6a208f792a83220f87a953a62a081a\";}s:16:\"opendocs::recent\";a:8:{s:32:\"af6a208f792a83220f87a953a62a081a\";a:5:{i:0;s:0:\"\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:6;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B6%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:6;s:3:\"pid\";i:6;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:76:\"/typo3/module/web/layout?token=2c2e8fc295ec0a3797993fd0df0c224e8a805e7e&id=6\";}s:32:\"494c59ed0b451cdb0042831766e2d4b1\";a:4:{i:0;s:9:\"Root Page\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:5;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B5%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:5;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"a3b9454ecc0d182884b26f9c529ddb87\";a:4:{i:0;s:0:\"\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:4;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B4%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:4;s:3:\"pid\";i:5;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"3af505b920348c1a79bf62ea28cbec90\";a:4:{i:0;s:31:\"Multiple step form with summary\";i:1;a:5:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:5;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:28:\"&edit%5Bpages%5D%5B5%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:5;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"581106f297d9eed8dec1190ee4d6b04d\";a:4:{i:0;s:0:\"\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:3;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B3%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:3;s:3:\"pid\";i:4;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"deac478137dd48a97e299bd046412e21\";a:4:{i:0;s:0:\"\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:2;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B2%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:2;s:3:\"pid\";i:3;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"86205c5935270b8ee413592ec1b62292\";a:4:{i:0;s:8:\"NEW SITE\";i:1;a:5:{s:4:\"edit\";a:1:{s:12:\"sys_template\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:35:\"&edit%5Bsys_template%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:12:\"sys_template\";s:3:\"uid\";i:1;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"c312013d83c1a6ad7fec8b36a37ba3c8\";a:4:{i:0;s:0:\"\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:1;s:3:\"pid\";i:2;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}s:6:\"web_ts\";a:3:{s:8:\"function\";s:85:\"TYPO3\\CMS\\Tstemplate\\Controller\\TypoScriptTemplateInformationModuleFunctionController\";s:8:\"language\";N;s:19:\"constant_editor_cat\";s:0:\"\";}}s:14:\"emailMeAtLogin\";i:0;s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:25:\"resizeTextareas_MaxHeight\";i:500;s:4:\"lang\";s:7:\"default\";s:19:\"firstLoginTimeStamp\";i:1667048114;s:15:\"moduleSessionID\";a:6:{s:10:\"web_layout\";s:40:\"b14f7133d536d772ff4ad4e6e27abd7adf80913c\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:40:\"b39defca66536dd127d84b6f95308ece423511e8\";s:9:\"file_list\";s:40:\"b14f7133d536d772ff4ad4e6e27abd7adf80913c\";s:10:\"FormEngine\";s:40:\"b39defca66536dd127d84b6f95308ece423511e8\";s:16:\"opendocs::recent\";s:40:\"b39defca66536dd127d84b6f95308ece423511e8\";s:6:\"web_ts\";s:40:\"b14f7133d536d772ff4ad4e6e27abd7adf80913c\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:1:{s:8:\"Pagetree\";a:1:{s:9:\"stateHash\";a:3:{s:3:\"0_0\";s:1:\"1\";s:3:\"0_1\";s:1:\"1\";s:3:\"0_4\";s:1:\"1\";}}}}}',NULL,NULL,1,NULL,1721561583,0,NULL,NULL,'');
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `fe_sessions`
--

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
INSERT INTO `fe_sessions` VALUES ('07d270e00d98f2ff8fea91fab8eb2990da5af3ace3893932b5859a91c44bdb81','[DISABLED]',0,1721562227,_binary 'a:1:{s:50:\"tx_form_honeypot_name_serverSideValidation-6page-1\";s:20:\"bLsDWqERaCdc2M8NG4tF\";}',0),('0e43a7cdc9cff2c651309edda71fe5613ea4b8b418009fdcef0efec226c8d5de','[DISABLED]',0,1721562249,_binary 'a:2:{s:57:\"tx_form_honeypot_name_multiplestepformwithsummary-4page-2\";s:23:\"NLKAJeihM9XxCVkRWvsTr3q\";s:64:\"tx_form_honeypot_name_multiplestepformwithsummary-4summarypage-1\";s:6:\"g8DqbH\";}',0),('2e08c7b8c168a3b3c9d127a2dc15edf39efd980293586a26acd622b6b26bcfcc','[DISABLED]',0,1721562248,_binary 'a:1:{s:40:\"tx_form_honeypot_name_simpleform-1page-1\";s:7:\"w4VBmRv\";}',0),('76ddb73b3049b53b65bd6f8c8d95184ea0179a7eed71eccfcece7a404ae7f418','[DISABLED]',0,1721562209,_binary 'a:2:{s:51:\"tx_form_honeypot_name_simpleformwithsummary-2page-1\";s:21:\"uY0wREPJr1ImyvXctTshp\";s:58:\"tx_form_honeypot_name_simpleformwithsummary-2summarypage-1\";s:25:\"m9Di8AyOK610fG2qpvrbSkCca\";}',0),('7e4234ba7a225c8dab42ceed44a27c2e2a0dd25124bc30099ca574d26c4e6bcc','[DISABLED]',0,1721562218,_binary 'a:2:{s:57:\"tx_form_honeypot_name_multiplestepformwithsummary-4page-1\";s:9:\"bDJ05oxBa\";s:57:\"tx_form_honeypot_name_multiplestepformwithsummary-4page-2\";s:14:\"p1J2IiNPoqCxZ7\";}',0),('7fd3cad3013a004449557f3f672608a5231354ffadc37ef46000d93ed4254733','[DISABLED]',0,1721562200,_binary 'a:1:{s:40:\"tx_form_honeypot_name_simpleform-1page-1\";s:8:\"5abGEpit\";}',0),('87dfe07a655523f33cc9ce7f83b2cd5c0648aefc27f1ced59cb3d80d3dd2a452','[DISABLED]',0,1721562248,_binary 'a:1:{s:58:\"tx_form_honeypot_name_simpleformwithsummary-2summarypage-1\";s:26:\"vJ8ZUIGWEb1fMBlHFSenoa6rhk\";}',0),('a91b64722383b86235dbf5bcdbd8950099c3e03c13872102f9098d824d754cc3','[DISABLED]',0,1721562249,_binary 'a:1:{s:46:\"tx_form_honeypot_name_multiplestepform-3page-2\";s:25:\"FeU3B8qumhXSxoEQ9TwL5AlCv\";}',0),('ad17f3b0e0102ba8ab19e5b0b6e4fab2b7828b7c6d9c70d5b7915fd367ba4322','[DISABLED]',0,1721562249,_binary 'a:1:{s:50:\"tx_form_honeypot_name_serverSideValidation-6page-1\";s:17:\"cMUYFnZfVj9NSmziv\";}',0),('cc39b5739707691f3c51b0928796801d93bb8c620da57dd9a61d6bb35053a05c','[DISABLED]',0,1721562223,_binary 'a:1:{s:50:\"tx_form_honeypot_name_serverSideValidation-6page-1\";s:6:\"kS2lbu\";}',0),('d3d5b01f926b9257e5ab2d7b00b1911b8908c354f38301139c383239aa46c5ea','[DISABLED]',0,1721562214,_binary 'a:2:{s:46:\"tx_form_honeypot_name_multiplestepform-3page-1\";s:5:\"Blavh\";s:46:\"tx_form_honeypot_name_multiplestepform-3page-2\";s:19:\"KLvqMxplsfyWRaG1UQ7\";}',0),('ed7a3887c8235345abd7cc983d48ee7b1624718873e72060a6cc5006ed455d1a','[DISABLED]',0,1721562249,_binary 'a:1:{s:50:\"tx_form_honeypot_name_serverSideValidation-6page-1\";s:18:\"7JoYba2rLgtBWdmHNi\";}',0);
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,1667048305,1667048168,0,0,0,0,'',256,NULL,0,0,0,0,NULL,_binary '{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"description\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"fe_login_mode\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,0,31,27,0,'Root','/',1,NULL,1,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1667063774,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0),(2,1,1667048347,1667048345,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,_binary '{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,'Simple form','/simple-form',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1667048491,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0),(3,1,1667048361,1667048357,0,0,0,0,'0',512,NULL,0,0,0,0,NULL,_binary '{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,'Simple form with summary','/simple-form-with-summary',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1667048610,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0),(4,1,1667048784,1667048370,0,0,0,0,'0',576,NULL,0,0,0,0,NULL,_binary '{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,'Multiple step form','/multiple-step-form',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1667048784,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0),(5,1,1667048792,1667048774,0,0,0,0,'',640,NULL,0,0,0,0,NULL,_binary '{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,'Multiple step form with summary','/multiple-step-form-with-summary',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1667048826,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0),(6,1,1705135253,1705135250,0,0,0,0,'0',896,NULL,0,0,0,0,NULL,_binary '{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,'Server Side Validation','/server-side-validation',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1705135357,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sys_be_shortcuts`
--

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sys_csp_resolution`
--

LOCK TABLES `sys_csp_resolution` WRITE;
/*!40000 ALTER TABLE `sys_csp_resolution` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_csp_resolution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES (1,0,1667048681,0,0,1,1,0,'/form_definitions/simpleform.form.yaml','55f74855168b598f9b858cdae7df8e7624321b2a','c62e3e70a526a59f0f0b7687864947eab72d7d3f','yaml','text/plain','simpleform.form.yaml','b05b486e096744a286073a6365e6c6dbf21f2f69',674,1667048681,1667048681),(2,0,1667048688,0,0,1,1,0,'/form_definitions/simpleformwithsummary.form.yaml','7f6155cd7b266536b4bdf629eb2b501af272e6d7','c62e3e70a526a59f0f0b7687864947eab72d7d3f','yaml','text/plain','simpleformwithsummary.form.yaml','7d75de0ea2b9dd5b569d045440cceb5934ab9606',880,1667048688,1667048688),(3,0,1667048739,0,0,1,1,0,'/form_definitions/multiplestepform.form.yaml','dc8f3fd0703d1177ef09859cdb865dc7567b39e7','c62e3e70a526a59f0f0b7687864947eab72d7d3f','yaml','text/plain','multiplestepform.form.yaml','c983fe7f4d987451e92074cc12525c6cae58a57c',961,1667048739,1667048739),(4,0,1667048815,0,0,1,1,0,'/form_definitions/multiplestepformwithsummary.form.yaml','33e5f23eceb5e6281d1796b72490dfe680f98e49','c62e3e70a526a59f0f0b7687864947eab72d7d3f','yaml','text/plain','multiplestepformwithsummary.form.yaml','47ca678ee3bf95ebb7c5f35f8f13eee4feb891c6',1167,1667048815,1667048815),(5,0,1705135687,0,0,1,1,0,'/form_definitions/serversidevalidation.form.yaml','191c7235c48a53d06d0e0ddf0bd780d1146a1b10','c62e3e70a526a59f0f0b7687864947eab72d7d3f','yaml','text/plain','serversidevalidation.form.yaml','090f3152376b1359cacbb72e8e66e038b720e9f4',1051,1705135687,1705135687);
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
INSERT INTO `sys_file_metadata` VALUES (1,0,1667048681,1667048401,0,0,NULL,'',0,0,0,0,1,NULL,0,0,NULL,NULL,0),(2,0,1667048688,1667048593,0,0,NULL,'',0,0,0,0,2,NULL,0,0,NULL,NULL,0),(3,0,1667048739,1667048718,0,0,NULL,'',0,0,0,0,3,NULL,0,0,NULL,NULL,0),(4,0,1667048815,1667048809,0,0,NULL,'',0,0,0,0,4,NULL,0,0,NULL,NULL,0),(5,0,1705135687,1705135270,0,0,NULL,'',0,0,0,0,5,NULL,0,0,NULL,NULL,0);
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1667048203,1667048203,0,'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','fileadmin','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
INSERT INTO `sys_history` VALUES (1,1667048168,1,'BE',1,0,1,'pages','{\"uid\":1,\"pid\":0,\"tstamp\":1667048168,\"crdate\":1667048168,\"cruser_id\":1,\"deleted\":0,\"hidden\":1,\"starttime\":0,\"endtime\":0,\"fe_group\":\"0\",\"sorting\":256,\"rowDescription\":null,\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Root\",\"slug\":\"\\/\",\"doktype\":1,\"TSconfig\":null,\"is_siteroot\":0,\"php_tree_stop\":0,\"url\":\"\",\"shortcut\":0,\"shortcut_mode\":0,\"subtitle\":\"\",\"layout\":0,\"target\":\"\",\"media\":0,\"lastUpdated\":0,\"keywords\":null,\"cache_timeout\":0,\"cache_tags\":\"\",\"newUntil\":0,\"description\":null,\"no_search\":0,\"SYS_LASTCHANGED\":0,\"abstract\":null,\"module\":\"\",\"extendToSubpages\":0,\"author\":\"\",\"author_email\":\"\",\"nav_title\":\"\",\"nav_hide\":0,\"content_from_pid\":0,\"mount_pid\":0,\"mount_pid_ol\":0,\"l18n_cfg\":0,\"fe_login_mode\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":null,\"categories\":0}',0,'0400$e93ec53131be780b4498c704c8f924d0:e175f7045d7ccbfb26ffcf279422c2e5'),(2,1667048168,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"l10n_diffsource\":\"\"},\"newRecord\":{\"l10n_diffsource\":\"{\\\"slug\\\":\\\"\\\"}\"}}',0,'0400$b5de05e1c4e54e10e9f159b102c055c7:e175f7045d7ccbfb26ffcf279422c2e5'),(3,1667048170,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"{\\\"slug\\\":\\\"\\\"}\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$ab0881a44d7ac72c6e0f86e5b1e288a1:e175f7045d7ccbfb26ffcf279422c2e5'),(4,1667048215,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"is_siteroot\":0,\"fe_group\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"},\"newRecord\":{\"is_siteroot\":\"1\",\"fe_group\":\"\",\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"keywords\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"content_from_pid\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"cache_timeout\\\":\\\"\\\",\\\"cache_tags\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"module\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"fe_login_mode\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$ad1136cfbb428a0dfb937776c364021e:e175f7045d7ccbfb26ffcf279422c2e5'),(5,1667048285,1,'BE',1,0,1,'sys_template','{\"uid\":1,\"pid\":1,\"tstamp\":1667048285,\"crdate\":1667048285,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"sorting\":256,\"description\":null,\"t3_origuid\":0,\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"title\":\"NEW SITE\",\"root\":1,\"clear\":3,\"include_static_file\":null,\"constants\":null,\"config\":\"\\n# Default PAGE object:\\npage = PAGE\\npage.10 = TEXT\\npage.10.value = HELLO WORLD!\\n\",\"basedOn\":\"\",\"includeStaticAfterBasedOn\":0,\"static_file_mode\":0}',0,'0400$41f16d2b5c964553d3bd6ab64b9065a2:35af6288617af54964e77af08c30949a'),(6,1667048291,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"config\":\"\\n# Default PAGE object:\\npage = PAGE\\npage.10 = TEXT\\npage.10.value = HELLO WORLD!\\n\"},\"newRecord\":{\"config\":\"page = PAGE\\r\\npage.10 < styles.content.get\"}}',0,'0400$78e938512657f5f6737bb0754554c836:35af6288617af54964e77af08c30949a'),(7,1667048345,1,'BE',1,0,2,'pages','{\"uid\":2,\"pid\":1,\"tstamp\":1667048345,\"crdate\":1667048345,\"cruser_id\":1,\"deleted\":0,\"hidden\":1,\"starttime\":0,\"endtime\":0,\"fe_group\":\"0\",\"sorting\":256,\"rowDescription\":null,\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Simple form\",\"slug\":\"\\/simple-form\",\"doktype\":1,\"TSconfig\":null,\"is_siteroot\":0,\"php_tree_stop\":0,\"url\":\"\",\"shortcut\":0,\"shortcut_mode\":0,\"subtitle\":\"\",\"layout\":0,\"target\":\"\",\"media\":0,\"lastUpdated\":0,\"keywords\":null,\"cache_timeout\":0,\"cache_tags\":\"\",\"newUntil\":0,\"description\":null,\"no_search\":0,\"SYS_LASTCHANGED\":0,\"abstract\":null,\"module\":\"\",\"extendToSubpages\":0,\"author\":\"\",\"author_email\":\"\",\"nav_title\":\"\",\"nav_hide\":0,\"content_from_pid\":0,\"mount_pid\":0,\"mount_pid_ol\":0,\"l18n_cfg\":0,\"fe_login_mode\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":null,\"categories\":0}',0,'0400$e798038bcc99f15adb7228239fff79d5:f11830df10b4b0bca2db34810c2241b3'),(8,1667048347,2,'BE',1,0,2,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$759942b6bffe7ac221348fd17ae28248:f11830df10b4b0bca2db34810c2241b3'),(9,1667048357,1,'BE',1,0,3,'pages','{\"uid\":3,\"pid\":1,\"tstamp\":1667048357,\"crdate\":1667048357,\"cruser_id\":1,\"deleted\":0,\"hidden\":1,\"starttime\":0,\"endtime\":0,\"fe_group\":\"0\",\"sorting\":512,\"rowDescription\":null,\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Simple form with summary\",\"slug\":\"\\/simple-form-with-summary\",\"doktype\":1,\"TSconfig\":null,\"is_siteroot\":0,\"php_tree_stop\":0,\"url\":\"\",\"shortcut\":0,\"shortcut_mode\":0,\"subtitle\":\"\",\"layout\":0,\"target\":\"\",\"media\":0,\"lastUpdated\":0,\"keywords\":null,\"cache_timeout\":0,\"cache_tags\":\"\",\"newUntil\":0,\"description\":null,\"no_search\":0,\"SYS_LASTCHANGED\":0,\"abstract\":null,\"module\":\"\",\"extendToSubpages\":0,\"author\":\"\",\"author_email\":\"\",\"nav_title\":\"\",\"nav_hide\":0,\"content_from_pid\":0,\"mount_pid\":0,\"mount_pid_ol\":0,\"l18n_cfg\":0,\"fe_login_mode\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":null,\"categories\":0}',0,'0400$534de08b77d1d1f2a3ac6b7ed16107f3:fe15eeb7d49e64e2cea91ab53fcf0db1'),(10,1667048361,2,'BE',1,0,3,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$fe9dd37d76f3967467d04ca482576dcd:fe15eeb7d49e64e2cea91ab53fcf0db1'),(11,1667048370,1,'BE',1,0,4,'pages','{\"uid\":4,\"pid\":1,\"tstamp\":1667048370,\"crdate\":1667048370,\"cruser_id\":1,\"deleted\":0,\"hidden\":1,\"starttime\":0,\"endtime\":0,\"fe_group\":\"0\",\"sorting\":768,\"rowDescription\":null,\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Multiple step form\",\"slug\":\"\\/multiple-step-form\",\"doktype\":1,\"TSconfig\":null,\"is_siteroot\":0,\"php_tree_stop\":0,\"url\":\"\",\"shortcut\":0,\"shortcut_mode\":0,\"subtitle\":\"\",\"layout\":0,\"target\":\"\",\"media\":0,\"lastUpdated\":0,\"keywords\":null,\"cache_timeout\":0,\"cache_tags\":\"\",\"newUntil\":0,\"description\":null,\"no_search\":0,\"SYS_LASTCHANGED\":0,\"abstract\":null,\"module\":\"\",\"extendToSubpages\":0,\"author\":\"\",\"author_email\":\"\",\"nav_title\":\"\",\"nav_hide\":0,\"content_from_pid\":0,\"mount_pid\":0,\"mount_pid_ol\":0,\"l18n_cfg\":0,\"fe_login_mode\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":null,\"categories\":0}',0,'0400$c28c66344fdbcb27affba9404c2c4a37:412add0b3eb6ec8f1cb6710aea92e21e'),(12,1667048373,2,'BE',1,0,4,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$aad470b0de96bd56df08bf67a5d9e339:412add0b3eb6ec8f1cb6710aea92e21e'),(13,1667048489,1,'BE',1,0,1,'tt_content','{\"uid\":1,\"rowDescription\":\"\",\"pid\":2,\"tstamp\":1667048489,\"crdate\":1667048489,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":256,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"CType\":\"form_formframework\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":null,\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":0,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"sDEF\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"settings.persistenceIdentifier\\\">\\n                    <value index=\\\"vDEF\\\">1:\\/form_definitions\\/simpleform.form.yaml<\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\",\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"categories\":0,\"selected_categories\":null}',0,'0400$782d7ce175ee4e7f3e639e483f056e92:7fa2c035f26826fe83eeecaaeddc4d40'),(14,1667048491,2,'BE',1,0,1,'tt_content','{\"oldRecord\":{\"l18n_diffsource\":\"\"},\"newRecord\":{\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_position\\\":\\\"\\\",\\\"date\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"pi_flexform\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$ffb25b2f5d140b16906380542d3a008d:7fa2c035f26826fe83eeecaaeddc4d40'),(15,1667048507,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"include_static_file\":null},\"newRecord\":{\"include_static_file\":\"EXT:form\\/Configuration\\/TypoScript\\/\"}}',0,'0400$8f9c8382734e31e2782ca941057893f4:35af6288617af54964e77af08c30949a'),(16,1667048534,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"include_static_file\":\"EXT:form\\/Configuration\\/TypoScript\\/\"},\"newRecord\":{\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:form\\/Configuration\\/TypoScript\\/\"}}',0,'0400$3774c074836f4a9535703defb99f508b:35af6288617af54964e77af08c30949a'),(17,1667048609,1,'BE',1,0,2,'tt_content','{\"uid\":2,\"rowDescription\":\"\",\"pid\":3,\"tstamp\":1667048609,\"crdate\":1667048609,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":256,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"CType\":\"form_formframework\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":null,\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":0,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"sDEF\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"settings.persistenceIdentifier\\\">\\n                    <value index=\\\"vDEF\\\">1:\\/form_definitions\\/simpleformwithsummary.form.yaml<\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\",\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"categories\":0,\"selected_categories\":null}',0,'0400$f5a9c37354529355ee82341fb3373083:01dbc21fdb1263685b9147b3b1596ea8'),(18,1667048610,2,'BE',1,0,2,'tt_content','{\"oldRecord\":{\"pi_flexform\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"sDEF\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"settings.persistenceIdentifier\\\">\\n                    <value index=\\\"vDEF\\\">1:\\/form_definitions\\/simpleformwithsummary.form.yaml<\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"pi_flexform\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"sDEF\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"settings.persistenceIdentifier\\\">\\n                    <value index=\\\"vDEF\\\">1:\\/form_definitions\\/simpleformwithsummary.form.yaml<\\/value>\\n                <\\/field>\\n                <field index=\\\"settings.overrideFinishers\\\">\\n                    <value index=\\\"vDEF\\\">0<\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_position\\\":\\\"\\\",\\\"date\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"pi_flexform\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$7fa6fa53472bd862d83fe928682b17f4:01dbc21fdb1263685b9147b3b1596ea8'),(19,1667048754,1,'BE',1,0,3,'tt_content','{\"uid\":3,\"rowDescription\":\"\",\"pid\":4,\"tstamp\":1667048754,\"crdate\":1667048754,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":256,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"CType\":\"form_formframework\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":null,\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":0,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"sDEF\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"settings.persistenceIdentifier\\\">\\n                    <value index=\\\"vDEF\\\">1:\\/form_definitions\\/multiplestepform.form.yaml<\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\",\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"categories\":0,\"selected_categories\":null}',0,'0400$aeed84ef90e446adf82753e8583e7135:b92300cfb5d1d3645c9cb212a7f56c1f'),(20,1667048755,2,'BE',1,0,3,'tt_content','{\"oldRecord\":{\"pi_flexform\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"sDEF\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"settings.persistenceIdentifier\\\">\\n                    <value index=\\\"vDEF\\\">1:\\/form_definitions\\/multiplestepform.form.yaml<\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"pi_flexform\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"sDEF\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"settings.persistenceIdentifier\\\">\\n                    <value index=\\\"vDEF\\\">1:\\/form_definitions\\/multiplestepform.form.yaml<\\/value>\\n                <\\/field>\\n                <field index=\\\"settings.overrideFinishers\\\">\\n                    <value index=\\\"vDEF\\\">0<\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_position\\\":\\\"\\\",\\\"date\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"pi_flexform\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$1c41074331b90797613e3f047aaeff78:b92300cfb5d1d3645c9cb212a7f56c1f'),(21,1667048774,1,'BE',1,0,5,'pages','{\"uid\":5,\"pid\":4,\"tstamp\":1667048774,\"crdate\":1667048774,\"cruser_id\":1,\"deleted\":0,\"hidden\":1,\"starttime\":0,\"endtime\":0,\"fe_group\":\"0\",\"sorting\":256,\"rowDescription\":null,\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Multiple step form with summary\",\"slug\":\"\\/multiple-step-form\\/multiple-step-form-with-summary\",\"doktype\":1,\"TSconfig\":null,\"is_siteroot\":0,\"php_tree_stop\":0,\"url\":\"\",\"shortcut\":0,\"shortcut_mode\":0,\"subtitle\":\"\",\"layout\":0,\"target\":\"\",\"media\":0,\"lastUpdated\":0,\"keywords\":null,\"cache_timeout\":0,\"cache_tags\":\"\",\"newUntil\":0,\"description\":null,\"no_search\":0,\"SYS_LASTCHANGED\":0,\"abstract\":null,\"module\":\"\",\"extendToSubpages\":0,\"author\":\"\",\"author_email\":\"\",\"nav_title\":\"\",\"nav_hide\":0,\"content_from_pid\":0,\"mount_pid\":0,\"mount_pid_ol\":0,\"l18n_cfg\":0,\"fe_login_mode\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":null,\"categories\":0}',0,'0400$6565869b4bd7dc203e1ec89f8d35b1cb:7ef5a4e3e11db8ac3fea4d7a75468161'),(22,1667048781,3,'BE',1,0,5,'pages','{\"oldPageId\":4,\"newPageId\":1,\"oldData\":{\"header\":\"Multiple step form with summary\",\"pid\":4,\"event_pid\":5,\"t3ver_state\":0},\"newData\":{\"tstamp\":1667048781,\"pid\":1,\"sorting\":640}}',0,'0400$be8803059de3aab7b19508f842e9faa3:7ef5a4e3e11db8ac3fea4d7a75468161'),(23,1667048784,3,'BE',1,0,4,'pages','{\"oldPageId\":1,\"newPageId\":1,\"oldData\":{\"header\":\"Multiple step form\",\"pid\":1,\"event_pid\":4,\"t3ver_state\":0},\"newData\":{\"tstamp\":1667048784,\"pid\":1,\"sorting\":576}}',0,'0400$c9b2d1cbc8bc4e3645f0a5b65997bcc0:412add0b3eb6ec8f1cb6710aea92e21e'),(24,1667048789,2,'BE',1,0,5,'pages','{\"oldRecord\":{\"slug\":\"\\/multiple-step-form\\/multiple-step-form-with-summary\",\"fe_group\":\"0\",\"l10n_diffsource\":\"\"},\"newRecord\":{\"slug\":\"\\/multiple-step-form-with-summary\",\"fe_group\":\"\",\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"keywords\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"content_from_pid\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"cache_timeout\\\":\\\"\\\",\\\"cache_tags\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"module\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"fe_login_mode\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$a1f61b80df36e09bfafb41a8dedef54f:7ef5a4e3e11db8ac3fea4d7a75468161'),(25,1667048792,2,'BE',1,0,5,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"keywords\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"content_from_pid\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"cache_timeout\\\":\\\"\\\",\\\"cache_tags\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"module\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"fe_login_mode\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$98b639fa0840fa4ad2defea570185a69:7ef5a4e3e11db8ac3fea4d7a75468161'),(26,1667048825,1,'BE',1,0,4,'tt_content','{\"uid\":4,\"rowDescription\":\"\",\"pid\":5,\"tstamp\":1667048825,\"crdate\":1667048825,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":256,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"CType\":\"form_formframework\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":null,\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":0,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"sDEF\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"settings.persistenceIdentifier\\\">\\n                    <value index=\\\"vDEF\\\">1:\\/form_definitions\\/multiplestepformwithsummary.form.yaml<\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\",\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"categories\":0,\"selected_categories\":null}',0,'0400$75f7835179becf863a451f80e7626e81:4d391f5ef79b8d5d10dffa8a07ca167d'),(27,1667048826,2,'BE',1,0,4,'tt_content','{\"oldRecord\":{\"pi_flexform\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"sDEF\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"settings.persistenceIdentifier\\\">\\n                    <value index=\\\"vDEF\\\">1:\\/form_definitions\\/multiplestepformwithsummary.form.yaml<\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"pi_flexform\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"sDEF\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"settings.persistenceIdentifier\\\">\\n                    <value index=\\\"vDEF\\\">1:\\/form_definitions\\/multiplestepformwithsummary.form.yaml<\\/value>\\n                <\\/field>\\n                <field index=\\\"settings.overrideFinishers\\\">\\n                    <value index=\\\"vDEF\\\">0<\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_position\\\":\\\"\\\",\\\"date\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"pi_flexform\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$3b48a3b224ab1ca8af928a6aaa8ab79a:4d391f5ef79b8d5d10dffa8a07ca167d'),(28,1667063774,1,'BE',1,0,5,'tt_content','{\"uid\":5,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1667063774,\"crdate\":1667063774,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":256,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"CType\":\"header\",\"header\":\"Root Page\",\"header_position\":\"\",\"bodytext\":null,\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":0,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"categories\":0,\"selected_categories\":null}',0,'0400$8450da87fa34eae7226a305d7a035b9a:c7626fc9bcba6f70beb6ebc085a400db'),(29,1705135250,1,'BE',1,0,6,'pages','{\"uid\":6,\"pid\":1,\"tstamp\":1705135250,\"crdate\":1705135250,\"deleted\":0,\"hidden\":1,\"starttime\":0,\"endtime\":0,\"fe_group\":\"0\",\"sorting\":896,\"rowDescription\":null,\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Server Side Validation\",\"slug\":\"\\/server-side-validation\",\"doktype\":1,\"TSconfig\":null,\"is_siteroot\":0,\"php_tree_stop\":0,\"url\":\"\",\"shortcut\":0,\"shortcut_mode\":0,\"subtitle\":\"\",\"layout\":0,\"target\":\"\",\"media\":0,\"lastUpdated\":0,\"keywords\":null,\"cache_timeout\":0,\"cache_tags\":\"\",\"newUntil\":0,\"description\":null,\"no_search\":0,\"SYS_LASTCHANGED\":0,\"abstract\":null,\"module\":\"\",\"extendToSubpages\":0,\"author\":\"\",\"author_email\":\"\",\"nav_title\":\"\",\"nav_hide\":0,\"content_from_pid\":0,\"mount_pid\":0,\"mount_pid_ol\":0,\"l18n_cfg\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":null,\"categories\":0}',0,'0400$dac0346b6451601f6f69243338541191:c75354c439a48dbde16b03ac553a080d'),(30,1705135253,2,'BE',1,0,6,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$c86141c131504f32388affb966e69f7d:c75354c439a48dbde16b03ac553a080d'),(31,1705135356,1,'BE',1,0,6,'tt_content','{\"uid\":6,\"rowDescription\":\"\",\"pid\":6,\"tstamp\":1705135356,\"crdate\":1705135356,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":256,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"CType\":\"form_formframework\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":null,\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":0,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"sDEF\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"settings.persistenceIdentifier\\\">\\n                    <value index=\\\"vDEF\\\">1:\\/form_definitions\\/serversidevalidation.form.yaml<\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\",\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"categories\":0,\"selected_categories\":null}',0,'0400$2a3e84e8db51cbcb75ef894ad1671a32:c0db6803ab1ec5f70c36e2a72187867b'),(32,1705135357,2,'BE',1,0,6,'tt_content','{\"oldRecord\":{\"l18n_diffsource\":\"\"},\"newRecord\":{\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_position\\\":\\\"\\\",\\\"date\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"pi_flexform\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$7edec14faa0285ba2e8fe0004d90d8be:c0db6803ab1ec5f70c36e2a72187867b');
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sys_messenger_messages`
--

LOCK TABLES `sys_messenger_messages` WRITE;
/*!40000 ALTER TABLE `sys_messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
INSERT INTO `sys_refindex` VALUES ('0bf363f198352c1f251386c0a559f6ac','sys_file',3,'metadata','','','',0,0,'sys_file_metadata',3,'',0,0,2147483647,0,'',0,0,2147483647,0,0),('1c9b8784c1518ef7b22704c4fc698ca9','sys_file',2,'storage','','','',0,0,'sys_file_storage',1,'',0,0,2147483647,0,'',0,0,2147483647,0,0),('24d47b29aa969cf4db8635e76dd1c386','sys_file',3,'storage','','','',0,0,'sys_file_storage',1,'',0,0,2147483647,0,'',0,0,2147483647,0,0),('39433ea4a82060704109046e4828d3c8','sys_file',1,'storage','','','',0,0,'sys_file_storage',1,'',0,0,2147483647,0,'',0,0,2147483647,0,0),('5041e5cb9e189c2e0430a1e0aced5d29','tt_content',1,'pi_flexform','sDEF/lDEF/settings.persistenceIdentifier/vDEF/','formPersistenceIdentifier','ff0a0811a2714d13cd3adaf006b02709',-1,0,'sys_file',1,'',0,0,2147483647,0,'',0,0,2147483647,0,0),('749b0771828793d3e3eba1372852a7a8','sys_file',2,'metadata','','','',0,0,'sys_file_metadata',2,'',0,0,2147483647,0,'',0,0,2147483647,0,0),('791d3f9d43dcbfa78cd49dd8258caa09','sys_file',5,'storage','','','',0,0,'sys_file_storage',1,'',0,0,2147483647,0,'',0,0,2147483647,0,0),('8987893411baca05f986dca0a4c38bd8','sys_file',5,'metadata','','','',0,0,'sys_file_metadata',5,'',0,0,2147483647,0,'',0,0,2147483647,0,0),('9e6c2eb663cb44fbaed89d6190923a01','tt_content',6,'pi_flexform','sDEF/lDEF/settings.persistenceIdentifier/vDEF/','formPersistenceIdentifier','d0b61346a504b1f6d714ee5d3961c569',-1,0,'sys_file',5,'',0,0,2147483647,0,'',0,0,2147483647,0,0),('bab37143de5339e474516691bf0c5857','sys_file',4,'storage','','','',0,0,'sys_file_storage',1,'',0,0,2147483647,0,'',0,0,2147483647,0,0),('ddc26b8e87d88437258b643c95236b28','tt_content',2,'pi_flexform','sDEF/lDEF/settings.persistenceIdentifier/vDEF/','formPersistenceIdentifier','85cb0a48f70f1686ad14b00e18f1c167',-1,0,'sys_file',2,'',0,0,2147483647,0,'',0,0,2147483647,0,0),('ec01e9666331703a2215b40555f23bf6','sys_file',4,'metadata','','','',0,0,'sys_file_metadata',4,'',0,0,2147483647,0,'',0,0,2147483647,0,0),('f898c544320f3af6bf6a8ca23fb7d434','tt_content',3,'pi_flexform','sDEF/lDEF/settings.persistenceIdentifier/vDEF/','formPersistenceIdentifier','e4588e70299698b29e09cc9b5d0a953d',-1,0,'sys_file',3,'',0,0,2147483647,0,'',0,0,2147483647,0,0),('fd751ad337dbe22f7106b515d9475ec7','tt_content',4,'pi_flexform','sDEF/lDEF/settings.persistenceIdentifier/vDEF/','formPersistenceIdentifier','2e944e27579ca15008cad76e9a5f844e',-1,0,'sys_file',4,'',0,0,2147483647,0,'',0,0,2147483647,0,0),('fe80a6589cac9798aa13ab5e0192cb56','sys_file',1,'metadata','','','',0,0,'sys_file_metadata',1,'',0,0,2147483647,0,'',0,0,2147483647,0,0);
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'core','formProtectionSessionToken:1',_binary 's:64:\"cffba6cb3fc5e8eeac56abfd06875767ec96839114fc1ff721b0b1e885ffd8e0\";'),(2,'extensionDataImport','typo3/sysext/form/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(3,'extensionDataImport','typo3/sysext/tstemplate/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(4,'extensionDataImport','typo3/sysext/fluid_styled_content/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(5,'extensionDataImport','typo3conf/ext/form_crshield/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(6,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserLanguageMigration',_binary 'i:1;'),(8,'installUpdateRows','rowUpdatersDone',_binary 'a:4:{i:0;s:66:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\L18nDiffsourceToJsonMigration\";i:1;s:77:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\WorkspaceMovePlaceholderRemovalMigration\";i:2;s:76:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\WorkspaceNewPlaceholderRemovalMigration\";i:3;s:69:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\SysRedirectRootPageMoveMigration\";}'),(9,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PasswordPolicyForFrontendUsersUpdate',_binary 'i:1;'),(10,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SvgFilesSanitization',_binary 'i:1;'),(11,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysLogSerializationUpdate',_binary 'i:1;');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,1,1667048534,1667048285,0,0,0,0,256,NULL,'NEW SITE',1,3,'EXT:fluid_styled_content/Configuration/TypoScript/,EXT:form/Configuration/TypoScript/',NULL,'page = PAGE\r\npage.10 < styles.content.get','',0,0);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,'',2,1667048491,1667048489,0,0,0,0,'',256,0,0,0,0,NULL,_binary '{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"pi_flexform\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'form_formframework','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,'',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.persistenceIdentifier\">\n                    <value index=\"vDEF\">1:/form_definitions/simpleform.form.yaml</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'','','',NULL,124,0,0,0,0,NULL),(2,'',3,1667048610,1667048609,0,0,0,0,'',256,0,0,0,0,NULL,_binary '{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"pi_flexform\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'form_formframework','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,'',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.persistenceIdentifier\">\n                    <value index=\"vDEF\">1:/form_definitions/simpleformwithsummary.form.yaml</value>\n                </field>\n                <field index=\"settings.overrideFinishers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'','','',NULL,124,0,0,0,0,NULL),(3,'',4,1667048755,1667048754,0,0,0,0,'',256,0,0,0,0,NULL,_binary '{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"pi_flexform\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'form_formframework','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,'',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.persistenceIdentifier\">\n                    <value index=\"vDEF\">1:/form_definitions/multiplestepform.form.yaml</value>\n                </field>\n                <field index=\"settings.overrideFinishers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'','','',NULL,124,0,0,0,0,NULL),(4,'',5,1667048826,1667048825,0,0,0,0,'',256,0,0,0,0,NULL,_binary '{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"pi_flexform\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'form_formframework','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,'',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.persistenceIdentifier\">\n                    <value index=\"vDEF\">1:/form_definitions/multiplestepformwithsummary.form.yaml</value>\n                </field>\n                <field index=\"settings.overrideFinishers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'','','',NULL,124,0,0,0,0,NULL),(5,'',1,1667063774,1667063774,0,0,0,0,'',256,0,0,0,0,NULL,'',0,0,0,0,'header','Root Page','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,'',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'','','',NULL,124,0,0,0,0,NULL),(6,'',6,1705135357,1705135356,0,0,0,0,'',256,0,0,0,0,NULL,_binary '{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"pi_flexform\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'form_formframework','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,'',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.persistenceIdentifier\">\n                    <value index=\"vDEF\">1:/form_definitions/serversidevalidation.form.yaml</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'','','',NULL,124,0,0,0,0,NULL);
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-21 14:51:52
