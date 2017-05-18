-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2017 at 12:29 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `queue`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_types`
--

CREATE TABLE `customer_types` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_types`
--

INSERT INTO `customer_types` (`id`, `name`) VALUES
(1, 'Citizen'),
(2, 'Organisation'),
(3, 'Anonymous');

-- --------------------------------------------------------

--
-- Table structure for table `queue`
--

CREATE TABLE `queue` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `name` text NOT NULL,
  `service` int(11) NOT NULL,
  `queue_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `queue`
--

INSERT INTO `queue` (`id`, `type`, `name`, `service`, `queue_time`) VALUES
(33, 1, 'Mr.  Kane', 1, '2017-05-18 11:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `served_customers`
--

CREATE TABLE `served_customers` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `name` text NOT NULL,
  `service` int(11) NOT NULL,
  `served_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `served_customers`
--

INSERT INTO `served_customers` (`id`, `type`, `name`, `service`, `served_time`) VALUES
(1, 2, 'Sprinkles', 1, '2017-05-18 07:09:30'),
(2, 2, 'sgdgs', 1, '2017-05-18 09:54:35'),
(3, 1, 'Mr. Misdfl GDFGD', 3, '2017-05-18 09:55:09'),
(4, 3, 'Anonymous', 4, '2017-05-18 09:55:51'),
(5, 1, 'Mr. dgdfh dhsdhf', 1, '2017-05-18 10:34:23'),
(6, 3, 'Anonymous', 1, '2017-05-18 10:34:25'),
(7, 2, 'fdhdfh', 4, '2017-05-18 10:34:29'),
(8, 1, 'Mr. ery36 dfh', 4, '2017-05-18 10:34:34'),
(9, 1, 'Mr. w5t4w5 643346', 1, '2017-05-18 10:39:25'),
(10, 2, '3646', 1, '2017-05-18 10:39:28'),
(11, 3, 'Anonymous', 1, '2017-05-18 10:39:30'),
(12, 1, 'Mr. dsgdf 645gz', 3, '2017-05-18 10:48:56'),
(13, 2, '4df574g', 3, '2017-05-18 10:49:47'),
(14, 2, 'we64e6', 1, '2017-05-18 10:50:37'),
(15, 3, 'Anonymous', 4, '2017-05-18 10:50:50'),
(16, 2, 'gdf7547', 3, '2017-05-18 10:53:07'),
(17, 3, 'Anonymous', 3, '2017-05-18 10:53:56'),
(18, 3, 'Anonymous', 1, '2017-05-18 10:54:29'),
(19, 2, '', 1, '2017-05-18 10:55:05'),
(20, 3, 'Anonymous', 3, '2017-05-18 10:57:35'),
(21, 3, 'Anonymous', 4, '2017-05-18 10:58:15'),
(22, 3, 'Anonymous', 1, '2017-05-18 10:59:01'),
(23, 1, 'Mr.  ', 1, '2017-05-18 11:06:41'),
(24, 3, 'Anonymous', 4, '2017-05-18 11:07:01'),
(25, 2, '', 4, '2017-05-18 11:15:16'),
(26, 1, 'Mr. Kane citizen', 4, '2017-05-18 11:18:02'),
(27, 1, 'Mr.  ', 1, '2017-05-18 11:18:13'),
(28, 0, 'Anonymous', 4, '2017-05-18 11:18:20'),
(29, 1, 'Mr.  ', 1, '2017-05-18 11:19:20'),
(30, 3, 'Anonymous', 1, '2017-05-18 11:21:20'),
(31, 3, 'Anonymous', 1, '2017-05-18 11:21:26'),
(32, 2, '       ', 3, '2017-05-18 11:21:37');

-- --------------------------------------------------------

--
-- Table structure for table `service_list`
--

CREATE TABLE `service_list` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_list`
--

INSERT INTO `service_list` (`id`, `name`) VALUES
(1, 'Housing'),
(2, 'Benefits'),
(3, 'Council Tax'),
(4, 'Fly-Tipping'),
(5, 'Missed Bin');

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `title`) VALUES
(1, 'Mr.'),
(2, 'Mrs.'),
(3, 'Ms.'),
(4, 'Dr.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_types`
--
ALTER TABLE `customer_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queue`
--
ALTER TABLE `queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `served_customers`
--
ALTER TABLE `served_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_list`
--
ALTER TABLE `service_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_types`
--
ALTER TABLE `customer_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `queue`
--
ALTER TABLE `queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `served_customers`
--
ALTER TABLE `served_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `service_list`
--
ALTER TABLE `service_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
