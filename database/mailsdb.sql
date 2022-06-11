/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : mailsdb

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 10/06/2022 16:20:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for emails
-- ----------------------------
DROP TABLE IF EXISTS `emails`;
CREATE TABLE `emails` (
  `codigo_email` int unsigned NOT NULL AUTO_INCREMENT,
  `codigo_estudiante_asignatura` int unsigned DEFAULT NULL,
  `email_origen` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `email_destino` varchar(255) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `email_asunto` varchar(255) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`codigo_email`) USING BTREE,
  KEY `email_destino` (`email_destino`),
  KEY `fecha` (`fecha`),
  KEY `email_origen` (`email_origen`) USING BTREE,
  KEY `asunto` (`email_asunto`) USING BTREE,
  KEY `codigo_estudiante_asignatura` (`codigo_estudiante_asignatura`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- ----------------------------
-- Records of emails
-- ----------------------------
BEGIN;
INSERT INTO `emails` VALUES (4, 15, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura INGLES ', '2022-06-09 18:05:24');
INSERT INTO `emails` VALUES (5, 9, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura INGLES ', '2022-06-09 18:05:24');
INSERT INTO `emails` VALUES (6, 22, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura INGLES ', '2022-06-09 18:05:25');
INSERT INTO `emails` VALUES (7, 19, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura ESTRUCTURAS DE DATOS', '2022-06-10 10:59:52');
INSERT INTO `emails` VALUES (8, 21, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura ESTRUCTURAS DE DATOS', '2022-06-10 10:59:52');
INSERT INTO `emails` VALUES (9, 10, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura ESTRUCTURAS DE DATOS', '2022-06-10 10:59:52');
INSERT INTO `emails` VALUES (10, 5, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura ESTRUCTURAS DE DATOS', '2022-06-10 10:59:53');
INSERT INTO `emails` VALUES (11, 16, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura ESTRUCTURAS DE DATOS', '2022-06-10 10:59:53');
INSERT INTO `emails` VALUES (12, 3, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura PROGRAMACION ORIENTADA A OBJETOS', '2022-06-10 11:27:10');
INSERT INTO `emails` VALUES (13, 2, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura PROGRAMACION ORIENTADA A OBJETOS', '2022-06-10 11:27:11');
INSERT INTO `emails` VALUES (14, 1, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura PROGRAMACION ORIENTADA A OBJETOS', '2022-06-10 11:27:11');
INSERT INTO `emails` VALUES (15, 24, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura PROGRAMACION ORIENTADA A OBJETOS', '2022-06-10 11:27:12');
INSERT INTO `emails` VALUES (16, 4, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura PROGRAMACION ORIENTADA A OBJETOS', '2022-06-10 11:27:12');
INSERT INTO `emails` VALUES (17, 22, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura XXXXXXX ', '2022-06-10 13:57:50');
INSERT INTO `emails` VALUES (18, 1, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura PROGRAMACION ORIENTADA A OBJETOS', '2022-06-10 14:11:25');
INSERT INTO `emails` VALUES (19, 24, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura PROGRAMACION ORIENTADA A OBJETOS', '2022-06-10 14:11:25');
INSERT INTO `emails` VALUES (20, 3, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura PROGRAMACION ORIENTADA A OBJETOS', '2022-06-10 14:11:25');
INSERT INTO `emails` VALUES (21, 2, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura PROGRAMACION ORIENTADA A OBJETOS', '2022-06-10 14:11:26');
INSERT INTO `emails` VALUES (22, 4, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura PROGRAMACION ORIENTADA A OBJETOS', '2022-06-10 14:11:26');
INSERT INTO `emails` VALUES (23, 4, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura PROGRAMACION ORIENTADA A OBJETOS', '2022-06-10 14:15:24');
INSERT INTO `emails` VALUES (24, 2, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura PROGRAMACION ORIENTADA A OBJETOS', '2022-06-10 14:15:24');
INSERT INTO `emails` VALUES (25, 3, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura PROGRAMACION ORIENTADA A OBJETOS', '2022-06-10 14:15:25');
INSERT INTO `emails` VALUES (26, 1, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura PROGRAMACION ORIENTADA A OBJETOS', '2022-06-10 14:15:25');
INSERT INTO `emails` VALUES (27, 24, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura PROGRAMACION ORIENTADA A OBJETOS', '2022-06-10 14:15:25');
INSERT INTO `emails` VALUES (28, 1, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura PROGRAMACION ORIENTADA A OBJETOS', '2022-06-10 14:16:51');
INSERT INTO `emails` VALUES (29, 2, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura PROGRAMACION ORIENTADA A OBJETOS', '2022-06-10 14:16:51');
INSERT INTO `emails` VALUES (30, 3, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura PROGRAMACION ORIENTADA A OBJETOS', '2022-06-10 14:16:52');
INSERT INTO `emails` VALUES (31, 24, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura PROGRAMACION ORIENTADA A OBJETOS', '2022-06-10 14:16:52');
INSERT INTO `emails` VALUES (32, 4, 'orenarotest@gmail.com', 'orenaro@gmail.com', 'Publicación de Notas - Asignatura PROGRAMACION ORIENTADA A OBJETOS', '2022-06-10 14:16:52');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
