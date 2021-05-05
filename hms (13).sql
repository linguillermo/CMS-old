-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2021 at 05:36 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appId` int(3) NOT NULL,
  `patientIc` bigint(12) NOT NULL,
  `scheduleId` int(10) NOT NULL,
  `firstName` varchar(1000) NOT NULL,
  `lastName` varchar(1000) NOT NULL,
  `contactNo` varchar(5000) NOT NULL,
  `appComment` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'process'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appId`, `patientIc`, `scheduleId`, `firstName`, `lastName`, `contactNo`, `appComment`, `status`) VALUES
(17, 0, 14, 'L25vUVFnWWVxS0Q2SHZrelR6MVhsZz09OjotOSy0HGmM/i4uZ7ZDa641', 'SEhnUlBBZGEzUmo1ZWV5cWhON2pIUT09OjrSTG3mP0TM9X0P52MZOUDC', '12345678999', 'Facial', 'done');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'Anuj', 'New Delhi', '500', 8285703354, 'anuj.lpu1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:25:37', '2019-06-30 12:11:05'),
(2, 'Homeopath', 'Sarita Pandey', 'Varanasi', '600', 2147483647, 'sarita@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:51:51', '0000-00-00 00:00:00'),
(3, 'General Physician', 'Nitesh Kumar', 'Ghaziabad', '1200', 8523699999, 'nitesh@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:43:35', '0000-00-00 00:00:00'),
(4, 'Homeopath', 'Vijay Verma', 'New Delhi', '700', 25668888, 'vijay@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:45:09', '0000-00-00 00:00:00'),
(5, 'Ayurveda', 'Sanjeev', 'Gurugram', '8050', 442166644646, 'sanjeev@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:47:07', '0000-00-00 00:00:00'),
(6, 'General Physician', 'Amrita', 'New Delhi India', '2500', 45497964, 'amrita@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:52:50', '0000-00-00 00:00:00'),
(7, 'Demo test', 'abc ', 'New Delhi India', '200', 852888888, 'test@demo.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:08:58', '2019-06-23 18:17:25'),
(8, 'Ayurveda', 'Test Doctor', 'Xyz Abc New Delhi', '600', 1234567890, 'test@test.com', '202cb962ac59075b964b07152d234b70', '2019-06-23 17:57:43', '2019-06-23 18:06:06'),
(9, 'Dermatologist', 'Anuj kumar', 'New Delhi India 110001', '500', 1234567890, 'anujk@test.com', 'f925916e2754e5e03f75dd58a5733251', '2019-11-10 18:37:47', '2019-11-10 18:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `doctorschedule`
--

CREATE TABLE `doctorschedule` (
  `scheduleId` int(11) NOT NULL,
  `scheduleDate` date NOT NULL,
  `scheduleDay` varchar(15) NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `bookAvail` varchar(10) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctorschedule`
--

INSERT INTO `doctorschedule` (`scheduleId`, `scheduleDate`, `scheduleDay`, `startTime`, `endTime`, `bookAvail`) VALUES
(1, '2021-04-03', 'Monday', '01:30:00', '02:00:00', 'notavail'),
(2, '2021-04-03', 'Monday', '03:00:00', '00:00:00', 'notavail'),
(3, '2021-04-05', 'Monday', '04:00:00', '04:30:00', 'notavail'),
(4, '2021-04-16', '', '01:00:00', '02:00:00', 'notavail'),
(5, '2021-04-16', '', '02:00:00', '03:00:00', 'notavail'),
(6, '2021-04-16', '', '03:00:00', '04:00:00', 'notavail'),
(7, '2021-04-15', '', '04:00:00', '05:00:00', 'notavail'),
(8, '2021-04-15', '', '05:00:00', '06:00:00', 'notavail'),
(9, '2021-04-15', '', '06:00:00', '07:00:00', 'notavail'),
(10, '2021-04-15', '', '08:00:00', '09:00:00', 'notavail'),
(11, '2021-04-15', '', '10:00:00', '11:00:00', 'notavail'),
(12, '2021-04-16', '', '01:30:00', '02:00:00', 'notavail'),
(13, '2021-04-16', '', '02:30:00', '03:00:00', 'notavail'),
(14, '2021-04-16', '', '02:30:00', '03:00:00', 'notavail'),
(15, '2021-04-16', '', '03:00:00', '03:30:00', 'available'),
(16, '2021-04-26', '', '01:00:00', '02:00:00', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-01 13:33:07', '01-03-2021 07:05:15 PM', 1),
(21, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-01 13:41:40', '01-03-2021 07:12:38 PM', 1),
(22, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-01 14:44:33', '01-03-2021 08:57:13 PM', 1),
(23, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-01 16:24:56', '01-03-2021 10:34:48 PM', 1),
(24, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-01 17:19:28', NULL, 1),
(25, NULL, 'test@demo.comd', 0x3a3a3100000000000000000000000000, '2021-03-01 17:20:43', NULL, 0),
(26, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-01 17:20:49', '01-03-2021 10:51:07 PM', 1),
(27, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-01 17:21:21', NULL, 1),
(28, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-01 17:21:35', '01-03-2021 10:51:37 PM', 1),
(29, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-01 17:22:19', '01-03-2021 10:52:20 PM', 1),
(30, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-01 17:24:43', '01-03-2021 10:55:50 PM', 1),
(31, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-01 17:26:04', '01-03-2021 11:14:15 PM', 1),
(32, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-01 17:44:20', NULL, 1),
(33, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-01 18:07:11', NULL, 1),
(34, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-01 18:08:27', '01-03-2021 11:40:42 PM', 1),
(35, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2021-03-01 18:11:54', NULL, 0),
(36, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-01 18:12:00', NULL, 1),
(37, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-01 18:13:15', NULL, 1),
(38, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-03 16:23:10', NULL, 1),
(39, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-04 14:23:32', '04-03-2021 08:09:10 PM', 1),
(40, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-04 14:40:11', NULL, 1),
(41, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-06 16:39:04', '07-03-2021 07:04:20 PM', 1),
(42, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-07 13:34:41', '07-03-2021 08:18:31 PM', 1),
(43, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-07 14:48:43', '07-03-2021 08:24:39 PM', 1),
(44, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-07 15:14:29', NULL, 0),
(45, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-07 15:14:31', NULL, 0),
(46, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-12 22:25:30', NULL, 0),
(47, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-12 22:25:52', NULL, 1),
(48, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-12 22:36:59', NULL, 0),
(49, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-12 22:37:01', '13-03-2021 04:41:18 AM', 1),
(50, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-12 23:13:02', NULL, 1),
(51, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-12 23:34:13', NULL, 1),
(52, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-12 23:44:03', '13-03-2021 05:25:23 AM', 1),
(53, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-12 23:55:27', '13-03-2021 05:25:36 AM', 1),
(54, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-13 10:44:34', NULL, 0),
(55, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-13 10:44:39', NULL, 1),
(56, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-13 11:14:00', NULL, 1),
(57, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-17 11:27:08', NULL, 1),
(58, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-17 14:18:29', NULL, 0),
(59, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-17 14:18:32', NULL, 1),
(60, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-18 13:10:19', NULL, 1),
(61, NULL, 'test@demo.co', 0x3a3a3100000000000000000000000000, '2021-03-18 13:11:03', NULL, 0),
(62, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-18 13:13:51', NULL, 1),
(63, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-21 11:17:36', NULL, 0),
(64, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-21 11:17:39', NULL, 1),
(65, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-22 00:32:21', NULL, 1),
(66, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-27 00:22:07', '27-03-2021 05:54:37 AM', 1),
(67, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-03-27 00:28:00', '27-03-2021 06:12:28 AM', 1),
(68, NULL, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-04 14:39:03', NULL, 0),
(69, NULL, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-04 14:39:22', NULL, 0),
(70, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-04-04 14:39:37', '04-04-2021 08:09:38 PM', 1),
(71, NULL, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-04 16:21:02', NULL, 0),
(72, NULL, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-04 16:21:09', NULL, 0),
(73, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-04-04 16:21:14', NULL, 1),
(74, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-04-04 17:10:18', '04-04-2021 10:40:48 PM', 1),
(75, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-04 18:40:42', '05-04-2021 03:58:59 AM', 1),
(76, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-12 19:15:47', NULL, 1),
(77, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-13 18:31:31', '14-04-2021 06:42:16 PM', 1),
(78, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-14 13:20:18', '14-04-2021 06:55:18 PM', 1),
(79, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-14 13:50:45', '14-04-2021 09:19:53 PM', 1),
(80, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-14 23:27:39', '15-04-2021 05:11:12 AM', 1),
(81, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-14 23:44:27', '15-04-2021 05:35:38 AM', 1),
(82, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-15 02:31:36', '15-04-2021 08:27:38 AM', 1),
(83, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-15 02:58:00', NULL, 1),
(84, NULL, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-15 05:08:30', NULL, 0),
(85, NULL, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-15 05:08:38', NULL, 0),
(86, NULL, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-15 05:08:51', NULL, 0),
(87, NULL, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-15 05:09:13', NULL, 0),
(88, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-15 05:14:53', '15-04-2021 11:47:38 AM', 1),
(89, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-15 06:18:19', '15-04-2021 01:21:45 PM', 1),
(90, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-15 12:31:27', '15-04-2021 09:06:08 PM', 1),
(91, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-15 15:36:23', '15-04-2021 09:40:39 PM', 1),
(92, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-16 04:38:31', '16-04-2021 10:13:30 AM', 1),
(93, NULL, 'staff1', 0x3a3a3100000000000000000000000000, '2021-04-16 06:10:52', NULL, 0),
(94, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-16 06:11:21', '16-04-2021 02:26:31 PM', 1),
(95, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-19 01:39:44', NULL, 1),
(96, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-23 08:44:54', '23-04-2021 04:09:47 PM', 1),
(97, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-23 11:12:50', '23-04-2021 05:37:19 PM', 1),
(98, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-23 12:11:56', '23-04-2021 05:44:54 PM', 1),
(99, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-23 12:15:08', '23-04-2021 06:56:43 PM', 1),
(100, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-23 16:58:13', NULL, 1),
(101, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-23 17:05:46', '23-04-2021 11:06:31 PM', 1),
(102, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-26 15:02:56', '26-04-2021 08:33:27 PM', 1),
(103, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-26 15:18:50', '26-04-2021 09:27:10 PM', 1),
(104, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-26 16:39:06', '26-04-2021 10:09:34 PM', 1),
(105, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-26 19:02:08', '27-04-2021 12:32:42 AM', 1),
(106, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-26 22:03:39', '27-04-2021 03:34:33 AM', 1),
(107, 16, 'abeleda', 0x3a3a3100000000000000000000000000, '2021-05-04 01:44:10', '04-05-2021 07:14:16 AM', 1),
(108, 16, 'abeleda', 0x3a3a3100000000000000000000000000, '2021-05-04 01:46:08', '04-05-2021 07:16:38 AM', 1),
(109, NULL, 'staff', 0x3a3a3100000000000000000000000000, '2021-05-04 02:01:58', NULL, 0),
(110, NULL, 'staff', 0x3a3a3100000000000000000000000000, '2021-05-04 02:02:06', NULL, 0),
(111, 16, 'abeleda', 0x3a3a3100000000000000000000000000, '2021-05-04 02:02:55', '04-05-2021 07:33:12 AM', 1),
(112, 16, 'abeleda', 0x3a3a3100000000000000000000000000, '2021-05-04 02:15:38', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', '0000-00-00 00:00:00'),
(2, 'General Physician', '2016-12-28 06:38:12', '0000-00-00 00:00:00'),
(3, 'Dermatologist', '2016-12-28 06:38:48', '0000-00-00 00:00:00'),
(4, 'Homeopath', '2016-12-28 06:39:26', '0000-00-00 00:00:00'),
(5, 'Ayurveda', '2016-12-28 06:39:51', '0000-00-00 00:00:00'),
(6, 'Dentist', '2016-12-28 06:40:08', '0000-00-00 00:00:00'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', '0000-00-00 00:00:00'),
(9, 'Demo test', '2016-12-28 07:37:39', '0000-00-00 00:00:00'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '0000-00-00 00:00:00'),
(11, 'Test', '2019-06-23 17:51:06', '2019-06-23 17:55:06'),
(12, 'Dermatologist', '2019-11-10 18:36:36', '2019-11-10 18:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` int(20) NOT NULL,
  `medicine_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `dosage` varchar(100) CHARACTER SET latin1 NOT NULL,
  `quantity` int(11) NOT NULL,
  `formulation` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id`, `medicine_name`, `dosage`, `quantity`, `formulation`) VALUES
(6, 'HYDROXYZINE', '10mg', 47, 'Tablet'),
(7, 'METHORTREXATE', '2.5mg', 91, 'Tablet'),
(8, 'SULTAMICILLIN', '750mg', 98, 'Tablet'),
(9, 'SULTAMICILLIN', '375mg', 88, 'Tablet'),
(10, 'COTRIMOXAZOLE', '800mg', 97, 'Tablet'),
(11, 'METRONIDAZOLE', '500mg', 100, 'Tablet'),
(12, 'RANITIDINE', '150mg', 96, 'Tablet'),
(13, 'CIPROFLOXACIN', '500mg', 100, 'Tablet'),
(14, 'KETOCONAZOLE', '200mg', 100, 'Tablet'),
(15, 'OFLOXACIN', '400mg', 100, 'Tablet'),
(16, 'PARACETAMOL/TRAMADOL', '325mg', 100, 'Tablet'),
(17, 'Norfloxacin', '400mg', 100, 'Tablet'),
(18, 'Aciclovir', '200mg', 100, 'Tablet'),
(19, 'Aciclovir', '400mg', 100, 'Tablet'),
(20, 'Aciclovir', '800mg', 100, 'Tablet'),
(21, 'Diosmin Hesperidin', '450mg', 100, 'Tablet'),
(22, 'Clarithromycin', '500mg', 100, 'Tablet'),
(23, 'Cefuroxime', '500mg', 100, 'Tablet'),
(24, 'Cefixime', '500mg', 100, 'Tablet'),
(25, 'Rosuvastatin', '10mg', 100, 'Tablet'),
(26, 'Gabapentin', '300mg', 100, 'Tablet'),
(27, 'Cloxacillin', '500mg', 100, 'Capsule'),
(28, 'Mepenamic', '500mg', 100, 'Capsule'),
(29, 'Clindamycin', '300mg', 100, 'Capsule'),
(30, 'Doxycycline', '', 100, 'Capsule'),
(31, 'Tetracycline', '500mg', 100, 'Capsule'),
(32, 'Isotretinoin (isonoin)', '20mg', 100, 'Capsule'),
(33, 'Isotretinoin (acne trex)', '10mg', 100, 'Capsule'),
(34, 'Biotin ', '8mg', 90, 'Capsule'),
(35, 'Heliocare Ultra', '', 100, 'Capsule'),
(36, 'Fenofibrate', '200mg', 100, 'Capsule'),
(37, 'Omeprazole', '40mg', 100, 'Capsule'),
(38, 'Itraconazole', '100mg', 80, 'Capsule'),
(39, 'Rabeprazole', '20mg', 100, 'Capsule'),
(40, 'Livolin Forte', '', 100, 'Capsule'),
(41, 'Skizin Capsule', '', 100, 'Capsule'),
(42, 'Cefixime', '200mg', 100, 'Capsule'),
(43, 'Prednisone', '20mg', 100, 'Syrup'),
(44, 'Prednisone', '15mg', 100, 'Syrup'),
(45, 'Prednisone', '10mg', 100, 'Syrup'),
(46, 'Diphenhydramine', '12.5mg/5ml', 97, 'Syrup'),
(47, 'Cetirizine', '5mg/5ml', 100, 'Syrup'),
(48, 'Cloxacillin', '250mg/5ml', 100, 'Syrup'),
(49, 'Clarithromycin', '250mg/5ml', 100, 'Syrup'),
(50, 'Cefixime', '100mg/5ml', 100, 'Syrup'),
(51, 'Cetirizine', '10mg', 100, 'Tablet'),
(52, 'BILASTINE', '20mg', 100, 'Tablet'),
(53, 'Hair Grower Shampoo', '', 100, 'Shampoo'),
(54, 'Tar Shampoo', '', 100, 'Shampoo'),
(55, 'Ketoconazole Shampoo', 'n/a', 100, 'Shampoo'),
(56, 'Bioteez', 'n/a', 100, 'Shampoo'),
(57, 'Selenium Sulfide', 'n/a', 100, 'Shampoo'),
(58, 'Araderm', 'n/a', 100, 'Lotion'),
(59, 'Triacinate ', 'n/a', 100, 'Lotion'),
(60, 'BPO', 'n/a', 100, 'Lotion'),
(61, 'Clobate ', 'n/a', 100, 'Lotion'),
(62, 'Triamcinolone', 'n/a', 100, 'Lotion'),
(63, 'Cetaphil Pro Ad ', 'n/a', 100, 'Lotion'),
(64, 'Cetaphil Ultra Hydrating ', 'n/a', 100, 'Lotion'),
(65, 'Cetaphil Brightening', 'n/a', 100, 'Lotion'),
(66, 'Permethrin', 'n/a', 100, 'Lotion'),
(67, 'Clarifying Lotion 1', 'n/a', 100, 'Lotion'),
(68, 'Clarifying Lotion 2', 'n/a', 100, 'Lotion'),
(69, 'Hypo Soap Bar', 'n/a', 100, 'Soap/Liquids'),
(70, 'Oatmeal Bar', 'n/a', 100, 'Soap/Liquids'),
(71, 'Zen Hydra Antibacterial', 'n/a', 100, 'Soap/Liquids'),
(72, 'Zen Hydra Pine Tar', 'n/a', 100, 'Soap/Liquids'),
(73, 'Zen Hydra Pine Tar Shampoo & Body Wash', 'n/a', 100, 'Soap/Liquids'),
(74, 'Cetaphil Pro Ad Wash', 'n/a', 100, 'Soap/Liquids'),
(75, 'Cetaphil Brightness Reveal Bar', 'n/a', 100, 'Soap/Liquids'),
(76, 'Trixera Bar', 'n/a', 100, 'Soap/Liquids'),
(77, 'Hypo Liquid Soap', 'n/a', 100, 'Soap/Liquids'),
(78, 'Oatsense Facial Wash', 'n/a', 100, 'Soap/Liquids'),
(79, 'Ecze Aleen Foam Wash', 'n/a', 100, 'Soap/Liquids'),
(80, 'Klenz It Foam Wash', 'n/a', 100, 'Soap/Liquids'),
(81, 'Dillan Emollients', 'n/a', 100, 'Soap/Liquids'),
(82, 'Xeracalm', 'n/a', 100, 'Soap/Liquids'),
(83, 'Acne Gel #2', 'n/a', 100, 'Gel'),
(84, 'Ery Gel', 'n/a', 100, 'Gel'),
(85, 'Xeragel', 'n/a', 100, 'Gel'),
(86, 'Bliziny', 'n/a', 100, 'Gel'),
(87, 'Xamiol', 'n/a', 100, 'Gel'),
(88, 'Epiduo', 'n/a', 100, 'Gel'),
(89, 'Vitises', 'n/a', 100, 'Gel'),
(90, 'Pigmenting ', 'n/a', 100, 'Gel'),
(91, 'Hair Grower Solution 2', 'n/a', 100, 'Solution'),
(92, 'Clobate Scalp Solutiin', 'n/a', 100, 'Solution'),
(93, 'Triacinate Scalp Solution', 'n/a', 100, 'Solution'),
(94, 'Trichogen', 'n/a', 100, 'Solution'),
(95, 'Seskavel Anti Hair Loss', 'n/a', 100, 'Solution'),
(96, 'Caviar Serum', 'n/a', 100, 'Solution'),
(97, 'C-Enhance Serum', 'n/a', 100, 'Solution'),
(98, 'Anti Perspirant Plus', 'n/a', 100, 'Others'),
(99, 'Wet Compress', 'n/a', 100, 'Others'),
(100, 'Cetaphil Toner', 'n/a', 100, 'Others'),
(101, 'Xerolan Spray', 'n/a', 100, 'Others'),
(102, 'Azelaic Spray', 'n/a', 100, 'Others'),
(103, 'Candina Powder', 'n/a', 100, 'Others'),
(104, 'Araderm Ointment 2', 'n/a', 100, 'Ointment'),
(105, 'Araderm Ointment 3', 'n/a', 100, 'Ointment'),
(106, 'SSA-H Ointment', 'n/a', 100, 'Ointment'),
(107, 'Scabicidal Ointment', 'n/a', 100, 'Ointment'),
(108, 'Bactreat Ointment', 'n/a', 100, 'Ointment'),
(109, 'Daivobet Ointment', 'n/a', 100, 'Ointment'),
(110, 'Dipsotrex Ointment', 'n/a', 100, 'Ointment'),
(111, 'Triacina Ointment', 'n/a', 100, 'Ointment'),
(112, 'Clobate Ointment', 'n/a', 100, 'Ointment'),
(113, 'Tacrolimus 0.13% (Tacroz)', 'n/a', 100, 'Ointment'),
(114, 'Tacrolimus Forte 0.01%', 'n/a', 100, 'Ointment'),
(115, 'Tacrolimus 0.03% (Rocimuz)', 'n/a', 100, 'Ointment'),
(116, 'Araderm Cream 2', 'n/a', 100, 'Cream'),
(117, 'Araderm Cream 3', 'n/a', 100, 'Cream'),
(118, 'Tineazole Cream', 'n/a', 100, 'Cream'),
(119, 'Tineazole HA Cream', 'n/a', 100, 'Cream'),
(120, 'Lactaderm Cream 2', 'n/a', 100, 'Cream'),
(121, 'Lactaderm Cream 1', 'n/a', 100, 'Cream'),
(122, 'Caviar Cream', 'n/a', 100, 'Cream'),
(123, 'Tretinoin Cream', 'n/a', 100, 'Cream'),
(124, 'Superblock SPF ', '50+', 100, 'Cream'),
(125, 'Akerat', '30', 100, 'Cream'),
(126, 'Fucidin', '2%', 100, 'Cream'),
(127, 'Cetaphil Brightening Day & Night Cream', 'n/a', 100, 'Cream'),
(128, 'Emaxx Cream', 'n/a', 100, 'Cream'),
(129, 'Triacinate Cream', 'n/a', 100, 'Cream'),
(130, 'Clobate Cream', 'n/a', 100, 'Cream'),
(131, 'Sofinox Cream', 'n/a', 100, 'Cream'),
(132, 'Ctranex Cream', 'n/a', 100, 'Cream'),
(133, 'Triobloc Cream', 'n/a', 100, 'Cream'),
(134, 'Cyto Rescue Cream', 'n/a', 100, 'Cream'),
(135, 'Cyto Repair Cream', 'n/a', 100, 'Cream'),
(136, 'Quad Block SPF 110', 'n/a', 100, 'Cream'),
(137, 'Sertaconazole Cream (onabet)', 'n/a', 100, 'Cream'),
(139, 'PREDNISONE', '20mg', 100, 'Tablet'),
(140, 'PREDNISONE', '30mg', 100, 'Tablet'),
(146, 'PREDNISONE', '5mg', 100, 'Tablet');

-- --------------------------------------------------------

--
-- Table structure for table `medicineused`
--

CREATE TABLE `medicineused` (
  `patientID` int(200) NOT NULL,
  `ID` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicineused`
--

INSERT INTO `medicineused` (`patientID`, `ID`, `CreationDate`) VALUES
(1, 1, '2021-05-04 02:17:42'),
(1, 2, '2021-05-04 02:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `patientID` int(200) NOT NULL,
  `ID` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(20) NOT NULL,
  `product_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `dosage` varchar(100) CHARACTER SET latin1 NOT NULL,
  `quantity` int(11) NOT NULL,
  `formulation` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `dosage`, `quantity`, `formulation`) VALUES
(5, 'PREDNISONE', '5mg', 30, 'Tablet'),
(6, 'HYDROXYZINE', '10mg', 100, 'Tablet'),
(7, 'METHORTREXATE', '2.5mg', 100, 'Tablet'),
(8, 'SULTAMICILLIN', '750mg', 100, 'Tablet'),
(9, 'SULTAMICILLIN', '375mg', 100, 'Tablet'),
(10, 'COTRIMOXAZOLE', '800mg', 100, 'Tablet'),
(11, 'METRONIDAZOLE', '500mg', 100, 'Tablet'),
(12, 'RANITIDINE', '150mg', 100, 'Tablet'),
(13, 'CIPROFLOXACIN', '500mg', 100, 'Tablet'),
(14, 'KETOCONAZOLE', '200mg', 100, 'Tablet'),
(15, 'OFLOXACIN', '400mg', 100, 'Tablet'),
(16, 'PARACETAMOL/TRAMADOL', '325mg', 100, 'Tablet'),
(17, 'Norfloxacin', '400mg', 100, 'Tablet'),
(18, 'Aciclovir', '200mg', 100, 'Tablet'),
(19, 'Aciclovir', '400mg', 100, 'Tablet'),
(20, 'Aciclovir', '800mg', 100, 'Tablet'),
(21, 'Diosmin Hesperidin', '450mg', 100, 'Tablet'),
(22, 'Clarithromycin', '500mg', 100, 'Tablet'),
(23, 'Cefuroxime', '500mg', 100, 'Tablet'),
(24, 'Cefixime', '500mg', 100, 'Tablet'),
(25, 'Rosuvastatin', '10mg', 100, 'Tablet'),
(26, 'Gabapentin', '300mg', 100, 'Tablet'),
(27, 'Cloxacillin', '500mg', 100, 'Capsule'),
(28, 'Mepenamic', '500mg', 100, 'Capsule'),
(29, 'Clindamycin', '300mg', 100, 'Capsule'),
(30, 'Doxycycline', '', 100, 'Capsule'),
(31, 'Tetracycline', '500mg', 100, 'Capsule'),
(32, 'Isotretinoin (isonoin)', '20mg', 100, 'Capsule'),
(33, 'Isotretinoin (acne trex)', '10mg', 100, 'Capsule'),
(34, 'Biotin ', '8mg', 90, 'Capsule'),
(35, 'Heliocare Ultra', '', 100, 'Capsule'),
(36, 'Fenofibrate', '200mg', 100, 'Capsule'),
(37, 'Omeprazole', '40mg', 100, 'Capsule'),
(38, 'Itraconazole', '100mg', 80, 'Capsule'),
(39, 'Rabeprazole', '20mg', 100, 'Capsule'),
(40, 'Livolin Forte', '', 100, 'Capsule'),
(41, 'Skizin Capsule', '', 100, 'Capsule'),
(42, 'Cefixime', '200mg', 100, 'Capsule'),
(43, 'Prednisone', '20mg', 100, 'Syrup'),
(44, 'Prednisone', '15mg', 100, 'Syrup'),
(45, 'Prednisone', '10mg', 100, 'Syrup'),
(46, 'Diphenhydramine', '12.5mg/5ml', 100, 'Syrup'),
(47, 'Cetirizine', '5mg/5ml', 100, 'Syrup'),
(48, 'Cloxacillin', '250mg/5ml', 100, 'Syrup'),
(49, 'Clarithromycin', '250mg/5ml', 100, 'Syrup'),
(50, 'Cefixime', '100mg/5ml', 100, 'Syrup'),
(51, 'Cetirizine', '10mg', 100, 'Tablet'),
(52, 'BILASTINE', '20mg', 100, 'Tablet'),
(53, 'Hair Grower Shampoo', '', 100, 'Shampoo'),
(54, 'Tar Shampoo', '', 100, 'Shampoo'),
(55, 'Ketoconazole Shampoo', 'n/a', 100, 'Shampoo'),
(56, 'Bioteez', 'n/a', 100, 'Shampoo'),
(57, 'Selenium Sulfide', 'n/a', 100, 'Shampoo'),
(58, 'Araderm', 'n/a', 100, 'Lotion'),
(59, 'Triacinate ', 'n/a', 100, 'Lotion'),
(60, 'BPO', 'n/a', 100, 'Lotion'),
(61, 'Clobate ', 'n/a', 100, 'Lotion'),
(62, 'Triamcinolone', 'n/a', 100, 'Lotion'),
(63, 'Cetaphil Pro Ad ', 'n/a', 100, 'Lotion'),
(64, 'Cetaphil Ultra Hydrating ', 'n/a', 100, 'Lotion'),
(65, 'Cetaphil Brightening', 'n/a', 100, 'Lotion'),
(66, 'Permethrin', 'n/a', 100, 'Lotion'),
(67, 'Clarifying Lotion 1', 'n/a', 100, 'Lotion'),
(68, 'Clarifying Lotion 2', 'n/a', 100, 'Lotion'),
(69, 'Hypo Soap Bar', 'n/a', 100, 'Soap/Liquids'),
(70, 'Oatmeal Bar', 'n/a', 100, 'Soap/Liquids'),
(71, 'Zen Hydra Antibacterial', 'n/a', 100, 'Soap/Liquids'),
(72, 'Zen Hydra Pine Tar', 'n/a', 100, 'Soap/Liquids'),
(73, 'Zen Hydra Pine Tar Shampoo & Body Wash', 'n/a', 100, 'Soap/Liquids'),
(74, 'Cetaphil Pro Ad Wash', 'n/a', 100, 'Soap/Liquids'),
(75, 'Cetaphil Brightness Reveal Bar', 'n/a', 100, 'Soap/Liquids'),
(76, 'Trixera Bar', 'n/a', 100, 'Soap/Liquids'),
(77, 'Hypo Liquid Soap', 'n/a', 100, 'Soap/Liquids'),
(78, 'Oatsense Facial Wash', 'n/a', 100, 'Soap/Liquids'),
(79, 'Ecze Aleen Foam Wash', 'n/a', 100, 'Soap/Liquids'),
(80, 'Klenz It Foam Wash', 'n/a', 100, 'Soap/Liquids'),
(81, 'Dillan Emollients', 'n/a', 100, 'Soap/Liquids'),
(82, 'Xeracalm', 'n/a', 100, 'Soap/Liquids'),
(83, 'Acne Gel #2', 'n/a', 100, 'Gel'),
(84, 'Ery Gel', 'n/a', 100, 'Gel'),
(85, 'Xeragel', 'n/a', 100, 'Gel'),
(86, 'Bliziny', 'n/a', 100, 'Gel'),
(87, 'Xamiol', 'n/a', 100, 'Gel'),
(88, 'Epiduo', 'n/a', 100, 'Gel'),
(89, 'Vitises', 'n/a', 100, 'Gel'),
(90, 'Pigmenting ', 'n/a', 100, 'Gel'),
(91, 'Hair Grower Solution 2', 'n/a', 100, 'Solution'),
(92, 'Clobate Scalp Solutiin', 'n/a', 100, 'Solution'),
(93, 'Triacinate Scalp Solution', 'n/a', 100, 'Solution'),
(94, 'Trichogen', 'n/a', 100, 'Solution'),
(95, 'Seskavel Anti Hair Loss', 'n/a', 100, 'Solution'),
(96, 'Caviar Serum', 'n/a', 100, 'Solution'),
(97, 'C-Enhance Serum', 'n/a', 100, 'Solution'),
(98, 'Anti Perspirant Plus', 'n/a', 100, 'Others'),
(99, 'Wet Compress', 'n/a', 100, 'Others'),
(100, 'Cetaphil Toner', 'n/a', 100, 'Others'),
(101, 'Xerolan Spray', 'n/a', 100, 'Others'),
(102, 'Azelaic Spray', 'n/a', 100, 'Others'),
(103, 'Candina Powder', 'n/a', 100, 'Others'),
(104, 'Araderm Ointment 2', 'n/a', 100, 'Ointment'),
(105, 'Araderm Ointment 3', 'n/a', 100, 'Ointment'),
(106, 'SSA-H Ointment', 'n/a', 100, 'Ointment'),
(107, 'Scabicidal Ointment', 'n/a', 100, 'Ointment'),
(108, 'Bactreat Ointment', 'n/a', 100, 'Ointment'),
(109, 'Daivobet Ointment', 'n/a', 100, 'Ointment'),
(110, 'Dipsotrex Ointment', 'n/a', 100, 'Ointment'),
(111, 'Triacina Ointment', 'n/a', 100, 'Ointment'),
(112, 'Clobate Ointment', 'n/a', 100, 'Ointment'),
(113, 'Tacrolimus 0.13% (Tacroz)', 'n/a', 100, 'Ointment'),
(114, 'Tacrolimus Forte 0.01%', 'n/a', 100, 'Ointment'),
(115, 'Tacrolimus 0.03% (Rocimuz)', 'n/a', 100, 'Ointment'),
(116, 'Araderm Cream 2', 'n/a', 100, 'Cream'),
(117, 'Araderm Cream 3', 'n/a', 100, 'Cream'),
(118, 'Tineazole Cream', 'n/a', 100, 'Cream'),
(119, 'Tineazole HA Cream', 'n/a', 100, 'Cream'),
(120, 'Lactaderm Cream 2', 'n/a', 100, 'Cream'),
(121, 'Lactaderm Cream 1', 'n/a', 100, 'Cream'),
(122, 'Caviar Cream', 'n/a', 100, 'Cream'),
(123, 'Tretinoin Cream', 'n/a', 100, 'Cream'),
(124, 'Superblock SPF ', '50+', 100, 'Cream'),
(125, 'Akerat', '30', 100, 'Cream'),
(126, 'Fucidin', '2%', 100, 'Cream'),
(127, 'Cetaphil Brightening Day & Night Cream', 'n/a', 100, 'Cream'),
(128, 'Emaxx Cream', 'n/a', 100, 'Cream'),
(129, 'Triacinate Cream', 'n/a', 100, 'Cream'),
(130, 'Clobate Cream', 'n/a', 100, 'Cream'),
(131, 'Sofinox Cream', 'n/a', 100, 'Cream'),
(132, 'Ctranex Cream', 'n/a', 100, 'Cream'),
(133, 'Triobloc Cream', 'n/a', 100, 'Cream'),
(134, 'Cyto Rescue Cream', 'n/a', 100, 'Cream'),
(135, 'Cyto Repair Cream', 'n/a', 100, 'Cream'),
(136, 'Quad Block SPF 110', 'n/a', 100, 'Cream'),
(137, 'Sertaconazole Cream (onabet)', 'n/a', 100, 'Cream'),
(139, 'PREDNISONE', '20mg', 100, 'Tablet'),
(140, 'PREDNISONE', '30mg', 100, 'Tablet');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'test user', 'test@gmail.com', 2523523522523523, ' This is sample text for the test.', '2019-06-29 19:03:08', 'Test Admin Remark', '2019-06-30 12:55:23', 1),
(2, 'Anuj kumar', 'phpgurukulofficial@gmail.com', 1111111111111111, ' This is sample text for testing.  This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing.', '2019-06-30 13:06:50', 'hehe', '2021-03-01 13:35:52', 1),
(3, 'fdsfsdf', 'fsdfsd@ghashhgs.com', 3264826346, 'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  ', '2019-11-10 18:53:48', 'vfdsfgfd', '2019-11-10 18:54:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `medicineused` varchar(200) DEFAULT NULL,
  `Laboratories` varchar(200) NOT NULL,
  `Weight` varchar(200) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` varchar(2000) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `medicineused`, `Laboratories`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(39, 1, 'ZUFoWG8zYUlSdlRKSExxL3A0WFQ0Zz09OjpWFDTigKnmRFUrRD8TpM37', 'aklBWEhvL3dXaDJOVXBqdVduYk1Sdz09Ojre8+GnUWvxw+h8ZSAReBwP', 'K3RyQWVLZnhEMVNueVJocUd3UzFadz09Ojryb8hQFD/Q0Xm2rIqpl3xE', '', 'ejNaR1hTN0NUR0cyb2lMcmtsZmtNZWpibGVZMFVveWdSN29GUUdjWDMrKzZIdHkxWnJncWttZjZNSHhHWWVza1A2Q2ZjQXFsMHlEaVJvMlZrdzhseFVDY2g2TEZ1Q2NhNVdTUEFmTUEzYVN4bWpxVEhkaFBSbUY0T3N6MzQ3T3VTZ2Q5d015Y2J4S0VjRm5TclNrUm1NVE9pcHQyUjJYeHZDOTNJU2pHZzlmVnhpeStVSnh4ei94ek90Z3FKa0dPeDU0eXlIcndYRkxYUUlxNHJ2cTdPY1Z2ZmF5K2NGekNIYzRIR1pTd08xaXY2MGdMbTV6YS90bTJOdk1remhENzBVdTRwMTBqRUpmOENWSlRWU1MzYXZCMEFCUDZBWjF5VGV5dWJRL2hkdjE4ZG1BZy9KaHBDYzcwVlAzUDV1ZjFzU1hMU2w3ejFDaHoxV1hZUHZnK2Vtd1ZGNHhvZ1V5SG9RbFYrZTZhdlVlbjJtV2VuYjNqMnVnd3QxSVpMNVg2eHQxUE5wOVJkenoxdlJMUm9tc2FTc2dNdUFCazFWR3ZzZmJkT1VKS2Q0eXZNZHhwQ0grWERIQkZLblI4UzJBUTEzd1ZpYlNub3FLNnBOWmg4N1JXNWNsU0Q1M0xZdVpjRTFRa3huaWxYQkVLVjRGRTVWaWdod1V3Z2tDd3IyZWtZYm8ybElKUFdIRDM0MzdRRGpsOTFVOVdrN1NUOFpodWYrY29SeXZ3TFN1Ny81ZXg3WjN1Q3ZzT0hHZ0hwN0ltOTFMUjFDK1V2cENNOHRWTTFCa2ZMUT09OjqBnsK6hGTkoD9gsBsxP4Vl', '2021-05-04 02:33:47'),
(40, 1, 'cFRYN2ZRS0FOREp6UWtxRXNGSzZIdz09Ojr9KsctQtcUM7pDJ0InTZZ2', 'QzlpVTVXa1d2MU5jYkVnaU9NU1Vpdz09Ojr/WusAjhOy7/uFXtxXxThG', 'Q1V3bnRZUXFNN3NpMDBOZ3NhYm4rdz09Ojr01G+YveMrkJfjSeopgy6p', '', 'TUFsdFUxd2dhbTM4VjRQblBuRjVrckEvSVhWbVhDbGlNZytHRzJzSUs2QndpcGhTK05sRTJ3N1phTW5RSmpUQUlEUnhTVE5oVXFJdlRNcVo0MFgzZSt5dlhuQmZBOE5CMFpIdTUyMW82cWk1ZGdVa29RVW0rUlJKbUFvejc3SU13MzU2K2Zlc1lLOWNSR1JTWlE4clhVRFhPemZiMkhFcDZhQWVTajEyblhOZmF2eXNsYmFqa3VRRG05YzZFY0lnR05RdFZEcWpQVHllcVlEblFIaHpYYVg5K1pBd3ByV1cvZDFlbS81djJGdjhreU5tbU8wckFUK0RiUEhFS3Y0UWMvakFHYWZzdWJVMzZEWjR3NTA0SWszTFc2QWpNczgrVzR4WGZQdEVwTWJUWWxrS2MzWU5XUXdkck84aFZrUWYzd0s0ZWFzcm5yNEZheU5zT2QxSjZvU21NSmw0d3IwQlhYNDYzWVJSYWtkR1p6R2dBTFlGQlF3bFBmQ2pkNGdrcTEyVnVPSm9nejRtMWhVckxEOEJsNXMzdXR0cXNDanNYczdScTZ4ZHRaL3ZQc0JRNm40Wmc1QlBnNmF1ZEVlVlBGVUF2RlpRQTJ6NVdmZGV3V21ubjNUekhDaDExU1gzZzk0MkxzUVEwU0t3SWUxZDlmRWhMSVVvc0lzZmU4ZDU2aVZ6WTc3T29RRnlQWEVDTW9GY0V1K0N5bDRwNm56VHBTV2dlSmpCeFNCdE94d2JiTGljd013aGpja2JscGdBSFhlUWYzWWlrMHZPZ1RUZFNkb0JVNFlON1hPb2xlbmpQL3ZnWmJEc1d2NTVzS0pWL1lNRC9kK3VyTVF6SGtKcHJlOHovZzcyOGF3VkZreUdQQVNNRTN0R04vTE5VeDUxV0NQenBsbHJ6WWM9OjrKBBZ4mYoCuad8L7MeXV9S', '2021-05-04 03:22:04');

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicineused`
--

CREATE TABLE `tblmedicineused` (
  `patientID` int(200) NOT NULL,
  `ID` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `medicineusedID` int(11) NOT NULL,
  `medicineID` int(11) NOT NULL,
  `medicineinfo` varchar(200) NOT NULL,
  `quantity` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblmedicineused`
--

INSERT INTO `tblmedicineused` (`patientID`, `ID`, `CreationDate`, `medicineusedID`, `medicineID`, `medicineinfo`, `quantity`) VALUES
(1, 1, '2021-05-04 02:17:42', 39, 6, 'HYDROXYZINE 10mg (Tablet)', '12'),
(1, 2, '2021-05-04 02:20:11', 40, 6, 'HYDROXYZINE 10mg (Tablet)', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `PatientContno` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `PatientEmail` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `PatientGender` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `PatientAdd` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `PatientAge` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `PatientMedhis` longtext CHARACTER SET utf8 DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `PatientOccupation` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `PatientBday` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `PatientStatus` varchar(200) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`, `PatientOccupation`, `PatientBday`, `PatientStatus`) VALUES
(1, 16, 'SmRkZWVYcmhpT3dVMkYweVU0OGhCdz09OjrttrWRJVEysYs9h5kUDhXn', 'TS9scnVLOG1xK2NGZG9JbW1EN1RHQT09OjrmKmhQ9Ip/mHbfsGatQsHa', NULL, 'VDF5cENSN2VUQm1XUTdUUmZUN3VPdz09OjqfB5u/SFlgqcAHDqK7cj2y', 'ck5MMWVCWVQ1cVlCV0pjN2FBcy9SQT09OjqhkiznpPEMWh8XSRAOUmED', 'dUVOYnRKQkEwd2RHQTBqTmhvRUR0QT09OjpV02I4oSQFQvB8iw92XJAt', NULL, '2021-05-04 02:03:09', '2021-05-04 02:16:53', 'Z3hxbG5MR29kb21GYjNVelpKUnBVdz09OjptgRUpKR93WopUvk9cNwLP', 'NWlITHBMV0Q1ZDFaUEp2WHZmbWFlUT09OjoNio6egQ2DJr/0ssFyDEap', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblprescription`
--

CREATE TABLE `tblprescription` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `Medication` varchar(200) DEFAULT NULL,
  `Type` varchar(200) NOT NULL,
  `Quantity` varchar(100) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `PrescID` int(10) NOT NULL,
  `morningBM` varchar(200) NOT NULL,
  `morningAM` varchar(200) NOT NULL,
  `afternoonBM` varchar(200) NOT NULL,
  `afternoonAM` varchar(200) NOT NULL,
  `eveningBM` varchar(200) NOT NULL,
  `eveningAM` varchar(200) NOT NULL,
  `duration` varchar(200) NOT NULL,
  `instructions` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpurchasinghistory`
--

CREATE TABLE `tblpurchasinghistory` (
  `patientID` int(200) NOT NULL,
  `ID` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `medicineID` int(11) NOT NULL,
  `quantity` varchar(200) NOT NULL,
  `loggedby` varchar(200) NOT NULL,
  `medicine_info` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpurchasinghistory`
--

INSERT INTO `tblpurchasinghistory` (`patientID`, `ID`, `CreationDate`, `medicineID`, `quantity`, `loggedby`, `medicine_info`) VALUES
(1, 1, '2021-05-04 02:12:30', 5, '5', 'staff', 'PREDNISONE 5mg (Tablet)');

-- --------------------------------------------------------

--
-- Table structure for table `tbltodo`
--

CREATE TABLE `tbltodo` (
  `todoID` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `todoNotes` varchar(500) NOT NULL,
  `todoStamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` varchar(255) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 0, 'abeleda', 'Added New Patient', '2021-05-04 02:03:10', NULL, 1),
(2, 0, '', 'Edited Patient', '2021-05-04 02:08:33', NULL, 1),
(3, 0, 'abeleda', 'Edited Patient', '2021-05-04 02:16:53', NULL, 1),
(4, 0, 'abeleda', 'Added Treatment', '2021-05-04 02:17:42', NULL, 1),
(5, 0, 'abeleda', 'Added Treatment', '2021-05-04 02:20:11', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `username` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `role`, `email`, `password`, `regDate`, `updationDate`, `username`) VALUES
(9, 'Rochelle Abeleda', 'doctor', 'abeleda@gmail.com', 'abeleda', '2021-04-03 21:03:51', NULL, 'rabeleda'),
(10, 'admin', 'administrator', 'admin@gmail.com', 'admin', '2021-04-03 21:04:14', NULL, 'admin'),
(11, 'Anna Santos', 'staff', 'staff1@gmail.com', 'staff1', '2021-04-03 21:04:37', NULL, 'staff1'),
(12, 'Ben Garcia', 'staff', 'staff2@gmail.com', 'staff2', '2021-04-03 21:04:59', NULL, 'staff2'),
(15, 'test', 'staff', 'test@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '2021-05-04 01:32:27', NULL, 'test'),
(16, 'Rochelle Abeleda', 'doctor', 'rochelleabeleda@yahoo.com', '403cbb36e6b82a4e834e19b4a9af6c9f', '2021-05-04 01:39:46', NULL, 'abeleda'),
(17, 'Ara Abeleda', 'administrator', 'araabeleda@yahoo.com', '2637a5c30af69a7bad877fdb65fbd78b', '2021-05-04 01:40:43', NULL, 'admin'),
(18, 'Staff', 'staff', 'test@gmail.com', '593c62f17fbbb6e4f88a9e2c4f590e95', '2021-05-04 01:41:19', NULL, 'staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appId`),
  ADD KEY `scheduleId` (`scheduleId`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorschedule`
--
ALTER TABLE `doctorschedule`
  ADD PRIMARY KEY (`scheduleId`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicineused`
--
ALTER TABLE `medicineused`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblmedicineused`
--
ALTER TABLE `tblmedicineused`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblprescription`
--
ALTER TABLE `tblprescription`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpurchasinghistory`
--
ALTER TABLE `tblpurchasinghistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbltodo`
--
ALTER TABLE `tbltodo`
  ADD PRIMARY KEY (`todoID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appId` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctorschedule`
--
ALTER TABLE `doctorschedule`
  MODIFY `scheduleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `medicineused`
--
ALTER TABLE `medicineused`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tblmedicineused`
--
ALTER TABLE `tblmedicineused`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblprescription`
--
ALTER TABLE `tblprescription`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpurchasinghistory`
--
ALTER TABLE `tblpurchasinghistory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbltodo`
--
ALTER TABLE `tbltodo`
  MODIFY `todoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_5` FOREIGN KEY (`scheduleId`) REFERENCES `doctorschedule` (`scheduleId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
