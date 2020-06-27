-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 28. Juni 2019 jam 08:10
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `calon_penerima`
--

CREATE TABLE IF NOT EXISTS `calon_penerima` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nis` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jurusan` varchar(20) NOT NULL,
  `nilai_rata` float NOT NULL,
  `penghasilan_ortu` int(30) NOT NULL,
  `tanggungan_ortu` int(11) NOT NULL,
  `pekerjaan_ortu` varchar(20) NOT NULL,
  `alat_transportasi` varchar(20) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=200 ;

--
-- Dumping data untuk tabel `calon_penerima`
--

INSERT INTO `calon_penerima` (`id`, `nis`, `nama`, `jurusan`, `nilai_rata`, `penghasilan_ortu`, `tanggungan_ortu`, `pekerjaan_ortu`, `alat_transportasi`, `tahun`) VALUES
(100, '0032548735', 'A. Iwan Setiawan', 'TKJ', 78.8, 500000, 1, 'Petani', 'Jalan kaki', '2019'),
(101, '0034010116', 'A. Mansuruddin Faqih', 'TKJ', 76.33, 1000000, 3, 'Petani', 'Sepeda motor', '2019'),
(102, '0003306710', 'Aan', 'TKJ', 47.4, 1000000, 1, 'Petani', 'Sepeda motor', '2019'),
(103, '0025697409', 'Aan Hidayat', 'TKJ', 78.2, 2000000, 3, 'Petani', 'Angkutan umum', '2019'),
(104, '0027270512', 'Aan Triana', 'TKJ', 79.27, 500000, 2, 'Petani', 'Jalan kaki', '2019'),
(105, '0027325379', 'Aang Epiriyana', 'TKJ', 80.27, 1000000, 1, 'Petani', 'Jalan kaki', '2019'),
(106, '0009703216', 'Aang Kornaefi', 'TKJ', 81.33, 1000000, 4, 'Petani', 'Jalan kaki', '2019'),
(107, '0036869435', 'Aap Adita', 'TKJ', 79.2, 1000000, 2, 'Petani', 'Jalan kaki', '2019'),
(108, '0007815091', 'Aap Apandi', 'TKJ', 79.07, 2000000, 2, 'Wiraswasta', 'Sepeda motor', '2019'),
(109, '0023431499', 'Aas Asiah', 'TKJ', 77.07, 2000000, 1, 'Wiraswasta', 'Jalan kaki', '2019'),
(110, '0004421347', 'Aas Komalasari', 'TKJ', 79.53, 1000000, 1, 'Wiraswasta', 'Sepeda motor', '2019'),
(111, '0013110042', 'Aat Atmayudin', 'TKJ', 78.13, 1000000, 2, 'Wiraswasta', 'Angkutan umum', '2019'),
(112, '0003621564', 'Aat Supriatna', 'TKJ', 46.53, 2000000, 2, 'Wiraswasta', 'Angkutan umum', '2019'),
(113, '0003205296', 'Abdul Manan', 'TKJ', 80.4, 2000000, 3, 'Wiraswasta', 'Angkutan umum', '2019'),
(114, '0011541157', 'Abdul Rohman', 'TKJ', 79.67, 2000000, 2, 'Petani', 'Sepeda motor', '2019'),
(115, '0003691536', 'Abidin Kholik', 'TKJ', 77.8, 2000000, 3, 'Lainnya', 'Angkutan umum', '2019'),
(116, '0005607727', 'Achmad Puadnudin', 'TKJ', 74, 1000000, 4, 'Petani', 'Sepeda motor', '2019'),
(117, '0029086309', 'Acih Mintarsih', 'TKJ', 79.47, 2000000, 2, 'Petani', 'Sepeda motor', '2019'),
(118, '0020263889', 'Aden Hermawan', 'TKJ', 81.87, 1000000, 2, 'Petani', 'Angkutan umum', '2019'),
(119, '9991530291', 'Adi Herdiansyah', 'TKJ', 79.4, 2000000, 2, 'Petani', 'Sepeda motor', '2019'),
(120, '0016765562', 'Adi Rahmat Fauzi', 'TKJ', 57.07, 5000000, 1, 'Wiraswasta', 'Sepeda motor', '2019'),
(121, '0032127042', 'Adih Gunawan', 'TKJ', 72.93, 1000000, 1, 'Petani', 'Sepeda motor', '2019'),
(122, '0011585952', 'Adimi', 'TKJ', 82.87, 2000000, 1, 'Petani', 'Sepeda motor', '2019'),
(123, '0164184807', 'Adin', 'TKJ', 77.87, 2000000, 2, 'Petani', 'Sepeda motor', '2019'),
(124, '0011541207', 'Aditia', 'TKJ', 81, 500000, 2, 'Wiraswasta', 'Angkutan umum', '2019'),
(125, '0011586440', 'Adni', 'TKJ', 79.13, 1000000, 4, 'Petani', 'Sepeda motor', '2019'),
(126, '0015403257', 'Adra', 'TKJ', 81, 2000000, 2, 'Wiraswasta', 'Jalan kaki', '2019'),
(127, '0027261370', 'Aem. Mutaqien', 'TKJ', 78.73, 2000000, 1, 'Wiraswasta', 'Sepeda motor', '2019'),
(128, '9995742293', 'Aep', 'TKJ', 78.8, 1000000, 4, 'Petani', 'Sepeda motor', '2019'),
(129, '0026769781', 'Agnes Meilani', 'TKJ', 81, 2000000, 1, 'Pedagang Besar', 'Sepeda motor', '2019'),
(130, '0017086338', 'Agus', 'TKJ', 79.87, 2000000, 2, 'Petani', 'Jalan kaki', '2019'),
(131, '0022877777', 'Agus Mustopa', 'TKJ', 80.93, 2000000, 2, 'Petani', 'Angkutan umum', '2019'),
(132, '9993054365', 'Agus Priatna', 'TKJ', 80.93, 2000000, 2, 'Wiraswasta', 'Sepeda motor', '2019'),
(133, '0033058074', 'Ahdi', 'TKJ', 78.73, 1000000, 2, 'Wiraswasta', 'Angkutan umum', '2019'),
(134, '0026513179', 'Ahmad Ahyudin', 'TKJ', 82.93, 1000000, 1, 'Petani', 'Jalan kaki', '2019'),
(135, '0020262855', 'Ahmad Badru Tamam', 'TKJ', 58.87, 5000000, 1, 'Wiraswasta', 'Sepeda motor', '2019'),
(136, '0049444818', 'Ahmad Bodin', 'TKJ', 72.6, 1000000, 1, 'Petani', 'Jalan kaki', '2019'),
(137, '0009004336', 'Ahmad Fajari', 'TKJ', 73.13, 1000000, 1, 'Petani', 'Angkutan umum', '2019'),
(138, '0027220516', 'Ahmad Fauzian Arifin', 'TKJ', 73.4, 1000000, 1, 'Petani', 'Angkutan umum', '2019'),
(139, '0004245171', 'Ahmad Iim', 'TKJ', 52.27, 1000000, 2, 'Petani', 'Angkutan umum', '2019'),
(140, '0026033028', 'Ahmad Jaelani', 'TKJ', 69.4, 2000000, 2, 'Petani', 'Sepeda motor', '2019'),
(141, '0008162965', 'Ahmad Juni', 'TKJ', 46.13, 2000000, 3, 'Petani', 'Angkutan umum', '2019'),
(142, '0027391864', 'Ahmad Matin Ansori', 'TKJ', 74.73, 500000, 2, 'Petani', 'Jalan kaki', '2019'),
(143, '0012268882', 'Ahmad Saepudin', 'TKJ', 73.67, 2000000, 1, 'Wiraswasta', 'Angkutan umum', '2019'),
(144, '0011586172', 'Ahmad Sutisna', 'TKJ', 47.07, 2000000, 4, 'Wiraswasta', 'Jalan kaki', '2019'),
(145, '0025940551', 'Ahmad Taufik', 'TKJ', 74.4, 5000000, 1, 'Wiraswasta', 'Sepeda motor', '2019'),
(146, '0006189246', 'Ahyani', 'TKJ', 75.8, 5000000, 1, 'Wiraswasta', 'Sepeda motor', '2019'),
(147, '0005667744', 'Ahyudin', 'TKJ', 46.07, 2000000, 1, 'Petani', 'Sepeda motor', '2019'),
(148, '0013950032', 'Ai Umi Hapidatul Hidayah', 'TKJ', 73.27, 2000000, 2, 'Wiraswasta', 'Jalan kaki', '2019'),
(149, '0022389649', 'Ajat Sudrajat', 'TKJ', 75.87, 2000000, 1, 'Petani', 'Angkutan umum', '2019'),
(150, '0018584224', 'Aji Ripansyah', 'TKJ', 74.93, 2000000, 2, 'Petani', 'Angkutan umum', '2019'),
(151, '0029332300', 'Aji Saputra', 'TKJ', 54.93, 1000000, 2, 'Petani', 'Angkutan umum', '2019'),
(152, '0000981609', 'Ajid', 'TKJ', 74.6, 2000000, 1, 'Petani', 'Sepeda motor', '2019'),
(153, '9998506255', 'Ajril Aril Ilham', 'TKJ', 70.53, 1000000, 1, 'Petani', 'Sepeda motor', '2019'),
(154, '0000981355', 'Aldi', 'TKJ', 47.53, 1000000, 2, 'Petani', 'Angkutan umum', '2019'),
(155, '0020598008', 'Aldi Agustiara', 'TKJ', 73.4, 2000000, 2, 'Wiraswasta', 'Angkutan umum', '2019'),
(156, '0020081916', 'Aldi Setiawan', 'TKJ', 47.07, 1000000, 0, 'Petani', 'Jalan kaki', '2019'),
(157, '0009524682', 'Aldi Yana', 'TKJ', 66.67, 2000000, 1, 'Petani', 'Sepeda motor', '2019'),
(158, '9995773453', 'Alexander', 'TKJ', 76.07, 2000000, 2, 'Petani', 'Sepeda motor', '2019'),
(159, '9991512602', 'Ali', 'TKJ', 70.4, 1000000, 1, 'Petani', 'Sepeda motor', '2019'),
(160, '0018344118', 'Ali Hariri', 'TKJ', 73.53, 2000000, 2, 'Wiraswasta', 'Angkutan umum', '2019'),
(161, '0007388346', 'Ali Martodo', 'TKJ', 71.33, 1000000, 3, 'Petani', 'Sepeda motor', '2019'),
(162, '0009781593', 'Aliah', 'TKJ', 75.27, 2000000, 1, 'Nelayan', 'Angkutan umum', '2019'),
(163, '0023623700', 'Alpan Pratama', 'TKJ', 66.13, 1000000, 1, 'Nelayan', 'Angkutan umum', '2019'),
(164, '0029808395', 'Alpin', 'TKJ', 77.33, 1000000, 1, 'Petani', 'Angkutan umum', '2019'),
(165, '0014675163', 'Alus', 'TKJ', 71.67, 2000000, 3, 'Petani', 'Angkutan umum', '2019'),
(166, '0033910400', 'Alwi', 'TKJ', 63.47, 500000, 1, 'Nelayan', 'Angkutan umum', '2019'),
(167, '0008326331', 'Amad', 'TKJ', 74.47, 2000000, 2, 'Petani', 'Sepeda motor', '2019'),
(168, '0000981619', 'Amedi', 'TKJ', 80.67, 1000000, 1, 'Petani', 'Jalan kaki', '2019'),
(169, '0026157837', 'Amelia Nuryani', 'TKJ', 55.13, 1000000, 1, 'Petani', 'Jalan kaki', '2019'),
(170, '0019973489', 'Amin', 'TKJ', 72.47, 1000000, 1, 'Petani', 'Sepeda motor', '2019'),
(171, '0014675535', 'Aminah', 'TKJ', 74.07, 2000000, 3, 'Nelayan', 'Angkutan umum', '2019'),
(172, '0004582770', 'Amirudin', 'TKJ', 78.44, 2000000, 2, 'Petani', 'Sepeda motor', '2019'),
(173, '9997524201', 'Amnah Amelia', 'TKJ', 84.06, 1000000, 1, 'Wiraswasta', 'Sepeda motor', '2019'),
(174, '0009673660', 'Amsar', 'TKJ', 22.75, 2000000, 0, 'Petani', 'Jalan kaki', '2019'),
(175, '0033998206', 'Amsir', 'TKJ', 81.88, 1000000, 1, 'Petani', 'Sepeda motor', '2019'),
(176, '0038420452', 'Anah', 'TKJ', 79.88, 1000000, 1, 'Petani', 'Jalan kaki', '2019'),
(177, '0008825656', 'Anan Setiawan', 'TKJ', 28.25, 2000000, 2, 'Wiraswasta', 'Sepeda motor', '2019'),
(178, '0000992969', 'Anang Wijaya', 'TKJ', 80.31, 500000, 1, 'Petani', 'Angkutan umum', '2019'),
(179, '9981180017', 'Anda', 'TKJ', 59.43, 100000, 2, 'Sudah Meninggal', 'Angkutan umum', '2019'),
(180, '0027787514', 'Anda Hidayatullah', 'TSM', 64.5, 5000000, 2, 'Wiraswasta', 'Sepeda motor', '2019'),
(181, '0009634636', 'Andi', 'TSM', 49.21, 2000000, 1, 'Wiraswasta', 'Sepeda motor', '2019'),
(182, '0011586051', 'Andi', 'TSM', 74.29, 1000000, 1, 'Petani', 'Angkutan umum', '2019'),
(183, '0017221131', 'Andi Anugrah', 'TSM', 69.43, 2000000, 1, 'Wiraswasta', 'Angkutan umum', '2019'),
(184, '0029652859', 'Andi Hermawan', 'TSM', 69.36, 2000000, 1, 'Petani', 'Angkutan umum', '2019'),
(185, '0024600609', 'Andi Purnawirawan', 'TSM', 71.64, 500000, 2, 'Nelayan', 'Sepeda motor', '2019'),
(186, '0029758575', 'Andini Fitri Yanti', 'TSM', 79.36, 1000000, 2, 'Petani', 'Angkutan umum', '2019'),
(187, '0026568181', 'Andra', 'TSM', 79.5, 1000000, 2, 'Petani', 'Jalan kaki', '2019'),
(188, '0034116266', 'Andri Irawan', 'TSM', 83.07, 1000000, 1, 'Nelayan', 'Angkutan umum', '2019'),
(189, '9991539538', 'Andri Yani', 'TSM', 77.29, 1000000, 0, 'Petani', 'Sepeda motor', '2019'),
(190, '0012324471', 'Andrian', 'TSM', 60.86, 1000000, 0, 'Petani', 'Sepeda motor', '2019'),
(191, '0036289311', 'Angga', 'TSM', 45.07, 2000000, 1, 'Wiraswasta', 'Sepeda motor', '2019'),
(192, '0031425703', 'Anggara', 'TSM', 82.64, 2000000, 0, 'Wiraswasta', 'Sepeda motor', '2019'),
(193, '9996529887', 'Anggi Mulyadi', 'TSM', 80.14, 5000000, 1, 'Wiraswasta', 'Angkutan umum', '2019'),
(194, '0009358789', 'Anggi Sukmajaya', 'TSM', 74.79, 2000000, 1, 'Petani', 'Angkutan umum', '2019'),
(195, '0012623808', 'Ani Kurniawati', 'TSM', 75.21, 1000000, 2, 'Petani', 'Jalan kaki', '2019'),
(196, '0022963737', 'Aniah', 'TSM', 58.14, 1000000, 1, 'Petani', 'Jalan kaki', '2019'),
(197, '0037517924', 'Aning Jupriani', 'TSM', 82.79, 5000000, 2, 'Wiraswasta', 'Sepeda motor', '2019'),
(198, '0009684510', 'Anisa Agustina', 'TSM', 60, 2000000, 1, 'Wiraswasta', 'Angkutan umum', '2019'),
(199, '666', 'Tesss', 'TI', 70, 100000, 1, 'Petani', 'Jalan kaki', '2019');

