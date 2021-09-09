-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Okt 2020 pada 07.13
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatifyhibernate`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`) VALUES
(184000, 'Christian Frans', 'christian29', 'databasechatify2020'),
(184001, 'Deyaninta Ekabriela', 'deyaninta', 'databasechatify');

-- --------------------------------------------------------

--
-- Struktur dari tabel `creators`
--

CREATE TABLE `creators` (
  `id` int(20) NOT NULL,
  `first_name` varchar(10) NOT NULL,
  `last_name` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `creators`
--

INSERT INTO `creators` (`id`, `first_name`, `last_name`, `address`, `email`, `phone`, `username`, `password`) VALUES
(201000, 'Obed', 'Kristiadi', 'Bintaro', 'obed@gmail.com', '08137648291', 'obedkr', 'bintaroobed'),
(201001, 'Rifqi', 'Fauzi', 'Jakarta Timur', 'rifqifauzi@gmail.com', '089864536271', 'rifqifauzi', 'jakartafauzi2020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id` int(20) NOT NULL,
  `admin_id` int(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id`, `admin_id`, `title`, `url`) VALUES
(221000, 184000, 'Colek Pemerintah Pusat, Bupati Bogor Harap Banjir Bojongkulur Tak Terjadi di 2021', 'https://cdns.klimg.com/merdeka.com/i/w/news/2020/10/25/1235228/670x335/colek-pemerintah-pusat-bupati-bogor-harap-banjir-bojongkulur-tak-terjadi-di-2021.jpg'),
(221003, 184001, 'Cara Membuat Kolam Terpal bagi Pemula, Cocok untuk Budidaya Ikan', 'https://cdns.klimg.com/merdeka.com/i/w/news/2020/10/23/1234713/670x335/cara-membuat-kolam-terpal-bagi-pemula-cocok-untuk-budidaya-ikan.jpg'),
(221004, 184000, 'Toyota Crown Terbalik Usai Hajar Separator TransJakarta di Senayan', 'https://cdns.klimg.com/merdeka.com/i/w/news/2020/10/25/1235214/670x335/toyota-crown-terbalik-usai-hajar-separator-transjakarta-di-senayan.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stickers`
--

CREATE TABLE `stickers` (
  `id` int(20) NOT NULL,
  `creators_id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `price` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `stickers`
--

INSERT INTO `stickers` (`id`, `creators_id`, `name`, `url`, `price`) VALUES
(307000, 201000, 'Milk & Mocha: Custom Stickers', 'https://stickershop.line-scdn.net/stickershop/v1/product/14898/LINEStorePC/main.png', 23000),
(307002, 201000, 'French Bulldog PIGU- Sticker III', 'https://stickershop.line-scdn.net/stickershop/v1/product/14913/LINEStorePC/main.png', 23000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `address`, `email`, `phone`, `username`, `password`) VALUES
(173000, 'Kevin', 'Suwandi', 'Depok', 'kevinsw@gmail.com', '089654712864', 'kevinsw', 'kevindepok123'),
(173001, 'Faiz', 'Anugerah', 'Jakarta Timur', 'faizanugerah@gmail.com', '089624516372', 'faizanugerah', 'faizanjakarta'),
(173003, 'Nafi', 'Althofa', 'Jakarta Barat', 'nafialthofa@gmail.com', '082165748291', 'nafialthofa', 'mobilegranger'),
(173004, 'Mufadhal', 'Farraz', 'Jakarta Utara', 'fadhalfr@gmail.com', '089674836273', 'fadhal22', 'fadhal22jakarta'),
(173006, 'Steven', 'Andrian', 'Tangerang Selatan', 'stevenand@gmail.com', '081365748291', 'stevenalphin', 'alphin89'),
(173007, 'Andre', 'Calvin', 'Depok', 'andrecalvin@gmail.com', '081265748932', 'andrecl', 'testingwebsite');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `creators`
--
ALTER TABLE `creators`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_ibfk_1` (`admin_id`);

--
-- Indeks untuk tabel `stickers`
--
ALTER TABLE `stickers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stickers_ibfk_1` (`creators_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184002;

--
-- AUTO_INCREMENT untuk tabel `creators`
--
ALTER TABLE `creators`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201002;

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221005;

--
-- AUTO_INCREMENT untuk tabel `stickers`
--
ALTER TABLE `stickers`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307003;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173010;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- Ketidakleluasaan untuk tabel `stickers`
--
ALTER TABLE `stickers`
  ADD CONSTRAINT `stickers_ibfk_1` FOREIGN KEY (`creators_id`) REFERENCES `creators` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
