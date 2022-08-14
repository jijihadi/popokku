-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jul 2022 pada 15.26
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_popoku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_artikel`
--

CREATE TABLE `tb_artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `headline` varchar(50) NOT NULL,
  `tanggal_rilis` datetime NOT NULL DEFAULT current_timestamp(),
  `edited` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_artikel`
--

INSERT INTO `tb_artikel` (`id_artikel`, `judul`, `isi`, `headline`, `tanggal_rilis`, `edited`) VALUES
(3, 'Komunitas Popoku Berkah', '<p>Banyuwangi, 17 Juni 2021. Popoku berkah merupakan komunitas peduli limbah yang ada di Desa Tamanbaru, Kabupaten Banyuwangi, komunitas ini dikenal dengan kegiatannya yang ekstrim yaitu mengolah limbah yang berasal dari lmbah popok bayi. Apalagi dimasa pandemic Covid-19 yang mengakibatkan turunnya perekonomian masyarakat. Hal tersebut mendorong pola pikir masyarakat untuk memanfaatkan beberapa peluang usaha. Salah satunya adalah pemanfaatan limbah sampah organik maupun non Organik. Komunitas Popoku berkah berhasil menciptakan aneka kreativitas yang dihasilkan dari berbagai sampah, salah satunya adalah limbah popok bayi. Hal tersebut membuat banyak masyarakat yang antusias dengan ikut serta kerja sama dalam pemanfaatan limbah popok. Melalui akun media sosialnya Instagram @popoku_berkah mengunggah foto salah satu kegiatan yang dilakukan yaitu program BOSS ( Banyuwangi Olah Sampah Sendiri) yaitu program pengambilan sampah rumah tangga dari warga sekitar base camp Popoku Berkah yang kemudian diolah menjadi sesuatu yang bermanfaat, seperti kerajinan tangan bahkan pupuk. Hal tersebut dapat mencegah timbunan sampah di TPA</p>\r\n', 'headline_artikel_aZ6T8dA.png', '2022-04-16 21:33:18', 0),
(4, 'Testing Artikel', '<p>Test 1 2 3</p>\r\n\r\n<h2 style=\"font-style:italic;\">Komunitas popoku Berkah ,&nbsp;</h2>\r\n\r\n<ol>\r\n	<li>\r\n	<h1>aaaa</h1>\r\n	</li>\r\n	<li>wwwww</li>\r\n</ol>\r\n', 'headline_artikel_5ABfIVf.png', '2022-05-14 21:46:31', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_donasi`
--

