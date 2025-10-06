-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql-nachd.alwaysdata.net
-- Generation Time: Aug 20, 2025 at 02:28 PM
-- Server version: 10.11.13-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nachd_ums_iseahz`
--

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `building_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `establishment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `designation`, `abbreviation`, `building_id`, `created_at`, `updated_at`, `deleted_at`, `establishment_id`) VALUES
(1, 'A', 'Bloc A', 1, '2020-09-04 08:40:45', '2020-09-04 08:40:45', NULL, 1),
(2, 'Bloc B', 'B', 1, '2020-09-04 08:49:25', '2020-09-04 08:49:25', NULL, 1),
(3, 'Bloc A2', 'A2', 8, '2020-09-04 08:54:16', '2020-09-04 08:54:16', NULL, 1),
(4, 'Bloc B2', 'b2', 8, '2020-09-04 08:55:19', '2020-09-04 08:55:19', NULL, 1),
(5, 'Bloc A1', 'A1', 7, '2020-09-04 08:56:45', '2020-09-04 08:56:45', NULL, 1),
(6, 'Bloc Mathématique', 'B.Math', 10, '2020-12-28 12:07:26', '2020-12-28 12:07:26', NULL, 2),
(7, 'Bloc Informatique', 'B.Inf', 10, '2020-12-28 12:07:46', '2020-12-28 12:07:46', NULL, 2),
(8, 'Bloc Physique', 'B.Phy', 10, '2020-12-28 12:07:59', '2020-12-28 12:07:59', NULL, 2),
(9, 'Bloc K', 'K', 1, '2021-04-14 08:25:06', '2021-04-14 08:25:06', NULL, 1),
(10, 'Block I', 'I', 1, '2021-04-14 08:25:14', '2021-04-14 08:25:14', NULL, 1),
(11, 'Bloc M', 'M', 1, '2021-04-14 08:25:23', '2021-04-14 08:25:23', NULL, 1),
(12, 'Bloc G', 'G', 1, '2021-04-14 08:25:36', '2021-04-14 08:25:36', NULL, 1),
(13, 'Bloc Prepa', 'B.Pp', 10, '2021-10-28 07:12:24', '2021-10-28 07:12:24', NULL, 2),
(14, 'Bloc Mathématique', 'Maths', 11, '2021-11-20 10:12:01', '2021-11-20 10:16:41', NULL, 3),
(15, 'Bloc Physique', 'Physique', 11, '2021-11-20 10:12:13', '2021-11-20 10:49:24', NULL, 3),
(16, 'Bloc Informatique', 'Info', 11, '2021-11-20 10:12:25', '2021-11-20 10:12:25', NULL, 3),
(17, 'Bloc Recherches', 'Recherche', 11, '2021-11-20 10:12:35', '2021-11-20 10:50:35', NULL, 3),
(18, 'Salles Enseignements', 'SalleEns', 11, '2021-11-20 10:12:49', '2021-11-20 10:16:58', NULL, 3),
(19, 'Amphis', 'Amphis', 11, '2021-11-20 10:12:57', '2021-11-20 10:12:57', NULL, 3),
(20, 'Bibliothèque', 'Bibliothèque', 11, '2021-11-20 10:13:14', '2023-12-06 08:48:43', NULL, 3),
(21, 'Bloc A', 'A', 12, '2022-03-08 13:42:41', '2022-03-08 13:42:41', NULL, 4),
(22, 'Bloc B', 'B', 12, '2022-03-08 13:43:02', '2022-03-08 13:43:02', NULL, 4),
(23, 'Bloc C', 'C', 12, '2022-03-08 13:43:08', '2022-03-08 13:43:08', NULL, 4),
(24, 'Bloc D', 'D', 12, '2022-03-08 13:43:17', '2022-03-08 13:43:17', NULL, 4),
(25, 'Bloc E', 'E', 12, '2022-03-08 13:43:24', '2022-03-08 13:43:24', NULL, 4),
(26, 'Bloc F', 'F', 12, '2022-03-08 13:43:33', '2022-03-08 13:43:33', NULL, 4),
(27, 'Bloc G', 'G', 12, '2022-03-08 13:43:43', '2022-03-08 13:43:43', NULL, 4),
(28, 'Bloc H', 'H', 12, '2022-03-08 13:43:50', '2022-03-08 13:43:50', NULL, 4),
(29, 'Bloc-A', 'A', 13, '2022-03-14 09:51:22', '2022-03-14 11:11:51', NULL, 5),
(30, 'Bloc-B', 'B', 13, '2022-03-14 09:51:29', '2022-03-14 10:54:34', NULL, 5),
(31, 'Bloc-C', 'C', 13, '2022-03-14 09:51:40', '2022-03-14 10:54:38', NULL, 5),
(32, 'ISBM', 'ISBM', 15, '2024-01-02 07:11:04', '2024-01-02 07:11:04', NULL, 6),
(33, 'BLOC A', 'A', 16, '2025-05-13 16:24:00', '2025-05-13 16:24:00', NULL, 7),
(34, 'BLOC B', 'B', 16, '2025-05-13 16:24:08', '2025-05-13 16:24:08', NULL, 7),
(35, 'BLOC INFO', 'LABINFO', 16, '2025-05-13 16:24:21', '2025-05-13 16:24:21', NULL, 7),
(36, 'BLOC CHIMIE/PHYSIQUE', 'LAB_CH_PH', 16, '2025-05-13 16:24:46', '2025-05-13 16:24:46', NULL, 7),
(37, 'BLOC SCIENCE', 'LAB_SC', 16, '2025-05-13 16:25:05', '2025-05-13 16:25:05', NULL, 7),
(38, 'BLOC MUSIQUE', 'MUSIQUE', 16, '2025-05-13 16:25:18', '2025-05-13 16:25:18', NULL, 7),
(39, 'AMPHI', 'AMPHI', 16, '2025-05-13 16:25:43', '2025-05-13 16:25:43', NULL, 7),
(40, 'ART', 'ART', 16, '2025-05-13 16:25:50', '2025-05-13 16:25:50', NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `block_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `establishment_id` int(11) DEFAULT NULL,
  `exams_capacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`id`, `designation`, `abbreviation`, `capacity`, `tags`, `block_id`, `created_at`, `updated_at`, `deleted_at`, `subject_type`, `establishment_id`, `exams_capacity`) VALUES

(353, 'SALLE A01', 'A01', NULL, NULL, 33, '2025-05-13 16:27:51', '2025-05-13 16:27:51', NULL, 'C', 7, NULL),
(354, 'SALLE A02', 'A02', NULL, NULL, 33, '2025-05-13 16:27:51', '2025-05-13 16:27:51', NULL, 'C', 7, NULL),
(355, 'SALLE A03', 'A03', NULL, NULL, 33, '2025-05-13 16:27:51', '2025-05-13 16:27:51', NULL, 'C', 7, NULL),
(356, 'SALLE A04', 'A04', NULL, NULL, 33, '2025-05-13 16:27:51', '2025-05-13 16:27:51', NULL, 'C', 7, NULL),
(357, 'SALLE A05', 'A05', NULL, NULL, 33, '2025-05-13 16:27:51', '2025-05-13 16:27:51', NULL, 'C', 7, NULL),
(358, 'SALLE A06', 'A06', NULL, NULL, 33, '2025-05-13 16:27:51', '2025-05-13 16:27:51', NULL, 'C', 7, NULL),
(359, 'SALLE A07', 'A07', NULL, NULL, 33, '2025-05-13 16:27:51', '2025-05-13 16:27:51', NULL, 'C', 7, NULL),
(360, 'SALLE A08', 'A08', NULL, NULL, 33, '2025-05-13 16:27:51', '2025-05-13 16:27:51', NULL, 'C', 7, NULL),
(361, 'SALLE A09', 'A09', NULL, NULL, 33, '2025-05-13 16:27:51', '2025-05-13 16:27:51', NULL, 'C', 7, NULL),
(362, 'SALLE A10', 'A10', NULL, NULL, 33, '2025-05-13 16:27:51', '2025-05-13 16:27:51', NULL, 'C', 7, NULL),
(363, 'SALLE A11', 'A11', NULL, NULL, 33, '2025-05-13 16:27:51', '2025-05-13 16:27:51', NULL, 'C', 7, NULL),
(364, 'SALLE A12', 'A12', NULL, NULL, 33, '2025-05-13 16:27:51', '2025-05-13 16:27:51', NULL, 'C', 7, NULL),
(365, 'SALLE B01', 'B01', NULL, NULL, 33, '2025-05-13 16:27:51', '2025-05-13 16:27:51', NULL, 'C', 7, NULL),
(366, 'SALLE B02', 'B02', NULL, NULL, 33, '2025-05-13 16:27:51', '2025-05-13 16:27:51', NULL, 'C', 7, NULL),
(367, 'SALLE B03', 'B03', NULL, NULL, 33, '2025-05-13 16:27:51', '2025-05-13 16:27:51', NULL, 'C', 7, NULL),
(368, 'SALLE B04', 'B04', NULL, NULL, 33, '2025-05-13 16:27:51', '2025-05-13 16:27:51', NULL, 'C', 7, NULL),
(369, 'SALLE B05', 'B05', NULL, NULL, 33, '2025-05-13 16:27:51', '2025-05-13 16:27:51', NULL, 'C', 7, NULL),
(370, 'SALLE B06', 'B06', NULL, NULL, 33, '2025-05-13 16:27:51', '2025-05-13 16:27:51', NULL, 'C', 7, NULL),
(371, 'SALLE B07', 'B07', NULL, NULL, 33, '2025-05-13 16:27:51', '2025-05-13 16:27:51', NULL, 'C', 7, NULL),
(372, 'SALLE B08', 'B08', NULL, NULL, 33, '2025-05-13 16:27:51', '2025-05-13 16:27:51', NULL, 'C', 7, NULL),
(373, 'SALLE B09', 'B09', NULL, NULL, 33, '2025-05-13 16:27:51', '2025-05-13 16:27:51', NULL, 'C', 7, NULL),
(374, 'SALLE B10', 'B10', NULL, NULL, 33, '2025-05-13 16:27:51', '2025-05-13 16:27:51', NULL, 'C', 7, NULL),
(375, 'SALLE B11', 'B11', NULL, NULL, 33, '2025-05-13 16:27:52', '2025-05-13 16:27:52', NULL, 'C', 7, NULL),
(376, 'SALLE B12', 'B12', NULL, NULL, 33, '2025-05-13 16:27:52', '2025-05-13 16:27:52', NULL, 'C', 7, NULL),
(377, 'SALLE LABOINFO1', 'LABOINFO1', NULL, NULL, 35, '2025-05-13 16:27:52', '2025-05-13 16:27:52', NULL, 'TP', 7, NULL),
(378, 'SALLE LABOINFO2', 'LABOINFO2', NULL, NULL, 35, '2025-05-13 16:27:52', '2025-05-13 16:27:52', NULL, 'TP', 7, NULL),
(379, 'SALLE LABOINFO3', 'LABOINFO3', NULL, NULL, 35, '2025-05-13 16:27:52', '2025-05-13 16:27:52', NULL, 'TP', 7, NULL),
(380, 'SALLE LABOINFO4', 'LABOINFO4', NULL, NULL, 35, '2025-05-13 16:27:52', '2025-05-13 16:27:52', NULL, 'TP', 7, NULL),
(381, 'SALLE LABOINFO5', 'LABOINFO5', NULL, NULL, 35, '2025-05-13 16:27:52', '2025-05-13 16:27:52', NULL, 'TP', 7, NULL),
(382, 'SALLE LAB_CH_PH 1', 'LAB_CH_PH 1', NULL, NULL, 36, '2025-05-13 16:27:52', '2025-05-13 16:27:52', NULL, 'TP', 7, NULL),
(383, 'SALLE LAB_CH_PH 2', 'LAB_CH_PH 2', NULL, NULL, 36, '2025-05-13 16:27:52', '2025-05-13 16:27:52', NULL, 'TP', 7, NULL),
(384, 'SALLE MUSIQUE 1', 'MUSIQUE 1', NULL, NULL, 38, '2025-05-13 16:27:52', '2025-05-13 16:27:52', NULL, 'TP', 7, NULL),
(385, 'SALLE MUSIQUE 2', 'MUSIQUE 2', NULL, NULL, 38, '2025-05-13 16:27:52', '2025-05-13 16:27:52', NULL, 'TP', 7, NULL),
(386, 'SALLE AMPHI', 'AMPHI', NULL, NULL, 39, '2025-05-13 16:27:52', '2025-05-13 16:27:52', NULL, 'C', 7, NULL),
(387, 'SALLE Auditorium', 'Auditorium', NULL, NULL, 39, '2025-05-13 16:27:52', '2025-05-13 16:27:52', NULL, 'C', 7, NULL),
(388, 'SALLE ART', 'ART', NULL, NULL, 40, '2025-05-13 16:27:52', '2025-05-13 16:27:52', NULL, 'TP', 7, NULL),
(389, 'Salle des clubs', 'S Clubs', 35, NULL, 40, '2025-05-21 09:58:23', '2025-05-21 09:58:23', NULL, 'C-TD', 7, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cycles`
--

CREATE TABLE `cycles` (
  `id` int(10) UNSIGNED NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `establishment_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cycles`
--

INSERT INTO `cycles` (`id`, `designation`, `abbreviation`, `establishment_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Cycle préparatoire', 'Prepa', 2, '2020-12-28 12:36:10', '2020-12-28 12:36:10', NULL),
(2, 'Licence', 'Li', 2, '2020-12-28 12:36:27', '2020-12-28 12:36:27', NULL),
(3, 'Mastére', 'M', 2, '2020-12-28 12:36:37', '2020-12-28 12:36:37', NULL),
(4, 'Doctorat', 'D', 2, '2020-12-28 12:36:46', '2020-12-28 12:36:46', NULL),
(5, 'Cycle Ingénieur', 'Cycle.Ing', 1, '2021-04-14 08:48:50', '2021-04-14 08:48:50', NULL),
(6, 'Cycle préparatoire', 'C.Prépa', 3, '2021-11-20 11:08:04', '2021-11-20 11:08:04', NULL),
(7, 'Licence', 'Licence', 3, '2021-11-20 11:08:13', '2021-11-20 11:08:13', NULL),
(8, 'Mastère', 'Mastère', 3, '2021-11-20 11:08:22', '2021-11-20 11:08:22', NULL),
(9, 'Cycle ingénieur', 'ing', 4, '2022-03-07 14:49:13', '2022-03-07 14:49:13', NULL),
(10, 'Mastère', 'Mastère', 4, '2022-03-08 13:18:12', '2022-03-08 13:18:12', NULL),
(11, 'Licence Nationale', 'L', 5, '2022-03-14 10:08:46', '2022-03-14 10:08:46', NULL),
(12, 'Cycle Préparatoire', 'CP', 5, '2022-03-14 10:09:02', '2022-03-14 10:09:02', NULL),
(13, 'Cycle d\'ingénieur', 'ING', 5, '2022-03-14 10:09:16', '2022-03-14 10:09:16', NULL),
(14, 'Mastère', 'M', 5, '2022-03-14 10:09:26', '2022-03-14 10:09:26', NULL),
(15, 'Licence', 'Licence', 6, '2024-01-02 07:17:00', '2024-01-02 07:17:00', NULL),
(16, 'Mastère', 'Mastère', 6, '2024-01-02 07:17:12', '2024-01-02 07:17:12', NULL),
(17, 'Mastère professionnel', 'Mastère professionnel', 6, '2024-01-02 07:17:36', '2024-01-02 07:17:36', NULL),
(18, 'Mastère professionnel coco', 'Mastère professionnel coco', 6, '2024-01-02 07:17:47', '2024-01-02 07:17:47', NULL),
(19, 'Licence', 'Licence', 7, '2025-05-13 16:35:04', '2025-05-13 16:35:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` int(10) UNSIGNED NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `designation_en` varchar(255) DEFAULT NULL,
  `abbreviation_en` varchar(255) DEFAULT NULL,
  `designation_ar` varchar(255) DEFAULT NULL,
  `abbreviation_ar` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `designation`, `abbreviation`, `created_at`, `updated_at`, `deleted_at`, `designation_en`, `abbreviation_en`, `designation_ar`, `abbreviation_ar`, `slug`) VALUES
(1, 'Lundi', 'Lun.', '2020-12-28 11:23:52', '2020-12-28 11:23:52', NULL, 'Monday', 'Mon.', NULL, NULL, 'lundi'),
(2, 'Mardi', 'Mar.', '2020-12-28 11:24:20', '2020-12-28 11:24:20', NULL, 'Tuesday', 'Tue.', NULL, NULL, 'mardi'),
(3, 'Mercredi', 'Mer.', '2020-12-28 11:24:45', '2020-12-28 11:24:45', NULL, 'Wednesday', 'Wed.', NULL, NULL, 'mercredi'),
(4, 'Jeudi', 'Jeu.', '2020-12-28 11:25:11', '2020-12-28 11:25:11', NULL, 'Thursday', 'Thu.', NULL, NULL, 'thursday'),
(5, 'Vendredi', 'Ven.', '2020-12-28 11:25:27', '2020-12-28 11:25:27', NULL, 'Friday', 'Fri.', NULL, NULL, 'vendredi'),
(6, 'Samedi', 'Sam.', '2020-12-28 11:26:05', '2020-12-28 11:26:05', NULL, 'Saturday', 'Sat.', NULL, NULL, 'samedi'),
(7, 'Dimanche', 'Dim.', '2020-12-28 11:26:32', '2020-12-28 11:26:32', NULL, 'Sunday', 'Sun.', NULL, NULL, 'dimanche');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `establishment_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `designation`, `abbreviation`, `establishment_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mathématique Appliquées', 'Math.App', 2, '2020-12-28 12:33:41', '2020-12-28 12:33:41', NULL),
(2, 'Sciences Physiques', 'Sc.Physiques', 2, '2020-12-28 12:34:10', '2020-12-28 12:34:10', NULL),
(3, 'Eléctronique et Informatique', 'Elec&Info', 2, '2020-12-28 12:34:36', '2020-12-28 12:34:36', NULL),
(4, 'Département Informatique', 'Dep Inf', 1, '2021-04-14 08:44:52', '2021-04-14 08:44:52', NULL),
(5, 'Département Mathématique', 'Math', 3, '2021-11-20 10:10:05', '2021-11-20 10:10:05', NULL),
(6, 'Département Physique', 'Physique', 3, '2021-11-20 10:10:29', '2021-11-20 10:10:29', NULL),
(7, 'Département Informatique', 'Informatique', 3, '2021-11-20 10:10:47', '2021-11-20 10:10:47', NULL),
(8, 'Département Recherche', 'Recherche', 3, '2021-11-20 10:11:03', '2021-11-20 10:11:03', NULL),
(10, 'Département Informatique', 'Dep Inf', 4, '2022-03-08 13:19:19', '2022-03-08 13:19:19', NULL),
(11, 'Département Electronique', 'Dep Elec', 4, '2022-03-08 13:19:41', '2022-03-08 13:19:41', NULL),
(12, 'Département Mathématique', 'Dép Ma', 4, '2022-03-08 14:00:31', '2022-03-08 14:00:31', NULL),
(13, 'Département Mathématique', 'Dep Math', 5, '2022-03-14 10:07:44', '2022-03-14 10:07:44', NULL),
(14, 'Département Informatique', 'Dep Info', 5, '2022-03-14 10:08:05', '2022-03-14 10:08:12', NULL),
(15, 'Département Technologie', 'Dep Tech', 5, '2022-03-14 10:08:29', '2022-03-14 10:08:29', NULL),
(16, 'Département Chimie', 'Chimie', 3, '2022-11-02 08:15:19', '2023-12-06 07:25:12', NULL),
(17, 'BMCB', 'BMCB', 6, '2024-01-02 07:16:01', '2024-01-02 07:16:01', NULL),
(18, 'SBB', 'SBB', 6, '2024-01-02 07:16:15', '2024-01-02 07:16:15', NULL),
(19, 'SFIL', 'SFIL', 6, '2024-01-02 07:16:26', '2024-01-02 07:16:26', NULL),
(20, 'ISBM', 'ISBM', 6, '2024-01-02 07:24:06', '2024-01-02 07:24:06', NULL),
(21, 'Département Education et enseignement', 'EE', 7, '2025-05-13 16:34:40', '2025-06-15 19:36:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `id` int(10) UNSIGNED NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `establishment_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`id`, `designation`, `abbreviation`, `reference`, `description`, `establishment_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'projecteur', 'projecteur', 'pr01', 'hdmi , vga', 3, '2022-06-08 10:32:13', '2022-06-08 10:32:13', NULL),
(2, 'testgrg', 'test', 'test', 'test', 3, '2022-06-08 10:34:52', '2022-06-08 10:36:06', NULL),
(3, 'Video projecteur', 'vid.project', '0101', 'test', 5, '2022-07-04 16:08:48', '2022-07-04 16:08:48', NULL),
(4, 'rallenge', 'rallenge', '01', '4 ports', 5, '2022-07-04 16:09:53', '2022-07-04 16:09:53', NULL),
(5, 'Cable hdmi', 'Cable hdmi', 'ch01', '1.5 m', 3, '2022-10-26 07:56:29', '2022-10-26 07:56:29', NULL),
(6, 'Vidéo projecteur', 'Vid_p01', 'Rv2154s8', 'HDMI', 7, '2025-05-13 16:29:54', '2025-05-13 16:29:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `equipment_classrooms`
--

CREATE TABLE `equipment_classrooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `equipment_id` int(11) DEFAULT NULL,
  `classroom_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `equipment_classrooms`
--

INSERT INTO `equipment_classrooms` (`id`, `equipment_id`, `classroom_id`, `created_at`, `updated_at`) VALUES
(5, 1, 313, '2022-06-16 09:42:10', '2022-06-16 09:42:10'),
(6, 1, 314, '2022-06-16 10:00:42', '2022-06-16 10:00:42'),
(7, 2, 314, '2022-06-16 10:00:42', '2022-06-16 10:00:42');

-- --------------------------------------------------------

--
-- Table structure for table `group_tds`
--

CREATE TABLE `group_tds` (
  `id` int(10) UNSIGNED NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `establishment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_tds`
--

INSERT INTO `group_tds` (`id`, `designation`, `abbreviation`, `section_id`, `created_at`, `updated_at`, `deleted_at`, `establishment_id`) VALUES
(1, 'L1 G1', 'L1 G1', 1, '2025-05-14 09:13:29', '2025-05-14 09:13:29', NULL, 7),
(2, 'L1 G2', 'L1 G2', 2, '2025-05-14 09:13:29', '2025-05-14 09:13:29', NULL, 7),
(3, 'L1 G3', 'L1 G3', 3, '2025-05-14 09:13:29', '2025-05-14 09:13:29', NULL, 7),
(4, 'L1 G4', 'L1G4', 4, '2025-05-14 09:13:29', '2025-05-14 09:13:29', NULL, 7),
(5, 'L1 G5', 'L1G5', 5, '2025-05-14 09:13:29', '2025-05-14 09:13:29', NULL, 7),
(6, 'L1 G6', 'L1 G6', 6, '2025-05-14 09:13:29', '2025-05-14 09:13:29', NULL, 7),
(7, 'L1 G7', 'L1 G7', 7, '2025-05-14 09:13:29', '2025-05-14 09:13:29', NULL, 7),
(8, 'L1 G8', 'L1 G8', 8, '2025-05-14 09:13:29', '2025-05-14 09:13:29', NULL, 7),
(9, 'L1 G9', 'L1 G9', 9, '2025-05-14 09:13:29', '2025-05-14 09:13:29', NULL, 7),
(10, 'L1 G10', 'L1 G10', 10, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(12, 'L2 G2', 'L2 G2', 12, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(13, 'L2 G3', 'L2 G3', 13, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(14, 'L2 G4', 'L2 G4', 14, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(15, 'L2 G5', 'L2 G5', 15, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(16, 'L2 G6', 'L2 G6', 16, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(17, 'L2 G7', 'L2 G7', 17, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(18, 'L3 G1', 'L3 G1', 18, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(19, 'L3 G2', 'L3 G2', 19, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(20, 'L3 G3', 'L3 G3', 20, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(21, 'L3 G4', 'L3 G4', 21, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(22, 'L3 G5', 'L3 G5', 22, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(23, 'L3 G6', 'L3 G6', 23, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(24, 'L3 G7', 'L3 G7', 24, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(26, 'L2 G8', 'L2 G8', 1, '2025-07-26 08:12:10', '2025-07-26 08:12:10', NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `group_tps`
--

CREATE TABLE `group_tps` (
  `id` int(10) UNSIGNED NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `group_td_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `establishment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_tps`
--

INSERT INTO `group_tps` (`id`, `designation`, `abbreviation`, `section_id`, `group_td_id`, `created_at`, `updated_at`, `deleted_at`, `establishment_id`) VALUES
(1, 'L1 2A', 'L1 2A', 2, 2, '2025-05-14 10:24:03', '2025-06-18 15:00:53', NULL, 7),
(2, 'L1 1B', 'L1 1B', 1, 1, '2025-05-14 09:24:03', '2025-07-08 18:46:29', NULL, 7),
(4, 'L1 2B', 'L1 2B', 2, 2, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(5, 'L1 3A', 'L1 3A', 3, 3, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(6, 'L1 3B', 'L1 3B', 3, 3, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(7, 'L1 4A', 'L1 4A', 4, 4, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(8, 'L1 4B', 'L1 4B', 4, 4, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(9, 'L1 5A', 'L1 5A', 5, 5, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(10, 'L1 5B', 'L1 5B', 5, 5, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(11, 'L1 6A', 'L1 6A', 6, 6, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(12, 'L1 6B', 'L1 6B', 6, 6, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(13, 'L1 7A', 'L1 7A', 7, 7, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(14, 'L1 7B', 'L1 7B', 7, 7, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(15, 'L1 8A', 'L1 8A', 8, 8, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(16, 'L1 8B', 'L1 8B', 8, 8, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(17, 'L1 9A', 'L1 9A', 9, 9, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(18, 'L1 9B', 'L1 9B', 9, 9, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(19, 'L1 10A', 'L1 10A', 10, 10, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(20, 'L1 10B', 'L1 10B', 10, 10, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(21, 'L2 1A', 'L2 1A', 11, 11, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(22, 'L2 1B', 'L2 1B', 11, 11, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(23, 'L2 2A', 'L2 2A', 12, 12, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(24, 'L2 2B', 'L2 2B', 12, 12, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(25, 'L2 3A', 'L2 3A', 13, 13, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(26, 'L2 3B', 'L2 3B', 13, 13, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(27, 'L2 4A', 'L2 4A', 14, 14, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(28, 'L2 4B', 'L2 4B', 14, 14, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(29, 'L2 5A', 'L2 5A', 15, 15, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(30, 'L2 5B', 'L2 5B', 15, 15, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(31, 'L2 6A', 'L2 6A', 16, 16, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(32, 'L2 6B', 'L2 6B', 16, 16, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(33, 'L2 7A', 'L2 7A', 17, 17, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(34, 'L2 7B', 'L2 7B', 17, 17, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(35, 'L3 1A', 'L3 1A', 18, 18, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(36, 'L3 1B', 'L3 1B', 18, 18, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(37, 'L3 2A', 'L3 2A', 19, 19, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(38, 'L3 2B', 'L3 2B', 19, 19, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(39, 'L3 3A', 'L3 3A', 20, 20, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(40, 'L3 3B', 'L3 3B', 20, 20, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(41, 'L3 4A', 'L3 4A', 21, 21, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(42, 'L3 4B', 'L3 4B', 21, 21, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(43, 'L3 5A', 'L3 5A', 22, 22, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(44, 'L3 5B', 'L3 5B', 22, 22, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(45, 'L3 6A', 'L3 6A', 23, 23, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(46, 'L3 6B', 'L3 6B', 23, 23, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(47, 'L3 7A', 'L3 7A', 24, 24, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(48, 'L3 7B', 'L3 7B', 24, 24, '2025-05-14 09:24:03', '2025-05-14 09:24:03', NULL, 7),
(49, 'L1 1A', 'L1 1A', 1, 1, '2025-07-08 18:47:39', '2025-07-08 18:48:35', NULL, 7),
(50, 'ING01 Tp1', 'ING01 Tp1', 25, 25, '2025-07-24 15:42:30', '2025-07-24 15:42:30', NULL, 7),
(51, 'L2 8A', 'L2 8A', 26, NULL, '2025-07-29 09:33:36', '2025-07-29 09:33:36', NULL, 7),
(52, 'L2 8B', 'L2 8B', 26, NULL, '2025-07-29 09:51:02', '2025-07-29 09:51:02', NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(10) UNSIGNED NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `cycle_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `establishment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `designation`, `abbreviation`, `cycle_id`, `created_at`, `updated_at`, `deleted_at`, `establishment_id`) VALUES
(1, '1', '1', 19, '2025-05-13 16:35:14', '2025-05-13 16:35:14', NULL, 7),
(2, '2', '2', 19, '2025-05-13 16:35:19', '2025-05-13 16:35:19', NULL, 7),
(3, '3', '3', 19, '2025-05-13 16:35:25', '2025-05-13 16:35:25', NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `not_available_establishments`
--

CREATE TABLE `not_available_establishments` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `period_id` int(11) DEFAULT NULL,
  `day_id` int(11) DEFAULT NULL,
  `establishment_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `not_available_establishments`
--

INSERT INTO `not_available_establishments` (`id`, `type`, `period_id`, `day_id`, `establishment_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'closed', 4, 6, 2, '2020-12-28 11:31:48', '2020-12-28 11:31:48', NULL),
(2, 'closed', 5, 6, 2, '2020-12-28 11:31:48', '2020-12-28 11:31:48', NULL),
(6, 'closed', 11, 6, 1, '2021-04-14 09:13:31', '2021-04-14 09:13:31', NULL),
(7, 'closed', 12, 6, 1, '2021-04-14 09:13:31', '2021-04-14 09:13:31', NULL),
(8, 'avoided', 6, 6, 1, '2021-04-14 09:13:33', '2021-04-14 09:13:33', NULL),
(9, 'avoided', 11, 3, 1, '2021-04-14 09:13:33', '2021-04-14 09:13:33', NULL),
(10, 'avoided', 12, 3, 1, '2021-04-14 09:13:33', '2021-04-14 09:13:33', NULL),
(11, 'avoided', 7, 6, 1, '2021-04-14 09:13:33', '2021-04-14 09:13:33', NULL),
(12, 'avoided', 8, 6, 1, '2021-04-14 09:13:33', '2021-04-14 09:13:33', NULL),
(13, 'avoided', 10, 6, 1, '2021-04-14 09:13:33', '2021-04-14 09:13:33', NULL),
(14, 'avoided', 4, 3, 2, '2021-10-28 07:11:27', '2021-10-28 07:11:27', NULL),
(15, 'avoided', 5, 3, 2, '2021-10-28 07:11:27', '2021-10-28 07:11:27', NULL),
(18, 'avoided', 17, 3, 3, '2021-11-20 10:09:13', '2021-11-20 10:09:13', NULL),
(19, 'avoided', 18, 3, 3, '2021-11-20 10:09:13', '2021-11-20 10:09:13', NULL),
(27, 'avoided', 21, 1, 4, '2022-03-08 13:37:42', '2022-03-08 13:37:42', NULL),
(28, 'avoided', 21, 2, 4, '2022-03-08 13:37:42', '2022-03-08 13:37:42', NULL),
(29, 'avoided', 21, 3, 4, '2022-03-08 13:37:42', '2022-03-08 13:37:42', NULL),
(30, 'avoided', 21, 4, 4, '2022-03-08 13:37:42', '2022-03-08 13:37:42', NULL),
(31, 'avoided', 21, 5, 4, '2022-03-08 13:37:42', '2022-03-08 13:37:42', NULL),
(32, 'closed', 22, 6, 4, '2022-03-08 13:37:43', '2022-03-08 13:37:43', NULL),
(33, 'closed', 23, 6, 4, '2022-03-08 13:37:43', '2022-03-08 13:37:43', NULL),
(111, 'avoided', 28, 3, 5, '2022-03-17 13:20:25', '2022-03-17 13:20:25', NULL),
(112, 'avoided', 29, 3, 5, '2022-03-17 13:20:25', '2022-03-17 13:20:25', NULL),
(113, 'avoided', 26, 1, 5, '2022-03-17 13:20:25', '2022-03-17 13:20:25', NULL),
(114, 'avoided', 26, 2, 5, '2022-03-17 13:20:25', '2022-03-17 13:20:25', NULL),
(115, 'avoided', 26, 4, 5, '2022-03-17 13:20:25', '2022-03-17 13:20:25', NULL),
(116, 'avoided', 26, 5, 5, '2022-03-17 13:20:25', '2022-03-17 13:20:25', NULL),
(118, 'closed', 28, 6, 5, '2023-01-05 11:10:15', '2023-01-05 11:10:15', NULL),
(119, 'closed', 29, 6, 5, '2023-01-05 11:10:15', '2023-01-05 11:10:15', NULL),
(120, 'closed', 27, 6, 5, '2023-01-05 11:10:15', '2023-01-05 11:10:15', NULL),
(121, 'closed', 28, 3, 5, '2023-01-05 11:10:15', '2023-01-05 11:10:15', NULL),
(122, 'closed', 29, 3, 5, '2023-01-05 11:10:15', '2023-01-05 11:10:15', NULL),
(123, 'closed', 26, 1, 5, '2023-01-05 11:10:15', '2023-01-05 11:10:15', NULL),
(124, 'closed', 26, 2, 5, '2023-01-05 11:10:15', '2023-01-05 11:10:15', NULL),
(125, 'closed', 26, 3, 5, '2023-01-05 11:10:15', '2023-01-05 11:10:15', NULL),
(126, 'closed', 26, 4, 5, '2023-01-05 11:10:15', '2023-01-05 11:10:15', NULL),
(127, 'closed', 26, 5, 5, '2023-01-05 11:10:15', '2023-01-05 11:10:15', NULL),
(128, 'closed', 27, 5, 5, '2023-01-05 11:10:15', '2023-01-05 11:10:15', NULL),
(129, 'closed', 18, 6, 3, '2023-12-06 08:47:52', '2023-12-06 08:47:52', NULL),
(130, 'closed', 17, 6, 3, '2023-12-06 08:47:52', '2023-12-06 08:47:52', NULL),
(147, 'avoided', 39, 3, 6, '2024-01-02 08:24:26', '2024-01-02 08:24:26', NULL),
(148, 'avoided', 39, 4, 6, '2024-01-02 08:24:26', '2024-01-02 08:24:26', NULL),
(149, 'avoided', 39, 5, 6, '2024-01-02 08:24:26', '2024-01-02 08:24:26', NULL),
(150, 'avoided', 39, 6, 6, '2024-01-02 08:24:26', '2024-01-02 08:24:26', NULL),
(151, 'avoided', 39, 2, 6, '2024-01-02 08:24:26', '2024-01-02 08:24:26', NULL),
(152, 'avoided', 39, 1, 6, '2024-01-02 08:24:26', '2024-01-02 08:24:26', NULL),
(153, 'closed', 38, 6, 6, '2024-01-25 14:31:54', '2024-01-25 14:31:54', NULL),
(154, 'closed', 39, 6, 6, '2024-01-25 14:31:54', '2024-01-25 14:31:54', NULL),
(196, 'closed', 44, 6, 7, '2025-07-14 14:11:23', '2025-07-14 14:11:23', NULL),
(197, 'closed', 45, 6, 7, '2025-07-14 14:11:23', '2025-07-14 14:11:23', NULL),
(198, 'closed', 46, 6, 7, '2025-07-14 14:11:23', '2025-07-14 14:11:23', NULL),
(199, 'closed', 40, 6, 7, '2025-07-14 14:11:23', '2025-07-14 14:11:23', NULL),
(200, 'closed', 41, 6, 7, '2025-07-14 14:11:23', '2025-07-14 14:11:23', NULL),
(201, 'closed', 46, 5, 7, '2025-07-14 14:11:23', '2025-07-14 14:11:23', NULL),
(202, 'avoided', 45, 3, 7, '2025-07-14 14:11:26', '2025-07-14 14:11:26', NULL),
(203, 'avoided', 46, 3, 7, '2025-07-14 14:11:26', '2025-07-14 14:11:26', NULL),
(204, 'avoided', 46, 1, 7, '2025-07-14 14:11:26', '2025-07-14 14:11:26', NULL),
(205, 'avoided', 46, 2, 7, '2025-07-14 14:11:26', '2025-07-14 14:11:26', NULL),
(206, 'avoided', 46, 4, 7, '2025-07-14 14:11:26', '2025-07-14 14:11:26', NULL),
(207, 'avoided', 46, 5, 7, '2025-07-14 14:11:26', '2025-07-14 14:11:26', NULL),
(208, 'avoided', 46, 6, 7, '2025-07-14 14:11:26', '2025-07-14 14:11:26', NULL),
(209, 'avoided', 42, 6, 7, '2025-07-14 14:11:26', '2025-07-14 14:11:26', NULL),
(210, 'avoided', 44, 6, 7, '2025-07-14 14:11:26', '2025-07-14 14:11:26', NULL),
(211, 'avoided', 45, 6, 7, '2025-07-14 14:11:26', '2025-07-14 14:11:26', NULL),
(212, 'avoided', 44, 3, 7, '2025-07-14 14:11:26', '2025-07-14 14:11:26', NULL),
(213, 'avoided', 40, 6, 7, '2025-07-14 14:11:26', '2025-07-14 14:11:26', NULL),
(214, 'avoided', 41, 6, 7, '2025-07-14 14:11:26', '2025-07-14 14:11:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `not_available_sectors`
--

CREATE TABLE `not_available_sectors` (
  `id` int(10) UNSIGNED NOT NULL,
  `establishment_id` int(11) DEFAULT NULL,
  `sector_id` int(11) DEFAULT NULL,
  `period_id` int(11) DEFAULT NULL,
  `day_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `not_available_teachers`
--

CREATE TABLE `not_available_teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `establishment_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `period_id` int(11) DEFAULT NULL,
  `day_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `not_available_teachers`
--

INSERT INTO `not_available_teachers` (`id`, `establishment_id`, `teacher_id`, `period_id`, `day_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(284, 7, 158, 40, 1, '2025-07-18 19:23:52', '2025-07-18 19:23:52', NULL),
(285, 7, 158, 41, 1, '2025-07-18 19:23:52', '2025-07-18 19:23:52', NULL),
(286, 7, 158, 44, 1, '2025-07-18 19:23:52', '2025-07-18 19:23:52', NULL),
(287, 7, 158, 45, 1, '2025-07-18 19:23:52', '2025-07-18 19:23:52', NULL),
(288, 7, 158, 46, 1, '2025-07-18 19:23:52', '2025-07-18 19:23:52', NULL),
(289, 7, 158, 40, 3, '2025-07-18 19:23:52', '2025-07-18 19:23:52', NULL),
(290, 7, 158, 41, 3, '2025-07-18 19:23:52', '2025-07-18 19:23:52', NULL),
(291, 7, 158, 44, 3, '2025-07-18 19:23:52', '2025-07-18 19:23:52', NULL),
(292, 7, 158, 45, 3, '2025-07-18 19:23:52', '2025-07-18 19:23:52', NULL),
(293, 7, 158, 46, 3, '2025-07-18 19:23:52', '2025-07-18 19:23:52', NULL),
(294, 7, 158, 46, 4, '2025-07-18 19:23:52', '2025-07-18 19:23:52', NULL),
(295, 7, 158, 45, 4, '2025-07-18 19:23:52', '2025-07-18 19:23:52', NULL),
(296, 7, 158, 44, 4, '2025-07-18 19:23:52', '2025-07-18 19:23:52', NULL),
(297, 7, 158, 41, 4, '2025-07-18 19:23:52', '2025-07-18 19:23:52', NULL),
(298, 7, 158, 40, 4, '2025-07-18 19:23:52', '2025-07-18 19:23:52', NULL),
(299, 7, 158, 40, 5, '2025-07-18 19:23:52', '2025-07-18 19:23:52', NULL),
(300, 7, 158, 41, 5, '2025-07-18 19:23:52', '2025-07-18 19:23:52', NULL),
(301, 7, 158, 44, 5, '2025-07-18 19:23:52', '2025-07-18 19:23:52', NULL),
(302, 7, 158, 45, 5, '2025-07-18 19:23:52', '2025-07-18 19:23:52', NULL),
(303, 7, 158, 46, 5, '2025-07-18 19:23:52', '2025-07-18 19:23:52', NULL),
(361, 7, 157, 40, 1, '2025-08-16 07:36:24', '2025-08-16 07:36:24', NULL),
(362, 7, 157, 41, 1, '2025-08-16 07:36:24', '2025-08-16 07:36:24', NULL),
(363, 7, 157, 44, 1, '2025-08-16 07:36:24', '2025-08-16 07:36:24', NULL),
(364, 7, 157, 45, 1, '2025-08-16 07:36:24', '2025-08-16 07:36:24', NULL),
(365, 7, 157, 46, 1, '2025-08-16 07:36:24', '2025-08-16 07:36:24', NULL),
(366, 7, 157, 40, 2, '2025-08-16 07:36:24', '2025-08-16 07:36:24', NULL),
(367, 7, 157, 41, 2, '2025-08-16 07:36:24', '2025-08-16 07:36:24', NULL),
(368, 7, 157, 44, 2, '2025-08-16 07:36:24', '2025-08-16 07:36:24', NULL),
(369, 7, 157, 45, 2, '2025-08-16 07:36:24', '2025-08-16 07:36:24', NULL),
(370, 7, 157, 46, 2, '2025-08-16 07:36:24', '2025-08-16 07:36:24', NULL),
(371, 7, 157, 40, 3, '2025-08-16 07:36:24', '2025-08-16 07:36:24', NULL),
(372, 7, 157, 41, 3, '2025-08-16 07:36:24', '2025-08-16 07:36:24', NULL),
(373, 7, 157, 44, 3, '2025-08-16 07:36:24', '2025-08-16 07:36:24', NULL),
(374, 7, 157, 45, 3, '2025-08-16 07:36:24', '2025-08-16 07:36:24', NULL),
(375, 7, 157, 46, 3, '2025-08-16 07:36:24', '2025-08-16 07:36:24', NULL),
(376, 7, 157, 40, 6, '2025-08-16 07:36:24', '2025-08-16 07:36:24', NULL),
(377, 7, 157, 41, 6, '2025-08-16 07:36:24', '2025-08-16 07:36:24', NULL),
(378, 7, 157, 44, 6, '2025-08-16 07:36:24', '2025-08-16 07:36:24', NULL),
(379, 7, 157, 45, 6, '2025-08-16 07:36:24', '2025-08-16 07:36:24', NULL),
(380, 7, 157, 46, 6, '2025-08-16 07:36:24', '2025-08-16 07:36:24', NULL),
(381, 7, 157, 46, 4, '2025-08-16 07:36:24', '2025-08-16 07:36:24', NULL),
(382, 7, 157, 46, 5, '2025-08-16 07:36:24', '2025-08-16 07:36:24', NULL),
(405, 7, 140, 40, 3, '2025-08-16 08:32:33', '2025-08-16 08:32:33', NULL),
(406, 7, 140, 41, 3, '2025-08-16 08:32:33', '2025-08-16 08:32:33', NULL),
(407, 7, 140, 40, 4, '2025-08-16 08:32:33', '2025-08-16 08:32:33', NULL),
(408, 7, 140, 41, 4, '2025-08-16 08:32:33', '2025-08-16 08:32:33', NULL),
(409, 7, 140, 44, 4, '2025-08-16 08:32:33', '2025-08-16 08:32:33', NULL),
(410, 7, 140, 45, 4, '2025-08-16 08:32:33', '2025-08-16 08:32:33', NULL),
(411, 7, 140, 46, 4, '2025-08-16 08:32:33', '2025-08-16 08:32:33', NULL),
(412, 7, 140, 46, 3, '2025-08-16 08:32:33', '2025-08-16 08:32:33', NULL),
(413, 7, 140, 45, 3, '2025-08-16 08:32:33', '2025-08-16 08:32:33', NULL),
(414, 7, 140, 44, 3, '2025-08-16 08:32:33', '2025-08-16 08:32:33', NULL),
(415, 7, 140, 46, 2, '2025-08-16 08:32:33', '2025-08-16 08:32:33', NULL),
(416, 7, 140, 46, 1, '2025-08-16 08:32:33', '2025-08-16 08:32:33', NULL),
(417, 7, 140, 46, 5, '2025-08-16 08:32:33', '2025-08-16 08:32:33', NULL),
(418, 7, 140, 44, 5, '2025-08-16 08:32:33', '2025-08-16 08:32:33', NULL),
(419, 7, 140, 45, 5, '2025-08-16 08:32:33', '2025-08-16 08:32:33', NULL),
(420, 7, 140, 41, 5, '2025-08-16 08:32:33', '2025-08-16 08:32:33', NULL),
(421, 7, 140, 40, 5, '2025-08-16 08:32:33', '2025-08-16 08:32:33', NULL),
(422, 7, 140, 40, 6, '2025-08-16 08:32:33', '2025-08-16 08:32:33', NULL),
(423, 7, 140, 41, 6, '2025-08-16 08:32:33', '2025-08-16 08:32:33', NULL),
(424, 7, 140, 44, 6, '2025-08-16 08:32:33', '2025-08-16 08:32:33', NULL),
(425, 7, 140, 45, 6, '2025-08-16 08:32:33', '2025-08-16 08:32:33', NULL),
(426, 7, 140, 46, 6, '2025-08-16 08:32:33', '2025-08-16 08:32:33', NULL),
(427, 7, 230, 40, 1, '2025-08-16 08:35:43', '2025-08-16 08:35:43', NULL),
(428, 7, 230, 40, 3, '2025-08-16 08:35:43', '2025-08-16 08:35:43', NULL),
(429, 7, 230, 40, 5, '2025-08-16 08:35:43', '2025-08-16 08:35:43', NULL),
(430, 7, 230, 40, 6, '2025-08-16 08:35:43', '2025-08-16 08:35:43', NULL),
(431, 7, 230, 41, 6, '2025-08-16 08:35:43', '2025-08-16 08:35:43', NULL),
(432, 7, 230, 44, 6, '2025-08-16 08:35:43', '2025-08-16 08:35:43', NULL),
(433, 7, 230, 45, 6, '2025-08-16 08:35:43', '2025-08-16 08:35:43', NULL),
(434, 7, 230, 46, 6, '2025-08-16 08:35:43', '2025-08-16 08:35:43', NULL),
(435, 7, 230, 46, 5, '2025-08-16 08:35:43', '2025-08-16 08:35:43', NULL),
(436, 7, 230, 45, 5, '2025-08-16 08:35:43', '2025-08-16 08:35:43', NULL),
(437, 7, 230, 44, 5, '2025-08-16 08:35:43', '2025-08-16 08:35:43', NULL),
(438, 7, 230, 41, 5, '2025-08-16 08:35:43', '2025-08-16 08:35:43', NULL),
(439, 7, 230, 41, 3, '2025-08-16 08:35:43', '2025-08-16 08:35:43', NULL),
(440, 7, 230, 44, 3, '2025-08-16 08:35:43', '2025-08-16 08:35:43', NULL),
(441, 7, 230, 45, 3, '2025-08-16 08:35:43', '2025-08-16 08:35:43', NULL),
(442, 7, 230, 46, 3, '2025-08-16 08:35:43', '2025-08-16 08:35:43', NULL),
(443, 7, 230, 46, 1, '2025-08-16 08:35:43', '2025-08-16 08:35:43', NULL),
(444, 7, 230, 45, 1, '2025-08-16 08:35:43', '2025-08-16 08:35:43', NULL),
(445, 7, 230, 44, 1, '2025-08-16 08:35:43', '2025-08-16 08:35:43', NULL),
(446, 7, 230, 41, 1, '2025-08-16 08:35:43', '2025-08-16 08:35:43', NULL),
(447, 7, 180, 40, 3, '2025-08-16 08:37:39', '2025-08-16 08:37:39', NULL),
(448, 7, 180, 44, 3, '2025-08-16 08:37:39', '2025-08-16 08:37:39', NULL),
(449, 7, 180, 41, 3, '2025-08-16 08:37:39', '2025-08-16 08:37:39', NULL),
(450, 7, 180, 45, 3, '2025-08-16 08:37:39', '2025-08-16 08:37:39', NULL),
(451, 7, 180, 46, 3, '2025-08-16 08:37:39', '2025-08-16 08:37:39', NULL),
(452, 7, 180, 40, 4, '2025-08-16 08:37:39', '2025-08-16 08:37:39', NULL),
(453, 7, 180, 41, 4, '2025-08-16 08:37:39', '2025-08-16 08:37:39', NULL),
(454, 7, 180, 44, 4, '2025-08-16 08:37:39', '2025-08-16 08:37:39', NULL),
(455, 7, 180, 45, 4, '2025-08-16 08:37:39', '2025-08-16 08:37:39', NULL),
(456, 7, 180, 46, 4, '2025-08-16 08:37:39', '2025-08-16 08:37:39', NULL),
(457, 7, 180, 46, 5, '2025-08-16 08:37:39', '2025-08-16 08:37:39', NULL),
(458, 7, 180, 45, 5, '2025-08-16 08:37:39', '2025-08-16 08:37:39', NULL),
(459, 7, 180, 44, 5, '2025-08-16 08:37:39', '2025-08-16 08:37:39', NULL),
(460, 7, 180, 41, 5, '2025-08-16 08:37:39', '2025-08-16 08:37:39', NULL),
(461, 7, 180, 40, 5, '2025-08-16 08:37:39', '2025-08-16 08:37:39', NULL),
(462, 7, 180, 40, 6, '2025-08-16 08:37:39', '2025-08-16 08:37:39', NULL),
(463, 7, 180, 44, 6, '2025-08-16 08:37:39', '2025-08-16 08:37:39', NULL),
(464, 7, 180, 41, 6, '2025-08-16 08:37:39', '2025-08-16 08:37:39', NULL),
(465, 7, 180, 45, 6, '2025-08-16 08:37:39', '2025-08-16 08:37:39', NULL),
(466, 7, 180, 46, 6, '2025-08-16 08:37:39', '2025-08-16 08:37:39', NULL),
(509, 7, 184, 40, 1, '2025-08-16 08:53:40', '2025-08-16 08:53:40', NULL),
(510, 7, 184, 41, 1, '2025-08-16 08:53:40', '2025-08-16 08:53:40', NULL),
(511, 7, 184, 44, 1, '2025-08-16 08:53:40', '2025-08-16 08:53:40', NULL),
(512, 7, 184, 45, 1, '2025-08-16 08:53:40', '2025-08-16 08:53:40', NULL),
(513, 7, 184, 46, 1, '2025-08-16 08:53:40', '2025-08-16 08:53:40', NULL),
(514, 7, 184, 40, 4, '2025-08-16 08:53:40', '2025-08-16 08:53:40', NULL),
(515, 7, 184, 41, 4, '2025-08-16 08:53:40', '2025-08-16 08:53:40', NULL),
(516, 7, 184, 44, 4, '2025-08-16 08:53:40', '2025-08-16 08:53:40', NULL),
(517, 7, 184, 45, 4, '2025-08-16 08:53:40', '2025-08-16 08:53:40', NULL),
(518, 7, 184, 46, 3, '2025-08-16 08:53:40', '2025-08-16 08:53:40', NULL),
(519, 7, 184, 46, 2, '2025-08-16 08:53:40', '2025-08-16 08:53:40', NULL),
(520, 7, 184, 46, 5, '2025-08-16 08:53:40', '2025-08-16 08:53:40', NULL),
(521, 7, 184, 45, 5, '2025-08-16 08:53:40', '2025-08-16 08:53:40', NULL),
(522, 7, 184, 44, 5, '2025-08-16 08:53:40', '2025-08-16 08:53:40', NULL),
(523, 7, 184, 40, 5, '2025-08-16 08:53:40', '2025-08-16 08:53:40', NULL),
(524, 7, 184, 40, 6, '2025-08-16 08:53:40', '2025-08-16 08:53:40', NULL),
(525, 7, 184, 41, 6, '2025-08-16 08:53:40', '2025-08-16 08:53:40', NULL),
(526, 7, 184, 41, 5, '2025-08-16 08:53:40', '2025-08-16 08:53:40', NULL),
(527, 7, 184, 44, 6, '2025-08-16 08:53:40', '2025-08-16 08:53:40', NULL),
(528, 7, 184, 46, 6, '2025-08-16 08:53:40', '2025-08-16 08:53:40', NULL),
(529, 7, 184, 45, 6, '2025-08-16 08:53:40', '2025-08-16 08:53:40', NULL),
(530, 7, 184, 46, 4, '2025-08-16 08:53:40', '2025-08-16 08:53:40', NULL),
(576, 7, 193, 40, 1, '2025-08-16 08:58:35', '2025-08-16 08:58:35', NULL),
(577, 7, 193, 40, 3, '2025-08-16 08:58:35', '2025-08-16 08:58:35', NULL),
(578, 7, 193, 40, 5, '2025-08-16 08:58:35', '2025-08-16 08:58:35', NULL),
(579, 7, 193, 40, 2, '2025-08-16 08:58:35', '2025-08-16 08:58:35', NULL),
(580, 7, 193, 40, 4, '2025-08-16 08:58:35', '2025-08-16 08:58:35', NULL),
(581, 7, 193, 40, 6, '2025-08-16 08:58:35', '2025-08-16 08:58:35', NULL),
(582, 7, 193, 41, 6, '2025-08-16 08:58:35', '2025-08-16 08:58:35', NULL),
(583, 7, 193, 44, 6, '2025-08-16 08:58:35', '2025-08-16 08:58:35', NULL),
(584, 7, 193, 45, 6, '2025-08-16 08:58:35', '2025-08-16 08:58:35', NULL),
(585, 7, 193, 46, 6, '2025-08-16 08:58:35', '2025-08-16 08:58:35', NULL),
(586, 7, 193, 46, 5, '2025-08-16 08:58:35', '2025-08-16 08:58:35', NULL),
(587, 7, 193, 45, 5, '2025-08-16 08:58:35', '2025-08-16 08:58:35', NULL),
(588, 7, 193, 41, 5, '2025-08-16 08:58:35', '2025-08-16 08:58:35', NULL),
(589, 7, 193, 44, 5, '2025-08-16 08:58:35', '2025-08-16 08:58:35', NULL),
(590, 7, 193, 41, 3, '2025-08-16 08:58:35', '2025-08-16 08:58:35', NULL),
(591, 7, 193, 45, 3, '2025-08-16 08:58:35', '2025-08-16 08:58:35', NULL),
(592, 7, 193, 46, 3, '2025-08-16 08:58:35', '2025-08-16 08:58:35', NULL),
(593, 7, 193, 44, 3, '2025-08-16 08:58:35', '2025-08-16 08:58:35', NULL),
(594, 7, 193, 41, 1, '2025-08-16 08:58:35', '2025-08-16 08:58:35', NULL),
(595, 7, 193, 44, 1, '2025-08-16 08:58:35', '2025-08-16 08:58:35', NULL),
(596, 7, 193, 45, 1, '2025-08-16 08:58:35', '2025-08-16 08:58:35', NULL),
(597, 7, 193, 46, 1, '2025-08-16 08:58:35', '2025-08-16 08:58:35', NULL),
(618, 7, 189, 41, 3, '2025-08-16 09:05:02', '2025-08-16 09:05:02', NULL),
(619, 7, 189, 40, 3, '2025-08-16 09:05:02', '2025-08-16 09:05:02', NULL),
(620, 7, 189, 46, 3, '2025-08-16 09:05:02', '2025-08-16 09:05:02', NULL),
(621, 7, 189, 45, 3, '2025-08-16 09:05:02', '2025-08-16 09:05:02', NULL),
(622, 7, 189, 44, 3, '2025-08-16 09:05:02', '2025-08-16 09:05:02', NULL),
(623, 7, 189, 46, 4, '2025-08-16 09:05:02', '2025-08-16 09:05:02', NULL),
(624, 7, 189, 45, 4, '2025-08-16 09:05:02', '2025-08-16 09:05:02', NULL),
(625, 7, 189, 44, 4, '2025-08-16 09:05:02', '2025-08-16 09:05:02', NULL),
(626, 7, 189, 41, 4, '2025-08-16 09:05:02', '2025-08-16 09:05:02', NULL),
(627, 7, 189, 40, 4, '2025-08-16 09:05:02', '2025-08-16 09:05:02', NULL),
(628, 7, 189, 40, 5, '2025-08-16 09:05:02', '2025-08-16 09:05:02', NULL),
(629, 7, 189, 41, 5, '2025-08-16 09:05:02', '2025-08-16 09:05:02', NULL),
(630, 7, 189, 44, 5, '2025-08-16 09:05:02', '2025-08-16 09:05:02', NULL),
(631, 7, 189, 45, 5, '2025-08-16 09:05:02', '2025-08-16 09:05:02', NULL),
(632, 7, 189, 46, 5, '2025-08-16 09:05:02', '2025-08-16 09:05:02', NULL),
(633, 7, 189, 46, 6, '2025-08-16 09:05:02', '2025-08-16 09:05:02', NULL),
(634, 7, 189, 45, 6, '2025-08-16 09:05:02', '2025-08-16 09:05:02', NULL),
(635, 7, 189, 44, 6, '2025-08-16 09:05:02', '2025-08-16 09:05:02', NULL),
(636, 7, 189, 41, 6, '2025-08-16 09:05:02', '2025-08-16 09:05:02', NULL),
(637, 7, 189, 40, 6, '2025-08-16 09:05:02', '2025-08-16 09:05:02', NULL),
(658, 7, 227, 40, 2, '2025-08-17 08:38:52', '2025-08-17 08:38:52', NULL),
(659, 7, 227, 41, 2, '2025-08-17 08:38:52', '2025-08-17 08:38:52', NULL),
(660, 7, 227, 44, 2, '2025-08-17 08:38:52', '2025-08-17 08:38:52', NULL),
(661, 7, 227, 45, 2, '2025-08-17 08:38:52', '2025-08-17 08:38:52', NULL),
(662, 7, 227, 46, 2, '2025-08-17 08:38:52', '2025-08-17 08:38:52', NULL),
(663, 7, 227, 40, 3, '2025-08-17 08:38:52', '2025-08-17 08:38:52', NULL),
(664, 7, 227, 41, 3, '2025-08-17 08:38:52', '2025-08-17 08:38:52', NULL),
(665, 7, 227, 44, 3, '2025-08-17 08:38:52', '2025-08-17 08:38:52', NULL),
(666, 7, 227, 45, 3, '2025-08-17 08:38:52', '2025-08-17 08:38:52', NULL),
(667, 7, 227, 46, 3, '2025-08-17 08:38:52', '2025-08-17 08:38:52', NULL),
(668, 7, 227, 40, 4, '2025-08-17 08:38:52', '2025-08-17 08:38:52', NULL),
(669, 7, 227, 41, 4, '2025-08-17 08:38:52', '2025-08-17 08:38:52', NULL),
(670, 7, 227, 44, 4, '2025-08-17 08:38:52', '2025-08-17 08:38:52', NULL),
(671, 7, 227, 45, 4, '2025-08-17 08:38:52', '2025-08-17 08:38:52', NULL),
(672, 7, 227, 46, 4, '2025-08-17 08:38:52', '2025-08-17 08:38:52', NULL),
(673, 7, 227, 40, 6, '2025-08-17 08:38:52', '2025-08-17 08:38:52', NULL),
(674, 7, 227, 41, 6, '2025-08-17 08:38:52', '2025-08-17 08:38:52', NULL),
(675, 7, 227, 44, 6, '2025-08-17 08:38:52', '2025-08-17 08:38:52', NULL),
(676, 7, 227, 45, 6, '2025-08-17 08:38:52', '2025-08-17 08:38:52', NULL),
(677, 7, 227, 46, 6, '2025-08-17 08:38:52', '2025-08-17 08:38:52', NULL),
(698, 7, 192, 40, 6, '2025-08-17 08:43:22', '2025-08-17 08:43:22', NULL),
(699, 7, 192, 41, 6, '2025-08-17 08:43:22', '2025-08-17 08:43:22', NULL),
(700, 7, 192, 44, 6, '2025-08-17 08:43:22', '2025-08-17 08:43:22', NULL),
(701, 7, 192, 45, 6, '2025-08-17 08:43:22', '2025-08-17 08:43:22', NULL),
(702, 7, 192, 46, 6, '2025-08-17 08:43:22', '2025-08-17 08:43:22', NULL),
(703, 7, 192, 40, 4, '2025-08-17 08:43:22', '2025-08-17 08:43:22', NULL),
(704, 7, 192, 44, 4, '2025-08-17 08:43:22', '2025-08-17 08:43:22', NULL),
(705, 7, 192, 41, 4, '2025-08-17 08:43:22', '2025-08-17 08:43:22', NULL),
(706, 7, 192, 45, 4, '2025-08-17 08:43:22', '2025-08-17 08:43:22', NULL),
(707, 7, 192, 46, 4, '2025-08-17 08:43:22', '2025-08-17 08:43:22', NULL),
(708, 7, 192, 40, 2, '2025-08-17 08:43:22', '2025-08-17 08:43:22', NULL),
(709, 7, 192, 41, 2, '2025-08-17 08:43:22', '2025-08-17 08:43:22', NULL),
(710, 7, 192, 40, 3, '2025-08-17 08:43:22', '2025-08-17 08:43:22', NULL),
(711, 7, 192, 44, 3, '2025-08-17 08:43:22', '2025-08-17 08:43:22', NULL),
(712, 7, 192, 41, 3, '2025-08-17 08:43:22', '2025-08-17 08:43:22', NULL),
(713, 7, 192, 45, 3, '2025-08-17 08:43:22', '2025-08-17 08:43:22', NULL),
(714, 7, 192, 46, 3, '2025-08-17 08:43:22', '2025-08-17 08:43:22', NULL),
(715, 7, 192, 46, 2, '2025-08-17 08:43:22', '2025-08-17 08:43:22', NULL),
(716, 7, 192, 45, 2, '2025-08-17 08:43:22', '2025-08-17 08:43:22', NULL),
(717, 7, 192, 44, 2, '2025-08-17 08:43:22', '2025-08-17 08:43:22', NULL),
(738, 7, 156, 40, 1, '2025-08-17 08:46:11', '2025-08-17 08:46:11', NULL),
(739, 7, 156, 41, 1, '2025-08-17 08:46:11', '2025-08-17 08:46:11', NULL),
(740, 7, 156, 44, 1, '2025-08-17 08:46:11', '2025-08-17 08:46:11', NULL),
(741, 7, 156, 45, 1, '2025-08-17 08:46:11', '2025-08-17 08:46:11', NULL),
(742, 7, 156, 46, 1, '2025-08-17 08:46:11', '2025-08-17 08:46:11', NULL),
(743, 7, 156, 46, 2, '2025-08-17 08:46:11', '2025-08-17 08:46:11', NULL),
(744, 7, 156, 45, 2, '2025-08-17 08:46:11', '2025-08-17 08:46:11', NULL),
(745, 7, 156, 44, 2, '2025-08-17 08:46:11', '2025-08-17 08:46:11', NULL),
(746, 7, 156, 41, 2, '2025-08-17 08:46:11', '2025-08-17 08:46:11', NULL),
(747, 7, 156, 40, 2, '2025-08-17 08:46:11', '2025-08-17 08:46:11', NULL),
(748, 7, 156, 46, 5, '2025-08-17 08:46:11', '2025-08-17 08:46:11', NULL),
(749, 7, 156, 45, 5, '2025-08-17 08:46:11', '2025-08-17 08:46:11', NULL),
(750, 7, 156, 44, 5, '2025-08-17 08:46:11', '2025-08-17 08:46:11', NULL),
(751, 7, 156, 41, 5, '2025-08-17 08:46:11', '2025-08-17 08:46:11', NULL),
(752, 7, 156, 40, 5, '2025-08-17 08:46:11', '2025-08-17 08:46:11', NULL),
(753, 7, 156, 40, 6, '2025-08-17 08:46:11', '2025-08-17 08:46:11', NULL),
(754, 7, 156, 41, 6, '2025-08-17 08:46:11', '2025-08-17 08:46:11', NULL),
(755, 7, 156, 45, 6, '2025-08-17 08:46:11', '2025-08-17 08:46:11', NULL),
(756, 7, 156, 44, 6, '2025-08-17 08:46:11', '2025-08-17 08:46:11', NULL),
(757, 7, 156, 46, 6, '2025-08-17 08:46:11', '2025-08-17 08:46:11', NULL),
(818, 7, 177, 41, 3, '2025-08-17 08:52:07', '2025-08-17 08:52:07', NULL),
(819, 7, 177, 40, 3, '2025-08-17 08:52:07', '2025-08-17 08:52:07', NULL),
(820, 7, 177, 44, 3, '2025-08-17 08:52:07', '2025-08-17 08:52:07', NULL),
(821, 7, 177, 45, 3, '2025-08-17 08:52:07', '2025-08-17 08:52:07', NULL),
(822, 7, 177, 46, 3, '2025-08-17 08:52:07', '2025-08-17 08:52:07', NULL),
(823, 7, 177, 46, 4, '2025-08-17 08:52:07', '2025-08-17 08:52:07', NULL),
(824, 7, 177, 45, 4, '2025-08-17 08:52:07', '2025-08-17 08:52:07', NULL),
(825, 7, 177, 44, 4, '2025-08-17 08:52:07', '2025-08-17 08:52:07', NULL),
(826, 7, 177, 41, 4, '2025-08-17 08:52:07', '2025-08-17 08:52:07', NULL),
(827, 7, 177, 40, 4, '2025-08-17 08:52:07', '2025-08-17 08:52:07', NULL),
(828, 7, 177, 40, 5, '2025-08-17 08:52:07', '2025-08-17 08:52:07', NULL),
(829, 7, 177, 41, 5, '2025-08-17 08:52:07', '2025-08-17 08:52:07', NULL),
(830, 7, 177, 44, 5, '2025-08-17 08:52:07', '2025-08-17 08:52:07', NULL),
(831, 7, 177, 46, 5, '2025-08-17 08:52:07', '2025-08-17 08:52:07', NULL),
(832, 7, 177, 45, 5, '2025-08-17 08:52:07', '2025-08-17 08:52:07', NULL),
(833, 7, 177, 45, 6, '2025-08-17 08:52:07', '2025-08-17 08:52:07', NULL),
(834, 7, 177, 44, 6, '2025-08-17 08:52:07', '2025-08-17 08:52:07', NULL),
(835, 7, 177, 40, 6, '2025-08-17 08:52:07', '2025-08-17 08:52:07', NULL),
(836, 7, 177, 46, 6, '2025-08-17 08:52:07', '2025-08-17 08:52:07', NULL),
(837, 7, 177, 41, 6, '2025-08-17 08:52:07', '2025-08-17 08:52:07', NULL),
(838, 7, 168, 40, 1, '2025-08-17 08:54:24', '2025-08-17 08:54:24', NULL),
(839, 7, 168, 41, 1, '2025-08-17 08:54:24', '2025-08-17 08:54:24', NULL),
(840, 7, 168, 44, 1, '2025-08-17 08:54:24', '2025-08-17 08:54:24', NULL),
(841, 7, 168, 45, 1, '2025-08-17 08:54:24', '2025-08-17 08:54:24', NULL),
(842, 7, 168, 46, 1, '2025-08-17 08:54:24', '2025-08-17 08:54:24', NULL),
(843, 7, 168, 40, 2, '2025-08-17 08:54:24', '2025-08-17 08:54:24', NULL),
(844, 7, 168, 41, 2, '2025-08-17 08:54:24', '2025-08-17 08:54:24', NULL),
(845, 7, 168, 44, 2, '2025-08-17 08:54:24', '2025-08-17 08:54:24', NULL),
(846, 7, 168, 45, 2, '2025-08-17 08:54:24', '2025-08-17 08:54:24', NULL),
(847, 7, 168, 46, 2, '2025-08-17 08:54:24', '2025-08-17 08:54:24', NULL),
(848, 7, 168, 40, 5, '2025-08-17 08:54:24', '2025-08-17 08:54:24', NULL),
(849, 7, 168, 41, 5, '2025-08-17 08:54:24', '2025-08-17 08:54:24', NULL),
(850, 7, 168, 45, 5, '2025-08-17 08:54:24', '2025-08-17 08:54:24', NULL),
(851, 7, 168, 44, 5, '2025-08-17 08:54:24', '2025-08-17 08:54:24', NULL),
(852, 7, 168, 46, 5, '2025-08-17 08:54:24', '2025-08-17 08:54:24', NULL),
(853, 7, 168, 40, 6, '2025-08-17 08:54:24', '2025-08-17 08:54:24', NULL),
(854, 7, 168, 41, 6, '2025-08-17 08:54:24', '2025-08-17 08:54:24', NULL),
(855, 7, 168, 44, 6, '2025-08-17 08:54:24', '2025-08-17 08:54:24', NULL),
(856, 7, 168, 45, 6, '2025-08-17 08:54:24', '2025-08-17 08:54:24', NULL),
(857, 7, 168, 46, 6, '2025-08-17 08:54:24', '2025-08-17 08:54:24', NULL),
(878, 7, 148, 40, 3, '2025-08-17 09:01:52', '2025-08-17 09:01:52', NULL),
(879, 7, 148, 41, 3, '2025-08-17 09:01:52', '2025-08-17 09:01:52', NULL),
(880, 7, 148, 44, 3, '2025-08-17 09:01:52', '2025-08-17 09:01:52', NULL),
(881, 7, 148, 45, 3, '2025-08-17 09:01:52', '2025-08-17 09:01:52', NULL),
(882, 7, 148, 46, 3, '2025-08-17 09:01:52', '2025-08-17 09:01:52', NULL),
(883, 7, 148, 40, 4, '2025-08-17 09:01:52', '2025-08-17 09:01:52', NULL),
(884, 7, 148, 41, 4, '2025-08-17 09:01:52', '2025-08-17 09:01:52', NULL),
(885, 7, 148, 44, 4, '2025-08-17 09:01:52', '2025-08-17 09:01:52', NULL),
(886, 7, 148, 45, 4, '2025-08-17 09:01:52', '2025-08-17 09:01:52', NULL),
(887, 7, 148, 46, 4, '2025-08-17 09:01:52', '2025-08-17 09:01:52', NULL),
(888, 7, 148, 40, 5, '2025-08-17 09:01:52', '2025-08-17 09:01:52', NULL),
(889, 7, 148, 41, 5, '2025-08-17 09:01:52', '2025-08-17 09:01:52', NULL),
(890, 7, 148, 44, 5, '2025-08-17 09:01:52', '2025-08-17 09:01:52', NULL),
(891, 7, 148, 45, 5, '2025-08-17 09:01:52', '2025-08-17 09:01:52', NULL),
(892, 7, 148, 46, 5, '2025-08-17 09:01:52', '2025-08-17 09:01:52', NULL),
(893, 7, 148, 40, 6, '2025-08-17 09:01:52', '2025-08-17 09:01:52', NULL),
(894, 7, 148, 41, 6, '2025-08-17 09:01:52', '2025-08-17 09:01:52', NULL),
(895, 7, 148, 44, 6, '2025-08-17 09:01:52', '2025-08-17 09:01:52', NULL),
(896, 7, 148, 45, 6, '2025-08-17 09:01:52', '2025-08-17 09:01:52', NULL),
(897, 7, 148, 46, 6, '2025-08-17 09:01:52', '2025-08-17 09:01:52', NULL),
(918, 7, 170, 40, 3, '2025-08-17 09:17:47', '2025-08-17 09:17:47', NULL),
(919, 7, 170, 41, 3, '2025-08-17 09:17:47', '2025-08-17 09:17:47', NULL),
(920, 7, 170, 44, 3, '2025-08-17 09:17:47', '2025-08-17 09:17:47', NULL),
(921, 7, 170, 45, 3, '2025-08-17 09:17:47', '2025-08-17 09:17:47', NULL),
(922, 7, 170, 46, 3, '2025-08-17 09:17:47', '2025-08-17 09:17:47', NULL),
(923, 7, 170, 46, 4, '2025-08-17 09:17:47', '2025-08-17 09:17:47', NULL),
(924, 7, 170, 46, 5, '2025-08-17 09:17:47', '2025-08-17 09:17:47', NULL),
(925, 7, 170, 46, 6, '2025-08-17 09:17:47', '2025-08-17 09:17:47', NULL),
(926, 7, 170, 45, 6, '2025-08-17 09:17:47', '2025-08-17 09:17:47', NULL),
(927, 7, 170, 44, 6, '2025-08-17 09:17:47', '2025-08-17 09:17:47', NULL),
(928, 7, 170, 41, 6, '2025-08-17 09:17:47', '2025-08-17 09:17:47', NULL),
(929, 7, 170, 40, 5, '2025-08-17 09:17:47', '2025-08-17 09:17:47', NULL),
(930, 7, 170, 40, 4, '2025-08-17 09:17:47', '2025-08-17 09:17:47', NULL),
(931, 7, 170, 44, 4, '2025-08-17 09:17:47', '2025-08-17 09:17:47', NULL),
(932, 7, 170, 45, 4, '2025-08-17 09:17:47', '2025-08-17 09:17:47', NULL),
(933, 7, 170, 45, 5, '2025-08-17 09:17:47', '2025-08-17 09:17:47', NULL),
(934, 7, 170, 44, 5, '2025-08-17 09:17:47', '2025-08-17 09:17:47', NULL),
(935, 7, 170, 41, 5, '2025-08-17 09:17:47', '2025-08-17 09:17:47', NULL),
(936, 7, 170, 41, 4, '2025-08-17 09:17:47', '2025-08-17 09:17:47', NULL),
(937, 7, 170, 40, 6, '2025-08-17 09:17:47', '2025-08-17 09:17:47', NULL),
(963, 7, 146, 40, 1, '2025-08-17 09:20:18', '2025-08-17 09:20:18', NULL),
(964, 7, 146, 41, 1, '2025-08-17 09:20:18', '2025-08-17 09:20:18', NULL),
(965, 7, 146, 44, 1, '2025-08-17 09:20:18', '2025-08-17 09:20:18', NULL),
(966, 7, 146, 45, 1, '2025-08-17 09:20:18', '2025-08-17 09:20:18', NULL),
(967, 7, 146, 46, 1, '2025-08-17 09:20:18', '2025-08-17 09:20:18', NULL),
(968, 7, 146, 40, 3, '2025-08-17 09:20:18', '2025-08-17 09:20:18', NULL),
(969, 7, 146, 41, 3, '2025-08-17 09:20:18', '2025-08-17 09:20:18', NULL),
(970, 7, 146, 44, 3, '2025-08-17 09:20:18', '2025-08-17 09:20:18', NULL),
(971, 7, 146, 45, 3, '2025-08-17 09:20:18', '2025-08-17 09:20:18', NULL),
(972, 7, 146, 46, 3, '2025-08-17 09:20:18', '2025-08-17 09:20:18', NULL),
(973, 7, 146, 40, 5, '2025-08-17 09:20:18', '2025-08-17 09:20:18', NULL),
(974, 7, 146, 41, 5, '2025-08-17 09:20:18', '2025-08-17 09:20:18', NULL),
(975, 7, 146, 44, 5, '2025-08-17 09:20:18', '2025-08-17 09:20:18', NULL),
(976, 7, 146, 45, 5, '2025-08-17 09:20:18', '2025-08-17 09:20:18', NULL),
(977, 7, 146, 46, 5, '2025-08-17 09:20:18', '2025-08-17 09:20:18', NULL),
(978, 7, 146, 40, 6, '2025-08-17 09:20:18', '2025-08-17 09:20:18', NULL),
(979, 7, 146, 41, 6, '2025-08-17 09:20:18', '2025-08-17 09:20:18', NULL),
(980, 7, 146, 44, 6, '2025-08-17 09:20:18', '2025-08-17 09:20:18', NULL),
(981, 7, 146, 45, 6, '2025-08-17 09:20:18', '2025-08-17 09:20:18', NULL),
(982, 7, 146, 46, 6, '2025-08-17 09:20:18', '2025-08-17 09:20:18', NULL),
(1043, 7, 172, 40, 3, '2025-08-17 09:24:19', '2025-08-17 09:24:19', NULL),
(1044, 7, 172, 41, 3, '2025-08-17 09:24:19', '2025-08-17 09:24:19', NULL),
(1045, 7, 172, 44, 3, '2025-08-17 09:24:19', '2025-08-17 09:24:19', NULL),
(1046, 7, 172, 45, 3, '2025-08-17 09:24:19', '2025-08-17 09:24:19', NULL),
(1047, 7, 172, 46, 3, '2025-08-17 09:24:19', '2025-08-17 09:24:19', NULL),
(1048, 7, 172, 46, 4, '2025-08-17 09:24:19', '2025-08-17 09:24:19', NULL),
(1049, 7, 172, 44, 4, '2025-08-17 09:24:19', '2025-08-17 09:24:19', NULL),
(1050, 7, 172, 41, 4, '2025-08-17 09:24:19', '2025-08-17 09:24:19', NULL),
(1051, 7, 172, 40, 4, '2025-08-17 09:24:19', '2025-08-17 09:24:19', NULL),
(1052, 7, 172, 45, 4, '2025-08-17 09:24:19', '2025-08-17 09:24:19', NULL),
(1053, 7, 172, 46, 5, '2025-08-17 09:24:19', '2025-08-17 09:24:19', NULL),
(1054, 7, 172, 45, 5, '2025-08-17 09:24:19', '2025-08-17 09:24:19', NULL),
(1055, 7, 172, 44, 5, '2025-08-17 09:24:19', '2025-08-17 09:24:19', NULL),
(1056, 7, 172, 41, 5, '2025-08-17 09:24:19', '2025-08-17 09:24:19', NULL),
(1057, 7, 172, 40, 5, '2025-08-17 09:24:19', '2025-08-17 09:24:19', NULL),
(1058, 7, 172, 40, 6, '2025-08-17 09:24:19', '2025-08-17 09:24:19', NULL),
(1059, 7, 172, 41, 6, '2025-08-17 09:24:19', '2025-08-17 09:24:19', NULL),
(1060, 7, 172, 44, 6, '2025-08-17 09:24:19', '2025-08-17 09:24:19', NULL),
(1061, 7, 172, 46, 6, '2025-08-17 09:24:19', '2025-08-17 09:24:19', NULL),
(1062, 7, 172, 45, 6, '2025-08-17 09:24:19', '2025-08-17 09:24:19', NULL),
(1083, 7, 149, 40, 1, '2025-08-17 09:26:31', '2025-08-17 09:26:31', NULL),
(1084, 7, 149, 44, 1, '2025-08-17 09:26:31', '2025-08-17 09:26:31', NULL),
(1085, 7, 149, 45, 1, '2025-08-17 09:26:31', '2025-08-17 09:26:31', NULL),
(1086, 7, 149, 46, 1, '2025-08-17 09:26:31', '2025-08-17 09:26:31', NULL),
(1087, 7, 149, 41, 1, '2025-08-17 09:26:31', '2025-08-17 09:26:31', NULL),
(1088, 7, 149, 40, 4, '2025-08-17 09:26:31', '2025-08-17 09:26:31', NULL),
(1089, 7, 149, 41, 4, '2025-08-17 09:26:31', '2025-08-17 09:26:31', NULL),
(1090, 7, 149, 44, 4, '2025-08-17 09:26:31', '2025-08-17 09:26:31', NULL),
(1091, 7, 149, 45, 4, '2025-08-17 09:26:31', '2025-08-17 09:26:31', NULL),
(1092, 7, 149, 46, 4, '2025-08-17 09:26:31', '2025-08-17 09:26:31', NULL),
(1093, 7, 149, 40, 5, '2025-08-17 09:26:31', '2025-08-17 09:26:31', NULL),
(1094, 7, 149, 41, 5, '2025-08-17 09:26:31', '2025-08-17 09:26:31', NULL),
(1095, 7, 149, 44, 5, '2025-08-17 09:26:31', '2025-08-17 09:26:31', NULL),
(1096, 7, 149, 45, 5, '2025-08-17 09:26:31', '2025-08-17 09:26:31', NULL),
(1097, 7, 149, 46, 5, '2025-08-17 09:26:31', '2025-08-17 09:26:31', NULL),
(1098, 7, 149, 46, 6, '2025-08-17 09:26:31', '2025-08-17 09:26:31', NULL),
(1099, 7, 149, 45, 6, '2025-08-17 09:26:31', '2025-08-17 09:26:31', NULL),
(1100, 7, 149, 44, 6, '2025-08-17 09:26:31', '2025-08-17 09:26:31', NULL),
(1101, 7, 149, 41, 6, '2025-08-17 09:26:31', '2025-08-17 09:26:31', NULL),
(1102, 7, 149, 40, 6, '2025-08-17 09:26:31', '2025-08-17 09:26:31', NULL),
(1103, 7, 188, 40, 2, '2025-08-17 09:29:26', '2025-08-17 09:29:26', NULL),
(1104, 7, 188, 41, 2, '2025-08-17 09:29:26', '2025-08-17 09:29:26', NULL),
(1105, 7, 188, 44, 2, '2025-08-17 09:29:26', '2025-08-17 09:29:26', NULL),
(1106, 7, 188, 45, 2, '2025-08-17 09:29:26', '2025-08-17 09:29:26', NULL),
(1107, 7, 188, 46, 2, '2025-08-17 09:29:26', '2025-08-17 09:29:26', NULL),
(1108, 7, 188, 45, 1, '2025-08-17 09:29:26', '2025-08-17 09:29:26', NULL),
(1109, 7, 188, 44, 1, '2025-08-17 09:29:26', '2025-08-17 09:29:26', NULL),
(1110, 7, 188, 41, 1, '2025-08-17 09:29:26', '2025-08-17 09:29:26', NULL),
(1111, 7, 188, 40, 1, '2025-08-17 09:29:26', '2025-08-17 09:29:26', NULL),
(1112, 7, 188, 46, 1, '2025-08-17 09:29:26', '2025-08-17 09:29:26', NULL),
(1113, 7, 188, 40, 5, '2025-08-17 09:29:26', '2025-08-17 09:29:26', NULL),
(1114, 7, 188, 44, 5, '2025-08-17 09:29:26', '2025-08-17 09:29:26', NULL),
(1115, 7, 188, 41, 5, '2025-08-17 09:29:26', '2025-08-17 09:29:26', NULL),
(1116, 7, 188, 45, 5, '2025-08-17 09:29:26', '2025-08-17 09:29:26', NULL),
(1117, 7, 188, 46, 5, '2025-08-17 09:29:26', '2025-08-17 09:29:26', NULL),
(1118, 7, 188, 46, 6, '2025-08-17 09:29:26', '2025-08-17 09:29:26', NULL),
(1119, 7, 188, 45, 6, '2025-08-17 09:29:26', '2025-08-17 09:29:26', NULL),
(1120, 7, 188, 44, 6, '2025-08-17 09:29:26', '2025-08-17 09:29:26', NULL),
(1121, 7, 188, 41, 6, '2025-08-17 09:29:26', '2025-08-17 09:29:26', NULL),
(1122, 7, 188, 40, 6, '2025-08-17 09:29:26', '2025-08-17 09:29:26', NULL),
(1123, 7, 152, 40, 1, '2025-08-17 09:30:24', '2025-08-17 09:30:24', NULL),
(1124, 7, 152, 41, 1, '2025-08-17 09:30:24', '2025-08-17 09:30:24', NULL),
(1125, 7, 152, 44, 1, '2025-08-17 09:30:24', '2025-08-17 09:30:24', NULL),
(1126, 7, 152, 45, 1, '2025-08-17 09:30:24', '2025-08-17 09:30:24', NULL),
(1127, 7, 152, 46, 1, '2025-08-17 09:30:24', '2025-08-17 09:30:24', NULL),
(1128, 7, 152, 40, 2, '2025-08-17 09:30:24', '2025-08-17 09:30:24', NULL),
(1129, 7, 152, 41, 2, '2025-08-17 09:30:24', '2025-08-17 09:30:24', NULL),
(1130, 7, 152, 44, 2, '2025-08-17 09:30:24', '2025-08-17 09:30:24', NULL),
(1131, 7, 152, 45, 2, '2025-08-17 09:30:24', '2025-08-17 09:30:24', NULL),
(1132, 7, 152, 46, 2, '2025-08-17 09:30:24', '2025-08-17 09:30:24', NULL),
(1133, 7, 152, 40, 5, '2025-08-17 09:30:24', '2025-08-17 09:30:24', NULL),
(1134, 7, 152, 41, 5, '2025-08-17 09:30:24', '2025-08-17 09:30:24', NULL),
(1135, 7, 152, 44, 5, '2025-08-17 09:30:24', '2025-08-17 09:30:24', NULL),
(1136, 7, 152, 45, 5, '2025-08-17 09:30:24', '2025-08-17 09:30:24', NULL),
(1137, 7, 152, 46, 5, '2025-08-17 09:30:24', '2025-08-17 09:30:24', NULL),
(1138, 7, 152, 46, 6, '2025-08-17 09:30:24', '2025-08-17 09:30:24', NULL),
(1139, 7, 152, 45, 6, '2025-08-17 09:30:24', '2025-08-17 09:30:24', NULL),
(1140, 7, 152, 44, 6, '2025-08-17 09:30:24', '2025-08-17 09:30:24', NULL),
(1141, 7, 152, 40, 6, '2025-08-17 09:30:24', '2025-08-17 09:30:24', NULL),
(1142, 7, 152, 41, 6, '2025-08-17 09:30:24', '2025-08-17 09:30:24', NULL),
(1163, 7, 196, 40, 3, '2025-08-17 09:35:53', '2025-08-17 09:35:53', NULL),
(1164, 7, 196, 41, 3, '2025-08-17 09:35:53', '2025-08-17 09:35:53', NULL),
(1165, 7, 196, 45, 3, '2025-08-17 09:35:53', '2025-08-17 09:35:53', NULL),
(1166, 7, 196, 44, 3, '2025-08-17 09:35:53', '2025-08-17 09:35:53', NULL),
(1167, 7, 196, 46, 3, '2025-08-17 09:35:53', '2025-08-17 09:35:53', NULL),
(1168, 7, 196, 40, 2, '2025-08-17 09:35:53', '2025-08-17 09:35:53', NULL),
(1169, 7, 196, 41, 2, '2025-08-17 09:35:53', '2025-08-17 09:35:53', NULL),
(1170, 7, 196, 44, 2, '2025-08-17 09:35:53', '2025-08-17 09:35:53', NULL),
(1171, 7, 196, 45, 2, '2025-08-17 09:35:53', '2025-08-17 09:35:53', NULL),
(1172, 7, 196, 46, 2, '2025-08-17 09:35:53', '2025-08-17 09:35:53', NULL),
(1173, 7, 196, 46, 1, '2025-08-17 09:35:53', '2025-08-17 09:35:53', NULL),
(1174, 7, 196, 45, 1, '2025-08-17 09:35:53', '2025-08-17 09:35:53', NULL),
(1175, 7, 196, 44, 1, '2025-08-17 09:35:53', '2025-08-17 09:35:53', NULL),
(1176, 7, 196, 41, 1, '2025-08-17 09:35:53', '2025-08-17 09:35:53', NULL),
(1177, 7, 196, 40, 1, '2025-08-17 09:35:53', '2025-08-17 09:35:53', NULL),
(1178, 7, 196, 40, 6, '2025-08-17 09:35:53', '2025-08-17 09:35:53', NULL),
(1179, 7, 196, 41, 6, '2025-08-17 09:35:53', '2025-08-17 09:35:53', NULL),
(1180, 7, 196, 44, 6, '2025-08-17 09:35:53', '2025-08-17 09:35:53', NULL),
(1181, 7, 196, 45, 6, '2025-08-17 09:35:53', '2025-08-17 09:35:53', NULL),
(1182, 7, 196, 46, 6, '2025-08-17 09:35:53', '2025-08-17 09:35:53', NULL),
(1183, 7, 195, 40, 3, '2025-08-17 09:37:51', '2025-08-17 09:37:51', NULL),
(1184, 7, 195, 41, 3, '2025-08-17 09:37:51', '2025-08-17 09:37:51', NULL),
(1185, 7, 195, 44, 3, '2025-08-17 09:37:51', '2025-08-17 09:37:51', NULL),
(1186, 7, 195, 45, 3, '2025-08-17 09:37:51', '2025-08-17 09:37:51', NULL),
(1187, 7, 195, 46, 3, '2025-08-17 09:37:51', '2025-08-17 09:37:51', NULL),
(1188, 7, 195, 40, 4, '2025-08-17 09:37:51', '2025-08-17 09:37:51', NULL),
(1189, 7, 195, 41, 4, '2025-08-17 09:37:51', '2025-08-17 09:37:51', NULL),
(1190, 7, 195, 44, 4, '2025-08-17 09:37:51', '2025-08-17 09:37:51', NULL),
(1191, 7, 195, 45, 4, '2025-08-17 09:37:51', '2025-08-17 09:37:51', NULL),
(1192, 7, 195, 46, 4, '2025-08-17 09:37:51', '2025-08-17 09:37:51', NULL),
(1193, 7, 195, 40, 5, '2025-08-17 09:37:51', '2025-08-17 09:37:51', NULL),
(1194, 7, 195, 44, 5, '2025-08-17 09:37:51', '2025-08-17 09:37:51', NULL),
(1195, 7, 195, 41, 5, '2025-08-17 09:37:51', '2025-08-17 09:37:51', NULL),
(1196, 7, 195, 45, 5, '2025-08-17 09:37:51', '2025-08-17 09:37:51', NULL),
(1197, 7, 195, 46, 5, '2025-08-17 09:37:51', '2025-08-17 09:37:51', NULL),
(1198, 7, 195, 40, 6, '2025-08-17 09:37:51', '2025-08-17 09:37:51', NULL),
(1199, 7, 195, 41, 6, '2025-08-17 09:37:51', '2025-08-17 09:37:51', NULL),
(1200, 7, 195, 44, 6, '2025-08-17 09:37:51', '2025-08-17 09:37:51', NULL),
(1201, 7, 195, 45, 6, '2025-08-17 09:37:51', '2025-08-17 09:37:51', NULL),
(1202, 7, 195, 46, 6, '2025-08-17 09:37:51', '2025-08-17 09:37:51', NULL),
(1223, 7, 145, 40, 1, '2025-08-17 09:42:29', '2025-08-17 09:42:29', NULL),
(1224, 7, 145, 41, 1, '2025-08-17 09:42:29', '2025-08-17 09:42:29', NULL),
(1225, 7, 145, 44, 1, '2025-08-17 09:42:29', '2025-08-17 09:42:29', NULL),
(1226, 7, 145, 46, 1, '2025-08-17 09:42:29', '2025-08-17 09:42:29', NULL),
(1227, 7, 145, 45, 1, '2025-08-17 09:42:29', '2025-08-17 09:42:29', NULL),
(1228, 7, 145, 40, 2, '2025-08-17 09:42:29', '2025-08-17 09:42:29', NULL),
(1229, 7, 145, 41, 2, '2025-08-17 09:42:29', '2025-08-17 09:42:29', NULL),
(1230, 7, 145, 44, 2, '2025-08-17 09:42:29', '2025-08-17 09:42:29', NULL),
(1231, 7, 145, 45, 2, '2025-08-17 09:42:29', '2025-08-17 09:42:29', NULL),
(1232, 7, 145, 46, 2, '2025-08-17 09:42:29', '2025-08-17 09:42:29', NULL),
(1233, 7, 145, 40, 5, '2025-08-17 09:42:29', '2025-08-17 09:42:29', NULL),
(1234, 7, 145, 41, 5, '2025-08-17 09:42:29', '2025-08-17 09:42:29', NULL),
(1235, 7, 145, 44, 5, '2025-08-17 09:42:29', '2025-08-17 09:42:29', NULL),
(1236, 7, 145, 45, 5, '2025-08-17 09:42:29', '2025-08-17 09:42:29', NULL),
(1237, 7, 145, 46, 5, '2025-08-17 09:42:29', '2025-08-17 09:42:29', NULL),
(1238, 7, 145, 40, 6, '2025-08-17 09:42:29', '2025-08-17 09:42:29', NULL),
(1239, 7, 145, 41, 6, '2025-08-17 09:42:29', '2025-08-17 09:42:29', NULL),
(1240, 7, 145, 44, 6, '2025-08-17 09:42:29', '2025-08-17 09:42:29', NULL),
(1241, 7, 145, 45, 6, '2025-08-17 09:42:29', '2025-08-17 09:42:29', NULL),
(1242, 7, 145, 46, 6, '2025-08-17 09:42:29', '2025-08-17 09:42:29', NULL),
(1287, 7, 155, 40, 1, '2025-08-17 09:56:04', '2025-08-17 09:56:04', NULL),
(1288, 7, 155, 41, 1, '2025-08-17 09:56:04', '2025-08-17 09:56:04', NULL),
(1289, 7, 155, 45, 1, '2025-08-17 09:56:04', '2025-08-17 09:56:04', NULL),
(1290, 7, 155, 46, 1, '2025-08-17 09:56:04', '2025-08-17 09:56:04', NULL),
(1291, 7, 155, 44, 1, '2025-08-17 09:56:04', '2025-08-17 09:56:04', NULL),
(1292, 7, 155, 40, 4, '2025-08-17 09:56:04', '2025-08-17 09:56:04', NULL),
(1293, 7, 155, 41, 4, '2025-08-17 09:56:04', '2025-08-17 09:56:04', NULL),
(1294, 7, 155, 44, 4, '2025-08-17 09:56:04', '2025-08-17 09:56:04', NULL),
(1295, 7, 155, 45, 4, '2025-08-17 09:56:04', '2025-08-17 09:56:04', NULL),
(1296, 7, 155, 46, 4, '2025-08-17 09:56:04', '2025-08-17 09:56:04', NULL),
(1297, 7, 155, 46, 5, '2025-08-17 09:56:04', '2025-08-17 09:56:04', NULL),
(1298, 7, 155, 45, 5, '2025-08-17 09:56:04', '2025-08-17 09:56:04', NULL),
(1299, 7, 155, 44, 5, '2025-08-17 09:56:04', '2025-08-17 09:56:04', NULL),
(1300, 7, 155, 41, 5, '2025-08-17 09:56:04', '2025-08-17 09:56:04', NULL),
(1301, 7, 155, 40, 5, '2025-08-17 09:56:04', '2025-08-17 09:56:04', NULL),
(1302, 7, 155, 40, 6, '2025-08-17 09:56:04', '2025-08-17 09:56:04', NULL),
(1303, 7, 155, 41, 6, '2025-08-17 09:56:04', '2025-08-17 09:56:04', NULL),
(1304, 7, 155, 44, 6, '2025-08-17 09:56:04', '2025-08-17 09:56:04', NULL),
(1305, 7, 155, 45, 6, '2025-08-17 09:56:04', '2025-08-17 09:56:04', NULL),
(1306, 7, 155, 46, 6, '2025-08-17 09:56:04', '2025-08-17 09:56:04', NULL),
(1307, 7, 155, 46, 3, '2025-08-17 09:56:04', '2025-08-17 09:56:04', NULL),
(1308, 7, 155, 45, 3, '2025-08-17 09:56:04', '2025-08-17 09:56:04', NULL),
(1329, 7, 167, 40, 1, '2025-08-17 10:03:36', '2025-08-17 10:03:36', NULL),
(1330, 7, 167, 41, 1, '2025-08-17 10:03:36', '2025-08-17 10:03:36', NULL),
(1331, 7, 167, 44, 1, '2025-08-17 10:03:36', '2025-08-17 10:03:36', NULL),
(1332, 7, 167, 45, 1, '2025-08-17 10:03:36', '2025-08-17 10:03:36', NULL),
(1333, 7, 167, 40, 4, '2025-08-17 10:03:36', '2025-08-17 10:03:36', NULL),
(1334, 7, 167, 44, 4, '2025-08-17 10:03:36', '2025-08-17 10:03:36', NULL),
(1335, 7, 167, 45, 4, '2025-08-17 10:03:36', '2025-08-17 10:03:36', NULL),
(1336, 7, 167, 46, 4, '2025-08-17 10:03:36', '2025-08-17 10:03:36', NULL),
(1337, 7, 167, 41, 4, '2025-08-17 10:03:36', '2025-08-17 10:03:36', NULL),
(1338, 7, 167, 41, 5, '2025-08-17 10:03:36', '2025-08-17 10:03:36', NULL),
(1339, 7, 167, 40, 5, '2025-08-17 10:03:36', '2025-08-17 10:03:36', NULL),
(1340, 7, 167, 44, 5, '2025-08-17 10:03:36', '2025-08-17 10:03:36', NULL),
(1341, 7, 167, 45, 5, '2025-08-17 10:03:36', '2025-08-17 10:03:36', NULL),
(1342, 7, 167, 46, 5, '2025-08-17 10:03:36', '2025-08-17 10:03:36', NULL),
(1343, 7, 167, 46, 6, '2025-08-17 10:03:36', '2025-08-17 10:03:36', NULL),
(1344, 7, 167, 45, 6, '2025-08-17 10:03:36', '2025-08-17 10:03:36', NULL),
(1345, 7, 167, 44, 6, '2025-08-17 10:03:36', '2025-08-17 10:03:36', NULL),
(1346, 7, 167, 41, 6, '2025-08-17 10:03:36', '2025-08-17 10:03:36', NULL),
(1347, 7, 167, 40, 6, '2025-08-17 10:03:36', '2025-08-17 10:03:36', NULL),
(1348, 7, 167, 46, 1, '2025-08-17 10:03:36', '2025-08-17 10:03:36', NULL),
(1369, 7, 249, 40, 1, '2025-08-17 10:05:26', '2025-08-17 10:05:26', NULL),
(1370, 7, 249, 41, 1, '2025-08-17 10:05:26', '2025-08-17 10:05:26', NULL),
(1371, 7, 249, 45, 1, '2025-08-17 10:05:26', '2025-08-17 10:05:26', NULL),
(1372, 7, 249, 44, 1, '2025-08-17 10:05:26', '2025-08-17 10:05:26', NULL),
(1373, 7, 249, 46, 1, '2025-08-17 10:05:26', '2025-08-17 10:05:26', NULL),
(1374, 7, 249, 40, 4, '2025-08-17 10:05:26', '2025-08-17 10:05:26', NULL),
(1375, 7, 249, 41, 4, '2025-08-17 10:05:26', '2025-08-17 10:05:26', NULL),
(1376, 7, 249, 44, 4, '2025-08-17 10:05:26', '2025-08-17 10:05:26', NULL),
(1377, 7, 249, 45, 4, '2025-08-17 10:05:26', '2025-08-17 10:05:26', NULL),
(1378, 7, 249, 46, 4, '2025-08-17 10:05:26', '2025-08-17 10:05:26', NULL),
(1379, 7, 249, 46, 5, '2025-08-17 10:05:26', '2025-08-17 10:05:26', NULL),
(1380, 7, 249, 45, 5, '2025-08-17 10:05:26', '2025-08-17 10:05:26', NULL),
(1381, 7, 249, 44, 5, '2025-08-17 10:05:26', '2025-08-17 10:05:26', NULL),
(1382, 7, 249, 41, 5, '2025-08-17 10:05:26', '2025-08-17 10:05:26', NULL),
(1383, 7, 249, 40, 5, '2025-08-17 10:05:26', '2025-08-17 10:05:26', NULL),
(1384, 7, 249, 40, 6, '2025-08-17 10:05:26', '2025-08-17 10:05:26', NULL),
(1385, 7, 249, 41, 6, '2025-08-17 10:05:26', '2025-08-17 10:05:26', NULL),
(1386, 7, 249, 44, 6, '2025-08-17 10:05:26', '2025-08-17 10:05:26', NULL),
(1387, 7, 249, 45, 6, '2025-08-17 10:05:26', '2025-08-17 10:05:26', NULL),
(1388, 7, 249, 46, 6, '2025-08-17 10:05:26', '2025-08-17 10:05:26', NULL),
(1389, 7, 173, 40, 4, '2025-08-17 10:09:18', '2025-08-17 10:09:18', NULL),
(1390, 7, 173, 40, 5, '2025-08-17 10:09:18', '2025-08-17 10:09:18', NULL),
(1391, 7, 173, 40, 6, '2025-08-17 10:09:18', '2025-08-17 10:09:18', NULL),
(1392, 7, 173, 41, 6, '2025-08-17 10:09:18', '2025-08-17 10:09:18', NULL),
(1393, 7, 173, 44, 6, '2025-08-17 10:09:18', '2025-08-17 10:09:18', NULL),
(1394, 7, 173, 45, 6, '2025-08-17 10:09:18', '2025-08-17 10:09:18', NULL),
(1395, 7, 173, 46, 6, '2025-08-17 10:09:18', '2025-08-17 10:09:18', NULL),
(1396, 7, 173, 46, 5, '2025-08-17 10:09:18', '2025-08-17 10:09:18', NULL),
(1397, 7, 173, 45, 5, '2025-08-17 10:09:18', '2025-08-17 10:09:18', NULL),
(1398, 7, 173, 44, 5, '2025-08-17 10:09:18', '2025-08-17 10:09:18', NULL),
(1399, 7, 173, 41, 5, '2025-08-17 10:09:18', '2025-08-17 10:09:18', NULL),
(1400, 7, 173, 41, 4, '2025-08-17 10:09:18', '2025-08-17 10:09:18', NULL),
(1401, 7, 173, 44, 4, '2025-08-17 10:09:18', '2025-08-17 10:09:18', NULL),
(1402, 7, 173, 45, 4, '2025-08-17 10:09:18', '2025-08-17 10:09:18', NULL),
(1403, 7, 173, 46, 4, '2025-08-17 10:09:18', '2025-08-17 10:09:18', NULL),
(1404, 7, 162, 40, 1, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1405, 7, 162, 41, 1, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1406, 7, 162, 44, 1, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1407, 7, 162, 45, 1, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1408, 7, 162, 46, 1, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1409, 7, 162, 46, 2, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1410, 7, 162, 46, 3, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1411, 7, 162, 45, 3, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1412, 7, 162, 44, 3, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1413, 7, 162, 41, 3, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1414, 7, 162, 40, 3, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1415, 7, 162, 40, 4, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1416, 7, 162, 41, 4, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1417, 7, 162, 44, 4, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1418, 7, 162, 45, 4, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1419, 7, 162, 46, 4, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1420, 7, 162, 46, 5, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1421, 7, 162, 45, 5, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1422, 7, 162, 44, 5, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1423, 7, 162, 41, 5, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1424, 7, 162, 40, 5, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1425, 7, 162, 46, 6, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1426, 7, 162, 45, 6, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1427, 7, 162, 44, 6, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1428, 7, 162, 41, 6, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1429, 7, 162, 40, 6, '2025-08-17 10:11:36', '2025-08-17 10:11:36', NULL),
(1440, 7, 147, 41, 3, '2025-08-19 15:20:15', '2025-08-19 15:20:15', NULL),
(1441, 7, 147, 44, 3, '2025-08-19 15:20:15', '2025-08-19 15:20:15', NULL),
(1442, 7, 147, 45, 3, '2025-08-19 15:20:15', '2025-08-19 15:20:15', NULL),
(1443, 7, 147, 46, 3, '2025-08-19 15:20:15', '2025-08-19 15:20:15', NULL),
(1444, 7, 147, 46, 4, '2025-08-19 15:20:15', '2025-08-19 15:20:15', NULL),
(1445, 7, 147, 45, 4, '2025-08-19 15:20:15', '2025-08-19 15:20:15', NULL),
(1446, 7, 147, 41, 4, '2025-08-19 15:20:15', '2025-08-19 15:20:15', NULL),
(1447, 7, 147, 44, 4, '2025-08-19 15:20:15', '2025-08-19 15:20:15', NULL),
(1448, 7, 147, 44, 5, '2025-08-19 15:20:15', '2025-08-19 15:20:15', NULL),
(1449, 7, 147, 45, 5, '2025-08-19 15:20:15', '2025-08-19 15:20:15', NULL),
(1450, 7, 147, 46, 5, '2025-08-19 15:20:15', '2025-08-19 15:20:15', NULL),
(1451, 7, 147, 41, 5, '2025-08-19 15:20:15', '2025-08-19 15:20:15', NULL),
(1452, 7, 147, 40, 3, '2025-08-19 15:20:15', '2025-08-19 15:20:15', NULL),
(1453, 7, 147, 40, 4, '2025-08-19 15:20:15', '2025-08-19 15:20:15', NULL),
(1454, 7, 147, 40, 5, '2025-08-19 15:20:15', '2025-08-19 15:20:15', NULL),
(1455, 7, 147, 40, 6, '2025-08-19 15:20:15', '2025-08-19 15:20:15', NULL),
(1456, 7, 147, 41, 6, '2025-08-19 15:20:15', '2025-08-19 15:20:15', NULL),
(1457, 7, 147, 44, 6, '2025-08-19 15:20:15', '2025-08-19 15:20:15', NULL),
(1458, 7, 147, 45, 6, '2025-08-19 15:20:15', '2025-08-19 15:20:15', NULL),
(1459, 7, 147, 46, 6, '2025-08-19 15:20:15', '2025-08-19 15:20:15', NULL),
(1460, 7, 175, 40, 5, '2025-08-20 07:01:35', '2025-08-20 07:01:35', NULL),
(1461, 7, 175, 41, 5, '2025-08-20 07:01:35', '2025-08-20 07:01:35', NULL),
(1462, 7, 175, 44, 5, '2025-08-20 07:01:35', '2025-08-20 07:01:35', NULL),
(1463, 7, 175, 45, 5, '2025-08-20 07:01:35', '2025-08-20 07:01:35', NULL),
(1464, 7, 175, 46, 5, '2025-08-20 07:01:35', '2025-08-20 07:01:35', NULL),
(1465, 7, 175, 46, 6, '2025-08-20 07:01:35', '2025-08-20 07:01:35', NULL),
(1466, 7, 175, 45, 6, '2025-08-20 07:01:35', '2025-08-20 07:01:35', NULL),
(1467, 7, 175, 41, 6, '2025-08-20 07:01:35', '2025-08-20 07:01:35', NULL),
(1468, 7, 175, 40, 6, '2025-08-20 07:01:35', '2025-08-20 07:01:35', NULL),
(1469, 7, 175, 44, 6, '2025-08-20 07:01:35', '2025-08-20 07:01:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pending_seances`
--

CREATE TABLE `pending_seances` (
  `id` int(10) UNSIGNED NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `day_id` int(11) DEFAULT NULL,
  `period_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `classroom_id` int(11) DEFAULT NULL,
  `subject_type_id` int(11) DEFAULT NULL,
  `establishment_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `year_division_id` int(11) DEFAULT NULL,
  `week_type_id` int(11) DEFAULT NULL,
  `week_name` varchar(255) DEFAULT NULL,
  `group_tp_id` int(11) DEFAULT NULL,
  `group_td_id` int(11) DEFAULT NULL,
  `duree` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `next` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `regime_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pending_seances`
--

INSERT INTO `pending_seances` (`id`, `section_id`, `day_id`, `period_id`, `subject_id`, `teacher_id`, `classroom_id`, `subject_type_id`, `establishment_id`, `created_at`, `updated_at`, `deleted_at`, `year_division_id`, `week_type_id`, `week_name`, `group_tp_id`, `group_td_id`, `duree`, `related_id`, `next`, `type`, `display_name`, `regime_id`) VALUES
(1028, 5, NULL, NULL, 32, 177, NULL, 1, 7, '2025-08-20 07:12:45', '2025-08-20 07:12:45', NULL, 2, 19, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(1029, 2, NULL, NULL, 94, 192, NULL, 1, 7, '2025-08-20 07:12:46', '2025-08-20 07:12:46', NULL, 2, 20, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(1030, 11, NULL, NULL, 58, 158, NULL, 1, 7, '2025-08-20 07:13:01', '2025-08-20 07:13:01', NULL, 2, 19, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(1031, 13, NULL, NULL, 58, 158, NULL, 1, 7, '2025-08-20 07:13:02', '2025-08-20 07:13:02', NULL, 2, 19, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(1032, 14, NULL, NULL, 58, 158, NULL, 1, 7, '2025-08-20 07:13:02', '2025-08-20 07:13:02', NULL, 2, 19, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(1033, 15, NULL, NULL, 62, 148, NULL, 1, 7, '2025-08-20 07:13:06', '2025-08-20 07:13:06', NULL, 2, 19, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(1034, 17, NULL, NULL, 62, 148, NULL, 1, 7, '2025-08-20 07:13:06', '2025-08-20 07:13:06', NULL, 2, 19, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(1035, 26, NULL, NULL, 62, 148, NULL, 1, 7, '2025-08-20 07:13:07', '2025-08-20 07:13:07', NULL, 2, 19, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(1036, 15, NULL, NULL, 65, 152, NULL, 3, 7, '2025-08-20 07:13:20', '2025-08-20 07:13:20', NULL, 2, 19, NULL, 30, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(1037, 6, NULL, NULL, 7, 180, NULL, 1, 7, '2025-08-20 07:36:01', '2025-08-20 07:36:01', NULL, 1, 19, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(1038, 6, NULL, NULL, 7, 180, NULL, 1, 7, '2025-08-20 07:36:01', '2025-08-20 07:36:01', NULL, 1, 19, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(1039, 6, NULL, NULL, 7, 180, NULL, 1, 7, '2025-08-20 07:36:02', '2025-08-20 07:36:02', NULL, 1, 19, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(1040, 6, NULL, NULL, 7, 180, NULL, 1, 7, '2025-08-20 07:36:02', '2025-08-20 07:36:02', NULL, 1, 19, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(1041, 5, NULL, NULL, 13, 177, NULL, 1, 7, '2025-08-20 07:36:03', '2025-08-20 07:36:03', NULL, 1, 19, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(1042, 1, NULL, NULL, 14, 168, NULL, 3, 7, '2025-08-20 07:36:07', '2025-08-20 07:36:07', NULL, 1, 20, NULL, 49, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(1043, 2, NULL, NULL, 14, 168, NULL, 3, 7, '2025-08-20 07:36:07', '2025-08-20 07:36:07', NULL, 1, 20, NULL, 4, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(1044, 4, NULL, NULL, 14, 168, NULL, 3, 7, '2025-08-20 07:36:08', '2025-08-20 07:36:08', NULL, 1, 20, NULL, 7, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(1045, 4, NULL, NULL, 14, 168, NULL, 3, 7, '2025-08-20 07:36:08', '2025-08-20 07:36:08', NULL, 1, 20, NULL, 8, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(1046, 6, NULL, NULL, 14, 168, NULL, 3, 7, '2025-08-20 07:36:09', '2025-08-20 07:36:09', NULL, 1, 20, NULL, 11, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(1047, 6, NULL, NULL, 14, 168, NULL, 3, 7, '2025-08-20 07:36:09', '2025-08-20 07:36:09', NULL, 1, 20, NULL, 12, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(1048, 4, NULL, NULL, 15, 181, NULL, 3, 7, '2025-08-20 07:36:13', '2025-08-20 07:36:13', NULL, 1, 20, NULL, 8, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(1049, 6, NULL, NULL, 17, 182, NULL, 3, 7, '2025-08-20 07:36:18', '2025-08-20 07:36:18', NULL, 1, 20, NULL, 11, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(1050, 16, NULL, NULL, 91, 196, NULL, 1, 7, '2025-08-20 07:36:28', '2025-08-20 07:36:28', NULL, 1, 19, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(1051, 12, NULL, NULL, 92, 195, NULL, 1, 7, '2025-08-20 07:36:29', '2025-08-20 07:36:29', NULL, 1, 19, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(1052, 26, NULL, NULL, 92, 192, NULL, 1, 7, '2025-08-20 07:36:31', '2025-08-20 07:36:31', NULL, 1, 19, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(1053, 26, NULL, NULL, 47, 242, NULL, 3, 7, '2025-08-20 07:36:42', '2025-08-20 07:36:42', NULL, 1, 20, NULL, 51, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(1054, 26, NULL, NULL, 47, 242, NULL, 3, 7, '2025-08-20 07:36:42', '2025-08-20 07:36:42', NULL, 1, 20, NULL, 52, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(1055, 12, NULL, NULL, 93, 181, NULL, 3, 7, '2025-08-20 07:36:43', '2025-08-20 07:36:43', NULL, 1, 20, NULL, 23, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(1056, 14, NULL, NULL, 93, 181, NULL, 3, 7, '2025-08-20 07:36:45', '2025-08-20 07:36:45', NULL, 1, 20, NULL, 27, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(1057, 17, NULL, NULL, 93, 181, NULL, 3, 7, '2025-08-20 07:36:46', '2025-08-20 07:36:46', NULL, 1, 20, NULL, 33, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(1058, 26, NULL, NULL, 93, 181, NULL, 3, 7, '2025-08-20 07:36:47', '2025-08-20 07:36:47', NULL, 1, 20, NULL, 51, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(1059, 26, NULL, NULL, 93, 181, NULL, 3, 7, '2025-08-20 07:36:48', '2025-08-20 07:36:48', NULL, 1, 20, NULL, 52, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(1060, 18, NULL, NULL, 68, 181, NULL, 2, 7, '2025-08-20 07:36:58', '2025-08-20 07:36:58', NULL, 1, 19, NULL, NULL, 18, NULL, NULL, 2, NULL, NULL, NULL),
(1061, 18, NULL, NULL, 68, 181, NULL, 2, 7, '2025-08-20 07:36:58', '2025-08-20 07:36:58', NULL, 1, 19, NULL, NULL, 18, NULL, 1060, 0, NULL, NULL, NULL),
(1062, 19, NULL, NULL, 68, 181, NULL, 2, 7, '2025-08-20 07:36:59', '2025-08-20 07:36:59', NULL, 1, 19, NULL, NULL, 19, NULL, NULL, 2, NULL, NULL, NULL),
(1063, 19, NULL, NULL, 68, 181, NULL, 2, 7, '2025-08-20 07:36:59', '2025-08-20 07:36:59', NULL, 1, 19, NULL, NULL, 19, NULL, 1062, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `periods`
--

CREATE TABLE `periods` (
  `id` int(10) UNSIGNED NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `start_hour` time DEFAULT NULL,
  `end_hour` time DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `establishment_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `overlap_ids` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `periods`
--

INSERT INTO `periods` (`id`, `designation`, `abbreviation`, `start_hour`, `end_hour`, `type`, `establishment_id`, `created_at`, `updated_at`, `deleted_at`, `overlap_ids`) VALUES
(1, 'S1', 'S1', '08:30:00', '10:30:00', 'session', 2, '2020-12-28 11:11:47', '2021-11-11 08:36:23', NULL, NULL),
(2, 'S2', 'S2', '10:45:00', '12:45:00', 'session', 2, '2020-12-28 11:12:08', '2021-11-11 08:37:04', NULL, NULL),
(3, 'S3', 'S3', '14:00:00', '16:00:00', 'session', 2, '2020-12-28 11:12:33', '2021-11-11 08:37:19', NULL, NULL),
(5, 'S4', 'S4', '16:15:00', '18:15:00', 'session', 2, '2020-12-28 11:14:33', '2021-11-11 08:37:57', NULL, NULL),
(6, 'S1', 'S1', '08:30:00', '10:00:00', 'session', 1, '2021-04-14 08:29:30', '2021-04-14 08:29:30', NULL, NULL),
(7, 'S2', 'S2', '10:10:00', '11:40:00', 'session', 1, '2021-04-14 08:29:44', '2021-04-14 08:29:44', NULL, NULL),
(8, 'S3', 'S3', '11:50:00', '13:20:00', 'session', 1, '2021-04-14 08:30:05', '2021-04-14 08:30:05', NULL, NULL),
(9, 'Break', 'Break', '13:20:00', '13:50:00', 'break', 1, '2021-04-14 08:30:27', '2021-04-14 08:31:39', NULL, NULL),
(10, 'S4', 'S4', '13:50:00', '15:20:00', 'session', 1, '2021-04-14 08:30:50', '2021-04-14 08:30:50', NULL, NULL),
(11, 'S5', 'S5', '15:30:00', '17:00:00', 'session', 1, '2021-04-14 08:31:09', '2021-04-14 08:31:09', NULL, NULL),
(12, 'S6', 'S6', '17:10:00', '18:40:00', 'session', 1, '2021-04-14 08:31:24', '2021-04-14 08:31:24', NULL, NULL),
(13, 'pause', 'pause', '12:00:00', '13:00:00', 'break', 2, '2021-11-12 08:50:13', '2021-11-12 08:50:13', NULL, NULL),
(14, 'S01', 'S01', '08:30:00', '10:00:00', 'session', 3, '2021-11-20 10:03:29', '2022-07-17 12:36:43', NULL, '[30]'),
(15, 'S02', 'S02', '10:15:00', '11:45:00', 'session', 3, '2021-11-20 10:04:10', '2022-07-17 12:36:57', NULL, '[30,31]'),
(16, 'S03', 'S03', '13:00:00', '14:30:00', 'session', 3, '2021-11-20 10:04:36', '2022-07-17 12:37:22', NULL, '[32]'),
(17, 'S04', 'S04', '14:45:00', '16:15:00', 'session', 3, '2021-11-20 10:05:00', '2022-07-17 12:37:33', NULL, '[32]'),
(18, 'S05', 'S05', '16:30:00', '18:00:00', 'session', 3, '2021-11-20 10:05:22', '2022-07-17 12:37:43', NULL, '[33]'),
(19, 'S1', 'S1', '08:30:00', '10:00:00', 'session', 4, '2022-03-08 13:32:18', '2022-03-08 13:32:18', NULL, NULL),
(20, 'S2', 'S2', '10:15:00', '11:45:00', 'session', 4, '2022-03-08 13:33:11', '2022-03-08 13:33:11', NULL, NULL),
(21, 's3', 's3', '12:00:00', '13:30:00', 'session', 4, '2022-03-08 13:33:54', '2022-03-08 13:34:28', NULL, NULL),
(22, 's4', 's4', '13:45:00', '15:15:00', 'session', 4, '2022-03-08 13:34:18', '2022-03-08 13:34:18', NULL, NULL),
(23, 's5', 's5', '15:30:00', '17:00:00', 'session', 4, '2022-03-08 13:34:49', '2022-03-08 13:34:49', NULL, NULL),
(24, 'Séance 1', 'S1', '08:30:00', '10:00:00', 'session', 5, '2022-03-14 09:58:13', '2022-03-14 09:58:13', NULL, NULL),
(25, 'Séance 2', 'S2', '10:15:00', '11:45:00', 'session', 5, '2022-03-14 09:58:43', '2022-03-14 09:58:43', NULL, NULL),
(26, 'Séance 3', 'S3', '12:00:00', '13:30:00', 'session', 5, '2022-03-14 09:59:34', '2022-03-14 09:59:34', NULL, NULL),
(27, 'Séance 4', 'S4', '13:00:00', '14:30:00', 'session', 5, '2022-03-14 09:59:56', '2022-03-14 09:59:56', NULL, NULL),
(28, 'Séance 5', 'S5', '14:45:00', '16:15:00', 'session', 5, '2022-03-14 10:00:14', '2022-03-14 10:00:14', NULL, NULL),
(29, 'Séance 6', 'S6', '16:30:00', '18:00:00', 'session', 5, '2022-03-14 10:00:53', '2022-03-14 10:00:53', NULL, NULL),
(30, 'S01(2)', 'S01', '08:30:00', '10:30:00', 'session2', 3, '2022-07-17 12:22:27', '2022-07-17 12:35:12', NULL, '[14,15]'),
(31, 'S02 (2)', 'S02', '10:45:00', '12:45:00', 'session2', 3, '2022-07-17 12:23:05', '2022-07-17 12:35:07', NULL, '[15]'),
(32, 'S03 (2)', 'S03', '14:00:00', '16:00:00', 'session2', 3, '2022-07-17 12:34:59', '2022-07-17 12:34:59', NULL, '[16,17]'),
(33, 'S04 (2)', 'S04', '16:15:00', '18:15:00', 'session2', 3, '2022-07-17 12:35:44', '2022-07-17 12:35:44', NULL, '[18]'),
(34, 'S1', 'S1', '08:30:00', '10:00:00', 'session', 6, '2024-01-02 07:06:47', '2024-03-18 07:49:14', NULL, NULL),
(35, 'S2', 'S2', '10:15:00', '11:45:00', 'session', 6, '2024-01-02 07:07:10', '2024-03-18 07:49:27', NULL, '[]'),
(36, 'S3', 'S3', '11:45:00', '13:15:00', 'session', 6, '2024-01-02 07:08:14', '2024-03-18 07:49:43', NULL, NULL),
(37, 'S4', 'S4', '13:30:00', '15:00:00', 'session', 6, '2024-01-02 07:08:35', '2024-03-18 07:49:57', NULL, NULL),
(38, 'S5', 'S5', '15:15:00', '16:45:00', 'session', 6, '2024-01-02 07:08:56', '2024-03-18 07:50:15', NULL, NULL),
(39, 'S6', 'S6', '16:45:00', '18:00:00', 'session', 6, '2024-01-02 07:09:25', '2024-03-18 07:50:36', NULL, NULL),
(40, 'S1', 'S1', '08:30:00', '10:00:00', 'session', 7, '2025-05-13 16:30:14', '2025-05-21 09:48:40', NULL, NULL),
(41, 'S2', 'S2', '10:00:00', '11:30:00', 'session', 7, '2025-05-13 16:30:34', '2025-05-21 09:48:48', NULL, NULL),
(43, 'Pause', 'Pause', '11:30:00', '12:30:00', 'break', 7, '2025-05-13 16:31:20', '2025-05-21 09:50:58', NULL, NULL),
(44, 'S3', 'S3', '12:30:00', '14:00:00', 'session', 7, '2025-05-13 16:31:36', '2025-05-21 09:51:22', NULL, NULL),
(45, 'S4', 'S4', '14:00:00', '15:30:00', 'session', 7, '2025-05-13 16:31:57', '2025-05-21 09:51:41', NULL, NULL),
(46, 'S5', 'S5', '15:30:00', '17:00:00', 'session', 7, '2025-05-13 16:32:17', '2025-05-21 09:53:27', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `regimes`
--

CREATE TABLE `regimes` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type_id` int(11) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `nb_hours` float DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `group_id` varchar(255) DEFAULT NULL,
  `classrooms` text DEFAULT NULL,
  `blocks` text DEFAULT NULL,
  `week_type_id` int(11) DEFAULT NULL,
  `equipments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regimes`
--

INSERT INTO `regimes` (`id`, `subject_id`, `subject_type_id`, `designation`, `abbreviation`, `nb_hours`, `tags`, `created_at`, `updated_at`, `deleted_at`, `teacher_id`, `group_id`, `classrooms`, `blocks`, `week_type_id`, `equipments`) VALUES
(455, 96, 1, NULL, NULL, 1.5, NULL, '2025-07-13 15:12:00', '2025-07-13 15:12:00', NULL, 196, '[11,12,13,14,15,16,17]', NULL, NULL, 19, NULL),
(549, 48, 1, NULL, NULL, 1.5, NULL, '2025-07-29 19:07:57', '2025-07-29 19:07:57', NULL, 149, '[11,12,13,14,15]', NULL, NULL, 19, NULL),
(552, 49, 1, NULL, NULL, 1.5, NULL, '2025-07-29 19:18:13', '2025-07-29 19:18:13', NULL, 226, '[11,12,13]', NULL, '[38]', 19, NULL),
(553, 49, 1, NULL, NULL, 1.5, NULL, '2025-07-29 19:18:13', '2025-07-29 19:18:13', NULL, 182, '[14,15,16,17,26]', NULL, '[38]', 19, NULL),
(566, 91, 1, NULL, NULL, 1.5, NULL, '2025-07-30 20:26:40', '2025-07-30 20:26:40', NULL, 196, '[11,12,13,14,15,16]', NULL, NULL, 19, NULL),
(567, 91, 1, NULL, NULL, 1.5, NULL, '2025-07-30 20:26:40', '2025-07-30 20:26:40', NULL, 180, '[17]', NULL, NULL, 19, NULL),
(568, 91, 1, NULL, NULL, 1.5, NULL, '2025-07-30 20:26:40', '2025-07-30 20:26:40', NULL, 144, '[26]', NULL, NULL, 19, NULL),
(585, 70, 1, NULL, NULL, 1.5, NULL, '2025-07-31 12:33:42', '2025-07-31 12:33:42', NULL, 155, '[18,19,20,21,22]', NULL, NULL, 19, NULL),
(586, 70, 1, NULL, NULL, 1.5, NULL, '2025-07-31 12:33:42', '2025-07-31 12:33:42', NULL, 221, '[23,24]', NULL, NULL, 19, NULL),
(588, 72, 1, NULL, NULL, 1.5, NULL, '2025-07-31 12:36:37', '2025-07-31 12:36:37', NULL, 137, '[18,19,20,21]', NULL, NULL, 19, NULL),
(589, 72, 1, NULL, NULL, 1.5, NULL, '2025-07-31 12:36:37', '2025-07-31 12:36:37', NULL, 144, '[22,23,24]', NULL, NULL, 19, NULL),
(590, 73, 1, NULL, NULL, 1.5, NULL, '2025-07-31 12:37:22', '2025-07-31 12:37:22', NULL, 159, '[18,19,20,21,22,23,24]', NULL, NULL, 19, NULL),
(593, 75, 1, NULL, NULL, 1.5, NULL, '2025-07-31 12:44:50', '2025-07-31 12:44:50', NULL, 161, '[18,19,20,21,22,24]', NULL, NULL, 19, NULL),
(594, 75, 1, NULL, NULL, 1.5, NULL, '2025-07-31 12:44:50', '2025-07-31 12:44:50', NULL, 249, '[23,24]', NULL, NULL, 19, NULL),
(599, 77, 1, NULL, NULL, 1.5, NULL, '2025-07-31 13:00:26', '2025-07-31 13:00:26', NULL, 166, '[23,24]', NULL, NULL, 19, NULL),
(600, 77, 1, NULL, NULL, 1.5, NULL, '2025-07-31 13:00:26', '2025-07-31 13:00:26', NULL, 141, '[18,19,20,21,22]', NULL, NULL, NULL, NULL),
(601, 78, 1, NULL, NULL, 1.5, NULL, '2025-07-31 13:11:40', '2025-07-31 13:11:40', NULL, 189, '[18,19,20,21,22]', NULL, NULL, 19, NULL),
(602, 78, 1, NULL, NULL, 1.5, NULL, '2025-07-31 13:11:40', '2025-07-31 13:11:40', NULL, 184, '[23,24]', NULL, NULL, 19, NULL),
(605, 80, 1, NULL, NULL, 1.5, NULL, '2025-07-31 13:18:54', '2025-07-31 13:18:54', NULL, 139, '[18,19,20,21,22,23,24]', NULL, NULL, 19, NULL),
(611, 42, 1, NULL, NULL, 1.5, NULL, '2025-08-05 06:24:45', '2025-08-05 06:24:45', NULL, 158, '[11,12,13,14]', NULL, NULL, 19, NULL),
(612, 42, 1, NULL, NULL, 1.5, NULL, '2025-08-05 06:24:45', '2025-08-05 06:24:45', NULL, 146, '[15,16,17,26]', NULL, NULL, 19, NULL),
(620, 21, 1, NULL, NULL, 1.5, NULL, '2025-08-08 18:45:32', '2025-08-08 18:45:32', NULL, 156, '[1,2,3,4,5,6]', NULL, NULL, 19, NULL),
(633, 28, 1, NULL, NULL, 1.5, NULL, '2025-08-09 05:26:40', '2025-08-09 05:26:40', NULL, 184, '[1,2,3,4]', NULL, NULL, 19, NULL),
(634, 28, 1, NULL, NULL, 1.5, NULL, '2025-08-09 05:26:40', '2025-08-09 05:26:40', NULL, 189, '[5,6]', NULL, NULL, 19, NULL),
(654, 33, 1, NULL, NULL, 1.5, NULL, '2025-08-09 06:26:16', '2025-08-09 06:26:16', NULL, 166, '[1]', NULL, '[40]', 19, NULL),
(655, 33, 1, NULL, NULL, 1.5, NULL, '2025-08-09 06:26:16', '2025-08-09 06:26:16', NULL, 139, '[2,3,4,5,6]', NULL, '[40]', 19, NULL),
(657, 18, 1, NULL, NULL, 1.5, NULL, '2025-08-09 06:31:36', '2025-08-09 06:31:36', NULL, 228, '[1,2,3,4,5,6,7,8,9,10]', NULL, NULL, 20, NULL),
(658, 34, 1, NULL, NULL, 0.75, NULL, '2025-08-09 06:31:47', '2025-08-09 06:31:47', NULL, 228, '[1,2,3,4,5,6,7,8,9,10]', NULL, NULL, 20, NULL),
(664, 11, 1, NULL, NULL, 1.5, NULL, '2025-08-09 06:44:05', '2025-08-09 06:44:05', NULL, 156, '[1,2,3,4,5,6]', NULL, NULL, 19, NULL),
(665, 27, 1, NULL, NULL, 1.5, NULL, '2025-08-09 06:53:20', '2025-08-09 06:53:20', NULL, 145, '[4,5,6]', NULL, NULL, 19, NULL),
(666, 27, 1, NULL, NULL, 1.5, NULL, '2025-08-09 06:53:20', '2025-08-09 06:53:20', NULL, 200, '[1,2,3]', NULL, NULL, 19, NULL),
(669, 53, 1, NULL, NULL, 1.5, NULL, '2025-08-09 13:15:33', '2025-08-09 13:15:33', NULL, 201, '[14,15,16]', NULL, NULL, 19, NULL),
(670, 53, 1, NULL, NULL, 1.5, NULL, '2025-08-09 13:15:33', '2025-08-09 13:15:33', NULL, 219, '[17,26]', NULL, NULL, 19, NULL),
(671, 53, 1, NULL, NULL, 1.5, NULL, '2025-08-09 13:15:33', '2025-08-09 13:15:33', NULL, 213, '[11,12,13]', NULL, NULL, 19, NULL),
(677, 54, 1, NULL, NULL, 1.5, NULL, '2025-08-09 13:38:23', '2025-08-09 13:38:23', NULL, 185, '[11,12,13,14,15,16]', NULL, NULL, 19, NULL),
(678, 54, 1, NULL, NULL, 1.5, NULL, '2025-08-09 13:38:23', '2025-08-09 13:38:23', NULL, 208, '[17,26]', NULL, NULL, 19, NULL),
(682, 55, 1, NULL, NULL, 1.5, NULL, '2025-08-09 13:43:38', '2025-08-09 13:43:38', NULL, 160, '[11,12,13,14]', NULL, NULL, 19, NULL),
(683, 55, 1, NULL, NULL, 1.5, NULL, '2025-08-09 13:43:38', '2025-08-09 13:43:38', NULL, 184, '[17,26]', NULL, NULL, 19, NULL),
(684, 55, 1, NULL, NULL, 1.5, NULL, '2025-08-09 13:43:38', '2025-08-09 13:43:38', NULL, 189, '[15,16]', NULL, NULL, 19, NULL),
(690, 41, 1, NULL, NULL, 1.5, NULL, '2025-08-09 13:59:45', '2025-08-09 13:59:45', NULL, 170, '[11,12,13,14,15,16,17,26]', NULL, NULL, 19, NULL),
(698, 56, 1, NULL, NULL, 1.5, NULL, '2025-08-09 14:06:50', '2025-08-09 14:06:50', NULL, 256, '[15,16,17]', NULL, NULL, 19, NULL),
(699, 56, 1, NULL, NULL, 1.5, NULL, '2025-08-09 14:06:50', '2025-08-09 14:06:50', NULL, 169, '[11,12,13,14,17]', NULL, NULL, 19, NULL),
(700, 56, 1, NULL, NULL, 1.5, NULL, '2025-08-09 14:06:50', '2025-08-09 14:06:50', NULL, 257, '[26]', NULL, NULL, 19, NULL),
(705, 90, 1, NULL, NULL, 1.5, NULL, '2025-08-09 14:10:56', '2025-08-09 14:10:56', NULL, 194, '[11,12,13,14]', NULL, NULL, 19, NULL),
(706, 90, 1, NULL, NULL, 1.5, NULL, '2025-08-09 14:10:56', '2025-08-09 14:10:56', NULL, 221, '[15,16,17,26]', NULL, NULL, 19, NULL),
(709, 57, 1, NULL, NULL, 1.5, NULL, '2025-08-10 07:09:09', '2025-08-10 07:09:09', NULL, 194, '[11,12,13,14]', NULL, NULL, 19, NULL),
(710, 57, 1, NULL, NULL, 1.5, NULL, '2025-08-10 07:09:09', '2025-08-10 07:09:09', NULL, 221, '[15,16,17,26]', NULL, NULL, 19, NULL),
(711, 58, 1, NULL, NULL, 1.5, NULL, '2025-08-10 07:11:42', '2025-08-10 07:11:42', NULL, 158, '[11,12,13,14]', NULL, NULL, 19, NULL),
(712, 58, 1, NULL, NULL, 1.5, NULL, '2025-08-10 07:11:42', '2025-08-10 07:11:42', NULL, 146, '[15,16,17,26]', NULL, NULL, 19, NULL),
(725, 60, 1, NULL, NULL, 1.5, NULL, '2025-08-10 07:47:40', '2025-08-10 07:47:40', NULL, 149, '[11,12,13,14,15]', NULL, NULL, 19, NULL),
(726, 60, 1, NULL, NULL, 1.5, NULL, '2025-08-10 07:47:40', '2025-08-10 07:47:40', NULL, 217, '[16,17,26]', NULL, NULL, 19, NULL),
(728, 61, 1, NULL, NULL, 1.5, NULL, '2025-08-10 07:51:51', '2025-08-10 07:51:51', NULL, 159, '[11,12,13,14,15,16,17,26]', NULL, NULL, 19, NULL),
(730, 63, 3, NULL, NULL, 0.75, NULL, '2025-08-10 07:53:43', '2025-08-10 07:53:43', NULL, 182, '[21,22,23,24,25,26,27,28,29,30,31,32,33,34,51,52]', NULL, '[38]', 19, NULL),
(731, 50, 1, NULL, NULL, 1.5, NULL, '2025-08-10 07:59:48', '2025-08-10 07:59:48', NULL, 218, '[17,26]', NULL, '[40]', 19, NULL),
(732, 50, 1, NULL, NULL, 1.5, NULL, '2025-08-10 07:59:48', '2025-08-10 07:59:48', NULL, 188, '[11,12,13,14,15,16]', NULL, NULL, 19, NULL),
(763, 44, 1, NULL, NULL, 0.75, NULL, '2025-08-10 08:53:43', '2025-08-10 08:53:43', NULL, 227, '[11,12,13,14,15,16,17,26]', NULL, NULL, 20, NULL),
(764, 92, 1, NULL, NULL, 0.75, NULL, '2025-08-10 08:55:29', '2025-08-10 08:55:29', NULL, 195, '[11,12,13]', NULL, NULL, 19, NULL),
(765, 92, 1, NULL, NULL, 0.75, NULL, '2025-08-10 08:55:29', '2025-08-10 08:55:29', NULL, 192, '[14,15,16,17,26]', NULL, NULL, 19, NULL),
(767, 101, 1, NULL, NULL, 0.75, NULL, '2025-08-10 09:02:38', '2025-08-10 09:02:38', NULL, 195, '[11,12,13,14,15,16,17,26]', NULL, NULL, 20, NULL),
(768, 59, 1, NULL, NULL, 0.75, NULL, '2025-08-10 09:02:52', '2025-08-10 09:02:52', NULL, 195, '[11,12,13,14,15,16,17,26]', NULL, NULL, 20, NULL),
(769, 81, 1, NULL, NULL, 1.5, NULL, '2025-08-10 09:10:58', '2025-08-10 09:10:58', NULL, 155, '[18,19,20,21]', NULL, NULL, 19, NULL),
(770, 81, 1, NULL, NULL, 1.5, NULL, '2025-08-10 09:10:58', '2025-08-10 09:10:58', NULL, 221, '[22,23]', NULL, NULL, 19, NULL),
(771, 81, 1, NULL, NULL, 1.5, NULL, '2025-08-10 09:10:58', '2025-08-10 09:10:58', NULL, 170, '[24]', NULL, NULL, 19, NULL),
(782, 85, 3, NULL, NULL, 0.75, NULL, '2025-08-10 09:30:01', '2025-08-10 09:30:01', NULL, 179, '[35,36,37,38,39,40,41,42,43,44,45,46,47,48]', NULL, NULL, 20, NULL),
(813, 88, 1, NULL, NULL, 1.5, NULL, '2025-08-10 18:10:57', '2025-08-10 18:10:57', NULL, 226, '[23,24]', NULL, NULL, 19, NULL),
(814, 88, 1, NULL, NULL, 1.5, NULL, '2025-08-10 18:10:57', '2025-08-10 18:10:57', NULL, 141, '[18,19,20,21,22]', NULL, NULL, 19, NULL),
(826, 8, 1, NULL, NULL, 1.5, NULL, '2025-08-12 18:26:40', '2025-08-12 18:26:40', NULL, 184, '[1,2,3,4]', NULL, NULL, 19, NULL),
(827, 8, 1, NULL, NULL, 1.5, NULL, '2025-08-12 18:26:40', '2025-08-12 18:26:40', NULL, 189, '[5,6]', NULL, NULL, 19, NULL),
(828, 9, 1, NULL, NULL, 0.75, NULL, '2025-08-12 18:29:09', '2025-08-12 18:29:09', NULL, 227, '[1,2,3,4,5,6,7,8,9,10]', NULL, NULL, 20, NULL),
(829, 10, 1, NULL, NULL, 0.75, NULL, '2025-08-12 18:29:23', '2025-08-12 18:29:23', NULL, 192, '[1,2,3,4,5,6,7,8,9,10]', NULL, NULL, 20, NULL),
(830, 22, 1, NULL, NULL, 1.5, NULL, '2025-08-12 18:30:13', '2025-08-12 18:30:13', NULL, 157, '[1,2,3,4,5]', NULL, NULL, 19, NULL),
(831, 22, 1, NULL, NULL, 1.5, NULL, '2025-08-12 18:30:13', '2025-08-12 18:30:13', NULL, 167, '[6]', NULL, NULL, 19, NULL),
(832, 3, 1, NULL, NULL, 1.5, NULL, '2025-08-12 18:33:02', '2025-08-12 18:33:02', NULL, 157, '[1,2,3,4,5,6]', NULL, NULL, 19, NULL),
(839, 89, 1, NULL, NULL, 1.5, NULL, '2025-08-13 07:17:58', '2025-08-13 07:17:58', NULL, 273, '[11,12]', NULL, NULL, 19, NULL),
(840, 89, 1, NULL, NULL, 1.5, NULL, '2025-08-13 07:17:58', '2025-08-13 07:17:58', NULL, 264, '[13,14,15,16,17,26]', NULL, NULL, 19, NULL),
(841, 71, 1, NULL, NULL, 1.5, NULL, '2025-08-13 07:19:02', '2025-08-13 07:19:02', NULL, 162, '[18,19,20,21]', NULL, NULL, 19, NULL),
(842, 71, 1, NULL, NULL, 1.5, NULL, '2025-08-13 07:19:02', '2025-08-13 07:19:02', NULL, 224, '[22,23,24]', NULL, NULL, 19, NULL),
(847, 97, 1, NULL, NULL, 1.5, NULL, '2025-08-13 07:23:37', '2025-08-13 07:23:37', NULL, 264, '[11,12,13,14,15,16]', NULL, NULL, 19, NULL),
(848, 97, 1, NULL, NULL, 1.5, NULL, '2025-08-13 07:23:37', '2025-08-13 07:23:37', NULL, 273, '[17,26]', NULL, NULL, 19, NULL),
(849, 82, 1, NULL, NULL, 1.5, NULL, '2025-08-13 07:24:29', '2025-08-13 07:24:29', NULL, 162, '[18,19,20,21]', NULL, NULL, 19, NULL),
(850, 82, 1, NULL, NULL, 1.5, NULL, '2025-08-13 07:24:29', '2025-08-13 07:24:29', NULL, 259, '[22,23,24]', NULL, NULL, 19, NULL),
(857, 24, 1, NULL, NULL, 3, NULL, '2025-08-13 07:47:53', '2025-08-13 07:47:53', NULL, 190, '[1,2,3]', NULL, NULL, 19, NULL),
(858, 24, 1, NULL, NULL, 3, NULL, '2025-08-13 07:47:53', '2025-08-13 07:47:53', NULL, 263, '[4,5,6]', NULL, NULL, 19, NULL),
(859, 25, 1, NULL, NULL, 3, NULL, '2025-08-13 07:48:03', '2025-08-13 07:48:03', NULL, 230, '[1,2]', NULL, NULL, 19, NULL),
(860, 25, 1, NULL, NULL, 3, NULL, '2025-08-13 07:48:03', '2025-08-13 07:48:03', NULL, 180, '[3,4,5,6]', NULL, NULL, 19, NULL),
(861, 23, 1, NULL, NULL, 3, NULL, '2025-08-13 07:48:17', '2025-08-13 07:48:17', NULL, 194, '[1]', NULL, NULL, 19, NULL),
(862, 23, 1, NULL, NULL, 3, NULL, '2025-08-13 07:48:17', '2025-08-13 07:48:17', NULL, 140, '[2,3]', NULL, NULL, 19, NULL),
(863, 23, 1, NULL, NULL, 3, NULL, '2025-08-13 07:48:17', '2025-08-13 07:48:17', NULL, 193, '[4,5,6]', NULL, NULL, 19, NULL),
(866, 5, 1, NULL, NULL, 3, NULL, '2025-08-13 07:48:57', '2025-08-13 07:48:57', NULL, 194, '[1]', NULL, NULL, 19, NULL),
(867, 5, 1, NULL, NULL, 3, NULL, '2025-08-13 07:48:57', '2025-08-13 07:48:57', NULL, 193, '[2,3,4]', NULL, NULL, 19, NULL),
(868, 5, 1, NULL, NULL, 3, NULL, '2025-08-13 07:48:57', '2025-08-13 07:48:57', NULL, 140, '[5,6]', NULL, NULL, 19, NULL),
(869, 5, 1, NULL, NULL, 3, NULL, '2025-08-13 07:48:57', '2025-08-13 07:48:57', NULL, 140, '[8,9,10]', NULL, NULL, 19, NULL),
(870, 6, 1, NULL, NULL, 3, NULL, '2025-08-13 07:49:03', '2025-08-13 07:49:03', NULL, 190, '[1,2,3]', NULL, NULL, 19, NULL),
(871, 6, 1, NULL, NULL, 3, NULL, '2025-08-13 07:49:03', '2025-08-13 07:49:03', NULL, 263, '[4,5,6]', NULL, NULL, 19, NULL),
(872, 7, 1, NULL, NULL, 3, NULL, '2025-08-13 07:49:11', '2025-08-13 07:49:11', NULL, 180, '[3,4,5,6]', NULL, NULL, 19, NULL),
(873, 7, 1, NULL, NULL, 3, NULL, '2025-08-13 07:49:11', '2025-08-13 07:49:11', NULL, 230, '[1,2]', NULL, NULL, 19, NULL),
(874, 40, 1, NULL, NULL, 1.5, NULL, '2025-08-13 07:54:45', '2025-08-13 07:54:45', NULL, 169, '[11,12,13,14]', NULL, NULL, 19, NULL),
(875, 40, 1, NULL, NULL, 1.5, NULL, '2025-08-13 07:54:45', '2025-08-13 07:54:45', NULL, 256, '[15,16,17,26]', NULL, NULL, 19, NULL),
(878, 20, 1, NULL, NULL, 1.5, NULL, '2025-08-13 08:06:54', '2025-08-13 08:06:54', NULL, 222, '[1,2,3]', NULL, NULL, 19, NULL),
(879, 20, 1, NULL, NULL, 1.5, NULL, '2025-08-13 08:06:54', '2025-08-13 08:06:54', NULL, 203, '[4,5,6]', NULL, NULL, 19, NULL),
(899, 2, 1, NULL, NULL, 1.5, NULL, '2025-08-14 06:17:25', '2025-08-14 06:17:25', NULL, 185, '[1,2,3,4,5,6,7,8,9,10]', NULL, NULL, 19, NULL),
(900, 83, 1, NULL, NULL, 1.5, NULL, '2025-08-14 07:44:47', '2025-08-14 07:44:47', NULL, 137, '[18,19,20,21]', NULL, NULL, 19, NULL),
(901, 83, 1, NULL, NULL, 1.5, NULL, '2025-08-14 07:44:47', '2025-08-14 07:44:47', NULL, 144, '[22,23,24]', NULL, NULL, 19, NULL),
(928, 64, 3, NULL, NULL, 0.75, NULL, '2025-08-14 09:23:51', '2025-08-14 09:23:51', NULL, 218, '[31,32,33]', NULL, '[40]', 19, NULL),
(929, 64, 3, NULL, NULL, 0.75, NULL, '2025-08-14 09:23:51', '2025-08-14 09:23:51', NULL, 188, '[21,22,23,24,25,26,27,28,29]', NULL, '[40]', 19, NULL),
(930, 64, 3, NULL, NULL, 0.75, NULL, '2025-08-14 09:23:51', '2025-08-14 09:23:51', NULL, 206, '[34,51,52]', NULL, NULL, 19, NULL),
(931, 26, 1, NULL, NULL, 1.5, NULL, '2025-08-14 09:44:32', '2025-08-14 09:44:32', NULL, 227, '[1,2,3,4,5,6]', NULL, NULL, 20, NULL),
(956, 93, 3, NULL, NULL, 0.75, NULL, '2025-08-14 16:57:48', '2025-08-14 16:57:48', NULL, 181, '[21,22,23,24,25,26,27,28,29,30,31,32,33,34,51,52]', NULL, '[36]', 20, NULL),
(961, 94, 1, NULL, NULL, 1.5, NULL, '2025-08-14 17:24:07', '2025-08-14 17:24:07', NULL, 192, '[1,2,3,4,5,6,7,8,9,10]', NULL, NULL, 20, NULL),
(968, 52, 1, NULL, NULL, 1.5, NULL, '2025-08-14 17:28:22', '2025-08-14 17:28:22', NULL, 255, '[11,12,13,14,17]', NULL, NULL, 19, NULL),
(969, 52, 1, NULL, NULL, 1.5, NULL, '2025-08-14 17:28:22', '2025-08-14 17:28:22', NULL, 210, '[15,16,17,26]', NULL, NULL, 19, NULL),
(970, 68, 2, NULL, NULL, 3, NULL, '2025-08-14 17:29:06', '2025-08-14 17:29:06', NULL, 260, '[22]', NULL, '[34]', 19, NULL),
(971, 68, 2, NULL, NULL, 3, NULL, '2025-08-14 17:29:06', '2025-08-14 17:29:06', NULL, 223, '[21]', NULL, '[34]', 19, NULL),
(972, 68, 2, NULL, NULL, 3, NULL, '2025-08-14 17:29:06', '2025-08-14 17:29:06', NULL, 207, '[20]', NULL, '[34]', 19, NULL),
(973, 68, 2, NULL, NULL, 3, NULL, '2025-08-14 17:29:06', '2025-08-14 17:29:06', NULL, 181, '[18,19]', NULL, '[34]', 19, NULL),
(974, 68, 2, NULL, NULL, 3, NULL, '2025-08-14 17:29:06', '2025-08-14 17:29:06', NULL, 261, '[23]', NULL, '[34]', 19, NULL),
(975, 68, 1, NULL, NULL, 3, NULL, '2025-08-14 17:29:06', '2025-08-14 17:29:06', NULL, 262, '[24]', NULL, NULL, 19, NULL),
(976, 87, 2, NULL, NULL, 3, NULL, '2025-08-14 17:29:52', '2025-08-14 17:29:52', NULL, 198, '[22]', NULL, '[]', 19, NULL),
(977, 87, 2, NULL, NULL, 3, NULL, '2025-08-14 17:29:52', '2025-08-14 17:29:52', NULL, 223, '[21]', NULL, '[]', 19, NULL),
(978, 87, 2, NULL, NULL, 3, NULL, '2025-08-14 17:29:52', '2025-08-14 17:29:52', NULL, 207, '[20]', NULL, '[]', 19, NULL),
(979, 87, 2, NULL, NULL, 3, NULL, '2025-08-14 17:29:52', '2025-08-14 17:29:52', NULL, 181, '[18,19]', NULL, '[]', 19, NULL),
(980, 87, 2, NULL, NULL, 3, NULL, '2025-08-14 17:29:52', '2025-08-14 17:29:52', NULL, 252, '[23]', NULL, '[]', 19, NULL),
(981, 87, 2, NULL, NULL, 3, NULL, '2025-08-14 17:29:52', '2025-08-14 17:29:52', NULL, 261, '[24]', NULL, NULL, 19, NULL),
(982, 74, 1, NULL, NULL, 1.5, NULL, '2025-08-14 17:55:03', '2025-08-14 17:55:03', NULL, 160, '[18,19,20]', NULL, NULL, 19, NULL),
(983, 74, 1, NULL, NULL, 1.5, NULL, '2025-08-14 17:55:03', '2025-08-14 17:55:03', NULL, 167, '[21,22,23,24]', NULL, NULL, 19, NULL),
(984, 84, 1, NULL, NULL, 1.5, NULL, '2025-08-14 17:55:18', '2025-08-14 17:55:18', NULL, 160, '[18,19,20]', NULL, NULL, 19, NULL),
(985, 84, 1, NULL, NULL, 1.5, NULL, '2025-08-14 17:55:18', '2025-08-14 17:55:18', NULL, 167, '[21,22,23,24]', NULL, NULL, 19, NULL),
(986, 66, 1, NULL, NULL, 1.5, NULL, '2025-08-14 18:01:16', '2025-08-14 18:01:16', NULL, 256, '[21,22,23,24]', NULL, NULL, 19, NULL),
(987, 66, 1, NULL, NULL, 1.5, NULL, '2025-08-14 18:01:16', '2025-08-14 18:01:16', NULL, 257, '[18,19,20]', NULL, NULL, 19, NULL),
(988, 67, 1, NULL, NULL, 1.5, NULL, '2025-08-14 18:02:21', '2025-08-14 18:02:21', NULL, 245, '[18,19,20,21]', NULL, NULL, 19, NULL),
(989, 67, 1, NULL, NULL, 1.5, NULL, '2025-08-14 18:02:21', '2025-08-14 18:02:21', NULL, 258, '[22,23,24]', NULL, NULL, 19, NULL),
(990, 69, 1, NULL, NULL, 1.5, NULL, '2025-08-14 18:03:42', '2025-08-14 18:03:42', NULL, 145, '[18,19,20,21,22,23,24]', NULL, NULL, 19, NULL),
(991, 86, 1, NULL, NULL, 1.5, NULL, '2025-08-14 18:04:34', '2025-08-14 18:04:34', NULL, 161, '[18,19,20,21,22]', NULL, NULL, 19, NULL),
(992, 86, 1, NULL, NULL, 1.5, NULL, '2025-08-14 18:04:34', '2025-08-14 18:04:34', NULL, 249, '[23,24]', NULL, NULL, 19, NULL),
(993, 76, 1, NULL, NULL, 1.5, NULL, '2025-08-14 18:05:11', '2025-08-14 18:05:11', NULL, 250, '[18,19,20]', NULL, NULL, 19, NULL),
(994, 76, 1, NULL, NULL, 1.5, NULL, '2025-08-14 18:05:11', '2025-08-14 18:05:11', NULL, 210, '[21,22,23,24]', NULL, NULL, 19, NULL),
(1002, 37, 1, NULL, NULL, 1.5, NULL, '2025-08-14 18:15:19', '2025-08-14 18:15:19', NULL, 213, '[11,12,13]', NULL, NULL, 19, NULL),
(1003, 37, 1, NULL, NULL, 1.5, NULL, '2025-08-14 18:15:19', '2025-08-14 18:15:19', NULL, 219, '[14,15,16]', NULL, NULL, 19, NULL),
(1004, 37, 1, NULL, NULL, 1.5, NULL, '2025-08-14 18:15:19', '2025-08-14 18:15:19', NULL, 276, '[17,26]', NULL, NULL, 19, NULL),
(1007, 39, 1, NULL, NULL, 1.5, NULL, '2025-08-14 18:19:39', '2025-08-14 18:19:39', NULL, 200, '[11,12,13]', NULL, NULL, 19, NULL),
(1008, 39, 1, NULL, NULL, 1.5, NULL, '2025-08-14 18:19:39', '2025-08-14 18:19:39', NULL, 250, '[14,15]', NULL, NULL, 19, NULL),
(1009, 39, 1, NULL, NULL, 1.5, NULL, '2025-08-14 18:19:39', '2025-08-14 18:19:39', NULL, 210, '[16,17,26]', NULL, NULL, 19, NULL),
(1010, 1, 1, NULL, NULL, 1.5, NULL, '2025-08-16 07:30:59', '2025-08-16 07:30:59', NULL, 222, '[1,2,3]', NULL, NULL, 19, NULL),
(1011, 1, 1, NULL, NULL, 1.5, NULL, '2025-08-16 07:30:59', '2025-08-16 07:30:59', NULL, 268, '[4,5,6]', NULL, NULL, 19, NULL),
(1014, 32, 1, NULL, NULL, 1.5, NULL, '2025-08-17 15:57:51', '2025-08-17 15:57:51', NULL, 177, '[1,2,3,4,5]', NULL, NULL, 19, NULL),
(1015, 32, 1, NULL, NULL, 1.5, NULL, '2025-08-17 15:57:51', '2025-08-17 15:57:51', NULL, 254, '[6]', NULL, NULL, 19, NULL),
(1021, 38, 3, NULL, NULL, 0.75, NULL, '2025-08-17 18:21:28', '2025-08-17 18:21:28', NULL, 171, '[21,22,23,24,25,26,27,28]', NULL, '[35]', 19, NULL),
(1022, 38, 3, NULL, NULL, 0.75, NULL, '2025-08-17 18:21:28', '2025-08-17 18:21:28', NULL, 174, '[29,30,31,32,33,34,51,52]', '[]', NULL, 19, NULL),
(1028, 102, 3, NULL, NULL, 0.75, NULL, '2025-08-17 18:37:43', '2025-08-17 18:37:43', NULL, 173, '[35,36,37,38]', NULL, '[35]', 19, NULL),
(1029, 102, 3, NULL, NULL, 0.75, NULL, '2025-08-17 18:37:43', '2025-08-17 18:37:43', NULL, 143, '[39,40,41,42,43,44,45,46]', NULL, '[35]', 19, NULL),
(1030, 102, 3, NULL, NULL, 0.75, NULL, '2025-08-17 18:37:43', '2025-08-17 18:37:43', NULL, 174, '[47,48]', NULL, '[35]', 19, NULL),
(1031, 79, 3, NULL, NULL, 0.75, NULL, '2025-08-17 18:37:51', '2025-08-17 18:37:51', NULL, 143, '[35,36,37,38,39,40,41,42,43,44]', NULL, '[35]', 19, NULL),
(1032, 79, 3, NULL, NULL, 0.75, NULL, '2025-08-17 18:37:51', '2025-08-17 18:37:51', NULL, 173, '[45,46,47,48]', NULL, '[35]', 19, NULL),
(1033, 51, 1, NULL, NULL, 1.5, NULL, '2025-08-17 19:30:32', '2025-08-17 19:30:32', NULL, 152, '[11,12,13,14]', NULL, '[40]', 19, NULL),
(1034, 51, 1, NULL, NULL, 1.5, NULL, '2025-08-17 19:30:32', '2025-08-17 19:30:32', NULL, 166, '[15,16,17,26]', NULL, '[40]', 19, NULL),
(1035, 51, 1, NULL, NULL, 1.5, NULL, '2025-08-17 19:30:32', '2025-08-17 19:30:32', NULL, 187, '[]', NULL, '[40]', 19, NULL),
(1036, 65, 3, NULL, NULL, 0.75, NULL, '2025-08-17 19:32:13', '2025-08-17 19:32:13', NULL, 152, '[21,22,23,24,25,26,27,28,29,30]', NULL, '[40]', 19, NULL),
(1037, 65, 3, NULL, NULL, 0.75, NULL, '2025-08-17 19:32:13', '2025-08-17 19:32:13', NULL, 166, '[31,32,33,34,51,52]', NULL, '[40]', 19, NULL),
(1056, 14, 3, NULL, NULL, 0.75, NULL, '2025-08-17 20:39:44', '2025-08-17 20:39:44', NULL, 168, '[1,2,4,5,6,7,8,9,10,11,12,49]', '[]', NULL, 20, NULL),
(1059, 15, 3, NULL, NULL, 0.75, NULL, '2025-08-17 20:41:41', '2025-08-17 20:41:41', NULL, 181, '[1,2,4,5,6,7,8,9,10,49]', '[]', NULL, 20, NULL),
(1060, 15, 3, NULL, NULL, 0.75, NULL, '2025-08-17 20:41:41', '2025-08-17 20:41:41', NULL, 262, '[11,12]', '[]', NULL, 20, NULL),
(1061, 16, 1, NULL, NULL, 1.5, NULL, '2025-08-17 20:42:51', '2025-08-17 20:42:51', NULL, 204, '[4,5]', NULL, '[37]', 19, NULL),
(1062, 16, 1, NULL, NULL, 1.5, NULL, '2025-08-17 20:42:51', '2025-08-17 20:42:51', NULL, 265, '[1,2,3]', NULL, '[37]', 19, NULL),
(1063, 16, 1, NULL, NULL, 1.5, NULL, '2025-08-17 20:42:51', '2025-08-17 20:42:51', NULL, 220, '[6,7]', NULL, '[37]', 19, NULL),
(1064, 16, 3, NULL, NULL, 0.75, NULL, '2025-08-17 20:42:51', '2025-08-17 20:42:51', NULL, 204, '[7,8,9,10]', NULL, '[37]', 19, NULL),
(1065, 16, 3, NULL, NULL, 0.75, NULL, '2025-08-17 20:42:51', '2025-08-17 20:42:51', NULL, 265, '[1,2,4,5,6,49]', NULL, '[37]', 19, NULL),
(1066, 16, 3, NULL, NULL, 0.75, NULL, '2025-08-17 20:42:51', '2025-08-17 20:42:51', NULL, 220, '[11,12,13,14,15,16,17,18,19,20]', NULL, '[37]', 19, NULL),
(1068, 19, 3, NULL, NULL, 0.75, NULL, '2025-08-17 20:44:16', '2025-08-17 20:44:16', NULL, 174, '[11,12,49]', NULL, '[35]', 19, NULL),
(1069, 19, 3, NULL, NULL, 0.75, NULL, '2025-08-17 20:44:16', '2025-08-17 20:44:16', NULL, 173, '[1,2,49]', NULL, '[35]', 19, NULL),
(1070, 19, 3, NULL, NULL, 0.75, NULL, '2025-08-17 20:44:16', '2025-08-17 20:44:16', NULL, 171, '[4,5,6,7,8,9,10]', NULL, '[35]', 19, NULL),
(1073, 31, 3, NULL, NULL, 0.75, NULL, '2025-08-17 20:45:01', '2025-08-17 20:45:01', NULL, 168, '[1,2,4,5,6,7,8,9,10,11,12,49]', NULL, '[36]', 20, NULL),
(1074, 35, 3, NULL, NULL, 0.75, NULL, '2025-08-17 20:45:16', '2025-08-17 20:45:16', NULL, 182, '[11,12]', NULL, '[38]', 20, NULL),
(1075, 35, 3, NULL, NULL, 0.75, NULL, '2025-08-17 20:45:16', '2025-08-17 20:45:16', NULL, 226, '[1,2,4,5,6,7,8,9,10,49]', NULL, '[38]', 20, NULL),
(1076, 95, 3, NULL, NULL, 0.75, NULL, '2025-08-17 20:45:30', '2025-08-17 20:45:30', NULL, 181, '[1,2,4,5,6,7,8,9,10,49]', NULL, '[36]', 20, NULL),
(1077, 95, 3, NULL, NULL, 0.75, NULL, '2025-08-17 20:45:30', '2025-08-17 20:45:30', NULL, 262, '[11,12]', NULL, '[36]', 20, NULL),
(1078, 4, 3, NULL, NULL, 0.75, NULL, '2025-08-17 20:58:03', '2025-08-17 20:58:03', NULL, 173, '[1,2,4,5,6,7,8,49]', '[377]', NULL, 19, NULL),
(1079, 4, 3, NULL, NULL, 0.75, NULL, '2025-08-17 20:58:03', '2025-08-17 20:58:03', NULL, 171, '[9,10,11,12]', '[378]', NULL, 19, NULL),
(1081, 45, 1, NULL, NULL, 1.5, NULL, '2025-08-18 06:57:53', '2025-08-18 06:57:53', NULL, 147, '[11,12,13,14,15]', NULL, NULL, 19, NULL),
(1082, 45, 1, NULL, NULL, 1.5, NULL, '2025-08-18 06:57:53', '2025-08-18 06:57:53', NULL, 198, '[16,17,26]', NULL, NULL, 19, NULL),
(1084, 46, 1, NULL, NULL, 1.5, NULL, '2025-08-18 06:58:16', '2025-08-18 06:58:16', NULL, 172, '[11,12,13,14,15,16,17,26]', '[379]', NULL, 19, NULL),
(1087, 13, 1, NULL, NULL, 3, NULL, '2025-08-18 16:01:31', '2025-08-18 16:01:31', NULL, 177, '[1,2,3,4,5]', NULL, NULL, 19, NULL),
(1088, 13, 1, NULL, NULL, 3, NULL, '2025-08-18 16:01:31', '2025-08-18 16:01:31', NULL, 269, '[6]', NULL, NULL, 19, NULL),
(1089, 17, 3, NULL, NULL, 0.75, NULL, '2025-08-19 18:02:11', '2025-08-19 18:02:11', NULL, 182, '[1,2,4,5,6,7,8,9,10,11,12,49]', '[]', NULL, 20, NULL),
(1090, 30, 1, NULL, NULL, 1.5, NULL, '2025-08-19 18:31:50', '2025-08-19 18:31:50', NULL, 147, '[1,2]', NULL, '[37]', 19, NULL),
(1091, 30, 1, NULL, NULL, 1.5, NULL, '2025-08-19 18:31:50', '2025-08-19 18:31:50', NULL, 265, '[3,4,5,6]', NULL, '[37]', 19, NULL),
(1093, 47, 3, NULL, NULL, 0.75, NULL, '2025-08-19 18:33:38', '2025-08-19 18:33:38', NULL, 242, '[21,22,23,24,25,26,27,28,29,30,31,32,33,34,51,52]', NULL, '[36]', 20, NULL),
(1096, 29, 1, NULL, NULL, 1.5, NULL, '2025-08-20 06:47:22', '2025-08-20 06:47:22', NULL, 175, '[1,2,3,4,5,6,7,8,9,10]', NULL, NULL, 19, NULL),
(1099, 12, 1, NULL, NULL, 1.5, NULL, '2025-08-20 07:14:55', '2025-08-20 07:14:55', NULL, 175, '[1,2,3,4,5,6]', NULL, NULL, 19, NULL),
(1100, 43, 1, NULL, NULL, 1.5, NULL, '2025-08-20 07:15:17', '2025-08-20 07:15:17', NULL, 175, '[11,12,13,14,15,16,17]', NULL, NULL, 19, NULL),
(1101, 43, 1, NULL, NULL, 1.5, NULL, '2025-08-20 07:15:17', '2025-08-20 07:15:17', NULL, 240, '[17,26]', NULL, NULL, 19, NULL),
(1104, 36, 1, NULL, NULL, 1.5, NULL, '2025-08-20 07:34:28', '2025-08-20 07:34:28', NULL, 148, '[11,12,13,14,15]', NULL, NULL, 19, NULL),
(1105, 36, 1, NULL, NULL, 1.5, NULL, '2025-08-20 07:34:28', '2025-08-20 07:34:28', NULL, 275, '[16,17,26]', NULL, NULL, 19, NULL),
(1106, 62, 1, NULL, NULL, 1.5, NULL, '2025-08-20 07:35:29', '2025-08-20 07:35:29', NULL, 148, '[11,12,13,14,15,16,17,26]', NULL, NULL, 19, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seances`
--

CREATE TABLE `seances` (
  `id` int(10) UNSIGNED NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `day_id` int(11) DEFAULT NULL,
  `period_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `classroom_id` int(11) DEFAULT NULL,
  `subject_type_id` int(11) DEFAULT NULL,
  `year_division_id` int(11) DEFAULT NULL,
  `week_type_id` int(11) DEFAULT NULL,
  `week_name` varchar(255) DEFAULT NULL,
  `group_tp_id` int(11) DEFAULT NULL,
  `group_td_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `establishment_id` int(11) DEFAULT NULL,
  `next` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `duree` int(11) DEFAULT NULL,
  `start_hour` time DEFAULT NULL,
  `end_hour` time DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_locked` int(11) DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `teacher2_id` int(11) DEFAULT NULL,
  `section2_id` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `regime_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seances`
--

INSERT INTO `seances` (`id`, `section_id`, `day_id`, `period_id`, `subject_id`, `teacher_id`, `classroom_id`, `subject_type_id`, `year_division_id`, `week_type_id`, `week_name`, `group_tp_id`, `group_td_id`, `created_at`, `updated_at`, `deleted_at`, `establishment_id`, `next`, `related_id`, `duree`, `start_hour`, `end_hour`, `start_date`, `end_date`, `is_locked`, `type`, `display_name`, `teacher2_id`, `section2_id`, `note`, `regime_id`) VALUES
(47325, 1, 4, 40, 3, 157, 353, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:42', '2025-08-17 16:10:06', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(47326, 2, 4, 41, 3, 157, 353, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:42', '2025-08-17 16:10:20', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47327, 3, 4, 44, 3, 157, 353, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:42', '2025-08-17 16:10:35', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47328, 4, 4, 45, 3, 157, 353, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:42', '2025-08-17 16:10:50', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47329, 5, 5, 41, 3, 157, NULL, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:42', '2025-08-17 16:11:09', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47330, 6, 5, 40, 3, 157, 353, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:42', '2025-08-17 16:11:23', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(47334, 2, 2, 41, 5, 193, 353, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:42', '2025-08-17 16:13:37', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(47335, 3, 4, 46, 5, 193, 389, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:42', '2025-08-18 18:52:18', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47336, 3, 2, 45, 5, 193, NULL, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:42', '2025-08-18 18:52:31', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47337, 4, 4, 41, 5, 193, 354, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:42', '2025-08-17 16:14:54', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47338, 4, 2, 44, 5, 193, 353, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:42', '2025-08-17 16:14:49', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47339, 5, 1, 40, 5, 140, 356, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:42', '2025-08-17 16:29:40', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(47340, 5, 2, 40, 5, 140, 354, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:42', '2025-08-17 16:29:44', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(47341, 6, 1, 41, 5, 140, 356, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:42', '2025-08-17 16:29:51', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47342, 6, 2, 41, 5, 140, 354, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:43', '2025-08-17 16:29:53', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47363, 1, 4, 41, 7, 230, 355, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:44', '2025-08-17 16:46:04', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(47364, 1, 2, 40, 7, 230, 356, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:44', '2025-08-17 16:45:56', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(47365, 2, 4, 40, 7, 230, 355, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:44', '2025-08-17 16:45:37', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47366, 2, 2, 44, 7, 230, 355, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:44', '2025-08-17 16:45:13', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47367, 1, 2, 41, 8, 184, 356, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:44', '2025-08-17 17:03:45', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(47368, 2, 2, 40, 8, 184, 365, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:44', '2025-08-17 17:04:00', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47369, 3, 2, 44, 8, 184, 356, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:44', '2025-08-17 17:04:18', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47370, 4, 2, 45, 8, 184, 354, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:44', '2025-08-17 17:04:24', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47371, 5, 1, 45, 8, 189, 356, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:44', '2025-08-17 17:33:35', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(47372, 6, 2, 40, 8, 189, 358, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:44', '2025-08-17 17:33:41', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(47385, 1, 4, 44, 11, 156, 355, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:45', '2025-08-17 17:53:43', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(47387, 3, 4, 41, 11, 156, 356, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:45', '2025-08-17 17:54:03', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47388, 4, 4, 40, 11, 156, 356, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:45', '2025-08-17 17:54:18', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47389, 5, 3, 40, 11, 156, 360, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:45', '2025-08-17 20:21:56', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(47390, 6, 3, 41, 11, 156, NULL, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:22:45', '2025-08-17 17:53:06', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47579, 11, 3, 44, 90, 194, 359, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:23:11', '2025-08-17 16:21:24', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47581, 13, 3, 41, 90, 194, 361, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:23:11', '2025-08-17 16:22:01', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47582, 14, 3, 46, 90, 194, 355, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:23:11', '2025-08-17 16:22:16', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47583, 15, 3, 41, 90, 221, 362, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:23:11', '2025-08-17 16:22:29', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(47584, 16, 5, 41, 90, 221, NULL, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:23:11', '2025-08-17 16:22:50', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(47585, 17, 3, 44, 90, 221, 360, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:23:11', '2025-08-17 16:23:01', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47586, 26, 3, 40, 90, 221, 362, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:23:11', '2025-08-17 16:23:09', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47677, 23, 3, 45, 70, 221, 356, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:23:24', '2025-08-17 20:21:56', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47678, 24, 5, 40, 70, 221, 368, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:23:24', '2025-08-18 11:34:27', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47729, 19, 1, 41, 78, 189, 389, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:23:27', '2025-08-17 17:31:20', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47730, 20, 2, 41, 78, 189, 364, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:23:27', '2025-08-17 17:32:49', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47731, 21, 1, 40, 78, 189, 373, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:23:27', '2025-08-17 17:31:47', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47732, 22, 2, 45, 78, 189, 362, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:23:27', '2025-08-17 17:32:01', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47733, 23, 3, 41, 78, 184, NULL, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:23:27', '2025-08-17 17:04:52', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(47734, 24, 3, 44, 78, 184, 389, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 10:23:27', '2025-08-17 17:05:08', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(51484, 2, 4, 45, 11, 156, 355, 1, 1, 19, 'H', NULL, NULL, '2025-08-17 20:59:08', '2025-08-18 07:08:28', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55367, 1, 3, 41, 2, 185, 355, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:09', '2025-08-19 16:37:00', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(55368, 2, 3, 40, 2, 185, 355, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:09', '2025-08-19 16:36:48', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55369, 3, 3, 45, 2, 185, 353, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:09', '2025-08-19 16:37:22', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55370, 4, 3, 44, 2, 185, 355, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:09', '2025-08-19 16:37:45', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55371, 5, 3, 46, 2, 185, 353, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:09', '2025-08-19 16:37:57', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55372, 6, 2, 44, 2, 185, 354, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:09', '2025-08-19 16:38:15', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(55375, 2, 4, 44, 5, 193, 354, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:10', '2025-08-18 18:52:07', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55396, 1, 5, 41, 9, 227, 354, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-18 11:17:11', '2025-08-18 15:39:09', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(55397, 2, 5, 40, 9, 227, 355, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-18 11:17:11', '2025-08-18 15:39:23', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55398, 3, 5, 40, 9, 227, 356, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-18 11:17:11', '2025-08-18 15:39:40', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55399, 4, 5, 41, 9, 227, 355, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-18 11:17:11', '2025-08-18 15:39:55', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55400, 5, 5, 44, 9, 227, 354, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-18 11:17:12', '2025-08-18 15:40:16', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55401, 6, 5, 44, 9, 227, 355, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-18 11:17:12', '2025-08-18 15:40:30', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55402, 1, 5, 41, 10, 192, 356, 1, 1, 20, 'SemaineB', NULL, NULL, '2025-08-18 11:17:12', '2025-08-18 15:39:08', NULL, 7, 0, NULL, 0, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 2 ', NULL),
(55403, 2, 5, 40, 10, 192, 357, 1, 1, 20, 'SemaineB', NULL, NULL, '2025-08-18 11:17:12', '2025-08-18 15:39:25', NULL, 7, 0, NULL, 0, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop new ', NULL),
(55404, 3, 5, 40, 10, 192, 358, 1, 1, 20, 'SemaineB', NULL, NULL, '2025-08-18 11:17:12', '2025-08-18 15:39:44', NULL, 7, 0, NULL, 0, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop new ', NULL),
(55405, 4, 5, 41, 10, 192, 357, 1, 1, 20, 'SemaineB', NULL, NULL, '2025-08-18 11:17:12', '2025-08-18 15:39:57', NULL, 7, 0, NULL, 0, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop new ', NULL),
(55406, 5, 5, 44, 10, 192, 356, 1, 1, 20, 'SemaineB', NULL, NULL, '2025-08-18 11:17:12', '2025-08-18 15:40:17', NULL, 7, 0, NULL, 0, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop new ', NULL),
(55407, 6, 5, 44, 10, 192, 357, 1, 1, 20, 'SemaineB', NULL, NULL, '2025-08-18 11:17:12', '2025-08-18 15:40:32', NULL, 7, 0, NULL, 0, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop new ', NULL),
(55408, 1, 1, 40, 12, 175, 354, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:12', '2025-08-20 07:02:15', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(55409, 2, 1, 41, 12, 175, 354, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:12', '2025-08-20 07:02:22', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55410, 3, 1, 44, 12, 175, 354, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:12', '2025-08-20 07:02:28', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55411, 4, 1, 45, 12, 175, 354, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:12', '2025-08-20 07:02:37', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55412, 5, 1, 46, 12, 175, 353, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:12', '2025-08-20 07:02:48', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55413, 1, 1, 41, 13, 177, 355, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:13', '2025-08-18 16:03:23', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(55414, 1, 1, 44, 13, 177, 355, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:13', '2025-08-18 16:03:26', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 5 ', NULL),
(55415, 2, 1, 40, 13, 177, 355, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:13', '2025-08-18 16:03:33', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55416, 2, 2, 45, 13, 177, 357, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:13', '2025-08-18 16:03:38', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(55417, 3, 1, 45, 13, 177, 355, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:13', '2025-08-18 16:03:49', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55418, 3, 2, 46, 13, 177, 355, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:13', '2025-08-18 16:03:54', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55419, 4, 1, 46, 13, 177, 354, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:13', '2025-08-18 16:04:05', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55446, 1, 4, 45, 14, 168, 377, 3, 1, 20, 'SemaineA', 2, NULL, '2025-08-18 11:17:23', '2025-08-20 07:46:08', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(55447, 1, 4, 45, 14, 168, 377, 3, 1, 20, 'SemaineB', 49, NULL, '2025-08-18 11:17:23', '2025-08-20 07:46:10', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(55448, 2, 3, 44, 14, 168, 378, 3, 1, 20, 'SemaineA', 1, NULL, '2025-08-18 11:17:23', '2025-08-20 07:45:54', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(55449, 2, 3, 44, 14, 168, 378, 3, 1, 20, 'SemaineB', 4, NULL, '2025-08-18 11:17:23', '2025-08-20 07:45:48', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(55450, 3, 3, 41, 14, 168, 378, 3, 1, 20, 'SemaineA', 5, NULL, '2025-08-18 11:17:23', '2025-08-20 07:45:09', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(55451, 3, 3, 40, 14, 168, 378, 3, 1, 20, 'SemaineA', 6, NULL, '2025-08-18 11:17:23', '2025-08-20 07:45:11', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(55452, 4, 4, 44, 14, 168, 377, 3, 1, 20, 'SemaineA', 7, NULL, '2025-08-18 11:17:23', '2025-08-20 07:46:29', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(55453, 4, 4, 44, 14, 168, 377, 3, 1, 20, 'SemaineB', 8, NULL, '2025-08-18 11:17:23', '2025-08-20 07:46:30', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(55454, 5, 4, 40, 14, 168, 377, 3, 1, 20, 'SemaineA', 9, NULL, '2025-08-18 11:17:24', '2025-08-20 07:46:54', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(55455, 5, 4, 41, 14, 168, 377, 3, 1, 20, 'SemaineA', 10, NULL, '2025-08-18 11:17:24', '2025-08-20 07:46:53', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(55456, 6, 3, 45, 14, 168, 378, 3, 1, 20, 'SemaineA', 11, NULL, '2025-08-18 11:17:24', '2025-08-20 07:47:28', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(55457, 6, 3, 45, 14, 168, 378, 3, 1, 20, 'SemaineB', 12, NULL, '2025-08-18 11:17:24', '2025-08-20 07:47:26', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(55458, 1, 4, 45, 15, 181, 379, 3, 1, 20, 'SemaineB', 2, NULL, '2025-08-18 11:17:24', '2025-08-20 07:46:11', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(55459, 1, 4, 45, 15, 181, 379, 3, 1, 20, 'SemaineA', 49, NULL, '2025-08-18 11:17:24', '2025-08-20 07:46:13', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 120  id   week h id 20', NULL),
(55460, 2, 3, 44, 15, 181, 379, 3, 1, 20, 'SemaineB', 1, NULL, '2025-08-18 11:17:24', '2025-08-20 07:45:50', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(55461, 2, 3, 44, 15, 181, 379, 3, 1, 20, 'SemaineA', 4, NULL, '2025-08-18 11:17:24', '2025-08-20 07:45:52', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 120  id   week h id 20', NULL),
(55462, 3, 3, 41, 15, 181, 379, 3, 1, 20, 'SemaineB', 5, NULL, '2025-08-18 11:17:24', '2025-08-20 07:45:07', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(55463, 3, 3, 40, 15, 181, 379, 3, 1, 20, 'SemaineB', 6, NULL, '2025-08-18 11:17:24', '2025-08-20 07:45:13', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(55464, 4, 4, 44, 15, 181, 379, 3, 1, 20, 'SemaineB', 7, NULL, '2025-08-18 11:17:24', '2025-08-20 07:46:31', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(55465, 4, 4, 44, 15, 181, 379, 3, 1, 20, 'SemaineA', 8, NULL, '2025-08-18 11:17:24', '2025-08-18 17:22:01', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'tp loop 120  id   week h id 20', NULL),
(55466, 5, 4, 40, 15, 181, 379, 3, 1, 20, 'SemaineB', 9, NULL, '2025-08-18 11:17:24', '2025-08-20 07:46:59', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(55467, 5, 4, 41, 15, 181, 378, 3, 1, 20, 'SemaineB', 10, NULL, '2025-08-18 11:17:24', '2025-08-20 07:46:58', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(55468, 6, 3, 45, 15, 262, 379, 3, 1, 20, 'SemaineB', 11, NULL, '2025-08-18 11:17:25', '2025-08-20 07:47:30', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(55469, 6, 3, 45, 15, 262, 379, 3, 1, 20, 'SemaineA', 12, NULL, '2025-08-18 11:17:25', '2025-08-20 07:47:31', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 120  id   week h id 20', NULL),
(55482, 1, 3, 46, 17, 182, 378, 3, 1, 20, 'SemaineA', 2, NULL, '2025-08-18 11:17:28', '2025-08-20 07:46:04', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(55483, 1, 3, 46, 17, 182, 378, 3, 1, 20, 'SemaineB', 49, NULL, '2025-08-18 11:17:28', '2025-08-20 07:46:05', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(55484, 2, 1, 45, 17, 182, 379, 3, 1, 20, 'SemaineA', 1, NULL, '2025-08-18 11:17:28', '2025-08-20 07:45:37', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(55485, 2, 1, 45, 17, 182, 379, 3, 1, 20, 'SemaineB', 4, NULL, '2025-08-18 11:17:28', '2025-08-20 07:45:38', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(55486, 3, 1, 41, 17, 182, 378, 3, 1, 20, 'SemaineA', 5, NULL, '2025-08-18 11:17:29', '2025-08-20 07:45:23', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(55487, 3, 4, 45, 17, 182, 382, 3, 1, 20, 'SemaineA', 6, NULL, '2025-08-18 11:17:29', '2025-08-20 07:45:18', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(55488, 4, 3, 40, 17, 182, NULL, 3, 1, 20, 'SemaineA', 7, NULL, '2025-08-18 11:17:29', '2025-08-20 07:46:23', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(55489, 4, 3, 40, 17, 182, NULL, 3, 1, 20, 'SemaineB', 8, NULL, '2025-08-18 11:17:29', '2025-08-20 07:46:24', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(55490, 5, 4, 44, 17, 182, 381, 3, 1, 20, 'SemaineA', 9, NULL, '2025-08-18 11:17:29', '2025-08-20 07:46:51', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(55491, 5, 4, 44, 17, 182, 381, 3, 1, 20, 'SemaineB', 10, NULL, '2025-08-18 11:17:29', '2025-08-20 07:47:02', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(55492, 6, 1, 40, 17, 182, 379, 3, 1, 20, 'SemaineA', 11, NULL, '2025-08-18 11:17:30', '2025-08-20 07:47:21', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(55493, 6, 1, 40, 17, 182, 379, 3, 1, 20, 'SemaineB', 12, NULL, '2025-08-18 11:17:30', '2025-08-20 07:47:22', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(55494, 11, 2, 40, 36, 148, 372, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:30', '2025-08-18 18:04:23', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(55495, 12, 2, 41, 36, 148, 359, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:30', '2025-08-18 18:04:30', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55496, 13, 2, 44, 36, 148, 359, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:30', '2025-08-18 18:04:38', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55497, 14, 2, 45, 36, 148, 358, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:30', '2025-08-18 18:04:48', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55518, 11, 2, 41, 40, 169, 360, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:30', '2025-08-18 18:12:05', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(55519, 12, 2, 46, 40, 169, NULL, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:30', '2025-08-18 18:11:56', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55520, 13, 2, 45, 40, 169, 359, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:31', '2025-08-18 18:12:13', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55521, 14, 2, 44, 40, 169, 360, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:31', '2025-08-18 18:12:22', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55534, 11, 2, 45, 42, 158, 363, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:32', '2025-08-18 17:45:37', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(55535, 12, 2, 44, 42, 158, 363, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:32', '2025-08-18 17:45:11', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55536, 13, 2, 41, 42, 158, 363, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:32', '2025-08-18 17:45:49', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55537, 14, 2, 40, 42, 158, 362, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:32', '2025-08-18 17:45:56', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55538, 15, 2, 41, 42, 146, 365, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:32', '2025-08-18 17:46:07', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(55539, 16, 2, 40, 42, 146, 363, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:32', '2025-08-18 17:46:38', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55540, 17, 2, 45, 42, 146, 364, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:32', '2025-08-18 17:46:55', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55541, 26, 2, 44, 42, 146, 364, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:32', '2025-08-18 17:47:10', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55542, 11, 2, 46, 43, 175, 358, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:32', '2025-08-20 07:07:40', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 6 ', NULL),
(55543, 15, 2, 44, 43, 175, 365, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:34', '2025-08-20 07:08:54', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55544, 16, 2, 41, 43, 175, NULL, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:35', '2025-08-20 07:09:05', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55547, 11, 5, 45, 44, 227, 358, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-18 11:17:35', '2025-08-18 15:41:24', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55548, 12, 5, 45, 44, 227, 359, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-18 11:17:35', '2025-08-18 15:42:19', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55549, 13, 1, 40, 44, 227, 358, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-18 11:17:35', '2025-08-18 15:42:36', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(55550, 14, 1, 40, 44, 227, 359, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-18 11:17:36', '2025-08-18 15:43:14', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55551, 15, 1, 41, 44, 227, 358, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-18 11:17:36', '2025-08-18 15:43:23', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55552, 16, 1, 41, 44, 227, 359, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-18 11:17:36', '2025-08-18 15:43:35', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55553, 17, 1, 44, 44, 227, 357, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-18 11:17:37', '2025-08-18 15:43:44', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55554, 26, 1, 45, 44, 227, 357, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-18 11:17:37', '2025-08-18 15:43:55', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55555, 11, 1, 40, 45, 147, 360, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:37', '2025-08-19 15:22:11', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(55556, 12, 1, 41, 45, 147, 360, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:37', '2025-08-19 15:22:22', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55557, 13, 1, 44, 45, 147, 358, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:37', '2025-08-19 15:22:29', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55558, 14, 1, 45, 45, 147, 358, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:37', '2025-08-19 15:22:45', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55559, 15, 1, 46, 45, 147, 355, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:37', '2025-08-19 15:22:53', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55578, 14, 3, 44, 49, 182, 384, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:39', '2025-08-18 17:59:26', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55579, 15, 1, 44, 49, 182, 384, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:40', '2025-08-18 17:59:39', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55580, 16, 4, 40, 49, 182, 384, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:40', '2025-08-18 17:59:57', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55581, 17, 3, 45, 49, 182, 384, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:40', '2025-08-18 18:00:20', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55582, 26, 1, 46, 49, 182, 384, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:40', '2025-08-18 18:00:32', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55615, 26, 4, 40, 91, 144, 389, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:43', '2025-08-18 15:15:05', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(55616, 11, 1, 44, 92, 195, 360, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-18 11:17:43', '2025-08-18 15:45:28', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(55617, 12, 1, 44, 92, 195, 361, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-18 11:17:43', '2025-08-18 15:45:37', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55618, 13, 1, 40, 92, 195, 362, 1, 1, 20, 'SemaineB', NULL, NULL, '2025-08-18 11:17:43', '2025-08-18 15:43:00', NULL, 7, 0, NULL, 0, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop new ', NULL),
(55619, 14, 1, 40, 92, 192, 363, 1, 1, 20, 'SemaineB', NULL, NULL, '2025-08-18 11:17:43', '2025-08-18 15:43:12', NULL, 7, 0, NULL, 0, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop new ', NULL),
(55620, 15, 1, 41, 92, 192, 361, 1, 1, 20, 'SemaineB', NULL, NULL, '2025-08-18 11:17:43', '2025-08-18 15:43:21', NULL, 7, 0, NULL, 0, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop new ', NULL),
(55621, 16, 1, 41, 92, 192, 362, 1, 1, 20, 'SemaineB', NULL, NULL, '2025-08-18 11:17:43', '2025-08-18 15:43:33', NULL, 7, 0, NULL, 0, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop new ', NULL),
(55622, 17, 1, 44, 92, 192, 362, 1, 1, 20, 'SemaineB', NULL, NULL, '2025-08-18 11:17:43', '2025-08-18 15:43:43', NULL, 7, 0, NULL, 0, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop new ', NULL),
(55623, 26, 1, 45, 92, 192, 360, 1, 1, 20, 'SemaineB', NULL, NULL, '2025-08-18 11:17:43', '2025-08-18 15:43:53', NULL, 7, 0, NULL, 0, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop new ', NULL),
(55706, 18, 2, 44, 72, 137, 370, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:56', '2025-08-18 19:03:20', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(55707, 19, 2, 45, 72, 137, 368, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:56', '2025-08-18 19:03:31', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55708, 20, 2, 40, 72, 137, 371, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:56', '2025-08-18 19:03:40', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55709, 21, 2, 41, 72, 137, 371, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:56', '2025-08-18 19:03:51', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55710, 22, 1, 40, 72, 144, NULL, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:56', '2025-08-18 15:15:58', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55711, 23, 1, 44, 72, 144, 389, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:56', '2025-08-18 15:16:10', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55712, 24, 1, 41, 72, 144, NULL, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:56', '2025-08-18 15:16:26', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55713, 18, 5, 40, 73, 159, 357, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:56', '2025-08-18 18:34:52', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(55714, 19, 5, 41, 73, 159, 357, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:56', '2025-08-18 18:35:10', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55715, 20, 5, 44, 73, 159, 357, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:56', '2025-08-18 18:35:18', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55716, 21, 1, 45, 73, 159, 357, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:56', '2025-08-18 18:37:24', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55717, 22, 1, 41, 73, 159, 357, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:56', '2025-08-18 18:35:37', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 6 ', NULL),
(55718, 23, 1, 40, 73, 159, 357, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:57', '2025-08-18 18:33:21', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 7 ', NULL),
(55719, 24, 1, 44, 73, 159, 357, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:57', '2025-08-18 18:34:06', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55723, 21, 3, 40, 74, 167, 371, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:57', '2025-08-18 18:43:42', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(55724, 22, 3, 44, 74, 167, NULL, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:57', '2025-08-18 18:43:09', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55725, 23, 2, 44, 74, 167, 372, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:57', '2025-08-18 18:44:07', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(55726, 24, 2, 41, 74, 167, 372, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:57', '2025-08-18 18:44:21', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55727, 18, 5, 41, 75, 161, 364, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:58', '2025-08-18 14:46:44', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(55728, 19, 5, 40, 75, 161, 365, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:58', '2025-08-18 14:47:05', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55729, 20, 5, 45, 75, 161, 363, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:58', '2025-08-18 14:47:42', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55730, 21, 5, 44, 75, 161, 364, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:58', '2025-08-18 14:48:00', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55731, 22, 2, 41, 75, 161, 373, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:58', '2025-08-18 14:46:05', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(55732, 24, 2, 45, 75, 161, 370, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:17:58', '2025-08-18 14:45:35', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55748, 18, 1, 44, 78, 189, 363, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:18:00', '2025-08-19 15:26:23', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(55779, 4, 2, 40, 13, 177, 389, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:20:27', '2025-08-18 16:04:12', NULL, 7, 0, NULL, NULL, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(55780, 5, 2, 41, 13, 177, 389, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:21:18', '2025-08-18 16:04:22', NULL, 7, 0, NULL, NULL, '10:00:00', '11:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(55782, 6, 2, 45, 12, 175, 389, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:26:33', '2025-08-20 07:03:02', NULL, 7, 0, NULL, NULL, '14:00:00', '15:30:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(55787, 12, 2, 40, 43, 175, 373, 1, 1, 19, 'H', NULL, NULL, '2025-08-18 11:36:48', '2025-08-20 07:07:57', NULL, 7, 0, NULL, NULL, '08:30:00', '10:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(56099, 1, 2, 40, 20, 222, 353, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:37', '2025-08-20 07:12:37', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56100, 2, 2, 41, 20, 222, 353, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:37', '2025-08-20 07:12:37', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56101, 3, 2, 44, 20, 222, 353, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:37', '2025-08-20 07:12:37', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56102, 4, 2, 40, 20, 203, 354, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:38', '2025-08-20 07:12:38', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56103, 5, 2, 41, 20, 203, 354, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:38', '2025-08-20 07:12:38', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56104, 6, 2, 44, 20, 203, 354, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:38', '2025-08-20 07:12:38', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56105, 1, 3, 40, 21, 156, 353, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:38', '2025-08-20 07:12:38', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56106, 2, 3, 41, 21, 156, 353, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:38', '2025-08-20 07:12:38', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56107, 3, 3, 44, 21, 156, 353, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:38', '2025-08-20 07:12:38', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56108, 4, 3, 45, 21, 156, 353, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:38', '2025-08-20 07:12:38', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56109, 5, 3, 46, 21, 156, 353, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:38', '2025-08-20 07:12:38', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56110, 6, 4, 40, 21, 156, 353, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:38', '2025-08-20 07:12:38', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56111, 1, 5, 40, 22, 157, 353, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:38', '2025-08-20 07:12:38', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56112, 2, 5, 41, 22, 157, 353, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:38', '2025-08-20 07:12:38', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56113, 3, 5, 44, 22, 157, 353, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:38', '2025-08-20 07:12:38', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56114, 4, 5, 45, 22, 157, 353, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:39', '2025-08-20 07:12:39', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56115, 5, 4, 40, 22, 157, 354, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:39', '2025-08-20 07:12:39', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56116, 6, 2, 40, 22, 167, 355, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:39', '2025-08-20 07:12:39', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56117, 1, 2, 41, 23, 194, 355, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:39', '2025-08-20 07:12:39', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56118, 1, 5, 41, 23, 194, 354, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:39', '2025-08-20 07:12:39', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56119, 2, 2, 40, 23, 140, 356, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:39', '2025-08-20 07:12:39', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56120, 2, 1, 40, 23, 140, 353, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:39', '2025-08-20 07:12:39', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56121, 3, 2, 41, 23, 140, 356, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:39', '2025-08-20 07:12:39', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56122, 3, 1, 41, 23, 140, 353, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:39', '2025-08-20 07:12:39', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56123, 4, 2, 41, 23, 193, 357, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:39', '2025-08-20 07:12:39', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56124, 4, 4, 41, 23, 193, 353, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:39', '2025-08-20 07:12:39', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56125, 5, 2, 40, 23, 193, 357, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:39', '2025-08-20 07:12:39', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56126, 5, 4, 44, 23, 193, 353, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:39', '2025-08-20 07:12:39', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56127, 6, 2, 45, 23, 193, 353, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:39', '2025-08-20 07:12:39', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56128, 6, 4, 45, 23, 193, 353, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:39', '2025-08-20 07:12:39', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56129, 1, 2, 44, 24, 190, 355, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:39', '2025-08-20 07:12:39', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56130, 1, 5, 44, 24, 190, 354, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:40', '2025-08-20 07:12:40', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56131, 2, 2, 45, 24, 190, 354, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:40', '2025-08-20 07:12:40', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56132, 2, 5, 40, 24, 190, 354, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:40', '2025-08-20 07:12:40', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56133, 3, 2, 40, 24, 190, 358, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:40', '2025-08-20 07:12:40', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56134, 3, 5, 41, 24, 190, 355, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:40', '2025-08-20 07:12:40', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56135, 4, 2, 44, 24, 263, 356, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:40', '2025-08-20 07:12:40', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56136, 4, 5, 40, 24, 263, 355, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:40', '2025-08-20 07:12:40', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56137, 5, 2, 45, 24, 263, 355, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:40', '2025-08-20 07:12:40', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56138, 5, 5, 41, 24, 263, 356, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:40', '2025-08-20 07:12:40', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56139, 6, 2, 41, 24, 263, 358, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:40', '2025-08-20 07:12:40', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56140, 6, 5, 44, 24, 263, 355, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:40', '2025-08-20 07:12:40', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56141, 1, 2, 45, 25, 230, 356, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:40', '2025-08-20 07:12:40', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56142, 1, 4, 40, 25, 230, 355, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:40', '2025-08-20 07:12:40', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56143, 2, 2, 44, 25, 230, 357, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:40', '2025-08-20 07:12:40', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56144, 2, 4, 41, 25, 230, 354, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:40', '2025-08-20 07:12:40', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56145, 3, 2, 45, 25, 180, 357, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:40', '2025-08-20 07:12:40', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL);
INSERT INTO `seances` (`id`, `section_id`, `day_id`, `period_id`, `subject_id`, `teacher_id`, `classroom_id`, `subject_type_id`, `year_division_id`, `week_type_id`, `week_name`, `group_tp_id`, `group_td_id`, `created_at`, `updated_at`, `deleted_at`, `establishment_id`, `next`, `related_id`, `duree`, `start_hour`, `end_hour`, `start_date`, `end_date`, `is_locked`, `type`, `display_name`, `teacher2_id`, `section2_id`, `note`, `regime_id`) VALUES
(56146, 3, 1, 40, 25, 180, 354, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:41', '2025-08-20 07:12:41', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56147, 4, 2, 46, 25, 180, 353, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:41', '2025-08-20 07:12:41', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56148, 4, 1, 41, 25, 180, 354, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:41', '2025-08-20 07:12:41', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56149, 5, 2, 44, 25, 180, 358, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:41', '2025-08-20 07:12:41', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56150, 5, 1, 44, 25, 180, 353, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:41', '2025-08-20 07:12:41', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56151, 6, 1, 45, 25, 180, 353, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:41', '2025-08-20 07:12:41', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56152, 6, 1, 46, 25, 180, 353, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:42', '2025-08-20 07:12:42', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 5 ', NULL),
(56153, 1, 5, 45, 26, 227, 354, 1, 2, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:12:42', '2025-08-20 07:12:42', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56154, 2, 5, 44, 26, 227, 356, 1, 2, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:12:42', '2025-08-20 07:12:42', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56155, 3, 5, 40, 26, 227, 356, 1, 2, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:12:42', '2025-08-20 07:12:42', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56156, 4, 5, 41, 26, 227, 357, 1, 2, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:12:42', '2025-08-20 07:12:42', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56157, 5, 5, 40, 26, 227, 357, 1, 2, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:12:42', '2025-08-20 07:12:42', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56158, 6, 5, 41, 26, 227, 358, 1, 2, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:12:42', '2025-08-20 07:12:42', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56159, 4, 3, 40, 27, 145, 354, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:42', '2025-08-20 07:12:42', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56160, 5, 3, 41, 27, 145, 354, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:42', '2025-08-20 07:12:42', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56161, 6, 3, 44, 27, 145, 354, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:42', '2025-08-20 07:12:42', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56162, 1, 1, 40, 27, 200, 355, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:42', '2025-08-20 07:12:42', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56163, 2, 1, 41, 27, 200, 355, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:42', '2025-08-20 07:12:42', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56164, 3, 1, 44, 27, 200, 354, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:42', '2025-08-20 07:12:42', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56165, 1, 3, 41, 28, 184, 355, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:42', '2025-08-20 07:12:42', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56166, 2, 3, 40, 28, 184, 355, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:42', '2025-08-20 07:12:42', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56167, 3, 3, 45, 28, 184, 354, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:42', '2025-08-20 07:12:42', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56168, 4, 3, 44, 28, 184, 355, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:42', '2025-08-20 07:12:42', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56169, 5, 1, 40, 28, 189, 356, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:42', '2025-08-20 07:12:42', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56170, 6, 1, 41, 28, 189, 356, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:42', '2025-08-20 07:12:42', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56171, 1, 1, 41, 29, 175, 361, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:42', '2025-08-20 07:13:04', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56172, 2, 1, 44, 29, 175, 355, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:43', '2025-08-20 07:12:43', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56173, 3, 1, 45, 29, 175, 354, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:43', '2025-08-20 07:12:43', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56174, 4, 1, 40, 29, 175, 361, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:43', '2025-08-20 07:13:04', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56175, 5, 1, 46, 29, 175, 354, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:43', '2025-08-20 07:12:43', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56176, 6, 3, 40, 29, 175, 356, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:43', '2025-08-20 07:12:43', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56177, 1, 1, 44, 30, 147, 356, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:43', '2025-08-20 07:12:43', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56178, 2, 1, 45, 30, 147, 355, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:43', '2025-08-20 07:12:43', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56179, 3, 5, 45, 30, 265, 355, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:43', '2025-08-20 07:12:43', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56180, 4, 5, 44, 30, 265, 360, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:43', '2025-08-20 07:13:04', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56181, 5, 1, 41, 30, 265, 358, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:44', '2025-08-20 07:12:44', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56182, 6, 5, 40, 30, 265, 358, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:44', '2025-08-20 07:12:44', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56183, 1, 1, 45, 32, 177, 356, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:44', '2025-08-20 07:12:44', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56184, 2, 1, 46, 32, 177, 355, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:44', '2025-08-20 07:12:44', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56185, 3, 2, 46, 32, 177, 354, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:44', '2025-08-20 07:12:44', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 6 ', NULL),
(56186, 4, 1, 44, 32, 177, 361, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:44', '2025-08-20 07:13:04', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56187, 6, 5, 45, 32, 254, 356, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:45', '2025-08-20 07:12:45', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56188, 1, 4, 41, 33, 166, 388, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:45', '2025-08-20 07:12:45', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56189, 2, 5, 45, 33, 139, 388, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:45', '2025-08-20 07:12:45', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56190, 3, 3, 40, 33, 139, 388, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:45', '2025-08-20 07:12:45', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56191, 4, 3, 41, 33, 139, 388, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:45', '2025-08-20 07:12:45', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56192, 5, 5, 44, 33, 139, 388, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:45', '2025-08-20 07:12:45', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56193, 6, 3, 45, 33, 139, 388, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:45', '2025-08-20 07:12:45', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56194, 1, 5, 45, 34, 228, 357, 1, 2, 20, 'SemaineB', NULL, NULL, '2025-08-20 07:12:45', '2025-08-20 07:12:45', NULL, 7, 0, NULL, 0, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 2 ', NULL),
(56195, 2, 5, 44, 34, 228, 358, 1, 2, 20, 'SemaineB', NULL, NULL, '2025-08-20 07:12:45', '2025-08-20 07:12:45', NULL, 7, 0, NULL, 0, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop new ', NULL),
(56196, 3, 5, 40, 34, 228, 359, 1, 2, 20, 'SemaineB', NULL, NULL, '2025-08-20 07:12:45', '2025-08-20 07:12:45', NULL, 7, 0, NULL, 0, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop new ', NULL),
(56197, 4, 5, 41, 34, 228, 359, 1, 2, 20, 'SemaineB', NULL, NULL, '2025-08-20 07:12:45', '2025-08-20 07:12:45', NULL, 7, 0, NULL, 0, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop new ', NULL),
(56198, 5, 5, 40, 34, 228, 360, 1, 2, 20, 'SemaineB', NULL, NULL, '2025-08-20 07:12:45', '2025-08-20 07:12:45', NULL, 7, 0, NULL, 0, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop new ', NULL),
(56199, 6, 5, 41, 34, 228, 360, 1, 2, 20, 'SemaineB', NULL, NULL, '2025-08-20 07:12:46', '2025-08-20 07:12:46', NULL, 7, 0, NULL, 0, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop new ', NULL),
(56200, 1, 1, 46, 94, 192, 356, 1, 2, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:12:46', '2025-08-20 07:12:46', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 6 ', NULL),
(56201, 3, 1, 46, 94, 192, 357, 1, 2, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:12:46', '2025-08-20 07:12:46', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56202, 4, 1, 45, 94, 192, 357, 1, 2, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:12:46', '2025-08-20 07:12:46', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56203, 5, 1, 45, 94, 192, 358, 1, 2, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:12:46', '2025-08-20 07:12:46', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56204, 6, 1, 40, 94, 192, 358, 1, 2, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:12:46', '2025-08-20 07:12:46', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56205, 1, 4, 44, 19, 174, 377, 3, 2, 19, 'H', 49, NULL, '2025-08-20 07:12:47', '2025-08-20 07:12:47', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56206, 6, 1, 44, 19, 174, 377, 3, 2, 19, 'H', 11, NULL, '2025-08-20 07:12:47', '2025-08-20 07:12:47', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56207, 6, 3, 41, 19, 174, 377, 3, 2, 19, 'H', 12, NULL, '2025-08-20 07:12:47', '2025-08-20 07:12:47', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56208, 1, 2, 46, 19, 173, 377, 3, 2, 19, 'H', 2, NULL, '2025-08-20 07:12:48', '2025-08-20 07:12:48', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56209, 1, 3, 44, 19, 173, 377, 3, 2, 19, 'H', 49, NULL, '2025-08-20 07:12:48', '2025-08-20 07:12:48', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56210, 2, 3, 45, 19, 173, 377, 3, 2, 19, 'H', 1, NULL, '2025-08-20 07:12:49', '2025-08-20 07:12:49', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56211, 2, 4, 40, 19, 171, 377, 3, 2, 19, 'H', 4, NULL, '2025-08-20 07:12:49', '2025-08-20 07:12:49', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56212, 3, 3, 41, 19, 171, 378, 3, 2, 19, 'H', 5, NULL, '2025-08-20 07:12:49', '2025-08-20 07:12:49', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56213, 3, 4, 41, 19, 171, 377, 3, 2, 19, 'H', 6, NULL, '2025-08-20 07:12:50', '2025-08-20 07:12:50', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56214, 4, 2, 45, 19, 171, 377, 3, 2, 19, 'H', 7, NULL, '2025-08-20 07:12:50', '2025-08-20 07:12:50', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56215, 4, 4, 44, 19, 171, 378, 3, 2, 19, 'H', 8, NULL, '2025-08-20 07:12:50', '2025-08-20 07:12:50', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56216, 5, 5, 45, 19, 171, 377, 3, 2, 19, 'H', 9, NULL, '2025-08-20 07:12:51', '2025-08-20 07:12:51', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56217, 5, 3, 40, 19, 171, 377, 3, 2, 19, 'H', 10, NULL, '2025-08-20 07:12:51', '2025-08-20 07:12:51', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56218, 1, 4, 44, 31, 168, 382, 3, 2, 20, 'SemaineA', 2, NULL, '2025-08-20 07:12:51', '2025-08-20 07:12:51', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56219, 1, 4, 45, 31, 168, 382, 3, 2, 20, 'SemaineA', 49, NULL, '2025-08-20 07:12:51', '2025-08-20 07:12:51', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56220, 2, 4, 40, 31, 168, 382, 3, 2, 20, 'SemaineA', 1, NULL, '2025-08-20 07:12:51', '2025-08-20 07:12:51', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56221, 2, 3, 44, 31, 168, 382, 3, 2, 20, 'SemaineA', 4, NULL, '2025-08-20 07:12:51', '2025-08-20 07:12:51', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56222, 3, 4, 41, 31, 168, 382, 3, 2, 20, 'SemaineA', 5, NULL, '2025-08-20 07:12:52', '2025-08-20 07:12:52', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56223, 3, 3, 41, 31, 168, 382, 3, 2, 20, 'SemaineA', 6, NULL, '2025-08-20 07:12:52', '2025-08-20 07:12:52', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56224, 4, 3, 46, 31, 168, 382, 3, 2, 20, 'SemaineA', 7, NULL, '2025-08-20 07:12:52', '2025-08-20 07:12:52', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56225, 4, 3, 46, 31, 168, 382, 3, 2, 20, 'SemaineB', 8, NULL, '2025-08-20 07:12:52', '2025-08-20 07:12:52', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56226, 5, 3, 40, 31, 168, 382, 3, 2, 20, 'SemaineA', 9, NULL, '2025-08-20 07:12:52', '2025-08-20 07:12:52', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56227, 5, 3, 45, 31, 168, 382, 3, 2, 20, 'SemaineA', 10, NULL, '2025-08-20 07:12:53', '2025-08-20 07:12:53', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56228, 6, 4, 46, 31, 168, 382, 3, 2, 20, 'SemaineA', 11, NULL, '2025-08-20 07:12:53', '2025-08-20 07:12:53', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56229, 6, 4, 46, 31, 168, 382, 3, 2, 20, 'SemaineB', 12, NULL, '2025-08-20 07:12:53', '2025-08-20 07:12:53', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56230, 6, 3, 41, 35, 182, 384, 3, 2, 20, 'SemaineA', 11, NULL, '2025-08-20 07:12:54', '2025-08-20 07:12:54', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56231, 6, 1, 44, 35, 182, 384, 3, 2, 20, 'SemaineA', 12, NULL, '2025-08-20 07:12:54', '2025-08-20 07:12:54', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56232, 1, 4, 44, 35, 226, 384, 3, 2, 20, 'SemaineB', 2, NULL, '2025-08-20 07:12:54', '2025-08-20 07:12:54', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56233, 1, 4, 45, 35, 226, 384, 3, 2, 20, 'SemaineB', 49, NULL, '2025-08-20 07:12:54', '2025-08-20 07:12:54', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56234, 2, 4, 40, 35, 226, 384, 3, 2, 20, 'SemaineB', 1, NULL, '2025-08-20 07:12:54', '2025-08-20 07:12:54', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56235, 2, 3, 44, 35, 226, 384, 3, 2, 20, 'SemaineB', 4, NULL, '2025-08-20 07:12:54', '2025-08-20 07:12:54', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56236, 3, 4, 41, 35, 226, 384, 3, 2, 20, 'SemaineB', 5, NULL, '2025-08-20 07:12:55', '2025-08-20 07:12:55', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56237, 3, 3, 41, 35, 226, 385, 3, 2, 20, 'SemaineB', 6, NULL, '2025-08-20 07:12:55', '2025-08-20 07:12:55', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56238, 4, 1, 46, 35, 226, 384, 3, 2, 20, 'SemaineA', 7, NULL, '2025-08-20 07:12:55', '2025-08-20 07:12:55', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56239, 4, 1, 46, 35, 226, 384, 3, 2, 20, 'SemaineB', 8, NULL, '2025-08-20 07:12:55', '2025-08-20 07:12:55', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56240, 5, 3, 40, 35, 226, 384, 3, 2, 20, 'SemaineB', 9, NULL, '2025-08-20 07:12:55', '2025-08-20 07:12:55', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56241, 5, 3, 45, 35, 226, 384, 3, 2, 20, 'SemaineB', 10, NULL, '2025-08-20 07:12:56', '2025-08-20 07:12:56', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56242, 1, 4, 45, 95, 181, 383, 3, 2, 20, 'SemaineA', 2, NULL, '2025-08-20 07:12:56', '2025-08-20 07:12:56', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56243, 1, 2, 46, 95, 181, 382, 3, 2, 20, 'SemaineA', 49, NULL, '2025-08-20 07:12:56', '2025-08-20 07:12:56', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56244, 2, 4, 44, 95, 181, 383, 3, 2, 20, 'SemaineA', 1, NULL, '2025-08-20 07:12:57', '2025-08-20 07:12:57', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56245, 2, 4, 44, 95, 181, 383, 3, 2, 20, 'SemaineB', 4, NULL, '2025-08-20 07:12:57', '2025-08-20 07:12:57', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56246, 3, 4, 40, 95, 181, 383, 3, 2, 20, 'SemaineA', 5, NULL, '2025-08-20 07:12:57', '2025-08-20 07:12:57', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56247, 3, 4, 40, 95, 181, 383, 3, 2, 20, 'SemaineB', 6, NULL, '2025-08-20 07:12:57', '2025-08-20 07:12:57', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56248, 4, 4, 46, 95, 181, 383, 3, 2, 20, 'SemaineA', 7, NULL, '2025-08-20 07:12:57', '2025-08-20 07:12:57', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56249, 4, 4, 46, 95, 181, 383, 3, 2, 20, 'SemaineB', 8, NULL, '2025-08-20 07:12:57', '2025-08-20 07:12:57', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56250, 5, 4, 41, 95, 181, 383, 3, 2, 20, 'SemaineA', 9, NULL, '2025-08-20 07:12:58', '2025-08-20 07:12:58', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56251, 5, 4, 41, 95, 181, 383, 3, 2, 20, 'SemaineB', 10, NULL, '2025-08-20 07:12:58', '2025-08-20 07:12:58', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56252, 6, 3, 41, 95, 262, 383, 3, 2, 20, 'SemaineB', 11, NULL, '2025-08-20 07:12:58', '2025-08-20 07:12:58', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56253, 6, 1, 44, 95, 262, 382, 3, 2, 20, 'SemaineB', 12, NULL, '2025-08-20 07:12:58', '2025-08-20 07:12:58', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56254, 11, 2, 40, 52, 255, 359, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:58', '2025-08-20 07:12:58', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56255, 12, 2, 41, 52, 255, 359, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:58', '2025-08-20 07:12:58', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56256, 13, 2, 44, 52, 255, 359, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:58', '2025-08-20 07:12:58', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56257, 14, 2, 45, 52, 255, 358, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:58', '2025-08-20 07:12:58', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56258, 17, 2, 46, 52, 255, 355, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:58', '2025-08-20 07:12:58', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56259, 15, 2, 40, 52, 210, 360, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:58', '2025-08-20 07:12:58', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56260, 16, 2, 41, 52, 210, 360, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:58', '2025-08-20 07:12:58', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56261, 26, 2, 44, 52, 210, 360, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:58', '2025-08-20 07:12:58', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56262, 14, 2, 40, 53, 201, 361, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:58', '2025-08-20 07:12:58', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56263, 15, 2, 41, 53, 201, 361, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:59', '2025-08-20 07:12:59', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56264, 16, 2, 44, 53, 201, 361, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:59', '2025-08-20 07:12:59', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56265, 17, 2, 40, 53, 219, 362, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:59', '2025-08-20 07:12:59', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56266, 26, 2, 41, 53, 219, 362, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:59', '2025-08-20 07:12:59', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56267, 11, 2, 41, 53, 213, 363, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:59', '2025-08-20 07:12:59', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56268, 12, 2, 40, 53, 213, 363, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:59', '2025-08-20 07:12:59', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56269, 13, 2, 45, 53, 213, 359, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:59', '2025-08-20 07:12:59', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56270, 11, 2, 44, 54, 185, 362, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:59', '2025-08-20 07:12:59', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56271, 12, 2, 45, 54, 185, 360, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:59', '2025-08-20 07:12:59', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56272, 13, 2, 40, 54, 185, 364, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:59', '2025-08-20 07:12:59', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56273, 14, 2, 41, 54, 185, 364, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:59', '2025-08-20 07:12:59', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56274, 15, 2, 46, 54, 185, 356, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:59', '2025-08-20 07:12:59', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56275, 16, 5, 40, 54, 185, 361, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:59', '2025-08-20 07:12:59', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56276, 17, 2, 41, 54, 208, 365, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:59', '2025-08-20 07:12:59', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56277, 26, 2, 40, 54, 208, 365, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:59', '2025-08-20 07:12:59', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56278, 11, 2, 45, 55, 160, 361, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:59', '2025-08-20 07:12:59', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56279, 12, 2, 44, 55, 160, 363, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:59', '2025-08-20 07:12:59', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56280, 13, 2, 41, 55, 160, 366, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:59', '2025-08-20 07:12:59', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56281, 14, 2, 46, 55, 160, 357, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:12:59', '2025-08-20 07:12:59', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56282, 17, 3, 46, 55, 184, 354, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:00', '2025-08-20 07:13:00', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56283, 26, 2, 45, 55, 184, 362, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:00', '2025-08-20 07:13:00', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56284, 15, 1, 44, 55, 189, 358, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:00', '2025-08-20 07:13:00', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56285, 16, 1, 45, 55, 189, 359, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:00', '2025-08-20 07:13:00', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56286, 15, 2, 44, 56, 256, 364, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:00', '2025-08-20 07:13:00', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56287, 16, 2, 40, 56, 256, 366, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:00', '2025-08-20 07:13:00', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56288, 17, 2, 45, 56, 256, 363, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:00', '2025-08-20 07:13:00', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56289, 11, 5, 40, 56, 169, 362, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:00', '2025-08-20 07:13:00', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56290, 12, 5, 41, 56, 169, 361, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:00', '2025-08-20 07:13:00', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56291, 13, 5, 44, 56, 169, 359, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:00', '2025-08-20 07:13:00', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56292, 14, 5, 45, 56, 169, 358, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:00', '2025-08-20 07:13:00', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56293, 26, 5, 40, 56, 257, 363, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:00', '2025-08-20 07:13:00', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56294, 11, 2, 46, 57, 194, 358, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:00', '2025-08-20 07:13:00', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56295, 12, 5, 40, 57, 194, 364, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:00', '2025-08-20 07:13:00', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56296, 13, 5, 45, 57, 194, 359, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:01', '2025-08-20 07:13:01', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56297, 14, 2, 44, 57, 194, 365, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:01', '2025-08-20 07:13:01', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56298, 15, 2, 45, 57, 221, 364, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:01', '2025-08-20 07:13:01', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56299, 16, 2, 46, 57, 221, 359, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:01', '2025-08-20 07:13:01', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56300, 17, 2, 44, 57, 221, 366, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:01', '2025-08-20 07:13:01', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56301, 26, 5, 41, 57, 221, 362, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:01', '2025-08-20 07:13:01', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56302, 12, 2, 46, 58, 158, 360, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:02', '2025-08-20 07:13:02', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 6 ', NULL),
(56303, 15, 4, 40, 58, 146, 356, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:02', '2025-08-20 07:13:02', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56304, 16, 4, 41, 58, 146, 355, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:03', '2025-08-20 07:13:03', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56305, 17, 4, 44, 58, 146, 354, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:03', '2025-08-20 07:13:03', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56306, 26, 4, 45, 58, 146, 354, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:03', '2025-08-20 07:13:03', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56307, 11, 1, 40, 59, 195, 359, 1, 2, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:13:03', '2025-08-20 07:13:03', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56308, 12, 1, 40, 59, 195, 360, 1, 2, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:13:03', '2025-08-20 07:13:03', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56309, 13, 1, 41, 59, 195, 359, 1, 2, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:13:03', '2025-08-20 07:13:03', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56310, 14, 1, 41, 59, 195, 360, 1, 2, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:13:03', '2025-08-20 07:13:03', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56311, 15, 1, 45, 59, 195, 360, 1, 2, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:13:03', '2025-08-20 07:13:03', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56312, 16, 1, 44, 59, 195, 359, 1, 2, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:13:03', '2025-08-20 07:13:03', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56313, 17, 1, 44, 59, 195, 360, 1, 2, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:13:03', '2025-08-20 07:13:03', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56314, 26, 1, 45, 59, 195, 361, 1, 2, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:13:03', '2025-08-20 07:13:03', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56315, 11, 3, 40, 60, 149, 357, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:03', '2025-08-20 07:13:03', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56316, 12, 3, 41, 60, 149, 356, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:03', '2025-08-20 07:13:03', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56317, 13, 3, 44, 60, 149, 356, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:03', '2025-08-20 07:13:03', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56318, 14, 3, 45, 60, 149, 355, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:03', '2025-08-20 07:13:03', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56319, 15, 3, 46, 60, 149, 355, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:03', '2025-08-20 07:13:03', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56320, 16, 2, 45, 60, 217, 365, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:03', '2025-08-20 07:13:03', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56321, 17, 5, 40, 60, 217, 365, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:03', '2025-08-20 07:13:03', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56322, 26, 2, 46, 60, 217, 361, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:03', '2025-08-20 07:13:03', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56323, 11, 1, 41, 61, 159, 357, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:04', '2025-08-20 07:13:04', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56324, 12, 1, 44, 61, 159, 357, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:04', '2025-08-20 07:13:04', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56325, 13, 1, 40, 61, 159, 357, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:04', '2025-08-20 07:13:04', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56326, 14, 1, 45, 61, 159, 357, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:04', '2025-08-20 07:13:04', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56327, 15, 1, 46, 61, 159, 357, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:04', '2025-08-20 07:13:04', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56328, 16, 5, 41, 61, 159, 357, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:04', '2025-08-20 07:13:04', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56329, 17, 5, 44, 61, 159, 357, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:04', '2025-08-20 07:13:04', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56330, 26, 5, 45, 61, 159, 357, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:04', '2025-08-20 07:13:04', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56331, 11, 1, 44, 62, 148, 362, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:05', '2025-08-20 07:13:05', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56332, 12, 1, 41, 62, 148, 362, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:05', '2025-08-20 07:13:05', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56333, 13, 1, 45, 62, 148, 362, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:05', '2025-08-20 07:13:05', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56334, 14, 1, 40, 62, 148, 362, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:05', '2025-08-20 07:13:05', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56335, 16, 1, 46, 62, 148, 358, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:06', '2025-08-20 07:13:06', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56336, 11, 5, 41, 96, 196, 363, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:07', '2025-08-20 07:13:07', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56337, 12, 5, 44, 96, 196, 361, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:07', '2025-08-20 07:13:07', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56338, 13, 5, 40, 96, 196, 366, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:07', '2025-08-20 07:13:07', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56339, 14, 4, 40, 96, 196, 357, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:07', '2025-08-20 07:13:07', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56340, 15, 5, 45, 96, 196, 360, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:07', '2025-08-20 07:13:07', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56341, 16, 4, 44, 96, 196, 355, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:07', '2025-08-20 07:13:07', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56342, 17, 4, 41, 96, 196, 356, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:07', '2025-08-20 07:13:07', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56343, 11, 5, 44, 97, 264, 362, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:08', '2025-08-20 07:13:08', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56344, 12, 5, 45, 97, 264, 361, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:08', '2025-08-20 07:13:08', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56345, 13, 5, 41, 97, 264, 364, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:08', '2025-08-20 07:13:08', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56346, 14, 5, 40, 97, 264, 367, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:08', '2025-08-20 07:13:08', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56347, 15, 1, 40, 97, 264, 363, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:08', '2025-08-20 07:13:08', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56348, 16, 1, 41, 97, 264, 363, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:08', '2025-08-20 07:13:08', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56349, 17, 5, 41, 97, 273, 365, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:08', '2025-08-20 07:13:08', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56350, 26, 5, 44, 97, 273, 363, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:08', '2025-08-20 07:13:08', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56351, 11, 1, 40, 101, 195, 364, 1, 2, 20, 'SemaineB', NULL, NULL, '2025-08-20 07:13:08', '2025-08-20 07:13:08', NULL, 7, 0, NULL, 0, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop new ', NULL),
(56352, 12, 1, 40, 101, 195, 365, 1, 2, 20, 'SemaineB', NULL, NULL, '2025-08-20 07:13:08', '2025-08-20 07:13:08', NULL, 7, 0, NULL, 0, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop new ', NULL),
(56353, 13, 1, 41, 101, 195, 364, 1, 2, 20, 'SemaineB', NULL, NULL, '2025-08-20 07:13:08', '2025-08-20 07:13:08', NULL, 7, 0, NULL, 0, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop new ', NULL),
(56354, 14, 1, 41, 101, 195, 365, 1, 2, 20, 'SemaineB', NULL, NULL, '2025-08-20 07:13:08', '2025-08-20 07:13:08', NULL, 7, 0, NULL, 0, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop new ', NULL),
(56355, 15, 1, 45, 101, 195, 363, 1, 2, 20, 'SemaineB', NULL, NULL, '2025-08-20 07:13:08', '2025-08-20 07:13:08', NULL, 7, 0, NULL, 0, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop new ', NULL),
(56356, 16, 1, 44, 101, 195, 363, 1, 2, 20, 'SemaineB', NULL, NULL, '2025-08-20 07:13:08', '2025-08-20 07:13:08', NULL, 7, 0, NULL, 0, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop new ', NULL),
(56357, 17, 1, 44, 101, 195, 364, 1, 2, 20, 'SemaineB', NULL, NULL, '2025-08-20 07:13:08', '2025-08-20 07:13:08', NULL, 7, 0, NULL, 0, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop new ', NULL),
(56358, 26, 1, 45, 101, 195, 364, 1, 2, 20, 'SemaineB', NULL, NULL, '2025-08-20 07:13:08', '2025-08-20 07:13:08', NULL, 7, 0, NULL, 0, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop new ', NULL),
(56359, 11, 5, 45, 63, 182, 384, 3, 2, 19, 'H', 21, NULL, '2025-08-20 07:13:08', '2025-08-20 07:13:08', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56360, 11, 1, 45, 63, 182, 384, 3, 2, 19, 'H', 22, NULL, '2025-08-20 07:13:09', '2025-08-20 07:13:09', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56361, 12, 3, 40, 63, 182, 385, 3, 2, 19, 'H', 23, NULL, '2025-08-20 07:13:09', '2025-08-20 07:13:09', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56362, 12, 4, 40, 63, 182, 385, 3, 2, 19, 'H', 24, NULL, '2025-08-20 07:13:09', '2025-08-20 07:13:09', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56363, 13, 4, 41, 63, 182, 385, 3, 2, 19, 'H', 25, NULL, '2025-08-20 07:13:10', '2025-08-20 07:13:10', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56364, 13, 4, 44, 63, 182, 385, 3, 2, 19, 'H', 26, NULL, '2025-08-20 07:13:10', '2025-08-20 07:13:10', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56365, 14, 5, 41, 63, 182, 384, 3, 2, 19, 'H', 27, NULL, '2025-08-20 07:13:10', '2025-08-20 07:13:10', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56366, 14, 5, 44, 63, 182, 384, 3, 2, 19, 'H', 28, NULL, '2025-08-20 07:13:10', '2025-08-20 07:13:10', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56367, 15, 5, 40, 63, 182, 384, 3, 2, 19, 'H', 29, NULL, '2025-08-20 07:13:11', '2025-08-20 07:13:11', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56368, 15, 1, 41, 63, 182, 384, 3, 2, 19, 'H', 30, NULL, '2025-08-20 07:13:11', '2025-08-20 07:13:11', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56369, 16, 1, 40, 63, 182, 384, 3, 2, 19, 'H', 31, NULL, '2025-08-20 07:13:11', '2025-08-20 07:13:11', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56370, 16, 4, 45, 63, 182, 385, 3, 2, 19, 'H', 32, NULL, '2025-08-20 07:13:12', '2025-08-20 07:13:12', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56371, 17, 1, 46, 63, 182, 385, 3, 2, 19, 'H', 33, NULL, '2025-08-20 07:13:12', '2025-08-20 07:13:12', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56372, 17, 3, 44, 63, 182, 385, 3, 2, 19, 'H', 34, NULL, '2025-08-20 07:13:13', '2025-08-20 07:13:13', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56373, 26, 3, 45, 63, 182, 385, 3, 2, 19, 'H', 51, NULL, '2025-08-20 07:13:13', '2025-08-20 07:13:13', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56374, 26, 3, 46, 63, 182, 384, 3, 2, 19, 'H', 52, NULL, '2025-08-20 07:13:14', '2025-08-20 07:13:14', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56375, 16, 5, 44, 64, 218, 389, 3, 2, 19, 'H', 31, NULL, '2025-08-20 07:13:14', '2025-08-20 07:13:14', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56376, 16, 5, 45, 64, 218, 389, 3, 2, 19, 'H', 32, NULL, '2025-08-20 07:13:14', '2025-08-20 07:13:14', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56377, 17, 1, 40, 64, 218, 388, 3, 2, 19, 'H', 33, NULL, '2025-08-20 07:13:15', '2025-08-20 07:13:15', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56378, 11, 3, 41, 64, 188, 389, 3, 2, 19, 'H', 21, NULL, '2025-08-20 07:13:15', '2025-08-20 07:13:15', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56379, 11, 4, 40, 64, 188, 388, 3, 2, 19, 'H', 22, NULL, '2025-08-20 07:13:15', '2025-08-20 07:13:15', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56380, 12, 4, 41, 64, 188, 389, 3, 2, 19, 'H', 23, NULL, '2025-08-20 07:13:15', '2025-08-20 07:13:15', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL);
INSERT INTO `seances` (`id`, `section_id`, `day_id`, `period_id`, `subject_id`, `teacher_id`, `classroom_id`, `subject_type_id`, `year_division_id`, `week_type_id`, `week_name`, `group_tp_id`, `group_td_id`, `created_at`, `updated_at`, `deleted_at`, `establishment_id`, `next`, `related_id`, `duree`, `start_hour`, `end_hour`, `start_date`, `end_date`, `is_locked`, `type`, `display_name`, `teacher2_id`, `section2_id`, `note`, `regime_id`) VALUES
(56381, 12, 3, 40, 64, 188, 389, 3, 2, 19, 'H', 24, NULL, '2025-08-20 07:13:15', '2025-08-20 07:13:15', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56382, 13, 4, 44, 64, 188, 388, 3, 2, 19, 'H', 25, NULL, '2025-08-20 07:13:15', '2025-08-20 07:13:15', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56383, 13, 4, 45, 64, 188, 388, 3, 2, 19, 'H', 26, NULL, '2025-08-20 07:13:15', '2025-08-20 07:13:15', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56384, 14, 3, 44, 64, 188, 388, 3, 2, 19, 'H', 27, NULL, '2025-08-20 07:13:16', '2025-08-20 07:13:16', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56385, 14, 3, 46, 64, 188, 388, 3, 2, 19, 'H', 28, NULL, '2025-08-20 07:13:16', '2025-08-20 07:13:16', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56386, 15, 3, 45, 64, 188, 389, 3, 2, 19, 'H', 29, NULL, '2025-08-20 07:13:16', '2025-08-20 07:13:16', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56387, 17, 5, 45, 64, 206, 378, 3, 2, 19, 'H', 34, NULL, '2025-08-20 07:13:17', '2025-08-20 07:13:17', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56388, 26, 1, 40, 64, 206, 377, 3, 2, 19, 'H', 51, NULL, '2025-08-20 07:13:17', '2025-08-20 07:13:17', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56389, 26, 1, 41, 64, 206, 377, 3, 2, 19, 'H', 52, NULL, '2025-08-20 07:13:17', '2025-08-20 07:13:17', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56390, 11, 4, 40, 65, 152, 389, 3, 2, 19, 'H', 21, NULL, '2025-08-20 07:13:17', '2025-08-20 07:13:17', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56391, 11, 3, 41, 65, 152, 379, 3, 2, 19, 'H', 22, NULL, '2025-08-20 07:13:18', '2025-08-20 07:13:18', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56392, 12, 4, 44, 65, 152, 389, 3, 2, 19, 'H', 23, NULL, '2025-08-20 07:13:18', '2025-08-20 07:13:18', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56393, 12, 4, 41, 65, 152, 378, 3, 2, 19, 'H', 24, NULL, '2025-08-20 07:13:18', '2025-08-20 07:13:18', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56394, 13, 3, 40, 65, 152, 378, 3, 2, 19, 'H', 25, NULL, '2025-08-20 07:13:18', '2025-08-20 07:13:18', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56395, 13, 3, 45, 65, 152, 378, 3, 2, 19, 'H', 26, NULL, '2025-08-20 07:13:18', '2025-08-20 07:13:18', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56396, 14, 4, 45, 65, 152, 389, 3, 2, 19, 'H', 27, NULL, '2025-08-20 07:13:18', '2025-08-20 07:13:18', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56397, 14, 3, 44, 65, 152, 389, 3, 2, 19, 'H', 28, NULL, '2025-08-20 07:13:19', '2025-08-20 07:13:19', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56398, 15, 4, 46, 65, 152, 388, 3, 2, 19, 'H', 29, NULL, '2025-08-20 07:13:19', '2025-08-20 07:13:19', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56399, 16, 5, 45, 65, 166, 379, 3, 2, 19, 'H', 31, NULL, '2025-08-20 07:13:20', '2025-08-20 07:13:20', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56400, 16, 5, 44, 65, 166, 377, 3, 2, 19, 'H', 32, NULL, '2025-08-20 07:13:21', '2025-08-20 07:13:21', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56401, 17, 1, 41, 65, 166, 388, 3, 2, 19, 'H', 33, NULL, '2025-08-20 07:13:21', '2025-08-20 07:13:21', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56402, 17, 1, 40, 65, 166, 389, 3, 2, 19, 'H', 34, NULL, '2025-08-20 07:13:21', '2025-08-20 07:13:21', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56403, 26, 1, 44, 65, 166, 388, 3, 2, 19, 'H', 51, NULL, '2025-08-20 07:13:22', '2025-08-20 07:13:22', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56404, 26, 3, 40, 65, 166, 379, 3, 2, 19, 'H', 52, NULL, '2025-08-20 07:13:22', '2025-08-20 07:13:22', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56405, 18, 2, 40, 81, 155, 367, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:22', '2025-08-20 07:13:22', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56406, 19, 2, 41, 81, 155, 367, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:22', '2025-08-20 07:13:22', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56407, 20, 2, 44, 81, 155, 367, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:22', '2025-08-20 07:13:22', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56408, 21, 2, 45, 81, 155, 366, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:22', '2025-08-20 07:13:22', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56409, 22, 2, 40, 81, 221, 368, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:22', '2025-08-20 07:13:22', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56410, 23, 2, 41, 81, 221, 368, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:22', '2025-08-20 07:13:22', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56411, 24, 2, 40, 81, 170, 369, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:22', '2025-08-20 07:13:22', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56412, 18, 2, 41, 82, 162, 369, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:22', '2025-08-20 07:13:22', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56413, 19, 2, 40, 82, 162, 370, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:22', '2025-08-20 07:13:22', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56414, 20, 2, 45, 82, 162, 367, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:22', '2025-08-20 07:13:22', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56415, 21, 2, 44, 82, 162, 368, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:23', '2025-08-20 07:13:23', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56416, 22, 2, 41, 82, 259, 370, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:23', '2025-08-20 07:13:23', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56417, 23, 2, 40, 82, 259, 371, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:23', '2025-08-20 07:13:23', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56418, 24, 2, 44, 82, 259, 369, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:23', '2025-08-20 07:13:23', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56419, 18, 2, 44, 83, 137, 370, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:23', '2025-08-20 07:13:23', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56420, 19, 2, 45, 83, 137, 368, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:23', '2025-08-20 07:13:23', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56421, 20, 2, 40, 83, 137, 372, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:23', '2025-08-20 07:13:23', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56422, 21, 2, 41, 83, 137, 371, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:23', '2025-08-20 07:13:23', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56423, 22, 2, 44, 83, 144, 371, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:23', '2025-08-20 07:13:23', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56424, 23, 2, 45, 83, 144, 369, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:23', '2025-08-20 07:13:23', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56425, 24, 2, 41, 83, 144, 372, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:23', '2025-08-20 07:13:23', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56426, 18, 5, 40, 84, 160, 368, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:23', '2025-08-20 07:13:23', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56427, 19, 5, 41, 84, 160, 366, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:24', '2025-08-20 07:13:24', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56428, 20, 5, 44, 84, 160, 364, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:24', '2025-08-20 07:13:24', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56429, 21, 2, 46, 84, 167, 362, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:24', '2025-08-20 07:13:24', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56430, 22, 2, 45, 84, 167, 370, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:24', '2025-08-20 07:13:24', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56431, 23, 2, 44, 84, 167, 372, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:24', '2025-08-20 07:13:24', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56432, 24, 3, 40, 84, 167, 358, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:25', '2025-08-20 07:13:25', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56433, 18, 2, 45, 86, 161, 371, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:25', '2025-08-20 07:13:25', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56434, 19, 2, 44, 86, 161, 373, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:25', '2025-08-20 07:13:25', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56435, 20, 2, 41, 86, 161, 373, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:25', '2025-08-20 07:13:25', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56436, 21, 2, 40, 86, 161, 373, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:25', '2025-08-20 07:13:25', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56437, 22, 2, 46, 86, 161, 363, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:25', '2025-08-20 07:13:25', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56438, 23, 3, 40, 86, 249, 359, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:25', '2025-08-20 07:13:25', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56439, 24, 3, 41, 86, 249, 357, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:25', '2025-08-20 07:13:25', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56440, 23, 4, 46, 88, 226, 353, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:25', '2025-08-20 07:13:25', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56441, 24, 3, 46, 88, 226, 356, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:25', '2025-08-20 07:13:25', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56442, 18, 5, 41, 88, 141, 367, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:25', '2025-08-20 07:13:25', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56443, 19, 5, 40, 88, 141, 369, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:25', '2025-08-20 07:13:25', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56444, 20, 5, 45, 88, 141, 362, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:26', '2025-08-20 07:13:26', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56445, 21, 5, 44, 88, 141, 365, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:26', '2025-08-20 07:13:26', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56446, 22, 1, 40, 88, 141, 366, 1, 2, 19, 'H', NULL, NULL, '2025-08-20 07:13:26', '2025-08-20 07:13:26', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56447, 18, 5, 44, 85, 179, 378, 3, 2, 20, 'SemaineA', 35, NULL, '2025-08-20 07:13:26', '2025-08-20 07:13:26', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56448, 18, 5, 44, 85, 179, 378, 3, 2, 20, 'SemaineB', 36, NULL, '2025-08-20 07:13:26', '2025-08-20 07:13:26', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56449, 19, 5, 45, 85, 179, 380, 3, 2, 20, 'SemaineA', 37, NULL, '2025-08-20 07:13:27', '2025-08-20 07:13:27', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56450, 19, 5, 45, 85, 179, 380, 3, 2, 20, 'SemaineB', 38, NULL, '2025-08-20 07:13:27', '2025-08-20 07:13:27', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56451, 20, 5, 40, 85, 179, 377, 3, 2, 20, 'SemaineA', 39, NULL, '2025-08-20 07:13:27', '2025-08-20 07:13:27', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56452, 20, 5, 40, 85, 179, 377, 3, 2, 20, 'SemaineB', 40, NULL, '2025-08-20 07:13:27', '2025-08-20 07:13:27', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56453, 21, 5, 41, 85, 179, 377, 3, 2, 20, 'SemaineA', 41, NULL, '2025-08-20 07:13:27', '2025-08-20 07:13:27', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56454, 21, 5, 41, 85, 179, 377, 3, 2, 20, 'SemaineB', 42, NULL, '2025-08-20 07:13:27', '2025-08-20 07:13:27', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56455, 22, 1, 41, 85, 179, 378, 3, 2, 20, 'SemaineA', 43, NULL, '2025-08-20 07:13:28', '2025-08-20 07:13:28', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56456, 22, 1, 41, 85, 179, 378, 3, 2, 20, 'SemaineB', 44, NULL, '2025-08-20 07:13:28', '2025-08-20 07:13:28', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56457, 23, 1, 40, 85, 179, 378, 3, 2, 20, 'SemaineA', 45, NULL, '2025-08-20 07:13:28', '2025-08-20 07:13:28', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56458, 23, 1, 40, 85, 179, 378, 3, 2, 20, 'SemaineB', 46, NULL, '2025-08-20 07:13:28', '2025-08-20 07:13:28', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56459, 24, 1, 44, 85, 179, 378, 3, 2, 20, 'SemaineA', 47, NULL, '2025-08-20 07:13:28', '2025-08-20 07:13:28', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56460, 24, 1, 44, 85, 179, 378, 3, 2, 20, 'SemaineB', 48, NULL, '2025-08-20 07:13:28', '2025-08-20 07:13:28', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56461, 18, 1, 40, 102, 173, 379, 3, 2, 19, 'H', 35, NULL, '2025-08-20 07:13:28', '2025-08-20 07:13:28', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56462, 18, 1, 41, 102, 173, 379, 3, 2, 19, 'H', 36, NULL, '2025-08-20 07:13:29', '2025-08-20 07:13:29', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56463, 19, 1, 44, 102, 173, 379, 3, 2, 19, 'H', 37, NULL, '2025-08-20 07:13:29', '2025-08-20 07:13:29', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56464, 19, 1, 45, 102, 173, 377, 3, 2, 19, 'H', 38, NULL, '2025-08-20 07:13:29', '2025-08-20 07:13:29', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56465, 20, 5, 40, 102, 143, 378, 3, 2, 20, 'SemaineB', 39, NULL, '2025-08-20 07:13:29', '2025-08-20 07:13:29', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56466, 20, 5, 40, 102, 143, 378, 3, 2, 20, 'SemaineA', 40, NULL, '2025-08-20 07:13:29', '2025-08-20 07:13:29', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 120  id   week h id 20', NULL),
(56467, 21, 5, 41, 102, 143, 378, 3, 2, 20, 'SemaineB', 41, NULL, '2025-08-20 07:13:29', '2025-08-20 07:13:29', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56468, 21, 5, 41, 102, 143, 378, 3, 2, 20, 'SemaineA', 42, NULL, '2025-08-20 07:13:29', '2025-08-20 07:13:29', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 120  id   week h id 20', NULL),
(56469, 22, 1, 41, 102, 143, 380, 3, 2, 20, 'SemaineB', 43, NULL, '2025-08-20 07:13:30', '2025-08-20 07:13:30', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56470, 22, 1, 41, 102, 143, 380, 3, 2, 20, 'SemaineA', 44, NULL, '2025-08-20 07:13:30', '2025-08-20 07:13:30', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 120  id   week h id 20', NULL),
(56471, 23, 1, 40, 102, 143, 380, 3, 2, 20, 'SemaineB', 45, NULL, '2025-08-20 07:13:30', '2025-08-20 07:13:30', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56472, 23, 1, 40, 102, 143, 380, 3, 2, 20, 'SemaineA', 46, NULL, '2025-08-20 07:13:30', '2025-08-20 07:13:30', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 120  id   week h id 20', NULL),
(56473, 24, 1, 44, 102, 174, 380, 3, 2, 20, 'SemaineB', 47, NULL, '2025-08-20 07:13:30', '2025-08-20 07:13:30', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56474, 24, 1, 44, 102, 174, 380, 3, 2, 20, 'SemaineA', 48, NULL, '2025-08-20 07:13:30', '2025-08-20 07:13:30', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 120  id   week h id 20', NULL),
(56475, 22, 1, 44, 87, 198, 389, 2, 2, 19, 'H', NULL, 22, '2025-08-20 07:13:30', '2025-08-20 07:13:30', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, '2TD loop 6', NULL),
(56476, 22, 1, 45, 87, 198, 389, 2, 2, 19, 'H', NULL, 22, '2025-08-20 07:13:31', '2025-08-20 07:13:31', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, '1TD loop 6', NULL),
(56477, 21, 1, 41, 87, 223, 389, 2, 2, 19, 'H', NULL, 21, '2025-08-20 07:13:32', '2025-08-20 07:13:32', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, '2TD loop 8', NULL),
(56478, 21, 1, 46, 87, 223, 389, 2, 2, 19, 'H', NULL, 21, '2025-08-20 07:13:32', '2025-08-20 07:13:32', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, '1TD loop 8', NULL),
(56479, 20, 1, 40, 87, 207, NULL, 2, 2, 19, 'H', NULL, 20, '2025-08-20 07:13:33', '2025-08-20 07:13:33', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, '2TD loop 9', NULL),
(56480, 20, 1, 41, 87, 207, NULL, 2, 2, 19, 'H', NULL, 20, '2025-08-20 07:13:33', '2025-08-20 07:13:33', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, '1TD loop 9', NULL),
(56481, 18, 5, 45, 87, 181, NULL, 2, 2, 19, 'H', NULL, 18, '2025-08-20 07:13:34', '2025-08-20 07:13:34', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, '2TD loop 9', NULL),
(56482, 18, 1, 44, 87, 181, NULL, 2, 2, 19, 'H', NULL, 18, '2025-08-20 07:13:35', '2025-08-20 07:13:35', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, '1TD loop 9', NULL),
(56483, 19, 1, 40, 87, 181, NULL, 2, 2, 19, 'H', NULL, 19, '2025-08-20 07:13:36', '2025-08-20 07:13:36', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, '2TD loop 9', NULL),
(56484, 19, 1, 41, 87, 181, NULL, 2, 2, 19, 'H', NULL, 19, '2025-08-20 07:13:36', '2025-08-20 07:13:36', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, '1TD loop 9', NULL),
(56485, 23, 5, 40, 87, 252, 389, 2, 2, 19, 'H', NULL, 23, '2025-08-20 07:13:37', '2025-08-20 07:13:37', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, '2TD loop 8', NULL),
(56486, 23, 5, 41, 87, 252, 389, 2, 2, 19, 'H', NULL, 23, '2025-08-20 07:13:37', '2025-08-20 07:13:37', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, '1TD loop 8', NULL),
(56487, 24, 2, 45, 87, 261, 389, 2, 2, 19, 'H', NULL, 24, '2025-08-20 07:13:38', '2025-08-20 07:13:38', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, '2TD loop 6', NULL),
(56488, 24, 2, 46, 87, 261, 389, 2, 2, 19, 'H', NULL, 24, '2025-08-20 07:13:39', '2025-08-20 07:13:39', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, '1TD loop 8', NULL),
(56489, 1, 3, 40, 1, 222, 353, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:35:58', '2025-08-20 07:35:58', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56490, 2, 3, 41, 1, 222, 353, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:35:58', '2025-08-20 07:35:58', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56491, 3, 3, 44, 1, 222, 353, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:35:58', '2025-08-20 07:35:58', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56492, 4, 3, 41, 1, 268, 354, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:35:58', '2025-08-20 07:35:58', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56493, 5, 3, 44, 1, 268, 354, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:35:58', '2025-08-20 07:35:58', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56494, 6, 3, 40, 1, 268, 354, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:35:58', '2025-08-20 07:35:58', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56495, 1, 3, 45, 5, 194, 354, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:35:58', '2025-08-20 07:35:58', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56496, 1, 2, 44, 5, 194, 357, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:35:58', '2025-08-20 07:35:58', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56497, 1, 2, 45, 6, 190, 353, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:35:58', '2025-08-20 07:35:58', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56498, 1, 1, 45, 6, 190, 353, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:35:58', '2025-08-20 07:35:58', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56499, 2, 2, 46, 6, 190, 353, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:35:58', '2025-08-20 07:35:58', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56500, 2, 1, 44, 6, 190, 353, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:35:59', '2025-08-20 07:35:59', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56501, 3, 2, 40, 6, 190, 353, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:35:59', '2025-08-20 07:35:59', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56502, 3, 1, 40, 6, 190, 353, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:35:59', '2025-08-20 07:35:59', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56503, 4, 2, 41, 6, 263, 355, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:35:59', '2025-08-20 07:35:59', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56504, 4, 1, 40, 6, 263, 361, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:35:59', '2025-08-20 07:35:59', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56505, 5, 2, 44, 6, 263, 358, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:35:59', '2025-08-20 07:35:59', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56506, 5, 1, 41, 6, 263, 353, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:35:59', '2025-08-20 07:35:59', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56507, 6, 2, 46, 6, 263, 354, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:35:59', '2025-08-20 07:35:59', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56508, 6, 1, 44, 6, 263, 356, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:35:59', '2025-08-20 07:35:59', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56509, 3, 2, 41, 7, 180, 357, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:35:59', '2025-08-20 07:35:59', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56510, 3, 1, 46, 7, 180, 356, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:00', '2025-08-20 07:36:00', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 6 ', NULL),
(56511, 4, 2, 46, 7, 180, 356, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:00', '2025-08-20 07:36:00', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56512, 4, 1, 41, 7, 180, 363, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:00', '2025-08-20 07:36:00', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56513, 5, 2, 45, 7, 180, 355, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:00', '2025-08-20 07:36:00', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56514, 5, 1, 44, 7, 180, 359, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:00', '2025-08-20 07:36:00', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56515, 6, 1, 45, 7, 180, 359, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:00', '2025-08-20 07:36:00', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56516, 6, 4, 40, 13, 269, 354, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:03', '2025-08-20 07:36:03', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56517, 6, 5, 41, 13, 269, 353, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:03', '2025-08-20 07:36:03', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56518, 4, 1, 44, 16, 204, 364, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:04', '2025-08-20 07:36:04', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56519, 5, 4, 45, 16, 204, 354, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:04', '2025-08-20 07:36:04', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56520, 1, 5, 40, 16, 265, 354, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:04', '2025-08-20 07:36:04', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56521, 2, 5, 41, 16, 265, 358, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:04', '2025-08-20 07:36:04', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56522, 3, 5, 44, 16, 265, 353, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:04', '2025-08-20 07:36:04', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56523, 6, 4, 41, 16, 220, 357, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:04', '2025-08-20 07:36:04', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56524, 1, 5, 44, 18, 228, 358, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:36:04', '2025-08-20 07:36:04', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56525, 2, 5, 44, 18, 228, 359, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:36:04', '2025-08-20 07:36:04', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56526, 3, 5, 41, 18, 228, 359, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:36:04', '2025-08-20 07:36:04', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56527, 4, 5, 40, 18, 228, 359, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:36:04', '2025-08-20 07:36:04', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56528, 5, 5, 40, 18, 228, 360, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:36:04', '2025-08-20 07:36:04', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56529, 6, 5, 45, 18, 228, 353, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:36:04', '2025-08-20 07:36:04', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56530, 1, 3, 44, 4, 173, 377, 3, 1, 19, 'H', 2, NULL, '2025-08-20 07:36:05', '2025-08-20 07:36:05', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56531, 1, 2, 46, 4, 173, 377, 3, 1, 19, 'H', 49, NULL, '2025-08-20 07:36:05', '2025-08-20 07:36:05', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56532, 2, 1, 45, 4, 173, 377, 3, 1, 20, 'SemaineB', 1, NULL, '2025-08-20 07:36:06', '2025-08-20 07:36:06', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56533, 2, 1, 45, 4, 173, 377, 3, 1, 20, 'SemaineA', 4, NULL, '2025-08-20 07:36:06', '2025-08-20 07:36:06', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 120  id   week h id 20', NULL),
(56534, 3, 1, 41, 4, 173, 377, 3, 1, 20, 'SemaineB', 5, NULL, '2025-08-20 07:36:06', '2025-08-20 07:36:06', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56535, 3, 1, 41, 4, 173, 377, 3, 1, 20, 'SemaineA', 6, NULL, '2025-08-20 07:36:06', '2025-08-20 07:36:06', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56536, 4, 3, 40, 4, 173, 377, 3, 1, 20, 'SemaineB', 7, NULL, '2025-08-20 07:36:06', '2025-08-20 07:36:06', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56537, 4, 3, 40, 4, 173, 377, 3, 1, 20, 'SemaineA', 8, NULL, '2025-08-20 07:36:06', '2025-08-20 07:36:06', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 120  id   week h id 20', NULL),
(56538, 5, 4, 44, 4, 171, 378, 3, 1, 20, 'SemaineB', 9, NULL, '2025-08-20 07:36:06', '2025-08-20 07:36:06', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56539, 5, 4, 44, 4, 171, 378, 3, 1, 20, 'SemaineA', 10, NULL, '2025-08-20 07:36:06', '2025-08-20 07:36:06', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 120  id   week h id 20', NULL),
(56540, 6, 1, 40, 4, 171, 378, 3, 1, 20, 'SemaineB', 11, NULL, '2025-08-20 07:36:06', '2025-08-20 07:36:06', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56541, 6, 1, 40, 4, 171, 378, 3, 1, 20, 'SemaineA', 12, NULL, '2025-08-20 07:36:06', '2025-08-20 07:36:06', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 120  id   week h id 20', NULL),
(56542, 1, 4, 46, 14, 168, 377, 3, 1, 20, 'SemaineA', 2, NULL, '2025-08-20 07:36:06', '2025-08-20 07:36:06', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56543, 2, 3, 46, 14, 168, 377, 3, 1, 20, 'SemaineA', 1, NULL, '2025-08-20 07:36:07', '2025-08-20 07:36:07', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56544, 3, 3, 40, 14, 168, 378, 3, 1, 20, 'SemaineB', 5, NULL, '2025-08-20 07:36:07', '2025-08-20 07:36:07', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56545, 3, 3, 41, 14, 168, 378, 3, 1, 20, 'SemaineB', 6, NULL, '2025-08-20 07:36:07', '2025-08-20 07:36:07', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56546, 5, 4, 41, 14, 168, 377, 3, 1, 20, 'SemaineB', 9, NULL, '2025-08-20 07:36:08', '2025-08-20 07:36:08', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56547, 5, 4, 40, 14, 168, 377, 3, 1, 20, 'SemaineB', 10, NULL, '2025-08-20 07:36:08', '2025-08-20 07:36:08', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56548, 1, 5, 45, 15, 181, 377, 3, 1, 20, 'SemaineA', 2, NULL, '2025-08-20 07:36:10', '2025-08-20 07:36:10', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56549, 1, 4, 46, 15, 181, 378, 3, 1, 20, 'SemaineA', 49, NULL, '2025-08-20 07:36:11', '2025-08-20 07:36:11', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56550, 2, 3, 45, 15, 181, 377, 3, 1, 20, 'SemaineA', 1, NULL, '2025-08-20 07:36:12', '2025-08-20 07:36:12', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56551, 2, 3, 46, 15, 181, 379, 3, 1, 20, 'SemaineA', 4, NULL, '2025-08-20 07:36:12', '2025-08-20 07:36:12', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56552, 3, 3, 40, 15, 181, 379, 3, 1, 20, 'SemaineA', 5, NULL, '2025-08-20 07:36:12', '2025-08-20 07:36:12', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 120  id   week h id 20', NULL),
(56553, 3, 3, 41, 15, 181, 379, 3, 1, 20, 'SemaineA', 6, NULL, '2025-08-20 07:36:12', '2025-08-20 07:36:12', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 120  id   week h id 20', NULL),
(56554, 4, 5, 44, 15, 181, 377, 3, 1, 20, 'SemaineA', 7, NULL, '2025-08-20 07:36:13', '2025-08-20 07:36:13', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56555, 5, 4, 41, 15, 181, 378, 3, 1, 20, 'SemaineA', 9, NULL, '2025-08-20 07:36:13', '2025-08-20 07:36:13', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 120  id   week h id 20', NULL),
(56556, 5, 4, 40, 15, 181, 379, 3, 1, 20, 'SemaineA', 10, NULL, '2025-08-20 07:36:13', '2025-08-20 07:36:13', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 120  id   week h id 20', NULL),
(56557, 6, 4, 44, 15, 262, 380, 3, 1, 20, 'SemaineA', 11, NULL, '2025-08-20 07:36:14', '2025-08-20 07:36:14', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56558, 6, 4, 45, 15, 262, 378, 3, 1, 20, 'SemaineA', 12, NULL, '2025-08-20 07:36:14', '2025-08-20 07:36:14', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56559, 4, 5, 44, 16, 204, 378, 3, 1, 20, 'SemaineB', 7, NULL, '2025-08-20 07:36:14', '2025-08-20 07:36:14', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56560, 4, 5, 44, 16, 204, 378, 3, 1, 20, 'SemaineA', 8, NULL, '2025-08-20 07:36:14', '2025-08-20 07:36:14', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56561, 5, 3, 41, 16, 204, 377, 3, 1, 19, 'H', 9, NULL, '2025-08-20 07:36:14', '2025-08-20 07:36:14', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56562, 5, 5, 45, 16, 204, 378, 3, 1, 19, 'H', 10, NULL, '2025-08-20 07:36:15', '2025-08-20 07:36:15', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56563, 1, 5, 45, 16, 265, 379, 3, 1, 20, 'SemaineB', 2, NULL, '2025-08-20 07:36:15', '2025-08-20 07:36:15', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56564, 1, 5, 45, 16, 265, 379, 3, 1, 20, 'SemaineA', 49, NULL, '2025-08-20 07:36:15', '2025-08-20 07:36:15', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56565, 2, 3, 45, 16, 265, 380, 3, 1, 20, 'SemaineB', 1, NULL, '2025-08-20 07:36:15', '2025-08-20 07:36:15', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56566, 2, 3, 45, 16, 265, 380, 3, 1, 20, 'SemaineA', 4, NULL, '2025-08-20 07:36:15', '2025-08-20 07:36:15', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56567, 3, 4, 40, 16, 265, 378, 3, 1, 19, 'H', 5, NULL, '2025-08-20 07:36:15', '2025-08-20 07:36:15', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56568, 3, 4, 45, 16, 265, 380, 3, 1, 20, 'SemaineB', 6, NULL, '2025-08-20 07:36:15', '2025-08-20 07:36:15', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56569, 6, 4, 44, 16, 220, 382, 3, 1, 20, 'SemaineB', 11, NULL, '2025-08-20 07:36:15', '2025-08-20 07:36:15', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56570, 6, 4, 44, 16, 220, 382, 3, 1, 20, 'SemaineA', 12, NULL, '2025-08-20 07:36:15', '2025-08-20 07:36:15', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56571, 1, 3, 46, 17, 182, 378, 3, 1, 20, 'SemaineA', 2, NULL, '2025-08-20 07:36:15', '2025-08-20 07:36:15', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 120  id   week h id 20', NULL),
(56572, 1, 3, 46, 17, 182, 378, 3, 1, 20, 'SemaineB', 49, NULL, '2025-08-20 07:36:15', '2025-08-20 07:36:15', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 120  id   week h id 20', NULL),
(56573, 2, 5, 45, 17, 182, 380, 3, 1, 20, 'SemaineA', 1, NULL, '2025-08-20 07:36:15', '2025-08-20 07:36:15', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56574, 2, 3, 45, 17, 182, 381, 3, 1, 20, 'SemaineB', 4, NULL, '2025-08-20 07:36:15', '2025-08-20 07:36:15', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56575, 3, 4, 45, 17, 182, 382, 3, 1, 20, 'SemaineB', 5, NULL, '2025-08-20 07:36:15', '2025-08-20 07:36:15', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56576, 3, 1, 41, 17, 182, 378, 3, 1, 20, 'SemaineB', 6, NULL, '2025-08-20 07:36:15', '2025-08-20 07:36:15', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 120  id   week h id 20', NULL),
(56577, 4, 4, 46, 17, 182, 379, 3, 1, 20, 'SemaineA', 7, NULL, '2025-08-20 07:36:16', '2025-08-20 07:36:16', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56578, 4, 5, 44, 17, 182, 379, 3, 1, 20, 'SemaineB', 8, NULL, '2025-08-20 07:36:16', '2025-08-20 07:36:16', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56579, 5, 2, 46, 17, 182, 378, 3, 1, 20, 'SemaineA', 9, NULL, '2025-08-20 07:36:17', '2025-08-20 07:36:17', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56580, 5, 3, 41, 17, 182, 380, 3, 1, 20, 'SemaineA', 10, NULL, '2025-08-20 07:36:17', '2025-08-20 07:36:17', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56581, 6, 4, 44, 17, 182, 383, 3, 1, 20, 'SemaineB', 12, NULL, '2025-08-20 07:36:18', '2025-08-20 07:36:18', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56582, 15, 2, 46, 36, 148, 357, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:18', '2025-08-20 07:36:18', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56583, 16, 4, 41, 36, 275, 358, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:19', '2025-08-20 07:36:19', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56584, 17, 4, 40, 36, 275, 357, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:19', '2025-08-20 07:36:19', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56585, 26, 4, 44, 36, 275, 356, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:19', '2025-08-20 07:36:19', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56586, 11, 4, 40, 37, 213, 358, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:19', '2025-08-20 07:36:19', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56587, 12, 4, 41, 37, 213, 359, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:19', '2025-08-20 07:36:19', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56588, 13, 4, 44, 37, 213, 357, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:19', '2025-08-20 07:36:19', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56589, 14, 4, 40, 37, 219, 359, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:19', '2025-08-20 07:36:19', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56590, 15, 4, 41, 37, 219, 360, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:19', '2025-08-20 07:36:19', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56591, 16, 4, 44, 37, 219, 358, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:19', '2025-08-20 07:36:19', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56592, 17, 4, 41, 37, 276, 361, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:19', '2025-08-20 07:36:19', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56593, 26, 4, 45, 37, 276, 356, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:19', '2025-08-20 07:36:19', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56594, 11, 4, 41, 39, 200, 362, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:19', '2025-08-20 07:36:19', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56595, 12, 4, 40, 39, 200, 360, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:19', '2025-08-20 07:36:19', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56596, 13, 4, 45, 39, 200, 357, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:19', '2025-08-20 07:36:19', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56597, 14, 4, 41, 39, 250, 363, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:19', '2025-08-20 07:36:19', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56598, 15, 4, 40, 39, 250, 361, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:19', '2025-08-20 07:36:19', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56599, 16, 4, 45, 39, 210, 358, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:19', '2025-08-20 07:36:19', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56600, 17, 4, 44, 39, 210, 359, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:19', '2025-08-20 07:36:19', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56601, 26, 4, 41, 39, 210, 364, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:19', '2025-08-20 07:36:19', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56602, 15, 4, 44, 40, 256, 360, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:19', '2025-08-20 07:36:19', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56603, 16, 4, 46, 40, 256, 353, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:19', '2025-08-20 07:36:19', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56604, 17, 4, 45, 40, 256, 359, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:19', '2025-08-20 07:36:19', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56605, 26, 3, 41, 40, 256, 356, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:20', '2025-08-20 07:36:20', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56606, 11, 2, 44, 41, 170, 361, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:20', '2025-08-20 07:36:20', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56607, 12, 2, 45, 41, 170, 356, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:20', '2025-08-20 07:36:20', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56608, 13, 2, 40, 41, 170, 355, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:20', '2025-08-20 07:36:20', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56609, 14, 2, 41, 41, 170, 358, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:20', '2025-08-20 07:36:20', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56610, 15, 1, 40, 41, 170, 364, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:20', '2025-08-20 07:36:20', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56611, 16, 2, 46, 41, 170, 359, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:20', '2025-08-20 07:36:20', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56612, 17, 1, 41, 41, 170, 364, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:20', '2025-08-20 07:36:20', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56613, 26, 1, 44, 41, 170, 365, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:21', '2025-08-20 07:36:21', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56614, 13, 4, 40, 43, 175, 362, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:21', '2025-08-20 07:36:21', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL);
INSERT INTO `seances` (`id`, `section_id`, `day_id`, `period_id`, `subject_id`, `teacher_id`, `classroom_id`, `subject_type_id`, `year_division_id`, `week_type_id`, `week_name`, `group_tp_id`, `group_td_id`, `created_at`, `updated_at`, `deleted_at`, `establishment_id`, `next`, `related_id`, `duree`, `start_hour`, `end_hour`, `start_date`, `end_date`, `is_locked`, `type`, `display_name`, `teacher2_id`, `section2_id`, `note`, `regime_id`) VALUES
(56615, 14, 4, 44, 43, 175, 361, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:21', '2025-08-20 07:36:21', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56616, 17, 4, 46, 43, 175, 354, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:22', '2025-08-20 07:36:22', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56617, 26, 2, 40, 43, 240, 357, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:22', '2025-08-20 07:36:22', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56618, 16, 3, 40, 45, 198, 356, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:22', '2025-08-20 07:36:22', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56619, 17, 3, 41, 45, 198, 357, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:22', '2025-08-20 07:36:22', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56620, 26, 3, 44, 45, 198, 356, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:22', '2025-08-20 07:36:22', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56621, 11, 1, 41, 46, 172, 379, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:22', '2025-08-20 07:36:22', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56622, 12, 1, 40, 46, 172, 365, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:22', '2025-08-20 07:36:22', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56623, 13, 1, 45, 46, 172, 361, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:23', '2025-08-20 07:36:23', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56624, 14, 1, 44, 46, 172, 379, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:23', '2025-08-20 07:36:23', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56625, 15, 2, 40, 46, 172, 379, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:23', '2025-08-20 07:36:23', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56626, 16, 1, 46, 46, 172, 379, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:23', '2025-08-20 07:36:23', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56627, 17, 2, 41, 46, 172, 379, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:23', '2025-08-20 07:36:23', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56628, 26, 2, 45, 46, 172, 379, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:23', '2025-08-20 07:36:23', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56629, 11, 3, 40, 48, 149, 357, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:24', '2025-08-20 07:36:24', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56630, 12, 3, 41, 48, 149, 358, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:24', '2025-08-20 07:36:24', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56631, 13, 3, 44, 48, 149, 357, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:24', '2025-08-20 07:36:24', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56632, 14, 3, 45, 48, 149, 355, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:24', '2025-08-20 07:36:24', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56633, 15, 3, 46, 48, 149, 354, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:24', '2025-08-20 07:36:24', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56634, 11, 4, 44, 49, 226, 384, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:24', '2025-08-20 07:36:24', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56635, 12, 4, 45, 49, 226, 384, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:24', '2025-08-20 07:36:24', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56636, 13, 4, 41, 49, 226, 384, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:24', '2025-08-20 07:36:24', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56637, 17, 3, 40, 50, 218, 388, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:24', '2025-08-20 07:36:24', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56638, 26, 3, 45, 50, 218, 388, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:24', '2025-08-20 07:36:24', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56639, 11, 4, 45, 50, 188, 360, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:24', '2025-08-20 07:36:24', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56640, 12, 4, 44, 50, 188, 362, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:24', '2025-08-20 07:36:24', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56641, 13, 4, 46, 50, 188, 355, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:24', '2025-08-20 07:36:24', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56642, 14, 3, 40, 50, 188, 358, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:24', '2025-08-20 07:36:24', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56643, 15, 3, 44, 50, 188, 358, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:25', '2025-08-20 07:36:25', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56644, 16, 3, 41, 50, 188, 359, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:25', '2025-08-20 07:36:25', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56645, 11, 3, 41, 51, 152, 388, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:25', '2025-08-20 07:36:25', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56646, 12, 3, 40, 51, 152, 389, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:25', '2025-08-20 07:36:25', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56647, 13, 3, 45, 51, 152, 389, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:25', '2025-08-20 07:36:25', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56648, 14, 4, 45, 51, 152, 388, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:25', '2025-08-20 07:36:25', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56649, 15, 4, 45, 51, 166, 389, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:25', '2025-08-20 07:36:25', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56650, 16, 2, 44, 51, 166, 388, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:25', '2025-08-20 07:36:25', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56651, 17, 2, 40, 51, 166, 388, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:26', '2025-08-20 07:36:26', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56652, 26, 4, 46, 51, 166, 388, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:26', '2025-08-20 07:36:26', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56653, 11, 1, 45, 89, 273, 362, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:26', '2025-08-20 07:36:26', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56654, 12, 1, 46, 89, 273, 357, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:26', '2025-08-20 07:36:26', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56655, 13, 3, 40, 89, 264, 359, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:26', '2025-08-20 07:36:26', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56656, 14, 3, 41, 89, 264, 360, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:26', '2025-08-20 07:36:26', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56657, 15, 3, 45, 89, 264, 357, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:26', '2025-08-20 07:36:26', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56658, 16, 3, 44, 89, 264, 361, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:26', '2025-08-20 07:36:26', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56659, 17, 3, 46, 89, 264, 356, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:26', '2025-08-20 07:36:26', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56660, 26, 2, 41, 89, 264, 361, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:26', '2025-08-20 07:36:26', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56661, 12, 1, 45, 90, 194, 363, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:27', '2025-08-20 07:36:27', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56662, 11, 5, 40, 91, 196, 361, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:27', '2025-08-20 07:36:27', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56663, 12, 5, 41, 91, 196, 360, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:27', '2025-08-20 07:36:27', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56664, 13, 5, 44, 91, 196, 360, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:27', '2025-08-20 07:36:27', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56665, 14, 5, 45, 91, 196, 354, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:27', '2025-08-20 07:36:27', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56666, 15, 4, 46, 91, 196, 356, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:28', '2025-08-20 07:36:28', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 6 ', NULL),
(56667, 17, 2, 44, 91, 180, 362, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:28', '2025-08-20 07:36:28', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56668, 11, 1, 46, 92, 195, 358, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:36:28', '2025-08-20 07:36:28', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56669, 13, 1, 41, 92, 195, 365, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:36:29', '2025-08-20 07:36:29', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56670, 14, 1, 46, 92, 192, 359, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:36:29', '2025-08-20 07:36:29', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56671, 15, 5, 45, 92, 192, 355, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:36:29', '2025-08-20 07:36:29', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56672, 16, 5, 45, 92, 192, 356, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:36:29', '2025-08-20 07:36:29', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56673, 17, 1, 40, 92, 192, 366, 1, 1, 20, 'SemaineA', NULL, NULL, '2025-08-20 07:36:30', '2025-08-20 07:36:30', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56674, 11, 5, 41, 38, 171, 377, 3, 1, 19, 'H', 21, NULL, '2025-08-20 07:36:31', '2025-08-20 07:36:31', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56675, 11, 5, 44, 38, 171, 380, 3, 1, 19, 'H', 22, NULL, '2025-08-20 07:36:31', '2025-08-20 07:36:31', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56676, 12, 5, 40, 38, 171, 377, 3, 1, 19, 'H', 23, NULL, '2025-08-20 07:36:32', '2025-08-20 07:36:32', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56677, 12, 4, 46, 38, 171, 380, 3, 1, 19, 'H', 24, NULL, '2025-08-20 07:36:32', '2025-08-20 07:36:32', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56678, 13, 5, 45, 38, 171, 381, 3, 1, 19, 'H', 25, NULL, '2025-08-20 07:36:32', '2025-08-20 07:36:32', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56679, 13, 3, 46, 38, 171, 380, 3, 1, 19, 'H', 26, NULL, '2025-08-20 07:36:33', '2025-08-20 07:36:33', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56680, 14, 1, 41, 38, 171, 380, 3, 1, 19, 'H', 27, NULL, '2025-08-20 07:36:33', '2025-08-20 07:36:33', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56681, 14, 2, 46, 38, 171, 379, 3, 1, 19, 'H', 28, NULL, '2025-08-20 07:36:34', '2025-08-20 07:36:34', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56682, 15, 3, 40, 38, 174, 380, 3, 1, 19, 'H', 29, NULL, '2025-08-20 07:36:34', '2025-08-20 07:36:34', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56683, 15, 2, 45, 38, 174, 377, 3, 1, 19, 'H', 30, NULL, '2025-08-20 07:36:34', '2025-08-20 07:36:34', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56684, 16, 1, 40, 38, 174, 377, 3, 1, 19, 'H', 31, NULL, '2025-08-20 07:36:35', '2025-08-20 07:36:35', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56685, 16, 1, 44, 38, 174, 377, 3, 1, 19, 'H', 32, NULL, '2025-08-20 07:36:35', '2025-08-20 07:36:35', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56686, 17, 1, 45, 38, 174, 378, 3, 1, 19, 'H', 33, NULL, '2025-08-20 07:36:35', '2025-08-20 07:36:35', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56687, 17, 5, 40, 38, 174, 378, 3, 1, 19, 'H', 34, NULL, '2025-08-20 07:36:35', '2025-08-20 07:36:35', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56688, 26, 1, 41, 38, 174, 381, 3, 1, 19, 'H', 51, NULL, '2025-08-20 07:36:36', '2025-08-20 07:36:36', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56689, 26, 5, 41, 38, 174, 378, 3, 1, 19, 'H', 52, NULL, '2025-08-20 07:36:36', '2025-08-20 07:36:36', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56690, 11, 5, 44, 47, 242, 382, 3, 1, 20, 'SemaineA', 21, NULL, '2025-08-20 07:36:36', '2025-08-20 07:36:36', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56691, 11, 5, 41, 47, 242, 382, 3, 1, 20, 'SemaineA', 22, NULL, '2025-08-20 07:36:37', '2025-08-20 07:36:37', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56692, 12, 4, 46, 47, 242, 382, 3, 1, 20, 'SemaineA', 23, NULL, '2025-08-20 07:36:37', '2025-08-20 07:36:37', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56693, 12, 5, 40, 47, 242, 382, 3, 1, 20, 'SemaineA', 24, NULL, '2025-08-20 07:36:37', '2025-08-20 07:36:37', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56694, 13, 3, 46, 47, 242, 382, 3, 1, 20, 'SemaineA', 25, NULL, '2025-08-20 07:36:38', '2025-08-20 07:36:38', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56695, 13, 5, 45, 47, 242, 382, 3, 1, 20, 'SemaineA', 26, NULL, '2025-08-20 07:36:38', '2025-08-20 07:36:38', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56696, 14, 2, 46, 47, 242, 382, 3, 1, 20, 'SemaineA', 27, NULL, '2025-08-20 07:36:39', '2025-08-20 07:36:39', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56697, 14, 1, 41, 47, 242, 382, 3, 1, 20, 'SemaineA', 28, NULL, '2025-08-20 07:36:39', '2025-08-20 07:36:39', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56698, 15, 2, 45, 47, 242, 382, 3, 1, 20, 'SemaineA', 29, NULL, '2025-08-20 07:36:39', '2025-08-20 07:36:39', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56699, 15, 3, 40, 47, 242, 382, 3, 1, 20, 'SemaineA', 30, NULL, '2025-08-20 07:36:40', '2025-08-20 07:36:40', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56700, 16, 1, 44, 47, 242, 382, 3, 1, 20, 'SemaineA', 31, NULL, '2025-08-20 07:36:40', '2025-08-20 07:36:40', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56701, 16, 1, 40, 47, 242, 382, 3, 1, 20, 'SemaineA', 32, NULL, '2025-08-20 07:36:40', '2025-08-20 07:36:40', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56702, 17, 1, 46, 47, 242, 382, 3, 1, 20, 'SemaineA', 33, NULL, '2025-08-20 07:36:41', '2025-08-20 07:36:41', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56703, 17, 1, 46, 47, 242, 382, 3, 1, 20, 'SemaineB', 34, NULL, '2025-08-20 07:36:41', '2025-08-20 07:36:41', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56704, 11, 5, 44, 93, 181, 383, 3, 1, 20, 'SemaineB', 21, NULL, '2025-08-20 07:36:43', '2025-08-20 07:36:43', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56705, 11, 5, 41, 93, 181, 383, 3, 1, 20, 'SemaineB', 22, NULL, '2025-08-20 07:36:43', '2025-08-20 07:36:43', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56706, 12, 5, 40, 93, 181, 383, 3, 1, 20, 'SemaineB', 24, NULL, '2025-08-20 07:36:44', '2025-08-20 07:36:44', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56707, 13, 2, 46, 93, 181, 383, 3, 1, 20, 'SemaineA', 25, NULL, '2025-08-20 07:36:44', '2025-08-20 07:36:44', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56708, 13, 2, 46, 93, 181, 383, 3, 1, 20, 'SemaineB', 26, NULL, '2025-08-20 07:36:44', '2025-08-20 07:36:44', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'tp loop 1', NULL),
(56709, 14, 1, 41, 93, 181, 383, 3, 1, 20, 'SemaineB', 28, NULL, '2025-08-20 07:36:45', '2025-08-20 07:36:45', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56710, 15, 2, 45, 93, 181, 383, 3, 1, 20, 'SemaineB', 29, NULL, '2025-08-20 07:36:45', '2025-08-20 07:36:45', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56711, 15, 3, 40, 93, 181, 383, 3, 1, 20, 'SemaineB', 30, NULL, '2025-08-20 07:36:45', '2025-08-20 07:36:45', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56712, 16, 1, 44, 93, 181, 383, 3, 1, 20, 'SemaineB', 31, NULL, '2025-08-20 07:36:45', '2025-08-20 07:36:45', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56713, 16, 1, 40, 93, 181, 383, 3, 1, 20, 'SemaineB', 32, NULL, '2025-08-20 07:36:45', '2025-08-20 07:36:45', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 3 ', NULL),
(56714, 17, 1, 45, 93, 181, 382, 3, 1, 20, 'SemaineA', 34, NULL, '2025-08-20 07:36:47', '2025-08-20 07:36:47', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56715, 21, 4, 40, 66, 256, 363, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:48', '2025-08-20 07:36:48', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56716, 22, 4, 41, 66, 256, 365, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:48', '2025-08-20 07:36:48', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56717, 23, 3, 40, 66, 256, 361, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:48', '2025-08-20 07:36:48', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56718, 24, 3, 45, 66, 256, 358, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:49', '2025-08-20 07:36:49', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56719, 18, 4, 40, 66, 257, 364, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:49', '2025-08-20 07:36:49', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56720, 19, 4, 41, 66, 257, 366, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:49', '2025-08-20 07:36:49', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56721, 20, 4, 44, 66, 257, 363, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:49', '2025-08-20 07:36:49', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56722, 18, 4, 41, 67, 245, 367, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:49', '2025-08-20 07:36:49', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56723, 19, 4, 40, 67, 245, 365, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:49', '2025-08-20 07:36:49', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56724, 20, 4, 45, 67, 245, 361, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:49', '2025-08-20 07:36:49', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56725, 21, 4, 44, 67, 245, 364, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:49', '2025-08-20 07:36:49', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56726, 22, 4, 40, 67, 258, 366, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:49', '2025-08-20 07:36:49', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56727, 23, 4, 41, 67, 258, 368, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:49', '2025-08-20 07:36:49', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56728, 24, 4, 44, 67, 258, 365, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:49', '2025-08-20 07:36:49', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56729, 24, 3, 40, 68, 262, 363, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:49', '2025-08-20 07:36:49', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56730, 24, 4, 40, 68, 262, 367, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:49', '2025-08-20 07:36:49', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56731, 18, 4, 44, 69, 145, 366, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:49', '2025-08-20 07:36:49', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56732, 19, 4, 45, 69, 145, 362, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:49', '2025-08-20 07:36:49', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56733, 20, 4, 40, 69, 145, 368, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:49', '2025-08-20 07:36:49', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56734, 21, 4, 41, 69, 145, 369, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:49', '2025-08-20 07:36:49', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56735, 22, 4, 46, 69, 145, 357, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:49', '2025-08-20 07:36:49', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56736, 23, 3, 44, 69, 145, 362, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:50', '2025-08-20 07:36:50', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 6 ', NULL),
(56737, 24, 3, 41, 69, 145, 363, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:50', '2025-08-20 07:36:50', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56738, 18, 3, 40, 70, 155, 364, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:50', '2025-08-20 07:36:50', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56739, 19, 3, 41, 70, 155, 364, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:50', '2025-08-20 07:36:50', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56740, 20, 3, 44, 70, 155, 363, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:50', '2025-08-20 07:36:50', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56741, 21, 3, 45, 70, 155, 359, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:50', '2025-08-20 07:36:50', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56742, 22, 3, 46, 70, 155, 357, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:50', '2025-08-20 07:36:50', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56743, 18, 2, 40, 71, 162, 359, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:50', '2025-08-20 07:36:50', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56744, 19, 2, 41, 71, 162, 362, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:50', '2025-08-20 07:36:50', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56745, 20, 2, 44, 71, 162, 366, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:50', '2025-08-20 07:36:50', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56746, 21, 2, 45, 71, 162, 360, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:50', '2025-08-20 07:36:50', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56747, 22, 4, 44, 71, 224, 367, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:50', '2025-08-20 07:36:50', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56748, 23, 4, 40, 71, 224, 369, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:50', '2025-08-20 07:36:50', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56749, 24, 4, 41, 71, 224, 370, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:50', '2025-08-20 07:36:50', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56750, 18, 4, 45, 74, 160, 363, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:51', '2025-08-20 07:36:51', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56751, 19, 4, 44, 74, 160, 368, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:51', '2025-08-20 07:36:51', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56752, 20, 4, 41, 74, 160, 371, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:51', '2025-08-20 07:36:51', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56753, 23, 2, 40, 75, 249, 360, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:51', '2025-08-20 07:36:51', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56754, 18, 4, 46, 76, 250, 358, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:51', '2025-08-20 07:36:51', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56755, 19, 3, 40, 76, 250, 365, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:51', '2025-08-20 07:36:51', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56756, 20, 3, 41, 76, 250, 365, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:51', '2025-08-20 07:36:51', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56757, 21, 4, 46, 76, 210, 359, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:51', '2025-08-20 07:36:51', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56758, 22, 3, 40, 76, 210, 366, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:51', '2025-08-20 07:36:51', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56759, 23, 3, 46, 76, 210, 358, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:52', '2025-08-20 07:36:52', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56760, 24, 2, 40, 76, 210, 361, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:52', '2025-08-20 07:36:52', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56761, 23, 4, 44, 77, 166, 369, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:52', '2025-08-20 07:36:52', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56762, 24, 2, 46, 77, 166, 360, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:52', '2025-08-20 07:36:52', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56763, 18, 3, 41, 77, 141, 366, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:52', '2025-08-20 07:36:52', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56764, 19, 3, 44, 77, 141, 364, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:52', '2025-08-20 07:36:52', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56765, 20, 3, 40, 77, 141, 367, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:52', '2025-08-20 07:36:52', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56766, 21, 3, 46, 77, 141, 359, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:52', '2025-08-20 07:36:52', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56767, 22, 3, 45, 77, 141, 360, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:52', '2025-08-20 07:36:52', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56768, 18, 2, 41, 80, 139, 366, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:52', '2025-08-20 07:36:52', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56769, 19, 2, 40, 80, 139, 364, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:52', '2025-08-20 07:36:52', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56770, 20, 2, 45, 80, 139, 361, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:52', '2025-08-20 07:36:52', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56771, 21, 2, 44, 80, 139, 367, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:52', '2025-08-20 07:36:52', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56772, 22, 2, 46, 80, 139, 361, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:53', '2025-08-20 07:36:53', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56773, 23, 4, 45, 80, 139, 364, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:53', '2025-08-20 07:36:53', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 3 ', NULL),
(56774, 24, 4, 46, 80, 139, 360, 1, 1, 19, 'H', NULL, NULL, '2025-08-20 07:36:53', '2025-08-20 07:36:53', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'C loop 1 ', NULL),
(56775, 18, 1, 40, 79, 143, 380, 3, 1, 19, 'H', 35, NULL, '2025-08-20 07:36:53', '2025-08-20 07:36:53', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56776, 18, 1, 41, 79, 143, 384, 3, 1, 19, 'H', 36, NULL, '2025-08-20 07:36:53', '2025-08-20 07:36:53', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56777, 19, 1, 44, 79, 143, 378, 3, 1, 19, 'H', 37, NULL, '2025-08-20 07:36:53', '2025-08-20 07:36:53', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56778, 19, 1, 45, 79, 143, 380, 3, 1, 19, 'H', 38, NULL, '2025-08-20 07:36:53', '2025-08-20 07:36:53', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56779, 20, 5, 40, 79, 143, 379, 3, 1, 19, 'H', 39, NULL, '2025-08-20 07:36:53', '2025-08-20 07:36:53', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56780, 20, 5, 41, 79, 143, 379, 3, 1, 19, 'H', 40, NULL, '2025-08-20 07:36:54', '2025-08-20 07:36:54', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56781, 21, 5, 45, 79, 143, 383, 3, 1, 19, 'H', 41, NULL, '2025-08-20 07:36:54', '2025-08-20 07:36:54', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56782, 21, 4, 45, 79, 143, 381, 3, 1, 19, 'H', 42, NULL, '2025-08-20 07:36:54', '2025-08-20 07:36:54', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56783, 22, 5, 44, 79, 143, 381, 3, 1, 19, 'H', 43, NULL, '2025-08-20 07:36:54', '2025-08-20 07:36:54', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56784, 22, 3, 41, 79, 143, 381, 3, 1, 19, 'H', 44, NULL, '2025-08-20 07:36:54', '2025-08-20 07:36:54', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 6 ', NULL),
(56785, 23, 2, 41, 79, 173, 377, 3, 1, 19, 'H', 45, NULL, '2025-08-20 07:36:55', '2025-08-20 07:36:55', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56786, 23, 2, 45, 79, 173, 378, 3, 1, 19, 'H', 46, NULL, '2025-08-20 07:36:55', '2025-08-20 07:36:55', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56787, 24, 2, 44, 79, 173, 377, 3, 1, 19, 'H', 47, NULL, '2025-08-20 07:36:55', '2025-08-20 07:36:55', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56788, 24, 1, 40, 79, 173, 381, 3, 1, 19, 'H', 48, NULL, '2025-08-20 07:36:55', '2025-08-20 07:36:55', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'TP loop 4 ', NULL),
(56789, 22, 5, 45, 68, 260, 389, 2, 1, 19, 'H', NULL, 22, '2025-08-20 07:36:56', '2025-08-20 07:36:56', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, '2TD loop 6', NULL),
(56790, 22, 2, 44, 68, 260, 389, 2, 1, 19, 'H', NULL, 22, '2025-08-20 07:36:56', '2025-08-20 07:36:56', NULL, 7, 1, NULL, 90, '12:30:00', '14:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, '1TD loop 7', NULL),
(56791, 21, 3, 41, 68, 223, 389, 2, 1, 19, 'H', NULL, 21, '2025-08-20 07:36:56', '2025-08-20 07:36:56', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, '2TD loop 5 ', NULL),
(56792, 21, 5, 41, 68, 223, 389, 2, 1, 19, 'H', NULL, 21, '2025-08-20 07:36:56', '2025-08-20 07:36:56', NULL, 7, 1, NULL, 90, '10:00:00', '11:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, '1TD loop 6', NULL),
(56793, 20, 1, 40, 68, 207, 389, 2, 1, 19, 'H', NULL, 20, '2025-08-20 07:36:57', '2025-08-20 07:36:57', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, '2TD loop 8', NULL),
(56794, 20, 1, 45, 68, 207, 389, 2, 1, 19, 'H', NULL, 20, '2025-08-20 07:36:57', '2025-08-20 07:36:57', NULL, 7, 1, NULL, 90, '14:00:00', '15:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, '1TD loop 8', NULL),
(56795, 23, 5, 40, 68, 261, 389, 2, 1, 19, 'H', NULL, 23, '2025-08-20 07:37:00', '2025-08-20 07:37:00', NULL, 7, 1, NULL, 90, '08:30:00', '10:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, '2TD loop 7', NULL),
(56796, 23, 2, 46, 68, 261, 389, 2, 1, 19, 'H', NULL, 23, '2025-08-20 07:37:00', '2025-08-20 07:37:00', NULL, 7, 1, NULL, 90, '15:30:00', '17:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, '1TD loop 8', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `sector_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `establishment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `designation`, `abbreviation`, `sector_id`, `created_at`, `updated_at`, `deleted_at`, `establishment_id`) VALUES
(1, 'L1 Group 1', 'L1 G1', 1, '2025-05-14 09:13:29', '2025-05-14 09:13:29', NULL, 7),
(2, 'L1 Group 2', 'L1 G2', 1, '2025-05-14 09:13:29', '2025-05-14 09:13:29', NULL, 7),
(3, 'L1 Group 3', 'L1 G3', 1, '2025-05-14 09:13:29', '2025-05-14 09:13:29', NULL, 7),
(4, 'L1 Group 4', 'L1 G4', 1, '2025-05-14 09:13:29', '2025-05-14 09:13:29', NULL, 7),
(5, 'L1 Group 5', 'L1 G5', 1, '2025-05-14 09:13:29', '2025-05-14 09:13:29', NULL, 7),
(6, 'L1 Group 6', 'L1 G6', 1, '2025-05-14 09:13:29', '2025-05-14 09:13:29', NULL, 7),
(11, 'L2 Group 1', 'L2 G1', 2, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(12, 'L2 Group 2', 'L2 G2', 2, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(13, 'L2 Group 3', 'L2 G3', 2, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(14, 'L2 Group 4', 'L2 G4', 2, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(15, 'L2 Group 5', 'L2 G5', 2, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(16, 'L2 Group 6', 'L2 G6', 2, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(17, 'L2 Group 7', 'L2 G7', 2, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(18, 'L3 Group 1', 'L3 G1', 3, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(19, 'L3 Group 2', 'L3 G2', 3, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(20, 'L3 Group 3', 'L3 G3', 3, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(21, 'L3 Group 4', 'L3 G4', 3, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(22, 'L3 Group 5', 'L3 G5', 3, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(23, 'L3 Group 6', 'L3 G6', 3, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(24, 'L3 Group 7', 'L3 G7', 3, '2025-05-14 09:13:30', '2025-05-14 09:13:30', NULL, 7),
(26, 'L2 Group 8', 'L2 G8', 2, '2025-07-26 08:09:17', '2025-07-26 08:21:12', NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `id` int(10) UNSIGNED NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `establishment_id` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sectors`
--

INSERT INTO `sectors` (`id`, `designation`, `abbreviation`, `level_id`, `created_at`, `updated_at`, `deleted_at`, `department_id`, `establishment_id`, `active`) VALUES
(1, 'EE', 'L1', 1, '2025-05-14 10:13:29', '2025-05-14 10:13:29', NULL, 21, 7, 1),
(2, 'EE', 'L2', 2, '2025-05-14 10:13:30', '2025-05-14 10:13:30', NULL, 21, 7, 1),
(3, 'EE', 'L3', 3, '2025-05-14 10:13:30', '2025-05-14 10:13:30', NULL, 21, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject_code` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `coefficient` double DEFAULT NULL,
  `degree` int(11) DEFAULT NULL,
  `sector_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `establishment_id` int(11) DEFAULT NULL,
  `year_division_id` int(11) DEFAULT NULL,
  `type_ue` varchar(255) DEFAULT NULL,
  `subject_module_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_code`, `designation`, `abbreviation`, `coefficient`, `degree`, `sector_id`, `created_at`, `updated_at`, `deleted_at`, `establishment_id`, `year_division_id`, `type_ue`, `subject_module_id`) VALUES
(1, '522301111', 'introduction aux sciences de l\'éducation', 'intro aux sc éducation', 1, NULL, 1, '2025-07-08 11:14:46', '2025-07-08 11:14:46', NULL, 7, 1, 'fond', 15),
(2, '522301113', 'techniques de communication', 'Tech de communication', 1, NULL, 1, '2025-07-08 11:14:46', '2025-07-10 14:31:36', NULL, 7, 1, 'fond', 15),
(3, '522301114', 'psychologie de développement', 'psychologie de dévelop', 1, NULL, 1, '2025-07-08 11:14:46', '2025-08-12 18:33:02', NULL, 7, 1, 'fond', 15),
(4, '522301112', 'intégration des nouvelles technologies', 'TIC', 5, NULL, 1, '2025-07-08 11:14:46', '2025-07-08 11:14:46', NULL, 7, 1, 'fond', 15),
(5, '522301123', 'anglais', 'anglais', 1, NULL, 1, '2025-07-08 11:14:46', '2025-07-08 11:14:46', NULL, 7, 1, 'fond', 10),
(6, '522301122', 'arabe', 'arabe', 1.5, NULL, 1, '2025-07-08 11:14:46', '2025-07-08 11:14:46', NULL, 7, 1, 'fond', 10),
(7, '522301121', 'français', 'français', 1, NULL, 1, '2025-07-08 11:14:46', '2025-07-08 11:14:46', NULL, 7, 1, 'fond', 10),
(8, '522301133', 'Droits de l\'homme et de l\'enfant', 'droit de l\'homme', 1, NULL, 1, '2025-07-08 11:14:46', '2025-08-12 18:26:40', NULL, 7, 1, 'fond', 16),
(9, '522301134', 'Histoire', 'Histoire', 5, NULL, 1, '2025-07-08 11:14:46', '2025-08-12 18:29:09', NULL, 7, 1, 'fond', 16),
(10, '522301134', 'Géographie', 'Géographie', 5, NULL, 1, '2025-07-08 11:14:47', '2025-08-12 18:29:23', NULL, 7, 1, 'fond', 16),
(11, '522301132', 'Philosophie générale', 'Philosophie', 1, NULL, 1, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 1, 'fond', 16),
(12, '522301131', 'Éducation islamique', 'Edu islamique', 5, NULL, 1, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 1, 'fond', 16),
(13, '522301143', 'Mathématiques', 'Math', 1.5, NULL, 1, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 1, 'fond', 17),
(14, '522301141', 'Physique', 'physique', 5, NULL, 1, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 1, 'fond', 17),
(15, '522301141', 'Chimie', 'chimie', 5, NULL, 1, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 1, 'fond', 17),
(16, '522301142', 'Sciences de la vie', 'Sciences de la vie', 1, NULL, 1, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 1, 'fond', 17),
(17, '522301151', 'Éducation musicale', 'Edu musicale', 1, NULL, 1, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 1, 'fond', 18),
(18, '522301152', 'calligraphie', 'calligraphie', 1, NULL, 1, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 1, 'fond', 18),
(19, '522301212', 'TIC', 'TIC', 5, NULL, 1, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 2, 'fond', 19),
(20, '522301211', 'introduction aux didactiques des disciplines', 'intro aux didactiques', 1, NULL, 1, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 2, 'fond', 19),
(21, '522301213', 'Philosophie de l\'éducation', 'Phil de l\'éducation', 1, NULL, 1, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 2, 'fond', 19),
(22, '522301214', 'psychologie de développement', 'psychologie de dévelop', 1, NULL, 1, '2025-07-08 11:14:47', '2025-08-12 18:30:13', NULL, 7, 2, 'fond', 19),
(23, '522301223', 'anglais', 'anglais', 1, NULL, 1, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 2, 'fond', 20),
(24, '522301222', 'arabe', 'arabe', 1.5, NULL, 1, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 2, 'fond', 20),
(25, '522301221', 'français', 'français', 1, NULL, 1, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 2, 'fond', 20),
(26, '522301234', 'Histoire', 'Histoire', 5, NULL, 1, '2025-07-08 11:14:47', '2025-07-12 19:01:00', NULL, 7, 2, 'fond', 21),
(27, '522301232', 'épistémologie des sciences', 'épistémologie des sciences', 1, NULL, 1, '2025-07-08 11:14:47', '2025-07-12 19:19:31', NULL, 7, 2, 'fond', 21),
(28, '522301233', 'Éducation à la citoyenneté', 'Edu à la citoyenneté', 1, NULL, 1, '2025-07-08 11:14:47', '2025-07-12 18:17:07', NULL, 7, 2, 'fond', 21),
(29, '522301231', 'Éducation islamique', 'Edu islamique', 1, NULL, 1, '2025-07-08 11:14:47', '2025-07-12 18:17:31', NULL, 7, 2, 'fond', 21),
(30, '522301242', 'Sciences de la vie', 'Sciences de la vie', 1, NULL, 1, '2025-07-08 11:14:47', '2025-07-12 19:04:20', NULL, 7, 2, 'fond', 22),
(31, '522301241', 'Physique', 'physique', 1, NULL, 1, '2025-07-08 11:14:47', '2025-07-13 06:25:52', NULL, 7, 2, 'fond', 22),
(32, '522301243', 'Mathématiques', 'Math', 1, NULL, 1, '2025-07-08 11:14:47', '2025-07-13 06:24:00', NULL, 7, 2, 'fond', 22),
(33, '522301252', 'arts plastiques', 'arts plastiques', 1, NULL, 1, '2025-07-08 11:14:47', '2025-08-09 06:24:40', NULL, 7, 2, 'fond', 23),
(34, '522301253', 'calligraphie', 'calligraphie', 5, NULL, 1, '2025-07-08 11:14:47', '2025-07-13 06:24:48', NULL, 7, 2, 'fond', 23),
(35, '522301251', 'Éducation musicale', 'Edu musicale', 5, NULL, 1, '2025-07-08 11:14:47', '2025-07-13 06:25:09', NULL, 7, 2, 'fond', 23),
(36, '522301314', 'Théories d\'apprentissage', 'Théories d\'app', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-11 13:58:53', NULL, 7, 1, 'fond', 24),
(37, '522301311', 'Les approches pédagogiques', 'App pédag', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-11 13:59:18', NULL, 7, 1, 'fond', 24),
(38, '522301312', 'TIC', 'TIC', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-11 13:59:34', NULL, 7, 1, 'fond', 24),
(39, '522301313', 'L\'évaluation éducative', 'Evaluation édu', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-11 13:59:49', NULL, 7, 1, 'fond', 24),
(40, '522301322', 'didactique de l\'arabe', 'Didac arabe', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-11 14:43:59', NULL, 7, 1, 'fond', 25),
(41, '522301323', 'didactique de l\'anglais', 'Didac Ang', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-11 18:01:40', NULL, 7, 1, 'fond', 25),
(42, '522301321', 'didactique du français', 'Didac Français', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-11 18:10:53', NULL, 7, 1, 'fond', 25),
(43, '522301331', 'Didactique de l\'éducation islamique', 'Didac édu islamique', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-11 14:01:06', NULL, 7, 1, 'fond', 26),
(44, '522301333', 'Histoire', 'Histoire', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-12 05:34:51', NULL, 7, 1, 'fond', 26),
(45, '522301332', 'L\'éducation à la santé', 'Educ à la santé', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-11 14:01:33', NULL, 7, 1, 'fond', 26),
(46, '522301343', 'Technique et compétences manuelles', 'Technique & comp manuelles', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-12 05:51:28', NULL, 7, 1, 'fond', 27),
(47, '522301341', 'Physique', 'physique', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-12 05:52:18', NULL, 7, 1, 'fond', 27),
(48, '522301342', 'Mathématiques', 'Math', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-11 14:02:28', NULL, 7, 1, 'fond', 27),
(49, '522301361', 'Éducation musicale', 'Edu musicale', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-11 14:02:45', NULL, 7, 1, 'fond', 28),
(50, '522301363', 'Théâtre 1', 'Théâtre 1', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-11 14:02:59', NULL, 7, 1, 'fond', 28),
(51, '522301362', 'Arts plastiques', 'Arts plastiques', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-13 14:58:49', NULL, 7, 1, 'fond', 28),
(52, '522301413', 'analyse des pratiques professionnelles', 'APP', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 2, 'fond', 29),
(53, '522301411', 'Les approches pédagogiques', 'App pédag', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 2, 'fond', 29),
(54, '522301412', 'gestion de la classe', 'gestion de la classe', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 2, 'fond', 29),
(55, '522301414', 'méthodologie de recherche', 'méthodologie', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 2, 'fond', 29),
(56, '522301422', 'didactique de l\'arabe', 'didactique de l\'arabe', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-13 10:36:58', NULL, 7, 2, 'fond', 30),
(57, '522301423', 'anglais & didactique de l\'anglais', 'Anglais et didac anglais', 1, NULL, 2, '2025-07-08 11:14:47', '2025-08-10 07:09:09', NULL, 7, 2, 'fond', 30),
(58, '522301421', 'didactique du français', 'didactique du français', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-13 10:38:05', NULL, 7, 2, 'fond', 30),
(59, '522301431', 'didactiques de l\'histoire', 'didac histoire', 1, NULL, 2, '2025-07-08 11:14:47', '2025-08-10 07:35:28', NULL, 7, 2, 'fond', 31),
(60, '522301443', 'didactique des mathématiques', 'didac math', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 2, 'fond', 32),
(61, '522301442', 'didactique des sciences', 'didac sciences', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 2, 'fond', 32),
(62, '522301441', 'didactique  physique chimie', 'didac phys & chimie', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 2, 'fond', 32),
(63, '522301461', 'Éducation musicale', 'Edu musicale', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 2, 'fond', 33),
(64, '522301462', 'Théâtre 2', 'Théâtre 2', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 2, 'fond', 33),
(65, '522301463', 'Arts plastiques', 'Arts plastiques', 1, NULL, 2, '2025-07-08 11:14:47', '2025-07-13 14:58:17', NULL, 7, 2, 'fond', 33),
(66, '522301512', 'relations éducatives', 'Relation Educ', 1, NULL, 3, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 1, 'fond', 34),
(67, '522301513', 'troubles d\'apprentissage', 'Troubles d\'app', 1, NULL, 3, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 1, 'fond', 34),
(68, '522301514', 'analyse des pratiques professionnelles', 'APP', 1, NULL, 3, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 1, 'fond', 34),
(69, '522301511', 'apprentissage et émotions', 'Aprentissage et émotions', 1, NULL, 3, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 1, 'fond', 34),
(70, '522301523', 'anglais', 'anglais', 1, NULL, 3, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 1, 'fond', 35),
(71, '522301522', 'arabe', 'arabe', 1, NULL, 3, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 1, 'fond', 35),
(72, '522301521', 'français', 'français', 1, NULL, 3, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 1, 'fond', 35),
(73, '522301531', 'éducation au développement durable', 'EDD', 1, NULL, 3, '2025-07-08 11:14:47', '2025-07-08 11:14:47', NULL, 7, 1, 'fond', 36),
(74, '522301532', 'éducation spécialisée', 'Education spécialisée', 1, NULL, 3, '2025-07-08 11:14:48', '2025-07-08 11:14:48', NULL, 7, 1, 'fond', 36),
(75, '522301533', 'éducation préscolaire', 'éducation préscolaire', 1, NULL, 3, '2025-07-08 11:14:48', '2025-07-08 11:14:48', NULL, 7, 1, 'fond', 36),
(76, '522301542', 'Evaluation éducative', 'Evaluation édu', 1, NULL, 3, '2025-07-08 11:14:48', '2025-07-08 11:14:48', NULL, 7, 1, 'fond', 37),
(77, '522301541', 'techniques d\'animation', 'techniques Animation', 1, NULL, 3, '2025-07-08 11:14:48', '2025-07-08 11:14:48', NULL, 7, 1, 'fond', 37),
(78, '522301543', 'éthiques professionnelles', 'Ethiques prof', 1, NULL, 3, '2025-07-08 11:14:48', '2025-07-12 10:28:34', NULL, 7, 1, 'fond', 37),
(79, '522301562', 'TIC', 'TIC', 1, NULL, 3, '2025-07-08 11:14:48', '2025-07-08 11:14:48', NULL, 7, 1, 'fond', 38),
(80, '522301561', 'compétences de vie', 'compétences de vie', 1, NULL, 3, '2025-07-08 11:14:48', '2025-07-08 11:14:48', NULL, 7, 1, 'fond', 38),
(81, '522301613', 'anglais', 'anglais', 1, NULL, 3, '2025-07-08 11:14:48', '2025-07-08 11:14:48', NULL, 7, 2, 'fond', 39),
(82, '522301612', 'arabe', 'arabe', 1, NULL, 3, '2025-07-08 11:14:48', '2025-07-08 11:14:48', NULL, 7, 2, 'fond', 39),
(83, '522301611', 'français', 'français', 1, NULL, 3, '2025-07-08 11:14:48', '2025-07-08 11:14:48', NULL, 7, 2, 'fond', 39),
(84, '522301621', 'Education spécialisée', 'Education spécialisée', 1, NULL, 3, '2025-07-08 11:14:48', '2025-07-08 11:14:48', NULL, 7, 2, 'fond', 36),
(85, '522301622', 'Education physique', 'Education physique', 1, NULL, 3, '2025-07-08 11:14:48', '2025-07-08 11:14:48', NULL, 7, 2, 'fond', 36),
(86, '522301623', 'éducation préscolaire', 'éducation préscolaire', 1, NULL, 3, '2025-07-08 11:14:48', '2025-07-08 11:14:48', NULL, 7, 2, 'fond', 36),
(87, '522301633', 'analyse des pratiques professionnelles', 'APP', 1, NULL, 3, '2025-07-08 11:14:48', '2025-07-08 11:14:48', NULL, 7, 2, 'fond', 40),
(88, '522301631', 'Vie scolaire', 'Vie scolaire', 1, NULL, 3, '2025-07-08 11:14:48', '2025-07-08 11:14:48', NULL, 7, 2, 'fond', 40),
(89, '522301322', 'ARABE', 'Arabe', 1.5, NULL, 2, '2025-07-11 14:43:17', '2025-07-11 14:43:17', NULL, 7, 1, 'fond', 25),
(90, '522301323', 'Anglais', 'Anglais', 1, NULL, 2, '2025-07-11 18:03:33', '2025-07-11 18:03:33', NULL, 7, 1, 'fond', 25),
(91, '522301321', 'Français', 'Français', 1, NULL, 2, '2025-07-11 18:12:11', '2025-07-11 18:12:11', NULL, 7, 1, 'fond', 25),
(92, '522301333', 'géographie', 'géographie', 5, NULL, 2, '2025-07-12 05:36:22', '2025-07-12 05:36:22', NULL, 7, 1, 'fond', 26),
(93, '522301341', 'Chimie', 'Chimie', 5, NULL, 2, '2025-07-12 05:53:53', '2025-07-12 05:53:53', NULL, 7, 1, 'fond', 27),
(94, '522301234', 'Géographie', 'Géographie', 5, NULL, 1, '2025-07-12 19:03:46', '2025-07-12 19:03:46', NULL, 7, 2, 'fond', 21),
(95, '522301241', 'Chimie', 'Chimie', 1, NULL, 1, '2025-07-13 06:26:54', '2025-07-13 06:26:54', NULL, 7, 2, 'fond', 22),
(96, '522301421', 'Français', 'Français', 1, NULL, 2, '2025-07-13 10:39:50', '2025-07-13 10:39:50', NULL, 7, 2, 'fond', 25),
(97, '522301422', 'Arabe', 'Arabe', 2, NULL, 2, '2025-07-13 10:41:01', '2025-07-13 10:41:01', NULL, 7, 2, 'fond', 25),
(101, '522301431', 'didactiques de géographie', 'didac de géographie', 1, NULL, 2, '2025-08-10 07:37:56', '2025-08-10 07:38:28', NULL, 7, 2, 'fond', 31),
(102, '522301632', 'TIC', 'TIC', 1, NULL, 3, '2025-08-17 18:28:22', '2025-08-17 18:28:49', NULL, 7, 2, 'fond', 40);

-- --------------------------------------------------------

--
-- Table structure for table `subject_modules`
--

CREATE TABLE `subject_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `discipline` varchar(255) DEFAULT NULL,
  `basic_module` int(11) DEFAULT NULL,
  `establishment_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject_modules`
--

INSERT INTO `subject_modules` (`id`, `designation`, `abbreviation`, `discipline`, `basic_module`, `establishment_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 'L\'éducation et les dimensions psychologiques', 'L\'éducation et les dimensions psychologiques', NULL, NULL, 7, '2025-06-20 18:40:47', '2025-06-20 18:40:47', NULL),
(10, 'langues 1', 'langues 1', NULL, NULL, 7, '2025-06-20 18:57:43', '2025-06-20 18:57:43', NULL),
(11, 'sciences humaines et sociales', 'sciences humaines et sociales', NULL, NULL, 7, '2025-06-21 18:33:18', '2025-06-21 18:33:18', NULL),
(12, 'sciences', 'sciences', NULL, NULL, 7, '2025-06-21 18:33:18', '2025-06-21 18:33:18', NULL),
(13, 'arts', 'arts', NULL, NULL, 7, '2025-06-21 18:33:18', '2025-06-21 18:33:18', NULL),
(14, 'Nom du module/unité d\'enseignenement', 'Nom du module/unité d\'enseignenement', NULL, NULL, 7, '2025-06-21 18:33:18', '2025-06-21 18:33:18', NULL),
(15, 'L\'éducation et les dimensions psychologiques 1', 'L\'éducation et les dimensions psychologiques 1', NULL, NULL, 7, '2025-06-22 07:33:02', '2025-06-22 07:33:02', NULL),
(16, 'sciences humaines et sociales 1', 'sciences humaines et sociales 1', NULL, NULL, 7, '2025-06-22 07:33:02', '2025-06-22 07:33:02', NULL),
(17, 'sciences 1', 'sciences 1', NULL, NULL, 7, '2025-06-22 07:33:02', '2025-06-22 07:33:02', NULL),
(18, 'arts 1', 'arts 1', NULL, NULL, 7, '2025-06-22 07:33:02', '2025-06-22 07:33:02', NULL),
(19, 'L\'éducation et les dimensions psychologiques 2', 'L\'éducation et les dimensions psychologiques 2', NULL, NULL, 7, '2025-06-22 07:33:02', '2025-06-22 07:33:02', NULL),
(20, 'langues 2', 'langues 2', NULL, NULL, 7, '2025-06-22 07:33:02', '2025-06-22 07:33:02', NULL),
(21, 'sciences humaines et sociales 2', 'sciences humaines et sociales 2', NULL, NULL, 7, '2025-06-22 14:38:20', '2025-06-22 14:38:20', NULL),
(22, 'sciences 2', 'sciences 2', NULL, NULL, 7, '2025-06-22 14:38:20', '2025-06-22 14:38:20', NULL),
(23, 'arts 2', 'arts 2', NULL, NULL, 7, '2025-06-22 14:38:20', '2025-06-22 14:38:20', NULL),
(24, 'L\'éducation et les dimensions psychologiques 3', 'L\'éducation et les dimensions psychologiques 3', NULL, NULL, 7, '2025-06-22 14:38:20', '2025-06-22 14:38:20', NULL),
(25, 'langues  et didactiques  1', 'langues  et didactiques  1', NULL, NULL, 7, '2025-06-22 14:38:20', '2025-06-22 14:38:20', NULL),
(26, 'sciences humaines et sociales 3', 'sciences humaines et sociales 3', NULL, NULL, 7, '2025-06-22 14:38:20', '2025-06-22 14:38:20', NULL),
(27, 'sciences 3', 'sciences 3', NULL, NULL, 7, '2025-06-22 14:38:20', '2025-06-22 14:38:20', NULL),
(28, 'arts 3', 'arts 3', NULL, NULL, 7, '2025-06-22 14:38:20', '2025-06-22 14:38:20', NULL),
(29, 'L\'éducation et les dimensions psychologiques 4', 'L\'éducation et les dimensions psychologiques 4', NULL, NULL, 7, '2025-06-23 06:54:39', '2025-06-23 06:54:39', NULL),
(30, 'langues  et didactiques  2', 'langues  et didactiques  2', NULL, NULL, 7, '2025-06-23 06:54:39', '2025-06-23 06:54:39', NULL),
(31, 'sciences humaines et sociales 4', 'sciences humaines et sociales 4', NULL, NULL, 7, '2025-06-23 06:54:39', '2025-06-23 06:54:39', NULL),
(32, 'sciences  et didactiques', 'sciences  et didactiques', NULL, NULL, 7, '2025-06-23 06:54:39', '2025-06-23 06:54:39', NULL),
(33, 'arts 4', 'arts 4', NULL, NULL, 7, '2025-06-23 06:54:39', '2025-06-23 06:54:39', NULL),
(34, 'L\'éducation et les dimensions psychologiques 5', 'L\'éducation et les dimensions psychologiques 5', NULL, NULL, 7, '2025-06-24 10:11:11', '2025-06-24 10:11:11', NULL),
(35, 'langues 3', 'langues 3', NULL, NULL, 7, '2025-06-24 10:11:11', '2025-06-24 10:11:11', NULL),
(36, 'Education spécialisée et éducation préscolaire', 'Education spécialisée et éducation préscolaire', NULL, NULL, 7, '2025-06-24 10:11:11', '2025-06-24 10:11:11', NULL),
(37, 'métier d\'enseigement 1', 'métier d\'enseigement 1', NULL, NULL, 7, '2025-06-24 10:11:11', '2025-06-24 10:11:11', NULL),
(38, 'compétences de vie', 'compétences de vie', NULL, NULL, 7, '2025-06-24 10:11:11', '2025-06-24 10:11:11', NULL),
(39, 'langues 4', 'langues 4', NULL, NULL, 7, '2025-06-24 17:34:38', '2025-06-24 17:34:38', NULL),
(40, 'métier d\'enseigement 2', 'métier d\'enseigement 2', NULL, NULL, 7, '2025-06-24 17:34:38', '2025-06-24 17:34:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `establishment_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `teacher_type_id` int(11) DEFAULT NULL,
  `teacher_grade_id` int(11) DEFAULT NULL,
  `classroom_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `cin` varchar(255) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `nb_max_days` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `establishment_id`, `first_name`, `last_name`, `email`, `classroom_id`, `created_at`, `updated_at`, `deleted_at`, `department_id`, `nb_max_days`) VALUES
(1, NULL, 'vacant', 'vacant', 'vacant@vacant.com', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 6, 'Raoui Mounir', 'MAAROUFI', 'raouimounir.maaroufi@isbm.u-monastir.tn', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(3, 6, 'Boulbaba', 'SELMI', 'selmi_boulbaba@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, 1),
(4, 6, 'Lotfi', 'ACHOUR', 'lotfiachour@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 18, NULL),
(5, 6, 'Aghleb', 'BARTEGI', 'a.bartegi@gmail.com', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(6, 6, 'Besma', 'BEL HADJ JRAD', 'bbhj2002@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(7, 6, 'Mohamed', 'NOUR', 'mohamednour2805@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, 1),
(8, 6, 'Amel', 'HAJ KHELIL', 'hajkhelil@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(9, 6, 'Noureddine', 'CHATTI', 'noureddinealichatti@gmail.com', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(10, 6, 'Elhem', 'HASSEN', 'elham_tn@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(11, 6, 'Mohamed', 'BANNI', 'm_banni@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(12, 6, 'Imed', 'MESSAOUDI', 'imed_messaoudi@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 18, NULL),
(13, 6, 'Kamel', 'GADDOUR', 'ghassengaddour@yahoo.com', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(14, 6, 'Lotfi', 'CHERNI', 'cherni.lotfi2014@gmail.com', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(15, 6, 'Jamel', 'JEBALI', 'j_jebali@yahoo.com', NULL, '2024-01-11 17:12:09', '2024-01-15 15:35:44', NULL, 17, NULL),
(16, 6, 'Sahbi', 'AYACHI', 'ayachi_sahbi@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 19, NULL),
(17, 6, 'Dhia', 'BOUKTILA', 'dhia_bouktila2000@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(18, 6, 'Chedia', 'JABEUR', 'sirsina@yahoo.com', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 18, NULL),
(19, 6, 'Adnen', 'KACEM', 'adnenkacem@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 18, NULL),
(20, 6, 'Mohsen', 'KERKENI', 'mohsen.kerkeni@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(21, 6, 'Sami', 'ACHOUR', 'Samnaw2001@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 18, NULL),
(22, 6, 'Maher', 'TRIGUI', 'TRIGUI_M@yahoo.com', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(23, 6, 'Manel', 'BEN M\'HADHEB', 'benmhadhebmanel@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(24, 6, 'Nour', 'SGHAIER', 'nour.sghaier@isbm.u-monastir.tn', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 19, NULL),
(25, 6, 'Taher', 'GHARRED', 'gharred_tahar@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 18, NULL),
(26, 6, 'Leila', 'HMIDA', 'hmidaleila@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 18, NULL),
(27, 6, 'Sabria', 'BARKA', 'sabriabarka2@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 18, NULL),
(28, 6, 'Habib', 'MOSBAH', 'mosbah_habib@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(29, 6, 'Meriam', 'OUDNI MRAD', 'myriam.mrad@gnet.tn', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(30, 6, 'Souhir', 'MESTIRI', 'mestiriss@hotmail.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(31, 6, 'Mohamed Amine', 'ZAOUALI', 'daminzaouali12@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 18, NULL),
(32, 6, 'Hayet', 'DZIRI', 'jaziri_hayet@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 18, NULL),
(33, 6, 'Rym', 'NASRI', 'ryma47@hotmail.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, 1),
(34, 6, 'Samir', 'ABBES', 'abbessamir435@gmail.com', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 18, NULL),
(35, 6, 'Jalila', 'BEN SALAH', 'jalila.bensalah@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(36, 6, 'Meriem', 'HJEIEJ', 'hajaijm10@gmail.com', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(37, 6, 'Neji', 'TOUMI', 'toumi.nji@gmail.com', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 18, NULL),
(38, 6, 'Olfa', 'AYARI', 'olfaayari@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 18, NULL),
(39, 6, 'Ikbel', 'DENDEN', 'denden_Ikbel@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(40, 6, 'BECHER', 'HAMRITA', 'bechrhamrita@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(41, 6, 'Achref', 'KHEDAEIR', 'a_Khedhaier@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(42, 6, 'Zouhour', 'WANNES', 'zouhourouanes@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(43, 6, 'Ahlem', 'BEN SASSI', 'ahlem_ben_sassi@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 18, NULL),
(44, 6, 'Faiçal', 'HICHRI', 'faycelhichri@gmail.com', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 19, 2),
(45, 6, 'Hayfa', 'ZGHIDA', 'haifa_zghida@yahoo.com', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 19, NULL),
(46, 6, 'Khaled', 'CHATTI', 'ckhaled2000@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(47, 6, 'Hachem', 'BEN NASER', 'hachem_b_naceur@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 18, NULL),
(48, 6, 'Khelifi', 'LETAIEF', 'khelifi.eltaief@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 18, NULL),
(49, 6, 'Sounira', 'MEHRI', 'mehrisounira@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(50, 6, 'Raja', 'REZG', 'raja.rezg@laposte.net', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 18, NULL),
(51, 6, 'Lamia', 'SAID', 'lamia_said2001@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 18, NULL),
(52, 6, 'Belsem', 'MARZOUK', 'belsemmarzouk@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 18, NULL),
(53, 6, 'Zied', 'ROUIS', 'zyedrou@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(54, 6, 'Fatma', 'TRIFA', 'fatmatrifa@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(55, 6, 'Soumaya', 'RHOUMA', 'rhoumasoumaya@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(56, 6, 'Ghada', 'SOUID', 'Souid_tn@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(57, 6, 'Mohamed', 'ELEUCH', 'elleuch5@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 18, NULL),
(58, 6, 'Nabil', 'MTIRAOUI', 'mtiraouinabil@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(59, 6, 'Nedia', 'BOUZGARROU', 'n.bouzgarrou.debbabi@gmail.com', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 17, NULL),
(60, 6, 'Hanen', 'MARZOUKI', 'hanen_marzouki7@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-01-11 17:12:09', NULL, 18, NULL),
(61, 6, 'Mouna', 'HASSINE', 'mouna20781@yahoo.fr', NULL, '2024-01-11 17:12:09', '2024-02-22 11:19:09', NULL, 17, NULL),
(62, 6, 'Kaouthar', 'KASSEBI', 'kaoutharkessabi@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 18, NULL),
(63, 6, 'Souad', 'AGREBI', 'souad_agrebi@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 19, NULL),
(64, 6, 'Bahija', 'SAAFI', 'saafi_behija@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 18, NULL),
(65, 6, 'Yosra', 'BELAID', 'yosrabelaid@gmail.com', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(66, 6, 'Sonia', 'NOUIRA', 'nouira.sonia@gmail.com', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(67, 6, 'Amira', 'BOUAFSOUN', 'amira.bouafsoun@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 18, NULL),
(68, 6, 'Nejla', 'CHERGUI', 'najla_ch@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(69, 6, 'Imen', 'BEN LETAIFA', 'imen.benlatifa@isimg.tn', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 19, NULL),
(70, 6, 'Noura', 'MNASSER', 'mnassernoura@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, 2),
(71, 6, 'Abir', 'KASDALLAH', 'abirgrissa@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 18, 2),
(72, 6, 'Lamia', 'AYED', 'lamiaayed@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 18, NULL),
(73, 6, 'Heykel', 'GARNA', 'haikelgarna @yahoo.com', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 18, NULL),
(74, 6, 'Nabil', 'ABID', 'nabilabidsalem.2014@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 18, NULL),
(75, 6, 'Hassen', 'TOUZI', 'touzi_ha@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 19, NULL),
(76, 6, 'Intissar', 'ZIDI', 'intissar_z@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 18, NULL),
(77, 6, 'Houda', 'LAZREG', 'ibrahimhoudarf@yaho.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(78, 6, 'Dorra', 'BEN ABDALLAH', 'benabdallahdorra@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(79, 6, 'Hajer', 'ALOUI', 'hajer.aloui@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 18, NULL),
(80, 6, 'Boutheina', 'GRAMI', 'grami.boutheina@gmail.com', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 18, NULL),
(81, 6, 'Wafa', 'TAYEB', 'tayebwafa2003@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 18, NULL),
(82, 6, 'Jihen', 'HENI', 'jahhounna@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(83, 6, 'NEDRA', 'ELHADJ ALI', 'nedra.elhadjali@gmail.com', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(84, 6, 'Afifa', 'CHDLI', 'hizemafifa @yahoo.com', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 19, NULL),
(85, 6, 'Nedra', 'KERKENI', 'nedra_kerkeni@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 19, NULL),
(86, 6, 'Salwa', 'NEBLI', 'bedeouisalwa@gmail.com', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 19, NULL),
(87, 6, 'Anis', 'MEMMI', 'anis.memmi@gmail.com', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 19, NULL),
(88, 6, 'Nizar', 'ELEUCH', 'elleuch.nizar@gmail.com', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 19, NULL),
(89, 6, 'Sonia', 'BESBES', 'sobesbes@laposte.net', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 19, NULL),
(90, 6, 'Maher', 'CHAOUACHI', 'maher.chaouachi@gmail.com', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 18, NULL),
(91, 6, 'Ibrahim', 'BCHIR', 'bchbrahim@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 18, NULL),
(92, 6, 'Wafa', 'HASSEN', 'hassen.wafa@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(93, 6, 'Rafik', 'HARRATH', 'r_harrath@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(94, 6, 'Sami', 'ZNEIDIA', 'znaidia_s@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 19, NULL),
(95, 6, 'Karima', 'BELHADJSALAH', 'karimabhs@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 18, NULL),
(96, 6, 'Fethi', 'BEN ABDALLAH', 'fetyben@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(97, 6, 'Jawhar', 'GHARBI', 'jawhargharbi@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(98, 6, 'Mejdi', 'SNOUSSI', 'snmejdi@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(99, 6, 'Amira', 'NOUMI', 'emira_noumi@yahoo.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(100, 6, 'Iness', 'OMRANE', 'inesomrane@hotmail.fr', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(101, 6, 'Kouloud', 'HAJ SADOK', 'test@gmail.com', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(102, 6, 'Houssem', 'HAMEMI', 'test@gmail.com', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, 1),
(103, 6, 'Takwa', 'BEN JMAA', 'test@gmail.com', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(104, 6, 'Mohamed', 'SGHAIER', 'test@gmail.com', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(105, 6, 'Saoussen', 'GUELLIM', 'test@gmail.com', NULL, '2024-01-11 17:12:10', '2024-04-15 08:56:47', NULL, 17, NULL),
(106, 6, 'Rym', 'ZITARI', 'test@gmail.com', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(107, 6, 'Mohamed Ali', 'LASSOUAD', 'test@gmail.com', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(108, 6, 'Choukri', NULL, 'test@gmail.com', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(109, 6, 'Fethia', 'SKHIRI', 'test@gmail.com', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(110, 6, 'Ikbel', 'CHAIEB', 'test@gmail.com', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(111, 6, 'Abir', 'BEN JEDDOU', 'test@gmail.com', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(112, 6, 'Mohamed', 'Naceur DHREIF', 'test@gmail.com', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, 1),
(113, 6, 'Soumaya', 'MOUGOU', 'test@gmail.com', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(114, 6, 'Samira', 'IBALA', 'test@gmail.com', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(115, 6, 'Dorra', 'HMIDA', 'test@gmail.com', NULL, '2024-01-11 17:12:10', '2024-01-11 17:12:10', NULL, 17, NULL),
(116, 6, NULL, 'Vacant', NULL, NULL, '2024-01-12 21:35:52', '2024-01-12 21:44:44', NULL, NULL, NULL),
(118, 6, 'Ichraf', 'CHATTI', NULL, NULL, '2024-01-18 10:12:36', '2024-01-18 10:12:36', NULL, 19, NULL),
(119, 6, 'Soukaina', 'HRICHI', 'soukaina.hrichi@gmail.com', NULL, '2024-01-18 13:27:55', '2024-02-22 11:18:49', NULL, NULL, NULL),
(120, 6, 'Mohamed', 'MABROUK', NULL, NULL, '2024-01-18 14:12:12', '2024-01-18 14:12:12', NULL, 19, NULL),
(121, 6, 'Yahya', 'ABOUDA', NULL, NULL, '2024-01-20 09:58:04', '2024-01-20 09:58:04', NULL, NULL, NULL),
(122, 6, 'Youssef', 'AFLOUK', NULL, NULL, '2024-01-24 20:44:18', '2024-01-24 20:44:18', NULL, NULL, NULL),
(123, 6, 'wafa', 'Hassen', NULL, NULL, '2024-01-25 10:02:15', '2024-01-25 10:02:15', NULL, NULL, NULL),
(124, 6, 'Besma', 'LAKHAL', NULL, NULL, '2024-01-25 10:03:02', '2024-01-25 10:03:02', NULL, 17, NULL),
(125, 6, 'Mekaoui', 'MAATALLAH', NULL, NULL, '2024-01-25 10:06:05', '2024-01-25 10:06:05', NULL, NULL, NULL),
(126, 6, 'vacant2', 'vacant2', 'vacant2@gmail.com', NULL, '2024-01-25 13:22:04', '2024-01-25 13:22:04', NULL, NULL, NULL),
(127, 6, 'Issaad Kaouthar', 'EZZINE', NULL, NULL, '2024-01-25 13:52:42', '2024-01-25 13:52:42', NULL, NULL, NULL),
(128, 6, 'Sarra', 'MSEHLI', NULL, NULL, '2024-02-06 10:57:10', '2024-02-06 10:57:10', NULL, NULL, NULL),
(129, 6, 'Hajer', 'FODHA', NULL, NULL, '2024-02-06 15:17:41', '2024-02-06 15:17:41', NULL, NULL, NULL),
(130, 6, 'Sabrine', 'TRIKI', NULL, NULL, '2024-02-07 15:48:46', '2024-02-07 15:48:46', NULL, NULL, NULL),
(131, 6, 'Gassoumi', 'BOUZID', NULL, NULL, '2024-02-09 10:22:17', '2024-02-09 10:22:17', NULL, NULL, NULL),
(132, 6, 'Inchirah', 'Bettaieb', NULL, NULL, '2024-02-09 12:37:47', '2024-02-09 12:43:51', NULL, NULL, NULL),
(133, 6, 'Nahla', 'BOUZIDI', NULL, NULL, '2024-02-11 21:12:13', '2024-02-11 21:12:13', NULL, NULL, NULL),
(134, 6, 'Saoussen', 'Ben Mabrouk', NULL, NULL, '2024-02-13 09:07:35', '2024-02-13 09:07:35', NULL, NULL, NULL),
(135, 6, 'Abir', 'GRISSA', NULL, NULL, '2024-02-13 14:14:25', '2024-02-13 14:14:25', NULL, NULL, NULL),
(136, 6, 'Maroua', 'JENZRI', NULL, NULL, '2024-02-15 07:08:29', '2024-02-15 07:08:29', NULL, NULL, NULL),
(137, 7, 'lina', 'babba', 'linababba@hotmail.com', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(139, 7, 'mohamed hedi', 'khelil', 'hedi.khelil@yahoo.fr', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(140, 7, 'maha', 'dallagi', 'mahadallagi5@gmail.com', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(141, 7, 'zohour', 'jridi_ben_hamida', 'benhamida.z@planet.tn', NULL, '2025-05-14 11:25:50', '2025-05-14 13:46:47', NULL, 21, NULL),
(142, 7, 'nadia', 'lahiani', 'nadia.lahyani@iseahz.u-tunis.tn', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(143, 7, 'cherif', 'haddad', 'cherif.haddad@gmail.com', NULL, '2025-05-14 11:25:50', '2025-05-14 14:46:36', NULL, 21, 2),
(144, 7, 'mouna', 'mejeri', 'mounnou01@gmail.com', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(145, 7, 'mustafa', 'ben_tmessek', 'mbentemessek@yahoo.fr', NULL, '2025-05-14 11:25:50', '2025-05-14 13:45:30', NULL, 21, NULL),
(146, 7, 'wafa', 'hmiss', 'hmissi-wafa@live.fr', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(147, 7, 'sana', 'aissi', 'sana.aissi@gmail.com', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(148, 7, 'imen', 'mzougui_kadhraoui', 'mzoughiimen@yahoo.fr', NULL, '2025-05-14 11:25:50', '2025-05-14 13:46:07', NULL, 21, NULL),
(149, 7, 'cherifa', 'ben_salha', 'bensalha.cherifa1@gmail.com', NULL, '2025-05-14 11:25:50', '2025-05-14 13:46:22', NULL, 21, NULL),
(152, 7, 'nidhal', 'ben hessin', 'nidhalbh85@gmail.com', NULL, '2025-05-14 11:25:50', '2025-05-14 11:34:00', NULL, 21, NULL),
(155, 7, 'rim', 'drira', 'rimdrira@gmail.com', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(156, 7, 'housin', 'moussi', 'moussahoussine25@gmail.com', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(157, 7, 'amira', 'aroui', 'amiralarouimbz@gmail.com', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(158, 7, 'sonia', 'salhi', 'sonia.salhi@yahoo.fr', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(159, 7, 'FETHI', 'HICHRI', 'hychri.fethi@gmail.com', 357, '2025-05-14 11:25:50', '2025-07-14 14:46:20', NULL, 21, 2),
(160, 7, 'rania', 'ghouiel', 'nachdit.entreprise@gmail.com', NULL, '2025-05-14 11:25:50', '2025-05-20 12:51:05', NULL, 21, NULL),
(161, 7, 'sofien', 'mnedla', 'nachdit.assistant@gmail.com', NULL, '2025-05-14 11:25:50', '2025-05-20 12:51:23', NULL, 21, NULL),
(162, 7, 'sabiha', 'jemaa', 'sbiha.djemaa@gmail.com', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(163, 7, 'feten', 'mbarek', 'faten.mbarek@yahoo.fr', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(164, 7, 'anis', 'rebai', 'anisrebai2015@gmail.com', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(165, 7, 'souhaiel', 'essid', 'souheil.essid@gmail.com', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(166, 7, 'oumaima', 'ben soltan', 'oumaima.bensoltane@gmail.com', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(167, 7, 'rim', 'lassoued', 'rimla.tn@gmail.com', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(168, 7, 'slah', 'bousaidi', 'sl.boussaidi@gmail.com', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(169, 7, 'samar', 'ghanmi', 'ghanmisamar1@yahoo.fr', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(170, 7, 'dorsaf', 'ben_malek', 'benmalekd@gmail.com', NULL, '2025-05-14 11:25:50', '2025-05-14 13:46:15', NULL, 21, NULL),
(171, 7, 'Ahmed', 'bouaziz', 'ahmed_bouaziz@hotmail.fr', NULL, '2025-05-14 11:25:50', '2025-06-24 20:07:06', NULL, 21, 9),
(172, 7, 'nihel', 'jaouedi', 'niheljaouadisaadaoui@gmail.com', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(173, 7, 'walid', 'bayounes', 'walid.bayounes@gmail.com', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(174, 7, 'Akrem', 'said', 'said.akrem@gmail.com', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(175, 7, 'boubaker', 'mbarki', 'boubakermbarki90@gmail.com', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(177, 7, 'Amin', 'boudawara', 'boudaouara.amin@gmail.com', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(178, 7, 'hassen', 'mensi', 'hmensi1@gmail.com', NULL, '2025-05-14 11:25:50', '2025-05-14 11:25:50', NULL, 21, NULL),
(179, 7, 'Majdi', 'ben_hamida', 'Mejdi.benhmida004@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 14:46:22', NULL, 21, 2),
(180, 7, 'Ghada', 'Gharbi', 'ghada_gharbi_79@yahoo.fr', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(181, 7, 'yousef', 'ouerzli', 'ouerzli1972@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(182, 7, 'Kaies', 'lajili', 'kaislajili07@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(184, 7, 'jihen', 'Kristou', 'taherhaded@yahoo.fr', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(185, 7, 'Amina', 'Ennafti', 'amina_ennafti@yahoo.fr', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(186, 7, 'Lamjed', 'Rhaiem', 'lamjedrhaiem@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(187, 7, 'Sana', 'Kechida', 'sana.kechida@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(188, 7, 'Riadh', 'Belhaj_salah', 'riadh.bh.salah@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 13:45:17', NULL, 21, NULL),
(189, 7, 'faten', 'Bettaieb', 'fetenbetaieb7.7@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(190, 7, 'Manel', 'Amri', 'manel.amri85@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(192, 7, 'Monia', 'jelleli', 'moniajelleli@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(193, 7, 'Fedia', 'Mriri', 'Fedia_mriri@hotmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(194, 7, 'Marwa', 'Abbes', 'maroua.abbes@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(195, 7, 'Mehrez', 'Aldoun', 'hakimeldoun@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(196, 7, 'Kaouther', 'selemi', 's_kaouther@yahoo.fr', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(197, 7, 'Abdelmajid', 'elayeb', 'abdelmajid.elayeb@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(198, 7, 'imen', 'dhib', 'dhib.imen@yahoo.fr', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(199, 7, 'wahida', 'hassin', 'wahida.hassine2014@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(200, 7, 'mayssa', 'neb', 'neb.mayssa@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(201, 7, 'saja', 'edem_fares_essabeh', 'keefu19881988@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 13:45:08', NULL, 21, NULL),
(202, 7, 'hana', 'gouied', 'hanageuid9@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(203, 7, 'sirine', 'magherbi', 'sirinemaghrebi21@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(204, 7, 'karima', 'dhaouedi', 'dhaouadi.karima@yahoo.fr', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(205, 7, 'badiaa', 'ben_hassin', 'benhassinebadiaa@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 13:46:29', NULL, 21, NULL),
(206, 7, 'bilel', 'jlassi', 'bilel.jlassi1@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(207, 7, 'yosra', 'bitri', 'nachdit.work@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-20 12:50:45', NULL, 21, NULL),
(208, 7, 'ghofran', 'Aouini', 'ghofi.aouini10@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(209, 7, 'Mhadheb', 'boudabous', 'mhadebboudabous@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(210, 7, 'nabil', 'karoui', 'nabilkaroui77@yahoo.fr', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(211, 7, 'mouna', 'zaghden abid', 'mounazaghdene@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(212, 7, 'Mouhamed_taieb', 'manaii', 'Tayebmanai10@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 13:44:41', NULL, 21, NULL),
(213, 7, 'safa', 'hachani', 'hachani.safa@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(214, 7, 'jamila', 'mimouni', 'mimouni_djamyla@yahoo.fr', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(215, 7, 'oumaima', 'hajlaoui', 'hajlaouioumayma@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(216, 7, 'sameh', 'abbess', 'samehabbes@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(217, 7, 'samia', 'oueslati', 'pr.samia@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(218, 7, 'nadhir', 'belhajrhouma', 'nedhirbhr@yahoo.fr', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(219, 7, 'chokri', 'soltani', 'chokrisoltani666@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(220, 7, 'mouhamed', 'wasim_hizem', 'wassimhizm@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 13:45:42', NULL, 21, NULL),
(221, 7, 'marwa', 'ben_dkill', 'marwa.bendkhil.tn@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 13:45:52', NULL, 21, NULL),
(222, 7, 'salem', 'saidia', 'salemsaaidia@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(223, 7, 'Maysa', 'ouerghi', 'maissaouerghi@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:25:51', NULL, 21, NULL),
(224, 7, 'hanen', 'arouss', 'languearabehanen@gmail.com', NULL, '2025-05-14 11:25:51', '2025-05-14 11:33:55', NULL, 21, NULL),
(225, 7, 'Ahmed', 'ouhibi', 'ahmedouhibi68@gmail.com', NULL, '2025-05-14 11:33:05', '2025-05-14 11:33:05', NULL, 21, NULL),
(226, 7, 'Amjad', 'Rahim', NULL, NULL, '2025-07-10 11:11:25', '2025-07-10 11:18:00', NULL, NULL, NULL),
(227, 7, 'Al-Eid', 'Ghazala', NULL, NULL, '2025-07-10 11:11:50', '2025-07-10 11:11:50', NULL, NULL, NULL),
(228, 7, 'Imen', 'Nashi Ghallab', NULL, NULL, '2025-07-10 11:12:37', '2025-07-20 06:30:01', NULL, NULL, NULL),
(229, 7, 'Hilmi', 'Ghazwani', NULL, NULL, '2025-07-10 11:13:03', '2025-07-10 11:18:19', NULL, NULL, NULL),
(230, 7, 'Rim', 'Ben Yaakoub', NULL, NULL, '2025-07-10 11:13:41', '2025-07-10 11:18:46', NULL, NULL, NULL),
(231, 7, 'Zouhair', 'Harath', NULL, NULL, '2025-07-10 11:14:14', '2025-07-10 11:14:14', NULL, NULL, NULL),
(232, 7, 'Sondos', 'Syfawi', NULL, NULL, '2025-07-10 11:14:41', '2025-07-10 11:19:09', NULL, NULL, NULL),
(233, 7, 'Abdelkader', 'Amri', NULL, NULL, '2025-07-10 11:15:46', '2025-07-10 11:15:46', NULL, NULL, NULL),
(235, 7, 'Noureddine', 'Sakrafi', NULL, NULL, '2025-07-10 11:17:22', '2025-07-10 11:17:22', NULL, NULL, NULL),
(236, 7, 'Kamel', 'Belhadi', NULL, NULL, '2025-07-11 17:50:22', '2025-07-11 17:50:22', NULL, NULL, NULL),
(237, 7, 'Ridha', 'Bannani', NULL, NULL, '2025-07-11 17:54:33', '2025-07-11 17:54:33', NULL, NULL, NULL),
(238, 7, 'Imene', 'Mansouri', NULL, NULL, '2025-07-11 17:56:29', '2025-07-11 17:56:29', NULL, NULL, NULL),
(239, 7, 'Mhadheb', 'Boudabbous', NULL, NULL, '2025-07-11 18:31:53', '2025-07-11 18:31:53', NULL, NULL, NULL),
(240, 7, 'Chokri', 'Beji', NULL, NULL, '2025-07-11 18:36:25', '2025-07-11 18:39:27', NULL, NULL, NULL),
(241, 7, 'Mohsen', 'Houimli', NULL, NULL, '2025-07-11 18:36:47', '2025-07-11 18:36:47', NULL, NULL, NULL),
(242, 7, 'Hanene', 'Settala', NULL, NULL, '2025-07-12 05:58:28', '2025-07-12 05:58:28', NULL, NULL, NULL),
(243, 7, 'Rchid', 'Dridi', NULL, NULL, '2025-07-12 06:16:24', '2025-07-12 06:16:24', NULL, NULL, NULL),
(244, 7, 'Mohamed', 'Raybi', NULL, NULL, '2025-07-12 06:18:30', '2025-07-12 06:18:30', NULL, NULL, NULL),
(245, 7, 'Wael', 'Zoghlami', NULL, NULL, '2025-07-12 10:36:58', '2025-07-12 10:36:58', NULL, NULL, NULL),
(246, 7, 'Fatiha', 'Larguach', NULL, NULL, '2025-07-12 13:13:55', '2025-07-12 13:13:55', NULL, NULL, NULL),
(247, 7, 'Hatem', 'Bouali', NULL, NULL, '2025-07-12 13:17:02', '2025-07-12 13:17:02', NULL, NULL, NULL),
(248, 7, 'Laïla', 'Mohammadi', NULL, NULL, '2025-07-12 13:20:37', '2025-07-12 13:20:37', NULL, NULL, NULL),
(249, 7, 'Salem', 'Belghith', NULL, NULL, '2025-07-12 15:52:34', '2025-07-12 15:52:34', NULL, NULL, NULL),
(250, 7, 'Mabrouk', 'Mizouni', NULL, NULL, '2025-07-12 15:58:04', '2025-07-12 15:58:04', NULL, NULL, NULL),
(251, 7, 'Ahmed', 'Ben rejeb', NULL, NULL, '2025-07-12 16:13:52', '2025-07-12 16:13:52', NULL, NULL, NULL),
(252, 7, 'Taib', 'Mannai', NULL, NULL, '2025-07-13 08:11:13', '2025-07-13 08:11:13', NULL, NULL, NULL),
(253, 7, 'vac', '1', NULL, NULL, '2025-08-08 20:06:16', '2025-08-08 20:06:16', NULL, NULL, NULL),
(254, 7, 'vac', '2', NULL, NULL, '2025-08-09 06:08:30', '2025-08-09 06:08:30', NULL, NULL, NULL),
(255, 7, 'vac', '3', NULL, NULL, '2025-08-09 06:08:45', '2025-08-09 06:08:45', NULL, NULL, NULL),
(256, 7, 'vac', '4', NULL, NULL, '2025-08-09 13:50:48', '2025-08-09 13:50:48', NULL, NULL, NULL),
(257, 7, 'vac', '5', NULL, NULL, '2025-08-09 13:51:00', '2025-08-09 13:51:00', NULL, NULL, NULL),
(258, 7, 'vac', '6', NULL, NULL, '2025-08-10 08:10:27', '2025-08-10 08:10:27', NULL, NULL, NULL),
(259, 7, 'vac', '7', NULL, NULL, '2025-08-10 08:10:40', '2025-08-10 08:10:40', NULL, NULL, NULL),
(260, 7, 'vac', '8', NULL, NULL, '2025-08-10 17:47:46', '2025-08-10 17:47:46', NULL, NULL, NULL),
(261, 7, 'vac', '9', NULL, NULL, '2025-08-10 17:48:02', '2025-08-10 17:48:02', NULL, NULL, NULL),
(262, 7, 'vac', '10', NULL, NULL, '2025-08-10 17:48:19', '2025-08-10 17:48:19', NULL, NULL, NULL),
(263, 7, 'CONTRAT', '1', NULL, NULL, '2025-08-13 06:13:18', '2025-08-13 06:13:18', NULL, NULL, NULL),
(264, 7, 'CONTRAT', '2', NULL, NULL, '2025-08-13 06:13:44', '2025-08-13 06:13:44', NULL, NULL, NULL),
(265, 7, 'CONTRAT', '3', NULL, NULL, '2025-08-13 06:14:10', '2025-08-13 06:14:10', NULL, NULL, NULL),
(266, 7, 'CONTRAT', '4', NULL, NULL, '2025-08-13 06:14:26', '2025-08-13 06:14:26', NULL, NULL, NULL),
(267, 7, 'CONTRAT', '5', NULL, NULL, '2025-08-13 06:14:42', '2025-08-13 06:14:42', NULL, NULL, NULL),
(268, 7, 'vac', '11', NULL, NULL, '2025-08-13 06:15:34', '2025-08-13 06:15:34', NULL, NULL, NULL),
(269, 7, 'vac', '12', NULL, NULL, '2025-08-13 06:15:45', '2025-08-13 06:15:45', NULL, NULL, NULL),
(270, 7, 'vac', '13', NULL, NULL, '2025-08-13 06:15:58', '2025-08-13 06:15:58', NULL, NULL, NULL),
(271, 7, 'vac', '14', NULL, NULL, '2025-08-13 06:16:08', '2025-08-13 06:16:08', NULL, NULL, NULL),
(272, 7, 'vac', '15', NULL, NULL, '2025-08-13 06:16:23', '2025-08-13 06:16:23', NULL, NULL, NULL),
(273, 7, 'Hassen', 'Ben Abid', NULL, NULL, '2025-08-13 07:16:57', '2025-08-13 07:16:57', NULL, NULL, NULL),
(274, 7, 'Tijani', 'Massoudi', NULL, NULL, '2025-08-14 18:11:24', '2025-08-14 18:11:24', NULL, NULL, NULL),
(275, 7, 'Tijani', 'Massoudi', NULL, NULL, '2025-08-14 18:11:27', '2025-08-14 18:11:27', NULL, NULL, NULL),
(276, 7, 'Samir', 'Rhaim', NULL, NULL, '2025-08-14 18:14:43', '2025-08-14 18:14:43', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `week_types`
--

CREATE TABLE `week_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `week1` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `annual_calendar_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `week2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `week_types`
--

INSERT INTO `week_types` (`id`, `designation`, `week1`, `type`, `start_date`, `end_date`, `annual_calendar_id`, `created_at`, `updated_at`, `deleted_at`, `week2`) VALUES
(1, 'H', 'H', 'H', '2020-09-01', '2021-04-30', NULL, '2020-12-28 12:15:25', '2020-12-28 12:15:25', NULL, 'H'),
(2, 'H', 'H', 'H', '2020-12-31', '2021-12-31', NULL, '2020-12-28 12:15:56', '2020-12-28 12:15:56', NULL, 'H'),
(3, 'H', 'H', 'H', '2020-01-01', '2021-12-31', NULL, '2020-12-28 12:25:52', '2020-12-28 12:25:52', NULL, 'H'),
(4, 'H', 'H', 'H', '2021-12-31', '2022-01-01', 1, '2020-12-28 12:29:24', '2021-10-18 11:29:12', NULL, 'H'),
(5, 'SemA-B', 'SemA', 'Q-A-B', '2021-12-03', '2022-04-29', 1, '2020-12-28 12:32:54', '2021-10-28 07:22:52', NULL, 'SemB'),
(6, 'Hebdomadaire', 'H', 'H', '2023-09-04', '2024-05-18', 5, '2021-11-20 10:07:20', '2023-12-06 09:06:04', NULL, 'H'),
(7, 'Quinzaine', 'Semaine A', 'Q-A-B', '2023-09-04', '2024-05-18', 5, '2021-11-20 10:08:37', '2023-12-06 09:06:27', NULL, 'Semaine B'),
(8, 'Hebdomadaire', 'H', 'H', '2021-09-01', '2022-06-30', 7, '2022-03-14 10:03:18', '2022-03-14 10:03:18', NULL, 'H'),
(9, 'Quinzaine', 'Q_A', 'Q-A-B', '2021-09-01', '2022-06-30', 7, '2022-03-14 10:04:20', '2022-03-14 10:04:20', NULL, 'Q_B'),
(10, 'H', 'H', 'H', '2022-09-01', '2023-04-01', 9, '2022-10-15 09:06:41', '2022-10-15 09:06:41', NULL, 'H'),
(11, 'QAB', 'SemA', 'Q-A-B', '2022-09-01', '2023-06-15', 9, '2022-10-15 09:07:09', '2022-10-15 09:07:09', NULL, 'SemB'),
(12, 'Z12', 'Z1', 'Z-1-2', '2022-10-16', '2022-10-16', 9, '2022-10-15 09:53:44', '2022-10-15 09:53:44', NULL, 'Z2'),
(13, 'Z34', 'Z3', 'Z-3-4', '2022-10-07', '2022-11-04', 9, '2022-10-15 09:54:10', '2022-10-15 09:54:10', NULL, 'Z4'),
(14, 'H', 'H', 'H', '2023-09-01', '2023-06-30', NULL, '2023-12-06 00:38:41', '2023-12-06 00:38:41', NULL, 'H'),
(15, 'Mensuel', 'M1', 'M-1-2', '2023-09-04', '2024-05-18', 5, '2023-12-06 01:01:18', '2023-12-06 09:06:12', NULL, 'M2'),
(16, 'H', 'H', 'H', '2023-09-01', '2024-06-30', 11, '2024-01-02 07:13:59', '2024-01-02 07:13:59', NULL, 'H'),
(17, 'QAB', '1/15', 'Q-A-B', '2023-09-01', '2024-06-30', 11, '2024-01-02 07:14:39', '2024-01-09 15:08:04', NULL, '2/15'),
(18, 'Mensuel', 'M1', 'M-1-2', '2023-09-01', '2024-06-30', 11, '2024-01-04 09:04:59', '2024-01-04 09:04:59', NULL, 'M2'),
(19, 'Hébdomadaire', 'H', 'H', '2025-09-01', '2026-06-30', 12, '2025-05-13 16:33:28', '2025-05-13 16:33:28', NULL, 'H'),
(20, 'Quinzaine', 'SemaineA', 'Q-A-B', '2025-09-01', '2026-06-30', 12, '2025-05-13 16:34:05', '2025-05-21 10:00:11', NULL, 'SemaineB');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cycles`
--
ALTER TABLE `cycles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipment_classrooms`
--
ALTER TABLE `equipment_classrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_tds`
--
ALTER TABLE `group_tds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_tps`
--
ALTER TABLE `group_tps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `not_available_establishments`
--
ALTER TABLE `not_available_establishments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `not_available_sectors`
--
ALTER TABLE `not_available_sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `not_available_teachers`
--
ALTER TABLE `not_available_teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pending_seances`
--
ALTER TABLE `pending_seances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `periods`
--
ALTER TABLE `periods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regimes`
--
ALTER TABLE `regimes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seances`
--
ALTER TABLE `seances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_modules`
--
ALTER TABLE `subject_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `week_types`
--
ALTER TABLE `week_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `classrooms`
--
ALTER TABLE `classrooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=390;

--
-- AUTO_INCREMENT for table `cycles`
--
ALTER TABLE `cycles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `equipments`
--
ALTER TABLE `equipments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `equipment_classrooms`
--
ALTER TABLE `equipment_classrooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `group_tds`
--
ALTER TABLE `group_tds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `group_tps`
--
ALTER TABLE `group_tps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `not_available_establishments`
--
ALTER TABLE `not_available_establishments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `not_available_sectors`
--
ALTER TABLE `not_available_sectors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `not_available_teachers`
--
ALTER TABLE `not_available_teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1470;

--
-- AUTO_INCREMENT for table `pending_seances`
--
ALTER TABLE `pending_seances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1064;

--
-- AUTO_INCREMENT for table `periods`
--
ALTER TABLE `periods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `regimes`
--
ALTER TABLE `regimes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1107;

--
-- AUTO_INCREMENT for table `seances`
--
ALTER TABLE `seances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56797;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `subject_modules`
--
ALTER TABLE `subject_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `week_types`
--
ALTER TABLE `week_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
