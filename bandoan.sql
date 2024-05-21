-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 17, 2024 lúc 09:58 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bandoan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `Id` int(11) NOT NULL,
  `HinhAnh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`Id`, `HinhAnh`) VALUES
(3, 'img/banners/anvat.jpg'),
(4, 'img/banners/oc-xao-sa-ot.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Đồ Nướng'),
(2, 'Đồ Chiên'),
(3, 'Hoa Quả'),
(4, 'Đồ Uống');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `NgayLap` datetime NOT NULL,
  `NguoiNhan` varchar(50) NOT NULL,
  `SDT` varchar(20) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `PhuongThucTT` varchar(20) NOT NULL,
  `TongTien` float NOT NULL,
  `TrangThai` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(100) NOT NULL,
  `LoaiKM` varchar(20) NOT NULL,
  `GiaTriKM` float(11,0) NOT NULL,
  `NgayBD` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `LoaiKM`, `GiaTriKM`, `NgayBD`, `TrangThai`) VALUES
(1, 'Không khuyến mãi', 'Nothing', 0, '2024-04-08 00:00:00', 1),
(2, 'Giảm giá', 'GiamGia', 500000, '2024-04-01 00:00:00', 1),
(3, 'Giá rẻ online', 'GiaReOnline', 650000, '2024-04-01 00:00:00', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLSP` int(11) NOT NULL,
  `TenLSP` varchar(70) NOT NULL,
  `HinhAnh` varchar(200) NOT NULL,
  `Mota` varchar(200) NOT NULL,
  `MaDM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLSP`, `TenLSP`, `HinhAnh`, `Mota`, `MaDM`) VALUES
