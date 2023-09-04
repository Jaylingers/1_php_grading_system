-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2023 at 04:30 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `php_grading_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins_info`
--

CREATE TABLE IF NOT EXISTS `admins_info` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins_info`
--

INSERT INTO `admins_info` (`id`, `username`, `password`, `email`) VALUES
(1, 'jaylingers', '123', 'jaylingers@gmail.com'),
(2, 'jhon', '123', 'jhon@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `students_enrollment_info`
--

CREATE TABLE IF NOT EXISTS `students_enrollment_info` (
  `id` int(11) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `school_year` date NOT NULL,
  `date_enrolled` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `students_info_id` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students_enrollment_info`
--

INSERT INTO `students_enrollment_info` (`id`, `grade`, `school_year`, `date_enrolled`, `status`, `students_info_id`) VALUES
(1, 'Grade 4', '0000-00-00', '0000-00-00', 'continuing', 'S0000256'),
(2, 'Grade 5', '0000-00-00', '0000-00-00', 'as', 'S0000257'),
(12, '', '0000-00-00', '0000-00-00', '', 'S0000256'),
(13, '', '0000-00-00', '0000-00-00', '', 'S0000256'),
(14, '', '0000-00-00', '0000-00-00', '', 'S0000256'),
(15, '', '0000-00-00', '0000-00-00', '', 'S0000256'),
(16, '', '0000-00-00', '0000-00-00', '', 'S0000256'),
(17, '', '0000-00-00', '0000-00-00', '', 'S0000256');

-- --------------------------------------------------------

--
-- Table structure for table `students_info`
--

CREATE TABLE IF NOT EXISTS `students_info` (
  `id` int(4) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `m_name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `b_date` date NOT NULL,
  `b_place` varchar(50) NOT NULL,
  `c_status` varchar(50) NOT NULL,
  `age` int(3) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `contact_number` varchar(50) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `home_address` varchar(50) NOT NULL,
  `lrn` varchar(50) NOT NULL,
  `g_level` int(5) NOT NULL,
  `guardian_name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students_info`
--

INSERT INTO `students_info` (`id`, `f_name`, `l_name`, `m_name`, `gender`, `b_date`, `b_place`, `c_status`, `age`, `nationality`, `religion`, `contact_number`, `email_address`, `home_address`, `lrn`, `g_level`, `guardian_name`) VALUES
(256, 'fname', 'jay', 'mname', '', '2023-08-24', 'wala pa', 'wala pa', 3, 'wala pa', 'wala pa', 'wala pa', 'ajisaka@harmony21.co.jp', 'deca 3', 'S0000256', 11, ' gn'),
(257, '2', 'JAYLINGERS', '2', '', '2023-08-10', '2', '2', 2, '22', '2', '2', '2@gmail.com', '2', 'S0000257', 0, 'g');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins_info`
--
ALTER TABLE `admins_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students_enrollment_info`
--
ALTER TABLE `students_enrollment_info`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `students_info`
--
ALTER TABLE `students_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins_info`
--
ALTER TABLE `admins_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `students_enrollment_info`
--
ALTER TABLE `students_enrollment_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `students_info`
--
ALTER TABLE `students_info`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=267;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
