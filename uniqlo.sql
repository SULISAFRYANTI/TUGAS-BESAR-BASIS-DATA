-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2023 at 06:00 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uniqlo`
--

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `ID_History` int(200) NOT NULL,
  `ID_Payment` int(11) DEFAULT NULL,
  `ID_Produk` int(11) DEFAULT NULL,
  `Tanggal_Tiba` datetime DEFAULT NULL,
  `komentar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`ID_History`, `ID_Payment`, `ID_Produk`, `Tanggal_Tiba`, `komentar`) VALUES
(101, 11001, 1001, '2023-02-01 00:00:00', 'Barang Sudah sampai'),
(102, 11002, 1002, '2023-02-02 00:00:00', 'Barang Sesuai dengan gambar'),
(103, 11003, 1003, '2023-02-03 00:00:00', 'Barang tidak sesuai dengan foto'),
(104, 11004, 1004, '2023-02-04 00:00:00', 'Pengiriman lambat'),
(105, 11005, 1005, '2023-02-05 00:00:00', 'Size kekecilan'),
(106, 11006, 1006, '2023-02-06 00:00:00', 'Barangnya bagus'),
(107, 11007, 1007, '2023-02-07 00:00:00', 'Bahannya tidak diragukan'),
(108, 11008, 1008, '2023-02-08 00:00:00', 'Barang telah tiba dengan selamat'),
(109, 11009, 1009, '2023-02-09 00:00:00', 'Beli disini gapernah gagal'),
(110, 11010, 1010, '2023-02-10 00:00:00', 'Suka banget');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `ID_Kategori` int(11) NOT NULL,
  `Nama_Kategori` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`ID_Kategori`, `Nama_Kategori`) VALUES
(1, 'Tops'),
(2, 'Outwear'),
(3, 'Bottoms'),
(4, 'Accessories'),
(5, 'Lounge Wear'),
(6, 'Dresses'),
(7, 'Innerwear'),
(8, 'Sport Utility Wear'),
(9, 'Toddler'),
(10, 'Newborn');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `ID_Keranjang` int(11) NOT NULL,
  `ID_Pelanggan` int(11) DEFAULT NULL,
  `JumlahWishlist` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`ID_Keranjang`, `ID_Pelanggan`, `JumlahWishlist`) VALUES
(111, 1, '5'),
(112, 4, '7'),
(113, 6, '10'),
(114, 2, '15'),
(115, 9, '3'),
(116, 5, '10'),
(117, 3, '18'),
(118, 8, '20'),
(119, 15, '1'),
(120, 12, '9');

-- --------------------------------------------------------

--
-- Table structure for table `kurir`
--

CREATE TABLE `kurir` (
  `ID_Kurir` int(11) NOT NULL,
  `ID_Pelanggan` int(11) DEFAULT NULL,
  `ID_Payment` int(11) DEFAULT NULL,
  `Nama` varchar(255) DEFAULT NULL,
  `Alamat` varchar(255) DEFAULT NULL,
  `JenisPengiriman` varchar(255) DEFAULT NULL,
  `TanggalPengiriman` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kurir`
--

INSERT INTO `kurir` (`ID_Kurir`, `ID_Pelanggan`, `ID_Payment`, `Nama`, `Alamat`, `JenisPengiriman`, `TanggalPengiriman`) VALUES
(1, 1, 11001, 'Abidin', 'Lenteng Agung', 'Uniqlo Express', '2023-01-28'),
(2, 2, 11002, 'Surya', 'Cibinong', 'J&T Express', '2023-01-30'),
(3, 3, 11003, 'Mori', 'Bojonggede', 'Si Cepat', '2023-02-01'),
(4, 4, 11004, 'Miko', 'Bekasi', 'Si Cepat', '2023-01-25'),
(5, 5, 11005, 'Tino', 'Tangerang', 'Ninja Express', '2023-02-02'),
(6, 6, 11006, 'Toni', 'Semarang', 'JNE', '2023-01-28'),
(7, 7, 11007, 'Bambang', 'Bandung', 'Uniqlo Express', '2023-01-27'),
(8, 8, 11008, 'Yono', 'Bogor', 'Anteraja', '2023-02-05'),
(9, 9, 11009, 'Vino', 'Kemang', 'J&T Express', '2023-02-01'),
(10, 10, 11010, 'Mio', 'Cinere', 'Uniqlo Express', '2023-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ID_Order` int(11) NOT NULL,
  `ID_Pelanggan` int(11) DEFAULT NULL,
  `ID_Produk` int(11) DEFAULT NULL,
  `Tanggal_Order` datetime DEFAULT NULL,
  `Jumlah_Items` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ID_Order`, `ID_Pelanggan`, `ID_Produk`, `Tanggal_Order`, `Jumlah_Items`) VALUES
(101, 1, 1001, '2023-01-01 00:00:00', 10),
(102, 2, 1002, '2023-01-02 00:00:00', 15),
(103, 3, 1003, '2023-01-03 00:00:00', 20),
(104, 4, 1004, '2023-01-04 00:00:00', 12),
(105, 5, 1005, '2023-01-05 00:00:00', 18),
(106, 6, 1006, '2023-01-06 00:00:00', 25),
(107, 7, 1007, '2023-01-07 00:00:00', 8),
(108, 8, 1008, '2023-01-08 00:00:00', 14),
(109, 9, 1009, '2023-01-09 00:00:00', 22),
(110, 10, 1010, '2023-01-10 00:00:00', 17);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `ID_Pelanggan` int(11) NOT NULL,
  `Nama_Pelanggan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`ID_Pelanggan`, `Nama_Pelanggan`) VALUES
