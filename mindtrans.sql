-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20230313.0e600bb1f7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2023 at 03:43 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mindtrans`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_sensor`
--

CREATE TABLE `data_sensor` (
  `id` int(60) NOT NULL,
  `stok` int(90) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_sensor`
--

INSERT INTO `data_sensor` (`id`, `stok`, `waktu`) VALUES
(5, 0, '2022-11-19 17:09:01'),
(6, 0, '2022-11-19 17:13:04'),
(7, 0, '2022-11-19 17:13:35'),
(8, 0, '2022-11-19 17:14:05'),
(9, 0, '2022-11-19 17:23:50');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_mindtrans`
--

CREATE TABLE `transaksi_mindtrans` (
  `order_id` varchar(30) NOT NULL,
  `gross_amount` int(255) DEFAULT NULL,
  `payment_type` varchar(20) DEFAULT NULL,
  `transaction_time` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi_mindtrans`
--

INSERT INTO `transaksi_mindtrans` (`order_id`, `gross_amount`, `payment_type`, `transaction_time`) VALUES
('1036586452', 6500, 'echannel', '2022-10-02 21:41:49'),
('1060007170', 6500, 'bank_transfer', '2022-10-05 23:18:46'),
('1080317308', 6500, 'qris', '2022-11-08 08:52:19'),
('1262806998', 6500, 'qris', '2022-11-19 23:59:00'),
('1289712623', 6500, 'qris', '2022-10-20 08:38:38'),
('1296363607', 6500, 'qris', '2022-10-20 22:13:24'),
('1581553225', 6500, 'qris', '2022-11-08 01:14:07'),
('164840680', 6500, 'bank_transfer', '2022-10-06 09:37:44'),
('1652830379', 6500, 'bank_transfer', '2022-10-02 19:24:35'),
('1760472882', 6500, 'bank_transfer', '2022-10-02 21:05:23'),
('1906313607', 6500, 'bank_transfer', '2022-10-17 01:04:47'),
('2017982026', 6500, 'qris', '2022-11-08 08:57:24'),
('2077193398', 6500, 'echannel', '2022-10-02 21:39:41'),
('295317169', 6500, 'echannel', '2022-10-02 19:22:14'),
('333114299', 6500, 'bank_transfer', '2022-10-02 19:50:50'),
('355879390', 6500, 'bank_transfer', '2022-10-26 00:21:58'),
('360970165', 6500, 'qris', '2022-10-22 00:25:37'),
('485469409', 6500, 'echannel', '2022-10-17 01:03:56'),
('508568447', 6500, 'bank_transfer', '2022-10-02 21:20:19'),
('523909515', 6500, 'qris', '2022-10-26 00:20:07'),
('549929426', 6500, 'bank_transfer', '2022-10-26 00:23:56'),
('591613348', 6500, 'bank_transfer', '2022-10-05 23:20:25'),
('869437295', 6500, 'echannel', '2022-10-02 21:40:34'),
('963864122', 6500, 'bank_transfer', '2022-10-05 23:25:28');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(11, 'yogi', 'bxel@gmail.com', 'default.jpg', '$2y$10$kMRqWtZOcvsUSdRHdKW2yO/PQtN/lSISGfrj52JuBo7DTQHX2rPq2', 2, 1, 1666695712),
(12, 'bxel', 'pyogi0125@gmail.com', 'default.jpg', '$2y$10$i12HA.urvruPhqFI1O3Ihef/7cBfAKk4xWBtu0Z3KyUP7XRk3d7Ay', 2, 1, 1666695735),
(13, 'bxel1', 'a@gmail.com', 'default.jpg', '$2y$10$d4O727ZUJijtU8T2N3mymub0gKtpyIHM7/vsJ2FSfsqJhKIXZV52O', 2, 1, 1666698442),
(14, 'yogi', 'rudi@gmail.com', 'default.jpg', '$2y$10$6g9fXIkBv7hQkoBfcESgoOZ0yahrGftRwd/oqyfdVerpU6LJoVtWu', 2, 1, 1666719589);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_sensor`
--
ALTER TABLE `data_sensor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_mindtrans`
--
ALTER TABLE `transaksi_mindtrans`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_sensor`
--
ALTER TABLE `data_sensor`
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
