CREATE DATABASE `zze_admin_go` default charset utf8mb4;
USE `zze_admin_go`;
    
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL COMMENT '标题',
  `name` varchar(64) NOT NULL COMMENT '路由名称',
  `type` tinyint(4) NOT NULL COMMENT '类型:1-目录,2-菜单,3-功能',
  `f_route` varchar(64) DEFAULT NULL COMMENT '前端路由路径',
  `b_routes` json DEFAULT NULL COMMENT '后端路由路径',
  `redirect` varchar(64) DEFAULT NULL COMMENT '重定向路径',
  `icon` varchar(32) DEFAULT NULL COMMENT '图标',
  `rank` int(11) DEFAULT NULL COMMENT '排序',
  `show_link` bit(1) NOT NULL COMMENT '是否在菜单中展示',
  `show_parent` bit(1) NOT NULL COMMENT '是否展示父级菜单',
  `keep_alive` bit(1) NOT NULL COMMENT '页面缓存',
  `parent_id` int(11) NOT NULL COMMENT '父级权限 id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of permission
-- ----------------------------
BEGIN;
INSERT INTO `permission` (`id`, `title`, `name`, `type`, `f_route`, `b_routes`, `redirect`, `icon`, `rank`, `show_link`, `show_parent`, `keep_alive`, `parent_id`) VALUES (1, '系统管理', 'system-manage', 1, '/system', '[]', '/system/user', 'ep:setting', 1, b'1', b'0', b'0', 0);
INSERT INTO `permission` (`id`, `title`, `name`, `type`, `f_route`, `b_routes`, `redirect`, `icon`, `rank`, `show_link`, `show_parent`, `keep_alive`, `parent_id`) VALUES (2, '权限管理', 'permission-manage', 2, '/system/permission', '[]', '', '', 3, b'1', b'1', b'1', 1);
INSERT INTO `permission` (`id`, `title`, `name`, `type`, `f_route`, `b_routes`, `redirect`, `icon`, `rank`, `show_link`, `show_parent`, `keep_alive`, `parent_id`) VALUES (3, '用户管理', 'user-manage', 2, '/system/user', '[]', '', '', 1, b'1', b'1', b'1', 1);
INSERT INTO `permission` (`id`, `title`, `name`, `type`, `f_route`, `b_routes`, `redirect`, `icon`, `rank`, `show_link`, `show_parent`, `keep_alive`, `parent_id`) VALUES (4, '新增用户', 'user-add', 3, '/test4', '[\"post:/user\"]', '/test4', '', 2, b'1', b'0', b'0', 3);
INSERT INTO `permission` (`id`, `title`, `name`, `type`, `f_route`, `b_routes`, `redirect`, `icon`, `rank`, `show_link`, `show_parent`, `keep_alive`, `parent_id`) VALUES (5, '角色管理', 'role-manage', 2, '/system/role', '[]', '', '', 2, b'1', b'1', b'1', 1);
INSERT INTO `permission` (`id`, `title`, `name`, `type`, `f_route`, `b_routes`, `redirect`, `icon`, `rank`, `show_link`, `show_parent`, `keep_alive`, `parent_id`) VALUES (6, '更新用户', 'user-upt', 3, '/test6', '[\"put:/user/:id\"]', '/test6', '', 3, b'1', b'0', b'0', 3);
INSERT INTO `permission` (`id`, `title`, `name`, `type`, `f_route`, `b_routes`, `redirect`, `icon`, `rank`, `show_link`, `show_parent`, `keep_alive`, `parent_id`) VALUES (8, '更新用户密码', 'user-upt-password', 3, '', '[\"patch:/user/:id/password\"]', '', '', 5, b'0', b'0', b'0', 3);
INSERT INTO `permission` (`id`, `title`, `name`, `type`, `f_route`, `b_routes`, `redirect`, `icon`, `rank`, `show_link`, `show_parent`, `keep_alive`, `parent_id`) VALUES (9, '启用、禁用用户', 'user-upt-enable', 3, '', '[\"patch:/user/:id/enabled\"]', '', '', 6, b'0', b'0', b'0', 3);
INSERT INTO `permission` (`id`, `title`, `name`, `type`, `f_route`, `b_routes`, `redirect`, `icon`, `rank`, `show_link`, `show_parent`, `keep_alive`, `parent_id`) VALUES (10, '删除用户', 'user-del', 3, '', '[\"delete:/user/:id\"]', '', '', 4, b'0', b'0', b'0', 3);
INSERT INTO `permission` (`id`, `title`, `name`, `type`, `f_route`, `b_routes`, `redirect`, `icon`, `rank`, `show_link`, `show_parent`, `keep_alive`, `parent_id`) VALUES (11, '查询用户', 'user-read', 3, '', '[\"get:/user/page-lst\"]', '', '', 1, b'0', b'0', b'0', 3);
INSERT INTO `permission` (`id`, `title`, `name`, `type`, `f_route`, `b_routes`, `redirect`, `icon`, `rank`, `show_link`, `show_parent`, `keep_alive`, `parent_id`) VALUES (14, '查询权限', 'permission-read', 3, '', '[\"get:/permission/list\"]', '', '', 1, b'0', b'0', b'0', 2);
INSERT INTO `permission` (`id`, `title`, `name`, `type`, `f_route`, `b_routes`, `redirect`, `icon`, `rank`, `show_link`, `show_parent`, `keep_alive`, `parent_id`) VALUES (15, '新增权限', 'permission-add', 3, '', '[\"post:/permission\"]', '', '', 2, b'0', b'0', b'0', 2);
INSERT INTO `permission` (`id`, `title`, `name`, `type`, `f_route`, `b_routes`, `redirect`, `icon`, `rank`, `show_link`, `show_parent`, `keep_alive`, `parent_id`) VALUES (16, '更新权限', 'permission-upt', 3, '', '[\"put:/permission/:id\"]', '', '', 3, b'0', b'0', b'0', 2);
INSERT INTO `permission` (`id`, `title`, `name`, `type`, `f_route`, `b_routes`, `redirect`, `icon`, `rank`, `show_link`, `show_parent`, `keep_alive`, `parent_id`) VALUES (17, '删除权限', 'permission-del', 3, '', '[\"delete:/permission/:id\"]', '', '', 4, b'0', b'0', b'0', 2);
INSERT INTO `permission` (`id`, `title`, `name`, `type`, `f_route`, `b_routes`, `redirect`, `icon`, `rank`, `show_link`, `show_parent`, `keep_alive`, `parent_id`) VALUES (18, '更新权限是否展示在菜单', 'permission-upt-show-link', 3, '', '[\"patch:/permission/:id/show-link\"]', '', '', 5, b'0', b'0', b'0', 2);
INSERT INTO `permission` (`id`, `title`, `name`, `type`, `f_route`, `b_routes`, `redirect`, `icon`, `rank`, `show_link`, `show_parent`, `keep_alive`, `parent_id`) VALUES (20, '查询角色', 'role-read', 3, '', '[\"get:/role/page-list\", \"get:/permission/list\"]', '', '', 1, b'0', b'0', b'0', 5);
INSERT INTO `permission` (`id`, `title`, `name`, `type`, `f_route`, `b_routes`, `redirect`, `icon`, `rank`, `show_link`, `show_parent`, `keep_alive`, `parent_id`) VALUES (21, '新增角色', 'role-add', 3, '', '[\"post:/role\"]', '', '', 2, b'0', b'0', b'0', 5);
INSERT INTO `permission` (`id`, `title`, `name`, `type`, `f_route`, `b_routes`, `redirect`, `icon`, `rank`, `show_link`, `show_parent`, `keep_alive`, `parent_id`) VALUES (22, '更新角色', 'role-upt', 3, '', '[\"put:/role:id\"]', '', '', 3, b'0', b'0', b'0', 5);
INSERT INTO `permission` (`id`, `title`, `name`, `type`, `f_route`, `b_routes`, `redirect`, `icon`, `rank`, `show_link`, `show_parent`, `keep_alive`, `parent_id`) VALUES (23, '删除角色', 'role-del', 3, '', '[\"delete:/role/:id\"]', '', '', 4, b'0', b'0', b'0', 5);
INSERT INTO `permission` (`id`, `title`, `name`, `type`, `f_route`, `b_routes`, `redirect`, `icon`, `rank`, `show_link`, `show_parent`, `keep_alive`, `parent_id`) VALUES (24, '保存角色权限信息', 'role-upt-permission', 3, '', '[\"patch:/role/:id/permission\"]', '', '', 5, b'0', b'0', b'0', 5);
INSERT INTO `permission` (`id`, `title`, `name`, `type`, `f_route`, `b_routes`, `redirect`, `icon`, `rank`, `show_link`, `show_parent`, `keep_alive`, `parent_id`) VALUES (25, '系统必需', 'system-required', 3, '', '[\"get:/permission/route-list\"]', '', '', 0, b'0', b'0', b'0', 0);
COMMIT;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(30) NOT NULL,
  `permission` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of role
