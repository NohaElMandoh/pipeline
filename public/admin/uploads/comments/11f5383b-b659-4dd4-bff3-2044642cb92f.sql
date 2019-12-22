-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 20, 2019 at 10:28 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reamtend_tenders`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_key`
--

CREATE TABLE `api_key` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attachs`
--

CREATE TABLE `attachs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` int(11) NOT NULL,
  `other` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(10) UNSIGNED NOT NULL,
  `tender` int(11) NOT NULL,
  `vendor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_note` text COLLATE utf8mb4_unicode_ci,
  `en_note` text COLLATE utf8mb4_unicode_ci,
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `tender`, `vendor`, `status`, `ar_note`, `en_note`, `doneby`, `created_at`, `updated_at`) VALUES
(1, 3, '19', '0', NULL, NULL, '1', '2019-03-20 08:29:13', '2019-03-20 08:29:13'),
(5, 5, '15', '0', NULL, NULL, '1', '2019-04-17 15:15:14', '2019-04-17 15:15:14'),
(6, 6, '15', '0', 'ttt', 'rrr', '1', '2019-05-08 14:36:21', '2019-05-08 14:36:21');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `ar_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `active`, `ar_title`, `en_title`, `country`, `doneby`, `created_at`, `updated_at`) VALUES
(5, 'yes', 'الكويت', 'Kuwait', '2', '1', '2019-03-20 02:33:10', '2019-03-20 02:33:10'),
(6, 'yes', 'بنيد القار', 'Bneid il-Gar', '2', '1', '2019-03-20 06:29:27', '2019-03-20 06:29:27'),
(7, 'yes', 'الدسمة', 'Dasma', '2', '1', '2019-03-20 07:11:15', '2019-03-20 07:11:15'),
(8, 'yes', 'الدعیة', 'Da\'iya', '2', '1', '2019-03-20 07:11:59', '2019-03-20 07:11:59'),
(9, 'yes', 'المنصوریة', 'Mansuriya', '2', '1', '2019-03-20 07:12:24', '2019-03-20 07:12:24'),
(10, 'yes', 'ضاحیة عبد الله السالم', 'Abdullah as-Salim suburb', '2', '1', '2019-03-20 07:13:13', '2019-03-20 07:13:13'),
(11, 'yes', 'النزھة', 'Nuzha', '2', '1', '2019-03-20 07:13:50', '2019-03-20 07:13:50'),
(12, 'yes', 'الفیحاء', 'Faiha\'', '2', '1', '2019-03-20 07:14:40', '2019-03-20 07:14:40'),
(13, 'yes', 'الشامیة', 'Shamiya', '2', '1', '2019-03-20 07:15:09', '2019-03-20 07:15:09'),
(14, 'yes', 'الروضة', 'Rawda', '2', '1', '2019-03-20 07:19:43', '2019-03-20 07:19:43'),
(15, 'yes', 'العدیلیة', 'Adiliya', '2', '1', '2019-03-20 07:20:34', '2019-03-20 07:20:34'),
(16, 'yes', 'الخالدیة', 'Khaldiya', '2', '1', '2019-03-20 07:20:56', '2019-03-20 07:20:56'),
(17, 'yes', 'كیفان', 'Kaifan', '2', '1', '2019-03-20 07:21:18', '2019-03-20 07:21:18'),
(18, 'yes', 'القادسیة', 'Qadsiya', '2', '1', '2019-03-20 07:21:56', '2019-03-20 07:21:56'),
(19, 'yes', 'قرطبة', 'Qurtuba', '2', '1', '2019-03-20 07:22:24', '2019-03-20 07:22:24'),
(20, 'yes', 'السرة', 'Surra', '2', '1', '2019-03-20 07:23:08', '2019-03-20 07:23:08'),
(21, 'yes', 'الیرموك', 'Yarmuk', '2', '1', '2019-03-20 07:23:55', '2019-03-20 07:23:55'),
(22, 'yes', 'الشویخ', 'Shuwaikh', '2', '1', '2019-03-20 07:24:12', '2019-03-20 07:24:12'),
(23, 'yes', 'غرناطة', 'Ghirnata', '2', '1', '2019-03-20 07:25:10', '2019-03-20 07:25:10'),
(24, 'yes', 'الصلیبیخات', 'Sulaibikhat', '2', '1', '2019-03-20 07:25:32', '2019-03-20 07:25:32'),
(25, 'yes', 'الدوحة', 'Doha', '2', '1', '2019-03-20 07:26:10', '2019-03-20 07:26:10'),
(26, 'yes', 'جزیرة أم النمل', 'Om-Elnaml Island', '2', '1', '2019-03-20 07:28:04', '2019-03-20 07:28:04'),
(27, 'yes', 'المرقاب', 'Mirgāb', '2', '1', '2019-03-20 07:28:28', '2019-03-20 07:28:28'),
(28, 'yes', 'الشویخ التعلیمیة', 'Educational Shuwaikh', '2', '1', '2019-03-20 07:29:11', '2019-03-20 07:29:11'),
(29, 'yes', 'الشویخ الصناعیة', 'Industrial Shuwaikh', '2', '1', '2019-03-20 07:30:47', '2019-03-20 07:30:47'),
(30, 'yes', 'جزیرة الشویخ', 'Shuwaikh Island', '2', '1', '2019-03-20 07:31:56', '2019-03-20 07:31:56'),
(31, 'yes', 'دسمان', 'Dasman', '2', '1', '2019-03-20 07:32:10', '2019-03-20 07:32:10'),
(32, 'yes', 'الصالحیة', 'Salhiya', '2', '1', '2019-03-20 07:32:35', '2019-03-20 07:32:35'),
(33, 'yes', 'الوطیة', 'Watiya', '2', '1', '2019-03-20 07:34:39', '2019-03-20 07:34:39'),
(34, 'yes', 'الصوابر', 'Sawābir', '2', '1', '2019-03-20 07:35:30', '2019-03-20 07:35:30'),
(35, 'yes', 'أم صدة', 'Om Sada', '2', '1', '2019-03-20 07:36:07', '2019-03-20 07:36:07'),
(36, 'yes', 'جزیرة فیلكا', 'Felka Island', '2', '1', '2019-03-20 07:36:46', '2019-03-20 07:36:46'),
(37, 'yes', 'الشویخ الصحیة', 'Health Shuwaikh', '2', '1', '2019-03-20 07:37:23', '2019-03-20 07:37:23'),
(38, 'yes', 'القبلة', 'Qibla', '2', '1', '2019-03-20 07:38:02', '2019-03-20 07:38:02'),
(39, 'yes', 'مدینة جابر الأحمد', 'Jabir al-Ahmad City', '2', '1', '2019-03-20 07:38:23', '2019-03-20 07:38:23'),
(40, 'yes', 'القیروان', 'Qairawan', '2', '1', '2019-03-20 07:38:52', '2019-03-20 07:38:52'),
(41, 'yes', 'النھضة', 'Nahdha', '2', '1', '2019-03-20 07:39:11', '2019-03-20 07:39:11'),
(42, 'yes', 'شمال غرب الصلیبیخات', 'Sulaibikhat North West', '2', '1', '2019-03-20 07:40:00', '2019-03-20 07:40:00'),
(43, 'yes', 'الأحمدي', 'Ahmadi', '2', '1', '2019-03-20 07:41:10', '2019-03-20 07:41:10'),
(44, 'yes', 'الفنطاس', 'Fintas', '2', '1', '2019-03-20 07:42:25', '2019-03-20 07:42:25'),
(45, 'yes', 'العقیلة', 'Aqila', '2', '1', '2019-03-20 07:42:49', '2019-03-20 07:42:49'),
(46, 'yes', 'الظھر', 'Zuhar', '2', '1', '2019-03-20 07:46:44', '2019-03-20 07:46:44'),
(47, 'yes', 'المقوع', 'Miqwa\'', '2', '1', '2019-03-20 07:47:23', '2019-03-20 07:47:23'),
(48, 'yes', 'المھبولة', 'Mahbula', '2', '1', '2019-03-20 07:47:48', '2019-03-20 07:47:48'),
(49, 'yes', 'الرقة', 'Rigga', '2', '1', '2019-03-20 07:48:04', '2019-03-20 07:48:04'),
(50, 'yes', 'ھدیة', 'Hadiya', '2', '1', '2019-03-20 07:48:21', '2019-03-20 07:48:21'),
(51, 'yes', 'أبو حلیفة', 'Abu Hulaifa', '2', '1', '2019-03-20 07:48:48', '2019-03-20 07:48:48'),
(52, 'yes', 'الصباحیة', 'Sabahiya', '2', '1', '2019-03-20 07:49:04', '2019-03-20 07:49:04'),
(53, 'yes', 'المنقف', 'Mangaf', '2', '1', '2019-03-20 07:49:18', '2019-03-20 07:49:18'),
(54, 'yes', 'الفحیحیل', 'Fahaheel', '2', '1', '2019-03-20 07:49:37', '2019-03-20 07:49:37'),
(55, 'yes', 'الوفرة', 'Wafra', '2', '1', '2019-03-20 07:50:02', '2019-03-20 07:50:02'),
(56, 'yes', 'الزور', 'Zoor', '2', '1', '2019-03-20 07:50:18', '2019-03-20 07:50:18'),
(57, 'yes', 'الخیران', 'Khairan', '2', '1', '2019-03-20 07:50:33', '2019-03-20 07:50:33'),
(58, 'yes', 'میناء عبد الله', 'Abdullah Port', '2', '1', '2019-03-20 07:50:54', '2019-03-20 07:50:54'),
(59, 'yes', 'الوفرة الزراعیة', 'Agricultural Wafra', '2', '1', '2019-03-20 07:51:13', '2019-03-20 07:51:13'),
(60, 'yes', 'بنیدر', 'Bneidar', '2', '1', '2019-03-20 07:51:28', '2019-03-20 07:51:28'),
(61, 'yes', 'الجلیعة', 'Jilei\'a', '2', '1', '2019-03-20 07:51:46', '2019-03-20 07:51:46'),
(62, 'yes', 'الضباعیة', 'Diba\'eya', '2', '1', '2019-03-20 07:52:29', '2019-03-20 07:52:29'),
(63, 'yes', 'ضاحیة جابر العلي', 'Jabir al-Ali Suburb', '2', '1', '2019-03-20 07:52:57', '2019-03-20 07:52:57'),
(64, 'yes', 'ضاحیة فھد الأحمد', 'Fahd al-Ahmad Suburb', '2', '1', '2019-03-20 07:53:14', '2019-03-20 07:53:14'),
(65, 'yes', 'الشعیبة', 'Shu\'aiba', '2', '1', '2019-03-20 07:53:34', '2019-03-20 07:53:34'),
(66, 'yes', 'واره', 'Warah', '2', '1', '2019-03-20 07:54:00', '2019-03-20 07:54:00'),
(67, 'yes', 'مدینة صباح الأحمد', 'Sabah al-Ahmad City', '2', '1', '2019-03-20 07:54:22', '2019-03-20 07:54:22'),
(68, 'yes', 'النویصیب', 'Nuwaiseeb', '2', '1', '2019-03-20 07:54:39', '2019-03-20 07:54:39'),
(69, 'yes', 'مدینة الخیران', 'Khairan City', '2', '1', '2019-03-20 07:54:53', '2019-03-20 07:54:53'),
(70, 'yes', 'ضاحیة علي صباح السالم', 'Ali as-Salim suburb', '2', '1', '2019-03-20 07:55:23', '2019-03-20 07:55:23'),
(71, 'yes', 'جنوب الصباحیة', 'South Sabahiya', '2', '1', '2019-03-20 07:55:55', '2019-03-20 07:55:55'),
(72, 'yes', 'الفروانیة', 'Farwaniya', '2', '1', '2019-03-20 07:56:51', '2019-03-20 07:56:51'),
(73, 'yes', 'الفردوس', 'Fordous', '2', '1', '2019-03-20 07:57:09', '2019-03-20 07:57:09'),
(74, 'yes', 'ضاحیة صباح الناصر', 'Sabah Elnaser Sburb', '2', '1', '2019-03-20 07:57:46', '2019-03-20 07:57:46'),
(75, 'yes', 'العمریة', 'Omariya', '2', '1', '2019-03-20 07:58:05', '2019-03-20 07:58:05'),
(76, 'yes', 'العارضیة', 'Ardiya', '2', '1', '2019-03-20 07:58:19', '2019-03-20 07:58:19'),
(77, 'yes', 'الرقعي', 'Ruq\'aa', '2', '1', '2019-03-20 07:59:10', '2019-03-20 07:59:10'),
(78, 'yes', 'الرابیة', 'Rabiya', '2', '1', '2019-03-20 07:59:24', '2019-03-20 07:59:24'),
(79, 'yes', 'الرحاب', 'Rihab', '2', '1', '2019-03-20 07:59:38', '2019-03-20 07:59:38'),
(80, 'yes', 'جلیب الشیوخ', 'Jleeb Al Shouyouk', '2', '1', '2019-03-20 08:00:03', '2019-03-20 08:00:03'),
(81, 'yes', 'الأندلس', 'Al Andalus', '2', '1', '2019-03-20 08:00:16', '2019-03-20 08:00:16'),
(82, 'yes', 'الضجیج', 'Dajeej', '2', '1', '2019-03-20 08:00:33', '2019-03-20 08:00:33'),
(83, 'yes', 'إشبیلیة', 'Ishbilia', '2', '1', '2019-03-20 08:00:47', '2019-03-20 08:00:47'),
(84, 'yes', 'الري', 'Rai', '2', '1', '2019-03-20 08:01:08', '2019-03-20 08:01:08'),
(85, 'yes', 'خیطان', 'Khaitan', '2', '1', '2019-03-20 08:01:23', '2019-03-20 08:01:23'),
(86, 'yes', 'الزھراء', 'Zahraa', '2', '1', '2019-03-20 08:02:03', '2019-03-20 08:02:03'),
(87, 'yes', 'الصدیق', 'Sediq', '2', '1', '2019-03-20 08:02:44', '2019-03-20 08:02:44'),
(88, 'yes', 'السلام', 'Elsalam', '2', '1', '2019-03-20 08:03:57', '2019-03-20 08:03:57'),
(89, 'yes', 'حطین', 'Hettin', '2', '1', '2019-03-20 08:04:21', '2019-03-20 08:04:21'),
(90, 'yes', 'الشھداء', 'Shuhada\'', '2', '1', '2019-03-20 08:04:55', '2019-03-20 08:04:55'),
(91, 'yes', 'العباسیة', 'Abaseiya', '2', '1', '2019-03-20 08:05:20', '2019-03-20 08:05:20'),
(92, 'yes', 'الحساوي', 'Hesawy', '2', '1', '2019-03-20 08:05:41', '2019-03-20 08:05:41'),
(93, 'yes', 'خیطان الجدیدة', 'New Khaitan', '2', '1', '2019-03-20 08:06:07', '2019-03-20 08:06:07'),
(94, 'yes', 'أبرق خیطان', 'Abrag Khitan', '2', '1', '2019-03-20 08:06:30', '2019-03-20 08:06:30'),
(95, 'yes', 'ضاحیة عبد الله المبارك', 'Abdullah Al Mubarak', '2', '1', '2019-03-20 08:06:44', '2019-03-20 08:06:44'),
(96, 'yes', 'العضیلیة', 'Adeleiya', '2', '1', '2019-03-20 08:07:30', '2019-03-20 08:07:30'),
(97, 'yes', 'حولي', 'Hawally', '2', '1', '2019-03-20 08:08:02', '2019-03-20 08:08:02'),
(98, 'yes', 'الشعب', 'Sha\'ab', '2', '1', '2019-03-20 08:08:16', '2019-03-20 08:08:16'),
(99, 'yes', 'السالمیة', 'Salmiya', '2', '1', '2019-03-20 08:08:31', '2019-03-20 08:08:31'),
(100, 'yes', 'الرمیثیة', 'Rumaithiya', '2', '1', '2019-03-20 08:08:49', '2019-03-20 08:08:49'),
(101, 'yes', 'الجابریة', 'Jabriya', '2', '1', '2019-03-20 08:09:03', '2019-03-20 08:09:03'),
(102, 'yes', 'مشرف', 'Mishrif', '2', '1', '2019-03-20 08:09:16', '2019-03-20 08:09:16'),
(103, 'yes', 'سلوى', 'Salwa', '2', '1', '2019-03-20 08:09:40', '2019-03-20 08:09:40'),
(104, 'yes', 'بیان', 'Bayan', '2', '1', '2019-03-20 08:10:00', '2019-03-20 08:10:00'),
(105, 'yes', 'البدع', 'Bi\'di\'', '2', '1', '2019-03-20 08:10:16', '2019-03-20 08:10:16'),
(106, 'yes', 'النقرة', 'Nigra', '2', '1', '2019-03-20 08:10:33', '2019-03-20 08:10:33'),
(107, 'yes', 'ضاحیة مبارك العبد الله الجابر', 'Mubarak aj-Jabir suburb', '2', '1', '2019-03-20 08:11:04', '2019-03-20 08:11:04'),
(108, 'yes', 'مبارك الكبير', 'Mubarak al-Kabeer', '2', '1', '2019-03-20 08:12:55', '2019-03-20 08:12:55'),
(109, 'yes', 'العدان', 'Adān', '2', '1', '2019-03-20 08:13:14', '2019-03-20 08:13:14'),
(110, 'yes', 'القصور', 'Qusūr', '2', '1', '2019-03-20 08:13:46', '2019-03-20 08:13:46'),
(111, 'yes', 'القرین', 'Qurain', '2', '1', '2019-03-20 08:14:13', '2019-03-20 08:14:13'),
(112, 'yes', 'صبحان', 'Sabhān', '2', '1', '2019-03-20 08:14:25', '2019-03-20 08:14:25'),
(113, 'yes', 'المسیلة', 'Misīla', '2', '1', '2019-03-20 08:14:39', '2019-03-20 08:14:39'),
(114, 'yes', 'الوسطى', 'Wasta', '2', '1', '2019-03-20 08:14:59', '2019-03-20 08:14:59'),
(115, 'yes', 'الفنیطیس', 'Funaitīs', '2', '1', '2019-03-20 08:15:17', '2019-03-20 08:15:17'),
(116, 'yes', 'أبو فطیرة', 'Abu Fteira', '2', '1', '2019-03-20 08:15:43', '2019-03-20 08:15:43'),
(117, 'yes', 'أبو الحصاني', 'Abu Elhasany', '2', '1', '2019-03-20 08:16:06', '2019-03-20 08:16:06'),
(118, 'yes', 'ضاحیة صباح السالم', 'Sabah as-Salim suburb', '2', '1', '2019-03-20 08:16:23', '2019-03-20 08:16:23'),
(119, 'yes', 'الجھراء', 'Jahra', '2', '1', '2019-03-20 08:17:44', '2019-03-20 08:17:44'),
(120, 'yes', 'الصلیبیة', 'Alsulaibya', '2', '1', '2019-03-20 08:18:09', '2019-03-20 08:18:09'),
(121, 'yes', 'أمغرة', 'Amghara', '2', '1', '2019-03-20 08:18:28', '2019-03-20 08:18:28'),
(122, 'yes', 'النعیم', 'Alnaeem', '2', '1', '2019-03-20 08:18:51', '2019-03-20 08:18:51'),
(123, 'yes', 'القصر', 'Alqaser', '2', '1', '2019-03-20 08:19:06', '2019-03-20 08:19:06'),
(124, 'yes', 'الواحة', 'Alwaha', '2', '1', '2019-03-20 08:19:23', '2019-03-20 08:19:23'),
(125, 'yes', 'تیماء', 'Taimaa', '2', '1', '2019-03-20 08:19:35', '2019-03-20 08:19:35'),
(126, 'yes', 'النسیم', 'Alnaseem', '2', '1', '2019-03-20 08:19:51', '2019-03-20 08:19:51'),
(127, 'yes', 'العیون', 'Aloyoon', '2', '1', '2019-03-20 08:20:03', '2019-03-20 08:20:03'),
(128, 'yes', 'جزیرة بوبیان', 'Boubyan island', '2', '1', '2019-03-20 08:20:20', '2019-03-20 08:20:20'),
(129, 'yes', 'جزیرة وربة', 'Warbah island', '2', '1', '2019-03-20 08:20:45', '2019-03-20 08:20:45'),
(130, 'yes', 'العبدلي', 'Alabdally', '2', '1', '2019-03-20 08:22:04', '2019-03-20 08:22:04'),
(131, 'yes', 'الجھراء القدیمة', 'Old Jahraa', '2', '1', '2019-03-20 08:22:23', '2019-03-20 08:22:23'),
(132, 'yes', 'الجھراء الجدیدة', 'New Jahraa', '2', '1', '2019-03-20 08:22:37', '2019-03-20 08:22:37'),
(133, 'yes', 'كاظمة', 'Kazma', '2', '1', '2019-03-20 08:22:51', '2019-03-20 08:22:51'),
(134, 'yes', 'مدینة سعد العبد الله', 'Saad Alabdaullah City', '2', '1', '2019-03-20 08:23:10', '2019-03-20 08:23:10'),
(135, 'yes', 'السالمي', 'Alsalmy', '2', '1', '2019-03-20 08:23:28', '2019-03-20 08:23:28'),
(136, 'yes', 'المطلاع', 'Almutlaa', '2', '1', '2019-03-20 08:23:43', '2019-03-20 08:23:43'),
(137, 'yes', 'مدینة الحریر', 'Alharir City', '2', '1', '2019-03-20 08:24:25', '2019-03-20 08:24:25'),
(138, 'yes', 'كبد', 'Kabd', '2', '1', '2019-03-20 08:24:40', '2019-03-20 08:24:40'),
(139, 'yes', 'الروضتین', 'Alroudhatain', '2', '1', '2019-03-20 08:24:55', '2019-03-20 08:24:55'),
(140, 'yes', 'الصبیة', 'Alsubbyah', '2', '1', '2019-03-20 08:25:23', '2019-03-20 08:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `vendor` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `step` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `vendor`, `comment`, `status`, `step`, `doneby`, `created_at`, `updated_at`) VALUES
(1, 1, 'يرجي اضافة شهادة السجل التجاري الخاصه بكم', '0', '0', '1', '2019-01-09 10:11:22', '2019-01-09 10:11:22'),
(2, 1, 'يرجي اضافة قائمة مرجعيه بالعملاء والجهات التي تم التعامل معها خلال العام السابق فقط وارقام هاتفهم', '0', '0', '1', '2019-01-09 10:11:39', '2019-01-09 10:11:39'),
(3, 1, 'ssssss', 'waitingedit', '0', '1', '2019-01-09 10:19:40', '2019-01-09 10:19:40'),
(4, 1, 'ffffff dfdf', 'waitingedit', '0', '1', '2019-01-09 10:59:58', '2019-01-09 10:59:58'),
(5, 1, 'ffffffff', 'waitingedit', '0', '1', '2019-01-09 11:01:04', '2019-01-09 11:01:04'),
(6, 15, 'rrrrrrrrrrrrrrrrr', 'freemoney', '0', '1', '2019-03-05 11:06:54', '2019-03-05 11:06:54'),
(7, 15, 'فى انتظار الدفع لتاكيد العضويه', 'waitingmoney', '0', '1', '2019-03-05 11:11:12', '2019-03-05 11:11:12'),
(8, 19, 'المورد معفي', 'freemoney', '0', '1', '2019-03-13 13:05:06', '2019-03-13 13:05:06'),
(9, 19, 'ادفع', 'waitingmoney', '0', '1', '2019-03-13 13:20:37', '2019-03-13 13:20:37'),
(10, 19, 'yyyyy', 'freemoney', '0', '1', '2019-03-13 13:49:15', '2019-03-13 13:49:15'),
(11, 19, 'h]tu', 'waitingmoney', '0', '1', '2019-03-13 13:53:34', '2019-03-13 13:53:34'),
(12, 19, 'axcsdcdcd', 'waitingmoney', '0', '1', '2019-03-17 11:05:17', '2019-03-17 11:05:17'),
(13, 19, 'تم تسجيلك بنجاح', 'doneedits', '0', '1', '2019-03-20 08:01:28', '2019-03-20 08:01:28'),
(14, 14, 'معفي', 'freemoney', '0', '23', '2019-03-31 17:15:34', '2019-03-31 17:15:34'),
(15, 17, 'ثببسث', 'freemoney', '0', '23', '2019-04-01 10:01:54', '2019-04-01 10:01:54'),
(16, 15, 'fff', 'freemoney', '0', '1', '2019-04-01 18:58:27', '2019-04-01 18:58:27'),
(17, 15, 'dasa', 'freemoney', '0', '1', '2019-04-01 19:07:24', '2019-04-01 19:07:24');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` enum('no','yes') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `phone`, `email`, `name`, `message`, `reply`, `seen`, `created_at`, `updated_at`) VALUES
(1, 'mohammed reda', 'dev_mohammed@hotmail.com', '', 'mohammed reda mohammed reda mohammed reda mohammed reda mohammed reda mohammed reda mohammed reda mohammed reda mohammed reda mohammed reda mohammed reda mohammed reda mohammed reda', 'يا يا يا تريكه', 'yes', '2018-11-25 09:33:34', '2018-11-25 09:34:53'),
(2, 'نوع التواصل', 'dev_mohammed@hotmail.com', '', 'onclick=\"validAll()\"', 'ffff', 'yes', '2018-11-25 09:42:56', '2019-02-10 07:42:17'),
(3, 'نوع التواصل', 'mohammedtrika@gmail.com', '', 'mohammedtrika@gmail.com mohammedtrika@gmail.com mohammedtrika@gmail.com mohammedtrika@gmail.com mohammedtrika@gmail.com', '', 'no', '2018-11-25 10:20:15', '2018-11-25 10:20:15'),
(4, 'نوع التواصلddd', 'dev_mohammed@hotmail.com', '', 'نوع التواصلddd', '', 'no', '2018-11-25 10:23:15', '2018-11-25 10:23:15'),
(5, 'Mohammed Reda455', 'dev_mohammed@hotmail.com', '', 'ddd', '', 'no', '2018-11-25 10:23:54', '2018-11-25 10:23:54'),
(6, '00201017395905', 'mohammedtrika@gmail.com', '', 'content', 'vvvvvvvvvvvvvvبب', 'yes', '2018-12-10 09:28:54', '2018-12-10 09:34:50'),
(7, '1017395905', 'mohammedtrika@roqay.com', '', 'الرساله', '', 'no', '2018-12-11 12:07:39', '2018-12-11 12:07:39'),
(8, 'رقم الهاتف', 'mohammedtrika@roqay.com', '', 'ggggggg', '', 'no', '2018-12-12 05:42:04', '2018-12-12 05:42:04'),
(9, 'ghhfh', 'mohammedtrika@roqay.com', '', 'http://127.0.0.1:8000', '', 'no', '2018-12-16 06:23:43', '2018-12-16 06:23:43'),
(10, 'ghhfh', 'mohammedtrika@roqay.com', '', 'grg', '', 'no', '2018-12-18 09:32:45', '2018-12-18 09:32:45'),
(11, '1017395905', 'mohammedtrika@gmail.com', '', 'mohammedtrika@gmail.com', '', 'no', '2019-01-02 11:53:56', '2019-01-02 11:53:56'),
(12, '1017395905', 'mohammedtrika@gmail.com', '', 'mohammedtrika@gmail.com', '', 'no', '2019-01-02 11:55:31', '2019-01-02 11:55:31'),
(13, '201017395905', 'tktk@tktk.com', '', 'eeeeeeee', '', 'no', '2019-01-14 07:28:07', '2019-01-14 07:28:07'),
(14, '201017395905', 'tktk@tktk.com', '', 'eeeeeeee', '', 'no', '2019-01-14 07:28:40', '2019-01-14 07:28:40'),
(15, '81815479398', 'polis.fonaewrdfrgew32f@yandex.com', '', 'Carrie Underwood is my favourite US singer. She is young, beautiful and charming woman in her 30s. Her strong voice takes me away from all troubles of this planet so I can enjoy my life and listen songs created by her mind. Now she is on a Cry Pretty 360 Tour started in May of 2019. The concerts scheduled for the whole 2019, up to the last day of October. Ticket prices are moderate and available for all men and women with different income. If you love contry music, then you must visit at least one Carrie\'s concert. All tour dates are available at the <a href=https://carrieunderwoodtour.com>Carrie Underwood tour Birmingham</a>. Open the website and make yourself familiar with all powerful Carrie Underwood concerts in 2019!', '', 'no', '2019-03-20 19:35:51', '2019-03-20 19:35:51'),
(16, '85813189577', 'polis.fonaewrdfrgew32f@yandex.com', '', 'Carrie Underwood is my favourite country singer. She is young, beautiful and charming female in her 30s. Her voice takes me away from all problems of this planet so I can enjoy my life and listen songs created by her. Now the singer is on a Cry Pretty 360 Tour started in May of 2019. The concerts scheduled for this year, up to the 31st of October. Ticket prices are moderate and available for all men and women with different income. If you love country music as mush as I, then you must visit at least one of her concert. All tour dates are available at the <a href=https://carrieunderwoodtour.com>Carrie Underwood tour Linkoln</a>. Open the website and make yourself familiar with all powerful Carrie Underwood concerts in 2019!', '', 'no', '2019-03-21 19:09:37', '2019-03-21 19:09:37'),
(17, '182175853', 'stephennop@gmail.com', '', 'We offer you the opportunity to advertise your products and services. \r\nGood day! Here is  an interesting offers for you. I can send your commercial offers or messages through feedback forms. The advantage of this method is that the messages sent through the feedback forms are included in the white list. This method increases the chance that your message will be read. The same way as you received this message. \r\n \r\nSending via Feedback Forms to any domain zones of the world. (more than 1000 domain zones.). \r\nThe cost of sending 1 million messages for any domain zone of the world is $ 49 instead of $ 99. \r\nDomain zone .com - (12 million messages sent) - $399 instead of $699 \r\nAll domain zones in Europe- (8 million messages sent) - $ 299 instead of $599 \r\nAll sites in the world (25 million messages sent) - $499 instead of $999 \r\nDomain zone .de - (2 million messages sent) - $99 instead of $199 \r\nDomain zone .uk - (1.5 million messages sent) - $69 instead of $139 \r\nDomain zone .nl - (700 000 sent messages) - $39 instead of $79 \r\n \r\nDiscounts are valid until March 25. \r\n \r\nIn the process of sending messages, we do not violate the rules of GDRP. \r\nThis message is created automatically use our contacts for communication. \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype – FeedbackForm2019 \r\nEmail - FeedbackForm2019@gmail.com \r\n \r\nBest wishes', '', 'no', '2019-03-21 20:23:38', '2019-03-21 20:23:38'),
(18, '343188516', 'savemoney@takecreditcardsfree.com', '', 'Hello I was wanting to see, if you wanted to stop paying fees to accept credit cards? I am with http://www.TakeCreditCardsFree.com and with us, you can take every type of credit card, you get your money deposited within 2 business days and you pay 0% plus $0.00 per transaction, the only thing you pay is a $25 per month account fee, and then you just use your existing terminal, or buy/lease one from us. What’s the catch? The catch is, instead of charging you, your customer is charged a small convenience fee via the credit card machine we send you,  of just 40 cents per every $10 to which the customer is spending and that’s it. Would you be interested in this? If so go to our website or call/text us at 720-791-3210 or go to our website http://www.takecreditcardsfree.com', '', 'no', '2019-03-22 16:13:36', '2019-03-22 16:13:36'),
(19, '83529789636', 'polis.fonaewrdfrgew32f@yandex.com', '', 'Carrie Underwood is my favourite US contry singer. She is young, beautiful and charming female in her 30s. Her strong voice takes me away from all troubles of this planet and I start enjoy my life and listen songs created by her mind. Now the singer is on a Cry Pretty 360 Tour started in May of 2019. The concerts scheduled for the whole 2019, up to the 31st of October. Tickets are available for all men and women with different income. If you love contry music, then you must visit at least one of her concert. All tour dates are available at the <a href=https://carrieunderwoodtour.com>Carrie Underwood tour Nashville</a>. Open the website and make yourself familiar with all Carrie Underwood concerts in 2019!', '', 'no', '2019-03-23 09:59:24', '2019-03-23 09:59:24'),
(20, '114777477', 'savemoney@takecreditcardsfree.com', '', 'Hello I was wanting to see, if you wanted to stop paying fees to accept credit cards? I am with http://www.TakeCreditCardsFree.com and with us, you can take every type of credit card, you get your money deposited within 2 business days and you pay 0% plus $0.00 per transaction, the only thing you pay is a $25 per month account fee, and then you just use your existing terminal, or buy/lease one from us. What’s the catch? The catch is, instead of charging you, your customer is charged a small convenience fee via the credit card machine we send you,  of just 40 cents per every $10 to which the customer is spending and that’s it. Would you be interested in this? If so go to our website or call/text us at 720-791-3210 or go to our website http://www.takecreditcardsfree.com', '', 'no', '2019-03-26 04:47:14', '2019-03-26 04:47:14'),
(21, '118315162', 'instaresultsteam@gmail.com', '', 'Hi there, \r\n \r\nI came across your website and wanted to get in touch. \r\n \r\nI run an Instagram Growth Service helping thousands of clients to grow their Instagram significantly with REAL and RELEVANT followers, through organic marketing techniques. \r\n \r\nYou can learn more about how our service works here: \r\nhttp://bit.ly/instagram-results - interesting right? \r\n \r\nI wanted to reach out to hear if our Instagram Growth Service could be of any interest to you? \r\n \r\nNote, we are NOT selling fake followers and advise you to never buy fake followers as it doesn’t bring any real value to your business. What we are doing is a consistent, authentic approach to interacting with real people who are in your target audience to get their attention and drive them to your page. \r\n \r\nThe results that our clients see are typically: \r\n10,000 new monthly impressions \r\n400-1500 new, real and targeted followers per month \r\nIncreased engagement, website traffic & sales. \r\n \r\nThe pricing for our service is only $67/mo and we offer a 30-day money back guarantee for the first month to let you try it without any risk. \r\n \r\nIf you’re ready to boost your Instagram results risk-free, you can sign up here to get started: \r\nhttp://bit.ly/instagram-signup - It’s 100% safe & secure. \r\n \r\nIf this is not for you, no problem at all and thank you for your attention. \r\n \r\nIf you’re interested in learning more, please contact us on the email below: \r\nEmail: instaforce5@gmail.com', '', 'no', '2019-03-26 08:48:55', '2019-03-26 08:48:55'),
(22, '221274382', 'byntest2019@gmail.com', '', 'If you are experiencing traffic problems and need more views and reach on your product or service, consider social media marketing through influencer traffic on Snapchat. It’s cheap, simple, and straight forward. All we do is post your ad on an influencer’s page that matches your business needs (niche/audience). This traffic is known to convert, and our company is very experienced in social media marketing. We also offer posts on influencer accounts on Instagram feeds and stories. These also have the reach of thousands to millions of views. If you want more information, contact us now at contact@boostyournetwork.com . We would love to work with you and your company and are excited to help and watch the growth of your business. \r\n \r\nThank you, \r\nBoost Your Network \r\nEmail: contact@boostyournetwork.com \r\nWebsite: https://BoostYourNetwork.com', '', 'no', '2019-03-27 00:10:53', '2019-03-27 00:10:53'),
(23, '273538466', 'office.pivotaluk@gmail.com', '', 'I was trying to reach your CEO and CTO or Teach lead. We already worked with few companies in your space. \r\nWe are a developer-founded, developer-run firm, specialized in dedicated software teams. \r\n \r\nOur value: \r\n1.    Hire top developers at a very competitive price ($25/h-$40/h). \r\n2.    In 72 hours, you can find engineers for your tech stack. \r\n3.    A huge global pool of diverse developers. \r\n4.    Fixed budgeting based on the initial planning so that you would not go over the budget. \r\n5.    Full time, remote extension of your team. \r\n \r\nBefore assigning the developers, we always provide our clients with resumes, references, and also we organize interviews so that you would be certain about who you are hiring. \r\n \r\nWe offer 2-weeks trial (pay only if satisfied) \r\n \r\nYou can find more about our company by visiting our website: https://pivotalscale.com \r\nor book a meeting with us at  https://calendly.com/developmentservices', '', 'no', '2019-03-27 11:41:10', '2019-03-27 11:41:10'),
(24, '211734744', 'pete-gvm-affiliate@gmail.com', '', 'My name is Pete and I want to share a proven system with you that makes me money while I sleep! This system allows you to TRY the whole thing for F R E E for a whole 30 days! That\'s right, you can finally change your future without giving up any sensitive information in advance! I signed up myself just a while ago and I\'m already making a nice profit. \r\n \r\nIn short, this is probably the BEST THING THAT EVER HAPPENED TO YOU IF YOU TAKE ACTION NOW!!! \r\n \r\nIf you\'re interested in knowing more about this system, go to http://globalviralmarketing.com/?ref=qkgWOPkN5RoC1NWh and try it out. Again, it’s FREE! \r\n \r\nYou can thank me later \r\n \r\n/Pete', '', 'no', '2019-03-30 06:07:09', '2019-03-30 06:07:09'),
(25, '275653316', 'thum8.tom@yandex.com', '', 'Do you use whey protein isolate?  Egg protein? \r\n \r\nBuy 3lbs-300lbs at bulk factory direct prices with free FedEx shipping! \r\n \r\nHighest quality.  BEST possible taste.  No fillers or additives. \r\n \r\nhttps://newworldprotein.com/collections/proteins/products/100-whey-protein-isolate?variant=12808745746545', '', 'no', '2019-04-09 07:01:27', '2019-04-09 07:01:27'),
(26, '365541672', 'lvfeebback123@gmail.com', '', 'We are often up to 50%-60% less than other VoIP providers. \r\n \r\nOur VoIP pricing method is really different. \r\n \r\nWe offer free SIP/VoIP trunks and just charge for minutes.  Don\'t worry, our service and quality is outstanding since 2009 (10 years)! \r\n \r\nTake a look at our pricing and contact us to set up your account. \r\nUsage is month to month, with no contract jail! \r\n \r\nhttps://legacyvoip.com/pricing-unlimited-sip-trunks-with-bundled-minutes-reduce-cost-now \r\n \r\nTry us out.  You really won’t regret it! \r\n \r\nBusiness VoIP for premises based PBXs \r\nCloud Hosted PBXs \r\nCloud Hosted Call Centers \r\n \r\nWe support all SIP-able PBXs and phones. \r\n \r\nThank you, \r\n \r\nBob Green \r\nLegacy VoIP', '', 'no', '2019-04-16 02:28:01', '2019-04-16 02:28:01'),
(27, '383772863', 'svetlanacol0sova@yandex.ua', '', 'Hi reamtenders.com \r\nGrow your bitcoins by 10% per 2 days. \r\nProfit comes to your btc wallet automatically. \r\n \r\nTry  http://bm-syst.xyz \r\nit takes 2 minutes only and let your btc works for you! \r\n \r\nGuaranteed by the blockchain technology!', '', 'no', '2019-04-21 17:55:18', '2019-04-21 17:55:18'),
(28, '88525112536', 'ewrdfrgew32f@yandex.com', '', 'Today almost every Internet user uses Youtube or any other service to upload and watch funny videos, free movies and other content. But sometimes you want to download a video or a movie and the hosting doesn\'t allow you to do so. It\'s where Vidmate App is coming to help you. It allows you to download a movie from may services, including YT, Vimeo, Vimeo and many other hosting services. To do this you simply need to find a video and click \"download\". Plus, the application is 100% free and easy in use with your Android device! Download Vidmate APK from <a href=https://vidmateapp.pro/apk/>this website</a> now and start downloading your favourite films to share them with your family and friends!', '', 'no', '2019-04-23 03:22:32', '2019-04-23 03:22:32'),
(29, '384143282', 'cgorillamail@gmail.com', '', 'Hi, reamtenders.com \r\n \r\nI\'ve been visiting your website a few times and decided to give you some positive feedback because I find it very useful. Well done. \r\n \r\nI was wondering if you as someone with experience of creating a useful website could help me out with my new site by giving some feedback about what I could improve? \r\n \r\nYou can find my site by searching for \"casino gorilla\" in Google (it\'s the gorilla themed online casino comparison). \r\n \r\nI would appreciate if you could check it out quickly and tell me what you think. \r\n \r\ncasinogorilla.com \r\n \r\nThank you for help and I wish you a great week!', '', 'no', '2019-04-23 09:02:01', '2019-04-23 09:02:01'),
(30, '144357534', 'infopp75@gmail.com', '', 'My name is  Mr. Deron Sugg, Esq. from Texas, USA. I am contacting you with important information about a family that may be related to your family. The family came to the United States in 1942 during World War II. This family is probably related to your family lineage, given the details of your profile. We came to this conclusion on the basis of the fact that you have the same family name and nationality as our client\'s family. \r\n \r\nIf you receive this message, kindly contact us if you have any history about a person from your family circle that disappeared during World War II, that person is likely the father of our client. If you received this message, do not ignore or neglect to contact us immediately. \r\n \r\nThis communication has much to do with a huge inheritance benefit that would interest you and the rest of your family. \r\n \r\nI look forward to hearing from you as soon as possible. \r\n \r\nWith Sincere regards, \r\n \r\n-- \r\nName: Deron Sugg, Esq. \r\nKoonsFuller Family Law Firm \r\n5700 W. Plano Parkway Suite 2200 \r\n1717 McKinney Avenue. Ste. 1500 \r\nDallas, TX 75201, USA. \r\nhttps://www.koonsfuller.com \r\nEmail: 3451882@gmail.com', '', 'yes', '2019-04-24 17:02:02', '2019-05-01 08:49:42'),
(31, '123456', 'fardous@gmail.com', 'fardous', 'test', '', 'yes', '2019-05-01 16:01:42', '2019-05-01 16:03:27'),
(32, '238285835', 'gunrussia@scryptmail.com', 'Davidkeymn', '25 charging traumatic pistols shooting automatic fire! Modified Makarov pistols with a silencer! Combat Glock 17 original or with a silencer! And many other types of firearms without a license, without documents, without problems! \r\nDetailed video reviews of our products you can see on our website. \r\n \r\nIf the site is unavailable or blocked, email us at - Gunrussia@secmail.pro   or  Gunrussia@elude.in \r\nAnd we will send you the address of the backup site!', '', 'no', '2019-05-01 19:28:51', '2019-05-01 19:28:51'),
(33, '366421831', 'michaelDrype@gmail.com', 'MartinBef', 'an fabulousoffers \r\n Reasonable click on the component less to qualify  \r\n \r\nhttps://drive.google.com/file/d/1ts1CKNFmIwmMs3U8WkjhP8hI45LhvOC7/preview', '', 'no', '2019-05-13 02:01:47', '2019-05-13 02:01:47'),
(34, '16622444213', 'angelaReal@gmail.com', 'FrancesVuh', 'Ciao!  reamtenders.com \r\n \r\nWe make available \r\n \r\nSending your commercial proposal through the feedback form which can be found on the sites in the Communication partition. Contact form are filled in by our program and the captcha is solved. The profit of this method is that messages sent through feedback forms are whitelisted. This technique raise the probability that your message will be read. Mailing is done in the same way as you received this message. \r\nYour   message will be open by millions of site administrators and those who have access to the sites! \r\n \r\nThe cost of sending 1 million messages is $ 49 instead of $ 99. (you can select any country or country domain) \r\nAll USA - (10 million messages sent) - $399 instead of $699 \r\nAll Europe (7 million messages sent)- $ 299 instead of $599 \r\nAll sites in the world (25 million messages sent) - $499 instead of $999 \r\n \r\n \r\nDiscounts are valid until May 15. \r\nFeedback and warranty! \r\nDelivery report! \r\nIn the process of sending messages we don\'t break the rules GDRP. \r\n \r\nThis message is automatically generated to use our contacts for communication. \r\n \r\n \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype – FeedbackForm2019 \r\nEmail - FeedbackForm@make-success.com \r\nWhatsApp - +44 7598 509161 \r\nhttp://bit.ly/2JDCOYC \r\n \r\nIt\'s time to finish.', '', 'no', '2019-05-15 15:03:52', '2019-05-15 15:03:52');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `ar_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `active`, `ar_title`, `en_title`, `doneby`, `created_at`, `updated_at`) VALUES
(2, 'yes', 'كويت', 'Kuwait', '1', '2018-11-26 11:24:52', '2018-11-26 11:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `ar_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `position` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `ar_title`, `en_title`, `image`, `active`, `position`, `doneby`, `created_at`, `updated_at`) VALUES
(11, 'إداره تقنية المعلومات', 'Information Technology Department', '44tKQ.4-PCs.jpg', 'yes', NULL, '1', '2019-03-20 02:21:42', '2019-05-01 11:36:22'),
(14, 'الإدارة العقارية', 'Real Estate Department', '9YVaz.17-Property Mangement Software.jpg', 'yes', NULL, '1', '2019-03-20 02:24:42', '2019-05-01 11:34:28'),
(15, 'إدارة الصيانه', 'Maintainance Department', 'MQfxS.16-Maintnanace Software.jpg', 'yes', NULL, '1', '2019-03-20 02:25:11', '2019-05-01 11:35:36'),
(18, 'الإداره القانونية', 'Legal Department', 'Ofzaq.curve-bg.png', 'yes', NULL, '1', '2019-04-30 22:48:16', '2019-05-01 11:34:49');

-- --------------------------------------------------------

--
-- Table structure for table `deptadmins`
--

CREATE TABLE `deptadmins` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deptadmins`
--

INSERT INTO `deptadmins` (`id`, `userid`, `dept`, `doneby`, `created_at`, `updated_at`) VALUES
(19, '1', '1', '1', '2019-01-09 07:04:46', '2019-01-09 07:04:46'),
(20, '1', '2', '1', '2019-02-03 06:10:38', '2019-02-03 06:10:38'),
(21, '1', '9', '1', '2019-02-13 07:24:30', '2019-02-13 07:24:30'),
(22, '9', '9', '1', '2019-02-13 07:24:30', '2019-02-13 07:24:30'),
(23, '1', '10', '13', '2019-02-13 07:27:22', '2019-02-13 07:27:22'),
(24, '13', '10', '13', '2019-02-13 07:27:22', '2019-02-13 07:27:22'),
(26, '27', '12', '1', '2019-03-20 02:22:59', '2019-03-20 02:22:59'),
(27, '26', '13', '1', '2019-03-20 02:23:21', '2019-03-20 02:23:21'),
(30, '22', '16', '1', '2019-03-20 02:26:17', '2019-03-20 02:26:17'),
(40, '42', '18', '1', '2019-05-01 11:34:49', '2019-05-01 11:34:49'),
(41, '24', '15', '1', '2019-05-01 11:35:36', '2019-05-01 11:35:36'),
(43, '48', '14', '1', '2019-05-01 17:31:19', '2019-05-01 17:31:19'),
(44, '49', '14', '1', '2019-05-01 17:31:19', '2019-05-01 17:31:19'),
(45, '45', '11', '1', '2019-05-01 18:17:57', '2019-05-01 18:17:57'),
(46, '46', '11', '1', '2019-05-01 18:17:57', '2019-05-01 18:17:57'),
(47, '50', '11', '1', '2019-05-01 18:17:57', '2019-05-01 18:17:57');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `user`, `token`, `device`, `created_at`, `updated_at`) VALUES
(6, '1', 'dboGz08fYMA:APA91bGIWYlqhWK1o2COR_Tol-TRz6IrKyJy4TpJbFrZwowoEc7fJmJ1dw23WC7SY6OuAzp5M9DHvfp0nuRxApPBKvLy5RlaXnjl2cHHf_i4tLpHqqxkARdKFdV3bgkOWBbSZnyifWbw', 'android', '2019-03-17 08:51:57', '2019-03-17 08:51:57'),
(23, '1', 'dboGz08fYMA:APA91bGIWYlqhWK1o2COR_Tol-TRz6IrKyJy4TpJbFrZwowoEc7fJmJ1dw23WC7SY6OuAzp5M9DHvfp0nuRxApPBKvLy5RlaXnjl2cHHf_i4tLpHqqxkARdKFdV3bgkOWBbSZnyifWbw', 'android', '2019-03-17 08:57:35', '2019-03-17 08:57:35'),
(29, '4', 'fG1Tr7QhStk:APA91bHxFE5lSN0awPUMtG2iAtFhLVAGkz7ez3UVjCLq71KDohQ70pib3Xu5PFbCJF6qGQTJCNIKTAbKdSduwNhHxmEVwGtel__YIJLKw64ejYiiW7agVzOxR56O_dVlj8bGbeXQ5sbD', 'android', '2019-03-17 11:00:14', '2019-03-17 11:00:14'),
(50, '16', 'e27hnU6jYv0:APA91bEyK5iv8LECUDF8_TAVlVRhdNjn48LS_1M9ao_eUjXcWgPdMEoRcLrn8ROz5Q0-uCARX-31rvIh7-_H6gPht1FDLCBDGpGP69Z0nIKb7GXPCR6CIfr25ap9ORndZ-ZiKn6SK6Le', 'android', '2019-03-17 11:59:12', '2019-03-17 11:59:12'),
(76, '19', 'c6F_RbI4Ck8:APA91bEKZzwi44PH-zh1v5i5P3GhajSzTLTSkARwDSuFQA3Gie8EgDvVKoydQ91BHxw0BBe5jddnaLzjyky9jmzC6Y9g2Tr0wg78nOPaQhal2dqK-sROrps7KTUPCms8TAVDgxGpzobg', 'ios', '2019-05-15 15:08:00', '2019-05-15 15:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `ar_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `ar_name`, `en_name`, `doneby`, `created_at`, `updated_at`) VALUES
(1, 'الإدارة العليا', 'Top Managment', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`id`, `email`, `ip`, `other`, `created_at`, `updated_at`) VALUES
(4, 'dev_mohammed@hotmail.com', '127.0.0.1', '0', '2019-04-10 11:04:47', '2019-04-10 11:04:47'),
(5, 'dev_mohammed@hotmail.com', '127.0.0.1', '0', '2019-04-10 11:04:53', '2019-04-10 11:04:53'),
(6, 'dev_mohammed@hotmail.com', '127.0.0.1', '0', '2019-04-10 11:04:56', '2019-04-10 11:04:56'),
(7, 'dev_mohammed@hotmail.com', '127.0.0.1', '0', '2019-04-10 11:04:58', '2019-04-10 11:04:58'),
(8, 'admin@email.com', '197.61.245.56', '0', '2019-04-10 16:09:00', '2019-04-10 16:09:00'),
(9, 'Hassans@ream.com.kw', '154.185.18.225', '0', '2019-04-11 12:05:37', '2019-04-11 12:05:37'),
(10, 'Hassans@ream.com.kw', '154.185.18.225', '0', '2019-04-11 12:05:50', '2019-04-11 12:05:50'),
(11, 'Hassans@ream.com.kw', '154.185.18.225', '0', '2019-04-11 12:06:05', '2019-04-11 12:06:05'),
(12, 'Hassans@ream.com.kw', '154.185.18.225', '0', '2019-04-11 12:06:41', '2019-04-11 12:06:41'),
(13, 'Hassans@ream.com.kw', '154.185.18.225', '0', '2019-04-11 12:06:46', '2019-04-11 12:06:46'),
(14, 'Hassans@ream.com.kw', '154.185.18.225', '0', '2019-04-11 12:06:51', '2019-04-11 12:06:51'),
(15, 'Hassans@ream.com.kw', '154.185.18.225', '0', '2019-04-11 12:06:54', '2019-04-11 12:06:54'),
(16, 'Hassans@ream.com.kw', '154.185.18.225', '0', '2019-04-11 12:06:57', '2019-04-11 12:06:57'),
(17, 'Hassans@ream.com.kw', '154.188.37.112', '0', '2019-04-11 13:46:13', '2019-04-11 13:46:13'),
(18, 'Hassans@ream.com.kw', '154.188.37.112', '0', '2019-04-11 13:46:19', '2019-04-11 13:46:19'),
(19, 'Hassans@ream.com.kw', '154.188.37.112', '0', '2019-04-11 13:46:23', '2019-04-11 13:46:23'),
(20, 'Hassans@ream.com.kw', '154.188.37.112', '0', '2019-04-11 13:46:36', '2019-04-11 13:46:36'),
(21, 'Hassans@ream.com.kw', '154.188.37.112', '0', '2019-04-11 13:46:41', '2019-04-11 13:46:41'),
(22, 'Hassans@ream.com.kw', '154.188.37.112', '0', '2019-04-11 13:46:49', '2019-04-11 13:46:49'),
(23, 'Hassans@ream.com.kw', '154.188.37.112', '0', '2019-04-11 13:46:53', '2019-04-11 13:46:53'),
(24, 'Hassans@ream.com.kw', '154.188.37.112', '0', '2019-04-11 13:46:57', '2019-04-11 13:46:57'),
(25, 'juzer@ream.com.kw', '154.188.37.112', '0', '2019-04-11 13:52:38', '2019-04-11 13:52:38'),
(26, 'juzer@ream.com.kw', '154.188.37.112', '0', '2019-04-11 13:52:50', '2019-04-11 13:52:50'),
(27, 'eyad@reamcom.kw', '154.188.37.112', '0', '2019-04-11 13:53:26', '2019-04-11 13:53:26'),
(28, 'eyad@reamcom.kw', '154.188.37.112', '0', '2019-04-11 13:53:34', '2019-04-11 13:53:34'),
(29, 'juzer@ream.com.kw', '154.185.12.36', '0', '2019-04-15 16:59:55', '2019-04-15 16:59:55'),
(30, 'juzer@ream.com.kw', '154.185.12.36', '0', '2019-04-15 17:01:03', '2019-04-15 17:01:03'),
(31, 'juzer@ream.com.kw', '154.185.12.36', '0', '2019-04-15 17:01:13', '2019-04-15 17:01:13'),
(32, 'eyad@reamcom.kw', '154.185.12.36', '0', '2019-04-15 17:01:40', '2019-04-15 17:01:40'),
(33, 'eyad@reamcom.kw', '154.185.12.36', '0', '2019-04-15 17:01:51', '2019-04-15 17:01:51'),
(34, 'eyad@ream.com.kw', '154.185.12.36', '0', '2019-04-15 17:02:17', '2019-04-15 17:02:17'),
(35, 'eyad@ream.com.kw', '154.185.12.36', '0', '2019-04-15 17:02:37', '2019-04-15 17:02:37'),
(36, 'eyad@ream.com.kw', '154.185.12.36', '0', '2019-04-15 17:02:51', '2019-04-15 17:02:51'),
(37, 'Hassans@ream.com.kw', '154.189.56.77', '0', '2019-04-15 17:31:44', '2019-04-15 17:31:44'),
(38, 'Hassans@ream.com.kw', '154.189.56.77', '0', '2019-04-15 17:32:53', '2019-04-15 17:32:53'),
(39, 'Hassans@ream.com.kw', '154.189.56.77', '0', '2019-04-15 17:33:09', '2019-04-15 17:33:09'),
(40, 'Hassans@ream.com.kw', '154.189.56.77', '0', '2019-04-15 17:33:18', '2019-04-15 17:33:18'),
(41, 'Hassans@ream.com.kw', '154.189.56.77', '0', '2019-04-15 17:33:26', '2019-04-15 17:33:26'),
(42, 'Hassans@ream.com.kw', '154.189.56.77', '0', '2019-04-15 17:33:36', '2019-04-15 17:33:36'),
(43, 'admin@ream.com.kw', '197.61.0.234', '0', '2019-04-29 17:27:11', '2019-04-29 17:27:11'),
(44, 'admin@ream.com.kw', '41.37.72.205', '0', '2019-04-29 17:27:36', '2019-04-29 17:27:36'),
(45, 'admin@ream.com.kw', '197.61.0.234', '0', '2019-04-29 17:27:45', '2019-04-29 17:27:45'),
(46, 'Ream_Client@ream.com.kw', '197.61.0.234', '0', '2019-04-29 17:28:48', '2019-04-29 17:28:48'),
(47, 'admin@ream.com.kw', '41.37.72.205', '0', '2019-04-29 17:29:35', '2019-04-29 17:29:35'),
(48, 'admin@ream.com.kw', '197.61.105.184', '0', '2019-04-29 17:30:00', '2019-04-29 17:30:00'),
(49, 'admin@ream.com.kw', '197.246.173.156', '0', '2019-04-30 17:49:56', '2019-04-30 17:49:56'),
(50, 'admin@ream.com.kw', '197.61.201.210', '0', '2019-04-30 18:03:30', '2019-04-30 18:03:30'),
(51, 'admin@ream.com.kw', '197.61.211.241', '0', '2019-04-30 18:03:55', '2019-04-30 18:03:55'),
(52, 'admin@ream.com.kw', '197.61.201.210', '0', '2019-04-30 18:04:04', '2019-04-30 18:04:04'),
(53, 'Ream_Client@ream.com.kw', '197.61.32.76', '0', '2019-04-30 18:05:37', '2019-04-30 18:05:37'),
(54, 'admin@ream.com.kw', '197.61.32.76', '0', '2019-04-30 18:05:53', '2019-04-30 18:05:53'),
(55, 'admin@emial.com', '197.246.173.156', '0', '2019-05-01 16:14:37', '2019-05-01 16:14:37'),
(56, 'admin@email.com', '197.61.33.90', '0', '2019-05-05 11:14:38', '2019-05-05 11:14:38'),
(57, 'admin@email.com', '41.36.104.111', '0', '2019-05-05 11:14:46', '2019-05-05 11:14:46'),
(58, 'admin@email.com', '41.36.104.111', '0', '2019-05-05 11:14:53', '2019-05-05 11:14:53'),
(59, 'admin@email.com', '41.37.70.177', '0', '2019-05-13 14:52:57', '2019-05-13 14:52:57'),
(60, 'admin@email.com', '41.37.70.177', '0', '2019-05-13 14:53:29', '2019-05-13 14:53:29'),
(61, 'admin@email.com', '41.36.103.159', '0', '2019-05-15 15:47:29', '2019-05-15 15:47:29'),
(62, 'admin@email.com', '197.61.49.244', '0', '2019-05-15 15:47:41', '2019-05-15 15:47:41'),
(63, 'admin@email.com', '41.36.103.159', '0', '2019-05-15 15:48:00', '2019-05-15 15:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_comments_table', 1),
(2, '2014_10_12_000000_create_natures_table', 1),
(3, '2014_10_12_000000_create_partners_table', 1),
(4, '2014_10_12_000000_create_projects_table', 1),
(5, '2014_10_12_000000_create_tenderVendors_table', 1),
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2017_10_25_114114_create_sites_table', 1),
(9, '2017_10_25_114247_create_newsletters_table', 1),
(10, '2017_10_25_114353_create_permissions_table', 1),
(11, '2017_10_25_152904_create_groups_table', 1),
(12, '2017_10_28_213328_create_attachs_table', 1),
(13, '2017_10_28_213328_create_cities_table', 1),
(14, '2017_10_28_213328_create_countries_table', 1),
(15, '2017_10_28_213328_create_departments_table', 1),
(16, '2017_10_28_213328_create_nations_table', 1),
(17, '2017_10_28_213328_create_news_table', 1),
(18, '2017_10_28_213328_create_pages_table', 1),
(19, '2017_10_28_213328_create_specializations_table', 1),
(20, '2017_10_28_213328_create_tenders_table', 1),
(21, '2017_10_28_213328_create_useragents_table', 1),
(22, '2017_10_28_213328_create_userdepts_table', 1),
(23, '2017_10_28_213328_create_usernatures_table', 1),
(24, '2017_10_28_213328_create_userspecs_table', 1),
(25, '2017_11_27_212450_create_slider_table', 1),
(26, '2017_11_27_230559_create_contact_table', 1),
(27, '2017_12_09_140937_create_api_key_table', 1),
(28, '2017_12_10_082737_create_notification_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nations`
--

CREATE TABLE `nations` (
  `id` int(10) UNSIGNED NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `ar_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nations`
--

INSERT INTO `nations` (`id`, `active`, `ar_title`, `en_title`, `doneby`, `created_at`, `updated_at`) VALUES
(1, 'yes', 'مصري', 'Egyptian', '1', '2018-12-26 07:07:25', '2018-12-26 07:07:25'),
(2, 'yes', 'السعودي', 'saudi', '1', '2018-12-26 07:07:35', '2018-12-26 07:10:09'),
(3, 'yes', 'كويتي', 'Kuwaiti', '1', '2018-12-26 07:07:43', '2018-12-26 07:07:43');

-- --------------------------------------------------------

--
-- Table structure for table `natures`
--

CREATE TABLE `natures` (
  `id` int(10) UNSIGNED NOT NULL,
  `ar_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `natures`
--

INSERT INTO `natures` (`id`, `ar_title`, `en_title`, `active`, `doneby`, `created_at`, `updated_at`) VALUES
(1, 'موزع', 'Distributer', 'yes', '1', '2018-12-02 10:25:16', '2019-03-20 09:02:07'),
(2, 'وكيل', 'Agent', 'yes', '1', '2019-03-20 09:02:30', '2019-03-20 09:02:30'),
(3, 'مصنع', 'Manufacturer', 'yes', '1', '2019-03-20 09:02:54', '2019-03-20 09:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `inslide` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `image`, `ar_title`, `en_title`, `ar_desc`, `en_desc`, `inslide`, `doneby`, `created_at`, `updated_at`) VALUES
(1, 'BYIhG.boximg2.png', 'ما هو \"لوريم إيبسوم\" ؟', 'What is Lorem Ipsum?', '<p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p><div><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p></div><div><br></div>', '<p><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; text-align: left; float: right; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"></div></p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></span><br><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><div><br></div>', '1', '1', '2018-11-25 07:11:21', '2018-11-25 07:12:52'),
(2, 'ffisA.boximg8.png', 'ما أصله ؟', 'Where does it come from?', '<p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.</p><div><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.</p></div><div><br></div>', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><div><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p></div><div><br></div>', '1', '1', '2018-11-25 07:13:35', '2018-11-25 07:13:35'),
(3, '8h3zL.test2.png', 'القسم 1.10.32 من \"حول (Cicero) في سنة 45 قبل الميلاد', 'The standard Lorem Ipsum passage, used since the 1500s', '<p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.</p><div><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.</p></div><div><br></div>', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><div><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p></div><div><br></div>', '1', '1', '2018-11-25 07:15:09', '2018-12-11 11:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'mohammedtrika@gmail.com', '2018-11-14 07:00:44', '2018-11-14 07:00:44'),
(2, 'dev_mohammed@hotmail.com', '2018-12-11 12:43:04', '2018-12-11 12:43:04'),
(3, 'dev_moh@hotmail.com', '2018-12-11 12:44:25', '2018-12-11 12:44:25'),
(4, 'vv@nn.con', '2018-12-11 12:44:49', '2018-12-11 12:44:49'),
(5, 'dev_moh@jj.com', '2018-12-11 12:46:15', '2018-12-11 12:46:15'),
(6, 'dev@hh.com', '2018-12-11 12:47:37', '2018-12-11 12:47:37'),
(7, 'dd@ff.com', '2018-12-11 12:49:14', '2018-12-11 12:49:14'),
(8, 'dd@dd.cpm', '2018-12-11 12:50:50', '2018-12-11 12:50:50'),
(9, 'ee@ee.com', '2018-12-11 12:53:45', '2018-12-11 12:53:45'),
(10, 'ees@ee.com', '2018-12-11 12:54:53', '2018-12-11 12:54:53'),
(11, 'dd@dd.com', '2018-12-11 12:55:54', '2018-12-11 12:55:54'),
(12, 'user@user.cpm', '2018-12-12 05:08:57', '2018-12-12 05:08:57');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `done` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `user_type`, `country`, `platform`, `ar_message`, `en_message`, `read`, `done`, `created_at`, `updated_at`) VALUES
(10, '{\"id\":19,\"userid\":\"1\",\"dept\":\"1\",\"doneby\":\"1\",\"created_at\":\"2019-01-09 09:04:46\",\"updated_at\":\"2019-01-09 09:04:46\"}', NULL, NULL, 'web', 'نرجو ملء الاستبيان الخاص بالمناقصه (موضوع المناقصه 1)', 'Please Fill Survey of Tender (موضوع المناقصه بالانجليزي)', '0', NULL, '2019-02-04 09:23:12', '2019-02-04 09:23:12'),
(11, '15', NULL, NULL, 'all', 'rrrrrrrrrrrrrrrrr_معفي من الدفع', 'rrrrrrrrrrrrrrrrr_معفي من الدفع', '1', '1', '2019-03-05 11:06:54', '2019-03-05 11:07:01'),
(12, '15', NULL, NULL, 'all', 'فى انتظار الدفع لتاكيد العضويه_فى انتظار الدفع', 'فى انتظار الدفع لتاكيد العضويه_فى انتظار الدفع', '1', '1', '2019-03-05 11:11:12', '2019-03-05 11:11:33'),
(13, '19', NULL, NULL, 'all', 'المورد معفي_معفي من الدفع', 'المورد معفي_معفي من الدفع', '1', '1', '2019-03-13 13:05:06', '2019-03-13 13:23:05'),
(14, '19', NULL, NULL, 'web', 'يرجي تجديد اشتراكك', 'please renew Annual subscribtion', '1', NULL, '2019-03-13 13:13:41', '2019-03-13 13:23:05'),
(15, '19', NULL, NULL, 'web', 'يرجي تجديد اشتراكك', 'please renew Annual subscribtion', '1', NULL, '2019-03-13 13:13:59', '2019-03-13 13:23:05'),
(16, '19', NULL, NULL, 'web', 'يرجي تجديد اشتراكك', 'please renew Annual subscribtion', '1', NULL, '2019-03-13 13:13:59', '2019-03-13 13:23:05'),
(17, '19', NULL, NULL, 'web', 'يرجي تجديد اشتراكك', 'please renew Annual subscribtion', '1', NULL, '2019-03-13 13:17:14', '2019-03-13 13:23:05'),
(18, '19', NULL, NULL, 'web', 'يرجي تجديد اشتراكك', 'please renew Annual subscribtion', '1', NULL, '2019-03-13 13:17:14', '2019-03-13 13:23:05'),
(19, '19', NULL, NULL, 'web', 'يرجي تجديد اشتراكك', 'please renew Annual subscribtion', '1', NULL, '2019-03-13 13:17:14', '2019-03-13 13:23:05'),
(20, '19', NULL, NULL, 'all', 'ادفع_فى انتظار الدفع', 'ادفع_فى انتظار الدفع', '1', '1', '2019-03-13 13:20:37', '2019-03-13 13:23:05'),
(21, '19', NULL, NULL, 'web', 'يرجي تجديد اشتراكك', 'please renew Annual subscribtion', '1', NULL, '2019-03-13 13:27:16', '2019-03-13 13:49:42'),
(22, '19', NULL, NULL, 'web', 'يرجي تجديد اشتراكك', 'please renew Annual subscribtion', '1', NULL, '2019-03-13 13:27:16', '2019-03-13 13:49:42'),
(23, '19', NULL, NULL, 'web', 'يرجي تجديد اشتراكك', 'please renew Annual subscribtion', '1', NULL, '2019-03-13 13:27:16', '2019-03-13 13:49:42'),
(24, '19', NULL, NULL, 'web', 'يرجي تجديد اشتراكك', 'please renew Annual subscribtion', '1', NULL, '2019-03-13 13:44:24', '2019-03-13 13:49:42'),
(25, '19', NULL, NULL, 'all', 'yyyyy_معفي من الدفع', 'yyyyy_معفي من الدفع', '1', '1', '2019-03-13 13:49:15', '2019-03-13 13:49:42'),
(26, '19', NULL, NULL, 'web', 'يرجي تجديد اشتراكك', 'please renew Annual subscribtion', '1', NULL, '2019-03-13 13:52:23', '2019-03-13 13:53:11'),
(27, '19', NULL, NULL, 'all', 'h]tu_فى انتظار الدفع', 'h]tu_فى انتظار الدفع', '1', '1', '2019-03-13 13:53:34', '2019-03-13 13:53:47'),
(28, '19', NULL, NULL, 'all', 'تم تأكيد الدفع', 'Payment confirmed', '1', '0', '2019-03-13 13:57:57', '2019-03-13 13:58:48'),
(29, '19', NULL, NULL, 'all', 'axcsdcdcd_فى انتظار الدفع', 'axcsdcdcd_فى انتظار الدفع', '1', '1', '2019-03-17 11:05:17', '2019-03-17 11:06:19'),
(30, '19', NULL, NULL, 'all', 'فى انتظار تأكيد الدفع', 'Waiting Payment confirmation', '1', '0', '2019-03-20 00:19:20', '2019-03-20 00:21:14'),
(31, '19', NULL, NULL, 'all', 'تم تأكيد الدفع', 'Payment confirmed', '1', '0', '2019-03-20 00:20:59', '2019-03-20 00:21:14'),
(32, '19', NULL, NULL, 'web', ' تم ترسية المناقصة(last tender) عليك', 'The tender (last tender) was awarded to you', '1', NULL, '2019-03-20 00:30:02', '2019-03-20 00:30:24'),
(33, '19', NULL, NULL, 'all', 'فى انتظار تأكيد الدفع', 'Waiting Payment confirmation', '1', '0', '2019-03-20 07:59:05', '2019-03-20 08:03:40'),
(34, '19', NULL, NULL, 'all', 'تم تسجيلك بنجاح_تم التسجيل بنجاح', 'تم تسجيلك بنجاح_تم التسجيل بنجاح', '1', '1', '2019-03-20 08:01:28', '2019-03-20 08:03:40'),
(35, '19', NULL, NULL, 'all', 'تم تأكيد الدفع', 'Payment confirmed', '1', '0', '2019-03-20 08:03:15', '2019-03-20 08:03:40'),
(36, '19', NULL, NULL, 'all', 'فى انتظار تأكيد الدفع', 'Waiting Payment confirmation', '1', '0', '2019-03-20 08:18:24', '2019-03-20 08:26:56'),
(37, '19', NULL, NULL, 'all', 'تم تأكيد الدفع', 'Payment confirmed', '1', '0', '2019-03-20 08:21:26', '2019-03-20 08:26:56'),
(38, '19', NULL, NULL, 'web', ' تم ترسية المناقصة(توريد آليات وأجهزة ووسائل نقل برية للإدارة العامة للإطفاء) عليك', 'The tender (Fire Service Directorate) was awarded to you', '1', NULL, '2019-03-20 08:29:13', '2019-03-20 08:30:10'),
(39, '19', NULL, NULL, 'all', 'فى انتظار تأكيد الدفع', 'Waiting Payment confirmation', '1', '0', '2019-03-20 08:51:18', '2019-03-20 08:52:51'),
(40, '19', NULL, NULL, 'all', 'تم تأكيد الدفع', 'Payment confirmed', '1', '0', '2019-03-20 08:52:45', '2019-03-20 08:52:51'),
(41, '14', NULL, NULL, 'all', 'معفي_معفي من الدفع', 'معفي_معفي من الدفع', '1', '23', '2019-03-31 17:15:34', '2019-03-31 17:16:07'),
(42, '17', NULL, NULL, 'all', 'ثببسث_معفي من الدفع', 'ثببسث_معفي من الدفع', '0', '23', '2019-04-01 10:01:54', '2019-04-01 10:01:54'),
(43, '15', NULL, NULL, 'all', 'fff_معفي من الدفع', 'fff_معفي من الدفع', '1', '1', '2019-04-01 18:58:27', '2019-04-01 19:03:30'),
(44, '15', NULL, NULL, 'all', 'dasa_معفي من الدفع', 'dasa_معفي من الدفع', '1', '1', '2019-04-01 19:07:24', '2019-04-01 19:07:30'),
(45, '15', NULL, NULL, 'all', 'فى انتظار تأكيد الدفع', 'Waiting Payment confirmation', '1', '0', '2019-04-01 19:18:22', '2019-04-01 19:21:52'),
(46, '15', NULL, NULL, 'all', 'تم تأكيد الدفع', 'Payment confirmed', '1', '0', '2019-04-01 19:19:26', '2019-04-01 19:21:52'),
(47, '15', NULL, NULL, 'web', ' تم ترسية المناقصة(استبدال البطاريات القديمة المغذية لمحطات المدارج وبرج المراقبة والمولدات الاحتياطية في مطار الكويت الدولي) عليك', 'The tender (Tender Subject) was awarded to you', '1', NULL, '2019-04-01 19:21:32', '2019-04-01 19:21:52'),
(48, '19', NULL, NULL, 'all', 'فى انتظار تأكيد الدفع', 'Waiting Payment confirmation', '1', '0', '2019-04-01 19:23:28', '2019-04-01 19:31:49'),
(49, '19', NULL, NULL, 'all', 'تم تأكيد الدفع', 'Payment confirmed', '1', '0', '2019-04-01 19:24:06', '2019-04-01 19:31:49'),
(50, '15', NULL, NULL, 'web', ' تم ترسية المناقصة(توريد وتركيب وتشغيل النظام الموحد لإدارة الموارد البشرية والتدري) عليك', 'The tender (ORACLE HCM FUSION CLOUD) was awarded to you', '0', NULL, '2019-04-17 15:08:17', '2019-04-17 15:08:17'),
(51, '15', NULL, NULL, 'web', ' تم ترسية المناقصة(استبدال البطاريات القديمة المغذية لمحطات المدارج وبرج المراقبة والمولدات الاحتياطية في مطار الكويت الدولي) عليك', 'The tender (Tender Subject) was awarded to you', '0', NULL, '2019-04-17 15:12:29', '2019-04-17 15:12:29'),
(52, '15', NULL, NULL, 'web', ' تم ترسية المناقصة(استبدال البطاريات القديمة المغذية لمحطات المدارج وبرج المراقبة والمولدات الاحتياطية في مطار الكويت الدولي) عليك', 'The tender (Tender Subject) was awarded to you', '0', NULL, '2019-04-17 15:15:14', '2019-04-17 15:15:14'),
(53, '15', NULL, NULL, 'web', ' تم ترسية المناقصة(توريد وتركيب وتشغيل النظام الموحد لإدارة الموارد البشرية والتدري) عليك', 'The tender (ORACLE HCM FUSION CLOUD) was awarded to you', '0', NULL, '2019-05-08 14:36:21', '2019-05-08 14:36:21');

-- --------------------------------------------------------

--
-- Table structure for table `notifyusers`
--

CREATE TABLE `notifyusers` (
  `id` int(10) UNSIGNED NOT NULL,
  `from` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ar_msg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_msg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `ar_bio` text CHARACTER SET utf8,
  `en_bio` text CHARACTER SET utf8,
  `ar_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `ar_bio`, `en_bio`, `ar_title`, `en_title`, `ar_desc`, `en_desc`, `position`, `image`, `doneby`, `created_at`, `updated_at`) VALUES
(1, 'مدير أكبر محفظة عقارية في الكويت', 'Biggest Real Estate\r\nPortfolio Manager in Kuwait', 'عن شركة ريم العقارية', 'About REAM', '<div style=\"box-sizing: border-box; outline: none; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-size: 15px; font-family: Cairo, \" playfair=\"\" display\",=\"\" serif;=\"\" color:=\"\" rgb(137,=\"\" 137,=\"\" 137);=\"\" text-align:=\"\" start;\"=\"\"><h3 dir=\"rtl\" style=\"box-sizing: border-box; outline: none; font-family: ReamEnglishHeadersFont; line-height: 1.5em; color: rgb(13, 59, 112); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 24px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit;\">&nbsp; تأسست شركة ريم العقارية في العام 1993 كشركة كويتية مساهمة مقفلة تعمل في القطاع العقاري برأس مال قدره مليون دينار كويتي فقط . وبهدف تطوير أعمال الشركة ورغبة الملاك بتوسعة أنشطة الشركة محليا وخليجيا فقد تم زيادة رأس مال الشركة الى&nbsp;مبلغ&nbsp; ( 10.450.000 مليون دينار كويتي )، و ارتكزت \" ريم \" منذ إنشائها على أساس راسخ من العلاقة المتينة بين إدارة الشركة ومساهميها وعملائها، حيث تبنّت الشركة شعار شركاء موثوقون تأكيدا على فلسفتها الواضحة التي تنطلق من الخبرة&nbsp; و المهنية والاحترافية بالعمل يتميز بها فريق العمل و الدعم المستمر من المساهمين و الثقة الراسخة من عملائها مما أتاح لها أن تشهد نمواً وتطوراً ملحوظاً في أعمالها لتصبح&nbsp; الشركة العقارية الرائدة في السوق المحلي في إدارة العقارات ، ولعل ما يؤكد ذلك الحصة السوقية الكبيرة التي تنفرد بها الشركة&nbsp; وما حققته الشركة من تطور في أعمالها وأدائها وكذلك ما حققته من أرباح طيلة الفترة السابقة بدءاً من تأسيسها حتى يومنا هذا.</h3><p style=\"box-sizing: border-box; outline: none; font-family: ReamEnglishHeadersFont; line-height: 1.5em; color: rgb(13, 59, 112); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 24px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit;\"><a href=\"https://reamsite.com/\" target=\"_blank\">https://reamsite.com/</a><br></p></div><div style=\"box-sizing: border-box; outline: none; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-size: 15px; font-family: Cairo, \" playfair=\"\" display\",=\"\" serif;=\"\" color:=\"\" rgb(137,=\"\" 137,=\"\" 137);=\"\" text-align:=\"\" start;\"=\"\"><p style=\"box-sizing: border-box; outline: none; font-family: ReamEnglishHeadersFont; line-height: 1.5em; color: rgb(13, 59, 112); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 24px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit;\"><br></p></div><div style=\"box-sizing: border-box; outline: none; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-size: 15px; font-family: Cairo, \" playfair=\"\" display\",=\"\" serif;=\"\" color:=\"\" rgb(137,=\"\" 137,=\"\" 137);=\"\" text-align:=\"\" start;\"=\"\"><ul style=\"box-sizing: border-box; outline: none; margin-top: 10px; margin-bottom: 10px; margin-left: 20px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: ReamEnglishBodyFont; list-style-position: initial; list-style-image: initial;\"><li style=\"box-sizing: border-box; outline: none; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;\"><br></li></ul></div><ul class=\"about\">\r\n          \r\n          </ul>', '<div style=\"box-sizing: border-box; outline: none; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, sans-serif; font-size: 15px; color: rgb(137, 137, 137); text-align: start;\"><h3 style=\"text-align: left; box-sizing: border-box; outline: none; font-family: ReamEnglishHeadersFont; line-height: 1.5em; color: rgb(13, 59, 112); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 24px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit;\">About Us</h3><p style=\"text-align: left; box-sizing: border-box; outline: none; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: ReamEnglishBodyFont !important;\">Ream Real Estate Company was established in 1993 as a closed Kuwaiti shareholding company operating in the real estate sector with a capital of KD 1 million. Through the growth of the company\'s business and the desire of the owners to expand the company\'s activities locally and in the Gulf region, the company\'s capital was increased to (10.450.000 million KD) Since its establishment, Ream has built firm foundation between the management of the company and its shareholders and customers. The company has adopted the slogan of \"Trusted Partners\", emphasizing its clear philosophy which stems from the professional team and the continuous support of the shareholders and the firm confidence of its customers, which enabled it to witness growth and development in its work to become the leading real estate company in the local market in the Assets Management, which may be confirmed by the large market share the company achieved.</p></div><div style=\"box-sizing: border-box; outline: none; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, sans-serif; font-size: 15px; color: rgb(137, 137, 137); text-align: start;\"><h3 style=\"text-align: left; box-sizing: border-box; outline: none; font-family: ReamEnglishHeadersFont; line-height: 1.5em; color: rgb(13, 59, 112); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 24px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit;\"><a href=\"https://reamsite.com/\" target=\"_blank\">https://reamsite.com/</a><br></h3></div>', 'yes', 'cthrA.REAM_PTRN-1.png', '0', NULL, '2019-05-01 12:42:35'),
(2, 'مناقصات يتم طرحها للموردين من قبل شركه ريم العقاريه', 'Tenders offered to suppliers by REAM Real Estate Company', 'عن المناقصات', 'About Tenders', '<p style=\"text-align: right; \"><span lang=\"AR-SA\" style=\"text-align: justify; font-size: 12pt; font-family: Arial, sans-serif, serif, EmojiFont;\">تعرف بأنها مجموعة من الإجراءات النظامية التي تهدف إلى دعوة أكبر عدد ممكن من المناقصين لتقديم عطاءاتهم وعروضهم تمهيداً لاختيار الأنسب من بينها سواء يتعلق ذلك بجودة المادة المطلوب شراؤها أو بأسعارها أو بقية الشروط الأخرى المتمثلة بالكمية ووقت التجهيز وشروط الدفع والتسليم وغيرها من الأمور التي قد يكون لها تأثير مباشر أو غير مباشر في أداء هذه الوظيفة الهامة من وظائف&nbsp;</span><span lang=\"AR-KW\" style=\"text-align: justify; font-size: 12pt; font-family: Arial, sans-serif, serif, EmojiFont;\">الشركة</span><span lang=\"AR-SA\" style=\"text-align: justify; font-size: 12pt; font-family: Arial, sans-serif, serif, EmojiFont;\">.</span><br></p><p></p><p></p><div style=\"box-sizing: inherit; margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; text-align: right; float: right; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"></div><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" right;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"></p>', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"color: rgb(33, 33, 33); font-family: Arial, sans-serif, serif, EmojiFont; font-size: 16px; text-align: start;\">It is defined as a set of formal procedures aimed at inviting as many bidders as possible to submit their bids and offers in order to choose the most suitable ones, whether it relates to the quality of the item to be purchased or at the prices or other conditions of quantity, processing time, payment terms, delivery and other matters that may have Direct or indirect effect on the performance of this important function of the company.</span><br></p>', 'yes', '', '1', '2018-11-20 09:59:37', '2019-05-01 12:44:44'),
(3, NULL, NULL, 'سياسة الخصوصية', 'Privacy policy', '<p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p><div><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p></div><div><br></div>', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><div><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><div><br></div>', 'yes', 'NUS5O.sticky-logo.png', '1', '2018-12-02 10:08:47', '2018-12-02 10:08:47'),
(4, NULL, NULL, 'سياسة الموقع', 'Site Policy', '<p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p><div><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p></div><div><br></div>', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><div><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><div><br></div>', 'yes', 'X0XfR.sticky-logo.png', '1', '2018-12-02 10:09:18', '2018-12-02 10:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `userid`, `name`, `percent`, `nation`, `doneby`, `created_at`, `updated_at`) VALUES
(29, 1, 'اسم المشروع2', 'النسبه للعسودي', '2', '1', '2019-01-09 10:48:31', '2019-01-09 10:48:31'),
(30, 1, 'مصري', 'النسبه للمصري', '1', '1', '2019-01-09 10:48:31', '2019-01-09 10:48:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mohammedtrika@gmail.com', '$2y$10$bYwKWlccBmMfdTOJ4UuE5OxJAW3PJmhbrpBxsI.lQqdHrO8lB9krC', '2018-12-12 11:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adds` int(11) DEFAULT '0',
  `edit` int(11) DEFAULT '0',
  `remove` int(11) DEFAULT '0',
  `other` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `group_id`, `permission`, `adds`, `edit`, `remove`, `other`, `created_at`, `updated_at`) VALUES
(121, 10, 'site', 0, 0, 0, 0, '2019-02-12 07:18:46', '2019-02-12 07:18:46'),
(123, 11, 'site', 0, 0, 0, 0, '2019-02-12 07:22:20', '2019-02-12 07:22:20'),
(124, 12, 'site', 0, 0, 0, 0, '2019-02-12 07:23:04', '2019-02-12 07:23:04'),
(125, 12, 'admins', 0, 0, 0, 0, '2019-02-12 07:23:04', '2019-02-12 07:23:04'),
(306, 24, 'slider', 1, 1, 1, NULL, '2019-03-20 02:14:09', '2019-03-20 02:14:09'),
(307, 24, 'pages', 1, 1, 1, NULL, '2019-03-20 02:14:09', '2019-03-20 02:14:09'),
(308, 24, 'admins', 1, 1, 1, NULL, '2019-03-20 02:14:09', '2019-03-20 02:14:09'),
(309, 24, 'countries', 1, 1, 1, NULL, '2019-03-20 02:14:09', '2019-03-20 02:14:09'),
(310, 24, 'cities', 1, 1, 1, NULL, '2019-03-20 02:14:09', '2019-03-20 02:14:09'),
(311, 24, 'departments', 1, 1, 1, NULL, '2019-03-20 02:14:09', '2019-03-20 02:14:09'),
(312, 24, 'specializations', 1, 1, 1, NULL, '2019-03-20 02:14:09', '2019-03-20 02:14:09'),
(313, 24, 'nations', 1, 1, 1, NULL, '2019-03-20 02:14:09', '2019-03-20 02:14:09'),
(314, 24, 'natures', 1, 1, 1, NULL, '2019-03-20 02:14:09', '2019-03-20 02:14:09'),
(315, 24, 'tenders', 1, 1, 1, 1, '2019-03-20 02:14:09', '2019-03-20 02:14:09'),
(316, 24, 'survey', 1, 1, 1, NULL, '2019-03-20 02:14:09', '2019-03-20 02:14:09'),
(317, 24, 'vendors', 1, 1, NULL, 1, '2019-03-20 02:14:09', '2019-03-20 02:14:09'),
(318, 24, 'newsletter', 1, NULL, 1, NULL, '2019-03-20 02:14:09', '2019-03-20 02:14:09'),
(319, 24, 'transactions', 1, NULL, 1, NULL, '2019-03-20 02:14:09', '2019-03-20 02:14:09'),
(320, 24, 'contact', 1, NULL, 1, NULL, '2019-03-20 02:14:09', '2019-03-20 02:14:09'),
(321, 24, 'awarded', NULL, NULL, NULL, 1, '2019-03-20 02:14:09', '2019-03-20 02:14:09'),
(322, 24, 'site', NULL, NULL, NULL, NULL, '2019-03-20 02:14:09', '2019-03-20 02:14:09'),
(374, 1, 'slider', 1, 1, 1, NULL, '2019-03-31 10:19:31', '2019-03-31 10:19:31'),
(375, 1, 'pages', 1, 1, 1, NULL, '2019-03-31 10:19:31', '2019-03-31 10:19:31'),
(376, 1, 'admins', 1, 1, 1, NULL, '2019-03-31 10:19:31', '2019-03-31 10:19:31'),
(377, 1, 'countries', 1, 1, 1, NULL, '2019-03-31 10:19:31', '2019-03-31 10:19:31'),
(378, 1, 'cities', 1, 1, 1, NULL, '2019-03-31 10:19:31', '2019-03-31 10:19:31'),
(379, 1, 'departments', 1, 1, 1, NULL, '2019-03-31 10:19:31', '2019-03-31 10:19:31'),
(380, 1, 'specializations', 1, 1, 1, NULL, '2019-03-31 10:19:31', '2019-03-31 10:19:31'),
(381, 1, 'nations', 1, 1, 1, NULL, '2019-03-31 10:19:31', '2019-03-31 10:19:31'),
(382, 1, 'natures', 1, 1, 1, NULL, '2019-03-31 10:19:31', '2019-03-31 10:19:31'),
(383, 1, 'tenders', 1, 1, 1, 1, '2019-03-31 10:19:31', '2019-03-31 10:19:31'),
(384, 1, 'survey', 1, 1, 1, NULL, '2019-03-31 10:19:31', '2019-03-31 10:19:31'),
(385, 1, 'vendors', 1, 1, NULL, 1, '2019-03-31 10:19:31', '2019-03-31 10:19:31'),
(386, 1, 'newsletter', 1, NULL, 1, NULL, '2019-03-31 10:19:31', '2019-03-31 10:19:31'),
(387, 1, 'transactions', 1, NULL, 1, NULL, '2019-03-31 10:19:31', '2019-03-31 10:19:31'),
(388, 1, 'contact', 1, NULL, 1, NULL, '2019-03-31 10:19:31', '2019-03-31 10:19:31'),
(389, 1, 'awarded', NULL, NULL, NULL, 1, '2019-03-31 10:19:31', '2019-03-31 10:19:31'),
(390, 1, 'site', NULL, NULL, NULL, NULL, '2019-03-31 10:19:31', '2019-03-31 10:19:31'),
(612, 42, 'slider', 1, 1, 1, NULL, '2019-04-30 18:03:58', '2019-04-30 18:03:58'),
(613, 42, 'pages', 1, 1, 1, NULL, '2019-04-30 18:03:58', '2019-04-30 18:03:58'),
(614, 42, 'admins', 1, 1, 1, NULL, '2019-04-30 18:03:58', '2019-04-30 18:03:58'),
(615, 42, 'countries', 1, 1, 1, NULL, '2019-04-30 18:03:58', '2019-04-30 18:03:58'),
(616, 42, 'cities', 1, 1, 1, NULL, '2019-04-30 18:03:58', '2019-04-30 18:03:58'),
(617, 42, 'departments', 1, 1, 1, NULL, '2019-04-30 18:03:58', '2019-04-30 18:03:58'),
(618, 42, 'specializations', 1, 1, 1, NULL, '2019-04-30 18:03:58', '2019-04-30 18:03:58'),
(619, 42, 'nations', 1, 1, 1, NULL, '2019-04-30 18:03:58', '2019-04-30 18:03:58'),
(620, 42, 'natures', 1, 1, 1, NULL, '2019-04-30 18:03:58', '2019-04-30 18:03:58'),
(621, 42, 'tenders', 1, 1, 1, 1, '2019-04-30 18:03:58', '2019-04-30 18:03:58'),
(622, 42, 'survey', 1, 1, 1, NULL, '2019-04-30 18:03:58', '2019-04-30 18:03:58'),
(623, 42, 'vendors', 1, 1, NULL, 1, '2019-04-30 18:03:58', '2019-04-30 18:03:58'),
(624, 42, 'newsletter', 1, NULL, 1, NULL, '2019-04-30 18:03:58', '2019-04-30 18:03:58'),
(625, 42, 'transactions', 1, NULL, 1, NULL, '2019-04-30 18:03:58', '2019-04-30 18:03:58'),
(626, 42, 'contact', 1, NULL, 1, NULL, '2019-04-30 18:03:58', '2019-04-30 18:03:58'),
(627, 42, 'awarded', NULL, NULL, NULL, 1, '2019-04-30 18:03:58', '2019-04-30 18:03:58'),
(628, 42, 'site', NULL, NULL, NULL, NULL, '2019-04-30 18:03:58', '2019-04-30 18:03:58'),
(629, 44, 'slider', 1, 1, 1, NULL, '2019-05-01 11:05:55', '2019-05-01 11:05:55'),
(630, 44, 'pages', 1, 1, 1, NULL, '2019-05-01 11:05:55', '2019-05-01 11:05:55'),
(631, 44, 'admins', 1, 1, 1, NULL, '2019-05-01 11:05:55', '2019-05-01 11:05:55'),
(632, 44, 'countries', 1, 1, 1, NULL, '2019-05-01 11:05:55', '2019-05-01 11:05:55'),
(633, 44, 'cities', 1, 1, 1, NULL, '2019-05-01 11:05:55', '2019-05-01 11:05:55'),
(634, 44, 'departments', 1, 1, 1, NULL, '2019-05-01 11:05:55', '2019-05-01 11:05:55'),
(635, 44, 'specializations', 1, 1, 1, NULL, '2019-05-01 11:05:55', '2019-05-01 11:05:55'),
(636, 44, 'nations', 1, 1, 1, NULL, '2019-05-01 11:05:55', '2019-05-01 11:05:55'),
(637, 44, 'natures', 1, 1, 1, NULL, '2019-05-01 11:05:55', '2019-05-01 11:05:55'),
(638, 44, 'tenders', 1, 1, 1, 1, '2019-05-01 11:05:55', '2019-05-01 11:05:55'),
(639, 44, 'survey', 1, 1, 1, NULL, '2019-05-01 11:05:55', '2019-05-01 11:05:55'),
(640, 44, 'vendors', 1, 1, NULL, 1, '2019-05-01 11:05:55', '2019-05-01 11:05:55'),
(641, 44, 'newsletter', 1, NULL, 1, NULL, '2019-05-01 11:05:55', '2019-05-01 11:05:55'),
(642, 44, 'transactions', 1, NULL, 1, NULL, '2019-05-01 11:05:55', '2019-05-01 11:05:55'),
(643, 44, 'contact', 1, NULL, 1, NULL, '2019-05-01 11:05:55', '2019-05-01 11:05:55'),
(644, 44, 'awarded', NULL, NULL, NULL, 1, '2019-05-01 11:05:55', '2019-05-01 11:05:55'),
(645, 44, 'site', NULL, NULL, NULL, NULL, '2019-05-01 11:05:55', '2019-05-01 11:05:55'),
(646, 45, 'slider', 1, 1, 1, NULL, '2019-05-01 11:06:56', '2019-05-01 11:06:56'),
(647, 45, 'pages', 1, 1, 1, NULL, '2019-05-01 11:06:56', '2019-05-01 11:06:56'),
(648, 45, 'admins', 1, 1, 1, NULL, '2019-05-01 11:06:56', '2019-05-01 11:06:56'),
(649, 45, 'countries', 1, 1, 1, NULL, '2019-05-01 11:06:56', '2019-05-01 11:06:56'),
(650, 45, 'cities', 1, 1, 1, NULL, '2019-05-01 11:06:56', '2019-05-01 11:06:56'),
(651, 45, 'departments', 1, 1, 1, NULL, '2019-05-01 11:06:56', '2019-05-01 11:06:56'),
(652, 45, 'specializations', 1, 1, 1, NULL, '2019-05-01 11:06:56', '2019-05-01 11:06:56'),
(653, 45, 'nations', 1, 1, 1, NULL, '2019-05-01 11:06:56', '2019-05-01 11:06:56'),
(654, 45, 'natures', 1, 1, 1, NULL, '2019-05-01 11:06:56', '2019-05-01 11:06:56'),
(655, 45, 'tenders', 1, 1, 1, 1, '2019-05-01 11:06:56', '2019-05-01 11:06:56'),
(656, 45, 'survey', 1, 1, 1, NULL, '2019-05-01 11:06:56', '2019-05-01 11:06:56'),
(657, 45, 'vendors', 1, 1, NULL, 1, '2019-05-01 11:06:56', '2019-05-01 11:06:56'),
(658, 45, 'newsletter', 1, NULL, 1, NULL, '2019-05-01 11:06:56', '2019-05-01 11:06:56'),
(659, 45, 'transactions', 1, NULL, 1, NULL, '2019-05-01 11:06:56', '2019-05-01 11:06:56'),
(660, 45, 'contact', 1, NULL, 1, NULL, '2019-05-01 11:06:56', '2019-05-01 11:06:56'),
(661, 45, 'awarded', NULL, NULL, NULL, 1, '2019-05-01 11:06:56', '2019-05-01 11:06:56'),
(662, 45, 'site', NULL, NULL, NULL, NULL, '2019-05-01 11:06:56', '2019-05-01 11:06:56'),
(663, 46, 'slider', 1, 1, 1, NULL, '2019-05-01 11:07:38', '2019-05-01 11:07:38'),
(664, 46, 'pages', 1, 1, 1, NULL, '2019-05-01 11:07:38', '2019-05-01 11:07:38'),
(665, 46, 'admins', 1, 1, 1, NULL, '2019-05-01 11:07:38', '2019-05-01 11:07:38'),
(666, 46, 'countries', 1, 1, 1, NULL, '2019-05-01 11:07:38', '2019-05-01 11:07:38'),
(667, 46, 'cities', 1, 1, 1, NULL, '2019-05-01 11:07:38', '2019-05-01 11:07:38'),
(668, 46, 'departments', 1, 1, 1, NULL, '2019-05-01 11:07:38', '2019-05-01 11:07:38'),
(669, 46, 'specializations', 1, 1, 1, NULL, '2019-05-01 11:07:38', '2019-05-01 11:07:38'),
(670, 46, 'nations', 1, 1, 1, NULL, '2019-05-01 11:07:38', '2019-05-01 11:07:38'),
(671, 46, 'natures', 1, 1, 1, NULL, '2019-05-01 11:07:38', '2019-05-01 11:07:38'),
(672, 46, 'tenders', 1, 1, 1, 1, '2019-05-01 11:07:38', '2019-05-01 11:07:38'),
(673, 46, 'survey', 1, 1, 1, NULL, '2019-05-01 11:07:38', '2019-05-01 11:07:38'),
(674, 46, 'vendors', 1, 1, NULL, 1, '2019-05-01 11:07:38', '2019-05-01 11:07:38'),
(675, 46, 'newsletter', 1, NULL, 1, NULL, '2019-05-01 11:07:38', '2019-05-01 11:07:38'),
(676, 46, 'transactions', 1, NULL, 1, NULL, '2019-05-01 11:07:38', '2019-05-01 11:07:38'),
(677, 46, 'contact', 1, NULL, 1, NULL, '2019-05-01 11:07:38', '2019-05-01 11:07:38'),
(678, 46, 'awarded', NULL, NULL, NULL, 1, '2019-05-01 11:07:38', '2019-05-01 11:07:38'),
(679, 46, 'site', NULL, NULL, NULL, NULL, '2019-05-01 11:07:38', '2019-05-01 11:07:38'),
(697, 48, 'slider', 1, 1, 1, NULL, '2019-05-01 11:21:03', '2019-05-01 11:21:03'),
(698, 48, 'pages', 1, 1, 1, NULL, '2019-05-01 11:21:03', '2019-05-01 11:21:03'),
(699, 48, 'admins', 1, 1, 1, NULL, '2019-05-01 11:21:03', '2019-05-01 11:21:03'),
(700, 48, 'countries', 1, 1, 1, NULL, '2019-05-01 11:21:03', '2019-05-01 11:21:03'),
(701, 48, 'cities', 1, 1, 1, NULL, '2019-05-01 11:21:03', '2019-05-01 11:21:03'),
(702, 48, 'departments', 1, 1, 1, NULL, '2019-05-01 11:21:03', '2019-05-01 11:21:03'),
(703, 48, 'specializations', 1, 1, 1, NULL, '2019-05-01 11:21:03', '2019-05-01 11:21:03'),
(704, 48, 'nations', 1, 1, 1, NULL, '2019-05-01 11:21:03', '2019-05-01 11:21:03'),
(705, 48, 'natures', 1, 1, 1, NULL, '2019-05-01 11:21:03', '2019-05-01 11:21:03'),
(706, 48, 'tenders', 1, 1, 1, 1, '2019-05-01 11:21:03', '2019-05-01 11:21:03'),
(707, 48, 'survey', 1, 1, 1, NULL, '2019-05-01 11:21:03', '2019-05-01 11:21:03'),
(708, 48, 'vendors', 1, 1, NULL, 1, '2019-05-01 11:21:03', '2019-05-01 11:21:03'),
(709, 48, 'newsletter', 1, NULL, 1, NULL, '2019-05-01 11:21:03', '2019-05-01 11:21:03'),
(710, 48, 'transactions', 1, NULL, 1, NULL, '2019-05-01 11:21:03', '2019-05-01 11:21:03'),
(711, 48, 'contact', 1, NULL, 1, NULL, '2019-05-01 11:21:03', '2019-05-01 11:21:03'),
(712, 48, 'awarded', NULL, NULL, NULL, 1, '2019-05-01 11:21:03', '2019-05-01 11:21:03'),
(713, 48, 'site', NULL, NULL, NULL, NULL, '2019-05-01 11:21:03', '2019-05-01 11:21:03'),
(714, 49, 'slider', 1, 1, 1, NULL, '2019-05-01 11:24:06', '2019-05-01 11:24:06'),
(715, 49, 'pages', 1, 1, 1, NULL, '2019-05-01 11:24:06', '2019-05-01 11:24:06'),
(716, 49, 'admins', 1, 1, 1, NULL, '2019-05-01 11:24:06', '2019-05-01 11:24:06'),
(717, 49, 'countries', 1, 1, 1, NULL, '2019-05-01 11:24:06', '2019-05-01 11:24:06'),
(718, 49, 'cities', 1, 1, 1, NULL, '2019-05-01 11:24:06', '2019-05-01 11:24:06'),
(719, 49, 'departments', 1, 1, 1, NULL, '2019-05-01 11:24:06', '2019-05-01 11:24:06'),
(720, 49, 'specializations', 1, 1, 1, NULL, '2019-05-01 11:24:06', '2019-05-01 11:24:06'),
(721, 49, 'nations', 1, 1, 1, NULL, '2019-05-01 11:24:06', '2019-05-01 11:24:06'),
(722, 49, 'natures', 1, 1, 1, NULL, '2019-05-01 11:24:06', '2019-05-01 11:24:06'),
(723, 49, 'tenders', 1, 1, 1, 1, '2019-05-01 11:24:06', '2019-05-01 11:24:06'),
(724, 49, 'survey', 1, 1, 1, NULL, '2019-05-01 11:24:06', '2019-05-01 11:24:06'),
(725, 49, 'vendors', 1, 1, NULL, 1, '2019-05-01 11:24:06', '2019-05-01 11:24:06'),
(726, 49, 'newsletter', 1, NULL, 1, NULL, '2019-05-01 11:24:06', '2019-05-01 11:24:06'),
(727, 49, 'transactions', 1, NULL, 1, NULL, '2019-05-01 11:24:06', '2019-05-01 11:24:06'),
(728, 49, 'contact', 1, NULL, 1, NULL, '2019-05-01 11:24:06', '2019-05-01 11:24:06'),
(729, 49, 'awarded', NULL, NULL, NULL, 1, '2019-05-01 11:24:06', '2019-05-01 11:24:06'),
(730, 49, 'site', NULL, NULL, NULL, NULL, '2019-05-01 11:24:06', '2019-05-01 11:24:06'),
(731, 50, 'slider', 1, 1, 1, NULL, '2019-05-01 18:17:19', '2019-05-01 18:17:19'),
(732, 50, 'pages', 1, 1, 1, NULL, '2019-05-01 18:17:19', '2019-05-01 18:17:19'),
(733, 50, 'admins', 1, 1, 1, NULL, '2019-05-01 18:17:19', '2019-05-01 18:17:19'),
(734, 50, 'countries', 1, 1, 1, NULL, '2019-05-01 18:17:19', '2019-05-01 18:17:19'),
(735, 50, 'cities', 1, 1, 1, NULL, '2019-05-01 18:17:19', '2019-05-01 18:17:19'),
(736, 50, 'departments', 1, 1, 1, NULL, '2019-05-01 18:17:19', '2019-05-01 18:17:19'),
(737, 50, 'specializations', 1, 1, 1, NULL, '2019-05-01 18:17:19', '2019-05-01 18:17:19'),
(738, 50, 'nations', 1, 1, 1, NULL, '2019-05-01 18:17:19', '2019-05-01 18:17:19'),
(739, 50, 'natures', 1, 1, 1, NULL, '2019-05-01 18:17:19', '2019-05-01 18:17:19'),
(740, 50, 'tenders', 1, 1, 1, 1, '2019-05-01 18:17:19', '2019-05-01 18:17:19'),
(741, 50, 'survey', 1, 1, 1, NULL, '2019-05-01 18:17:19', '2019-05-01 18:17:19'),
(742, 50, 'vendors', 1, 1, NULL, 1, '2019-05-01 18:17:19', '2019-05-01 18:17:19'),
(743, 50, 'newsletter', 1, NULL, 1, NULL, '2019-05-01 18:17:19', '2019-05-01 18:17:19'),
(744, 50, 'transactions', 1, NULL, 1, NULL, '2019-05-01 18:17:19', '2019-05-01 18:17:19'),
(745, 50, 'contact', 1, NULL, 1, NULL, '2019-05-01 18:17:19', '2019-05-01 18:17:19'),
(746, 50, 'awarded', NULL, NULL, NULL, 1, '2019-05-01 18:17:19', '2019-05-01 18:17:19'),
(747, 50, 'site', NULL, NULL, NULL, NULL, '2019-05-01 18:17:19', '2019-05-01 18:17:19');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relaeasedate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `userid`, `owner`, `name`, `value`, `period`, `relaeasedate`, `doneby`, `created_at`, `updated_at`) VALUES
(11, 1, 'المالك', 'اسم المشروع', 'القيمة', 'مدة الانجاز', '2019-01-02', '1', '2019-01-09 10:02:29', '2019-01-09 10:02:29'),
(12, 1, 'المالك', 'اسم المشروع2', 'القيمة', 'مدة الانجاز2', '2019-01-11', '1', '2019-01-09 10:02:29', '2019-01-09 10:02:29');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` int(10) UNSIGNED NOT NULL,
  `ar_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snapchat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `android` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ios` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_key` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_secret` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `ar_title`, `en_title`, `ar_desc`, `en_desc`, `tags`, `email`, `phone`, `mobile`, `fax`, `facebook`, `twitter`, `google`, `youtube`, `instagram`, `snapchat`, `android`, `ios`, `logo`, `lat`, `lng`, `api_key`, `api_secret`, `doneby`, `created_at`, `updated_at`) VALUES
(1, 'مناقصات ريم', 'Tender', 'مناقصات ريم', 'Tender Desc Tender Desc Tender Desc Tender Desc', 'مناقصات , ريم , عطاء', 'mohammedtrika@gmail.com', '1840888', '1840888', '222 86899', 'https://www.facebook.com/reamkwt/', 'https://twitter.com/ream_kuwait', NULL, NULL, 'https://www.instagram.com/ream_kuwait/', NULL, 'https://play.google.com/store/apps/details?id=com.ream.tender', NULL, 'fORlZ.sticky-logo.png', '29.768287711044042', '47.633821964263916', 'c8cc7ddc', 'CX5s7KyzP6Kkpp7B', '1', NULL, '2019-05-01 15:06:18');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `ar_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `inslide` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `ar_title`, `en_title`, `image`, `image_mobile`, `link`, `ar_desc`, `en_desc`, `inslide`, `doneby`, `created_at`, `updated_at`) VALUES
(1, 'المناقصات فى ريم', 'Tenders in Reem', 'mKlXp.10.jpg', '6QV4Q.10.jpg', '', '<p>مناقصات ريم هو نظام مصمم لتيسير عمليه العرض والإشتراك في المناقصات المطروحه من قبل شركة ريم كما يتيح النظام للموردين إمكانية التسجيل لدى ريم والدفع الالكتروني&nbsp;&nbsp;<br></p>', '<p>REAM Tenders is a system designed to facilitate the process of bidding and participating in tenders offered by REAM  The system also allows the suppliers to register with REAM and the electronic payment<br></p>', '0', '1', '2018-11-20 11:55:14', '2019-05-01 11:46:25'),
(2, 'ريم', 'REAM', 'yOGzp.11.jpg', 'mbAKv.11.jpg', 'http://ream.com.kw/', '<p>يمكننا أن نقدم لك أفضل الحلول التي يمكنك العثور عليها. يمكننا تطوير أفكارك للوصول إلى أفضل حل لعملك.</p><div><br></div>', '<div style=\"text-align: left; \"><font color=\"#222222\" face=\"Lato Regular, sans-serif\"><span style=\"font-size: 18px;\">We can offer you the best solutions you can find. We can develop your thoughts to reach the best solution for your business</span></font><br></div>', '0', '1', '2018-11-20 11:58:10', '2019-05-01 11:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

CREATE TABLE `specializations` (
  `id` int(10) UNSIGNED NOT NULL,
  `dept` int(11) NOT NULL,
  `ar_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specializations`
--

INSERT INTO `specializations` (`id`, `dept`, `ar_title`, `en_title`, `price`, `active`, `doneby`, `created_at`, `updated_at`) VALUES
(6, 11, 'أجهزة الكومبيوتر', 'Computers', '200', 'yes', '1', '2019-03-20 07:22:49', '2019-05-01 18:31:51'),
(7, 15, 'إستشارات هندسية', 'Engineering consultances', '200', 'yes', '1', '2019-03-20 07:23:35', '2019-05-01 12:15:03'),
(8, 14, 'إعلان', 'Advertising', '200', 'yes', '1', '2019-03-20 07:26:13', '2019-05-01 18:42:24'),
(9, 12, 'الحسابات', 'accountant', '10', 'yes', '1', '2019-03-20 07:27:20', '2019-03-20 07:27:20'),
(10, 16, 'الموارد البشريه', 'HR', '10', 'yes', '1', '2019-03-20 07:27:56', '2019-03-20 07:27:56'),
(11, 17, 'التسويق', 'markrting', '10', 'yes', '1', '2019-03-20 07:28:34', '2019-03-20 07:28:34'),
(12, 13, 'الجوده', 'Quality', '10', 'yes', '1', '2019-03-20 07:29:30', '2019-03-20 07:29:30'),
(13, 15, 'أعمال مدنيه', 'Civil Works', '200', 'yes', '24', '2019-04-22 16:11:26', '2019-04-22 16:11:26'),
(14, 18, 'الإداره القانونية', 'Legal', '150', 'yes', '1', '2019-04-30 23:04:55', '2019-05-01 18:42:49'),
(15, 14, 'أعمال ترفيهية', 'Entertainment', '200', 'yes', '1', '2019-04-30 23:10:42', '2019-04-30 23:10:42'),
(16, 14, 'زراعة', 'Agriculture', '200', 'yes', '1', '2019-04-30 23:11:48', '2019-04-30 23:11:48'),
(17, 14, 'نظافة', 'cleanliness', '200', 'yes', '1', '2019-04-30 23:12:26', '2019-04-30 23:12:26'),
(18, 14, 'حراسة', 'Security', '200', 'yes', '1', '2019-04-30 23:13:19', '2019-04-30 23:13:19'),
(19, 14, 'نظافة واجهات', 'Cleaner interfaces', '200', 'yes', '1', '2019-04-30 23:14:31', '2019-04-30 23:14:31'),
(20, 14, 'خدمة ايقاف السيارات', 'Parking Service', '200', 'yes', '1', '2019-04-30 23:15:00', '2019-04-30 23:15:00'),
(21, 14, 'حاويات', 'Containers', '200', 'yes', '1', '2019-04-30 23:15:41', '2019-04-30 23:15:41'),
(22, 14, 'مكافحة آفات', 'Pest Control', '200', 'yes', '1', '2019-04-30 23:16:25', '2019-04-30 23:16:25'),
(23, 14, 'تأمين', 'insurance', '200', 'yes', '1', '2019-04-30 23:16:53', '2019-05-01 18:43:17'),
(24, 15, 'صحي', 'Sanitation', '200', 'yes', '1', '2019-05-01 12:17:32', '2019-05-01 12:17:32'),
(25, 15, 'حمامات سباحة', 'Swimming Pools', '200', 'yes', '1', '2019-05-01 12:18:22', '2019-05-01 12:18:22'),
(26, 15, 'مصاعد', 'ELevators', '200', 'yes', '1', '2019-05-01 12:18:58', '2019-05-01 12:18:58'),
(27, 15, 'كهرباء', 'Electricity', '200', 'yes', '1', '2019-05-01 12:19:35', '2019-05-01 12:19:35'),
(28, 15, 'أبواب أوتماتيك', 'Automatic Doors', '200', 'yes', '1', '2019-05-01 12:20:19', '2019-05-01 12:20:19'),
(29, 15, 'معالجة كيميائية', 'Chemical Treatment', '200', 'yes', '1', '2019-05-01 12:21:46', '2019-05-01 12:21:46'),
(30, 15, 'إطفاء', 'Fire Extinguishing', '200', 'yes', '1', '2019-05-01 12:23:26', '2019-05-01 12:23:26'),
(31, 15, 'تكييف', 'Conditioning', '200', 'yes', '1', '2019-05-01 12:24:06', '2019-05-01 12:24:06'),
(32, 15, 'سلالم متحركة', 'Escalators', '200', 'yes', '1', '2019-05-01 12:24:59', '2019-05-01 12:24:59'),
(33, 15, 'سقالة ميكانيكية', 'Mechanical scaffold', '200', 'yes', '1', '2019-05-01 12:25:39', '2019-05-01 12:25:39'),
(34, 15, 'خدمات', 'Services', '200', 'yes', '1', '2019-05-01 12:26:14', '2019-05-01 12:26:14'),
(35, 15, 'هواتف', 'Phones', '200', 'yes', '1', '2019-05-01 12:26:40', '2019-05-01 12:26:40'),
(36, 15, 'صيانه انتركم', 'Intercom maintenance', '200', 'yes', '1', '2019-05-01 12:27:20', '2019-05-01 12:27:20'),
(37, 15, 'ستالايت', 'satellites', '200', 'yes', '1', '2019-05-01 12:28:29', '2019-05-01 12:28:29'),
(38, 15, 'خدمة الهواتف والإنترنت', 'Telephone and Internet service', '200', 'yes', '1', '2019-05-01 12:29:20', '2019-05-01 18:43:52'),
(39, 15, 'خدمات الإتصالات ونقل البيانات', 'Telecommunications and data transmission services', '200', 'yes', '1', '2019-05-01 12:30:15', '2019-05-01 12:30:15'),
(40, 15, 'صيانة مولدات', 'Maintenance of generators', '200', 'yes', '1', '2019-05-01 12:30:55', '2019-05-01 12:30:55'),
(41, 15, 'إدارة مشروع', 'Project Management', '200', 'yes', '1', '2019-05-01 12:31:33', '2019-05-01 12:31:33'),
(42, 15, 'صيانة طابعات', 'Maintenance of printers', '200', 'yes', '1', '2019-05-01 12:32:04', '2019-05-01 12:32:04'),
(43, 11, 'أجهزة البصمة', 'Fingerprint devices', '200', 'yes', '1', '2019-05-01 18:15:26', '2019-05-01 18:32:11'),
(44, 11, 'أجهزة الخوادم', 'Server hardware', '200', 'yes', '1', '2019-05-01 18:16:05', '2019-05-01 18:32:37'),
(45, 11, 'أنظمة الاتصالات', 'Communication systems', '200', 'yes', '1', '2019-05-01 18:33:28', '2019-05-01 18:33:28'),
(46, 11, 'أجهزة النسخ الاحتياطيه', 'Backup Devices', '200', 'yes', '1', '2019-05-01 18:35:44', '2019-05-01 18:35:44'),
(47, 11, 'حلول الشبكات', 'Network Solutions', '200', 'yes', '1', '2019-05-01 18:36:15', '2019-05-01 18:36:15'),
(48, 11, 'حلول الشبكات اللاسلكيه', 'Wireless Networking Solutions', '200', 'yes', '1', '2019-05-01 18:37:05', '2019-05-01 18:37:05'),
(49, 11, 'خدمات البنية التحتية', 'Infrastructure Services', '200', 'yes', '1', '2019-05-01 18:37:41', '2019-05-01 18:37:41'),
(50, 11, 'البث التلفزيوني عبر الانترنت', 'IPTV', '200', 'yes', '1', '2019-05-01 18:38:29', '2019-05-01 18:38:29'),
(51, 11, 'أجهزة التخزين المركزية', 'Central storage devices', '200', 'yes', '1', '2019-05-01 18:39:11', '2019-05-01 18:39:11'),
(52, 11, 'أنظمة الإتصالات المرئية', 'Visual Communication Systems', '200', 'yes', '1', '2019-05-01 18:39:48', '2019-05-01 18:41:22'),
(53, 11, 'أنظمة الإتصالات الصوتية', 'Voice Communications Systems', '200', 'yes', '1', '2019-05-01 18:40:18', '2019-05-01 18:42:11'),
(54, 11, 'أنظمة الأمان', 'security system', '200', 'yes', '1', '2019-05-01 18:45:29', '2019-05-01 18:45:29'),
(55, 11, 'برامج الأمان', 'Safety Programs', '200', 'yes', '1', '2019-05-01 18:48:18', '2019-05-01 18:48:18');

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE `survey` (
  `id` int(10) UNSIGNED NOT NULL,
  `ar_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey`
--

INSERT INTO `survey` (`id`, `ar_desc`, `en_desc`, `doneby`, `created_at`, `updated_at`) VALUES
(1, 'هل انت راضي من اداء المورد', 'are you satisfied  from vendor', '1', '2019-01-16 09:59:16', '2019-03-20 08:22:44'),
(2, 'هل تم التنفيذ قبل الموعد المحدد', 'did the vendor finish before deadline', '1', '2019-01-16 09:59:20', '2019-03-20 08:23:44');

-- --------------------------------------------------------

--
-- Table structure for table `surveyuser`
--

CREATE TABLE `surveyuser` (
  `id` int(10) UNSIGNED NOT NULL,
  `tender` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `ques` int(11) NOT NULL,
  `ans` int(11) NOT NULL,
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surveyuser`
--

INSERT INTO `surveyuser` (`id`, `tender`, `user`, `ques`, `ans`, `doneby`, `created_at`, `updated_at`) VALUES
(24, 5, 23, 1, 2, '23', '2019-04-01 19:29:43', '2019-04-01 19:29:43'),
(25, 5, 23, 2, 1, '23', '2019-04-01 19:29:44', '2019-04-01 19:29:44');

-- --------------------------------------------------------

--
-- Table structure for table `tenderfile`
--

CREATE TABLE `tenderfile` (
  `id` int(10) UNSIGNED NOT NULL,
  `tender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tenderfile`
--

INSERT INTO `tenderfile` (`id`, `tender`, `files`, `doneby`, `created_at`, `updated_at`) VALUES
(16, '9', 'vWjsA.13069_BKW.jpg', '1', '2019-01-08 08:07:44', '2019-01-08 08:07:44'),
(17, '9', 'ad2bR.1011616_1678891388991899_7633901933570930112_n.jpg', '1', '2019-01-08 08:15:01', '2019-01-08 08:15:01'),
(18, '10', '9DzLJ.47684392_1962793670468972_2365586073020530688_n.jpg', '1', '2019-01-08 08:16:22', '2019-01-08 08:16:22'),
(19, '10', 'Lo6TP.48080603_728248117541775_1955105014770827264_n.jpg', '1', '2019-01-08 08:16:22', '2019-01-08 08:16:22'),
(20, '10', 'GX5uc.48269148_10161062507975332_1951569582376353792_n.jpg', '1', '2019-01-08 08:16:22', '2019-01-08 08:16:22'),
(21, '7', 'H8m4F.2.jpeg', '1', '2019-01-09 06:39:40', '2019-01-09 06:39:40'),
(22, '7', 'Vv91v.2.jpg', '1', '2019-01-09 06:39:40', '2019-01-09 06:39:40'),
(23, '7', 'GdWRc.667.jpg', '1', '2019-01-09 06:39:40', '2019-01-09 06:39:40'),
(24, '7', 'ThS2H.sticky-logo.png', '1', '2019-01-09 06:39:40', '2019-01-09 06:39:40'),
(25, '11', 'REteu.premier-league-2018-xi-77c9f8c161b2bebe1e27df501dbe0106.jpg', '1', '2019-01-16 07:35:27', '2019-01-16 07:35:27'),
(26, '12', 'LnNmR._Mohammed-Mohammed-Reda.pdf', '1', '2019-01-31 07:45:50', '2019-01-31 07:45:50'),
(27, '13', 'fEMI5.عاطف.pdf', '1', '2019-03-17 12:34:44', '2019-03-17 12:34:44'),
(28, '14', 'XcVMZ.pay.png', '1', '2019-03-19 23:52:38', '2019-03-19 23:52:38'),
(29, '15', 'Zdv2t.تندر4.png', '1', '2019-03-20 00:01:46', '2019-03-20 00:01:46'),
(30, '1', 'SARrd.4.jpg', '1', '2019-03-20 07:36:51', '2019-03-20 07:36:51'),
(31, '2', 'RtwtJ.3.jpg', '1', '2019-03-20 07:40:45', '2019-03-20 07:40:45'),
(32, '3', 'gbe2y.1.jpg', '1', '2019-03-20 07:53:58', '2019-03-20 07:53:58'),
(33, '4', 'Mm43M.2.jpg', '1', '2019-03-20 07:57:09', '2019-03-20 07:57:09'),
(34, '5', '7jMnO.inc_logo.jpg', '1', '2019-03-31 14:04:42', '2019-03-31 14:04:42'),
(35, '6', 'ZQLNm.blue.png', '1', '2019-04-01 19:16:10', '2019-04-01 19:16:10'),
(36, '6', 'CDFmf.electric.png', '1', '2019-04-01 19:16:10', '2019-04-01 19:16:10'),
(37, '6', 'VkcZI.energy.png', '1', '2019-04-01 19:16:10', '2019-04-01 19:16:10');

-- --------------------------------------------------------

--
-- Table structure for table `tenders`
--

CREATE TABLE `tenders` (
  `id` int(10) UNSIGNED NOT NULL,
  `numbers` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept` int(11) NOT NULL,
  `specific` int(11) NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ar_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noprice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ar_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_notes` text COLLATE utf8mb4_unicode_ci,
  `en_notes` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insurance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noinsurance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `releasedate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `closing` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imptime` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `retail` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `forall` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT 'yes',
  `active` enum('yes','no','done') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tenders`
--

INSERT INTO `tenders` (`id`, `numbers`, `dept`, `specific`, `userid`, `image`, `ar_title`, `en_title`, `price`, `noprice`, `ar_desc`, `en_desc`, `ar_notes`, `en_notes`, `type`, `insurance`, `noinsurance`, `releasedate`, `closing`, `imptime`, `meeting`, `retail`, `forall`, `active`, `doneby`, `created_at`, `updated_at`) VALUES
(1, '1/2019/2020', 11, 6, NULL, 'L12Uj.4.jpg', 'تطوير ارشيف عام البلدية', 'Kuwait Municipality', '14', NULL, '<p>تطوير ارشيف عام البلدية&nbsp;<br></p>', '<p>Kuwait Municipality<br></p>', '<p>تطوير ارشيف عام البلدية&nbsp;<br></p>', '<p>Kuwait Municipality<br></p>', 'yes', NULL, 'no', '2019-03-14', '2019-03-22', '2019-03-23', '2019-03-18', 'yes', 'yes', 'yes', '1', '2019-03-20 07:36:51', '2019-03-20 07:36:51'),
(2, '2/2019/2020', 15, 7, NULL, '8TRFw.3.jpg', 'تنفيذ اعمال التشغيل و الصيانة الشاملة لوزارة الخارجية و مرافقه', 'Maintance for Ministry of Foreign Affairs', '10', NULL, '<p>تنفيذ اعمال التشغيل و الصيانة الشاملة و التطوير و الاستبدال لنظم التكييف و الكهرباء والصحى و الإنذار و المصاعد و الأجهزة المكتبية لوزارة الخارجية و مرافقه<br></p>', '<p> Maintance for Ministry of Foreign Affairs<br></p>', '<p>تنفيذ اعمال التشغيل و الصيانة الشاملة و التطوير و الاستبدال لنظم التكييف و الكهرباء والصحى و الإنذار و المصاعد و الأجهزة المكتبية لوزارة الخارجية و مرافقه<br></p>', '<p> Maintance for Ministry of Foreign Affairs<br></p>', 'yes', NULL, 'no', '2019-03-08', '2019-03-21', '2019-03-28', '2019-03-19', 'yes', 'yes', 'yes', '1', '2019-03-20 07:40:45', '2019-03-20 07:50:26'),
(3, '3/2019/2020', 13, 12, 'true', 'zxABB.1.jpg', 'توريد آليات وأجهزة ووسائل نقل برية للإدارة العامة للإطفاء توريد آليات وأجهزة ووسائل نقل برية للإدارة العامة للإطفاء', 'Fire Service Directorate', '10', NULL, '<p>توريد آليات وأجهزة ووسائل نقل برية للإدارة العامة للإطفاء<br></p>', '<p>Fire Service Directorate<br></p>', '<p>توريد آليات وأجهزة ووسائل نقل برية للإدارة العامة للإطفاء<br></p>', '<p>Fire Service Directorate<br></p>', 'yes', NULL, 'no', '2019-03-19', '2019-03-22', '2019-03-28', '2019-03-21', 'yes', 'yes', 'yes', '1', '2019-03-20 07:53:58', '2019-03-31 11:55:03'),
(4, '4/2019/2020', 15, 7, NULL, 'wkf3D.2.jpg', 'تنفيذ اعمال فحص شبكة الانذار ومكافحة الحريق لمنطقة (الاحمدي)', 'Ministry of Education', '10', NULL, '<p>تنفيذ اعمال فحص وتشغيل وصيانة شبكة الانذار ومكافحة الحريق<br></p>', '<p>Ministry of Education<br></p>', '<p>تنفيذ اعمال فحص وتشغيل وصيانة شبكة الانذار ومكافحة الحريق لمدارس تابعة لمنطقة (الاحمدي) التعليمية<br></p>', '<p>Ministry of Education<br></p>', 'yes', NULL, 'no', '2019-03-20', '2019-03-22', '2019-04-06', '2019-03-21', 'yes', 'yes', 'yes', '1', '2019-03-20 07:57:09', '2019-03-20 08:06:28'),
(5, '5/2019/2020', 11, 6, 'true', 'NaAUO.smart_building_solutions.png', 'استبدال البطاريات القديمة المغذية لمحطات المدارج وبرج المراقبة والمولدات الاحتياطية في مطار الكويت الدولي', 'Tender Subject', NULL, 'no', '<p>Tender Subject <br></p>', '<p>Tender Subject <br></p>', '<p>Tender Subject <br></p>', '<p>Tender Subject <br></p>', 'no', NULL, 'no', '2019-03-12', '2019-04-01', '2019-04-01', '2019-03-30', 'yes', NULL, 'yes', '1', '2019-03-31 14:04:42', '2019-04-01 19:21:32'),
(6, '6/2019/2020', 11, 6, 'true', 'ZOI7E.electric.png', 'توريد وتركيب وتشغيل النظام الموحد لإدارة الموارد البشرية والتدري', 'ORACLE HCM FUSION CLOUD', '10', NULL, '<p>sss</p>', '<p>ss</p>', '<p>ssS</p>', '<p>Sss</p>', 'yes', NULL, 'no', '2019-03-12', '2019-04-02', '2019-04-18', '2019-03-31', 'no', NULL, 'yes', '1', '2019-04-01 19:16:10', '2019-04-17 15:08:17');

-- --------------------------------------------------------

--
-- Table structure for table `tenderspecials`
--

CREATE TABLE `tenderspecials` (
  `id` int(10) UNSIGNED NOT NULL,
  `tender` int(11) NOT NULL,
  `vendor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tenderspecials`
--

INSERT INTO `tenderspecials` (`id`, `tender`, `vendor`, `doneby`, `created_at`, `updated_at`) VALUES
(51, 12, '3', '1', '2019-02-14 12:30:57', '2018-02-13 12:30:57'),
(52, 12, '6', '1', '2019-02-14 12:30:57', '2018-02-13 12:30:57'),
(53, 12, '14', '1', '2019-02-14 12:30:57', '2018-02-13 12:30:57'),
(62, 13, '3', '1', '2019-03-17 12:40:06', '2019-03-17 12:40:06'),
(63, 13, '14', '1', '2019-03-17 12:40:06', '2019-03-17 12:40:06'),
(64, 13, '16', '1', '2019-03-17 12:40:06', '2019-03-17 12:40:06'),
(65, 13, '18', '1', '2019-03-17 12:40:06', '2019-03-17 12:40:06'),
(66, 13, '19', '1', '2019-03-17 12:40:06', '2019-03-17 12:40:06'),
(75, 14, '3', '1', '2019-03-19 23:56:59', '2019-03-19 23:56:59'),
(76, 14, '6', '1', '2019-03-19 23:56:59', '2019-03-19 23:56:59'),
(77, 14, '14', '1', '2019-03-19 23:56:59', '2019-03-19 23:56:59'),
(78, 14, '15', '1', '2019-03-19 23:56:59', '2019-03-19 23:56:59'),
(79, 14, '16', '1', '2019-03-19 23:56:59', '2019-03-19 23:56:59'),
(80, 14, '17', '1', '2019-03-19 23:56:59', '2019-03-19 23:56:59'),
(81, 14, '18', '1', '2019-03-19 23:56:59', '2019-03-19 23:56:59'),
(82, 14, '19', '1', '2019-03-19 23:56:59', '2019-03-19 23:56:59'),
(99, 15, '19', '1', '2019-03-20 00:34:39', '2019-03-20 00:34:39'),
(100, 1, '3', '1', '2019-03-20 07:36:51', '2019-03-20 07:36:51'),
(101, 1, '6', '1', '2019-03-20 07:36:51', '2019-03-20 07:36:51'),
(102, 1, '14', '1', '2019-03-20 07:36:51', '2019-03-20 07:36:51'),
(103, 1, '15', '1', '2019-03-20 07:36:51', '2019-03-20 07:36:51'),
(104, 1, '16', '1', '2019-03-20 07:36:51', '2019-03-20 07:36:51'),
(105, 1, '17', '1', '2019-03-20 07:36:51', '2019-03-20 07:36:51'),
(106, 1, '18', '1', '2019-03-20 07:36:51', '2019-03-20 07:36:51'),
(107, 1, '19', '1', '2019-03-20 07:36:51', '2019-03-20 07:36:51'),
(116, 2, '3', '1', '2019-03-20 07:50:26', '2019-03-20 07:50:26'),
(117, 2, '6', '1', '2019-03-20 07:50:26', '2019-03-20 07:50:26'),
(118, 2, '14', '1', '2019-03-20 07:50:26', '2019-03-20 07:50:26'),
(119, 2, '15', '1', '2019-03-20 07:50:26', '2019-03-20 07:50:26'),
(120, 2, '16', '1', '2019-03-20 07:50:26', '2019-03-20 07:50:26'),
(121, 2, '17', '1', '2019-03-20 07:50:26', '2019-03-20 07:50:26'),
(122, 2, '18', '1', '2019-03-20 07:50:26', '2019-03-20 07:50:26'),
(123, 2, '19', '1', '2019-03-20 07:50:26', '2019-03-20 07:50:26'),
(148, 4, '3', '1', '2019-03-20 08:06:28', '2019-03-20 08:06:28'),
(149, 4, '6', '1', '2019-03-20 08:06:28', '2019-03-20 08:06:28'),
(150, 4, '14', '1', '2019-03-20 08:06:28', '2019-03-20 08:06:28'),
(151, 4, '15', '1', '2019-03-20 08:06:28', '2019-03-20 08:06:28'),
(152, 4, '16', '1', '2019-03-20 08:06:28', '2019-03-20 08:06:28'),
(153, 4, '17', '1', '2019-03-20 08:06:28', '2019-03-20 08:06:28'),
(154, 4, '18', '1', '2019-03-20 08:06:28', '2019-03-20 08:06:28'),
(155, 4, '19', '1', '2019-03-20 08:06:28', '2019-03-20 08:06:28'),
(156, 3, '3', '1', '2019-03-31 11:55:03', '2019-03-31 11:55:03'),
(157, 3, '6', '1', '2019-03-31 11:55:03', '2019-03-31 11:55:03'),
(158, 3, '14', '1', '2019-03-31 11:55:03', '2019-03-31 11:55:03'),
(159, 3, '15', '1', '2019-03-31 11:55:03', '2019-03-31 11:55:03'),
(160, 3, '16', '1', '2019-03-31 11:55:03', '2019-03-31 11:55:03'),
(161, 3, '17', '1', '2019-03-31 11:55:03', '2019-03-31 11:55:03'),
(162, 3, '18', '1', '2019-03-31 11:55:03', '2019-03-31 11:55:03'),
(163, 3, '19', '1', '2019-03-31 11:55:03', '2019-03-31 11:55:03'),
(171, 5, '15', '23', '2019-03-31 17:37:39', '2019-03-31 17:37:39'),
(172, 5, '16', '23', '2019-03-31 17:37:39', '2019-03-31 17:37:39'),
(173, 5, '17', '23', '2019-03-31 17:37:39', '2019-03-31 17:37:39'),
(174, 5, '18', '23', '2019-03-31 17:37:39', '2019-03-31 17:37:39'),
(175, 5, '19', '23', '2019-03-31 17:37:39', '2019-03-31 17:37:39'),
(176, 5, '28', '23', '2019-03-31 17:37:39', '2019-03-31 17:37:39'),
(177, 6, '3', '1', '2019-04-01 19:16:10', '2019-04-01 19:16:10'),
(178, 6, '6', '1', '2019-04-01 19:16:10', '2019-04-01 19:16:10'),
(179, 6, '14', '1', '2019-04-01 19:16:10', '2019-04-01 19:16:10'),
(180, 6, '15', '1', '2019-04-01 19:16:10', '2019-04-01 19:16:10'),
(181, 6, '16', '1', '2019-04-01 19:16:10', '2019-04-01 19:16:10'),
(182, 6, '17', '1', '2019-04-01 19:16:10', '2019-04-01 19:16:10'),
(183, 6, '18', '1', '2019-04-01 19:16:10', '2019-04-01 19:16:10'),
(184, 6, '19', '1', '2019-04-01 19:16:10', '2019-04-01 19:16:10'),
(185, 6, '28', '1', '2019-04-01 19:16:10', '2019-04-01 19:16:10');

-- --------------------------------------------------------

--
-- Table structure for table `tendervendors`
--

CREATE TABLE `tendervendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `tender` int(11) NOT NULL,
  `vendor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `files` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tendervendors`
--

INSERT INTO `tendervendors` (`id`, `tender`, `vendor`, `price`, `files`, `status`, `note`, `doneby`, `created_at`, `updated_at`) VALUES
(1, 3, '19', NULL, 'yes', 'CAPTURED', NULL, '19', '2019-03-20 08:14:41', '2019-03-20 08:24:57'),
(2, 4, '19', NULL, 'yes', 'CAPTURED', NULL, '19', '2019-03-20 08:51:05', '2019-03-20 10:13:45'),
(3, 5, '14', NULL, '', 'CAPTURED', NULL, '14', '2019-03-31 17:25:00', '2019-03-31 17:25:00'),
(4, 5, '19', NULL, '', 'CAPTURED', NULL, '19', '2019-04-01 07:15:31', '2019-04-01 07:15:31'),
(5, 5, '17', NULL, '', 'CAPTURED', NULL, '17', '2019-04-01 10:02:12', '2019-04-01 10:02:12'),
(6, 5, '15', NULL, '', 'CAPTURED', NULL, '15', '2019-04-01 19:09:29', '2019-04-01 19:09:29'),
(8, 6, '15', NULL, 'yes', 'CAPTURED', NULL, '15', '2019-04-01 19:17:01', '2019-04-01 19:20:10'),
(9, 6, '19', NULL, 'yes', 'CAPTURED', NULL, '19', '2019-04-01 19:23:10', '2019-04-01 19:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `histid` varchar(222) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PaymentID` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TrackID` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ref` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TranID` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PostDate` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(222) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `udf3` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `udf4` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Result` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `userid`, `histid`, `PaymentID`, `TrackID`, `Ref`, `TranID`, `PostDate`, `amount`, `udf3`, `udf4`, `Result`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '1550178501783510', '3791', '835117812023', '3303959511783510', '1218', '453', 'tender', '1', 'CAPTURED', 'success', '2018-12-17 12:51:44', '2018-12-17 12:51:44'),
(2, NULL, NULL, '1550178501783510', '3791', '835117812023', '3303959511783510', '1218', '555', 'sp', '56,57', 'CAPTURED', 'success', '2018-12-17 12:52:26', '2018-12-17 12:52:26'),
(3, '19', NULL, '4005019571690720', '8082', '907216797178', '9646338581690720', '2019-03-13', '650', 'special', ',75,76,77', 'CAPTURED', 'CAPTURED', '2019-03-13 13:57:57', '2019-03-13 13:57:57'),
(4, '19', NULL, '8388486180390790', '7360', NULL, NULL, '2019-03-20', '1', 'tender', '38', 'WAITING', 'WAITING', '2019-03-20 00:19:20', '2019-03-20 00:19:20'),
(5, '19', NULL, '8388486180390790', '7360', NULL, NULL, '2019-03-20', '1', 'tender', '38', 'CAPTURED', 'CAPTURED', '2019-03-20 00:20:59', '2019-03-20 00:20:59'),
(6, '19', NULL, '', '', NULL, NULL, '2019-03-20', '70', 'special', ',79,80,81,82,83,84,85', 'WAITING', 'WAITING', '2019-03-20 07:59:05', '2019-03-20 07:59:05'),
(7, '19', NULL, '', '', NULL, NULL, '2019-03-20', '70', 'special', ',79,80,81,82,83,84,85', 'CAPTURED', 'CAPTURED', '2019-03-20 08:03:15', '2019-03-20 08:03:15'),
(8, '19', NULL, '', '', NULL, NULL, '2019-03-20', '10', 'tender', '1', 'WAITING', 'WAITING', '2019-03-20 08:18:24', '2019-03-20 08:18:24'),
(9, '19', NULL, '', '', NULL, NULL, '2019-03-20', '10', 'tender', '1', 'CAPTURED', 'CAPTURED', '2019-03-20 08:21:26', '2019-03-20 08:21:26'),
(10, '19', NULL, '', '', NULL, NULL, '2019-03-20', '10', 'tender', '2', 'WAITING', 'WAITING', '2019-03-20 08:51:18', '2019-03-20 08:51:18'),
(11, '19', NULL, '', '', NULL, NULL, '2019-03-20', '10', 'tender', '2', 'CAPTURED', 'CAPTURED', '2019-03-20 08:52:45', '2019-03-20 08:52:45'),
(12, '15', NULL, '9561917172290910', '6194', NULL, NULL, '2019-04-01', '10', 'tender', '8', 'WAITING', 'WAITING', '2019-04-01 19:18:22', '2019-04-01 19:18:22'),
(13, '15', NULL, '9561917172290910', '6194', NULL, NULL, '2019-04-01', '10', 'tender', '8', 'CAPTURED', 'CAPTURED', '2019-04-01 19:19:26', '2019-04-01 19:19:26'),
(14, '19', NULL, '', '', NULL, NULL, '2019-04-01', '10', 'tender', '9', 'WAITING', 'WAITING', '2019-04-01 19:23:28', '2019-04-01 19:23:28'),
(15, '19', NULL, '', '', NULL, NULL, '2019-04-01', '10', 'tender', '9', 'CAPTURED', 'CAPTURED', '2019-04-01 19:24:06', '2019-04-01 19:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `useragents`
--

CREATE TABLE `useragents` (
  `id` int(10) UNSIGNED NOT NULL,
  `agentid` int(11) DEFAULT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registerdate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `useragents`
--

INSERT INTO `useragents` (`id`, `agentid`, `userid`, `name`, `nationality`, `registerdate`, `doneby`, `created_at`, `updated_at`) VALUES
(1, NULL, '1', 'اسم الوكاله', '2', '2019-01-03', '1', '2019-01-02 08:07:15', '2019-01-02 08:07:15'),
(2, NULL, '1', 'اسم الوكاله 2', '3', '2019-01-02', '1', '2019-01-02 08:07:15', '2019-01-02 08:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `userdepts`
--

CREATE TABLE `userdepts` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userdepts`
--

INSERT INTO `userdepts` (`id`, `userid`, `dept`, `doneby`, `created_at`, `updated_at`) VALUES
(77, '14', '1', '14', '2019-03-05 10:52:56', '2019-03-05 10:52:56'),
(78, '14', '3', '14', '2019-03-05 10:52:56', '2019-03-05 10:52:56'),
(79, '15', '1', '15', '2019-03-05 11:05:35', '2019-03-05 11:05:35'),
(80, '15', '2', '15', '2019-03-05 11:05:35', '2019-03-05 11:05:35'),
(81, '19', '1', '19', '2019-03-13 13:03:54', '2019-03-13 13:03:54'),
(82, '19', '2', '19', '2019-03-13 13:03:54', '2019-03-13 13:03:54'),
(83, '19', '4', '19', '2019-03-17 12:17:33', '2019-03-17 12:17:33'),
(84, '19', '11', '19', '2019-03-20 07:58:35', '2019-03-20 07:58:35'),
(85, '19', '12', '19', '2019-03-20 07:58:35', '2019-03-20 07:58:35'),
(86, '19', '13', '19', '2019-03-20 07:58:35', '2019-03-20 07:58:35'),
(87, '19', '14', '19', '2019-03-20 07:58:35', '2019-03-20 07:58:35'),
(88, '19', '15', '19', '2019-03-20 07:58:35', '2019-03-20 07:58:35'),
(89, '19', '16', '19', '2019-03-20 07:58:35', '2019-03-20 07:58:35'),
(90, '19', '17', '19', '2019-03-20 07:58:35', '2019-03-20 07:58:35'),
(91, '14', '11', '14', '2019-03-31 17:13:40', '2019-03-31 17:13:40'),
(92, '17', '11', '17', '2019-04-01 10:00:22', '2019-04-01 10:00:22'),
(93, '15', '11', '15', '2019-04-01 19:05:55', '2019-04-01 19:05:55');

-- --------------------------------------------------------

--
-- Table structure for table `usernatures`
--

CREATE TABLE `usernatures` (
  `id` int(10) UNSIGNED NOT NULL,
  `ntureid` int(11) NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usernatures`
--

INSERT INTO `usernatures` (`id`, `ntureid`, `userid`, `note`, `doneby`, `created_at`, `updated_at`) VALUES
(6, 1, '1', NULL, '1', '2019-02-03 07:27:59', '2019-02-03 07:27:59'),
(15, 1, '14', NULL, '14', '2019-03-31 17:13:40', '2019-03-31 17:13:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `block` int(11) DEFAULT NULL,
  `blockendat` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `civil` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `type` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `seen` enum('no','yes') COLLATE utf8mb4_unicode_ci NOT NULL,
  `isuser` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `commercial_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issuing_Authority` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issue_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staffno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `establishdate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `businessactivity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listedinstock` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankaccount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pobox` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signjob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signnation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registerationfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validlicense` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankinfoprint` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amended` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commercecertified` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialaffairs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signauth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `centralAgency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commregcer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profiles` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clients` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creditfacil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `paymentstatus` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topaystatus` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `group_id`, `block`, `blockendat`, `code`, `civil`, `name`, `username`, `email`, `password`, `active`, `type`, `seen`, `isuser`, `commercial_name`, `license_no`, `issuing_Authority`, `issue_date`, `expiry_date`, `staffno`, `establishdate`, `legal`, `businessactivity`, `listedinstock`, `bank`, `bankaccount`, `country`, `city`, `street`, `pobox`, `mobile`, `phone`, `fax`, `website`, `owner`, `jobtitle`, `national`, `sign`, `signjob`, `signnation`, `registerationfile`, `validlicense`, `bankinfoprint`, `amended`, `commercecertified`, `socialaffairs`, `signauth`, `centralAgency`, `commregcer`, `profiles`, `clients`, `creditfacil`, `status`, `doneby`, `paymentstatus`, `topaystatus`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '', '1525', NULL, 'مسؤل النظام', 'admin', 'admin@email.com', '$2y$10$xzLTt56FoH1DMVBd2wK.mO36GDhzxZfvE3nYdNObV.LqlPAlK18E2', 'yes', 'admin', 'no', 'yes', 'الاسم التجاري', '4235', 'جهة الاصدار', '2019-01-03', '2019-01-17', '5', NULL, 'الشكل القانوني', 'النشاط حسب الرخصه', NULL, 'اسم البنك الذي بتعامل معه المورد', 'رقم الحساب(ايبان)', '1', '3', 'الشارع والمبني', 'ص.ب', 'هاتف نقال', '201017395905', 'رقم فاكس', 'الموقع الالكتروني', 'المالك', 'المسمي الوظيفىي', '1', 'المخول', 'المسمي الوظيفي 2', '1', NULL, NULL, NULL, 'w4NAq.47684392_1962793670468972_2365586073020530688_n.jpg', NULL, NULL, 'sWTNO.24312608_1970063659874669_883924565868540968_n.jpg', 'JhJJU.48080603_728248117541775_1955105014770827264_n.jpg', 'titHP.24312608_1970063659874669_883924565868540968_n.jpg', 'Vkryb.24312608_1970063659874669_883924565868540968_n.jpg', 'vqoJu.48269148_10161062507975332_1951569582376353792_n.jpg', 'cwfiG.24910108_1351328188328671_3991959268908349452_n.jpg', '0', '0', NULL, NULL, 'oWPIFXHqOATABRbAbfwGtLZqHf8XwheNyuGkjqvV8uQS6DRUPcjf7ZOrjlGA', NULL, '2019-05-08 14:04:15'),
(2, 0, NULL, NULL, '', NULL, 'mohammed reda', 'dev', 'mohammedtrika@gmail.com', '$2y$10$dWCBjoHlrHfQyTECmoEqt.R49aOV59d1QHryNuZPcgswOf7SVatDm', 'yes', 'user', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+201517395905', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '', '2018-11-13 12:17:57', '2018-11-14 06:47:53'),
(3, 0, NULL, NULL, NULL, NULL, 'اسم المورد', 'admins', 'aa@aa.com', '$2y$10$uwDOficP7VRyFgECcfXtuu3tKZFKTAVLPzZm3911TzrxEfYk5dDHa', 'yes', 'user', 'yes', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '5517395905', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, '2018-12-02 07:47:21', '2019-03-13 13:03:57'),
(6, 0, NULL, NULL, '', NULL, 'محمد رضا', 'admin@email.com', 'admin@admin.com', '$2y$10$Gu8Eg.eT2ev6VNXuz5AAuePGc8q9TWGiin2vaBOUEVardU2p26QAK', 'yes', 'user', 'yes', 'no', 'mohamed mohamed', '13411', 'جهة الاصدار', '2018-12-20', '2018-12-20', 'عدد الموظفين', NULL, 'الشكل القانوني', 'النشاط حسب الرخصه', NULL, 'اسم البنك الذي بتعامل معه المورد', 'رقم الحساب(ايبان)', '2', '1', 'الشارع والمبني', 'ص.ب', 'هاتف نقال', '32423432', 'رقم فاكس', 'https://translate.google.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', 'CAPTURED', NULL, '3Sur6lbmcdEjxbAkzNEwHrLEfkFF7pw4fkjLka95KS01BwegXF1UiOVCp3PP', '2018-12-16 12:51:43', '2019-03-13 13:04:15'),
(14, 0, NULL, NULL, '', NULL, 'hany', 'eyad@ream.com.kw', 'hany@hany.com', '$2y$10$6H5gQk5qd7IRgBkvUOSaCecnDv3iUYhUXtBs24VI5TWMxQ5u10utK', 'yes', 'user', 'yes', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'freemoney', '0', 'pending', 'active', 'N5FsAepwhvYtJvpaSBZaZ1wgQI0520cdJy36ncs7toTLCkeUPdGSdc9aYnuI', '2019-02-14 06:22:41', '2019-03-31 17:15:34'),
(15, 0, NULL, NULL, '', NULL, 'ali', NULL, 'ali@ali.com', '$2y$10$uN8tUBKW04.raqLpvma4U.2CnisNNNQFX1YMT3xFskl2nJDyrAyBi', 'yes', 'user', 'yes', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12312312323', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'freemoney', '0', 'CAPTURED', 'active', 'Mfjs2PszfTAkiHGtukOIyJkfh6KCYaBZeOJxYSPhPRUjDmXLLVscJQwa43eR', '2019-03-04 10:19:59', '2019-04-01 19:19:26'),
(16, 0, NULL, NULL, '', NULL, 'hoda', 'hoda', 'hoda@gmail.com', '$2y$10$ItbbLLvx.JBNHEvRC4lBmujny5mcLCJxvw2Up1xTFtzYKyFk5Fet.', 'yes', 'user', 'yes', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '201013497741', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '', '2019-03-11 07:27:16', '2019-03-13 13:04:22'),
(17, 0, NULL, NULL, '', NULL, 'huda', 'huda', 'huda@gmail.com', '$2y$10$k2v26Q0ByV2G4iRDSlEy0.4dc1pxDU4JOX/uQ/W4ROnE2NwqIxF0e', 'yes', 'user', 'yes', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '201090883937', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'freemoney', '0', 'pending', 'active', '', '2019-03-11 07:31:00', '2019-04-01 10:01:54'),
(18, 0, NULL, NULL, '', NULL, 'hodaa', 'hodaa', 'hodaa@gmail.com', '$2y$10$TvHtUbS3U7SUsfYFAxrkzOvPmWRxlO.eaXVCk80m2cig6MlNmEnpC', 'yes', 'user', 'yes', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '201153111241', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '', '2019-03-11 07:35:22', '2019-03-13 13:04:28'),
(19, 0, NULL, NULL, '', NULL, 'REAM_Vendor', NULL, 'dev_mohammed@hotmail.com', '$2y$10$buNXVnyS0QuMTFiqy9SYgup.Nduc1dE9mAI7e7w6V7K9OH2xwRcCG', 'yes', 'user', 'yes', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '013755601', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', 'CAPTURED', 'active', 'gRKM8zukj7Ji959xugw9ClxWIueplq8jQT9RrMoh6GOBO6UQumo670aUIptl', '2019-03-13 11:29:45', '2019-05-01 13:28:05'),
(24, NULL, 0, '', NULL, '278122702998', 'حسن صبري', 'حسن صبري', 'Hassans@ream.com.kw', '$2y$10$nEKVCVZl60wZ.qpVUHNGd.P56a5aG5cb4QUDvifwYiQ9nDYA4wR4G', 'yes', 'admin', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '97326471', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, 'XSRX9A8X48mjJhAaIquWBftsKLYwIP9tSqeB5SrkdTtVmLRSridVy2HiNrVq', '2019-03-20 02:14:09', '2019-04-22 16:10:02'),
(28, 0, NULL, NULL, '', NULL, 'Mowareddd', 'eyad@ream.com.kw', 'Mowareddd@ream.com.kw', '$2y$10$HStXgDpA3AI8vW3X.mkgeuy/s9Kkh8r2Bs9ItZPQ2vk6Ry0kWx9T.', 'yes', 'user', 'yes', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123445666', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, 'waiting', NULL, '2019-03-31 11:01:25', '2019-03-31 17:21:31'),
(42, NULL, NULL, NULL, NULL, '288030700433', 'فوزان عبداللطيف احمد السنان', 'فوزان عبداللطيف احمد السنان', 'fowzan@ream.com.kw', '$2y$10$0PTDA8t6BXkGGtwGRrOMWuwnX6DpEmc72KwHzMDKxM0OlC86FEqJW', 'yes', 'admin', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22085957', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, '2019-04-30 18:03:58', '2019-04-30 18:03:58'),
(43, 0, NULL, NULL, NULL, NULL, 'شركة الاعمال الميكانيكية', 'FFM', 'info@ffm.com', '$2y$10$8uTvWLISr.bSvgziEEM0c.cqd4qK7TFOq0BKBhiwHCP2zEKJjefLa', 'yes', 'user', 'yes', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22443130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, '2019-05-01 08:45:05', '2019-05-08 14:16:27'),
(44, NULL, NULL, NULL, NULL, '273030500026', 'محمد فهد محمد عثمان الراشد', 'محمد فهد محمد عثمان الراشد', 'alrashed@ream.com.kw', '$2y$10$ytpxWOR787nbGeznmC/EYuK31cZVsX5XbpJHVxEG1Kd8cvgyglDB.', 'yes', 'admin', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22085956', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, '2019-05-01 11:05:55', '2019-05-01 11:05:55'),
(45, NULL, 0, '', NULL, '278101500406', 'إياد محمود', 'إياد محمود', 'Eyad@ream.com.kw', '$2y$10$7HAShJ90cXx32v6VPWUvquxsf45P3E1dSqthoujlfo.bYkMNPao/i', 'yes', 'admin', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '97743339', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, 'QWDrUYaVtX4mc62GutC2PwYaKE7PYkKyz4qk4VbkYI14GolJS32lx83QmCmm', '2019-05-01 11:06:56', '2019-05-05 09:41:38'),
(46, NULL, NULL, NULL, NULL, '111111111111', 'جزير محسن', 'جزير محسن', 'juzer@ream.com.kw', '$2y$10$Ew8IOhx.t98PNvnfuB0JyeuVQTQIsRnaxt7zy0Cq5p1jKYy//bP6i', 'yes', 'admin', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '66297629', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, '2019-05-01 11:07:38', '2019-05-01 11:07:38'),
(48, NULL, NULL, NULL, NULL, '265022600027', 'سلمان حمزه عباس عجمي', 'سلمان حمزه عباس عجمي', 's.ajmi@ream.com.kw', '$2y$10$Qr/QGoI3.lJKq.CMbh1s4eIX6mUR7gtrxHP/e4skS0uucCrx43XIy', 'yes', 'admin', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1840882', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, '2019-05-01 11:21:03', '2019-05-01 11:21:03'),
(49, NULL, NULL, NULL, NULL, '278091500946', 'يوسف سنان يوسف المعمرى', 'يوسف سنان يوسف المعمرى', 'yousef@ream.com.kw', '$2y$10$7LUDHEzTfgMQFg4X6APyLOdP3L.TE2XvcG8DIXmXrWdzSc1jdt.le', 'yes', 'admin', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22286911', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, '2019-05-01 11:24:06', '2019-05-01 11:24:06'),
(50, NULL, NULL, NULL, NULL, '281062803881', 'أحمد ربيع', 'أحمد ربيع', 'arabie@ream.com.kw', '$2y$10$j7YLXZTLq1O9rQpeTJSwtu52lJ.9Xq7zU.ZBLd2YML2eqX5PeD2Ym', 'yes', 'admin', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51651858', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, '2019-05-01 18:17:19', '2019-05-01 18:17:19'),
(51, 0, NULL, NULL, '7574', NULL, 'Independenthsi', 'Independenthsi', 'director@vdsina.ru', '$2y$10$wYYsN7HP86tITV5Xwv2AXeo25dnFAL.M4sHlfDf./dmzN/xM.0oEy', 'yes', 'user', 'no', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '84619517461', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, 'waiting', NULL, '2019-05-03 11:04:48', '2019-05-03 11:04:48'),
(52, 0, NULL, NULL, '4508', NULL, 'Telecasterzbl', 'Telecasterzbl', 'support@vdsina.ru', '$2y$10$QVyODGBP/1wKCa8uTZCXv.U/OTlUd7mQcTy2hG34EAii1AdSPgfIS', 'yes', 'user', 'yes', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82629595117', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, 'waiting', NULL, '2019-05-04 14:01:20', '2019-05-05 11:15:12'),
(53, 0, NULL, NULL, '4388', NULL, 'Fortressgpt', 'Fortressgpt', 'conzatouchsbang@gmail.com', '$2y$10$kZqjfh/XVNayo3KsZwePc.kAguxWQ8EwCvraMs0kyALt6LZJGvJ7a', 'yes', 'user', 'no', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '86731956379', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, 'waiting', NULL, '2019-05-06 21:16:08', '2019-05-06 21:16:09'),
(54, 0, NULL, NULL, '6740', NULL, 'Mojavevmd', 'Mojavevmd', 'supecatting@gmail.com', '$2y$10$qhsw4rK39dUh8bWot9iH3.ltKcdYLh.Z0VMt1Ar1pmE9qRUU739OC', 'yes', 'user', 'yes', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '88148352575', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, 'waiting', NULL, '2019-05-08 05:49:17', '2019-05-08 14:30:08'),
(55, 0, NULL, NULL, '8140', NULL, 'Wirelessetg', 'Wirelessetg', 'director@mchost.ru', '$2y$10$h9uwzovpXmtee.of0FKGI.3vRQFxswBVM8rSiqY52bgKtaKsTOir6', 'yes', 'user', 'no', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81728634635', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, 'waiting', NULL, '2019-05-10 21:05:44', '2019-05-10 21:05:45'),
(56, 0, NULL, NULL, '1856', NULL, 'Samar', 'Samar', 'Samarg809@gmail.com', '$2y$10$SFH0MakOtrZFlwvTdqbWnONtCykOL8rRDOVH3zIGwYEePMACRt3MS', 'yes', 'user', 'yes', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '64775888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '', '2019-05-13 14:48:50', '2019-05-15 15:53:08'),
(57, 0, NULL, NULL, '8944', NULL, 'Extractionzdo', 'Extractionzdo', 'sdamour360@gmail.com', '$2y$10$qhL2Aqh9cTnODl32uaTkveLsfuZiLnIZMOE.fxeQMobW2uxauKjzS', 'yes', 'user', 'no', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '88578821146', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, 'waiting', NULL, '2019-05-17 23:35:52', '2019-05-17 23:35:54'),
(58, 0, NULL, NULL, '8199', NULL, 'Rigidove', 'Rigidove', 'bill@vdsina.ru', '$2y$10$Y5zGKk..HTjWBbib4dw7n.QjzLA2g4WgZqIfj8QwGEPr9p3iHoaIq', 'yes', 'user', 'no', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '89927419917', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, 'waiting', NULL, '2019-05-19 07:48:15', '2019-05-19 07:48:16');

-- --------------------------------------------------------

--
-- Table structure for table `userspecs`
--

CREATE TABLE `userspecs` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speccial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doneby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userspecs`
--

INSERT INTO `userspecs` (`id`, `userid`, `speccial`, `status`, `doneby`, `created_at`, `updated_at`) VALUES
(61, '14', '1', 'CAPTURED', '14', '2019-03-05 10:52:56', '2019-03-31 17:15:34'),
(62, '14', '4', 'CAPTURED', '14', '2019-03-05 10:52:56', '2019-03-31 17:15:34'),
(67, '15', '1', 'CAPTURED', '15', '2019-03-05 11:11:22', '2019-04-01 18:58:26'),
(68, '15', '3', 'CAPTURED', '15', '2019-03-05 11:11:22', '2019-04-01 18:58:26'),
(75, '19', '1', 'CAPTURED', '19', '2019-03-13 13:54:38', '2019-03-13 13:57:57'),
(76, '19', '2', 'CAPTURED', '19', '2019-03-13 13:54:38', '2019-03-13 13:57:57'),
(77, '19', '3', 'CAPTURED', '19', '2019-03-13 13:54:38', '2019-03-13 13:57:57'),
(78, '19', '5', 'pend', '19', '2019-03-17 12:17:33', '2019-03-17 12:17:33'),
(79, '19', '6', 'CAPTURED', '19', '2019-03-20 07:58:35', '2019-03-20 08:03:15'),
(80, '19', '9', 'CAPTURED', '19', '2019-03-20 07:58:35', '2019-03-20 08:03:15'),
(81, '19', '12', 'CAPTURED', '19', '2019-03-20 07:58:35', '2019-03-20 08:03:15'),
(82, '19', '8', 'CAPTURED', '19', '2019-03-20 07:58:35', '2019-03-20 08:03:15'),
(83, '19', '7', 'CAPTURED', '19', '2019-03-20 07:58:35', '2019-03-20 08:03:15'),
(84, '19', '10', 'CAPTURED', '19', '2019-03-20 07:58:35', '2019-03-20 08:03:15'),
(85, '19', '11', 'CAPTURED', '19', '2019-03-20 07:58:35', '2019-03-20 08:03:15'),
(86, '14', '6', 'CAPTURED', '14', '2019-03-31 17:13:40', '2019-03-31 17:15:34'),
(87, '17', '6', 'CAPTURED', '17', '2019-04-01 10:00:22', '2019-04-01 10:01:54'),
(89, '15', '6', 'CAPTURED', '15', '2019-04-01 19:06:40', '2019-04-01 19:07:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_key`
--
ALTER TABLE `api_key`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachs`
--
ALTER TABLE `attachs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deptadmins`
--
ALTER TABLE `deptadmins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nations`
--
ALTER TABLE `nations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `natures`
--
ALTER TABLE `natures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifyusers`
--
ALTER TABLE `notifyusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey`
--
ALTER TABLE `survey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyuser`
--
ALTER TABLE `surveyuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenderfile`
--
ALTER TABLE `tenderfile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenders`
--
ALTER TABLE `tenders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenderspecials`
--
ALTER TABLE `tenderspecials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tendervendors`
--
ALTER TABLE `tendervendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useragents`
--
ALTER TABLE `useragents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdepts`
--
ALTER TABLE `userdepts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usernatures`
--
ALTER TABLE `usernatures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userspecs`
--
ALTER TABLE `userspecs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_key`
--
ALTER TABLE `api_key`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attachs`
--
ALTER TABLE `attachs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `deptadmins`
--
ALTER TABLE `deptadmins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `nations`
--
ALTER TABLE `nations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `natures`
--
ALTER TABLE `natures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `notifyusers`
--
ALTER TABLE `notifyusers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=748;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `survey`
--
ALTER TABLE `survey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `surveyuser`
--
ALTER TABLE `surveyuser`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tenderfile`
--
ALTER TABLE `tenderfile`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tenders`
--
ALTER TABLE `tenders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tenderspecials`
--
ALTER TABLE `tenderspecials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `tendervendors`
--
ALTER TABLE `tendervendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `useragents`
--
ALTER TABLE `useragents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userdepts`
--
ALTER TABLE `userdepts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `usernatures`
--
ALTER TABLE `usernatures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `userspecs`
--
ALTER TABLE `userspecs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
