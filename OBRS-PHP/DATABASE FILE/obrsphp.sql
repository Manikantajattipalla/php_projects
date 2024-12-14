-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2024 at 04:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `obrsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `booked`
--

CREATE TABLE `booked` (
  `id` int(30) NOT NULL,
  `schedule_id` int(30) NOT NULL,
  `ref_no` text NOT NULL,
  `name` varchar(250) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT 0 COMMENT '1=Paid, 0- Unpaid',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booked`
--

INSERT INTO `booked` (`id`, `schedule_id`, `ref_no`, `name`, `qty`, `status`, `date_updated`) VALUES
(1, 1, '202206248407', 'LEELA', 7, 1, '2024-03-06 20:35:57'),
(2, 4, '202206252673', 'HARSHA', 7, 0, '2024-03-06 20:36:15'),
(3, 2, '202206251496', 'CHANCHALA', 3, 1, '2024-03-06 20:36:32'),
(4, 4, '202206254769', 'HEMANTH', 1, 1, '2024-03-06 20:36:44'),
(5, 7, '202206257753', 'DISHA', 8, 0, '2024-03-06 20:37:15'),
(6, 5, '20220625746', 'JANANI', 3, 1, '2024-03-06 20:37:50'),
(7, 9, '202206252201', 'DIVYA', 6, 0, '2024-03-06 20:38:05');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `bus_number` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 = inactive, 1 = active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `name`, `bus_number`, `status`, `date_updated`) VALUES
(1, 'KSRTC', 'KA 09 Y 5886', 1, '2024-03-06 20:50:34'),
(2, 'KSRTC', 'ADG7782', 0, '2024-03-06 20:49:56'),
(3, 'KSRTC', 'KA 12 J 3456', 1, '2024-03-06 20:51:01'),
(4, 'KSRTC', 'KA 06 AB 3409', 1, '2024-03-06 20:50:16'),
(5, 'KSRTC', 'KA 12 H 8353', 1, '2024-03-06 20:51:24'),
(6, 'KSRTC', 'KA 18 BA 7642', 1, '2024-03-06 20:51:58'),
(7, 'KSRTC', 'QWE8787', 0, '2024-03-06 20:41:46'),
(8, 'KSRTC', 'KA 01 A 2027', 1, '2024-03-06 20:49:45'),
(9, 'KSRTC', '', 0, '2024-03-06 20:49:52'),
(10, 'KSRTC', 'KA 21 P 5786', 1, '2024-03-06 20:52:59'),
(11, 'KSRTC', 'KA 62 A 9987', 1, '2024-03-06 20:53:31'),
(12, 'KSRTC', 'KA 40 V 5462', 1, '2024-03-06 20:53:52');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(30) NOT NULL,
  `terminal_name` text NOT NULL,
  `city` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0= inactive , 1= active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `terminal_name`, `city`, `state`, `status`, `date_updated`) VALUES
(1, 'Flouburn', 'Wig Hills', 'P One', 0, '2024-03-06 20:55:02'),
(2, 'KUDREMUKHA', 'CHIKKAMAGALUR', 'P One', 1, '2024-03-06 20:56:21'),
(3, 'Ertontin', 'Xod Vale', 'P Four', 0, '2024-03-06 20:54:56'),
(4, 'Oreta', 'Tiolt Cross', 'P One', 0, '2024-03-06 20:55:07'),
(5, 'Agosving', 'Xod Vale', 'P Two', 0, '2024-03-06 20:54:39'),
(6, 'Buufield', 'Little Swarrum', 'P Three', 0, '2024-03-06 20:54:51'),
(7, 'Adamery', 'Smepealgok Heights', 'P Three', 0, '2024-03-06 20:54:33'),
(8, 'Ikleim', 'Bayside Threggac', 'P Three', 0, '2024-03-06 20:55:04'),
(9, 'Feeloshis Grove', 'D Eig', 'P Four', 0, '2024-03-06 20:54:59'),
(10, 'Agoford', 'Plogelliag West', 'P Five', 0, '2024-03-06 20:54:36'),
(11, 'Cramery', 'Drorveac Cross', 'P Six', 0, '2024-03-06 20:54:53'),
(12, 'Athewell', 'Strugad Vale', 'P Six', 0, '2024-03-06 20:54:48'),
(13, 'MADIKERI', 'KODAGU', 'P Two', 1, '2024-03-06 20:57:00'),
(14, 'MUDDENAHALLI', 'CHIKKABALLAPURA', 'P Four', 1, '2024-03-06 20:57:34'),
(15, 'MUDIGERE', 'TUMKUR', 'P Four', 1, '2024-03-06 20:58:05'),
(16, 'NANJANAGUDU', 'MYSORE', 'P Six', 1, '2024-03-06 20:58:37'),
(17, 'PUTTUR', 'DAKSHINA KANNADA', 'P Three', 1, '2024-03-06 20:59:08'),
(18, 'SURATHKAL', 'DAKSHINA KANNADA', 'P Five', 1, '2024-03-06 20:59:38'),
(19, 'YELAHANKA', 'BANGLORE', 'P Two', 1, '2024-03-06 21:08:39'),
(20, 'VIRAJPET', 'KODAGU', 'P Three', 1, '2024-03-06 21:09:05');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_list`
--

CREATE TABLE `schedule_list` (
  `id` int(30) NOT NULL,
  `bus_id` int(30) NOT NULL,
  `from_location` int(30) NOT NULL,
  `to_location` int(30) NOT NULL,
  `departure_time` datetime NOT NULL,
  `eta` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `availability` int(11) NOT NULL,
  `price` text NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule_list`
