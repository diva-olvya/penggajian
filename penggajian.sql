-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2022 at 08:45 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penggajian`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_jabatan`
--

CREATE TABLE `data_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(120) NOT NULL,
  `gaji_pokok` varchar(50) NOT NULL,
  `tj_transport` varchar(50) NOT NULL,
  `uang_makan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_jabatan`
--

INSERT INTO `data_jabatan` (`id_jabatan`, `nama_jabatan`, `gaji_pokok`, `tj_transport`, `uang_makan`) VALUES
(1, 'Staff Administrasi Marketing', '4000000', '800000', '500000'),
(2, 'Staff Finance', '5000000', '800000', '500000'),
(3, 'Staff Administrasi Keuangan', '4000000', '800000', '500000'),
(6, 'Staff Administrasi Gudang', '3000000', '800000', '500000'),
(14, 'Staff  Pelayanan', '3000000', '800000', '500000'),
(23, 'ob', '1500000', '500000', '500000'),
(24, 'Admin', '4700000', '850000', '500000');

-- --------------------------------------------------------

--
-- Table structure for table `data_kehadiran`
--

CREATE TABLE `data_kehadiran` (
  `id_kehadiran` int(11) NOT NULL,
  `bulan` varchar(15) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama_pegawai` varchar(225) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL,
  `hadir` int(11) NOT NULL,
  `sakit` int(11) NOT NULL,
  `alpha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_kehadiran`
--

INSERT INTO `data_kehadiran` (`id_kehadiran`, `bulan`, `nik`, `nama_pegawai`, `jenis_kelamin`, `nama_jabatan`, `hadir`, `sakit`, `alpha`) VALUES
(15, '042022', '1234567890', 'Doni Setiawan', 'Laki-laki', 'Staff  Pelayanan', 28, 0, 2),
(16, '042022', '112411114', 'Dwi Putra', 'Laki-laki', 'Staff Finance', 29, 0, 1),
(17, '042022', '117890234', 'Rere Sandrina', 'Perempuan', 'Staff Administrasi Marketing', 26, 3, 1),
(18, '042022', '098765', 'Restya Ayu', 'Perempuan', 'Staff Administrasi Keuangan', 27, 2, 1),
(19, '042022', '1167829', 'Rikal Bahri', 'Laki-Laki', 'Staff Finance', 28, 2, 0),
(20, '052022', '1234567890', 'Doni Setiawan', 'Laki-laki', 'Staff  Pelayanan', 27, 3, 0),
(21, '052022', '112411114', 'Dwi Putra', 'Laki-laki', 'Staff Finance', 29, 1, 0),
(22, '052022', '117890234', 'Rere Sandrina', 'Perempuan', 'Staff Administrasi Marketing', 28, 1, 1),
(23, '052022', '098765', 'Restya Ayu', 'Perempuan', 'Staff Administrasi Keuangan', 29, 0, 1),
(24, '052022', '1167829', 'Rikal Bahri', 'Laki-Laki', 'Staff Finance', 38, 2, 0),
(25, '052022', '099898686', 'Tuti', 'Perempuan', 'Admin', 20, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama_pegawai` varchar(225) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pegawai`
--

INSERT INTO `data_pegawai` (`id_pegawai`, `nik`, `nama_pegawai`, `username`, `password`, `jenis_kelamin`, `jabatan`, `tanggal_masuk`, `status`, `photo`, `hak_akses`) VALUES
(1, '1234567890', 'Doni Setiawan', 'doni', '202cb962ac59075b964b07152d234b70', 'Laki-laki', 'Staff  Pelayanan', '2022-03-15', 'Pegawai tetap', 'doni2.jpg', 2),
(2, '112411114', 'Dwi Putra', 'dwi', '202cb962ac59075b964b07152d234b70', 'Laki-laki', 'Staff Finance', '2021-12-01', 'Pegawai Tetap', 'drsn.png', 2),
(3, '1167829', 'Rikal Bahri', 'rikal', '202cb962ac59075b964b07152d234b70', 'Laki-Laki', 'Staff Finance', '2022-04-08', 'Pegawai Tetap', 'images (1).jpg', 2),
(5, '117890234', 'Rere Sandrina', 'rere', '202cb962ac59075b964b07152d234b70', 'Perempuan', 'Staff Administrasi Marketing', '2022-04-08', 'Pegawai Tidak Tetap', 'img2.jpg', 2),
(7, '098765', 'Restya Ayu', 'restya', '202cb962ac59075b964b07152d234b70', 'Perempuan', 'Staff Administrasi Keuangan', '2022-04-13', 'Pegawai Tetap', 'images7.jpg', 2),
(11, '099898686', 'Tuti', 'tuti', '827ccb0eea8a706c4c34a16891f84e7b', 'Perempuan', 'Admin', '2022-05-09', 'Pegawai Tetap', 'img2.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hak_akses`
--

CREATE TABLE `hak_akses` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hak_akses`
--

INSERT INTO `hak_akses` (`id`, `keterangan`, `hak_akses`) VALUES
(1, 'admin', 1),
(2, 'pegawai', 2);

-- --------------------------------------------------------

--
-- Table structure for table `potongan_gaji`
--

CREATE TABLE `potongan_gaji` (
  `id` int(11) NOT NULL,
  `potongan` varchar(128) NOT NULL,
  `jml_potongan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `potongan_gaji`
--

INSERT INTO `potongan_gaji` (`id`, `potongan`, `jml_potongan`) VALUES
(1, 'alpha', 100000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_jabatan`
--
ALTER TABLE `data_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  ADD PRIMARY KEY (`id_kehadiran`);

--
-- Indexes for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_jabatan`
--
ALTER TABLE `data_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  MODIFY `id_kehadiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `hak_akses`
--
ALTER TABLE `hak_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
