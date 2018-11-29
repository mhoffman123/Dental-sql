-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2018 at 11:13 PM
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
-- Table structure for table `reservation_series`
--

CREATE TABLE `reservation_series` (
  `series_id` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `description` text,
  `allow_participation` tinyint(1) UNSIGNED NOT NULL,
  `allow_anon_participation` tinyint(1) UNSIGNED NOT NULL,
  `type_id` tinyint(2) UNSIGNED NOT NULL,
  `status_id` tinyint(2) UNSIGNED NOT NULL,
  `repeat_type` varchar(10) DEFAULT NULL,
  `repeat_options` varchar(255) DEFAULT NULL,
  `owner_id` mediumint(8) UNSIGNED NOT NULL,
  `legacyid` char(16) DEFAULT NULL,
  `last_action_by` mediumint(8) UNSIGNED DEFAULT NULL,
  `terms_date_accepted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservation_series`
--

INSERT INTO `reservation_series` (`series_id`, `date_created`, `last_modified`, `title`, `description`, `allow_participation`, `allow_anon_participation`, `type_id`, `status_id`, `repeat_type`, `repeat_options`, `owner_id`, `legacyid`, `last_action_by`, `terms_date_accepted`) VALUES
(1, '2018-11-25 21:23:43', NULL, 'Meeting', 'Project discussion', 0, 0, 1, 1, 'daily', 'interval=1|termination=2018-12-24 06:00:00', 1, NULL, 1, NULL),
(2, '2018-11-25 21:25:24', '2018-11-25 21:26:07', 'Lunch', 'Eat some food', 1, 0, 1, 1, 'daily', 'interval=1|termination=2018-12-24 06:00:00', 1, NULL, 1, NULL),
(3, '2018-11-25 21:34:24', NULL, 'dental exam', '', 0, 0, 1, 1, 'none', '', 1, NULL, 1, NULL),
(4, '2018-11-25 22:56:22', NULL, 'dental cleaning', '', 0, 0, 1, 1, 'none', '', 2, NULL, 2, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reservation_series`
--
ALTER TABLE `reservation_series`
  ADD PRIMARY KEY (`series_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `reservations_owner` (`owner_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reservation_series`
--
ALTER TABLE `reservation_series`
  MODIFY `series_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservation_series`
--
ALTER TABLE `reservation_series`
  ADD CONSTRAINT `reservations_owner` FOREIGN KEY (`owner_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservations_status` FOREIGN KEY (`status_id`) REFERENCES `reservation_statuses` (`status_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `reservations_type` FOREIGN KEY (`type_id`) REFERENCES `reservation_types` (`type_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
