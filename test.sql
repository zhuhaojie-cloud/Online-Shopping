/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2019-11-27 08:11:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for adm
-- ----------------------------
DROP TABLE IF EXISTS `adm`;
CREATE TABLE `adm` (
  `adm_id` int(11) NOT NULL AUTO_INCREMENT,
  `adm_name` varchar(255) DEFAULT NULL,
  `adm_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adm
-- ----------------------------
INSERT INTO `adm` VALUES ('1', '朱豪杰', '123456');
INSERT INTO `adm` VALUES ('2', '李金贵', '123456');
INSERT INTO `adm` VALUES ('3', '张三', '123abc');
INSERT INTO `adm` VALUES ('4', '李四', '123456');
INSERT INTO `adm` VALUES ('5', '王五', '258741');

-- ----------------------------
-- Table structure for commodity_image
-- ----------------------------
DROP TABLE IF EXISTS `commodity_image`;
CREATE TABLE `commodity_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commodity_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `lei` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commodity_image
-- ----------------------------
INSERT INTO `commodity_image` VALUES ('1', '28', 'images/huawei_nova5_lv1.png', '森林绿');
INSERT INTO `commodity_image` VALUES ('2', '28', 'images/huawei_nova5_lv2.png', '森林绿');
INSERT INTO `commodity_image` VALUES ('3', '28', 'images/huawei_nova5_lv3.png', '森林绿');
INSERT INTO `commodity_image` VALUES ('4', '28', 'images/huawei_nova5_lv4.png', '森林绿');
INSERT INTO `commodity_image` VALUES ('5', '28', 'images/huawei_nova5_lv5.png', '森林绿');
INSERT INTO `commodity_image` VALUES ('6', '28', 'images/huawei_nova5_zi1.png', '仲夏紫');
INSERT INTO `commodity_image` VALUES ('7', '28', 'images/huawei_nova5_zi2.png', '仲夏紫');
INSERT INTO `commodity_image` VALUES ('8', '28', 'images/huawei_nova5_zi3.png', '仲夏紫');
INSERT INTO `commodity_image` VALUES ('9', '28', 'images/huawei_nova5_zi4.png', '仲夏紫');
INSERT INTO `commodity_image` VALUES ('10', '28', 'images/huawei_nova5_zi5.png', '仲夏紫');
INSERT INTO `commodity_image` VALUES ('11', '28', 'images/huawei_nova5_hei1.png', '魅艳黑');
INSERT INTO `commodity_image` VALUES ('12', '28', 'images/huawei_nova5_hei2.png', '魅艳黑');
INSERT INTO `commodity_image` VALUES ('13', '28', 'images/huawei_nova5_hei3.png', '魅艳黑');
INSERT INTO `commodity_image` VALUES ('14', '28', 'images/huawei_nova5_hei4.png', '魅艳黑');
INSERT INTO `commodity_image` VALUES ('15', '28', 'images/huawei_nova5_hei5.png', '魅艳黑');
INSERT INTO `commodity_image` VALUES ('16', '1', 'images/iphone11_hei1.png', '黑色');
INSERT INTO `commodity_image` VALUES ('17', '1', 'images/iphone11_hei2.png', '黑色');
INSERT INTO `commodity_image` VALUES ('18', '1', 'images/iphone11_hei3.png', '黑色');
INSERT INTO `commodity_image` VALUES ('19', '1', 'images/iphone11_hei4.png', '黑色');
INSERT INTO `commodity_image` VALUES ('20', '1', 'images/iphone11_hei5.png', '黑色');
INSERT INTO `commodity_image` VALUES ('21', '1', 'images/iphone11_hei5.png', '绿色');
INSERT INTO `commodity_image` VALUES ('22', '1', 'images/iphone11_lv2.png', '绿色');
INSERT INTO `commodity_image` VALUES ('23', '1', 'images/iphone11_lv3.png', '绿色');
INSERT INTO `commodity_image` VALUES ('24', '1', 'images/iphone11_lv4.png', '绿色');
INSERT INTO `commodity_image` VALUES ('25', '1', 'images/iphone11_lv5.png', '绿色');
INSERT INTO `commodity_image` VALUES ('26', '1', 'images/iphone11_zi1.png', '紫色');
INSERT INTO `commodity_image` VALUES ('27', '1', 'images/iphone11_zi2.png', '紫色');
INSERT INTO `commodity_image` VALUES ('28', '1', 'images/iphone11_zi3.png.png', '紫色');
INSERT INTO `commodity_image` VALUES ('29', '1', 'images/iphone11_zi4.png', '紫色');
INSERT INTO `commodity_image` VALUES ('30', '1', 'images/iphone11_zi5.png', '紫色');
INSERT INTO `commodity_image` VALUES ('31', '2', 'images/vivo_nex3_liu1.png', '深空流光');
INSERT INTO `commodity_image` VALUES ('32', '2', 'images/vivo_nex3_liu2.png', '深空流光');
INSERT INTO `commodity_image` VALUES ('33', '2', 'images/vivo_nex3_liu3.png', '深空流光');
INSERT INTO `commodity_image` VALUES ('34', '2', 'images/vivo_nex3_liu4.png', '深空流光');
INSERT INTO `commodity_image` VALUES ('35', '2', 'images/vivo_nex3_liu5.png', '深空流光');
INSERT INTO `commodity_image` VALUES ('36', '2', 'images/vivo_nex3_ye1.png', '液态星河');
INSERT INTO `commodity_image` VALUES ('37', '2', 'images/vivo_nex3_ye2.png', '液态星河');
INSERT INTO `commodity_image` VALUES ('38', '2', 'images/vivo_nex3_ye3.png', '液态星河');
INSERT INTO `commodity_image` VALUES ('39', '2', 'images/vivo_nex3_ye4.png', '液态星河');
INSERT INTO `commodity_image` VALUES ('40', '2', 'images/vivo_nex3_ye5.png', '液态星河');
INSERT INTO `commodity_image` VALUES ('41', '2', 'images/vivo_nex3_ye1.png', '液态星河');
INSERT INTO `commodity_image` VALUES ('42', '2', 'images/vivo_nex3_ye2.png', '液态星河');
INSERT INTO `commodity_image` VALUES ('43', '2', 'images/vivo_nex3_ye3.png', '液态星河');
INSERT INTO `commodity_image` VALUES ('44', '2', 'images/vivo_nex3_ye4.png', '液态星河');
INSERT INTO `commodity_image` VALUES ('45', '2', 'images/vivo_nex3_ye5.png', '液态星河');
INSERT INTO `commodity_image` VALUES ('47', '3', 'images/huawei_mate30_yin1.png', '星河银');
INSERT INTO `commodity_image` VALUES ('48', '3', 'images/huawei_mate30_yin2.png', '星河银');
INSERT INTO `commodity_image` VALUES ('49', '3', 'images/huawei_mate30_yin3.png', '星河银');
INSERT INTO `commodity_image` VALUES ('50', '3', 'images/huawei_mate30_yin4.png', '星河银');
INSERT INTO `commodity_image` VALUES ('51', '3', 'images/huawei_mate30_yin5.png', '星河银');
INSERT INTO `commodity_image` VALUES ('52', '3', 'images/huawei_mate30_fei1.png', '翡翠冷');
INSERT INTO `commodity_image` VALUES ('53', '3', 'images/huawei_mate30_fei2.png', '翡翠冷');
INSERT INTO `commodity_image` VALUES ('54', '3', 'images/huawei_mate30_fei3.png', '翡翠冷');
INSERT INTO `commodity_image` VALUES ('55', '3', 'images/huawei_mate30_fei4.png', '翡翠冷');
INSERT INTO `commodity_image` VALUES ('56', '3', 'images/huawei_mate30_fei5.png', '翡翠冷');
INSERT INTO `commodity_image` VALUES ('57', '3', 'images/huawei_mate30_zi1.png', '罗兰紫');
INSERT INTO `commodity_image` VALUES ('58', '3', 'images/huawei_mate30_zi2.png', '罗兰紫');
INSERT INTO `commodity_image` VALUES ('59', '3', 'images/huawei_mate30_zi3.png', '罗兰紫');
INSERT INTO `commodity_image` VALUES ('60', '3', 'images/huawei_mate30_zi4.png', '罗兰紫');
INSERT INTO `commodity_image` VALUES ('61', '3', 'images/huawei_mate30_zi5.png', '罗兰紫');
INSERT INTO `commodity_image` VALUES ('62', '4', 'images/nuojiya_2692_lan1.png', '蓝色');
INSERT INTO `commodity_image` VALUES ('63', '4', 'images/nuojiya_2692_lan1.png', '蓝色');
INSERT INTO `commodity_image` VALUES ('64', '4', 'images/nuojiya_2692_lan1.png', '蓝色');
INSERT INTO `commodity_image` VALUES ('65', '4', 'images/nuojiya_2692_lan1.png', '蓝色');
INSERT INTO `commodity_image` VALUES ('66', '4', 'images/nuojiya_2692_lan1.png', '蓝色');
INSERT INTO `commodity_image` VALUES ('67', '4', 'images/nuojiya_2692_lan1.png', '蓝色');
INSERT INTO `commodity_image` VALUES ('68', '4', 'images/nuojiya_2692_lan1.png', '蓝色');
INSERT INTO `commodity_image` VALUES ('69', '4', 'images/nuojiya_2692_lan1.png', '蓝色');
INSERT INTO `commodity_image` VALUES ('70', '4', 'images/nuojiya_2692_lan1.png', '蓝色');
INSERT INTO `commodity_image` VALUES ('71', '4', 'images/nuojiya_2692_lan1.png', '蓝色');
INSERT INTO `commodity_image` VALUES ('72', '4', 'images/nuojiya_2692_lan1.png', '蓝色');
INSERT INTO `commodity_image` VALUES ('73', '4', 'images/nuojiya_2692_lan1.png', '蓝色');
INSERT INTO `commodity_image` VALUES ('74', '4', 'images/nuojiya_2692_lan1.png', '蓝色');
INSERT INTO `commodity_image` VALUES ('75', '4', 'images/nuojiya_2692_lan1.png', '蓝色');
INSERT INTO `commodity_image` VALUES ('76', '4', 'images/nuojiya_2692_lan1.png', '蓝色');
INSERT INTO `commodity_image` VALUES ('77', '5', 'images/mi_redmi7_hei1.png', '亮黑');
INSERT INTO `commodity_image` VALUES ('78', '5', 'images/mi_redmi7_hei2.png', '亮黑');
INSERT INTO `commodity_image` VALUES ('79', '5', 'images/mi_redmi7_hei3.png', '亮黑');
INSERT INTO `commodity_image` VALUES ('80', '5', 'images/mi_redmi7_hei4.png', '亮黑');
INSERT INTO `commodity_image` VALUES ('81', '5', 'images/mi_redmi7_hei5.png', '亮黑');
INSERT INTO `commodity_image` VALUES ('82', '5', 'images/mi_redmi7_lan1.png', '梦幻蓝');
INSERT INTO `commodity_image` VALUES ('83', '5', 'images/mi_redmi7_lan2.png', '梦幻蓝');
INSERT INTO `commodity_image` VALUES ('84', '5', 'images/mi_redmi7_lan3.png', '梦幻蓝');
INSERT INTO `commodity_image` VALUES ('85', '5', 'images/mi_redmi7_lan4.png', '梦幻蓝');
INSERT INTO `commodity_image` VALUES ('86', '5', 'images/mi_redmi7_lan5.png', '梦幻蓝');
INSERT INTO `commodity_image` VALUES ('87', '5', 'images/mi_redmi7_hong1.png', '魅夜红');
INSERT INTO `commodity_image` VALUES ('88', '5', 'images/mi_redmi7_hong2.png', '魅夜红');
INSERT INTO `commodity_image` VALUES ('89', '5', 'images/mi_redmi7_hong3.png', '魅夜红');
INSERT INTO `commodity_image` VALUES ('90', '5', 'images/mi_redmi7_hong4.png', '魅夜红');
INSERT INTO `commodity_image` VALUES ('91', '5', 'images/mi_redmi7_hong5.png', '魅夜红');
INSERT INTO `commodity_image` VALUES ('94', '6', 'images/iphone11_hei1.png', '黑色');
INSERT INTO `commodity_image` VALUES ('95', '6', 'images/iphone11_hei2.png', '黑色');
INSERT INTO `commodity_image` VALUES ('96', '6', 'images/iphone11_hei3.png', '黑色');
INSERT INTO `commodity_image` VALUES ('97', '6', 'images/iphone11_hei4.png', '黑色');
INSERT INTO `commodity_image` VALUES ('98', '6', 'images/iphone11_hei5.png', '黑色');
INSERT INTO `commodity_image` VALUES ('99', '6', 'images/iphone11_hei5.png', '绿色');
INSERT INTO `commodity_image` VALUES ('100', '6', 'images/iphone11_lv2.png', '绿色');
INSERT INTO `commodity_image` VALUES ('101', '6', 'images/iphone11_lv3.png', '绿色');
INSERT INTO `commodity_image` VALUES ('102', '6', 'images/iphone11_lv4.png', '绿色');
INSERT INTO `commodity_image` VALUES ('103', '6', 'images/iphone11_lv5.png', '绿色');
INSERT INTO `commodity_image` VALUES ('104', '6', 'images/iphone11_zi1.png', '紫色');
INSERT INTO `commodity_image` VALUES ('105', '6', 'images/iphone11_zi2.png', '紫色');
INSERT INTO `commodity_image` VALUES ('106', '6', 'images/iphone11_zi3.png.png', '紫色');
INSERT INTO `commodity_image` VALUES ('107', '6', 'images/iphone11_zi4.png', '紫色');
INSERT INTO `commodity_image` VALUES ('108', '6', 'images/iphone11_zi5.png', '紫色');

-- ----------------------------
-- Table structure for commodity_infor
-- ----------------------------
DROP TABLE IF EXISTS `commodity_infor`;
CREATE TABLE `commodity_infor` (
  `commodity_id` int(11) NOT NULL AUTO_INCREMENT,
  `commodity_name` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `price` double(10,2) DEFAULT '0.00',
  `describe` varchar(255) DEFAULT NULL,
  `fuwu` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`commodity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commodity_infor
-- ----------------------------
INSERT INTO `commodity_infor` VALUES ('1', 'Apple iPhone 11', '500', '2', '5688.00', '128G 黑色 移动联通电信4G手机', '保修一年', 'images/iphone11_hei1.png');
INSERT INTO `commodity_infor` VALUES ('2', 'vivo NEX3', '500', '2', '5298.00', '深空流光 骁龙855处理器 8GB+256GB 拍照游戏手机 双卡双待 全网通5G手机', '保修一年', 'images/vivo_nex3_liu5.png');
INSERT INTO `commodity_infor` VALUES ('3', '华为手机Mate30(TAS-AL00)', '500', '2', '3999.00', '6GB+128GB 全网通 双卡双待 亮黑', '保修一年', 'images/huawei_mate30_yin3.png');
INSERT INTO `commodity_infor` VALUES ('4', '诺基亚 2692', '200', '2', '268.00', '移动版心机 直板手机 按键手机 收藏手机 学生手机 老人手机 Symbian OS系统 不支持电信联通(枫叶金 官方标配)', '保修一年', 'images/nuojiya_2692_lan1.png');
INSERT INTO `commodity_infor` VALUES ('5', 'MI手机Redmi 7', '200', '2', '899.00', '幻彩渐变AI双摄 4GB+64GB 魅夜红 全网通 双卡双待', '保修一年', 'images/mi_redmi7_hei1.png');
INSERT INTO `commodity_infor` VALUES ('6', 'Apple iPhone 11', '220', '2', '5688.00', '128G 黑色 移动联通电信4G手机', '保修一年', 'images/iphone11_hei1.png');
INSERT INTO `commodity_infor` VALUES ('7', 'vivo NEX3', '300', '2', '5298.00', '深空流光 骁龙855处理器 8GB+256GB 拍照游戏手机 双卡双待 全网通5G手机', '保修一年保修一年', 'images/vivo_nex3_liu5.png');
INSERT INTO `commodity_infor` VALUES ('8', '华为手机Mate30(TAS-AL00)', '200', '2', '3999.00', '6GB+128GB 全网通 双卡双待 亮黑', '保修一年', 'images/huawei_mate30_yin3.png');
INSERT INTO `commodity_infor` VALUES ('9', '诺基亚 2692', '200', '2', '268.00', '移动版心机 直板手机 按键手机 收藏手机 学生手机 老人手机 Symbian OS系统 不支持电信联通(枫叶金 官方标配)', '保修一年', 'images/nuojiya_2692_lan1.png');
INSERT INTO `commodity_infor` VALUES ('10', 'MI手机Redmi 7', '180', '2', '899.00', '幻彩渐变AI双摄 4GB+64GB 魅夜红 全网通 双卡双待', '保修一年', 'images/mi_redmi7_hei1.png');
INSERT INTO `commodity_infor` VALUES ('11', 'Apple iPhone 11', '200', '2', '5688.00', '128G 黑色 移动联通电信4G手机', '保修一年', 'images/iphone11_hei1.png');
INSERT INTO `commodity_infor` VALUES ('12', 'vivo NEX3', '100', '2', '9298.00', '深空流光 骁龙855处理器 8GB+256GB 拍照游戏手机 双卡双待 全网通5G手机', '保修一年', 'images/vivo_nex3_liu5.png');
INSERT INTO `commodity_infor` VALUES ('13', '华为手机Mate30(TAS-AL00)', '200', '2', '3999.00', '6GB+128GB 全网通 双卡双待 亮黑', '保修一年', 'images/huawei_mate30_yin3.png');
INSERT INTO `commodity_infor` VALUES ('14', '诺基亚 2692', '300', '5', '4699.00', '移动版心机 直板手机 按键手机 收藏手机 学生手机 老人手机 Symbian OS系统 不支持电信联通(枫叶金 官方标配)', '保修一年', 'images/nuojiya_2692_lan1.png');
INSERT INTO `commodity_infor` VALUES ('15', 'Apple iPhone 11', '250', '5', '4599.00', '128G 黑色 移动联通电信4G手机', '保修一年', 'images/iphone11_hei1.png');
INSERT INTO `commodity_infor` VALUES ('16', 'vivo NEX3', '200', '5', '8688.00', '深空流光 骁龙855处理器 8GB+256GB 拍照游戏手机 双卡双待 全网通5G手机', '保修一年', 'images/vivo_nex3_liu5.png');
INSERT INTO `commodity_infor` VALUES ('17', '华为手机Mate30(TAS-AL00)', '300', '5', '4399.00', '6GB+128GB 全网通 双卡双待 亮黑', '保修一年', 'images/huawei_mate30_yin3.png');
INSERT INTO `commodity_infor` VALUES ('18', '诺基亚 2692', '160', '5', '4999.00', '移动版心机 直板手机 按键手机 收藏手机 学生手机 老人手机 Symbian OS系统 不支持电信联通(枫叶金 官方标配)', '保修一年', 'images/nuojiya_2692_lan1.png');
INSERT INTO `commodity_infor` VALUES ('19', 'MI手机Redmi 7', '150', '5', '6799.00', '幻彩渐变AI双摄 4GB+64GB 魅夜红 全网通 双卡双待', '保修一年', 'images/mi_redmi7_hei1.png');
INSERT INTO `commodity_infor` VALUES ('20', 'Apple iPhone 11', '220', '5', '5599.00', '128G 黑色 移动联通电信4G手机', '保修一年', 'images/iphone11_hei1.png');
INSERT INTO `commodity_infor` VALUES ('21', 'vivo NEX3', '200', '5', '5449.00', '深空流光 骁龙855处理器 8GB+256GB 拍照游戏手机 双卡双待 全网通5G手机', '保修一年', 'images/vivo_nex3_liu5.png');
INSERT INTO `commodity_infor` VALUES ('22', 'vivo NEX3', '230', '5', '4798.00', '深空流光 骁龙855处理器 8GB+256GB 拍照游戏手机 双卡双待 全网通5G手机', '保修一年', 'images/mi_redmi7_hei1.png');
INSERT INTO `commodity_infor` VALUES ('23', '华为手机Mate30(TAS-AL00)', '160', '5', '8999.00', '6GB+128GB 全网通 双卡双待 亮黑', '保修一年', 'images/huawei_mate30_yin3.png');
INSERT INTO `commodity_infor` VALUES ('24', '诺基亚 2692', '170', '5', '2748.00', '移动版心机 直板手机 按键手机 收藏手机 学生手机 老人手机 Symbian OS系统 不支持电信联通(枫叶金 官方标配)', '保修一年', 'images/nuojiya_2692_lan1.png');
INSERT INTO `commodity_infor` VALUES ('25', 'MI手机Redmi 7', '280', '5', '1299.00', '幻彩渐变AI双摄 4GB+64GB 魅夜红 全网通 双卡双待', '保修一年', 'images/mi_redmi7_hei1.png');
INSERT INTO `commodity_infor` VALUES ('26', 'Apple iPhone 11', '110', '5', '7988.00', '128G 黑色 移动联通电信4G手机', '保修一年', 'images/iphone11_hei1.png');
INSERT INTO `commodity_infor` VALUES ('27', 'vivo NEX3', '240', '5', '2269.00', '深空流光 骁龙855处理器 8GB+256GB 拍照游戏手机 双卡双待 全网通5G手机', '保修一年', 'images/vivo_nex3_liu5.png');
INSERT INTO `commodity_infor` VALUES ('28', 'MI手机Redmi 7', '100', '2', '1200.00', '幻彩渐变AI双摄 4GB+64GB 魅夜红 全网通 双卡双待', '保修两年', 'images/mi_redmi7_hei1.png');

-- ----------------------------
-- Table structure for commodity_type
-- ----------------------------
DROP TABLE IF EXISTS `commodity_type`;
CREATE TABLE `commodity_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commodity_type
-- ----------------------------
INSERT INTO `commodity_type` VALUES ('1', '洗漱用品');
INSERT INTO `commodity_type` VALUES ('2', '手机');
INSERT INTO `commodity_type` VALUES ('3', '电视');
INSERT INTO `commodity_type` VALUES ('4', '冰箱');
INSERT INTO `commodity_type` VALUES ('5', '电脑');
INSERT INTO `commodity_type` VALUES ('6', '厨房卫浴');
INSERT INTO `commodity_type` VALUES ('7', '家具');
INSERT INTO `commodity_type` VALUES ('8', '家装');
INSERT INTO `commodity_type` VALUES ('9', '母婴');
INSERT INTO `commodity_type` VALUES ('10', '酒水');
INSERT INTO `commodity_type` VALUES ('11', '美妆');
INSERT INTO `commodity_type` VALUES ('12', '鞋帽');
INSERT INTO `commodity_type` VALUES ('13', '服饰');
INSERT INTO `commodity_type` VALUES ('14', '箱包');
INSERT INTO `commodity_type` VALUES ('15', '户外');
INSERT INTO `commodity_type` VALUES ('16', '钟表');
INSERT INTO `commodity_type` VALUES ('17', '汽车');
INSERT INTO `commodity_type` VALUES ('18', '洗衣机');
INSERT INTO `commodity_type` VALUES ('19', '包公配件');
INSERT INTO `commodity_type` VALUES ('20', '智能数码');
INSERT INTO `commodity_type` VALUES ('21', '建材');

-- ----------------------------
-- Table structure for delivery_mode
-- ----------------------------
DROP TABLE IF EXISTS `delivery_mode`;
CREATE TABLE `delivery_mode` (
  `delivery_mode_id` int(11) NOT NULL AUTO_INCREMENT,
  `delivery_mode_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`delivery_mode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of delivery_mode
-- ----------------------------
INSERT INTO `delivery_mode` VALUES ('1', '百事快递');
INSERT INTO `delivery_mode` VALUES ('2', '中通快递');
INSERT INTO `delivery_mode` VALUES ('3', '韵达快递');
INSERT INTO `delivery_mode` VALUES ('4', '顺丰快递');
INSERT INTO `delivery_mode` VALUES ('5', '申通快递');
INSERT INTO `delivery_mode` VALUES ('6', '邮政快递');

-- ----------------------------
-- Table structure for duizhao
-- ----------------------------
DROP TABLE IF EXISTS `duizhao`;
CREATE TABLE `duizhao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `commodity_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `commodity_name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of duizhao
-- ----------------------------
INSERT INTO `duizhao` VALUES ('1', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('2', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('3', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('4', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('5', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('6', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('7', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('8', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('9', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('10', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('11', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('12', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('13', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('14', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('15', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('16', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('17', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('18', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('19', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('20', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('21', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('22', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('23', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('24', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('25', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('26', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('27', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('28', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('29', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('30', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('31', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('32', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('33', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('34', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('35', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('36', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('37', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('38', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('39', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('40', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('41', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('42', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('43', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('44', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('45', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('46', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('47', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('48', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('49', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('50', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('51', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('52', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('53', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('54', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('55', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('56', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('57', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('58', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('59', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('60', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('61', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('62', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('63', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('64', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('65', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('66', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('67', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('68', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('69', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('70', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('71', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('72', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('73', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('74', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('75', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('76', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('77', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('78', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('79', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('80', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('81', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('82', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('83', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('84', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('85', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('86', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('87', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('88', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('89', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('90', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('91', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('92', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('93', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('94', '6', '3', 'images/huawei_mate30_yin3.png', null, '3999');
INSERT INTO `duizhao` VALUES ('95', '6', '2', 'images/vivo_nex3_liu5.png', null, '5298');
INSERT INTO `duizhao` VALUES ('96', '6', '4', 'images/nuojiya_2692_lan1.png', null, '268');

-- ----------------------------
-- Table structure for feedback_infor
-- ----------------------------
DROP TABLE IF EXISTS `feedback_infor`;
CREATE TABLE `feedback_infor` (
  `feedback_infor_id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback_mode_id` int(11) DEFAULT NULL,
  `menber_id` int(11) DEFAULT NULL,
  `infor_title` varchar(255) DEFAULT NULL,
  `infor_content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`feedback_infor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feedback_infor
-- ----------------------------
INSERT INTO `feedback_infor` VALUES ('1', '1', '100003', '网站信息', '网站首页新品速览信息与实际不符');
INSERT INTO `feedback_infor` VALUES ('2', '2', '100010', '商品信息', 'oppo A5全面屏拍照手机图片亮度不好');
INSERT INTO `feedback_infor` VALUES ('3', '3', '100005', '价格问题', '荣耀8X Max标配版价格与淘宝不相同');
INSERT INTO `feedback_infor` VALUES ('4', '2', '100020', '商品信息', 'Apple iphone XR 128GB图片没有背面');
INSERT INTO `feedback_infor` VALUES ('5', '4', '100025', '物流信息', '订单100002申通快递4天了还是没到');
INSERT INTO `feedback_infor` VALUES ('6', '4', '100011', '物流信息', '订单100014百事快递未领取退回');

-- ----------------------------
-- Table structure for feekback_mode
-- ----------------------------
DROP TABLE IF EXISTS `feekback_mode`;
CREATE TABLE `feekback_mode` (
  `feedback_mode_id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback_mode_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`feedback_mode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feekback_mode
-- ----------------------------
INSERT INTO `feekback_mode` VALUES ('1', '网站信息');
INSERT INTO `feekback_mode` VALUES ('2', '商品信息');
INSERT INTO `feekback_mode` VALUES ('3', '价格信息');
INSERT INTO `feekback_mode` VALUES ('4', '物流信息');

-- ----------------------------
-- Table structure for gouwuche
-- ----------------------------
DROP TABLE IF EXISTS `gouwuche`;
CREATE TABLE `gouwuche` (
  `commodity_id` int(11) NOT NULL,
  `commodity_name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `price` double(10,2) DEFAULT '0.00',
  `number` int(11) DEFAULT NULL,
  `commodity_image` varchar(225) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lei` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gouwuche
-- ----------------------------
INSERT INTO `gouwuche` VALUES ('1', 'Apple iPhone 11', '0', '5688.00', '1', 'images/iphone11_hei1.png', '16', '黑色', '2019-11-25 07:49:52');
INSERT INTO `gouwuche` VALUES ('1', 'Apple iPhone 11', '6', '5688.00', '1', 'images/iphone11_hei1.png', '17', '黑色', '2019-11-25 08:34:54');
INSERT INTO `gouwuche` VALUES ('1', 'Apple iPhone 11', '14', '5688.00', '2', 'images/iphone11_hei1.png', '20', '黑色', '2019-11-26 16:08:03');

-- ----------------------------
-- Table structure for kefu
-- ----------------------------
DROP TABLE IF EXISTS `kefu`;
CREATE TABLE `kefu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `content` text,
  `image` varchar(255) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kefu
-- ----------------------------
INSERT INTO `kefu` VALUES ('2', '6', '2019-11-23 23:22:23', '我是谁？', null, '6');
INSERT INTO `kefu` VALUES ('3', '7', '2019-11-23 23:54:24', '你是谁？', null, '7');
INSERT INTO `kefu` VALUES ('4', '7', '2019-11-24 10:41:02', '我怎么知道', null, '10');
INSERT INTO `kefu` VALUES ('5', '6', '2019-11-24 11:05:11', '在吗?客服朱', null, '6');
INSERT INTO `kefu` VALUES ('6', '6', '2019-11-24 11:36:19', '喂', null, '6');
INSERT INTO `kefu` VALUES ('7', '6', '2019-11-24 11:38:56', '在么？', null, '6');
INSERT INTO `kefu` VALUES ('8', '6', '2019-11-24 12:38:12', '在', null, '6');
INSERT INTO `kefu` VALUES ('9', '6', '2019-11-24 12:40:31', '嗯嗯', null, '10');
INSERT INTO `kefu` VALUES ('10', '6', '2019-11-24 13:43:51', '?', null, '6');
INSERT INTO `kefu` VALUES ('11', '6', '2019-11-24 14:24:02', '', null, '6');
INSERT INTO `kefu` VALUES ('12', '6', '2019-11-24 14:43:42', '我去上厕所', 'upload/201911241443426134.png', '6');
INSERT INTO `kefu` VALUES ('13', '6', '2019-11-24 14:49:24', '我我我我我我我我我我我我我我我我我我我', 'upload/201911241449249187.png', '6');
INSERT INTO `kefu` VALUES ('14', '6', '2019-11-24 14:55:25', '撒顶顶顶顶顶顶顶顶顶顶顶顶顶顶速度速度撒顶顶顶顶顶顶顶顶顶顶顶顶顶顶速度速度撒顶顶顶顶顶顶顶顶顶顶顶顶顶顶速度速度撒顶顶顶顶顶顶顶顶顶顶顶顶顶顶速度速度撒顶顶顶顶顶顶顶顶顶顶顶顶顶顶速度速度撒顶顶顶顶顶顶顶顶顶顶顶顶顶顶速度速度撒顶顶顶顶顶顶顶顶顶顶顶顶顶顶速度速度', 'upload/2019112414552571032.png', '6');
INSERT INTO `kefu` VALUES ('15', '6', '2019-11-24 15:09:11', '<a href=\"\">ddd</a>', 'upload/', '6');
INSERT INTO `kefu` VALUES ('16', '6', '2019-11-24 15:10:45', '数得到', 'upload/', '6');
INSERT INTO `kefu` VALUES ('17', '6', '2019-11-24 15:11:03', '杀杀杀', null, '6');
INSERT INTO `kefu` VALUES ('18', '6', '2019-11-24 16:38:22', 'en', null, '6');
INSERT INTO `kefu` VALUES ('19', '6', '2019-11-24 16:41:09', '嗯？', null, '10');
INSERT INTO `kefu` VALUES ('20', '6', '2019-11-24 16:41:44', '哦哦哦', 'upload/2019112416414466710.png', '10');
INSERT INTO `kefu` VALUES ('21', '6', '2019-11-24 16:42:17', '', null, '10');
INSERT INTO `kefu` VALUES ('22', '6', '2019-11-24 16:48:52', '', null, '10');
INSERT INTO `kefu` VALUES ('23', '6', '2019-11-24 16:52:30', '', null, '10');
INSERT INTO `kefu` VALUES ('24', '6', '2019-11-24 16:52:56', '嗡嗡嗡', null, '10');
INSERT INTO `kefu` VALUES ('25', '6', '2019-11-24 21:38:57', '<a href=\"../Shangpin?commodity_id=3\">华为手机Mate30(TAS-AL00)</a>', 'images/huawei_mate30_yin3.png', '6');
INSERT INTO `kefu` VALUES ('26', '6', '2019-11-24 21:52:21', '<a href=\"../Shangpin?commodity_id=3target=\"_blank\"\">华为手机Mate30(TAS-AL00)</a>', 'images/huawei_mate30_yin3.png', '6');
INSERT INTO `kefu` VALUES ('27', '6', '2019-11-24 21:57:35', '<a href=\"../Shangpin?commodity_id=3 target=\"_blank\"\">华为手机Mate30(TAS-AL00)</a>', 'images/huawei_mate30_yin3.png', '6');
INSERT INTO `kefu` VALUES ('28', '6', '2019-11-24 21:58:57', '<a href=\"../Shangpin?commodity_id=3\"target=\"_blank\"\">华为手机Mate30(TAS-AL00)</a>', 'images/huawei_mate30_yin3.png', '6');
INSERT INTO `kefu` VALUES ('29', '6', '2019-11-25 08:03:31', '<a href=\"../Shangpin?commodity_id=1\"target=\"_blank\"\">Apple iPhone 11</a>', 'images/iphone11_hei1.png', '6');
INSERT INTO `kefu` VALUES ('30', '14', '2019-11-26 16:07:20', '你是谁？', null, '14');
INSERT INTO `kefu` VALUES ('31', '14', '2019-11-26 16:07:39', 'ww', 'upload/201911261607399279.png', '14');
INSERT INTO `kefu` VALUES ('32', '14', '2019-11-26 16:07:46', '<a href=\"../Shangpin?commodity_id=1\"target=\"_blank\"\">Apple iPhone 11</a>', 'images/iphone11_hei1.png', '14');
INSERT INTO `kefu` VALUES ('33', '14', '2019-11-26 16:09:04', 'en ', null, '10');

-- ----------------------------
-- Table structure for lingjuan
-- ----------------------------
DROP TABLE IF EXISTS `lingjuan`;
CREATE TABLE `lingjuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lingjuan
-- ----------------------------
INSERT INTO `lingjuan` VALUES ('33', '6', '1', '2019-11-13 20:38:58');
INSERT INTO `lingjuan` VALUES ('34', '6', '2', '2019-11-13 21:09:29');
INSERT INTO `lingjuan` VALUES ('37', '14', '1', '2019-11-26 16:02:57');

-- ----------------------------
-- Table structure for lunbo
-- ----------------------------
DROP TABLE IF EXISTS `lunbo`;
CREATE TABLE `lunbo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `hot` int(11) DEFAULT NULL,
  `fb_time` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lunbo
-- ----------------------------
INSERT INTO `lunbo` VALUES ('1', 'aaaa', '0', '2019-11-10 13:41:51', 'aaa', 'aaa', 'images/lunbo1.jpg');
INSERT INTO `lunbo` VALUES ('2', 'bbbb', '0', '2019-11-10 13:43:04', 'bbb', 'bbb', 'images/lunbo2.jpg');
INSERT INTO `lunbo` VALUES ('3', 'ccc', '1', '2019-11-10 13:43:14', 'ccc', 'ccc', 'images/lunbo3.jpg');
INSERT INTO `lunbo` VALUES ('4', 'ddd', '0', '2019-11-10 13:43:27', 'ddd', 'ddd', 'images/lunbo4.jpg');
INSERT INTO `lunbo` VALUES ('5', 'eee', '0', '2019-11-10 13:43:50', 'eee', 'eee', 'images/lunbo5.jpg');
INSERT INTO `lunbo` VALUES ('6', 'ffff', '1', '2019-11-10 13:44:00', 'fff', 'fff', 'images/lunbo1.jpg');
INSERT INTO `lunbo` VALUES ('7', 'ggg', '0', '2019-11-10 13:44:35', 'ggg', 'ggg', 'images/lunbo2.jpg');

-- ----------------------------
-- Table structure for menber
-- ----------------------------
DROP TABLE IF EXISTS `menber`;
CREATE TABLE `menber` (
  `menber_id` int(11) NOT NULL AUTO_INCREMENT,
  `menber_mode_id` int(11) DEFAULT NULL,
  `menber_acount` varchar(255) DEFAULT NULL,
  `menber_password` varchar(255) DEFAULT NULL,
  `menber_name` varchar(255) DEFAULT NULL,
  `menber_idcard` varchar(255) DEFAULT NULL,
  `menber_address` varchar(255) DEFAULT NULL,
  `menber_email` varchar(255) DEFAULT NULL,
  `menber_qq` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`menber_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10005 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menber
-- ----------------------------
INSERT INTO `menber` VALUES ('1', '1', '100001', '123456', '朱豪杰', '511024199806260251', '重庆荣昌西南大学', '15984403717@163.com', '1640085377');
INSERT INTO `menber` VALUES ('2', '1', '100002', '123456', '李金贵', '51102415899522444', '重庆荣昌西南大学', '15984403717@163.com', '112454545');
INSERT INTO `menber` VALUES ('3', '2', '100003', '1235353', '张三', '51102415899522444', '重庆荣昌西南大学', '15984403717@163.com', '451235345');
INSERT INTO `menber` VALUES ('10004', null, '100004', '35463453', '李四', '51234535435345345', '重庆荣昌西南大学', '15984403717@163.com', '451235345');

-- ----------------------------
-- Table structure for menber_mode
-- ----------------------------
DROP TABLE IF EXISTS `menber_mode`;
CREATE TABLE `menber_mode` (
  `menber_mode_id` int(11) NOT NULL AUTO_INCREMENT,
  `menber_mode_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`menber_mode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menber_mode
-- ----------------------------
INSERT INTO `menber_mode` VALUES ('1', '普通会员', null);
INSERT INTO `menber_mode` VALUES ('2', '白银会员', null);
INSERT INTO `menber_mode` VALUES ('3', '黄金会员', null);
INSERT INTO `menber_mode` VALUES ('4', '铂金会员', null);
INSERT INTO `menber_mode` VALUES ('5', '钻石会员', null);
INSERT INTO `menber_mode` VALUES ('6', '至尊会员', null);

-- ----------------------------
-- Table structure for notice_infor
-- ----------------------------
DROP TABLE IF EXISTS `notice_infor`;
CREATE TABLE `notice_infor` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_type` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice_infor
-- ----------------------------
INSERT INTO `notice_infor` VALUES ('1', '公益公告', '武汉军云会期间订单延迟配送公共信息', '尊敬的各位国美用户：您好！\r\n\r\n为保障武汉军运会顺利召开，武汉市交通管理局发布了《关于第七届世界军人运动会期间武汉市临时交通管理措施方案》文件，自2019年10月15日起至2019年10月28日期间货车全天限行。\r\n\r\n对此，军运会期间，武汉三环内区域停止商品配送（彩电除外），三环外及湖北省部分二级地区商品配送将会延迟。具体配送时间，以工作人员电话通知为准，由此给您带来的不便，我们深表歉意。\r\n\r\n如有疑问，请拨打国美客服电话：4008113333。感谢您对国美平台的支持！祝您购物愉快！', '2019-11-11 14:41:13', 'aa', null);
INSERT INTO `notice_infor` VALUES ('2', '公益公告', '近期定单配送延迟公共', '尊敬的各位国美用户：您好！\r\n\r\n近期因活动促销导致订单量剧增，致使部分订单发货延迟。具体配送时间，以物流跟踪状态或配送人员电话通知为准，由此给您带来的不便，我们深表歉意。\r\n\r\n如有疑问，请拨打国美客服电话：4008113333。感谢您对国美平台的支持！祝您购物愉快！', '2019-11-11 14:41:16', 'bb', null);
INSERT INTO `notice_infor` VALUES ('3', '活动公告', '华为智慧屏返200红包', '凡是在限定期限内购买华为智慧屏的用户将回返200红包', '2019-11-11 14:41:19', 'cc', null);
INSERT INTO `notice_infor` VALUES ('4', '使用规则', '美豆有效期变更', ' 为提升您的消费体验，我司调整美豆有效期适用规则，请您仔细阅读并知悉本规则，避免造成您的财产损失。 1、本规则适用范围：国美电器旗下所有门店、永乐旗下所有门店、大中旗下所有门店、蜂星旗下所有门店、腾达旗下所有门店，', '2019-11-11 14:41:23', 'ddd', null);

-- ----------------------------
-- Table structure for notice_type
-- ----------------------------
DROP TABLE IF EXISTS `notice_type`;
CREATE TABLE `notice_type` (
  `notice_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`notice_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice_type
-- ----------------------------
INSERT INTO `notice_type` VALUES ('1', '物流问题');
INSERT INTO `notice_type` VALUES ('2', '信息变更');
INSERT INTO `notice_type` VALUES ('3', '新闻快讯');
INSERT INTO `notice_type` VALUES ('4', '公益公告');
INSERT INTO `notice_type` VALUES ('5', '使用规则');
INSERT INTO `notice_type` VALUES ('6', '特惠处理');
INSERT INTO `notice_type` VALUES ('7', '获奖名单');
INSERT INTO `notice_type` VALUES ('8', '优惠说明');
INSERT INTO `notice_type` VALUES ('9', '活动公告');

-- ----------------------------
-- Table structure for orderstate
-- ----------------------------
DROP TABLE IF EXISTS `orderstate`;
CREATE TABLE `orderstate` (
  `orderstate_id` int(11) NOT NULL AUTO_INCREMENT,
  `orderstate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orderstate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderstate
-- ----------------------------
INSERT INTO `orderstate` VALUES ('1', '正在路上');
INSERT INTO `orderstate` VALUES ('2', '正在派件');
INSERT INTO `orderstate` VALUES ('3', '快件到达');
INSERT INTO `orderstate` VALUES ('4', '等待揽收');
INSERT INTO `orderstate` VALUES ('5', '已揽收');
INSERT INTO `orderstate` VALUES ('6', '已取出');

-- ----------------------------
-- Table structure for payment_mode
-- ----------------------------
DROP TABLE IF EXISTS `payment_mode`;
CREATE TABLE `payment_mode` (
  `payment_mode_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_mode_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`payment_mode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of payment_mode
-- ----------------------------
INSERT INTO `payment_mode` VALUES ('1', '微信');
INSERT INTO `payment_mode` VALUES ('2', '支付宝');
INSERT INTO `payment_mode` VALUES ('3', '翼支付');
INSERT INTO `payment_mode` VALUES ('4', 'qq钱包');

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `reply_id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback_infor_id` int(11) DEFAULT NULL,
  `menber_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('1', '1', '100001', '安德森盛大的撒大实打撒旦撒');
INSERT INTO `reply` VALUES ('2', '2', '100010', '大撒大撒撒大实打实打实撒旦撒大实打发');
INSERT INTO `reply` VALUES ('3', '3', '100011', '购买国美网上商城全场自营家电商品后，在订单状态显示“妥投”之后，价保到2018年11月11日。拨打电话或邮');
INSERT INTO `reply` VALUES ('4', '4', '100012', '据中央气象台预警，22号台风“山竹”9月15日将登陆中国东南沿海区域，海南、广东、广西、福建部分地区将有暴雨或大暴雨，局地有特大暴雨； ');
INSERT INTO `reply` VALUES ('5', '5', '100002', '由于近期东北三省空调订单大量增加，导致安装时效可能出现一定的延迟。现我司已尽最大努力增派安装人员，如您的订单出现安装延误，烦');
INSERT INTO `reply` VALUES ('6', '6', '100004', '活动期间，每日前3500名翼支付绑卡用户，使用翼支付收银台消费满39元，享受随机立减最高39元优惠，同一用户每月只限一次优惠； ');

-- ----------------------------
-- Table structure for shoucang_dianpu
-- ----------------------------
DROP TABLE IF EXISTS `shoucang_dianpu`;
CREATE TABLE `shoucang_dianpu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dianpu_id` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoucang_dianpu
-- ----------------------------

-- ----------------------------
-- Table structure for shoucang_shangpin
-- ----------------------------
DROP TABLE IF EXISTS `shoucang_shangpin`;
CREATE TABLE `shoucang_shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commodity_id` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoucang_shangpin
-- ----------------------------
INSERT INTO `shoucang_shangpin` VALUES ('4', '4', '2019-11-15 23:54:12', '6');
INSERT INTO `shoucang_shangpin` VALUES ('5', '8', '2019-11-16 00:01:49', '6');
INSERT INTO `shoucang_shangpin` VALUES ('6', '2', '2019-11-18 18:30:12', '6');
INSERT INTO `shoucang_shangpin` VALUES ('10', '1', '2019-11-26 16:02:02', '14');
INSERT INTO `shoucang_shangpin` VALUES ('11', '1', '2019-11-26 16:07:58', '14');

-- ----------------------------
-- Table structure for shoufa
-- ----------------------------
DROP TABLE IF EXISTS `shoufa`;
CREATE TABLE `shoufa` (
  `commodity_id` int(11) NOT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`commodity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoufa
-- ----------------------------
INSERT INTO `shoufa` VALUES ('1', '2019-11-21 12:08:30');
INSERT INTO `shoufa` VALUES ('2', '2019-11-21 12:08:36');
INSERT INTO `shoufa` VALUES ('3', '2019-11-21 12:08:42');
INSERT INTO `shoufa` VALUES ('4', '2019-11-21 12:08:49');
INSERT INTO `shoufa` VALUES ('5', '2019-11-21 12:08:54');
INSERT INTO `shoufa` VALUES ('6', '2019-11-21 12:09:00');
INSERT INTO `shoufa` VALUES ('7', '2019-11-21 12:09:07');
INSERT INTO `shoufa` VALUES ('8', '2019-11-21 12:09:11');
INSERT INTO `shoufa` VALUES ('9', '2019-11-21 12:09:58');
INSERT INTO `shoufa` VALUES ('10', '2019-11-21 12:10:05');
INSERT INTO `shoufa` VALUES ('11', '2019-11-21 12:10:09');
INSERT INTO `shoufa` VALUES ('12', '2019-11-21 12:10:15');
INSERT INTO `shoufa` VALUES ('13', '2019-11-21 12:10:20');

-- ----------------------------
-- Table structure for sms_coupon
-- ----------------------------
DROP TABLE IF EXISTS `sms_coupon`;
CREATE TABLE `sms_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(11) DEFAULT NULL COMMENT '''优惠卷类型；0->全场赠券；1->会员赠券；2->购物赠券；3->注册赠券''',
  `name` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL COMMENT '金额',
  `per_limit` int(11) DEFAULT NULL COMMENT '''每人限领张数''',
  `min_point` double DEFAULT NULL COMMENT '''使用门槛；0表示无门槛''',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `use_type` varchar(11) DEFAULT NULL COMMENT '''使用类型：0->全场通用；1->指定分类；2->指定商品''',
  `note` varchar(255) DEFAULT NULL COMMENT '''备注''',
  `publish_count` int(11) DEFAULT NULL COMMENT '''发行数量''',
  `use_count` int(11) DEFAULT NULL,
  `receive_count` int(11) DEFAULT NULL COMMENT '''领取数量'',',
  `enable_time` datetime DEFAULT NULL COMMENT '''可以领取的日期'',',
  `code` varchar(255) DEFAULT NULL COMMENT '''优惠码'',',
  `menber_level` int(11) DEFAULT NULL COMMENT '''可领取的会员类型：0->无限制''',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sms_coupon
-- ----------------------------
INSERT INTO `sms_coupon` VALUES ('1', '全场赠卷', '满2000使用', '100', '1', '2000', '2019-11-11 15:52:13', '2019-11-28 15:52:17', '指定分类', '仅可购买Iphone手机指定型号', '200', '20', '54', '2019-11-13 15:53:24', '1000001', '0');
INSERT INTO `sms_coupon` VALUES ('2', '会员赠卷', '满1880使用', '150', '1', '1881', '2019-11-11 15:54:18', '2019-11-28 15:54:21', '全场通用', '可购买任意商品', '200', '50', '130', '2019-11-13 15:55:46', '1000002', '1');
INSERT INTO `sms_coupon` VALUES ('3', '购物赠卷', '满1700使用', '200', '1', '1700', '2019-11-11 15:56:37', '2019-11-27 15:56:42', '指定商品', '仅可购买vivo手机指定型号', '300', '5', '101', '2019-11-11 15:57:47', '1000003', '2');
INSERT INTO `sms_coupon` VALUES ('4', '注册赠卷', '满3600使用', '200', '1', '3600', '2019-11-01 15:58:39', '2019-11-30 15:58:44', '全场通用', '可购买任意商品', '100000', '10', '400', '2019-11-01 15:59:37', '1000004', '0');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '111', '111');
INSERT INTO `student` VALUES ('2', '222', '222');
INSERT INTO `student` VALUES ('3', '333', '333');

-- ----------------------------
-- Table structure for tb_addrbook
-- ----------------------------
DROP TABLE IF EXISTS `tb_addrbook`;
CREATE TABLE `tb_addrbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_addrbook
-- ----------------------------
INSERT INTO `tb_addrbook` VALUES ('1', '1', '1', '1', '1', '1', '1', null);
INSERT INTO `tb_addrbook` VALUES ('2', '2', '2', '2', '2', '2', '2', null);
INSERT INTO `tb_addrbook` VALUES ('3', '3', '3', '3', '3', '3', '3', null);
INSERT INTO `tb_addrbook` VALUES ('4', '4', '4', '4', '4', '4', '4', '4');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `userPhone` varchar(255) DEFAULT NULL,
  `userAddress` varchar(255) DEFAULT NULL,
  `userPassword` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `menber_id` int(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('6', '666', '666', '666', 'fae0b27c451c728867a567e8c1bb4e53', 'upload/201911152340201021010.png', '0', '1640085377');
INSERT INTO `user` VALUES ('7', '777', '777', '777', '202cb962ac59075b964b07152d234b70', 'upload/201911152340201021010.png', '0', '12254');
INSERT INTO `user` VALUES ('10', 'admin', '123', '123', '202cb962ac59075b964b07152d234b70', '', '0', '123');
INSERT INTO `user` VALUES ('14', '千与千寻', '1234567891011', '西南大学', 'e10adc3949ba59abbe56e057f20f883e', '', '0', '1640085377');
INSERT INTO `user` VALUES ('15', 'ddd', '123', '123', '202cb962ac59075b964b07152d234b70', '', '0', '123');
INSERT INTO `user` VALUES ('16', 'ddd', '444', '123', 'fcea920f7412b5da7be0cf42b8c93759', '', '0', '444');
INSERT INTO `user` VALUES ('17', 'aaa', '1234567891011', '123', '800c1d3b4eccdc74463b268170b5c401', '', '0', '1640085377');

-- ----------------------------
-- Table structure for xianshi
-- ----------------------------
DROP TABLE IF EXISTS `xianshi`;
CREATE TABLE `xianshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commodity_id` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xianshi
-- ----------------------------
