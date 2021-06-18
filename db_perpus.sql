-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26 Nov 2018 pada 06.38
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `anggota_id` int(10) UNSIGNED NOT NULL,
  `anggota_nama` varchar(50) NOT NULL,
  `anggota_alamat` text NOT NULL,
  `anggota_jk` enum('L','P') NOT NULL,
  `anggota_telp` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`anggota_id`, `anggota_nama`, `anggota_alamat`, `anggota_jk`, `anggota_telp`) VALUES
(1, 'Fajar', 'Glagah', 'P', '09876788999333'),
(2, 'Eko', 'Romawi', 'L', '4343562555674');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `buku_id` int(10) UNSIGNED NOT NULL,
  `buku_judul` varchar(50) NOT NULL,
  `kategori_id` int(11) UNSIGNED NOT NULL,
  `buku_deskripsi` text,
  `buku_jumlah` int(11) UNSIGNED NOT NULL,
  `buku_cover` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`buku_id`, `buku_judul`, `kategori_id`, `buku_deskripsi`, `buku_jumlah`, `buku_cover`) VALUES
(1, 'Dear Nathan', 12, 'Yang mengisahkan suatu kisah di masa putih abu-abu. Di dalam kisah tersebut terkisah 2\r\ninsan yang memiliki kepribadian yang sangat berbeda bak langit dan bumi. Sebut saja Salma, gadis\r\nlugu yang sangat takut jika berbuat kesalahan itu pindah ke sekolah yang di dalamnya terdapat banyak\r\nsekali murid-murid yang berlatar belakang urakan.', 2, 'nathan.jpg'),
(3, 'Crazy Rich Asians', 12, 'CRAZY RICH ASIAN bercerita tentang seorang wanita New York berdarah Tiongkok yang seorang profesor di sebuah universitas, Rachel Wu (Constance Wu). Dia punya kekasih bernama Nick Young (Henry Golding) yang juga profesor di universitas yang sama, tapi tidak terlalu tahu tentang latar belakang sang pacar, meski sudah diberi beberapa kode.', 1, 'crazy.jpg'),
(4, 'IT', 10, 'Diceritakan pada tahun 1988 di kota bernama Derry, Georgie meminta Bill kakaknya untuk bermain perahu kertas bersama. Karena kondisi  Bill tidak sehat dia menyuruh Georgie untuk bermain sendiri. Bill meminta adiknya untuk mengambil lem lilin agar perahunya tidak tenggelam di basement. Kejadian aneh mulai terjadi saat George mencoba mencari lem lilin di basement, ia melihat keganjilan dan itu adalah tanda pertama kehadiran Pennywise.\r\n\r\nKarena cuaca hujan Georgie memakai jas hujan berwarna kuning dan bermain perahu tanpa Bill. Georgie berlari mengikuti arus air yang menggiring perahunya hingga masuk ke lubang selokan. Saat Georgie mencoba mencari perahunya, munculah sosok badut bernama seram yang mengajak Georgie untuk masuk ke dalam lubang selokan. George sempat menolak, dan si Badut tidak menyerah. Ia menawarkan perahu kertas milik Gerogie, saat Georgie meraih perahu tersebut tanganya di gigit hingga robek  lalu ia ditarik masuk kedalam lubang selokan oleh badut tersebut dan kemudian menghilang.', 2, 'it.jpg'),
(5, 'Harry Potter and The Cursed Child', 10, 'Masalah dimulai sejak ayahnya Cedric Diggory yaitu Amos Diggory meminta Harry Potter untuk meminjamkan Time Turner demi menyelamatkan Cedric yang mati dibunuh oleh Voldemort di Harry Potter And The Goblets of Fire. Harry Potter mengatakan kalau Time Turner sudah dimusnahkan. Disini Albus mendengarkan percakapan tersebut dan mengajak Scorpius untuk menemukan Time Turner dan menyelamatkan Cedric. Well, ceritanya mereka berhasil mendapatkan Time Turner dan kembali ke masa lalu bersama keponakan Amos Diggory yaitu Dhelpi.\r\n', 2, 'har.jpeg'),
(7, '5 Cm', 13, 'Novel ini berceritakan mengenai kisah 5 orang pemuda dan pemudi yang menjalin persahabatan\r\ndan memiliki kepribadian yang berbeda. Tokoh-tokoh dalam novel ini yang pertama adalah Riani sosok gadis\r\ncantik yang berkacamata dan memiliki otak yang cerdas. Ia memiliki cita-cita yang tinggi ingin menjadi seorang\r\npresenter di salah satu stasiun TV.', 2, '5CM.jpg'),
(8, 'Laskar Pelangi', 13, 'Sepuluh anak Melayu Belitong  yang disebut Laskar Pelangi ini tak menyerah walau keadaan tak bersimpati pada mereka.Sebut saja Lintang, seorang kuli kopra cilik, yang genius dan dengan senang hati bersepeda 80kilometer pulang pergi untuk memuaskan dahaganya akan ilmu-bahkan terkadang hanya untukmenyanyikan lagu padamu negeri di akhir jam sekolah.', 2, 'laskar.jpg'),
(9, 'Robin Hood', 2, 'Robin dan kelompoknya bergerak ke nottingham, tempat loxley dan ayahnya yang buta.\r\nSir walter memintanya untuk terus menyamar menjadi putranya. Hal tersebut untuk mencegah agar\r\ntanah keluarganya tidak diambil oleh kerajaan. Lady marion, janda loxley bersikap hangat terhadap\r\nrobin. Robin kemudian meminta persetujuan raja untuk charter of right agar menjamin hak setiap\r\norang inggris dan menyatukan negaranya. Raja kemudian menyetujui hal tersebut apalagi prancis\r\nmelakukan penyerangan dengan tentara bersenjata. Saat perancis menjarah nottingham, robin\r\ndatang dan menghentikan orang-orang godfrey, tapi godfrey terlebih dahulu mengalahkan sir\r\nwalter.', 3, 'robin.jpg'),
(10, 'Sang Pemimpi', 13, 'Novel sang pemimpi ini adalah sebuah kisah persahabatan yang berjuang untuk\r\nmendapatkan pendidikan yang layak. Penulis menggambarkan bahwa cita-cita memang harus\r\ndiwujudkan dengan tekad yang kuat. Novel ini mengangkat betapa sulitnya mendapatkan pendidikan\r\nyang layak di tanah Belitung.', 2, 'Sang Pemimpi.jpg'),
(12, 'Database Design All in One : Theory, Pratice, and ', 14, 'Buku ini menyajikan pemahaman fundamental mengenai sistem dan pengendalian akuntansi berdasarkan perspektif proses bisnis, serta memberikan contoh kasus aplikasi SIA dalam Konteks perusahaan jasa, dagang, dan manufaktur. Materi poko SIA disajikan secara sistematis dalam 14 bab, yang dikelompokkan ke dalam lima bagian utama: konsep dasar SIA, mendesain data SIA, aplikasi SIA, serta proses pengembangan sistem dan kasus aplikasi SIA. Oleh karena itu, selain cocok digunakan sebagai buku pegangan kuliah Sistem Informasi Akuntansi (SIA), buku ini juga tepat dijadikan acuan oleh para pemerhati SIA.', 2, '6.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(10) UNSIGNED NOT NULL,
  `kategori_nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`) VALUES
