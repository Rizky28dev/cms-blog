-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jun 2024 pada 13.55
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `frontpage`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$RSc2aUXYhXw1S/g0GbKmAeDVjQntNsqeFtw6WP4q9IRY6VN9Tv4by', 'frontpagenewsofficial@gmail.com', 1, '2020-03-27 17:51:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(1, 'Article Description', 'pp', '2024-06-02 20:56:56', '2024-06-02 20:56:56', 1),
(2, 'Politics', '-', '2024-06-02 23:23:49', '2024-06-02 23:23:49', 1),
(3, 'Sports', '.', '2024-06-02 22:30:43', '2024-06-02 22:30:43', 1),
(4, 'Entertainment', '-', '2024-06-02 23:54:12', '2024-06-02 23:54:12', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(10, '25', 'Mahdy Haidar T', 'mahdy@gmail.com', 'good article....!!!!', '2024-06-11 00:28:58', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(24, 'Keberhasilan Sebuah Pendidikan', 1, 29, '<p>Di Indonesia, pendidikan diatur dalam peraturan yang mewajibkan setiap warganya menempuh pendidikan. Meski sudah diatur dalam susunan peraturan yang jelas, sudahkan pendidikan kita mencappai tujuannya? Suatu pendidikan dapat dikatakan berhasil atau tidak tergantung pada hasil dari pendidikan itu sendiri. Apakah anak yang menempuh pendidikan terlihat lebih baik atau tidak dapat menjadi tolak ukur suatu keberhasilan pendidikan. Sering kita temui orang yang menganggap nilai dari hasil belajar merupakan hasil dari pendidikan. Padahal itu salah. Hakikat pendidikan bukanlah angka, tapi proses. Bagaimana seseorang terbentuk menjadi manusia yang semestinya adalah inti dari pendidikan. Jadi mari kita lihat dunia pendidikan kita apakah anak-anak yang setiap hari sekolah itu manusia yang lebih baik? apakah dunia pendidikan kita sudah jauh dari kata money oriented? Jika belum, malah tidak sama sekali saya rasa pendidikan kita masih jauh dari kata berhasil.<br></p>', '2024-06-02 21:07:33', '2024-06-02 23:47:35', 1, 'Keberhasilan-Sebuah-Pendidikan', '146d030bcadfe1dfbd80fda35dd7bc9d.jpg'),
(25, 'Pentingnya Olahraga Bagi Tubuh', 3, 30, '<p style=\"padding: 0px 0px 27px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;open sans&quot;, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; -webkit-font-smoothing: antialiased; color: rgb(103, 103, 103); text-align: justify;\">Apakah kalian tahu pada tanggal 09 September setiap tahun diperingati sebagai Hari Olahraga Nasional (Haornas)?. Tujuan diperingatinya &nbsp;Haornas yaitu untuk meningkatkan rasa sportivitas di tanah air. Sebagian orang mungkin &nbsp;menganggap bahwa olahraga hanya akan melelahkan, &nbsp;walaupun melelahkan tetapi itu sangat penting untuk daya tahan tubuh. Apakah kalian tahu pentingnya olahraga bagi tubuh?.</p><p style=\"padding: 0px 0px 27px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;open sans&quot;, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; -webkit-font-smoothing: antialiased; color: rgb(103, 103, 103); text-align: justify;\">Tubuh kita akan semakin sehat jika digunakan untuk bergerak dan beraktivitas selama tidak berlebihan. Salah satu cara untuk mencapai kesehatan yang optimal yaitu dengan berolahraga secara teratur dan makan makanan yang sehat dan bergizi. Ada banyak jenis olahraga yang bisa kita lakukan, seperti berenang, berlari, menari, senam, dan masih banyak yang lainnya. Beberapa manfaat olahraga dengan teratur diantaranya :</p><ul style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 30px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;open sans&quot;, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; list-style: none; color: rgb(103, 103, 103); text-align: justify;\"><li style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; list-style: outside disc;\">Membangun dan mempertahankan otot dan tulang</li><li style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; list-style: outside disc;\">Mengurangi risiko penyakit kronis</li><li style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; list-style: outside disc;\">Meningkatkan energi, baik untuk orang yang sehat atau mereka yang menderita berbagai kondisi medis</li><li style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; list-style: outside disc;\">Meningkatkan metabolisme tubuh</li><li style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; list-style: outside disc;\">Membakar lemak</li><li style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; list-style: outside disc;\">Mengurangi stress</li></ul><p style=\"padding: 0px 0px 27px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;open sans&quot;, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; -webkit-font-smoothing: antialiased; color: rgb(103, 103, 103); text-align: justify;\">Olahraga juga dapat mencegah terjadinya gangguan mental seperti yang dialami oleh sebagian orang akibat pandemi&nbsp;<em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">covid-19</em>. Pada masa pandemi&nbsp;<em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">covid-19</em>&nbsp;masyarakat justru lebih banyak menghabiskan waktu di rumah dengan menonton televisi, bermain&nbsp;<em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">handphone,</em>&nbsp;dan bermain game dimana hal tersebut beresiko menimbulkan penyakit. Meningkatkan daya tahan tubuh di masa pandemi sangatlah penting untuk melindungi diri dari virus Covid-19.</p><p style=\"padding: 0px 0px 27px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;open sans&quot;, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; -webkit-font-smoothing: antialiased; color: rgb(103, 103, 103); text-align: justify;\">Pastinya kita semua tidak menginginkan sesuatu yang negative &nbsp;terjadi pada kesehatan tubuh kita, oleh sebab itu kita perlu merawat kekebalan tubuh dengan cara meluangkan waktu 15-30 menit setiap harinya untuk menjaga kekebalan tubuh dan tidak merasa cepat lelah.</p>', '2024-06-02 22:34:58', NULL, 1, 'Pentingnya-Olahraga-Bagi-Tubuh', '6f32747e3a5aee5e8e4e98cd59bb9641.jpg'),
(26, 'Film Dirty Vote Viral Jelang Pemilu, Pakar Hukum UM Surabaya Beri Tangapan Ini', 2, 31, '<p style=\"margin-bottom: 20px; line-height: 1.5; color: rgb(68, 68, 68); font-family: Poppins, Roboto, sans-serif; font-size: 15px;\">Film dokumenter eksplanatory \"Dirty Vote\" yang dirilis pada 11 Februari 2024 merupakan karya sutradara Dandhy Dwi Laksono. Film dengan durasi sekitar 1,5 jam tersebut viral di media sosial, bahkan belum dua hari penayangan telah ditonton sebanyak 2 juta tayangan dan tranding di media sosial. Film ini berisi kritik atas sistem demokrasi dan Pemilu di Indonesia untuk kondisi terakhir khususnya jelang Pemilu 14 Februari 2024.&nbsp;</p><p style=\"margin-bottom: 20px; line-height: 1.5; color: rgb(68, 68, 68); font-family: Poppins, Roboto, sans-serif; font-size: 15px;\">Film ini menampilkan tiga pakar hukum tata negara, yaitu Bivitri Susanti dari Sekolah Tinggi Hukum Indonesia Jentera, Feri Amsari dari Universitas Andalas, dan Zainal Arifin Mochtar dari Universitas Gadjah Mada (UGM). Ketiga pakar tersebut menjelaskan berbagai kelemahan, manipulasi politik, dan kecurangan yang terjadi dalam sistem Pemilu di Indonesia.</p><p style=\"margin-bottom: 20px; line-height: 1.5; color: rgb(68, 68, 68); font-family: Poppins, Roboto, sans-serif; font-size: 15px;\">Satria Unggul Wicaksana Pakar Hukum UM Surabaya menyebut, setidaknya ada beberapa catatan yang perlu disampaikan terkait pesan yang ingin disampaikan dalam film tersebut. Ada 16 catatan yang disampaikan Satria diantaranya:</p><p style=\"margin-bottom: 20px; line-height: 1.5; color: rgb(68, 68, 68); font-family: Poppins, Roboto, sans-serif; font-size: 15px;\">1.Gabungan suara Jokowi dan Prabowo di pulau Sumatera menunjukkan gejala politik transaksional antara elit politik.</p><p style=\"margin-bottom: 20px; line-height: 1.5; color: rgb(68, 68, 68); font-family: Poppins, Roboto, sans-serif; font-size: 15px;\">2. Penunjukkan 20 PJ Gubernur dan 82 PJ Walikota/Bupati oleh Presiden Jokowi dianggap sebagai praktik politik balas budi dan menciptakan loyalitas pada petahanan.</p><p style=\"margin-bottom: 20px; line-height: 1.5; color: rgb(68, 68, 68); font-family: Poppins, Roboto, sans-serif; font-size: 15px;\">3. Kasus penunjukan oleh Tito Karnavian untuk Pejabat&nbsp; Gubernur Papua dianggap mengabaikan aturan yang ada. Ini melambangkan penguasa yang berlaku sewenang-wenang.</p><p style=\"margin-bottom: 20px; line-height: 1.5; color: rgb(68, 68, 68); font-family: Poppins, Roboto, sans-serif; font-size: 15px;\">4. Pelanggaran Pakta Integritas oleh Bupati Sorong memperlihatkan tipu daya dan ketidakjujuran pejabat publik.</p><p style=\"margin-bottom: 20px; line-height: 1.5; color: rgb(68, 68, 68); font-family: Poppins, Roboto, sans-serif; font-size: 15px;\">5. Deklarasi GBK oleh 8 organisasi kepala desa (mewakili 81 juta pemilih) diduga sebagai upaya mobilisasi massa untuk kepentingan politik tertentu.</p><p style=\"margin-bottom: 20px; line-height: 1.5; color: rgb(68, 68, 68); font-family: Poppins, Roboto, sans-serif; font-size: 15px;\">6. Maraknya kasus korupsi dana desa menguatkan fakta penyelewengan anggaran untuk dukungan politik pada Pemilu. Apalagi ada politik transaksional.&nbsp;</p><p style=\"margin-bottom: 20px; line-height: 1.5; color: rgb(68, 68, 68); font-family: Poppins, Roboto, sans-serif; font-size: 15px;\">7. Banyaknya tekanan dan intimidasi kepada-kepala desa agar mendukung capres incumbent menunjukkan politik ala Orde Baru masih berlangsung.</p><p style=\"margin-bottom: 20px; line-height: 1.5; color: rgb(68, 68, 68); font-family: Poppins, Roboto, sans-serif; font-size: 15px;\">8. Penyalahgunaan bantuan sosial oleh pejabat seperti Airlangga dan Zulhas untuk kepentingan politik nyata terjadi di lapangan.</p><p style=\"margin-bottom: 20px; line-height: 1.5; color: rgb(68, 68, 68); font-family: Poppins, Roboto, sans-serif; font-size: 15px;\">9. Peningkatan tajam bansos menjelang Pemilu dibanding masa pandemi mengindikasikan pengaruh politik uang dan pembelian suara.</p><p style=\"margin-bottom: 20px; line-height: 1.5; color: rgb(68, 68, 68); font-family: Poppins, Roboto, sans-serif; font-size: 15px;\">10. Data&nbsp;<i>by name by address</i>&nbsp;Kemensos tidak dipakai dalam penyaluran bantuan menunjukkan indikasi kecurangan.</p><p style=\"margin-bottom: 20px; line-height: 1.5; color: rgb(68, 68, 68); font-family: Poppins, Roboto, sans-serif; font-size: 15px;\">11. Keterlibatan sejumlah menteri dan timses capres dalam kampanye politik, di luar aturan yang ada, merupakan bentuk pelanggaran netralitas aparatur negara.&nbsp;</p><p style=\"margin-bottom: 20px; line-height: 1.5; color: rgb(68, 68, 68); font-family: Poppins, Roboto, sans-serif; font-size: 15px;\">12. Ketidaknetralan Presiden dalam Pemilu, termasuk menggunakan fasilitas negara untuk berkampanye, melanggar UU dan menodai martabat kepresidenan.</p><p style=\"margin-bottom: 20px; line-height: 1.5; color: rgb(68, 68, 68); font-family: Poppins, Roboto, sans-serif; font-size: 15px;\">13. Kegagalan Bawaslu mengawasi berbagai pelanggaran Pemilu menunjukkan lemahnya pengawasan independen atas kontestasi politik.&nbsp;</p><p style=\"margin-bottom: 20px; line-height: 1.5; color: rgb(68, 68, 68); font-family: Poppins, Roboto, sans-serif; font-size: 15px;\">14. Beragam pelanggaran KPU, dari verifikasi partai hingga dianggap berpihak pada parpol tertentu, mencederai integritas penyelenggaraan Pemilu.</p><p style=\"margin-bottom: 20px; line-height: 1.5; color: rgb(68, 68, 68); font-family: Poppins, Roboto, sans-serif; font-size: 15px;\">15. Banyaknya masalah integritas di MK, seperti isu benturan kepentingan hingga putusan kontroversial, menodai legitimasi MK sebagai&nbsp;<i>the guardian of constitution</i>.</p><p style=\"margin-bottom: 20px; line-height: 1.5; color: rgb(68, 68, 68); font-family: Poppins, Roboto, sans-serif; font-size: 15px;\">16. Upaya intimidasi dari tim kampanye diharapkan tidak terjadi, aktivitas jurnalisme investigatif adalah bagian dari kebebasan Pers yang dilindungi dalam UU Pers dan kebebasan berpendapat dari pinsip hukum dan HAM.&nbsp;</p>', '2024-06-02 23:25:36', NULL, 1, 'Film-Dirty-Vote-Viral-Jelang-Pemilu,-Pakar-Hukum-UM-Surabaya-Beri-Tangapan-Ini', '3b0e69e70987dfd573d633039e9b4ac0.jpg'),
(27, 'Cristiano Ronaldo Atlet Paling Populer di Media Sosial, Siapa Lagi yang Lainnya?', 4, 32, '<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif;\">Para atlet tidak hanya memiliki pesona di arena pertandingan, tetapi menarik perhatian publik di luar lapangan. Popularitasnya tidak diragukan lagi. Kehidupan dan kegiatan para atlet seakan tak dilewatkan oleh para fans yang tertarik, khususnya di media sosial. Lalu siapakah atlet terpopuler di media sosial? Dilansir dari Forbes, Kamis (15/8/2019), firma analisis media sosial Hookit mengumpulkan data dari akun-akun Instagram para atlet terkenal di seluruh dunia. Dari daftar atlet yang ada, mayoritas berkecimpung di dunia sepak bola. Selain jumlah follower atau pengikut, Hookit mencatat jumlah interaksi selama enam bulan pertama tahun 2019 termasuk jumlah yang menyukai unggahan mereka, jumlah komentar, dan berbagi, baik di Facebook, Instagram, maupun Twitter. Hasilnya, pesepakbola Cristiano Ronaldo berada di urutan teratas. Ronaldo tercatat memiliki 179,8 juta pengikut di Instagram dan 79,3 juta pengikut di Twitter. Bahkan perusahaan global yang memilih Ronaldo sebagai duta brand-nya di media sosial, harus menggelontorkan dana senilai 44 juta dollar AS atau sekitar Rp 627 miliar per tahun. Selain jumlah pengikut, jumlah interaksi yang tercatat di akun Ronaldo sebanyak 887,2 juta. \"Atlet memiliki pengaruh yang lebih besar dari sebelumnya, karena platform media sosial mereka,\" ujar analis fesyen John Kernan.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif;\">Ia menyebut, kemampuan pembuatan konten untuk para atlet ini luar biasa. Bahkan, media sosial bisa menjadi salah satu sumber pendapatan utama. Selain Ronaldo, rivalnya, yakni Lionel Messi berada di posisi kedua. Messi memiliki 128,2 juta pengikut di Instagram dengan total interaksi sebanyak 367,1 juta. Tercatat, interaksi yang dihasilkan dari setiap iklan di akunnya, memiliki nilai hingga 6,9 juta dollar AS atau Rp 98,45 miliar. Selanjutnya, pesepakbola Neymar berada di tempat ketiga. Atlet yang kini berlaga di Paris Saint-Germain itu memiliki total 124 juta pengikut di Instagram dan 44 juta follower di Twitter dengan total interaksi 289 juta. Kylian Mbappe mengekor di ranking keempat. Atlet yang pernah menyandang gelar sebagai pemain dengan nilai pasar tertinggi di dunia itu memiliki 33,4 juta pengikut di Instagram serta 3,1 juta pengikut di Twitter. Meski demikian, jumlah interaksi di media sosialnya tercatat sebanyak 167,6 juta. Selain atlet sepak bola, riset Hookit juga mencantumkan nama petinju Conor McGregor di tempat kelima dengan total interaksi mencapai 159,7 juta. Akun Instagram-nya diikuti oleh 31,5 juta orang, sementara akun Twitter miliknya memiliki 7,7 juta pengikut. Pemain sepak bola kembali memenuhi daftar dengan masuknya Mohamed Salah di posisi keenam. Salah memiliki jumlah interaksi sebanyak 152,2 juta. Akun Instagram resminya kini mempunyai 31 juta pengikut, sedangkan Twitter-nya diikuti oleh 9,7 juta orang. Lalu, di posisi ketujuh, Hookit menyematkan nama Paulo Dybala. Pesepakbola yang kini bermain untuk klub Juventus itu memiliki total interaksi di media sosial sebanyak 144,8 juta. Pengikutnya di Instagram berjumlah 32,4 juta orang dan Twitter dengan 1,8 juta follower. Selain daftar ini, Hookit juga mengumpulkan data atlet-atlet dari olahraga lainnya seperti tenis, hoki, basket, hingga motorsport dan e-sport.</span><br></p>', '2024-06-02 23:56:59', NULL, 1, 'Cristiano-Ronaldo-Atlet-Paling-Populer-di-Media-Sosial,-Siapa-Lagi-yang-Lainnya?', 'bacc8efa24996299c7d7626ca078765d.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(29, 1, 'Education', '.', '2024-06-02 21:03:20', NULL, 1),
(30, 3, '-', '-', '2024-06-02 22:33:58', NULL, 1),
(31, 2, '-', '-', '2024-06-02 23:24:05', NULL, 1),
(32, 4, '-', '-', '2024-06-02 23:54:22', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