-- --------------------------------------------------------

--
-- Struktur dari tabel `calon_penerima_dup`
--

CREATE TABLE IF NOT EXISTS `calon_penerima_dup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nis` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jurusan` varchar(20) NOT NULL,
  `nilai_rata` float NOT NULL,
  `penghasilan_ortu` varchar(30) NOT NULL,
  `tanggungan_ortu` int(11) NOT NULL,
  `pekerjaan_ortu` varchar(20) NOT NULL,
  `alat_transportasi` varchar(20) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

--
-- Dumping data untuk tabel `calon_penerima_dup`
--

INSERT INTO `calon_penerima_dup` (`id`, `nis`, `nama`, `jurusan`, `nilai_rata`, `penghasilan_ortu`, `tanggungan_ortu`, `pekerjaan_ortu`, `alat_transportasi`, `tahun`) VALUES
(1, '0032548735', 'A. Iwan Setiawan', 'TKJ', 78.8, 'Kurang dari Rp. 500,000', 1, 'Petani', 'Jalan kaki', '2019'),
(2, '0034010116', 'A. Mansuruddin Faqih', 'TKJ', 76.33, 'Rp. 500,000 - Rp. 999,999', 3, 'Petani', 'Sepeda motor', '2019'),
(3, '0003306710', 'Aan', 'TKJ', 47.4, 'Rp. 500,000 - Rp. 999,999', 1, 'Petani', 'Sepeda motor', '2019'),
(4, '0025697409', 'Aan Hidayat', 'TKJ', 78.2, 'Rp. 1,000,000 - Rp. 1,999,999', 3, 'Petani', 'Angkutan umum', '2019'),
(5, '0027270512', 'Aan Triana', 'TKJ', 79.27, 'Kurang dari Rp. 500,000', 2, 'Petani', 'Jalan kaki', '2019'),
(6, '0027325379', 'Aang Epiriyana', 'TKJ', 80.27, 'Rp. 500,000 - Rp. 999,999', 1, 'Petani', 'Jalan kaki', '2019'),
(7, '0009703216', 'Aang Kornaefi', 'TKJ', 81.33, 'Rp. 500,000 - Rp. 999,999', 4, 'Petani', 'Jalan kaki', '2019'),
(8, '0036869435', 'Aap Adita', 'TKJ', 79.2, 'Rp. 500,000 - Rp. 999,999', 2, 'Petani', 'Jalan kaki', '2019'),
(9, '0007815091', 'Aap Apandi', 'TKJ', 79.07, 'Rp. 1,000,000 - Rp. 1,999,999', 2, 'Wiraswasta', 'Sepeda motor', '2019'),
(10, '0023431499', 'Aas Asiah', 'TKJ', 77.07, 'Rp. 1,000,000 - Rp. 1,999,999', 1, 'Wiraswasta', 'Jalan kaki', '2019'),
(11, '0004421347', 'Aas Komalasari', 'TKJ', 79.53, 'Rp. 500,000 - Rp. 999,999', 1, 'Wiraswasta', 'Sepeda motor', '2019'),
(12, '0013110042', 'Aat Atmayudin', 'TKJ', 78.13, 'Rp. 500,000 - Rp. 999,999', 2, 'Wiraswasta', 'Angkutan umum', '2019'),
(13, '0003621564', 'Aat Supriatna', 'TKJ', 46.53, 'Rp. 1,000,000 - Rp. 1,999,999', 2, 'Wiraswasta', 'Angkutan umum', '2019'),
(14, '0003205296', 'Abdul Manan', 'TKJ', 80.4, 'Rp. 1,000,000 - Rp. 1,999,999', 3, 'Wiraswasta', 'Angkutan umum', '2019'),
(15, '0011541157', 'Abdul Rohman', 'TKJ', 79.67, 'Rp. 1,000,000 - Rp. 1,999,999', 2, 'Petani', 'Sepeda motor', '2019'),
(16, '0003691536', 'Abidin Kholik', 'TKJ', 77.8, 'Rp. 1,000,000 - Rp. 1,999,999', 3, 'Lainnya', 'Angkutan umum', '2019'),
(17, '0005607727', 'Achmad Puadnudin', 'TKJ', 74, 'Rp. 500,000 - Rp. 999,999', 4, 'Petani', 'Sepeda motor', '2019'),
(18, '0029086309', 'Acih Mintarsih', 'TKJ', 79.47, 'Rp. 1,000,000 - Rp. 1,999,999', 2, 'Petani', 'Sepeda motor', '2019'),
(19, '0020263889', 'Aden Hermawan', 'TKJ', 81.87, 'Rp. 500,000 - Rp. 999,999', 2, 'Petani', 'Angkutan umum', '2019'),
(20, '9991530291', 'Adi Herdiansyah', 'TKJ', 79.4, 'Rp. 1,000,000 - Rp. 1,999,999', 2, 'Petani', 'Sepeda motor', '2019'),
(21, '0016765562', 'Adi Rahmat Fauzi', 'TKJ', 57.07, 'Rp. 2,000,000 - Rp. 4,999,999', 1, 'Wiraswasta', 'Sepeda motor', '2019'),
(22, '0032127042', 'Adih Gunawan', 'TKJ', 72.93, 'Rp. 500,000 - Rp. 999,999', 1, 'Petani', 'Sepeda motor', '2019'),
(23, '0011585952', 'Adimi', 'TKJ', 82.87, 'Rp. 1,000,000 - Rp. 1,999,999', 1, 'Petani', 'Sepeda motor', '2019'),
(24, '0164184807', 'Adin', 'TKJ', 77.87, 'Rp. 1,000,000 - Rp. 1,999,999', 2, 'Petani', 'Sepeda motor', '2019'),
(25, '0011541207', 'Aditia', 'TKJ', 81, 'Kurang dari Rp. 500,000', 2, 'Wiraswasta', 'Angkutan umum', '2019'),
(26, '0011586440', 'Adni', 'TKJ', 79.13, 'Rp. 500,000 - Rp. 999,999', 4, 'Petani', 'Sepeda motor', '2019'),
(27, '0015403257', 'Adra', 'TKJ', 81, 'Rp. 1,000,000 - Rp. 1,999,999', 2, 'Wiraswasta', 'Jalan kaki', '2019'),
(28, '0027261370', 'Aem. Mutaqien', 'TKJ', 78.73, 'Rp. 1,000,000 - Rp. 1,999,999', 1, 'Wiraswasta', 'Sepeda motor', '2019'),
(29, '9995742293', 'Aep', 'TKJ', 78.8, 'Rp. 500,000 - Rp. 999,999', 4, 'Petani', 'Sepeda motor', '2019'),
(30, '0026769781', 'Agnes Meilani', 'TKJ', 81, 'Rp. 1,000,000 - Rp. 1,999,999', 1, 'Pedagang Besar', 'Sepeda motor', '2019'),
(31, '0017086338', 'Agus', 'TKJ', 79.87, 'Rp. 1,000,000 - Rp. 1,999,999', 2, 'Petani', 'Jalan kaki', '2019'),
(32, '0022877777', 'Agus Mustopa', 'TKJ', 80.93, 'Rp. 1,000,000 - Rp. 1,999,999', 2, 'Petani', 'Angkutan umum', '2019'),
(33, '9993054365', 'Agus Priatna', 'TKJ', 80.93, 'Rp. 1,000,000 - Rp. 1,999,999', 2, 'Wiraswasta', 'Sepeda motor', '2019'),
(34, '0033058074', 'Ahdi', 'TKJ', 78.73, 'Rp. 500,000 - Rp. 999,999', 2, 'Wiraswasta', 'Angkutan umum', '2019'),
(35, '0026513179', 'Ahmad Ahyudin', 'TKJ', 82.93, 'Rp. 500,000 - Rp. 999,999', 1, 'Petani', 'Jalan kaki', '2019'),
(36, '0020262855', 'Ahmad Badru Tamam', 'TKJ', 58.87, 'Rp. 2,000,000 - Rp. 4,999,999', 1, 'Wiraswasta', 'Sepeda motor', '2019'),
(37, '0049444818', 'Ahmad Bodin', 'TKJ', 72.6, 'Rp. 500,000 - Rp. 999,999', 1, 'Petani', 'Jalan kaki', '2019'),
(38, '0009004336', 'Ahmad Fajari', 'TKJ', 73.13, 'Rp. 500,000 - Rp. 999,999', 1, 'Petani', 'Angkutan umum', '2019'),
(39, '0027220516', 'Ahmad Fauzian Arifin', 'TKJ', 73.4, 'Rp. 500,000 - Rp. 999,999', 1, 'Petani', 'Angkutan umum', '2019'),
(40, '0004245171', 'Ahmad Iim', 'TKJ', 52.27, 'Rp. 500,000 - Rp. 999,999', 2, 'Petani', 'Angkutan umum', '2019'),
(41, '0026033028', 'Ahmad Jaelani', 'TKJ', 69.4, 'Rp. 1,000,000 - Rp. 1,999,999', 2, 'Petani', 'Sepeda motor', '2019'),
(42, '0008162965', 'Ahmad Juni', 'TKJ', 46.13, 'Rp. 1,000,000 - Rp. 1,999,999', 3, 'Petani', 'Angkutan umum', '2019'),
(43, '0027391864', 'Ahmad Matin Ansori', 'TKJ', 74.73, 'Kurang dari Rp. 500,000', 2, 'Petani', 'Jalan kaki', '2019'),
(44, '0012268882', 'Ahmad Saepudin', 'TKJ', 73.67, 'Rp. 1,000,000 - Rp. 1,999,999', 1, 'Wiraswasta', 'Angkutan umum', '2019'),
(45, '0011586172', 'Ahmad Sutisna', 'TKJ', 47.07, 'Rp. 1,000,000 - Rp. 1,999,999', 4, 'Wiraswasta', 'Jalan kaki', '2019'),
(46, '0025940551', 'Ahmad Taufik', 'TKJ', 74.4, 'Rp. 2,000,000 - Rp. 4,999,999', 1, 'Wiraswasta', 'Sepeda motor', '2019'),
(47, '0006189246', 'Ahyani', 'TKJ', 75.8, 'Rp. 2,000,000 - Rp. 4,999,999', 1, 'Wiraswasta', 'Sepeda motor', '2019'),
(48, '0005667744', 'Ahyudin', 'TKJ', 46.07, 'Rp. 1,000,000 - Rp. 1,999,999', 1, 'Petani', 'Sepeda motor', '2019'),
(49, '0013950032', 'Ai Umi Hapidatul Hidayah', 'TKJ', 73.27, 'Rp. 1,000,000 - Rp. 1,999,999', 2, 'Wiraswasta', 'Jalan kaki', '2019'),
(50, '0022389649', 'Ajat Sudrajat', 'TKJ', 75.87, 'Rp. 1,000,000 - Rp. 1,999,999', 1, 'Petani', 'Angkutan umum', '2019'),
(51, '0018584224', 'Aji Ripansyah', 'TKJ', 74.93, 'Rp. 1,000,000 - Rp. 1,999,999', 2, 'Petani', 'Angkutan umum', '2019'),
(52, '0029332300', 'Aji Saputra', 'TKJ', 54.93, 'Rp. 500,000 - Rp. 999,999', 2, 'Petani', 'Angkutan umum', '2019'),
(53, '0000981609', 'Ajid', 'TKJ', 74.6, 'Rp. 1,000,000 - Rp. 1,999,999', 1, 'Petani', 'Sepeda motor', '2019'),
(54, '9998506255', 'Ajril Aril Ilham', 'TKJ', 70.53, 'Rp. 500,000 - Rp. 999,999', 1, 'Petani', 'Sepeda motor', '2019'),
(55, '0000981355', 'Aldi', 'TKJ', 47.53, 'Rp. 500,000 - Rp. 999,999', 2, 'Petani', 'Angkutan umum', '2019'),
(56, '0020598008', 'Aldi Agustiara', 'TKJ', 73.4, 'Rp. 1,000,000 - Rp. 1,999,999', 2, 'Wiraswasta', 'Angkutan umum', '2019'),
(57, '0020081916', 'Aldi Setiawan', 'TKJ', 47.07, 'Rp. 500,000 - Rp. 999,999', 0, 'Petani', 'Jalan kaki', '2019'),
(58, '0009524682', 'Aldi Yana', 'TKJ', 66.67, 'Rp. 1,000,000 - Rp. 1,999,999', 1, 'Petani', 'Sepeda motor', '2019'),
(59, '9995773453', 'Alexander', 'TKJ', 76.07, 'Rp. 1,000,000 - Rp. 1,999,999', 2, 'Petani', 'Sepeda motor', '2019'),
(60, '9991512602', 'Ali', 'TKJ', 70.4, 'Rp. 500,000 - Rp. 999,999', 1, 'Petani', 'Sepeda motor', '2019'),
(61, '0018344118', 'Ali Hariri', 'TKJ', 73.53, 'Rp. 1,000,000 - Rp. 1,999,999', 2, 'Wiraswasta', 'Angkutan umum', '2019'),
(62, '0007388346', 'Ali Martodo', 'TKJ', 71.33, 'Rp. 500,000 - Rp. 999,999', 3, 'Petani', 'Sepeda motor', '2019'),
(63, '0009781593', 'Aliah', 'TKJ', 75.27, 'Rp. 1,000,000 - Rp. 1,999,999', 1, 'Nelayan', 'Angkutan umum', '2019'),
(64, '0023623700', 'Alpan Pratama', 'TKJ', 66.13, 'Rp. 500,000 - Rp. 999,999', 1, 'Nelayan', 'Angkutan umum', '2019'),
(65, '0029808395', 'Alpin', 'TKJ', 77.33, 'Rp. 500,000 - Rp. 999,999', 1, 'Petani', 'Angkutan umum', '2019'),
(66, '0014675163', 'Alus', 'TKJ', 71.67, 'Rp. 1,000,000 - Rp. 1,999,999', 3, 'Petani', 'Angkutan umum', '2019'),
(67, '0033910400', 'Alwi', 'TKJ', 63.47, 'Kurang dari Rp. 500,000', 1, 'Nelayan', 'Angkutan umum', '2019'),
(68, '0008326331', 'Amad', 'TKJ', 74.47, 'Rp. 1,000,000 - Rp. 1,999,999', 2, 'Petani', 'Sepeda motor', '2019'),
(69, '0000981619', 'Amedi', 'TKJ', 80.67, 'Rp. 500,000 - Rp. 999,999', 1, 'Petani', 'Jalan kaki', '2019'),
(70, '0026157837', 'Amelia Nuryani', 'TKJ', 55.13, 'Rp. 500,000 - Rp. 999,999', 1, 'Petani', 'Jalan kaki', '2019'),
(71, '0019973489', 'Amin', 'TKJ', 72.47, 'Rp. 500,000 - Rp. 999,999', 1, 'Petani', 'Sepeda motor', '2019'),
(72, '0014675535', 'Aminah', 'TKJ', 74.07, 'Rp. 1,000,000 - Rp. 1,999,999', 3, 'Nelayan', 'Angkutan umum', '2019'),
(73, '0004582770', 'Amirudin', 'TKJ', 78.44, 'Rp. 1,000,000 - Rp. 1,999,999', 2, 'Petani', 'Sepeda motor', '2019'),
(74, '9997524201', 'Amnah Amelia', 'TKJ', 84.06, 'Rp. 500,000 - Rp. 999,999', 1, 'Wiraswasta', 'Sepeda motor', '2019'),
(75, '0009673660', 'Amsar', 'TKJ', 22.75, 'Rp. 1,000,000 - Rp. 1,999,999', 0, 'Petani', 'Jalan kaki', '2019'),
(76, '0033998206', 'Amsir', 'TKJ', 81.88, 'Rp. 500,000 - Rp. 999,999', 1, 'Petani', 'Sepeda motor', '2019'),
(77, '0038420452', 'Anah', 'TKJ', 79.88, 'Rp. 500,000 - Rp. 999,999', 1, 'Petani', 'Jalan kaki', '2019'),
(78, '0008825656', 'Anan Setiawan', 'TKJ', 28.25, 'Rp. 1,000,000 - Rp. 1,999,999', 2, 'Wiraswasta', 'Sepeda motor', '2019'),
(79, '0000992969', 'Anang Wijaya', 'TKJ', 80.31, 'Kurang dari Rp. 500,000', 1, 'Petani', 'Angkutan umum', '2019'),
(80, '9981180017', 'Anda', 'TKJ', 59.43, 'Tidak Berpenghasilan', 2, 'Sudah Meninggal', 'Angkutan umum', '2019'),
(81, '0027787514', 'Anda Hidayatullah', 'TSM', 64.5, 'Rp. 2,000,000 - Rp. 4,999,999', 2, 'Wiraswasta', 'Sepeda motor', '2019'),
(82, '0009634636', 'Andi', 'TSM', 49.21, 'Rp. 1,000,000 - Rp. 1,999,999', 1, 'Wiraswasta', 'Sepeda motor', '2019'),
(83, '0011586051', 'Andi', 'TSM', 74.29, 'Rp. 500,000 - Rp. 999,999', 1, 'Petani', 'Angkutan umum', '2019'),
(84, '0017221131', 'Andi Anugrah', 'TSM', 69.43, 'Rp. 1,000,000 - Rp. 1,999,999', 1, 'Wiraswasta', 'Angkutan umum', '2019'),
(85, '0029652859', 'Andi Hermawan', 'TSM', 69.36, 'Rp. 1,000,000 - Rp. 1,999,999', 1, 'Petani', 'Angkutan umum', '2019'),
(86, '0024600609', 'Andi Purnawirawan', 'TSM', 71.64, 'Kurang dari Rp. 500,000', 2, 'Nelayan', 'Sepeda motor', '2019'),
(87, '0029758575', 'Andini Fitri Yanti', 'TSM', 79.36, 'Rp. 500,000 - Rp. 999,999', 2, 'Petani', 'Angkutan umum', '2019'),
(88, '0026568181', 'Andra', 'TSM', 79.5, 'Rp. 500,000 - Rp. 999,999', 2, 'Petani', 'Jalan kaki', '2019'),
(89, '0034116266', 'Andri Irawan', 'TSM', 83.07, 'Rp. 500,000 - Rp. 999,999', 1, 'Nelayan', 'Angkutan umum', '2019'),
(90, '9991539538', 'Andri Yani', 'TSM', 77.29, 'Rp. 500,000 - Rp. 999,999', 0, 'Petani', 'Sepeda motor', '2019'),
(91, '0012324471', 'Andrian', 'TSM', 60.86, 'Rp. 500,000 - Rp. 999,999', 0, 'Petani', 'Sepeda motor', '2019'),
(92, '0036289311', 'Angga', 'TSM', 45.07, 'Rp. 1,000,000 - Rp. 1,999,999', 1, 'Wiraswasta', 'Sepeda motor', '2019'),
(93, '0031425703', 'Anggara', 'TSM', 82.64, 'Rp. 1,000,000 - Rp. 1,999,999', 0, 'Wiraswasta', 'Sepeda motor', '2019'),
(94, '9996529887', 'Anggi Mulyadi', 'TSM', 80.14, 'Rp. 2,000,000 - Rp. 4,999,999', 1, 'Wiraswasta', 'Angkutan umum', '2019'),
(95, '0009358789', 'Anggi Sukmajaya', 'TSM', 74.79, 'Rp. 1,000,000 - Rp. 1,999,999', 1, 'Petani', 'Angkutan umum', '2019'),
(96, '0012623808', 'Ani Kurniawati', 'TSM', 75.21, 'Rp. 500,000 - Rp. 999,999', 2, 'Petani', 'Jalan kaki', '2019'),
(97, '0022963737', 'Aniah', 'TSM', 58.14, 'Rp. 500,000 - Rp. 999,999', 1, 'Petani', 'Jalan kaki', '2019'),
(98, '0037517924', 'Aning Jupriani', 'TSM', 82.79, 'Rp. 2,000,000 - Rp. 4,999,999', 2, 'Wiraswasta', 'Sepeda motor', '2019'),
(99, '0009684510', 'Anisa Agustina', 'TSM', 60, 'Rp. 1,000,000 - Rp. 1,999,999', 1, 'Wiraswasta', 'Angkutan umum', '2019');

-- --------------------------------------------------------

--
-- Struktur dari tabel `calon_penerima_konversi`
--

CREATE TABLE IF NOT EXISTS `calon_penerima_konversi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nis` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jurusan` varchar(20) NOT NULL,
  `nilai_rata` float NOT NULL,
  `penghasilan_ortu` int(30) NOT NULL,
  `tanggungan_ortu` int(11) NOT NULL,
  `pekerjaan_ortu` int(20) NOT NULL,
  `alat_transportasi` int(20) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1983 ;

