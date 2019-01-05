-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2019 at 06:37 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `email` varchar(191) NOT NULL,
  `pasword` varchar(191) NOT NULL,
  `remember_token` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `ID_Buku` int(10) UNSIGNED NOT NULL,
  `Judul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Penerbit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Jml_Stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`ID_Buku`, `Judul`, `Penerbit`, `Jml_Stock`, `created_at`, `updated_at`) VALUES
(1, 'dongeng anak anak', 'erlanga', 1, '2018-12-31 08:48:46', NULL),
(2, 'motivasi hidup', 'erlanga', 1, '2019-01-05 05:30:50', NULL),
(3, 'hukuman hidup', 'erlanga', 1, '2019-01-05 05:30:50', NULL),
(4, 'sejarah indonesia', 'erlanga', 2, '2019-01-05 05:32:44', NULL),
(5, 'pendidikan bahasa indonesia', 'erlanga', 2, '2019-01-05 05:32:44', NULL),
(6, 'kepala', 'aku', 2, '2019-01-05 05:34:23', NULL),
(7, 'kamu', 'aku', 2, '2019-01-05 05:34:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `ID_Mahasiswa` int(10) UNSIGNED NOT NULL,
  `NPM` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NoHp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Alamat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`ID_Mahasiswa`, `NPM`, `Password`, `api_token`, `Nama`, `NoHp`, `Alamat`, `created_at`, `updated_at`) VALUES
(1, '1631059', 'kjasdfljslkd', '', 'sujono', '0918309812309', 'jln adakfljb', '2018-12-31 07:46:01', NULL),
(5, '1631000', '$2y$10$yu74J8I1Xde3P5PLudmz/udNpOhJ6fEPM.eVzfy43xhDLiw.gHwoa', '', 'no', NULL, 'jln A', '2018-12-31 01:22:59', '2018-12-31 01:22:59'),
(6, '1631090', '$2y$10$ECW3vVcPn6O0U56PCLGwceNSebukkP4VfSsyFj.DOsZxFv92U3QXe', '', 'no', NULL, 'jln A', '2018-12-31 01:25:54', '2018-12-31 01:25:54'),
(7, '1631001', NULL, '$2y$10$rGRB6wd9Hg1UzscwbV5H4e8cKQEhBntfpyZKeQda1Y.CmVF/u132G', NULL, NULL, NULL, '2019-01-02 06:33:26', '2019-01-02 06:33:26'),
(8, '1631011', '$2y$10$Y.cm20Gmp.oTTzNytmegU.SkOf3.l7kcKYoxmpOys.rStUngjMLBm', '$2y$10$lNqtC2K.Jj/luTzrMO9w2ue/MiccFnqjVZSxC7gR63BHL2IkibhZe', 'no', NULL, NULL, '2019-01-02 06:34:36', '2019-01-02 06:34:36'),
(9, '1631012', '$2y$10$W2hwkFTif8Rh1eknjism6uSpGeR2A1r3waqbr1RMha4u.dTlVn8Fi', '$2y$10$UUSiEbU4jVa8DDiibEKT4OIK/1doNyc/Ac00j/kz/iPxMyVORDVd2', 'abc', NULL, 'jln abc', '2019-01-02 06:53:12', '2019-01-02 06:53:12'),
(10, '1631013', '$2y$10$yh/S7v7Ng5C1gg6pWYwg2uJiG4FW1mVrpaixmNyHBAkZV9MMplaAC', '$2y$10$BUZb3wc.FX58w5DiYBxC2eiNHHjVrhz1k1KJdw5dHAW.MZXwhWmSO', 'bca', NULL, 'jln abc', '2019-01-02 14:15:44', '2019-01-02 14:15:44'),
(11, '1631014', '$2y$10$mboxH/M6GQKkm/da0EqA6OACl5bNCPJ9jwN7OPJqH.ZliLQp6PFNG', '$2y$10$FqIynYBrVE8YJiTor.S9jeI9wbikvJ5hlVVbdAxquzv.0I/.C/4SS', 'ccc', NULL, 'jln abc', NULL, NULL),
(12, '1631015', '$2y$10$9H2GbCN9.rUsbBIhVtXLpeHOaz7dxlrnwGYScxVjhTu2QQyDpCs1q', '$2y$10$IaC57iy8kzqdmPW/CGQhM.GyQgZLnomBmy1WsZPEBhV/oeCYCZs92', 'caa', NULL, 'jln abc', NULL, NULL),
(13, '1631016', '$2y$10$lHcMVFjM2Keo/ff95y.UmOA8Voa.phGsFwxr0xPFLb44gQ2Vx/HV6', '$2y$10$x1p.r/aFa3YaVgw5c9Zee.KD1.I02oAnvkyEHZZydf5Ax/sS4zmSm', 'caa', NULL, 'jln abc', NULL, NULL),
(14, '1631017', '$2y$10$BUVGtrakeczJb7XwWREq9.isODaJYzc.4vSqueGYWzDQ34BPwdMYO', '$2y$10$HF6/YvAGerr1Nk88MEoEZefLKmpfZb4eUTIPCbOcOKcoLa0GzIyLy', 'caa', NULL, 'jln abc', NULL, NULL),
(15, '1631018', '$2y$10$P.8pG2iUq6SrUUomlWiFTulLS9poGvP/gTVsHe6tL.WoDi.j6kI2e', '$2y$10$l2u/XTB5cjKZxHFO2/tX2ON2/BrQ5oyuGGngwtbBHfWBZHJ/oFu.6', 'caa', NULL, 'jln abc', '2019-01-02 14:28:49', '2019-01-02 14:28:49'),
(16, '1631019', '$2y$10$XQi5vTLNNB1tK3LZYUYW/OLGL18dH9eNzvH1hMiWldPScoufFMIXG', '$2y$10$zXAmUpBIO0zerGhXFJRdKOyzuo3K5a39o4o//XDHwUECJtnkykTlm', 'caa', NULL, 'jln abc', '2019-01-02 14:29:45', '2019-01-02 14:29:45'),
(17, '1631020', '$2y$10$c/sQU6lUsN5uu1MeuEIkMe6l1iw.1DMKa.s05HWxlxq7b5vz.qZcG', '$2y$10$RxYnPCwTlUxC91YDCPim/.HOK8q8yCC/4qoazkS1jSb25r6fkYb42', 'caa', NULL, 'jln abc', '2019-01-02 14:30:14', '2019-01-02 14:30:14'),
(18, '163900', '$2y$10$u7oimEUX7PT11bBl.n.vWOribhzN0c4jb5dNe6GZ/CSdQfT3iUP8G', '$2y$10$dzOizvwWSatjsM4TKYBG.eRn3N.vs30dr9fLkZI1e8wTUM6sTo8U2', 'sss', NULL, 'jln abc d', '2019-01-02 14:49:38', '2019-01-02 14:49:38'),
(19, '163990', '$2y$10$GPMhOyWFDK5BUKqH.fB/TeLRgrlqjqiRomnet.lxFyW9L1/Tp2cBO', '$2y$10$RK3/On91CsJNe72sJ/DRGOcNm2cMfAt8L4IUeltd4HulMIFI9.Cxq', 'sss', NULL, 'jln abc d', '2019-01-03 12:59:07', '2019-01-03 12:59:07');

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
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_resets_table', 1),
(23, '2018_12_27_134129_create_mahasiswa_table', 1),
(24, '2018_12_27_140822_create_buku_table', 1),
(25, '2018_12_27_140919_create_pekerja_table', 1),
(26, '2018_12_27_141012_create_peminjaman_table', 1),
(27, '2019_01_02_130545_update_mahasiswa_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pekerja`
--

