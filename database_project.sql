-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 04, 2018 at 03:22 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_project`
--


--
-- Table structure for table `business`
--

DROP TABLE IF EXISTS `business`;
CREATE TABLE IF NOT EXISTS `business` (
  `customer_id` int(10) NOT NULL,
  `category` varchar(255) NOT NULL,
  `company_income` int(20) NOT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `category_index` (`category`(20))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`customer_id`, `category`, `company_income`) VALUES
(10114, 'computer', 600000),
(10115, 'computer', 600000),
(10116, 'computer', 600000),
(10117, 'computer', 600000),
(10118, 'computer', 600000),
(10119, 'computer', 600000),
(10120, 'computer', 600000),
(10121, 'computer', 600000),
(10122, 'computer', 600000),
(10123, 'computer', 600000),
(10124, 'computer', 600000),
(10125, 'computer', 1000000),
(10126, 'computer', 1000000),
(10127, 'computer', 1000000),
(10128, 'computer', 1000000),
(10129, 'computer', 1000000),
(10130, 'computer', 1000000),
(10131, 'computer', 1000000),
(10132, 'computer', 1000000),
(10133, 'computer', 1000000),
(10134, 'computer', 1000000),
(10135, 'computer', 1000000),
(10136, 'game', 1000000),
(10137, 'game', 1000000),
(10138, 'game', 1000000),
(10139, 'game', 1000000),
(10140, 'game', 1000000),
(10141, 'game', 1000000),
(10142, 'game', 1000000),
(10143, 'game', 1000000),
(10144, 'game', 1000000),
(10145, 'game', 1000000),
(10146, 'game', 1000000),
(10147, 'financial', 5000000),
(10148, 'financial', 5000000),
(10149, 'financial', 5000000),
(10150, 'financial', 5000000),
(10151, 'financial', 5000000),
(10152, 'financial', 5000000),
(10153, 'financial', 5000000),
(10154, 'financial', 5000000),
(10155, 'financial', 5000000),
(10156, 'financial', 5000000),
(10157, 'financial', 5000000),
(10158, 'innovative', 50000),
(10159, 'innovative', 50000),
(10160, 'innovative', 50000),
(10161, 'innovative', 50000),
(10162, 'innovative', 50000),
(10163, 'innovative', 50000),
(10164, 'innovative', 50000),
(10165, 'innovative', 50000),
(10166, 'innovative', 50000),
(10167, 'innovative', 50000),
(10168, 'innovative', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `kind` varchar(255) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10169 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `address`, `kind`) VALUES
(10001, 'customer1', '1 5th street 15215', 'home'),
(10002, 'customer2', '2 5th street 15215', 'home'),
(10003, 'customer3', '3 5th street 15215', 'home'),
(10004, 'customer4', '4 5th street 15215', 'home'),
(10005, 'customer5', '5 5th street 15215', 'home'),
(10006, 'customer6', '6 5th street 15215', 'home'),
(10007, 'customer7', '7 5th street 15215', 'home'),
(10008, 'customer8', '8 5th street 15215', 'home'),
(10009, 'customer9', '9 5th street 15215', 'home'),
(10010, 'customer10', '10 5th street 15215', 'home'),
(10011, 'customer11', '11 5th street 15215', 'home'),
(10012, 'customer12', '12 5th street 15215', 'home'),
(10013, 'customer13', '13 5th street 15215', 'home'),
(10014, 'customer14', '14 5th street 15215', 'home'),
(10015, 'customer15', '15 5th street 15215', 'home'),
(10016, 'customer16', '16 5th street 15215', 'home'),
(10017, 'customer17', '17 5th street 15215', 'home'),
(10018, 'customer18', '18 5th street 15215', 'home'),
(10019, 'customer19', '19 5th street 15215', 'home'),
(10020, 'customer20', '20 5th street 15215', 'home'),
(10021, 'customer21', '21 5th street 15215', 'home'),
(10022, 'customer22', '22 5th street 15215', 'home'),
(10023, 'customer23', '23 5th street 15215', 'home'),
(10024, 'customer24', '24 5th street 15215', 'home'),
(10025, 'customer25', '25 5th street 15215', 'home'),
(10026, 'customer26', '26 5th street 15215', 'home'),
(10027, 'customer27', '27 5th street 15215', 'home'),
(10028, 'customer28', '28 5th street 15215', 'home'),
(10029, 'customer29', '29 5th street 15215', 'home'),
(10030, 'customer30', '30 5th street 15215', 'home'),
(10031, 'customer31', '31 5th street 15215', 'home'),
(10032, 'customer32', '32 5th street 15215', 'home'),
(10033, 'customer33', '33 5th street 15215', 'home'),
(10034, 'customer34', '34 5th street 15215', 'home'),
(10035, 'customer35', '35 5th street 15215', 'home'),
(10036, 'customer36', '36 5th street 15215', 'home'),
(10037, 'customer37', '37 5th street 15215', 'home'),
(10038, 'customer38', '38 5th street 15215', 'home'),
(10039, 'customer39', '39 5th street 15215', 'home'),
(10040, 'customer40', '40 5th street 15215', 'home'),
(10041, 'customer41', '41 5th street 15215', 'home'),
(10042, 'customer42', '42 5th street 15215', 'home'),
(10043, 'customer43', '43 5th street 15215', 'home'),
(10044, 'customer44', '44 5th street 15215', 'home'),
(10045, 'customer45', '45 5th street 15215', 'home'),
(10046, 'customer46', '46 5th street 15215', 'home'),
(10047, 'customer47', '47 5th street 15215', 'home'),
(10048, 'customer48', '48 5th street 15215', 'home'),
(10049, 'customer49', '49 5th street 15215', 'home'),
(10050, 'customer50', '50 5th street 15215', 'home'),
(10051, 'customer51', '51 4th street 15215', 'home'),
(10052, 'customer52', '52 4th street 15215', 'home'),
(10053, 'customer53', '53 4th street 15215', 'home'),
(10054, 'customer54', '54 4th street 15215', 'home'),
(10055, 'customer55', '55 4th street 15215', 'home'),
(10056, 'customer56', '56 4th street 15215', 'home'),
(10057, 'customer57', '57 4th street 15215', 'home'),
(10058, 'customer58', '58 4th street 15215', 'home'),
(10059, 'customer59', '59 4th street 15215', 'home'),
(10060, 'customer60', '60 4th street 15215', 'home'),
(10061, 'customer61', '61 4th street 15215', 'home'),
(10062, 'customer62', '62 4th street 15215', 'home'),
(10063, 'customer63', '63 4th street 15215', 'home'),
(10064, 'customer64', '64 4th street 15215', 'home'),
(10065, 'customer65', '65 4th street 15215', 'home'),
(10066, 'customer66', '66 4th street 15215', 'home'),
(10067, 'customer67', '67 4th street 15215', 'home'),
(10068, 'customer68', '68 4th street 15215', 'home'),
(10069, 'customer69', '69 4th street 15215', 'home'),
(10070, 'customer70', '70 4th street 15215', 'home'),
(10071, 'customer71', '71 4th street 15215', 'home'),
(10072, 'customer71', '71 3th street 15215', 'home'),
(10073, 'customer72', '72 3th street 15215', 'home'),
(10074, 'customer73', '73 3th street 15215', 'home'),
(10075, 'customer74', '74 3th street 15215', 'home'),
(10076, 'customer75', '75 3th street 15215', 'home'),
(10077, 'customer76', '76 3th street 15215', 'home'),
(10078, 'customer77', '77 3th street 15215', 'home'),
(10079, 'customer78', '78 3th street 15215', 'home'),
(10080, 'customer79', '79 3th street 15215', 'home'),
(10081, 'customer80', '80 3th street 15215', 'home'),
(10082, 'customer81', '81 3th street 15215', 'home'),
(10083, 'customer82', '82 3th street 15215', 'home'),
(10084, 'customer83', '83 3th street 15215', 'home'),
(10085, 'customer84', '84 3th street 15215', 'home'),
(10086, 'customer85', '85 3th street 15215', 'home'),
(10087, 'customer86', '86 3th street 15215', 'home'),
(10088, 'customer87', '87 3th street 15215', 'home'),
(10089, 'customer88', '88 3th street 15215', 'home'),
(10090, 'customer89', '89 3th street 15215', 'home'),
(10091, 'customer90', '90 3th street 15215', 'home'),
(10092, 'customer91', '91 3th street 15215', 'home'),
(10093, 'customer91', '91 5th street 15215', 'home'),
(10094, 'customer92', '92 5th street 15215', 'home'),
(10095, 'customer93', '93 5th street 15215', 'home'),
(10096, 'customer94', '94 5th street 15215', 'home'),
(10097, 'customer95', '95 5th street 15215', 'home'),
(10098, 'customer96', '96 5th street 15215', 'home'),
(10099, 'customer97', '97 5th street 15215', 'home'),
(10100, 'customer98', '98 5th street 15215', 'home'),
(10101, 'customer99', '99 5th street 15215', 'home'),
(10102, 'customer100', '100 5th street 15215', 'home'),
(10103, 'customer101', '101 5th street 15215', 'home'),
(10104, 'customer102', '102 5th street 15215', 'home'),
(10105, 'customer103', '103 5th street 15215', 'home'),
(10106, 'customer104', '104 5th street 15215', 'home'),
(10107, 'customer105', '105 5th street 15215', 'home'),
(10108, 'customer106', '106 5th street 15215', 'home'),
(10109, 'customer107', '107 5th street 15215', 'home'),
(10110, 'customer108', '108 5th street 15215', 'home'),
(10111, 'customer109', '109 5th street 15215', 'home'),
(10112, 'customer110', '110 5th street 15215', 'home'),
(10113, 'customer111', '111 5th street 15215', 'home'),
(10114, 'customer101', '101 business street 15231', 'business'),
(10115, 'customer102', '102 business street 15231', 'business'),
(10116, 'customer103', '103 business street 15231', 'business'),
(10117, 'customer104', '104 business street 15231', 'business'),
(10118, 'customer105', '105 business street 15231', 'business'),
(10119, 'customer106', '106 business street 15231', 'business'),
(10120, 'customer107', '107 business street 15231', 'business'),
(10121, 'customer108', '108 business street 15231', 'business'),
(10122, 'customer109', '109 business street 15231', 'business'),
(10123, 'customer110', '110 business street 15231', 'business'),
(10124, 'customer111', '111 business street 15231', 'business'),
(10125, 'customer111', '111 business street 15231', 'business'),
(10126, 'customer112', '112 business street 15231', 'business'),
(10127, 'customer113', '113 business street 15231', 'business'),
(10128, 'customer114', '114 business street 15231', 'business'),
(10129, 'customer115', '115 business street 15231', 'business'),
(10130, 'customer116', '116 business street 15231', 'business'),
(10131, 'customer117', '117 business street 15231', 'business'),
(10132, 'customer118', '118 business street 15231', 'business'),
(10133, 'customer119', '119 business street 15231', 'business'),
(10134, 'customer120', '120 business street 15231', 'business'),
(10135, 'customer121', '121 business street 15231', 'business'),
(10136, 'customer121', '121 business street 15231', 'business'),
(10137, 'customer122', '122 business street 15231', 'business'),
(10138, 'customer123', '123 business street 15231', 'business'),
(10139, 'customer124', '124 business street 15231', 'business'),
(10140, 'customer125', '125 business street 15231', 'business'),
(10141, 'customer126', '126 business street 15231', 'business'),
(10142, 'customer127', '127 business street 15231', 'business'),
(10143, 'customer128', '128 business street 15231', 'business'),
(10144, 'customer129', '129 business street 15231', 'business'),
(10145, 'customer130', '130 business street 15231', 'business'),
(10146, 'customer131', '131 business street 15231', 'business'),
(10147, 'customer131', '131 business street 15231', 'business'),
(10148, 'customer132', '132 business street 15231', 'business'),
(10149, 'customer133', '133 business street 15231', 'business'),
(10150, 'customer134', '134 business street 15231', 'business'),
(10151, 'customer135', '135 business street 15231', 'business'),
(10152, 'customer136', '136 business street 15231', 'business'),
(10153, 'customer137', '137 business street 15231', 'business'),
(10154, 'customer138', '138 business street 15231', 'business'),
(10155, 'customer139', '139 business street 15231', 'business'),
(10156, 'customer140', '140 business street 15231', 'business'),
(10157, 'customer141', '141 business street 15231', 'business'),
(10158, 'customer141', '141 business street 15231', 'business'),
(10159, 'customer142', '142 business street 15231', 'business'),
(10160, 'customer143', '143 business street 15231', 'business'),
(10161, 'customer144', '144 business street 15231', 'business'),
(10162, 'customer145', '145 business street 15231', 'business'),
(10163, 'customer146', '146 business street 15231', 'business'),
(10164, 'customer147', '147 business street 15231', 'business'),
(10165, 'customer148', '148 business street 15231', 'business'),
(10166, 'customer149', '149 business street 15231', 'business'),
(10167, 'customer150', '150 business street 15231', 'business'),
(10168, 'customer151', '151 business street 15231', 'business');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

DROP TABLE IF EXISTS `home`;
CREATE TABLE IF NOT EXISTS `home` (
  `customer_id` int(10) NOT NULL,
  `marry_status` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `age` int(3) NOT NULL,
  `income` int(20) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`customer_id`, `marry_status`, `gender`, `age`, `income`) VALUES
(10001, 'married', 'male', 40, 50000),
(10002, 'married', 'male', 40, 50000),
(10003, 'married', 'male', 40, 50000),
(10004, 'married', 'male', 40, 50000),
(10005, 'married', 'male', 40, 50000),
(10006, 'married', 'male', 40, 50000),
(10007, 'married', 'male', 40, 50000),
(10008, 'married', 'male', 40, 50000),
(10009, 'married', 'male', 40, 50000),
(10010, 'married', 'male', 40, 50000),
(10011, 'married', 'male', 40, 50000),
(10012, 'married', 'male', 40, 50000),
(10013, 'married', 'male', 40, 50000),
(10014, 'married', 'male', 40, 50000),
(10015, 'married', 'male', 40, 50000),
(10016, 'married', 'male', 40, 50000),
(10017, 'married', 'male', 40, 50000),
(10018, 'married', 'male', 40, 50000),
(10019, 'married', 'male', 40, 50000),
(10020, 'married', 'male', 40, 50000),
(10021, 'married', 'male', 40, 50000),
(10022, 'married', 'male', 40, 50000),
(10023, 'married', 'male', 40, 50000),
(10024, 'married', 'male', 40, 50000),
(10025, 'married', 'male', 40, 50000),
(10026, 'married', 'male', 40, 50000),
(10027, 'married', 'male', 40, 50000),
(10028, 'married', 'male', 40, 50000),
(10029, 'married', 'male', 40, 50000),
(10030, 'married', 'male', 40, 50000),
(10031, 'married', 'male', 40, 50000),
(10032, 'married', 'male', 40, 50000),
(10033, 'married', 'male', 40, 50000),
(10034, 'married', 'male', 40, 50000),
(10035, 'married', 'male', 40, 50000),
(10036, 'married', 'male', 40, 50000),
(10037, 'married', 'male', 40, 50000),
(10038, 'married', 'male', 40, 50000),
(10039, 'married', 'male', 40, 50000),
(10040, 'married', 'male', 40, 50000),
(10041, 'married', 'male', 40, 50000),
(10042, 'married', 'male', 40, 50000),
(10043, 'married', 'male', 40, 50000),
(10044, 'married', 'male', 40, 50000),
(10045, 'married', 'male', 40, 50000),
(10046, 'married', 'male', 40, 50000),
(10047, 'married', 'male', 40, 50000),
(10048, 'married', 'male', 40, 50000),
(10049, 'married', 'male', 40, 50000),
(10050, 'married', 'male', 40, 50000),
(10051, 'single', 'male', 20, 10000),
(10052, 'single', 'male', 20, 10000),
(10053, 'single', 'male', 20, 10000),
(10054, 'single', 'male', 20, 10000),
(10055, 'single', 'male', 20, 10000),
(10056, 'single', 'male', 20, 10000),
(10057, 'single', 'male', 20, 10000),
(10058, 'single', 'male', 20, 10000),
(10059, 'single', 'male', 20, 10000),
(10060, 'single', 'male', 20, 10000),
(10061, 'single', 'male', 20, 10000),
(10062, 'single', 'male', 20, 10000),
(10063, 'single', 'male', 20, 10000),
(10064, 'single', 'male', 20, 10000),
(10065, 'single', 'male', 20, 10000),
(10066, 'single', 'male', 20, 10000),
(10067, 'single', 'male', 20, 10000),
(10068, 'single', 'male', 20, 10000),
(10069, 'single', 'male', 20, 10000),
(10070, 'single', 'male', 20, 10000),
(10071, 'single', 'male', 20, 10000),
(10072, 'single', 'female', 18, 7000),
(10073, 'single', 'female', 18, 7000),
(10074, 'single', 'female', 18, 7000),
(10075, 'single', 'female', 18, 7000),
(10076, 'single', 'female', 18, 7000),
(10077, 'single', 'female', 18, 7000),
(10078, 'single', 'female', 18, 7000),
(10079, 'single', 'female', 18, 7000),
(10080, 'single', 'female', 18, 7000),
(10081, 'single', 'female', 18, 7000),
(10082, 'single', 'female', 18, 7000),
(10083, 'single', 'female', 18, 7000),
(10084, 'single', 'female', 18, 7000),
(10085, 'single', 'female', 18, 7000),
(10086, 'single', 'female', 18, 7000),
(10087, 'single', 'female', 18, 7000),
(10088, 'single', 'female', 18, 7000),
(10089, 'single', 'female', 18, 7000),
(10090, 'single', 'female', 18, 7000),
(10091, 'single', 'female', 18, 7000),
(10092, 'single', 'female', 18, 7000),
(10093, 'married', 'female', 38, 60000),
(10094, 'married', 'female', 38, 60000),
(10095, 'married', 'female', 38, 60000),
(10096, 'married', 'female', 38, 60000),
(10097, 'married', 'female', 38, 60000),
(10098, 'married', 'female', 38, 60000),
(10099, 'married', 'female', 38, 60000),
(10100, 'married', 'female', 38, 60000),
(10101, 'married', 'female', 38, 60000),
(10102, 'married', 'female', 38, 60000),
(10103, 'married', 'female', 38, 60000),
(10104, 'married', 'female', 38, 60000),
(10105, 'married', 'female', 38, 60000),
(10106, 'married', 'female', 38, 60000),
(10107, 'married', 'female', 38, 60000),
(10108, 'married', 'female', 38, 60000),
(10109, 'married', 'female', 38, 60000),
(10110, 'married', 'female', 38, 60000),
(10111, 'married', 'female', 38, 60000),
(10112, 'married', 'female', 38, 60000),
(10113, 'married', 'female', 38, 60000);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_date` varchar(255) NOT NULL,
  `product_id` int(10) DEFAULT NULL,
  `quantity` int(20) NOT NULL,
  `region_id` int(10),
  PRIMARY KEY (`order_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(10) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `kind` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `cost` int(10) NOT NULL,
  `amount` int(20) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `kind_index` (`kind`(20))
) ENGINE=InnoDB AUTO_INCREMENT=10081 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `kind`, `price`, `cost`, `amount`) VALUES
(10001, 'laptop1', 'laptop', 530, 410, 1950),
(10002, 'laptop2', 'laptop', 560, 420, 2000),
(10003, 'laptop3', 'laptop', 590, 430, 2000),
(10004, 'laptop4', 'laptop', 620, 440, 2000),
(10005, 'laptop5', 'laptop', 650, 450, 2000),
(10006, 'laptop6', 'laptop', 680, 460, 2000),
(10007, 'laptop7', 'laptop', 710, 470, 2000),
(10008, 'laptop8', 'laptop', 740, 480, 2000),
(10009, 'laptop9', 'laptop', 770, 490, 2000),
(10010, 'laptop10', 'laptop', 800, 500, 2000),
(10011, 'laptop11', 'laptop', 830, 510, 1980),
(10012, 'laptop12', 'laptop', 860, 520, 2000),
(10013, 'laptop13', 'laptop', 890, 530, 2000),
(10014, 'laptop14', 'laptop', 920, 540, 2000),
(10015, 'laptop15', 'laptop', 950, 550, 2000),
(10016, 'laptop16', 'laptop', 980, 560, 2000),
(10017, 'laptop17', 'laptop', 1010, 570, 2000),
(10018, 'laptop18', 'laptop', 1040, 580, 2000),
(10019, 'laptop19', 'laptop', 1070, 590, 2000),
(10020, 'laptop20', 'laptop', 1100, 600, 2000),
(10021, 'pc1', 'pc', 490, 420, 2000),
(10022, 'pc2', 'pc', 530, 440, 2000),
(10023, 'pc3', 'pc', 570, 460, 1905),
(10024, 'pc4', 'pc', 610, 480, 2000),
(10025, 'pc5', 'pc', 650, 500, 2000),
(10026, 'pc6', 'pc', 690, 520, 2000),
(10027, 'pc7', 'pc', 730, 540, 2000),
(10028, 'pc8', 'pc', 770, 560, 2000),
(10029, 'pc9', 'pc', 810, 580, 2000),
(10030, 'pc10', 'pc', 850, 600, 2000),
(10031, 'pc11', 'pc', 890, 620, 2000),
(10032, 'pc12', 'pc', 930, 640, 2000),
(10033, 'pc13', 'pc', 970, 660, 2000),
(10034, 'pc14', 'pc', 1010, 680, 2000),
(10035, 'pc15', 'pc', 1050, 700, 2000),
(10036, 'pc16', 'pc', 1090, 720, 2000),
(10037, 'pc17', 'pc', 1130, 740, 2000),
(10038, 'pc18', 'pc', 1170, 760, 2000),
(10039, 'pc19', 'pc', 1210, 780, 2000),
(10040, 'pc20', 'pc', 1250, 800, 2000),
(10041, 'tablet1', 'tablet', 375, 305, 2000),
(10042, 'tablet2', 'tablet', 400, 310, 2000),
(10043, 'tablet3', 'tablet', 425, 315, 2000),
(10044, 'tablet4', 'tablet', 450, 320, 2000),
(10045, 'tablet5', 'tablet', 475, 325, 2000),
(10046, 'tablet6', 'tablet', 500, 330, 2000),
(10047, 'tablet7', 'tablet', 525, 335, 2000),
(10048, 'tablet8', 'tablet', 550, 340, 2000),
(10049, 'tablet9', 'tablet', 575, 345, 2000),
(10050, 'tablet10', 'tablet', 600, 350, 2000),
(10051, 'tablet11', 'tablet', 625, 355, 2000),
(10052, 'tablet12', 'tablet', 650, 360, 2000),
(10053, 'tablet13', 'tablet', 675, 365, 2000),
(10054, 'tablet14', 'tablet', 700, 370, 2000),
(10055, 'tablet15', 'tablet', 725, 375, 2000),
(10056, 'tablet16', 'tablet', 750, 380, 2000),
(10057, 'tablet17', 'tablet', 775, 385, 2000),
(10058, 'tablet18', 'tablet', 800, 390, 2000),
(10059, 'tablet19', 'tablet', 825, 395, 2000),
(10060, 'tablet20', 'tablet', 850, 400, 2000),
(10061, '2-in-1 1', '2-in-1', 555, 455, 2000),
(10062, '2-in-1 2', '2-in-1', 580, 460, 2000),
(10063, '2-in-1 3', '2-in-1', 605, 465, 2000),
(10064, '2-in-1 4', '2-in-1', 630, 470, 2000),
(10065, '2-in-1 5', '2-in-1', 655, 475, 2000),
(10066, '2-in-1 6', '2-in-1', 680, 480, 2000),
(10067, '2-in-1 7', '2-in-1', 705, 485, 2000),
(10068, '2-in-1 8', '2-in-1', 730, 490, 2000),
(10069, '2-in-1 9', '2-in-1', 755, 495, 2000),
(10070, '2-in-1 10', '2-in-1', 780, 500, 2000),
(10071, '2-in-1 11', '2-in-1', 805, 505, 2000),
(10072, '2-in-1 12', '2-in-1', 830, 510, 2000),
(10073, '2-in-1 13', '2-in-1', 855, 515, 2000),
(10074, '2-in-1 14', '2-in-1', 880, 520, 2000),
(10075, '2-in-1 15', '2-in-1', 905, 525, 2000),
(10076, '2-in-1 16', '2-in-1', 930, 530, 2000),
(10077, '2-in-1 17', '2-in-1', 955, 535, 2000),
(10078, '2-in-1 18', '2-in-1', 980, 540, 2000),
(10079, '2-in-1 19', '2-in-1', 1005, 545, 2000),
(10080, '2-in-1 20', '2-in-1', 1030, 550, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
CREATE TABLE IF NOT EXISTS `region` (
  `region_id` int(10) NOT NULL AUTO_INCREMENT,
  `region_name` varchar(255) NOT NULL,
  `region_manager` int(10) DEFAULT NULL,
  PRIMARY KEY (`region_id`),
  KEY `region_manager` (`region_manager`)
) ENGINE=InnoDB AUTO_INCREMENT=10006 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`region_id`, `region_name`, `region_manager`) VALUES
(10001, 'region1', 10001),
(10002, 'region2', 10002),
(10003, 'region3', 10003),
(10004, 'region4', 10004),
(10005, 'region5', 10005);

-- --------------------------------------------------------

--
-- Table structure for table `salespersons`
--

DROP TABLE IF EXISTS `salespersons`;
CREATE TABLE IF NOT EXISTS `salespersons` (
  `salesperson_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `store_id` int(10) DEFAULT NULL,
  `salary` int(20) NOT NULL,
  PRIMARY KEY (`salesperson_id`),
  KEY `store_index` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10080 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salespersons`
--

INSERT INTO `salespersons` (`salesperson_id`, `name`, `address`, `email`, `job_title`, `store_id`, `salary`) VALUES
(10001, 'sales1', '1 sales street 15221', 'sales1@project.com', 'region_manager', 10001, 50000),
(10002, 'sales2', '2 sales street 15221', 'sales2@project.com', 'region_manager', 10001, 50000),
(10003, 'sales3', '3 sales street 15221', 'sales3@project.com', 'region_manager', 10001, 50000),
(10004, 'sales4', '4 sales street 15221', 'sales4@project.com', 'region_manager', 10001, 50000),
(10005, 'sales5', '5 sales street 15221', 'sales5@project.com', 'region_manager', 10001, 50000),
(10009, 'sales9', '9 sales street 15221', 'sales9@project.com', 'store_manager', 10001, 20000),
(10013, 'sales13', '13 sales street 15221', 'sales13@project.com', 'store_manager', 10002, 20000),
(10017, 'sales17', '17 sales street 15221', 'sales17@project.com', 'store_manager', 10003, 20000),
(10021, 'sales21', '21 sales street 15221', 'sales21@project.com', 'store_manager', 10004, 20000),
(10025, 'sales25', '25 sales street 15221', 'sales25@project.com', 'store_manager', 10005, 20000),
(10026, 'sales26', '26 sales street 15221', 'sales26@project.com', 'salesperson', 10001, 3000),
(10027, 'sales27', '27 sales street 15221', 'sales27@project.com', 'salesperson', 10001, 3000),
(10028, 'sales28', '28 sales street 15221', 'sales28@project.com', 'salesperson', 10001, 3000),
(10029, 'sales29', '29 sales street 15221', 'sales29@project.com', 'salesperson', 10002, 3000),
(10030, 'sales30', '30 sales street 15221', 'sales30@project.com', 'salesperson', 10002, 3000),
(10031, 'sales31', '31 sales street 15221', 'sales31@project.com', 'salesperson', 10002, 3000),
(10032, 'sales32', '32 sales street 15221', 'sales32@project.com', 'salesperson', 10003, 3000),
(10033, 'sales33', '33 sales street 15221', 'sales33@project.com', 'salesperson', 10003, 3000),
(10034, 'sales34', '34 sales street 15221', 'sales34@project.com', 'salesperson', 10003, 3000),
(10035, 'sales35', '35 sales street 15221', 'sales35@project.com', 'salesperson', 10004, 3000),
(10036, 'sales36', '36 sales street 15221', 'sales36@project.com', 'salesperson', 10004, 3000),
(10037, 'sales37', '37 sales street 15221', 'sales37@project.com', 'salesperson', 10004, 3000),
(10038, 'sales38', '38 sales street 15221', 'sales38@project.com', 'salesperson', 10005, 3000),
(10039, 'sales39', '39 sales street 15221', 'sales39@project.com', 'salesperson', 10005, 3000),
(10040, 'sales40', '40 sales street 15221', 'sales40@project.com', 'salesperson', 10005, 3000),
(10041, 'sales41', '41 sales street 15221', 'sales41@project.com', 'salesperson', 10006, 3000),
(10042, 'sales42', '42 sales street 15221', 'sales42@project.com', 'salesperson', 10006, 3000),
(10043, 'sales43', '43 sales street 15221', 'sales43@project.com', 'salesperson', 10006, 3000),
(10044, 'sales44', '44 sales street 15221', 'sales44@project.com', 'salesperson', 10007, 3000),
(10045, 'sales45', '45 sales street 15221', 'sales45@project.com', 'salesperson', 10007, 3000),
(10046, 'sales46', '46 sales street 15221', 'sales46@project.com', 'salesperson', 10007, 3000),
(10053, 'sales47', '47 sales street 15221', 'sales47@project.com', 'salesperson', 10009, 3000),
(10054, 'sales48', '48 sales street 15221', 'sales48@project.com', 'salesperson', 10009, 3000),
(10055, 'sales49', '49 sales street 15221', 'sales49@project.com', 'salesperson', 10009, 3000),
(10056, 'sales50', '50 sales street 15221', 'sales50@project.com', 'salesperson', 10010, 3000),
(10057, 'sales51', '51 sales street 15221', 'sales51@project.com', 'salesperson', 10010, 3000),
(10058, 'sales52', '52 sales street 15221', 'sales52@project.com', 'salesperson', 10010, 3000),
(10059, 'sales53', '53 sales street 15221', 'sales53@project.com', 'salesperson', 10011, 3000),
(10060, 'sales54', '54 sales street 15221', 'sales54@project.com', 'salesperson', 10011, 3000),
(10061, 'sales55', '55 sales street 15221', 'sales55@project.com', 'salesperson', 10011, 3000),
(10062, 'sales56', '56 sales street 15221', 'sales56@project.com', 'salesperson', 10012, 3000),
(10063, 'sales57', '57 sales street 15221', 'sales57@project.com', 'salesperson', 10012, 3000),
(10064, 'sales58', '58 sales street 15221', 'sales58@project.com', 'salesperson', 10012, 3000),
(10065, 'sales59', '59 sales street 15221', 'sales59@project.com', 'salesperson', 10014, 3000),
(10066, 'sales60', '60 sales street 15221', 'sales60@project.com', 'salesperson', 10014, 3000),
(10067, 'sales61', '61 sales street 15221', 'sales61@project.com', 'salesperson', 10014, 3000),
(10068, 'sales62', '62 sales street 15221', 'sales62@project.com', 'salesperson', 10015, 3000),
(10069, 'sales63', '63 sales street 15221', 'sales63@project.com', 'salesperson', 10015, 3000),
(10070, 'sales64', '64 sales street 15221', 'sales64@project.com', 'salesperson', 10015, 3000),
(10071, 'sales65', '65 sales street 15221', 'sales65@project.com', 'salesperson', 10016, 3000),
(10072, 'sales66', '66 sales street 15221', 'sales66@project.com', 'salesperson', 10016, 3000),
(10073, 'sales67', '67 sales street 15221', 'sales67@project.com', 'salesperson', 10016, 3000),
(10074, 'sales68', '68 sales street 15221', 'sales68@project.com', 'salesperson', 10017, 3000),
(10075, 'sales69', '69 sales street 15221', 'sales69@project.com', 'salesperson', 10017, 3000),
(10076, 'sales70', '70 sales street 15221', 'sales70@project.com', 'salesperson', 10017, 3000),
(10077, 'sales71', '71 sales street 15221', 'sales71@project.com', 'salesperson', 10018, 3000),
(10078, 'sales72', '72 sales street 15221', 'sales72@project.com', 'salesperson', 10018, 3000),
(10079, 'sales73', '73 sales street 15221', 'sales73@project.com', 'salesperson', 10018, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `salespersons_account`
--

DROP TABLE IF EXISTS `salespersons_account`;
CREATE TABLE IF NOT EXISTS `salespersons_account` (
  `salesperson_id` int(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`salesperson_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salespersons_account`
--

INSERT INTO `salespersons_account` (`salesperson_id`, `password`) VALUES
(10001, 'sales100'),
(10002, 'sales200'),
(10003, 'sales300'),
(10004, 'sales400'),
(10005, 'sales500'),
(10009, 'sales900'),
(10013, 'sales1300'),
(10017, 'sales1700'),
(10021, 'sales2100'),
(10025, 'sales2500'),
(10026, 'sales2600'),
(10027, 'sales2700'),
(10028, 'sales2800'),
(10029, 'sales2900'),
(10030, 'sales3000'),
(10031, 'sales3100'),
(10032, 'sales3200'),
(10033, 'sales3300'),
(10034, 'sales3400'),
(10035, 'sales3500'),
(10036, 'sales3600'),
(10037, 'sales3700'),
(10038, 'sales3800'),
(10039, 'sales3900'),
(10040, 'sales4000'),
(10041, 'sales4100'),
(10042, 'sales4200'),
(10043, 'sales4300'),
(10044, 'sales4400'),
(10045, 'sales4500'),
(10046, 'sales4600'),
(10053, 'sales5300'),
(10054, 'sales5400'),
(10055, 'sales5500'),
(10056, 'sales5600'),
(10057, 'sales5700'),
(10058, 'sales5800'),
(10059, 'sales5900'),
(10060, 'sales6000'),
(10061, 'sales6100'),
(10062, 'sales6200'),
(10063, 'sales6300'),
(10064, 'sales6400'),
(10065, 'sales6500'),
(10066, 'sales6600'),
(10067, 'sales6700'),
(10068, 'sales6800'),
(10069, 'sales6900'),
(10070, 'sales7000'),
(10071, 'sales7100'),
(10072, 'sales7200'),
(10073, 'sales7300'),
(10074, 'sales7400'),
(10075, 'sales7500'),
(10076, 'sales7600'),
(10077, 'sales7700'),
(10078, 'sales7800'),
(10079, 'sales7900');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
CREATE TABLE IF NOT EXISTS `store` (
  `store_id` int(10) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `manager` int(10) DEFAULT NULL,
  `salespersons_num` int(10) NOT NULL,
  `region_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`store_id`),
  KEY `region_index` (`region_id`),
  KEY `manager` (`manager`)
) ENGINE=InnoDB AUTO_INCREMENT=10022 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `address`, `manager`, `salespersons_num`, `region_id`) VALUES
(10001, '51 store street', 10009, 4, 10001),
(10002, '52 store street', 10013, 4, 10001),
(10003, '53 store street', 10017, 4, 10001),
(10004, '54 store street', 10021, 4, 10002),
(10005, '55 store street', 10025, 4, 10002),
(10006, '56 store street', NULL, 3, 10002),
(10007, '57 store street', NULL, 3, 10002),
(10009, '50 store1 street', NULL, 3, 10003),
(10010, '51 store1 street', NULL, 3, 10003),
(10011, '52 store1 street', NULL, 3, 10003),
(10012, '53 store1 street', NULL, 3, 10003),
(10014, '50 store2 street', NULL, 3, 10004),
(10015, '51 store2 street', NULL, 3, 10004),
(10016, '52 store2 street', NULL, 3, 10004),
(10017, '53 store2 street', NULL, 3, 10004),
(10018, '50 store3 street', NULL, 3, 10005),
(10019, '51 store3 street', NULL, 0, 10005),
(10020, '52 store3 street', NULL, 0, 10005),
(10021, '53 store3 street', NULL, 0, 10005);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_date` varchar(255) DEFAULT NULL,
  `product_id` int(10) DEFAULT NULL,
  `salesperson_id` int(10) DEFAULT NULL,
  `customer_id` int(10) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `store_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `product_index` (`product_id`),
  KEY `salesperson_index` (`salesperson_id`),
  KEY `customer_index` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10010 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`order_id`, `order_date`, `product_id`, `salesperson_id`, `customer_id`, `quantity`, `store_id`) VALUES
