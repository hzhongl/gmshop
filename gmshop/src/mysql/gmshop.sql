/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : gmshop

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-02-16 10:46:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `items`
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL,
  `createtime` date DEFAULT NULL,
  `detail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', 'computer', '1000', '20181210023621636.jpg', '2018-03-05', 'adsfasfd');
INSERT INTO `items` VALUES ('2', 'mobile', '4500', '0.jpg', '2018-08-08', 'ggggg');
INSERT INTO `items` VALUES ('3', 'book', '230', '1-1Q01000552UB.jpg', '2018-03-05', 'adsfasfd');
INSERT INTO `items` VALUES ('4', '康师傅', '9', '20181210023622763.jpg', '2018-06-11', 'good');
INSERT INTO `items` VALUES ('5', 'iphone', '4500', 'aaa.jpg', '2018-03-08', 'adsfasfd');
INSERT INTO `items` VALUES ('7', '小米电视', '5000', 'ddd.jpg', '2018-03-08', 'adsfasfd');
INSERT INTO `items` VALUES ('10', '中兴手机', '2300', 'ccc.jpg', '2018-03-08', 'adsfasfd');
INSERT INTO `items` VALUES ('24', '联想电脑', '5000', '61Z58PICgN6.jpg', '2018-09-09', 'sda');
INSERT INTO `items` VALUES ('26', 'Java考试A卷', '123', 'leaveBill.png', '2017-10-01', 'ssss');
INSERT INTO `items` VALUES ('27', '联想电脑333', '5000', 's156.jpg', '2018-09-09', 'ssss');
INSERT INTO `items` VALUES ('28', '联想电脑9999', '5000', '61Z58PICgN6.jpg', '2018-09-09', 'eee');
INSERT INTO `items` VALUES ('29', '联想电脑1000', '5000', 'ad20.jpg', '2018-09-09', 'ssss');
INSERT INTO `items` VALUES ('30', '联想电脑222', '5000', 'tw197.jpg', '2018-09-09', 'dddd');
INSERT INTO `items` VALUES ('31', '联想电脑444', '5000', 's156.jpg', '2018-09-09', 'ssss');
INSERT INTO `items` VALUES ('32', '联想电脑777', '5000', 'g693.jpg', '2018-09-09', 'sss');
INSERT INTO `items` VALUES ('33', '联想电脑55', '5000', 's156.jpg', '2018-09-09', 'sss');
INSERT INTO `items` VALUES ('34', '联想电脑2323', '5000', 'g693.jpg', '2018-09-09', 'sss');
INSERT INTO `items` VALUES ('35', '联想电脑33333', '5000', 'tw197.jpg', '2018-09-09', 'sss');
INSERT INTO `items` VALUES ('37', '测试商品0088', '123', 's156.jpg', '2017-10-01', 'ddsds');
INSERT INTO `items` VALUES ('38', 'computer0888', '110000', '61Z58PICgN6.jpg', '2017-10-01', 'sss');
INSERT INTO `items` VALUES ('39', 'Java考试A卷333', '123', 'ad20.jpg', '2017-10-01', 'ss');
INSERT INTO `items` VALUES ('40', '联想电脑111111', '5000', '61Z58PICgN6.jpg', '2018-09-09', 'sssss');
INSERT INTO `items` VALUES ('41', '联想电脑111111', '5000', '61Z58PICgN6.jpg', '2018-09-09', 'sssss');
INSERT INTO `items` VALUES ('42', '测试商品998877', '111', 'ad20.jpg', '2018-09-09', 'sss');
INSERT INTO `items` VALUES ('43', '电热毯', '150', null, '2018-05-15', '阿迪达斯');
INSERT INTO `items` VALUES ('44', '电热毯', '150', '微信图片_20190115133236.jpg', '2018-05-15', '阿迪达斯');
INSERT INTO `items` VALUES ('45', '电热毯', '150', 'timg.jpg', '2018-05-15', '阿迪达斯');

-- ----------------------------
-- Table structure for `tbl_category`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE `tbl_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cid_idx` (`parent_id`),
  CONSTRAINT `fk_cid` FOREIGN KEY (`parent_id`) REFERENCES `tbl_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_category
