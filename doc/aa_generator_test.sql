/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50162
Source Host           : localhost:3306
Source Database       : paulandcode_generator

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2017-12-13 22:27:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for aa_generator_test
-- ----------------------------
DROP TABLE IF EXISTS `aa_generator_test`;
CREATE TABLE `aa_generator_test` (
  `id` varchar(32) NOT NULL COMMENT 'UUID',
  `org_id` varchar(32) DEFAULT NULL COMMENT '所属机构ID',
  `org_name` varchar(255) DEFAULT NULL COMMENT '所属机构名称',
  `dict_test` varchar(64) DEFAULT NULL COMMENT 'dict:affiche_type:公告类型',
  `dict_test_tow` varchar(64) DEFAULT NULL COMMENT 'dict:config_type:配置类型',
  `test` varchar(255) DEFAULT NULL COMMENT '测试字段',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_by_name` varchar(255) DEFAULT NULL COMMENT '创建者姓名',
  `create_date` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_by_name` varchar(255) DEFAULT NULL COMMENT '更新者姓名',
  `update_date` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '1:已删除 0:未删除 默认0',
  `extend_one` varchar(255) DEFAULT NULL COMMENT '扩展字段1',
  `extend_two` varchar(255) DEFAULT NULL COMMENT '扩展字段2',
  `extend_three` varchar(255) DEFAULT NULL COMMENT '扩展字段3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='1:代码生成调试';
