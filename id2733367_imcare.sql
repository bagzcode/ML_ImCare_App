-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 13, 2019 at 02:41 AM
-- Server version: 10.3.14-MariaDB
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
-- Database: `id2733367_imcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `noartikel` int(11) NOT NULL,
  `judulartikel` varchar(100) DEFAULT NULL,
  `contentartikel` varchar(5000) DEFAULT NULL,
  `kdpenyakit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`noartikel`, `judulartikel`, `contentartikel`, `kdpenyakit`) VALUES
(1, 'Faktor Tak Terduga Penyebab Kanker', '<p>\r\n\r\n</p><p>Sebagian besar makanan Anda adalah sayur dan buah. Anda juga berolahraga rutin, tak pernah lupa menggunakan tabir surya, menjauhi rokok dan alkohol. Anda selalu berusaha menjalankan pola hidup sehat, karena Anda tahu itu dapat menjadi penangkal <a target=\"_blank\" rel=\"nofollow\" href=\"http://indeks.kompas.com/tag/kanker\">kanker</a>.</p><p>Tapi, penelitian yang dilakukan John Hopkins University menemukan, dua pertiga kasus kanker pada orang dewasa dipicu mutasi gen yang menyerang orang secara acak, dan akhirnya menimbulkan tumor. Dengan kata lain, kasus tumor terbanyak adalah karena faktor ketidakberuntungan.</p><p>Penelitian ini dimulai dari keingintahuan peneliti mengapa ada jaringan tubuh, misalnya di usus kecil dan pankreas yang memiliki risiko kanker lebih tinggi dibanding yang lainnya.</p><p>Jadi mereka melacak jumlah divisi sel induk yang ada di 31 jenis jaringan, membandingkannya dengan risiko kanker sepanjang hidup di jaringan yang sama.</p><p>Kesimpulan yang mereka dapatkan adalah semakin tinggi jumlah pembelahan sel jaringan, semakin tinggi tingkat risiko kanker.</p><p>\"Studi kami menunjukkan bahwa secara umum, perubahan dalam jumlah pembelahan sel induk di suatu jenis jaringan sangat berkorelasi dengan perubahan dalam kejadian kanker pada jaringan yang sama,\" kata penyelidik studi Bert Vogelstein, M.D., profesor onkologi Johns Hopkins University School of Medicine.</p><p>Artinya, semakin banyak pembelahan sel yang terjadi , semakin besar terjadi risiko mutasi acak dan semakin ganas perkembangan kanker.</p><p>Jadi, apakah ini berarti kita tak perlu menerapkan pola hidup sehat? Tidak demikian. Meski ada 22 jenis kanker sangat berhubungan dengan faktor mutasi gen, ada sembilan jenis lainnya yang lebih terkait oleh pola hidup.</p><p>Sembilan jenis kanker itu di antaranya adalah, kanker kulit, leher, kepala, kolon dan rektum (usus besar dan anus), dan kanker paru-paru.</p><p>Kesembilan jenis kanker tersebut, selain berkaitan erat dengan pola hidup, juga ada hubungannya dengan faktor keturunan. Karena itu, pemeriksaan kesehatan secara rutin sangat diperlukan untuk dapat mendeteksi keberadaan kanker sejak dini, sebelum berkembang membahayakan nyawa.</p><p>Hal lainnya yang perlu dipahami adalah, kalimat mutasi gen secara acak bukan berarti benar-benar secara acak. Sebaliknya, kanker mungkin timbul sebagai akibat dari faktor gaya hidup.</p><p>\"Angka mutasi lebih tinggi pada mereka yang terpapar racun karena gaya hidup serampangan, dan lebih rendah pada mereka yang konsekuen melakukan pola hidup sehat,\" jelas David Katz, M.D., M.P.H, direktur Yale University Prevention Research Center.</p><p>Studi menunjukkan, pemicu gen kanker menjadi tidak aktif dan penekan gen kanker menjadi aktif pada mereka yang berpola hidup sehat.</p><p>Kesimpulannya, kanker adalah hasil gabungan berbagai faktor seperti genetik, lingkungan, dan mutasi gen secara acak, kutip John Hopkins.</p><p>Karena ada beberapa jenis kanker yang menawarkan peluang lebih besar bagi Anda untuk mengurangi faktor risiko genetik, menjalankan pola hidup sehat merupakan langkah yang sangat bijak.</p><p>Mulailah membatasi konsumsi daging, perbanyak sayur dan buah segar, rutin berolahraga, antisipasi sinar UV matahari dengan tabir surya dan jauhi rokok, saran American Cancer Society.</p>\r\n\r\n<br><p></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `detection`
--

CREATE TABLE `detection` (
  `nodetection` int(11) NOT NULL,
  `trestbps` decimal(8,0) DEFAULT NULL,
  `cp` char(2) DEFAULT NULL,
  `chol` decimal(8,0) DEFAULT NULL,
  `fbs` char(2) DEFAULT NULL,
  `restecg` char(2) DEFAULT NULL,
  `thalach` decimal(8,0) DEFAULT NULL,
  `exang` char(2) DEFAULT NULL,
  `oldpeak` decimal(8,0) DEFAULT NULL,
  `slope` char(2) DEFAULT NULL,
  `ca` decimal(8,0) DEFAULT NULL,
  `thal` char(2) DEFAULT NULL,
  `result` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `diagnosa`
--

CREATE TABLE `diagnosa` (
  `diagnosaid` int(11) NOT NULL,
  `hasildiagnosa` varchar(700) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diagnosa`
--

INSERT INTO `diagnosa` (`diagnosaid`, `hasildiagnosa`) VALUES
(3, 'setuju|tidaksetuju|setuju|4|2|3|tidaksetuju|ya|tidak|ya|ya|tidak|setuju|setuju|4|3|2|4|1'),
(4, '||||||||||||||||||'),
(5, '||||||||||||||||||'),
(6, 'setuju;tidaksetuju;setuju;3;1;5;setuju;tidak;ya;tidak;ya;ya;setuju;setuju;4;2;4;1;3'),
(7, 'setuju;tidaksetuju;tidaksetuju;3;;;;;;;;;;;;;;;'),
(8, 'setuju;setuju;setuju;4;4;4;setuju;ya;ya;ya;;ya;setuju;setuju;4;1;1;1;2'),
(9, 'setuju;setuju;setuju;4;4;4;setuju;ya;ya;ya;;ya;setuju;setuju;4;1;1;1;2'),
(10, ';;;;;;;;;;;;;;;;;;'),
(11, ';;;;;;;;;;;;;;;;;;'),
(12, 'setuju;setuju;;;;;;;;;;;;;;;;;'),
(13, ';;;;;;;;;;;;;;;;;;'),
(14, 'tidaksetuju;tidaksetuju;tidaksetuju;5;5;5;tidaksetuju;tidak;tidak;tidak;tidak;tidak;tidaksetuju;tidaksetuju;5;1;1;1;1');

-- --------------------------------------------------------

--
-- Table structure for table `fase`
--

CREATE TABLE `fase` (
  `nofase` int(11) NOT NULL,
  `desfase` varchar(100) DEFAULT NULL,
  `periodefase` char(2) DEFAULT NULL,
  `kdpenyakit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gejalakhusus`
--

CREATE TABLE `gejalakhusus` (
  `nogk` int(11) NOT NULL,
  `descgk` varchar(200) DEFAULT NULL,
  `kdpenyakit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejalakhusus`
--

INSERT INTO `gejalakhusus` (`nogk`, `descgk`, `kdpenyakit`) VALUES
(1, 'Terjadi demam panas pada tubuh', 1),
(2, 'Terlihat memar lebam', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gejalaumum`
--

CREATE TABLE `gejalaumum` (
  `nogu` int(11) NOT NULL,
  `descgu` varchar(50) DEFAULT NULL,
  `kdpenyakit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembawa`
--

CREATE TABLE `pembawa` (
  `nopembawa` int(11) NOT NULL,
  `descpembawa` varchar(100) DEFAULT NULL,
  `kdpenyakit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `kdpenyakit` int(11) NOT NULL,
  `nmpenyakit` varchar(50) DEFAULT NULL,
  `despenyakit` varchar(100) DEFAULT NULL,
  `fketurunan` char(2) DEFAULT NULL,
  `menular` char(2) DEFAULT NULL,
  `kronis` char(2) DEFAULT NULL,
  `image_url` varchar(200) DEFAULT 'https://imcare.000webhostapp.com/images/1.png',
  `video_url` varchar(200) DEFAULT 'https://imcare.000webhostapp.com/videos/cancer.mp4'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`kdpenyakit`, `nmpenyakit`, `despenyakit`, `fketurunan`, `menular`, `kronis`, `image_url`, `video_url`) VALUES
(1, 'Kanker', 'Kanker adalah penyakit yang disebabkan oleh kelainan gen', '01', '00', '01', 'https://imcare.000webhostapp.com/images/1.png', 'https://imcare.000webhostapp.com/videos/1.mp4'),
(2, 'Cerebrovaskular', 'Cerebrovaskular adalah penyakit yang terjadi disekitar otak', '01', '00', '01', 'https://imcare.000webhostapp.com/images/2.jpg', 'https://imcare.000webhostapp.com/videos/2.mp4'),
(3, 'Flu', 'Flu adalah penyakit yang disebabkan oleh virus influenza', '01', '01', '01', 'https://mulaisehat.com/wp-content/uploads/2014/10/penyakit-jantung-koroner-bengkak-lemah.jpg', 'https://imcare.000webhostapp.com/videos/3.mp4'),
(5, 'Paru Obstruktif Kronis', 'Paru Obstruktif Kronis adalah penyakit yang terjadi pada paru-paru secara kronis', '01', '01', '01', 'https://imcare.000webhostapp.com/images/1.png', 'https://imcare.000webhostapp.com/videos/cancer.mp4'),
(6, 'Ginjal', 'Gagal Ginjal', '01', '01', '01', 'https://imcare.000webhostapp.com/images/1.png', 'https://imcare.000webhostapp.com/videos/cancer.mp4'),
(7, 'HIV/AIDS', 'Penyakit yang disebabkan oleh virus HIV, yang gejalanya tidak dapat terdeteksi dalam jangka pendek, ', '00', '01', '01', 'https://imcare.000webhostapp.com/images/7.png', '-');

-- --------------------------------------------------------

--
-- Table structure for table `penyakitrs`
--

CREATE TABLE `penyakitrs` (
  `kdpenyakitrs` int(11) NOT NULL,
  `kdpenyakit` int(11) NOT NULL,
  `idrs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `penyakitrs`
--

INSERT INTO `penyakitrs` (`kdpenyakitrs`, `kdpenyakit`, `idrs`) VALUES
(1, 7, 3),
(2, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `penyebab`
--

CREATE TABLE `penyebab` (
  `nosebab` int(11) NOT NULL,
  `descsebab` varchar(200) DEFAULT NULL,
  `kdpenyakit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rs`
--

CREATE TABLE `rs` (
  `idrs` int(11) NOT NULL,
  `kdrs` varchar(20) DEFAULT NULL,
  `nmrs` varchar(100) DEFAULT NULL,
  `almt` varchar(100) DEFAULT NULL,
  `kotars` varchar(100) DEFAULT NULL,
  `kdposrs` varchar(100) DEFAULT NULL,
  `kelurahanrs` varchar(100) DEFAULT NULL,
  `kecamatanrs` varchar(100) DEFAULT NULL,
  `telprs` varchar(100) DEFAULT NULL,
  `faxrs` varchar(100) DEFAULT NULL,
  `webrs` varchar(100) DEFAULT NULL,
  `humasrs` varchar(100) DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `kdpenyakit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rs`
--

INSERT INTO `rs` (`idrs`, `kdrs`, `nmrs`, `almt`, `kotars`, `kdposrs`, `kelurahanrs`, `kecamatanrs`, `telprs`, `faxrs`, `webrs`, `humasrs`, `longitude`, `latitude`, `kdpenyakit`) VALUES
(1, '3173073', 'Islam Jakarta', 'Jl. Cempaka Putih Tengah I / 1', 'Jakarta Pusat', '10510', 'Cempaka Putih Timur', 'Cempaka Putih', '021 42801567, 021 4250451', '021 4206681', 'www.rsi.co.id', '021 42801567, 021 4250451, Ext 428', 106.871628, -6.171743, 1),
(2, '3671054', 'RS Siloam Gleneagles', 'Jl. Siloam Lippo Karawaci Tangerang', 'Tangerang', '15811', 'Kelapa Dua', 'Curug', '021 5460055', '021 5460921', '-', 'riswati@siloamhospitals.com', 106.597536, -6.225625, 1),
(3, '3171023', 'Pusat Pertamina ', 'Jl. Kyai Maja No. 43', 'Jakarta Selatan', '12120', 'Gunung', 'Kebayoran Baru', '021 7219202', '021 7200290', '-', '021 7203540', 106.792929, -6.239845, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `dob`, `gender`, `email`, `password`) VALUES
(1, 'Admin Name', '1995-07-25', 'm', 'admin@care.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `novideo` int(11) NOT NULL,
  `judulvideo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlvideo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kdpenyakit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`novideo`, `judulvideo`, `urlvideo`, `kdpenyakit`) VALUES
(1, 'Video Gejala', 'https://imcare.000webhostapp.com/videos/1.mp4', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`noartikel`);

--
-- Indexes for table `detection`
--
ALTER TABLE `detection`
  ADD PRIMARY KEY (`nodetection`);

--
-- Indexes for table `diagnosa`
--
ALTER TABLE `diagnosa`
  ADD PRIMARY KEY (`diagnosaid`);

--
-- Indexes for table `fase`
--
ALTER TABLE `fase`
  ADD PRIMARY KEY (`nofase`);

--
-- Indexes for table `gejalakhusus`
--
ALTER TABLE `gejalakhusus`
  ADD PRIMARY KEY (`nogk`);

--
-- Indexes for table `gejalaumum`
--
ALTER TABLE `gejalaumum`
  ADD PRIMARY KEY (`nogu`);

--
-- Indexes for table `pembawa`
--
ALTER TABLE `pembawa`
  ADD PRIMARY KEY (`nopembawa`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`kdpenyakit`);

--
-- Indexes for table `penyakitrs`
--
ALTER TABLE `penyakitrs`
  ADD PRIMARY KEY (`kdpenyakitrs`);

--
-- Indexes for table `penyebab`
--
ALTER TABLE `penyebab`
  ADD PRIMARY KEY (`nosebab`);

--
-- Indexes for table `rs`
--
ALTER TABLE `rs`
  ADD PRIMARY KEY (`idrs`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`novideo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `noartikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `detection`
--
ALTER TABLE `detection`
  MODIFY `nodetection` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diagnosa`
--
ALTER TABLE `diagnosa`
  MODIFY `diagnosaid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `fase`
--
ALTER TABLE `fase`
  MODIFY `nofase` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gejalakhusus`
--
ALTER TABLE `gejalakhusus`
  MODIFY `nogk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gejalaumum`
--
ALTER TABLE `gejalaumum`
  MODIFY `nogu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembawa`
--
ALTER TABLE `pembawa`
  MODIFY `nopembawa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `kdpenyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `penyakitrs`
--
ALTER TABLE `penyakitrs`
  MODIFY `kdpenyakitrs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penyebab`
--
ALTER TABLE `penyebab`
  MODIFY `nosebab` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rs`
--
ALTER TABLE `rs`
  MODIFY `idrs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `novideo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
