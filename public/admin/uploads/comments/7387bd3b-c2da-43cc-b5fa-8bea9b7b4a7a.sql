-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2019 at 11:34 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pfs`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `project_id`, `user_id`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(4, 33, 1, 'test', 1, '2019-05-20 07:15:06', '2019-05-20 07:15:06'),
(5, 33, 1, 'test again', 1, '2019-05-20 07:32:06', '2019-05-20 07:32:06'),
(6, 33, 1, 'welcome home', 1, '2019-05-20 07:47:24', '2019-05-20 07:47:24');

-- --------------------------------------------------------

--
-- Table structure for table `comment_files`
--

CREATE TABLE `comment_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment_files`
--

INSERT INTO `comment_files` (`id`, `comment_id`, `file_name`, `type`, `created_at`, `updated_at`) VALUES
(3, 4, '4f38a581-6e47-47c2-ba87-d1c625a028cc.jpg', NULL, '2019-05-20 07:15:06', '2019-05-20 07:15:06'),
(4, 4, 'eec64eab-f3e4-45ae-bb0f-3fd52ccb0e58.jpg', NULL, '2019-05-20 07:15:06', '2019-05-20 07:15:06'),
(5, 4, '255c7b5b-e038-4805-ab3f-63bbcd4f4b4c.jpg', NULL, '2019-05-20 07:15:06', '2019-05-20 07:15:06'),
(6, 6, '8146f471-fded-40ae-b298-c935605dceb6.jpg', NULL, '2019-05-20 07:47:25', '2019-05-20 07:47:25'),
(7, 6, 'a77a4427-53be-45f1-87aa-f4b31641d429.jpg', NULL, '2019-05-20 07:47:25', '2019-05-20 07:47:25');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Quality Control', 1, '2019-05-14 07:32:23', '2019-05-14 07:32:23'),
(2, 'Backend Developer', 1, '2019-05-14 07:32:23', '2019-05-14 07:32:23'),
(3, 'UX&UI Developer', 1, '2019-05-14 07:32:23', '2019-05-14 07:32:23'),
(4, 'Analysis', 1, '2019-05-14 07:32:23', '2019-05-14 07:32:23'),
(5, 'FrontEnd Developer', 1, '2019-05-14 07:32:23', '2019-05-14 07:32:23');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_12_124422_create_projects_table', 1),
(4, '2019_05_13_073154_create_stages_table', 1),
(5, '2019_05_13_073610_create_phases_table', 1),
(6, '2019_05_13_074554_create_project_files_table', 2),
(7, '2019_05_13_074905_create_project_developers_table', 3),
(8, '2019_05_13_075148_create_project_phases_table', 3),
(9, '2019_05_13_075423_create_project_stages_table', 3),
(10, '2019_05_14_072511_create_jobs_table', 4),
(11, '2019_05_19_142050_create_comments_table', 5),
(12, '2019_05_19_142422_create_comment_files_table', 6),
(13, '2019_05_20_101917_create_project_requirement_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phases`
--

