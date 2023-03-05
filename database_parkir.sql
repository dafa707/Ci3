-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2023 at 06:52 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_parkir`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_admin`
--

CREATE TABLE `tabel_admin` (
  `id_admin` int(15) NOT NULL,
  `name` varchar(80) NOT NULL,
  `username` varchar(80) NOT NULL,
  `password` varchar(254) NOT NULL,
  `jabatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_admin`
--

INSERT INTO `tabel_admin` (`id_admin`, `name`, `username`, `password`, `jabatan`) VALUES
(12, 'muhammadyanto', 'yanto', '123', 'OB'),
(123, 'dafaraynarabima', 'dafa', '1234', 'HRD');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_parkir`
--

CREATE TABLE `tabel_parkir` (
  `id_parkir` int(20) NOT NULL,
  `jenis_kendaraan` varchar(15) NOT NULL,
  `plat_nomer` varchar(12) NOT NULL,
  `jam_masuk` datetime NOT NULL,
  `jam_keluar` datetime DEFAULT NULL,
  `harga` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_parkir`
--

INSERT INTO `tabel_parkir` (`id_parkir`, `jenis_kendaraan`, `plat_nomer`, `jam_masuk`, `jam_keluar`, `harga`) VALUES
(2, 'mobil', 'B 6548 UYT', '2023-02-16 03:00:00', '2023-02-21 08:34:29', 250000),
(3, 'Motor', 'E 9988 II', '2023-02-20 16:00:21', '2023-02-21 08:26:19', 32000),
(4, 'Motor', 'E 00 EO', '2023-02-20 16:00:56', '2023-02-21 08:34:35', 32000),
(5, 'motor', 'B HJI 0990', '2023-02-21 08:26:58', '2023-03-01 08:11:55', 382000),
(6, 'motor', 'B 8769 UIO', '2023-02-21 08:34:57', '2023-03-01 08:11:46', 382000),
(7, 'Motor', 'E 9988 II', '2023-03-01 08:45:56', NULL, 0),
(8, 'Motor', 'B HJI 0990', '2023-03-04 11:32:40', NULL, 0),
(9, 'Motor', 'B 8769 UIO', '2023-03-04 11:35:34', '2023-03-04 13:04:35', 2000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_admin`
--
ALTER TABLE `tabel_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tabel_parkir`
--
ALTER TABLE `tabel_parkir`
  ADD PRIMARY KEY (`id_parkir`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_admin`
--
ALTER TABLE `tabel_admin`
  MODIFY `id_admin` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `tabel_parkir`
--
ALTER TABLE `tabel_parkir`
  MODIFY `id_parkir` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
