-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 15, 2020 lúc 02:43 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id9396505_thuongmaidientu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiecdonhang`
--

CREATE TABLE `chitiecdonhang` (
  `id` int(11) NOT NULL,
  `madonhang` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `soluongsanpham` int(11) NOT NULL,
  `tientungsanpham` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitiecdonhang`
--

INSERT INTO `chitiecdonhang` (`id`, `madonhang`, `masanpham`, `soluongsanpham`, `tientungsanpham`) VALUES
(28, 30, 1, 2, 10800000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `idkhachhang` int(11) DEFAULT NULL,
  `TONGTIEN` float DEFAULT NULL,
  `NgayThanhToan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `idkhachhang`, `TONGTIEN`, `NgayThanhToan`) VALUES
(30, 16, 10800000, '2020-07-14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `Id` int(11) NOT NULL,
  `TenLoaiSanPham` varchar(200) NOT NULL,
  `hinhanhloaisanpham` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`Id`, `TenLoaiSanPham`, `hinhanhloaisanpham`) VALUES
(1, 'Điện Thoại', 'https://image.flaticon.com/icons/png/512/2467/2467834.png'),
(2, 'Laptop', 'https://image.flaticon.com/icons/png/512/689/689314.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitaikhoan`
--

CREATE TABLE `loaitaikhoan` (
  `STT` int(11) NOT NULL,
  `TenLoai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaitaikhoan`
--

INSERT INTO `loaitaikhoan` (`STT`, `TenLoai`) VALUES
(1, 'Người Quản Trị'),
(2, 'Khách Hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `giasanpham` int(15) NOT NULL,
  `hinhanhsanpham` varchar(2000) NOT NULL,
  `motasanpham` varchar(1000) NOT NULL,
  `idsanpham` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `giasanpham`, `hinhanhsanpham`, `motasanpham`, `idsanpham`) VALUES
(1, 'Huawei Y9 2019', 5400000, 'https://cdn.tgdd.vn/Products/Images/42/192313/huawei-y9-2019-blue-600x600.jpg', 'Màn hình \"tai thỏ\" FullView kích thước lớn.Huawei Y9 (2019) mang trong mình tới 4 camera với camera kép phía trước độ phân giải 16 MP + 2 MP và camera kép phía sau là 13 MP + 2 MP, cả hai cụm camera đều tích hợp với công nghệ chụp ảnh AI .Công nghệ nhận diện vân tay 4.0\r\n', 1),
(2, 'Huawei Mate 20 Pro', 21990000, 'https://cdn.tgdd.vn/Products/Images/42/188963/huawei-mate-20-pro-tim-400x460.png', 'Huawei Mate 20 Pro được trang bị một không gian hiển thị rộng rãi có kích thước lên đến 6.39 inch đi kèm độ phân giải Quad HD+ (2K+) siêu nét.-Hiệu năng hàng đầu hiện nay.-6 GB RAM và 128 GB bộ nhớ trong đi kèm giúp bạn thỏa sức chạy đa nhiệm hay lưu trữ game và ứng dụng mà không cần lo lắng', 1),
(3, 'Samsung Galaxy Note 9', 17490000, 'https://cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/g/a/galaxy-note-9-bronze.jpg', 'Sử dụng chung con chip Exynos 9810 nhưng Galaxy Note 9 sẽ có RAM mặc định 6GB (thay vì chỉ có một số phiên bản). Mặt khác, bộ nhớ trong cũng khởi đầu từ 128GB và cao nhất lên đến 512GB, tức tương đương nhiều mẫu laptop, giúp người dùng thoải mái chơi nhiều game 3D và lưu trữ nhiều tài liệu công việc hoặc video phim, ca nhạc để giải trí.', 1),
(4, 'Samsung Galaxy A7 (2018)', 6390000, 'https://cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/a/7/a7_xanh.jpg', 'Galaxy A7 2018 sở hữu màn hình có kích thước 6 inch tỷ lệ 18,5:9, độ phân giải FullHD+ kết hợp với công nghệ hiển thị Super AMOLED mang lại những hình ảnh sắc nét với màu sắc rực rỡ, màu đen sâu. Đồng thời, màn hình được tối ưu phần viền giúp cho màn hình có thêm không gian hiển thị đáp ứng nhu cầu xem phim, giải trí thú vị hơn', 1),
(5, 'Điện thoại OPPO Find X', 20990000, 'https://cdn.tgdd.vn/Products/Images/42/165189/oppo-find-x-2-400x460-400x460.png', 'Sức mạnh đến từ con chip Snapdragon 845 cùng 8 GB RAM sẽ là thông số đáng mơ ước trên một chiếc smartphone và nay đã có mặt trên OPPO Find X.', 1),
(6, 'Điện thoại OPPO R17 Pro', 16990000, 'https://cdn.tgdd.vn/Products/Images/42/186395/oppo-r17-pro-2-400x460.png', 'Sức mạnh của R17 Pro sẽ không làm bạn thất vọng khi mang trong mình con chip Snapdragon 710 kết hợp 8 GB RAM cùng 128 GB bộ nhớ trong.', 1),
(7, 'Điện thoại iPhone Xs Max 512GB', 43990000, 'https://cdn.tgdd.vn/Products/Images/42/191482/iphone-xs-max-512gb-gold-400x460.png', 'Là chiếc smartphone cao cấp nhất của Apple với mức giá khủng chưa từng có, bộ nhớ trong lên tới 512GB, iPhone XS Max 512GB - sở hữu cái tên khác biệt so với các thế hệ trước, trang bị tới 6.5 inch đầu tiên của hãng cùng các thiết kế cao cấp hiện đại từ chip A12 cho tới camera AI.', 1),
(8, 'Laptop Dell Vostro 3468', 10490000, 'https://cdn.tgdd.vn/Products/Images/44/166382/dell-vostro-3468-70142649-450-600x600.jpg', 'Dell Vostro 3468 i3 6006U là chiếc máy tính xách tay có cấu hình tốt trong tầm giá, được trang bị chip Intel Core i3 cho hiệu năng ổn định, ổ cứng HDD lưu trữ lên đến 500 GB.', 2),
(9, 'Laptop Dell Inspiron', 11990000, 'https://cdn.tgdd.vn/Products/Images/44/189385/dell-inspiron-3476-8j61p11-450-600x600.png', 'Dell Inspiron 3476 i3 8130U là phiên bản máy tính xách tay được trang bị cấu hình cơ bản với chip Intel Core i3 Kabylake Refresh, RAM DDR4 4 GB, ổ cứng HDD lên đến 1 TB, cùng hệ điều hành Windows 10 được cài đặt sẵn. Đây sẽ là lựa chọn phù hợp cho đối tượng như học sinh - sinh viên cần một chiếc laptop đáp ứng tốt các nhu cầu cơ bản của công việc văn phòng cũng như học tập.', 2),
(10, 'Laptop Apple Macbook Air', 21990000, 'https://cdn.tgdd.vn/Products/Images/44/106875/apple-macbook-air-mqd32sa-a-i5-5350u-400-1-450x300-600x600.jpg', 'Macbook Air MQD32SA/A i5 5350U với thiết kế vỏ nhôm nguyên khối Unibody rất đẹp, chắc chắn và sang trọng. Macbook Air là một chiếc máy tính xách tay siêu mỏng nhẹ, hiệu năng ổn định mượt mà, thời lượng pin cực lâu, phục vụ tốt cho nhu cầu làm việc lẫn giải trí..', 2),
(11, 'Laptop Acer Aspire', 9990000, 'https://cdn.tgdd.vn/Products/Images/44/160296/acer-aspire-e5-476-i3-8130u-nxgwtsv002-ava-600x600.jpg', 'Acer Aspire E5 476 i3 8130U là phiên bản máy tính xách tay với cấu hình cao, sử dụng vi xử lý mạnh mẽ trong phân khúc nhưng vẫn rất tiết kiệm pin do sử dụng kiến trúc chip mới từ Intel. Laptop Acer với mức giá thành hợp lý cùng cấu hình cực kì mạnh mẽ, Aspire E5 476 có thể đáp ứng tốt cho người dùng phổ thông cần một chiếc máy laptop để học tập, giải trí.', 2),
(12, 'Laptop Acer Spin 3 SP314 51 39WK', 12990000, 'https://cdn.tgdd.vn/Products/Images/44/145919/acer-spin-3-sp314-51-39wk-i3-7130u-nxguwsv001-cava-600x600.jpg', 'Acer Spin 3 SP314 51 39WK là mẫu máy tính có thiên hướng thiết kế về thời trang và sự linh hoạt, tiện lợi vượt trội. Là một chiếc laptop nhỏ gọn, màn hình cảm ứng và có thể biến đổi nhiều hình dạng phù hợp với các nhu cầu sử dụng.', 2),
(13, 'Laptop HP Pavilion x360 ba080TU ', 12990000, 'https://cdn.tgdd.vn/Products/Images/44/179677/hp-pavilion-x360-ba080tu-3mr79pa-450-600x600.jpg', 'HP Pavilion x360 ba080TU là chiếc laptop xuất thân từ dòng sản phẩm Pavillion đến từ thương hiệu nổi tiếng HP. Với thiết kế vô cùng gọn nhẹ và cấu hình khá tốt, đáp ứng tốt cho người dùng có nhu cầu mang theo máy tính để học tập, làm việc', 2),
(14, 'Laptop HP Pavilion 14 ce1011TU i3', 13290000, 'https://cdn.tgdd.vn/Products/Images/44/197626/hp-pavilion-14-ce1011tu-i3-8145u-4gb-1tb-win10-5j-600x600.jpg', 'Laptop HP Pavilion 14 ce1011TU (5JN17PA) với thiết kế trang nhã, mỏng nhẹ thuận tiện cho việc di chuyển. Cùng với đó là một cấu hình đáp ứng mượt mà các ứng dụng văn phòng cũng như xử lý khá tốt các ứng dụng đồ họa cơ bản, thì đây chắc hẳn sẽ là một sự lựa chọn đáng để cân nhắc dành cho các bạn sinh viên và nhân viên văn phòng trong phân khúc', 2),
(15, 'Laptop Lenovo IdeaPad 130', 8990000, 'https://cdn.tgdd.vn/Products/Images/44/187012/lenovo-ideapad-130-14ikb-81h60017vn-ava-600x600.jpg', 'Laptop Lenovo IdeaPad 130 14IKB có cấu hình ở mức khá với hệ điều hành Windows 10 bản quyền, chip Intel Core i3 thế hệ thứ 7, 4 GB RAM cùng ổ cứng lưu trữ HDD 1 TB, cho hiệu năng hoạt động ổn định đối với các tác vụ cơ bản như soạn thảo văn bản, nhập liệu, học anh văn, làm bài thuyết trình,... Đây sẽ là chiếc máy tính phù hợp với đối tượng người dùng như nhân viên văn phòng, học sinh - sinh viên', 2),
(16, 'Samsung Galaxy S9', 20990000, 'https://cdn.tgdd.vn/Products/Images/42/154695/samsung-galaxy-s9-plus-128gb-400x460-400x460.png', 'Samsung Galaxy S9 Plus 128Gb, siêu phẩm smartphone hàng đầu trong thế giới Android đã ra mắt với màn hình vô cực, camera chuyên nghiệp như máy ảnh và hàng loạt những tính năng cao cấp đầy hấp dẫn.', 1),
(17, ' Samsung Galaxy S9', 19990000, 'https://cdn.tgdd.vn/Products/Images/42/197080/samsung-galaxy-s9-plus-64gb-vang-do-400x460.png', 'Galaxy S9+ Vang Đỏ đã được Samsung chính thức mở bán vào dịp Noel, đầu năm mới. Máy tích hợp toàn bộ những tính năng cao cấp nhất như camera kép điều chỉnh khẩu độ, quét mống mắt, chống nước chống bụi và trang bị chip Exynos 9810 đầy mạnh mẽ', 1),
(18, 'Samsung Galaxy A8 Star', 8990000, 'https://cdn.tgdd.vn/Products/Images/42/166247/samsung-galaxy-a8-star-tet-giatot-400x460-400x460.png', 'Samsung Galaxy A8 Star là một biến thể mới của dòng A trong gia đình Samsung với sự nâng cấp vượt trội về camera cũng như thay đổi trong thiết kế', 1),
(19, 'Laptop HP Pavilion 14', 16390000, 'https://cdn.tgdd.vn/Products/Images/44/196907/hp-pavilion-14-ce1018tu-i5-8265u-4gb-16gb-1tb-14f-33397-thumb-600x600.jpg', 'Laptop HP Pavilion 14 (5RL41PA) vừa được HP đưa ra thị trường với thiết kế tinh tế, cùng với trọng lượng khá nhẹ thuận tiện hơn cho việc di chuyển hằng ngày. Cấu hình đủ mạnh để chạy mượt mà các ứng dụng văn phòng, xử lý tốt các thao tác kéo thả trong ứng dụng đồ họa cơ bản. Đây sẽ là sự lựa chọn đáng cân nhắc cho các bạn nhà học sinh, sinh viên và nhân viên văn phòng', 2),
(20, 'Laptop HP 15', 16490000, 'https://cdn.tgdd.vn/Products/Images/44/181322/hp-15-da0036tx-4me78pa-cava-600x600.jpg', 'Laptop HP 15 da0036TX i7 8550U với cấu hình khá nhau mang đến hiệu năng hoạt động mượt mà cùng khả năng tiết kiệm điện năng, ổ cứng HDD 1 TB lưu trữ dữ liệu thoải mái. Trọng lượng máy khá nhẹ thích hợp cho nhiều đối tượng khách hàng khác nhau từ học sinh, sinh viên dùng để học tập - làm việc cho đến những người chuyên làm về thiết kế đồ hoạ hay những khách hàng thường xuyên di chuyển cùng chiếc \"laptop\"', 2),
(21, 'Laptop MSI GF63 9RD', 30490000, 'https://asset.msi.com/resize/image/global/product/product_7_20180212154449_5a8145f16571d.png62405b38c58fe0f07fcef2367d8a9ba1/600.png', '      MSI GF63 8RD là sự lựa chọn dành cho người dùng nói chung và game thủ nói riêng khi có ý định chọn mua laptop gaming của MSI. Máy được trang bị chip Intel Core i7 cùng card đồ hoạ rời NVIDIA GeForce GTX 1050Ti đủ sức chiến mọi game \"khủng\" hiện nay trên thị trường  ', 2),
(23, 'Macbook Air 13 128GB', 22990000, 'https://cdn.fptshop.com.vn/Uploads/Originals/2017/7/13/636355328334271890_Macbook-Air-13%202017%20(1).jpg', 'Macbook Air 13 128 GB MQD32SA/A (2017) với thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ, hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình.\r\n ', 2),
(24, 'Laptop Asus G531GD-AL025T', 18890000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/5/6/56c78374c07b57c6b57ab3fd06793ae3.jpg', 'Thông số kỹ thuật\r\nHãng sản xuất	ASUS\r\nTrọng lượng	2.4kg\r\nLoại màn hình	FHD IPS, 120Hz, Non-Glare, 100% sRGB, Wide View, Narrow Bezel\r\nKích thước màn hình	15.6 inches\r\nĐộ phân giải màn hình	1920 x 1080 pixels\r\nHệ điều hành	Windows\r\nPhiên bản hệ điều hành	Windows 10\r\nCPU	Intel Core i5-9300H (2.4GHz upto 4.1GHz, 4Cores, 8Threads, 8MB cache, FSB 8GT/s)\r\nVGA	NVIDIA GeForce GTX 1050 4GB GDDR5 + Intel UHD Graphics 630\r\nỔ cứng	512GB SSD M.2 PCIe3x4 + 1 slot HDD\r\nRAM	8GB DDR4 2666MHz, 2 slot Ram, Max 32GB\r\nWLAN	Wifi 802.11ac 2x2 Wave 2\r\nBluetooth	5.0\r\nCổng/Khe cắm	-1x USB 3.1 Gen 2 (Type-C)\r\n- 3x USB3.1\r\n- 1x HDMI 2.0\r\n- 1x RJ-45 jack Only support SD card\r\n- 1x 3.5mm headphone and microphone combo jack\r\n- 1x Kensington lock\r\nPin	3-Cell 48WHrs', 2),
(25, 'Laptop LG gram 2020 14Z90N-V.AR52A5', 28990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/4/14z90n-v.ar52a5_2.png', 'Thông số kỹ thuật\r\nHãng sản xuất	LG\r\nKích thước	323.4 x 209.8 x 16.8 mm\r\nTrọng lượng	999g\r\nLoại màn hình	IPS\r\nKích thước màn hình	14 inches\r\nĐộ phân giải màn hình	1920 x 1080 pixels\r\nPhiên bản hệ điều hành	Windows 10 Home / Free OS\r\nCPU	Intel® Core™ i5-1035G7 1.20GHz/3.70GHz\r\nVGA	Intel® Iris® Plus Graphics\r\nỔ cứng	256GB M.2 2280 NVMe SSD PCI-e\r\nRAM	8GB DDR4 3200MHz onboard + 1 khe cắm, tối đa 16GB\r\nWLAN	Intel Wi-Fi 6 AX201D2W\r\nBluetooth	5.0\r\nCổng/Khe cắm	HDMI, USB 3.0 x 2, UFS, Micro SD, RJ45 Ethernet, DC-In\r\nChất liệu	Hợp kim Magie - Nano Carbon\r\nTính năng khác	Thunderbolt™ 3, MIL-STD 810G, HD Webcam with Dual Mic, Nhận dạng bằng vân tay, Công nghệ Tai nghe DTS: X, Bàn phím có đèn nền\r\nPin	72Wh Li-Ion (9,450mAh), 4 cell lithium ion (polymer)\r\n', 2),
(26, 'Laptop Acer Aspire 5 A514-53-50P9 NX.HUSSV.004', 15490000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/1/thumbnail/9df78eab33525d08d6e5fb8d27136e95/l/a/laptop_acer_aspire_5_a514-53-3821_nx.hussv.001__0005_layer_3_1.jpg', 'Thông số kỹ thuật\r\nHãng sản xuất	Acer\r\nKích thước	32.88 x 23.6 x 1.79 cm\r\nTrọng lượng	1.5 kg\r\nLoại màn hình	14\" ( 1920 x 1080 ) Full HD IPS không cảm ứng , HD webcam\r\nKích thước màn hình	14 inches\r\nĐộ phân giải màn hình	1920 x 1080 pixels\r\nHệ điều hành	Windows\r\nPhiên bản hệ điều hành	Windows 10 Home SL\r\nCPU	Intel Core i5-1035G1 ( 1.0 GHz - 3.6 GHz / 6MB / 4 nhân, 8 luồng )\r\nVGA	Intel UHD Graphics', 2),
(27, 'Samsung Galaxy S20+ (Plus)', 14500000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/6/3/637170945536714482_ss-s20-plus-den-1.png', 'Thông số kỹ thuật\r\nHãng sản xuất	Samsung\r\nKích thước	161.9 x 73.7 x 7.8 mm\r\nTrọng lượng	186 g\r\nBộ nhớ đệm / Ram	8 GB\r\nBộ nhớ trong	128 GB\r\nLoại SIM	2 SIM (Nano-SIM)\r\nLoại màn hình	Dynamic AMOLED 2X, 120Hz(1080p), HDR, Gorilla Glass 6\r\nKích thước màn hình	6.7 inches\r\nĐộ phân giải màn hình	3200 x 1440 pixel\r\nHệ điều hành	Android\r\nPhiên bản hệ điều hành	Android 10\r\nChipset	Exynos 990 (7 nm+)\r\nCPU	Octa-core (2x2.73 GHz Mongoose M5 & 2x2.60 GHz Cortex-A76 & 4x2.0 GHz Cortex-A55)\r\nGPU	Mali-G77 MP11\r\nKhe cắm thẻ nhớ	microSDXC hỗ trợ thẻ nhớ lên đến 1TB\r\nCamera sau	-Camera chính: 12 MP, f/1.8, 26mm (wide), Dual Pixel PDAF, OIS\r\n- Camera tele: 64 MP, f/2.0, (telephoto), PDAF, OIS, 3x hybrid optical zoom\r\n-Camera góc siêu rộng: 12 MP, f/2.2, 13mm (ultrawide), AF, Super Steady video\r\n-Camera ToF: 0.3 MP\r\nCamera trước	10 MP, f/2.2, 26mm (wide), 1/3.2\", 1.22µm, Dual Pixel PDAF\r\nQuay video	Sau: 3240p@30fps, 2160p@30/60fps, 1080p@30/60/240fps, HDR10+, dual-video rec., stereo sound rec., gyro-EIS & OI', 1),
(28, 'Samsung Galaxy S20 Ultra', 20100000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/1/thumbnail/9df78eab33525d08d6e5fb8d27136e95/6/3/637170935336423061_ss-s20-ultra-xam-1.png', 'Thông số kỹ thuật\r\nHãng sản xuất	Samsung\r\nKích thước	166.9 x 76 x 8.8 mm\r\nTrọng lượng	222 g\r\nBộ nhớ đệm / Ram	12 GB\r\nBộ nhớ trong	128 GB\r\nLoại SIM	2 SIM (Nano-SIM)\r\nLoại màn hình	Dynamic AMOLED 2X, 120Hz(1080p), HDR10+, Gorilla Glass 6\r\nKích thước màn hình	6.9 inches\r\nĐộ phân giải màn hình	3200 x 1440 pixel\r\nHệ điều hành	Android\r\nPhiên bản hệ điều hành	Android 10.0; One UI 2\r\nChipset	Exynos 990 (7 nm+)\r\nCPU	Octa-core (2x2.73 GHz Mongoose M5 & 2x2.60 GHz Cortex-A76 & 4x2.0 GHz Cortex-A55)\r\nGPU	Mali-G77 MP11\r\nKhe cắm thẻ nhớ	microSDXC hỗ trợ lên đến 1TB\r\nCamera sau	Camera chính: 108 MP, f/1.8, 26mm (wide), PDAF, OIS\r\nCamera siêu rộng:12 MP, f/2.2, 13mm (ultrawide), 1.4µm, AF, Super Steady video\r\nCamera Zoom: 48 MP, f/3.6, 102mm (telephoto), 1/2\", 0.8µm, PDAF, OIS, 10x hybrid optical zoom\r\nCamera TOF: 0.3 MP\r\nCamera trước	40 MP, f/2.2, 26mm (wide), PDAF\r\nQuay video	Sau: 3240p@30fps, 2160p@30/60fps, 1080p@30/60/240fps, HDR10+, dual-video rec., stereo sound rec., gyro-EIS & OIS\r\nTrước: 2160', 1),
(29, 'Điện thoại iPhone 11 Pro Max 512GB', 40490000, 'https://cdn.tgdd.vn/Products/Images/42/210654/iphone-11-pro-max-512gb-gold-400x460.png', 'Để tìm kiếm một chiếc smartphone có hiệu năng mạnh mẽ và có thể sử dụng mượt mà trong 2-3 năm tới thì không có chiếc máy nào xứng đang hơn chiếc iPhone 11 Pro Max 512GB mới ra mắt trong năm 2019 của Apple.\r\nHiệu năng \"đè bẹp\" mọi đối thủ\r\niPhone 11 Pro Max 512GB năm nay sử dụng chip Apple A13 Bionic mới nhất, nhanh và tiết kiệm điện hơn so với A12 năm ngoái.\r\nMáy cũng sở hữu riêng một con chip AI Neural Engine sẽ phụ trách các tính năng xử lý hình ảnh như Deep Fusion và Night Mode. Theo Apple thì đây là điện thoại thông minh có hiệu suất nhanh nhất thế giới ở thời điểm ra mắt. Cụ thể, hiệu năng của bộ vi xử lý A13 Bionic mới của Apple có sức mạnh vượt trội, nhanh hơn đến 20% và tiết kiêm điện đến 40% so với chip A12, mang đến cho bạn trải nghiệm mượt mà, ổn định tất cả các tác vụ, đa nhiệm. Máy sẽ chạy trên phiên bản iOS 13 mới với nhiều tính năng tiện dụng giúp bạn khai thác chiếc iPhone của mình hiệu quả hơn. Năm nay Face ID cũng được cải thiện để có thể nhận dạng ở nhiều góc khác nh', 1),
(30, 'Điện thoại iPhone 11 128GB', 23490000, 'https://cdn.tgdd.vn/Products/Images/42/210644/iphone-11-128gb-green-400x460.png', 'Được xem là phiên bản iPhone \"giá rẻ\" trong bộ 3 iPhone mới ra mắt nhưng iPhone 11 128GB vẫn sở hữu cho mình rất nhiều ưu điểm mà hiếm có một chiếc smartphone nào khác sở hữu.\r\nNâng cấp mạnh mẽ về cụm camera\r\nNăm nay với iPhone 11 thì Apple đã nâng cấp khá nhiều về camera nếu so sánh với chiếc iPhone Xr 128GB năm ngoái. Chúng ta đã có bộ đôi camera kép thay vì camera đơn như trên thế hệ cũ và với một camera góc siêu rộng thì bạn cũng có nhiều hơn những lựa chọn khi chụp hình. Trước đây để lấy được hết kiến trúc của một tòa nhà, để ghi lại hết sự hùng vĩ của một ngọn núi thì không còn cách nào khác là bạn phải di chuyển ra khá xa để chụp. Bên cạnh đó là tính năng Deep Fusion được quảng cáo là cơ chế chụp hình mới, đem lại hình ảnh với độ chi tiết cao, dải tần nhạy sáng rộng và rất ít bị nhiễu. Cụ thể, khi người dùng bấm nút chụp, thiết bị sẽ thực hiện tổng cộng 9 bức hình cùng lúc, gồm một tấm chính và tám tấm phụ, sau đó chọn ra các điểm ảnh tốt nhất để đưa vào tấm ảnh cuối cùng nhằm c', 1),
(31, 'Laptop Acer Predator Triton 500', 54990000, 'https://cdn.tgdd.vn/Products/Images/44/220933/acer-predator-triton-500-pt515-i7-nhq6ysv002-thumb-600x600.jpg', 'Đặc điểm nổi bật của Acer Predator Triton 500 PT515 52 75FR i7 10875H/32GB/512GB/8GB RTX2070/Win10 (NH.Q6YSV.002)\r\n\r\nLaptop Acer Predator Triton 500 i7 (NH.Q6YSV.002) là mẫu laptop gaming có ngoại hình hiện đại cùng cấu hình khủng với CPU Intel thế hệ 10, card đồ họa rời GeForce RTX 2070 mới nhất. Cỗ máy này tạo ra để thách thức mọi tựa game, thỏa sức sáng tạo.\r\nSức mạnh đến từ công nghệ tối tân\r\nPredator Triton 500 sở hữu cấu hình ấn tượng với CPU Core i7 thế hệ 10 mới nhất của Intel và RAM 32 GB cho hiệu năng mạnh mẽ vượt trội, đa nhiệm nhanh, sử dụng các ứng dụng thiết kế đồ họa chuyên nghiệp.\r\nCard đồ họa rời GeForce RTX 2070, 8 GB mới nhất đến từ NVIDIA đem đến sức mạnh chinh phục mọi tựa game. Với card màn hình rời này, Triton 500 loại bỏ tình trạng giật, xé hình, hiển thị mượt mà ngay cả với những tựa game có đồ họa cao. ', 2),
(32, 'Laptop Acer Nitro AN515', 19490000, 'https://cdn.tgdd.vn/Products/Images/44/221409/acer-nitro-an515-43-r5-nhq6zsv003-600x600.jpg', 'Cấu hình dành cho chơi game và đồ họa\r\nVới phiên bản này, Acer Nitro AN515 sử dụng CPU AMD Ryzen 5 4 nhân, tốc độ xung nhịp 2.1 – 3.7 GHz cho hiệu năng ổn định, sử dụng được các ứng dụng nặng.\r\n\r\nKết hợp là RAM 8 GB có khả năng nâng cấp tối đa lên đến 32 GB giúp đa nhiệm tốt, thoải mái sử dụng nhiều ứng dụng cùng lúc hay mở nhiều tab Chrome. \r\n\r\nCard đồ họa rời khủng Geforce GTX 1650 4 GB cho máy sức mạnh chiến mượt các tựa game nặng. Bạn cũng sẽ có trải nghiệm sử dụng mượt mà, chuyên nghiệp các ứng dụng đồ họa 2D như Photoshop, Ai,...\r\nThiết kế mạnh mẽ chuẩn gaming\r\nAcer Nitro AN515 mang đến vẻ hầm hố, mạnh mẽ thông qua thiết kế của mình. Toàn bộ thân máy được làm bằng nhựa với tone màu đen - đỏ ấn tượng.\r\n\r\nVới trọng lượng 2.3 kg, chiếc máy khá nhẹ so với laptop gaming cùng phân khúc, không khó để bạn di chuyển. ', 2),
(33, 'Apple iphone 11 Pro Max', 25450000, 'https://sudospaces.com/mobilecity-vn/images/2019/09/midnight-green.jpg', 'Thông số kỹ thuật\r\nMàn hình:	Super Retina XDR OLED, 6.5 inches, Full HD+ (1242 x 2688 pixels), Dolby Vision, HDR10, 120 Hz touch-sensing\r\nHệ điều hành:	iOS 13\r\nCamera sau:	3 Camera: 12 MP + 12 MP (ultrawide) + 12 MP (telephoto) , Quay phim 4K (2160p@60fps)\r\nCamera trước:	12 MP, TOF 3D camera\r\nCPU:	Apple A13 Bionic (7 nm+) , 6 nhân\r\nRAM:	4GB\r\nBộ nhớ trong:	64GB/256GB/512GB\r\nThẻ SIM:	1 SIM hoặc 2 SIM (tuỳ từng phiên bản) , Nano SIM\r\nDung lượng pin:	3969 mAh, sạc nhanh 18W, sạc không dây chuẩn Qi\r\nThiết kế:	Thanh + Cảm ứng', 1),
(34, 'Apple iphone 11', 14250000, 'https://sudospaces.com/mobilecity-vn/images/2019/09/iphone-11-3.jpg', 'Thông số kỹ thuật\r\nMàn hình:	Liquid Retina IPS LCD 828 x 1792 pixels 6.1 inches\r\nHệ điều hành:	iOS 13\r\nCamera sau:	2 Camera 12MP và 12MP , 2160p@24/30/60fps\r\nCamera trước:	12 MP, f/2.2\r\nCPU:	Apple A13 Bionic , 6 nhân\r\nRAM:	4GB\r\nBộ nhớ trong:	64/128/256GB\r\nThẻ SIM:	2 Sim hoặc 1 Sim , Nano-SIM hoặc Electronic SIM card\r\nDung lượng pin:	Pin Li-Ion 3110 mAh - Sạc nhanh(PD) 18W\r\nThiết kế:	Thiết kế nguyên 2 mặt kính, nhiều màu sắc độc đáo', 1),
(35, 'Dell Alienware 15 R4 i7-8750H', 41990000, 'https://www.thinkpro.vn/uploads/images/2018/05/30/thumb_550x550_15276503735144.jpg', 'CPU:Intel Core i7-8750H 2.20 GHz, 9 MB SmartCache Cache, Upto 4.10 GHz\r\nRAM:16GB DDR4 2400MHz\r\nỔ cứng:SSD 128GB + HDD 1TB SSD + HDD\r\nMàn hình:15.6 inch FHD (1920 x 1080), IPS AntiGlare Led Backlit\r\nCard màn hình: Nvidia GTX 1060 6GB\r\nCổng giao tiếp: 1 Power/DC-in Jack 1 RJ-45 Killer Networks e2400 Gigabit Ethernet Port 1 Type-A SuperSpeed USB 3.0 Port 1 Type-A SuperSpeed USB 3.0 Port with PowerShare technology 1 Type-C SuperSpeed USB 3.0 Port 1 Thunderbolt™ 3 Port (USB Type-C™ with support for SuperSpeed USB 10Gbps, 40Gbps Thunderbolt, and DisplayPort) 1 Alienware Graphics Amplifier Port 1 HDMI 2.0 Output 1 Mini-Display Port 1.2 (certified) Output 1 Audio Out 1/8\" Ports (Compatible with inline mic headset) 1 Headphone 1/8\" Port (retaskable for Microphone/Line-In analog audio input) 1 Noble Lock port (cable and lock sold separately)', 2),
(36, 'MSI Bravo 15 A4DCR-070VN', 20990000, 'https://cdn.fptshop.com.vn/Uploads/Originals/2020/6/11/637274653397635920_msi-bravo-15-%20den-1.png', 'Cảm nhận sức mạnh của công nghệ tiên tiến\r\nSức mạnh của MSI Bravo 15 là sự kết hợp hoàn toàn từ AMD, bao gồm bộ vi xử lý AMD Ryzen 5 4600H và card đồ họa rời AMD Radeon RX 5300M. Đây đều là những linh kiện sản xuất trên tiến trình 7nm mới nhất. Ryzen 5 4600H thể hiện sức mạnh đa luồng vượt trội với 6 lõi 12 luồng, tốc độ 3.0 – 4.0GHz, trong khi đó Radeon RX 5300M sử dụng chip Navi 14 mới, hỗ trợ GDDR6 VRAM, cho hiệu năng vượt trội so với đối thủ GTX 1650. Với cấu hình mạnh mẽ, MSI Bravo 15 sẽ là chiếc laptop lý tưởng để chơi game, khi đáp ứng tốt hầu hết mọi tựa game hàng đầu hiện nay.\r\nThiết kế kim loại cứng cáp\r\nĐược chế tác từ kim loại với những đường nét phay xước mạnh mẽ, MSI Bravo 15 tạo cho bạn sự khí thế và niềm cảm hứng khi tham gia mỗi trận chiến. Laptop rất mỏng nhẹ với trọng lượng chỉ 1,96kg và độ mỏng 21,7mm, sẵn sàng cùng bạn đi bất cứ đâu. Mọi chi tiết trên Bravo 15 đều được hoàn thiện chất lượng cao, từ lưới tản nhiệt, cổng kết nối, phần kê tay cho đến điểm nhấn là logo', 2),
(37, 'Điện thoại iPhone SE 256GB (2020)', 17490000, 'https://cdn.tgdd.vn/Products/Images/42/222631/iphone-se-256gb-2020-261820-101806-400x460.png', 'iPhone SE 256GB 2020 cuối cùng đã được Apple ra mắt, với ngoại hình nhỏ gọn được sao chép từ iPhone 8 nhưng mang trong mình một hiệu năng mạnh mẽ với vi xử lý A13 Bionic, mức giá hấp dẫn hứa hẹn sẽ là yếu tố “hút khách” của smartphone đình đám đến từ nhà Táo khuyết.\r\nGọn nhẹ chắc chắn thoải mái sử dụng\r\niPhone SE 2020 có thiết kế khá nhỏ bé khi đặt cạnh các smartphone màn hình khủng hiện nay, nhưng với những ai không thích kiểu thiết kế tràn viền và màn hình lớn, thì đây sẽ lựa chọn tốt nhất cho họ. Với màn hình 4.7 inch, viền màn hình khá dày, cùng cảm biến vân tay Touch ID, các cạnh bo cong hoàn hảo, iPhone SE 2020 mang lại cảm giác cầm nắm quen thuộc, kích thước nhỏ gọn để bạn sử dụng 1 tay một cách dễ dàng. Chiếc điện thoại mới nhà Táo trang bị màn hình Retina 4.7 inch, tuy chỉ có độ phân giải HD nhưng vẫn cho chất lượng hiển thị tốt với công nghệ True Tone tự cân chỉnh màu theo môi trường xung quanh. Cũng giống như thế hệ iPhone 7 và iPhone 8, iPhone SE 2020 vẫn trang bị nút home ', 1),
(38, 'Dell Alienware M15 R2 i9-9880H', 59900000, 'https://www.thinkpro.vn/uploads/images/2020/05/28/thumb_550x550_15906490997907.jpg', 'Dell Alienware M15 R2 là chiếc laptop gaming với thiết kế hấp dẫn và rõ ràng, sử dụng hợp kim magiee để trọng lượng máy nhẹ nhất có thể. Với cấu hình vô cùng mạnh mẽ với bộ vi xử lý i7 - 9750H và 16GB ram, 1TB SSD sẽ giúp người dùng sử dụng mọi tác vụ dù nặng nhất cũng vô cùng mượt mà.\r\n\r\n \r\n\r\n1. Mỏng nhẹ hơn nữa\r\nVới cân nặng chỉ từ 2.16kg cùng độ mỏng 18.3 mm, Dell Alienware M15 R2 là một trong những chiếc laptop chơi game hiếm hoi có khả năng cơ động cao đến như vậy, bạn có thể mang theo mình mọi lúc mọi nơi, sẵn sàng hoàn thành mọi công việc.\r\n2. Đắm chìm vào thế giới game\r\nNghe có vẻ phi lý nhưng game thủ cũng cần một màn hình tốt chứ! Màn hình được trang bị trên Dell Alienware M15 R2 độ phân giải FullHD với độ bao phủ màu sắc đạt trên 100% sRGB, 99.96% AdobeRGB, thâm chí độ sáng còn lên tới 301 nits giúp bạn có thể làm việc thoải mái trong môi trường ánh sáng gắt mà vẫn giữ được chất lượng hiển thị tuyệt vời. Hơn nữa với màn hình sặc sỡ và trung thực như thế thì các chi tiết tron', 2),
(39, 'Dell Alienware Area-51M i7-9700K', 83990000, 'https://www.thinkpro.vn/uploads/images/userfiles/area_51_1.jpg', 'hay đổi trải nghiệm chơi game: Dell Alienware Area-51M hoàn toàn khác biệt với những chiếc gaming laptop mà bạn từng biết. Với một sức mạnh chưa từng có trên laptop, khả năng nâng cấp CPU lẫn GPU vượt trội, bộ tản nhiệt tiên tiến cùng với một thiết kế quý tộc mang thiên hướng của một cuộc cách mạng laptop, bạn giờ đây đã có thể thực sự chiêm nghiệm cụm từ \"Laptop thay thế Desktop\".\r\n\r\n \r\n\r\n1. Laptop với cấu hình siêu mạnh\r\nArea-51M có thể được coi là chiếc laptop mạnh nhất từ trước tới giờ khi được trang bị bộ vi xử lý siêu mạnh 8 nhân 8 luồng chỉ được trang bị trên những bộ PC để bàn. Không những thế, Dell Alienware Area-51M còn có khả năng ép xung CPU lên tới 125% công suất bình thường, khiến khả năng đa nhiệm sẽ trở nên tốt hơn bất cứ mẫu laptop nào. Hòa mình vào thế giới trò chơi sống động, mượt mà nhờ vào card đồ họa NVIDIA® GeForce RTX ™ với công suất tối đa và có thể ép xung màn hình Full HD G-SYNC 17 \" một cách tốt nhất. Dell Alienware Area-51M cũng là chiếc máy tính xách tay A', 2),
(40, 'Xiaomi Black Shark 3', 11350000, 'https://sudospaces.com/mobilecity-vn/images/2020/03/black-sharrk-3.jpg', 'Thông số kỹ thuật\r\nMàn hình:	Super AMOLED, 6.67 inches, Full HD+ (1080x2400 pixels), HDR 10+, 90Hz\r\nHệ điều hành:	Android 10.0\r\nCamera sau:	3 camera: 64MP + 13MP (Góc siêu rộng) + 5MP (Đo chiều sâu) , 4k (2160p@30,60fps)\r\nCamera trước:	20MP\r\nCPU:	Qualcomm Snapdragon 865 (7 nm+) , 8 nhân\r\nRAM:	8-12GB (LPDDR4X)\r\nBộ nhớ trong:	128-256GB\r\nThẻ SIM:	2 Sim , Nano SIM\r\nDung lượng pin:	4720 mAh - Sạc nhanh 65W\r\nThiết kế:	Thiết kế gaming hầm hố', 1),
(41, 'Xiaomi Black Shark 3 Pro', 15900000, 'https://sudospaces.com/mobilecity-vn/images/2020/03/black-shark-3-2-2.jpg', 'Thông số kỹ thuật\r\nMàn hình:	AMOLED, 7.1 inches, 2K (1440 x 3120 pixels), Corning Gorilla Glass 6, 90Hz, HDR+\r\nHệ điều hành:	Android 10\r\nCamera sau:	3 Camera: 64 MP + 13 MP (Góc siêu rộng) + 5 MP (Đo chiều sâu) , 4K@30/60fps, 1080p@30/60/240fps, 720p@1920fps\r\nCamera trước:	20 MP (có thể quay 1080p@30fps)\r\nCPU:	Qualcomm Snapdragon 865 (7 nm+) , 8 nhân\r\nRAM:	8-12GB (LPDDR4X)\r\nBộ nhớ trong:	256GB - 512GB\r\nThẻ SIM:	2 Sim , Nano SIM\r\nDung lượng pin:	5000mAh - chế độ sạc nhanh 65W, 30 phút sạc đầy 83% pin, sạc 100% trong 50 phút\r\nThiết kế:	Thiết kế gaming hầm hố, có phím vật lý hỗ trợ chơi game', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `MaTaiKhoan` int(11) NOT NULL,
  `Ho` varchar(150) DEFAULT NULL,
  `Ten` varchar(150) DEFAULT NULL,
  `Email` varchar(150) DEFAULT NULL,
  `MatKhau` varchar(250) DEFAULT NULL,
  `SDT` varchar(150) DEFAULT NULL,
  `GioiTinh` varchar(150) DEFAULT NULL,
  `MaLoaiTK` int(11) DEFAULT NULL,
  `diachi` varchar(355) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`MaTaiKhoan`, `Ho`, `Ten`, `Email`, `MatKhau`, `SDT`, `GioiTinh`, `MaLoaiTK`, `diachi`) VALUES
(16, 'le', 'truong', 'dangtruong3399@gmail.com', '32e8512c007faaf409e0845a6f6a980d', '0784683399', 'Nam', 2, '140 le trong tan'),
(18, 'Dang', 'Thinh', 'thinh@gmail.com', 'f5bb0c8de146c67b44babbf4e6584cc0', '0784683388', 'Nam', 2, '77 Nguyen Quy Anh'),
(19, 'tran', 'lee', 'leee@gmail.com', 'f5bb0c8de146c67b44babbf4e6584cc0', '0784683300', 'Nam', 2, '77 Nguyen Quy Anh');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiecdonhang`
--
ALTER TABLE `chitiecdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `loaitaikhoan`
--
ALTER TABLE `loaitaikhoan`
  ADD PRIMARY KEY (`STT`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`MaTaiKhoan`),
  ADD KEY `MaLoaiTK` (`MaLoaiTK`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiecdonhang`
--
ALTER TABLE `chitiecdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `loaitaikhoan`
--
ALTER TABLE `loaitaikhoan`
  MODIFY `STT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `MaTaiKhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`MaLoaiTK`) REFERENCES `loaitaikhoan` (`STT`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
