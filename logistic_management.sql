-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2021 at 06:13 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logistic_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `id` int(10) UNSIGNED NOT NULL,
  `registration_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`id`, `registration_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `date_created`, `email`, `name`, `phone`, `password`, `status`, `code`) VALUES
(1, '2021-10-27 06:34:10', 'paksi@gmail.com', 'paksi', '107324012038', NULL, 1, 'vnriedjkfadbfnvklfhdfop30e'),
(2, '2021-10-27 08:45:29', 'rudeus@gmail.com', 'Arafat Maku', '081234567890', NULL, 1, '5A0D94E9E6BF00DF681B75E6FE595203CCB92A296CAAEA599AA3AB6D3511A89737FB5F31E082515BFCB15361184844B034B220EF305D725B3777560707B27510'),
(3, '2021-10-27 08:48:36', 'oliver.syauqiez@yahoo.com', 'Anggun Ayu Lestari', '082356789012', NULL, 1, '1B0F74CA6ECAE286AEF066738E70BC4B4043E2C4B38AB2B61FD8C3BA615250BE690499BD205F0B66C97E1FB10CA0DF5D0DB6738A30E6CA0F273206E8F5120B39'),
(4, '2021-10-27 08:49:31', 'ari.fida@yahoo.com', 'Kirigaya Kazuto', '085217435290', NULL, 1, NULL),
(5, '2021-10-27 08:50:31', 'sul@gmail.com', 'Dimas', '08412937189', NULL, 1, '2hnv8oiedrysthnofg83btgn0oiwthqef'),
(6, '2021-10-27 08:51:38', 'fikafebrika02@gmail.com', 'Fika Febrika', '087894614101', NULL, 1, '24C410527A5AEA6B7A0D792C0C0DA06C6424C98B172B99701E7E9DC99E048818D7303F1E4F9931C9BA2F3B1D950FA0E5B9FA9507ED68C273BD9B0CAC77D03F9B'),
(7, '2021-10-27 08:52:37', 'andina@gmail.com', 'Andina Marsanova', '087854320987', NULL, 1, NULL),
(8, '2021-10-27 08:53:14', 'nurwinda@gmail.com', 'nurwinda dwiva', '085243789865', NULL, 1, NULL),
(9, '2021-10-27 08:54:10', 'minatwice@gmail.com', 'Mina Rofida', '089543127683', NULL, 1, NULL),
(10, '2021-10-27 08:55:08', 'dimas@gmail.com', 'Sultan Dimas', '085209871234', NULL, 1, NULL),
(11, '2021-10-27 08:55:50', 'asasa@gmail.com', 'Asa Darussalam', '087754327865', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_x_merch`
--

CREATE TABLE `customer_x_merch` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_ticket` int(11) DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_x_merch`
--

INSERT INTO `customer_x_merch` (`id`, `id_ticket`, `customer_id`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 3),
(4, 5, 9),
(5, 6, 10),
(6, 7, 11),
(8, 4, 4),
(11, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_x_merch_eligible`
--

CREATE TABLE `customer_x_merch_eligible` (
  `id` int(10) UNSIGNED NOT NULL,
  `given_on` datetime DEFAULT NULL,
  `given_by` varchar(255) DEFAULT NULL,
  `customer_x_merch_id` int(10) UNSIGNED DEFAULT NULL,
  `merch_eligible_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_x_merch_eligible`
--

INSERT INTO `customer_x_merch_eligible` (`id`, `given_on`, `given_by`, `customer_x_merch_id`, `merch_eligible_id`) VALUES
(1, NULL, NULL, 1, 1),
(2, NULL, NULL, 1, 2),
(3, NULL, NULL, 1, 3),
(4, NULL, NULL, 1, 4),
(5, NULL, NULL, 1, 5),
(6, NULL, NULL, 2, 6),
(7, NULL, NULL, 2, 7),
(8, NULL, NULL, 2, 8),
(9, NULL, NULL, 2, 9),
(10, NULL, NULL, 2, 10),
(11, NULL, NULL, 3, 11),
(12, NULL, NULL, 3, 12),
(13, NULL, NULL, 3, 13),
(14, NULL, NULL, 3, 14),
(15, NULL, NULL, 3, 15),
(16, NULL, NULL, 4, 21),
(17, NULL, NULL, 4, 22),
(18, NULL, NULL, 4, 23),
(19, NULL, NULL, 4, 24),
(20, NULL, NULL, 4, 25),
(21, NULL, NULL, 4, 26),
(22, NULL, NULL, 5, 27),
(23, NULL, NULL, 5, 28),
(24, NULL, NULL, 5, 29),
(25, NULL, NULL, 5, 30),
(26, NULL, NULL, 5, 31),
(27, NULL, NULL, 5, 32),
(28, NULL, NULL, 6, 33),
(29, NULL, NULL, 6, 34),
(30, NULL, NULL, 6, 35),
(31, NULL, NULL, 6, 36),
(32, NULL, NULL, 8, 16),
(33, NULL, NULL, 8, 17),
(34, NULL, NULL, 8, 18),
(35, NULL, NULL, 8, 19),
(36, NULL, NULL, 8, 20);

-- --------------------------------------------------------

--
-- Table structure for table `merch`
--

CREATE TABLE `merch` (
  `id` int(10) UNSIGNED NOT NULL,
  `merch_name` varchar(255) DEFAULT NULL,
  `total_stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merch`
--

INSERT INTO `merch` (`id`, `merch_name`, `total_stock`) VALUES
(1, 'Notebook', 1000),
(2, 'Mug', 1000),
(3, 'Alat Tulis', 1000),
(4, 'Gantungan Kunci', 1000),
(5, 'Goody Bag Peserta Umum', 1000),
(6, 'Goody Bag Undangan', 1000),
(7, 'Goody Bag Pembicara', 1000),
(8, 'Goody Bag Media', 1000),
(9, 'Co Card Peserta Umum', 1000),
(10, 'Co Card Undangan', 1000),
(11, 'Co Card Pembicara', 1000),
(12, 'Co Card Media', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `merch_eligibility`
--

CREATE TABLE `merch_eligibility` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `id_ticket` int(11) DEFAULT NULL,
  `merch_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merch_eligibility`
--

INSERT INTO `merch_eligibility` (`id`, `quantity`, `id_ticket`, `merch_id`) VALUES
(1, 500, 1, 1),
(2, 500, 1, 2),
(3, 500, 1, 3),
(4, 500, 1, 5),
(5, 500, 1, 9),
(6, 500, 2, 1),
(7, 500, 2, 2),
(8, 500, 2, 3),
(9, 500, 2, 5),
(10, 500, 2, 9),
(11, 500, 3, 1),
(12, 500, 3, 2),
(13, 500, 3, 3),
(14, 500, 3, 5),
(15, 500, 3, 9),
(16, 500, 4, 1),
(17, 500, 4, 2),
(18, 500, 4, 3),
(19, 500, 4, 5),
(20, 500, 4, 9),
(21, 100, 5, 1),
(22, 100, 5, 2),
(23, 100, 5, 3),
(24, 100, 5, 4),
(25, 100, 5, 6),
(26, 100, 5, 10),
(27, 20, 6, 1),
(28, 20, 6, 2),
(29, 20, 6, 3),
(30, 20, 6, 4),
(31, 20, 6, 7),
(32, 20, 6, 11),
(33, 50, 7, 1),
(34, 50, 7, 4),
(35, 50, 7, 8),
(36, 50, 7, 12);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(10) UNSIGNED NOT NULL,
  `validated_on` datetime DEFAULT NULL,
  `validated_by` varchar(255) DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `session_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `validated_on`, `validated_by`, `customer_id`, `session_id`) VALUES
(1, '2021-12-01 20:00:41', NULL, 2, 1),
(2, '2021-12-01 20:00:07', NULL, 2, 2),
(3, '2021-12-01 23:00:08', NULL, 2, 3),
(4, '2021-12-03 17:00:15', NULL, 3, 4),
(5, '2021-12-03 19:00:35', NULL, 3, 5),
(6, '2021-12-03 23:00:34', NULL, 3, 6),
(7, '2021-12-05 17:00:18', NULL, 3, 7),
(8, '2021-12-05 20:00:53', NULL, 3, 8),
(9, '2021-12-05 23:00:51', NULL, 3, 9),
(10, '2021-12-01 17:00:34', NULL, 9, 1),
(11, '2021-12-01 20:00:38', NULL, 9, 2),
(12, '2021-12-01 23:00:18', NULL, 9, 3),
(13, '2021-12-03 17:00:36', NULL, 9, 4),
(14, '2021-12-03 19:00:08', NULL, 9, 5),
(15, '2021-12-03 23:00:04', NULL, 9, 6),
(16, '2021-12-05 20:00:59', NULL, 9, 7),
(17, '2021-12-05 20:00:20', NULL, 9, 8),
(18, '2021-12-05 23:00:14', NULL, 9, 9),
(19, '2021-12-01 19:00:14', NULL, 10, 1),
(20, '2021-12-01 20:00:10', NULL, 10, 2),
(21, '2021-12-01 23:00:45', NULL, 10, 3),
(22, '2021-12-03 17:00:01', NULL, 10, 4),
(23, '2021-12-03 19:00:03', NULL, 10, 5),
(24, '2021-12-03 23:00:35', NULL, 10, 6),
(25, '2021-12-05 17:00:23', NULL, 10, 7),
(26, '2021-12-05 20:00:50', NULL, 10, 8),
(27, '2021-12-05 23:00:10', NULL, 10, 9),
(28, '2021-12-01 19:00:41', NULL, 11, 1),
(29, '2021-12-05 23:00:33', NULL, 11, 9),
(30, '2021-12-01 19:00:04', NULL, 4, 1),
(31, '2021-12-01 20:00:33', NULL, 4, 2),
(32, '2021-12-01 23:00:41', NULL, 4, 3),
(33, '2021-12-03 17:00:25', NULL, 4, 4),
(34, '2021-12-03 19:00:47', NULL, 4, 5),
(35, '2021-12-03 23:00:00', NULL, 4, 6),
(36, '2021-12-05 17:00:49', NULL, 4, 7),
(37, '2021-12-05 20:00:15', NULL, 4, 8),
(38, '2021-12-05 23:00:39', NULL, 4, 9);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(10) UNSIGNED NOT NULL,
  `session_type` varchar(255) DEFAULT NULL,
  `session_desc` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `session_speaker_photo` char(36) DEFAULT NULL,
  `session_speaker_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session_type`, `session_desc`, `start_time`, `finish_time`, `session_speaker_photo`, `session_speaker_name`) VALUES
(1, 'Session 1', 'Seminar System Architecture', '2021-12-01 17:00:49', '2021-12-01 19:00:49', NULL, 'Erray Utama Alld, Ph.D.'),
(2, 'Session 2', 'Seminar System Integration', '2021-12-01 20:00:41', '2021-12-01 22:00:01', NULL, 'Ana Marlinoh Askari, S.E., M.Ak'),
(3, 'Session 3', 'Seminar System Architecutre & Integration', '2021-12-01 23:00:46', '2021-12-02 01:00:05', NULL, 'Anta Wahyo Budamanas, S.T., Ph.D'),
(4, 'Session 4', 'Seminar Native Programming Language 1', '2021-12-03 17:00:24', '2021-12-03 19:00:38', NULL, 'Dr. Khaerodin, M.Pd'),
(5, 'Session 5', 'Seminar Native Programming Languange 2', '2021-12-03 07:00:00', NULL, NULL, 'Surya Adi Kencana S.kom, M.si'),
(6, 'Session 6', 'Seminar Native Programming Languange 3', '2021-12-03 23:00:00', '2021-12-04 01:00:05', NULL, 'drg. Sultan SpKG(K)'),
(7, 'Session 7', 'Seminar Database Development 1', '2021-12-05 17:00:47', NULL, NULL, 'Prof. Dr.  Retnowati Wibisono S.pd, M.Psi'),
(8, 'Session 8', 'Seminar Database Development 2', '2021-12-05 20:00:33', '2021-12-05 22:00:51', NULL, 'Ada Zakaroa Afifef, Prof., Dr. SE., MBA'),
(9, 'Session 9', 'Seminar Database Development 3', '2021-12-05 23:00:44', '2021-12-06 01:00:00', NULL, 'Prof. Dr. Fathar Rikohmin, M.Hum.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificate_registration_id_foreign` (`registration_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_x_merch`
--
ALTER TABLE `customer_x_merch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_x_merch_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `customer_x_merch_eligible`
--
ALTER TABLE `customer_x_merch_eligible`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_x_merch_eligible_customer_x_merch_id_foreign` (`customer_x_merch_id`),
  ADD KEY `customer_x_merch_eligible_merch_eligible_id_foreign` (`merch_eligible_id`);

--
-- Indexes for table `merch`
--
ALTER TABLE `merch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merch_eligibility`
--
ALTER TABLE `merch_eligibility`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merch_eligibility_merch_id_foreign` (`merch_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registration_customer_id_foreign` (`customer_id`),
  ADD KEY `registration_session_id_foreign` (`session_id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_session_speaker_photo_foreign` (`session_speaker_photo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer_x_merch`
--
ALTER TABLE `customer_x_merch`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer_x_merch_eligible`
--
ALTER TABLE `customer_x_merch_eligible`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `merch`
--
ALTER TABLE `merch`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `merch_eligibility`
--
ALTER TABLE `merch_eligibility`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `certificate`
--
ALTER TABLE `certificate`
  ADD CONSTRAINT `certificate_registration_id_foreign` FOREIGN KEY (`registration_id`) REFERENCES `registration` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `customer_x_merch`
--
ALTER TABLE `customer_x_merch`
  ADD CONSTRAINT `customer_x_merch_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `customer_x_merch_eligible`
--
ALTER TABLE `customer_x_merch_eligible`
  ADD CONSTRAINT `customer_x_merch_eligible_customer_x_merch_id_foreign` FOREIGN KEY (`customer_x_merch_id`) REFERENCES `customer_x_merch` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `customer_x_merch_eligible_merch_eligible_id_foreign` FOREIGN KEY (`merch_eligible_id`) REFERENCES `merch_eligibility` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `merch_eligibility`
--
ALTER TABLE `merch_eligibility`
  ADD CONSTRAINT `merch_eligibility_merch_id_foreign` FOREIGN KEY (`merch_id`) REFERENCES `merch` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `registration`
--
ALTER TABLE `registration`
  ADD CONSTRAINT `registration_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `registration_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `session` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `session_session_speaker_photo_foreign` FOREIGN KEY (`session_speaker_photo`) REFERENCES `directus_files` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
