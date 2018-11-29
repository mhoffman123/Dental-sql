-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2018 at 11:11 PM
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
-- Table structure for table `reservation_instances`
--

CREATE TABLE `reservation_instances` (
  `reservation_instance_id` int(10) UNSIGNED NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `reference_number` varchar(50) NOT NULL,
  `series_id` int(10) UNSIGNED NOT NULL,
  `checkin_date` datetime DEFAULT NULL,
  `checkout_date` datetime DEFAULT NULL,
  `previous_end_date` datetime DEFAULT NULL,
  `credit_count` decimal(7,2) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservation_instances`
--

INSERT INTO `reservation_instances` (`reservation_instance_id`, `start_date`, `end_date`, `reference_number`, `series_id`, `checkin_date`, `checkout_date`, `previous_end_date`, `credit_count`) VALUES
(1, '2018-11-26 15:30:00', '2018-11-26 16:00:00', '5bfb12dedf773654609636', 1, NULL, NULL, NULL, NULL),
(2, '2018-11-27 15:30:00', '2018-11-27 16:00:00', '5bfb12dedff43848234874', 1, NULL, NULL, NULL, NULL),
(3, '2018-11-28 15:30:00', '2018-11-28 16:00:00', '5bfb12dedff51800375338', 1, NULL, NULL, NULL, NULL),
(4, '2018-11-29 15:30:00', '2018-11-29 16:00:00', '5bfb12dedff6d325228550', 1, NULL, NULL, NULL, NULL),
(5, '2018-11-30 15:30:00', '2018-11-30 16:00:00', '5bfb12dedff79591166760', 1, NULL, NULL, NULL, NULL),
(6, '2018-12-01 15:30:00', '2018-12-01 16:00:00', '5bfb12dedff84017198673', 1, NULL, NULL, NULL, NULL),
(7, '2018-12-02 15:30:00', '2018-12-02 16:00:00', '5bfb12dedff8e051736461', 1, NULL, NULL, NULL, NULL),
(8, '2018-12-03 15:30:00', '2018-12-03 16:00:00', '5bfb12dedff99757082047', 1, NULL, NULL, NULL, NULL),
(9, '2018-12-04 15:30:00', '2018-12-04 16:00:00', '5bfb12dedffa3724021567', 1, NULL, NULL, NULL, NULL),
(10, '2018-12-05 15:30:00', '2018-12-05 16:00:00', '5bfb12dedffae102970852', 1, NULL, NULL, NULL, NULL),
(11, '2018-12-06 15:30:00', '2018-12-06 16:00:00', '5bfb12dedffb8962776119', 1, NULL, NULL, NULL, NULL),
(12, '2018-12-07 15:30:00', '2018-12-07 16:00:00', '5bfb12dedffc2384339011', 1, NULL, NULL, NULL, NULL),
(13, '2018-12-08 15:30:00', '2018-12-08 16:00:00', '5bfb12dedffcc407568003', 1, NULL, NULL, NULL, NULL),
(14, '2018-12-09 15:30:00', '2018-12-09 16:00:00', '5bfb12dedffd6367983686', 1, NULL, NULL, NULL, NULL),
(15, '2018-12-10 15:30:00', '2018-12-10 16:00:00', '5bfb12dedffe1617032479', 1, NULL, NULL, NULL, NULL),
(16, '2018-12-11 15:30:00', '2018-12-11 16:00:00', '5bfb12dedffeb265398857', 1, NULL, NULL, NULL, NULL),
(17, '2018-12-12 15:30:00', '2018-12-12 16:00:00', '5bfb12dedfff5313721822', 1, NULL, NULL, NULL, NULL),
(18, '2018-12-13 15:30:00', '2018-12-13 16:00:00', '5bfb12dedffff173766239', 1, NULL, NULL, NULL, NULL),
(19, '2018-12-14 15:30:00', '2018-12-14 16:00:00', '5bfb12dee0009674744128', 1, NULL, NULL, NULL, NULL),
(20, '2018-12-15 15:30:00', '2018-12-15 16:00:00', '5bfb12dee0013238438652', 1, NULL, NULL, NULL, NULL),
(21, '2018-12-16 15:30:00', '2018-12-16 16:00:00', '5bfb12dee001c297754953', 1, NULL, NULL, NULL, NULL),
(22, '2018-12-17 15:30:00', '2018-12-17 16:00:00', '5bfb12dee0027475282211', 1, NULL, NULL, NULL, NULL),
(23, '2018-12-18 15:30:00', '2018-12-18 16:00:00', '5bfb12dee0031443529012', 1, NULL, NULL, NULL, NULL),
(24, '2018-12-19 15:30:00', '2018-12-19 16:00:00', '5bfb12dee003b109650294', 1, NULL, NULL, NULL, NULL),
(25, '2018-12-20 15:30:00', '2018-12-20 16:00:00', '5bfb12dee0045830163994', 1, NULL, NULL, NULL, NULL),
(26, '2018-12-21 15:30:00', '2018-12-21 16:00:00', '5bfb12dee004e158887094', 1, NULL, NULL, NULL, NULL),
(27, '2018-12-22 15:30:00', '2018-12-22 16:00:00', '5bfb12dee0058535997111', 1, NULL, NULL, NULL, NULL),
(28, '2018-12-23 15:30:00', '2018-12-23 16:00:00', '5bfb12dee0062172668914', 1, NULL, NULL, NULL, NULL),
(29, '2018-12-24 15:30:00', '2018-12-24 16:00:00', '5bfb12dee006b374138801', 1, NULL, NULL, NULL, NULL),
(30, '2018-11-26 18:00:00', '2018-11-26 18:30:00', '5bfb134481231958007923', 2, NULL, NULL, NULL, NULL),
(31, '2018-11-27 18:00:00', '2018-11-27 18:30:00', '5bfb136ea1901202097882', 2, NULL, NULL, NULL, NULL),
(32, '2018-12-12 18:00:00', '2018-12-12 18:30:00', '5bfb136ea1cae730046423', 2, NULL, NULL, NULL, NULL),
(33, '2018-12-23 18:00:00', '2018-12-23 18:30:00', '5bfb136ea1f35058498403', 2, NULL, NULL, NULL, NULL),
(34, '2018-12-22 18:00:00', '2018-12-22 18:30:00', '5bfb136ea1efe899348521', 2, NULL, NULL, NULL, NULL),
(35, '2018-12-21 18:00:00', '2018-12-21 18:30:00', '5bfb136ea1ec5139198998', 2, NULL, NULL, NULL, NULL),
(36, '2018-12-20 18:00:00', '2018-12-20 18:30:00', '5bfb136ea1e87021714945', 2, NULL, NULL, NULL, NULL),
(37, '2018-12-19 18:00:00', '2018-12-19 18:30:00', '5bfb136ea1e49249339489', 2, NULL, NULL, NULL, NULL),
(38, '2018-12-18 18:00:00', '2018-12-18 18:30:00', '5bfb136ea1de9524861171', 2, NULL, NULL, NULL, NULL),
(39, '2018-12-17 18:00:00', '2018-12-17 18:30:00', '5bfb136ea1daf028376566', 2, NULL, NULL, NULL, NULL),
(40, '2018-12-16 18:00:00', '2018-12-16 18:30:00', '5bfb136ea1d7b150265267', 2, NULL, NULL, NULL, NULL),
(41, '2018-12-15 18:00:00', '2018-12-15 18:30:00', '5bfb136ea1d47061901710', 2, NULL, NULL, NULL, NULL),
(42, '2018-12-14 18:00:00', '2018-12-14 18:30:00', '5bfb136ea1d14228653178', 2, NULL, NULL, NULL, NULL),
(43, '2018-12-13 18:00:00', '2018-12-13 18:30:00', '5bfb136ea1ce0251454891', 2, NULL, NULL, NULL, NULL),
(44, '2018-12-11 18:00:00', '2018-12-11 18:30:00', '5bfb136ea1c7a575834677', 2, NULL, NULL, NULL, NULL),
(45, '2018-11-28 18:00:00', '2018-11-28 18:30:00', '5bfb136ea193f856223657', 2, NULL, NULL, NULL, NULL),
(46, '2018-12-10 18:00:00', '2018-12-10 18:30:00', '5bfb136ea1c43144660501', 2, NULL, NULL, NULL, NULL),
(47, '2018-12-09 18:00:00', '2018-12-09 18:30:00', '5bfb136ea1bf3530975868', 2, NULL, NULL, NULL, NULL),
(48, '2018-12-08 18:00:00', '2018-12-08 18:30:00', '5bfb136ea1b9e581342418', 2, NULL, NULL, NULL, NULL),
(49, '2018-12-07 18:00:00', '2018-12-07 18:30:00', '5bfb136ea1b4d968117162', 2, NULL, NULL, NULL, NULL),
(50, '2018-12-06 18:00:00', '2018-12-06 18:30:00', '5bfb136ea1af7690658618', 2, NULL, NULL, NULL, NULL),
(51, '2018-12-05 18:00:00', '2018-12-05 18:30:00', '5bfb136ea1aa6715738676', 2, NULL, NULL, NULL, NULL),
(52, '2018-12-04 18:00:00', '2018-12-04 18:30:00', '5bfb136ea1a5a808525596', 2, NULL, NULL, NULL, NULL),
(53, '2018-12-03 18:00:00', '2018-12-03 18:30:00', '5bfb136ea1a20433267715', 2, NULL, NULL, NULL, NULL),
(54, '2018-12-02 18:00:00', '2018-12-02 18:30:00', '5bfb136ea19f3824472417', 2, NULL, NULL, NULL, NULL),
(55, '2018-12-01 18:00:00', '2018-12-01 18:30:00', '5bfb136ea19c7164798579', 2, NULL, NULL, NULL, NULL),
(56, '2018-11-30 18:00:00', '2018-11-30 18:30:00', '5bfb136ea199b760337646', 2, NULL, NULL, NULL, NULL),
(57, '2018-11-29 18:00:00', '2018-11-29 18:30:00', '5bfb136ea196d183804883', 2, NULL, NULL, NULL, NULL),
(58, '2018-12-24 18:00:00', '2018-12-24 18:30:00', '5bfb136ea1f6e147060934', 2, NULL, NULL, NULL, NULL),
(59, '2018-11-26 15:30:00', '2018-11-26 16:30:00', '5bfb1560308ec076611859', 3, NULL, NULL, NULL, NULL),
(60, '2018-11-26 14:00:00', '2018-11-26 14:30:00', '5bfb2896b17b4642109238', 4, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reservation_instances`
--
ALTER TABLE `reservation_instances`
  ADD PRIMARY KEY (`reservation_instance_id`),
  ADD KEY `start_date` (`start_date`),
  ADD KEY `end_date` (`end_date`),
  ADD KEY `reference_number` (`reference_number`),
  ADD KEY `series_id` (`series_id`),
  ADD KEY `checkin_date` (`checkin_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reservation_instances`
--
ALTER TABLE `reservation_instances`
  MODIFY `reservation_instance_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservation_instances`
--
ALTER TABLE `reservation_instances`
  ADD CONSTRAINT `reservations_series` FOREIGN KEY (`series_id`) REFERENCES `reservation_series` (`series_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;