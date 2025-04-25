-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2025 at 07:27 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `earist_hris`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_year`
--

CREATE TABLE `academic_year` (
  `id` int(11) NOT NULL,
  `description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `active_academic_year`
--

CREATE TABLE `active_academic_year` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) DEFAULT NULL,
  `term_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendancerecord`
--

CREATE TABLE `attendancerecord` (
  `id` int(11) NOT NULL,
  `personID` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `Day` varchar(11) NOT NULL,
  `timeIN` varchar(255) DEFAULT NULL,
  `breaktimeIN` varchar(255) DEFAULT NULL,
  `breaktimeOUT` varchar(255) DEFAULT NULL,
  `timeOUT` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendancerecord`
--

INSERT INTO `attendancerecord` (`id`, `personID`, `date`, `Day`, `timeIN`, `breaktimeIN`, `breaktimeOUT`, `timeOUT`) VALUES
(2, 20134507, '2024-10-03', 'Thursday', '05:42:45 PM', '05:43:29 PM', '05:43:05 PM', '06:44:53 PM'),
(3, 20134507, '2024-10-07', 'Monday', '11:11:24 AM', '11:22:18 AM', '07:23:01 PM', '07:30:45 PM'),
(4, 20134507, '2024-10-08', 'Tuesday', '09:48:34 AM', '12:18:35 PM', '12:18:33 PM', '01:34:10 PM'),
(5, 20134507, '2024-10-09', 'Wednesday', '02:16:26 PM', '03:31:48 PM', '03:31:46 PM', '06:12:26 PM'),
(6, 20134507, '2024-10-10', 'Thursday', '08:26:10 AM', '01:41:07 PM', '12:10:19 PM', '04:56:31 PM'),
(7, 20134507, '2024-10-16', 'Wednesday', '10:54:59 AM', NULL, '12:32:08 PM', '05:06:01 PM'),
(8, 20134507, '2024-10-17', 'Thursday', '09:39:43 AM', '01:29:30 PM', NULL, '09:13:51 PM'),
(9, 20134507, '2024-10-21', 'Monday', '11:58:51 AM', NULL, NULL, NULL),
(10, 20134507, '2024-10-28', 'Monday', '01:59:52 PM', NULL, NULL, NULL),
(11, 20134507, '2024-10-30', 'Wednesday', NULL, NULL, NULL, '03:33:40 PM');

-- --------------------------------------------------------

--
-- Table structure for table `attendancerecordinfo`
--

CREATE TABLE `attendancerecordinfo` (
  `PersonID` varchar(30) NOT NULL,
  `PersonName` varchar(36) DEFAULT NULL,
  `PerSonCardNo` varchar(20) DEFAULT NULL,
  `AttendanceDateTime` bigint(20) NOT NULL,
  `AttendanceState` int(11) NOT NULL,
  `AttendanceMethod` int(11) NOT NULL,
  `DeviceIPAddress` varchar(20) DEFAULT NULL,
  `DeviceName` varchar(50) DEFAULT NULL,
  `SnapshotsPath` varchar(200) DEFAULT '',
  `Handler` varchar(50) DEFAULT '',
  `AttendanceUtcTime` bigint(20) DEFAULT 0,
  `Remarks` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendancerecordinfo`
--

INSERT INTO `attendancerecordinfo` (`PersonID`, `PersonName`, `PerSonCardNo`, `AttendanceDateTime`, `AttendanceState`, `AttendanceMethod`, `DeviceIPAddress`, `DeviceName`, `SnapshotsPath`, `Handler`, `AttendanceUtcTime`, `Remarks`) VALUES
('1700091', 'ERIN GREY SANTOS', '', 1728534228000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1728505428000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1728534236000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1728505436000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1728534240000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1728505440000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1728534263000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1728505463000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1728534266000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1728505466000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1728534278000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1728505478000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1728534804000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1728506004000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1728534806000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1728506006000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1728534811000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1728506011000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1728539406000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1728510606000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1728539423000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1728510623000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1728539429000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1728510629000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1728539431000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1728510631000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1728539435000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1728510635000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1728551780000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1728522980000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1728551787000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1728522987000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1728614421000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1728585621000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1728614425000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1728585625000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1728639974000, 6, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1728611174000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1729043609000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1729014809000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1729043621000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1729014821000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1729051939000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1729023139000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1729051944000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1729023144000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1729068750000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1729039950000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1729071335000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1729042535000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1729129809000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1729101009000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1729138011000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1729109211000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1729142604000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1729113804000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1729158463000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1729129663000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1729216204000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1729187404000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1729228030000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1729199230000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1729228195000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1729199395000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1729233382000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1729204582000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1729238347000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1729209547000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1729243101000, 6, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1729214301000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1729479511000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1729450711000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1729479515000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1729450715000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1729479525000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1729450725000.jpg', '', 0, ''),
('1700091', 'ERIN GREY SANTOS', '', 1729487177000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1700091_1729458377000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1728534246000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1728505446000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1728534250000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1728505450000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1728539314000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1728510514000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1728545605000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1728516805000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1728545722000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1728516922000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1728545737000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1728516937000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1728545746000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1728516946000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1728545750000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1728516950000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1728545759000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1728516959000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1728551747000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1728522947000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1728614417000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1728585617000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1728628887000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1728600087000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1728628891000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1728600091000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1728628902000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1728600102000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1728637474000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1728608674000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1728637485000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1728608685000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1729131168000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1729102368000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1729135873000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1729107073000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1729142611000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1729113811000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1729142616000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1729113816000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1729142628000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1729113828000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1729153339000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1729124539000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1729242115000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1729213315000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1729487182000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1729458382000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1729487184000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1729458384000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1729487189000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1729458389000.jpg', '', 0, ''),
('1940658', 'NORWIN CABARROGUIS', '', 1729487192000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_1940658_1729458392000.jpg', '', 0, ''),
('20131005', 'GIOVANNI L. AHUNIN', '', 1730101239000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131005_1730072439000.jpg', '', 0, ''),
('20131005', 'GIOVANNI L. AHUNIN', '', 1730101244000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131005_1730072444000.jpg', '', 0, ''),
('20131005', 'GIOVANNI L. AHUNIN', '', 1730101252000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131005_1730072452000.jpg', '', 0, ''),
('20131005', 'GIOVANNI L. AHUNIN', '', 1730101258000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131005_1730072458000.jpg', '', 0, ''),
('20131006', 'ROLAN B. ALAMILLO', '', 1730253958000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131006_1730225158000.jpg', '', 0, ''),
('20131006', 'ROLAN B. ALAMILLO', '', 1730253961000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131006_1730225161000.jpg', '', 0, ''),
('20131006', 'ROLAN B. ALAMILLO', '', 1730253963000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131006_1730225163000.jpg', '', 0, ''),
('20131006', 'ROLAN B. ALAMILLO', '', 1730253973000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131006_1730225173000.jpg', '', 0, ''),
('20131010', 'ALDWIN F. AMORIN', '', 1730253222000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131010_1730224422000.jpg', '', 0, ''),
('20131010', 'ALDWIN F. AMORIN', '', 1730253224000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131010_1730224424000.jpg', '', 0, ''),
('20131010', 'ALDWIN F. AMORIN', '', 1730253234000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131010_1730224434000.jpg', '', 0, ''),
('20131010', 'ALDWIN F. AMORIN', '', 1730253237000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131010_1730224437000.jpg', '', 0, ''),
('20131020', 'ESMERALDA W. AYAG', '', 1730257768000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131020_1730228968000.jpg', '', 0, ''),
('20131020', 'ESMERALDA W. AYAG', '', 1730257775000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131020_1730228975000.jpg', '', 0, ''),
('20131020', 'ESMERALDA W. AYAG', '', 1730257781000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131020_1730228981000.jpg', '', 0, ''),
('20131020', 'ESMERALDA W. AYAG', '', 1730257791000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131020_1730228991000.jpg', '', 0, ''),
('20131033', 'TERESITA  P. BELARMINO', '', 1730104578000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131033_1730075778000.jpg', '', 0, ''),
('20131033', 'TERESITA  P. BELARMINO', '', 1730104584000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131033_1730075784000.jpg', '', 0, ''),
('20131033', 'TERESITA  P. BELARMINO', '', 1730104592000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131033_1730075792000.jpg', '', 0, ''),
('20131053', 'MARY ANN B. CAPILITAN', '', 1730257912000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131053_1730229112000.jpg', '', 0, ''),
('20131053', 'MARY ANN B. CAPILITAN', '', 1730257930000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131053_1730229130000.jpg', '', 0, ''),
('20131058', 'BENIGNO A.CASTILLO', '', 1730179084000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131058_1730150284000.jpg', '', 0, ''),
('20131058', 'BENIGNO A.CASTILLO', '', 1730179090000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131058_1730150290000.jpg', '', 0, ''),
('20131058', 'BENIGNO A.CASTILLO', '', 1730179099000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131058_1730150299000.jpg', '', 0, ''),
('20131058', 'BENIGNO A.CASTILLO', '', 1730179106000, 6, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131058_1730150306000.jpg', '', 0, ''),
('20131058', 'BENIGNO A.CASTILLO', '', 1730179113000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131058_1730150313000.jpg', '', 0, ''),
('20131058', 'BENIGNO A.CASTILLO', '', 1730179115000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131058_1730150315000.jpg', '', 0, ''),
('20131079', 'VIRGEL E. DIAMANTE', '', 1730183023000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131079_1730154223000.jpg', '', 0, ''),
('20131079', 'VIRGEL E. DIAMANTE', '', 1730183028000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131079_1730154228000.jpg', '', 0, ''),
('20131090', 'MAGDALENA R. ERRAZO', '', 1730272561000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131090_1730243761000.jpg', '', 0, ''),
('20131090', 'MAGDALENA R. ERRAZO', '', 1730272564000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131090_1730243764000.jpg', '', 0, ''),
('20131090', 'MAGDALENA R. ERRAZO', '', 1730272575000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131090_1730243775000.jpg', '', 0, ''),
('20131090', 'MAGDALENA R. ERRAZO', '', 1730272578000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131090_1730243778000.jpg', '', 0, ''),
('20131108', 'CARINA B. GARCIA', '', 1730267042000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131108_1730238242000.jpg', '', 0, ''),
('20131108', 'CARINA B. GARCIA', '', 1730267045000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131108_1730238245000.jpg', '', 0, ''),
('20131108', 'CARINA B. GARCIA', '', 1730267049000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131108_1730238249000.jpg', '', 0, ''),
('20131108', 'CARINA B. GARCIA', '', 1730267063000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131108_1730238263000.jpg', '', 0, ''),
('20131108', 'CARINA B. GARCIA', '', 1730267066000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131108_1730238266000.jpg', '', 0, ''),
('20131118', 'SETIEN R. HERRERA', '', 1730253558000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131118_1730224758000.jpg', '', 0, ''),
('20131118', 'SETIEN R. HERRERA', '', 1730253562000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131118_1730224762000.jpg', '', 0, ''),
('20131118', 'SETIEN R. HERRERA', '', 1730253571000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131118_1730224771000.jpg', '', 0, ''),
('20131118', 'SETIEN R. HERRERA', '', 1730253581000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131118_1730224781000.jpg', '', 0, ''),
('20131119', 'TERESA J. HERRERA', '', 1730266916000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131119_1730238116000.jpg', '', 0, ''),
('20131119', 'TERESA J. HERRERA', '', 1730266919000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131119_1730238119000.jpg', '', 0, ''),
('20131119', 'TERESA J. HERRERA', '', 1730266926000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131119_1730238126000.jpg', '', 0, ''),
('20131119', 'TERESA J. HERRERA', '', 1730266928000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131119_1730238128000.jpg', '', 0, ''),
('20131138', 'ROBERTO M. LIWANAG', '', 1730184469000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131138_1730155669000.jpg', '', 0, ''),
('20131138', 'ROBERTO M. LIWANAG', '', 1730184478000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131138_1730155678000.jpg', '', 0, ''),
('20131138', 'ROBERTO M. LIWANAG', '', 1730184489000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131138_1730155689000.jpg', '', 0, ''),
('20131145', 'JUAN LAURO M. MAGUGAT', '', 1730264878000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131145_1730236078000.jpg', '', 0, ''),
('20131145', 'JUAN LAURO M. MAGUGAT', '', 1730264884000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131145_1730236084000.jpg', '', 0, ''),
('20131145', 'JUAN LAURO M. MAGUGAT', '', 1730264895000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131145_1730236095000.jpg', '', 0, ''),
('20131150', 'ROGELIO T. MAMARADLO', '', 1730183171000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131150_1730154371000.jpg', '', 0, ''),
('20131150', 'ROGELIO T. MAMARADLO', '', 1730183177000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131150_1730154377000.jpg', '', 0, ''),
('20131150', 'ROGELIO T. MAMARADLO', '', 1730183186000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131150_1730154386000.jpg', '', 0, ''),
('20131150', 'ROGELIO T. MAMARADLO', '', 1730183196000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131150_1730154396000.jpg', '', 0, ''),
('20131154', 'DENNIS D. MANGUBAT', '', 1730269924000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131154_1730241124000.jpg', '', 0, ''),
('20131159', 'SHEILA MARIE M. MATIAS', '', 1730266501000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131159_1730237701000.jpg', '', 0, ''),
('20131159', 'SHEILA MARIE M. MATIAS', '', 1730266524000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131159_1730237724000.jpg', '', 0, ''),
('20131159', 'SHEILA MARIE M. MATIAS', '', 1730266530000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131159_1730237730000.jpg', '', 0, ''),
('20131159', 'SHEILA MARIE M. MATIAS', '', 1730266533000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131159_1730237733000.jpg', '', 0, ''),
('20131159', 'SHEILA MARIE M. MATIAS', '', 1730266539000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131159_1730237739000.jpg', '', 0, ''),
('20131159', 'SHEILA MARIE M. MATIAS', '', 1730266541000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131159_1730237741000.jpg', '', 0, ''),
('20131177', 'RODORA T. OLIVEROS', '', 1730265899000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131177_1730237099000.jpg', '', 0, ''),
('20131177', 'RODORA T. OLIVEROS', '', 1730265902000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131177_1730237102000.jpg', '', 0, ''),
('20131177', 'RODORA T. OLIVEROS', '', 1730265910000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131177_1730237110000.jpg', '', 0, ''),
('20131177', 'RODORA T. OLIVEROS', '', 1730265922000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131177_1730237122000.jpg', '', 0, ''),
('20131177', 'RODORA T. OLIVEROS', '', 1730265934000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131177_1730237134000.jpg', '', 0, ''),
('20131177', 'RODORA T. OLIVEROS', '', 1730265945000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131177_1730237145000.jpg', '', 0, ''),
('20131193', 'LOUIE P. PEREIRA', '', 1730253354000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131193_1730224554000.jpg', '', 0, ''),
('20131193', 'LOUIE P. PEREIRA', '', 1730253362000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131193_1730224562000.jpg', '', 0, ''),
('20131193', 'LOUIE P. PEREIRA', '', 1730253373000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131193_1730224573000.jpg', '', 0, ''),
('20131203', 'ALLAN Q. QUISMUNDO', '', 1730185529000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131203_1730156729000.jpg', '', 0, ''),
('20131203', 'ALLAN Q. QUISMUNDO', '', 1730185534000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131203_1730156734000.jpg', '', 0, ''),
('20131203', 'ALLAN Q. QUISMUNDO', '', 1730185540000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131203_1730156740000.jpg', '', 0, ''),
('20131203', 'ALLAN Q. QUISMUNDO', '', 1730185543000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131203_1730156743000.jpg', '', 0, ''),
('20131203', 'ALLAN Q. QUISMUNDO', '', 1730185546000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131203_1730156746000.jpg', '', 0, ''),
('20131205', 'ROGER D. RAMOS', '', 1730253002000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131205_1730224202000.jpg', '', 0, ''),
('20131205', 'ROGER D. RAMOS', '', 1730253006000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131205_1730224206000.jpg', '', 0, ''),
('20131205', 'ROGER D. RAMOS', '', 1730253010000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131205_1730224210000.jpg', '', 0, ''),
('20131205', 'ROGER D. RAMOS', '', 1730253016000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131205_1730224216000.jpg', '', 0, ''),
('20131205', 'ROGER D. RAMOS', '', 1730253027000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131205_1730224227000.jpg', '', 0, ''),
('20131236', 'JOSEPH ANGELO C. TANUECOZ', '', 1730257023000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131236_1730228223000.jpg', '', 0, ''),
('20131236', 'JOSEPH ANGELO C. TANUECOZ', '', 1730257026000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131236_1730228226000.jpg', '', 0, ''),
('20131236', 'JOSEPH ANGELO C. TANUECOZ', '', 1730257039000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131236_1730228239000.jpg', '', 0, ''),
('20131236', 'JOSEPH ANGELO C. TANUECOZ', '', 1730257050000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131236_1730228250000.jpg', '', 0, ''),
('20131240', 'JAYSON D. TOLENTINO', '', 1730269641000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131240_1730240841000.jpg', '', 0, ''),
('20131240', 'JAYSON D. TOLENTINO', '', 1730269644000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131240_1730240844000.jpg', '', 0, ''),
('20131240', 'JAYSON D. TOLENTINO', '', 1730269663000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131240_1730240863000.jpg', '', 0, ''),
('20131240', 'JAYSON D. TOLENTINO', '', 1730269674000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131240_1730240874000.jpg', '', 0, ''),
('20131252', 'RAIAN B. YANO', '', 1730101957000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131252_1730073157000.jpg', '', 0, ''),
('20131252', 'RAIAN B. YANO', '', 1730101961000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131252_1730073161000.jpg', '', 0, ''),
('20131252', 'RAIAN B. YANO', '', 1730101971000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131252_1730073171000.jpg', '', 0, ''),
('20131252', 'RAIAN B. YANO', '', 1730101977000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131252_1730073177000.jpg', '', 0, ''),
('20131254', 'JOEVELYN W. FAJARDO', '', 1730268888000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131254_1730240088000.jpg', '', 0, ''),
('20131254', 'JOEVELYN W. FAJARDO', '', 1730268892000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131254_1730240092000.jpg', '', 0, ''),
('20131254', 'JOEVELYN W. FAJARDO', '', 1730268905000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131254_1730240105000.jpg', '', 0, ''),
('20131254', 'JOEVELYN W. FAJARDO', '', 1730268907000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131254_1730240107000.jpg', '', 0, ''),
('20131321', 'JAMAL L. CANAPIA', '', 1730184276000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131321_1730155476000.jpg', '', 0, ''),
('20131321', 'JAMAL L. CANAPIA', '', 1730184283000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131321_1730155483000.jpg', '', 0, ''),
('20131321', 'JAMAL L. CANAPIA', '', 1730184285000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20131321_1730155485000.jpg', '', 0, ''),
('20132006', 'AGNES F. AMORIN', '', 1730256858000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132006_1730228058000.jpg', '', 0, ''),
('20132006', 'AGNES F. AMORIN', '', 1730256861000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132006_1730228061000.jpg', '', 0, ''),
('20132006', 'AGNES F. AMORIN', '', 1730256866000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132006_1730228066000.jpg', '', 0, ''),
('20132006', 'AGNES F. AMORIN', '', 1730256869000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132006_1730228069000.jpg', '', 0, ''),
('20132021', 'JERRY L. CAMANNONG', '', 1730172947000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132021_1730144147000.jpg', '', 0, ''),
('20132021', 'JERRY L. CAMANNONG', '', 1730172950000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132021_1730144150000.jpg', '', 0, ''),
('20132021', 'JERRY L. CAMANNONG', '', 1730172963000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132021_1730144163000.jpg', '', 0, ''),
('20132021', 'JERRY L. CAMANNONG', '', 1730172967000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132021_1730144167000.jpg', '', 0, ''),
('20132025', 'CLARINDA E. CASTILLO', '', 1730104086000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132025_1730075286000.jpg', '', 0, ''),
('20132025', 'CLARINDA E. CASTILLO', '', 1730104098000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132025_1730075298000.jpg', '', 0, ''),
('20132030', 'JOSE R. CORNELIO JR.', '', 1730166690000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132030_1730137890000.jpg', '', 0, ''),
('20132030', 'JOSE R. CORNELIO JR.', '', 1730166696000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132030_1730137896000.jpg', '', 0, ''),
('20132030', 'JOSE R. CORNELIO JR.', '', 1730166707000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132030_1730137907000.jpg', '', 0, ''),
('20132030', 'JOSE R. CORNELIO JR.', '', 1730166718000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132030_1730137918000.jpg', '', 0, ''),
('20132036', 'MELINDA M. DUYAN', '', 1730183513000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132036_1730154713000.jpg', '', 0, ''),
('20132036', 'MELINDA M. DUYAN', '', 1730183522000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132036_1730154722000.jpg', '', 0, ''),
('20132037', 'LYDIA N. ERA', '', 1730184585000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132037_1730155785000.jpg', '', 0, ''),
('20132037', 'LYDIA N. ERA', '', 1730184588000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132037_1730155788000.jpg', '', 0, ''),
('20132037', 'LYDIA N. ERA', '', 1730184593000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132037_1730155793000.jpg', '', 0, ''),
('20132037', 'LYDIA N. ERA', '', 1730184599000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132037_1730155799000.jpg', '', 0, ''),
('20132037', 'LYDIA N. ERA', '', 1730184610000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132037_1730155810000.jpg', '', 0, ''),
('20132038', 'JULIE ANN O. ESPIRITU', '', 1730101447000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132038_1730072647000.jpg', '', 0, ''),
('20132038', 'JULIE ANN O. ESPIRITU', '', 1730101456000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132038_1730072656000.jpg', '', 0, ''),
('20132038', 'JULIE ANN O. ESPIRITU', '', 1730101462000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132038_1730072662000.jpg', '', 0, ''),
('20132059', 'ROSALITO M. MIJARES', '', 1730178892000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132059_1730150092000.jpg', '', 0, ''),
('20132059', 'ROSALITO M. MIJARES', '', 1730178894000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132059_1730150094000.jpg', '', 0, ''),
('20132059', 'ROSALITO M. MIJARES', '', 1730178903000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132059_1730150103000.jpg', '', 0, ''),
('20132059', 'ROSALITO M. MIJARES', '', 1730178914000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132059_1730150114000.jpg', '', 0, ''),
('20132072', 'ANA CATHERINE P. POTOTOY', '', 1729490498000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132072_1729461698000.jpg', '', 0, ''),
('20132072', 'ANA CATHERINE P. POTOTOY', '', 1729490503000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132072_1729461703000.jpg', '', 0, ''),
('20132076', 'RICARDO O. RECATE', '', 1729492957000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132076_1729464157000.jpg', '', 0, ''),
('20132076', 'RICARDO O. RECATE', '', 1729492968000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132076_1729464168000.jpg', '', 0, ''),
('20132114', 'GENEROSO A. MANINGAT JR', '', 1730185312000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132114_1730156512000.jpg', '', 0, ''),
('20132114', 'GENEROSO A. MANINGAT JR', '', 1730185315000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132114_1730156515000.jpg', '', 0, ''),
('20132114', 'GENEROSO A. MANINGAT JR', '', 1730185318000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132114_1730156518000.jpg', '', 0, ''),
('20132114', 'GENEROSO A. MANINGAT JR', '', 1730185326000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132114_1730156526000.jpg', '', 0, ''),
('20132114', 'GENEROSO A. MANINGAT JR', '', 1730185337000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132114_1730156537000.jpg', '', 0, ''),
('20132116', 'JOEL S. ABARRA', '', 1730103089000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132116_1730074289000.jpg', '', 0, ''),
('20132116', 'JOEL S. ABARRA', '', 1730103098000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132116_1730074298000.jpg', '', 0, ''),
('20132116', 'JOEL S. ABARRA', '', 1730103124000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132116_1730074324000.jpg', '', 0, ''),
('20132116', 'JOEL S. ABARRA', '', 1730103132000, 6, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132116_1730074332000.jpg', '', 0, ''),
('20132116', 'JOEL S. ABARRA', '', 1730103143000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132116_1730074343000.jpg', '', 0, ''),
('20132118', 'CARINA N. ROMAQUIN', '', 1730099200000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132118_1730070400000.jpg', '', 0, ''),
('20132118', 'CARINA N. ROMAQUIN', '', 1730099210000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132118_1730070410000.jpg', '', 0, ''),
('20132121', 'JEMMA LYN T. ABIQUE', '', 1730099362000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132121_1730070562000.jpg', '', 0, ''),
('20132126', 'amparo m. morales', '', 1728271355000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/Capture/EventPic2024-10-07/1_20132126__20241007112235.jpg', '', 1728242555, ''),
('20132126', 'amparo m. morales', '', 1728271366000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/Capture/EventPic2024-10-07/1_20132126__20241007112246.jpg', '', 1728242566, ''),
('20132126', 'amparo m. morales', '', 1728271378000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/Capture/EventPic2024-10-07/1_20132126__20241007112258.jpg', '', 1728242578, ''),
('20132126', 'amparo m. morales', '', 1728271388000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/Capture/EventPic2024-10-07/1_20132126__20241007112308.jpg', '', 1728242588, ''),
('20132126', 'amparo m. morales', '', 1728271402000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/Capture/EventPic2024-10-07/1_20132126__20241007112322.jpg', '', 1728242602, ''),
('20132126', 'amparo m. morales', '', 1728271412000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/Capture/EventPic2024-10-07/1_20132126__20241007112332.jpg', '', 1728242612, ''),
('20132126', 'amparo m. morales', '', 1728271423000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/Capture/EventPic2024-10-07/1_20132126__20241007112343.jpg', '', 1728242623, ''),
('20132126', 'amparo m. morales', '', 1728272702000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/Capture/EventPic2024-10-07/1_20132126__20241007114502.jpg', '', 1728243902, ''),
('20132126', 'amparo m. morales', '', 1730078948000, 0, 18, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20132126', 'amparo m. morales', '', 1730078956000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20132126', 'amparo m. morales', '', 1730078967000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20132126', 'amparo m. morales', '', 1730078979000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20132126', 'amparo m. morales', '', 1730078990000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20132126', 'amparo m. morales', '', 1730078993000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20132126', 'amparo m. morales', '', 1730079004000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20132126', 'amparo m. morales', '', 1730079016000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20132126', 'amparo m. morales', '', 1730079027000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20132126', 'amparo m. morales', '', 1730079038000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20132126', 'amparo m. morales', '', 1730079055000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20132126', 'amparo m. morales', '', 1730079060000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20132126', 'amparo m. morales', '', 1730079065000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20132126', 'amparo m. morales', '', 1730079076000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20132126', 'amparo m. morales', '', 1730079086000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20132126', 'amparo m. morales', '', 1730079137000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20132126', 'amparo m. morales', '', 1730079148000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20132126', 'amparo m. morales', '', 1730095301000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20132126', 'amparo m. morales', '', 1730095312000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20132126', 'amparo m. morales', '', 1730189100000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20132130', 'MERCY M. MEJICA', '', 1730096404000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132130_1730067604000.jpg', '', 0, ''),
('20132130', 'MERCY M. MEJICA', '', 1730096409000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132130_1730067609000.jpg', '', 0, ''),
('20132130', 'MERCY M. MEJICA', '', 1730096421000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132130_1730067621000.jpg', '', 0, ''),
('20132135', 'JOY B. RULLODA', '', 1730103939000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132135_1730075139000.jpg', '', 0, ''),
('20132135', 'JOY B. RULLODA', '', 1730103948000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132135_1730075148000.jpg', '', 0, ''),
('20132135', 'JOY B. RULLODA', '', 1730103957000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132135_1730075157000.jpg', '', 0, ''),
('20132135', 'JOY B. RULLODA', '', 1730103965000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132135_1730075165000.jpg', '', 0, ''),
('20132137', 'ANJIELICA MAY C. CASTILLO', '', 1730164583000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132137_1730135783000.jpg', '', 0, ''),
('20132137', 'ANJIELICA MAY C. CASTILLO', '', 1730164585000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132137_1730135785000.jpg', '', 0, ''),
('20132137', 'ANJIELICA MAY C. CASTILLO', '', 1730164594000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132137_1730135794000.jpg', '', 0, ''),
('20132137', 'ANJIELICA MAY C. CASTILLO', '', 1730164600000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132137_1730135800000.jpg', '', 0, ''),
('20132137', 'ANJIELICA MAY C. CASTILLO', '', 1730164603000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132137_1730135803000.jpg', '', 0, ''),
('20132138', 'ELIJAH MANUEL', '', 1728378428000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132138_1728349628000.jpg', '', 0, ''),
('20132138', 'ELIJAH MANUEL', '', 1728378430000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132138_1728349630000.jpg', '', 0, ''),
('20132138', 'ELIJAH MANUEL', '', 1728378433000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132138_1728349633000.jpg', '', 0, ''),
('20132138', 'ELIJAH MANUEL', '', 1728378434000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132138_1728349634000.jpg', '', 0, ''),
('20132138', 'ELIJAH MANUEL', '', 1728378437000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132138_1728349637000.jpg', '', 0, ''),
('20132138', 'ELIJAH MANUEL', '', 1728456389000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132138_1728427589000.jpg', '', 0, ''),
('20132138', 'ELIJAH MANUEL', '', 1728533772000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132138_1728504972000.jpg', '', 0, ''),
('20132140', 'HARVEY S. COLINA', '', 1730166129000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132140_1730137329000.jpg', '', 0, ''),
('20132140', 'HARVEY S. COLINA', '', 1730166137000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132140_1730137337000.jpg', '', 0, ''),
('20132141', 'RALPH ALLEN C. FALSARIO', '', 1730164720000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132141_1730135920000.jpg', '', 0, '');
INSERT INTO `attendancerecordinfo` (`PersonID`, `PersonName`, `PerSonCardNo`, `AttendanceDateTime`, `AttendanceState`, `AttendanceMethod`, `DeviceIPAddress`, `DeviceName`, `SnapshotsPath`, `Handler`, `AttendanceUtcTime`, `Remarks`) VALUES
('20132141', 'RALPH ALLEN C. FALSARIO', '', 1730164723000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132141_1730135923000.jpg', '', 0, ''),
('20132141', 'RALPH ALLEN C. FALSARIO', '', 1730164730000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132141_1730135930000.jpg', '', 0, ''),
('20132141', 'RALPH ALLEN C. FALSARIO', '', 1730164733000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132141_1730135933000.jpg', '', 0, ''),
('20132142', 'MARJORIE E. ONDRA', '', 1729490211000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132142_1729461411000.jpg', '', 0, ''),
('20132142', 'MARJORIE E. ONDRA', '', 1730183378000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132142_1730154578000.jpg', '', 0, ''),
('20132142', 'MARJORIE E. ONDRA', '', 1730183381000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132142_1730154581000.jpg', '', 0, ''),
('20132142', 'MARJORIE E. ONDRA', '', 1730183392000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132142_1730154592000.jpg', '', 0, ''),
('20132143', 'ROGER F. BURGONIO', '', 1730167152000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132143_1730138352000.jpg', '', 0, ''),
('20132143', 'ROGER F. BURGONIO', '', 1730167155000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132143_1730138355000.jpg', '', 0, ''),
('20132143', 'ROGER F. BURGONIO', '', 1730167161000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132143_1730138361000.jpg', '', 0, ''),
('20132143', 'ROGER F. BURGONIO', '', 1730167164000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132143_1730138364000.jpg', '', 0, ''),
('20132143', 'ROGER F. BURGONIO', '', 1730167169000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132143_1730138369000.jpg', '', 0, ''),
('20132143', 'ROGER F. BURGONIO', '', 1730167172000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132143_1730138372000.jpg', '', 0, ''),
('20132144', 'MARVIN G. OLIVEROS', '', 1730100611000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132144_1730071811000.jpg', '', 0, ''),
('20132144', 'MARVIN G. OLIVEROS', '', 1730100622000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132144_1730071822000.jpg', '', 0, ''),
('20132145', 'CHRISTINE JOY R. ALBANDIA', '', 1730100725000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132145_1730071925000.jpg', '', 0, ''),
('20132145', 'CHRISTINE JOY R. ALBANDIA', '', 1730100737000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132145_1730071937000.jpg', '', 0, ''),
('20132146', 'RODELYN S. MAMACLAY', '', 1730096237000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132146_1730067437000.jpg', '', 0, ''),
('20132146', 'RODELYN S. MAMACLAY', '', 1730096248000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132146_1730067448000.jpg', '', 0, ''),
('20132147', 'MARK ANGELO D. MANOGUID', '', 1730172599000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132147_1730143799000.jpg', '', 0, ''),
('20132147', 'MARK ANGELO D. MANOGUID', '', 1730172608000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132147_1730143808000.jpg', '', 0, ''),
('20132147', 'MARK ANGELO D. MANOGUID', '', 1730172617000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132147_1730143817000.jpg', '', 0, ''),
('20132147', 'MARK ANGELO D. MANOGUID', '', 1730172623000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20132147_1730143823000.jpg', '', 0, ''),
('20133020', 'ELSA R. CAGATAN', '', 1730258574000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133020_1730229774000.jpg', '', 0, ''),
('20133020', 'ELSA R. CAGATAN', '', 1730258576000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133020_1730229776000.jpg', '', 0, ''),
('20133020', 'ELSA R. CAGATAN', '', 1730258579000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133020_1730229779000.jpg', '', 0, ''),
('20133020', 'ELSA R. CAGATAN', '', 1730258588000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133020_1730229788000.jpg', '', 0, ''),
('20133020', 'ELSA R. CAGATAN', '', 1730258592000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133020_1730229792000.jpg', '', 0, ''),
('20133021', 'CARLITO C. BIARES', '', 1730270181000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133021_1730241381000.jpg', '', 0, ''),
('20133021', 'CARLITO C. BIARES', '', 1730270186000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133021_1730241386000.jpg', '', 0, ''),
('20133021', 'CARLITO C. BIARES', '', 1730270188000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133021_1730241388000.jpg', '', 0, ''),
('20133021', 'CARLITO C. BIARES', '', 1730270195000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133021_1730241395000.jpg', '', 0, ''),
('20133021', 'CARLITO C. BIARES', '', 1730270205000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133021_1730241405000.jpg', '', 0, ''),
('20133021', 'CARLITO C. BIARES', '', 1730270216000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133021_1730241416000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1729490052000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1729461252000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1729490062000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1729461262000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730095202000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730066402000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730095582000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730066782000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730096092000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730067292000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730101268000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730072468000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730102486000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730073686000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730103807000, 6, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730075007000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730166585000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730137785000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730172252000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730143452000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730181720000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730152920000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730183056000, 6, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730154256000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730251791000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730222991000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730251799000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730222999000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730252563000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730223763000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730253122000, 6, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730224322000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730256789000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730227989000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730256796000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730227996000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730257751000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730228951000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730257794000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730228994000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730257796000, 6, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730228996000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730258042000, 6, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730229242000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730258043000, 6, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730229243000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730259410000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730230610000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730259486000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730230686000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730263697000, 6, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730234897000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730263707000, 6, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730234907000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730263710000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730234910000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730264907000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730236107000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730265162000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730236362000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730266150000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730237350000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730266152000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730237352000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730266790000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730237990000.jpg', '', 0, ''),
('20133101', 'ADRIAN M. CALIMLIM', '', 1730269727000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133101_1730240927000.jpg', '', 0, ''),
('20133163', 'JAMES DARRYL D. BUNGAY', '', 1730265560000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133163_1730236760000.jpg', '', 0, ''),
('20133163', 'JAMES DARRYL D. BUNGAY', '', 1730265564000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133163_1730236764000.jpg', '', 0, ''),
('20133163', 'JAMES DARRYL D. BUNGAY', '', 1730265572000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133163_1730236772000.jpg', '', 0, ''),
('20133189', 'MELODY L. GABAS', '', 1730266741000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133189_1730237941000.jpg', '', 0, ''),
('20133189', 'MELODY L. GABAS', '', 1730266745000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133189_1730237945000.jpg', '', 0, ''),
('20133189', 'MELODY L. GABAS', '', 1730266748000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133189_1730237948000.jpg', '', 0, ''),
('20133189', 'MELODY L. GABAS', '', 1730266765000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133189_1730237965000.jpg', '', 0, ''),
('20133189', 'MELODY L. GABAS', '', 1730266769000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133189_1730237969000.jpg', '', 0, ''),
('20133280', 'LAREX B. TAGALOG', '', 1730258872000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133280_1730230072000.jpg', '', 0, ''),
('20133280', 'LAREX B. TAGALOG', '', 1730258874000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133280_1730230074000.jpg', '', 0, ''),
('20133280', 'LAREX B. TAGALOG', '', 1730258886000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133280_1730230086000.jpg', '', 0, ''),
('20133280', 'LAREX B. TAGALOG', '', 1730258893000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133280_1730230093000.jpg', '', 0, ''),
('20133315', 'ROSARIO U. TANUECOZ', '', 1730257182000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133315_1730228382000.jpg', '', 0, ''),
('20133315', 'ROSARIO U. TANUECOZ', '', 1730257194000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133315_1730228394000.jpg', '', 0, ''),
('20133315', 'ROSARIO U. TANUECOZ', '', 1730257199000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133315_1730228399000.jpg', '', 0, ''),
('20133315', 'ROSARIO U. TANUECOZ', '', 1730257214000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133315_1730228414000.jpg', '', 0, ''),
('20133323', 'CONRADO B. BLANDO', '', 1730259565000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133323_1730230765000.jpg', '', 0, ''),
('20133323', 'CONRADO B. BLANDO', '', 1730259568000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133323_1730230768000.jpg', '', 0, ''),
('20133323', 'CONRADO B. BLANDO', '', 1730259577000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133323_1730230777000.jpg', '', 0, ''),
('20133323', 'CONRADO B. BLANDO', '', 1730259580000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133323_1730230780000.jpg', '', 0, ''),
('20133403', 'REENIER R. LEDESMA', '', 1730266243000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133403_1730237443000.jpg', '', 0, ''),
('20133403', 'REENIER R. LEDESMA', '', 1730266247000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133403_1730237447000.jpg', '', 0, ''),
('20133403', 'REENIER R. LEDESMA', '', 1730266253000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133403_1730237453000.jpg', '', 0, ''),
('20133403', 'REENIER R. LEDESMA', '', 1730266264000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133403_1730237464000.jpg', '', 0, ''),
('20133405', 'ELEAZAR B. BERNALES', '', 1730266085000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133405_1730237285000.jpg', '', 0, ''),
('20133405', 'ELEAZAR B. BERNALES', '', 1730266089000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133405_1730237289000.jpg', '', 0, ''),
('20133405', 'ELEAZAR B. BERNALES', '', 1730266095000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133405_1730237295000.jpg', '', 0, ''),
('20133405', 'ELEAZAR B. BERNALES', '', 1730266101000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133405_1730237301000.jpg', '', 0, ''),
('20133405', 'ELEAZAR B. BERNALES', '', 1730266113000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133405_1730237313000.jpg', '', 0, ''),
('20133406', 'JOHN RENZI C. GAMILLA', '', 1730267845000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133406_1730239045000.jpg', '', 0, ''),
('20133406', 'JOHN RENZI C. GAMILLA', '', 1730267847000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133406_1730239047000.jpg', '', 0, ''),
('20133406', 'JOHN RENZI C. GAMILLA', '', 1730267851000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133406_1730239051000.jpg', '', 0, ''),
('20133406', 'JOHN RENZI C. GAMILLA', '', 1730267856000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133406_1730239056000.jpg', '', 0, ''),
('20133406', 'JOHN RENZI C. GAMILLA', '', 1730267858000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133406_1730239058000.jpg', '', 0, ''),
('20133406', 'JOHN RENZI C. GAMILLA', '', 1730267864000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133406_1730239064000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1728378287000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1728349487000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1728378299000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1728349499000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1728378305000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1728349505000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1728378308000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1728349508000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1728378311000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1728349511000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1728378317000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1728349517000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1728526578000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1728497778000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1728526586000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1728497786000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1728553912000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1728525112000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1728624618000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1728595818000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1728624629000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1728595829000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1728644308000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1728615508000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1728644319000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1728615519000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1728728794000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1728699994000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1728728805000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1728700005000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1728979422000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1728950622000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1728979435000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1728950635000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1728990276000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1728961476000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1728990288000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1728961488000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1729047898000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1729019098000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1729047903000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1729019103000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1729047914000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1729019114000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1729060587000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1729031787000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1729072602000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1729043802000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1729072614000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1729043814000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1729219138000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1729190338000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1729219149000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1729190349000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1729325438000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1729296638000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1729325450000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1729296650000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1729325461000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1729296661000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1729326808000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1729298008000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1729327307000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1729298507000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1729334744000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1729305944000.jpg', '', 0, ''),
('20133414', 'RONALD BARAL', '', 1729334747000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133414_1729305947000.jpg', '', 0, ''),
('20133416', 'SHERWIN KEITH RIVERA', '', 1730257335000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133416_1730228535000.jpg', '', 0, ''),
('20133416', 'SHERWIN KEITH RIVERA', '', 1730257340000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133416_1730228540000.jpg', '', 0, ''),
('20133416', 'SHERWIN KEITH RIVERA', '', 1730257351000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133416_1730228551000.jpg', '', 0, ''),
('20133416', 'SHERWIN KEITH RIVERA', '', 1730257361000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133416_1730228561000.jpg', '', 0, ''),
('20133425', 'MERLITA C. LATIP', '', 1730265256000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133425_1730236456000.jpg', '', 0, ''),
('20133425', 'MERLITA C. LATIP', '', 1730265274000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133425_1730236474000.jpg', '', 0, ''),
('20133430', 'ARJO R. LADIA', '', 1730267290000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133430_1730238490000.jpg', '', 0, ''),
('20133430', 'ARJO R. LADIA', '', 1730267293000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133430_1730238493000.jpg', '', 0, ''),
('20133430', 'ARJO R. LADIA', '', 1730267296000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133430_1730238496000.jpg', '', 0, ''),
('20133430', 'ARJO R. LADIA', '', 1730267304000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133430_1730238504000.jpg', '', 0, ''),
('20133430', 'ARJO R. LADIA', '', 1730267315000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133430_1730238515000.jpg', '', 0, ''),
('20133432', 'WILMA JENNICA V. OSORIO', '', 1730257496000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133432_1730228696000.jpg', '', 0, ''),
('20133432', 'WILMA JENNICA V. OSORIO', '', 1730257499000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133432_1730228699000.jpg', '', 0, ''),
('20133432', 'WILMA JENNICA V. OSORIO', '', 1730257510000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133432_1730228710000.jpg', '', 0, ''),
('20133432', 'WILMA JENNICA V. OSORIO', '', 1730257521000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133432_1730228721000.jpg', '', 0, ''),
('20133463', 'JOSEPH C. ANGGOT', '', 1730258395000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133463_1730229595000.jpg', '', 0, ''),
('20133463', 'JOSEPH C. ANGGOT', '', 1730258399000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133463_1730229599000.jpg', '', 0, ''),
('20133463', 'JOSEPH C. ANGGOT', '', 1730258413000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133463_1730229613000.jpg', '', 0, ''),
('20133463', 'JOSEPH C. ANGGOT', '', 1730258423000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133463_1730229623000.jpg', '', 0, ''),
('20133463', 'JOSEPH C. ANGGOT', '', 1730258434000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133463_1730229634000.jpg', '', 0, ''),
('20133464', 'JONEIL G. PONTEJOS ', '', 1730269497000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133464_1730240697000.jpg', '', 0, ''),
('20133464', 'JONEIL G. PONTEJOS ', '', 1730269506000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133464_1730240706000.jpg', '', 0, ''),
('20133464', 'JONEIL G. PONTEJOS ', '', 1730269517000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133464_1730240717000.jpg', '', 0, ''),
('20133487', 'CENTREY L. RAMOS', '', 1730270035000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133487_1730241235000.jpg', '', 0, ''),
('20133487', 'CENTREY L. RAMOS', '', 1730270038000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133487_1730241238000.jpg', '', 0, ''),
('20133487', 'CENTREY L. RAMOS', '', 1730270041000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133487_1730241241000.jpg', '', 0, ''),
('20133487', 'CENTREY L. RAMOS', '', 1730270048000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133487_1730241248000.jpg', '', 0, ''),
('20133487', 'CENTREY L. RAMOS', '', 1730270059000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133487_1730241259000.jpg', '', 0, ''),
('20133500', 'ROWENA J. MACAHIYA', '', 1730252520000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133500_1730223720000.jpg', '', 0, ''),
('20133500', 'ROWENA J. MACAHIYA', '', 1730252523000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133500_1730223723000.jpg', '', 0, ''),
('20133500', 'ROWENA J. MACAHIYA', '', 1730252537000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133500_1730223737000.jpg', '', 0, ''),
('20133500', 'ROWENA J. MACAHIYA', '', 1730252540000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133500_1730223740000.jpg', '', 0, ''),
('20133504', 'JOHN VINCENT R. LOPEZ', '', 1730254190000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133504_1730225390000.jpg', '', 0, ''),
('20133504', 'JOHN VINCENT R. LOPEZ', '', 1730254192000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133504_1730225392000.jpg', '', 0, ''),
('20133504', 'JOHN VINCENT R. LOPEZ', '', 1730254203000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133504_1730225403000.jpg', '', 0, ''),
('20133504', 'JOHN VINCENT R. LOPEZ', '', 1730254215000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133504_1730225415000.jpg', '', 0, ''),
('20133505', 'MARIA LOURDES DE VERA-FRANCISCO', '', 1730252711000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133505_1730223911000.jpg', '', 0, ''),
('20133505', 'MARIA LOURDES DE VERA-FRANCISCO', '', 1730252717000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133505_1730223917000.jpg', '', 0, ''),
('20133505', 'MARIA LOURDES DE VERA-FRANCISCO', '', 1730252725000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133505_1730223925000.jpg', '', 0, ''),
('20133508', 'HIROMI RIVAS', '', 1730267446000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133508_1730238646000.jpg', '', 0, ''),
('20133508', 'HIROMI RIVAS', '', 1730267451000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133508_1730238651000.jpg', '', 0, ''),
('20133508', 'HIROMI RIVAS', '', 1730267454000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133508_1730238654000.jpg', '', 0, ''),
('20133508', 'HIROMI RIVAS', '', 1730267494000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133508_1730238694000.jpg', '', 0, ''),
('20133508', 'HIROMI RIVAS', '', 1730267501000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133508_1730238701000.jpg', '', 0, ''),
('20133513', 'JEFFERSON A. COSTALES', '', 1730268999000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133513_1730240199000.jpg', '', 0, ''),
('20133513', 'JEFFERSON A. COSTALES', '', 1730269002000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133513_1730240202000.jpg', '', 0, ''),
('20133513', 'JEFFERSON A. COSTALES', '', 1730269009000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133513_1730240209000.jpg', '', 0, ''),
('20133513', 'JEFFERSON A. COSTALES', '', 1730269012000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133513_1730240212000.jpg', '', 0, ''),
('20133513', 'JEFFERSON A. COSTALES', '', 1730269023000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133513_1730240223000.jpg', '', 0, ''),
('20133514', 'AL F. SANTIAGO', '', 1730265382000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133514_1730236582000.jpg', '', 0, ''),
('20133514', 'AL F. SANTIAGO', '', 1730265384000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133514_1730236584000.jpg', '', 0, ''),
('20133514', 'AL F. SANTIAGO', '', 1730265391000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133514_1730236591000.jpg', '', 0, ''),
('20133514', 'AL F. SANTIAGO', '', 1730265397000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133514_1730236597000.jpg', '', 0, ''),
('20133544', 'JOEY V. TAN', '', 1730254077000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133544_1730225277000.jpg', '', 0, ''),
('20133544', 'JOEY V. TAN', '', 1730254079000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133544_1730225279000.jpg', '', 0, ''),
('20133544', 'JOEY V. TAN', '', 1730254082000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133544_1730225282000.jpg', '', 0, ''),
('20133544', 'JOEY V. TAN', '', 1730254088000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133544_1730225288000.jpg', '', 0, ''),
('20133544', 'JOEY V. TAN', '', 1730254099000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133544_1730225299000.jpg', '', 0, ''),
('20133544', 'JOEY V. TAN', '', 1730254105000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133544_1730225305000.jpg', '', 0, ''),
('20133550', 'JAN VINCENT E. KU', '', 1728539198000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133550_1728510398000.jpg', '', 0, ''),
('20133550', 'JAN VINCENT E. KU', '', 1728539200000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133550_1728510400000.jpg', '', 0, ''),
('20133550', 'JAN VINCENT E. KU', '', 1728539202000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133550_1728510402000.jpg', '', 0, ''),
('20133550', 'JAN VINCENT E. KU', '', 1728539203000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133550_1728510403000.jpg', '', 0, ''),
('20133550', 'JAN VINCENT E. KU', '', 1728539207000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133550_1728510407000.jpg', '', 0, ''),
('20133550', 'JAN VINCENT E. KU', '', 1728539211000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133550_1728510411000.jpg', '', 0, ''),
('20133550', 'JAN VINCENT E. KU', '', 1728539216000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133550_1728510416000.jpg', '', 0, ''),
('20133550', 'JAN VINCENT E. KU', '', 1728539330000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133550_1728510530000.jpg', '', 0, ''),
('20133550', 'JAN VINCENT E. KU', '', 1728539332000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133550_1728510532000.jpg', '', 0, ''),
('20133550', 'JAN VINCENT E. KU', '', 1728539334000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133550_1728510534000.jpg', '', 0, ''),
('20133550', 'JAN VINCENT E. KU', '', 1728539344000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133550_1728510544000.jpg', '', 0, ''),
('20133560', 'EUGENE S. ABDON', '', 1730258266000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133560_1730229466000.jpg', '', 0, ''),
('20133560', 'EUGENE S. ABDON', '', 1730258278000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133560_1730229478000.jpg', '', 0, ''),
('20133560', 'EUGENE S. ABDON', '', 1730258289000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133560_1730229489000.jpg', '', 0, ''),
('20133563', 'GERALD ALLAN P. ADANE', '', 1730253824000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133563_1730225024000.jpg', '', 0, ''),
('20133563', 'GERALD ALLAN P. ADANE', '', 1730253833000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133563_1730225033000.jpg', '', 0, ''),
('20133563', 'GERALD ALLAN P. ADANE', '', 1730253835000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133563_1730225035000.jpg', '', 0, ''),
('20133566', 'JAYSON P. PAYTE', '', 1730258753000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133566_1730229953000.jpg', '', 0, ''),
('20133566', 'JAYSON P. PAYTE', '', 1730258756000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133566_1730229956000.jpg', '', 0, ''),
('20133566', 'JAYSON P. PAYTE', '', 1730258758000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133566_1730229958000.jpg', '', 0, ''),
('20133566', 'JAYSON P. PAYTE', '', 1730258773000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133566_1730229973000.jpg', '', 0, ''),
('20133566', 'JAYSON P. PAYTE', '', 1730258776000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133566_1730229976000.jpg', '', 0, ''),
('20133582', 'JAYSON P. CHAVEZ', '', 1730258132000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133582_1730229332000.jpg', '', 0, ''),
('20133582', 'JAYSON P. CHAVEZ', '', 1730258134000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133582_1730229334000.jpg', '', 0, ''),
('20133582', 'JAYSON P. CHAVEZ', '', 1730258144000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133582_1730229344000.jpg', '', 0, ''),
('20133582', 'JAYSON P. CHAVEZ', '', 1730258153000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133582_1730229353000.jpg', '', 0, ''),
('20133582', 'JAYSON P. CHAVEZ', '', 1730258160000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133582_1730229360000.jpg', '', 0, ''),
('20133582', 'JAYSON P. CHAVEZ', '', 1730258165000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133582_1730229365000.jpg', '', 0, ''),
('20133583', 'GLADYS B. BUNGAR', '', 1730258023000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133583_1730229223000.jpg', '', 0, ''),
('20133583', 'GLADYS B. BUNGAR', '', 1730258026000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133583_1730229226000.jpg', '', 0, ''),
('20133583', 'GLADYS B. BUNGAR', '', 1730258033000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133583_1730229233000.jpg', '', 0, ''),
('20133583', 'GLADYS B. BUNGAR', '', 1730258040000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133583_1730229240000.jpg', '', 0, ''),
('20133595', 'MARK RONOELE R. GONZALVO', '', 1730265701000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133595_1730236901000.jpg', '', 0, ''),
('20133595', 'MARK RONOELE R. GONZALVO', '', 1730265706000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133595_1730236906000.jpg', '', 0, ''),
('20133595', 'MARK RONOELE R. GONZALVO', '', 1730265724000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133595_1730236924000.jpg', '', 0, ''),
('20133595', 'MARK RONOELE R. GONZALVO', '', 1730265734000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133595_1730236934000.jpg', '', 0, ''),
('20133605', 'LUIGI R. BUSA', '', 1728538966000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133605_1728510166000.jpg', '', 0, ''),
('20133605', 'LUIGI R. BUSA', '', 1728538972000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133605_1728510172000.jpg', '', 0, ''),
('20133605', 'LUIGI R. BUSA', '', 1728538976000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133605_1728510176000.jpg', '', 0, ''),
('20133605', 'LUIGI R. BUSA', '', 1728538977000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133605_1728510177000.jpg', '', 0, ''),
('20133605', 'LUIGI R. BUSA', '', 1728538981000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133605_1728510181000.jpg', '', 0, ''),
('20133605', 'LUIGI R. BUSA', '', 1728538992000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133605_1728510192000.jpg', '', 0, ''),
('20133605', 'LUIGI R. BUSA', '', 1728538998000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133605_1728510198000.jpg', '', 0, ''),
('20133605', 'LUIGI R. BUSA', '', 1728539028000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133605_1728510228000.jpg', '', 0, ''),
('20133605', 'LUIGI R. BUSA', '', 1728539036000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133605_1728510236000.jpg', '', 0, ''),
('20133605', 'LUIGI R. BUSA', '', 1728539281000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133605_1728510481000.jpg', '', 0, ''),
('20133605', 'LUIGI R. BUSA', '', 1728539287000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133605_1728510487000.jpg', '', 0, ''),
('20133605', 'LUIGI R. BUSA', '', 1728539290000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133605_1728510490000.jpg', '', 0, ''),
('20133605', 'LUIGI R. BUSA', '', 1728539349000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133605_1728510549000.jpg', '', 0, ''),
('20133605', 'LUIGI R. BUSA', '', 1728539360000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133605_1728510560000.jpg', '', 0, ''),
('20133605', 'LUIGI R. BUSA', '', 1728539367000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133605_1728510567000.jpg', '', 0, ''),
('20133605', 'LUIGI R. BUSA', '', 1728539385000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133605_1728510585000.jpg', '', 0, ''),
('20133610', 'CIRNI B. GECOSALA', '', 1730185078000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133610_1730156278000.jpg', '', 0, ''),
('20133610', 'CIRNI B. GECOSALA', '', 1730185086000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133610_1730156286000.jpg', '', 0, ''),
('20133628', 'WENDEL J. CANDAWAN', '', 1730252848000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133628_1730224048000.jpg', '', 0, ''),
('20133628', 'WENDEL J. CANDAWAN', '', 1730252852000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133628_1730224052000.jpg', '', 0, ''),
('20133628', 'WENDEL J. CANDAWAN', '', 1730252867000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133628_1730224067000.jpg', '', 0, ''),
('20133628', 'WENDEL J. CANDAWAN', '', 1730252874000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133628_1730224074000.jpg', '', 0, ''),
('20133628', 'WENDEL J. CANDAWAN', '', 1730252887000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133628_1730224087000.jpg', '', 0, '');
INSERT INTO `attendancerecordinfo` (`PersonID`, `PersonName`, `PerSonCardNo`, `AttendanceDateTime`, `AttendanceState`, `AttendanceMethod`, `DeviceIPAddress`, `DeviceName`, `SnapshotsPath`, `Handler`, `AttendanceUtcTime`, `Remarks`) VALUES
('20133632', 'DENVER L. PAGE', '', 1730263774000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133632_1730234974000.jpg', '', 0, ''),
('20133632', 'DENVER L. PAGE', '', 1730263784000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133632_1730234984000.jpg', '', 0, ''),
('20133632', 'DENVER L. PAGE', '', 1730263795000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133632_1730234995000.jpg', '', 0, ''),
('20133645', 'JOHN MATTEW C. NOBLE', '', 1730257643000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133645_1730228843000.jpg', '', 0, ''),
('20133645', 'JOHN MATTEW C. NOBLE', '', 1730257647000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133645_1730228847000.jpg', '', 0, ''),
('20133645', 'JOHN MATTEW C. NOBLE', '', 1730257659000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133645_1730228859000.jpg', '', 0, ''),
('20133645', 'JOHN MATTEW C. NOBLE', '', 1730257661000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133645_1730228861000.jpg', '', 0, ''),
('20133681', 'LAWRENCE C. DURBAN', '', 1730259426000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133681_1730230626000.jpg', '', 0, ''),
('20133681', 'LAWRENCE C. DURBAN', '', 1730259432000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133681_1730230632000.jpg', '', 0, ''),
('20133681', 'LAWRENCE C. DURBAN', '', 1730259434000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133681_1730230634000.jpg', '', 0, ''),
('20133681', 'LAWRENCE C. DURBAN', '', 1730259443000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133681_1730230643000.jpg', '', 0, ''),
('20133681', 'LAWRENCE C. DURBAN', '', 1730259453000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133681_1730230653000.jpg', '', 0, ''),
('20133702', 'ERNIE M. CABALU', '', 1730267676000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133702_1730238876000.jpg', '', 0, ''),
('20133702', 'ERNIE M. CABALU', '', 1730267679000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133702_1730238879000.jpg', '', 0, ''),
('20133702', 'ERNIE M. CABALU', '', 1730267681000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133702_1730238881000.jpg', '', 0, ''),
('20133702', 'ERNIE M. CABALU', '', 1730267690000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133702_1730238890000.jpg', '', 0, ''),
('20133703', 'ROSSELLE GHEE M. ESCOBER', '', 1730269816000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133703_1730241016000.jpg', '', 0, ''),
('20133703', 'ROSSELLE GHEE M. ESCOBER', '', 1730269819000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133703_1730241019000.jpg', '', 0, ''),
('20133703', 'ROSSELLE GHEE M. ESCOBER', '', 1730269822000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133703_1730241022000.jpg', '', 0, ''),
('20133703', 'ROSSELLE GHEE M. ESCOBER', '', 1730269828000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133703_1730241028000.jpg', '', 0, ''),
('20133703', 'ROSSELLE GHEE M. ESCOBER', '', 1730269839000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20133703_1730241039000.jpg', '', 0, ''),
('20134003', 'MELCHORITA L. ALDECOA', '', 1730099474000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134003_1730070674000.jpg', '', 0, ''),
('20134003', 'MELCHORITA L. ALDECOA', '', 1730099485000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134003_1730070685000.jpg', '', 0, ''),
('20134023', 'MAE M. SOLIS', '', 1730101551000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134023_1730072751000.jpg', '', 0, ''),
('20134023', 'MAE M. SOLIS', '', 1730101558000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134023_1730072758000.jpg', '', 0, ''),
('20134023', 'MAE M. SOLIS', '', 1730101566000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134023_1730072766000.jpg', '', 0, ''),
('20134032', 'EMILIE R. CALISING', '', 1730104235000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134032_1730075435000.jpg', '', 0, ''),
('20134032', 'EMILIE R. CALISING', '', 1730104244000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134032_1730075444000.jpg', '', 0, ''),
('20134032', 'EMILIE R. CALISING', '', 1730104251000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134032_1730075451000.jpg', '', 0, ''),
('20134043', 'EVA KAREN C. GUBATON', '', 1730101816000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134043_1730073016000.jpg', '', 0, ''),
('20134043', 'EVA KAREN C. GUBATON', '', 1730101826000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134043_1730073026000.jpg', '', 0, ''),
('20134043', 'EVA KAREN C. GUBATON', '', 1730101833000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134043_1730073033000.jpg', '', 0, ''),
('20134043', 'EVA KAREN C. GUBATON', '', 1730101843000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134043_1730073043000.jpg', '', 0, ''),
('20134051', 'HIROMI T. KIKUCHI', '', 1730171951000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134051_1730143151000.jpg', '', 0, ''),
('20134051', 'HIROMI T. KIKUCHI', '', 1730171953000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134051_1730143153000.jpg', '', 0, ''),
('20134051', 'HIROMI T. KIKUCHI', '', 1730171960000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134051_1730143160000.jpg', '', 0, ''),
('20134051', 'HIROMI T. KIKUCHI', '', 1730171962000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134051_1730143162000.jpg', '', 0, ''),
('20134052', 'ARCHIE S. VALENZUELA', '', 1730182788000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134052_1730153988000.jpg', '', 0, ''),
('20134052', 'ARCHIE S. VALENZUELA', '', 1730182802000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134052_1730154002000.jpg', '', 0, ''),
('20134052', 'ARCHIE S. VALENZUELA', '', 1730182813000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134052_1730154013000.jpg', '', 0, ''),
('20134061', 'PRINCES G. DE JUAN', '', 1730181968000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134061_1730153168000.jpg', '', 0, ''),
('20134061', 'PRINCES G. DE JUAN', '', 1730181982000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134061_1730153182000.jpg', '', 0, ''),
('20134061', 'PRINCES G. DE JUAN', '', 1730181984000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134061_1730153184000.jpg', '', 0, ''),
('20134139', 'YUICHI R. SAKAINO JR', '', 1730171789000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134139_1730142989000.jpg', '', 0, ''),
('20134139', 'YUICHI R. SAKAINO JR', '', 1730171796000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134139_1730142996000.jpg', '', 0, ''),
('20134139', 'YUICHI R. SAKAINO JR', '', 1730171808000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134139_1730143008000.jpg', '', 0, ''),
('20134139', 'YUICHI R. SAKAINO JR', '', 1730171812000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134139_1730143012000.jpg', '', 0, ''),
('20134178', 'ARIES CYRIL R. JARAVATA', '', 1730102576000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134178_1730073776000.jpg', '', 0, ''),
('20134178', 'ARIES CYRIL R. JARAVATA', '', 1730102585000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134178_1730073785000.jpg', '', 0, ''),
('20134178', 'ARIES CYRIL R. JARAVATA', '', 1730102588000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134178_1730073788000.jpg', '', 0, ''),
('20134186', 'JONATHAN M . TORZAR', '', 1730102467000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134186_1730073667000.jpg', '', 0, ''),
('20134186', 'JONATHAN M . TORZAR', '', 1730102479000, 6, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134186_1730073679000.jpg', '', 0, ''),
('20134186', 'JONATHAN M . TORZAR', '', 1730102484000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134186_1730073684000.jpg', '', 0, ''),
('20134190', 'MARIA ANGELYCA LUMPAYAO', '', 1730078827000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134190_1730050027000.jpg', '', 0, ''),
('20134190', 'MARIA ANGELYCA LUMPAYAO', '', 1730078837000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134190_1730050037000.jpg', '', 0, ''),
('20134190', 'MARIA ANGELYCA LUMPAYAO', '', 1730078842000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134190_1730050042000.jpg', '', 0, ''),
('20134190', 'MARIA ANGELYCA LUMPAYAO', '', 1730078853000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134190_1730050053000.jpg', '', 0, ''),
('20134190', 'MARIA ANGELYCA LUMPAYAO', '', 1730078856000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134190_1730050056000.jpg', '', 0, ''),
('20134190', 'MARIA ANGELYCA LUMPAYAO', '', 1730078867000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134190_1730050067000.jpg', '', 0, ''),
('20134190', 'MARIA ANGELYCA LUMPAYAO', '', 1730095457000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134190_1730066657000.jpg', '', 0, ''),
('20134192', 'MARY GRACE C. SALCEDO', '', 1730101669000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134192_1730072869000.jpg', '', 0, ''),
('20134192', 'MARY GRACE C. SALCEDO', '', 1730101680000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134192_1730072880000.jpg', '', 0, ''),
('20134192', 'MARY GRACE C. SALCEDO', '', 1730101689000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134192_1730072889000.jpg', '', 0, ''),
('20134204', 'ESPERANZA S. JACINTO', '', 1730184921000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134204_1730156121000.jpg', '', 0, ''),
('20134204', 'ESPERANZA S. JACINTO', '', 1730184944000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134204_1730156144000.jpg', '', 0, ''),
('20134204', 'ESPERANZA S. JACINTO', '', 1730184953000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134204_1730156153000.jpg', '', 0, ''),
('20134208', 'CHRISTIAN JOY C. RECIO', '', 1730253692000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134208_1730224892000.jpg', '', 0, ''),
('20134208', 'CHRISTIAN JOY C. RECIO', '', 1730253695000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134208_1730224895000.jpg', '', 0, ''),
('20134208', 'CHRISTIAN JOY C. RECIO', '', 1730253701000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134208_1730224901000.jpg', '', 0, ''),
('20134208', 'CHRISTIAN JOY C. RECIO', '', 1730253711000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134208_1730224911000.jpg', '', 0, ''),
('20134212', 'CRISTIAN Q. ORDONEZ', '', 1730180150000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134212_1730151350000.jpg', '', 0, ''),
('20134212', 'CRISTIAN Q. ORDONEZ', '', 1730180160000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134212_1730151360000.jpg', '', 0, ''),
('20134212', 'CRISTIAN Q. ORDONEZ', '', 1730180168000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134212_1730151368000.jpg', '', 0, ''),
('20134212', 'CRISTIAN Q. ORDONEZ', '', 1730180174000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134212_1730151374000.jpg', '', 0, ''),
('20134267', 'MARY GRACE I. ASIS', '', 1730182117000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134267_1730153317000.jpg', '', 0, ''),
('20134267', 'MARY GRACE I. ASIS', '', 1730182123000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134267_1730153323000.jpg', '', 0, ''),
('20134267', 'MARY GRACE I. ASIS', '', 1730182128000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134267_1730153328000.jpg', '', 0, ''),
('20134267', 'MARY GRACE I. ASIS', '', 1730182135000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134267_1730153335000.jpg', '', 0, ''),
('20134267', 'MARY GRACE I. ASIS', '', 1730182146000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134267_1730153346000.jpg', '', 0, ''),
('20134269', 'JAY-AR C. FLORES', '', 1730252358000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134269_1730223558000.jpg', '', 0, ''),
('20134269', 'JAY-AR C. FLORES', '', 1730252362000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134269_1730223562000.jpg', '', 0, ''),
('20134269', 'JAY-AR C. FLORES', '', 1730252381000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134269_1730223581000.jpg', '', 0, ''),
('20134269', 'JAY-AR C. FLORES', '', 1730252389000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134269_1730223589000.jpg', '', 0, ''),
('20134269', 'JAY-AR C. FLORES', '', 1730252400000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134269_1730223600000.jpg', '', 0, ''),
('20134296', 'KECY MIRASOL C. TABILISMA', '', 1730183908000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134296_1730155108000.jpg', '', 0, ''),
('20134296', 'KECY MIRASOL C. TABILISMA', '', 1730183911000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134296_1730155111000.jpg', '', 0, ''),
('20134296', 'KECY MIRASOL C. TABILISMA', '', 1730183938000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134296_1730155138000.jpg', '', 0, ''),
('20134296', 'KECY MIRASOL C. TABILISMA', '', 1730183944000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134296_1730155144000.jpg', '', 0, ''),
('20134296', 'KECY MIRASOL C. TABILISMA', '', 1730183954000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134296_1730155154000.jpg', '', 0, ''),
('20134303', 'ADRIAN D. CAYANAN', '', 1730102337000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134303_1730073537000.jpg', '', 0, ''),
('20134303', 'ADRIAN D. CAYANAN', '', 1730102345000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134303_1730073545000.jpg', '', 0, ''),
('20134303', 'ADRIAN D. CAYANAN', '', 1730102355000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134303_1730073555000.jpg', '', 0, ''),
('20134328', 'BRYLLE CHRISTIAN M. PUEBLA', '', 1730182372000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134328_1730153572000.jpg', '', 0, ''),
('20134328', 'BRYLLE CHRISTIAN M. PUEBLA', '', 1730182378000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134328_1730153578000.jpg', '', 0, ''),
('20134328', 'BRYLLE CHRISTIAN M. PUEBLA', '', 1730182390000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134328_1730153590000.jpg', '', 0, ''),
('20134328', 'BRYLLE CHRISTIAN M. PUEBLA', '', 1730182401000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134328_1730153601000.jpg', '', 0, ''),
('20134359', 'JENINA O. SALES', '', 1730181807000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134359_1730153007000.jpg', '', 0, ''),
('20134359', 'JENINA O. SALES', '', 1730181820000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134359_1730153020000.jpg', '', 0, ''),
('20134359', 'JENINA O. SALES', '', 1730181825000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134359_1730153025000.jpg', '', 0, ''),
('20134363', 'MARTIN T. AGUILAR', '', 1730256724000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134363_1730227924000.jpg', '', 0, ''),
('20134363', 'MARTIN T. AGUILAR', '', 1730256728000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134363_1730227928000.jpg', '', 0, ''),
('20134363', 'MARTIN T. AGUILAR', '', 1730256741000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134363_1730227941000.jpg', '', 0, ''),
('20134363', 'MARTIN T. AGUILAR', '', 1730256752000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134363_1730227952000.jpg', '', 0, ''),
('20134369', 'JESSICA M. HAPITA', '', 1729490668000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134369_1729461868000.jpg', '', 0, ''),
('20134369', 'JESSICA M. HAPITA', '', 1729490674000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134369_1729461874000.jpg', '', 0, ''),
('20134370', 'ABIGAIL J. PURIFICACION', '', 1730104378000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134370_1730075578000.jpg', '', 0, ''),
('20134370', 'ABIGAIL J. PURIFICACION', '', 1730104382000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134370_1730075582000.jpg', '', 0, ''),
('20134370', 'ABIGAIL J. PURIFICACION', '', 1730104395000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134370_1730075595000.jpg', '', 0, ''),
('20134370', 'ABIGAIL J. PURIFICACION', '', 1730104407000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134370_1730075607000.jpg', '', 0, ''),
('20134378', 'MARK ANTHONY N. PINGOL', '', 1730172076000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134378_1730143276000.jpg', '', 0, ''),
('20134378', 'MARK ANTHONY N. PINGOL', '', 1730172079000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134378_1730143279000.jpg', '', 0, ''),
('20134378', 'MARK ANTHONY N. PINGOL', '', 1730172084000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134378_1730143284000.jpg', '', 0, ''),
('20134378', 'MARK ANTHONY N. PINGOL', '', 1730172087000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134378_1730143287000.jpg', '', 0, ''),
('20134383', 'JOHN HARVEY P. MARCHAN', '', 1729492629000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134383_1729463829000.jpg', '', 0, ''),
('20134383', 'JOHN HARVEY P. MARCHAN', '', 1729492633000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134383_1729463833000.jpg', '', 0, ''),
('20134383', 'JOHN HARVEY P. MARCHAN', '', 1729492640000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134383_1729463840000.jpg', '', 0, ''),
('20134383', 'JOHN HARVEY P. MARCHAN', '', 1729492653000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134383_1729463853000.jpg', '', 0, ''),
('20134383', 'JOHN HARVEY P. MARCHAN', '', 1729492663000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134383_1729463863000.jpg', '', 0, ''),
('20134385', 'EUGINE BAYOTAS', '', 1727949123000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134385', 'EUGINE BAYOTAS', '', 1727949258000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134385', 'EUGINE BAYOTAS', '', 1727949269000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134385', 'EUGINE BAYOTAS', '', 1727949304000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134385', 'EUGINE BAYOTAS', '', 1727949314000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134385', 'EUGINE BAYOTAS', '', 1727949325000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134385', 'EUGINE BAYOTAS', '', 1727949326000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134385', 'EUGINE BAYOTAS', '', 1727949338000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134385', 'EUGINE BAYOTAS', '', 1728459484000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134385', 'EUGINE BAYOTAS', '', 1728462012000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134385', 'EUGINE BAYOTAS', '', 1728462031000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134385', 'EUGINE BAYOTAS', '', 1728462037000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134385', 'EUGINE BAYOTAS', '', 1728462043000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134385', 'EUGINE BAYOTAS', '', 1728465280000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134385', 'EUGINE BAYOTAS', '', 1728479871000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134385', 'EUGINE BAYOTAS', '', 1728479882000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134385', 'EUGINE BAYOTAS', '', 1728526589000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134385', 'EUGINE BAYOTAS', '', 1728526599000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134385', 'EUGINE BAYOTAS', '', 1728990366000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134385', 'EUGINE BAYOTAS', '', 1728990378000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134385', 'EUGINE BAYOTAS', '', 1729239816000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134385', 'EUGINE BAYOTAS', '', 1729254699000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134385', 'EUGINE BAYOTAS', '', 1729326883000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1728380768000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1728351968000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1728380771000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1728351971000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1728380772000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1728351972000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1728380774000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1728351974000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1728380775000, 5, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1728351975000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1728380776000, 6, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1728351976000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1728380779000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1728351979000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1728422794000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1728393994000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1728422804000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1728394004000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1728459463000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1728430663000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1728461959000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1728433159000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1728462023000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1728433223000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1728473729000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1728444929000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1728473739000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1728444939000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1728516081000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1728487281000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1728516091000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1728487291000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1728553885000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1728525085000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1728553897000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1728525097000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1728653683000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1728624883000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1728653694000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1728624894000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1729031504000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1729002704000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1729031515000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1729002715000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1729031544000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1729002744000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1729119026000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1729090226000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1729171073000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1729142273000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1729246668000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1729217868000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1729246680000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1729217880000.jpg', '', 0, ''),
('20134389', 'RUSSIE PEREZ', '', 1729464886000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134389_1729436086000.jpg', '', 0, ''),
('20134392', 'MARVIN LHENARD B. ALUNAN', '', 1730167002000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134392_1730138202000.jpg', '', 0, ''),
('20134392', 'MARVIN LHENARD B. ALUNAN', '', 1730167006000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134392_1730138206000.jpg', '', 0, ''),
('20134392', 'MARVIN LHENARD B. ALUNAN', '', 1730167020000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134392_1730138220000.jpg', '', 0, ''),
('20134392', 'MARVIN LHENARD B. ALUNAN', '', 1730167027000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134392_1730138227000.jpg', '', 0, ''),
('20134404', 'JOEY E. DELMONTE', '', 1730099941000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134404_1730071141000.jpg', '', 0, ''),
('20134404', 'JOEY E. DELMONTE', '', 1730099946000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134404_1730071146000.jpg', '', 0, ''),
('20134404', 'JOEY E. DELMONTE', '', 1730099951000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134404_1730071151000.jpg', '', 0, ''),
('20134404', 'JOEY E. DELMONTE', '', 1730099963000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134404_1730071163000.jpg', '', 0, ''),
('20134410', 'CHERRY G. NACION', '', 1730102960000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134410_1730074160000.jpg', '', 0, ''),
('20134410', 'CHERRY G. NACION', '', 1730102968000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134410_1730074168000.jpg', '', 0, ''),
('20134410', 'CHERRY G. NACION', '', 1730102979000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134410_1730074179000.jpg', '', 0, ''),
('20134412', 'JACKELYN M. SALAZAR', '', 1730100211000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134412_1730071411000.jpg', '', 0, ''),
('20134412', 'JACKELYN M. SALAZAR', '', 1730100222000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134412_1730071422000.jpg', '', 0, ''),
('20134412', 'JACKELYN M. SALAZAR', '', 1730100234000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134412_1730071434000.jpg', '', 0, ''),
('20134414', 'MAY B. MAGDARAOG', '', 1730100887000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134414_1730072087000.jpg', '', 0, ''),
('20134414', 'MAY B. MAGDARAOG', '', 1730100899000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134414_1730072099000.jpg', '', 0, ''),
('20134414', 'MAY B. MAGDARAOG', '', 1730100910000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134414_1730072110000.jpg', '', 0, ''),
('20134432', 'ACE R. CASIMIRO', '', 1730172467000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134432_1730143667000.jpg', '', 0, ''),
('20134432', 'ACE R. CASIMIRO', '', 1730172475000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134432_1730143675000.jpg', '', 0, ''),
('20134432', 'ACE R. CASIMIRO', '', 1730172480000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134432_1730143680000.jpg', '', 0, ''),
('20134433', 'JOVEL ADVINCULA', '', 1728378121000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134433_1728349321000.jpg', '', 0, ''),
('20134433', 'JOVEL ADVINCULA', '', 1728378126000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134433_1728349326000.jpg', '', 0, ''),
('20134433', 'JOVEL ADVINCULA', '', 1728378131000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134433_1728349331000.jpg', '', 0, ''),
('20134433', 'JOVEL ADVINCULA', '', 1728378133000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134433_1728349333000.jpg', '', 0, ''),
('20134433', 'JOVEL ADVINCULA', '', 1728378138000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134433_1728349338000.jpg', '', 0, ''),
('20134433', 'JOVEL ADVINCULA', '', 1728378151000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134433_1728349351000.jpg', '', 0, ''),
('20134433', 'JOVEL ADVINCULA', '', 1728378158000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134433_1728349358000.jpg', '', 0, ''),
('20134433', 'JOVEL ADVINCULA', '', 1728454730000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134433_1728425930000.jpg', '', 0, ''),
('20134433', 'JOVEL ADVINCULA', '', 1728454734000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134433_1728425934000.jpg', '', 0, ''),
('20134433', 'JOVEL ADVINCULA', '', 1728454735000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134433_1728425935000.jpg', '', 0, ''),
('20134433', 'JOVEL ADVINCULA', '', 1728454738000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134433_1728425938000.jpg', '', 0, ''),
('20134433', 'JOVEL ADVINCULA', '', 1728461969000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134433_1728433169000.jpg', '', 0, ''),
('20134433', 'JOVEL ADVINCULA', '', 1728461979000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134433_1728433179000.jpg', '', 0, ''),
('20134433', 'JOVEL ADVINCULA', '', 1728462028000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134433_1728433228000.jpg', '', 0, ''),
('20134433', 'JOVEL ADVINCULA', '', 1729049188000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134433_1729020388000.jpg', '', 0, ''),
('20134433', 'JOVEL ADVINCULA', '', 1729477360000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134433_1729448560000.jpg', '', 0, ''),
('20134433', 'JOVEL ADVINCULA', '', 1729477370000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134433_1729448570000.jpg', '', 0, ''),
('20134434', 'CHRISTINE MAY M. OBINA', '', 1730181656000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134434_1730152856000.jpg', '', 0, ''),
('20134434', 'CHRISTINE MAY M. OBINA', '', 1730181659000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134434_1730152859000.jpg', '', 0, ''),
('20134434', 'CHRISTINE MAY M. OBINA', '', 1730181676000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134434_1730152876000.jpg', '', 0, ''),
('20134434', 'CHRISTINE MAY M. OBINA', '', 1730181679000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134434_1730152879000.jpg', '', 0, ''),
('20134434', 'CHRISTINE MAY M. OBINA', '', 1730181689000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134434_1730152889000.jpg', '', 0, ''),
('20134435', 'JHON LLYOD F. LORENZO', '', 1730179235000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134435_1730150435000.jpg', '', 0, ''),
('20134435', 'JHON LLYOD F. LORENZO', '', 1730179241000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134435_1730150441000.jpg', '', 0, ''),
('20134435', 'JHON LLYOD F. LORENZO', '', 1730179252000, 5, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134435_1730150452000.jpg', '', 0, ''),
('20134442', 'JAYVEE L. PENAZO', '', 1730100064000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134442_1730071264000.jpg', '', 0, ''),
('20134442', 'JAYVEE L. PENAZO', '', 1730100075000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134442_1730071275000.jpg', '', 0, ''),
('20134444', 'JULSE LORENZ P. ALVIOR', '', 1730166247000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134444_1730137447000.jpg', '', 0, ''),
('20134444', 'JULSE LORENZ P. ALVIOR', '', 1730166254000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134444_1730137454000.jpg', '', 0, ''),
('20134444', 'JULSE LORENZ P. ALVIOR', '', 1730166266000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134444_1730137466000.jpg', '', 0, ''),
('20134444', 'JULSE LORENZ P. ALVIOR', '', 1730166277000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134444_1730137477000.jpg', '', 0, ''),
('20134448', 'LEO C. QUINTANA', '', 1730099762000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134448_1730070962000.jpg', '', 0, ''),
('20134448', 'LEO C. QUINTANA', '', 1730099771000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134448_1730070971000.jpg', '', 0, ''),
('20134463', 'JAYPEE P. DITAN', '', 1729490069000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134463_1729461269000.jpg', '', 0, ''),
('20134463', 'JAYPEE P. DITAN', '', 1729490507000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134463_1729461707000.jpg', '', 0, ''),
('20134463', 'JAYPEE P. DITAN', '', 1729490511000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134463_1729461711000.jpg', '', 0, ''),
('20134463', 'JAYPEE P. DITAN', '', 1729490680000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134463_1729461880000.jpg', '', 0, ''),
('20134463', 'JAYPEE P. DITAN', '', 1729490682000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134463_1729461882000.jpg', '', 0, ''),
('20134463', 'JAYPEE P. DITAN', '', 1729490704000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134463_1729461904000.jpg', '', 0, ''),
('20134463', 'JAYPEE P. DITAN', '', 1729492469000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134463_1729463669000.jpg', '', 0, ''),
('20134463', 'JAYPEE P. DITAN', '', 1730099049000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134463_1730070249000.jpg', '', 0, ''),
('20134463', 'JAYPEE P. DITAN', '', 1730099232000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134463_1730070432000.jpg', '', 0, ''),
('20134463', 'JAYPEE P. DITAN', '', 1730099236000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134463_1730070436000.jpg', '', 0, ''),
('20134463', 'JAYPEE P. DITAN', '', 1730099380000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134463_1730070580000.jpg', '', 0, ''),
('20134463', 'JAYPEE P. DITAN', '', 1730099492000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134463_1730070692000.jpg', '', 0, ''),
('20134463', 'JAYPEE P. DITAN', '', 1730099498000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134463_1730070698000.jpg', '', 0, ''),
('20134463', 'JAYPEE P. DITAN', '', 1730099642000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134463_1730070842000.jpg', '', 0, ''),
('20134463', 'JAYPEE P. DITAN', '', 1730099644000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134463_1730070844000.jpg', '', 0, ''),
('20134463', 'JAYPEE P. DITAN', '', 1730099651000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134463_1730070851000.jpg', '', 0, ''),
('20134463', 'JAYPEE P. DITAN', '', 1730099784000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134463_1730070984000.jpg', '', 0, ''),
('20134463', 'JAYPEE P. DITAN', '', 1730099823000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134463_1730071023000.jpg', '', 0, ''),
('20134463', 'JAYPEE P. DITAN', '', 1730099967000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134463_1730071167000.jpg', '', 0, ''),
('20134463', 'JAYPEE P. DITAN', '', 1730100083000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134463_1730071283000.jpg', '', 0, ''),
('20134463', 'JAYPEE P. DITAN', '', 1730100246000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134463_1730071446000.jpg', '', 0, ''),
('20134469', 'RHAJID KAZANDRA JEAN Q. KATIGBAK', '', 1730102828000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134469_1730074028000.jpg', '', 0, ''),
('20134469', 'RHAJID KAZANDRA JEAN Q. KATIGBAK', '', 1730102838000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134469_1730074038000.jpg', '', 0, ''),
('20134469', 'RHAJID KAZANDRA JEAN Q. KATIGBAK', '', 1730102846000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134469_1730074046000.jpg', '', 0, ''),
('20134471', 'EDWARD ADRIAN P. CATALAN', '', 1730181494000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134471_1730152694000.jpg', '', 0, ''),
('20134471', 'EDWARD ADRIAN P. CATALAN', '', 1730181498000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134471_1730152698000.jpg', '', 0, ''),
('20134471', 'EDWARD ADRIAN P. CATALAN', '', 1730181507000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134471_1730152707000.jpg', '', 0, ''),
('20134471', 'EDWARD ADRIAN P. CATALAN', '', 1730181515000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134471_1730152715000.jpg', '', 0, ''),
('20134471', 'EDWARD ADRIAN P. CATALAN', '', 1730181526000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134471_1730152726000.jpg', '', 0, ''),
('20134472', 'MASATO T. KIKUCHI', '', 1730172713000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134472_1730143913000.jpg', '', 0, ''),
('20134472', 'MASATO T. KIKUCHI', '', 1730172715000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134472_1730143915000.jpg', '', 0, ''),
('20134472', 'MASATO T. KIKUCHI', '', 1730172728000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134472_1730143928000.jpg', '', 0, ''),
('20134472', 'MASATO T. KIKUCHI', '', 1730172732000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134472_1730143932000.jpg', '', 0, ''),
('20134473', 'MICHELLE ANN M. BUNGAY', '', 1729489036000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134473_1729460236000.jpg', '', 0, ''),
('20134473', 'MICHELLE ANN M. BUNGAY', '', 1729489047000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134473_1729460247000.jpg', '', 0, ''),
('20134473', 'MICHELLE ANN M. BUNGAY', '', 1729489079000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134473_1729460279000.jpg', '', 0, ''),
('20134473', 'MICHELLE ANN M. BUNGAY', '', 1729489090000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134473_1729460290000.jpg', '', 0, ''),
('20134473', 'MICHELLE ANN M. BUNGAY', '', 1729489110000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134473_1729460310000.jpg', '', 0, ''),
('20134473', 'MICHELLE ANN M. BUNGAY', '', 1729489114000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134473_1729460314000.jpg', '', 0, ''),
('20134474', 'JEROME P. CANLAS', '', 1729492774000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134474_1729463974000.jpg', '', 0, ''),
('20134474', 'JEROME P. CANLAS', '', 1729492778000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134474_1729463978000.jpg', '', 0, ''),
('20134481', 'WILMARK M. GABALFIN', '', 1730099616000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134481_1730070816000.jpg', '', 0, '');
INSERT INTO `attendancerecordinfo` (`PersonID`, `PersonName`, `PerSonCardNo`, `AttendanceDateTime`, `AttendanceState`, `AttendanceMethod`, `DeviceIPAddress`, `DeviceName`, `SnapshotsPath`, `Handler`, `AttendanceUtcTime`, `Remarks`) VALUES
('20134481', 'WILMARK M. GABALFIN', '', 1730099624000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134481_1730070824000.jpg', '', 0, ''),
('20134481', 'WILMARK M. GABALFIN', '', 1730099628000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134481_1730070828000.jpg', '', 0, ''),
('20134481', 'WILMARK M. GABALFIN', '', 1730099639000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134481_1730070839000.jpg', '', 0, ''),
('20134483', 'AERIEL NADYNE D. ERENO', '', 1730172223000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134483_1730143423000.jpg', '', 0, ''),
('20134483', 'AERIEL NADYNE D. ERENO', '', 1730172229000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134483_1730143429000.jpg', '', 0, ''),
('20134483', 'AERIEL NADYNE D. ERENO', '', 1730172235000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134483_1730143435000.jpg', '', 0, ''),
('20134483', 'AERIEL NADYNE D. ERENO', '', 1730172245000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134483_1730143445000.jpg', '', 0, ''),
('20134488', 'BENJAMIN ARTHUR P. REYES', '', 1730166556000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134488_1730137756000.jpg', '', 0, ''),
('20134488', 'BENJAMIN ARTHUR P. REYES', '', 1730166561000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134488_1730137761000.jpg', '', 0, ''),
('20134488', 'BENJAMIN ARTHUR P. REYES', '', 1730166568000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134488_1730137768000.jpg', '', 0, ''),
('20134488', 'BENJAMIN ARTHUR P. REYES', '', 1730166573000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134488_1730137773000.jpg', '', 0, ''),
('20134488', 'BENJAMIN ARTHUR P. REYES', '', 1730166578000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134488_1730137778000.jpg', '', 0, ''),
('20134488', 'BENJAMIN ARTHUR P. REYES', '', 1730166581000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134488_1730137781000.jpg', '', 0, ''),
('20134492', 'CRISTIAN L. SOLIS', '', 1730102204000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134492_1730073404000.jpg', '', 0, ''),
('20134492', 'CRISTIAN L. SOLIS', '', 1730102216000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134492_1730073416000.jpg', '', 0, ''),
('20134492', 'CRISTIAN L. SOLIS', '', 1730102220000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134492_1730073420000.jpg', '', 0, ''),
('20134492', 'CRISTIAN L. SOLIS', '', 1730102227000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134492_1730073427000.jpg', '', 0, ''),
('20134492', 'CRISTIAN L. SOLIS', '', 1730102233000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134492_1730073433000.jpg', '', 0, ''),
('20134501', 'EMALLEEN V. TAMAYO', '', 1730184118000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134501_1730155318000.jpg', '', 0, ''),
('20134501', 'EMALLEEN V. TAMAYO', '', 1730184130000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134501_1730155330000.jpg', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727946398000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727946401000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727946585000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727946738000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727946765000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727948328000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727948352000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727948422000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727948468000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727948526000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727948529000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727948535000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727948565000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727948575000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727948585000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727948596000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727948609000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727948618000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727948629000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727949027000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727949139000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727949143000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727949154000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727949886000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727951626000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727951629000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727951633000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727951944000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727951952000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727951955000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727952004000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727952007000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727952017000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727952126000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727952129000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727952132000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727952143000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727952216000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727952219000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727952224000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727952226000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727952228000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727952238000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727952277000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727952279000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727952281000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727952284000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727952289000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727952291000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1727952293000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728269092000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728269095000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728269107000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728270403000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728270684000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728271098000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728271110000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728271122000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728271272000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728271284000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728271338000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/Capture/EventPic2024-10-07/1_20134507__20241007112218.jpg', '', 1728242538, ''),
('20134507', 'DHANI SAN JOSE', '', 1728299413000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728299724000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728299735000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728299842000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728299853000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728300053000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728300057000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728300068000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728300181000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728300193000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728300316000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728300327000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728300518000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728300529000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728300535000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728300546000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728300645000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728300656000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728301527000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728301532000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728301616000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728301618000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728301629000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728352114000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728352156000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728352691000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728361108000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728361113000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728361115000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728361119000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728361129000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728364949000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728364954000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728364959000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728364963000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728364973000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728364984000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365081000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365091000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365095000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365104000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365106000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365108000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365110000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365113000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365116000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365118000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365123000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365316000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365327000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365329000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365340000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365352000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365355000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365361000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365366000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365376000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365484000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365494000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365507000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365517000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365527000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365562000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365629000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365638000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365642000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365647000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365650000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365658000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728365669000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728377980000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728377990000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728377994000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728378007000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728378141000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728378147000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728378161000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728378285000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728378327000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728378440000, 5, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728378443000, 6, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728378446000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728378869000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728379485000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728379487000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728379493000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728454586000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728454594000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728454619000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728454630000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728457561000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728457572000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728459102000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728459106000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728459108000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728459110000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728459120000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728459370000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728459372000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728459374000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728459375000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728459381000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728459593000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728459596000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728459598000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728459599000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728459610000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728459719000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728459721000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728459722000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728459723000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728459734000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728459761000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728462101000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728462106000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728462110000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728463639000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728463645000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728463655000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728465568000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728465571000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728465572000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728465574000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728465585000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728465723000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728465725000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728465726000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728465728000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728465739000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728466106000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728466108000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728466109000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728466110000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728466121000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728466212000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728466213000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728466215000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728466216000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728466226000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728468741000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728468743000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728468744000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728468746000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728468756000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728519970000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728519981000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728520334000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728526573000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728533419000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728538867000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728538874000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728539232000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728539265000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1728550591000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1729047299000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1729053128000, 3, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1729053139000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1729069561000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1729129183000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1729129186000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1729138122000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1729138522000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1729142970000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1729170826000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1729170831000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1729483131000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1729483136000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1729483323000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1729488891000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1729489075000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1729489103000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1730095192000, 1, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134507', 'DHANI SAN JOSE', '', 1730273620000, 4, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('20134511', 'JOHN PAUL N. SOLOMON', '', 1730172337000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134511_1730143537000.jpg', '', 0, ''),
('20134511', 'JOHN PAUL N. SOLOMON', '', 1730172347000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134511_1730143547000.jpg', '', 0, ''),
('20134512', 'EMMANUEL HESUS S. VILLANUEVA', '', 1730103299000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134512_1730074499000.jpg', '', 0, ''),
('20134512', 'EMMANUEL HESUS S. VILLANUEVA', '', 1730103311000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134512_1730074511000.jpg', '', 0, ''),
('20134512', 'EMMANUEL HESUS S. VILLANUEVA', '', 1730103319000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134512_1730074519000.jpg', '', 0, ''),
('20134512', 'EMMANUEL HESUS S. VILLANUEVA', '', 1730103322000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134512_1730074522000.jpg', '', 0, ''),
('20134513', 'BRYAN KYLE G. ESPINA', '', 1730102076000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134513_1730073276000.jpg', '', 0, ''),
('20134513', 'BRYAN KYLE G. ESPINA', '', 1730102083000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134513_1730073283000.jpg', '', 0, ''),
('20134513', 'BRYAN KYLE G. ESPINA', '', 1730102088000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134513_1730073288000.jpg', '', 0, ''),
('20134516', 'PATRICIA ANNE P. DEINLA', '', 1730166834000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134516_1730138034000.jpg', '', 0, ''),
('20134516', 'PATRICIA ANNE P. DEINLA', '', 1730166841000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134516_1730138041000.jpg', '', 0, ''),
('20134516', 'PATRICIA ANNE P. DEINLA', '', 1730166849000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134516_1730138049000.jpg', '', 0, ''),
('20134516', 'PATRICIA ANNE P. DEINLA', '', 1730166856000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134516_1730138056000.jpg', '', 0, ''),
('20134523', 'MARILYN P. CUYOS', '', 1730182923000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134523_1730154123000.jpg', '', 0, ''),
('20134523', 'MARILYN P. CUYOS', '', 1730182928000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134523_1730154128000.jpg', '', 0, ''),
('20134523', 'MARILYN P. CUYOS', '', 1730182933000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134523_1730154133000.jpg', '', 0, ''),
('20134523', 'MARILYN P. CUYOS', '', 1730182936000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_20134523_1730154136000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1728520400000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1728491600000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1728520407000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1728491607000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1728533173000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1728504373000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1728533183000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1728504383000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1728553184000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1728524384000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1728553195000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1728524395000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1729052176000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1729023376000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1729052180000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1729023380000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1729052191000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1729023391000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1729054343000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1729025543000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1729054353000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1729025553000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1729059823000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1729031023000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1729071235000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1729042435000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1729071247000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1729042447000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1729126015000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1729097215000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1729126026000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1729097226000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1729227744000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1729198944000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1729227756000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1729198956000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1729242846000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1729214046000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1729242856000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1729214056000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1729299203000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1729270403000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1729299208000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1729270408000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1729310462000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1729281662000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1729313614000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1729284814000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1729313625000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1729284825000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1729327106000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1729298306000.jpg', '', 0, ''),
('2020404', 'JOHN EDZEL SILVESTRE', '', 1729327117000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2020404_1729298317000.jpg', '', 0, ''),
('2040199', 'ISHA RAE LIBAN', '', 1728459353000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040199_1728430553000.jpg', '', 0, ''),
('2040199', 'ISHA RAE LIBAN', '', 1728459355000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040199_1728430555000.jpg', '', 0, ''),
('2040199', 'ISHA RAE LIBAN', '', 1728459357000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040199_1728430557000.jpg', '', 0, ''),
('2040199', 'ISHA RAE LIBAN', '', 1728459367000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040199_1728430567000.jpg', '', 0, ''),
('2040199', 'ISHA RAE LIBAN', '', 1728461039000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040199_1728432239000.jpg', '', 0, ''),
('2040199', 'ISHA RAE LIBAN', '', 1728461040000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040199_1728432240000.jpg', '', 0, ''),
('2040199', 'ISHA RAE LIBAN', '', 1728461043000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040199_1728432243000.jpg', '', 0, ''),
('2040199', 'ISHA RAE LIBAN', '', 1728461047000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040199_1728432247000.jpg', '', 0, ''),
('2040199', 'ISHA RAE LIBAN', '', 1728875355000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040199_1728846555000.jpg', '', 0, ''),
('2040199', 'ISHA RAE LIBAN', '', 1728877957000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040199_1728849157000.jpg', '', 0, ''),
('2040199', 'ISHA RAE LIBAN', '', 1728877961000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040199_1728849161000.jpg', '', 0, ''),
('2040199', 'ISHA RAE LIBAN', '', 1728877964000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040199_1728849164000.jpg', '', 0, ''),
('2040199', 'ISHA RAE LIBAN', '', 1728877975000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040199_1728849175000.jpg', '', 0, ''),
('2040199', 'ISHA RAE LIBAN', '', 1728881885000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040199_1728853085000.jpg', '', 0, ''),
('2040199', 'ISHA RAE LIBAN', '', 1729140428000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040199_1729111628000.jpg', '', 0, ''),
('2040199', 'ISHA RAE LIBAN', '', 1729140434000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040199_1729111634000.jpg', '', 0, ''),
('2040199', 'ISHA RAE LIBAN', '', 1729142510000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040199_1729113710000.jpg', '', 0, ''),
('2040199', 'ISHA RAE LIBAN', '', 1729142516000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040199_1729113716000.jpg', '', 0, ''),
('2040199', 'ISHA RAE LIBAN', '', 1729150839000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040199_1729122039000.jpg', '', 0, ''),
('2040199', 'ISHA RAE LIBAN', '', 1729153313000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040199_1729124513000.jpg', '', 0, ''),
('2040199', 'ISHA RAE LIBAN', '', 1729480808000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040199_1729452008000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728441391000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728412591000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728441393000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728412593000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728454424000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728425624000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728454428000, 2, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728454440000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728454452000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728454536000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728425736000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728454541000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728425741000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728454542000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728425742000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728454547000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728425747000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728454578000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728425778000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728454583000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728425783000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728454867000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728426067000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728454880000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728426080000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728454899000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728426099000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728454903000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728426103000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728459007000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728430207000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728459011000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728430211000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728459013000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728430213000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728459014000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728430214000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728459015000, 5, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728430215000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728459017000, 6, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728430217000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728459027000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728430227000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728632779000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728603979000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728632783000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728603983000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728632787000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728603987000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728632788000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728603988000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728632790000, 5, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728603990000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728632792000, 6, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728603992000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728632803000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728604003000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728718400000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728689600000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728718402000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728689602000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728718403000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728689603000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728718404000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728689604000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728718406000, 5, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728689606000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728718407000, 6, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728689607000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728724676000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728695876000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728724686000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728695886000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728877397000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728848597000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728877407000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728848607000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728894294000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728865494000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728894297000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728865497000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728894298000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728865498000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728894299000, 5, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728865499000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728894301000, 6, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728865501000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1728894305000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1728865505000.jpg', '', 0, '');
INSERT INTO `attendancerecordinfo` (`PersonID`, `PersonName`, `PerSonCardNo`, `AttendanceDateTime`, `AttendanceState`, `AttendanceMethod`, `DeviceIPAddress`, `DeviceName`, `SnapshotsPath`, `Handler`, `AttendanceUtcTime`, `Remarks`) VALUES
('2040258', 'JAKE NAPAY', '', 1729049919000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729021119000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729049920000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729021120000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729049923000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729021123000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729049927000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729021127000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729072437000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729043637000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729072440000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729043640000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729072441000, 5, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729043641000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729072444000, 6, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729043644000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729149899000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729121099000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729149903000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729121103000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729149904000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729121104000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729149909000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729121109000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729149913000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729121113000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729149925000, 5, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729121125000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729149927000, 6, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729121127000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729149938000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729121138000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729152502000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729123702000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729152504000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729123704000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729152505000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729123705000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729152506000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729123706000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729152507000, 5, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729123707000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729152520000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729123720000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729230907000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729202107000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729230910000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729202110000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729230920000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729202120000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729246644000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729217844000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729246646000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729217846000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729246648000, 5, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729217848000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729246649000, 6, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729217849000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729246657000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729217857000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729479495000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729450695000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729479497000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729450697000.jpg', '', 0, ''),
('2040258', 'JAKE NAPAY', '', 1729479500000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040258_1729450700000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728378872000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728350072000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728378877000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728350077000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728378880000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728350080000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728378881000, 5, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728350081000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728378884000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728350084000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728378911000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728350111000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728378917000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728350117000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728378919000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728350119000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728380765000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728351965000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728380780000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728351980000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728380782000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728351982000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728380783000, 5, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728351983000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728380784000, 6, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728351984000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728380785000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728351985000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728380787000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728351987000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728380797000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728351997000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728380837000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728352037000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728380840000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728352040000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728380847000, 0, 15, '192.168.1.108', '192.168.1.108', '', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728380924000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728352124000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728441380000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728412580000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728441384000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728412584000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728441386000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728412586000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728441397000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728412597000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728454464000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728425664000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728454475000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728425675000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728454490000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728425690000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728454575000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728425775000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728454596000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728425796000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728454598000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728425798000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728454600000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728425800000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728454603000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728425803000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728454604000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728425804000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728454644000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728425844000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728454655000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728425855000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728454665000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728425865000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728454676000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728425876000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728455712000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728426912000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728455788000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728426988000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728456484000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728427684000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728456611000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728427811000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728457181000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728428381000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728457254000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728428454000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728457265000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728428465000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728457409000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728428609000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728458034000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728429234000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728458084000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728429284000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728526144000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728497344000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728526149000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728497349000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728534010000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728505210000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728534021000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728505221000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728538596000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728509796000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728538606000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728509806000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728543568000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728514768000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728559043000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728530243000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728562888000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728534088000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728615387000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728586587000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728615828000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728587028000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728615838000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728587038000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728877387000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728848587000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728877402000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728848602000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728877404000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728848604000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728888333000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728859533000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728888337000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728859537000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728888348000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728859548000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728894308000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728865508000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728894311000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728865511000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1728894321000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1728865521000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729043589000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729014789000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729044099000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729015299000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729044917000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729016117000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729044928000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729016128000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729049899000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729021099000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729049904000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729021104000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729049907000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729021107000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729049916000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729021116000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729065687000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729036887000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729065723000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729036923000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729072517000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729043717000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729081302000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729052502000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729126674000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729097874000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729127079000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729098279000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729138069000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729109269000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729138075000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729109275000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729138524000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729109724000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729138525000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729109725000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729138536000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729109736000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729143017000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729114217000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729149923000, 6, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729121123000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729154570000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729125770000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729154573000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729125773000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729223621000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729194821000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729227683000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729198883000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729227685000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729198885000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729227687000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729198887000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729227688000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729198888000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729227699000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729198899000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729244704000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729215904000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1729246639000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1729217839000.jpg', '', 0, ''),
('2040262', 'MARK OFLEAR', '', 1730273578000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040262_1730244778000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728380908000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728352108000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728380910000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728352110000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728380914000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728352114000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728435473000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728406673000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728435477000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728406677000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728435479000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728406679000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728435483000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728406683000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728454614000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728425814000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728455621000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728426821000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728455623000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728426823000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728455625000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728426825000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728455626000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728426826000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728455628000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728426828000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728455637000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728426837000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728455648000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728426848000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728457053000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728428253000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728457058000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728428258000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728457065000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728428265000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728526152000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728497352000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728526154000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728497354000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728544161000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728515361000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728553878000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728525078000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728556178000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728527378000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728598361000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728569561000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728598363000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728569563000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728598374000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728569574000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728620859000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728592059000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728620864000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728592064000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1728630227000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1728601427000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1729039053000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1729010253000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1729049929000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1729021129000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1729049933000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1729021133000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1729049938000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1729021138000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1729049950000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1729021150000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1729051185000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1729022385000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1729051199000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1729022399000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1729056984000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1729028184000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1729072448000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1729043648000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1729072453000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1729043653000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1729130658000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1729101858000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1729149881000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1729121081000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1729149886000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1729121086000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1729149888000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1729121088000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1729149891000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1729121091000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1729149893000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1729121093000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1729149919000, 5, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1729121119000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1729154558000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1729125758000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1729154561000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1729125761000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1729154563000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1729125763000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1729154565000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1729125765000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1729308561000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1729279761000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1729308571000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1729279771000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1729321835000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1729293035000.jpg', '', 0, ''),
('2040265', 'ALDREN PALERO', '', 1730273575000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040265_1730244775000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1728459385000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1728430585000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1728459387000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1728430587000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1728459389000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1728430589000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1728459390000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1728430590000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1728459400000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1728430600000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1728464243000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1728435443000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1728464254000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1728435454000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1728466081000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1728437281000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1728466097000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1728437297000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1728634294000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1728605494000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1728866271000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1728837471000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1728878920000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1728850120000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1728878931000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1728850131000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1729050767000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1729021967000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1729125496000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1729096696000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1729125508000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1729096708000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1729139274000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1729110474000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1729139281000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1729110481000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1729139288000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1729110488000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1729139298000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1729110498000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1729139392000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1729110592000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1729153306000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1729124506000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1729216158000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1729187358000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1729218198000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1729189398000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1729218204000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1729189404000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1729218217000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1729189417000.jpg', '', 0, ''),
('2040376', 'JASON SADAYA', '', 1729480410000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040376_1729451610000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1728459332000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1728430532000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1728459337000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1728430537000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1728459339000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1728430539000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1728459344000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1728430544000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1728459351000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1728430551000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1728520409000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1728491609000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1728520420000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1728491620000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1728533166000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1728504366000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1728533170000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1728504370000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1728554316000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1728525516000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1728554319000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1728525519000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1728633343000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1728604543000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1728638137000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1728609337000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1728638148000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1728609348000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1728695313000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1728666513000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1728695324000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1728666524000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1728706283000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1728677483000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1728706295000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1728677495000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1728709476000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1728680676000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1728709487000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1728680687000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1728725480000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1728696680000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729038126000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729009326000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729038137000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729009337000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729051915000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729023115000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729051926000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729023126000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729071702000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729042902000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729071707000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729042907000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729129590000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729100790000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729129601000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729100801000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729138577000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729109777000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729138589000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729109789000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729140374000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729111574000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729140386000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729111586000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729155641000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729126841000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729155651000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729126851000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729210912000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729182112000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729210923000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729182123000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729225317000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729196517000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729225328000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729196528000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729227666000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729198866000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729227678000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729198878000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729243895000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729215095000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729243906000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729215106000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729244484000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729215684000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729299157000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729270357000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729299196000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729270396000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729299200000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729270400000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729313628000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729284828000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729313631000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729284831000.jpg', '', 0, '');
INSERT INTO `attendancerecordinfo` (`PersonID`, `PersonName`, `PerSonCardNo`, `AttendanceDateTime`, `AttendanceState`, `AttendanceMethod`, `DeviceIPAddress`, `DeviceName`, `SnapshotsPath`, `Handler`, `AttendanceUtcTime`, `Remarks`) VALUES
('2040383', 'MARK JONATHAN REYTOS', '', 1729313638000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729284838000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729327126000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729298326000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729327137000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729298337000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729473117000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729444317000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729473128000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729444328000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729479685000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729450885000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729483536000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729454736000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729485682000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729456882000.jpg', '', 0, ''),
('2040383', 'MARK JONATHAN REYTOS', '', 1729485692000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_2040383_1729456892000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728435513000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728406713000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728455655000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728426855000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728455660000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728426860000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728455671000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728426871000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728455693000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728426893000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728455701000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728426901000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728455861000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728427061000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728455873000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728427073000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728456289000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728427489000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728456585000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728427785000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728473679000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728444879000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728473688000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728444888000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728525866000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728497066000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728525876000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728497076000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728534621000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728505821000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728534632000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728505832000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728534690000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728505890000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728534701000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728505901000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728534703000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728505903000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728534706000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728505906000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728534760000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728505960000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728534782000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728505982000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728534793000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728505993000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728549658000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728520858000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728552555000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728523755000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728617885000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728589085000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728618138000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728589338000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728618149000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728589349000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728620843000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728592043000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728620847000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728592047000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728638025000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728609225000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728638035000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728609235000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728638061000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728609261000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728638072000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728609272000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728695256000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728666456000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728695268000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728666468000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728705600000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728676800000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728705604000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728676804000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728706814000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728678014000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728706824000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728678024000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728711426000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728682626000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728724062000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728695262000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728724072000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728695272000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728724662000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728695862000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728961144000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728932344000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728961156000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728932356000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728964015000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728935215000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728964119000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728935319000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728970462000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728941662000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728979286000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728950486000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1728979292000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1728950492000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729043593000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729014793000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729044848000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729016048000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729051564000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729022764000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729051569000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729022769000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729056108000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729027308000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729057040000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729028240000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729069852000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729041052000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729069863000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729041063000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729125261000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729096461000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729125270000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729096470000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729131318000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729102518000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729140843000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729112043000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729140851000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729112051000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729140862000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729112062000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729141217000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729112417000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729142226000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729113426000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729158191000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729129391000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729214957000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729186157000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729214967000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729186167000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729218440000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729189640000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729228829000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729200029000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729228831000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729200031000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729228842000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729200042000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729239791000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729210991000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729242240000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729213440000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729242250000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729213450000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729299210000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729270410000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729299221000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729270421000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729310231000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729281431000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729310242000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729281442000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729312812000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729284012000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729313645000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729284845000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729315503000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729286703000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729315513000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729286713000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729326895000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729298095000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729326901000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729298101000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729474352000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729445552000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729474362000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729445562000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729476034000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729447234000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729483602000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729454802000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729483608000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729454808000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729486714000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729457914000.jpg', '', 0, ''),
('21202175M', 'JOHN DANE CASTRENCE', '', 1729487079000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202175M_1729458279000.jpg', '', 0, ''),
('21202203M', 'JOHN PAUL ILUSTRISIMO', '', 1728435517000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202203M_1728406717000.jpg', '', 0, ''),
('21202203M', 'JOHN PAUL ILUSTRISIMO', '', 1728455630000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202203M_1728426830000.jpg', '', 0, ''),
('21202203M', 'JOHN PAUL ILUSTRISIMO', '', 1728455742000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202203M_1728426942000.jpg', '', 0, ''),
('21202203M', 'JOHN PAUL ILUSTRISIMO', '', 1728456456000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202203M_1728427656000.jpg', '', 0, ''),
('21202203M', 'JOHN PAUL ILUSTRISIMO', '', 1728456551000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202203M_1728427751000.jpg', '', 0, ''),
('21202203M', 'JOHN PAUL ILUSTRISIMO', '', 1728456567000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202203M_1728427767000.jpg', '', 0, ''),
('21202203M', 'JOHN PAUL ILUSTRISIMO', '', 1728459306000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202203M_1728430506000.jpg', '', 0, ''),
('21202203M', 'JOHN PAUL ILUSTRISIMO', '', 1728459308000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202203M_1728430508000.jpg', '', 0, ''),
('21202203M', 'JOHN PAUL ILUSTRISIMO', '', 1728459319000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202203M_1728430519000.jpg', '', 0, ''),
('21202203M', 'JOHN PAUL ILUSTRISIMO', '', 1728473699000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202203M_1728444899000.jpg', '', 0, ''),
('21202203M', 'JOHN PAUL ILUSTRISIMO', '', 1728473703000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202203M_1728444903000.jpg', '', 0, ''),
('21202203M', 'JOHN PAUL ILUSTRISIMO', '', 1728520429000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202203M_1728491629000.jpg', '', 0, ''),
('21202203M', 'JOHN PAUL ILUSTRISIMO', '', 1728520440000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202203M_1728491640000.jpg', '', 0, ''),
('21202203M', 'JOHN PAUL ILUSTRISIMO', '', 1728551979000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202203M_1728523179000.jpg', '', 0, ''),
('21202203M', 'JOHN PAUL ILUSTRISIMO', '', 1728551990000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202203M_1728523190000.jpg', '', 0, ''),
('21202203M', 'JOHN PAUL ILUSTRISIMO', '', 1728637512000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202203M_1728608712000.jpg', '', 0, ''),
('21202203M', 'JOHN PAUL ILUSTRISIMO', '', 1728637523000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202203M_1728608723000.jpg', '', 0, ''),
('21202203M', 'JOHN PAUL ILUSTRISIMO', '', 1729158164000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202203M_1729129364000.jpg', '', 0, ''),
('21202203M', 'JOHN PAUL ILUSTRISIMO', '', 1729218805000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202203M_1729190005000.jpg', '', 0, ''),
('21202203M', 'JOHN PAUL ILUSTRISIMO', '', 1729218808000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202203M_1729190008000.jpg', '', 0, ''),
('21202203M', 'JOHN PAUL ILUSTRISIMO', '', 1729228155000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202203M_1729199355000.jpg', '', 0, ''),
('21202203M', 'JOHN PAUL ILUSTRISIMO', '', 1729242308000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202203M_1729213508000.jpg', '', 0, ''),
('21202203M', 'JOHN PAUL ILUSTRISIMO', '', 1729242311000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202203M_1729213511000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1728435506000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1728406706000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1728459286000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1728430486000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1728459292000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1728430492000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1728465714000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1728436914000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1728465716000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1728436916000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1728465720000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1728436920000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1728473727000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1728444927000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1728545695000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1728516895000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1728545706000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1728516906000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1728545767000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1728516967000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1728545778000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1728516978000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1728552547000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1728523747000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1728552551000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1728523751000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1728552581000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1728523781000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1728552591000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1728523791000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1728612014000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1728583214000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1728612016000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1728583216000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1728638493000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1728609693000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1728638504000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1728609704000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1729039422000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1729010622000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1729039432000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1729010632000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1729051584000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1729022784000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1729066579000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1729037779000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1729070130000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1729041330000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1729070141000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1729041341000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1729232693000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1729203893000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1729232704000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1729203904000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1729242318000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1729213518000.jpg', '', 0, ''),
('21202216M', 'JAYSON LARIBA', '', 1729242329000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202216M_1729213529000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1728525402000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1728496602000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1728534333000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1728505533000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1728534340000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1728505540000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1728534351000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1728505551000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1728534822000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1728506022000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1728539825000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1728511025000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1728539832000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1728511032000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1728552573000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1728523773000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1728638129000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1728609329000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1728638135000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1728609335000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1728695286000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1728666486000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1728695298000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1728666498000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1728705609000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1728676809000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1728706796000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1728677996000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1728706807000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1728678007000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1728724668000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1728695868000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1728957502000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1728928702000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1728957513000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1728928713000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1728961180000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1728932380000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1728961191000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1728932391000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1728961199000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1728932399000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1728979295000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1728950495000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1728979299000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1728950499000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1729043596000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1729014796000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1729051580000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1729022780000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1729051595000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1729022795000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1729051603000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1729022803000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1729053835000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1729025035000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1729053842000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1729025042000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1729069867000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1729041067000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1729126860000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1729098060000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1729126865000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1729098065000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1729138294000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1729109494000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1729138304000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1729109504000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1729140865000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1729112065000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1729140877000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1729112077000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1729158156000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1729129356000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1729218819000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1729190019000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1729228167000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1729199367000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1729228171000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1729199371000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1729242297000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1729213497000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1729474440000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1729445640000.jpg', '', 0, ''),
('21202220M', 'AUBREY LEPON', '', 1729474451000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202220M_1729445651000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1728431495000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1728402695000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1728431498000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1728402698000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1728606309000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1728577509000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1728606321000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1728577521000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1728617934000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1728589134000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1728617942000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1728589142000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1728617968000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1728589168000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1728626712000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1728597912000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1728626843000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1728598043000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1728637469000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1728608669000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1729126279000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1729097479000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1729129227000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1729100427000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1729129231000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1729100431000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1729141182000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1729112382000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1729141186000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1729112386000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1729141190000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1729112390000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1729141194000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1729112394000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1729143180000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1729114380000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1729143183000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1729114383000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1729143193000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1729114393000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1729155079000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1729126279000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1729155083000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1729126283000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1729155094000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1729126294000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1729216702000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1729187902000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1729216705000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1729187905000.jpg', '', 0, ''),
('21202223M', 'DOMINIC CYRIL MENDOZA', '', 1729232689000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21202223M_1729203889000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1728435480000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1728406680000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1728435486000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1728406686000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1728435488000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1728406688000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1728459279000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1728430479000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1728459282000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1728430482000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1728459284000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1728430484000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1728473708000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1728444908000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1728519023000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1728490223000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1728522611000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1728493811000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1728534717000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1728505917000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1728534775000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1728505975000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1728552222000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1728523422000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1728552233000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1728523433000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1728606328000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1728577528000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1728617947000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1728589147000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1728626716000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1728597916000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1728626727000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1728597927000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1728638049000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1728609249000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1728638403000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1728609603000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1729129199000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1729100399000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1729129210000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1729100410000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1729141175000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1729112375000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1729141178000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1729112378000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1729143205000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1729114405000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1729145198000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1729116398000.jpg', '', 0, ''),
('21204413M', 'PAULIE JULES DAVID', '', 1729158166000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204413M_1729129366000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728431509000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728402709000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728459294000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728430494000.jpg', '', 0, '');
INSERT INTO `attendancerecordinfo` (`PersonID`, `PersonName`, `PerSonCardNo`, `AttendanceDateTime`, `AttendanceState`, `AttendanceMethod`, `DeviceIPAddress`, `DeviceName`, `SnapshotsPath`, `Handler`, `AttendanceUtcTime`, `Remarks`) VALUES
('21204449M', 'GUIANA MAGCALAYO', '', 1728459296000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728430496000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728459301000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728430501000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728461050000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728432250000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728461060000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728432260000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728473713000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728444913000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728534311000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728505511000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728534317000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728505517000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728534328000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728505528000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728539842000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728511042000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728552569000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728523769000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728638038000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728609238000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728638044000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728609244000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728638057000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728609257000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728638099000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728609299000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728638124000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728609324000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728638335000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728609535000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728688933000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728660133000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728688944000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728660144000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728705612000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728676812000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728706788000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728677988000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728724613000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728695813000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728724673000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728695873000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728961202000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728932402000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1728961213000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1728932413000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1729043604000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1729014804000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1729053852000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1729025052000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1729069873000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1729041073000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1729069884000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1729041084000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1729126876000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1729098076000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1729138329000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1729109529000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1729138340000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1729109540000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1729141199000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1729112399000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1729158148000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1729129348000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1729158154000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1729129354000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1729228173000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1729199373000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1729228184000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1729199384000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1729242295000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1729213495000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1729299237000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1729270437000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1729299248000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1729270448000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1729309902000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1729281102000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1729309913000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1729281113000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1729313649000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1729284849000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1729313659000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1729284859000.jpg', '', 0, ''),
('21204449M', 'GUIANA MAGCALAYO', '', 1729326916000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204449M_1729298116000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1728433754000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1728404954000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1728435501000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1728406701000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1728459194000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1728430394000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1728459219000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1728430419000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1728459246000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1728430446000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1728459252000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1728430452000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1728459258000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1728430458000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1728459269000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1728430469000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1728461752000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1728432952000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1728473720000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1728444920000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1728520365000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1728491565000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1728520376000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1728491576000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1728522601000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1728493801000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1728534772000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1728505972000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1728534779000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1728505979000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1728547857000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1728519057000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1728554102000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1728525302000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1728554113000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1728525313000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1728598336000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1728569536000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1728598347000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1728569547000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1728617898000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1728589098000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1728638489000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1728609689000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1728638492000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1728609692000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1729216709000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1729187909000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1729224226000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1729195426000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1729224238000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1729195438000.jpg', '', 0, ''),
('21204555M', 'CHESTER KEITH VIZMANOS', '', 1729229377000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21204555M_1729200577000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1728473692000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1728444892000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1728473697000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1728444897000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1728520448000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1728491648000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1728520458000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1728491658000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1728525373000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1728496573000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1728552560000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1728523760000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1728552565000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1728523765000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1728617859000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1728589059000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1728617864000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1728589064000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1728617872000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1728589072000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1728617878000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1728589078000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1728617909000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1728589109000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1728617919000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1728589119000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1728617949000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1728589149000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1728617957000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1728589157000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1728620851000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1728592051000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1728620856000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1728592056000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1728638374000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1728609574000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1728638386000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1728609586000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729039032000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729010232000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729039043000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729010243000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729044915000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729016115000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729051573000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729022773000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729056103000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729027303000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729056119000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729027319000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729069889000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729041089000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729069900000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729041100000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729125274000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729096474000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729140099000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729111299000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729140111000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729111311000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729158157000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729129357000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729158158000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729129358000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729158161000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729129361000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729216712000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729187912000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729216723000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729187923000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729228150000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729199350000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729228161000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729199361000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729228165000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729199365000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729242291000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729213491000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729242299000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729213499000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729242300000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729213500000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729242307000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729213507000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729309918000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729281118000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729309923000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729281123000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729309934000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729281134000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729315665000, 3, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729286865000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729315678000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729286878000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729326903000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729298103000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729326905000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729298105000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729474364000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729445564000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729474374000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729445574000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729483613000, 2, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729454813000.jpg', '', 0, ''),
('21205302M', 'CLARENCE VENDERO', '', 1729483624000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21205302M_1729454824000.jpg', '', 0, ''),
('21800668M', 'HANNA GRACE MACADANGDANG', '', 1729054484000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_21800668M_1729025684000.jpg', '', 0, ''),
('951PT', 'CESAR M. EVANGELISTA', '', 1730254383000, 0, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_951PT_1730225583000.jpg', '', 0, ''),
('951PT', 'CESAR M. EVANGELISTA', '', 1730254386000, 1, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_951PT_1730225586000.jpg', '', 0, ''),
('951PT', 'CESAR M. EVANGELISTA', '', 1730254413000, 4, 15, '192.168.1.108', '192.168.1.108', 'C:/Users/Public/SmartPSSLite/Data/User/Picture/ACSEventPic/1_951PT_1730225613000.jpg', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `children_table`
--

CREATE TABLE `children_table` (
  `id` int(11) NOT NULL,
  `childrenFirstName` varchar(50) DEFAULT NULL,
  `childrenMiddleName` varchar(50) DEFAULT NULL,
  `childrenLastName` varchar(50) DEFAULT NULL,
  `childrenNameExtension` varchar(10) DEFAULT NULL,
  `dateOfBirth` varchar(255) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `incValue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `children_table`
--

INSERT INTO `children_table` (`id`, `childrenFirstName`, `childrenMiddleName`, `childrenLastName`, `childrenNameExtension`, `dateOfBirth`, `person_id`, `created_at`, `incValue`) VALUES
(1, 'JUSTINE', 'DE CHAVEZ', 'VELASQUEZ', 'N/A', '2004/01/11', 16566, '2025-04-04 08:58:18', 0),
(2, 'TRIXIE ANN', 'G', 'MORALES', 'N/A', '2003/01/04', 16566, '2025-04-04 08:58:24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `citizenship_table`
--

CREATE TABLE `citizenship_table` (
  `id` int(11) NOT NULL,
  `citizenship_description` varchar(100) DEFAULT NULL,
  `citizenshipType` varchar(50) DEFAULT NULL,
  `countryName` varchar(100) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `college_table`
--

CREATE TABLE `college_table` (
  `id` int(11) NOT NULL,
  `collegeNameOfSchool` varchar(100) DEFAULT NULL,
  `collegeDegree` varchar(100) DEFAULT NULL,
  `collegePeriodFrom` varchar(255) DEFAULT NULL,
  `collegePeriodTo` varchar(255) DEFAULT NULL,
  `collegeHighestAttained` varchar(100) DEFAULT NULL,
  `collegeYearGraduated` varchar(255) DEFAULT NULL,
  `collegeScholarshipAcademicHonorsReceived` varchar(255) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `college_table`
--

INSERT INTO `college_table` (`id`, `collegeNameOfSchool`, `collegeDegree`, `collegePeriodFrom`, `collegePeriodTo`, `collegeHighestAttained`, `collegeYearGraduated`, `collegeScholarshipAcademicHonorsReceived`, `person_id`, `created_at`) VALUES
(33, 'EARIST', 'COLLEGE', '2020', '2026', 'N/A', '2026', 'N/A', 16566, '2025-04-04 06:21:45'),
(35, 'dasd', 'dad', '2025', '2025', 'fghfg', '2025', 'ghjgh', 15, '2025-04-04 17:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `department_assignment`
--

CREATE TABLE `department_assignment` (
  `id` int(11) NOT NULL,
  `department_id` varchar(255) NOT NULL,
  `employeeID` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_assignment`
--

INSERT INTO `department_assignment` (`id`, `department_id`, `employeeID`, `created_at`) VALUES
(1, '1', '20134508', '2025-03-29 04:16:48');

-- --------------------------------------------------------

--
-- Table structure for table `department_table`
--

CREATE TABLE `department_table` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_table`
--

INSERT INTO `department_table` (`id`, `code`, `description`, `created_at`) VALUES
(1, '929292', 'CCS', '2025-03-29 04:17:23');

-- --------------------------------------------------------

--
-- Table structure for table `eligibility_table`
--

CREATE TABLE `eligibility_table` (
  `id` int(11) NOT NULL,
  `eligibilityName` varchar(100) DEFAULT NULL,
  `eligibilityRating` decimal(5,2) DEFAULT NULL,
  `eligibilityDateOfExam` varchar(255) DEFAULT NULL,
  `eligibilityPlaceOfExam` varchar(100) DEFAULT NULL,
  `licenseNumber` varchar(50) DEFAULT NULL,
  `DateOfValidity` varchar(255) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eligibility_table`
--

INSERT INTO `eligibility_table` (`id`, `eligibilityName`, `eligibilityRating`, `eligibilityDateOfExam`, `eligibilityPlaceOfExam`, `licenseNumber`, `DateOfValidity`, `person_id`, `created_at`) VALUES
(35, 'Eligibility F', 88.00, '2024-02-01', 'Phoenix', 'LN678901', '2025-02-01', 2, '2025-04-04 06:28:22'),
(36, 'Eligibility G', 75.00, '2024-03-10', 'Miami', 'LN789012', '2025-03-10', 2, '2025-04-04 06:28:22'),
(37, 'HAHA', 0.00, '2025-04-01', 'asdasda', '01412424', '2025-04-11', 5, '2025-04-04 10:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `employee_table`
--

CREATE TABLE `employee_table` (
  `employee_number` int(11) NOT NULL,
  `person_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `graduate_table`
--

CREATE TABLE `graduate_table` (
  `id` int(11) NOT NULL,
  `graduateNameOfSchool` varchar(200) NOT NULL,
  `graduateDegree` varchar(200) NOT NULL,
  `graduatePeriodFrom` varchar(50) NOT NULL,
  `graduatePeriodTo` varchar(50) NOT NULL,
  `graduateHighestAttained` varchar(200) NOT NULL,
  `graduatedYearGraduated` varchar(50) NOT NULL,
  `graduatedvocationalScholarshipAcademicHonorsReceived` varchar(200) NOT NULL,
  `person_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `graduate_table`
--

INSERT INTO `graduate_table` (`id`, `graduateNameOfSchool`, `graduateDegree`, `graduatePeriodFrom`, `graduatePeriodTo`, `graduateHighestAttained`, `graduatedYearGraduated`, `graduatedvocationalScholarshipAcademicHonorsReceived`, `person_id`) VALUES
(1, 'sdasdasdasd', 'asdadsad', '2004', '20006', 'hdjksdbadjas', '2008', 'sfsdfsdfsdfds', 2);

-- --------------------------------------------------------

--
-- Table structure for table `holidayandsuspension`
--

CREATE TABLE `holidayandsuspension` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `holidayandsuspension`
--

INSERT INTO `holidayandsuspension` (`id`, `description`, `date`, `status`, `created_at`) VALUES
(2, 'CCS', '2024-10-2', 'active', '2025-03-29 04:40:43');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`) VALUES
(2, '1212', '3333333'),
(3, '12212', '121212'),
(4, 'Dhani', 'EARIST'),
(5, 'Juan', 'Dela Cruz');

-- --------------------------------------------------------

--
-- Table structure for table `item_table`
--

CREATE TABLE `item_table` (
  `id` int(11) NOT NULL,
  `item_description` varchar(255) DEFAULT NULL,
  `employeeID` varchar(255) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `salary_grade` varchar(255) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item_table`
--

INSERT INTO `item_table` (`id`, `item_description`, `employeeID`, `item_code`, `salary_grade`, `dateCreated`) VALUES
(4, 'arden', '929293921', '8479380923854`', '4', '2025-03-29 04:58:29'),
(5, 'trix', '929293921', '8479380923854`', '4', '2025-03-29 05:12:43');

-- --------------------------------------------------------

--
-- Table structure for table `learning_and_development_table`
--

CREATE TABLE `learning_and_development_table` (
  `id` int(11) NOT NULL,
  `titleOfProgram` varchar(255) DEFAULT NULL,
  `dateFrom` varchar(200) DEFAULT NULL,
  `dateTo` varchar(200) DEFAULT NULL,
  `numberOfHours` int(11) DEFAULT NULL,
  `typeOfLearningDevelopment` varchar(100) DEFAULT NULL,
  `conductedSponsored` varchar(100) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `learning_and_development_table`
--

INSERT INTO `learning_and_development_table` (`id`, `titleOfProgram`, `dateFrom`, `dateTo`, `numberOfHours`, `typeOfLearningDevelopment`, `conductedSponsored`, `person_id`, `created_at`) VALUES
(1, 'dasdas', '2024-10-01', '2026-10-01', 80, 'hehe', 'n/a', 2, '2025-04-05 07:00:32'),
(2, 'FDSDFSD', '2026-10-01', '2028-10-07', 90, 'SASA', 'SA', 12, '2025-04-05 07:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `leave_assignment`
--

CREATE TABLE `leave_assignment` (
  `id` int(11) NOT NULL,
  `employeeID` int(11) NOT NULL,
  `leaveID` int(11) NOT NULL,
  `noOfLeaves` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_assignment`
--

INSERT INTO `leave_assignment` (`id`, `employeeID`, `leaveID`, `noOfLeaves`, `created_at`) VALUES
(2, 20134508, 1, 5, '2025-03-29 05:48:54');

-- --------------------------------------------------------

--
-- Table structure for table `leave_table`
--

CREATE TABLE `leave_table` (
  `id` int(11) NOT NULL,
  `leave_code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `number_hours` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_table`
--

INSERT INTO `leave_table` (`id`, `leave_code`, `description`, `number_hours`, `status`, `created_at`) VALUES
(1, '01', 'vacation', '24', 'active', '2025-03-29 04:51:50');

-- --------------------------------------------------------

--
-- Table structure for table `officialtime`
--

CREATE TABLE `officialtime` (
  `id` int(11) NOT NULL,
  `employeeID` varchar(20) DEFAULT NULL,
  `day` varchar(10) DEFAULT NULL,
  `officialTimeIN` varchar(12) DEFAULT NULL,
  `officialBreaktimeIN` varchar(12) DEFAULT NULL,
  `officialBreaktimeOUT` varchar(12) DEFAULT NULL,
  `officialTimeOUT` varchar(12) DEFAULT NULL,
  `officialHonorariumTimeIN` varchar(12) DEFAULT NULL,
  `officialHonorariumTimeOUT` varchar(12) DEFAULT NULL,
  `officialServiceCreditTimeIN` varchar(12) DEFAULT NULL,
  `officialServiceCreditTimeOUT` varchar(12) DEFAULT NULL,
  `officialOverTimeIN` varchar(12) DEFAULT NULL,
  `officialOverTimeOUT` varchar(12) DEFAULT NULL,
  `breaktime` varchar(12) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `officialtime`
--

INSERT INTO `officialtime` (`id`, `employeeID`, `day`, `officialTimeIN`, `officialBreaktimeIN`, `officialBreaktimeOUT`, `officialTimeOUT`, `officialHonorariumTimeIN`, `officialHonorariumTimeOUT`, `officialServiceCreditTimeIN`, `officialServiceCreditTimeOUT`, `officialOverTimeIN`, `officialOverTimeOUT`, `breaktime`, `timestamp`) VALUES
(66, '20134507', 'Monday', '08:00:00 AM', '12:00:00 PM', '01:00:00 PM', '05:00:00 PM', '06:00:00 PM', '09:00:00 PM', '06:00:00 PM', '09:00:00 PM', '05:30:00 PM', '09:00:00 PM', NULL, '2025-03-18 05:36:52'),
(67, '20134507', 'Tuesday', '07:00:00 AM', '11:30:00 AM', '02:00:00 PM', '05:00:00 PM', '05:30:00 PM', '09:00:00 PM', '06:00:00 PM', '09:00:00 PM', '06:00:00 PM', '09:00:00 PM', NULL, '2025-03-20 04:00:53'),
(68, '20134507', 'Wednesday', '08:00:00 AM', '01:00:00 PM', '02:00:00 PM', '05:00:00 PM', '05:30:00 PM', '09:00:00 PM', '06:00:00 PM', '09:00:00 PM', '05:30:00 PM', '09:00:00 PM', NULL, '2025-03-20 04:00:57'),
(69, '20134507', 'Thursday', '07:00:00 AM', '12:00:00 PM', '01:00:00 PM', '04:00:00 PM', '05:30:00 PM', '09:00:00 PM', '00:00:00 AM', '00:00:00 AM', '06:00:00 PM', '09:00:00 PM', NULL, '2025-03-18 05:37:08'),
(70, '20134507', 'Friday', '00:00:00 AM', '00:00:00 AM', '02:00:00 PM', '00:00:00 AM', '05:30:00 PM', '09:00:00 PM', '05:30:00 PM', '09:00:00 PM', '06:00:00 PM', '09:00:00 PM', NULL, '2025-03-20 04:01:00'),
(71, '20134507', 'Saturday', '00:00:00 AM', '00:00:00 AM', '02:00:00 PM', '00:00:00 AM', '05:30:00 PM', '09:00:00 PM', '00:00:00 AM', '00:00:00 AM', '06:00:00 PM', '09:00:00 PM', NULL, '2025-03-20 04:01:06'),
(72, '20134507', 'Sunday', '00:00:00 AM', '00:00:00 AM', '02:00:00 PM', '00:00:00 AM', '05:30:00 PM', '09:00:00 PM', '00:00:00 AM', '00:00:00 AM', '06:00:00 PM', '09:00:00 PM', NULL, '2025-03-20 04:01:08');

-- --------------------------------------------------------

--
-- Table structure for table `official_time_table`
--

CREATE TABLE `official_time_table` (
  `id` int(11) NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `day` date DEFAULT NULL,
  `official_time_in` time DEFAULT NULL,
  `official_break_time_in` time DEFAULT NULL,
  `official_break_time_out` time DEFAULT NULL,
  `official_time_out` time DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `other_information_table`
--

CREATE TABLE `other_information_table` (
  `id` int(11) NOT NULL,
  `specialSkills` varchar(255) DEFAULT NULL,
  `nonAcademicDistinctions` varchar(255) DEFAULT NULL,
  `membershipInAssociation` varchar(255) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `other_information_table`
--

INSERT INTO `other_information_table` (`id`, `specialSkills`, `nonAcademicDistinctions`, `membershipInAssociation`, `person_id`, `created_at`) VALUES
(1, 'hehe', 'hehe', 'hehehefghfghf', 2, '2025-04-05 06:52:49'),
(2, 'sfsad', 'dad', 'ad', 3, '2025-04-05 06:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `overall_attendance_record`
--

CREATE TABLE `overall_attendance_record` (
  `id` int(11) NOT NULL,
  `personID` varchar(255) DEFAULT NULL,
  `startDate` varchar(255) NOT NULL,
  `endDate` varchar(255) NOT NULL,
  `totalRenderedTimeMorning` varchar(255) NOT NULL,
  `totalRenderedTimeMorningTardiness` varchar(255) DEFAULT NULL,
  `totalRenderedTimeAfternoon` varchar(255) DEFAULT NULL,
  `totalRenderedTimeAfternoonTardiness` varchar(255) DEFAULT NULL,
  `totalRenderedHonorarium` varchar(255) DEFAULT NULL,
  `totalRenderedHonorariumTardiness` varchar(255) DEFAULT NULL,
  `totalRenderedServiceCredit` varchar(255) DEFAULT NULL,
  `totalRenderedServiceCreditTardiness` varchar(255) DEFAULT NULL,
  `totalRenderedOvertime` varchar(255) DEFAULT NULL,
  `totalRenderedOvertimeTardiness` varchar(255) DEFAULT NULL,
  `overallRenderedOfficialTime` varchar(255) DEFAULT NULL,
  `overallRenderedOfficialTimeTardiness` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `overall_attendance_record`
--

INSERT INTO `overall_attendance_record` (`id`, `personID`, `startDate`, `endDate`, `totalRenderedTimeMorning`, `totalRenderedTimeMorningTardiness`, `totalRenderedTimeAfternoon`, `totalRenderedTimeAfternoonTardiness`, `totalRenderedHonorarium`, `totalRenderedHonorariumTardiness`, `totalRenderedServiceCredit`, `totalRenderedServiceCreditTardiness`, `totalRenderedOvertime`, `totalRenderedOvertimeTardiness`, `overallRenderedOfficialTime`, `overallRenderedOfficialTimeTardiness`) VALUES
(5, '20134507', '2024-10-01', '2024-10-31', '07:46:27', '38:43:33', '07:28:14', '25:31:46', '06:45:19', '26:44:41', '01:43:11', '19:16:49', '06:28:04', '26:31:56', '15:14:41', '64:15:19'),
(6, '20134507', '2024-10-01', '2024-10-31', '08:24:09', '38:05:51', '20:33:40', '12:26:20', '06:45:19', '26:44:41', '01:43:11', '19:16:49', '06:28:04', '26:31:56', '28:57:49', '50:32:11'),
(7, '20134507', '2024-10-01', '2024-10-31', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '06:45:19', '26:44:41', '01:43:11', '19:16:49', '06:28:04', '26:31:56', '32:16:54', '58:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `page_access`
--

CREATE TABLE `page_access` (
  `id` int(11) NOT NULL,
  `page_privilege` tinyint(1) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_table`
--

CREATE TABLE `page_table` (
  `id` int(11) NOT NULL,
  `page_description` varchar(255) NOT NULL,
  `page_group` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `rateNbc188` varchar(255) DEFAULT NULL,
  `nbc594` varchar(255) DEFAULT NULL,
  `increment` varchar(255) DEFAULT NULL,
  `grossSalary` varchar(255) DEFAULT NULL,
  `abs` varchar(255) DEFAULT NULL,
  `d` varchar(255) DEFAULT NULL,
  `h` varchar(255) DEFAULT NULL,
  `m` varchar(255) DEFAULT NULL,
  `netSalary` varchar(255) DEFAULT NULL,
  `withholdingTax` varchar(255) DEFAULT NULL,
  `totalGsisDeds` varchar(255) DEFAULT NULL,
  `totalPagibigDeds` varchar(255) DEFAULT NULL,
  `philhealth` varchar(255) DEFAULT NULL,
  `totalOtherDeds` varchar(255) DEFAULT NULL,
  `totalDeductions` varchar(255) DEFAULT NULL,
  `pay1st` varchar(255) DEFAULT NULL,
  `pay2nd` varchar(255) DEFAULT NULL,
  `rtIns` varchar(255) DEFAULT NULL,
  `ec` varchar(255) DEFAULT NULL,
  `pagibig` varchar(255) DEFAULT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`id`, `name`, `position`, `rateNbc188`, `nbc594`, `increment`, `grossSalary`, `abs`, `d`, `h`, `m`, `netSalary`, `withholdingTax`, `totalGsisDeds`, `totalPagibigDeds`, `philhealth`, `totalOtherDeds`, `totalDeductions`, `pay1st`, `pay2nd`, `rtIns`, `ec`, `pagibig`, `dateCreated`) VALUES
(1, 'Joao', 'Instructor', '1', '1', '1000', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '100', '3', '2025-03-29 06:30:25'),
(2, 'wow', 'Instructor', '1', '1', '1000', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '100', '1', '2025-03-29 06:30:25'),
(3, 'nice', 'Instructor', '1', '1', '1000', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '100', '1', '2025-03-29 06:30:42');

-- --------------------------------------------------------

--
-- Table structure for table `person_table`
--

CREATE TABLE `person_table` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `middleName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `civilStatus` varchar(20) DEFAULT NULL,
  `heightCm` decimal(10,2) DEFAULT NULL,
  `weightKg` decimal(5,2) DEFAULT NULL,
  `bloodType` varchar(3) DEFAULT NULL,
  `gsisNum` varchar(20) DEFAULT NULL,
  `pagibigNum` varchar(20) DEFAULT NULL,
  `philhealthNum` varchar(20) DEFAULT NULL,
  `sssNum` varchar(20) DEFAULT NULL,
  `tinNum` varchar(20) DEFAULT NULL,
  `agencyEmployeeNum` varchar(20) DEFAULT NULL,
  `houseBlockLotNum` varchar(50) DEFAULT NULL,
  `streetName` varchar(100) DEFAULT NULL,
  `subdivisionOrVillage` varchar(100) DEFAULT NULL,
  `barangayName` varchar(100) DEFAULT NULL,
  `cityOrMunicipality` varchar(100) DEFAULT NULL,
  `provinceName` varchar(100) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `mobileNum` varchar(15) DEFAULT NULL,
  `emailAddress` varchar(100) DEFAULT NULL,
  `spouseFirstName` varchar(50) DEFAULT NULL,
  `spouseMiddleName` varchar(50) DEFAULT NULL,
  `spouseLastName` varchar(50) DEFAULT NULL,
  `spouseNameExtension` varchar(10) DEFAULT NULL,
  `spouseOccupation` varchar(100) DEFAULT NULL,
  `spouseEmployerBusinessName` varchar(100) DEFAULT NULL,
  `spouseBusinessAddress` varchar(255) DEFAULT NULL,
  `spouseTelephone` varchar(15) DEFAULT NULL,
  `fatherFirstName` varchar(50) DEFAULT NULL,
  `fatherMiddleName` varchar(50) DEFAULT NULL,
  `fatherLastName` varchar(50) DEFAULT NULL,
  `fatherNameExtension` varchar(10) DEFAULT NULL,
  `motherMaidenFirstName` varchar(50) DEFAULT NULL,
  `motherMaidenMiddleName` varchar(50) DEFAULT NULL,
  `motherMaidenLastName` varchar(50) DEFAULT NULL,
  `elementaryNameOfSchool` varchar(100) DEFAULT NULL,
  `elementaryDegree` varchar(100) DEFAULT NULL,
  `elementaryPeriodFrom` year(4) DEFAULT NULL,
  `elementaryPeriodTo` year(4) DEFAULT NULL,
  `elementaryHighestAttained` varchar(100) DEFAULT NULL,
  `elementaryYearGraduated` year(4) DEFAULT NULL,
  `elementaryScholarshipAcademicHonorsReceived` varchar(255) DEFAULT NULL,
  `secondaryNameOfSchool` varchar(100) DEFAULT NULL,
  `secondaryDegree` varchar(100) DEFAULT NULL,
  `secondaryPeriodFrom` year(4) DEFAULT NULL,
  `secondaryPeriodTo` year(4) DEFAULT NULL,
  `secondaryHighestAttained` varchar(100) DEFAULT NULL,
  `secondaryYearGraduated` year(4) DEFAULT NULL,
  `secondaryScholarshipAcademicHonorsReceived` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `person_table`
--

INSERT INTO `person_table` (`id`, `firstName`, `middleName`, `lastName`, `birthDate`, `civilStatus`, `heightCm`, `weightKg`, `bloodType`, `gsisNum`, `pagibigNum`, `philhealthNum`, `sssNum`, `tinNum`, `agencyEmployeeNum`, `houseBlockLotNum`, `streetName`, `subdivisionOrVillage`, `barangayName`, `cityOrMunicipality`, `provinceName`, `zipcode`, `telephone`, `mobileNum`, `emailAddress`, `spouseFirstName`, `spouseMiddleName`, `spouseLastName`, `spouseNameExtension`, `spouseOccupation`, `spouseEmployerBusinessName`, `spouseBusinessAddress`, `spouseTelephone`, `fatherFirstName`, `fatherMiddleName`, `fatherLastName`, `fatherNameExtension`, `motherMaidenFirstName`, `motherMaidenMiddleName`, `motherMaidenLastName`, `elementaryNameOfSchool`, `elementaryDegree`, `elementaryPeriodFrom`, `elementaryPeriodTo`, `elementaryHighestAttained`, `elementaryYearGraduated`, `elementaryScholarshipAcademicHonorsReceived`, `secondaryNameOfSchool`, `secondaryDegree`, `secondaryPeriodFrom`, `secondaryPeriodTo`, `secondaryHighestAttained`, `secondaryYearGraduated`, `secondaryScholarshipAcademicHonorsReceived`, `created_at`) VALUES
(1, 'Mary', 'Coaoaoa', 'Smith', '2002-01-30', 'Single', 1.71, 70.50, 'A+', '123456789012', '08080808080808', '07070707070707', '0606060606060606', '456123789654', '20134508', '12', 'NONE', 'Sunshine Village', 'Barangay 1', 'Springfield', 'Metro Manila', '1100', '1234567890', '09123456789', 'trese@gmail.com', 'Mary', 'Coaoaoa', 'Smith', 'None', 'Engineer', '1', '1', '2345678901', 'None', 'None', 'None', 'Sr', 'Mary', 'Coaoaoa', 'Smith', 'Springfield Elementary', 'Basic Education', '1991', '1997', 'Primary Diploma', '1997', 'First Place in Science Fair', 'Springfield High', 'General Education', '1997', '2002', 'High School Diploma', '2001', 'Science Club President', '2025-04-04 06:18:46'),
(5, 'HANNA', 'NARZOLES', 'SARABIA', '2004-06-01', 'SINGLE', 1.51, 50.00, 'O+', '123', '123', '123', '123', '123', '16566', '245', 'GREGORIA DE JESUS', 'BAGONG BARRIO', '148', 'CALOOCAN', 'METRO MANILA', '1401', '09275649283', '09663122562', 'hannasarabia879@gmail.com', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'DELFIN ', 'MIRANO', 'Sarabia', 'N/A', 'EDITA', 'NARZOLES', 'SARABIA', 'BBES', 'ELEMENTARY', '2010', '2016', 'N/A', '2016', 'N/A', 'BBNHS', 'HIGH SCHOOL', '2016', '2020', 'N/A', '2020', 'N/A', '2025-04-05 11:07:33');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `employeeID` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `employeeID`, `firstName`, `middleName`, `lastName`) VALUES
(0, '20134507', 'DHANI', 'IGNACIO', 'SAN JOSE');

-- --------------------------------------------------------

--
-- Table structure for table `remittances`
--

CREATE TABLE `remittances` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `withHoldingTax` varchar(255) NOT NULL,
  `personalLifeRet` varchar(255) NOT NULL,
  `gsisSalarayLoan` varchar(255) NOT NULL,
  `gsisPolicyLoan` varchar(255) NOT NULL,
  `gfal` varchar(255) NOT NULL,
  `cpl` varchar(255) NOT NULL,
  `mpl` varchar(255) NOT NULL,
  `mplLite` varchar(255) NOT NULL,
  `emergencyLoan` varchar(255) NOT NULL,
  `totalGsisDeds` varchar(255) NOT NULL,
  `pagibigFundCont` varchar(255) NOT NULL,
  `pagibig2` varchar(255) NOT NULL,
  `multiPurpLoan` varchar(255) NOT NULL,
  `totalPagibigDeds` varchar(255) NOT NULL,
  `philhealth` varchar(255) NOT NULL,
  `disallowance` varchar(255) NOT NULL,
  `landbankSalaryLoan` varchar(255) NOT NULL,
  `earistCreditCoop` varchar(255) NOT NULL,
  `feu` varchar(255) NOT NULL,
  `mtslaSalaryLoan` varchar(255) NOT NULL,
  `savingAndLoan` varchar(255) NOT NULL,
  `totalOtherDeds` varchar(255) NOT NULL,
  `totalDeds` varchar(255) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `remittances`
--

INSERT INTO `remittances` (`id`, `name`, `withHoldingTax`, `personalLifeRet`, `gsisSalarayLoan`, `gsisPolicyLoan`, `gfal`, `cpl`, `mpl`, `mplLite`, `emergencyLoan`, `totalGsisDeds`, `pagibigFundCont`, `pagibig2`, `multiPurpLoan`, `totalPagibigDeds`, `philhealth`, `disallowance`, `landbankSalaryLoan`, `earistCreditCoop`, `feu`, `mtslaSalaryLoan`, `savingAndLoan`, `totalOtherDeds`, `totalDeds`, `dateCreated`) VALUES
(1, 'haha', '10000', '10000', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '14', '2025-03-29 06:34:38');

-- --------------------------------------------------------

--
-- Table structure for table `salary_grade_status`
--

CREATE TABLE `salary_grade_status` (
  `id` int(11) NOT NULL,
  `effectivityDate` varchar(255) NOT NULL,
  `step_number` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salary_grade_status`
--

INSERT INTO `salary_grade_status` (`id`, `effectivityDate`, `step_number`, `status`, `created_at`) VALUES
(1, '01:41:07 PM', '7', '1', '2025-03-28 08:28:36'),
(2, '2025-03-04', '8', '0', '2025-03-28 08:30:10'),
(3, '2025-03-05', '3', '0', '2025-03-28 08:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `salary_grade_table`
--

CREATE TABLE `salary_grade_table` (
  `id` int(11) NOT NULL,
  `effectivityDate` varchar(255) NOT NULL,
  `sg_number` varchar(255) NOT NULL,
  `step1` varchar(255) NOT NULL,
  `step2` varchar(255) NOT NULL,
  `step3` varchar(255) NOT NULL,
  `step4` varchar(255) NOT NULL,
  `step5` varchar(255) NOT NULL,
  `step6` varchar(255) NOT NULL,
  `step7` varchar(255) NOT NULL,
  `step8` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salary_grade_table`
--

INSERT INTO `salary_grade_table` (`id`, `effectivityDate`, `sg_number`, `step1`, `step2`, `step3`, `step4`, `step5`, `step6`, `step7`, `step8`, `created_at`) VALUES
(1, '2000', '3', '1', '1', '1', '1', '1', '1700091', '1', '1', '2025-03-29 06:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `logo_url` varchar(255) DEFAULT NULL,
  `header_color` varchar(7) NOT NULL,
  `footer_text` text DEFAULT NULL,
  `footer_color` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `company_name`, `logo_url`, `header_color`, `footer_text`, `footer_color`) VALUES
(1, 'EARIST HUMAN RESOURCE INFORMATION SYSTEM', '/uploads/1740473366581.png', '#466e00', '2025 EARIST Management Information System. All Rights Reserved.', '#466e00');

-- --------------------------------------------------------

--
-- Table structure for table `term_table`
--

CREATE TABLE `term_table` (
  `id` int(11) NOT NULL,
  `term_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` enum('superadmin','administrator','staff') NOT NULL,
  `password` varchar(60) DEFAULT NULL,
  `employeeNumber` int(11) NOT NULL,
  `employmentCategory` tinyint(4) NOT NULL,
  `access_level` varchar(1111) DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `role`, `password`, `employeeNumber`, `employmentCategory`, `access_level`, `created_at`) VALUES
(28, 'ardenmecasio', 'ardenmecasio2@gmail.com', 'superadmin', '$2a$10$rALo9o/murxu.frsjUlehOdAh7kNKECVXJ7ntZ7lwPDwRmpuulm.C', 20134508, 1, 'superadmin', '2025-01-18 03:14:31'),
(30, 'ArdenMecasio123', 'Ardenmecasio21@gmail.com', 'administrator', '$2a$10$OUUKNgphVegaRtCtxsJKwun0rExqCHbz7JNsQuySZD/wTbDDQRyGG', 20134509, 0, 'user', '2025-01-23 12:48:18'),
(32, 'dhani', 'disanjose@gmail.com', 'administrator', '$2a$10$2J/5rLQ1t7lgoNKpxPv.ZOZr8JpnSM.g9PquAm5DE9VFWnMTgvR7u', 20134507, 0, 'user', '2025-03-04 00:43:08'),
(35, NULL, 'asasa@earist.edu.ph', 'administrator', '$2a$10$4Dgq5FKtyUp9zb3pl.6mdeP5fqgSEMienYF9Vjkxasb5K2tAaMCv6', 1232234, 0, 'user', '2025-03-10 05:23:36'),
(37, NULL, 'd@g.com', 'administrator', '$2a$10$gPD2By2g6sk26Zdlur3P..IdAE8wXCTzm0Jl3cj0iLT5Xd/2J1l6m', 4444444, 0, 'user', '2025-03-10 05:36:19'),
(38, 'staff', 'staff@gmail.com', 'staff', '$2a$10$JGde7m55SZMRXEh3hFfJtuvLUgq3g6B7SO8YWGdXCOEqSg6UmPmrC', 1, 0, 'user', '2025-03-29 03:32:31'),
(39, 'admin1', 'admin1@gmail.com', 'administrator', '$2a$10$F4Io11AZQODQ9OCcKkcO8ulzJhKoKjEvFLGKEn0sSX5irClhwxl52', 123456, 0, 'user', '2025-03-30 15:15:18'),
(40, 'hanapot', 'hannasarabia879@gmail.com', 'staff', '$2a$10$u3Gnk5B4/3kfiSCslX6t/eXt8RCmrmApEh6XPmYtsNQxEGRJDJzVm', 16566, 0, 'user', '2025-04-05 08:28:08');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `before_insert_users` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
  IF NEW.role = 'superadmin' THEN
    SET NEW.access_level = 'superadmin';
  ELSE
    SET NEW.access_level = 'user';
  END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_users` BEFORE UPDATE ON `users` FOR EACH ROW BEGIN
  IF NEW.role = 'superadmin' THEN
    SET NEW.access_level = 'superadmin';
  ELSE
    SET NEW.access_level = 'user';
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `vocational_table`
--

CREATE TABLE `vocational_table` (
  `id` int(11) NOT NULL,
  `vocationalNameOfSchool` varchar(100) DEFAULT NULL,
  `vocationalDegree` varchar(100) DEFAULT NULL,
  `vocationalPeriodFrom` varchar(255) DEFAULT NULL,
  `vocationalPeriodTo` varchar(255) DEFAULT NULL,
  `vocationalHighestAttained` varchar(100) DEFAULT NULL,
  `vocationalYearGraduated` varchar(255) DEFAULT NULL,
  `vocationalScholarshipAcademicHonorsReceived` varchar(200) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vocational_table`
--

INSERT INTO `vocational_table` (`id`, `vocationalNameOfSchool`, `vocationalDegree`, `vocationalPeriodFrom`, `vocationalPeriodTo`, `vocationalHighestAttained`, `vocationalYearGraduated`, `vocationalScholarshipAcademicHonorsReceived`, `person_id`, `created_at`) VALUES
(16, 'hehehe', 'asdasda', '2023', '2024', 'asdasdasdasdsa', '2025', 'ASDADAS', 2, '2025-04-04 06:25:55'),
(21, 'earist', '2002', '2002', '2004', '2', '2003', NULL, 1, '2025-04-04 09:47:28'),
(22, 'BBSHS', 'SENIOR HIGH', '2020', '2022', 'N/A', '2022', NULL, 16566, '2025-04-04 17:44:31');

-- --------------------------------------------------------

--
-- Table structure for table `voluntary_work_table`
--

CREATE TABLE `voluntary_work_table` (
  `id` int(11) NOT NULL,
  `nameAndAddress` varchar(255) DEFAULT NULL,
  `dateFrom` varchar(255) DEFAULT NULL,
  `dateTo` varchar(255) DEFAULT NULL,
  `numberOfHours` int(11) DEFAULT NULL,
  `natureOfWork` varchar(255) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voluntary_work_table`
--

INSERT INTO `voluntary_work_table` (`id`, `nameAndAddress`, `dateFrom`, `dateTo`, `numberOfHours`, `natureOfWork`, `person_id`, `created_at`) VALUES
(50, 'Senior Csdfsdsditizens Association, 12 Old Age Rd, Seniorville', '2017-08-01', '2018-08-01', 100, 'Socializisdasdasng and Events', 2, '2025-04-04 06:27:50'),
(51, 'HAHAHAHHA', '2025-03-31', '2025-04-12', 24, 'HAHAHA', 2, '2025-04-04 10:06:19'),
(52, 'sdfsdf', '2025-10-01', '2026-10-01', 80, 'dfsd', 2, '2025-04-05 07:55:48');

-- --------------------------------------------------------

--
-- Table structure for table `work_experience_table`
--

CREATE TABLE `work_experience_table` (
  `id` int(11) NOT NULL,
  `workDateFrom` varchar(50) DEFAULT NULL,
  `workDateTo` varchar(50) DEFAULT NULL,
  `workPositionTitle` varchar(100) DEFAULT NULL,
  `workCompany` varchar(100) DEFAULT NULL,
  `workMonthlySalary` decimal(10,2) DEFAULT NULL,
  `SalaryJobOrPayGrade` varchar(50) DEFAULT NULL,
  `StatusOfAppointment` varchar(50) DEFAULT NULL,
  `isGovtService` varchar(200) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `work_experience_table`
--

INSERT INTO `work_experience_table` (`id`, `workDateFrom`, `workDateTo`, `workPositionTitle`, `workCompany`, `workMonthlySalary`, `SalaryJobOrPayGrade`, `StatusOfAppointment`, `isGovtService`, `person_id`, `created_at`) VALUES
(2, '2024/10/01', '2025/10/31', 'PROFESSOR', 'EARIST', 14000.00, 'SG 4', 'HEHE', '', 4, '2025-04-05 06:02:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendancerecord`
--
ALTER TABLE `attendancerecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `children_table`
--
ALTER TABLE `children_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `college_table`
--
ALTER TABLE `college_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_assignment`
--
ALTER TABLE `department_assignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_table`
--
ALTER TABLE `department_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_column1` (`code`);

--
-- Indexes for table `eligibility_table`
--
ALTER TABLE `eligibility_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidayandsuspension`
--
ALTER TABLE `holidayandsuspension`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_table`
--
ALTER TABLE `item_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_and_development_table`
--
ALTER TABLE `learning_and_development_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_assignment`
--
ALTER TABLE `leave_assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leaveID` (`leaveID`);

--
-- Indexes for table `leave_table`
--
ALTER TABLE `leave_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_leave_code` (`leave_code`);

--
-- Indexes for table `officialtime`
--
ALTER TABLE `officialtime`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employeeID` (`employeeID`,`day`);

--
-- Indexes for table `other_information_table`
--
ALTER TABLE `other_information_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overall_attendance_record`
--
ALTER TABLE `overall_attendance_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_table`
--
ALTER TABLE `person_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `remittances`
--
ALTER TABLE `remittances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_grade_status`
--
ALTER TABLE `salary_grade_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_grade_table`
--
ALTER TABLE `salary_grade_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employeeNumber_2` (`employeeNumber`),
  ADD KEY `id` (`id`),
  ADD KEY `employeeNumber` (`employeeNumber`);

--
-- Indexes for table `vocational_table`
--
ALTER TABLE `vocational_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voluntary_work_table`
--
ALTER TABLE `voluntary_work_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_experience_table`
--
ALTER TABLE `work_experience_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendancerecord`
--
ALTER TABLE `attendancerecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `children_table`
--
ALTER TABLE `children_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `college_table`
--
ALTER TABLE `college_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `department_assignment`
--
ALTER TABLE `department_assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `department_table`
--
ALTER TABLE `department_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `eligibility_table`
--
ALTER TABLE `eligibility_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `holidayandsuspension`
--
ALTER TABLE `holidayandsuspension`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `item_table`
--
ALTER TABLE `item_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `learning_and_development_table`
--
ALTER TABLE `learning_and_development_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `leave_assignment`
--
ALTER TABLE `leave_assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leave_table`
--
ALTER TABLE `leave_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `officialtime`
--
ALTER TABLE `officialtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `other_information_table`
--
ALTER TABLE `other_information_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `overall_attendance_record`
--
ALTER TABLE `overall_attendance_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `person_table`
--
ALTER TABLE `person_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `remittances`
--
ALTER TABLE `remittances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `salary_grade_status`
--
ALTER TABLE `salary_grade_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `salary_grade_table`
--
ALTER TABLE `salary_grade_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `vocational_table`
--
ALTER TABLE `vocational_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `voluntary_work_table`
--
ALTER TABLE `voluntary_work_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `work_experience_table`
--
ALTER TABLE `work_experience_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `leave_assignment`
--
ALTER TABLE `leave_assignment`
  ADD CONSTRAINT `leave_assignment_ibfk_1` FOREIGN KEY (`leaveID`) REFERENCES `leave_table` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
