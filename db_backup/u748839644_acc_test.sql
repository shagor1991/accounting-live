-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 26, 2022 at 06:14 AM
-- Server version: 10.5.15-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u748839644_acc_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_documents`
--

CREATE TABLE `accounts_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts_documents`
--

INSERT INTO `accounts_documents` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Shagor Office', '2022-07-12 02:14:06', '2022-07-12 02:14:06');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_document_items`
--

CREATE TABLE `accounts_document_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `accounts_document_id` bigint(20) UNSIGNED NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts_document_items`
--

INSERT INTO `accounts_document_items` (`id`, `accounts_document_id`, `display_name`, `filename`, `created_at`, `updated_at`) VALUES
(1, 1, 'NOC Shagor', 'NOC Shagor1657592046.pdf', '2022-07-12 02:14:06', '2022-07-12 02:14:06'),
(2, 1, 'Income Tax Return Bang11GA_converted', 'Income Tax Return Bang11GA_converted1657592046.pdf', '2022-07-12 02:14:06', '2022-07-12 02:14:06');

-- --------------------------------------------------------

--
-- Table structure for table `account_heads`
--

CREATE TABLE `account_heads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ma_code` int(11) NOT NULL,
  `ac_code` int(11) NOT NULL,
  `fld_ac_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fld_ac_head` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fld_ms_ac_head` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fld_definition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_heads`
--

INSERT INTO `account_heads` (`id`, `ma_code`, `ac_code`, `fld_ac_code`, `fld_ac_head`, `fld_ms_ac_head`, `fld_definition`, `created_at`, `updated_at`) VALUES
(4, 57, 100, '57-100', 'Dolores officia dolo', 'Sit ab quas atque r', 'Depreciation and amortization', '2022-06-26 10:00:55', '2022-06-26 10:00:55'),
(5, 56, 100, '56-100', 'Est delectus cillu', 'Incidunt minus exer', 'Depreciation and amortization', '2022-06-26 10:01:11', '2022-06-26 10:01:11');

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

CREATE TABLE `bank_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signatory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_details`
--

