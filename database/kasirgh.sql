-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2024 at 06:57 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasirgh`
--

-- --------------------------------------------------------

--
-- Table structure for table `detailpenjualan`
--

CREATE TABLE `detailpenjualan` (
  `id_detail` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah_produk` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detailpenjualan`
--

INSERT INTO `detailpenjualan` (`id_detail`, `id_penjualan`, `id_produk`, `jumlah_produk`, `subtotal`) VALUES
(4, 1, 1, 2, '20000.00'),
(5, 2, 5, 1, '20000.00'),
(6, 3, 1, 1, '20000.00'),
(7, 4, 1, 1, '20000.00'),
(7, 5, 6, 1, '30000.00'),
(8, 6, 5, 1, '20000.00'),
(8, 7, 1, 1, '20000.00'),
(9, 8, 1, 1, '20000.00'),
(9, 9, 3, 1, '15000.00'),
(10, 10, 3, 2, '15000.00'),
(11, 11, 3, 1, '15000.00'),
(11, 12, 5, 1, '20000.00'),
(12, 13, 3, 1, '15000.00'),
(12, 14, 6, 1, '30000.00');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `nomeja` int(11) NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `nomeja`, `nomor_telepon`) VALUES
(3, 'jojo', 2, ''),
(4, 'jojo', 2, ''),
(5, 'ghina', 12, ''),
(6, 'jiji', 11, ''),
(7, 'jiji', 11, ''),
(8, 'jojo', 1, ''),
(9, 'burito', 12, ''),
(10, 'ghina', 17, ''),
(11, 'saya', 12, ''),
(12, 'lolo', 98, '');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `tanggal_penjualan` date NOT NULL,
  `total_harga` decimal(10,2) NOT NULL,
  `id_pelanggan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `tanggal_penjualan`, `total_harga`, `id_pelanggan`) VALUES
(1, '2024-02-27', '0.00', 0),
(2, '2024-02-27', '0.00', 0),
(3, '2024-02-27', '0.00', 0),
(4, '2024-02-27', '0.00', 0),
(5, '2024-02-27', '0.00', 0),
(6, '2024-02-27', '0.00', 0),
(7, '2024-02-27', '0.00', 0),
(8, '2024-02-28', '0.00', 0),
(9, '2024-02-28', '0.00', 0),
(10, '2024-02-28', '0.00', 0),
(11, '2024-02-28', '0.00', 0),
(12, '2024-02-28', '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `stok` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `terjual` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga`, `stok`, `foto`, `terjual`) VALUES
(3, 'ocha', '15000.00', 9, 'okonomiyaki.jpg.jpg', '7'),
(5, 'tempura', '20000.00', 9, 'tempura.jpg.jpg', '3'),
(6, 'okonamiyaki', '30000.00', 9, 'okonomiyaki.jpg.jpg', '2'),
(1011, 'sushi', '20000.00', 10, '28022024025103.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('Admin','Petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(1, 'ghina', '9d47fc63e8b8e1d3f5bcfe9c836e76fa', 'Petugas'),
(2, 'jojo', '0f8e1a3a4f8b9caffb25569503e05fe5', 'Admin'),
(114, 'berto', '83187f5ccfbe84d4ec1926efae38000b', 'Admin'),
(594, 'joki', '02e3d256f60b0f9127d2ccc76e742a5d', 'Petugas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_detail` (`id_detail`,`id_penjualan`,`id_produk`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
