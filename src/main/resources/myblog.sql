/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : myblog

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2016-09-25 21:43:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog_info
-- ----------------------------
DROP TABLE IF EXISTS `blog_info`;
CREATE TABLE `blog_info` (
  `blog_id` varchar(36) NOT NULL,
  `blog_title` varchar(255) DEFAULT NULL,
  `blog_content` varchar(255) DEFAULT NULL,
  `blog_author` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `type_id` varchar(255) DEFAULT NULL,
  `lable_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_info
-- ----------------------------

-- ----------------------------
-- Table structure for lable_info
-- ----------------------------
DROP TABLE IF EXISTS `lable_info`;
CREATE TABLE `lable_info` (
  `lable_id` int(11) NOT NULL,
  `lable_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lable_info
-- ----------------------------

-- ----------------------------
-- Table structure for type_info
-- ----------------------------
DROP TABLE IF EXISTS `type_info`;
CREATE TABLE `type_info` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type_info
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
