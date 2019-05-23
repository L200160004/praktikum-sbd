-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2019 at 01:18 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `perbankan1`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabang_bank`
--

CREATE TABLE IF NOT EXISTS `cabang_bank` (
  `kode_cabang` varchar(20) NOT NULL,
  `nama_cabang` varchar(45) NOT NULL,
  `alamat_cabang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nasabah`
--

CREATE TABLE IF NOT EXISTS `nasabah` (
  `id_nasabah` int(11) NOT NULL,
  `nama_nasabah` varchar(45) NOT NULL,
  `alamat_nasabah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nasabah_has_rekening`
--

CREATE TABLE IF NOT EXISTS `nasabah_has_rekening` (
  `id_nasabahFK` int(11) NOT NULL,
  `no_rekeningFK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE IF NOT EXISTS `rekening` (
  `no_rekening` int(11) NOT NULL,
  `kode_cabangFK` varchar(20) DEFAULT NULL,
  `pin` varchar(20) NOT NULL DEFAULT '1234',
  `saldo` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
`no_transaksi` bigint(20) unsigned NOT NULL,
  `id_nasabahFK` int(11) DEFAULT NULL,
  `no_rekeningFK` int(11) DEFAULT NULL,
  `jenis_transaksi` varchar(20) NOT NULL DEFAULT 'debit',
  `tanggal` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabang_bank`
--
ALTER TABLE `cabang_bank`
 ADD PRIMARY KEY (`kode_cabang`), ADD UNIQUE KEY `nama_cabang` (`nama_cabang`);

--
-- Indexes for table `nasabah`
--
ALTER TABLE `nasabah`
 ADD PRIMARY KEY (`id_nasabah`);

--
-- Indexes for table `nasabah_has_rekening`
--
ALTER TABLE `nasabah_has_rekening`
 ADD PRIMARY KEY (`id_nasabahFK`,`no_rekeningFK`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
 ADD PRIMARY KEY (`no_rekening`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
 ADD PRIMARY KEY (`no_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
MODIFY `no_transaksi` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
