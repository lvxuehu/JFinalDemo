/*
Navicat MySQL Data Transfer

Source Server         : mysql5528
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : jfinal_demo

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2014-05-07 11:14:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `age` int(2) NOT NULL,
  `address` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'lly', '100', 'bj');
INSERT INTO `user` VALUES ('2', '34', '34', '34');
INSERT INTO `user` VALUES ('4', '44', '444', '44');
INSERT INTO `user` VALUES ('5', '我看看的', '1', '我看看的我看看的我看看的我看看的');
INSERT INTO `user` VALUES ('6', '333', '33', '333');
INSERT INTO `user` VALUES ('7', '我看看的我看看的', '1', '我看看的我看看的我看看的我看看的');
INSERT INTO `user` VALUES ('8', '我看看的我看看的', '12', '232');
INSERT INTO `user` VALUES ('9', '3333', '12', '333333');
