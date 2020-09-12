/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : mowca_hrm

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-09-12 01:08:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` int(10) DEFAULT NULL,
  `name_BN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_EN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `national_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quota_id` int(10) DEFAULT NULL,
  `quota_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex_id` int(10) DEFAULT NULL,
  `sex_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion_id` int(10) DEFAULT NULL,
  `religion_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bloodgroup_id` int(10) DEFAULT NULL,
  `bloodgroup_name` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date NOT NULL,
  `prl_date` date DEFAULT NULL,
  `permanent_division_id` int(10) DEFAULT NULL,
  `permanent_division_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_district_id` int(10) DEFAULT NULL,
  `permanent_district_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_upazila_id` int(10) DEFAULT NULL,
  `permanent_upazila_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `educational_qualification_id` int(10) DEFAULT NULL,
  `educational_qualification_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `joining_govt_service_date` date DEFAULT NULL,
  `present_place_joing_date` date DEFAULT NULL,
  `present_post_joining_date` date DEFAULT NULL,
  `last_promoted_post_id` int(10) DEFAULT NULL,
  `last_promoted_post_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_promotion_date` date DEFAULT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation_id` int(10) DEFAULT NULL,
  `designation_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization_id` int(10) DEFAULT NULL,
  `organization_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` tinyint(10) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(10) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `additional_organization_id` int(10) DEFAULT NULL,
  `additional_organization_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `additional_designation_id` int(10) DEFAULT NULL,
  `additional_designation_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agency_id` int(10) DEFAULT NULL,
  `agency_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marital_status_id` int(10) DEFAULT NULL,
  `marital_status_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES ('1', null, 'সালমা আহমেদ', 'সালমা আহমেদ', '', '', '', '০১৭১১৯৮১৬২৮', '', '0', '', '0', '', '0', '', '0', '', '0000-00-00', '0000-00-00', '0', '', '0', '', '0', '', '', '0', '', '0000-00-00', '0000-00-00', '0000-00-00', '0', '', '0000-00-00', '', '1', 'উপপরিচালক', '1', 'জেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়, ব্রাহ্মণবাড়িয়া', null, null, '2020-09-08 23:22:41', null, null, '0', '', '0', '', '2', 'মহিলা বিষয়ক অধিদপ্তর', '0', '');
INSERT INTO `employees` VALUES ('2', null, 'শরিফা খাতুন', 'শরিফা খাতুন', '', '', '', '০১৭১৭৪৩৯৪৬৬', '', '0', '', '0', '', '0', '', '0', '', '0000-00-00', '0000-00-00', '0', '', '0', '', '0', '', '', '0', '', '0000-00-00', '0000-00-00', '0000-00-00', '0', '', '0000-00-00', '', '4', 'প্রোগ্রাম অফিসার', '2', 'উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়, ব্রাহ্মণবাড়িয়া সদর', null, null, '2020-09-08 23:22:17', null, null, '0', '', '0', '', '2', 'মহিলা বিষয়ক অধিদপ্তর', '0', '');