--
-- Dumping data untuk tabel `calon_penerima_konversi`
--

INSERT INTO `calon_penerima_konversi` (`id`, `nis`, `nama`, `jurusan`, `nilai_rata`, `penghasilan_ortu`, `tanggungan_ortu`, `pekerjaan_ortu`, `alat_transportasi`, `tahun`) VALUES
(1883, '0032548735', 'A. Iwan Setiawan', 'TKJ', 78.8, 500000, 1, 2, 4, '2019'),
(1884, '0034010116', 'A. Mansuruddin Faqih', 'TKJ', 76.33, 1000000, 3, 2, 2, '2019'),
(1885, '0003306710', 'Aan', 'TKJ', 47.4, 1000000, 1, 2, 2, '2019'),
(1886, '0025697409', 'Aan Hidayat', 'TKJ', 78.2, 2000000, 3, 2, 3, '2019'),
(1887, '0027270512', 'Aan Triana', 'TKJ', 79.27, 500000, 2, 2, 4, '2019'),
(1888, '0027325379', 'Aang Epiriyana', 'TKJ', 80.27, 1000000, 1, 2, 4, '2019'),
(1889, '0009703216', 'Aang Kornaefi', 'TKJ', 81.33, 1000000, 4, 2, 4, '2019'),
(1890, '0036869435', 'Aap Adita', 'TKJ', 79.2, 1000000, 2, 2, 4, '2019'),
(1891, '0007815091', 'Aap Apandi', 'TKJ', 79.07, 2000000, 2, 3, 2, '2019'),
(1892, '0023431499', 'Aas Asiah', 'TKJ', 77.07, 2000000, 1, 3, 4, '2019'),
(1893, '0004421347', 'Aas Komalasari', 'TKJ', 79.53, 1000000, 1, 3, 2, '2019'),
(1894, '0013110042', 'Aat Atmayudin', 'TKJ', 78.13, 1000000, 2, 3, 3, '2019'),
(1895, '0003621564', 'Aat Supriatna', 'TKJ', 46.53, 2000000, 2, 3, 3, '2019'),
(1896, '0003205296', 'Abdul Manan', 'TKJ', 80.4, 2000000, 3, 3, 3, '2019'),
(1897, '0011541157', 'Abdul Rohman', 'TKJ', 79.67, 2000000, 2, 2, 2, '2019'),
(1898, '0003691536', 'Abidin Kholik', 'TKJ', 77.8, 2000000, 3, 5, 3, '2019'),
(1899, '0005607727', 'Achmad Puadnudin', 'TKJ', 74, 1000000, 4, 2, 2, '2019'),
(1900, '0029086309', 'Acih Mintarsih', 'TKJ', 79.47, 2000000, 2, 2, 2, '2019'),
(1901, '0020263889', 'Aden Hermawan', 'TKJ', 81.87, 1000000, 2, 2, 3, '2019'),
(1902, '9991530291', 'Adi Herdiansyah', 'TKJ', 79.4, 2000000, 2, 2, 2, '2019'),
(1903, '0016765562', 'Adi Rahmat Fauzi', 'TKJ', 57.07, 5000000, 1, 3, 2, '2019'),
(1904, '0032127042', 'Adih Gunawan', 'TKJ', 72.93, 1000000, 1, 2, 2, '2019'),
(1905, '0011585952', 'Adimi', 'TKJ', 82.87, 2000000, 1, 2, 2, '2019'),
(1906, '0164184807', 'Adin', 'TKJ', 77.87, 2000000, 2, 2, 2, '2019'),
(1907, '0011541207', 'Aditia', 'TKJ', 81, 500000, 2, 3, 3, '2019'),
(1908, '0011586440', 'Adni', 'TKJ', 79.13, 1000000, 4, 2, 2, '2019'),
(1909, '0015403257', 'Adra', 'TKJ', 81, 2000000, 2, 3, 4, '2019'),
(1910, '0027261370', 'Aem. Mutaqien', 'TKJ', 78.73, 2000000, 1, 3, 2, '2019'),
(1911, '9995742293', 'Aep', 'TKJ', 78.8, 1000000, 4, 2, 2, '2019'),
(1912, '0026769781', 'Agnes Meilani', 'TKJ', 81, 2000000, 1, 5, 2, '2019'),
(1913, '0017086338', 'Agus', 'TKJ', 79.87, 2000000, 2, 2, 4, '2019'),
(1914, '0022877777', 'Agus Mustopa', 'TKJ', 80.93, 2000000, 2, 2, 3, '2019'),
(1915, '9993054365', 'Agus Priatna', 'TKJ', 80.93, 2000000, 2, 3, 2, '2019'),
(1916, '0033058074', 'Ahdi', 'TKJ', 78.73, 1000000, 2, 3, 3, '2019'),
(1917, '0026513179', 'Ahmad Ahyudin', 'TKJ', 82.93, 1000000, 1, 2, 4, '2019'),
(1918, '0020262855', 'Ahmad Badru Tamam', 'TKJ', 58.87, 5000000, 1, 3, 2, '2019'),
(1919, '0049444818', 'Ahmad Bodin', 'TKJ', 72.6, 1000000, 1, 2, 4, '2019'),
(1920, '0009004336', 'Ahmad Fajari', 'TKJ', 73.13, 1000000, 1, 2, 3, '2019'),
(1921, '0027220516', 'Ahmad Fauzian Arifin', 'TKJ', 73.4, 1000000, 1, 2, 3, '2019'),
(1922, '0004245171', 'Ahmad Iim', 'TKJ', 52.27, 1000000, 2, 2, 3, '2019'),
(1923, '0026033028', 'Ahmad Jaelani', 'TKJ', 69.4, 2000000, 2, 2, 2, '2019'),
(1924, '0008162965', 'Ahmad Juni', 'TKJ', 46.13, 2000000, 3, 2, 3, '2019'),
(1925, '0027391864', 'Ahmad Matin Ansori', 'TKJ', 74.73, 500000, 2, 2, 4, '2019'),
(1926, '0012268882', 'Ahmad Saepudin', 'TKJ', 73.67, 2000000, 1, 3, 3, '2019'),
(1927, '0011586172', 'Ahmad Sutisna', 'TKJ', 47.07, 2000000, 4, 3, 4, '2019'),
(1928, '0025940551', 'Ahmad Taufik', 'TKJ', 74.4, 5000000, 1, 3, 2, '2019'),
(1929, '0006189246', 'Ahyani', 'TKJ', 75.8, 5000000, 1, 3, 2, '2019'),
(1930, '0005667744', 'Ahyudin', 'TKJ', 46.07, 2000000, 1, 2, 2, '2019'),
(1931, '0013950032', 'Ai Umi Hapidatul Hidayah', 'TKJ', 73.27, 2000000, 2, 3, 4, '2019'),
(1932, '0022389649', 'Ajat Sudrajat', 'TKJ', 75.87, 2000000, 1, 2, 3, '2019'),
(1933, '0018584224', 'Aji Ripansyah', 'TKJ', 74.93, 2000000, 2, 2, 3, '2019'),
(1934, '0029332300', 'Aji Saputra', 'TKJ', 54.93, 1000000, 2, 2, 3, '2019'),
(1935, '0000981609', 'Ajid', 'TKJ', 74.6, 2000000, 1, 2, 2, '2019'),
(1936, '9998506255', 'Ajril Aril Ilham', 'TKJ', 70.53, 1000000, 1, 2, 2, '2019'),
(1937, '0000981355', 'Aldi', 'TKJ', 47.53, 1000000, 2, 2, 3, '2019'),
(1938, '0020598008', 'Aldi Agustiara', 'TKJ', 73.4, 2000000, 2, 3, 3, '2019'),
(1939, '0020081916', 'Aldi Setiawan', 'TKJ', 47.07, 1000000, 0, 2, 4, '2019'),
(1940, '0009524682', 'Aldi Yana', 'TKJ', 66.67, 2000000, 1, 2, 2, '2019'),
(1941, '9995773453', 'Alexander', 'TKJ', 76.07, 2000000, 2, 2, 2, '2019'),
(1942, '9991512602', 'Ali', 'TKJ', 70.4, 1000000, 1, 2, 2, '2019'),
(1943, '0018344118', 'Ali Hariri', 'TKJ', 73.53, 2000000, 2, 3, 3, '2019'),
(1944, '0007388346', 'Ali Martodo', 'TKJ', 71.33, 1000000, 3, 2, 2, '2019'),
(1945, '0009781593', 'Aliah', 'TKJ', 75.27, 2000000, 1, 2, 3, '2019'),
(1946, '0023623700', 'Alpan Pratama', 'TKJ', 66.13, 1000000, 1, 2, 3, '2019'),
(1947, '0029808395', 'Alpin', 'TKJ', 77.33, 1000000, 1, 2, 3, '2019'),
(1948, '0014675163', 'Alus', 'TKJ', 71.67, 2000000, 3, 2, 3, '2019'),
(1949, '0033910400', 'Alwi', 'TKJ', 63.47, 500000, 1, 2, 3, '2019'),
(1950, '0008326331', 'Amad', 'TKJ', 74.47, 2000000, 2, 2, 2, '2019'),
(1951, '0000981619', 'Amedi', 'TKJ', 80.67, 1000000, 1, 2, 4, '2019'),
(1952, '0026157837', 'Amelia Nuryani', 'TKJ', 55.13, 1000000, 1, 2, 4, '2019'),
(1953, '0019973489', 'Amin', 'TKJ', 72.47, 1000000, 1, 2, 2, '2019'),
(1954, '0014675535', 'Aminah', 'TKJ', 74.07, 2000000, 3, 2, 3, '2019'),
(1955, '0004582770', 'Amirudin', 'TKJ', 78.44, 2000000, 2, 2, 2, '2019'),
(1956, '9997524201', 'Amnah Amelia', 'TKJ', 84.06, 1000000, 1, 3, 2, '2019'),
(1957, '0009673660', 'Amsar', 'TKJ', 22.75, 2000000, 0, 2, 4, '2019'),
(1958, '0033998206', 'Amsir', 'TKJ', 81.88, 1000000, 1, 2, 2, '2019'),
(1959, '0038420452', 'Anah', 'TKJ', 79.88, 1000000, 1, 2, 4, '2019'),
(1960, '0008825656', 'Anan Setiawan', 'TKJ', 28.25, 2000000, 2, 3, 2, '2019'),
(1961, '0000992969', 'Anang Wijaya', 'TKJ', 80.31, 500000, 1, 2, 3, '2019'),
(1962, '9981180017', 'Anda', 'TKJ', 59.43, 100000, 2, 1, 3, '2019'),
(1963, '0027787514', 'Anda Hidayatullah', 'TSM', 64.5, 5000000, 2, 3, 2, '2019'),
(1964, '0009634636', 'Andi', 'TSM', 49.21, 2000000, 1, 3, 2, '2019'),
(1965, '0011586051', 'Andi', 'TSM', 74.29, 1000000, 1, 2, 3, '2019'),
(1966, '0017221131', 'Andi Anugrah', 'TSM', 69.43, 2000000, 1, 3, 3, '2019'),
(1967, '0029652859', 'Andi Hermawan', 'TSM', 69.36, 2000000, 1, 2, 3, '2019'),
(1968, '0024600609', 'Andi Purnawirawan', 'TSM', 71.64, 500000, 2, 2, 2, '2019'),
(1969, '0029758575', 'Andini Fitri Yanti', 'TSM', 79.36, 1000000, 2, 2, 3, '2019'),
(1970, '0026568181', 'Andra', 'TSM', 79.5, 1000000, 2, 2, 4, '2019'),
(1971, '0034116266', 'Andri Irawan', 'TSM', 83.07, 1000000, 1, 2, 3, '2019'),
(1972, '9991539538', 'Andri Yani', 'TSM', 77.29, 1000000, 0, 2, 2, '2019'),
(1973, '0012324471', 'Andrian', 'TSM', 60.86, 1000000, 0, 2, 2, '2019'),
(1974, '0036289311', 'Angga', 'TSM', 45.07, 2000000, 1, 3, 2, '2019'),
(1975, '0031425703', 'Anggara', 'TSM', 82.64, 2000000, 0, 3, 2, '2019'),
(1976, '9996529887', 'Anggi Mulyadi', 'TSM', 80.14, 5000000, 1, 3, 3, '2019'),
(1977, '0009358789', 'Anggi Sukmajaya', 'TSM', 74.79, 2000000, 1, 2, 3, '2019'),
(1978, '0012623808', 'Ani Kurniawati', 'TSM', 75.21, 1000000, 2, 2, 4, '2019'),
(1979, '0022963737', 'Aniah', 'TSM', 58.14, 1000000, 1, 2, 4, '2019'),
(1980, '0037517924', 'Aning Jupriani', 'TSM', 82.79, 5000000, 2, 3, 2, '2019'),
(1981, '0009684510', 'Anisa Agustina', 'TSM', 60, 2000000, 1, 3, 3, '2019'),
(1982, '666', 'Tesss', 'TI', 70, 100000, 1, 2, 4, '2019');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_bobot_ahp`
--

CREATE TABLE IF NOT EXISTS `hasil_bobot_ahp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(3) NOT NULL,
  `bobot` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `hasil_bobot_ahp`
