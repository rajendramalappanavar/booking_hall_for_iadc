-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 23, 2021 at 04:22 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iadc`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `booking_id` int(5) NOT NULL,
  `staff_name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dept` text COLLATE utf8_unicode_ci NOT NULL,
  `hall_name` text COLLATE utf8_unicode_ci NOT NULL,
  `dates` text COLLATE utf8_unicode_ci NOT NULL,
  `fromtime` text COLLATE utf8_unicode_ci NOT NULL,
  `totime` text COLLATE utf8_unicode_ci NOT NULL,
  `class` text COLLATE utf8_unicode_ci NOT NULL,
  `purpose` text COLLATE utf8_unicode_ci NOT NULL,
  `booked_time` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`booking_id`, `staff_name`, `email`, `dept`, `hall_name`, `dates`, `fromtime`, `totime`, `class`, `purpose`, `booked_time`) VALUES
(8, 'Avani', 'avani@gmail.com', 'computer science', 'Seminar Hall 1', '2021-05-02', '5', '6', 'BCA 1', 'Coding', 1624457847593),
(9, 'Avani', 'avani@gmail.com', 'computer science', 'Seminar Hall 1', '2021-05-02', '1', '2', 'BCA 1', 'Coding', 1624457847593);

-- --------------------------------------------------------

--
-- Table structure for table `cancelled_details`
--

CREATE TABLE `cancelled_details` (
  `cancelled_table_id` int(5) NOT NULL,
  `staff_name` text NOT NULL,
  `email` text NOT NULL,
  `dept` text NOT NULL,
  `hall_name` text NOT NULL,
  `dates` text NOT NULL,
  `fromtime` int(2) NOT NULL,
  `totime` int(2) NOT NULL,
  `booked_time` text NOT NULL,
  `cancelled_time` bigint(15) NOT NULL,
  `class` text NOT NULL,
  `booked_purpose` text NOT NULL,
  `booking_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cancelled_details`
--

INSERT INTO `cancelled_details` (`cancelled_table_id`, `staff_name`, `email`, `dept`, `hall_name`, `dates`, `fromtime`, `totime`, `booked_time`, `cancelled_time`, `class`, `booked_purpose`, `booking_id`) VALUES
(8, 'Avani', 'avani@gmail.com', 'computer science', 'Seminar Hall 1', '2021-05-02', 2, 3, '1624457847593', 1624457847593, 'BCA 1', 'Coding', 11);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(5) NOT NULL,
  `staff_name` text NOT NULL,
  `dept` text NOT NULL,
  `staff_phone` bigint(10) NOT NULL,
  `staff_address` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_name`, `dept`, `staff_phone`, `staff_address`, `email`, `password`) VALUES
(1, 'Avani', 'Computer Science', 8971357478, '#16 c/o savi nenapu nilaya 1st main 1st cross JCR layout\r\nnear hello kids pre kids school +91 8971357478', 'avani@gmail.com', '$2a$08$OHqfyyUKmKrJwJEtzcjgmOfgzNS6y7T4uEGR1PwMLogvQTtPbFkku'),
(2, 'Rajendra', 'Computer Science', 8971357478, '#16 c/o savi nenapu nilaya 1st main 1st cross JCR layout\r\nnear hello kids pre kids school +91 8971357478', 'vajrakayu666@gmail.com', '$2a$08$KdeTLplPxcSjxtazhuKxkuLyeuNnsVgxgXBJgZCJNQjOMA1angkPC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `cancelled_details`
--
ALTER TABLE `cancelled_details`
  ADD PRIMARY KEY (`cancelled_table_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `booking_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cancelled_details`
--
ALTER TABLE `cancelled_details`
  MODIFY `cancelled_table_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
