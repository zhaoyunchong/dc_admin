/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : dc_database

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 16/10/2019 20:40:40
*/
DROP DATABASE IF EXISTS dc_database;
CREATE DATABASE dc_database;
USE dc_database; 


SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dc_admin
-- ----------------------------
DROP TABLE IF EXISTS `dc_admin`;
CREATE TABLE `dc_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL,
  `status` int(1) NULL DEFAULT NULL,
  `time` int(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dc_admin
-- ----------------------------
INSERT INTO `dc_admin` VALUES (1, 'admin', '123', NULL, NULL);

-- ----------------------------
-- Table structure for dc_cart
-- ----------------------------
DROP TABLE IF EXISTS `dc_cart`;
CREATE TABLE `dc_cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `zid` int(11) NULL DEFAULT NULL COMMENT '桌子号id',
  `sid` int(11) NULL DEFAULT NULL COMMENT '食物id',
  `count` int(11) NULL DEFAULT NULL COMMENT '食品的份数',
  `spname` varchar(50) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL COMMENT '食品的名字',
  `total` decimal(10, 2) NULL DEFAULT NULL COMMENT '总价格',
  `time` int(11) NULL DEFAULT NULL COMMENT '点餐的时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dc_cart
-- ----------------------------
INSERT INTO `dc_cart` VALUES (1, 8, 1, 3, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for dc_food
-- ----------------------------
DROP TABLE IF EXISTS `dc_food`;
CREATE TABLE `dc_food`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '食品表',
  `spname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '食品名称',
  `price` decimal(8, 2) NULL DEFAULT NULL COMMENT '食品价格',
  `count` int(11) NULL DEFAULT NULL COMMENT '视频销量',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '食品图片地址',
  `details` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '食品的介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dc_food
-- ----------------------------
INSERT INTO `dc_food` VALUES (1, '精品毛血旺', 58.00, 50, 'zhu_1.jpg', '毛血旺以鸭血为制作主料，烹饪技巧以煮菜为主，口味属于麻辣味。起源于重庆，流行于重庆和西南地区，是一道著名的传统菜式。这道菜是将生血旺现烫现吃，且毛肚杂碎为主料，遂得名');
INSERT INTO `dc_food` VALUES (2, '京酱肉丝', 38.00, 50, 'zhu_2.jpg', '京酱肉丝，是一道知名度很高的菜肴，它是北京菜中的经典代表菜之一。制作时选用猪瘦肉为主料，辅以甜面酱、葱、姜及其它调料，用北方特有烹调技法“六爆”之一的“酱爆”烹制而成。成菜后，咸甜适中，酱香浓郁，风味独特。');
INSERT INTO `dc_food` VALUES (3, '新疆大盘鸡', 58.00, 50, 'zhu_3.jpg', '新疆大盘鸡又名为沙湾大盘鸡，是新疆名菜，起源于20世纪80年代，主要用料为鸡块和土豆块、四川粉皮，配皮带面烹饪而成。 [1]  色彩鲜艳、爽滑麻辣的鸡肉和软糯甜润的土豆，辣中有香、粗中带细，是餐桌上的佳品');
INSERT INTO `dc_food` VALUES (4, '酸菜鱼', 48.00, 50, 'zhu_4.jpg', '酸菜鱼也称为酸汤鱼，是一道源自重庆的经典菜品，以其特有的调味和独特的烹调技法而著称。流行于上世纪90年代，是重庆江湖菜的开路先锋之一。');
INSERT INTO `dc_food` VALUES (5, '麻婆豆腐', 28.00, 50, 'zhu_5.jpg', '麻婆豆腐是四川省传统名菜之一，属于川菜。主要原料为配料和豆腐，材料主要有豆腐、牛肉末（也可以用猪肉）、辣椒和花椒等。麻来自花椒，辣来自辣椒，这道菜突出了川菜“麻辣”的特点。其口味独特，口感顺滑');
INSERT INTO `dc_food` VALUES (6, '水煮肉片', 58.00, 50, 'zhu_6.jpg', '水煮肉片是一道地方新创名菜，起源于自贡，发扬于西南，属于川菜中著名的。因肉片未经划油，以水煮熟故名水煮肉片');
INSERT INTO `dc_food` VALUES (7, '西红柿鸡蛋盖浇饭', 10.00, 50, 'shi_1.jpg', '西红柿鸡蛋盖饭是一道由鸡蛋，西红柿等食材制成的美食');
INSERT INTO `dc_food` VALUES (8, '肉沫茄子盖浇饭', 10.00, 50, 'shi_2.jpg', '肉末盖浇饭，是先将肉末与茄子煮熟后，倒置于大白饭上面，这种套饭一般多汁，倒置后，茄子的汁\r\n液会从白饭上渗透进去，进而使白饭也充满茄子的味道');
INSERT INTO `dc_food` VALUES (9, '青椒肉丝盖浇饭', 12.00, 50, 'shi_3.jpg', '青椒肉丝，是以青椒为主要食材的家常菜，属于川菜菜系。口味香辣，菜品色香味俱全，操作简单，营养价值丰富。');
INSERT INTO `dc_food` VALUES (10, '回锅肉盖浇饭', 10.00, 50, 'shi_4.jpg', '回锅肉是一种四川传统菜式中家常（味型）菜肴的代表菜肴之一，属于川菜系列。制作原料主要有猪后臀肉、青椒、蒜苗等，口味独特，色泽红亮，肥而不腻。');
INSERT INTO `dc_food` VALUES (11, '宫保鸡丁盖浇饭', 12.00, 50, 'shi_5.jpg', '宫保鸡丁是一道闻名中外的特色传统名菜。此道菜也被归纳为北京宫廷菜之后宫保鸡丁也流传到国外');
INSERT INTO `dc_food` VALUES (12, '小炒肉盖浇饭', 12.00, 50, 'shi_6.jpg', '小炒肉是湖南省一道常见的特色传统名菜，属于湘菜系。麻辣鲜香，口味滑嫩。制作原料主要是五花肉和青椒、红椒等。');
INSERT INTO `dc_food` VALUES (13, '江小白', 16.00, 50, 'jiu_1.jpg', '江小白是重庆江小白酒业有限公司旗下江记酒庄酿造生产的一种自然发酵并蒸馏的高粱酒品牌');
INSERT INTO `dc_food` VALUES (14, '老村长', 16.00, 50, 'jiu_2.jpg', '老村长酒产自中国东北黑龙江，为东北特色低档白酒中的优质品牌。酒质口感柔和，甘甜顺畅，饮后头不痛，口不干，有一种极为舒服的感觉，实属纯粮上乘佳品');
INSERT INTO `dc_food` VALUES (15, '可口可乐', 3.00, 50, 'jiu_3.jpg', '它每天为全球的人们带来怡神畅快的美妙感受');
INSERT INTO `dc_food` VALUES (16, '冰红茶', 3.00, 50, 'jiu_4.jpg', '精选上等红茶，加入柠檬酸制成精选优质绿茶，加入柠檬酸制成，冰冻后口感更佳');
INSERT INTO `dc_food` VALUES (17, '维他奶', 3.00, 50, 'jiu_5.jpg', '维他奶含有大量纤维素，能有效的阻止糖的过量吸收，减少糖分，因而能防止糖尿病，是糖尿病患者日常必不可少的好食品');
INSERT INTO `dc_food` VALUES (18, '雪碧', 3.00, 50, 'jiu_6.jpg', '它每天为全球的人们带来怡神畅快的美妙感受');
INSERT INTO `dc_food` VALUES (19, '草莓花瓣', 38.00, 50, 'sweet_1.jpg', '草莓花瓣是选择优质草莓,它富含多种人类身体所需的维生素,再加上玫瑰花瓣能让你美容养颜,焕发魅力光彩');
INSERT INTO `dc_food` VALUES (20, '红豆酥皮', 36.00, 50, 'sweet_2.jpg', '红豆酥是选择优质面粉深加工后，配备营养丰富的红豆陷，并运用专用的配料，加工而成，其松、香、酥、软、香醇诱人、细腻香软。是目前市场火爆的特色传统糕点小吃');
INSERT INTO `dc_food` VALUES (21, '燕麦冰淇淋', 28.00, 50, 'sweet_5.png', '粗狂的外表，柔软的夹馅。自己做的冰激凌配上及食燕麦，两种完全不同的口感夹杂在一起，一口下去，满满的咀嚼感和迎面而来的凉爽让人精神大震，营养、健康、低脂。。。强烈推荐的一款冷饮');
INSERT INTO `dc_food` VALUES (22, '草莓藕粉糕', 22.00, 50, 'sweet_6.png', 'Q弹粉嫩，健康好吃无添加');
INSERT INTO `dc_food` VALUES (23, '提拉米苏', 38.00, 50, 'sweet_3.png', '提拉米苏，英文是Tiramisu，是一种带咖啡酒味儿的意大利甜点。以马斯卡彭芝士作为主要材料，再以手指饼干取代传统甜点的海绵蛋糕，加入咖啡、可可粉等其他材料');
INSERT INTO `dc_food` VALUES (24, '肉松黄金角', 36.00, 50, 'sweet_4.png', '这款三明治热的时候吃和凉的时候吃会有两种口感——热的时候是酥的，凉的时候面包片内部的食物入口会获得一种近似于土豆泥的感觉');

-- ----------------------------
-- Table structure for dc_lunbo
-- ----------------------------
DROP TABLE IF EXISTS `dc_lunbo`;
CREATE TABLE `dc_lunbo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `img` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL COMMENT '轮播图片地址',
  `url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '轮播图跳转地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dc_lunbo
-- ----------------------------
INSERT INTO `dc_lunbo` VALUES (1, NULL, NULL);
INSERT INTO `dc_lunbo` VALUES (2, NULL, NULL);
INSERT INTO `dc_lunbo` VALUES (3, NULL, NULL);
INSERT INTO `dc_lunbo` VALUES (4, NULL, NULL);
INSERT INTO `dc_lunbo` VALUES (5, NULL, NULL);
INSERT INTO `dc_lunbo` VALUES (6, NULL, NULL);

-- ----------------------------
-- Table structure for dc_order
-- ----------------------------
DROP TABLE IF EXISTS `dc_order`;
CREATE TABLE `dc_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `zid` int(11) NULL DEFAULT NULL COMMENT '桌子号id',
  `sid` int(11) NULL DEFAULT NULL COMMENT '食物id',
  `count` int(11) NULL DEFAULT NULL COMMENT '食品的份数',
  `spname` varchar(50) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL COMMENT '食品的名字',
  `total` decimal(10, 2) NULL DEFAULT NULL COMMENT '总价格',
  `time` int(11) NULL DEFAULT NULL COMMENT '点餐的时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dc_type
-- ----------------------------
DROP TABLE IF EXISTS `dc_type`;
CREATE TABLE `dc_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '食品分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dc_type
-- ----------------------------
INSERT INTO `dc_type` VALUES (1, '主食');
INSERT INTO `dc_type` VALUES (2, '酒水');
INSERT INTO `dc_type` VALUES (3, '小菜');
INSERT INTO `dc_type` VALUES (4, '甜点');

SET FOREIGN_KEY_CHECKS = 1;