CREATE TABLE `phases` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phases`
--

INSERT INTO `phases` (`id`, `name`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'analysis', 1, 1, '2019-05-13 07:43:29', '2019-05-13 07:43:29'),
(2, 'ui&ux', 1, 1, '2019-05-13 07:43:29', '2019-05-13 07:43:29'),
(3, 'frontend', 1, 1, '2019-05-13 07:43:29', '2019-05-19 10:23:30'),
(4, 'backend', 1, 1, '2019-05-13 07:43:29', '2019-05-13 07:43:29');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirements` text COLLATE utf8mb4_unicode_ci,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `priority` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credentials` text COLLATE utf8mb4_unicode_ci,
  `qc_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `type`, `requirements`, `notes`, `priority`, `credentials`, `qc_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test project', 'website', 'test requirement notes updated', 'test notes', 'High', 'http://localhost:8080/PFS/admin/home/', 2, 1, '2019-05-13 07:58:56', '2019-05-16 08:07:41'),
(33, 'new project', 'Website,Mobile,System', 'test requirements', 'hhhh', 'Medium', 'test credentials', 2, 1, '2019-05-16 10:43:07', '2019-05-16 10:43:07'),
(34, 'hello world', 'Website,Mobile', 'test requirement', 'test notes', 'Medium', 'test cred', 8, 1, '2019-05-20 09:44:51', '2019-05-20 09:44:51'),
(35, 'eman mahmoud', 'Mobile', 'zdf', 'ergerg', 'Medium', 'rerg', 8, 1, '2019-05-20 09:49:04', '2019-05-20 09:49:04'),
(36, 'yyyyy', 'Website', 'uuuuuuuuuu', 'fdf', 'High', 'sdf', 2, 1, '2019-05-20 09:53:58', '2019-05-20 09:53:58'),
(37, 'first project', 'Website', 'first requirement', 'test', 'High', 'test cred', 2, 1, '2019-05-20 09:58:30', '2019-05-20 09:58:30');

-- --------------------------------------------------------

--
-- Table structure for table `project_developers`
--

CREATE TABLE `project_developers` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `developer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_developers`
--

INSERT INTO `project_developers` (`id`, `project_id`, `developer_id`, `created_at`, `updated_at`) VALUES
(11, 1, 3, '2019-05-15 09:52:46', '2019-05-15 09:52:46'),
(17, 1, 6, '2019-05-16 07:42:37', '2019-05-16 07:42:37'),
(18, 1, 4, '2019-05-16 07:43:07', '2019-05-16 07:43:07'),
(19, 1, 5, '2019-05-16 07:43:07', '2019-05-16 07:43:07'),
(20, 1, 7, '2019-05-16 07:43:08', '2019-05-16 07:43:08'),
(21, 33, 3, '2019-05-16 12:43:07', '2019-05-16 12:43:07'),
(22, 33, 4, '2019-05-16 12:43:08', '2019-05-16 12:43:08'),
(23, 33, 5, '2019-05-16 12:43:08', '2019-05-16 12:43:08'),
(24, 36, 3, '2019-05-20 09:53:58', '2019-05-20 09:53:58'),
(25, 37, 5, '2019-05-20 09:58:31', '2019-05-20 09:58:31');

-- --------------------------------------------------------

--
-- Table structure for table `project_files`
--

CREATE TABLE `project_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_files`
--

INSERT INTO `project_files` (`id`, `project_id`, `file_name`, `type`, `created_at`, `updated_at`) VALUES
(8, 1, '3945e4ac-3a5e-4f33-9343-52275e9e9404.png', NULL, '2019-05-15 09:51:33', '2019-05-15 09:51:33'),
(9, 1, '53271da2-933f-4575-865a-9c4d99862aca.png', NULL, '2019-05-15 09:51:33', '2019-05-15 09:51:33'),
(10, 1, '9b08ae65-d478-410c-800c-0abe74f88947.jpg', NULL, '2019-05-15 09:52:34', '2019-05-15 09:52:34'),
(11, 1, '3c5614f0-17bb-4a5d-b5ae-b314d2de2143.png', NULL, '2019-05-15 09:53:27', '2019-05-15 09:53:27'),
(12, 1, 'ca8db7a5-dfdc-43aa-956b-8dbd82ec412f.jpg', NULL, '2019-05-16 09:03:19', '2019-05-16 09:03:19'),
(13, 33, 'CV.pdf', NULL, '2019-05-16 10:43:07', '2019-05-20 09:02:06'),
(14, 1, '71a30b7a-6087-40db-b51e-9a426b3dc178.png', NULL, '2019-05-20 07:57:18', '2019-05-20 07:57:18'),
(15, 1, 'e6b4f7c6-be2e-461d-94fe-b711b67b1c1f.png', NULL, '2019-05-20 07:57:18', '2019-05-20 07:57:18'),
(16, 1, '71efe143-1b09-461d-a40c-3fc1f98c206f.png', NULL, '2019-05-20 07:57:19', '2019-05-20 07:57:19'),
(19, 33, '632b4658-56e9-4779-9a02-921177787765.pdf', NULL, '2019-05-20 09:06:41', '2019-05-20 09:06:41'),
(20, 33, 'f9958ae0-458e-49a7-8f3f-1e411309c821.pdf', NULL, '2019-05-20 09:06:41', '2019-05-20 09:06:41'),
(21, 33, 'fbbddb4d-27ca-48f0-900b-235415258cc0.pdf', NULL, '2019-05-20 09:06:41', '2019-05-20 09:06:41'),
(22, 34, 'e3e2c3fc-ad2d-412e-8249-458ca511a3ff.jpg', NULL, '2019-05-20 09:44:51', '2019-05-20 09:44:51'),
(23, 34, 'fb13da5b-57e2-4083-91c8-06eff77d282a.pdf', NULL, '2019-05-20 09:44:51', '2019-05-20 09:44:51'),
(24, 35, 'c4a470d5-4234-4a7a-bc0c-d4e8c852ba2c.jpg', NULL, '2019-05-20 09:49:04', '2019-05-20 09:49:04'),
(25, 36, '254cb923-88d9-42f6-8a9d-b30aab02b222.jpg', NULL, '2019-05-20 09:53:58', '2019-05-20 09:53:58'),
(26, 37, '61d1d15d-da05-4799-85a2-de6863def653.pdf', NULL, '2019-05-20 09:58:31', '2019-05-20 09:58:31'),
(27, 37, '1b3f1f85-6e72-40e8-9fee-5642f1af6f49.pdf', NULL, '2019-05-20 09:58:31', '2019-05-20 09:58:31');

-- --------------------------------------------------------

--
-- Table structure for table `project_phases`
--

CREATE TABLE `project_phases` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `phase_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_phases`
--

INSERT INTO `project_phases` (`id`, `project_id`, `phase_id`, `created_at`, `updated_at`) VALUES
(7, 1, 3, '2019-05-16 07:42:19', '2019-05-16 07:42:19'),
(8, 1, 4, '2019-05-16 07:42:19', '2019-05-16 07:42:19'),
(9, 33, 1, '2019-05-16 12:43:08', '2019-05-16 12:43:08'),
(10, 33, 2, '2019-05-16 12:43:08', '2019-05-16 12:43:08'),
(11, 36, 3, '2019-05-20 09:53:58', '2019-05-20 09:53:58'),
(12, 36, 1, '2019-05-20 09:53:58', '2019-05-20 09:53:58'),
(13, 37, 1, '2019-05-20 09:58:31', '2019-05-20 09:58:31'),
(14, 37, 2, '2019-05-20 09:58:31', '2019-05-20 09:58:31'),
(15, 37, 3, '2019-05-20 09:58:31', '2019-05-20 09:58:31');

-- --------------------------------------------------------

--
-- Table structure for table `project_requirement`
--

CREATE TABLE `project_requirement` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_requirement`
--

