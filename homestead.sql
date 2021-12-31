-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2021 at 12:42 PM
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
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `zip_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `place` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `PESEL` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`id`, `first_name`, `last_name`, `address`, `zip_code`, `place`, `PESEL`, `contact`, `created_at`, `updated_at`) VALUES
(1, 'CHANDRASEKHAR', 'CHEJERLA', '204 GIRISHIKARA ENCLAVE', '52-401', 'nellore', '12341321211', '69968574744', '2021-12-21 03:12:30', '2021-12-21 03:12:30'),
(2, 'Dasari', 'Ramarao', 'gudur', '25-225', 'gudur', '12345678964', '7894561234', '2021-12-21 03:13:44', '2021-12-21 03:13:44'),
(3, 'Lincoln', 'Johns', '46514 Hessel Corners', '80-152', 'West Juliochester', '99775841761', 'test contact', '2021-12-21 03:14:46', '2021-12-21 03:14:46'),
(4, 'Asa', 'Naveen', 'Sullurpet', '11-111', 'Nellore', '94944959691', '9494495969', '2021-12-31 06:59:41', '2021-12-31 06:59:41'),
(5, 'Chaya', 'Schamberger', '2500 Purdy Loop Suite 042', '79-437', 'Port Ewell', '31032240262', 'test contact', '2021-12-31 07:03:58', '2021-12-31 07:03:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_01_21_143750_create_rooms_table', 1),
(4, '2017_01_21_143900_create_guests_table', 1),
(5, '2017_01_21_143935_create_reservations_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `guest_id` int(10) UNSIGNED NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `people` smallint(5) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `room_id`, `guest_id`, `date_start`, `date_end`, `people`, `created_at`, `updated_at`) VALUES
(2, 22, 4, '2021-12-31', '2022-01-01', 1, '2021-12-31 07:02:04', '2021-12-31 07:02:04');

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
(1, '101', 1, 2, 1500.00, 'A/C room', '2021-12-31 06:41:49', '2021-12-31 06:47:36', 'A/C'),
(2, '102', 1, 3, 2500.00, 'Suite room', '2021-12-21 03:10:36', '2021-12-21 03:10:36', 'Suite'),
(3, '103', 1, 3, 2500.00, 'Suite Room', '2021-12-21 03:30:46', '2021-12-21 03:30:46', 'Suite'),
(4, '104', 1, 3, 2500.00, 'Suite room', '2021-12-31 06:47:08', '2021-12-31 06:47:08', 'Suite'),
(11, '105', 1, 2, 1500.00, 'A/C room ', '2021-12-31 01:11:49', '2021-12-31 01:11:49', 'A/C'),
(12, '106', 1, 2, 1500.00, 'A/C room ', '2021-12-31 01:11:49', '2021-12-31 01:11:49', 'A/C'),
(13, '107', 1, 2, 1500.00, 'A/C room ', '2021-12-31 01:11:49', '2021-12-31 01:11:49', 'A/C'),
(14, '108', 1, 2, 1500.00, 'A/C room ', '2021-12-31 01:11:49', '2021-12-31 01:11:49', 'A/C'),
(15, '109', 1, 2, 1500.00, 'A/C room ', '2021-12-31 01:11:49', '2021-12-31 01:11:49', 'A/C'),
(16, '110', 1, 2, 1500.00, 'A/C room ', '2021-12-31 01:11:49', '2021-12-31 01:11:49', 'A/C'),
(17, '111', 1, 2, 1500.00, 'A/C room ', '2021-12-31 01:11:49', '2021-12-31 01:11:49', 'A/C'),
(18, '112', 1, 2, 1500.00, 'A/C room ', '2021-12-31 01:11:49', '2021-12-31 01:11:49', 'A/C'),
(19, '201', 2, 2, 1500.00, 'A/C room ', '2021-12-31 01:11:49', '2021-12-31 01:11:49', 'A/C'),
(20, '202', 2, 2, 1500.00, 'A/C room ', '2021-12-31 01:11:49', '2021-12-31 01:11:49', 'A/C'),
(21, '203', 2, 2, 1500.00, 'A/C room ', '2021-12-31 01:11:49', '2021-12-31 01:11:49', 'A/C'),
(22, '204', 2, 2, 1000.00, 'A/C room', '2021-12-31 01:11:49', '2021-12-31 07:02:31', 'A/C'),
(23, '205', 2, 2, 1500.00, 'A/C room ', '2021-12-31 01:11:49', '2021-12-31 01:11:49', 'A/C'),
(24, '206', 2, 2, 1500.00, 'A/C room ', '2021-12-31 01:11:49', '2021-12-31 01:11:49', 'A/C'),
(25, '207', 2, 2, 1500.00, 'A/C room ', '2021-12-31 01:11:49', '2021-12-31 01:11:49', 'A/C'),
(26, '208', 2, 2, 1500.00, 'A/C room ', '2021-12-31 01:11:49', '2021-12-31 01:11:49', 'A/C'),
(27, '209', 2, 2, 1500.00, 'A/C room ', '2021-12-31 01:11:49', '2021-12-31 01:11:49', 'A/C'),
(28, '210', 2, 2, 1500.00, 'A/C room ', '2021-12-31 01:11:49', '2021-12-31 01:11:49', 'A/C'),
(29, '211', 2, 2, 1500.00, 'A/C room ', '2021-12-31 01:11:49', '2021-12-31 01:11:49', 'A/C'),
(30, '212', 2, 2, 1500.00, 'A/C room ', '2021-12-31 01:11:49', '2021-12-31 01:11:49', 'A/C'),
(31, '213', 2, 2, 1500.00, 'A/C room ', '2021-12-31 01:11:49', '2021-12-31 01:11:49', 'A/C'),
(32, '214', 2, 2, 1500.00, 'A/C room ', '2021-12-31 01:11:49', '2021-12-31 01:11:49', 'A/C'),
(33, '215', 2, 2, 1500.00, 'A/C room ', '2021-12-31 01:11:49', '2021-12-31 01:11:49', 'A/C');

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `room_type_id` int(11) NOT NULL,
  `room_type_name` varchar(45) DEFAULT NULL,
  `room_cost` decimal(10,2) DEFAULT NULL,
  `room_type_description` varchar(100) DEFAULT NULL,
  `smoke_friendly` tinyint(1) DEFAULT NULL,
  `pet_friendly` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_type_id`, `room_type_name`, `room_cost`, `room_type_description`, `smoke_friendly`, `pet_friendly`) VALUES
