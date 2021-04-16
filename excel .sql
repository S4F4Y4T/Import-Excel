-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 16, 2021 at 01:54 PM
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

--
-- Dumping data for table `gtc_body`
--

INSERT INTO `gtc_body` (`s_no`, `body_name`, `body_status`) VALUES
(1, 'Highway Tractor', 1),
(2, 'Daycab Tractor', 1),
(3, 'Cabover Tractor', 1),
(4, 'Car Carrier', 1),
(5, 'Construction Equipment', 1),
(6, 'Tow Truck', 1),
(7, 'Crane Truck', 1),
(8, 'Cube Van', 1),
(9, 'Dump Truck', 1),
(10, 'Fuel Truck', 1),
(11, 'Garbage Truck', 1),
(12, 'Hook-Lift Truck', 1),
(13, 'Mining Equipment', 1),
(14, 'Mixer Truck', 1),
(15, 'Pickup Truck', 1),
(16, 'Reefer Truck', 1),
(17, 'Roll-off Truck', 1),
(18, 'Shunt Truck', 1),
(19, 'Snow Plow Truck', 1),
(20, 'Straight Truck Box', 1),
(21, 'Straight Truck Flatbed', 1),
(22, 'Tank Truck', 1),
(23, 'Hydro Vac Truck', 1),
(24, 'Cab & Chassis', 1);

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

--
-- Dumping data for table `gtc_brand`
--

INSERT INTO `gtc_brand` (`s_no`, `brand_name`, `brand_type`, `brand_status`) VALUES
(1, 'CHEVROLET', 0, 1),
(2, 'DODGE', 0, 1),
(3, 'FORD', 0, 1),
(4, 'FREIGHTLINER', 0, 1),
(5, 'GMC', 0, 1),
(6, 'HINO', 0, 1),
(7, 'INTERNATIONAL', 0, 1),
(8, 'ISUZU', 0, 1),
(9, 'KENWORTH', 0, 1),
(10, 'MACK', 0, 1),
(11, 'MERCEDES-BENZ', 0, 1),
(12, 'NISSAN', 0, 1),
(13, 'PETERBILT', 0, 1),
(14, 'STERLING', 0, 1),
(15, 'VOLVO', 0, 1),
(16, 'WESTERN STAR', 0, 1);

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

--
-- Dumping data for table `gtc_brand_body_model`
--

