-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Jun 2020 pada 21.25
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
(5, 'admin2', 'c84258e9c39059a89ab77d846ddab909', 'ADMIN E-LESSON 2', 2, 'jalan-jalan', '89519503391', 'ishaqhusainynur99@gmail.com', 1, 'c84258e9c39059a89ab77d846ddab909'),
(27, 'afafa', 'aa', 'afara', 2, 'jalan dipan', '089766564455', 'santuy@a', 2, '1200'),
(24, 'ffff', '12', 'Bagus Dwi', 3, 'asdasdas', '11', 's@a', 2, '1232');

-- --------------------------------------------------------

--
-- Struktur dari tabel `aktif`
--

CREATE TABLE `aktif` (
  `id_aktif` int(11) NOT NULL,
  `aktif` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `aktif`
--

INSERT INTO `aktif` (`id_aktif`, `aktif`) VALUES
(1, 'Ya'),
(2, 'Tidak');

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
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(5) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `id_pengajar` int(9) NOT NULL,
  `id_siswa` int(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`, `nama`, `id_pengajar`, `id_siswa`) VALUES
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
  `id_mata_pelajaran` int(5) NOT NULL,
  `kode_mapel` varchar(10) NOT NULL,
  `mata_pelajaran` varchar(100) NOT NULL,
  `id_kelas` varchar(5) NOT NULL,
  `id_pengajar` int(9) NOT NULL,
  `deskripsi` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`id_mata_pelajaran`, `kode_mapel`, `mata_pelajaran`, `id_kelas`, `id_pengajar`, `deskripsi`) VALUES
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
  `publish` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(2, 'Manajemen Admin', '?module=admin', 2, 2, 2, 2, ''),
(18, 'Materi', '?module=materi', 2, 1, 1, 6, 'semua-berita.html'),
(37, 'Manajemen Siswa', '?module=siswa', 1, 2, 1, 3, 'profil-kami.html'),
(10, 'Manajemen Modul', '?module=modul', 2, 2, 2, 1, ''),
(31, 'Mata Pelajaran', '?module=matapelajaran', 1, 1, 1, 5, ''),
(66, 'Fisika', '?module=siswa', 2, 2, 2, 3, 'wewek.html');

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
-- Struktur dari tabel `publish`
--

CREATE TABLE `publish` (
  `id_publish` int(11) NOT NULL,
  `publish` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `publish`
--

INSERT INTO `publish` (`id_publish`, `publish`) VALUES
(1, 'Ya'),
(2, 'Tidak');

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
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id_status` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id_status`, `status`) VALUES
(1, 'Admin'),
(2, 'Pengajar');

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
-- Struktur dari tabel `terbit`
--

CREATE TABLE `terbit` (
  `id_terbit` int(11) NOT NULL,
  `terbit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `terbit`
--

INSERT INTO `terbit` (`id_terbit`, `terbit`) VALUES
(1, 'Ya'),
(2, 'Tidak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `topik_quiz`
--

CREATE TABLE `topik_quiz` (
  `id_tq` int(9) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `kelas` int(11) NOT NULL,
  `mata_pelajaran` int(11) NOT NULL,
  `tgl_buat` date NOT NULL,
  `status` int(11) NOT NULL,
  `waktu_pengerjaan` int(50) NOT NULL,
  `info` varchar(100) NOT NULL,
  `terbit` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `topik_quiz`
--

INSERT INTO `topik_quiz` (`id_tq`, `judul`, `kelas`, `mata_pelajaran`, `tgl_buat`, `status`, `waktu_pengerjaan`, `info`, `terbit`) VALUES
(171, 'Topik Kimi No Nawa', 7, 4, '2020-06-03', 1, 100, 'selesaikan dalam 100 menit', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `aktif`
--
ALTER TABLE `aktif`
  ADD PRIMARY KEY (`id_aktif`);

--
-- Indeks untuk tabel `blokir`
--
ALTER TABLE `blokir`
  ADD PRIMARY KEY (`id_blokir`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`id_mata_pelajaran`),
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
-- Indeks untuk tabel `publish`
--
ALTER TABLE `publish`
  ADD PRIMARY KEY (`id_publish`);

--
-- Indeks untuk tabel `quiz_pilganda`
--
ALTER TABLE `quiz_pilganda`
  ADD PRIMARY KEY (`id_quiz`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indeks untuk tabel `tb_level`
--
ALTER TABLE `tb_level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indeks untuk tabel `terbit`
--
ALTER TABLE `terbit`
  ADD PRIMARY KEY (`id_terbit`);

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
  MODIFY `id_admin` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `aktif`
--
ALTER TABLE `aktif`
  MODIFY `id_aktif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `blokir`
--
ALTER TABLE `blokir`
  MODIFY `id_blokir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  MODIFY `id_mata_pelajaran` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `publish`
--
ALTER TABLE `publish`
  MODIFY `id_publish` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `quiz_pilganda`
--
ALTER TABLE `quiz_pilganda`
  MODIFY `id_quiz` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_level`
--
ALTER TABLE `tb_level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `terbit`
--
ALTER TABLE `terbit`
  MODIFY `id_terbit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `topik_quiz`
--
ALTER TABLE `topik_quiz`
  MODIFY `id_tq` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
