-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2021 at 10:04 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tut_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `campus`
--

CREATE TABLE `campus` (
  `from_to` varchar(50) NOT NULL,
  `campusName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `campus`
--

INSERT INTO `campus` (`from_to`, `campusName`) VALUES
('south_north', 'SOUTH'),
('south_north', 'NORTH'),
('north_south', 'NORTH'),
('north_south', 'SOUTH'),
('south_arcadia', 'SOUTH'),
('south_arcadia', 'ARCADIA'),
('arcadia_south', 'SOUTH'),
('arcadia_south', 'ARCADIA'),
('south_pretoria', 'SOUTH'),
('south_pretora', 'PRETORIA'),
('pretoria_south', 'PRETORIA'),
('pretoria_south', 'SOUTH'),
('garankua_south', 'GARANKUA'),
('garankua_south', 'SOUTH'),
('south_garankua', 'SOUTH'),
('south_garankua', 'GARANKUA'),
('north_pretoria', 'NORTH'),
('north_pretoria', 'PRETORIA'),
('pretoria_north', 'PROTORIA'),
('pretoria_north', 'NORTH'),
('north_garankua', 'NORTH'),
('north_garankua', 'GARANKUA'),
('garankua_north', 'GARANKUA'),
('garankua_north', 'NORTH'),
('north_arcadia', 'NORTH'),
('north_arcadia', 'ARCADIA'),
('arcadia_north', 'ARCADIA'),
('arcadia_north', 'NORTH');

-- --------------------------------------------------------

--
-- Table structure for table `notice_board`
--

CREATE TABLE `notice_board` (
  `notice_id` int(10) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `details` text NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notice_board`
--

INSERT INTO `notice_board` (`notice_id`, `subject`, `details`, `date`) VALUES
(9, 'RESERVATIONS!!!', 'Dear students Please note that Reservations are now open!!! Note that from now you wont be able to access the tut bus without a proof of reservations', '2021-11-18 13:59:56'),
(10, 'NO BOOKING FOR SOSHA,PRETORIA AND GARANKUA STUDENTS', 'Dear students please note the booking for sosha, pretoria and garankua is currently closed because of a strike that is taking place..', '2021-11-19 22:05:19'),
(11, 'SUSPENSSION OF CONTACT CLASSES', 'Due to the continuous increase in positive COVID-19 cases i n the country ,and especially Gauteng, TUT management yesterday resolved to suspend contact classes .So please not Bus booking will be closed until further notice.', '2021-11-21 12:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `student_booking`
--

CREATE TABLE `student_booking` (
  `id` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `bookid` int(10) NOT NULL,
  `date_booked` varchar(50) NOT NULL,
  `reference` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `time_id` int(50) NOT NULL,
  `from_to` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `numBooked` int(10) NOT NULL,
  `notAllowed` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`time_id`, `from_to`, `time`, `numBooked`, `notAllowed`) VALUES
(45, 'south_north', '08:00', 0, 1),
(46, 'south_north', '08:30', 0, 1),
(47, 'south_north', '09:00', 0, 1),
(48, 'south_north', '09:30', 0, 1),
(49, 'south_north', '10:00', 0, 1),
(50, 'south_north', '10:30', 0, 1),
(51, 'south_north', '11:00', 2, 1),
(52, 'north_south', '11:30', 1, 0),
(53, 'south_north', '12:00', 0, 1),
(54, 'south_north', '12:30', 56, 1),
(55, 'south_north', '13:00', 0, 1),
(56, 'south_arcadia', '07:00', 0, 1),
(57, 'south_arcadia', '08:00', 0, 1),
(58, 'south_arcadia', '23:00', 118, 1),
(59, 'south_arcadia', '10:00', 0, 1),
(60, 'south_arcadia', '11:00', 0, 1),
(61, 'south_arcadia', '00:00', 0, 1),
(62, 'arcadia_south', '13:00', 142, 1),
(63, 'south_arcadia', '14:00', 261, 1),
(64, 'south_pretoria', '07:00', 0, 0),
(65, 'south_pretoria', '09:00', 0, 0),
(66, 'south_pretoria', '23:00', 0, 0),
(67, 'south_pretoria', '11:00', 0, 0),
(68, 'south_pretoria', '12:00', 0, 0),
(69, 'south_pretoria', '13:00', 0, 0),
(70, 'south_garankua', '07:00', 0, 0),
(71, 'south_garankua', '09:00', 0, 0),
(72, 'south_garankua', '11:00', 0, 0),
(73, 'south_north', '07:00', 0, 1),
(74, 'south_north', '07:00', 0, 1),
(75, 'south_north', '23:00', 1, 1),
(76, 'pretoria_arcadia', '18:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email` varchar(50) NOT NULL COMMENT 'Student Number for client',
  `username` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `login_type` int(50) NOT NULL COMMENT '1-Client 2-Admin',
  `code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `username`, `first_name`, `surname`, `password`, `login_type`, `code`) VALUES
('12345678', 'ikesambo48@gmail.com', 'Makhensa', 'Makhe', 'Beanca47@@', 1, ''),
('21835216', '218352162@tut4life.ac.za', 'Makhensa Ike', 'Sambo', 'Beanca47@@', 1, ''),
('21835217', 'samboikee@gmail.com', 'SAMBO MAKHENSA', 'SAMBO', 'makhensa', 1, ''),
('ikesambo47@gmail.com', 'ikesambo47@gmail.com', 'Jabulani Sheldon', 'Maluleke', 'Admin123', 2, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notice_board`
--
ALTER TABLE `notice_board`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `student_booking`
--
ALTER TABLE `student_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`time_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notice_board`
--
ALTER TABLE `notice_board`
  MODIFY `notice_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student_booking`
--
ALTER TABLE `student_booking`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `time_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