(1, 'Bánh Mỳ', 'banhmy.png', '', 1),
(46, 'Hoa Quả Dầm', 'tratraicay.png', '', 3),
(47, 'Trà Sữa', 'nuocmia-12.webp', '', 4),
(48, 'Thịt Nướng', 'canhganuong.jpg', '', 1),
(49, 'Hải Sản', 'banhgoi.jpg', '', 1),
(52, 'Xiên Bẩn', 'pho-mai-que.webp', '', 2),
(53, 'Bánh Chiên', 'banhgoi.jpg', '', 2),
(54, 'Gà Chiên', 'changanuong.jpg', '', 2),
(57, 'Hoa Quả Lắc', 'tratraicay.png', '', 3),
(61, 'Nước Ngọt', 'nuocsau.jpg', '', 4),
(81, 'Hoa Quả Sâý', 'hoaquadam.png', '', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaND` int(11) NOT NULL,
  `Ho` varchar(20) NOT NULL,
  `Ten` varchar(20) NOT NULL,
  `GioiTinh` varchar(10) NOT NULL,
  `SDT` varchar(20) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `DiaChi` varchar(200) NOT NULL,
  `TaiKhoan` varchar(100) NOT NULL,
  `MatKhau` varchar(100) NOT NULL,
  `MaQuyen` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `Ho`, `Ten`, `GioiTinh`, `SDT`, `Email`, `DiaChi`, `TaiKhoan`, `MatKhau`, `MaQuyen`, `TrangThai`) VALUES
(14, 'admin', 'admin', 'Nam', '0123456789', 'admin@gmail.com', 'long tran', 'admin', '25d55ad283aa400af464c76d713c07ad', 2, 1),
(15, 'luong van anh', 'Nhân viên', 'Nam', '1234567890', 'luongvananh@gmail.com', '', 'nhanvien', '25d55ad283aa400af464c76d713c07ad', 3, 1),
(16, 'Luong', 'Van Anh', 'Nam', '0123456789', 'vananh@gmail.com', '', 'luongvananh', '25d55ad283aa400af464c76d713c07ad', 2, 1),
(17, 'luong', 'anh', 'Nam', '0123456789', 'vananh60k1@gmail.com', '', 'luonganh', '25d55ad283aa400af464c76d713c07ad', 3, 1),
(18, 'Luong', 'Van Anh', 'Nam', '0123456789', 'luongvananh2k1@gmail.com', 'Nghệ An', 'vananh', '25d55ad283aa400af464c76d713c07ad', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` int(11) NOT NULL,
  `TenQuyen` varchar(20) NOT NULL,
  `ChiTietQuyen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `ChiTietQuyen`) VALUES
(1, 'Customer', 'Khách hàng có tài khoản'),
(2, 'Admin', 'Quản trị viên'),
(3, 'Personnel', 'Nhân Viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `MaLSP` int(11) NOT NULL,
  `MaDM` int(11) NOT NULL,
  `TenSP` varchar(70) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `SoLuong` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `HinhAnh1` varchar(200) NOT NULL,
  `HinhAnh2` varchar(255) DEFAULT NULL,
  `HinhAnh3` varchar(255) DEFAULT NULL,
  `MaKM` int(11) NOT NULL,
  `Tensanpham` varchar(50) DEFAULT NULL,
  `Tinhtrang` varchar(50) DEFAULT NULL,
  `Kichthuoc` varchar(50) DEFAULT NULL,
  `Trongluong` varchar(50) DEFAULT NULL,
  `Chatlieu` varchar(50) DEFAULT NULL,
  `Soluongg` varchar(50) DEFAULT NULL,
  `Mausac` varchar(50) DEFAULT NULL,
  `Donvitinh` varchar(50) DEFAULT NULL,
  `Noisanxuat` varchar(50) DEFAULT NULL,
  `SoSao` int(11) NOT NULL,
  `SoDanhGia` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `MoTa` text NOT NULL,
  `ThoiGian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaLSP`, `MaDM`, `TenSP`, `DonGia`, `SoLuong`, `HinhAnh1`, `HinhAnh2`, `HinhAnh3`, `MaKM`, `Tensanpham`, `Tinhtrang`, `Kichthuoc`, `Trongluong`, `Chatlieu`, `Soluongg`, `Mausac`, `Donvitinh`, `Noisanxuat`, `SoSao`, `SoDanhGia`, `TrangThai`, `MoTa`, `ThoiGian`) VALUES
(181, 1, 1, 'Bánh mỳ nướng muối ớt', 15000, 100, 'img/products/lam-banh-mi-nuong-muoi-ot-gion-thom-nuc-mui-202110301055149823.jpg', '/img/products/lam-banh-mi-nuong-muoi-ot-gion-thom-nuc-mui-202110301055149823.jpg', '/img/products/lam-banh-mi-nuong-muoi-ot-gion-thom-nuc-mui-202110301055149823.jpg', 1, 'Bánh mỳ nướng muối ớt', 'Còn hàng', '12 cm', '100', '', '100', 'vàng', 'cm', 'Việt Nam', 0, 0, 1, '<p>Bánh mỳ siêu ngon, siêu cay</p>', '2024-05-18 02:12:01'),
(182, 1, 1, 'Bánh mỳ nướng tam giác', 10000, 100, 'img/products/cach-lam-banh-mi-tam-giac-tho-nhi-ky-doner-kebab-thumb-620x620.jpg', '/img/products/cach-lam-banh-mi-tam-giac-tho-nhi-ky-doner-kebab-thumb-620x620.jpg', '/img/products/cach-lam-banh-mi-tam-giac-tho-nhi-ky-doner-kebab-thumb-620x620.jpg', 1, 'Bánh mỳ nướng tam giác', 'còn hàng', '12', '100', '', '100', 'vàng', 'cm', 'việt nam', 0, 0, 1, '<p>Bánh mỳ hình tam giác, siêu ngon</p>', '2024-05-18 02:13:58'),
(183, 1, 1, 'Bánh mỳ nướng bơ', 15000, 100, 'img/products/huong-dan-cach-lam-banh-mi-bo-nuong-mat-ong-nhanh-gon-cho-bua-sang-202109082031195148.jpg', '/img/products/huong-dan-cach-lam-banh-mi-bo-nuong-mat-ong-nhanh-gon-cho-bua-sang-202109082031195148.jpg', '/img/products/huong-dan-cach-lam-banh-mi-bo-nuong-mat-ong-nhanh-gon-cho-bua-sang-202109082031195148.jpg', 1, 'Bánh mỳ nướng bơ', 'mới ra lò', '15', '100', '', '100', 'vàng', 'cm', 'việt nam', 0, 0, 1, '<p>Bánh mỳ nướng tẩm bơ siêu ngon, siêu bá cháy</p>', '2024-05-18 02:16:35'),
(184, 46, 3, 'Xoài dầm', 30000, 100, 'img/products/xoai-chua-dam_s1121.png', '/img/products/xoai-chua-dam_s1121.png', '/img/products/xoai-chua-dam_s1121.png', 1, 'Xoài dầm', 'còn hàng', '30', '300', '', '100', 'xanh', 'đĩa', 'việt nam', 0, 0, 1, '<p>Xoài dầm tuyệt vời, nhập khẩu từ campuchia</p>', '2024-05-18 02:23:23'),
(185, 46, 3, 'Cóc dầm', 50000, 100, 'img/products/coc-dam_s1147.jpg', '/img/products/coc-dam_s1147.jpg', '/img/products/coc-dam_s1147.jpg', 1, 'Cóc dầm', 'còn hàng', '20', '300', '', '100', 'xanh', 'đĩa', 'việt nam', 0, 0, 1, '<p>Cóc siêu cay, siêu ngon</p>', '2024-05-18 02:23:37'),
(186, 47, 4, 'Trà sữa sô cô la', 50000, 100, 'img/products/tra-sua-socola-chuoi.webp', '/img/products/tra-sua-socola-chuoi.webp', '/img/products/tra-sua-socola-chuoi.webp', 1, 'Trà sữa sô cô la', 'còn hàng', '30', '200', '', '100', 'nâu', 'ly', 'việt nam', 0, 0, 1, '<p>Trà sữa uống siêu ngon, vị sô cô la</p>', '2024-05-18 02:23:02'),
(187, 48, 1, 'Gà nướng', 150000, 100, 'img/products/Buoc-8-8-4440-1644565411.jpg', '/img/products/Buoc-8-8-4440-1644565411.jpg', '/img/products/Buoc-8-8-4440-1644565411.jpg', 1, 'Gà nướng', 'còn hàng', '300', '500', '', '100', 'đỏ', 'con', 'việt nam', 0, 0, 1, '<p>Gà nướng than Italya, nhập khẩu nguyên con</p>', '2024-05-18 02:25:50'),
(188, 52, 2, 'Xiên cá', 5000, 200, 'img/products/Ca-vien-chien-bao-nhieu-calo-2.png', '/img/products/Ca-vien-chien-bao-nhieu-calo-2.png', '/img/products/Ca-vien-chien-bao-nhieu-calo-2.png', 1, 'Gà nướng', 'còn hàng', '15', '200', '', '200', 'trắng', 'que', 'việt nam', 0, 0, 1, '<p>Xiên cá siêu ngon, ăn phát muốn ăn lần hai</p>', '2024-05-18 02:28:38'),
(189, 53, 2, 'Bánh khoai chiên', 5000, 200, 'img/products/Untitled-1-1200x676-9.jpg', '/img/products/Untitled-1-1200x676-9.jpg', '/img/products/Untitled-1-1200x676-9.jpg', 1, 'Bánh khoai chiên', 'còn hàng', '300', '200', '', '1000', 'vàng', 'cái', 'việt nam', 0, 0, 1, 'Bánh khoai to, tròn, nhiều nước, bổ sung vitamin d,e,f', '2024-05-18 02:31:30'),
(190, 54, 2, 'Đùi gà chiên', 100000, 1000, 'img/products/bi-quyet-lam-dui-ga-chien-bo-thom-nuc-mui-thit-ga-thom-mem-hap-dan-202201101313167513.jpg', '/img/products/bi-quyet-lam-dui-ga-chien-bo-thom-nuc-mui-thit-ga-thom-mem-hap-dan-202201101313167513.jpg', '/img/products/bi-quyet-lam-dui-ga-chien-bo-thom-nuc-mui-thit-ga-thom-mem-hap-dan-202201101313167513.jpg', 1, 'Đùi gà chiên', 'còn hàng', '400', '300', '', '100', 'vàng', 'cái', 'việt nam', 0, 0, 1, '<p>Đùi gà hiberico nhập khẩu nguyên chiếc từ anh pháp</p>', '2024-05-18 02:33:37'),
(191, 57, 3, 'Xoài lắc', 15000, 200, 'img/products/image-cach-lam-mon-xoai-lac-muoi-tom-165198663797600.jpg', '/img/products/image-cach-lam-mon-xoai-lac-muoi-tom-165198663797600.jpg', '/img/products/image-cach-lam-mon-xoai-lac-muoi-tom-165198663797600.jpg', 1, 'Xoài lắc', 'còn hàng', '200', '200', '', '150', 'xanh', 'đĩa', 'việt nam', 0, 0, 1, '<p>Xoài lắc theo công nghệ nga, nhập khẩu nguyên quả từ anh quốc</p>', '2024-05-18 02:35:47'),
(192, 81, 3, 'Chuối sấy', 50000, 200, 'img/products/7fc9f7150b7459ef325d70b7fe30a7fe.jpg_720x720q80.jpg', '/img/products/7fc9f7150b7459ef325d70b7fe30a7fe.jpg_720x720q80.jpg', '/img/products/7fc9f7150b7459ef325d70b7fe30a7fe.jpg_720x720q80.jpg', 1, 'Chuối sấy', 'còn hàng', '50', '300', '', 'đĩa', 'nâu', 'đĩa', 'việt nam', 0, 0, 1, '<p>Chuối dài, to, được sấy theo tiêu chuẩn cao cấp của Nga</p>', '2024-05-18 02:38:14'),
(193, 61, 4, 'Coca cola', 15000, 1000, 'img/products/moi-ngay-uong-1-lon-coca-cola-co-sao-khong-nen-uong-bao-nhieu-la-tot-202112300854488863.jpg', '/img/products/moi-ngay-uong-1-lon-coca-cola-co-sao-khong-nen-uong-bao-nhieu-la-tot-202112300854488863.jpg', '/img/products/moi-ngay-uong-1-lon-coca-cola-co-sao-khong-nen-uong-bao-nhieu-la-tot-202112300854488863.jpg', 1, 'Coca cola', 'còn hàng', '20', '15', '', '1000', 'đỏ', 'lon', 'việt nam', 0, 0, 1, '<p>Coca cola uống ngon nhức nách</p>', '2024-05-18 02:40:42'),
(194, 49, 1, 'Cua Alasaka', 10000000, 100, 'img/products/cua-hoang-de-alaska.jpg', '/img/products/cua-hoang-de-alaska.jpg', '/img/products/cua-hoang-de-alaska.jpg', 1, 'Cua Alasaka', 'còn hàng', '500', '5000', '', '100', 'Đỏ', 'con', 'Việt Nam', 0, 0, 1, '<p>Cua siêu to, siêu khổng lồ</p>', '2024-05-18 02:43:15');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MaHD` (`MaHD`) USING BTREE,
  ADD KEY `MaSP` (`MaSP`) USING BTREE;

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`) USING BTREE;

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`) USING BTREE,
  ADD KEY `MaKH` (`MaND`) USING BTREE;

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`) USING BTREE;

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLSP`) USING BTREE,
  ADD KEY `MaDM` (`MaDM`) USING BTREE,
  ADD KEY `MaLSP` (`MaLSP`,`MaDM`) USING BTREE,
  ADD KEY `MaLSP_2` (`MaLSP`) USING BTREE;

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaND`) USING BTREE,
  ADD KEY `MaQuyen` (`MaQuyen`) USING BTREE;

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`) USING BTREE;

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`) USING BTREE,
  ADD KEY `LoaiSP` (`MaLSP`) USING BTREE,
  ADD KEY `MaKM` (`MaKM`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `MaND` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `MaQuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`);

--
-- Các ràng buộc cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD CONSTRAINT `MaDM` FOREIGN KEY (`MaDM`) REFERENCES `danhmuc` (`MaDM`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`MaLSP`) REFERENCES `loaisanpham` (`MaLSP`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
