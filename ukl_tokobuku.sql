-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2018 at 09:54 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukl_tokobuku`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `tahun` int(4) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `foto_cover` varchar(100) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `penulis` varchar(50) NOT NULL,
  `stok` int(100) NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul_buku`, `tahun`, `harga`, `foto_cover`, `penerbit`, `penulis`, `stok`, `id_kategori`) VALUES
(3, 'Spiderman', 1990, '250000', 'movie_(6).jpg', 'santo', 'tarji', 38, 9),
(4, 'Mummy', 2001, '10000', 'movie_(7).jpg', 'ryan', 'ryanjuga', 50, 6),
(6, 'Terpana', 2010, '65000', 'movie_(3).jpg', 'salsabinay', 'salsabila yasmin', 49, 7),
(7, 'The Snare', 1990, '12000', 'movie_(5).jpg', 'ivan', 'ivanjuga', 3, 6),
(8, 'Gangster', 2017, '30000', 'movie_(10).jpg', 'keysal', 'keysaljuga', 19, 11),
(10, 'Single', 2345, '34500', 'movie_(14).jpg', 'aisyah', 'aisyah aqilah', 20, 12);

-- --------------------------------------------------------

--
-- Table structure for table `kasir`
--

CREATE TABLE `kasir` (
  `id_kasir` int(11) NOT NULL,
  `nama_kasir` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kasir`
--

INSERT INTO `kasir` (`id_kasir`, `nama_kasir`, `password`, `level`) VALUES
(1, 'admin', '123', 1),
(3, 'Ryan', '123', 2),
(5, 'Salsabila', '123', 2),
(6, 'admin toko', '123', 1),
(8, 'Yasmin', '123', 1),
(9, 'noo', '123', 2);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_buku`
--

INSERT INTO `kategori_buku` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Fiksi'),
(3, 'Dongeng'),
(4, 'Fairytail'),
(5, 'Cerita Rakyat'),
(6, 'Horor'),
(7, 'Romance'),
(9, 'Hiburan / Cerita Anak'),
(10, 'Petualangan'),
(11, 'Action'),
(12, 'Humoris');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `jumlah` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `id_buku`, `id_transaksi`, `jumlah`) VALUES
(2, 3, 7, 1),
(3, 3, 8, 1),
(7, 4, 12, 2),
(8, 7, 13, 5),
(9, 10, 14, 1),
(10, 6, 15, 3),
(11, 3, 15, 1),
(12, 4, 16, 1),
(13, 8, 16, 1),
(14, 6, 16, 1),
(15, 7, 17, 1),
(16, 3, 18, 1),
(17, 4, 19, 1),
(18, 3, 19, 1),
(19, 4, 20, 1),
(20, 6, 21, 1),
(21, 7, 22, 1),
(22, 10, 23, 10),
(23, 3, 23, 4),
(24, 4, 23, 7);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `nama_pembeli` varchar(100) NOT NULL,
  `total` int(11) NOT NULL,
  `tanggal_beli` date NOT NULL,
  `id_kasir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `nama_pembeli`, `total`, `tanggal_beli`, `id_kasir`) VALUES
(1, 'eno', 1230000, '2018-05-08', 0),
(2, 'sals', 1230000, '2018-05-08', 0),
(3, 'sals', 1230000, '2018-05-08', 0),
(4, 'ww', 250000, '2018-05-08', 0),
(5, 'irfan', 250000, '2018-05-08', 0),
(6, 'bis', 250000, '2018-05-08', 0),
(7, 'bis', 250000, '2018-05-08', 0),
(8, 'sals', 250000, '2018-05-08', 0),
(9, 'salsa', 2460000, '2018-05-08', 5),
(10, 'ehe', 1230000, '2018-05-08', 5),
(11, 'ehe', 1230000, '2018-05-08', 5),
(12, 'salsaunyu', 20000, '2018-05-09', 5),
(13, 'inayah', 60000, '2018-05-09', 5),
(14, 'keysal', 34500, '2018-05-09', 5),
(15, 'aida', 445000, '2018-05-09', 5),
(16, 'Ahmad Fahryan', 105000, '2018-05-09', 5),
(17, 'AAA', 12000, '2018-05-09', 1),
(18, 'iy', 250000, '2018-05-09', 1),
(19, 'w', 260000, '2018-05-09', 1),
(20, 't', 10000, '2018-05-09', 1),
(21, 'SA', 65000, '2018-05-09', 1),
(22, 'bisma', 12000, '2018-05-09', 5),
(23, 'saya', 1415000, '2018-05-09', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indexes for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `id_transaksi` (`id_transaksi`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_kasir` (`id_kasir`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `kasir`
--
ALTER TABLE `kasir`
  MODIFY `id_kasir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_buku` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_ibfk_2` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