(10001, '2018-11-25 20:56:04', 10001, 10030, 10001, 2, 10001),
(10002, '2018-11-25 20:56:04', 10001, 10030, 10002, 2, 10001),
(10003, '2018-11-25 20:56:04', 10002, 10031, 10002, 5, 10001),
(10004, '2018-11-25 20:56:04', 10003, 10031, 10002, 1, 10001),
(10005, '2018-11-25 20:56:04', 10001, 10030, 10114, 50, 10001),
(10007, '2018-11-25 20:56:04', 10023, 10032, 10136, 25, 10007),
(10008, '2018-11-25 20:56:04', 10023, 10028, 10153, 70, 10014),
(10009, '2018-11-25 20:56:04', 10011, 10030, 10158, 20, 10006);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `business`
--
ALTER TABLE `business`
  ADD CONSTRAINT `business_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE;

--
-- Constraints for table `home`
--
ALTER TABLE `home`
  ADD CONSTRAINT `home_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE;

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`) ON DELETE SET NULL;
--
-- Constraints for table `region`
--
ALTER TABLE `region`
  ADD CONSTRAINT `region_ibfk_1` FOREIGN KEY (`region_manager`) REFERENCES `salespersons` (`salesperson_id`) ON DELETE SET NULL;

--
-- Constraints for table `salespersons`
--
ALTER TABLE `salespersons`
  ADD CONSTRAINT `salespersons_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `salespersons_account`
--
ALTER TABLE `salespersons_account`
  ADD CONSTRAINT `salespersons_account_ibfk_1` FOREIGN KEY (`salesperson_id`) REFERENCES `salespersons` (`salesperson_id`) ON DELETE CASCADE;

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `store_ibfk_1` FOREIGN KEY (`manager`) REFERENCES `salespersons` (`salesperson_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `store_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`) ON DELETE SET NULL;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`salesperson_id`) REFERENCES `salespersons` (`salesperson_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `transactions_ibfk_3` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