-- ----------------------------
INSERT INTO `tbl_category` VALUES ('1', '家用电器111', null);
INSERT INTO `tbl_category` VALUES ('2', '大家电', '1');
INSERT INTO `tbl_category` VALUES ('3', '洗衣机', '1');
INSERT INTO `tbl_category` VALUES ('4', '平板电视', '1');
INSERT INTO `tbl_category` VALUES ('5', '电热水器', '1');
INSERT INTO `tbl_category` VALUES ('6', '家庭音响', '1');
INSERT INTO `tbl_category` VALUES ('7', '热水器', '1');
INSERT INTO `tbl_category` VALUES ('8', '空调冰箱', '1');
INSERT INTO `tbl_category` VALUES ('9', '冷柜', '1');
INSERT INTO `tbl_category` VALUES ('10', 'DVD', '1');
INSERT INTO `tbl_category` VALUES ('11', '电视附件', '1');
INSERT INTO `tbl_category` VALUES ('12', '电燃气', '1');
INSERT INTO `tbl_category` VALUES ('13', '家电下乡', '1');
INSERT INTO `tbl_category` VALUES ('14', '家电服务', '1');
INSERT INTO `tbl_category` VALUES ('15', '电饭煲', '1');
INSERT INTO `tbl_category` VALUES ('16', '摄像机', '1');
INSERT INTO `tbl_category` VALUES ('17', '书籍444', null);
INSERT INTO `tbl_category` VALUES ('18', '小说', '17');
INSERT INTO `tbl_category` VALUES ('19', '传记', '17');
INSERT INTO `tbl_category` VALUES ('21', '投资理财', '17');
INSERT INTO `tbl_category` VALUES ('22', '经济', '17');
INSERT INTO `tbl_category` VALUES ('23', '儿童文学', '17');
INSERT INTO `tbl_category` VALUES ('24', '儿童绘本', '17');
INSERT INTO `tbl_category` VALUES ('25', '家庭教育', '17');
INSERT INTO `tbl_category` VALUES ('26', '科普百科', '17');
INSERT INTO `tbl_category` VALUES ('27', '哲学', '17');
INSERT INTO `tbl_category` VALUES ('28', '历史', '17');
INSERT INTO `tbl_category` VALUES ('29', '文化', '17');
INSERT INTO `tbl_category` VALUES ('30', '国学', '17');
INSERT INTO `tbl_category` VALUES ('31', '军事', '17');
INSERT INTO `tbl_category` VALUES ('32', '社会科学', '17');
INSERT INTO `tbl_category` VALUES ('33', '手机数码333', null);
INSERT INTO `tbl_category` VALUES ('34', 'iPhone', '33');
INSERT INTO `tbl_category` VALUES ('35', '三星', '33');
INSERT INTO `tbl_category` VALUES ('36', '诺基亚', '33');
INSERT INTO `tbl_category` VALUES ('37', 'HTC', '33');
INSERT INTO `tbl_category` VALUES ('38', '小米', '33');
INSERT INTO `tbl_category` VALUES ('39', '摩托罗拉', '33');
INSERT INTO `tbl_category` VALUES ('40', '索尼', '33');
INSERT INTO `tbl_category` VALUES ('41', '华为', '33');
INSERT INTO `tbl_category` VALUES ('42', '联想', '33');
INSERT INTO `tbl_category` VALUES ('43', '安卓', '33');
INSERT INTO `tbl_category` VALUES ('45', '充电器', '33');
INSERT INTO `tbl_category` VALUES ('46', '存储卡', '33');
INSERT INTO `tbl_category` VALUES ('47', '耳机', '33');
INSERT INTO `tbl_category` VALUES ('48', '移动电源', '33');
INSERT INTO `tbl_category` VALUES ('49', '保护壳', '33');
INSERT INTO `tbl_category` VALUES ('50', '户外休闲', null);
INSERT INTO `tbl_category` VALUES ('51', '自行车', '50');
INSERT INTO `tbl_category` VALUES ('52', '背包/袋', '50');
INSERT INTO `tbl_category` VALUES ('53', '刀具', '50');
INSERT INTO `tbl_category` VALUES ('54', '望远镜', '50');
INSERT INTO `tbl_category` VALUES ('55', '户外服饰', '50');
INSERT INTO `tbl_category` VALUES ('57', '灯具', '50');
INSERT INTO `tbl_category` VALUES ('58', '帐篷', '50');
INSERT INTO `tbl_category` VALUES ('59', '睡袋', '50');
INSERT INTO `tbl_category` VALUES ('60', '防潮垫', '50');
INSERT INTO `tbl_category` VALUES ('61', '折叠床/椅', '50');
INSERT INTO `tbl_category` VALUES ('62', '充气地垫', '50');
INSERT INTO `tbl_category` VALUES ('63', '野餐用品', '50');
INSERT INTO `tbl_category` VALUES ('64', '滑雪装备', '50');
INSERT INTO `tbl_category` VALUES ('65', '手杖', '50');
INSERT INTO `tbl_category` VALUES ('66', '指南针', '50');
INSERT INTO `tbl_category` VALUES ('67', '管理学', '17');
INSERT INTO `tbl_category` VALUES ('68', '洗衣机', null);

