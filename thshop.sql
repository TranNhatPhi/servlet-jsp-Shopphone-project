/*
 Navicat Premium Data Transfer

 Source Server         : hao
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : thshop

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 14/12/2022 07:13:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'iphone');
INSERT INTO `category` VALUES (2, 'ipad');
INSERT INTO `category` VALUES (3, 'macbook');

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image`  (
  `image_id` int NOT NULL AUTO_INCREMENT,
  `image_big` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image_small` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`image_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES (1, 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/10/5/638005792458698545_xiaomi-redmi-10-dd-bh.jpg', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/10/5/638005792458698545_xiaomi-redmi-10-dd-bh.jpg');
INSERT INTO `image` VALUES (2, 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2020/10/26/637393169370871358_ip-11-dd.png', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2020/10/26/637393169370871358_ip-11-dd.png');
INSERT INTO `image` VALUES (3, 'https://bizweb.sapocdn.net/thumb/large/100/453/419/products/600x600-14pro-max-xam-600x600-3-81252449-25ff-4c72-8a20-1f8051459e82.png?v=1663409593000', 'https://bizweb.sapocdn.net/thumb/large/100/453/419/products/600x600-14pro-max-xam-600x600-3-81252449-25ff-4c72-8a20-1f8051459e82.png?v=1663409593000');
INSERT INTO `image` VALUES (6, 'https://product.hstatic.net/1000169499/product/untitled-1_666792a93a474ce8a7c64f5a9d73dfa5_large.jpg', 'https://product.hstatic.net/1000169499/product/untitled-1_666792a93a474ce8a7c64f5a9d73dfa5_large.jpg');
INSERT INTO `image` VALUES (4, 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/10/7/638007285202545738_iphone-14-pro-max-dd-bh.jpg', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/10/7/638007285202545738_iphone-14-pro-max-dd-bh.jpg');
INSERT INTO `image` VALUES (5, 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/8/5/637952895644732120_oppo-reno8-4g-dd.jpg', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/8/5/637952895644732120_oppo-reno8-4g-dd.jpg');
INSERT INTO `image` VALUES (11, 'https://product.hstatic.net/200000348419/product/macbook_pro_16_inch_m1_2021_gray_0_7e0f9f925ab647bcb79f3bcccfb33796_large.png', 'https://product.hstatic.net/200000348419/product/macbook_pro_16_inch_m1_2021_gray_0_7e0f9f925ab647bcb79f3bcccfb33796_large.png');
INSERT INTO `image` VALUES (12, 'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/8/2/637950740313797526_asus-tuf-gaming-fa506ihr-den-dd.jpg', 'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/8/2/637950740313797526_asus-tuf-gaming-fa506ihr-den-dd.jpg');
INSERT INTO `image` VALUES (13, 'https://product.hstatic.net/1000333506/product/61325_apple_macbook_pro_14_4_d70669b226f74ed7a2848910917d0080_large.jpg', 'https://product.hstatic.net/1000333506/product/61325_apple_macbook_pro_14_4_d70669b226f74ed7a2848910917d0080_large.jpg');
INSERT INTO `image` VALUES (14, 'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/11/21/638046447294275297_msi-gaming-katana-gf66-dd-bh-moi.jpg', 'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/11/21/638046447294275297_msi-gaming-katana-gf66-dd-bh-moi.jpg');
INSERT INTO `image` VALUES (15, 'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/10/6/638006467071200088_gigabyte-gaming-g5-dd-bh.jpg', 'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/10/6/638006467071200088_gigabyte-gaming-g5-dd-bh.jpg');
INSERT INTO `image` VALUES (7, 'https://cdn1.viettelstore.vn/images/Product/ProductImage/medium/iPad-New-2021-WF-sil-1.jpg', 'https://cdn1.viettelstore.vn/images/Product/ProductImage/medium/iPad-New-2021-WF-sil-1.jpg');
INSERT INTO `image` VALUES (8, 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/10/6/638006465857672321_coolpad-tab-tasker-10-dd-docquyen-bh.jpg', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/10/6/638006465857672321_coolpad-tab-tasker-10-dd-docquyen-bh.jpg');
INSERT INTO `image` VALUES (9, 'https://product.hstatic.net/200000148393/product/apple_ipad_air_xanh_a645335ed9ad4940af0cb30a5f767fb3.png', 'https://product.hstatic.net/200000148393/product/apple_ipad_air_xanh_a645335ed9ad4940af0cb30a5f767fb3.png');
INSERT INTO `image` VALUES (10, 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/9/22/637994581190835400_may-tinh-bang-masstel-tab-10-wifi-dd-docquyen.jpg', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/9/22/637994581190835400_may-tinh-bang-masstel-tab-10-wifi-dd-docquyen.jpg');

-- ----------------------------
-- Table structure for information
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information`  (
  `info_id` int NOT NULL AUTO_INCREMENT,
  `camera` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `camera_selfie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cell` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cpu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gpu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `memory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `os` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `screen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sim` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of information
-- ----------------------------
INSERT INTO `information` VALUES (1, 'Chính: khẩu độ ƒ / 1,78, Chụp xa: khẩu độ ƒ / 2.8, Hệ thống camera chuyên nghiệp (48MP chính, 12MP siêu rộng và 12MP tele), Siêu rộng: khẩu độ ƒ / 2.2', '12MP, khẩu độ ƒ / 1.9', 'Phát video lên tới 29 giờ (theo Apple)', 'Chip A16 Bionic,CPU 6 nhân, GPU 5 lõi, 16-core Neural Engine', 'A16 Bionic', '128GB', 'IOS', '6GB', '6.7″Super Retina XDR display', 'yes');
INSERT INTO `information` VALUES (2, 'Chính: khẩu độ ƒ / 1,78, Chụp xa: khẩu độ ƒ / 2.8, Hệ thống camera chuyên nghiệp (48MP chính, 12MP siêu rộng và 12MP tele), Siêu rộng: khẩu độ ƒ / 2.2', '12MP, khẩu độ ƒ / 1.9', 'Phát video lên tới 29 giờ (theo Apple)', 'Chip A16 Bionic,CPU 6 nhân, GPU 5 lõi, 16-core Neural Engine', 'A16 Bionic', '128GB', 'IOS', '6GB', '6.7″Super Retina XDR display', 'yes');
INSERT INTO `information` VALUES (3, 'Chính: khẩu độ ƒ / 1,78, Chụp xa: khẩu độ ƒ / 2.8, Hệ thống camera chuyên nghiệp (48MP chính, 12MP siêu rộng và 12MP tele), Siêu rộng: khẩu độ ƒ / 2.2', '12MP, khẩu độ ƒ / 1.9', 'Phát video lên tới 29 giờ (theo Apple)', 'Chip A16 Bionic,CPU 6 nhân, GPU 5 lõi, 16-core Neural Engine', 'A16 Bionic', '128GB', 'IOS', '6GB', '6.7″Super Retina XDR display', 'yes');
INSERT INTO `information` VALUES (4, 'Chính: khẩu độ ƒ / 1,78, Chụp xa: khẩu độ ƒ / 2.8, Hệ thống camera chuyên nghiệp (48MP chính, 12MP siêu rộng và 12MP tele), Siêu rộng: khẩu độ ƒ / 2.2', '12MP, khẩu độ ƒ / 1.9', 'Phát video lên tới 29 giờ (theo Apple)', 'Chip A16 Bionic,CPU 6 nhân, GPU 5 lõi, 16-core Neural Engine', 'A16 Bionic', '128GB', 'IOS', '6GB', '6.7″Super Retina XDR display', 'yes');
INSERT INTO `information` VALUES (5, 'Chính: khẩu độ ƒ / 1,78, Chụp xa: khẩu độ ƒ / 2.8, Hệ thống camera chuyên nghiệp (48MP chính, 12MP siêu rộng và 12MP tele), Siêu rộng: khẩu độ ƒ / 2.2', '12MP, khẩu độ ƒ / 1.9', 'Phát video lên tới 29 giờ (theo Apple)', 'Chip A16 Bionic,CPU 6 nhân, GPU 5 lõi, 16-core Neural Engine', 'A16 Bionic', '128GB', 'IOS', '6GB', '6.7″Super Retina XDR display', 'yes');
INSERT INTO `information` VALUES (6, '8MP', '12MP', 'Khoảng 8.200 mAh', '	A13 Bionic', 'A16 Bionic', '64GB, 256GB', 'IOS', '6GB', '	10.2”, IPS LCD, Retina', 'no');
INSERT INTO `information` VALUES (7, '8MP', '12MP', 'Khoảng 8.200 mAh', '	A13 Bionic', 'A16 Bionic', '64GB, 256GB', 'IOS', '6GB', '	10.2”, IPS LCD, Retina', 'no');
INSERT INTO `information` VALUES (8, '8MP', '12MP', 'Khoảng 8.200 mAh', '	A13 Bionic', 'A16 Bionic', '64GB, 256GB', 'IOS', '6GB', '	10.2”, IPS LCD, Retina', 'no');
INSERT INTO `information` VALUES (9, '8MP', '12MP', 'Khoảng 8.200 mAh', '	A13 Bionic', 'A16 Bionic', '64GB, 256GB', 'IOS', '6GB', '	10.2”, IPS LCD, Retina', 'no');
INSERT INTO `information` VALUES (10, '8MP', '12MP', 'Khoảng 8.200 mAh', '	A13 Bionic', 'A16 Bionic', '64GB, 256GB', 'macOS Big Sur', '6GB', '	10.2”, IPS LCD, Retina', 'no');
INSERT INTO `information` VALUES (11, '8MP', '12MP', 'Khoảng 8.200 mAh', '	\r\nA13 Bionic', 'GPU 7 nhân, 16 nhân Neural Engine', '\r\n256GB SSD', 'macOS Big Sur', '8GB', '13.3 inches', 'no');
INSERT INTO `information` VALUES (12, '8MP', '12MP', 'Khoảng 8.200 mAh', '	A13 Bionic', 'GPU 7 nhân, 16 nhân Neural Engine', '256GB SSD', 'macOS Big Sur', '8GB', '13.3 inches', 'no');
INSERT INTO `information` VALUES (13, '8MP', '12MP', 'Khoảng 8.200 mAh', '	\r\nA13 Bionic', 'GPU 7 nhân, 16 nhân Neural Engine', '\r\n256GB SSD', 'macOS Big Sur', '8GB', '13.3 inches', 'no');
INSERT INTO `information` VALUES (14, '8MP', '12MP', 'Khoảng 8.200 mAh', '	A13 Bionic', 'GPU 7 nhân, 16 nhân Neural Engine', '256GB SSD', 'macOS Big Sur', '8GB', '13.3 inches', 'no');
INSERT INTO `information` VALUES (15, '8MP', '12MP', 'Khoảng 8.200 mAh', '	A13 Bionic', 'GPU 7 nhân, 16 nhân Neural Engine', '256GB SSD', 'macOS Big Sur', '8GB', '13.3 inches', 'no');

-- ----------------------------
-- Table structure for order_details
-- ----------------------------
DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details`  (
  `order_detail_id` int NOT NULL AUTO_INCREMENT,
  `price` bigint NULL DEFAULT NULL,
  `quantity` int NULL DEFAULT NULL,
  `order_id` int NULL DEFAULT NULL,
  `product_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`) USING BTREE,
  INDEX `FKtmjmltddctfn3nov5e0mxasv5`(`order_id`) USING BTREE,
  INDEX `FKinivj2k1370kw224lavkm3rqm`(`product_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of order_details
-- ----------------------------
INSERT INTO `order_details` VALUES (1, 34000000, 1, 1, 4);
INSERT INTO `order_details` VALUES (2, 34000000, 1, 1, 3);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order_date` datetime NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `total` bigint NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `FK819vwi8pg3r8dhgbjr1n6phlg`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 'Thủ Đức', '2022-12-14 06:45:27', '0943383527', 0, 68000000, 24);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` bigint NULL DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `category_id` int NULL DEFAULT NULL,
  `image_id` int NULL DEFAULT NULL,
  `info_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`) USING BTREE,
  INDEX `FK1mtsbur82frn64de7balymq9s`(`category_id`) USING BTREE,
  INDEX `FKsouy49035ik9r5ojgslbv3i3u`(`image_id`) USING BTREE,
  INDEX `FKsru7b0p7bko1k7d6dyk9a8qq9`(`info_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '⍟Ưu đãi thanh toán:1. Giảm 1.000.000đ qua Moca (mã online: SHOPDUNKIP14)2. Giảm 1.000.000đ qua VNPAY (mã offline: HMQR1TR)3. Giảm 5% tối đa 1.000.000đ khi thanh toán trả góp qua Kredivo (chi tiết)4. Trả góp 0% qua thẻ tín dụng (chi tiết)', 3890000, 'Xiaomi Redmi 10 4GB-128GB 2021', 1, 1, 1);
INSERT INTO `product` VALUES (2, '⍟Ưu đãi thanh toán:1. Giảm 1.000.000đ qua Moca (mã online: SHOPDUNKIP14)2. Giảm 1.000.000đ qua VNPAY (mã offline: HMQR1TR)3. Giảm 5% tối đa 1.000.000đ khi thanh toán trả góp qua Kredivo (chi tiết)4. Trả góp 0% qua thẻ tín dụng (chi tiết)', 11190000, 'iPhone 14 Pro Max 128GB', 1, 2, 2);
INSERT INTO `product` VALUES (3, '⍟Ưu đãi thanh toán:1. Giảm 1.000.000đ qua Moca (mã online: SHOPDUNKIP14)2. Giảm 1.000.000đ qua VNPAY (mã offline: HMQR1TR)3. Giảm 5% tối đa 1.000.000đ khi thanh toán trả góp qua Kredivo (chi tiết)4. Trả góp 0% qua thẻ tín dụng (chi tiết)', 35900000, 'iPhone 14 Pro Max 128GB', 1, 3, 3);
INSERT INTO `product` VALUES (4, '⍟Ưu đãi thanh toán:1. Giảm 1.000.000đ qua Moca (mã online: SHOPDUNKIP14)2. Giảm 1.000.000đ qua VNPAY (mã offline: HMQR1TR)3. Giảm 5% tối đa 1.000.000đ khi thanh toán trả góp qua Kredivo (chi tiết)4. Trả góp 0% qua thẻ tín dụng (chi tiết)', 27980000, 'iPhone 13 Pro Max 128GB', 1, 4, 4);
INSERT INTO `product` VALUES (5, '⍟Ưu đãi thanh toán:1. Giảm 1.000.000đ qua Moca (mã online: SHOPDUNKIP14)2. Giảm 1.000.000đ qua VNPAY (mã offline: HMQR1TR)3. Giảm 5% tối đa 1.000.000đ khi thanh toán trả góp qua Kredivo (chi tiết)4. Trả góp 0% qua thẻ tín dụng (chi tiết)', 25600000, 'iPhone 13 Pro Max 128GB', 1, 5, 5);
INSERT INTO `product` VALUES (6, 'Mạnh mẽ. Dễ sử dụng. Đa năng. ', 5670000, 'iPad gen 9 10.2 inch Wi-Fi 64GB', 2, 6, 6);
INSERT INTO `product` VALUES (7, 'Mạnh mẽ. Dễ sử dụng. Đa năng. ', 7800000, 'iPad gen 10 10.9 inch Wi-Fi 64GB', 2, 7, 7);
INSERT INTO `product` VALUES (8, 'Mạnh mẽ. Dễ sử dụng. Đa năng. ', 8900000, 'iPad Pro M2 11 inch Wi-Fi 128GB', 2, 8, 8);
INSERT INTO `product` VALUES (9, 'Mạnh mẽ. Dễ sử dụng. Đa năng. ', 12300000, 'ipad-pro-m2-11-inch-wi-fi-cellular-128gb', 2, 9, 9);
INSERT INTO `product` VALUES (10, 'Mạnh mẽ. Dễ sử dụng. Đa năng. ', 13000000, 'iPad gen 9 10.2 inch Wi-Fi 64GB', 2, 10, 10);
INSERT INTO `product` VALUES (11, 'Là dòng sản phẩm có thiết kế mỏng nhẹ, sang trọng và tinh tế', 22900000, 'MacBook Pro 14 M1 Pro (16-Core/16GB/1TB)', 3, 11, 11);
INSERT INTO `product` VALUES (12, 'Là dòng sản phẩm có thiết kế mỏng nhẹ, sang trọng và tinh tế', 25600000, 'iMac M1 2021 24 inch (8-Core GPU/8GB/512GB)', 3, 12, 12);
INSERT INTO `product` VALUES (13, 'Là dòng sản phẩm có thiết kế mỏng nhẹ, sang trọng và tinh tế', 22900000, 'iMac M1 2021 24 inch (8-Core GPU/8GB/512GB)', 3, 13, 13);
INSERT INTO `product` VALUES (14, 'Là dòng sản phẩm có thiết kế mỏng nhẹ, sang trọng và tinh tế', 15900000, 'MacBook Pro 13 M2 2022 (8GB RAM|512GB SSD)', 3, 14, 14);
INSERT INTO `product` VALUES (15, 'Là dòng sản phẩm có thiết kế mỏng nhẹ, sang trọng và tinh tế', 29990000, 'MacBook Pro 13 M2 2022 (16GB RAM|512 SSD)', 3, 15, 15);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `roleid` int NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`roleid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'ADMIN');
INSERT INTO `roles` VALUES (2, 'USER');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role` int NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `FK4c6vlshk8x83ifeoggi3exg3k`(`role`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Thủ Đức', 'hao@gmail.com', 'Pham Van Hao', '123', '0943383527', 1);
INSERT INTO `users` VALUES (2, 'Thủ Đức', 'tuyet@gmail.com', 'Lê Thị Thanh Tuyết', '123', '0943383527', 1);
INSERT INTO `users` VALUES (3, 'TP HCM', 'tuan@gmail.com', 'ute', '123', '123', 2);
INSERT INTO `users` VALUES (4, 'TP HCM', 'ute@gmail.com', 'ute', '123', '123', 2);

SET FOREIGN_KEY_CHECKS = 1;
