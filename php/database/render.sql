/*
Navicat MySQL Data Transfer

Source Server         : order
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : damai

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-08-05 11:36:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `render`
-- ----------------------------
DROP TABLE IF EXISTS `render`;
CREATE TABLE `render` (
  `did` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(999) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `adress` varchar(200) DEFAULT NULL,
  `time` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `min_price` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of render
-- ----------------------------
INSERT INTO `render` VALUES ('1', 'https://img.alicdn.com/bao/uploaded/i1/2251059038/O1CN01veP7cp2GdSFswFz5U_!!2-item_pic.png', '开心麻花高糖音乐剧《恋爱吧！人类》', '杭州 | 杭州开心麻花剧场', '2020.08.03-08.25', '50-480', '180');
INSERT INTO `render` VALUES ('14', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01lneiSM2GdSFYN2HlP_!!2251059038.png', '法国艺术启蒙魔术剧《美术馆奇妙夜·星夜》中文版', '杭州大剧院(歌剧院)', '2020.08.03-08.25', '50-480', '180');
INSERT INTO `render` VALUES ('2', 'https://img.alicdn.com/bao/uploaded/i3/2251059038/O1CN01GwtMgm2GdSFr4HaA8_!!0-item_pic.jpg', '爆笑脱口秀拼盘演出-喜剧联盒国', '杭州 | 杭州开心麻花剧场', '2020.08.03-08.25', '50-480', '180');
INSERT INTO `render` VALUES ('3', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i1/2251059038/O1CN01MScdpx2GdSDzdoGma_!!2251059038.jpg', '开心麻花首部悬疑惊悚喜剧《醉后赢家》', '杭州 | 杭州开心麻花剧场', '2020.08.03-08.25', '50-180', '180');
INSERT INTO `render` VALUES ('4', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01BEQkyl2GdSFwj1WiK_!!2251059038.png', '话剧《枕头人》', '杭州 | 杭州开心麻花剧场', '2020.08.03-08.25', '50-180', '180');
INSERT INTO `render` VALUES ('5', 'https://img.alicdn.com/bao/uploaded/i3/2251059038/O1CN01GwtMgm2GdSFr4HaA8_!!0-https://img.alicdn.com/bao/uploaded/i3/2251059038/O1CN01b1iqkn2GdSFbpNjP4_!!0-item_pic.jpg', '音乐剧《魔女宅急便》', '杭州 | 杭州开心麻花剧场', '2020.08.03-08.25', '50-180', '180');
INSERT INTO `render` VALUES ('6', 'https://img.alicdn.com/bao/uploaded/i2/2251059038/O1CN01ypYuo62GdSFvknRHp_!!0-item_pic.jpg', '麻花剧王十年经典《乌龙山伯爵》', '杭州 | 杭州开心麻花剧场', '2020.08.03-08.25', '50-180', '180');
INSERT INTO `render` VALUES ('7', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i1/2251059038/O1CN01fwmmMU2GdSFhQX08z_!!2251059038.png', '李智与乐队2020巡演 杭州站', '杭州 | 杭州开心麻花剧场', '2020.08.03-08.25', '50-180', '180');
INSERT INTO `render` VALUES ('8', 'https://img.alicdn.com/bao/uploaded/i2/2251059038/O1CN01TwEasi2GdSFrpF24m_!!0-item_pic.jpg', '北归——杭盖乐队2020中国巡演（杭州站）', '杭州 | 杭州开心麻花剧场', '2020.08.03-08.25', '50-180', '180');
INSERT INTO `render` VALUES ('9', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01fUBSCY2GdSFsbnPPh_!!2251059038.jpg', '千禧复古联盟 3.0 杭州站', '杭州 | 杭州开心麻花剧场', '2020.08.03-08.25', '50-180', '180');
INSERT INTO `render` VALUES ('10', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i3/2251059038/O1CN01hs68In2GdSFPiOCxD_!!2251059038.jpg', '2020 FORMULA1 中国大奖赛（学生票）', '杭州 | 杭州开心麻花剧场', '2020.08.03-08.25', '50-180', '180');
INSERT INTO `render` VALUES ('11', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i1/2251059038/O1CN01MtG4qQ2GdSFfo0d4g_!!2251059038.png', '法国艺术启蒙魔术剧《美术馆奇妙夜·星夜》中文版', '杭州 | 杭州开心麻花剧场', '2020.08.03-08.25', '50-180', '180');
INSERT INTO `render` VALUES ('12', 'https://img.alicdn.com/bao/uploaded/i2/2251059038/O1CN01TwEasi2GdSFrpF24m_!!0-item_pic.jpg', '【小魔方】魔幻雪景儿童舞台剧《冰雪女王》', '杭州 | 杭州开心麻花剧场', '2020.08.03-08.25', '50-180', '180');
INSERT INTO `render` VALUES ('13', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01lneiSM2GdSFYN2HlP_!!2251059038.png', '法国艺术启蒙魔术剧《美术馆奇妙夜·星夜》中文版', '杭州大剧院(歌剧院)', '2020.08.03-08.25', '50-480', '180');
INSERT INTO `render` VALUES ('15', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01lneiSM2GdSFYN2HlP_!!2251059038.png', '麻花剧王十年经典《乌龙山伯爵》', '杭州大剧院(歌剧院)', '2020.08.03-08.25', '50-480', '180');
INSERT INTO `render` VALUES ('16', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01lneiSM2GdSFYN2HlP_!!2251059038.png', '开心麻花出品独角音乐喜剧《求婚女王》', '杭州大剧院(歌剧院)', '2020.08.03-08.25', '50-480', '180');
INSERT INTO `render` VALUES ('17', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01lneiSM2GdSFYN2HlP_!!2251059038.png', '五周年纪念版《黑洞先生2020》', '杭州大剧院(歌剧院)', '2020.08.03-08.25', '50-480', '180');
INSERT INTO `render` VALUES ('18', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01lneiSM2GdSFYN2HlP_!!2251059038.png', '法语音乐剧《摇滚红与黑》-杭州站', '杭州大剧院(歌剧院)', '2020.08.03-08.25', '50-480', '180');
INSERT INTO `render` VALUES ('19', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01lneiSM2GdSFYN2HlP_!!2251059038.png', '音乐剧《第一次约会》', '杭州大剧院(歌剧院)', '2020.08.03-08.25', '50-480', '180');
INSERT INTO `render` VALUES ('20', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01lneiSM2GdSFYN2HlP_!!2251059038.png', '陈佩斯、杨立新主演话剧《戏台》', '杭州大剧院(歌剧院)', '2020.08.03-08.25', '50-480', '180');
INSERT INTO `render` VALUES ('21', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01lneiSM2GdSFYN2HlP_!!2251059038.png', '大型5D多媒体仙侠奇幻舞台剧《仙剑奇侠传一》', '杭州大剧院(歌剧院)', '2020.08.03-08.25', '50-480', '180');
INSERT INTO `render` VALUES ('22', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01lneiSM2GdSFYN2HlP_!!2251059038.png', '天空之城-久石让宫崎骏作品主题音乐会', '杭州大剧院(歌剧院)', '2020.08.03-08.25', '50-480', '180');
INSERT INTO `render` VALUES ('23', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01lneiSM2GdSFYN2HlP_!!2251059038.png', 'Mailive×大船文化 大型魔幻惊悚话剧《盗墓笔记IV：蛇沼鬼城》', '杭州大剧院(歌剧院)', '2020.08.03-08.25', '50-480', '180');
INSERT INTO `render` VALUES ('24', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01lneiSM2GdSFYN2HlP_!!2251059038.png', '年度烧脑悬疑剧《福尔摩斯与莫里亚蒂》', '杭州大剧院(歌剧院)', '2020.08.03-08.25', '50-480', '180');
INSERT INTO `render` VALUES ('25', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01lneiSM2GdSFYN2HlP_!!2251059038.png', '黑色喜剧《非典型捧腹爱情》', '杭州大剧院(歌剧院)', '2020.08.03-08.25', '50-480', '180');
INSERT INTO `render` VALUES ('26', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01lneiSM2GdSFYN2HlP_!!2251059038.png', '世界经典性话剧《阴道独白》', '杭州大剧院(歌剧院)', '2020.08.03-08.25', '50-480', '180');
INSERT INTO `render` VALUES ('27', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01lneiSM2GdSFYN2HlP_!!2251059038.png', '七夕相约话剧《再见徽因》', '杭州大剧院(歌剧院)', '2020.08.03-08.25', '50-480', '180');
INSERT INTO `render` VALUES ('28', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01lneiSM2GdSFYN2HlP_!!2251059038.png', '赏味期限在今日', '杭州大剧院(歌剧院)', '2020.08.03-08.25', '50-480', '180');
INSERT INTO `render` VALUES ('29', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01lneiSM2GdSFYN2HlP_!!2251059038.png', '爆笑脱口秀拼盘演出-喜剧联盒国', '杭州大剧院(歌剧院)', '2020.08.03-08.25', '50-480', '180');
INSERT INTO `render` VALUES ('30', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01lneiSM2GdSFYN2HlP_!!2251059038.png', '李智与乐队2020巡演 杭州站', '杭州大剧院(歌剧院)', '2020.08.03-08.25', '50-480', '180');
INSERT INTO `render` VALUES ('31', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01lneiSM2GdSFYN2HlP_!!2251059038.png', '「初夏人生」嘻哈派对', '杭州大剧院(歌剧院)', '2020.08.03-08.25', '50-480', '180');
INSERT INTO `render` VALUES ('32', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01lneiSM2GdSFYN2HlP_!!2251059038.png', '北归——杭盖乐队2020中国巡演（杭州站）', '杭州大剧院(歌剧院)', '2020.08.03-08.25', '50-480', '180');
INSERT INTO `render` VALUES ('33', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01lneiSM2GdSFYN2HlP_!!2251059038.png', '中国·杭州｜舞者契约街舞大赛', '杭州大剧院(歌剧院)', '2020.08.03-08.25', '50-480', '180');
INSERT INTO `render` VALUES ('34', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01lneiSM2GdSFYN2HlP_!!2251059038.png', '马达旋风【舞蹈表演】', '杭州大剧院(歌剧院)', '2020.08.03-08.25', '50-480', '180');
INSERT INTO `render` VALUES ('35', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01yvHPvT2GdSFcFe8JM_!!2251059038.png', '正版授权大型实景舞台剧《奥特曼：宇宙之光》(杭州站) ', '杭州魔方剧院', '2020.08.03-08.25', '40-180', '50');
INSERT INTO `render` VALUES ('36', 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i4/2251059038/O1CN01lneiSM2GdSFYN2HlP_!!2251059038.png', '陈佩斯、杨立新主演话剧《戏台》', '杭州大剧院(歌剧院)', '2020.08.03-08.25', '50-480', '123');
