-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 06, 2019 at 10:22 AM
-- Server version: 5.7.27-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-8+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arzan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `civil_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `civil_id`) VALUES
(5, 'admin', 'admin@email.com', '$2y$10$bpWwYBbgn2fUyI3bG6pBeOQttzHhm4bJ6wC5l0w27E5HCIXr1dHdm', 'CdoRwOBnA1poDPJZWDr2cTUrqfvNzEpvuZ0wsR0NoI9Qcpy67Ett63f7i4fg', '2018-11-04 10:26:56', '2018-11-28 06:30:07', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `reply` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `phone` varchar(150) DEFAULT NULL,
  `subject` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `message`, `reply`, `created_at`, `updated_at`, `phone`, `subject`) VALUES
(8, 'ahmad elsaeed', 'ahmad.elsaeed.ali@gmail.com', 'test test test test', NULL, '2018-12-13 00:00:00', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paymentId` varchar(150) NOT NULL,
  `trackId` varchar(18) NOT NULL,
  `civil_id` varchar(50) NOT NULL,
  `office_code` varchar(5) NOT NULL,
  `contract_no` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `pay` tinyint(4) NOT NULL DEFAULT '0',
  `lang` varchar(5) NOT NULL DEFAULT 'en',
  `tranid` varchar(150) DEFAULT NULL,
  `auth` varchar(100) DEFAULT NULL,
  `ref` varchar(100) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `receipt_no` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `amount`, `paymentId`, `trackId`, `civil_id`, `office_code`, `contract_no`, `created_at`, `pay`, `lang`, `tranid`, `auth`, `ref`, `name`, `updated_at`, `email`, `receipt_no`) VALUES
