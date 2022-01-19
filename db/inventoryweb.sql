-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Feb 2021 pada 04.37
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventoryweb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(20) NOT NULL,
  `nama_barang` varchar(60) DEFAULT NULL,
  `stok` varchar(4) DEFAULT NULL,
  `harga` int(60) NOT NULL,
  `id_satuan` int(20) DEFAULT NULL,
  `id_jenis` int(20) DEFAULT NULL,
  `foto` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `stok`, `harga`, `id_satuan`, `id_jenis`, `foto`) VALUES
('BRG-0001', 'Eko Mie Besar', '25', 8500, 8, 9, '1__mie_eko.jpg'),
('BRG-0002', 'Keripik Kentang', '35', 10000, 8, 10, 'keripik_kentang.jpg'),
('BRG-0003', 'Minyak Goreng', '20', 30000, 8, 9, 'minyak_goreng1.jpg'),
('BRG-0004', 'Teh Tjangkir', '20', 3000, 8, 7, '2__teh_tjangkir.jpg'),
('BRG-0005', 'Teh Cap Dandang Celup', '30', 8000, 6, 7, '3__teh_dandang.jpg'),
('BRG-0006', 'Teh Gopek Celup', '25', 7500, 6, 7, '4__teh_gopek.jpg'),
('BRG-0007', 'Teh Poci Jasmine', '20', 8000, 6, 7, '5__teh_poci_jasmine.jpg'),
('BRG-0008', 'Teh Poci Bubuk', '40', 5000, 8, 7, '6__teh_poci_bubuk.jpg'),
('BRG-0009', 'Teh Hijau Kepala Djenggot', '25', 14500, 6, 7, '7__Teh_Hijau_Kepala_Djenggot.jpg'),
('BRG-0010', 'Narata Keripik Nangka', '70', 25000, 8, 10, '8__Narata_Keripik_Nangka.jpg'),
('BRG-0011', 'Jenang Salak', '80', 15000, 8, 10, '9__jenang_salak.jpg'),
('BRG-0012', 'Kopi Biji Salak', '80', 45000, 8, 7, '10__kopi_biji_salak.jpg'),
('BRG-0013', 'Kopi Arabica', '50', 35000, 8, 7, '11__kopi_arabica.jpg'),
('BRG-0014', 'Kopi Purwaceng', '50', 35000, 8, 7, '12__Kopi-dan-Susu-Purwaceng.jpg'),
('BRG-0015', 'Sirup Salak', '30', 22500, 8, 7, '13__Sirup-Salak.jpg'),
('BRG-0016', 'Carica Dieng', '100', 30000, 6, 10, '14__carica.jpg'),
('BRG-0017', 'Tepung Dawet Hijau Pandan', '70', 13500, 8, 7, '15__Sruut_Tepung_Dawet_Hijau_Pandan.jpg'),
('BRG-0018', 'Tepung Dawet Merah Frambozen', '70', 13500, 8, 7, '16__TEPUNG_DAWET__CENDOL__INSTAN_SRUUT_MERAH_FRAMBOZEN.jpg'),
('BRG-0019', 'Tepung Dawet Asli Instant', '60', 16500, 8, 7, 'tepung_dawat_instant.jpg'),
('BRG-0020', 'Tepung Dawet Putih Vanilla', '50', 13500, 8, 7, 'dawet_putih_vanilla.jpg'),
('BRG-0021', 'Sruut Sirup Gula ', '30', 9000, 8, 7, 'sruut_sirup_gula.jpg'),
('BRG-0022', 'Biji Wijen 1kg', '20', 38000, 8, 10, 'biji_wijen.jpg'),
('BRG-0023', 'Kerupuk Getas', '30', 15500, 8, 10, '16__kerupuk_getas.jpg'),
('BRG-0024', 'Kacang Mete 40gr', '40', 17000, 8, 10, 'kacang_mete.jpg'),
('BRG-0025', 'Beras Merah Organik 2kg', '20', 50000, 8, 9, 'beras_merah.jpg'),
('BRG-0026', 'Botanik Beras Hitam 1kg', '20', 35000, 8, 9, 'beras_hitam.jpg'),
('BRG-0027', 'Beras Shirataki 230gr', '20', 45000, 8, 9, 'beras_shiraaki.jpg'),
('BRG-0028', 'Kopi Robusta Dampit 500gr', '40', 32000, 8, 7, 'kopi_robusta_dampit.jpg'),
('BRG-0029', 'Seblak Karuhun', '30', 13000, 8, 10, 'seblak_karuhun.jpg'),
('BRG-0030', 'Batagor Kuah', '25', 13000, 8, 10, 'batagor_kuah.jpg'),
('BRG-0031', 'Baso Aci', '30', 13000, 8, 10, 'baso_aci.jpg'),
('BRG-0032', 'Kerupuk Slondok', '30', 11000, 8, 10, 'slondok.jpg'),
('BRG-0033', 'Cireng Bumbu Rujak', '30', 11000, 8, 10, 'cireng_bumbu_rujak.jpg'),
('BRG-0034', 'Aqua', '30', 4000, 8, 14, 'aqua3.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id_barang_keluar` varchar(30) NOT NULL,
  `id_barang` varchar(30) DEFAULT NULL,
  `id_user` varchar(30) DEFAULT NULL,
  `jumlah_keluar` varchar(5) DEFAULT NULL,
  `tgl_keluar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang_keluar`
--

INSERT INTO `barang_keluar` (`id_barang_keluar`, `id_barang`, `id_user`, `jumlah_keluar`, `tgl_keluar`) VALUES
('BRG-K-0001', 'BRG-0001', 'USR-001', '12', '2021-01-26'),
('BRG-K-0002', 'BRG-0001', 'USR-001', '25', '2021-01-26'),
('BRG-K-0003', 'BRG-0002', 'USR-001', '23', '2021-01-31'),
('BRG-K-0004', 'BRG-0003', 'USR-001', '5', '2021-01-31'),
('BRG-K-0005', 'BRG-0033', 'USR-001', '10', '2021-02-05'),
('BRG-K-0006', 'BRG-0032', 'USR-001', '15', '2021-02-05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `id_barang_masuk` varchar(40) NOT NULL,
  `id_supplier` varchar(30) DEFAULT NULL,
  `id_barang` varchar(30) DEFAULT NULL,
  `id_user` varchar(30) DEFAULT NULL,
  `jumlah_masuk` int(10) DEFAULT NULL,
  `tgl_masuk` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang_masuk`
--

INSERT INTO `barang_masuk` (`id_barang_masuk`, `id_supplier`, `id_barang`, `id_user`, `jumlah_masuk`, `tgl_masuk`) VALUES
('BRG-M-0001', 'SPLY-0001', 'BRG-0001', 'USR-001', 39, '2021-01-26'),
('BRG-M-0002', 'SPLY-0001', 'BRG-0001', 'USR-001', 23, '2021-01-26'),
('BRG-M-0003', 'SPLY-0002', 'BRG-0002', 'USR-001', 20, '2021-01-28'),
('BRG-M-0004', 'SPLY-0001', 'BRG-0003', 'USR-001', 10, '2021-01-27'),
('BRG-M-0005', 'SPLY-0001', 'BRG-0004', 'USR-001', 25, '2021-02-04'),
('BRG-M-0006', 'SPLY-0001', 'BRG-0033', 'USR-001', 20, '2021-02-04'),
('BRG-M-0007', 'SPLY-0002', 'BRG-0006', 'USR-001', 15, '2021-02-05'),
('BRG-M-0008', 'SPLY-0002', 'BRG-0034', 'USR-001', 10, '2021-02-05'),
('BRG-M-0009', 'SPLY-0002', 'BRG-0034', 'USR-001', 10, '2021-02-05'),
('BRG-M-0010', 'SPLY-0001', 'BRG-0034', 'USR-001', 10, '2021-02-05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis`
--

CREATE TABLE `jenis` (
  `id_jenis` int(20) NOT NULL,
  `nama_jenis` varchar(20) DEFAULT NULL,
  `ket` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `nama_jenis`, `ket`) VALUES
(7, 'Minuman', ''),
(9, 'Kebutuhan Pokok', ''),
(10, 'Makanan Ringan', ''),
(14, 'Minuman Botol', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan`
--

CREATE TABLE `satuan` (
  `id_satuan` int(20) NOT NULL,
  `nama_satuan` varchar(60) DEFAULT NULL,
  `ket` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `satuan`
--

INSERT INTO `satuan` (`id_satuan`, `nama_satuan`, `ket`) VALUES
(6, 'Box', ''),
(8, 'Pcs', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` varchar(10) NOT NULL,
  `nama_supplier` varchar(60) DEFAULT NULL,
  `notelp` varchar(15) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `notelp`, `alamat`) VALUES
('SPLY-0001', 'Samudra Grup', '089987868765', 'Temanggung'),
('SPLY-0002', 'IPPNU Kupen', '08798756453', 'Temanggung'),
('SPLY-0003', 'Perdana Muda', '09889798687', 'Temanggung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `level` enum('gudang','admin','manajer') NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `email`, `notelp`, `level`, `password`, `foto`, `status`) VALUES
('USR-001', 'Admin', 'admin', 'admin@gmail.com', '08993571357', 'admin', '0192023a7bbd73250516f069df18b500', 'user.png', 'Aktif'),
('USR-002', 'Gudang', 'gudang', 'gudang@gmail.com', '08997535425', 'gudang', 'cbb7449d78314665f9e7c7dd0a18a68a', 'user.png', 'Aktif'),
('USR-003', 'Pemilik', 'pemilik', 'pemilik@gmail.com', '087765678762', 'manajer', '59e9eb8bcdc5d14ebb629d41e0613ffa', 'user.png', 'Aktif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_satuan` (`id_satuan`),
  ADD KEY `id_jenis` (`id_jenis`);

--
-- Indeks untuk tabel `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id_barang_keluar`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`id_barang_masuk`),
  ADD KEY `id_supplier` (`id_supplier`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id_satuan`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id_jenis` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id_satuan` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_jenis`) REFERENCES `jenis` (`id_jenis`),
  ADD CONSTRAINT `barang_ibfk_2` FOREIGN KEY (`id_satuan`) REFERENCES `satuan` (`id_satuan`);

--
-- Ketidakleluasaan untuk tabel `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD CONSTRAINT `barang_masuk_ibfk_1` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`),
  ADD CONSTRAINT `barang_masuk_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