CREATE TABLE `pekerja` (
  `ID_Pekerja` int(10) UNSIGNED NOT NULL,
  `NIP` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoHp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Alamat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pekerja`
--

INSERT INTO `pekerja` (`ID_Pekerja`, `NIP`, `Nama`, `Password`, `NoHp`, `Alamat`, `created_at`, `updated_at`) VALUES
(1, '1313151', 'don', 'kljsdfjoqjeoij', '019309102', 'jln alalaldla', '2018-12-31 08:49:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `ID_Peminjaman` int(10) UNSIGNED NOT NULL,
  `ID_Mahasiswa` int(10) UNSIGNED DEFAULT NULL,
  `ID_Buku` int(10) UNSIGNED DEFAULT NULL,
  `ID_Pekerja` int(10) UNSIGNED DEFAULT NULL,
  `Tanggal_Pinjam` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Deadline_Pengembalian` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`ID_Peminjaman`, `ID_Mahasiswa`, `ID_Buku`, `ID_Pekerja`, `Tanggal_Pinjam`, `Deadline_Pengembalian`, `created_at`, `updated_at`, `Status`) VALUES
(16, 2, 1, 1, '2019-01-04 00:02:35', NULL, '2019-01-03 17:02:35', '2019-01-03 17:02:35', NULL),
(17, 2, 1, 1, '2019-01-04 00:07:13', NULL, '2019-01-03 17:07:13', '2019-01-03 17:07:13', NULL),
(18, 2, 1, 1, '2019-01-04 00:08:44', NULL, '2019-01-03 17:08:44', '2019-01-04 13:35:15', 'Canceled'),
(19, 2, 1, 1, '2019-01-04 00:09:09', NULL, '2019-01-03 17:09:09', '2019-01-04 12:45:33', 'Approved'),
(27, 2, 1, 1, '2019-01-04 21:12:41', NULL, '2019-01-04 14:12:41', '2019-01-05 04:37:06', 'Approved'),
(28, 6, 1, 1, '2019-01-05 11:56:10', NULL, '2019-01-05 04:56:10', '2019-01-05 04:56:10', 'Request'),
(29, 2, 1, 1, '2019-01-05 11:58:19', NULL, '2019-01-05 04:58:19', '2019-01-05 04:58:19', 'Request'),
(30, 2, 1, 6, '2019-01-05 12:02:48', NULL, '2019-01-05 05:02:48', '2019-01-05 05:09:26', 'Approved'),
(31, 2, 1, 6, '2019-01-05 12:12:44', NULL, '2019-01-05 05:12:44', '2019-01-05 05:15:55', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `npm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nohp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `npm`, `nip`, `name`, `email`, `password`, `remember_token`, `api_token`, `nohp`, `alamat`, `status`, `created_at`, `updated_at`, `admin`) VALUES
(2, '1631059', '', 'mr a', 'mra@gmail.com', '$2y$10$YvIEat1//yEBgE7vNaRCYuBv8L7kCCipsdwfh17Ypsx1sGGRbl5Hi', 'MDLZySOU8rj4ZqtOBOJmz7XpdMBfUixSh7EDt2MU5YUoHtroi5dsEAqpvrU0', '$2y$10$pe3jxVz0OEktn0NjAS5UyOW9gGsf9Q4bJ2Ee91Iy5XyXU7k8yGKTy', '0123109123', 'jln suka jadi', '', '2019-01-03 13:57:22', '2019-01-03 13:57:22', 0),
(3, '1631060', '', 'nama saya', 'saya@gmail.com', '$2y$10$oTWEUAmTFWpVRLB780Sgle77pUL9kS/Kb4V15F8PRzdBz0WDGrCwS', NULL, '$2y$10$EfZ9DBMQ/gWN4yhpXkKjD.zrS0CygGLexFo/ewqhELN2lyyqHn4xm', '0123109123', 'jln suka jadi', '', '2019-01-03 14:03:23', '2019-01-03 14:03:23', 0),
(4, '1631061', '', 'nama', 'nama@gmail.com', '$2y$10$h9DonU9ohSd/Gj1sv7VyIO9.sNkLbO2aoAtw0bzfDC3Byi0H3wSxK', NULL, '$2y$10$g6LsJd5fpJ4cP4TXiuVPQOWce/ep8qab0rYFZV4HRfwwwQ4NQKgHW', '0123109123', 'jln suka jadi', '', '2019-01-03 14:27:35', '2019-01-03 14:27:35', 0),
(5, '1631062', '', 'nana', 'nana@gmail.com', '$2y$10$qWr5cOk/pOoBOHZ8vmDZvO0uumPe0kysePuNGM8hvAAFYS/54wTrK', NULL, '$2y$10$WP6aLr6fWnECzT9ps749qOer4obrl3noHPbnnp5QDTjSYMOi0jbCO', '0123109123', 'jln suka jadi', '', '2019-01-03 14:28:47', '2019-01-03 14:28:47', 0),
(6, NULL, NULL, 'admin', 'admin@gmail.com', '$2y$10$QbhANe.mOOoyRwInv9jXmOz7wlrpFZSYa9nw/h13r54aEH1LPq5um', 'OJObod2jORKygyGHizRWLpBuaEz8AdJ7Q4VmSgd9CagdpQgORjVUrDHSL510', '$2y$10$iWBLG0R3.mqvk0Jsapv4pubOYpIE5L.TJ72blnNgqACcXUb7wL/pi', '082309102310', 'jln admin suka jadi', NULL, '2019-01-04 12:59:07', '2019-01-04 12:59:07', 1),
(7, NULL, NULL, 'admin123', 'admin123@gmail.com', '$2y$10$Kbisc2FEFsE9sZpdgqIBGeUxU1XB/x2E1T5dEwCwrHmpxaPVGfTFS', NULL, '$2y$10$.bS/dPwM19CbeijMioeo0uHi9PeG9PNjF1E.ieiD59fIy348tKaba', '083200123', 'jln admin suka jadi', NULL, '2019-01-04 13:02:13', '2019-01-04 13:02:13', 0),
(8, NULL, NULL, 'admin321', 'admin321@gmail.com', '$2y$10$uGNLb4iOcyy3S8hx2CtA/exhfvcRTalOGUTKjnNZlmUMhcgBh2rAq', NULL, '$2y$10$HGp.v6HVvdgFMgeegCWGe.BeoKw8RMEvM1mvDz6qw02oDF4wAXy6O', '083200124', 'jln admin suka jadi', NULL, '2019-01-04 13:03:22', '2019-01-04 13:03:22', 0),
(9, NULL, NULL, 'admin321', 'admin12391@gmail.com', '$2y$10$g8QacFh0E4pDUFhX6Bkx..udKvdSZJUU0rUT1ai/CvBUgQma7weTm', NULL, '$2y$10$gJ/sYyWUywttNh6ZWKJbNektCuEhTZcth0riiExELDDP7lAUDwXxG', '083200125', 'jln admin suka jadi', NULL, '2019-01-04 13:04:26', '2019-01-04 13:04:26', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`ID_Buku`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`ID_Mahasiswa`);

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
-- Indexes for table `pekerja`
--
ALTER TABLE `pekerja`
  ADD PRIMARY KEY (`ID_Pekerja`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`ID_Peminjaman`),
  ADD KEY `peminjaman_id_buku_foreign` (`ID_Buku`),
  ADD KEY `peminjaman_id_pekerja_foreign` (`ID_Pekerja`),
  ADD KEY `peminjaman_id_mahasiswa_foreign` (`ID_Mahasiswa`);

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
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `ID_Buku` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `ID_Mahasiswa` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pekerja`
--
ALTER TABLE `pekerja`
  MODIFY `ID_Pekerja` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `ID_Peminjaman` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_id_buku_foreign` FOREIGN KEY (`ID_Buku`) REFERENCES `buku` (`ID_Buku`),
  ADD CONSTRAINT `peminjaman_id_mahasiswa_foreign` FOREIGN KEY (`ID_Mahasiswa`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
