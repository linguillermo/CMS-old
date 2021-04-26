-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2021 at 05:12 PM
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
(6, 0, 4, 'James', 'Suarez', '45565656', 'rashes', 'process'),
(7, 0, 3, 'try', 'chech', '345345345', 'fgfgfg', 'done'),
(8, 0, 7, 'Bon', 'Martinez', '9276037057', 'Sample', 'process'),
(9, 0, 8, 'Lin', 'Guillermo', '927567901', 'Sample', 'process'),
(10, 0, 9, 'Carl', 'Atienza', '9567891', 'Sample Facial', 'process'),
(11, 0, 10, 'Bon', 'Martinez', '9276037058', 'Sample Consult', 'process'),
(12, 0, 11, 'Linette', 'Gulleirmo', '999999999', 'Facial', 'process'),
(13, 0, 12, 'Armand', 'Betan', '9276037057', 'Facial', 'done'),
(14, 0, 13, 'Bon', 'Martinez', '12345678', 'Facial', 'done'),
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
(102, 9, 'rabeleda', 0x3a3a3100000000000000000000000000, '2021-04-26 15:02:56', '26-04-2021 08:33:27 PM', 1);

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
(5, 'PREDNISONE', '5mg', 58, 'Tablet'),
(6, 'HYDROXYZINE', '10mg', 62, 'Tablet'),
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
(140, 'PREDNISONE', '30mg', 100, 'Tablet');

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
(9, 1, '2021-04-14 03:27:15'),
(9, 2, '2021-04-14 03:53:10'),
(10, 3, '2021-04-14 04:24:04'),
(9, 4, '2021-04-14 15:29:24'),
(37, 5, '2021-04-15 13:37:29'),
(37, 6, '2021-04-15 13:42:51'),
(38, 7, '2021-04-15 13:45:39'),
(38, 8, '2021-04-19 02:21:15');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `patientID` int(200) NOT NULL,
  `ID` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`patientID`, `ID`, `CreationDate`) VALUES
