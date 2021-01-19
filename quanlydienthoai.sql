-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 18, 2020 lúc 05:16 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlydienthoai`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`) VALUES
(1, 'SamSung'),
(2, 'Apple'),
(3, 'Oppo'),
(4, 'Xiaomi'),
(5, 'Vinsmart');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(300) DEFAULT 'https://cdn.tgdd.vn/Products/Images/42/210644/iphone-11-128gb-green-400x460.png',
  `brand_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `brand_id`) VALUES
(1, 'Oppo F5', 'Oppo China', 100, 'https://cdn.tgdd.vn/Products/Images/42/131915/oppo-f5-h1-400x460-400x460.png', 3),
(2, 'Oppo F1s', 'Oppo China', 100, 'https://cdn.tgdd.vn/Products/Images/42/81592/oppo-f1s-hero-400x460-400x460.png', 3),
(3, 'Xiaomi Mi 9', 'Xiaomi china', 100, 'https://cdn.tgdd.vn/Products/Images/42/194806/xiaomi-mi-9-1-400x460.png', 4),
(4, 'Xiaomi Mi 10', 'Xiaomi china', 100, 'https://cdn.tgdd.vn/Products/Images/42/214927/xiaomi-mi-10-400x460-400x460.png', 4),
(5, 'Vinsmart 3', 'Vingroup inc', 100, 'https://cdn.tgdd.vn/Products/Images/42/217438/vsmart-active-3-6gb-purple-ruby-400x460-1-400x460.png', 5),
(6, 'Iphone Pro Max', 'Apple inc', 100, 'https://cdn.tgdd.vn/Products/Images/42/200533/iphone-11-pro-max-black-400x460.png', 2),
(7, 'Iphone Pro', 'Apple inc', 100, 'https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-black-400x460.png', 2),
(8, 'Iphone 11', 'Apple inc', 9999, 'https://cdn.tgdd.vn/Products/Images/42/210644/iphone-11-128gb-green-400x460.png', 2),
(9, 'Iphone Xs Max', 'Apple inc', 100, 'https://cdn.tgdd.vn/Products/Images/42/190321/iphone-xs-max-gold-400x460.png', 2),
(10, 'SamSung A50s', 'Korea SamSung', 100, 'https://cdn.tgdd.vn/Products/Images/42/196963/samsung-galaxy-a50-blue-400x460-1-400x460.png', 1),
(11, 'SamSung Galaxy S10+', 'Korea SamSung', 100, 'https://cdn.tgdd.vn/Products/Images/60/200741/op-lung-galaxy-s10-plus-nap-gap-clear-view-trang-1-600x600.jpg', 1),
(12, 'SamSung Galaxy Note 10', 'Korea SamSung', 100, 'https://cdn.tgdd.vn/Products/Images/42/206176/samsung-galaxy-note-10-plus-blue-400x460.png', 1),
(13, 'SamSung A70', 'Korea SamSung', 100, 'https://cdn.tgdd.vn/Products/Images/42/195012/samsung-galaxy-a70-052920-062956-400x460.png', 1),
(15, 'Samsung Galaxy Fold', 'Sau ráº¥t nhiá»u chá» Ä‘á»£i thÃ¬ Samsung Galaxy Fold - chiáº¿c smartphone mÃ n hÃ¬nh gáº­p Ä‘áº§u tiÃªn cá»§a Samsung cÅ©ng Ä‘Ã£ chÃ­nh thá»©c trÃ¬nh lÃ ng vá»›i thiáº¿t káº¿ má»›i láº¡.', 699, 'https://cdn.tgdd.vn/Products/Images/42/198158/samsung-galaxy-fold-black-400x460.png', 1),
(16, 'Samsung Galaxy S20 Ultra', 'Galaxy S20 Ultra Ä‘Æ°á»£c trang bá»‹ má»™t mÃ n hÃ¬nh kÃ­ch thÆ°á»›c 6.9 inch sá»­ dá»¥ng táº¥m ná»n Dynamic AMOLED 2X cho cháº¥t lÆ°á»£ng hiá»ƒn thá»‹ hÃ¬nh áº£nh trung thá»±c, sáº¯c nÃ©t Ä‘áº¿n tá»«ng chi tiáº¿t.', 1666, 'https://cdn.tgdd.vn/Products/Images/42/217937/samsung-galaxy-s20-ultra-400x460-1-400x460.png', 1),
(17, 'Samsung Galaxy A80', 'Thá»±c táº¿ thÃ¬ xu hÆ°á»›ng mÃ n hÃ¬nh trÃ n viá»n Ä‘Ã£ báº¯t Ä‘áº§u cÃ¡ch Ä‘Ã¢y khÃ¡ lÃ¢u nhÆ°ng cÃ³ ráº¥t Ã­t cÃ¡c hÃ£ng cÃ³ thá»ƒ mang má»™t mÃ n hÃ¬nh trÃ n viá»n Ä‘Ãºng nghÄ©a lÃªn chiáº¿c smartphone cá»§a mÃ¬nh.', 199, 'https://cdn.tgdd.vn/Products/Images/42/201228/samsung-galaxy-a80-050220-050225-400x460.png', 1),
(18, 'Samsung Galaxy A51', 'korean', 399, 'https://cdn.tgdd.vn/Products/Images/42/216174/samsung-galaxy-a31-400x460-white-400x460.png', 1),
(19, 'Bphone', 'BKAV', 100, 'https://cdn.tgdd.vn/Products/Images/42/210644/iphone-11-128gb-green-400x460.png', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `pass` varchar(500) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `pass`, `email`, `phone`, `role`) VALUES
(10, 'Teo', '8cd02ec969875dbacea19089c352b0cf', 'mrthang1998142@gmail.com', '+84999999999', ''),
(11, 'admin', '0e7517141fb53f21ee439b355b5a1d0a', 'admin@gmail.com', '+84398283366', 'admin'),
(12, 'user', 'a70d650b54bf5f40fbb88a6ab49369c9', 'mrthang1998142@gmail.com', '+848283366', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_brandid` (`brand_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brandid` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
