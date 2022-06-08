-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 29, 2020 at 07:14 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipolres`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `nip`, `phone`, `userId`, `created_at`, `updated_at`) VALUES
(1, 'hahaha', '11212233445566', '081376867436', 1, NULL, '2020-04-09 02:10:28');

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
(3, '2020_02_04_131011_create_admins_table', 1),
(4, '2020_02_04_131422_create_reports_table', 1),
(5, '2020_06_16_093703_create_spkt_table', 2);

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
-- Table structure for table `pelapor`
--

CREATE TABLE `pelapor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_ktp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_ktp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelapor`
--

INSERT INTO `pelapor` (`id`, `name`, `no_ktp`, `foto_ktp`, `phone`, `alamat`, `userId`, `created_at`, `updated_at`) VALUES
(3, 'Lutfi Haridha', '11111111111111', '923943carbon (5).png', '+6282280882906', 'Jalan Indonesia', 8, '2020-06-24 08:17:12', '2020-06-24 08:17:12'),
(4, 'yanis', '11223344', '963572dfddd-Page-6.png', '082388373887', 'trieng meduro', 10, '2020-06-24 09:44:19', '2020-06-24 09:44:19'),
(5, 'Muhammad Iqbal', '123123123123', '918739Librarid-Puasa.png', '62 82280882906', 'darsa', 11, '2020-06-28 07:41:46', '2020-06-28 07:41:46'),
(6, 'fadil fuady', '2344167116', '290888Librarid-Syawal.png', '62 82277821781', 'Panggoi', 12, '2020-06-28 08:49:20', '2020-06-28 08:49:20');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pemilik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kendaraan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warna` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_kendaraan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_stnk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_bpkb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_rangka` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_mesin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('Diambil','Ditemukan','Proses','Pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `nama_pemilik`, `no_hp`, `nama_kendaraan`, `jenis`, `warna`, `foto_kendaraan`, `foto_stnk`, `foto_bpkb`, `no_rangka`, `plat`, `no_mesin`, `slug`, `deskripsi`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(28, 'saipudin', '62081376867436', 'Honda Verza', 'Sepeda Motor', 'Hitam', 'dfddd-Page-6.png', 'dfddd-Page-8.png', 'dfddd-Page-7.png', 'KNAF55182J84', 'BL 1020 NA', 'MMAF55182J84', 'honda-verza-bl-1020-na-062020', NULL, 10, 'Ditemukan', '2020-06-24 08:32:52', '2020-06-28 07:51:54'),
(29, 'saipudin', '62081376867436', 'r23', 'Sepeda Motor', 'Hitam', 'dfddd-Page-6.png', 'dfddd-Page-8.png', 'dfddd-Page-7.png', 'KNAF55182J84', 'BL 1020 NA', 'MMAF55182J84', 'r23-bl-1020-na-062020', NULL, 10, 'Ditemukan', '2020-06-24 09:55:33', '2020-06-28 08:22:42'),
(30, 'fuady', '6282277821781', 'vario', 'Sepeda Motor', 'Hitam', 'Librarid-Syawal (1).png', 'Librarid-Puasa.png', 'Librarid-Syawal.png', 'KNAF55182J84', 'BL 7761 KL', 'MMAF55182J84', 'vario-bl-7761-kl-062020', 'Saat buat tugas di darsa honda saya tiba2 hilang', 12, 'Proses', '2020-06-28 08:53:38', '2020-06-28 08:56:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','pelapor') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('aktif','tidak aktif') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tidak aktif',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', NULL, '$2y$10$Z/hu4jkjb5RXjskn3mErwOl4eL4/mE9w/Npn3onZo.cubuAhilF9W', 'admin', 'aktif', NULL, '2020-04-09 00:42:22', '2020-04-09 02:10:28'),
(5, 'panda1337@yahoo.com', NULL, '$2y$10$vJfdR3Bnj/tq37/mjQ5ht.NaluXlo7QXrOoKD27X6G.EWmV5GAWpK', 'admin', 'aktif', NULL, '2020-06-20 10:48:10', '2020-06-20 10:48:10'),
(8, 'Lutfiharidha1@gmail.com', NULL, '$2y$10$Cj/0v5lQCEhhoz3R2RcGFelfG.8NITK90hSvhJdMN1sjobx.TXwrm', 'pelapor', 'tidak aktif', NULL, '2020-06-24 08:17:12', '2020-06-24 09:32:27'),
(9, 'yanis@gmail.com', NULL, '$2y$10$.S5N/KCJgj7XCxMWYziLg.A4R4JIR7cc1EzUhSzstMSVX6s1GLtEi', 'pelapor', 'tidak aktif', NULL, '2020-06-24 09:40:16', '2020-06-24 09:40:16'),
(10, 'yunis@gmail.com', NULL, '$2y$10$8ryyuQ2oGEdXzjnm3U/fLu1jgecn3d.7MeIApxhmfqZdae8pWk6Ka', 'pelapor', 'aktif', NULL, '2020-06-24 09:44:19', '2020-06-24 09:45:24'),
(11, 'iqbal@gmail.com', NULL, '$2y$10$9ItPG.3ZdnUiwDuQC4krteqywyE5BifMl7m/yO15dEQUys83SEO8G', 'pelapor', 'tidak aktif', NULL, '2020-06-28 07:41:46', '2020-06-28 07:41:46'),
(12, 'fuady@gmail.com', NULL, '$2y$10$O5/03jv2.LHrX90NPGNAoeVpJ8QtcKbxpjRmJ2/OzDgA9zcDizG2y', 'pelapor', 'aktif', NULL, '2020-06-28 08:49:19', '2020-06-28 08:50:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_nip_unique` (`nip`),
  ADD KEY `admins_userid_foreign` (`userId`);

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
-- Indexes for table `pelapor`
--
ALTER TABLE `pelapor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `spkt_userid_foreign` (`userId`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pelapor`
--
ALTER TABLE `pelapor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `pelapor`
--
ALTER TABLE `pelapor`
  ADD CONSTRAINT `spkt_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
