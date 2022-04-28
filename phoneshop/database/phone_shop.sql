-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 13, 2022 at 05:27 am
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phone_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `email` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `role` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`email`, `address`, `name`, `password`, `phone`, `role`) VALUES
('vobaothach055@gmail.com', 'Quang Binh', 'Vo Bao Thach', '123456', '0987654321', 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `code` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `description` longtext COLLATE utf8_vietnamese_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `address` longtext COLLATE utf8_vietnamese_ci,
  `date` datetime DEFAULT NULL,
  `description` longtext COLLATE utf8_vietnamese_ci,
  `status` tinyint(1) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `discount_code` varchar(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `user_email` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `address`, `date`, `description`, `status`, `total`, `discount_code`, `user_email`) VALUES
(7, 'Thôn Tiền Phong, xã Trung Hóa', '2022-01-13 11:26:05', 'This is description', 1, 7450000, NULL, 'vobaothach055@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`id`, `quantity`, `subtotal`, `order_id`, `product_id`) VALUES
(27, 1, 7450000, 7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `brand` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_vietnamese_ci,
  `img_source` longtext COLLATE utf8_vietnamese_ci,
  `name` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `brand`, `description`, `img_source`, `name`, `price`, `type`) VALUES
(1, 'BRAND3', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/1.png', 'LENOVO S8', 4639000, 'TYPE1'),
(2, 'BRAND2', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/0010687nokiax68gb1.png', 'IP 5 64G', 7790000, 'TYPE2'),
(3, 'BRAND1', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/big97572lenovos850lcz3745.png', 'NOKIA X6 8GB\n', 3750000, 'TYPE3'),
(4, 'BRAND2', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/samsunggalaxytab4700.jpg', 'SAMSUNG GALAXY TAB 4\n', 7450000, 'TYPE4'),
(5, 'BRAND3', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/sony-xperia-z5-dual-400x460.png', 'HTC ONE M9\n', 8670000, 'TYPE3'),
(6, 'BRAND4', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/big97572lenovos850lcz3745.png', 'IP 5 64G', 9350000, 'TYPE2'),
(7, 'BRAND3', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/0010687nokiax68gb1.png', 'SAMSUNG GALAXY TAB 4\n', 3400000, 'TYPE1'),
(8, 'BRAND2', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/samsunggalaxytab4700.jpg', 'NOKIA X6 8GB\n', 4450000, 'TYPE2'),
(9, 'BRAND1', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/sony-xperia-z5-dual-400x460.png', 'LENOVO S8', 4500000, 'TYPE3'),
(10, 'BRAND2', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/0010687nokiax68gb1.png', 'SAMSUNG GALAXY TAB 4\n', 5650000, 'TYPE4'),
(11, 'BRAND3', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/0010687nokiax68gb1.png', 'IP 5 64G', 9800000, 'TYPE3'),
(12, 'BRAND4', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/samsunggalaxytab4700.jpg', 'NOKIA X6 8GB\n', 6750000, 'TYPE2'),
(13, 'BRAND1', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/sony-xperia-z5-dual-400x460.png', 'HTC ONE M9\n', 5690000, 'TYPE1'),
(14, 'BRAND3', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/1.png', 'LENOVO S8', 4639000, 'TYPE1'),
(15, 'BRAND2', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/0010687nokiax68gb1.png', 'IP 5 64G', 7790000, 'TYPE2'),
(16, 'BRAND1', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/big97572lenovos850lcz3745.png', 'NOKIA X6 8GB\r\n', 3750000, 'TYPE3'),
(17, 'BRAND2', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/samsunggalaxytab4700.jpg', 'SAMSUNG GALAXY TAB 4\r\n', 7450000, 'TYPE4'),
(18, 'BRAND3', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/sony-xperia-z5-dual-400x460.png', 'HTC ONE M9\r\n', 8670000, 'TYPE3'),
(19, 'BRAND4', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/big97572lenovos850lcz3745.png', 'IP 5 64G', 9350000, 'TYPE2'),
(20, 'BRAND3', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/0010687nokiax68gb1.png', 'SAMSUNG GALAXY TAB 4\r\n', 3400000, 'TYPE1'),
(21, 'BRAND2', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/samsunggalaxytab4700.jpg', 'NOKIA X6 8GB\r\n', 4450000, 'TYPE2'),
(22, 'BRAND1', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/sony-xperia-z5-dual-400x460.png', 'LENOVO S8', 4500000, 'TYPE3'),
(23, 'BRAND2', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/0010687nokiax68gb1.png', 'SAMSUNG GALAXY TAB 4\r\n', 5650000, 'TYPE4'),
(24, 'BRAND3', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/0010687nokiax68gb1.png', 'IP 5 64G', 9800000, 'TYPE3'),
(25, 'BRAND4', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/samsunggalaxytab4700.jpg', 'NOKIA X6 8GB\r\n', 6750000, 'TYPE2'),
(26, 'BRAND1', 'Đặc điểm nổi bật của Sony Xperia Z5 Dual Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp Xperia Z5 Dual là smartphone chủ lực của Sony với nhiều cải tiến về công nghệ lẫn thiết kế sẽ mang lại..', '/resources/home/sony-xperia-z5-dual-400x460.png', 'HTC ONE M9\r\n', 5690000, 'TYPE1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKkleeopcjoidupthrqi2pmpew7` (`discount_code`),
  ADD KEY `FK3chcf5pr0ca9671dp1wlea63i` (`user_email`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKt4dc2r9nbvbujrljv3e23iibt` (`order_id`),
  ADD KEY `FK551losx9j75ss5d6bfsqvijna` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