INSERT INTO `project_requirement` (`id`, `project_id`, `file_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 33, 'c3e21da1-765b-4f53-a66b-543404d234e0.jpg', NULL, '2019-05-20 08:28:29', '2019-05-20 08:28:29'),
(2, 33, '1f4c9882-6129-4fcc-9b72-9f3965dacf21.jpg', NULL, '2019-05-20 08:28:29', '2019-05-20 08:28:29'),
(3, 33, 'b98effb3-e3e6-4951-be4a-4b2a2134b726.jpg', NULL, '2019-05-20 08:28:29', '2019-05-20 08:28:29'),
(4, 37, 'ede25384-cf05-47e3-bd26-0c290bf73acd.pdf', NULL, '2019-05-20 09:58:31', '2019-05-20 09:58:31'),
(5, 37, '5562b6aa-d9f3-48ea-8132-88ab4963cf09.jpg', NULL, '2019-05-20 09:58:31', '2019-05-20 09:58:31');

-- --------------------------------------------------------

--
-- Table structure for table `project_stages`
--

CREATE TABLE `project_stages` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `stage_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_stages`
--

INSERT INTO `project_stages` (`id`, `project_id`, `stage_id`, `created_at`, `updated_at`) VALUES
(9, 1, 7, '2019-05-16 07:42:19', '2019-05-16 07:42:19'),
(10, 33, 2, '2019-05-16 12:43:08', '2019-05-16 12:43:08'),
(11, 33, 3, '2019-05-16 12:43:08', '2019-05-16 12:43:08'),
(12, 36, 2, '2019-05-20 09:53:58', '2019-05-20 09:53:58'),
(13, 37, 4, '2019-05-20 09:58:31', '2019-05-20 09:58:31');

-- --------------------------------------------------------

--
-- Table structure for table `stages`
--

CREATE TABLE `stages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stages`
--

INSERT INTO `stages` (`id`, `name`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, 'proposal', 1, 1, '2019-05-12 07:44:51', '2019-05-19 10:50:38'),
(2, 'project', 1, 2, '2019-05-13 07:44:51', '2019-05-19 09:52:23'),
(3, 'development', 1, 3, '2019-05-13 07:44:51', '2019-05-19 09:52:26'),
(4, 'onhold', 1, 4, '2019-05-13 07:44:51', '2019-05-19 09:52:31'),
(5, 'waiting feedback', 1, 5, '2019-05-13 07:44:51', '2019-05-19 09:52:36'),
(6, 'closed', 1, 6, '2019-05-13 07:44:51', '2019-05-19 09:52:40'),
(7, 'maintenance', 1, 7, '2019-05-13 07:44:51', '2019-05-19 09:52:45'),
(18, 'test', 1, 9, '2019-05-19 10:55:04', '2019-05-19 10:55:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `job_id` int(11) UNSIGNED DEFAULT NULL,
  `profile_pic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `type`, `status`, `job_id`, `profile_pic`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'eman mahmoud', 'eman@gmail.com', 1, 1, NULL, 'user.png', '$2y$10$6DQYdp0lUWKHPuIGc9/wU.hSiC7OErXQu8vtLJ4jjFYtYDw9rzwsi', NULL, '2019-05-13 05:58:46', '2019-05-20 07:26:21'),
