/*
 Navicat MySQL Data Transfer

 Source Server         : MyNewSQL
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : work

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 20/12/2018 22:07:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for jobinformation
-- ----------------------------
DROP TABLE IF EXISTS `jobinformation`;
CREATE TABLE `jobinformation`  (
  `username` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `workcity` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `finish` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `correlation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关技术',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位描述',
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobinformation
-- ----------------------------
INSERT INTO `jobinformation` VALUES ('111111', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jobinformation` VALUES ('123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jobinformation` VALUES ('17120023', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jobinformation` VALUES ('19980703', '1', '北京', '', '', '', '                        ', '1');
INSERT INTO `jobinformation` VALUES ('19980808', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jobinformation` VALUES ('4', NULL, NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `jobinformation` VALUES ('5', NULL, NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `jobinformation` VALUES ('7', NULL, NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `jobinformation` VALUES ('8', NULL, NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `jobinformation` VALUES ('9', 'java', '天津', '2018', '2019', '               无         ', '无     ', '新浪');
INSERT INTO `jobinformation` VALUES ('doudou', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jobinformation` VALUES ('gggg', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jobinformation` VALUES ('hhhh', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jobinformation` VALUES ('kkkk', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jobinformation` VALUES ('liang', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jobinformation` VALUES ('ssss', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jobinformation` VALUES ('ssssss', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jobinformation` VALUES ('T1718', 'php', '海南', '2018-12-01', '2018-12-27', '无', '奥术大师', '腾讯');
INSERT INTO `jobinformation` VALUES ('T171819', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jobinformation` VALUES ('T17_18', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jobinformation` VALUES ('yinyin', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jobinformation` VALUES ('曾雨玮', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jobinformation` VALUES ('许明', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jobinformation` VALUES ('高', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jobinformation` VALUES ('高6', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jobinformation` VALUES ('高7', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jobinformation` VALUES ('高立伟', 'java', '河北', '2018-11-29', '2018-12-26', '无', '无                        ', '腾讯');
INSERT INTO `jobinformation` VALUES ('高立伟2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jobinformation` VALUES ('高立伟3', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jobinformation` VALUES ('高立伟5', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jobinformation` VALUES ('高立伟6', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jobinformation` VALUES ('高立伟7', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for meeting
-- ----------------------------
DROP TABLE IF EXISTS `meeting`;
CREATE TABLE `meeting`  (
  `promulgator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布者的username',
  `responder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '响应者的username',
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '约会时间',
  `site` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '约会地点',
  `thing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '约会事情',
  `information` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '具体描述',
  `age1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布者年龄',
  `age2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '响应者年龄',
  `pay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消费方式',
  PRIMARY KEY (`promulgator`, `responder`) USING BTREE,
  INDEX `responder`(`responder`) USING BTREE,
  CONSTRAINT `meeting_ibfk_1` FOREIGN KEY (`promulgator`) REFERENCES `promulgator` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `meeting_ibfk_2` FOREIGN KEY (`responder`) REFERENCES `responder` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for promulgator
-- ----------------------------
DROP TABLE IF EXISTS `promulgator`;
CREATE TABLE `promulgator`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布者的username',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nianling` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`username`) USING BTREE,
  CONSTRAINT `promulgator_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of promulgator
-- ----------------------------
INSERT INTO `promulgator` VALUES ('111111', NULL, NULL, NULL);
INSERT INTO `promulgator` VALUES ('19980703', '男', 'null', 'null');
INSERT INTO `promulgator` VALUES ('doudou', NULL, NULL, NULL);
INSERT INTO `promulgator` VALUES ('gggg', NULL, NULL, NULL);
INSERT INTO `promulgator` VALUES ('hhhh', NULL, NULL, NULL);
INSERT INTO `promulgator` VALUES ('liang', 'null', 'null', 'null');
INSERT INTO `promulgator` VALUES ('ssss', NULL, NULL, NULL);
INSERT INTO `promulgator` VALUES ('ssssss', NULL, NULL, NULL);
INSERT INTO `promulgator` VALUES ('T1718', NULL, NULL, NULL);
INSERT INTO `promulgator` VALUES ('T171819', NULL, NULL, NULL);
INSERT INTO `promulgator` VALUES ('yinyin', NULL, NULL, NULL);
INSERT INTO `promulgator` VALUES ('高立伟', '男', '20', 'CEO');
INSERT INTO `promulgator` VALUES ('高立伟7', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for releasedate
-- ----------------------------
DROP TABLE IF EXISTS `releasedate`;
CREATE TABLE `releasedate`  (
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `site` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布者的username',
  `money` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消费方式',
  `information` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  CONSTRAINT `username` FOREIGN KEY (`username`) REFERENCES `promulgator` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of releasedate
-- ----------------------------
INSERT INTO `releasedate` VALUES ('晚上', '电影院', '看完电影吃点饭', '高立伟', '100', 'AA', '希望找个志同道合的人', NULL, 1);
INSERT INTO `releasedate` VALUES ('白天', '南京', '运动', '高立伟', 'null', '我买单', '爱上了咖啡哈三联客服号', NULL, 5);
INSERT INTO `releasedate` VALUES ('明天晚上', '我家', '看电影', '19980703', 'null', '我买单', '看完电影玩一会', NULL, 6);
INSERT INTO `releasedate` VALUES ('明天晚上', '我家', '购物', '19980703', 'null', '我买单', '奥术大师大所多', NULL, 8);
INSERT INTO `releasedate` VALUES ('白天', '我家', '运动', '19980703', 'null', '我买单', '只许V型在V字形', NULL, 9);
INSERT INTO `releasedate` VALUES ('明天', '南京', 'K歌', '19980703', 'null', '我买单', '暗示法发顺丰', NULL, 10);
INSERT INTO `releasedate` VALUES ('明天晚上', '我家', '运动', '19980703', 'null', '我买单', '奥术大师大所大所', NULL, 11);
INSERT INTO `releasedate` VALUES ('2018年12月20', '西安市奥特莱斯', '看电影', 'liang', 'null', '我买单', '吃饭看电影打豆豆', NULL, 12);
INSERT INTO `releasedate` VALUES ('明天', '电影院', '喝咖啡', '19980703', 'null', 'AA', '额外热', NULL, 14);
INSERT INTO `releasedate` VALUES ('', '', '吃饭', '19980703', 'null', 'AA', '', NULL, 16);
INSERT INTO `releasedate` VALUES ('', '', '购物', 'ssssss', 'null', 'AA', '', NULL, 17);

-- ----------------------------
-- Table structure for responder
-- ----------------------------
DROP TABLE IF EXISTS `responder`;
CREATE TABLE `responder`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '响应者的username',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for studentinformation
-- ----------------------------
DROP TABLE IF EXISTS `studentinformation`;
CREATE TABLE `studentinformation`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学校',
  `study` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
  `start` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `finish` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `education` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `correlation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关技术',
  `information` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '成就描述',
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of studentinformation
-- ----------------------------
INSERT INTO `studentinformation` VALUES ('111111', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `studentinformation` VALUES ('123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `studentinformation` VALUES ('17120023', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `studentinformation` VALUES ('19980703', 'assda', '', '', '', '0', '', '                        ');
INSERT INTO `studentinformation` VALUES ('19980808', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `studentinformation` VALUES ('5', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `studentinformation` VALUES ('7', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `studentinformation` VALUES ('8', '南工院', '硕士', '10', '无', '无', '无', '无');
INSERT INTO `studentinformation` VALUES ('9', '', '', '', '', '专科', '                        ', '\r\n                        ');
INSERT INTO `studentinformation` VALUES ('doudou', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `studentinformation` VALUES ('gggg', 'assda', 'hhh', '', '', '0', '无', '                        ');
INSERT INTO `studentinformation` VALUES ('hhhh', '南京', 'java', '', '', '0', 'java', '    烦烦烦                    ');
INSERT INTO `studentinformation` VALUES ('kkkk', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `studentinformation` VALUES ('liang', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `studentinformation` VALUES ('ssss', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `studentinformation` VALUES ('ssssss', 's', '', '', '', '0', '', '                        ');
INSERT INTO `studentinformation` VALUES ('T1718', 'assda', 'asdasd', '', '', '1', '无', 'sad');
INSERT INTO `studentinformation` VALUES ('T171819', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `studentinformation` VALUES ('T17_18', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `studentinformation` VALUES ('yinyin', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `studentinformation` VALUES ('曾雨玮', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `studentinformation` VALUES ('许明', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `studentinformation` VALUES ('高', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `studentinformation` VALUES ('高6', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `studentinformation` VALUES ('高7', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `studentinformation` VALUES ('高立伟', '北大', 'java', '2018-12-12', '2018-12-30', '博士', '你好', '4151341');
INSERT INTO `studentinformation` VALUES ('高立伟2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `studentinformation` VALUES ('高立伟3', '南工院', '1', '1', '1', '专科', '                        1', '\r\n                        1');
INSERT INTO `studentinformation` VALUES ('高立伟5', '南工院', 'java', '2018-11-14', '2018-12-14', '1', '无', '无');
INSERT INTO `studentinformation` VALUES ('高立伟6', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `studentinformation` VALUES ('高立伟7', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for userinformation
-- ----------------------------
DROP TABLE IF EXISTS `userinformation`;
CREATE TABLE `userinformation`  (
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `brith` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phonenum` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `home` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userinformation
-- ----------------------------
INSERT INTO `userinformation` VALUES ('111111', NULL, NULL, '17805129266', NULL, '2240883644@qq.c', NULL, NULL);
INSERT INTO `userinformation` VALUES ('123456', NULL, NULL, 'null', NULL, 'null', NULL, NULL);
INSERT INTO `userinformation` VALUES ('17120023', NULL, NULL, '12345678998', NULL, '3333@qq.com', NULL, NULL);
INSERT INTO `userinformation` VALUES ('19980703', '男', '', 'null', '北京', 'null', '', '/201d6f7e-7f5d-4ef6-b88d-4edf0acb5502_sd.JPG');
INSERT INTO `userinformation` VALUES ('19980808', NULL, NULL, '13955887764', NULL, '657655967@qq.com', NULL, NULL);
INSERT INTO `userinformation` VALUES ('5', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `userinformation` VALUES ('7', NULL, NULL, '7', NULL, '7', NULL, NULL);
INSERT INTO `userinformation` VALUES ('8', NULL, NULL, '8', NULL, '8', NULL, NULL);
INSERT INTO `userinformation` VALUES ('9', NULL, NULL, '8', NULL, '6', NULL, NULL);
INSERT INTO `userinformation` VALUES ('doudou', '0', '', 'null', '北京', 'null', '江苏', '/820e6fc7-eb40-47e7-9a5a-b63623730453_');
INSERT INTO `userinformation` VALUES ('gggg', NULL, NULL, '14578574857', NULL, '2240883644@qq.com', NULL, NULL);
INSERT INTO `userinformation` VALUES ('hhhh', NULL, NULL, '18851999458', NULL, '133456789@qq.com', NULL, NULL);
INSERT INTO `userinformation` VALUES ('kkkk', NULL, NULL, '18851999585', NULL, '834914153@qq.com', NULL, NULL);
INSERT INTO `userinformation` VALUES ('liang', NULL, NULL, '17805139213', NULL, '1344191517@qq.com', NULL, NULL);
INSERT INTO `userinformation` VALUES ('ssss', NULL, NULL, '14578954854', NULL, '834914153@qq.com', NULL, NULL);
INSERT INTO `userinformation` VALUES ('ssssss', NULL, NULL, '17805129255', NULL, '2240883644@qq.c', NULL, NULL);
INSERT INTO `userinformation` VALUES ('T1718', NULL, NULL, '13955778188', NULL, '657655967@qq.com', NULL, NULL);
INSERT INTO `userinformation` VALUES ('T171819', NULL, NULL, '13855778145', NULL, '657655967@qq.com', NULL, NULL);
INSERT INTO `userinformation` VALUES ('T17_18', '男', '2018-12-19', 'null', '广东', 'null', '34', 'D:apache-tomcat-9.0.11webappsshixunimg/966263ea-4cc5-46b9-91a1-68d0e4c26a2b_biz_plugin_weather_shenzhen_bg.jpg');
INSERT INTO `userinformation` VALUES ('yinyin', NULL, NULL, '17567666666', NULL, '1234567@qq.com', NULL, NULL);
INSERT INTO `userinformation` VALUES ('曾雨玮', NULL, NULL, '12345678', NULL, '123456', NULL, NULL);
INSERT INTO `userinformation` VALUES ('许明', NULL, NULL, '1234567', NULL, '1234567', NULL, NULL);
INSERT INTO `userinformation` VALUES ('高', 'null', '10', 'null', '成都', 'null', 'null', NULL);
INSERT INTO `userinformation` VALUES ('高6', '1', 'null', 'null', 'null', 'null', '安徽', NULL);
INSERT INTO `userinformation` VALUES ('高7', '1', 'null', 'null', 'null', 'null', '无', NULL);
INSERT INTO `userinformation` VALUES ('高立伟', '男', '2018-12-12', 'null', '浙江', 'null', '无', 'D:apache-tomcat-9.0.11webappsshixunimg/d834f55a-b119-4e27-9ed1-ab2289481858_sd.JPG');
INSERT INTO `userinformation` VALUES ('高立伟2', 'null', 'null', 'null', 'null', 'null', 'null', 'D:apache-tomcat-9.0.11img/8ae88d96-0738-4217-be32-04caece6e77d_sr.jpg');
INSERT INTO `userinformation` VALUES ('高立伟3', 'null', 'null', 'null', 'null', 'null', 'null', 'D:apache-tomcat-9.0.11webappsshixunimg/380a6a5e-563d-476e-99f7-22d7c0ff2536_sr.jpg');
INSERT INTO `userinformation` VALUES ('高立伟5', NULL, NULL, '1258', NULL, '125', NULL, NULL);
INSERT INTO `userinformation` VALUES ('高立伟6', NULL, NULL, '1234578', NULL, '12345', NULL, NULL);
INSERT INTO `userinformation` VALUES ('高立伟7', NULL, NULL, '1', NULL, '1', NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phonenum` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '1', '1', '1', '1', NULL);
INSERT INTO `users` VALUES (2, '1', '1', '1', '1', NULL);
INSERT INTO `users` VALUES (3, '1', '1', '1', '1', NULL);
INSERT INTO `users` VALUES (4, '2', '123', '2', '1', NULL);
INSERT INTO `users` VALUES (5, '3', '1', '3', '1', NULL);
INSERT INTO `users` VALUES (6, '4', '2', '1', '1', NULL);
INSERT INTO `users` VALUES (7, '5', '6', '6', '6', NULL);
INSERT INTO `users` VALUES (8, '7', '7', '7', '7', NULL);
INSERT INTO `users` VALUES (9, '8', '8', '8', '8', NULL);
INSERT INTO `users` VALUES (10, '9', '9', '8', '6', NULL);
INSERT INTO `users` VALUES (11, '123456', 'null', 'null', 'null', NULL);
INSERT INTO `users` VALUES (12, '高立伟', '123456', '123456', '1234561', NULL);
INSERT INTO `users` VALUES (13, '许明', '1234567', '1234567', '1234567', NULL);
INSERT INTO `users` VALUES (14, '曾雨玮', '123456', '12345678', '123456', NULL);
INSERT INTO `users` VALUES (15, '高', '1234567', '123456789', '123456', NULL);
INSERT INTO `users` VALUES (16, '高立伟2', '123456', '123', '123', NULL);
INSERT INTO `users` VALUES (17, '高立伟3', '123456', '1234', '123', NULL);
INSERT INTO `users` VALUES (18, '高6', '1234567', '12', '12', NULL);
INSERT INTO `users` VALUES (19, '高7', '1234567', '12345', '123', NULL);
INSERT INTO `users` VALUES (20, '高立伟5', '123456', '1258', '125', NULL);
INSERT INTO `users` VALUES (21, '高立伟6', '123456', '1234578', '12345', NULL);
INSERT INTO `users` VALUES (22, '19980703', '123456', '13657894313', '657655967@qq.com', 'è®¸æ1');
INSERT INTO `users` VALUES (23, '19980808', '1234567', '13955887764', '657655967@qq.com', '19980808');
INSERT INTO `users` VALUES (26, 'kkkk', '123456', '18851999585', '834914153@qq.com', 'kkkk');
INSERT INTO `users` VALUES (27, 'liang', '123123123', '17805139213', '1344191517@qq.com', 'liang');
INSERT INTO `users` VALUES (28, '17120023', '11111111', '12345678998', '3333@qq.com', '17120023');
INSERT INTO `users` VALUES (29, 'T17_18', '12345678', '13955778145', '657655967@qq.com', 'T17_18');
INSERT INTO `users` VALUES (30, '高立伟7', '1', '1', '1', '1');
INSERT INTO `users` VALUES (31, 'ssss', '123456', '14578954854', '834914153@qq.com', 'ssss');
INSERT INTO `users` VALUES (32, 'T1718', '657655967', '13955778188', '657655967@qq.com', 'T1718');
INSERT INTO `users` VALUES (33, 'doudou', '123doudou', '17800000000', '2078048423@qq.com', 'doudou');
INSERT INTO `users` VALUES (34, '111111', '111111', '17805129266', '2240883644@qq.c', '111111');
INSERT INTO `users` VALUES (35, 'ssssss', 'ssssss', '17805129255', '2240883644@qq.c', 'ssssss');
INSERT INTO `users` VALUES (36, 'T171819', '123456', '13855778145', '657655967@qq.com', 'T171819');
INSERT INTO `users` VALUES (37, 'yinyin', '1234567', '17567666666', '1234567@qq.com', 'yinyin');
INSERT INTO `users` VALUES (38, 'hhhh', '123456', '18851999458', '133456789@qq.com', 'hhhh');
INSERT INTO `users` VALUES (39, 'gggg', '123456', '14578574857', '2240883644@qq.com', 'gggg');

-- ----------------------------
-- Triggers structure for table userinformation
-- ----------------------------
DROP TRIGGER IF EXISTS `inset_promulgator`;
delimiter ;;
CREATE TRIGGER `inset_promulgator` AFTER INSERT ON `userinformation` FOR EACH ROW INSERT INTO promulgator(username,sex)VALUES(new.username,new.sex)
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table users
-- ----------------------------
DROP TRIGGER IF EXISTS `insert_jobinformation`;
delimiter ;;
CREATE TRIGGER `insert_jobinformation` AFTER INSERT ON `users` FOR EACH ROW INSERT into jobinformation(username) VALUES(new.username)
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table users
-- ----------------------------
DROP TRIGGER IF EXISTS `insert_userinformation`;
delimiter ;;
CREATE TRIGGER `insert_userinformation` AFTER INSERT ON `users` FOR EACH ROW INSERT into userinformation(username,phonenum,email) VALUES(new.username,new.phonenum,new.email)
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table users
-- ----------------------------
DROP TRIGGER IF EXISTS `insert_studentinformation`;
delimiter ;;
CREATE TRIGGER `insert_studentinformation` AFTER INSERT ON `users` FOR EACH ROW INSERT into studentinformation(username) VALUES(new.username)
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
