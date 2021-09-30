-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 30, 2021 lúc 12:39 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 7.3.28

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
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`) VALUES
(1, 'duc', 'admin_duc', 'admin_duc');

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
(176, 85, 25, 'GRECA SNEAKERS', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwbeb9d2dd/original/90_DSU8404-1A00775_2W340_23_GrecaTrainers-GrecaSneakers-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 3, '1', 'Blue+White', '', '960', '2021-09-04'),
(177, 85, 14, 'La Medusa Medium Hobo Bag', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwbf7aa816/original/90_1000699-DVIT3T_1B00V_20_LaMedusaMediumHoboBag-ShoulderBags-versace-online-store_2_0.jpg?sw=748&sh=1050&sm=fit', 4, '1', 'Black', '', '1993', '2021-09-04'),
(206, 87, 20, 'LA MEDUSA MEDIUM HANDBAG', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw8eb13bd4/original/90_DBFI039-DVIT2T_1K26V_28_LaMedusaMediumHandbag-TopHandle-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 4, '10', 'beige', '', '36000', '2021-09-10'),
(207, 87, 22, 'WOOL & NYLON JACKET', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw9dd208d7/original/90_1001244-1A00901_2U340_10_WoolandNylonJacket-JacketsandCoats-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit&sfrm=jpg', 1, '10', 'Blue+Black', 'L', '33200', '2021-09-10'),
(208, 87, 2, 'Classic Fit Jersey Graphic T-Shirt', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411251_alternate10?$rl_df_pdp_5_7_a10$', 1, '10', 'White', 'L', '390', '2021-09-10'),
(209, 87, 4, 'PRL Surf Fleece Hoodie', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411113_alternate10?$rl_df_pdp_5_7_a10$', 1, '10', 'Seafoam', 'L', '1680', '2021-09-10'),
(210, 87, 4, 'PRL Surf Fleece Hoodie', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411113_alternate10?$rl_df_pdp_5_7_a10$', 1, '10', 'Seafoam', 'L', '1680', '2021-09-10'),
(211, 87, 18, 'Greca Backpack', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw7f1b75e5/original/90_DFZ8519-DNYGR3_D41E_20_GrecaBackpack-Backpacks-versace-online-store_2_2.jpg?sw=748&sh=1050&sm=fit', 6, '5', 'Black', '', '12205', '2021-09-10'),
(212, 87, 26, 'LA MEDUSA NYLON BACKPACK', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw5e47d37b/original/90_1000733-DNY8ME_D41NP_23_LaMedusaNylonBackpack-Backpacks-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 6, '2', 'Black', '', '4800', '2021-09-10'),
(213, 87, 37, 'GRECA LOGO SNEAKERS\r\nSALE PRICE', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw5fe5dff0/original/90_DSU8404-DV51G_D0141_23_GrecaLogoTrainers-GrecaSneakers-versace-online-store_0_5.jpg?sw=748&sh=1050&sm=fit', 3, '5', 'White', '41', '5300', '2021-09-10'),
(214, 87, 19, 'La Medusa Leather Belt', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw36142dbc/original/90_DCU4747-DVTP1_K41NV_20_LaMedusaLeatherBelt-Belts-versace-online-store_0_3.jpg?sw=748&sh=1050&sm=fit', 5, '6', 'Black', '', '2766', '2021-09-10'),
(215, 87, 31, 'LA MEDUSA TRÉSOR DE LA MER PRINT BELT', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwecb3b394/original/90_DCDD442-D2VSTM_5P08V_23_LaMedusaTrsordelaMerPrintBelt-Belts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 5, '5', 'Black', '', '1750', '2021-09-10'),
(216, 85, 1, 'Serape-Print Mesh Hoodie', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411077_alternate10?$rl_df_pdp_5_7_a10$', 1, '7', 'Serape Print', 'L', '2576', '2021-09-10'),
(217, 85, 3, 'Classic Fit Southwestern Pocket T-Shirt', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411256_alternate10?$rl_df_pdp_5_7_a10$', 1, '10', 'Freshwater', 'L', '890', '2021-09-10'),
(218, 85, 4, 'PRL Surf Fleece Hoodie', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411113_alternate10?$rl_df_pdp_5_7_a10$', 1, '10', 'Seafoam', 'L', '1680', '2021-09-10'),
(219, 85, 17, 'Trigreca Sneakers', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw31bc95b6/original/90_DSU8094-1A00838_6B370_20_TrigrecaTrainers-TrigrecaSneakers-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 3, '5', 'Blue Print', '', '5355', '2021-09-10'),
(220, 85, 24, 'WOOL & NYLON JACKET', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwd355f3c0/original/90_1001027-1A00678_2U540_10_WoolandNylonJacket-JacketsandCoats-versace-online-store_1_2.jpg?sw=748&sh=1050&sm=fit', 1, '5', 'Navy', 'L', '17500', '2021-09-10'),
(221, 85, 31, 'LA MEDUSA TRÉSOR DE LA MER PRINT BELT', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwecb3b394/original/90_DCDD442-D2VSTM_5P08V_23_LaMedusaTrsordelaMerPrintBelt-Belts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 5, '6', 'Black', '', '2100', '2021-09-10'),
(222, 85, 28, 'COTTON POPLIN INTARSIA SHIRT', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw5be7107d/original/90_1000795-1A00963_2W030_15_CottonPoplinIntarsiaShirt-BlousesandTops-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 1, '6', 'Blue + White', '42', '14040', '2021-09-10'),
(223, 85, 29, 'STRAIGHT LEG JEANS', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwcb0dfea6/original/90_1001245-1A00909_1D100_15_StraightLegJeans-Jeans-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 2, '6', 'Blue', '27', '7320', '2021-09-10'),
(224, 85, 21, 'LA MEDUSA MEDIUM HANDBAG', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwe0341de9/original/90_DBFI039-DVIT2T_KVO41_20_LaMedusaMediumHandbag-TopHandle-versace-online-store_4_2.jpg?sw=748&sh=1050&sm=fit', 4, '6', 'Orange', '', '21600', '2021-09-10');

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
(0, 'Chili Pepper/Dark Cobalt', 1),
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
(48, 'origan', 106);

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
(86, '0976970933', 'nguyenvana', '123456'),
(87, '1921682107', 'nguyenvanduc', 'abc123'),
(88, '01231231212', 'Ronaldo', '123123'),
(89, '0987654321', 'messi', '123123');

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
(0, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411114_alternate10?$rl_df_pdp_5_7_a10$', 1),
(0, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411114_alternate1?$rl_df_pdp_5_7$', 2),
(0, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411114_alternate3?$rl_df_pdp_5_7$', 3),
(0, 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411114_alternate4?$rl_df_pdp_5_7$', 4),
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
(48, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw2d0761b4/original/90_1001650-1A01337_2B070_23_MedusaHolographicSweatshirt-Clothing-versace-online-store_0_5.jpg?sw=748&sh=1050&sm=fit', 176),
(48, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw0050b60b/original/90_1000438-1A00382_6U140_20_PaddedDenimJacket-Clothing-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 177),
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
(47, 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwfb62c90b/original/90_YHX00001-YB00365_YA03_24_ChainReactionKidsTrainers-Shoes-versace-online-store_3_4.jpg?sw=748&sh=1050&sm=fit', 201);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `id_pay` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `phone` text NOT NULL,
  `date_payment` date NOT NULL,
  `amount` text NOT NULL,
  `type_pr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `payment`