INSERT INTO `bank_details` (`id`, `bank_code`, `bank_name`, `branch`, `ac_no`, `signatory`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, '100', 'PQR Bank', 'Ajman Branch', '33333', 'Mr Babu', NULL, '2022-07-01 10:30:52', '2022-07-01 10:30:52'),
(3, '101', 'A', 'A', '1', 'A', '2022-07-06 04:20:59', '2022-07-06 04:20:40', '2022-07-06 04:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_id`, `name`, `origin`, `created_at`, `updated_at`) VALUES
(1, '11', 'Burgundy', 'Bangladesh', NULL, NULL),
(2, '12', 'Orange', 'Bangladesh', NULL, '2022-06-28 22:10:49'),
(3, '13', 'Red', 'Bangladesh', NULL, NULL),
(4, '14', 'S. Yellow', 'Bangladesh', NULL, NULL),
(5, '15', 'White', 'Bangladesh', NULL, NULL),
(7, '17', 'R.blue', 'Bangladesh', NULL, NULL),
(8, '18', 'Black', 'Bangladesh', NULL, NULL),
(10, '20', 'K. green', 'Bangladesh', NULL, NULL),
(11, '21', 'Navy', 'Bangladesh', NULL, NULL),
(12, '22', 'sky blue', 'Bangladesh', '2022-07-03 14:14:30', '2022-07-03 14:14:30'),
(13, '23', 'PINK', 'Bangladesh', '2022-07-04 12:21:08', '2022-07-04 12:21:08'),
(14, '24', 'L.GREEN', 'Bangladesh', '2022-07-04 12:21:57', '2022-07-04 12:21:57'),
(15, '25', 'Lavender', 'Bangladesh', '2022-07-05 11:53:10', '2022-07-05 11:53:10'),
(16, '26', 'Grey', 'Bangladesh', '2022-07-05 11:53:29', '2022-07-05 11:53:29'),
(17, '27', 'Turquise', 'Bangladesh', '2022-07-05 11:53:45', '2022-07-05 11:53:45'),
(18, '28', 'Pistacio', 'Bangladesh', '2022-07-05 11:54:03', '2022-07-05 11:54:03'),
(19, '29', 'B. Green', 'Bangladesh', '2022-07-05 11:54:17', '2022-07-05 11:54:17'),
(20, '30', 'Purple', 'Bangladesh', '2022-07-05 11:54:36', '2022-07-05 11:54:36'),
(21, '31', 'Sand', 'Bangladesh', '2022-07-05 11:54:53', '2022-07-05 11:54:53'),
(23, '32', 'Mint Green', 'Bangladesh', '2022-07-22 14:22:39', '2022-07-22 14:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `bulks`
--

CREATE TABLE `bulks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bulks`
--

INSERT INTO `bulks` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'mominul', 'mominul@gmail', '2022-06-26 02:10:32', '2022-06-26 02:10:32'),
(2, 'tarek', 'tarek@gmail.com', '2022-06-26 02:10:32', '2022-06-26 02:10:32'),
(3, 'sagor', 'sagor@gmail.com', '2022-06-26 02:10:32', '2022-06-26 02:10:32'),
(4, 'mominul', 'mominul@gmail', '2022-06-26 02:46:26', '2022-06-26 02:46:26'),
(5, 'tarek', 'tarek@gmail.com', '2022-06-26 02:46:27', '2022-06-26 02:46:27'),
(6, 'sagor', 'sagor@gmail.com', '2022-06-26 02:46:27', '2022-06-26 02:46:27');

-- --------------------------------------------------------

--
-- Table structure for table `cost_centers`
--

CREATE TABLE `cost_centers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cc_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cc_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prsn_responsible` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cost_centers`
--

INSERT INTO `cost_centers` (`id`, `cc_code`, `cc_name`, `activity`, `prsn_responsible`, `project_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'CC-0001', 'Test Cost Center', 'Regular', 'Md. Mominul', '5', NULL, '2022-06-29 04:44:03', '2022-06-29 04:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `cost_center_types`
--

CREATE TABLE `cost_center_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cost_center_types`
--

INSERT INTO `cost_center_types` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Supplier', '2022-05-26 08:05:58', '2022-05-26 08:05:58'),
(2, 'Customer', '2022-05-26 08:05:58', '2022-05-26 08:05:58'),
(3, 'Employee', '2022-05-26 08:05:58', '2022-05-26 08:05:58'),
(4, 'Government Body', '2022-05-26 08:05:58', '2022-05-26 08:05:58');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(2, 'Albania', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(3, 'Algeria', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(4, 'Andorra', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(5, 'Angola', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(6, 'Antigua and Barbuda', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(7, 'Argentina', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(8, 'Armenia', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(9, 'Austria', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(10, 'Azerbaijan', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(11, 'Bahrain', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(12, 'Bangladesh', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(13, 'Barbados', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(14, 'Belarus', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(15, 'Belgium', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(16, 'Belize', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(17, 'Benin', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(18, 'Bhutan', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(19, 'Bolivia', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(20, 'Bosnia and Herzegovina', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(21, 'Botswana', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(22, 'Brazil', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(23, 'Brunei', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(24, 'Bulgaria', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(25, 'Burkina Faso', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(26, 'Burundi', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(27, 'Cabo Verde', '2022-05-26 08:05:59', '2022-05-26 08:05:59'),
(28, 'Cambodia', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(29, 'Cameroon', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(30, 'Canada', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(31, 'Central African Republic', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(32, 'Chad', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(33, 'Channel Islands', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(34, 'Chile', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(35, 'China', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(36, 'Colombia', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(37, 'Comoros', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(38, 'Congo', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(39, 'Costa Rica', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(40, 'Côte d\' Ivoire', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(41, 'Croatia', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(42, 'Cuba', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(43, 'Cyprus', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(44, 'Czech Republic', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(45, 'Denmark', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(46, 'Djibouti', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(47, 'Dominica', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(48, 'Dominican Republic', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(49, 'DR Congo', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(50, 'Ecuador', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(51, 'Egypt', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(52, 'El Salvador', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(53, 'Equatorial Guinea', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(54, 'Eritrea', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(55, 'Estonia', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(56, 'Eswatini', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(57, 'Ethiopia', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(58, 'Faeroe Islands', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(59, 'Finland', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(60, 'France', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(61, 'French Guiana', '2022-05-26 08:06:00', '2022-05-26 08:06:00'),
(62, 'Gabon', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(63, 'Gambia', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(64, 'Georgia', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(65, 'Germany', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(66, 'Ghana', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(67, 'Gibraltar', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(68, 'Greece', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(69, 'Grenada', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(70, 'Guatemala', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(71, 'Guinea', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(72, 'Guinea Bissau', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(73, 'Guyana', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(74, 'Haiti', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(75, 'Holy See', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(76, 'Honduras', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(77, 'Hong Kong', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(78, 'Hungary', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(79, 'Iceland', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(80, 'India', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(81, 'Indonesia', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(82, 'Iran', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(83, 'Iraq', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(84, 'Ireland', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(85, 'Isle of Man', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(86, 'Israel', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(87, 'Italy', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(88, 'Jamaica', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(89, 'Japan', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(90, 'Jordan', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(91, 'Kazakhstan', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(92, 'Kenya', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(93, 'Kuwait', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(94, 'Kyrgyzstan', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(95, 'Laos', '2022-05-26 08:06:01', '2022-05-26 08:06:01'),
(96, 'Latvia', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(97, 'Lebanon', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(98, 'Lesotho', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(99, 'Liberia', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(100, 'Libya', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(101, 'Liechtenstein', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(102, 'Lithuania', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(103, 'Luxembourg', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(104, 'Macao', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(105, 'Madagascar', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(106, 'Malawi', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(107, 'Malaysia', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(108, 'Maldives', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(109, 'Mali', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(110, 'Malta', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(111, 'Mauritania', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(112, 'Mauritius', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(113, 'Mayotte', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(114, 'Mexico', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(115, 'Moldova', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(116, 'Monaco', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(117, 'Mongolia', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(118, 'Montenegro', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(119, 'Morocco', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(120, 'Mozambique', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(121, 'Myanmar', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(122, 'Namibia', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(123, 'Nepal', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(124, 'Netherlands', '2022-05-26 08:06:02', '2022-05-26 08:06:02'),
(125, 'Nicaragua', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(126, 'Niger', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(127, 'Nigeria', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(128, 'North Korea', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(129, 'North Macedonia', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(130, 'Norway', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(131, 'Oman', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(132, 'Pakistan', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(133, 'Panama', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(134, 'Paraguay', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(135, 'Peru', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(136, 'Philippines', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(137, 'Poland', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(138, 'Portugal', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(139, 'Qatar', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(140, 'Réunion', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(141, 'Romania', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(142, 'Russia', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(143, 'Rwanda', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(144, 'Saint Helena', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(145, 'Saint Kitts and Nevis', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(146, 'Saint Lucia', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(147, 'Saint Vincent and the Grenadines', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(148, 'San Marino', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(149, 'Sao Tome & Principe', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(150, 'Saudi Arabia', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(151, 'Senegal', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(152, 'Serbia', '2022-05-26 08:06:03', '2022-05-26 08:06:03'),
(153, 'Seychelles', '2022-05-26 08:06:04', '2022-05-26 08:06:04'),
(154, 'Sierra Leone', '2022-05-26 08:06:04', '2022-05-26 08:06:04'),
(155, 'Singapore', '2022-05-26 08:06:04', '2022-05-26 08:06:04'),
(156, 'Slovakia', '2022-05-26 08:06:04', '2022-05-26 08:06:04'),
(157, 'Slovenia', '2022-05-26 08:06:04', '2022-05-26 08:06:04'),
(158, 'Somalia', '2022-05-26 08:06:04', '2022-05-26 08:06:04'),
(159, 'South Africa', '2022-05-26 08:06:04', '2022-05-26 08:06:04'),
(160, 'South Korea', '2022-05-26 08:06:04', '2022-05-26 08:06:04'),
(161, 'South Sudan', '2022-05-26 08:06:04', '2022-05-26 08:06:04'),
(162, 'Spain', '2022-05-26 08:06:04', '2022-05-26 08:06:04'),
(163, 'Sri Lanka', '2022-05-26 08:06:04', '2022-05-26 08:06:04'),
(164, 'State of Palestine', '2022-05-26 08:06:04', '2022-05-26 08:06:04'),
(165, 'Sudan', '2022-05-26 08:06:04', '2022-05-26 08:06:04'),
(166, 'Suriname', '2022-05-26 08:06:04', '2022-05-26 08:06:04'),
(167, 'Sweden', '2022-05-26 08:06:04', '2022-05-26 08:06:04'),
(168, 'Switzerland', '2022-05-26 08:06:04', '2022-05-26 08:06:04'),
(169, 'Syria', '2022-05-26 08:06:04', '2022-05-26 08:06:04'),
(170, 'Taiwan', '2022-05-26 08:06:04', '2022-05-26 08:06:04'),
(171, 'Tajikistan', '2022-05-26 08:06:04', '2022-05-26 08:06:04'),
(172, 'Tanzania', '2022-05-26 08:06:04', '2022-05-26 08:06:04'),
(173, 'Thailand', '2022-05-26 08:06:05', '2022-05-26 08:06:05'),
(174, 'The Bahamas', '2022-05-26 08:06:05', '2022-05-26 08:06:05'),
(175, 'Timor Leste', '2022-05-26 08:06:05', '2022-05-26 08:06:05'),
(176, 'Togo', '2022-05-26 08:06:05', '2022-05-26 08:06:05'),
(177, 'Trinidad and Tobago', '2022-05-26 08:06:05', '2022-05-26 08:06:05'),
(178, 'Tunisia', '2022-05-26 08:06:05', '2022-05-26 08:06:05'),
(179, 'Turkey', '2022-05-26 08:06:05', '2022-05-26 08:06:05'),
(180, 'Turkmenistan', '2022-05-26 08:06:05', '2022-05-26 08:06:05'),
(181, 'Uganda', '2022-05-26 08:06:05', '2022-05-26 08:06:05'),
(182, 'Ukraine', '2022-05-26 08:06:05', '2022-05-26 08:06:05'),
(183, 'United Arab Emirates', '2022-05-26 08:06:05', '2022-05-26 08:06:05'),
(184, 'United Kingdom', '2022-05-26 08:06:05', '2022-05-26 08:06:05'),
(185, 'United States', '2022-05-26 08:06:05', '2022-05-26 08:06:05'),
(186, 'Uruguay', '2022-05-26 08:06:05', '2022-05-26 08:06:05'),
(187, 'Uzbekistan', '2022-05-26 08:06:05', '2022-05-26 08:06:05'),
(188, 'Venezuela', '2022-05-26 08:06:05', '2022-05-26 08:06:05'),
(189, 'Vietnam', '2022-05-26 08:06:05', '2022-05-26 08:06:05'),
(190, 'Western Sahara', '2022-05-26 08:06:05', '2022-05-26 08:06:05'),
(191, 'Yemen', '2022-05-26 08:06:05', '2022-05-26 08:06:05'),
(192, 'Zambia', '2022-05-26 08:06:05', '2022-05-26 08:06:05'),
(193, 'Zimbabwe', '2022-05-26 08:06:05', '2022-05-26 08:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_items`
--

CREATE TABLE `delivery_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_note_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `style_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_order_item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_items`
--

INSERT INTO `delivery_items` (`id`, `delivery_note_id`, `sale_order_id`, `style_id`, `color_id`, `size`, `sale_order_item_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, '1', '2', '1', '2', 'M', '6', 1, '2022-07-24 12:45:31', '2022-07-24 12:45:31');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_notes`
--

CREATE TABLE `delivery_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_note_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_notes`
--

INSERT INTO `delivery_notes` (`id`, `delivery_note_no`, `created_at`, `updated_at`) VALUES
(1, '2022072401DN', '2022-07-24 12:45:31', '2022-07-24 12:45:31');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_note_sales`
--

CREATE TABLE `delivery_note_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_note_id` int(11) NOT NULL,
  `sale_order_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_note_sales`
--

INSERT INTO `delivery_note_sales` (`id`, `delivery_note_id`, `sale_order_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2022-07-24 12:45:31', '2022-07-24 12:45:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goods_receiveds`
--

CREATE TABLE `goods_receiveds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `goods_received_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `temp_goods_received_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `po_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pr_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_invoice_posted` int(11) NOT NULL DEFAULT 0,
  `challan_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `goods_receiveds`
--

INSERT INTO `goods_receiveds` (`id`, `goods_received_no`, `temp_goods_received_no`, `po_no`, `pr_no`, `project_id`, `supplier_id`, `is_invoice_posted`, `challan_number`, `status`, `created_at`, `updated_at`) VALUES
(1, '2022072201GR', '2022072201', '2022072201PO', '2022072201PR', '4', '555', 0, '11111', 1, '2022-07-22 13:17:08', '2022-07-22 13:17:16'),
(2, '2022072202GR', '2022072202', '2022072202PO', '2022072202PR', '7', '558', 1, '11111', 1, '2022-07-22 13:39:16', '2022-07-22 13:48:25'),
(3, '2022072203GR', '2022072203', '2022072203PO', '2022072203PR', '4', '567', 1, '12', 1, '2022-07-22 14:27:54', '2022-07-22 14:28:29');

-- --------------------------------------------------------

--
-- Table structure for table `goods_received_details`
--

CREATE TABLE `goods_received_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `goods_received_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` int(11) NOT NULL,
  `received_qty` int(11) NOT NULL,
  `pandding_qty` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `goods_received_details`
--

INSERT INTO `goods_received_details` (`id`, `goods_received_no`, `item_id`, `received_qty`, `pandding_qty`, `created_at`, `updated_at`) VALUES
(1, '2022072201GR', 14, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(2, '2022072201GR', 15, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(3, '2022072201GR', 16, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(4, '2022072201GR', 17, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(5, '2022072201GR', 18, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(6, '2022072201GR', 19, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(7, '2022072201GR', 20, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(8, '2022072201GR', 21, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(9, '2022072201GR', 22, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(10, '2022072201GR', 23, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(11, '2022072201GR', 24, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(12, '2022072201GR', 25, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(13, '2022072201GR', 26, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(14, '2022072201GR', 27, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(15, '2022072201GR', 28, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(16, '2022072201GR', 29, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(17, '2022072201GR', 30, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(18, '2022072201GR', 31, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(19, '2022072201GR', 32, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(20, '2022072201GR', 33, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(21, '2022072201GR', 34, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(22, '2022072201GR', 35, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(23, '2022072201GR', 36, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(24, '2022072201GR', 37, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(25, '2022072201GR', 38, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(26, '2022072201GR', 39, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(27, '2022072201GR', 40, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(28, '2022072201GR', 41, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(29, '2022072201GR', 42, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(30, '2022072201GR', 43, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(31, '2022072201GR', 45, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(32, '2022072201GR', 46, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(33, '2022072201GR', 47, 1000, 0, '2022-07-22 13:17:08', '2022-07-22 13:17:08'),
(34, '2022072202GR', 24, 5000, 0, '2022-07-22 13:39:16', '2022-07-22 13:39:16'),
(35, '2022072202GR', 27, 5000, 0, '2022-07-22 13:39:16', '2022-07-22 13:39:16'),
(36, '2022072203GR', 48, 1000, 0, '2022-07-22 14:27:54', '2022-07-22 14:27:54');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_no`, `group_name`, `created_at`, `updated_at`) VALUES
(1, '11', 'XS', NULL, '2022-07-05 11:55:54'),
(19, '12', 'S', NULL, NULL),
(20, '13', 'M', NULL, '2022-06-28 22:15:11'),
(21, '14', 'L', NULL, NULL),
(22, '15', 'XL', NULL, '2022-07-05 11:56:16'),
(23, '16', 'XXL', NULL, '2022-07-05 11:56:30'),
(24, '17', 'XXXL', NULL, '2022-07-05 11:56:42'),
(25, '18', '1-2', '2022-07-03 14:15:18', '2022-07-03 14:15:18'),
(26, '19', '3-4', '2022-07-03 14:15:32', '2022-07-03 14:15:32'),
(27, '20', '5-6', '2022-07-04 12:22:31', '2022-07-04 12:22:31'),
(28, '21', '7-8', '2022-07-04 12:22:37', '2022-07-04 12:22:37'),
(29, '22', '9-11', '2022-07-04 12:22:46', '2022-07-04 12:22:46'),
(30, '23', '12-14', '2022-07-04 12:22:52', '2022-07-04 12:22:52'),
(32, '24', '5XL', '2022-07-22 14:21:02', '2022-07-22 14:21:02');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_note_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gl_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trn_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_terms` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_no`, `sale_order_id`, `delivery_note_id`, `date`, `customer_name`, `gl_code`, `project_id`, `trn_no`, `pay_mode`, `pay_terms`, `due_date`, `contact_no`, `address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '20220722003', NULL, NULL, '2022-07-22', 'PI-0559', NULL, '4', '11', 'Cash', '0', '2022-07-22', NULL, 'Dhaka', NULL, '2022-07-22 13:52:18', '2022-07-22 13:52:18'),
(2, '20220722004', NULL, NULL, '2022-07-22', 'PI-0556', NULL, '4', NULL, 'Cash', '0', '2022-07-22', NULL, NULL, NULL, '2022-07-22 14:33:19', '2022-07-22 14:33:19'),
(3, '20220723002', NULL, NULL, '2022-07-23', 'PI-0556', NULL, '4', NULL, 'Cash', '0', '2022-07-23', NULL, NULL, NULL, '2022-07-23 11:58:17', '2022-07-23 11:58:17'),
(4, '20220724004', NULL, NULL, '2022-07-24', 'PI-0556', NULL, '4', NULL, 'Cash', '0', '2022-07-24', NULL, NULL, NULL, '2022-07-24 06:18:40', '2022-07-24 06:18:40'),
(5, '20220724005', NULL, NULL, '2022-07-24', 'PI-0556', NULL, '4', NULL, 'Cash', '0', '2022-07-24', NULL, NULL, NULL, '2022-07-24 12:26:34', '2022-07-24 12:26:34'),
(6, '20220724007', '2', '1', '2022-07-24', 'PI-0001', NULL, '4', '100328253800003', 'Cash', '0', '2022-07-24', NULL, NULL, NULL, '2022-07-24 12:49:06', '2022-07-24 12:49:06');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_amounts`
--

CREATE TABLE `invoice_amounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `amount_from` decimal(8,2) NOT NULL,
  `amount_to` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_amounts`
--

INSERT INTO `invoice_amounts` (`id`, `invoice_id`, `amount_from`, `amount_to`, `created_at`, `updated_at`) VALUES
(1, 1, '8000.00', '250.00', '2022-07-22 13:52:18', '2022-07-22 13:52:18'),
(2, 3, '200.00', '61.64', '2022-07-23 11:58:17', '2022-07-23 11:58:17'),
(3, 4, '20.00', '3.44', '2022-07-24 06:18:40', '2022-07-24 06:18:40'),
(4, 5, '170.00', '5.37', '2022-07-24 12:26:34', '2022-07-24 12:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `style_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `barcode` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost_price` decimal(12,3) NOT NULL,
  `net_amount` decimal(12,3) NOT NULL,
  `vat_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_amount` decimal(12,3) NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` decimal(12,3) NOT NULL,
  `total_unit_price` decimal(12,3) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_no`, `item_id`, `style_id`, `color_id`, `size`, `invoice_id`, `barcode`, `quantity`, `cost_price`, `net_amount`, `vat_rate`, `vat_amount`, `unit`, `unit_price`, `total_unit_price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '20220722003', '24', '1', '8', 'M', 1, 101813, 1000, '5250.000', '1.000', '5', '250.000', 'PCS', '5.000', '5000.000', NULL, '2022-07-22 13:52:18', '2022-07-22 13:52:18'),
(2, '20220722003', '19', '5', '2', 'XS', 1, 141211, 10, '2500.000', '1.000', '0', '0.000', 'PCS', '250.000', '2500.000', NULL, '2022-07-22 13:52:18', '2022-07-22 13:52:18'),
(3, '20220722004', '48', '10', '23', '5XL', 2, 163224, 10, '126.000', '1.000', '5', '6.000', 'PCS', '12.000', '120.000', NULL, '2022-07-22 14:33:19', '2022-07-22 14:33:19'),
(4, '20220723002', '14', '1', '2', 'M', 3, 101213, 1, '12.360', '1.000', '3', '0.360', 'PCS', '12.000', '12.000', NULL, '2022-07-23 11:58:17', '2022-07-23 11:58:17'),
(5, '20220723002', '16', '5', '5', 'XS', 3, 141511, 1, '126.000', '1.000', '5', '6.000', 'PCS', '120.000', '120.000', NULL, '2022-07-23 11:58:17', '2022-07-23 11:58:17'),
(6, '20220724004', '14', '1', '2', 'M', 4, 101213, 1, '12.360', '1.000', '3', '0.360', 'PCS', '12.000', '12.000', NULL, '2022-07-24 06:18:40', '2022-07-24 06:18:40'),
(7, '20220724004', '15', '1', '4', 'XS', 4, 101411, 1, '4.200', '1.000', '5', '0.200', 'PCS', '4.000', '4.000', NULL, '2022-07-24 06:18:40', '2022-07-24 06:18:40'),
(8, '20220724005', '22', '2', '2', 'M', 5, 111213, 1, '149.350', '1.000', '3', '4.350', 'PCS', '145.000', '145.000', NULL, '2022-07-24 12:26:34', '2022-07-24 12:26:34'),
(9, '20220724005', '36', '1', '14', 'XS', 5, 102411, 1, '10.734', '1.000', '5', '0.511', 'PCS', '10.223', '10.223', NULL, '2022-07-24 12:26:34', '2022-07-24 12:26:34'),
(10, '20220724005', '43', '5', '7', 'S', 5, 141712, 1, '4.549', '1.000', '5', '0.217', 'PCS', '4.332', '4.332', NULL, '2022-07-24 12:26:34', '2022-07-24 12:26:34'),
(11, '20220724007', '14', '1', '2', 'M', 6, 101213, 1, '12.360', '1.000', '3', '0.360', 'PCS', '12.000', '12.000', NULL, '2022-07-24 12:49:06', '2022-07-24 12:49:06');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_item_temps`
--

CREATE TABLE `invoice_item_temps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `style_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost_price` decimal(12,3) NOT NULL,
  `net_amount` decimal(12,3) NOT NULL,
  `vat_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_amount` decimal(12,3) NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` decimal(12,3) NOT NULL,
  `total_unit_price` decimal(12,3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_item_temps`
--

INSERT INTO `invoice_item_temps` (`id`, `invoice_no`, `item_id`, `style_id`, `color_id`, `size`, `barcode`, `quantity`, `cost_price`, `net_amount`, `vat_rate`, `vat_amount`, `unit`, `unit_price`, `total_unit_price`, `created_at`, `updated_at`) VALUES
(1, '20220722003', '24', '1', '8', 'M', 101813, 1000, '5250.000', '5000.000', '5', '250.000', 'PCS', '5.000', '5000.000', '2022-07-22 13:50:44', '2022-07-22 13:50:44'),
(2, '20220722003', '19', '5', '2', 'XS', 141211, 10, '2500.000', '2500.000', '0', '0.000', 'PCS', '250.000', '2500.000', '2022-07-22 13:52:01', '2022-07-22 13:52:01'),
(3, '20220722004', '48', '10', '23', '5XL', 163224, 10, '126.000', '120.000', '5', '6.000', 'PCS', '12.000', '120.000', '2022-07-22 14:33:03', '2022-07-22 14:33:03'),
(4, '20220723002', '14', '1', '2', 'M', 101213, 1, '12.360', '12.000', '3', '0.360', 'PCS', '12.000', '12.000', '2022-07-23 11:58:02', '2022-07-23 11:58:02'),
(5, '20220723002', '16', '5', '5', 'XS', 141511, 1, '126.000', '120.000', '5', '6.000', 'PCS', '120.000', '120.000', '2022-07-23 11:58:07', '2022-07-23 11:58:07'),
(6, '20220724004', '14', '1', '2', 'M', 101213, 1, '12.360', '12.000', '3', '0.360', 'PCS', '12.000', '12.000', '2022-07-24 06:18:24', '2022-07-24 06:18:24'),
(7, '20220724004', '15', '1', '4', 'XS', 101411, 1, '4.200', '4.000', '5', '0.200', 'PCS', '4.000', '4.000', '2022-07-24 06:18:30', '2022-07-24 06:18:30'),
(8, '20220724005', '22', '2', '2', 'M', 111213, 1, '149.350', '145.000', '3', '4.350', 'PCS', '145.000', '145.000', '2022-07-24 12:26:07', '2022-07-24 12:26:07'),
(9, '20220724005', '36', '1', '14', 'XS', 102411, 1, '10.734', '10.223', '5', '0.511', 'PCS', '10.223', '10.223', '2022-07-24 12:26:13', '2022-07-24 12:26:13'),
(10, '20220724005', '43', '5', '7', 'S', 141712, 1, '4.549', '4.332', '5', '0.217', 'PCS', '4.332', '4.332', '2022-07-24 12:26:21', '2022-07-24 12:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_postings`
--

CREATE TABLE `invoice_postings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_posting_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `temp_invoice_posting_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `goods_received_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `po_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pr_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_paid` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_postings`
--

INSERT INTO `invoice_postings` (`id`, `invoice_posting_no`, `temp_invoice_posting_no`, `goods_received_no`, `po_no`, `pr_no`, `project_id`, `supplier_id`, `delivery_note`, `is_paid`, `created_at`, `updated_at`) VALUES
(1, '2022072201IP', '2022072201', '2022072202GR', '2022072202PO', '2022072202PR', 7, 558, '11111', 0, '2022-07-22 13:48:25', '2022-07-22 13:48:25'),
(2, '2022072202IP', '2022072202', '2022072203GR', '2022072203PO', '2022072203PR', 4, 567, '12', 1, '2022-07-22 14:28:29', '2022-07-22 14:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_posting_details`
--

CREATE TABLE `invoice_posting_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_posting_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `purchase_rate` int(11) NOT NULL,
  `vat_rate` int(11) NOT NULL,
  `vat_amount` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_posting_details`
--

INSERT INTO `invoice_posting_details` (`id`, `invoice_posting_no`, `item_id`, `quantity`, `purchase_rate`, `vat_rate`, `vat_amount`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, '2022072201IP', 24, 5000, 4, 1, 0, 20000, '2022-07-22 13:48:25', '2022-07-22 13:48:25'),
(2, '2022072201IP', 27, 5000, 8, 1, 0, 40000, '2022-07-22 13:48:25', '2022-07-22 13:48:25'),
(3, '2022072202IP', 48, 1000, 10, 1, 0, 10000, '2022-07-22 14:28:29', '2022-07-22 14:28:29');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_temps`
--

CREATE TABLE `invoice_temps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_temps`
--

INSERT INTO `invoice_temps` (`id`, `invoice_no`, `created_at`, `updated_at`) VALUES
(15, 20220725001, '2022-07-25 06:35:28', '2022-07-25 06:35:28'),
(16, 20220725002, '2022-07-25 06:35:42', '2022-07-25 06:35:42');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `style_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sell_price` decimal(10,3) NOT NULL,
  `vat_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_amount` decimal(10,3) NOT NULL,
  `total_amount` decimal(10,3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `style_id`, `group_no`, `group_name`, `barcode`, `item_name`, `brand_id`, `country`, `unit`, `description`, `sell_price`, `vat_rate`, `vat_amount`, `total_amount`, `created_at`, `updated_at`) VALUES
(14, '1', '13', 'M', '101213', '160 gsm R/N T-Shirt Orange M', '2', 'Bangladesh', 'PCS', 'Some Text', '12.000', '3', '0.360', '12.360', '2022-06-28 05:34:23', '2022-07-14 07:39:00'),
(15, '1', '11', 'XS', '101411', '160 gsm R/N T-Shirt S. Yellow XS', '4', 'Bangladesh', 'PCS', 'some text', '4.000', '4', '0.200', '4.200', '2022-06-28 11:47:01', '2022-07-14 08:11:42'),
(16, '5', '11', 'XS', '141511', '220 gsm Cotton Polo-Shirt White XS', '5', 'Bangladesh', 'PCS', 'some text', '120.000', '4', '6.000', '126.000', '2022-06-28 22:02:10', '2022-07-14 06:06:16'),
(17, '1', '12', 'S', '101212', '160 gsm R/N T-Shirt Orange S', '2', 'Bangladesh', 'PCS', 'some text', '5.480', '4', '0.274', '5.754', '2022-06-28 23:43:34', '2022-07-22 13:03:10'),
(18, '1', '5', 'Xl', '14343', '160 gsm R/N T-Shirt S. Yellow Xl', '4', 'Bangladesh', 'PCS', 'some text', '135.000', '4', '6.750', '141.750', '2022-06-28 23:52:30', '2022-06-28 23:52:30'),
(19, '5', '11', 'XS', '141211', '220 gsm Cotton Polo-Shirt Orange XS', '2', 'Bangladesh', 'PCS', 'some text', '250.000', '1', '0.000', '250.000', '2022-06-30 22:17:02', '2022-07-14 06:04:31'),
(20, '2', '14', 'L', '111214', '190 gsm R/N T-Shirt Orange L', '2', 'Bangladesh', 'PCS', 'sdf', '10.000', '4', '0.500', '10.500', '2022-07-02 14:17:40', '2022-07-14 06:08:56'),
(21, '3', '19', '3-4', '121219', '170 gsm Boy\'s T-shirt Orange 3-4', '2', 'Bangladesh', 'PCS', 'Boys T-Shirt', '4.000', '4', '0.200', '4.200', '2022-07-03 14:18:29', '2022-07-14 06:09:17'),
(22, '2', '13', 'M', '111213', '190 gsm R/N T-Shirt Orange M', '2', 'Bangladesh', 'PCS', 'some text', '145.000', '3', '4.350', '149.350', '2022-07-04 11:52:39', '2022-07-14 06:08:06'),
(23, '1', '12', 'S', '101512', '160 gsm R/N T-Shirt White S', '5', 'Bangladesh', 'PCS', NULL, '5.000', '4', '0.250', '5.250', '2022-07-04 12:24:20', '2022-07-14 06:04:12'),
(24, '1', '13', 'M', '101813', '160 gsm R/N T-Shirt Black M', '8', 'Bangladesh', 'PCS', NULL, '5.000', '4', '0.250', '5.250', '2022-07-04 12:25:50', '2022-07-14 06:03:44'),
(25, '2', '19', '3-4', '112019', '190 gsm R/N T-Shirt K. green 3-4', '10', 'Bangladesh', 'PCS', 'Ullamco nostrum nece', '84.545', '1', '0.000', '84.545', '2022-07-04 12:50:57', '2022-07-14 06:23:24'),
(26, '1', '14', 'L', '102314', '160 gsm R/N T-Shirt PINK L', '13', 'Bangladesh', 'PCS', NULL, '5.000', '4', '0.250', '5.250', '2022-07-04 12:51:42', '2022-07-14 06:03:28'),
(27, '1', '12', 'S', '101312', '160 gsm R/N T-Shirt Red S', '3', 'Bangladesh', 'PCS', NULL, '10.000', '4', '0.500', '10.500', '2022-07-05 12:03:55', '2022-07-14 06:00:40'),
(28, '1', '12', 'S', '102112', '160 gsm R/N T-Shirt Navy S', '11', 'Bangladesh', 'PCS', NULL, '10.222', '4', '0.511', '10.733', '2022-07-05 12:05:58', '2022-07-14 06:01:16'),
(29, '1', '11', 'XS', '102511', '160 gsm R/N T-Shirt Lavender XS', '15', 'Bangladesh', 'PCS', NULL, '10.222', '1', '0.000', '10.222', '2022-07-05 12:06:31', '2022-07-14 06:03:04'),
(30, '1', '11', 'XS', '102611', '160 gsm R/N T-Shirt Grey XS', '16', 'Bangladesh', 'PCS', NULL, '10.222', '4', '0.511', '10.733', '2022-07-05 12:07:05', '2022-07-14 06:02:56'),
(31, '1', '11', 'XS', '101111', '160 gsm R/N T-Shirt Burgundy XS', '1', 'Bangladesh', 'PCS', NULL, '5.480', '4', '0.274', '5.754', '2022-07-05 12:07:37', '2022-07-22 13:02:44'),
(32, '1', '11', 'XS', '102211', '160 gsm R/N T-Shirt sky blue XS', '12', 'Bangladesh', 'PCS', NULL, '10.333', '4', '0.517', '10.850', '2022-07-05 12:08:35', '2022-07-14 06:02:04'),
(33, '1', '12', 'S', '102712', '160 gsm R/N T-Shirt Turquise S', '17', 'Bangladesh', 'PCS', NULL, '10.232', '4', '0.512', '10.744', '2022-07-05 12:09:07', '2022-07-14 06:02:47'),
(34, '1', '11', 'XS', '102811', '160 gsm R/N T-Shirt Pistacio XS', '18', 'Bangladesh', 'PCS', NULL, '10.382', '4', '0.519', '10.901', '2022-07-05 12:09:39', '2022-07-14 06:02:13'),
(35, '1', '11', 'XS', '101711', '160 gsm R/N T-Shirt R.blue XS', '7', 'Bangladesh', 'PCS', NULL, '10.232', '1', '0.000', '10.232', '2022-07-05 12:10:09', '2022-07-14 06:04:40'),
(36, '1', '11', 'XS', '102411', '160 gsm R/N T-Shirt L.GREEN XS', '14', 'Bangladesh', 'PCS', NULL, '10.223', '4', '0.511', '10.734', '2022-07-05 12:10:31', '2022-07-14 06:03:15'),
(37, '1', '13', 'M', '102913', '160 gsm R/N T-Shirt B. Green M', '19', 'Bangladesh', 'PCS', NULL, '10.323', '4', '0.516', '10.839', '2022-07-05 12:11:02', '2022-07-14 06:02:34'),
(38, '1', '11', 'XS', '102011', '160 gsm R/N T-Shirt K. green XS', '10', 'Bangladesh', 'PCS', NULL, '10.232', '4', '0.512', '10.744', '2022-07-05 12:11:26', '2022-07-14 06:00:49'),
(39, '2', '11', 'XS', '113011', '190 gsm R/N T-Shirt Purple XS', '20', 'Bangladesh', 'PCS', NULL, '5.020', '4', '0.251', '5.271', '2022-07-05 12:11:56', '2022-07-14 06:07:49'),
(40, '1', '12', 'S', '103112', '160 gsm R/N T-Shirt Sand S', '21', 'Bangladesh', 'PCS', NULL, '5.289', '4', '0.264', '5.553', '2022-07-05 12:12:21', '2022-07-14 06:02:23'),
(41, '5', '19', '3-4', '141219', '220 gsm Cotton Polo-Shirt Orange 3-4', '2', 'Bangladesh', 'PCS', 'some text', '67.088', '3', '2.013', '69.101', '2022-07-06 03:50:24', '2022-07-14 06:21:07'),
(42, '5', '11', 'XS', '141311', '220 gsm Cotton Polo-Shirt Red XS', '3', 'Bangladesh', 'PCS', NULL, '5.324', '4', '0.266', '5.590', '2022-07-06 06:56:11', '2022-07-14 06:09:55'),
(43, '5', '12', 'S', '141712', '220 gsm Cotton Polo-Shirt R.blue S', '7', 'Bangladesh', 'PCS', NULL, '4.332', '4', '0.217', '4.549', '2022-07-06 06:58:04', '2022-07-14 06:20:27'),
(45, '5', '12', 'S', '141112', '220 gsm Cotton Polo-Shirt Burgundy S', '1', 'Bangladesh', 'PCS', NULL, '3.323', '4', '0.166', '3.489', '2022-07-06 09:06:41', '2022-07-14 10:05:05'),
(46, '5', '15', 'XL', '141415', '220 gsm Cotton Polo-Shirt S. Yellow XL', '4', 'Bangladesh', 'PCS', 'some text', '1012.000', '1', '0.000', '1012.000', '2022-07-06 14:24:43', '2022-07-14 06:22:51'),
(47, '6', '11', 'XS', '153011', '220 gsm Cvc Polo-Shirt Purple XS', '20', 'Bangladesh', 'PCS', 'some text', '9.880', '3', '0.296', '10.176', '2022-07-14 05:36:24', '2022-07-14 05:36:24'),
(48, '10', '24', '5XL', '163224', '220 gsm Special Polo Mint Green 5XL', '23', 'Bangladesh', 'PCS', NULL, '12.000', '4', '0.600', '12.600', '2022-07-22 14:23:56', '2022-07-22 14:23:56'),
(49, '11', '24', '5XL', '173224', 'Promo Stock Sale Mint Green 5XL', '23', 'Bangladesh', 'PCS', NULL, '3.000', '4', '0.150', '3.150', '2022-07-22 14:35:45', '2022-07-22 14:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `item_purchases`
--

CREATE TABLE `item_purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `purchase_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `shipping_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_rate` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `vat_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_amount` int(11) NOT NULL,
  `taxable_supplies` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_stocks`
--

CREATE TABLE `item_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `purchase_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `journals`
--

CREATE TABLE `journals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `journal_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_center_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `party_info_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit_party_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txn_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `txn_date` date DEFAULT NULL,
  `txn_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_head_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorized` tinyint(1) NOT NULL DEFAULT 0,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT 0,
  `date_split` date DEFAULT NULL,
  `debit_account_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_account_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debit_ms_account_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_ms_account_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL,
  `tax_rate` int(11) NOT NULL,
  `vat_amount` decimal(12,2) NOT NULL,
  `total_amount` decimal(12,2) NOT NULL,
  `narration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_details_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `journals`
--

INSERT INTO `journals` (`id`, `project_id`, `journal_no`, `date`, `invoice_no`, `cost_center_id`, `party_info_id`, `credit_party_info`, `txn_type`, `txn_date`, `txn_mode`, `ac_head_id`, `authorized`, `approved`, `state`, `comment`, `checked`, `date_split`, `debit_account_no`, `credit_account_no`, `debit_ms_account_no`, `credit_ms_account_no`, `amount`, `tax_rate`, `vat_amount`, `total_amount`, `narration`, `bn_details_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, '4', '20220706001J', '2022-07-06', '20220619001', '3', '1', NULL, 'Purchase/Expense', NULL, 'Cash', '4', 0, 0, 'Authorization', NULL, 0, NULL, NULL, NULL, NULL, NULL, '100.00', 1, '0.00', '100.00', '7', NULL, NULL, '2022-07-06 06:27:08', '2022-07-06 06:27:08');

-- --------------------------------------------------------

--
-- Table structure for table `ladger_basic_temps`
--

CREATE TABLE `ladger_basic_temps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `journal_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ledger_acc_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ladger_debit_amount` decimal(12,2) NOT NULL,
  `ledger_credit_amount` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ladger_detail_temps`
--

CREATE TABLE `ladger_detail_temps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `journal_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `txn_date` date DEFAULT NULL,
  `date_split` date DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ledger_acc_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ladger_debit_amount` decimal(12,2) NOT NULL,
  `ledger_credit_amount` decimal(12,2) NOT NULL,
  `narration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ladger_blnc_debit_amount` decimal(12,2) NOT NULL,
  `ladger_blnc_credit_amount` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ledger_basics`
--

CREATE TABLE `ledger_basics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `journal_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ledger_acc_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ladger_debit_amount` decimal(12,2) NOT NULL,
  `ledger_credit_amount` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mappings`
--

CREATE TABLE `mappings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fld_txn_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fld_txn_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fld_ac_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fld_ac_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mappings`
--

INSERT INTO `mappings` (`id`, `fld_txn_type`, `fld_txn_mode`, `fld_ac_code`, `fld_ac_name`, `created_at`, `updated_at`) VALUES
(4, 'vat', 'credit', '56-100', '5', '2022-06-29 04:24:20', '2022-06-29 04:24:20'),
(5, 'purchase', 'credit', '57-100', '4', '2022-07-06 03:25:02', '2022-07-06 03:25:02');

-- --------------------------------------------------------

--
-- Table structure for table `master_accounts`
--

CREATE TABLE `master_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mst_ac_code` int(11) NOT NULL,
  `mst_ac_head` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mst_definition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mst_ac_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_accounts`
--

INSERT INTO `master_accounts` (`id`, `mst_ac_code`, `mst_ac_head`, `mst_definition`, `mst_ac_type`, `vat_type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 56, 'Incidunt minus exer', 'Depreciation and amortization', '3', 'Input', NULL, '2022-06-26 10:00:22', '2022-06-26 10:00:22'),
(4, 57, 'Sit ab quas atque r', 'Depreciation and amortization', '3', 'Output', NULL, '2022-06-26 10:00:35', '2022-06-26 10:00:35'),
(5, 100, 'Impedit deleniti no', 'Sell of Asset', '4', 'Output', NULL, '2022-06-26 10:21:31', '2022-06-26 10:21:31'),
(6, 101, 'Iusto consequatur ma', 'Current / Operating Asset', '3', 'Output', NULL, '2022-06-26 10:22:50', '2022-06-26 10:22:50'),
(7, 102, 'test master account', 'Rent Income', '2', 'Input', NULL, '2022-06-29 04:39:32', '2022-06-29 04:39:32');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_03_26_031156_create_modules_table', 1),
(5, '2022_03_26_032042_create_permissions_table', 1),
(6, '2022_03_26_032201_create_roles_table', 1),
(7, '2022_03_26_032315_create_permission_role_table', 1),
(8, '2022_04_19_133747_create_countries_table', 1),
(9, '2022_05_19_154312_create_settings_table', 1),
(11, '2022_05_21_124837_create_bank_details_table', 1),
(12, '2022_05_22_055304_create_master_accounts_table', 1),
(13, '2022_05_22_071153_create_mst_definitions_table', 1),
(14, '2022_05_22_074350_create_mst_a_c_types_table', 1),
(15, '2022_05_22_111337_create_account_heads_table', 1),
(17, '2022_05_23_081800_create_mappings_table', 1),
(19, '2022_05_23_113304_create_brands_table', 1),
(20, '2022_05_24_095655_create_groups_table', 1),
(21, '2022_05_24_105048_create_project_details_types_table', 1),
(22, '2022_05_24_111945_create_vat_types_table', 1),
(23, '2022_05_24_141459_create_cost_center_types_table', 1),
(25, '2022_05_26_054235_create_units_table', 1),
(26, '2022_05_26_054548_create_vat_rates_table', 1),
(28, '2022_05_26_103434_create_mst_cat_types_table', 1),
(33, '2022_05_29_064024_create_payterms_table', 3),
(35, '2022_05_30_021102_create_temp_item_stores_table', 4),
(37, '2022_05_29_043149_create_product_purchases_table', 5),
(42, '2022_05_28_185139_create_branches_table', 7),
(43, '2022_05_28_185057_create_pay_terms_table', 8),
(44, '2022_05_31_063230_create_item_stocks_table', 9),
(45, '2022_05_31_063420_create_purchases_table', 9),
(46, '2022_05_31_063503_create_purchase_items_table', 9),
(47, '2022_05_31_095625_create_item_purchases_table', 10),
(49, '2022_06_02_055814_create_purchase_temps_table', 12),
(50, '2022_06_02_061223_create_purchse_detail_temps_table', 12),
(51, '2022_06_02_061544_create_purchse_details_table', 12),
(52, '2022_06_06_110508_create_items_table', 13),
(54, '2022_06_08_093314_create_pay_modes_table', 15),
(61, '2022_05_21_070932_create_project_details_table', 18),
(62, '2022_05_22_115205_create_cost_centers_table', 18),
(63, '2022_05_23_112055_create_profit_centers_table', 18),
(64, '2022_05_26_072722_create_party_infos_table', 18),
(66, '2022_06_13_065047_create_txn_types_table', 18),
(68, '2022_06_16_044806_create_purchase_requisition_details_table', 19),
(69, '2022_06_16_044148_create_purchase_requisitions_table', 20),
(70, '2022_06_22_055705_create_notifications_table', 21),
(72, '2022_06_13_064830_create_journals_table', 22),
(73, '2022_06_22_134955_create_ladger_basic_temps_table', 22),
(74, '2022_06_22_135035_create_ladger_detail_temps_table', 22),
(75, '2022_06_22_135133_create_ledger_basics_table', 22),
(76, '2022_06_22_135159_create_sale_invoices_table', 22),
(77, '2022_06_22_135229_create_sale_orders_table', 22),
(79, '2022_06_22_135312_create_sale_order_temps_table', 22),
(80, '2022_06_22_135337_create_sale_returns_table', 22),
(81, '2022_06_22_135357_create_sale_return_temps_table', 22),
(85, '2022_06_26_074942_create_bulks_table', 23),
(86, '2022_06_28_093424_create_styles_table', 24),
(88, '2022_06_30_045656_create_goods_received_details_table', 25),
(89, '2022_06_29_082309_create_goods_receiveds_table', 26),
(90, '2022_05_29_110049_create_invoices_table', 27),
(91, '2022_05_29_110108_create_invoice_items_table', 27),
(92, '2022_06_01_054019_create_invoice_item_temps_table', 27),
(93, '2022_06_05_082936_create_stock_transections_table', 27),
(94, '2022_06_05_091106_create_opening_stocks_table', 27),
(95, '2022_06_14_065539_create_sale_order_items_table', 27),
(96, '2022_06_14_065610_create_sale_order_item_temps_table', 27),
(98, '2022_06_22_140407_create_delivery_notes_table', 28),
(99, '2022_06_26_094502_create_delivery_items_table', 28),
(100, '2022_06_15_101915_create_delivery_note_sales_table', 29),
(101, '2022_06_30_105942_create_purchase_returns_table', 30),
(102, '2022_06_30_110641_create_purchase_return_details_table', 30);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin Dashboard', '2022-07-17 10:19:35', '2022-07-17 10:19:35'),
(2, 'Access Control', '2022-07-17 10:19:35', '2022-07-17 10:19:35'),
(3, 'Mapping', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(4, 'Project', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(5, 'Bank Details', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(6, 'Master Account', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(7, 'Account Head', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(8, 'Cost Center', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(9, 'Profit Center', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(10, 'Party Info', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(11, 'Document', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(12, 'Journal', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(13, 'Accounts Report', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(14, 'Style', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(15, 'Color', '2022-07-17 10:19:38', '2022-07-17 10:19:38'),
(16, 'Size', '2022-07-17 10:19:38', '2022-07-17 10:19:38'),
(17, 'item-list', '2022-07-17 10:19:38', '2022-07-17 10:19:38'),
(18, 'Stock Managment', '2022-07-17 10:19:38', '2022-07-17 10:19:38'),
(19, 'Report', '2022-07-17 10:19:38', '2022-07-17 10:19:38'),
(20, 'Purchase', '2022-07-17 10:19:39', '2022-07-17 10:19:39'),
(21, 'Purchase Return', '2022-07-17 10:19:39', '2022-07-17 10:19:39'),
(22, 'Payment Voucher', '2022-07-17 10:19:39', '2022-07-17 10:19:39'),
(23, 'Sales', '2022-07-17 10:19:39', '2022-07-17 10:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `mst_a_c_types`
--

CREATE TABLE `mst_a_c_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mst_a_c_types`
--

INSERT INTO `mst_a_c_types` (`id`, `title`, `cat_type`, `created_at`, `updated_at`) VALUES
(1, 'REVENUE INCOME', 3, '2022-05-26 05:17:55', '2022-05-26 05:17:55'),
(2, 'ASSET', 1, '2022-05-26 05:18:09', '2022-05-26 05:18:09'),
(3, 'REVENUE EXPENSE', 4, '2022-05-26 05:18:24', '2022-05-26 05:18:24'),
(4, 'LIABILITY', 2, '2022-05-26 05:18:38', '2022-05-26 05:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `mst_cat_types`
--

CREATE TABLE `mst_cat_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mst_cat_types`
--

INSERT INTO `mst_cat_types` (`id`, `title`, `value`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Asset', 100, NULL, '2022-05-26 05:17:02', '2022-05-26 05:17:02'),
(2, 'Liability', 200, NULL, '2022-05-26 05:17:14', '2022-05-26 05:17:14'),
(3, 'Income', 300, NULL, '2022-05-26 05:17:23', '2022-05-26 05:17:23'),
(4, 'Expense', 400, NULL, '2022-05-26 05:17:40', '2022-05-26 05:17:40');

-- --------------------------------------------------------

--
-- Table structure for table `mst_definitions`
--

CREATE TABLE `mst_definitions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mst_definitions`
--

INSERT INTO `mst_definitions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Sales Turnover', '2022-05-26 08:02:54', '2022-05-26 08:02:54'),
(2, 'Rent Income', '2022-05-26 08:02:54', '2022-05-26 08:02:54'),
(3, 'Fixed Asset', '2022-05-26 08:02:55', '2022-05-26 08:02:55'),
(4, 'Liquid Asset', '2022-05-26 08:02:55', '2022-05-26 08:02:55'),
(5, 'Current / Operating Asset', '2022-05-26 08:02:55', '2022-05-26 08:02:55'),
(6, 'Current Liability', '2022-05-26 08:02:55', '2022-05-26 08:02:55'),
(7, 'Owners Investment', '2022-05-26 08:02:55', '2022-05-26 08:02:55'),
(8, 'Long Term Liability', '2022-05-26 08:02:55', '2022-05-26 08:02:55'),
(9, 'Sell of Asset', '2022-05-26 08:02:55', '2022-05-26 08:02:55'),
(10, 'Other Income', '2022-05-26 08:02:55', '2022-05-26 08:02:55'),
(11, 'Cost of Sales / Goods Sold', '2022-05-26 08:02:55', '2022-05-26 08:02:55'),
(12, 'Administrative Expense', '2022-05-26 08:02:55', '2022-05-26 08:02:55'),
(13, 'Marketing, advertising, and promotion', '2022-05-26 08:02:55', '2022-05-26 08:02:55'),
(14, 'Salaries, benefits and wages', '2022-05-26 08:02:55', '2022-05-26 08:02:55'),
(15, 'Utility Expenses', '2022-05-26 08:02:55', '2022-05-26 08:02:55'),
(16, 'Rent and insurance', '2022-05-26 08:02:55', '2022-05-26 08:02:55'),
(17, 'Depreciation and amortization', '2022-05-26 08:02:55', '2022-05-26 08:02:55'),
(18, 'Property Investment', '2022-05-26 08:02:55', '2022-05-26 08:02:55');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `opening_stocks`
--

CREATE TABLE `opening_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `party_infos`
--

CREATE TABLE `party_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pi_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pi_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trn_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `con_person` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `con_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `party_infos`
--

INSERT INTO `party_infos` (`id`, `pi_code`, `pi_name`, `pi_type`, `trn_no`, `address`, `con_person`, `con_no`, `phone_no`, `email`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'PI-0001', 'ABDUL QADER HASAN READY MADE GR.TRD', 'Customer', '100328253800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:14', NULL),
(2, 'PI-0002', 'ABID READYMADE GARMENTS TRADING LLC', 'Customer', '100212389900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:14', NULL),
(3, 'PI-0003', 'ABSOLUTE GLOBAL GENERAL TRADING', 'Customer', '100453652800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:14', NULL),
(4, 'PI-0004', 'ADMART FZE', 'Customer', '100572617700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:14', NULL),
(5, 'PI-0005', 'AHLAN SUPERMARKET', 'Customer', '100350851000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:14', NULL),
(6, 'PI-0006', 'AHMED NASER GARMENTS WORKS AJMAN', 'Customer', '100381967700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:14', NULL),
(7, 'PI-0007', 'AIN AL SHAHEEN TRD LLC', 'Customer', '100327162200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:14', NULL),
(8, 'PI-0008', 'AL AMAL READYMADE GARMENTS WORKSHOP LLC', 'Customer', '100357691300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:14', NULL),
(9, 'PI-0009', 'AL ANAS ADV. GIFTS & SUPPLIES', 'Customer', '100002997300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:14', NULL),
(10, 'PI-0010', 'AL AOSRA GENERAL TRADING LLC', 'Customer', '100532981600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:14', NULL),
(11, 'PI-0011', 'SUPER GENERAL TRADING  LLC', 'Customer', '100436528200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:14', NULL),
(12, 'PI-0012', 'AL BASFOOR SHOES & BEGS LLC', 'Customer', '100249357300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:14', NULL),
(13, 'PI-0013', 'AL ESTRAHA READYMADE GARMENTS LLC', 'Customer', '100332531100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:15', NULL),
(14, 'PI-0014', 'AL FAN AL MALAKI EMB.', 'Customer', '100208478600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:15', NULL),
(15, 'PI-0015', 'AL FARDIN READYMADE GARM. TRDG. L.L.C', 'Customer', '100036082400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:15', NULL),
(16, 'PI-0016', 'AL FURQAN GARMENTS WORKSHOP', 'Customer', '100263802900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:15', NULL),
(17, 'PI-0017', 'AL JAMEELA GARMENTS WORKSHOP', 'Customer', '100390516100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:15', NULL),
(18, 'PI-0018', 'AL JANAHI UNIFORM', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:15', NULL),
(19, 'PI-0019', 'AL JAWEED TAILORING AND EMB WORKSHOP LLC', 'Customer', '100328492200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:15', NULL),
(20, 'PI-0020', 'AL MAIDAN READY MADE GARMENTS TRADING LLC', 'Customer', '100054044100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:15', NULL),
(21, 'PI-0021', 'AL MANAMA ADVERTISING', 'Customer', '100460173600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:15', NULL),
(22, 'PI-0022', 'AL MAWADAH GARMENTS & TEXTILES TRADING', 'Customer', '100398283000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:15', NULL),
(23, 'PI-0023', 'AL MENHA TAILORING & EMB. WORKSHOP', 'Customer', '100017251800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:15', NULL),
(24, 'PI-0024', 'AL MINERA GARMENTS  WORKSHOP', 'Customer', '100037759600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:15', NULL),
(25, 'PI-0025', 'AL MINHAJ UNIFORM TAILORING W.SHOP', 'Customer', '100219675400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:15', NULL),
(26, 'PI-0026', 'AL MUSHIR SILK SCREEN WORKS', 'Customer', '100430723500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:15', NULL),
(27, 'PI-0027', 'AL NILE GARMENTS WORKSHOP', 'Customer', '100384368500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:15', NULL),
(28, 'PI-0028', 'AL RATHATH READYMADE GAR.TRD. LLC', 'Customer', '100292847900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:15', NULL),
(29, 'PI-0029', 'AL SAISEL TRADING CO LLC', 'Customer', '100033560200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:15', NULL),
(30, 'PI-0030', 'AL SHUA AL THAHABAI ADV. BOARDS DESIGNERS', 'Customer', '100344202500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:15', NULL),
(31, 'PI-0031', 'AL SIYAJ GARMENTS WORKSHOP', 'Customer', '100569877200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:15', NULL),
(32, 'PI-0032', 'AL TAWWAKKAL GARMENTS TEXTILES AND WORKSHOP LLC', 'Customer', '100472652500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:15', NULL),
(33, 'PI-0033', 'AL ZOOR EMBROIDERY', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:15', NULL),
(34, 'PI-0034', 'ALMSHRBEIA READYMADE GARMENTS', 'Customer', '100356453900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:15', NULL),
(35, 'PI-0035', 'ALMSHRBEIA READYMADE GARMENTS TRADING', 'Customer', '100356453900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(36, 'PI-0036', 'ASHBROOK GENERAL TRD. LLC', 'Customer', '100005194400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(37, 'PI-0037', 'BAIG BROTHER', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(38, 'PI-0038', 'BEST BUY TEXTILE LLC', 'Customer', '100272849900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(39, 'PI-0039', 'BLOSSOM UNIFORMS TRD', 'Customer', '100364543700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(40, 'PI-0040', 'BRAND ESENSE PROMOTIONAL GIFTS PREPARING', 'Customer', '100378143000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(41, 'PI-0041', 'BROAD WAY', 'Customer', '10010256400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(42, 'PI-0042', 'BROTHERS TAILORING & TEXTILE TRADING LLC', 'Customer', '100360136400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(43, 'PI-0043', 'COMFORT GARMENT,AJMAN P.O 9088', 'Customer', '100382615100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(44, 'PI-0044', 'COMPACT INTERNATIONAL FZE', 'Customer', '100333614400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(45, 'PI-0045', 'CONCORD SILK SCREEN WORKS, AJMAN', 'Customer', '100354541300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(46, 'PI-0046', 'COTTON MART GENERAL TRADING L.L.C', 'Customer', '100294333800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(47, 'PI-0047', 'DEEPAK TRADING', 'Customer', '100049718800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(48, 'PI-0048', 'DREAMER TRADING LLC', 'Customer', '100303551400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(49, 'PI-0049', 'DSIGNATION FZE LLC', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(50, 'PI-0050', 'EFZEE FASHION TAILORING ', 'Customer', '100435251200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(51, 'PI-0051', 'EMR UNIFORMS & GENERAL TRADING FZ LLC', 'Customer', '100558346100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(52, 'PI-0052', 'EVEREST VISION GARMENT TRD FZE', 'Customer', '100276900600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(53, 'PI-0053', 'FALAK CHOICE TAILORING & TEXTILES TRADING LLC', 'Customer', '100374215000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(54, 'PI-0054', 'FINE FIT TRADING & UNIFORMS TAILORING', 'Customer', '100617649700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(55, 'PI-0055', 'FOUR SQUARE GENERAL TRADING LLC', 'Customer', '100295153900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(56, 'PI-0056', 'FRONT GARMENTS INTERNATIONAL FZE', 'Customer', '100280146000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(57, 'PI-0057', 'FRONT LINE GARMENTS', 'Customer', '100228888200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(58, 'PI-0058', 'GEM UNIFROM LLC', 'Customer', '100356165900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(59, 'PI-0059', 'GIFT MARKET', 'Customer', '100060218300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:16', NULL),
(60, 'PI-0060', 'GREEN INNNVATIONS', 'Customer', '100572853800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(61, 'PI-0061', 'GUDDA GENERAL TRADING LLC', 'Customer', '100454280700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(62, 'PI-0062', 'GULF STREAM GENERAL TRADING LLC', 'Customer', '100379572900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(63, 'PI-0063', 'HOLLYWOOD TAILORING WORKSHOP', 'Customer', '100294302300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(64, 'PI-0064', 'INTEGRAL MIDELEST GENEREL TRADING', 'Customer', '100074242700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(65, 'PI-0065', 'ISLANDLAND GENERAL TRADING LLC', 'Customer', '100302439300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(66, 'PI-0066', 'JMARKS GENERAL TRADING ', 'Customer', '100294333800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(67, 'PI-0067', 'LAND CHOICE FASHION', 'Customer', '100297025700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(68, 'PI-0068', 'MADINAT AL SAAD READYMADE GARMENTS TRADING', 'Customer', '100389049600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(69, 'PI-0069', 'MADINAT MALADYS TRADING', 'Customer', '100206700500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(70, 'PI-0070', 'MAHA GARMENTS WORKSHOP', 'Customer', '100018573400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(71, 'PI-0071', 'MAKSUD GARMENTS WORKSHOP', 'Customer', '100352098600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(72, 'PI-0072', 'MANZOOR AHMED TEXTILES TRADING & TAILORING LLC', 'Customer', '100250254800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(73, 'PI-0073', 'MATRIX TEXTILE GARMENTS TRADING LLC', 'Customer', '100338544800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(74, 'PI-0074', 'MILANO ADVERTISING ', 'Customer', '100578501700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(75, 'PI-0075', 'MOHAMMAD JALAL READYMADE GAR. TRAD. LLC', 'Customer', '100254327800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(76, 'PI-0076', 'MOHAMMAD KHALIL READY MADE GR.TRD, LLC', 'Customer', '100028358800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(77, 'PI-0077', 'MOHAMMEAD JALAJ READYMADE GAR. TRAD. LLC', 'Customer', '100254327800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(78, 'PI-0078', 'MOHAMMED HABIB READYMADE GARMENTS TRADING LLC', 'Customer', '100516955000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(79, 'PI-0079', 'MOHD SHAHADAT MOHD USED CAR & SPARE PARTS TR', 'Customer', '100319824700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(80, 'PI-0080', 'MR MASUM', 'Customer', '100219699400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(81, 'PI-0081', 'MUHER ARTS', 'Customer', '100256864800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(82, 'PI-0082', 'MWAY DESIGNS FZ-LLC', 'Customer', '100452718800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(83, 'PI-0083', 'NANA DESI AINNURRUVAR VANIK FZE', 'Customer', '100321894600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(84, 'PI-0084', 'NOOR FOR TRADING OF READY  GARMENTS', 'Customer', '100288455700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:17', NULL),
(85, 'PI-0085', 'OBAID MATROOSHI SILK SCREEN PRINTING LLC', 'Customer', '100378744500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:18', NULL),
(86, 'PI-0086', 'OMAR READYMADE GARMENTS', 'Customer', '100262408600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:18', NULL),
(87, 'PI-0087', 'ONE O EIGHT FZ LLE', 'Customer', '10045363200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:18', NULL),
(88, 'PI-0088', 'OPTIMISTIC', 'Customer', '100375050000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:18', NULL),
(89, 'PI-0089', 'PEARL HOUSE GARMENTS TRADING LLC', 'Customer', '100358246500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:18', NULL),
(90, 'PI-0090', 'PERFECT SOLUTION FZE', 'Customer', '100042234300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:18', NULL),
(91, 'PI-0091', 'PERSONA ADVERTISING', 'Customer', '100221673500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:18', NULL),
(92, 'PI-0092', 'PROMOWEAR', 'Customer', '100391391800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:18', NULL),
(93, 'PI-0093', 'QASAID TAILORING & EMB. W.SHOP', 'Customer', '100270906900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:18', NULL),
(94, 'PI-0094', 'QASEM SCREEN PRINTING', 'Customer', '100397862200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:18', NULL),
(95, 'PI-0095', 'QUALITY OFFICE EQUIPMENT TRADING', 'Customer', '100344445000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:18', NULL),
(96, 'PI-0096', 'RADHE KRISHNA GENERAL TRADING FZE', 'Customer', '100466216700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:18', NULL),
(97, 'PI-0097', 'ROYAL DRESS GARMENTS W/SHOP', 'Customer', '100361273400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:18', NULL),
(98, 'PI-0098', 'ROYAL EXPERIENCE TAILORING & EMDROIDERY', 'Customer', '100578501700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:18', NULL),
(99, 'PI-0099', 'SABAH AL MADEENA UNIFORM', 'Customer', '100284582200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:18', NULL),
(100, 'PI-0100', 'SAHARA GARMENTS EMBOIDERY', 'Customer', '100498340700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:18', NULL),
(101, 'PI-0101', 'SAMA AL RAHMANIAH READY MADE GAR TR LLC', 'Customer', '100263407700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:18', NULL),
(102, 'PI-0102', 'SANAYA GARMENTS', 'Customer', '100016290700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:18', NULL),
(103, 'PI-0103', 'SHAHID FROM COMPACT INTERNATIONAL FZE', 'Customer', '100333614400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:18', NULL),
(104, 'PI-0104', 'SHAHID GARMENTS W.SHOP', 'Customer', '100221720400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:18', NULL),
(105, 'PI-0105', 'SHAMS AL JABAJ GENERAL TRADING CO. LLC', 'Customer', '100386197600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:18', NULL),
(106, 'PI-0106', 'SIGN MIDDLEEAST TRADING', 'Customer', '100347511600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:18', NULL),
(107, 'PI-0107', 'SIIGNATURE PACK LLC', 'Customer', '100615336300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:18', NULL),
(108, 'PI-0108', 'SILVER THREAD WORKSHOP', 'Customer', '100016290700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:19', NULL),
(109, 'PI-0109', 'SKY LIGHT PRINTING & GRAPHICS', 'Customer', '100585614900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:19', NULL),
(110, 'PI-0110', 'SMART GIFTS TRADING, AJMAN', 'Customer', '100013372600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:19', NULL),
(111, 'PI-0111', 'SMART OUT FITTERS', 'Customer', '100270853300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:19', NULL),
(112, 'PI-0112', 'SMART STAMPS AND PRINTING', 'Customer', '100219699400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:19', NULL),
(113, 'PI-0113', 'SOLUTION SAFETY FZE', 'Customer', '100428007700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:19', NULL),
(114, 'PI-0114', 'SPECIALIST EQUIPMENTS TRADING LLC', 'Customer', '100285123400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:19', NULL),
(115, 'PI-0115', 'TAJ AL ARAB PRINTING PRESS', 'Customer', '100374171500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:19', NULL),
(116, 'PI-0116', 'TAX MART SILK SCREEN PRINTING ', 'Customer', '100215329200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:19', NULL),
(117, 'PI-0117', 'TEXMART', 'Customer', '100358060000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:19', NULL),
(118, 'PI-0118', 'TOURIST STAR FASHION', 'Customer', '100214917500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:19', NULL),
(119, 'PI-0119', 'TRANSFORM FASHION LLC', 'Customer', '100358060000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:19', NULL),
(120, 'PI-0120', 'U FOR U GARMENTS WORKSHOP', 'Customer', '100326449400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:19', NULL),
(121, 'PI-0121', 'UNI WAY TRADING & UNIFROMS TAILORING', 'Customer', '100575341100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:19', NULL),
(122, 'PI-0122', 'UNIFORM SOLUTION FZE', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:19', NULL),
(123, 'PI-0123', 'VALLEYSTAR UNIFORMS GARMENTS LLC', 'Customer', '100219287800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:19', NULL),
(124, 'PI-0124', 'STEP INTERNATIONAL F.Z.C', 'Customer', '100590313100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:19', NULL),
(125, 'PI-0125', 'WEAVES SMART ', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:19', NULL),
(126, 'PI-0126', 'WEST HIL GENERAL TRADING LLC', 'Customer', '1000343102800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:19', NULL),
(127, 'PI-0127', 'YAQOOB GARMENTS TAILORING LLC', 'Customer', '100429647900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:19', NULL),
(128, 'PI-0128', 'ZANTECH TEXTILE PRINTING', 'Customer', '100398385300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(129, 'PI-0129', 'SHAURYA OUTFIT TRADING FZE', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(130, 'PI-0130', 'SHARA GARMENTS', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(131, 'PI-0131', 'AL RAHA TAILORING WORKSHOP', 'Customer', '100042916500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(132, 'PI-0133', 'WIN CONCEPT ADVERTISING GIFTS PREPARING', 'Customer', '100322386200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(133, 'PI-0134', 'FALCON APPERAL', 'Customer', '100388508200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(134, 'PI-0135', 'SIGN ART GIFTS TRADING L L C', 'Customer', '100324875200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(135, 'PI-0136', 'AL MEENA BIDG. MAT. TR.', 'Customer', '100448787000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(136, 'PI-0137', 'PROMO EMB. GARMENTS LLC', 'Customer', '100342193800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(137, 'PI-0138', 'BAKHITA TAILORING AND EMBOIDERY', 'Customer', '100252401300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(138, 'PI-0139', 'AL SARHAD READY MADE GARMENTS', 'Customer', '100351441900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(139, 'PI-0140', 'JA PRINTING DISTRIBUTOR', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(140, 'PI-0141', 'AL WATHEBA STATIONARY', 'Customer', '100009784800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(141, 'PI-0142', 'FOUR STAR BUILDING MATERIALS TRADING LLC', 'Customer', '100056922600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(142, 'PI-0143', 'GULF SATEAM', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(143, 'PI-0144', 'XYNERGY PLUS FZE', 'Customer', '100006939100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(144, 'PI-0145', 'HAMIDA GARMENTS W/S', 'Customer', '100236782700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(145, 'PI-0146', 'AL FURAT HARDWARE', 'Customer', '100672446300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(146, 'PI-0147', 'PIXEL ADVERTISING LLC', 'Customer', '100362323600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(147, 'PI-0148', 'AL WAHA STAMPS', 'Customer', '100209295300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(148, 'PI-0149', 'SURGE INTERNATIONAL TRADING FZE', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(149, 'PI-0150', 'RAFAL TAILORING & EMB. LLC', 'Customer', '100067568900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(150, 'PI-0151', 'CIVIC MIDDLEAST FZE', 'Customer', '100020928600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(151, 'PI-0152', 'JUMA AL BATEHI L.L.C', 'Customer', '100068503000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(152, 'PI-0153', 'ABUGHAZZLEH TRADING CO.', 'Customer', '100335898100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:20', NULL),
(153, 'PI-0154', 'ALFUN AL RAQY WORKSHOP', 'Customer', '100265052900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:21', NULL),
(154, 'PI-0155', 'REGAL TRADERS FZCO', 'Customer', '100050123700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:21', NULL),
(155, 'PI-0156', 'ABDUL AL HAMED GARMENTS & TEXTILES TRADING', 'Customer', '100387233200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:21', NULL),
(156, 'PI-0157', 'AROOS BAGHDAD READY MADE GARMENTS TRADING L.L.C', 'Customer', '100286204100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:21', NULL),
(157, 'PI-0158', 'APEX GENERAL TRADING L.L.C', 'Customer', '100068702800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:21', NULL),
(158, 'PI-0159', 'SPLASH BOUTIQUE', 'Customer', '100336308000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:21', NULL),
(159, 'PI-0160', 'LIP LINE TRADING', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:21', NULL),
(160, 'PI-0161', 'AL - SARAD GARMENTS WORK SHOP', 'Customer', '100215818400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:21', NULL),
(161, 'PI-0162', 'AL HUDA GARMENTS', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:21', NULL),
(162, 'PI-0163', 'AL BAHER AL ASWAD', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:21', NULL),
(163, 'PI-0164', 'QUARK INTERNATIONAL', 'Customer', '100012070700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:21', NULL),
(164, 'PI-0165', 'AL QAMAR SILK SCREEN', 'Customer', '100375433800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:21', NULL),
(165, 'PI-0166', 'AL WASEEM EVENTS', 'Customer', '100071085300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:21', NULL),
(166, 'PI-0167', 'JEHOUB UROPA', 'Customer', '100036851200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:21', NULL),
(167, 'PI-0168', 'MS GLOBAL FZE', 'Customer', '100217139300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:21', NULL),
(168, 'PI-0169', 'AL SARAB GARMENTS WORKSHOP', 'Customer', '100215818400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:21', NULL),
(169, 'PI-0170', 'MAQUETTE ENGINEERING MODELS', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:21', NULL),
(170, 'PI-0171', 'SADIA SCREEN PRINTING', 'Customer', '100352518300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(171, 'PI-0172', 'ALABDOULI BUILDING CLEAN', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(172, 'PI-0173', 'SOFIA GARMENTS WORKSHOP LLC', 'Customer', '100232532000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(173, 'PI-0174', 'DRAW WAY GIFT TRADING L.L.C', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(174, 'PI-0175', 'CONCORD SILK SCREEN ', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(175, 'PI-0176', 'ELAFF TAROLING', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(176, 'PI-0177', 'JUMA AL BATCHI ADVERTISING', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(177, 'PI-0178', 'BAL AL MADINA GARMENTS WORKSHOP L.L.C', 'Customer', '100029201900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(178, 'PI-0179', 'ZEAL MIDDLE EAST GENERAL TRADING LLC', 'Customer', '100333185500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(179, 'PI-0180', 'ABABIL ADVERTISING', 'Customer', '100262951500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(180, 'PI-0181', 'ON TIME REFOUND TRADING FZE', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(181, 'PI-0182', 'TURATHI GAR. TR. LLC', 'Customer', '100219368600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(182, 'PI-0183', 'UNIFORM STOCK LLC', 'Customer', '100392600100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(183, 'PI-0184', 'SHAMA TAILORING & EMBROIDERY WORKSHOP', 'Customer', '100337113300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(184, 'PI-0185', 'ALWAN PRINTING', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(185, 'PI-0186', 'AL FAN ADVERTISING LLC', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(186, 'PI-0187', 'BAB AL MADINA GENTS TAILORING', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(187, 'PI-0188', 'DREAMS FASHION FZE', 'Customer', '100052041900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(188, 'PI-0189', 'INTERDEV GENERAL TRADING LLC', 'Customer', '100371118900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(189, 'PI-0190', 'FREEDOM GIFTS ADV. TR. & SUPPLIES LLC', 'Customer', '100341120200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(190, 'PI-0191', 'JUMA AL BATEHI ADVERTISING LLC', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(191, 'PI-0192', 'WEABE SMART TEXTILE TRADING LLC', 'Customer', '100303073900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(192, 'PI-0193', 'DESIRE BLUE UNIFORM TRADING LLC', 'Customer', '100529530600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(193, 'PI-0194', 'ZINAT AL FAREEJ TAIORING', 'Customer', '100038641500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(194, 'PI-0195', 'FAN AL MATHEAQ', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(195, 'PI-0196', 'AL FUJAIRAWI SPORTS', 'Customer', '100374128500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:22', NULL),
(196, 'PI-0197', 'ACHIEVER FASHION LLC', 'Customer', '100381235900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(197, 'PI-0198', 'ADEPT GENERAL TRADING LLC', 'Customer', '100012316400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(198, 'PI-0199', 'MR BAHAR', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(199, 'PI-0200', 'GIFT VILLAGE', 'Customer', '100250823000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(200, 'PI-0201', 'AL WAN SILK SCREEN PRINTING', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(201, 'PI-0202', 'PROTECH ALLIANCE GIFT TRADING L.L.C', 'Customer', '100539360600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(202, 'PI-0203', 'SAMPLE BILL', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(203, 'PI-0204', 'VICTORY APPARELS GARMENTS WORKSHOP', 'Customer', '100457551800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(204, 'PI-0205', 'KEEP OUT', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(205, 'PI-0206', 'AQIQ AL AHMAR PROMOTIONAL GIFTS PREPARING LLC', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(206, 'PI-0207', 'CONCORD', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(207, 'PI-0208', 'LALJI GENERAL TRADING LLC', 'Customer', '100376478200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(208, 'PI-0209', 'AMAASH TRADING', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(209, 'PI-0210', 'AL-BAHESHT TRADING CO. LLC', 'Customer', '100387692500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(210, 'PI-0211', 'BAB AL MADINA GARMENTS WORKSHOP L.L.C', 'Customer', '100029201900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(211, 'PI-0212', 'MUNICH ADVERTISING LLC', 'Customer', '100568678500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(212, 'PI-0213', 'EURO ASIA TAILORING WORKSHOP LLC', 'Customer', '100464167400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(213, 'PI-0214', 'AAKIF KAMRAN TECHNICAL SERVICES LLC', 'Customer', '100536609900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(214, 'PI-0215', 'AMS GLOBAL FZE', 'Customer', '100217139300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(215, 'PI-0216', 'MOMIN GARMENTS WORKSHOP', 'Customer', '100207014000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(216, 'PI-0217', 'ALISA READYMADE GARMENTS', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(217, 'PI-0218', 'DEPAK TRADING ', 'Customer', '100049718800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(218, 'PI-0219', 'AL SHAEMEL ', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(219, 'PI-0220', 'LIGHTING BOLT GENERAL TRADING LLC', 'Customer', '100447073600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(220, 'PI-0221', 'AL-BASHET TRADING CO LLC', 'Customer', '100387692500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(221, 'PI-0222', 'BINT AL KHALEJ GARMENTS WORKSHOP', 'Customer', '100291228300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(222, 'PI-0223', 'RUKN AL RAYAN READYMADE GARMENTS TRADING LLC', 'Customer', '100303209900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:23', NULL),
(223, 'PI-0224', 'GAP GIFT TRADING LLC, AJMAN', 'Customer', '100389339100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:24', NULL),
(224, 'PI-0225', 'CONNECTION READYMADE GARMENTS TRADING', 'Customer', '100232183200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:24', NULL),
(225, 'PI-0226', 'AL HAREER UNIFORM GARMENTS LLC', 'Customer', '100267208500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:24', NULL),
(226, 'PI-0227', 'HIRAT GULF TECHNICAL CONDUCTING LLC', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:24', NULL),
(227, 'PI-0228', 'MOHAMMED AMIN COMPUTER DESIGN', 'Customer', '100055984700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:24', NULL),
(228, 'PI-0229', 'AL SAHAB GARMENTS TAILORING & UNIFORMS', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:24', NULL),
(229, 'PI-0230', 'NISHA READYMADE GARMENTS', 'Customer', '100034418200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:24', NULL),
(230, 'PI-0231', 'XPANSE GENERAL TRADING FZE', 'Customer', '100489253300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:24', NULL),
(231, 'PI-0232', 'ABU QAWS TAILORING WORKSHOP LLC', 'Customer', '100356870400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:24', NULL),
(232, 'PI-0233', 'SHOP', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:24', NULL),
(233, 'PI-0234', 'COLORED AL ALWAN READYMADE GARMENTS', 'Customer', '100425603600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:24', NULL),
(234, 'PI-0235', 'COLORLINE PRINTING PRESS LLC', 'Customer', '100391365200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:24', NULL),
(235, 'PI-0236', 'SUM TECHNOLOGIES', 'Customer', '100285544100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:24', NULL),
(236, 'PI-0237', 'AL SAHAM FIDHI TAILORING WORKSHOP', 'Customer', '10020101000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:24', NULL),
(237, 'PI-0238', 'AL SHAMALIA', 'Customer', '100295026700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:24', NULL),
(238, 'PI-0239', 'JENOUB UROPA READYMADE GAR LLC', 'Customer', '100036851200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:25', NULL),
(239, 'PI-0240', 'VICTORY GARMENTS', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:25', NULL),
(240, 'PI-0241', 'TSI INTERNATIONAL FZC', 'Customer', '100379623000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:25', NULL),
(241, 'PI-0242', 'FLAGS FLY GIFT L.L.C', 'Customer', '100061699300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:25', NULL),
(242, 'PI-0243', 'LAKSHIMI TARLORING & EM.', 'Customer', '100394729600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:25', NULL),
(243, 'PI-0244', 'PROMO CONCEPTS', 'Customer', '100598100400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:25', NULL),
(244, 'PI-0245', 'AL DEQH TAILORING', 'Customer', '100204794000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:25', NULL),
(245, 'PI-0246', 'MATAR AL MUHAIRI GARMENTS WORKSHOP', 'Customer', '100392978100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:25', NULL),
(246, 'PI-0247', 'T-SHIRT VILA', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:25', NULL),
(247, 'PI-0248', 'SPEED STITCH TRADING LLC', 'Customer', '100592690000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:25', NULL),
(248, 'PI-0249', 'AL SHANALIA', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:25', NULL),
(249, 'PI-0250', 'AL-NILE GARMENTS WORKSHOP LLC', 'Customer', '100384368500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:25', NULL),
(250, 'PI-0251', 'URBAN GARMENTS TRADING', 'Customer', '100482309000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:25', NULL),
(251, 'PI-0252', 'PRIME MODA GARMENTS TRADING', 'Customer', '100370345900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:25', NULL),
(252, 'PI-0253', 'SALAH SAEED', 'Customer', '100324045200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:25', NULL),
(253, 'PI-0254', 'AL MODEE GARMENTS WORKSHOP L.L.C', 'Customer', '100535932600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:25', NULL),
(254, 'PI-0255', 'NAZMUL', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:25', NULL),
(255, 'PI-0256', 'ZARIYAB GARMENTS WORKSHOP LLC', 'Customer', '100244477400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:25', NULL),
(256, 'PI-0257', 'DHAW AL FAJR', 'Customer', '100331709400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:26', NULL),
(257, 'PI-0258', 'AL NAJOOM AL TALATAH', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:26', NULL),
(258, 'PI-0259', 'ARBAN GARMENTS', 'Customer', '100482309000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:26', NULL),
(259, 'PI-0260', 'SHAIK AHMED ALI TRADING LLC', 'Customer', '100246003600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:26', NULL),
(260, 'PI-0261', 'AL MANSHA TEXTILE & TAILORING LLC', 'Customer', '100385721400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:26', NULL),
(261, 'PI-0262', 'T& PRINTING PLUS LLC', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:26', NULL),
(262, 'PI-0263', 'MUHAMMAD QURESHI INTERNATIONAL TEXTILE TRADING LLC', 'Customer', '100012512800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:26', NULL),
(263, 'PI-0264', 'ORIENT UNIFORMS INTERNATIONAL LLC', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:26', NULL),
(264, 'PI-0265', 'AL -BAHESHT TRADING CO LLC', 'Customer', '100387692500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:26', NULL),
(265, 'PI-0266', 'JASMIN NECKLACE TAILORING W/SHOP', 'Customer', '100218839700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:26', NULL),
(266, 'PI-0267', 'AL BAHR AL ASWADV GIFT TRADING LLC', 'Customer', '100577913500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:26', NULL),
(267, 'PI-0268', 'AMAASH FASHION', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:26', NULL),
(268, 'PI-0269', 'SHUJAT READY MADE GARMENTS TRADING', 'Customer', '100497163400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:26', NULL),
(269, 'PI-0270', 'EMIRATES APPEARELS', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:26', NULL),
(270, 'PI-0271', 'SAKINA READYMADE GARMENTS & TEXTILES TRADING', 'Customer', '100399342300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:26', NULL),
(271, 'PI-0272', 'AL LUN AL AHMR TLR OUTFITE TRD', 'Customer', '100522863800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:26', NULL),
(272, 'PI-0273', 'INSIGHTS MARKETING AND COMMUNICATIONS', 'Customer', '100371536200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:26', NULL),
(273, 'PI-0274', 'UNIC UNIFORMS & GENERAL TRADING LLC', 'Customer', '100388310300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:26', NULL),
(274, 'PI-0275', 'BADER ALESLAN GENERAL TRADING LLC', 'Customer', '100355149400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:26', NULL),
(275, 'PI-0276', 'MJ FASHIONS FZE', 'Customer', '100504581800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:27', NULL),
(276, 'PI-0277', 'ASIA FASHION APPARELS INDUSTRIES', 'Customer', '100359427000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:27', NULL),
(277, 'PI-0278', 'AVA DESIGNS FZC', 'Customer', '100424928800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:27', NULL),
(278, 'PI-0279', 'ASHA TRADING FZE', 'Customer', '100221412800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:27', NULL),
(279, 'PI-0280', 'FAN AL RAHAL FASHION', 'Customer', '100456285400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:27', NULL),
(280, 'PI-0281', 'S J TRADE PRINT FZC ', 'Customer', '100564983300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:27', NULL),
(281, 'PI-0282', 'STAR LINKS ADV. &LLC', 'Customer', '100323626000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:27', NULL),
(282, 'PI-0283', 'M J TAILORING', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:27', NULL),
(283, 'PI-0284', 'AL EKRAM GARMENTS WORKSHOP', 'Customer', '100365476900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:27', NULL),
(284, 'PI-0285', 'AL BUSTAN CO PACKING LLC', 'Customer', '100279878100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:27', NULL),
(285, 'PI-0286', 'BORHANI SCIENCE', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:27', NULL),
(286, 'PI-0287', 'INDEX EXCHANGE', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:27', NULL),
(287, 'PI-0288', 'WALKAHEAD GENERAL TRADING LLC', 'Customer', '100006848400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:27', NULL),
(288, 'PI-0289', 'HATTEN TRADING & UNIFORMS TAILORING L.L.C', 'Customer', '100005461700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:27', NULL),
(289, 'PI-0290', 'AHAMMAD ABDULLAH TAILORING WORKSHOP', 'Customer', '100223674100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:27', NULL),
(290, 'PI-0291', 'TAJ AL SULTANA GARMENTS TRADING LLC', 'Customer', '100235514500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:27', NULL),
(291, 'PI-0292', 'TAHER SILK SCREEN WORKS', 'Customer', '100288261900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:27', NULL),
(292, 'PI-0293', 'AARSON GARMENTS & TEX TRADING LLC', 'Customer', '100309974200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:27', NULL),
(293, 'PI-0294', 'AL -TAEF READY MADE GARMENTS & TOYS TRADING', 'Customer', '100426914600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:28', NULL),
(294, 'PI-0295', 'AUGHAZZLEH TRADING CO.', 'Customer', '100335898100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:28', NULL),
(295, 'PI-0296', 'ARQAM TEXTILE TRADING LLC', 'Customer', '100335009500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:28', NULL),
(296, 'PI-0297', 'GREEN ARROW GENERAL TRADING LLC', 'Customer', '100270323700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:28', NULL),
(297, 'PI-0298', 'BE ONE INTERNATIONAL GENERAL TRADING LLC', 'Customer', '100330913300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:28', NULL),
(298, 'PI-0299', 'AZTEC TRADING LLC', 'Customer', '100277701100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:28', NULL),
(299, 'PI-0300', 'ARGUS MIDDLE EAST GENERAL TRADING LLC', 'Customer', '100386637100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:28', NULL),
(300, 'PI-0301', 'ALSARHAD READYMADE GARMENTS & TEXTILES LLC', 'Customer', '100351441900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:28', NULL),
(301, 'PI-0302', 'XYNERGY GLOBAL FZC', 'Customer', '100534636400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:28', NULL),
(302, 'PI-0303', 'SJ TRADE PRINT FZE LLC', 'Customer', '100564983300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:28', NULL),
(303, 'PI-0304', 'AL BURAK GARMENTS', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:28', NULL),
(304, 'PI-0305', 'HOMNA TAILORING WORKSHOP', 'Customer', '100427684400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:28', NULL),
(305, 'PI-0306', 'NK PLUS UNIFORM TRADING LLC', 'Customer', '100490372800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:28', NULL),
(306, 'PI-0307', 'IMPRESSIONS L.L.C', 'Customer', '100299342400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:28', NULL),
(307, 'PI-0308', 'AL QANAS EVENTS ORGANIZER', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:28', NULL),
(308, 'PI-0309', 'AL KHATTAF TAILORING', 'Customer', '100037674700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:28', NULL),
(309, 'PI-0310', 'BABAL FLAS TAILORING', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:28', NULL),
(310, 'PI-0311', 'AL TAEF READY MADE GARMENTS & TOYS TRADING', 'Customer', '100426914600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:29', NULL),
(311, 'PI-0312', 'WE STYLE U FZC LLC', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:29', NULL),
(312, 'PI-0313', 'ENNEX LUBRICANTS TRADING LLC', 'Customer', '100430581700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:29', NULL),
(313, 'PI-0314', 'OJOUBA TAILORING W/S', 'Customer', '100388365700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:29', NULL),
(314, 'PI-0315', 'TIMES SILK SCREEN TRADING LLC', 'Customer', '100350414700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:29', NULL),
(315, 'PI-0316', 'HUSAIN AL HAMMADI FOR WHOLESALE', 'Customer', '100563564200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:29', NULL),
(316, 'PI-0317', 'BIN SLAEEM GARMENTS WORKSHOP', 'Customer', '100210195200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:29', NULL),
(317, 'PI-0318', 'SUCCESS GELERY READYMADE GARMENTS TRADING', 'Customer', '100399342300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:29', NULL),
(318, 'PI-0319', 'ALWAN SILK SCREEN PRINTING', 'Customer', '100552545400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:29', NULL),
(319, 'PI-0320', 'CREATIVE COMPUTER EMBOIDERY WORKSHOP LLC', 'Customer', '10048729600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:29', NULL),
(320, 'PI-0321', 'NAJMAT KARKOK GARMENTS WORKSHOP LLC', 'Customer', '100074285600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:29', NULL),
(321, 'PI-0322', 'FUTURE MIND GRAFICS', 'Customer', '100215781400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:29', NULL),
(322, 'PI-0323', 'AL AFAAQ GENERAL TRADING LLC', 'Customer', '10050195400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:29', NULL),
(323, 'PI-0324', 'WHITE THREAD TRADING FZE LLC', 'Customer', '100519336000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:29', NULL),
(324, 'PI-0325', 'BLUE VISION ADVERTISING & GIFTS', 'Customer', '100323199800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:29', NULL),
(325, 'PI-0326', 'AL NAHMA READYMADE GARMENTS', 'Customer', '100354268300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:29', NULL),
(326, 'PI-0327', 'MITREX TAILORING WORKSHOP', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:29', NULL),
(327, 'PI-0328', 'AJMAN TRADING', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:29', NULL),
(328, 'PI-0329', 'BIN OMAR READYMADE GARMENT MANUFACTURING', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:29', NULL),
(329, 'PI-0330', 'YUKTI GARMENTS & TEXTILES TRADING', 'Customer', '100244463400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:30', NULL),
(330, 'PI-0331', 'AL AALI SILK SCREEN PRINTING', 'Customer', '100248664300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:30', NULL),
(331, 'PI-0332', 'ICONIC GIFTS & UNIFORMS L.L.C', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:30', NULL),
(332, 'PI-0333', 'BOWLINE GARMENTS TRADING LLC', 'Customer', '100048204000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:30', NULL),
(333, 'PI-0334', 'AUROXA TRADING', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:30', NULL),
(334, 'PI-0335', 'CORPORATE COTTON LLC', 'Customer', '100200771200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:30', NULL),
(335, 'PI-0336', 'SAIFHUMAID PROMOTIONAL GIFT PREPARING', 'Customer', '100514178200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:30', NULL),
(336, 'PI-0337', 'PRINT B ADVERTISING', 'Customer', '100520660000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:30', NULL),
(337, 'PI-0338', 'ASH GLOBAL', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:30', NULL),
(338, 'PI-0339', 'U.K. TEXT. COMPUTER EMB.', 'Customer', '100325826400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:30', NULL),
(339, 'PI-0340', 'COMFORT TAILORING AND EMBROIDERY', 'Customer', '100542229800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:30', NULL),
(340, 'PI-0341', 'GREAT LOOK GENERAL TRADING', 'Customer', '100267879300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:30', NULL),
(341, 'PI-0342', 'AL RASEL SILK SCREEN WORK LLC', 'Customer', '100320576000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:30', NULL),
(342, 'PI-0343', 'SMART CHOICE TAILORING & EMBROIDERY', 'Customer', '10053628900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:30', NULL),
(343, 'PI-0344', 'CRAVE AND SEAL', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:30', NULL),
(344, 'PI-0345', 'NEW KANDY EBBROIDERY', 'Customer', '100271073700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:30', NULL),
(345, 'PI-0346', 'SAKINA READYMADE GARMENTS&TEXTILES TRADING', 'Customer', '100399342300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:30', NULL),
(346, 'PI-0347', 'GREY STONE LLC', 'Customer', '100350116800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:30', NULL),
(347, 'PI-0348', 'GREEN STARS BUILDING MATERIALS LLC', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:30', NULL),
(348, 'PI-0349', 'NIBAK GENERAL TRADING', 'Customer', '100302439300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:30', NULL),
(349, 'PI-0350', 'SILVER SCREEN LINKS & PRINTING MAT TR', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:30', NULL),
(350, 'PI-0351', 'BURHANI SIGNS', 'Customer', '100326168000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:30', NULL),
(351, 'PI-0352', 'COXZONE', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:31', NULL),
(352, 'PI-0353', 'CREATIVE EYE', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:31', NULL),
(353, 'PI-0354', 'MODERN REINFORCE GENERAL TRADING LLC', 'Customer', '100019365400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:31', NULL),
(354, 'PI-0355', 'SAID IBRAHIM READYMADE GARMENTS LLC', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:31', NULL),
(355, 'PI-0356', 'SHUKRAN GARMENTS TRADING LLC', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:31', NULL),
(356, 'PI-0357', 'AL QAMEES TAILORING AND TEXTILE TRADING LLC', 'Customer', '100260192800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:31', NULL),
(357, 'PI-0358', 'RUKN AL ROLLA TRADING', 'Customer', '100555114600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:31', NULL),
(358, 'PI-0359', 'FASHION FABRICS LLC', 'Customer', '100283221800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:31', NULL);
INSERT INTO `party_infos` (`id`, `pi_code`, `pi_name`, `pi_type`, `trn_no`, `address`, `con_person`, `con_no`, `phone_no`, `email`, `deleted_at`, `created_at`, `updated_at`) VALUES
(359, 'PI-0360', 'GIFT CORNER VINAYZ COLLECTIONS', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:31', NULL),
(360, 'PI-0361', 'FAST WAYS ADVERTISING', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:32', NULL),
(361, 'PI-0362', 'INKEDCHIEF LLC', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:32', NULL),
(362, 'PI-0363', 'APPAREL FASHION LLC', 'Customer', '100434488100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:32', NULL),
(363, 'PI-0364', 'SALEH ALI GARMENTS', 'Customer', '100216539500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:32', NULL),
(364, 'PI-0365', 'ALRAND TECHNICHEL', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:32', NULL),
(365, 'PI-0366', 'SHADOWS ADS ADVERTISING LLC', 'Customer', '1000324732500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:32', NULL),
(366, 'PI-0367', 'PRIMO UNIFORMS', 'Customer', '100007791500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:32', NULL),
(367, 'PI-0368', 'ENASEERA TAILORING WORK SHOP', 'Customer', '100366401600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:32', NULL),
(368, 'PI-0369', 'AZZALIA DESIGNS', 'Customer', '100315083400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:32', NULL),
(369, 'PI-0370', 'TRAFFIC 360 GENERAL TRADING', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:32', NULL),
(370, 'PI-0371', 'SAYEED IBRAHIM READYMADE GARMENTS', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:32', NULL),
(371, 'PI-0372', 'AHMED NASSER GARMENTS WORKS AJMAN', 'Customer', '100381967700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:32', NULL),
(372, 'PI-0373', 'DUBAI DESIGN PRINT', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:32', NULL),
(373, 'PI-0374', 'MATAR PRINTING', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:32', NULL),
(374, 'PI-0375', 'AL MONTAZAR TAILORING & EMB. WORKSHOP', 'Customer', '100221784000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:32', NULL),
(375, 'PI-0376', 'MYRIAD FASHOIN INDUSTARY FZE', 'Customer', '100352788200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:33', NULL),
(376, 'PI-0377', 'URO GIFT TRADING', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:33', NULL),
(377, 'PI-0378', 'BIMBINO UNIFORMS TRADING', 'Customer', '10036907500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:33', NULL),
(378, 'PI-0379', 'ROEYA AL MAGHREB LADIES GERMENTS TRALIONG', 'Customer', '100282328200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:33', NULL),
(379, 'PI-0380', 'NERNEEN READYMADE GARMENTS TRADING', 'Customer', '100388825000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:33', NULL),
(380, 'PI-0381', 'EVAYA TRALING L.L.C', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:33', NULL),
(381, 'PI-0382', 'LAN & WAN', 'Customer', '1000392185300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:33', NULL),
(382, 'PI-0383', 'VOGUE FASHION GARMENTS TRADING LLC', 'Customer', '100617791700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:33', NULL),
(383, 'PI-0384', 'EURO GULF FACILITIES MANAGEMENT SERVICES', 'Customer', '100028881900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:33', NULL),
(384, 'PI-0385', 'AMIGA F.Z.E. LLC', 'Customer', '1005388506500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:33', NULL),
(385, 'PI-0386', 'AMIGA F.Z.E. LLC', 'Customer', '100019843000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:33', NULL),
(386, 'PI-0387', 'WAHRAN TAILORING AND TEXTILE', 'Customer', '100030974800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:33', NULL),
(387, 'PI-0388', 'TIMES READYMADE GARMENTS TRADING LLC', 'Customer', '100360207300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:33', NULL),
(388, 'PI-0389', 'AL YASMEEN SILKSCREEN WORKS EST.', 'Customer', '100274680600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:33', NULL),
(389, 'PI-0390', 'AL SHEMAIL GARMENTS & PER LLC', 'Customer', '100066699800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:34', NULL),
(390, 'PI-0391', 'QUALITY ADVERTISING', 'Customer', '100001978400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:34', NULL),
(391, 'PI-0392', 'DESIGN FORT SOFTWARE HOUSE LLC', 'Customer', '1003222666000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:34', NULL),
(392, 'PI-0393', 'AJWAA GARMENTS TRADING FZE', 'Customer', '100556723300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:34', NULL),
(393, 'PI-0394', 'GOLDEN FUTURE ADVERTISING', 'Customer', '100341124400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:34', NULL),
(394, 'PI-0395', 'FASS TRADING LLC', 'Customer', '100217787900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:34', NULL),
(395, 'PI-0396', 'SHUBRA GAR. & LUX TR CO LLC', 'Customer', '100356333300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:34', NULL),
(396, 'PI-0397', 'AL SHAMIL ADVERTISING', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:34', NULL),
(397, 'PI-0398', 'KALON TECHNOLOGY', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:34', NULL),
(398, 'PI-0399', 'KURIANS PRINTING PRESS LLC', 'Customer', '100330051200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:34', NULL),
(399, 'PI-0400', 'AL SAIF READYMADE GARMENTS TRADING LLC', 'Customer', '100542921000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:34', NULL),
(400, 'PI-0401', 'WALLCOAT FASHION DESIGNING LLC', 'Customer', '100013923600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:34', NULL),
(401, 'PI-0402', 'I W A GLOBAL FZE SHARZAH SAIF ZONE', 'Customer', '100443851900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:34', NULL),
(402, 'PI-0403', 'AREEJ ALWARD GENERAL TRADING LLC', 'Customer', '100323280600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:34', NULL),
(403, 'PI-0404', 'PERFECT CLASSIC TRADING LLC', 'Customer', '100616555700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:34', NULL),
(404, 'PI-0405', 'MMS PROMOTIONAL GIFTS PREPARING', 'Customer', '100358991600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:34', NULL),
(405, 'PI-0406', 'STITCH AND WEAR TAILORING WORKSHOP', 'Customer', '100552795500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:34', NULL),
(406, 'PI-0407', 'AL ARABIAH UNIFORMS LLC', 'Customer', '100349994200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:34', NULL),
(407, 'PI-0408', 'AL KHOOS GARMENTS TEXTILE TRADING L.L.C', 'Customer', '100069872800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:35', NULL),
(408, 'PI-0409', 'AL BARSHA GARMENTS WORKSHOP', 'Customer', '100328190200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:35', NULL),
(409, 'PI-0410', 'AL DAHAL TAILORING', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:35', NULL),
(410, 'PI-0411', 'COX ZONE', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:35', NULL),
(411, 'PI-0412', 'BEHROSE', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:35', NULL),
(412, 'PI-0413', 'SAAD GARMENTS WORKSHOP LLC', 'Customer', '100067506400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:35', NULL),
(413, 'PI-0414', 'DREAMER TRADING LLC', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:35', NULL),
(414, 'PI-0415', 'AL SHUKRAN GARMENTS TRADING LLC', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:35', NULL),
(415, 'PI-0416', 'RAFAL TAILORING & EMB. LLC', 'Customer', '100067569200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:35', NULL),
(416, 'PI-0417', 'AKRAM', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:35', NULL),
(417, 'PI-0418', 'SJ TRADE POINT FZE LLC', 'Customer', '100564983300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:35', NULL),
(418, 'PI-0419', 'JECKY GARMENTS', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:35', NULL),
(419, 'PI-0420', 'SUITABLE ROYAL STITCHING UNIFORMS', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:35', NULL),
(420, 'PI-0421', 'FASS TRADING LLC ,DUBAI', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:35', NULL),
(421, 'PI-0422', 'ZAHRAT YARMOOK GENTS CAR TAILORING', 'Customer', '100574882500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:35', NULL),
(422, 'PI-0423', 'LINOX CREATIVE ADVERTISING', 'Customer', '100309526000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:35', NULL),
(423, 'PI-0424', 'ASRA L.GARMENTS TAILORING', 'Customer', '100436903700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:36', NULL),
(424, 'PI-0425', 'AL KADEEM EMBROIDERED GARMENTS LLC', 'Customer', '100074903400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:36', NULL),
(425, 'PI-0426', 'EVAYA GARMENTS', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:36', NULL),
(426, 'PI-0427', 'JMARKS GENERAL TRADING ', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:36', NULL),
(427, 'PI-0428', 'MYRIAD FASHION IND', 'Customer', '100352788200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:36', NULL),
(428, 'PI-0429', 'AL MADEE GARMENTS WORKSHOP LLC', 'Customer', '100535932600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:36', NULL),
(429, 'PI-0430', 'AL AMANAH UNIFORMS GARMENTS', 'Customer', '100212732000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:36', NULL),
(430, 'PI-0431', 'SHUBRA GAR.& LUX TR CO LLC', 'Customer', '100356333300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:36', NULL),
(431, 'PI-0432', 'YOUBI COMPUTER EMBROIDERY WORKS ', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:36', NULL),
(432, 'PI-0433', 'ABID READYMADE GARMENTS TRADING ', 'Customer', '100212389900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:36', NULL),
(433, 'PI-0434', 'AD STANDS ADERTISING L.L.C', 'Customer', '100246145500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:36', NULL),
(434, 'PI-0435', 'U.K. TEXT. COMPUTER EMB.', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:36', NULL),
(435, 'PI-0436', 'AJWAAA GARMENTS TRADING FZE', 'Customer', '100556723300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:37', NULL),
(436, 'PI-0437', 'AL SAIF READY MADE GARMENTS TRADING LLC', 'Customer', '100542921000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:37', NULL),
(437, 'PI-0438', 'CITRO GIFT LLC.DUBAI', 'Customer', '100535212300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:37', NULL),
(438, 'PI-0439', 'DESIGN FORT SOFTWARE HOUSE L.L.C', 'Customer', '100322266600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:37', NULL),
(439, 'PI-0440', 'WALLCOAST FASHION DESIGNING LLC', 'Customer', '100013923600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:37', NULL),
(440, 'PI-0441', 'AL-TAEF READY MADE GARMENTS& TOYS TRADING ', 'Customer', '100426914600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:37', NULL),
(441, 'PI-0442', 'PRINTOGRAPH SCREEN PRINTING MAT TRADING', 'Customer', '100345840100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:37', NULL),
(442, 'PI-0443', 'FOTOKAD ADVERTISING SERVICE LLC', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:37', NULL),
(443, 'PI-0444', 'AL TASMEEM GARMENTS WORK SHOP', 'Customer', '100034099000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:37', NULL),
(444, 'PI-0445', 'AL ZAHRA PRINTING', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:37', NULL),
(445, 'PI-0446', 'LIFE TIME T-SHIRT', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:37', NULL),
(446, 'PI-0447', 'AL SANYA COMPANY EMB GARMENTS LLC', 'Customer', '100302008600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:37', NULL),
(447, 'PI-0448', 'GLOBIZ GENERAL TRADING F.Z.C', 'Customer', '100331865400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:37', NULL),
(448, 'PI-0449', 'TOURIST STAR', 'Customer', '100026879000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:37', NULL),
(449, 'PI-0450', 'AL SHAREET AL AKHDHAR ADV. GIFTS SUPPLY', 'Customer', '100044320800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:37', NULL),
(450, 'PI-0451', 'IQ CREATIVE FZE', 'Customer', '100319410500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:37', NULL),
(451, 'PI-0452', 'AL SAMRA AL JADEEDA ELECTRICAL TRADING L.L.C', 'Customer', '100341999900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:37', NULL),
(452, 'PI-0453', 'HOLLAND BLDG MAT. TR. LLC', 'Customer', '100533051700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:37', NULL),
(453, 'PI-0454', 'A TO Z PRINTING PRESS SERVICES', 'Customer', '100365450400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:37', NULL),
(454, 'PI-0455', 'SUTRAJ BALI READYMADE GARMENTS TRADING', 'Customer', '100349311900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:37', NULL),
(455, 'PI-0456', 'BEST BAKERS BREAD MANUFACTURING LLC', 'Customer', '100532259700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:37', NULL),
(456, 'PI-0457', 'TOP STITCH', 'Customer', '100486782400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:38', NULL),
(457, 'PI-0458', 'PRESIDENTS GARMENTS & TEXTILES TRADING L.L.C', 'Customer', '100037354600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:38', NULL),
(458, 'PI-0459', 'ACHIVER TRADING CO FZCO', 'Customer', '100536536400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:38', NULL),
(459, 'PI-0460', 'AL KHATTF ', 'Customer', '100037674700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:38', NULL),
(460, 'PI-0461', 'UP WELL DONE GENERAL TRADING LLC', 'Customer', '100384906200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:38', NULL),
(461, 'PI-0462', 'REZA AL KARIM GENERAL MAINT CONT', 'Customer', '100528194200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:38', NULL),
(462, 'PI-0463', 'HOUSE OF UNIFORM FZE', 'Customer', '100271489500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:38', NULL),
(463, 'PI-0464', 'DALMA ALUMENIUM & GLASS', 'Customer', '100427268600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:38', NULL),
(464, 'PI-0465', 'AL MIZAN READY MADE GARMENT', 'Customer', '100347457200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:38', NULL),
(465, 'PI-0466', 'ASWANI UNIFORMS GARMENTS WORKSHOP', 'Customer', '100267225900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:38', NULL),
(466, 'PI-0467', 'AL HAREER UNIFORM', 'Customer', '100384368500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:38', NULL),
(467, 'PI-0468', 'T N T PRINTING PRESS L.L.C', 'Customer', '100621186400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:38', NULL),
(468, 'PI-0469', 'AL SOUD PROMOTIONAL GIFTS PRREPARING', 'Customer', '100200264800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:38', NULL),
(469, 'PI-0470', 'NERMEEN READYMADE GARMENTS TRADING', 'Customer', '100388825000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:38', NULL),
(470, 'PI-0471', 'AL MAIDY TAILORING L.L.C', 'Customer', '100061033500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:38', NULL),
(471, 'PI-0472', 'AL NEJUM LADIES TAILORING & GARMENTS TRADING L.L.C', 'Customer', '100521368900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:38', NULL),
(472, 'PI-0473', 'CREATIVE STYLE EMBROIDERD GARMENTS', 'Customer', '100611441500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:38', NULL),
(473, 'PI-0474', 'SILVER SCREEN ADVERTISING GIFTS PREPAIRING', 'Customer', '100216496800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:38', NULL),
(474, 'PI-0475', 'ASTON GB GENERAL TRADING CO LLC', 'Customer', '100002652400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:38', NULL),
(475, 'PI-0476', 'EXPRESS PRINTING PRESS LLC', 'Customer', '100061968200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:38', NULL),
(476, 'PI-0477', 'ALMADA TAILORING WORKSHOP', 'Customer', '100063540700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:39', NULL),
(477, 'PI-0478', 'MICRO PRINTING PRESS', 'Customer', '100320939000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:39', NULL),
(478, 'PI-0479', 'VARNIKA GARMENTS', 'Customer', '100382358800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:39', NULL),
(479, 'PI-0480', 'AMWAJ READYMADE GARMENTS', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:39', NULL),
(480, 'PI-0481', 'AL AZLAM READYMADE GARMENTS TRADING LLC', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:39', NULL),
(481, 'PI-0482', 'AL JADEED TAILORING & EMB. WORKSHOP', 'Customer', '100468584600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:39', NULL),
(482, 'PI-0483', 'AL QAMAR PRINTING PRESS SER.', 'Customer', '100319885800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:39', NULL),
(483, 'PI-0484', 'APPREAL FASHION', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:39', NULL),
(484, 'PI-0485', 'FARHAN IBRAHIM TRADING LLC', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:39', NULL),
(485, 'PI-0486', 'NIPUN READY MADE GARMENTS TRADING L.L.C', 'Customer', '100318771100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:39', NULL),
(486, 'PI-0487', 'SILVER MATALS INDUSTRIES', 'Customer', '100320232000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:39', NULL),
(487, 'PI-0488', 'AL AJBAN TAILORING & EMB LLC', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:39', NULL),
(488, 'PI-0489', 'DARZ AL LAZA KITCHEN & RESTAURANT', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:39', NULL),
(489, 'PI-0490', 'PERFACIA MIDDLE EAST FZE', 'Customer', '100013559800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:39', NULL),
(490, 'PI-0491', 'T-SHIRT FACTORY', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:39', NULL),
(491, 'PI-0492', 'BAB AL RAYAN READYMADE GARMENTS', 'Customer', '100329228900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:39', NULL),
(492, 'PI-0493', 'RELIANCE ADVERTISING MATS & SAMPLES LLC', 'Customer', '100360152100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:40', NULL),
(493, 'PI-0494', 'RELAIENCE GARMENTS WORKSHOP', 'Customer', '100389516400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:40', NULL),
(494, 'PI-0495', 'QUASEEM', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:40', NULL),
(495, 'PI-0496', 'ENWAN SPORTS', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:40', NULL),
(496, 'PI-0497', 'PERFECT FIT TRADING', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:40', NULL),
(497, 'PI-0498', 'TRAFIC 360 GENERAL TRADING', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:40', NULL),
(498, 'PI-0499', 'AL MADEENA GENS TAILORING', 'Customer', '10022420000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:40', NULL),
(499, 'PI-0500', 'KATES EYS', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:40', NULL),
(500, 'PI-0501', 'FERFECIA MIDDLE EAST FZE', 'Customer', '100013559800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:40', NULL),
(501, 'PI-0502', 'AL FURQAN GARMENTS WORKSHOP', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:40', NULL),
(502, 'PI-0503', 'PERSONA ADVERTISING', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:40', NULL),
(503, 'PI-0504', 'AL RAS CLEANING SERVICES', 'Customer', '100533427900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:40', NULL),
(504, 'PI-0505', 'PROMOWEAR', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:40', NULL),
(505, 'PI-0506', 'AL ANEEQ BUILDING CONTG LLC', 'Customer', '100326162300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:40', NULL),
(506, 'PI-0507', 'IQ CREATIVE FZE', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:40', NULL),
(507, 'PI-0508', 'HALLOWIN FASHION', 'Customer', '10004286500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:40', NULL),
(508, 'PI-0509', 'CBRYOS', 'Customer', '10025274200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:41', NULL),
(509, 'PI-0510', 'SHUBRA', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:41', NULL),
(510, 'PI-0511', 'LUCKY DREAMS FZC', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:41', NULL),
(511, 'PI-0512', 'SILKY TEXTILES L.L.C', 'Customer', '10002539300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:41', NULL),
(512, 'PI-0513', 'MAZUZEE MARINE EQUIPMENT', 'Customer', '100056097700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:41', NULL),
(513, 'PI-0514', 'COTEL TRADING FZCO', 'Customer', '100483057400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:41', NULL),
(514, 'PI-0515', 'PROMO EMB. GARMENTS LLC', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:41', NULL),
(515, 'PI-0516', 'AL BURAQ GARMENTS EMBROIDERY WORKSHOP LLC', 'Customer', '100368534200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:41', NULL),
(516, 'PI-0517', 'G NINE', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:41', NULL),
(517, 'PI-0518', 'CORPORATE COTTON LLC', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:41', NULL),
(518, 'PI-0519', 'AL ZOHAIR GARMENTS', 'Customer', '10007517400003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:41', NULL),
(519, 'PI-0520', 'COTEL TRADING FZCO', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:41', NULL),
(520, 'PI-0521', 'ARTISTIC', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:41', NULL),
(521, 'PI-0522', 'KAMAR AL DIN', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:41', NULL),
(522, 'PI-0523', 'U FOR U GARMENTS WORKSHOP', 'Customer', '100326449400004', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:42', NULL),
(523, 'PI-0524', 'LEERAY', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:42', NULL),
(524, 'PI-0525', 'HUNANI READYMADE GARMENTS TRADING LLC', 'Customer', '100523953600003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:42', NULL),
(525, 'PI-0526', 'AL AMEER TAILORING & GARMENTS TRADING', 'Customer', '100615040100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:42', NULL),
(526, 'PI-0527', 'SHAHAJALAL', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:42', NULL),
(527, 'PI-0528', 'AL AROOJ PRINTING & PUBLISHING LLC', 'Customer', '100354937300003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:42', NULL),
(528, 'PI-0529', 'SPIKE READYMADE GARMENTS TRADING LLC', 'Customer', '100540279500003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:42', NULL),
(529, 'PI-0530', 'TAQWIM EVENTS ORGANIZING & MANAGING', 'Customer', '100462199900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:42', NULL),
(530, 'PI-0531', 'AL AZALAM READYMADE GERMENTS', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:42', NULL),
(531, 'PI-0532', 'AL NAJUM LADIES TAILORING & GAR.TR.L.L.C', 'Customer', '100521368900003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:42', NULL),
(532, 'PI-0533', 'QUSSEM', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:42', NULL),
(533, 'PI-0534', 'AL WAFI SPORTS', 'Customer', '100352765000003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:42', NULL),
(534, 'PI-0535', 'AL ASLI', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:42', NULL),
(535, 'PI-0536', 'AL ANAS ADV. GIFTS & SUPPLIES', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:42', NULL),
(536, 'PI-0537', 'STRIVERS AUTO SPARE PARTS TRADING LLC', 'Customer', '100594510800008', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:42', NULL),
(537, 'PI-0538', 'DOLLY TEXTILES TRADING LLC', 'Customer', '100241960200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:42', NULL),
(538, 'PI-0539', 'T-SHIRT FACTORY', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:42', NULL),
(539, 'PI-0540', 'COLOR LIFE TRADING FZCO', 'Customer', '100054256100003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:42', NULL),
(540, 'PI-0541', 'BILLAL', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:43', NULL),
(541, 'PI-0542', 'ASRA L.GARMENTS TAILORING', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:43', NULL),
(542, 'PI-0543', 'MUJIB TAILORING WORKSSHOP', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:43', NULL),
(543, 'PI-0544', 'KINGS TONE', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:43', NULL),
(544, 'PI-0545', 'TAIMOOR', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:43', NULL),
(545, 'PI-0546', 'STYLE ZONE', 'Customer', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:43', NULL),
(546, 'PI-0547', 'MADINAT AL COTTON READYMADE GARMENTS LLC', 'Customer', '100015144700003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:43', NULL),
(547, 'PI-0548', 'NAAZME GIFTS B TRADING LLC', 'Customer', '10061011800003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:43', NULL),
(548, 'PI-0549', 'AL JEWEED TAILORING AND EMB WORKSHOP LLC', 'Customer', '100328492200003', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 03:26:43', NULL),
(552, 'PI-0550', 'ABCD LLC', 'Customer', '1111111', 'Ajman', 'Mr ABCD', '0553172875', NULL, NULL, NULL, '2022-07-06 06:51:28', '2022-07-06 06:51:28'),
(553, 'PI-0551', 'pqr llc', 'Customer', '1', 'ajman', 'pqr', '11', NULL, NULL, NULL, '2022-07-06 07:24:05', '2022-07-06 07:24:05'),
(554, 'PI-0552', 'Test Customer LLC', 'Customer', '1111', 'Ajman', 'Test Customer Contact Person', '1111', NULL, NULL, NULL, '2022-07-06 07:25:16', '2022-07-06 07:25:16'),
(555, 'PI-0553', 'Test sup LLC', 'Supplier', '1111', 'akdjfk', 'kjadkj', '111', NULL, NULL, NULL, '2022-07-06 10:19:31', '2022-07-06 10:19:31'),
(558, 'PI-0554', 'Test 123 LLC', 'Supplier', '100338544800003', 'Mirpur, Dhaka', 'adasdf', '11111111', NULL, NULL, NULL, '2022-07-07 11:04:28', '2022-07-07 11:04:28'),
(559, 'PI-0555', 'Tt', 'Supplier', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-12 11:04:04', '2022-07-12 11:04:04'),
(560, 'PI-0556', 'Walk in Customer', 'Customer', NULL, '42nd Floor, Sulphar Tower, Ras Al Khaimah UAE', 'Mr. M____', '97', '97', 'mahfuz@gmail.com', NULL, '2022-07-12 15:10:29', '2022-07-12 15:10:29'),
(561, 'PI-0557', 'XYZ Garments', 'Customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-12 15:13:33', '2022-07-12 15:13:33'),
(562, 'PI-0558', 'ABC New Garments', 'Customer', '1', 'Dhaka', NULL, NULL, NULL, NULL, NULL, '2022-07-13 05:35:07', '2022-07-13 05:35:07'),
(563, 'PI-0559', 'ABC New Garments', 'Customer', '11', 'Dhaka', NULL, NULL, NULL, NULL, NULL, '2022-07-13 05:35:27', '2022-07-14 08:32:46'),
(565, 'PI-0560', 'CDA Garments LLC', 'Customer', NULL, 'Ajman, UAE', 'CDA', '111111', NULL, NULL, NULL, '2022-07-16 09:08:24', '2022-07-16 09:08:24'),
(566, 'PI-0561', 'XAB General Trading LLC', 'Customer', NULL, 'Ajman, UAE', 'pqr', '111111111111', NULL, NULL, NULL, '2022-07-18 07:48:04', '2022-07-18 07:48:04'),
(567, 'PI-0562', 'Test Customer FZE', 'Supplier', NULL, 'lkadjf;kd', NULL, NULL, NULL, NULL, NULL, '2022-07-19 10:53:01', '2022-07-19 10:53:01'),
(568, 'PI-0563', 'Test Customer FZE', 'Supplier', NULL, 'lkadjf;kd', NULL, NULL, NULL, NULL, NULL, '2022-07-19 10:53:01', '2022-07-19 10:53:01');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_vouchers`
--

CREATE TABLE `payment_vouchers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_voucher_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `temp_payment_voucher_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `goods_received_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `po_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pr_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_amount` decimal(10,2) NOT NULL,
  `due_amount` decimal(10,2) NOT NULL,
  `check_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_paid` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payterms`
--

CREATE TABLE `payterms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payterms`
--

INSERT INTO `payterms` (`id`, `title`, `value`, `created_at`, `updated_at`) VALUES
(1, 'Today', 1, '2022-05-29 00:47:49', '2022-05-29 00:47:49'),
(2, '10 Days', 10, '2022-05-29 00:47:49', '2022-05-29 00:47:49'),
(3, '15 Days', 15, '2022-05-29 00:47:49', '2022-05-29 00:47:49'),
(4, '30 Days', 30, '2022-05-29 00:47:49', '2022-05-29 00:47:49');

-- --------------------------------------------------------

--
-- Table structure for table `pay_modes`
--

CREATE TABLE `pay_modes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pay_modes`
--

INSERT INTO `pay_modes` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Cash', '2022-06-08 06:14:51', '2022-06-08 06:14:51'),
(2, 'Credit', '2022-06-08 06:14:51', '2022-06-08 06:14:51'),
(3, 'Card', '2022-06-08 06:14:51', '2022-06-08 06:14:51');

-- --------------------------------------------------------

--
-- Table structure for table `pay_terms`
--

CREATE TABLE `pay_terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pay_terms`
--

INSERT INTO `pay_terms` (`id`, `title`, `value`, `created_at`, `updated_at`) VALUES
(3, 'Today', 0, '2022-06-13 01:00:37', '2022-06-13 01:00:37'),
(4, '10 Days', 10, '2022-06-13 01:00:37', '2022-06-13 01:00:37'),
(5, '15 Days', 15, '2022-06-13 01:00:37', '2022-06-13 01:00:37'),
(6, '30 Days', 30, '2022-06-13 01:00:37', '2022-06-13 01:00:37'),
(7, '45 Days', 45, '2022-06-13 01:00:38', '2022-06-13 01:00:38'),
(8, '60 Days', 60, '2022-06-13 01:00:38', '2022-06-13 01:00:38'),
(9, '75 Days', 75, '2022-06-13 01:00:38', '2022-06-13 01:00:38'),
(10, '90 Days', 90, '2022-06-13 01:00:38', '2022-06-13 01:00:38');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `module_id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'Access Dashboard', 'app.dashboard', '2022-07-17 10:19:35', '2022-07-17 10:19:35'),
(2, 2, 'User Management', 'app.access_control.user', '2022-07-17 10:19:35', '2022-07-17 10:19:35'),
(3, 2, 'Role Management', 'app.access_control.role', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(4, 2, 'Settings', 'app.access_control.settings', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(5, 3, 'Access Mapping', 'app.mapping.index', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(6, 3, 'Create Mapping', 'app.mapping.create', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(7, 3, 'Edit Mapping', 'app.mapping.edit', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(8, 3, 'Delete Mapping', 'app.mapping.destroy', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(9, 4, 'Access Project', 'app.project.index', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(10, 4, 'Create Project', 'app.project.create', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(11, 4, 'Edit Project', 'app.project.edit', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(12, 4, 'Delete Project', 'app.project.destroy', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(13, 5, 'Access Bank Details', 'app.bank_details.index', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(14, 5, 'Create Bank Details', 'app.bank_details.create', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(15, 5, 'Edit Bank Details', 'app.bank_details.edit', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(16, 5, 'Delete Bank Details', 'app.bank_details.destroy', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(17, 6, 'Access master account', 'app.master_account.index', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(18, 6, 'Create master account', 'app.master_account.create', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(19, 6, 'Edit master account', 'app.master_account.edit', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(20, 6, 'Delete master account', 'app.master_account.destroy', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(21, 7, 'Access account head', 'app.account_head.index', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(22, 7, 'Create account head', 'app.account_head.create', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(23, 7, 'Edit account head', 'app.account_head.edit', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(24, 7, 'Delete account head', 'app.account_head.destroy', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(25, 8, 'Access cost center', 'app.cost_center.index', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(26, 8, 'Create cost center', 'app.cost_center.create', '2022-07-17 10:19:36', '2022-07-17 10:19:36'),
(27, 8, 'Edit cost center', 'app.cost_center.edit', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(28, 8, 'Delete cost center', 'app.cost_center.destroy', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(29, 9, 'Access profit center', 'app.profit_center.index', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(30, 9, 'Create profit center', 'app.profit_center.create', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(31, 9, 'Edit profit center', 'app.profit_center.edit', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(32, 9, 'Delete profit center', 'app.profit_center.destroy', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(33, 10, 'Access party info', 'app.party_info.index', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(34, 10, 'Create party info', 'app.party_info.create', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(35, 10, 'Edit party info', 'app.party_info.edit', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(36, 10, 'Delete party info', 'app.party_info.destroy', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(37, 11, 'Document', 'app.document', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(38, 12, 'Journal Entry', 'app.journal_entry', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(39, 12, 'Journal Authorize', 'app.journal_authorize', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(40, 12, 'Journal approval', 'app.journal_approval', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(41, 13, 'General Ledger', 'app.acreport.gl', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(42, 13, 'Trial Balance', 'app.acreport.tb', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(43, 13, 'Income Statement', 'app.acreport.is', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(44, 13, 'Balance Sheet', 'app.acreport.bs', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(45, 13, 'Cash Flow Statement', 'app.acreport.cfs', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(46, 14, 'Access style', 'app.style.index', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(47, 14, 'Create style', 'app.style.create', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(48, 14, 'Edit style', 'app.style.edit', '2022-07-17 10:19:37', '2022-07-17 10:19:37'),
(49, 14, 'Delete style', 'app.style.destroy', '2022-07-17 10:19:38', '2022-07-17 10:19:38'),
(50, 15, 'Access color', 'app.color.index', '2022-07-17 10:19:38', '2022-07-17 10:19:38'),
(51, 15, 'Create color', 'app.color.create', '2022-07-17 10:19:38', '2022-07-17 10:19:38'),
(52, 15, 'Edit color', 'app.color.edit', '2022-07-17 10:19:38', '2022-07-17 10:19:38'),
(53, 15, 'Delete color', 'app.color.destroy', '2022-07-17 10:19:38', '2022-07-17 10:19:38'),
(54, 16, 'Access size', 'app.size.index', '2022-07-17 10:19:38', '2022-07-17 10:19:38'),
(55, 16, 'Create size', 'app.size.create', '2022-07-17 10:19:38', '2022-07-17 10:19:38'),
(56, 16, 'Edit size', 'app.size.edit', '2022-07-17 10:19:38', '2022-07-17 10:19:38'),
(57, 16, 'Delete size', 'app.size.destroy', '2022-07-17 10:19:38', '2022-07-17 10:19:38'),
(58, 17, 'Access item list', 'app.item_list.index', '2022-07-17 10:19:38', '2022-07-17 10:19:38'),
(59, 17, 'Create item list', 'app.item_list.create', '2022-07-17 10:19:38', '2022-07-17 10:19:38'),
(60, 17, 'Edit item list', 'app.item_list.edit', '2022-07-17 10:19:38', '2022-07-17 10:19:38'),
(61, 17, 'Delete item list', 'app.item_list.destroy', '2022-07-17 10:19:38', '2022-07-17 10:19:38'),
(62, 18, 'Stock Position', 'app.stock.position', '2022-07-17 10:19:38', '2022-07-17 10:19:38'),
(63, 18, 'Reconciliation', 'app.stock.reconciliation', '2022-07-17 10:19:38', '2022-07-17 10:19:38'),
(64, 19, 'Daily Sales', 'app.daily_sales', '2022-07-17 10:19:38', '2022-07-17 10:19:38'),
(65, 19, 'Monthly Sales', 'app.monthly_sales', '2022-07-17 10:19:38', '2022-07-17 10:19:38'),
(66, 19, 'Delivery Summery', 'app.delivery_summery', '2022-07-17 10:19:39', '2022-07-17 10:19:39'),
(67, 20, 'Requisition Entry', 'app.requisition_entry', '2022-07-17 10:19:39', '2022-07-17 10:19:39'),
(68, 20, 'Requisition Authorize', 'app.requisition_authorize', '2022-07-17 10:19:39', '2022-07-17 10:19:39'),
(69, 20, 'Requisition approval', 'app.requisition_approval', '2022-07-17 10:19:39', '2022-07-17 10:19:39'),
(70, 20, 'Purchase Order', 'app.po', '2022-07-17 10:19:39', '2022-07-17 10:19:39'),
(71, 20, 'PO Approval', 'app.po_approval', '2022-07-17 10:19:39', '2022-07-17 10:19:39'),
(72, 20, 'Goods Receive', 'app.gr', '2022-07-17 10:19:39', '2022-07-17 10:19:39'),
(73, 20, 'Invoice Posting', 'app.ip', '2022-07-17 10:19:39', '2022-07-17 10:19:39'),
(74, 21, 'Purchase Return Entry', 'app.purchase_return_entry', '2022-07-17 10:19:39', '2022-07-17 10:19:39'),
(75, 21, 'Purchase Return Authorize', 'app.purchase_return_authorize', '2022-07-17 10:19:39', '2022-07-17 10:19:39'),
(76, 21, 'Purchase Return approval', 'app.purchase_return_approval', '2022-07-17 10:19:39', '2022-07-17 10:19:39'),
(77, 22, 'Payment Voucher Entry', 'app.payment_voucher_entry', '2022-07-17 10:19:39', '2022-07-17 10:19:39'),
(78, 22, 'Payment Voucher Authorize', 'app.payment_voucher_authorize', '2022-07-17 10:19:39', '2022-07-17 10:19:39'),
(79, 22, 'Payment Voucher Approval', 'app.payment_voucher_approval', '2022-07-17 10:19:39', '2022-07-17 10:19:39'),
(80, 23, 'Counter tax invoice', 'app.sales.counter_tax_invoice', '2022-07-17 10:19:39', '2022-07-17 10:19:39'),
(81, 23, 'SO Receive', 'app.sales.so', '2022-07-17 10:19:39', '2022-07-17 10:19:39'),
(82, 23, 'Delivery Note', 'app.sales.delivery_note', '2022-07-17 10:19:39', '2022-07-17 10:19:39'),
(83, 23, 'Warehouse Tax Invoice', 'app.sales.warehouse_tax_invoice', '2022-07-17 10:19:39', '2022-07-17 10:19:39'),
(84, 23, 'Receipt Voucher', 'app.sales.receipt_voucher', '2022-07-17 10:19:39', '2022-07-17 10:19:39'),
(85, 23, 'Sales Return', 'app.sales.sr', '2022-07-17 10:19:39', '2022-07-17 10:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 9, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 11, 1, NULL, NULL),
(12, 12, 1, NULL, NULL),
(13, 13, 1, NULL, NULL),
(14, 14, 1, NULL, NULL),
(15, 15, 1, NULL, NULL),
(16, 16, 1, NULL, NULL),
(17, 17, 1, NULL, NULL),
(18, 18, 1, NULL, NULL),
(19, 19, 1, NULL, NULL),
(20, 20, 1, NULL, NULL),
(21, 21, 1, NULL, NULL),
(22, 22, 1, NULL, NULL),
(23, 23, 1, NULL, NULL),
(24, 24, 1, NULL, NULL),
(25, 25, 1, NULL, NULL),
(26, 26, 1, NULL, NULL),
(27, 27, 1, NULL, NULL),
(28, 28, 1, NULL, NULL),
(29, 29, 1, NULL, NULL),
(30, 30, 1, NULL, NULL),
(31, 31, 1, NULL, NULL),
(32, 32, 1, NULL, NULL),
(33, 33, 1, NULL, NULL),
(34, 34, 1, NULL, NULL),
(35, 35, 1, NULL, NULL),
(36, 36, 1, NULL, NULL),
(37, 37, 1, NULL, NULL),
(38, 38, 1, NULL, NULL),
(39, 39, 1, NULL, NULL),
(40, 40, 1, NULL, NULL),
(41, 41, 1, NULL, NULL),
(42, 42, 1, NULL, NULL),
(43, 43, 1, NULL, NULL),
(44, 44, 1, NULL, NULL),
(45, 45, 1, NULL, NULL),
(46, 46, 1, NULL, NULL),
(47, 47, 1, NULL, NULL),
(48, 48, 1, NULL, NULL),
(49, 49, 1, NULL, NULL),
(50, 50, 1, NULL, NULL),
(51, 51, 1, NULL, NULL),
(52, 52, 1, NULL, NULL),
(53, 53, 1, NULL, NULL),
(54, 54, 1, NULL, NULL),
(55, 55, 1, NULL, NULL),
(56, 56, 1, NULL, NULL),
(57, 57, 1, NULL, NULL),
(58, 58, 1, NULL, NULL),
(59, 59, 1, NULL, NULL),
(60, 60, 1, NULL, NULL),
(61, 61, 1, NULL, NULL),
(62, 62, 1, NULL, NULL),
(63, 63, 1, NULL, NULL),
(64, 64, 1, NULL, NULL),
(65, 65, 1, NULL, NULL),
(66, 66, 1, NULL, NULL),
(67, 67, 1, NULL, NULL),
(68, 68, 1, NULL, NULL),
(69, 69, 1, NULL, NULL),
(70, 70, 1, NULL, NULL),
(71, 71, 1, NULL, NULL),
(72, 72, 1, NULL, NULL),
(73, 73, 1, NULL, NULL),
(74, 74, 1, NULL, NULL),
(75, 75, 1, NULL, NULL),
(76, 76, 1, NULL, NULL),
(77, 77, 1, NULL, NULL),
(78, 78, 1, NULL, NULL),
(79, 79, 1, NULL, NULL),
(80, 80, 1, NULL, NULL),
(81, 81, 1, NULL, NULL),
(82, 82, 1, NULL, NULL),
(83, 83, 1, NULL, NULL),
(84, 84, 1, NULL, NULL),
(85, 85, 1, NULL, NULL),
(86, 1, 5, NULL, NULL),
(87, 2, 5, NULL, NULL),
(88, 3, 5, NULL, NULL),
(89, 4, 5, NULL, NULL),
(90, 5, 5, NULL, NULL),
(91, 6, 5, NULL, NULL),
(92, 7, 5, NULL, NULL),
(93, 8, 5, NULL, NULL),
(94, 9, 5, NULL, NULL),
(95, 10, 5, NULL, NULL),
(96, 11, 5, NULL, NULL),
(97, 12, 5, NULL, NULL),
(98, 13, 5, NULL, NULL),
(99, 14, 5, NULL, NULL),
(100, 15, 5, NULL, NULL),
(101, 16, 5, NULL, NULL),
(102, 17, 5, NULL, NULL),
(103, 18, 5, NULL, NULL),
(104, 19, 5, NULL, NULL),
(105, 20, 5, NULL, NULL),
(106, 21, 5, NULL, NULL),
(107, 22, 5, NULL, NULL),
(108, 23, 5, NULL, NULL),
(109, 24, 5, NULL, NULL),
(110, 25, 5, NULL, NULL),
(111, 26, 5, NULL, NULL),
(112, 27, 5, NULL, NULL),
(113, 28, 5, NULL, NULL),
(114, 29, 5, NULL, NULL),
(115, 30, 5, NULL, NULL),
(116, 31, 5, NULL, NULL),
(117, 32, 5, NULL, NULL),
(118, 33, 5, NULL, NULL),
(119, 34, 5, NULL, NULL),
(120, 35, 5, NULL, NULL),
(121, 36, 5, NULL, NULL),
(122, 37, 5, NULL, NULL),
(123, 38, 5, NULL, NULL),
(124, 39, 5, NULL, NULL),
(125, 40, 5, NULL, NULL),
(126, 41, 5, NULL, NULL),
(127, 42, 5, NULL, NULL),
(128, 43, 5, NULL, NULL),
(129, 44, 5, NULL, NULL),
(130, 45, 5, NULL, NULL),
(131, 46, 5, NULL, NULL),
(132, 47, 5, NULL, NULL),
(133, 48, 5, NULL, NULL),
(134, 49, 5, NULL, NULL),
(135, 50, 5, NULL, NULL),
(136, 51, 5, NULL, NULL),
(137, 52, 5, NULL, NULL),
(138, 53, 5, NULL, NULL),
(139, 54, 5, NULL, NULL),
(140, 55, 5, NULL, NULL),
(141, 56, 5, NULL, NULL),
(142, 57, 5, NULL, NULL),
(143, 58, 5, NULL, NULL),
(144, 59, 5, NULL, NULL),
(145, 60, 5, NULL, NULL),
(146, 61, 5, NULL, NULL),
(147, 62, 5, NULL, NULL),
(148, 63, 5, NULL, NULL),
(149, 64, 5, NULL, NULL),
(150, 65, 5, NULL, NULL),
(151, 66, 5, NULL, NULL),
(152, 67, 5, NULL, NULL),
(153, 68, 5, NULL, NULL),
(154, 69, 5, NULL, NULL),
(155, 70, 5, NULL, NULL),
(156, 71, 5, NULL, NULL),
(157, 72, 5, NULL, NULL),
(158, 73, 5, NULL, NULL),
(159, 74, 5, NULL, NULL),
(160, 75, 5, NULL, NULL),
(161, 76, 5, NULL, NULL),
(162, 77, 5, NULL, NULL),
(163, 78, 5, NULL, NULL),
(164, 79, 5, NULL, NULL),
(165, 80, 5, NULL, NULL),
(166, 81, 5, NULL, NULL),
(167, 82, 5, NULL, NULL),
(168, 83, 5, NULL, NULL),
(169, 84, 5, NULL, NULL),
(170, 85, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_purchases`
--

CREATE TABLE `product_purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `po_list` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `tax_invoice_date` date NOT NULL,
  `serial_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `trn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_term` int(11) NOT NULL,
  `pay_date` date NOT NULL,
  `tax_invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profit_centers`
--

CREATE TABLE `profit_centers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pc_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pc_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prsn_responsible` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profit_centers`
--

INSERT INTO `profit_centers` (`id`, `pc_code`, `pc_name`, `activity`, `prsn_responsible`, `deleted_at`, `created_at`, `updated_at`) VALUES
(5, 'PC-0001', 'GARMENTS BUSINESS', 'SALE RGG', 'Mr.', NULL, '2022-06-24 22:32:22', '2022-07-02 10:09:00'),
(6, 'PC-0002', 'Al Jurf, Ajman Branch', 'Retail Store', 'Mr Babu', NULL, '2022-07-01 10:26:54', '2022-07-02 10:07:09'),
(7, 'PC-0003', 'City Center Dubai', 'Retail Sale', 'Mr Yousuf', NULL, '2022-07-01 14:38:51', '2022-07-02 10:07:05'),
(8, 'PC-0004', 'Profit center 2', 'Chemical Business', 'Mr. Adam Ali', NULL, '2022-07-02 12:45:01', '2022-07-02 12:45:01'),
(9, 'PC-0005', 'Profit center 3', 'Sales activity', 'Mr. Mansur Ali', NULL, '2022-07-02 12:45:59', '2022-07-02 12:45:59'),
(10, 'PC-0006', 'Profit center 4', 'Sales activity', 'Mr. Arif', NULL, '2022-07-02 12:46:49', '2022-07-02 12:46:49'),
(11, 'PC-0007', 'Profit Center 5', 'T-Shirt', 'Mr. Ahad', NULL, '2022-07-02 12:47:37', '2022-07-02 12:47:37');

-- --------------------------------------------------------

--
-- Table structure for table `project_details`
--

CREATE TABLE `project_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `proj_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pc_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proj_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proj_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cons_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cont_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ord_date` date NOT NULL,
  `hnd_over_date` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_details`
--

INSERT INTO `project_details` (`id`, `proj_no`, `pc_code`, `proj_name`, `proj_type`, `cons_agent`, `address`, `owner_name`, `cont_no`, `ord_date`, `hnd_over_date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 'PN-001', 'PC-0001', 'Ella Figueroa', 'Lady\'s Garments', 'Non anim voluptates', 'Consequat Enim reru', 'Camden Whitehead', '54', '1982-08-30', '1991-11-22', NULL, '2022-06-24 22:37:07', '2022-06-24 22:37:07'),
(5, 'PN-002', 'PC-0001', 'Hilda Battle', 'Men\'s T-Shirt', 'Quisquam voluptatem', 'Obcaecati adipisicin', 'Connor Mckinney', '16746745', '2003-07-28', '2017-06-23', NULL, '2022-06-27 21:53:04', '2022-06-27 21:53:04'),
(6, 'PN-003', 'PC-0001', 'Slade Neal', 'Men\'s T-Shirt', 'Voluptas amet aut v', 'Rerum non est corrup', 'Winter Cantrell', '64567456', '1978-05-07', '1973-10-19', NULL, '2022-06-27 21:53:16', '2022-06-27 21:53:16'),
(7, 'PN-004', 'PC-0002', 'ABC Readymade Garments LLC', 'Men\'s T-Shirt', 'XYZ LLC', 'Ajman', 'Mr ABC', '1111111111', '2022-06-26', '2022-07-19', NULL, '2022-07-01 10:28:13', '2022-07-01 10:28:13'),
(8, 'PN-005', 'PC-0005', 'A', 'Warehouse', 'S', 'A', 'S', '1', '1981-11-05', '2002-01-14', '2022-07-06 04:20:30', '2022-07-06 04:19:53', '2022-07-06 04:20:30'),
(9, 'PN-006', 'PC-0002', 'Octavia Myers', 'Warehouse', 'Consequatur sint la', 'Est cupiditate tempo', 'Leslie Mcgee', '70', '1984-03-03', '2000-02-27', '2022-07-06 04:22:40', '2022-07-06 04:22:36', '2022-07-06 04:22:40');

-- --------------------------------------------------------

--
-- Table structure for table `project_details_types`
--

CREATE TABLE `project_details_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_details_types`
--

INSERT INTO `project_details_types` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Retail Store', '2022-05-26 08:05:58', '2022-05-26 08:05:58'),
(2, 'Warehouse ', '2022-05-26 08:05:58', '2022-05-26 08:05:58');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po_list` int(11) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `pr_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `tax_invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_invoice_date` date DEFAULT NULL,
  `purchase_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `temp_purchase_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_term` int(11) NOT NULL,
  `pay_date` date NOT NULL,
  `shipping_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `type`, `po_list`, `project_id`, `pr_id`, `supplier_id`, `tax_invoice_no`, `tax_invoice_date`, `purchase_no`, `temp_purchase_no`, `pay_mode`, `pay_term`, `pay_date`, `shipping_id`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 4, 1, 555, '11111', NULL, '2022072201PO', '2022072201', 'Cash', 0, '2022-07-22', '11111', 101, '2022-07-22 13:16:29', '2022-07-22 13:17:16'),
(2, NULL, NULL, 7, 2, 558, '11111', NULL, '2022072202PO', '2022072202', 'Cash', 0, '2022-07-22', '1111', 101, '2022-07-22 13:38:05', '2022-07-22 13:39:32'),
(3, NULL, NULL, 4, 3, 567, '1111', NULL, '2022072203PO', '2022072203', 'Cash', 0, '2022-07-22', 'wal-022', 101, '2022-07-22 14:27:14', '2022-07-22 14:28:10'),
(4, NULL, NULL, 4, 4, 555, '11111', NULL, '2022072401PO', '2022072401', 'Cash', 0, '2022-07-24', '11111', 1, '2022-07-24 10:20:27', '2022-07-24 10:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `item_id` int(11) NOT NULL,
  `purchase_rate` decimal(10,3) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_amount` decimal(10,3) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `taxable_supplies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_details`
--

INSERT INTO `purchase_details` (`id`, `purchase_no`, `brand_id`, `group_id`, `item_id`, `purchase_rate`, `quantity`, `unit`, `vat_rate`, `vat_amount`, `total_amount`, `taxable_supplies`, `status`, `created_at`, `updated_at`) VALUES
(1, '2022072201PO', 2, 13, 14, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:11:34', '2022-07-22 13:11:34'),
(2, '2022072201PO', 4, 11, 15, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:11:43', '2022-07-22 13:11:43'),
(3, '2022072201PO', 5, 11, 16, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:11:53', '2022-07-22 13:11:53'),
(4, '2022072201PO', 2, 12, 17, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:12:03', '2022-07-22 13:12:03'),
(5, '2022072201PO', 4, 5, 18, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:12:11', '2022-07-22 13:12:11'),
(6, '2022072201PO', 2, 11, 19, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:12:21', '2022-07-22 13:12:21'),
(7, '2022072201PO', 2, 14, 20, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:12:31', '2022-07-22 13:12:31'),
(8, '2022072201PO', 2, 19, 21, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:12:41', '2022-07-22 13:12:41'),
(9, '2022072201PO', 2, 13, 22, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:12:49', '2022-07-22 13:12:49'),
(10, '2022072201PO', 5, 12, 23, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:12:58', '2022-07-22 13:12:58'),
(11, '2022072201PO', 8, 13, 24, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:13:07', '2022-07-22 13:13:07'),
(12, '2022072201PO', 10, 19, 25, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:13:16', '2022-07-22 13:13:16'),
(13, '2022072201PO', 13, 14, 26, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:13:25', '2022-07-22 13:13:25'),
(14, '2022072201PO', 3, 12, 27, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:13:35', '2022-07-22 13:13:35'),
(15, '2022072201PO', 11, 12, 28, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:13:44', '2022-07-22 13:13:44'),
(16, '2022072201PO', 15, 11, 29, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:13:53', '2022-07-22 13:13:53'),
(17, '2022072201PO', 16, 11, 30, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:14:02', '2022-07-22 13:14:02'),
(18, '2022072201PO', 1, 11, 31, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:14:12', '2022-07-22 13:14:12'),
(19, '2022072201PO', 12, 11, 32, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:14:22', '2022-07-22 13:14:22'),
(20, '2022072201PO', 17, 12, 33, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:14:33', '2022-07-22 13:14:33'),
(21, '2022072201PO', 18, 11, 34, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:14:42', '2022-07-22 13:14:42'),
(22, '2022072201PO', 7, 11, 35, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:14:50', '2022-07-22 13:14:50'),
(23, '2022072201PO', 14, 11, 36, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:14:59', '2022-07-22 13:14:59'),
(24, '2022072201PO', 19, 13, 37, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:15:07', '2022-07-22 13:15:07'),
(25, '2022072201PO', 10, 11, 38, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:15:15', '2022-07-22 13:15:15'),
(26, '2022072201PO', 20, 11, 39, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:15:24', '2022-07-22 13:15:24'),
(27, '2022072201PO', 21, 12, 40, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:15:33', '2022-07-22 13:15:33'),
(28, '2022072201PO', 2, 19, 41, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:15:43', '2022-07-22 13:15:43'),
(29, '2022072201PO', 3, 11, 42, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:15:51', '2022-07-22 13:15:51'),
(30, '2022072201PO', 7, 12, 43, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:15:59', '2022-07-22 13:15:59'),
(31, '2022072201PO', 1, 12, 45, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:16:06', '2022-07-22 13:16:06'),
(32, '2022072201PO', 4, 15, 46, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:16:14', '2022-07-22 13:16:14'),
(33, '2022072201PO', 20, 11, 47, '2.322', 1000, NULL, '1', '0.000', '2322.00', NULL, 0, '2022-07-22 13:16:23', '2022-07-22 13:16:23'),
(34, '2022072202PO', 8, 13, 24, '4.000', 5000, NULL, '1', '0.000', '20000.00', NULL, 0, '2022-07-22 13:37:15', '2022-07-22 13:37:15'),
(35, '2022072202PO', 3, 12, 27, '8.000', 5000, NULL, '1', '0.000', '40000.00', NULL, 0, '2022-07-22 13:38:02', '2022-07-22 13:38:02'),
(36, '2022072203PO', 23, 24, 48, '10.000', 1000, NULL, '1', '0.000', '10000.00', NULL, 0, '2022-07-22 14:27:10', '2022-07-22 14:27:10'),
(37, '2022072401PO', 2, 13, 14, '1.222', 1000, NULL, '1', '0.000', '1222.00', NULL, 0, '2022-07-24 10:19:28', '2022-07-24 10:19:28'),
(38, '2022072401PO', 4, 11, 15, '2.111', 1000, NULL, '1', '0.000', '2111.00', NULL, 0, '2022-07-24 10:19:38', '2022-07-24 10:19:38'),
(39, '2022072401PO', 5, 11, 16, '1.212', 1000, NULL, '1', '0.000', '1212.00', NULL, 0, '2022-07-24 10:19:52', '2022-07-24 10:19:52'),
(40, '2022072401PO', 2, 12, 17, '3.223', 1000, NULL, '1', '0.000', '3223.00', NULL, 0, '2022-07-24 10:20:04', '2022-07-24 10:20:04'),
(41, '2022072401PO', 4, 5, 18, '2.131', 1000, NULL, '1', '0.000', '2131.00', NULL, 0, '2022-07-24 10:20:22', '2022-07-24 10:20:22');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `purchase_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `shipping_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_rate` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `vat_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_amount` int(11) NOT NULL,
  `taxable_supplies` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_requisitions`
--

CREATE TABLE `purchase_requisitions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `tax_invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_purchase_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_invoice_date` date DEFAULT NULL,
  `purchase_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_term` int(11) DEFAULT NULL,
  `pay_date` date DEFAULT NULL,
  `shipping_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_requisitions`
--

INSERT INTO `purchase_requisitions` (`id`, `project_id`, `supplier_id`, `tax_invoice_no`, `temp_purchase_no`, `tax_invoice_date`, `purchase_no`, `pay_mode`, `pay_term`, `pay_date`, `shipping_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, NULL, NULL, '2022072201', NULL, '2022072201PR', NULL, NULL, NULL, NULL, 101, '2022-07-22 13:09:52', '2022-07-22 13:17:16'),
(2, 7, NULL, NULL, '2022072202', NULL, '2022072202PR', NULL, NULL, NULL, NULL, 101, '2022-07-22 13:32:23', '2022-07-22 13:39:32'),
(3, 4, NULL, NULL, '2022072203', NULL, '2022072203PR', NULL, NULL, NULL, NULL, 101, '2022-07-22 14:25:03', '2022-07-22 14:28:10'),
(4, 4, NULL, NULL, '2022072401', NULL, '2022072401PR', NULL, NULL, NULL, NULL, 2, '2022-07-24 10:17:39', '2022-07-24 10:18:26');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_requisition_details`
--

CREATE TABLE `purchase_requisition_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `item_id` int(11) NOT NULL,
  `item_barcode` int(11) DEFAULT NULL,
  `style_code` int(11) DEFAULT NULL,
  `purchase_rate` decimal(10,3) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_amount` decimal(10,3) DEFAULT NULL,
  `total_amount` decimal(10,3) DEFAULT NULL,
  `taxable_supplies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_requisition_details`
--

INSERT INTO `purchase_requisition_details` (`id`, `purchase_no`, `brand_id`, `group_id`, `item_id`, `item_barcode`, `style_code`, `purchase_rate`, `quantity`, `unit`, `vat_rate`, `vat_amount`, `total_amount`, `taxable_supplies`, `status`, `created_at`, `updated_at`) VALUES
(1, '2022072201PR', NULL, NULL, 14, 101213, 10, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:05:24', '2022-07-22 13:05:24'),
(2, '2022072201PR', NULL, NULL, 15, 101411, 10, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:05:33', '2022-07-22 13:05:33'),
(3, '2022072201PR', NULL, NULL, 16, 141511, 14, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:05:41', '2022-07-22 13:05:41'),
(4, '2022072201PR', NULL, NULL, 17, 101212, 10, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:05:48', '2022-07-22 13:05:48'),
(5, '2022072201PR', NULL, NULL, 18, 14343, 10, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:05:56', '2022-07-22 13:05:56'),
(6, '2022072201PR', NULL, NULL, 19, 141211, 14, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:06:07', '2022-07-22 13:06:07'),
(7, '2022072201PR', NULL, NULL, 20, 111214, 11, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:06:15', '2022-07-22 13:06:15'),
(8, '2022072201PR', NULL, NULL, 21, 121219, 12, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:06:23', '2022-07-22 13:06:23'),
(9, '2022072201PR', NULL, NULL, 22, 111213, 11, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:06:33', '2022-07-22 13:06:33'),
(10, '2022072201PR', NULL, NULL, 23, 101512, 10, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:06:40', '2022-07-22 13:06:40'),
(11, '2022072201PR', NULL, NULL, 24, 101813, 10, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:06:47', '2022-07-22 13:06:47'),
(12, '2022072201PR', NULL, NULL, 25, 112019, 11, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:06:56', '2022-07-22 13:06:56'),
(13, '2022072201PR', NULL, NULL, 26, 102314, 10, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:07:04', '2022-07-22 13:07:04'),
(14, '2022072201PR', NULL, NULL, 27, 101312, 10, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:07:12', '2022-07-22 13:07:12'),
(15, '2022072201PR', NULL, NULL, 28, 102112, 10, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:07:19', '2022-07-22 13:07:19'),
(16, '2022072201PR', NULL, NULL, 29, 102511, 10, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:07:27', '2022-07-22 13:07:27'),
(17, '2022072201PR', NULL, NULL, 30, 102611, 10, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:07:35', '2022-07-22 13:07:35'),
(18, '2022072201PR', NULL, NULL, 31, 101111, 10, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:07:42', '2022-07-22 13:07:42'),
(19, '2022072201PR', NULL, NULL, 32, 102211, 10, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:07:50', '2022-07-22 13:07:50'),
(20, '2022072201PR', NULL, NULL, 33, 102712, 10, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:07:58', '2022-07-22 13:07:58'),
(21, '2022072201PR', NULL, NULL, 34, 102811, 10, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:08:05', '2022-07-22 13:08:05'),
(22, '2022072201PR', NULL, NULL, 35, 101711, 10, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:08:13', '2022-07-22 13:08:13'),
(23, '2022072201PR', NULL, NULL, 36, 102411, 10, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:08:20', '2022-07-22 13:08:20'),
(24, '2022072201PR', NULL, NULL, 37, 102913, 10, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:08:28', '2022-07-22 13:08:28'),
(25, '2022072201PR', NULL, NULL, 38, 102011, 10, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:08:36', '2022-07-22 13:08:36'),
(26, '2022072201PR', NULL, NULL, 39, 113011, 11, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:08:44', '2022-07-22 13:08:44'),
(27, '2022072201PR', NULL, NULL, 40, 103112, 10, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:08:53', '2022-07-22 13:08:53'),
(28, '2022072201PR', NULL, NULL, 41, 141219, 14, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:09:01', '2022-07-22 13:09:01'),
(29, '2022072201PR', NULL, NULL, 42, 141311, 14, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:09:10', '2022-07-22 13:09:10'),
(30, '2022072201PR', NULL, NULL, 43, 141712, 14, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:09:18', '2022-07-22 13:09:18'),
(31, '2022072201PR', NULL, NULL, 45, 141112, 14, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:09:26', '2022-07-22 13:09:26'),
(32, '2022072201PR', NULL, NULL, 46, 141415, 14, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:09:33', '2022-07-22 13:09:33'),
(33, '2022072201PR', NULL, NULL, 47, 153011, 15, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:09:41', '2022-07-22 13:09:41'),
(35, '2022072202PR', NULL, NULL, 24, 101813, 10, NULL, 5000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:32:20', '2022-07-22 13:32:20'),
(36, '2022072202PR', NULL, NULL, 27, 101312, 10, NULL, 5000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 13:33:42', '2022-07-22 13:33:42'),
(37, '2022072203PR', NULL, NULL, 48, 163224, 16, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-22 14:24:59', '2022-07-22 14:24:59'),
(42, '2022072401PR', NULL, NULL, 14, 101213, 10, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-24 10:16:59', '2022-07-24 10:16:59'),
(43, '2022072401PR', NULL, NULL, 15, 101411, 10, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-24 10:17:07', '2022-07-24 10:17:07'),
(44, '2022072401PR', NULL, NULL, 16, 141511, 14, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-24 10:17:17', '2022-07-24 10:17:17'),
(45, '2022072401PR', NULL, NULL, 17, 101212, 10, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-24 10:17:27', '2022-07-24 10:17:27'),
(46, '2022072401PR', NULL, NULL, 18, 14343, 10, NULL, 1000, 'PCS', NULL, NULL, NULL, NULL, 0, '2022-07-24 10:17:35', '2022-07-24 10:17:35');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_returns`
--

CREATE TABLE `purchase_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_return_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `temp_purchase_return_no` int(11) NOT NULL,
  `po_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gr_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `challan_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `state` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_details`
--

CREATE TABLE `purchase_return_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_return_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` int(11) NOT NULL,
  `received_qty` int(11) NOT NULL,
  `return_qty` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_temps`
--

CREATE TABLE `purchase_temps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po_list` int(11) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `pr_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `tax_invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_invoice_date` date DEFAULT NULL,
  `purchase_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `temp_purchase_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_term` int(11) NOT NULL,
  `pay_date` date NOT NULL,
  `shipping_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchse_details`
--

CREATE TABLE `purchse_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) NOT NULL,
  `group_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_id` int(11) NOT NULL,
  `purchase_rate` decimal(10,3) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_amount` decimal(10,3) NOT NULL,
  `total_amount` decimal(10,3) NOT NULL,
  `taxable_supplies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchse_detail_temps`
--

CREATE TABLE `purchse_detail_temps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `purchase_rate` decimal(10,3) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_amount` decimal(10,3) NOT NULL,
  `total_amount` decimal(10,3) NOT NULL,
  `taxable_supplies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receipt_vouchers`
--

CREATE TABLE `receipt_vouchers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `temp_rv_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rv_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_invoice_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` decimal(10,3) NOT NULL,
  `paid_amount` decimal(10,3) NOT NULL,
  `due_amount` decimal(10,3) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `receipt_vouchers`
--

INSERT INTO `receipt_vouchers` (`id`, `temp_rv_no`, `rv_no`, `tax_invoice_id`, `project_id`, `customer_id`, `date`, `payment_method`, `check_no`, `bank_name`, `branch_name`, `customer_name`, `total_amount`, `paid_amount`, `due_amount`, `status`, `created_at`, `updated_at`) VALUES
(3, '2022072301', '2022072301RV', 1, 4, 563, '2022-07-23', 'Cash', NULL, NULL, NULL, 'PI-0559', '7750.000', '7000.000', '750.000', 1, '2022-07-23 15:05:08', '2022-07-23 15:06:14');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deletable` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `deletable`, `created_at`, `updated_at`) VALUES
(1, 'Finance Head', 'finance-head', NULL, 0, '2022-07-17 10:19:39', '2022-07-17 10:19:39'),
(2, 'Chief of Accounts', 'chief-of-accounts', NULL, 0, '2022-07-17 10:19:43', '2022-07-17 10:19:43'),
(3, 'Accountant', 'accountant', NULL, 0, '2022-07-17 10:19:43', '2022-07-17 10:19:43'),
(4, 'Accounts Executive', 'accounts-executive', NULL, 0, '2022-07-17 10:19:43', '2022-07-17 10:19:43'),
(5, 'Country Head', 'country-head', NULL, 1, '2022-07-22 15:35:16', '2022-07-22 15:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `sale_invoices`
--

CREATE TABLE `sale_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_orders`
--

CREATE TABLE `sale_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_order_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gl_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trn_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_terms` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_orders`
--

INSERT INTO `sale_orders` (`id`, `sale_order_no`, `date`, `customer_name`, `gl_code`, `project_id`, `trn_no`, `pay_mode`, `pay_terms`, `due_date`, `contact_no`, `address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '20220724001', '2022-07-24', 'PI-0001', NULL, '4', '100328253800003', 'Cash', '0', '2022-07-24', NULL, NULL, NULL, '2022-07-24 12:43:52', '2022-07-24 12:43:52'),
(2, '20220724002', '2022-07-24', 'PI-0001', NULL, '4', '100328253800003', 'Cash', '0', '2022-07-24', NULL, NULL, NULL, '2022-07-24 12:44:43', '2022-07-24 12:44:43');

-- --------------------------------------------------------

--
-- Table structure for table `sale_order_items`
--

CREATE TABLE `sale_order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_order_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `style_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost_price` decimal(12,3) NOT NULL,
  `net_amount` decimal(12,3) NOT NULL,
  `vat_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_amount` decimal(12,3) NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` decimal(12,3) NOT NULL,
  `total_unit_price` decimal(12,3) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_order_items`
--

INSERT INTO `sale_order_items` (`id`, `sale_order_no`, `sale_order_id`, `item_id`, `color_id`, `size`, `style_id`, `barcode`, `quantity`, `cost_price`, `net_amount`, `vat_rate`, `vat_amount`, `unit`, `unit_price`, `total_unit_price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '20220724001', '1', '14', '2', 'M', '1', 101213, 100, '1236.000', '1.000', '3', '36.000', 'PCS', '12.000', '1200.000', NULL, '2022-07-24 12:43:52', '2022-07-24 12:43:52'),
(2, '20220724001', '1', '15', '4', 'XS', '1', 101411, 100, '420.000', '1.000', '5', '20.000', 'PCS', '4.000', '400.000', NULL, '2022-07-24 12:43:52', '2022-07-24 12:43:52'),
(3, '20220724001', '1', '16', '5', 'XS', '5', 141511, 100, '12600.000', '1.000', '5', '600.000', 'PCS', '120.000', '12000.000', NULL, '2022-07-24 12:43:52', '2022-07-24 12:43:52'),
(4, '20220724001', '1', '17', '2', 'S', '1', 101212, 100, '575.400', '1.000', '5', '27.400', 'PCS', '5.480', '548.000', NULL, '2022-07-24 12:43:52', '2022-07-24 12:43:52'),
(5, '20220724001', '1', '19', '2', 'XS', '5', 141211, 100, '25000.000', '1.000', '0', '0.000', 'PCS', '250.000', '25000.000', NULL, '2022-07-24 12:43:52', '2022-07-24 12:43:52'),
(6, '20220724002', '2', '14', '2', 'M', '1', 101213, 1, '12.360', '1.000', '3', '0.360', 'PCS', '12.000', '12.000', NULL, '2022-07-24 12:44:43', '2022-07-24 12:44:43');

-- --------------------------------------------------------

--
-- Table structure for table `sale_order_item_temps`
--

CREATE TABLE `sale_order_item_temps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_order_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `style_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost_price` decimal(12,3) NOT NULL,
  `net_amount` decimal(12,3) NOT NULL,
  `vat_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_amount` decimal(12,3) NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` decimal(12,3) NOT NULL,
  `total_unit_price` decimal(12,3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_order_item_temps`
--

INSERT INTO `sale_order_item_temps` (`id`, `sale_order_no`, `item_id`, `style_id`, `color_id`, `size`, `barcode`, `quantity`, `cost_price`, `net_amount`, `vat_rate`, `vat_amount`, `unit`, `unit_price`, `total_unit_price`, `created_at`, `updated_at`) VALUES
(1, '20220724001', '14', '1', '2', 'M', 101213, 100, '1236.000', '1200.000', '3', '36.000', 'PCS', '12.000', '1200.000', '2022-07-24 12:42:58', '2022-07-24 12:42:58'),
(2, '20220724001', '15', '1', '4', 'XS', 101411, 100, '420.000', '400.000', '5', '20.000', 'PCS', '4.000', '400.000', '2022-07-24 12:43:07', '2022-07-24 12:43:07'),
(3, '20220724001', '16', '5', '5', 'XS', 141511, 100, '12600.000', '12000.000', '5', '600.000', 'PCS', '120.000', '12000.000', '2022-07-24 12:43:18', '2022-07-24 12:43:18'),
(4, '20220724001', '17', '1', '2', 'S', 101212, 100, '575.400', '548.000', '5', '27.400', 'PCS', '5.480', '548.000', '2022-07-24 12:43:31', '2022-07-24 12:43:31'),
(5, '20220724001', '19', '5', '2', 'XS', 141211, 100, '25000.000', '25000.000', '0', '0.000', 'PCS', '250.000', '25000.000', '2022-07-24 12:43:46', '2022-07-24 12:43:46'),
(6, '20220724002', '14', '1', '2', 'M', 101213, 1, '12.360', '12.000', '3', '0.360', 'PCS', '12.000', '12.000', '2022-07-24 12:44:40', '2022-07-24 12:44:40');

-- --------------------------------------------------------

--
-- Table structure for table `sale_order_temps`
--

CREATE TABLE `sale_order_temps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_order_no` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_order_temps`
--

INSERT INTO `sale_order_temps` (`id`, `sale_order_no`, `created_at`, `updated_at`) VALUES
(3, 20220724001, '2022-07-24 12:42:37', '2022-07-24 12:42:37'),
(4, 20220724002, '2022-07-24 12:44:26', '2022-07-24 12:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `sale_returns`
--

CREATE TABLE `sale_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` decimal(12,3) NOT NULL,
  `discount` decimal(12,3) NOT NULL,
  `net_amount` decimal(12,3) NOT NULL,
  `cost_price` decimal(12,3) NOT NULL,
  `vat_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_amount` decimal(12,3) NOT NULL,
  `total_unit_price` decimal(12,3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_return_temps`
--

CREATE TABLE `sale_return_temps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` decimal(12,3) NOT NULL,
  `discount` decimal(12,3) NOT NULL,
  `net_amount` decimal(12,3) NOT NULL,
  `cost_price` decimal(12,3) NOT NULL,
  `vat_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_amount` decimal(12,3) NOT NULL,
  `total_unit_price` decimal(12,3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `config_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `config_name`, `config_value`, `created_at`, `updated_at`) VALUES
(1, 'company_name', 'MOHAMMED HABIB READYMADE GARMENTS TRADING LLC', '2022-05-26 08:02:55', '2022-07-24 04:17:18'),
(2, 'company_address', 'Office No- 11, Jurf industrail zone3, Ajman, Ajman, United Arab Emirates, 2449', '2022-05-26 08:02:55', '2022-07-01 10:39:12'),
(3, 'company_tele', '+971526860005', '2022-05-26 08:02:55', '2022-07-24 04:39:50'),
(4, 'company_email', 'cotton-mart@gmail.com', '2022-05-26 08:02:55', '2022-07-01 10:39:46'),
(5, 'title_name', 'Cotton Mart', NULL, NULL),
(6, 'trn_no', '100516955000003', '2022-07-24 04:36:37', '2022-07-24 04:36:37');

-- --------------------------------------------------------

--
-- Table structure for table `stock_transections`
--

CREATE TABLE `stock_transections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transection_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `stock_effect` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tns_type_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tns_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_price` decimal(12,2) DEFAULT NULL,
  `cost_vat` int(11) DEFAULT NULL,
  `consumed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_transections`
--

INSERT INTO `stock_transections` (`id`, `item_id`, `transection_id`, `quantity`, `stock_effect`, `tns_type_code`, `tns_description`, `cost_price`, `cost_vat`, `consumed`, `created_at`, `updated_at`) VALUES
(1, '14', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(2, '15', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(3, '16', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(4, '17', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(5, '18', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(6, '19', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(7, '20', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(8, '21', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(9, '22', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(10, '23', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(11, '24', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(12, '25', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(13, '26', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(14, '27', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(15, '28', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(16, '29', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(17, '30', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(18, '31', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(19, '32', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(20, '33', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(21, '34', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(22, '35', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(23, '36', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(24, '37', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(25, '38', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(26, '39', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(27, '40', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(28, '41', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(29, '42', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(30, '43', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(31, '45', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(32, '46', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(33, '47', '1', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:17:16', '2022-07-22 13:17:16'),
(34, '24', '2', 5000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:39:32', '2022-07-22 13:39:32'),
(35, '27', '2', 5000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 13:39:32', '2022-07-22 13:39:32'),
(36, '24', '1', 1000, '-1', 'S', 'Sales', '5250.00', NULL, NULL, '2022-07-22 13:52:18', '2022-07-22 13:52:18'),
(37, '19', '1', 10, '-1', 'S', 'Sales', '2500.00', NULL, NULL, '2022-07-22 13:52:18', '2022-07-22 13:52:18'),
(38, '48', '3', 1000, '1', 'P', 'Purchase', NULL, NULL, NULL, '2022-07-22 14:28:10', '2022-07-22 14:28:10'),
(39, '48', '2', 10, '-1', 'S', 'Sales', '126.00', NULL, NULL, '2022-07-22 14:33:19', '2022-07-22 14:33:19'),
(40, '14', '3', 1, '-1', 'S', 'Sales', '12.36', NULL, NULL, '2022-07-23 11:58:17', '2022-07-23 11:58:17'),
(41, '16', '3', 1, '-1', 'S', 'Sales', '126.00', NULL, NULL, '2022-07-23 11:58:17', '2022-07-23 11:58:17'),
(42, '14', '4', 1, '-1', 'S', 'Sales', '12.36', NULL, NULL, '2022-07-24 06:18:40', '2022-07-24 06:18:40'),
(43, '15', '4', 1, '-1', 'S', 'Sales', '4.20', NULL, NULL, '2022-07-24 06:18:40', '2022-07-24 06:18:40'),
(44, '22', '5', 1, '-1', 'S', 'Sales', '149.35', NULL, NULL, '2022-07-24 12:26:34', '2022-07-24 12:26:34'),
(45, '36', '5', 1, '-1', 'S', 'Sales', '10.73', NULL, NULL, '2022-07-24 12:26:34', '2022-07-24 12:26:34'),
(46, '43', '5', 1, '-1', 'S', 'Sales', '4.55', NULL, NULL, '2022-07-24 12:26:34', '2022-07-24 12:26:34'),
(47, '14', '1', 1, '-1', 'S', 'Sales', NULL, NULL, NULL, '2022-07-24 12:45:31', '2022-07-24 12:45:31'),
(48, '14', '6', 1, '-1', 'S', 'Sales', '12.36', NULL, NULL, '2022-07-24 12:49:06', '2022-07-24 12:49:06');

-- --------------------------------------------------------

--
-- Table structure for table `styles`
--

CREATE TABLE `styles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `style_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `style_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `styles`
--

INSERT INTO `styles` (`id`, `style_no`, `style_name`, `created_at`, `updated_at`) VALUES
(1, '10', '160 gsm R/N T-Shirt', NULL, NULL),
(2, '11', '190 gsm R/N T-Shirt', NULL, NULL),
(3, '12', '170 gsm Boy\'s T-shirt', NULL, NULL),
(4, '13', '240 Lacoste Polo-Shirt', NULL, NULL),
(5, '14', '220 gsm Cotton Polo-Shirt', NULL, NULL),
(6, '15', '220 gsm Cvc Polo-Shirt', NULL, NULL),
(10, '16', '220 gsm Special Polo', '2022-07-22 14:19:28', '2022-07-22 14:19:28'),
(11, '17', 'Promo Stock Sale', '2022-07-22 14:34:46', '2022-07-22 14:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `temp_item_stores`
--

CREATE TABLE `temp_item_stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) NOT NULL,
  `group_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_list_id` int(11) NOT NULL,
  `shipping_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_rate` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taxable_supplies` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_amount` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `txn_types`
--

CREATE TABLE `txn_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `txn_types`
--

INSERT INTO `txn_types` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Purchase/Expense', '2022-06-13 01:00:38', '2022-06-13 01:00:38'),
(2, 'Income', '2022-06-13 01:00:38', '2022-06-13 01:00:38');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dozen', '2022-05-26 08:06:05', '2022-05-26 08:06:05'),
(2, 'PCS', '2022-05-26 08:06:05', '2022-05-26 08:06:05'),
(3, 'Packets', '2022-05-26 08:06:05', '2022-05-26 08:06:05'),
(4, 'Box', '2022-05-26 08:06:05', '2022-05-26 08:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mahfuz', 'mahfuz@gmail.com', NULL, '$2y$10$b9tkk6GQsk6VeFBGYvZqtuPqAOA7wNj8lQJR.he9CaTw5BqR76RXq', 1, NULL, '2022-07-17 10:19:43', '2022-07-17 10:19:43'),
(2, 2, 'Moshfeq', 'moshfeq@gmail.com', NULL, '$2y$10$lsvjN73n8wCw5n5O1oys4eNdTS5aFOPXC0GRJgPfgGPRaeYBv5kSu', 1, NULL, '2022-07-17 10:19:43', '2022-07-17 10:19:43'),
(3, 3, 'Tanzim', 'tanzim@gmail.com', NULL, '$2y$10$f0qk2vxZxA3HQV.3FLM4z.zbyI8FW8thvQ9vwtUGuz0nYKdNADT2i', 1, NULL, '2022-07-17 10:19:43', '2022-07-17 10:19:43'),
(4, 4, 'Shagor', 'shagor@gmail.com', NULL, '$2y$10$NxbC9M.4VefRSgGjNHSHluD74BavODb/qS4bPZchEZywunnigIk6G', 1, NULL, '2022-07-17 10:19:44', '2022-07-17 10:19:44'),
(5, 1, 'Mominul', 'mominul@gmail.com', NULL, '$2y$10$zmW4xxHq6giM.Fp/TjjAWenmlD3lBsxua8SZDu9UjD2VVuBCuRM.q', 1, NULL, '2022-07-17 10:19:44', '2022-07-17 10:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `vat_rates`
--

CREATE TABLE `vat_rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vat_rates`
--

INSERT INTO `vat_rates` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, '0 Rated', '0', '2022-05-26 08:06:06', '2022-05-26 08:06:06'),
(2, 'Exempted', '0', '2022-05-26 08:06:06', '2022-05-26 08:06:06'),
(3, 'No TRN', '3', '2022-05-26 08:06:06', '2022-05-26 08:06:06'),
(4, 'Standard', '5', '2022-05-26 08:06:06', '2022-05-26 08:06:06');

-- --------------------------------------------------------

--
-- Table structure for table `vat_types`
--

CREATE TABLE `vat_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vat_types`
--

INSERT INTO `vat_types` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Input', '2022-05-26 08:05:58', '2022-05-26 08:05:58'),
(2, 'Output', '2022-05-26 08:05:58', '2022-05-26 08:05:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_documents`
--
ALTER TABLE `accounts_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_document_items`
--
ALTER TABLE `accounts_document_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_heads`
--
ALTER TABLE `account_heads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_details`
--
ALTER TABLE `bank_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bank_details_bank_code_unique` (`bank_code`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `branches_title_unique` (`title`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulks`
--
ALTER TABLE `bulks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cost_centers`
--
ALTER TABLE `cost_centers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cost_centers_cc_code_unique` (`cc_code`);

--
-- Indexes for table `cost_center_types`
--
ALTER TABLE `cost_center_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cost_center_types_title_unique` (`title`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_name_unique` (`name`);

--
-- Indexes for table `delivery_items`
--
ALTER TABLE `delivery_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_notes`
--
ALTER TABLE `delivery_notes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `delivery_notes_delivery_note_no_unique` (`delivery_note_no`);

--
-- Indexes for table `delivery_note_sales`
--
ALTER TABLE `delivery_note_sales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `delivery_note_sales_delivery_note_id_unique` (`delivery_note_id`),
  ADD UNIQUE KEY `delivery_note_sales_sale_order_id_unique` (`sale_order_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goods_receiveds`
--
ALTER TABLE `goods_receiveds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goods_received_details`
--
ALTER TABLE `goods_received_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoices_invoice_no_unique` (`invoice_no`);

--
-- Indexes for table `invoice_amounts`
--
ALTER TABLE `invoice_amounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_item_temps`
--
ALTER TABLE `invoice_item_temps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_postings`
--
ALTER TABLE `invoice_postings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice_posting_no` (`invoice_posting_no`);

--
-- Indexes for table `invoice_posting_details`
--
ALTER TABLE `invoice_posting_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_temps`
--
ALTER TABLE `invoice_temps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice_temps_invoice_no_unique` (`invoice_no`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_purchases`
--
ALTER TABLE `item_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_stocks`
--
ALTER TABLE `item_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journals`
--
ALTER TABLE `journals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `journals_journal_no_unique` (`journal_no`);

--
-- Indexes for table `ladger_basic_temps`
--
ALTER TABLE `ladger_basic_temps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ladger_detail_temps`
--
ALTER TABLE `ladger_detail_temps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ledger_basics`
--
ALTER TABLE `ledger_basics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mappings`
--
ALTER TABLE `mappings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_accounts`
--
ALTER TABLE `master_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_accounts_mst_ac_code_unique` (`mst_ac_code`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `modules_name_unique` (`name`);

--
-- Indexes for table `mst_a_c_types`
--
ALTER TABLE `mst_a_c_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_cat_types`
--
ALTER TABLE `mst_cat_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_definitions`
--
ALTER TABLE `mst_definitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opening_stocks`
--
ALTER TABLE `opening_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `party_infos`
--
ALTER TABLE `party_infos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `party_infos_pi_code_unique` (`pi_code`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_vouchers`
--
ALTER TABLE `payment_vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payterms`
--
ALTER TABLE `payterms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payterms_title_unique` (`title`),
  ADD UNIQUE KEY `payterms_value_unique` (`value`);

--
-- Indexes for table `pay_modes`
--
ALTER TABLE `pay_modes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pay_modes_title_unique` (`title`);

--
-- Indexes for table `pay_terms`
--
ALTER TABLE `pay_terms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pay_terms_title_unique` (`title`),
  ADD UNIQUE KEY `pay_terms_value_unique` (`value`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`),
  ADD KEY `permissions_module_id_foreign` (`module_id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `product_purchases`
--
ALTER TABLE `product_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profit_centers`
--
ALTER TABLE `profit_centers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profit_centers_pc_code_unique` (`pc_code`);

--
-- Indexes for table `project_details`
--
ALTER TABLE `project_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_details_proj_no_unique` (`proj_no`);

--
-- Indexes for table `project_details_types`
--
ALTER TABLE `project_details_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_details_types_title_unique` (`title`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_requisitions`
--
ALTER TABLE `purchase_requisitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_requisition_details`
--
ALTER TABLE `purchase_requisition_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_temps`
--
ALTER TABLE `purchase_temps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchse_details`
--
ALTER TABLE `purchse_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchse_detail_temps`
--
ALTER TABLE `purchse_detail_temps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipt_vouchers`
--
ALTER TABLE `receipt_vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `sale_invoices`
--
ALTER TABLE `sale_invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sale_invoices_sale_order_id_unique` (`sale_order_id`),
  ADD UNIQUE KEY `sale_invoices_invoice_id_unique` (`invoice_id`);

--
-- Indexes for table `sale_orders`
--
ALTER TABLE `sale_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sale_orders_sale_order_no_unique` (`sale_order_no`);

--
-- Indexes for table `sale_order_items`
--
ALTER TABLE `sale_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_order_item_temps`
--
ALTER TABLE `sale_order_item_temps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_order_temps`
--
ALTER TABLE `sale_order_temps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sale_order_temps_sale_order_no_unique` (`sale_order_no`);

--
-- Indexes for table `sale_returns`
--
ALTER TABLE `sale_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_return_temps`
--
ALTER TABLE `sale_return_temps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_transections`
--
ALTER TABLE `stock_transections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `styles`
--
ALTER TABLE `styles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_item_stores`
--
ALTER TABLE `temp_item_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `txn_types`
--
ALTER TABLE `txn_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vat_rates`
--
ALTER TABLE `vat_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vat_types`
--
ALTER TABLE `vat_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vat_types_title_unique` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_documents`
--
ALTER TABLE `accounts_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `accounts_document_items`
--
ALTER TABLE `accounts_document_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `account_heads`
--
ALTER TABLE `account_heads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bank_details`
--
ALTER TABLE `bank_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `bulks`
--
ALTER TABLE `bulks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cost_centers`
--
ALTER TABLE `cost_centers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cost_center_types`
--
ALTER TABLE `cost_center_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `delivery_items`
--
ALTER TABLE `delivery_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_notes`
--
ALTER TABLE `delivery_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_note_sales`
--
ALTER TABLE `delivery_note_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goods_receiveds`
--
ALTER TABLE `goods_receiveds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `goods_received_details`
--
ALTER TABLE `goods_received_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `invoice_amounts`
--
ALTER TABLE `invoice_amounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `invoice_item_temps`
--
ALTER TABLE `invoice_item_temps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `invoice_postings`
--
ALTER TABLE `invoice_postings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invoice_posting_details`
--
ALTER TABLE `invoice_posting_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoice_temps`
--
ALTER TABLE `invoice_temps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `item_purchases`
--
ALTER TABLE `item_purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_stocks`
--
ALTER TABLE `item_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `journals`
--
ALTER TABLE `journals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ladger_basic_temps`
--
ALTER TABLE `ladger_basic_temps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ladger_detail_temps`
--
ALTER TABLE `ladger_detail_temps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ledger_basics`
--
ALTER TABLE `ledger_basics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mappings`
--
ALTER TABLE `mappings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `master_accounts`
--
ALTER TABLE `master_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `mst_a_c_types`
--
ALTER TABLE `mst_a_c_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mst_cat_types`
--
ALTER TABLE `mst_cat_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mst_definitions`
--
ALTER TABLE `mst_definitions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `opening_stocks`
--
ALTER TABLE `opening_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `party_infos`
--
ALTER TABLE `party_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=569;

--
-- AUTO_INCREMENT for table `payment_vouchers`
--
ALTER TABLE `payment_vouchers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payterms`
--
ALTER TABLE `payterms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pay_modes`
--
ALTER TABLE `pay_modes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pay_terms`
--
ALTER TABLE `pay_terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `product_purchases`
--
ALTER TABLE `product_purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profit_centers`
--
ALTER TABLE `profit_centers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `project_details`
--
ALTER TABLE `project_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `project_details_types`
--
ALTER TABLE `project_details_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_requisitions`
--
ALTER TABLE `purchase_requisitions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchase_requisition_details`
--
ALTER TABLE `purchase_requisition_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_temps`
--
ALTER TABLE `purchase_temps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchse_details`
--
ALTER TABLE `purchse_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchse_detail_temps`
--
ALTER TABLE `purchse_detail_temps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receipt_vouchers`
--
ALTER TABLE `receipt_vouchers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sale_invoices`
--
ALTER TABLE `sale_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_orders`
--
ALTER TABLE `sale_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sale_order_items`
--
ALTER TABLE `sale_order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sale_order_item_temps`
--
ALTER TABLE `sale_order_item_temps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sale_order_temps`
--
ALTER TABLE `sale_order_temps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sale_returns`
--
ALTER TABLE `sale_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_return_temps`
--
ALTER TABLE `sale_return_temps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stock_transections`
--
ALTER TABLE `stock_transections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `styles`
--
ALTER TABLE `styles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `temp_item_stores`
--
ALTER TABLE `temp_item_stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `txn_types`
--
ALTER TABLE `txn_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vat_rates`
--
ALTER TABLE `vat_rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vat_types`
--
ALTER TABLE `vat_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
