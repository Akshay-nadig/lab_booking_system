-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2025 at 07:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lab_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `booked_labs`
--

CREATE TABLE `booked_labs` (
  `id` int(11) NOT NULL,
  `lab` varchar(255) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `block` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `booking_date` datetime DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `block` varchar(10) NOT NULL,
  `lab` varchar(50) NOT NULL,
  `day` varchar(20) NOT NULL,
  `start_time` varchar(10) NOT NULL,
  `end_time` varchar(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `booking_date` timestamp NULL DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `delete_reason` varchar(255) DEFAULT NULL,
  `status` enum('booked','deleted') DEFAULT 'booked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deleted_bookings`
--

CREATE TABLE `deleted_bookings` (
  `id` int(11) NOT NULL,
  `lab` varchar(255) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `block` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `booking_date` datetime DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `delete_reason` text DEFAULT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fixed_bookings`
--

CREATE TABLE `fixed_bookings` (
  `id` int(11) NOT NULL,
  `block` varchar(10) NOT NULL,
  `lab` varchar(50) NOT NULL,
  `day` varchar(20) NOT NULL,
  `start_time` varchar(10) NOT NULL,
  `end_time` varchar(10) NOT NULL,
  `course` varchar(255) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fixed_bookings`
--

INSERT INTO `fixed_bookings` (`id`, `block`, `lab`, `day`, `start_time`, `end_time`, `course`, `capacity`) VALUES
(1, 'A', 'A-001', 'Monday', '08:00', '10:00', 'No SQL VII-A', 70),
(2, 'A', 'A-001', 'Monday', '11:30', '13:30', 'OOPs with Java – III-B', 70),
(3, 'A', 'A-001', 'Tuesday', '10:30', '12:30', 'No SQL VII-B', 70),
(4, 'A', 'A-001', 'Wednesday', '11:30', '13:30', 'OOPs with Java-III-A', 70),
(5, 'A', 'A-001', 'Wednesday', '14:30', '16:30', 'TPEC-III V A', 70),
(6, 'A', 'A-001', 'Thursday', '14:30', '16:30', 'OOPs with Java – III-C', 70),
(7, 'A', 'A-001', 'Friday', '11:30', '13:30', 'TPEC-III V-C', 70),
(8, 'A', 'A-001', 'Friday', '14:30', '16:30', 'TPEC-III V-D', 70),
(9, 'A', 'A-110 A& B', 'Monday', '14:30', '16:30', 'ML (A1)-V - A', 48),
(10, 'A', 'A-110 A& B', 'Tuesday', '11:30', '13:30', 'ML (B1)-V B', 48),
(11, 'A', 'A-110 A& B', 'Tuesday', '14:30', '16:30', 'DS(B1)-III-B', 48),
(12, 'A', 'A-110 A& B', 'Wednesday', '09:00', '11:00', 'ML (D1)-V - D', 48),
(13, 'A', 'A-110 A& B', 'Wednesday', '14:30', '16:30', 'ML (C1)-V - C', 48),
(14, 'A', 'A-110 A& B', 'Thursday', '09:00', '11:00', 'ML (A2)-V - A', 48),
(15, 'A', 'A-110 A& B', 'Thursday', '11:30', '13:30', 'ML (C2)-V- C', 48),
(16, 'A', 'A-110 A& B', 'Thursday', '14:30', '16:30', 'DS(B1)-III-B', 48),
(17, 'A', 'A-110 A& B', 'Friday', '11:30', '13:30', 'ML (D2)-V D', 48),
(18, 'A', 'A-110 A& B', 'Friday', '14:30', '16:30', 'ML (B2)-V B', 48),
(19, 'A', 'A-110 C&D', 'Monday', '14:30', '16:30', 'CN (A2)-V- A', 48),
(20, 'A', 'A-110 C&D', 'Tuesday', '11:30', '13:30', 'CN (B2)-V- B', 48),
(21, 'A', 'A-110 C&D', 'Tuesday', '14:30', '16:30', 'DS(A2)-III-A', 48),
(22, 'A', 'A-110 C&D', 'Wednesday', '09:00', '11:00', 'CN (D2)-V- D', 48),
(23, 'A', 'A-110 C&D', 'Wednesday', '11:30', '13:30', 'DS(C2)-III-C', 48),
(24, 'A', 'A-110 C&D', 'Wednesday', '14:30', '16:30', 'CN (C2)-V- C', 48),
(25, 'A', 'A-110 C&D', 'Thursday', '09:00', '11:00', 'CN (A1)-V- A', 48),
(26, 'A', 'A-110 C&D', 'Thursday', '11:30', '13:30', 'CN (C1)-V- C', 48),
(27, 'A', 'A-110 C&D', 'Friday', '11:30', '13:30', 'CN (D1)-V-D', 48),
(28, 'A', 'A-110 C&D', 'Friday', '14:30', '16:30', 'CN (B1)-V- B', 48),
(29, 'A', 'A-211 A&B', 'Monday', '11:30', '13:30', 'DS(A1)-III-A', 48),
(30, 'A', 'A-211 A&B', 'Monday', '14:30', '16:30', 'DS(C1)-III-C', 48),
(31, 'A', 'A-211 A&B', 'Tuesday', '11:30', '13:30', 'DS(C2)-III-B', 48),
(32, 'A', 'A-211 A&B', 'Tuesday', '14:30', '16:30', 'CO & IOT(B2) III-B', 48),
(33, 'A', 'A-211 A&B', 'Wednesday', '14:30', '16:30', 'DS(B2)-III-B', 48),
(34, 'A', 'A-211 A&B', 'Thursday', '11:30', '13:30', 'DS(A1)-III-A', 48),
(35, 'A', 'A-211 A&B', 'Thursday', '14:30', '16:30', 'CO & IOT(B2) III-B', 48),
(36, 'A', 'A-211 A&B', 'Friday', '09:00', '11:00', 'DS(C1)-III-B', 48),
(37, 'A', 'A-211 A&B', 'Friday', '11:30', '13:30', 'DS(B2)-III-B', 48),
(38, 'A', 'A-211 A&B', 'Friday', '14:30', '16:30', 'DS(A2)-III-A', 48),
(39, 'A', 'A-211 C&D', 'Monday', '11:30', '13:30', 'CO & IOT(A2) III-A', 48),
(40, 'A', 'A-211 C&D', 'Monday', '14:30', '16:30', 'CO & IOT(C2) III-C', 48),
(41, 'A', 'A-211 C&D', 'Tuesday', '11:30', '13:30', 'CO & IOT(C1) III-B', 48),
(42, 'A', 'A-211 C&D', 'Tuesday', '14:30', '16:30', 'CO & IOT(A1) III-A', 48),
(43, 'A', 'A-211 C&D', 'Wednesday', '11:30', '13:30', 'CO & IOT(C1) III-C', 48),
(44, 'A', 'A-211 C&D', 'Wednesday', '14:30', '16:30', 'CO & IOT(B1) III-B', 48),
(45, 'A', 'A-211 C&D', 'Thursday', '11:30', '13:30', 'CO & IOT(A2) III-A', 48),
(46, 'A', 'A-211 C&D', 'Friday', '09:00', '11:00', 'CO & IOT(C2) III-B', 48),
(47, 'A', 'A-211 C&D', 'Friday', '11:30', '13:30', 'CO & IOT(B1) III-B', 48),
(48, 'A', 'A-211 C&D', 'Friday', '14:30', '16:30', 'CO & IOT(A1) III-A', 48),
(49, 'A', 'A-306 A &B', 'Thursday', '14:30', '16:30', 'CE-1 V-D', 44),
(50, 'A', 'A-308', 'Monday', '09:00', '11:00', 'I Year', 80),
(51, 'A', 'A-308', 'Monday', '14:30', '16:30', 'CE-1 V-C', 80),
(52, 'A', 'A-308', 'Tuesday', '14:30', '16:30', 'OS LAB – III-C', 80),
(53, 'A', 'A-308', 'Wednesday', '14:30', '16:30', 'CE-1 V-B', 80),
(54, 'A', 'A-308', 'Thursday', '11:30', '13:30', 'OS LAB – III-B', 80),
(55, 'A', 'A-308', 'Thursday', '14:30', '16:30', 'TPEC-III V-B', 80),
(56, 'A', 'A-308', 'Friday', '09:00', '11:00', 'OS LAB – III-A', 80),
(57, 'A', 'A-308', 'Friday', '14:30', '16:30', 'CE-I-V-A', 80),
(58, 'C', 'C-003', 'Tuesday', '14:30', '16:30', 'EEE Skill Lab-V Sem', 40),
(59, 'C', 'C-003', 'Wednesday', '14:30', '16:30', 'EEE V Sem \r\nBNITP508', 40),
(60, 'C', 'C-003', 'Friday', '09:00', '11:00', 'EEE V Sem \r\nBNITP508', 40),
(61, 'C', 'C-102', 'Monday', '13:30', '15:30', 'EEE-VII SEM BEEPS701', 60),
(62, 'C', 'C-102', 'Tuesday', '13:30', '15:30', 'EEE-VII SEM BEEPS701', 60),
(63, 'C', 'C-102', 'Wednesday', '13:30', '15:30', 'EEE-VII SEM BEEPS701', 60),
(64, 'D', 'D-104 A', 'Monday', '11:30', '13:30', 'BMEMD305-Lab\r\n  “C” Sec', 70),
(65, 'D', 'D-104 A', 'Monday', '14:30', '16:30', 'BMEAI309-Lab “A” Sec', 70),
(66, 'D', 'D-104 A', 'Tuesday', '09:00', '11:00', 'BMEMD305-Lab\r\n“C” Sec', 70),
(67, 'D', 'D-104 A', 'Tuesday', '14:30', '16:30', 'BMEMD305-Lab “A” Sec', 70),
(68, 'D', 'D-104 A', 'Wednesday', '14:30', '16:30', 'BMEMD305-Lab “B” Sec', 70),
(69, 'D', 'D-104 A', 'Thursday', '14:30', '16:30', 'BMEMD305-Lab “B” Sec', 70),
(70, 'D', 'D-104 A', 'Friday', '09:00', '11:00', 'BMEMD305-Lab\r\n“A” Sec', 70),
(71, 'D', 'D-104 A', 'Friday', '14:30', '16:30', 'BMEAI309-Lab “C” Sec', 70),
(72, 'D', 'D-104 B', 'Monday', '10:30', '12:30', 'BMERA701-A2', 30),
(73, 'D', 'D-104 B', 'Tuesday', '08:00', '10:00', 'BMERA701-B2', 30),
(74, 'D', 'D-104 B', 'Tuesday', '11:30', '13:30', 'BMECM502- A2', 30),
(75, 'D', 'D-104 B', 'Wednesday', '08:00', '10:00', 'BMERA701-A1', 30),
(76, 'D', 'D-104 B', 'Wednesday', '10:30', '12:30', 'BMERA701-B3', 30),
(77, 'D', 'D-104 B', 'Wednesday', '14:30', '16:30', 'BMECM502- A1', 30),
(78, 'D', 'D-104 B', 'Thursday', '08:00', '10:00', 'BNITP508A', 30),
(79, 'D', 'D-104 B', 'Thursday', '11:30', '13:30', 'BMECM502- B2', 30),
(80, 'D', 'D-104 B', 'Thursday', '14:30', '16:30', 'BMECM502- C1', 30),
(81, 'D', 'D-104 B', 'Friday', '11:30', '13:30', 'BMECM502- C2', 30),
(82, 'D', 'D-104 B', 'Friday', '14:30', '16:30', 'BMECM502- B1', 30),
(83, 'D', 'D-220', 'Monday', '10:30', '12:30', 'BMERA701-B1', 30),
(84, 'D', 'D-220', 'Monday', '13:30', '15:30', 'BMERA701-C1', 30),
(85, 'D', 'D-220', 'Tuesday', '08:00', '10:00', 'BMERA701-C2', 30),
(86, 'D', 'D-220', 'Tuesday', '14:30', '16:30', 'BMERA701-A3 (02 to 4.00)', 30),
(87, 'D', 'D-220', 'Wednesday', '08:00', '10:00', 'BMERA701-C3', 30),
(88, 'D', 'D-220', 'Wednesday', '10:30', '12:30', 'BMERA701-B3', 30),
(89, 'H', 'H-001', 'Monday', '10:30', '12:30', '1BATM101:ME-C', 60),
(90, 'H', 'H-001', 'Tuesday', '08:00', '10:00', '1BCEDS104: CSE-J', 60),
(91, 'H', 'H-001', 'Tuesday', '10:30', '12:30', '1BCEDS104: CSE-H', 60),
(92, 'H', 'H-001', 'Tuesday', '13:30', '15:30', '1BMATS101: CSE-I', 60),
(93, 'H', 'H-001', 'Wednesday', '08:00', '10:00', '1BMATS101: AI-A', 60),
(94, 'H', 'H-001', 'Wednesday', '10:30', '12:30', '1BMATS101: EC-A', 60),
(95, 'H', 'H-001', 'Wednesday', '13:30', '15:30', '1BMATS101: J', 60),
(96, 'H', 'H-001', 'Thursday', '08:00', '10:00', '1BCEDSL104-CS-K', 60),
(97, 'H', 'H-001', 'Thursday', '10:30', '12:30', '1BCEDS104: CSE-G', 60),
(98, 'H', 'H-001', 'Thursday', '13:30', '15:30', '1BCEDS104: CSE-C', 60),
(99, 'H', 'H-001', 'Friday', '08:00', '10:00', '1BMATS101: CSE-D', 60),
(100, 'H', 'H-001', 'Friday', '10:30', '12:30', '1BMATS101: CSE-K', 60),
(101, 'H', 'H-001', 'Friday', '13:30', '15:30', '1BCEDS104: CSE-A', 60),
(102, 'H', 'H-002', 'Monday', '08:00', '10:00', '1BMATS101: AI-C', 60),
(103, 'H', 'H-002', 'Monday', '10:30', '12:30', '1BCEDSL104-CS-I', 60),
(104, 'H', 'H-002', 'Monday', '13:30', '15:30', '1BCEDSL104-CS-E', 60),
(105, 'H', 'H-002', 'Tuesday', '10:30', '12:30', '1BMATS101: CSE-L', 60),
(106, 'H', 'H-002', 'Tuesday', '13:30', '15:30', '1BCEDSL104-CS-F', 60),
(107, 'H', 'H-002', 'Wednesday', '08:00', '10:00', '1BMATS101: CSE-H', 60),
(108, 'H', 'H-002', 'Wednesday', '10:30', '12:30', '1BMATE101: ECE-C', 60),
(109, 'H', 'H-002', 'Wednesday', '13:30', '15:30', '1BCEDSL104-CS-L', 60),
(110, 'H', 'H-002', 'Thursday', '08:00', '10:00', 'TPEC', 60),
(111, 'H', 'H-002', 'Thursday', '10:30', '12:30', '1BMATC101: CV-B', 60),
(112, 'H', 'H-002', 'Thursday', '13:30', '15:30', '1BCEDSL104-CS-D', 60),
(113, 'H', 'H-002', 'Friday', '10:30', '12:30', '1BCEDSL104-E&EE', 60),
(114, 'H', 'H-002', 'Friday', '13:30', '15:30', '1BCEDSL104-CS-B', 60),
(115, '', 'Lab / Day', 'Monday', '08:00', '10:00', 'Monday', NULL),
(116, '', 'Lab / Day', 'Tuesday', '08:00', '10:00', 'Tuesday', NULL),
(117, '', 'Lab / Day', 'Wednesday', '08:00', '10:00', 'Wednesday', NULL),
(118, '', 'Lab / Day', 'Thursday', '08:00', '10:00', 'Thursday', NULL),
(119, '', 'Lab / Day', 'Friday', '08:00', '10:00', 'Friday', NULL),
(120, 'M', 'M-301', 'Monday', '09:00', '11:00', 'CN \'A\'', 60),
(121, 'M', 'M-301', 'Monday', '11:30', '13:30', 'DS \'F\'', 60),
(122, 'M', 'M-301', 'Monday', '14:30', '16:30', 'NOSQL \'B\'', 60),
(123, 'M', 'M-301', 'Tuesday', '11:30', '13:30', 'DS \'H\'', 60),
(124, 'M', 'M-301', 'Tuesday', '14:30', '16:30', 'DS \'C\'', 60),
(125, 'M', 'M-301', 'Wednesday', '09:00', '11:00', 'TPEC \'C\'', 60),
(126, 'M', 'M-301', 'Wednesday', '11:30', '13:30', 'DS \'D\'', 60),
(127, 'M', 'M-301', 'Wednesday', '14:30', '16:30', 'JAVA \'A\'', 60),
(128, 'M', 'M-301', 'Thursday', '09:00', '11:00', 'DS \'I\'', 60),
(129, 'M', 'M-301', 'Thursday', '11:30', '13:30', 'DS \'E\'', 60),
(130, 'M', 'M-301', 'Thursday', '14:30', '16:30', 'JAVA \'A\'', 60),
(131, 'M', 'M-301', 'Friday', '09:00', '11:00', 'CN \'B\'', 60),
(132, 'M', 'M-301', 'Friday', '11:30', '13:30', 'DS \'H\'', 60),
(133, 'M', 'M-301', 'Friday', '14:30', '16:30', 'JAVA \'A\'', 60),
(134, 'M', 'M-302', 'Monday', '09:00', '11:00', 'TPEC \'D\'', 60),
(135, 'M', 'M-302', 'Monday', '11:30', '13:30', 'EIOT \'D\'', 60),
(136, 'M', 'M-302', 'Monday', '14:30', '16:30', 'NOSQL \'A\'', 60),
(137, 'M', 'M-302', 'Tuesday', '09:00', '11:00', 'EIOT \'I\'', 60),
(138, 'M', 'M-302', 'Tuesday', '11:30', '13:30', 'PE FSD', 60),
(139, 'M', 'M-302', 'Tuesday', '14:30', '16:30', 'EIOT \'E\'', 60),
(140, 'M', 'M-302', 'Wednesday', '09:00', '11:00', 'DS \'F\'', 60),
(141, 'M', 'M-302', 'Wednesday', '11:30', '13:30', 'EIOT \'G\'', 60),
(142, 'M', 'M-302', 'Wednesday', '14:30', '16:30', 'JAVA \'F\'', 60),
(143, 'M', 'M-302', 'Thursday', '09:00', '11:00', 'EIOT \'A\'', 60),
(144, 'M', 'M-302', 'Thursday', '11:30', '13:30', 'EIOT \'D\'', 60),
(145, 'M', 'M-302', 'Thursday', '14:30', '16:30', 'EIOT \'I\'', 60),
(146, 'M', 'M-302', 'Friday', '09:00', '11:00', 'CN \'C\'', 60),
(147, 'M', 'M-302', 'Friday', '11:30', '13:30', 'EIOT \'B\'', 60),
(148, 'M', 'M-302', 'Friday', '14:30', '16:30', 'JAVA \'A\'', 60),
(149, 'M', 'M-306', 'Monday', '09:00', '11:00', 'Devops \'C\'', 60),
(150, 'M', 'M-306', 'Monday', '11:30', '13:30', 'EIOT \'G\'', 60),
(151, 'M', 'M-306', 'Monday', '14:30', '16:30', 'NOSQL \'C\'', 60),
(152, 'M', 'M-306', 'Tuesday', '09:00', '11:00', 'EIOT \'A\'', 60),
(153, 'M', 'M-306', 'Tuesday', '11:30', '13:30', 'EIOT \'F\'', 60),
(154, 'M', 'M-306', 'Tuesday', '14:30', '16:30', 'EIOT \'B\'', 60),
(155, 'M', 'M-306', 'Wednesday', '09:00', '11:00', 'TPEC \'B\'', 60),
(156, 'M', 'M-306', 'Wednesday', '11:30', '13:30', 'EIOT \'H\'', 60),
(157, 'M', 'M-306', 'Wednesday', '14:30', '16:30', 'EIOT \'C\'', 60),
(158, 'M', 'M-306', 'Thursday', '09:00', '11:00', '1BIPCS103 CS \'J\'', 60),
(159, 'M', 'M-306', 'Thursday', '11:30', '13:30', 'EIOT \'C\'', 60),
(160, 'M', 'M-306', 'Thursday', '14:30', '16:30', 'EIOT \'H\'', 60),
(161, 'M', 'M-306', 'Friday', '09:00', '11:00', 'TPEC \'A\'', 60),
(162, 'M', 'M-306', 'Friday', '11:30', '13:30', 'EIOT \'E\'', 60),
(163, 'M', 'M-306', 'Friday', '14:30', '16:30', 'EIOT \'F\'', 60),
(164, 'M', 'M-307', 'Monday', '08:00', '10:00', '1BIPCS103  CSE \'D\'', 60),
(165, 'M', 'M-307', 'Monday', '11:30', '13:30', '1BIPCS103  CSE \'F\'', 60),
(166, 'M', 'M-307', 'Monday', '13:30', '15:30', 'MATS101 CS \'A\'', 60),
(167, 'M', 'M-307', 'Tuesday', '08:00', '10:00', '1BIPCS103  AI \'A\'', 60),
(168, 'M', 'M-307', 'Tuesday', '10:30', '12:30', 'MATS101 CS\'G\'', 60),
(169, 'M', 'M-307', 'Tuesday', '13:30', '15:30', '1BIPCS103 AI \'B\'', 60),
(170, 'M', 'M-307', 'Wednesday', '08:00', '10:00', '1BIPCS103  CSE \'A\'', 60),
(171, 'M', 'M-307', 'Wednesday', '10:30', '12:30', '1BIPCS103  CSE \'E\'', 60),
(172, 'M', 'M-307', 'Wednesday', '13:30', '15:30', '1BIPCS103  AI \'C\'', 60),
(173, 'M', 'M-307', 'Thursday', '08:00', '10:00', 'MATS101 EEE', 60),
(174, 'M', 'M-307', 'Thursday', '10:30', '12:30', 'MATS101 CV \'A\'', 60),
(175, 'M', 'M-307', 'Thursday', '13:30', '15:30', 'MATS101 ME \'A\'', 60),
(176, 'M', 'M-307', 'Friday', '08:00', '10:00', '1BIPCS103  CSE \'K\'', 60),
(177, 'M', 'M-307', 'Friday', '10:30', '12:30', '1BIPCS103  CSE \'L\'', 60),
(178, 'M', 'M-307', 'Friday', '13:30', '15:30', 'MATS101 CSE \'C\'', 60),
(179, 'M', 'M-308', 'Monday', '09:00', '11:00', 'CSE (Data Structures) LAB', 60),
(180, 'M', 'M-308', 'Monday', '11:30', '13:30', 'AIML III Sem \'B\' Sec (DS)', 60),
(181, 'M', 'M-308', 'Monday', '13:30', '15:30', 'AIML VII Sem \'A\' Sec (NSD)', 60),
(182, 'M', 'M-308', 'Tuesday', '09:00', '11:00', 'AIML III Sem \'B\' Sec (DS)', 60),
(183, 'M', 'M-308', 'Tuesday', '11:30', '13:30', 'AIML III Sem \'A\' Sec (CSP-1)', 60),
(184, 'M', 'M-308', 'Tuesday', '14:30', '16:30', 'AIML V Sem \'B\' Sec (BML)', 60),
(185, 'M', 'M-308', 'Wednesday', '11:30', '13:30', 'AIML -NPL', 60),
(186, 'M', 'M-308', 'Wednesday', '14:30', '16:30', 'AIML III Sem ‘A’ Sec (AI Toolkit)', 60),
(187, 'M', 'M-308', 'Thursday', '09:00', '11:00', 'AIML III Sem \'C\' Sec (DS)', 60),
(188, 'M', 'M-308', 'Thursday', '11:30', '13:30', 'AIML III Sem ‘B’ Sec (CSP-1)', 60),
(189, 'M', 'M-308', 'Thursday', '14:30', '16:30', 'AIML III Sem \'A\' Sec (Al Toolkit)', 60),
(190, 'M', 'M-308', 'Friday', '11:30', '13:30', 'AIML V Sem \'A\' Sec (BML)', 60),
(191, 'M', 'M-308', 'Friday', '14:30', '16:30', 'AIML III Sem \'C\' Sec (DS)', 60),
(192, 'M', 'M-309', 'Monday', '09:00', '11:00', 'AIML V Sem \'B\' Sec (TPEC)', 60),
(193, 'M', 'M-309', 'Monday', '11:30', '13:30', 'AIML III Sem \'C\' Sec (AI Toolkit)', 60),
(194, 'M', 'M-309', 'Monday', '13:30', '15:30', 'AIML VII Sem \'B\' Sec (NSD)', 60),
(195, 'M', 'M-309', 'Tuesday', '11:30', '13:30', 'AIML III Sem \'C\' Sec (CSP-1)', 60),
(196, 'M', 'M-309', 'Tuesday', '14:30', '16:30', 'AIML V Sem \'A\' Sec (CN)', 60),
(197, 'M', 'M-309', 'Wednesday', '09:00', '11:00', 'CSE ( Data Structures LAB)', 60),
(198, 'M', 'M-309', 'Wednesday', '11:30', '13:30', 'AIML III Sem ‘B’ Sec (AI Toolkit)', 60),
(199, 'M', 'M-309', 'Wednesday', '14:30', '16:30', 'AIML V Sem ‘A’ Sec (TPEC)', 60),
(200, 'M', 'M-309', 'Thursday', '11:30', '13:30', 'AIML III Sem \'A\' Sec (DS)', 60),
(201, 'M', 'M-309', 'Thursday', '14:30', '16:30', 'AIML III Sem \'C\' Sec (Al Toolkit)', 60),
(202, 'M', 'M-309', 'Friday', '09:00', '11:00', 'AIML III Sem \'A\' Sec (DS)', 60),
(203, 'M', 'M-309', 'Friday', '11:30', '13:30', 'AIML V Sem \'B\' Sec (CN)', 60),
(204, 'M', 'M-309', 'Friday', '14:30', '16:30', 'AIML III Sem \'B\' Sec (Al Toolkit)', 60),
(205, 'M', 'M-314', 'Monday', '09:00', '11:00', 'BOOKED', 28),
(206, 'M', 'M-314', 'Monday', '11:30', '13:30', 'BOOKED', 28),
(207, 'M', 'M-314', 'Monday', '14:30', '16:30', 'BOOKED', 28),
(208, 'M', 'M-314', 'Tuesday', '10:30', '12:30', 'BOOKED', 28),
(209, 'M', 'M-314', 'Tuesday', '13:30', '15:30', 'BOOKED', 28),
(210, 'M', 'M-314', 'Wednesday', '09:00', '11:00', 'BOOKED', 28),
(211, 'M', 'M-314', 'Wednesday', '11:30', '13:30', 'BOOKED', 28),
(212, 'M', 'M-314', 'Wednesday', '14:30', '16:30', 'BOOKED', 28),
(213, 'M', 'M-314', 'Thursday', '09:00', '11:00', 'BOOKED', 28),
(214, 'M', 'M-314', 'Thursday', '11:30', '13:30', 'BOOKED', 28),
(215, 'M', 'M-314', 'Thursday', '14:30', '16:30', 'BOOKED', 28),
(216, 'M', 'M-314', 'Friday', '09:00', '11:00', 'BOOKED', 28),
(217, 'M', 'M-314', 'Friday', '11:30', '13:30', 'BOOKED', 28),
(218, 'M', 'M-314', 'Friday', '14:30', '16:30', 'BOOKED', 28),
(219, 'M', 'M-315', 'Monday', '09:00', '11:00', 'BOOKED', 30),
(220, 'M', 'M-315', 'Monday', '11:30', '13:30', 'BOOKED', 30),
(221, 'M', 'M-315', 'Monday', '14:30', '16:30', 'BOOKED', 30),
(222, 'M', 'M-315', 'Tuesday', '10:30', '12:30', 'BOOKED', 30),
(223, 'M', 'M-315', 'Tuesday', '13:30', '15:30', 'BOOKED', 30),
(224, 'M', 'M-315', 'Wednesday', '09:00', '11:00', 'BOOKED', 30),
(225, 'M', 'M-315', 'Wednesday', '11:30', '13:30', 'BOOKED', 30),
(226, 'M', 'M-315', 'Wednesday', '14:30', '16:30', 'BOOKED', 30),
(227, 'M', 'M-315', 'Thursday', '09:00', '11:00', 'BOOKED', 30),
(228, 'M', 'M-315', 'Thursday', '11:30', '13:30', 'BOOKED', 30),
(229, 'M', 'M-315', 'Thursday', '14:30', '16:30', 'BOOKED', 30),
(230, 'M', 'M-315', 'Friday', '09:00', '11:00', 'BOOKED', 30),
(231, 'M', 'M-315', 'Friday', '11:30', '13:30', 'BOOKED', 30),
(232, 'M', 'M-315', 'Friday', '14:30', '16:30', 'BOOKED', 30),
(233, 'M', 'M-316', 'Monday', '09:00', '11:00', 'Devops \'B\'', 60),
(234, 'M', 'M-316', 'Monday', '11:30', '13:30', 'DS \'B\'', 60),
(235, 'M', 'M-316', 'Monday', '14:30', '16:30', 'JAVA \'H\'', 60),
(236, 'M', 'M-316', 'Tuesday', '09:00', '11:00', 'DS \'B\'', 60),
(237, 'M', 'M-316', 'Tuesday', '11:30', '13:30', 'DS \'G\'', 60),
(238, 'M', 'M-316', 'Tuesday', '14:30', '16:30', 'DS \'D\'', 60),
(239, 'M', 'M-316', 'Wednesday', '09:00', '11:00', 'Devops \'A\'', 60),
(240, 'M', 'M-316', 'Wednesday', '11:30', '13:30', 'DS \'A\'', 60),
(241, 'M', 'M-316', 'Wednesday', '14:30', '16:30', 'JAVA \'B\'', 60),
(242, 'M', 'M-316', 'Thursday', '09:00', '11:00', 'DS \'G\'', 60),
(243, 'M', 'M-316', 'Thursday', '11:30', '13:30', 'CN \'D\'', 60),
(244, 'M', 'M-316', 'Thursday', '14:30', '16:30', 'JAVA \'G\'', 60),
(245, 'M', 'M-316', 'Friday', '09:00', '11:00', 'Devops \'D\'', 60),
(246, 'M', 'M-316', 'Friday', '11:30', '13:30', 'DS \'I\'', 60),
(247, 'M', 'M-316', 'Friday', '14:30', '16:30', 'JAVA \'D\'', 60),
(248, 'M', 'M-317', 'Monday', '10:30', '12:30', 'MATS101 EC \'B\'', 60),
(249, 'M', 'M-317', 'Monday', '13:30', '15:30', 'MATS101 CSE \'B\'', 60),
(250, 'M', 'M-317', 'Tuesday', '10:30', '12:30', '1BIPCS103  CSE \'I\'', 60),
(251, 'M', 'M-317', 'Tuesday', '13:30', '15:30', 'MAT101 EC \'E\'', 60),
(252, 'M', 'M-317', 'Wednesday', '08:00', '10:00', '1BIPCS103  CSE \'B\'', 60),
(253, 'M', 'M-317', 'Wednesday', '10:30', '12:30', '1BIPCS103  CSE \'C\'', 60),
(254, 'M', 'M-317', 'Wednesday', '13:30', '15:30', 'MATS101 EC \'D\'', 60),
(255, 'M', 'M-317', 'Thursday', '08:00', '10:00', 'MATS101 CSE \'F\'', 60),
(256, 'M', 'M-317', 'Thursday', '10:30', '12:30', '1BIPCS103  CSE \'H\'', 60),
(257, 'M', 'M-317', 'Thursday', '13:30', '15:30', 'MATS101 ME \'B\'', 60),
(258, 'M', 'M-317', 'Friday', '08:00', '10:00', '1BIPCS103  CSE \'G\'', 60),
(259, 'M', 'M-317', 'Friday', '10:30', '12:30', 'MATS101 CSE \'E\'', 60),
(260, 'M', 'M-317', 'Friday', '13:30', '15:30', 'MATS101 AI \'B\'', 60),
(261, '', 'nan', 'Monday', '08:00', '10:00', '8 -10', NULL),
(262, '', 'nan', 'Monday', '09:00', '11:00', '9-11', NULL),
(263, '', 'nan', 'Monday', '10:30', '12:30', '10.30 - 12.30', NULL),
(264, '', 'nan', 'Monday', '11:30', '13:30', '11.30 - 1.30', NULL),
(265, '', 'nan', 'Monday', '13:30', '15:30', '1.30 - 3.30', NULL),
(266, '', 'nan', 'Monday', '14:30', '16:30', '2.30 - 4.30', NULL),
(267, '', 'nan', 'Tuesday', '08:00', '10:00', '8 -10', NULL),
(268, '', 'nan', 'Tuesday', '09:00', '11:00', '9-11', NULL),
(269, '', 'nan', 'Tuesday', '10:30', '12:30', '10.30 - 12.30', NULL),
(270, '', 'nan', 'Tuesday', '11:30', '13:30', '11.30 - 1.30', NULL),
(271, '', 'nan', 'Tuesday', '13:30', '15:30', '1.30 - 3.30', NULL),
(272, '', 'nan', 'Tuesday', '14:30', '16:30', '2.30 - 4.30', NULL),
(273, '', 'nan', 'Wednesday', '08:00', '10:00', '8 -10', NULL),
(274, '', 'nan', 'Wednesday', '09:00', '11:00', '9-11', NULL),
(275, '', 'nan', 'Wednesday', '10:30', '12:30', '10.30 - 12.30', NULL),
(276, '', 'nan', 'Wednesday', '11:30', '13:30', '11.30 - 1.30', NULL),
(277, '', 'nan', 'Wednesday', '13:30', '15:30', '1.30 - 3.30', NULL),
(278, '', 'nan', 'Wednesday', '14:30', '16:30', '2.30 - 4.30', NULL),
(279, '', 'nan', 'Thursday', '08:00', '10:00', '8 -10', NULL),
(280, '', 'nan', 'Thursday', '09:00', '11:00', '9-11', NULL),
(281, '', 'nan', 'Thursday', '10:30', '12:30', '10.30 - 12.30', NULL),
(282, '', 'nan', 'Thursday', '11:30', '13:30', '11.30 - 1.30', NULL),
(283, '', 'nan', 'Thursday', '13:30', '15:30', '1.30 - 3.30', NULL),
(284, '', 'nan', 'Thursday', '14:30', '16:30', '2.30 - 4.30', NULL),
(285, '', 'nan', 'Friday', '08:00', '10:00', '8 -10', NULL),
(286, '', 'nan', 'Friday', '09:00', '11:00', '9-11', NULL),
(287, '', 'nan', 'Friday', '10:30', '12:30', '10.30 - 12.30', NULL),
(288, '', 'nan', 'Friday', '11:30', '13:30', '11.30 - 1.30', NULL),
(289, '', 'nan', 'Friday', '13:30', '15:30', '1.30 - 3.30', NULL),
(290, '', 'nan', 'Friday', '14:30', '16:30', '2.30 - 4.30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hods`
--

CREATE TABLE `hods` (
  `id` int(11) NOT NULL,
  `department` varchar(100) DEFAULT NULL,
  `hod_name` varchar(100) DEFAULT NULL,
  `hod_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hods`
--

INSERT INTO `hods` (`id`, `department`, `hod_name`, `hod_email`) VALUES
(1, 'maths', 'Dr. Divya Sharma', '2005ddhanush@gmail.com'),
(2, 'Computer Science', 'Prof. Alok Kumar', 'hod.cs@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `labs`
--

CREATE TABLE `labs` (
  `id` int(11) NOT NULL,
  `block` varchar(1) NOT NULL,
  `lab` varchar(50) NOT NULL,
  `type` enum('lab','classroom','interactive') DEFAULT 'lab',
  `capacity` int(11) DEFAULT 30
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `labs`
--

INSERT INTO `labs` (`id`, `block`, `lab`, `type`, `capacity`) VALUES
(1, 'A', 'A-001', 'lab', 70),
(2, 'A', 'A-110 A&B', 'lab', 48),
(3, 'A', 'A-110 C&D', 'lab', 48),
(4, 'A', 'A-211 A&B', 'lab', 48),
(5, 'A', 'A-211 C&D', 'lab', 48),
(6, 'A', 'A-306 A&B', 'lab', 44),
(7, 'A', 'A-308', 'lab', 80),
(8, 'C', 'C-003', 'lab', 40),
(9, 'C', 'C-102', 'lab', 60),
(10, 'D', 'D-104 A', 'lab', 70),
(11, 'D', 'D-104 B', 'lab', 30),
(12, 'D', 'D-220', 'lab', 30),
(13, 'H', 'H-001', 'lab', 60),
(14, 'H', 'H-002', 'lab', 60),
(15, 'M', 'M-301', 'lab', 60),
(16, 'M', 'M-302', 'lab', 60),
(17, 'M', 'M-306', 'lab', 60),
(18, 'M', 'M-307', 'lab', 60),
(19, 'M', 'M-308', 'lab', 60),
(20, 'M', 'M-309', 'lab', 60),
(21, 'M', 'M-314', 'lab', 28),
(22, 'M', 'M-315', 'lab', 30),
(23, 'M', 'M-316', 'lab', 60),
(24, 'M', 'M-317', 'lab', 60);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `phone`, `department`) VALUES
(1, 'testuser', 'password123', '9876543210', 'Computer Science'),
(2, 'lion', 'lion1', '1234567890', 'maths');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked_labs`
--
ALTER TABLE `booked_labs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deleted_bookings`
--
ALTER TABLE `deleted_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fixed_bookings`
--
ALTER TABLE `fixed_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hods`
--
ALTER TABLE `hods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labs`
--
ALTER TABLE `labs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booked_labs`
--
ALTER TABLE `booked_labs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `deleted_bookings`
--
ALTER TABLE `deleted_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `fixed_bookings`
--
ALTER TABLE `fixed_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

--
-- AUTO_INCREMENT for table `hods`
--
ALTER TABLE `hods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `labs`
--
ALTER TABLE `labs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