-- ----------------------------
BEGIN;
INSERT INTO `role` (`id`, `name`, `code`, `permission`) VALUES (1, '管理员', 'admin', '[25, 1, 3, 11, 4, 6, 10, 8, 9, 5, 20, 21, 22, 23, 24, 2, 14, 15, 16, 17, 18]');
INSERT INTO `role` (`id`, `name`, `code`, `permission`) VALUES (3, '测试', 'test', '[25, 5, 20, 21, 22, 23, 24, 16]');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(128) DEFAULT NULL COMMENT '用户名',
  `password` varchar(128) DEFAULT NULL COMMENT '密码',
  `phone` varchar(128) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(128) DEFAULT NULL COMMENT '邮箱',
  `real_name` varchar(128) DEFAULT NULL COMMENT '真实姓名',
  `enabled` bit(1) DEFAULT b'1' COMMENT '是否启用状态',
  `role` json DEFAULT NULL COMMENT '角色 id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` (`id`, `username`, `password`, `phone`, `email`, `real_name`, `enabled`, `role`) VALUES (1, 'admin', '$2a$10$4R/ujw20O63gNwBTS0vJmOfAUukGT5pCMll0gsqy6IALPHZC7SDv2', '16666666666', '632404164@qq.com', '管理员', b'1', '[1]');
INSERT INTO `user` (`id`, `username`, `password`, `phone`, `email`, `real_name`, `enabled`, `role`) VALUES (3, 'test', '$2a$10$aEX83iCGh/JrxiTImN0PE.0bK/dLE1lFFeZ4ssHdK4/rrXCqMgRHe', '16666666666', '632404164@qq.com', '测试用户', b'1', '[3]');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
