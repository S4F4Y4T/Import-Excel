-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 14, 2021 at 02:19 PM
-- Server version: 8.0.20
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `excel`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int NOT NULL,
  `banner_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `banner_link`) VALUES
(1, 'https://www.gettruck.ca/request-a-quote/');

-- --------------------------------------------------------

--
-- Table structure for table `gtc_body`
--

CREATE TABLE `gtc_body` (
  `s_no` bigint NOT NULL,
  `body_name` varchar(255) NOT NULL,
  `body_status` int NOT NULL DEFAULT '1',
  `body_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `body_modify` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gtc_brand`
--

CREATE TABLE `gtc_brand` (
  `s_no` bigint NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_type` int NOT NULL DEFAULT '0',
  `brand_status` int NOT NULL DEFAULT '1',
  `brand_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `brand_modify` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gtc_brand_body_model`
--

CREATE TABLE `gtc_brand_body_model` (
  `s_no` bigint NOT NULL,
  `brand_sno` bigint NOT NULL,
  `body_sno` bigint NOT NULL,
  `model_sno` bigint NOT NULL,
  `body_brand_model_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `body_brand_model_modify` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gtc_model`
--

CREATE TABLE `gtc_model` (
  `s_no` bigint NOT NULL,
  `model_name` varchar(255) NOT NULL,
  `model_status` int NOT NULL DEFAULT '1',
  `model_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `model_modify` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `myadmin`
--

CREATE TABLE `myadmin` (
  `PersonID` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `myadmin`
--

INSERT INTO `myadmin` (`PersonID`, `name`, `email`, `password`, `token`) VALUES
(3, '', 'tech.cental17@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', ''),
(5, '', 'info@gettruck.ca', 'fcea920f7412b5da7be0cf42b8c93759', '');

-- --------------------------------------------------------

--
-- Table structure for table `myads`
--

CREATE TABLE `myads` (
  `AdsID` int NOT NULL,
  `sellerId` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `brand_body_model_sno` bigint NOT NULL,
  `image` mediumtext NOT NULL,
  `message` varchar(1500) NOT NULL,
  `price` varchar(255) NOT NULL,
  `kilometers` varchar(255) NOT NULL,
  `engine` varchar(255) NOT NULL,
  `car_type` varchar(255) NOT NULL,
  `model_year` varchar(255) NOT NULL,
  `transmission_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `myseller`
--

CREATE TABLE `myseller` (
  `PersonID` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT '0',
  `address` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `type` int NOT NULL DEFAULT '0',
  `membershipTime` varchar(255) DEFAULT NULL,
  `trans_id` varchar(255) DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `myseller`
--

INSERT INTO `myseller` (`PersonID`, `name`, `phone`, `email`, `password`, `token`, `address`, `website`, `image`, `type`, `membershipTime`, `trans_id`, `cost`) VALUES
(17, 'Get Truck', '1 888-894-5678', 'info@gettruck.ca', 'fcea920f7412b5da7be0cf42b8c93759', '0', '180 Wilkinson Rd #32 Brampton, ON', 'gettruck.ca', 'e6c146ba55.jpg', 0, NULL, '', ''),
(19, 'Tech', '6477049264', 'tech.cental17@gmail.com', '3e0c9e73aed9e0e879c7a8b2f3c9a642', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(22, 'David', '4165152342', 'directequipments@gmail.com', '20b8e637a7b231c9b82d343675d09a7c', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `type` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_category`
--

CREATE TABLE `tbl_sub_category` (
  `sub_cat_id` int NOT NULL,
  `sub_category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `gtc_body`
--
ALTER TABLE `gtc_body`
  ADD PRIMARY KEY (`s_no`),
  ADD UNIQUE KEY `body_name` (`body_name`);

--
-- Indexes for table `gtc_brand`
--
ALTER TABLE `gtc_brand`
  ADD PRIMARY KEY (`s_no`),
  ADD UNIQUE KEY `brand_name` (`brand_name`);

--
-- Indexes for table `gtc_brand_body_model`
--
ALTER TABLE `gtc_brand_body_model`
  ADD PRIMARY KEY (`s_no`),
  ADD UNIQUE KEY `brand_sno` (`brand_sno`,`body_sno`,`model_sno`),
  ADD KEY `body_sno` (`body_sno`),
  ADD KEY `model_sno` (`model_sno`);

--
-- Indexes for table `gtc_model`
--
ALTER TABLE `gtc_model`
  ADD PRIMARY KEY (`s_no`),
  ADD UNIQUE KEY `model_name` (`model_name`);

--
-- Indexes for table `myadmin`
--
ALTER TABLE `myadmin`
  ADD PRIMARY KEY (`PersonID`);

--
-- Indexes for table `myads`
--
ALTER TABLE `myads`
  ADD PRIMARY KEY (`AdsID`),
  ADD KEY `brand_body_model_sno` (`brand_body_model_sno`);

--
-- Indexes for table `myseller`
--
ALTER TABLE `myseller`
  ADD PRIMARY KEY (`PersonID`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  ADD PRIMARY KEY (`sub_cat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gtc_body`
--
ALTER TABLE `gtc_body`
  MODIFY `s_no` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gtc_brand`
--
ALTER TABLE `gtc_brand`
  MODIFY `s_no` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gtc_brand_body_model`
--
ALTER TABLE `gtc_brand_body_model`
  MODIFY `s_no` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gtc_model`
--
ALTER TABLE `gtc_model`
  MODIFY `s_no` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myadmin`
--
ALTER TABLE `myadmin`
  MODIFY `PersonID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `myads`
--
ALTER TABLE `myads`
  MODIFY `AdsID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `myseller`
--
ALTER TABLE `myseller`
  MODIFY `PersonID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  MODIFY `sub_cat_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gtc_brand_body_model`
--
ALTER TABLE `gtc_brand_body_model`
  ADD CONSTRAINT `gtc_brand_body_model_ibfk_1` FOREIGN KEY (`body_sno`) REFERENCES `gtc_body` (`s_no`),
  ADD CONSTRAINT `gtc_brand_body_model_ibfk_2` FOREIGN KEY (`brand_sno`) REFERENCES `gtc_brand` (`s_no`),
  ADD CONSTRAINT `gtc_brand_body_model_ibfk_3` FOREIGN KEY (`model_sno`) REFERENCES `gtc_model` (`s_no`);

--
-- Constraints for table `myads`
--
ALTER TABLE `myads`
  ADD CONSTRAINT `myads_ibfk_1` FOREIGN KEY (`brand_body_model_sno`) REFERENCES `gtc_brand_body_model` (`s_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
