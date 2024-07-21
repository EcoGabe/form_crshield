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

-- Dump completed on 2024-07-21 13:44:21
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
-- Dumping data for table `cache_hash`
--

LOCK TABLES `cache_hash` WRITE;
/*!40000 ALTER TABLE `cache_hash` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cache_hash_tags`
--

LOCK TABLES `cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cache_hash_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cache_imagesizes`
--

LOCK TABLES `cache_imagesizes` WRITE;
/*!40000 ALTER TABLE `cache_imagesizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_imagesizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cache_imagesizes_tags`
--

LOCK TABLES `cache_imagesizes_tags` WRITE;
/*!40000 ALTER TABLE `cache_imagesizes_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_imagesizes_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cache_pages`
--

LOCK TABLES `cache_pages` WRITE;
/*!40000 ALTER TABLE `cache_pages` DISABLE KEYS */;
INSERT INTO `cache_pages` VALUES (1,'1_1af8c169161e4bb0d3230b94baa6317b3318b6f3',1705222421,_binary 'x��V\�n\�6}���ѻ#K�7�/)o�H��5b��@\0��F7�(��/(�\�!%\�q�]tQ=\�2�\�\��\�b�ƛW�%D\"�b�$���\�x���\���}�:��9�c�Y\�׭=X΋\�؃\�#�\�\�\Z��pg\\i0c�2i���\�\�m\��e�	\�6�\�\�\0\�\�Rn@A\�;�οvY��B�B�b\�J�e\�H�\����\�A;\�R�d	ӲR1��K�}\����\�{\�W��\��\n#x�\�X���w�KPl�¹\�\�7Ƌ�\�\"�B\�zU$��\���\����Q\�X�;%��a�\�\�e;\�=&\�Sg\�\�n�\�h!\�V��*��b\n\�$6b��l\nP\Z\�<�T+n\�\�\�C�PbQ9�A�M��ov�\�K��[\�6�ar�~�Ҍ|�^7�@\�\�07Ry�\�\�\�sEM�\�<\�[\'�5�]7G�\�p�\�\�\�\�5JĚ�d\�\�}��s�\�^Jp3{o\'��*7�fmr�9I\�w�2\��;�~,p\�~\��\�\�\�\��6��\�;�3\�\��\�F�aSη6~tO\��\��v\�kj�9��w\�`9�q��?t�Di�V�\�sc�\���5>m�(V:�\'�����i��}\��\�\�|f��{Ԝ��U<��\r.:��\�\��p\�F�qm\�M8\"F�f�.\�\�\�ǖD!��Hi�\'7\�md\�Ag%\�po\�!1\�\�(K�X�\r�\�\�i{N�\\���=�5+��J�K��)T�\�}\�]�<�\n���\�\�\'k;=\r\�\r__]]fa��\�R\0�m��)�ɔܐ�Gi\�%R\�\�6��8\�!��\�9ᅹjA��Ă0�:�L\�\Z1�]$�G���\��n*#�\�\�	�6Ɂ\�\�^9BZ�\'\�H�@G\�\�\�7�\�ټB\"=\�C��E�ݨeE��>X�N\��e�\�\�\���M\�FE?�p�\�\�7)?\"k\�ǐ\�=\�\����\��k\0�Bc\�S��9#\��v\��\�\�$}���\'s�\�ɛ�������\�\���\r�Q\�\��\�\Z�W��YML1\�P;m�.Z���\�\�~U��j�kP�<h\�6q>��Tlw#F\�ͻ��߂���R�j� �H��\�2�Gd\"I�o��/���}\�\�wr,��!��JV\�qS\�\�	�\�\�Z��\�G\"_\\\ZԦY\��d�:F;I$�8����:�?$e�\��h�#\�i��\�H捜\�{\�&3rD&将|_\�+\�*ջ\��-�=\�d��0px\�gU6+A�C\'�s�t7\�K}4����$\n\��\�>/�'),(2,'2_68cd619a38fae14ac3e3d5fa6ce4e15a7dd1a42e',1705222423,_binary 'x�\�X\�s\�8�|�+4�\���uC\�{+�\�2�!/� ;S.ٖAĶ��L���\�גl0�\�\�L\�^�SEp��\��\�\�\�\�A\�>���M=�M[ն��,$�Y�}�et\�_\rG�\'h\" �ב�P��q\� �!	{���NHF\�󄈮�\n�Ԑ\�\�J%���\�&\�8	�ט=N<\�,(��P	\�(�)�\�ń\�A��ԑw �x@#��XL\"����i�\�9���P~=\�8$ό?�R*(�r9�B\��	\'1\�\�\�	c>aS�#\�%Q\�i\��\�\�\�|v�\��\�\�.���\'�\�f�T�Tk��\�\�ޣ�9��P���ĀYL\�q��#\�\�	lӏ|\�C,@N\�#���j�\0�E��\�e������qy�T\�xAE@z74��I-��&e1�\0��1&��(r\�о�\���teO���\�q�����̟�Gg�z]\�5A_���k�u�>K�q\Z�\�\r�&%i�-?�Ut�j�,�\nd\�z���M\��nɿ.��\"oґ^!�\�Ϯ�\�4\�\\�%�\�a�\r��0�+f�0r�\n�b�+#\�5ʚ�\��Y\�\�ר�P����w!�\�\�8�\�oq�TbA@��8�\�S�2�Sb\�/8�t+ͺ\�\�,\���V��u�\�+������\�o��	\�\�\�(N\�nO�\�AG\�\�m�1��|�Ͷ5�\�@3� 4\\�\�Őѻ\�\�j��Ws�p�8sCӽ>k�\�}�>�~4�\�:v\�\�\�밹p\��\�\�uП�\�E$�ӾyA���\��\�àr},ݳ��\�\�=ݞ�F��A�xvW\�OE|1=<p�l~�d���>*}�痻�]�FC�:��U��-\�7�֬\�z\�\'\��\ZM\��j\�\Z^�\����+\�f�\"K\�q�m�\�\�\�%�\�\�%\�\Z�?~�=e�]\�NSZي s����\�_\\^�)	�-rp�\��\�\�\�\�ԋ>\�&�[˶�Cs��^����\�\�\�^�n6M��_�k57�f\�q,˓Y\�[~\�u�\�#��̍͒*T���I�w#H��\�+\�v]*^\�j�#�s�ƅf�٘\�`�_Q\�7���q3zC��\�Ib\�r���R8��\�O��\\�\\Y)ڱo\�B��N�vs\�%߮�q�O5�RV¯G\�C�k�\�[*PK�SM\�\�\�&���Ž�U?;\"���S�\\&\r�9��\�yl|w�\�5�\�<�σaq>�Z�[ϵ\�r�4X�j\�˫\�\�4x\Z�\��8L?�g�O�\�m}\�V/��gگ�\�o\���y7?6wx���\���S\\\�n�C<%;Px-��E@\�yB\�a\�\�NT�6\n1ӨUA�\�l6I\���C\�j3\�\Zߟ.\�V|Y\�\�X�\�Jv��o�8�ӱ�e\�EE��J����p����\�g���5)t\�\�ط;\�\�|��\�!V:Q �$uB�]�\�p��(����S\�\"H�\�\�\�B\�^g��S\�s�6z\�ڲ6w���%nӿ\�	:eio;;\�l�U:�.���t/\�Y����$�N\�I\\Nc4wᒦn\�Д�2_�m�<�\�.S�&z0Iʗ�cE�#�\�%]���#~�\�O��̓Jݴ\�\Z\\~U\�\�Sp}��QN]r3\�\�t6�\\��j��JX1�W����HD�;!����q�*�}�ȧcIQ��\�Գ\�P�\rp�QON%r\�\�FEN\\ƽ5��ܪ\�j��\�\�\�#\�\�\�\�\\\�\�k%{���\�~y\�~A��N�\����o\�\�]o(wΞ���&���Kb\�&���j/G8�A0�ST�\�2*�|��\�\��{V\�\�U\�L\"\�\�:���\�#�\�Q@��G3-�� Mc���a�E}\�U7v4}6S��\��H\�\�\�\�z2:\�\�TΪ\�Zx\�-��#@\�0N�I�2U�~��zn�\0\�T�K��FH2��\�~_�*\0N	0���*�ey<)FX�\�L:fj��4�\�\�?x��f��4\n��X}{6\�\\(̱9��]\�\�\�8c\�W\Z�,��U�_�5h\�?rT\�\�-\�of[i֌p��9d\�h\�sR��9U\r-9!r\�\0�k0\�\�z�\�٫�3\��Gq�ը\�\\#�;NF\0]�%���md��\"�!�\�\�\'[!H��\�$�!��/�L\n:<����ѐa�\�{\�@��H4Ŧ����dx\�Ė?\�p\��\n\�*S\�\�ef��6\\c3�LwGg��1�\�ajd�܉��u,͍XV�\�X�J����\�\��?\rj\�	�lH\�\�y㎲^��\�j�V�4`\0\n\�|Ŵ�+j���iC<N���K\"\��\�\��_�A\�'),(3,'2_5ef6365230763499c653425c0c83e707bc25fb6a',1705222424,_binary 'x�\�<is7��u�+:\�̗\�Jd�)Z)��by$Y%ҳ�5�b�\� 	�\�\�\0ݒ�\��}\�\�\�\r���\�fk�J��\�\�;���.\\!�\�\�	\�\�dA�,���A�D�D<\�h�\�\�+\�v��\���w�\�\�]\�l��� !\�\�U��5l�$>=8�hF�hI��٫Z�\���\�\�ap��%���I�\�\0~��4f�\0��k�K\�	�.�5\�\�$��\��\�:\��_\�4�<\rFZ\�\���0���dE��x\0�,c$I6A$(\�t�%rME0~ D,�ǀ�q����\�y\Z\�\������#�\��XfA\�\�6\�v�\�̎��gG2����:d��-)��@e\��R!���t\�Ŋd@�\���l�\����\�^\�6k\�:\�bQ?8<�h\r�����\��E�\� =�[a/\�\�\��u:�N\�膭y�\�\0/@:Kts19�R��h4O��^���3���]�?�j95\��\�\�S�o�Mط\�,\�\�o�\�\�\��\���ٗ\�ɰ�\�o8\��8�G�m�c���U-\nkA�)_\�\�\����0�s�\'���h�S�k^���&d\��\�~\���|�\�\��)����hF\�^\�N�\�\��\�\�\�(\�6�vu�1mS:�\�\�<�5h�\�l7\�qG{\�>�\�P\�0e���;�|�nrq�\�f�{�5#���:�\�\���)G墰HM�Plj���>g\n\�H<:\� IHH��Әd�vBm\�z]\�h\�آ�`\�׉p²�\�	�\�b\�M�4\�\".���\� bWm�Vi\�\�\�f�a\��pg~�W�w�\�N>}\�\�ʞ�0��Tu\�\�`l�Ǩ\�{Ȗ�?!�[�]rHS\�]c~���E�\�kzO%Oi��0�5�\'�\��aXL�#\�S97�3M\�,�gy\�1E#\�\�(���\�*��J�5���C�FW�-��zm\�!\�\�\�\�� �|`\�sl\�\�\"\�D-KJ�\�jl���Β\�B�t\�h˫�5u[+�-%�&���\\�&\�M\�����\��3%3h���\"��ђ\�y��k�*�+�a\�1\Z�����zkж0f+�|0�Ze�\�Á\�\�\�5K��U6h\�%M8\�\n�q��r��(\�Y둊)/1\�mt\�tZC\�*3�~\��Y\�@!� FM�M\�\�\0���ƌ8M\��:�X�аdq��i\0^Х\�2�*�\�\��\�n\�1\Z\�t!x�v\'	�Q�\�\�	\�3Ԥtx\��AϪ\�N\�\�Ɔ[$�L\�)K�$���\�\�\�)V�B\r�P\�\n<3�:*G\�*\Z�<�\�h\�3m�S��i\n\�N�H�b��qu.í�l�o\�e\�\��\r\�\�z��\�6��I5�*�`	�\�\��\�R�/-Yܔ��*�Ö\�.E0P\Z\'�4�ƱN�+�Hq\�V}5��\\Rq�����=7�]輥�\�kЙ\�Y��<U�	ez7���[�\�w�N\�\�p)TV�?�U`\�\�h�\�\���qT�\�\����\�	<Au\��\n�y���\�|\����dU\�C\�\�R\0�\����r!\�j\�8���\�L\�A<2.A� k�$V�^%�	YH\�#�*�^{U�*\'\�c)\�6�\�W�;\�\�\�c\�Ց\Z\��f0��\0�9&e�H�\�\�O\�|W�p_a�&���L[@�\����(\�W��ɣ\�7�\�1h4�9�\�/	;��A���w�\�dk*�%�*@O	p5�X��\�5Tc��ʌ.)�\�cZ��\�\�y�TD\�Y�O�Ls� ?\�k��?����}#<.�|6	\�-�c*\r���\��\�y�~_\�Yj;Q\�B�\��ʙ\�U����X\�\�BmU�kϹw�\�z\n��䳇HBHz�ك�ThT�	�\� \�p\�Wk�-�<aQ�a\�\�\�\�Za��2\�\�J�Od�N�\'p6Q�\�j��7��T�q�F$����p��\�\�\�6D񅖾�^_K�G�T�\�Y���%�\�\�ttt�/�\n\\\�U�\�\Z�\�t \�\� ��\�C��\��1���J��A�\�\�O]d\�Q\rq��ץ���h�\�*�\�F_\�\�\�,�-�~\�\�w\'���\�\�Fz��[��(\��\�i!5WU\�V\�^ۂ�h\�gG��\��l�Q\�s�j8�9�_{(\�	(\\e�^�\�So$�\Z\�\�\n	����\�W�~�d�5�W%�\�gG���>yz/��4\�G�8\�.��\�\�\��xM#F�ny\���XV�\�DU/\�ao\�#\���\�H�{$kv�c{ˑ�糄�P�U\�*WE��=1��\�^C��\�5\0\�<�X\�Z\�\�BU3`Gt�أ\�~	��KS*l*\r?��hG\�\�\nhs�4t�{2\�(Mm8\�SU*0�\�~�\��o\�(\�Y\���!�7\�V\0}�x\�0O�\�\��\�\�?�:H��(�\�C賟\'�ֻ�\�g��p\�-��_~��6��5-\�v\�o`�M\�~��\�U\�?���4\�\��x_e�ˇmߔ�<\�\�l�@)���붝t^½.�F�%+ \�*\����Ԕ\�\��V޵i{\�+�\n\��k\��]�bԲ~�q��\\\�b�F\�/걠��|Q\�k �iT\0�\�jN,�{i�\�c\�\�\�~r\�\�d\�k��Agc5.�\�9�*��l!�?W\�\"6�\�2��\�Z\�v��F��\�5$�\�!��\�5�	T��m�\�\�E���\�t5&�Y��\�؃C#\�\�)nl\�x�!\�\�\�L\�\�t\nu�2I���N�\�w�T7\�\r\�\��w:�\�\�\�\�1|c6�[&x\"\�\�F\�l\n񟵈\'`i�7�\�\�\�U�\�\�\rn5��15S�Q\�}���nX�\�<�\�jcV5�\�\�\�\�T�\�u<2�Q@���9��f��[\�h\�\��O�d\��\Z\�B\�\�\�ż�O;\�Z<;\�\ZdgT���\0}S#ʎC\�\'�\r\�F�V�\�\��ٳE�\�Cp\n\�t���F�;�%��:\�djc\�\��Y���ȩݪVr��t-\�$�\�\��\�r\�ق]2L{R\�L:a+g`*e`\��qI_jA��\�K\�V�_iCD�:\�z��\�\�l��l\��#�k�6r�#@|m?\r��\�\�(�7�\�\�V\�\�\'�fC��O\�̗:�U^\�Ĩ|V�\�p�\�t\�jr�3\�B\�\�`ǭO\�ӊ�\�\�\�\�\�u��\0��7\'\�\�Y\�\�`4�\�X�4I�R\�\�m\r���\�\�CD����Ɂ�͜�bG�P\"\�\�B�GZ��%ŋOn��0p��m�\��*	�t���j\�Q��5\�Kf�@?\0_Mc�𔾪m`J�O��\�%0Ý�o�1+��S�rIi0T�<��ܹ�2��\�\�$U��v\�\nF4C�\�#\�D�\n\�_\�\0Mx\��G\\Z���pPWa|B]T���Ku\�\�G\�\rY%ú\"�\�UW�\��nG\�h��Ta�T\�j\Z\�]\�L\"Gl\��m*~x�1۬��\'`>�43\'\�����iq�\�`��\�\�* Ą\�[�u3&l�\'xʥ�\�- LT\�e.\nKmU��,B6w\�u�Y\�+\'�K�>J\��5\���\�O��\r&Y6u/\\\�\�\��/���\�\�\�H�W��>\\6\�t��⏉\�\��,\ns��o\��S�:\�o!ު\rE7,\�2\�mnC��%/%\�K��R����/%\�K��R����/%\����%#`6sI��;Og$>\�\�\��3VD[��W��58�{��z:ކNv\��\�\"\\�;5��=�*b\�\Z�A�m6|\�p��O�����q\�\�j��\�X&ma*FH8ޛ�\"�p\����\�j\'3�О\�w\�4`\�\�>\� �$\�k}�M�B��+\�Q<�\�wͅݦ\�1\�ޖ+/�6�.\�\�\�\��\�`\�\�d�.�%,��4u\�mj��>?�\�i\�\0^|;2��۷�\�S��_��8{4\��s�\'�ce\�$y�L�ܬ�z�0.��w1B�\�^g氿\r]�h+_�x<jA���\�},t�����\�ϊ?R<�|-(y���ՄB\�S\�\�\n�\�@WJ\�?���\�\��\�*\�Z�jq\��\�\��MLʃ��\�Ŀ�ڕ\�\�\�d?��d�J[�ԡ��\�;,\�Sb��Ȝ���\�\�^Y�5\�P��a\�FS\�Չj�\�Z\\\�v\�\�\r�O�����,\�\� \n���g����>J4vY\\�\�)V&�\�)r��7\��\�H���y�7j֪s\�H��\�9F[�\�\�1J�\�Ш��\�TW3�&%IbO\nm�\�[	\�\��2\ZϨ00\�ì(�r\�\�\�t���jO�\�O�\n<uJ0}+��\�\�3�-G\\J\\p���C\�W<Γ\�-t\\�e��3�&\��l*C/\�T�t!\�l\�n4K\�m�P\�\�\��\�\�m\�\�K_cj�����\�y��l\�C:\"�Jd�ʸP\�\�\�Ku/fVdY(\�O�\�,�\�\�N\�M�Q!��\������qf��\�\�\�\Z�\�\rm\��\�e\��V?�j\�E�\�:�\�\�M�\�\�\�7\�\�\�\�\�\�ӂ\�|+�U�]~9�cc\�\�>�\�j8�uX\�?l�f5\�\�b�\�k\�_k�\�\�\�\"]�;Ͻ-襼K���\�\�q\���\�,�cOA�Ԗ�\�↭\�dg鉗ٗ�\�r+3��\Z\�b�8y�k�\�_\�?\�\�_����1��+\�6ۮd�\�.��\"F�\"Ի\"�r��\�ԗ��UT5��\�OmJ�b\�c\�<[`㳕}�`��Y����\��\�s����,�.,\�{\�o坹Y\�\�h��Т�Ya�tĪ[٠*��̊�\�qz/\\M)\�qK\��}hX�c% \\$��F\�v�\�\�a�{%Jֽ�\r���M\�xMf4�\�k \�NN/\�\�\�k��(ko],o!�ru�a���\��c�/���\�z�V��Q�\��<��a\�\�\�\�\�\�a)��1�\�l1w���_\�P_h�N\'�H���\�81wƝu�\�\��\�P�A�JS�\�*\���.?y�.7_H\������!��C\�\�\�\�n�\�i�\�vh�#D�\�1\��E\�g$9��-ҢL)ڥ�ڎ�R��\�\�%�\�\�]CԿ\�\n\�o��\�+69\�ל\�\rZ\�o��LT=���\�>\�չ\�b\�jUN�`j��n\�&Q�^\'�[(�\��f�ϙ�\�.t�)WE5\�Fڐ���\�獦�p/���\�-Q\�@\�\\�\�Ldۋ\",��\�k؝/\�g%^P��HƅS��y\��\��M\�tl\�\�gwU)U�߮.R��?a�,���ßb+P�wxjۙ�;\0a��6\0�\�57��\�\�Qc�.:\�}I/\�\�.O��z��Z@�T�\Z�f�\�V\�\�\'�\0�\nb+څAQ4뭏�x\�D����0�'),(4,'3_358013bd2180e794e2980752e0ece3d758da253a',1705222428,_binary 'x�\�X\�s\�8�|�+4�\���u0&�\�ʓav�<�d��)�lˠĶ��L���\�גl ϝ�ۻ:RE\�Vw��뇺��F\���O�K�M[v[Q|��\�\�ݚ\�2:\�Ƈ�\�\�c4q\�\�\�\�(\�ɴk�Đ��\�\�N\'&#�yFD\�\�Eh6\��;\�D;��\�h�QA<�\�p o�@�\�F&�I�RN�)J	K#�C�#\�@\\�F!\'��$(c9�	:\�&�!N\�8�|<\�8&��߁R*(��%�9�B\��\�R\�\�\�\�|\�nNQ�$�\�I\0k�ѧJ��\��[[�,]r:�	d9NӬUku\�§\�ޣ\���Q����l���\�\' \�:��\�\'�g�\� 	��\09e�t�^�	\�i֪T\�2e�{Ƨ�\�\�xAEDz4��I-螊\��8\�|٩\��\�A	 \�5��łq\�\Z���\�U�\�\�өhw<,a�G��N@\�]ï��gY\����6\�<\����\�LW~�kW\�\�/Y.\�*�z��s�6m\�%�]~gM~\nHGy�$�<g׈\�\�4\�\\T$\���O\�\���L\n�LyO�H\��3N\�\�\�\Z͡�3%�Y0�,\�s4\�=В?\�u!>\�\�8Nۯq�xcQD��8�\��\"#Pb��ͺ8\�V\r;{�\�tj~\�j�~��&6&��\�?_;D\�H�C�4H#3�A\0��\�\��\�}_s\�L@:5\�G9\�OVl5�0zy�MV#��jM>\�\��\��\�������\�\'-/9O��K�<v�\�\�z��<\Zܲ\�8��\��\Z\���/Ӄ\���zޏV~1#W�w��\'\�ͧ(�\�_\��\"\�\�7�[W�\����\�f\�}���\�q=a��\�	Ϻ]l\�\�i��Sû���0h:v\�n֛A�4,\�\�UǩVe\��e�\\W�<�\�vʡ*rAI�A\�ϙh��^lL\����dYP�\�A´�}n��D��\��9\�PMN��k�\�5\ZM�Q���:;\�\�k\�\�T-\�PJ�\�{��\nO�\"#\�qn��J�Y�w!H\n��\�\�\�\�\�\�S��s�|&1\0JyPH.N��AxyN\�LFs#��eDT�R�d-\�e,\�i#`�ҤUE�\�t�\�m	\�Q�W]ô�¹\�\��Ґ�\n��j�\0��V\�,˲|L9\�ӭ���G\�#\�#~E1\�\��:6:L�\��\�t�\'�\nN~\�)\��F\�NE.\�f��t�`¶�\�yO.�\�ks\�\�r���K}\�r4�J����\��\�Ҋ6��ثy��ȍ�G�y��/F>÷�]\��w\�\�R\�\��É?��\�۳\��\�b6�����\�\�?�\�\�\�\�\�z5\�\��\�l|5�\��s:\\]�\�A<����N��h\�-;�\"�7#�\����\�Kt�8)\��NU�U�o+�Db\n\�\"C\��#�(^{/��\�iV�?͹�=�V��Hk�(����Pk)hۖCR6\�T���m�{1�ް~T\�7�0۠>\�\�\�x\�β<s̆\�i�w*\�\�Swo\���4�Qp|C;W��)\��I��\�\�|NS@��\�ЩN�QXĔٮϳ�̘\�9\�\�MV9\�=M*�_(\�\�\���b|��l5����[�C\��*��\�\�u\����\�\�HgY\�	o1 I�zK�7\�\�^\�oz|�\"U�����um\�VM�{JQH���\�I\�\��\�DNЋ\�i \'�n\�&\'>\���\���QnU�w5�|�!\�\�!\�\�\�i��˹�=}��\�~x\�\�\0�cx8#j[n\0g�\��fC���qv/���8a0\�/|�ʼ���^\�D\�h���eTa\'x��\�p,\n��z\'�G\r4�{ه�+\�8�P�v,g\�B�� H�\��=B��A\�@6�v4CXs�7瑒\�M��@�ϧ��w��$�\�:M\0��(:V&�\�P\�\�\�f�wK�G�>	\�\Z!\�`����˪\0hv��SNB�l�\�5�ay!#鈩�G\��fC��<#Z���Q�=�\�_�Я\�\�%�\�-�I\0ጉ_iB\n\�VU>(;mP�B��\�[�߬�\�J\�s\�]�\�	���\�\�*�j�)\�\�\"Q\�	f���\��\�]/hwL��H��z�.5��\�\�-�4^oې�lS�2]}�m���sG0a�\'aͶt\�N�[�!zQV���i�K?\�)?*�+.\�\�\�k@c\�Y\�nA.cnMt��+\�2<î\������9t�\�!�\�羴�\���}�v\��8�,�SW�;�uKx�\�4���Wf�V�ך\Z0\0\�i�b\�{U�\�W\�O��.���Hז��\rg���'),(5,'6_69399195db903f2a0b302d475b28b3717198b4b8',1705222438,_binary 'x�\�YmS۸�|��\�\�~\�Y7~ɛC\�\r���\n)-��lˉ����	;�\��H�\'\r�\�\�;;f�}t\����#\�wZ��R�\�<!.\r�]\�i\�*�\�bAb��[î��\�\�?�<=DS1��v���p<\�i$\�$�\�`og�;##�yJDO\�D��\��]G;�Oi�RA<&\�p o�@���tD\�4��\���D	�RPG^��\�9�BNb	�Q\�2\�\�\�]F\�8�\�\�\�\�\�3r\��\r(��\�(Z �,r��\�4!�\�`̧\�\Z\�8@�I�\�x06��\rN�xY1\�d�\�d*�\�8m\�2�:bᦲ�\�p\�\�-\'1`SB9\�D|Aoa\"w1\�)�\�!\�3,@N�#���\�\�$\�\�jb�0�%\�ڎ�\�\0��\"\"{\�\�J?h@\��h�tuk�h�p\�iF�`\\CE�{Z>\���jJm�\�\���v=,`\0�\'�.?݀\�\"\Z�4�	�\"��=-�@\�[H��Ho\�?\�\�T]�.��Fx�2��8h\��mB\�\�\�wK>]~gI\��+g�H\�\�y��L�&����\��!�Ĕ^	K���KU\�d\�V�\�M\�˧�V\��8�\�%\�ob\�~\r\�O�W�\�O�����ϒ݇�U��(\"\\J�\�Wi(1�5N�=�\�B�eX�\�6\�f�\�\n-\Z�\�nԱ׶��� s ?��4N2�rT�4�vٸխ�\�\�}�躩�u�YC�C\�\�{v2f�\�(z;��o\rs�\��\�֟��\���\�\�\�\�Ӌ\�\���6s\�\�ȸ�p\r�\�\�$�\'\�C����J/?���At\�\�S��\�\�\�\�(�zeW����Z$\'\��-��͏\�\�\��+�\�j꽾��Űu9fw�\�	\��z\�ơ\�&u\�zHH��e�\�\�m-ӷ�\�8�!\�\�\�F\�u\�R(i�\�!��+T���ό�\�\�(\�c��G\�?%��\�\�Y~4U�\�	x\�oy\�\�:,\�b�\�zHIl�]\�\�8�\�r\nE���av脦\�j8�ga�4�-ܲ=�\�p\�N3$�g{���P�&Sg}AV֞ZoSk\�\\�ʔ�WY���Z�\�BU(�\'�eI�Ԭ��{$Z\�W\r��CKV\�\0S\�;�TRv�i�\�R)\'fvAm\�nM\�m���lq�\�~�+�֍j�p[�\�\'z�f.\�#\n\���Y�\�R\��X�\�[����\�>FW뭲���/�\\���\�x�q嗩҃���3\�\�\�ʲ����8��\�`~;�F�\�&\�	a��}a��5L\����0\���0\�\�\Z&������0՟=L��ǯ\�/\�=;\�md\�8S�g��l\�e_\�\�\��)\���\�y쪡W%S�����P9\��^ʢL�]4\�|B㎁\�\�8�\�B4�G\�\�<\�i�J)\�\\|_\\W�|^�q;[!`a�\�D\�\����R\�*�\��\�h<\\_��?y=�^\�\�\�\�\�\�\�����\����~:�\Z\�\�G7W\�hv��r~l��\r\�LOC�dpt�\�Kx1��\�\�ź\�/z\�\�r7\�\�\�\�\�D�^�Wy\"\�c����\�2(�(^W�7��s��y�~<\�*�\�\�NC��4�ft���&\�eB��8�*N!Qe�5\�y۬\�b�������se�a�k�\��\�\�JѭAp�6�d�VuUb-��\�\�(Y�\��}�e�\�>�	���=-\�q�,k�\�m\�\�\�T.�\�\�\�~i\�4�\"\�\�\�\�[|��k�u\�\�\��\�u��\�2\Z�\�0\�p7\0TӞ\�i\�\�,�4ʞ�lv�\��9���$�\�QeL1\�.;�ycS� �arU[gw,\�Vm*E!�H�j��N\�i\�N\\\�o!\�x�R��E#���`Ej�D�(M\�\�]5\�>��\�?�\'�NK��Δ\�\�m�˗|^��0\r�D���\�\�\�_�Ĕ�;�g\�\�\�\�\�p\�D.�a��\nM\�\��!�n\�\�*A\�hX�\\�i��\�~nI\�a�fc/\"�P�e�\�\�K\����\�[h1\�\0i�\0�`#$\\*\Zʝe\��,2N\�\�|�dzC���ٸ\�\'�\��+I\�it4:���(:T.\�TI��+Re��\�#(�\Z},5B��\��\r���/\0��?\�$�\�g@Y\�N��\�2��\�\rJ\Z��\�m�\�+�Y�$�l-V?`�\�\��.q�\�\�\�\��	Θ��Ƥ�5\��A�h����cW�e����	Ժl\�!SN�K+T����_I���\�K�\�\�\�r�P\�\�P�$p\�H@q�k4\�4�\Z�P\n\��\\:[�mɬ���LE7\��*�mD��\�Դ�#`7y�s4d0\�ˊ1�\��#Ҝ\�\�؏�@ʏ\n<h\�\�Q���\��W\�V ���$�,*\�rxy��9�\�l݈\�µ��\���\�X�k�l>w,˸@x\������c\�++���<�<�^n��e\�\�v�\0�fI9b\�MC�8Ŧ7Ɠ��HK�$\��mJ��\�hd'),(6,'6_870cfb5400ccd0b9c34b519340730e81400a1e01',1705222442,_binary 'x�\�<is7��u�+f\�Kj%ާh�dJ�\�d�H\�\�\�x�v�$�f�4%1������A6\�\�fk�J��\�\�;���.\\!�N�	�WdN\',.�~�X�D<\�h��\�\�n��\��wg�\���=/-�err0�J	I\�o\�4-c%�\���`I3R�DH��)��\�a�\���c�`��H��e�?W��\n\Z���0�\�(�X*WL�t^ZQ�Jh)\�%	\�\�w@�p���f�\�_Ѵ$�ZD�4\�\"��I\n\�Y\�\�A����{`\�2F�dS�%�\��D��(�\�	��DҸ����\�\�4\�O7+?\�^y]G|�l�\�J�^�{X�֛%>\�evT:q$\�)H+�G\�ق2QH��=�@S*$ts�θX�\�<8�M׺!\�g+ٯT�͊7���WA\�Z\�\����r|u\�\�v���F����N7��:\�v�۩�iD���JHg��\�ǧ/�qD\�\�hru�v���!\�\�\��\�\�\�W˩I�.o^L\�H\���\�Y\��\�,\��ӳ�ӗ\�ɠ�\�o0\��8�\���\��\�\�\�\�7\�].E	��My��QR\�tF\�If���\�!Z\���9?\�Єl�:;��_�v�|�A�v�͔/�?pͨ\�˛�d4����k�v\�Q�7�)�\�Z�^Tm΢^�\�\�6�vM{\�>�/P*0e\'��;���a|~�\�f�{�5#���:�\�\���)G墚KMc�Pl�7�\�>e\n\�\�%�w��\n$$Z\�IL2R>&�&f��b4cslQy�\�Ӊp̲�\�\n��b\���<)h\�E�7u�\� bWM�Vi\�\��z�i\��tk~�S�����������	cJ$U4�\��!\�;\���\��\�\�g\�\��SDW�.g��;$i��\�Qɓ\Z+%�\�U\�	~\�Ad��\�H�TG\�u\�LS2M\�\�:㘀�!jm�P�\�\�p�)��J\�+P\'�1��\r�.![>m�ڜA�]C�\�ǃ��\�t�9�5&j�SN�_f��w�$\�J�F�X^�o��\�hY�o (\��h\�8^p�D�4�\�o@��tƔ̠e�V�\0~BK:\�Qf,d.\�(.4֚�\�(�m\�\�\�[�DQ�\����F���\�\�u�tBp�]����f�*�P26�����\�\�k��jǪ��l\'<\�@gҍ�\�k�\�V��Q\�f��\�J	j�1ʚoJ&d4	\�K\Z3\�5��\�Lc9BÂ\�1ԛ�xA�\"\�\�\�u\�A����.�\�d.�z\�Op�X�\�c>ZOQ�\�\��{=\�Z8�#1n�p2�[&,��u��7FLN�\�j\�N�K�\�l\�\�\�5Nxb\�\�	�\�~\'Z���$�&n\�ȸ8����l�o\�\�oY\���\�\�\��t~�\�����H0�[ey|i(�Kk\Z?�\�\�w�a�k��\�_!�.m]%\�9s@���\�²V\�ZRq�N#�;~�;׉MG���3�	�:<k�P�\�Ϻ�Z4��\�j�.�J��\'�\�lX:m\�Q\\�A5���Y�_\�\���+��\�V��A��Q)\���\�KV�\�T\�; ��\�0���p-�Y.\�)\�5S�*�G\�%�dc��\�*!�,2&si|Te�o��T\�dz\�%\�\�Q��\��d:/�\�\�u��8�\�L\� ! \�h�Y\�(R���\�6\�\"\�xاɮ�ɴ��\�@�t��\�%ְ��=�Fc��\�\��Z+70��Ꭱ@܃lME/�\�(.g\�\�U���r\�f�4�K�Z7�V`��\�\�:I\n\"t,$�S�����zt�R�U�o�]��I\�ni<Sii@��\�\r\�\�c�뾊�\���H(�`�E��fB�\�\�b�r`�s�U\�a<\�\�c�\�](\�R\�\"	!\�!d\ZR�Qe\'���;@�\�ʯV$[�<aQ�a\�\���Ja��2\�\�rxHd�JX p\�Q����e0��T�q��$�\��\��\�\�\�6D񹖾�A_K���\�XP����\�t�t{(�\n\\��hH\�t \�M!���Š�\�ӊ�1����r��A�\�\�O]d\�Qq��ץ��\�5Xb�\�lc(�p\�8\��oˠ�7�\�Ii#��#\�V���9-�\�ꚪ=h[P\��l韡9�n2*�s� A\r��^\�\�\nq\nW\�\�kQB\�_�[Z!\�\�p��=�\�V\�`0���\�t\��l\�a\�\'�Er�F<hg\�\�\�]�\��h\�H2\�ݣ\0�N��\n7��\�<\�=y �^�\�\�: Y��;X�\�|=M\�[E_!N�\"<xQ4\�:s\�4�`/m\����$n35vtO7�P��\�\���)�4�¦b\����v\�`�`\��]Қܓ1\�p_Eij\�ឪR��\��\�׷B�FIO6�\���Q6Q\�P\�5�7~\�gK�\� \�c(�B������<�\�6\�!\���Wn����3T��D��K�\�u���R4Y��:�oT��\Z�Ґ㢓ƣ}�%.�qBS\�\�\�^p�=\0�Tv��\�v\�y�4\Z\�KV@>\�e�\�Em�)���!_.�k\�\�FP,�	�\���\'\��AŨe�(\�bw�Vˋ�[U��ǂ�N\��b\�m	M�XUs�\�\�3�U�C�\�\�I�S7��޾ j\\�\�3*U�1[xf.\�Pl\�e2#˕\�1\�T[�F�\�\�hH$b�Y\� \�\"AL�6\�?d���LY��\�֘4fY£{��F��\�\�X\�M���vgR\����I�\�\�t�\��[��Y\�\�\�m\�	, \�>ߖ\��\�\�2�]1���<T�W0��,G<Kӿ�w��\�fop�	܍��R�J\�[�uv>\��\���%�n�y����:6\�x�2�R@��ĝ�f�|]i\� ǘ���\���eֶ�1��OkZ<;�\Zd\'Xk40�S#ʎ=C۳M��k|�y\�\�\�Y$��⡹�f.r�Eٝ\�\�E7�7�\�g�1�o�N��\�\�\�\\+�zx\Z�p\�I\�;r�m�>fA)i&����70�A�\�Ÿ\�ϵ�ZQ\�\��L+��bX�Q�\\ﾺ~\�I�d�\0\�|{��D�Xl��ڠ]4WOѝ~�n�\�>\�5��-}\�f�\�I�rR/d9\��z���|ЃXMN~\�|\�\�n�w��8?�\�\�m�\�\�q#�p}Wˏ�r�\�ތ%�F�h\��ECC�d\"U\Z\�&\�\0Z]\��\0�\�\�=D\�D\�i浹\r�D�[\�h��/J�\�~�BfUh���LJx�\�\�7\�\�Q�\\RK*��\����j\Z����MySZ��\�`0n\\\03\���\�\0�d~�e �f%�*~S�g\�;7]6�Y�����\�F�cD3T�<�N\�/!�e\�D�\\�x�%�e����+*̀O��m0��N\� �\�ww�XG�L\�& aE��3������R�\�WE+lP�UY6шDX5�)KX�)�\�\�6\�t�R���\��\�9xG\�&�o&\��s\���A\�A�	�7&\�f�X\����s՛[@���˵p6[wB��6B6�u\�2�\�%Eo��\�ߘ��?��\'\�̆�,��W5w6x��g=fsx�7���n�7\�k:�g�\�D�\�{\�?��\�`\��\n6\��\�vҷo\�N��u}�ַ�\�J\�k\��Z��֮��\�k\��Z��֮��\�k\��o\\����\�:b.ht\�\�ɔ\�g���>�\�R�ek\"�8���(_O\�m\�xסQ�>\�ՙW,\�\�Q�b��\��\�f��\���\����\�J��.�s����\��b�!�\�M*�1\�\��K{��|<\�\n\�(Nx�N\�\�}EwJ�\�\�\�T�sB4}9\�t�\�镾]hn�\��\�M�~]~y��\�Ag\��g�b%+�\�i¢JNS1\�&�\�3�\�\�P��r\�Ǜ��\�\�޾\�8Q�B ���7\�كY���_z;\��4��%�\�2\�3��0\�\�¸\0\�\�Ũ�Wq�J\�(3\��\�\� \�Ԋm%\�˕\0�G-HsEs\�\�\�B�\�Ⱥ��n-�\�\�ҷ��{	\�_�\�r��n�\�=�5ЕR�/����\�w������V��\�Z���\�4�����8%8���f\��\�\�*@\�(r\�뉞2&K\�DOE�	\�CsN�\�;[p{\��ƌ@ޟMi�-�=�#jq�ۙ\�אHU^r�QY:�\�ATQI\�����>K4v\�ֶk\�\�1QEB.0B��\�c��BT6�7M\�\"vf\��s\�r#o%i�]�zF��]3*�~#�!Ue\�\�.VI�سE�\��Ó�\�\�3t�z��2�c\r\�\�(ٯ�\�In��\�\�;S�\�{��e�_�l9�\�R\�J�\�$R�\��:qn��\��4\�\�\"��4ifS��S\�\�m�\\���/Rϱ�!�B)w8�\�q;,^~1��o����7\�(\�#�p\�|�\'|DR�\�\�}s�\�\�\�R\�\�%\\�\"oO��4�D�\�\\��b\�h_\�\�\�\�N	M�$���9u�~`\�Dz}���\�\���v%e�\�|���xx�\�l�wxx\�Ͷ\�Y�\�\�˹u�m�\�@���\�\�\�AE��\��\�P\�^�\r\�;o�-�sG���\�<&�X���\"�~`nפ\�A,�`Si!\�{*UNl�\�`.�ْ�w֣x~+�hme\�e\\!\�\'oa\�p�K\�ϲ�����a\�\�\�q�\�fەl<م�T�(P\��V\�0\�\�mv\0��!oU\r�\��!\�AN\�?�䳵6�y\�Wk�\0�[%\�\�5a)�9Z���궣���^ޚk\�͖f	k.��\�\�PG���\r\n\�;\�̥��\�\�н�5Uu˯�\���a�E��P\�k�\�\�[N�)n�(Y�2�Wm�2E\��\�Dn/�;\�=O�#�\�\�#/\�u\�\�\�T\�\�@\�N*?��\�\�;�\���f\�q��\�?�ym��\�-\��\�\�Ryc8�\�b\�k�ְ��\�\�N4��\'`l�\�\\8��̟�1��T���JS�\�*>\n���Dy�\"7\�_\������!�\�C\�*\�k\�^�U���5S!�tGA\�\�	��\�TJ6O]����s\�]�2k�u\�}�ٻ�������\'pr̯8�=\Z�\�\�`��z\n\�\�\�>ֹ\�\�h\�P�dj�>�n\�&Q�Z%���\�;�f�ϙ�\�\�t�q���\Z�	#m\���_�\�給�tϩ��\�-�\�@]{�\�Ld\�\�#,��\�;ܭ�\�)\�L$\�«O\�<o��gz�\�tl\�\\Oo�R�ڿY\\�ZA\�.Y�uC�?nWP�G|j/�\��F[\�(&5\�H��\��CG�e�\��(�t�8?�0\�\�픎z�qR\�\�z�\�l֏����ؗ�va\��Ʈ\���\'�7��?7\'Y'),(7,'3_658fb09c5e00040d00ca934d7afc1558ab619507',1705222604,_binary 'x�\�<is7��u�+:\�̗\�H�O\�Jɔ\�#\�*�����\�IX\�\�\�$�\���n�\rƲ�\�ڭ��b��<<�WȠ;�E\�_�5Y\�)�*\�l\�<V-!OR����w:�Ae�\�ه\�\�?oσe��O��O�d�B�\n6P�W4%A�$B\��M%K\�=wx�y�d2x�3\�R\Z�\�5��F�l\0�\�\�0`�\\3��E��|\� \�v�; W8@G���4\�k��g\"��H�\\�����\�#�����\��&%�\��\�D��\����%��$\nb\�D<K\"��t��\�\�Ց\�u\�\��\�4����\�F�\�\n�|�\�Qp�\�H\��VP��\�%e\"H=�@*$ts�̹X�\�<8�\�2ݐ��ӵT�\�f͛G\\,������\�\��~r9�:\�\�ðբ�N�FI�\�j�\�\�n�1o�\Za�x\�Y�\��\�\�Kir�\�x<��|;�\�ΐ\��ft��\�\�ԤW�7/�\�I\���\�Y\��\�,\��ӳ�ӗ\�ɰ�\�o8\�\�8�G�m�#��\�M%lT�0&R��\�\�?��aD\�$�S�\�E\���\�<�#\r�Ɇg\�a\r�:\���\�-\��7S��� oF\�^\�L�\�\�\�\�\�\�ߜ����_o�;Q{N�a�\�\�h��\�̺ڣ��|�rX�);ٵ\�\�Ň��o7\�\�\�\0��\�5\�\�ٴ6f�mL9*\��\�4ŦFkPI\�S����ģ��Ԁ��K:�HJ*\�d\�¬\�Q�\�l�-*\��:NX\Z\�[�X�!\�u�\'\r����PD\�\�*M|\Z]�?����n-\�Ow��v��\���W�4�ä���&v\0c[=�E�\�C���\���C�:\n\�\Z�\�\��4\�G$I\�\�;*y�@#��A�=���\�bt\�\Zȹ�iBf1=\�R�	(�\�F1%��\r��R9�4[�:��9�o`t	\��i�\'\�\�2mI�R\�{�>\��\�T,2LԲ����\�	h\�4�ϕH�Ƒ�L\�R�ٶ\"\�@P�k\�(\�x�\�[\�\�\��Q\0�I�V\�9S2��	Z!�	-錇��0������\�Xo9F��5W_o\rڠ\�l��\�\�\���\�@f��ټ\�� ���%\�\�7\�����	\�t\�W;V_�����\�\�S^`�C\�\�G\�\�m�L�0l3LQj\�1\�@��曐�i2\�\��q��Ou���aɢjN\�\0��K��l�w\�Eˈܖ�\�t!x�v��Q�Ӣ	g3T�txD�^Ϸ\�N\�\�F�$�T\�)K\�8���\�\�\�)ֹB\r:W\�\n|6�:*G�\��<�\�\�3m\�S��i\�Nc�@\�|\�ȸ<����l�O\�\�o\�\���	�A\�u�k\���H0[�E�i*�K+7�\��\�z\�\�	W,O�\�B]\�4���ˁHq\����LRq�%�\n\�]7�\���c\�[ЙLY��,Qq\ne�0���k5@�\�\�\�B�\�}2�=��\��\�ŕ\�R\��:�F�]}*Ƃ\�Z\�\� \��C*����{cɪ|���z�\�\Z��	eB�E30�q�3�	Ӄxd\\�A6\�XI�҂\�%��\�G@U6w\�HeN�\�B�mu\\�n�O&�R;�]Qj��N�d|�昻�\"\�ok?�]\"\�\�}�\�\�0/����W/�*�(\�Vw�ѣ\�:\�w��c\�hLs��:^RoAS@\"\�1\�;���\���\0]%�\��|�N7WP�\�d+3�����<h%f\�+�\�dq\\�k!>�2͵D\�\�A~��`A�~*�Q\��F\�˿|6	\�-�c*m\r���\��\�y,���,��(\�!X\��ʘ\�\�����X\�\�Dm��k\ZϹs�\�z\n��䳇PBHz�ك��hT\�	\�\� \�p\�Wk�.�<aQ�a\�\�\��Ja��2\�\�\n�Od���\'p6P�\��\0+o`E�ろH��-\�>\�u��m�\�-}[����$.wյ _/K\"��\�h\�v_p��+�\�1�\�@��A@S��^Eѧ5I\"#~E�=	�\Z�ǟ�Ȱ�\�Tq\'R�K9-a\�`�U6����yΡQ|[��\�\�NJ)�Ό�y�\ZsQZ;\0�\�Bj.���ڽ�E\�\�϶�\��\�&�\�;\�\n\�\�p6sr��P�P�\�\\�ŧ\�P�5��>\rg\�3�l�\�\�3�9`�JL\�϶�\��}��Q\�\�I\�#�\�q�]o݅��񚆌\�#\�C�閱J�paDU/\�a\�\�\���?H�y$k��c{ˑ�g���P��\�*�E��=1��\�^C��\�1\0\�<�X\�Z\�FCY3`G�t�ȣ\�~��K*l*\r?��hG9\�\�rhc��\��d:\�WQ�\�p���T`.\���-ߠQ\�Ә-l5C\�o�-�(�p(f�\Z\���zu��	Q>\�\�]�\�~=Z\�f�u\�\n\�)�\�\�~�\�\�`\"\�4O�\�u���R4Y����oTM���\�Ґ㢓F\�}�%.�q|Sʳt�\�=\0�TzV�\�v\�y��4\Z\�KV@.\�e�\�Em�)���_��k\�\��W,�	�\���\'\�^Ũe�8\�bw�V/��[���ǂ�βE����Q�*\�91\�\�3�5�C�\�\�ɠ\�0��fg�a4.�\��*��l!�?Wl)6�\�R��\�Z\�u:\�Z�ש�m�PDf�\�Bj}-jDc�6�?d���TY��\�ј4bi\�\��|�l#����\�}�l{\�3���)\�E\�$\�\�Z2\�7\�MSݬwGo�\�F\��o\���\�|n�\����R�#,\�\�*!��\��o<\�\�ݫ\�\�\�jwcj�T�\��Dݰf\�yL��f\�\r.3�w7U���A��Lg\�=\�d�f��*\�֧?�;t<\�(\�4®Ƶ�z�5F>\�\�\�N�\�ζ\�\�*�!/@\�Ԉ�c�\��l�\�\�\��\�j^��\�#{��|VnB��\�\�^\�(v\'���Я�M�6\�nL��e1���ڭj%W\�bN\"9�\\\�-��-\�%ô\'%M�3�r�R6<���T+j��i��y4��3��[�~\�\�.\���?ҹ�h#�:)4�\��S�Q�l�����\�n}�k6�\��\\\�|�b\�N�\�f\�\���΁XMN\�|��\�\��qqZ\�\��\\\�\�SF\\Һ�V�&�\�Ĺ9�A�F\�\���� \�T���M�6�\�7<`�hB3w19���Ӗ\�\�J�LH�@K���x?\�mv�\�Po������<\�\�ɛJ��V	\�\Z�\�]4}\���&�yB\�T60���\'\�I��\�·\�W���;,C��4\r��ME��_\�\\p\�Pfq\�2�\�S;o9#��\�\�s�~	�/e�&<\�\��-�\�O}PUa|B\�g���Ju�\�xgN\����hCV��xD�*_,�ݣ���AM�>~�ܵ��bX�jv���\�\�L[U\�۰\�\�h\�Eb�\�f,f\�t�G1\��\�ZŅ\�H\���\�\�9�7)h3\�\�8���\�ńrLj\�b\���\�	�*%�\�#E\�\�\�,\'\�2�\�4�J\�\�^\n!�;����\���R$ŠA���1���ß3\�\�t\�^\�\�X\"0\�_���͡\�?H�w��A�h\�\���E�cُ\�%�����-a#a\�\�a\'}�F\�p�yB\�u^hc�_�y��_k\�ך��f~��_k\�ך��f~��_k毮�_X\�f1�4��e\�tF�3}1Q�\�c�ֶ��x��_Ad�(bWO�m\�d7���]��3�H\�!��R���1(�͖�;\�\��Y�S\�7�\�\0��\\-�\�9\�m[��F6�7K�H\'�.�\��L+��8\�-B\r�8�31\�*I�Z_�SQ7�\�\�y�c&O��mJs���pL���	��\��M�:;�\�d07U;(Y�\�f1�M\�p�Z\�\�0\�g\�m^\�˔oF\�>gg�>\�Ty\n�|��>@`f��\�\�D\�Q�,�\�\�i���Q\�\���.Fݼ�W(ǩ�Ѫu�� �VBh+!_�x<jA�+��\�},t����\�\�\nb\"��\�KP�jB!�nf�{�k�+%�k�\��K@\�c��	\��8-}�QiK&C�Lp\�?��ҵ�+��գ<���z3\�W\�d��\�1Ayd\�%�\�\�^\�1\�P���\�FS\�\�j�\�Z\\\�v\�\�\�5\�s����,O2!\n���g�Yr�%\Z�̯w\�\�\�1_�B.1B��\�c��BT6�7k\�\�yn\��s\�r#gk�)]C;F��]7*�~C�!Q\�\�\�.�I۳T�\��\�Ɠ�ߍ\�3\�\rL�0˫Y�~62w�`d�ڳ6��3�O\�Lߛ,.�G�^f\�Q�W�lgA����8w���~\r\�̥I30�\�\��9\�.\�A\����1�{�*�r���\r�\�\�k�t��1�7��YxǊ<\\�6�\�&�Te5{\�^�P�ϥ�F4\�S.����\�|q�@��Ue��R\�\�_%\�\�Թ\ZZ8MP�Ss\�l=�$����^�x���\�\�Φ�\\�N\�\�ỳ\�\�\�\�I\�m��\�J\�.^έg�\�\\\�\\=T\r\'����-�ЬF:�Zl�\�y�k\�Ę;Z�\�u\��\��W��\�z�86b�\0�����s\�)��\�\Z��\\\\��\�,��\����afeƗtC\\�\�\�oa\�p�k�/��\�\�_�a\�\�\�q�\�fەlDم�U�(Q\���ͨ\�>nu��sU\r���惂 _���\�V\��\�g_�-\�`Vm�(�ׄ%��\�hi�����{yk.��ښ%��\�o�#��V6(�\�,�<崝F��aSW�ݺ�n\Z�X	��V�^�au�\�N��u/\�F\�&�+SF^��\���ȃ��\��D86;�>�B\\WN�;R�vj\�\�A��\�w�\Z\�;\����\�,\� nT���O�mX���F6yX\�2o�2\�@\�\�a���\"�\�Z�Ӊ&\�}\�\���m�+�΢�sn�\�1�L\\�)\�k1SPע�Y��\�οh`\��P�ʈաa�\��N�ծ\�;��)�A\�P\�1���TJ�H�2�Xu\�k;�Ld*2���\��j\�y\rQ�Z+X?�\�8��\�_q94h����\"V�\�ӳ}�s\���\�,���\�\�jtݶM�d��77Pq\�w,I]�3U\�]0\�v��*lܯ�!\�\'��R�ך�\�y��\�.�D�u\�\n3�n���p\�\�o��_\�\�J��P3���>1��\�雎\�\�\�7�\�n\�R�\�U^�ZA\�.Y�uC�?���T\�զ8/�긧l6+е\n#q\�J\�\re0�!\�cܤ�ҍ}\�\�LĈ�7T�\�]\n\�Ie��n�\�h4:�\��\��+@@���ط�va��=�rM�\������'),(8,'4_1e6d72b315f14dbd080e4e3f214f6d10ffd46adb',1705222604,_binary 'x�\�X\�s\��|�Wh}��й,6&\�M\'�W\��M\�$��\�m�ؖ+\�\�\��~�$ \�s\���\�K���\�h���\�)q�oth�\�Q�ł\�7�\�B�\���\�xrq�f\"\n�{]��8���@�\�\�\�\�FD`\�\�0O�\��*M���RA{�\Z\�h�\�\�M� 6\'��\�]\"P~n�\n�q�PN\�)JKB�C)�#o@\\�F\'��\�(e�:\�.�!�a;�|<\�8\"s\�@)�\�y�`�-��ӄpt��1��{�c�\�#q\n\�Y\�\�\�\�\�c�\�◷%\�K��NgY�V�R3kuĂMeo\�\�\�I)��[NJb�,f�r\�	�x�>\�F\�1\�)�\�\� ����\�\�\�4A\0�\"I\�ժX&\�~\����W�\0\�\0��\"$�a\n*aKI�T֭\�<41`\�3�b����X��ţᕁ�Je�\�Vul�.󗰀ࣿ�Oק���=óA_�Ӵg|��+>	0����\�\"=s\�W�\n�^\r�e�bBҠ�ϗ	ڵ�o����{+�& ]�+DbO\�gD* ����W|,�� 3x%,�B.\�\�&æI\�ɰ��j�X��\n�\�\�ن��wZ\��\���\\�GI\�5n�^,	���z\�U:�J\��	��90]�i۾\��VӶZn`�-�v\�\�ٷ��\�w\�ȉ~�\�I&�FbF}zE��;]�u[\�\�_\'P��\r�\�D\�O\�\�|\�\��i�a�4�>�\���\�\�ы,\��%&7av{�\�r\�\�Ľ��.�\�ҽ��\�\�ppϖ\�x:�X\�tp���]:���g\�w����뇏g��\�\�0�;��\�Er~\��\�b�\�\�\�;�S�\�f\�Oס�4&c6��\�C��m���ު\��z@H\�7[v\�n֛~�\�7,\�\�f�e��ƾ\Z\�<h���J\�5*��[\�DgAMo\�\�,D\�\�i\��\�Yvg\�\�qr��.\���\�+%��Av/\��\��\�b\��\��m\�\�9h`;�Zd��\�8�L�Q\�fô�\�f�QS��[���\�J\�JjV\�_�~�\���\�\�,\\\�+{Qу\����eI���\�\\!vI��_Q\�:wUeE\�g�\����&8.�9�-�p���U� �êR�\�z\�O�\r\����Ma�d�Ч�~%/\�\��K��<�\�\�\�צֱNB\�?v���<J���#\�%p&�\�\"pL�ۙ}�S\\\��{\�y�]ҩX�D�j*[k�)3A:(\�|J㶉\�_�\�j��pb�\�\�a\�3�*�\�\�|^\����� xu\�E]�Gz֙0{�\�x�\�O\�\�y}x34\'\��\�ǃ��\��|�����O��O�g�\�$z?k���yw��	֬\�x\�+.#���\�y\�\�/\�um\�\��eK�w:U�����\�qE0�.GP?�����z��n29�f\��\��_�,���N\�\�\�\�\�J\n�吔M8�\�\\aM37�ߐ�/��:�\��F\���cv�ڃ\�.�p+&k�͚\�V!<�\�H�\�����E^��K[��E\�o�,zV7�8M\0\��\�M\�ԡU@L�\�x<�\�b�^=��Ջ̅ѣ�?\�+%]���#~�\�ާ?Z\rs߲�:�S��b\�۹��\�\�(\'39�Y\�j�C�%�Vo�&��:��L�gR\�\�͈�.�ܮ\�\��@)\n\�TRԸh���8�3\\C�/\'�n\�\�$\'\���\���Q��û\Z5>���\�q�\�P�\�R\�^l\Z0:\�\�z_���\r�D��\�[�\�\rJb\�\�\\\�1q\�`�;Yx$�%?U�8±xGd\�G8;%m\�K�P�a[<��%�G\r4��!9�+\�4\�H�v,g\�\\�� H�\�L��h υ�\0\�\0\�f��~�d�@�c=6�i&\�\�t-	<�m�Nc@\�0O�K�2U\�A���\��\�\�T:T�G��FH2�\�_�*\0\�9p����*�ey�(FX^\�L:fjʑ4�\�\�?�[D�^J\Z؋X}}6�J�۞uLWƾ�\n+�1��Ic\�6\��\�E�g��\�2�fu�a?\�5�,\"M��%�UP\�S�!,��\�7�ڟ�Z\�\���HP�zV.4!?�s\��\\\Z�\�6d6�eJS���ϬR\�@�?a�cv��д�\�g:\�\Z\rī�S��8��TS\Z{a\�K�Q�M�W�^\ZA�\n��̳с�lN�\�\�\�u4�<&��<\�ս\�ĳT�K\�E,\�w,_˶��\�-\�\Z[󟉭\�RrË&\�< k�ځY׀	\0(J�8:kfluЍ�4ͻ\�\n,�\��w\�R�\��g\�'),(9,'4_8285e8dcaf554d1329a6d3524c73610c2ea2b78d',1705222605,_binary 'x�\�<is7��u�+:\�̗\�ȼQ�R2%\��H�J�ggk<\��AV�\�tKb��}G7\�c\�\�l\�V\�U�\�xޅ+d\��\"\�ZJ�tƢ\�1v�UKȓ�&Y\r���^oX}w�~<�\�\��`��㓃�\�$Y��Ѥ�\r�D\'�5\�H���4{]˳\�\�\0�\����\�\\���3\�T\�(�o`��,�),Y)\�iL��\�\�\�\\\�\0	�Ҁ�4	$\�EH��9�&	g�?/Y\�G.\�)\��\�M\nJ2\�\�߉L�&�����$\nb\�D<O\"��t��\�\�\�+�됧���,h\r[�V\'\��]f���\'G2����:d���(��@f\��P!��\�d�Śd@�\���l�\����rX�g���_q���\�������\�\��Ꜷ��F/j��F� \�\�7�A�ќ�=\��\0\�,\������4\�x2�]]��|mgHwy3��p�\�rjҫ˛gS�\�M\�w\�,\�o�\��\�\��\�\�\��\�dT\�\�7��h�����F{X���kA)_\�\����0��Ǚ��h�3�kQ���\�d\��\�~\���r�\�\��)�OP4�b/o��\��\��v��;?\"��\�Π\�\�\�F+juQ��9�:�\�@{\�>�/P�\�0e\'��;�x�~z~�\�f�{�5#���:�\�\���)G\�f���`�\�\�\�k}\�\�q�xt\�A���pEg\�H\�;��z�т-�E\��\�N�S�\��V�aHFx\�\�IAC.��i\0�\���J\�ד�c.\�\�[\��㝢�\�\�v���W�4�ả���6v\0c[?�e�\�C���\��\�C�:\ni��\�rq\Z\�c�do\��<~��R°ր�\�GD�a1	:uO-\�\�\�4!�\�\��Qk\�LƆKS�T���N\�c\�]B�|\�\�	���L�C�+ǃ��g:؜�e��Z���\�\�\�2\�\��\�\�8��\�\�\"��V\�J2%!�\n�\\�!\�=M\�����o]0%3h���\"��В\�x��k�*�*�͎c4Ja[s��\�\0,�\�\Z�ð��iJ�V�Eg_@�\�<�b	5s̆\r��dk#]\�5�\�W���Ǫ���@Ō�\�D��Q:�M\�*30\�ӒY	A=w FM�M\�ì\0\r��F�8M\��:\�X�аbQu�i\0^Х\�2�.�\�5Dn\�\0Mp�<O\�)nk�h\�\'�*�\�s����8��\�\�\'��eƒ0\�#��1�`r���P�.�?\�f�\�\�Ί\��m;\Z�\\\�\�L\�`�����>и\�gd\\�\�\�\�\\v��\�r����Z�W\��\�̭	RP���P�4+cJ[�[ǸyGU|7\�FO�>�\�i|�\�L(\�H\Z\�KV\0�\�\�-kZ���\�\"OB��n\�;\�\�LG�7�3�	���<Q\nez?���\�`�}?\�v\\B��\�Y\�6,���\�(�\� r\Zo@\�\�,�\�\�PT\�\�)P�\0A쇐R)\��W�\�KV\�\�T\�; �*\����s!\�\�9�L�\��\�A|e\\�A6\�XI���\�S��\�G@U6\���HUN�\�R�mM\\�\�O&\�J;�]�Lj�K�M�d|����\"\�ok?=�]!\�͆}�0/���\�נ���(\�\�w�ѣ\�&Vs�c\�hL��9^\�\�\�R@\�\�1\�;���8*aU�J�\�\��:\�6WP�\�\�k3���j<hf\�+[\�\�q\\�o!>�2͵B4(@~�7`A�~*�Q\��F8(�|6	\�-�c*]\r���\��\�y�~\r��\�,u�(\�!Xy\��ʙХ���G%�¹�ڪ�\�6�s\�0\��.j\�g����\�\r�ШrVS�;@�\�ʯR���<aQ�a\�\���Ja��2\�\�J�Od�\�\�8[�\�4��\�\r�(�`\\�1�C�%\�gc����\rQ|��\�j�\�ג\�\�ծ�\�\�eE\�2]\�\��W{\�>z\�5�vshjOѫ(���$\�0\�WT	ߓ �1z����!�!Nw\"㺔\�\r�Xe3\�\�\�\0\\Z\�epT6�\�Ii#�љ�#\�Vc!Jg\�sZH\�U\�uT�׶�(\��\�\�?}s>\�dTz\�\\A�\Z\�\�N\�\�\nq\nWY�ע�\�\n��[Z!\�\�p��=�\�ҷ�r��Q\�{Ub�p~v�O�\�\�\">OBy4�3\�bx\�.\\\�OR\Z2�q\�\�æ_Ū�\�\�\'�z{G��\��A\�\�#Y��\�[�D<�\�􍀢�\'P�*\Zt퉹ml�\Z����x\�\�BR�[Ù\�\�\r,\"�n�J�ϔX�PaS1h�\��D;*`\�`V@[��M�\'c\��\�Ԇ\�=U�s�\�om!����\�li�b�l\�G�GA1�\�X\����]�ӫ��O���\�}��\�\�z\�4��WN�\�~����\r&\"�E\"ܮ�\r̗�I\�\�[оQ���j{KC��N\ZM�U��|\�\��M)ϳ�P��x\0�R\�Y�n\�I\�%\�\�\�h�\�Y�x�I����d��\�|���M;;^�T &x���\�bx������\�\�Z�,�oaT��\Z:ϗ\�\�{\�F���\�\���v\�<6�\�gg\�N���\�!4{�m�q�ϨT\�f9���r3��ǖɌ�S�c\�\���A�\�ՐPDf����\���ڈ��\�[�&.2e=2jOc҈e1\�=84���\�\�F���\�θ9HfP)�t�\�L\�\'p�Ku�\��9�[�3X@,]�]\�7b��e�\�\��Km��`��<Kӿ�\�w�\�\�fop�	܍��R�J\�[�uC\�f��>��Y\�\�2S{w3u��ԙ\�lN\�\�Nh���rn}֣�C\�S>��M#\�j\\�\'_c�>\�k�\�lk��Q�2��M�(;m�m6�]�\�[\�Kw|l1^TO\�M(0\�Y\�+\Z\�\�$�\��u�\�\�\�ڍ	v�<��3�U�\�:\�#���H\�\"\�s\�-gv\�0\�II3\��������\r�,\�%}�Պ\Z/=\�ȴ��*�-u\��vkя\��/\�\��G:\�m\�P\�&�\�~\Z6JW\�\�Qt\�ۭ���o͆~W���/u��҉Q��:�\�\�\�9�\�\�Ϝ��\�\��>.O+��>\�l�L�����\�H��9qn�bP�Q4����!H2�*on�h���E\�-\"�\�\�DLD,i\�;��.�=Њm�(ކr�\�\��3Ԇ�яO\�8x�#k���5_5j�ZC1�y�O��\�$\"1O\�\�\��4��\�`4m_\03\�����\��byce$W�fC��ɳ�\�,#\�,N\\\�Qxj\�`D3T�|\��_B�\��	�b�k@\�\�A�\�\�U��P�\�`f\�ks���o|��ڐu<�+\�\�J�g�m��/�S\�,��/r\�\�խ��Y��i13V\�S6���Y3�X��9�Y��>\�)\�6\�|���P�\��\�̜r8\'�&�lf\��2��P\rG\�BL��1\�@7C�\�\�x��ܻ\�\��\�\�\\\��V\�Q%�8�K!d\�|RW�E\�t���/h4s�7\�\���~��bf[�\�\��;{J�\�g=fs^���nl<)s:�gѧXE��*	C_��A�\�uض���x�67\��K:/��\r-n���\�/\��K��R.��\�/\��K��R.��\�/\��ה\�\�,_���+\Z\�߲h6\'љ���\�ޱ:\�ڲ�H�\�ί �|����6t�RP�.\�ՙS�\�\�Q��Ǎ\�T�f#�-\����\�)\�[za\0�]��x�K�-L\��\Z\��$TdS�����^\�x�\�W��\�L�[�p�$<՗�T�-�\�r\�\�pɓ+}�\�\�gn)�\�-\�����i\�\�\�\��9.F\�J\�o�y\�\�zIS7\�f�\�\'�g\�mJ\�+�n\�\�go�\�Ly\n�T��>6`f��\�UD\�Q�,�\�o�i����Q\�\���.FӼ��\'\'��\�i�`�A<�B[	�:\��i.�\���\�1:�nn��Ok��x(�FPr/A�\�)]��\�f^�\'��R�y�w�\�.�It�N1\�*�r=P�\�\�\Z�\�p�d\�/�\�\'���ݩ\\ͿB �Y=�\�Pf�w!Gʘ,�\�=!&(�\�m�\�߂۫�7f|\0\n�\�hJ�RR\��P��\�\�<l��T�2c��\��%DA��LV5\�\'�\�.�Ľ�1yL���+�пi��D\�b��\�\�}Z�n^XG��\\�\�\�Y�\�:J�ώQ\�d7�ʠߐ�OT�7�\�c\��\�\�8���nu��S=̋B/��\�\r0ٯ��Mn�$��S7\�ӷ%\�+\���\�r��\�\�/\�Y\�$|ͣ<.\�B\'�\�i�_|:si\�̦2�bN�K�r\�\�\�VL�\�ކ�\n�\�\�\�\0\�x\�\����7��fp��\n\�T��\�\�\�r<\�$��|fo\����R׆\�E��\Z�V�/OH�a��\�V\�!M\�c}}�P@\'�rjΕ��с\�_^#����3��]\�\�\�Sh�\�\�I<<|{6�R\�;<<)�-�RY�\�\��\r�]�\�N��G�\�\�\�Q]����\�X\�]�\r\�;/\���sG�t�\�<��X���~6oW\�\�A,�aS�t�=�[]2��k��ӝ\�0\��_�:4̭\��Nn�\�S�\���\"��m�E\��\���4�5.�\�l���%��#8*M�Q3.��;}@}y�\\EU���<��$(>�ܳu6�\�\�Wg�\0�u[!\��5a	�vy�2wI\�}N}����5\�;]\�\�[�7���Xu+\�w�Y�r�N\�\�U����nE}�\rKx,���\�^��^�:Lq�Fɺ�a�aؕ) �Ȝ\�r{)\��\�I\�e\"��=_e	�k�\�Ũ^��4\�\��\�\�����~�Xo�l7\�?��\�\'\�6�[ܚ]�<,e�7�S�m \�\�\���\�\��\�\�D\�>�\�4\�6�͕zg���0�⭘}�\�䵘���\0��Pޮˍ\�W\�_40d��|e\��\�0���\�f\�\�m4{��)�A\'Oߗ1���TJ�L�2�\\o�\�k;�Ld&r�qYT�j�9�����\���G~rʯ8�\Z�\�\�`�z\n\�\�}��s\���ݮ���\�\�jCtݮM�$M\�\�\r\�\��-K2\�\�L\�vG��\���\�\Z7)Cm\��	c�\�給�x-���\�-Q\�@]\�\�Ld\�k#,��\�[\�\�g�/)\�L$\�©O\�<o��t�L\�tl\�\�\�U)U\�ߩ�U��?a�,���ßbGP�g�j\'��\�vO\�(&M\�Hܰ\�wCG�e�\��\'�t�<1\�ꭔ�z�qRYd�\�\�Z�^\��:��\0�[\nb\�rڅAQ4�\�e4\� ������'),(10,'5_8a0dd8e8763b3863fad477ef5a6ba2b643ab9831',1705222605,_binary 'x�\�X[s۶~>�ϴ�Èɺ�\��V��\�؊�\�p@a���\���Y\0�$_�8m�TyF&��ŷ\�\n�ڽ?�2r<\'\r�>\����L�L�\�n[n\��\�;ޝ^�\�X�\�hk ��g�A2CG[[����󂈡Q�\�\�\�\�W����3�i�\�/� s� ��\�_\"P~\�\"Ѭ\�)�\�\�\�	A��ԑW �x@���XN2T��\�j�\�\�\�8�|<\�8%ƯA)\'\��`�w�9\�\�\�\Zc�+��%4 Y\�e\�\�\�\�}\��\�\�[,_r:���ݎ\�XN�豲\�h�\�)(\��ZN6ĀYĄr\�	��\��A\�l3\�\"\�S,@N\�#��_j�\0�E^�\Z\r�̙���yc\�4v\0^P��\�Q�*a+ɑT�TĨ(\��堡\�*?e\0\�И\�\�\rT9~h\��\�����W�AC;z\�p	>���Bz�h84�&\�KpQ�Hz�o3$#�781�����Vӫ	^�R�Dz��:A����%_.��\"?d�<@�@�sh�\�;�����!\�@\���^9+���K+\'JJF\��ʁ&��C�Q�Q�hJV�\��Y\�zO����F+���7����?\�4\��[\� K¥\��p&�~�E<t�&iG�n�\�rˎ�&��m\�u��\�t��\�3A@A،4\�K�4X1\rC�-U�>k\�\�_\��\�w\�+��\'\�\�-\�;vw<e�� y7��\�,{�av�vpz\��I�\�\�\�g��q��ݥ>�.?�&\�+�<\�\�\��\�\�>�\�_\�o�\�\��0�ocrq~��� ��O\�\�\�ys|%�㫝vp\�n�\�\�\�e;3�o���\'�rܾ��\�\�F\�C\�\�\�!ͮ�[͈�(\�tݶ\�iv�\��\�V�kY2#�(\���\�U�J�5*��G\�D��`j�^\�z\�o��d�O?r+L�1\�fDI>\"{^Pr�\��u�v\�Ad�Z;�\�V\�l;�\�����F\�lw\0\�n��4hȐy����\�/vFgp\Z�Z\�h#K�+N\r(.X\n �E��Slj�^^�d�Y\�b��\�T\�\\�KJA��\�4\�YH��\�n��}	\�S�zn��i�%�+\r�-�hUQ{���w]�eA�sV\���a�O�O���bț\�k\�x1FS��5(r�Պ8���\���\r� ��\���!�&+/>�->_�+�\�\�ml\\\�S7�YU����:\���V�\�Ե?{�ϿT	��?\�ó\���\�%\�)o|�:^�\\q4\r�\�xytu��|���]\�\�\�U�8��ē�Yt�\��G{\���\�\�x�\�d\ZƓ\�ܞM\�\�\�U�F{Gú���\�i\'S��2�\�\Z�A���ӹ\�\�*�ME�\�L�X\�ch� �$$\�\�\�ِ�:	+�\��e\�Tn&\�J\'\�d�>=\�J\nZO�6吔\�9���=\\�~J�^�?�\�n��0U7;hhc���.Oܳfx��xj�\�\�k6�*�}\"/\�k֯2�5\�:{E�i\��\0�A5@��\Z��2\�x˼i�=&��҇!��\�\�3%ݐ\�.?S�����\�ղ\�m�	����F��\�=?\\�r�ám�f\�)D�$9͞*{����� (E,�AL<\���qϑc\�Rѹ���\�\�\�\�t*\�Znh(g$�nW�+\'\�\�\���QnՄw5\�|�9\�\�.\�\�\�I��㩒=y��ѿ�\�\�0�c�� jWn\0gKo���rs��z&L0��o�\�\�G;�j\�\�L�!\�\�\r\�-��a�N�\��\�p,\n�z\'���I���\�@\r�a�+Q\�M�\�q�\�V��ep\�\�Ӡh,{�;���%L�\��H\�\�\�{z&\�\��RN\�\�ZxZ=�\�3@o\'I��I2T�q��l2��\�\�	$=dc@F2;�ahذ�\0z\"0����*�ey�(FX����\�\�%i`����\�\�F\�(��\�ۣ�\�~e��^\��-r`gL�F3Ry��,���vA��i\�꫷R�\�}��po�ؚC��&.�\r�]S\�<T��a�6�;3�\n��Z��o� k��^kBu\�W\�[r!h�ڶ-\�$ܤtdpz�b\�p&h#�g�p\�\�J_�[l\�ٵ��FC����!)<�\��fAR�R~R\�AO�\�աW����\�ۀ\\F\��\�AX\�eZ�:�=��\'\�R/!7\��և�����\�~\�\�\���\�B\�_\�g\��e�9\�\�zy�:��m�4^�I�z.XǪ��\�)�U�Za%��^K\��?�T�E'),(11,'5_c20f3afa6b3c8a08486a619356bcca8e5f2d14b9',1705222605,_binary 'x�\�<Ys�\�y�~Ř��lE\�}�֖LIk9��\�$_\�)8�����\�\��O7���e\��\�Uks\�\Z��p-t?K���&:eQ\�\r\�Ǫ%\�IJ��_�N�3�_��M�\��<X���\�`��1I�+4�`%\�\���pES�K\"$M_W�t~\�C�\�\�\�\���%��#�I�\�\0~��#4\nf�\0��o�K\�	�,�5\�\�)$����\\\�\0	\�Ҁ�iH���#-rpM\�\n^���\\\�S�2Ǜ ���ǿ��\"\�\"��S@�(�YH	�,�\0�\�͇ꏷWGN\�!_o[,Ӡ\�\���F+\��]fG���#O@ZA2@N���@P 	S�\0yL��\�\�e2\�bER�S�\�D6\�tC\n\�O\�rP���5oq���\�����\�\�\�\�\�]o�Za�\�o\�:ak�\"R\��g�9mD�^cx\�Y�\��\�\�sir�\�x<��|3�\�ΐ\��ft�\�\�\�ԤW�7Ϧ\�I\�}��\�Y\�w\�,\�\��ӳ�\�\�\�ɰ�\�o8\�\�8�G�m�#��\�u%lU�0&R��\�\�?��aD\�$�S�\�E\���\�<�#\r�Ɇg\�a\r�:\���\�-\��7S>�� oF\�^\�L�\�\�\�\�\�\�\�\��Z4\'\�Z�=o\�\�\��7��z�\�\���M\�Q��H�@9��\�\�\��\���\��ݷ��oa�\�����\�\�lZ3\�6���\�yj���bS�5���)UH\�y\�\�yIj@B\�%�F$%�c2ha\�\�(Fs���\�}�\',�\�\�,��ɓ��\\DES(\"vՂo�&>��\�G\\Џ��\�\�;E{�\�A\���g=��i\nØIUM\�\0ƶz���t)�#�\�\��4u�\�5\�\��i���H���wT���FJ	�J\rz�\r�\�$\�0\�=5�s8ӄ\�bz��P8B��bJ0.u�rPi�uBsH\��\��\�\�VO�\�9d\��\\1���l}��ͩXd��eA	8\�A�-\�\�i�+�.�#y���.b�mE���$\�$�Q\��7$���;~�\02� ���s�d-�B�Z\�Sca sEWEQ��\�r�F)lk��\�\Z`X \�5(�a\�Ӵ0�,]2[��\�X\�=\r�%8O�XB\�\�A\r(���UW��c��\���\�1m>P1\���n|�Nkݶ\�\�\�6Ä�V\\P\��Q\�|�0\�AF����#Nx�\�=�#4,YAj\Z�t)Ҕ��n�h\'�\�\�C\�.\�\�\�d7�U[4\�\�l�ڕ��\�\�\�\�\��\�\�r�䀓J\�2eIg\�\�}09ŪW�A\�\n]��SG\�h�y\�Ƕ\�b�-z�u0M@\�iLh�\�32.\�e}k.\��\�s�,\���\�\�\�3\�&�AQ�C�\�iy�\n�\�j\�\�68���\�4z\�U\�X\�[W6��\�l�r R\\�cE+0�T\\dI���\�\�\�s��t||:�� \�\��%*Z�L\�g�tw�\����\�r9\\UD\��aQ��uGq5�\�x�N�\�ߡ��B\�]P]��@\�sH�4_r~oY�wPs���\��>\�L��\�3\�!�&6�z��G!\�\�\Z+�T�P�eBҸ�\�f\�n�\�\��XH�ͣ\�K\�mt\�dQj��\�\�J\rpA\�	��AB��\��Q��m\�c�KD�%�O��\�%\�P�\�\�_%2\0%\�\�?z�Xǚ�~p\Z�i�S\�K\�\�\�� t\nH\�;�}p�5�V������\�\�\�\n\n��leF_���\�ze�,�K\"t-ħS����z9\�O�,\�\�O�@>�x\�{��\�&���qL���~@�[\�5<3�\�^�U���E|!�0�\�	]�o�\�/�%\�M\�V����;�\�w�P[H>{%���=hH�Fա�\�\�\�\�W~�&\�2\�\��\�N���(+=���D�\�yg���aY��V�J0.؈ġ�\�\�1\\kZۆ(�\�ҷ5�\�kI�@\�rW]���$rY���n�W�k\�r�D�4��\�U}Z�$\�0\�WTߓ �1z����!\�!N\�v\"庒\�\�\r�Xe3\�\�\�\0�\�\Zŷe\�/���\�\�\�H��w�1���9-�\�\�Z�\�k[P\��l럾9�mR*�s� ^\rg3\'�k�8��\�\�kQ|\�\r_�[Z!\�\�p��=�\�\�oa}\�1����\�t\��l\�~\�\'�D|��<�hg\�\��\�]�0^Ӑ�x��J6\�2V�nQQ\�x\�;�@t��7g\�\Z\��\�\�r$\�\�,�o}�8��p\�eѠkO\�mb�\�м�t�;0���\�P\�\�\�=\��B!�\�_\0}�Ē�\n��AÏ\�\'\�Q��\�\�%���=���U��6\�*�\�t?}c�7h��4f[\��eˁ>J<0���\�r\�\��l\�^$|E�O�u賟G�\�;�\�g��p\�-��_|��6��5\�\�v\�o`�M\�~��\�U\�?���4\�\�\�x_e�ˇmߔ�,\�\�9l�@)��붝t^��.�F����w��{Q�jJ\�\�i\�W+\�ڴ��\�Kb�\'�?\��.�W1jY?N�\�]�Ջb�F\�/걠��lQ\�c �iT\0�\�rN\��{i�\�c\�\�\�~v\�\�d\�m�\�B�?\�2\Z��J�}`���\�@+6\�zl�L\�j�v\�:�n�\�\�5:\Z�\�l\Z\�s\� �1T\�\�Ç\�\�E���AF\�hL\Z�4\�\�}��F��S\�\�\��D��\�\�{\�\�\"e�ns-�\�[\�֩n\�{�7\�v;u\n��˷m�Fl>�L�0\���Ա\�/��\�`i�7\�\�\�U�\�\�\rn5��15S�Q\�}���nX�\�<�OX�\���ڻ��bݠNV�3\n\�v2�@�\�L�s\�!\�:��	�l\ZaW\�ZH=�\Z#�w�i�\\�gg[�\�j����ojD\�1`h�l�\�o\��\�j^�[\�#{,��|~nB��\�\�^\�(v\'���Я�M�6\�nL��e1���ڭj%W\�bN\"9�\\\�-��-\�%ô\'%M�3�r�R6<���T+j��i�U.\�\�\�ּ����\�t�=\�ȡNM��\�l�.���\�\��c�[�C�\r��>d3_\�\�Xy���Yy:\�-�s V�ӟ8_\�b7;n}\\s��>\�t�\�����gJ��9qn\�bP�Q4����!H2�*on�h���y\�\r\"�\�\�DLD,h\�\�;��.�=Вm-)ޙr�\�\��3\�ExZ\��l�\�u�~T�j\r\��~����&�yB_W60��\'\�I��\�·ԗY���{-C��4\r��uE��_\�\\z\�Pfq\�2�\�S;o9#��\�\�s	�/e�&<\�\��-�\�O}PUa|B\�q����\�Q�\�!\�\�\�1\�~m\�*V7��U%\�G`w�/�P���/}\�\�V���	��2�Wճ7���Z1���X���Y�)C\�\�6\�l�Vѡ8�����9�p��D��\�\'NdH�\�B925s1Q�\�d\��[\�����Fk�s��܁\ZyG��\�\�0��Ν�J]\�i\�I,�b\�\�\�ߘ�����qi:u��\�l/�ϟ��\�\�\�\�H�W����h\�\���E�bُ\�%�����Ga\�a\�\�e\'}�F\�s�\�BWw^hc�_�y��_*\�\���r~��_*\�\���r~��_*\�o���Y\�f1�4��e\�tF�3}IQ�\�c�ֶ�x7�_A|� bWO�m\�d7���]��3�T\�!��R%��1X\0�\��\�\�s�\�o\�5�w�Z\�\�t�޶0#�oo�P�N8\\\�+|�\�VhWq\��\Z0q\�jb\�U���bo.D˕�NGN�\\雕\�\�sC\�Di\�ǰL�~tv��\�`n0�vP�z�\�bV��\�6�\�G�`��M@�\�	/V~������S\�)�\�\��0�=�\�\n����F��d�U�}f�1F=[`ڻu�V\�^��\�jD�\�\0�\�zm%䫵\0�G-Hs=u�����БusC݈ZALģ\�7��{	\�_M\�j�nf�{�k�+%�k�\��S@\�c��	\��8-}\�Qi�L&C�Lp\�\���ҵ�+��ԣ=��zS\�W\�d��\�1Ayd\�(�\�\�^�1\�P�w�\�FS\�E�j�\�Z\\\�v\�Q\�5du�$���,O5!\n���g��*\�>I4v�_+\�ԍ\�c\��\\b��U�\�$2c��loٚ%�\�:\�o\�\�F\�:֖T��v�\'�nT���}�j��]*�8�\�6\�\��\'u\��g��\�a�״xmd\��\�~�\�nr�\�{9��/&��CY܃��=͖�.%��\�β&\�+eq\�:	.NS�ZԙK�f`6��\�s�]���+6swe\Z�6U(\�u3p�\�7<\�\�kscj/\�/��\�y�mb\�cN\"�Jn�ҽP\�Ku�h�g^�mo��\�4��\�K\�v\�A�Q+>^\�7�sm�p��Z�\�\�\�:�\�x%�\�Y�\��Y�W�\���\�D�\�\�\�\�\�\�\�۳\��\�\�\�I\�m��\�J\�.�ϭg�\�܈=T\r\'������ЬF:[l�\�y*�K\�Ę;Z�\�u筽\������{�R6b�\0�����s\�)��\�R��\\\\��쬒�9�֧afe\�wC\\�\�ǯa\�p�s�O��\�Ɵ�a\�\�r�\�fەl`م�U)Q\��Ψ\�Knu�\�sU\r�����AA���L\�g�n|���\�\�0��\\�\�k\�|s�4\�MՕO}����5w\�[m\�_�W����XU+T\�w�Y�r\�N��y�)�\�ny}�\r\�y����\�^�|���:Lq[Gɺ�a�fؕ�&�Ȍ\�r{]\��\�\��E\"�\r_E=�����^\�5\�\����\�?G���\�c�7\�7�\�\����hV-n\�.�M��\�éL7swX\���\�\0��V\�t��tuuJc\�\�ֽ�v��C��̾&Wi\n�ZL\��T\0\�%)oV\�F\���/\Z�?\�C>�2buhB��C�\�o�k�N�n�#D���\��E\�g$>��-��L)߅�ڎ.��\�nh\�e�ڂ^CԿ\�\n֯\�:\�;@9\�W�D\rZ쯰��U=���پ�ֹ\�|\�l�S�hj��n\�&Q�^Ǜ(�\�[���ϙ�\�.t�\�W�6n^�ڐ�+\�z�\�kM��<ZP�[�[�Ё����H�JX8\�a�\�\�\�\�g%^P��HʅS��y\����M\�tl\�\�f�e)\�\"�U^�ZA\�.Y�uC�?���T/\�9/v\�͎\�PLꮑ�a�놎2\�t\�1\�Uz\�\�>pq@b\�\��*]�T⤲\�z�\�n4\Z�Z�0  ~�f\�J�\�\�K�h\�\�\�\�h\�F��촤\�'),(12,'1_868a5659e30a57cb',1721648599,_binary 'x��T[o\�0~�\��{j�B�\�k�nk�\n{���Lr n�\�����ǅ��[�jyHb�\�wn�;�[1-��\"�]�\�\�&U҂�Oa\�l\�49�r3���\�.�~-qRp�\�Q�\�]\0\��5�O�\�I�sm��\�\�΃6jԒ�  �O\�\\�����j\Z22\�psB\"�)�rAJPe\�*b\��y��v�\�5\0Q%Hb\�J�@6�\�SZ�\�s͗�Q��\n+xQlI��[�7%h2�\�\\\�\�p��B� \r\�W2C\�\��v1�~�\"t�ʭ�ܒ�\�iQ=j5\�옜= #�D�\Z^���\�Ah�MR+֘\�F�6\�RΕ^r�v\�-f+a��41cv[��c��X\�Zb�-���M����fH,B�.\0#p�4%\�\r\�Q�\�\�j\�:�\�ۙ\�T�E�k�\�$k\"�M�\�\�\��\�\�՚T\� �9_���P!p.�<��\�[��A��\�V�޽�pj�<%\�!�W:o;�S\'ɣ]1\�H\�5�q2mX�\�}�\�\��8��\�r�X��{\�߱LN�c	�jQZbtڣ~\�qX\�,s{1M�\�����\rW3\\Z������f\�9УJ��\�|[�f�uՑ�\�CT+\���c\��U�\��o�c뮢FL�\���{j�\�VqdL/�\�B�><\��?>�\��P2E//�\rO�c���\�\�d��\�F;��9�ݜ��\�p�9��T\�lj�\�n=�1�ݧ�\�\��LE\�(<m����!,k,_�;I�4\n+I�wH\�|a�ш����\�z�MC���\����'),(13,'2_b483c1c60649b2af',1721648600,_binary 'x��is\�8���+T\�v\��\�}uҐP\�%\� g\�ad[%\�re9:�\��$s��m̌�ޥwKW+\�I�T\�b<$\�k5Z�k\n\�H�Hh�r�v��\�ߴz���C4㰙�\�?\�h\�\�H�I\0�~3�੏��\�a�\�\�R\�e�\�\�\�\�:\��\�\�=7�� ��\�#\�\�G\��=\�FIL9��(&,	% ��vE|�\�b���\�#\� Suq&�\�\�\�c�\��=��\�0�\"�,�?\�$&�\�c\�G\�\�\�G!�H�\0>�|���/��\�{k[{,�r:	dU*e\�6\�<b���=t8u\�\"Ж�56 #B9\�X<A��ǈ��\�D\�c,�O\�#����f\0qR51���\��\�\�\�:�7WT��yN\�\�gRH\�\�@�,&���\r	l�\�\Z�ǹ�e�t\�e��O\�ȢZw�?��n�^<u�> \�74\�i!N��H�#�\�}\�4�hLt�\�@��eh2l��,��57�P�����{5\�\��\�\�m�ԥU�D������p\Zc.	\�},�� #��Y\"4\�D�K���\'\�\�Ќ���^L?{\�m\�CF��\�j@\�I\�;<�k\�Q�<baH�\�8\�W����\'��Y*U\n��w��	\n)�N��n\�-z\�\�\ru!5 �u\Zũ@�\�#\��\�\�ɶS�/\�B�}�MC8L��?c�^�\�ˣ�?;�NM�}x�\��-\�]7Waz}�\�r��ؽ��\�ƕ�{yl\�\\���;6\�Ebֻ\�X=\�\��<��\�\\�g\�p\�\'#ruy\�>�n/\���}�\�܉�w�_�flҝ1���o��ۑ��2���\�M�=�\�Jp\�hb[A�BʾS��\\0+�J\�`]*�b;v���!\�\��2�&ЛN8�5.(IV^��\�{\�Dm\�w�:\�2K��o�\�q=�$���\'\�\�\�j:x)\�\�N�.pOO\�J�Tʗp�\�N\�2��\�<\�	� ���E�\�Ei34\r����V4�PFv�\\���\�\\��\�rT��\�,:�4z\�Y\Z���\�~b���\n�\�v�Ykz\�.�ه�\\=�q�\�\�\�{J\�LҚ�\�\r�����\�\�w]C��|O�\�\�b����T\�\��s�X\�0O1���\�˸W�\���\�\�/\�q_�̞��ۍS�<&�9�.\�W{uwYHX�\�\�{\�n�\�\�n��ǳ\�I�n?ߕ\���ٻ�\�w\�\�B�ut\�m\�ǳ.�|\�:4oǧv�u�Z݆r\�n��r^w\�\�9\�zf\r\��S�\��%q\"�!Q����݄�� 54\�|H���\�O�T*d\\_a�\�\�e\�\�^��Ϳ��b�)���ف�\�:�\�ެcXӡ�\�\�\�\��\"\�c��\��/u�/�;O2d�aN�\�&^\�\�\��6���\"�JRwL��{�\�h���#)\"\��4]\�a.\�\�ǵ��Jc\�U\�s�6z^[#Sw��E\�ۆ�P\�uB\�\�ΎY��F��&�[w�\�/	_ǹhW�\�\�4�@s.`\�z\r�70 �J\�Ǔ�l%\�\�&�\�8I]��O��+nC^���\"ܻK\�[%�P*9�	CxU�ۺ�ݪ\��#���,k9z�!W$\�\�WU\�*�\�r�ʆ*\�bW�\�q�F^��V\�U��\�	0\�M\�@\��\n�\�澾��7\"gɉ0_�f��W��0N��,(���q��{\��)i��\�\�՞\�,I&0ˑDN�Vɶ��r\�4�\�p\�\�L�h\�\nS/H��x�̵�U�(g:w��\rҟ��9Dp'),(14,'2_8a67418632745451',1721648600,_binary 'x�\�ko\�ȱ_\�_�\�]��%\�-\��!�\�S�`)}\0���6��,wi[w\�\�\�>HJ\\%NZ���;3���\�\�h8�M���ZB�t\�\�\�6j�Q-�%�e\r\��^o8��pz3����\�[\�utrp��y��\�5\Zװ���\�����5�\�V$T\�2��\0\�\�\�z\�;�\�tń�D\�I\��chJCo��`���W�X,��x\�%�\'�$��G\0r�t\�[��z<��\'x�\�k��+Ô\��x��5}\�\�t\�$#Q���G�+	M�\�!\��Hzh,\0�\�!�~��\��\���4t��Mʖ+\��\�\�\�j�:_\�vv\�=;���Mi��劲\�K)��=\�D�b�\n\�\"^�tM$\�)~P)�g�A�d\"F��\�$�}\�\�e\�^�j��\�Ӌ\�\�Y�\�#\�b�{\�_\�V�C��y���m�z�\�!�%�:��})MN4�Lf�\�&\�:\�]\\�/?�~3����\��Ŕ9\�\�c�\�w��\�Y}���\�\��\�\�ur\�\�x4\�\�zBOԿ�\�(d��k�_�q\\[�{x\�\�\�\"i\���h\rq�?�܍44\"�\�z�v�5�\Z��\r���\�|9�Aތ����\�&㻋\�\�aH@��yg\�\'-:�7�\�/�\��n4;ڡ�\�3�\n\�QTv�k���\�\�\����\�\�\0��;\�5շٴ6f�m\�:*�yv���bS�3�I�,қ<�較$�Q\rT\�\�`�,��FF>��N[^jH\�Vt��E�\�C?Ԇ�kp�\��qMȱQ�d9)\�\�n���Q-4=\�\�\0_ې�Uƹ_M\�!�̉��c�\��w�K!S�\�O\�,����y��\�\��]H\�7�n�\�\�y�\�ޛ,	ؐy�\�\�(�<�\� ��\��Cݤ\0Q�\�(P���\�\�\����B\'��f2q��1���\n\rY\� \�3L! ��\�AX3]q�$\�Tlƚ�q���\n��sQ+\�h:\�X$M\�F9���P5�q\�)Y\nl\�\���QH�*R�\'3b�\�v~\\��g��*\�0��Hb&��r\n�f�\�\�h�h\ZA�gk|=�^!\�\�o�$9\�I��]}\�o2\0\�\���?9�RJR��\�\rh�c:v\"�ދM�\�B\��[-8\�4MYH+��*�}\��\�\�l�\�\�%�:[\�Dś?p�U:�Q\�\�:��\n}qi�\�^+D�\�z��\�R U�o���\�e\�л�)ZW\\\�\0?�\�i�&FU\��[�\�%\��K\�\��\�o;)�W\�`eS�\�\0V\�j���&\�6N{W\�tױ�\��˘3|t��Th��@���{\"D8����\��EqF\��ӫK��V��\�^�],�$b��\�B)&	\�J\�9n�2��1���\�e�XIX\�\0�Xj\�\Z\�t\�X>��:T߂\\���XU\�\�\���rX�V\�\��\�t \�\�!��e�SP�9��&\� ��\n��\�D�\�\�.�lr�\�ǡ��\�\�P\�`�U\"���\��E\�C�x��&�;)i���\Z\�1lo5\�tv\0.����*��jw\�s;�]�\�\��|#�p\�\\A�\�楲C{(\�	H�\"�Eq�7Hy�ni��Wӳ�\�\�+K\�C\�0�f	\����\�Տn\�\'O\�\�,x\�<j��\�,�p�0Ih\0E�W\r�n�U�JW�\0�j�\�\�u\�\�H�98ku�c;+��g�K�ެ\�	D	^e\r�v\�\�66;\r\�9J\�\0�z���D\\�\�a�`Gt�\�!\�at��c�\�<~2�hG9\�\�rhk�\�/�d:\�W̚�t���U`.\�~�\��k\�\�\�ۈ-m)D\�3�]��1G�V�鱫�2��*0�\��2\�e?O��L�\�:p�R�\�ʯ\�\�\�U�\"�\'\�\�%���R4I\�T}\�7��{V\��\�b���}e�\�\�\�q��Cu�\�r\��RJ�KƝt^��.�F��\�N��w˽�m��{��ڹ,\�\�`8\�R��\�\�\�=��\��\�Q�H�\�L\�B���֒_\\`!D\�ٲ\�t\�@\\\�W\0��j.\��{i�\�Y\�\�~.m5�Q_풁`2}8\�M��\�\n��`\�\�ti\�JR�#�ܤ�d�(\�^�\�\�:C_C�T�d0Ԭ�4�*E�\�Ը+�4�\r�\� �Ե�n\�c\Z\n\�-t���8)1�^\�S���\��4&\r��x�`��61ý�ǌ\0�\�}\"Ϡ�R\�-77\�>�ʛ��Y�\�^\�Q=�l��\� �.��V�mM`�/��G�\\\�g\�\�\�}�\�y��ේ�!�҉jTޢ���6[D��Z\�P\�L\�J\�\�	�n	,�fs�\n���f�|\�\"\�\���)u\ZaW��I�f��kX�Z\�j��^5\�\�N����%5�\�*�}����\\�b���Il�[�\Z\r:��y3hpl��q{�z~b�ި��L4�]%\�zp��j\�\�ڄ\�y����T\Z�`fYq�YX�Qn\�2&F!��\�Dغ41�T�ቅ�\�/��ZQ\�/M+د�� G�s�����\r�#\�KC�\�\�\�uTeb��i�\�0ג��#�\�n��8W\�\�\�\�\�[od����yU��h\�\�J+\�ٯ��s�ۣ�.�\�-4���\\�\�̄g�n}�\�,Qp0����5IfBe\�m\r�3�\�\0C4Ku\�%DL$]RYj\���	]�\n�H+v��x\\^n..�Ch;��yy\��x�r\\��5O��^O\�\�@�i��\����uz?�M\�\�\�\�sws_q�y$V�J����k\��\�|\���Ȇ1�Uq�ڗ\�;�E&\�Y@�\��}�Z\� W]<\�\n\�v�\��G\rb�\��\�lC�u�\�\�φ����\"v�\�P�\�L�agU�DC�\�H��\�t\�(�f\�	*���\�\�LBx.[.\�lc\�7�rA�d\\�\�3i�<���\�7����\�~�\�#���s1�\�\�d\�\�[3�C�\�\�lAQY�[j+��K�B!\�\�OK���E�\��\�\�\"\���ՙ\r$R\�\�WuvvyL��\�z\�\��\�o$�+\�X.\Z3:{`\�H\��?\�e���S\��bԑo���x��\�!YKNhk�l�\�)\�k!�Z�����\�k!�Z�����\�k!�?Q���0\�b�h�p\�\�ٜ���\�>g�6Q�w��%8�*�\"�\�B�wh*�7�/\�Vl\�\�\\3\�WE1ޛӀ�I&�	\0�\'�b�\n�*\�\�Tm\�\�i\�\��%}���C��pL���\�š\�9\�&\�)��c:Z�\�C\�S�q�\�#4\n��\�mf�?�`?��d\�+^�x=�g=��\rƙ�@)\�7��\�MU�\�ven�a�,�D\�ɜ�jۈg\�Lf\�7�\�K�i\�\�\�|�\��!&�u��\'����9\�\�\�B\�\� �ܜ��\��b�\�\�l!�I�\��\0}��Ԧ\\O�\�`v\�A\�݌\�[�\�\�K�_\�|�%_g3Ta�\�+�m݄�\�\�T����\��*굙��\�2\�h\�k㛪=�Zrlӗ\\� ��H�\�e�x�By�\�\�gUO|h�\"�\0\��\�b\�R�\�\��E\�\�\0;N\'\nQ\�-\�5���u�\�\�\�+��L6�\�R�dX�X߈\�\r\�M�\n��]��(�\'i6�\��se!EC\�ƤF�\�E^>\Z��@0�\�����O\�J��rg�P\�>�\�씱�\\@�l�������p�WbPҿ��㏒.Mm*�\�u�ݲ��K6/o\0�\n\�m�P��\�]��.0�\��Ә�\�\�\���ΐǋ`�\�\�,\�m\�#�|C��5I��M�ͥ,�j��s@k�&w`\�\����l�γ\�J�\�;-\�W���t���R��\�-�\�F����60�g��`F<R\r\'�>j\�c�hLe��/\�,̳�ꢿ^�e�]�*��\���\�+Xd�4�m4c\\|��cEX�V)]\��\��$jj�$�Ɖ��O\�B\�v\�1;�c\�\�+�^���m�NP_�����\���sP\�6���\����Ǿ\�3e��٘\ZѸ\",ƯW\�^�i\�\�)K.ɜFb�Hv`\�$�\"lÔr\�`�1h�D榫�\'t��\�?=JUQ�h\�+�\�ǔ)o\�A�!6���\��be��\�u\�X�t����\��\�\�C�mv��\"ƍ&@��3lˈ\�I���\�8OGF2[\�_�\�}�fvc#��\�6T�\�\nS{al\�?\ZS~\�IX��B�ݟG\��:a�6��A�]�gto\�\��ߵٖ$I���ڇ�gqQ]�\�0I \�\�\�%�\�\�Mθ�up#\�&�?��+c^i���pIͳN�i!u\�p*�kUL{�\�ۣ\��g9^RȍD򴔇���?w��=\�.\�E6��r�\�Nu\�`��d��M��\���\\R;e�X\\�m\�#\�K?��\�H\�N׷��	\�L&7�\�V��n\����]�\�;z8\�,���*��T\�sk1\��\�A�\"~df�Raj#�\�P\�\�]\n�\��{�A�i�s��t{�V\�\�A�AW�h�/\�Y\�\����r�'),(15,'3_291bce1e98df7dd4',1721648605,_binary 'x��W[s\�6~.�B\�N�Щ\�\�@�\�:\�d��-�M�lHw��e+k[�$��N�{�l ���ݩ�1�\�EG߹H�\��\�n��\�\�F��k�b��T\�T0�5ZN\�\�:{��(RIܯt��q:\�45�\�A��\�\�&TaD\",$U=#W�\��J��i�\�w^\�$�S_2E|f|N\r��@����L\�R�1�\�\�(\�b�G�\�W ^��F���H�\\��K�\����D�\n�\�9�A)S\��A�*W�ˌ\nt�c�;�\�\0Ō\�T=O�������?^o-Mx�l)d�n\�t�N�pW\�k��̑��`��[b��\"\�D�b���yJ��ei\�E�\��hg\�\�\��L�-K-2^{\�\�̪�&\�[\�*�bڿd�\�L+As�\"$�$�bѵJz�tP\n���U�\�\�@+���r�\�\�K\�\�ӵJw},��]]�\�O7`��=�8�-\�R��P㏊�\�\�Z��|jj#��n�TRc�\�2�F�\�Ţ�8Q�V�f\�/_\�L\�\�-�)\��\�	l�eX(KϛV\�@\���^�\�(���\�4��\�\�q&���vϰJ�8S�+�_\�\��k4h�ZJ�\�8\�Apj\�8\�:���`\�qL��8\�(\�\"(\�\�oXF=b\��\�Q\�\\�\�\�fHZM\��1�a\�h�\�\�D\�H�\�\�,W�D&bA\0%d�{\���ON�RA.2\�=�s���|9�8�>�\�{\�y_������$�\�ř�&\��\���\���\�\\$\�¿U\'7�\��/ƩZ�\���\r\��>�UNnFՋ�xI\�\"�\���\�\�iz{\�g\����\�\�wo�d\��K\�\��7���\�\��\�:&�As\��9\�t\�����6]\�\nj����\ZU�ᶂ\�\�V�]�\�4p�\�d�w��S%r	e\�\\@I�Q��ʗ�ʹ\���$�WL�>(\�^\�\�?���:�x{�N؃dqC�\'�l��3d4v��S��\�j���x\�-��f\�\�f�jם	|߭��}To5a�\�k0��\�y��[�W\�[\��/͠L9���\�\�\�W�u�҉4<϶J\��c�\�\���C�؃)k�8\Z}�+]�\�t�BпrG�\���ki�>�B\���-�b�$�R�Z/���Z_qH��������H=�Ɣ-=\�f\�\��7rx�\n��\��\�\��-Dp�8\�\�>\�m���a�\�<أ\�\�\��\�\"\�\"�E�g���/y�+\�A 7ci���\�t]�&���=\�{�U�� ߋ\�^�x��:�������=�\�\�#��7��O&�\�ͼ~\�ݲ�7���\�x��_�\�&�w�{��\�\�\�\�|t|j\�r�0Z\�\�ɰW콲��\�N��ؔ�\�\�?/0f�\�¶b\�V\�\�T�\�>�;��c5\�\�Mr-P��nuz976*�K\�F\'Ju0}���\�3ߖCZ6L�f\�[��	�֘|v <9J\�l��\�E�4c��\���c�v�B\��w\��\�V��ς\�_\\׬�\��m�\�֕D�\�.�\�\�\�vhb�\�S\"d�3ƺ�e7$��܇^\�z�\��e!m\��ܱ�,_\�\�_\�f�\�l֜*4h�j�TtVyɇ\�T�{��\�M[\�A\�)�\�.jS�\�\�t|eçE�q�<��ry��\�\���G�=�LuP>Q\�eO\�\�v\���j���\�z�]�\'�=�x\��x�\��xA	�f�{\�\�\�C}�\�y,�^�\0M\'��\r�����U �*�e&ٚ\�8r��\�$\�<\�\�\�D֮�Un`Lk���o�F�q'),(16,'3_dd7a6fe31259c838',1721648609,_binary 'x�\�;is\�8����Wp4�_���Ӻbg*�퉳�\�R���r�\n\"!	1Epжf6�}�q��%N��\�VYUqHt7\�\�\�h8�]���ZJ�tƢ\�6\�\�-!OMT\r\�Z�\�pT;�\��f<�\�\�Y�R\��\��1�\�$Y�\�hR\�J����\�T� \\!�:�ejQ\0\���O�zp�?\����K�h\0�)��F�|�\07���D�L�d���1\r$�Gr�t$XJ�\�$�<!\rƆ\�\��$0�5>���O\\<@�L1Ǜ �(3\�߈L�&����$\nb\�D<K\"��z���\�\�\�ai萧��+��\�A�\�lw�\�\�\�08{v$\�	p+h��Պ2\n$�b�0���\n	\�\\$.\�D�\��!\�<3\r\n4�R9j4\�&\�C.���z\�k��\�?O/��g�\��~o0h\�h\�\�D�\�Q�G�\�\��\�\�\�H戮Φ\�^J��\'�\�\�\��\���t\�\�\�O�\�ͧ!���~1eN��ǘ��ü~�aV?��;=�;}�r�7�\�y���\�\�_�;�\�c���ZخaL�<�-\�=��\�\�be\���h\rq��hL6<S�f\�\�\�z\�o6\�~��\��y3\n�\�z:��\�.n���p\�놴I�mJ;Q�t\�a?\�tȢ�\�\�8\�|&ߠ<n�\�\�\�\�\�\��\�fzv�\�f�G:@k�AzC�}6m�l��NG�<;M�B��\�\�}V\Z\�M�xL\�A����gI8	K!��QS_��/�	�\�h:\�\�\"oA?ԅ�kp�\��q4Mȱq�d9)\�\�n���Q-�T�gI��\�\�:\�܏�&��J\�D\��1��=\�J*A\��[�%�7_O7�\�f�nR�\�\�[\�\�\\h�E�6K6d�\�;�)��\Z�}=3�T\���P7 Zt]\r\��_\��\�#<߿�B\�\��\�\�L&/L>f�\�H�!\�G H�SI��w֬@W�kI�\0*�cM�8\�RWs\�cJm\ZM/\��A6�ȁ�(���a�cN\�Rb{����F\�W��=\����h��jxƚ�\�s��\"v�K��`o	���Ƒ�~v\�׳\�\",��Ir�üdF\�շA�V!P��\���G� �T\�O%o@K\\X\�q\��^l�\���\�@\��?R!XD+��*�}\��\�\�l��\�%�\�:[[\�\�\�[k\�A�t��\�u\��\�\�3�V�9\�O�\�\��O�A>�x\���Ϣ�wGS2�#���\��\�\�U}\�oU��Dǯ��g\Zfj�\��ό	\ZU\�8,��:(\�Iu�\�ޕ:\�u\�Vw\�gL��>��\�@*4C\\ BF\�=\"\�\�I�Z\��͡x#\�\�ե\�Ua��p\�2��\'f�Q�iLB�\��\n\��8�[�}���s0��\��\�\0����GW�\�;�o����:�L�/�\�\�\�=�\�9\�R���\n�>��\�\�\�Tߓ��5z|4őKN\��8\�3U\\��\Z\��N��ї<\0�\�{hﮃa\�\�w\'-\r�\�S\�=�\�Ɯ�\��\�PTE\�\�\�^ۂbn\��\�<�t>\�(*�:\����y�\�0\nqҠ\�\�\�P|\�\rO\�-��j{v�=ze\��\�=f\�,��\"�C��̣\��\�\�\'�%!�<�G\r�1�%.&)\r�\��\�M��U\�\n T���<�\��;�3g\��\�\�J(\�\�<�\�ԛ�8��(����О�\��f��yG\�Y�W0�\�K�x\�\�\�n`�yd;,�>SbIB�\�\� \�\'��v�ü�,��wI[e\���A\���Y[����\Z̥\�O\�\�B�M\Z9}��+��{F\�r��wc\�)\�J�/=�G�>�\n\�\'�V賟\'�\�{�\�g�x)\�j\�\�a�\�+�@)\�\���\�\�|)��~��\�U\�?�NU��\�q�L�ɾ��u��\�S)�\�r�\�=\0��:-��;鼀{]\Z��[�/�B\�\"Q{Q;Z%�<\�\�wY\�\���1�E\�o{\"~\�+��0QP\�[��-�~班%���B�γe�鞅�ԯN\�\\���\�\�\��ޡ�R\�j ��\�%�d\�p�m5%�\�)�:k�Ա\�Ҧ��8G��)�\�:ņV�\�ov�V\�@Ba�\�\�\ZV#\ZC��{��+E4q\r�\� B�\�ϴ�1\rE\��:[BI��D/\�Bi����&���y�\���6�9ý�Ǭ\0�\�}\�\� �A=�\�[nn&3s�77]�\�ӽ���{�\�b\�\�AxG\��{m��5�\����<�\�\�<\�\�>\�\�\�3��\�ɴNt���\�Ӑ�\�\"�\�X՚�rgzWr�OL�La�5�\�Up���?l5S\�ID�m\�0�O��3��5L\Z5�\\\��\�)װ\��j@NwFd0\�%,\�ee\�T�\�˗�G\���\�t�Or[ݦ\�j\�Ӽ̛A�c�-�\�;\��\��V��e�Q\�*��Ѓ��һ~\�6γ<EΔ\��3\�Ҙ�H΢��Zp�\0�\�01J	��&\�֥�餂\rO,\�E!݊/|ah[�~e7ꜛ�\�|�5h����X\Z�l�.F\�*\�\�8M+u���\�y\�v+D\�\\W�׆C<�o���\�R4\�\�Uu�F[NW�8I\�~\�|��\�\�u\�?n�Ym�\���\�fH��R4[�D��`L��V\�1$�I�U�I�E\�|��\�L�\�K���XRUj\���	]&${��ZQ<./7�j�C��pF<9����@��^O0\�@�i��\'���u��=8�vΡ3\���\�\�\�L�X�(UC�\�\�\�\��΁\�c\'�\�h<�/�wD�L�ȳ�\n#��4\�!\�]<\�\n\�u�\�i�\Z:Ā?\�\�\r�نd\�4F\�_?1��\�zM\�\�\�7d7t?�\��\�ad��_\�w���8n81�T\�к�jk�7\�\Z�ـHJ\�\�,fj3S�/ʮ�gD\��M�c��:\\��\�3e\�`�K\��~6����Ǟx\�\�!\�\�jW$�f��ؚ)3[\�\�,\'\�2�\��*٤��4�Zp�\���<K\�DR\Z4���\�X*B��\�_��;s�M�Y�\�\�ζ�I��\�\�ٞ&��\��T�ƌ\�X�9�\�\�A�\��:\�b\�\�\�\"a1\�픾�x��?\�9\�To^h{�l�\�\�ke�Z�VƯ��ke�Z�VƯ��ke�Z�*\�V��\�F\�\rnY4��\�?`@3\'�\�6l�`�#���rG��\�Ãǈ\�\r*Ԕ\�V��۬���F��JǛ�0�٭e�\0�⩹����+ӱ{\r\�[\�w&�\�>\�\�ɡ\�\�86\�}�\�X��\�\��:ZX�\�Cx�q�\�c6\n��\�m\�?�`�\�\�\�=^��t=�3��ϙ�@9\�w�\�\�\�2�\��\�\���H[�?h�9�\�\�\�9�\�.F\�~\\\�UN��j\�\���i\�1�,񸝯S��R���\�<7K��\�ssSB\�K\������P&\�\Z�\�G	�Z��M���\��r���w3\�l]�\�WP/\�~\�_)��A�8��6G���i\�\n9�؀5�\����w�u�\�\\\0�,Qbc(��o\���Nh\�a�\�\\��\\�SG;��\�ID\�F[_t��Y��\���p�e\�sI(\�\n�\�Wm\�XL4��[�1k��\��\�-W(�\�\\�aj˒a�b[Vd0nHo]	\�\�2�ı;kt�\�5<�q�e��a�Wyx=kl\�J�\��\�Δ\�Ϯr<}�J0s)\��O\��\�ic\\B\�Ėl�\�O��G�p����\�x�\�\�1%]\�\�\�F�\�Ըe!�l^ޑh\�\���;=\�\�r;]`\�q	%7\�\�F�:�\�l�a5� �\�VI�)ʵ[�c�|�@*�\�Q\�,�XY�&�Ǧ\�pml\�4_���|o�S7z\�j+/\�\�Q_���\�ٷrM��6\�m��C*������5F{�\�\�nx��\�y�v�\�T\�\���\�a�<��A\�c?W\�0\�[\�\�\�B���`	fʒvЌqiz�O4a-X	�8����gY�K�\�2h��\��Y^h\�.yi��\�]\�P�d��e�\�Ŧd����IUQ�\���?�:(�r�B�\�\�P�\"f_*\�#`6��D6�K�c�Õ�\�\�n�p{ik�K2��ܮ�=;٣\��d\�6X`\Z\'��\��	]\"��/u�R�:\ZA����$�v!�6�\Zr#�)X�Я�\�ݔ�uH\�\�J�_Z}�\�\�ݳ�d�;�\�\�2\�s���\�2\�ӑ�\��W:�_$R�\�m�\�e�\�$K!p\\a5b1�M�7Vr\�/9�J4X\����XЃ\�\�d\�\�\�\�3�\�+\�-�\�m����\\�%i\Zo���XR�\�z�Nswt	K7\��q]�\�KhL�|A֪�ye\�\�Ϣ%�\�&��B�~\"$`��WL{�\�˶G/\�\�q����⢔�����ځح\�e6��r���nu!\���d\��M~�V�\�z\�}<^��Z�\rfׁ\�[�����\����Lmb:�}/\�\�.�p-�&\�w͢p�YXHV|�8��\�\�aޛ���D�\�\�\�\�\�\�Mc��J<�\�\�[=w��}��^��!\�<�1\\��	\\D����\r�d\�0'),(17,'4_327c2af004b59b7f',1721648609,_binary 'x��is\�8���+T\�l?\�c�\�`\�\�.\�i⦁�\�ȶ\"\�re9	t�\��I	\�^f\�Xz�ޭ�p\�n|K���\�1\�@k\�F��v|\rV�r�\�МWG�Cwpv�&b���C�\�-�Ě\� 8h<Ό��	\�)--�^���J\�Q\�wBStG��\n�\�3aw��\0ys�KHG4N\�i<F	aID�`(~\��+�\�(\� ���,\�>A��ب�cPi&?O8��;\�o�)G\���`����	\�\�\�c>aS�\�\0E\�\'q\n�,\0v\��h�����q�ϒ9�\�@�m\���Y,#>e���\�A����\�d��ńP�8_\�[P\�.&<�c:q\���S�Hgp\�e��\0�$m��\'��\��\�(\�:ط\�*\"\�\�f��\�j� 	��#�r\�\�`��6&p�kh\�kxؽ��Z?��;\��X0�tr�^=N@o\rZ�_nNӖJ\�#�\�b�j���.\�\Z\�W��P��eB7��\�\�\�\�n\�~��\�\�\�\�q�V�ľԳ�͔;0�\�\�,����JX*4e�\�\�k\�i\n,�}\��f����*ӽ��\�&��r�\��U9jA,J\�k<K�/a�\�bQD��8\�	W�(2�-N\'-R5��^*%?�\�%\��B˴K\�jP-R��\�!;D\�Dۡq�	�[bB�\0�\�2�v���9�/�G�T@\�~\�\�-�2 ul\�w�<�>������ܫ\�\�?���S[>E\�\�\�;ˋ\�\�ӥ>�\�\�e\�\\�G�)��c�\�O;V�v�ߏ\��U\�<?��\���|���xz?F\����ܙ��?ݯ�v\�]0�\����\�p⽽��y�6p\��\��!E+�٤�*a�\�+�]�\�A\�Z=\�v�T�\�\Z\�\Z?o�\�H�L�q�{\\P�>Z\�\�\�\�\�\��K�A�o\'\�-\��C�{�[O6}���D��\�\�\�\�8�rq5v{x��\��@��C\\��6����r�D�JŬֈ%���\"�c;\�62JeѤؾ\0��\�ɶ��0s+\�L0�\�@s\�PZBq��ܲ`S����M_�b��T\�Q{)�2A�h���\�\rɟn\�6�55$�Gᚸoi:��{RZ�\�\\	�E�gY�v蛿U�]�YI>\�,K6\n\�vq��G�-|��ɻa�-�p\�\�.��4�񊚓��\�Zk�\� \�uC�\�q���\�IOj�\�ev\�\�\�q����M_֯��\�\���x̳G�(�ˋe\�o|\�\�_\�k�/*�JX\�7\�\�ϣ\�]ןw݁\�?\Z\���\�ioz\\\Z�\�\�`z\r܃�\�t\\\�\�X��wtxک�]s\��&\�Eo:X���MãnK�����\���Kw�\0N��c\�t���%�&#Oĺ`,�0�9(\�\�e{g�J�<��\�OS\����f��4k�(��\\�54y�m\�!I�p\n\�g�rk�y3�q�U�}y\��T�\���E\\e�3�<\"<\rn\�\0���z�-_J	�\�\�\Z�\�w�r��N\�s��u�}�j��\�XL�=�y:�\�b��|\nI��̃\�x�o�6dcu\�/\�\�4}c\�\�J�V*�0�U�\�\���ņKO�Yr����8\��\�V�\�P�L!5דV>hI�bC\��\\\Z���Z7\�Ʒ�T�!#��\�r>�rX8\���H�%�\�r��\�0\\2N�\�V�\�\�\�g<X��7��09)Q�\��<�5ԘI\�a\�#�<�ZѪ�\�U\�*�R@\�7KV�J�XT�!s�8]\nG&\0\�\�`T\��\��d�'),(18,'4_a0675acbbc656b28',1721648613,_binary 'x�\�io\�8v�n~�Ƴ�e��\�I��L\�Ʌ\�\�`Pm��E�H%�\���\�{<$٢۴���@ԕ�\�#\�\�Cd<\Z�&ƃq-!K:ga\�\rwߨ��ǒƲo�~4��pz3����\�[\�utrp��y��\�5\Zװ���\�����5�\�V$T\�2��\�\�\�z\�;��lń�D}�$�\�1\�O4��\�o<\�\�\�=���,^z	\�ID=\�=�\��\\\�\0�)�Oh\�	���&�m\�\�0�5>��dM�x�\0�2\�Hm� �D\�!\"��7} $]�O�C/b���8\�\�\�?\�^��x�I\�r%�\�h4���\�\���zg\���`<nSZ\"d��,�R\n$�d�0�������<]	t�TF\��L7HЀLĸѐ��wy�l\�\� _-\��qv1�<G�a;6�~\�k|\Z:�f{A\�as\�\�[�\�!�%�:��})MN4�N\�\�\�:\�]\\O.?�~3����\��Ŕ9\�\�c�\�w��\�Y}���\�\��\�\�ur\�\�x\��p=�\'\�_�w�G��ǵ�S�q\\[�{x\�\�\�\"i\���h\rq�?�܍44\"�\�z�v�5�\Z��\r���\�|9�Aތ����ͧ���\�\�a�݄�6�I0\"a�=u:\�~\�귃���!\��?�\�W(�\Z���]���\�\�\�\�\�ߌ�Hh\�\�I���ͦ�1�mc\�Q騕g�X(6��㚤\�R!�\��\�;H\�\�@�,�A\�\�jd\�\�\�\�\�(�Km\�:�N��\�\�[\����\Z\�G�sp\�@rl�-YD��[a\�p\\\�Mϳ8�\�\�a�q\�\'W\�{H%>�~\�Sz��s)dJ��I�ŵ7�5O7�\'=\\�)�f\�\�{8O�\�\�{�%2\��\�ŔG\�\Z�}53��\�?a�� Jt]\Z^\��\�#<߿�B\�T��\�\�L&.t>f�\�P�!\�=�}�)$X\�;kF�+Ε�Z\0��f|�����|\�#Jbe\ZM\'\���)\�\�\"^\����	�9#K�\�}�>\"\niPE��dF,8\�\�UW�\�k�J;\�=$��	.����$�:Z0\Z�F�\�\�\Z_߼W���\�\'\�as�i}W߆�[�@q��\�O!����~,yZ\���Ƞ�b|��4�V�#MSҊ\"G�\��@��8[\'rsɄ�\�\�F6Q�\�\Z:\�*���lq�EQ�����4\�t��arS��{pS)��*\�7\�a�\�h\�\�Ҕ���q��[\�4[��o\���J��\���\0v�L�L��\'c���\�qT\0+luP\�U�\���+u�\�ح\��˘3|t��ThF�@���{\"D8����\��EqF\����K��V��\�^�],�$b��\�F)&	\�J\�9n�2��	���\�e�XIX\�\0�Xj\�{\Z\�t\�X>��:\���\\���XU\�\�\���rX�V\�\��\�t \��Kղ\�)(���Rc�[P|On�\�\��QG69U\�\�H\�TrɊj(o�\�*�\�FW�\0\�\"\�]�\�FE�۝�4�O\r���\ZsV�;\0�\�BUP]W�;m���Ǟ~t\�\�\�H*�:W��3�Tvh�8iP\�\�(.�)O\�--��jz��=ze\�{�\�f\�,��\"1C�{�\�\��\�\�c\Z�\��G\r�1�%.�	\r��\��\�͠�U\�\n T���<�\���2g\�\�~lg%�̏\�\�\�J�@A�\�U\�`hG\�\�`�\�М��\r���I\�%�vv�@7��	�@�)�8��\�\� \�\'�v�Ü�,��wI[e\���A\'��YS�N��\n̅\�O\�\�BpM\Z9}��-��}F\�r��w#\�(\�J�/=���S1�A\�}�t\�ϓC\�}\�\�\\��j��\�xu�|���\�p{\�a`�M7\����ͪ\�U�*A@\�X�\�t_Y\�\�\�\�Tʡ�\�\�9l�@)%O�%\�N:/\�N�F#�\�\��Pƻ�\�^ԎRɂ=O�z\�\\ww0�l�@Lp\��랈_\�p\nF\�(L%T�F�vKa\��ck\�/.��~��2\�7������Ks�^\�=�o��;��K[\rd<P�d �Lu��R�tJ�\�Z0u\��4i%)Α`nRH�N��\�\��\�\�\�Ӑ \�Ec	bΞB\ZA��zij\�C\Z\�Ue�T\�\�O�\r0\r�\��:_BI��D/\�TV\� �5&\r��x�`��61ǽ�ǌ\0�\�}�\�0�C=�\�[nn\�s}�77m�Tӽ6��z\�ba\�Ax=h��6Qۚ�\�\�k�n�\�ϸ���r\��\\\��o5�C2�ը$�E�A7$l��\�3V���ܙڕ��\� Xd\�}�\n���f�|\�\"\�\���u\ZaW��I�f��kX�Z\�j��^5\�\�N����%5�\�*�}����\\�b���Il�[�\Z\r:��y3hpb��q{�z~b�ި��L4�]%\�!zp��j\�\�ڄC?��S\�\\�\r_0�,�8	\�<,���p��\�Yi\"l]��J*\��\�B\\�RP�(�\�F�\�Wu\�.��\\o$\�\�A��Ĉ�\�\�e{�1BU�n\�i\Z�;̵$\��\�a�[!\"\�U\�z�9\��q�\�[�,E�̯��5\�r�\�Jr�+\�\�\�\�xǭ��q\�h�\��e7\�@jѭ���قE \n�ӕ���� \�\\���M�6b棷`�f��)��K*Km�~A>A�\�R�iŮV�\�\�\�\���\�\�@\�\�O\�\�\�g\��\�Z\�Y�\�\n�\��}䁟\�!�xL�kP��\�\��Ѭs�ᾈ0w0�g�GbE�����&N\�\�w<�l�8QG\�}��#*Qd\�0A�T��\�\'��r\�\�#�m�j�ָ�B���\�\0�m��1XQ\�6A\��ِut\�P]8�k(�^̶\��>�AAB�p~9\�\�o\�\�a%\\\�JC�\�h��Uv\�(+�fb!	*�Y\�\�f.!U�����1�M�68\\��\�si�_�7�]�y6��ܥ\n$�#G(\�\�b´�t3�Blͤ��vwFq���״�*�����\\p.˱��7K�DP�4���\�X%B��\�\���:�AM\�y�\�\�Ύ�I��Y\�\�$��D�Ѝ�\'EcF\�,��Q� ��|	a0\�Tt�A�uܱJ\�B�V[�\���7\'��\rE�\�\�\���(~-�_�\�ע��(~-�_�\�ע��(~-�w�\���\�F\�\rnY8�Ix\�0�\���k�A0xǑ_B@��B�v�\�qc\��M\�\���ݢ���5�U�\�}B\r��\�\�2��B�D_�S�\�V\�ؽ��\r\�;�x|Iid\�\�i+�q\�nyq�yδI�A�g�����P��h\�f~ĂFA\�0�\�-�\�\'\�gm�\�k��\'\0��\'R�\�9WH =���\�٣Ya \�_�u�*!\�{e2���7\�\�\�8�\�\�h�O*\�eʩ4:�w�\�J<d\�\�$OB)s9\�\�\�\�B\'\� ~n\�`Jhz1�s\�u�ʤ\0YC�� @_k=�\��8Xi����nƝ�R\�\�\�%ٯ\�\��\�\�\0g3Ra�\��3�m\r��&派��\�����\�2\�h\�k㛪=�SZrlӗ� ͩ��\�e�x�By�\�\�gU\�|h�\"�\�o�\�4�b�\�닶�v�N��[�\'kV�\��\�-W(-\�l��\�ʒa�b[Fd0n@obU�v�H�Ȟ0\������(�T�2ɍI�\�\�^ʚ�R0�\�\�I�\�\��U��nN�L_E4C��Eav\�\�S.�jbK�S\�\�|\�\�E\�\�U!,/\�J�QLI�&�6�Q\�:\�n\�G\�%�˛\�{�\"b�uGn�\�<6��\r^�B\�\�Jó\�,\"��V�\�j�۔G|�6�$\�ˤ^\�+�RY&5Ǥ\�dMT\�_���|_��6�\�j+#\�\�Q_���\��ײL�~���\�\��\�\�_\�\�И������H5��~\�\�\�ј\�X;�Y,�gqH\�g��bk:\�Y}\�\���{�L\Z\��1��@ѱ\"�y��.�km�E\��\����\Z\'\�\�?�e\�%�\���)g�P�����؉\�\0����*�����gQA^h\�uA\��\'~���L\�#`6f�D4���\�Õ��\�n\�p{i��K\�\�Hl\�\����Q�\�Y,n,0�\�\�\\���.�\���9@�\n� |E4��2\�B\�m:h5\�F\�Q��_,0���. \�.\�u\�#?�|�\�Q�oR6\"�|K\�e\�}���\�2\�ӑ�\��W*�_\�B��\�k\�0�3�@\�\�:Ĕ`��o�Č_r�h���B�\���é\�ۡͭgP�W\�Zݛ�;F\��l�%Im���\�Y\\\�j�Nswt	��t�3�J\�W	�	\�/\�Z�1�4��Y��\�Y�մ����	8�\�%+&�=\�\�\�\�ދ��/)\�F\"yZ\�CF\�\�_��\��lW\�\"�o�\\�r�[]BXF\�!Y�mS��|C��\�\�/\�X�n\�\� �Va$e�X��\�c&���NqG\�I7u��}[îN�]��aV� +⹵��z!?2����\�ԶN���\�{�A�\�\���Λݣ\'����\�O\��go�Jd�Y�\�]\\q�4���'),(19,'5_d97b739857fac45a',1721648614,_binary 'x��W[s\�8~^~�\�\�\�κ�\0\�f\�I��] 7-�F�e�Ķ\\YN�N��\�@�i��f\�X:}\�\"\�n��\�\�F[\��Lh�uh�\�Q3>KI��\�m�5\�\�\�����F�H\�^ő(\�鴫�T��\n�\�I��ȏ0ω\�j��&pT�g��*��\�\�-�r*�ό\�N\�\�,0�\"\�4\�(�\�e�e1A����g �x@���XFR�����f�>NaK��<\�8!��_�R*(�\�9�9��\\�\�3\�\�\�5\�<bW���O\�\�E\Z\0\�x�\�8>��\�\�\�>\�\�N#��V��ۦ]C,\�V����99e)X\�Ɇ0��P�8_\�\�\�mJx˜�!\�	 �\�\�\�\�+\�	Y\�61\�X�\�S��\�o\�TĤ\�/bA%j� ��\�-ʋ$�|\�%[��S\n�t�)�ű`\\CK\�w�r��\��\����s H��\�\�\��Ѡ��5\�\�<\�j�tRo= !�#\�ѥ��\n\�\�*�1��B\�\�{��Z���i�_�|�|e=�\r���\'�/�\�\�\�̅!\��\0�!�C\�\0��\�BS\�%KJJF鿥�t\0�2���\�\�%�BQ�������M������R��\�.�$>\�I\���\n@ǄK�#�q$��\�\�<\�V\�\Zi�\�V�n��\�5l�{^ն�V���\�{����\�94\�\n�J�\"\ZP\\�!�ӺO�j��i2\�\��\r\�\�\0-\�-�.��G��g�\�~|=��\�??n�ч��x�\��\��\��p\�\'��w90G\�\�+6�b1�:���d�\��U>�80Ϗ\�<�ȇ\�\��\�G\��}\\��/k\'W\"^\�7����\����\�7��7��??i�\\v:[\�Y�K�m��i\�z�G�u�Uo5�ƍf�[vծ\��j\���@M&��RpʡdrAI~�ʷ\�_&:��Y�����̄n-笿\�\��Yg�Wxk\�\�zHIlMO&~�9ԚS�\�+\�\�]�xM�Ð�!�*�\�\r�);�&i\�Ր4\�&�В0@9�a�0G7\�Q�`d�.`GP�\�\�F�n\'�╵kU�d:M9+��\��\�\�\�#�~5�ɪ��,\�K���\'\�p�R\�\�ׂ���tI����4\�0d\�d[��\�\�kC�\�6^\�S���\��\'��զ�q)G�)}Ku�q�\\���~<X�\�\�g�\��\rtp!�\��Q�\��\"\�)\�\�̃\��<�\r�\\\�c��>�Ÿ���Ņ �S��M$z�\�\"I \��ɬ���\0�\��r\�NDv��\��)�^����\���\��\�\���\�\�\�\�h6x3���o��G�qr�����;���\���z>Z�-�����\�7\�\�h\�^\�Gə��\n�\�\�\�3\�\�#4\�u1qR�����NՅnɾ�\��.�=�/H3	\�r\�ۙ\�R�,KK�\�\Z�x>�Un���N�ʐ�~Sk)��\n�)��lƩt\�\�\�y\�%��E\�\�\�\�\�P0`��\�:Fi\�nkW��;�\�3l\�\�\0O���~\�V��B\�	7\�\�OMrUϜ\�\�4t��C\� @�\r@L�=�yɼ1\�I\�3\�\�i\�A\�c�\�7�BI�w�/㋫��\�0\�F\�6��T�\�7����U6��[��u�\�B$\�)�\�VuJ1u\�}a\�J���\\��\��Z�\���;�\�=�Ldh\�Ske\�\�\�n\�\0��4K���f�\�^>C����q��t\������\�1\\�n(�y�\�\�\�=i�;\�!�t�$�=�հ��ZsϪ�\n0Y��3\�V���m+J��V�x�/-�m\�r\'��\�\��4ݰ\�'),(20,'5_7d594376c50f9749',1721648618,_binary 'x�\�;is\�8����Wp4�_�������D�\'\��*[\���\�U*��$\��%@ۚ\���\�\�AB\"�8�\�[eU\�!\�\�@�o$\�\��w1�k)Y\��joظ�F��<�4�5xk���q\�觓\�\��7��J�\�G�_�dy\\�I\r(�\��;ZSI�pE2A\�q-���0�~�׃������\�\\0IxL�\�h\�7p\�	\�KD\�2�,���4��䁀�\�O@�p����Ҁ�4	ϳ�\�vpI�\�\Z\�2��O<{�N�d$�7A�Q\"��#\"�Yp�@H�\��DA\�B��\�I�_�>5~��8t�y�\�\�r%�\�h4���\�n����\���`<n3\��\\Q��P�G�\�SB3Ü\'���:\�*#c�\\7HЀLŸѐ��wy�l\�\� _-\���yz>�8��\�0\Z��N�\�!�Q�;���\�5;� �%�<��{)MA4���]����\���\��jr�\�\��Ԥ\�W/�,H?���׏?\�\�\�w\'��\'\�^�������9�6\�z��kG{Xt\\�� ��ǵ�G��\�#� y,\�X��!\��Ϣp#\r�Ɇ\�ެ�\�\ZB\r�\�\�\��S����hF��_Mgw�\��\�a�3\��A7���>m��=\�\�\r���\�j�C\�P��|��*{�k���\�\�\�\�폛�\�\0��\�5\��ٴ6f�m\�:*��\�4Ŧvw\\��Y*�7E\�\�yI\�\�\Z��%\�]���\Z�0�u;\n�R�@���S,,���Cm����Q\�G1Є\�KV\0�\�\�u+l�k��\�Y���ځ<�2\��\��\�Rɜz?\��Ϲ2#i�m�\'�7_4O\��\�z�n�t=\�u\�\�2%�\�\�dI��̳�vK1\�Ѭi_\�D\'d�0\�u%��\r/\����\�\�S!�N��\�\�L&\�u>f�\�H�!\�=�}��#$\�\�BX3]q�$\��،5\�<\�p5\�<�$Q�\��\"��H���.r\�%�n�j�\��S�\�\�\�\�c!��U�jOfĒ�\�>Z.�B\r\�XSU\�a\��\�LpI\�\�\� !�\�т\�82�T\�\���\�B��\�>I��L\��6,\�*d\0J��-���f��\�\rh�c:v\"���M�\�B\�\�{-8\�4\�XD+���*�\���\�t�\�\��*_\�\�\�[k\�A�t��\�U\�\�\�ӽV��\�O�\�\��O�@>�x\��śϢ�wK\�ZO|\�\0?7\�k�&FU߆\�[�\�%\��k\�����\�o;�g\�`eS�\�V\�꠨�&\�1N{\�t�\�ح\��ϘB3|���ThF�@��Zx\"D8����*�E�F\�\�\���U��\�^\�},�4f��\�F)�1	\�J\�;n�1��	�C��%\�g�XIX\�\0�Xj\�{\Z\�u\�D>��:\���|���XU\�\�\���qX�V\�\��\�t \�\�!��e�WP�9��&\� ��J��\�D�\�\�.�lr�\�Ǒ��䒕\�P\�`�U\"���\��E\�C�|��\�&�;)i���\�1lo5�tw\0>����*��j�\�s;�=�\�\��|#��\�\\A�\�\�N١=\��AQ�ע�\�f<E��L«\�\�B�蕥���Q\�{Eb�p{�\�\��\�\�S�&!�<�G\r�ޒw)\r��\��\�͠�U\�\n T���<�\��;�sg\�\�~lo%�|\��ԛ�8��p\�U\�`hO\�\�`�\�м��\r���I\�K<vv�@7���<��@�)�$��\�\� \�\'�vT������wI[.pOƠ�}Ŭ)K\'{\nZ\�B\�oo!�&����\�ҖB\�>#o\�G���1�h\���Ǟ~�\� \�S��|�o�@��<y�\�7\�>\��ŋS�����\�W�\"RZ$\�\�%���R4I�T\�7��V���\�b�Fw�\�\�VoǧR\�\�>(`{<\0J)yR.w\�y	��4\Z\�_8\�<�{Q;J%�<\�\�wY\�\���1�E\�o{\"��\��\�Q��P\��\�-�A班%���B�\��e�龁�ԯ\0V\�\\Z��\�\�\�\�\�\�~q�\Z\�x�v\�@0�>\�\ZMe�\�\n��`\�\�ti\�JZ�#�ܤ�d�bC�\�4�\�a��!a��FbΞ\"\ZC��zij\��\"�\�Ue�L\�\�O�\r0\rEnD��-�$N\�y&�\�1\�\�}�I#&c>Xb�\r\�F\�p/&\�\�1#��q��5LfPO)��\�\�d����\�m�j�W\�sT[,,:�\�\�&j[\��\�Z\�\�.�3n\�\�\\�<\�{�[M\��L\�D5*	oQ@~\�\r)�-b��U�np;S��3uB�D\n��\�\\���\��a��*�8O\"�lz���|\nE�Fؕ�fR�Yc\ZV�V��=�W\r��\�\"�)/aIG\r+;�\nm_l�\�<\�\�Ql\�6>�mu\�V�AO�h\rN\�4n\�T\�O�\�u���F��\�:D�6R\��]�p8\�c�1�j@\�\�,OcN\"1�\\5\�v	v\�01\n�9akgb*�`\��p\�_JA��\�K_�V�_\�a\�E�s��\\��\r�c�\��=\����L�\�4�\�=\�\�z0�\�\�V�ȀsU�^i�|ܼ�\�\�+�h�ϫ\�l���΁XI\�~\�|]�\�\�u\�?n�m��\��\�u3�\���\�,Qp0���u4IfBe\�m\r���\�C4\�t\�\"�\0�-�tڊ��b�@�g�=Ҋ]�(��\�n\�B\�tAG�<�\�\0�\�_�k�\�f-P+,�\��9P\0~�D$\�	=�m@��/o���3\��E������<\�<+Je�P\�\�5qrz�s\�ydØŉ�8\nO\�\�Q�\"�)�,�\�\�9\�>\�\0-�.q�h�xT\�\�\rb�\��\�lc\r��ҘB�)��\\�|�&\�\�\�7d5ToF�\�\��n���� ,XC���\��qq԰\�v\�P\Z2\�kh\�5\\�\�LX$aH�`s3��I\�\Z�C\�I\�6\�|��ȠmW\�>�L��\�jCG%�ͬ8�q��$�\��:���mK\�U[3�#g�\�\���\�\\\�Y\�@\�b�JNq�B�Υ\�\�$A1t\�h悯�`������Iuf㛔3�\�\�\��I��E\�ٜ)��\��Z\�Ɯ\�X�9�\�A�\�\�j\�`ܪ@m\�a9\�k���x�vA\�L�k8/��\rE�\�\����>~��_\�\�\����>~��_\�\�\����>~���\�\�/�W���+\Z>ܰh6\'\�	���O\�L��\�\�G~�\�\n\����\�4�S�\��\�v\��f��Zoj�\�世�i\0���\Z��i�X\�\�Tm{\�\�ē�Hc+�N[\�\�c�\�\�#\�3�M�R<��\�xa0\Z0U\�\�M>�Y\�(i\Z���E>���b���x\��\�\�\0_�D\���3e�2\�\�zÝ=�\�2������G��P&sbF<[g`2�-󡅽by\'͵�N��\�\�}\��\��:\���P\n\�\\Y�fi�t�ya\�`Jhz	��\�u�\\R��!H}����ڔ\�	X,:xHPy\���{P���^ ����X\�/P�p6#e�XG\�Ės1kb\��K�`n/\�^��\0(\�y\"����2��\�#zG��6}%�2�J E\�P֊�~!�\�jm}Qe\�g�+�\�\�x�V�-f�0+�^_�]��\�N!*�\�۳f��\��\�{\�rg%g\�\r]a:���m���!�NT=4��E\��\�\�\��\��\�9�20�IaLj�yQ\�\�U���73��=_<\�*�\�}��\��fuJ�(\�N{\�Pl\�v\����y��\�E�+�wR*\�\�҄`Ц2\�B�\�-��`sw_�]boCP�B\���n\�\�t��\�&\�L\�\�\��:��#0u�Q؂<��[�!f�\�n2�\�2BX,�z���l~e	�Ԝ�Z�5!�ܼ~���Kept�\�Vz($�\n�\��\'�o��z�m\�\�b+�Tz;{yoCc�\�f\�#\���_G\r�`\��\�\�\��\�\�b�<\�\�B��?[\�0\�%[\�\�Ϊo��`=\�ҐvЌq�z��a-Xetq\\�K\�Ϣ����E\�xk���8W�\�8k�t\�]\�Hyf���7&\�ew\0��_NUQ\�\�����:(	����\�b�-F�#�}\�h\��15$�qIX�\��\�\�vӆ\�S�\\�9�\�v\�\��\�I\"eؾ3+\�m�Ơ�.6w��?�K�A��P�*CE#_1\�>eL�x�Z\r��\�,H\�W�\r쿮�\�:��u\���\�/�\�fw\�\����\�*\�\"n�9�\���p�\�\�Hf��K�\�\�!�\�\��՘\�1K!p\\bQb\�1�M\�gWb\�/8�\Z,\�\��Y����p��xds\�\�өԸ�7\�w�\�\�\�lK\�4\�\\A=D?����\�Ν$\�n\�Vp�\�\r\�����P�����U�R\�ߟFKj�uZ\�J�+���3�]�b�\�\�޿�?\��Bn$�gN2z\��`|d``�t���ʥ�ͺ\���e�W��\�7u�;\ZB}��6�x�\�jup;W/ѷJ#q�n`���Lnbz�\�+^�;�\�\�5\�\�D\�\�k\�)fa�mY��\�\"��y���w�#3��/�:�\�\�g���nFk\�n��\�~k�f�|\n �~�� �\�<���S��<ΣY\�\����׃'),(21,'6_c26259705a63f18b',1721648618,_binary 'x�\�X\�s۶�\\�;͇7ex\�>;�+n�$�9\�h@�`S��\����\0uW�]�3�\�Eb,��Xbת�\�I�\\3b<�C\�uV+\��ᑤ�4୘ϻ5��\�w\��|@c9	[���C!�FM�F�\Z�\�o\�\\�	��1	�M#��Y�\\\�i�\�O�1K\��&)�ǘ\�QA}\�\�L\�\�#�(��`\�Ŕ\�!E���\�7 �y@�@P�xL#��T�2�QG���z<xB︸�L2�3D\�2��O�\�T���Ř_#�(d�F	\�\�\�Z�{a�O��nmj\�\�`��DN�Z1]\�- l+{�>L�����tM�\�2�\"\�-,\�.�\"�i����	� �\�Q`\�ـd�\�,K\�b�\�\�\�ʙ&�7אL��uNŭ2��]\��ZU\�ʨ��\�\�4F\�Ē\�!o\Z\�*:\�\n�\�հ2��g@P@g�\�\��\�-b~\� %\�\�$i\Z��>\�wӧNC9㩩\�9T�`�RF\r�Ҵ�\�\�z\�\'2\�r/�|�|n9�퐆Z�Q\�l\ZX8����\Z7l �a\��_1O��=�h\�p+\�L�&&\�iX��\0�y�d�MN�w\�/\�\�3�_��M�KE|�\'q}��3�T(�#�	�#q2nVKE? e\�\r���\n\�r\�\���\�J������5@\�@|�\Z,�S�2���\�C�\�\�N��\�V�\�\�p�H\�\�\�~HA�\�\�{}\�.�\�\��}��\�N��[2q\�Y�*�\���\���\�ާKr6�μˮ=�|_�Y/���\�c�ǎ\��9�=|\�\�g\�𞴧c�\��\�}]]�\�U��p|-\�\���2�\�\�\�=g\���+�\�j\�}�\�\�<\��;\�Y\rN�MJ]\'(Wi\�\���\�j�Z�x/W\\u�n�i\�@\�?�\�p(E�@>;��d4Yy\��ۿR.뻽�\�js�dLɍǧ�3\'~q~տo�f7\�n\�s�3$\�\r��\�ᐤB@R9�l��=<��C�Wu\�[�\�N(V<L|R��j9���.��7 侮\�܌k�Nﵱ\�:�4�\�ֶ\���ּ*I-��ڊ#�\�x-\�l��{4\�\�\�#�\�}\�\�\�r�\�\��\�5�G����2����4,EPJKϲèu�8Yh\�ʔ��\�2M?\���\�3d����\�oN\�\�v\��=>\�\�/��\�\�\�r�\�\�<[���\�\�\�}��\�MK$_Ū/+�����E����,\��\"\�\���\�\���`r~8L\�3`r�}0��\n��\�a\�?�������\�0�S\�\�aZ�=^><)�8�\��\�\�qf\�\�8���	\�\��Рf�\�w\�*R�X�a.�9�.I��԰��0���&X�XT����\�j�N\�\"�T\�Ӧ�ʐ�N\�\��̬���n�\�w.���\\Q�W8,t���\�\'�N`�\�\�\�\�\�>��j��&\�n�\��\�\�n�\�f\�ﲮ;p�g�s\�)vǓΧ�|���v�z\�\�%\��\�\�\n�dWy܈�f��w6Ҷ\�\�\�y22%硇����S����todg\�9����P_�\\?/u�B%�7aۇ\�\ra/����#�\"�t�@x�\�\�\�Z\�~�\�o��\����\�2\��%�\�\�\�\�а\0\�\�v�l槆n9lD\�3Z\�\'_&�\�n��\�4���ExX\�\�!\�Xm5\�f=�\�:I��\�|�ϵ��Z\�\\3��N~s\�v�\\λv\�h�W5�\�YY�\n\nE\�\�T\�M\�Y6;�5j\�-\�t\n\�L�e3kc*�fw�,\"\��F\�\�\����6)C�W\�B\�i\�6\��ϖ�9�[�Բ�\�׃\��\�.\�ד\�\�3J��\�P\�\�B�\nm*���\�g\�t#�Nc�.\�\�uʮS*TJN$�R�H<��b\�u5�\nQ\���(�\�j6*��\���\��\n\�nI'),(22,'6_fe60276bbd382bfb',1721648623,_binary 'x�\�;ks\�8����+8�\�/[kK�ފ��D�\'\��U�2wW\�*DBb�\��m\�l��u\�AB\"�8�ڪ�*��Dw�~\�A2�\�ް�������\r�oTK\�SISY��f�;֎:�M���,X\�U��\��	I\'5�ְ���\�A\0?\�+*I-I.�<��\���\�?�1Y2<љ`���\'�\�8�m\�,\�Y�2ʳ����?�\�:\�sJ�\�4|�G4i��+�V�x��}\��t\�$#I�	���G�\'̓�!��H\Z	�h*\0�Nc��z���\�\�\�3tĳM\�K4��a\�\��\�vv�=;���ͩC\�rIY\�H\"\�a\"O)\�s�\�y�\"\�?���\�ֺA�d&���\�d�u\��E�\��\���\�?O.&�gQ�ߊ	\�wgq�\�D�&	#\Z�b:\�Y�$�DWg�w/�)�F\����\���{C��\�\�\�\�\�\�S�^^\\��� ��c\�~�a^?�0�\�ޝ�ݝ�{�N�\�\��g<\�@O\����9�\�c�\�ZԭQB�8�\�\�=��0�s�N�y뢇h�S�5/\�HC�\�kyب�\�\ZB\r�\�\�\��S����hF�^\\O�\�\�\�\�\�\�h\�	�s�\�\�v��C\�\�\�F/$�=\�i���\�\��\�uP\�\�]���\�\�L\�\�~܌�Lh\�?H���Ϧ�1�mc\�Q\�Yd�	X(6�\�aM\�g��\��G\�$	�5P=K�q���\Z61��[\n�R�@���S,̋�&�Cm����Q\�G1Ѐ���\0\"Ź\�V\�\�\�ւ\�\�\�4\�\�\�a�q\�GW\�{H%3\"\���\���=\�RȜd�o�uZ{�E�t3�����o���\�\�y�\�ߛ,	ؐy�\�\�(�<�\� ��脌���\��D\�V�^\���=\���{\n!��u?8=\�d\�B\�c�;�\Z�\�A\�g�BD�%���f�\�\\I�	0P�k\�G\�<7T�Ռ�T�FËxd\�\"yN6�ȁ�8���a�cN\�B`{����B\�U��=�K���h�\�\n5<cMUi��\�D3���7��\0_GsF�\�R=[\�\��\n~�$\�/`^2�\�\�[�x��(]�\���G� �,��o@K�ӱ\�u_l�\�\�\�\�k��!�y\�bZQ䠄U\�\�)�/\�g�Ln.��\�땑MR�5��Jg0*�_���\�B\�B|\Za�\�\nQ�\0��ރ�=��\�G�\�a�x�Y4�niC\�h�o\�\�x\�\�Ĩ\�[�x���$:~-��=\�h-�\�NN�g\�`eS�\�V\�j���&\�2N{\�t�\�\�\���Ϙ\"3|���Th�@��Zx\"D8����,�E�F\���K��W��\�^\�},�,a�����Dj�\�7\�\�و$�\�\�3P�$�c�Q,4�\r�:j*IR�gA�Q�D,+\�\�\�v_\\\�9�K�ct\r\�k:hgKղ\�+(���Rc�_P%|On�\�\��QG69U\�\�@\�Tr\�\�j�h�\�*�\�F_�\0\�\�!,\�m��\�\�NJ\Z࿧�{\�[�+\��\�i�*����ڽ�\�\�\�cG?�t>\�H*�:W��\�3�\�\�\nqҠ(\�kQ|\�r��[Z&\�\��l!{�ʲP�{̨ွ\"1C8��\��}��)O\�҈\�ɣ�]oɇ�qF#(F�j�tӫbU�\�U���}$�D�3~#\�\�\�Y\�ُ�b��%�}�f%N� x�5\�s[\�\�54\�(]�\�\�B2q\�R��=\�\r,pb�l%\�gJ,Min�8H�\�<�0o0+�\�.i\�\�\�t���5e\�hOA��\\\���\��o\�\�黄-l)D\�3�V\0}���0O�\�\�\�y\�\�G�R>�\n\�\'���\�ϓG\�]\�\�\\�8���:(_}%(\"�E\"\�^r�/E�\�Oճ�}�j�gժJ�8.�i<\�W�6;�8>�r�.�y@\�\�PJ\�\�rɸ�\�K�ץ\�H���\�)�x�܋\�R*��\�_��\�\����-�	.\�~\��]�`Ԏ\�XB5odj�z�?���\�b\0!:[/�Lw\rħ~�*�\�\���v��x����\�@�=�K�Y��C���?�R��L{�.MZ\�JT����2lh�\Z�f�\�\��4$\�u\�\�@\�\�SL�RT/\r��dqLS۠��K]�\���\�m�(0�\��ę\� z!ϥ�:���1i\�d£K���؈)\�Ŭ�p\��a\�\'i�\�)\�SJ�ns#�꣨��a���\��\�C\�\�s���}��Gm��5�\�\�\"�\�r��qs�\�\�\�ރ\�j�dJ\'�QIx��n�\�\�\�1c\�yB��\�\�\rn\�j�r�qk�\�L-��\�\�c��*�Hc�lz>&|5�F\��\�Yk]c\nW�Vך=�f\r��\�	,`�G\r+;�m_l�l=\�\�\�s\�6>�m\�\�V�PO�hE�\�.5\��T�SL0�(\rmdW�%��o�\��6\�q�N�q\�T�\r_0�u�p�i캬�%\�%\�<)t\�L������\rO,\�=�R\n�%^�\����9�Cu\���r1\�\n4HF�%:C��hC�:�2!ݎ\�0R���#\�\�\�c�[#\�U{�9\�\�r�\�Z\'u�S\�Z\�(\�\�:+\�\�\n�[\�//�\�5���\\��n�qբ[_s�ۜ% \n������� \�T�$�M�6���0�\\w\� bF ��J��\�>(&t\�\\�GZ��%\�\�s�\�\r\\\�Yڎy^%8#ǜԚG�Z�\\o+\�c�\0�4�I\�SzRۀ:�_\�OZ\�\�n�s�Say\�y,��ʀ��Oj\��\�|\���؆1��Tq�ڦ+:�E&�2\�Y@�\��}�Z\�!W]<\�\�v�\�i\�*Ā?�\��\�:�gJ1�kG�u�!�丮��pXW,\�L�n\�\�Ȥ��b\�U\�;�����HD��\n�f,ar3��]Ƴ�m�\�&SΨՍ\�f|*\�Y�����\��fZ�8�(\�,��V!&H\�d���.a+&u�j�\�- �,\�b�6U¸�2��s.\�\�\�d-\'��\�J\��ƒ\rb\�_��ՙ\r)RN\�;<;\�?&�\�=gs��I�I7֛\�\�5�>��s\"�\���z\�`ܩ\�hCP9\�k���x��!\�ଫ(/4܆\"ۡ9~}�P_+\�\�\n��B}�P_+\�\�\n��B}�P�oW�/�3D\�%�nY<����?`$\�\'\�\�&^�`���w��BV�\�A\\\��\�\�\�\��ݼ���iF{�Zƛv\Z01i�i\�\0�䙾\n�-��{U[�w:���>\�\�ʡ*\�\�>ry\�wδIuA�g�5\�\rF\�\n-Q�]\�\�K��\�mj��>�`��\�d-^8�t=�=�\�\�TY �\���\�tf��\�G��u�0�8VB�\�dNMnĳ�q&��\�4\�k�ci�\�[��ΰ�o\��3_e9xJA�k��\�,-t�2+\�L	M/�����K\n��\�k��6\�z�<�*\�f\�ں:��d^\"�����~�⯇�(��\�\�H����B�	X#s�]\�{[p{y�\�\�@_�2\�h\�k㛪=�c\�8�\�k�W�dT\�.b��V<���<Vk닪,>4XQ\\�\�6�\�b�r�\�\��U\�\�\0;\�\�\nQ\�-\� 5˸�u�?\�\�+8k)�\�uQ\�*�iD\�F�&U%\�\�.\�H�س7���9J\�1ECƤF�\�^W\Z��C0�\�3����O\�)ʙ��g�P\'E�\�씱\�\\@\�\�l�\�N��\�kᬨɠ�\'�\�\"�.Mm*�.t�ݲ��K6sw\�{�\"b�u{l�\�<6��\�\�X��`y>��H�FOs�xmUb�P�J�\�y\�\�RHQ�P\�T>H�i��P\�Qs�h\�\�D\�6\���\�\�\�G*q�-��B!�v��:<�p:�V�9<|[�6\�\� �\�\�_\�[ߘ��ۂ\��X5��\�q]?;Dcr�v>s�X0\����\�V4vK�\�\��/~/a\���!m�\����(\�Z�\�\�����\�_E\�o\�_EPk����P�\��h��\�]\�@9d����\�rk�\�\�׏���j���?\Z:(	�b���b��A���}5h\��>1$�~EX��>-\��a\��P.Ɍ&b�^�`\�\�2l�\�*s\�`�1h\'暬�\'t��(�[JU\\�h\�+����)o\�A�.6?�u�j���\�\"�\�\�\�\��\�/\�\�F{vM\�FQ\�Qc\�H��$\�`5�H�td$�\���\�\����\�\�vE�ڛ\� p\\a-b\�0�M\�Gb\�/9�\Z�\�\��y�>o�p�swls\�T\�\�A�&�Q��mI�%�k(�\�����\�#�\�\�]�\�-\����w6\"m�{�fe\�+M/�y\�i5/e�n\�A\�\�vي	bOwx���\��,\�\n��H�;y\�\�y�[\�8��\�]�g�U.UI֮.#,��\�,���\�O��!\�gOj���\�f7N�*}�4\�\�z\�!?z��\�\�&�c\�U�ҍ}\�r\�԰�}[/	\'��\�gU\�\�y��xn-\�\�F(\�Aď\�\�h~�\�\��N���\�{\�^\�\��ݰ��r6;\�0T�1��0̩F����x��_��z�');
/*!40000 ALTER TABLE `cache_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cache_pages_tags`
--

LOCK TABLES `cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cache_pages_tags` DISABLE KEYS */;
INSERT INTO `cache_pages_tags` VALUES (1,'1_1af8c169161e4bb0d3230b94baa6317b3318b6f3','pageId_1'),(2,'2_68cd619a38fae14ac3e3d5fa6ce4e15a7dd1a42e','pageId_2'),(3,'2_5ef6365230763499c653425c0c83e707bc25fb6a','pageId_2'),(4,'3_358013bd2180e794e2980752e0ece3d758da253a','pageId_3'),(5,'6_69399195db903f2a0b302d475b28b3717198b4b8','pageId_6'),(6,'6_870cfb5400ccd0b9c34b519340730e81400a1e01','pageId_6'),(7,'3_658fb09c5e00040d00ca934d7afc1558ab619507','pageId_3'),(8,'4_1e6d72b315f14dbd080e4e3f214f6d10ffd46adb','pageId_4'),(9,'4_8285e8dcaf554d1329a6d3524c73610c2ea2b78d','pageId_4'),(10,'5_8a0dd8e8763b3863fad477ef5a6ba2b643ab9831','pageId_5'),(11,'5_c20f3afa6b3c8a08486a619356bcca8e5f2d14b9','pageId_5'),(12,'1_868a5659e30a57cb','pageId_1'),(13,'2_b483c1c60649b2af','pageId_2'),(14,'2_8a67418632745451','pageId_2'),(15,'3_291bce1e98df7dd4','pageId_3'),(16,'3_dd7a6fe31259c838','pageId_3'),(17,'4_327c2af004b59b7f','pageId_4'),(18,'4_a0675acbbc656b28','pageId_4'),(19,'5_d97b739857fac45a','pageId_5'),(20,'5_7d594376c50f9749','pageId_5'),(21,'6_c26259705a63f18b','pageId_6'),(22,'6_fe60276bbd382bfb','pageId_6');
/*!40000 ALTER TABLE `cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cache_rootline`
--

LOCK TABLES `cache_rootline` WRITE;
/*!40000 ALTER TABLE `cache_rootline` DISABLE KEYS */;
INSERT INTO `cache_rootline` VALUES (1,'1__0_0_0',1707728101,_binary 'x�M�Mr\� �\�\�	�\�_�Y4\�3\�(.�<F�\�tr�\�qq\��>�\'\�Y\��\�a\�Zh\�`j�N�{��*-\�\�g��W\�]�_���\�Ė�\�g���\�O�>�X��\�\�f�K�V輭\��`o��8\n��\�a,@�d\�\�\�m\�+(��&o�.h���X�kq\�o�\��y�=�\�\�ѕo#�4\�\�t\�(^|�\�\�\�.5�Vb|\�BvK�\�/�L�\�\�\�-ЁrdSE��\n\Z\n�7\�\�vW\�ά�(˚�3�\���V���'),(2,'6__0_0_0',1707728101,_binary 'x�͑\�n\�0E\�ڲ�\��\�5\n�a!�\Z�\r!�}nKP��nӞ\"9\���*��KU	�sP-Y�\�X�S��\�\�O\�\�0�BXY$�3Z&\Z\�0&�(�\�I��@\�\�IϬ&��W\�\�\Z�\�\�4ʛ��w\�5	ђ\�\��3\�\�s\Z\"\���E��h\�3\�<�Bos�j�z߅�d\�b|E?X�7�\�c\�Dl8�\�䗈l\�&�\�\�r5|��\�\�\�\�\��\�\�E����m����\�\�\�*�:�\�+�ck��l�\'��e�\���Gס�{�ŗ|˟\��\�z<\��yS�\�,\�\�\���	��+\r'),(3,'2__0_0_0',1707728204,_binary 'x�͑\�n�0�_e\�\0ݯy�^�\�Gi㲨!AİUU\�}�4(\�n�iW�?�\�>\n*�(kU	�\0�Ѣ�\�R����zA�	\�#+��E�\�!�e��a\�L\rY���1]o�\�\�ND�&�J\�ZĮ�Qza\�ُ����\�%�^��@d���\'\�tN�AQ���e&\��~�w���j1d&ڟ\�\�c:�욃wGӊz;���B$Ҹ��ܿ�mm��p�i;?:�}v\�*�\�\�\�+�\�^N<��G����\'�덮��{�ŗP˟�\�\�\�?�\���Y���\���&�'),(4,'3__0_0_0',1707728204,_binary 'x�͑\�n\�0�_\�	ڲ_�\\\0�QhD\�jB��ܖ�L�ݦ]E�\�\�\�(h\�j�^(hj�F��\����U��9W\� h~\�^��U\�\�*\�s,h�i$E��3SC�\�\���q�\�\�.�nv6t�\�\�\�/b\Z\�\�I>�y��$j�\n�ªKH�\�08�\�g�Z�GOd\�c�W\�uI\�@\�P\����A�O�Ɨ\����y\�i۩=\�BD�#]:̎�\�f\��3{�X߹�\�D��Mz����d������m]H�dW\�P�y\�~lU{\�\�\�d�����xB��\�64O���p�\�	s���\�]�O��\'\�\�\'	�,\r'),(5,'4__0_0_0',1707728204,_binary 'x�͑Mn\�0���|�$п\�e\�-�j\�\�V<�E��w�\�\�U�mՕ5�\�\��=\r\\\r\�KM\r\�s�h�\�\�P��Zp��\�g\�YŬ�2|��3��3~`j\�r\�-\� ^�%,\�\"a�|׊�Sg9u�1���*\�#�.>Q>�\�\�h�.\�\�\n:\"\�N*�@�\�%a)�\�Χ0HQ\r/�\�\�\�ߤ]PG�\�\�Ot	��\�%\�\�޻�9�\�\��#�\�\�m\���\�2\Z\�\�{*Զ>9����)��6��ة��\�\�\�\�X��xF;yt뛿g[}ɶ�\�l \�÷�A��\��e�;Y\�>\�\�)\�'),(6,'5__0_0_0',1707728205,_binary 'x�\�Mn\�0���q(�q\�P�\�2x\0Ƕ\�q(BܽRG��mW]Χ�73\�)ш��U�\�\�\�B�`4kG��\�T-�z�\�O�&\�\�/��<ӈ\n!\�%Q��j����d\�UD\���]u1x�b\�:\�_ٴөA\�c��MJh�\n�,�UW�0o#p2Z�ˀ�\�\�t�I/��\�%y\�\0�\��\nuNj��Ի���\��\�\���\�\0\�7\�\�n�\�̑��q�z0ND\Z��I��/�L�\� �\�cql\�C\n[�Jo3oȎ�ڟ\�:9y +-`\�\'\�c�Ϝ\�o9�\�\��I��\��%��,\�].�'),(7,'1__0_0_1_1',1724153589,_binary 'x�mU\�n\�0��T�c\�eNAS��\"�:=�D\�\�Z&,�q� �ޕH����v�\�wg\�iI\�$-\�9�V�\�\�5%N\nr/iy?Y��\n�*J����\�\�w�u��\'�\�BvRV;<\�R\"�y���|��jke\�kЋ\�Qr\�h\�0��%\����\�\�o��+\�(\�\���\�r�Ra�\'����\�1h�Ř�a-\�\�`.u[���eѳ�k\�\�\�(�빼�����aLXn&\��\�\r\�\�0\�\�l�l\��XW�4�k�W\�_X~\��\�\�j^[o�\�zQZo��u\�\�\�I\���A\�e둖�w\�\'\"pU.D\�\��\���\�3�\�K���jY/�Ԫ��~\�U\�\�m�\rs\�@P��l�3@�	IÌ����e)f�\��\�\�\�40���\�\�N	�\���\�`AG\�0\�׭×���\�\�\�\�]\�\�c�º\�3A;�d\�\�Ɍ+\�Wl[<��;�Z!ϼ\�\�jU#{�\�\�kqE\�;Xh����\�^#�N<�\��4S\����\�V{4,\�\'p�\�\n\0\�\�0g@\'](\���Y&MFt]���\�\�m`�\�q_���\�5F\��\�����3N\�N/S�5h@\�R(�>\�\�3}�\�\�XlNH>��n3���Yck��`�0?��T3US\�| M���\�	�����Io2��$3\�}�XΒH\�H2:-z�ɝ���\�M\\�Ķ舕\��\�\�\����_O?<\�\�_��\�;�)vH���\���\n��\�R�\�\�X笘\�6#i3\�� K\�o\�)��V�2��6¬\��F$S)�\�\�a��Y�[��N�1OӜE!\�y��\�pD'),(8,'1__0_0_0_0',1724154199,_binary 'x�mU\�n\�0��T�c\�eNAS��\"�:=�D\�\�Z&,�q� �ޕH����v�\�wg\�iI\�$-\�9�V�\�\�5%N\nr/iy?Y��\n�*J����\�\�w�u��\'�\�BvRV;<\�R\"�y���|��jke\�kЋ\�Qr\�h\�0��%\����\�\�o��+\�(\�\���\�r�Ra�\'����\�1h�Ř�a-\�\�`.u[���eѳ�k\�\�\�(�빼�����aLXn&\��\�\r\�\�0\�\�l�l\��XW�4�k�W\�_X~\��\�\�j^[o�\�zQZo��u\�\�\�I\���A\�e둖�w\�\'\"pU.D\�\��\���\�3�\�K���jY/�Ԫ��~\�U\�\�m�\rs\�@P��l�3@�	IÌ����e)f�\��\�\�\�40���\�\�N	�\���\�`AG\�0\�׭×���\�\�\�\�]\�\�c�º\�3A;�d\�\�Ɍ+\�Wl[<��;�Z!ϼ\�\�jU#{�\�\�kqE\�;Xh����\�^#�N<�\��4S\����\�V{4,\�\'p�\�\n\0\�\�0g@\'](\���Y&MFt]���\�\�m`�\�q_���\�5F\��\�����3N\�N/S�5h@\�R(�>\�\�3}�\�\�XlNH>��n3���Yck��`�0?��T3US\�| M���\�	�����Io2��$3\�}�XΒH\�H2:-z�ɝ���\�M\\�Ķ舕\��\�\�\����_O?<\�\�_��\�;�)vH���\���\n��\�R�\�\�X笘\�6#i3\�� K\�o\�)��V�2��6¬\��F$S)�\�\�a��Y�[��N�1OӜE!\�y��\�pD'),(9,'2__0_0_0_0',1724154200,_binary 'x�\�UMo\�0�+(g��nz�(�\�m�,o2��6�#\�鲪�\��\�\�\�-H�\�2o\�כg�M�\'��\�<[\�\�fY҉\"�\����\�Y)Z\�,1\��%`�\\M\�\�\�|\�<�*���g��U�P��e\�\�\�EQ@��,�[�1���\�o\�1�Β�R\�\�\�,͒I\�j��hJ\�y���y�(y��+\�\Z!1ԝ�\na*�­)f�O�U�);^�œcT\�a-WИX\�N\�}~\�$���`��b�\�ƶ>�&dI�.�\�#(&�&<\�q^��^�\��\�A՚u\Z\�0L��é�\�\�����\�<u{\�kt8`\�\�V�pz�\�Ռ�oD\�V�f\'Um!����2�I�\�\�~ܖ9�`N-��q~��\\6;Q��\�B3-()�	\�\��-3\n\0�!\�\�\�V��kL܍z��ɻ\�\�c�,b\�n\�\�o@�T�$��\�pU��a#jd� b\�桵kSDAp:JUh_\"���|\�.Cǎ\�;x�\�55p|h��bj\�ۀ�k$\��U�\�b��o�\�fs�\��\�ݧ��\�Fϯ��V\�s\�.�Oݨ-v�\�����n\�\"!u\�!\�lq|~\Z@5�l����7~\�`\�\"��\�Q\r\�)Y��\�W6\�1ӧ\�d\r�J\�\r\�weɺ\��ba\�}*\�Ź�5X<�p#\�JҕPG`&��\�\nc�i\Z(�0L�\�F��\�t$́u\�<Y�D�\�\��J���_T\�\�zi�9\��\�K}�\\\�\��H\�\�@V�d��LV��\�[�\�\�o\0!�Dx�\�\�kN\�=_�bV��bY\\�N�܉��Đ�cvi��B\�X�	�r\�I]\��\� �\�|׀��d\r�\�\�A\�Hzޒ(\�se\"�\�p�*Y�ƽ\�@Q߇~]\�>\���\�B��w��\�s�\�ox_\�\���\��\�l����\��\r��0g'),(10,'3__0_0_0_0',1724154205,_binary 'x�\�U=o\�0�+�\��\�Xv��h�v(:\�\�Љ���LD��k�\�=I��ӥh\�{w\"\�\�\�#\�\���\�\�;�g���E���L\�D��#�sV�V�\'F\�td\�jv�^d\�S���=\�zVyRB\r蔙�݋��6\0�y��*cD\�ߠ-cd�\';`��=^��4Of�\�R\�V6p�έ\�&O�<܃.�茐x\�\'w�\�Բx\n����>jV�\�y\�O>��Ng-븂֜�Z���Kg6\�{a��X)v��0��94!O��\�u�,��b2\�`���\�\�P\�+p5\�s�!�F�^�\Z�i�p8�tz\��1!�\�G���|�����\�1����\�8��h�\Z.vR5a��o\Z��֏n]��\�ךb�l앍��b-�\�9v��\�>l\n\�\�D\�;�\�\nʹ0��gg�\�w\�(\0l�\�\�\�^\��p�>q\'\�=�\�\'?�5�����\�P�?�U���\�\�U&\n\�R\�$� \�\�汳UF�<�� U�}��N��=0�&\�=v�\��+=���\�ckD��<\��b+������n�l\�\�7���\�|z�\�>\��,�)�6�\��c��I[\�\��7�\�� 7��C�\�C�7\�\�8~@\r�l��+;m�\���_�9\�o5l�d\�\"�\�\�${t\�;0�@&\�hu�nY���Pd\�OX�R�T�:Y�ų\Zw%�$]Yiuf�-꾄0f���J*\�4_\�\�碝ND;�\�L�g\��v���h�j��=_f�f/י\�;Xȥ7�$���\����a=\�\Z���x\r]�[�\�\�o\0!�Dx�\�\�kN\�	=_�bV��lY\\�N�\\\�DzbȊٱ\0��U!s�\�y�p\�$�\�\�\� x\�|׀��d�\�\�\�(n$o\��uƩ2:p8X��D\�\�\0�[��\�ð�d���y�q�?\�\�;y\��\�\�Ç2��\��\r\��\�\��7�Ͼ\�/\��I:�'),(11,'4__0_0_0_0',1724154209,_binary 'x�\�UKo�@�+\�D?�!���\�C�C�zZ�a�W\�.q�(���/X\��R���\�\�|3\�{���,fyrC��d>ϣ��\�\r\�7Fꬔ��摒�6�\�4��l���B�TA��g1j�<*�\�Klmw�,���u�W�k�c��e���h��\��2O�(���\�B��҆\�,պE	~�Y\�)\�1Խu%S5/�\�k�\�ȣ$5m��V@\\�F�1\�$nIG�\���Ő_{X�>\�\�\�a%\�n�9\�\�\�g߄<�^\"\�5Ax�A\����\�eQ\��\Z\�\�D#I/A�\�\�IX\��t\Zt�A��Ĺ\�5>\�\\��}\���\�=�Fa�m\�\��/}�XWÅT\�]l�h��%\�2F؄w���\�VW\�J\�߫c�\0t��.x�e�\�6f\�$�L�\�|��.t\�%\0�5��\n�\�\�α\�\�z�;\\����\�1\��2\\G\�o��ܦ����>**P����=�dv�J�\�\�#*� {8�(�+\�)h��O#���\���ӚZ8<��\�ᢔ����o9�@E�1\���5�|�~x�\���ㇻ�\�G�t#������b\�S?i��2�����\�t��2\�\��8��y�@CY8#�\'}\"��_Yo\n\�\�\�����loH�\�\�:\�\�\�\���:B��ZRl��wvC�=D���Tf\�S%i�xR\�}��$��S����Eݗ\�\�l���\��8\�����	Q��;%\�y��	Q\'\�\���v\�ӳ\��\�\�U��\��r\�\�|\Z\�2_\�FZ�\'#\r\�a�ឍ��5��|�0HH0\�g��gn���|�Ҩώ\�l\�\�ZL�\'�4\�9$`�\��*F�2��]\�oC�6�\�mx\�|\�\0�F\Z�\�ˑ\�H��5�_Y+�2�A��R\�+\�\�7��\�W\��a8W#�\���\�\�A5O\��Y\�W�\�\�𡌷7�7�\�\�<\�\�\������\0�\�6\r'),(12,'5__0_0_0_0',1724154214,_binary 'x�\�V=o\�0�+�\��d[v�)h�vh3\�\�Љ���LX��k�\�=��D\�\�R�f\�=\��\�HB�9�oI�K�9�Z�G��,o�\�8)F)%�V�U�\�t5[�W7�;\�d\�4�\'���H�C	\Z\�-3��\�y�nH��J�yC3��Y�h���E��\�H9=%�\�ua�҅ь$�\�x*��\�\\��w\�\\�\";�KcF�-Y]��\0\�\�n\�b��\r�P\�X�Vf}x�\�\�ږ�8����\�Ϋ#�U}�5�4^\"W=IE�̃G5�ˡ��W\�b�l!\�J\�V�zi�p�-\�\�\�``\�y\�]\�<Yu9:\��i+�	O4�\�\�<G�m�yS\�Dih&;!�ɑ\��D�U\�\�ɨa\�T\�\���:��1�\Z��1�&f�\�A�\Z�a�7��w�\���ι��k�B�4%\�7TK\0,�h��\�YS�7�=�Y֎�=F+��s�\�m�xw\�Y\�Nb�7�\�d:PU8�,�\�1��7f���\�NG!sե�\�d,\�5;�1\�\�X�\�9\�p�^k^�#��o\rf-�&�}���n~l藻\�\�\�w�>\���NRw?\�*-Y�\�E�1֩�\�\��Ը\�b\�n\\T��\ZK\�\'�P1�\�\�ɞ\�y\�\�\�m�p\�q<Ы�;)*\ZL��	�Ńp#�\0���P\�\�f��W\�޲\�	Q\�\�>�dy~HkL���9a&�\��`\�\�ls�m�\�\�P\�a\�\��~\�\����ԝ3�|��\r�\�\���<Y��\0�/ש�p\�;�\�UGu�\�R��\Z&\�xb�R�V\��\�J\�\Z:e�\n�w�	)�\�� ��[\�l<_�©�\�\�\�v�\�4F\�B�t���g+��\�B]�oK�\��\�nX�\�|W\0��V\Z۫�\\K����Y\'�3�E��R)\n^�7���\�\�Я��\�\��?y�q��٧w�\�\�\����i��\��\rO\�\�\���\r\�7�\��\�?�'),(13,'6__0_0_0_0',1724154218,_binary 'x�\�UMo�0�+\�D6�\�9EM\���I��,/ֲ̲\�&\�*\�\�\�\�`vs�\�JUsc�\�כgFR�\�Ir\�H�_�,H\��*�\�$��V\���DZi�\�,P\�Y�\�\�l\�NJY1\r��O\nUЀ{K\�|������5��V�5߃\��7h�Y�h���\���$$�#稄Լ��\��\�d�\\�H�\�;P�\�\�Cݻ+�\�\�\�ߚ`6\�h\�ںg5Сx{�1�$ni\�$��V��\�_{X\�>��I6`\�l�;\�\�\�\�E��\�^<��\"\� �೚\�\�\�!\�p=�)\�\�^\�^���i�p�\�\�<\��A\�p}\�o�jt8`\�\�ZT�hl��9\�4V \�\�l\�+8�\�\Z����Q������ץ��X4\\<\�<\r�\�N:��\�TV�h7����rE\� ��\�f\n\�vTK\0l�\�����l\�\�Xy\�nT[$U\�\�~�݋*��\�\�c�\�\rȪ�\���Y&kЁ�g�|dd�Ŕ~\�\�2UA����\�P\"�S�rԬH\�o8`��\�\�\��c�y�:\��a+�&\�\�舙���\�\�\�ÇϷ��>\�{�\�\nw?[+-Y�\�EX1����\�l�и\�bկ;��\n:\�z�-�SR\�3\�\�\�ɞ\�q\�\�݂pőUӍ{\Zp�\�$\�\�A\��4\0�h�!4ɲ�\�]��kV\� \�\�=��fǇ�\�\�i�{V�FV�)o˦���\�NSC-$�i��&��`\'3����;ϋ�j����v\'I����=T;\�\�4��:[\�F��\�`!烰\�O�\\�kb�;�\�`�q=�5\�5t\�n�\�a,J\�\0X�$��[눞o`!+\��ɲ���|9���k�\�\�\ZUŚs%�\� \�\�\n�|�5\�5�o�����|�7���\���uƱ2Yt䰷\ZQ�ֽ\�7Oѡ\�Z��\��\�k��\�>���\���7|,\��\r��o���|QW\�o�\�}\�_\�f8�');
/*!40000 ALTER TABLE `cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cache_rootline_tags`
--

LOCK TABLES `cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cache_rootline_tags` DISABLE KEYS */;
INSERT INTO `cache_rootline_tags` VALUES (1,'1__0_0_0','pageId_1'),(2,'6__0_0_0','pageId_6'),(3,'6__0_0_0','pageId_1'),(4,'2__0_0_0','pageId_2'),(5,'2__0_0_0','pageId_1'),(6,'3__0_0_0','pageId_3'),(7,'3__0_0_0','pageId_1'),(8,'4__0_0_0','pageId_4'),(9,'4__0_0_0','pageId_1'),(10,'5__0_0_0','pageId_5'),(11,'5__0_0_0','pageId_1'),(12,'1__0_0_1_1','pageId_1'),(13,'1__0_0_0_0','pageId_1'),(14,'2__0_0_0_0','pageId_2'),(15,'2__0_0_0_0','pageId_1'),(16,'3__0_0_0_0','pageId_3'),(17,'3__0_0_0_0','pageId_1'),(18,'4__0_0_0_0','pageId_4'),(19,'4__0_0_0_0','pageId_1'),(20,'5__0_0_0_0','pageId_5'),(21,'5__0_0_0_0','pageId_1'),(22,'6__0_0_0_0','pageId_6'),(23,'6__0_0_0_0','pageId_1');
/*!40000 ALTER TABLE `cache_rootline_tags` ENABLE KEYS */;
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
-- Dumping data for table `sys_http_report`
--

