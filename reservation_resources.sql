-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2018 at 12:15 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookedscheduler`
--

-- --------------------------------------------------------

--
-- Table structure for table `reservation_resources`
--

CREATE TABLE `reservation_resources` (
  `series_id` int(10) UNSIGNED NOT NULL,
  `resource_id` smallint(5) UNSIGNED NOT NULL,
  `resource_level_id` tinyint(2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservation_resources`
--

INSERT INTO `reservation_resources` (`series_id`, `resource_id`, `resource_level_id`) VALUES
(1, 1, 1),
(2, 1, 1),
(2, 2, 2),
(3, 2, 1),
(4, 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reservation_resources`
--
ALTER TABLE `reservation_resources`
  ADD PRIMARY KEY (`series_id`,`resource_id`),
  ADD KEY `resource_id` (`resource_id`),
  ADD KEY `series_id` (`series_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservation_resources`
--
ALTER TABLE `reservation_resources`
  ADD CONSTRAINT `reservation_resources_ibfk_1` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`resource_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservation_resources_ibfk_2` FOREIGN KEY (`series_id`) REFERENCES `reservation_series` (`series_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