(2, 'samar qc', 'samar@gmail.com', 2, 1, 1, 'user.png', '$2y$10$6DQYdp0lUWKHPuIGc9/wU.hSiC7OErXQu8vtLJ4jjFYtYDw9rzwsi', NULL, '2019-05-13 05:58:46', '2019-05-20 07:26:21'),
(3, 'khaled backend', 'khaled@gmail.com', 3, 1, 2, 'user.png', '$2y$10$6DQYdp0lUWKHPuIGc9/wU.hSiC7OErXQu8vtLJ4jjFYtYDw9rzwsi', NULL, '2019-05-13 05:58:46', '2019-05-20 07:26:21'),
(4, 'ekhlas ui&ux', 'ekhlas@gmail.com', 4, 1, 3, 'user.png', '$2y$10$6DQYdp0lUWKHPuIGc9/wU.hSiC7OErXQu8vtLJ4jjFYtYDw9rzwsi', NULL, '2019-05-13 05:58:46', '2019-05-20 07:26:21'),
(5, 'huda frontend', 'huda@gmail.com', 6, 1, 5, 'user.png', '$2y$10$6DQYdp0lUWKHPuIGc9/wU.hSiC7OErXQu8vtLJ4jjFYtYDw9rzwsi', NULL, '2019-05-13 05:58:46', '2019-05-20 07:26:21'),
(6, 'ahmed analysis', 'ahmed@gmail.com', 5, 1, 4, 'user.png', '$2y$10$6DQYdp0lUWKHPuIGc9/wU.hSiC7OErXQu8vtLJ4jjFYtYDw9rzwsi', NULL, '2019-05-13 05:58:46', '2019-05-20 07:26:21'),
(7, 'foad backend', 'foad@gmail.com', 3, 1, 2, 'user.png', '$2y$10$6DQYdp0lUWKHPuIGc9/wU.hSiC7OErXQu8vtLJ4jjFYtYDw9rzwsi', NULL, '2019-05-13 05:58:46', '2019-05-20 07:26:21'),
(8, 'test qc', 'qc@fff.com', 1, 1, 1, 'user.png', '123', NULL, '2019-05-15 10:45:24', '2019-05-20 07:26:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `comment_files`
--
ALTER TABLE `comment_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
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
-- Indexes for table `phases`
--
ALTER TABLE `phases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_qc_id_foreign` (`qc_id`);

--
-- Indexes for table `project_developers`
--
ALTER TABLE `project_developers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_developers_project_id_foreign` (`project_id`),
  ADD KEY `project_developers_developer_id_foreign` (`developer_id`);

--
-- Indexes for table `project_files`
--
ALTER TABLE `project_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_files_project_id_foreign` (`project_id`);

--
-- Indexes for table `project_phases`
--
ALTER TABLE `project_phases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_phases_project_id_foreign` (`project_id`),
  ADD KEY `project_phases_phase_id_foreign` (`phase_id`);

--
-- Indexes for table `project_requirement`
--
ALTER TABLE `project_requirement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_requirement_project_id_foreign` (`project_id`);

--
-- Indexes for table `project_stages`
--
ALTER TABLE `project_stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_stages_project_id_foreign` (`project_id`),
  ADD KEY `project_stages_stage_id_foreign` (`stage_id`);

--
-- Indexes for table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `job_id` (`job_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comment_files`
--
ALTER TABLE `comment_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `phases`
--
ALTER TABLE `phases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `project_developers`
--
ALTER TABLE `project_developers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `project_files`
--
ALTER TABLE `project_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `project_phases`
--
ALTER TABLE `project_phases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `project_requirement`
--
ALTER TABLE `project_requirement`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `project_stages`
--
ALTER TABLE `project_stages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `stages`
--
ALTER TABLE `stages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_qc_id_foreign` FOREIGN KEY (`qc_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_developers`
--
ALTER TABLE `project_developers`
  ADD CONSTRAINT `project_developers_developer_id_foreign` FOREIGN KEY (`developer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_developers_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_files`
--
ALTER TABLE `project_files`
  ADD CONSTRAINT `project_files_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_phases`
--
ALTER TABLE `project_phases`
  ADD CONSTRAINT `project_phases_phase_id_foreign` FOREIGN KEY (`phase_id`) REFERENCES `phases` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_phases_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_requirement`
--
ALTER TABLE `project_requirement`
  ADD CONSTRAINT `project_requirement_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_stages`
--
ALTER TABLE `project_stages`
  ADD CONSTRAINT `project_stages_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_stages_stage_id_foreign` FOREIGN KEY (`stage_id`) REFERENCES `stages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