(2, 'Fantasy'),
(10, 'Horror'),
(12, 'Romance'),
(13, 'Motivation'),
(14, 'Education');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kembali`
--

CREATE TABLE `kembali` (
  `kembali_id` int(11) UNSIGNED NOT NULL,
  `pinjam_id` int(11) UNSIGNED NOT NULL,
  `tgl_kembali` date NOT NULL,
  `denda` double UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kembali`
--

INSERT INTO `kembali` (`kembali_id`, `pinjam_id`, `tgl_kembali`, `denda`) VALUES
(1, 5, '2016-03-31', 0),
(4, 12, '2016-03-20', 4000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `repeat_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `petugas_id` int(10) UNSIGNED NOT NULL,
  `petugas_nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`petugas_id`, `petugas_nama`, `username`, `password`) VALUES
(1, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjam`
--

CREATE TABLE `pinjam` (
  `pinjam_id` int(10) UNSIGNED NOT NULL,
  `buku_id` int(11) UNSIGNED NOT NULL,
  `anggota_id` int(11) UNSIGNED NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_jatuh_tempo` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pinjam`
--

INSERT INTO `pinjam` (`pinjam_id`, `buku_id`, `anggota_id`, `tgl_pinjam`, `tgl_jatuh_tempo`) VALUES
(5, 3, 1, '2016-03-11', '2016-03-19'),
(10, 3, 2, '2016-03-20', '2016-03-20'),
(11, 4, 2, '2016-03-20', '2016-03-24'),
(12, 3, 1, '2016-03-01', '2016-03-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`anggota_id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`buku_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `kembali`
--
ALTER TABLE `kembali`
  ADD PRIMARY KEY (`kembali_id`),
  ADD KEY `pinjam_id` (`pinjam_id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`petugas_id`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`pinjam_id`),
  ADD KEY `anggota_id` (`anggota_id`),
  ADD KEY `buku_id` (`buku_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `anggota_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `buku_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `kembali`
--
ALTER TABLE `kembali`
  MODIFY `kembali_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `petugas_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `pinjam_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`kategori_id`);

--
-- Ketidakleluasaan untuk tabel `kembali`
--
ALTER TABLE `kembali`
  ADD CONSTRAINT `kembali_ibfk_1` FOREIGN KEY (`pinjam_id`) REFERENCES `pinjam` (`pinjam_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pinjam`
--
ALTER TABLE `pinjam`
  ADD CONSTRAINT `pinjam_ibfk_1` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`buku_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `pinjam_ibfk_2` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`anggota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
