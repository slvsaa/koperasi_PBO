-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2019 at 02:48 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koperasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `ID_Anggota` varchar(5) NOT NULL,
  `Nama_Anggota` varchar(50) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Telp/HP` varchar(20) NOT NULL,
  `Pekerjaan` varchar(50) NOT NULL,
  `Tanggal_Masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`ID_Anggota`, `Nama_Anggota`, `Alamat`, `Telp/HP`, `Pekerjaan`, `Tanggal_Masuk`) VALUES
('001', 'Raditya Dika', 'Jakarta', '081222222222', 'Komedian', '2019-09-01'),
('002', 'Abimana Aryasatya', 'Jakarta', '082577777777', 'Aktor', '2019-09-04'),
('003', 'Gita Gutawa', 'Jakarta', '082534343434', 'Penyanyi', '2019-09-07'),
('004', 'Rafi Ahmad', 'Jakarta', '081317171717', 'Pembawa Acara', '2019-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `angsuran`
--

CREATE TABLE `angsuran` (
  `ID_Anggota` varchar(5) NOT NULL,
  `No_Pinjam` varchar(20) NOT NULL,
  `Bayar_Pokok` double NOT NULL,
  `Bayar_Bunga` double NOT NULL,
  `Sisa_Angsuran` double NOT NULL,
  `Tanggal_Angsur` date NOT NULL,
  `No_Angsur` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `angsuran`
--

INSERT INTO `angsuran` (`ID_Anggota`, `No_Pinjam`, `Bayar_Pokok`, `Bayar_Bunga`, `Sisa_Angsuran`, `Tanggal_Angsur`, `No_Angsur`) VALUES
('003', 'PJM003-191101', 1000000, 50000, 9000000, '2019-11-27', 'ANS003-191127');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'user1');

-- --------------------------------------------------------

--
-- Table structure for table `pinjaman`
--

CREATE TABLE `pinjaman` (
  `ID_Anggota` varchar(5) NOT NULL,
  `Jangka_Waktu` int(10) NOT NULL,
  `Jumlah_Pinjaman` double NOT NULL,
  `Angsuran_Pokok` double NOT NULL,
  `Bunga_Pokok` double NOT NULL,
  `Angsuran_per_bulan` double NOT NULL,
  `Tanggal_Pinjam` date NOT NULL,
  `No_Pinjam` varchar(20) NOT NULL,
  `Sisa_Angsur` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjaman`
--

INSERT INTO `pinjaman` (`ID_Anggota`, `Jangka_Waktu`, `Jumlah_Pinjaman`, `Angsuran_Pokok`, `Bunga_Pokok`, `Angsuran_per_bulan`, `Tanggal_Pinjam`, `No_Pinjam`, `Sisa_Angsur`) VALUES
('003', 10, 10000000, 1000000, 50000, 1050000, '2019-11-01', 'PJM003-191101', 9000000),
('002', 1000000, 10, 100000, 5000, 105000, '2019-11-27', 'PJM002-191127', 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `simpanan`
--

CREATE TABLE `simpanan` (
  `ID_Anggota` varchar(5) NOT NULL,
  `Jenis_Simpanan` varchar(50) NOT NULL,
  `Nominal` double NOT NULL,
  `Tanggal_Simpan` date NOT NULL,
  `No_Simpanan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `simpanan`
--

INSERT INTO `simpanan` (`ID_Anggota`, `Jenis_Simpanan`, `Nominal`, `Tanggal_Simpan`, `No_Simpanan`) VALUES
('001', 'Pokok', 100000, '2019-09-01', 'P001-190901'),
('002', 'Pokok', 100000, '2019-09-04', 'P001-190904'),
('003', 'Pokok', 100000, '2019-09-07', 'P003-190907'),
('001', 'Wajib', 50000, '2019-09-01', 'W001-190901'),
('002', 'Wajib', 50000, '2019-09-04', 'W002-190904'),
('003', 'Wajib', 50000, '2019-09-07', 'W002-190907'),
('001', 'Sukarela', 500000, '2019-10-27', 'S001-191027'),
('001', 'Wajib', 50000, '2019-10-27', 'W001-191027'),
('002', 'Wajib', 50000, '2019-10-28', 'W002-191028'),
('003', 'Wajib', 50000, '2019-11-28', 'W003-191128'),
('004', 'Pokok', 100000, '2019-11-27', 'P004-191127'),
('004', 'Wajib', 50000, '2019-11-27', 'W004-191127');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`ID_Anggota`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
