-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 05, 2018 at 06:23 PM
-- Server version: 5.7.22-0ubuntu0.17.10.1
-- PHP Version: 7.1.17-0ubuntu0.17.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` varchar(8) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phoneNo` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `isStaff` int(11) NOT NULL DEFAULT '0',
  `isAdmin` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `name`, `phoneNo`, `email`, `password`, `isStaff`, `isAdmin`) VALUES
('admin001', 'Malathi', 8876543987, 'malathi@gmail.com', 'malathiadmin001', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `sNo` int(11) NOT NULL,
  `regNo` varchar(10) NOT NULL,
  `courseId` varchar(10) NOT NULL,
  `file` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `sNo` int(11) NOT NULL,
  `regNo` varchar(8) NOT NULL,
  `section` varchar(3) NOT NULL,
  `courseId` varchar(8) NOT NULL,
  `daysPresent` int(11) DEFAULT NULL,
  `noOfDays` int(11) DEFAULT NULL,
  `absentLog` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`sNo`, `regNo`, `section`, `courseId`, `daysPresent`, `noOfDays`, `absentLog`) VALUES
(1, '16c001', 'A', '14cs540', 11, 12, ''),
(2, '16c002', 'A', '14cs540', 8, 12, '2,4,5,6'),
(3, '16c003', 'A', '14cs540', 9, 12, ''),
(4, '16c004', 'B', '14cs540', 12, 12, ''),
(5, '16c005', 'B', '14cs540', 12, 12, ''),
(6, '16c006', 'B', '14cs540', 11, 12, ''),
(7, '16c007', 'B', '14cs540', 9, 12, ''),
(8, '16c008', 'B', '14cs540', 12, 12, ''),
(9, '16c001', 'A', '14cs521', 11, 12, ''),
(10, '16c002', 'A', '14cs521', 12, 12, ''),
(11, '16c003', 'B', '14cs521', 12, 12, ''),
(12, '16c004', 'B', '14cs521', 11, 12, ''),
(13, '16c006', 'A', '14cs521', 11, 12, ''),
(14, '16c007', 'A', '14cs521', 12, 12, ''),
(15, '16c008', 'B', '14cs521', 12, 12, ''),
(17, '16c001', 'A', '14cs580', 7, 8, ''),
(19, '16c002', 'B', '14cs580', 4, 8, ''),
(20, '16c003', 'C', '14cs580', 6, 8, ''),
(21, '16c004', 'D', '14cs580', 8, 8, ''),
(22, '16c005', 'A', '14cs580', 7, 8, ''),
(23, '16c006', 'B', '14cs580', 8, 8, ''),
(24, '16c007', 'C', '14cs580', 7, 8, ''),
(25, '16c008', 'D', '14cs580', 6, 8, ''),
(26, '16c001', 'A', '14cs590', 8, 8, ''),
(27, '16c002', 'B', '14cs590', 5, 8, ''),
(28, '16c003', 'C', '14cs590', 12, 12, ''),
(29, '16c004', 'D', '14cs590', 12, 12, ''),
(30, '16c005', 'A', '14cs590', 10, 12, ''),
(31, '16c006', 'B', '14cs590', 11, 12, ''),
(32, '16c007', 'C', '14cs590', 9, 12, ''),
(33, '16c008', 'D', '14cs590', 10, 12, ''),
(34, '16c001', 'B', '14cs570', 10, 12, ''),
(35, '16c002', 'A', '14cs570', 7, 12, ''),
(36, '16c003', 'A', '14cs570', 12, 12, ''),
(37, '16c004', 'B', '14cs570', 10, 12, ''),
(38, '16c005', 'A', '14cs570', 11, 12, ''),
(39, '16c006', 'B', '14cs570', 12, 12, ''),
(40, '16c007', 'B', '14cs570', 11, 12, ''),
(41, '16c008', 'A', '14cs570', 10, 12, ''),
(42, '16c001', 'A', '14cs530', 12, 12, ''),
(43, '16c002', 'B', '14cs530', 10, 12, ''),
(44, '16c003', 'A', '14cs530', 12, 12, ''),
(45, '16c004', 'A', '14cs530', 12, 12, ''),
(46, '16c005', 'B', '14cs530', 12, 12, ''),
(47, '16c006', 'B', '14cs530', 10, 12, ''),
(48, '16c007', 'B', '14cs530', 9, 12, ''),
(49, '16c008', 'A', '14cs530', 10, 12, ''),
(51, '16c001', '-', '14csPR0', 12, 12, ''),
(52, '16c003', '-', '14csPR0', 12, 12, ''),
(53, '16c004', '-', '14csPR0', 11, 12, ''),
(54, '16c005', '-', '14csPR0', 11, 12, ''),
(55, '16c002', '-', '14csPB0', 12, 12, ''),
(56, '16c006', '-', '14csPB0', 11, 12, ''),
(57, '16c007', '-', '14csPB0', 4, 12, ''),
(58, '16c008', '-', '14csPB0', 5, 12, ''),
(59, '16c001', 'A', '14csPJ0', 12, 12, ''),
(60, '16c007', 'A', '14csPJ0', 10, 12, ''),
(61, '16c003', 'B', '14csPJ0', 12, 12, ''),
(62, '16c004', 'B', '14csPJ0', 12, 12, ''),
(63, '16c005', 'B', '14csPJ0', 12, 12, '');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseId` varchar(8) NOT NULL,
  `courseName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseId`, `courseName`) VALUES
('14cs540', 'ComputerArchitecture'),
('14cs521', 'ComputerNetworks'),
('14cs580', 'DatabaseLab'),
('14csPB0', 'DataWarehousingAndMining'),
('14csPJ0', 'DesignAndAnalysisOfAlgorithmII'),
('14csPR0', 'KernelProgramming'),
('14cs590', 'NetworkProgrammingLab'),
('14cs570', 'SoftwareEngineering'),
('14cs530', 'TheoryOfComputation');

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE `mark` (
  `sNo` int(11) NOT NULL,
  `regNo` varchar(12) NOT NULL,
  `section` varchar(3) NOT NULL,
  `courseId` varchar(12) NOT NULL,
  `cat1` int(11) DEFAULT NULL,
  `assignment1` int(11) DEFAULT NULL,
  `cat2` int(11) DEFAULT NULL,
  `assignment2` int(11) DEFAULT NULL,
  `cat3` int(11) DEFAULT NULL,
  `assignment3` int(11) DEFAULT NULL,
  `terminal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`sNo`, `regNo`, `section`, `courseId`, `cat1`, `assignment1`, `cat2`, `assignment2`, `cat3`, `assignment3`, `terminal`) VALUES
