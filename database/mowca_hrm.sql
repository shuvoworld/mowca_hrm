/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : mowca_hrm

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 09/02/2021 16:18:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for additional_roles
-- ----------------------------
DROP TABLE IF EXISTS `additional_roles`;
CREATE TABLE `additional_roles`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `designation_id` int(10) NOT NULL,
  `employee_id` int(10) NOT NULL,
  `type_of_posting` int(10) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for agencies
-- ----------------------------
DROP TABLE IF EXISTS `agencies`;
CREATE TABLE `agencies`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_BN` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `head_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `head_designation` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `contact_info` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of agencies
-- ----------------------------
INSERT INTO `agencies` VALUES (1, 'জাতীয় মহিলা সংস্থা', 'জাতীয় মহিলা সংস্থা', NULL, NULL, NULL);
INSERT INTO `agencies` VALUES (2, 'মহিলা বিষয়ক অধিদপ্তর', 'মহিলা বিষয়ক অধিদপ্তর', NULL, NULL, NULL);
INSERT INTO `agencies` VALUES (3, 'বাংলাদেশ শিশু একাডেমী', 'বাংলাদেশ শিশু একাডেমী', NULL, NULL, NULL);
INSERT INTO `agencies` VALUES (4, 'মহিলা ও শিশু বিষয়ক মন্ত্রণালয়', 'মহিলা ও শিশু বিষয়ক মন্ত্রণালয়', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for bloodgroups
-- ----------------------------
DROP TABLE IF EXISTS `bloodgroups`;
CREATE TABLE `bloodgroups`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bloodgroups
-- ----------------------------
INSERT INTO `bloodgroups` VALUES (1, 'O+');
INSERT INTO `bloodgroups` VALUES (2, 'trtr');

-- ----------------------------
-- Table structure for contact_directory
-- ----------------------------
DROP TABLE IF EXISTS `contact_directory`;
CREATE TABLE `contact_directory`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `agency_id` int(10) NULL DEFAULT NULL,
  `agency_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `designation_id` int(10) NULL DEFAULT NULL,
  `designation_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `office_id` int(10) NULL DEFAULT NULL,
  `office_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `dob` date NULL DEFAULT NULL,
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `mobile_no` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `alternate_mobile_no` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `division_id` int(10) NULL DEFAULT NULL,
  `division_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `district_id` int(10) NULL DEFAULT NULL,
  `district_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `upazila_id` int(10) NULL DEFAULT NULL,
  `upazila_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `organization_level_id` int(10) NULL DEFAULT NULL,
  `organization_level_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `updated_by` int(10) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contact_directory
-- ----------------------------
INSERT INTO `contact_directory` VALUES (1, 'wwewe', 1, 'জাতীয় মহিলা সংস্থা', 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 3, 'কর্মজীবী মহিলা হোস্টেল', '2020-09-01', '121212', '121212', '1212', 1, 'ঢাকা', 1, 'ঢাকা', 154, 'আদাবর', 3, 'জেলা পর্যায়', NULL, '2020-09-23 07:43:19', 'dfdf@er.com');
INSERT INTO `contact_directory` VALUES (2, 'dfdfd', 0, NULL, 1, 'উপপরিচালক', 1, 'আবাসিক প্রশিক্ষণ কেন্দ্র', '2020-09-01', '121212', '019454545454', '2120', 1, 'ঢাকা', 1, 'ঢাকা', 154, 'আদাবর', 1, 'জাতীয়', NULL, '2020-09-23 07:48:43', 'rtmjnj@mail.com');
INSERT INTO `contact_directory` VALUES (3, 'dfd', 2, 'মহিলা বিষয়ক অধিদপ্তর', 1, 'উপপরিচালক', 3, 'কর্মজীবী মহিলা হোস্টেল', '2020-09-01', '44545', '4545', '4545', 1, 'ঢাকা', 3, 'গাজীপুর', 216, 'কাপাসিয়া', 3, 'জেলা পর্যায়', NULL, '2020-09-23 07:52:10', 'we@ew.com');
INSERT INTO `contact_directory` VALUES (4, 'fgfgfgfg', 1, 'জাতীয় মহিলা সংস্থা', 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 3, 'কর্মজীবী মহিলা হোস্টেল', '2020-09-01', '2323', '019454545454', '3434', 2, 'চট্টগ্রাম', 19, 'ব্রাহ্মণবাড়িয়া', 51, 'বাঞ্ছারামপুর', 3, 'জেলা পর্যায়', NULL, '2020-09-23 07:55:30', 'shu@eer.com');
INSERT INTO `contact_directory` VALUES (5, '3343', 1, 'জাতীয় মহিলা সংস্থা', 3, 'জেলা শিশু বিষয়ক কর্মকর্তা', 3, 'কর্মজীবী মহিলা হোস্টেল', '2020-09-01', '34344', 'dfdf', '3434', 1, 'ঢাকা', 2, 'ফরিদপুর', 205, 'ভাংগা', 2, 'বিভাগীয়', NULL, '2020-09-23 08:11:49', 'we@ew.com');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name_BN` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `department_head` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `department_head_designation` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total_manpower` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for designations
-- ----------------------------
DROP TABLE IF EXISTS `designations`;
CREATE TABLE `designations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `grade` int(10) NULL DEFAULT NULL,
  `rank` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of designations
-- ----------------------------
INSERT INTO `designations` VALUES (1, 'উপপরিচালক', 6, 6);
INSERT INTO `designations` VALUES (2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 9, 9);
INSERT INTO `designations` VALUES (3, 'জেলা শিশু বিষয়ক কর্মকর্তা', 10, 10);
INSERT INTO `designations` VALUES (4, 'প্রোগ্রাম অফিসার', 10, 10);

-- ----------------------------
-- Table structure for districts
-- ----------------------------
DROP TABLE IF EXISTS `districts`;
CREATE TABLE `districts`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name_BN` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `combinedcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `latitude` double NULL DEFAULT NULL,
  `longitude` double NULL DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `division_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `division_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `division_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `is_active` tinyint(1) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `districts_division_id_foreign`(`division_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of districts
-- ----------------------------
INSERT INTO `districts` VALUES (1, 'Dhaka', 'ঢাকা', '3026', 23.8052, 90.33719, '26', 1, '30', 'Dhaka', 18561, '2016-10-02 14:29:03', 1, NULL, 18561, '2015-11-24 14:41:55');
INSERT INTO `districts` VALUES (2, 'Faridpur', 'ফরিদপুর', '3029', 23.54239, 89.63089, '29', 1, '30', 'Dhaka', 18561, '2016-10-02 14:30:10', 1, NULL, 18561, '2015-11-24 14:42:45');
INSERT INTO `districts` VALUES (3, 'Gazipur', 'গাজীপুর', '3033', 24.09582, 90.4125, '33', 1, '30', 'Dhaka', 18561, '2016-10-02 14:30:54', 1, NULL, 18561, '2015-11-24 14:43:52');
INSERT INTO `districts` VALUES (4, 'Gopalganj', 'গোপালগঞ্জ', '3035', 23.04881, 89.88793, '35', 1, '30', 'Dhaka', 18561, '2016-10-02 14:32:11', 1, NULL, 18561, '2015-11-24 14:44:06');
INSERT INTO `districts` VALUES (5, 'Jamalpur', 'জামালপুর', '4539', 25.08309, 89.78532, '39', 8, '45', 'Mymensingh', 8, '2016-10-16 12:26:14', 1, NULL, 18561, '2015-11-24 14:44:22');
INSERT INTO `districts` VALUES (6, 'Kishorgonj', 'কিশোরগঞ্জ', '3048', 0, 0, '48', 1, '30', 'Dhaka', 18561, '2015-11-24 14:45:41', 1, NULL, 18561, '2015-11-24 14:45:41');
INSERT INTO `districts` VALUES (7, 'Madaripur', 'মাদারীপুর', '3054', 23.23933, 90.18696, '54', 1, '30', 'Dhaka', 18561, '2016-10-02 14:43:58', 1, NULL, 18561, '2015-11-24 14:45:58');
INSERT INTO `districts` VALUES (8, 'Manikganj', 'মানিকগঞ্জ', '3056', 23.86165, 90.00032, '56', 1, '30', 'Dhaka', 18561, '2016-10-02 14:44:42', 1, NULL, 18561, '2015-11-24 14:46:13');
INSERT INTO `districts` VALUES (9, 'Munshiganj', 'মুন্সিগঞ্জ', '3059', 23.49809, 90.41266, '59', 1, '30', 'Dhaka', 18561, '2016-10-02 14:45:47', 1, NULL, 18561, '2015-11-24 14:46:37');
INSERT INTO `districts` VALUES (10, 'Mymensingh', 'ময়মনসিংহ', '4561', 24.75386, 90.40729, '61', 8, '45', 'Mymensingh', 8, '2016-10-16 12:28:09', 1, NULL, 18561, '2015-11-24 14:47:01');
INSERT INTO `districts` VALUES (11, 'Narayanganj', 'নারায়ণগঞ্জ', '3067', 23.71466, 90.56361, '67', 1, '30', 'Dhaka', 18561, '2016-10-02 14:47:32', 1, NULL, 18561, '2015-11-24 14:49:04');
INSERT INTO `districts` VALUES (12, 'Narsingdi', 'নরসিংদী', '3068', 24.13438, 90.78601, '68', 1, '30', 'Dhaka', 18561, '2016-10-02 14:49:08', 1, NULL, 18561, '2015-11-24 14:49:22');
INSERT INTO `districts` VALUES (13, 'Netrakona', 'নেত্রকোনা', '4572', 24.81033, 90.86564, '72', 8, '45', 'Mymensingh', 8, '2016-10-16 12:26:43', 1, NULL, 18561, '2015-11-24 14:49:37');
INSERT INTO `districts` VALUES (14, 'Rajbari', 'রাজবাড়ী', '3082', 23.71513, 89.58748, '82', 1, '30', 'Dhaka', 18561, '2016-10-02 14:53:08', 1, NULL, 18561, '2015-11-24 14:50:00');
INSERT INTO `districts` VALUES (15, 'Shariatpur', 'শরীয়তপুর', '3086', 23.24232, 90.43477, '86', 1, '30', 'Dhaka', 18561, '2016-10-02 14:52:37', 1, NULL, 18561, '2015-11-24 14:50:19');
INSERT INTO `districts` VALUES (16, 'Sherpur', 'শেরপুর', '4589', 25.07462, 90.14949, '89', 8, '45', 'Mymensingh', 8, '2016-10-16 12:27:16', 1, NULL, 18561, '2015-11-24 14:50:40');
INSERT INTO `districts` VALUES (17, 'Tangail', 'টাঙ্গাইল', '3093', 24.39174, 89.99483, '93', 1, '30', 'Dhaka', 18561, '2016-10-02 14:51:34', 1, NULL, 18561, '2015-11-24 14:50:53');
INSERT INTO `districts` VALUES (18, 'Bandarban', 'বান্দরবান', '2003', 21.8311, 92.3686, '03', 2, '20', 'Chittagong', 18561, '2016-10-02 14:50:55', 1, NULL, 18561, '2015-11-24 14:51:09');
INSERT INTO `districts` VALUES (19, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', '2012', 23.96082, 91.1115, '12', 2, '20', 'Chittagong', 18561, '2016-10-02 14:50:23', 1, NULL, 18561, '2015-11-24 14:51:27');
INSERT INTO `districts` VALUES (20, 'Chandpur', 'চাঁদপুর', '2013', 23.25131, 90.85178, '13', 2, '20', 'Chittagong', 18561, '2016-10-02 14:49:49', 1, NULL, 18561, '2015-11-24 14:51:45');
INSERT INTO `districts` VALUES (21, 'Chittagong', 'চট্টগ্রাম', '2015', 22.51501, 91.75388, '15', 2, '20', 'Chittagong', 18561, '2016-10-02 14:55:15', 1, NULL, 18561, '2015-11-24 14:53:03');
INSERT INTO `districts` VALUES (22, 'Comilla', 'কুমিল্লা', '2019', 23.45757, 91.1809, '19', 2, '20', 'Chittagong', 18561, '2016-10-02 15:01:43', 1, NULL, 18561, '2015-11-24 14:53:24');
INSERT INTO `districts` VALUES (23, 'Cox\'s Bazar', 'কক্সবাজার', '2022', 21.56406, 92.02821, '22', 2, '20', 'Chittagong', 18561, '2016-10-02 15:01:06', 1, NULL, 18561, '2015-11-24 14:53:39');
INSERT INTO `districts` VALUES (24, 'Feni', 'ফেনী', '2030', 22.94088, 91.40666, '30', 2, '20', 'Chittagong', 18561, '2016-10-02 15:00:26', 1, NULL, 18561, '2015-11-24 14:53:54');
INSERT INTO `districts` VALUES (25, 'Khagrachhari', 'খাগড়াছড়ি', '2046', 23.13218, 91.949, '46', 2, '20', 'Chittagong', 18561, '2016-10-02 14:59:56', 1, NULL, 18561, '2015-11-24 14:54:08');
INSERT INTO `districts` VALUES (26, 'Lakshmipur', 'লক্ষ্মীপুর', '2051', 22.94467, 90.82819, '51', 2, '20', 'Chittagong', 18561, '2016-10-02 14:58:27', 1, NULL, 18561, '2015-11-24 14:54:31');
INSERT INTO `districts` VALUES (27, 'Noakhali', 'নোয়াখালী', '2075', 22.87238, 91.09732, '75', 2, '20', 'Chittagong', 18561, '2016-10-02 14:57:53', 1, NULL, 18561, '2015-11-24 14:54:47');
INSERT INTO `districts` VALUES (28, 'Rangamati', 'রাঙ্গামাটি', '2084', 22.73242, 92.29851, '84', 2, '20', 'Chittagong', 18561, '2016-10-02 14:57:19', 1, NULL, 18561, '2015-11-24 14:55:07');
INSERT INTO `districts` VALUES (29, 'Bogra', 'বগুড়া', '5010', 24.85104, 89.36972, '10', 3, '50', 'Rajshahi', 18561, '2016-10-02 14:56:38', 1, NULL, 18561, '2015-11-24 14:55:37');
INSERT INTO `districts` VALUES (30, 'Chapai Nawabganj', 'চাঁপাই নবাবগঞ্জ', '5070', 24.74131, 88.29121, '70', 3, '50', 'Rajshahi', 18561, '2016-10-02 14:56:03', 1, NULL, 18561, '2015-11-24 14:55:42');
INSERT INTO `districts` VALUES (31, 'Dinajpur', 'দিনাজপুর', '5527', 25.62791, 88.63318, '27', 4, '55', 'Rangpur', 18561, '2016-10-02 15:02:50', 1, NULL, 18561, '2015-11-25 10:08:36');
INSERT INTO `districts` VALUES (32, 'Gaibandha', 'গাইবান্ধা', '5532', 25.32969, 89.54297, '32', 4, '55', 'Rangpur', 18561, '2016-10-02 15:07:50', 1, NULL, 18561, '2015-11-25 10:08:50');
INSERT INTO `districts` VALUES (33, 'Joypurhat', 'জয়পুরহাট', '5038', 25.09473, 89.09449, '38', 3, '50', 'Rajshahi', 18561, '2016-10-02 15:07:23', 1, NULL, 18561, '2015-11-25 10:09:21');
INSERT INTO `districts` VALUES (34, 'Kurigram', 'কুড়িগ্রাম', '5549', 25.80724, 89.62947, '49', 4, '55', 'Rangpur', 18561, '2016-10-02 15:06:48', 1, NULL, 18561, '2015-11-25 10:10:13');
INSERT INTO `districts` VALUES (35, 'Lalmonirhat', 'লালমনিরহাট', '5552', 25.99234, 89.28473, '52', 4, '55', 'Rangpur', 18561, '2016-10-02 15:06:18', 1, NULL, 18561, '2015-11-25 10:10:31');
INSERT INTO `districts` VALUES (36, 'Naogaon', 'নওগাঁ', '5064', 24.91316, 88.7531, '64', 3, '50', 'Rajshahi', 18561, '2016-10-02 15:05:47', 1, NULL, 18561, '2015-11-25 10:11:08');
INSERT INTO `districts` VALUES (37, 'Natore', 'নাটোর', '5069', 24.41024, 89.00762, '69', 3, '50', 'Rajshahi', 18561, '2016-10-02 15:05:17', 1, NULL, 18561, '2015-11-25 10:11:31');
INSERT INTO `districts` VALUES (38, 'Nilphamari', 'নীলফামারী', '5573', 25.84828, 88.94141, '73', 4, '55', 'Rangpur', 18561, '2016-10-02 15:04:51', 1, NULL, 18561, '2015-11-25 10:14:18');
INSERT INTO `districts` VALUES (39, 'Pabna', 'পাবনা', '5076', 24.15851, 89.44807, '76', 3, '50', 'Rajshahi', 18561, '2016-10-02 15:04:08', 1, NULL, 18561, '2015-11-25 10:14:39');
INSERT INTO `districts` VALUES (40, 'Panchagarh', 'পঞ্চগড়', '5577', 26.27087, 88.59518, '77', 4, '55', 'Rangpur', 18561, '2016-10-02 15:03:30', 1, NULL, 18561, '2015-11-25 10:15:02');
INSERT INTO `districts` VALUES (41, 'Rajshahi', 'রাজশাহী', '5081', 24.37331, 88.6048, '81', 3, '50', 'Rajshahi', 18561, '2016-10-02 15:09:12', 1, NULL, 18561, '2015-11-25 10:23:40');
INSERT INTO `districts` VALUES (42, 'Rangpur', 'রংপুর', '5585', 25.74679, 89.25083, '85', 4, '55', 'Rangpur', 18561, '2016-10-02 15:14:02', 1, NULL, 18561, '2015-11-25 10:23:58');
INSERT INTO `districts` VALUES (43, 'Sirajganj', 'সিরাজগঞ্জ', '5088', 24.31411, 89.56996, '88', 3, '50', 'Rajshahi', 18561, '2016-10-02 15:13:31', 1, NULL, 18561, '2015-11-25 10:24:47');
INSERT INTO `districts` VALUES (44, 'Thakurgaon', 'ঠাকুরগাঁও', '5594', 26.04184, 88.42826, '94', 4, '55', 'Rangpur', 18561, '2016-10-02 15:13:01', 1, NULL, 18561, '2015-11-25 10:25:07');
INSERT INTO `districts` VALUES (45, 'Bagerhat', 'বাগেরহাট', '4001', 22.66024, 89.78955, '01', 5, '40', 'Khulna', 18561, '2016-12-28 15:20:36', 1, NULL, 18561, '2015-11-25 10:25:27');
INSERT INTO `districts` VALUES (46, 'Chuadanga', 'চুয়াডাঙ্গা', '4018', 23.61605, 88.8263, '18', 5, '40', 'Khulna', 18561, '2016-12-28 15:20:36', 1, NULL, 18561, '2015-11-25 10:25:57');
INSERT INTO `districts` VALUES (47, 'Jessore', 'যশোর', '4041', 23.1634, 89.21817, '41', 5, '40', 'Khulna', 18561, '2016-12-28 15:20:36', 1, NULL, 18561, '2015-11-25 10:27:33');
INSERT INTO `districts` VALUES (48, 'Jhenaidah', 'ঝিনাইদাহ', '4044', 23.54499, 89.1726, '44', 5, '40', 'Khulna', 18561, '2016-12-28 15:20:36', 1, NULL, 18561, '2015-11-25 10:28:00');
INSERT INTO `districts` VALUES (49, 'Khulna', 'খুলনা', '4047', 22.67377, 89.39666, '47', 5, '40', 'Khulna', 18561, '2016-12-28 15:20:36', 1, NULL, 18561, '2015-11-25 10:28:22');
INSERT INTO `districts` VALUES (50, 'Kushtia', 'কুষ্টিয়া', '4050', 23.8907, 89.10994, '50', 5, '40', 'Khulna', 18561, '2016-12-28 15:20:36', 1, NULL, 18561, '2015-11-25 10:29:44');
INSERT INTO `districts` VALUES (51, 'Magura', 'মাগুরা', '4055', 0, 0, '55', 5, '40', 'Khulna', 18561, '2016-12-28 15:20:36', 1, NULL, 18561, '2015-11-25 10:31:17');
INSERT INTO `districts` VALUES (52, 'Meherpur', 'মেহেরপুর', '4057', 23.11629, 88.67236, '57', 5, '40', 'Khulna', 18561, '2016-12-28 15:20:36', 1, NULL, 18561, '2015-11-25 10:31:36');
INSERT INTO `districts` VALUES (53, 'Narail', 'নড়াইল', '4065', 23.11629, 89.58404, '65', 5, '40', 'Khulna', 18561, '2016-12-28 15:20:36', 1, NULL, 18561, '2015-11-25 10:32:17');
INSERT INTO `districts` VALUES (54, 'Satkhira', 'সাতক্ষীরা', '4087', 22.31548, 89.11145, '87', 5, '40', 'Khulna', 18561, '2016-12-28 15:20:36', 1, NULL, 18561, '2015-11-25 10:32:46');
INSERT INTO `districts` VALUES (55, 'Barguna', 'বরগুনা', '1004', 22.09529, 90.11207, '04', 6, '10', 'Barisal', 18561, '2016-10-02 14:24:37', 1, NULL, 18561, '2015-11-25 10:32:59');
INSERT INTO `districts` VALUES (56, 'Barisal', 'বরিশাল', '1006', 22.17853, 90.7101, '06', 6, '10', 'Barisal', 18561, '2016-10-02 14:23:44', 1, NULL, 18561, '2015-11-25 10:33:12');
INSERT INTO `districts` VALUES (57, 'Bhola', 'ভোলা', '1009', 22.17853, 90.7101, '09', 6, '10', 'Barisal', 18561, '2016-10-02 14:21:50', 1, NULL, 18561, '2015-11-25 10:33:32');
INSERT INTO `districts` VALUES (58, 'Jhalokati', 'ঝালকাঠি', '1042', 22.57208, 90.18696, '42', 6, '10', 'Barisal', 18561, '2016-10-02 14:21:04', 1, NULL, 18561, '2015-11-25 10:34:00');
INSERT INTO `districts` VALUES (59, 'Patuakhali', 'পটুয়াখালী', '1078', 22.22486, 90.45475, '78', 6, '10', 'Barisal', 18561, '2016-10-02 14:20:06', 1, NULL, 18561, '2015-11-25 10:34:14');
INSERT INTO `districts` VALUES (60, 'Pirojpur', 'পিরোজপুর', '1079', 22.57907, 89.97593, '79', 6, '10', 'Barisal', 18561, '2016-10-02 14:18:38', 1, NULL, 18561, '2015-11-25 10:34:31');
INSERT INTO `districts` VALUES (61, 'Habiganj', 'হবিগঞ্জ', '6036', 24.47712, 91.45066, '36', 7, '60', 'Sylhet', 18561, '2016-10-02 14:16:58', 1, NULL, 18561, '2015-11-25 10:35:09');
INSERT INTO `districts` VALUES (62, 'Maulvibazar', 'মৌলভীবাজার', '6058', 24.46706, 91.71496, '58', 7, '60', 'Sylhet', 18561, '2016-10-02 14:15:38', 1, NULL, 18561, '2015-11-25 10:35:22');
INSERT INTO `districts` VALUES (63, 'Sunamganj', 'সুনামগঞ্জ', '6090', 25.07145, 91.39916, '90', 7, '60', 'Sylhet', 18561, '2016-10-02 14:13:14', 1, NULL, 18561, '2015-11-25 10:35:36');
INSERT INTO `districts` VALUES (64, 'Sylhet', 'সিলেট', '6091', 24.89934, 91.87005, '91', 7, '60', 'Sylhet', 4, '2016-10-02 13:19:57', 1, NULL, 18561, '2015-11-25 10:35:49');

-- ----------------------------
-- Table structure for divisions
-- ----------------------------
DROP TABLE IF EXISTS `divisions`;
CREATE TABLE `divisions`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name_BN` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `combinedcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `latitude` double NULL DEFAULT NULL,
  `longitude` double NULL DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `is_active` tinyint(1) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of divisions
-- ----------------------------
INSERT INTO `divisions` VALUES (1, '998e5f1d-6e66-4637-b451-9123480714b8', 'Dhaka', 'ঢাকা', '30', 23.810332, 90.4125181, '30', 18561, '2015-12-10 15:43:15', 1, NULL, 18561, '2015-12-10 15:43:15');
INSERT INTO `divisions` VALUES (2, '13bdd98c-47ed-4a9a-89f4-cea33600b658', 'Chittagong', 'চট্টগ্রাম', '20', 22.3419, 91.815536, '20', 18561, '2015-12-10 15:34:09', 1, NULL, 18561, '2015-12-10 15:34:09');
INSERT INTO `divisions` VALUES (3, '30d24a05-65f7-474c-a3b3-7645d9e1dd5f', 'Rajshahi', 'রাজশাহী', '50', 24.71058, 88.94139, '50', 18561, '2015-12-10 15:34:37', 1, NULL, 18561, '2015-12-10 15:34:37');
INSERT INTO `divisions` VALUES (4, '86cf6784-78b9-4a20-9625-15d14318a1a5', 'Rangpur', 'রংপুর', '55', 25.84834, 88.94139, '55', 4, '2016-12-28 15:23:20', 1, NULL, 18435, '2014-12-14 10:53:05');
INSERT INTO `divisions` VALUES (5, 'd22de31e-e870-4d3d-aed8-21049f8f0122', 'Khulna', 'খুলনা', '40', 22.80878, 89.24672, '40', 4, '2016-12-28 15:20:34', 1, NULL, 7, '2014-11-19 17:45:39');
INSERT INTO `divisions` VALUES (6, 'd94beab6-ed11-4985-98f8-4c1aa39c3bec', 'Barisal', 'বরিশাল', '10', 22.70497, 90.37013, '10', 4, '2016-12-28 15:22:39', 1, NULL, 18526, '2015-02-08 16:13:25');
INSERT INTO `divisions` VALUES (7, '3f21377b-2ce0-421f-b535-451cc62581cb', 'Sylhet', 'সিলেট', '60', 24.894802, 91.869034, '60', 4, '2017-01-06 11:14:34', 1, NULL, 18526, '2015-02-08 16:11:53');
INSERT INTO `divisions` VALUES (8, 'e8e724fc-3f68-46a0-8aa1-56912d255698', 'Mymensingh', 'ময়মনসিংহ', '45', 24.1, 90.25, '45', 8, '2016-10-16 12:24:49', 1, NULL, 8, '2016-10-14 17:23:32');

-- ----------------------------
-- Table structure for educational_qualifications
-- ----------------------------
DROP TABLE IF EXISTS `educational_qualifications`;
CREATE TABLE `educational_qualifications`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of educational_qualifications
-- ----------------------------
INSERT INTO `educational_qualifications` VALUES (1, 'অনার্স');
INSERT INTO `educational_qualifications` VALUES (2, 'মাস্টার্স');

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name_BN` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_EN` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `father_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `mother_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `national_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobile_no` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `quota_id` int(10) NULL DEFAULT NULL,
  `quota_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sex_id` int(10) NULL DEFAULT NULL,
  `sex_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `religion_id` int(10) NULL DEFAULT NULL,
  `religion_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `bloodgroup_id` int(10) NULL DEFAULT NULL,
  `bloodgroup_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `dob` date NOT NULL,
  `prl_date` date NULL DEFAULT NULL,
  `permanent_division_id` int(10) NULL DEFAULT NULL,
  `permanent_division_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `permanent_district_id` int(10) NULL DEFAULT NULL,
  `permanent_district_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `permanent_upazila_id` int(10) NULL DEFAULT NULL,
  `permanent_upazila_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `permanent_address` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `educational_qualification_id` int(10) NULL DEFAULT NULL,
  `educational_qualification_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `joining_govt_service_date` date NULL DEFAULT NULL,
  `present_place_joing_date` date NULL DEFAULT NULL,
  `present_post_joining_date` date NULL DEFAULT NULL,
  `last_promoted_post_id` int(10) NULL DEFAULT NULL,
  `last_promoted_post_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `last_promotion_date` date NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` tinyint(10) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(10) NULL DEFAULT NULL,
  `is_active` tinyint(4) NULL DEFAULT NULL,
  `marital_status_id` int(10) NULL DEFAULT NULL,
  `marital_status_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `agency_id` int(10) NULL DEFAULT NULL,
  `agency_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `alternate_mobile_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `posting_division_id` int(10) NULL DEFAULT NULL,
  `posting_district_id` int(10) NULL DEFAULT NULL,
  `posting_upazila_id` int(10) NULL DEFAULT NULL,
  `posting_organization_id` int(10) NULL DEFAULT NULL,
  `posting_sanctionedpost_id` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES (1, 'আসমা খাতুন', 'Aasma Khatun', 'Jalil Uddin', 'জরিনা খাতুন', '823774745', '015656565656', 'email@email.com', 0, NULL, 0, NULL, 0, NULL, 0, NULL, '1984-01-04', '2029-01-03', 5, NULL, 45, NULL, 324, NULL, '', 0, NULL, '2001-01-05', '2007-05-05', '2007-01-01', 1, NULL, '2007-01-01', NULL, NULL, '2020-12-27 03:54:07', 1, 1, 0, NULL, 2, NULL, '015656565656', 1, 6, 232, 35, 35);
INSERT INTO `employees` VALUES (3, 'test', '', 'wetyty', 'wewew', '53255', '015656565656', 'ss@yahoo.com', 0, NULL, 0, NULL, 0, NULL, 2, NULL, '2020-12-01', '2020-12-01', 2, NULL, 20, NULL, 61, NULL, 'sse', 1, NULL, '2020-12-01', '2020-12-01', '2020-12-01', 2, NULL, '2020-12-01', NULL, NULL, '2020-12-27 04:14:03', 1, 1, 1, NULL, 2, NULL, '', 1, 2, 205, 57, 57);
INSERT INTO `employees` VALUES (4, 'dwe', 'wewe', 'ewe', 'wew', '4343', '015656565656', 'ss@yahoo.com', 0, NULL, 1, NULL, 1, NULL, 1, NULL, '2020-12-02', '2020-12-01', 4, NULL, 34, NULL, 480, NULL, 'wrwer', 0, NULL, '2020-12-01', '2020-12-01', '2020-12-01', 2, NULL, '0000-00-00', NULL, NULL, '2020-12-27 04:13:34', 1, 1, 0, NULL, 1, NULL, '015656565656', 6, 60, 39, 120, 120);
INSERT INTO `employees` VALUES (5, 'wwe', 'wew', 'wewe', 'wew', '823774745', '015656565656', 'email@email.com', 0, NULL, 0, NULL, 0, NULL, 0, NULL, '2020-12-01', '2020-12-31', 4, NULL, 32, NULL, 471, NULL, '', 0, NULL, '2020-12-01', '2020-12-01', '2020-12-08', 2, NULL, '2020-12-08', NULL, NULL, '2020-12-27 03:55:21', 1, 1, 0, NULL, 2, NULL, '2323', 4, 34, 479, 329, 329);
INSERT INTO `employees` VALUES (6, 'as', 'asa', 'a', 'asas', '232323', '5454454', 'ee@ere.com', 1, NULL, 1, NULL, 2, NULL, 1, NULL, '2020-12-01', '2020-12-31', 3, NULL, 33, NULL, 399, NULL, '', 1, NULL, '2020-12-01', '2020-12-02', '2020-12-01', 1, NULL, '2020-12-09', NULL, NULL, NULL, NULL, 1, 1, NULL, 1, NULL, '4554545', 4, 34, 479, 329, 329);
INSERT INTO `employees` VALUES (7, 'wewe', 'ewe', 'wewe', 'wewe', '823774745', '015656565656', 'ee@ere.com', 0, NULL, 0, NULL, 0, NULL, 0, NULL, '1980-01-01', '2027-12-30', 2, NULL, 19, NULL, 52, NULL, 'sds', 0, NULL, '2000-09-01', '2010-12-01', '2013-12-02', 2, NULL, '2013-12-01', NULL, NULL, NULL, NULL, 1, 0, NULL, 2, NULL, '015656565656', 3, 33, 400, 280, 280);

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES (1, '1');
INSERT INTO `grade` VALUES (2, '2');
INSERT INTO `grade` VALUES (3, '3');
INSERT INTO `grade` VALUES (4, '4');
INSERT INTO `grade` VALUES (5, '5');

-- ----------------------------
-- Table structure for marital_statuses
-- ----------------------------
DROP TABLE IF EXISTS `marital_statuses`;
CREATE TABLE `marital_statuses`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of marital_statuses
-- ----------------------------
INSERT INTO `marital_statuses` VALUES (1, 'বিবাহিত');
INSERT INTO `marital_statuses` VALUES (2, 'অবিবাহিত');

-- ----------------------------
-- Table structure for media
-- ----------------------------
DROP TABLE IF EXISTS `media`;
CREATE TABLE `media`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `file_type` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of media
-- ----------------------------
INSERT INTO `media` VALUES (1, 'Enamul_haq.jpg', 'image/jpeg');
INSERT INTO `media` VALUES (2, 'Enamul_Haque.JPG', 'image/jpeg');

-- ----------------------------
-- Table structure for movein
-- ----------------------------
DROP TABLE IF EXISTS `movein`;
CREATE TABLE `movein`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sanctionedpost_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `type_of_posting` int(10) NULL DEFAULT NULL,
  `reason_of_posting` int(10) NULL DEFAULT NULL,
  `join_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for moveout
-- ----------------------------
DROP TABLE IF EXISTS `moveout`;
CREATE TABLE `moveout`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sanctionedpost_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for organization_levels
-- ----------------------------
DROP TABLE IF EXISTS `organization_levels`;
CREATE TABLE `organization_levels`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name_BN` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of organization_levels
-- ----------------------------
INSERT INTO `organization_levels` VALUES (1, 'National', 'জাতীয়');
INSERT INTO `organization_levels` VALUES (2, 'Divsional', 'বিভাগীয়');
INSERT INTO `organization_levels` VALUES (3, 'District', 'জেলা পর্যায়');
INSERT INTO `organization_levels` VALUES (4, 'Upazila', 'উপজেলা পর্যায়');

-- ----------------------------
-- Table structure for organization_types
-- ----------------------------
DROP TABLE IF EXISTS `organization_types`;
CREATE TABLE `organization_types`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name_BN` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `is_active` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of organization_types
-- ----------------------------
INSERT INTO `organization_types` VALUES (1, 'আবাসিক প্রশিক্ষণ কেন্দ্র', 'আবাসিক প্রশিক্ষণ কেন্দ্র', '1');
INSERT INTO `organization_types` VALUES (2, 'অনাবাসিক প্রশিক্ষণ কেন্দ্র', 'অনাবাসিক প্রশিক্ষণ কেন্দ্র', '1');
INSERT INTO `organization_types` VALUES (3, 'কর্মজীবী মহিলা হোস্টেল', 'কর্মজীবী মহিলা হোস্টেল', '1');
INSERT INTO `organization_types` VALUES (4, 'শিশু দিবাযত্ন কেন্দ্র', 'শিশু দিবাযত্ন কেন্দ্র', '1');
INSERT INTO `organization_types` VALUES (5, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', '1');
INSERT INTO `organization_types` VALUES (6, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়', '1');
INSERT INTO `organization_types` VALUES (7, 'হেড অফিস', 'হেড অফিস', '1');

-- ----------------------------
-- Table structure for organizations
-- ----------------------------
DROP TABLE IF EXISTS `organizations`;
CREATE TABLE `organizations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name_BN` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `agency_id` int(11) NULL DEFAULT NULL,
  `organization_type_id` int(11) NULL DEFAULT NULL,
  `organization_level_id` int(11) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `division_id` int(11) NULL DEFAULT NULL,
  `district_id` int(11) NULL DEFAULT NULL,
  `upazila_id` int(11) NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `contact_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` int(10) NULL DEFAULT NULL,
  `is_active` tinyint(1) NULL DEFAULT NULL,
  `updated_by` int(10) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 493 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of organizations
-- ----------------------------
INSERT INTO `organizations` VALUES (1, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আজমিরিগিঞ্জ, হবিগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আজমিরিগিঞ্জ, হবিগঞ্জ', 2, 6, 4, 'আজমিরিগিঞ্জ, হবিগঞ্জ', 7, 61, 515, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নবীগঞ্জ, হবিগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নবীগঞ্জ, হবিগঞ্জ', 2, 6, 4, 'নবীগঞ্জ, হবিগঞ্জ', 7, 61, 522, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (3, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালীগঞ্জ, লালমনিরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালীগঞ্জ, লালমনিরহাট', 2, 6, 4, 'কালীগঞ্জ, লালমনিরহাট', 4, 35, 488, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (4, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ধামরাই, ঢাকা।', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ধামরাই, ঢাকা।', 2, 6, 4, 'ধামরাই, ঢাকা।', 1, 1, 164, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (5, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নবাবগঞ্জ, ঢাকা।', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নবাবগঞ্জ, ঢাকা।', 2, 6, 4, 'নবাবগঞ্জ, ঢাকা।', 4, 31, 183, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (6, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কেরানীগঞ্জ, ঢাকা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কেরানীগঞ্জ, ঢাকা', 2, 6, 4, 'কেরানীগঞ্জ, ঢাকা', 1, 1, 177, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (7, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দোহার, ঢাকা।', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দোহার, ঢাকা।', 2, 6, 4, 'দোহার, ঢাকা।', 1, 1, 165, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (8, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাভার, ঢাকা।', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাভার, ঢাকা।', 2, 6, 4, 'সাভার, ঢাকা।', 1, 1, 190, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (9, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রুপগঞ্জ, নারায়ণগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রুপগঞ্জ, নারায়ণগঞ্জ', 2, 6, 4, 'রুপগঞ্জ, নারায়ণগঞ্জ', 1, 11, 277, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (10, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আড়াইহাজার, নারায়নগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আড়াইহাজার, নারায়নগঞ্জ', 2, 6, 4, 'আড়াইহাজার, নারায়নগঞ্জ', 1, 11, 273, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (11, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গজারিয়া,মুন্সীগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গজারিয়া,মুন্সীগঞ্জ', 2, 6, 4, 'গজারিয়া,মুন্সীগঞ্জ', 1, 9, 254, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (12, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,টঙ্গীবাড়ী, মুন্সিগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,টঙ্গীবাড়ী, মুন্সিগঞ্জ', 2, 6, 4, 'টঙ্গীবাড়ী, মুন্সিগঞ্জ', 1, 9, 259, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (13, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শ্রীনগর, মুন্সিগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শ্রীনগর, মুন্সিগঞ্জ', 2, 6, 4, 'শ্রীনগর, মুন্সিগঞ্জ', 1, 9, 258, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (14, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লৌহজং, মন্সিগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লৌহজং, মন্সিগঞ্জ', 2, 6, 4, 'লৌহজং, মন্সিগঞ্জ', 1, 9, 255, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (15, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সিরাজদিখান', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সিরাজদিখান', 2, 6, 4, 'সিরাজদিখান', 1, 9, 257, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (16, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শ্রীপুর, গাজীপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শ্রীপুর, গাজীপুর', 2, 6, 4, 'শ্রীপুর, গাজীপুর', 1, 3, 217, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (17, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালিয়াকৈর, গাজীপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালিয়াকৈর, গাজীপুর', 2, 6, 4, 'কালিয়াকৈর, গাজীপুর', 1, 3, 214, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (18, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাপাসিয়া, গাজীপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাপাসিয়া, গাজীপুর', 2, 6, 4, 'কাপাসিয়া, গাজীপুর', 1, 3, 216, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (19, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালিগঞ্জ, গাজীপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালিগঞ্জ, গাজীপুর', 2, 6, 4, 'কালিগঞ্জ, গাজীপুর', 1, 3, 215, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (20, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রায়পুরা, নরসিংদী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রায়পুরা, নরসিংদী', 2, 6, 4, 'রায়পুরা, নরসিংদী', 1, 12, 282, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (21, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পলাশ, নরসিংদী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পলাশ, নরসিংদী', 2, 6, 4, 'পলাশ, নরসিংদী', 1, 12, 281, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (22, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বেলাবো, নরসিংদী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বেলাবো, নরসিংদী', 2, 6, 4, 'বেলাবো, নরসিংদী', 1, 12, 278, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (23, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মনোহরদী, নরসিংদী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মনোহরদী, নরসিংদী', 2, 6, 4, 'মনোহরদী, নরসিংদী', 1, 12, 279, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (24, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শিবপুর, নরসিংদী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শিবপুর, নরসিংদী', 2, 6, 4, 'শিবপুর, নরসিংদী', 1, 12, 283, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (25, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সিংগাইর, মানিকগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সিংগাইর, মানিকগঞ্জ', 2, 6, 4, 'সিংগাইর, মানিকগঞ্জ', 1, 8, 253, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (26, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাটুরিয়া, মানিকগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাটুরিয়া, মানিকগঞ্জ', 2, 6, 4, 'সাটুরিয়া, মানিকগঞ্জ', 1, 8, 251, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (27, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শিবালয়, মানিকগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শিবালয়, মানিকগঞ্জ', 2, 6, 4, 'শিবালয়, মানিকগঞ্জ', 1, 8, 252, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (28, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হরিরামপুর, মানিকগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হরিরামপুর, মানিকগঞ্জ', 2, 6, 4, 'হরিরামপুর, মানিকগঞ্জ', 1, 8, 249, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (29, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দৌলতপুর, মানিকগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দৌলতপুর, মানিকগঞ্জ', 2, 6, 4, 'দৌলতপুর, মানিকগঞ্জ', 1, 8, 247, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (30, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঘিওর, মানিকগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঘিওর, মানিকগঞ্জ', 2, 6, 4, 'ঘিওর, মানিকগঞ্জ', 1, 8, 248, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (31, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,করিমগঞ্জ, কিশোরগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,করিমগঞ্জ, কিশোরগঞ্জ', 2, 6, 4, 'করিমগঞ্জ, কিশোরগঞ্জ', 1, 6, 235, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (32, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নিকলী, কিশোরগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নিকলী, কিশোরগঞ্জ', 2, 6, 4, 'নিকলী, কিশোরগঞ্জ', 1, 6, 240, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (33, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ইটনা, কিশোরগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ইটনা, কিশোরগঞ্জ', 2, 6, 4, 'ইটনা, কিশোরগঞ্জ', 1, 6, 234, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (34, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাকুন্দিয়া, কিশোরগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাকুন্দিয়া, কিশোরগঞ্জ', 2, 6, 4, 'পাকুন্দিয়া, কিশোরগঞ্জ', 1, 6, 241, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (35, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভৈরব, কিশোরগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভৈরব, কিশোরগঞ্জ', 2, 6, 4, 'ভৈরব, কিশোরগঞ্জ', 1, 6, 232, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (36, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কুলিয়ারচর, কিশোরগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কুলিয়ারচর, কিশোরগঞ্জ', 2, 6, 4, 'কুলিয়ারচর, কিশোরগঞ্জ', 1, 6, 238, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (37, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হোসেনপুর, কিশোরগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হোসেনপুর, কিশোরগঞ্জ', 2, 6, 4, 'হোসেনপুর, কিশোরগঞ্জ', 1, 6, 233, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (38, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কটিয়াদি, কিশোরগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কটিয়াদি, কিশোরগঞ্জ', 2, 6, 4, 'কটিয়াদি, কিশোরগঞ্জ', 1, 6, 236, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (39, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তাড়াইল, কিশোরগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তাড়াইল, কিশোরগঞ্জ', 2, 6, 4, 'তাড়াইল, কিশোরগঞ্জ', 1, 6, 242, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (40, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাজিতপুর, কিশোরগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাজিতপুর, কিশোরগঞ্জ', 2, 6, 4, 'বাজিতপুর, কিশোরগঞ্জ', 1, 6, 231, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (41, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,অষ্টগ্রাম, কিশোরগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,অষ্টগ্রাম, কিশোরগঞ্জ', 2, 6, 4, 'অষ্টগ্রাম, কিশোরগঞ্জ', 1, 6, 230, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (42, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মিঠামইন, কিশোরগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মিঠামইন, কিশোরগঞ্জ', 2, 6, 4, 'মিঠামইন, কিশোরগঞ্জ', 1, 6, 239, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (43, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মির্জাপুর, টাঙ্গাইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মির্জাপুর, টাঙ্গাইল', 2, 6, 4, 'মির্জাপুর, টাঙ্গাইল', 1, 17, 318, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (44, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দেলদুয়ার, টাঙ্গাইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দেলদুয়ার, টাঙ্গাইল', 2, 6, 4, 'দেলদুয়ার, টাঙ্গাইল', 1, 17, 312, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (45, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোপালপুর, টাঙ্গাইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোপালপুর, টাঙ্গাইল', 2, 6, 4, 'গোপালপুর, টাঙ্গাইল', 1, 17, 315, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (46, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালিহাতি, টাঙ্গাইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালিহাতি, টাঙ্গাইল', 2, 6, 4, 'কালিহাতি, টাঙ্গাইল', 1, 17, 316, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (47, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভূয়াপুর, টাঙ্গাইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভূয়াপুর, টাঙ্গাইল', 2, 6, 4, 'ভূয়াপুর, টাঙ্গাইল', 1, 17, 311, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (48, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সখিপুর, টাঙ্গাইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সখিপুর, টাঙ্গাইল', 2, 6, 4, 'সখিপুর, টাঙ্গাইল', 1, 17, 320, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (49, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাসাইল, টাঙ্গাইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাসাইল, টাঙ্গাইল', 2, 6, 4, 'বাসাইল, টাঙ্গাইল', 1, 17, 310, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (50, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঘাটাইল, টাঙ্গাইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঘাটাইল, টাঙ্গাইল', 2, 6, 4, 'ঘাটাইল, টাঙ্গাইল', 1, 17, 314, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (51, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাগরপুর, টাঙ্গাইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাগরপুর, টাঙ্গাইল', 2, 6, 4, 'নাগরপুর, টাঙ্গাইল', 1, 17, 319, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (52, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মধুপুর, টাঙ্গাইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মধুপুর, টাঙ্গাইল', 2, 6, 4, 'মধুপুর, টাঙ্গাইল', 1, 17, 317, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (53, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ধনবাড়ি, টাঙ্গাইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ধনবাড়ি, টাঙ্গাইল', 2, 6, 4, 'ধনবাড়ি, টাঙ্গাইল', 1, 17, 313, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (54, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নগরকান্দা, ফরিদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নগরকান্দা, ফরিদপুর', 2, 6, 4, 'নগরকান্দা, ফরিদপুর', 1, 2, 210, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (55, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আলফাডাঙ্গা,ফরিদপুর,আলফাডাঙ্গা, ফরিদপুর।', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আলফাডাঙ্গা,ফরিদপুর,আলফাডাঙ্গা, ফরিদপুর।', 2, 6, 4, 'আলফাডাঙ্গা, ফরিদপুর।', 1, 2, 204, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (56, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বোয়ালমারী, ফরিদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বোয়ালমারী, ফরিদপুর', 2, 6, 4, 'বোয়ালমারী, ফরিদপুর', 1, 2, 206, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (57, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভাঙ্গা, ফরিদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভাঙ্গা, ফরিদপুর', 2, 6, 4, 'ভাঙ্গা, ফরিদপুর', 1, 2, 205, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (58, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মধুখালী, ফরিদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মধুখালী, ফরিদপুর', 2, 6, 4, 'মধুখালী, ফরিদপুর', 1, 2, 209, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (59, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চরভ্রদাসন, ফরিদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চরভ্রদাসন, ফরিদপুর', 2, 6, 4, 'চরভ্রদাসন, ফরিদপুর', 1, 2, 207, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (60, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সালথা, ফরিদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সালথা, ফরিদপুর', 2, 6, 4, 'সালথা, ফরিদপুর', 1, 2, 212, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (61, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বালিয়াকান্দি, রাজবাড়ী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বালিয়াকান্দি, রাজবাড়ী', 2, 6, 4, 'বালিয়াকান্দি, রাজবাড়ী', 1, 14, 294, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (62, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাংশা, রাজবাড়ী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাংশা, রাজবাড়ী', 2, 6, 4, 'পাংশা, রাজবাড়ী', 1, 14, 297, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (63, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোসাইরহাট, শয়ীরতপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোসাইরহাট, শয়ীরতপুর', 2, 6, 4, 'গোসাইরহাট, শয়ীরতপুর', 1, 15, 301, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (64, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জাজিরা, শরীয়তপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জাজিরা, শরীয়তপুর', 2, 6, 4, 'জাজিরা, শরীয়তপুর', 1, 15, 304, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (65, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নড়িয়া, শরীয়তপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নড়িয়া, শরীয়তপুর', 2, 6, 4, 'নড়িয়া, শরীয়তপুর', 1, 15, 302, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (66, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভেদরগঞ্জ, শরীয়তপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভেদরগঞ্জ, শরীয়তপুর', 2, 6, 4, 'ভেদরগঞ্জ, শরীয়তপুর', 1, 15, 299, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (67, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ডামুড্যা, শরীয়তপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ডামুড্যা, শরীয়তপুর', 2, 6, 4, 'ডামুড্যা, শরীয়তপুর', 1, 15, 300, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (68, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কোটালীপাড়া, গোপালগঞ্জ‌', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কোটালীপাড়া, গোপালগঞ্জ‌', 2, 6, 4, 'কোটালীপাড়া, গোপালগঞ্জ‌', 1, 4, 220, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (69, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাশিয়ানী, গোপালগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাশিয়ানী, গোপালগঞ্জ', 2, 6, 4, 'কাশিয়ানী, গোপালগঞ্জ', 1, 4, 219, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (70, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,টুংগীপাড়া, গোপালগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,টুংগীপাড়া, গোপালগঞ্জ', 2, 6, 4, 'টুংগীপাড়া, গোপালগঞ্জ', 1, 4, 222, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (71, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মুকসুদপুর, গোপালগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মুকসুদপুর, গোপালগঞ্জ', 2, 6, 4, 'মুকসুদপুর, গোপালগঞ্জ', 1, 4, 221, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (72, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শিবচর, মাদারীপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শিবচর, মাদারীপুর', 2, 6, 4, 'শিবচর, মাদারীপুর', 1, 7, 246, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (73, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালকিনি, মাদারীপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালকিনি, মাদারীপুর', 2, 6, 4, 'কালকিনি, মাদারীপুর', 1, 7, 243, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (74, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাজৈর, মাদারীপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাজৈর, মাদারীপুর', 2, 6, 4, 'রাজৈর, মাদারীপুর', 1, 7, 245, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (75, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নান্দাইল, ময়মনসিংহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নান্দাইল, ময়মনসিংহ', 2, 6, 4, 'নান্দাইল, ময়মনসিংহ', 8, 10, 269, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (76, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভালুকা, ময়মনসিংহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভালুকা, ময়মনসিংহ', 2, 6, 4, 'ভালুকা, ময়মনসিংহ', 8, 10, 260, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (77, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মুক্তাগাছা, ময়মনসিংহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মুক্তাগাছা, ময়মনসিংহ', 2, 6, 4, 'মুক্তাগাছা, ময়মনসিংহ', 8, 10, 268, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (78, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ত্রিশাল, ময়মনসিংহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ত্রিশাল, ময়মনসিংহ', 2, 6, 4, 'ত্রিশাল, ময়মনসিংহ', 8, 10, 272, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (79, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঈশ্বরগঞ্জ, ময়মনসিংহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঈশ্বরগঞ্জ, ময়মনসিংহ', 2, 6, 4, 'ঈশ্বরগঞ্জ, ময়মনসিংহ', 8, 10, 266, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (80, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গৌরীপুর, ময়মনসিংহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গৌরীপুর, ময়মনসিংহ', 2, 6, 4, 'গৌরীপুর, ময়মনসিংহ', 8, 10, 264, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (81, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলপুর, ময়মনসিংহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলপুর, ময়মনসিংহ', 2, 6, 4, 'ফুলপুর, ময়মনসিংহ', 8, 10, 270, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (82, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলবাড়ীয়া, ময়মনসিংহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলবাড়ীয়া, ময়মনসিংহ', 2, 6, 4, 'ফুলবাড়ীয়া, ময়মনসিংহ', 8, 10, 262, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (83, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হালুয়াঘাট, ময়মনসিংহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হালুয়াঘাট, ময়মনসিংহ', 2, 6, 4, 'হালুয়াঘাট, ময়মনসিংহ', 8, 10, 265, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (84, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ধোবাউড়া, ময়মনসিংহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ধোবাউড়া, ময়মনসিংহ', 2, 6, 4, 'ধোবাউড়া, ময়মনসিংহ', 8, 10, 261, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (85, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তারাকান্দা, ময়মনসিংহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তারাকান্দা, ময়মনসিংহ', 2, 6, 4, 'তারাকান্দা, ময়মনসিংহ', 8, 10, 271, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (86, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ইসলামপুর, জামালপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ইসলামপুর, জামালপুর', 2, 6, 4, 'ইসলামপুর, জামালপুর', 8, 5, 225, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (87, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মেলান্দহ, জামালপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মেলান্দহ, জামালপুর', 2, 6, 4, 'মেলান্দহ, জামালপুর', 8, 5, 228, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (88, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দেওয়ানগঞ্জ, জামালপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দেওয়ানগঞ্জ, জামালপুর', 2, 6, 4, 'দেওয়ানগঞ্জ, জামালপুর', 8, 5, 224, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (89, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মাদারগঞ্জ, জামালপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মাদারগঞ্জ, জামালপুর', 2, 6, 4, 'মাদারগঞ্জ, জামালপুর', 8, 5, 227, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (90, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সরিষাবাড়ী, জামালপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সরিষাবাড়ী, জামালপুর', 2, 6, 4, 'সরিষাবাড়ী, জামালপুর', 8, 5, 229, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (91, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বকশিগঞ্জ, জামালপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বকশিগঞ্জ, জামালপুর', 2, 6, 4, 'বকশিগঞ্জ, জামালপুর', 8, 5, 223, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (92, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নালিতাবাড়ী, শেরপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নালিতাবাড়ী, শেরপুর', 2, 6, 4, 'নালিতাবাড়ী, শেরপুর', 8, 16, 307, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (93, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নকলা, শেরপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নকলা, শেরপুর', 2, 6, 4, 'নকলা, শেরপুর', 8, 16, 306, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (94, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শ্রীবর্দী, শেরপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শ্রীবর্দী, শেরপুর', 2, 6, 4, 'শ্রীবর্দী, শেরপুর', 8, 16, 309, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (95, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঝিনাইগাতী, শেরপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঝিনাইগাতী, শেরপুর', 2, 6, 4, 'ঝিনাইগাতী, শেরপুর', 8, 16, 305, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (96, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বারহাট্টা, নেত্রকোনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বারহাট্টা, নেত্রকোনা', 2, 6, 4, 'বারহাট্টা, নেত্রকোনা', 8, 13, 285, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (97, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মোহনগঞ্জ, নেত্রকোনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মোহনগঞ্জ, নেত্রকোনা', 2, 6, 4, 'মোহনগঞ্জ, নেত্রকোনা', 8, 13, 291, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (98, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আটপাড়া, নেত্রকোনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আটপাড়া, নেত্রকোনা', 2, 6, 4, 'আটপাড়া, নেত্রকোনা', 8, 13, 284, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (99, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কলমাকান্দা, নেত্রকোনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কলমাকান্দা, নেত্রকোনা', 2, 6, 4, 'কলমাকান্দা, নেত্রকোনা', 8, 13, 288, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (100, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পূর্বধলা, নেত্রকোনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পূর্বধলা, নেত্রকোনা', 2, 6, 4, 'পূর্বধলা, নেত্রকোনা', 8, 13, 293, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (101, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দূর্গাপুর, নেত্রকোনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দূর্গাপুর, নেত্রকোনা', 2, 6, 4, 'দূর্গাপুর, নেত্রকোনা', 8, 13, 286, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (102, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কেন্দুয়া, নেত্রকোনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কেন্দুয়া, নেত্রকোনা', 2, 6, 4, 'কেন্দুয়া, নেত্রকোনা', 8, 13, 289, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (103, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,খালিয়াজুরি, নেত্রকোনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,খালিয়াজুরি, নেত্রকোনা', 2, 6, 4, 'খালিয়াজুরি, নেত্রকোনা', 8, 13, 287, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (104, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বন্দর, নারায়নগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বন্দর, নারায়নগঞ্জ', 2, 6, 4, 'বন্দর, নারায়নগঞ্জ', 1, 11, 275, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (105, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সোনারগাঁও, নারায়নগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সোনারগাঁও, নারায়নগঞ্জ', 2, 6, 4, 'সোনারগাঁও, নারায়নগঞ্জ', 1, 11, 274, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (106, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মদন, নেত্রকোনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মদন, নেত্রকোনা', 2, 6, 4, 'মদন, নেত্রকোনা', 8, 13, 290, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (107, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গফরগাঁও, ময়মনসিংহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গফরগাঁও, ময়মনসিংহ', 2, 6, 4, 'গফরগাঁও, ময়মনসিংহ', 8, 10, 263, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (108, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাবুগঞ্জ, বরিশাল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাবুগঞ্জ, বরিশাল', 2, 6, 4, 'বাবুগঞ্জ, বরিশাল', 6, 56, 8, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (109, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গৌরনদী, বরিশাল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গৌরনদী, বরিশাল', 2, 6, 4, 'গৌরনদী, বরিশাল', 6, 56, 11, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (110, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাকেরগঞ্জ, বরিশাল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাকেরগঞ্জ, বরিশাল', 2, 6, 4, 'বাকেরগঞ্জ, বরিশাল', 6, 56, 9, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (111, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,উজিরপুর, বরিশাল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,উজিরপুর, বরিশাল', 2, 6, 4, 'উজিরপুর, বরিশাল', 6, 56, 16, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (112, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হিজলা, বরিশাল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হিজলা, বরিশাল', 2, 6, 4, 'হিজলা, বরিশাল', 6, 56, 12, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (113, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মূলাদী, বরিশাল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মূলাদী, বরিশাল', 2, 6, 4, 'মূলাদী, বরিশাল', 6, 56, 15, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (114, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মেহেন্দীগঞ্জ, বরিশাল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মেহেন্দীগঞ্জ, বরিশাল', 2, 6, 4, 'মেহেন্দীগঞ্জ, বরিশাল', 6, 56, 14, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (115, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বানারীপাড়া, বরিশাল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বানারীপাড়া, বরিশাল', 2, 6, 4, 'বানারীপাড়া, বরিশাল', 6, 56, 10, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (116, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আগৈলঝাড়া, বরিশাল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আগৈলঝাড়া, বরিশাল', 2, 6, 4, 'আগৈলঝাড়া, বরিশাল', 6, 56, 7, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (117, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বেতাগী, বরগুনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বেতাগী, বরগুনা', 2, 6, 4, 'বেতাগী, বরগুনা', 6, 55, 4, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (118, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাথরঘাটা, বরগুনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাথরঘাটা, বরগুনা', 2, 6, 4, 'পাথরঘাটা, বরগুনা', 6, 55, 5, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (119, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভান্ডারিয়া, পিরোজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভান্ডারিয়া, পিরোজপুর', 2, 6, 4, 'ভান্ডারিয়া, পিরোজপুর', 6, 60, 36, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (120, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাজিরপুর, পিরোজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাজিরপুর, পিরোজপুর', 2, 6, 4, 'নাজিরপুর, পিরোজপুর', 6, 60, 39, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (121, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মঠবাড়ীয়া, পিরোজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মঠবাড়ীয়া, পিরোজপুর', 2, 6, 4, 'মঠবাড়ীয়া, পিরোজপুর', 6, 60, 38, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (122, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ইন্দুরকানি, পিরোজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ইন্দুরকানি, পিরোজপুর', 2, 6, 4, 'ইন্দুরকানি, পিরোজপুর', 6, 60, 42, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (123, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাউখালি, পিরোজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাউখালি, পিরোজপুর', 2, 6, 4, 'কাউখালি, পিরোজপুর', 6, 60, 37, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (124, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নেছারাবাদ, পিরোজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নেছারাবাদ, পিরোজপুর', 2, 6, 4, 'নেছারাবাদ, পিরোজপুর', 6, 60, 41, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (125, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নলছিটি, ঝালকাঠি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নলছিটি, ঝালকাঠি', 2, 6, 4, 'নলছিটি, ঝালকাঠি', 6, 58, 26, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (126, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাজাপুর, ঝালকাঠি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাজাপুর, ঝালকাঠি', 2, 6, 4, 'রাজাপুর, ঝালকাঠি', 6, 58, 27, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (127, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাঠালিয়া, ঝালকাঠি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাঠালিয়া, ঝালকাঠি', 2, 6, 4, 'কাঠালিয়া, ঝালকাঠি', 6, 58, 25, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (128, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দৌলতখান, ভোলা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দৌলতখান, ভোলা', 2, 6, 4, 'দৌলতখান, ভোলা', 6, 57, 20, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (129, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বোরহানউদ্দিন', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বোরহানউদ্দিন', 2, 6, 4, 'বোরহানউদ্দিন', 6, 57, 18, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (130, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তজুমুদ্দিন, ভোলা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তজুমুদ্দিন, ভোলা', 2, 6, 4, 'তজুমুদ্দিন, ভোলা', 6, 57, 23, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (131, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মনপুরা, ভোলা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মনপুরা, ভোলা', 2, 6, 4, 'মনপুরা, ভোলা', 6, 57, 22, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (132, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লালমোহন, ভোলা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লালমোহন, ভোলা', 2, 6, 4, 'লালমোহন, ভোলা', 6, 57, 21, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (133, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চরফ্যাশন, ভোলা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চরফ্যাশন, ভোলা', 2, 6, 4, 'চরফ্যাশন, ভোলা', 6, 57, 19, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (134, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দশমিনা, পটুয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দশমিনা, পটুয়াখালী', 2, 6, 4, 'দশমিনা, পটুয়াখালী', 6, 59, 29, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (135, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কলাপাড়া, পটুয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কলাপাড়া, পটুয়াখালী', 2, 6, 4, 'কলাপাড়া, পটুয়াখালী', 6, 59, 32, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (136, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাউফল, পটুয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাউফল, পটুয়াখালী', 2, 6, 4, 'বাউফল, পটুয়াখালী', 6, 59, 28, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (137, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মির্জীগঞ্জ, পটুয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মির্জীগঞ্জ, পটুয়াখালী', 2, 6, 4, 'মির্জীগঞ্জ, পটুয়াখালী', 6, 59, 33, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (138, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দুমকি, পটুয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দুমকি, পটুয়াখালী', 2, 6, 4, 'দুমকি, পটুয়াখালী', 6, 59, 30, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (139, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গলাচিপা, পটুয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গলাচিপা, পটুয়াখালী', 2, 6, 4, 'গলাচিপা, পটুয়াখালী', 6, 59, 31, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (140, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাঙ্গাবালি, পটুয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাঙ্গাবালি, পটুয়াখালী', 2, 6, 4, 'রাঙ্গাবালি, পটুয়াখালী', 6, 59, 35, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (141, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হাটহাজারী, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হাটহাজারী, চট্টগ্রাম', 2, 6, 4, 'হাটহাজারী, চট্টগ্রাম', 2, 21, 78, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (142, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বোয়ালখালী, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বোয়ালখালী, চট্টগ্রাম', 2, 6, 4, 'বোয়ালখালী, চট্টগ্রাম', 2, 21, 71, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (143, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চন্দনাইশ, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চন্দনাইশ, চট্টগ্রাম', 2, 6, 4, 'চন্দনাইশ, চট্টগ্রাম', 2, 21, 72, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (144, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আনোয়ারা, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আনোয়ারা, চট্টগ্রাম', 2, 6, 4, 'আনোয়ারা, চট্টগ্রাম', 2, 21, 67, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (145, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাঁশখালী, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাঁশখালী, চট্টগ্রাম', 2, 6, 4, 'বাঁশখালী, চট্টগ্রাম', 2, 21, 69, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (146, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মিরসরাইল, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মিরসরাইল, চট্টগ্রাম', 2, 6, 4, 'মিরসরাইল, চট্টগ্রাম', 2, 21, 82, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (147, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফটিকছড়ি, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফটিকছড়ি, চট্টগ্রাম', 2, 6, 4, 'ফটিকছড়ি, চট্টগ্রাম', 2, 21, 76, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (148, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পটিয়া, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পটিয়া, চট্টগ্রাম', 2, 6, 4, 'পটিয়া, চট্টগ্রাম', 2, 21, 85, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (149, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লোহাগড়া, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লোহাগড়া, চট্টগ্রাম', 2, 6, 4, 'লোহাগড়া, চট্টগ্রাম', 2, 21, 81, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (150, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চকরিয়া, কক্সবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চকরিয়া, কক্সবাজার', 2, 6, 4, 'চকরিয়া, কক্সবাজার', 2, 23, 108, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (151, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পেকুয়া, কক্সবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পেকুয়া, কক্সবাজার', 2, 6, 4, 'পেকুয়া, কক্সবাজার', 2, 23, 108, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (152, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কুতুবদিয়া, কক্সবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কুতুবদিয়া, কক্সবাজার', 2, 6, 4, 'কুতুবদিয়া, কক্সবাজার', 2, 23, 110, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (153, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মহেশখালী, কক্সবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মহেশখালী, কক্সবাজার', 2, 6, 4, 'মহেশখালী, কক্সবাজার', 2, 23, 111, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (154, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রামু, কক্সবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রামু, কক্সবাজার', 2, 6, 4, 'রামু, কক্সবাজার', 2, 23, 113, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (155, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,উখিয়া,কক্সবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,উখিয়া,কক্সবাজার', 2, 6, 4, 'উখিয়া,কক্সবাজার', 2, 23, 115, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (156, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,টেকনাফ, কক্সবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,টেকনাফ, কক্সবাজার', 2, 6, 4, 'টেকনাফ, কক্সবাজার', 2, 23, 114, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (157, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বেগমগঞ্জ, নোয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বেগমগঞ্জ, নোয়াখালী', 2, 6, 4, 'বেগমগঞ্জ, নোয়াখালী', 2, 27, 135, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (158, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সোনাইমুড়ী, নোয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সোনাইমুড়ী, নোয়াখালী', 2, 6, 4, 'সোনাইমুড়ী, নোয়াখালী', 2, 27, 141, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (159, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চাটখিল, নোয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চাটখিল, নোয়াখালী', 2, 6, 4, 'চাটখিল, নোয়াখালী', 2, 27, 136, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (160, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সেনবাগ, নোয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সেনবাগ, নোয়াখালী', 2, 6, 4, 'সেনবাগ, নোয়াখালী', 2, 27, 140, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (161, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সুবর্ণচর, নোয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সুবর্ণচর, নোয়াখালী', 2, 6, 4, 'সুবর্ণচর, নোয়াখালী', 2, 27, 142, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (162, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হাতিয়া, নোয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হাতিয়া, নোয়াখালী', 2, 6, 4, 'হাতিয়া, নোয়াখালী', 2, 27, 138, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (163, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কবিরহাট,নোয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কবিরহাট,নোয়াখালী', 2, 6, 4, 'কবিরহাট,নোয়াখালী', 2, 27, 139, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (164, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দাগনভূইয়া, ফেনী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দাগনভূইয়া, ফেনী', 2, 6, 4, 'দাগনভূইয়া, ফেনী', 2, 24, 117, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (165, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সোনাগাজী, ফেনী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সোনাগাজী, ফেনী', 2, 6, 4, 'সোনাগাজী, ফেনী', 2, 24, 116, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (166, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলগাজী, ফেনী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলগাজী, ফেনী', 2, 6, 4, 'ফুলগাজী, ফেনী', 2, 24, 119, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (167, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পরশুরাম, ফেনী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পরশুরাম, ফেনী', 2, 6, 4, 'পরশুরাম, ফেনী', 2, 24, 120, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (168, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ছাগলনাইয়া, ফেনী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ছাগলনাইয়া, ফেনী', 2, 6, 4, 'ছাগলনাইয়া, ফেনী', 2, 24, 116, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (169, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রামগতি, লক্ষীপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রামগতি, লক্ষীপুর', 2, 6, 4, 'রামগতি, লক্ষীপুর', 2, 26, 134, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (170, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রামগঞ্জ, লক্ষীপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রামগঞ্জ, লক্ষীপুর', 2, 6, 4, 'রামগঞ্জ, লক্ষীপুর', 2, 26, 133, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (171, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রায়পুর, লক্ষীপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রায়পুর, লক্ষীপুর', 2, 6, 4, 'রায়পুর, লক্ষীপুর', 2, 26, 132, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (172, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কমলনগর, লক্ষীপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কমলনগর, লক্ষীপুর', 2, 6, 4, 'কমলনগর, লক্ষীপুর', 2, 26, 130, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (173, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তিতাস, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তিতাস, কুমিল্লা', 2, 6, 4, 'তিতাস, কুমিল্লা', 2, 22, 107, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (174, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চান্দিনা, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চান্দিনা, কুমিল্লা', 2, 6, 4, 'চান্দিনা, কুমিল্লা', 2, 22, 95, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (175, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মুরাদনগর, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মুরাদনগর, কুমিল্লা', 2, 6, 4, 'মুরাদনগর, কুমিল্লা', 2, 22, 105, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (176, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চৌদ্দগ্রাম, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চৌদ্দগ্রাম, কুমিল্লা', 2, 6, 4, 'চৌদ্দগ্রাম, কুমিল্লা', 2, 22, 96, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (177, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সদরদক্ষিণ, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সদরদক্ষিণ, কুমিল্লা', 2, 6, 4, 'সদরদক্ষিণ, কুমিল্লা', 2, 22, 97, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (178, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মনোহরগঞ্জ, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মনোহরগঞ্জ, কুমিল্লা', 2, 6, 4, 'মনোহরগঞ্জ, কুমিল্লা', 2, 22, 103, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (179, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আশুগঞ্জ,ব্রাহ্মণবাড়িয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আশুগঞ্জ,ব্রাহ্মণবাড়িয়া', 2, 6, 4, 'আশুগঞ্জ,ব্রাহ্মণবাড়িয়া', 2, 19, 50, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (180, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ব্রাহ্মণপাড়া, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ব্রাহ্মণপাড়া, কুমিল্লা', 2, 6, 4, 'ব্রাহ্মণপাড়া, কুমিল্লা', 2, 22, 93, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (181, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বুড়িচং, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বুড়িচং, কুমিল্লা', 2, 6, 4, 'বুড়িচং, কুমিল্লা', 2, 22, 94, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (182, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সরাইল,ব্রাহ্মণবাড়িয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সরাইল,ব্রাহ্মণবাড়িয়া', 2, 6, 4, 'সরাইল,ব্রাহ্মণবাড়িয়া', 2, 19, 58, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (183, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মেঘনা, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মেঘনা, কুমিল্লা', 2, 6, 4, 'মেঘনা, কুমিল্লা', 2, 22, 104, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (184, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লাকসাম, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লাকসাম, কুমিল্লা', 2, 6, 4, 'লাকসাম, কুমিল্লা', 2, 22, 102, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (185, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাঙ্গলকোর্ট, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাঙ্গলকোর্ট, কুমিল্লা', 2, 6, 4, 'নাঙ্গলকোর্ট, কুমিল্লা', 2, 22, 106, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (186, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দাউদকান্দি, কুৃমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দাউদকান্দি, কুৃমিল্লা', 2, 6, 4, 'দাউদকান্দি, কুৃমিল্লা', 2, 22, 98, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (187, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বরুড়া, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বরুড়া, কুমিল্লা', 2, 6, 4, 'বরুড়া, কুমিল্লা', 2, 22, 92, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (188, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কচুয়া, চাঁদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কচুয়া, চাঁদপুর', 2, 6, 4, 'কচুয়া, চাঁদপুর', 2, 20, 63, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (189, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হাজিগঞ্জ, চাঁদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হাজিগঞ্জ, চাঁদপুর', 2, 6, 4, 'হাজিগঞ্জ, চাঁদপুর', 2, 20, 62, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (190, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিজয়নগর,ব্রাহ্মণবাড়িয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিজয়নগর,ব্রাহ্মণবাড়িয়া', 2, 6, 4, 'বিজয়নগর,ব্রাহ্মণবাড়িয়া', 2, 19, 52, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (191, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শাহরাস্তি, চাঁদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শাহরাস্তি, চাঁদপুর', 2, 6, 4, 'শাহরাস্তি, চাঁদপুর', 2, 20, 66, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (192, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মতলব দক্ষিণ, চাঁদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মতলব দক্ষিণ, চাঁদপুর', 2, 6, 4, 'মতলব দক্ষিণ, চাঁদপুর', 2, 20, 64, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (193, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মতলব উত্তর, চাঁদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মতলব উত্তর, চাঁদপুর', 2, 6, 4, 'মতলব উত্তর, চাঁদপুর', 2, 20, 65, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (194, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফরিদগঞ্জ, চাঁদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফরিদগঞ্জ, চাঁদপুর', 2, 6, 4, 'ফরিদগঞ্জ, চাঁদপুর', 2, 20, 60, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (195, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হাইমচর, চাঁদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হাইমচর, চাঁদপুর', 2, 6, 4, 'হাইমচর, চাঁদপুর', 2, 20, 61, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (196, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দেবিদ্বার, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দেবিদ্বার, কুমিল্লা', 2, 6, 4, 'দেবিদ্বার, কুমিল্লা', 2, 22, 99, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (197, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আখাউড়া ,ব্রাহ্মণবাড়িয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আখাউড়া ,ব্রাহ্মণবাড়িয়া', 2, 6, 4, 'আখাউড়া ,ব্রাহ্মণবাড়িয়া', 2, 19, 50, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (198, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নবীনগর, ব্রাহ্মণবাড়িয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নবীনগর, ব্রাহ্মণবাড়িয়া', 2, 6, 4, 'নবীনগর, ব্রাহ্মণবাড়িয়া', 2, 19, 56, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (199, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাসিরনগর, ব্রাহ্মণবাড়িয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাসিরনগর, ব্রাহ্মণবাড়িয়া', 2, 6, 4, 'নাসিরনগর, ব্রাহ্মণবাড়িয়া', 2, 19, 57, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (200, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাঞ্চারামপুর, ব্রাহ্মণবাড়িয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাঞ্চারামপুর, ব্রাহ্মণবাড়িয়া', 2, 6, 4, 'বাঞ্চারামপুর, ব্রাহ্মণবাড়িয়া', 2, 19, 51, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (201, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কসবা, ব্রাহ্মণবাড়িয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কসবা, ব্রাহ্মণবাড়িয়া', 2, 6, 4, 'কসবা, ব্রাহ্মণবাড়িয়া', 2, 19, 55, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (202, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লংগদু, রাঙ্গামাটি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লংগদু, রাঙ্গামাটি', 2, 6, 4, 'লংগদু, রাঙ্গামাটি', 2, 28, 150, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (203, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাঘাইছড়ি, রাঙ্গামাটি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাঘাইছড়ি, রাঙ্গামাটি', 2, 6, 4, 'বাঘাইছড়ি, রাঙ্গামাটি', 2, 28, 144, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (204, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাপ্তাই, রাঙ্গামাটি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাপ্তাই, রাঙ্গামাটি', 2, 6, 4, 'কাপ্তাই, রাঙ্গামাটি', 2, 28, 148, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (205, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাউখালী, রাঙ্গামাটি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাউখালী, রাঙ্গামাটি', 2, 6, 4, 'কাউখালী, রাঙ্গামাটি', 2, 28, 146, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (206, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নানিয়ারচর, রাঙ্গামাটি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নানিয়ারচর, রাঙ্গামাটি', 2, 6, 4, 'নানিয়ারচর, রাঙ্গামাটি', 2, 28, 151, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (207, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জুরাইছড়ি, রাঙ্গামাটি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জুরাইছড়ি, রাঙ্গামাটি', 2, 6, 4, 'জুরাইছড়ি, রাঙ্গামাটি', 2, 28, 149, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (208, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বরকল, রাঙ্গামাটি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বরকল, রাঙ্গামাটি', 2, 6, 4, 'বরকল, রাঙ্গামাটি', 2, 28, 145, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (209, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাজস্থলী, রাঙ্গামাটি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাজস্থলী, রাঙ্গামাটি', 2, 6, 4, 'রাজস্থলী, রাঙ্গামাটি', 2, 28, 152, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (210, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিলাইছড়ি, রাঙ্গামাটি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিলাইছড়ি, রাঙ্গামাটি', 2, 6, 4, 'বিলাইছড়ি, রাঙ্গামাটি', 2, 28, 147, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (211, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লক্ষীছড়ি, খাগড়াছড়ি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লক্ষীছড়ি, খাগড়াছড়ি', 2, 6, 4, 'লক্ষীছড়ি, খাগড়াছড়ি', 2, 25, 124, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (212, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রামগড়, খাগড়াছড়ি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রামগড়, খাগড়াছড়ি', 2, 6, 4, 'রামগড়, খাগড়াছড়ি', 2, 25, 129, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (213, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পানছড়ি, খাগড়াছড়ি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পানছড়ি, খাগড়াছড়ি', 2, 6, 4, 'পানছড়ি, খাগড়াছড়ি', 2, 25, 128, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (214, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মহালছড়ি, খাগড়াছদি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মহালছড়ি, খাগড়াছদি', 2, 6, 4, 'মহালছড়ি, খাগড়াছদি', 2, 25, 125, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (215, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মাটিরাঙ্গা, খাগড়াছড়ি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মাটিরাঙ্গা, খাগড়াছড়ি', 2, 6, 4, 'মাটিরাঙ্গা, খাগড়াছড়ি', 2, 25, 127, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (216, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দীঘিনালা, খাগড়াছড়ি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দীঘিনালা, খাগড়াছড়ি', 2, 6, 4, 'দীঘিনালা, খাগড়াছড়ি', 2, 25, 122, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (217, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মানিকছড়ি, খাগড়াছড়ি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মানিকছড়ি, খাগড়াছড়ি', 2, 6, 4, 'মানিকছড়ি, খাগড়াছড়ি', 2, 25, 126, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (218, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লামা, বান্দরবান', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লামা, বান্দরবান', 2, 6, 4, 'লামা, বান্দরবান', 2, 18, 45, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (219, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আলীকদম, বান্দরবান', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আলীকদম, বান্দরবান', 2, 6, 4, 'আলীকদম, বান্দরবান', 2, 18, 43, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (220, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রুয়াংছড়ি, বান্দরবান', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রুয়াংছড়ি, বান্দরবান', 2, 6, 4, 'রুয়াংছড়ি, বান্দরবান', 2, 18, 47, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (221, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রুমা, বান্দরবান', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রুমা, বান্দরবান', 2, 6, 4, 'রুমা, বান্দরবান', 2, 18, 48, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (222, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,থানচি, বান্দরবান', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,থানচি, বান্দরবান', 2, 6, 4, 'থানচি, বান্দরবান', 2, 18, 49, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (223, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাইক্ষ্যাংছড়ি, বান্দরবান', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাইক্ষ্যাংছড়ি, বান্দরবান', 2, 6, 4, 'নাইক্ষ্যাংছড়ি, বান্দরবান', 2, 18, 46, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (224, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোদাগাড়ি, রাজশাহী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোদাগাড়ি, রাজশাহী', 2, 6, 4, 'গোদাগাড়ি, রাজশাহী', 3, 41, 440, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (225, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চারঘাট, রাজশাহী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চারঘাট, রাজশাহী', 2, 6, 4, 'চারঘাট, রাজশাহী', 3, 41, 438, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (226, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তানোর, রাজশাহী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তানোর, রাজশাহী', 2, 6, 4, 'তানোর, রাজশাহী', 3, 41, 447, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (227, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাগমারা, রাজশাহী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাগমারা, রাজশাহী', 2, 6, 4, 'বাগমারা, রাজশাহী', 3, 41, 436, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (228, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মোহনপুর, রাজশাহী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মোহনপুর, রাজশাহী', 2, 6, 4, 'মোহনপুর, রাজশাহী', 3, 41, 442, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (229, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পবা, রাজশাহী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পবা, রাজশাহী', 2, 6, 4, 'পবা, রাজশাহী', 3, 41, 443, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (230, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দূর্গাপুর, রাজশাহী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দূর্গাপুর, রাজশাহী', 2, 6, 4, 'দূর্গাপুর, রাজশাহী', 3, 41, 439, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (231, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পুটিয়া, রাজশাহী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পুটিয়া, রাজশাহী', 2, 6, 4, 'পুটিয়া, রাজশাহী', 3, 41, 444, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (232, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাঘা, রাজশাহী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাঘা, রাজশাহী', 2, 6, 4, 'বাঘা, রাজশাহী', 3, 41, 435, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (233, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লালপুর, নাটোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লালপুর, নাটোর', 2, 6, 4, 'লালপুর, নাটোর', 3, 37, 417, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (234, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সিংড়া, নাটোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সিংড়া, নাটোর', 2, 6, 4, 'সিংড়া, নাটোর', 3, 37, 420, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (235, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বড়াইগ্রাম, নাটোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বড়াইগ্রাম, নাটোর', 2, 6, 4, 'বড়াইগ্রাম, নাটোর', 3, 37, 415, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (236, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গুরুদাসপুর, নাটোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গুরুদাসপুর, নাটোর', 2, 6, 4, 'গুরুদাসপুর, নাটোর', 3, 37, 416, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (237, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাঘাতিপাড়া, নাটোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাঘাতিপাড়া, নাটোর', 2, 6, 4, 'বাঘাতিপাড়া, নাটোর', 3, 37, 414, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (238, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঈশ্বরদী, পাবনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঈশ্বরদী, পাবনা', 2, 6, 4, 'ঈশ্বরদী, পাবনা', 3, 39, 431, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (239, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাথিয়া, পাবনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাথিয়া, পাবনা', 2, 6, 4, 'সাথিয়া, পাবনা', 3, 39, 433, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (240, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সুজানগর, পাবনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সুজানগর, পাবনা', 2, 6, 4, 'সুজানগর, পাবনা', 3, 39, 434, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (241, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফরিদপুর, পাবনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফরিদপুর, পাবনা', 2, 6, 4, 'ফরিদপুর, পাবনা', 3, 39, 430, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (242, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বেড়া, পাবনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বেড়া, পাবনা', 2, 6, 4, 'বেড়া, পাবনা', 3, 39, 427, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (243, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আটঘরিয়া, পাবনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আটঘরিয়া, পাবনা', 2, 6, 4, 'আটঘরিয়া, পাবনা', 3, 39, 426, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (244, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভাঙ্গুড়া, পাবনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভাঙ্গুড়া, পাবনা', 2, 6, 4, 'ভাঙ্গুড়া, পাবনা', 3, 39, 428, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (245, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চাটমোহর, পাবনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চাটমোহর, পাবনা', 2, 6, 4, 'চাটমোহর, পাবনা', 3, 39, 429, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (246, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাজীপুর, সিরাজগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাজীপুর, সিরাজগঞ্জ', 2, 6, 4, 'কাজীপুর, সিরাজগঞ্জ', 3, 43, 451, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (247, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তারাশ, সিরাজগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তারাশ, সিরাজগঞ্জ', 2, 6, 4, 'তারাশ, সিরাজগঞ্জ', 3, 43, 455, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (248, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চৌহালি, সিরাজগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চৌহালি, সিরাজগঞ্জ', 2, 6, 4, 'চৌহালি, সিরাজগঞ্জ', 3, 43, 449, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (249, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,উল্লাপাড়া, সিরাজগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,উল্লাপাড়া, সিরাজগঞ্জ', 2, 6, 4, 'উল্লাপাড়া, সিরাজগঞ্জ', 3, 43, 456, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (250, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শাহজাদপুর, সিরাজগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শাহজাদপুর, সিরাজগঞ্জ', 2, 6, 4, 'শাহজাদপুর, সিরাজগঞ্জ', 3, 43, 453, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (251, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বেলকুচি, সিরাজগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বেলকুচি, সিরাজগঞ্জ', 2, 6, 4, 'বেলকুচি, সিরাজগঞ্জ', 3, 43, 448, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (252, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রায়গঞ্জ, সিরাজগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রায়গঞ্জ, সিরাজগঞ্জ', 2, 6, 4, 'রায়গঞ্জ, সিরাজগঞ্জ', 3, 43, 452, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (253, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কামারখন্দ, সিরাজগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কামারখন্দ, সিরাজগঞ্জ', 2, 6, 4, 'কামারখন্দ, সিরাজগঞ্জ', 3, 43, 450, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (254, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শিবগঞ্জ, বগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শিবগঞ্জ, বগুড়া', 2, 6, 4, 'শিবগঞ্জ, বগুড়া', 3, 29, 396, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (255, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সারিয়াকান্দি, বগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সারিয়াকান্দি, বগুড়া', 2, 6, 4, 'সারিয়াকান্দি, বগুড়া', 3, 29, 393, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (256, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আদমদিঘী, বগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আদমদিঘী, বগুড়া', 2, 6, 4, 'আদমদিঘী, বগুড়া', 3, 29, 386, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (257, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নন্দীগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নন্দীগ্রাম', 2, 6, 4, 'নন্দীগ্রাম', 3, 29, 392, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (258, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ধুনট, বগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ধুনট, বগুড়া', 2, 6, 4, 'ধুনট, বগুড়া', 3, 29, 388, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (259, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ধুপচাচিয়া, বগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ধুপচাচিয়া, বগুড়া', 2, 6, 4, 'ধুপচাচিয়া, বগুড়া', 3, 29, 389, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (260, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গাবতলী, বগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গাবতলী, বগুড়া', 2, 6, 4, 'গাবতলী, বগুড়া', 3, 29, 388, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (261, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সোনাতলা, বগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সোনাতলা, বগুড়া', 2, 6, 4, 'সোনাতলা, বগুড়া', 3, 29, 397, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (262, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শাজাহানপুর, বগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শাজাহানপুর, বগুড়া', 2, 6, 4, 'শাজাহানপুর, বগুড়া', 3, 29, 394, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (263, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাহালু, বগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাহালু, বগুড়া', 2, 6, 4, 'কাহালু, বগুড়া', 3, 29, 391, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (264, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শেরপুর, বগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শেরপুর, বগুড়া', 2, 6, 4, 'শেরপুর, বগুড়া', 3, 29, 395, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (265, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভোলাহাট, চাঁপাইনবাবগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভোলাহাট, চাঁপাইনবাবগঞ্জ', 2, 6, 4, 'ভোলাহাট, চাঁপাইনবাবগঞ্জ', 3, 30, 421, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (266, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাচোল, চাঁপাইনবাবগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাচোল, চাঁপাইনবাবগঞ্জ', 2, 6, 4, 'নাচোল, চাঁপাইনবাবগঞ্জ', 3, 30, 423, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (267, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শিবগঞ্জ, চাঁপাইনবাবগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শিবগঞ্জ, চাঁপাইনবাবগঞ্জ', 2, 6, 4, 'শিবগঞ্জ, চাঁপাইনবাবগঞ্জ', 3, 30, 425, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (268, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোমস্তাপুর, চাঁপাইনবাবগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোমস্তাপুর, চাঁপাইনবাবগঞ্জ', 2, 6, 4, 'গোমস্তাপুর, চাঁপাইনবাবগঞ্জ', 3, 30, 422, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (269, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বদলগাছী, নওগাঁ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বদলগাছী, নওগাঁ', 2, 6, 4, 'বদলগাছী, নওগাঁ', 3, 36, 404, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (270, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নিয়ামতপুর, নওগাঁ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নিয়ামতপুর, নওগাঁ', 2, 6, 4, 'নিয়ামতপুর, নওগাঁ', 3, 36, 409, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (271, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আত্রাই, নওগাঁ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আত্রাই, নওগাঁ', 2, 6, 4, 'আত্রাই, নওগাঁ', 3, 36, 403, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (272, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রানীনগর, নওগাঁ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রানীনগর, নওগাঁ', 2, 6, 4, 'রানীনগর, নওগাঁ', 3, 36, 412, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (273, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পোরশা, নওগাঁ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পোরশা, নওগাঁ', 2, 6, 4, 'পোরশা, নওগাঁ', 3, 36, 411, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (274, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাপাহার, নওগাঁ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাপাহার, নওগাঁ', 2, 6, 4, 'সাপাহার, নওগাঁ', 3, 36, 413, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (275, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়, ধামুরহাট, নওগাঁ‌', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়, ধামুরহাট, নওগাঁ‌', 2, 6, 4, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়, ধামুরহাট, নওগাঁ‌', 3, 36, 405, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (276, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পত্নীতলা, নওগাঁ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পত্নীতলা, নওগাঁ', 2, 6, 4, 'পত্নীতলা, নওগাঁ', 3, 36, 410, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (277, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মান্দা, নওগাঁ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মান্দা, নওগাঁ', 2, 6, 4, 'মান্দা, নওগাঁ', 3, 36, 406, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (278, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাঁচবিবি, জয়পুরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাঁচবিবি, জয়পুরহাট', 2, 6, 4, 'পাঁচবিবি, জয়পুরহাট', 3, 33, 402, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (279, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আক্কেলপুর, জয়পুরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আক্কেলপুর, জয়পুরহাট', 2, 6, 4, 'আক্কেলপুর, জয়পুরহাট', 3, 33, 398, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (280, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালাই, জয়পুরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালাই, জয়পুরহাট', 2, 6, 4, 'কালাই, জয়পুরহাট', 3, 33, 400, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (281, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ক্ষেতলাল, জয়পুরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ক্ষেতলাল, জয়পুরহাট', 2, 6, 4, 'ক্ষেতলাল, জয়পুরহাট', 3, 33, 401, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (282, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দক্ষিণ সুরমা, সুনামগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দক্ষিণ সুরমা, সুনামগঞ্জ', 2, 6, 4, 'দক্ষিণ সুরমা, সুনামগঞ্জ', 7, 63, 532, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (283, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোয়াইনঘাট, সিলেট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোয়াইনঘাট, সিলেট', 2, 6, 4, 'গোয়াইনঘাট, সিলেট', 7, 64, 548, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (284, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কানাইঘাট, সিলেট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কানাইঘাট, সিলেট', 2, 6, 4, 'কানাইঘাট, সিলেট', 7, 64, 550, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (285, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিশ্বনাথ, সিলেট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিশ্বনাথ, সিলেট', 2, 6, 4, 'বিশ্বনাথ, সিলেট', 7, 64, 543, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (286, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফেঞ্চুগঞ্জ, সিলেট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফেঞ্চুগঞ্জ, সিলেট', 2, 6, 4, 'ফেঞ্চুগঞ্জ, সিলেট', 7, 64, 546, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (287, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কোম্পানীগঞ্জ, সিলেট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কোম্পানীগঞ্জ, সিলেট', 2, 6, 4, 'কোম্পানীগঞ্জ, সিলেট', 7, 64, 544, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (288, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জৈন্তাপুর, সিলেট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জৈন্তাপুর, সিলেট', 2, 6, 4, 'জৈন্তাপুর, সিলেট', 7, 64, 549, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (289, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিয়ানীবাজার, সিলেট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিয়ানীবাজার, সিলেট', 2, 6, 4, 'বিয়ানীবাজার, সিলেট', 7, 64, 542, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (290, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোলাপগঞ্জ, সিলেট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোলাপগঞ্জ, সিলেট', 2, 6, 4, 'গোলাপগঞ্জ, সিলেট', 7, 64, 547, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (291, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জকিগঞ্জ, সিলেট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জকিগঞ্জ, সিলেট', 2, 6, 4, 'জকিগঞ্জ, সিলেট', 7, 64, 552, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (292, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বালাগঞ্জ, সিলেট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বালাগঞ্জ, সিলেট', 2, 6, 4, 'বালাগঞ্জ, সিলেট', 7, 64, 541, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (293, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাহুবল, হবিগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাহুবল, হবিগঞ্জ', 2, 6, 4, 'বাহুবল, হবিগঞ্জ', 7, 61, 516, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (294, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বানিয়াচং, হবিগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বানিয়াচং, হবিগঞ্জ', 2, 6, 4, 'বানিয়াচং, হবিগঞ্জ', 7, 61, 517, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (295, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চুনারুঘাট, হবিগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চুনারুঘাট, হবিগঞ্জ', 2, 6, 4, 'চুনারুঘাট, হবিগঞ্জ', 7, 61, 518, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (296, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লাখাই, হবিগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লাখাই, হবিগঞ্জ', 2, 6, 4, 'লাখাই, হবিগঞ্জ', 7, 61, 520, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (297, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মাধবপুর, হবিগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মাধবপুর, হবিগঞ্জ', 2, 6, 4, 'মাধবপুর, হবিগঞ্জ', 7, 61, 521, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (298, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নবীগঞ্জ, হবিগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নবীগঞ্জ, হবিগঞ্জ', 2, 6, 4, 'নবীগঞ্জ, হবিগঞ্জ', 7, 61, 522, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (299, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আজমিরীগঞ্জ, হবিগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আজমিরীগঞ্জ, হবিগঞ্জ', 2, 6, 4, 'আজমিরীগঞ্জ, হবিগঞ্জ', 7, 61, 515, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (300, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দিরাই, সুনামগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দিরাই, সুনামগঞ্জ', 2, 6, 4, 'দিরাই, সুনামগঞ্জ', 7, 63, 533, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (301, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জগন্নাথপু, সুনামগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জগন্নাথপু, সুনামগঞ্জ', 2, 6, 4, 'জগন্নাথপু, সুনামগঞ্জ', 7, 63, 536, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (302, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তাহেরপুর, সুনামগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তাহেরপুর, সুনামগঞ্জ', 2, 6, 4, 'তাহেরপুর, সুনামগঞ্জ', 7, 63, 540, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (303, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দোয়ারাবাজার, সুনামগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দোয়ারাবাজার, সুনামগঞ্জ', 2, 6, 4, 'দোয়ারাবাজার, সুনামগঞ্জ', 7, 63, 535, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (304, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ধর্মপাশা, সুনামগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ধর্মপাশা, সুনামগঞ্জ', 2, 6, 4, 'ধর্মপাশা, সুনামগঞ্জ', 7, 63, 534, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (305, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিশ্বম্ভরপুর, সুনামগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিশ্বম্ভরপুর, সুনামগঞ্জ', 2, 6, 4, 'বিশ্বম্ভরপুর, সুনামগঞ্জ', 7, 63, 530, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (306, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ছাতক, সুনামগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ছাতক, সুনামগঞ্জ', 2, 6, 4, 'ছাতক, সুনামগঞ্জ', 7, 63, 531, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (307, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শাল্লা, সুনামগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শাল্লা, সুনামগঞ্জ', 2, 6, 4, 'শাল্লা, সুনামগঞ্জ', 7, 63, 538, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (308, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জামালগঞ্জ, সুনামগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জামালগঞ্জ, সুনামগঞ্জ', 2, 6, 4, 'জামালগঞ্জ, সুনামগঞ্জ', 7, 63, 530, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (309, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দক্ষিণ সুনামগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দক্ষিণ সুনামগঞ্জ', 2, 6, 4, 'দক্ষিণ সুনামগঞ্জ', 7, 63, 532, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (310, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কুলাউড়া, মৌলভীবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কুলাউড়া, মৌলভীবাজার', 2, 6, 4, 'কুলাউড়া, মৌলভীবাজার', 7, 62, 526, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (311, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কমলগঞ্জ, মৌলভীবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কমলগঞ্জ, মৌলভীবাজার', 2, 6, 4, 'কমলগঞ্জ, মৌলভীবাজার', 7, 62, 525, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (312, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শ্রীমঙ্গল, মৌলভীবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শ্রীমঙ্গল, মৌলভীবাজার', 2, 6, 4, 'শ্রীমঙ্গল, মৌলভীবাজার', 7, 62, 529, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (313, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বড়লেখা, মৌলভীবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বড়লেখা, মৌলভীবাজার', 2, 6, 4, 'বড়লেখা, মৌলভীবাজার', 7, 62, 523, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (314, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাজনগর, মৌলভীবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাজনগর, মৌলভীবাজার', 2, 6, 4, 'রাজনগর, মৌলভীবাজার', 7, 62, 528, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (315, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জুড়ী, মৌলভীবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জুড়ী, মৌলভীবাজার', 2, 6, 4, 'জুড়ী, মৌলভীবাজার', 7, 62, 524, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (316, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মিঠাপুকুর, রংপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মিঠাপুকুর, রংপুর', 2, 6, 4, 'মিঠাপুকুর, রংপুর', 4, 42, 506, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (317, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বন্দরগঞ্জ, রংপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বন্দরগঞ্জ, রংপুর', 2, 6, 4, 'বন্দরগঞ্জ, রংপুর', 4, 42, 502, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (318, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পীরগঞ্জ, রংপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পীরগঞ্জ, রংপুর', 2, 6, 4, 'পীরগঞ্জ, রংপুর', 4, 42, 508, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (319, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গংগাচড়া, রংপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গংগাচড়া, রংপুর', 2, 6, 4, 'গংগাচড়া, রংপুর', 4, 42, 503, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (320, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তারাগঞ্জ, রংপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তারাগঞ্জ, রংপুর', 2, 6, 4, 'তারাগঞ্জ, রংপুর', 4, 42, 509, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (321, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাউনিয়া, রংপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাউনিয়া, রংপুর', 2, 6, 4, 'কাউনিয়া, রংপুর', 4, 42, 504, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (322, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পীরগাছা, রংপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পীরগাছা, রংপুর', 2, 6, 4, 'পীরগাছা, রংপুর', 4, 42, 507, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (323, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সুন্দরগঞ্জ, গাইবান্ধা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সুন্দরগঞ্জ, গাইবান্ধা', 2, 6, 4, 'সুন্দরগঞ্জ, গাইবান্ধা', 4, 32, 476, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (324, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পলাশবাড়ী, গাইবান্ধা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পলাশবাড়ী, গাইবান্ধা', 2, 6, 4, 'পলাশবাড়ী, গাইবান্ধা', 4, 32, 473, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (325, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাঘাটা, গাইবান্ধা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাঘাটা, গাইবান্ধা', 2, 6, 4, 'সাঘাটা, গাইবান্ধা', 4, 32, 475, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (326, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাদুল্লাপুর, গাইবান্ধা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাদুল্লাপুর, গাইবান্ধা', 2, 6, 4, 'সাদুল্লাপুর, গাইবান্ধা', 4, 32, 474, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (327, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোবিন্দগঞ্জ, গাইবান্ধা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোবিন্দগঞ্জ, গাইবান্ধা', 2, 6, 4, 'গোবিন্দগঞ্জ, গাইবান্ধা', 4, 32, 472, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (328, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলছড়ি, গাইবান্ধা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলছড়ি, গাইবান্ধা', 2, 6, 4, 'ফুলছড়ি, গাইবান্ধা', 4, 32, 470, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (329, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চিলমারী, কুড়িগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চিলমারী, কুড়িগ্রাম', 2, 6, 4, 'চিলমারী, কুড়িগ্রাম', 4, 34, 479, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (330, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাজারহাট, কুড়িগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাজারহাট, কুড়িগ্রাম', 2, 6, 4, 'রাজারহাট, কুড়িগ্রাম', 4, 34, 483, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (331, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,উলিপুর, কুড়িগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,উলিপুর, কুড়িগ্রাম', 2, 6, 4, 'উলিপুর, কুড়িগ্রাম', 4, 34, 485, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (332, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভুরুঙ্গমারী, কুড়িগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভুরুঙ্গমারী, কুড়িগ্রাম', 2, 6, 4, 'ভুরুঙ্গমারী, কুড়িগ্রাম', 4, 34, 477, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (333, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাগেশ্বরী, কুড়িগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাগেশ্বরী, কুড়িগ্রাম', 2, 6, 4, 'নাগেশ্বরী, কুড়িগ্রাম', 4, 34, 482, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (334, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলবাড়ী, কুড়িগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলবাড়ী, কুড়িগ্রাম', 2, 6, 4, 'ফুলবাড়ী, কুড়িগ্রাম', 4, 34, 480, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (335, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাজিবপুর, কুড়িগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাজিবপুর, কুড়িগ্রাম', 2, 6, 4, 'রাজিবপুর, কুড়িগ্রাম', 4, 34, 478, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (336, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রৌমারী, কুড়িগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রৌমারী, কুড়িগ্রাম', 2, 6, 4, 'রৌমারী, কুড়িগ্রাম', 4, 34, 484, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (337, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সৈয়দপুর, নীলফামারী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সৈয়দপুর, নীলফামারী', 2, 6, 4, 'সৈয়দপুর, নীলফামারী', 4, 38, 496, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (338, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কিশোরগঞ্জ, নীলফামারী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কিশোরগঞ্জ, নীলফামারী', 2, 6, 4, 'কিশোরগঞ্জ, নীলফামারী', 4, 38, 494, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (339, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ডিমলা, নীলফামারী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ডিমলা, নীলফামারী', 2, 6, 4, 'ডিমলা, নীলফামারী', 4, 38, 491, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (340, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জলঢাকা, নীলফামারী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জলঢাকা, নীলফামারী', 2, 6, 4, 'জলঢাকা, নীলফামারী', 4, 38, 493, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (341, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হাতীবান্ধা, লালমনিরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হাতীবান্ধা, লালমনিরহাট', 2, 6, 4, 'হাতীবান্ধা, লালমনিরহাট', 4, 35, 487, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (342, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালিগঞ্জ, লালমনিরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালিগঞ্জ, লালমনিরহাট', 2, 6, 4, 'কালিগঞ্জ, লালমনিরহাট', 4, 35, 488, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (343, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আদিতমারী, লালমনিরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আদিতমারী, লালমনিরহাট', 2, 6, 4, 'আদিতমারী, লালমনিরহাট', 4, 35, 486, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (344, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাটগ্রাম, লালমনিরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাটগ্রাম, লালমনিরহাট', 2, 6, 4, 'পাটগ্রাম, লালমনিরহাট', 4, 35, 490, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (345, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চিরিরবন্দর, দিনাজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চিরিরবন্দর, দিনাজপুর', 2, 6, 4, 'চিরিরবন্দর, দিনাজপুর', 4, 31, 461, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (346, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হাকিমপুর, দিনাজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হাকিমপুর, দিনাজপুর', 2, 6, 4, 'হাকিমপুর, দিনাজপুর', 4, 31, 464, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (347, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নবাবগঞ্জ, দিনাজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নবাবগঞ্জ, দিনাজপুর', 2, 6, 4, 'নবাবগঞ্জ, দিনাজপুর', 4, 31, 468, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (348, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,খানসামা, দিনাজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,খানসামা, দিনাজপুর', 2, 6, 4, 'খানসামা, দিনাজপুর', 4, 31, 466, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (349, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বীরগঞ্জ, দিনাজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বীরগঞ্জ, দিনাজপুর', 2, 6, 4, 'বীরগঞ্জ, দিনাজপুর', 4, 31, 458, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (350, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিরল, দিনাজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিরল, দিনাজপুর', 2, 6, 4, 'বিরল, দিনাজপুর', 4, 31, 459, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (351, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাহারোল, দিনাজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাহারোল, দিনাজপুর', 2, 6, 4, 'কাহারোল, দিনাজপুর', 4, 31, 465, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (352, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাবর্তীপুর, দিনাজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাবর্তীপুর, দিনাজপুর', 2, 6, 4, 'পাবর্তীপুর, দিনাজপুর', 4, 31, 469, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (353, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঘোড়াঘাট, দিনাজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঘোড়াঘাট, দিনাজপুর', 2, 6, 4, 'ঘোড়াঘাট, দিনাজপুর', 4, 31, 463, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (354, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বোচাগঞ্জ, দিনাজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বোচাগঞ্জ, দিনাজপুর', 2, 6, 4, 'বোচাগঞ্জ, দিনাজপুর', 4, 31, 460, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (355, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলবাড়ী, দিনাজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলবাড়ী, দিনাজপুর', 2, 6, 4, 'ফুলবাড়ী, দিনাজপুর', 4, 31, 462, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (356, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিরামপুর, দিনাজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিরামপুর, দিনাজপুর', 2, 6, 4, 'বিরামপুর, দিনাজপুর', 4, 31, 457, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (357, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তেতুলিয়া, পঞ্চগড়', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তেতুলিয়া, পঞ্চগড়', 2, 6, 4, 'তেতুলিয়া, পঞ্চগড়', 4, 40, 501, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (358, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বোদা, পঞ্চগড়', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বোদা, পঞ্চগড়', 2, 6, 4, 'বোদা, পঞ্চগড়', 4, 40, 498, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (359, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আটোয়ারী, পঞ্চগড়', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আটোয়ারী, পঞ্চগড়', 2, 6, 4, 'আটোয়ারী, পঞ্চগড়', 4, 40, 497, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (360, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দেবীগঞ্জ, পঞ্চগড়', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দেবীগঞ্জ, পঞ্চগড়', 2, 6, 4, 'দেবীগঞ্জ, পঞ্চগড়', 4, 40, 499, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (361, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পীরগঞ্জ, ঠাকুরগাঁও', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পীরগঞ্জ, ঠাকুরগাঁও', 2, 6, 4, 'পীরগঞ্জ, ঠাকুরগাঁও', 4, 44, 512, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (362, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বালিয়াডাঙ্গি, ঠাকুরগাঁও', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বালিয়াডাঙ্গি, ঠাকুরগাঁও', 2, 6, 4, 'বালিয়াডাঙ্গি, ঠাকুরগাঁও', 4, 44, 510, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (363, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রানীশংকৈল, ঠাকুরগাঁও', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রানীশংকৈল, ঠাকুরগাঁও', 2, 6, 4, 'রানীশংকৈল, ঠাকুরগাঁও', 4, 44, 513, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (364, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হরিপুর, ঠাকুরগাঁও', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হরিপুর, ঠাকুরগাঁও', 2, 6, 4, 'হরিপুর, ঠাকুরগাঁও', 4, 44, 511, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (365, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বটিয়াঘাটা, খুলনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বটিয়াঘাটা, খুলনা', 2, 6, 4, 'বটিয়াঘাটা, খুলনা', 5, 49, 349, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (366, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তেরখাদা, খুলনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তেরখাদা, খুলনা', 2, 6, 4, 'তেরখাদা, খুলনা', 5, 49, 362, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (367, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রূপসা, খুলনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রূপসা, খুলনা', 2, 6, 4, 'রূপসা, খুলনা', 5, 49, 360, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (368, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলতলা, খুলনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলতলা, খুলনা', 2, 6, 4, 'ফুলতলা, খুলনা', 5, 49, 359, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (369, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাইকগাছা, খুলনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাইকগাছা, খুলনা', 2, 6, 4, 'পাইকগাছা, খুলনা', 5, 49, 358, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (370, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দিঘলিয়া, খুলনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দিঘলিয়া, খুলনা', 2, 6, 4, 'দিঘলিয়া, খুলনা', 5, 49, 353, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (371, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দা-কোপ, খুলনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দা-কোপ, খুলনা', 2, 6, 4, 'দা-কোপ, খুলনা', 5, 49, 350, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (372, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কয়রা, খুলনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কয়রা, খুলনা', 2, 6, 4, 'কয়রা, খুলনা', 5, 49, 357, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (373, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ডুমুরিয়া, খুলনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ডুমুরিয়া, খুলনা', 2, 6, 4, 'ডুমুরিয়া, খুলনা', 5, 49, 352, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (374, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রামপাল, বাগেরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রামপাল, বাগেরহাট', 2, 6, 4, 'রামপাল, বাগেরহাট', 5, 45, 329, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (375, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চিতলমারী, বাগেরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চিতলমারী, বাগেরহাট', 2, 6, 4, 'চিতলমারী, বাগেরহাট', 5, 45, 323, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (376, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কচুয়া, বাগেরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কচুয়া, বাগেরহাট', 2, 6, 4, 'কচুয়া, বাগেরহাট', 5, 45, 325, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (377, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মংলা, বাগেরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মংলা, বাগেরহাট', 2, 6, 4, 'মংলা, বাগেরহাট', 5, 45, 327, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (378, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফকিরহাট, বাগেরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফকিরহাট, বাগেরহাট', 2, 6, 4, 'ফকিরহাট, বাগেরহাট', 5, 45, 324, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (379, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মোল্লারহাট, বাগেরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মোল্লারহাট, বাগেরহাট', 2, 6, 4, 'মোল্লারহাট, বাগেরহাট', 5, 45, 326, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (380, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মোড়েলগঞ্জ, বাগেরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মোড়েলগঞ্জ, বাগেরহাট', 2, 6, 4, 'মোড়েলগঞ্জ, বাগেরহাট', 5, 45, 328, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (381, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শরলখোলা, বাগেরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শরলখোলা, বাগেরহাট', 2, 6, 4, 'শরলখোলা, বাগেরহাট', 5, 45, 330, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (382, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আশাশুনি, সাতক্ষীরা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আশাশুনি, সাতক্ষীরা', 2, 6, 4, 'আশাশুনি, সাতক্ষীরা', 5, 54, 379, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (383, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তালা, সাতক্ষীরা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তালা, সাতক্ষীরা', 2, 6, 4, 'তালা, সাতক্ষীরা', 5, 54, 385, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (384, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কলারোয়া, সাতক্ষীরা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কলারোয়া, সাতক্ষীরা', 2, 6, 4, 'কলারোয়া, সাতক্ষীরা', 5, 54, 381, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (385, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দেবহাটা, সাতক্ষীরা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দেবহাটা, সাতক্ষীরা', 2, 6, 4, 'দেবহাটা, সাতক্ষীরা', 5, 54, 380, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (386, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শ্যামনগর, সাতক্ষীরা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শ্যামনগর, সাতক্ষীরা', 2, 6, 4, 'শ্যামনগর, সাতক্ষীরা', 5, 54, 384, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (387, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালীগঞ্জ, সাতক্ষীরা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালীগঞ্জ, সাতক্ষীরা', 2, 6, 4, 'কালীগঞ্জ, সাতক্ষীরা', 5, 54, 382, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (388, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,অভয়নগর, যশোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,অভয়নগর, যশোর', 2, 6, 4, 'অভয়নগর, যশোর', 5, 47, 335, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (389, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কেশবপুর, যশোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কেশবপুর, যশোর', 2, 6, 4, 'কেশবপুর, যশোর', 5, 47, 339, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (390, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মনিরামপুর, যশোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মনিরামপুর, যশোর', 2, 6, 4, 'মনিরামপুর, যশোর', 5, 47, 341, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (391, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাঘারপাড়া, যশোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাঘারপাড়া, যশোর', 2, 6, 4, 'বাঘারপাড়া, যশোর', 5, 47, 336, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (392, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চৌগাছা, যশোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চৌগাছা, যশোর', 2, 6, 4, 'চৌগাছা, যশোর', 5, 47, 337, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (393, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঝিকরগাছা, যশোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঝিকরগাছা, যশোর', 2, 6, 4, 'ঝিকরগাছা, যশোর', 5, 47, 338, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (394, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শার্শা, যশোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শার্শা, যশোর', 2, 6, 4, 'শার্শা, যশোর', 5, 47, 342, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (395, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,খোকসা, কুষ্টিয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,খোকসা, কুষ্টিয়া', 2, 6, 4, 'খোকসা, কুষ্টিয়া', 5, 50, 365, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (396, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মিরপুর, কুষ্টিয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মিরপুর, কুষ্টিয়া', 2, 6, 4, 'মিরপুর, কুষ্টিয়া', 5, 50, 368, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (397, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কুমারখালী, কুষ্টিয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কুমারখালী, কুষ্টিয়া', 2, 6, 4, 'কুমারখালী, কুষ্টিয়া', 5, 50, 366, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (398, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভেড়ামারা, কুষ্টিয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভেড়ামারা, কুষ্টিয়া', 2, 6, 4, 'ভেড়ামারা, কুষ্টিয়া', 5, 50, 363, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (399, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দৌলতপুর, কুষ্টিয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দৌলতপুর, কুষ্টিয়া', 2, 6, 4, 'দৌলতপুর, কুষ্টিয়া', 5, 50, 364, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (400, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লোহাগড়া, নড়াইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লোহাগড়া, নড়াইল', 2, 6, 4, 'লোহাগড়া, নড়াইল', 5, 53, 377, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (401, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালিয়া, নড়াইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালিয়া, নড়াইল', 2, 6, 4, 'কালিয়া, নড়াইল', 5, 53, 376, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (402, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গাংনী, মেহেরপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গাংনী, মেহেরপুর', 2, 6, 4, 'গাংনী, মেহেরপুর', 5, 52, 373, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (403, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মুজিবনগর, মেহেরপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মুজিবনগর, মেহেরপুর', 2, 6, 4, 'মুজিবনগর, মেহেরপুর', 5, 52, 374, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (404, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শ্রীপুর, মাগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শ্রীপুর, মাগুড়া', 2, 6, 4, 'শ্রীপুর, মাগুড়া', 5, 51, 372, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (405, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শালিখা, মাগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শালিখা, মাগুড়া', 2, 6, 4, 'শালিখা, মাগুড়া', 5, 51, 371, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (406, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মোহাম্মদপুর, মাগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মোহাম্মদপুর, মাগুড়া', 2, 6, 4, 'মোহাম্মদপুর, মাগুড়া', 5, 51, 370, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (407, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দামুড়হুদা, চুয়াডাঙ্গা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দামুড়হুদা, চুয়াডাঙ্গা', 2, 6, 4, 'দামুড়হুদা, চুয়াডাঙ্গা', 5, 46, 333, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (408, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জীবননগর, চুয়াডাঙ্গা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জীবননগর, চুয়াডাঙ্গা', 2, 6, 4, 'জীবননগর, চুয়াডাঙ্গা', 5, 46, 334, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (409, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আলমডাঙ্গা, চুয়াডাঙ্গা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আলমডাঙ্গা, চুয়াডাঙ্গা', 2, 6, 4, 'আলমডাঙ্গা, চুয়াডাঙ্গা', 5, 46, 331, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (410, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালীগঞ্জ, ঝিনাইদহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালীগঞ্জ, ঝিনাইদহ', 2, 6, 4, 'কালীগঞ্জ, ঝিনাইদহ', 5, 48, 345, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (411, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কোটচাঁদপুর, ঝিনাইদহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কোটচাঁদপুর, ঝিনাইদহ', 2, 6, 4, 'কোটচাঁদপুর, ঝিনাইদহ', 5, 48, 346, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (412, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মহেশপুর, ঝিনাইদহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মহেশপুর, ঝিনাইদহ', 2, 6, 4, 'মহেশপুর, ঝিনাইদহ', 5, 48, 347, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (413, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শৈলকুপা, ঝিনাইদহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শৈলকুপা, ঝিনাইদহ', 2, 6, 4, 'শৈলকুপা, ঝিনাইদহ', 5, 48, 348, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (414, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হরিণাকুন্ডু, ঝিনাইদহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হরিণাকুন্ডু, ঝিনাইদহ', 2, 6, 4, 'হরিণাকুন্ডু, ঝিনাইদহ', 5, 48, 343, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (415, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কোম্পানীগঞ্জ, নোয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কোম্পানীগঞ্জ, নোয়াখালী', 2, 6, 4, 'কোম্পানীগঞ্জ, নোয়াখালী', 2, 27, 137, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (416, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আমতলী, বরগুনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আমতলী, বরগুনা', 2, 6, 4, 'আমতলী, বরগুনা', 6, 55, 1, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (417, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বামনা, বরগুনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বামনা, বরগুনা', 2, 6, 4, 'বামনা, বরগুনা', 6, 55, 2, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (418, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তালতলি, বরগুনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তালতলি, বরগুনা', 2, 6, 4, 'তালতলি, বরগুনা', 6, 55, 6, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (419, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নলডাঙ্গা, নাটোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নলডাঙ্গা, নাটোর', 2, 6, 4, 'নলডাঙ্গা, নাটোর', 3, 37, 418, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (420, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাউজান, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাউজান, চট্টগ্রাম', 2, 6, 4, 'রাউজান, চট্টগ্রাম', 2, 21, 87, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (421, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাতকানিয়া, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাতকানিয়া, চট্টগ্রাম', 2, 6, 4, 'সাতকানিয়া, চট্টগ্রাম', 2, 21, 90, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (422, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সীতাকুন্ডু, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সীতাকুন্ডু, চট্টগ্রাম', 2, 6, 4, 'সীতাকুন্ডু, চট্টগ্রাম', 2, 21, 91, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (423, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাগুনিয়া, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাগুনিয়া, চট্টগ্রাম', 2, 6, 4, 'রাগুনিয়া, চট্টগ্রাম', 2, 21, 87, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (424, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সন্দীপ, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সন্দীপ, চট্টগ্রাম', 2, 6, 4, 'সন্দীপ, চট্টগ্রাম', 2, 21, 89, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (425, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়, শ্রীপুর,শ্রীপুর, মাগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়, শ্রীপুর,শ্রীপুর, মাগুড়া', 2, 6, 4, 'শ্রীপুর, মাগুড়া', 5, 51, 372, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (426, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালীগঞ্জ, গাজীপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালীগঞ্জ, গাজীপুর,উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালীগঞ্জ, গাজীপুর', 2, 6, 4, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালীগঞ্জ, গাজীপুর', 1, 3, 215, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (427, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালিগঞ্জ, সাতক্ষীরা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালিগঞ্জ, সাতক্ষীরা', 2, 6, 4, 'কালিগঞ্জ, সাতক্ষীরা', 5, 54, 382, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (428, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়, গুইমারা, খাগড়াছড়ি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়, গুইমারা, খাগড়াছড়ি,উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়, গুইমারা, খাগড়াছড়ি', 2, 6, 4, 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়, গুইমারা, খাগড়াছড়ি', 2, 25, 553, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (429, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 9, 254, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (430, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 61, 515, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (431, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 1, 154, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (432, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 11, 273, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (433, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 9, 257, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (434, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 3, 213, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (435, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 12, 278, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (436, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 8, 247, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (437, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 6, 230, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (438, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 17, 321, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (439, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 2, 204, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (440, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 15, 299, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (441, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 4, 218, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (442, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 7, 243, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (443, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 10, 260, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (444, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 5, 223, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (445, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 29, 395, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (446, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 13, 284, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (447, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 56, 7, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (448, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 55, 1, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (449, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 60, 36, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (450, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 58, 24, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (451, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 57, 17, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (452, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 59, 28, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (453, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 21, 67, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (454, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 23, 108, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (455, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 27, 135, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (456, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 24, 116, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (457, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 26, 130, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (458, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 22, 92, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (459, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 19, 50, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (460, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 20, 59, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (461, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 28, 144, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (462, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 25, 122, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (463, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 18, 43, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (464, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 41, 435, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (465, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 39, 432, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (466, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 43, 448, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (467, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 25, 4, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (468, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 30, 421, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (469, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 36, 403, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (470, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 33, 398, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (471, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 64, 1, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (472, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 61, 515, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (473, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 63, 1, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (474, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 62, 523, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (475, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 42, 502, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (476, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 32, 470, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (477, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 34, 477, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (478, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 38, 491, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (479, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 35, 486, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (480, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 31, 183, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (481, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 40, 497, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (482, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 44, 510, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (483, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 49, 349, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (484, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 45, 322, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (485, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 47, 335, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (486, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 50, 363, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (487, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 53, 376, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (488, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 52, 373, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (489, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 51, 369, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (490, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 46, 331, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (491, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 48, 343, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');
INSERT INTO `organizations` VALUES (492, 'উপপরিচালকের কার্যালয়', 'উপপরিচালকের কার্যালয়', 2, 5, 3, NULL, NULL, 14, 294, NULL, NULL, '2020-12-18 12:25:29', NULL, 1, NULL, '2020-12-18 12:25:29');

-- ----------------------------
-- Table structure for posting
-- ----------------------------
DROP TABLE IF EXISTS `posting`;
CREATE TABLE `posting`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `division_id` int(11) NULL DEFAULT NULL,
  `district_id` int(11) NULL DEFAULT NULL,
  `upazila_id` int(11) NULL DEFAULT NULL,
  `organization_id` int(10) NULL DEFAULT NULL,
  `sanctionedpost_id` int(10) NULL DEFAULT NULL,
  `employee_id` int(10) NOT NULL,
  `type_of_posting` int(10) NULL DEFAULT NULL,
  `start_date` date NULL DEFAULT NULL,
  `end_date` date NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for poststatus
-- ----------------------------
DROP TABLE IF EXISTS `poststatus`;
CREATE TABLE `poststatus`  (
  `organization` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `designation` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `division` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `upazila` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `employee` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `mobile` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `STATUS` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of poststatus
-- ----------------------------
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'ঢাকা', 'রাজবাড়ী', 'বালিয়াকান্দি', 'আসমা খাতুন', '01911445858', 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আজমিরিগিঞ্জ, হবিগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'হবিগঞ্জ', 'আজমিরিগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নবীগঞ্জ, হবিগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'হবিগঞ্জ', 'নবীগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালীগঞ্জ, লালমনিরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'লালমনিরহাট', 'কালীগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ধামরাই, ঢাকা।', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'ঢাকা', 'ধামরাই', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নবাবগঞ্জ, ঢাকা।', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'দিনাজপুর', 'নবাবগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কেরানীগঞ্জ, ঢাকা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'ঢাকা', 'কেরানীগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দোহার, ঢাকা।', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'ঢাকা', 'দোহার', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাভার, ঢাকা।', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'ঢাকা', 'সাভার', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রুপগঞ্জ, নারায়ণগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'নারায়ণগঞ্জ', 'রূপগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আড়াইহাজার, নারায়নগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'নারায়ণগঞ্জ', 'আড়াইহাজার', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গজারিয়া,মুন্সীগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'মুন্সিগঞ্জ', 'গজারিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,টঙ্গীবাড়ী, মুন্সিগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'মুন্সিগঞ্জ', 'টুঙ্গিবাড়ী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শ্রীনগর, মুন্সিগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'মুন্সিগঞ্জ', 'শ্রীনগর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লৌহজং, মন্সিগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'মুন্সিগঞ্জ', 'লৌহজং', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সিরাজদিখান', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'মুন্সিগঞ্জ', 'সিরাজদিখান', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শ্রীপুর, গাজীপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'গাজীপুর', 'শ্রীপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালিয়াকৈর, গাজীপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'গাজীপুর', 'কালিয়াকৈর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাপাসিয়া, গাজীপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'গাজীপুর', 'কাপাসিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালিগঞ্জ, গাজীপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'গাজীপুর', 'কালিগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রায়পুরা, নরসিংদী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'নরসিংদী', 'রায়পুরা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পলাশ, নরসিংদী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'নরসিংদী', 'পলাশ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বেলাবো, নরসিংদী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'নরসিংদী', 'বেলাবো', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মনোহরদী, নরসিংদী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'নরসিংদী', 'মনোহরদী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শিবপুর, নরসিংদী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'নরসিংদী', 'শিবপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সিংগাইর, মানিকগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'মানিকগঞ্জ', 'শিংগাইর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাটুরিয়া, মানিকগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'মানিকগঞ্জ', 'সাটুরিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শিবালয়, মানিকগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'মানিকগঞ্জ', 'শিবালয়', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হরিরামপুর, মানিকগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'মানিকগঞ্জ', 'হরিরামপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দৌলতপুর, মানিকগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'মানিকগঞ্জ', 'দৌলতপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঘিওর, মানিকগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'মানিকগঞ্জ', 'ঘিওর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,করিমগঞ্জ, কিশোরগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'কিশোরগঞ্জ', 'করিমগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নিকলী, কিশোরগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'কিশোরগঞ্জ', 'নিক্‌লী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ইটনা, কিশোরগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'কিশোরগঞ্জ', 'ইটনা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাকুন্দিয়া, কিশোরগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'কিশোরগঞ্জ', 'পাকুন্দিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভৈরব, কিশোরগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'কিশোরগঞ্জ', 'ভৈরব', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কুলিয়ারচর, কিশোরগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'কিশোরগঞ্জ', 'কুলিয়ার চর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হোসেনপুর, কিশোরগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'কিশোরগঞ্জ', 'হোসেনপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কটিয়াদি, কিশোরগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'কিশোরগঞ্জ', 'কটিয়াদী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তাড়াইল, কিশোরগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'কিশোরগঞ্জ', 'তারাইল', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাজিতপুর, কিশোরগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'কিশোরগঞ্জ', 'বাজিতপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,অষ্টগ্রাম, কিশোরগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'কিশোরগঞ্জ', 'অষ্টগ্রাম', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মিঠামইন, কিশোরগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'কিশোরগঞ্জ', 'মিঠামইন', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মির্জাপুর, টাঙ্গাইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'টাঙ্গাইল', 'মির্জাপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দেলদুয়ার, টাঙ্গাইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'টাঙ্গাইল', 'দেলদুয়ার', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোপালপুর, টাঙ্গাইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'টাঙ্গাইল', 'গোপালপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালিহাতি, টাঙ্গাইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'টাঙ্গাইল', 'কালিহাতি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভূয়াপুর, টাঙ্গাইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'টাঙ্গাইল', 'ভূঞাপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সখিপুর, টাঙ্গাইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'টাঙ্গাইল', 'সখিপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাসাইল, টাঙ্গাইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'টাঙ্গাইল', 'বাসাইল', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঘাটাইল, টাঙ্গাইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'টাঙ্গাইল', 'ঘাটাইল', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাগরপুর, টাঙ্গাইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'টাঙ্গাইল', 'নাগরপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মধুপুর, টাঙ্গাইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'টাঙ্গাইল', 'মধুপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ধনবাড়ি, টাঙ্গাইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'টাঙ্গাইল', 'ধনবাড়ী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নগরকান্দা, ফরিদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'ফরিদপুর', 'নগরকান্দা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আলফাডাঙ্গা,ফরিদপুর,আলফাডাঙ্গা, ফরিদপুর।', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'ফরিদপুর', 'আল্‌ফাডাঙ্গা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বোয়ালমারী, ফরিদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'ফরিদপুর', 'বোয়ালমারী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভাঙ্গা, ফরিদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'ফরিদপুর', 'ভাংগা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মধুখালী, ফরিদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'ফরিদপুর', 'মধুখালী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চরভ্রদাসন, ফরিদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'ফরিদপুর', 'চর ভদ্রাশন', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সালথা, ফরিদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'ফরিদপুর', 'সালথা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বালিয়াকান্দি, রাজবাড়ী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'রাজবাড়ী', 'বালিয়াকান্দি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাংশা, রাজবাড়ী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'রাজবাড়ী', 'পাংশা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোসাইরহাট, শয়ীরতপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'শরীয়তপুর', 'গোসাইরহাট', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জাজিরা, শরীয়তপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'শরীয়তপুর', 'জাজিরা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নড়িয়া, শরীয়তপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'শরীয়তপুর', 'নড়িয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভেদরগঞ্জ, শরীয়তপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'শরীয়তপুর', 'ভেদরগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ডামুড্যা, শরীয়তপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'শরীয়তপুর', 'ডামুড্যা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কোটালীপাড়া, গোপালগঞ্জ‌', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'গোপালগঞ্জ', 'কোটালিপাড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাশিয়ানী, গোপালগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'গোপালগঞ্জ', 'কাশিয়ানী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,টুংগীপাড়া, গোপালগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'গোপালগঞ্জ', 'টংগীপাড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মুকসুদপুর, গোপালগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'গোপালগঞ্জ', 'মুকসুদপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শিবচর, মাদারীপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'মাদারীপুর', 'শিব্‌ চর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালকিনি, মাদারীপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'মাদারীপুর', 'কালকিনী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাজৈর, মাদারীপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'মাদারীপুর', 'রাজৈর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নান্দাইল, ময়মনসিংহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'ময়মনসিংহ', 'নান্দাইল', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভালুকা, ময়মনসিংহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'ময়মনসিংহ', 'ভালুকা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মুক্তাগাছা, ময়মনসিংহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'ময়মনসিংহ', 'মুক্তাগাছা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ত্রিশাল, ময়মনসিংহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'ময়মনসিংহ', 'ত্রিশাল', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঈশ্বরগঞ্জ, ময়মনসিংহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'ময়মনসিংহ', 'ঈশ্বরগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গৌরীপুর, ময়মনসিংহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'ময়মনসিংহ', 'গৌরীপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলপুর, ময়মনসিংহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'ময়মনসিংহ', 'ফুলপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলবাড়ীয়া, ময়মনসিংহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'ময়মনসিংহ', 'ফুলবাড়ীয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হালুয়াঘাট, ময়মনসিংহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'ময়মনসিংহ', 'হালুয়াঘাট', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ধোবাউড়া, ময়মনসিংহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'ময়মনসিংহ', 'ধোবাউড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তারাকান্দা, ময়মনসিংহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'ময়মনসিংহ', 'শেরপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ইসলামপুর, জামালপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'জামালপুর', 'ইসলামপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মেলান্দহ, জামালপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'জামালপুর', 'মেলান্দহ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দেওয়ানগঞ্জ, জামালপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'জামালপুর', 'দেওয়ানগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মাদারগঞ্জ, জামালপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'জামালপুর', 'মাদারগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সরিষাবাড়ী, জামালপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'জামালপুর', 'সরিষাবাড়ী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বকশিগঞ্জ, জামালপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'জামালপুর', 'বকশিগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নালিতাবাড়ী, শেরপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'শেরপুর', 'নালিতাবাড়ী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নকলা, শেরপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'শেরপুর', 'নকলা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শ্রীবর্দী, শেরপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'শেরপুর', 'শ্রীবর্দি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঝিনাইগাতী, শেরপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'শেরপুর', 'ঝিনাইঘাতি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বারহাট্টা, নেত্রকোনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'নেত্রকোনা', 'বারহাট্টা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মোহনগঞ্জ, নেত্রকোনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'নেত্রকোনা', 'মোহনগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আটপাড়া, নেত্রকোনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'নেত্রকোনা', 'আটপাড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কলমাকান্দা, নেত্রকোনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'নেত্রকোনা', 'কলমাকান্দা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পূর্বধলা, নেত্রকোনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'নেত্রকোনা', 'পূর্বধলা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দূর্গাপুর, নেত্রকোনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'নেত্রকোনা', 'দূর্গাপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কেন্দুয়া, নেত্রকোনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'নেত্রকোনা', 'কেন্দুয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,খালিয়াজুরি, নেত্রকোনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'নেত্রকোনা', 'খলিয়াজুরী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বন্দর, নারায়নগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'নারায়ণগঞ্জ', 'বন্দর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সোনারগাঁও, নারায়নগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'নারায়ণগঞ্জ', 'সোনারগাঁও', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মদন, নেত্রকোনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'নেত্রকোনা', 'মদন', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গফরগাঁও, ময়মনসিংহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ময়মনসিংহ', 'ময়মনসিংহ', 'গফরগাঁও', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাবুগঞ্জ, বরিশাল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'বরিশাল', 'বাবুগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গৌরনদী, বরিশাল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'বরিশাল', 'গৌরনদী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাকেরগঞ্জ, বরিশাল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'বরিশাল', 'বাকেরগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,উজিরপুর, বরিশাল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'বরিশাল', 'উজিরপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হিজলা, বরিশাল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'বরিশাল', 'হিজলা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মূলাদী, বরিশাল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'বরিশাল', 'মুলাদী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মেহেন্দীগঞ্জ, বরিশাল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'বরিশাল', 'মেহেন্দীগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বানারীপাড়া, বরিশাল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'বরিশাল', 'বানারী পাড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আগৈলঝাড়া, বরিশাল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'বরিশাল', 'আগৈলঝাড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বেতাগী, বরগুনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'বরগুনা', 'বেতাগী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাথরঘাটা, বরগুনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'বরগুনা', 'পাথরঘাটা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভান্ডারিয়া, পিরোজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'পিরোজপুর', 'ভান্ডারিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাজিরপুর, পিরোজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'পিরোজপুর', 'নাজিরপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মঠবাড়ীয়া, পিরোজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'পিরোজপুর', 'মঠবাড়ীয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ইন্দুরকানি, পিরোজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'পিরোজপুর', 'জিয়ানগর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাউখালি, পিরোজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'পিরোজপুর', 'কাউখালী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নেছারাবাদ, পিরোজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'পিরোজপুর', 'নেছারাবাদ(স্বরূপকাঠী)', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নলছিটি, ঝালকাঠি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'ঝালকাঠি', 'নলছিটি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাজাপুর, ঝালকাঠি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'ঝালকাঠি', 'রাজাপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাঠালিয়া, ঝালকাঠি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'ঝালকাঠি', 'কাঠালিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দৌলতখান, ভোলা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'ভোলা', 'দৌলত খান', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বোরহানউদ্দিন', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'ভোলা', 'বোরহানউদ্দীন', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তজুমুদ্দিন, ভোলা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'ভোলা', 'তজুমুদ্দিন', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মনপুরা, ভোলা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'ভোলা', 'মনপুরা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লালমোহন, ভোলা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'ভোলা', 'লালমোহন', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চরফ্যাশন, ভোলা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'ভোলা', 'চরফ্যাশন', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দশমিনা, পটুয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'পটুয়াখালী', 'দশ্‌মিনা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কলাপাড়া, পটুয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'পটুয়াখালী', 'কলাপাড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাউফল, পটুয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'পটুয়াখালী', 'বাউফল', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মির্জীগঞ্জ, পটুয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'পটুয়াখালী', 'মির্জাগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দুমকি, পটুয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'পটুয়াখালী', 'দুম্‌কী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গলাচিপা, পটুয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'পটুয়াখালী', 'গলাচিপা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাঙ্গাবালি, পটুয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'পটুয়াখালী', 'Rangabali', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হাটহাজারী, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'চট্টগ্রাম', 'হাটহাজারী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বোয়ালখালী, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'চট্টগ্রাম', 'বোয়ালখালী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চন্দনাইশ, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'চট্টগ্রাম', 'চন্দনাইশ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আনোয়ারা, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'চট্টগ্রাম', 'আনোয়ারা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাঁশখালী, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'চট্টগ্রাম', 'বাঁশখালী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মিরসরাইল, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'চট্টগ্রাম', 'মিরশরাই', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফটিকছড়ি, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'চট্টগ্রাম', 'ফটিকছড়ি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পটিয়া, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'চট্টগ্রাম', 'পটিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লোহাগড়া, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'চট্টগ্রাম', 'লোহাগড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চকরিয়া, কক্সবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'কক্সবাজার', 'চকরিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পেকুয়া, কক্সবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'কক্সবাজার', 'চকরিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কুতুবদিয়া, কক্সবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'কক্সবাজার', 'কুতুবদিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মহেশখালী, কক্সবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'কক্সবাজার', 'মহেশখালী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রামু, কক্সবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'কক্সবাজার', 'রামু', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,উখিয়া,কক্সবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'কক্সবাজার', 'উখিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,টেকনাফ, কক্সবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'কক্সবাজার', 'টেক্‌নাফ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বেগমগঞ্জ, নোয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'নোয়াখালী', 'বেগমগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সোনাইমুড়ী, নোয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'নোয়াখালী', 'সোনাইমুড়ি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চাটখিল, নোয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'নোয়াখালী', 'চাট্‌খিল', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সেনবাগ, নোয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'নোয়াখালী', 'সেনবাগ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সুবর্ণচর, নোয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'নোয়াখালী', 'সুবর্ণচর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হাতিয়া, নোয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'নোয়াখালী', 'হাতিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কবিরহাট,নোয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'নোয়াখালী', 'কবিরহাট', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দাগনভূইয়া, ফেনী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'ফেনী', 'দাগনভূঁঞা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সোনাগাজী, ফেনী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'ফেনী', 'ছাগলনাইয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলগাজী, ফেনী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'ফেনী', 'ফুলগাজী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পরশুরাম, ফেনী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'ফেনী', 'পরশুরাম', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ছাগলনাইয়া, ফেনী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'ফেনী', 'ছাগলনাইয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রামগতি, লক্ষীপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'লক্ষ্মীপুর', 'রামগতী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রামগঞ্জ, লক্ষীপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'লক্ষ্মীপুর', 'রামগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রায়পুর, লক্ষীপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'লক্ষ্মীপুর', 'রায়পুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কমলনগর, লক্ষীপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'লক্ষ্মীপুর', 'কমলনগর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তিতাস, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'কুমিল্লা', 'তিতাস', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চান্দিনা, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'কুমিল্লা', 'চন্দিনা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মুরাদনগর, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'কুমিল্লা', 'মুরাদনগর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চৌদ্দগ্রাম, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'কুমিল্লা', 'চৌদ্দগ্রাম', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সদরদক্ষিণ, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'কুমিল্লা', 'কুমিল্লা সদর দক্ষিণ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মনোহরগঞ্জ, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'কুমিল্লা', 'মনোহরগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আশুগঞ্জ,ব্রাহ্মণবাড়িয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'ব্রাহ্মণবাড়িয়া', 'আখাউড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ব্রাহ্মণপাড়া, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'কুমিল্লা', 'ব্রাক্ষ্মণ পাড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বুড়িচং, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'কুমিল্লা', 'বুড়িচং', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সরাইল,ব্রাহ্মণবাড়িয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'ব্রাহ্মণবাড়িয়া', 'সরাইল', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মেঘনা, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'কুমিল্লা', 'মেঘনা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লাকসাম, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'কুমিল্লা', 'লাকসাম', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাঙ্গলকোর্ট, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'কুমিল্লা', 'নাঙ্গলকোট', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দাউদকান্দি, কুৃমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'কুমিল্লা', 'দাউদকান্দি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বরুড়া, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'কুমিল্লা', 'বরুড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কচুয়া, চাঁদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'চাঁদপুর', 'কচুয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হাজিগঞ্জ, চাঁদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'চাঁদপুর', 'হাজীগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিজয়নগর,ব্রাহ্মণবাড়িয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'ব্রাহ্মণবাড়িয়া', 'বাকেরগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শাহরাস্তি, চাঁদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'চাঁদপুর', 'শাহরাস্তি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মতলব দক্ষিণ, চাঁদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'চাঁদপুর', 'মতলব দক্ষিণ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মতলব উত্তর, চাঁদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'চাঁদপুর', 'মতলব উত্তর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফরিদগঞ্জ, চাঁদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'চাঁদপুর', 'ফরিদগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হাইমচর, চাঁদপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'চাঁদপুর', 'হাইমচর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দেবিদ্বার, কুমিল্লা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'কুমিল্লা', 'দেবিদ্বার', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আখাউড়া ,ব্রাহ্মণবাড়িয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'ব্রাহ্মণবাড়িয়া', 'আখাউড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নবীনগর, ব্রাহ্মণবাড়িয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'ব্রাহ্মণবাড়িয়া', 'নবীনগর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাসিরনগর, ব্রাহ্মণবাড়িয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'ব্রাহ্মণবাড়িয়া', 'নাসিরনগর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাঞ্চারামপুর, ব্রাহ্মণবাড়িয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'ব্রাহ্মণবাড়িয়া', 'বাঞ্ছারামপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কসবা, ব্রাহ্মণবাড়িয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'ব্রাহ্মণবাড়িয়া', 'কস্‌বা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লংগদু, রাঙ্গামাটি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'রাঙ্গামাটি', 'লংগদু', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাঘাইছড়ি, রাঙ্গামাটি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'রাঙ্গামাটি', 'বাঘাইছড়ি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাপ্তাই, রাঙ্গামাটি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'রাঙ্গামাটি', 'কাপ্তাই', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাউখালী, রাঙ্গামাটি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'রাঙ্গামাটি', 'কাউখালী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নানিয়ারচর, রাঙ্গামাটি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'রাঙ্গামাটি', 'নানিয়ারচর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জুরাইছড়ি, রাঙ্গামাটি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'রাঙ্গামাটি', 'জুরাইছড়ি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বরকল, রাঙ্গামাটি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'রাঙ্গামাটি', 'বরকল', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাজস্থলী, রাঙ্গামাটি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'রাঙ্গামাটি', 'রাজস্থালী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিলাইছড়ি, রাঙ্গামাটি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'রাঙ্গামাটি', 'বিলাইছড়ি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লক্ষীছড়ি, খাগড়াছড়ি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'খাগড়াছড়ি', 'লক্ষীছড়ি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রামগড়, খাগড়াছড়ি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'খাগড়াছড়ি', 'রামগর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পানছড়ি, খাগড়াছড়ি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'খাগড়াছড়ি', 'পানছড়ি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মহালছড়ি, খাগড়াছদি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'খাগড়াছড়ি', 'মহালছড়ি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মাটিরাঙ্গা, খাগড়াছড়ি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'খাগড়াছড়ি', 'মাটিরাংগা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দীঘিনালা, খাগড়াছড়ি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'খাগড়াছড়ি', 'দিঘিনালা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মানিকছড়ি, খাগড়াছড়ি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'খাগড়াছড়ি', 'মানিকছড়ি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লামা, বান্দরবান', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'বান্দরবান', 'লামা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আলীকদম, বান্দরবান', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'বান্দরবান', 'আলীকদম', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রুয়াংছড়ি, বান্দরবান', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'বান্দরবান', 'রোয়াংছড়ি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রুমা, বান্দরবান', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'বান্দরবান', 'রুমা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,থানচি, বান্দরবান', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'বান্দরবান', 'থান্‌চি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাইক্ষ্যাংছড়ি, বান্দরবান', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'বান্দরবান', 'নাইক্ষ্যংছড়ি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোদাগাড়ি, রাজশাহী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'রাজশাহী', 'গোদাগাড়ী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চারঘাট, রাজশাহী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'রাজশাহী', 'চারঘাট', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তানোর, রাজশাহী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'রাজশাহী', 'তানোর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাগমারা, রাজশাহী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'রাজশাহী', 'বাগমারা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মোহনপুর, রাজশাহী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'রাজশাহী', 'মোহনপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পবা, রাজশাহী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'রাজশাহী', 'পবা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দূর্গাপুর, রাজশাহী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'রাজশাহী', 'দূর্গাপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পুটিয়া, রাজশাহী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'রাজশাহী', 'পুঠিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাঘা, রাজশাহী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'রাজশাহী', 'বাঘা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লালপুর, নাটোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'নাটোর', 'লালপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সিংড়া, নাটোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'নাটোর', 'সিংড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বড়াইগ্রাম, নাটোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'নাটোর', 'বড়ইগ্রাম', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গুরুদাসপুর, নাটোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'নাটোর', 'গুরুদাসপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাঘাতিপাড়া, নাটোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'নাটোর', 'বাগাতিপাড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঈশ্বরদী, পাবনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'পাবনা', 'ঈশ্বরদী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাথিয়া, পাবনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'পাবনা', 'সাঁথিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সুজানগর, পাবনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'পাবনা', 'সুজানগর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফরিদপুর, পাবনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'পাবনা', 'ফরিদপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বেড়া, পাবনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'পাবনা', 'বেড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আটঘরিয়া, পাবনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'পাবনা', 'আটঘরিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভাঙ্গুড়া, পাবনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'পাবনা', 'ভাংগুড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চাটমোহর, পাবনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'পাবনা', 'চাট্‌মোহর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাজীপুর, সিরাজগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'সিরাজগঞ্জ', 'কাজীপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তারাশ, সিরাজগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'সিরাজগঞ্জ', 'তাড়াশ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চৌহালি, সিরাজগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'সিরাজগঞ্জ', 'চৌহালী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,উল্লাপাড়া, সিরাজগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'সিরাজগঞ্জ', 'উল্লা পাড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শাহজাদপুর, সিরাজগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'সিরাজগঞ্জ', 'শাহাজাদপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বেলকুচি, সিরাজগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'সিরাজগঞ্জ', 'বেলকুচি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রায়গঞ্জ, সিরাজগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'সিরাজগঞ্জ', 'রায়গঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কামারখন্দ, সিরাজগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'সিরাজগঞ্জ', 'কামারখন্দ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শিবগঞ্জ, বগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'বগুড়া', 'শিব্‌গঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সারিয়াকান্দি, বগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'বগুড়া', 'সারিয়াকান্দি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আদমদিঘী, বগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'বগুড়া', 'আদমদিঘী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নন্দীগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'বগুড়া', 'নন্দীগ্রাম', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ধুনট, বগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'বগুড়া', 'ধুনট', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ধুপচাচিয়া, বগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'বগুড়া', 'ধুপচাঁচিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গাবতলী, বগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'বগুড়া', 'ধুনট', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সোনাতলা, বগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'বগুড়া', 'সোনাতলা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শাজাহানপুর, বগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'বগুড়া', 'শাহজাহানপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাহালু, বগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'বগুড়া', 'কাহালু', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শেরপুর, বগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'বগুড়া', 'শেরপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভোলাহাট, চাঁপাইনবাবগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'চাঁপাই নবাবগঞ্জ', 'ভোলাহাট', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাচোল, চাঁপাইনবাবগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'চাঁপাই নবাবগঞ্জ', 'নাচোল', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শিবগঞ্জ, চাঁপাইনবাবগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'চাঁপাই নবাবগঞ্জ', 'শিবগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোমস্তাপুর, চাঁপাইনবাবগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'চাঁপাই নবাবগঞ্জ', 'গোমস্তাপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বদলগাছী, নওগাঁ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'নওগাঁ', 'বদলগাছী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নিয়ামতপুর, নওগাঁ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'নওগাঁ', 'নিয়ামতপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আত্রাই, নওগাঁ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'নওগাঁ', 'আত্রাই', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রানীনগর, নওগাঁ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'নওগাঁ', 'রাণীনগর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পোরশা, নওগাঁ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'নওগাঁ', 'পোরশা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাপাহার, নওগাঁ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'নওগাঁ', 'সাপাহার', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়, ধামুরহাট, নওগাঁ‌', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'নওগাঁ', 'ধামুইরহাট', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পত্নীতলা, নওগাঁ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'নওগাঁ', 'পত্নীতলা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মান্দা, নওগাঁ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'নওগাঁ', 'মান্দা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাঁচবিবি, জয়পুরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'জয়পুরহাট', 'পাঁচবিবি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আক্কেলপুর, জয়পুরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'জয়পুরহাট', 'আক্কেলপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালাই, জয়পুরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'জয়পুরহাট', 'কালাই', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ক্ষেতলাল, জয়পুরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'জয়পুরহাট', 'ক্ষেতলাল', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দক্ষিণ সুরমা, সুনামগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'সুনামগঞ্জ', 'দক্ষিন সুনামগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোয়াইনঘাট, সিলেট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'সিলেট', 'গোয়াইনঘাট', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কানাইঘাট, সিলেট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'সিলেট', 'কানাইঘাট', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিশ্বনাথ, সিলেট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'সিলেট', 'বিশ্বনাথ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফেঞ্চুগঞ্জ, সিলেট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'সিলেট', 'ফেঞ্চুগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কোম্পানীগঞ্জ, সিলেট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'সিলেট', 'কোম্পানীগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জৈন্তাপুর, সিলেট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'সিলেট', 'জৈন্তাপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিয়ানীবাজার, সিলেট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'সিলেট', 'বিয়ানী বাজার', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোলাপগঞ্জ, সিলেট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'সিলেট', 'গোলাপগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জকিগঞ্জ, সিলেট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'সিলেট', 'জকিগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বালাগঞ্জ, সিলেট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'সিলেট', 'বালাগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাহুবল, হবিগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'হবিগঞ্জ', 'বাহুবল', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বানিয়াচং, হবিগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'হবিগঞ্জ', 'বানিয়াচং', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চুনারুঘাট, হবিগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'হবিগঞ্জ', 'চুনারুঘাট', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লাখাই, হবিগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'হবিগঞ্জ', 'লাখাই', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মাধবপুর, হবিগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'হবিগঞ্জ', 'মাধবপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নবীগঞ্জ, হবিগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'হবিগঞ্জ', 'নবীগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আজমিরীগঞ্জ, হবিগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'হবিগঞ্জ', 'আজমিরিগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দিরাই, সুনামগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'সুনামগঞ্জ', 'দিরাই', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জগন্নাথপু, সুনামগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'সুনামগঞ্জ', 'জগন্নাথপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তাহেরপুর, সুনামগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'সুনামগঞ্জ', 'তাহিরপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দোয়ারাবাজার, সুনামগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'সুনামগঞ্জ', 'দোয়ারাবাজার', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ধর্মপাশা, সুনামগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'সুনামগঞ্জ', 'ধর্মপাশা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিশ্বম্ভরপুর, সুনামগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'সুনামগঞ্জ', 'বিশ্বম্ভরপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ছাতক, সুনামগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'সুনামগঞ্জ', 'ছাতক', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শাল্লা, সুনামগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'সুনামগঞ্জ', 'শুল্লা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জামালগঞ্জ, সুনামগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'সুনামগঞ্জ', 'বিশ্বম্ভরপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দক্ষিণ সুনামগঞ্জ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'সুনামগঞ্জ', 'দক্ষিন সুনামগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কুলাউড়া, মৌলভীবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'মৌলভীবাজার', 'কুলাউড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কমলগঞ্জ, মৌলভীবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'মৌলভীবাজার', 'কমলগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শ্রীমঙ্গল, মৌলভীবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'মৌলভীবাজার', 'শ্রীমঙ্গল', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বড়লেখা, মৌলভীবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'মৌলভীবাজার', 'বড়লেখা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাজনগর, মৌলভীবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'মৌলভীবাজার', 'রাজনগর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জুড়ী, মৌলভীবাজার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'সিলেট', 'মৌলভীবাজার', 'জুড়ী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মিঠাপুকুর, রংপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'রংপুর', 'মিঠাপুকুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বন্দরগঞ্জ, রংপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'রংপুর', 'বদরগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পীরগঞ্জ, রংপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'রংপুর', 'পীরগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গংগাচড়া, রংপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'রংপুর', 'গংগাচড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তারাগঞ্জ, রংপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'রংপুর', 'তারাগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাউনিয়া, রংপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'রংপুর', 'কাউনিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পীরগাছা, রংপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'রংপুর', 'পীরগাছা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সুন্দরগঞ্জ, গাইবান্ধা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'গাইবান্ধা', 'সুন্দরগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পলাশবাড়ী, গাইবান্ধা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'গাইবান্ধা', 'পলাশবাড়ী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাঘাটা, গাইবান্ধা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'গাইবান্ধা', 'সাঘাটা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাদুল্লাপুর, গাইবান্ধা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'গাইবান্ধা', 'সাদুল্লাপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোবিন্দগঞ্জ, গাইবান্ধা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'গাইবান্ধা', 'গোবিন্দগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলছড়ি, গাইবান্ধা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'গাইবান্ধা', 'ফুলছড়ি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চিলমারী, কুড়িগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'কুড়িগ্রাম', 'চিলমারী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাজারহাট, কুড়িগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'কুড়িগ্রাম', 'রাজারহাট', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,উলিপুর, কুড়িগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'কুড়িগ্রাম', 'উলিপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভুরুঙ্গমারী, কুড়িগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'কুড়িগ্রাম', 'ভুরুংগামারী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাগেশ্বরী, কুড়িগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'কুড়িগ্রাম', 'নাগেশ্বরী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলবাড়ী, কুড়িগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'কুড়িগ্রাম', 'ফুলবাড়ী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাজিবপুর, কুড়িগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'কুড়িগ্রাম', 'রাজিবপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রৌমারী, কুড়িগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'কুড়িগ্রাম', 'রৌমারী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সৈয়দপুর, নীলফামারী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'নীলফামারী', 'সৈয়দপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কিশোরগঞ্জ, নীলফামারী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'নীলফামারী', 'কিশোরগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ডিমলা, নীলফামারী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'নীলফামারী', 'ডিমলা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জলঢাকা, নীলফামারী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'নীলফামারী', 'জলঢাকা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হাতীবান্ধা, লালমনিরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'লালমনিরহাট', 'হাতীবান্ধা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালিগঞ্জ, লালমনিরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'লালমনিরহাট', 'কালীগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আদিতমারী, লালমনিরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'লালমনিরহাট', 'আদিতমারী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাটগ্রাম, লালমনিরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'লালমনিরহাট', 'পাটগ্রাম', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চিরিরবন্দর, দিনাজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'দিনাজপুর', 'চিরিরবন্দর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হাকিমপুর, দিনাজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'দিনাজপুর', 'হাকিমপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নবাবগঞ্জ, দিনাজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'দিনাজপুর', 'নবাবগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,খানসামা, দিনাজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'দিনাজপুর', 'খান্‌সামা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বীরগঞ্জ, দিনাজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'দিনাজপুর', 'বীরগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিরল, দিনাজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'দিনাজপুর', 'বিরল', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাহারোল, দিনাজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'দিনাজপুর', 'কাহারোল', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাবর্তীপুর, দিনাজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'দিনাজপুর', 'পার্বতীপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঘোড়াঘাট, দিনাজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'দিনাজপুর', 'ঘোড়াঘাট', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বোচাগঞ্জ, দিনাজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'দিনাজপুর', 'বোচাগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলবাড়ী, দিনাজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'দিনাজপুর', 'ফুলবাড়ী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিরামপুর, দিনাজপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'দিনাজপুর', 'বিরামপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তেতুলিয়া, পঞ্চগড়', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'পঞ্চগড়', 'তেঁতুলিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বোদা, পঞ্চগড়', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'পঞ্চগড়', 'বোদা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আটোয়ারী, পঞ্চগড়', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'পঞ্চগড়', 'আটোয়ারী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দেবীগঞ্জ, পঞ্চগড়', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'পঞ্চগড়', 'দেবীগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পীরগঞ্জ, ঠাকুরগাঁও', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'ঠাকুরগাঁও', 'পীরগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বালিয়াডাঙ্গি, ঠাকুরগাঁও', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'ঠাকুরগাঁও', 'বালিয়াডাংগী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রানীশংকৈল, ঠাকুরগাঁও', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'ঠাকুরগাঁও', 'রানীশংকাইল', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হরিপুর, ঠাকুরগাঁও', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রংপুর', 'ঠাকুরগাঁও', 'হরিপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বটিয়াঘাটা, খুলনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'খুলনা', 'বটিয়াঘাটা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তেরখাদা, খুলনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'খুলনা', 'তেরখাদা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রূপসা, খুলনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'খুলনা', 'রূপসা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলতলা, খুলনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'খুলনা', 'ফুলতলা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাইকগাছা, খুলনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'খুলনা', 'পাইকগাছা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দিঘলিয়া, খুলনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'খুলনা', 'দিঘলিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দা-কোপ, খুলনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'খুলনা', 'দাকোপ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কয়রা, খুলনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'খুলনা', 'কয়রা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ডুমুরিয়া, খুলনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'খুলনা', 'ডুমুরিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রামপাল, বাগেরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'বাগেরহাট', 'রামপাল', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চিতলমারী, বাগেরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'বাগেরহাট', 'চিতলমারী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কচুয়া, বাগেরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'বাগেরহাট', 'কচুয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মংলা, বাগেরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'বাগেরহাট', 'মোংলা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফকিরহাট, বাগেরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'বাগেরহাট', 'ফকিরহাট', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মোল্লারহাট, বাগেরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'বাগেরহাট', 'মোল্লাহাট', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মোড়েলগঞ্জ, বাগেরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'বাগেরহাট', 'মোড়লগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শরলখোলা, বাগেরহাট', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'বাগেরহাট', 'শরণখোলা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আশাশুনি, সাতক্ষীরা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'সাতক্ষীরা', 'আশাশুনি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তালা, সাতক্ষীরা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'সাতক্ষীরা', 'তালা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কলারোয়া, সাতক্ষীরা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'সাতক্ষীরা', 'কলারোয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দেবহাটা, সাতক্ষীরা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'সাতক্ষীরা', 'দেবহাটা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শ্যামনগর, সাতক্ষীরা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'সাতক্ষীরা', 'শ্যামনগর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালীগঞ্জ, সাতক্ষীরা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'সাতক্ষীরা', 'কালিগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,অভয়নগর, যশোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'যশোর', 'অভয়নগর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কেশবপুর, যশোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'যশোর', 'কেশবপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মনিরামপুর, যশোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'যশোর', 'মনিরামপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাঘারপাড়া, যশোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'যশোর', 'বাঘারপাড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চৌগাছা, যশোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'যশোর', 'চৌগাছা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঝিকরগাছা, যশোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'যশোর', 'ঝিকরগাছা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শার্শা, যশোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'যশোর', 'শার্শা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,খোকসা, কুষ্টিয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'কুষ্টিয়া', 'খোক্‌সা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মিরপুর, কুষ্টিয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'কুষ্টিয়া', 'মিরপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কুমারখালী, কুষ্টিয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'কুষ্টিয়া', 'কুমারখালী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভেড়ামারা, কুষ্টিয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'কুষ্টিয়া', 'ভেড়ামারা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দৌলতপুর, কুষ্টিয়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'কুষ্টিয়া', 'দৌলতপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লোহাগড়া, নড়াইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'নড়াইল', 'লোহাগড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালিয়া, নড়াইল', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'নড়াইল', 'কালিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গাংনী, মেহেরপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'মেহেরপুর', 'গাংনী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মুজিবনগর, মেহেরপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'মেহেরপুর', 'মজিব নগর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শ্রীপুর, মাগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'মাগুরা', 'শ্রীপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শালিখা, মাগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'মাগুরা', 'শালিখা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মোহাম্মদপুর, মাগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'মাগুরা', 'মোহাম্মদপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দামুড়হুদা, চুয়াডাঙ্গা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'চুয়াডাঙ্গা', 'দামুরহুদা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জীবননগর, চুয়াডাঙ্গা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'চুয়াডাঙ্গা', 'জীবন নগর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আলমডাঙ্গা, চুয়াডাঙ্গা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'চুয়াডাঙ্গা', 'আলমডাংগা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালীগঞ্জ, ঝিনাইদহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'ঝিনাইদাহ', 'কালীগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কোটচাঁদপুর, ঝিনাইদহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'ঝিনাইদাহ', 'কোটচাঁদপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মহেশপুর, ঝিনাইদহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'ঝিনাইদাহ', 'মহেশপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শৈলকুপা, ঝিনাইদহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'ঝিনাইদাহ', 'শৈলকুপা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হরিণাকুন্ডু, ঝিনাইদহ', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'ঝিনাইদাহ', 'হরিনাকুন্ডু', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কোম্পানীগঞ্জ, নোয়াখালী', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'নোয়াখালী', 'কোম্পানীগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আমতলী, বরগুনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'বরগুনা', 'আমতলী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বামনা, বরগুনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'বরগুনা', 'বামনা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তালতলি, বরগুনা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'বরিশাল', 'বরগুনা', 'নাসিরনগর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নলডাঙ্গা, নাটোর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'রাজশাহী', 'নাটোর', 'পাহাড়তলী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাউজান, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'চট্টগ্রাম', 'রাংগুনীয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাতকানিয়া, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'চট্টগ্রাম', 'সাতকানিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সীতাকুন্ডু, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'চট্টগ্রাম', 'সীতাকুন্ড', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাগুনিয়া, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'চট্টগ্রাম', 'রাংগুনীয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সন্দীপ, চট্টগ্রাম', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'চট্টগ্রাম', 'সন্দ্বীপ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়, শ্রীপুর,শ্রীপুর, মাগুড়া', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'মাগুরা', 'শ্রীপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালীগঞ্জ, গাজীপুর', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'ঢাকা', 'গাজীপুর', 'কালিগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালিগঞ্জ, সাতক্ষীরা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'খুলনা', 'সাতক্ষীরা', 'কালিগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়, গুইমারা, খাগড়াছড়ি', 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'চট্টগ্রাম', 'খাগড়াছড়ি', NULL, NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'ঢাকা', 'মুন্সিগঞ্জ', 'গজারিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'সিলেট', 'হবিগঞ্জ', 'আজমিরিগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'ঢাকা', 'ঢাকা', 'আদাবর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'ঢাকা', 'নারায়ণগঞ্জ', 'আড়াইহাজার', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'ঢাকা', 'মুন্সিগঞ্জ', 'সিরাজদিখান', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'ঢাকা', 'গাজীপুর', 'গাজীপুর সদর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'ঢাকা', 'নরসিংদী', 'বেলাবো', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'ঢাকা', 'মানিকগঞ্জ', 'দৌলতপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'ঢাকা', 'কিশোরগঞ্জ', 'অষ্টগ্রাম', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'ঢাকা', 'টাঙ্গাইল', 'টাঙ্গাইল সদর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'ঢাকা', 'ফরিদপুর', 'আল্‌ফাডাঙ্গা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'ঢাকা', 'শরীয়তপুর', 'ভেদরগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'ঢাকা', 'গোপালগঞ্জ', 'গোপালগঞ্জ সদর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'ঢাকা', 'মাদারীপুর', 'কালকিনী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'ময়মনসিংহ', 'ময়মনসিংহ', 'ভালুকা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'ময়মনসিংহ', 'জামালপুর', 'বকশিগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'রাজশাহী', 'বগুড়া', 'শেরপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'ময়মনসিংহ', 'নেত্রকোনা', 'আটপাড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'বরিশাল', 'বরিশাল', 'আগৈলঝাড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'বরিশাল', 'বরগুনা', 'আমতলী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'বরিশাল', 'পিরোজপুর', 'ভান্ডারিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'বরিশাল', 'ঝালকাঠি', 'ঝালকাঠী সদর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'বরিশাল', 'ভোলা', 'ভোলা সদর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'বরিশাল', 'পটুয়াখালী', 'বাউফল', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'চট্টগ্রাম', 'চট্টগ্রাম', 'আনোয়ারা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'চট্টগ্রাম', 'কক্সবাজার', 'চকরিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'চট্টগ্রাম', 'নোয়াখালী', 'বেগমগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'চট্টগ্রাম', 'ফেনী', 'ছাগলনাইয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'চট্টগ্রাম', 'লক্ষ্মীপুর', 'কমলনগর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'চট্টগ্রাম', 'কুমিল্লা', 'বরুড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'চট্টগ্রাম', 'ব্রাহ্মণবাড়িয়া', 'আখাউড়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'চট্টগ্রাম', 'চাঁদপুর', 'চাঁদপুর সদর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'চট্টগ্রাম', 'রাঙ্গামাটি', 'বাঘাইছড়ি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'চট্টগ্রাম', 'খাগড়াছড়ি', 'দিঘিনালা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'চট্টগ্রাম', 'বান্দরবান', 'আলীকদম', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'রাজশাহী', 'রাজশাহী', 'বাঘা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'রাজশাহী', 'পাবনা', 'পাবনা সদর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'রাজশাহী', 'সিরাজগঞ্জ', 'বেলকুচি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'চট্টগ্রাম', 'খাগড়াছড়ি', 'বেতাগী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'রাজশাহী', 'চাঁপাই নবাবগঞ্জ', 'ভোলাহাট', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'রাজশাহী', 'নওগাঁ', 'আত্রাই', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'রাজশাহী', 'জয়পুরহাট', 'আক্কেলপুর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'সিলেট', 'সিলেট', 'আমতলী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'সিলেট', 'হবিগঞ্জ', 'আজমিরিগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'সিলেট', 'সুনামগঞ্জ', 'আমতলী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'সিলেট', 'মৌলভীবাজার', 'বড়লেখা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'রংপুর', 'রংপুর', 'বদরগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'রংপুর', 'গাইবান্ধা', 'ফুলছড়ি', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'রংপুর', 'কুড়িগ্রাম', 'ভুরুংগামারী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'রংপুর', 'নীলফামারী', 'ডিমলা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'রংপুর', 'লালমনিরহাট', 'আদিতমারী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'রংপুর', 'দিনাজপুর', 'নবাবগঞ্জ', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'রংপুর', 'পঞ্চগড়', 'আটোয়ারী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'রংপুর', 'ঠাকুরগাঁও', 'বালিয়াডাংগী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'খুলনা', 'খুলনা', 'বটিয়াঘাটা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'খুলনা', 'বাগেরহাট', 'বাগেরহাট সদর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'খুলনা', 'যশোর', 'অভয়নগর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'খুলনা', 'কুষ্টিয়া', 'ভেড়ামারা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'খুলনা', 'নড়াইল', 'কালিয়া', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'খুলনা', 'মেহেরপুর', 'গাংনী', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'খুলনা', 'মাগুরা', 'মাগুরা সদর', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'খুলনা', 'চুয়াডাঙ্গা', 'আলমডাংগা', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপপরিচালকের কার্যালয়', 'উপপরিচালক', 'খুলনা', 'ঝিনাইদাহ', 'হরিনাকুন্ডু', NULL, NULL, 'vacant');
INSERT INTO `poststatus` VALUES ('উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মুকসুদপুর, গোপালগঞ্জ', 'প্রোগ্রাম অফিসার', 'ঢাকা', 'গোপালগঞ্জ', 'মুকসুদপুর', NULL, NULL, 'Vacant');

-- ----------------------------
-- Table structure for promotion
-- ----------------------------
DROP TABLE IF EXISTS `promotion`;
CREATE TABLE `promotion`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `designation_id` int(10) NOT NULL,
  `grade` int(10) NULL DEFAULT NULL,
  `go_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `go_date` date NULL DEFAULT NULL,
  `employee_id` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for quotas
-- ----------------------------
DROP TABLE IF EXISTS `quotas`;
CREATE TABLE `quotas`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quotas
-- ----------------------------
INSERT INTO `quotas` VALUES (1, 'মুক্তিযোদ্ধা');
INSERT INTO `quotas` VALUES (2, 'প্রতিবন্ধী');

-- ----------------------------
-- Table structure for reason_of_postings
-- ----------------------------
DROP TABLE IF EXISTS `reason_of_postings`;
CREATE TABLE `reason_of_postings`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reason_of_postings
-- ----------------------------
INSERT INTO `reason_of_postings` VALUES (1, 'বদলী');
INSERT INTO `reason_of_postings` VALUES (2, 'পদোন্নতি');

-- ----------------------------
-- Table structure for religions
-- ----------------------------
DROP TABLE IF EXISTS `religions`;
CREATE TABLE `religions`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of religions
-- ----------------------------
INSERT INTO `religions` VALUES (1, 'ইসলাম');
INSERT INTO `religions` VALUES (2, 'হিন্দু');
INSERT INTO `religions` VALUES (3, 'খ্রিস্টান');

-- ----------------------------
-- Table structure for sanctionedposts
-- ----------------------------
DROP TABLE IF EXISTS `sanctionedposts`;
CREATE TABLE `sanctionedposts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agency_id` int(10) NOT NULL,
  `designation_id` int(10) NULL DEFAULT NULL,
  `designation_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '',
  `organization_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '',
  `division_id` int(11) NULL DEFAULT NULL,
  `district_id` int(11) NULL DEFAULT NULL,
  `upazila_id` int(11) NULL DEFAULT NULL,
  `organization_id` int(10) NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '',
  `created_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 495 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sanctionedposts
-- ----------------------------
INSERT INTO `sanctionedposts` VALUES (1, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আজমিরিগিঞ্জ, হবিগঞ্জ', 7, 61, 515, 1, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (2, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নবীগঞ্জ, হবিগঞ্জ', 7, 61, 522, 2, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (3, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালীগঞ্জ, লালমনিরহাট', 4, 35, 488, 3, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (4, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ধামরাই, ঢাকা।', 1, 1, 164, 4, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (5, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নবাবগঞ্জ, ঢাকা।', 4, 31, 183, 5, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (6, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কেরানীগঞ্জ, ঢাকা', 1, 1, 177, 6, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (7, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দোহার, ঢাকা।', 1, 1, 165, 7, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (8, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাভার, ঢাকা।', 1, 1, 190, 8, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (9, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রুপগঞ্জ, নারায়ণগঞ্জ', 1, 11, 277, 9, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (10, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আড়াইহাজার, নারায়নগঞ্জ', 1, 11, 273, 10, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (11, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গজারিয়া,মুন্সীগঞ্জ', 1, 9, 254, 11, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (12, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,টঙ্গীবাড়ী, মুন্সিগঞ্জ', 1, 9, 259, 12, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (13, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শ্রীনগর, মুন্সিগঞ্জ', 1, 9, 258, 13, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (14, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লৌহজং, মন্সিগঞ্জ', 1, 9, 255, 14, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (15, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সিরাজদিখান', 1, 9, 257, 15, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (16, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শ্রীপুর, গাজীপুর', 1, 3, 217, 16, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (17, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালিয়াকৈর, গাজীপুর', 1, 3, 214, 17, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (18, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাপাসিয়া, গাজীপুর', 1, 3, 216, 18, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (19, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালিগঞ্জ, গাজীপুর', 1, 3, 215, 19, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (20, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রায়পুরা, নরসিংদী', 1, 12, 282, 20, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (21, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পলাশ, নরসিংদী', 1, 12, 281, 21, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (22, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বেলাবো, নরসিংদী', 1, 12, 278, 22, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (23, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মনোহরদী, নরসিংদী', 1, 12, 279, 23, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (24, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শিবপুর, নরসিংদী', 1, 12, 283, 24, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (25, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সিংগাইর, মানিকগঞ্জ', 1, 8, 253, 25, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (26, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাটুরিয়া, মানিকগঞ্জ', 1, 8, 251, 26, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (27, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শিবালয়, মানিকগঞ্জ', 1, 8, 252, 27, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (28, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হরিরামপুর, মানিকগঞ্জ', 1, 8, 249, 28, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (29, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দৌলতপুর, মানিকগঞ্জ', 1, 8, 247, 29, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (30, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঘিওর, মানিকগঞ্জ', 1, 8, 248, 30, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (31, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,করিমগঞ্জ, কিশোরগঞ্জ', 1, 6, 235, 31, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (32, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নিকলী, কিশোরগঞ্জ', 1, 6, 240, 32, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (33, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ইটনা, কিশোরগঞ্জ', 1, 6, 234, 33, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (34, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাকুন্দিয়া, কিশোরগঞ্জ', 1, 6, 241, 34, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (35, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভৈরব, কিশোরগঞ্জ', 1, 6, 232, 35, 'Filled', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (36, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কুলিয়ারচর, কিশোরগঞ্জ', 1, 6, 238, 36, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (37, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হোসেনপুর, কিশোরগঞ্জ', 1, 6, 233, 37, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (38, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কটিয়াদি, কিশোরগঞ্জ', 1, 6, 236, 38, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (39, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তাড়াইল, কিশোরগঞ্জ', 1, 6, 242, 39, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (40, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাজিতপুর, কিশোরগঞ্জ', 1, 6, 231, 40, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (41, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,অষ্টগ্রাম, কিশোরগঞ্জ', 1, 6, 230, 41, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (42, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মিঠামইন, কিশোরগঞ্জ', 1, 6, 239, 42, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (43, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মির্জাপুর, টাঙ্গাইল', 1, 17, 318, 43, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (44, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দেলদুয়ার, টাঙ্গাইল', 1, 17, 312, 44, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (45, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোপালপুর, টাঙ্গাইল', 1, 17, 315, 45, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (46, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালিহাতি, টাঙ্গাইল', 1, 17, 316, 46, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (47, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভূয়াপুর, টাঙ্গাইল', 1, 17, 311, 47, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (48, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সখিপুর, টাঙ্গাইল', 1, 17, 320, 48, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (49, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাসাইল, টাঙ্গাইল', 1, 17, 310, 49, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (50, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঘাটাইল, টাঙ্গাইল', 1, 17, 314, 50, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (51, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাগরপুর, টাঙ্গাইল', 1, 17, 319, 51, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (52, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মধুপুর, টাঙ্গাইল', 1, 17, 317, 52, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (53, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ধনবাড়ি, টাঙ্গাইল', 1, 17, 313, 53, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (54, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নগরকান্দা, ফরিদপুর', 1, 2, 210, 54, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (55, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আলফাডাঙ্গা,ফরিদপুর,আলফাডাঙ্গা, ফরিদপুর।', 1, 2, 204, 55, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (56, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বোয়ালমারী, ফরিদপুর', 1, 2, 206, 56, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (57, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভাঙ্গা, ফরিদপুর', 1, 2, 205, 57, 'Filled', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (58, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মধুখালী, ফরিদপুর', 1, 2, 209, 58, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (59, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চরভ্রদাসন, ফরিদপুর', 1, 2, 207, 59, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (60, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সালথা, ফরিদপুর', 1, 2, 212, 60, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (61, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বালিয়াকান্দি, রাজবাড়ী', 1, 14, 294, 61, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (62, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাংশা, রাজবাড়ী', 1, 14, 297, 62, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (63, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোসাইরহাট, শয়ীরতপুর', 1, 15, 301, 63, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (64, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জাজিরা, শরীয়তপুর', 1, 15, 304, 64, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (65, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নড়িয়া, শরীয়তপুর', 1, 15, 302, 65, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (66, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভেদরগঞ্জ, শরীয়তপুর', 1, 15, 299, 66, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (67, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ডামুড্যা, শরীয়তপুর', 1, 15, 300, 67, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (68, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কোটালীপাড়া, গোপালগঞ্জ‌', 1, 4, 220, 68, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (69, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাশিয়ানী, গোপালগঞ্জ', 1, 4, 219, 69, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (70, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,টুংগীপাড়া, গোপালগঞ্জ', 1, 4, 222, 70, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (71, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মুকসুদপুর, গোপালগঞ্জ', 1, 4, 221, 71, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (72, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শিবচর, মাদারীপুর', 1, 7, 246, 72, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (73, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালকিনি, মাদারীপুর', 1, 7, 243, 73, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (74, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাজৈর, মাদারীপুর', 1, 7, 245, 74, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (75, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নান্দাইল, ময়মনসিংহ', 8, 10, 269, 75, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (76, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভালুকা, ময়মনসিংহ', 8, 10, 260, 76, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (77, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মুক্তাগাছা, ময়মনসিংহ', 8, 10, 268, 77, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (78, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ত্রিশাল, ময়মনসিংহ', 8, 10, 272, 78, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (79, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঈশ্বরগঞ্জ, ময়মনসিংহ', 8, 10, 266, 79, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (80, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গৌরীপুর, ময়মনসিংহ', 8, 10, 264, 80, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (81, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলপুর, ময়মনসিংহ', 8, 10, 270, 81, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (82, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলবাড়ীয়া, ময়মনসিংহ', 8, 10, 262, 82, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (83, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হালুয়াঘাট, ময়মনসিংহ', 8, 10, 265, 83, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (84, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ধোবাউড়া, ময়মনসিংহ', 8, 10, 261, 84, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (85, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তারাকান্দা, ময়মনসিংহ', 8, 10, 271, 85, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (86, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ইসলামপুর, জামালপুর', 8, 5, 225, 86, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (87, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মেলান্দহ, জামালপুর', 8, 5, 228, 87, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (88, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দেওয়ানগঞ্জ, জামালপুর', 8, 5, 224, 88, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (89, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মাদারগঞ্জ, জামালপুর', 8, 5, 227, 89, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (90, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সরিষাবাড়ী, জামালপুর', 8, 5, 229, 90, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (91, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বকশিগঞ্জ, জামালপুর', 8, 5, 223, 91, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (92, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নালিতাবাড়ী, শেরপুর', 8, 16, 307, 92, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (93, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নকলা, শেরপুর', 8, 16, 306, 93, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (94, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শ্রীবর্দী, শেরপুর', 8, 16, 309, 94, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (95, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঝিনাইগাতী, শেরপুর', 8, 16, 305, 95, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (96, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বারহাট্টা, নেত্রকোনা', 8, 13, 285, 96, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (97, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মোহনগঞ্জ, নেত্রকোনা', 8, 13, 291, 97, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (98, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আটপাড়া, নেত্রকোনা', 8, 13, 284, 98, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (99, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কলমাকান্দা, নেত্রকোনা', 8, 13, 288, 99, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (100, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পূর্বধলা, নেত্রকোনা', 8, 13, 293, 100, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (101, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দূর্গাপুর, নেত্রকোনা', 8, 13, 286, 101, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (102, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কেন্দুয়া, নেত্রকোনা', 8, 13, 289, 102, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (103, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,খালিয়াজুরি, নেত্রকোনা', 8, 13, 287, 103, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (104, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বন্দর, নারায়নগঞ্জ', 1, 11, 275, 104, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (105, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সোনারগাঁও, নারায়নগঞ্জ', 1, 11, 274, 105, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (106, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মদন, নেত্রকোনা', 8, 13, 290, 106, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (107, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গফরগাঁও, ময়মনসিংহ', 8, 10, 263, 107, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (108, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাবুগঞ্জ, বরিশাল', 6, 56, 8, 108, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (109, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গৌরনদী, বরিশাল', 6, 56, 11, 109, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (110, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাকেরগঞ্জ, বরিশাল', 6, 56, 9, 110, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (111, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,উজিরপুর, বরিশাল', 6, 56, 16, 111, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (112, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হিজলা, বরিশাল', 6, 56, 12, 112, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (113, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মূলাদী, বরিশাল', 6, 56, 15, 113, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (114, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মেহেন্দীগঞ্জ, বরিশাল', 6, 56, 14, 114, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (115, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বানারীপাড়া, বরিশাল', 6, 56, 10, 115, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (116, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আগৈলঝাড়া, বরিশাল', 6, 56, 7, 116, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (117, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বেতাগী, বরগুনা', 6, 55, 4, 117, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (118, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাথরঘাটা, বরগুনা', 6, 55, 5, 118, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (119, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভান্ডারিয়া, পিরোজপুর', 6, 60, 36, 119, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (120, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাজিরপুর, পিরোজপুর', 6, 60, 39, 120, 'Filled', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (121, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মঠবাড়ীয়া, পিরোজপুর', 6, 60, 38, 121, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (122, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ইন্দুরকানি, পিরোজপুর', 6, 60, 42, 122, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (123, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাউখালি, পিরোজপুর', 6, 60, 37, 123, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (124, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নেছারাবাদ, পিরোজপুর', 6, 60, 41, 124, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (125, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নলছিটি, ঝালকাঠি', 6, 58, 26, 125, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (126, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাজাপুর, ঝালকাঠি', 6, 58, 27, 126, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (127, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাঠালিয়া, ঝালকাঠি', 6, 58, 25, 127, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (128, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দৌলতখান, ভোলা', 6, 57, 20, 128, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (129, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বোরহানউদ্দিন', 6, 57, 18, 129, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (130, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তজুমুদ্দিন, ভোলা', 6, 57, 23, 130, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (131, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মনপুরা, ভোলা', 6, 57, 22, 131, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (132, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লালমোহন, ভোলা', 6, 57, 21, 132, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (133, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চরফ্যাশন, ভোলা', 6, 57, 19, 133, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (134, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দশমিনা, পটুয়াখালী', 6, 59, 29, 134, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (135, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কলাপাড়া, পটুয়াখালী', 6, 59, 32, 135, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (136, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাউফল, পটুয়াখালী', 6, 59, 28, 136, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (137, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মির্জীগঞ্জ, পটুয়াখালী', 6, 59, 33, 137, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (138, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দুমকি, পটুয়াখালী', 6, 59, 30, 138, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (139, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গলাচিপা, পটুয়াখালী', 6, 59, 31, 139, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (140, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাঙ্গাবালি, পটুয়াখালী', 6, 59, 35, 140, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (141, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হাটহাজারী, চট্টগ্রাম', 2, 21, 78, 141, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (142, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বোয়ালখালী, চট্টগ্রাম', 2, 21, 71, 142, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (143, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চন্দনাইশ, চট্টগ্রাম', 2, 21, 72, 143, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (144, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আনোয়ারা, চট্টগ্রাম', 2, 21, 67, 144, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (145, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাঁশখালী, চট্টগ্রাম', 2, 21, 69, 145, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (146, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মিরসরাইল, চট্টগ্রাম', 2, 21, 82, 146, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (147, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফটিকছড়ি, চট্টগ্রাম', 2, 21, 76, 147, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (148, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পটিয়া, চট্টগ্রাম', 2, 21, 85, 148, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (149, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লোহাগড়া, চট্টগ্রাম', 2, 21, 81, 149, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (150, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চকরিয়া, কক্সবাজার', 2, 23, 108, 150, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (151, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পেকুয়া, কক্সবাজার', 2, 23, 108, 151, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (152, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কুতুবদিয়া, কক্সবাজার', 2, 23, 110, 152, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (153, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মহেশখালী, কক্সবাজার', 2, 23, 111, 153, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (154, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রামু, কক্সবাজার', 2, 23, 113, 154, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (155, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,উখিয়া,কক্সবাজার', 2, 23, 115, 155, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (156, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,টেকনাফ, কক্সবাজার', 2, 23, 114, 156, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (157, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বেগমগঞ্জ, নোয়াখালী', 2, 27, 135, 157, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (158, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সোনাইমুড়ী, নোয়াখালী', 2, 27, 141, 158, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (159, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চাটখিল, নোয়াখালী', 2, 27, 136, 159, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (160, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সেনবাগ, নোয়াখালী', 2, 27, 140, 160, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (161, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সুবর্ণচর, নোয়াখালী', 2, 27, 142, 161, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (162, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হাতিয়া, নোয়াখালী', 2, 27, 138, 162, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (163, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কবিরহাট,নোয়াখালী', 2, 27, 139, 163, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (164, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দাগনভূইয়া, ফেনী', 2, 24, 117, 164, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (165, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সোনাগাজী, ফেনী', 2, 24, 116, 165, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (166, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলগাজী, ফেনী', 2, 24, 119, 166, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (167, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পরশুরাম, ফেনী', 2, 24, 120, 167, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (168, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ছাগলনাইয়া, ফেনী', 2, 24, 116, 168, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (169, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রামগতি, লক্ষীপুর', 2, 26, 134, 169, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (170, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রামগঞ্জ, লক্ষীপুর', 2, 26, 133, 170, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (171, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রায়পুর, লক্ষীপুর', 2, 26, 132, 171, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (172, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কমলনগর, লক্ষীপুর', 2, 26, 130, 172, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (173, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তিতাস, কুমিল্লা', 2, 22, 107, 173, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (174, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চান্দিনা, কুমিল্লা', 2, 22, 95, 174, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (175, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মুরাদনগর, কুমিল্লা', 2, 22, 105, 175, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (176, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চৌদ্দগ্রাম, কুমিল্লা', 2, 22, 96, 176, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (177, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সদরদক্ষিণ, কুমিল্লা', 2, 22, 97, 177, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (178, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মনোহরগঞ্জ, কুমিল্লা', 2, 22, 103, 178, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (179, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আশুগঞ্জ,ব্রাহ্মণবাড়িয়া', 2, 19, 50, 179, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (180, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ব্রাহ্মণপাড়া, কুমিল্লা', 2, 22, 93, 180, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (181, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বুড়িচং, কুমিল্লা', 2, 22, 94, 181, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (182, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সরাইল,ব্রাহ্মণবাড়িয়া', 2, 19, 58, 182, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (183, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মেঘনা, কুমিল্লা', 2, 22, 104, 183, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (184, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লাকসাম, কুমিল্লা', 2, 22, 102, 184, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (185, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাঙ্গলকোর্ট, কুমিল্লা', 2, 22, 106, 185, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (186, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দাউদকান্দি, কুৃমিল্লা', 2, 22, 98, 186, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (187, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বরুড়া, কুমিল্লা', 2, 22, 92, 187, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (188, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কচুয়া, চাঁদপুর', 2, 20, 63, 188, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (189, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হাজিগঞ্জ, চাঁদপুর', 2, 20, 62, 189, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (190, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিজয়নগর,ব্রাহ্মণবাড়িয়া', 2, 19, 52, 190, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (191, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শাহরাস্তি, চাঁদপুর', 2, 20, 66, 191, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (192, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মতলব দক্ষিণ, চাঁদপুর', 2, 20, 64, 192, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (193, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মতলব উত্তর, চাঁদপুর', 2, 20, 65, 193, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (194, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফরিদগঞ্জ, চাঁদপুর', 2, 20, 60, 194, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (195, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হাইমচর, চাঁদপুর', 2, 20, 61, 195, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (196, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দেবিদ্বার, কুমিল্লা', 2, 22, 99, 196, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (197, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আখাউড়া ,ব্রাহ্মণবাড়িয়া', 2, 19, 50, 197, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (198, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নবীনগর, ব্রাহ্মণবাড়িয়া', 2, 19, 56, 198, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (199, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাসিরনগর, ব্রাহ্মণবাড়িয়া', 2, 19, 57, 199, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (200, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাঞ্চারামপুর, ব্রাহ্মণবাড়িয়া', 2, 19, 51, 200, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (201, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কসবা, ব্রাহ্মণবাড়িয়া', 2, 19, 55, 201, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (202, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লংগদু, রাঙ্গামাটি', 2, 28, 150, 202, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (203, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাঘাইছড়ি, রাঙ্গামাটি', 2, 28, 144, 203, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (204, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাপ্তাই, রাঙ্গামাটি', 2, 28, 148, 204, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (205, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাউখালী, রাঙ্গামাটি', 2, 28, 146, 205, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (206, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নানিয়ারচর, রাঙ্গামাটি', 2, 28, 151, 206, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (207, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জুরাইছড়ি, রাঙ্গামাটি', 2, 28, 149, 207, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (208, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বরকল, রাঙ্গামাটি', 2, 28, 145, 208, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (209, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাজস্থলী, রাঙ্গামাটি', 2, 28, 152, 209, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (210, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিলাইছড়ি, রাঙ্গামাটি', 2, 28, 147, 210, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (211, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লক্ষীছড়ি, খাগড়াছড়ি', 2, 25, 124, 211, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (212, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রামগড়, খাগড়াছড়ি', 2, 25, 129, 212, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (213, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পানছড়ি, খাগড়াছড়ি', 2, 25, 128, 213, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (214, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মহালছড়ি, খাগড়াছদি', 2, 25, 125, 214, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (215, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মাটিরাঙ্গা, খাগড়াছড়ি', 2, 25, 127, 215, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (216, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দীঘিনালা, খাগড়াছড়ি', 2, 25, 122, 216, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (217, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মানিকছড়ি, খাগড়াছড়ি', 2, 25, 126, 217, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (218, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লামা, বান্দরবান', 2, 18, 45, 218, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (219, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আলীকদম, বান্দরবান', 2, 18, 43, 219, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (220, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রুয়াংছড়ি, বান্দরবান', 2, 18, 47, 220, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (221, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রুমা, বান্দরবান', 2, 18, 48, 221, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (222, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,থানচি, বান্দরবান', 2, 18, 49, 222, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (223, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাইক্ষ্যাংছড়ি, বান্দরবান', 2, 18, 46, 223, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (224, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোদাগাড়ি, রাজশাহী', 3, 41, 440, 224, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (225, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চারঘাট, রাজশাহী', 3, 41, 438, 225, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (226, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তানোর, রাজশাহী', 3, 41, 447, 226, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (227, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাগমারা, রাজশাহী', 3, 41, 436, 227, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (228, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মোহনপুর, রাজশাহী', 3, 41, 442, 228, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (229, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পবা, রাজশাহী', 3, 41, 443, 229, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (230, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দূর্গাপুর, রাজশাহী', 3, 41, 439, 230, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (231, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পুটিয়া, রাজশাহী', 3, 41, 444, 231, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (232, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাঘা, রাজশাহী', 3, 41, 435, 232, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (233, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লালপুর, নাটোর', 3, 37, 417, 233, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (234, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সিংড়া, নাটোর', 3, 37, 420, 234, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (235, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বড়াইগ্রাম, নাটোর', 3, 37, 415, 235, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (236, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গুরুদাসপুর, নাটোর', 3, 37, 416, 236, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (237, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাঘাতিপাড়া, নাটোর', 3, 37, 414, 237, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (238, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঈশ্বরদী, পাবনা', 3, 39, 431, 238, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (239, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাথিয়া, পাবনা', 3, 39, 433, 239, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (240, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সুজানগর, পাবনা', 3, 39, 434, 240, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (241, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফরিদপুর, পাবনা', 3, 39, 430, 241, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (242, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বেড়া, পাবনা', 3, 39, 427, 242, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (243, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আটঘরিয়া, পাবনা', 3, 39, 426, 243, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (244, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভাঙ্গুড়া, পাবনা', 3, 39, 428, 244, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (245, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চাটমোহর, পাবনা', 3, 39, 429, 245, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (246, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাজীপুর, সিরাজগঞ্জ', 3, 43, 451, 246, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (247, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তারাশ, সিরাজগঞ্জ', 3, 43, 455, 247, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (248, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চৌহালি, সিরাজগঞ্জ', 3, 43, 449, 248, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (249, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,উল্লাপাড়া, সিরাজগঞ্জ', 3, 43, 456, 249, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (250, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শাহজাদপুর, সিরাজগঞ্জ', 3, 43, 453, 250, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (251, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বেলকুচি, সিরাজগঞ্জ', 3, 43, 448, 251, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (252, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রায়গঞ্জ, সিরাজগঞ্জ', 3, 43, 452, 252, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (253, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কামারখন্দ, সিরাজগঞ্জ', 3, 43, 450, 253, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (254, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শিবগঞ্জ, বগুড়া', 3, 29, 396, 254, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (255, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সারিয়াকান্দি, বগুড়া', 3, 29, 393, 255, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (256, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আদমদিঘী, বগুড়া', 3, 29, 386, 256, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (257, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নন্দীগ্রাম', 3, 29, 392, 257, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (258, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ধুনট, বগুড়া', 3, 29, 388, 258, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (259, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ধুপচাচিয়া, বগুড়া', 3, 29, 389, 259, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (260, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গাবতলী, বগুড়া', 3, 29, 388, 260, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (261, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সোনাতলা, বগুড়া', 3, 29, 397, 261, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (262, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শাজাহানপুর, বগুড়া', 3, 29, 394, 262, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (263, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাহালু, বগুড়া', 3, 29, 391, 263, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (264, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শেরপুর, বগুড়া', 3, 29, 395, 264, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (265, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভোলাহাট, চাঁপাইনবাবগঞ্জ', 3, 30, 421, 265, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (266, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাচোল, চাঁপাইনবাবগঞ্জ', 3, 30, 423, 266, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (267, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শিবগঞ্জ, চাঁপাইনবাবগঞ্জ', 3, 30, 425, 267, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (268, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোমস্তাপুর, চাঁপাইনবাবগঞ্জ', 3, 30, 422, 268, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (269, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বদলগাছী, নওগাঁ', 3, 36, 404, 269, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (270, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নিয়ামতপুর, নওগাঁ', 3, 36, 409, 270, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (271, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আত্রাই, নওগাঁ', 3, 36, 403, 271, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (272, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রানীনগর, নওগাঁ', 3, 36, 412, 272, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (273, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পোরশা, নওগাঁ', 3, 36, 411, 273, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (274, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাপাহার, নওগাঁ', 3, 36, 413, 274, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (275, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়, ধামুরহাট, নওগাঁ‌', 3, 36, 405, 275, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (276, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পত্নীতলা, নওগাঁ', 3, 36, 410, 276, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (277, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মান্দা, নওগাঁ', 3, 36, 406, 277, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (278, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাঁচবিবি, জয়পুরহাট', 3, 33, 402, 278, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (279, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আক্কেলপুর, জয়পুরহাট', 3, 33, 398, 279, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (280, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালাই, জয়পুরহাট', 3, 33, 400, 280, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (281, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ক্ষেতলাল, জয়পুরহাট', 3, 33, 401, 281, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (282, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দক্ষিণ সুরমা, সুনামগঞ্জ', 7, 63, 532, 282, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (283, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোয়াইনঘাট, সিলেট', 7, 64, 548, 283, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (284, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কানাইঘাট, সিলেট', 7, 64, 550, 284, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (285, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিশ্বনাথ, সিলেট', 7, 64, 543, 285, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (286, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফেঞ্চুগঞ্জ, সিলেট', 7, 64, 546, 286, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (287, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কোম্পানীগঞ্জ, সিলেট', 7, 64, 544, 287, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (288, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জৈন্তাপুর, সিলেট', 7, 64, 549, 288, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (289, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিয়ানীবাজার, সিলেট', 7, 64, 542, 289, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (290, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোলাপগঞ্জ, সিলেট', 7, 64, 547, 290, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (291, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জকিগঞ্জ, সিলেট', 7, 64, 552, 291, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (292, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বালাগঞ্জ, সিলেট', 7, 64, 541, 292, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (293, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাহুবল, হবিগঞ্জ', 7, 61, 516, 293, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (294, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বানিয়াচং, হবিগঞ্জ', 7, 61, 517, 294, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (295, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চুনারুঘাট, হবিগঞ্জ', 7, 61, 518, 295, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (296, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লাখাই, হবিগঞ্জ', 7, 61, 520, 296, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (297, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মাধবপুর, হবিগঞ্জ', 7, 61, 521, 297, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (298, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নবীগঞ্জ, হবিগঞ্জ', 7, 61, 522, 298, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (299, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আজমিরীগঞ্জ, হবিগঞ্জ', 7, 61, 515, 299, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (300, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দিরাই, সুনামগঞ্জ', 7, 63, 533, 300, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (301, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জগন্নাথপু, সুনামগঞ্জ', 7, 63, 536, 301, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (302, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তাহেরপুর, সুনামগঞ্জ', 7, 63, 540, 302, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (303, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দোয়ারাবাজার, সুনামগঞ্জ', 7, 63, 535, 303, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (304, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ধর্মপাশা, সুনামগঞ্জ', 7, 63, 534, 304, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (305, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিশ্বম্ভরপুর, সুনামগঞ্জ', 7, 63, 530, 305, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (306, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ছাতক, সুনামগঞ্জ', 7, 63, 531, 306, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (307, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শাল্লা, সুনামগঞ্জ', 7, 63, 538, 307, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (308, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জামালগঞ্জ, সুনামগঞ্জ', 7, 63, 530, 308, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (309, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দক্ষিণ সুনামগঞ্জ', 7, 63, 532, 309, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (310, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কুলাউড়া, মৌলভীবাজার', 7, 62, 526, 310, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (311, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কমলগঞ্জ, মৌলভীবাজার', 7, 62, 525, 311, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (312, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শ্রীমঙ্গল, মৌলভীবাজার', 7, 62, 529, 312, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (313, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বড়লেখা, মৌলভীবাজার', 7, 62, 523, 313, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (314, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাজনগর, মৌলভীবাজার', 7, 62, 528, 314, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (315, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জুড়ী, মৌলভীবাজার', 7, 62, 524, 315, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (316, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মিঠাপুকুর, রংপুর', 4, 42, 506, 316, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (317, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বন্দরগঞ্জ, রংপুর', 4, 42, 502, 317, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (318, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পীরগঞ্জ, রংপুর', 4, 42, 508, 318, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (319, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গংগাচড়া, রংপুর', 4, 42, 503, 319, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (320, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তারাগঞ্জ, রংপুর', 4, 42, 509, 320, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (321, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাউনিয়া, রংপুর', 4, 42, 504, 321, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (322, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পীরগাছা, রংপুর', 4, 42, 507, 322, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (323, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সুন্দরগঞ্জ, গাইবান্ধা', 4, 32, 476, 323, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (324, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পলাশবাড়ী, গাইবান্ধা', 4, 32, 473, 324, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (325, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাঘাটা, গাইবান্ধা', 4, 32, 475, 325, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (326, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাদুল্লাপুর, গাইবান্ধা', 4, 32, 474, 326, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (327, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গোবিন্দগঞ্জ, গাইবান্ধা', 4, 32, 472, 327, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (328, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলছড়ি, গাইবান্ধা', 4, 32, 470, 328, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (329, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চিলমারী, কুড়িগ্রাম', 4, 34, 479, 329, 'Filled', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (330, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাজারহাট, কুড়িগ্রাম', 4, 34, 483, 330, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (331, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,উলিপুর, কুড়িগ্রাম', 4, 34, 485, 331, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (332, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভুরুঙ্গমারী, কুড়িগ্রাম', 4, 34, 477, 332, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (333, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নাগেশ্বরী, কুড়িগ্রাম', 4, 34, 482, 333, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (334, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলবাড়ী, কুড়িগ্রাম', 4, 34, 480, 334, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (335, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাজিবপুর, কুড়িগ্রাম', 4, 34, 478, 335, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (336, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রৌমারী, কুড়িগ্রাম', 4, 34, 484, 336, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (337, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সৈয়দপুর, নীলফামারী', 4, 38, 496, 337, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (338, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কিশোরগঞ্জ, নীলফামারী', 4, 38, 494, 338, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (339, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ডিমলা, নীলফামারী', 4, 38, 491, 339, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (340, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জলঢাকা, নীলফামারী', 4, 38, 493, 340, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (341, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হাতীবান্ধা, লালমনিরহাট', 4, 35, 487, 341, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (342, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালিগঞ্জ, লালমনিরহাট', 4, 35, 488, 342, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (343, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আদিতমারী, লালমনিরহাট', 4, 35, 486, 343, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (344, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাটগ্রাম, লালমনিরহাট', 4, 35, 490, 344, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (345, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চিরিরবন্দর, দিনাজপুর', 4, 31, 461, 345, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (346, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হাকিমপুর, দিনাজপুর', 4, 31, 464, 346, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (347, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নবাবগঞ্জ, দিনাজপুর', 4, 31, 468, 347, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (348, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,খানসামা, দিনাজপুর', 4, 31, 466, 348, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (349, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বীরগঞ্জ, দিনাজপুর', 4, 31, 458, 349, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (350, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিরল, দিনাজপুর', 4, 31, 459, 350, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (351, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কাহারোল, দিনাজপুর', 4, 31, 465, 351, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (352, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাবর্তীপুর, দিনাজপুর', 4, 31, 469, 352, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (353, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঘোড়াঘাট, দিনাজপুর', 4, 31, 463, 353, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (354, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বোচাগঞ্জ, দিনাজপুর', 4, 31, 460, 354, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (355, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলবাড়ী, দিনাজপুর', 4, 31, 462, 355, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (356, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বিরামপুর, দিনাজপুর', 4, 31, 457, 356, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (357, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তেতুলিয়া, পঞ্চগড়', 4, 40, 501, 357, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (358, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বোদা, পঞ্চগড়', 4, 40, 498, 358, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (359, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আটোয়ারী, পঞ্চগড়', 4, 40, 497, 359, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (360, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দেবীগঞ্জ, পঞ্চগড়', 4, 40, 499, 360, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (361, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পীরগঞ্জ, ঠাকুরগাঁও', 4, 44, 512, 361, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (362, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বালিয়াডাঙ্গি, ঠাকুরগাঁও', 4, 44, 510, 362, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (363, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রানীশংকৈল, ঠাকুরগাঁও', 4, 44, 513, 363, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (364, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হরিপুর, ঠাকুরগাঁও', 4, 44, 511, 364, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (365, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বটিয়াঘাটা, খুলনা', 5, 49, 349, 365, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (366, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তেরখাদা, খুলনা', 5, 49, 362, 366, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (367, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রূপসা, খুলনা', 5, 49, 360, 367, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (368, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফুলতলা, খুলনা', 5, 49, 359, 368, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (369, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,পাইকগাছা, খুলনা', 5, 49, 358, 369, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (370, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দিঘলিয়া, খুলনা', 5, 49, 353, 370, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (371, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দা-কোপ, খুলনা', 5, 49, 350, 371, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (372, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কয়রা, খুলনা', 5, 49, 357, 372, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (373, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ডুমুরিয়া, খুলনা', 5, 49, 352, 373, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (374, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রামপাল, বাগেরহাট', 5, 45, 329, 374, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (375, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চিতলমারী, বাগেরহাট', 5, 45, 323, 375, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (376, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কচুয়া, বাগেরহাট', 5, 45, 325, 376, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (377, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মংলা, বাগেরহাট', 5, 45, 327, 377, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (378, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ফকিরহাট, বাগেরহাট', 5, 45, 324, 378, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (379, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মোল্লারহাট, বাগেরহাট', 5, 45, 326, 379, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (380, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মোড়েলগঞ্জ, বাগেরহাট', 5, 45, 328, 380, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (381, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শরলখোলা, বাগেরহাট', 5, 45, 330, 381, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (382, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আশাশুনি, সাতক্ষীরা', 5, 54, 379, 382, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (383, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তালা, সাতক্ষীরা', 5, 54, 385, 383, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (384, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কলারোয়া, সাতক্ষীরা', 5, 54, 381, 384, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (385, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দেবহাটা, সাতক্ষীরা', 5, 54, 380, 385, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (386, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শ্যামনগর, সাতক্ষীরা', 5, 54, 384, 386, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (387, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালীগঞ্জ, সাতক্ষীরা', 5, 54, 382, 387, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (388, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,অভয়নগর, যশোর', 5, 47, 335, 388, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (389, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কেশবপুর, যশোর', 5, 47, 339, 389, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (390, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মনিরামপুর, যশোর', 5, 47, 341, 390, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (391, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বাঘারপাড়া, যশোর', 5, 47, 336, 391, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (392, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,চৌগাছা, যশোর', 5, 47, 337, 392, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (393, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ঝিকরগাছা, যশোর', 5, 47, 338, 393, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (394, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শার্শা, যশোর', 5, 47, 342, 394, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (395, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,খোকসা, কুষ্টিয়া', 5, 50, 365, 395, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (396, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মিরপুর, কুষ্টিয়া', 5, 50, 368, 396, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (397, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কুমারখালী, কুষ্টিয়া', 5, 50, 366, 397, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (398, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,ভেড়ামারা, কুষ্টিয়া', 5, 50, 363, 398, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (399, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দৌলতপুর, কুষ্টিয়া', 5, 50, 364, 399, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (400, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,লোহাগড়া, নড়াইল', 5, 53, 377, 400, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (401, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালিয়া, নড়াইল', 5, 53, 376, 401, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (402, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,গাংনী, মেহেরপুর', 5, 52, 373, 402, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (403, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মুজিবনগর, মেহেরপুর', 5, 52, 374, 403, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (404, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শ্রীপুর, মাগুড়া', 5, 51, 372, 404, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (405, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শালিখা, মাগুড়া', 5, 51, 371, 405, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (406, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মোহাম্মদপুর, মাগুড়া', 5, 51, 370, 406, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (407, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,দামুড়হুদা, চুয়াডাঙ্গা', 5, 46, 333, 407, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (408, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,জীবননগর, চুয়াডাঙ্গা', 5, 46, 334, 408, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (409, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আলমডাঙ্গা, চুয়াডাঙ্গা', 5, 46, 331, 409, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (410, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালীগঞ্জ, ঝিনাইদহ', 5, 48, 345, 410, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (411, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কোটচাঁদপুর, ঝিনাইদহ', 5, 48, 346, 411, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (412, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মহেশপুর, ঝিনাইদহ', 5, 48, 347, 412, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (413, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,শৈলকুপা, ঝিনাইদহ', 5, 48, 348, 413, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (414, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,হরিণাকুন্ডু, ঝিনাইদহ', 5, 48, 343, 414, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (415, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কোম্পানীগঞ্জ, নোয়াখালী', 2, 27, 137, 415, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (416, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,আমতলী, বরগুনা', 6, 55, 1, 416, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (417, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,বামনা, বরগুনা', 6, 55, 2, 417, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (418, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,তালতলি, বরগুনা', 6, 55, 6, 418, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (419, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,নলডাঙ্গা, নাটোর', 3, 37, 418, 419, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (420, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাউজান, চট্টগ্রাম', 2, 21, 87, 420, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (421, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সাতকানিয়া, চট্টগ্রাম', 2, 21, 90, 421, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (422, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সীতাকুন্ডু, চট্টগ্রাম', 2, 21, 91, 422, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (423, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,রাগুনিয়া, চট্টগ্রাম', 2, 21, 87, 423, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (424, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,সন্দীপ, চট্টগ্রাম', 2, 21, 89, 424, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (425, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়, শ্রীপুর,শ্রীপুর, মাগুড়া', 5, 51, 372, 425, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (426, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালীগঞ্জ, গাজীপুর', 1, 3, 215, 426, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (427, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,কালিগঞ্জ, সাতক্ষীরা', 5, 54, 382, 427, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (428, 2, 2, 'উপজেলা মহিলা বিষয়ক কর্মকর্তা', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়, গুইমারা, খাগড়াছড়ি', 2, 25, 553, 428, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (429, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 1, 9, 254, 429, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (430, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 7, 61, 515, 430, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (431, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 1, 1, 154, 431, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (432, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 1, 11, 273, 432, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (433, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 1, 9, 257, 433, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (434, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 1, 3, 213, 434, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (435, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 1, 12, 278, 435, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (436, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 1, 8, 247, 436, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (437, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 1, 6, 230, 437, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (438, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 1, 17, 321, 438, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (439, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 1, 2, 204, 439, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (440, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 1, 15, 299, 440, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (441, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 1, 4, 218, 441, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (442, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 1, 7, 243, 442, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (443, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 8, 10, 260, 443, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (444, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 8, 5, 223, 444, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (445, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 3, 29, 395, 445, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (446, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 8, 13, 284, 446, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (447, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 6, 56, 7, 447, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (448, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 6, 55, 1, 448, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (449, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 6, 60, 36, 449, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (450, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 6, 58, 24, 450, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (451, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 6, 57, 17, 451, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (452, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 6, 59, 28, 452, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (453, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 2, 21, 67, 453, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (454, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 2, 23, 108, 454, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (455, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 2, 27, 135, 455, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (456, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 2, 24, 116, 456, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (457, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 2, 26, 130, 457, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (458, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 2, 22, 92, 458, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (459, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 2, 19, 50, 459, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (460, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 2, 20, 59, 460, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (461, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 2, 28, 144, 461, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (462, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 2, 25, 122, 462, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (463, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 2, 18, 43, 463, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (464, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 3, 41, 435, 464, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (465, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 3, 39, 432, 465, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (466, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 3, 43, 448, 466, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (467, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 2, 25, 4, 467, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (468, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 3, 30, 421, 468, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (469, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 3, 36, 403, 469, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (470, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 3, 33, 398, 470, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (471, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 7, 64, 1, 471, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (472, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 7, 61, 515, 472, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (473, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 7, 63, 1, 473, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (474, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 7, 62, 523, 474, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (475, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 4, 42, 502, 475, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (476, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 4, 32, 470, 476, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (477, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 4, 34, 477, 477, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (478, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 4, 38, 491, 478, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (479, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 4, 35, 486, 479, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (480, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 4, 31, 183, 480, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (481, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 4, 40, 497, 481, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (482, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 4, 44, 510, 482, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (483, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 5, 49, 349, 483, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (484, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 5, 45, 322, 484, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (485, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 5, 47, 335, 485, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (486, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 5, 50, 363, 486, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (487, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 5, 53, 376, 487, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (488, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 5, 52, 373, 488, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (489, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 5, 51, 369, 489, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (490, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 5, 46, 331, 490, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (491, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 5, 48, 343, 491, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (492, 2, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 1, 14, 294, 492, 'Vacant', '2020-12-18 12:45:00');
INSERT INTO `sanctionedposts` VALUES (493, 2, 4, 'প্রোগ্রাম অফিসার', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়,মুকসুদপুর, গোপালগঞ্জ', 1, 4, 221, 71, 'Vacant', '2020-12-18 08:48:20');
INSERT INTO `sanctionedposts` VALUES (494, 0, 1, 'উপপরিচালক', 'উপপরিচালকের কার্যালয়', 1, 1, 154, 431, 'Vacant', '2021-01-31 08:58:23');

-- ----------------------------
-- Table structure for sex
-- ----------------------------
DROP TABLE IF EXISTS `sex`;
CREATE TABLE `sex`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sex
-- ----------------------------
INSERT INTO `sex` VALUES (1, 'পুরুষ');
INSERT INTO `sex` VALUES (2, 'নারী');

-- ----------------------------
-- Table structure for type_of_posting
-- ----------------------------
DROP TABLE IF EXISTS `type_of_posting`;
CREATE TABLE `type_of_posting`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name_BN` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type_of_posting
-- ----------------------------
INSERT INTO `type_of_posting` VALUES (1, 'নিয়মিত');
INSERT INTO `type_of_posting` VALUES (2, 'সংযুক্ত');
INSERT INTO `type_of_posting` VALUES (3, 'অতিরিক্ত দায়িত্ব');

-- ----------------------------
-- Table structure for upazilas
-- ----------------------------
DROP TABLE IF EXISTS `upazilas`;
CREATE TABLE `upazilas`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name_BN` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `combinedcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `latitude` double NULL DEFAULT NULL,
  `longitude` double NULL DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `division_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `division_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `division_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `district_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `district_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `district_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `district_name_BN` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `is_active` tinyint(1) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `upazilas_district_id_foreign`(`district_id`) USING BTREE,
  INDEX `upazilas_updated_by_foreign`(`updated_by`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 553 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of upazilas
-- ----------------------------
INSERT INTO `upazilas` VALUES (1, '58a357ff-b327-419f-b4f8-6f33b9b161ce', 'Amtali', 'আমতলী', '100409', 22.13013, 90.23035, '09', 6, '10', 'Barisal', 55, '04', 'Barguna', 'বরগুনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (2, '482cdfdc-b041-405b-84f6-d136cf18fcb8', 'Bamna', 'বামনা', '100419', 22.30984, 90.09306, '19', 6, '10', 'Barisal', 55, '04', 'Barguna', 'বরগুনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (3, '13fcedb6-15d4-490e-a2ce-56d35d9ade9e', 'Barguna Sadar', 'বরগুনা সদর', '100428', 22.130171, 90.112381, '28', 6, '10', 'Barisal', 55, '04', 'Barguna', 'বরগুনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (4, '71995719-0df4-47be-bf3b-bd7dce6c605a', 'Betagi', 'বেতাগী', '100447', NULL, NULL, '47', 6, '10', 'Barisal', 55, '04', 'Barguna', 'বরগুনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (5, 'd0580f24-c65f-4128-b9ea-b4251d0e8517', 'Patharghata', 'পাথরঘাটা', '100485', NULL, NULL, '85', 6, '10', 'Barisal', 55, '04', 'Barguna', 'বরগুনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (6, '9cd899a3-c85b-46da-9f3a-03ef9858e5f6', 'Taltali', 'নাসিরনগর', '100490', NULL, NULL, '90', 6, '10', 'Barisal', 55, '04', 'Barguna', 'বরগুনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (7, '55d85cfd-9771-4a83-84ef-b2db7f79f5b9', 'Agailjhara', 'আগৈলঝাড়া', '100602', NULL, NULL, '02', 6, '10', 'Barisal', 56, '06', 'Barisal', 'বরিশাল', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (8, 'b8ac084f-4280-472a-87b8-635320a5338b', 'Babuganj', 'বাবুগঞ্জ', '100603', 22.8271, 90.25256, '03', 6, '10', 'Barisal', 56, '06', 'Barisal', 'বরিশাল', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (9, 'a1f7e86c-b1b2-4a64-9ada-74ea1c3fbce8', 'Bakerganj', 'বাকেরগঞ্জ', '100607', NULL, NULL, '07', 6, '10', 'Barisal', 56, '06', 'Barisal', 'বরিশাল', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (10, '86367f61-8b98-4dc8-b9ea-5eaa10f8ccd1', 'Banari Para', 'বানারী পাড়া', '100610', NULL, NULL, '10', 6, '10', 'Barisal', 56, '06', 'Barisal', 'বরিশাল', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (11, 'd75a2106-f594-4a59-a078-7d932209ed33', 'Gaurnadi', 'গৌরনদী', '100632', NULL, NULL, '32', 6, '10', 'Barisal', 56, '06', 'Barisal', 'বরিশাল', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (12, '5cd1a422-ac23-4d06-bd80-d0177d72ea7f', 'Hizla', 'হিজলা', '100636', NULL, NULL, '36', 6, '10', 'Barisal', 56, '06', 'Barisal', 'বরিশাল', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (13, 'daa7df5a-4adf-49ab-91f4-8f520e82a614', 'Barisal Sadar (kotwali)', 'বরিশাল সদর', '100651', NULL, NULL, '51', 6, '10', 'Barisal', 56, '06', 'Barisal', 'বরিশাল', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (14, '11a75a42-c058-40b7-bbb3-b2b39904ad78', 'Mehendiganj', 'মেহেন্দীগঞ্জ', '100662', 22.82637, 90.52791, '62', 6, '10', 'Barisal', 56, '06', 'Barisal', 'বরিশাল', 16786, '2016-06-08 10:14:20', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (15, 'daaff7f7-5e59-453a-a246-5a38f6cf9222', 'Muladi', 'মুলাদী', '100669', NULL, NULL, '69', 6, '10', 'Barisal', 56, '06', 'Barisal', 'বরিশাল', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (16, '807dab2e-dacc-4120-a88a-b2cf2019c1c7', 'Wazirpur', 'উজিরপুর', '100694', 22.96237, 90.22554, '94', 6, '10', 'Barisal', 56, '06', 'Barisal', 'বরিশাল', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (17, 'b3b6da4b-a2bd-49d3-a202-8fa9e33cad8b', 'Bhola Sadar', 'ভোলা সদর', '100918', 22.400872, 90.826263, '18', 6, '10', 'Barisal', 57, '09', 'Bhola', 'ভোলা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (18, '3fb4e6c1-dedc-4d24-87c1-9e7382f154f0', 'Burhanuddin', 'বোরহানউদ্দীন', '100921', NULL, NULL, '21', 6, '10', 'Barisal', 57, '09', 'Bhola', 'ভোলা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (19, '9592bd8b-cf1e-46dd-a08a-5f032c80aacc', 'Char Fasson', 'চরফ্যাশন', '100925', 22.190902, 90.764866, '25', 6, '10', 'Barisal', 57, '09', 'Bhola', 'ভোলা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (20, '5734f3f5-b47f-4e8b-9261-b88ee50af7fa', 'Daulat Khan', 'দৌলত খান', '100929', 22.60894, 90.746183, '29', 6, '10', 'Barisal', 57, '09', 'Bhola', 'ভোলা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (21, '01cd1ebe-3ebb-4b03-b118-d3f93aea2858', 'Lalmohan', 'লালমোহন', '100954', 22.347258, 90.734661, '54', 6, '10', 'Barisal', 57, '09', 'Bhola', 'ভোলা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (22, '6b958999-4a39-4cda-94c2-706224ef77a9', 'Manpura', 'মনপুরা', '100965', NULL, NULL, '65', 6, '10', 'Barisal', 57, '09', 'Bhola', 'ভোলা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (23, '27e6c658-02ce-4272-bf6b-a2daab5fd351', 'Tazumuddin', 'তজুমুদ্দিন', '100991', NULL, NULL, '91', 6, '10', 'Barisal', 57, '09', 'Bhola', 'ভোলা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (24, '2e5f2ea8-ea62-47d7-aa4c-0073f65a991a', 'Jhalokati Sadar', 'ঝালকাঠী সদর', '104240', NULL, NULL, '40', 6, '10', 'Barisal', 58, '42', 'Jhalokati', 'ঝালকাঠি', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (25, '934f5b91-6a83-43ca-bbd3-4d374c3833c1', 'Kanthalia', 'কাঠালিয়া', '104243', NULL, NULL, '43', 6, '10', 'Barisal', 58, '42', 'Jhalokati', 'ঝালকাঠি', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (26, 'aadb0439-080d-4634-ab89-92cf24b4877f', 'Nalchity', 'নলছিটি', '104273', NULL, NULL, '73', 6, '10', 'Barisal', 58, '42', 'Jhalokati', 'ঝালকাঠি', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (27, 'ba837ddb-c6e9-4df3-816b-aec3ebda7eb5', 'Rajapur', 'রাজাপুর', '104284', 22.64266, 90.20624, '84', 6, '10', 'Barisal', 58, '42', 'Jhalokati', 'ঝালকাঠি', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (28, '15d7d7d9-db73-436b-a206-0e8e5f659bda', 'Bauphal', 'বাউফল', '107838', 22.41455, 90.56152, '38', 6, '10', 'Barisal', 59, '78', 'Patuakhali', 'পটুয়াখালী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (29, 'c33c1337-c6ac-4d0b-bbf6-d4e53683483b', 'Dashmina', 'দশ্‌মিনা', '107852', 22.2823, 90.56453, '52', 6, '10', 'Barisal', 59, '78', 'Patuakhali', 'পটুয়াখালী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (30, '1e886714-39f4-4265-a52d-b35f85b11241', 'Dumki', 'দুম্‌কী', '107855', 22.47056, 90.38387, '55', 6, '10', 'Barisal', 59, '78', 'Patuakhali', 'পটুয়াখালী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (31, '72120797-e3de-4586-bf30-9502c189020e', 'Galachipa', 'গলাচিপা', '107857', 22.16584, 90.42088, '57', 6, '10', 'Barisal', 59, '78', 'Patuakhali', 'পটুয়াখালী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (32, 'e98a4c93-ee6f-42b1-b9f1-ba74eebf21d5', 'Kalapara', 'কলাপাড়া', '107866', 21.9867, 90.2417, '66', 6, '10', 'Barisal', 59, '78', 'Patuakhali', 'পটুয়াখালী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (33, 'b1e91f10-0bd6-48fb-8fe7-f4acc4dcc208', 'Mirzaganj', 'মির্জাগঞ্জ', '107876', 22.9667, 91.0667, '76', 6, '10', 'Barisal', 59, '78', 'Patuakhali', 'পটুয়াখালী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (34, 'a7176bcd-77f4-4d87-b27e-bdeb08b34dbc', 'Patuakhali Sadar', 'পটুয়াথালী সদর', '107895', 22.3542, 90.3181, '95', 6, '10', 'Barisal', 59, '78', 'Patuakhali', 'পটুয়াখালী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (35, '5a88a433-97fd-49f4-8746-27f32617e2b2', 'Rangabali', 'Rangabali', '107897', NULL, NULL, '97', 6, '10', 'Barisal', 59, '78', 'Patuakhali', 'পটুয়াখালী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (36, '51c69846-1496-4dbe-bf2a-329b5e6e85fb', 'Bhandaria', 'ভান্ডারিয়া', '107914', 22.4897, 90.058834, '14', 6, '10', 'Barisal', 60, '79', 'Pirojpur', 'পিরোজপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (37, 'e41e6e79-6f76-4f07-b3b7-6c966f083df3', 'Kawkhali', 'কাউখালী', '107947', 22.6079, 90.0467, '47', 6, '10', 'Barisal', 60, '79', 'Pirojpur', 'পিরোজপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (38, '326b8fc1-1b4c-4694-88e5-f1045ba6bcd9', 'Mathbaria', 'মঠবাড়ীয়া', '107958', NULL, NULL, '58', 6, '10', 'Barisal', 60, '79', 'Pirojpur', 'পিরোজপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (39, '60180426-ddd0-405e-9b38-484a1c5ed7c7', 'Nazirpur', 'নাজিরপুর', '107976', 22.828719, 89.993713, '76', 6, '10', 'Barisal', 60, '79', 'Pirojpur', 'পিরোজপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (40, '70b951d1-23e0-497a-86e1-d5d01e65f618', 'Pirojpur Sadar', 'পিরোজপুর সদর', '107980', NULL, NULL, '80', 6, '10', 'Barisal', 60, '79', 'Pirojpur', 'পিরোজপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (41, '7860f5c6-866c-4dc4-83e5-6b9dff4708b8', 'Nesarabad (swarupkati)', 'নেছারাবাদ(স্বরূপকাঠী)', '107987', NULL, NULL, '87', 6, '10', 'Barisal', 60, '79', 'Pirojpur', 'পিরোজপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (42, '0df7c7f4-bc4f-47b8-84da-665ea62f18fb', 'Zianagar', 'জিয়ানগর', '107990', 22.50439, 89.97897, '90', 6, '10', 'Barisal', 60, '79', 'Pirojpur', 'পিরোজপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (43, '88526d85-4203-4044-a4df-3678a6cdcbc3', 'Alikadam', 'আলীকদম', '200304', NULL, NULL, '04', 2, '20', 'Chittagong', 18, '03', 'Bandarban', 'বান্দরবান', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (44, 'b556b4d9-829f-4623-846b-e77e81d12c73', 'Bandarban Sadar', 'বান্দরবান সদর', '200314', 21.7444, 92.3814, '14', 2, '20', 'Chittagong', 18, '03', 'Bandarban', 'বান্দরবান', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (45, '7a1051c3-d646-4ae9-85e8-bd7132b74693', 'Lama', 'লামা', '200351', NULL, NULL, '51', 2, '20', 'Chittagong', 18, '03', 'Bandarban', 'বান্দরবান', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (46, '85d67329-9831-447b-9f4c-e874eafae4eb', 'Naikhongchhari', 'নাইক্ষ্যংছড়ি', '200373', NULL, NULL, '73', 2, '20', 'Chittagong', 18, '03', 'Bandarban', 'বান্দরবান', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (47, '0515bb27-3f45-4053-922d-855076cf42f6', 'Rowangchhari', 'রোয়াংছড়ি', '200389', NULL, NULL, '89', 2, '20', 'Chittagong', 18, '03', 'Bandarban', 'বান্দরবান', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (48, 'd20224c3-fe5e-4d65-ab73-4850bd08c103', 'Ruma', 'রুমা', '200391', 21.9810002, 92.4999918, '91', 2, '20', 'Chittagong', 18, '03', 'Bandarban', 'বান্দরবান', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (49, '2888e8f9-f03d-4716-91ec-aa90162a80f7', 'Thanchi', 'থান্‌চি', '200395', NULL, NULL, '95', 2, '20', 'Chittagong', 18, '03', 'Bandarban', 'বান্দরবান', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (50, 'e2c4c97e-a742-4ffb-8b76-d1bee48dc6e0', 'Akhaura', 'আখাউড়া', '201202', NULL, NULL, '02', 2, '20', 'Chittagong', 19, '12', 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (51, '7147b326-eb2a-425f-9ebb-73683b794011', 'Banchharampur', 'বাঞ্ছারামপুর', '201204', NULL, NULL, '04', 2, '20', 'Chittagong', 19, '12', 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (52, '3bf055e6-d46e-4fd4-9149-7563c12b61e0', 'Bijoynagar', 'বাকেরগঞ্জ', '201207', NULL, NULL, '07', 2, '20', 'Chittagong', 19, '12', 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (53, '36cd40f7-cb9d-47af-b3a8-1539b98ea1d5', 'Brahmanbaria Sadar', 'ব্রাক্ষ্মণবাড়িয়া সদর', '201213', 24.0446149, 91.135302, '13', 2, '20', 'Chittagong', 19, '12', 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (54, 'fbc3d4a3-124a-4d4a-b485-10aad7be1aab', 'Ashuganj', 'আশুগঞ্জ', '201233', NULL, NULL, '33', 2, '20', 'Chittagong', 19, '12', 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (55, 'e63acde0-1585-4672-b393-8ae43b66470d', 'Kasba', 'কস্‌বা', '201263', NULL, NULL, '63', 2, '20', 'Chittagong', 19, '12', 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (56, 'ebcde5a8-2b07-4b9f-ab03-b76c50c4fbe6', 'Nabinagar', 'নবীনগর', '201285', 23.879273, 90.9629523, '85', 2, '20', 'Chittagong', 19, '12', 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (57, '4134e669-76f8-4d0f-801c-99be5608c26c', 'Nasirnagar', 'নাসিরনগর', '201290', 24.1870015, 91.1736994, '90', 2, '20', 'Chittagong', 19, '12', 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (58, 'fe4ae55e-62a5-4ab3-a6a2-f18245ce60c6', 'Sarail', 'সরাইল', '201294', 24.07142, 91.11823, '94', 2, '20', 'Chittagong', 19, '12', 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (59, '375d6b7c-e633-4580-9beb-e89ebc4da04d', 'Chandpur Sadar', 'চাঁদপুর সদর', '201322', 23.222309, 90.650513, '22', 2, '20', 'Chittagong', 20, '13', 'Chandpur', 'চাঁদপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (60, '8347d706-8895-4256-a792-c0ae32ad9311', 'Faridganj', 'ফরিদগঞ্জ', '201345', 23.1661, 90.7723, '45', 2, '20', 'Chittagong', 20, '13', 'Chandpur', 'চাঁদপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (61, 'a8553111-6fa2-40f1-af78-45321ea884fe', 'Haim Char', 'হাইমচর', '201347', NULL, NULL, '47', 2, '20', 'Chittagong', 20, '13', 'Chandpur', 'চাঁদপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (62, 'bce165ff-024a-4312-b31b-3fdf941ffab0', 'Hajiganj', 'হাজীগঞ্জ', '201349', 23.2612, 90.8104, '49', 2, '20', 'Chittagong', 20, '13', 'Chandpur', 'চাঁদপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (63, '5333799c-e4a6-40f9-9b54-76bfe9520572', 'Kachua', 'কচুয়া', '201358', 22.653304, 89.885963, '58', 2, '20', 'Chittagong', 20, '13', 'Chandpur', 'চাঁদপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (64, '97d298ed-a12e-4e71-bfff-31f43176b0a6', 'Matlab Dakshin', 'মতলব দক্ষিণ', '201376', NULL, NULL, '76', 2, '20', 'Chittagong', 20, '13', 'Chandpur', 'চাঁদপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (65, '1a24c48c-0ee7-4dcd-9827-6211e445fa58', 'Matlab Uttar', 'মতলব উত্তর', '201379', NULL, NULL, '79', 2, '20', 'Chittagong', 20, '13', 'Chandpur', 'চাঁদপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (66, 'ad6fc188-78ae-4639-89b8-5a234190ef76', 'Shahrasti', 'শাহরাস্তি', '201395', NULL, NULL, '95', 2, '20', 'Chittagong', 20, '13', 'Chandpur', 'চাঁদপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (67, '5dbde619-6999-45da-b64d-371be6e31d75', 'Anowara', 'আনোয়ারা', '201504', NULL, NULL, '04', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (68, 'de3d9460-827e-43aa-85d4-62476e44c53b', 'Bayejid Bostami', 'বায়জিদ বোস্তামী', '201506', NULL, NULL, '06', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (69, '3fa4adcd-b918-46b8-9bd3-02b5c07aa531', 'Banshkhali', 'বাঁশখালী', '201508', 22.323, 91.788, '08', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (70, '961c1be6-1570-4edc-9856-b00254a2b478', 'Bakalia', 'বাকলীয়া', '201510', NULL, NULL, '10', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (71, '26f85f97-17be-4e4a-8f16-ac4424d5dff3', 'Boalkhali', 'বোয়ালখালী', '201512', 22.37457, 91.91895, '12', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (72, '235a897d-be15-4cb1-b73a-2aab5dc069e2', 'Chandanaish', 'চন্দনাইশ', '201518', 22.24, 92.01, '18', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (73, 'afd0ac44-804e-423d-813d-99be9792967e', 'Chandgaon', 'চাঁদগাও', '201519', NULL, NULL, '19', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (74, '8078da5d-7073-4d68-a8b9-698ba742a23b', 'Chittagong Port', 'চট্টগ্রাম পোর্ট', '201520', NULL, NULL, '20', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (75, '59938ebe-24a5-4adc-85a2-7d1258447db3', 'Double Mooring', 'ডবলমুরিং', '201528', NULL, NULL, '28', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (76, '571260ec-bc42-4e21-afa3-153def5f8389', 'Fatikchhari', 'ফটিকছড়ি', '201533', NULL, NULL, '33', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (77, '3313bda0-20d4-4d2c-bc6f-df80628fe7b5', 'Halishahar', 'হালিশহর', '201535', NULL, NULL, '35', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (78, '845f88e8-ce45-4fa6-9b71-6507029fad30', 'Hathazari', 'হাটহাজারী', '201537', 22.538198, 91.8123324000001, '37', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (79, 'c9f8f4a8-cb9f-43c2-af66-1c1c3eefb60d', 'Kotwali', 'কোতয়ালী', '201541', NULL, NULL, '41', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (80, '3b51294a-9554-4c70-8bc8-810fe536f074', 'Khulshi', 'খুল্‌শী', '201543', NULL, NULL, '43', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (81, '62278966-e5ae-4d9e-a828-d06ade267c12', 'Lohagara', 'লোহাগড়া', '201547', NULL, NULL, '47', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (82, '15a9cef8-3956-4303-ad5d-3fbc5504cc02', 'Mirsharai', 'মিরশরাই', '201553', NULL, NULL, '53', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (83, '641c0606-9ad3-4130-a15f-8399406a8eb8', 'Pahartali', 'পাহাড়তলী', '201555', NULL, NULL, '55', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (84, 'c7fe7a86-2ad7-41f7-86c2-06247376b690', 'Panchlaish', 'পাঁচলাইশ', '201557', NULL, NULL, '57', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (85, '7ccbec93-1cdc-40dd-854b-922d0cfb6728', 'Patiya', 'পটিয়া', '201561', 22.29955, 91.97066, '61', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (86, '008295ba-af40-477f-bda1-58b229416fdc', 'Patenga', 'পতেঙ্গা', '201565', NULL, NULL, '65', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (87, '17d212fd-3bc5-4989-9f4e-2371c186f654', 'Rangunia', 'রাংগুনীয়া', '201570', NULL, NULL, '70', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (88, '7eeed1c2-aa39-4221-9f87-6093459aed25', 'Raozan', 'রাউজান', '201574', NULL, NULL, '74', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (89, '4aaaf699-551e-4403-adab-0d964ecaadd2', 'Sandwip', 'সন্দ্বীপ', '201578', NULL, NULL, '78', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (90, '78607736-a724-4983-9321-8f85a4a3ddb9', 'Satkania', 'সাতকানিয়া', '201582', NULL, NULL, '82', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (91, '0e44c387-6b2e-446a-bbc2-f365e0b0d091', 'Sitakunda', 'সীতাকুন্ড', '201586', NULL, NULL, '86', 2, '20', 'Chittagong', 21, '15', 'Chittagong', 'চট্টগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (92, 'd489a0ad-8fbe-4fa3-b192-0a1cc8b6848b', 'Barura', 'বরুড়া', '201909', 23.3551064, 91.0394635, '09', 2, '20', 'Chittagong', 22, '19', 'Comilla', 'কুমিল্লা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (93, '56db5a86-6469-4308-b19d-2ac2c88d6167', 'Brahman Para', 'ব্রাক্ষ্মণ পাড়া', '201915', NULL, NULL, '15', 2, '20', 'Chittagong', 22, '19', 'Comilla', 'কুমিল্লা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (94, '950a741a-92ec-40df-a046-560d8bccc10a', 'Burichang', 'বুড়িচং', '201918', NULL, NULL, '18', 2, '20', 'Chittagong', 22, '19', 'Comilla', 'কুমিল্লা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (95, 'a7a15605-0e00-4f44-a634-e60ee79728a9', 'Chandina', 'চন্দিনা', '201927', 23.488281, 90.997821, '27', 2, '20', 'Chittagong', 22, '19', 'Comilla', 'কুমিল্লা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (96, 'd687710a-ab75-41f7-9a91-3f826a76fb97', 'Chauddagram', 'চৌদ্দগ্রাম', '201931', NULL, NULL, '31', 2, '20', 'Chittagong', 22, '19', 'Comilla', 'কুমিল্লা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (97, '09047b54-fd2b-4891-887c-f4e5f9f90085', 'Comilla Sadar Dakshin', 'কুমিল্লা সদর দক্ষিণ', '201933', NULL, NULL, '33', 2, '20', 'Chittagong', 22, '19', 'Comilla', 'কুমিল্লা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (98, '8de55b15-1652-4857-a218-c36d9e49ecef', 'Daudkandi', 'দাউদকান্দি', '201936', 23.5299, 90.78287, '36', 2, '20', 'Chittagong', 22, '19', 'Comilla', 'কুমিল্লা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (99, '4445fc2b-77c5-43b8-9e12-ced89272a1d0', 'Debidwar', 'দেবিদ্বার', '201940', 23.6037, 90.98856, '40', 2, '20', 'Chittagong', 22, '19', 'Comilla', 'কুমিল্লা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (100, 'e3714509-7f81-4b6f-94c2-0f1895263738', 'Homna', 'হোমনা', '201954', 23.68114, 90.78204, '54', 2, '20', 'Chittagong', 22, '19', 'Comilla', 'কুমিল্লা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (101, 'ad0d1630-b2c2-43b1-9f7e-a0380e9e036b', 'Comilla Adarsha Sadar', 'কুমিল্লা আদর্শ সদর', '201967', NULL, NULL, '67', 2, '20', 'Chittagong', 22, '19', 'Comilla', 'কুমিল্লা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (102, 'ab2a0c7d-3caf-470a-a938-deaa9c0970f6', 'Laksam', 'লাকসাম', '201972', NULL, NULL, '72', 2, '20', 'Chittagong', 22, '19', 'Comilla', 'কুমিল্লা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (103, '7031333e-9cd0-423b-8c2b-21d9ace745a8', 'Manoharganj', 'মনোহরগঞ্জ', '201974', NULL, NULL, '74', 2, '20', 'Chittagong', 22, '19', 'Comilla', 'কুমিল্লা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (104, '61e4582c-7ae5-4c11-b2cc-5838c80b2870', 'Meghna', 'মেঘনা', '201975', 23.6308557, 90.6867939, '75', 2, '20', 'Chittagong', 22, '19', 'Comilla', 'কুমিল্লা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (105, '64f34ac4-d314-4560-9d2f-ba32c21c48fd', 'Muradnagar', 'মুরাদনগর', '201981', 23.7128, 90.9438, '81', 2, '20', 'Chittagong', 22, '19', 'Comilla', 'কুমিল্লা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (106, '43c8362a-777f-415c-9cf7-ab669fe24e93', 'Nangalkot', 'নাঙ্গলকোট', '201987', NULL, NULL, '87', 2, '20', 'Chittagong', 22, '19', 'Comilla', 'কুমিল্লা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (107, '99583d0d-89f8-4475-8b21-dd14fa2f951b', 'Titas', 'তিতাস', '201994', 23.59582, 90.79625, '94', 2, '20', 'Chittagong', 22, '19', 'Comilla', 'কুমিল্লা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (108, 'a53cb7d5-2d34-4759-be0e-a692390974fb', 'Chakaria', 'চকরিয়া', '202216', 21.7349661, 92.0873591, '16', 2, '20', 'Chittagong', 23, '22', 'Cox\'s Bazar', 'কক্সবাজার', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (109, '6e52bf90-7b70-49b6-b69a-f98aad86dc0a', 'COX\'S BAZAR SADAR', 'কক্সবাজার সদর', '202224', NULL, NULL, '24', 2, '20', 'Chittagong', 23, '22', 'Cox\'s Bazar', 'কক্সবাজার', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (110, 'ce63e102-197f-48cf-b50c-c30ecf0afaca', 'Kutubdia', 'কুতুবদিয়া', '202245', NULL, NULL, '45', 2, '20', 'Chittagong', 23, '22', 'Cox\'s Bazar', 'কক্সবাজার', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (111, '3929901c-6a6d-4a24-a932-cb8b50eea25e', 'Maheshkhali', 'মহেশখালী', '202249', NULL, NULL, '49', 2, '20', 'Chittagong', 23, '22', 'Cox\'s Bazar', 'কক্সবাজার', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (112, '79d0e37a-1b0b-4795-a2ce-42e051778528', 'Pekua', 'পেকুয়া', '202256', NULL, NULL, '56', 2, '20', 'Chittagong', 23, '22', 'Cox\'s Bazar', 'কক্সবাজার', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (113, 'c763aa89-31e9-47e7-b953-483c0be2b2f8', 'Ramu', 'রামু', '202266', 21.4448, 92.1001, '66', 2, '20', 'Chittagong', 23, '22', 'Cox\'s Bazar', 'কক্সবাজার', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (114, '2fc8568f-ee39-4566-8b6e-75253536930c', 'Teknaf', 'টেক্‌নাফ', '202290', 20.875373, 92.296504, '90', 2, '20', 'Chittagong', 23, '22', 'Cox\'s Bazar', 'কক্সবাজার', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (115, 'f7b5d739-c1ab-4d4d-aeb4-2b53c5ea31c5', 'Ukhia', 'উখিয়া', '202294', NULL, NULL, '94', 2, '20', 'Chittagong', 23, '22', 'Cox\'s Bazar', 'কক্সবাজার', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (116, '6b60f4ec-147c-4fd7-9977-d51c30ab5b49', 'Chhagalnaiya', 'ছাগলনাইয়া', '203014', NULL, NULL, '14', 2, '20', 'Chittagong', 24, '30', 'Feni', 'ফেনী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (117, 'f34f0b62-f6b1-457b-a8e7-696402436ed8', 'Daganbhuiyan', 'দাগনভূঁঞা', '203025', 22.9123584, 91.3180042, '25', 2, '20', 'Chittagong', 24, '30', 'Feni', 'ফেনী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (118, 'dd39ac9a-40b4-4552-9a83-bd77b9ac3b36', 'Feni Sadar', 'ফেনী সদর', '203029', 23.0159132, 91.3975831, '29', 2, '20', 'Chittagong', 24, '30', 'Feni', 'ফেনী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (119, 'b15e624b-59b4-408f-b9c3-656def8465ee', 'Fulgazi', 'ফুলগাজী', '203041', 23.10559, 91.43222, '41', 2, '20', 'Chittagong', 24, '30', 'Feni', 'ফেনী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (120, '8771f434-199a-4675-8b9e-4f5baadb628d', 'Parshuram', 'পরশুরাম', '203051', NULL, NULL, '51', 2, '20', 'Chittagong', 24, '30', 'Feni', 'ফেনী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (121, '9ff1f347-944d-4408-923a-c49691c7d4cd', 'Sonagazi', 'সোনাগাজী', '203094', 22.8760477, 91.3855161, '94', 2, '20', 'Chittagong', 24, '30', 'Feni', 'ফেনী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (122, '7c3b14e4-e43b-441d-8260-ddd832dc6654', 'Dighinala', 'দিঘিনালা', '204643', NULL, NULL, '43', 2, '20', 'Chittagong', 25, '46', 'Khagrachhari', 'খাগড়াছড়ি', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (123, '659c8729-455b-4197-a4ec-eb3d2bfac3a9', 'Khagrachhari Sadar', 'খাগরাছড়ি সদর', '204649', NULL, NULL, '49', 2, '20', 'Chittagong', 25, '46', 'Khagrachhari', 'খাগড়াছড়ি', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (124, '34c9394b-7b4d-40c9-a8ee-b498fa724bd7', 'Lakshmichhari', 'লক্ষীছড়ি', '204661', 22.822765, 91.9294681, '61', 2, '20', 'Chittagong', 25, '46', 'Khagrachhari', 'খাগড়াছড়ি', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (125, '765b6ea7-37a6-49de-9699-bdcdabe53a6d', 'Mahalchhari', 'মহালছড়ি', '204665', NULL, NULL, '65', 2, '20', 'Chittagong', 25, '46', 'Khagrachhari', 'খাগড়াছড়ি', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (126, '9083d2a4-c57e-47b6-afcd-b5c84524ebf4', 'Manikchhari', 'মানিকছড়ি', '204667', NULL, NULL, '67', 2, '20', 'Chittagong', 25, '46', 'Khagrachhari', 'খাগড়াছড়ি', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (127, '4a96818e-e88d-4f33-b0fa-bd296ec4c5de', 'Matiranga', 'মাটিরাংগা', '204670', 23.039377, 91.875483, '70', 2, '20', 'Chittagong', 25, '46', 'Khagrachhari', 'খাগড়াছড়ি', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (128, 'efaaf2b8-de08-4c0f-bc8c-f3284dd768a1', 'Panchhari', 'পানছড়ি', '204677', 23.2995704, 91.8903882, '77', 2, '20', 'Chittagong', 25, '46', 'Khagrachhari', 'খাগড়াছড়ি', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (129, 'ffdcca48-4d97-4449-821e-52412ed685ad', 'Ramgarh', 'রামগর', '204680', 22.9666207, 91.851343, '80', 2, '20', 'Chittagong', 25, '46', 'Khagrachhari', 'খাগড়াছড়ি', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (130, '3a5e0868-7594-4b11-a4fe-5156e86224da', 'Kamalnagar', 'কমলনগর', '205133', NULL, NULL, '33', 2, '20', 'Chittagong', 26, '51', 'Lakshmipur', 'লক্ষ্মীপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (131, 'a412ca6a-c571-4ed7-8ddc-90dfa1d189d8', 'Lakshmipur Sadar', 'লক্ষ্ণীপুর সদর', '205143', 22.903728, 90.8294002, '43', 2, '20', 'Chittagong', 26, '51', 'Lakshmipur', 'লক্ষ্মীপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (132, 'cf8192f8-ccde-455d-9f14-51b916866452', 'Roypur', 'রায়পুর', '205158', NULL, NULL, '58', 2, '20', 'Chittagong', 26, '51', 'Lakshmipur', 'লক্ষ্মীপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (133, '3e599158-07cf-4dc0-9dea-e90cb4b5cb38', 'Ramganj', 'রামগঞ্জ', '205165', 23.0924, 90.8613, '65', 2, '20', 'Chittagong', 26, '51', 'Lakshmipur', 'লক্ষ্মীপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (134, '2502d134-4f1f-4c74-a449-7638e50dd9a7', 'Ramgati', 'রামগতী', '205173', 22.6482, 90.9257, '73', 2, '20', 'Chittagong', 26, '51', 'Lakshmipur', 'লক্ষ্মীপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (135, '532895f2-af91-4755-b3cd-0d9a9efcd2ea', 'Begumganj', 'বেগমগঞ্জ', '207507', NULL, NULL, '07', 2, '20', 'Chittagong', 27, '75', 'Noakhali', 'নোয়াখালী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (136, '6730628c-ecda-45ba-8607-124fdc5af7bd', 'Chatkhil', 'চাট্‌খিল', '207510', NULL, NULL, '10', 2, '20', 'Chittagong', 27, '75', 'Noakhali', 'নোয়াখালী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (137, 'f6c49a9c-a646-468c-bb66-42a6eb991707', 'Companiganj', 'কোম্পানীগঞ্জ', '207521', NULL, NULL, '21', 2, '20', 'Chittagong', 27, '75', 'Noakhali', 'নোয়াখালী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (138, '890a1296-9767-41de-ac03-96ccfa48dd69', 'Hatiya', 'হাতিয়া', '207536', NULL, NULL, '36', 2, '20', 'Chittagong', 27, '75', 'Noakhali', 'নোয়াখালী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (139, '5e45f80c-2876-4942-a139-fa9ab8b40f47', 'Kabirhat', 'কবিরহাট', '207547', 22.5, 91.12, '47', 2, '20', 'Chittagong', 27, '75', 'Noakhali', 'নোয়াখালী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (140, 'b46cf421-788b-411f-8749-4377bfcb1e0f', 'Senbagh', 'সেনবাগ', '207580', NULL, NULL, '80', 2, '20', 'Chittagong', 27, '75', 'Noakhali', 'নোয়াখালী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (141, 'e1ce6d31-dca5-49ae-9f58-6f4b5154b6de', 'Sonaimuri', 'সোনাইমুড়ি', '207583', 23.0213779, 91.0777723, '83', 2, '20', 'Chittagong', 27, '75', 'Noakhali', 'নোয়াখালী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (142, 'd3926d43-738f-4581-80b5-d4fa34b58853', 'Subarnachar', 'সুবর্ণচর', '207585', NULL, NULL, '85', 2, '20', 'Chittagong', 27, '75', 'Noakhali', 'নোয়াখালী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (143, 'e62a1c38-9a4d-4cac-8544-29558b42945a', 'Noakhali Sadar', 'নোয়াখালী সদর', '207587', 22.8333, 91.1, '87', 2, '20', 'Chittagong', 27, '75', 'Noakhali', 'নোয়াখালী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (144, '92fd37e8-8a6b-47b0-86fc-fa4ed3159497', 'Baghaichhari', 'বাঘাইছড়ি', '208407', 23.4618422, 92.2236667, '07', 2, '20', 'Chittagong', 28, '84', 'Rangamati', 'রাঙ্গামাটি', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (145, '0186a9dc-1aa4-4a6c-9d68-d946dbecc090', 'Barkal Upazila', 'বরকল', '208421', NULL, NULL, '21', 2, '20', 'Chittagong', 28, '84', 'Rangamati', 'রাঙ্গামাটি', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (146, '9996f14f-9125-4fea-9618-bd0f6b5dcdf3', 'Kawkhali (betbunia)', 'কাউখালী', '208425', NULL, NULL, '25', 2, '20', 'Chittagong', 28, '84', 'Rangamati', 'রাঙ্গামাটি', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (147, '494efe59-ec16-44f4-8a5b-962c0665df04', 'Belai Chhari  Upazi', 'বিলাইছড়ি', '208429', NULL, NULL, '29', 2, '20', 'Chittagong', 28, '84', 'Rangamati', 'রাঙ্গামাটি', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (148, '935680cb-bc59-423e-8cbd-209a91aa7655', 'Kaptai  Upazila', 'কাপ্তাই', '208436', NULL, NULL, '36', 2, '20', 'Chittagong', 28, '84', 'Rangamati', 'রাঙ্গামাটি', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (149, '02863ac7-b581-4a49-bf07-ef0d24db9e96', 'Jurai Chhari Upazil', 'জুরাইছড়ি', '208447', NULL, NULL, '47', 2, '20', 'Chittagong', 28, '84', 'Rangamati', 'রাঙ্গামাটি', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (150, '9d19da61-a5c6-4b9c-bbab-2e08a46ac200', 'Langadu  Upazila', 'লংগদু', '208458', NULL, NULL, '58', 2, '20', 'Chittagong', 28, '84', 'Rangamati', 'রাঙ্গামাটি', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (151, '5460872d-1b62-4cb0-b213-35ae93d82c44', 'Naniarchar  Upazila', 'নানিয়ারচর', '208475', NULL, NULL, '75', 2, '20', 'Chittagong', 28, '84', 'Rangamati', 'রাঙ্গামাটি', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (152, '93195bc0-842c-4fdb-82a5-4ebad1b91076', 'Rajasthali', 'রাজস্থালী', '208478', 22.4380253, 92.2039933, '78', 2, '20', 'Chittagong', 28, '84', 'Rangamati', 'রাঙ্গামাটি', 4, '2016-03-31 19:45:39', 1, NULL, 4, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (153, 'd945a150-34ed-43bd-84ca-11bb9ff1d87f', 'Rangamati Sadar  Up', 'রাঙ্গামাটি সদর', '208487', NULL, NULL, '87', 2, '20', 'Chittagong', 28, '84', 'Rangamati', 'রাঙ্গামাটি', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (154, 'd0dfe1cc-bb5a-4f76-911f-d5389d4205bb', 'Adabor', 'আদাবর', '302602', NULL, NULL, '02', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (155, '36117266-cdfc-48a8-9374-0b1635428dd3', 'Badda', 'বাড্ডা', '302604', NULL, NULL, '04', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (156, 'd96337d1-d75a-466a-a6a8-0254f5606903', 'Bangshal', 'বাহুবল', '302605', NULL, NULL, '05', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (157, '3b5b7732-f99e-40a3-aa77-0a199b061525', 'Biman Bandar', 'বিমান বন্দর', '302606', NULL, NULL, '06', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (158, 'afc6a96c-50cd-4b58-a83c-9497bab97d5a', 'Banani', 'বাকেরগঞ্জ', '302607', NULL, NULL, '07', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (159, '1bef53e7-a6e7-4c77-ba52-2a58f167e824', 'Cantonment', 'ক্যান্টনমেন্ট', '302608', NULL, NULL, '08', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 4, '2017-01-12 13:41:38', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (160, '981f728b-dd8b-466f-b9e9-13874c7b3b32', 'Chak Bazar', 'আমতলী', '302609', NULL, NULL, '09', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (161, '11e33591-0809-43b8-a4e3-1782c5b42b58', 'Dakshinkhan', 'দক্ষিণখান', '302610', NULL, NULL, '10', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (162, 'a3714984-5b41-4c73-a911-195113d8e269', 'Darus Salam', 'বানিয়াচং', '302611', NULL, NULL, '11', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (163, '9935d255-6d66-47cc-8604-f6c8938625fb', 'Demra', 'ডেমরা', '302612', NULL, NULL, '12', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (164, '52c1c864-aadf-465f-b969-94e021a9b252', 'Dhamrai', 'ধামরাই', '302614', 23.9059494, 90.1869644, '14', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (165, 'fff35ac1-9d71-46a1-80fa-7d49caaf7493', 'Dohar', 'দোহার', '302618', 23.5846912, 90.1401381000001, '18', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (166, '75d9e8d2-f626-4123-9d12-276f5e86fb5d', 'Bhasan Tek', 'বোরহানউদ্দীন', '302621', NULL, NULL, '21', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (167, 'd1da92b9-7d71-462c-882b-57085bde192e', 'Bhatara', 'চাঁদপুর সদর', '302622', NULL, NULL, '22', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (168, 'dcdd4d09-7d80-4d39-bbe5-fb9976d9f593', 'Gendaria', 'কক্সবাজার সদর', '302624', NULL, NULL, '24', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (169, 'a78e8f6f-4a5c-480b-9fac-59481492b807', 'Gulshan', 'গুলশান', '302626', NULL, NULL, '26', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (170, 'b6d552d1-4018-45ed-ba0a-eb56ead4ebcf', 'Jatrabari', 'যাত্রাবাড়ী', '302629', NULL, NULL, '29', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (171, '0cf55f5f-d1fa-413c-8960-77d6f4ffe669', 'Kafrul', 'কাফরুল', '302630', NULL, NULL, '30', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (172, '2f6eecfe-3f9e-41de-968c-989ffdc7a21a', 'Kadamtali', 'কদমতলী', '302632', NULL, NULL, '32', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (173, 'bb9e7225-639e-4e8a-b2eb-75ae1a2c75bf', 'Kalabagan', 'ধুপচাঁচিয়া', '302633', NULL, NULL, '33', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (174, 'ea33755d-889c-40ad-8265-fe39e49a4f14', 'Kamrangir Char', 'কামরাঙ্গীর চর', '302634', NULL, NULL, '34', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (175, 'f0c7df6e-b9a0-46a3-84a1-bb26f2ed2459', 'Khilgaon', 'খিলগাও', '302636', NULL, NULL, '36', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (176, '2b76602b-f35d-438b-bfdc-7e8d1b37e291', 'Khilkhet', 'খিলক্ষেত', '302637', NULL, NULL, '37', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (177, 'bfeb2d9b-a442-4763-a534-bda13b7160cc', 'Keraniganj', 'কেরানীগঞ্জ', '302638', 23.7332, 90.43463, '38', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (178, 'a8ec31db-a93b-4883-9557-1558df962d07', 'Kotwali', 'কোতয়ালী', '302640', NULL, NULL, '40', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (179, '47e9de1d-dd80-41b5-90ce-2dec803bb80d', 'Lalbagh', 'লালবাগ', '302642', NULL, NULL, '42', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (180, '8e74bae2-87b0-4a9c-9ace-a24073174ece', 'Mirpur', 'মিরপুর', '302648', 88.99945, 23.880815, '48', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (181, '44d3c325-b64a-43bf-a007-cc50242f5bc5', 'Motijheel', 'মতিঝিল', '302654', NULL, NULL, '54', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (182, 'ea98ccf4-4135-492d-8a82-887112a3eb10', 'Mugda Para', 'পাঁচলাইশ', '302657', NULL, NULL, '57', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (183, '89426af9-6ffe-41d7-8d8b-3be9d8d06a31', 'Nawabganj', 'নবাবগঞ্জ', '302662', 25.25039, 89.04543, '62', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (184, '407b682b-f32b-4a09-bfa7-f9710c27edca', 'New Market', 'নিউ মার্কেট', '302663', NULL, NULL, '63', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (185, '499b8079-4e2e-4bf8-95a4-5043a11324db', 'Pallabi', 'পল্লবী', '302664', NULL, NULL, '64', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (186, 'f321d1b6-ad95-4f3e-8fb6-d3c5bb9cbef4', 'Paltan', 'পল্টন', '302665', NULL, NULL, '65', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (187, '970bd1cf-5fed-4a15-9451-1c015c370790', 'Rampura', 'নন্দীগ্রাম', '302667', NULL, NULL, '67', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (188, '5c2faa23-4593-4cb3-95c4-88a3bef7763e', 'Sabujbagh', 'সবুজবাগ', '302668', NULL, NULL, '68', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (189, 'ad2ce923-f145-48fa-b1ad-670b81f4f4cc', 'Rupnagar', 'রাংগুনীয়া', '302670', NULL, NULL, '70', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (190, '66fb048f-9995-489a-baef-1ccfe7544c40', 'Savar', 'সাভার', '302672', 23.50048, 90.1504, '72', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (191, '09a185b8-d708-4249-a8d3-16d4fdfcd0d3', 'Shahjahanpur', 'রামপাল', '302673', NULL, NULL, '73', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (192, '31ca8c31-b321-4197-9099-261fa407e67b', 'Shah Ali', 'শাহ্‌ আলী', '302674', NULL, NULL, '74', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (193, '3d893605-cc76-4e2a-a848-612bb77b3139', 'Shahbagh', 'শাহবাগ', '302675', NULL, NULL, '75', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 4, '2016-11-27 19:56:56', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (194, 'c1858240-b6f6-4a88-bef0-da7502f05159', 'Shyampur', 'শ্যামপুর', '302676', NULL, NULL, '76', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (195, 'e9786735-bc3f-4091-bf85-127d84b32055', 'Sher-e-bangla Nagar', 'শের-ই-বাংলা নগর', '302680', NULL, NULL, '80', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 4, '2017-01-18 19:20:42', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (196, 'a9ab112b-6b9e-44ea-aca8-e259ec9b9a9e', 'Sutrapur', 'সুত্রাপুর', '302688', NULL, NULL, '88', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (197, 'e6afb8d2-1396-407c-8aa2-e24706280b5f', 'Tejgaon', 'তেজগাঁও', '302690', NULL, NULL, '90', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (198, '509ac513-609f-4df5-a247-7ec5545f915d', 'Tejgaon Ind. Area', 'তেজগাঁও শিল্প এলাকা', '302692', NULL, NULL, '92', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (199, 'fea17b2e-fe8a-4ff3-b652-f4e9669ff6d5', 'Turag', 'তুরাগ', '302693', NULL, NULL, '93', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (200, 'b1339b81-552e-47ad-bc79-753fd5fe2112', 'Uttara  Paschim', 'উজিরপুর', '302694', NULL, NULL, '94', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (201, 'de6c07fc-b829-4f1a-b370-217feee7dedd', 'Uttara  Purba', 'উত্তরা', '302695', NULL, NULL, '95', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (202, '0f4ee63d-ee42-4011-9c30-7a22791799e2', 'Uttar Khan', 'উত্তর খান', '302696', NULL, NULL, '96', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (203, '57da1f84-7ea0-4900-9bc0-5ab49b7d92b3', 'Wari', 'ওয়ারী', '302698', NULL, NULL, '98', 1, '30', 'Dhaka', 1, '26', 'Dhaka', 'ঢাকা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (204, '48d16875-b1c1-4a80-9934-d253447c0f5e', 'Alfadanga', 'আল্‌ফাডাঙ্গা', '302903', 23.2748729, 89.6910223, '03', 1, '30', 'Dhaka', 2, '29', 'Faridpur', 'ফরিদপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (205, '8df9e446-457f-462f-a5b4-5bd1f4725f0f', 'Bhanga', 'ভাংগা', '302910', 23.4061686, 90.0186555, '10', 1, '30', 'Dhaka', 2, '29', 'Faridpur', 'ফরিদপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (206, 'dc50b822-25d3-4535-836c-000bf280e454', 'Boalmari', 'বোয়ালমারী', '302918', 23.3917, 89.6833, '18', 1, '30', 'Dhaka', 2, '29', 'Faridpur', 'ফরিদপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (207, 'c69e8350-8046-4823-ad25-85c37b5ead2b', 'Char Bhadrasan', 'চর ভদ্রাশন', '302921', NULL, NULL, '21', 1, '30', 'Dhaka', 2, '29', 'Faridpur', 'ফরিদপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (208, 'd5c0a264-5681-4a7d-bb55-eaf9da6ce718', 'Faridpur Sadar', 'ফরিদপুর সদর', '302947', 23.6203524, 89.8130355999999, '47', 1, '30', 'Dhaka', 2, '29', 'Faridpur', 'ফরিদপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (209, 'f90235b9-1af1-4743-8187-93a517fe8488', 'Madhukhali', 'মধুখালী', '302956', NULL, NULL, '56', 1, '30', 'Dhaka', 2, '29', 'Faridpur', 'ফরিদপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (210, 'b74adfee-9728-46f0-887d-b463d31659e7', 'Nagarkanda', 'নগরকান্দা', '302962', 23.4538, 89.9066, '62', 1, '30', 'Dhaka', 2, '29', 'Faridpur', 'ফরিদপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (211, '48c5dede-9c1f-455c-a48c-1754b2bac819', 'Sadarpur', 'সদরপুর', '302984', 23.47147, 90.02712, '84', 1, '30', 'Dhaka', 2, '29', 'Faridpur', 'ফরিদপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (212, '91fd8bb6-b5bb-4cb5-a497-d606c22b0dda', 'Saltha', 'সালথা', '302990', NULL, NULL, '90', 1, '30', 'Dhaka', 2, '29', 'Faridpur', 'ফরিদপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (213, 'f446f539-c671-46e1-89d0-11d54526f17c', 'Gazipur Sadar', 'গাজীপুর সদর', '303330', 24.0958171, 90.4125180999999, '30', 1, '30', 'Dhaka', 3, '33', 'Gazipur', 'গাজীপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (214, '5506ba4c-15fc-4ffe-a4d6-2713e0f07d96', 'Kaliakair', 'কালিয়াকৈর', '303332', 23.99133, 90.42398, '32', 1, '30', 'Dhaka', 3, '33', 'Gazipur', 'গাজীপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (215, '922a73ba-10d1-46b5-a39c-7b2f0d5c0047', 'Kaliganj', 'কালিগঞ্জ', '303334', 23.402804, 89.143274, '34', 1, '30', 'Dhaka', 3, '33', 'Gazipur', 'গাজীপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (216, '9e51aff3-8f3c-4925-8297-f62e73628564', 'Kapasia', 'কাপাসিয়া', '303336', 24.12143, 90.568228, '36', 1, '30', 'Dhaka', 3, '33', 'Gazipur', 'গাজীপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (217, '68d3bf47-1a36-4db9-9d58-809a51046ca7', 'Sreepur', 'শ্রীপুর', '303386', 24.19965, 90.4809, '86', 1, '30', 'Dhaka', 3, '33', 'Gazipur', 'গাজীপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (218, 'a23735bc-65c6-4a63-ae27-9ee66e3d837f', 'Gopalganj Sadar', 'গোপালগঞ্জ সদর', '303532', 23.0130139, 89.8224054, '32', 1, '30', 'Dhaka', 4, '35', 'Gopalganj', 'গোপালগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (219, '892a8dca-9bae-4096-b37e-186bf508739c', 'Kashiani', 'কাশিয়ানী', '303543', 23.04652, 90.02335, '43', 1, '30', 'Dhaka', 4, '35', 'Gopalganj', 'গোপালগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (220, '8e0be202-48dc-4e9b-9706-321b0ba2cc4e', 'Kotalipara', 'কোটালিপাড়া', '303551', NULL, NULL, '51', 1, '30', 'Dhaka', 4, '35', 'Gopalganj', 'গোপালগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (221, '0584c143-e4fb-44d2-b2a7-5562f957fd33', 'Muksudpur', 'মুকসুদপুর', '303558', 23.3197792, 89.8668809000001, '58', 1, '30', 'Dhaka', 4, '35', 'Gopalganj', 'গোপালগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (222, 'd4793523-0e08-40c1-b747-e9d08508fbc0', 'Tungipara', 'টংগীপাড়া', '303591', NULL, NULL, '91', 1, '30', 'Dhaka', 4, '35', 'Gopalganj', 'গোপালগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (223, '8bfebc45-8af8-40c3-bb10-52f3f51662a1', 'Bakshiganj', 'বকশিগঞ্জ', '453907', 25.177, 89.87, '07', 1, '30', 'Dhaka', 5, '39', 'Jamalpur', 'জামালপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (224, '14723427-879e-474d-81e9-5cece4b5c3e6', 'Dewanganj', 'দেওয়ানগঞ্জ', '453915', 25.16183, 89.75852, '15', 1, '30', 'Dhaka', 5, '39', 'Jamalpur', 'জামালপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (225, '3be715ce-f598-42ec-8ad3-8af7aeaeec24', 'Islampur', 'ইসলামপুর', '453929', 25.0787, 89.7993, '29', 1, '30', 'Dhaka', 5, '39', 'Jamalpur', 'জামালপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (226, 'fabeb8c1-0887-4e3b-be63-e7c5ca400f6f', 'Jamalpur Sadar', 'জামালপুর সদর', '453936', NULL, NULL, '36', 1, '30', 'Dhaka', 5, '39', 'Jamalpur', 'জামালপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (227, '9338601d-10cd-4cf9-b4f5-a4773efbda1b', 'Madarganj', 'মাদারগঞ্জ', '453958', 24.89392, 89.7173, '58', 1, '30', 'Dhaka', 5, '39', 'Jamalpur', 'জামালপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (228, 'b69e257d-fff3-407b-bd12-09ccfa0e99b2', 'Melandaha', 'মেলান্দহ', '453961', NULL, NULL, '61', 1, '30', 'Dhaka', 5, '39', 'Jamalpur', 'জামালপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (229, 'e2f8335f-19c7-4e91-9c24-daf757c1eace', 'Sarishabari Upazila', 'সরিষাবাড়ী', '453985', NULL, NULL, '85', 1, '30', 'Dhaka', 5, '39', 'Jamalpur', 'জামালপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (230, '047116dc-db52-4921-b93a-756f0316451c', 'Austagram', 'অষ্টগ্রাম', '304802', 24.2733317, 91.1032314, '02', 1, '30', 'Dhaka', 6, '48', 'Kishorgonj', 'কিশোরগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (231, 'b9898219-2852-44f4-8c03-a28229751c72', 'Bajitpur', 'বাজিতপুর', '304806', 24.12, 90.57, '06', 1, '30', 'Dhaka', 6, '48', 'Kishorgonj', 'কিশোরগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (232, 'f590feb7-33b8-45f3-a9a8-43c09a15c417', 'Bhairab', 'ভৈরব', '304811', 23.70992, 90.46714, '11', 1, '30', 'Dhaka', 6, '48', 'Kishorgonj', 'কিশোরগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (233, '4b4671ba-cb5d-44d9-8854-6acbf9dcad73', 'Hossainpur', 'হোসেনপুর', '304827', 24.4396312, 90.6678177, '27', 1, '30', 'Dhaka', 6, '48', 'Kishorgonj', 'কিশোরগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (234, '75343211-cf8d-4f51-9a66-0beb4454db64', 'Itna', 'ইটনা', '304833', 24.527681, 91.094038, '33', 1, '30', 'Dhaka', 6, '48', 'Kishorgonj', 'কিশোরগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (235, 'ba3737bf-60bf-497b-b6f8-2354f55e4698', 'Karimganj', 'করিমগঞ্জ', '304842', 24.4503945, 90.8865834000001, '42', 1, '30', 'Dhaka', 6, '48', 'Kishorgonj', 'কিশোরগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (236, 'a458bd37-8e49-49f9-a65d-33d67f9b2472', 'Katiadi', 'কটিয়াদী', '304845', 24.3082218, 90.8103570000001, '45', 1, '30', 'Dhaka', 6, '48', 'Kishorgonj', 'কিশোরগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (237, '22d9a158-c61b-403a-bd26-d2ea3981ec2d', 'Kishoreganj Sadar', 'কিশোরগঞ্জ সদর', '304849', 24.4034905, 90.7722974000001, '49', 1, '30', 'Dhaka', 6, '48', 'Kishorgonj', 'কিশোরগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (238, '0b457271-1a5e-4ee3-a1f6-ba84e9e7244c', 'Kuliar Char', 'কুলিয়ার চর', '304854', NULL, NULL, '54', 1, '30', 'Dhaka', 6, '48', 'Kishorgonj', 'কিশোরগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (239, 'f911e6ce-c47f-49b8-8ec0-3c16d496b8ea', 'Mithamain', 'মিঠামইন', '304859', NULL, NULL, '59', 1, '30', 'Dhaka', 6, '48', 'Kishorgonj', 'কিশোরগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (240, '7fb2360b-be1f-46a4-8ef4-c49227eeb0c3', 'Nikli', 'নিক্‌লী', '304876', 24.3548728, 90.9629523, '76', 1, '30', 'Dhaka', 6, '48', 'Kishorgonj', 'কিশোরগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (241, 'e1fb7bf5-08b1-4244-951d-6928d457c8f9', 'Pakundia', 'পাকুন্দিয়া', '304879', 24.327077, 90.681099, '79', 1, '30', 'Dhaka', 6, '48', 'Kishorgonj', 'কিশোরগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (242, 'bf8cfb64-5bc6-4933-b416-4846b0d0da06', 'Tarail', 'তারাইল', '304892', 24.549118, 90.890756, '92', 1, '30', 'Dhaka', 6, '48', 'Kishorgonj', 'কিশোরগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (243, '63053df7-b47a-4539-9f8d-bd523b28a709', 'Kalkini', 'কালকিনী', '305440', 23.0755, 90.2268, '40', 1, '30', 'Dhaka', 7, '54', 'Madaripur', 'মাদারীপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (244, 'fcb3f223-f3d7-40dd-9bfa-908a481700d9', 'Madaripur Sadar', 'মাদারিপুর সদর', '305454', NULL, NULL, '54', 1, '30', 'Dhaka', 7, '54', 'Madaripur', 'মাদারীপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (245, 'f4782dbe-acde-4471-8977-8c2c107f774a', 'Rajoir', 'রাজৈর', '305480', NULL, NULL, '80', 1, '30', 'Dhaka', 7, '54', 'Madaripur', 'মাদারীপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (246, '375c5658-1a0d-4346-8527-20fa8297ac64', 'Shibchar', 'শিব্‌ চর', '305487', 23.3584485, 90.1682271, '87', 1, '30', 'Dhaka', 7, '54', 'Madaripur', 'মাদারীপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (247, '19ff58d2-17d6-40ce-9d74-07146a017dd9', 'Daulatpur', 'দৌলতপুর', '305610', 24.000838, 88.874542, '10', 1, '30', 'Dhaka', 8, '56', 'Manikganj', 'মানিকগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (248, 'e116eb12-cfc3-4e64-a821-2a592bae9d1b', 'Ghior', 'ঘিওর', '305622', 23.8703485, 89.9159784999999, '22', 1, '30', 'Dhaka', 8, '56', 'Manikganj', 'মানিকগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (249, 'ba298561-bc77-49d1-a90e-660f92b949a0', 'Harirampur', 'হরিরামপুর', '305628', 23.7156764, 89.9626799, '28', 1, '30', 'Dhaka', 8, '56', 'Manikganj', 'মানিকগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (250, '224f518e-29e7-4c26-a02c-c3505547499c', 'Manikganj Sadar', 'মানিকগঞ্জ সদর', '305646', 23.8584557, 89.9253232999999, '46', 1, '30', 'Dhaka', 8, '56', 'Manikganj', 'মানিকগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (251, 'ae1d2618-94a7-4418-92f8-233e89ba0eb0', 'Saturia', 'সাটুরিয়া', '305670', 23.58, 90.02, '70', 1, '30', 'Dhaka', 8, '56', 'Manikganj', 'মানিকগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (252, '10157022-e793-4ab3-be14-6121cf928a8f', 'Shibalaya', 'শিবালয়', '305678', 23.8375062, 89.787257, '78', 1, '30', 'Dhaka', 8, '56', 'Manikganj', 'মানিকগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (253, 'eb94b725-ac0c-43b9-9df2-c5a85f29f639', 'Singair', 'শিংগাইর', '305682', NULL, NULL, '82', 1, '30', 'Dhaka', 8, '56', 'Manikganj', 'মানিকগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (254, 'a5446e61-f7e3-43a9-9c98-a4f942077fe1', 'Gazaria', 'গজারিয়া', '305924', 23.5456, 90.5346, '24', 1, '30', 'Dhaka', 9, '59', 'Munshiganj', 'মুন্সিগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (255, '59dcbf4d-a3b6-412c-9d56-4225dd817b1a', 'Lohajang', 'লৌহজং', '305944', 23.4653207, 90.3465971, '44', 1, '30', 'Dhaka', 9, '59', 'Munshiganj', 'মুন্সিগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (256, '961f52a8-bcbd-4ab3-92b9-f7834625e4b0', 'Munshiganj Sadar', 'মুন্সীগঞ্জ সদর', '305956', 23.5248687, 90.3371889, '56', 1, '30', 'Dhaka', 9, '59', 'Munshiganj', 'মুন্সিগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (257, 'a1593391-4bac-49ce-b44e-1624ed3dcb37', 'Serajdikhan', 'সিরাজদিখান', '305974', 23.5961616, 90.3936722, '74', 1, '30', 'Dhaka', 9, '59', 'Munshiganj', 'মুন্সিগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (258, 'bed775d8-313b-4a58-bed1-f99312556ee9', 'Sreenagar', 'শ্রীনগর', '305984', 23.5502726, 90.2900702, '84', 1, '30', 'Dhaka', 9, '59', 'Munshiganj', 'মুন্সিগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (259, '91201bb9-27e6-4dc2-a572-3b70ba4fd8b2', 'Tongibari', 'টুঙ্গিবাড়ী', '305994', 23.4530961, 90.4691097, '94', 1, '30', 'Dhaka', 9, '59', 'Munshiganj', 'মুন্সিগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (260, 'c68ee241-63a9-4640-b1eb-9cb1846b8cc5', 'Bhaluka', 'ভালুকা', '456113', 24.3813087, 90.3371889, '13', 1, '30', 'Dhaka', 10, '61', 'Mymensingh', 'ময়মনসিংহ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (261, '6b0d7b76-1ee1-45a1-b2cd-361731a2f4d1', 'Dhobaura', 'ধোবাউড়া', '456116', NULL, NULL, '16', 1, '30', 'Dhaka', 10, '61', 'Mymensingh', 'ময়মনসিংহ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (262, 'dd138b0a-e199-47bb-a5b4-270a7285a03d', 'Fulbaria', 'ফুলবাড়ীয়া', '456120', 24.5715533, 90.2620042, '20', 1, '30', 'Dhaka', 10, '61', 'Mymensingh', 'ময়মনসিংহ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (263, '52be7f46-9853-4567-a60b-adbee834e172', 'Gaffargaon', 'গফরগাঁও', '456122', 24.3806395, 90.563609, '22', 1, '30', 'Dhaka', 10, '61', 'Mymensingh', 'ময়মনসিংহ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (264, '7d281bd7-4f4c-4e83-a0f3-67b5e1a9af8c', 'Gauripur', 'গৌরীপুর', '456123', NULL, NULL, '23', 1, '30', 'Dhaka', 10, '61', 'Mymensingh', 'ময়মনসিংহ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (265, '0e19ff5d-5e11-4540-abf6-374be6f4ad83', 'Haluaghat', 'হালুয়াঘাট', '456124', 25.1173403, 90.3560076, '24', 1, '30', 'Dhaka', 10, '61', 'Mymensingh', 'ময়মনসিংহ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (266, '70a30af5-fd97-4839-a0d4-683a3acbf520', 'Ishwarganj', 'ঈশ্বরগঞ্জ', '456131', NULL, NULL, '31', 1, '30', 'Dhaka', 10, '61', 'Mymensingh', 'ময়মনসিংহ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (267, '595212e9-ee00-4742-aa86-6688ce1da279', 'Mymensingh Sadar', 'ময়মনসিংহ সদর', '456152', NULL, NULL, '52', 1, '30', 'Dhaka', 10, '61', 'Mymensingh', 'ময়মনসিংহ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (268, 'a6b0e7fc-57f1-4bfe-8d7d-c84223d91542', 'Muktagachha', 'মুক্তাগাছা', '456165', NULL, NULL, '65', 1, '30', 'Dhaka', 10, '61', 'Mymensingh', 'ময়মনসিংহ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (269, 'ec631f75-7016-4f1a-b2f5-d630a2cfb8f7', 'Nandail', 'নান্দাইল', '456172', NULL, NULL, '72', 1, '30', 'Dhaka', 10, '61', 'Mymensingh', 'ময়মনসিংহ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (270, '1a52ec4e-d325-4af6-a543-557761225e92', 'Phulpur', 'ফুলপুর', '456181', NULL, NULL, '81', 1, '30', 'Dhaka', 10, '61', 'Mymensingh', 'ময়মনসিংহ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (271, '1e3ae255-e447-46a1-9dd8-72c346549f6f', 'Tarakanda', 'শেরপুর', '456188', NULL, NULL, '88', 1, '30', 'Dhaka', 10, '61', 'Mymensingh', 'ময়মনসিংহ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (272, '514a39cd-7306-4d07-a2cb-6390e79962c6', 'Trishal', 'ত্রিশাল', '456194', 24.5712183, 90.4125180999999, '94', 1, '30', 'Dhaka', 10, '61', 'Mymensingh', 'ময়মনসিংহ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (273, '4d921e34-aeb5-4e92-a73b-2b819bebd147', 'Araihazar', 'আড়াইহাজার', '306702', NULL, NULL, '02', 1, '30', 'Dhaka', 11, '67', 'Narayanganj', 'নারায়ণগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (274, '41b821e6-e6f4-4a99-b02a-8e1cc375e6d1', 'Sonargaon', 'সোনারগাঁও', '306704', 23.6906423, 90.6204164999999, '04', 1, '30', 'Dhaka', 11, '67', 'Narayanganj', 'নারায়ণগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (275, 'aa44aa2b-7810-45fa-a81e-1cd83333b042', 'Bandar', 'বন্দর', '306706', 23.6314492, 90.5352356, '06', 1, '30', 'Dhaka', 11, '67', 'Narayanganj', 'নারায়ণগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (276, '6668213f-6291-443f-b58d-e5e33f298eb4', 'Narayanganj Sadar', 'নারায়নগঞ্জ সদর', '306758', NULL, NULL, '58', 1, '30', 'Dhaka', 11, '67', 'Narayanganj', 'নারায়ণগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (277, 'a9207c27-d0cf-4867-add7-82ba0c7a1ff0', 'Rupganj', 'রূপগঞ্জ', '306768', 23.8337206, 90.5446912, '68', 1, '30', 'Dhaka', 11, '67', 'Narayanganj', 'নারায়ণগঞ্জ', 17292, '2016-11-10 13:38:08', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (278, '683854c6-dfac-4a77-a38d-9eadad9dc83e', 'Belabo', 'বেলাবো', '306807', 24.0822, 90.839, '07', 1, '30', 'Dhaka', 12, '68', 'Narsingdi', 'নরসিংদী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (279, 'b9a15c41-1fea-4247-8189-b7e08fa7e6de', 'Manohardi', 'মনোহরদী', '306852', 24.1659585, 90.7342734, '52', 1, '30', 'Dhaka', 12, '68', 'Narsingdi', 'নরসিংদী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (280, 'bf44c756-ad34-4d17-b158-ac760037f6c5', 'Narsingdi Sadar', 'নরসিংদী সদর', '306860', 23.9991955, 90.7913227, '60', 1, '30', 'Dhaka', 12, '68', 'Narsingdi', 'নরসিংদী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (281, '10c5682f-e8d3-49e5-9c82-1e3cd15fd084', 'Palash', 'পলাশ', '306863', 23.987967, 90.64885, '63', 1, '30', 'Dhaka', 12, '68', 'Narsingdi', 'নরসিংদী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (282, '4e509062-90f6-4518-a32c-05b55a3e0acd', 'Roypura', 'রায়পুরা', '306864', NULL, NULL, '64', 1, '30', 'Dhaka', 12, '68', 'Narsingdi', 'নরসিংদী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (283, '1d32dc3d-1cc0-4421-8a4c-b391b621ce53', 'Shibpur', 'শিবপুর', '306876', 24.038119, 90.7366489, '76', 1, '30', 'Dhaka', 12, '68', 'Narsingdi', 'নরসিংদী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (284, '450a39b2-5102-417b-ba75-07acb0f096a4', 'Atpara', 'আটপাড়া', '457204', NULL, NULL, '04', 1, '30', 'Dhaka', 13, '72', 'Netrakona', 'নেত্রকোনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (285, 'aaf2ca03-7391-429b-9e39-50bb0c82a98a', 'Barhatta', 'বারহাট্টা', '457209', NULL, NULL, '09', 1, '30', 'Dhaka', 13, '72', 'Netrakona', 'নেত্রকোনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (286, '0ee3e037-dba0-40be-a2a2-738caf80fd10', 'Durgapur', 'দূর্গাপুর', '457218', 25.113425, 90.675131, '18', 1, '30', 'Dhaka', 13, '72', 'Netrakona', 'নেত্রকোনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (287, 'ad865a80-df6b-493e-85f8-70bfaea89348', 'Khaliajuri', 'খলিয়াজুরী', '457238', NULL, NULL, '38', 1, '30', 'Dhaka', 13, '72', 'Netrakona', 'নেত্রকোনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (288, 'f7317631-bca9-4164-925f-76338c1b5446', 'Kalmakanda', 'কলমাকান্দা', '457240', 25.0679118, 90.8484524, '40', 1, '30', 'Dhaka', 13, '72', 'Netrakona', 'নেত্রকোনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (289, '38010800-e3f9-48e5-9894-b2c767dda913', 'Kendua', 'কেন্দুয়া', '457247', NULL, NULL, '47', 1, '30', 'Dhaka', 13, '72', 'Netrakona', 'নেত্রকোনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (290, '7107e5e7-afd5-4830-956c-be09d4c2cec3', 'Madan', 'মদন', '457256', NULL, NULL, '56', 1, '30', 'Dhaka', 13, '72', 'Netrakona', 'নেত্রকোনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (291, '7726495a-2c89-43fb-a192-68850d9c5b5a', 'Mohanganj', 'মোহনগঞ্জ', '457263', 24.8294156, 91.0394635, '63', 1, '30', 'Dhaka', 13, '72', 'Netrakona', 'নেত্রকোনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (292, '95a83e9d-2e9f-4a7d-8c62-d322361b15f9', 'Netrokona Sadar', 'নেত্রকোনা সদর', '457274', 24.8069826, 90.8294002, '74', 1, '30', 'Dhaka', 13, '72', 'Netrakona', 'নেত্রকোনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (293, '8ec1b400-c9ba-4ba6-9371-a43ea6e7e6c7', 'Purbadhala', 'পূর্বধলা', '457283', 24.56, 90.36, '83', 1, '30', 'Dhaka', 13, '72', 'Netrakona', 'নেত্রকোনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (294, '24ce84ed-6127-4524-922c-96de54b68ff4', 'Baliakandi', 'বালিয়াকান্দি', '308207', NULL, NULL, '07', 1, '30', 'Dhaka', 14, '82', 'Rajbari', 'রাজবাড়ী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (295, '01802812-1a32-4b51-abac-913b73b953d4', 'Goalanda', 'গোয়ালন্দ', '308229', NULL, NULL, '29', 1, '30', 'Dhaka', 14, '82', 'Rajbari', 'রাজবাড়ী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (296, '5f8d76fd-5c5c-46d8-8934-f0cd42225d8a', 'Kalukhali', 'বেতাগী', '308247', NULL, NULL, '47', 1, '30', 'Dhaka', 14, '82', 'Rajbari', 'রাজবাড়ী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (297, '483bd5c8-4e40-44ff-8f93-6b130057c415', 'Pangsha', 'পাংশা', '308273', 23.79012, 89.42544, '73', 1, '30', 'Dhaka', 14, '82', 'Rajbari', 'রাজবাড়ী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (298, 'e0143513-ac77-42c3-85c0-78ac47675537', 'Rajbari Sadar', 'রাজবাড়ী সদর', '308276', 23.715134, 89.5874819000001, '76', 1, '30', 'Dhaka', 14, '82', 'Rajbari', 'রাজবাড়ী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (299, '31697c1b-bc58-4223-90f5-51041535792c', 'Bhedarganj', 'ভেদরগঞ্জ', '308614', 23.19767, 90.44275, '14', 1, '30', 'Dhaka', 15, '86', 'Shariatpur', 'শরীয়তপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (300, '9b17b621-7a04-4bcd-a28c-42ae763850e3', 'Damudya', 'ডামুড্যা', '308625', 23.1316824, 90.4219444, '25', 1, '30', 'Dhaka', 15, '86', 'Shariatpur', 'শরীয়তপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (301, 'f832a8cf-48ec-4944-b9b3-e8bfa9cf8163', 'Gosairhat', 'গোসাইরহাট', '308636', 23.0719882, 90.4691097, '36', 1, '30', 'Dhaka', 15, '86', 'Shariatpur', 'শরীয়তপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (302, 'd81c351d-b3cc-4a01-9d55-0e7114cca04d', 'Naria', 'নড়িয়া', '308665', 23.30931, 90.42917, '65', 1, '30', 'Dhaka', 15, '86', 'Shariatpur', 'শরীয়তপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (303, '6608d798-7d8c-4758-a159-b9b483e97661', 'Shariatpur Sadar', 'শরিয়তপুর সদর', '308669', NULL, NULL, '69', 1, '30', 'Dhaka', 15, '86', 'Shariatpur', 'শরীয়তপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (304, '1952d148-cde5-499e-8242-156b0b56905c', 'Zanjira', 'জাজিরা', '308694', 23.3582164, 90.3183792, '94', 1, '30', 'Dhaka', 15, '86', 'Shariatpur', 'শরীয়তপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (305, 'bbcc4b77-c900-4836-9b51-b50e76448062', 'Jhenaigati', 'ঝিনাইঘাতি', '458937', NULL, NULL, '37', 1, '30', 'Dhaka', 16, '89', 'Sherpur', 'শেরপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (306, '112b93b7-e13a-4ae1-93fc-d071b94f968e', 'Nakla', 'নকলা', '458967', 24.9752761, 90.2057108, '67', 1, '30', 'Dhaka', 16, '89', 'Sherpur', 'শেরপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (307, '6ca309f1-fb68-40cf-93e0-0339a1ab663a', 'Nalitabari', 'নালিতাবাড়ী', '458970', NULL, NULL, '70', 1, '30', 'Dhaka', 16, '89', 'Sherpur', 'শেরপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (308, 'ac5af481-17d4-4497-b6e7-a99e44155c8a', 'Sherpur Sadar', 'শেরপুর সদর', '458988', 25.0465571, 90.1120696, '88', 1, '30', 'Dhaka', 16, '89', 'Sherpur', 'শেরপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (309, 'cade66ca-ba2a-4a26-8bc8-2117b2116e67', 'Sreebardi', 'শ্রীবর্দি', '458990', NULL, NULL, '90', 1, '30', 'Dhaka', 16, '89', 'Sherpur', 'শেরপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (310, '43e57977-54f1-4086-9787-75fb8e7f0ef7', 'Basail', 'বাসাইল', '309309', 24.2152629, 90.0559939, '09', 1, '30', 'Dhaka', 17, '93', 'Tangail', 'টাঙ্গাইল', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (311, '51dff9e7-3ab1-4ef5-857d-0e0b5415cb8c', 'Bhuapur', 'ভূঞাপুর', '309319', 24.457151, 89.844711, '19', 1, '30', 'Dhaka', 17, '93', 'Tangail', 'টাঙ্গাইল', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (312, 'd5119e23-52b3-4c05-8cf6-738fece567a3', 'Delduar', 'দেলদুয়ার', '309323', 24.1201434, 89.9440061, '23', 1, '30', 'Dhaka', 17, '93', 'Tangail', 'টাঙ্গাইল', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (313, '6ab7a66b-8147-4aa2-9729-b4e6ef0b33bf', 'Dhanbari', 'ধনবাড়ী', '309325', 24.6905333, 89.9440061, '25', 1, '30', 'Dhaka', 17, '93', 'Tangail', 'টাঙ্গাইল', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (314, '7f8ff71b-6f0f-4ab3-b763-017ea21ac1c4', 'Ghatail', 'ঘাটাইল', '309328', NULL, NULL, '28', 1, '30', 'Dhaka', 17, '93', 'Tangail', 'টাঙ্গাইল', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (315, '9107448d-2b6a-4574-a4bd-29aa7ca368ab', 'Gopalpur', 'গোপালপুর', '309338', NULL, NULL, '38', 1, '30', 'Dhaka', 17, '93', 'Tangail', 'টাঙ্গাইল', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (316, '472564fa-36fb-41f9-99b0-2fd4f432b212', 'Kalihati', 'কালিহাতি', '309347', 24.2634, 89.91739, '47', 1, '30', 'Dhaka', 17, '93', 'Tangail', 'টাঙ্গাইল', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (317, '7aea0366-240f-428a-80d3-dc29867dcd96', 'Madhupur', 'মধুপুর', '309357', NULL, NULL, '57', 1, '30', 'Dhaka', 17, '93', 'Tangail', 'টাঙ্গাইল', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (318, '456bd6c1-a1bb-4c17-8034-6e47073bbf09', 'Mirzapur', 'মির্জাপুর', '309366', NULL, NULL, '66', 1, '30', 'Dhaka', 17, '93', 'Tangail', 'টাঙ্গাইল', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (319, 'c8c34e11-f776-486d-b5d5-60ca66955fd0', 'Nagarpur', 'নাগরপুর', '309376', NULL, NULL, '76', 1, '30', 'Dhaka', 17, '93', 'Tangail', 'টাঙ্গাইল', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (320, 'bbf7f33e-1a39-41aa-860e-62f63c07fddd', 'Sakhipur', 'সখিপুর', '309385', NULL, NULL, '85', 1, '30', 'Dhaka', 17, '93', 'Tangail', 'টাঙ্গাইল', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (321, '166b577e-941b-4298-9028-3b68f9c0a81a', 'Tangail Sadar', 'টাঙ্গাইল সদর', '309395', 24.247471, 89.92099, '95', 1, '30', 'Dhaka', 17, '93', 'Tangail', 'টাঙ্গাইল', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (322, 'eff3486a-a6c9-4a00-9dda-aba414778011', 'Bagerhat Sadar', 'বাগেরহাট সদর', '400108', 22.3336224, 89.7755337999999, '08', 5, '40', 'Khulna', 45, '01', 'Bagerhat', 'বাগেরহাট', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (323, '529a9528-1748-45b0-89bd-8f5ff893781c', 'Chitalmari', 'চিতলমারী', '400114', 22.7867, 89.8692, '14', 5, '40', 'Khulna', 45, '01', 'Bagerhat', 'বাগেরহাট', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (324, '7d2a22d6-6d0c-4b13-820d-5da214871b29', 'Fakirhat', 'ফকিরহাট', '400134', 22.7506, 89.6722, '34', 5, '40', 'Khulna', 45, '01', 'Bagerhat', 'বাগেরহাট', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (325, 'b65b4ad5-d04a-4251-a8b1-0c5fc128a6fa', 'Kachua', 'কচুয়া', '400138', 22.653304, 89.885963, '38', 5, '40', 'Khulna', 45, '01', 'Bagerhat', 'বাগেরহাট', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (326, '7be2dcb7-e3a1-44ba-917b-ba1d15b36343', 'Mollahat', 'মোল্লাহাট', '400156', 22.881864, 89.7567693, '56', 5, '40', 'Khulna', 45, '01', 'Bagerhat', 'বাগেরহাট', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (327, 'f1026b9b-b3cb-4cb4-adc4-fed350422216', 'Mongla', 'মোংলা', '400158', 22.473124, 89.617664, '58', 5, '40', 'Khulna', 45, '01', 'Bagerhat', 'বাগেরহাট', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (328, '165e9f19-7001-4eb2-98bb-b19ee48edcd6', 'Morrelganj', 'মোড়লগঞ্জ', '400160', 22.476721, 89.8130355999999, '60', 5, '40', 'Khulna', 45, '01', 'Bagerhat', 'বাগেরহাট', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (329, '4a9fcce2-8818-4824-9f70-f24c3dab0a4a', 'Rampal', 'রামপাল', '400173', 22.5827, 89.6782, '73', 5, '40', 'Khulna', 45, '01', 'Bagerhat', 'বাগেরহাট', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (330, '2c9b7bb3-3eb1-436a-b67b-d0b4d5f814ea', 'Sarankhola', 'শরণখোলা', '400177', 22.244616, 89.824004, '77', 5, '40', 'Khulna', 45, '01', 'Bagerhat', 'বাগেরহাট', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (331, '7e3a2f58-d80e-4acc-8a37-06641e604c35', 'Alamdanga', 'আলমডাংগা', '401807', 23.762645, 88.943804, '07', 5, '40', 'Khulna', 46, '18', 'Chuadanga', 'চুয়াডাঙ্গা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (332, 'b556513a-1bc0-4e9a-a04b-0f2be92dc31c', 'Chuadanga Sadar', 'চুয়াডাঙ্গা সদর', '401823', NULL, NULL, '23', 5, '40', 'Khulna', 46, '18', 'Chuadanga', 'চুয়াডাঙ্গা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (333, '49f5d3e8-ccf6-4fb1-b690-a68aeadbe807', 'Damurhuda', 'দামুরহুদা', '401831', 23.615454, 88.7493998, '31', 5, '40', 'Khulna', 46, '18', 'Chuadanga', 'চুয়াডাঙ্গা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (334, '9a560f91-9f28-4d51-b657-5980b39d0410', 'Jiban Nagar', 'জীবন নগর', '401855', NULL, NULL, '55', 5, '40', 'Khulna', 46, '18', 'Chuadanga', 'চুয়াডাঙ্গা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (335, 'd289e1c1-a727-4627-8de1-eff02f90627f', 'Abhaynagar', 'অভয়নগর', '404104', 23.0213889, 89.405, '04', 5, '40', 'Khulna', 47, '41', 'Jessore', 'যশোর', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (336, 'd6aecd59-3e56-4d55-9b9b-c9e035be8045', 'Bagher Para', 'বাঘারপাড়া', '404109', NULL, NULL, '09', 5, '40', 'Khulna', 47, '41', 'Jessore', 'যশোর', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (337, '82b32dc8-092a-4325-9fcb-20428d4ea68e', 'Chaugachha', 'চৌগাছা', '404111', 23.2603293, 89.0370477, '11', 5, '40', 'Khulna', 47, '41', 'Jessore', 'যশোর', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (338, '9433da42-f5ed-4fd7-b70d-4f5a8f3e0e53', 'Jhikargachha', 'ঝিকরগাছা', '404123', 23.06999, 89.0752499, '23', 5, '40', 'Khulna', 47, '41', 'Jessore', 'যশোর', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (339, '41ad07cb-36a6-4117-91ce-2dd95da2b573', 'Keshabpur', 'কেশবপুর', '404138', 22.90986, 89.21361, '38', 5, '40', 'Khulna', 47, '41', 'Jessore', 'যশোর', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (340, 'e15cf747-c35f-4abd-b158-12febcc4b5d2', 'Jessore Sadar', 'যশোর সদর', '404147', 23.1666667, 89.2166667, '47', 5, '40', 'Khulna', 47, '41', 'Jessore', 'যশোর', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (341, 'e6570108-c99d-4636-ba4e-3af11d1e66a8', 'Monirampur', 'মনিরামপুর', '404161', NULL, NULL, '61', 5, '40', 'Khulna', 47, '41', 'Jessore', 'যশোর', 16786, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (342, '9766f9b1-44c0-45ac-91df-d8e838e24f64', 'Sharsha', 'শার্শা', '404190', 23.069281, 88.9605365, '90', 5, '40', 'Khulna', 47, '41', 'Jessore', 'যশোর', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (343, '3e5479ab-fbe1-496b-9bc8-8e7c99bb95c0', 'Harinakunda', 'হরিনাকুন্ডু', '404414', 23.6415283, 89.0752499, '14', 5, '40', 'Khulna', 48, '44', 'Jhenaidah', 'ঝিনাইদাহ', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (344, '995b73fb-704a-4208-94de-ab59b73ef82a', 'Jhenaidah Sadar', 'ঝিনাইদহ সদর', '404419', 23.4754162, 89.1705998, '19', 5, '40', 'Khulna', 48, '44', 'Jhenaidah', 'ঝিনাইদাহ', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (345, 'aaef2602-3323-4675-a4ce-48a96ff101aa', 'Kaliganj', 'কালীগঞ্জ', '404433', 23.402804, 89.143274, '33', 5, '40', 'Khulna', 48, '44', 'Jhenaidah', 'ঝিনাইদাহ', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (346, 'ad0ac821-0261-43ab-a6b2-d9cd896633c1', 'Kotchandpur', 'কোটচাঁদপুর', '404442', 23.4506034, 88.9988098, '42', 5, '40', 'Khulna', 48, '44', 'Jhenaidah', 'ঝিনাইদাহ', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (347, '994eec70-6d45-4792-a277-bf09b38b4aa9', 'Maheshpur', 'মহেশপুর', '404471', 23.3303492, 88.8263006, '71', 5, '40', 'Khulna', 48, '44', 'Jhenaidah', 'ঝিনাইদাহ', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (348, 'b434fb0d-8c45-43ad-bf18-7a041ac65875', 'Shailkupa', 'শৈলকুপা', '404480', 23.6423578, 89.2277025999999, '80', 5, '40', 'Khulna', 48, '44', 'Jhenaidah', 'ঝিনাইদাহ', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (349, '8433da9a-b8c0-45c4-af81-7a84c3d1e606', 'Batiaghata', 'বটিয়াঘাটা', '404712', 22.7383634, 89.5308903, '12', 5, '40', 'Khulna', 49, '47', 'Khulna', 'খুলনা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (350, 'd22e17cd-5870-4e5a-9918-4e09eac71d97', 'Dacope', 'দাকোপ', '404717', 22.568366, 89.480467, '17', 5, '40', 'Khulna', 49, '47', 'Khulna', 'খুলনা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (351, '154ec471-b4bb-4673-8832-60497df35f6d', 'Daulatpur', 'দৌলতপুর', '404721', 24.000838, 88.874542, '21', 5, '40', 'Khulna', 49, '47', 'Khulna', 'খুলনা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (352, '41e61ef6-4d05-4d1e-a42c-e89644485a3b', 'Dumuria', 'ডুমুরিয়া', '404730', NULL, NULL, '30', 5, '40', 'Khulna', 49, '47', 'Khulna', 'খুলনা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (353, '15a4bbf1-13f7-4084-aa3e-be6634229f11', 'Dighalia', 'দিঘলিয়া', '404740', 22.8813609, 89.5308903, '40', 5, '40', 'Khulna', 49, '47', 'Khulna', 'খুলনা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (354, '4f5c0b06-ea35-47ec-96ca-2728a33971aa', 'Khalishpur', 'খালিসপুর', '404745', NULL, NULL, '45', 5, '40', 'Khulna', 49, '47', 'Khulna', 'খুলনা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (355, '474cc534-685f-4313-97e8-98a9b08b4dc4', 'Khan Jahan Ali', 'খান জাহান আলী', '404748', NULL, NULL, '48', 5, '40', 'Khulna', 49, '47', 'Khulna', 'খুলনা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (356, 'b37a0042-9cba-4727-b176-b649f3638c8a', 'Khulna Sadar', 'খুলনা সদর', '404751', 22.8166667, 89.55, '51', 5, '40', 'Khulna', 49, '47', 'Khulna', 'খুলনা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (357, '1015336d-298c-4799-87ff-8562e352cac7', 'Koyra', 'কয়রা', '404753', NULL, NULL, '53', 5, '40', 'Khulna', 49, '47', 'Khulna', 'খুলনা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (358, '6606ce08-7563-4259-9d1a-99fbadc11a8c', 'Paikgachha', 'পাইকগাছা', '404764', 89.342483, 22.593726, '64', 5, '40', 'Khulna', 49, '47', 'Khulna', 'খুলনা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (359, 'e25e8f66-d4b9-4ed0-a095-2337f5cc1ecc', 'Phultala', 'ফুলতলা', '404769', 22.9781488, 89.4574642, '69', 5, '40', 'Khulna', 49, '47', 'Khulna', 'খুলনা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (360, 'c55e21be-2ca1-458d-a24c-d89271da1ad0', 'Rupsa', 'রূপসা', '404775', 22.8220512, 89.6345796000001, '75', 5, '40', 'Khulna', 49, '47', 'Khulna', 'খুলনা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (361, '0581a968-9f8c-46d1-8840-50a8a1600c97', 'Sonadanga', 'সোনাডাঙ্গা', '404785', NULL, NULL, '85', 5, '40', 'Khulna', 49, '47', 'Khulna', 'খুলনা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (362, 'b96ec12d-9eed-4a52-9f7e-b8dc426d5752', 'Terokhada', 'তেরখাদা', '404794', 22.929314, 89.6439924, '94', 5, '40', 'Khulna', 49, '47', 'Khulna', 'খুলনা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (363, '6c1ba252-c9d2-45e5-a596-a995c9328ec5', 'Bheramara', 'ভেড়ামারা', '405015', 24.0693285, 88.9988098, '15', 5, '40', 'Khulna', 50, '50', 'Kushtia', 'কুষ্টিয়া', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (364, '976a156b-af76-4334-bda8-5837f8c6b786', 'Daulatpur', 'দৌলতপুর', '405039', 24.000838, 88.874542, '39', 5, '40', 'Khulna', 50, '50', 'Kushtia', 'কুষ্টিয়া', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (365, 'feb74375-1417-4abb-a1ab-6c60842d0e26', 'Khoksa', 'খোক্‌সা', '405063', 89.288117, 23.810122, '63', 5, '40', 'Khulna', 50, '50', 'Kushtia', 'কুষ্টিয়া', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (366, '5e4a46d2-dd77-4eea-9b2b-1fa34867a54c', 'Kumarkhali', 'কুমারখালী', '405071', 23.8088621, 89.2086773, '71', 5, '40', 'Khulna', 50, '50', 'Kushtia', 'কুষ্টিয়া', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (367, '1524d5c6-31ea-4a25-9e1b-858b858732fe', 'Kushtia Sadar', 'কুষ্টিয়া সদর', '405079', 23.9, 89.14, '79', 5, '40', 'Khulna', 50, '50', 'Kushtia', 'কুষ্টিয়া', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (368, '87844b01-5a29-4d85-a862-c86cf409d55e', 'Mirpur', 'মিরপুর', '405094', 88.99945, 23.880815, '94', 5, '40', 'Khulna', 50, '50', 'Kushtia', 'কুষ্টিয়া', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (369, 'be25b05e-2e55-43db-8df4-43694359a29c', 'Magura Sadar', 'মাগুরা সদর', '405557', 23.4289726, 89.436391, '57', 5, '40', 'Khulna', 51, '55', 'Magura', 'মাগুরা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (370, '1ed48f31-efb2-4f9f-a464-b73940f4c488', 'Mohammadpur', 'মোহাম্মদপুর', '405566', 23.4055777, 89.5686271, '66', 5, '40', 'Khulna', 51, '55', 'Magura', 'মাগুরা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (371, '1f97eafc-b0b2-4ede-8d86-1793c6ae435b', 'Shalikha', 'শালিখা', '405585', 23.485644, 89.419931, '85', 5, '40', 'Khulna', 51, '55', 'Magura', 'মাগুরা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (372, '7c767197-879a-4438-9dc2-ddad8a3d6a34', 'Sreepur', 'শ্রীপুর', '405595', 24.19965, 90.4809, '95', 5, '40', 'Khulna', 51, '55', 'Magura', 'মাগুরা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (373, '53f2b1f4-32af-4521-bb89-39c5beb995af', 'Gangni', 'গাংনী', '405747', NULL, NULL, '47', 5, '40', 'Khulna', 52, '57', 'Meherpur', 'মেহেরপুর', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (374, '3f3720f8-cbdc-4bbe-bc8d-d72ec83629f1', 'Mujib Nagar', 'মজিব নগর', '405760', 23.6381155, 88.6144839, '60', 5, '40', 'Khulna', 52, '57', 'Meherpur', 'মেহেরপুর', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (375, '2c9b77c1-d651-44df-a87e-feb4b57acbf5', 'Meherpur Sadar', 'মেহেরপুর সদর', '405787', 23.8051991, 88.6723578, '87', 5, '40', 'Khulna', 52, '57', 'Meherpur', 'মেহেরপুর', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (376, 'c23a58ad-b5d1-407b-b487-38d51969fd67', 'Kalia', 'কালিয়া', '406528', 23.0246287, 89.6439924, '28', 5, '40', 'Khulna', 53, '65', 'Narail', 'নড়াইল', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (377, '230f4883-52bf-434b-9493-04a7ba631d21', 'Lohagara', 'লোহাগড়া', '406552', NULL, NULL, '52', 5, '40', 'Khulna', 53, '65', 'Narail', 'নড়াইল', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (378, '7ed0d3c3-c953-4112-8475-823c63c01905', 'Narail Sadar', 'নড়াইল সদর', '406576', 23.1436, 89.5875, '76', 5, '40', 'Khulna', 53, '65', 'Narail', 'নড়াইল', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (379, 'ff5f4792-3fd4-4d1b-ac61-a9adfb7962a3', 'Assasuni', 'আশাশুনি', '408704', 22.5463, 89.1896, '04', 5, '40', 'Khulna', 54, '87', 'Satkhira', 'সাতক্ষীরা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (380, '3780da02-b207-4455-b691-5d0d0914e580', 'Debhata', 'দেবহাটা', '408725', 22.5929237, 88.9988098, '25', 5, '40', 'Khulna', 54, '87', 'Satkhira', 'সাতক্ষীরা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (381, 'dadca6e1-8bf5-463a-acca-9a3597a7a516', 'Kalaroa', 'কলারোয়া', '408743', 22.8791501, 89.0370477, '43', 5, '40', 'Khulna', 54, '87', 'Satkhira', 'সাতক্ষীরা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (382, '193e9d1e-0097-4d90-9b80-509a2030eea8', 'Kaliganj', 'কালিগঞ্জ', '408747', 23.402804, 89.143274, '47', 5, '40', 'Khulna', 54, '87', 'Satkhira', 'সাতক্ষীরা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (383, '0af971f0-c630-4230-a847-acfdbdd36792', 'Satkhira Sadar', 'সাতক্ষিরা সদর', '408782', 22.728057, 89.06848, '82', 5, '40', 'Khulna', 54, '87', 'Satkhira', 'সাতক্ষীরা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (384, 'aee9ac1a-2c4c-4130-884e-c7423a959b24', 'Shyamnagar', 'শ্যামনগর', '408786', 22.304344, 89.109678, '86', 5, '40', 'Khulna', 54, '87', 'Satkhira', 'সাতক্ষীরা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (385, '91150896-09e8-42f7-8cd4-7b71e24db6f8', 'Tala', 'তালা', '408790', 22.7609, 89.2087, '90', 5, '40', 'Khulna', 54, '87', 'Satkhira', 'সাতক্ষীরা', 1, '2016-12-28 15:20:36', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (386, 'fc81be90-fc9f-42da-8cd0-8b7511f9c3c5', 'Adamdighi', 'আদমদিঘী', '501006', 24.82239, 89.0442, '06', 3, '50', 'Rajshahi', 29, '10', 'Bogra', 'বগুড়া', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (387, '4daa1d86-8019-4b74-8c5e-dc3093173081', 'Bogra Sadar', 'বগুড়া সদর', '501020', NULL, NULL, '20', 3, '50', 'Rajshahi', 29, '10', 'Bogra', 'বগুড়া', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (388, '05b8b801-6293-47e3-bbaf-cae9d96b5032', 'Dhunat', 'ধুনট', '501027', NULL, NULL, '27', 3, '50', 'Rajshahi', 29, '10', 'Bogra', 'বগুড়া', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (389, 'eb987585-bf4e-48e2-b726-498d10042cf8', 'Dhupchanchia', 'ধুপচাঁচিয়া', '501033', NULL, NULL, '33', 3, '50', 'Rajshahi', 29, '10', 'Bogra', 'বগুড়া', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (390, '3d3be9e2-d167-4342-ada7-96df2135c49f', 'Gabtali', 'গাবতলী', '501040', 24.87811, 89.44878, '40', 3, '50', 'Rajshahi', 29, '10', 'Bogra', 'বগুড়া', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (391, '0dc152f6-105a-485b-9058-fabddeb07117', 'Kahaloo', 'কাহালু', '501054', NULL, NULL, '54', 3, '50', 'Rajshahi', 29, '10', 'Bogra', 'বগুড়া', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (392, '0c057076-da6f-461f-83ea-d1006d88cdb6', 'Nandigram', 'নন্দীগ্রাম', '501067', NULL, NULL, '67', 3, '50', 'Rajshahi', 29, '10', 'Bogra', 'বগুড়া', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (393, 'bf7df0f7-94ac-4ec4-8bc2-a22393f2af1a', 'Sariakandi', 'সারিয়াকান্দি', '501081', NULL, NULL, '81', 3, '50', 'Rajshahi', 29, '10', 'Bogra', 'বগুড়া', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (394, 'e08a6790-4388-41ad-9e32-a4956dabc2e1', 'Shajahanpur', 'শাহজাহানপুর', '501085', 24.772, 89.3695, '85', 3, '50', 'Rajshahi', 29, '10', 'Bogra', 'বগুড়া', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (395, '0fbdbea0-c79b-4855-b3d3-99e20da3d95d', 'Sherpur', 'শেরপুর', '501088', 24.6659, 89.41572, '88', 3, '50', 'Rajshahi', 29, '10', 'Bogra', 'বগুড়া', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (396, '069f7133-cf74-4f79-954d-c21908aa1fa5', 'Shibganj', 'শিব্‌গঞ্জ', '501094', NULL, NULL, '94', 3, '50', 'Rajshahi', 29, '10', 'Bogra', 'বগুড়া', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (397, 'cf362999-751e-4a12-b16e-2018f7048387', 'Sonatola', 'সোনাতলা', '501095', NULL, NULL, '95', 3, '50', 'Rajshahi', 29, '10', 'Bogra', 'বগুড়া', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (398, '739f6677-0be7-42df-b448-ed9d6fb33fcd', 'Akkelpur', 'আক্কেলপুর', '503813', 24.96924, 89.02032, '13', 3, '50', 'Rajshahi', 33, '38', 'Joypurhat', 'জয়পুরহাট', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (399, '7b74bd42-1efc-4fd5-827f-22957d30c50e', 'Joypurhat Sadar', 'জয়পুরহাট সদর', '503847', NULL, NULL, '47', 3, '50', 'Rajshahi', 33, '38', 'Joypurhat', 'জয়পুরহাট', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (400, '99e966b0-3583-4f4b-a75d-fec150bf9b00', 'Kalai', 'কালাই', '503858', 25.062596, 89.164785, '58', 3, '50', 'Rajshahi', 33, '38', 'Joypurhat', 'জয়পুরহাট', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (401, 'e3148169-f221-4424-b584-c998aa210c52', 'Khetlal', 'ক্ষেতলাল', '503861', 25.0202, 89.1134, '61', 3, '50', 'Rajshahi', 33, '38', 'Joypurhat', 'জয়পুরহাট', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (402, '2122e603-bd17-40c6-8316-3d8e6ed70bb0', 'Panchbibi', 'পাঁচবিবি', '503874', 25.2097532, 89.0752499, '74', 3, '50', 'Rajshahi', 33, '38', 'Joypurhat', 'জয়পুরহাট', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (403, '16c515fd-73a1-432f-8f82-6a462a0e0502', 'Atrai', 'আত্রাই', '506403', NULL, NULL, '03', 3, '50', 'Rajshahi', 36, '64', 'Naogaon', 'নওগাঁ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (404, '49e658f6-c0ca-4a1e-94b6-29f11087c24f', 'Badalgachhi', 'বদলগাছী', '506406', NULL, NULL, '06', 3, '50', 'Rajshahi', 36, '64', 'Naogaon', 'নওগাঁ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (405, '278a4060-2db0-4563-b4c8-b4988dd215c7', 'Dhamoirhat', 'ধামুইরহাট', '506428', NULL, NULL, '28', 3, '50', 'Rajshahi', 36, '64', 'Naogaon', 'নওগাঁ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (406, 'bb6acefb-e74e-4174-bc14-7e0e939e1ebb', 'Manda', 'মান্দা', '506447', 24.7584, 88.71128, '47', 3, '50', 'Rajshahi', 36, '64', 'Naogaon', 'নওগাঁ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (407, '5ffa582e-d760-4519-953b-8dce5b474c88', 'Mahadebpur', 'মহাদেবপুর', '506450', NULL, NULL, '50', 3, '50', 'Rajshahi', 36, '64', 'Naogaon', 'নওগাঁ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (408, '75159849-eef0-46c4-9eff-cc48ec155662', 'Naogaon Sadar', 'নওগাঁ সদর', '506460', NULL, NULL, '60', 3, '50', 'Rajshahi', 36, '64', 'Naogaon', 'নওগাঁ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (409, '284ae437-9c4b-40db-b358-6983baec9cb0', 'Niamatpur', 'নিয়ামতপুর', '506469', 24.8258922, 88.5371958000001, '69', 3, '50', 'Rajshahi', 36, '64', 'Naogaon', 'নওগাঁ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (410, '11da3a9e-d853-400a-8816-9d5fe1fbbc31', 'Patnitala', 'পত্নীতলা', '506475', NULL, NULL, '75', 3, '50', 'Rajshahi', 36, '64', 'Naogaon', 'নওগাঁ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (411, '8b97b5ba-18f5-488e-8ee4-3a5c963c5fa1', 'Porsha', 'পোরশা', '506479', NULL, NULL, '79', 3, '50', 'Rajshahi', 36, '64', 'Naogaon', 'নওগাঁ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (412, '31308b4c-f2bf-4a5b-b384-f6dd6680472a', 'Raninagar', 'রাণীনগর', '506485', 24.74201, 88.96044, '85', 3, '50', 'Rajshahi', 36, '64', 'Naogaon', 'নওগাঁ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (413, '974b4f4f-d266-410a-b067-266433b1bed4', 'Sapahar', 'সাপাহার', '506486', 25.12416, 88.58712, '86', 3, '50', 'Rajshahi', 36, '64', 'Naogaon', 'নওগাঁ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (414, '0b38549a-ac1a-4208-8bdb-f9b3da0c1a96', 'Bagatipara', 'বাগাতিপাড়া', '506909', NULL, NULL, '09', 3, '50', 'Rajshahi', 37, '69', 'Natore', 'নাটোর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (415, '581849c1-677e-47d8-94bd-cfcffb8d7a54', 'Baraigram', 'বড়ইগ্রাম', '506915', 24.36869, 89.23666, '15', 3, '50', 'Rajshahi', 37, '69', 'Natore', 'নাটোর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (416, 'e7b44bde-b918-4fe4-aa3f-710b5384870a', 'Gurudaspur', 'গুরুদাসপুর', '506941', NULL, NULL, '41', 3, '50', 'Rajshahi', 37, '69', 'Natore', 'নাটোর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (417, '7b94a4a4-b7d0-486a-8cc7-c900a2f57f13', 'Lalpur', 'লালপুর', '506944', 24.2117459, 88.9605365, '44', 3, '50', 'Rajshahi', 37, '69', 'Natore', 'নাটোর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (418, '5be738f1-4946-4bc3-ad4e-920e2de4ae2e', 'Naldanga', 'পাহাড়তলী', '506955', NULL, NULL, '55', 3, '50', 'Rajshahi', 37, '69', 'Natore', 'নাটোর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (419, '551cc916-be6e-4fc9-92f6-225936192672', 'Natore Sadar', 'নাটোর সদর', '506963', NULL, NULL, '63', 3, '50', 'Rajshahi', 37, '69', 'Natore', 'নাটোর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (420, 'bd37f460-cf35-436a-b6d3-ae6376e43983', 'Singra', 'সিংড়া', '506991', 24.4742657, 89.1324866, '91', 3, '50', 'Rajshahi', 37, '69', 'Natore', 'নাটোর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (421, '56cc9887-21f2-4b8c-811b-80178c181bb2', 'Bholahat', 'ভোলাহাট', '507018', NULL, NULL, '18', 3, '50', 'Rajshahi', 30, '70', 'Chapai Nawabganj', 'চাঁপাই নবাবগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (422, '5576adcc-964f-4b31-81c0-d3dfa52417be', 'Gomastapur', 'গোমস্তাপুর', '507037', NULL, NULL, '37', 3, '50', 'Rajshahi', 30, '70', 'Chapai Nawabganj', 'চাঁপাই নবাবগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (423, '968b1f91-483d-4bcd-9b51-7f62ef3f2cf1', 'Nachole', 'নাচোল', '507056', NULL, NULL, '56', 3, '50', 'Rajshahi', 30, '70', 'Chapai Nawabganj', 'চাঁপাই নবাবগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (424, '8e36a174-b8d7-42d8-9997-e7bdbb3b297b', 'Chapai Nababganj Sadar', 'চাঁপাই নবাবগঞ্জ সদর', '507066', NULL, NULL, '66', 3, '50', 'Rajshahi', 30, '70', 'Chapai Nawabganj', 'চাঁপাই নবাবগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (425, 'e46b2949-2fd2-47a3-9d64-7fbaad41df3e', 'Shibganj', 'শিবগঞ্জ', '507088', NULL, NULL, '88', 3, '50', 'Rajshahi', 30, '70', 'Chapai Nawabganj', 'চাঁপাই নবাবগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (426, '4134a966-e3d4-4d3d-a578-60a8f4f85367', 'Atgharia', 'আটঘরিয়া', '507605', NULL, NULL, '05', 3, '50', 'Rajshahi', 39, '76', 'Pabna', 'পাবনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (427, '249eec2d-b3e4-419c-ab74-4c3286857a96', 'Bera', 'বেড়া', '507616', 23.929445, 89.6439924, '16', 3, '50', 'Rajshahi', 39, '76', 'Pabna', 'পাবনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (428, '01e3fa93-5131-436f-9979-bbe9da0187e1', 'Bhangura', 'ভাংগুড়া', '507619', NULL, NULL, '19', 3, '50', 'Rajshahi', 39, '76', 'Pabna', 'পাবনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (429, '6bbbf825-78f2-45a9-9ee5-93032f91adfb', 'Chatmohar', 'চাট্‌মোহর', '507622', NULL, NULL, '22', 3, '50', 'Rajshahi', 39, '76', 'Pabna', 'পাবনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (430, 'c9286835-b6b9-48cc-96af-2433f9737c39', 'Faridpur', 'ফরিদপুর', '507633', NULL, NULL, '33', 3, '50', 'Rajshahi', 39, '76', 'Pabna', 'পাবনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (431, '0d171439-e36f-49d3-90d9-7d567cc84c5b', 'Ishwardi', 'ঈশ্বরদী', '507639', NULL, NULL, '39', 3, '50', 'Rajshahi', 39, '76', 'Pabna', 'পাবনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (432, '0f9e6578-5439-42de-a43d-61b136612f8e', 'Pabna Sadar', 'পাবনা সদর', '507655', NULL, NULL, '55', 3, '50', 'Rajshahi', 39, '76', 'Pabna', 'পাবনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (433, 'e691c44b-69b3-4854-a5e4-c8a6b28946bf', 'Santhia', 'সাঁথিয়া', '507672', NULL, NULL, '72', 3, '50', 'Rajshahi', 39, '76', 'Pabna', 'পাবনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (434, '8fc7bc56-a122-4c78-8c92-b517c107669b', 'Sujanagar', 'সুজানগর', '507683', 23.9052925, 89.5120084, '83', 3, '50', 'Rajshahi', 39, '76', 'Pabna', 'পাবনা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (435, '17d49c44-ee95-40b0-a061-abebbc6f4229', 'Bagha', 'বাঘা', '508110', NULL, NULL, '10', 3, '50', 'Rajshahi', 41, '81', 'Rajshahi', 'রাজশাহী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (436, '3db366f2-cf62-4417-a976-1ac2d083b63e', 'Baghmara', 'বাগমারা', '508112', NULL, NULL, '12', 3, '50', 'Rajshahi', 41, '81', 'Rajshahi', 'রাজশাহী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (437, '9b3fe36b-eac2-475e-8164-e42499dfd988', 'Boalia', 'বোয়ালিয়া', '508122', NULL, NULL, '22', 3, '50', 'Rajshahi', 41, '81', 'Rajshahi', 'রাজশাহী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (438, 'f379f390-2fa1-4bdc-9ec8-da37b6c83302', 'Charghat', 'চারঘাট', '508125', NULL, NULL, '25', 3, '50', 'Rajshahi', 41, '81', 'Rajshahi', 'রাজশাহী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (439, 'ab62521f-0b7b-40d0-ac4e-1cabbfafa4dd', 'Durgapur', 'দূর্গাপুর', '508131', 25.113425, 90.675131, '31', 3, '50', 'Rajshahi', 41, '81', 'Rajshahi', 'রাজশাহী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (440, '8c69e90e-d2db-462c-8f82-bd81a33d0103', 'Godagari', 'গোদাগাড়ী', '508134', 24.4687379, 88.4403883, '34', 3, '50', 'Rajshahi', 41, '81', 'Rajshahi', 'রাজশাহী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (441, '5937a28e-fe32-404d-a094-0ec5455c2b0a', 'Matihar', 'মতিহার', '508140', NULL, NULL, '40', 3, '50', 'Rajshahi', 41, '81', 'Rajshahi', 'রাজশাহী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (442, '6377fbec-c9aa-44d6-ba4e-f755c1fd6755', 'Mohanpur', 'মোহনপুর', '508153', 24.5420397, 88.6530753, '53', 3, '50', 'Rajshahi', 41, '81', 'Rajshahi', 'রাজশাহী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (443, '8adce12b-5306-4b8c-ac0d-4e358829bbc2', 'Paba', 'পবা', '508172', NULL, NULL, '72', 3, '50', 'Rajshahi', 41, '81', 'Rajshahi', 'রাজশাহী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (444, '8836e1c4-517b-4ca4-a1d1-affde206c17c', 'Puthia', 'পুঠিয়া', '508182', NULL, NULL, '82', 3, '50', 'Rajshahi', 41, '81', 'Rajshahi', 'রাজশাহী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (445, 'a995a9a1-09bf-4bd8-9e07-cb662ef50af4', 'Rajpara', 'রাজপাড়া', '508185', NULL, NULL, '85', 3, '50', 'Rajshahi', 41, '81', 'Rajshahi', 'রাজশাহী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (446, 'c27e7dc4-7f71-4f22-bcfa-64f9231f2669', 'Shah Makhdum', 'শাহ্‌ মখদুম', '508190', NULL, NULL, '90', 3, '50', 'Rajshahi', 41, '81', 'Rajshahi', 'রাজশাহী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (447, '663d478e-7642-496d-a699-3c676a80a620', 'Tanore', 'তানোর', '508194', NULL, NULL, '94', 3, '50', 'Rajshahi', 41, '81', 'Rajshahi', 'রাজশাহী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (448, '78b1a426-aaf4-4288-a4a7-1fe69dea29f2', 'Belkuchi', 'বেলকুচি', '508811', NULL, NULL, '11', 3, '50', 'Rajshahi', 43, '88', 'Sirajganj', 'সিরাজগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (449, '891c07e3-1196-46af-987c-157701621974', 'Chauhali', 'চৌহালী', '508827', NULL, NULL, '27', 3, '50', 'Rajshahi', 43, '88', 'Sirajganj', 'সিরাজগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (450, 'e0711541-e77b-4d9e-8c4c-36f7eb0220ed', 'Kamarkhanda', 'কামারখন্দ', '508844', NULL, NULL, '44', 3, '50', 'Rajshahi', 43, '88', 'Sirajganj', 'সিরাজগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (451, '67269f9e-7319-48a4-a6e9-552e851a8198', 'Kazipur', 'কাজীপুর', '508850', 24.642024, 89.634597, '50', 3, '50', 'Rajshahi', 43, '88', 'Sirajganj', 'সিরাজগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (452, 'e6878a5e-459b-47d2-8393-9ae335798e8f', 'Royganj', 'রায়গঞ্জ', '508861', NULL, NULL, '61', 3, '50', 'Rajshahi', 43, '88', 'Sirajganj', 'সিরাজগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (453, '7f6e5ecc-282e-4a57-8486-dbb288505f91', 'Shahjadpur', 'শাহাজাদপুর', '508867', NULL, NULL, '67', 3, '50', 'Rajshahi', 43, '88', 'Sirajganj', 'সিরাজগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (454, '16d1297b-c5a4-4bcb-ab3f-d82d822feecd', 'Sirajganj Sadar', 'সিরাজগঞ্জ সদর', '508878', NULL, NULL, '78', 3, '50', 'Rajshahi', 43, '88', 'Sirajganj', 'সিরাজগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (455, '50685f36-e2c5-4549-97f2-64ab46a17a36', 'Tarash', 'তাড়াশ', '508889', NULL, NULL, '89', 3, '50', 'Rajshahi', 43, '88', 'Sirajganj', 'সিরাজগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (456, 'f50cce01-b4e8-4436-8c4d-20207ca173dd', 'Ullah Para', 'উল্লা পাড়া', '508894', NULL, NULL, '94', 3, '50', 'Rajshahi', 43, '88', 'Sirajganj', 'সিরাজগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (457, 'b4c2b065-2ae5-4de0-b64b-42ba6b4ae944', 'Birampur', 'বিরামপুর', '552710', 25.3952, 88.9873, '10', 4, '55', 'Rangpur', 31, '27', 'Dinajpur', 'দিনাজপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (458, '843e0803-ec9c-4bbc-a990-2be570671047', 'Birganj', 'বীরগঞ্জ', '552712', 25.5247, 88.3809, '12', 4, '55', 'Rangpur', 31, '27', 'Dinajpur', 'দিনাজপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (459, 'f1e2f9fb-1b52-4e93-888f-4ea3332613da', 'Biral', 'বিরল', '552717', NULL, NULL, '17', 4, '55', 'Rangpur', 31, '27', 'Dinajpur', 'দিনাজপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (460, '662803f2-53ec-4cb5-b919-ff9ac2e96879', 'Bochaganj', 'বোচাগঞ্জ', '552721', 25.7965334, 88.4403883, '21', 4, '55', 'Rangpur', 31, '27', 'Dinajpur', 'দিনাজপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (461, 'a08d0555-9ab2-4fd3-b6a8-34f1b185e3c3', 'Chirirbandar', 'চিরিরবন্দর', '552730', 25.650425, 88.777035, '30', 4, '55', 'Rangpur', 31, '27', 'Dinajpur', 'দিনাজপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (462, '601eebe6-7535-4c18-98d4-487d1b910a00', 'Fulbari', 'ফুলবাড়ী', '552738', 25.3007, 88.5654, '38', 4, '55', 'Rangpur', 31, '27', 'Dinajpur', 'দিনাজপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (463, 'a6c2d871-f37b-4571-977e-cc241b6479ac', 'Ghoraghat', 'ঘোড়াঘাট', '552743', 25.15222, 89.14241, '43', 4, '55', 'Rangpur', 31, '27', 'Dinajpur', 'দিনাজপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (464, 'a2487dfc-bbc4-4317-8865-203bc7cda079', 'Hakimpur', 'হাকিমপুর', '552747', 25.17093, 89.00452, '47', 4, '55', 'Rangpur', 31, '27', 'Dinajpur', 'দিনাজপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (465, 'eb585e14-b4a9-4029-9a11-4032479bf3b5', 'Kaharole', 'কাহারোল', '552756', NULL, NULL, '56', 4, '55', 'Rangpur', 31, '27', 'Dinajpur', 'দিনাজপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (466, '9e27a8d0-0225-4afa-8926-5b13d11523ca', 'Khansama', 'খান্‌সামা', '552760', 25.52034, 88.46531, '60', 4, '55', 'Rangpur', 31, '27', 'Dinajpur', 'দিনাজপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (467, '842aafde-b82d-4bcd-aa27-ffb96a6b2cf9', 'Dinajpur Sadar', 'দিনাজপুর সদর', '552764', 25.6258, 88.6368, '64', 4, '55', 'Rangpur', 31, '27', 'Dinajpur', 'দিনাজপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (468, '70efe392-1fda-4f2a-9798-7cb9b4abd26f', 'Nawabganj', 'নবাবগঞ্জ', '552769', 25.25039, 89.04543, '69', 4, '55', 'Rangpur', 31, '27', 'Dinajpur', 'দিনাজপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (469, '0e9e025f-c2f8-49cd-91ba-ebf7706ba954', 'Parbatipur', 'পার্বতীপুর', '552777', 25.633, 88.919, '77', 4, '55', 'Rangpur', 31, '27', 'Dinajpur', 'দিনাজপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (470, '165ebe8a-ff23-4c4c-a3c6-944f95f70a72', 'Fulchhari', 'ফুলছড়ি', '553221', NULL, NULL, '21', 4, '55', 'Rangpur', 32, '32', 'Gaibandha', 'গাইবান্ধা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (471, '7651fa4e-6715-4f23-9d7f-e0156c1a1a4e', 'Gaibandha Sadar', 'গাইবান্ধা সদর', '553224', 25.249664, 89.480438, '24', 4, '55', 'Rangpur', 32, '32', 'Gaibandha', 'গাইবান্ধা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (472, '34e50f98-1350-4889-a283-824b1fe142fb', 'Gobindaganj', 'গোবিন্দগঞ্জ', '553230', NULL, NULL, '30', 4, '55', 'Rangpur', 32, '32', 'Gaibandha', 'গাইবান্ধা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (473, 'dcb17f92-f9fb-4a7b-aa70-6e106113a159', 'Palashbari', 'পলাশবাড়ী', '553267', 25.2706473, 89.389057, '67', 4, '55', 'Rangpur', 32, '32', 'Gaibandha', 'গাইবান্ধা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (474, '38cedb7c-e859-4b35-88a9-5c0fe1be4165', 'Sadullapur', 'সাদুল্লাপুর', '553282', 25.4011231, 89.4174641, '82', 4, '55', 'Rangpur', 32, '32', 'Gaibandha', 'গাইবান্ধা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (475, '05e321f3-c866-4939-9150-613e250ad688', 'Saghata', 'সাঘাটা', '553288', NULL, NULL, '88', 4, '55', 'Rangpur', 32, '32', 'Gaibandha', 'গাইবান্ধা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (476, '8a9d8200-a3d3-4f2b-a901-65ebe0fcacfa', 'Sundarganj', 'সুন্দরগঞ্জ', '553291', NULL, NULL, '91', 4, '55', 'Rangpur', 32, '32', 'Gaibandha', 'গাইবান্ধা', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (477, 'eb60e605-dc80-44fa-a380-d05d3761dcb8', 'Bhurungamari', 'ভুরুংগামারী', '554906', NULL, NULL, '06', 4, '55', 'Rangpur', 34, '49', 'Kurigram', 'কুড়িগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (478, 'fa989dad-1007-4df3-b0f4-0fc8966f1f00', 'Char Rajibpur', 'রাজিবপুর', '554908', NULL, NULL, '08', 4, '55', 'Rangpur', 34, '49', 'Kurigram', 'কুড়িগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (479, '9725091b-f659-4f74-8f02-90651abc45e7', 'Chilmari', 'চিলমারী', '554909', 25.5813, 89.6603, '09', 4, '55', 'Rangpur', 34, '49', 'Kurigram', 'কুড়িগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (480, '4c8b3823-fa10-4e6b-8d1a-e32011dac73d', 'Phulbari', 'ফুলবাড়ী', '554918', 25.501758, 88.948485, '18', 4, '55', 'Rangpur', 34, '49', 'Kurigram', 'কুড়িগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (481, 'e579d238-4199-48c1-a079-83581f40c565', 'Kurigram Sadar', 'কুড়িগ্রাম সদর', '554952', 25.849337, 89.634247, '52', 4, '55', 'Rangpur', 34, '49', 'Kurigram', 'কুড়িগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (482, 'abb3e2c6-1719-4bfc-8150-fed4fe2aac0f', 'Nageshwari', 'নাগেশ্বরী', '554961', NULL, NULL, '61', 4, '55', 'Rangpur', 34, '49', 'Kurigram', 'কুড়িগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (483, '7cffd9a2-4dab-42ba-af8b-c0d4919319e6', 'Rajarhat', 'রাজারহাট', '554977', 25.7817, 89.531, '77', 4, '55', 'Rangpur', 34, '49', 'Kurigram', 'কুড়িগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (484, '500115c0-9f5c-42b9-9f34-4138496ced92', 'Raumari', 'রৌমারী', '554979', NULL, NULL, '79', 4, '55', 'Rangpur', 34, '49', 'Kurigram', 'কুড়িগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (485, '487ac878-4a42-415d-b164-199c3e878fb4', 'Ulipur', 'উলিপুর', '554994', 25.656837, 89.624307, '94', 4, '55', 'Rangpur', 34, '49', 'Kurigram', 'কুড়িগ্রাম', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (486, '83ff3124-ad3b-4bc9-8bc7-4fe97434e940', 'Aditmari', 'আদিতমারী', '555202', 25.9218, 89.3796, '02', 4, '55', 'Rangpur', 35, '52', 'Lalmonirhat', 'লালমনিরহাট', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (487, '5b9e4561-edc6-4f4c-921f-c9c02b196783', 'Hatibandha', 'হাতীবান্ধা', '555233', 26.2041, 89.1134, '33', 4, '55', 'Rangpur', 35, '52', 'Lalmonirhat', 'লালমনিরহাট', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (488, 'f53bd347-2dbe-4689-8070-60224d431fb9', 'Kaliganj', 'কালীগঞ্জ', '555239', 23.402804, 89.143274, '39', 4, '55', 'Rangpur', 35, '52', 'Lalmonirhat', 'লালমনিরহাট', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (489, 'cc7d2181-2752-49ef-8725-ac70b59eeeb4', 'Lalmonirhat Sadar', 'লালমনিরহাট সদর', '555255', 26.037042, 89.288177, '55', 4, '55', 'Rangpur', 35, '52', 'Lalmonirhat', 'লালমনিরহাট', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (490, '0d936ed2-f860-47c6-93d8-117a5b6093bc', 'Patgram', 'পাটগ্রাম', '555270', NULL, NULL, '70', 4, '55', 'Rangpur', 35, '52', 'Lalmonirhat', 'লালমনিরহাট', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (491, '20f28ce4-14c1-4870-b9a5-848c3795336a', 'Dimla', 'ডিমলা', '557312', 26.162834, 88.924999, '12', 4, '55', 'Rangpur', 38, '73', 'Nilphamari', 'নীলফামারী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (492, '12f83aa6-d840-45b6-9761-554e2e1c00ee', 'Domar Upazila', 'ডোমার', '557315', NULL, NULL, '15', 4, '55', 'Rangpur', 38, '73', 'Nilphamari', 'নীলফামারী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (493, '9c483b67-0886-469e-a72f-65dd86caa0f4', 'Jaldhaka', 'জলঢাকা', '557336', 26.023, 89.005, '36', 4, '55', 'Rangpur', 38, '73', 'Nilphamari', 'নীলফামারী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (494, 'c15e0056-468f-4a6f-acb4-d576a523727f', 'Kishoreganj', 'কিশোরগঞ্জ', '557345', NULL, NULL, '45', 4, '55', 'Rangpur', 38, '73', 'Nilphamari', 'নীলফামারী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (495, '3387f366-d485-4733-8015-a262783aa600', 'Nilphamari Sadar', 'নীলফামারী সদর', '557364', 26.029638, 88.905258, '64', 4, '55', 'Rangpur', 38, '73', 'Nilphamari', 'নীলফামারী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (496, 'a73e7755-40e8-4021-9804-0239c4ca3031', 'Saidpur Upazila', 'সৈয়দপুর', '557385', NULL, NULL, '85', 4, '55', 'Rangpur', 38, '73', 'Nilphamari', 'নীলফামারী', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (497, 'b5d67c84-97a6-4356-8cbf-e638dbc5ac62', 'Atwari', 'আটোয়ারী', '557704', 26.237016, 88.409254, '04', 4, '55', 'Rangpur', 40, '77', 'Panchagarh', 'পঞ্চগড়', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (498, '0510084e-2810-45f0-9caf-f51e46e84a1e', 'Boda', 'বোদা', '557725', 26.202848, 88.554132, '25', 4, '55', 'Rangpur', 40, '77', 'Panchagarh', 'পঞ্চগড়', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (499, '6697916a-77b7-4b98-a1e7-7527680ef71a', 'Debiganj', 'দেবীগঞ্জ', '557734', 26.06582, 88.45205, '34', 4, '55', 'Rangpur', 40, '77', 'Panchagarh', 'পঞ্চগড়', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (500, 'a6f69b26-0e88-48c7-ba65-618f130ac9e2', 'Panchagarh Sadar', 'পঞ্চগড় সদর', '557773', 26.304495, 88.603134, '73', 4, '55', 'Rangpur', 40, '77', 'Panchagarh', 'পঞ্চগড়', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (501, '23fbca42-2f1d-4b73-93f2-54680c95ab2a', 'Tentulia', 'তেঁতুলিয়া', '557790', NULL, NULL, '90', 4, '55', 'Rangpur', 40, '77', 'Panchagarh', 'পঞ্চগড়', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (502, 'd812777b-6e23-4665-bd92-d9241bf37d5b', 'Badarganj', 'বদরগঞ্জ', '558503', NULL, NULL, '03', 4, '55', 'Rangpur', 42, '85', 'Rangpur', 'রংপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (503, '952cc377-3222-4c4b-8daf-d125b88f381a', 'Gangachara', 'গংগাচড়া', '558527', NULL, NULL, '27', 4, '55', 'Rangpur', 42, '85', 'Rangpur', 'রংপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (504, '29d1b7bf-af10-4692-a3d7-67a71bc25135', 'Kaunia', 'কাউনিয়া', '558542', NULL, NULL, '42', 4, '55', 'Rangpur', 42, '85', 'Rangpur', 'রংপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (505, '29cec7f5-9d46-4a76-ac0a-023ebd194f98', 'Rangpur Sadar', 'রংপুর সদর', '558549', NULL, NULL, '49', 4, '55', 'Rangpur', 42, '85', 'Rangpur', 'রংপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (506, 'fc0ed5fb-bc1e-4d19-aa5d-8f3527b3b909', 'Mitha Pukur', 'মিঠাপুকুর', '558558', NULL, NULL, '58', 4, '55', 'Rangpur', 42, '85', 'Rangpur', 'রংপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (507, '9ae40ce2-7bdc-44b4-9bea-76cc73081f3f', 'Pirgachha', 'পীরগাছা', '558573', NULL, NULL, '73', 4, '55', 'Rangpur', 42, '85', 'Rangpur', 'রংপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (508, '91878198-9fec-489d-bbc3-12859c42706d', 'Pirganj', 'পীরগঞ্জ', '558576', 25.417617, 89.311109, '76', 4, '55', 'Rangpur', 42, '85', 'Rangpur', 'রংপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (509, '7efd7d0d-3bde-4b32-8b10-81568a61219a', 'Taraganj', 'তারাগঞ্জ', '558592', NULL, NULL, '92', 4, '55', 'Rangpur', 42, '85', 'Rangpur', 'রংপুর', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (510, '3b10c73a-c718-42a9-832b-2a269180c033', 'Baliadangi', 'বালিয়াডাংগী', '559408', NULL, NULL, '08', 4, '55', 'Rangpur', 44, '94', 'Thakurgaon', 'ঠাকুরগাঁও', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (511, 'e2d00516-43e0-41b2-b2b3-d5bfa1525e6d', 'Haripur', 'হরিপুর', '559451', NULL, NULL, '51', 4, '55', 'Rangpur', 44, '94', 'Thakurgaon', 'ঠাকুরগাঁও', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (512, '8ca87b16-b31d-4cd9-9c0d-c275c20a66b1', 'Pirganj', 'পীরগঞ্জ', '559482', 25.417617, 89.311109, '82', 4, '55', 'Rangpur', 44, '94', 'Thakurgaon', 'ঠাকুরগাঁও', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (513, '5a354744-cbaa-43dc-b7dd-296e96d33366', 'Ranisankail', 'রানীশংকাইল', '559486', NULL, NULL, '86', 4, '55', 'Rangpur', 44, '94', 'Thakurgaon', 'ঠাকুরগাঁও', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (514, '9b6e656f-e2a8-47dd-b674-8cc1e27a4e61', 'Thakurgaon Sadar', 'ঠাকুরগাঁও সদর', '559494', NULL, NULL, '94', 4, '55', 'Rangpur', 44, '94', 'Thakurgaon', 'ঠাকুরগাঁও', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (515, '80cab3c2-92c1-4c11-a5c6-4e399c2ed420', 'Ajmiriganj', 'আজমিরিগঞ্জ', '603602', NULL, NULL, '02', 7, '60', 'Sylhet', 61, '36', 'Habiganj', 'হবিগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (516, '8d61170e-0f89-420e-ac1e-12b5d262c1df', 'Bahubal', 'বাহুবল', '603605', 24.20203, 91.32179, '05', 7, '60', 'Sylhet', 61, '36', 'Habiganj', 'হবিগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (517, 'e5f1f734-115f-4d87-b7d8-345fc8cf4da8', 'Baniachong', 'বানিয়াচং', '603611', 24.51589, 91.351807, '11', 7, '60', 'Sylhet', 61, '36', 'Habiganj', 'হবিগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (518, '294a53a3-7ed3-4f4e-b37a-af14069fd5c3', 'Chunarughat', 'চুনারুঘাট', '603626', NULL, NULL, '26', 7, '60', 'Sylhet', 61, '36', 'Habiganj', 'হবিগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (519, 'dea2efcf-f23b-471c-a230-6169b64e2f27', 'Habiganj Sadar', 'হবিগঞ্জ সদর', '603644', NULL, NULL, '44', 7, '60', 'Sylhet', 61, '36', 'Habiganj', 'হবিগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (520, '71b143c5-4d49-424f-be57-2a47ed9d2ec0', 'Lakhai', 'লাখাই', '603668', NULL, NULL, '68', 7, '60', 'Sylhet', 61, '36', 'Habiganj', 'হবিগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (521, '97a5c77b-0be5-4eb5-b480-443329483134', 'Madhabpur', 'মাধবপুর', '603671', 24.097285, 91.287539, '71', 7, '60', 'Sylhet', 61, '36', 'Habiganj', 'হবিগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (522, '31d05b93-eeab-4210-8451-75d63b86de3b', 'Nabiganj', 'নবীগঞ্জ', '603677', 24.5637525, 91.5596117, '77', 7, '60', 'Sylhet', 61, '36', 'Habiganj', 'হবিগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (523, '54ce94b2-df15-4934-94a0-7ef724a37b3c', 'Barlekha', 'বড়লেখা', '605814', 24.6939, 92.1848, '14', 7, '60', 'Sylhet', 62, '58', 'Maulvibazar', 'মৌলভীবাজার', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (524, '44ac2875-b13c-4add-95f9-ae2e1acdd6db', 'Juri', 'জুড়ী', '605835', 24.5801, 92.1647, '35', 7, '60', 'Sylhet', 62, '58', 'Maulvibazar', 'মৌলভীবাজার', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (525, 'a91b76ce-5e84-4a43-84ab-fd113b5f74bf', 'Kamalganj', 'কমলগঞ্জ', '605856', 24.3584, 91.8611, '56', 7, '60', 'Sylhet', 62, '58', 'Maulvibazar', 'মৌলভীবাজার', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (526, '7d8089ca-d1f4-4cb5-abdc-31c4157b6794', 'Kulaura', 'কুলাউড়া', '605865', 24.5255, 92.0347, '65', 7, '60', 'Sylhet', 62, '58', 'Maulvibazar', 'মৌলভীবাজার', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (527, 'fc1662fb-d837-4eac-932d-c3aa2cbd3e8a', 'Maulvibazar Sadar', 'মৌলভীবাজার সদর', '605874', NULL, NULL, '74', 7, '60', 'Sylhet', 62, '58', 'Maulvibazar', 'মৌলভীবাজার', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (528, '1cb2ad96-c07f-4dad-8e14-6fda62b682fd', 'Rajnagar', 'রাজনগর', '605880', 24.5602287, 91.8708613, '80', 7, '60', 'Sylhet', 62, '58', 'Maulvibazar', 'মৌলভীবাজার', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (529, 'faae81f1-eef6-4a67-ae31-622973c3cfd0', 'Sreemangal', 'শ্রীমঙ্গল', '605883', 24.3083, 91.7333, '83', 7, '60', 'Sylhet', 62, '58', 'Maulvibazar', 'মৌলভীবাজার', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (530, 'fa743d0b-fedb-49e9-91fb-b466c44b0212', 'Bishwambarpur', 'বিশ্বম্ভরপুর', '609018', NULL, NULL, '18', 7, '60', 'Sylhet', 63, '90', 'Sunamganj', 'সুনামগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (531, '4d6371d5-cb4e-4814-9fa3-3675ed1966cd', 'Chhatak', 'ছাতক', '609023', 24.99651, 91.55235, '23', 7, '60', 'Sylhet', 63, '90', 'Sunamganj', 'সুনামগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (532, '2e0eb39a-a5c5-4bce-96f9-69480f218f33', 'Dakshin Sunamganj', 'দক্ষিন সুনামগঞ্জ', '609027', NULL, NULL, '27', 7, '60', 'Sylhet', 63, '90', 'Sunamganj', 'সুনামগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (533, '6071a882-b5f8-431b-8d7b-857547be081d', 'Derai', 'দিরাই', '609029', NULL, NULL, '29', 7, '60', 'Sylhet', 63, '90', 'Sunamganj', 'সুনামগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (534, 'ce3da171-d18c-44a4-b4d9-caf2679af993', 'Dharampasha', 'ধর্মপাশা', '609032', NULL, NULL, '32', 7, '60', 'Sylhet', 63, '90', 'Sunamganj', 'সুনামগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (535, 'f51a3eb5-2b92-4ab6-85ef-c2ea1fb0172a', 'Dowarabazar', 'দোয়ারাবাজার', '609033', NULL, NULL, '33', 7, '60', 'Sylhet', 63, '90', 'Sunamganj', 'সুনামগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (536, '63dfa16d-414b-49a0-b1d9-e5dbdc9918a2', 'Jagannathpur', 'জগন্নাথপুর', '609047', 24.77934, 91.5633, '47', 7, '60', 'Sylhet', 63, '90', 'Sunamganj', 'সুনামগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (537, '024504ad-7c0d-4c1b-93be-39d2b24c74ac', 'Jamalganj', 'জামালগঞ্জ', '609050', 24.9707, 91.1929, '50', 7, '60', 'Sylhet', 63, '90', 'Sunamganj', 'সুনামগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (538, 'a96f2682-4b92-4e76-acb2-75b64bbac251', 'Sulla', 'শুল্লা', '609086', 24.6678, 91.2695, '86', 7, '60', 'Sylhet', 63, '90', 'Sunamganj', 'সুনামগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (539, '3e40a105-bd68-4307-97a2-2d4a97d5fccf', 'Sunamganj Sadar', 'সুনামগঞ্জ সদর', '609089', 24.9451, 91.4048, '89', 7, '60', 'Sylhet', 63, '90', 'Sunamganj', 'সুনামগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (540, '3efa01f5-bca0-4cbe-b441-395fa9ad48d4', 'Tahirpur', 'তাহিরপুর', '609092', NULL, NULL, '92', 7, '60', 'Sylhet', 63, '90', 'Sunamganj', 'সুনামগঞ্জ', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (541, '1e8867fe-fa2d-4f82-b2e3-6ccaa2008fa9', 'Balaganj', 'বালাগঞ্জ', '609108', 24.680128, 91.7733565999999, '08', 7, '60', 'Sylhet', 64, '91', 'Sylhet', 'সিলেট', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (542, '3162739c-514c-4bf2-bf75-4ee68468e377', 'Beani Bazar', 'বিয়ানী বাজার', '609117', NULL, NULL, '17', 7, '60', 'Sylhet', 64, '91', 'Sylhet', 'সিলেট', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (543, 'b549e80b-c91d-40c6-9dfa-1561707d68ce', 'Bishwanath', 'বিশ্বনাথ', '609120', NULL, NULL, '20', 7, '60', 'Sylhet', 64, '91', 'Sylhet', 'সিলেট', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (544, '81a94245-f3f7-408b-b29c-2ddbb9f9fdcb', 'Companiganj', 'কোম্পানীগঞ্জ', '609127', NULL, NULL, '27', 7, '60', 'Sylhet', 64, '91', 'Sylhet', 'সিলেট', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (545, '07ef850c-1e9b-4d53-8691-45c6e2659951', 'Dakshin Surma', 'দক্ষিণ সুরমা', '609131', NULL, NULL, '31', 7, '60', 'Sylhet', 64, '91', 'Sylhet', 'সিলেট', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (546, 'b0e5ea67-79d0-43b5-a085-ba253a5cca07', 'Fenchuganj', 'ফেঞ্চুগঞ্জ', '609135', 24.6894503, 91.9783666000001, '35', 7, '60', 'Sylhet', 64, '91', 'Sylhet', 'সিলেট', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (547, 'a61071d7-caf9-46b6-a25c-96247696551c', 'Golapganj', 'গোলাপগঞ্জ', '609138', 24.8580629, 92.0150758, '38', 7, '60', 'Sylhet', 64, '91', 'Sylhet', 'সিলেট', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (548, '8988bdc1-4850-47d9-b85f-c53b46f8bd40', 'Gowainghat', 'গোয়াইনঘাট', '609141', NULL, NULL, '41', 7, '60', 'Sylhet', 64, '91', 'Sylhet', 'সিলেট', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (549, '635f96d5-0edc-416a-855e-0ef9af58bbfd', 'Jaintiapur', 'জৈন্তাপুর', '609153', NULL, NULL, '53', 7, '60', 'Sylhet', 64, '91', 'Sylhet', 'সিলেট', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (550, '80e2fddf-316b-4686-aa4c-ee365cf85acb', 'Kanaighat', 'কানাইঘাট', '609159', 25.0066261, 92.2039933, '59', 7, '60', 'Sylhet', 64, '91', 'Sylhet', 'সিলেট', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (551, 'd0208ec9-e1af-449e-9280-859132a6c8ba', 'Sylhet Sadar', 'সিলেট সদর', '609162', NULL, NULL, '62', 7, '60', 'Sylhet', 64, '91', 'Sylhet', 'সিলেট', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');
INSERT INTO `upazilas` VALUES (552, '3daf4a8e-e589-4c35-9c5f-3111191392ee', 'Zakiganj', 'জকিগঞ্জ', '609194', NULL, NULL, '94', 7, '60', 'Sylhet', 64, '91', 'Sylhet', 'সিলেট', 1, '2016-03-31 19:45:39', 1, NULL, 1, '2016-03-31 19:45:39');

-- ----------------------------
-- Table structure for user_groups
-- ----------------------------
DROP TABLE IF EXISTS `user_groups`;
CREATE TABLE `user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `group_level` int(11) NOT NULL,
  `group_status` int(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `group_level`(`group_level`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_groups
-- ----------------------------
INSERT INTO `user_groups` VALUES (1, 'Admin', 1, 1);
INSERT INTO `user_groups` VALUES (2, 'special', 2, 1);
INSERT INTO `user_groups` VALUES (3, 'User', 3, 1);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_level` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'no_image.jpg',
  `agency_id` tinyint(4) NULL DEFAULT NULL,
  `status` int(1) NOT NULL,
  `last_login` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_level`(`user_level`) USING BTREE,
  CONSTRAINT `FK_user` FOREIGN KEY (`user_level`) REFERENCES `user_groups` (`group_level`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Ministry Admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 'w19i5my51.png', NULL, 1, '2021-02-01 09:41:42');
INSERT INTO `users` VALUES (2, 'বাংলাদেশ শিশু একডেমী', 'bsa', '942078ca2d04f25545a316c123a392c4d5d339fd', 2, 'no_image.jpg', 1, 1, '2018-02-02 11:53:54');
INSERT INTO `users` VALUES (3, 'মহিলা ও শিশু বিষয়ক মন্ত্রণালয়', 'mowca', '12dea96fec20593566ab75692c9949596833adc9', 2, 'no_image.jpg', 4, 1, '2018-01-25 16:42:21');
INSERT INTO `users` VALUES (4, 'জাতীয় মহিলা সংস্থা', 'Jms', '8cb2237d0679ca88db6464eac60da96345513964', 2, 'fn44z3oj4.jpg', 1, 1, '2021-01-14 01:22:07');
INSERT INTO `users` VALUES (5, 'মহিলা বিষয়ক অধিদপ্তর', 'Dwa', '8cb2237d0679ca88db6464eac60da96345513964', 2, 'no_image.jpg', 2, 1, '2021-01-31 13:43:19');

-- ----------------------------
-- View structure for v_organization
-- ----------------------------
DROP VIEW IF EXISTS `v_organization`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `v_organization` AS SELECT
  ag.name_BN as agency,
	s.organization_name AS organization,
	s.designation_name AS designation,
	divisions.name_BN AS division,
	districts.name_BN AS district,
	upazilas.name_BN AS upazila,
	e.name_BN AS employee,
	e.mobile_no AS mobile,
	s.`status` AS STATUS 
FROM
	`sanctionedposts` AS s
	LEFT JOIN organizations AS o ON s.organization_id = o.id
	LEFT JOIN agencies AS ag ON o.agency_id = ag.id
	LEFT JOIN employees AS e ON s.id = e.posting_sanctionedpost_id
	LEFT JOIN divisions ON s.division_id = divisions.id
	LEFT JOIN districts ON s.district_id = districts.id
	LEFT JOIN upazilas ON s.upazila_id = upazilas.id
ORDER BY divisions.id, districts.id, upazilas.id ;

-- ----------------------------
-- View structure for v_poststatus
-- ----------------------------
DROP VIEW IF EXISTS `v_poststatus`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `v_poststatus` AS SELECT
  ag.name_BN as agency,
	ot.name_BN as organization_type,
	s.organization_name AS organization,
	s.designation_name AS designation,
	divisions.name_BN AS division,
	districts.name_BN AS district,
	upazilas.name_BN AS upazila,
	e.name_BN AS employee,
	e.mobile_no AS mobile,
	s.`status` AS STATUS 
FROM
	`sanctionedposts` AS s
	LEFT JOIN organizations AS o ON s.organization_id = o.id
	LEFT JOIN organization_types AS ot ON ot.id = o.organization_type_id
	LEFT JOIN agencies AS ag ON o.agency_id = ag.id
	LEFT JOIN employees AS e ON s.id = e.posting_sanctionedpost_id
	LEFT JOIN divisions ON s.division_id = divisions.id
	LEFT JOIN districts ON s.district_id = districts.id
	LEFT JOIN upazilas ON s.upazila_id = upazilas.id
ORDER BY divisions.id, districts.id, upazilas.id ;

SET FOREIGN_KEY_CHECKS = 1;
