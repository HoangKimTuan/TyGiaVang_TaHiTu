-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2017 at 10:01 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tygiavang`
--

-- --------------------------------------------------------

--
-- Table structure for table `buy_gold`
--

CREATE TABLE `buy_gold` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buy_gold_online`
--

CREATE TABLE `buy_gold_online` (
  `id` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `buy_gold_online`
--

INSERT INTO `buy_gold_online` (`id`, `image`, `code`, `price`) VALUES
(1, 'http://localhost:8080/TyGiaVang-war/public/dist/img/nhan1.jpg', 'NURC0234', '5.235.000đ'),
(2, 'http://localhost:8080/TyGiaVang-war/public/dist/img/nhan2.jpg', 'NURC0279', '7.817.000đ'),
(3, 'http://localhost:8080/TyGiaVang-war/public/dist/img/nhan3.jpg', 'NURC0301', '5.852.000đ'),
(4, 'http://localhost:8080/TyGiaVang-war/public/dist/img/nhan4.jpg', 'NURC0320', '7.659.000đ'),
(5, 'http://localhost:8080/TyGiaVang-war/public/dist/img/lac1.jpg', 'LCDK0002', '3.169.912đ'),
(6, 'http://localhost:8080/TyGiaVang-war/public/dist/img/lac2.jpg', 'LMVA0002', '4.707.868đ'),
(7, 'http://localhost:8080/TyGiaVang-war/public/dist/img/lac3.jpg', 'LMVA0003', '4.906.449đ'),
(8, 'http://localhost:8080/TyGiaVang-war/public/dist/img/lac4.jpg', 'LTBT0001', '1.838.438đ');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `code_nt` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `buy` double NOT NULL,
  `transfer` double NOT NULL,
  `sell` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `code_nt`, `name`, `buy`, `transfer`, `sell`) VALUES
(2, 'EUR', 'EURO', 24121.91, 24194.49, 24410.27),
(4, 'JPY', 'JAPANESE YEN', 201.74, 203.78, 205.59),
(5, 'AUD', 'AUST.DOLLAR', 16700.7, 16801.51, 16951.38),
(6, 'CAD', 'CANADIAN DOLLAR', 16615.7, 16766.6, 16983.96),
(7, 'CHF', 'SWISS FRANCE', 23082.99, 23245.71, 23547.07),
(8, 'GBP', 'BRITISH POUND', 28941.5, 29145.52, 29405.51),
(9, 'HKD', 'HONGKONG DOLLAR', 2873.23, 2893.48, 2936.86),
(10, 'KRW', 'SOUTH KOREAN WON', 18.69, 19.67, 20.91),
(11, 'SGD', 'SINGAPORE DOLLAR', 16184.85, 16298.94, 16477.25),
(12, 'THB', 'THAI BAHT', 651.3, 651.3, 678.48),
(13, 'USD', 'US DOLLAR', 22675, 22675, 22745);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `image`, `title`, `content`) VALUES
(32, 'http://localhost:8080/TyGiaVang-war/public/dist/img/1.jpg', 'Giá vàng hôm nay 11/4/2017: Đồng loạt tăng', 'Sau mấy phiên giữ giá, trên hệ thống SJC, giá vàng sáng nay tăng nhẹ 20 nghìn đồng so với sáng qua lên 36,42-36,62 triệu đồng/lượng.'),
(33, 'http://localhost:8080/TyGiaVang-war/public/dist/img/2.jpg', 'Vì sao vàng thế giới đội giá, vàng trong nước đứng im?', 'Mấy ngày qua giá vàng thế giới bật tăng mạnh. Đáng chú ý có thời điểm tiến sát ngưỡng 1.270 USD/ounce, đánh dấu phiên tăng cao nhất từ đầu tháng 11 năm ngoái.'),
(34, 'http://localhost:8080/TyGiaVang-war/public/dist/img/3.jpg', 'Giá vàng hôm nay 10/4/2017: Vàng trong nước vẫn mất sóng', 'Giá vàng các thương hiệu trong nước mở cửa phiên giao dịch đầu tuần biến động không nhiều.'),
(35, 'http://localhost:8080/TyGiaVang-war/public/dist/img/4.jpg', 'Giá vàng hôm nay 9/4/2017: Kịch tính, lập đỉnh', 'Chốt phiên giao dịch cuối cùng của tuần giao dịch với nhiều diễn biến kịch tính, giá vàng thế giới tiếp tục tăng mạnh, kéo theo giá vàng trong nước. Cụ thể, giá vàng SJC tạm đứng ở mức 36,40-36,60 triệu đồng/lượng, cao hơn mức giá chốt tuần trước 50 nghìn đồng/lượng nhờ lực tăng trong phiên cuối cùng của tuần.'),
(36, 'http://localhost:8080/TyGiaVang-war/public/dist/img/5.jpg', 'Bất ngờ tăng vọt, giá vàng leo lên đỉnh cao mới', 'Tăng vọt và lên một đỉnh cao mới là diễn biến đáng chú ý nhất trong phiên giao dịch đêm qua.  Thị trường đã chứng kiến diễn biến từng bước và liên tục tăng kể từ đầu cho tới cuối phiên, giá vàng đi từ mức giá dưới ngưỡng 1.260 USD/ounce lên thẳng trên ngưỡng 1.272 USD, tăng hơn 12 USD/ounce.'),
(38, 'http://localhost:8080/TyGiaVang-war/public/dist/img/6.jpg', 'Đang ở mức đỉnh, giá vàng vẫn được dự báo sẽ tăng cao hơn', 'Mở cửa phiên giao dịch sáng nay (30/5), giá vàng thế giới quyết bám trụ trên ngưỡng 1.266 USD/ounce. Giá vàng hiện vẫn ở mức cao nhất kể từ cuối tháng 4.  Lúc 8h theo giờ Việt Nam, tại Hồng Kông, giá vàng giao ngay tăng nhẹ lên 1.267,1-1.268,1 USD/ounce. Mức giá cao nhất ghi nhận đầu phiên là 1.268,8 USD/ounce.'),
(39, 'http://localhost:8080/TyGiaVang-war/public/dist/img/7.jpg', 'Giá vàng tăng mạnh, giới đầu tư kiếm lãi \"khủng\"', 'Chốt phiên giao dịch cuối tuần đầy cảm xúc, giá vàng tăng mạnh lên sát ngưỡng 1.270 USD/ounce và tạm đứng ở mức 1.266,7-1,267,7 USD/ounce sau khi tăng chung cuộc tới 11,3 USD/ounce (0,90%).'),
(41, 'http://localhost:8080/TyGiaVang-war/public/dist/img/8.jpg', 'Giá vàng \"đỏng đảnh\" ngày đầu tuần', 'Mở cửa phiên giao dịch sáng nay (29/5), giá vàng thế gới dù điều chỉnh nhẹ nhưng vẫn ở mức đỉnh trong gần một tháng.  Sau khi chốt phiên cuối tuần qua với mức tăng mạnh 11,3 USD/ounce (0,90%) lên 1.266,7-1,267,7 USD/ounce, sáng đầu tuần tại Hồng Kông, giá vàng giao ngay điều chỉnh nhẹ về 1.266,10-1.267,10 USD/ounce. Tuần qua, giá vàng thế giới ghi nhận mức tăng mạnh khoảng 1%, đánh dấu tuần tăng giá thứ ba liên tiếp của kim loại quý. ');

