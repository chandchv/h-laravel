-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2021 at 12:13 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead`
--

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `floor` smallint(6) NOT NULL,
  `capacity` smallint(5) UNSIGNED NOT NULL,
  `price` double(15,2) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `Type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `number`, `floor`, `capacity`, `price`, `comment`, `created_at`, `updated_at`, `Type`) VALUES

(31, '101', 1, 3, 2500.00, 'suite room with dining and closet', '2021-12-31 06:41:49', '2021-12-31 06:41:49', 'Suite'),
(2, '102', 1, 2, 2500.00, 'Suite room', '2021-12-21 03:10:36', '2021-12-21 03:10:36', 'Suite'),
(30, '103', 1, 2, 2500.00, 'Suite room', '2021-12-21 03:10:36', '2021-12-21 03:10:36', 'Suite'),
(11, '105', 1, 2, 1500.00, 'A/C room ', '2021-12-31 06:41:49', '2021-12-31 06:41:49', 'A/C'),
(12, '106', 1, 2, 1500.00, 'A/C room ', '2021-12-31 06:41:49', '2021-12-31 06:41:49', 'A/C'),
(13, '107', 1, 2, 1500.00, 'A/C room ', '2021-12-31 06:41:49', '2021-12-31 06:41:49', 'A/C'),
(14, '108', 1, 2, 1500.00, 'A/C room ', '2021-12-31 06:41:49', '2021-12-31 06:41:49', 'A/C'),
(15, '109', 1, 2, 1500.00, 'A/C room ', '2021-12-31 06:41:49', '2021-12-31 06:41:49', 'A/C'),
(16, '110', 1, 2, 1500.00, 'A/C room ', '2021-12-31 06:41:49', '2021-12-31 06:41:49', 'A/C'),
(17, '111', 1, 2, 1500.00, 'A/C room ', '2021-12-31 06:41:49', '2021-12-31 06:41:49', 'A/C'),
(18, '112', 1, 2, 1500.00, 'A/C room ', '2021-12-31 06:41:49', '2021-12-31 06:41:49', 'A/C'),
(19, '201', 2, 2, 1500.00, 'A/C room ', '2021-12-31 06:41:49', '2021-12-31 06:41:49', 'A/C'),
(20, '202', 2, 2, 1500.00, 'A/C room ', '2021-12-31 06:41:49', '2021-12-31 06:41:49', 'A/C'),
(21, '203', 2, 2, 1500.00, 'A/C room ', '2021-12-31 06:41:49', '2021-12-31 06:41:49', 'A/C'),
(22, '204', 2, 2, 1500.00, 'A/C room ', '2021-12-31 06:41:49', '2021-12-31 06:41:49', 'A/C'),
(23, '205', 2, 2, 1500.00, 'A/C room ', '2021-12-31 06:41:49', '2021-12-31 06:41:49', 'A/C'),
(24, '206', 2, 2, 1500.00, 'A/C room ', '2021-12-31 06:41:49', '2021-12-31 06:41:49', 'A/C'),
(25, '207', 2, 2, 1500.00, 'A/C room ', '2021-12-31 06:41:49', '2021-12-31 06:41:49', 'A/C'),
(26, '208', 2, 2, 1500.00, 'A/C room ', '2021-12-31 06:41:49', '2021-12-31 06:41:49', 'A/C'),
(27, '209', 2, 2, 1500.00, 'A/C room ', '2021-12-31 06:41:49', '2021-12-31 06:41:49', 'A/C'),
(28, '210', 2, 2, 1500.00, 'A/C room ', '2021-12-31 06:41:49', '2021-12-31 06:41:49', 'A/C'),
(29, '211', 2, 2, 1500.00, 'A/C room ', '2021-12-31 06:41:49', '2021-12-31 06:41:49', 'A/C'),
(30, '212', 2, 2, 1500.00, 'A/C room ', '2021-12-31 06:41:49', '2021-12-31 06:41:49', 'A/C'),
(31, '213', 2, 2, 1500.00, 'A/C room ', '2021-12-31 06:41:49', '2021-12-31 06:41:49', 'A/C'),
(32, '214', 2, 2, 1500.00, 'A/C room ', '2021-12-31 06:41:49', '2021-12-31 06:41:49', 'A/C'),
(33, '215', 2, 2, 1500.00, 'A/C room ', '2021-12-31 06:41:49', '2021-12-31 06:41:49', 'A/C');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rooms_number_floor_unique` (`number`,`floor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
