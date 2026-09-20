-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl11500170
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `cl11500170`
--

/*!40000 DROP DATABASE IF EXISTS `cl11500170`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl11500170` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl11500170`;

--
-- Table structure for table `chengjixinxi`
--

DROP TABLE IF EXISTS `chengjixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chengjixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `chengji` double NOT NULL COMMENT '成绩',
  `chengjileixing` varchar(200) DEFAULT NULL COMMENT '成绩类型',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='成绩信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chengjixinxi`
--

LOCK TABLES `chengjixinxi` WRITE;
/*!40000 ALTER TABLE `chengjixinxi` DISABLE KEYS */;
INSERT INTO `chengjixinxi` VALUES (161,'2024-02-29 11:23:24','课程名称1',1,'考试成绩','用户账号1','用户姓名1','教师工号1','教师姓名1'),(162,'2024-02-29 11:23:24','课程名称2',2,'考试成绩','用户账号2','用户姓名2','教师工号2','教师姓名2'),(163,'2024-02-29 11:23:24','课程名称3',3,'考试成绩','用户账号3','用户姓名3','教师工号3','教师姓名3'),(164,'2024-02-29 11:23:24','课程名称4',4,'考试成绩','用户账号4','用户姓名4','教师工号4','教师姓名4'),(165,'2024-02-29 11:23:24','课程名称5',5,'考试成绩','用户账号5','用户姓名5','教师工号5','教师姓名5'),(166,'2024-02-29 11:23:24','课程名称6',6,'考试成绩','用户账号6','用户姓名6','教师工号6','教师姓名6');
/*!40000 ALTER TABLE `chengjixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusskechengxinxi`
--

DROP TABLE IF EXISTS `discusskechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusskechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusskechengxinxi`
--

LOCK TABLES `discusskechengxinxi` WRITE;
/*!40000 ALTER TABLE `discusskechengxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discusskechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` varchar(200) DEFAULT NULL COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='试卷管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
INSERT INTO `exampaper` VALUES (1,'2024-02-29 11:23:24','试卷1',120,'1');
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT NULL COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT NULL COMMENT '试题类型',
  `sequence` bigint(20) DEFAULT NULL COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='试题管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
INSERT INTO `examquestion` VALUES (1,'2024-02-29 11:23:24',1,'试卷1','1+1等于多少?','[{\"text\":\"2\",\"code\":\"A\"},{\"text\":\"11\",\"code\":\"B\"},{\"text\":\"十\",\"code\":\"C\"},{\"text\":\"王\",\"code\":\"D\"}]',20,'A','2',0,1),(2,'2024-02-29 11:23:24',1,'试卷1','2-1等于1，对吗?','[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]',20,'A','2-1等于1',2,2),(3,'2024-02-29 11:23:24',1,'试卷1','下面哪些数是质数？。','[{\"text\":\"2\",\"code\":\"A\"},{\"text\":\"3\",\"code\":\"B\"},{\"text\":\"4\",\"code\":\"C\"},{\"text\":\"5\",\"code\":\"D\"}]',30,'A,B,D','2,3,5属于质数',1,3),(4,'2024-02-29 11:23:24',1,'试卷1','最小的自然是( )。','[]',30,'0','最小的自然数是0',3,4);
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT NULL COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) DEFAULT NULL COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='论坛交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (101,'2024-02-29 11:23:24','帖子标题1','帖子内容1',0,'用户名1','file/forumAvatarurl1.jpg,file/forumAvatarurl2.jpg,file/forumAvatarurl3.jpg','开放',1),(102,'2024-02-29 11:23:24','帖子标题2','帖子内容2',0,'用户名2','file/forumAvatarurl2.jpg,file/forumAvatarurl3.jpg,file/forumAvatarurl4.jpg','开放',2),(103,'2024-02-29 11:23:24','帖子标题3','帖子内容3',0,'用户名3','file/forumAvatarurl3.jpg,file/forumAvatarurl4.jpg,file/forumAvatarurl5.jpg','开放',3),(104,'2024-02-29 11:23:24','帖子标题4','帖子内容4',0,'用户名4','file/forumAvatarurl4.jpg,file/forumAvatarurl5.jpg,file/forumAvatarurl6.jpg','开放',4),(105,'2024-02-29 11:23:24','帖子标题5','帖子内容5',0,'用户名5','file/forumAvatarurl5.jpg,file/forumAvatarurl6.jpg,file/forumAvatarurl7.jpg','开放',5),(106,'2024-02-29 11:23:24','帖子标题6','帖子内容6',0,'用户名6','file/forumAvatarurl6.jpg,file/forumAvatarurl7.jpg,file/forumAvatarurl8.jpg','开放',6);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `touxiang` longtext COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (51,'2024-02-29 11:23:24','教师工号1','123456','教师姓名1','file/jiaoshiTouxiang1.jpg','19819881111','男'),(52,'2024-02-29 11:23:24','教师工号2','123456','教师姓名2','file/jiaoshiTouxiang2.jpg','19819881112','男'),(53,'2024-02-29 11:23:24','教师工号3','123456','教师姓名3','file/jiaoshiTouxiang3.jpg','19819881113','男'),(54,'2024-02-29 11:23:24','教师工号4','123456','教师姓名4','file/jiaoshiTouxiang4.jpg','19819881114','男'),(55,'2024-02-29 11:23:24','教师工号5','123456','教师姓名5','file/jiaoshiTouxiang5.jpg','19819881115','男'),(56,'2024-02-29 11:23:24','教师工号6','123456','教师姓名6','file/jiaoshiTouxiang6.jpg','19819881116','男');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jihuajindu`
--

DROP TABLE IF EXISTS `jihuajindu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jihuajindu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `jihuabiaoti` varchar(200) NOT NULL COMMENT '计划标题',
  `jindu` varchar(200) NOT NULL COMMENT '进度',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COMMENT='计划进度';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jihuajindu`
--

LOCK TABLES `jihuajindu` WRITE;
/*!40000 ALTER TABLE `jihuajindu` DISABLE KEYS */;
INSERT INTO `jihuajindu` VALUES (191,'2024-02-29 11:23:24','用户账号1','用户姓名1','计划标题1','进度1','2024-02-29 19:23:24','备注1'),(192,'2024-02-29 11:23:24','用户账号2','用户姓名2','计划标题2','进度2','2024-02-29 19:23:24','备注2'),(193,'2024-02-29 11:23:24','用户账号3','用户姓名3','计划标题3','进度3','2024-02-29 19:23:24','备注3'),(194,'2024-02-29 11:23:24','用户账号4','用户姓名4','计划标题4','进度4','2024-02-29 19:23:24','备注4'),(195,'2024-02-29 11:23:24','用户账号5','用户姓名5','计划标题5','进度5','2024-02-29 19:23:24','备注5'),(196,'2024-02-29 11:23:24','用户账号6','用户姓名6','计划标题6','进度6','2024-02-29 19:23:24','备注6');
/*!40000 ALTER TABLE `jihuajindu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengfenlei`
--

DROP TABLE IF EXISTS `kechengfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengfenlei` varchar(200) NOT NULL COMMENT '课程分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengfenlei` (`kechengfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='课程分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengfenlei`
--

LOCK TABLES `kechengfenlei` WRITE;
/*!40000 ALTER TABLE `kechengfenlei` DISABLE KEYS */;
INSERT INTO `kechengfenlei` VALUES (61,'2024-02-29 11:23:24','课程分类1'),(62,'2024-02-29 11:23:24','课程分类2'),(63,'2024-02-29 11:23:24','课程分类3'),(64,'2024-02-29 11:23:24','课程分类4'),(65,'2024-02-29 11:23:24','课程分类5'),(66,'2024-02-29 11:23:24','课程分类6');
/*!40000 ALTER TABLE `kechengfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `kechengfengmian` longtext COMMENT '课程封面',
  `kechengfenlei` varchar(200) NOT NULL COMMENT '课程分类',
  `biaoqian` varchar(200) DEFAULT NULL COMMENT '标签',
  `shipin` longtext COMMENT '视频',
  `kejian` longtext COMMENT '课件',
  `keshi` varchar(200) DEFAULT NULL COMMENT '课时',
  `shangkeshijian` varchar(200) DEFAULT NULL COMMENT '上课时间',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (71,'2024-02-29 11:23:24','课程名称1','file/kechengxinxiKechengfengmian1.jpg,file/kechengxinxiKechengfengmian2.jpg,file/kechengxinxiKechengfengmian3.jpg','课程分类1','标签1','','','课时1','上课时间1','2024-02-29 19:23:24','教师工号1','教师姓名1',1),(72,'2024-02-29 11:23:24','课程名称2','file/kechengxinxiKechengfengmian2.jpg,file/kechengxinxiKechengfengmian3.jpg,file/kechengxinxiKechengfengmian4.jpg','课程分类2','标签2','','','课时2','上课时间2','2024-02-29 19:23:24','教师工号2','教师姓名2',2),(73,'2024-02-29 11:23:24','课程名称3','file/kechengxinxiKechengfengmian3.jpg,file/kechengxinxiKechengfengmian4.jpg,file/kechengxinxiKechengfengmian5.jpg','课程分类3','标签3','','','课时3','上课时间3','2024-02-29 19:23:24','教师工号3','教师姓名3',3),(74,'2024-02-29 11:23:24','课程名称4','file/kechengxinxiKechengfengmian4.jpg,file/kechengxinxiKechengfengmian5.jpg,file/kechengxinxiKechengfengmian6.jpg','课程分类4','标签4','','','课时4','上课时间4','2024-02-29 19:23:24','教师工号4','教师姓名4',4),(75,'2024-02-29 11:23:24','课程名称5','file/kechengxinxiKechengfengmian5.jpg,file/kechengxinxiKechengfengmian6.jpg,file/kechengxinxiKechengfengmian7.jpg','课程分类5','标签5','','','课时5','上课时间5','2024-02-29 19:23:24','教师工号5','教师姓名5',5),(76,'2024-02-29 11:23:24','课程名称6','file/kechengxinxiKechengfengmian6.jpg,file/kechengxinxiKechengfengmian7.jpg,file/kechengxinxiKechengfengmian8.jpg','课程分类6','标签6','','','课时6','上课时间6','2024-02-29 19:23:24','教师工号6','教师姓名6',6);
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxuexi`
--

DROP TABLE IF EXISTS `kechengxuexi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxuexi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `kechengfenlei` varchar(200) NOT NULL COMMENT '课程分类',
  `xuexishijian` varchar(200) DEFAULT NULL COMMENT '学习时间',
  `xuexineirong` int(11) NOT NULL COMMENT '学习内容',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='课程学习';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxuexi`
--

LOCK TABLES `kechengxuexi` WRITE;
/*!40000 ALTER TABLE `kechengxuexi` DISABLE KEYS */;
INSERT INTO `kechengxuexi` VALUES (81,'2024-02-29 11:23:24','课程名称1','课程分类1','学习时间1',1,'教师工号1','教师姓名1','用户账号1','用户姓名1'),(82,'2024-02-29 11:23:24','课程名称2','课程分类2','学习时间2',2,'教师工号2','教师姓名2','用户账号2','用户姓名2'),(83,'2024-02-29 11:23:24','课程名称3','课程分类3','学习时间3',3,'教师工号3','教师姓名3','用户账号3','用户姓名3'),(84,'2024-02-29 11:23:24','课程名称4','课程分类4','学习时间4',4,'教师工号4','教师姓名4','用户账号4','用户姓名4'),(85,'2024-02-29 11:23:24','课程名称5','课程分类5','学习时间5',5,'教师工号5','教师姓名5','用户账号5','用户姓名5'),(86,'2024-02-29 11:23:24','课程名称6','课程分类6','学习时间6',6,'教师工号6','教师姓名6','用户账号6','用户姓名6');
/*!40000 ALTER TABLE `kechengxuexi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-02-29 11:23:24','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"删除\",\"查看评论\"],\"menu\":\"论坛交流\",\"tableName\":\"forum\"}],\"menu\":\"论坛管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"在线交流\",\"menuJump\":\"列表\",\"tableName\":\"zaixianjiaoliu\"}],\"fontClass\":\"icon-common27\",\"menu\":\"在线交流管理\",\"unicode\":\"&#xee2c;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"课程分类\",\"menuJump\":\"列表\",\"tableName\":\"kechengfenlei\"},{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"课程类型统计\",\"查看评论\",\"首页总数\",\"首页统计\",\"学习\"],\"menu\":\"课程信息\",\"menuJump\":\"列表\",\"tableName\":\"kechengxinxi\"},{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"课程学习\",\"menuJump\":\"列表\",\"tableName\":\"kechengxuexi\"},{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"学习进度\",\"menuJump\":\"列表\",\"tableName\":\"xuexijindu\"}],\"fontClass\":\"icon-common29\",\"menu\":\"课程信息管理\",\"unicode\":\"&#xee2e;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"},{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"教师\",\"menuJump\":\"列表\",\"tableName\":\"jiaoshi\"}],\"fontClass\":\"icon-user6\",\"menu\":\"用户管理\",\"unicode\":\"&#xef9c;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"作业信息\",\"menuJump\":\"列表\",\"tableName\":\"zuoyexinxi\"},{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"提交作业\",\"menuJump\":\"列表\",\"tableName\":\"tijiaozuoye\"}],\"fontClass\":\"icon-common20\",\"menu\":\"作业信息管理\",\"unicode\":\"&#xee02;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"组卷\"],\"menu\":\"试卷管理\",\"tableName\":\"exampaper\"},{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"打印\",\"导出\"],\"menu\":\"试题管理\",\"menuJump\":\"列表\",\"tableName\":\"examquestion\"},{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"试卷列表\",\"menuJump\":\"12\",\"tableName\":\"exampaper\"},{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\"],\"menu\":\"考试记录\",\"tableName\":\"examrecord\"}],\"fontClass\":\"icon-common45\",\"menu\":\"试卷管理\",\"unicode\":\"&#xef3b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"学习计划\",\"menuJump\":\"列表\",\"tableName\":\"xuexijihua\"},{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"计划进度\",\"menuJump\":\"列表\",\"tableName\":\"jihuajindu\"}],\"fontClass\":\"icon-common23\",\"menu\":\"学习计划管理\",\"unicode\":\"&#xee05;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"查看\",\"删除\",\"课程成绩统计\",\"首页总数\",\"首页统计\"],\"menu\":\"成绩信息\",\"menuJump\":\"列表\",\"tableName\":\"chengjixinxi\"}],\"fontClass\":\"icon-common1\",\"menu\":\"成绩信息管理\",\"unicode\":\"&#xeda3;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common12\",\"menu\":\"管理员管理\",\"unicode\":\"&#xedf4;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"学习\"],\"menu\":\"课程信息\",\"menuJump\":\"列表\",\"tableName\":\"kechengxinxi\"}],\"menu\":\"课程信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\"],\"menu\":\"试卷列表\",\"menuJump\":\"12\",\"tableName\":\"exampaper\"}],\"menu\":\"考试管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\",\"提交\"],\"menu\":\"作业信息\",\"menuJump\":\"列表\",\"tableName\":\"zuoyexinxi\"}],\"menu\":\"作业信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"论坛交流\",\"menuJump\":\"列表\",\"tableName\":\"forum\"}],\"menu\":\"论坛交流\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"我的发布\",\"menuJump\":\"14\",\"tableName\":\"forum\"}],\"menu\":\"论坛管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"在线交流\",\"menuJump\":\"列表\",\"tableName\":\"zaixianjiaoliu\"}],\"fontClass\":\"icon-common27\",\"menu\":\"在线交流管理\",\"unicode\":\"&#xee2c;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"成绩信息\",\"menuJump\":\"列表\",\"tableName\":\"chengjixinxi\"}],\"fontClass\":\"icon-common1\",\"menu\":\"成绩信息管理\",\"unicode\":\"&#xeda3;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"进度\"],\"menu\":\"学习计划\",\"menuJump\":\"列表\",\"tableName\":\"xuexijihua\"},{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"计划进度\",\"menuJump\":\"列表\",\"tableName\":\"jihuajindu\"}],\"fontClass\":\"icon-common23\",\"menu\":\"学习计划管理\",\"unicode\":\"&#xee05;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"提交作业\",\"menuJump\":\"列表\",\"tableName\":\"tijiaozuoye\"}],\"fontClass\":\"icon-common20\",\"menu\":\"作业信息管理\",\"unicode\":\"&#xee02;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\",\"删除\",\"进度\"],\"menu\":\"课程学习\",\"menuJump\":\"列表\",\"tableName\":\"kechengxuexi\"},{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\",\"删除\",\"修改\"],\"menu\":\"学习进度\",\"menuJump\":\"列表\",\"tableName\":\"xuexijindu\"}],\"fontClass\":\"icon-common29\",\"menu\":\"课程信息管理\",\"unicode\":\"&#xee2e;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"考试记录\",\"tableName\":\"examrecord\"},{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"错题本\",\"menuJump\":\"22\",\"tableName\":\"examrecord\"}],\"fontClass\":\"icon-common45\",\"menu\":\"试卷管理\",\"unicode\":\"&#xef3b;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"学习\"],\"menu\":\"课程信息\",\"menuJump\":\"列表\",\"tableName\":\"kechengxinxi\"}],\"menu\":\"课程信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\"],\"menu\":\"试卷列表\",\"menuJump\":\"12\",\"tableName\":\"exampaper\"}],\"menu\":\"考试管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\",\"提交\"],\"menu\":\"作业信息\",\"menuJump\":\"列表\",\"tableName\":\"zuoyexinxi\"}],\"menu\":\"作业信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"论坛交流\",\"menuJump\":\"列表\",\"tableName\":\"forum\"}],\"menu\":\"论坛交流\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\",\"删除\",\"审核\"],\"menu\":\"在线交流\",\"menuJump\":\"列表\",\"tableName\":\"zaixianjiaoliu\"}],\"fontClass\":\"icon-common27\",\"menu\":\"在线交流管理\",\"unicode\":\"&#xee2c;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"提交\"],\"menu\":\"作业信息\",\"menuJump\":\"列表\",\"tableName\":\"zuoyexinxi\"},{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"提交作业\",\"menuJump\":\"列表\",\"tableName\":\"tijiaozuoye\"}],\"fontClass\":\"icon-common20\",\"menu\":\"作业信息管理\",\"unicode\":\"&#xee02;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"课程成绩统计\",\"首页总数\",\"首页统计\"],\"menu\":\"成绩信息\",\"menuJump\":\"列表\",\"tableName\":\"chengjixinxi\"}],\"fontClass\":\"icon-common1\",\"menu\":\"成绩信息管理\",\"unicode\":\"&#xeda3;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"组卷\"],\"menu\":\"试卷管理\",\"tableName\":\"exampaper\"},{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"打印\",\"导出\"],\"menu\":\"试题管理\",\"menuJump\":\"列表\",\"tableName\":\"examquestion\"},{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"试卷列表\",\"menuJump\":\"12\",\"tableName\":\"exampaper\"},{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"考试记录\",\"tableName\":\"examrecord\"}],\"fontClass\":\"icon-common45\",\"menu\":\"试卷管理\",\"unicode\":\"&#xef3b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"学习计划\",\"menuJump\":\"列表\",\"tableName\":\"xuexijihua\"},{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"计划进度\",\"menuJump\":\"列表\",\"tableName\":\"jihuajindu\"}],\"fontClass\":\"icon-common23\",\"menu\":\"学习计划管理\",\"unicode\":\"&#xee05;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"课程类型统计\",\"查看评论\",\"首页总数\",\"首页统计\",\"学习\"],\"menu\":\"课程信息\",\"menuJump\":\"列表\",\"tableName\":\"kechengxinxi\"},{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"课程学习\",\"menuJump\":\"列表\",\"tableName\":\"kechengxuexi\"},{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"学习进度\",\"menuJump\":\"列表\",\"tableName\":\"xuexijindu\"}],\"fontClass\":\"icon-common29\",\"menu\":\"课程信息管理\",\"unicode\":\"&#xee2e;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"学习\"],\"menu\":\"课程信息\",\"menuJump\":\"列表\",\"tableName\":\"kechengxinxi\"}],\"menu\":\"课程信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\"],\"menu\":\"试卷列表\",\"menuJump\":\"12\",\"tableName\":\"exampaper\"}],\"menu\":\"考试管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\",\"提交\"],\"menu\":\"作业信息\",\"menuJump\":\"列表\",\"tableName\":\"zuoyexinxi\"}],\"menu\":\"作业信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"论坛交流\",\"menuJump\":\"列表\",\"tableName\":\"forum\"}],\"menu\":\"论坛交流\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"教师\",\"tableName\":\"jiaoshi\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tijiaozuoye`
--

DROP TABLE IF EXISTS `tijiaozuoye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tijiaozuoye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyemingcheng` varchar(200) NOT NULL COMMENT '作业名称',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zuoyedaan` longtext COMMENT '作业答案',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='提交作业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tijiaozuoye`
--

LOCK TABLES `tijiaozuoye` WRITE;
/*!40000 ALTER TABLE `tijiaozuoye` DISABLE KEYS */;
INSERT INTO `tijiaozuoye` VALUES (121,'2024-02-29 11:23:24','作业名称1','教师工号1','教师姓名1','','用户账号1','用户姓名1','2024-02-29 19:23:24'),(122,'2024-02-29 11:23:24','作业名称2','教师工号2','教师姓名2','','用户账号2','用户姓名2','2024-02-29 19:23:24'),(123,'2024-02-29 11:23:24','作业名称3','教师工号3','教师姓名3','','用户账号3','用户姓名3','2024-02-29 19:23:24'),(124,'2024-02-29 11:23:24','作业名称4','教师工号4','教师姓名4','','用户账号4','用户姓名4','2024-02-29 19:23:24'),(125,'2024-02-29 11:23:24','作业名称5','教师工号5','教师姓名5','','用户账号5','用户姓名5','2024-02-29 19:23:24'),(126,'2024-02-29 11:23:24','作业名称6','教师工号6','教师姓名6','','用户账号6','用户姓名6','2024-02-29 19:23:24');
/*!40000 ALTER TABLE `tijiaozuoye` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-02-29 11:23:24','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuexijihua`
--

DROP TABLE IF EXISTS `xuexijihua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuexijihua` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `jihuabiaoti` varchar(200) NOT NULL COMMENT '计划标题',
  `kaishiriqi` date NOT NULL COMMENT '开始日期',
  `jieshuriqi` date NOT NULL COMMENT '结束日期',
  `jihuaneirong` longtext NOT NULL COMMENT '计划内容',
  `jihuashijian` datetime DEFAULT NULL COMMENT '计划时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='学习计划';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuexijihua`
--

LOCK TABLES `xuexijihua` WRITE;
/*!40000 ALTER TABLE `xuexijihua` DISABLE KEYS */;
INSERT INTO `xuexijihua` VALUES (181,'2024-02-29 11:23:24','用户账号1','用户姓名1','计划标题1','2024-02-29','2024-02-29','计划内容1','2024-02-29 19:23:24','备注1'),(182,'2024-02-29 11:23:24','用户账号2','用户姓名2','计划标题2','2024-02-29','2024-02-29','计划内容2','2024-02-29 19:23:24','备注2'),(183,'2024-02-29 11:23:24','用户账号3','用户姓名3','计划标题3','2024-02-29','2024-02-29','计划内容3','2024-02-29 19:23:24','备注3'),(184,'2024-02-29 11:23:24','用户账号4','用户姓名4','计划标题4','2024-02-29','2024-02-29','计划内容4','2024-02-29 19:23:24','备注4'),(185,'2024-02-29 11:23:24','用户账号5','用户姓名5','计划标题5','2024-02-29','2024-02-29','计划内容5','2024-02-29 19:23:24','备注5'),(186,'2024-02-29 11:23:24','用户账号6','用户姓名6','计划标题6','2024-02-29','2024-02-29','计划内容6','2024-02-29 19:23:24','备注6');
/*!40000 ALTER TABLE `xuexijihua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuexijindu`
--

DROP TABLE IF EXISTS `xuexijindu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuexijindu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `kechengfenlei` varchar(200) NOT NULL COMMENT '课程分类',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `jindu` varchar(200) DEFAULT NULL COMMENT '进度',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='学习进度';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuexijindu`
--

LOCK TABLES `xuexijindu` WRITE;
/*!40000 ALTER TABLE `xuexijindu` DISABLE KEYS */;
INSERT INTO `xuexijindu` VALUES (111,'2024-02-29 11:23:24','课程名称1','课程分类1','用户账号1','用户姓名1','进度1','2024-02-29 19:23:24','教师工号1','教师姓名1'),(112,'2024-02-29 11:23:24','课程名称2','课程分类2','用户账号2','用户姓名2','进度2','2024-02-29 19:23:24','教师工号2','教师姓名2'),(113,'2024-02-29 11:23:24','课程名称3','课程分类3','用户账号3','用户姓名3','进度3','2024-02-29 19:23:24','教师工号3','教师姓名3'),(114,'2024-02-29 11:23:24','课程名称4','课程分类4','用户账号4','用户姓名4','进度4','2024-02-29 19:23:24','教师工号4','教师姓名4'),(115,'2024-02-29 11:23:24','课程名称5','课程分类5','用户账号5','用户姓名5','进度5','2024-02-29 19:23:24','教师工号5','教师姓名5'),(116,'2024-02-29 11:23:24','课程名称6','课程分类6','用户账号6','用户姓名6','进度6','2024-02-29 19:23:24','教师工号6','教师姓名6');
/*!40000 ALTER TABLE `xuexijindu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2024-02-29 11:23:24','用户账号1','123456','用户姓名1','file/yonghuTouxiang1.jpg','男','19819881111'),(32,'2024-02-29 11:23:24','用户账号2','123456','用户姓名2','file/yonghuTouxiang2.jpg','男','19819881112'),(33,'2024-02-29 11:23:24','用户账号3','123456','用户姓名3','file/yonghuTouxiang3.jpg','男','19819881113'),(34,'2024-02-29 11:23:24','用户账号4','123456','用户姓名4','file/yonghuTouxiang4.jpg','男','19819881114'),(35,'2024-02-29 11:23:24','用户账号5','123456','用户姓名5','file/yonghuTouxiang5.jpg','男','19819881115'),(36,'2024-02-29 11:23:24','用户账号6','123456','用户姓名6','file/yonghuTouxiang6.jpg','男','19819881116');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixianjiaoliu`
--

DROP TABLE IF EXISTS `zaixianjiaoliu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixianjiaoliu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `neirong` longtext NOT NULL COMMENT '内容',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `jiaoliushijian` datetime DEFAULT NULL COMMENT '交流时间',
  `shhf` longtext COMMENT '回复内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='在线交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixianjiaoliu`
--

LOCK TABLES `zaixianjiaoliu` WRITE;
/*!40000 ALTER TABLE `zaixianjiaoliu` DISABLE KEYS */;
INSERT INTO `zaixianjiaoliu` VALUES (171,'2024-02-29 11:23:24','教师工号1','教师姓名1','内容1','用户账号1','用户姓名1','2024-02-29 19:23:24','',1),(172,'2024-02-29 11:23:24','教师工号2','教师姓名2','内容2','用户账号2','用户姓名2','2024-02-29 19:23:24','',2),(173,'2024-02-29 11:23:24','教师工号3','教师姓名3','内容3','用户账号3','用户姓名3','2024-02-29 19:23:24','',3),(174,'2024-02-29 11:23:24','教师工号4','教师姓名4','内容4','用户账号4','用户姓名4','2024-02-29 19:23:24','',4),(175,'2024-02-29 11:23:24','教师工号5','教师姓名5','内容5','用户账号5','用户姓名5','2024-02-29 19:23:24','',5),(176,'2024-02-29 11:23:24','教师工号6','教师姓名6','内容6','用户账号6','用户姓名6','2024-02-29 19:23:24','',6);
/*!40000 ALTER TABLE `zaixianjiaoliu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zuoyexinxi`
--

DROP TABLE IF EXISTS `zuoyexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zuoyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyemingcheng` varchar(200) NOT NULL COMMENT '作业名称',
  `fengmian` longtext COMMENT '封面',
  `zuoyefujian` longtext COMMENT '作业附件',
  `zuoyeneirong` longtext COMMENT '作业内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='作业信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zuoyexinxi`
--

LOCK TABLES `zuoyexinxi` WRITE;
/*!40000 ALTER TABLE `zuoyexinxi` DISABLE KEYS */;
INSERT INTO `zuoyexinxi` VALUES (91,'2024-02-29 11:23:24','作业名称1','file/zuoyexinxiFengmian1.jpg,file/zuoyexinxiFengmian2.jpg,file/zuoyexinxiFengmian3.jpg','','作业内容1','2024-02-29 19:23:24','教师工号1','教师姓名1'),(92,'2024-02-29 11:23:24','作业名称2','file/zuoyexinxiFengmian2.jpg,file/zuoyexinxiFengmian3.jpg,file/zuoyexinxiFengmian4.jpg','','作业内容2','2024-02-29 19:23:24','教师工号2','教师姓名2'),(93,'2024-02-29 11:23:24','作业名称3','file/zuoyexinxiFengmian3.jpg,file/zuoyexinxiFengmian4.jpg,file/zuoyexinxiFengmian5.jpg','','作业内容3','2024-02-29 19:23:24','教师工号3','教师姓名3'),(94,'2024-02-29 11:23:24','作业名称4','file/zuoyexinxiFengmian4.jpg,file/zuoyexinxiFengmian5.jpg,file/zuoyexinxiFengmian6.jpg','','作业内容4','2024-02-29 19:23:24','教师工号4','教师姓名4'),(95,'2024-02-29 11:23:24','作业名称5','file/zuoyexinxiFengmian5.jpg,file/zuoyexinxiFengmian6.jpg,file/zuoyexinxiFengmian7.jpg','','作业内容5','2024-02-29 19:23:24','教师工号5','教师姓名5'),(96,'2024-02-29 11:23:24','作业名称6','file/zuoyexinxiFengmian6.jpg,file/zuoyexinxiFengmian7.jpg,file/zuoyexinxiFengmian8.jpg','','作业内容6','2024-02-29 19:23:24','教师工号6','教师姓名6');
/*!40000 ALTER TABLE `zuoyexinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-01 19:08:46
