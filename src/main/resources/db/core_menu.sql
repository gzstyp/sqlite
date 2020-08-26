/*
 Navicat Premium Data Transfer

 Source Server         : 123.57.215.3_12587
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : 123.57.215.3:12587
 Source Schema         : manager

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 08/02/2020 01:47:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for core_menu
-- ----------------------------
DROP TABLE IF EXISTS `core_menu`;
CREATE TABLE `core_menu`  (
  `kid` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `pid` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '父级菜单id',
  `path` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'url路径',
  `icon` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图标class',
  `level` smallint(0) UNSIGNED NOT NULL COMMENT '菜单层次',
  `order_by` smallint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '菜单排序',
  PRIMARY KEY (`kid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统菜单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of core_menu
-- ----------------------------
INSERT INTO `core_menu` VALUES ('0077389293e947e2a35cfbd3f513181c', 'javaweb', '8277340aa39849019988fdedbc02ff25', 'javascript:alert(\'javaweb\');', 'icon-sk016', 1, 2);
INSERT INTO `core_menu` VALUES ('1458a625fa084472901cd44667eff503', '公告管理', 'ff91c54757ad4d018196b0abaccb90fd', 'javascript:;', 'icon-sk004', 2, 3);
INSERT INTO `core_menu` VALUES ('234ef22ea9d7465398190c2d41640db7', '省级管理', 'e1a2bf3d9cc646a1a328f4fe550f0aa9', 'javascript:;', 'icon-sk006', 3, 2);
INSERT INTO `core_menu` VALUES ('567ef22ea9d7465398190c2d41640db8', '市区管理', 'e1a2bf3d9cc646a1a328f4fe550f0aa9', 'javascript:;', 'icon-sk007', 3, 3);
INSERT INTO `core_menu` VALUES ('8277340aa39849019988fdedbc02ff25', '软件开发', '88888888888888888888888888888888', 'javascript:;', 'icon-sk015', 1, 1);
INSERT INTO `core_menu` VALUES ('86389ac1c80a47478ae0774a7aa0769e', 'android', '8277340aa39849019988fdedbc02ff25', 'javascript:alert(\'android\');', 'icon-sk017', 1, 1);
INSERT INTO `core_menu` VALUES ('c4220914c0814db7ba36a205f99aa29c', '数据库', 'd6106b4901a4437185a47b8d50d84b43', 'javascript:;', 'icon-sk012', 4, 1);
INSERT INTO `core_menu` VALUES ('cc3fe48bf7bf4c5a9ae0eb52b43c3eb3', '软件版本', 'd6106b4901a4437185a47b8d50d84b43', 'javascript:;', 'icon-sk013', 4, 1);
INSERT INTO `core_menu` VALUES ('cd1635bcf9674019ba53e09006ae83b3', '数据备份', 'd6106b4901a4437185a47b8d50d84b43', 'javascript:;', 'icon-sk014', 4, 1);
INSERT INTO `core_menu` VALUES ('d6106b4901a4437185a47b8d50d84b43', '系统设置', 'fe79a625fa084472901cd44667eff503', 'javascript:;', 'icon-sk008', 3, 1);
INSERT INTO `core_menu` VALUES ('d6c9cf174e4842ebac6bfa9d0f5dd292', '账号用户管理页', 'fe79a625fa084472901cd44667eff503', 'javascript:;', 'icon-sk009', 3, 4);
INSERT INTO `core_menu` VALUES ('ddb3f7021167496eb58ddc9ba92dfeeb', '菜单管理', 'fe79a625fa084472901cd44667eff503', 'javascript:;', 'icon-sk010', 3, 2);
INSERT INTO `core_menu` VALUES ('e034c9f12fe04d77bf9f594575f1de60', '角色权限', 'fe79a625fa084472901cd44667eff503', 'javascript:;', 'icon-sk011', 3, 3);
INSERT INTO `core_menu` VALUES ('e1a2bf3d9cc646a1a328f4fe550f0aa9', '区域地区管理页', 'ff91c54757ad4d018196b0abaccb90fd', 'javascript:;', 'icon-sk003', 2, 2);
INSERT INTO `core_menu` VALUES ('fe79a625fa084472901cd44667eff503', '系统菜单', 'ff91c54757ad4d018196b0abaccb90fd', 'javascript:;', 'icon-sk002', 2, 1);
INSERT INTO `core_menu` VALUES ('ff91c54757ad4d018196b0abaccb90fd', '业务菜单', '88888888888888888888888888888888', 'javascript:;', 'icon-sk001', 1, 1);
INSERT INTO `core_menu` VALUES ('wseef22ea9d7465398190c2d41640db2', '国家级管理', 'e1a2bf3d9cc646a1a328f4fe550f0aa9', 'javascript:;', 'icon-sk005', 3, 1);

SET FOREIGN_KEY_CHECKS = 1;
