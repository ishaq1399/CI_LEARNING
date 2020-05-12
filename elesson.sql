-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Bulan Mei 2020 pada 00.55
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elesson`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(3) NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT 'administrator',
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `level` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `blokir` int(11) NOT NULL,
  `id_session` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`, `level`, `alamat`, `no_telp`, `email`, `blokir`, `id_session`) VALUES
(3, 'admin', '123', 'ADMIN E-LESSON 1', 1, 'Jl Trunojoyo', '089675925082', 'business.mynddigital@gmail.com', 2, 'rncnkbv1l1h13hkoqcedl86bli'),
(5, 'admin2', 'c84258e9c39059a89ab77d846ddab909', 'ADMIN E-LESSON 2', 1, 'jalan-jalan', '89519503391', 'ishaqhusainynur99@gmail.com', 2, 'c84258e9c39059a89ab77d846ddab909');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blokir`
--

CREATE TABLE `blokir` (
  `id_blokir` int(11) NOT NULL,
  `blokir` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `blokir`
--

INSERT INTO `blokir` (`id_blokir`, `blokir`) VALUES
(1, 'YA'),
(2, 'TIDAK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `chat`
--

CREATE TABLE `chat` (
  `id` int(10) UNSIGNED NOT NULL,
  `from` varchar(255) NOT NULL DEFAULT '',
  `to` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recd` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `file_materi`
--