CREATE TABLE `tb_donasi` (
  `id_donasi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jumlah_donasi` int(11) NOT NULL,
  `tanggal_pengajuan` datetime NOT NULL,
  `lati` varchar(50) DEFAULT NULL,
  `longi` varchar(50) DEFAULT NULL,
  `alamat_jemput` text NOT NULL,
  `id_kurir` int(11) DEFAULT 0,
  `tanggal_diambil` datetime DEFAULT NULL,
  `status_donasi` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_donasi`
--

INSERT INTO `tb_donasi` (`id_donasi`, `id_user`, `jumlah_donasi`, `tanggal_pengajuan`, `lati`, `longi`, `alamat_jemput`, `id_kurir`, `tanggal_diambil`, `status_donasi`) VALUES
(2, 12, 100, '2021-02-16 17:00:00', NULL, NULL, 'dimanaa', 7, '2021-02-16 12:00:00', 2),
(6, 13, 95, '2021-02-17 12:00:00', '-8.171294744583374', '113.72642046863048', 'disini                                                                                                                                                                                                ', 1, '2021-02-25 12:00:00', 2),
(7, 12, 100, '2021-02-19 12:00:00', '-6.4390402302111704', '106.90408992562313', 'disiiiiiniiiiii yaaa                                ', 10, '2021-02-18 12:00:00', 2),
(8, 12, 10, '2021-02-25 19:00:00', '-8.138697896388997', '113.2246913854033', 'disana pokoknya dah', 0, NULL, 0),
(15, 21, 100, '2022-04-27 12:00:00', '-8.421347', '114.2314161', 'Desa Sraten Dusun Tapansari                                ', 12, '2022-04-27 12:00:00', 1),
(16, 21, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL, 0),
(17, 21, 11, '0000-00-00 00:00:00', '-8.421355', '114.2314144', '', 0, NULL, 0),
(18, 21, 0, '2022-05-22 12:00:00', '-8.4213525', '114.2314186', 'www', 0, NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kapasitas`
--

CREATE TABLE `tb_kapasitas` (
  `id_kapasitas` int(11) NOT NULL,
  `id_level_kapasitas` int(11) NOT NULL,
  `id_kurir` int(11) NOT NULL,
  `kapasitas_max` int(11) NOT NULL,
  `kapasitas_sekarang` int(11) NOT NULL,
  `kapasitas_sisa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kapasitas`
--

INSERT INTO `tb_kapasitas` (`id_kapasitas`, `id_level_kapasitas`, `id_kurir`, `kapasitas_max`, `kapasitas_sekarang`, `kapasitas_sisa`) VALUES
(2, 1, 1, 500, 400, 400),
(9, 2, 7, 1000, 100, 100),
(10, 2, 10, 1000, 300, 200),
(11, 1, 12, 500, 500, 500);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama_kategori`) VALUES
(4, 'Vas'),
(6, 'pot'),
(9, 'Asbak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kegiatan`
--

CREATE TABLE `tb_kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `nama_kegiatan` varchar(100) NOT NULL,
  `deskripsi_kegiatan` text NOT NULL,
  `lokasi_kegiatan` varchar(100) NOT NULL,
  `foto_kegiatan` varchar(100) NOT NULL,
  `tanggal_kegiatan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kegiatan`
--

INSERT INTO `tb_kegiatan` (`id_kegiatan`, `nama_kegiatan`, `deskripsi_kegiatan`, `lokasi_kegiatan`, `foto_kegiatan`, `tanggal_kegiatan`) VALUES
(3, 'Pelatihan Pengolahan Limbah Popok di Bumdes Karya Mandiri Balung Kulon, Jember', 'melatih masyarakat balung agar mengolah limbah popok menjadi barang yang bermanfaat', 'Jember', 'foto_kegiatan_2f4yXq9.png', '2022-04-16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kurir`
--

CREATE TABLE `tb_kurir` (
  `id_kurir` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `lokasi_kurir` varchar(100) NOT NULL,
  `plat_nomor_kurir` varchar(15) NOT NULL,
  `foto_kurir` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kurir`
--

INSERT INTO `tb_kurir` (`id_kurir`, `id_user`, `lokasi_kurir`, `plat_nomor_kurir`, `foto_kurir`) VALUES
(1, 10, 'Banyuwnagi Kota', 'BG 1010 XXX', 'kurir_profil_Y4nDZdy.png'),
(7, 5, 'alasrejo', 'DK 2929 LT', 'kurir_profil_1KzERAo.png'),
(10, 11, 'ada bug kah??', 'P 1999 UC', 'kurir_profil_SGUrAut.png'),
(12, 22, 'banje', 'P 3633 X', 'kurir_profil_Mw1jFoH.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_level`
--

CREATE TABLE `tb_level` (
  `id_level` int(11) NOT NULL,
  `level` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_level`
--

INSERT INTO `tb_level` (`id_level`, `level`) VALUES
(2, 'Admin'),
(3, 'Kurir'),
(4, 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_level_kapasitas`
--

CREATE TABLE `tb_level_kapasitas` (
  `id_level_kapasitas` int(11) NOT NULL,
  `nama_level_kapasitas` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_level_kapasitas`
--

INSERT INTO `tb_level_kapasitas` (`id_level_kapasitas`, `nama_level_kapasitas`) VALUES
(1, 'Cabang'),
(2, 'Pusat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pelatihan`
--

CREATE TABLE `tb_pelatihan` (
  `id_pelatihan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `waktu_pelatihan` datetime NOT NULL,
  `lokasi_pelatihan` text NOT NULL,
  `hp_panitia` varchar(40) NOT NULL,
  `pemateri` varchar(50) DEFAULT NULL,
  `dilaksanakan` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pelatihan`
--

INSERT INTO `tb_pelatihan` (`id_pelatihan`, `id_user`, `waktu_pelatihan`, `lokasi_pelatihan`, `hp_panitia`, `pemateri`, `dilaksanakan`) VALUES
(1, 13, '2021-02-12 14:19:00', 'DImana gitu', '0811222233', 'Surakjen', 1),
(2, 12, '2021-03-17 15:00:00', 'disana', '0811122233', '', 0),
(4, 21, '2022-04-20 12:00:00', 'jember', '083831936745', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penukaran`
--

CREATE TABLE `tb_penukaran` (
  `id_penukaran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah_produk` varchar(25) NOT NULL,
  `bukti_pembayaran` varchar(50) NOT NULL,
  `tanggal_penukaran` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_produk` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `deskripsi_produk` text NOT NULL,
  `stok_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `id_kategori`, `nama_produk`, `harga`, `gambar`, `deskripsi_produk`, `stok_produk`) VALUES
(12, 0, 'rwrw', '', '1643600722_575b2f4487c8837ec985.jpg', '', 0),
(15, 6, 'pot bunga warna hitam motif batik', '20000', '1649600926_7f85a7846d0d9bb6b8c7.jpg', 'terbuat dari 100 persen limbah popok dengan tambahan formula untuk mendaur ulang menjadi pot bunga\r\nlebar diameter : 20cm', 2),
(16, 4, 'vas bunga model tempel', '15000', '1649600994_b82ca0b9d981839c3d6b.jpg', 'terbuat dari 100 persen limbah popok dengan tambahan formula untuk mendaur ulang menjadi vas bunga\r\nlebar diameter : 10cm', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `id_level`, `nama`, `email`, `password`, `no_hp`, `alamat`) VALUES
(1, 2, 'Aing teh Admin', 'a@min.com', '202cb962ac', '08112233', 'haaaaaaaaa\r\nsaya dimanaaaa'),
(5, 3, 'kamu', 'c@c.com', '6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2', '', ''),
(10, 3, 'contoh', 'saya@saya.com', '4f0de9380dcc54f0c95a6c3a37863b687e55b5b1', '', ''),
(20, 2, 'wese', 'wese@gmail.com', '83acd86d25b61ea1bbcff2bb1065f61e97cb22aa', '', ''),
(21, 4, 'dika', 'dika@gmail.com', '7ae3011705f3334c593806fd76920249b999ad31', '083831936745', 'Dusun Banje Desa Bubuk RT 04 RW 02'),
(22, 3, 'dea', 'dea@gmail.com', '497352bd124ac7face89b244a027bca6743d65b1', '082332398367', 'banje'),
(23, 4, 'Muhammad Muchtammir', 'muchtamir21@gmail.com', 'a924cb4539c64077e6c80454752c73b5cabe6b7f', '', ''),
(26, 4, 'bayu', 'bayu12@gmail.com', '4956389055d0c0f8ee35595ab9fbf9adb896143f', '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_artikel`
--
ALTER TABLE `tb_artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indeks untuk tabel `tb_donasi`
--
ALTER TABLE `tb_donasi`
  ADD PRIMARY KEY (`id_donasi`);

--
-- Indeks untuk tabel `tb_kapasitas`
--
ALTER TABLE `tb_kapasitas`
  ADD PRIMARY KEY (`id_kapasitas`);

--
-- Indeks untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tb_kegiatan`
--
ALTER TABLE `tb_kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indeks untuk tabel `tb_kurir`
--
ALTER TABLE `tb_kurir`
  ADD PRIMARY KEY (`id_kurir`);

--
-- Indeks untuk tabel `tb_level`
--
ALTER TABLE `tb_level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indeks untuk tabel `tb_level_kapasitas`
--
ALTER TABLE `tb_level_kapasitas`
  ADD PRIMARY KEY (`id_level_kapasitas`);

--
-- Indeks untuk tabel `tb_pelatihan`
--
ALTER TABLE `tb_pelatihan`
  ADD PRIMARY KEY (`id_pelatihan`);

--
-- Indeks untuk tabel `tb_penukaran`
--
ALTER TABLE `tb_penukaran`
  ADD PRIMARY KEY (`id_penukaran`);

--
-- Indeks untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_artikel`
--
ALTER TABLE `tb_artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_donasi`
--
ALTER TABLE `tb_donasi`
  MODIFY `id_donasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tb_kapasitas`
--
ALTER TABLE `tb_kapasitas`
  MODIFY `id_kapasitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_kegiatan`
--
ALTER TABLE `tb_kegiatan`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_kurir`
--
ALTER TABLE `tb_kurir`
  MODIFY `id_kurir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_level`
--
ALTER TABLE `tb_level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_level_kapasitas`
--
ALTER TABLE `tb_level_kapasitas`
  MODIFY `id_level_kapasitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_pelatihan`
--
ALTER TABLE `tb_pelatihan`
  MODIFY `id_pelatihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_penukaran`
--
ALTER TABLE `tb_penukaran`
  MODIFY `id_penukaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