(1, 'Standard Room A/C', '1500.00', '1 King Bed 323-sq-foot (30-sq-meter) room with city views', 0, 1),
(2, 'Standard Non-A/C', '1000.00', 'Two Twin Bed 323-sq-foot (30-sq-meter) room with city views', 1, 1),
(3, 'Executive Suite', '2700.00', '1 King Bed 323-sq-foot (30-sq-meter) room with city views', 0, 0),
(4, 'Conference Hall', '15000.00', '200 seated conference hall', 1, 1),
(5, 'Standard Room A/C Single', '1250.00', '1 King Bed 323-sq-foot (30-sq-meter) room with city views', 0, 1),
(6, 'Standard Non-A/C Single', '800.00', 'Two Twin Bed 323-sq-foot (30-sq-meter) room with city views', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', '$2y$10$kqAAjW0p.B6z6nGCJ3LIxuEwerC4SDlyMeuZLvyuHp/3oWxXgZlpq', NULL, 1, '2021-12-21 03:05:05', '2021-12-21 03:05:05'),
(2, 'User', 'user@example.com', '$2y$10$iE4dD5oa94Sf8UfZH1fpvO7zQVbCR34yNTAGYaLgCp1uqEd3cuYtG', NULL, 0, '2021-12-21 03:05:05', '2021-12-21 03:05:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservations_room_id_foreign` (`room_id`),
  ADD KEY `reservations_guest_id_foreign` (`guest_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rooms_number_floor_unique` (`number`,`floor`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_guest_id_foreign` FOREIGN KEY (`guest_id`) REFERENCES `guests` (`id`),
  ADD CONSTRAINT `reservations_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