CREATE TABLE `file_materi` (
  `id_file` int(7) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `id_kelas` varchar(5) NOT NULL,
  `id_matapelajaran` varchar(5) NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `tgl_posting` date NOT NULL,
  `pembuat` varchar(50) NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `file_materi`
--

INSERT INTO `file_materi` (`id_file`, `judul`, `id_kelas`, `id_matapelajaran`, `nama_file`, `tgl_posting`, `pembuat`, `hits`) VALUES
(148, '', '7a', 'BI2', '2.mp4', '2020-01-23', '7', 0),
(147, 'coba upload', '8d', 'BI10', 'Menampilkan berapa jumlah employee yang memiliki order.docx', '2020-01-14', '10', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban`
--

CREATE TABLE `jawaban` (
  `id` int(50) NOT NULL,
  `id_tq` int(50) NOT NULL,
  `id_quiz` int(50) NOT NULL,
  `id_siswa` int(50) NOT NULL,
  `jawaban` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jawaban`
--

INSERT INTO `jawaban` (`id`, `id_tq`, `id_quiz`, `id_siswa`, `jawaban`) VALUES
(5, 44, 88, 9, 'iya dag'),
(6, 45, 89, 9, 'iya kamu makan'),
(7, 41, 87, 9, 'nemen'),
(8, 46, 90, 5, 'podo'),
(9, 32, 81, 5, 'asasas'),
(10, 40, 86, 5, 'nasi lahh'),
(11, 47, 91, 5, 'asas'),
(14, 48, 93, 11, 'asdjahdjhad'),
(15, 49, 94, 11, 'IYa mas'),
(16, 47, 92, 11, 'asasaa'),
(17, 47, 91, 11, 'asdasdsad'),
(18, 50, 95, 11, 'asasas'),
(19, 51, 96, 9, 'ayo gasss'),
(20, 52, 97, 9, 'oke oke'),
(21, 53, 98, 16, 'jhghjg'),
(22, 54, 99, 16, 'ajhgasgd'),
(24, 47, 92, 18, 'sdffs'),
(25, 47, 91, 18, 'sff'),
(26, 56, 101, 18, 'hayooo'),
(27, 57, 102, 9, 'sdff'),
(28, 58, 103, 9, 'loka'),
(29, 59, 104, 9, 'wefwefwfwefewf'),
(30, 60, 105, 9, 'dsfsfsdffs'),
(31, 61, 106, 10, 'dsfdsfsdf'),
(32, 62, 107, 16, 'sdsddsf'),
(34, 64, 109, 9, 'xdfdfdsf'),
(35, 65, 111, 16, 'asassa'),
(37, 68, 114, 9, 'asdasdasd'),
(38, 69, 115, 16, 'asgdhsagd'),
(39, 69, 115, 19, 'sadasdd'),
(40, 67, 113, 19, 'dwinda'),
(41, 70, 116, 19, 'adawwadawd'),
(42, 71, 118, 19, 'asdsad'),
(43, 72, 119, 19, 'hhsjahdkjashsajdasd'),
(44, 73, 120, 19, 'jasdhsanbnbxnbcnxcxc'),
(45, 73, 120, 10, 'asdsadassad'),
(46, 74, 121, 10, 'sdaasdasdad'),
(47, 75, 122, 9, 'bsbajdajhdjahdad'),
(51, 76, 123, 10, 'asdsad'),
(52, 76, 124, 10, 'sadasdasd'),
(53, 77, 125, 20, 'asasas'),
(54, 78, 126, 20, 'Pendidikan Agama Islam'),
(56, 80, 128, 21, 'jhsjdhdsjhfjsdhf'),
(57, 81, 129, 22, 'asasd'),
(58, 81, 130, 22, 'asdsad'),
(60, 82, 131, 23, 'jaskes'),
(61, 80, 128, 23, 'asas'),
(62, 83, 132, 24, 'adewawa'),
(63, 85, 133, 25, 'Iya Tau sekali... Emang kenapa lawong enak'),
(64, 86, 134, 25, 'dsfdsfdsfsdfsdf'),
(65, 87, 135, 26, 'bangsat'),
(66, 88, 136, 26, 'gashgsahghasdsad'),
(67, 89, 137, 26, 'sdfsdfsdfsdf'),
(68, 91, 139, 27, 'menang'),
(70, 92, 141, 26, 'dshdsjsdfjsd'),
(71, 93, 142, 26, 'hghghgj'),
(72, 94, 143, 26, 'dsfdsfsdfsf'),
(73, 96, 146, 26, 'asdashgasd'),
(74, 97, 147, 26, 'asjbsajhashjsad'),
(76, 99, 149, 25, 'sadasdaads'),
(77, 100, 150, 23, 'aoadkada'),
(78, 101, 151, 23, 'hagsdhjgadsadsadsad'),
(79, 102, 152, 23, 'asdasasdas'),
(80, 103, 153, 23, 'sajsajhsad'),
(81, 104, 154, 26, 'kajajssad'),
(82, 105, 155, 9, 'asdbashjsad'),
(83, 106, 156, 9, 'sadasasdasd'),
(85, 108, 159, 27, 'asdsasda'),
(86, 109, 160, 9, 'asdasdasdsa'),
(87, 110, 161, 9, 'asdsadadadsaddssfsd'),
(88, 111, 162, 9, 'adapatasi dengan orang lain'),
(89, 112, 163, 26, 'oeoke'),
(90, 113, 164, 26, 'sa'),
(91, 114, 165, 27, 'ashdahdhajd'),
(92, 115, 166, 27, 'sadsadsad'),
(93, 116, 167, 27, 'sadsadsad'),
(94, 117, 168, 28, 'sdjshdjsdsd'),
(95, 118, 169, 28, 'saadasdasdad'),
(96, 119, 170, 28, 'sadasasdasd'),
(97, 120, 171, 22, 'sjajhjashdjahdjasd'),
(98, 121, 172, 22, 'asnmdbsahashjsagasd'),
(99, 122, 173, 22, 'asdsdad'),
(100, 122, 173, 28, 'asdasdsadsa'),
(101, 123, 174, 28, 'fsfdsf'),
(102, 125, 176, 28, ''),
(103, 126, 177, 28, 'asd'),
(104, 126, 178, 28, 'wadwad'),
(105, 127, 179, 22, 'hghfhg'),
(107, 104, 154, 29, 'ghgg'),
(108, 129, 181, 29, 'sdsadsa'),
(109, 128, 180, 29, 'sdadsa'),
(110, 130, 182, 29, 'asdsadsad'),
(111, 131, 183, 29, 'nbnbnbnb'),
(112, 133, 184, 30, 'wdwad'),
(113, 134, 185, 30, 'sdajjshadjahds'),
(114, 135, 186, 30, 'asdasd'),
(115, 136, 187, 30, 'adasdsad'),
(116, 138, 188, 9, 'sad'),
(117, 139, 189, 30, 'sdbanbad'),
(119, 131, 183, 31, 'sjhdjshdjkahjdhajd'),
(121, 119, 170, 27, 'oke babang'),
(123, 144, 192, 27, 'asdsad'),
(125, 140, 190, 9, 'sdsd'),
(126, 145, 193, 27, 'sjhdajhasjkdasd'),
(128, 147, 194, 27, 'asdsad'),
(129, 148, 195, 27, 'dsfssd'),
(130, 149, 196, 27, 'sdfsdfds'),
(136, 150, 198, 35, ''),
(137, 150, 197, 35, ''),
(140, 152, 200, 31, 'asdjshadjsad'),
(141, 153, 201, 31, 'adad'),
(143, 107, 157, 9, 'adsada'),
(144, 155, 203, 9, 'sdffsdsdfsdf'),
(145, 156, 204, 35, 'sdfsfsdfsd'),
(146, 157, 205, 9, 'sdfsdfsfsd'),
(147, 158, 206, 35, 'adssadasds'),
(150, 159, 207, 39, 'asdsahdghjad'),
(152, 160, 208, 40, 'ashdghasghjsad'),
(153, 161, 209, 40, 'asdbasdbjsd'),
(154, 159, 207, 40, 'asdhgsahdgasjd'),
(157, 162, 210, 40, 'sdjhsdh'),
(158, 162, 211, 40, 'suidyhfuysd'),
(159, 163, 212, 40, 'asjdhajhkad'),
(160, 164, 213, 40, 'adhhad'),
(162, 165, 214, 40, 'adadadda'),
(164, 165, 214, 35, 'sdvsdf'),
(166, 166, 215, 35, 'zdsfsfsd'),
(168, 167, 216, 35, 'tidorr'),
(169, 164, 213, 35, 'sajhdshakhasdj'),
(171, 168, 218, 40, 'uqweiywuqewew'),
(172, 151, 199, 40, 'yutyutuytyu'),
(173, 169, 219, 40, 'vhjsgad');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` int(5) NOT NULL,
  `id_kelas` varchar(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `id_pengajar` int(9) NOT NULL,
  `id_siswa` int(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `id_kelas`, `nama`, `id_pengajar`, `id_siswa`) VALUES
(1, '7a', 'VII - A', 10, 0),
(2, '7b', 'VII - B', 7, 9),
(3, '7c', 'VII - C', 9, 0),
(4, '7d', 'VII - D', 0, 0),
(5, '8a', 'VIII - A', 0, 0),
(6, '8b', 'VIII - B', 0, 0),
(7, '8c', 'VIII - C', 9, 0),
(9, '8d', 'VIII - D', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `id` int(5) NOT NULL,
  `id_matapelajaran` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `id_kelas` varchar(5) NOT NULL,
  `id_pengajar` int(9) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`id`, `id_matapelajaran`, `nama`, `id_kelas`, `id_pengajar`, `deskripsi`) VALUES
(1, 'BI1', 'Bahasa Indonesia Kls 7', '7b', 7, 'Guru Tetap'),
(2, 'BI2', 'Bahasa Indonesia Kls2', '7a', 7, ''),
(3, 'G1', 'Geografi Kls1', '7b', 0, ''),
(4, 'G2', 'Geografi Kls2', '', 0, ''),
(5, 'BI10', 'Bahasa Indonesia 10', '8d', 10, ''),
(6, 'B6', 'ingrris ', '8a', 9, ''),
(7, 'MAT1', 'Matematika', '7d', 9, 'Matematika Dasar'),
(8, 'FI2', 'FISIKA 2', '8d', 9, ''),
(9, 'FI3', 'Fisika 3', '7d', 0, ''),
(13, 'MTK5', 'Matematika', '7d', 0, ''),
(11, 'Sos1', 'sosial', '7b', 7, 'sd'),
(12, 'Bio3', 'Biologi', '7d', 9, ''),
(15, 'Kim1', 'Kimia 1', '7a', 10, 'kimiaku'),
(16, 'kim2', 'kimia 2', '7b', 7, 'kim<span style=\"white-space:pre\">	</span>'),
(25, 'SO2', 'SIstemOperasi', '7b', 7, ''),
(26, 'MS1', 'matkul siang', '8d', 10, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `static_content` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('pengajar','admin') COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(2, 'Manajemen Admin', '?module=admin', '', '', 'N', 'admin', 'N', 2, ''),
(18, 'Materi', '?module=materi', '', '', 'N', 'pengajar', 'Y', 6, 'semua-berita.html'),
(37, 'Manajemen Siswa', '?module=siswa', '', 'gedungku.jpg', 'Y', 'admin', 'Y', 3, 'profil-kami.html'),
(10, 'Manajemen Modul', '?module=modul', '', '', 'N', 'admin', 'N', 1, ''),
(31, 'Mata Pelajaran', '?module=matapelajaran', '', '', 'Y', 'pengajar', 'Y', 5, ''),
(63, 'Manajemen Quiz', '?module=quiz', '', '', 'N', 'pengajar', 'Y', 7, ''),
(41, 'Manajemen Kelas', ' ?module=kelas', '', '', 'N', 'pengajar', 'Y', 4, 'semua-agenda.html'),
(65, 'Registrasi Siswa', '?module=registrasi', '', '', 'Y', 'admin', 'Y', 8, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id` int(50) NOT NULL,
  `id_tq` int(50) NOT NULL,
  `id_siswa` int(50) NOT NULL,
  `benar` int(10) NOT NULL,
  `salah` int(10) NOT NULL,
  `tidak_dikerjakan` int(50) NOT NULL,
  `persentase` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id`, `id_tq`, `id_siswa`, `benar`, `salah`, `tidak_dikerjakan`, `persentase`) VALUES
(1, 39, 1, 0, 1, 0, 0),
(4, 42, 9, 1, 0, 0, 100),
(5, 43, 9, 1, 0, 0, 100),
(6, 41, 9, 1, 0, 0, 100),
(7, 32, 5, 1, 2, 0, 33),
(8, 47, 5, 1, 0, 0, 100),
(11, 47, 11, 1, 0, 0, 100),
(12, 52, 9, 1, 0, 0, 100),
(13, 47, 18, 1, 0, 0, 100),
(14, 56, 18, 1, 0, 0, 100),
(15, 57, 9, 1, 0, 0, 100),
(16, 58, 9, 0, 1, 0, 0),
(17, 60, 9, 0, 1, 0, 0),
(18, 62, 16, 0, 1, 0, 0),
(19, 77, 20, 0, 1, 0, 0),
(20, 82, 23, 1, 0, 0, 100),
(21, 80, 23, 1, 0, 0, 100),
(22, 83, 24, 1, 0, 0, 100),
(23, 87, 26, 0, 1, 0, 0),
(24, 100, 23, 1, 0, 0, 100),
(26, 109, 9, 1, 0, 0, 100),
(27, 113, 26, 1, 0, 0, 100),
(28, 137, 30, 1, 1, 0, 50),
(30, 141, 9, 2, 0, 0, 100),
(32, 143, 27, 0, 1, 0, 0),
(35, 142, 27, 0, 2, 0, 0),
(37, 146, 27, 1, 1, 0, 50),
(40, 107, 9, 0, 1, 0, 0),
(43, 162, 40, 1, 0, 0, 100),
(45, 166, 35, 1, 0, 0, 100),
(46, 151, 40, 1, 0, 0, 100);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_soal_esay`
--

CREATE TABLE `nilai_soal_esay` (
  `id` int(50) NOT NULL,
  `id_tq` int(50) NOT NULL,
  `id_siswa` int(50) NOT NULL,
  `nilai` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_soal_esay`
--

INSERT INTO `nilai_soal_esay` (`id`, `id_tq`, `id_siswa`, `nilai`) VALUES
(20, 32, 5, '100'),
(17, 45, 9, '100'),
(18, 41, 9, '50'),
(21, 46, 5, '100'),
(25, 47, 11, '60'),
(24, 49, 11, '80'),
(26, 50, 11, '100'),
(27, 51, 9, '90'),
(28, 52, 9, '100'),
(29, 53, 16, '90'),
(30, 47, 18, '95'),
(31, 57, 9, '90'),
(32, 58, 9, '100'),
(33, 59, 9, '90'),
(34, 60, 9, '100'),
(35, 61, 10, '60'),
(36, 68, 9, '90'),
(37, 69, 19, '90'),
(38, 75, 9, '90'),
(39, 75, 9, '90'),
(40, 77, 20, '70'),
(41, 80, 21, '100'),
(42, 81, 22, '90'),
(44, 80, 23, '70'),
(45, 80, 23, '70'),
(46, 82, 23, '60'),
(47, 83, 24, '80'),
(48, 85, 25, '100'),
(49, 87, 26, '100'),
(50, 91, 27, '90'),
(51, 105, 9, '90'),
(52, 106, 9, '100'),
(72, 155, 9, '100'),
(54, 109, 9, '90'),
(55, 110, 9, '90'),
(56, 111, 9, '70'),
(57, 117, 28, '100'),
(59, 129, 29, '70'),
(60, 128, 29, '90'),
(61, 130, 29, '60'),
(62, 131, 29, '40'),
(63, 133, 30, '90'),
(64, 138, 9, '80'),
(68, 140, 9, '90'),
(66, 131, 31, '70'),
(71, 150, 35, '75'),
(73, 157, 9, '70'),
(74, 157, 9, '80'),
(75, 159, 39, '100'),
(77, 161, 40, '90'),
(78, 159, 40, '90'),
(92, 151, 40, '90'),
(91, 168, 40, '90'),
(81, 162, 40, '90'),
(82, 164, 40, '90'),
(83, 165, 40, '100'),
(85, 165, 35, '40'),
(86, 166, 35, '90'),
(88, 167, 35, '100'),
(89, 164, 35, '80');

-- --------------------------------------------------------

--
-- Struktur dari tabel `online`
--

CREATE TABLE `online` (
  `ip` varchar(20) NOT NULL,
  `id_siswa` int(50) NOT NULL,
  `tanggal` date NOT NULL,
  `online` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `online`
--

INSERT INTO `online` (`ip`, `id_siswa`, `tanggal`, `online`) VALUES
('::1', 7, '2019-12-02', 'T'),
('::1', 5, '2019-12-14', 'T'),
('::1', 9, '2020-01-14', 'T'),
('::1', 11, '2019-12-14', 'T'),
('::1', 13, '2019-12-04', 'T'),
('::1', 14, '2019-12-04', 'T'),
('::1', 15, '2019-12-04', 'Y'),
('::1', 16, '2019-12-15', 'T'),
('::1', 1, '2019-12-14', 'T'),
('::1', 2, '2019-12-05', 'T'),
('::1', 3, '2019-12-13', 'T'),
('::1', 8, '2019-12-13', 'T'),
('::1', 10, '2019-12-15', 'T'),
('::1', 18, '2020-01-09', 'T'),
('::1', 19, '2019-12-15', 'T'),
('::1', 20, '2019-12-15', 'T'),
('::1', 21, '2019-12-15', 'T'),
('::1', 22, '2019-12-16', 'T'),
('::1', 23, '2020-01-13', 'T'),
('::1', 24, '2019-12-16', 'T'),
('::1', 25, '2019-12-16', 'T'),
('::1', 26, '2019-12-16', 'T'),
('::1', 27, '2020-01-09', 'T'),
('::1', 28, '2019-12-16', 'T'),
('::1', 29, '2020-01-13', 'T'),
('::1', 30, '2019-12-16', 'T'),
('::1', 31, '2020-01-09', 'T'),
('::1', 32, '2019-12-20', 'T'),
('::1', 33, '2019-12-28', 'T'),
('::1', 34, '2019-12-28', 'T'),
('::1', 35, '2020-01-14', 'T'),
('::1', 36, '2020-01-05', 'T'),
('::1', 39, '2020-01-12', 'T'),
('::1', 40, '2020-01-31', 'T'),
('::1', 41, '2020-01-10', 'T'),
('::1', 42, '2020-01-13', 'T'),
('::1', 43, '2020-01-16', 'T'),
('::1', 44, '2020-01-16', 'T'),
('::1', 45, '2020-01-20', 'T');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajar`
--

CREATE TABLE `pengajar` (
  `id_pengajar` int(9) NOT NULL,
  `nip` char(12) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username_login` varchar(100) NOT NULL,
  `password_login` varchar(100) NOT NULL,
  `level` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `foto` varchar(100) NOT NULL,
  `website` varchar(100) DEFAULT NULL,
  `jabatan` varchar(200) NOT NULL,
  `blokir` enum('Y','N') NOT NULL DEFAULT 'N',
  `id_session` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengajar`
--

INSERT INTO `pengajar` (`id_pengajar`, `nip`, `nama_lengkap`, `username_login`, `password_login`, `level`, `alamat`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `no_telp`, `email`, `foto`, `website`, `jabatan`, `blokir`, `id_session`) VALUES
(7, '12390', 'dwinda', 'dwinda', 'dwinda', 2, 'situbondo', 'jember', '2015-06-28', 'P', 'Hindu', '090909', 'dwindaayulia@gmail.com', 'download.jpg', 'http://aasasasassa', 'guru', 'N', 'b3t38rpo37mvspn2mpf2hphclb'),
(9, '567890', 'Nada Hasni Muhammad', 'dadang', 'dadang', 2, 'jember', 'adadd', '2019-12-05', 'L', 'Islam', 'adada', 'ishaqhusainy99@gmail.com', 'Capture.JPG', 'http://dadadad.comsas', 'wewesss444', 'N', '843m1l083nm9tak7i40m7phtqm'),
(10, '9090909', 'guru', 'guru', 'guru', 2, 'jbshajsad', 'jhhsd', '2019-12-15', 'L', 'Islam', '78968696698', 'aris@gmail.com', 'pattern.JPG', 'http://fdfdf', 'guru', 'N', 'm8ucgsil8tc3e40pf4jm9506r6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `quiz_esay`
--

CREATE TABLE `quiz_esay` (
  `id_quiz` int(9) NOT NULL,
  `id_tq` int(9) NOT NULL,
  `pertanyaan` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tgl_buat` date NOT NULL,
  `jenis_soal` varchar(50) NOT NULL DEFAULT 'esay'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `quiz_esay`
--

INSERT INTO `quiz_esay` (`id_quiz`, `id_tq`, `pertanyaan`, `gambar`, `tgl_buat`, `jenis_soal`) VALUES
(94, 49, 'asgahgsas', '', '2019-12-14', 'esay'),
(82, 0, 'asdasdadadas', '', '2019-12-13', 'esay'),
(87, 41, 'b indo itu gampang gampang susah', '', '2019-12-14', 'esay'),
(92, 47, '<h1>asdada</h1>', '', '2019-12-14', 'esay'),
(89, 45, 'aku maka gak?', '', '2019-12-14', 'esay'),
(91, 47, 'asasBJKhs', '', '2019-12-14', 'esay'),
(95, 50, 'aer', '', '2019-12-14', 'esay'),
(96, 51, '<b>hayo bos jalan jalan</b>', '', '2019-12-14', 'esay'),
(97, 52, 'asasasasaassa', '', '2019-12-14', 'esay'),
(102, 57, '<h3>adsawadw</h3>', '', '2019-12-15', 'esay'),
(103, 58, 'adawad', '', '2019-12-15', 'esay'),
(104, 59, '<div style=\"text-align: center;\">fdgdfggdfdg</div>', '', '2019-12-15', 'esay'),
(105, 60, 'sdfsdsfdsdf', '', '2019-12-15', 'esay'),
(106, 61, 'sdfsdfsfdfsd', '', '2019-12-15', 'esay'),
(110, 64, 'dsfsdfsf', '', '2019-12-15', 'esay'),
(109, 64, 'sadsad', '', '2019-12-15', 'esay'),
(114, 68, '<h3>sad</h3>', '', '2019-12-15', 'esay'),
(117, 64, '1+2', '', '2019-12-15', 'esay'),
(115, 69, '<i>anjdkhasd</i>', '', '2019-12-15', 'esay'),
(129, 81, 'dsfd', '', '2019-12-15', 'esay'),
(128, 80, 'asdasdasdasd', '', '2019-12-15', 'esay'),
(130, 81, 'sdsd', '', '2019-12-15', 'esay'),
(131, 82, 'kasles', '', '2019-12-15', 'esay'),
(132, 83, 'adwwad', '', '2019-12-15', 'esay'),
(152, 102, 'asdasdasd', '', '2019-12-16', 'esay'),
(215, 166, 'apa yang dimaksut hiu', '', '2020-01-12', 'esay'),
(134, 86, 'sdfsdf', '', '2019-12-16', 'esay'),
(216, 167, 'malam - malam enaknya ngapain ?', '', '2020-01-13', 'esay'),
(140, 91, 'dsfskjfsdfhsdf', '', '2019-12-16', 'esay'),
(139, 91, 'indonesia....&nbsp;', '', '2019-12-16', 'esay'),
(203, 155, 'sdfsdffsds', '', '2020-01-10', 'esay'),
(157, 107, 'asdsaadssad', '', '2019-12-16', 'esay'),
(205, 157, 'adasdsa', '', '2020-01-10', 'esay'),
(207, 159, 'dfafasfsa', '', '2020-01-10', 'esay'),
(218, 168, 'sdfsdg', '', '2020-01-16', 'esay'),
(217, 157, 'sdkjsad', '', '2020-01-13', 'esay'),
(199, 151, 'sdjhfjsf', '', '2020-01-10', 'esay'),
(183, 131, 'asdsadsad', '', '2019-12-16', 'esay'),
(213, 164, 'adshhahjjajaaa', '', '2020-01-10', 'esay'),
(214, 165, 'sfaaf', '', '2020-01-12', 'esay'),
(219, 169, 'asjhdshagdhsagjhsad', '', '2020-01-27', 'esay');

-- --------------------------------------------------------

--
-- Struktur dari tabel `quiz_pilganda`
--

CREATE TABLE `quiz_pilganda` (
  `id_quiz` int(10) NOT NULL,
  `id_tq` int(9) NOT NULL,
  `pertanyaan` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `pil_a` text NOT NULL,
  `pil_b` text NOT NULL,
  `pil_c` text NOT NULL,
  `pil_d` text NOT NULL,
  `kunci` varchar(1) NOT NULL,
  `tgl_buat` date NOT NULL,
  `jenis_soal` varchar(50) NOT NULL DEFAULT 'pilganda'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `quiz_pilganda`
--

INSERT INTO `quiz_pilganda` (`id_quiz`, `id_tq`, `pertanyaan`, `gambar`, `pil_a`, `pil_b`, `pil_c`, `pil_d`, `kunci`, `tgl_buat`, `jenis_soal`) VALUES
(223, 57, 'ad', '', 'a', 'b', 'c', 'd', 'C', '2019-12-15', 'pilganda'),
(224, 58, 'a', '', 'df', 'sfs', 'fss', 'sfs', 'A', '2019-12-15', 'pilganda'),
(221, 52, 'ad', '', 'sadfaf', 'sdfsd', 'sdf', 'sdf', 'C', '2019-12-14', 'pilganda'),
(225, 60, 'sdf', '', 'k', 'k', 'k', 'k', 'A', '2019-12-15', 'pilganda'),
(220, 47, 'asasas', '', 'nbh', 'hg', 'jhj', 'sd', 'A', '2019-12-14', 'pilganda'),
(217, 41, 'a<span style=\"white-space:pre\">		</span><div><br></div><div><br></div><div><br></div><div><br></div>', '', 'a', 'b', 'c', 'd', 'A', '2019-12-14', 'pilganda'),
(218, 42, 'a', '', 'a', 'a', 'a', 'a', 'A', '2019-12-14', 'pilganda'),
(219, 43, '<h1>jadhgashdgashd</h1>', '', 'a', 'a', 'a', 'a', 'B', '2019-12-14', 'pilganda'),
(227, 64, 'dasdaf', '', 'h', 'v', 'v', 's', 'A', '2019-12-15', 'pilganda'),
(229, 82, 'a', '', 'b', 'v', 'f', 'd', 'A', '2019-12-15', 'pilganda'),
(230, 80, 'sd', '', 'sd', 'sd', 'sd', 'sd', 'B', '2019-12-15', 'pilganda'),
(231, 83, 'bao<span style=\"white-space:pre\">	</span>', '', 'w', 'e', 'r', 't', 'C', '2019-12-15', 'pilganda'),
(235, 107, 'sjhdj<span style=\"white-space:pre\">		</span>', '', 'jkhh', 'jh', 'jh', 'sad', 'D', '2019-12-16', 'pilganda'),
(249, 166, 'haoyoos<span style=\"white-space:pre\">	</span>', '', 'a', 'b', 'g', 'h', 'D', '2020-01-12', 'pilganda'),
(250, 157, 'ad', '', 'sd', 'sda', 'fef', 'dwq', 'A', '2020-01-13', 'pilganda'),
(247, 151, 'sdfdsf', '', 'a', 'sds', 'ads', 'sd', 'B', '2020-01-10', 'pilganda');

-- --------------------------------------------------------

--
-- Struktur dari tabel `registrasi_siswa`
--

CREATE TABLE `registrasi_siswa` (
  `id_registrasi` int(9) NOT NULL,
  `nis` varchar(50) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username_login` varchar(50) NOT NULL,
  `password_login` varchar(50) NOT NULL,
  `id_kelas` varchar(5) NOT NULL,
  `jabatan` varchar(200) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `nama_ayah` varchar(100) NOT NULL,
  `nama_ibu` varchar(100) NOT NULL,
  `th_masuk` varchar(4) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `foto` varchar(150) NOT NULL,
  `blokir` enum('Y','N') NOT NULL,
  `id_session` varchar(100) NOT NULL,
  `id_session_soal` varchar(100) NOT NULL,
  `level` varchar(20) NOT NULL DEFAULT 'siswa'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `registrasi_siswa`
--

INSERT INTO `registrasi_siswa` (`id_registrasi`, `nis`, `nama_lengkap`, `username_login`, `password_login`, `id_kelas`, `jabatan`, `alamat`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `nama_ayah`, `nama_ibu`, `th_masuk`, `email`, `no_telp`, `foto`, `blokir`, `id_session`, `id_session_soal`, `level`) VALUES
(43, '666', 'sgadg', '666', '666', '7c', '', 'dsf', 'sdf', '2020-01-16', 'L', 'islam', 'dsf', 'sdf', '2020', 'gashg@gmail.com', '', '', 'Y', '', '', 'siswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(9) NOT NULL,
  `nis` varchar(50) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username_login` varchar(50) NOT NULL,
  `password_login` varchar(50) NOT NULL,
  `id_kelas` varchar(5) NOT NULL,
  `jabatan` varchar(200) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `nama_ayah` varchar(100) NOT NULL,
  `nama_ibu` varchar(100) NOT NULL,
  `th_masuk` varchar(4) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `foto` varchar(150) NOT NULL,
  `blokir` enum('Y','N') NOT NULL,
  `id_session` varchar(100) NOT NULL,
  `id_session_soal` varchar(100) NOT NULL,
  `level` varchar(20) NOT NULL DEFAULT 'siswa'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nis`, `nama_lengkap`, `username_login`, `password_login`, `id_kelas`, `jabatan`, `alamat`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `nama_ayah`, `nama_ibu`, `th_masuk`, `email`, `no_telp`, `foto`, `blokir`, `id_session`, `id_session_soal`, `level`) VALUES
(29, '7a', 'hajash', '7a', '7a', '7a', '', 'ds', 'sd', '2019-12-16', 'L', 'islam', 'sd', 'sd', '2019', 'jhsahj@gmail.com', '', '', 'N', 'c2r7aus7s1m2jvge3hs840l1b0', '', 'siswa'),
(23, 'ccc', 'ccc', 'ccc', 'ccc', '7c', '', 'asa', 'd', '2019-12-15', 'L', 'islam', 'sd', 'sd', '2019', 'ccc@gmail.com', '', '', 'N', 'i84ab3kei62n917de3jhrcvtl0', '', 'siswa'),
(18, '13', 'moro', '13', '13', '8d', '', 'asfdaf', 'afd', '2019-12-05', 'L', 'katolik', 'fd', 'f', '2019', 'moro@gmail.com', '', 'pattern.JPG', 'N', 'kjii9fuu08fptsmum0g8v72rtd', '13', 'siswa'),
(39, '100', 'sjahdjhkjsdhjsak', '100', '100', '8d', '', 'dssad', 'dfja', '2020-01-10', 'L', 'islam', 'df', 'sdf', '2020', 'hsdjakhd@gmail.com', '', '', 'N', 'hejs6pn1m44pj6ejp1o2pnb4tv', '', 'siswa'),
(40, '87', 'jskhdjhad', 'edan', 'edan', '8d', '', 'jashdkhaskjshd', 'hjadhjkshad', '2020-01-10', 'L', 'islam', 'sada', 'sad', '2020', 'hjsdhsajha@gmail.com', '', '', 'N', 'sqo826hnma9k7mseh6616ovls2', '', 'siswa'),
(25, '555', '555', '555', '555', '7c', '', 'ashgahsg', 'aadasds', '2019-12-15', 'L', 'kristen', 'asd', 'sad', '2019', '555@gmail.com', '', '', 'N', 'riluas2fbslanbmum94v0g2l1r', '', 'siswa'),
(24, '8c', '8c', '8c', '8c', '8c', '', 'sddbbb', 'bb', '2019-12-15', 'L', 'budha', 'b', 'bbb', '2019', '8c@gmail.com', '', '', 'N', '8upt4oppo3pdve8b9ndvld0pgl', '', 'siswa'),
(21, '3526', 'pus', '3526', '3526', '7c', '', 'asdad', 'sad', '2019-12-15', 'L', 'islam', 'asda', 'saddsadsadas', '2019', 'pus@gmail.com', '', '', 'N', 'tlf4s3ir5r39vv7bou2qnrjeg5', '', 'siswa'),
(9, '1927', 'ishaq', 'ishaq', 'ishaq', '7b', 'Ketua Kelas', 'dsfsf', 'sdfsdf', '2019-12-14', 'L', 'islam', 'sdfds', 'sdfsdf', '2019', 'ishaqhusainynur99@gmail.com', '', '', 'N', 'meh8gqkvcrirnhku67rq7iosor', '', 'siswa'),
(32, '70', 'oloasj', '70', '70', '7c', '', 'sd', 'sad', '2019-12-20', 'L', 'islam', 'asd', 'gfg', '2019', 'ahahsja@gmail.com', '', '', 'N', 'nj0p9o0nv2ch55rsg95f4gktvc', '', 'siswa'),
(41, '333', 'sahjkshds', '333', '333', '8d', '', 'sdad', 'sadsad', '2020-01-10', 'L', 'kristen', 'ad', 'safa', '2018', 'jasdhjas@gmail.com', '', '', 'N', 's3o4k2o9kg91sjo99rvl003o07', '', 'siswa'),
(33, '1999', 'olok', '1999', '1999', '7c', '', 'scs', 'cs', '2019-12-28', 'L', 'kristen', 'hgj', 'hghj', '2019', 'las@gmail.com', '', '', 'N', 'am81rq4ff8nndeto1769c0apce', '', 'siswa'),
(34, '33', 'loko', '33', '33', '7c', '', 'hasjhas', 'df', '2019-12-28', 'L', 'katolik', 'sd', 'sd', '2014', 'loko@gmail.com', '', '', 'N', '1sdf1stli0et85ptg622agoh4o', '', 'siswa'),
(35, '09', 'jakjsd', '09', '09', '8d', '', 'ad', 'sdf', '2020-01-02', 'L', 'islam', 'sc', 'sdf', '2020', 'kslaj@gmail.com', '', 'download.jpg', 'N', '956udnf98k6p0nbh9sumqbvjo1', '09', 'siswa'),
(36, '23', 'sjdsh', '23', '23', '7a', '', 'dfs', 'df', '2020-01-02', 'L', 'kristen', 'dsf', 'sdf', '2020', 'jshadjh@gmail.com', '', '', 'N', '1a9fvmg51r9c2qrs1d12krsaro', '', 'siswa'),
(37, '31', 'snbad', '31', '31', '7c', '', 'df', 'sdf', '2020-01-19', 'L', 'kristen', 'bv', 'bvb', '2020', 'HGHG@gmail.com', '', '', 'N', '', '', 'siswa'),
(42, '180', 'AKU', '180', '180', '7a', '', 'jsgakj', 'jdsb', '2020-01-13', 'P', 'islam', 'hh', 'nn', '2020', 'muh@yahoo.com', '', '', 'N', 'c9sb995cbssjve8a0rrbr5tudh', '', 'siswa'),
(43, '53653635', 'hfsgsfgsf', '53653635', '53653635', '7a', '', 'kshjhs', 'jember', '2018-01-16', 'L', 'kristen', 'Gaul', 'Sekali', '2019', 'fgfgfs@gmail.com', '', '', 'N', 's7mj6nvrbius2v324aknau1r8v', '', 'siswa'),
(44, '44', 'dbjh', '44', '44', '7a', '', 'asjd', 'sdf', '2020-01-16', 'L', 'islam', 'sdf', 'dsf', '2020', 'hsgd@gmail.com', '', '', 'N', '60j15aq6t30eboaegm7gng8e71', '', 'siswa'),
(45, '14', 'aman', '14', '14', '7c', '', 'hjsafg', 'sfddsf', '2020-01-20', 'L', 'islam', 'hiya', 'hiyda', '2020', 'aman@gmail.com', '', '', 'N', '3n5c74qki4a0vh3isam7d7kiee', '', 'siswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa_sudah_mengerjakan`
--

CREATE TABLE `siswa_sudah_mengerjakan` (
  `id` int(20) NOT NULL,
  `id_tq` int(20) NOT NULL,
  `id_siswa` varchar(200) NOT NULL,
  `dikoreksi` varchar(1) NOT NULL DEFAULT 'B',
  `hits` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa_sudah_mengerjakan`
--

INSERT INTO `siswa_sudah_mengerjakan` (`id`, `id_tq`, `id_siswa`, `dikoreksi`, `hits`) VALUES
(19, 42, '9', 'B', 1),
(20, 43, '9', 'B', 1),
(22, 44, '9', 'B', 1),
(23, 45, '9', 'S', 1),
(24, 41, '9', 'S', 1),
(31, 48, '11', 'B', 1),
(32, 49, '11', 'S', 1),
(33, 47, '11', 'S', 1),
(34, 50, '11', 'S', 1),
(35, 51, '9', 'S', 1),
(36, 52, '9', 'S', 1),
(38, 53, '16', 'S', 1),
(39, 54, '16', 'B', 1),
(41, 47, '18', 'S', 1),
(42, 56, '18', 'B', 1),
(43, 57, '9', 'S', 1),
(44, 58, '9', 'S', 1),
(45, 59, '9', 'S', 1),
(46, 60, '9', 'S', 1),
(47, 61, '10', 'S', 1),
(48, 62, '16', 'B', 1),
(50, 64, '9', 'B', 1),
(51, 65, '16', 'B', 1),
(53, 68, '9', 'S', 1),
(54, 69, '16', 'B', 1),
(55, 69, '19', 'S', 1),
(56, 67, '19', 'B', 1),
(57, 70, '19', 'B', 1),
(58, 71, '19', 'B', 1),
(59, 72, '19', 'B', 1),
(60, 73, '19', 'B', 1),
(61, 73, '10', 'B', 1),
(62, 74, '10', 'B', 1),
(63, 75, '9', 'S', 1),
(67, 76, '10', 'B', 1),
(68, 77, '20', 'S', 1),
(69, 78, '20', 'B', 1),
(71, 80, '21', 'S', 1),
(72, 81, '22', 'S', 1),
(74, 82, '23', 'S', 1),
(75, 80, '23', 'S', 1),
(76, 83, '24', 'S', 1),
(77, 85, '25', 'S', 1),
(78, 86, '25', 'B', 1),
(79, 87, '26', 'S', 1),
(80, 88, '26', 'B', 1),
(81, 89, '26', 'B', 1),
(82, 91, '27', 'S', 1),
(84, 92, '26', 'B', 1),
(85, 93, '26', 'B', 1),
(86, 94, '26', 'B', 1),
(87, 96, '26', 'B', 1),
(88, 97, '26', 'B', 1),
(90, 99, '25', 'B', 1),
(91, 100, '23', 'B', 1),
(92, 101, '23', 'B', 1),
(93, 102, '23', 'B', 1),
(94, 103, '23', 'B', 1),
(95, 104, '26', 'B', 1),
(96, 105, '9', 'S', 1),
(97, 106, '9', 'S', 1),
(99, 108, '27', 'B', 1),
(100, 109, '9', 'S', 1),
(101, 110, '9', 'S', 1),
(102, 111, '9', 'S', 1),
(103, 112, '26', 'B', 1),
(104, 113, '26', 'B', 1),
(105, 114, '27', 'B', 1),
(106, 115, '27', 'B', 1),
(107, 116, '27', 'B', 1),
(108, 117, '28', 'S', 1),
(109, 118, '28', 'B', 1),
(110, 119, '28', 'B', 1),
(111, 120, '22', 'B', 1),
(112, 121, '22', 'B', 1),
(113, 122, '22', 'B', 1),
(114, 122, '28', 'B', 1),
(115, 123, '28', 'B', 1),
(117, 125, '28', 'B', 1),
(118, 126, '28', 'B', 1),
(119, 127, '22', 'B', 1),
(121, 104, '29', 'B', 1),
(122, 129, '29', 'S', 1),
(123, 128, '29', 'S', 1),
(124, 130, '29', 'S', 1),
(125, 131, '29', 'S', 1),
(126, 133, '30', 'S', 1),
(127, 134, '30', 'B', 1),
(129, 135, '30', 'B', 1),
(130, 136, '30', 'B', 1),
(131, 137, '30', 'B', 1),
(132, 138, '9', 'S', 1),
(133, 139, '30', 'B', 1),
(136, 141, '9', 'B', 1),
(137, 131, '31', 'S', 1),
(139, 119, '27', 'B', 1),
(142, 143, '27', 'B', 1),
(143, 144, '27', 'B', 1),
(145, 140, '9', 'S', 1),
(146, 145, '27', 'B', 1),
(149, 142, '27', 'B', 1),
(151, 146, '27', 'B', 1),
(153, 147, '27', 'B', 1),
(154, 148, '27', 'B', 1),
(155, 149, '27', 'B', 1),
(160, 150, '35', 'S', 1),
(163, 152, '31', 'B', 1),
(164, 153, '31', 'B', 1),
(166, 107, '9', 'B', 1),
(167, 155, '9', 'S', 1),
(168, 156, '35', 'B', 1),
(169, 157, '9', 'S', 1),
(170, 158, '35', 'B', 1),
(173, 159, '39', 'S', 1),
(175, 160, '40', 'B', 1),
(176, 161, '40', 'S', 1),
(177, 159, '40', 'S', 1),
(180, 162, '40', 'S', 1),
(181, 163, '40', 'B', 1),
(182, 164, '40', 'S', 1),
(184, 165, '40', 'S', 1),
(186, 165, '35', 'S', 1),
(188, 166, '35', 'S', 1),
(190, 167, '35', 'S', 1),
(191, 164, '35', 'S', 1),
(193, 168, '40', 'S', 1),
(194, 151, '40', 'S', 1),
(195, 169, '40', 'B', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_level`
--

CREATE TABLE `tb_level` (
  `id_level` int(11) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_level`
--

INSERT INTO `tb_level` (`id_level`, `level`) VALUES
(1, 'admin'),
(2, 'pengajar'),
(3, 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `templates`
--

CREATE TABLE `templates` (
  `id_templates` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `templates`
--

INSERT INTO `templates` (`id_templates`, `judul`, `pembuat`, `folder`, `aktif`) VALUES
(4, 'Standar', 'ATOOR - Digital Creative Product', 'templates/almazari', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `topik_quiz`
--

CREATE TABLE `topik_quiz` (
  `id_tq` int(9) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `id_kelas` varchar(5) NOT NULL,
  `id_matapelajaran` varchar(10) NOT NULL,
  `tgl_buat` date NOT NULL,
  `pembuat` varchar(100) NOT NULL,
  `waktu_pengerjaan` int(50) NOT NULL,
  `info` text NOT NULL,
  `terbit` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `topik_quiz`
--

INSERT INTO `topik_quiz` (`id_tq`, `judul`, `id_kelas`, `id_matapelajaran`, `tgl_buat`, `pembuat`, `waktu_pengerjaan`, `info`, `terbit`) VALUES
(131, 'tanpag ruru', '7a', 'BI2', '2019-12-16', 'admin', 25260, 'sad', 'Y'),
(168, 'rte', '8d', 'FI2', '2020-01-16', '9', 3300, 'dg', 'Y'),
(167, 'Quiz Tengah Malam', '8d', 'MS1', '2020-01-13', '10', 600, '', 'Y'),
(166, 'siang final', '8d', 'MS1', '2020-01-12', '10', 4200, '', 'Y'),
(151, 'sdsd', '8d', 'FI2', '2020-01-10', '9', 1920, 'pilgan', 'Y'),
(165, 'siang siang', '8d', 'MS1', '2020-01-12', '10', 780, '', 'Y'),
(169, 'saysay', '8d', 'FI2', '2020-01-27', '9', 660, 'OK', 'Y'),
(164, 'BI final', '8d', 'BI10', '2020-01-10', '10', 1380, 'ashd', 'Y'),
(157, '22222', '7b', 'SO2', '2020-01-10', '7', 720, '', 'Y'),
(159, 'aku', '8d', 'BI10', '2020-01-10', '10', 720, 'asd', 'Y'),
(155, '', '7b', 'SO2', '2020-01-10', '7', 780, 'asd', 'Y'),
(107, 'ajgdhja', '7b', 'BI1', '2019-12-16', '7', 240, 'sdfsd', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `blokir`
--
ALTER TABLE `blokir`
  ADD PRIMARY KEY (`id_blokir`);

--
-- Indeks untuk tabel `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `file_materi`
--
ALTER TABLE `file_materi`
  ADD PRIMARY KEY (`id_file`);

--
-- Indeks untuk tabel `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indeks untuk tabel `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai_soal_esay`
--
ALTER TABLE `nilai_soal_esay`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `online`
--
ALTER TABLE `online`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `pengajar`
--
ALTER TABLE `pengajar`
  ADD PRIMARY KEY (`id_pengajar`);

--
-- Indeks untuk tabel `quiz_esay`
--
ALTER TABLE `quiz_esay`
  ADD PRIMARY KEY (`id_quiz`);

--
-- Indeks untuk tabel `quiz_pilganda`
--
ALTER TABLE `quiz_pilganda`
  ADD PRIMARY KEY (`id_quiz`);

--
-- Indeks untuk tabel `registrasi_siswa`
--
ALTER TABLE `registrasi_siswa`
  ADD PRIMARY KEY (`id_registrasi`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `siswa_sudah_mengerjakan`
--
ALTER TABLE `siswa_sudah_mengerjakan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_level`
--
ALTER TABLE `tb_level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indeks untuk tabel `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_templates`);

--
-- Indeks untuk tabel `topik_quiz`
--
ALTER TABLE `topik_quiz`
  ADD PRIMARY KEY (`id_tq`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `blokir`
--
ALTER TABLE `blokir`
  MODIFY `id_blokir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `file_materi`
--
ALTER TABLE `file_materi`
  MODIFY `id_file` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT untuk tabel `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `nilai_soal_esay`
--
ALTER TABLE `nilai_soal_esay`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT untuk tabel `pengajar`
--
ALTER TABLE `pengajar`
  MODIFY `id_pengajar` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `quiz_esay`
--
ALTER TABLE `quiz_esay`
  MODIFY `id_quiz` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT untuk tabel `quiz_pilganda`
--
ALTER TABLE `quiz_pilganda`
  MODIFY `id_quiz` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT untuk tabel `registrasi_siswa`
--
ALTER TABLE `registrasi_siswa`
  MODIFY `id_registrasi` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `siswa_sudah_mengerjakan`
--
ALTER TABLE `siswa_sudah_mengerjakan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT untuk tabel `tb_level`
--
ALTER TABLE `tb_level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `templates`
--
ALTER TABLE `templates`
  MODIFY `id_templates` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `topik_quiz`
--
ALTER TABLE `topik_quiz`
  MODIFY `id_tq` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
