/*
Navicat MySQL Data Transfer

Source Server         : Web
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : com_care

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2016-10-21 12:08:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for budget
-- ----------------------------
DROP TABLE IF EXISTS `budget`;
CREATE TABLE `budget` (
  `budget_id` int(11) NOT NULL AUTO_INCREMENT,
  `budget_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`budget_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of budget
-- ----------------------------
INSERT INTO `budget` VALUES ('1', 'เงินงบประมาณ');
INSERT INTO `budget` VALUES ('2', 'เงินบำรุง');

-- ----------------------------
-- Table structure for buy_type
-- ----------------------------
DROP TABLE IF EXISTS `buy_type`;
CREATE TABLE `buy_type` (
  `buy_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `buy_type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`buy_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buy_type
-- ----------------------------
INSERT INTO `buy_type` VALUES ('1', 'ตกลงราคา');
INSERT INTO `buy_type` VALUES ('2', 'สอบราคา');
INSERT INTO `buy_type` VALUES ('3', 'เช่าซื้อ');

-- ----------------------------
-- Table structure for com
-- ----------------------------
DROP TABLE IF EXISTS `com`;
CREATE TABLE `com` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_type_id` int(11) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `detail` text CHARACTER SET tis620,
  `accept_date` datetime DEFAULT NULL,
  `asset_code` varchar(255) DEFAULT NULL,
  `machine_code` varchar(255) CHARACTER SET tis620 DEFAULT NULL,
  `cpu_type` varchar(255) DEFAULT NULL,
  `cpu_speed` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `display` varchar(255) DEFAULT NULL,
  `cd_type` varchar(255) DEFAULT NULL,
  `harddisk` varchar(255) DEFAULT NULL,
  `price` double(11,2) DEFAULT NULL,
  `depart_id` int(11) DEFAULT NULL,
  `com_status_id` int(11) DEFAULT NULL,
  `com_date` date DEFAULT NULL,
  `insurance_date` date DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `staff` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `discharge_date` date DEFAULT NULL,
  `buy_type_id` int(11) DEFAULT NULL,
  `budget_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com
-- ----------------------------
INSERT INTO `com` VALUES ('1', '1', 'HP ProLiant ML370', null, '2007-07-26 10:44:33', null, null, 'Xeon', '3.2	', '4096	', 'On board ', 'Combo 14X', null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('2', '1', 'DELL PowerEdge 1950', null, '2007-07-26 10:44:33', 'ศส.11-7440-001-0001-062', null, 'Xeon', '3	', '2048	', 'On board  ', 'Combo 20X', '500 GB', '192600.00', '10', '1', null, '2014-03-26', null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('3', '1', 'IBM SYSTEM X3200 M2', null, '2009-07-15 10:59:05', 'ศส.11-7440-001-0001-095', null, 'Xeon', '3	', '2048	', 'On board', 'Combo 20X', null, '39150.00', '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('4', '7', 'Fortigate 200 A', null, '2009-07-26 11:03:53', 'ศส.11-7440-001-0001-063', null, null, null, null, null, null, null, '247170.00', '10', '1', null, '2015-01-15', null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('5', '6', '3Com รุ่น Switch 2024', '24 Port', '2009-07-26 11:08:25', null, null, null, null, null, null, null, null, null, '10', '1', null, '2014-07-26', null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('6', '1', 'HP Pavilion P638L', null, '2010-07-15 11:05:50', null, null, 'Xeon', '2.5	', '4096	', 'Card', 'DVDRW 52X', null, '27480.00', '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('7', '6', '3Com รุ่น Switch 2024', '24 Port\r\n', '2010-07-26 11:12:26', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('8', '6', '3Com รุ่น Switch 2024', '24 Port\r\n', '2010-07-26 11:13:16', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('9', '6', '3Com รุ่น Switch 2024', '24 Port\r\n', '2010-07-26 11:14:07', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('10', '6', '3Com รุ่น Switch 2024', '24 Port\r\n', '2010-07-26 11:15:04', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('11', '4', 'hp LaserJet 1020', 'Laser\r\n', '2012-07-15 11:13:42', 'ศส. 11-7440-001-0004-026', null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('12', '6', '3Com ', '24 Port\r\n', '2010-07-26 11:15:54', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('13', '4', 'ML-1710', 'Laser\r\n', '2012-07-15 11:14:42', 'ศส. 11-7440-001-0004-013', null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('14', '6', 'Linksys Rackmount 24-Port', '24 Port\r\n', '2010-07-26 11:16:39', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('15', '4', 'hp LaserJet 1000 series', 'Laser\r\n', '2012-07-15 11:15:38', 'ศส. 11-7440-001-0004-006', null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('16', '6', 'Linksys Rackmount 24-Port', '24 Port\r\n', '2010-07-26 11:17:26', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('17', '4', 'hp LaserJet P1005', 'Laser\r\n', '2012-07-15 11:17:13', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('18', '5', 'HP  Scanjet 5590', 'ความละเอียด 1024*1240 dpi\r\n', '2014-07-15 11:19:00', null, null, null, null, null, null, null, null, null, '10', '1', null, '2014-04-15', null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('19', '4', 'Fuji xerox 340A', 'Laser\r\n', '2012-07-15 11:17:49', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('20', '4', 'Fuji xerox 340A', 'Laser\r\n', '2012-07-15 11:19:29', 'ศส. 11-7440-001-0001-028', null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('21', '4', 'ML-2251N', 'Laser\r\n', '2012-07-15 11:20:02', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('22', '4', 'hp LaserJet P1005', 'Laser\r\n', '2012-07-15 11:20:46', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('23', '4', 'Fuji xerox 340A', 'Laser\r\n', '2012-07-15 11:21:44', 'ศส. 11-7440-001-0001-027', null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('24', '4', 'hp LaserJet 1000 series', 'Laser\r\n', '2012-07-15 11:22:42', 'ศส. 11-7440-001-0004-004', null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('25', '4', 'hp LaserJet 1320', 'Laser\r\n', '2012-07-15 11:23:30', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('26', '2', 'DELL Optiplx 755', null, '2010-07-15 11:23:40', 'ศส.11-7440-001-0001-076', null, 'core2DUOE4400', '2.00GHz	', '512	', 'On board ', 'CD/R', null, null, '1', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('27', '4', 'hp LaserJet 1200 series', 'Laser\r\n', '2012-07-15 11:24:07', 'ศส. 11-7440-001-0004-008', null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('28', '4', 'hp LaserJet M1005 MFP', 'Laser\r\n', '2012-07-15 11:25:41', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('29', '4', 'zabraTLP 2844', 'Laser\r\n', '2012-07-15 11:26:16', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('30', '2', 'เครื่องประกอบ', null, '2010-07-15 11:27:13', 'ศส.11-7440-001-0001-043', null, 'Intel®Pentium4', '1.60 Ghz	', '256	', 'On board ', null, null, null, '1', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('31', '4', 'hp LaserJet P1102 W', 'Laser\r\n', '2012-07-15 11:29:30', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('32', '4', 'hp LaserJet 1020', 'Laser\r\n', '2012-07-15 11:30:00', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('33', '4', 'hp LaserJet P1005', 'Laser\r\n', '2012-07-15 11:30:38', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('34', '2', 'เครื่องประกอบ', null, '2010-07-15 11:32:51', null, null, 'Intel®Pentium4', '2.00 GHz	', '256	', 'On board ', 'CD/R', null, null, '1', '1', null, '2014-07-15', null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('35', '4', 'hp LaserJet 1018', 'Laser\r\n', '2012-07-15 11:31:16', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('36', '4', 'Fuji xerox 340A', 'Laser\r\n', '2012-07-15 11:31:55', 'ศส. 11-7440-001-0004-031', null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('37', '2', 'เครื่องประกอบ', null, '2010-07-15 11:33:33', 'ศส.11-7440-001-0001-005', null, 'Intel®Pentium4', '1.70 GHz	', '256	', 'On board', null, null, null, '1', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('38', '4', 'hp LaserJet P1005', 'Laser\r\n', '2012-07-15 11:32:48', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('39', '4', 'hp DeskJet F4185', 'INKJET\r\n', '2012-07-15 11:33:19', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('40', '4', 'hp LaserJet 1320', 'Laser\r\n', '2012-07-15 11:34:13', 'ศส. 11-7440-001-0004-017', null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('41', '2', 'DELL Optiplx 755', null, '2010-07-15 11:35:27', 'ศส.11-7440-001-0001-075', null, 'core2DUOE4400', '2.00GHz	', '512	', 'On board', 'CD/R', null, null, '1', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('42', '4', 'EPSON ST YLUS T11', 'Inkjet \r\n', '2012-07-15 11:34:54', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('43', '4', 'hp LaserJet P1005', 'Laser\r\n', '2012-07-15 11:35:32', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('44', '4', 'hp LaserJet P2015', 'Laser\r\n', '2012-07-15 11:36:13', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('45', '2', 'เครื่องประกอบ', null, '2010-07-15 11:37:13', 'ศส.11-7440-001-0001-056', null, 'Intel®celeron', '2.66 GHz	', '1024	', 'On board', 'DVD/RW', null, null, '1', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('46', '4', 'hp Officejet 6000', 'INKJET\r\n', '2012-07-15 11:36:45', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('47', '4', 'EPSON ST YLUS T11', 'INKJET\r\n', '2012-07-15 11:37:25', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('48', '4', 'hp LaserJet 1320', 'Laser\r\n', '2012-07-15 11:38:11', 'ศส. 11-7440-001-0004-018', null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('49', '3', 'asus Eee PC 1000 H', null, '2010-07-15 11:38:53', null, null, 'Atom N270', '1.6 GHz	', '1024	', 'On Board', 'DVD/RW Ext.', null, null, '1', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('50', '4', 'hp Officejet 6000', 'INKJET\r\n\r\n', '2012-07-15 11:38:56', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('51', '4', 'hp LaserJet 1020', 'Laser\r\n', '2012-07-15 11:39:40', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('52', '4', 'hp LaserJet P1006', 'Laser\r\n', '2012-07-15 11:40:18', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('53', '4', 'hp LaserJet P1005', 'Laser\r\n', '2012-07-15 11:40:44', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('54', '3', 'compaq ', null, '2010-07-15 11:41:44', 'ศส.11-7440-001-0005-004', null, 'Pentium M', '1.60 Ghz	', '768	', 'Onboard', 'combo', null, null, '1', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('55', '4', 'hp LaserJet 1020', 'Laser\r\n', '2012-07-15 11:41:19', 'ศส. 11-7440-001-0004-021', null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('56', '3', 'acer', null, '2010-07-15 11:43:23', null, null, 'Pentium M', '1.60 Ghz	', '512	', 'On board', 'combo', null, null, '1', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('57', '4', 'zabraTLP 2844', 'Laser\r\n', '2012-07-15 11:41:56', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('58', '4', 'hp LaserJet M1005 MFD', 'Laser\r\n', '2012-07-15 11:43:26', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('59', '4', 'hp LaserJet 1320', 'Laser', '2012-07-15 11:44:01', 'ศส. 11-7440-001-0004-020', null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('60', '2', 'DELL Optiplx 755', null, '2010-07-15 11:45:18', 'ศส.11-7440-001-0001-067', null, 'core2DUOE4400', '2.00GHz	', '512	', 'On board', 'CD/R', null, null, '3', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('61', '4', 'hp LaserJet P1102 ', 'Laser\r\n', '2012-07-15 11:44:54', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('62', '4', 'hp LaserJet P1102 ', 'Laser\r\n', '2012-07-15 11:45:28', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('63', '2', 'เครื่องประกอบ', null, '2014-07-15 11:46:48', 'ศส.11-7440-001-0001-057', null, 'Intel®celeron', '2.66 GHz	', '512	', 'On board', 'DVD/RW', null, null, '3', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('64', '4', 'hp LaserJet P1005', 'Laser\r\n', '2012-07-15 11:46:06', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('65', '2', 'เครื่องประกอบ', null, '2010-07-15 11:48:03', 'ศส.11-7440-001-0001-047', null, 'Intel®Pentium4', '3.00 GHZ	', '256	', 'On board', null, null, null, '3', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('66', '4', 'hp INKJET', 'INKJET\r\n\r\n', '2012-07-15 11:46:42', 'ศส. 11-7440-001-0007-004', null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('67', '4', 'hp INKJET', 'INKJET\r\n\r\n', '2012-07-15 11:46:42', 'ศส. 11-7440-001-0007-004', null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('68', '4', 'hp LaserJet P1005', 'Laser\r\n', '2012-07-15 11:47:40', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('69', '2', 'เครื่องประกอบ', null, '2010-07-15 11:49:28', 'ศส.11-7440-001-0001-016', null, 'Intel®Pentium4', '1.60 GHz	', '256	', 'On board', 'CD/R', null, null, '3', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('70', '4', 'hp LaserJet P1102 W', 'Laser\r\n', '2012-07-15 11:48:25', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('71', '4', 'TLP 2844', 'Laser\r\n', '2012-07-15 11:49:06', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('72', '4', 'TLP 2845', 'Laser\r\n', '2012-07-15 11:49:41', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('73', '2', 'เครื่องประกอบ', null, '2010-07-15 11:50:50', 'ศส.11-7440-001-0001-097', null, 'DUO-CORE', '2.60 GHz	', '2048	', 'On board', 'DVD/RW', null, null, '3', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('74', '4', 'hp LaserJet 1320', 'Laser\r\n', '2012-07-15 11:50:40', 'ศส. 11-7440-001-0004-016', null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('75', '4', 'hp LaserJet P1005', 'Laser\r\n', '2012-07-15 11:51:12', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('76', '2', 'DELL Optiplx 755', null, '2010-07-15 11:52:08', 'ศส.11-7440-001-0001-068', null, 'core2DUOE4400', '2.00GHz	', '512	', 'On board', 'CD/R', null, null, '4', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('77', '4', 'Canon C4180', 'INKJET\r\n', '2012-07-15 11:51:46', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('78', '4', 'hp LaserJet 1020', 'Laser\r\n', '2012-07-15 11:52:39', 'ศส. 11-7440-001-0004-024', null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('79', '2', 'เครื่องประกอบ', null, '2010-07-15 11:54:23', 'ศส.11-7440-001-0001-046', null, 'Intel®Pentium4', '1.72 GHz	', '1024	', 'On board', 'CD/R', null, null, '4', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('80', '4', 'hp LaserJet 1020', 'Laser\r\n', '2012-07-15 11:53:27', 'ศส. 11-7440-001-0004-023', null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('81', '4', 'hp LaserJet P1005', 'Laser\r\n', '2012-07-15 11:54:03', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('82', '4', 'hp LaserJet M1005 MFP', 'Laser\r\n', '2012-07-15 11:54:41', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('83', '2', 'DELL Optiplx 755', null, '2010-07-15 11:55:47', 'ศส.11-7440-001-0001-069', null, 'core2DUOE4400', '2.00GHz	', '512	', 'On board', 'CD/R', null, null, '4', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('84', '4', 'hp LaserJet P1002 W', 'Laser\r\n', '2012-07-15 11:55:14', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('85', '2', 'DELL Optiplx 755', null, '2010-07-15 11:56:58', 'ศส.11-7440-001-0001-070', null, 'core2DUOE4400', '2.00GHz	', null, 'On board', null, null, null, '4', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('86', '4', 'Canon IP4760', 'INKJET\r\n', '2012-07-15 11:56:08', null, null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('87', '4', 'Fuji xerox 340A', 'Laser\r\n', '2012-07-15 11:56:44', 'ศส. 11-7440-001-0004-030', null, null, null, null, null, null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('88', '2', 'เครื่องประกอบ', null, '2010-07-15 11:58:15', 'ศส.11-7440-001-0001-052', null, 'Dual-Core E5200', '2.50 GHZ	', '1024	', 'On board', null, null, null, '4', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('89', '2', 'เครื่องประกอบ', null, '2010-07-15 12:00:29', null, null, 'Intel®Pentium4', '3.00 GHZ	', '1024	', 'On board', 'DVD/R', null, null, '4', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('90', '2', 'เครื่องประกอบ', null, '2010-07-15 13:12:48', null, null, 'Intel®Pentium4', '3.07 GHZ	', '512	', 'On board', 'DVD/R', null, null, '4', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('91', '2', 'DELL Optiplx 755', null, '2010-07-15 13:14:31', 'ศส.11-7440-001-0001-071', null, 'core2DUOE4400', '2.00GHz	', '512	', 'On board', 'CD/R', null, null, '4', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('92', '2', 'เครื่องประกอบ', null, '2010-07-15 13:15:55', null, null, 'Pentium D', '3.0 GHz	', '1500	', 'On board ', null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('93', '2', 'เครื่องประกอบ', null, '2010-07-15 13:16:04', null, null, 'Intel®Pentium4', '1.60 GHZ	', '1024	', 'On board', null, null, null, '4', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('94', '2', 'เครื่องประกอบ', null, '2010-07-15 13:18:15', 'ศส.11-7440-001-0001-032', null, 'Intel®Pentium4', '2.80 GHZ	', '256	', 'On board', null, null, null, '4', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('95', '2', 'HP DX7400', null, '2010-07-15 13:21:24', 'ศส.11-7440-001-0001-094', null, 'core2DUOE4600', '2.40 GHZ	', '1024	', 'On board', 'DVD/RW', null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('96', '2', 'HP DX7400', null, '2010-07-15 13:26:54', 'ศส.11-7440-001-0001-093', null, 'core2DUOE4600', '2.00GHz	', '512	', 'On board', 'CD/R', null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('97', '2', 'HP DX7400', null, '2010-07-15 13:31:20', null, null, 'core2DUOE4600', '2.40 GHZ	', '1024	', 'On board', 'DVD/RW', null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('98', '3', 'asus ', null, '2010-07-15 13:32:59', null, null, 'T1300', '1.66 GHz	', '512	', 'On board', 'DVD/RW', null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('99', '2', 'HP DX7400', null, '2010-07-15 13:32:40', 'ศส.11-7440-001-0001-092', null, 'core2DUOE4600', '2.40GHz	', '1024	', 'On board', 'DVD/RW', null, null, '9', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('100', '3', 'Asus K40IN', null, '2010-07-15 13:36:14', 'ศส.11-7440-001-0006-028', null, 'core2DUOT6500', '2.1 GHz	', '2048	', 'On board', 'DVD/RW', null, null, '9', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('101', '2', 'DELL Optiplx 755', null, '2010-07-15 13:36:51', 'ศส.11-7440-001-0001-081', null, 'core2DUOE4400', '2.00GHz	', '512	', null, 'CD/R', null, null, '6', '1', null, '2014-02-15', null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('102', '2', 'DELL Optiplx 755', null, '2010-07-15 13:38:29', 'ศส.11-7440-001-0001-082', null, 'core2DUOE4400', '2.00GHz	', '512	', null, 'CD/R', null, null, '6', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('103', '3', 'Acer 12 \"', null, '2010-07-15 13:38:17', null, null, 'Intel Centrino', '1.2GHz	', '512	', 'On board ', 'Combo Ext', null, null, '9', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('104', '2', 'HP i3-540', null, '2010-07-15 13:39:30', null, null, ' i3-540', '3.06 GHZ	', '4096	', 'Card', 'DVD/RW', null, null, '6', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('105', '2', 'เครื่องประกอบ', null, '2010-07-15 13:39:44', 'ศส.11-7440-001-0001-019', null, 'Intel®Pentium4', '1.70GHz	', '1024	', 'On board', null, null, null, '9', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('106', '3', 'ASUS X8AIN-VX167D', null, '2010-07-15 13:41:25', 'ศส.11-7440-001-0006-031', null, 'DUOCORE', '2.20 GHz	', '2048	', 'Card', 'DVD/RW', null, null, '6', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('107', '3', 'hp compeq nx630', null, '2010-07-15 13:42:27', 'ศส.11-7440-001-0006-011', null, 'celeron', '1.73 GHz	', '512	', 'On board', 'DVD/RW', null, null, '6', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('108', '2', 'DELL Optiplx 755', null, '2010-07-15 13:43:03', 'ศส.11-7440-001-0001-085', null, 'core2DUOE4400', '2.00GHz	', '512	', 'On board ', 'CD/R', null, null, '9', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('109', '2', 'เครื่องประกอบ', null, '2010-07-15 13:44:54', 'ศส.11-7440-001-0001-008', null, 'Intel®Pentium4', '1.60 GHz	', '1024	', null, null, null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('110', '2', 'เครื่องประกอบ', null, '2010-07-15 13:46:13', 'ศส.11-7440-001-0001-055', null, 'Intel®celeron', '2.60 GHz	', '256	', null, 'DVD/RW', null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('111', '2', 'DELL Optiplx 755', null, '2010-07-15 13:45:29', 'ศส.11-7440-001-0001-084', null, 'core2DUOE4400', '2.00GHz	', '512	', 'On board ', 'CD/R', null, null, '9', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('112', '2', 'เครื่องประกอบ', null, '2010-07-15 13:47:52', null, null, 'Intel®Pentium4', '2.40 GHz	', '256	', null, null, null, null, '2', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('113', '2', 'เครื่องประกอบ', null, '2010-07-15 13:48:45', null, null, 'Intel®PentiumD', '2.80 GHz	', '1024	', null, 'DVD/RW', null, null, '2', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('114', '2', 'เครื่องประกอบ', null, '2010-07-15 13:48:03', null, null, 'Intel®Pentium4', '2.80GHz	', '512	', 'On board ', 'DVD/R', null, null, '9', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('115', '3', 'Asus ', null, '2010-07-15 13:49:50', null, null, 'core2DUOT2350', '1.86 GHz	', '512	', null, 'DVD/RW', null, null, '2', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('116', '2', 'เครื่องประกอบ', null, '2010-07-15 13:49:51', 'ศส.11-7440-001-0001-053', null, 'DualE2180', '2.00GHz	', '2048	', 'On board ', 'DVD/RW', null, null, '9', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('117', '3', 'lenovo Y450 P8700', null, '2010-07-15 13:50:58', null, null, 'core2DUO P8700', '2.53 GHz	', '4048	', 'Card', 'DVD/RW', null, null, '2', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('118', '3', 'lenovo Y450 P8700', null, '2010-07-15 13:52:16', null, null, 'core2DUO P8700', '2.53 GHz	', '4048	', 'card', 'DVD/RW', null, null, '2', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('119', '3', 'acer', null, '2010-07-15 13:51:44', null, null, null, '1.6GHz	', '512	', 'On board ', 'combo', null, null, '8', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('120', '3', 'lenovo Y450 T6600', null, '2010-07-15 13:53:54', null, null, 'core2DUO T6600', '2.2 GHz	', '2048	', 'Card', 'DVD/RW', null, null, '2', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('121', '3', 'lenovo Y330', null, '2010-07-15 13:55:44', null, null, 'core2DUO T5800', '2.0 GHz	', '2048	', 'Card', 'DVD/RW', null, null, '2', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('122', '3', 'hp compeq nx630', null, '2010-07-15 13:56:50', null, null, 'celeron', '1.73 GHz	', '768	', 'On board', 'DVD/RW', null, null, '2', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('123', '3', 'เครื่องประกอบ', null, '2010-07-15 13:57:05', 'ศส.11-7440-001-0002-003', null, 'Intel®Pentium', '587MHz	', '512	', 'On board', 'DVD/R', null, null, '8', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('124', '3', 'asus G1', null, '2010-07-15 13:58:47', 'ศส.11-7440-001-0006-016', null, 'core2DUO T9300', '2.5 GHz	', '3072	', 'Card', 'DVD/RW', null, null, '2', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('125', '3', 'asus F8VR', null, '2010-07-15 13:59:50', null, null, 'core2DUO P8600', '2.4 GHz	', '4048	', 'Card', 'DVD/RW', null, null, '2', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('126', '2', 'เครื่องประกอบ', null, '2010-07-15 13:58:53', 'ศส.11-7440-001-0001-035', null, 'Intel®Pentium2', '2.40GHz	', '1024	', 'On board ', null, null, null, '8', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('127', '2', 'HP', null, '2010-07-15 14:01:02', 'ศส.11-7440-001-0001-102', null, 'Quad Cord Q9300', '2.5 GHz	', '4048	', 'Card', 'DVD/R', null, null, '2', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('128', '2', 'เครื่องประกอบ', null, '2010-07-15 14:01:16', 'ศส.11-7440-001-0001-066', null, 'DualE2160', '1.79GHz	', '1024	', 'On board', 'DVD/RW', null, null, '8', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('129', '2', 'เครื่องประกอบ', null, '2010-07-15 14:02:22', 'ศส.11-7440-001-0001-054', null, 'PentiumD', '2.8 GHz	', '1024	', 'On board', 'DVD/RW', null, null, '2', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('130', '2', 'เครื่องประกอบ', null, '2010-07-15 14:03:47', null, null, 'Pentium4', '2.4 GHz	', '256	', 'On board', 'CD/DVD', null, null, '2', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('131', '2', 'เครื่องประกอบ', null, '2010-07-15 14:03:56', 'ศส.11-7440-001-0001-061', null, 'Intel®celeron', '2.66GHz	', '512	', 'On board ', 'DVD/RW', null, null, '8', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('132', '2', 'Intel®Pentium DualE2220', null, '2010-07-15 14:06:51', 'ศส.11-7440-001-0001-096', null, null, '2.40GHz	', '1024	', 'On board', null, null, null, '9', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('133', '2', 'เครื่องประกอบ', null, '2010-07-15 14:06:34', 'ศส.11-7440-001-0001-100', null, 'core i3', '2.93GHz	', '4096	', 'Card ', 'DVD/RW', null, null, '8', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('134', '2', 'HP', null, '2010-07-15 14:08:05', 'ศส.11-7440-001-0001-098', null, 'core i3', '2.93GHz	', '4096	', 'Card', null, null, null, '9', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('135', '2', 'DELL Optiplx 755', null, '2010-07-15 14:08:05', 'ศส.11-7440-001-0001-086', null, 'core2DUOE4400', '2.00GHz	', '512	', 'On board', 'CD/R', null, null, '8', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('136', '3', 'เครื่องประกอบ', null, '2010-07-15 14:09:38', 'ศส.11-7830-016-0012-001', null, 'core2DUOT6500', '2.10GHz	', '2048	', 'On board', 'DVD/RW', null, null, '9', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('137', '3', 'เครื่องประกอบ', null, '2010-07-15 14:10:01', null, null, 'core2DUOT5750', '2.00GHz	', '2048	', 'Card ', 'DVD/RW', null, null, '8', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('138', '3', 'เครื่องประกอบ', null, '2010-07-15 14:11:00', 'ศส.11-7830-016-0007-001', null, 'celeron', '1.86GHz	', '512	', 'On board', 'DVD/RW', null, null, '9', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('139', '3', 'เครื่องประกอบ', null, '2010-07-15 14:12:23', 'ศส.11-7830-016-0007-002', null, 'core2DUOT6500', '2.10GHz	', '2048	', 'On board', 'DVD/RW', null, null, '9', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('140', '2', 'เครื่องประกอบ', null, '2010-07-15 14:15:40', null, null, 'core2DUO', '2.40 GHZ	', '1024	', 'On board', 'DVD/RW', null, null, '9', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('141', '2', 'DELL Optiplx 755', null, '2010-07-15 14:17:04', 'ศส.11-7440-001-0001-083', null, 'core2DUOE4400', '2.00GHz	', '512	', 'On board', 'CD/R', null, null, '7', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('142', '2', 'เครื่องประกอบ', null, '2010-07-15 14:16:24', null, null, 'Intel®celeron', '2.80 GHZ	', '512	', 'On board', 'CD/R', null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('143', '2', 'HP', null, '2010-07-15 14:18:20', null, null, 'core i3-540', '3.06 GHZ	', '4096	', 'Card', 'DVD/RW', null, null, '7', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('144', '2', 'HP ', null, '2010-07-15 14:19:11', null, null, 'i3-540', '3.06 GHZ	', '4096	', 'Card ', 'DVD/RW', null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('145', '3', 'HP nx6310', null, '2010-07-15 14:19:59', null, null, 'celeron', '1.73 GHz	', '768	', 'On board', 'DVD/RW', null, null, '7', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('146', '3', 'ASUS X8AIN-VX167D', null, '2010-07-15 14:21:23', 'ศส.11-7440-001-0006-032', null, 'core2DUO', '2.20 GHz	', '4096	', 'Card', 'DVD/R', null, null, '7', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('147', '2', 'HP COMPAQ  ', null, '2010-07-15 14:20:41', null, null, 'Core2DUO E7500', '2.93GHz	', '2048	', 'Card', 'DVD/RW', null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('148', '2', 'เครื่องประกอบ', null, '2010-07-15 14:22:41', 'ศส.11-7440-001-0001-020', null, 'Intel®Pentium4', '1.60 GHZ	', '512	', null, null, null, null, '7', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('149', '3', 'เครื่องประกอบ', null, '2010-07-15 14:22:11', 'ศส.11-7440-001-0006-017', null, 'core2DUOT5750', '2.00 GHZ	', '2048	', 'On board ', 'DVD/RW', null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('150', '2', 'เครื่องประกอบ', null, '2010-07-15 14:24:04', null, null, 'celeron D', '2.80 GHZ	', '256	', null, null, null, null, '7', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('151', '2', 'DELL Optiplx 755', null, '2010-07-15 14:26:27', 'ศส.11-7440-001-0001-077', null, 'core2DUOE4400', '2.00 GHz	', '512	', 'On board', 'CD/R', null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('152', '2', 'DELL Optiplx 755', null, '2010-07-15 14:24:54', 'ศส.11-7440-001-0001-072', null, 'core2DUOE4400', '2.00GHz	', '512	', 'On board', 'CD/R', null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('153', '2', 'เครื่องประกอบ', null, '2010-07-15 14:27:36', null, null, 'Intel®Pentium4', '2.40 GHZ	', '512	', 'On board', 'DVD/R', null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('154', '2', 'DELL Optiplx 755', null, '2010-07-15 14:27:25', 'ศส.11-7440-001-0001-079', null, 'core2DUOE4400', '2.00GHz	', '512	', 'On board ', 'CD/R', null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('155', '2', 'เครื่องประกอบ', null, '2010-07-15 14:28:36', 'ศส.11-7440-001-0001-065', null, 'duo-core E2160', '1.79GHz	', '2024	', 'On board', 'DVD/R', null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('156', '2', 'DELL Optiplx 755', null, '2010-07-15 14:29:09', 'ศส.11-7440-001-0001-078', null, 'core2DUOE4400', '2.00GHz	', '512	', 'On board ', 'CD/R', null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('157', '2', 'DELL Optiplx 755', null, '2010-07-15 14:30:19', 'ศส.11-7440-001-0001-073', null, 'core2DUOE4400', '2.00GHz	', '1024	', 'On board', 'DVD/R', null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('158', '2', 'เครื่องประกอบ', null, '2010-07-15 14:31:28', 'ศส.11-7440-001-0001-059', null, 'Intel®celeron', '2.66GHz	', '512	', 'On board', null, null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('159', '2', 'เครื่องประกอบ', null, '2010-07-15 14:31:11', null, null, 'Intel®Pentium Dual - Core', '2.60 GHZ	', '1024	', 'On board', null, null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('160', '2', 'เครื่องประกอบ', null, '2010-07-15 14:32:27', 'ศส.11-7440-001-0001-058', null, 'Intel®celeron', '2.66GHz	', '512	', 'On board', null, null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('161', '3', 'Sony ', null, '2010-07-15 14:32:49', 'ศส.11-7440-001-0006-020', null, 'Intel®core2DUOT8100', '2.10 GHZ	', '2048	', 'On board', null, null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('162', '2', 'เครื่องประกอบ', null, '2010-07-15 14:33:44', null, null, 'Intel®Pentium4', '2.40GHz	', '512	', 'On board', 'DVD/R', null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('163', '2', 'DELL Optiplx 755', null, '2010-07-15 14:35:19', 'ศส.11-7440-001-0001-080', null, 'core2DUOE4400', '2.00GHz	', '512	', 'On board', 'DVD/R', null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('164', '3', 'ASUS X8AIN-VX167D', null, '2010-07-15 14:34:13', 'ศส.11-7440-001-0006-030', null, 'Intel®core2DUOT6600', '2.20 GHZ	', '4096	', 'On board ', 'DVD/RW', null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('165', '3', 'Toshiba', null, '2010-07-15 14:36:38', 'ศส.11-7440-001-0006-026', null, 'Intel®core2DUOT6600', '2.20 GHZ	', '2048	', 'On board ', 'DVD/RW', null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('166', '3', 'Toshiba', null, '2010-07-15 14:36:34', 'ศส.11-7440-001-0006-027', null, 'Intel®core2DUOT6600', '2.20 GHZ	', '2048	', 'On board', 'DVD/RW', null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('167', '3', 'acer', null, '2010-07-15 14:38:40', null, null, 'Intel®Pentium2', '1.56 GHz	', '512	', 'On board ', null, null, null, '5', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('168', '3', 'sony TZ36SN/W', null, '2010-07-15 14:43:08', 'ศส.11-7440-001-0006-015', null, 'core2 U7600', '1.2 GHz	', '2048	', 'On board', null, null, null, '10', '1', null, null, null, null, '194', null, null, null, null);
INSERT INTO `com` VALUES ('169', '3', 'HP TX 2531AU', null, '2010-07-15 14:43:28', 'ศส.11-7440-001-0006-020', null, 'TurionX2 ZM80', '2.1 GHz	', '2048	', 'Card ', 'DVD/RW', null, null, '10', '1', null, null, null, null, '194', null, null, null, null);

-- ----------------------------
-- Table structure for com_service
-- ----------------------------
DROP TABLE IF EXISTS `com_service`;
CREATE TABLE `com_service` (
  `com_service_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_id` int(11) DEFAULT NULL,
  `problem` varchar(255) DEFAULT NULL,
  `problem_type_id` int(11) DEFAULT NULL,
  `problem_detail` text,
  `problem_user` int(11) DEFAULT NULL,
  `problem_datetime` datetime DEFAULT NULL,
  `it_job` varchar(1) DEFAULT NULL,
  `it_job_detail` text,
  `it_job_user` int(11) DEFAULT NULL,
  `it_job_datetime` datetime DEFAULT NULL,
  `claim` varchar(1) DEFAULT NULL,
  `claim_detail` text,
  `claim_user` int(11) DEFAULT NULL,
  `claim_datetime` datetime DEFAULT NULL,
  `claim_price` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`com_service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_service
-- ----------------------------
INSERT INTO `com_service` VALUES ('1', '1', 'PC มีปัญหาในการใช้งาน', '4', 'ทดสอบรายละเอียด', '194', '2014-07-12 13:17:32', '', null, null, null, '', '', '194', '0000-00-00 00:00:00', null);
INSERT INTO `com_service` VALUES ('2', '1', 'NB มีปัญหาในการใช้งาน', '1', 'ทดสอบรายละเอียด 2ปปปปปปปปปปปปปปปปปปปปปปปปปปป\r\nปปปปปปปปปปปปปปปปปปป\r\nปปปปปปปปปปปปปปปปปปป\r\nปปปปปปปปปปปปปปปปปปป\r\nปปปปปปปปปปปปปปปปป\r\nปปปปปปปปปปปปปปปปปปปปปป', '194', '2014-07-13 21:55:49', 'Y', 'ติดตั้งเรียบร้อยแล้ว', '194', '2014-07-14 10:15:52', 'Y', 'การส่งเครม', '194', '2014-07-14 09:36:31', null);
INSERT INTO `com_service` VALUES ('3', '106', 'ทดสอบ', '3', 'ปปปปปป', '32', '2014-08-01 09:35:49', 'Y', 'xxx', '194', '2014-08-16 09:46:51', null, null, null, null, null);
INSERT INTO `com_service` VALUES ('4', '5', 'xxxxxxx', '1', 'xxxxxxxx', '194', '2014-08-10 09:22:26', null, null, null, null, null, null, null, null, null);
INSERT INTO `com_service` VALUES ('5', '146', 'จอดับ', '3', 'จอดับไปแล้ว', '194', '2014-08-10 09:29:10', null, null, null, null, null, null, null, null, null);
INSERT INTO `com_service` VALUES ('6', '106', 'เครื่องเปิดไม่ติด ทำไงดี สุดยอด', '1', 'เครื่องเปิดไม่ติด จอดับไปเลย ก็ไม่รู้ซินะ สุดยอด', '194', '2014-08-10 09:32:46', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for com_status
-- ----------------------------
DROP TABLE IF EXISTS `com_status`;
CREATE TABLE `com_status` (
  `com_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_status_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`com_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_status
-- ----------------------------
INSERT INTO `com_status` VALUES ('1', 'ใช้งาน');
INSERT INTO `com_status` VALUES ('2', 'รอจำหน่าย');
INSERT INTO `com_status` VALUES ('3', 'จำหน่าย');

-- ----------------------------
-- Table structure for com_type
-- ----------------------------
DROP TABLE IF EXISTS `com_type`;
CREATE TABLE `com_type` (
  `com_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`com_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_type
-- ----------------------------
INSERT INTO `com_type` VALUES ('1', 'Server');
INSERT INTO `com_type` VALUES ('2', 'PC');
INSERT INTO `com_type` VALUES ('3', 'Notebook');
INSERT INTO `com_type` VALUES ('4', 'Printer');
INSERT INTO `com_type` VALUES ('5', 'Scanner');
INSERT INTO `com_type` VALUES ('6', 'Switch');
INSERT INTO `com_type` VALUES ('7', 'Firewall');

-- ----------------------------
-- Table structure for depart
-- ----------------------------
DROP TABLE IF EXISTS `depart`;
CREATE TABLE `depart` (
  `depart_id` int(11) NOT NULL AUTO_INCREMENT,
  `depart_code` varchar(255) DEFAULT NULL,
  `depart_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`depart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of depart
-- ----------------------------
INSERT INTO `depart` VALUES ('1', '12', 'วิชาการ');
INSERT INTO `depart` VALUES ('2', '13', 'KM');
INSERT INTO `depart` VALUES ('3', '32', 'การเงินและบัญชี');
INSERT INTO `depart` VALUES ('4', '34', 'สนับสนุนบริการ');
INSERT INTO `depart` VALUES ('5', '41', 'OPD');
INSERT INTO `depart` VALUES ('6', '42', 'RH');
INSERT INTO `depart` VALUES ('7', '43', 'WARD');
INSERT INTO `depart` VALUES ('8', '44', 'MCH');
INSERT INTO `depart` VALUES ('9', '45', 'Fitness');
INSERT INTO `depart` VALUES ('10', '55', 'IT');

-- ----------------------------
-- Table structure for month
-- ----------------------------
DROP TABLE IF EXISTS `month`;
CREATE TABLE `month` (
  `month_id` varchar(2) NOT NULL,
  `month_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`month_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of month
-- ----------------------------
INSERT INTO `month` VALUES ('01', 'มกราคม');
INSERT INTO `month` VALUES ('02', 'กุมภาพันธ์');
INSERT INTO `month` VALUES ('03', 'มีนาคม');
INSERT INTO `month` VALUES ('04', 'เมษายน');
INSERT INTO `month` VALUES ('05', 'พฤษภาคม');
INSERT INTO `month` VALUES ('06', 'มิถุนายน');
INSERT INTO `month` VALUES ('07', 'กรกฏาคม');
INSERT INTO `month` VALUES ('08', 'สิงหาคม');
INSERT INTO `month` VALUES ('09', 'กันยายน');
INSERT INTO `month` VALUES ('10', 'ตุลาคม');
INSERT INTO `month` VALUES ('11', 'พฤศจิกายน');
INSERT INTO `month` VALUES ('12', 'ธันวาคม');

-- ----------------------------
-- Table structure for priority
-- ----------------------------
DROP TABLE IF EXISTS `priority`;
CREATE TABLE `priority` (
  `priority_id` int(11) NOT NULL AUTO_INCREMENT,
  `priority_name` varchar(255) CHARACTER SET tis620 DEFAULT NULL,
  `priority_admin` varchar(1) CHARACTER SET tis620 DEFAULT 'N',
  PRIMARY KEY (`priority_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of priority
-- ----------------------------
INSERT INTO `priority` VALUES ('1', 'ผู้ดูแลระบบ', 'Y');
INSERT INTO `priority` VALUES ('2', 'ผู้ใช้งานทั่วไป', 'N');

-- ----------------------------
-- Table structure for problem_type
-- ----------------------------
DROP TABLE IF EXISTS `problem_type`;
CREATE TABLE `problem_type` (
  `problem_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`problem_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of problem_type
-- ----------------------------
INSERT INTO `problem_type` VALUES ('1', 'HOSxP');
INSERT INTO `problem_type` VALUES ('3', 'โปรแกรม สำนักงาน');
INSERT INTO `problem_type` VALUES ('4', 'Internet');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(250) DEFAULT '',
  `password` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `depart_id` int(11) DEFAULT NULL,
  `priority_id` int(11) DEFAULT NULL,
  `admin_right` int(1) DEFAULT '0',
  `user_right` int(1) DEFAULT '1',
  PRIMARY KEY (`user_id`),
  KEY `name` (`name`) USING BTREE,
  KEY `loginname` (`loginname`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('194', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'ผู้ดูแลระบบ', '10', '1', '1', '1');
INSERT INTO `user` VALUES ('195', 'test', '098f6bcd4621d373cade4e832627b4f6', 'ทดสอบระบบ', '1', '2', '0', '1');
INSERT INTO `user` VALUES ('196', 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'demo', '3', '2', '0', '1');
INSERT INTO `user` VALUES ('197', 'test2', 'ad0234829205b9033196ba818f7a872b', 'test2', '3', '2', '0', '1');

-- ----------------------------
-- Table structure for year
-- ----------------------------
DROP TABLE IF EXISTS `year`;
CREATE TABLE `year` (
  `year_id` varchar(4) NOT NULL,
  `year_name` varchar(50) DEFAULT NULL,
  `budget_year` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`year_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of year
-- ----------------------------
INSERT INTO `year` VALUES ('2556', 'พ.ศ. 2556', 'ปีงบประมาณ 2556');
INSERT INTO `year` VALUES ('2557', 'พ.ศ. 2557', 'ปีงบประมาณ 2557');
INSERT INTO `year` VALUES ('2558', 'พ.ศ. 2558', 'ปีงบประมาณ 2558');
INSERT INTO `year` VALUES ('2559', 'พ.ศ. 2559', 'ปีงบประมาณ 2559');
INSERT INTO `year` VALUES ('2560', 'พ.ศ. 2560', 'ปีงบประมาณ 2560');
INSERT INTO `year` VALUES ('2561', 'พ.ศ. 2561', 'ปีงบประมาณ 2561');