INSERT INTO `gtc_brand_body_model` (`s_no`, `brand_sno`, `body_sno`, `model_sno`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 2),
(3, 1, 1, 3),
(4, 1, 1, 4),
(5, 1, 1, 5),
(6, 1, 1, 6),
(7, 1, 1, 7),
(8, 1, 1, 8),
(9, 1, 1, 9),
(10, 1, 1, 10),
(11, 1, 1, 11),
(12, 1, 1, 12),
(13, 1, 1, 13),
(14, 1, 1, 14),
(15, 1, 1, 15),
(16, 1, 1, 16),
(17, 2, 2, 17),
(18, 2, 2, 18),
(19, 2, 2, 19),
(20, 2, 2, 20),
(21, 2, 2, 21),
(22, 2, 2, 22),
(23, 2, 2, 23),
(24, 2, 2, 24),
(25, 2, 2, 25),
(26, 2, 2, 26),
(27, 3, 3, 17),
(41, 3, 3, 26),
(28, 3, 3, 27),
(29, 3, 3, 28),
(30, 3, 3, 29),
(31, 3, 3, 30),
(32, 3, 3, 31),
(33, 3, 3, 32),
(34, 3, 3, 33),
(35, 3, 3, 34),
(36, 3, 3, 35),
(37, 3, 3, 36),
(38, 3, 3, 37),
(39, 3, 3, 38),
(40, 3, 3, 39),
(57, 4, 4, 26),
(42, 4, 4, 40),
(43, 4, 4, 41),
(44, 4, 4, 42),
(45, 4, 4, 43),
(46, 4, 4, 44),
(47, 4, 4, 45),
(48, 4, 4, 46),
(49, 4, 4, 47),
(50, 4, 4, 48),
(51, 4, 4, 49),
(52, 4, 4, 50),
(53, 4, 4, 51),
(54, 4, 4, 52),
(55, 4, 4, 53),
(56, 4, 4, 54),
(59, 5, 5, 2),
(60, 5, 5, 3),
(86, 5, 5, 16),
(58, 5, 5, 55),
(61, 5, 5, 56),
(62, 5, 5, 57),
(63, 5, 5, 58),
(64, 5, 5, 59),
(65, 5, 5, 60),
(66, 5, 5, 61),
(67, 5, 5, 62),
(68, 5, 5, 63),
(69, 5, 5, 64),
(70, 5, 5, 65),
(71, 5, 5, 66),
(72, 5, 5, 67),
(73, 5, 5, 68),
(74, 5, 5, 69),
(75, 5, 5, 70),
(76, 5, 5, 71),
(77, 5, 5, 72),
(78, 5, 5, 73),
(79, 5, 5, 74),
(80, 5, 5, 75),
(81, 5, 5, 76),
(82, 5, 5, 77),
(83, 5, 5, 78),
(84, 5, 5, 79),
(85, 5, 5, 80),
(94, 6, 7, 26),
(87, 6, 7, 81),
(88, 6, 7, 82),
(89, 6, 7, 83),
(90, 6, 7, 84),
(91, 6, 7, 85),
(92, 6, 7, 86),
(93, 6, 7, 87),
(128, 7, 8, 16),
(95, 7, 8, 88),
(96, 7, 8, 89),
(97, 7, 8, 90),
(98, 7, 8, 91),
(99, 7, 8, 92),
(100, 7, 8, 93),
(101, 7, 8, 94),
(102, 7, 8, 95),
(103, 7, 8, 96),
(104, 7, 8, 97),
(105, 7, 8, 98),
(106, 7, 8, 99),
(107, 7, 8, 100),
(108, 7, 8, 101),
(109, 7, 8, 102),
(110, 7, 8, 103),
(111, 7, 8, 104),
(112, 7, 8, 105),
(113, 7, 8, 106),
(114, 7, 8, 107),
(115, 7, 8, 108),
(116, 7, 8, 109),
(117, 7, 8, 110),
(118, 7, 8, 111),
(119, 7, 8, 112),
(120, 7, 8, 113),
(121, 7, 8, 114),
(122, 7, 8, 115),
(123, 7, 8, 116),
(124, 7, 8, 117),
(125, 7, 8, 118),
(126, 7, 8, 119),
(127, 7, 8, 120),
(129, 8, 9, 121),
(130, 8, 9, 122),
(131, 8, 9, 123),
(132, 8, 9, 124),
(133, 8, 9, 125),
(134, 8, 9, 126),
(135, 9, 10, 127),
(136, 9, 10, 128),
(137, 9, 10, 129),
(138, 9, 10, 130),
(139, 9, 10, 131),
(140, 9, 10, 132),
(141, 9, 10, 133),
(142, 9, 10, 134),
(143, 9, 10, 135),
(144, 9, 10, 136),
(168, 10, 11, 16),
(145, 10, 11, 137),
(146, 10, 11, 138),
(147, 10, 11, 139),
(148, 10, 11, 140),
(149, 10, 11, 141),
(150, 10, 11, 142),
(151, 10, 11, 143),
(152, 10, 11, 144),
(153, 10, 11, 145),
(154, 10, 11, 146),
(155, 10, 11, 147),
(156, 10, 11, 148),
(157, 10, 11, 149),
(158, 10, 11, 150),
(159, 10, 11, 151),
(160, 10, 11, 152),
(161, 10, 11, 153),
(162, 10, 11, 154),
(163, 10, 11, 155),
(164, 10, 11, 156),
(165, 10, 11, 157),
(166, 10, 11, 158),
(167, 10, 11, 159),
(170, 11, 12, 23),
(169, 11, 12, 160),
(171, 12, 13, 161),
(172, 12, 13, 162),
(173, 12, 13, 163),
(174, 12, 13, 164),
(175, 13, 14, 165),
(176, 13, 14, 166),
(177, 13, 14, 167),
(178, 13, 14, 168),
(179, 13, 14, 169),
(180, 13, 14, 170),
(181, 13, 14, 171),
(182, 13, 14, 172),
(183, 13, 14, 173),
(184, 13, 14, 174),
(185, 13, 14, 175),
(186, 13, 14, 176),
(187, 13, 14, 177),
(188, 13, 14, 178),
(189, 13, 14, 179),
(190, 13, 14, 180),
(191, 13, 14, 181),
(192, 13, 14, 182),
(193, 13, 14, 183),
(194, 13, 14, 184),
(195, 13, 14, 185),
(196, 13, 14, 186),
(197, 13, 14, 187),
(210, 14, 15, 16),
(199, 14, 15, 103),
(198, 14, 15, 188),
(200, 14, 15, 189),
(201, 14, 15, 190),
(202, 14, 15, 191),
(203, 14, 15, 192),
(204, 14, 15, 193),
(205, 14, 15, 194),
(206, 14, 15, 195),
(207, 14, 15, 196),
(208, 14, 15, 197),
(209, 14, 15, 198),
(211, 15, 16, 199),
(212, 15, 16, 200),
(213, 15, 16, 201),
(214, 15, 16, 202),
(215, 15, 16, 203),
(216, 15, 16, 204),
(217, 15, 16, 205),
(218, 15, 16, 206),
(219, 15, 16, 207),
(220, 15, 16, 208),
(221, 15, 16, 209),
(222, 15, 16, 210),
(223, 15, 16, 211),
(224, 15, 16, 212),
(225, 15, 16, 213),
(226, 15, 16, 214),
(237, 16, 17, 16),
(229, 16, 17, 94),
(230, 16, 17, 95),
(231, 16, 17, 96),
(227, 16, 17, 215),
(228, 16, 17, 216),
(232, 16, 17, 217),
(233, 16, 17, 218),
(234, 16, 17, 219),
(235, 16, 17, 220),
(236, 16, 17, 221);

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
-- Dumping data for table `gtc_model`
--