--

INSERT INTO `hasil_bobot_ahp` (`id`, `kode`, `bobot`) VALUES
(1, 'c1', 0.36),
(2, 'c2', 0.3),
(3, 'c3', 0.16),
(4, 'c4', 0.12),
(5, 'c5', 0.06);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_bobot_ahp_copy`
--

CREATE TABLE IF NOT EXISTS `hasil_bobot_ahp_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(3) NOT NULL,
  `bobot` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `hasil_bobot_ahp_copy`
--

INSERT INTO `hasil_bobot_ahp_copy` (`id`, `kode`, `bobot`) VALUES
(1, 'c1', 0.36),
(2, 'c2', 0.3),
(3, 'c3', 0.16),
(4, 'c4', 0.12),
(5, 'c5', 0.06);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_iterasi_1`
--

CREATE TABLE IF NOT EXISTS `hasil_iterasi_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kriteria` varchar(25) NOT NULL,
  `c1` double NOT NULL,
  `c2` double NOT NULL,
  `c3` double NOT NULL,
  `c4` double NOT NULL,
  `c5` double NOT NULL,
  `hasil` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `hasil_iterasi_1`
--

INSERT INTO `hasil_iterasi_1` (`id`, `kriteria`, `c1`, `c2`, `c3`, `c4`, `c5`, `hasil`) VALUES
(1, 'c1', 5, 6.6666666666667, 12.833333333333, 17.333333333333, 31, 72.833333333333),
(2, 'c2', 4.5, 5, 9.8333333333333, 14.833333333333, 28, 62.166666666667),
(3, 'c3', 2.5833333333333, 3.0833333333333, 5, 7.5, 15.333333333333, 33.5),
(4, 'c4', 1.8333333333333, 2.25, 3.6666666666666, 5, 10.166666666667, 22.916666666667),
(5, 'c5', 0.90277777777777, 1.2222222222222, 2.0833333333333, 2.8333333333333, 5, 12.041666666667);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_normalisasi`
--

