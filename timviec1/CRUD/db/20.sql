-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th1 15, 2022 lúc 12:37 PM
-- Phiên bản máy phục vụ: 5.7.33
-- Phiên bản PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `20`
--
CREATE DATABASE IF NOT EXISTS `20` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `20`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(25) NOT NULL,
  `name` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'noi-nhom-hong'),
(2, 'do-noi-inox----'),
(4, 'do-noi-dat'),
(8, ''),
(9, 'Haikyuu'),
(10, 'áda'),
(11, 'ấ'),
(12, 'tôi tên là'),
(13, 'noi'),
(14, 'noi 1'),
(15, 'noi 2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id_cmt` int(11) NOT NULL,
  `id_cus` int(11) NOT NULL,
  `id_empl` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id_cmt`, `id_cus`, `id_empl`, `content`, `date`) VALUES
(1, 1, 1, 'sản phẩm hay quá', '2022-01-12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id_cus` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` bit(1) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id_cus`, `name`, `gender`, `birth`, `phone`, `address`, `email`, `password`) VALUES
(1, 'trần văn a', b'1', '2021-12-16', '123456789', NULL, 'tran@gmail.com', '1231231231231aaa'),
(5, 'ád', b'1', '2022-01-13', 'ádasd', NULL, '123', 'aaaaaaa'),
(6, 'Haikyuu', NULL, NULL, NULL, NULL, 'ancieshinobi', '123'),
(10, 'Nhật Quang', NULL, NULL, NULL, NULL, 'ancieshinobia', '123'),
(11, 'Nhật Quang', NULL, NULL, NULL, NULL, 'ancieshinobiaaaa', '123'),
(12, 'a', NULL, NULL, NULL, NULL, 'admin', 'admin'),
(14, 'Haikyuu', NULL, NULL, NULL, NULL, 'zxcv', 'zxcv'),
(15, 'Haikyuu', NULL, NULL, NULL, NULL, 'mnbv', 'mnbv'),
(16, 'Haikyuu', NULL, NULL, NULL, NULL, 'xxxx', 'xxxx'),
(17, 'x', NULL, NULL, NULL, NULL, 'x', 'x'),
(18, 'xx', NULL, NULL, NULL, NULL, 'xx', 'xx'),
(19, 'Haikyuu', NULL, NULL, NULL, NULL, 'xxxxx', 'xxxxx'),
(20, 'Haikyuu', NULL, NULL, NULL, NULL, 'xxxxxxx', 'xxxxxxx'),
(21, 'Haikyuu', NULL, NULL, NULL, NULL, 'zxzxzx', 'zxzxzx'),
(22, 'Haikyuu', NULL, NULL, NULL, NULL, 'qeqeqe', 'qeqeqe'),
(23, 'Haikyuu', NULL, NULL, NULL, NULL, 'www', 'www'),
(24, 'Haikyuu', NULL, NULL, NULL, NULL, 'eee', 'eee'),
(25, 'x', b'1', '2022-01-29', 'x', 'x', '0909', '0909'),
(26, 'x5', b'1', '1212-12-12', '12', '12', '6262', '6262');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employees`
--

CREATE TABLE `employees` (
  `id_empl` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `date_of_birth` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` bit(2) NOT NULL,
  `gender` bit(2) NOT NULL,
  `token` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `employees`
--

INSERT INTO `employees` (`id_empl`, `name`, `phone`, `address`, `date_of_birth`, `email`, `password`, `level`, `gender`, `token`) VALUES
(1, 'nguyễn văn a', '+8412345678', 'cầu giấy', '2021-12-08', 'a@gmail.com', '123123', b'01', b'01', NULL),
(4, 'nguyễn văn d', '123456789', 'hà nộiii', '2021-12-21', 'b@gmail.com', '123123', b'01', b'01', NULL),
(5, 'a', 'a', 'a', '2022-01-19', 'x', 'x', b'01', b'01', 'user_61e0ef8ab14ae8.84144269'),
(6, 'Ho', '0', '1', '1212-12-12', 'hoa@gmail.com', '123', b'01', b'01', NULL),
(7, '1', '1', '1', '1111-11-11', '1', '1', b'01', b'01', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `parent_id` varchar(25) DEFAULT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `update_at` datetime(6) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `price` int(250) NOT NULL,
  `more_info` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `parent_id`, `create_at`, `update_at`, `brand`, `description`, `price`, `more_info`) VALUES
