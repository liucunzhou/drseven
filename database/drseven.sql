-- MySQL dump 10.13  Distrib 8.0.15, for osx10.14 (x86_64)
--
-- Host: localhost    Database: drseven
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dr_admin`
--

DROP TABLE IF EXISTS `dr_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(100) NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` int(10) DEFAULT NULL COMMENT '登录时间',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(59) NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) NOT NULL DEFAULT 'normal' COMMENT '状态',
  `department_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_admin`
--

LOCK TABLES `dr_admin` WRITE;
/*!40000 ALTER TABLE `dr_admin` DISABLE KEYS */;
INSERT INTO `dr_admin` VALUES (1,'admin','Admin','fcd6223094e1c4a5abeb0c739b884505','c2821b','/assets/img/avatar.png','admin@admin.com',0,1577507502,1492186163,1577507502,'83020b09-5263-452e-9c9e-16fd6b37a212','normal',NULL),(2,'manager','店长','eb73a88aea7fc48171ac6a0118d6770a','yZ0KXH','/assets/img/avatar.png','liucunzhou@163.com',0,1576737833,1576737783,1576737833,'6ad86642-7eb1-41b8-8494-0dd3b2d9dde0','normal',NULL);
/*!40000 ALTER TABLE `dr_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_admin_log`
--

DROP TABLE IF EXISTS `dr_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text NOT NULL COMMENT '内容',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=592 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_admin_log`
--

LOCK TABLES `dr_admin_log` WRITE;
/*!40000 ALTER TABLE `dr_admin_log` DISABLE KEYS */;
INSERT INTO `dr_admin_log` VALUES (1,0,'Unknown','/admin/index/login.html','登录','{\"__token__\":\"beaf40c217bb59ddf640c0e52cc89b98\",\"username\":\"admin\",\"captcha\":\"4asn\",\"keeplogin\":\"1\"}','220.112.124.154','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1570769648),(2,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"54e3dc45924d58809e859cd9f8a1ba10\",\"username\":\"admin\",\"captcha\":\"n6d8\",\"keeplogin\":\"1\"}','220.112.125.5','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1570769672),(3,1,'admin','/admin/addon/install','插件管理 安装','{\"name\":\"xshop\",\"force\":\"0\",\"uid\":\"14698\",\"token\":\"4beb462b-8561-4ae7-96bc-0f1e5a5c6a1f\",\"version\":\"1.0.0\",\"faversion\":\"1.0.0.20190705_beta\"}','220.112.125.5','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1570769939),(5,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.5','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1570769962),(6,1,'admin','/admin/addon/state','插件管理 禁用启用','{\"name\":\"litestore\",\"action\":\"disable\",\"force\":\"0\"}','220.112.125.5','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1570770274),(7,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.154','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1570770274),(8,1,'admin','/admin/addon/uninstall','插件管理 卸载','{\"name\":\"litestore\",\"force\":\"0\"}','220.112.124.154','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1570770277),(9,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.5','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1570770277),(11,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.5','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1570770293),(12,1,'admin','/admin/addon/state','插件管理 禁用启用','{\"name\":\"litestore\",\"action\":\"disable\",\"force\":\"0\"}','220.112.124.154','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1570770333),(13,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.5','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1570770333),(15,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.154','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1570770343),(16,1,'admin','/admin/addon/state','插件管理 禁用启用','{\"name\":\"litestore\",\"action\":\"enable\",\"force\":\"0\"}','220.112.125.5','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1570770352),(17,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.154','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1570770352),(18,1,'admin','/admin/addon/state','插件管理 禁用启用','{\"name\":\"litestore\",\"action\":\"disable\",\"force\":\"0\"}','220.112.125.5','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1570770468),(19,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.154','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1570770468),(21,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.5','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1570770472),(22,1,'admin','/admin/addon/install','插件管理 安装','{\"name\":\"third\",\"force\":\"0\",\"uid\":\"14698\",\"token\":\"4beb462b-8561-4ae7-96bc-0f1e5a5c6a1f\",\"version\":\"1.0.6\",\"faversion\":\"1.0.0.20190705_beta\"}','220.112.124.154','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1570770536),(23,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.5','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1570770537),(24,1,'admin','/admin/addon/config?name=third&dialog=1','插件管理 配置','{\"name\":\"third\",\"dialog\":\"1\",\"row\":{\"qq\":\"{\\\"app_id\\\":\\\"100000000\\\",\\\"app_secret\\\":\\\"123456\\\",\\\"scope\\\":\\\"get_user_info\\\"}\",\"wechat\":\"{\\\"app_id\\\":\\\"100000000\\\",\\\"app_secret\\\":\\\"123456\\\",\\\"scope\\\":\\\"snsapi_base\\\"}\",\"weibo\":\"{\\\"app_id\\\":\\\"100000000\\\",\\\"app_secret\\\":\\\"123456\\\",\\\"scope\\\":\\\"get_user_info\\\"}\",\"rewrite\":\"{\\\"index\\\\\\/index\\\":\\\"\\\\\\/third$\\\",\\\"index\\\\\\/connect\\\":\\\"\\\\\\/third\\\\\\/connect\\\\\\/[:platform]\\\",\\\"index\\\\\\/callback\\\":\\\"\\\\\\/third\\\\\\/callback\\\\\\/[:platform]\\\"}\"}}','220.112.124.154','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1570770547),(25,1,'admin','/admin/addon/state','插件管理 禁用启用','{\"name\":\"litestore\",\"action\":\"enable\",\"force\":\"0\"}','220.112.125.5','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1570770571),(26,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.154','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1570770571),(27,1,'admin','/admin/addon/config?name=third&dialog=1','插件管理 配置','{\"name\":\"third\",\"dialog\":\"1\",\"row\":{\"qq\":\"{\\\"app_id\\\":\\\"100000000\\\",\\\"app_secret\\\":\\\"123456\\\",\\\"scope\\\":\\\"get_user_info\\\"}\",\"wechat\":\"{\\\"app_id\\\":\\\"wxa97976943d2802c3\\\",\\\"app_secret\\\":\\\"f0897b310ad3f4c9119e090d6b1d4988\\\",\\\"scope\\\":\\\"snsapi_base\\\"}\",\"weibo\":\"{\\\"app_id\\\":\\\"100000000\\\",\\\"app_secret\\\":\\\"123456\\\",\\\"scope\\\":\\\"get_user_info\\\"}\",\"rewrite\":\"{\\\"index\\\\\\/index\\\":\\\"\\\\\\/third$\\\",\\\"index\\\\\\/connect\\\":\\\"\\\\\\/third\\\\\\/connect\\\\\\/[:platform]\\\",\\\"index\\\\\\/callback\\\":\\\"\\\\\\/third\\\\\\/callback\\\\\\/[:platform]\\\"}\"}}','220.112.124.154','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1570770852),(28,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"cc75aaaabab077b4cbd45362a41ea640\",\"username\":\"admin\",\"captcha\":\"xcjc\"}','124.79.134.71','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1571038493),(29,1,'admin','/admin/addon/install','插件管理 安装','{\"name\":\"captcha\",\"force\":\"0\",\"uid\":\"0\",\"token\":\"\",\"version\":\"1.0.0\",\"faversion\":\"1.0.0.20190705_beta\"}','124.79.134.71','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1571038571),(30,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','124.79.134.71','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1571038571),(31,1,'admin','/admin/addon/install','插件管理 安装','{\"name\":\"markdown\",\"force\":\"0\",\"uid\":\"0\",\"token\":\"\",\"version\":\"1.0.1\",\"faversion\":\"1.0.0.20190705_beta\"}','124.79.134.71','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1571038646),(32,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','124.79.134.71','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1571038646),(33,1,'admin','/admin/index/login','登录','{\"__token__\":\"ccb6fd08fe568ddac2c02d6fff3dafe9\",\"username\":\"admin\",\"captcha\":\"f3ht\"}','124.79.134.71','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',1571038779),(34,0,'Unknown','/admin/index/login.html','','{\"__token__\":\"9dcccc3640a1c599ca3e67d5ec92e409\",\"username\":\"admin\",\"captcha\":\"t8rj\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573120522),(35,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"ec425a8590fad93eb46c2a8ff4ebcf86\",\"username\":\"admin\",\"captcha\":\"em7k\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573120532),(36,1,'admin','/admin/addon/state','插件管理 禁用启用','{\"name\":\"captcha\",\"action\":\"disable\",\"force\":\"0\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573120700),(37,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573120701),(38,1,'admin','/admin/addon/uninstall','插件管理 卸载','{\"name\":\"captcha\",\"force\":\"0\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573120703),(39,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573120703),(40,1,'admin','/admin/auth/rule/multi/ids/119','','{\"action\":\"\",\"ids\":\"119\",\"params\":\"ismenu=0\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573120736),(41,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573120736),(42,1,'admin','/admin/addon/install','插件管理 安装','{\"name\":\"command\",\"force\":\"0\",\"uid\":\"0\",\"token\":\"\",\"version\":\"1.0.5\",\"faversion\":\"1.0.0.20190705_beta\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573120791),(43,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573120791),(44,0,'Unknown','/admin/index/login?url=%2Fadmin%2Fcategory%3Fref%3Daddtabs','','{\"url\":\"\\/admin\\/category?ref=addtabs\",\"__token__\":\"0a9b15cb1fde609b663e66a3fc329ecc\",\"username\":\"admin\",\"captcha\":\"uiaw\"}','124.79.76.61','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36',1573121499),(45,1,'admin','/admin/index/login?url=%2Fadmin%2Fcategory%3Fref%3Daddtabs','Login','{\"url\":\"\\/admin\\/category?ref=addtabs\",\"__token__\":\"35b9065541c524b82865924c188c0e7f\",\"username\":\"admin\",\"captcha\":\"jbxr\"}','124.79.76.61','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36',1573121505),(46,1,'admin','/admin/index/login?url=%2Fadmin%2Fcategory%3Fref%3Daddtabs','登录','{\"url\":\"\\/admin\\/category?ref=addtabs\",\"__token__\":\"a9dee56611a618e9efd96eba18daaa84\",\"username\":\"admin\",\"captcha\":\"l6gq\"}','124.79.77.204','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 SE 2.X MetaSr 1.0',1573121812),(47,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132106),(48,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_dress\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132132),(49,1,'admin','/admin/general.config/edit','常规管理 系统配置 编辑','{\"row\":{\"name\":\"\\u793c\\u670d\\u7ba1\\u7406\\u7cfb\\u7edf\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{\\\"backend\\\":\\\"zh-cn\\\",\\\"frontend\\\":\\\"zh-cn\\\"}\",\"fixedpage\":\"dashboard\"}}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132162),(50,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132294),(51,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_dress\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132297),(52,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132332),(53,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132332),(54,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132332),(55,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132332),(56,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_dress\",\"controller\":\"dress\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"dr_admin\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"id\"}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132456),(57,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_dress\",\"controller\":\"dress\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"dr_admin\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"id\"}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132458),(58,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132458),(59,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132464),(60,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132479),(61,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132483),(62,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132486),(63,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132496),(64,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132533),(65,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132537),(66,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_dress\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132548),(67,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132579),(68,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132605),(69,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"dr_dress\",\"controller\":\"dress\\/Dress.php\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132636),(70,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"dr_dress\",\"controller\":\"dress\\/Dress.php\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132637),(71,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132637),(72,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132642),(73,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132646),(74,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132652),(75,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"dr_dress\",\"controller\":\"dress\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132756),(76,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"dr_dress\",\"controller\":\"dress\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132757),(77,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132757),(78,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"dr_dress\",\"controller\":\"dress\\/Dress\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132777),(79,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"dr_dress\",\"controller\":\"dress\\/Dress\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132778),(80,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132778),(81,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132808),(82,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132813),(83,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132816),(84,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"dress\\/Dress.php\",\"action\":\"execute\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132819),(85,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573132820),(86,1,'admin','/admin/auth/rule/edit/ids/160?dialog=1','权限管理 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"dress\",\"title\":\"\\u793c\\u670d\\u7ba1\\u7406\",\"icon\":\"fa fa-list\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"160\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133514),(87,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133515),(88,1,'admin','/admin/auth/rule/edit/ids/161?dialog=1','权限管理 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"160\",\"name\":\"dress\\/dress\",\"title\":\"\\u793c\\u670d\\u5217\\u8868\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"161\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133527),(89,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133527),(90,1,'admin','/admin/command/del/ids/5,4,3,2,1','在线命令管理 删除','{\"action\":\"del\",\"ids\":\"5,4,3,2,1\",\"params\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133565),(91,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133568),(92,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_dress_set\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133578),(93,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_dress_set\",\"controller\":\"dress\\/DressSet\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133601),(94,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_dress_set\",\"controller\":\"dress\\/DressSet\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133603),(95,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133603),(96,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133608),(97,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133611),(98,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133612),(99,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133614),(100,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"dress\\/DressSet.php\",\"action\":\"command\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133616),(101,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"dress\\/DressSet.php\",\"action\":\"execute\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133617),(102,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133617),(103,1,'admin','/admin/auth/rule/edit/ids/170?dialog=1','权限管理 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"160\",\"name\":\"dress\\/dress_set\",\"title\":\"\\u793c\\u670d\\u7ec4\\u5408\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"170\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133640),(104,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133640),(105,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133924),(106,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_dress_package\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133931),(107,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_dress_package\",\"controller\":\"dress\\/DressPackage\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133956),(108,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_dress_package\",\"controller\":\"dress\\/DressPackage\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133957),(109,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133957),(110,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133964),(111,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133966),(112,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133970),(113,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133971),(114,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"dress\\/DressPackage.php\",\"action\":\"command\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133974),(115,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"dress\\/DressPackage.php\",\"action\":\"execute\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133975),(116,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133975),(117,1,'admin','/admin/auth/rule/edit/ids/176?dialog=1','权限管理 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"160\",\"name\":\"dress\\/dress_package\",\"title\":\"\\u793c\\u670d\\u5957\\u9910\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"176\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133992),(118,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573133992),(119,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573134979),(120,1,'admin','/admin/command/del/ids/9,8,7,6','在线命令管理 删除','{\"action\":\"del\",\"ids\":\"9,8,7,6\",\"params\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573134984),(121,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573134985),(122,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_storage\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573134991),(123,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_storage\",\"controller\":\"dress\\/Storage\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573135011),(124,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_storage\",\"controller\":\"dress\\/Storage\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573135012),(125,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573135012),(126,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573135017),(127,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573135020),(128,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573135021),(129,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573135023),(130,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"dress\\/Storage.php\",\"action\":\"command\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573135025),(131,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"dress\\/Storage.php\",\"action\":\"execute\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573135025),(132,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573135025),(133,1,'admin','/admin/auth/rule/edit/ids/185?dialog=1','权限管理 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"160\",\"name\":\"dress\\/storage\",\"title\":\"\\u5165\\u5e93\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"185\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573135043),(134,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573135043),(135,1,'admin','/admin/command/del/ids/11,10','在线命令管理 删除','{\"action\":\"del\",\"ids\":\"11,10\",\"params\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136092),(136,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136093),(137,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_scrap\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136097),(138,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_scrap\",\"controller\":\"dress\\/Scrap\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136165),(139,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_scrap\",\"controller\":\"dress\\/Scrap\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136166),(140,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136166),(141,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136171),(142,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136174),(143,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136174),(144,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136177),(145,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_supplier\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136188),(146,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_supplier\",\"controller\":\"dress\\/Supplier\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136200),(147,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_supplier\",\"controller\":\"dress\\/Supplier\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136201),(148,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136201),(149,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136205),(150,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136213),(151,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136215),(152,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136218),(153,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"dress\\/Scrap.php,dress\\/Supplier.php\",\"action\":\"command\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136221),(154,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"dress\\/Scrap.php,dress\\/Supplier.php\",\"action\":\"execute\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136222),(155,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136222),(156,1,'admin','/admin/auth/rule/edit/ids/194?dialog=1','权限管理 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"160\",\"name\":\"dress\\/scrap\",\"title\":\"\\u62a5\\u5e9f\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"194\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136260),(157,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136260),(158,1,'admin','/admin/auth/rule/edit/ids/203?dialog=1','权限管理 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"160\",\"name\":\"dress\\/supplier\",\"title\":\"\\u4f9b\\u5e94\\u5546\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"203\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136272),(159,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136272),(160,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573136573),(161,1,'admin','/admin/command/del/ids/14,13,12','在线命令管理 删除','{\"action\":\"del\",\"ids\":\"14,13,12\",\"params\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573137915),(162,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573137917),(163,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_source\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573137956),(164,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_source\",\"controller\":\"dictionary\\/Source\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573137975),(165,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_source\",\"controller\":\"dictionary\\/Source\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573137977),(166,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573137977),(167,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138077),(168,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_category_leave\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138083),(169,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_category_leave\",\"controller\":\"dictionary\\/Leave\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138104),(170,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_category_leave\",\"controller\":\"dictionary\\/Leave\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138105),(171,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138105),(172,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_category_notice\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138110),(173,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_category_notice\",\"controller\":\"dictionary\\/Notice\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138119),(174,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_category_notice\",\"controller\":\"dictionary\\/Notice\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138120),(175,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138120),(176,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138129),(177,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138131),(178,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138132),(179,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138133),(180,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"dictionary\\/Notice.php,dictionary\\/Source.php,dictionary\\/Leave.php\",\"action\":\"command\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138135),(181,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"dictionary\\/Notice.php,dictionary\\/Source.php,dictionary\\/Leave.php\",\"action\":\"execute\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138137),(182,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138137),(183,1,'admin','/admin/auth/rule/edit/ids/212?dialog=1','权限管理 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"dictionary\",\"title\":\"\\u5b57\\u5178\\u7ba1\\u7406\",\"icon\":\"fa fa-list\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"212\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138157),(184,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138158),(185,1,'admin','/admin/auth/rule/edit/ids/213?dialog=1','权限管理 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"212\",\"name\":\"dictionary\\/notice\",\"title\":\"\\u901a\\u77e5\\u7c7b\\u578b\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"213\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138171),(186,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138171),(187,1,'admin','/admin/auth/rule/edit/ids/222?dialog=1','权限管理 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"212\",\"name\":\"dictionary\\/source\",\"title\":\"\\u6765\\u6e90\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"222\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138184),(188,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138184),(189,1,'admin','/admin/ajax/weigh','','{\"ids\":\"1,2,6,7,8,3,5,9,10,11,12,4,66,67,73,79,119,120,126,134,140,146,153,160,161,170,176,185,194,203,212,222,213,231\",\"changeid\":\"222\",\"pid\":\"212\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"auth_rule\",\"pk\":\"id\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138189),(190,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138189),(191,1,'admin','/admin/auth/rule/edit/ids/231?dialog=1','权限管理 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"212\",\"name\":\"dictionary\\/leave\",\"title\":\"\\u8bf7\\u5047\\u7c7b\\u578b\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"231\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138202),(192,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138202),(193,1,'admin','/admin/auth/rule/multi/ids/3','','{\"action\":\"\",\"ids\":\"3\",\"params\":\"ismenu=0\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138687),(194,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138687),(195,1,'admin','/admin/ajax/weigh','','{\"ids\":\"1,2,6,7,8,3,5,9,10,11,12,4,66,67,73,79,119,120,126,134,140,146,153,160,161,170,176,185,194,203,212,222,213,231\",\"changeid\":\"222\",\"pid\":\"212\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"auth_rule\",\"pk\":\"id\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138771),(196,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138771),(197,1,'admin','/admin/ajax/weigh','','{\"ids\":\"1,2,6,7,8,3,5,9,10,11,12,4,66,67,73,79,119,120,126,134,140,146,153,160,161,170,176,185,194,203,222,212,213,231\",\"changeid\":\"222\",\"pid\":\"212\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"auth_rule\",\"pk\":\"id\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138792),(198,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138793),(199,1,'admin','/admin/ajax/weigh','','{\"ids\":\"1,2,6,7,8,3,5,9,10,11,12,4,66,67,73,79,119,120,126,134,140,146,153,160,161,170,176,185,194,203,212,222,213,231\",\"changeid\":\"222\",\"pid\":\"212\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"auth_rule\",\"pk\":\"id\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138806),(200,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138806),(201,1,'admin','/admin/ajax/weigh','','{\"ids\":\"1,2,6,7,8,3,5,9,10,11,12,4,66,67,73,79,119,120,126,134,140,146,153,160,161,170,176,185,194,203,212,222,213,231\",\"changeid\":\"213\",\"pid\":\"212\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"auth_rule\",\"pk\":\"id\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138812),(202,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138812),(203,1,'admin','/admin/auth/rule/edit/ids/222?dialog=1','权限管理 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"212\",\"name\":\"dictionary\\/source\",\"title\":\"\\u6765\\u6e90\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"10\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"222\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138837),(204,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138838),(205,1,'admin','/admin/ajax/weigh','','{\"ids\":\"1,2,6,7,8,3,5,9,10,11,12,212,4,66,67,73,79,119,120,126,134,140,146,153,160,161,170,176,185,194,203,222,213,231\",\"changeid\":\"212\",\"pid\":\"0\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"auth_rule\",\"pk\":\"id\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138858),(206,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138858),(207,1,'admin','/admin/auth/rule/edit/ids/160?dialog=1','权限管理 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"dress\",\"title\":\"\\u793c\\u670d\\u7ba1\\u7406\",\"icon\":\"fa fa-list\",\"weigh\":\"120\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"160\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138882),(208,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138882),(209,1,'admin','/admin/auth/rule/edit/ids/212?dialog=1','权限管理 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"dictionary\",\"title\":\"\\u5b57\\u5178\\u7ba1\\u7406\",\"icon\":\"fa fa-list\",\"weigh\":\"119\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"212\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138902),(210,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573138902),(211,1,'admin','/admin/auth/rule/edit/ids/160?dialog=1','权限管理 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"dress\",\"title\":\"\\u793c\\u670d\\u7ba1\\u7406\",\"icon\":\"fa fa-connectdevelop\",\"weigh\":\"120\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"160\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139364),(212,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139365),(213,1,'admin','/admin/auth/rule/edit/ids/212?dialog=1','权限管理 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"dictionary\",\"title\":\"\\u5b57\\u5178\\u7ba1\\u7406\",\"icon\":\"fa fa-briefcase\",\"weigh\":\"119\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"212\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139423),(214,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139423),(215,1,'admin','/admin/command/del/ids/18,17,16,15','在线命令管理 删除','{\"action\":\"del\",\"ids\":\"18,17,16,15\",\"params\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139459),(216,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139485),(217,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_dress_size\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139489),(218,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_dress_size\",\"controller\":\"dictionary\\/Size\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139522),(219,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_dress_size\",\"controller\":\"dictionary\\/Size\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139524),(220,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139525),(221,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_payment\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139537),(222,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_payment\",\"controller\":\"dictionary\\/Payment\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139549),(223,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_payment\",\"controller\":\"dictionary\\/Payment\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139550),(224,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139550),(225,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_category_dress\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139569),(226,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_category_dress\",\"controller\":\"dictionary\\/dress\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139580),(227,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_category_dress\",\"controller\":\"dictionary\\/dress\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139581),(228,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139581),(229,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139584),(230,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139588),(231,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139589),(232,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139593),(233,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"dictionary\\/Size.php,dictionary\\/Dress.php,dictionary\\/Payment.php\",\"action\":\"command\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139595),(234,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"dictionary\\/Size.php,dictionary\\/Dress.php,dictionary\\/Payment.php\",\"action\":\"execute\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139595),(235,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139596),(236,1,'admin','/admin/auth/rule/edit/ids/249?dialog=1','权限管理 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"212\",\"name\":\"dictionary\\/dress\",\"title\":\"\\u793c\\u670d\\u5206\\u7c7b\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"249\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139625),(237,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139625),(238,1,'admin','/admin/auth/rule/edit/ids/258?dialog=1','权限管理 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"212\",\"name\":\"dictionary\\/payment\",\"title\":\"\\u652f\\u4ed8\\u65b9\\u5f0f\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"258\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139637),(239,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139637),(240,1,'admin','/admin/auth/rule/edit/ids/240?dialog=1','权限管理 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"212\",\"name\":\"dictionary\\/size\",\"title\":\"\\u793c\\u670d\\u5c3a\\u5bf8\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"240\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139650),(241,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139650),(242,1,'admin','/admin/ajax/weigh','','{\"ids\":\"1,2,6,7,8,160,161,170,176,185,194,203,3,212,222,213,258,231,240,249,5,9,10,11,12,4,66,67,73,79,119,120,126,134,140,146,153\",\"changeid\":\"258\",\"pid\":\"212\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"auth_rule\",\"pk\":\"id\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139669),(243,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139669),(244,1,'admin','/admin/ajax/weigh','','{\"ids\":\"1,2,6,7,8,160,161,170,176,185,194,203,3,212,258,222,213,231,240,249,5,9,10,11,12,4,66,67,73,79,119,120,126,134,140,146,153\",\"changeid\":\"258\",\"pid\":\"212\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"auth_rule\",\"pk\":\"id\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139680),(245,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139680),(246,1,'admin','/admin/auth/group/roletree','','{\"id\":\"2\",\"pid\":\"1\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139768),(247,1,'admin','/admin/auth/rule/multi/ids/4','','{\"action\":\"\",\"ids\":\"4\",\"params\":\"ismenu=0\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139914),(248,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139914),(249,1,'admin','/admin/ajax/weigh','','{\"ids\":\"1,2,6,7,8,160,161,170,176,185,194,203,212,258,213,222,231,240,249,5,9,10,11,12,4,66,67,73,79,119,120,126,134,140,146,153,3\",\"changeid\":\"3\",\"pid\":\"0\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"auth_rule\",\"pk\":\"id\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139923),(250,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573139923),(251,1,'admin','/admin/auth/rule/edit/ids/5?dialog=1','权限管理 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"auth\",\"title\":\"\\u7ec4\\u7ec7\\u67b6\\u6784\",\"icon\":\"fa fa-sitemap\",\"weigh\":\"119\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"5\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140230),(252,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140230),(253,1,'admin','/admin/auth/rule/edit/ids/160?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"dress\",\"title\":\"\\u793c\\u670d\\u7ba1\\u7406\",\"icon\":\"fa fa-connectdevelop\",\"weigh\":\"142\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"160\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140278),(254,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140278),(255,1,'admin','/admin/auth/rule/edit/ids/160?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"dress\",\"title\":\"\\u793c\\u670d\\u7ba1\\u7406\",\"icon\":\"fa fa-connectdevelop\",\"weigh\":\"136\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"160\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140304),(256,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140304),(257,1,'admin','/admin/auth/rule/edit/ids/212?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"dictionary\",\"title\":\"\\u5b57\\u5178\\u7ba1\\u7406\",\"icon\":\"fa fa-briefcase\",\"weigh\":\"135\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"212\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140318),(258,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140318),(259,1,'admin','/admin/index/login?url=%2Fadmin%2Fcategory%3Fref%3Daddtabs','Login','{\"url\":\"\\/admin\\/category?ref=addtabs\",\"__token__\":\"0113c6378396f2f6d2cf3f58b7272680\",\"username\":\"admin\",\"captcha\":\"nppm\"}','101.87.132.38','Mozilla/5.0 (iPhone; CPU iPhone OS 13_1_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/7.0.5(0x17000523) NetType/WIFI Language/en',1573140381),(260,1,'admin','/admin/command/del/ids/22,21,20,19','在线命令管理 删除','{\"action\":\"del\",\"ids\":\"22,21,20,19\",\"params\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140563),(261,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140565),(262,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_notice\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140586),(263,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_notice\",\"controller\":\"auth\\/Notice\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140618),(264,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_notice\",\"controller\":\"auth\\/Notice\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140619),(265,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140619),(266,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140623),(267,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140627),(268,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"auth\\/Notice.php\",\"action\":\"command\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140631),(269,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"auth\\/Notice.php\",\"action\":\"execute\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140632),(270,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140633),(271,1,'admin','/admin/auth/rule/edit/ids/267?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"5\",\"name\":\"auth\\/notice\",\"title\":\"\\u901a\\u77e5\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"267\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140655),(272,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140655),(273,1,'admin','/admin/auth/rule/edit/ids/12?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"5\",\"name\":\"auth\\/rule\",\"title\":\"\\u83dc\\u5355\\u89c4\\u5219\",\"icon\":\"fa fa-bars\",\"weigh\":\"104\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"12\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140672),(274,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140672),(275,1,'admin','/admin/auth/rule/edit/ids/10?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"5\",\"name\":\"auth\\/adminlog\",\"title\":\"\\u7ba1\\u7406\\u5458\\u65e5\\u5fd7\",\"icon\":\"fa fa-list-alt\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"Admin log tips\",\"status\":\"normal\"},\"ids\":\"10\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140785),(276,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573140785),(277,1,'admin','/admin/index/login?url=%2Fadmin%2Fcategory%3Fref%3Daddtabs','Login','{\"url\":\"\\/admin\\/category?ref=addtabs\",\"__token__\":\"b16af77404c286368cc78e6eeb8b1805\",\"username\":\"admin\",\"captcha\":\"kbdv\"}','101.87.132.38','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36',1573141385),(278,1,'admin','/admin/command/del/ids/24,23','在线命令管理 删除','{\"action\":\"del\",\"ids\":\"24,23\",\"params\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573141869),(279,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573141871),(280,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_leave\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573141915),(281,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_leave\",\"controller\":\"auth\\/Leave\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573141940),(282,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_leave\",\"controller\":\"auth\\/Leave\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573141941),(283,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573141941),(284,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573141945),(285,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573141949),(286,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573141952),(287,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"auth\\/Leave.php\",\"action\":\"command\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573141954),(288,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"auth\\/Leave.php\",\"action\":\"execute\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573141955),(289,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573141955),(290,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_position\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573141989),(291,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_position\",\"controller\":\"auth\\/Position\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573141997),(292,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_position\",\"controller\":\"auth\\/Position\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142001),(293,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142001),(294,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142006),(295,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142007),(296,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142007),(297,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"po\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"po\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142011),(298,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"Posit\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"Posit\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142014),(299,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142015),(300,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142016),(301,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"4\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142025),(302,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142027),(303,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142029),(304,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142035),(305,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142037),(306,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"auth\\/Position.php\",\"action\":\"command\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142040),(307,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"auth\\/Position.php\",\"action\":\"execute\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142040),(308,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142040),(309,1,'admin','/admin/auth/rule/edit/ids/276?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"5\",\"name\":\"auth\\/leave\",\"title\":\"\\u8bf7\\u5047\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"276\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142061),(310,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142061),(311,1,'admin','/admin/auth/rule/edit/ids/285?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"5\",\"name\":\"auth\\/position\",\"title\":\"\\u804c\\u4f4d\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"285\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142080),(312,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142080),(313,1,'admin','/admin/index/login?url=%2Fadmin%2Fdashboard%3Fref%3Daddtabs','登录','{\"url\":\"\\/admin\\/dashboard?ref=addtabs\",\"__token__\":\"c5aa45f85b04dd3890b55a817f0674f7\",\"username\":\"admin\",\"captcha\":\"2ghw\"}','101.88.49.78','Mozilla/5.0 (iPhone; CPU iPhone OS 12_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/7.0.8(0x17000820) NetType/WIFI Language/zh_CN',1573142699),(314,1,'admin','/admin/auth/rule/edit/ids/4?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"0\",\"pid\":\"0\",\"name\":\"addon\",\"title\":\"\\u63d2\\u4ef6\\u7ba1\\u7406\",\"icon\":\"fa fa-rocket\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"Addon tips\",\"status\":\"normal\"},\"ids\":\"4\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142707),(315,1,'admin','/admin/auth/rule/multi/ids/4','','{\"action\":\"\",\"ids\":\"4\",\"params\":\"ismenu=1\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142723),(316,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142723),(317,1,'admin','/admin/addon/install','插件管理 安装','{\"name\":\"geetest\",\"force\":\"0\",\"uid\":\"0\",\"token\":\"\",\"version\":\"1.0.0\",\"faversion\":\"1.0.0.20190705_beta\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142924),(318,1,'admin','/admin/addon/install','插件管理 安装','{\"name\":\"geetest\",\"force\":\"0\",\"uid\":\"0\",\"token\":\"\",\"version\":\"1.0.0\",\"faversion\":\"1.0.0.20190705_beta\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142933),(319,1,'admin','/admin/addon/install','插件管理 安装','{\"name\":\"geetest\",\"force\":\"0\",\"uid\":\"14698\",\"token\":\"1b5e3c99-4ced-4524-818b-a56444ca4836\",\"version\":\"1.0.0\",\"faversion\":\"1.0.0.20190705_beta\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142966),(320,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142967),(321,1,'admin','/admin/ajax/weigh','','{\"ids\":\"1,2,6,7,8,160,161,170,176,185,194,203,212,258,213,222,231,240,249,5,9,11,12,10,267,276,285,3,66,67,73,79,119,120,126,134,140,146,153,4\",\"changeid\":\"4\",\"pid\":\"0\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"auth_rule\",\"pk\":\"id\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142998),(322,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573142998),(323,1,'admin','/admin/ajax/weigh','','{\"ids\":\"1,2,6,7,8,160,161,170,176,185,194,203,212,258,213,222,231,240,249,5,9,11,12,10,267,276,285,3,66,67,73,79,119,120,126,134,140,146,4,153\",\"changeid\":\"4\",\"pid\":\"0\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"auth_rule\",\"pk\":\"id\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143011),(324,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143011),(325,1,'admin','/admin/auth/rule/edit/ids/3?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"0\",\"pid\":\"0\",\"name\":\"category\",\"title\":\"\\u5206\\u7c7b\\u7ba1\\u7406\",\"icon\":\"fa fa-leaf\",\"weigh\":\"10\",\"condition\":\"\",\"remark\":\"Category tips\",\"status\":\"normal\"},\"ids\":\"3\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143030),(326,1,'admin','/admin/auth/rule/multi/ids/4','','{\"action\":\"\",\"ids\":\"4\",\"params\":\"ismenu=0\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143046),(327,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143047),(328,1,'admin','/admin/index/login','登录','{\"__token__\":\"63845cfc69e362b1e9780b34b7a4e6f1\",\"username\":\"admin\",\"captcha\":\"ecvh\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143072),(329,1,'admin','/admin/auth/rule/multi/ids/4','','{\"action\":\"\",\"ids\":\"4\",\"params\":\"ismenu=1\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143089),(330,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143089),(331,1,'admin','/admin/addon/config?name=geetest&dialog=1','插件管理 配置','{\"name\":\"geetest\",\"dialog\":\"1\",\"row\":{\"appid\":\"48a6ebac4ebc6642d68c217fca33eb4d\",\"appkey\":\"4f1c085290bec5afdc54df73535fc361\",\"product\":\"embed\"}}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143104),(332,0,'Unknown','/admin/index/login.html','','{\"__token__\":\"719b236f6fedc0d888c75f5f3296726b\",\"username\":\"admin\",\"captcha\":\"jizf\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143259),(333,0,'Unknown','/admin/index/login.html','','{\"__token__\":\"6c6cf5e31fd55dc22eb523f5dc065d6e\",\"username\":\"admin\",\"captcha\":\"iiym\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143267),(334,0,'Unknown','/admin/index/login.html','','{\"__token__\":\"7c52ebf7e27c4e3ce0541a98e9fcbda1\",\"username\":\"admin\",\"captcha\":\"iiym\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143268),(335,1,'admin','/admin/index/login.html?1','登录','{\"0\":\"\",\"__token__\":\"592d4619534ab518d4280a7343f1910f\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"0a0655089cf2023bbca9f3aaa2c68b338m\",\"geetest_validate\":\"7caef8036167d203ee3999c89f8d8d57\",\"geetest_seccode\":\"7caef8036167d203ee3999c89f8d8d57|jordan\",\"1\":\"\",\"2\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143423),(336,1,'admin','/admin/command/del/ids/28,27,26,25','在线命令管理 删除','{\"action\":\"del\",\"ids\":\"28,27,26,25\",\"params\":\"\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143672),(337,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143674),(338,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_department\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143680),(339,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_department\",\"controller\":\"auth\\/Department\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143694),(340,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_department\",\"controller\":\"auth\\/Department\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"status\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143694),(341,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143695),(342,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143697),(343,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"d\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"d\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143699),(344,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143702),(345,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"auth\\/Department.php\",\"action\":\"command\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143704),(346,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"auth\\/Department.php\",\"action\":\"execute\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143705),(347,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143705),(348,1,'admin','/admin/command/del/ids/30,29','在线命令管理 删除','{\"action\":\"del\",\"ids\":\"30,29\",\"params\":\"\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143712),(349,1,'admin','/admin/auth/rule/multi/ids/4','','{\"action\":\"\",\"ids\":\"4\",\"params\":\"ismenu=0\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143764),(350,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143764),(351,1,'admin','/admin/auth/rule/edit/ids/294?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"5\",\"name\":\"auth\\/department\",\"title\":\"\\u90e8\\u95e8\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"294\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143821),(352,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143821),(353,1,'admin','/admin/auth/rule/edit/ids/294?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"5\",\"name\":\"auth\\/department\",\"title\":\"\\u90e8\\u95e8\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"100\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"294\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143861),(354,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143861),(355,1,'admin','/admin/auth/rule/edit/ids/9?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"5\",\"name\":\"auth\\/admin\",\"title\":\"\\u7ba1\\u7406\\u5458\\u7ba1\\u7406\",\"icon\":\"fa fa-user\",\"weigh\":\"99\",\"condition\":\"\",\"remark\":\"Admin tips\",\"status\":\"normal\"},\"ids\":\"9\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143871),(356,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143871),(357,1,'admin','/admin/auth/rule/edit/ids/285?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"5\",\"name\":\"auth\\/position\",\"title\":\"\\u804c\\u4f4d\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"98\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"285\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143919),(358,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143919),(359,1,'admin','/admin/auth/rule/edit/ids/11?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"5\",\"name\":\"auth\\/group\",\"title\":\"\\u89d2\\u8272\\u7ec4\",\"icon\":\"fa fa-group\",\"weigh\":\"97\",\"condition\":\"\",\"remark\":\"Group tips\",\"status\":\"normal\"},\"ids\":\"11\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143937),(360,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143937),(361,1,'admin','/admin/auth/rule/edit/ids/12?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"5\",\"name\":\"auth\\/rule\",\"title\":\"\\u83dc\\u5355\\u89c4\\u5219\",\"icon\":\"fa fa-bars\",\"weigh\":\"1\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"12\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143945),(362,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143945),(363,1,'admin','/admin/auth/rule/edit/ids/12?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"5\",\"name\":\"auth\\/rule\",\"title\":\"\\u83dc\\u5355\\u89c4\\u5219\",\"icon\":\"fa fa-bars\",\"weigh\":\"96\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"12\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143984),(364,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143984),(365,1,'admin','/admin/auth/rule/edit/ids/12?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"5\",\"name\":\"auth\\/rule\",\"title\":\"\\u83dc\\u5355\\u89c4\\u5219\",\"icon\":\"fa fa-bars\",\"weigh\":\"90\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"12\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143997),(366,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573143997),(367,1,'admin','/admin/auth/rule/edit/ids/267?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"5\",\"name\":\"auth\\/notice\",\"title\":\"\\u901a\\u77e5\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"95\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"267\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573144006),(368,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573144006),(369,1,'admin','/admin/auth/rule/edit/ids/276?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"5\",\"name\":\"auth\\/leave\",\"title\":\"\\u8bf7\\u5047\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"94\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"276\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573144013),(370,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573144013),(371,1,'admin','/admin/auth/rule/edit/ids/267?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"5\",\"name\":\"auth\\/notice\",\"title\":\"\\u901a\\u77e5\\u7ba1\\u7406\",\"icon\":\"fa fa-bell\",\"weigh\":\"95\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"267\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573144052),(372,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573144052),(373,1,'admin','/admin/auth/rule/edit/ids/276?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"5\",\"name\":\"auth\\/leave\",\"title\":\"\\u8bf7\\u5047\\u7ba1\\u7406\",\"icon\":\"fa fa-bookmark\",\"weigh\":\"94\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"276\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573144068),(374,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573144069),(375,1,'admin','/admin/auth/rule/edit/ids/294?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"5\",\"name\":\"auth\\/department\",\"title\":\"\\u90e8\\u95e8\\u7ba1\\u7406\",\"icon\":\"fa fa-bank\",\"weigh\":\"100\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"294\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573144087),(376,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573144087),(377,1,'admin','/admin/auth/rule/edit/ids/258?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"212\",\"name\":\"dictionary\\/payment\",\"title\":\"\\u652f\\u4ed8\\u65b9\\u5f0f\",\"icon\":\"fa fa-cubes\",\"weigh\":\"10\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"258\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573144202),(378,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573144203),(379,1,'admin','/admin/auth/rule/edit/ids/213?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"212\",\"name\":\"dictionary\\/notice\",\"title\":\"\\u901a\\u77e5\\u7c7b\\u578b\",\"icon\":\"fa fa-bell-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"213\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573144222),(380,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573144222),(381,1,'admin','/admin/auth/rule/edit/ids/222?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"212\",\"name\":\"dictionary\\/source\",\"title\":\"\\u6765\\u6e90\\u7ba1\\u7406\",\"icon\":\"fa fa-automobile\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"222\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573144253),(382,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573144253),(383,1,'admin','/admin/auth/rule/edit/ids/231?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"212\",\"name\":\"dictionary\\/leave\",\"title\":\"\\u8bf7\\u5047\\u7c7b\\u578b\",\"icon\":\"fa fa-at\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"231\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573144271),(384,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573144271),(385,1,'admin','/admin/auth/rule/edit/ids/240?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"212\",\"name\":\"dictionary\\/size\",\"title\":\"\\u793c\\u670d\\u5c3a\\u5bf8\",\"icon\":\"fa fa-calculator\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"240\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573144287),(386,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573144287),(387,1,'admin','/admin/auth/rule/edit/ids/249?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"212\",\"name\":\"dictionary\\/dress\",\"title\":\"\\u793c\\u670d\\u5206\\u7c7b\",\"icon\":\"fa fa-adjust\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"249\"}','220.112.125.98','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573144301),(388,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','220.112.124.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36',1573144301),(389,1,'admin','/admin/index/login?url=%2Fadmin%2Fcategory%3Fref%3Daddtabs','Login','{\"url\":\"\\/admin\\/category?ref=addtabs\",\"__token__\":\"1a2c7751a46b678ef3f63b33fafc6fb6\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"d12f2c5b94b0dbebfd66273058acae8cci\",\"geetest_validate\":\"193bba2cf06106141675dbafc7b7d4a0\",\"geetest_seccode\":\"193bba2cf06106141675dbafc7b7d4a0|jordan\"}','124.79.76.61','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',1573278846),(390,0,'Unknown','/admin/index/login?url=%2Fadmin%2Fcategory%3Fref%3Daddtabs','','{\"url\":\"\\/admin\\/category?ref=addtabs\",\"__token__\":\"bfc607a625636e645ca54fea46847dbf\",\"username\":\"admin\",\"captcha\":\"\"}','112.97.246.180','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',1573527594),(391,1,'admin','/admin/index/login?url=%2Fadmin%2Fcategory%3Fref%3Daddtabs','登录','{\"url\":\"\\/admin\\/category?ref=addtabs\",\"__token__\":\"7dcc4e74f9d0231b24468c10f79b8d2a\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"5b5c58d78790e4a3f9b7a095b2b8495b5n\",\"geetest_validate\":\"442c491ebbbd190d519a074da0b8e9c2\",\"geetest_seccode\":\"442c491ebbbd190d519a074da0b8e9c2|jordan\"}','112.97.246.180','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',1573527602),(392,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"c85ea2e8817849bbffcfd651d38fe261\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"71e36c1e134d0c5a2260f12146758152i3\",\"geetest_validate\":\"a63eed3a3cd59100facfcc1b4df3a7a4\",\"geetest_seccode\":\"a63eed3a3cd59100facfcc1b4df3a7a4|jordan\"}','180.158.12.42','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',1573543712),(393,1,'admin','/admin/index/login?url=%2Fadmin%2Fcategory%3Fref%3Daddtabs','登录','{\"url\":\"\\/admin\\/category?ref=addtabs\",\"__token__\":\"39415ca3b180977f067691615d10403b\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"f67801aaf54584ebe082535abbc09e844b\",\"geetest_validate\":\"a496c6d70d213d852969001eaed955de\",\"geetest_seccode\":\"a496c6d70d213d852969001eaed955de|jordan\"}','114.249.0.18','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',1573609794),(394,1,'admin','/admin/index/login?url=%2Fadmin%2Fcategory%3Fref%3Daddtabs','登录','{\"url\":\"\\/admin\\/category?ref=addtabs\",\"__token__\":\"c646ae42e9545df2ab4f861e42376c74\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"948fbdcc78b96a3d3b4bb0a69f9f3044d2\",\"geetest_validate\":\"4a5b1de1c7de3b6a64f9d5d9fe5063dc\",\"geetest_seccode\":\"4a5b1de1c7de3b6a64f9d5d9fe5063dc|jordan\"}','123.117.65.79','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',1573626696),(395,1,'admin','/admin/index/login?url=%2Fadmin%2Fcategory%3Fref%3Daddtabs','登录','{\"url\":\"\\/admin\\/category?ref=addtabs\",\"__token__\":\"2d24c69dfa7afcef777c67037ebfda46\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"1774803fa453478e3cb5d6600b7cf204cc\",\"geetest_validate\":\"4283df11f272953d05c3ebb7405525bf\",\"geetest_seccode\":\"4283df11f272953d05c3ebb7405525bf|jordan\"}','101.87.132.38','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',1573959597),(396,1,'admin','/admin/index/login?url=%2Fadmin%2Fcategory%3Fref%3Daddtabs','登录','{\"url\":\"\\/admin\\/category?ref=addtabs\",\"__token__\":\"15710a5f3cd7d4dd50aa04782e819032\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"d57f1594e563b70fa98f4ad05aedd0935v\",\"geetest_validate\":\"e32ea1f9fc63b7cd6e73c44834728ee0\",\"geetest_seccode\":\"e32ea1f9fc63b7cd6e73c44834728ee0|jordan\"}','101.87.132.38','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',1573997203),(397,1,'admin','/admin/index/login?url=%2Fadmin%2Findex%2Findex','登录','{\"url\":\"\\/admin\\/index\\/index\",\"__token__\":\"8541fc0e5ee864d4dcb8e2661cfb6901\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"85eafb18f6209708ac0139bb348af711f5\",\"geetest_validate\":\"41598c434f43b290b9ad5117df1a3260\",\"geetest_seccode\":\"41598c434f43b290b9ad5117df1a3260|jordan\"}','124.14.45.60','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',1574818641),(398,1,'admin','/admin/auth/rule/multi/ids/119','','{\"action\":\"\",\"ids\":\"119\",\"params\":\"ismenu=1\"}','124.14.45.60','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',1574821137),(399,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','124.14.45.60','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',1574821137),(400,1,'admin','/admin/litestorecategory/selectpage','','{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"8\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"8\",\"searchField\":[\"name\"]}','124.14.45.60','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',1574821163),(401,1,'admin','/admin/litestoregoods/edit/ids/23?dialog=1','小程序商城 商品设置 修改','{\"dialog\":\"1\",\"row\":{\"goods_name\":\"MacBook Pro 13\\u5bf8\",\"category_id\":\"8\",\"images\":\"https:\\/\\/her-family.oss-cn-qingdao.aliyuncs.com\\/addons_store_uploads\\/20181105\\/eaccd76080ed9e7ece7642694e734885.png,https:\\/\\/her-family.oss-cn-qingdao.aliyuncs.com\\/addons_store_uploads\\/20181105\\/85587c2e045b71fb4c977884a19a36cb.jpg,https:\\/\\/her-family.oss-cn-qingdao.aliyuncs.com\\/addons_store_uploads\\/20181105\\/efb53c4c7814c83aa3c21e0fd408b5df.jpg\",\"spec_type\":\"20\",\"deduct_stock_type\":\"20\",\"content\":\"- <p><img src=\\\"https:\\/\\/her-family.oss-cn-qingdao.aliyuncs.com\\/addons_store_uploads\\/20181105\\/43b7a84d68a15d9058971526068a853a.jpg\\\" data-filename=\\\"filename\\\" style=\\\"width: 603px;\\\"><br><\\/p>\",\"sales_initial\":\"0\",\"sales_actual\":\"12\",\"goods_sort\":\"23\",\"delivery_id\":\"23\",\"goods_status\":\"10\",\"is_delete\":\"0\"},\"goods_no\":\"mac_0002\",\"goods_price\":\"12688.00\",\"line_price\":\"0.00\",\"stock_num\":\"997\",\"goods_weight\":\"1.2\",\"spec_image\":\"\",\"spec\":{\"goods_no\":\"mac_0001\",\"goods_price\":\"12688.00\",\"line_price\":\"0.00\",\"stock_num\":\"989\",\"goods_weight\":\"1.2\"},\"spec_many\":{\"spec_attr\":[{\"group_id\":\"20\",\"group_name\":\"\\u989c\\u8272\",\"spec_items\":[{\"item_id\":\"48\",\"spec_value\":\"\\u5929\\u7a7a\\u7070\"},{\"item_id\":\"49\",\"spec_value\":\"\\u94f6\\u8272\"}]}],\"spec_list\":[{\"spec_sku_id\":\"48\",\"rows\":[{\"rowspan\":\"1\",\"item_id\":\"48\",\"spec_value\":\"\\u5929\\u7a7a\\u7070\"}],\"form\":{\"goods_no\":\"mac_0001\",\"goods_price\":\"12688.00\",\"goods_weight\":\"1.2\",\"line_price\":\"0.00\",\"stock_num\":\"989\",\"spec_image\":\"\"}},{\"spec_sku_id\":\"49\",\"rows\":[{\"rowspan\":\"1\",\"item_id\":\"49\",\"spec_value\":\"\\u94f6\\u8272\"}],\"form\":{\"goods_no\":\"mac_0002\",\"goods_price\":\"12688.00\",\"goods_weight\":\"1.2\",\"line_price\":\"0.00\",\"stock_num\":\"997\",\"spec_image\":\"\"}}]},\"ids\":\"23\"}','124.14.45.60','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',1574821262),(402,1,'admin','/admin/litestorecategory/selectpage','','{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"8\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"8\",\"searchField\":[\"name\"]}','124.14.45.60','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',1574821265),(403,1,'admin','/admin/litestoregoods/addSpec','','{\"spec_name\":\"\\u5c3a\\u5bf8\",\"spec_value\":\"L\"}','124.14.45.60','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',1574821294),(404,1,'admin','/admin/litestoregoods/addSpecValue','','{\"spec_id\":\"23\",\"spec_value\":\"XL\"}','124.14.45.60','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',1574821312),(405,1,'admin','/admin/litestoregoods/addSpecValue','','{\"spec_id\":\"23\",\"spec_value\":\"XXL\"}','124.14.45.60','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',1574821318),(406,1,'admin','/admin/litestorecategory/selectpage','','{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"5\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"5\",\"searchField\":[\"name\"]}','124.14.45.60','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',1574821416),(407,1,'admin','/admin/litestorecategory/selectpage','','{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"5\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"5\",\"searchField\":[\"name\"]}','124.14.45.60','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',1574821427),(408,1,'admin','/admin/litestorecategory/selectpage','','{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"8\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"8\",\"searchField\":[\"name\"]}','124.14.45.60','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',1574821608),(409,0,'Unknown','/admin/index/login.html','登录','{\"__token__\":\"ff4d8161c0e1f9b7c08f0f8b70cddd24\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"6c880c30eaae6cd80928550ade4129857g\",\"geetest_validate\":\"a841b1e6d26da535b005225410cf8879\",\"geetest_seccode\":\"a841b1e6d26da535b005225410cf8879|jordan\"}','124.14.45.60','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',1574853679),(410,0,'Unknown','/admin/index/login.html','','{\"__token__\":\"9740cb45eb3a1449e451fc14de6b395d\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"\",\"geetest_validate\":\"\",\"geetest_seccode\":\"\"}','124.14.45.60','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',1574853690),(411,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"8797dc6033238ccbe1b5b28367e79560\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"62bc29e098c99fc932957702f5f13a19kl\",\"geetest_validate\":\"906703a1dfeaced13930884319b78e3e\",\"geetest_seccode\":\"906703a1dfeaced13930884319b78e3e|jordan\"}','124.14.45.60','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',1574853696),(412,1,'admin','/admin/index/login?url=%2Fadmin%2Fdress%2Fdress%3Fref%3Daddtabs','登录','{\"url\":\"\\/admin\\/dress\\/dress?ref=addtabs\",\"__token__\":\"07eec148b04141dd3bc7af780cfd94d5\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"a46b488b99d1359357f21290f9bc4a9f88\",\"geetest_validate\":\"8354f7b90f22b752e40e5e5c74632f85\",\"geetest_seccode\":\"8354f7b90f22b752e40e5e5c74632f85|jordan\"}','223.104.213.206','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575019099),(413,1,'admin','/admin/litestorecategory/selectpage','','{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"7\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"7\",\"searchField\":[\"name\"]}','223.104.213.206','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575020324),(414,1,'admin','/admin/litestorecategory/selectpage','','{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"8\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"8\",\"searchField\":[\"name\"]}','223.104.213.206','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575020337),(415,1,'admin','/admin/litestoregoods/addSpec','','{\"spec_name\":\"\\u5c3a\\u7801\",\"spec_value\":\"L\"}','223.104.213.206','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575020359),(416,1,'admin','/admin/litestoregoods/addSpecValue','','{\"spec_id\":\"24\",\"spec_value\":\"XL\"}','223.104.213.206','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575020365),(417,1,'admin','/admin/litestoregoods/addSpecValue','','{\"spec_id\":\"24\",\"spec_value\":\"XXL\"}','223.104.213.206','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575020372),(418,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"2bf4eeb70f57aebca7687ed22cb7e7ef\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"1d374a46509cdc381e79eeb76971a07f3b\",\"geetest_validate\":\"62fad6252edd9cad50d9a82de48638a5\",\"geetest_seccode\":\"62fad6252edd9cad50d9a82de48638a5|jordan\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575437572),(419,1,'admin','/admin/auth/group/roletree','','{\"pid\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575439041),(420,1,'admin','/admin/litestorecategory/selectpage','','{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"8\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"8\",\"searchField\":[\"name\"]}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575521379),(421,1,'admin','/admin/litestoregoods/addSpec','','{\"spec_name\":\"\\u5c3a\\u7801\",\"spec_value\":\"L\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575521394),(422,1,'admin','/admin/litestoregoods/addSpecValue','','{\"spec_id\":\"24\",\"spec_value\":\"XL\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575521402),(423,1,'admin','/admin/litestoregoods/addSpecValue','','{\"spec_id\":\"24\",\"spec_value\":\"XXL\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575521406),(424,1,'admin','/admin/litestoregoods/addSpec','','{\"spec_name\":\"\\u989c\\u8272\",\"spec_value\":\"\\u7ea2\\u8272\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575521447),(425,1,'admin','/admin/litestoregoods/addSpecValue','','{\"spec_id\":\"20\",\"spec_value\":\"\\u84dd\\u8272\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575521452),(426,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970021),(427,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_order\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970043),(428,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_order\",\"controller\":\"order\\/Order\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970105),(429,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_order\",\"controller\":\"order\\/Order\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970107),(430,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970107),(431,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970117),(432,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970120),(433,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"order\\/Order.php\",\"action\":\"command\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970127),(434,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"order\\/Order.php\",\"action\":\"execute\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970128),(435,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970128),(436,1,'admin','/admin/auth/rule/edit/ids/303?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"order\",\"title\":\"order\",\"icon\":\"fa fa-list\",\"weigh\":\"120\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"303\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970224),(437,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970224),(438,1,'admin','/admin/auth/rule/edit/ids/160?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"dress\",\"title\":\"\\u793c\\u670d\\u7ba1\\u7406\",\"icon\":\"fa fa-connectdevelop\",\"weigh\":\"130\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"160\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970266),(439,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970266),(440,1,'admin','/admin/auth/rule/edit/ids/160?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"dress\",\"title\":\"\\u793c\\u670d\\u7ba1\\u7406\",\"icon\":\"fa fa-connectdevelop\",\"weigh\":\"136\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"160\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970290),(441,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970290),(442,1,'admin','/admin/auth/rule/edit/ids/303?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"order\",\"title\":\"order\",\"icon\":\"fa fa-list\",\"weigh\":\"137\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"303\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970304),(443,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970304),(444,1,'admin','/admin/auth/rule/edit/ids/303?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"order\",\"title\":\"\\u8ba2\\u5355\\u7ba1\\u7406\",\"icon\":\"fa fa-list\",\"weigh\":\"137\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"303\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970320),(445,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970320),(446,1,'admin','/admin/auth/rule/edit/ids/304?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"303\",\"name\":\"order\\/order\",\"title\":\"\\u79df\\u8d41\\u8ba2\\u5355\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"304\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970339),(447,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970339),(448,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970362),(449,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970673),(450,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_admin\",\"controller\":\"Order\\/sale\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970750),(451,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_admin\",\"controller\":\"Order\\/sale\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970752),(452,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970752),(453,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_admin\",\"controller\":\"Order\\/rent\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970763),(454,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970763),(455,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970770),(456,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970777),(457,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970783),(458,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970783),(459,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970783),(460,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970790),(461,1,'admin','/admin/command/get_controller_list','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970792),(462,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"order\\/Sale.php,order\\/Rent.php\",\"action\":\"command\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970795),(463,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"order\\/Sale.php,order\\/Rent.php\",\"action\":\"execute\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970796),(464,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970796),(465,1,'admin','/admin/auth/rule/del/ids/304','组织架构 菜单规则 删除','{\"action\":\"del\",\"ids\":\"304\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970817),(466,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970817),(467,1,'admin','/admin/auth/rule/edit/ids/316?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"303\",\"name\":\"order\\/rent\",\"title\":\"\\u79df\\u8d41\\u8ba2\\u5355\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"316\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970838),(468,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970839),(469,1,'admin','/admin/auth/rule/edit/ids/316?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"303\",\"name\":\"order\\/rent\",\"title\":\"\\u79df\\u8d41\\u8ba2\\u5355\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"100\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"316\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970849),(470,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970849),(471,1,'admin','/admin/auth/rule/edit/ids/310?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"303\",\"name\":\"order\\/sale\",\"title\":\"\\u9500\\u552e\\u8ba2\\u5355\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"99\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"310\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970866),(472,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575970866),(473,1,'admin','/admin/command/del/ids/35,34,33,32,31','在线命令管理 删除','{\"action\":\"del\",\"ids\":\"35,34,33,32,31\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575971006),(474,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575971008),(475,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_order\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575971020),(476,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_order\",\"controller\":\"Order\\/rent\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575971029),(477,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"dr_order\",\"controller\":\"Order\\/rent\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575971030),(478,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575971030),(479,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"dr_order\",\"controller\":\"Order\\/rent\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575971040),(480,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575971040),(481,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"dr_order\",\"controller\":\"Order\\/sale\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575971049),(482,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575971049),(483,1,'admin','/admin/command/command/action/command','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"dr_order\",\"controller\":\"Order\\/sale\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575971053),(484,1,'admin','/admin/command/command/action/execute','','{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"dr_order\",\"controller\":\"Order\\/sale\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575971054),(485,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1575971054),(486,1,'admin','/admin/index/login?url=%2Fadmin%2Fdashboard%3Fref%3Daddtabs','登录','{\"url\":\"\\/admin\\/dashboard?ref=addtabs\",\"__token__\":\"14f98d78dfb5235cb994b82b1cad5350\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"cbe8633f2f9b5c5d4a876da842b485a4aa\",\"geetest_validate\":\"720ce2bd59bbbaaa5480274be78b5520\",\"geetest_seccode\":\"720ce2bd59bbbaaa5480274be78b5520|jordan\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1576737430),(487,1,'admin','/admin/auth/group/roletree','','{\"pid\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1576737588),(488,1,'admin','/admin/auth/group/add?dialog=1','组织架构 角色组 添加','{\"dialog\":\"1\",\"row\":{\"rules\":\"\",\"pid\":\"1\",\"name\":\"\\u5e97\\u957f\",\"status\":\"normal\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1576737610),(489,1,'admin','/admin/auth/group/roletree','','{\"pid\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1576737622),(490,1,'admin','/admin/auth/group/add?dialog=1','组织架构 角色组 添加','{\"dialog\":\"1\",\"row\":{\"rules\":\"\",\"pid\":\"1\",\"name\":\"\\u793c\\u670d\\u5e08\",\"status\":\"normal\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1576737626),(491,1,'admin','/admin/auth/group/roletree','','{\"pid\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1576737629),(492,1,'admin','/admin/auth/group/roletree','','{\"pid\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1576737638),(493,1,'admin','/admin/auth/group/add?dialog=1','组织架构 角色组 添加','{\"dialog\":\"1\",\"row\":{\"rules\":\"\",\"pid\":\"1\",\"name\":\"\\u9080\\u7ea6\",\"status\":\"normal\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1576737643),(494,1,'admin','/admin/auth/group/roletree','','{\"pid\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1576737646),(495,1,'admin','/admin/auth/group/add?dialog=1','组织架构 角色组 添加','{\"dialog\":\"1\",\"row\":{\"rules\":\"\",\"pid\":\"1\",\"name\":\"\\u63a8\\u5e7f\",\"status\":\"normal\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1576737665),(496,1,'admin','/admin/auth/group/roletree','','{\"pid\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1576737668),(497,1,'admin','/admin/auth/group/add?dialog=1','组织架构 角色组 添加','{\"dialog\":\"1\",\"row\":{\"rules\":\"\",\"pid\":\"1\",\"name\":\"\\u4f9b\\u5e94\\u5546\",\"status\":\"normal\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1576737693),(498,1,'admin','/admin/auth/group/roletree','','{\"pid\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1576737695),(499,1,'admin','/admin/auth/group/roletree','','{\"pid\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1576737705),(500,1,'admin','/admin/auth/group/add?dialog=1','组织架构 角色组 添加','{\"dialog\":\"1\",\"row\":{\"rules\":\"\",\"pid\":\"1\",\"name\":\"\\u8001\\u677f\",\"status\":\"normal\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1576737709),(501,1,'admin','/admin/auth/group/roletree','','{\"id\":\"6\",\"pid\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1576737717),(502,1,'admin','/admin/auth/group/edit/ids/6?dialog=1','组织架构 角色组 编辑','{\"dialog\":\"1\",\"row\":{\"rules\":\"160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,303,310,311,312,313,314,315,316,317,318,319,320,321\",\"pid\":\"1\",\"name\":\"\\u5e97\\u957f\",\"status\":\"normal\"},\"ids\":\"6\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1576737725),(503,1,'admin','/admin/auth/admin/add?dialog=1','组织架构 管理员管理 添加','{\"dialog\":\"1\",\"group\":[\"6\"],\"row\":{\"username\":\"manager\",\"email\":\"liucunzhou@163.com\",\"nickname\":\"\\u5e97\\u957f\",\"password\":\"Lcz19860109+\",\"status\":\"normal\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1576737783),(504,2,'manager','/admin/index/login?url=%2Fadmin','登录','{\"url\":\"\\/admin\",\"__token__\":\"cb13b9deb36a4161b08b560a7c93ed79\",\"username\":\"manager\",\"captcha\":\"ok\",\"geetest_challenge\":\"def656a7d9e440c3a34b703c799ec7b5la\",\"geetest_validate\":\"8c7fc75d2436f850e4ac6b98e0f4d307\",\"geetest_seccode\":\"8c7fc75d2436f850e4ac6b98e0f4d307|jordan\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1576737833),(505,1,'admin','/admin/command/del/ids/39,38,37,36','在线命令管理 删除','{\"action\":\"del\",\"ids\":\"39,38,37,36\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1576738563),(506,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577500863),(507,1,'admin','/admin/user/user/add?dialog=1','会员管理 会员管理 添加','{\"dialog\":\"1\",\"row\":{\"group_id\":\"1\",\"username\":\"liucunzhou\",\"mobile\":\"18321277411\",\"gender\":\"1\",\"birthday\":\"2019-12-28\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577503859),(508,1,'admin','/admin/dress/dress_package/add?dialog=1','礼服管理 礼服套餐 添加','{\"dialog\":\"1\",\"row\":{\"title\":\"588\",\"rent_price\":\"588\",\"sale_price\":\"588\",\"remark\":\"\\u5b9a\\u5236698\\u886c\\u886b+\\u5a5a\\u978b+\\u76ae\\u978b\",\"status\":\"\",\"weigh\":\"\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577504938),(509,1,'admin','/admin/dress/dress_package/add?dialog=1','礼服管理 礼服套餐 添加','{\"dialog\":\"1\",\"row\":{\"title\":\"9999\",\"rent_price\":\"9999\",\"sale_price\":\"9999\",\"remark\":\"\\u5b9a\\u52366980\\u5143\\u897f\\u670d+\\u79df\\u8d4128888\\u4e3b\\u7eb1+\\u51fa\\u95e8\\u670d+\\u9f50\\u5730\\u7eb1+\\u656c\\u9152\\u670d\",\"status\":\"\",\"weigh\":\"\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577504974),(510,1,'admin','/admin/dress/dress_package/add?dialog=1','礼服管理 礼服套餐 添加','{\"dialog\":\"1\",\"row\":{\"title\":\"4999\",\"rent_price\":\"4999\",\"sale_price\":\"4999\",\"remark\":\"\\u5b9a\\u52366980\\u5143\\u897f\\u670d+\\u79df\\u8d41\\u9f50\\u5730\\u7eb1+\\u656c\\u9152\\u670d\",\"status\":\"\",\"weigh\":\"\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577504997),(511,1,'admin','/admin/dress/dress_package/add?dialog=1','礼服管理 礼服套餐 添加','{\"dialog\":\"1\",\"row\":{\"title\":\"8999\",\"rent_price\":\"8999\",\"sale_price\":\"8999\",\"remark\":\"\\u5b9a\\u52366980\\u5143\\u897f\\u670d+\\u79df\\u8d4128888\\u5143\\u4e3b\\u7eb1+\\u51fa\\u95e8\\u670d+\\u656c\\u9152\\u670d\",\"status\":\"\",\"weigh\":\"\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577505026),(512,0,'Unknown','/admin/index/login.html','登录','{\"__token__\":\"064e76774df191c26b7ebdef1230ef70\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"d28d4fd67ef2ea86211c4e6b9e1edcbd4h\",\"geetest_validate\":\"33251fab04797d258706240ae0e1618e\",\"geetest_seccode\":\"33251fab04797d258706240ae0e1618e|jordan\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577507476),(513,0,'Unknown','/admin/index/login.html','登录','{\"__token__\":\"83e5b22439100a0a8c4db890ac39c167\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"721e7c8584fb4a150427e9ad2a48b53bi7\",\"geetest_validate\":\"4de7a47f23b09aaff4a904d34b1ab902\",\"geetest_seccode\":\"4de7a47f23b09aaff4a904d34b1ab902|jordan\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577507483),(514,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"a66c759a849dd018d3688156e6470208\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"0fbb248e36dc12f7b34d65ff92c70dd94d\",\"geetest_validate\":\"d7dfd350dbaba97c911cffd7a7ff5350\",\"geetest_seccode\":\"d7dfd350dbaba97c911cffd7a7ff5350|jordan\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577507502),(515,1,'admin','/admin/auth/rule/edit/ids/119?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"litestore\",\"title\":\"\\u793c\\u670d\\u7ba1\\u7406\",\"icon\":\"fa fa-shopping-basket\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"119\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577509627),(516,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577509627),(517,1,'admin','/admin/auth/rule/edit/ids/126?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"119\",\"name\":\"litestoregoods\",\"title\":\"\\u793c\\u670d\\u5217\\u8868\",\"icon\":\"fa fa-gift\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"126\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577509645),(518,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577509645),(519,1,'admin','/admin/auth/rule/del/ids/140','组织架构 菜单规则 删除','{\"action\":\"del\",\"ids\":\"140\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577509664),(520,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577509664),(521,1,'admin','/admin/auth/rule/del/ids/146','组织架构 菜单规则 删除','{\"action\":\"del\",\"ids\":\"146\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577509669),(522,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577509669),(523,1,'admin','/admin/auth/rule/del/ids/120','组织架构 菜单规则 删除','{\"action\":\"del\",\"ids\":\"120\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577509680),(524,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577509680),(525,1,'admin','/admin/auth/rule/edit/ids/119?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"litestore\",\"title\":\"\\u793c\\u670d\\u7ba1\\u7406\",\"icon\":\"fa fa-shopping-basket\",\"weigh\":\"137\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"119\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577509707),(526,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577509707),(527,1,'admin','/admin/auth/rule/edit/ids/170?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"160\",\"name\":\"litestore\\/dress_set\",\"title\":\"\\u793c\\u670d\\u7ec4\\u5408\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"170\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577509792),(528,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577509792),(529,1,'admin','/admin/auth/rule/edit/ids/134?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"119\",\"name\":\"litestorecategory\",\"title\":\"\\u793c\\u670d\\u5206\\u7c7b\",\"icon\":\"fa fa-th\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"134\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577509890),(530,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577509890),(531,1,'admin','/admin/litestorecategory/selectpage','','{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"7\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"7\",\"searchField\":[\"name\"]}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577509928),(532,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577509942),(533,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_dress_package\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577509948),(534,1,'admin','/admin/auth/rule/edit/ids/161?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"160\",\"name\":\"dress\\/dress\",\"title\":\"\\u793c\\u670d\\u5217\\u8868\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"100\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"161\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577510490),(535,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577510491),(536,1,'admin','/admin/ajax/upload','','{\"name\":\"enter05.jpg\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577518289),(537,1,'admin','/admin/ajax/upload','','{\"name\":\"old-enter04.jpg\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577518966),(538,1,'admin','/admin/command/get_field_list','','{\"table\":\"dr_admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577519096),(539,1,'admin','/admin/auth/rule/add?dialog=1','组织架构 菜单规则 添加','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"160\",\"name\":\"dress\\/dress_category\",\"title\":\"\\u793c\\u670d\\u5206\\u7c7b\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"99\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577519169),(540,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577519169),(541,1,'admin','/admin/auth/rule/edit/ids/170?dialog=1','组织架构 菜单规则 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"160\",\"name\":\"dress\\/dress_set\",\"title\":\"\\u793c\\u670d\\u7ec4\\u5408\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"170\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577519180),(542,1,'admin','/admin/index/index','','{\"action\":\"refreshmenu\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577519180),(543,1,'admin','/admin/ajax/upload','','{\"name\":\"WechatIMG9.png\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577519886),(544,1,'admin','/admin/ajax/upload','','{\"name\":\"\\u96e8\\u71d5.jpg\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577519936),(545,1,'admin','/admin/dress/dress_category/add?dialog=1','','{\"dialog\":\"1\",\"row\":{\"pid\":\"0\",\"name\":\"\\u51fa\\u95e8\\u7eb1\",\"image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"weigh\":\"0\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577519937),(546,1,'admin','/admin/dress/dress_category/add?dialog=1','','{\"dialog\":\"1\",\"row\":{\"pid\":\"0\",\"name\":\"\\u4e2d\\u5f0f\\u793c\\u670d\\/\\u79c0\\u79be\",\"image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"weigh\":\"0\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577519990),(547,1,'admin','/admin/dress/dress_category/add?dialog=1','','{\"dialog\":\"1\",\"row\":{\"pid\":\"0\",\"name\":\"\\u4e3b\\u7eb1\",\"image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"weigh\":\"0\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520055),(548,1,'admin','/admin/dress/dress_category/add?dialog=1','','{\"dialog\":\"1\",\"row\":{\"pid\":\"3\",\"name\":\"\\u6b3e\\u578b\",\"image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"weigh\":\"0\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520092),(549,1,'admin','/admin/dress/dress_category/add?dialog=1','','{\"dialog\":\"1\",\"row\":{\"pid\":\"3\",\"name\":\"\\u88d9\\u6446\",\"image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"weigh\":\"0\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520110),(550,1,'admin','/admin/ajax/weigh','','{\"ids\":\"3,1,5,4,2\",\"changeid\":\"1\",\"pid\":\"0\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"litestore_category\",\"pk\":\"id\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520127),(551,1,'admin','/admin/ajax/weigh','','{\"ids\":\"1,3,5,4,2\",\"changeid\":\"1\",\"pid\":\"0\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"litestore_category\",\"pk\":\"id\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520132),(552,1,'admin','/admin/ajax/weigh','','{\"ids\":\"5,4,2,1,3\",\"changeid\":\"3\",\"pid\":\"0\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"litestore_category\",\"pk\":\"id\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520144),(553,1,'admin','/admin/dress/dress_category/edit/ids/1?dialog=1','','{\"dialog\":\"1\",\"row\":{\"pid\":\"0\",\"name\":\"\\u51fa\\u95e8\\u7eb1\",\"image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"weigh\":\"100\"},\"ids\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520156),(554,1,'admin','/admin/dress/dress_category/edit/ids/2?dialog=1','','{\"dialog\":\"1\",\"row\":{\"pid\":\"0\",\"name\":\"\\u4e2d\\u5f0f\\u793c\\u670d\\/\\u79c0\\u79be\",\"image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"weigh\":\"99\"},\"ids\":\"2\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520170),(555,1,'admin','/admin/dress/dress_category/add?dialog=1','','{\"dialog\":\"1\",\"row\":{\"pid\":\"3\",\"name\":\"\\u98ce\\u683c\",\"image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"weigh\":\"0\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520195),(556,1,'admin','/admin/dress/dress_category/edit/ids/6?dialog=1','','{\"dialog\":\"1\",\"row\":{\"pid\":\"3\",\"name\":\"\\u98ce\\u683c\",\"image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"weigh\":\"0\"},\"ids\":\"6\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520202),(557,1,'admin','/admin/dress/dress_category/add?dialog=1','','{\"dialog\":\"1\",\"row\":{\"pid\":\"2\",\"name\":\"\\u6b3e\\u578b\",\"image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"weigh\":\"0\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520251),(558,1,'admin','/admin/dress/dress_category/edit/ids/4?dialog=1','','{\"dialog\":\"1\",\"row\":{\"pid\":\"3\",\"name\":\"\\u6b3e\\u578b\",\"image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"weigh\":\"100\"},\"ids\":\"4\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520262),(559,1,'admin','/admin/dress/dress_category/add?dialog=1','','{\"dialog\":\"1\",\"row\":{\"pid\":\"2\",\"name\":\"\\u88d9\\u6446\",\"image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"weigh\":\"100\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520291),(560,1,'admin','/admin/dress/dress_category/add?dialog=1','','{\"dialog\":\"1\",\"row\":{\"pid\":\"2\",\"name\":\"\\u98ce\\u683c\",\"image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"weigh\":\"0\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520325),(561,1,'admin','/admin/dress/dress_category/edit/ids/7?dialog=1','','{\"dialog\":\"1\",\"row\":{\"pid\":\"2\",\"name\":\"\\u6b3e\\u578b\",\"image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"weigh\":\"100\"},\"ids\":\"7\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520333),(562,1,'admin','/admin/dress/dress_category/edit/ids/8?dialog=1','','{\"dialog\":\"1\",\"row\":{\"pid\":\"2\",\"name\":\"\\u88d9\\u6446\",\"image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"weigh\":\"80\"},\"ids\":\"8\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520357),(563,1,'admin','/admin/dress/dress_category/add?dialog=1','','{\"dialog\":\"1\",\"row\":{\"pid\":\"1\",\"name\":\"\\u6b3e\\u578b\",\"image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"weigh\":\"0\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520416),(564,1,'admin','/admin/dress/dress_category/add?dialog=1','','{\"dialog\":\"1\",\"row\":{\"pid\":\"1\",\"name\":\"\\u88d9\\u6446\",\"image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"weigh\":\"90\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520434),(565,1,'admin','/admin/dress/dress_category/edit/ids/10?dialog=1','','{\"dialog\":\"1\",\"row\":{\"pid\":\"1\",\"name\":\"\\u6b3e\\u578b\",\"image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"weigh\":\"100\"},\"ids\":\"10\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520446),(566,1,'admin','/admin/dress/dress_category/edit/ids/11?dialog=1','','{\"dialog\":\"1\",\"row\":{\"pid\":\"1\",\"name\":\"\\u88d9\\u6446\",\"image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"weigh\":\"80\"},\"ids\":\"11\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520453),(567,1,'admin','/admin/dress/dress_category/add?dialog=1','','{\"dialog\":\"1\",\"row\":{\"pid\":\"1\",\"name\":\"\\u98ce\\u683c\",\"image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"weigh\":\"60\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520472),(568,1,'admin','/admin/dress/dress_category/add?dialog=1','','{\"dialog\":\"1\",\"row\":{\"pid\":\"7\",\"name\":\"\\u9f99\\u51e4\\u8902\",\"image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"weigh\":\"100\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520525),(569,1,'admin','/admin/dress/dress_category/edit/ids/13?dialog=1','','{\"dialog\":\"1\",\"row\":{\"pid\":\"7\",\"name\":\"\\u9f99\\u51e4\\u8902\",\"image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"weigh\":\"100\"},\"ids\":\"13\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520540),(570,1,'admin','/admin/dress/dress_category/add?dialog=1','','{\"dialog\":\"1\",\"row\":{\"pid\":\"7\",\"name\":\"\\u79c0\\u79be\\u670d\",\"image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"weigh\":\"0\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520568),(571,1,'admin','/admin/dress/dress_category/edit/ids/14?dialog=1','','{\"dialog\":\"1\",\"row\":{\"pid\":\"7\",\"name\":\"\\u79c0\\u79be\\u670d\",\"image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"weigh\":\"99\"},\"ids\":\"14\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520577),(572,1,'admin','/admin/dress/dress_category/selectpage','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520746),(573,1,'admin','/admin/dress/dress_category/selectpage','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520752),(574,1,'admin','/admin/dress/dress_category/selectpage','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520756),(575,1,'admin','/admin/dress/dress_category/selectpage','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520758),(576,1,'admin','/admin/dress/dress_category/selectpage','','{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520760),(577,1,'admin','/admin/dress/dress_category/selectpage','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520766),(578,1,'admin','/admin/dress/dress_category/selectpage','','{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520769),(579,1,'admin','/admin/dress/dress_category/selectpage','','{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520854),(580,1,'admin','/admin/dress/dress_category/selectpage','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520856),(581,1,'admin','/admin/dress/dress_category/selectpage','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577520860),(582,1,'admin','/admin/dress/dress/addSpec','','{\"spec_name\":\"\\u989c\\u8272\",\"spec_value\":\"\\u7ea2\\u8272\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577521952),(583,1,'admin','/admin/dress/dress/addSpecValue','','{\"spec_id\":\"1\",\"spec_value\":\"\\u91d1\\u8272\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577521962),(584,1,'admin','/admin/dress/dress_category/selectpage','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577522247),(585,1,'admin','/admin/dress/dress/add?dialog=1','礼服管理 礼服列表 添加','{\"dialog\":\"1\",\"row\":{\"goods_name\":\"C1904115L2A\",\"category_id\":\"2\",\"images\":\"https:\\/\\/s.cdn.hqt.cc\\/upload\\/137\\/dress\\/2019\\/12\\/89997137416d437980247b6a574d330a.jpg\",\"spec_type\":\"20\",\"deduct_stock_type\":\"20\",\"content\":\"1000\",\"sales_initial\":\"0\",\"sales_actual\":\"0\",\"goods_sort\":\"100\",\"goods_status\":\"10\",\"is_delete\":\"0\"},\"goods_no\":\"golden\",\"goods_price\":\"100\",\"line_price\":\"100\",\"stock_num\":\"199\",\"goods_weight\":\"1\",\"spec_image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"spec\":{\"goods_no\":\"\",\"goods_price\":\"0\",\"line_price\":\"\",\"stock_num\":\"100\",\"goods_weight\":\"1\"},\"spec_many\":{\"spec_attr\":[{\"group_id\":\"1\",\"group_name\":\"\\u989c\\u8272\",\"spec_items\":[{\"item_id\":\"1\",\"spec_value\":\"\\u7ea2\\u8272\"},{\"item_id\":\"2\",\"spec_value\":\"\\u91d1\\u8272\"}]}],\"spec_list\":[{\"spec_sku_id\":\"1\",\"rows\":[{\"rowspan\":\"1\",\"item_id\":\"1\",\"spec_value\":\"\\u7ea2\\u8272\"}],\"form\":{\"spec_image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"goods_no\":\"red001\",\"goods_price\":\"100\",\"line_price\":\"100\",\"stock_num\":\"199\",\"goods_weight\":\"1\"}},{\"spec_sku_id\":\"2\",\"rows\":[{\"rowspan\":\"1\",\"item_id\":\"2\",\"spec_value\":\"\\u91d1\\u8272\"}],\"form\":{\"spec_image\":\"\\/uploads\\/20191228\\/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg\",\"goods_no\":\"golden\",\"goods_price\":\"100\",\"line_price\":\"100\",\"stock_num\":\"199\",\"goods_weight\":\"1\"}}]}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577522565),(586,1,'admin','/admin/dress/dress/del/ids/2','礼服管理 礼服列表 删除','{\"action\":\"del\",\"ids\":\"2\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577522598),(587,1,'admin','/admin/dress/dress/del/ids/1','礼服管理 礼服列表 删除','{\"action\":\"del\",\"ids\":\"1\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577522602),(588,1,'admin','/admin/dress/dress_category/selectpage','','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577526144),(589,1,'admin','/admin/dress/dress/addSpec','','{\"spec_name\":\"\\u98ce\\u683c\",\"spec_value\":\"\\u6d6a\\u6f2b\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577526281),(590,1,'admin','/admin/dress/dress/addSpecValue','','{\"spec_id\":\"2\",\"spec_value\":\"\\u4f18\\u96c5\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577526312),(591,1,'admin','/admin/dress/dress/add?dialog=1','礼服管理 礼服列表 添加','{\"dialog\":\"1\",\"row\":{\"goods_name\":\"\\u79c0\\u79be\\u670d\",\"category_id\":\"2\",\"images\":\"https:\\/\\/s.cdn.hqt.cc\\/upload\\/137\\/dress\\/2019\\/12\\/89997137416d437980247b6a574d330a.jpg\",\"spec_type\":\"20\",\"deduct_stock_type\":\"20\",\"content\":\"1000\",\"sales_initial\":\"0\",\"sales_actual\":\"0\",\"goods_sort\":\"100\",\"goods_status\":\"10\",\"is_delete\":\"0\"},\"goods_no\":\"10002\",\"goods_price\":\"1000\",\"line_price\":\"1000\",\"stock_num\":\"1000\",\"goods_weight\":\"1\",\"spec_image\":\"\",\"spec\":{\"goods_no\":\"\",\"goods_price\":\"0\",\"line_price\":\"\",\"stock_num\":\"100\",\"goods_weight\":\"1\"},\"spec_many\":{\"spec_attr\":[{\"group_id\":\"2\",\"group_name\":\"\\u98ce\\u683c\",\"spec_items\":[{\"item_id\":\"3\",\"spec_value\":\"\\u6d6a\\u6f2b\"},{\"item_id\":\"4\",\"spec_value\":\"\\u4f18\\u96c5\"}]}],\"spec_list\":[{\"spec_sku_id\":\"3\",\"rows\":[{\"rowspan\":\"1\",\"item_id\":\"3\",\"spec_value\":\"\\u6d6a\\u6f2b\"}],\"form\":{\"spec_image\":\"\",\"goods_no\":\"10001\",\"goods_price\":\"1000\",\"line_price\":\"1000\",\"stock_num\":\"1000\",\"goods_weight\":\"1\"}},{\"spec_sku_id\":\"4\",\"rows\":[{\"rowspan\":\"1\",\"item_id\":\"4\",\"spec_value\":\"\\u4f18\\u96c5\"}],\"form\":{\"spec_image\":\"\",\"goods_no\":\"10002\",\"goods_price\":\"1000\",\"line_price\":\"1000\",\"stock_num\":\"1000\",\"goods_weight\":\"1\"}}]}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',1577526427);
/*!40000 ALTER TABLE `dr_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_attachment`
--

DROP TABLE IF EXISTS `dr_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_attachment` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) NOT NULL DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(100) NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) DEFAULT NULL COMMENT '创建日期',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `uploadtime` int(10) DEFAULT NULL COMMENT '上传时间',
  `storage` varchar(100) NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='附件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_attachment`