LOCK TABLES `sys_http_report` WRITE;
/*!40000 ALTER TABLE `sys_http_report` DISABLE KEYS */;
INSERT INTO `sys_http_report` VALUES ('0e887a1f-de1f-4ca4-99db-5412082d921b',0,1721561583,1721561583,'csp-report','backend',1721561583635969,'{\"addr\":\"127.0.0.0\",\"agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"}','{\"blocked-uri\":\"eval\",\"column-number\":1,\"disposition\":\"enforce\",\"document-uri\":\"http:\\/\\/form-crshield-acceptance-v13.typo3.local\\/typo3\\/main\",\"effective-directive\":\"script-src\",\"original-policy\":\"default-src \'self\'; script-src \'self\' \'nonce-vhsqlI0Im01YVl7Xk8O_61fESMaEQUy1LnkiQDw53SucNVxcRoujqQ\' \'report-sample\'; style-src \'self\' \'unsafe-inline\' \'report-sample\'; style-src-attr \'unsafe-inline\' \'report-sample\'; img-src \'self\' data: http:\\/\\/*.ytimg.com http:\\/\\/*.vimeocdn.com https:\\/\\/extensions.typo3.org; worker-src \'self\' blob:; frame-src \'self\' http:\\/\\/*.youtube-nocookie.com http:\\/\\/*.youtube.com http:\\/\\/*.vimeo.com; base-uri \'none\'; object-src \'none\'; report-uri http:\\/\\/form-crshield-acceptance-v13.typo3.local\\/typo3\\/@http-reporting?csp=report&requestTime=1721561583635969\",\"referrer\":\"http:\\/\\/form-crshield-acceptance-v13.typo3.local\\/typo3\\/\",\"script-sample\":\";(function n(e){let t=1e3,n=10;function \\u2026\",\"status-code\":200,\"violated-directive\":\"script-src\"}','3b4e8e75846238b67416529ebd97fb305538b6ad'),('13b6f46d-1530-4444-ab18-8bd6d5cca40a',0,1721561538,1721561538,'csp-report','backend',1721561537984225,'{\"addr\":\"127.0.0.0\",\"agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"}','{\"blocked-uri\":\"eval\",\"column-number\":1,\"disposition\":\"enforce\",\"document-uri\":\"http:\\/\\/form-crshield-acceptance-v13.typo3.local\\/typo3\\/login?\",\"effective-directive\":\"script-src\",\"original-policy\":\"default-src \'self\'; script-src \'self\' \'nonce-Maqcd1_E1PETn_3XhD9pm0tPcb0GFEG54x_rG28uxZGI_uyZXxDzLA\' \'report-sample\'; style-src \'self\' \'unsafe-inline\' \'report-sample\'; style-src-attr \'unsafe-inline\' \'report-sample\'; img-src \'self\' data: http:\\/\\/*.ytimg.com http:\\/\\/*.vimeocdn.com https:\\/\\/extensions.typo3.org; worker-src \'self\' blob:; frame-src \'self\' http:\\/\\/*.youtube-nocookie.com http:\\/\\/*.youtube.com http:\\/\\/*.vimeo.com; base-uri \'none\'; object-src \'none\'; report-uri http:\\/\\/form-crshield-acceptance-v13.typo3.local\\/typo3\\/@http-reporting?csp=report&requestTime=1721561537984225\",\"referrer\":\"\",\"script-sample\":\";(function n(e){let t=1e3,n=10;function \\u2026\",\"status-code\":200,\"violated-directive\":\"script-src\"}','3b4e8e75846238b67416529ebd97fb305538b6ad'),('3956b3c3-5b14-4139-ac64-77c21a9ea349',0,1721561411,1721561411,'csp-report','backend',1721561411568956,'{\"addr\":\"127.0.0.0\",\"agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"}','{\"blocked-uri\":\"eval\",\"column-number\":1,\"disposition\":\"enforce\",\"document-uri\":\"http:\\/\\/form-crshield-acceptance-v13.typo3.local\\/typo3\\/login?\",\"effective-directive\":\"script-src\",\"original-policy\":\"default-src \'self\'; script-src \'self\' \'nonce-8f4KwJ11VYEfmKUVduTQImzQs1a-kj4UetGOV34-R04ZnehBgQTbow\' \'report-sample\'; style-src \'self\' \'unsafe-inline\' \'report-sample\'; style-src-attr \'unsafe-inline\' \'report-sample\'; img-src \'self\' data: http:\\/\\/*.ytimg.com http:\\/\\/*.vimeocdn.com https:\\/\\/extensions.typo3.org; worker-src \'self\' blob:; frame-src \'self\' http:\\/\\/*.youtube-nocookie.com http:\\/\\/*.youtube.com http:\\/\\/*.vimeo.com; base-uri \'none\'; object-src \'none\'; report-uri http:\\/\\/form-crshield-acceptance-v13.typo3.local\\/typo3\\/@http-reporting?csp=report&requestTime=1721561411568956\",\"referrer\":\"\",\"script-sample\":\";(function n(e){let t=1e3,n=10;function \\u2026\",\"status-code\":200,\"violated-directive\":\"script-src\"}','3b4e8e75846238b67416529ebd97fb305538b6ad'),('69a7b6fb-727f-4439-86eb-676c502502d0',0,1721561411,1721561411,'csp-report','backend',1721561411568956,'{\"addr\":\"127.0.0.0\",\"agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"}','{\"blocked-uri\":\"eval\",\"column-number\":1,\"disposition\":\"enforce\",\"document-uri\":\"http:\\/\\/form-crshield-acceptance-v13.typo3.local\\/typo3\\/login?\",\"effective-directive\":\"script-src\",\"original-policy\":\"default-src \'self\'; script-src \'self\' \'nonce-8f4KwJ11VYEfmKUVduTQImzQs1a-kj4UetGOV34-R04ZnehBgQTbow\' \'report-sample\'; style-src \'self\' \'unsafe-inline\' \'report-sample\'; style-src-attr \'unsafe-inline\' \'report-sample\'; img-src \'self\' data: http:\\/\\/*.ytimg.com http:\\/\\/*.vimeocdn.com https:\\/\\/extensions.typo3.org; worker-src \'self\' blob:; frame-src \'self\' http:\\/\\/*.youtube-nocookie.com http:\\/\\/*.youtube.com http:\\/\\/*.vimeo.com; base-uri \'none\'; object-src \'none\'; report-uri http:\\/\\/form-crshield-acceptance-v13.typo3.local\\/typo3\\/@http-reporting?csp=report&requestTime=1721561411568956\",\"referrer\":\"\",\"script-sample\":\";(function n(e,t=!1){const o=\\\"6.0\\\";let r\\u2026\",\"status-code\":200,\"violated-directive\":\"script-src\"}','3aaa2e6dc4519be6ed0dead459b58d1d03a8c63c'),('92b714ab-543d-4cd9-a5dd-37a79c97a21d',0,1721561583,1721561583,'csp-report','backend',1721561583635969,'{\"addr\":\"127.0.0.0\",\"agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"}','{\"blocked-uri\":\"eval\",\"column-number\":1,\"disposition\":\"enforce\",\"document-uri\":\"http:\\/\\/form-crshield-acceptance-v13.typo3.local\\/typo3\\/main\",\"effective-directive\":\"script-src\",\"original-policy\":\"default-src \'self\'; script-src \'self\' \'nonce-vhsqlI0Im01YVl7Xk8O_61fESMaEQUy1LnkiQDw53SucNVxcRoujqQ\' \'report-sample\'; style-src \'self\' \'unsafe-inline\' \'report-sample\'; style-src-attr \'unsafe-inline\' \'report-sample\'; img-src \'self\' data: http:\\/\\/*.ytimg.com http:\\/\\/*.vimeocdn.com https:\\/\\/extensions.typo3.org; worker-src \'self\' blob:; frame-src \'self\' http:\\/\\/*.youtube-nocookie.com http:\\/\\/*.youtube.com http:\\/\\/*.vimeo.com; base-uri \'none\'; object-src \'none\'; report-uri http:\\/\\/form-crshield-acceptance-v13.typo3.local\\/typo3\\/@http-reporting?csp=report&requestTime=1721561583635969\",\"referrer\":\"http:\\/\\/form-crshield-acceptance-v13.typo3.local\\/typo3\\/\",\"script-sample\":\";(function n(e,t=!1){const o=\\\"6.0\\\";let r\\u2026\",\"status-code\":200,\"violated-directive\":\"script-src\"}','3aaa2e6dc4519be6ed0dead459b58d1d03a8c63c'),('9fca62cf-ef71-43a6-a6b0-263dc702a3e8',0,1721561579,1721561579,'csp-report','backend',1721561579794345,'{\"addr\":\"127.0.0.0\",\"agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"}','{\"blocked-uri\":\"eval\",\"column-number\":1,\"disposition\":\"enforce\",\"document-uri\":\"http:\\/\\/form-crshield-acceptance-v13.typo3.local\\/typo3\\/\",\"effective-directive\":\"script-src\",\"original-policy\":\"default-src \'self\'; script-src \'self\' \'nonce-39TZYFcxK8yrbX1txO48fNPx9xuUP3nMN4gWt7qs_aSwFbSIUiaIEA\' \'report-sample\'; style-src \'self\' \'unsafe-inline\' \'report-sample\'; style-src-attr \'unsafe-inline\' \'report-sample\'; img-src \'self\' data: http:\\/\\/*.ytimg.com http:\\/\\/*.vimeocdn.com https:\\/\\/extensions.typo3.org; worker-src \'self\' blob:; frame-src \'self\' http:\\/\\/*.youtube-nocookie.com http:\\/\\/*.youtube.com http:\\/\\/*.vimeo.com; base-uri \'none\'; object-src \'none\'; report-uri http:\\/\\/form-crshield-acceptance-v13.typo3.local\\/typo3\\/@http-reporting?csp=report&requestTime=1721561579794345\",\"referrer\":\"http:\\/\\/form-crshield-acceptance-v13.typo3.local\\/typo3\\/install.php\",\"script-sample\":\";(function n(e){let t=1e3,n=10;function \\u2026\",\"status-code\":200,\"violated-directive\":\"script-src\"}','3b4e8e75846238b67416529ebd97fb305538b6ad'),('a4427dc6-7399-4343-8f88-66283c950961',0,1721561579,1721561579,'csp-report','backend',1721561579794345,'{\"addr\":\"127.0.0.0\",\"agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"}','{\"blocked-uri\":\"eval\",\"column-number\":1,\"disposition\":\"enforce\",\"document-uri\":\"http:\\/\\/form-crshield-acceptance-v13.typo3.local\\/typo3\\/\",\"effective-directive\":\"script-src\",\"original-policy\":\"default-src \'self\'; script-src \'self\' \'nonce-39TZYFcxK8yrbX1txO48fNPx9xuUP3nMN4gWt7qs_aSwFbSIUiaIEA\' \'report-sample\'; style-src \'self\' \'unsafe-inline\' \'report-sample\'; style-src-attr \'unsafe-inline\' \'report-sample\'; img-src \'self\' data: http:\\/\\/*.ytimg.com http:\\/\\/*.vimeocdn.com https:\\/\\/extensions.typo3.org; worker-src \'self\' blob:; frame-src \'self\' http:\\/\\/*.youtube-nocookie.com http:\\/\\/*.youtube.com http:\\/\\/*.vimeo.com; base-uri \'none\'; object-src \'none\'; report-uri http:\\/\\/form-crshield-acceptance-v13.typo3.local\\/typo3\\/@http-reporting?csp=report&requestTime=1721561579794345\",\"referrer\":\"http:\\/\\/form-crshield-acceptance-v13.typo3.local\\/typo3\\/install.php\",\"script-sample\":\";(function n(e,t=!1){const o=\\\"6.0\\\";let r\\u2026\",\"status-code\":200,\"violated-directive\":\"script-src\"}','3aaa2e6dc4519be6ed0dead459b58d1d03a8c63c'),('a4809a34-6813-4036-87dd-d103aa775f7e',0,1721561404,1721561404,'csp-report','backend',1721561403628621,'{\"addr\":\"127.0.0.0\",\"agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"}','{\"blocked-uri\":\"eval\",\"column-number\":1,\"disposition\":\"enforce\",\"document-uri\":\"http:\\/\\/form-crshield-acceptance-v13.typo3.local\\/typo3\\/\",\"effective-directive\":\"script-src\",\"original-policy\":\"default-src \'self\'; script-src \'self\' \'nonce-mtr7NjlZoAeiPKS8R-TWU37lYjK_fnK5yn1EJpjffW6TGVeSZrtGog\' \'report-sample\'; style-src \'self\' \'unsafe-inline\' \'report-sample\'; style-src-attr \'unsafe-inline\' \'report-sample\'; img-src \'self\' data: http:\\/\\/*.ytimg.com http:\\/\\/*.vimeocdn.com https:\\/\\/extensions.typo3.org; worker-src \'self\' blob:; frame-src \'self\' http:\\/\\/*.youtube-nocookie.com http:\\/\\/*.youtube.com http:\\/\\/*.vimeo.com; base-uri \'none\'; object-src \'none\'; report-uri http:\\/\\/form-crshield-acceptance-v13.typo3.local\\/typo3\\/@http-reporting?csp=report&requestTime=1721561403628621\",\"referrer\":\"\",\"script-sample\":\";(function n(e){let t=1e3,n=10;function \\u2026\",\"status-code\":200,\"violated-directive\":\"script-src\"}','3b4e8e75846238b67416529ebd97fb305538b6ad'),('c90f2c94-41a2-424a-85bd-570a9e07debf',0,1721561538,1721561538,'csp-report','backend',1721561537984225,'{\"addr\":\"127.0.0.0\",\"agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"}','{\"blocked-uri\":\"eval\",\"column-number\":1,\"disposition\":\"enforce\",\"document-uri\":\"http:\\/\\/form-crshield-acceptance-v13.typo3.local\\/typo3\\/login?\",\"effective-directive\":\"script-src\",\"original-policy\":\"default-src \'self\'; script-src \'self\' \'nonce-Maqcd1_E1PETn_3XhD9pm0tPcb0GFEG54x_rG28uxZGI_uyZXxDzLA\' \'report-sample\'; style-src \'self\' \'unsafe-inline\' \'report-sample\'; style-src-attr \'unsafe-inline\' \'report-sample\'; img-src \'self\' data: http:\\/\\/*.ytimg.com http:\\/\\/*.vimeocdn.com https:\\/\\/extensions.typo3.org; worker-src \'self\' blob:; frame-src \'self\' http:\\/\\/*.youtube-nocookie.com http:\\/\\/*.youtube.com http:\\/\\/*.vimeo.com; base-uri \'none\'; object-src \'none\'; report-uri http:\\/\\/form-crshield-acceptance-v13.typo3.local\\/typo3\\/@http-reporting?csp=report&requestTime=1721561537984225\",\"referrer\":\"\",\"script-sample\":\";(function n(e,t=!1){const o=\\\"6.0\\\";let r\\u2026\",\"status-code\":200,\"violated-directive\":\"script-src\"}','3aaa2e6dc4519be6ed0dead459b58d1d03a8c63c'),('f6119062-6ec1-44c7-ad78-deaef19615b1',0,1721561403,1721561403,'csp-report','backend',1721561403628621,'{\"addr\":\"127.0.0.0\",\"agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"}','{\"blocked-uri\":\"eval\",\"column-number\":1,\"disposition\":\"enforce\",\"document-uri\":\"http:\\/\\/form-crshield-acceptance-v13.typo3.local\\/typo3\\/\",\"effective-directive\":\"script-src\",\"original-policy\":\"default-src \'self\'; script-src \'self\' \'nonce-mtr7NjlZoAeiPKS8R-TWU37lYjK_fnK5yn1EJpjffW6TGVeSZrtGog\' \'report-sample\'; style-src \'self\' \'unsafe-inline\' \'report-sample\'; style-src-attr \'unsafe-inline\' \'report-sample\'; img-src \'self\' data: http:\\/\\/*.ytimg.com http:\\/\\/*.vimeocdn.com https:\\/\\/extensions.typo3.org; worker-src \'self\' blob:; frame-src \'self\' http:\\/\\/*.youtube-nocookie.com http:\\/\\/*.youtube.com http:\\/\\/*.vimeo.com; base-uri \'none\'; object-src \'none\'; report-uri http:\\/\\/form-crshield-acceptance-v13.typo3.local\\/typo3\\/@http-reporting?csp=report&requestTime=1721561403628621\",\"referrer\":\"\",\"script-sample\":\";(function n(e,t=!1){const o=\\\"6.0\\\";let r\\u2026\",\"status-code\":200,\"violated-directive\":\"script-src\"}','3aaa2e6dc4519be6ed0dead459b58d1d03a8c63c');
/*!40000 ALTER TABLE `sys_http_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (1,1667048114,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'127.0.0.1','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),(2,1667048168,1,1,1,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,'content',10,'127.0.0.1','[\"Root\",\"pages:1\",\"[root-level]\",0]',0,0,'NEW_1','',0,'','info',NULL,NULL),(3,1667048168,1,1,0,'site',0,0,'Site configuration \'%s\' was automatically created for new root page (%s).',6,'site',0,'127.0.0.1','[\"autogenerated-1-c4ca4238a0b923820dcc509a6f75849b\",1]',-1,0,'','',0,'','info',NULL,NULL),(4,1667048168,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,'content',10,'127.0.0.1','{\"0\":\"Root\",\"1\":\"pages:1\",\"history\":\"2\"}',1,0,'','',0,'','info',NULL,NULL),(5,1667048170,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,'content',10,'127.0.0.1','{\"0\":\"Root\",\"1\":\"pages:1\",\"history\":\"3\"}',1,0,'','',0,'','info',NULL,NULL),(6,1667048173,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1476107295: PHP Warning: touch(): Unable to create file /Users/derhansen/Sites/form-crshield-acceptance-v11.typo3.local/httpdocs/fileadmin/aAbB because No such file or directory in /Users/derhansen/typo3_src/11.5/typo3_src-11.5.16/typo3/sysext/core/Classes/Resource/StorageRepository.php line 312 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file /Users/derhansen/typo3_src/11.5/typo3_src-11.5.16/typo3/sysext/core/Classes/Error/ErrorHandler.php in line 137. Requested URL: http://form-crshield-acceptance-v11.typo3.local/typo3/record/edit?token=--AnonymizedToken--&edit%%5Bpages%%5D%%5B1%%5D=edit&returnUrl=%%2Ftypo3%%2Fmodule%%2Fweb%%2Flayout%%3Ftoken%%3D--AnonymizedToken--%%26id%%3D1',5,'php',0,'127.0.0.1','',-1,0,'','',0,'','info',NULL,NULL),(7,1667048182,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1476107295: PHP Warning: touch(): Unable to create file /Users/derhansen/Sites/form-crshield-acceptance-v11.typo3.local/httpdocs/fileadmin/aAbB because No such file or directory in /Users/derhansen/typo3_src/11.5/typo3_src-11.5.16/typo3/sysext/core/Classes/Resource/StorageRepository.php line 312 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file /Users/derhansen/typo3_src/11.5/typo3_src-11.5.16/typo3/sysext/core/Classes/Error/ErrorHandler.php in line 137. Requested URL: http://form-crshield-acceptance-v11.typo3.local/typo3/record/edit?token=--AnonymizedToken--&edit%%5Bpages%%5D%%5B1%%5D=edit&returnUrl=%%2Ftypo3%%2Fmodule%%2Fweb%%2Flayout%%3Ftoken%%3D--AnonymizedToken--%%26id%%3D1',5,'php',0,'127.0.0.1','',-1,0,'','',0,'','info',NULL,NULL),(8,1667048184,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1476107295: PHP Warning: touch(): Unable to create file /Users/derhansen/Sites/form-crshield-acceptance-v11.typo3.local/httpdocs/fileadmin/aAbB because No such file or directory in /Users/derhansen/typo3_src/11.5/typo3_src-11.5.16/typo3/sysext/core/Classes/Resource/StorageRepository.php line 312 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file /Users/derhansen/typo3_src/11.5/typo3_src-11.5.16/typo3/sysext/core/Classes/Error/ErrorHandler.php in line 137. Requested URL: http://form-crshield-acceptance-v11.typo3.local/typo3/ajax/filestorage/tree/fetchData?token=--AnonymizedToken--',5,'php',0,'127.0.0.1','',-1,0,'','',0,'','info',NULL,NULL),(9,1667048184,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1476107295: PHP Warning: touch(): Unable to create file /Users/derhansen/Sites/form-crshield-acceptance-v11.typo3.local/httpdocs/fileadmin/aAbB because No such file or directory in /Users/derhansen/typo3_src/11.5/typo3_src-11.5.16/typo3/sysext/core/Classes/Resource/StorageRepository.php line 312 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file /Users/derhansen/typo3_src/11.5/typo3_src-11.5.16/typo3/sysext/core/Classes/Error/ErrorHandler.php in line 137. Requested URL: http://form-crshield-acceptance-v11.typo3.local/typo3/module/file/FilelistList?token=--AnonymizedToken--',5,'php',0,'127.0.0.1','',-1,0,'','',0,'','info',NULL,NULL),(10,1667048215,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,'content',10,'127.0.0.1','{\"0\":\"Root\",\"1\":\"pages:1\",\"history\":\"4\"}',1,0,'','',0,'','info',NULL,NULL),(11,1667048224,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1294587218: No TypoScript template found! | TYPO3\\CMS\\Core\\Error\\Http\\InternalServerErrorException thrown in file /Users/derhansen/typo3_src/11.5/typo3_src-11.5.16/typo3/sysext/frontend/Classes/Controller/TypoScriptFrontendController.php in line 1909. Requested URL: http://form-crshield-acceptance-v11.typo3.local/autogenerated-1/',5,'php',0,'127.0.0.1','',-1,0,'','',0,'','info',NULL,NULL),(12,1667048285,1,1,1,'sys_template',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,'content',10,'127.0.0.1','[\"NEW SITE\",\"sys_template:1\",\"Root\",1]',1,0,'NEW','',0,'','info',NULL,NULL),(13,1667048291,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,'content',10,'127.0.0.1','{\"0\":\"NEW SITE\",\"1\":\"sys_template:1\",\"history\":\"6\"}',1,0,'','',0,'','info',NULL,NULL),(14,1667048305,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,'content',10,'127.0.0.1','{\"0\":\"Root\",\"1\":\"pages:1\",\"history\":0}',1,0,'','',0,'','info',NULL,NULL),(15,1667048325,1,3,0,'site',0,0,'Site configuration \'%s\' was renamed to \'%s\'.',6,'site',0,'127.0.0.1','[\"autogenerated-1-c4ca4238a0b923820dcc509a6f75849b\",\"form-chshield\"]',-1,0,'','',0,'','info',NULL,NULL),(16,1667048325,1,2,0,'site',0,0,'Site configuration \'%s\' was updated.',6,'site',0,'127.0.0.1','[\"form-chshield\"]',-1,0,'','',0,'','info',NULL,NULL),(17,1667048345,1,1,2,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,'content',10,'127.0.0.1','[\"Simple form\",\"pages:2\",\"Root\",1]',1,0,'NEW_1','',0,'','info',NULL,NULL),(18,1667048347,1,2,2,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,'content',10,'127.0.0.1','{\"0\":\"Simple form\",\"1\":\"pages:2\",\"history\":\"8\"}',2,0,'','',0,'','info',NULL,NULL),(19,1667048357,1,1,3,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,'content',10,'127.0.0.1','[\"Simple form with summary\",\"pages:3\",\"Root\",1]',1,0,'NEW_1','',0,'','info',NULL,NULL),(20,1667048361,1,2,3,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,'content',10,'127.0.0.1','{\"0\":\"Simple form with summary\",\"1\":\"pages:3\",\"history\":\"10\"}',3,0,'','',0,'','info',NULL,NULL),(21,1667048370,1,1,4,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,'content',10,'127.0.0.1','[\"Multiple step form\",\"pages:4\",\"Root\",1]',1,0,'NEW_1','',0,'','info',NULL,NULL),(22,1667048373,1,2,4,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,'content',10,'127.0.0.1','{\"0\":\"Multiple step form\",\"1\":\"pages:4\",\"history\":\"12\"}',4,0,'','',0,'','info',NULL,NULL),(23,1667048489,1,1,1,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,'content',10,'127.0.0.1','[\"[No title]\",\"tt_content:1\",\"Simple form\",2]',2,0,'NEW635d2425a2f40804507412','',0,'','info',NULL,NULL),(24,1667048491,1,2,1,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,'content',10,'127.0.0.1','{\"0\":\"[No title]\",\"1\":\"tt_content:1\",\"history\":\"14\"}',2,0,'','',0,'','info',NULL,NULL),(25,1667048507,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,'content',10,'127.0.0.1','{\"0\":\"NEW SITE\",\"1\":\"sys_template:1\",\"history\":\"15\"}',1,0,'','',0,'','info',NULL,NULL),(26,1667048534,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,'content',10,'127.0.0.1','{\"0\":\"NEW SITE\",\"1\":\"sys_template:1\",\"history\":\"16\"}',1,0,'','',0,'','info',NULL,NULL),(27,1667048609,1,1,2,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,'content',10,'127.0.0.1','[\"[No title]\",\"tt_content:2\",\"Simple form with summary\",3]',3,0,'NEW635d249d707c8430906761','',0,'','info',NULL,NULL),(28,1667048610,1,2,2,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,'content',10,'127.0.0.1','{\"0\":\"[No title]\",\"1\":\"tt_content:2\",\"history\":\"18\"}',3,0,'','',0,'','info',NULL,NULL),(29,1667048754,1,1,3,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,'content',10,'127.0.0.1','[\"[No title]\",\"tt_content:3\",\"Multiple step form\",4]',4,0,'NEW635d252ca5020932726892','',0,'','info',NULL,NULL),(30,1667048755,1,2,3,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,'content',10,'127.0.0.1','{\"0\":\"[No title]\",\"1\":\"tt_content:3\",\"history\":\"20\"}',4,0,'','',0,'','info',NULL,NULL),(31,1667048774,1,1,5,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,'content',10,'127.0.0.1','[\"Multiple step form with summary\",\"pages:5\",\"Multiple step form\",4]',4,0,'NEW_1','',0,'','info',NULL,NULL),(32,1667048781,1,4,5,'pages',0,0,'Moved record \'%s\' (%s) to page \'%s\' (%s)',1,'content',2,'127.0.0.1','[\"Multiple step form with summary\",\"pages:5\",\"Root\",1]',4,0,'','',0,'','info',NULL,NULL),(33,1667048781,1,4,5,'pages',0,0,'Moved record \'%s\' (%s) from page \'%s\' (%s)',1,'content',3,'127.0.0.1','[\"Multiple step form with summary\",\"pages:5\",\"Multiple step form\",4]',1,0,'','',0,'','info',NULL,NULL),(34,1667048784,1,4,4,'pages',0,0,'Moved record \'%s\' (%s) on page \'%s\' (%s)',1,'content',4,'127.0.0.1','[\"Multiple step form\",\"pages:4\",\"Root\",1]',1,0,'','',0,'','info',NULL,NULL),(35,1667048789,1,2,5,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,'content',10,'127.0.0.1','{\"0\":\"Multiple step form with summary\",\"1\":\"pages:5\",\"history\":\"24\"}',5,0,'','',0,'','info',NULL,NULL),(36,1667048792,1,2,5,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,'content',10,'127.0.0.1','{\"0\":\"Multiple step form with summary\",\"1\":\"pages:5\",\"history\":\"25\"}',5,0,'','',0,'','info',NULL,NULL),(37,1667048825,1,1,4,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,'content',10,'127.0.0.1','[\"[No title]\",\"tt_content:4\",\"Multiple step form with summary\",5]',5,0,'NEW635d2574487f2257624652','',0,'','info',NULL,NULL),(38,1667048826,1,2,4,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,'content',10,'127.0.0.1','{\"0\":\"[No title]\",\"1\":\"tt_content:4\",\"history\":\"27\"}',5,0,'','',0,'','info',NULL,NULL),(39,1667063774,1,1,5,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,'content',10,'127.0.0.1','[\"Root Page\",\"tt_content:5\",\"Root\",1]',1,0,'NEW635d5fdb52e50905076950','',0,'','info',NULL,NULL),(40,1682509286,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'127.0.0.1','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),(41,1682509297,1,2,0,'site',0,0,'Site configuration \'%s\' was updated.',6,'site',0,'127.0.0.1','[\"form-chshield\"]',-1,0,'','',0,'','info',NULL,NULL),(42,1682509424,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1257246929: Tried resolving a template file for controller action \"Standard->index\" in format \".html\", but none of the paths contained the expected template file (/Users/derhansen/Sites/form-crshield-acceptance-v12.typo3.local/httpdocs/typo3/sysext/backend/Resources/Private/Templates/ModuleMenu/Main.html). No paths configured. | TYPO3Fluid\\Fluid\\View\\Exception\\InvalidTemplateResourceException thrown in file /Users/derhansen/typo3_src/11.5/typo3_src-11.5.24/vendor/typo3fluid/fluid/src/View/TemplatePaths.php in line 594. Requested URL: http://form-crshield-acceptance-v12.typo3.local/typo3/main?token=--AnonymizedToken--&redirect=site_configuration&redirectParams=action%%3Doverview',5,'php',0,'127.0.0.1','',-1,0,'','',0,'','info',NULL,NULL),(43,1682509486,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1476107295: PHP Warning: rename(/Users/derhansen/Sites/form-crshield-acceptance-v12.typo3.local/httpdocs/typo3temp/var/cache/code/di/,/Users/derhansen/Sites/form-crshield-acceptance-v12.typo3.local/httpdocs/typo3temp/var/cache/code/di.remove64490eb00bfb5506401447): No such file or directory in /Users/derhansen/typo3_src/12.4/typo3_src-12.4.0/typo3/sysext/core/Classes/Cache/Backend/SimpleFileBackend.php line 314 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file /Users/derhansen/typo3_src/12.4/typo3_src-12.4.0/typo3/sysext/core/Classes/Error/ErrorHandler.php in line 138. Requested URL: http://form-crshield-acceptance-v12.typo3.local/typo3/install.php?install[controller]=upgrade&install[context]=&install[action]=upgradeWizardsBlockingDatabaseAdds',5,'php',0,'127.0.0.1','',-1,0,'','',0,'','info',NULL,NULL),(44,1682509710,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'127.0.0.1','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),(45,1705134911,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'127.0.0.1','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),(46,1705135250,1,1,6,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'127.0.0.1','{\"title\":\"Server Side Validation\",\"table\":\"pages\",\"uid\":6,\"pageTitle\":\"Root\",\"pid\":1}',1,0,'NEW_1','',0,'','info',NULL,NULL),(47,1705135253,1,2,6,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'127.0.0.1','{\"title\":\"Server Side Validation\",\"table\":\"pages\",\"uid\":6,\"history\":\"30\"}',6,0,'','',0,'','info',NULL,NULL),(48,1705135356,1,1,6,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'127.0.0.1','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":6,\"pageTitle\":\"Server Side Validation\",\"pid\":6}',6,0,'NEW65a24cf6b6129018619353','',0,'','info',NULL,NULL),(49,1705135357,1,2,6,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'127.0.0.1','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":6,\"history\":\"32\"}',6,0,'','',0,'','info',NULL,NULL),(50,1705136018,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'127.0.0.1','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),(51,1721561406,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: Cannot assign null to property Doctrine\\DBAL\\Schema\\Column::$_comment of type string | TypeError thrown in file /Users/derhansen/typo3_src/13.4/typo3_src-13.2.1/typo3/sysext/core/Classes/Cache/Frontend/VariableFrontend.php in line 85. Requested URL: http://form-crshield-acceptance-v13.typo3.local/typo3/login?loginProvider=1433416747',5,'php',0,'127.0.0.1','',-1,-99,'','',0,'','error',NULL,NULL),(52,1721561583,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'127.0.0.1','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),(53,1721561608,1,2,0,'site',0,0,'Site configuration \'%s\' was updated.',6,'site',0,'127.0.0.1','[\"form-chshield\"]',-1,0,'','',0,'','info',NULL,NULL);
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
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

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-21 13:44:21