--

INSERT INTO `schedule_list` (`id`, `bus_id`, `from_location`, `to_location`, `departure_time`, `eta`, `status`, `availability`, `price`, `date_updated`) VALUES
(1, 11, 1, 5, '2022-06-25 15:00:00', '2022-06-25 20:00:00', 0, 25, '50', '2024-03-06 15:35:36'),
(2, 6, 1, 4, '2022-06-25 20:00:00', '2022-06-25 01:00:00', 0, 30, '26', '2024-03-06 15:35:40'),
(3, 1, 3, 9, '2022-06-26 10:00:00', '2022-06-26 16:00:00', 0, 32, '33', '2024-03-06 15:35:46'),
(4, 9, 4, 1, '2022-06-26 08:00:00', '2022-06-26 19:00:00', 0, 30, '65', '2024-03-06 15:35:49'),
(5, 7, 8, 10, '2022-06-27 10:00:00', '2022-06-27 19:00:00', 0, 33, '80', '2024-03-06 15:36:00'),
(6, 4, 7, 6, '2022-06-26 11:00:00', '2022-06-25 13:00:00', 0, 35, '43', '2024-03-06 15:35:52'),
(7, 8, 9, 4, '2022-06-27 15:00:00', '2022-06-27 23:00:00', 0, 34, '75', '2024-03-06 15:35:43'),
(8, 3, 6, 2, '2022-06-27 12:00:00', '2022-06-25 17:00:00', 0, 31, '68', '2024-03-06 15:36:03'),
(9, 10, 11, 12, '2022-06-26 10:00:00', '2022-06-26 13:00:00', 0, 38, '65', '2024-03-06 15:35:55'),
(10, 6, 17, 16, '2024-03-11 21:00:00', '2024-03-06 22:00:00', 1, 36, '157', '2024-03-06 15:37:36'),
(11, 11, 18, 19, '2024-03-11 15:00:00', '2024-03-06 21:00:00', 1, 30, '350', '2024-03-06 15:40:19'),
(12, 3, 20, 18, '2024-03-11 15:00:00', '2024-03-11 18:30:00', 1, 45, '120', '2024-03-06 15:41:36'),
(13, 10, 17, 13, '2024-03-11 12:00:00', '2024-03-06 15:00:00', 1, 32, '150', '2024-03-06 15:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(150) NOT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT 1,
  `username` varchar(25) NOT NULL,
  `password` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT ' 0 = incative , 1 = active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `username`, `password`, `status`, `date_updated`) VALUES
(1, 'Administrator', 1, 'admin', 'f2d0ff370380124029c2b807a924156c', 1, '2022-06-25 20:13:42'),
(3, 'AdminWilly', 2, 'willy', 'f2d0ff370380124029c2b807a924156c', 1, '2022-06-25 20:14:01'),
(4, 'AdminLea', 1, 'leadmin', 'f2d0ff370380124029c2b807a924156c', 1, '2022-06-25 20:14:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked`
--
ALTER TABLE `booked`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_list`
--
ALTER TABLE `schedule_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booked`
--
ALTER TABLE `booked`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `schedule_list`
--
ALTER TABLE `schedule_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
