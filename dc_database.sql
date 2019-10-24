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

 Date: 23/10/2019 17:17:16
*/
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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dc_admin
-- ----------------------------
INSERT INTO `dc_admin` VALUES (3, 'woqunijia', '3d609500f8d2146cad8e1884ce219d9a', 1, 1571311080);

-- ----------------------------
-- Table structure for dc_banner
-- ----------------------------
DROP TABLE IF EXISTS `dc_banner`;
CREATE TABLE `dc_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `img` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL COMMENT '轮播图片地址',
  `url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '轮播图跳转地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dc_banner
-- ----------------------------
INSERT INTO `dc_banner` VALUES (1, '/upload/slider/15715531720972226.jpg', '');
INSERT INTO `dc_banner` VALUES (8, '/upload/slider/15715531846034431.jpg', NULL);

-- ----------------------------
-- Table structure for dc_cart
-- ----------------------------
DROP TABLE IF EXISTS `dc_cart`;
CREATE TABLE `dc_cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `zid` int(11) NULL DEFAULT NULL COMMENT '桌子号id',
  `sid` int(11) NULL DEFAULT NULL COMMENT '食物id',
  `count` int(11) NULL DEFAULT NULL COMMENT '食品的份数',
  `spname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '食品的名字',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '食品的图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dc_cart
