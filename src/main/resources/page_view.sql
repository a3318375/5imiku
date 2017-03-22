/*
Navicat MySQL Data Transfer

Source Server         : 本机
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : myblog

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2017-03-22 18:07:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `page_view`
-- ----------------------------
DROP TABLE IF EXISTS `page_view`;
CREATE TABLE `page_view` (
  `page_view_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` varchar(36) DEFAULT NULL,
  `page_view_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `view_count` int(11) DEFAULT NULL,
  `view_ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`page_view_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of page_view
-- ----------------------------