INSERT INTO `gtc_model` (`s_no`, `model_name`, `model_status`) VALUES
(1, '2500', 1),
(2, '3500', 1),
(3, '4500', 1),
(4, 'C5500', 1),
(5, 'C7500', 1),
(6, 'C8500', 1),
(7, 'City Express', 1),
(8, 'Express', 1),
(9, 'Express 1500', 1),
(10, 'Express 2500', 1),
(11, 'Express 3500', 1),
(12, 'Express 4500', 1),
(13, 'Silverado 1500', 1),
(14, 'Silverado 3500 / HD', 1),
(15, 'Workhorse', 1),
(16, 'Others', 1),
(17, '550', 1),
(18, 'Caravan', 1),
(19, 'Ram 2500', 1),
(20, 'Ram 3500', 1),
(21, 'Ram 4500', 1),
(22, 'Ram 550', 1),
(23, 'Sprinter', 1),
(24, 'Sprinter 2500', 1),
(25, 'Sprinter 3500', 1),
(26, 'OTHER', 1),
(27, 'E-150', 1),
(28, 'E-250', 1),
(29, 'E-350', 1),
(30, 'E-450', 1),
(31, 'Ecoline', 1),
(32, 'F-150', 1),
(33, 'F-250', 1),
(34, 'F-350', 1),
(35, 'F-450', 1),
(36, 'F-550', 1),
(37, 'F-650', 1),
(38, 'F-750', 1),
(39, 'F-Super Duty', 1),
(40, '114', 1),
(41, '122', 1),
(42, '125', 1),
(43, 'Argosy', 1),
(44, 'Cascadia', 1),
(45, 'Cascadia Evolution', 1),
(46, 'Centruy', 1),
(47, 'Classic', 1),
(48, 'Classic FLD 120', 1),
(49, 'Classic XL', 1),
(50, 'Columbia', 1),
(51, 'Conorado', 1),
(52, 'FLD 112', 1),
(53, 'FLD 120', 1),
(54, 'M2', 1),
(55, '255', 1),
(56, 'C-5500', 1),
(57, 'C-6500', 1),
(58, 'C-7000', 1),
(59, 'C-7500', 1),
(60, 'C-8500', 1),
(61, 'G-Series', 1),
(62, 'G-3500', 1),
(63, 'G-4500', 1),
(64, 'Savana 1500', 1),
(65, 'Savana 2500', 1),
(66, 'Savana 3500', 1),
(67, 'Savana 4500', 1),
(68, 'Sierra 1500', 1),
(69, 'Sierra 2500', 1),
(70, 'Sierra 3500', 1),
(71, 'Sierra', 1),
(72, 'T-6500', 1),
(73, 'T-7500', 1),
(74, 'TC-8500', 1),
(75, 'Terrain', 1),
(76, 'Topkick', 1),
(77, 'Vendura', 1),
(78, 'W3500', 1),
(79, 'W4500', 1),
(80, 'W5500', 1),
(81, '155', 1),
(82, '165', 1),
(83, '185', 1),
(84, '195', 1),
(85, '258', 1),
(86, '268', 1),
(87, '338', 1),
(88, '40s', 1),
(89, '4100', 1),
(90, '4200', 1),
(91, '4300', 1),
(92, '4400', 1),
(93, '4600', 1),
(94, '4700', 1),
(95, '4800', 1),
(96, '4900', 1),
(97, '5500', 1),
(98, '5600', 1),
(99, '5900', 1),
(100, '70S', 1),
(101, '7300', 1),
(102, '7400', 1),
(103, '7500', 1),
(104, '7600', 1),
(105, '80S', 1),
(106, '8100', 1),
(107, '8300', 1),
(108, '8600', 1),
(109, '9200', 1),
(110, 'Eagle', 1),
(111, '9370', 1),
(112, '9400', 1),
(113, '9600', 1),
(114, '9900i', 1),
(115, 'HK', 1),
(116, 'HX', 1),
(117, 'Lone Star', 1),
(118, 'LT', 1),
(119, 'LT625', 1),
(120, 'Pro Star', 1),
(121, 'NRR', 1),
(122, 'FTR', 1),
(123, 'HTR', 1),
(124, 'NPR', 1),
(125, 'NQR', 1),
(126, 'W4500T', 1),
(127, 'C-500', 1),
(128, 'T-270', 1),
(129, 'T-300', 1),
(130, 'T-370', 1),
(131, 'T-660', 1),
(132, 'T-700', 1),
(133, 'T-800', 1),
(134, 'W900', 1),
(135, 'W900b', 1),
(136, 'W990', 1),
(137, 'Anthem', 1),
(138, 'CF-800', 1),
(139, 'CHU-613', 1),
(140, 'CL-700', 1),
(141, 'CL-713', 1),
(142, 'CT-713', 1),
(143, 'CX-613', 1),
(144, 'CXU-613', 1),
(145, 'GR64B', 1),
(146, 'Granite', 1),
(147, 'GU-713', 1),
(148, 'GU-813', 1),
(149, 'LEU-613', 1),
(150, 'Mack-MP8', 1),
(151, 'MD6', 1),
(152, 'MD7', 1),
(153, 'MS300', 1),
(154, 'Pl64T', 1),
(155, 'Pinnacle', 1),
(156, 'RB688', 1),
(157, 'RB690', 1),
(158, 'Titan', 1),
(159, 'Vision', 1),
(160, 'Metris', 1),
(161, 'NV', 1),
(162, 'NV-200', 1),
(163, 'NV-250', 1),
(164, 'NV-3500', 1),
(165, '220', 1),
(166, '320', 1),
(167, '330', 1),
(168, '335', 1),
(169, '337', 1),
(170, '340', 1),
(171, '348', 1),
(172, '357', 1),
(173, '359', 1),
(174, '365', 1),
(175, '367', 1),
(176, '378', 1),
(177, '379', 1),
(178, '384', 1),
(179, '386', 1),
(180, '387', 1),
(181, '388', 1),
(182, '389', 1),
(183, '520', 1),
(184, '567', 1),
(185, '579', 1),
(186, '587', 1),
(187, '7509', 1),
(188, '360', 1),
(189, '825', 1),
(190, '8500', 1),
(191, '9500', 1),
(192, '9511', 1),
(193, 'A9500', 1),
(194, 'Acterra', 1),
(195, 'Arcadia', 1),
(196, 'L7500', 1),
(197, 'L800', 1),
(198, 'L9500', 1),
(199, '630', 1),
(200, '670', 1),
(201, '760', 1),
(202, '860', 1),
(203, 'VHD-200', 1),
(204, 'VN', 1),
(205, 'VN-300', 1),
(206, 'VN-630', 1),
(207, 'VN-640', 1),
(208, 'VN-730', 1),
(209, 'VN-780', 1),
(210, 'VNR', 1),
(211, 'VNL', 1),
(212, 'VNX', 1),
(213, 'VHD', 1),
(214, 'VAH', 1),
(215, '3064S', 1),
(216, '3086S', 1),
(217, '4934', 1),
(218, '4964', 1),
(219, '5700', 1),
(220, '5800', 1),
(221, '6900', 1);

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
  MODIFY `s_no` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `gtc_brand`
--
ALTER TABLE `gtc_brand`
  MODIFY `s_no` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `gtc_brand_body_model`
--
ALTER TABLE `gtc_brand_body_model`
  MODIFY `s_no` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT for table `gtc_model`
--
ALTER TABLE `gtc_model`
  MODIFY `s_no` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

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
