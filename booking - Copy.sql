-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2025 at 04:41 PM
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
(12, NULL, 'Admin updated user with ID: 15', '2025-05-01 14:32:10');

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
(15, 'adminis', 'admin', 'Male', 'Admin', 'adminis@gmail.com', 'administrator', 'LINbqJZtkCEg+0UEA3+tNO/6S5Rh6YjkxNoHOtUNroI=', '0987654321', 'Active', '', 'What is your Code name?', 'Babylonian');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `function_logs`
--
ALTER TABLE `function_logs`
  ADD PRIMARY KEY (`id`),
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
-- AUTO_INCREMENT for table `function_logs`
--
ALTER TABLE `function_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `function_logs`
--
ALTER TABLE `function_logs`
  ADD CONSTRAINT `function_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
