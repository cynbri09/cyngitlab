-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2018 at 07:33 AM
-- Server version: 10.1.21-MariaDB
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
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `anggota_id` int(10) UNSIGNED NOT NULL,
  `anggota_nama` varchar(50) NOT NULL,
  `anggota_alamat` text NOT NULL,
  `anggota_jk` enum('L','P') NOT NULL,
  `anggota_telp` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`anggota_id`, `anggota_nama`, `anggota_alamat`, `anggota_jk`, `anggota_telp`) VALUES
(1, 'Fajar', 'Glagah', 'P', '09876788999333'),
(2, 'Eko', 'Romawi', 'L', '4343562555674');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
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
-- Dumping data for table `buku`
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
(12, 'Database Design All in One : Theory, Pratice, and ', 14, 'Buku ini menyajikan pemahaman fundamental mengenai sistem dan pengendalian akuntansi berdasarkan perspektif proses bisnis, serta memberikan contoh kasus aplikasi SIA dalam Konteks perusahaan jasa, dagang, dan manufaktur. Materi poko SIA disajikan secara sistematis dalam 14 bab, yang dikelompokkan ke dalam lima bagian utama: konsep dasar SIA, mendesain data SIA, aplikasi SIA, serta proses pengembangan sistem dan kasus aplikasi SIA. Oleh karena itu, selain cocok digunakan sebagai buku pegangan kuliah Sistem Informasi Akuntansi (SIA), buku ini juga tepat dijadikan acuan oleh para pemerhati SIA.', 2, '6.jpg'),
(13, 'Introduction to C++ ', 14, '\r\nIntroduction to C++ Programming is intended for engineering and computer science students pursuing basic courses on C++ programming. The aim of the book is to assist students in mastering the art of writing C++ programs, enabling them to produce effective C++ programs. A comprehensive pedagogical approach is adopted for this book, which includes extensive examples and figures, interspersed with review questions, programming tips, keywords and end-of-chapter practices. The book opens with an introductory chapter on computer programs, followed by a detailed introduction to C++ programming and the basic elements of computer programs. It then moves on to a complete analysis of the various constructs of C++ such as decision control and looping statements, functions, arrays and strings.', 1, 'c++-book.jpg'),
(14, 'Bahasa indonesia kelas 10 ', 14, 'Dari sudut pandang teori semiotika sosial, teks merupakan suatu proses sosial yang berorientasi pada suatu tujuan sosial. Tujuan sosial yang hendak dicapai memiliki ranah-ranah pemunculan yang disebut konteks situasi. Sementara itu, proses sosial akan berlangsung jika terdapat sarana komunikasi yang disebut bahasa. Dengan kata lain, proses sosial akan merefleksikan diri menjadi bahasa dalam konteks situasi tertentu sesuai tujuan proses sosial yang hendak dicapai. Bahasa yang muncul berdasarkan konteks situasi inilah yang menghasilkan register atau bahasa sebagai teks.', 1, 'BAHASA_INDONESIA.jpg'),
(15, 'Pendidikan Kewarganegaraan ', 14, 'Buku ini berbicara mengenai pendidikan kewarganegaraan dalam rangka pengembangan kepribadian bangsa. Terdiri atas beberapa bab, buku ini diawali dengan pembahasan mengenai konsep dasar pendidikan kewarganegaraan. Selanjutnya, dibahas tentang hak dan kewajiban warga negara. Lalu dibahas terkait demokrasi, negara hukum dan Hak Asasi Manusia (HAM). Setelah itu, disambung dengan pembahasan tentang otonomi daerah dan wawasan nusantara. Di bagian akhir disajikan pembahasan ihwal ketahanan nasional serta masyarakat madani dan pendidikan nasional. ', 1, 'pendidikan_kewarganegaraan.jpg'),
(16, 'Geografi Bencana ', 14, 'ndonesia adalah negara yang besar. Kenyataan ini yang dapat diukur dari kelimpahan kekayaan sumberdaya, baik alam maupun manusia serta sumberdaya buatan atau budaya. Ketidak-mampuan dalam mengelola sumberdaya tersebut akan memicu bencana, baik bencana alam, atau non-alam maupun bencana sosial. Berdasarkan skala waktu dan ruang kejadian bencana yang terjadi, Indonesia ditasbihkan sebagai laboratorium bencana.', 1, 'geografi bencana.jpg'),
(17, 'SangPenjagaWaktu', 13, 'Dialah pencipta jam pertama di dunia. Dia dihukum karena mencoba mengukur anugerah terbesar dari Tuhan, diasingkan ke dalam gua hingga berabadabad dan dipaksa mendengarkan suara orang-orang yang minta diberi lebih banyak waktu. Lalu dia kembali ke dunia kita, dengan membawa jam pasir ajaib dan sebuah misi: menebus kesalahannya dengan mempertemukan dua manusia di bumi, untuk mengajarkan makna waktu kepada mereka.', 1, 'sangpenjagawaktu.jpeg'),
(18, 'Motivition MYTH', 13, 'Banyak motivator yang salah konsepsi akan materi yang diberikannya saat bertemu khalayak. Buku ini memperlihatkan bagaimana miskonsepsi itu banyak hadir. Para motivator akan bangkrut jika tidak mengetahui jelas terkait siapa yang mereka ajak berbicara.', 1, 'the-motivation-myth.jpg'),
(19, 'Maze Runner ', 2, 'Adegan di buku berawal dari kebingungan Thomas yang tiba-tiba berada di sebuah tempat berisi penuh dengan remaja yang semuanya laki-laki. Thomas tidak bisa ingat apa-apa kecuali namanya (kalau di film, Thomas baru ingat namanya setelah terlibat adu kemampuan dengan Gally). Lalu Alby, bisa dibilang ketua komunitas itu, bilang bahwa itu adalah hal yang wajar. Mereka semua juga lupa siapa diri mereka di hari pertama tiba di Glade. Glade adalah sebuah area yang dikelilingi tebing-tebing tinggi. Kelak Thomas tahu bahwa tebing-tebing itu adalah bagian dari dinding labirin yang mengurung semua penghuni Glade. Mereka tidak bisa mudah keluar sebab di dalam labirin ada sekawanan monster serangga yang mereka sebut dengan Griever. Griever ini semacam kalajengking yang badannya dimodif sedemikian rupa sehingga menyerupai robot. Mungkin juga ada rekayasa genetik sebab mana mungkin ada kalajengking berukuran sebesar itu.', 1, 'MAZE RUNNER.jpeg'),
(20, 'Elantris', 2, 'Elantris tadinya adalah sebuah kota yang para penghuninya dianggap sebagai dewa. Para warga kota Elantris memiliki kekuatan bernama shaod yang membuat mereka menjadi manusia ajaib. Suatu ketika kekuatan shaod berbalik membuat para penduduk Elantris menjadi mayat yang hidup, jiwa mereka rusak karena mereka selalu merasa lapar. Elantris pun ditutup dan para penduduk dengan jiwa-jiwa yang rusak harus tetap hidup seperti zombi. Elantris berada di kerajaan Aleron, suatu ketika Pangeran Raoden terkena shaod yang membuatnya menjadi manusia yang terkutuk dan wajahnya menjadi buruk rupa. Hal ini disembunyikan dari penduduk Aleron dan Pangeran Raoden resmi dinyatakan meninggal. padahal Pangeran Raoden harus mendekam di kota Elantris bersama para penduduk Elantris dan warga Aleron yang terkena shaod.', 1, 'elantris_.jpg'),
(21, 'Misteri Rumah Ibu sri ', 10, 'Kamar yang kuimpi-impikan sejak lama, ternyata setelah mendapatkannya, tak ada rasa senang saat memasukinya. Lampu pijar membosankan selalu sukses membuatku mengantuk, serta lemari dan meja usang adalah serentetan ketidaksukaanku pada kamarku.\r\nTapi itu belumlah seberapa. Sudah beberapa hari ini tidurku selalu diganggu oleh sesuatu. â€˜Diaâ€™ selalu datang saat kesadaranku telah beranjak. Menerorku dengan rasa dingin yang menyakitkan hingga membuatku hilang kesadaran.\r\nAku tak tahu siapa â€˜Diaâ€™ dan apa tujuannya menggangguku. Yang aku tahu, ia bermaksud jahat padaku.', 1, 'Misteri rumah ibu sri.jpg'),
(22, 'Gerbang Dialog Danur ', 10, 'Risa Sarasvati, yang sejak kecil bisa melihat dan berkomunikasi dengan hantu anak-anak Belanda yang ada di rumahnya. Risa pun bersahabat dengan hantu-hantu tersebut. Novel ini juga menceritakan proses pertemuan Risa dengan hantu-hantu lainnya. Meski di beberapa bagian terdengar horor, ', 1, 'gerbang dialog danur.jpg'),
(23, 'Anti Korupsi ', 14, 'Upaya pembekalan mahasiswa dapat ditempuh dengan berbagai cara antara lain melalui kegiatan sosialisasi, kampanye, seminar atau perkuliahan. Untuk keperluan perkuliahan dipandang perlu untuk membuat sebuah Buku Ajar yang berisikan materi dasar mata kuliah Pendidikan Anti Korupsi bagi mahasiswa. Pendidikan Anti Korupsi bagi mahasiswa bertujuan untuk memberikan pengetahuan yang cukup tentang seluk beluk korupsi dan pemberantasannya serta menanamkan nilai-nilai anti korupsi. Tujuan jangka panjangnya adalah menumbuhkan budaya anti korupsi di kalangan mahasiswa dan mendorong mahasiswa untuk dapat berperan serta aktif dalam upaya pemberantasan korupsi di Indonesia.', 1, 'anti-korupsi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(10) UNSIGNED NOT NULL,
  `kategori_nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`) VALUES