CREATE TABLE IF NOT EXISTS `hasil_normalisasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nis` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jurusan` varchar(20) NOT NULL,
  `nilai_rata` varchar(10) NOT NULL,
  `penghasilan_ortu` varchar(10) NOT NULL,
  `tanggungan_ortu` varchar(10) NOT NULL,
  `pekerjaan_ortu` varchar(10) NOT NULL,
  `alat_transportasi` varchar(10) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Dumping data untuk tabel `hasil_normalisasi`
--

INSERT INTO `hasil_normalisasi` (`id`, `nis`, `nama`, `jurusan`, `nilai_rata`, `penghasilan_ortu`, `tanggungan_ortu`, `pekerjaan_ortu`, `alat_transportasi`, `tahun`) VALUES
(1, '0032548735', 'A. Iwan Setiawan', 'TKJ', '0.93742567', '0.2', '0.25', '0.5', '1', '2019'),
(2, '0034010116', 'A. Mansuruddin Faqih', 'TKJ', '0.90804190', '0.1', '0.75', '0.5', '0.5', '2019'),
(3, '0003306710', 'Aan', 'TKJ', '0.56388295', '0.1', '0.25', '0.5', '0.5', '2019'),
(4, '0025697409', 'Aan Hidayat', 'TKJ', '0.93028791', '0.05', '0.75', '0.5', '0.75', '2019'),
(5, '0027270512', 'Aan Triana', 'TKJ', '0.94301692', '0.2', '0.5', '0.5', '1', '2019'),
(6, '0027325379', 'Aang Epiriyana', 'TKJ', '0.95491318', '0.1', '0.25', '0.5', '1', '2019'),
(7, '0009703216', 'Aang Kornaefi', 'TKJ', '0.96752322', '0.1', '1', '0.5', '1', '2019'),
(8, '0036869435', 'Aap Adita', 'TKJ', '0.94218418', '0.1', '0.5', '0.5', '1', '2019'),
(9, '0007815091', 'Aap Apandi', 'TKJ', '0.94063766', '0.05', '0.5', '0.33333333', '0.5', '2019'),
(10, '0023431499', 'Aas Asiah', 'TKJ', '0.91684513', '0.05', '0.25', '0.33333333', '1', '2019'),
(11, '0004421347', 'Aas Komalasari', 'TKJ', '0.94610994', '0.1', '0.25', '0.33333333', '0.5', '2019'),
(12, '0013110042', 'Aat Atmayudin', 'TKJ', '0.92945517', '0.1', '0.5', '0.33333333', '0.75', '2019'),
(13, '0003621564', 'Aat Supriatna', 'TKJ', '0.55353320', '0.05', '0.5', '0.33333333', '0.75', '2019'),
(14, '0003205296', 'Abdul Manan', 'TKJ', '0.95645969', '0.05', '0.75', '0.33333333', '0.75', '2019'),
(15, '0011541157', 'Abdul Rohman', 'TKJ', '0.94777542', '0.05', '0.5', '0.5', '0.5', '2019'),
(16, '0003691536', 'Abidin Kholik', 'TKJ', '0.92552941', '0.05', '0.75', '0.2', '0.75', '2019'),
(17, '0005607727', 'Achmad Puadnudin', 'TKJ', '0.88032360', '0.1', '1', '0.5', '0.5', '2019'),
(18, '0029086309', 'Acih Mintarsih', 'TKJ', '0.94539617', '0.05', '0.5', '0.5', '0.5', '2019'),
(19, '0020263889', 'Aden Hermawan', 'TKJ', '0.97394720', '0.1', '0.5', '0.5', '0.75', '2019'),
(20, '9991530291', 'Adi Herdiansyah', 'TKJ', '0.94456343', '0.05', '0.5', '0.5', '0.5', '2019'),
(21, '0016765562', 'Adi Rahmat Fauzi', 'TKJ', '0.67891983', '0.02', '0.25', '0.33333333', '0.5', '2019'),
(22, '0032127042', 'Adih Gunawan', 'TKJ', '0.86759460', '0.1', '0.25', '0.5', '0.5', '2019'),
(23, '0011585952', 'Adimi', 'TKJ', '0.98584347', '0.05', '0.25', '0.5', '0.5', '2019'),
(24, '0164184807', 'Adin', 'TKJ', '0.92636214', '0.05', '0.5', '0.5', '0.5', '2019'),
(25, '0011541207', 'Aditia', 'TKJ', '0.96359745', '0.2', '0.5', '0.33333333', '0.75', '2019'),
(26, '0011586440', 'Adni', 'TKJ', '0.94135144', '0.1', '1', '0.5', '0.5', '2019'),
(27, '0015403257', 'Adra', 'TKJ', '0.96359745', '0.05', '0.5', '0.33333333', '1', '2019'),
(28, '0027261370', 'Aem. Mutaqien', 'TKJ', '0.93659293', '0.05', '0.25', '0.33333333', '0.5', '2019'),
(29, '9995742293', 'Aep', 'TKJ', '0.93742567', '0.1', '1', '0.5', '0.5', '2019'),
(30, '0026769781', 'Agnes Meilani', 'TKJ', '0.96359745', '0.05', '0.25', '0.2', '0.5', '2019'),
(31, '0017086338', 'Agus', 'TKJ', '0.95015467', '0.05', '0.5', '0.5', '1', '2019'),
(32, '0022877777', 'Agus Mustopa', 'TKJ', '0.96276471', '0.05', '0.5', '0.5', '0.75', '2019'),
(33, '9993054365', 'Agus Priatna', 'TKJ', '0.96276471', '0.05', '0.5', '0.33333333', '0.5', '2019'),
(34, '0033058074', 'Ahdi', 'TKJ', '0.93659293', '0.1', '0.5', '0.33333333', '0.75', '2019'),
(35, '0026513179', 'Ahmad Ahyudin', 'TKJ', '0.98655724', '0.1', '0.25', '0.5', '1', '2019'),
(36, '0020262855', 'Ahmad Badru Tamam', 'TKJ', '0.70033311', '0.02', '0.25', '0.33333333', '0.5', '2019'),
(37, '0049444818', 'Ahmad Bodin', 'TKJ', '0.86366883', '0.1', '0.25', '0.5', '1', '2019'),
(38, '0009004336', 'Ahmad Fajari', 'TKJ', '0.86997385', '0.1', '0.25', '0.5', '0.75', '2019'),
(39, '0027220516', 'Ahmad Fauzian Arifin', 'TKJ', '0.87318584', '0.1', '0.25', '0.5', '0.75', '2019'),
(40, '0004245171', 'Ahmad Iim', 'TKJ', '0.62181776', '0.1', '0.5', '0.5', '0.75', '2019'),
(41, '0026033028', 'Ahmad Jaelani', 'TKJ', '0.82560078', '0.05', '0.5', '0.5', '0.5', '2019'),
(42, '0008162965', 'Ahmad Juni', 'TKJ', '0.54877470', '0.05', '0.75', '0.5', '0.75', '2019'),
(43, '0027391864', 'Ahmad Matin Ansori', 'TKJ', '0.88900787', '0.2', '0.5', '0.5', '1', '2019'),
(44, '0012268882', 'Ahmad Saepudin', 'TKJ', '0.87639783', '0.05', '0.25', '0.33333333', '0.75', '2019'),
(45, '0011586172', 'Ahmad Sutisna', 'TKJ', '0.55995718', '0.05', '1', '0.33333333', '1', '2019'),
(46, '0025940551', 'Ahmad Taufik', 'TKJ', '0.88508210', '0.02', '0.25', '0.33333333', '0.5', '2019'),
(47, '0006189246', 'Ahyani', 'TKJ', '0.90173688', '0.02', '0.25', '0.33333333', '0.5', '2019'),
(48, '0005667744', 'Ahyudin', 'TKJ', '0.54806092', '0.05', '0.25', '0.5', '0.5', '2019'),
(49, '0013950032', 'Ai Umi Hapidatul Hidayah', 'TKJ', '0.87163933', '0.05', '0.5', '0.33333333', '1', '2019'),
(50, '0022389649', 'Ajat Sudrajat', 'TKJ', '0.90256961', '0.05', '0.25', '0.5', '0.75', '2019'),
(51, '0018584224', 'Aji Ripansyah', 'TKJ', '0.89138713', '0.05', '0.5', '0.5', '0.75', '2019'),
(52, '0029332300', 'Aji Saputra', 'TKJ', '0.65346183', '0.1', '0.5', '0.5', '0.75', '2019'),
(53, '0000981609', 'Ajid', 'TKJ', '0.88746136', '0.05', '0.25', '0.5', '0.5', '2019'),
(54, '9998506255', 'Ajril Aril Ilham', 'TKJ', '0.83904356', '0.1', '0.25', '0.5', '0.5', '2019'),
(55, '0000981355', 'Aldi', 'TKJ', '0.56542947', '0.1', '0.5', '0.5', '0.75', '2019'),
(56, '0020598008', 'Aldi Agustiara', 'TKJ', '0.87318584', '0.05', '0.5', '0.33333333', '0.75', '2019'),
(57, '0020081916', 'Aldi Setiawan', 'TKJ', '0.55995718', '0.1', '0', '0.5', '1', '2019'),
(58, '0009524682', 'Aldi Yana', 'TKJ', '0.79312398', '0.05', '0.25', '0.5', '0.5', '2019'),
(59, '9995773453', 'Alexander', 'TKJ', '0.90494887', '0.05', '0.5', '0.5', '0.5', '2019'),
(60, '9991512602', 'Ali', 'TKJ', '0.83749705', '0.1', '0.25', '0.5', '0.5', '2019'),
(61, '0018344118', 'Ali Hariri', 'TKJ', '0.87473235', '0.05', '0.5', '0.33333333', '0.75', '2019'),
(62, '0007388346', 'Ali Martodo', 'TKJ', '0.84856057', '0.1', '0.75', '0.5', '0.5', '2019'),
(63, '0009781593', 'Aliah', 'TKJ', '0.89543186', '0.05', '0.25', '0.5', '0.75', '2019'),
(64, '0023623700', 'Alpan Pratama', 'TKJ', '0.78669999', '0.1', '0.25', '0.5', '0.75', '2019'),
(65, '0029808395', 'Alpin', 'TKJ', '0.91993816', '0.1', '0.25', '0.5', '0.75', '2019'),
(66, '0014675163', 'Alus', 'TKJ', '0.85260530', '0.05', '0.75', '0.5', '0.75', '2019'),
(67, '0033910400', 'Alwi', 'TKJ', '0.75505593', '0.2', '0.25', '0.5', '0.75', '2019'),
(68, '0008326331', 'Amad', 'TKJ', '0.88591484', '0.05', '0.5', '0.5', '0.5', '2019'),
(69, '0000981619', 'Amedi', 'TKJ', '0.95967169', '0.1', '0.25', '0.5', '1', '2019'),
(70, '0026157837', 'Amelia Nuryani', 'TKJ', '0.65584108', '0.1', '0.25', '0.5', '1', '2019'),
(71, '0019973489', 'Amin', 'TKJ', '0.86212231', '0.1', '0.25', '0.5', '0.5', '2019'),
(72, '0014675535', 'Aminah', 'TKJ', '0.88115634', '0.05', '0.75', '0.5', '0.75', '2019'),
(73, '0004582770', 'Amirudin', 'TKJ', '0.93314302', '0.05', '0.5', '0.5', '0.5', '2019'),
(74, '9997524201', 'Amnah Amelia', 'TKJ', '1.00000002', '0.1', '0.25', '0.33333333', '0.5', '2019'),
(75, '0009673660', 'Amsar', 'TKJ', '0.27064002', '0.05', '0', '0.5', '1', '2019'),
(76, '0033998206', 'Amsir', 'TKJ', '0.97406617', '0.1', '0.25', '0.5', '0.5', '2019'),
(77, '0038420452', 'Anah', 'TKJ', '0.95027364', '0.1', '0.25', '0.5', '1', '2019'),
(78, '0008825656', 'Anan Setiawan', 'TKJ', '0.33606948', '0.05', '0.5', '0.33333333', '0.5', '2019'),
(79, '0000992969', 'Anang Wijaya', 'TKJ', '0.95538903', '0.2', '0.25', '0.5', '0.75', '2019'),
(80, '9981180017', 'Anda', 'TKJ', '0.70699502', '1', '0.5', '1', '0.75', '2019'),
(81, '0027787514', 'Anda Hidayatullah', 'TSM', '0.76730908', '0.02', '0.5', '0.33333333', '0.5', '2019'),
(82, '0009634636', 'Andi', 'TSM', '0.58541519', '0.05', '0.25', '0.33333333', '0.5', '2019'),
(83, '0011586051', 'Andi', 'TSM', '0.88377352', '0.1', '0.25', '0.5', '0.75', '2019'),
(84, '0017221131', 'Andi Anugrah', 'TSM', '0.82595767', '0.05', '0.25', '0.33333333', '0.75', '2019'),
(85, '0029652859', 'Andi Hermawan', 'TSM', '0.82512493', '0.05', '0.25', '0.5', '0.75', '2019'),
(86, '0024600609', 'Andi Purnawirawan', 'TSM', '0.85224841', '0.2', '0.5', '0.5', '0.5', '2019'),
(87, '0029758575', 'Andini Fitri Yanti', 'TSM', '0.94408758', '0.1', '0.5', '0.5', '0.75', '2019'),
(88, '0026568181', 'Andra', 'TSM', '0.94575306', '0.1', '0.5', '0.5', '1', '2019'),
(89, '0034116266', 'Andri Irawan', 'TSM', '0.98822272', '0.1', '0.25', '0.5', '0.75', '2019'),
(90, '9991539538', 'Andri Yani', 'TSM', '0.91946231', '0.1', '0', '0.5', '0.5', '2019'),
(91, '0012324471', 'Andrian', 'TSM', '0.72400668', '0.1', '0', '0.5', '0.5', '2019'),
(92, '0036289311', 'Angga', 'TSM', '0.53616465', '0.05', '0.25', '0.33333333', '0.5', '2019'),
(93, '0031425703', 'Anggara', 'TSM', '0.98310733', '0.05', '0', '0.33333333', '0.5', '2019'),
(94, '9996529887', 'Anggi Mulyadi', 'TSM', '0.95336667', '0.02', '0.25', '0.33333333', '0.75', '2019'),
(95, '0009358789', 'Anggi Sukmajaya', 'TSM', '0.88972165', '0.05', '0.25', '0.5', '0.75', '2019'),
(96, '0012623808', 'Ani Kurniawati', 'TSM', '0.89471808', '0.1', '0.5', '0.5', '1', '2019'),
(97, '0022963737', 'Aniah', 'TSM', '0.69164884', '0.1', '0.25', '0.5', '1', '2019'),
(98, '0037517924', 'Aning Jupriani', 'TSM', '0.98489177', '0.02', '0.5', '0.33333333', '0.5', '2019'),
(99, '0009684510', 'Anisa Agustina', 'TSM', '0.71377589', '0.05', '0.25', '0.33333333', '0.75', '2019'),
(100, '666', 'Tesss', 'TI', '0.83273854', '1', '0.25', '0.5', '1', '2019');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_perangkingan`
--