(5, 240, '100201917768954367', '1283257791', '268030304416', '1', '32', '2019-06-26 15:14:18', 1, 'ar', '201917768944482', 'B21481', '917710000481', 'محمد جميل عبدالرزاق البندقجي ', NULL, NULL, NULL),
(7, 240, '100201917811761859', '2069148367', '268030304416', '1', '32', '2019-06-27 08:18:09', 1, 'ar', '201917888229103', 'B51861', '917810000189', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(8, 220, '', '', '269122401381        ', '6', '1865', '2019-06-27 08:19:13', -1, 'ar', '', '', '', 'اندورو جوزر محسن بهاني', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(9, 240, '100201917811900259', '1270805003', '268030304416', '1', '32', '2019-06-27 08:22:46', 1, 'ar', '201917812101071', 'B52962', '917810000194', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(10, 240, '', '', '268030304416', '1', '32', '2019-06-27 09:19:43', 0, 'ar', '', '', '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(11, 220, '100201917882466008', '590488504', '269122401381        ', '6', '1865', '2019-06-27 11:30:32', 1, 'ar', '201917817552354', 'B63104', '917810000301', 'اندورو جوزر محسن بهاني', NULL, 'samarg809@gmail.com', NULL),
(12, 220, '100201917882412320', '39019518', '269122401381        ', '6', '1865', '2019-06-27 11:32:22', -1, 'ar', '201917817601298', '000000', '917810000304', 'اندورو جوزر محسن بهاني', NULL, 'samarg809@gmail.com', NULL),
(13, 220, '100201917817622926', '1992264987', '269122401381        ', '6', '1865', '2019-06-27 11:33:31', 1, 'ar', '201917817643317', 'B63405', '917810000305', 'اندورو جوزر محسن بهاني', NULL, 'samarg809@gmail.com', NULL),
(14, 220, '100201917882268685', '289415074', '269122401381        ', '6', '1865', '2019-06-27 11:37:08', -1, 'ar', '201917882224925', '000000', '917810000309', 'اندورو جوزر محسن بهاني', NULL, 'samarg809@gmail.com', NULL),
(15, 220, '100201917882209347', '1832000655', '269122401381        ', '6', '1865', '2019-06-27 11:39:07', -1, 'ar', '201917817803431', '000000', '917810000313', 'اندورو جوزر محسن بهاني', NULL, 'samarg809@gmail.com', NULL),
(16, 240, '100201917882110119', '392053056', '268030304416', '1', '32', '2019-06-27 11:42:25', -1, 'ar', NULL, NULL, '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(17, 240, '100201917881683608', '1546648891', '268030304416', '1', '32', '2019-06-27 11:56:38', 1, 'ar', '201917881659710', 'B85760', '917810000322', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(18, 240, '100201917881602662', '1905495557', '268030304416', '1', '32', '2019-06-27 11:59:20', 1, 'ar', '201917881587461', 'B85984', '917810000327', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(19, 240, '100201917881189621', '1083865514', '268030304416', '1', '32', '2019-06-27 12:13:06', 1, 'ar', '201917881170920', 'B91377', '917810000332', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(20, 575, '100201917818940861', '1172274548', '286022102215', '10', '1629', '2019-06-27 12:17:27', -1, 'ar', '201917880999091', '000000', '917810000336', 'شركة زيزينيا للهواتف ذ.م.م', NULL, 'samarg809@gmail.com', NULL),
(21, 240, '', '', '268030304416', '1', '32', '2019-06-27 12:26:54', 0, 'ar', '', '', '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(22, 240, '100201917819243968', '1439102878', '268030304416', '1', '32', '2019-06-27 12:27:34', -1, 'ar', '201917819258632', '000000', '917810000348', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(23, 240, '100201917819277231', '1657655008', '268030304416', '1', '32', '2019-06-27 12:28:40', -1, 'ar', '201917880705382', '000000', '917810000350', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(24, 240, '', '', '268030304416', '1', '32', '2019-06-27 12:29:34', 0, 'ar', '', '', '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(25, 240, '100201917880327425', '1383544771', '268030304416', '1', '32', '2019-06-27 12:41:49', 1, 'ar', '201917819691277', 'B94267', '917810000357', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(30, 240, '', '', '268030304416', '1', '32', '2019-07-01 07:41:15', 0, 'ar', '', '', '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(31, 240, '', '', '268030304416', '1', '32', '2019-07-01 07:56:04', 0, 'ar', '', '', '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(32, 240, '100201918265706712', '197728068', '268030304416', '1', '32', '2019-07-01 08:09:08', -1, 'ar', '', '', '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(33, 240, '100201918234649686', '519425415', '268030304416', '1', '32', '2019-07-01 08:21:02', -1, 'ar', '201918234672166', '000000', '918210000082', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(34, 240, '100201918265305702', '1134796048', '268030304416', '1', '32', '2019-07-01 08:22:31', 1, 'ar', '201918265295321', 'B52280', '918210000083', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(35, 240, '100201918327360537', '238306176', '268030304416', '1', '32', '2019-07-02 08:04:43', -1, 'ar', NULL, NULL, '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(36, 240, '100201918337172758', '288215697', '268030304416', '1', '32', '2019-07-02 13:31:47', -1, 'ar', NULL, NULL, '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(37, 240, '100201918337268113', '688168521', '268030304416', '1', '32', '2019-07-02 13:34:57', -1, 'ar', NULL, NULL, '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(38, 240, '100201918362637283', '198451781', '268030304416', '1', '32', '2019-07-02 13:37:59', -1, 'ar', NULL, NULL, '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(39, 240, '', '', '268030304416', '1', '32', '2019-07-02 13:40:10', 0, 'ar', '', '', '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(40, 240, '100201918337495996', '1785773635', '268030304416', '1', '32', '2019-07-02 13:42:30', -1, 'ar', NULL, NULL, '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(41, 240, '100201918337572832', '491414462', '268030304416', '1', '32', '2019-07-02 13:45:07', -1, 'ar', '', '', '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(42, 240, '', '', '268030304416', '1', '32', '2019-07-02 13:48:53', 0, 'ar', '', '', '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(43, 240, '100201918362234604', '1238582061', '268030304416', '1', '32', '2019-07-02 13:51:32', -1, 'ar', NULL, NULL, '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(44, 240, '100201918339049448', '1491488938', '268030304416', '1', '32', '2019-07-02 14:34:18', -1, 'ar', NULL, NULL, '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(45, 240, '100201918857244427', '1214041688', '268030304416', '1', '32', '2019-07-07 07:44:27', 1, 'ar', '201918842763638', 'B44464', '918810000126', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(46, 240, '100201918854971200', '1135298708', '268030304416', '1', '32', '2019-07-07 09:00:14', 1, 'ar', '201918845072416', 'B60162', '918810000189', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(47, 240, '100201918845093791', '273002557', '268030304416', '1', '32', '2019-07-07 09:02:25', 1, 'ar', '201918854835900', 'B60464', '918810000192', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(48, 240, '100201918845179980', '2112858314', '268030304416', '1', '32', '2019-07-07 09:05:15', -1, 'ar', '201918845229542', '000000', '918810000194', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(49, 240, '100201919177605719', '115628096', '268030304416', '1', '32', '2019-07-10 07:45:42', 1, 'ar', '201919177587977', 'B44594', '919110000139', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'esraagharebmohamed@gmail.com', NULL),
(50, 240, '100201919122453726', '586585048', '268030304416', '1', '32', '2019-07-10 07:47:43', -1, 'ar', '', '', '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'esraagharebmohamed@gmail.com', NULL),
(51, 240, '100201919596104803', '1560167240', '268030304416', '1', '32', '2019-07-14 12:35:41', -1, 'ar', '201919503905138', '000000', '919510000304', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(52, 240, '100201919596059453', '1654811929', '268030304416', '1', '32', '2019-07-14 12:37:13', 1, 'ar', '201919596048902', 'B93721', '919510000305', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(53, 240, '100201919503971657', '1471568032', '268030304416', '1', '32', '2019-07-14 12:38:14', -1, 'ar', '', '', '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(54, 240, '100201919845840001', '887698889', '268030304416', '1', '32', '2019-07-17 19:27:28', -1, 'ar', '', '', '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(55, 240, '100201919854130156', '1234323716', '268030304416', '1', '32', '2019-07-17 19:28:28', -1, 'ar', NULL, NULL, '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(56, 240, '100201920434996332', '1092688046', '268030304416', '1', '32', '2019-07-23 08:19:15', 1, 'ar', '201920435005652', 'B51891', '920410000235', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(57, 240, '100201920435059857', '1848154553', '268030304416', '1', '32', '2019-07-23 08:21:24', -1, 'ar', '', '', '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(58, 240, '100201920435073326', '989185383', '268030304416', '1', '32', '2019-07-23 08:21:51', -1, 'ar', '201920464919174', '000000', '920410000236', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(59, 240, '100201920453987364', '1536423794', '268030304416', '1', '32', '2019-07-23 14:26:28', -1, 'ar', '201920446022050', '000000', '920410000590', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(60, 240, '100201920446051117', '1850485611', '268030304416', '1', '32', '2019-07-23 14:27:45', -1, 'ar', '', '', '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(61, 240, '100201920453924849', '1686710675', '268030304416', '1', '32', '2019-07-23 14:28:33', 1, 'ar', '201920446083991', 'B12910', '920410000591', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(62, 240, '100201920535217153', '1496559625', '268030304416', '1', '32', '2019-07-24 12:13:15', -1, 'ar', '', '', '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(63, 240, '100201920535431896', '288448626', '268030304416', '1', '32', '2019-07-24 12:20:26', 1, 'ar', '201920564552408', 'B92106', '920510000530', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(64, 240, '100201920563671751', '333813891', '268030304416', '1', '32', '2019-07-24 12:50:17', 1, 'ar', '201920536337998', 'B95087', '920510000573', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(65, 240, '', '', '268030304416', '1', '32', '2019-07-24 12:56:14', 0, 'ar', '', '', '', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(66, 240, '100201920562416613', '493633500', '268030304416', '1', '32', '2019-07-24 13:32:09', 1, 'ar', '201920562409326', 'B03274', '920510000616', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(67, 1, '', '', '269122401381        ', '6', '2525', '2019-07-28 15:02:06', 0, 'ar', '', '', '', 'اندورو جوزر محسن بهاني', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(68, 1, '', '', '269122401381        ', '6', '2525', '2019-07-28 15:05:37', 0, 'ar', '', '', '', 'اندورو جوزر محسن بهاني', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(69, 1, '100201921024564230', '77517895', '269122401381        ', '6', '2525', '2019-07-28 21:24:46', 1, 'ar', '201921075381835', 'B03685', '921010000002', 'اندورو جوزر محسن بهاني', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(82, 1, '100201921002673057', '1520957100', '269122401381        ', '6', '2525', '2019-07-29 13:01:44', -1, 'ar', '', '', '', 'اندورو جوزر محسن بهاني', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(83, 1, '100201921002689306', '65506137', '269122401381        ', '6', '2525', '2019-07-29 13:02:17', -1, 'ar', '201921002697922', '000000', '921010000735', 'اندورو جوزر محسن بهاني', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(84, 1, '100201921002708329', '256016253', '269122401381        ', '6', '2525', '2019-07-29 13:02:56', 1, 'ar', '201921002715211', 'B61359', '921010000738', 'اندورو جوزر محسن بهاني', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(85, 1, '100201921096657916', '280287846', '269122401381        ', '6', '2525', '2019-07-29 13:24:02', -1, 'ar', '', '', '', 'اندورو جوزر محسن بهاني', NULL, 'juzerindorewala@gmail.com', NULL),
(86, 1, '100201921139373802', '1512914322', '269122401381        ', '6', '2525', '2019-07-30 09:25:05', -1, 'ar', '201921139388293', '000000', '921110000317', 'اندورو جوزر محسن بهاني', NULL, 'JuzerMohsin@hotmail.com', NULL),
(87, 1, '100201921160576174', '1058886688', '269122401381        ', '6', '2525', '2019-07-30 09:26:46', -1, 'ar', '201921160564065', '000000', '921110000320', 'اندورو جوزر محسن بهاني', NULL, 'JuzerMohsin@hotmail.com', NULL),
(88, 1, '100201921160040582', '1719812773', '269122401381        ', '6', '2525', '2019-07-30 09:44:36', -1, 'ar', '201921140001829', '000000', '921110000340', 'اندورو جوزر محسن بهاني', NULL, 'JuzerMohsin@hotmail.com', NULL),
(89, 1, '100201921159769896', '1744021821', '269122401381        ', '6', '2525', '2019-07-30 09:53:38', 1, 'ar', '201921140243863', 'B26455', '921110000357', 'اندورو جوزر محسن بهاني', NULL, 'JuzerMohsin@hotmail.com', NULL),
(90, 1, '', '', '269122401381        ', '6', '2525', '2019-07-31 13:08:43', 0, 'ar', '', '', '', 'اندورو جوزر محسن بهاني', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(91, 1, '100201921260356007', '1863528046', '269122401381        ', '6', '2525', '2019-07-31 13:20:44', -1, 'ar', '201921260349742', '000000', '921210000814', 'اندورو جوزر محسن بهاني', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(92, 1, '', '', '269122401381        ', '6', '2525', '2019-07-31 13:21:09', 0, 'ar', '', '', '', 'اندورو جوزر محسن بهاني', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(93, 1, '', '', '269122401381        ', '6', '2525', '2019-07-31 14:31:23', 0, 'ar', '', '', '', 'اندورو جوزر محسن بهاني', NULL, 'ahmad.elsaeed.ali@gmail.com', '20191'),
(94, 1, '', '', '269122401381        ', '6', '2525', '2019-07-31 14:52:06', 0, 'ar', '', '', '', 'اندورو جوزر محسن بهاني', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(95, 1, '', '', '269122401381        ', '6', '2525', '2019-07-31 14:55:01', 0, 'ar', '', '', '', 'اندورو جوزر محسن بهاني', NULL, 'ahmad.elsaeed.ali@gmail.com', '20192'),
(96, 1, '', '', '269122401381        ', '6', '2525', '2019-07-31 14:56:52', 0, 'ar', '', '', '', 'اندورو جوزر محسن بهاني', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(97, 1, '', '', '269122401381        ', '6', '2525', '2019-07-31 15:02:09', 0, 'ar', '', '', '', 'اندورو جوزر محسن بهاني', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(98, 1, '', '', '269122401381        ', '6', '2525', '2019-07-31 15:07:29', 0, 'ar', '', '', '', 'اندورو جوزر محسن بهاني', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(99, 1, '', '', '269122401381        ', '6', '2525', '2019-07-31 15:08:20', 0, 'ar', '', '', '', 'اندورو جوزر محسن بهاني', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(100, 1, '100201921242886664', '1846913228', '269122401381        ', '6', '2525', '2019-07-31 15:08:51', 1, 'ar', '201921257107089', 'B81951', '921210000894', 'اندورو جوزر محسن بهاني', NULL, 'ahmad.elsaeed.ali@gmail.com', NULL),
(101, 1, '', '', '269122401381        ', '6', '2525', '2019-08-01 09:05:34', 0, 'ar', '', '', '', 'اندورو جوزر محسن بهاني', NULL, 'JuzerMohsin@hotmail.com', NULL),
(102, 1, '100201921373946624', '1177744048', '269122401381        ', '6', '2525', '2019-08-01 09:34:23', 1, 'ar', '201921373937629', 'B24491', '921310000362', 'اندورو جوزر محسن بهاني', NULL, 'JuzerMohsin@hotmail.com', NULL),
(103, 240, '100201921373677025', '204880925', '268030304416', '1', '32', '2019-08-01 09:43:21', 1, 'ar', '201921326334614', 'B64394', '921310000375', 'محمد جميل عبدالرزاق البندقجي ', NULL, 'samarg809@gmail.com', NULL),
(104, 220, '', '', '269122401381        ', '6', '1865', '2019-08-01 09:52:45', 0, 'ar', '', '', '', 'اندورو جوزر محسن بهاني', NULL, 'samar.gamal@roqay.com.kw', NULL),
(105, 220, '100201921326622560', '439296941', '269122401381        ', '6', '1865', '2019-08-01 09:53:22', -1, 'ar', '201921373366160', '000000', '921310000390', 'اندورو جوزر محسن بهاني', NULL, 'samar.gamal@roqay.com.kw', NULL),
(106, 220, '100201921373345355', '369136003', '269122401381        ', '6', '1865', '2019-08-01 09:54:25', -1, 'ar', '', '', '', 'اندورو جوزر محسن بهاني', NULL, 'samar.gamal@roqay.com.kw', NULL),
(107, 220, '100201921326694665', '470648394', '269122401381        ', '6', '1865', '2019-08-01 09:55:44', 1, 'ar', '201921326710286', 'B45665', '921310000393', 'اندورو جوزر محسن بهاني', NULL, 'samar.gamal@roqay.com.kw', NULL),
(108, 575, '', '', '286022102215', '10', '1629', '2019-08-01 11:00:29', 0, 'ar', '', '', '', 'شركة زيزينيا للهواتف ذ.م.م', NULL, 'samarg809@gmail.com', NULL),
(109, 575, '100201921371272970', '1121674736', '286022102215', '10', '1629', '2019-08-01 11:03:30', -1, 'ar', '201921328790101', '000000', '921310000489', 'شركة زيزينيا للهواتف ذ.م.م', NULL, 'samarg809@gmail.com', NULL),
(110, 1, '100201921329071992', '1215193258', '269122401381        ', '6', '2525', '2019-08-01 11:15:00', -1, 'ar', '', '', '', 'اندورو جوزر محسن بهاني', NULL, 'samarg809@gmail.com', NULL),
(111, 1, '100201921329180510', '1706631435', '269122401381        ', '6', '2526', '2019-08-01 11:18:36', 1, 'ar', '201921370785194', 'B42995', '921310000498', 'اندورو جوزر محسن بهاني', NULL, 'samarg809@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(145) NOT NULL,
  `value_ar` text,
  `updated_at` datetime DEFAULT NULL,
  `name_en` varchar(145) NOT NULL,
  `value_en` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name_ar`, `value_ar`, `updated_at`, `name_en`, `value_en`) VALUES
(1, 'عنوان الفرع', 'يرجي التوجه الي شرق - شارع خالد بن الوليد - برج انجازات دور 3 ، 11', '2019-02-23 03:16:44', 'address of branch', 'Please visit Sharq - Khaled Ibn Al Waleed Street, Injazat Tower, 3rd & 11th floor.'),
(2, 'المكان علي الخريطة', NULL, NULL, 'place on map', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `civil_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(150) NOT NULL,
  `remember_token` varchar(150) DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `civil_id`, `email`, `password`, `remember_token`, `phone`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'user', '216042900042', 'admin@email.com', '$2y$10$YMi3bkDLb82b8NvZEPeH6u7ziaL19VctyFFQbfGA7.yL.aLzcZ3ai', NULL, '1111891286', '2019-02-23 15:06:31', NULL, NULL),
(4, 'ahmad elsaeed', '1231231231', 'ahmad.elsaeed.ali@gmail.com', '$2y$10$JcDy.0e7.W6aqq5MYk8g6O0P26GIpjRVHSxA4TMoBy8s/ahkrreZG', NULL, '1111891286', '2019-08-02 15:02:42', '2019-08-02 15:02:42', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`),
  ADD KEY `admin_password_resets_token_index` (`token`(191));

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
