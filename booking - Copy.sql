-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2025 at 09:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `booked_hotels`
--

CREATE TABLE `booked_hotels` (
  `booking_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `num_guests` int(11) NOT NULL,
  `room_type` varchar(100) DEFAULT NULL,
  `special_requests` text DEFAULT NULL,
  `booking_status` enum('pending','confirmed','cancelled','completed') DEFAULT 'pending',
  `date_booked` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booked_hotels`
--

INSERT INTO `booked_hotels` (`booking_id`, `hotel_id`, `user_id`, `check_in_date`, `check_out_date`, `num_guests`, `room_type`, `special_requests`, `booking_status`, `date_booked`) VALUES
(1, 1, 16, '2025-05-17', '2025-05-23', 1, '', '', 'pending', '2025-05-16 18:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `function_logs`
--

CREATE TABLE `function_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `function_name` varchar(255) DEFAULT NULL,
  `log_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `function_logs`
--

INSERT INTO `function_logs` (`id`, `user_id`, `function_name`, `log_time`) VALUES
(1, NULL, 'Admin updated user with ID: 14', '2025-05-01 13:02:23'),
(3, NULL, 'administrator logged in successfully', '2025-05-01 14:13:44'),
(4, NULL, 'administrator logged in successfully', '2025-05-01 14:15:18'),
(5, NULL, 'administrator logged in successfully', '2025-05-01 14:20:20'),
(6, NULL, 'administrator logged in successfully', '2025-05-01 14:21:00'),
(7, NULL, 'administrator logged in successfully', '2025-05-01 14:22:45'),
(8, NULL, 'administrator logged in successfully', '2025-05-01 14:24:09'),
(9, NULL, 'administrator logged in successfully', '2025-05-01 14:26:10'),
(10, NULL, 'test123 logged in successfully', '2025-05-01 14:31:49'),
(11, NULL, 'Admin updated user with ID: 15', '2025-05-01 14:32:04'),
(12, NULL, 'Admin updated user with ID: 15', '2025-05-01 14:32:10'),
(13, NULL, 'administrator logged in successfully', '2025-05-16 16:28:23'),
(14, NULL, 'administrator logged in successfully', '2025-05-16 17:05:23'),
(15, NULL, 'administrator logged in successfully', '2025-05-16 18:08:41'),
(16, NULL, 'administrator logged in successfully', '2025-05-16 18:12:24'),
(17, NULL, 'administrator logged in successfully', '2025-05-16 18:14:44'),
(18, NULL, 'administrator logged in successfully', '2025-05-16 18:15:31'),
(19, NULL, 'administrator logged in successfully', '2025-05-16 18:17:51'),
(20, NULL, 'administrator logged in successfully', '2025-05-16 18:19:50'),
(21, NULL, 'user logged in successfully', '2025-05-16 18:43:26'),
(22, NULL, 'user logged in successfully', '2025-05-16 18:48:54'),
(23, NULL, 'user logged in successfully', '2025-05-16 19:02:00'),
(24, NULL, 'user logged in successfully', '2025-05-16 19:02:49'),
(25, NULL, 'user logged in successfully', '2025-05-16 19:12:17'),
(26, NULL, 'administrator logged in successfully', '2025-05-16 19:23:02'),
(27, NULL, 'administrator logged in successfully', '2025-05-16 19:24:01'),
(28, NULL, 'administrator logged in successfully', '2025-05-16 19:25:40'),
(29, NULL, 'user logged in successfully', '2025-05-16 19:32:30');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `star_rating` decimal(2,1) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotel_id`, `hotel_name`, `address`, `city`, `state`, `zip_code`, `country`, `phone_number`, `email`, `star_rating`, `description`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test', 'test', 'test', '6018', 'test', '092323232', 'test@gmail.com', 5.0, 'this is a test', '2025-05-16 18:15:56', '2025-05-16 18:15:56');

-- --------------------------------------------------------

--
-- Table structure for table `reserved_hotels`
--

CREATE TABLE `reserved_hotels` (
  `reservation_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `num_guests` int(11) NOT NULL,
  `room_type` varchar(100) DEFAULT NULL,
  `special_requests` text DEFAULT NULL,
  `reservation_status` enum('pending','approved','declined','cancelled') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(150) NOT NULL,
  `fname` varchar(150) NOT NULL,
  `lname` varchar(150) NOT NULL,
  `gender` varchar(150) NOT NULL,
  `account_type` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `uname` varchar(150) NOT NULL,
  `pname` varchar(150) NOT NULL,
  `contact` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sq` varchar(255) DEFAULT NULL,
  `ans` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `gender`, `account_type`, `email`, `uname`, `pname`, `contact`, `status`, `image`, `sq`, `ans`) VALUES
(11, 'Mark', 'MARK', 'Male', 'sttaff', 'mark@gmail.com', 'mark', 'ETdlsUaGcDe4FKjvHC7DXXO/t3yNJ6XxpSAJn1lJz6o=', '90586795867', 'Active', '', '', ''),
(12, 'kiven', 'kiven', 'Male', 'staff', 'kiven@gmail.com', 'kiven', 'ETdlsUaGcDe4FKjvHC7DXXO/t3yNJ6XxpSAJn1lJz6o=', '908690586', 'Active', '', '', ''),
(13, 'test', 'test', 'Male', 'Admin', 'test@gmail.com', 'test123', 'ETdlsUaGcDe4FKjvHC7DXXO/t3yNJ6XxpSAJn1lJz6o=', '098765432', 'Active', 'src/Images/2.PNG', '', ''),
(14, 'testtest', 'test', 'Male', 'Admin', 'Test123@gmail.com', 'test12345', 'ETdlsUaGcDe4FKjvHC7DXXO/t3yNJ6XxpSAJn1lJz6o=', '09123434554', 'Active', 'src/Images/3event.PNG', NULL, NULL),
(15, 'adminis', 'admin', 'Male', 'Admin', 'adminis@gmail.com', 'administrator', 'LINbqJZtkCEg+0UEA3+tNO/6S5Rh6YjkxNoHOtUNroI=', '0987654321', 'Active', '', 'What is your Code name?', 'Babylonian'),
(16, 'user', 'user', 'Male', 'Staff', 'user@gmail.com', 'user', 'LINbqJZtkCEg+0UEA3+tNO/6S5Rh6YjkxNoHOtUNroI=', '092323543554', 'Active', '', 'What\'s your favorite food?', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked_hotels`
--
ALTER TABLE `booked_hotels`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `hotel_id` (`hotel_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `function_logs`
--
ALTER TABLE `function_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `reserved_hotels`
--
ALTER TABLE `reserved_hotels`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `hotel_id` (`hotel_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booked_hotels`
--
ALTER TABLE `booked_hotels`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `function_logs`
--
ALTER TABLE `function_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reserved_hotels`
--
ALTER TABLE `reserved_hotels`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booked_hotels`
--
ALTER TABLE `booked_hotels`
  ADD CONSTRAINT `booked_hotels_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`hotel_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `booked_hotels_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `function_logs`
--
ALTER TABLE `function_logs`
  ADD CONSTRAINT `function_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reserved_hotels`
--
ALTER TABLE `reserved_hotels`
  ADD CONSTRAINT `reserved_hotels_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`hotel_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reserved_hotels_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