-- ----------------------------
-- Table structure for `tbl_image`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_image`;
CREATE TABLE `tbl_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pmid_idx` (`product_id`),
  CONSTRAINT `fk_pimid` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_image
-- ----------------------------
INSERT INTO `tbl_image` VALUES ('1', '1', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('2', '1', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('3', '2', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('4', '2', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('5', '2', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('6', '2', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('7', '3', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('8', '3', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('9', '3', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('10', '3', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('11', '4', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('12', '4', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('13', '4', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('14', '4', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('15', '5', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('16', '5', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('17', '5', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('18', '5', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('19', '6', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('20', '7', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('21', '8', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('22', '8', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('23', '8', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('24', '8', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('25', '9', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('26', '9', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('27', '9', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('28', '10', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('29', '10', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('30', '10', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('31', '10', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('32', '10', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('44', '12', 'ac4ceed3-33e8-426f-b754-bda5456a33af.jpg');
INSERT INTO `tbl_image` VALUES ('45', '12', '44546992-0aa5-4c0f-b43c-d093d5ea752f.jpg');
INSERT INTO `tbl_image` VALUES ('46', '12', '215d1559-466a-4054-837c-899ebdbdadd6.jpg');
INSERT INTO `tbl_image` VALUES ('47', '12', '53aa77ce-7e9e-4ee9-a737-e368ad5b4ff2.jpg');
INSERT INTO `tbl_image` VALUES ('48', '12', 'd04bb8fb-b8a7-4a01-a7f6-92297033731a.jpg');
INSERT INTO `tbl_image` VALUES ('49', '13', '33df9f92-720f-4d9f-a130-5e0eb0c5590a.jpg');
INSERT INTO `tbl_image` VALUES ('50', '14', '0d2a02b1-0480-4cde-8d5c-890eced30dc5.jpg');
INSERT INTO `tbl_image` VALUES ('51', '14', 'c3f221b9-8c92-430e-a0a1-d0cd4f97fcbf.jpg');
INSERT INTO `tbl_image` VALUES ('52', '15', 'e8aae777-ea5e-4910-b19f-95754edf0979.jpg');
INSERT INTO `tbl_image` VALUES ('53', '15', 'e5f1771e-428f-48c9-b8fd-0d402d21c4d5.jpg');
INSERT INTO `tbl_image` VALUES ('54', '15', 'e1ae1932-3c00-44ef-815d-558b22626962.jpg');
INSERT INTO `tbl_image` VALUES ('55', '15', '726004e6-efeb-4046-a15d-9b065a522825.jpg');
INSERT INTO `tbl_image` VALUES ('56', '15', '245258be-3b27-4593-b128-06c1aabc09ca.jpg');
INSERT INTO `tbl_image` VALUES ('57', '16', 'c036129b-0a3b-488d-8619-4d84d535dd06.jpg');
INSERT INTO `tbl_image` VALUES ('58', '16', '2593e231-1edd-4829-89e3-f12205188ea7.jpg');
INSERT INTO `tbl_image` VALUES ('59', '16', 'bff8309e-4ea1-4857-9039-35b82986661f.jpg');
INSERT INTO `tbl_image` VALUES ('60', '16', 'c2d6c1e8-ddb9-4017-a8a9-e0f985e1f20f.jpg');
INSERT INTO `tbl_image` VALUES ('61', '16', '505a9c3a-9240-40b0-8854-1bbe0467a1b5.jpg');
INSERT INTO `tbl_image` VALUES ('62', '17', '725e99c0-e1f2-4dca-8fb6-b51bf4e9e330.jpg');
INSERT INTO `tbl_image` VALUES ('63', '17', 'df9a8a04-59fa-40c8-be6a-dcfedfa29d0d.jpg');
INSERT INTO `tbl_image` VALUES ('64', '17', '4f2b5c48-fed6-4b23-a611-f72246c92eee.jpg');
INSERT INTO `tbl_image` VALUES ('65', '17', 'a3db721e-2053-4fa7-8f80-9b9536866ff5.jpg');
INSERT INTO `tbl_image` VALUES ('66', '17', 'd6d86968-438b-4df6-8d93-54020f973468.jpg');
INSERT INTO `tbl_image` VALUES ('67', '19', '62efa63b-477e-4712-a4a8-21043d5ce6dd.jpg');
INSERT INTO `tbl_image` VALUES ('68', '19', '6ea115c6-1132-449b-a32d-dba9cf3f5822.jpg');
INSERT INTO `tbl_image` VALUES ('69', '19', '9ed946af-a762-4c79-9e55-7ddf76fa714f.jpg');
INSERT INTO `tbl_image` VALUES ('70', '19', '945cfc43-cd08-4686-a1f4-7f305f8c5aa6.jpg');
INSERT INTO `tbl_image` VALUES ('71', '19', '7e33c91b-adbe-4c76-abca-24c21e1a1da3.jpg');

-- ----------------------------
-- Table structure for `tbl_order`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE `tbl_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKECC4638D5E71CEFC` (`user_id`),
  CONSTRAINT `FKECC4638D5E71CEFC` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_order
-- ----------------------------
INSERT INTO `tbl_order` VALUES ('1', 'ffsdf', '4324234', '1');
INSERT INTO `tbl_order` VALUES ('2', 'ffssdsew', '53454535', '1');
INSERT INTO `tbl_order` VALUES ('3', 'vxcvx', 'vcxv', '2');

-- ----------------------------
-- Table structure for `tbl_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order_detail`;
CREATE TABLE `tbl_order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `buy_num` int(11) NOT NULL,
  `price` float NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8BF609438A19F6F8` (`product_id`),
  KEY `fk_oid_idx` (`order_id`),
  CONSTRAINT `fk_oid` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkpid` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_product`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE `tbl_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float DEFAULT NULL,
  `freight` float DEFAULT NULL,
  `expire_time` datetime DEFAULT NULL,
  `sell_num` int(11) DEFAULT NULL,
  `stock_num` int(11) DEFAULT NULL,
  `sell_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view_num` int(11) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cid_idx` (`category_id`),
  CONSTRAINT `fk_pcid` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_product
-- ----------------------------
INSERT INTO `tbl_product` VALUES ('1', 'Muztaga 慕士塔格 秋冬女式MG76009W锦绣女式抓绒内胆两件套 ', '1200', '12', '2013-12-12 00:00:00', '0', '100', '广东', '0', '55');
INSERT INTO `tbl_product` VALUES ('2', '小辣椒手机M2(白色) ', '1099', '90', '2013-12-12 00:00:00', '0', '100', '深圳', '1', '35');
INSERT INTO `tbl_product` VALUES ('3', '西门子冰箱BCD-610W(KA62NV02TI) ', '8888', '88', '2013-12-12 00:00:00', '0', '988', '东莞', '6', '2');
INSERT INTO `tbl_product` VALUES ('4', '奥马冰箱BCD-176UB ', '2000', '88', '2013-12-13 00:00:00', '0', '90', '东莞', '0', '2');
INSERT INTO `tbl_product` VALUES ('5', '海信彩电LED32K30JD ', '1000', '90', '2013-12-13 00:00:00', '0', '100', '广州', '4', '2');
INSERT INTO `tbl_product` VALUES ('6', '年任汝芬教授考研政治序列之一要点精编', '30', '1', '2014-01-01 00:00:00', '0', '100', '广东', '0', '2');
INSERT INTO `tbl_product` VALUES ('7', '考研英语美文诵读宝典60+30(晨读)(2014考研英语)', '20', '0', '2014-01-01 00:00:00', '0', '200', '广州', '0', '23');
INSERT INTO `tbl_product` VALUES ('8', '361°女休闲鞋581316710白/浅红37 ', '200', '10', '2014-01-01 00:00:00', '0', '150', '深圳', '0', '64');
INSERT INTO `tbl_product` VALUES ('9', '酷博睿平板电视挂架CJ-440A ', '300', '10', '2014-10-10 00:00:00', '0', '100', '东莞', '0', '11');
INSERT INTO `tbl_product` VALUES ('10', ' 爱美家电视万能遥控器URC30B-SN ', '30', '0', '2014-10-10 00:00:00', '0', '100', '东莞', '0', '11');
INSERT INTO `tbl_product` VALUES ('12', 'sda', '1662', '23260', '2014-12-14 00:00:00', null, '12', '广东', null, '1');
INSERT INTO `tbl_product` VALUES ('13', '电热毯', '150', '10', '2018-12-15 00:00:00', null, '12', '广东', null, '1');
INSERT INTO `tbl_product` VALUES ('14', '电热毯', '150', '10', '2018-12-15 00:00:00', null, '12', '广东', null, '1');
INSERT INTO `tbl_product` VALUES ('15', '电热毯', '150', '10', '2018-12-15 00:00:00', null, '12', '广东', null, '1');
INSERT INTO `tbl_product` VALUES ('16', '电热毯', '150', '10', '2018-12-15 00:00:00', null, '12', '广东', null, '2');
INSERT INTO `tbl_product` VALUES ('17', '电热毯', '150', '10', '2018-12-15 00:00:00', null, '12', '广东', null, '2');
INSERT INTO `tbl_product` VALUES ('19', '电热毯', '150', '10', '2018-12-15 00:00:00', null, '12', '广东', null, '1');

-- ----------------------------
-- Table structure for `tbl_shopcar`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_shopcar`;
CREATE TABLE `tbl_shopcar` (
  `sid` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `fk_p_id_idx` (`product_id`),
  KEY `fk_uid_idx` (`user_id`),
  CONSTRAINT `fk_p_id` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_uid` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_shopcar
-- ----------------------------
INSERT INTO `tbl_shopcar` VALUES ('1', '1', '1');
INSERT INTO `tbl_shopcar` VALUES ('2', '5', '5');
INSERT INTO `tbl_shopcar` VALUES ('6', '17', '1');
INSERT INTO `tbl_shopcar` VALUES ('8', '12', null);

-- ----------------------------
-- Table structure for `tbl_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `my_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `login_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `born_day` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', 'tom', 'tom', '$s0$41010$V2uFdZ2lozfr2WMDGUCPZQ==$0fDhLnaJ0s0vdRe3lPT2gPGbhBQNCjhkyTdB46xFZjI=', 'xxxx@xx.com', '男', '/abc.jpg', '2013-10-16');
INSERT INTO `tbl_user` VALUES ('2', 'lisi', 'cat', '$s0$41010$V2uFdZ2lozfr2WMDGUCPZQ==$0fDhLnaJ0s0vdRe3lPT2gPGbhBQNCjhkyTdB46xFZjI=', 'xxxx@xx.com', '男', '/abc.jpg', '2013-10-16');
INSERT INTO `tbl_user` VALUES ('5', '李四', 'lisi', '$s0$41010$V2uFdZ2lozfr2WMDGUCPZQ==$0fDhLnaJ0s0vdRe3lPT2gPGbhBQNCjhkyTdB46xFZjI=', 'adssdf@qq.com', '女', '3.jpg', '0001-07-27');
INSERT INTO `tbl_user` VALUES ('6', '黄噗', 'hp', '$s0$41010$V2uFdZ2lozfr2WMDGUCPZQ==$0fDhLnaJ0s0vdRe3lPT2gPGbhBQNCjhkyTdB46xFZjI=', 'adssdf@qq.com', '女', '4.jpg', '0001-10-23');
INSERT INTO `tbl_user` VALUES ('9', '黄文凯', 'wwk', '$s0$41010$V2uFdZ2lozfr2WMDGUCPZQ==$0fDhLnaJ0s0vdRe3lPT2gPGbhBQNCjhkyTdB46xFZjI=', 'sdsdf@qq.com', '女', 'm2.jpg', '2019-09-12');
INSERT INTO `tbl_user` VALUES ('10', '毛瑞', 'mr', '$s0$41010$V2uFdZ2lozfr2WMDGUCPZQ==$0fDhLnaJ0s0vdRe3lPT2gPGbhBQNCjhkyTdB46xFZjI=', 'sdsdf@qq.com', '男', '3.jpg', '2018-05-15');
INSERT INTO `tbl_user` VALUES ('12', '赵一', 'pop', '$s0$41010$V2uFdZ2lozfr2WMDGUCPZQ==$0fDhLnaJ0s0vdRe3lPT2gPGbhBQNCjhkyTdB46xFZjI=', 'adsad@515', '男', '68fe7616-55dc-42b6-a2c6-14944870886b.jpg', '2018-08-20');
INSERT INTO `tbl_user` VALUES ('13', '钱二', 'pom', '$s0$41010$V2uFdZ2lozfr2WMDGUCPZQ==$0fDhLnaJ0s0vdRe3lPT2gPGbhBQNCjhkyTdB46xFZjI=', 'adad@126', '男', 'ad636c10-20e9-495b-9332-74fb2df0eee0.jpg', '2018-07-15');
INSERT INTO `tbl_user` VALUES ('14', '小康', 'xiaokan', '$s0$41010$V2uFdZ2lozfr2WMDGUCPZQ==$0fDhLnaJ0s0vdRe3lPT2gPGbhBQNCjhkyTdB46xFZjI=', '1327415207@qq.com', '男', '0f8e6bb2-804c-4a87-9209-83f139e6047a.jpg', '2018-10-12');
INSERT INTO `tbl_user` VALUES ('15', '小明', 'xiaoming', '$s0$41010$V2uFdZ2lozfr2WMDGUCPZQ==$0fDhLnaJ0s0vdRe3lPT2gPGbhBQNCjhkyTdB46xFZjI=', 'sda', '男', 'd479bd87-e4c0-4547-a6fe-33f6d23a5f42.jpg', '2019-05-12');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '赵一');