(8, 33, '2021-03-21 17:31:24'),
(9, 34, '2021-03-21 18:04:17'),
(8, 35, '2021-03-22 13:44:27'),
(8, 36, '2021-03-22 16:59:43'),
(8, 37, '2021-03-22 17:20:14'),
(8, 38, '2021-03-22 17:20:18'),
(8, 39, '2021-03-22 17:21:20'),
(8, 40, '2021-03-22 17:30:26'),
(8, 41, '2021-03-23 13:14:58'),
(8, 42, '2021-04-13 18:36:49'),
(38, 43, '2021-04-19 02:07:18'),
(38, 44, '2021-04-19 02:08:40'),
(38, 45, '2021-04-19 02:09:04'),
(38, 46, '2021-04-19 02:12:11'),
(38, 47, '2021-04-19 02:18:50'),
(38, 48, '2021-04-19 02:20:09'),
(38, 49, '2021-04-19 02:23:20'),
(37, 50, '2021-04-23 08:46:04');

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
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2019-11-06 04:20:07'),
(3, 2, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', '2019-11-06 04:31:24'),
(4, 1, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', '2019-11-06 04:52:42'),
(5, 1, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', '2019-11-06 04:56:55'),
(6, 4, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem', '2019-11-06 14:38:33'),
(7, 5, '80/120', '120', '85', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', '2019-11-10 18:50:23'),
(8, 3, 'fg', 'gfg', 'fgfg', 'fgf', 'ggffg', '2021-03-04 14:31:42'),
(9, 3, 'sdsd', 'fdfdf', 'dfdf', 'dfdf', 'dfdf', '2021-03-04 17:45:11'),
(10, 3, 'h', 'h', 'h', 'h', 'h', '2021-03-04 17:54:50'),
(11, 3, 'lin', 'rftr', 'fgf', 'fg', 'gfg', '2021-03-13 11:14:14'),
(12, 3, 'qqq', 'q', 'q', 'q', 'q', '2021-03-13 11:20:36'),
(13, 3, 'neq', 'df', 'd', 'dff', 'df', '2021-03-13 11:23:56'),
(14, 3, 'try', 'try', 'try', 'try', '', '2021-03-13 12:42:39'),
(15, 3, 'p', 'p', 'p', 'p', 'try', '2021-03-13 12:46:21'),
(16, 3, 'y', 'y', 'y', 'y', '<b>try lang</b>', '2021-03-13 12:47:21'),
(17, 3, 'x', 'x', 'x', 'x', '<p><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAA5AAAAFNCAYAAAB2c4D8AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAAEnQAABJ0Ad5mH3gAAHLPSURBVHhe7b2Lu2ZFeeDb/8RM2gsKoig3uYhREmdOhpmcMUw80', '2021-03-13 12:53:32'),
(22, 8, '', '120', '60', '', '                                                                                                                <p><b>hehe try</b></p><p><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAA5AAAAF', '2021-03-17 14:19:13'),
(23, 8, '2', 'dsd', 'sd', 'sd', '<p><b><u>try lang</u></b></p><p><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAvwAAAHNCAYAAABilq8aAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAAEnQAABJ0Ad5mH3gAAL0HSURBVHhe7P33W1Tbuq4L', '2021-03-13 19:44:41'),
(24, 8, 'isa pa', 'dfdf', 'dff', 'df', '<p><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAB4AAAAOECAIAAADPHruUAAAAAXNSR0IB2cksfwAAAAlwSFlzAAALEwAACxMBAJqcGAACxTlJREFUeJzs3QdYFPfaNvA3J72YapftfWZ3Z3dnYdmFbfQiVaqA2HsvKCIqWGLvFUURu4k19', '2021-03-13 19:55:50'),
(25, 8, 'bba', 'a', 'a', 'a', '                                                                                                                <p><img src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4QBMRXhpZgAASUkqAAgAAAAC', '2021-03-13 20:13:25'),
(26, 9, '', '1', '1', '', '                                                                                                                                                                                                        ', '2021-04-13 23:28:11'),
(27, 13, '', '', '', '', '<p>This is a sample note</p><p><img src=\"data:image/png;base64,/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgND', '2021-03-15 14:24:25'),
(28, 14, '', 'Blood test', '102', '', '                                                        This is a sample <b>text</b>\r\n                                                    ', '2021-03-21 17:22:28'),
(29, 9, '', 'Blood test', '2', '', 'try', '2021-04-14 03:27:15'),
(30, 9, '', 'Blood test', '3', '', 'safsd', '2021-04-14 03:53:10'),
(31, 10, '', 'Blood test', '1', '', 'dfd', '2021-04-14 04:24:04'),
(32, 9, '', 'Blood test', '1', '', 'iug', '2021-04-14 15:29:24'),
(33, 37, '', 'Example example', '1', '', '<p>Sample sample sample sample</p><p>Sample sample sample sample</p><p>Sample sample sample sample<br></p>', '2021-04-15 13:37:29'),
(34, 37, 'eWJsY3dEQWl5ZjVVa2NvWWxMaEl0Zz09OjoYKey3hoNxr+OqvVcAU2LW', 'dmxpbXNWeUJVQWFmM1ozTnNqdzNFdz09OjpCJ2c9XxQHgxAhD2yGFWtC', 'Unl1d3BQb3NyTjBjNk0vczhKV1IwQT09Ojp1shceEUnQnrkhu5rrqsaP', '', 'Q2dTRmpranpJS0lKOEZWNCtGVVg5MGdpaHhhcE9mMmVLNWJoRXRjcjFkbnpwMVNCS25RZG95ZGZZZmVhZnBVaVFlNVBRdmhxWk5aVGE0amtvZXRwVHIvZlhGajFlYk5PbWtzYlF3YTJpR3oxNGF2YVpybWxjRGVzVThoQklYR1dxa1VRYWZ2aHphMFliczVQazNvYlEwNENKNDVzeVhkdVU0ZnlKazBpM3JrPTo6zIUiLG6Pue5hadtcXwIHiQ==', '2021-04-15 15:56:41'),
(35, 38, 'MkpnUy9lVmpLSmQ3blA4amV3ZTZnZz09OjrrnqoTP3V2Ak8CObLqxQ1M', 'NnQxZ0ZXWEc1SFEwdzFNTTRhVUtPQT09OjpjLhUPyHhPiolMKMLFakKr', 'NXQ1UXNHdnRLaDdRTGxTZC9lenR1Zz09OjpmZQZSZp8y5t5iEsmRmky1', '', 'NXFNTEFRWmFQaktsNWd4dWlqcmhyNkpJTXlFRzFkRmgvTEo0d3FIenRvOWFWNWNnSHoxNFJJZGpKRmJFL3VmbGxzSFBnOCt0dWd4MWpyVWcrNGgxc0xQTmFBajdtcjI0SmtHaDJrUHNNMHY4T2xXV2daMlYxbXZBMGMxZVUweW9VbVV4U3BRL2tvN1luZGsvM0xJWmYrbXpYN2FOdURyUHBrUzNESXBoN3JiYlltOXBzbElKSXNnMG5WeGFrR3pVTytpMXVzQnhuZUx3TUxET0pFV2RnY1J2YzJxdDdGRTZtaUtCOGEvazVFWGVrdEJrQzRqMG5mMUEwWjF6ZDhsMzo6dMXkO5e5AnLCzaiE7Fpg1g==', '2021-04-15 16:06:20'),
(36, 38, 'VlJJL1ppQ25ZVHlNWEd3cE84NTFHQT09OjqBV8slRb8J4m4zTS1ns9id', 'S3NrNldHUW5yd01EZHNDNzhsSVhaQT09OjqOnpZGmFgZiCfJMpNJ1x7U', 'UHpSckpDSXo4MDRSNm1Cd3JqRzg3QT09OjpmWbRBHdL/29M378wuBynY', 'aFRaOEl5cVovWENGcnhLOVJwWVBwUT09OjoTXea4GhSoI+vV5w5yv12F', 'NGpCYUJjNEJBVlFDb1NRQXhpalcwdz09OjqqvLayycanD0+6tl2RSGD3', '2021-04-19 02:21:14');

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
(9, 1, '2021-04-14 03:27:15', 1, 5, 'PREDNISONE 5mg (Tablet)', '2'),
(9, 2, '2021-04-14 03:27:15', 1, 6, 'HYDROXYZINE 10mg (Tablet)', '2'),
(9, 3, '2021-04-14 03:53:10', 30, 5, 'PREDNISONE 5mg (Tablet)', '3'),
(9, 4, '2021-04-14 03:53:10', 30, 6, 'HYDROXYZINE 10mg (Tablet)', '3'),
(10, 5, '2021-04-14 04:24:05', 31, 5, 'PREDNISONE 5mg (Tablet)', '1'),
(10, 6, '2021-04-14 04:24:05', 31, 6, 'HYDROXYZINE 10mg (Tablet)', '1'),
(0, 7, '2021-04-14 04:24:57', 0, 7, 'METHORTREXATE 2.5mg (Tablet)', '1'),
(0, 8, '2021-04-14 04:27:03', 31, 6, 'HYDROXYZINE 10mg (Tablet)', '1'),
(0, 9, '2021-04-14 13:12:14', 31, 6, 'HYDROXYZINE 10mg (Tablet)', '1'),
(9, 10, '2021-04-14 15:29:24', 32, 5, 'PREDNISONE 5mg (Tablet)', '1'),
(9, 11, '2021-04-14 15:29:24', 32, 6, 'HYDROXYZINE 10mg (Tablet)', '1'),
(37, 12, '2021-04-15 13:37:29', 33, 5, 'PREDNISONE 5mg (Tablet)', '1'),
(37, 13, '2021-04-15 13:42:51', 34, 46, 'Diphenhydramine 12.5mg/5ml (Syrup)', '3'),
(38, 14, '2021-04-15 13:45:39', 35, 5, 'PREDNISONE 5mg (Tablet)', '2'),
(0, 15, '2021-04-15 15:29:16', 35, 7, 'METHORTREXATE 2.5mg (Tablet)', '3'),
(0, 16, '2021-04-15 15:36:51', 35, 7, 'METHORTREXATE 2.5mg (Tablet)', '1'),
(38, 17, '2021-04-19 02:21:15', 36, 5, 'PREDNISONE 5mg (Tablet)', '1');

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
(39, 9, 'MkhMMG0rUG1ZdDMyUC8wSC9tUnhhUT09OjrZTJRFZdbpO29hH2n+ceu9', 'T2puL3g1QWdoaTVIRkNLbFJwTHdVQT09OjqcU9Kb88M9oF234Lm8tBrQ', NULL, 'MjBINHkzckJEUjZpZjN4L2Z3NmIydz09OjoeYP6r9hWtKKywSXT5HXbg', 'QUQxRWlPRWlZYjZBUHVYN3A1ek5udz09Ojp/zjdSQm85rn8Ipxjv6bak', '2021', NULL, '2021-04-15 12:52:19', NULL, 'VFdvS0dkQlEyZk9qeDJMc200aDc5QT09OjpWivUEMH5W6v7Amp9r+grr', 'VHlSdEUvZWhNMUF1QVh5V3UzZ1ZMZz09Ojq1a9Vvp/0Pw6ZuzvHdAozm', '');

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

--
-- Dumping data for table `tblprescription`
--

INSERT INTO `tblprescription` (`ID`, `PatientID`, `Medication`, `Type`, `Quantity`, `CreationDate`, `PrescID`, `morningBM`, `morningAM`, `afternoonBM`, `afternoonAM`, `eveningBM`, `eveningAM`, `duration`, `instructions`) VALUES
(1, 8, 'Paracetamol', 'Oral', '9', '2021-03-22 17:30:26', 40, '1', '', '2', '', '1', '', '3 days', 'take as needed'),
(2, 8, 'Paracetamol 15mg (Tablet)', 'Oral', '9', '2021-03-23 13:14:58', 41, '', '1', '', '1', '', '1', '3 days', 'take as needed'),
(3, 8, 'Paracetamol 15mg (Tablet)', 'Oral', '9', '2021-04-13 18:36:49', 42, '1', '', '2', '', '1', '', '3 days', 'take as needed'),
(4, 8, 'Paracetamol 15mg (Capsule)', 'Oral', '18', '2021-04-13 18:36:49', 42, '1', '', '2', '', '1', '', '3 days', 'take as needed'),
(5, 38, 'dkpFcWZSamo4Q3ppV3NuRVV2dXpIdz09OjrCA+67MNMsyMy/ivEfd8Kf', 'dVZySjBnVGZzTVRNWUJsOU9uVVhlZz09OjopycEeRCyZPfm5O9WtK1qi', 'bUlGN1Bjb3RlUENjQ0FiaFNIWGJXUT09OjpWYkGjfBnM/VVCTzOvPQMK', '2021-04-19 02:09:04', 45, 'SGlOUEU1cFdDWHpqSHY2NnVUdFA2QT09OjrEFfxYKtWCWeMg6cdOgHx+', 'TVd6T3cxUjJ2RS9kQXBseWtRMjJmUT09Ojq7ynnLLP0JnbaYTSgDQTRo', 'bnJ1UkQ1VWZYSzM5Vkd3Y3I0QlVHUT09OjoMcuhJ3Bbx/KSmy6lkWyFo', 'dzFTZHVjZnB2U2cvekJwZUh4MFd2Zz09OjqCVwZqQvl4ET7eUmogCG6F', 'OGl0NThTMDdQb1QzKzROWFFuamMzdz09Ojq07Rn9TpHyLDTMWO8hql4q', 'eEY3dlJjTXJSRHRIUUozRnhKYlRHQT09Ojqh3rvtJ9KibeVN32j0tYUo', 'cmUyY1lYNmdyVUwrKzlSdGdobjR2dz09OjoftTOUourwbTsSdhbABak/', 'dnVocjRJTGEwazhFMFNzK2t1Smljdz09OjoqWflV1fAHEcBhQ5vOg7jN'),
(6, 38, 'K2lka0VOVGZvZ1Z2K0FxMExTZUs5aHptK1dnMjVJMTlkbVM2RUVLaTFzcz06OkqY3OQjeHx7RIeGLzQdXDk=', 'NDB1a3NaRnpxZ2FhQ2h3VXZsK2NwQT09OjrEvhROOcSuZps1g66DPfBo', 'VzdvVWt1MFlrcEVaVHVKS1VqM2M0dz09OjoX0XTjxzfhAa2jrvS4AXzO', '2021-04-19 02:12:11', 46, 'NTBwM1h0cG9nWjd6UGsyWGV2SENodz09Ojr1XaIIAl4ybEgn5phBcGyl', 'a0MvOEFHejE3M2gvNUhzRzd5ZlYzQT09OjrUfUE09FZTaU3mrAbDt6gy', 'TTk4RzgwWXRCbzYwN0JFRDI3eGYwUT09OjrKAw6Q0Ka5WM0Sv8nm9XDa', 'L1pYbWsxTldYUUc3RERCUkdKbytCdz09OjrMlkgqy6PHNuXaJ5KDlIfj', 'Q2hzUVQ3NUsyV2RqMFZKbGhGM3RBdz09OjohW2NZC3cb1fMBNQfFKIdx', 'dWJ2MUpLMGhJMFFIVzhHejlnSGdadz09OjpuGuR+/uxVb/VvllvcJerx', 'aDh2QWtpUFZXTjMzNzgvQndVeldpZz09Ojqf1pBJxbGCQjDEihr65wln', 'MDlqbi9rMHp1azF1blVQOWpOVEZaZz09OjoHfNLvttVhoyndqDgaQ22j'),
(7, 38, 'azJzY3FkdGx0TVFsRWpVMmRXeisxbm1odThyaXlVNXdhK2NXTlllTWltdz06Op1BS3tARsL+IzqQx3TwxV8=', 'd3JxTWgyaGVLQ3U4aWZIYW9LVk5RUT09OjoR50FwPr1rkuLvsU24KWYg', 'Sk4wOFUycGQ5ekNMQUlyNFgrQ0tZdz09OjrlbTaO8gfzBd8BKTscdqWn', '2021-04-19 02:18:51', 47, 'QVJMZ3ZtSEJMaFNGbFBwUG1LdmpvQT09Ojo6knOo/kAJhVkQy6LIuqDj', 'NVF2akhRRFZCbEVMaXRpOVZDNGg0Zz09OjrjalMxBDovuu0dkOfA0odX', 'UmFGK25FVklvcm9wRzJydlpsVWxOdz09Ojo/3B9Ls28GR0Bwz8Al1ts2', 'TllFem5LWWJhVHJ5WVIwSkh6VnBtdz09Ojq9pTdwnvAYf27hD69/ldrv', 'SUR0VmE2dUxmM0E3Mll5TjREYTB4dz09Ojpz1xgxI3okmBT04SB6KuIQ', 'MStVWjQ1bGJOTU9qM1BqNWtId21Bdz09OjpqpBtePdK/0sprx1LVtKYs', 'THc1WVl6Vkw2Vk5LeXJxNWdLWlExQT09OjoYqFH9KnLm7qEu2ta8jpIb', 'R282UUd3ZjJtSG56TTJ5a0pFSWdldz09Ojq/urtkylW2pwYPwCH6e7S9'),
(8, 38, 'L1phQis4U1FFSDZobkg4YnBFMkhzSDhmSTZscUpmSG9QUVRHeURIQm5maz06OmwkKm8OUnd1h88h90C8fCc=', 'TSszMkM5QitXOHRGUGVvOHNKRlY5dz09OjqERe5jcjk8Ry/c3rWT8Vg3', 'SVNDbVpFam1SUG1kS1hHK3BUcFVDUT09OjoUNIj86NoDAex/GUjPvtJB', '2021-04-19 02:20:09', 48, 'V21VMjZPRDUvMCtlUEVoWnhYeVhZUT09Ojr9M1opkzxs9e+mhdKSmudc', 'Wm1yekRrRUhNQ1RVZStGY1U1aDJaUT09Ojq37sNLYCeyGkDMDGDupByU', 'NVNNVzBnTktNUXdtRVhMVjFrd0lvdz09Ojp9CzFrjZ1Kz9sSYjEEY7aR', 'Q2VSZm5FT2FZYjBzMTdlV0lyTmhyZz09OjrcgZ1KKXUULP9ZZpL5xiv4', 'VFFqVmVVQjlnR09SMFhYanZvanRqZz09OjoLd1l3IgM6Jw/N8YMUISji', 'bjRzWVpvOWMvU1hEY0FKOGFQbTRYdz09OjqCKnD/g8uzPzmN+Ik2RdAJ', 'dmNQODNtLzdwVFhSNExYb2h0QUNjZz09OjqO9oJjG97oE57t8VUqnmFN', 'MStrOU9UV3lrTlZUa3piaDJDRjlhUT09OjrQTKA9Vyy2nNCHp5l28yfF'),
(9, 38, 'azFVU3lZLzdpM2gvZnNTU1pLcG0yQ3NpdEcweVp0Z2JhK3B1cWl1WDYzYz06OpzBmfl9O2zTZYE0Y/ah6v0=', 'RHI4ZVYzOVFNd2I5NHgyOXQwd1I0dz09OjpctHFRkr1ZR/8boRbBVFrE', 'YU8xcWVpQUdHTDEwbEMzcU9ZREU1QT09OjoUvGmTmPVr8pAMLEdStLBc', '2021-04-19 02:23:20', 49, 'NzVaKzhsYU8yUTdhdW82TE5IdmNTZz09OjrgA/sIk3ybqriAmic2veH2', 'a3BQS3NNSTZGcFlyYms3RWh6NmdzUT09OjrgWbBYrSkin6615BgP+l27', 'L0taVSsydUlvMStWVTg3VHp4OTFUQT09OjoKIOACZSQtJ4o0jg9C2WOR', 'UCt0cjVHTlRFd3RoVUVIbzNiOFF5UT09Ojoh0MdM7kx5L+rpOXkNfdQC', 'Yk5YbVFJTldvaDRjMDA1bitpb1h0Zz09OjoAwyfZClCFoMMfd0V/Odhw', 'QjltaFR4OVdhK2JqZGs1eDMybDBudz09Ojr1u0Ezu6rWZkEJSG0ovUXZ', 'eGNiaUx3cEFDbzEyYVozK1RMRHlCZz09Ojr1JqK5QlPcraRLXd2xse9z', 'SGk0OXNBc2dzU1RFTlduQTFXK0w0QT09OjrP9YWwQ2O9n6s7I3gsQw8s'),
(10, 37, 'Mnd6Y1I4akg4dk9FRlI2RktmTWE0bUxrL3pYNjlmejBWYkp3bzBzNDd1QT06OiP+ZCL4K2ITI+EycpKInLA=', 'RFVBaGY2MFd3cFNZbXpTNVBwRnhsZz09Ojo1ekrpQ8KKt5TPxbveeL2j', 'ZHRxelFVZThoYWtFTlhjeWpyWWFEQT09Ojp2b4yTRMFYzy/jO2jzILLZ', '2021-04-23 08:46:04', 50, 'YTRjNllvWDZObGVyN3VkSWxuTzhPQT09Ojp+vvX+WTOu8DmrqPZkJ6E0', 'MjBuTGxxcjhGbHNIZkxJWmg0VFVFZz09OjozArCBM4jD4X74ui2Q45SG', 'OFZEUnAySFVsNUlldUU1cTlUeDZkUT09Ojpyvm6CT5n3sx9Xjli1WKgE', 'cVUxT3pleDhRdDVxRWlyUkdLVTdvdz09Ojr9YnCuRl3aDDiEir9D3OLO', 'd1FheExIMC9pNGw1bkhQVjJBSUxKUT09Ojp2oBEjv0vFTLClA4quqtF6', 'SmE5Nyt3K3M0MWJBSlU1ZEwreExuQT09OjoH4df5jGvNmof764nZAJr2', 'U01lQXBiS2IzTC9hQmtoR1BnZEdFZz09OjpTJ5aVbUO5IxmDcB4znK/S', 'UGY1S0xXRHhQWks1QlpQRG1xWTVWQT09OjowIkXdNl0KbKwZNYofz8Ic');

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
(39, 15, '2021-04-26 14:31:31', 5, '5', 'staff1', 'PREDNISONE 5mg (Tablet)'),
(39, 16, '2021-04-26 14:51:21', 6, '33', 'staff1', 'HYDROXYZINE 10mg (Tablet)'),
(39, 17, '2021-04-26 14:51:53', 9, '3', 'staff1', 'SULTAMICILLIN 375mg (Tablet)'),
(39, 18, '2021-04-26 14:52:17', 7, '2', 'staff1', 'METHORTREXATE 2.5mg (Tablet)'),
(39, 19, '2021-04-26 14:52:52', 5, '5', 'staff1', 'PREDNISONE 5mg (Tablet)'),
(39, 20, '2021-04-26 14:53:15', 5, '5', 'staff1', 'PREDNISONE 5mg (Tablet)'),
(39, 21, '2021-04-26 14:53:36', 12, '2', 'staff1', 'RANITIDINE 150mg (Tablet)'),
(39, 22, '2021-04-26 15:07:41', 9, '5', 'staff1', 'SULTAMICILLIN 375mg (Tablet)');

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

--
-- Dumping data for table `tbltodo`
--

INSERT INTO `tbltodo` (`todoID`, `username`, `todoNotes`, `todoStamp`) VALUES
(19, 'rabeleda', 'Nyellow 2', '2021-04-26 11:54:59'),
(20, 'staff1', 'Hello', '2021-04-26 12:28:24'),
(21, 'admin', 'Hello World', '2021-04-26 12:30:59');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-07 14:57:46', NULL, 1),
(25, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-12 23:55:48', NULL, 1),
(26, 0, 'staff1', 0x4164646564204170706f696e746d656e, '2021-04-14 18:47:11', NULL, 1),
(27, 0, 'staff1', 0x4164646564204170706f696e746d656e, '2021-04-14 18:47:49', NULL, 1),
(28, 0, 'staff1', 0x4164646564204170706f696e746d656e, '2021-04-14 18:48:00', NULL, 1),
(29, 0, '', 0x55706461746564204170706f696e746d, '2021-04-14 23:23:34', NULL, 1),
(30, 0, '', 0x55706461746564204170706f696e746d, '2021-04-14 23:23:47', NULL, 1),
(31, 0, '', 0x55706461746564204170706f696e746d, '2021-04-14 23:23:55', NULL, 1),
(32, 0, '', 0x55706461746564204170706f696e746d, '2021-04-14 23:23:56', NULL, 1),
(33, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 02:31:51', NULL, 1),
(34, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 02:34:13', NULL, 1),
(35, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 02:37:04', NULL, 1),
(36, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 02:39:50', NULL, 1),
(37, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 03:02:37', NULL, 1),
(38, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 03:06:42', NULL, 1),
(39, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 03:49:30', NULL, 1),
(40, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 03:53:19', NULL, 1),
(41, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 04:19:58', NULL, 1),
(42, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 04:20:14', NULL, 1),
(43, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 04:27:49', NULL, 1),
(44, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 04:32:43', NULL, 1),
(45, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 04:37:36', NULL, 1),
(46, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 04:39:50', NULL, 1),
(47, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 04:42:01', NULL, 1),
(48, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 04:43:11', NULL, 1),
(49, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 04:44:17', NULL, 1),
(50, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 05:26:32', NULL, 1),
(51, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 05:30:05', NULL, 1),
(52, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 05:31:39', NULL, 1),
(53, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 05:32:50', NULL, 1),
(54, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 05:43:11', NULL, 1),
(55, 0, 'staff1', 0x4164646564204170706f696e746d656e, '2021-04-15 07:52:33', NULL, 1),
(56, 0, 'staff1', 0x4164646564204170706f696e746d656e, '2021-04-15 07:52:45', NULL, 1),
(57, 0, 'staff1', 0x4164646564204170706f696e746d656e, '2021-04-15 07:57:05', NULL, 1),
(58, 0, 'staff1', 0x4164646564204170706f696e746d656e, '2021-04-15 08:00:27', NULL, 1),
(59, 0, 'staff1', 0x4164646564204170706f696e746d656e, '2021-04-15 08:02:17', NULL, 1),
(60, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 12:32:01', NULL, 1),
(61, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 12:50:06', NULL, 1),
(62, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-15 12:52:19', NULL, 1),
(63, 0, 'rabeleda', 0x41646465642054726561746d656e7400, '2021-04-15 13:37:29', NULL, 1),
(64, 0, 'rabeleda', 0x41646465642054726561746d656e7400, '2021-04-15 13:42:51', NULL, 1),
(65, 0, 'rabeleda', 0x41646465642054726561746d656e7400, '2021-04-15 13:45:39', NULL, 1),
(66, 0, 'staff1', 0x4164646564204170706f696e746d656e, '2021-04-15 16:11:06', NULL, 1),
(67, 0, 'staff1', 0x4164646564204170706f696e746d656e, '2021-04-15 16:20:01', NULL, 1),
(68, 0, 'staff1', 0x4164646564204170706f696e746d656e, '2021-04-15 16:24:12', NULL, 1),
(69, 0, 'staff1', 0x4164646564204170706f696e746d656e, '2021-04-15 16:29:01', NULL, 1),
(70, 0, '', 0x55706461746564204170706f696e746d, '2021-04-16 04:43:57', NULL, 1),
(71, 0, '', 0x55706461746564204170706f696e746d, '2021-04-16 04:49:20', NULL, 1),
(72, 0, '', 0x55706461746564204170706f696e746d, '2021-04-16 04:50:01', NULL, 1),
(73, 0, 'rabeleda', 0x41646465642050726573637269707469, '2021-04-19 02:09:05', NULL, 1),
(74, 0, 'rabeleda', 0x41646465642050726573637269707469, '2021-04-19 02:12:11', NULL, 1),
(75, 0, 'rabeleda', 0x41646465642050726573637269707469, '2021-04-19 02:18:51', NULL, 1),
(76, 0, 'rabeleda', 0x41646465642050726573637269707469, '2021-04-19 02:20:09', NULL, 1),
(77, 0, 'rabeleda', 0x41646465642054726561746d656e7400, '2021-04-19 02:21:15', NULL, 1),
(78, 0, 'rabeleda', 0x41646465642050726573637269707469, '2021-04-19 02:23:20', NULL, 1),
(79, 0, 'rabeleda', 0x41646465642050726573637269707469, '2021-04-23 08:46:04', NULL, 1),
(80, 0, 'rabeleda', 0x4564697465642050617469656e740000, '2021-04-23 09:37:13', NULL, 1),
(81, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-23 10:15:22', NULL, 1),
(82, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-23 10:15:37', NULL, 1),
(83, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-23 10:17:11', NULL, 1),
(84, 0, 'rabeleda', 0x4564697465642050617469656e740000, '2021-04-23 10:26:01', NULL, 1),
(85, 0, 'rabeleda', 0x4564697465642050617469656e740000, '2021-04-23 10:26:21', NULL, 1),
(86, 0, 'rabeleda', 0x4564697465642050617469656e740000, '2021-04-23 10:26:57', NULL, 1),
(87, 0, 'rabeleda', 0x4564697465642050617469656e740000, '2021-04-23 10:29:46', NULL, 1),
(88, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-23 11:13:23', NULL, 1),
(89, 0, 'rabeleda', 0x4564697465642050617469656e740000, '2021-04-23 11:14:09', NULL, 1),
(90, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-23 12:12:59', NULL, 1),
(91, 0, 'rabeleda', 0x4564697465642050617469656e740000, '2021-04-23 12:13:13', NULL, 1),
(92, 0, 'rabeleda', 0x4164646564204e65772050617469656e, '2021-04-23 12:20:43', NULL, 1),
(93, 0, 'rabeleda', 0x4564697465642050617469656e740000, '2021-04-23 12:20:57', NULL, 1),
(94, 0, 'rabeleda', 0x4564697465642050617469656e740000, '2021-04-23 12:21:03', NULL, 1),
(95, 0, 'staff1', 0x4164646564204170706f696e746d656e, '2021-04-26 00:33:55', NULL, 1);

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
(12, 'Ben Garcia', 'staff', 'staff2@gmail.com', 'staff2', '2021-04-03 21:04:59', NULL, 'staff2');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `medicineused`
--
ALTER TABLE `medicineused`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tblmedicineused`
--
ALTER TABLE `tblmedicineused`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tblprescription`
--
ALTER TABLE `tblprescription`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblpurchasinghistory`
--
ALTER TABLE `tblpurchasinghistory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbltodo`
--
ALTER TABLE `tbltodo`
  MODIFY `todoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
