/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50508
 Source Host           : localhost:3306
 Source Schema         : antri

 Target Server Type    : MySQL
 Target Server Version : 50508
 File Encoding         : 65001

 Date: 19/09/2023 07:48:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for antrian
-- ----------------------------
DROP TABLE IF EXISTS `antrian`;
CREATE TABLE `antrian`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor` int(4) NOT NULL,
  `id_jenis` int(5) NOT NULL,
  `status` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pemanggil` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of antrian
-- ----------------------------
INSERT INTO `antrian` VALUES (14, 1, 4, 'finish', 'poligigi', '2023-08-08 07:12:54');
INSERT INTO `antrian` VALUES (15, 1, 5, 'finish', 'polimtbs', '2023-08-08 07:13:05');
INSERT INTO `antrian` VALUES (16, 2, 5, 'finish', 'polimtbs', '2023-08-08 07:19:39');
INSERT INTO `antrian` VALUES (17, 1, 8, 'waiting', NULL, '2023-08-08 07:22:21');
INSERT INTO `antrian` VALUES (18, 1, 9, 'waiting', NULL, '2023-08-08 07:22:25');
INSERT INTO `antrian` VALUES (19, 1, 2, 'waiting', NULL, '2023-08-08 07:22:29');
INSERT INTO `antrian` VALUES (20, 1, 7, 'waiting', NULL, '2023-08-08 07:22:38');
INSERT INTO `antrian` VALUES (21, 2, 8, 'waiting', NULL, '2023-08-08 07:23:04');
INSERT INTO `antrian` VALUES (22, 2, 9, 'waiting', NULL, '2023-08-08 07:23:14');
INSERT INTO `antrian` VALUES (23, 3, 8, 'waiting', NULL, '2023-08-08 07:23:30');
INSERT INTO `antrian` VALUES (24, 2, 4, 'finish', 'poligigi', '2023-08-08 07:31:59');

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` int(23) NOT NULL AUTO_INCREMENT,
  `pengirim` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `penerima` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `chat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `file` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `chatTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for loket
-- ----------------------------
DROP TABLE IF EXISTS `loket`;
CREATE TABLE `loket`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_loket` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `inisial` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of loket
-- ----------------------------
INSERT INTO `loket` VALUES (1, 'PENDAFTARAN 2', 'B');
INSERT INTO `loket` VALUES (2, 'PENDAFTARAN 1', 'A');
INSERT INTO `loket` VALUES (3, 'POLI UMUM', 'I');
INSERT INTO `loket` VALUES (4, 'POLI GIGI', 'C');
INSERT INTO `loket` VALUES (5, 'POLI MTBS', 'H');
INSERT INTO `loket` VALUES (6, 'POLI KIA', 'F');
INSERT INTO `loket` VALUES (7, 'POLI KB', 'E');
INSERT INTO `loket` VALUES (8, 'POLI LANSIA', 'G');
INSERT INTO `loket` VALUES (9, 'POLI IMUNISASI', 'D');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pwd_hash` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` tinyint(1) NOT NULL DEFAULT 0,
  `loket` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_UNIQUE`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (17, 'admin', '$1$xh3.md1.$cOZf1moSrbEDSxlJ4P2Pc1', 9, '1');
INSERT INTO `user` VALUES (22, 'PENDAFTARAN1', '$1$Wq4.nc1.$cigPSpPFUIYOsYb8Q2i6Y1', 9, '2');
INSERT INTO `user` VALUES (23, 'PENDAFTARAN2', '$1$k5..dB0.$cF1JWHaeIrcOXKTuyklv9.', 9, '1');
INSERT INTO `user` VALUES (24, 'poliumum', '$1$KM..Li5.$GQZaMeKIxtocjihy6BSRM1', 9, '3');
INSERT INTO `user` VALUES (25, 'poligigi', '$1$243.hp/.$M22JkMaErhhvqP79i4Czn0', 9, '4');
INSERT INTO `user` VALUES (26, 'polimtbs', '$1$i52.DO2.$1u.oR5hjgVJF/L6ovxBf40', 9, '5');
INSERT INTO `user` VALUES (27, 'polikia', '$1$Qo2.Zo..$2yAaxQF91ZRswM.6Jpsga1', 9, '6');
INSERT INTO `user` VALUES (28, 'polikb', '$1$uv..fm1.$luHhwpGRyt6OYZxmDsRlL/', 9, '7');
INSERT INTO `user` VALUES (29, 'polilansia', '$1$6w/.VO3.$0U8TyR87LsCCdutDpTxAR.', 9, '8');
INSERT INTO `user` VALUES (30, 'poliimunisasi', '$1$410.5W5.$FPF7HXoxfvRVLkO747TdN0', 9, '9');

SET FOREIGN_KEY_CHECKS = 1;
