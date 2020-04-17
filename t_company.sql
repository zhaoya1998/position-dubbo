/*
Navicat MySQL Data Transfer

Source Server         : cms
Source Server Version : 50557
Source Host           : localhost:3306
Source Database       : 1710d

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2020-04-17 09:33:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_company
-- ----------------------------
DROP TABLE IF EXISTS `t_company`;
CREATE TABLE `t_company` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  `cphone` varchar(255) DEFAULT NULL,
  `caddress` varchar(255) DEFAULT NULL,
  `arear` varchar(255) DEFAULT NULL,
  `csize` varchar(255) DEFAULT NULL,
  `ctype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_company
-- ----------------------------
INSERT INTO `t_company` VALUES ('1', '北京医百科技有限公司', '18795483242', '北京-朝阳区', '参加基于java技术的企业及服务应用开发和代码重构', '百人公司', '私企');
INSERT INTO `t_company` VALUES ('2', '中兴软件有限公司', '15936489752', '北京', '参加基于java技术的企业及服务应用开发和代码重构', '千人人公司', '国企');
INSERT INTO `t_company` VALUES ('3', '安徽兆尹信息科技股份有限公司', '12678542394', '北京-海淀区', '参加基于java技术的企业及服务应用开发和代码重构', '千人公司', '合资');
INSERT INTO `t_company` VALUES ('4', '中数通信息有限公司', '18347952347', '北京-东城区', '参加基于java技术的企业及服务应用开发和代码重构', '万人公司', '外企');

-- ----------------------------
-- Table structure for t_position
-- ----------------------------
DROP TABLE IF EXISTS `t_position`;
CREATE TABLE `t_position` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `pdate` datetime DEFAULT NULL,
  `prequirement` varchar(255) DEFAULT NULL,
  `peducation` varchar(255) DEFAULT NULL,
  `pwelfare` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_position
-- ----------------------------
INSERT INTO `t_position` VALUES ('1', 'java高级开发工程师', '25000.00', '1', '2020-04-09 10:21:17', 'java、c++', '本科', '五险一金，交通补贴，弹性工作，绩效奖金，股票期权');
INSERT INTO `t_position` VALUES ('2', 'java高级开发工程师', '10000.00', '3', '2020-04-06 10:22:28', 'mysql的熟练使用', '专科', '五险一金，交通补贴，弹性工作，绩效奖金，股票期权');
INSERT INTO `t_position` VALUES ('3', '大数据开发工程师', '30000.00', '2', '2020-04-06 10:29:56', 'dubbo', '博士', '五险一金，交通补贴，弹性工作，绩效奖金，股票期权');
INSERT INTO `t_position` VALUES ('4', '大数据开发工程师', '15000.00', '4', '2020-03-17 10:31:24', 'mysql的熟练使用', '专科', '五险一金，交通补贴，弹性工作，绩效奖金，股票期权');
INSERT INTO `t_position` VALUES ('5', 'java高级开发工程师', '17000.00', '1', '2020-03-10 10:31:31', 'dubbo', '硕士', '五险一金，交通补贴，弹性工作，绩效奖金，股票期权');
INSERT INTO `t_position` VALUES ('6', '大数据开发工程师', '23000.00', '3', '2020-04-12 10:31:36', 'mysql的熟练使用', '大专', '五险一金，交通补贴，弹性工作，绩效奖金，股票期权');
INSERT INTO `t_position` VALUES ('7', 'java高级开发工程师', '18000.00', '4', '2020-04-10 10:31:42', 'java、c++', '本科', '五险一金，交通补贴，弹性工作，绩效奖金，股票期权');
INSERT INTO `t_position` VALUES ('8', 'sdfgb', '8000.00', null, '2020-04-08 00:00:00', null, '大专', '');
INSERT INTO `t_position` VALUES ('9', 'dfdbvxcc', '1000.00', null, '2020-04-15 00:00:00', null, '大专', '好');
INSERT INTO `t_position` VALUES ('10', '小从v查询', '8000.00', null, '2020-04-15 00:00:00', null, '大专', '好');
