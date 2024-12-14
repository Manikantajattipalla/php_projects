-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2024 at 11:52 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_register`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_register`
--

CREATE TABLE `blood_register` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `blood_group` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blood_register`
--

INSERT INTO `blood_register` (`id`, `name`, `address`, `phone_number`, `blood_group`) VALUES
(1, 'name', 'kankanadi', '', ''),
(2, 'name', 'kankanadi', '', ''),
(3, 'name', 'kankanadi', '', ''),
(4, '', '', '', ''),
(5, '', '', '', ''),
(6, '', '', '', ''),
(7, '', '', '', ''),
(8, 'name', 'kankanadi', '', ''),
(9, 'name', 'kankanadi', '', ''),
(10, 'name', 'kankanadi', '', ''),
(11, 'name', 'kankanadi', '', ''),
(12, 'name', 'kankanadi', '', ''),
(13, 'name', 'kankanadi', '', ''),
(14, 'name', 'kankanadi', '', ''),
(15, 'name', 'kankanadi', '', ''),
(16, '', '', '', ''),
(17, '', '', '', ''),
(18, '', '', '', ''),
(19, '', '', '', ''),
(20, '', '', '', ''),
(21, '', '', '', ''),
(22, '', '', '', ''),
(23, '', '', '', ''),
(24, '', '', '', ''),
(26, 'name', 'kankanadi', '01233457834', ''),
(27, '', '', '', ''),
(28, 'nishu', 'kankanadi', '01233457834', ''),
(29, 'nishu', 'kankanadi', '01233457834', ''),
(30, 'nishu', 'kankanadi', '01233457834', 'A-'),
(31, 'nishu', 'kankanadi', '01233457834', 'B+'),
(32, 'nishu', 'kankanadi', '01233457834', 'B+'),
(33, 'rt', 'kankanadi', '01233457834', 'B+');

-- --------------------------------------------------------

--
-- Table structure for table `coursetable`
--

CREATE TABLE `coursetable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `blood_group` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `database_table`
--

CREATE TABLE `database_table` (
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doners`
--

CREATE TABLE `doners` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `blood_group` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'keerthan', 'keerthan@gmail.com', '$2y$10$ZxcUPT1j2pJyFT5AUdNKp.PYH0OsIUYgA/P1UWJ6aHua5joOOvC/K'),
(2, 'nishu', 'nishmitha928@gmail.com', '$2y$10$tlokYjeEFMa6RchAiPM5le5tXaQ5/beU11k3DjTbrTeSBoWZG05v6'),
(3, 'nishu', 'nishmithasnishmitha@gmail.com', '$2y$10$EXveO3lfNW3m9TCy2bksje35F00kjnsT51RLi/9NEmTk5R.1WEbtW'),
(4, 'anonymous', 'boddymaga@gmail.com', '$2y$10$jPcGxpLxKAfcJY3Pqr9dqOtAqMe9wHdlRCNn4wYHAdi5jeYC/vDIq'),
(5, 'anonymous', 'maya@gmail.com', '$2y$10$4cJxoHH/pcCx.bpz2oVNh.iKIwUd2/7fWMxpDVg6cBroh26pDO/d6'),
(6, 'mani', 'mani@gmail.com', '$2y$10$dgWuTBO0dX59F4R1DXqIzekVNY3w/0vxkv66K2Sxt4Jp0XhSSyPbW'),
(7, 'kk', 'kk@gmail.com', '$2y$10$9yBgzKablO6e0zxhRiRckukGvyS2JUh/zRgHVNBxqd7cz/p7bZZZ6'),
(8, 'nishu', 'nishu@gmail.com', '$2y$10$Yrs2qFYr5KvX7c29XtqX6e.SZGOf.bREDqrE07XIsYwQ.7XTV9DwW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_register`
--
ALTER TABLE `blood_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coursetable`
--
ALTER TABLE `coursetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doners`
--
ALTER TABLE `doners`
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
-- AUTO_INCREMENT for table `blood_register`
--
ALTER TABLE `blood_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `coursetable`
--
ALTER TABLE `coursetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doners`
--
ALTER TABLE `doners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
