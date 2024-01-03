-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th8 28, 2022 lúc 12:12 AM
-- Phiên bản máy phục vụ: 10.3.35-MariaDB-log-cll-lve
-- Phiên bản PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btshxuct_abc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bangchung`
--

CREATE TABLE `bangchung` (
  `id` int(11) NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bangchung`
--

INSERT INTO `bangchung` (`id`, `code`, `image`) VALUES
(1, 'le-cong-quyen', '/storage/BC_2786.png'),
(2, 'le-cong-quyen', '/storage/BC_0253.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `code` varchar(32) DEFAULT NULL,
  `username` text NOT NULL,
  `sdt` text DEFAULT NULL,
  `id_fb` text DEFAULT NULL,
  `website` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `dich_vu` text DEFAULT NULL,
  `mo_ta` text DEFAULT NULL,
  `money` text DEFAULT NULL,
  `gmail` text DEFAULT NULL,
  `ngan_hang` text DEFAULT NULL,
  `vi_momo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `cards`
--

INSERT INTO `cards` (`id`, `code`, `username`, `sdt`, `id_fb`, `website`, `dich_vu`, `mo_ta`, `money`, `gmail`, `ngan_hang`, `vi_momo`) VALUES
(1, 'pham-hoang-tuan', 'PHẠM HOÀNG TUAN', '0812665001', '100039812360702', 'https://tuanori.vn/', 'Thiết kế website', '<p>Thiết kế website uy tín</p>', '100000000', NULL, '259876543210', '0812665001');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `code`) VALUES
(1, 'Thiết kế website');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `site_domain` text DEFAULT NULL,
  `site_logo` text DEFAULT NULL,
  `site_tenweb` text DEFAULT NULL,
  `site_mota` text DEFAULT NULL,
  `facebook` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `sdt_admin` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `modal` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`id`, `site_domain`, `site_logo`, `site_tenweb`, `site_mota`, `facebook`, `sdt_admin`, `modal`) VALUES
(1, '/', 'https://i.imgur.com/hdNtk6g.jpg', 'TUANORI.VN', 'adminvn.trumsource.com | nơi tố các những kẻ lừa đảo đang lộng hành trên mạng xã hội', NULL, '113', '<h2 style=\"text-align: center;\"><font color=\"#e74c3c\"><span style=\"font-size: 22px;\"><b>WEBSITE ADMIN</b></span></font></h2>\r\n<h3 style=\"text-align: center;\">\r\n    <span style=\"font-size: 18px;\">\r\n        Không BH cho các DV<strong> <s>“Vi Phạm Pháp Luật”.</s></strong>\r\n    </span>\r\n</h3>\r\n<h3 style=\"text-align: center;\"><span style=\"font-size: 16px;\">&nbsp;Nếu giao dịch của bạn là hợp pháp&nbsp;</span></h3>\r\n<p style=\"text-align: center;\">\r\n    Ấn<span style=\"color: #e74c3c;\"> </span><strong><span style=\"color: #e74c3c;\">“Check Mess”</span> </strong>để Inbox với <strong>Admin</strong>\r\n</p>\r\n<p style=\"text-align: center;\">\r\n    <span style=\"font-size: 16px;\">\r\n        Lưu ý<strong>&nbsp;<span style=\"color: #e74c3c;\">“Nội Dung Chuyển Khoản”</span>&nbsp;</strong>để tránh bị rửa tiền\r\n    </span>\r\n</p>\r\n<p style=\"text-align: center;\">\r\n    <span style=\"font-size: 14px;\">Mua code liên hệ zalo : <a href=\"https://zalo.me/0812665001\" target=\"_blank\">0812665001</a></span></p>\r\n<p style=\"text-align: center;\">\r\n    &nbsp;\r\n    <a href=\"#\"><img alt=\"DMCA.com Protection Status\" src=\"https://images.dmca.com/Badges/dmca-badge-w150-5x1-10.png\"></a>\r\n</p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `ly_do` text DEFAULT NULL,
  `status` varchar(32) NOT NULL,
  `sdt` text DEFAULT NULL,
  `ngan_hang` text DEFAULT NULL,
  `stk` text DEFAULT NULL,
  `hoten_np` text DEFAULT NULL,
  `sdt_np` text DEFAULT NULL,
  `code` text DEFAULT NULL,
  `view` varchar(225) DEFAULT NULL,
  `ngay` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `ticket`
--

INSERT INTO `ticket` (`id`, `username`, `ly_do`, `status`, `sdt`, `ngan_hang`, `stk`, `hoten_np`, `sdt_np`, `code`, `view`, `ngay`) VALUES
(1, 'Lê Công Quyền', 'scam', 'scam', '0359177534', 'THESIEURE', '0359177534', 'PHAM HOANG TUAN', '0812665001', 'le-cong-quyen', '4', '27-08-2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `level` varchar(32) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `code`, `username`, `password`, `level`) VALUES
(1, 'ABCXYZ', 'admin', 'admin', '1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bangchung`
--
ALTER TABLE `bangchung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bangchung`
--
ALTER TABLE `bangchung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
