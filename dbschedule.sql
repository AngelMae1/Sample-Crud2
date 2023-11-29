-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2023 at 10:31 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbschedule`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `subject_id` int(12) NOT NULL,
  `subject_code` int(12) NOT NULL,
  `subject_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`subject_id`, `subject_code`, `subject_name`) VALUES
(1, 1, 'math'),
(5, 1, 'math'),
(7, 1, 'math');

-- --------------------------------------------------------

--
-- Table structure for table `tblsyllabus`
--

CREATE TABLE `tblsyllabus` (
  `syllabus_id` int(12) NOT NULL,
  `subject_id` int(12) NOT NULL,
  `syllabus_code` int(12) NOT NULL,
  `syllabus_author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsyllabus`
--

INSERT INTO `tblsyllabus` (`syllabus_id`, `subject_id`, `syllabus_code`, `syllabus_author`) VALUES
(0, 1, 32, 'fsdm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `tblsyllabus`
--
ALTER TABLE `tblsyllabus`
  ADD PRIMARY KEY (`syllabus_id`),
  ADD KEY `tblsyllabus_ibfk_1` (`subject_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `subject_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
