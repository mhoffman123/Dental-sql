-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2018 at 12:16 AM
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
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `resource_id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(85) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `contact_info` varchar(255) DEFAULT NULL,
  `description` text,
  `notes` text,
  `min_duration` int(11) DEFAULT NULL,
  `min_increment` int(11) DEFAULT NULL,
  `max_duration` int(11) DEFAULT NULL,
  `unit_cost` decimal(7,2) DEFAULT NULL,
  `autoassign` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `requires_approval` tinyint(1) UNSIGNED NOT NULL,
  `allow_multiday_reservations` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `max_participants` mediumint(8) UNSIGNED DEFAULT NULL,
  `min_notice_time_add` int(11) DEFAULT NULL,
  `max_notice_time` int(11) DEFAULT NULL,
  `image_name` varchar(50) DEFAULT NULL,
  `schedule_id` smallint(5) UNSIGNED NOT NULL,
  `legacyid` char(16) DEFAULT NULL,
  `admin_group_id` smallint(5) UNSIGNED DEFAULT NULL,
  `public_id` varchar(20) DEFAULT NULL,
  `allow_calendar_subscription` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` smallint(5) UNSIGNED DEFAULT NULL,
  `resource_type_id` mediumint(8) UNSIGNED DEFAULT NULL,
  `status_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `resource_status_reason_id` smallint(5) UNSIGNED DEFAULT NULL,
  `buffer_time` int(10) UNSIGNED DEFAULT NULL,
  `enable_check_in` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `auto_release_minutes` smallint(5) UNSIGNED DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `allow_display` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `credit_count` decimal(7,2) UNSIGNED DEFAULT NULL,
  `peak_credit_count` decimal(7,2) UNSIGNED DEFAULT NULL,
  `min_notice_time_update` int(11) DEFAULT NULL,
  `min_notice_time_delete` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`resource_id`, `name`, `location`, `contact_info`, `description`, `notes`, `min_duration`, `min_increment`, `max_duration`, `unit_cost`, `autoassign`, `requires_approval`, `allow_multiday_reservations`, `max_participants`, `min_notice_time_add`, `max_notice_time`, `image_name`, `schedule_id`, `legacyid`, `admin_group_id`, `public_id`, `allow_calendar_subscription`, `sort_order`, `resource_type_id`, `status_id`, `resource_status_reason_id`, `buffer_time`, `enable_check_in`, `auto_release_minutes`, `color`, `allow_display`, `credit_count`, `peak_credit_count`, `min_notice_time_update`, `min_notice_time_delete`, `date_created`, `last_modified`) VALUES
(1, 'Dentist1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, NULL, 0, NULL, '#0000ff', 0, '0.00', '0.00', NULL, NULL, '2018-11-25 21:21:12', '2018-11-25 21:27:29'),
(2, 'Dentist2', NULL, NULL, NULL, NULL, 900, NULL, 7200, NULL, 1, 0, 1, 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 900, 0, NULL, '#ff0080', 0, '0.00', '0.00', NULL, NULL, '2018-11-25 21:21:32', '2018-11-25 21:28:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`resource_id`),
  ADD UNIQUE KEY `public_id` (`public_id`),
  ADD KEY `schedule_id` (`schedule_id`),
  ADD KEY `admin_group_id` (`admin_group_id`),
  ADD KEY `resource_type_id` (`resource_type_id`),
  ADD KEY `resource_status_reason_id` (`resource_status_reason_id`),
  ADD KEY `auto_release_minutes` (`auto_release_minutes`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `resource_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `resources`
--
ALTER TABLE `resources`
  ADD CONSTRAINT `admin_group_id` FOREIGN KEY (`admin_group_id`) REFERENCES `groups` (`group_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `resources_ibfk_1` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`schedule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `resources_ibfk_2` FOREIGN KEY (`resource_type_id`) REFERENCES `resource_types` (`resource_type_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `resources_ibfk_3` FOREIGN KEY (`resource_status_reason_id`) REFERENCES `resource_status_reasons` (`resource_status_reason_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