-- ----------------------------
INSERT INTO `dc_cart` VALUES (9, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for dc_food
-- ----------------------------
DROP TABLE IF EXISTS `dc_food`;
CREATE TABLE `dc_food`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '食品表',
  `typeid` int(11) NULL DEFAULT NULL COMMENT '食品类型',
  `spname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '食品名称',
  `price` decimal(8, 2) NULL DEFAULT NULL COMMENT '食品价格',
  `count` int(11) NULL DEFAULT NULL COMMENT '视频销量',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '食品图片地址',
  `details` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '食品的介绍',
  `status` tinyint(255) NULL DEFAULT NULL COMMENT '食品上架和下架',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dc_food
-- ----------------------------
INSERT INTO `dc_food` VALUES (1, 1, '精品毛血旺', 59.00, 50, '/upload/../images/15715556163364633.jpg', '毛血旺以鸭血为制作主料，烹饪技巧以煮菜为主，口味属于麻辣味。起源于重庆，流行于重庆和西南地区，是一道著名的传统菜式。这道菜是将生血旺现烫现吃，且毛肚杂碎为主料，遂得名', 0);
INSERT INTO `dc_food` VALUES (2, 1, '京酱肉丝', 38.00, 50, '/images/cai/zhu_2.jpg', '京酱肉丝，是一道知名度很高的菜肴，它是北京菜中的经典代表菜之一。制作时选用猪瘦肉为主料，辅以甜面酱、葱、姜及其它调料，用北方特有烹调技法“六爆”之一的“酱爆”烹制而成。成菜后，咸甜适中，酱香浓郁，风味独特。', 0);
INSERT INTO `dc_food` VALUES (4, 1, '酸菜鱼', 48.00, 50, '/images/cai/zhu_4.jpg', '酸菜鱼也称为酸汤鱼，是一道源自重庆的经典菜品，以其特有的调味和独特的烹调技法而著称。流行于上世纪90年代，是重庆江湖菜的开路先锋之一。', 0);
INSERT INTO `dc_food` VALUES (9, 2, '青椒肉丝盖浇饭', 12.00, 50, '/images/shi_3.jpg', '青椒肉丝，是以青椒为主要食材的家常菜，属于川菜菜系。口味香辣，菜品色香味俱全，操作简单，营养价值丰富。', 0);
INSERT INTO `dc_food` VALUES (10, 2, '回锅肉盖浇饭', 10.00, 50, '/images/shi_4.jpg', '回锅肉是一种四川传统菜式中家常（味型）菜肴的代表菜肴之一，属于川菜系列。制作原料主要有猪后臀肉、青椒、蒜苗等，口味独特，色泽红亮，肥而不腻。', 0);
INSERT INTO `dc_food` VALUES (11, 2, '宫保鸡丁盖浇饭', 12.00, 50, '/images/shi_5.jpg', '宫保鸡丁是一道闻名中外的特色传统名菜。此道菜也被归纳为北京宫廷菜之后宫保鸡丁也流传到国外', 0);
INSERT INTO `dc_food` VALUES (12, 2, '小炒肉盖浇饭', 12.00, 50, '/images/shi_6.jpg', '小炒肉是湖南省一道常见的特色传统名菜，属于湘菜系。麻辣鲜香，口味滑嫩。制作原料主要是五花肉和青椒、红椒等。', 0);
INSERT INTO `dc_food` VALUES (13, 3, '江小白', 16.00, 50, '/images/jiu_1.jpg', '江小白是重庆江小白酒业有限公司旗下江记酒庄酿造生产的一种自然发酵并蒸馏的高粱酒品牌', 0);
INSERT INTO `dc_food` VALUES (14, 3, '老村长', 16.00, 50, '/images/jiu_2.jpg', '老村长酒产自中国东北黑龙江，为东北特色低档白酒中的优质品牌。酒质口感柔和，甘甜顺畅，饮后头不痛，口不干，有一种极为舒服的感觉，实属纯粮上乘佳品', 0);
INSERT INTO `dc_food` VALUES (15, 3, '可口可乐', 3.00, 50, '/images/jiu_3.jpg', '它每天为全球的人们带来怡神畅快的美妙感受', 0);
INSERT INTO `dc_food` VALUES (16, 3, '冰红茶', 3.00, 50, '/images/jiu_4.jpg', '精选上等红茶，加入柠檬酸制成精选优质绿茶，加入柠檬酸制成，冰冻后口感更佳', 0);
INSERT INTO `dc_food` VALUES (17, 3, '维他奶', 3.00, 50, '/images/jiu_5.jpg', '维他奶含有大量纤维素，能有效的阻止糖的过量吸收，减少糖分，因而能防止糖尿病，是糖尿病患者日常必不可少的好食品', 0);
INSERT INTO `dc_food` VALUES (18, 3, '雪碧', 3.00, 50, '/images/jiu_6.jpg', '它每天为全球的人们带来怡神畅快的美妙感受', 0);
INSERT INTO `dc_food` VALUES (19, 3, '草莓花瓣', 38.00, 50, '/images/sweet_1.jpg', '草莓花瓣是选择优质草莓,它富含多种人类身体所需的维生素,再加上玫瑰花瓣能让你美容养颜,焕发魅力光彩', 0);
INSERT INTO `dc_food` VALUES (20, 4, '红豆酥皮', 36.00, 50, '/images/sweet_2.jpg', '红豆酥是选择优质面粉深加工后，配备营养丰富的红豆陷，并运用专用的配料，加工而成，其松、香、酥、软、香醇诱人、细腻香软。是目前市场火爆的特色传统糕点小吃', 0);
INSERT INTO `dc_food` VALUES (21, 4, '燕麦冰淇淋', 28.00, 50, '/images/sweet_5.png', '粗狂的外表，柔软的夹馅。自己做的冰激凌配上及食燕麦，两种完全不同的口感夹杂在一起，一口下去，满满的咀嚼感和迎面而来的凉爽让人精神大震，营养、健康、低脂。。。强烈推荐的一款冷饮', 0);
INSERT INTO `dc_food` VALUES (22, 4, '草莓藕粉糕', 22.00, 50, '/images/sweet_6.png', 'Q弹粉嫩，健康好吃无添加', 0);
INSERT INTO `dc_food` VALUES (23, 4, '提拉米苏', 38.00, 50, '/images/sweet_3.png', '提拉米苏，英文是Tiramisu，是一种带咖啡酒味儿的意大利甜点。以马斯卡彭芝士作为主要材料，再以手指饼干取代传统甜点的海绵蛋糕，加入咖啡、可可粉等其他材料', 0);
INSERT INTO `dc_food` VALUES (24, 4, '肉松黄金角', 36.00, 50, '/images/sweet_4.png', '这款三明治热的时候吃和凉的时候吃会有两种口感——热的时候是酥的，凉的时候面包片内部的食物入口会获得一种近似于土豆泥的感觉', 0);
INSERT INTO `dc_food` VALUES (27, 4, '大盘鸡', 58.00, 0, '/images/15715550613364996.jpg', '大撒大撒大撒大撒大苏打', 0);

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
INSERT INTO `dc_type` VALUES (1, '小菜');
INSERT INTO `dc_type` VALUES (2, '主食');
INSERT INTO `dc_type` VALUES (3, '酒水');
INSERT INTO `dc_type` VALUES (4, '甜点');

SET FOREIGN_KEY_CHECKS = 1;
