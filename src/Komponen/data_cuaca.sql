-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23 Agu 2017 pada 14.03
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_cuaca`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_cuaca`
--

CREATE TABLE `t_cuaca` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `nama_kota` varchar(50) NOT NULL,
  `suhu` double NOT NULL,
  `suhu_maks` double NOT NULL,
  `suhu_min` double NOT NULL,
  `kecepatan_angin` double NOT NULL,
  `kelembapan` double NOT NULL,
  `tekanan_udara` double NOT NULL,
  `kondisi_cuaca` varchar(50) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_cuaca`
--

INSERT INTO `t_cuaca` (`id`, `tanggal`, `nama_kota`, `suhu`, `suhu_maks`, `suhu_min`, `kecepatan_angin`, `kelembapan`, `tekanan_udara`, `kondisi_cuaca`, `gambar`) VALUES
(19, '2017-08-25', 'jakarta', 34, 43, 34, 43, 34, 43, 'hujan', 'hujan.jpg'),
(21, '2017-08-31', 'kupang', 55, 55, 55, 55, 55, 55, 'panas', 'cerah.jpg'),
(23, '2017-08-30', 'medan', 33, 33, 33, 33, 33, 33, 'hujan', 'hujan.jpg'),
(24, '2017-08-28', 'bandung', 22, 22, 22, 22, 22, 22, 'mendung', 'mendung.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_login`
--

CREATE TABLE `t_login` (
  `id` int(11) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_login`
--

INSERT INTO `t_login` (`id`, `Nama`, `Password`, `Value`) VALUES
(1, 'user', 'user', 'user'),
(2, 'admin', 'admin', 'admin'),
(3, 'andrew', 'andrew', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_cuaca`
--
ALTER TABLE `t_cuaca`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `tanggal` (`tanggal`,`nama_kota`),
  ADD KEY `tanggal_2` (`tanggal`,`nama_kota`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_cuaca`
--
ALTER TABLE `t_cuaca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