CREATE TABLE IF NOT EXISTS `hasil_perangkingan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nis` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jurusan` varchar(20) NOT NULL,
  `nilai_rata` float NOT NULL,
  `penghasilan_ortu` float NOT NULL,
  `tanggungan_ortu` int(11) NOT NULL,
  `pekerjaan_ortu` varchar(20) NOT NULL,
  `alat_transportasi` varchar(20) NOT NULL,
  `hasil` varchar(255) DEFAULT NULL,
  `rangking` int(11) DEFAULT NULL,
  `tahun` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=795 ;

--
-- Dumping data untuk tabel `hasil_perangkingan`
--

INSERT INTO `hasil_perangkingan` (`id`, `nis`, `nama`, `jurusan`, `nilai_rata`, `penghasilan_ortu`, `tanggungan_ortu`, `pekerjaan_ortu`, `alat_transportasi`, `hasil`, `rangking`, `tahun`) VALUES
(695, '0032548735', 'A. Iwan Setiawan', 'TKJ', 0.937426, 0.2, 0, '0.5', '1', '0.5574732412', 16, '2019'),
(696, '0034010116', 'A. Mansuruddin Faqih', 'TKJ', 0.908042, 0.1, 1, '0.5', '0.5', '0.566895084', 13, '2019'),
(697, '0003306710', 'Aan', 'TKJ', 0.563883, 0.1, 0, '0.5', '0.5', '0.362997862', 93, '2019'),
(698, '0025697409', 'Aan Hidayat', 'TKJ', 0.930288, 0.05, 1, '0.5', '0.75', '0.5749036476', 9, '2019'),
(699, '0027270512', 'Aan Triana', 'TKJ', 0.943017, 0.2, 1, '0.5', '1', '0.5994860912', 6, '2019'),
(700, '0027325379', 'Aang Epiriyana', 'TKJ', 0.954913, 0.1, 0, '0.5', '1', '0.5337687448', 30, '2019'),
(701, '0009703216', 'Aang Kornaefi', 'TKJ', 0.967523, 0.1, 1, '0.5', '1', '0.6583083592', 3, '2019'),
(702, '0036869435', 'Aap Adita', 'TKJ', 0.942184, 0.1, 1, '0.5', '1', '0.5691863048', 12, '2019'),
(703, '0007815091', 'Aap Apandi', 'TKJ', 0.940638, 0.05, 1, '0.33333333', '0.5', '0.5036295572', 48, '2019'),
(704, '0023431499', 'Aas Asiah', 'TKJ', 0.916845, 0.05, 0, '0.33333333', '1', '0.4850642464', 57, '2019'),
(705, '0004421347', 'Aas Komalasari', 'TKJ', 0.94611, 0.1, 0, '0.33333333', '0.5', '0.480599578', 61, '2019'),
(706, '0013110042', 'Aat Atmayudin', 'TKJ', 0.929455, 0.1, 1, '0.33333333', '0.75', '0.5296038608', 34, '2019'),
(707, '0003621564', 'Aat Supriatna', 'TKJ', 0.553533, 0.05, 1, '0.33333333', '0.75', '0.3792719516', 91, '2019'),
(708, '0003205296', 'Abdul Manan', 'TKJ', 0.95646, 0.05, 1, '0.33333333', '0.75', '0.564325488', 15, '2019'),
(709, '0011541157', 'Abdul Rohman', 'TKJ', 0.947775, 0.05, 1, '0.5', '0.5', '0.5261991512', 35, '2019'),
(710, '0003691536', 'Abidin Kholik', 'TKJ', 0.925529, 0.05, 1, '0.2', '0.75', '0.5371905876', 27, '2019'),
(711, '0005607727', 'Achmad Puadnudin', 'TKJ', 0.880324, 0.1, 1, '0.5', '0.5', '0.596916496', 7, '2019'),
(712, '0029086309', 'Acih Mintarsih', 'TKJ', 0.945396, 0.05, 1, '0.5', '0.5', '0.5253426212', 36, '2019'),
(713, '0020263889', 'Aden Hermawan', 'TKJ', 0.973947, 0.1, 1, '0.5', '0.75', '0.565620992', 14, '2019'),
(714, '9991530291', 'Adi Herdiansyah', 'TKJ', 0.944563, 0.05, 1, '0.5', '0.5', '0.5250428348', 37, '2019'),
(715, '0016765562', 'Adi Rahmat Fauzi', 'TKJ', 0.67892, 0.02, 0, '0.33333333', '0.5', '0.3604111384', 94, '2019'),
(716, '0032127042', 'Adih Gunawan', 'TKJ', 0.867595, 0.1, 0, '0.5', '0.5', '0.472334056', 66, '2019'),
(717, '0011585952', 'Adimi', 'TKJ', 0.985843, 0.05, 0, '0.5', '0.5', '0.4999036492', 51, '2019'),
(718, '0164184807', 'Adin', 'TKJ', 0.926362, 0.05, 1, '0.5', '0.5', '0.5184903704', 40, '2019'),
(719, '0011541207', 'Aditia', 'TKJ', 0.963597, 0.2, 1, '0.33333333', '0.75', '0.5718950816', 10, '2019'),
(720, '0011586440', 'Adni', 'TKJ', 0.941351, 0.1, 1, '0.5', '0.5', '0.6188865184', 4, '2019'),
(721, '0015403257', 'Adra', 'TKJ', 0.963597, 0.05, 1, '0.33333333', '1', '0.5418950816', 26, '2019'),
(722, '0027261370', 'Aem. Mutaqien', 'TKJ', 0.936593, 0.05, 0, '0.33333333', '0.5', '0.4621734544', 69, '2019'),
(723, '9995742293', 'Aep', 'TKJ', 0.937426, 0.1, 1, '0.5', '0.5', '0.6174732412', 5, '2019'),
(724, '0026769781', 'Agnes Meilani', 'TKJ', 0.963597, 0.05, 0, '0.2', '0.5', '0.455895082', 74, '2019'),
(725, '0017086338', 'Agus', 'TKJ', 0.950155, 0.05, 1, '0.5', '1', '0.5570556812', 18, '2019'),
(726, '0022877777', 'Agus Mustopa', 'TKJ', 0.962765, 0.05, 1, '0.5', '0.75', '0.5465952956', 23, '2019'),
(727, '9993054365', 'Agus Priatna', 'TKJ', 0.962765, 0.05, 1, '0.33333333', '0.5', '0.5115952952', 41, '2019'),
(728, '0033058074', 'Ahdi', 'TKJ', 0.936593, 0.1, 1, '0.33333333', '0.75', '0.5321734544', 31, '2019'),
(729, '0026513179', 'Ahmad Ahyudin', 'TKJ', 0.986557, 0.1, 0, '0.5', '1', '0.5451606064', 25, '2019'),
(730, '0020262855', 'Ahmad Badru Tamam', 'TKJ', 0.700333, 0.02, 0, '0.33333333', '0.5', '0.3681199192', 92, '2019'),
(731, '0049444818', 'Ahmad Bodin', 'TKJ', 0.863669, 0.1, 0, '0.5', '1', '0.5009207788', 49, '2019'),
(732, '0009004336', 'Ahmad Fajari', 'TKJ', 0.869974, 0.1, 0, '0.5', '0.75', '0.488190586', 56, '2019'),
(733, '0027220516', 'Ahmad Fauzian Arifin', 'TKJ', 0.873186, 0.1, 0, '0.5', '0.75', '0.4893469024', 55, '2019'),
(734, '0004245171', 'Ahmad Iim', 'TKJ', 0.621818, 0.1, 1, '0.5', '0.75', '0.4388543936', 81, '2019'),
(735, '0026033028', 'Ahmad Jaelani', 'TKJ', 0.825601, 0.05, 1, '0.5', '0.5', '0.4822162808', 60, '2019'),
(736, '0008162965', 'Ahmad Juni', 'TKJ', 0.548775, 0.05, 1, '0.5', '0.75', '0.437558892', 82, '2019'),
(737, '0027391864', 'Ahmad Matin Ansori', 'TKJ', 0.889008, 0.2, 1, '0.5', '1', '0.5800428332', 8, '2019'),
(738, '0012268882', 'Ahmad Saepudin', 'TKJ', 0.876398, 0.05, 0, '0.33333333', '0.75', '0.4555032184', 75, '2019'),
(739, '0011586172', 'Ahmad Sutisna', 'TKJ', 0.559957, 0.05, 1, '0.33333333', '1', '0.4765845844', 64, '2019'),
(740, '0025940551', 'Ahmad Taufik', 'TKJ', 0.885082, 0.02, 0, '0.33333333', '0.5', '0.4346295556', 84, '2019'),
(741, '0006189246', 'Ahyani', 'TKJ', 0.901737, 0.02, 0, '0.33333333', '0.5', '0.4406252764', 78, '2019'),
(742, '0005667744', 'Ahyudin', 'TKJ', 0.548061, 0.05, 0, '0.5', '0.5', '0.3423019312', 96, '2019'),
(743, '0013950032', 'Ai Umi Hapidatul Hidayah', 'TKJ', 0.871639, 0.05, 1, '0.33333333', '1', '0.5087901584', 45, '2019'),
(744, '0022389649', 'Ajat Sudrajat', 'TKJ', 0.90257, 0.05, 0, '0.5', '0.75', '0.4849250596', 58, '2019'),
(745, '0018584224', 'Aji Ripansyah', 'TKJ', 0.891387, 0.05, 1, '0.5', '0.75', '0.5208993668', 39, '2019'),
(746, '0029332300', 'Aji Saputra', 'TKJ', 0.653462, 0.1, 1, '0.5', '0.75', '0.4502462588', 77, '2019'),
(747, '0000981609', 'Ajid', 'TKJ', 0.887461, 0.05, 0, '0.5', '0.5', '0.4644860896', 68, '2019'),
(748, '9998506255', 'Ajril Aril Ilham', 'TKJ', 0.839044, 0.1, 0, '0.5', '0.5', '0.4620556816', 70, '2019'),
(749, '0000981355', 'Aldi', 'TKJ', 0.565429, 0.1, 1, '0.5', '0.75', '0.4185546092', 88, '2019'),
(750, '0020598008', 'Aldi Agustiara', 'TKJ', 0.873186, 0.05, 1, '0.33333333', '0.75', '0.494346902', 53, '2019'),
(751, '0020081916', 'Aldi Setiawan', 'TKJ', 0.559957, 0.1, 0, '0.5', '1', '0.3515845848', 95, '2019'),
(752, '0009524682', 'Aldi Yana', 'TKJ', 0.793124, 0.05, 0, '0.5', '0.5', '0.4305246328', 86, '2019'),
(753, '9995773453', 'Alexander', 'TKJ', 0.904949, 0.05, 1, '0.5', '0.5', '0.5107815932', 42, '2019'),
(754, '9991512602', 'Ali', 'TKJ', 0.837497, 0.1, 0, '0.5', '0.5', '0.461498938', 71, '2019'),
(755, '0018344118', 'Ali Hariri', 'TKJ', 0.874732, 0.05, 1, '0.33333333', '0.75', '0.4949036456', 52, '2019'),
(756, '0007388346', 'Ali Martodo', 'TKJ', 0.848561, 0.1, 1, '0.5', '0.5', '0.5454818052', 24, '2019'),
(757, '0009781593', 'Aliah', 'TKJ', 0.895432, 0.05, 0, '0.5', '0.75', '0.4823554696', 59, '2019'),
(758, '0023623700', 'Alpan Pratama', 'TKJ', 0.7867, 0.1, 0, '0.5', '0.75', '0.4582119964', 72, '2019'),
(759, '0029808395', 'Alpin', 'TKJ', 0.919938, 0.1, 0, '0.5', '0.75', '0.5061777376', 46, '2019'),
(760, '0014675163', 'Alus', 'TKJ', 0.852605, 0.05, 1, '0.5', '0.75', '0.546937908', 22, '2019'),
(761, '0033910400', 'Alwi', 'TKJ', 0.755056, 0.2, 0, '0.5', '0.75', '0.4768201348', 63, '2019'),
(762, '0008326331', 'Amad', 'TKJ', 0.885915, 0.05, 1, '0.5', '0.5', '0.5039293424', 47, '2019'),
(763, '0000981619', 'Amedi', 'TKJ', 0.959672, 0.1, 0, '0.5', '1', '0.5354818084', 29, '2019'),
(764, '0026157837', 'Amelia Nuryani', 'TKJ', 0.655841, 0.1, 0, '0.5', '1', '0.4261027888', 87, '2019'),
(765, '0019973489', 'Amin', 'TKJ', 0.862122, 0.1, 0, '0.5', '0.5', '0.4703640316', 67, '2019'),
(766, '0014675535', 'Aminah', 'TKJ', 0.881156, 0.05, 1, '0.5', '0.75', '0.5572162824', 17, '2019'),
(767, '0004582770', 'Amirudin', 'TKJ', 0.933143, 0.05, 1, '0.5', '0.5', '0.5209314872', 38, '2019'),
(768, '9997524201', 'Amnah Amelia', 'TKJ', 1, 0.1, 0, '0.33333333', '0.5', '0.5000000068', 50, '2019'),
(769, '0009673660', 'Amsar', 'TKJ', 0.27064, 0.05, 0, '0.5', '1', '0.2324304072', 100, '2019'),
(770, '0033998206', 'Amsir', 'TKJ', 0.974066, 0.1, 0, '0.5', '0.5', '0.5106638212', 43, '2019'),
(771, '0038420452', 'Anah', 'TKJ', 0.950274, 0.1, 0, '0.5', '1', '0.5320985104', 32, '2019'),
(772, '0008825656', 'Anan Setiawan', 'TKJ', 0.336069, 0.05, 1, '0.33333333', '0.5', '0.2859850124', 99, '2019'),
(773, '0000992969', 'Anang Wijaya', 'TKJ', 0.955389, 0.2, 0, '0.5', '0.75', '0.5489400508', 21, '2019'),
(774, '9981180017', 'Anda', 'TKJ', 0.706995, 1, 1, '1', '0.75', '0.7995182072', 1, '2019'),
(775, '0027787514', 'Anda Hidayatullah', 'TSM', 0.767309, 0.02, 1, '0.33333333', '0.5', '0.4322312684', 85, '2019'),
(776, '0009634636', 'Andi', 'TSM', 0.585415, 0.05, 0, '0.33333333', '0.5', '0.335749468', 97, '2019'),
(777, '0011586051', 'Andi', 'TSM', 0.883774, 0.1, 0, '0.5', '0.75', '0.4931584672', 54, '2019'),
(778, '0017221131', 'Andi Anugrah', 'TSM', 0.825958, 0.05, 0, '0.33333333', '0.75', '0.4373447608', 83, '2019'),
(779, '0029652859', 'Andi Hermawan', 'TSM', 0.825125, 0.05, 0, '0.5', '0.75', '0.4570449748', 73, '2019'),
(780, '0024600609', 'Andi Purnawirawan', 'TSM', 0.852248, 0.2, 1, '0.5', '0.5', '0.5368094276', 28, '2019'),
(781, '0029758575', 'Andini Fitri Yanti', 'TSM', 0.944088, 0.1, 1, '0.5', '0.75', '0.5548715288', 19, '2019'),
(782, '0026568181', 'Andra', 'TSM', 0.945753, 0.1, 1, '0.5', '1', '0.5704711016', 11, '2019'),
(783, '0034116266', 'Andri Irawan', 'TSM', 0.988223, 0.1, 0, '0.5', '0.75', '0.5307601792', 33, '2019'),
(784, '9991539538', 'Andri Yani', 'TSM', 0.919462, 0.1, 0, '0.5', '0.5', '0.4510064316', 76, '2019'),
(785, '0012324471', 'Andrian', 'TSM', 0.724007, 0.1, 0, '0.5', '0.5', '0.3806424048', 90, '2019'),
(786, '0036289311', 'Angga', 'TSM', 0.536165, 0.05, 0, '0.33333333', '0.5', '0.3180192736', 98, '2019'),
(787, '0031425703', 'Anggara', 'TSM', 0.983107, 0.05, 0, '0.33333333', '0.5', '0.4389186384', 80, '2019'),
(788, '9996529887', 'Anggi Mulyadi', 'TSM', 0.953367, 0.02, 0, '0.33333333', '0.75', '0.4742120008', 65, '2019'),
(789, '0009358789', 'Anggi Sukmajaya', 'TSM', 0.889722, 0.05, 0, '0.5', '0.75', '0.480299794', 62, '2019'),
(790, '0012623808', 'Ani Kurniawati', 'TSM', 0.894718, 0.1, 1, '0.5', '1', '0.5520985088', 20, '2019'),
(791, '0022963737', 'Aniah', 'TSM', 0.691649, 0.1, 0, '0.5', '1', '0.4389935824', 79, '2019'),
(792, '0037517924', 'Aning Jupriani', 'TSM', 0.984892, 0.02, 1, '0.33333333', '0.5', '0.5105610368', 44, '2019'),
(793, '0009684510', 'Anisa Agustina', 'TSM', 0.713776, 0.05, 0, '0.33333333', '0.75', '0.39695932', 89, '2019'),
(794, '666', 'Tesss', 'TI', 0.832739, 1, 0, '0.5', '1', '0.7597858744', 2, '2019');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE IF NOT EXISTS `kriteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(3) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `jenis` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id`, `kode`, `nama`, `jenis`) VALUES
(1, 'c1', 'Nilai Rata Rata', 'benefit'),
(2, 'c2', 'Penghasilan Orang Tua', 'cost'),
(3, 'c3', 'Tanggungan Orang Tua', 'benefit'),
(4, 'c4', 'Pekerjaan Orang Tua', 'cost'),
(5, 'c5', 'Alat Transpormasi', 'benefit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilaikriteria`
--

