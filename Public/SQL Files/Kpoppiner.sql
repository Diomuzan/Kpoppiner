-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2022 at 03:30 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kpop`
--
CREATE DATABASE IF NOT EXISTS `kpop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kpop`;

-- --------------------------------------------------------

--
-- Table structure for table `agency`
--

DROP TABLE IF EXISTS `agency`;
CREATE TABLE IF NOT EXISTS `agency` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `founded` decimal(65,0) DEFAULT NULL,
  `artist_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `agency__idx` (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agency`
--

INSERT DELAYED IGNORE INTO `agency` (`id`, `name`, `founded`, `artist_id`) VALUES
(1, 'YG Entertainment', '1996', 1),
(2, 'JYP Entertainment', '1997', 2),
(3, 'Hybe Corporation', '2005', 3),
(4, 'MHN Entertainment', '2014', 4),
(5, 'The Black Label', '2015', 5),
(6, 'Starship Entertainment', '2008', 6);

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
CREATE TABLE IF NOT EXISTS `artist` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type_artist` varchar(255) DEFAULT NULL,
  `years_active` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artist`
--

INSERT DELAYED IGNORE INTO `artist` (`id`, `name`, `type_artist`, `years_active`) VALUES
(1, 'Blackpink', 'Group', '2016-present'),
(2, 'Twice', 'Group', '2015-present'),
(3, 'BTS', 'Group', '2013-present'),
(4, 'Chungha', 'Solo', '2016-present'),
(5, 'Somi', 'Solo', '2015-present'),
(6, 'Sewoon Jeong', 'Solo', '2013-present');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agency`
--
ALTER TABLE `agency`
  ADD CONSTRAINT `agency_artist_fk` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
