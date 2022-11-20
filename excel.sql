-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 20, 2022 at 03:05 PM
-- Server version: 8.0.31-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gtc_body`
--
ALTER TABLE `gtc_body`
  MODIFY `s_no` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `gtc_brand`
--
ALTER TABLE `gtc_brand`
  MODIFY `s_no` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `gtc_brand_body_model`
--
ALTER TABLE `gtc_brand_body_model`
  MODIFY `s_no` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1660;

--
-- AUTO_INCREMENT for table `gtc_model`
--
ALTER TABLE `gtc_model`
  MODIFY `s_no` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1548;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
