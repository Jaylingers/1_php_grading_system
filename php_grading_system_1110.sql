-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2023 at 03:03 PM
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
-- Table structure for table `grade_info`
--

CREATE TABLE IF NOT EXISTS `grade_info` (
  `id` int(11) NOT NULL,
  `grade` int(11) NOT NULL DEFAULT '0',
  `section` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grade_info`
--

INSERT INTO `grade_info` (`id`, `grade`, `section`) VALUES
(1, 1, 'section a'),
(3, 2, 'section b'),
(4, 3, 'section c');

-- --------------------------------------------------------

--
-- Table structure for table `page_visited_info`
--

CREATE TABLE IF NOT EXISTS `page_visited_info` (
  `id` int(11) NOT NULL,
  `user_id` int(25) NOT NULL DEFAULT '0',
  `date_visited` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `page_visited_info`
--

INSERT INTO `page_visited_info` (`id`, `user_id`, `date_visited`) VALUES
(1, 10, '2023-11-09 20:17:11'),
(2, 11, '2023-11-09 20:17:32'),
(3, 10, '2023-11-10 20:50:29'),
(4, 11, '2023-11-10 21:07:47'),
(5, 14, '2023-11-10 22:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `promoted_info`
--

CREATE TABLE IF NOT EXISTS `promoted_info` (
  `id` int(11) NOT NULL,
  `student_lrn` varchar(50) DEFAULT NULL,
  `teacher_lrn` varchar(50) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `promoted_info`
--

INSERT INTO `promoted_info` (`id`, `student_lrn`, `teacher_lrn`, `grade`, `section`, `date`) VALUES
(14, 'S0000001', 'T0000002', 3, 'section b', '2023-11-10');

-- --------------------------------------------------------

--
-- Table structure for table `promoted_students_history`
--

CREATE TABLE IF NOT EXISTS `promoted_students_history` (
  `id` int(11) NOT NULL,
  `student_lrn` varchar(50) NOT NULL DEFAULT '',
  `teacher_lrn` varchar(25) NOT NULL,
  `grade` int(11) NOT NULL DEFAULT '0',
  `section` varchar(25) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promoted_students_history`
--

INSERT INTO `promoted_students_history` (`id`, `student_lrn`, `teacher_lrn`, `grade`, `section`, `date`) VALUES
(11, 'S0000001', 'T0000001', 1, 'section a', '2023-11-10'),
(12, 'S0000001', 'T0000002', 2, 'section b', '2023-11-10');

-- --------------------------------------------------------

--
-- Table structure for table `school_years_info`
--

CREATE TABLE IF NOT EXISTS `school_years_info` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL DEFAULT '0',
  `current` varchar(25) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school_years_info`
--

INSERT INTO `school_years_info` (`id`, `year`, `current`) VALUES
(1, 2023, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `students_enrollment_info`
--

CREATE TABLE IF NOT EXISTS `students_enrollment_info` (
  `id` int(11) NOT NULL,
  `students_info_lrn` varchar(50) NOT NULL,
  `grade` int(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `school_year` int(25) NOT NULL,
  `date_enrolled` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `grade_status` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students_enrollment_info`
--

INSERT INTO `students_enrollment_info` (`id`, `students_info_lrn`, `grade`, `section`, `school_year`, `date_enrolled`, `status`, `grade_status`) VALUES
(10, 'S0000001', 1, 'section a', 2016, '2023-11-02', 'new', 'Passed'),
(15, 'S0000001', 2, 'section b', 2023, '2023-11-10', 'Enrolled', 'Passed'),
(16, 'S0000001', 3, '', 2023, '2023-11-10', 'Enrolled', 'Promoted');

-- --------------------------------------------------------

--
-- Table structure for table `students_grade_attendance_info`
--

CREATE TABLE IF NOT EXISTS `students_grade_attendance_info` (
  `id` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `student_lrn` varchar(25) NOT NULL DEFAULT '',
  `teacher_lrn` varchar(25) DEFAULT NULL,
  `june_days_classes` int(11) DEFAULT NULL,
  `june_days_presents` int(11) DEFAULT NULL,
  `july_days_classes` int(11) DEFAULT NULL,
  `july_days_presents` int(11) DEFAULT NULL,
  `aug_days_classes` int(11) DEFAULT NULL,
  `aug_days_presents` int(11) DEFAULT NULL,
  `sep_days_classes` int(11) DEFAULT NULL,
  `sep_days_presents` int(11) DEFAULT NULL,
  `oct_days_classes` int(11) DEFAULT NULL,
  `oct_days_presents` int(11) DEFAULT NULL,
  `nov_days_classes` int(11) DEFAULT NULL,
  `nov_days_presents` int(11) DEFAULT NULL,
  `dec_days_classes` int(11) DEFAULT NULL,
  `dec_days_presents` int(11) DEFAULT NULL,
  `jan_days_classes` int(11) DEFAULT NULL,
  `jan_days_presents` int(11) DEFAULT NULL,
  `feb_days_classes` int(11) DEFAULT NULL,
  `feb_days_presents` int(11) DEFAULT NULL,
  `mar_days_classes` int(11) DEFAULT NULL,
  `mar_days_presents` int(11) DEFAULT NULL,
  `apr_days_classes` int(11) DEFAULT NULL,
  `apr_days_presents` int(11) DEFAULT NULL,
  `may_days_classes` int(11) DEFAULT NULL,
  `may_days_presents` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students_grade_attendance_info`
--

INSERT INTO `students_grade_attendance_info` (`id`, `grade`, `student_lrn`, `teacher_lrn`, `june_days_classes`, `june_days_presents`, `july_days_classes`, `july_days_presents`, `aug_days_classes`, `aug_days_presents`, `sep_days_classes`, `sep_days_presents`, `oct_days_classes`, `oct_days_presents`, `nov_days_classes`, `nov_days_presents`, `dec_days_classes`, `dec_days_presents`, `jan_days_classes`, `jan_days_presents`, `feb_days_classes`, `feb_days_presents`, `mar_days_classes`, `mar_days_presents`, `apr_days_classes`, `apr_days_presents`, `may_days_classes`, `may_days_presents`) VALUES
(6, 1, 'S0000001', 'T0000001', 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 2, 'S0000001', 'T0000002', 11, 11, 22, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `students_grade_average_info`
--

CREATE TABLE IF NOT EXISTS `students_grade_average_info` (
  `id` int(11) NOT NULL,
  `students_lrn` varchar(25) NOT NULL DEFAULT '',
  `grade` int(11) NOT NULL,
  `average` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students_grade_average_info`
--

INSERT INTO `students_grade_average_info` (`id`, `students_lrn`, `grade`, `average`) VALUES
(6, 'S0000001', 1, 77),
(8, 'S0000001', 2, 90);

-- --------------------------------------------------------

--
-- Table structure for table `students_grade_info`
--

CREATE TABLE IF NOT EXISTS `students_grade_info` (
  `id` int(11) NOT NULL,
  `student_lrn` varchar(25) NOT NULL DEFAULT '',
  `teacher_lrn` varchar(25) NOT NULL,
  `subject` varchar(25) NOT NULL,
  `grade` varchar(25) NOT NULL,
  `first_grade` int(11) DEFAULT NULL,
  `second_grade` int(11) DEFAULT NULL,
  `third_grade` int(11) DEFAULT NULL,
  `fourth_grade` int(11) DEFAULT NULL,
  `final` int(11) DEFAULT NULL,
  `units` int(11) NOT NULL,
  `status` varchar(25) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students_grade_info`
--

INSERT INTO `students_grade_info` (`id`, `student_lrn`, `teacher_lrn`, `subject`, `grade`, `first_grade`, `second_grade`, `third_grade`, `fourth_grade`, `final`, `units`, `status`) VALUES
(6, 'S0000001', 'T0000001', 'Math', '1', 100, 70, 70, 70, 78, 0, 'Passed'),
(8, 'S0000001', 'T0000002', 'Filipino', '2', 0, 0, 0, 0, 90, 0, 'Passed');

-- --------------------------------------------------------

--
-- Table structure for table `students_info`
--

CREATE TABLE IF NOT EXISTS `students_info` (
  `id` int(4) NOT NULL,
  `lrn` varchar(25) NOT NULL,
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
  `guardian_name` varchar(50) NOT NULL,
  `addedBy` int(11) NOT NULL,
  `teacher_lrn` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students_info`
--

INSERT INTO `students_info` (`id`, `lrn`, `f_name`, `l_name`, `m_name`, `gender`, `b_date`, `b_place`, `c_status`, `age`, `nationality`, `religion`, `contact_number`, `email_address`, `home_address`, `guardian_name`, `addedBy`, `teacher_lrn`) VALUES
(1, 'S0000001', 'f', 'student1', 'm', 'Female', '2023-12-31', 'b', 'Single', 1, 'n', 'r', 'c', 'student1@gmail.com', 'h', 'g', 10, '');

-- --------------------------------------------------------

--
-- Table structure for table `subject_list_info`
--

CREATE TABLE IF NOT EXISTS `subject_list_info` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL DEFAULT '',
  `applicable_for` varchar(25) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject_list_info`
--

INSERT INTO `subject_list_info` (`id`, `name`, `applicable_for`, `description`) VALUES
(5, 'Filipino', 'all', ' sds'),
(4, 'Math', 'all', ' 232'),
(6, 'Science', 'all', ' sd');

-- --------------------------------------------------------

--
-- Table structure for table `teachers_info`
--

CREATE TABLE IF NOT EXISTS `teachers_info` (
  `id` int(11) NOT NULL,
  `lrn` varchar(25) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `civil_status` varchar(25) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `section` varchar(25) NOT NULL,
  `grade` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers_info`
--

INSERT INTO `teachers_info` (`id`, `lrn`, `first_name`, `last_name`, `address`, `gender`, `civil_status`, `email_address`, `section`, `grade`) VALUES
(6, 'T0000001', 'teacher1', 'lastname', 'address1', 'Male', 'Single', 'teacher1@gmail.com', 'section a', '1'),
(7, 'T0000002', 'teacher2', 'lastname', 'address', 'Male', 'Single', 'teacher2@gmail.com', 'section b', '2'),
(8, 'T0000003', 'teacher3', 'lastname', 'address', 'Male', 'Single', 'teacher3@gmail.com', 'section c', '3');

-- --------------------------------------------------------

--
-- Table structure for table `teachers_subject_info`
--

CREATE TABLE IF NOT EXISTS `teachers_subject_info` (
  `id` int(11) NOT NULL,
  `teachers_lrn` varchar(25) NOT NULL,
  `subject` varchar(25) NOT NULL,
  `room` varchar(25) NOT NULL,
  `schedule_time_in` time NOT NULL,
  `schedule_time_out` time NOT NULL,
  `schedule_day` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers_subject_info`
--

INSERT INTO `teachers_subject_info` (`id`, `teachers_lrn`, `subject`, `room`, `schedule_time_in`, `schedule_time_out`, `schedule_day`) VALUES
(6, 'T0000001', 'Math', 'roo1', '08:32:00', '17:32:00', 'MON'),
(7, 'T0000002', 'Filipino', 'room2', '08:39:00', '20:39:00', 'TUES');

-- --------------------------------------------------------

--
-- Table structure for table `trash_info`
--

CREATE TABLE IF NOT EXISTS `trash_info` (
  `id` int(11) NOT NULL,
  `user_lrn` varchar(25) NOT NULL DEFAULT '',
  `teacher_lrn` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `history` varchar(9999) DEFAULT NULL,
  `removed_date` date NOT NULL,
  `removed_by` varchar(25) NOT NULL,
  `position` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_info`
--

CREATE TABLE IF NOT EXISTS `users_info` (
  `id` int(11) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `user_type` varchar(25) NOT NULL,
  `user_lrn` varchar(25) NOT NULL,
  `img_path` varchar(255) NOT NULL,
  `dark_mode` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_info`
--

INSERT INTO `users_info` (`id`, `last_name`, `first_name`, `username`, `password`, `email`, `user_type`, `user_lrn`, `img_path`, `dark_mode`) VALUES
(1, 'limpangog', 'daisy', 'admin', 'admin', '', 'admin', '1', '', 0),
(14, 'student1', 'f', 'S0000001', 'student1', '', 'student', 'S0000001', '', 0),
(10, 'lastname', 'teacher1', 'T0000001', 'lastname', '', 'teacher', 'T0000001', '', 0),
(11, 'lastname', 'teacher2', 'T0000002', 'lastname', '', 'teacher', 'T0000002', '', 0),
(13, 'lastname', 'teacher3', 'T0000003', 'lastname', '', 'teacher', 'T0000003', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grade_info`
--
ALTER TABLE `grade_info`
  ADD PRIMARY KEY (`grade`,`section`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `page_visited_info`
--
ALTER TABLE `page_visited_info`
  ADD PRIMARY KEY (`id`,`user_id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `promoted_info`
--
ALTER TABLE `promoted_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promoted_students_history`
--
ALTER TABLE `promoted_students_history`
  ADD PRIMARY KEY (`student_lrn`,`grade`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `school_years_info`
--
ALTER TABLE `school_years_info`
  ADD PRIMARY KEY (`year`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `students_enrollment_info`
--
ALTER TABLE `students_enrollment_info`
  ADD PRIMARY KEY (`students_info_lrn`,`grade`,`school_year`), ADD UNIQUE KEY `id` (`id`), ADD KEY `students_info_lrn` (`students_info_lrn`);

--
-- Indexes for table `students_grade_attendance_info`
--
ALTER TABLE `students_grade_attendance_info`
  ADD PRIMARY KEY (`grade`,`student_lrn`), ADD UNIQUE KEY `id` (`id`), ADD KEY `student_lrn` (`student_lrn`);

--
-- Indexes for table `students_grade_average_info`
--
ALTER TABLE `students_grade_average_info`
  ADD PRIMARY KEY (`students_lrn`,`grade`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `students_grade_info`
--
ALTER TABLE `students_grade_info`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `students_info`
--
ALTER TABLE `students_info`
  ADD PRIMARY KEY (`lrn`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `subject_list_info`
--
ALTER TABLE `subject_list_info`
  ADD PRIMARY KEY (`name`,`applicable_for`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `teachers_info`
--
ALTER TABLE `teachers_info`
  ADD PRIMARY KEY (`lrn`,`grade`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `teachers_subject_info`
--
ALTER TABLE `teachers_subject_info`
  ADD PRIMARY KEY (`teachers_lrn`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `trash_info`
--
ALTER TABLE `trash_info`
  ADD PRIMARY KEY (`user_lrn`,`teacher_lrn`), ADD UNIQUE KEY `id` (`id`), ADD KEY `teacher_lrn` (`teacher_lrn`);

--
-- Indexes for table `users_info`
--
ALTER TABLE `users_info`
  ADD PRIMARY KEY (`user_lrn`), ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grade_info`
--
ALTER TABLE `grade_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `page_visited_info`
--
ALTER TABLE `page_visited_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `promoted_info`
--
ALTER TABLE `promoted_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `promoted_students_history`
--
ALTER TABLE `promoted_students_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `school_years_info`
--
ALTER TABLE `school_years_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `students_enrollment_info`
--
ALTER TABLE `students_enrollment_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `students_grade_attendance_info`
--
ALTER TABLE `students_grade_attendance_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `students_grade_average_info`
--
ALTER TABLE `students_grade_average_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `students_grade_info`
--
ALTER TABLE `students_grade_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `students_info`
--
ALTER TABLE `students_info`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `subject_list_info`
--
ALTER TABLE `subject_list_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `teachers_info`
--
ALTER TABLE `teachers_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `teachers_subject_info`
--
ALTER TABLE `teachers_subject_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `trash_info`
--
ALTER TABLE `trash_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_info`
--
ALTER TABLE `users_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