--

INSERT INTO `payment` (`id_pay`, `customer_id`, `cart_id`, `name`, `address`, `phone`, `date_payment`, `amount`, `type_pr_id`) VALUES
(324, 87, 206, 'NguyenVan Duc', 'Ha Noi', '012312312', '2021-09-10', '36000', 4),
(325, 87, 209, 'NguyenVan Duc', 'Ha Noi', '012312312', '2021-09-10', '1680', 1),
(326, 87, 207, 'NguyenVan Duc', 'Ha Noi', '012312312', '2021-09-10', '33200', 1),
(327, 87, 208, 'NguyenVan Duc', 'Ha Noi', '012312312', '2021-09-10', '390', 1),
(328, 87, 211, 'NguyenVan Duc', 'Ha Noi', '012312312', '2021-09-10', '12205', 6),
(329, 87, 210, 'NguyenVan Duc', 'Ha Noi', '012312312', '2021-09-10', '1680', 1),
(330, 87, 212, 'NguyenVan Duc', 'Ha Noi', '012312312', '2021-09-10', '4800', 6),
(331, 87, 213, 'NguyenVan Duc', 'Ha Noi', '012312312', '2021-09-10', '5300', 3),
(332, 87, 214, 'NguyenVan Duc', 'Ha Noi', '012312312', '2021-09-10', '2766', 5),
(333, 87, 215, 'NguyenVan Duc', 'Ha Noi', '012312312', '2021-09-10', '1750', 5),
(334, 85, 176, 'Hoang DinhLong', 'Ha noi', '12312312', '2021-09-10', '960', 3),
(335, 85, 177, 'Hoang DinhLong', 'Ha noi', '12312312', '2021-09-10', '1993', 4),
(336, 85, 216, 'Hoang DinhLong', 'Ha noi', '12312312', '2021-09-10', '2576', 1),
(337, 85, 217, 'Hoang DinhLong', 'Ha noi', '12312312', '2021-09-10', '890', 1),
(338, 85, 219, 'Hoang DinhLong', 'Ha noi', '12312312', '2021-09-10', '5355', 3),
(339, 85, 218, 'Hoang DinhLong', 'Ha noi', '12312312', '2021-09-10', '1680', 1),
(340, 85, 220, 'Hoang DinhLong', 'Ha noi', '12312312', '2021-03-10', '17500', 1),
(341, 85, 221, 'Hoang DinhLong', 'Ha noi', '12312312', '2021-04-10', '2100', 5),
(342, 85, 222, 'Hoang DinhLong', 'Ha noi', '12312312', '2021-02-10', '14040', 1),
(343, 85, 223, 'Hoang DinhLong', 'Ha noi', '12312312', '2021-09-10', '7320', 2),
(344, 85, 224, 'Hoang DinhLong', 'Ha noi', '12312312', '2021-09-10', '21600', 4);

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
(0, 'Logo Patchwork Fleece Hoodie', '188.00', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411114_alternate10?$rl_df_pdp_5_7_a10$', 'With its patchwork design, bandanna motifs, and chambray details, this short-sleeve hoodie achieves a vintage look that\'s purely Polo.', 1, 1),
(1, 'Serape-Print Mesh Hoodie', '368.00', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411077_alternate10?$rl_df_pdp_5_7_a10$', 'Crafted from slub cotton mesh, this hoodie features a vibrant pattern inspired by traditional serape blankets.', 1, 1),
(2, 'Classic Fit Jersey Graphic T-Shirt', '39.50', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411251_alternate10?$rl_df_pdp_5_7_a10$', 'Treated for a vintage look, this cotton T-shirt features a retro-inspired cowboy graphic.', 1, 1),
(3, 'Classic Fit Southwestern Pocket T-Shirt', '89.50', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411256_alternate10?$rl_df_pdp_5_7_a10$', 'In soft cotton jersey, this T-shirt gets a playful Polo twist with a Southwestern-inspired pocket and our logo embroidered at the hem.\r\n', 1, 1),
(4, 'PRL Surf Fleece Hoodie', '168.00', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411113_alternate10?$rl_df_pdp_5_7_a10$', 'With its faded finish and crackle-printed graphic, this cotton-blend hoodie offers the look of a timeworn favorite.', 1, 1),
(5, 'Classic Fit Jersey Graphic T-Shirt', '69.50', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411257_alternate10?$rl_df_pdp_5_7_a10$', 'With its faded finish and crackle-printed graphic, this cotton T-shirt offers the look of a timeworn favorite.', 1, 1),
(6, 'Classic Fit Utility Shirt', '198.00', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411125_alternate10?$rl_df_pdp_5_7_a10$', 'This modern utility shirt is made with recycled nylon, which helps lessen environmental impact by reducing landfill waste and the use of virgin raw materials.', 1, 1),
(7, 'Classic Fit Surf Mesh Polo Shirt', '198.00', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411075_alternate10?$rl_df_pdp_5_7_a10$', 'An American style standard since 1972, the Polo shirt has been imitated but never matched. Over the decades, Ralph Lauren has reimagined his signature style in a wide array of colors and fits, yet all retain the quality and attention to detail of the iconic original. This version features colorful graphics inspired by popular surf destinations.', 1, 1),
(8, 'Fleece Graphic Sweatshirt', '148.00', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411119_alternate10?$rl_df_pdp_5_7_a10$', 'Treated for a vintage look, this cotton-blend sweatshirt features a retro-inspired graphic that nods to Hawaii\'s surf culture.', 1, 1),
(9, 'Classic Fit Madras Western Shirt', '98.50', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411098_alternate10?$rl_df_pdp_5_7_a10$', 'Combining two pillars of Polo style, this shirt features a Western-inspired silhouette rendered in prep-centric cotton madras.', 1, 1),
(10, 'Twill Field Jacket', '498.00', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411010_alternate10?$rl_df_pdp_5_7_a10$', 'Inspired by desert surplus wares, this jacket features ventilating eyelets, reinforced elbow patches, and plenty of utility pockets.', 1, 1),
(11, 'Custom Fit Floral Linen Shirt', '125.00', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1411083_alternate10?$rl_df_pdp_5_7_a10$', 'This design\'s intricate pintucking and pocket layout nods to the classic guayabera shirt, which has a long-standing history in Latin American culture. Its lightweight, breathable linen is dyed with true indigo and makes it a comfortable choice for warm-weather days.', 1, 1),
(12, 'La Medusa Small Hobo Bag', '1518.13', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw2ee07e1e/original/90_1000802-DVIT3T_1U38V_20_LaMedusaSmallHoboBag-ShoulderBags-versace-online-store_2_0.jpg?sw=450&sh=632&sm=fit&sfrm=jpg', 'A stunning evening design with a contemporary curved silhouette, the small hobo bag is crafted in Italy from lightly grained calf leather. The striking design is a perfect companion for both day and evening looks, boasting a three-dimensional Medusa plaque - iconic décor that was discovered on the doors of the brand\'s first headquarters in Milan', 2, 4),
(13, 'La Medusa Small Hobo Bag', '1821.11', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwa2983378/original/90_1000802-DVIT3T_1P72V_20_LaMedusaSmallHoboBag-ShoulderBags-versace-online-store_2_2.jpg?sw=450&sh=632&sm=fit&sfrm=jpg', 'A stunning evening design with a contemporary curved silhouette, the small hobo bag is crafted in Italy from lightly grained calf leather. The striking design is a perfect companion for both day and evening looks, boasting a three-dimensional Medusa plaque - iconic décor that was discovered on the doors of the brand\'s first headquarters in Milan', 2, 4),
(14, 'La Medusa Medium Hobo Bag', '1993.48', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwbf7aa816/original/90_1000699-DVIT3T_1B00V_20_LaMedusaMediumHoboBag-ShoulderBags-versace-online-store_2_0.jpg?sw=450&sh=632&sm=fit&sfrm=jpg', 'A stunning evening design with a contemporary curved silhouette, the small hobo bag is crafted in Italy from lightly grained calf leather. The striking design is a perfect companion for both day and evening looks, boasting a three-dimensional Medusa plaque - iconic décor that was discovered on the doors of the brand\'s first headquarters in Milan', 2, 4),
(15, 'La Medusa Medium Hobo Bag', '1993.48', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw84200cf5/original/90_1000699-DVIT3T_1U38V_20_LaMedusaMediumHoboBag-ShoulderBags-versace-online-store_2_0.jpg?sw=450&sh=632&sm=fit&sfrm=jpg', 'A stunning evening design with a contemporary curved silhouette, the small hobo bag is crafted in Italy from lightly grained calf leather. The striking design is a perfect companion for both day and evening looks, boasting a three-dimensional Medusa plaque - iconic décor that was discovered on the doors of the brand\'s first headquarters in Milan', 2, 4),
(16, 'Baroccoflage Print Linen Shirt', '1011.51', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw963688e6/original/90_1000920-1A00628_5B020_10_BaroccoflagePrintLinenShirt-Shirts-versace-online-store_0_2.jpg?sw=450&sh=632&sm=fit&sfrm=jpg', 'An elevated warm weather essential, this linen shirt features the Baroccoflage print - a play on the classic Barocco and the notion of camouflage, the new design reimagines both concepts and places them in a new, fantastical Versace setting. ', 1, 1),
(17, 'Trigreca Sneakers', '1071.01', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw31bc95b6/original/90_DSU8094-1A00838_6B370_20_TrigrecaTrainers-TrigrecaSneakers-versace-online-store_0_0.jpg?sw=450&sh=632&sm=fit&sfrm=jpg', 'The latest addition to Fashion\'s coveted sneaker family, the Trigreca bring innovation to the brand\'s ever-evolving aesthetic. Referencing Versace DNA, the Trigreca feature the Barocco print and three prominent Greca executions: the midsole lateral, medial, and the bottom of the outsole. This combination creates the \"Greca Cushioning System\". In a subtle nod to Milan, the upper has a discrete print of the city\'s coordinates', 1, 3),
(18, 'Greca Backpack', '2441.69', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw7f1b75e5/original/90_DFZ8519-DNYGR3_D41E_20_GrecaBackpack-Backpacks-versace-online-store_2_2.jpg?sw=450&sh=632&sm=fit&sfrm=jpg', 'Bold yet practical, this roomy backpack features multiple front pockets as well as padded internal compartments that safeguard your laptop or tablet. Fit for a busy man on-the-go, the style is embellished with a Greca pattern trim', 1, 6),
(19, 'La Medusa Leather Belt', '461.23', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw36142dbc/original/90_DCU4747-DVTP1_K41NV_20_LaMedusaLeatherBelt-Belts-versace-online-store_0_3.jpg?sw=450&sh=632&sm=fit&sfrm=jpg', 'Crafted from supple calf leather, this sleek belt is embellished with a three-dimensional Medusa buckle.', 1, 5),
(20, 'LA MEDUSA MEDIUM HANDBAG', '3600', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwd7b86a3e/original/90_DBFI039-DVIT2T_1K26V_20_LaMedusaMediumHandbag-TopHandle-versace-online-store_3_0.jpg?sw=748&sh=1050&sm=fit', 'Crafted in Italy from premium leather, Fashion\'s latest handbag is adorned with a Medusa plaque – the same décor that was discovered on the doors of the brand\'s first headquarters in Milan. The slouchy silhouette can be styled on the wrist or across the shoulder, featuring two detachable shoulderstraps: one leather and one chain', 2, 4),
(21, 'LA MEDUSA MEDIUM HANDBAG', '3600', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwe0341de9/original/90_DBFI039-DVIT2T_KVO41_20_LaMedusaMediumHandbag-TopHandle-versace-online-store_4_2.jpg?sw=748&sh=1050&sm=fit', 'Crafted in Italy from premium leather, Fashion\'s latest handbag is adorned with a Medusa plaque – the same décor that was discovered on the doors of the brand\'s first headquarters in Milan. The slouchy silhouette can be styled on the wrist or across the shoulder, featuring two detachable shoulderstraps: one leather and one chain', 2, 4),
(22, 'WOOL & NYLON JACKET', '3320', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw9dd208d7/original/90_1001244-1A00901_2U340_10_WoolandNylonJacket-JacketsandCoats-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 'A very Versace twist on a classic bomber jacket, this style is refreshed with sporty, nylon accents.', 2, 1),
(23, 'LA MEDUSA SLING-BACK PUMPS', '1520', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw464af0d0/original/90_1001207-DVT2P_1B090_20_LaMedusaSling-BackPumps-Pumps-versace-online-store_0_2.jpg?sw=850&sh=1200&sm=fit', 'Crafted in supple calf leather, these sophisticated slingbacks elevate looks from the AM to PIM. The sleek pointed toe silhouette is adorned with a Medusa plaque – the same décor found on the doors of the brand\'s first headquarters in Milan.', 2, 3),
(24, 'WOOL & NYLON JACKET', '3500', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwd355f3c0/original/90_1001027-1A00678_2U540_10_WoolandNylonJacket-JacketsandCoats-versace-online-store_1_2.jpg?sw=748&sh=1050&sm=fit', 'A contemporary twist on a timeless design, this virgin wool jacket is refreshed with sporty, nylon pockets and sleeves.', 1, 1),
(25, 'GRECA SNEAKERS', '960', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwb53cb587/original/90_DSU8404-1A00775_2W340_20_GrecaTrainers-GrecaSneakers-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 'Crafted from supple leather, the Greca sneakers are characterized by understated, clean lines and the graphic Greca pattern on the midsole. The low top design is embellished with boldly printed Greca accents. ', 1, 3),
(26, 'LA MEDUSA NYLON BACKPACK', '2400', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw386a663f/original/90_1000733-DNY8ME_D41NP_20_LaMedusaNylonBackpack-Backpacks-versace-online-store_1_2.jpg?sw=850&sh=1200&sm=fit', 'A roomy accessory that complements both on- and off-duty looks, this versatile backpack is adorned with a Medusa plaque – the same décor that was discovered on the doors of the brand\'s first headquarters in Milan. Equipped with three outer pouches that fit your everyday essentials, the spacious inner also features a padded laptop or tablet pocket.', 1, 6),
(27, 'WOOL & NYLON PEACOAT', '4680', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwd0cfd006/original/90_1001243-1A00901_A1382_10_WoolandNylonPeacoat-JacketsandCoats-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 'A contemporary twist on a timeless design, this virgin wool peacoat is refreshed with sporty, nylon pockets. The double-breasted design is enriched with heritage Medusa buttons', 2, 1),
(28, 'COTTON POPLIN INTARSIA SHIRT', '2340', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw59222f61/original/90_1000795-1A00963_2W030_10_CottonPoplinIntarsiaShirt-BlousesandTops-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 'Crafted from pure cotton poplin, this oversized shirt presents a very Versace twist on workwear. Featuring an intarsia of striped and Gingham patterns, the design is further adorned with golden Medusa buttons.', 2, 1),
(29, 'STRAIGHT LEG JEANS', '1220', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwce5a9708/original/90_1001245-1A00909_1D100_10_StraightLegJeans-Jeans-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 'Timeless, yet contemporary, these dark wash jeans feature an oversized, straight leg silhouette. Style with pumps and a voluminous jacket for a sophisticated look. ', 2, 2),
(30, 'DENIM A-LINE SKIRT', '1160', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw09b28576/original/90_1001246-1A00909_1D100_10_DenimA-LineSkirt-DenimSkirts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 'A versatile design, these dark denim skirt features a timeless A-line silhouette. Easily dressed up or down, the skirt transitions seamlessly from the office to happy hour. ', 2, 2),
(31, 'LA MEDUSA TRÉSOR DE LA MER PRINT BELT', '350', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw1410dc40/original/90_DCDD442-D2VSTM_5P08V_20_LaMedusaTrsordelaMerPrintBelt-Belts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 'Crafted in supple calf leather, this classic belt features a three-dimensional Medusa buckle. The statement accessory boasts the Trésor de la Mer print, a heritage design that depicts an array of marine life.', 1, 5),
(32, 'GRECA RIBBON BELT', '290', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwad00a306/original/90_DCU8577-DNAS68_D41E_20_GrecaRibbonBelt-Belts-versace-online-store_1_2.jpg?sw=748&sh=1050&sm=fit', 'Perfectly relaxed, this ribbon belt perfectly complements off-duty staples. The casual accessory features an iconic Greca pattern.', 1, 5),
(33, 'GRECA RIBBON BELT', '230', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwa72a5a32/original/90_DCU8440-DNASGV_D41VP_20_GrecaRibbonBelt-Belts-versace-online-store_1_1.jpg?sw=748&sh=1050&sm=fit', 'Perfectly relaxed, this ribbon belt complements off-duty staples or dresses down high-rise tailoring. The casual accessory features an iconic Greca pattern', 1, 5),
(34, 'CLASSIC MEDUSA LEATHER BELT', '680', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw646d4973/original/90_DCU4806-DVTP1_D41OH_20_ClassicMedusaLeatherBelt-Belts-versace-online-store_10_13.jpg?sw=748&sh=1050&sm=fit', 'Crafted in Italy from soft calf leather, this belt has a gold-tone round buckle featuring the Medusa.', 1, 5),
(35, 'LA MEDUSA LEATHER BELT', '430', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw25d6ea45/original/90_DCDI141-DVTNM_1P65V_20_LaMedusaLeatherBelt-Belts-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 'A very Versace finishing touch, this supple leather belt is enriched with a golden Medusa charm - the same silhouette of the mythical woman that is found on the doors of the brand\'s first Milanese headquarters.', 2, 5),
(36, 'GRECA SUEDE SNEAKERS', '880', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw931c21a0/original/90_DSU8404-1A00784_1B000_20_GrecaSuedeTrainers-GrecaSneakers-versace-online-store_0_2.jpg?sw=748&sh=1050&sm=fit', 'Crafted in soft suede, the low-top Greca sneakers are characterized by understated, clean lines and the graphic Greca pattern on the midsole', 1, 3),
(37, 'GRECA LOGO SNEAKERS\r\nSALE PRICE', '1060', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw7263ec76/original/90_DSU8404-DV51G_D0141_20_GrecaLogoTrainers-GrecaSneakers-versace-online-store_0_5.jpg?sw=748&sh=1050&sm=fit', 'Versace\'s latest sneaker silhouette, Greca is characterized by understated, clean lines and the graphic Greca pattern on the midsole. The supple leather design features a lateral logo, while the outsole hides a Medusa on the heel.', 1, 3),
(38, 'Thorton Allover-Pony Canvas Sneaker', '75.00', 'https://www.rlmedia.io/is/image/PoloGSI/s7-1403798_lifestyle?$rl_df_pdp_5_7_lif$', 'Made with recycled cotton, this low-top canvas sneaker is embroidered all over with Ralph Lauren\'s signature Pony and features an exclusive outsole patterned after nautical rope.', 1, 3),
(39, 'MEDUSA HOLOGRAPHIC SWEATSHIRT', '300', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwa946a73b/original/90_1001650-1A01337_2B070_20_MedusaHolographicSweatshirt-Clothing-versace-online-store_0_5.jpg?sw=748&sh=1050&sm=fit', 'Crafted from soft stretch cotton, this comfy sweatshirt is embellished with a holographic Medusa print.', 3, 1),
(40, 'BAROCCOFLAGE KIDS PRINT PANTS', '500', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwf521c30f/original/90_1000038-1A01396_5B020_20_BaroccoflageKidsPrintTrousers-Clothing-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 'Crafted from soft stretch cotton, this comfy sweatshirt is embellished with a holographic Medusa print.', 3, 1),
(41, 'MEDUSA STUD LAMINATED ROUND BAG', '1000', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwd683e9d7/original/90_1000497-1A01268_1E01V_20_MedusaStudLaminatedRoundBag-Accessories-versace-online-store_0_3.jpg?sw=748&sh=1050&sm=fit', 'A fun style for warm weather, these comfy, laminated sandals are embellished with gold-tone Medusa studs.', 3, 4),
(42, 'MEDUSA BACKPACK', '1022', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw160368a0/original/90_1001629-1A01276_2L050_20_MedusaBackpack-Accessories-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 'Crafted from soft stretch cotton, this comfy sweatshirt is embellished with a holographic Medusa print.', 3, 6),
(43, 'MEDUSA STUD SANDALS', '500', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw263a4ae9/original/90_1000509-1A00463_1E01V_20_MedusaStudSandals-Shoes-versace-online-store_0_1.jpg?sw=748&sh=1050&sm=fit', 'A fun style for warm weather, these comfy, laminated sandals are embellished with gold-tone Medusa studs.', 3, 3),
(44, 'ARGYLE KNIT SWEATER', '600', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwf6607ea6/original/90_1001670-1A01308_2O170_20_ArgyleKnitJumper-Clothing-versace-online-store_0_3.jpg?sw=748&sh=1050&sm=fit', 'Fun and playful - this comfy, high neck sweater is enriched with a printed logo motif.', 3, 1),
(45, 'GRECA JEANS', '700', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwe7ebb331/original/90_1001676-1A01374_6U140_20_GrecaJeans-Clothing-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 'Fun and playful, this jacket is designed for future fashion icons. The denim style has a unique twist - the jacket features a layer of padding.', 3, 2),
(46, 'LA MEDUSA KIDS BACKPACK', '1000', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dwe38ac69f/original/90_1001629-1A01275_2U530_20_LaMedusaKidsBackpack-Accessories-versace-online-store_0_1.jpg?sw=748&sh=1050&sm=fit', 'Fun and playful, this jacket is designed for future fashion icons. The denim style has a unique twist - the jacket features a layer of padding.', 3, 6),
(47, 'CHAIN REACTION KIDS SNEAKERS', '1022', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dweb113c5b/original/90_YHX00001-YB00365_YA03_20_ChainReactionKidsTrainers-Shoes-versace-online-store_3_4.jpg?sw=748&sh=1050&sm=fit', 'Crafted from soft stretch cotton, this comfy sweatshirt is embellished with a holographic Medusa print.', 3, 3),
(48, 'PADDED DENIM JACKET', '1500', 'https://www.versace.com/dw/image/v2/ABAO_PRD/on/demandware.static/-/Sites-ver-master-catalog/default/dw0050b60b/original/90_1000438-1A00382_6U140_20_PaddedDenimJacket-Clothing-versace-online-store_0_0.jpg?sw=748&sh=1050&sm=fit', 'Fun and playful, this jacket is designed for future fashion icons. The denim style has a unique twist - the jacket features a layer of padding.', 3, 3);

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
(0, 1, 'XS'),
(0, 2, 'M'),
(0, 3, 'L'),
(0, 4, 'XL'),
(0, 5, 'XXL'),
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
(48, 138, '37');

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
(1, 'Shirt'),
(2, 'Trousers'),
(3, 'Shoes'),
(4, 'Handbag'),
(5, 'Belt'),
(6, 'Backpack');

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
  ADD PRIMARY KEY (`id_pay`),
  ADD KEY `id_cart` (`cart_id`);

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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT cho bảng `color_id`
--
ALTER TABLE `color_id`
  MODIFY `id_color` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `image_id`
--
ALTER TABLE `image_id`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `id_pay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `size_id`
--
ALTER TABLE `size_id`
  MODIFY `id_size` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

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
-- Các ràng buộc cho bảng `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id_cart`) ON DELETE CASCADE ON UPDATE CASCADE;

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