CREATE TABLE IF NOT EXISTS `nilaikriteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c1_1` int(255) DEFAULT NULL,
  `c1_2` int(255) DEFAULT NULL,
  `c1_3` int(255) DEFAULT NULL,
  `c1_4` int(255) DEFAULT NULL,
  `c2_1` int(255) DEFAULT NULL,
  `c2_2` int(255) DEFAULT NULL,
  `c2_3` int(255) DEFAULT NULL,
  `c3_1` int(255) DEFAULT NULL,
  `c3_2` int(255) DEFAULT NULL,
  `c4_1` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `nilaikriteria`
--

INSERT INTO `nilaikriteria` (`id`, `c1_1`, `c1_2`, `c1_3`, `c1_4`, `c2_1`, `c2_2`, `c2_3`, `c3_1`, `c3_2`, `c4_1`) VALUES
(1, 2, 2, 3, 4, 3, 3, 4, 2, 3, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perbandingan_kriteria`
--

CREATE TABLE IF NOT EXISTS `perbandingan_kriteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kriteria` varchar(25) NOT NULL,
  `c1` double NOT NULL,
  `c2` double NOT NULL,
  `c3` double NOT NULL,
  `c4` double NOT NULL,
  `c5` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `perbandingan_kriteria`
--

INSERT INTO `perbandingan_kriteria` (`id`, `kriteria`, `c1`, `c2`, `c3`, `c4`, `c5`) VALUES
(1, 'c1', 1, 2, 2, 3, 4),
(2, 'c2', 0.5, 1, 3, 3, 4),
(3, 'c3', 0.5, 0.33333333333333, 1, 2, 3),
(4, 'c4', 0.33333333333333, 0.33333333333333, 0.5, 1, 3),
(5, 'c5', 0.25, 0.25, 0.33333333333333, 0.33333333333333, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perbandingan_kriteria_copy1`
--

CREATE TABLE IF NOT EXISTS `perbandingan_kriteria_copy1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kriteria` varchar(25) NOT NULL,
  `c1` double NOT NULL,
  `c2` double NOT NULL,
  `c3` double NOT NULL,
  `c4` double NOT NULL,
  `c5` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `perbandingan_kriteria_copy1`
--

INSERT INTO `perbandingan_kriteria_copy1` (`id`, `kriteria`, `c1`, `c2`, `c3`, `c4`, `c5`) VALUES
(1, 'c1', 1, 2, 2, 3, 4),
(2, 'c2', 0.5, 1, 3, 3, 3),
(3, 'c3', 0.5, 0.33333333333333, 1, 2, 3),
(4, 'c4', 0.33333333333333, 0.33333333333333, 0.5, 1, 2),
(5, 'c5', 0.25, 0.33333333333333, 0.33333333333333, 0.5, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
