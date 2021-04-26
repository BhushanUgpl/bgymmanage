-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Apr 26, 2021 at 02:17 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evolutionfitnesspower`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

DROP TABLE IF EXISTS `admin_tbl`;
CREATE TABLE IF NOT EXISTS `admin_tbl` (
  `ad_id` int(50) NOT NULL AUTO_INCREMENT,
  `admin_user` varchar(50) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`ad_id`, `admin_user`, `email_id`, `password`, `role`, `status`, `created_date`) VALUES
(1, 'Ritika', 'ritirkate@gmail.com', '123456', 'main', 1, '2021-04-15 15:59:54'),
(2, 'linechart', 'linechartsolutions@gmail.com', '123456', 'sub', 1, '2021-04-21 17:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_tbl`
--

DROP TABLE IF EXISTS `enquiry_tbl`;
CREATE TABLE IF NOT EXISTS `enquiry_tbl` (
  `u_id` int(50) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mobile_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DOB` varchar(50) DEFAULT NULL,
  `current_Address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `age` int(5) DEFAULT NULL,
  `height` int(50) DEFAULT NULL,
  `weight` decimal(3,2) DEFAULT NULL,
  `bloodGroup` varchar(5) DEFAULT NULL,
  `gender` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `customerType_Id` int(50) DEFAULT NULL,
  `gympurposeType_Id` int(50) DEFAULT NULL,
  `enquiry_date` varchar(50) DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enquiry_tbl`
--

INSERT INTO `enquiry_tbl` (`u_id`, `full_name`, `mobile_no`, `email_id`, `DOB`, `current_Address`, `age`, `height`, `weight`, `bloodGroup`, `gender`, `customerType_Id`, `gympurposeType_Id`, `enquiry_date`, `status`, `created_date`) VALUES
(1, 'Ritika Kate', '8796873044', 'ritikakate22@gmail.com', '0000-00-00', 'Pimpri', 27, 5, '9.99', '4', '2', 1, 2, '19/04/2021', 0, '2021-04-16 19:02:38'),
(2, 'undefined', 'undefined', 'undefined', '0000-00-00', 'undefined', 0, 0, '0.00', 'undef', 'undef', 0, 0, '19/04/2021', 0, '2021-04-17 17:30:57'),
(3, 'Ritika Kate', '8796873044', 'ritikakate22@gmail.com', '0000-00-00', 'Pimpri', 27, 5, '9.99', '4', '2', 1, 2, '19/04/2021', 0, '2021-04-19 14:04:53');

-- --------------------------------------------------------

--
-- Table structure for table `gympurposetype_tbl`
--

DROP TABLE IF EXISTS `gympurposetype_tbl`;
CREATE TABLE IF NOT EXISTS `gympurposetype_tbl` (
  `purpose_id` int(50) NOT NULL AUTO_INCREMENT,
  `purposeType_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`purpose_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gympurposetype_tbl`
--

INSERT INTO `gympurposetype_tbl` (`purpose_id`, `purposeType_name`, `status`, `created_date`, `updated_date`) VALUES
(1, 'Weight Gain', 1, '2021-04-16 15:56:07', '2021-04-16 15:56:07'),
(2, 'Weight Loss', 1, '2021-04-16 15:56:07', '2021-04-16 15:56:07');

-- --------------------------------------------------------

--
-- Table structure for table `membershipform_tbl`
--

DROP TABLE IF EXISTS `membershipform_tbl`;
CREATE TABLE IF NOT EXISTS `membershipform_tbl` (
  `m_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `mem_id` varchar(50) DEFAULT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `member_photo` varchar(50) DEFAULT NULL,
  `photo_path` varchar(50) DEFAULT NULL,
  `mobile_no` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `current_Address` varchar(50) DEFAULT NULL,
  `age` int(50) DEFAULT NULL,
  `height` int(50) DEFAULT NULL,
  `weight` int(50) DEFAULT NULL,
  `bloodGroup` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `customerType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gympurposeType_Id` int(50) DEFAULT NULL,
  `personalTrainer_Id` int(50) DEFAULT NULL,
  `packageType_Id` int(50) DEFAULT NULL,
  `total_amount` int(50) DEFAULT NULL,
  `durationInMonth` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `durationInDays` int(50) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `discountAmount` int(50) DEFAULT NULL,
  `finalAmount` int(50) DEFAULT NULL,
  `advanceAmount` int(50) DEFAULT NULL,
  `remainingAmount` int(50) DEFAULT NULL,
  `paymentStatus` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `paymentMode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `member_status` varchar(50) DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`m_id`),
  UNIQUE KEY `mem_id` (`mem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membershipform_tbl`
--

INSERT INTO `membershipform_tbl` (`m_id`, `mem_id`, `full_name`, `member_photo`, `photo_path`, `mobile_no`, `DOB`, `current_Address`, `age`, `height`, `weight`, `bloodGroup`, `gender`, `customerType`, `gympurposeType_Id`, `personalTrainer_Id`, `packageType_Id`, `total_amount`, `durationInMonth`, `durationInDays`, `start_date`, `end_date`, `discountAmount`, `finalAmount`, `advanceAmount`, `remainingAmount`, `paymentStatus`, `paymentMode`, `member_status`, `status`, `created_date`, `updated_date`) VALUES
(1, 'EF_409', 'kate ritika', 'images.jpg', './public/upload', '7972493792', '1993-12-22', 'pimpri', 27, 5, 56, 'O+ve', 'Female', '1', 2, 0, 2, 2000, '4 Month', 120, '2021-04-26', '2021-08-22', 500, 1500, 500, 1000, 'full Paid', '1', NULL, 1, '2021-04-16 16:36:33', '2021-04-16 16:36:33'),
(2, 'EF_535', 'Ritika Kate', NULL, NULL, '8796873044', '0000-00-00', 'Pimpri', 27, 5, 56, '4', '2', '1', 2, 1, 1, 5000, '6 Month', 180, '2021-02-01', '2021-04-15', 500, 1500, 500, 4000, 'Full Paid', '1', 'New Member', 1, '2021-04-16 18:30:03', '2021-04-16 18:30:03'),
(3, 'EF_342', 'KRitika Kate', NULL, NULL, '8796873044', '1993-12-22', 'Pimpri', 28, 5, 56, '4', '2', '1', 2, 1, 1, 2000, '3 Month', 90, '2021-03-10', '2021-04-12', 500, 1500, 500, 1000, 'Unpaid', '1', NULL, 1, '2021-04-19 17:30:10', '2021-04-19 17:30:10'),
(6, 'EF_070', 'kate ritika', 'eco case.jpeg', './public/upload', '7972493792', '1993-12-22', 'pimpri', 27, 5, 56, 'O+ve', 'Female', '1', 0, 0, 2, 2000, 'undefined', 120, '2021-04-26', '2021-08-22', 500, 1500, 500, 1000, 'Partial Paid', '1', 'New Member', 1, '2021-04-26 13:50:40', '2021-04-26 13:50:40'),
(7, 'EF_649', 'kate ritika', 'eco case.jpeg', './public/upload', '7972493792', '1993-12-22', 'pimpri', 27, 5, 56, 'O+ve', 'Female', '1', 0, 0, 2, 2000, '4 Month', 120, '2021-04-26', '2021-08-22', 500, 1500, 500, 1000, 'Partial Paid', '1', 'New Member', 1, '2021-04-26 13:52:34', '2021-04-26 13:52:34'),
(8, 'EF_665', 'kate ritika', 'images.jpg', './public/upload', '7972493792', '1993-12-22', 'pimpri', 27, 5, 56, 'O+ve', 'Female', '1', 2, 0, 2, 2000, '4 Month', 120, '2021-04-26', '2021-08-22', 200, 1800, 0, 1800, 'Un Paid', '1', 'New Member', 1, '2021-04-26 13:58:59', '2021-04-26 13:58:59'),
(9, 'EF_230', 'kate Ankita', 'image.jpeg', './public/upload', '7972493792', '0000-00-00', 'pimpri', 27, 5, 56, 'O+ve', 'Female', '1', 2, 0, 2, 2000, '4 Month', 120, '2021-04-26', '2021-08-22', 200, 1800, 0, 1800, 'Full Paid', '1', 'New Member', 1, '2021-04-26 19:07:10', '2021-04-26 19:07:10');

-- --------------------------------------------------------

--
-- Table structure for table `member_history_tbl`
--

DROP TABLE IF EXISTS `member_history_tbl`;
CREATE TABLE IF NOT EXISTS `member_history_tbl` (
  `h_id` int(50) NOT NULL AUTO_INCREMENT,
  `mem_id` varchar(50) DEFAULT NULL,
  `customerType` varchar(50) DEFAULT NULL,
  `gympurposeType_Id` int(50) DEFAULT NULL,
  `personalTrainer_Id` int(50) DEFAULT NULL,
  `packageType_Id` int(50) DEFAULT NULL,
  `durationInMonth` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `durationInDays` int(50) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_amount` int(50) DEFAULT NULL,
  `discountAmount` int(50) DEFAULT NULL,
  `finalAmount` int(50) DEFAULT NULL,
  `advanceAmount` int(50) DEFAULT NULL,
  `remainingAmount` int(50) DEFAULT NULL,
  `paymentStatus` varchar(50) DEFAULT NULL,
  `paymentMode` varchar(50) DEFAULT NULL,
  `member_Status` varchar(50) DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`h_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member_history_tbl`
--

INSERT INTO `member_history_tbl` (`h_id`, `mem_id`, `customerType`, `gympurposeType_Id`, `personalTrainer_Id`, `packageType_Id`, `durationInMonth`, `durationInDays`, `start_date`, `end_date`, `total_amount`, `discountAmount`, `finalAmount`, `advanceAmount`, `remainingAmount`, `paymentStatus`, `paymentMode`, `member_Status`, `status`, `created_date`) VALUES
(1, 'EF_649', '1', 0, 0, 2, 'undefined', 120, '2021-04-26', '2021-08-22', 2000, 500, 1500, 500, 1000, 'Partial Paid', '1', 'New Member', 1, '2021-04-26 13:52:35'),
(2, 'EF_665', '1', 2, 0, 2, '4 Month', 120, '2021-04-26', '2021-08-22', 2000, 500, 1500, 500, 1000, 'Partial Paid', '1', 'New Member', 1, '2021-04-26 13:58:59'),
(3, 'EF_230', '1', 2, 0, 2, '4 Month', 120, '2021-04-26', '2021-08-22', 2000, 200, 1800, 0, 1800, 'Full Paid', '1', 'New Member', 1, '2021-04-26 19:07:10'),
(4, 'EF_244', '1', 2, 0, 2, '4 Month', 120, '2021-04-26', '2021-08-22', 2000, 200, 1800, 0, 1800, 'Full Paid', '1', 'New Member', 1, '2021-04-26 19:08:17'),
(5, 'EF_115', '1', 2, 0, 2, '4 Month', 120, '2021-04-26', '2021-08-22', 2000, 200, 1800, 0, 1800, 'Full Paid', '1', 'New Member', 1, '2021-04-26 19:09:14'),
(6, 'EF_356', '1', 2, 0, 2, '4 Month', 120, '2021-04-26', '2021-08-22', 2000, 200, 1800, 0, 1800, 'Full Paid', '1', 'New Member', 1, '2021-04-26 19:09:42'),
(7, 'EF_962', '1', 2, 0, 2, '4 Month', 120, '2021-04-26', '2021-08-22', 2000, 200, 1800, 0, 1800, 'Full Paid', '1', 'New Member', 1, '2021-04-26 19:11:09'),
(8, 'EF_091', '1', 2, 0, 2, '4 Month', 120, '2021-04-26', '2021-08-22', 2000, 200, 1800, 0, 1800, 'Full Paid', '1', 'New Member', 1, '2021-04-26 19:11:35'),
(9, 'EF_782', '1', 2, 0, 2, '4 Month', 120, '2021-04-26', '2021-08-22', 2000, 200, 1800, 0, 1800, 'Full Paid', '1', 'New Member', 1, '2021-04-26 19:11:46'),
(10, 'EF_522', '1', 2, 0, 2, '4 Month', 120, '2021-04-26', '2021-08-22', 2000, 200, 1800, 0, 1800, 'Full Paid', '1', 'New Member', 1, '2021-04-26 19:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `packagetype_tbl`
--

DROP TABLE IF EXISTS `packagetype_tbl`;
CREATE TABLE IF NOT EXISTS `packagetype_tbl` (
  `package_Id` int(20) NOT NULL AUTO_INCREMENT,
  `packageName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `durationInMonth` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `durationInDays` int(50) DEFAULT NULL,
  `totalAmount` int(5) DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `status` smallint(1) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`package_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `packagetype_tbl`
--

INSERT INTO `packagetype_tbl` (`package_Id`, `packageName`, `durationInMonth`, `durationInDays`, `totalAmount`, `description`, `status`, `created_date`, `updated_date`) VALUES
(1, 'Silver', '2 Month', 60, 1000, 'avds', 0, '2021-04-17 18:42:14', '2021-04-17 18:42:14'),
(2, 'Gold', '4 Month', 120, 2000, 'avds', 0, '2021-04-17 18:42:28', '2021-04-17 18:42:28'),
(3, 'Platenium', '6 Month', 180, 4000, 'avds', 0, '2021-04-17 18:42:41', '2021-04-17 18:42:41');

-- --------------------------------------------------------

--
-- Table structure for table `personaltrainer_tbl`
--

DROP TABLE IF EXISTS `personaltrainer_tbl`;
CREATE TABLE IF NOT EXISTS `personaltrainer_tbl` (
  `pt_id` bigint(50) NOT NULL AUTO_INCREMENT,
  `pt_Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pt_Duration` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pt_Amount` int(5) DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `renewmembership_tbl`
--

DROP TABLE IF EXISTS `renewmembership_tbl`;
CREATE TABLE IF NOT EXISTS `renewmembership_tbl` (
  `renew_id` int(50) NOT NULL AUTO_INCREMENT,
  `mem_id` varchar(50) DEFAULT NULL,
  `full_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mobile_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `gympurposeType_Id` int(5) DEFAULT NULL,
  `customerType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `packageType_Id` int(5) DEFAULT NULL,
  `renew_status` varchar(50) DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`renew_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `renewmembership_tbl`
--

INSERT INTO `renewmembership_tbl` (`renew_id`, `mem_id`, `full_name`, `mobile_no`, `start_date`, `end_date`, `gympurposeType_Id`, `customerType`, `packageType_Id`, `renew_status`, `status`, `created_date`, `updated_date`) VALUES
(1, 'EF_119', 'Ritika Kate P', '8796873044', '2021-03-01', '2021-06-16', 2, 'Adult', 1, NULL, 1, '2021-04-19 20:41:59', '2021-04-19 20:41:59');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