-- --------------------------------------------------------

--
-- Table structure for table `sitemap`
--

CREATE TABLE `sitemap` (
  `id` int(11) NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sitemap`
--

INSERT INTO `sitemap` (`id`, `type`, `image`) VALUES
(1, 'client', 'http://localhost:8080/TyGiaVang-war/public/dist/img/sitemap_admin.jpg'),
(2, 'client', 'http://localhost:8080/TyGiaVang-war/public/dist/img/sitemap_client.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `job` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `job`, `first_name`, `last_name`, `birthday`, `gender`, `address`, `phone_number`, `avatar`, `role`) VALUES
(2, 'minhtranguit@gmail.com', '123456', 'Student', 'Trần Thị Minh', 'Trang', '1996-11-21', 'Female', 'Đại học Nông Lâm', '01694122657', 'http://localhost:8080/TyGiaVang-war/public/dist/img/admin_trang.jpg', '2'),
(4, 'hoangkimtuan1996@gmail.com', '123456', 'Student', 'Hoàng Kim', 'Tuấn', '1996-01-07', 'Male', '23, Đường số 17', '0969987548', 'http://localhost:8080/TyGiaVang-war/public/dist/img/59.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user_client`
--

CREATE TABLE `user_client` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_client`
--

INSERT INTO `user_client` (`id`, `first_name`, `last_name`, `email`, `password`, `phone_number`) VALUES
(1, 'a', 'a', 'a@gmail.com', 'a', 'a'),
(2, 'a', 'a', 'a@gmail.com', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `world_gold_price`
--

CREATE TABLE `world_gold_price` (
  `id` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `world_gold_price`
--

INSERT INTO `world_gold_price` (`id`, `image`) VALUES
(1, 'http://localhost:8080/TyGiaVang-war/public/dist/img/gold.gif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buy_gold`
--
ALTER TABLE `buy_gold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buy_gold_online`
--
ALTER TABLE `buy_gold_online`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitemap`
--
ALTER TABLE `sitemap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_client`
--
ALTER TABLE `user_client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `world_gold_price`
--
ALTER TABLE `world_gold_price`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buy_gold`
--
ALTER TABLE `buy_gold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `buy_gold_online`
--
ALTER TABLE `buy_gold_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `sitemap`
--
ALTER TABLE `sitemap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_client`
--
ALTER TABLE `user_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