(2, 'Fantasy'),
(10, 'Horror'),
(12, 'Romance'),
(13, 'Motivation'),
(14, 'Education');

-- --------------------------------------------------------

--
-- Table structure for table `kembali`
--

CREATE TABLE `kembali` (
  `kembali_id` int(11) UNSIGNED NOT NULL,
  `pinjam_id` int(11) UNSIGNED NOT NULL,
  `tgl_kembali` date NOT NULL,
  `denda` double UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kembali`
--

INSERT INTO `kembali` (`kembali_id`, `pinjam_id`, `tgl_kembali`, `denda`) VALUES
(1, 5, '2016-03-31', 0),
(4, 12, '2016-03-20', 4000);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `repeat_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `petugas_id` int(10) UNSIGNED NOT NULL,
  `petugas_nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`petugas_id`, `petugas_nama`, `username`, `password`) VALUES
(1, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `pinjam_id` int(10) UNSIGNED NOT NULL,
  `buku_id` int(11) UNSIGNED NOT NULL,
  `anggota_id` int(11) UNSIGNED NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_jatuh_tempo` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjam`
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
  MODIFY `buku_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
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
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`kategori_id`);

--
-- Constraints for table `kembali`
--
ALTER TABLE `kembali`
  ADD CONSTRAINT `kembali_ibfk_1` FOREIGN KEY (`pinjam_id`) REFERENCES `pinjam` (`pinjam_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD CONSTRAINT `pinjam_ibfk_1` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`buku_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `pinjam_ibfk_2` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`anggota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
