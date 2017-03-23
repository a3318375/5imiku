/*
Navicat MySQL Data Transfer

Source Server         : 本机
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : myblog

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2017-03-21 17:57:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `blog_info`
-- ----------------------------
DROP TABLE IF EXISTS `blog_info`;
CREATE TABLE `blog_info` (
  `blog_id` varchar(36) NOT NULL,
  `blog_title` varchar(255) DEFAULT NULL,
  `blog_abstract` varchar(255) DEFAULT NULL,
  `blog_author` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `type_id` varchar(255) DEFAULT NULL,
  `lable_name` varchar(255) DEFAULT NULL,
  `blog_url` varchar(255) DEFAULT NULL,
  `blog_cover` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_info
-- ----------------------------
INSERT INTO `blog_info` VALUES ('1', '关于人生的个人理解。1', '好久没有写东西了，原因很多，个人觉得根本点在于困惑，或者说是规划不清晰。', '瑶瑶', '2016-10-19 10:57:14', '1', '人生', 'ae6977e4-1664-4834-a66e-9ced9265ddf5.jsp', null);
INSERT INTO `blog_info` VALUES ('2', '关于人生的个人理解。2', '好久没有写东西了，原因很多，个人觉得根本点在于困惑，或者说是规划不清晰。\r\n			想不清楚，自然也写不明白，写不明白，那么还不如不写。\r\n			这中间生活和工作上都经历了许多，感悟了许多，也改变了许多，尤其是心态和想法上啊。', '瑶瑶', '2016-10-19 10:57:14', '1', '人生', 'ae6977e4-1664-4834-a66e-9ced9265ddf5.jsp', null);
INSERT INTO `blog_info` VALUES ('3', '关于人生的个人理解。3', '好久没有写东西了，原因很多，个人觉得根本点在于困惑，或者说是规划不清晰。\r\n			想不清楚，自然也写不明白，写不明白，那么还不如不写。\r\n			这中间生活和工作上都经历了许多，感悟了许多，也改变了许多，尤其是心态和想法上啊。', '瑶瑶', '2016-10-19 10:57:14', '1', '人生', 'ae6977e4-1664-4834-a66e-9ced9265ddf5.jsp', null);
INSERT INTO `blog_info` VALUES ('4', '关于人生的个人理解。4', '好久没有写东西了，原因很多，个人觉得根本点在于困惑，或者说是规划不清晰。\r\n			想不清楚，自然也写不明白，写不明白，那么还不如不写。\r\n			这中间生活和工作上都经历了许多，感悟了许多，也改变了许多，尤其是心态和想法上啊。', '瑶瑶', '2016-10-19 10:57:14', '1', '人生', 'ae6977e4-1664-4834-a66e-9ced9265ddf5.jsp', null);
INSERT INTO `blog_info` VALUES ('5', '关于人生的个人理解。5', '好久没有写东西了，原因很多，个人觉得根本点在于困惑，或者说是规划不清晰。', '瑶瑶', '2016-10-19 10:57:14', '1', '人生', 'ae6977e4-1664-4834-a66e-9ced9265ddf5.jsp', null);
INSERT INTO `blog_info` VALUES ('6', '关于人生的个人理解。6', '好久没有写东西了，原因很多，个人觉得根本点在于困惑，或者说是规划不清晰。', '瑶瑶', '2016-10-19 10:57:14', '1', '人生', 'ae6977e4-1664-4834-a66e-9ced9265ddf5.jsp', null);
INSERT INTO `blog_info` VALUES ('7', '关于人生的个人理解。7', '好久没有写东西了，原因很多，个人觉得根本点在于困惑，或者说是规划不清晰。', '瑶瑶', '2016-10-19 10:57:14', '1', '人生', 'ae6977e4-1664-4834-a66e-9ced9265ddf5.jsp', null);
INSERT INTO `blog_info` VALUES ('8', '关于人生的个人理解。8', '好久没有写东西了，原因很多，个人觉得根本点在于困惑，或者说是规划不清晰。', '瑶瑶', '2016-10-19 10:57:14', '1', '人生', 'ae6977e4-1664-4834-a66e-9ced9265ddf5.jsp', null);
INSERT INTO `blog_info` VALUES ('9', '关于人生的个人理解。9', '好久没有写东西了，原因很多，个人觉得根本点在于困惑，或者说是规划不清晰。', '瑶瑶', '2016-10-19 10:57:14', '1', '人生', 'ae6977e4-1664-4834-a66e-9ced9265ddf5.jsp', null);
INSERT INTO `blog_info` VALUES ('ae6977e4-1664-4834-a66e-9ced9265ddf5', '儿趁母做饭跳楼自杀10', '好久没有写东西了，原因很多，个人觉得根本点在于困惑，或者说是规划不清晰。\r\n			想不清楚，自然也写不明白，写不明白，那么还不如不写。\r\n			这中间生活和工作上都经历了许多，感悟了许多，也改变了许多，尤其是心态和想法上啊。', '瑶瑶', '2017-03-21 09:57:38', '1', '新闻', 'ae6977e4-1664-4834-a66e-9ced9265ddf5.jsp', null);

-- ----------------------------
-- Table structure for `lable_info`
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
-- Table structure for `type_info`
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
INSERT INTO `type_info` VALUES ('1', '前端');
INSERT INTO `type_info` VALUES ('2', 'java');
INSERT INTO `type_info` VALUES ('3', '图片');
INSERT INTO `type_info` VALUES ('4', '感悟');