(1, '16c001', 'A', '14cs540', 45, 10, NULL, NULL, NULL, NULL, NULL),
(2, '16c002', 'A', '14cs540', 33, 10, NULL, NULL, NULL, NULL, NULL),
(3, '16c003', 'A', '14cs540', 49, 10, NULL, NULL, NULL, NULL, NULL),
(4, '16c004', 'B', '14cs540', 23, 10, NULL, NULL, 23, NULL, NULL),
(5, '16c005', 'B', '14cs540', 33, 9, NULL, NULL, 32, NULL, NULL),
(6, '16c006', 'B', '14cs540', 30, 10, NULL, NULL, 43, NULL, NULL),
(7, '16c007', 'B', '14cs540', 45, 7, NULL, NULL, 32, NULL, NULL),
(8, '16c008', 'B', '14cs540', 37, 10, NULL, NULL, 23, NULL, NULL),
(9, '16c001', 'A', '14cs521', 38, 10, NULL, NULL, NULL, NULL, NULL),
(10, '16c002', 'A', '14cs521', 26, 10, NULL, NULL, NULL, NULL, NULL),
(11, '16c003', 'B', '14cs521', 23, 10, NULL, NULL, NULL, NULL, NULL),
(12, '16c004', 'B', '14cs521', 34, 10, NULL, NULL, NULL, NULL, NULL),
(13, '16c006', 'A', '14cs521', 23, 10, NULL, NULL, NULL, NULL, NULL),
(14, '16c007', 'A', '14cs521', 50, 10, NULL, NULL, NULL, NULL, NULL),
(15, '16c008', 'B', '14cs521', 43, 10, NULL, NULL, NULL, NULL, NULL),
(17, '16c001', 'A', '14cs580', 22, 9, NULL, NULL, 43, NULL, NULL),
(19, '16c002', 'B', '14cs580', 30, 9, NULL, NULL, NULL, NULL, NULL),
(20, '16c003', 'C', '14cs580', 28, 10, NULL, NULL, NULL, NULL, NULL),
(21, '16c004', 'D', '14cs580', 39, 10, NULL, NULL, NULL, NULL, NULL),
(22, '16c005', 'A', '14cs580', 23, 9, NULL, NULL, 45, NULL, NULL),
(23, '16c006', 'B', '14cs580', 19, 8, NULL, NULL, NULL, NULL, NULL),
(24, '16c007', 'C', '14cs580', 49, 9, NULL, NULL, NULL, NULL, NULL),
(25, '16c008', 'D', '14cs580', 48, 6, NULL, NULL, NULL, NULL, NULL),
(26, '16c001', 'A', '14cs590', 42, 8, NULL, NULL, NULL, NULL, NULL),
(27, '16c002', 'B', '14cs590', 49, 9, NULL, NULL, NULL, NULL, NULL),
(28, '16c003', 'C', '14cs590', 34, 9, NULL, NULL, NULL, NULL, NULL),
(29, '16c004', 'D', '14cs590', 45, 8, NULL, NULL, NULL, NULL, NULL),
(30, '16c005', 'A', '14cs590', 50, 7, NULL, NULL, NULL, NULL, NULL),
(31, '16c006', 'B', '14cs590', 34, 7, NULL, NULL, NULL, NULL, NULL),
(32, '16c007', 'C', '14cs590', 31, 9, NULL, NULL, NULL, NULL, NULL),
(33, '16c008', 'D', '14cs590', 48, 8, NULL, NULL, NULL, NULL, NULL),
(34, '16c001', 'B', '14cs570', 47, 9, NULL, NULL, NULL, NULL, NULL),
(35, '16c002', 'A', '14cs570', 46, 9, NULL, NULL, NULL, NULL, NULL),
(36, '16c003', 'A', '14cs570', 38, 10, NULL, NULL, NULL, NULL, NULL),
(37, '16c004', 'B', '14cs570', 42, 6, NULL, NULL, NULL, NULL, NULL),
(38, '16c005', 'A', '14cs570', 44, 10, NULL, NULL, NULL, NULL, NULL),
(39, '16c006', 'B', '14cs570', 29, 9, NULL, NULL, NULL, NULL, NULL),
(40, '16c007', 'B', '14cs570', 34, 8, NULL, NULL, NULL, NULL, NULL),
(41, '16c008', 'A', '14cs570', 29, 9, NULL, NULL, NULL, NULL, NULL),
(42, '16c001', 'A', '14cs530', 43, 4, NULL, NULL, NULL, NULL, NULL),
(43, '16c002', 'B', '14cs530', 21, 9, NULL, NULL, NULL, NULL, NULL),
(44, '16c003', 'A', '14cs530', 32, 8, NULL, NULL, NULL, NULL, NULL),
(45, '16c004', 'A', '14cs530', 7, 5, NULL, NULL, NULL, NULL, NULL),
(46, '16c005', 'B', '14cs530', 50, 8, NULL, NULL, NULL, NULL, NULL),
(47, '16c006', 'B', '14cs530', 45, 9, NULL, NULL, NULL, NULL, NULL),
(48, '16c007', 'B', '14cs530', 42, 10, NULL, NULL, NULL, NULL, NULL),
(49, '16c008', 'A', '14cs530', 39, 9, NULL, NULL, NULL, NULL, NULL),
(51, '16c001', '-', '14csPR0', 29, 7, NULL, NULL, NULL, NULL, NULL),
(52, '16c003', '-', '14csPR0', 23, 8, NULL, NULL, NULL, NULL, NULL),
(53, '16c004', '-', '14csPR0', 47, 9, NULL, NULL, NULL, NULL, NULL),
(54, '16c005', '-', '14csPR0', 50, 10, NULL, NULL, NULL, NULL, NULL),
(55, '16c002', '-', '14csPB0', 12, 10, NULL, NULL, NULL, NULL, NULL),
(56, '16c006', '-', '14csPB0', 30, 9, NULL, NULL, NULL, NULL, NULL),
(57, '16c007', '-', '14csPB0', 49, 8, NULL, NULL, NULL, NULL, NULL),
(58, '16c008', '-', '14csPB0', 40, 10, NULL, NULL, NULL, NULL, NULL),
(59, '16c001', 'A', '14csPJ0', 48, 8, NULL, NULL, NULL, NULL, NULL),
(60, '16c007', 'A', '14csPJ0', 40, 9, NULL, NULL, NULL, NULL, NULL),
(61, '16c003', 'B', '14csPJ0', 38, 10, NULL, NULL, NULL, NULL, NULL),
(62, '16c004', 'B', '14csPJ0', 47, 9, NULL, NULL, NULL, NULL, NULL),
(63, '16c005', 'B', '14csPJ0', 30, 10, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffId` varchar(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phoneNo` bigint(11) NOT NULL,
  `email` varchar(35) NOT NULL,
  `password` varchar(30) NOT NULL,
  `isStaff` int(11) NOT NULL DEFAULT '1',
  `isAdmin` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffId`, `name`, `phoneNo`, `email`, `password`, `isStaff`, `isAdmin`) VALUES
('cs001', 'Nirmala Devi', 8547236914, 'nirmaladevi@gmail.com', 'aaaaaa', 1, 0),
('cs002', 'Raja Lavanya', 5554712365, 'rajalavanya@gmail.com', ' rajalavanyacs002', 1, 0),
('cs003', 'Senthil Kumar', 9876556789, 'senthilkumar@gmail.com', 'senthilkumarcs003', 1, 0),
('cs004', 'Mallika Arjun', 7689009876, 'mallikaarjun@gmail.com', 'mallikaarjuncs004', 1, 0),
('cs005', 'Sundarakandham', 8900987656, 'sundarakandham@gmail.com', 'sundarakandhamcs005', 1, 0),
('cs006', 'Vijaya Lakshmi', 1234554321, 'vijayalakshmi@gmail.com', 'vijayalakshmics007', 1, 0),
('cs007', 'Emil Selvan', 9321523476, 'emilselvan@gmail.com', 'emilselvancs007', 1, 0),
('cs008', 'Shiva Kumar', 9998765445, 'shivakumar@gmail.com', 'shivakumarcs008', 1, 0),
('cs009', 'Madhu Priya', 8889876543, 'madhupriya@gmail.com', 'madhupriyacs009', 1, 0),
('cs010', 'Vignaraj Anandh', 7090865432, 'vignarajanandh@gmail.com', 'vignarajanandhcs010', 1, 0),
('cs011', 'Jane Rubelle Angellina', 8890765432, 'janerubelleangelina@gmail.com', 'janerubelleangelinacs011', 1, 0),
('cs012', 'Malini', 8777812345, 'malini@gmail.com', 'malinics012', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `staffCourse`
--

CREATE TABLE `staffCourse` (
  `sNo` int(11) NOT NULL,
  `staffId` varchar(8) NOT NULL,
  `courseId` varchar(8) NOT NULL,
  `section` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffCourse`
--

INSERT INTO `staffCourse` (`sNo`, `staffId`, `courseId`, `section`) VALUES
(1, 'cs001', '14cs580', 'A'),
(2, 'cs001', '14cs580', 'C'),
(3, 'cs002', '14csPJ0', 'A'),
(4, 'cs002', '14csPJ0', 'B'),
(5, 'cs003', '14cs540', 'B'),
(6, 'cs004', '14cs540', 'A'),
(7, 'cs004', '14cs590', 'A'),
(8, 'cs004', '14cs590', 'B'),
(9, 'cs004', '14cs590', 'C'),
(10, 'cs004', '14cs590', 'D'),
(11, 'cs005', '14cs530', 'B'),
(12, 'cs006', '14cs521', 'A'),
(13, 'cs007', '14cs590', 'A'),
(14, 'cs007', '14cs590', 'B'),
(15, 'cs007', '14cs590', 'C'),
(16, 'cs007', '14cs590', 'D'),
(17, 'cs007', '14cs521', 'B'),
(18, 'cs001', '14cs580', 'B'),
(19, 'cs001', '14cs580', 'D'),
(20, 'cs008', '14cs580', 'A'),
(21, 'cs008', '14cs580', 'B'),
(22, 'cs008', '14cs580', 'C'),
(23, 'cs008', '14cs580', 'D'),
(24, 'cs008', '14csPB0', '-'),
(25, 'cs009', '14csPR0', '-'),
(26, 'cs010', '14cs570', 'A'),
(27, 'cs012', '14cs570', 'B'),
(28, 'cs011', '14cs530', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `regNo` varchar(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phoneNo` bigint(20) NOT NULL,
  `email` varchar(35) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `isStaff` int(11) NOT NULL DEFAULT '0',
  `isAdmin` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`regNo`, `name`, `phoneNo`, `email`, `password`, `isStaff`, `isAdmin`) VALUES
('16c001', 'Aishu', 9874231345, 'aishu@gmail.com', 'aaaaa', 0, 0),
('16c002', 'swathi', 6574657647, 'swathi@gmail.com', 'swathi16c002', 0, 0),
('16c003', 'Shivu', 7010966555, 'shiva@gmail.com', 'shivu', 0, 0),
('16c004', 'Manisha', 8765098776, 'manisha@gmail.com', 'manisha', 0, 0),
('16c005', 'Raji', 9556743264, 'raji@gmail.com', 'raji16c005', 0, 0),
('16c006', 'Nithya', 9348712309, 'nithya@gmail.com', 'haha', 0, 0),
('16c007', 'Sabeena', 8978953426, 'sabeena@gmail.com', 'sabee', 0, 0),
('16c008', 'Dharshini', 9889765678, 'dharshini@gmail.com', 'dharshini16c008', 0, 0),
('16c009', 'AbiRami', 8889972435, NULL, NULL, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`),
  ADD UNIQUE KEY `phoneNo` (`phoneNo`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`sNo`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`sNo`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseId`),
  ADD UNIQUE KEY `course_name` (`courseName`);

--
-- Indexes for table `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`sNo`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffId`),
  ADD UNIQUE KEY `phoneno` (`phoneNo`);

--
-- Indexes for table `staffCourse`
--
ALTER TABLE `staffCourse`
  ADD PRIMARY KEY (`sNo`),
  ADD KEY `staff_id` (`staffId`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`regNo`),
  ADD UNIQUE KEY `Phoneno` (`phoneNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `sNo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `sNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `mark`
--
ALTER TABLE `mark`
  MODIFY `sNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `staffCourse`
--
ALTER TABLE `staffCourse`
  MODIFY `sNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
