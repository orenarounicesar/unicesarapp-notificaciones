/*
 Navicat Premium Data Transfer

 Source Server         : mailsdb
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : mailsdb

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 28/05/2022 07:44:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mails
-- ----------------------------
DROP TABLE IF EXISTS `mails`;
CREATE TABLE `mails` (
  `codigo_mail` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`codigo_mail`),
  KEY `email` (`email`),
  KEY `fecha` (`fecha`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of mails
-- ----------------------------
BEGIN;
INSERT INTO `mails` VALUES (1, 'orenaro@gmail.com', '2022-05-27 19:45:31');
INSERT INTO `mails` VALUES (2, 'orlando.arrieta@gmail.com', '2022-05-27 19:45:46');
INSERT INTO `mails` VALUES (3, 'otro@gmail.com', '2022-05-27 20:34:10');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
