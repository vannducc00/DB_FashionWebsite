-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 26, 2021 lúc 05:25 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sells_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `name` text DEFAULT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `key_check` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `key_check`) VALUES
(13, 'duc', 'duc', 'duc', 'nguyenvanduc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `Image` text NOT NULL,
  `type_pr_id` int(11) NOT NULL,
  `quantity` text NOT NULL,
  `color` text NOT NULL,
  `size` text DEFAULT NULL,
  `amount` text NOT NULL,
  `create_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id_cart`, `customer_id`, `product_id`, `name`, `Image`, `type_pr_id`, `quantity`, `color`, `size`, `amount`, `create_date`) VALUES
(269, 85, 13, 'Túi Hobo Nhỏ La Medusa', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwa2983378/original/90_1000802-DVIT3T_1P72V_20_LaMedusaSmallHoboBag-ShoulderBags-versace-online-store_2_2.jpg?sw=748&sh=1050&sm=fit', 4, '1', 'Black', '', '1821', '2021-11-26'),
(270, 85, 20, 'TÚI XÁCH VỪA LA MEDUSA', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw8eb13bd4/original/90_DBFI039-DVIT2T_1K26V_28_LaMedusaMediumHandbag-TopHandle-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 4, '1', 'Brown', '', '3600', '2021-11-26'),
(271, 85, 20, 'TÚI XÁCH VỪA LA MEDUSA', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw8eb13bd4/original/90_DBFI039-DVIT2T_1K26V_28_LaMedusaMediumHandbag-TopHandle-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 4, '1', 'Red', '', '3600', '2021-11-26'),
(272, 85, 50, 'I ♡ BAROQUE BATHROBE', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwb6d93773/original/90_ZACJ00008-ZCOSP052_Z4800_20_IBaroqueBathrobe-Bathrobes-versace-online-store_10_3.jpg?sw=748&sh=1050&sm=fit&sfrm=jpg', 0, '2', 'blue', 'XL', '1190', '2021-11-26'),
(273, 85, 53, 'I ♡ BAROQUE TERRY CLOTH BATHROBE', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwb36b1941/original/90_ZACP00052-ZCOSP075_Z7066_20_IBaroqueTerryClothBathrobe-Bathrobes-versace-online-store_2_2.png?sw=748&sh=1050&sm=fit', 0, '2', 'black', 'M', '1574', '2021-11-26'),
(274, 87, 13, 'Túi Hobo Nhỏ La Medusa', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwa2983378/original/90_1000802-DVIT3T_1P72V_20_LaMedusaSmallHoboBag-ShoulderBags-versace-online-store_2_2.jpg?sw=748&sh=1050&sm=fit', 4, '1', 'Black', '', '1821', '2021-11-26'),
(275, 87, 20, 'TÚI XÁCH VỪA LA MEDUSA', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw8eb13bd4/original/90_DBFI039-DVIT2T_1K26V_28_LaMedusaMediumHandbag-TopHandle-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 4, '1', 'beige', '', '3600', '2021-11-26'),
(276, 87, 15, 'Túi Hobo VừaLa Medusa', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw84200cf5/original/90_1000699-DVIT3T_1U38V_20_LaMedusaMediumHoboBag-ShoulderBags-versace-online-store_2_0.jpg?sw=748&sh=1050&sm=fit', 4, '1', 'Black', '', '1993', '2021-11-26'),
(277, 87, 51, 'I ♡ BAROQUE BATHROBE', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw942add04/original/90_ZACJ00008-ZCOSP052_Z4003_20_IBaroqueBathrobe-Bathrobes-versace-online-store_10_3.jpg?sw=850&sh=1200&sm=fit', 0, '1', 'white', 'XL', '595', '2021-11-26'),
(278, 87, 51, 'I ♡ BAROQUE BATHROBE', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw942add04/original/90_ZACJ00008-ZCOSP052_Z4003_20_IBaroqueBathrobe-Bathrobes-versace-online-store_10_3.jpg?sw=850&sh=1200&sm=fit', 0, '1', 'white', 'XL', '595', '2021-11-26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color_id`
--

CREATE TABLE `color_id` (
  `id` int(11) NOT NULL,
  `color_pr` text NOT NULL,
  `id_color` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `color_id`
--

INSERT INTO `color_id` (`id`, `color_pr`, `id_color`) VALUES
(1, 'Serape Print', 2),
(2, 'White', 3),
(3, 'Freshwater', 4),
(4, 'Seafoam', 5),
(5, 'Chili Pepper/Dark Cobalt', 6),
(6, 'Royal Blue', 7),
(7, 'Classic Oxford White', 8),
(8, 'Classic Oxford White', 9),
(9, 'Blue/Green', 10),
(9, 'Pink/Blue', 11),
(10, 'Desert Khaki', 12),
(11, 'Makai Flower', 13),
(12, 'Black', 14),
(12, 'Light Pink', 15),
(12, 'Red', 16),
(12, 'Blue', 17),
(12, 'White', 18),
(13, 'Black', 19),
(13, 'Light Pink', 20),
(13, 'Red', 21),
(13, 'Blue', 22),
(13, 'White', 23),
(14, 'Black', 24),
(14, 'Brown', 25),
(14, 'White', 26),
(14, 'Blue', 27),
(15, 'Black', 28),
(15, 'Brown', 29),
(15, 'White', 30),
(15, 'Blue', 31),
(16, 'Print', 32),
(17, 'Blue Print', 33),
(18, 'Black', 34),
(19, 'Black', 35),
(20, 'beige', 36),
(20, 'Brown', 37),
(20, 'Red', 38),
(20, 'Lilac', 39),
(20, 'Blue', 40),
(20, 'Black', 41),
(20, 'Orange', 42),
(21, 'Brown', 43),
(21, 'Red', 44),
(21, 'Lilac', 45),
(21, 'Blue', 46),
(21, 'Black', 47),
(21, 'Orange', 48),
(22, 'Blue+Black', 49),
(23, 'Black', 50),
(23, 'Red', 51),
(24, 'Navy', 52),
(25, 'Blue+White', 53),
(25, 'Blue+Green', 54),
(26, 'Black', 55),
(27, 'Navy', 60),
(28, 'Blue + White', 61),
(30, 'Blue', 62),
(29, 'Blue', 68),
(31, 'Black', 69),
(32, 'Black', 70),
(33, 'Black', 71),
(34, 'Black', 72),
(35, 'Pink', 73),
(36, 'Black', 74),
(37, 'White', 75),
(38, 'Pink\r\n', 76),
(39, 'black', 77),
(39, 'pink', 78),
(39, 'red', 79),
(40, 'blue', 80),
(40, 'violet', 81),
(40, 'yellow', 82),
(41, 'white', 83),
(41, 'black', 84),
(41, 'blue', 85),
(42, 'green', 86),
(42, 'origan', 87),
(42, 'brown', 88),
(43, 'white', 89),
(43, 'black', 90),
(43, 'red', 91),
(44, 'black', 92),
(44, 'white', 93),
(44, 'blue', 94),
(45, 'green', 95),
(45, 'origan', 96),
(45, 'white', 97),
(46, 'gray', 98),
(46, 'green', 99),
(46, 'black', 100),
(47, 'black', 101),
(47, 'violet', 102),
(47, 'yellow', 103),
(48, 'white', 104),
(48, 'blue', 105),
(48, 'origan', 106),
(49, 'black', 107),
(49, 'pink', 108),
(49, 'red', 109),
(50, 'blue', 110),
(50, 'violet', 111),
(50, 'yellow', 112),
(51, 'white', 113),
(51, 'black', 114),
(51, 'blue', 115),
(51, 'green', 116),
(52, 'origan', 117),
(52, 'brown', 118),
(52, 'white', 119),
(53, 'black', 120),
(53, 'red', 121),
(54, 'black', 122),
(54, 'white', 123),
(54, 'blue', 124),
(55, 'green', 125),
(55, 'origan', 126),
(55, 'white', 127),
(56, 'gray', 128),
(56, 'green', 129),
(56, 'black', 130),
(57, 'black', 131),
(57, 'violet', 132),
(57, 'yellow', 133),
(58, 'white', 134),
(58, 'blue', 135),
(58, 'origan', 136),
(68, 'white', 137),
(68, 'blue', 138),
(68, 'origan', 139),
(66, 'gray', 143),
(66, 'green', 144),
(66, 'black', 145),
(65, 'green', 146),
(65, 'origan', 147),
(65, 'white', 148),
(64, 'black', 149),
(64, 'white', 150),
(64, 'blue', 151),
(63, 'black', 152),
(63, 'red', 153),
(62, 'origan', 154),
(62, 'brown', 155),
(62, 'white', 156),
(61, 'white', 157),
(61, 'black', 158),
(61, 'blue', 159),
(61, 'green', 160),
(60, 'blue', 161),
(60, 'violet', 162),
(60, 'yellow', 163),
(59, 'black', 164),
(59, 'pink', 165),
(59, 'red', 166);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(50) NOT NULL,
  `phone` text NOT NULL,
  `user_name` varchar(80) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `phone`, `user_name`, `password`) VALUES
(85, '0976970933', 'aaa', '123456 '),
(87, '1921682107', 'nguyenvanduc', 'abc123'),
(88, '01231231212', 'Ronaldo', '123123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_id`
--

CREATE TABLE `image_id` (
  `id` int(11) NOT NULL,
  `image_url` text NOT NULL,
  `id_image` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `image_id`
--

INSERT INTO `image_id` (`id`, `image_url`, `id_image`) VALUES
(1, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411077_alternate10?$rl_df_pdp_5_7_a10$', 5),
(1, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411077_alternate1?$rl_df_pdp_5_7$', 6),
(1, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411077_alternate3?$rl_df_pdp_5_7$', 7),
(1, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411077_alternate4?$rl_df_pdp_5_7$', 8),
(2, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411251_alternate10?$rl_df_pdp_5_7_a10$', 9),
(2, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411251_alternate1?$rl_df_pdp_5_7$', 10),
(2, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411251_alternate3?$rl_df_pdp_5_7$', 11),
(2, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411251_alternate4?$rl_df_pdp_5_7$', 12),
(3, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411256_alternate10?$rl_df_pdp_5_7_a10$', 13),
(3, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411256_alternate1?$rl_df_pdp_5_7$', 14),
(3, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411256_alternate3?$rl_df_pdp_5_7$', 15),
(3, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411256_alternate4?$rl_df_pdp_5_7$', 16),
(4, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411113_alternate10?$rl_df_pdp_5_7_a10$', 17),
(4, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411113_alternate1?$rl_df_pdp_5_7$', 18),
(4, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411113_alternate3?$rl_df_pdp_5_7$', 19),
(4, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411113_alternate4?$rl_df_pdp_5_7$', 20),
(5, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411257_alternate10?$rl_df_pdp_5_7_a10$', 21),
(5, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411257_alternate1?$rl_df_pdp_5_7$', 22),
(5, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411257_alternate3?$rl_df_pdp_5_7$', 23),
(5, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411257_alternate4?$rl_df_pdp_5_7$', 24),
(6, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411125_alternate10?$rl_df_pdp_5_7_a10$', 25),
(6, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411125_alternate1?$rl_df_pdp_5_7$', 26),
(6, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411125_alternate3?$rl_df_pdp_5_7$', 27),
(6, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411125_alternate4?$rl_df_pdp_5_7$', 28),
(7, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411075_alternate10?$rl_df_pdp_5_7_a10$', 29),
(7, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411075_alternate1?$rl_df_pdp_5_7$', 30),
(7, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411075_alternate3?$rl_df_pdp_5_7$', 31),
(7, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411075_alternate4?$rl_df_pdp_5_7$', 32),
(8, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411119_alternate10?$rl_df_pdp_5_7_a10$', 33),
(8, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411119_alternate1?$rl_df_pdp_5_7$', 34),
(8, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411119_alternate3?$rl_df_pdp_5_7$', 35),
(8, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411119_alternate4?$rl_df_pdp_5_7$', 36),
(9, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411098_alternate10?$rl_df_pdp_5_7_a10$', 37),
(9, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411098_alternate1?$rl_df_pdp_5_7$', 38),
(9, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411098_alternate3?$rl_df_pdp_5_7$', 39),
(9, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411098_alternate4?$rl_df_pdp_5_7$', 40),
(10, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411010_alternate10?$rl_df_pdp_5_7_a10$', 41),
(10, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411010_alternate1?$rl_df_pdp_5_7$', 42),
(10, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411010_alternate3?$rl_df_pdp_5_7$', 43),
(10, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411010_alternate4?$rl_df_pdp_5_7$', 44),
(11, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411083_alternate10?$rl_df_pdp_5_7_a10$', 45),
(11, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411083_alternate1?$rl_df_pdp_5_7$', 46),
(11, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411083_alternate3?$rl_df_pdp_5_7$', 47),
(11, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411083_alternate4?$rl_df_pdp_5_7$', 48),
(12, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw2ee07e1e/original/90_1000802-DVIT3T_1U38V_20_LaMedusaSmallHoboBag-ShoulderBags-versace-online-store_2_0.jpg?sw=748&sh=1050&sm=fit', 49),
(12, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw9cc1b671/original/90_1000802-DVIT3T_1U38V_23_LaMedusaSmallHoboBag-ShoulderBags-versace-online-store_2_0.jpg?sw=748&sh=1050&sm=fit', 50),
(12, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwa1152f77/original/90_1000802-DVIT3T_1U38V_24_LaMedusaSmallHoboBag-ShoulderBags-versace-online-store_2_0.jpg?sw=748&sh=1050&sm=fit', 51),
(12, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwdb1e77df/original/90_1000802-DVIT3T_1U38V_28_LaMedusaSmallHoboBag-ShoulderBags-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 52),
(13, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwa2983378/original/90_1000802-DVIT3T_1P72V_20_LaMedusaSmallHoboBag-ShoulderBags-versace-online-store_2_2.jpg?sw=748&sh=1050&sm=fit', 53),
(13, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwb76d4065/original/90_1000802-DVIT3T_1P72V_23_LaMedusaSmallHoboBag-ShoulderBags-versace-online-store_2_2.jpg?sw=748&sh=1050&sm=fit', 54),
(13, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw99d98b7c/original/90_1000802-DVIT3T_1P72V_24_LaMedusaSmallHoboBag-ShoulderBags-versace-online-store_2_2.jpg?sw=748&sh=1050&sm=fit', 55),
(13, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw36b200b9/original/90_1000802-DVIT3T_1P72V_28_LaMedusaSmallHoboBag-ShoulderBags-versace-online-store_1_2.jpg?sw=748&sh=1050&sm=fit', 56),
(14, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwbf7aa816/original/90_1000699-DVIT3T_1B00V_20_LaMedusaMediumHoboBag-ShoulderBags-versace-online-store_2_0.jpg?sw=748&sh=1050&sm=fit', 57),
(14, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwbf7aa816/original/90_1000699-DVIT3T_1B00V_20_LaMedusaMediumHoboBag-ShoulderBags-versace-online-store_2_0.jpg?sw=748&sh=1050&sm=fit', 58),
(14, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw41b13908/original/90_1000699-DVIT3T_1B00V_24_LaMedusaMediumHoboBag-ShoulderBags-versace-online-store_2_0.jpg?sw=748&sh=1050&sm=fit', 59),
(14, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw9472d94c/original/90_1000699-DVIT3T_1B00V_28_LaMedusaMediumHoboBag-ShoulderBags-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 60),
(15, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw84200cf5/original/90_1000699-DVIT3T_1U38V_20_LaMedusaMediumHoboBag-ShoulderBags-versace-online-store_2_0.jpg?sw=748&sh=1050&sm=fit', 61),
(15, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw81706d58/original/90_1000699-DVIT3T_1U38V_23_LaMedusaMediumHoboBag-ShoulderBags-versace-online-store_1_0.jpg?sw=748&sh=1050&sm=fit', 62),
(15, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw33680c65/original/90_1000699-DVIT3T_1U38V_24_LaMedusaMediumHoboBag-ShoulderBags-versace-online-store_1_0.jpg?sw=748&sh=1050&sm=fit', 63),
(15, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwd18f9b76/original/90_1000699-DVIT3T_1U38V_28_LaMedusaMediumHoboBag-ShoulderBags-versace-online-store_2_0.jpg?sw=748&sh=1050&sm=fit', 64),
(17, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw31bc95b6/original/90_DSU8094-1A00838_6B370_20_TrigrecaTrainers-TrigrecaSneakers-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 65),
(17, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw3f7b6391/original/90_DSU8094-1A00838_6B370_23_TrigrecaTrainers-TrigrecaSneakers-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 66),
(17, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwf886b181/original/90_DSU8094-1A00838_6B370_26_TrigrecaTrainers-TrigrecaSneakers-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 67),
(17, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw809de810/original/90_DSU8094-1A00838_6B370_28_TrigrecaTrainers-TrigrecaSneakers-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 68),
(16, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw963688e6/original/90_1000920-1A00628_5B020_10_BaroccoflagePrintLinenShirt-Shirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 69),
(16, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwb5416e26/original/90_1000920-1A00628_5B020_15_BaroccoflagePrintLinenShirt-Shirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 70),
(16, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw67963979/original/90_1000920-1A00628_5B020_16_BaroccoflagePrintLinenShirt-Shirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 71),
(16, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw7c05b527/original/90_1000920-1A00628_5B020_20_BaroccoflagePrintLinenShirt-Shirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 72),
(18, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw7f1b75e5/original/90_DFZ8519-DNYGR3_D41E_20_GrecaBackpack-Backpacks-versace-online-store_2_2.jpg?sw=748&sh=1050&sm=fit', 73),
(18, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw11e36838/original/90_DFZ8519-DNYGR3_D41E_23_GrecaBackpack-Backpacks-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 74),
(18, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwfa1c57b0/original/90_DFZ8519-DNYGR3_D41E_24_GrecaBackpack-Backpacks-versace-online-store_2_2.jpg?sw=748&sh=1050&sm=fit', 75),
(18, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw10c939aa/original/90_DFZ8519-DNYGR3_D41E_26_GrecaBackpack-Backpacks-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 76),
(19, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw36142dbc/original/90_DCU4747-DVTP1_K41NV_20_LaMedusaLeatherBelt-Belts-versace-online-store_0_3.jpg?sw=748&sh=1050&sm=fit', 77),
(19, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwb8c15941/original/90_DCU4747-DVTP1_K41NV_23_LaMedusaLeatherBelt-Belts-versace-online-store_0_3.jpg?sw=748&sh=1050&sm=fit', 78),
(19, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw0deb77d2/original/90_DCU4747-DVTP1_K41NV_24_LaMedusaLeatherBelt-Belts-versace-online-store_0_3.jpg?sw=748&sh=1050&sm=fit', 79),
(20, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw8eb13bd4/original/90_DBFI039-DVIT2T_1K26V_28_LaMedusaMediumHandbag-TopHandle-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 87),
(20, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwca2df7b3/original/90_DBFI039-DVIT2T_1K26V_24_LaMedusaMediumHandbag-TopHandle-versace-online-store_1_0.jpg?sw=748&sh=1050&sm=fit', 92),
(20, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw5daeb39a/original/90_DBFI039-DVIT2T_1K26V_26_LaMedusaMediumHandbag-TopHandle-versace-online-store_1_0.jpg?sw=748&sh=1050&sm=fit', 93),
(20, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw83d0faa1/original/90_DBFI039-DVIT2T_1K26V_23_LaMedusaMediumHandbag-TopHandle-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 95),
(21, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwe0341de9/original/90_DBFI039-DVIT2T_KVO41_20_LaMedusaMediumHandbag-TopHandle-versace-online-store_4_2.jpg?sw=748&sh=1050&sm=fit', 96),
(21, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwcdf6f291/original/90_DBFI039-DVIT2T_KVO41_23_LaMedusaMediumHandbag-TopHandle-versace-online-store_1_2.jpg?sw=748&sh=1050&sm=fit', 97),
(21, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwda590bf7/original/90_DBFI039-DVIT2T_KVO41_24_LaMedusaMediumHandbag-TopHandle-versace-online-store_2_2.jpg?sw=748&sh=1050&sm=fit', 98),
(21, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw30faf825/original/90_DBFI039-DVIT2T_KVO41_26_LaMedusaMediumHandbag-TopHandle-versace-online-store_2_2.jpg?sw=748&sh=1050&sm=fit', 99),
(22, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw9dd208d7/original/90_1001244-1A00901_2U340_10_WoolandNylonJacket-JacketsandCoats-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit&sfrm=jpg', 100),
(22, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw82f35c79/original/90_1001244-1A00901_2U340_15_WoolandNylonJacket-JacketsandCoats-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit&sfrm=jpg', 101),
(22, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw3103a527/original/90_1001244-1A00901_2U340_16_WoolandNylonJacket-JacketsandCoats-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit&sfrm=jpg', 102),
(22, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwd380848d/original/90_1001244-1A00901_2U340_20_WoolandNylonJacket-JacketsandCoats-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit&sfrm=jpg', 103),
(23, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw464af0d0/original/90_1001207-DVT2P_1B090_20_LaMedusaSling-BackPumps-Pumps-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 104),
(23, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw48c5e4c5/original/90_1001207-DVT2P_1B090_23_LaMedusaSling-BackPumps-Pumps-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 105),
(23, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwc10f0256/original/90_1001207-DVT2P_1B090_24_LaMedusaSling-BackPumps-Pumps-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 106),
(23, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwab8fb298/original/90_1001207-DVT2P_1B090_28_LaMedusaSling-BackPumps-Pumps-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 107),
(24, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwd355f3c0/original/90_1001027-1A00678_2U540_10_WoolandNylonJacket-JacketsandCoats-versace-online-store_1_2.jpg?sw=748&sh=1050&sm=fit', 108),
(24, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw6e516583/original/90_1001027-1A00678_2U540_15_WoolandNylonJacket-JacketsandCoats-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 109),
(24, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwd5911f40/original/90_1001027-1A00678_2U540_16_WoolandNylonJacket-JacketsandCoats-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 110),
(24, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw1c33a4c3/original/90_1001027-1A00678_2U540_20_WoolandNylonJacket-JacketsandCoats-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 111),
(25, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwbeb9d2dd/original/90_DSU8404-1A00775_2W340_23_GrecaTrainers-GrecaSneakers-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 112),
(25, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwa82f842e/original/90_DSU8404-1A00775_2W340_24_GrecaTrainers-GrecaSneakers-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 113),
(25, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw15af1a68/original/90_DSU8404-1A00775_2W340_26_GrecaTrainers-GrecaSneakers-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 114),
(25, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw3df14416/original/90_DSU8404-1A00775_2W340_28_GrecaTrainers-GrecaSneakers-versace-online-store_1_2.jpg?sw=748&sh=1050&sm=fit', 115),
(26, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw5e47d37b/original/90_1000733-DNY8ME_D41NP_23_LaMedusaNylonBackpack-Backpacks-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 116),
(26, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw9c7a02a4/original/90_1000733-DNY8ME_D41NP_24_LaMedusaNylonBackpack-Backpacks-versace-online-store_2_2.jpg?sw=748&sh=1050&sm=fit', 117),
(26, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwcd9c7858/original/90_1000733-DNY8ME_D41NP_26_LaMedusaNylonBackpack-Backpacks-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 118),
(26, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwfbdbf498/original/90_1000733-DNY8ME_D41NP_28_LaMedusaNylonBackpack-Backpacks-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 119),
(27, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw4e582652/original/90_1001243-1A00901_A1382_15_WoolandNylonPeacoat-JacketsandCoats-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 120),
(27, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw384dd683/original/90_1001243-1A00901_A1382_16_WoolandNylonPeacoat-JacketsandCoats-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 121),
(27, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw5ba5c509/original/90_1001243-1A00901_A1382_18_WoolandNylonPeacoat-JacketsandCoats-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 122),
(27, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwc37c9f2b/original/90_1001243-1A00901_A1382_20_WoolandNylonPeacoat-JacketsandCoats-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 123),
(28, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw5be7107d/original/90_1000795-1A00963_2W030_15_CottonPoplinIntarsiaShirt-BlousesandTops-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 124),
(28, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwaf2db9b6/original/90_1000795-1A00963_2W030_16_CottonPoplinIntarsiaShirt-BlousesandTops-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 125),
(28, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwf570055d/original/90_1000795-1A00963_2W030_18_CottonPoplinIntarsiaShirt-BlousesandTops-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 126),
(28, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw031c7026/original/90_1000795-1A00963_2W030_20_CottonPoplinIntarsiaShirt-BlousesandTops-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 127),
(29, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwcb0dfea6/original/90_1001245-1A00909_1D100_15_StraightLegJeans-Jeans-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 128),
(29, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwd4bff44f/original/90_1001245-1A00909_1D100_16_StraightLegJeans-Jeans-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 129),
(29, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwb51f117e/original/90_1001245-1A00909_1D100_18_StraightLegJeans-Jeans-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 130),
(29, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw82b2fee6/original/90_1001245-1A00909_1D100_20_StraightLegJeans-Jeans-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 131),
(30, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw6b06e168/original/90_1001246-1A00909_1D100_15_DenimA-LineSkirt-DenimSkirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 132),
(30, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw722ac8f7/original/90_1001246-1A00909_1D100_16_DenimA-LineSkirt-DenimSkirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 133),
(30, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwc7c29b62/original/90_1001246-1A00909_1D100_18_DenimA-LineSkirt-DenimSkirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 134),
(30, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwb1543282/original/90_1001246-1A00909_1D100_20_DenimA-LineSkirt-DenimSkirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 135),
(31, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwecb3b394/original/90_DCDD442-D2VSTM_5P08V_23_LaMedusaTrsordelaMerPrintBelt-Belts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 136),
(31, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw722ac8f7/original/90_1001246-1A00909_1D100_16_DenimA-LineSkirt-DenimSkirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 137),
(31, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwecb3b394/original/90_DCDD442-D2VSTM_5P08V_23_LaMedusaTrsordelaMerPrintBelt-Belts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 138),
(31, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwecb3b394/original/90_DCDD442-D2VSTM_5P08V_23_LaMedusaTrsordelaMerPrintBelt-Belts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 139),
(32, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwe41cd64a/original/90_DCU8577-DNAS68_D41E_23_GrecaRibbonBelt-Belts-versace-online-store_1_2.jpg?sw=748&sh=1050&sm=fit', 140),
(32, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw4ab2f565/original/90_DCU8577-DNAS68_D41E_24_GrecaRibbonBelt-Belts-versace-online-store_1_2.jpg?sw=748&sh=1050&sm=fit', 141),
(32, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwad00a306/original/90_DCU8577-DNAS68_D41E_20_GrecaRibbonBelt-Belts-versace-online-store_1_2.jpg?sw=748&sh=1050&sm=fit', 142),
(32, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw4ab2f565/original/90_DCU8577-DNAS68_D41E_24_GrecaRibbonBelt-Belts-versace-online-store_1_2.jpg?sw=748&sh=1050&sm=fit', 143),
(33, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwb40f3862/original/90_DCU8440-DNASGV_D41VP_23_GrecaRibbonBelt-Belts-versace-online-store_0_1.jpg?sw=748&sh=1050&sm=fit', 144),
(33, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwea8bbf40/original/90_DCU8440-DNASGV_D41VP_24_GrecaRibbonBelt-Belts-versace-online-store_0_1.jpg?sw=748&sh=1050&sm=fit', 145),
(33, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwb40f3862/original/90_DCU8440-DNASGV_D41VP_23_GrecaRibbonBelt-Belts-versace-online-store_0_1.jpg?sw=748&sh=1050&sm=fit', 146),
(33, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwea8bbf40/original/90_DCU8440-DNASGV_D41VP_24_GrecaRibbonBelt-Belts-versace-online-store_0_1.jpg?sw=748&sh=1050&sm=fit', 147),
(34, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwda3f1a96/original/90_DCU4806-DVTP1_D41OH_23_ClassicMedusaLeatherBelt-Belts-versace-online-store_6_13.jpg?sw=748&sh=1050&sm=fit', 148),
(34, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw94fadd8d/original/90_DCU4806-DVTP1_D41OH_24_ClassicMedusaLeatherBelt-Belts-versace-online-store_3_13.jpg?sw=748&sh=1050&sm=fit', 149),
(34, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwda3f1a96/original/90_DCU4806-DVTP1_D41OH_23_ClassicMedusaLeatherBelt-Belts-versace-online-store_6_13.jpg?sw=748&sh=1050&sm=fit', 150),
(34, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw646d4973/original/90_DCU4806-DVTP1_D41OH_20_ClassicMedusaLeatherBelt-Belts-versace-online-store_10_13.jpg?sw=748&sh=1050&sm=fit', 151),
(35, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw38ff1b7e/original/90_DCDI141-DVTNM_1P65V_23_LaMedusaLeatherBelt-Belts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 152),
(35, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw0684a09f/original/90_DCDI141-DVTNM_1P65V_24_LaMedusaLeatherBelt-Belts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 153),
(35, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw38ff1b7e/original/90_DCDI141-DVTNM_1P65V_23_LaMedusaLeatherBelt-Belts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 154),
(35, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw25d6ea45/original/90_DCDI141-DVTNM_1P65V_20_LaMedusaLeatherBelt-Belts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 155),
(36, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw19c26428/original/90_DSU8404-1A00784_1B000_23_GrecaSuedeTrainers-GrecaSneakers-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 156),
(36, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dweaaedba1/original/90_DSU8404-1A00784_1B000_24_GrecaSuedeTrainers-GrecaSneakers-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 157),
(36, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw43c22cf7/original/90_DSU8404-1A00784_1B000_26_GrecaSuedeTrainers-GrecaSneakers-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 158),
(36, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw03282b43/original/90_DSU8404-1A00784_1B000_28_GrecaSuedeTrainers-GrecaSneakers-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 159),
(37, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw5fe5dff0/original/90_DSU8404-DV51G_D0141_23_GrecaLogoTrainers-GrecaSneakers-versace-online-store_0_5.jpg?sw=748&sh=1050&sm=fit', 160),
(37, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw1fb48d62/original/90_DSU8404-DV51G_D0141_24_GrecaLogoTrainers-GrecaSneakers-versace-online-store_0_5.jpg?sw=748&sh=1050&sm=fit', 161),
(37, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw0725508a/original/90_DSU8404-DV51G_D0141_26_GrecaLogoTrainers-GrecaSneakers-versace-online-store_0_5.jpg?sw=748&sh=1050&sm=fit', 162),
(37, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwaf516947/original/90_DSU8404-DV51G_D0141_28_GrecaLogoTrainers-GrecaSneakers-versace-online-store_1_5.jpg?sw=748&sh=1050&sm=fit', 163),
(38, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1403798_lifestyle?$rl_df_pdp_5_7_lif$', 164),
(38, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1403798_alternate3?$rl_df_pdp_5_7$', 165),
(38, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1403798_alternate1?$rl_df_pdp_5_7$', 166),
(38, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1403798_alternate2?$rl_df_pdp_5_7$', 167),
(39, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw2d0761b4/original/90_1001650-1A01337_2B070_23_MedusaHolographicSweatshirt-Clothing-versace-online-store_0_5.jpg?sw=748&sh=1050&sm=fit', 168),
(39, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwfede5c85/original/90_1001650-1A01337_2B070_26_MedusaHolographicSweatshirt-Clothing-versace-online-store_0_5.jpg?sw=748&sh=1050&sm=fit', 169),
(39, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwa946a73b/original/90_1001650-1A01337_2B070_20_MedusaHolographicSweatshirt-Clothing-versace-online-store_0_5.jpg?sw=748&sh=1050&sm=fit', 170),
(39, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw5e1e60b7/original/90_1001650-1A01337_2B070_24_MedusaHolographicSweatshirt-Clothing-versace-online-store_0_5.jpg?sw=748&sh=1050&sm=fit', 171),
(40, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwc56963a8/original/90_1000038-1A01396_5B020_23_BaroccoflageKidsPrintTrousers-Clothing-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 172),
(40, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dweab64920/original/90_1000038-1A01396_5B020_24_BaroccoflageKidsPrintTrousers-Clothing-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 173),
(40, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwaba30fb8/original/90_1000038-1A01396_5B020_26_BaroccoflageKidsPrintTrousers-Clothing-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 174),
(40, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwf521c30f/original/90_1000038-1A01396_5B020_20_BaroccoflageKidsPrintTrousers-Clothing-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 175),
(48, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw0050b60b/original/90_1000438-1A00382_6U140_20_PaddedDenimJacket-Clothing-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 176),
(48, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw15fd96eb/original/90_1000438-1A00382_6U140_24_PaddedDenimJacket-Clothing-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 177),
(48, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw15fd96eb/original/90_1000438-1A00382_6U140_24_PaddedDenimJacket-Clothing-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 178),
(48, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw6b04cf12/original/90_1000438-1A00382_6U140_26_PaddedDenimJacket-Clothing-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 179),
(41, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwb4263c0d/original/90_1000497-1A01268_1E01V_23_MedusaStudLaminatedRoundBag-Accessories-versace-online-store_0_3.jpg?sw=748&sh=1050&sm=fit', 180),
(41, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwe8f3f261/original/90_1000497-1A01268_1E01V_24_MedusaStudLaminatedRoundBag-Accessories-versace-online-store_0_3.jpg?sw=748&sh=1050&sm=fit', 181),
(41, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwd683e9d7/original/90_1000497-1A01268_1E01V_20_MedusaStudLaminatedRoundBag-Accessories-versace-online-store_0_3.jpg?sw=748&sh=1050&sm=fit', 182),
(42, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwf48a1e81/original/90_1001629-1A01276_2L050_23_MedusaBackpack-Accessories-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 183),
(42, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwd50c28a7/original/90_1001629-1A01276_2L050_24_MedusaBackpack-Accessories-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 184),
(42, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw160368a0/original/90_1001629-1A01276_2L050_20_MedusaBackpack-Accessories-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 185),
(43, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw0911d739/original/90_1000509-1A00463_1E01V_23_MedusaStudSandals-Shoes-versace-online-store_0_1.jpg?sw=748&sh=1050&sm=fit', 186),
(43, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw997fba1c/original/90_1000509-1A00463_1E01V_24_MedusaStudSandals-Shoes-versace-online-store_0_1.jpg?sw=748&sh=1050&sm=fit', 187),
(43, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw263a4ae9/original/90_1000509-1A00463_1E01V_20_MedusaStudSandals-Shoes-versace-online-store_0_1.jpg?sw=748&sh=1050&sm=fit', 188),
(44, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw2e0ac210/original/90_1001670-1A01308_2O170_23_ArgyleKnitJumper-Clothing-versace-online-store_0_3.jpg?sw=748&sh=1050&sm=fit', 189),
(44, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw8727a103/original/90_1001670-1A01308_2O170_24_ArgyleKnitJumper-Clothing-versace-online-store_0_3.jpg?sw=748&sh=1050&sm=fit', 190),
(44, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwde8bb408/original/90_1001670-1A01308_2O170_26_ArgyleKnitJumper-Clothing-versace-online-store_0_3.jpg?sw=748&sh=1050&sm=fit', 191),
(45, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwbb3f022d/original/90_1001676-1A01374_6U140_23_GrecaJeans-Clothing-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 192),
(45, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwc008baf6/original/90_1001676-1A01374_6U140_24_GrecaJeans-Clothing-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 193),
(45, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw9f2d336c/original/90_1001676-1A01374_6U140_26_GrecaJeans-Clothing-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 194),
(45, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwc37deff3/original/90_1001629-1A01275_2U530_23_LaMedusaKidsBackpack-Accessories-versace-online-store_0_1.jpg?sw=748&sh=1050&sm=fit', 195),
(46, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw132a02d9/original/90_1001629-1A01275_2U530_24_LaMedusaKidsBackpack-Accessories-versace-online-store_0_1.jpg?sw=748&sh=1050&sm=fit', 196),
(46, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwe38ac69f/original/90_1001629-1A01275_2U530_20_LaMedusaKidsBackpack-Accessories-versace-online-store_0_1.jpg?sw=748&sh=1050&sm=fit', 197),
(46, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw5e1e60b7/original/90_1001650-1A01337_2B070_24_MedusaHolographicSweatshirt-Clothing-versace-online-store_0_5.jpg?sw=748&sh=1050&sm=fit', 198),
(47, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw41811992/original/90_YHX00001-YB00365_YA03_23_ChainReactionKidsTrainers-Shoes-versace-online-store_3_4.jpg?sw=748&sh=1050&sm=fit', 199),
(47, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwfb62c90b/original/90_YHX00001-YB00365_YA03_24_ChainReactionKidsTrainers-Shoes-versace-online-store_3_4.jpg?sw=748&sh=1050&sm=fit', 200),
(47, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwfb62c90b/original/90_YHX00001-YB00365_YA03_24_ChainReactionKidsTrainers-Shoes-versace-online-store_3_4.jpg?sw=748&sh=1050&sm=fit', 201),
(49, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw2a619b78/original/90_ZSWN00003-ZSEP0221_Z7150_20_LaGrecaembroideredsilkbathrobe-Bathrobes-versace-online-store_1_2.jpg?sw=748&sh=1050&sm=fit', 202),
(49, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwf0ccb5d0/original/90_ZSWN00003-ZSEP0221_Z7150_28_LaGrecaembroideredsilkbathrobe-Bathrobes-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 203),
(49, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw39b27fc3/original/90_ZSWN00003-ZSEP0221_Z7150_26_LaGrecaembroideredsilkbathrobe-Bathrobes-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 204),
(49, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwf70023fd/original/90_ZSWN00003-ZSEP0221_Z7150_24_LaGrecaembroideredsilkbathrobe-Bathrobes-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 205),
(50, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwb6d93773/original/90_ZACJ00008-ZCOSP052_Z4800_20_IBaroqueBathrobe-Bathrobes-versace-online-store_10_3.jpg?sw=748&sh=1050&sm=fit&sfrm=jpg', 206),
(50, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwee7516ad/original/90_ZACJ00008-ZCOSP052_Z4800_28_IBaroqueBathrobe-Bathrobes-versace-online-store_0_3.jpg?sw=748&sh=1050&sm=fit', 207),
(50, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw7c966514/original/90_ZACJ00008-ZCOSP052_Z4800_24_IBaroqueBathrobe-Bathrobes-versace-online-store_8_3.jpg?sw=748&sh=1050&sm=fit', 208),
(50, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw7c966514/original/90_ZACJ00008-ZCOSP052_Z4800_24_IBaroqueBathrobe-Bathrobes-versace-online-store_8_3.jpg?sw=748&sh=1050&sm=fit', 209),
(51, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw942add04/original/90_ZACJ00008-ZCOSP052_Z4003_20_IBaroqueBathrobe-Bathrobes-versace-online-store_10_3.jpg?sw=850&sh=1200&sm=fit', 210),
(51, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw02ba7341/original/90_ZACJ00008-ZCOSP052_Z4003_24_IBaroqueBathrobe-Bathrobes-versace-online-store_7_3.jpg?sw=850&sh=1200&sm=fit', 211),
(51, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw39e1974b/original/90_ZACJ00008-ZCOSP052_Z4003_26_IBaroqueBathrobe-Bathrobes-versace-online-store_4_3.jpg?sw=850&sh=1200&sm=fit', 212),
(52, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw9723636e/original/90_ZACJ00008-ZCOSP052_Z4584_20_IBaroqueBathrobe-Bathrobes-versace-online-store_6_0.jpg?sw=748&sh=1050&sm=fit', 213),
(52, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw3801910e/original/90_ZACJ00008-ZCOSP052_Z4584_24_IBaroqueBathrobe-Bathrobes-versace-online-store_4_0.jpg?sw=850&sh=1200&sm=fit', 214),
(52, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwb0e67594/original/90_ZACJ00008-ZCOSP052_Z4584_23_IBaroqueBathrobe-Bathrobes-versace-online-store_6_0.jpg?sw=850&sh=1200&sm=fit', 215),
(53, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwb36b1941/original/90_ZACP00052-ZCOSP075_Z7066_20_IBaroqueTerryClothBathrobe-Bathrobes-versace-online-store_2_2.png?sw=748&sh=1050&sm=fit', 216),
(53, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw308da0dc/original/90_ZACP00052-ZCOSP075_Z7066_24_IBaroqueTerryClothBathrobe-Bathrobes-versace-online-store_2_2.png?sw=748&sh=1050&sm=fit', 217),
(53, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw811ca023/original/90_ZACP00052-ZCOSP075_Z7066_23_IBaroqueTerryClothBathrobe-Bathrobes-versace-online-store_3_2.png?sw=748&sh=1050&sm=fit', 218),
(54, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw7249f70e/original/90_ZACJ00014-ZCOSP052_Z4250_20_MulticolorIBaroqueBathrobe-Bathrobes-versace-online-store_7_1.jpg?sw=748&sh=1050&sm=fit&sfrm=jpg', 219),
(54, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw1d093133/original/90_ZACJ00014-ZCOSP052_Z4250_26_MulticolorIBaroqueBathrobe-Bathrobes-versace-online-store_0_1.jpg?sw=748&sh=1050&sm=fit', 220),
(54, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw75194bd3/original/90_ZACJ00014-ZCOSP052_Z4250_23_MulticolorIBaroqueBathrobe-Bathrobes-versace-online-store_6_1.jpg?sw=748&sh=1050&sm=fit', 221),
(55, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwefc09ee1/original/90_ZACJ00008-ZCOSP052_Z4002_20_IBaroqueBathrobe-Bathrobes-versace-online-store_7_0.jpg?sw=748&sh=1050&sm=fit', 222),
(55, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwb51bfd10/original/90_ZACJ00008-ZCOSP052_Z4002_26_IBaroqueBathrobe-Bathrobes-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit&sfrm=jpg', 223),
(55, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw5dcae36c/original/90_ZACJ00008-ZCOSP052_Z4002_24_IBaroqueBathrobe-Bathrobes-versace-online-store_4_0.jpg?sw=748&sh=1050&sm=fit&sfrm=jpg', 224),
(55, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwe98c84f8/original/90_ZACJ00008-ZCOSP052_Z4002_23_IBaroqueBathrobe-Bathrobes-versace-online-store_7_0.jpg?sw=748&sh=1050&sm=fit&sfrm=jpg', 225),
(56, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw93027345/original/90_ZACJ00008-ZCOSP052_Z4004_20_IBaroqueBathrobe-Bathrobes-versace-online-store_6_1.jpg?sw=748&sh=1050&sm=fit', 226),
(56, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw9da8f891/original/90_ZACJ00008-ZCOSP052_Z4004_24_IBaroqueBathrobe-Bathrobes-versace-online-store_4_1.jpg?sw=748&sh=1050&sm=fit', 227),
(56, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw5b5d0933/original/90_ZACJ00008-ZCOSP052_Z4004_23_IBaroqueBathrobe-Bathrobes-versace-online-store_6_1.jpg?sw=748&sh=1050&sm=fit', 228),
(57, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwed431183/original/90_ZACJ00008-ZCOSP052_Z4882_20_IBaroqueBathrobe-Bathrobes-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit&sfrm=jpg', 229),
(57, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw71a69288/original/90_ZACJ00008-ZCOSP052_Z4882_24_IBaroqueBathrobe-Bathrobes-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 230),
(57, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw1f61c7c7/original/90_ZACJ00008-ZCOSP052_Z4882_23_IBaroqueBathrobe-Bathrobes-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 231),
(58, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwa67b56d5/original/90_ZACJ00016-ZCOSP052_Z7066_20_IBaroqueColorBlockDressingGown-Bathrobes-versace-online-store_1_1.jpg?sw=748&sh=1050&sm=fit', 232),
(58, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw077f9fd4/original/90_ZACJ00016-ZCOSP052_Z7066_26_IBaroqueColorBlockDressingGown-Bathrobes-versace-online-store_1_1.jpg?sw=748&sh=1050&sm=fit', 233),
(58, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwa41c35e2/original/90_ZACJ00016-ZCOSP052_Z7066_24_IBaroqueColorBlockDressingGown-Bathrobes-versace-online-store_1_1.jpg?sw=748&sh=1050&sm=fit', 234),
(58, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw9fbcea90/original/90_ZACJ00016-ZCOSP052_Z7066_23_IBaroqueColorBlockDressingGown-Bathrobes-versace-online-store_1_1.jpg?sw=748&sh=1050&sm=fit', 235),
(59, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwedc9241c/original/90_E71HAL2P1-ENS039_EG37_10_TartanBaroquePrintShirt-ShirtsandTops-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 236),
(59, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwa76c11e5/original/90_E71HAL2P1-ENS039_EG37_15_TartanBaroquePrintShirt-ShirtsandTops-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 237),
(59, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwc2bd810a/original/90_E71HAL2P1-ENS039_EG37_16_TartanBaroquePrintShirt-ShirtsandTops-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 238),
(59, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw191867c7/original/90_E71HAL2P1-ENS039_EG37_18_TartanBaroquePrintShirt-ShirtsandTops-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 239),
(68, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwaa184079/original/90_1001008-1A00603_2U520_10_LogoGatheredT-Shirt-T-shirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 240),
(68, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw2b97f8fc/original/90_1001008-1A00603_2U520_15_LogoGatheredT-Shirt-T-shirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 241),
(68, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw92dc5573/original/90_1001008-1A00603_2U520_16_LogoGatheredT-Shirt-T-shirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 242),
(68, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwa0daeda0/original/90_1001008-1A00603_2U520_18_LogoGatheredT-Shirt-T-shirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 243),
(60, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw733f1cab/original/90_E71HAS52L-EES008054_EMC2_10_StripedDenimJacket-JacketsandCoats-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 244),
(60, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwb408005b/original/90_E71HAS52L-EES008054_EMC2_15_StripedDenimJacket-JacketsandCoats-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 245),
(60, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwc7867835/original/90_E71HAS52L-EES008054_EMC2_16_StripedDenimJacket-JacketsandCoats-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 246),
(60, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwe0458159/original/90_E71HAS52L-EES008054_EMC2_18_StripedDenimJacket-JacketsandCoats-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 247),
(61, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwd3afde77/original/90_E71HAE857-EDW00901P_E904_10_RegaliaBaroquePrintDenimSkirt-Skirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 248),
(61, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwb8afc129/original/90_E71HAE857-EDW00901P_E904_15_RegaliaBaroquePrintDenimSkirt-Skirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 249),
(61, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw7ea71748/original/90_E71HAE857-EDW00901P_E904_16_RegaliaBaroquePrintDenimSkirt-Skirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 250);
INSERT INTO `image_id` (`id`, `image_url`, `id_image`) VALUES
(61, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwdd4a0df4/original/90_E71HAE857-EDW00901P_E904_18_RegaliaBaroquePrintDenimSkirt-Skirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 251),
(62, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw854c4c83/original/90_E71HAB5S0-EDW00901P_E904_10_RegaliaBaroquePrintSlimJeans-Denim-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 252),
(62, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwacf3e035/original/90_E71HAB5S0-EDW00901P_E904_15_RegaliaBaroquePrintSlimJeans-Denim-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 253),
(62, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwfa2cd537/original/90_E71HAB5S0-EDW00901P_E904_16_RegaliaBaroquePrintSlimJeans-Denim-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 254),
(62, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwed014166/original/90_E71HAB5S0-EDW00901P_E904_18_RegaliaBaroquePrintSlimJeans-Denim-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 255),
(63, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw05af1dce/original/90_E71HAVP01-ECP001_E243_10_BomberJacket-JacketsandCoats-versace-online-store_0_1.jpg?sw=748&sh=1050&sm=fit', 256),
(63, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwce6c3735/original/90_E71HAVP01-ECP001_E243_15_BomberJacket-JacketsandCoats-versace-online-store_0_1.jpg?sw=748&sh=1050&sm=fit', 257),
(63, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw380840dc/original/90_E71HAVP01-ECP001_E243_16_BomberJacket-JacketsandCoats-versace-online-store_0_1.jpg?sw=748&sh=1050&sm=fit', 258),
(63, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw6b247710/original/90_E71HAVP01-ECP001_E243_18_BomberJacket-JacketsandCoats-versace-online-store_0_1.jpg?sw=748&sh=1050&sm=fit', 259),
(64, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw8df4ef06/original/90_E71HAD325-EFS002_EG24_10_RegaliaBaroquePrintShorts-Pants-versace-online-store_0_5.jpg?sw=748&sh=1050&sm=fit', 260),
(64, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw51766be8/original/90_E71HAD325-EFS002_EG24_15_RegaliaBaroquePrintShorts-Pants-versace-online-store_0_5.jpg?sw=748&sh=1050&sm=fit', 261),
(64, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw52f11022/original/90_E71HAD325-EFS002_EG24_16_RegaliaBaroquePrintShorts-Pants-versace-online-store_0_5.jpg?sw=748&sh=1050&sm=fit', 262),
(64, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwd0943772/original/90_E71HAD325-EFS002_EG24_18_RegaliaBaroquePrintShorts-Pants-versace-online-store_0_5.jpg?sw=748&sh=1050&sm=fit', 263),
(65, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw8237d3fe/original/90_E71HAI317-EFS002_E899_10_RegaliaBaroquePrintHoodie-T-shirtsandSweatshirts-versace-online-store_1_0.jpg?sw=748&sh=1050&sm=fit', 264),
(65, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw9fcf6fa5/original/90_E71HAI317-EFS002_E899_15_RegaliaBaroquePrintHoodie-T-shirtsandSweatshirts-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 265),
(65, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwf8ecb79b/original/90_E71HAI317-EFS002_E899_16_RegaliaBaroquePrintHoodie-T-shirtsandSweatshirts-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 266),
(65, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwe8a2cf44/original/90_E71HAI317-EFS002_E899_18_RegaliaBaroquePrintHoodie-T-shirtsandSweatshirts-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 267),
(66, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwb4e562a9/original/90_E71HAE8A3-EN0006_E899_10_RegaliaBaroquePrintAccentSkirt-Skirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 268),
(66, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw6a90b5de/original/90_E71HAE8A3-EN0006_E899_15_RegaliaBaroquePrintAccentSkirt-Skirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 269),
(66, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw8b64a03c/original/90_E71HAE8A3-EN0006_E899_16_RegaliaBaroquePrintAccentSkirt-Skirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 270),
(66, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw9e33598e/original/90_E71HAE8A3-EN0006_E899_18_RegaliaBaroquePrintAccentSkirt-Skirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 271);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `id_pay` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `phone` text NOT NULL,
  `date_payment` date NOT NULL,
  `name_product` text NOT NULL,
  `image` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `color` text NOT NULL,
  `size` text NOT NULL,
  `pay_method` text NOT NULL,
  `type_pr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `payment`
--

INSERT INTO `payment` (`id_pay`, `customer_id`, `product_id`, `name`, `address`, `phone`, `date_payment`, `name_product`, `image`, `quantity`, `amount`, `color`, `size`, `pay_method`, `type_pr_id`) VALUES
(400, 87, 13, 'aa', '123ads', '123', '2021-11-26', 'Túi Hobo Nhỏ La Medusa', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwa2983378/original/90_1000802-DVIT3T_1P72V_20_LaMedusaSmallHoboBag-ShoulderBags-versace-online-store_2_2.jpg?sw=748&sh=1050&sm=fit', 1, 1821, 'Black', '', 'Ví điện tử', 4),
(401, 87, 51, 'aa', '123ads', '123', '2021-11-26', 'I ♡ BAROQUE BATHROBE', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw942add04/original/90_ZACJ00008-ZCOSP052_Z4003_20_IBaroqueBathrobe-Bathrobes-versace-online-store_10_3.jpg?sw=850&sh=1200&sm=fit', 1, 595, 'white', 'XL', 'Ví điện tử', 0),
(402, 87, 51, 'aa', '123ads', '123', '2021-11-26', 'I ♡ BAROQUE BATHROBE', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw942add04/original/90_ZACJ00008-ZCOSP052_Z4003_20_IBaroqueBathrobe-Bathrobes-versace-online-store_10_3.jpg?sw=850&sh=1200&sm=fit', 1, 595, 'white', 'XL', 'Ví điện tử', 0),
(403, 87, 20, 'aa', '123ads', '123', '2021-11-26', 'TÚI XÁCH VỪA LA MEDUSA', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw8eb13bd4/original/90_DBFI039-DVIT2T_1K26V_28_LaMedusaMediumHandbag-TopHandle-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 1, 3600, 'beige', '', 'Ví điện tử', 4),
(404, 87, 15, 'aa', '123ads', '123', '2021-11-26', 'Túi Hobo VừaLa Medusa', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw84200cf5/original/90_1000699-DVIT3T_1U38V_20_LaMedusaMediumHoboBag-ShoulderBags-versace-online-store_2_0.jpg?sw=748&sh=1050&sm=fit', 1, 1993, 'Black', '', 'Ví điện tử', 4),
(405, 87, 20, 'aa', '123ads', '123', '2021-11-26', 'TÚI XÁCH VỪA LA MEDUSA', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw8eb13bd4/original/90_DBFI039-DVIT2T_1K26V_28_LaMedusaMediumHandbag-TopHandle-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 1, 3600, 'beige', '', 'Ví điện tử', 4),
(406, 87, 13, 'aa', '123ads', '123', '2021-11-26', 'Túi Hobo Nhỏ La Medusa', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwa2983378/original/90_1000802-DVIT3T_1P72V_20_LaMedusaSmallHoboBag-ShoulderBags-versace-online-store_2_2.jpg?sw=748&sh=1050&sm=fit', 1, 1821, 'Black', '', 'Ví điện tử', 4),
(407, 87, 51, 'aa', '123ads', '123', '2021-11-26', 'I ♡ BAROQUE BATHROBE', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw942add04/original/90_ZACJ00008-ZCOSP052_Z4003_20_IBaroqueBathrobe-Bathrobes-versace-online-store_10_3.jpg?sw=850&sh=1200&sm=fit', 1, 595, 'white', 'XL', 'Ví điện tử', 0),
(408, 87, 15, 'aa', '123ads', '123', '2021-11-26', 'Túi Hobo VừaLa Medusa', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw84200cf5/original/90_1000699-DVIT3T_1U38V_20_LaMedusaMediumHoboBag-ShoulderBags-versace-online-store_2_0.jpg?sw=748&sh=1050&sm=fit', 1, 1993, 'Black', '', 'Ví điện tử', 4),
(409, 87, 51, 'aa', '123ads', '123', '2021-11-26', 'I ♡ BAROQUE BATHROBE', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw942add04/original/90_ZACJ00008-ZCOSP052_Z4003_20_IBaroqueBathrobe-Bathrobes-versace-online-store_10_3.jpg?sw=850&sh=1200&sm=fit', 1, 595, 'white', 'XL', 'Ví điện tử', 0),
(410, 87, 13, 'aa', '123ads', '123', '2021-11-26', 'Túi Hobo Nhỏ La Medusa', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwa2983378/original/90_1000802-DVIT3T_1P72V_20_LaMedusaSmallHoboBag-ShoulderBags-versace-online-store_2_2.jpg?sw=748&sh=1050&sm=fit', 1, 1821, 'Black', '', 'Ví điện tử', 4),
(411, 87, 20, 'aa', '123ads', '123', '2021-11-26', 'TÚI XÁCH VỪA LA MEDUSA', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw8eb13bd4/original/90_DBFI039-DVIT2T_1K26V_28_LaMedusaMediumHandbag-TopHandle-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 1, 3600, 'beige', '', 'Ví điện tử', 4),
(412, 87, 15, 'aa', '123ads', '123', '2021-11-26', 'Túi Hobo VừaLa Medusa', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw84200cf5/original/90_1000699-DVIT3T_1U38V_20_LaMedusaMediumHoboBag-ShoulderBags-versace-online-store_2_0.jpg?sw=748&sh=1050&sm=fit', 1, 1993, 'Black', '', 'Ví điện tử', 4),
(413, 87, 51, 'aa', '123ads', '123', '2021-11-26', 'I ♡ BAROQUE BATHROBE', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw942add04/original/90_ZACJ00008-ZCOSP052_Z4003_20_IBaroqueBathrobe-Bathrobes-versace-online-store_10_3.jpg?sw=850&sh=1200&sm=fit', 1, 595, 'white', 'XL', 'Ví điện tử', 0),
(414, 87, 51, 'aa', '123ads', '123', '2021-11-26', 'I ♡ BAROQUE BATHROBE', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw942add04/original/90_ZACJ00008-ZCOSP052_Z4003_20_IBaroqueBathrobe-Bathrobes-versace-online-store_10_3.jpg?sw=850&sh=1200&sm=fit', 1, 595, 'white', 'XL', 'Ví điện tử', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(50) NOT NULL,
  `name` text NOT NULL,
  `price` text NOT NULL,
  `Image` text NOT NULL,
  `description` text NOT NULL,
  `type_gender_id` int(11) NOT NULL,
  `type_pr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `Image`, `description`, `type_gender_id`, `type_pr_id`) VALUES
(1, 'Serape-Print Mesh Hoodie', '367.00', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411077_alternate10?$rl_df_pdp_5_7_a10$', '\nĐược làm từ lưới bông xốp, chiếc áo hoodie này có họa tiết rực rỡ lấy cảm hứng từ chăn serape truyền thống.', 1, 1),
(2, 'Áo phông họa tiết Jersey Fit cổ điển', '39.50', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411251_alternate10?$rl_df_pdp_5_7_a10$', 'Được xử lý để có vẻ ngoài cổ điển, chiếc áo phông cotton này có hình ảnh cao bồi lấy cảm hứng từ cổ điển.', 1, 1),
(3, 'Áo phông có túi Tây Nam vừa vặn cổ điển', '89.50', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411256_alternate10?$rl_df_pdp_5_7_a10$', 'Với chất liệu cotton mềm mại, chiếc áo phông này mang hơi hướng Polo vui tươi với túi lấy cảm hứng từ miền Tây Nam Bộ và logo của chúng tôi được thêu ở viền.', 1, 1),
(4, 'PRL Surf Fleece Hoodie', '168.00', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411113_alternate10?$rl_df_pdp_5_7_a10$', 'Với lớp hoàn thiện mờ và đồ họa in vết nứt, chiếc áo hoodie pha cotton này mang đến vẻ ngoài của một chiếc đồng hồ đeo tay được yêu thích.', 1, 1),
(5, 'Áo phông họa tiết Jersey Fit cổ điển', '69.50', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411257_alternate10?$rl_df_pdp_5_7_a10$', 'Với lớp hoàn thiện mờ và đồ họa in vết nứt, chiếc áo phông cotton này mang đến vẻ ngoài của một chiếc đồng hồ đeo tay được yêu thích.\n', 1, 1),
(6, 'Áo sơ mi tiện ích phù hợp cổ điển', '198.00', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411125_alternate10?$rl_df_pdp_5_7_a10$', 'Chiếc áo sơ mi tiện ích hiện đại này được làm bằng nylon tái chế, giúp giảm thiểu tác động đến môi trường bằng cách giảm chất thải bãi rác và sử dụng nguyên liệu thô.', 1, 1),
(7, 'Áo sơ mi Polo lướt sóng phù hợp cổ điển', '198.00', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411075_alternate10?$rl_df_pdp_5_7_a10$', 'Là một tiêu chuẩn phong cách Mỹ từ năm 1972, áo Polo đã được bắt chước nhưng không bao giờ bị trùng khớp. Qua nhiều thập kỷ, Ralph Lauren đã tái tạo lại phong cách đặc trưng của mình bằng nhiều màu sắc và sự phù hợp, nhưng tất cả đều giữ được chất lượng và sự chú ý đến từng chi tiết của bản gốc mang tính biểu tượng. Phiên bản này có đồ họa đầy màu sắc lấy cảm hứng từ các điểm đến lướt sóng nổi tiếng.', 1, 1),
(8, 'Fleece Graphic Sweatshirt', '148.00', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411119_alternate10?$rl_df_pdp_5_7_a10$', '\nĐược xử lý để có vẻ ngoài cổ điển, chiếc áo len pha bông này có đồ họa lấy cảm hứng từ phong cách cổ điển gợi lên văn hóa lướt sóng Hawaii.', 1, 1),
(9, 'Áo sơ mi cổ điển phương Tây của Madras', '98.50', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411098_alternate10?$rl_df_pdp_5_7_a10$', '\nKết hợp hai trụ của phong cách Polo, chiếc áo sơ mi này có hình bóng lấy cảm hứng từ phương Tây được kết bằng vải bông madras làm trung tâm.', 1, 1),
(10, 'Áo khoác Twill Field', '498.00', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411010_alternate10?$rl_df_pdp_5_7_a10$', '\nLấy cảm hứng từ những món đồ thừa ở sa mạc, chiếc áo khoác này có khoen thông gió, miếng dán gia cố ở khuỷu tay và nhiều túi tiện ích.', 1, 1),
(11, 'Áo sơ mi vải lanh hoa phù hợp tùy chỉnh', '125.00', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411083_alternate10?$rl_df_pdp_5_7_a10$', 'Cách bố trí túi và xếp nếp phức tạp của thiết kế này phù hợp với chiếc áo sơ mi guayabera cổ điển, loại áo có lịch sử lâu đời trong nền văn hóa Mỹ Latinh. Vải lanh nhẹ, thoáng khí của nó được nhuộm bằng màu chàm thực sự và làm cho nó trở thành một lựa chọn thoải mái cho những ngày thời tiết ấm áp.', 1, 1),
(12, 'Túi Hobo Nhỏ La Medusa', '1518.13', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw2ee07e1e/original/90_1000802-DVIT3T_1U38V_20_LaMedusaSmallHoboBag-ShoulderBags-versace-online-store_2_0.jpg?sw=450&sh=632&sm=fit&sfrm=jpg', 'Một thiết kế dạ hội tuyệt đẹp với hình dáng cong đương đại, chiếc túi nhỏ hobo được làm thủ công từ da bê sần nhẹ ở Ý. Thiết kế nổi bật là người bạn đồng hành hoàn hảo cho cả ban ngày và buổi tối, tự hào với tấm bảng Medusa ba chiều - phong cách trang trí mang tính biểu tượng đã được phát hiện trên cửa của trụ sở đầu tiên của thương hiệu ở Milan\n', 2, 4),
(13, 'Túi Hobo Nhỏ La Medusa', '1821.11', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwa2983378/original/90_1000802-DVIT3T_1P72V_20_LaMedusaSmallHoboBag-ShoulderBags-versace-online-store_2_2.jpg?sw=450&sh=632&sm=fit&sfrm=jpg', 'Một thiết kế dạ hội tuyệt đẹp với hình dáng cong đương đại, chiếc túi nhỏ hobo được làm thủ công từ da bê sần nhẹ ở Ý. Thiết kế nổi bật là người bạn đồng hành hoàn hảo cho cả ban ngày và buổi tối, tự hào với tấm bảng Medusa ba chiều - phong cách trang trí mang tính biểu tượng đã được phát hiện trên cửa của trụ sở đầu tiên của thương hiệu ở Milan\n', 2, 4),
(14, 'Túi Hobo VừaLa Medusa', '1993.48', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwbf7aa816/original/90_1000699-DVIT3T_1B00V_20_LaMedusaMediumHoboBag-ShoulderBags-versace-online-store_2_0.jpg?sw=450&sh=632&sm=fit&sfrm=jpg', 'Một thiết kế dạ hội tuyệt đẹp với hình dáng cong đương đại, chiếc túi nhỏ hobo được làm thủ công từ da bê sần nhẹ ở Ý. Thiết kế nổi bật là người bạn đồng hành hoàn hảo cho cả ban ngày và buổi tối, tự hào với tấm bảng Medusa ba chiều - phong cách trang trí mang tính biểu tượng đã được phát hiện trên cửa của trụ sở đầu tiên của thương hiệu ở Milan\n', 2, 4),
(15, 'Túi Hobo VừaLa Medusa', '1993.48', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw84200cf5/original/90_1000699-DVIT3T_1U38V_20_LaMedusaMediumHoboBag-ShoulderBags-versace-online-store_2_0.jpg?sw=450&sh=632&sm=fit&sfrm=jpg', 'Một thiết kế dạ hội tuyệt đẹp với hình dáng cong đương đại, chiếc túi nhỏ hobo được làm thủ công từ da bê sần nhẹ ở Ý. Thiết kế nổi bật là người bạn đồng hành hoàn hảo cho cả ban ngày và buổi tối, tự hào với tấm bảng Medusa ba chiều - phong cách trang trí mang tính biểu tượng đã được phát hiện trên cửa của trụ sở đầu tiên của thương hiệu ở Milan\n', 2, 4),
(16, 'Áo sơ mi vải lanh in hình Baroccoflage', '1011.51', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw963688e6/original/90_1000920-1A00628_5B020_10_BaroccoflagePrintLinenShirt-Shirts-versace-online-store_0_2.jpg?sw=450&sh=632&sm=fit&sfrm=jpg', 'Trong điều kiện thời tiết ấm áp cần thiết, chiếc áo sơ mi vải lanh này có in hình Baroccoflage - một cách chơi chữ Barocco cổ điển và khái niệm ngụy trang, thiết kế mới mô phỏng lại cả hai khái niệm và đặt chúng vào một khung cảnh Versace mới lạ.\n', 1, 1),
(17, 'Giày thể thao Trigreca', '1071.01', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw31bc95b6/original/90_DSU8094-1A00838_6B370_20_TrigrecaTrainers-TrigrecaSneakers-versace-online-store_0_0.jpg?sw=450&sh=632&sm=fit&sfrm=jpg', 'Sự bổ sung mới nhất cho gia đình giày thể thao được thèm muốn của Thời trang, Trigreca mang đến sự đổi mới cho thẩm mỹ không ngừng phát triển của thương hiệu. Tham khảo Versace DNA, Trigreca có bản in Barocco và ba hình ảnh Greca nổi bật: mặt giữa của đế ngoài, giữa và dưới cùng của đế ngoài. Sự kết hợp này tạo ra \"Hệ thống đệm Greca\". Trong một cái gật đầu tinh tế với Milan, mặt trên có một bản in rời rạc về tọa độ của thành phố', 1, 3),
(18, 'Balo Greca', '2441.69', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw7f1b75e5/original/90_DFZ8519-DNYGR3_D41E_20_GrecaBackpack-Backpacks-versace-online-store_2_2.jpg?sw=450&sh=632&sm=fit&sfrm=jpg', 'Táo bạo nhưng thiết thực, chiếc ba lô rộng rãi này có nhiều túi phía trước cũng như các ngăn bên trong có đệm để bảo vệ máy tính xách tay hoặc máy tính bảng của bạn. Phù hợp với một người đàn ông bận rộn khi di chuyển, phong cách được tô điểm bằng đường viền hoa văn Greca', 1, 6),
(19, 'Thắt lưng da La Medusa', '461.23', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw36142dbc/original/90_DCU4747-DVTP1_K41NV_20_LaMedusaLeatherBelt-Belts-versace-online-store_0_3.jpg?sw=450&sh=632&sm=fit&sfrm=jpg', 'Được chế tác từ da bê dẻo dai, chiếc thắt lưng bóng bẩy này được tô điểm bằng khóa Medusa ba chiều.', 1, 5),
(20, 'TÚI XÁCH VỪA LA MEDUSA', '3600', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwd7b86a3e/original/90_DBFI039-DVIT2T_1K26V_20_LaMedusaMediumHandbag-TopHandle-versace-online-store_3_0.jpg?sw=748&sh=1050&sm=fit', 'Được làm thủ công tại Ý từ da cao cấp, chiếc túi xách mới nhất của Fashion được trang trí bằng một tấm bảng Medusa - phong cách trang trí tương tự đã được phát hiện trên cửa của trụ sở đầu tiên của thương hiệu ở Milan. Hình bóng trơn có thể được tạo kiểu trên cổ tay hoặc ngang vai, có hai thanh chắn có thể tháo rời: một da và một dây xích', 2, 4),
(21, 'TÚI XÁCH VỪA LA MEDUSA', '3600', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwe0341de9/original/90_DBFI039-DVIT2T_KVO41_20_LaMedusaMediumHandbag-TopHandle-versace-online-store_4_2.jpg?sw=748&sh=1050&sm=fit', 'Được làm thủ công tại Ý từ da cao cấp, chiếc túi xách mới nhất của Fashion được trang trí bằng một tấm bảng Medusa - phong cách trang trí tương tự đã được phát hiện trên cửa của trụ sở đầu tiên của thương hiệu ở Milan. Hình bóng trơn có thể được tạo kiểu trên cổ tay hoặc ngang vai, có hai thanh chắn có thể tháo rời: một da và một dây xích', 2, 4),
(22, 'ÁO KHOÁC LEN & NYLON', '3320', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw9dd208d7/original/90_1001244-1A00901_2U340_10_WoolandNylonJacket-JacketsandCoats-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 'Một sự biến tấu rất Versace trên chiếc áo khoác bomber cổ điển, kiểu áo này được làm mới với những điểm nhấn thể thao bằng nylon.', 2, 1),
(23, 'LA MEDUSA SLINGBACK PUMPS', '1520', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw464af0d0/original/90_1001207-DVT2P_1B090_20_LaMedusaSling-BackPumps-Pumps-versace-online-store_0_2.jpg?sw=850&sh=1200&sm=fit', 'Được chế tác bằng da bê dẻo dai, những chiếc dép quai hậu tinh xảo này nâng tầm ngoại hình từ AM đến PIM. Hình dáng ngón chân nhọn bóng bẩy được trang trí bằng một tấm bảng Medusa - phong cách trang trí tương tự được tìm thấy trên cửa của trụ sở đầu tiên của thương hiệu ở Milan.', 2, 3),
(24, 'ÁO KHOÁC LEN & NYLON', '3500', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwd355f3c0/original/90_1001027-1A00678_2U540_10_WoolandNylonJacket-JacketsandCoats-versace-online-store_1_2.jpg?sw=748&sh=1050&sm=fit', 'Một bước ngoặt hiện đại trên một thiết kế vượt thời gian, chiếc áo khoác len nguyên chất này được làm mới với kiểu dáng thể thao, túi nylon và tay áo.', 1, 1),
(25, 'GIÀY GRECA ', '960', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwb53cb587/original/90_DSU8404-1A00775_2W340_20_GrecaTrainers-GrecaSneakers-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 'Được làm từ chất liệu da dẻo dai, giày thể thao Greca có đặc điểm là những đường nét tinh tế, gọn gàng và họa tiết Greca đồ họa trên đế giữa. Thiết kế low top được tô điểm bằng những điểm nhấn Greca in đậm.', 1, 3),
(26, 'LA MEDUSA NYLON BACKPACK', '2400', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw386a663f/original/90_1000733-DNY8ME_D41NP_20_LaMedusaNylonBackpack-Backpacks-versace-online-store_1_2.jpg?sw=850&sh=1200&sm=fit', 'Là một phụ kiện sang trọng bổ sung cho vẻ ngoài cả khi đang hoạt động và ngoài nhiệm vụ, chiếc ba lô đa năng này được trang trí bằng tấm bảng Medusa - phong cách trang trí tương tự đã được phát hiện trên cửa của trụ sở đầu tiên của thương hiệu ở Milan. Được trang bị ba túi bên ngoài phù hợp với các vật dụng cần thiết hàng ngày của bạn, bên trong rộng rãi cũng có một túi máy tính xách tay hoặc máy tính bảng có đệm.', 1, 6),
(27, 'WOOL & NYLON PEACOAT', '4680', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwd0cfd006/original/90_1001243-1A00901_A1382_10_WoolandNylonPeacoat-JacketsandCoats-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 'Một bước ngoặt hiện đại trên một thiết kế vượt thời gian, chiếc áo khoác lông cừu nguyên chất này được làm mới với các túi nylon thể thao. Thiết kế hai bên ngực được làm phong phú với các nút Medusa di sản', 2, 1),
(28, 'ÁO THUN COTTON POPLIN INTARSIA', '2340', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw59222f61/original/90_1000795-1A00963_2W030_10_CottonPoplinIntarsiaShirt-BlousesandTops-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 'Được làm từ vải bông tinh khiết, chiếc áo sơ mi ngoại cỡ này thể hiện một nét rất riêng của Versace đối với trang phục bảo hộ lao động. Đặc trưng với một loạt các hoa văn sọc và Gingham, thiết kế được tô điểm thêm bằng các nút Medusa vàng.', 2, 1),
(29, 'VÁY JEANS STRAIGHT ', '1220', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwce5a9708/original/90_1001245-1A00909_1D100_10_StraightLegJeans-Jeans-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 'Được làm từ vải bông tinh khiết, chiếc áo sơ mi ngoại cỡ này thể hiện một nét rất riêng của Versace đối với trang phục bảo hộ lao động. Đặc trưng với một loạt các hoa văn sọc và Gingham, thiết kế được tô điểm thêm bằng các nút Medusa vàng.', 2, 2),
(30, 'DENIM A-LINE SKIRT', '1160', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw09b28576/original/90_1001246-1A00909_1D100_10_DenimA-LineSkirt-DenimSkirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 'Một thiết kế linh hoạt, chiếc váy denim tối màu này có hình dáng chữ A vượt thời gian. Dễ dàng mặc lên hoặc xuống, váy chuyển tiếp liền mạch từ văn phòng sang giờ hạnh phúc.', 2, 2),
(31, 'LA MEDUSA TRÉSOR DE LA MER PRINT BELT', '350', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw1410dc40/original/90_DCDD442-D2VSTM_5P08V_20_LaMedusaTrsordelaMerPrintBelt-Belts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 'Được chế tác bằng da bê dẻo dai, chiếc thắt lưng cổ điển này có khóa Medusa ba chiều. Phụ kiện tuyên bố tự hào có bản in Trésor de la Mer, một thiết kế di sản mô tả một loạt các sinh vật biển.', 1, 5),
(32, 'ĐAI RIBBON HY LẠP', '290', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwad00a306/original/90_DCU8577-DNAS68_D41E_20_GrecaRibbonBelt-Belts-versace-online-store_1_2.jpg?sw=748&sh=1050&sm=fit', 'Thoải mái một cách hoàn hảo, chiếc thắt lưng ruy băng này bổ sung hoàn hảo cho các mặt hàng ghim ngoài nhiệm vụ. Phụ kiện thông thường có họa tiết Greca mang tính biểu tượng.', 1, 5),
(33, 'ĐAI RIBBON HY LẠP', '230', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwa72a5a32/original/90_DCU8440-DNASGV_D41VP_20_GrecaRibbonBelt-Belts-versace-online-store_1_1.jpg?sw=748&sh=1050&sm=fit', 'Thoải mái một cách hoàn hảo, chiếc thắt lưng ruy băng này bổ sung cho các mặt hàng ghim hoặc trang phục được cắt may cao cấp. Phụ kiện thông thường có họa tiết Greca mang tính biểu tượng', 1, 5),
(34, 'THẮT LƯNG MEDUSA CỔ ĐIỂN', '680', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw646d4973/original/90_DCU4806-DVTP1_D41OH_20_ClassicMedusaLeatherBelt-Belts-versace-online-store_10_13.jpg?sw=748&sh=1050&sm=fit', 'Được làm thủ công tại Ý từ da bê mềm mại, chiếc thắt lưng này có khóa tròn tông vàng đặc trưng của Medusa.', 1, 5),
(35, 'THẮT LƯNG MEDUSA CỔ ĐIỂN', '430', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw25d6ea45/original/90_DCDI141-DVTNM_1P65V_20_LaMedusaLeatherBelt-Belts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 'Một nét hoàn thiện rất Versace, chiếc thắt lưng da dẻo dai này được làm giàu bằng một viên kim cương Medusa bằng vàng - hình bóng của người phụ nữ thần thoại được tìm thấy trên cửa của trụ sở chính ở Milanese đầu tiên của thương hiệu.', 2, 5),
(36, 'GIÀY GRECA SUEDE ', '880', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw931c21a0/original/90_DSU8404-1A00784_1B000_20_GrecaSuedeTrainers-GrecaSneakers-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 'Được làm bằng da lộn mềm mại, giày thể thao Greca đế thấp có đặc điểm là các đường thẳng tinh tế, gọn gàng và họa tiết Greca đồ họa trên đế giữa', 1, 3),
(37, 'GRECA LOGO SNEAKERS\r\nSALE PRICE', '1060', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw7263ec76/original/90_DSU8404-DV51G_D0141_20_GrecaLogoTrainers-GrecaSneakers-versace-online-store_0_5.jpg?sw=748&sh=1050&sm=fit', 'Versace\'s latest sneaker silhouette, Greca is characterized by understated, clean lines and the graphic Greca pattern on the midsole. The supple leather design features a lateral logo, while the outsole hides a Medusa on the heel.', 1, 3),
(38, 'Thorton Allover-Pony Canvas Sneaker', '75.00', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1403798_lifestyle?$rl_df_pdp_5_7_lif$', 'Được làm bằng bông tái chế, đôi giày sneaker đế thấp này được thêu trên toàn bộ hình chú ngựa Pony đặc trưng của Ralph Lauren và có phần đế ngoài độc quyền có hoa văn sau dây hải lý.', 1, 3),
(39, 'ÁO THUN ĐỒ HỌA MEDUSA', '300', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwa946a73b/original/90_1001650-1A01337_2B070_20_MedusaHolographicSweatshirt-Clothing-versace-online-store_0_5.jpg?sw=748&sh=1050&sm=fit', 'Được làm từ chất liệu cotton co giãn mềm mại, chiếc áo len thoải mái này được tô điểm bằng hình in Medusa ba chiều.', 3, 1),
(40, 'QUẦN IN BAROCCOFLAGE KIDS', '500', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwf521c30f/original/90_1000038-1A01396_5B020_20_BaroccoflageKidsPrintTrousers-Clothing-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 'Được làm từ chất liệu cotton co giãn mềm mại, chiếc áo len thoải mái này được tô điểm bằng hình in Medusa ba chiều.', 3, 1),
(41, 'TÚI VÒNG CÓ ĐÈN LAMINA STUDY MEDUSA', '1000', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwd683e9d7/original/90_1000497-1A01268_1E01V_20_MedusaStudLaminatedRoundBag-Accessories-versace-online-store_0_3.jpg?sw=748&sh=1050&sm=fit', 'Một phong cách thú vị cho thời tiết ấm áp, đôi dép thoải mái, nhiều lớp này được tô điểm bằng đinh tán Medusa tông vàng.', 3, 4),
(42, 'BALO MEDUSA', '1022', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw160368a0/original/90_1001629-1A01276_2L050_20_MedusaBackpack-Accessories-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 'Được làm từ chất liệu cotton co giãn mềm mại, chiếc áo len thoải mái này được tô điểm bằng hình in Medusa ba chiều.', 3, 6),
(43, 'MEDUSA STUD SANDALS', '500', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw263a4ae9/original/90_1000509-1A00463_1E01V_20_MedusaStudSandals-Shoes-versace-online-store_0_1.jpg?sw=748&sh=1050&sm=fit', 'Một phong cách thú vị cho thời tiết ấm áp, đôi dép thoải mái, nhiều lớp này được tô điểm bằng đinh tán Medusa tông vàng.', 3, 3),
(44, 'ARGYLE KNIT SWEATER', '600', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwf6607ea6/original/90_1001670-1A01308_2O170_20_ArgyleKnitJumper-Clothing-versace-online-store_0_3.jpg?sw=748&sh=1050&sm=fit', 'Vui nhộn và vui tươi - chiếc áo len cổ cao thoải mái này được làm phong phú thêm với họa tiết logo in.', 3, 1),
(45, 'GRECA JEANS', '700', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwe7ebb331/original/90_1001676-1A01374_6U140_20_GrecaJeans-Clothing-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 'Vui nhộn và vui tươi, chiếc áo khoác này được thiết kế cho các biểu tượng thời trang trong tương lai. Phong cách denim có một sự thay đổi độc đáo - áo khoác có một lớp đệm.', 3, 2),
(46, 'BALO LA MEDUSA', '1000', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwe38ac69f/original/90_1001629-1A01275_2U530_20_LaMedusaKidsBackpack-Accessories-versace-online-store_0_1.jpg?sw=748&sh=1050&sm=fit', 'Vui nhộn và vui tươi, chiếc áo khoác này được thiết kế cho các biểu tượng thời trang trong tương lai. Phong cách denim có một sự thay đổi độc đáo - áo khoác có một lớp đệm.', 3, 6),
(47, 'GIÀY CHAIN REACTION KIDS', '1022', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dweb113c5b/original/90_YHX00001-YB00365_YA03_20_ChainReactionKidsTrainers-Shoes-versace-online-store_3_4.jpg?sw=748&sh=1050&sm=fit', 'Được làm từ chất liệu cotton co giãn mềm mại, chiếc áo len thoải mái này được tô điểm bằng hình in Medusa ba chiều.', 3, 3),
(48, 'PADDED DENIM JACKET', '1500', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw0050b60b/original/90_1000438-1A00382_6U140_20_PaddedDenimJacket-Clothing-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 'Vui nhộn và vui tươi, chiếc áo khoác này được thiết kế cho các biểu tượng thời trang trong tương lai. Phong cách denim có một sự thay đổi độc đáo - áo khoác có một lớp đệm.', 3, 3),
(49, 'LA GRECA EMBROIDERED SILK BATHROBE', '1234', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw2a619b78/original/90_ZSWN00003-ZSEP0221_Z7150_20_LaGrecaembroideredsilkbathrobe-Bathrobes-versace-online-store_1_2.jpg?sw=748&sh=1050&sm=fit', 'Không thể nhầm lẫn với Versace, chiếc áo choàng tắm này được làm thủ công từ lụa nguyên chất và được trang trí chi tiết với thương hiệu đính sequin và in La Greca.', 0, 0),
(50, 'I ♡ BAROQUE BATHROBE', '595', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwb6d93773/original/90_ZACJ00008-ZCOSP052_Z4800_20_IBaroqueBathrobe-Bathrobes-versace-online-store_10_3.jpg?sw=748&sh=1050&sm=fit', 'Bạn có thể tùy chỉnh áo choàng tắm của mình bằng cách thêm tối đa 9 ký tự thêu sequin vào kiểu bông sang trọng. Mỗi miếng dán chữ cái đều được các nghệ nhân lành nghề của chúng tôi khâu bằng tay vào áo choàng tắm, đảm bảo chất lượng cao nhất của tác phẩm có một không hai của bạn', 0, 0),
(51, 'I ♡ BAROQUE BATHROBE', '595', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw942add04/original/90_ZACJ00008-ZCOSP052_Z4003_20_IBaroqueBathrobe-Bathrobes-versace-online-store_10_3.jpg?sw=850&sh=1200&sm=fit', 'Bạn có thể tùy chỉnh áo choàng tắm của mình bằng cách thêm tối đa 9 ký tự thêu sequin vào kiểu bông sang trọng. Mỗi miếng dán chữ cái đều được các nghệ nhân lành nghề của chúng tôi khâu bằng tay vào áo choàng tắm, đảm bảo chất lượng cao nhất của tác phẩm có một không hai của bạn', 0, 0),
(52, 'I ♡ BAROQUE BATHROBE', '595', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw9723636e/original/90_ZACJ00008-ZCOSP052_Z4584_20_IBaroqueBathrobe-Bathrobes-versace-online-store_6_0.jpg?sw=850&sh=1200&sm=fit', 'Bạn có thể tùy chỉnh áo choàng tắm của mình bằng cách thêm tối đa 9 ký tự thêu sequin vào kiểu bông sang trọng. Mỗi miếng dán chữ cái đều được các nghệ nhân lành nghề của chúng tôi khâu bằng tay vào áo choàng tắm, đảm bảo chất lượng cao nhất của tác phẩm có một không hai của bạn', 0, 0),
(53, 'I ♡ BAROQUE TERRY CLOTH BATHROBE', '787', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwb36b1941/original/90_ZACP00052-ZCOSP075_Z7066_20_IBaroqueTerryClothBathrobe-Bathrobes-versace-online-store_2_2.png?sw=748&sh=1050&sm=fit', 'Bạn có thể tùy chỉnh áo choàng tắm của mình bằng cách thêm tối đa 9 ký tự thêu sequin vào kiểu bông sang trọng. Mỗi miếng dán chữ cái đều được các nghệ nhân lành nghề của chúng tôi khâu bằng tay vào áo choàng tắm, đảm bảo chất lượng cao nhất của tác phẩm có một không hai của bạn', 0, 0),
(54, 'MULTICOLOR I ♡ BAROQUE BATHROBE', '999', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw7249f70e/original/90_ZACJ00014-ZCOSP052_Z4250_20_MulticolorIBaroqueBathrobe-Bathrobes-versace-online-store_7_1.jpg?sw=748&sh=1050&sm=fit&sfrm=jpg', 'Với bản in logo Versace kết cấu mờ nhạt và được tạo điểm nhấn bởi tay áo và đai quấn in hình Barocco, chiếc áo choàng tắm mềm mại và được bao phủ đầy tính biểu tượng này toát lên sự sang trọng', 0, 0),
(55, 'I ♡ BAROQUE BATHROBE', '808', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwefc09ee1/original/90_ZACJ00008-ZCOSP052_Z4002_20_IBaroqueBathrobe-Bathrobes-versace-online-store_7_0.jpg?sw=748&sh=1050&sm=fit&sfrm=jpg', 'Bạn có thể tùy chỉnh áo choàng tắm của mình bằng cách thêm tối đa 9 ký tự thêu sequin vào kiểu bông sang trọng. Mỗi miếng dán chữ cái đều được các nghệ nhân lành nghề của chúng tôi khâu bằng tay vào áo choàng tắm, đảm bảo chất lượng cao nhất của tác phẩm có một không hai của bạn', 0, 0),
(56, 'I ♡ BAROQUE BATHROBE', '555', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw93027345/original/90_ZACJ00008-ZCOSP052_Z4004_20_IBaroqueBathrobe-Bathrobes-versace-online-store_6_1.jpg?sw=748&sh=1050&sm=fit', 'Bạn có thể tùy chỉnh áo choàng tắm của mình bằng cách thêm tối đa 9 ký tự thêu sequin vào kiểu bông sang trọng. Mỗi miếng dán chữ cái đều được các nghệ nhân lành nghề của chúng tôi khâu bằng tay vào áo choàng tắm, đảm bảo chất lượng cao nhất của tác phẩm có một không hai của bạn', 0, 0),
(57, 'I ♡ BAROQUE BATHROBE', '899', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwed431183/original/90_ZACJ00008-ZCOSP052_Z4882_20_IBaroqueBathrobe-Bathrobes-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 'Không thể nhầm lẫn với Versace, chiếc áo choàng tắm này được làm thủ công từ lụa nguyên chất và được trang trí chi tiết với thương hiệu đính sequin và in La Greca.', 0, 0),
(58, 'I ♡ BAROQUE BATHROBE', '676', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwa67b56d5/original/90_ZACJ00016-ZCOSP052_Z7066_20_IBaroqueColorBlockDressingGown-Bathrobes-versace-online-store_1_1.jpg?sw=748&sh=1050&sm=fit', 'Không thể nhầm lẫn với Versace, chiếc áo choàng tắm này được làm thủ công từ lụa nguyên chất và được trang trí chi tiết với thương hiệu đính sequin và in La Greca.', 0, 0),
(59, 'TARTAN BAROQUE PRINT SHIRT', '625', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwedc9241c/original/90_E71HAL2P1-ENS039_EG37_10_TartanBaroquePrintShirt-ShirtsandTops-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 'Áo sơ mi Viscose in hình Baroque đậm chất Tartan. Cơ hội vô tận để tạo kiểu - có thể tìm thấy cảm hứng khi kết hợp với quần denim hoặc váy phù hợp', 2, 7),
(60, 'STRIPED DENIM JACKET', '850', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw733f1cab/original/90_E71HAS52L-EES008054_EMC2_10_StripedDenimJacket-JacketsandCoats-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 'Là một thiết bị cần thiết cho mùa hè, chiếc áo khoác denim này có họa tiết sọc đậm. Kết hợp tốt với vô số kiểu dáng cho giao diện cả ngày lẫn đêm', 2, 7),
(61, 'REGALIA BAROQUE PRINT DENIM SKIRT', '550', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwd3afde77/original/90_E71HAE857-EDW00901P_E904_10_RegaliaBaroquePrintDenimSkirt-Skirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 'Là một thiết bị cần thiết cho mùa hè, chiếc áo khoác denim này có họa tiết sọc đậm. Kết hợp tốt với vô số kiểu dáng cho giao diện cả ngày lẫn đêm', 2, 7),
(62, 'REGALIA BAROQUE PRINT SLIM JEANS', '625', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw854c4c83/original/90_E71HAB5S0-EDW00901P_E904_10_RegaliaBaroquePrintSlimJeans-Denim-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 'Với thiết kế tinh xảo, những chiếc quần jean ôm vừa vặn này có họa tiết Regalia Baroque được in bằng sắc tố mạnh và ánh vàng lấp lánh. Chiếc quần jean này hoàn toàn được làm bằng tay.', 2, 7),
(63, 'BOMBER JACKET', '995', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw05af1dce/original/90_E71HAVP01-ECP001_E243_10_BomberJacket-JacketsandCoats-versace-online-store_0_1.jpg?sw=748&sh=1050&sm=fit', 'Một thiết kế thông thường được thực hiện cho mọi loại thời tiết. Chiếc áo khoác bomber hiệu ứng da này tự hào có một miếng dán logo trên ngực.', 2, 7),
(64, 'REGALIA BAROQUE PRINT SHORTS', '300', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw8df4ef06/original/90_E71HAD325-EFS002_EG24_10_RegaliaBaroquePrintShorts-Pants-versace-online-store_0_5.jpg?sw=748&sh=1050&sm=fit', 'Một thiết kế hoàn hảo cho những ngày hè - những chiếc quần short bằng lông cừu chải này có in hình Baroque đậm của Regalia.', 2, 7),
(65, 'REGALIA BAROQUE PRINT HOODIE', '425', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw8237d3fe/original/90_E71HAI317-EFS002_E899_10_RegaliaBaroquePrintHoodie-T-shirtsandSweatshirts-versace-online-store_1_0.jpg?sw=748&sh=1050&sm=fit', 'Vui nhộn và đầy màu sắc, chiếc áo hoodie cotton mềm mại này có in hình Baroque của Regalia. Thiết kế nổi bật với các chi tiết cắt khoét ở mặt trước và mui xe.', 2, 7),
(66, 'REGALIA BAROQUE PRINT ACCENT SKIRT', '400', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwb4e562a9/original/90_E71HAE8A3-EN0006_E899_10_RegaliaBaroquePrintAccentSkirt-Skirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 'Một thiết kế thanh lịch cho nhiều dịp khác nhau - chiếc váy mini cài cúc này được làm phong phú thêm với phần chèn in hình Baroque của Regalia.', 2, 7),
(68, 'LOGO GATHERED T-SHIRT', '550', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwaa184079/original/90_1001008-1A00603_2U520_10_LogoGatheredT-Shirt-T-shirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit&sfrm=jpg', 'Là một thiết kế giản dị nâng cao, chiếc áo phông quá khổ này có điểm nhấn ở viền được làm phong phú bằng phần cứng Medusa vàng. Kiểu bông mềm mại có họa tiết và chữ biểu tượng Medusa', 2, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size_id`
--

CREATE TABLE `size_id` (
  `id` int(11) NOT NULL,
  `id_size` int(11) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `size_id`
--

INSERT INTO `size_id` (`id`, `id_size`, `size`) VALUES
(1, 6, 'XS'),
(1, 7, 'L'),
(1, 8, 'XL'),
(1, 9, 'XXL'),
(2, 10, 'XS'),
(2, 11, 'L'),
(2, 12, 'XL'),
(2, 13, 'XXL'),
(3, 14, 'XS'),
(3, 15, 'L'),
(3, 16, 'XL'),
(3, 17, 'XXL'),
(4, 18, 'XS'),
(4, 19, 'L'),
(4, 20, 'XL'),
(4, 21, 'XXL'),
(5, 22, 'XS'),
(5, 23, 'L'),
(5, 24, 'XL'),
(5, 25, 'XXL'),
(6, 26, 'XS'),
(6, 27, 'L'),
(6, 28, 'XL'),
(6, 29, 'XXL'),
(7, 30, 'XS'),
(7, 31, 'L'),
(7, 32, 'XL'),
(7, 33, 'XXL'),
(8, 34, 'XS'),
(8, 35, 'L'),
(8, 36, 'XL'),
(8, 37, 'XXL'),
(9, 38, 'XS'),
(9, 39, 'L'),
(9, 40, 'XL'),
(9, 41, 'XXL'),
(10, 42, 'XS'),
(10, 43, 'L'),
(10, 44, 'XL'),
(10, 45, 'XXL'),
(11, 46, 'XS'),
(11, 47, 'L'),
(11, 48, 'XL'),
(11, 49, 'XXL'),
(16, 50, 'S'),
(16, 51, 'M'),
(16, 52, 'L'),
(16, 53, 'XL'),
(22, 54, 'S'),
(22, 55, 'M'),
(22, 56, 'L'),
(22, 57, 'XL'),
(24, 58, 'S'),
(24, 59, 'M'),
(24, 60, 'L'),
(24, 61, 'XL'),
(27, 62, '36'),
(27, 63, '38'),
(27, 64, '40'),
(28, 65, '36'),
(28, 66, '38'),
(28, 67, '40'),
(28, 68, '42'),
(29, 69, '26'),
(29, 70, '27'),
(29, 71, '28'),
(29, 72, '29'),
(30, 73, '36'),
(30, 74, '38'),
(30, 75, '40'),
(30, 76, '42'),
(30, 77, '44'),
(36, 78, '40'),
(36, 79, '42'),
(36, 80, '44'),
(36, 81, '46'),
(36, 82, '48'),
(37, 83, '38'),
(37, 84, '40'),
(37, 85, '41'),
(37, 86, '42'),
(37, 87, '44'),
(38, 88, '39'),
(38, 89, '40'),
(38, 90, '41'),
(38, 91, '42'),
(38, 92, '44'),
(2, 93, 'S'),
(3, 94, 'S'),
(4, 95, 'S'),
(5, 96, 'S'),
(6, 97, 'S'),
(7, 98, 'S'),
(8, 99, 'S'),
(9, 100, 'S'),
(10, 101, 'S'),
(11, 102, 'S'),
(39, 103, '35'),
(39, 104, '36'),
(39, 105, '37'),
(40, 106, '35'),
(40, 107, '36'),
(40, 108, '37'),
(40, 109, '38'),
(41, 110, '35'),
(41, 111, '36'),
(41, 112, '37'),
(41, 113, '38'),
(42, 114, '35'),
(42, 115, '36'),
(42, 116, '37'),
(42, 117, '38'),
(43, 118, '35'),
(43, 119, '36'),
(43, 120, '37'),
(43, 121, '38'),
(44, 122, '35'),
(44, 123, '36'),
(44, 124, '37'),
(44, 125, '38'),
(45, 126, '35'),
(45, 127, '36'),
(45, 128, '37'),
(45, 129, '38'),
(46, 130, '35'),
(46, 131, '36'),
(46, 132, '37'),
(47, 133, '35'),
(47, 134, '36'),
(47, 135, '37'),
(48, 136, '35'),
(48, 137, '36'),
(48, 138, '37'),
(55, 139, 'M'),
(55, 141, 'L'),
(50, 142, 'M'),
(50, 143, 'L'),
(50, 144, 'XL'),
(51, 145, 'M'),
(51, 146, 'L'),
(51, 147, 'XL'),
(52, 148, 'M'),
(52, 149, 'L'),
(52, 150, 'XL'),
(53, 151, 'M'),
(53, 152, 'L'),
(53, 153, 'XL'),
(49, 154, 'M'),
(49, 155, 'L'),
(49, 156, 'XL'),
(55, 157, 'XL'),
(57, 159, 'XL'),
(54, 160, 'M'),
(54, 161, 'L'),
(54, 162, 'XL'),
(56, 163, 'M'),
(57, 165, 'M'),
(57, 166, 'L'),
(56, 167, 'L'),
(56, 169, 'XL'),
(58, 170, 'M'),
(58, 171, 'L'),
(58, 172, 'XL'),
(68, 173, 'M'),
(68, 174, 'L'),
(68, 175, 'XL'),
(57, 178, 'L'),
(66, 180, 'L'),
(66, 181, 'XL'),
(65, 182, 'M'),
(65, 183, 'L'),
(65, 184, 'XL'),
(64, 185, 'M'),
(64, 186, 'L'),
(64, 187, 'XL'),
(63, 188, 'M'),
(63, 189, 'L'),
(63, 190, 'XL'),
(62, 191, 'M'),
(62, 192, 'L'),
(62, 193, 'XL'),
(61, 194, 'M'),
(61, 195, 'L'),
(61, 196, 'XL'),
(60, 197, 'M'),
(60, 198, 'L'),
(60, 199, 'XL'),
(59, 200, 'M'),
(59, 201, 'L'),
(59, 202, 'XL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_gender_id`
--

CREATE TABLE `type_gender_id` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `type_gender_id`
--

INSERT INTO `type_gender_id` (`id`, `type`) VALUES
(0, 'F/M'),
(1, 'Men'),
(2, 'Women'),
(3, 'Children');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_pr_id`
--

CREATE TABLE `type_pr_id` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `type_pr_id`
--

INSERT INTO `type_pr_id` (`id`, `type`) VALUES
(0, 'Bathrobe'),
(1, 'Shirt'),
(2, 'Trousers'),
(3, 'Shoes'),
(4, 'Handbag'),
(5, 'Belt'),
(6, 'Backpack'),
(7, 'Jean');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`),
  ADD KEY `id` (`customer_id`),
  ADD KEY `id_product` (`product_id`);

--
-- Chỉ mục cho bảng `color_id`
--
ALTER TABLE `color_id`
  ADD PRIMARY KEY (`id_color`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `image_id`
--
ALTER TABLE `image_id`
  ADD PRIMARY KEY (`id_image`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id_pay`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_gender_id` (`type_gender_id`),
  ADD KEY `type_pr_id` (`type_pr_id`);

--
-- Chỉ mục cho bảng `size_id`
--
ALTER TABLE `size_id`
  ADD PRIMARY KEY (`id_size`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `type_gender_id`
--
ALTER TABLE `type_gender_id`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `type_pr_id`
--
ALTER TABLE `type_pr_id`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT cho bảng `color_id`
--
ALTER TABLE `color_id`
  MODIFY `id_color` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `image_id`
--
ALTER TABLE `image_id`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `id_pay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=415;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `size_id`
--
ALTER TABLE `size_id`
  MODIFY `id_size` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `color_id`
--
ALTER TABLE `color_id`
  ADD CONSTRAINT `color_id_ibfk_1` FOREIGN KEY (`id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `image_id`
--
ALTER TABLE `image_id`
  ADD CONSTRAINT `image_id_ibfk_1` FOREIGN KEY (`id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`type_gender_id`) REFERENCES `type_gender_id` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`type_pr_id`) REFERENCES `type_pr_id` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `size_id`
--
ALTER TABLE `size_id`
  ADD CONSTRAINT `size_id_ibfk_1` FOREIGN KEY (`id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