(1, 'Sulis'),
(2, 'Nadia'),
(3, 'Afryanti'),
(4, 'Qasamah'),
(5, 'Salwa'),
(6, 'Titin'),
(7, 'Irma'),
(8, 'Farah'),
(9, 'Nana'),
(10, 'Safira'),
(11, 'Sarmili'),
(12, 'Budi'),
(13, 'Imam'),
(14, 'Aming'),
(15, 'Gerry');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `ID_Produk` int(11) NOT NULL,
  `ID_Kategori` int(11) DEFAULT NULL,
  `Nama_Produk` varchar(100) DEFAULT NULL,
  `Price` decimal(10,0) DEFAULT NULL,
  `Stok` int(11) DEFAULT NULL,
  `Ukuran` varchar(50) DEFAULT NULL,
  `Keterangan_Jenis` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`ID_Produk`, `ID_Kategori`, `Nama_Produk`, `Price`, `Stok`, `Ukuran`, `Keterangan_Jenis`) VALUES
(1001, 1, 'Crew Neck Short', 149000, 2, 'M', 'T-Shirt Short Sleeves'),
(1002, 1, 'Supima Cotton', 199000, 5, 'L', 'T-Shirt Short Sleeves'),
(1003, 1, 'Oversized Stripes', 100000, 2, 'L', 'T-Shirt Short Sleeves'),
(1004, 1, 'Airsm Cotton', 199000, 5, 'S', 'T-Shirt Short Sleeves'),
(1005, 1, 'Striped Cotton', 149000, 3, 'S', 'T-Shirt Short Sleeves'),
(1006, 1, 'Heattech Fleece', 150000, 3, 'L', 'T-Shirt Long Sleeves'),
(1007, 1, 'Soft Brushed', 155000, 9, 'M', 'T-Shirt Long Sleeves'),
(1008, 1, 'Heattech Fleece Turtle Neck', 150000, 3, 'L', 'T-Shirt Long Sleeves'),
(1009, 1, 'Striped Cardigan', 199000, 3, 'S', 'T-Shirt Long Sleeves'),
(1010, 1, 'Smooth Cotton', 150000, 8, 'M', 'T-Shirt Long Sleeves'),
(1011, 2, 'Ultra Light Parka', 199000, 8, 'L', 'Jacket'),
(1012, 2, 'Powder Socket', 100000, 5, 'S', 'Jacket'),
(1013, 2, 'Hybrid Down Coat', 100000, 4, 'L', 'Jas'),
(1014, 2, 'Double Face', 100000, 4, 'L', 'Jas'),
(1015, 2, 'Padded Shirt Coat', 110000, 4, 'L', 'Jas'),
(1016, 2, 'Single Breasted Coat', 200000, 2, 'M', 'Jas'),
(1017, 2, 'Hybrid Down Coat', 100000, 4, 'L', 'Jas'),
(1018, 2, 'Balmacaan', 250000, 6, 'XL', 'Jas'),
(1019, 2, 'Hybrid Coat', 400000, 7, 'XXL', 'Jas'),
(1020, 2, 'Seamless', 700000, 2, 'Xs', 'Jacket'),
(1022, 3, 'Baggy Jeans', 299000, 6, 'XXL', 'Jeans'),
(1023, 3, 'Wide Tapered Jeans', 399000, 4, 'M', 'Jeans'),
(1024, 4, 'Round Shoulder Bag', 299000, 6, 'S', 'Bags'),
(1025, 4, 'Round Mini Shoulder Corduroy', 199000, 4, 'M', 'Bags'),
(1026, 5, 'Airsm Pajamas', 299000, 5, 'S', 'Pajamas'),
(1027, 5, 'Airsm Cotton Short', 199000, 4, 'M', 'Pajamas'),
(1028, 6, 'Dress Kura Kura', 299000, 5, 'S', 'Dress'),
(1029, 6, 'Dress Rayon', 199000, 4, 'M', 'Dress'),
(1030, 7, 'Wireless Bra', 299000, 5, 'L', 'Innerwear'),
(1031, 7, 'Airsm Bra', 299000, 4, 'XL', 'Innerwear'),
(1032, 8, 'Jaket Sweat Dry Stretch Hoodie Lengan Panjang (Polos)', 299000, 5, 'L', 'Sport Utility Wear'),
(1033, 8, 'Celana Track Dry Sweat', 299000, 4, 'XL', 'Sport Utility Wear'),
(1034, 9, 'UT Studio Ghibli Lengan Pendek', 199000, 12, 'L', 'Toddler'),
(1035, 9, 'PUFFTECH Jaket Parka Washable (Warm Padded)', 129000, 10, 'M', 'Toddler'),
(1036, 10, 'Baju Terusan Rib 1*1 Tanpa Lengan (Bunga)', 109000, 12, 'L', 'Newborn'),
(1037, 10, 'Celana Legging (Serupa Corduroy)', 129000, 3, 'M', 'Newborn');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `ID_Promo` int(11) NOT NULL,
  `ID_Kategori` int(11) DEFAULT NULL,
  `NamaProduk` varchar(255) DEFAULT NULL,
  `Harga_Promo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`ID_Promo`, `ID_Kategori`, `NamaProduk`, `Harga_Promo`) VALUES
(201, 1, 'Kardigan Proteksi Sinar UV Kerah Bulat Lengan Panjang', '199000'),
(202, 2, 'Jaket Kemeja Miracle Air Serupa Wol (AirSense)', '550000'),
(203, 4, 'Ikat Pinggang Bulat Kulit Mesh', '350000'),
(204, 1, 'Pullover Hoodie Fleece Lengan Panjang', '400000'),
(205, 3, 'Celana Sweat Dry Stretch', '159000'),
(206, 3, 'GIRLS Rok Model Celana Lipit Kotak', '250000'),
(207, 4, 'KIDS HEATTECH Sarung Tangan Lapis Fungsional', '75000'),
(208, 6, 'AIRism Katun Gaun T Lengan Pendek', '299000'),
(209, 5, 'Celana Katun Ankle Rileks (Garis)', '150000'),
(210, 7, 'KIDS Sweater Ultra Stretch Lengan Panjang', '129000'),
(211, 8, 'T-Shirt DRY-EX Kerah Bulat Motif', '199000'),
(212, 10, 'Baju Terusan Joy of Print 1 Pack Lengan Pendek', '80000'),
(213, 9, 'HEATTECH T-Shirt Kerah U Lengan Panjang (Reguler)', '99000'),
(214, 7, 'KIDS AIRism Jaket Mesh Hoodie Proteksi Sinar UV Lengan Panjang', '99000'),
(215, 10, 'Baju Terusan Rib 1*1 Joy of Print Lengan Panjang', '115000'),
(216, 5, 'Celana Flannel', '150000'),
(217, 6, 'GIRLS Rok Jumper Warna', '300000'),
(218, 9, 'Tank Top Katun Mesh 2 Pack Joy of Print (Ikan)', '130000'),
(219, 2, 'AIRism Jaket Hoodie Retsleting Proteksi Sinar UV', '350000'),
(220, 4, 'Tas Bahu Bulat Kulit Sintetis', '450000');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `ID_Kota` int(11) NOT NULL,
  `ID_Produk` int(11) DEFAULT NULL,
  `Kota` varchar(255) DEFAULT NULL,
  `AlamatStore` varchar(255) DEFAULT NULL,
  `Negara` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`ID_Kota`, `ID_Produk`, `Kota`, `AlamatStore`, `Negara`) VALUES
(101, 1001, 'Sumatera Utara', 'Uniqlo Delipark', 'Indonesia'),
(102, 1002, 'Riau', 'Uniqlo Living World Pekanbaru', 'Indonesia'),
(103, 1003, 'Jambi', 'Uniqlo Jambi Town Square', 'Indonesia'),
(104, 1004, 'Sumatera Selatan', 'Uniqlo Palembang Icon', 'Indonesia'),
(105, 1005, 'Sumatera Selatan', 'Uniqlo Mal Boemi Kedaton', 'Indonesia'),
(106, 1006, 'DKI Jakarta', 'Uniqlo Gandaria City', 'Indonesia'),
(107, 1007, 'Depok', 'Uniqlo Margo City', 'Indonesia'),
(108, 1008, 'Semarang', 'Uniqlo DP Mal', 'Indonesia'),
(109, 1009, 'Bogor', 'Uniqlo Cibinong City Mall', 'Indonesia'),
(110, 1010, 'Bogor', 'Uniqlo Pakuwon Mall Jogja', 'Indonesia'),
(111, 1032, 'Banten', 'Uniqlo AEON Mall  BSD City', 'Indonesia'),
(112, 1020, 'Bali', 'Uniqlo Level 21 Mall', 'Indonesia'),
(113, 1025, 'Surabaya', 'Uniqlo Ciputra World Surabaya', 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `ID_Payment` int(11) NOT NULL,
  `ID_Order` int(11) DEFAULT NULL,
  `JenisPembayaran` varchar(255) DEFAULT NULL,
  `TanggalPembayaran` varchar(255) DEFAULT NULL,
  `No_VA` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`ID_Payment`, `ID_Order`, `JenisPembayaran`, `TanggalPembayaran`, `No_VA`) VALUES
(11001, 101, 'Mandiri', '2023-01-01', '1234567'),
(11002, 102, 'BCA', '2023-01-02', '2345678'),
(11003, 103, 'BRI', '2023-01-03', '3456789'),
(11004, 104, 'Mega', '2023-01-04', '4567890'),
(11005, 105, 'BRI', '2023-01-05', '5678901'),
(11006, 106, 'BNI', '2023-01-06', '6789012'),
(11007, 107, 'BTN', '2023-01-07', '7890123'),
(11008, 108, 'Permata', '2023-01-08', '8901234'),
(11009, 109, 'Mandiri', '2023-01-09', '9012345'),
(11010, 110, 'BSI', '2023-01-10', '0123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`ID_History`),
  ADD KEY `ID_Payment` (`ID_Payment`),
  ADD KEY `ID_Produk` (`ID_Produk`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`ID_Kategori`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`ID_Keranjang`),
  ADD KEY `ID_Pelanggan` (`ID_Pelanggan`);

--
-- Indexes for table `kurir`
--
ALTER TABLE `kurir`
  ADD PRIMARY KEY (`ID_Kurir`),
  ADD KEY `ID_Payment` (`ID_Payment`),
  ADD KEY `ID_Pelanggan` (`ID_Pelanggan`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID_Order`),
  ADD KEY `ID_Pelanggan` (`ID_Pelanggan`),
  ADD KEY `ID_Produk` (`ID_Produk`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`ID_Pelanggan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`ID_Produk`),
  ADD KEY `ID_Kategori` (`ID_Kategori`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`ID_Promo`),
  ADD KEY `ID_Kategori` (`ID_Kategori`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`ID_Kota`),
  ADD KEY `ID_Produk` (`ID_Produk`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`ID_Payment`),
  ADD KEY `ID_Order` (`ID_Order`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`ID_Payment`) REFERENCES `transaksi` (`ID_Payment`),
  ADD CONSTRAINT `history_ibfk_2` FOREIGN KEY (`ID_Produk`) REFERENCES `produk` (`ID_Produk`);

--
-- Constraints for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_ibfk_1` FOREIGN KEY (`ID_Pelanggan`) REFERENCES `pelanggan` (`ID_Pelanggan`);

--
-- Constraints for table `kurir`
--
ALTER TABLE `kurir`
  ADD CONSTRAINT `kurir_ibfk_1` FOREIGN KEY (`ID_Payment`) REFERENCES `transaksi` (`ID_Payment`),
  ADD CONSTRAINT `kurir_ibfk_2` FOREIGN KEY (`ID_Pelanggan`) REFERENCES `pelanggan` (`ID_Pelanggan`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`ID_Pelanggan`) REFERENCES `pelanggan` (`ID_Pelanggan`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`ID_Produk`) REFERENCES `produk` (`ID_Produk`);

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`ID_Kategori`) REFERENCES `kategori` (`ID_Kategori`);

--
-- Constraints for table `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`ID_Kategori`) REFERENCES `kategori` (`ID_Kategori`);

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `store_ibfk_1` FOREIGN KEY (`ID_Produk`) REFERENCES `produk` (`ID_Produk`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`ID_Order`) REFERENCES `orders` (`ID_Order`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
