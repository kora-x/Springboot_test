/*
 Navicat Premium Dump SQL

 Source Server         : mySQL
 Source Server Type    : MySQL
 Source Server Version : 80039 (8.0.39)
 Source Host           : localhost:3306
 Source Schema         : moviemanagersystem

 Target Server Type    : MySQL
 Target Server Version : 80039 (8.0.39)
 File Encoding         : 65001

 Date: 14/01/2025 10:55:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info`  (
  `ADMIN_ID` int NOT NULL AUTO_INCREMENT,
  `ADMIN_NAME` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ADMIN_QX` int NULL DEFAULT NULL,
  `ADMIN_S` int NULL DEFAULT NULL,
  PRIMARY KEY (`ADMIN_ID`) USING BTREE,
  CONSTRAINT `admin_info_chk_1` CHECK ((`ADMIN_S` = 0) or (`ADMIN_S` = 1))
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_info
-- ----------------------------
INSERT INTO `admin_info` VALUES (1, 'admin1', 1, 1);
INSERT INTO `admin_info` VALUES (2, 'admin2', 2, 1);
INSERT INTO `admin_info` VALUES (3, 'admin3', 3, 1);
INSERT INTO `admin_info` VALUES (4, 'admin4', 4, 1);

-- ----------------------------
-- Table structure for dy_info
-- ----------------------------
DROP TABLE IF EXISTS `dy_info`;
CREATE TABLE `dy_info`  (
  `DY_ID` int NOT NULL AUTO_INCREMENT,
  `DY_NAME` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DY_SY` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DY_MONEY` decimal(10, 2) NULL DEFAULT NULL,
  `DY_DATE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DY_S` int NULL DEFAULT NULL,
  `DY_WZ` int NULL DEFAULT NULL,
  PRIMARY KEY (`DY_ID`) USING BTREE,
  UNIQUE INDEX `DY_NAME`(`DY_NAME` ASC) USING BTREE,
  CONSTRAINT `dy_info_chk_1` CHECK ((`DY_S` = 0) or (`DY_S` = 1))
) ENGINE = InnoDB AUTO_INCREMENT = 100008 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dy_info
-- ----------------------------
INSERT INTO `dy_info` VALUES (100001, '你好世界', '2019-09', 50.00, '13:00-15:30', 1, 25);
INSERT INTO `dy_info` VALUES (100002, '声之形', '2019-08', 40.00, '14:00-15:30', 1, 20);
INSERT INTO `dy_info` VALUES (100003, '紫罗兰永恒花园', '2018-05', 30.00, '11:00-12:30', 1, 20);
INSERT INTO `dy_info` VALUES (100004, '秒速五厘米', '2017-03', 40.00, '16:00-17:30', 1, 20);
INSERT INTO `dy_info` VALUES (100005, '天气之子', '2020-07', 50.00, '18:00-19:30', 1, 25);
INSERT INTO `dy_info` VALUES (100007, 'test2', '111', 50.00, '111', 1, 30);

-- ----------------------------
-- Table structure for log_info
-- ----------------------------
DROP TABLE IF EXISTS `log_info`;
CREATE TABLE `log_info`  (
  `LOG_ID` int NOT NULL AUTO_INCREMENT,
  `LOG_INFO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `LOG_DATE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `LOG_NAME` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`LOG_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_info
-- ----------------------------
INSERT INTO `log_info` VALUES (1, '管理员admin1登录', '2024-09-25', 'admin1');
INSERT INTO `log_info` VALUES (2, '管理员admin4登录', '2024-09-25', 'admin4');
INSERT INTO `log_info` VALUES (3, '管理员admin4查看了电影', '2024-09-25', 'admin4');
INSERT INTO `log_info` VALUES (4, '管理员admin4新增了电影test1', '2024-09-25', 'admin4');
INSERT INTO `log_info` VALUES (5, '管理员admin4查看了电影', '2024-09-25', 'admin4');
INSERT INTO `log_info` VALUES (6, '管理员admin4删除了电影test1', '2024-09-25', 'admin4');
INSERT INTO `log_info` VALUES (7, '管理员admin4查看了电影', '2024-09-25', 'admin4');
INSERT INTO `log_info` VALUES (8, '管理员admin4新增了电影test2', '2024-09-25', 'admin4');
INSERT INTO `log_info` VALUES (9, '管理员admin4查看了用户信息', '2024-09-25', 'admin4');
INSERT INTO `log_info` VALUES (10, '管理员admin4登录', '2024-09-25', 'admin4');

-- ----------------------------
-- Table structure for my_order
-- ----------------------------
DROP TABLE IF EXISTS `my_order`;
CREATE TABLE `my_order`  (
  `ORDER_ID` int NOT NULL AUTO_INCREMENT,
  `ORDER_DY_ID` int NULL DEFAULT NULL,
  `ORDER_USER_ID` int NULL DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of my_order
-- ----------------------------
INSERT INTO `my_order` VALUES (1, 100007, 5);
INSERT INTO `my_order` VALUES (2, 100007, 5);
INSERT INTO `my_order` VALUES (3, 100007, 5);
INSERT INTO `my_order` VALUES (4, 100007, 5);
INSERT INTO `my_order` VALUES (5, 100007, 5);
INSERT INTO `my_order` VALUES (6, 100002, 5);
INSERT INTO `my_order` VALUES (7, 100002, 5);
INSERT INTO `my_order` VALUES (8, 100002, 5);
INSERT INTO `my_order` VALUES (9, 100002, 5);

-- ----------------------------
-- Table structure for my_order_info
-- ----------------------------
DROP TABLE IF EXISTS `my_order_info`;
CREATE TABLE `my_order_info`  (
  `ORDERINFO_ID` int NOT NULL AUTO_INCREMENT,
  `ORDER_ID` int NULL DEFAULT NULL,
  `ORDER_ZW` int NOT NULL,
  `ORDER_S` int NULL DEFAULT NULL,
  `ORDER_DATE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ORDERINFO_ID`) USING BTREE,
  CONSTRAINT `my_order_info_chk_1` CHECK ((`ORDER_S` = 0) or (`ORDER_S` = 1))
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of my_order_info
-- ----------------------------
INSERT INTO `my_order_info` VALUES (1, 1, 2, 1, '2024-09-25');
INSERT INTO `my_order_info` VALUES (2, 1, 3, 1, '2024-09-25');
INSERT INTO `my_order_info` VALUES (3, 1, 4, 1, '2024-09-25');
INSERT INTO `my_order_info` VALUES (4, 1, 5, 1, '2024-09-25');
INSERT INTO `my_order_info` VALUES (5, 1, 6, 0, '2024-09-25');
INSERT INTO `my_order_info` VALUES (6, 1, 1, 1, '2024-10-07');
INSERT INTO `my_order_info` VALUES (7, 1, 2, 1, '2024-10-07');
INSERT INTO `my_order_info` VALUES (8, 1, 3, 1, '2024-10-07');
INSERT INTO `my_order_info` VALUES (9, 1, 4, 1, '2024-10-07');

-- ----------------------------
-- Table structure for my_user
-- ----------------------------
DROP TABLE IF EXISTS `my_user`;
CREATE TABLE `my_user`  (
  `USER_ID` int NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `USER_PASS` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`USER_ID`) USING BTREE,
  UNIQUE INDEX `USER_NAME`(`USER_NAME` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of my_user
-- ----------------------------
INSERT INTO `my_user` VALUES (1, 'admin1', '123123');
INSERT INTO `my_user` VALUES (2, 'admin2', '123123');
INSERT INTO `my_user` VALUES (3, 'admin3', '123123');
INSERT INTO `my_user` VALUES (4, 'admin4', '123123');
INSERT INTO `my_user` VALUES (5, 'Aa123!', '123321');

-- ----------------------------
-- Table structure for my_user_info
-- ----------------------------
DROP TABLE IF EXISTS `my_user_info`;
CREATE TABLE `my_user_info`  (
  `USERINFO_ID` int NOT NULL AUTO_INCREMENT,
  `USER_ID` int NULL DEFAULT NULL,
  `USER_MONEY` decimal(10, 2) NULL DEFAULT NULL,
  `USER_JF` int NULL DEFAULT NULL,
  `USER_VIP` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '_utf8mb4\\\'æ \\\'',
  `USER_PHONE` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `USER_S` int NULL DEFAULT NULL,
  PRIMARY KEY (`USERINFO_ID`) USING BTREE,
  UNIQUE INDEX `USER_ID`(`USER_ID` ASC) USING BTREE,
  CONSTRAINT `my_user_info_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `my_user` (`USER_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `my_user_info_chk_1` CHECK (`USER_MONEY` >= 0),
  CONSTRAINT `my_user_info_chk_2` CHECK (`USER_JF` >= 0),
  CONSTRAINT `my_user_info_chk_3` CHECK ((`USER_S` = 0) or (`USER_S` = 1))
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of my_user_info
-- ----------------------------
INSERT INTO `my_user_info` VALUES (1, 5, 15141.00, 359, '白银VIP', '12312312321', 1);

-- ----------------------------
-- Table structure for vip_info
-- ----------------------------
DROP TABLE IF EXISTS `vip_info`;
CREATE TABLE `vip_info`  (
  `VIP_ID` int NOT NULL AUTO_INCREMENT,
  `VIP_JF` int NULL DEFAULT NULL,
  `VIP_NAME` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `VIP_ZK` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`VIP_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vip_info
-- ----------------------------
INSERT INTO `vip_info` VALUES (1, 200, '白银VIP', 0.99);
INSERT INTO `vip_info` VALUES (2, 500, '黄金VIP', 0.97);
INSERT INTO `vip_info` VALUES (3, 1000, '钻石VIP', 0.95);
INSERT INTO `vip_info` VALUES (4, 3000, '黑钻VIP', 0.93);

SET FOREIGN_KEY_CHECKS = 1;