(123349, 'Bộ 3 nồi nhôm anod nắp kính Sunhouse SH6634', 'noi-nhom------12324234', '1', '2021-12-26 00:00:00.000000', '2021-12-26 00:00:00.000000', 'Sunhouse', 'Bộ nồi có 3 sản phẩm với đường kính 16, 20 và 24 cm. Nồi bằng hợp kim nhôm, đã trải qua quá trình xử lý Anodizing bền cứng. Tay cầm bọc nhựa cách nhiệt, di chuyển an toàn, nắp kính chịu nhiệt tốt. Thương hiệu Sunhouse - Việt Nam tin cậy, sản xuất tại', 0, 'GG'),
(123350, 'Bộ 3 cái nồi nhôm chống dính nắp kính Kangaroo KG993MX', 'noi-nhom', '1', '2021-12-26 00:00:00.000000', '2021-12-26 00:00:00.000000', 'Kangaroo', 'Bộ nồi chống dính cao cấp với lớp phủ chống dính Whitford bền tốt, nấu ăn an toàn. Đường kính nồi lần lượt 16 – 20 – 24 cm phục vụ tốt cho nhu cầu nấu ăn gia đình 3 – 5 người. Tay cầm và quai núm bọc nhựa cách nhiệt, nắp kính giữ nhiệt tốt tiện quan ', 0, 'GG'),
(123351, 'Bộ 3 nồi inox 5 đáy nắp kính Kangaroo KG866', 'noi-inox', '2', '2021-12-26 00:00:00.000000', '2021-12-26 00:00:00.000000', 'Kangaroo', 'Bộ 3 nồi đường kính 16 cm, 20 cm và 24 cm sử dụng linh hoạt trong gia đình 2 - 4 thành viên. Thành nồi chất liệu inox 201 dày 0.355 mm cao cấp bền bỉ, nấu ăn an toàn, giảm cháy dính thức ăn, dễ vệ sinh. Cấu tạo đáy 5 lớp truyền nhiệt tốt, nấu ăn nhan', 0, 'GG'),
(123352, 'Nồi đất nắp kính 1.4 lít Dong Hwa Tucbeghi G703', 'noi-dat', '4', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'Dong Hwa Tucbeghi', 'Nồi bằng sứ dày chắc, nấu ăn ngon và nhanh. Dung tích 1.4 lít kích thước 19cm dùng nấu cháo, canh, kho cho 2 - 4 người dùng. Tay cầm liền khối chắc chắn, nắp kính chịu nhiệt tiện quan sát. Nồi dùng được trên bếp gas, bếp hồng ngoại, không dùng trên b', 0, 'GG'),
(123354, 'Haikyuu', 'noi-nhom--------------- ', '3', '2021-12-29 00:00:00.000000', '2022-01-12 00:00:00.000000', 'ád', 'ád', 2, 'ádasd'),
(123355, 'Nhật Quang', 'noi-nhom------12324234', '-3', '2022-01-13 00:00:00.000000', '2022-01-27 00:00:00.000000', 'ádasd', 'ádasdas', 4, 'ádasdasdfff'),
(123356, 'áda', 'ádasd', '3', '2021-12-29 00:00:00.000000', '2022-01-05 00:00:00.000000', 'ádasd', 'ádasdas', 3, 'áđáffff');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `contact` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `phone`, `address`, `contact`) VALUES
(5, 'SUNHOUSE', '123', 'HCM', 'SUNHOUSE.COM.VN'),
(6, 'CUCKKO', '123411111', 'HCM', 'CUCKKO.COM'),
(7, 'KANGAROO', '12345', 'HCM', 'KANGAROO.COM'),
(8, 'No Brand', '123456', 'HCM', 'nobrand.com'),
(11, 'x', 'x', 'x', 'x');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_cmt`),
  ADD KEY `id_cus` (`id_cus`),
  ADD KEY `id_empl` (`id_empl`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id_cus`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id_empl`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id_cmt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id_cus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `employees`
--
ALTER TABLE `employees`
  MODIFY `id_empl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123357;

--
-- AUTO_INCREMENT cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`id_cus`) REFERENCES `customers` (`id_cus`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`id_empl`) REFERENCES `employees` (`id_empl`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
