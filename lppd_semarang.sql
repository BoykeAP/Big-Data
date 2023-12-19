-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2023 at 05:28 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lppd_semarang`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `_id` int(11) NOT NULL,
  `indikator_kinerja` varchar(255) DEFAULT NULL,
  `capaian_tahun_2018` varchar(255) DEFAULT NULL,
  `capaian_tahun_2019` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`_id`, `indikator_kinerja`, `capaian_tahun_2018`, `capaian_tahun_2019`) VALUES
(1, 'Angka Harapan Hidup', '75,57', '75,00'),
(2, 'Persentase Pelayanan Jaminan Kesehatan Bagi Masyarakat', '35,15', '34,56'),
(3, 'Persentase pemenuhan pelayanan kesehatan masyarakat pertahun', '32,99', '37,04'),
(4, 'Persentase pemenuhan pelayanan kesehatan masyarakat pertahun', '26,64', '24,92'),
(5, 'Presentase rumah tangga yang ber PHBS strata sehat utama', '73,38', '80,56'),
(6, 'Prevalensi Gizi kurang pada balita', '2,96', '3,12'),
(7, 'persentase kesejahteraan dan ketahanan keluarga', '78,51', '78,77'),
(8, 'Indeks Jumlah Anak per Kepala Keluarga', '0,95', '0,89'),
(9, 'Prosentase Pemenuhan Sarana dan Prasarana kesehatan', '40,58', '44,93'),
(10, 'Angka Partisipasi Sekolah Usia 13-15 tahun', '97,20', '97,35'),
(11, 'Angka Partisipasi Sekolah Usia 7-12 tahun', '100,00', '99,81'),
(12, 'Prosentase Tingkat kelulusan SD/MI', '100,00', '100,00'),
(13, 'Angka Partisipasi Kasar SD', '106,79', '107,58'),
(14, 'Angka Partisipasi Kasar SMP', '100,06', '75,47'),
(15, 'Prosentase Ruang kelas yang sesuai standar Nasional Pendidikan', '93,87', '0,00'),
(16, 'Persentase Guru berpendidikan S1/DIV PAUD TK/RA', '75,67', '77,59'),
(17, 'Lulusan SMK bersertifikat keahlian', '8,24', '0,00'),
(18, 'Jumlah Calon Tenaga Kerja yang Terampil', '4,28', '1,31'),
(19, 'Tingkat Pengangguran Terbuka', '1,34', '1,61'),
(20, 'Prosentase fasilitasi Lembaga pendidikan keagamaan yang mendapatkan bantuan', '0,00', '0,00'),
(21, 'Prosentase komite SD aktif', '100,00', '100,00'),
(22, 'Prosentase komite SMP aktif', '100,00', '100,00'),
(23, 'Persentase Peningkatan pelaku usaha Mikro', '4,52', '2,84'),
(24, 'Persentase pertumbuhan nilai produksi industri kecil dan menengah', '5,78', '2,00'),
(25, 'indeks Nilai Tukar Petani', '103,11', '102,15'),
(26, 'Indeks Produktifitas hasil pertanian', '5,82', '6,02'),
(27, 'Prosentase Ketersediaan pangan', '255,35', '253,23'),
(28, 'Persentase pembinaan kelompok industri', '1,13', '1,13'),
(29, 'Persentase peningkatan pendapatan daerah dari sektor pariwisata', '50,04', '13,78'),
(30, 'Persentase peningkatan Koperasi yang berkualitas', '51,43', '48,00'),
(31, 'Rata Rata Tingkat Kepuasan Masyarakat Terhadap Pelayanan perangkat Daerah', '0,00', '89,00'),
(32, 'Skor evaluasi SAKIP', '0,00', '58,00'),
(33, 'Opini BPK', 'WTP', 'WTP'),
(34, 'Persentase tertib Administrasi kependudukan', '99,02', '99,8'),
(35, 'Penerapan pengelolaan arsip secara baku', '195,65', '100,00'),
(36, 'Persentase Peningkatan fasilitasi legalisasi kebijakan daerah', '7,14', '6,8'),
(37, 'Persentase Kesesuaian penempatan PNS dalam jabatan', '98,55', '99,03'),
(38, 'Realisasi Indikator Kinerja yang tercapai sesuai target', '0,00', '99,19'),
(39, 'Persentase Kesesuaian RKPD dengan RPJMD', '68,77', '100,00'),
(40, 'Persentase aset yang terkelola dengan baik', '0,00', '0,00'),
(41, 'Prosentase Peningkatan Nilai investasi Daerah', '-14,32', '10,89'),
(42, 'Persentase kepatuhan Rumah dan Bangunan yang sesuai RDTR', '0,00', '0,00'),
(43, 'Indeks Kepuasan Masyarakat pada SKPD Perijinan', '0,00', '0,00'),
(44, 'Prosentase Penurunan Pelanggaran PERDA', '-71,06', '-32,47'),
(45, 'Penurunan pelanggaran terhadap ketertiban umum', '-56,47', '34,46'),
(46, 'Persentase penurunan kejadian konflik sosial masyarakat', '-10,53', '-70,59'),
(47, 'Persentase Peningkatan nilai penanaman modal daerah', '81,57', '82,87'),
(48, 'Presentase BUMD yang memiliki kinerja keuangan kategori Baik', '0,00', '100,00'),
(49, 'Persentase Kondisi infrastruktur dalam kondisi baik', '85,4', '89,7'),
(50, 'Indeks pembangunan Desa', '96,8', '98,7'),
(51, 'Tingkat Keselamatan lalu Lintas', '4,01', '2,93'),
(52, 'Rasio keterjangkauan alat transportasi umum', '53,91', '58,85'),
(53, 'Persentase Saluran Pengairan dalam kondisi baik', '62,32', '31,20'),
(54, 'Ketersediaan Ruang Terbuka Hijau (ha)', '541,90', '543,50'),
(55, 'Pemenuhan ketersedian sarana air bersih', '44,7', '46,1'),
(56, 'Persentase permukiman yang layak huni', '97,4', '98,1'),
(57, 'rata rata Sampah yang terolah dengan baik perhari (m�)', '24,34', '29,40'),
(58, 'Prosentase peningkatan omset perdagangan pasar', '-35,03', '10,00'),
(59, 'Indeks Pemberdayaan Gender', '47,69', '43,54'),
(60, 'Persentase Partisipasi masyarakat terhadap usulan pembangunan dalam musrenbang tingkat Kecamatan', '85,33', '62,00'),
(61, 'Persentase Partisipasi masyarakat terhadap usulan pembangunan dalam musrenbang tingkat Kecamatan', '80,00', '44,00'),
(62, 'Persentase Partisipasi masyarakat terhadap usulan pembangunan dalam musrenbang tingkat Kecamatan', '22,50', '13,33'),
(63, 'Persentase Partisipasi masyarakat terhadap usulan pembangunan dalam musrenbang tingkat Kecamatan', '2,00', '0,55'),
(64, 'Persentase Partisipasi masyarakat terhadap usulan pembangunan dalam musrenbang tingkat Kecamatan', '40,00', '24,67'),
(65, 'Persentase Partisipasi masyarakat terhadap usulan pembangunan dalam musrenbang tingkat Kecamatan', '0,00', '56,67'),
(66, 'Persentase Partisipasi masyarakat terhadap usulan pembangunan dalam musrenbang tingkat Kecamatan', '88,89', '66,91'),
(67, 'Persentase Partisipasi masyarakat terhadap usulan pembangunan dalam musrenbang tingkat Kecamatan', '75,69', '142,67'),
(68, 'Persentase Partisipasi masyarakat terhadap usulan pembangunan dalam musrenbang tingkat Kecamatan', '130,77', '90,37'),
(69, 'Persentase Partisipasi masyarakat terhadap usulan pembangunan dalam musrenbang tingkat Kecamatan', '23,27', '103,46'),
(70, 'Persentase Partisipasi masyarakat terhadap usulan pembangunan dalam musrenbang tingkat Kecamatan', '126,15', '204,53'),
(71, 'Persentase Partisipasi masyarakat terhadap usulan pembangunan dalam musrenbang tingkat Kecamatan', '47,20', '10,77'),
(72, 'Persentase Partisipasi masyarakat terhadap usulan pembangunan dalam musrenbang tingkat Kecamatan', '42,50', '111,88'),
(73, 'Persentase Partisipasi masyarakat terhadap usulan pembangunan dalam musrenbang tingkat Kecamatan', '205,84', '72,33'),
(74, 'Persentase Partisipasi masyarakat terhadap usulan pembangunan dalam musrenbang tingkat Kecamatan', '94,74', '90,00'),
(75, 'Persentase Partisipasi masyarakat terhadap usulan pembangunan dalam musrenbang tingkat Kecamatan', '86,00', '80,10'),
(76, 'Persentase Partisipasi masyarakat terhadap usulan pembangunan dalam musrenbang tingkat Kecamatan', '133,33', '33,33'),
(77, 'Persentase Partisipasi masyarakat terhadap usulan pembangunan dalam musrenbang tingkat Kecamatan', '135,83', '150,22'),
(78, 'Persentase penurunan penyandang masalah kesejahteraan sosial', '-3,10', '-2,59'),
(79, 'Prosentase pemenuhan fasilitas umum untuk anak', '15,32', '100,00'),
(80, 'Indeks Kualitas Lingkungan Hidup', '66,98', '68,86'),
(81, 'Peningkatan Indeks Kualitas Lingkungan Hidup pertahun', '4,20', '2,80'),
(82, 'Persentase ketersediaan desa tangguh bencana', '23,08', '8,96'),
(83, 'Persentase tingkat kesesuaian Lahan Investasi terhadap Dokumen RTRW', '0,00', '0,00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
