-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 31, 2017 at 12:04 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DevicesManagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `Account`
--

CREATE TABLE `Account` (
  `id` int(255) NOT NULL,
  `username` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `role` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `id_Employee` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `enabled` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `Account`
--

INSERT INTO `Account` (`id`, `username`, `password`, `role`, `id_Employee`, `enabled`) VALUES
(0, 'ADMINISTRATOR', 'e10adc3949ba59abbe56e057f20f883e', 'ADMIN', '', 1),
(1, 'a', 'e10adc3949ba59abbe56e057f20f883e', 'ADMIN', 'E01', 1),
(2, 'b', 'e10adc3949ba59abbe56e057f20f883e', 'USER', 'E02', 1),
(4, 'Tinh', 'e10adc3949ba59abbe56e057f20f883e', 'USER', 'E04', 1),
(5, 'c', 'd41d8cd98f00b204e9800998ecf8427e', 'Admin', 'E30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `id` int(255) NOT NULL,
  `name` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`id`, `name`) VALUES
(1, 'Ram'),
(3, 'Keyboard'),
(4, 'Mouse'),
(5, 'Monitor'),
(6, 'PC'),
(7, 'HDD');

-- --------------------------------------------------------

--
-- Table structure for table `Contact`
--

CREATE TABLE `Contact` (
  `id` int(255) NOT NULL,
  `id_Account` int(255) NOT NULL,
  `description` varchar(2000) COLLATE utf8_vietnamese_ci NOT NULL,
  `status` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `Contact`
--

INSERT INTO `Contact` (`id`, `id_Account`, `description`, `status`) VALUES
(1, 1, 'My PC is slow. Can I change it?', 'resolved'),
(2, 2, 'My PC is slow. Can I change it?', 'in progress'),
(3, 1, 'abcdef', 'in progress'),
(4, 1, 'Monitor doesn\'t work ', 'new'),
(5, 1, 'Hardware', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `Devices`
--

CREATE TABLE `Devices` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `seri_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idAccount` int(255) NOT NULL,
  `idCat` int(255) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `made_in` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `warranty` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `isnew` int(1) NOT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Devices`
--

INSERT INTO `Devices` (`id`, `seri_number`, `idAccount`, `idCat`, `name`, `made_in`, `price`, `warranty`, `isnew`, `status`, `picture`, `date_start`) VALUES
('a', 'a', 1, 3, 'a', 'a', '2', '6', 0, 'No use', '', '2017-07-31 03:49:54'),
('DV01', '1', -1, 1, 'RamKingston', 'Italy', '30', '3 years', 0, '-1', 'download (1).jpg', '2017-07-31 02:21:44'),
('DV01', '123', 2, 1, 'RamKingston', 'Italy', '30', '3 years', 1, 'In use ', 'download (1).jpg', '2017-07-17 03:53:55'),
('DV01', '1234', 5, 1, 'RamKingston', 'Italy', '30', '3 years', 1, 'No use', 'download (1).jpg', '2017-07-31 02:11:34'),
('DV01', '12345', 1, 1, 'RamKingston', 'Italy', '30', '3 years', 0, 'In use', 'download (1).jpg', '2017-07-17 03:53:55'),
('HDD1', '#1524', 1, 1, 'HDD', 'Italy', '34', '3 years', 0, 'No use', 'hdd.jpg', '2017-07-31 03:36:37'),
('HDD1', 'd', 2, 1, 'HDD', 'Italy', '333', '3 months', 0, 'No use', 'hdd.jpg', '2017-07-31 04:05:39'),
('HDD1', 'RR02', 0, 1, 'HDD', 'Italy', '333', '3 years', 1, 'In use', 'hdd.jpg', '2017-07-31 04:04:06'),
('HDD1', 'RR0I', 2, 1, 'HDD', 'Italy', '333', '3 years', 1, 'No use', 'hdd.jpg', '2017-07-31 04:04:20'),
('M01', '12', 1, 5, 'Monitor', 'VietNam', '30', '3 years', 1, 'No use', 'download.jpg', '2017-07-17 03:54:12'),
('Mouse01', 'M011', 2, 4, 'Logitech MX Master Wireless Mouse', 'US', '10', '3 months', 1, 'In use', '26-608-016-01.jpg', '2017-07-26 06:04:32'),
('R01', 'R1_Kingston', 1, 1, 'Ram DDR3 4Gb', 'Hong Kong', '30', '3 years', 0, 'No use ', 'download (2).jpg', '2017-07-17 03:54:41'),
('R01', 'R2_Kingston', 2, 1, 'Ram DDR3 4Gb', 'Hong Kong', '30', '3 years', 1, 'In use ', 'download (2).jpg', '2017-07-17 03:55:03'),
('SSD1', 'S1', 1, 7, 'SSD', 'Hong Kong', '333', '3 years', 1, 'In use', 'ssd.jpg', '2017-07-31 03:25:19');

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

CREATE TABLE `Employee` (
  `id` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `birthday` date NOT NULL,
  `address` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `picture` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `id_Position` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `id_Team` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`id`, `name`, `birthday`, `address`, `phone`, `picture`, `id_Position`, `id_Team`, `email`) VALUES
('E01', 'Quinto', '2017-06-27', 'DN', '01635266058', 'm3-3633413432259.png', '1', 'J01', 'tinhchocopie087@gmail.com'),
('E02', 'Kevin', '2017-06-27', 'DN', '01635266058', 'm2-9949237658505.jpeg', '1', 'J01', 'kimnahee43@yahoo.com'),
('E11', 'Riot', '2017-06-26', 'Hòa Khánh', '0123455689', 'preview-medium-17950975243593.png', '1', 'J01', 'nttinh995@gmail.com'),
('E30', 'Thor', '2017-06-12', 'DN', '01635266058', '', '3', 'P01', ''),
('E33', 'Tom', '2017-07-20', 'Ha Tinh', '01635266058', '18557049_1970800019822850_2976533477387153543_n-20338465264710.jpg', '2', 'P01', '');

-- --------------------------------------------------------

--
-- Table structure for table `History`
--

CREATE TABLE `History` (
  `id` int(255) NOT NULL,
  `id_Account` int(255) NOT NULL,
  `timestart` date NOT NULL,
  `action` int(255) NOT NULL,
  `idEquipment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `seri_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `History`
--

INSERT INTO `History` (`id`, `id_Account`, `timestart`, `action`, `idEquipment`, `seri_number`) VALUES
(8, 1, '2017-07-05', 1, 'DV01', '123'),
(17, 0, '2017-07-12', 1, 'DV01', '1234'),
(18, 2, '2017-07-20', 0, 'DV01', '12345'),
(19, 4, '2017-07-04', 2, 'R01', 'R1_Kingston');

-- --------------------------------------------------------

--
-- Table structure for table `Role`
--

CREATE TABLE `Role` (
  `id` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `namePos` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `Role`
--

INSERT INTO `Role` (`id`, `namePos`) VALUES
('1', 'Dev'),
('2', 'HR'),
('3', 'Manager'),
('4', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `Team`
--

CREATE TABLE `Team` (
  `id` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `Team`
--

INSERT INTO `Team` (`id`, `name`) VALUES
('J01', 'Java_Vic'),
('J02', 'Java_Tina'),
('J03', 'Java_Martin'),
('N01', '.Net_Torres'),
('N02', '.Net_Quinto'),
('P01', 'PHP_Jin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Account`
--
ALTER TABLE `Account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Contact`
--
ALTER TABLE `Contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Devices`
--
ALTER TABLE `Devices`
  ADD PRIMARY KEY (`id`,`seri_number`);

--
-- Indexes for table `Employee`
--
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `History`
--
ALTER TABLE `History`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Team`
--
ALTER TABLE `Team`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Account`
--
ALTER TABLE `Account`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Contact`
--
ALTER TABLE `Contact`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `History`
--
ALTER TABLE `History`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