--

LOCK TABLES `dr_attachment` WRITE;
/*!40000 ALTER TABLE `dr_attachment` DISABLE KEYS */;
INSERT INTO `dr_attachment` VALUES (1,1,0,'/assets/img/qrcode.png','150','150','png',0,21859,'image/png','',1499681848,1499681848,1499681848,'local','17163603d0263e4838b9387ff2cd4877e8b018f6'),(2,1,0,'/uploads/20191228/1d61c860a87e0ac07d16ca3285205fb6.jpg','960','402','jpg',0,412788,'image/jpeg','{\"name\":\"enter05.jpg\"}',1577518289,1577518289,1577518289,'local','6fab68140e3b20efcce7dcc658d491287129ead4'),(3,1,0,'/uploads/20191228/9b9cab30a4db1c32c89721fe63c2955d.jpg','960','402','jpg',0,387473,'image/jpeg','{\"name\":\"old-enter04.jpg\"}',1577518966,1577518966,1577518966,'local','5ea16cf691120039627fe0a2adac368b2c5fe504'),(4,1,0,'/uploads/20191228/d672991ae09d51f35c6faec02fe8a2b4.png','1418','744','png',0,359571,'image/png','{\"name\":\"WechatIMG9.png\"}',1577519886,1577519886,1577519886,'local','a86df40a8035894c992187f7348742627da5d380'),(5,1,0,'/uploads/20191228/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg','500','372','jpg',0,6036,'image/jpeg','{\"name\":\"\\u96e8\\u71d5.jpg\"}',1577519936,1577519936,1577519936,'local','3f8e459cc1c1a61d629275baabf2a43d3416acee');
/*!40000 ALTER TABLE `dr_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_auth_group`
--

DROP TABLE IF EXISTS `dr_auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_auth_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text NOT NULL COMMENT '规则ID',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分组表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_auth_group`
--

LOCK TABLES `dr_auth_group` WRITE;
/*!40000 ALTER TABLE `dr_auth_group` DISABLE KEYS */;
INSERT INTO `dr_auth_group` VALUES (1,0,'Admin group','*',1490883540,149088354,'normal'),(2,1,'Second group','13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5',1490883540,1505465692,'normal'),(3,2,'Third group','1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5',1490883540,1502205322,'normal'),(4,1,'Second group 2','1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65',1490883540,1502205350,'normal'),(5,2,'Third group 2','1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34',1490883540,1502205344,'normal'),(6,1,'店长','160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,303,310,311,312,313,314,315,316,317,318,319,320,321',1576737610,1576737725,'normal'),(7,1,'礼服师','',1576737626,1576737626,'normal'),(8,1,'邀约','',1576737643,1576737643,'normal'),(9,1,'推广','',1576737665,1576737665,'normal'),(10,1,'供应商','',1576737693,1576737693,'normal'),(11,1,'老板','',1576737709,1576737709,'normal');
/*!40000 ALTER TABLE `dr_auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_auth_group_access`
--

DROP TABLE IF EXISTS `dr_auth_group_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '会员ID',
  `group_id` int(10) unsigned NOT NULL COMMENT '级别ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='权限分组表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_auth_group_access`
--

LOCK TABLES `dr_auth_group_access` WRITE;
/*!40000 ALTER TABLE `dr_auth_group_access` DISABLE KEYS */;
INSERT INTO `dr_auth_group_access` VALUES (1,1),(2,6);
/*!40000 ALTER TABLE `dr_auth_group_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_auth_rule`
--

DROP TABLE IF EXISTS `dr_auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `pid` (`pid`),
  KEY `weigh` (`weigh`)
) ENGINE=InnoDB AUTO_INCREMENT=323 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_auth_rule`
--

LOCK TABLES `dr_auth_rule` WRITE;
/*!40000 ALTER TABLE `dr_auth_rule` DISABLE KEYS */;
INSERT INTO `dr_auth_rule` VALUES (1,'file',0,'dashboard','Dashboard','fa fa-dashboard','','Dashboard tips',1,1497429920,1497429920,143,'normal'),(2,'file',0,'general','General','fa fa-cogs','','',1,1497429920,1497430169,137,'normal'),(3,'file',0,'category','Category','fa fa-leaf','','Category tips',0,1497429920,1573138687,99,'normal'),(4,'file',0,'addon','Addon','fa fa-rocket','','Addon tips',0,1502035509,1573143764,0,'normal'),(5,'file',0,'auth','组织架构','fa fa-sitemap','','',1,1497429920,1573140230,119,'normal'),(6,'file',2,'general/config','Config','fa fa-cog','','Config tips',1,1497429920,1497430683,60,'normal'),(7,'file',2,'general/attachment','Attachment','fa fa-file-image-o','','Attachment tips',1,1497429920,1497430699,53,'normal'),(8,'file',2,'general/profile','Profile','fa fa-user','','',1,1497429920,1497429920,34,'normal'),(9,'file',5,'auth/admin','管理员管理','fa fa-user','','Admin tips',1,1497429920,1573143871,99,'normal'),(10,'file',5,'auth/adminlog','管理员日志','fa fa-list-alt','','Admin log tips',1,1497429920,1573140785,0,'normal'),(11,'file',5,'auth/group','角色组','fa fa-group','','Group tips',1,1497429920,1573143937,97,'normal'),(12,'file',5,'auth/rule','菜单规则','fa fa-bars','','',1,1497429920,1573143997,90,'normal'),(13,'file',1,'dashboard/index','View','fa fa-circle-o','','',0,1497429920,1497429920,136,'normal'),(14,'file',1,'dashboard/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,135,'normal'),(15,'file',1,'dashboard/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,133,'normal'),(16,'file',1,'dashboard/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,134,'normal'),(17,'file',1,'dashboard/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,132,'normal'),(18,'file',6,'general/config/index','View','fa fa-circle-o','','',0,1497429920,1497429920,52,'normal'),(19,'file',6,'general/config/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,51,'normal'),(20,'file',6,'general/config/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,50,'normal'),(21,'file',6,'general/config/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,49,'normal'),(22,'file',6,'general/config/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,48,'normal'),(23,'file',7,'general/attachment/index','View','fa fa-circle-o','','Attachment tips',0,1497429920,1497429920,59,'normal'),(24,'file',7,'general/attachment/select','Select attachment','fa fa-circle-o','','',0,1497429920,1497429920,58,'normal'),(25,'file',7,'general/attachment/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,57,'normal'),(26,'file',7,'general/attachment/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,56,'normal'),(27,'file',7,'general/attachment/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,55,'normal'),(28,'file',7,'general/attachment/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,54,'normal'),(29,'file',8,'general/profile/index','View','fa fa-circle-o','','',0,1497429920,1497429920,33,'normal'),(30,'file',8,'general/profile/update','Update profile','fa fa-circle-o','','',0,1497429920,1497429920,32,'normal'),(31,'file',8,'general/profile/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,31,'normal'),(32,'file',8,'general/profile/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,30,'normal'),(33,'file',8,'general/profile/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,29,'normal'),(34,'file',8,'general/profile/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,28,'normal'),(35,'file',3,'category/index','View','fa fa-circle-o','','Category tips',0,1497429920,1497429920,142,'normal'),(36,'file',3,'category/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,141,'normal'),(37,'file',3,'category/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,140,'normal'),(38,'file',3,'category/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,139,'normal'),(39,'file',3,'category/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,138,'normal'),(40,'file',9,'auth/admin/index','View','fa fa-circle-o','','Admin tips',0,1497429920,1497429920,117,'normal'),(41,'file',9,'auth/admin/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,116,'normal'),(42,'file',9,'auth/admin/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,115,'normal'),(43,'file',9,'auth/admin/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,114,'normal'),(44,'file',10,'auth/adminlog/index','View','fa fa-circle-o','','Admin log tips',0,1497429920,1497429920,112,'normal'),(45,'file',10,'auth/adminlog/detail','Detail','fa fa-circle-o','','',0,1497429920,1497429920,111,'normal'),(46,'file',10,'auth/adminlog/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,110,'normal'),(47,'file',11,'auth/group/index','View','fa fa-circle-o','','Group tips',0,1497429920,1497429920,108,'normal'),(48,'file',11,'auth/group/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,107,'normal'),(49,'file',11,'auth/group/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,106,'normal'),(50,'file',11,'auth/group/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,105,'normal'),(51,'file',12,'auth/rule/index','View','fa fa-circle-o','','Rule tips',0,1497429920,1497429920,103,'normal'),(52,'file',12,'auth/rule/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,102,'normal'),(53,'file',12,'auth/rule/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,101,'normal'),(54,'file',12,'auth/rule/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,100,'normal'),(55,'file',4,'addon/index','View','fa fa-circle-o','','Addon tips',0,1502035509,1502035509,0,'normal'),(56,'file',4,'addon/add','Add','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(57,'file',4,'addon/edit','Edit','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(58,'file',4,'addon/del','Delete','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(59,'file',4,'addon/local','Local install','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(60,'file',4,'addon/state','Update state','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(61,'file',4,'addon/install','Install','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(62,'file',4,'addon/uninstall','Uninstall','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(63,'file',4,'addon/config','Setting','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(64,'file',4,'addon/refresh','Refresh','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(65,'file',4,'addon/multi','Multi','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(66,'file',0,'user','User','fa fa-list','','',1,1516374729,1516374729,0,'normal'),(67,'file',66,'user/user','User','fa fa-user','','',1,1516374729,1516374729,0,'normal'),(68,'file',67,'user/user/index','View','fa fa-circle-o','','',0,1516374729,1516374729,0,'normal'),(69,'file',67,'user/user/edit','Edit','fa fa-circle-o','','',0,1516374729,1516374729,0,'normal'),(70,'file',67,'user/user/add','Add','fa fa-circle-o','','',0,1516374729,1516374729,0,'normal'),(71,'file',67,'user/user/del','Del','fa fa-circle-o','','',0,1516374729,1516374729,0,'normal'),(72,'file',67,'user/user/multi','Multi','fa fa-circle-o','','',0,1516374729,1516374729,0,'normal'),(73,'file',66,'user/group','User group','fa fa-users','','',1,1516374729,1516374729,0,'normal'),(74,'file',73,'user/group/add','Add','fa fa-circle-o','','',0,1516374729,1516374729,0,'normal'),(75,'file',73,'user/group/edit','Edit','fa fa-circle-o','','',0,1516374729,1516374729,0,'normal'),(76,'file',73,'user/group/index','View','fa fa-circle-o','','',0,1516374729,1516374729,0,'normal'),(77,'file',73,'user/group/del','Del','fa fa-circle-o','','',0,1516374729,1516374729,0,'normal'),(78,'file',73,'user/group/multi','Multi','fa fa-circle-o','','',0,1516374729,1516374729,0,'normal'),(79,'file',66,'user/rule','User rule','fa fa-circle-o','','',1,1516374729,1516374729,0,'normal'),(80,'file',79,'user/rule/index','View','fa fa-circle-o','','',0,1516374729,1516374729,0,'normal'),(81,'file',79,'user/rule/del','Del','fa fa-circle-o','','',0,1516374729,1516374729,0,'normal'),(82,'file',79,'user/rule/add','Add','fa fa-circle-o','','',0,1516374729,1516374729,0,'normal'),(83,'file',79,'user/rule/edit','Edit','fa fa-circle-o','','',0,1516374729,1516374729,0,'normal'),(84,'file',79,'user/rule/multi','Multi','fa fa-circle-o','','',0,1516374729,1516374729,0,'normal'),(119,'file',0,'litestore','礼服管理','fa fa-shopping-basket','','',1,1570770292,1577509707,137,'normal'),(126,'file',119,'litestoregoods','礼服列表','fa fa-gift','','',1,1570770292,1577509645,0,'normal'),(127,'file',126,'litestoregoods/index','查看','fa fa-circle-o','','',0,1570770292,1570770292,0,'normal'),(128,'file',126,'litestoregoods/add','添加','fa fa-circle-o','','',0,1570770292,1570770292,0,'normal'),(129,'file',126,'litestoregoods/edit','修改','fa fa-circle-o','','',0,1570770292,1570770292,0,'normal'),(130,'file',126,'litestoregoods/del','删除','fa fa-circle-o','','',0,1570770292,1570770292,0,'normal'),(131,'file',126,'litestoregoods/multi','批量更新','fa fa-circle-o','','',0,1570770292,1570770292,0,'normal'),(132,'file',126,'litestoregoods/addSpec','增加规格','fa fa-circle-o','','',0,1570770292,1570770292,0,'normal'),(133,'file',126,'litestoregoods/addSpecValue','增加规格值','fa fa-circle-o','','',0,1570770292,1570770292,0,'normal'),(134,'file',119,'litestorecategory','礼服分类','fa fa-th','','',1,1570770292,1577509890,0,'normal'),(135,'file',134,'litestorecategory/index','查看','fa fa-circle-o','','',0,1570770292,1570770292,0,'normal'),(136,'file',134,'litestorecategory/add','添加','fa fa-circle-o','','',0,1570770292,1570770292,0,'normal'),(137,'file',134,'litestorecategory/edit','修改','fa fa-circle-o','','',0,1570770292,1570770292,0,'normal'),(138,'file',134,'litestorecategory/del','删除','fa fa-circle-o','','',0,1570770292,1570770292,0,'normal'),(139,'file',134,'litestorecategory/multi','批量更新','fa fa-circle-o','','',0,1570770292,1570770292,0,'normal'),(153,'file',0,'command','在线命令管理','fa fa-terminal','','',1,1573120790,1573120790,0,'normal'),(154,'file',153,'command/index','查看','fa fa-circle-o','','',0,1573120790,1573120790,0,'normal'),(155,'file',153,'command/add','添加','fa fa-circle-o','','',0,1573120790,1573120790,0,'normal'),(156,'file',153,'command/detail','详情','fa fa-circle-o','','',0,1573120790,1573120790,0,'normal'),(157,'file',153,'command/execute','运行','fa fa-circle-o','','',0,1573120790,1573120790,0,'normal'),(158,'file',153,'command/del','删除','fa fa-circle-o','','',0,1573120790,1573120790,0,'normal'),(159,'file',153,'command/multi','批量更新','fa fa-circle-o','','',0,1573120790,1573120790,0,'normal'),(160,'file',0,'dress','礼服管理','fa fa-connectdevelop','','',1,1573132819,1575970290,136,'normal'),(161,'file',160,'dress/dress','礼服列表','fa fa-circle-o','','',1,1573132819,1577510490,100,'normal'),(162,'file',161,'dress/dress/index','查看','fa fa-circle-o','','',0,1573132819,1573132819,0,'normal'),(163,'file',161,'dress/dress/recyclebin','回收站','fa fa-circle-o','','',0,1573132819,1573132819,0,'normal'),(164,'file',161,'dress/dress/add','添加','fa fa-circle-o','','',0,1573132819,1573132819,0,'normal'),(165,'file',161,'dress/dress/edit','编辑','fa fa-circle-o','','',0,1573132819,1573132819,0,'normal'),(166,'file',161,'dress/dress/del','删除','fa fa-circle-o','','',0,1573132819,1573132819,0,'normal'),(167,'file',161,'dress/dress/destroy','真实删除','fa fa-circle-o','','',0,1573132819,1573132819,0,'normal'),(168,'file',161,'dress/dress/restore','还原','fa fa-circle-o','','',0,1573132819,1573132819,0,'normal'),(169,'file',161,'dress/dress/multi','批量更新','fa fa-circle-o','','',0,1573132819,1573132819,0,'normal'),(170,'file',160,'dress/dress_set','礼服组合','fa fa-circle-o','','',1,1573133617,1577519180,0,'normal'),(171,'file',170,'dress/dress_set/index','查看','fa fa-circle-o','','',0,1573133617,1573133617,0,'normal'),(172,'file',170,'dress/dress_set/add','添加','fa fa-circle-o','','',0,1573133617,1573133617,0,'normal'),(173,'file',170,'dress/dress_set/edit','编辑','fa fa-circle-o','','',0,1573133617,1573133617,0,'normal'),(174,'file',170,'dress/dress_set/del','删除','fa fa-circle-o','','',0,1573133617,1573133617,0,'normal'),(175,'file',170,'dress/dress_set/multi','批量更新','fa fa-circle-o','','',0,1573133617,1573133617,0,'normal'),(176,'file',160,'dress/dress_package','礼服套餐','fa fa-circle-o','','',1,1573133975,1573133992,0,'normal'),(177,'file',176,'dress/dress_package/index','查看','fa fa-circle-o','','',0,1573133975,1573133975,0,'normal'),(178,'file',176,'dress/dress_package/recyclebin','回收站','fa fa-circle-o','','',0,1573133975,1573133975,0,'normal'),(179,'file',176,'dress/dress_package/add','添加','fa fa-circle-o','','',0,1573133975,1573133975,0,'normal'),(180,'file',176,'dress/dress_package/edit','编辑','fa fa-circle-o','','',0,1573133975,1573133975,0,'normal'),(181,'file',176,'dress/dress_package/del','删除','fa fa-circle-o','','',0,1573133975,1573133975,0,'normal'),(182,'file',176,'dress/dress_package/destroy','真实删除','fa fa-circle-o','','',0,1573133975,1573133975,0,'normal'),(183,'file',176,'dress/dress_package/restore','还原','fa fa-circle-o','','',0,1573133975,1573133975,0,'normal'),(184,'file',176,'dress/dress_package/multi','批量更新','fa fa-circle-o','','',0,1573133975,1573133975,0,'normal'),(185,'file',160,'dress/storage','入库管理','fa fa-circle-o','','',1,1573135025,1573135043,0,'normal'),(186,'file',185,'dress/storage/index','查看','fa fa-circle-o','','',0,1573135025,1573135025,0,'normal'),(187,'file',185,'dress/storage/recyclebin','回收站','fa fa-circle-o','','',0,1573135025,1573135025,0,'normal'),(188,'file',185,'dress/storage/add','添加','fa fa-circle-o','','',0,1573135025,1573135025,0,'normal'),(189,'file',185,'dress/storage/edit','编辑','fa fa-circle-o','','',0,1573135025,1573135025,0,'normal'),(190,'file',185,'dress/storage/del','删除','fa fa-circle-o','','',0,1573135025,1573135025,0,'normal'),(191,'file',185,'dress/storage/destroy','真实删除','fa fa-circle-o','','',0,1573135025,1573135025,0,'normal'),(192,'file',185,'dress/storage/restore','还原','fa fa-circle-o','','',0,1573135025,1573135025,0,'normal'),(193,'file',185,'dress/storage/multi','批量更新','fa fa-circle-o','','',0,1573135025,1573135025,0,'normal'),(194,'file',160,'dress/scrap','报废管理','fa fa-circle-o','','',1,1573136222,1573136260,0,'normal'),(195,'file',194,'dress/scrap/index','查看','fa fa-circle-o','','',0,1573136222,1573136222,0,'normal'),(196,'file',194,'dress/scrap/recyclebin','回收站','fa fa-circle-o','','',0,1573136222,1573136222,0,'normal'),(197,'file',194,'dress/scrap/add','添加','fa fa-circle-o','','',0,1573136222,1573136222,0,'normal'),(198,'file',194,'dress/scrap/edit','编辑','fa fa-circle-o','','',0,1573136222,1573136222,0,'normal'),(199,'file',194,'dress/scrap/del','删除','fa fa-circle-o','','',0,1573136222,1573136222,0,'normal'),(200,'file',194,'dress/scrap/destroy','真实删除','fa fa-circle-o','','',0,1573136222,1573136222,0,'normal'),(201,'file',194,'dress/scrap/restore','还原','fa fa-circle-o','','',0,1573136222,1573136222,0,'normal'),(202,'file',194,'dress/scrap/multi','批量更新','fa fa-circle-o','','',0,1573136222,1573136222,0,'normal'),(203,'file',160,'dress/supplier','供应商管理','fa fa-circle-o','','',1,1573136222,1573136272,0,'normal'),(204,'file',203,'dress/supplier/index','查看','fa fa-circle-o','','',0,1573136222,1573136222,0,'normal'),(205,'file',203,'dress/supplier/recyclebin','回收站','fa fa-circle-o','','',0,1573136222,1573136222,0,'normal'),(206,'file',203,'dress/supplier/add','添加','fa fa-circle-o','','',0,1573136222,1573136222,0,'normal'),(207,'file',203,'dress/supplier/edit','编辑','fa fa-circle-o','','',0,1573136222,1573136222,0,'normal'),(208,'file',203,'dress/supplier/del','删除','fa fa-circle-o','','',0,1573136222,1573136222,0,'normal'),(209,'file',203,'dress/supplier/destroy','真实删除','fa fa-circle-o','','',0,1573136222,1573136222,0,'normal'),(210,'file',203,'dress/supplier/restore','还原','fa fa-circle-o','','',0,1573136222,1573136222,0,'normal'),(211,'file',203,'dress/supplier/multi','批量更新','fa fa-circle-o','','',0,1573136222,1573136222,0,'normal'),(212,'file',0,'dictionary','字典管理','fa fa-briefcase','','',1,1573138137,1573140318,135,'normal'),(213,'file',212,'dictionary/notice','通知类型','fa fa-bell-o','','',1,1573138137,1573144222,0,'normal'),(214,'file',213,'dictionary/notice/index','查看','fa fa-circle-o','','',0,1573138137,1573138137,0,'normal'),(215,'file',213,'dictionary/notice/recyclebin','回收站','fa fa-circle-o','','',0,1573138137,1573138137,0,'normal'),(216,'file',213,'dictionary/notice/add','添加','fa fa-circle-o','','',0,1573138137,1573138137,0,'normal'),(217,'file',213,'dictionary/notice/edit','编辑','fa fa-circle-o','','',0,1573138137,1573138137,0,'normal'),(218,'file',213,'dictionary/notice/del','删除','fa fa-circle-o','','',0,1573138137,1573138137,0,'normal'),(219,'file',213,'dictionary/notice/destroy','真实删除','fa fa-circle-o','','',0,1573138137,1573138137,0,'normal'),(220,'file',213,'dictionary/notice/restore','还原','fa fa-circle-o','','',0,1573138137,1573138137,0,'normal'),(221,'file',213,'dictionary/notice/multi','批量更新','fa fa-circle-o','','',0,1573138137,1573138137,0,'normal'),(222,'file',212,'dictionary/source','来源管理','fa fa-automobile','','',1,1573138137,1573144253,0,'normal'),(223,'file',222,'dictionary/source/index','查看','fa fa-circle-o','','',0,1573138137,1573138137,0,'normal'),(224,'file',222,'dictionary/source/recyclebin','回收站','fa fa-circle-o','','',0,1573138137,1573138137,0,'normal'),(225,'file',222,'dictionary/source/add','添加','fa fa-circle-o','','',0,1573138137,1573138137,0,'normal'),(226,'file',222,'dictionary/source/edit','编辑','fa fa-circle-o','','',0,1573138137,1573138137,0,'normal'),(227,'file',222,'dictionary/source/del','删除','fa fa-circle-o','','',0,1573138137,1573138137,0,'normal'),(228,'file',222,'dictionary/source/destroy','真实删除','fa fa-circle-o','','',0,1573138137,1573138137,0,'normal'),(229,'file',222,'dictionary/source/restore','还原','fa fa-circle-o','','',0,1573138137,1573138137,0,'normal'),(230,'file',222,'dictionary/source/multi','批量更新','fa fa-circle-o','','',0,1573138137,1573138137,0,'normal'),(231,'file',212,'dictionary/leave','请假类型','fa fa-at','','',1,1573138137,1573144270,0,'normal'),(232,'file',231,'dictionary/leave/index','查看','fa fa-circle-o','','',0,1573138137,1573138137,0,'normal'),(233,'file',231,'dictionary/leave/recyclebin','回收站','fa fa-circle-o','','',0,1573138137,1573138137,0,'normal'),(234,'file',231,'dictionary/leave/add','添加','fa fa-circle-o','','',0,1573138137,1573138137,0,'normal'),(235,'file',231,'dictionary/leave/edit','编辑','fa fa-circle-o','','',0,1573138137,1573138137,0,'normal'),(236,'file',231,'dictionary/leave/del','删除','fa fa-circle-o','','',0,1573138137,1573138137,0,'normal'),(237,'file',231,'dictionary/leave/destroy','真实删除','fa fa-circle-o','','',0,1573138137,1573138137,0,'normal'),(238,'file',231,'dictionary/leave/restore','还原','fa fa-circle-o','','',0,1573138137,1573138137,0,'normal'),(239,'file',231,'dictionary/leave/multi','批量更新','fa fa-circle-o','','',0,1573138137,1573138137,0,'normal'),(240,'file',212,'dictionary/size','礼服尺寸','fa fa-calculator','','',1,1573139595,1573144287,0,'normal'),(241,'file',240,'dictionary/size/index','查看','fa fa-circle-o','','',0,1573139595,1573139595,0,'normal'),(242,'file',240,'dictionary/size/recyclebin','回收站','fa fa-circle-o','','',0,1573139595,1573139595,0,'normal'),(243,'file',240,'dictionary/size/add','添加','fa fa-circle-o','','',0,1573139595,1573139595,0,'normal'),(244,'file',240,'dictionary/size/edit','编辑','fa fa-circle-o','','',0,1573139595,1573139595,0,'normal'),(245,'file',240,'dictionary/size/del','删除','fa fa-circle-o','','',0,1573139595,1573139595,0,'normal'),(246,'file',240,'dictionary/size/destroy','真实删除','fa fa-circle-o','','',0,1573139595,1573139595,0,'normal'),(247,'file',240,'dictionary/size/restore','还原','fa fa-circle-o','','',0,1573139595,1573139595,0,'normal'),(248,'file',240,'dictionary/size/multi','批量更新','fa fa-circle-o','','',0,1573139595,1573139595,0,'normal'),(249,'file',212,'dictionary/dress','礼服分类','fa fa-adjust','','',1,1573139595,1573144301,0,'normal'),(250,'file',249,'dictionary/dress/index','查看','fa fa-circle-o','','',0,1573139595,1573139595,0,'normal'),(251,'file',249,'dictionary/dress/recyclebin','回收站','fa fa-circle-o','','',0,1573139595,1573139595,0,'normal'),(252,'file',249,'dictionary/dress/add','添加','fa fa-circle-o','','',0,1573139595,1573139595,0,'normal'),(253,'file',249,'dictionary/dress/edit','编辑','fa fa-circle-o','','',0,1573139595,1573139595,0,'normal'),(254,'file',249,'dictionary/dress/del','删除','fa fa-circle-o','','',0,1573139595,1573139595,0,'normal'),(255,'file',249,'dictionary/dress/destroy','真实删除','fa fa-circle-o','','',0,1573139595,1573139595,0,'normal'),(256,'file',249,'dictionary/dress/restore','还原','fa fa-circle-o','','',0,1573139595,1573139595,0,'normal'),(257,'file',249,'dictionary/dress/multi','批量更新','fa fa-circle-o','','',0,1573139595,1573139595,0,'normal'),(258,'file',212,'dictionary/payment','支付方式','fa fa-cubes','','',1,1573139595,1573144202,10,'normal'),(259,'file',258,'dictionary/payment/index','查看','fa fa-circle-o','','',0,1573139595,1573139595,0,'normal'),(260,'file',258,'dictionary/payment/recyclebin','回收站','fa fa-circle-o','','',0,1573139595,1573139595,0,'normal'),(261,'file',258,'dictionary/payment/add','添加','fa fa-circle-o','','',0,1573139595,1573139595,0,'normal'),(262,'file',258,'dictionary/payment/edit','编辑','fa fa-circle-o','','',0,1573139595,1573139595,0,'normal'),(263,'file',258,'dictionary/payment/del','删除','fa fa-circle-o','','',0,1573139595,1573139595,0,'normal'),(264,'file',258,'dictionary/payment/destroy','真实删除','fa fa-circle-o','','',0,1573139595,1573139595,0,'normal'),(265,'file',258,'dictionary/payment/restore','还原','fa fa-circle-o','','',0,1573139595,1573139595,0,'normal'),(266,'file',258,'dictionary/payment/multi','批量更新','fa fa-circle-o','','',0,1573139595,1573139595,0,'normal'),(267,'file',5,'auth/notice','通知管理','fa fa-bell','','',1,1573140632,1573144052,95,'normal'),(268,'file',267,'auth/notice/index','查看','fa fa-circle-o','','',0,1573140632,1573140632,0,'normal'),(269,'file',267,'auth/notice/recyclebin','回收站','fa fa-circle-o','','',0,1573140632,1573140632,0,'normal'),(270,'file',267,'auth/notice/add','添加','fa fa-circle-o','','',0,1573140632,1573140632,0,'normal'),(271,'file',267,'auth/notice/edit','编辑','fa fa-circle-o','','',0,1573140632,1573140632,0,'normal'),(272,'file',267,'auth/notice/del','删除','fa fa-circle-o','','',0,1573140632,1573140632,0,'normal'),(273,'file',267,'auth/notice/destroy','真实删除','fa fa-circle-o','','',0,1573140632,1573140632,0,'normal'),(274,'file',267,'auth/notice/restore','还原','fa fa-circle-o','','',0,1573140632,1573140632,0,'normal'),(275,'file',267,'auth/notice/multi','批量更新','fa fa-circle-o','','',0,1573140632,1573140632,0,'normal'),(276,'file',5,'auth/leave','请假管理','fa fa-bookmark','','',1,1573141955,1573144068,94,'normal'),(277,'file',276,'auth/leave/index','查看','fa fa-circle-o','','',0,1573141955,1573141955,0,'normal'),(278,'file',276,'auth/leave/recyclebin','回收站','fa fa-circle-o','','',0,1573141955,1573141955,0,'normal'),(279,'file',276,'auth/leave/add','添加','fa fa-circle-o','','',0,1573141955,1573141955,0,'normal'),(280,'file',276,'auth/leave/edit','编辑','fa fa-circle-o','','',0,1573141955,1573141955,0,'normal'),(281,'file',276,'auth/leave/del','删除','fa fa-circle-o','','',0,1573141955,1573141955,0,'normal'),(282,'file',276,'auth/leave/destroy','真实删除','fa fa-circle-o','','',0,1573141955,1573141955,0,'normal'),(283,'file',276,'auth/leave/restore','还原','fa fa-circle-o','','',0,1573141955,1573141955,0,'normal'),(284,'file',276,'auth/leave/multi','批量更新','fa fa-circle-o','','',0,1573141955,1573141955,0,'normal'),(285,'file',5,'auth/position','职位管理','fa fa-circle-o','','',1,1573142040,1573143919,98,'normal'),(286,'file',285,'auth/position/index','查看','fa fa-circle-o','','',0,1573142040,1573142040,0,'normal'),(287,'file',285,'auth/position/recyclebin','回收站','fa fa-circle-o','','',0,1573142040,1573142040,0,'normal'),(288,'file',285,'auth/position/add','添加','fa fa-circle-o','','',0,1573142040,1573142040,0,'normal'),(289,'file',285,'auth/position/edit','编辑','fa fa-circle-o','','',0,1573142040,1573142040,0,'normal'),(290,'file',285,'auth/position/del','删除','fa fa-circle-o','','',0,1573142040,1573142040,0,'normal'),(291,'file',285,'auth/position/destroy','真实删除','fa fa-circle-o','','',0,1573142040,1573142040,0,'normal'),(292,'file',285,'auth/position/restore','还原','fa fa-circle-o','','',0,1573142040,1573142040,0,'normal'),(293,'file',285,'auth/position/multi','批量更新','fa fa-circle-o','','',0,1573142040,1573142040,0,'normal'),(294,'file',5,'auth/department','部门管理','fa fa-bank','','',1,1573143705,1573144087,100,'normal'),(295,'file',294,'auth/department/index','查看','fa fa-circle-o','','',0,1573143705,1573143705,0,'normal'),(296,'file',294,'auth/department/recyclebin','回收站','fa fa-circle-o','','',0,1573143705,1573143705,0,'normal'),(297,'file',294,'auth/department/add','添加','fa fa-circle-o','','',0,1573143705,1573143705,0,'normal'),(298,'file',294,'auth/department/edit','编辑','fa fa-circle-o','','',0,1573143705,1573143705,0,'normal'),(299,'file',294,'auth/department/del','删除','fa fa-circle-o','','',0,1573143705,1573143705,0,'normal'),(300,'file',294,'auth/department/destroy','真实删除','fa fa-circle-o','','',0,1573143705,1573143705,0,'normal'),(301,'file',294,'auth/department/restore','还原','fa fa-circle-o','','',0,1573143705,1573143705,0,'normal'),(302,'file',294,'auth/department/multi','批量更新','fa fa-circle-o','','',0,1573143705,1573143705,0,'normal'),(303,'file',0,'order','订单管理','fa fa-list','','',1,1575970127,1575970320,137,'normal'),(310,'file',303,'order/sale','销售订单','fa fa-circle-o','','',1,1575970796,1575970866,99,'normal'),(311,'file',310,'order/sale/index','查看','fa fa-circle-o','','',0,1575970796,1575970796,0,'normal'),(312,'file',310,'order/sale/add','添加','fa fa-circle-o','','',0,1575970796,1575970796,0,'normal'),(313,'file',310,'order/sale/edit','编辑','fa fa-circle-o','','',0,1575970796,1575970796,0,'normal'),(314,'file',310,'order/sale/del','删除','fa fa-circle-o','','',0,1575970796,1575970796,0,'normal'),(315,'file',310,'order/sale/multi','批量更新','fa fa-circle-o','','',0,1575970796,1575970796,0,'normal'),(316,'file',303,'order/rent','租赁订单','fa fa-circle-o','','',1,1575970796,1575970849,100,'normal'),(317,'file',316,'order/rent/index','查看','fa fa-circle-o','','',0,1575970796,1575970796,0,'normal'),(318,'file',316,'order/rent/add','添加','fa fa-circle-o','','',0,1575970796,1575970796,0,'normal'),(319,'file',316,'order/rent/edit','编辑','fa fa-circle-o','','',0,1575970796,1575970796,0,'normal'),(320,'file',316,'order/rent/del','删除','fa fa-circle-o','','',0,1575970796,1575970796,0,'normal'),(321,'file',316,'order/rent/multi','批量更新','fa fa-circle-o','','',0,1575970796,1575970796,0,'normal'),(322,'file',160,'dress/dress_category','礼服分类','fa fa-circle-o','','',1,1577519168,1577519168,99,'normal');
/*!40000 ALTER TABLE `dr_auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_category`
--

DROP TABLE IF EXISTS `dr_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) NOT NULL DEFAULT '',
  `nickname` varchar(50) NOT NULL DEFAULT '',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `weigh` (`weigh`,`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_category`
--

LOCK TABLES `dr_category` WRITE;
/*!40000 ALTER TABLE `dr_category` DISABLE KEYS */;
INSERT INTO `dr_category` VALUES (1,0,'page','官方新闻','news','recommend','/assets/img/qrcode.png','','','news',1495262190,1495262190,1,'normal'),(2,0,'page','移动应用','mobileapp','hot','/assets/img/qrcode.png','','','mobileapp',1495262244,1495262244,2,'normal'),(3,2,'page','微信公众号','wechatpublic','index','/assets/img/qrcode.png','','','wechatpublic',1495262288,1495262288,3,'normal'),(4,2,'page','Android开发','android','recommend','/assets/img/qrcode.png','','','android',1495262317,1495262317,4,'normal'),(5,0,'page','软件产品','software','recommend','/assets/img/qrcode.png','','','software',1495262336,1499681850,5,'normal'),(6,5,'page','网站建站','website','recommend','/assets/img/qrcode.png','','','website',1495262357,1495262357,6,'normal'),(7,5,'page','企业管理软件','company','index','/assets/img/qrcode.png','','','company',1495262391,1495262391,7,'normal'),(8,6,'page','PC端','website-pc','recommend','/assets/img/qrcode.png','','','website-pc',1495262424,1495262424,8,'normal'),(9,6,'page','移动端','website-mobile','recommend','/assets/img/qrcode.png','','','website-mobile',1495262456,1495262456,9,'normal'),(10,7,'page','CRM系统 ','company-crm','recommend','/assets/img/qrcode.png','','','company-crm',1495262487,1495262487,10,'normal'),(11,7,'page','SASS平台软件','company-sass','recommend','/assets/img/qrcode.png','','','company-sass',1495262515,1495262515,11,'normal'),(12,0,'test','测试1','test1','recommend','/assets/img/qrcode.png','','','test1',1497015727,1497015727,12,'normal'),(13,0,'test','测试2','test2','recommend','/assets/img/qrcode.png','','','test2',1497015738,1497015738,13,'normal');
/*!40000 ALTER TABLE `dr_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_category_dress`
--

DROP TABLE IF EXISTS `dr_category_dress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_category_dress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `weigh` int(11) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `deletetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_category_dress`
--

LOCK TABLES `dr_category_dress` WRITE;
/*!40000 ALTER TABLE `dr_category_dress` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_category_dress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_category_leave`
--

DROP TABLE IF EXISTS `dr_category_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_category_leave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `weigh` int(11) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `deletetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_category_leave`
--

LOCK TABLES `dr_category_leave` WRITE;
/*!40000 ALTER TABLE `dr_category_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_category_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_category_notice`
--

DROP TABLE IF EXISTS `dr_category_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_category_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `weigh` int(11) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `deletetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_category_notice`
--

LOCK TABLES `dr_category_notice` WRITE;
/*!40000 ALTER TABLE `dr_category_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_category_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_command`
--

DROP TABLE IF EXISTS `dr_command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_command` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型',
  `params` varchar(1500) NOT NULL DEFAULT '' COMMENT '参数',
  `command` varchar(1500) NOT NULL DEFAULT '' COMMENT '命令',
  `content` text COMMENT '返回结果',
  `executetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '执行时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` enum('successed','failured') NOT NULL DEFAULT 'failured' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='在线命令表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_command`
--

LOCK TABLES `dr_command` WRITE;
/*!40000 ALTER TABLE `dr_command` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_command` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_company`
--

DROP TABLE IF EXISTS `dr_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `realname` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `weigh` int(11) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `deletetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_company`
--

LOCK TABLES `dr_company` WRITE;
/*!40000 ALTER TABLE `dr_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_config`
--

DROP TABLE IF EXISTS `dr_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `content` text NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_config`
--

LOCK TABLES `dr_config` WRITE;
/*!40000 ALTER TABLE `dr_config` DISABLE KEYS */;
INSERT INTO `dr_config` VALUES (1,'name','basic','Site name','请填写站点名称','string','礼服管理系统','','required',''),(2,'beian','basic','Beian','粤ICP备15000000号-1','string','','','',''),(3,'cdnurl','basic','Cdn url','如果静态资源使用第三方云储存请配置该值','string','','','',''),(4,'version','basic','Version','如果静态资源有变动请重新配置该值','string','1.0.1','','required',''),(5,'timezone','basic','Timezone','','string','Asia/Shanghai','','required',''),(6,'forbiddenip','basic','Forbidden ip','一行一条记录','text','','','',''),(7,'languages','basic','Languages','','array','{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}','','required',''),(8,'fixedpage','basic','Fixed page','请尽量输入左侧菜单栏存在的链接','string','dashboard','','required',''),(9,'categorytype','dictionary','Category type','','array','{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}','','',''),(10,'configgroup','dictionary','Config group','','array','{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}','','',''),(11,'mail_type','email','Mail type','选择邮件发送方式','select','1','[\"Please select\",\"SMTP\",\"Mail\"]','',''),(12,'mail_smtp_host','email','Mail smtp host','错误的配置发送邮件会导致服务器超时','string','smtp.qq.com','','',''),(13,'mail_smtp_port','email','Mail smtp port','(不加密默认25,SSL默认465,TLS默认587)','string','465','','',''),(14,'mail_smtp_user','email','Mail smtp user','（填写完整用户名）','string','10000','','',''),(15,'mail_smtp_pass','email','Mail smtp password','（填写您的密码）','string','password','','',''),(16,'mail_verify_type','email','Mail vertify type','（SMTP验证方式[推荐SSL]）','select','2','[\"None\",\"TLS\",\"SSL\"]','',''),(17,'mail_from','email','Mail from','','string','10000@qq.com','','','');
/*!40000 ALTER TABLE `dr_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_department`
--

DROP TABLE IF EXISTS `dr_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `title` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `weigh` int(11) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `deletetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_department`
--

LOCK TABLES `dr_department` WRITE;
/*!40000 ALTER TABLE `dr_department` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_dress`
--

DROP TABLE IF EXISTS `dr_dress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_dress` (
  `goods_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `goods_name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名称',
  `category_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商品类别',
  `images` varchar(1800) NOT NULL COMMENT '商品图片',
  `spec_type` enum('10','20') NOT NULL DEFAULT '10' COMMENT '商品规格:10=单规格,20=多规格',
  `deduct_stock_type` enum('10','20') NOT NULL DEFAULT '20' COMMENT '库存计算方式:10=下单减库存,20=付款减库存',
  `content` text NOT NULL COMMENT '描述详情',
  `sales_initial` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '初始销量',
  `sales_actual` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '实际销量',
  `goods_sort` int(11) unsigned NOT NULL DEFAULT '100' COMMENT '权重',
  `delivery_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '运费模板ID',
  `goods_status` enum('10','20') NOT NULL DEFAULT '10' COMMENT '商品状态:10=上架,20=下架',
  `is_delete` enum('0','1') NOT NULL DEFAULT '0' COMMENT '是否删除:0=未删除,1=已删除',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`goods_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_dress`
--

LOCK TABLES `dr_dress` WRITE;
/*!40000 ALTER TABLE `dr_dress` DISABLE KEYS */;
INSERT INTO `dr_dress` VALUES (3,'C1904115L2A',2,'https://s.cdn.hqt.cc/upload/137/dress/2019/12/89997137416d437980247b6a574d330a.jpg','20','20','1000',0,0,3,0,'10','0',1577522565,1577522565),(4,'秀禾服',2,'https://s.cdn.hqt.cc/upload/137/dress/2019/12/89997137416d437980247b6a574d330a.jpg','20','20','1000',0,0,4,0,'10','0',1577526427,1577526427);
/*!40000 ALTER TABLE `dr_dress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_dress_category`
--

DROP TABLE IF EXISTS `dr_dress_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_dress_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `image` varchar(180) NOT NULL COMMENT '图片',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_dress_category`
--

LOCK TABLES `dr_dress_category` WRITE;
/*!40000 ALTER TABLE `dr_dress_category` DISABLE KEYS */;
INSERT INTO `dr_dress_category` VALUES (1,0,'出门纱','/uploads/20191228/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg',100,1577519937,1577520156),(2,0,'中式礼服/秀禾','/uploads/20191228/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg',99,1577519990,1577520170),(3,0,'主纱','/uploads/20191228/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg',3,1577520055,1577520055),(4,3,'款型','/uploads/20191228/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg',100,1577520092,1577520262),(5,3,'裙摆','/uploads/20191228/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg',5,1577520110,1577520110),(6,3,'风格','/uploads/20191228/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg',0,1577520195,1577520202),(7,2,'款型','/uploads/20191228/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg',100,1577520251,1577520333),(8,2,'裙摆','/uploads/20191228/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg',80,1577520291,1577520357),(9,2,'风格','/uploads/20191228/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg',9,1577520325,1577520325),(10,1,'款型','/uploads/20191228/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg',100,1577520416,1577520446),(11,1,'裙摆','/uploads/20191228/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg',80,1577520434,1577520453),(12,1,'风格','/uploads/20191228/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg',12,1577520472,1577520472),(13,7,'龙凤褂','/uploads/20191228/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg',100,1577520525,1577520540),(14,7,'秀禾服','/uploads/20191228/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg',99,1577520568,1577520577);
/*!40000 ALTER TABLE `dr_dress_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_dress_package`
--

DROP TABLE IF EXISTS `dr_dress_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_dress_package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operate_id` int(11) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `rent_price` decimal(10,2) DEFAULT NULL,
  `sale_price` decimal(10,2) DEFAULT NULL,
  `remark` text,
  `status` int(11) DEFAULT NULL,
  `weigh` int(11) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `deletetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_dress_package`
--

LOCK TABLES `dr_dress_package` WRITE;
/*!40000 ALTER TABLE `dr_dress_package` DISABLE KEYS */;
INSERT INTO `dr_dress_package` VALUES (1,NULL,'588',588.00,588.00,'定制698衬衫+婚鞋+皮鞋',0,1,1577504938,1577504938,NULL),(2,NULL,'9999',9999.00,9999.00,'定制6980元西服+租赁28888主纱+出门服+齐地纱+敬酒服',0,2,1577504974,1577504974,NULL),(3,NULL,'4999',4999.00,4999.00,'定制6980元西服+租赁齐地纱+敬酒服',0,3,1577504997,1577504997,NULL),(4,NULL,'8999',8999.00,8999.00,'定制6980元西服+租赁28888元主纱+出门服+敬酒服',0,4,1577505026,1577505026,NULL);
/*!40000 ALTER TABLE `dr_dress_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_dress_set`
--

DROP TABLE IF EXISTS `dr_dress_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_dress_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operate_id` int(11) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `dress_ids` text,
  `remark` text,
  `status` int(11) DEFAULT NULL,
  `weigh` int(11) DEFAULT NULL,
  `createtime` varchar(45) DEFAULT NULL,
  `updatetime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_dress_set`
--

LOCK TABLES `dr_dress_set` WRITE;
/*!40000 ALTER TABLE `dr_dress_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_dress_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_dress_size`
--

DROP TABLE IF EXISTS `dr_dress_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_dress_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `weigh` int(11) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `deletetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_dress_size`
--

LOCK TABLES `dr_dress_size` WRITE;
/*!40000 ALTER TABLE `dr_dress_size` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_dress_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_dress_spec`
--

DROP TABLE IF EXISTS `dr_dress_spec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_dress_spec` (
  `goods_spec_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned NOT NULL DEFAULT '0',
  `goods_no` varchar(100) NOT NULL DEFAULT '',
  `goods_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `line_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `stock_num` int(11) NOT NULL DEFAULT '0',
  `goods_sales` int(11) unsigned NOT NULL DEFAULT '0',
  `goods_weight` double unsigned NOT NULL DEFAULT '0',
  `spec_sku_id` varchar(255) NOT NULL DEFAULT '',
  `spec_image` varchar(580) NOT NULL DEFAULT '' COMMENT '规格封面',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_spec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_dress_spec`
--

LOCK TABLES `dr_dress_spec` WRITE;
/*!40000 ALTER TABLE `dr_dress_spec` DISABLE KEYS */;
INSERT INTO `dr_dress_spec` VALUES (1,3,'red001',100.00,100.00,199,0,1,'1','/uploads/20191228/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg',1577522565,1577522565),(2,3,'golden',100.00,100.00,199,0,1,'2','/uploads/20191228/9cf8e1d0864b7bf3c8dfc0739915e1d6.jpg',1577522565,1577522565),(3,4,'10001',1000.00,1000.00,1000,0,1,'3','',1577526427,1577526427),(4,4,'10002',1000.00,1000.00,1000,0,1,'4','',1577526427,1577526427);
/*!40000 ALTER TABLE `dr_dress_spec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_dress_spec_rel`
--

DROP TABLE IF EXISTS `dr_dress_spec_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_dress_spec_rel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned NOT NULL DEFAULT '0',
  `spec_id` int(11) unsigned NOT NULL DEFAULT '0',
  `spec_value_id` int(11) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_dress_spec_rel`
--

LOCK TABLES `dr_dress_spec_rel` WRITE;
/*!40000 ALTER TABLE `dr_dress_spec_rel` DISABLE KEYS */;
INSERT INTO `dr_dress_spec_rel` VALUES (1,3,1,1,1577522565),(2,3,1,2,1577522565),(3,4,2,3,1577526427),(4,4,2,4,1577526427);
/*!40000 ALTER TABLE `dr_dress_spec_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_ems`
--

DROP TABLE IF EXISTS `dr_ems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_ems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) NOT NULL DEFAULT '' COMMENT '事件',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='邮箱验证码表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_ems`
--

LOCK TABLES `dr_ems` WRITE;
/*!40000 ALTER TABLE `dr_ems` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_ems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_leave`
--

DROP TABLE IF EXISTS `dr_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_leave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_leave_id` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  `starttime` int(11) DEFAULT '0',
  `endtime` int(11) DEFAULT '0',
  `confirm_user_id` int(11) DEFAULT '0',
  `confirmtime` int(11) DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `confirm_status` int(11) DEFAULT NULL,
  `weigh` int(11) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `deletetime` int(11) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_leave`
--

LOCK TABLES `dr_leave` WRITE;
/*!40000 ALTER TABLE `dr_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_litestore_adress`
--

DROP TABLE IF EXISTS `dr_litestore_adress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_litestore_adress` (
  `address_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(20) NOT NULL DEFAULT '',
  `province_id` int(11) unsigned NOT NULL DEFAULT '0',
  `city_id` int(11) unsigned NOT NULL DEFAULT '0',
  `region_id` int(11) unsigned NOT NULL DEFAULT '0',
  `detail` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `isdefault` enum('0','1') NOT NULL DEFAULT '0' COMMENT '是否默认:0=非默认,1=默认地址',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_litestore_adress`
--

LOCK TABLES `dr_litestore_adress` WRITE;
/*!40000 ALTER TABLE `dr_litestore_adress` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_litestore_adress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_litestore_category`
--

DROP TABLE IF EXISTS `dr_litestore_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_litestore_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `image` varchar(180) NOT NULL COMMENT '图片',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_litestore_category`
--

LOCK TABLES `dr_litestore_category` WRITE;
/*!40000 ALTER TABLE `dr_litestore_category` DISABLE KEYS */;
INSERT INTO `dr_litestore_category` VALUES (4,0,'电子产品','https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/509af801726984aaa359b4bf249f5716.png',4,1540367287,1541402940),(5,4,'手机','https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/4fffea1c27bfb8df655a39114bb05814.jpg',5,1540367298,1541402932),(6,0,'水果','https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/c83a0019dfa7a768037e98f02b70efd5.jpg',6,1540367311,1541403647),(7,6,'进口水果','https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/a460ffdbd534b10cdf40487189ccb6b7.jpg',7,1540367326,1541403531),(8,4,'笔记本','https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/efb53c4c7814c83aa3c21e0fd408b5df.jpg',8,1541402921,1541403316),(9,6,'国产水果','https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/753cd25e97135e874dca8ab5126ad144.jpg',9,1541403546,1541403622);
/*!40000 ALTER TABLE `dr_litestore_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_litestore_freight`
--

DROP TABLE IF EXISTS `dr_litestore_freight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_litestore_freight` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '运费模版名称',
  `method` enum('10','20') NOT NULL DEFAULT '10' COMMENT '计费方式:10=按件数,20=按重量',
  `weigh` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '权重',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'createtime',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_litestore_freight`
--

LOCK TABLES `dr_litestore_freight` WRITE;
/*!40000 ALTER TABLE `dr_litestore_freight` DISABLE KEYS */;
INSERT INTO `dr_litestore_freight` VALUES (22,'手机','10',22,1540288755,1540288755),(23,'电脑','10',23,1540363605,1540363605),(24,'水果','20',24,1540363644,1540363644);
/*!40000 ALTER TABLE `dr_litestore_freight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_litestore_freight_rule`
--

DROP TABLE IF EXISTS `dr_litestore_freight_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_litestore_freight_rule` (
  `rule_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `litestore_freight_id` int(11) unsigned NOT NULL DEFAULT '0',
  `region` text NOT NULL,
  `first` double unsigned NOT NULL DEFAULT '0',
  `first_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `additional` double unsigned NOT NULL DEFAULT '0',
  `additional_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `weigh` int(11) NOT NULL DEFAULT '0' COMMENT '权重',
  `create_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_litestore_freight_rule`
--

LOCK TABLES `dr_litestore_freight_rule` WRITE;
/*!40000 ALTER TABLE `dr_litestore_freight_rule` DISABLE KEYS */;
INSERT INTO `dr_litestore_freight_rule` VALUES (18,23,'2,20,38,61,76,84,104,124,150,168,180,197,208,221,232,244,250,264,271,278,290,304,319,337,352,362,372,376,389,398,407,422,430,442,449,462,467,481,492,500,508,515,522,530,537,545,553,558,566,574,581,586,597,607,614,619,627,634,640,646,656,675,692,702,711,720,730,748,759,764,775,782,793,802,821,833,842,853,861,871,880,887,896,906,913,920,927,934,948,960,972,980,986,993,1003,1010,1015,1025,1035,1047,1057,1066,1074,1081,1088,1093,1098,1110,1118,1127,1136,1142,1150,1155,1160,1169,1183,1190,1196,1209,1222,1234,1245,1253,1264,1274,1279,1285,1299,1302,1306,1325,1339,1350,1362,1376,1387,1399,1408,1415,1421,1434,1447,1459,1466,1471,1476,1479,1492,1504,1513,1522,1533,1546,1556,1572,1583,1593,1599,1612,1623,1630,1637,1643,1650,1664,1674,1685,1696,1707,1710,1724,1731,1740,1754,1764,1768,1774,1782,1791,1802,1809,1813,1822,1828,1838,1848,1854,1867,1880,1890,1900,1905,1912,1924,1936,1949,1955,1965,1977,1988,1999,2003,2011,2017,2025,2035,2041,2050,2056,2065,2070,2077,2082,2091,2123,2146,2150,2156,2163,2177,2189,2207,2215,2220,2225,2230,2236,2245,2258,2264,2276,2283,2292,2297,2302,2306,2324,2363,2368,2388,2395,2401,2409,2416,2426,2434,2440,2446,2458,2468,2475,2486,2493,2501,2510,2516,2521,2535,2554,2573,2584,2589,2604,2611,2620,2631,2640,2657,2671,2686,2696,2706,2712,2724,2730,2741,2750,2761,2775,2784,2788,2801,2807,2812,2817,2826,2845,2857,2870,2882,2890,2899,2913,2918,2931,2946,2958,2972,2984,2997,3008,3016,3023,3032,3036,3039,3045,3053,3058,3065,3073,3081,3090,3098,3108,3117,3127,3135,3142,3147,3152,3158,3165,3172,3179,3186,3190,3196,3202,3207,3216,3221,3225,3229,3237,3242,3252,3262,3267,3280,3289,3301,3309,3317,3326,3339,3378,3386,3416,3454,3458,3461,3491,3504,3518,3532,3551,3578,3592,3613,3632,3666,3683,3697,3704,3711,3717,3722,3728,3739,3745,3747',1,20.00,1,10.00,0,1540363605),(49,24,'2,20,38,61,76,84,104,124,150,168,180,197,208,221,232,244,250,264,271,278,290,304,319,337,352,362,372,376,389,398,407,422,430,442,449,462,467,481,492,500,508,515,522,530,537,545,553,558,566,574,581,586,597,607,614,619,627,634,640,646,656,675,692,702,711,720,730,748,759,764,775,782,793,802,821,833,842,853,861,871,880,887,896,906,913,920,927,934,948,960,972,980,986,993,1003,1010,1015,1025,1035,1047,1057,1066,1074,1081,1088,1093,1098,1110,1118,1127,1136,1142,1150,1155,1160,1169,1183,1190,1196,1209,1222,1234,1245,1253,1264,1274,1279,1285,1299,1302,1306,1325,1339,1350,1362,1376,1387,1399,1408,1415,1421,1434,1447,1459,1466,1471,1476,1479,1492,1504,1513,1522,1533,1546,1556,1572,1583,1593,1599,1612,1623,1630,1637,1643,1650,1664,1674,1685,1696,1707,1710,1724,1731,1740,1754,1764,1768,1774,1782,1791,1802,1809,1813,1822,1828,1838,1848,1854,1867,1880,1890,1900,1905,1912,1924,1936,1949,1955,1965,1977,1988,1999,2003,2011,2017,2025,2035,2041,2050,2056,2065,2070,2077,2082,2091,2123,2146,2150,2156,2163,2177,2189,2207,2215,2220,2225,2230,2236,2245,2258,2264,2276,2283,2292,2297,2302,2306,2324,2363,2368,2388,2395,2401,2409,2416,2426,2434,2440,2446,2458,2468,2475,2486,2493,2501,2510,2516,2521,2535,2554,2573,2584,2589,2604,2611,2620,2631,2640,2657,2671,2686,2696,2706,2712,2724,2730,2741,2750,2761,2775,2784,2788,2801,2807,2812,2817,2826,2845,2857,2870,2882,2890,2899,2913,2918,2931,2946,2958,2972,2984,2997,3008,3016,3023,3032,3036,3039,3045,3053,3058,3065,3073,3081,3090,3098,3108,3117,3127,3135,3142,3147,3152,3158,3165,3172,3179,3186,3190,3196,3202,3207,3216,3221,3225,3229,3237,3242,3252,3262,3267,3280,3289,3301,3309,3317,3326,3339,3378,3386,3416,3454,3458,3461,3491,3504,3518,3532,3551,3578,3592,3613,3632,3666,3683,3697,3704,3711,3717,3722,3728,3739,3745,3747',1,10.00,1,8.00,0,1543387208),(50,22,'2,20,38,61,76,84,104,124,150,168,180,197,208,221,232,244,250,264,271,278,290,304,319,337,352,362,372,376,389,398,407,422,430,442,449,462,467,481,492,500,508,515,522,530,537,545,553,558,566,574,581,586,597,607,614,619,627,634,640,646,656,675,692,702,711,720,730,748,759,764,775,782,793,802,821,833,842,853,861,871,880,887,896,906,913,920,927,934,948,960,972,980,986,993,1003,1010,1015,1025,1035,1047,1057,1066,1074,1081,1088,1093,1098,1110,1118,1127,1136,1142,1150,1155,1160,1169,1183,1190,1196,1209,1222,1234,1245,1253,1264,1274,1279,1285,1299,1302,1306,1325,1339,1350,1362,1376,1387,1399,1408,1415,1421,1434,1447,1459,1466,1471,1476,1479,1492,1504,1513,1522,1533,1546,1556,1572,1583,1593,1599,1612,1623,1630,1637,1643,1650,1664,1674,1685,1696,1707,1710,1724,1731,1740,1754,1764,1768,1774,1782,1791,1802,1809,1813,1822,1828,1838,1848,1854,1867,1880,1890,1900,1905,1912,1924,1936,1949,1955,1965,1977,1988,1999,2003,2011,2017,2025,2035,2041,2050,2056,2065,2070,2077,2082,2091,2123,2146,2150,2156,2163,2177,2189,2207,2215,2220,2225,2230,2236,2245,2258,2264,2276,2283,2292,2297,2302,2306,2324,2363,2368,2388,2395,2401,2409,2416,2426,2434,2440,2446,2458,2468,2475,2486,2493,2501,2510,2516,2521,2535,2554,2573,2584,2589,2604,2611,2620,2631,2640,2657,2671,2686,2696,2706,2712,2724,2730,2741,2750,2761,2775,2784,2788,2801,2807,2812,2817,2826,2845,2857,2870,2882,2890,2899,2913,2918,2931,2946,2958,2972,2984,2997,3008,3016,3023,3032,3036,3039,3045,3053,3058,3065,3073,3081,3090,3098,3108,3117,3127,3135,3142,3147,3152,3158,3165,3172,3179,3186,3190,3196,3202,3207,3216,3221,3225,3229,3237,3242,3252,3262,3267,3280,3289,3301,3309,3317,3326,3339,3378,3386,3416,3454,3458,3461,3491,3504,3518,3532,3551,3578,3592,3613,3632,3666,3683,3697,3704,3711,3717,3722,3728,3739,3745,3747',1,10.00,1,5.00,0,1543387223);
/*!40000 ALTER TABLE `dr_litestore_freight_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_litestore_goods`
--

DROP TABLE IF EXISTS `dr_litestore_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_litestore_goods` (
  `goods_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `goods_name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名称',
  `category_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商品类别',
  `images` varchar(1800) NOT NULL COMMENT '商品图片',
  `spec_type` enum('10','20') NOT NULL DEFAULT '10' COMMENT '商品规格:10=单规格,20=多规格',
  `deduct_stock_type` enum('10','20') NOT NULL DEFAULT '20' COMMENT '库存计算方式:10=下单减库存,20=付款减库存',
  `content` text NOT NULL COMMENT '描述详情',
  `sales_initial` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '初始销量',
  `sales_actual` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '实际销量',
  `goods_sort` int(11) unsigned NOT NULL DEFAULT '100' COMMENT '权重',
  `delivery_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '运费模板ID',
  `goods_status` enum('10','20') NOT NULL DEFAULT '10' COMMENT '商品状态:10=上架,20=下架',
  `is_delete` enum('0','1') NOT NULL DEFAULT '0' COMMENT '是否删除:0=未删除,1=已删除',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`goods_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_litestore_goods`
--

LOCK TABLES `dr_litestore_goods` WRITE;
/*!40000 ALTER TABLE `dr_litestore_goods` DISABLE KEYS */;
INSERT INTO `dr_litestore_goods` VALUES (21,'小米Mix3',5,'https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/ffc4440df18661948b9c2d4dd4ae419b.jpg,https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/83bf8f141969a9e3e607a768407fc7e0.jpg,https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/c5d85254fc17b1a1b0e2254470881e59.jpg','20','20','<p><img src=\"https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/f5b49f703245ef61bb3faa574f32076d.jpg\" data-filename=\"filename\" style=\"width: 699px;\"><img src=\"https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/7d0fe135394408d4332386117c928003.jpg\" data-filename=\"filename\" style=\"width: 699px;\"><img src=\"https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/6a87fa6af95e39d7dc227f666d7b8ff6.jpg\" data-filename=\"filename\" style=\"width: 699px;\"><img src=\"https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/32d58a08cf92282c8f28078137c970f2.jpg\" data-filename=\"filename\" style=\"width: 699px;\"><br></p>',20,4,21,22,'10','0',1541401778,1543221954),(22,'Mate 20 华为 HUAWEI ',5,'https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/b044b7bcd4930202fcd96d6b50453894.jpg,https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/4fffea1c27bfb8df655a39114bb05814.jpg,https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/e0d6dc822cf7632c66f7718bdd0dc2bc.jpg','20','20','<p style=\"text-align: center; line-height: 1.6;\"><img src=\"https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/3f0233e227359137bb55152c0750f8a2.png\" data-filename=\"filename\" style=\"width: 603px;\"><img src=\"https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/509af801726984aaa359b4bf249f5716.png\" data-filename=\"filename\" style=\"width: 603px;\"><br></p><p><br></p>',10,64,22,22,'10','0',1541402364,1543242861),(23,'MacBook Pro 13寸',8,'https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/eaccd76080ed9e7ece7642694e734885.png,https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/85587c2e045b71fb4c977884a19a36cb.jpg,https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/efb53c4c7814c83aa3c21e0fd408b5df.jpg','20','20','- <p><img src=\"https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/43b7a84d68a15d9058971526068a853a.jpg\" data-filename=\"filename\" style=\"width: 603px;\"><br></p>',0,12,23,23,'10','0',1541403061,1574821262),(24,'车厘子智利进口',7,'https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/a460ffdbd534b10cdf40487189ccb6b7.jpg,https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/c83a0019dfa7a768037e98f02b70efd5.jpg','10','20','<p><img src=\"https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181105/611619c7dac06511213278a469a1efea.jpg\" data-filename=\"filename\" style=\"width: 603px;\"><br></p>',0,12,24,24,'10','0',1541403509,1543246427);
/*!40000 ALTER TABLE `dr_litestore_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_litestore_goods_spec`
--

DROP TABLE IF EXISTS `dr_litestore_goods_spec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_litestore_goods_spec` (
  `goods_spec_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned NOT NULL DEFAULT '0',
  `goods_no` varchar(100) NOT NULL DEFAULT '',
  `goods_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `line_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `stock_num` int(11) NOT NULL DEFAULT '0',
  `goods_sales` int(11) unsigned NOT NULL DEFAULT '0',
  `goods_weight` double unsigned NOT NULL DEFAULT '0',
  `spec_sku_id` varchar(255) NOT NULL DEFAULT '',
  `spec_image` varchar(580) NOT NULL DEFAULT '' COMMENT '规格封面',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_spec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_litestore_goods_spec`
--

LOCK TABLES `dr_litestore_goods_spec` WRITE;
/*!40000 ALTER TABLE `dr_litestore_goods_spec` DISABLE KEYS */;
INSERT INTO `dr_litestore_goods_spec` VALUES (81,21,'SN001',3299.00,0.00,997,2,0.5,'40_42','',1542271178,1543221954),(82,21,'SN002',3999.00,0.00,999,0,0.5,'40_43','',1542271178,1542271178),(83,21,'SN011',3399.00,0.00,999,0,0.5,'41_42','',1542271178,1542271178),(84,21,'SN012',4099.00,0.00,999,0,0.5,'41_43','',1542271178,1542271178),(94,24,'CHE001',258.00,299.00,94,12,1,'','',1542707236,1543283382),(103,22,'SNHW001',4499.00,0.00,941,58,500,'44_46','',1542784591,1543242861),(104,22,'SNHW001',5899.00,0.00,997,2,500,'44_47','',1542784591,1542978749),(105,22,'SNHW001',4699.00,0.00,996,3,500,'45_46','',1542784591,1543242861),(106,22,'SNHW001',6099.00,0.00,999,0,500,'45_47','',1542784591,1542784591),(107,23,'mac_0001',12688.00,0.00,989,0,1.2,'48','',1574821262,1574821262),(108,23,'mac_0002',12688.00,0.00,997,0,1.2,'49','',1574821262,1574821262);
/*!40000 ALTER TABLE `dr_litestore_goods_spec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_litestore_goods_spec_rel`
--

DROP TABLE IF EXISTS `dr_litestore_goods_spec_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_litestore_goods_spec_rel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned NOT NULL DEFAULT '0',
  `spec_id` int(11) unsigned NOT NULL DEFAULT '0',
  `spec_value_id` int(11) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_litestore_goods_spec_rel`
--

LOCK TABLES `dr_litestore_goods_spec_rel` WRITE;
/*!40000 ALTER TABLE `dr_litestore_goods_spec_rel` DISABLE KEYS */;
INSERT INTO `dr_litestore_goods_spec_rel` VALUES (78,21,20,40,1542271178),(79,21,20,41,1542271178),(80,21,21,42,1542271178),(81,21,21,43,1542271178),(98,22,20,44,1542784591),(99,22,20,45,1542784591),(100,22,22,46,1542784591),(101,22,22,47,1542784591),(102,23,20,48,1574821262),(103,23,20,49,1574821262);
/*!40000 ALTER TABLE `dr_litestore_goods_spec_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_litestore_news`
--

DROP TABLE IF EXISTS `dr_litestore_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_litestore_news` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `image` varchar(180) NOT NULL DEFAULT '' COMMENT '图片',
  `content` mediumtext COMMENT '内容',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='首页banner';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_litestore_news`
--

LOCK TABLES `dr_litestore_news` WRITE;
/*!40000 ALTER TABLE `dr_litestore_news` DISABLE KEYS */;
INSERT INTO `dr_litestore_news` VALUES (1,'双十一！来Pink Dream 脱单吧！','https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181114/8543faa4986afc586e953137aaf741c3.png','<section style=\"margin: 20px 0px 10px; padding: 0px; max-width: 100%; text-align: center; word-wrap: break-word !important;\"><section style=\"margin: 0px; padding: 0px 10px; max-width: 100%; display: inline-block; min-width: 10%; vertical-align: top; word-wrap: break-word !important;\"><section class=\"\" powered-by=\"xiumi.us\" style=\"margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;\"><section style=\"margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;\"><section style=\"margin: 0px; padding: 3px 10px 6px; max-width: 100%; display: inline-block; min-width: 10%; vertical-align: top; border-width: 1px; border-radius: 0px; border-style: solid none; border-color: rgb(79, 197, 222); word-wrap: break-word !important;\"><section class=\"\" powered-by=\"xiumi.us\" style=\"margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;\"><section style=\"margin: 3px 0px 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;\"><section style=\"margin: 0px; padding: 0px; max-width: 100%; font-size: 14px; color: rgb(238, 162, 193); line-height: 2; letter-spacing: 1px; word-wrap: break-word !important;\"><p style=\"margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; font-size: 16px; word-wrap: break-word !important;\">你还是单身吗？</span></p><p style=\"margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; font-size: 16px; word-wrap: break-word !important;\">快来抓娃娃邂逅你的另一半吧！</span></p><p style=\"margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; font-size: 16px; word-wrap: break-word !important;\">或许你的他是百发百中的抓娃娃大神，</span></p><p style=\"margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; font-size: 16px; word-wrap: break-word !important;\">或许你的她是粉粉少女心的小仙女，</span></p><p style=\"margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; font-size: 16px; word-wrap: break-word !important;\">来Pink Dream活动脱单吧！</span></p></section></section></section><section class=\"\" powered-by=\"xiumi.us\" style=\"margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;\"><section style=\"margin: -5px 0px -20px; padding: 0px; max-width: 100%; word-wrap: break-word !important;\"><section style=\"margin: 0px; padding: 0px 5px; max-width: 100%; display: inline-block; width: 30px; height: 30px; vertical-align: top; overflow: hidden; word-wrap: break-word !important;\"><section class=\"\" powered-by=\"xiumi.us\" style=\"margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;\"><section style=\"margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;\"><section style=\"margin: 0px; padding: 0px; max-width: 100%; vertical-align: middle; display: inline-block; width: 20px; word-wrap: break-word !important;\"><svg xmlns=\"http://www.w3.org/2000/svg\" x=\"0px\" y=\"0px\" viewBox=\"0 0 168.9 125.4\" style=\"vertical-align: middle; max-width: 100%;\" width=\"100%\"><g><path d=\"M96.7,62.7V9.3c0-5.2,4.3-9.3,9.3-9.3h53.4c5.2,0,9.5,4.1,9.5,9.3v53.4c0,34.6-28.2,62.7-62.8,62.7   c-5.1,0-9.3-4.1-9.3-9.3c0-5.2,4.3-9.3,9.3-9.3c21.1,0,38.8-14.9,43.1-34.7h-43.1C101,72.1,96.7,67.9,96.7,62.7z\" fill=\"rgb(79,197,222)\"></path><path d=\"M0,62.7V9.3C0,4.1,4.3,0,9.3,0h53.4c5.2,0,9.5,4.1,9.5,9.3v53.4c0,34.6-28.2,62.7-62.8,62.7   c-5.1,0-9.3-4.1-9.3-9.3c0-5.2,4.3-9.3,9.3-9.3c21.1,0,38.8-14.9,43.1-34.7H9.3C4.3,72.1,0,67.9,0,62.7z\" fill=\"rgb(79,197,222)\"></path></g></svg></section></section></section></section></section></section></section></section></section></section><p style=\"text-align: center; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; word-wrap: break-word !important;\"><img src=\"https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181114/20181128141517.gif\" style=\"width: 373.172px; height: 311.211px;\"></p><p style=\"text-align: center; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; word-wrap: break-word !important;\"><br></p><p style=\"text-align: center; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; word-wrap: break-word !important;\"><img src=\"https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181114/50286403e58df6c6cb296036f44f6ea4.png\" style=\"width: 537px;\"></p><p style=\"text-align: center; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; word-wrap: break-word !important;\"><img src=\"https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181114/fe795e4aa817900e223b6152f14eb57b.png\" style=\"width: 533px;\"><br style=\"margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;\"></p></section>',1542096807,1543385827,'normal'),(2,'轻断食免费送 | 没当上VOGUE女魔头 她却创立了一个婚纱帝国','https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181128/88ec778c0b1743586f42b5e848ad5f42.png','<p><img src=\"https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181128/4647b1cb325061ae2d68c68028a762d0.jpg\" style=\"width: 669px;\" data-filename=\"filename\"></p><p>在纽约流行着一段话：</p><p>未婚女人憧憬拥有一件 Vera Wang</p><p>已婚女人时常怀念自己穿过的那件 VeraWang</p><p>再婚女人庆幸自己可以再要一件 Vera Wang</p><p style=\"margin-right: 16px; margin-bottom: 0px; margin-left: 16px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1.75em; word-wrap: break-word !important; overflow-wrap: break-word !important;\"><img src=\"https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181128/297e2a8798261c7c9e5bc82c27377c57.jpg\" style=\"width: 657px;\" data-filename=\"filename\"></p><p style=\"margin-right: 16px; margin-bottom: 0px; margin-left: 16px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1.75em; word-wrap: break-word !important; overflow-wrap: break-word !important;\"><br></p><p style=\"margin-right: 16px; margin-bottom: 0px; margin-left: 16px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1.75em; word-wrap: break-word !important; overflow-wrap: break-word !important;\">创造了婚纱帝国的王薇薇 VeraWang，简直就是一位传奇女士。或许大家一直向往她的婚纱，但一定不知道这些华服下的，她那精彩的人生。</p><p style=\"margin-right: 16px; margin-bottom: 0px; margin-left: 16px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1.75em; word-wrap: break-word !important; overflow-wrap: break-word !important;\"><br></p><p style=\"margin-right: 16px; margin-bottom: 0px; margin-left: 16px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1.75em; word-wrap: break-word !important; overflow-wrap: break-word !important;\"><img src=\"https://her-family.oss-cn-qingdao.aliyuncs.com/addons_store_uploads/20181128/241e24822db3cf5edab983d7c3fec03f.jpg\" style=\"width: 657px;\" data-filename=\"filename\"></p><p style=\"margin-right: 16px; margin-bottom: 0px; margin-left: 16px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1.75em; word-wrap: break-word !important; overflow-wrap: break-word !important;\"><br></p><p style=\"margin-right: 16px; margin-bottom: 0px; margin-left: 16px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1.75em; word-wrap: break-word !important; overflow-wrap: break-word !important;\">今年69岁的王薇薇本身是个富家女。她也常常在采访中表示，能获得现在的财富，家庭对她的帮助和影响都很大。</p><p style=\"margin-right: 16px; margin-bottom: 0px; margin-left: 16px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1.75em; word-wrap: break-word !important; overflow-wrap: break-word !important;\"><br></p><p style=\"margin-right: 16px; margin-bottom: 0px; margin-left: 16px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1.75em; word-wrap: break-word !important; overflow-wrap: break-word !important;\">她的家庭非常富有，父亲事业上非常成功，精通工业、制造业，还是新加坡 Oceanic Petroleum 的主要股东,学历也超高，是麻省理工毕业的高材生。母亲吴赤芳是联合国的翻译官，小时候就会带着她去巴黎看时装走秀什么的，从小一直学滑冰，养成系的名媛。。。。。。</p>',1543386743,1543387060,'normal');
/*!40000 ALTER TABLE `dr_litestore_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_litestore_order`
--

DROP TABLE IF EXISTS `dr_litestore_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_litestore_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `order_no` varchar(20) NOT NULL DEFAULT '' COMMENT '订单编号',
  `total_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '商品金额',
  `pay_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '订单总支付金额',
  `pay_status` enum('10','20') NOT NULL DEFAULT '10' COMMENT '支付状态:10=未支付,20=已支付',
  `pay_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '支付时间',
  `express_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '邮费',
  `express_company` varchar(50) NOT NULL DEFAULT '' COMMENT '快递公司',
  `express_no` varchar(50) NOT NULL DEFAULT '' COMMENT '快递单号',
  `freight_status` enum('10','20') NOT NULL DEFAULT '10' COMMENT '发货状态:10=未发货,20=已发货',
  `freight_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发货时间',
  `receipt_status` enum('10','20') NOT NULL DEFAULT '10' COMMENT '收货状态:10=未收货,20=已收货',
  `receipt_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '收货时间',
  `order_status` enum('10','20','30') NOT NULL DEFAULT '10' COMMENT '订单状态:10=进行中,20=取消,30=已完成',
  `transaction_id` varchar(30) NOT NULL DEFAULT '' COMMENT '微信支付ID',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '生成时间',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_no` (`order_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_litestore_order`
--

LOCK TABLES `dr_litestore_order` WRITE;
/*!40000 ALTER TABLE `dr_litestore_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_litestore_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_litestore_order_address`
--

DROP TABLE IF EXISTS `dr_litestore_order_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_litestore_order_address` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '联系人',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `province_id` int(11) unsigned NOT NULL DEFAULT '0',
  `city_id` int(11) unsigned NOT NULL DEFAULT '0',
  `region_id` int(11) unsigned NOT NULL DEFAULT '0',
  `detail` varchar(255) NOT NULL DEFAULT '' COMMENT '详细地址',
  `order_id` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_litestore_order_address`
--

LOCK TABLES `dr_litestore_order_address` WRITE;
/*!40000 ALTER TABLE `dr_litestore_order_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_litestore_order_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_litestore_order_goods`
--

DROP TABLE IF EXISTS `dr_litestore_order_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_litestore_order_goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `goods_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `goods_name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名称',
  `images` varchar(1800) NOT NULL COMMENT '商品图片',
  `deduct_stock_type` enum('10','20') NOT NULL DEFAULT '20' COMMENT '库存计算方式:10=下单减库存,20=付款减库存',
  `spec_type` enum('10','20') NOT NULL DEFAULT '10' COMMENT '商品规格:10=单规格,20=多规格',
  `spec_sku_id` varchar(255) NOT NULL DEFAULT '' COMMENT '规格sku',
  `goods_spec_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商品规格ID',
  `goods_attr` varchar(500) NOT NULL DEFAULT '' COMMENT '商品规格描述',
  `content` text NOT NULL COMMENT '商品描述',
  `goods_no` varchar(100) NOT NULL DEFAULT '' COMMENT '商品编号',
  `goods_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `line_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `goods_weight` double unsigned NOT NULL DEFAULT '0',
  `total_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '购买数量',
  `total_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '总价',
  `order_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '订单ID',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_litestore_order_goods`
--

LOCK TABLES `dr_litestore_order_goods` WRITE;
/*!40000 ALTER TABLE `dr_litestore_order_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_litestore_order_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_litestore_spec`
--

DROP TABLE IF EXISTS `dr_litestore_spec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_litestore_spec` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `spec_name` varchar(255) NOT NULL DEFAULT '',
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_litestore_spec`
--

LOCK TABLES `dr_litestore_spec` WRITE;
/*!40000 ALTER TABLE `dr_litestore_spec` DISABLE KEYS */;
INSERT INTO `dr_litestore_spec` VALUES (20,'颜色',1541401442),(21,'版本',1541401484),(22,'内存',1541402270),(23,'尺寸',1574821294),(24,'尺码',1575020359);
/*!40000 ALTER TABLE `dr_litestore_spec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_litestore_spec_value`
--

DROP TABLE IF EXISTS `dr_litestore_spec_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_litestore_spec_value` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `spec_value` varchar(255) NOT NULL,
  `spec_id` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_litestore_spec_value`
--

LOCK TABLES `dr_litestore_spec_value` WRITE;
/*!40000 ALTER TABLE `dr_litestore_spec_value` DISABLE KEYS */;
INSERT INTO `dr_litestore_spec_value` VALUES (40,'黑色',20,1541401442),(41,'翡翠绿',20,1541401451),(42,'6+128',21,1541401484),(43,'8+128',21,1541401489),(44,'亮黑色',20,1541402233),(45,'极光色',20,1541402243),(46,'6GB+64GB',22,1541402271),(47,'8GB+128GB',22,1541402279),(48,'天空灰',20,1541403005),(49,'银色',20,1541403011),(50,'L',23,1574821294),(51,'XL',23,1574821312),(52,'XXL',23,1574821318),(53,'L',24,1575020359),(54,'XL',24,1575020365),(55,'XXL',24,1575020372),(56,'红色',20,1575521447),(57,'蓝色',20,1575521452);
/*!40000 ALTER TABLE `dr_litestore_spec_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_notice`
--

DROP TABLE IF EXISTS `dr_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_notice_id` int(11) DEFAULT '0',
  `click_num` int(11) DEFAULT '0',
  `title` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `weigh` int(11) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `deletetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_notice`
--

LOCK TABLES `dr_notice` WRITE;
/*!40000 ALTER TABLE `dr_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_order`
--

DROP TABLE IF EXISTS `dr_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(64) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单编号',
  `order_type` int(11) NOT NULL DEFAULT '0' COMMENT '订单类型',
  `salesman` int(11) NOT NULL DEFAULT '0' COMMENT '接单人',
  `confirmman` int(11) NOT NULL DEFAULT '0' COMMENT '确认人',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '订单状态',
  `customer_id` int(11) NOT NULL DEFAULT '0' COMMENT '客户信息',
  `mobile` char(15) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '客户电话',
  `source_id` int(11) NOT NULL DEFAULT '0' COMMENT '客户来源',
  `zone` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '客户地区',
  `dress_id` int(11) NOT NULL DEFAULT '0' COMMENT '礼服',
  `dress_package_id` int(11) NOT NULL DEFAULT '0' COMMENT '礼服套餐',
  `dress_set_id` int(11) NOT NULL DEFAULT '0' COMMENT '礼服组合',
  `is_express` int(11) NOT NULL DEFAULT '0' COMMENT '快递取件',
  `is_wash` int(11) NOT NULL DEFAULT '0' COMMENT '需要洗衣',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `confirm_time` int(11) NOT NULL DEFAULT '0',
  `delete_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_order`
--

LOCK TABLES `dr_order` WRITE;
/*!40000 ALTER TABLE `dr_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_payment`
--

DROP TABLE IF EXISTS `dr_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `weigh` int(11) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `deletetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_payment`
--

LOCK TABLES `dr_payment` WRITE;
/*!40000 ALTER TABLE `dr_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_position`
--

DROP TABLE IF EXISTS `dr_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) DEFAULT '0',
  `title` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `weigh` int(11) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `deletetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_position`
--

LOCK TABLES `dr_position` WRITE;
/*!40000 ALTER TABLE `dr_position` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_scrap`
--

DROP TABLE IF EXISTS `dr_scrap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_scrap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scrap_no` char(45) DEFAULT NULL,
  `operate_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `rent_scrap_num` int(11) DEFAULT NULL,
  `sale_scrap_num` int(11) DEFAULT NULL,
  `deal_user_id` int(11) DEFAULT NULL,
  `confirm_user_id` int(11) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  `udpatetime` int(11) DEFAULT NULL,
  `deletetime` int(11) DEFAULT NULL,
  `confirmtime` int(11) DEFAULT NULL,
  `confirm_status` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `weigh` int(11) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_scrap`
--

LOCK TABLES `dr_scrap` WRITE;
/*!40000 ALTER TABLE `dr_scrap` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_scrap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_sms`
--

DROP TABLE IF EXISTS `dr_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_sms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) NOT NULL DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='短信验证码表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_sms`
--

LOCK TABLES `dr_sms` WRITE;
/*!40000 ALTER TABLE `dr_sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_source`
--

DROP TABLE IF EXISTS `dr_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `weigh` int(11) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `deletetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_source`
--

LOCK TABLES `dr_source` WRITE;
/*!40000 ALTER TABLE `dr_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_spec`
--

DROP TABLE IF EXISTS `dr_spec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_spec` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `spec_name` varchar(255) NOT NULL DEFAULT '',
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_spec`
--

LOCK TABLES `dr_spec` WRITE;
/*!40000 ALTER TABLE `dr_spec` DISABLE KEYS */;
INSERT INTO `dr_spec` VALUES (1,'颜色',1577521952),(2,'风格',1577526281);
/*!40000 ALTER TABLE `dr_spec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_spec_value`
--

DROP TABLE IF EXISTS `dr_spec_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_spec_value` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `spec_value` varchar(255) NOT NULL,
  `spec_id` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_spec_value`
--

LOCK TABLES `dr_spec_value` WRITE;
/*!40000 ALTER TABLE `dr_spec_value` DISABLE KEYS */;
INSERT INTO `dr_spec_value` VALUES (1,'红色',1,1577521952),(2,'金色',1,1577521962),(3,'浪漫',2,1577526281),(4,'优雅',2,1577526312);
/*!40000 ALTER TABLE `dr_spec_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_storage`
--

DROP TABLE IF EXISTS `dr_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) DEFAULT NULL COMMENT '供应商ID',
  `operate_id` int(11) DEFAULT NULL,
  `storage_no` varchar(45) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `rent_num` int(11) DEFAULT NULL,
  `sale_num` int(11) DEFAULT NULL,
  `do_user_id` int(11) DEFAULT NULL COMMENT '经办人ID',
  `confirm_user_id` int(11) DEFAULT NULL COMMENT '审核人ID',
  `createtime` int(11) DEFAULT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `confirmtime` int(11) DEFAULT NULL,
  `confirm_status` int(11) DEFAULT NULL COMMENT '审核状态',
  `status` int(11) DEFAULT NULL COMMENT '是否上线\n',
  `deletetime` int(11) DEFAULT NULL,
  `remark` text,
  `dress_ids` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_storage`
--

LOCK TABLES `dr_storage` WRITE;
/*!40000 ALTER TABLE `dr_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_store`
--

DROP TABLE IF EXISTS `dr_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `adress` varchar(100) DEFAULT NULL,
  `message_sign` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `weigh` int(11) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `deletetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_store`
--

LOCK TABLES `dr_store` WRITE;
/*!40000 ALTER TABLE `dr_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_supplier`
--

DROP TABLE IF EXISTS `dr_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `realname` varchar(45) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `bank` varchar(45) DEFAULT NULL COMMENT '银行名称',
  `bank_account` varchar(45) DEFAULT NULL COMMENT '账号名称\n',
  `bank_account_num` varchar(45) DEFAULT NULL COMMENT '银行账号',
  `weigh` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  `udpatetime` int(11) DEFAULT NULL,
  `deletetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_supplier`
--

LOCK TABLES `dr_supplier` WRITE;
/*!40000 ALTER TABLE `dr_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_test`
--

DROP TABLE IF EXISTS `dr_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '省市',
  `json` varchar(255) DEFAULT NULL COMMENT '配置:key=名称,value=值',
  `price` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '价格',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) DEFAULT NULL COMMENT '刷新时间(int)',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='测试表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_test`
--

LOCK TABLES `dr_test` WRITE;
/*!40000 ALTER TABLE `dr_test` DISABLE KEYS */;
INSERT INTO `dr_test` VALUES (1,0,12,'12,13','monday','hot,index','male','music,reading','我是一篇测试文章','<p>我是测试内容</p>','/assets/img/avatar.png','/assets/img/avatar.png,/assets/img/qrcode.png','/assets/img/avatar.png','关键字','描述','广西壮族自治区/百色市/平果县','{\"a\":\"1\",\"b\":\"2\"}',0.00,0,'2017-07-10','2017-07-10 18:24:45',2017,'18:24:45',1499682285,1499682526,1499682526,NULL,0,1,'normal','1');
/*!40000 ALTER TABLE `dr_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_third`
--

DROP TABLE IF EXISTS `dr_third`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_third` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `platform` varchar(30) NOT NULL DEFAULT '' COMMENT '第三方应用',
  `openid` varchar(50) NOT NULL DEFAULT '' COMMENT '第三方唯一ID',
  `openname` varchar(50) NOT NULL DEFAULT '' COMMENT '第三方会员昵称',
  `access_token` varchar(255) NOT NULL DEFAULT '' COMMENT 'AccessToken',
  `refresh_token` varchar(255) NOT NULL DEFAULT 'RefreshToken',
  `expires_in` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '有效期',
  `createtime` int(10) unsigned DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) unsigned DEFAULT NULL COMMENT '更新时间',
  `logintime` int(10) unsigned DEFAULT NULL COMMENT '登录时间',
  `expiretime` int(10) unsigned DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `platform` (`platform`,`openid`),
  KEY `user_id` (`user_id`,`platform`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='第三方登录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_third`
--

LOCK TABLES `dr_third` WRITE;
/*!40000 ALTER TABLE `dr_third` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_third` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_user`
--

DROP TABLE IF EXISTS `dr_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '组别ID',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) NOT NULL DEFAULT '' COMMENT '格言',
  `money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '余额',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `successions` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '连续登录天数',
  `maxsuccessions` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '最大连续登录天数',
  `prevtime` int(10) DEFAULT NULL COMMENT '上次登录时间',
  `logintime` int(10) DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) NOT NULL DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `joinip` varchar(50) NOT NULL DEFAULT '' COMMENT '加入IP',
  `jointime` int(10) DEFAULT NULL COMMENT '加入时间',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'Token',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  `verification` varchar(255) NOT NULL DEFAULT '' COMMENT '验证',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_user`
--

LOCK TABLES `dr_user` WRITE;
/*!40000 ALTER TABLE `dr_user` DISABLE KEYS */;
INSERT INTO `dr_user` VALUES (1,1,'admin','admin','c13f62012fd6a8fdf06b3452a94430e5','rpR6Bv','admin@163.com','13888888888','',0,0,'2017-04-15','',0.00,0,1,1,1516170492,1516171614,'127.0.0.1',0,'127.0.0.1',1491461418,0,1516171614,'','normal',''),(2,1,'liucunzhou','','','','','18321277411','',0,1,'2019-12-28','',0.00,0,1,1,NULL,NULL,'',0,'',NULL,1577503859,1577503859,'','','');
/*!40000 ALTER TABLE `dr_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_user_group`
--

DROP TABLE IF EXISTS `dr_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '' COMMENT '组名',
  `rules` text COMMENT '权限节点',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员组表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_user_group`
--

LOCK TABLES `dr_user_group` WRITE;
/*!40000 ALTER TABLE `dr_user_group` DISABLE KEYS */;
INSERT INTO `dr_user_group` VALUES (1,'默认组','1,2,3,4,5,6,7,8,9,10,11,12',1515386468,1516168298,'normal');
/*!40000 ALTER TABLE `dr_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_user_money_log`
--

DROP TABLE IF EXISTS `dr_user_money_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_user_money_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更余额',
  `before` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更前余额',
  `after` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更后余额',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员余额变动表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_user_money_log`
--

LOCK TABLES `dr_user_money_log` WRITE;
/*!40000 ALTER TABLE `dr_user_money_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_user_money_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_user_rule`
--

DROP TABLE IF EXISTS `dr_user_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_user_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `title` varchar(50) DEFAULT '' COMMENT '标题',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) DEFAULT NULL COMMENT '是否菜单',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) DEFAULT '0' COMMENT '权重',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员规则表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_user_rule`
--

LOCK TABLES `dr_user_rule` WRITE;
/*!40000 ALTER TABLE `dr_user_rule` DISABLE KEYS */;
INSERT INTO `dr_user_rule` VALUES (1,0,'index','前台','',1,1516168079,1516168079,1,'normal'),(2,0,'api','API接口','',1,1516168062,1516168062,2,'normal'),(3,1,'user','会员模块','',1,1515386221,1516168103,12,'normal'),(4,2,'user','会员模块','',1,1515386221,1516168092,11,'normal'),(5,3,'index/user/login','登录','',0,1515386247,1515386247,5,'normal'),(6,3,'index/user/register','注册','',0,1515386262,1516015236,7,'normal'),(7,3,'index/user/index','会员中心','',0,1516015012,1516015012,9,'normal'),(8,3,'index/user/profile','个人资料','',0,1516015012,1516015012,4,'normal'),(9,4,'api/user/login','登录','',0,1515386247,1515386247,6,'normal'),(10,4,'api/user/register','注册','',0,1515386262,1516015236,8,'normal'),(11,4,'api/user/index','会员中心','',0,1516015012,1516015012,10,'normal'),(12,4,'api/user/profile','个人资料','',0,1516015012,1516015012,3,'normal');
/*!40000 ALTER TABLE `dr_user_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_user_score_log`
--

DROP TABLE IF EXISTS `dr_user_score_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_user_score_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT '0' COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT '0' COMMENT '变更后积分',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员积分变动表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_user_score_log`
--

LOCK TABLES `dr_user_score_log` WRITE;
/*!40000 ALTER TABLE `dr_user_score_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_user_score_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_user_token`
--

DROP TABLE IF EXISTS `dr_user_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_user_token` (
  `token` varchar(50) NOT NULL COMMENT 'Token',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `expiretime` int(10) DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员Token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_user_token`
--

LOCK TABLES `dr_user_token` WRITE;
/*!40000 ALTER TABLE `dr_user_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_user_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_version`
--

DROP TABLE IF EXISTS `dr_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dr_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `oldversion` varchar(30) NOT NULL DEFAULT '' COMMENT '旧版本号',
  `newversion` varchar(30) NOT NULL DEFAULT '' COMMENT '新版本号',
  `packagesize` varchar(30) NOT NULL DEFAULT '' COMMENT '包大小',
  `content` varchar(500) NOT NULL DEFAULT '' COMMENT '升级内容',
  `downloadurl` varchar(255) NOT NULL DEFAULT '' COMMENT '下载地址',
  `enforce` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '强制更新',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='版本表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_version`
--

LOCK TABLES `dr_version` WRITE;
/*!40000 ALTER TABLE `dr_version` DISABLE KEYS */;
INSERT INTO `dr_version` VALUES (1,'1.1.1,2','1.2.1','20M','更新内容','https://www.fastadmin.net/download.html',1,1520425318,0,0,'normal');
/*!40000 ALTER TABLE `dr_version` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-03 20:07:20
