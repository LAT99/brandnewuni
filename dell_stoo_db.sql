-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th2 27, 2025 lúc 07:30 AM
-- Phiên bản máy phục vụ: 8.0.22
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dell_stoo_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `configs`
--

CREATE TABLE `configs` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `configs`
--

INSERT INTO `configs` (`id`, `name`, `config`, `created_at`, `updated_at`) VALUES
(2, 'banner', '{\"banner\":\"1635157397.jpg\"}', '2021-10-17 21:14:31', '2021-10-25 03:23:17'),
(3, 'certificate_time', '{\"certificate_time\":{\"from_time\":\"18\\/10\\/2021\",\"to_time\":\"20\\/10\\/2021\",\"text\":\"Hu\\u1ea5n luy\\u1ec7n v\\u00e0 \\u0111\\u00e0o t\\u1ea1o s\\u1ea3n ph\\u1ea9m n\\u0103m 2021\"}}', '2021-10-17 21:54:01', '2021-10-21 11:11:54'),
(4, 'time_test', '18h00 31/10/2021', '2021-10-22 23:05:31', '2021-10-22 23:05:56'),
(5, 'rules_test', '<h1><strong>DELL TRAINING WEBSITE </strong></h1>\r\n\r\n<h1><strong>THỂ LỆ &amp; QUY ĐỊNH</strong></h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ch&agrave;o mừng bạn đến với website &ldquo;Dell Training&rdquo; <a href=\"http://training.dellonline.vn\">http://training.dellonline.vn</a>!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bạn muốn cập nhập th&ocirc;ng tin sản phẩm Dell mới nhất, bạn muốn t&igrave;m một nơi giao lưu học hỏi c&aacute;c kỹ năng b&aacute;n h&agrave;ng c&ugrave;ng c&aacute;c bạn nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng tr&ecirc;n to&agrave;n quốc, bạn muốn trở th&agrave;nh một chuy&ecirc;n vi&ecirc;n b&aacute;n h&agrave;ng xuất sắc, tất cả c&oacute; tại website <strong>Dell training</strong>. Thật nhiều th&ocirc;ng tin hữu &iacute;ch m&agrave; Dell d&agrave;nh cho bạn c&ugrave;ng nhiều phần qu&agrave; hấp dẫn đang ch&agrave;o đ&oacute;n bạn tại website. H&atilde;y nhanh tay đăng k&yacute; tham gia ngay nh&eacute;!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1. Đối tượng tham gia: </strong>chỉ d&agrave;nh cho nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng thuộc Nh&agrave; Ph&acirc;n Phối, Đại L&yacute; v&agrave; đội PG/PB Dell Việt Nam tr&ecirc;n to&agrave;n quốc.</p>\r\n\r\n<p><strong>2. Lợi &iacute;ch khi tham gia website:</strong> C&aacute;c bạn dễ d&agrave;ng xem lại c&aacute;c video huấn luyện từ chuy&ecirc;n gia của Dell trong những buổi Huấn luyện v&agrave; đ&agrave;o tạo sản phẩm h&agrave;ng qu&yacute; ngay tại trang chủ, cơ hội trao dồi th&ecirc;m kiến thức th&ocirc;ng qua những b&agrave;i kiểm tra trắc nghiệm sinh động tại trang B&agrave;i Kiểm Tra. Mỗi qu&yacute;, nh&acirc;n vi&ecirc;n sẽ được cấp Chứng Nhận ho&agrave;n th&agrave;nh chương tr&igrave;nh đến từ Dell sau mỗi kh&oacute;a học. Đồng thời, nh&acirc;n vi&ecirc;n cũng c&oacute; cơ hội t&iacute;ch lũy điểm số để đổi những phần qu&agrave; gi&aacute; trị v&agrave; hấp dẫn trong thời gian sắp tới.</p>\r\n\r\n<p>Ngo&agrave;i ra website c&ograve;n l&agrave; nơi c&aacute;c bạn c&oacute; thể trao đổi th&ocirc;ng tin kinh nghiệm b&aacute;n h&agrave;ng c&ugrave;ng nhau để trở th&agrave;nh những nh&acirc;n vi&ecirc;n xuất sắc v&agrave; cập nhập c&aacute;c chương tr&igrave;nh mới nhất của Dell cũng như những cuộc thi m&agrave; Dell chỉ d&agrave;nh ri&ecirc;ng cho đội ngũ nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng.</p>\r\n\r\n<p><strong>3. C&aacute;ch thức l&agrave;m b&agrave;i kiểm tra:</strong></p>\r\n\r\n<p><strong>Bước 1: </strong>Truy cập trang web <a href=\"http://training.dellonline.vn\">http://training.dellonline.vn</a></p>\r\n\r\n<p><strong>Bước 2:</strong> Đăng k&yacute; t&agrave;i khoản bằng c&aacute;ch nhập c&aacute;c th&ocirc;ng tin bao gồm: Họ v&agrave; t&ecirc;n, email, số điện thoại, địa chỉ, đối tượng tham gia v&agrave; nơi l&agrave;m việc.</p>\r\n\r\n<p><strong>Bước 3: </strong>Nhận email x&aacute;c nhận đăng k&yacute; th&agrave;nh c&ocirc;ng v&agrave; đăng nhập lại v&agrave;o website với email v&agrave; mật khẩu đ&atilde; đăng k&yacute;.</p>\r\n\r\n<p><strong>Bước 4:</strong> Chọn <strong>&ldquo;B&agrave;i kiểm tra&rdquo;</strong> tr&ecirc;n thanh c&ocirc;ng cụ ở trang chủ.</p>\r\n\r\n<p><strong>Bước 5: </strong>Nh&acirc;n vi&ecirc;n xem lại video buổi Huấn luyện v&agrave; đ&agrave;o tạo trước khi l&agrave;m b&agrave;i.</p>\r\n\r\n<p><strong>Bước 6: </strong>Sau khi xem video, chọn <strong>&ldquo;Bắt đầu l&agrave;m b&agrave;i&rdquo;</strong> v&agrave; trả lời 20 c&acirc;u hỏi trắc nghiệm trong v&ograve;ng 20 ph&uacute;t.</p>\r\n\r\n<p><strong>Bước 7: </strong>Chọn <strong>&ldquo;Nộp b&agrave;i&rdquo;</strong> để ho&agrave;n th&agrave;nh b&agrave;i thi hoặc kết th&uacute;c 20 ph&uacute;t l&agrave;m b&agrave;i, hệ thống sẽ tự động nộp b&agrave;i. Điểm số sẽ được hiển thị ngay sau đ&oacute; v&agrave; nh&acirc;n vi&ecirc;n c&oacute; thể kiểm tra lại b&agrave;i thi của m&igrave;nh.</p>\r\n\r\n<p><strong><em>*Lưu &yacute;:</em></strong></p>\r\n\r\n<ul>\r\n	<li>Nh&acirc;n vi&ecirc;n sẽ được <strong>cấp chứng nhận</strong> ho&agrave;n th&agrave;nh chương tr&igrave;nh khi đạt được số điểm <strong>tối thiểu l&agrave; 18/20 c&acirc;u.</strong></li>\r\n	<li>Nếu chưa đạt được số điểm tối thiểu, nh&acirc;n vi&ecirc;n c&oacute; thể l&agrave;m lại b&agrave;i thi với <strong>số lượng l&agrave;m lại b&agrave;i thi tối đa l&agrave; 10 lần</strong> v&agrave; hệ thống sẽ tự động lấy điểm số của b&agrave;i thi cao điểm nhất.</li>\r\n</ul>\r\n\r\n<p><strong>4. Quy định bảo mật th&ocirc;ng tin</strong></p>\r\n\r\n<ul>\r\n	<li>Dell cam kết kh&ocirc;ng sử dụng th&ocirc;ng tin kh&aacute;ch h&agrave;ng v&agrave;o mục đ&iacute;ch n&agrave;o kh&aacute;c ngo&agrave;i việc trao qu&agrave; tặng. Để biết th&ecirc;m về ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin của Dell, qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng truy cập:&nbsp;<a href=\"https://www.doiquadell.com/baomatthongtin\">https://www.doiquadell.com/baomatthongtin</a></li>\r\n	<li>Chương tr&igrave;nh kh&ocirc;ng thể ho&agrave;n th&agrave;nh nếu kh&ocirc;ng c&oacute; th&ocirc;ng tin kh&aacute;ch h&agrave;ng. Dữ liệu của kh&aacute;ch h&agrave;ng sẽ được Dell Technologies bảo mật theo quy định. Để t&igrave;m hiểu th&ecirc;m về c&aacute;ch Dell sử dụng v&agrave; bảo vệ dữ liệu c&aacute; nh&acirc;n của kh&aacute;ch h&agrave;ng, h&atilde;y truy cập v&agrave;o: <a href=\"https://www.dell.com/learn/th/en/thcorp1/policies-privacy\">Tuy&ecirc;n bố về Quyền ri&ecirc;ng tư.</a></li>\r\n</ul>\r\n\r\n<p><strong>5. Quy định kh&aacute;c: </strong></p>\r\n\r\n<p>- Khi tham gia website c&aacute;c bạn vui l&ograve;ng cư xử văn minh lịch sự khi trao đổi th&ocirc;ng tin với nhau ở phần b&igrave;nh luận.</p>\r\n\r\n<p>- Trao đổi b&igrave;nh luận để c&ugrave;ng nhau x&acirc;y dựng website thật hữu &iacute;ch cho c&aacute;c bạn.</p>\r\n\r\n<p>***Mọi thắc mắc vui l&ograve;ng email đến <strong>d</strong><strong>ell.</strong><strong>training</strong><strong>@metanvietnam.com</strong> hoặc li&ecirc;n hệ hotline chương tr&igrave;nh <strong>09</strong><strong>01 307 740</strong> để được giải đ&aacute;p.</p>', '2021-10-25 02:44:18', '2021-10-25 02:45:53'),
(6, 'news', '<h1>C&aacute;ch cập nhật Windows 11 ch&iacute;nh thức tr&ecirc;n m&aacute;y t&iacute;nh, để bạn bắt đầu sử dụng hệ điều h&agrave;nh mới với nhiều t&iacute;nh năng hấp dẫn</h1>\r\n\r\n<p><a href=\"https://www.thegioididong.com/tin-tuc/profile/0\">Nguyễn Ngọc Huy</a>&nbsp;05/10&nbsp;193 b&igrave;nh luận</p>\r\n\r\n<p><img style=\"max-width:973px\" alt=\"Cách cập nhật Windows 11 chính thức\" src=\"https://cdn.tgdd.vn/Files/2021/10/05/1387858/cach-cap-nhat-windows-11-chinh-thuc_1280x720-800-resize.jpg\" /></p>\r\n\r\n<h2>Như vậy l&agrave;&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/chu-de/windows-11-205\" target=\"_blank\">Windows 11</a>&nbsp;đ&atilde; được Microsoft ph&aacute;t h&agrave;nh ch&iacute;nh thức. Windows 11 cho ph&eacute;p bạn n&acirc;ng cấp miễn ph&iacute; tr&ecirc;n c&aacute;c m&aacute;y t&iacute;nh chạy Windows 10 đủ điều kiện v&agrave; m&aacute;y t&iacute;nh mới đ&atilde; c&agrave;i sẵn Windows 11. Sau đ&acirc;y l&agrave; hướng dẫn&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/cach-cap-nhat-windows-11-chinh-thuc-1387858\" target=\"_blank\">c&aacute;ch cập nhật Windows 11 ch&iacute;nh thức</a>&nbsp;tr&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">m&aacute;y t&iacute;nh</a>&nbsp;cho bạn.</h2>\r\n\r\n<p><em><strong>*Lưu &yacute;</strong>: Để biết m&aacute;y t&iacute;nh của bạn c&oacute; đủ điều kiện n&acirc;ng cấp l&ecirc;n Windows 11 hay kh&ocirc;ng, h&atilde;y xem:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/cach-kiem-tra-may-tinh-cua-ban-co-duoc-len-windows-11-hay-khong-1363188\" target=\"_blank\">C&aacute;ch kiểm tra m&aacute;y t&iacute;nh c&oacute; c&agrave;i Windows 11 được hay kh&ocirc;ng bằng Windows PC Health Check</a>&nbsp;n&agrave;y nh&eacute;.</em></p>\r\n\r\n<h3><strong>1. C&aacute;ch cập nhật Windows 11 ch&iacute;nh thức qua Windows Update</strong></h3>\r\n\r\n<p>Đ&acirc;y l&agrave; c&aacute;ch cập nhật Windows 11 ch&iacute;nh thống an to&agrave;n v&agrave; đảm bảo nhất cho bạn. N&acirc;ng cấp Windows 11 từ Windows Update gi&uacute;p bạn c&oacute; thể y&ecirc;n t&acirc;m rằng m&aacute;y t&iacute;nh của m&igrave;nh đ&atilde; ho&agrave;n to&agrave;n tương th&iacute;ch với hệ điều h&agrave;nh mới n&agrave;y v&agrave; kh&ocirc;ng c&oacute; lỗi g&igrave; nghi&ecirc;m trọng.</p>\r\n\r\n<p><strong>Bước 1</strong>. Bạn v&agrave;o&nbsp;<strong>Settings</strong>&nbsp;của Windows, chọn&nbsp;<strong>Update &amp; Security</strong>&nbsp;&gt;&nbsp;<strong>Windows Update</strong>.</p>\r\n\r\n<p><img style=\"max-width:973px\" alt=\"Cách cập nhật Windows 11 chính thức\" src=\"https://cdn.tgdd.vn/Files/2021/10/05/1387858/cach-cap-nhat-windows-11-chinh-thuc-1-_1529x875-800-resize.jpg\" /></p>\r\n\r\n<p><strong>Bước 2</strong>. Bạn sẽ thấy th&ocirc;ng b&aacute;o mời n&acirc;ng cấp l&ecirc;n Windows 11 ch&iacute;nh thức từ Microsoft, nhấn&nbsp;<strong>Download and install</strong>&nbsp;để bắt đầu c&agrave;i đặt Windows 11 ch&iacute;nh thức nh&eacute;.</p>\r\n\r\n<p><img style=\"max-width:973px\" alt=\"Cách cập nhật Windows 11 chính thức\" src=\"https://cdn.tgdd.vn/Files/2021/10/05/1387858/cach-cap-nhat-windows-11-chinh-thuc-3_1280x670-800-resize.jpg\" /></p>\r\n\r\n<h3><strong>2. C&aacute;ch cập nhật Windows 11 ch&iacute;nh thức từ Windows 11 Insider</strong></h3>\r\n\r\n<p><strong>Bước 1</strong>.&nbsp;Bạn v&agrave;o&nbsp;<strong>Settings</strong>&nbsp;&gt;&nbsp;<strong>Windows Update</strong>&nbsp;&gt;&nbsp;<strong>Windows Insider Program</strong>.</p>\r\n\r\n<p><img style=\"max-width:973px\" alt=\"Cách cập nhật Windows 11 chính thức\" src=\"https://cdn.tgdd.vn/Files/2021/10/05/1387858/cach-cap-nhat-windows-11-chinh-thuc-8_1280x757-800-resize.jpg\" /></p>\r\n\r\n<p><strong>Bước 2</strong>. Chọn&nbsp;<strong>Stop getting preview builds</strong>&nbsp;&gt; bật&nbsp;<strong>On</strong>&nbsp;mục&nbsp;<strong>Unenroll this device when the next version of Windows releases</strong>. M&aacute;y t&iacute;nh sẽ tự động ngắt bạn khỏi chương tr&igrave;nh Insider, v&agrave; chỉ nhận bản update Windows 11 ch&iacute;nh thức để cập nhật.</p>\r\n\r\n<p><img style=\"max-width:973px\" alt=\"Cách cập nhật Windows 11 chính thức\" src=\"https://cdn.tgdd.vn/Files/2021/10/05/1387858/cach-cap-nhat-windows-11-chinh-thuc-9_1280x757-800-resize.jpg\" /></p>\r\n\r\n<h3><strong>3. C&aacute;ch cập nhật Windows 11 qua Windows 11 Installation Assistant</strong></h3>\r\n\r\n<p><em><strong>*Lưu &yacute;</strong>:&nbsp;C&aacute;ch n&agrave;y chỉ d&agrave;nh cho người d&ugrave;ng r&agrave;nh về m&aacute;y t&iacute;nh, v&agrave; bạn chỉ n&ecirc;n d&ugrave;ng c&aacute;ch n&agrave;y tr&ecirc;n m&aacute;y phụ để tr&aacute;nh xảy ra sự cố đ&aacute;ng tiếc. C&aacute;ch an to&agrave;n nhất vẫn l&agrave; cập nhật th&ocirc;ng qua Windows Update.</em></p>\r\n\r\n<p><strong>Bước 1</strong>. Bạn truy cập v&agrave;o trang web b&ecirc;n dưới, tại mục&nbsp;<strong>Windows 11 Installation Assistant</strong>, chọn&nbsp;<strong>Before you begin</strong>&nbsp;để đọc c&aacute;c điều kiện về n&acirc;ng cấp.</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.microsoft.com/en-us/software-download/windows11\" target=\"_blank\">Download Windows 11 Installation Assistant</a></li>\r\n</ul>\r\n\r\n<p><img style=\"max-width:973px\" alt=\"Cách cập nhật Windows 11 chính thức\" src=\"https://cdn.tgdd.vn/Files/2021/10/05/1387858/cach-cap-nhat-windows-11-chinh-thuc-4-_1470x924-800-resize.jpg\" /></p>\r\n\r\n<p><strong>Bước 2</strong>. Nhấn&nbsp;<strong>Download Now</strong>. Sau khi tải về xong Windows 11 Installation Assistant, bạn chạy v&agrave; l&agrave;m theo c&aacute;c hướng dẫn tr&ecirc;n m&agrave;n h&igrave;nh để bắt đầu c&agrave;i đặt Windows 11.</p>\r\n\r\n<p><img style=\"max-width:973px\" alt=\"Cách cập nhật Windows 11 chính thức\" src=\"https://cdn.tgdd.vn/Files/2021/10/05/1387858/cach-cap-nhat-windows-11-chinh-thuc-5-_1602x810-800-resize.jpg\" /></p>\r\n\r\n<h3><strong>4. C&aacute;ch c&agrave;i Windows 11 qua file ISO</strong></h3>\r\n\r\n<p><em><strong>*Lưu &yacute;</strong>: C&aacute;ch n&agrave;y sẽ c&agrave;i Windows 11 tr&ecirc;n m&aacute;y t&iacute;nh của bạn lại từ đầu, x&oacute;a sạch sẽ dữ liệu v&agrave; bạn sẽ c&oacute; một m&aacute;y t&iacute;nh mới ho&agrave;n to&agrave;n. Tương tự, c&aacute;ch n&agrave;y chỉ n&ecirc;n d&ugrave;ng cho những người r&agrave;nh m&aacute;y t&iacute;nh v&agrave; c&aacute;ch cập nhật tốt nhất l&agrave; th&ocirc;ng qua Windows Update.</em></p>\r\n\r\n<p><strong>Bước 1</strong>. Bạn truy cập v&agrave;o link b&ecirc;n dưới, cuộn xuống mục&nbsp;<strong>Download Windows 11 Disk Image (ISO)</strong>, nhấn&nbsp;<strong>Before you begin</strong>&nbsp;để xem c&aacute;c điều kiện trước khi n&acirc;ng cấp l&ecirc;n.</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.microsoft.com/en-us/software-download/windows11\" target=\"_blank\">Download Windows 11 Installation Assistant</a></li>\r\n</ul>\r\n\r\n<p><img style=\"max-width:973px\" alt=\"Cách cập nhật Windows 11 chính thức\" src=\"https://cdn.tgdd.vn/Files/2021/10/05/1387858/cach-cap-nhat-windows-11-chinh-thuc-6_1299x726-800-resize.jpg\" /></p>\r\n\r\n<p><strong>Bước 2</strong>. Sau đ&oacute;, tại&nbsp;<strong>Select Download</strong>, bạn chọn&nbsp;<strong>Windows 11</strong>&nbsp;v&agrave; nhấn&nbsp;<strong>Download</strong>để c&agrave;i Windows 11 mới.</p>\r\n\r\n<p><img style=\"max-width:973px\" alt=\"Cách cập nhật Windows 11 chính thức\" src=\"https://cdn.tgdd.vn/Files/2021/10/05/1387858/cach-cap-nhat-windows-11-chinh-thuc-7_1280x433-800-resize.jpg\" /></p>\r\n\r\n<p>Ch&uacute;c c&aacute;c bạn c&oacute; những trải nghiệm tuyệt vời tr&ecirc;n Windows 11 ch&iacute;nh thức. C&ograve;n thắc mắc n&agrave;o, bạn h&atilde;y b&igrave;nh luận b&ecirc;n dưới. Nhớ ấn Like v&agrave; Chia sẻ ủng hộ m&igrave;nh nh&eacute;.</p>\r\n\r\n<p>nguồn: Thế Giới Di Động.</p>', '2021-10-26 03:22:22', '2021-10-26 21:18:31'),
(7, 'email_cron', 'binh.metan@gmail.com', '2021-12-24 10:27:49', '2021-12-26 08:37:12'),
(8, 'time_cron', '16:10', '2021-12-24 10:27:49', '2021-12-25 02:06:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history_gift_user`
--

CREATE TABLE `history_gift_user` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `address_id` int NOT NULL,
  `card_id` int DEFAULT NULL,
  `gift_id` int DEFAULT NULL,
  `gift_type` int NOT NULL DEFAULT '0',
  `qty_gift` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_done` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `history_gift_user`
--

INSERT INTO `history_gift_user` (`id`, `user_id`, `address_id`, `card_id`, `gift_id`, `gift_type`, `qty_gift`, `created_at`, `updated_at`, `is_done`) VALUES
(1, 127, 1, 1, NULL, 0, 0, '2021-12-21 09:56:57', '2021-12-21 09:56:57', 0),
(2, 129, 2, 2, NULL, 0, 0, '2021-12-22 20:07:47', '2021-12-22 20:07:47', 0),
(3, 129, 3, 3, NULL, 0, 0, '2021-12-22 20:08:16', '2021-12-22 20:08:16', 0),
(4, 129, 4, 5, NULL, 0, 0, '2021-12-22 20:08:31', '2021-12-22 20:08:31', 0),
(5, 129, 5, NULL, 3, 1, 1, '2021-12-22 20:08:44', '2021-12-22 20:08:44', 0),
(6, 129, 6, NULL, 1, 1, 1, '2021-12-22 20:08:56', '2022-01-05 03:20:24', 1),
(8, 129, 8, 7, NULL, 0, 0, '2021-12-26 08:21:17', '2021-12-26 08:21:17', 0),
(11, 129, 11, NULL, 1, 1, 1, '2021-12-29 05:31:58', '2021-12-30 18:44:04', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `management_address`
--

CREATE TABLE `management_address` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `management_address`
--

INSERT INTO `management_address` (`id`, `user_id`, `name`, `email`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(1, 127, 'Binh Nguyen', 'binh.metan@gmail.com', NULL, '0902474992', '2021-12-21 09:56:57', '2021-12-21 09:56:57'),
(2, 129, 'METAN', 'binh.metan@gmail.com', NULL, '0938738383', '2021-12-22 20:07:47', '2021-12-22 20:07:47'),
(3, 129, 'METAN', 'binh.metan@gmail.com', NULL, '0938738383', '2021-12-22 20:08:16', '2021-12-22 20:08:16'),
(4, 129, 'METAN', 'binh.metan@gmail.com', NULL, '0938738383', '2021-12-22 20:08:31', '2021-12-22 20:08:31'),
(5, 129, 'METAN', 'binh.metan@gmail.com', '150 TRAN PHU', '0938738383', '2021-12-22 20:08:44', '2021-12-22 20:08:44'),
(6, 129, 'METAN', 'binh.metan@gmail.com', '150 TRAN PHU', '0938738383', '2021-12-22 20:08:56', '2021-12-22 20:08:56'),
(7, 129, 'METAN', 'binh.metan@gmail.com', '150 TRAN PHU', '0938738383', '2021-12-22 20:09:08', '2021-12-22 20:09:08'),
(8, 129, 'METAN', 'binh.metan@gmail.com', NULL, '0938738383', '2021-12-26 08:21:17', '2021-12-26 08:21:17'),
(9, 129, 'METAN', 'binh.metan@gmail.com', '150 TRAN PHU', '0938738383', '2021-12-26 08:25:45', '2021-12-26 08:25:45'),
(10, 129, 'METAN', 'binh.metan@gmail.com', '150 TRAN PHU', '0938738383', '2021-12-26 08:29:01', '2021-12-26 08:29:01'),
(11, 129, 'METAN', 'binh.metan@gmail.com', '150 TRAN PHU', '0938738383', '2021-12-29 05:31:58', '2021-12-29 05:31:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `management_card`
--

CREATE TABLE `management_card` (
  `id` bigint UNSIGNED NOT NULL,
  `provider_id` int NOT NULL,
  `code_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seri_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `is_used` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `management_card`
--

INSERT INTO `management_card` (`id`, `provider_id`, `code_number`, `seri_number`, `price`, `score`, `status`, `is_used`, `created_at`, `updated_at`) VALUES
(1, 1, 'Naptest211201', 'Setest211201', '50000', NULL, 1, 1, '2021-12-21 00:52:48', '2021-12-21 09:56:57'),
(2, 1, 'Naptest211202', 'Setest211202', '100000', NULL, 1, 1, '2021-12-21 00:56:23', '2021-12-22 20:07:47'),
(3, 1, 'Naptest211203', 'Setest211203', '50000', NULL, 1, 1, '2021-12-21 00:57:49', '2021-12-22 20:08:16'),
(4, 2, 'Naptest211204', 'Setest211204', '50000', NULL, 1, 0, '2021-12-21 01:02:18', '2021-12-26 08:18:29'),
(5, 5, 'Naptest211206', 'Setest211206', '100000', NULL, 1, 1, '2021-12-21 01:02:18', '2021-12-22 20:08:31'),
(6, 3, 'Naptest211207', 'Setest211207', '100000', NULL, 1, 0, '2021-12-21 01:02:18', '2021-12-26 08:18:57'),
(7, 1, 'Naptest211208', 'Setest211208', '50000', NULL, 1, 1, '2021-12-21 01:02:18', '2021-12-26 08:21:17'),
(9, 2, 'Naptest211209', 'Naptest211209', '50000', NULL, 1, 0, '2021-12-30 18:48:37', '2021-12-30 18:48:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `management_gifts`
--

CREATE TABLE `management_gifts` (
  `id` bigint UNSIGNED NOT NULL,
  `gift_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gift_qty` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gift_status` int NOT NULL DEFAULT '0',
  `is_used` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_delete` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `management_gifts`
--

INSERT INTO `management_gifts` (`id`, `gift_name`, `gift_qty`, `image`, `score`, `gift_status`, `is_used`, `created_at`, `updated_at`, `is_delete`) VALUES
(1, 'MOMO 50', 50, '1639636408.png', '5', 1, 0, '2021-12-14 05:07:17', '2021-12-15 23:33:28', 0),
(3, 'Xe máy điện', 1, '1639636350.png', '10', 1, 0, '2021-12-15 23:32:30', '2021-12-15 23:32:30', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `management_provider`
--

CREATE TABLE `management_provider` (
  `id` bigint UNSIGNED NOT NULL,
  `provider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_type` int NOT NULL DEFAULT '1',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `management_provider`
--

INSERT INTO `management_provider` (`id`, `provider_name`, `provider_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mobi', 1, 1, '2021-12-13 22:34:12', '2021-12-13 22:34:12'),
(2, 'Vina', 1, 1, '2021-12-13 22:34:12', '2021-12-15 23:35:01'),
(3, 'Viettel', 1, 1, '2021-12-13 22:34:12', '2021-12-15 23:35:17'),
(4, 'Bach hoa xanh', 2, 1, '2021-12-13 22:34:12', '2021-12-13 22:34:12'),
(5, 'Coop', 2, 1, '2021-12-13 22:34:12', '2021-12-13 22:34:12'),
(6, 'VinMart', 2, 1, '2021-12-13 22:34:12', '2021-12-13 22:34:12'),
(7, 'NẠP MOMO', 1, 0, '2021-12-14 05:05:50', '2021-12-26 15:48:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_10_12_154549_create_table_questions_table', 1),
(5, '2021_10_12_154717_create_table_training_management_table', 1),
(6, '2021_10_12_154819_create_table_videos_table', 1),
(7, '2021_10_12_172113_create_table_user_test_histories_table', 1),
(8, '2021_10_13_202441_add_type_to_user_test_histories_table', 1),
(9, '2021_10_14_170314_add_usertype_to_users_table', 1),
(10, '2021_10_15_190537_add_video_to_training_management_table', 1),
(11, '2021_10_16_094628_add_phone_to_users_table', 1),
(12, '2021_10_17_101123_create_table_configs_table', 1),
(13, '2021_10_17_165412_add_status_to_training_management_table', 1),
(14, '2021_10_19_152637_add_status_to_users_table', 1),
(15, '2021_10_19_185011_create_permission_tables', 1),
(16, '2021_10_20_141450_create_table_quarter_group_question_table', 1),
(17, '2021_10_22_172108_add_is_send_mail_to_users_table', 1),
(18, '2021_10_23_120044_change_user_test_histories_column_type', 1),
(19, '2021_10_27_154847_add_video_to_videos_table', 1),
(20, '2021_10_28_160153_create_table_news_table', 1),
(21, '2021_12_09_160751_create_table_management_provider_table', 1),
(22, '2021_12_09_160952_create_table_management_card_table', 1),
(23, '2021_12_09_162906_create_table_management_address_table', 1),
(24, '2021_12_09_163138_create_table_history_gift_user_table', 1),
(25, '2021_12_09_165343_create_table_management_gifts_table', 1),
(26, '2021_12_27_005354_add_is_delete_to_management_gifts_table', 1),
(27, '2021_12_31_004605_add_is_done_to_history_gift_user_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 4),
(1, 'App\\User', 126);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_short` text COLLATE utf8mb4_unicode_ci,
  `content_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `url`, `title`, `image`, `content_short`, `content_detail`, `status`, `created_at`, `updated_at`) VALUES
(1, 'dell-ra-mat-laptop-gaming-alienware-m15-r5-va-m15-r6-cung-voi-dell-g15-series-tai-viet-nam-nhieu-trang-bi-cho-game-thu', 'Dell ra mắt laptop gaming Alienware m15 R5 và m15 R6 cùng với Dell G15 Series tại Việt Nam: Nhiều trang bị cho game thủ', '1635515414.jpg', NULL, '<h1>Dell ra mắt laptop gaming Alienware m15 R5 v&agrave; m15 R6 c&ugrave;ng với Dell G15 Series tại Việt Nam: Nhiều trang bị cho game thủ</h1>\r\n\r\n<p>By</p>\r\n\r\n<p>&nbsp;<a href=\"https://phuongtung.vn/cong-nghe/author/phuonguyen/\">Nguyễn Mai Phương Uy&ecirc;n</a></p>\r\n\r\n<p>&nbsp;-&nbsp;</p>\r\n\r\n<p>01/10/2021</p>\r\n\r\n<p><a href=\"https://phuongtung.vn/cong-nghe/dell-ra-mat-laptop-gaming-alienware-m15-r5-va-m15-r6-cung-voi-dell-g15-series-tai-viet-nam-nhieu-trang-bi-cho-game-thu/#respond\">0</a></p>\r\n\r\n<p>79</p>\r\n\r\n<p><a href=\"https://phuongtung.vn/cong-nghe/wp-content/uploads/2021/10/dell-lapgaming-1.jpg\"><img style=\"max-width:973px\" alt=\"\" src=\"https://phuongtung.vn/cong-nghe/wp-content/uploads/2021/10/dell-lapgaming-1-696x392.jpg\" style=\"height:392px; width:696px\" /></a></p>\r\n\r\n<h2>V&agrave;o ng&agrave;y 29/09,&nbsp;<a href=\"https://phuongtung.vn/pt/laptop/dell/\" target=\"_blank\">Dell</a>&nbsp;đ&atilde; ch&iacute;nh thức ra mắt hai d&ograve;ng sản phẩm&nbsp;<a href=\"https://phuongtung.vn/pt/laptop/\" target=\"_blank\">laptop</a>&nbsp;gaming Alienware M-Series v&agrave; Dell G-Series mới tại thị trường Đ&ocirc;ng Nam &Aacute; v&agrave; c&aacute;c thị trường ch&acirc;u &Aacute; mới nổi (Asia Emerging Market &ndash; AEM).</h2>\r\n\r\n<h3><strong>Alienware m15 R6 v&agrave; m15 Ryzen Edition R5</strong></h3>\r\n\r\n<p><a href=\"https://phuongtung.vn/cong-nghe/wp-content/uploads/2021/10/dell-lapgaming-2.jpg\"><img style=\"max-width:973px\" alt=\"\" src=\"https://phuongtung.vn/cong-nghe/wp-content/uploads/2021/10/dell-lapgaming-2.jpg\" style=\"height:450px; width:800px\" /></a></p>\r\n\r\n<p>Đ&acirc;y l&agrave; mẫu Alienware đầu ti&ecirc;n được ho&agrave;n thiện với c&ocirc;ng thức sơn mới Silky-Smooth High-Endurance (mượt như lụa v&agrave; độ bền cao) để tăng khả năng chống ố v&agrave; tạo cảm gi&aacute;c cao cấp.</p>\r\n\r\n<p><strong>Cấu h&igrave;nh phần cứng của&nbsp;Alienware m15 R6:</strong></p>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh: 15.6 inch độ ph&acirc;n giải QHD (2.560 x 1.440 pixel), tần số qu&eacute;t 240Hz v&agrave; độ s&aacute;ng 400 nits.</li>\r\n	<li>Vi xử l&yacute;: &nbsp;Intel Core H-series thế hệ 11.</li>\r\n	<li>Bộ nhớ: 32 GB RAM DDR4 RAM v&agrave; bộ nhớ SSD l&ecirc;n tới 2 TB.</li>\r\n	<li>Card m&agrave;n h&igrave;nh: NVIDIA GeForce RTX 3080 GPU đi k&egrave;m 8 GB VRAM GDDR6.</li>\r\n	<li>Pin: 86 Whr.</li>\r\n</ul>\r\n\r\n<p><strong>Cấu h&igrave;nh phần cứng của&nbsp;Alienware m15 Ryzen Edition R5:</strong></p>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh: 15.6 inch độ ph&acirc;n giải Full HD, tần số qu&eacute;t 165 Hz v&agrave; độ s&aacute;ng tối đa 300 nits.</li>\r\n	<li>Vi xử l&yacute;: AMD Ryzen 5000 H-Series.</li>\r\n	<li>Card m&agrave;n h&igrave;nh: NVIDIA GeForce RTX 30 Series&nbsp;c&ugrave;ng với 6GB VRAM GDDR6.</li>\r\n	<li>Pin:&nbsp;86 Whr.</li>\r\n</ul>\r\n\r\n<p><a href=\"https://phuongtung.vn/cong-nghe/wp-content/uploads/2021/10/dell-lapgaming-3.jpg\"><img style=\"max-width:973px\" alt=\"\" src=\"https://phuongtung.vn/cong-nghe/wp-content/uploads/2021/10/dell-lapgaming-3.jpg\" style=\"height:450px; width:800px\" /></a></p>\r\n\r\n<p>Phi&ecirc;n bản cấu h&igrave;nh cao nhất của Alienware m15 đi k&egrave;m t&ugrave;y chọn b&agrave;n ph&iacute;m cơ h&agrave;nh tr&igrave;nh cực thấp (ultra-low profile) được đồng ph&aacute;t triển bởi Cherry MX, cho ph&eacute;p tối ưu h&oacute;a chiếc&nbsp;laptop&nbsp;với mọi ph&iacute;m đều c&oacute; thể t&ugrave;y chỉnh theo &yacute; muốn v&agrave; hệ thống đ&egrave;n nền RGB AlienFX tr&ecirc;n mỗi ph&iacute;m với hơn 16.8 triệu m&agrave;u.</p>\r\n\r\n<p><a href=\"https://phuongtung.vn/cong-nghe/wp-content/uploads/2021/10/dell-lapgaming-4.jpg\"><img style=\"max-width:973px\" alt=\"\" src=\"https://phuongtung.vn/cong-nghe/wp-content/uploads/2021/10/dell-lapgaming-4.jpg\" style=\"height:450px; width:800px\" /></a></p>\r\n\r\n<p>Ngo&agrave;i ra, m&aacute;y c&ograve;n được trang bị chế độ Dell Dark Core, một t&iacute;nh năng mới l&agrave;m tối phần nội thất laptop để hạn chế g&acirc;y xao nh&atilde;ng, tăng sự tập trung.</p>\r\n\r\n<p>Alienware m15 R6 sẽ c&oacute; mức gi&aacute; khởi điểm l&agrave;&nbsp;61.99 triệu đồng, c&ograve;n Alienware M15 Ryzen Edition R5 c&oacute; gi&aacute; khởi điểm l&agrave;&nbsp;58.99 triệu đồng v&agrave; dự kiến sẽ được b&aacute;n ra v&agrave;o cuối th&aacute;ng 10/2021.</p>\r\n\r\n<h3><strong>Dell G15 v&agrave; G15 Ryzen Edition</strong></h3>\r\n\r\n<p><a href=\"https://phuongtung.vn/cong-nghe/wp-content/uploads/2021/10/dell-lapgaming-5.jpg\"><img style=\"max-width:973px\" alt=\"\" src=\"https://phuongtung.vn/cong-nghe/wp-content/uploads/2021/10/dell-lapgaming-5.jpg\" style=\"height:450px; width:800px\" /></a></p>\r\n\r\n<p>Dell G15 v&agrave; G15 Ryzen Edition sở hữu một kiểu d&aacute;ng thanh tho&aacute;t, viền m&agrave;n h&igrave;nh hai b&ecirc;n mỏng, bề mặt được phủ lớp sơn nước c&oacute; h&agrave;m lượng VOC thấp. Đồng thời, hai mẫu G15 mới được trang bị thiết kế tản nhiệt lấy cảm hứng từ Alienware để tăng tối đa luồng gi&oacute; l&agrave;m m&aacute;t v&agrave; tản nhiệt một c&aacute;ch tối ưu.</p>\r\n\r\n<p><strong>Cấu h&igrave;nh Dell G15:</strong></p>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh: K&iacute;ch thước 15.6 inch, độ ph&acirc;n giải Full HD (1.920 x 1.080) v&agrave; t&ugrave;y chọn tần số qu&eacute;t 120 Hz hoặc 165 Hz.</li>\r\n	<li>Vi&nbsp;xử l&yacute; Intel Core H-Series thế hệ 11 v&agrave; card m&agrave;n h&igrave;nh laptop NVIDIA GeForce RTX 30 Series.&nbsp;</li>\r\n	<li>Bộ nhớ: Bộ nhớ RAM l&ecirc;n đến 16 GB&nbsp;DDR4 v&agrave; l&ecirc;n đến 512 GB SSD.</li>\r\n</ul>\r\n\r\n<p><strong>Cấu h&igrave;nh Dell G15 Ryzen Edition:</strong></p>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh: K&iacute;ch thước 15.6 inch, độ ph&acirc;n giải Full HD (1.920 x 1.080) v&agrave; t&ugrave;y chọn tần số qu&eacute;t 120 Hz hoặc 165 Hz.</li>\r\n	<li>Vi xử l&yacute; AMD Ryzen 5000 series v&agrave; card m&agrave;n h&igrave;nh laptop NVIDIA GeForce RTX 30 Series.</li>\r\n	<li>Bộ nhớ RAM DDR4 3.200 MHz v&agrave; c&oacute; khả năng n&acirc;ng cấp.</li>\r\n</ul>\r\n\r\n<p><a href=\"https://phuongtung.vn/cong-nghe/wp-content/uploads/2021/10/dell-lapgaming-6.jpg\"><img style=\"max-width:973px\" alt=\"\" src=\"https://phuongtung.vn/cong-nghe/wp-content/uploads/2021/10/dell-lapgaming-6.jpg\" style=\"height:450px; width:800px\" /></a></p>\r\n\r\n<p>Ngo&agrave;i ra, cả hai c&ograve;n được trang bị ph&iacute;m độc quyền &ldquo;Game Shift&rdquo;, gi&uacute;p tăng tốc độ l&agrave;m m&aacute;t ngay lập tức khi chơi những tựa game nặng.</p>\r\n\r\n<p>Dell G15 c&oacute; mức gi&aacute; khởi điểm l&agrave;&nbsp;27.99 triệu đồng, c&ograve;n Dell G15&nbsp;Ryzen Edition c&oacute; gi&aacute; từ&nbsp;24.99 triệu đồng v&agrave; sẽ được mở b&aacute;n v&agrave;o cuối th&aacute;ng 10/2021.</p>\r\n\r\n<p>Bạn c&oacute; ấn tượng với c&aacute;c mẫu laptop gaming m&agrave; Dell mới giới thiệu kh&ocirc;ng?</p>\r\n\r\n<p>Nguồn: phuongtung.vn</p>', 0, '2021-10-29 06:50:14', '2021-10-29 06:50:14'),
(2, 'dell-alienware-chinh-thuc-ra-mat-tai-thi-truong-viet-nam', 'Dell Alienware chính thức ra mắt tại thị trường Việt Nam', '1635515563.jpg', 'Hôm nay, Dell đã chính thức ra mắt hai dòng sản phẩm laptop chơi game Alienware M-Series và Dell G-Series mới tại Đông Nam Á và các thị trường châu Á mới nổi', '<p>Dell Technologies h&ocirc;m nay ch&iacute;nh thức ra mắt hai d&ograve;ng sản phẩm laptop chơi game Alienware M-Series v&agrave; Dell G-Series mới tại Đ&ocirc;ng Nam &Aacute; v&agrave; c&aacute;c thị trường ch&acirc;u &Aacute; mới nổi (Asia Emerging Market - AEM).</p>\r\n\r\n<p>&Ocirc;ng Anothai Wettayakorn, Ph&oacute; Chủ tịch, Mảng Kinh doanh Ti&ecirc;u d&ugrave;ng tại c&aacute;c thị trường ch&acirc;u &Aacute; mới nổi v&agrave; Đ&ocirc;ng Nam &Aacute;, Dell Technologies, chia sẻ:&nbsp;&ldquo;Ch&uacute;ng t&ocirc;i tin rằng c&aacute;c game thủ sẽ vui mừng ch&agrave;o đ&oacute;n Alienware c&oacute; mặt tại Indonesia, Việt Nam, Campuchia, Brunei, Myanmar v&agrave; M&ocirc;ng Cổ. Hợp t&aacute;c c&ugrave;ng Intel v&agrave; AMD, ch&uacute;ng t&ocirc;i kh&ocirc;ng chỉ đơn giản mang đến thị trường những c&ocirc;ng nghệ chơi game mới nhất, những sản phẩm ch&uacute;ng t&ocirc;i giới thiệu ng&agrave;y h&ocirc;m nay sẽ n&acirc;ng tầm trải nghiệm chơi game l&ecirc;n cao hơn nữa, ph&aacute; bỏ mọi giới hạn. Alienware lu&ocirc;n tự h&agrave;o l&agrave; thương hiệu tạo ra những cỗ m&aacute;y hiệu năng cao mang đến trải nghiệm chơi game sống động nhất&rdquo;.</p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://api.thinkview.vn/uploads/editor/dell-alienware-chinh-thuc-ra-mat-tai-thi-truong-viet-nam-3.jpg\" /></p>\r\n\r\n<p>Được x&acirc;y dựng dựa tr&ecirc;n di sản 25 năm ti&ecirc;n phong ở mảng m&aacute;y t&iacute;nh chơi game, Alienware được cộng đồng game thủ đ&oacute;n nhận nhờ kiểu d&aacute;ng hầm hố, thiết kế mang t&iacute;nh đặc trưng v&agrave; hiệu năng ấn tượng.</p>\r\n\r\n<h2>Hiệu năng đồ họa đỉnh cao với Alienware m15 R6 v&agrave; M15 Ryzen Edition R5</h2>\r\n\r\n<p>Hai mẫu&nbsp;Alienware m15 R6&nbsp;v&agrave;&nbsp;m15 Ryzen Edition R5&nbsp;mới l&agrave; sự kết hợp giữa những c&ocirc;ng nghệ tối t&acirc;n v&agrave; thiết kế mới để mang đến trải nghiệm chơi game kh&ocirc;ng giới hạn. Trang bị m&agrave;n h&igrave;nh c&oacute; tốc độ nhanh nhất của Alienware m&agrave; chưa mẫu m&aacute;y t&iacute;nh x&aacute;ch tay 15&rdquo; n&agrave;o đạt được, c&aacute;c game thủ sẽ c&oacute; được trải nghiệm chơi game mượt m&agrave; với tấm nền QHD 240Hz. Game thủ giờ đ&acirc;y sẽ h&ograve;a m&igrave;nh v&agrave;o tr&ograve; chơi nhiều hơn nhờ Dark Core, một t&iacute;nh năng mới l&agrave;m tối phần nội thất laptop để hạn chế g&acirc;y xao nh&atilde;ng, tăng sự tập trung.</p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://api.thinkview.vn/uploads/editor/dell-alienware-chinh-thuc-ra-mat-tai-thi-truong-viet-nam-15.jpg\" /></p>\r\n\r\n<p>Đ&acirc;y cũng l&agrave; mẫu Alienware đầu ti&ecirc;n được ho&agrave;n thiện với c&ocirc;ng thức sơn mới Silky-Smooth High-Endurance (mượt như lụa v&agrave; độ bền cao) để tăng khả năng chống ố v&agrave; tạo cảm gi&aacute;c cao cấp.</p>\r\n\r\n<p>Cấu h&igrave;nh cao nhất của Alienware m15 đi k&egrave;m t&ugrave;y chọn b&agrave;n ph&iacute;m cơ h&agrave;nh tr&igrave;nh cực thấp (ultra-low profile)&nbsp;được đồng ph&aacute;t triển bởi Cherry MX, do đ&oacute; game thủ c&oacute; thể tối ưu h&oacute;a chiếc m&aacute;y t&iacute;nh x&aacute;ch tay của m&igrave;nh với mọi ph&iacute;m đều c&oacute; thể t&ugrave;y chỉnh theo &yacute; muốn v&agrave; hệ thống đ&egrave;n nền RGB AlienFX tr&ecirc;n mỗi ph&iacute;m với hơn 16,8 triệu m&agrave;u.</p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://api.thinkview.vn/uploads/editor/dell-alienware-chinh-thuc-ra-mat-tai-thi-truong-viet-nam-13.jpg\" /></p>\r\n\r\n<p>C&aacute;c mẫu laptop Alienware được trang bị cấu h&igrave;nh hiệu năng cao như sau:</p>\r\n\r\n<ul>\r\n	<li>Hỗ trợ vi xử l&yacute; di động AMD Ryzen 5000 H-Series v&agrave; card m&agrave;n h&igrave;nh laptop NVIDIA GeForce RTX 30 Series [Alienware m15 Ryzen Edition R5]</li>\r\n	<li>Vi xử l&yacute; di động Intel&reg; Core&trade; H-series&nbsp;thế hệ 11 mới nhất v&agrave; card m&agrave;n h&igrave;nh NVIDIA GeForce RTX 30-Series mới [Alienware m15 R6]</li>\r\n	<li>Lần đầu ti&ecirc;n, người d&ugrave;ng c&oacute; thể n&acirc;ng cấp bộ nhớ RAM DDR4 3200Mhz tr&ecirc;n m&aacute;y Alienware 15&rdquo;</li>\r\n</ul>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://api.thinkview.vn/uploads/editor/dell-alienware-chinh-thuc-ra-mat-tai-thi-truong-viet-nam-32.jpg\" /></p>\r\n\r\n<h2>Thiết kế mới sẵn s&agrave;ng chiến game tr&ecirc;n Dell G15 v&agrave; G15 Ryzen Edition</h2>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://api.thinkview.vn/uploads/editor/dell-alienware-chinh-thuc-ra-mat-tai-thi-truong-viet-nam-33.jpg\" /></p>\r\n\r\n<p>Dell mong muốn mang c&aacute;c tr&ograve; chơi AAA (bom tấn) đến với nhiều người d&ugrave;ng hơn qua hai mẫu laptop 15&rdquo; mới được thay đổi ho&agrave;n to&agrave;n về thiết kế l&agrave;&nbsp;Dell G15&nbsp;v&agrave;&nbsp;G15 Ryzen Edition. Về diện mạo, mẫu laptop n&agrave;y sở hữu một kiểu d&aacute;ng thanh tho&aacute;t, viền m&agrave;n h&igrave;nh hai b&ecirc;n mỏng, bề mặt được phủ lớp sơn nước c&oacute; h&agrave;m lượng VOC thấp. Về sức mạnh b&ecirc;n trong, laptop G15 mới được trang bị hưởng thiết kế tản nhiệt lấy cảm hứng từ Alienware để tăng tối đa luồng gi&oacute; l&agrave;m m&aacute;t v&agrave; tản nhiệt một c&aacute;ch tối ưu. Sự lột x&aacute;c to&agrave;n diện n&agrave;y c&ugrave;ng với cấu h&igrave;nh mạnh mẽ gi&uacute;p G15 sẵn s&agrave;ng để chinh phục mọi tr&ograve; chơi c&ugrave;ng game thủ:</p>\r\n\r\n<ul>\r\n	<li>Hỗ trợ vi xử l&yacute; AMD Ryzen 5000 series, card m&agrave;n h&igrave;nh laptop NVIDIA GeForce RTX 30 Series, bộ nhớ RAM DDR4 3200MHz cho ph&eacute;p người d&ugrave;ng n&acirc;ng cấp [Dell G15 Ryzen Edition]</li>\r\n	<li>Vi xử l&yacute; Intel Core thế hệ 11 v&agrave; card m&agrave;n h&igrave;nh laptop NVIDIA GeForce RTX 30 Series [Dell G15]</li>\r\n	<li>Ph&iacute;m độc quyền &ldquo;Game Shift&rdquo; tr&ecirc;n G Series sẽ tăng tốc độ l&agrave;m m&aacute;t ngay lập tức khi chơi những tựa game nặng</li>\r\n	<li>T&ugrave;y chọn tấm nền 120Hz hoặc 165Hz. Tất cả c&aacute;c tấm nền đều hỗ trợ c&ocirc;ng nghệ hạn chế &aacute;nh s&aacute;ng xanh.</li>\r\n</ul>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://api.thinkview.vn/uploads/editor/dell-alienware-chinh-thuc-ra-mat-tai-thi-truong-viet-nam-40.jpg\" /></p>\r\n\r\n<h2>Gi&aacute; b&aacute;n v&agrave; Ph&acirc;n phối</h2>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Sản phẩm</p>\r\n			</td>\r\n			<td>\r\n			<p>Gi&aacute; khởi điểm</p>\r\n			</td>\r\n			<td>\r\n			<p>Ng&agrave;y b&aacute;n ch&iacute;nh thức</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>Alienware m15 Ryzen Edition R5</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p>58.990.000 VND</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p>Cuối th&aacute;ng 10/2021</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>Alienware m15 R6&nbsp;</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p>61.990.000 VND</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p>Cuối th&aacute;ng 10/2021</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>Dell G15 Ryzen Edition</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p>24.990.000 VND</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p>Cuối th&aacute;ng 10/2021</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>Dell G15&nbsp;</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p>27.990.000 VND</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p>Cuối th&aacute;ng 10/2021</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Để biết th&ecirc;m về gi&aacute; b&aacute;n, xin vui l&ograve;ng li&ecirc;n hệ c&aacute;c đối t&aacute;c ủy quyền của Dell, đặc biệt l&agrave; chuỗi hệ thống cửa h&agrave;ng ThinkPro, một trong những đơn vị u&yacute; t&iacute;n nhất đồng h&agrave;nh c&ugrave;ng với Dell Technologies trong đợt mở b&aacute;n những chiếc m&aacute;y tr&ecirc;n. C&aacute;c bạn h&atilde;y<a href=\"https://thinkpro.vn/\" target=\"_blank\"><strong>&nbsp;click v&agrave;o link n&agrave;y</strong></a>&nbsp;để t&igrave;m hiểu th&ecirc;m về ch&iacute;nh s&aacute;ch bảo h&agrave;nh cũng như gi&aacute; b&aacute;n ch&iacute;nh x&aacute;c nhất của c&aacute;c sản phẩm tr&ecirc;n tại ThinkPro nh&eacute;!&nbsp;</p>\r\n\r\n<p>nguồn: ThinkView</p>', 0, '2021-10-29 06:52:43', '2021-10-29 06:52:43'),
(3, 'dell-xps-9310-co-thuc-su-lam-lu-mo-macbook-nhu-loi-don', 'Dell XPS 9310, có thực sự làm lu mờ Macbook như lời đồn?', '1635515694.jpg', 'XPS 9310 2in1 là một trong những cái tên đang dẫn đầu bảng trong danh sách những chiếc ultrabook tốt nhất hiện nay. Đâu là lý do để XPS vượt qua được nhiều đối thủ lớn đề đạt được vị trí cao như vậy. Hãy cùng Dell Ecommerce khám phá đứa con cưng này của Dell nhé.', '<h1>Dell XPS 9310, c&oacute; thực sự l&agrave;m lu mờ Macbook như lời đồn?</h1>\r\n\r\n<ul>\r\n	<li>Nguyễn Thạch Thảo&nbsp;-&nbsp;23.09.2021</li>\r\n	<li>&nbsp;</li>\r\n	<li><a href=\"https://dellonline.vn/blogs/ban-tin-cong-nghe/dell-xps-9310-co-thuc-su-lam-lu-mo-macbook-nhu-loi-don#\">&nbsp;Bản tin c&ocirc;ng nghệ</a></li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;<a href=\"https://dellonline.vn/blogs/ban-tin-cong-nghe/dell-xps-9310-co-thuc-su-lam-lu-mo-macbook-nhu-loi-don#comments\">0&nbsp;B&igrave;nh luận</a></li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><em>XPS 9310 2in1 l&agrave; một trong những c&aacute;i t&ecirc;n đang dẫn đầu bảng trong danh s&aacute;ch những chiếc ultrabook tốt nhất hiện nay. Đ&acirc;u l&agrave; l&yacute; do để XPS vượt qua được nhiều đối thủ lớn đề đạt được vị tr&iacute; cao như vậy. H&atilde;y c&ugrave;ng Dell Ecommerce kh&aacute;m ph&aacute; đứa con cưng n&agrave;y của Dell nh&eacute;.&nbsp;</em></p>\r\n\r\n<h2><strong>Dell XPS 9310, c&oacute; thực sự l&agrave;m lu mờ Macbook như lời đồn?</strong></h2>\r\n\r\n<p>Trong tầm gi&aacute; 40 triệu c&ugrave;ng m&igrave;nh, Dell XPS thường được đặt l&ecirc;n b&agrave;n c&acirc;n với Macbook Pro, v&igrave; ch&uacute;ng đều thuộc thế hệ ultrabook cao cấp v&agrave; đẹp nhất hiện nay với nhiều t&iacute;nh năng tiện &iacute;ch, t&iacute;ch hợp c&ocirc;ng nghệ hiện đại, đến từ 2 nh&agrave; sản xuất m&aacute;y t&iacute;nh lớn nhất thế giới.&nbsp;</p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/xps-13-9310-03_3ce0db884d90451aa99516ece48e5888_grande.jpg\" /></p>\r\n\r\n<p>Để đ&aacute;nh gi&aacute; được ch&iacute;nh x&aacute;c n&ecirc;n mua XPS 9310 hay Macbook th&igrave; rất kh&oacute;, v&igrave; mỗi hệ điều h&agrave;nh đều c&oacute; những thế mạnh ri&ecirc;ng v&agrave; đang ho&agrave;n th&agrave;nh tốt sứ mệnh l&agrave; ch&igrave;a kh&oacute;a c&ocirc;ng nghệ cho cuộc sống con người. Tuy nhi&ecirc;n, x&eacute;t về kh&iacute;a cạnh chủ quan, dellonline.vn thực sự đ&aacute;nh gi&aacute; cao về những trải nghiệm tuyệt vời m&agrave; Dell đ&atilde; đem đến cho kh&aacute;ch h&agrave;ng tr&ecirc;n d&ograve;ng XPS 9310 2in1.</p>\r\n\r\n<h2><strong>Thiết kế ho&agrave;n mỹ tới từng chi tiết&nbsp;</strong></h2>\r\n\r\n<p>XPS 9310 thực sự g&acirc;y được ấn tượng mạnh mẽ khi sở hữu trọng lượng chỉ 1,3 kg v&agrave; mỏng như một chiếc smartphone. Dell vẫn giữ thiết kế tối giản của m&igrave;nh, nhưng kh&ocirc;ng đơn điệu m&agrave; tinh tế v&agrave; hiện đại. Đặc biệt với chất liệu kim loại nguy&ecirc;n khối v&agrave; c&aacute;c đường cắt tinh xảo nhờ c&ocirc;ng nghệ CNC. Khung m&aacute;y vẫn được gia cố th&ecirc;m 1 lớp carbon fiber, kh&ocirc;ng chỉ đem đến c&aacute;c điểm cộng về thị gi&aacute;c m&agrave; c&ograve;n th&acirc;n thiện với người d&ugrave;ng, kh&ocirc;ng b&aacute;m v&acirc;n tay, chống xước tốt.&nbsp;</p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/81gkuttxhxl_ac_sl1500__1607048694.jpg_e64c8e972e2a437fb591fd488d3b70d3_grande.jpg\" /></p>\r\n\r\n<p>Cổng kết nối b&ecirc;n cạnh m&aacute;y được tối giản th&ocirc;ng minh, 2 cổng thunderbolt 4 hỗ trợ xuất h&igrave;nh, kết nối v&agrave; sạc nhanh.&nbsp;</p>\r\n\r\n<p>Điểm trừ duy nhất trong thiết kế của XPS 3910 2in1 l&agrave; bản lề hơi to v&agrave; c&oacute; m&agrave;u x&aacute;m, ch&uacute;ng được khắc phục trong c&aacute;c thế hệ sau. Tuy nhi&ecirc;n, kh&ocirc;ng thể xem nhẹ trải nghiệm tuyệt vời với bản lề 360, gi&uacute;p người d&ugrave;ng linh động trong c&aacute;c địa h&igrave;nh l&agrave;m việc kh&aacute;c nhau, dễ d&agrave;ng gập mở như một tablet.&nbsp;</p>\r\n\r\n<h2><strong>B&agrave;n ph&iacute;m v&agrave; touchpad th&acirc;n thiện&nbsp;</strong></h2>\r\n\r\n<p>B&agrave;n ph&iacute;m chiclet tận dụng tối đa kh&ocirc;ng gian c&oacute; sẵn, chạy b&agrave;n ph&iacute;m gần như s&aacute;t m&eacute;p. C&aacute;c ph&iacute;m bấm được tối ưu về k&iacute;ch thước, layout ph&iacute;m được bố tr&iacute; hợp l&yacute;, độ nảy ph&iacute;m tuyệt vời, đảm bảo hạn chế việc g&otilde; sai v&agrave; kh&ocirc;ng g&acirc;y mỏi tay trong suốt thời gian nhập liệu d&agrave;i.&nbsp;</p>\r\n\r\n<p>Khả năng tracking v&agrave; phản hồi của touchpad được đ&aacute;nh gi&aacute; kh&aacute; tốt. Tuy nhi&ecirc;n, k&iacute;ch thước lại l&agrave; một điểm trừ.&nbsp;</p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/unnamed_89d6a59f45f8410ca7cdb009b91e37bc_grande.jpg\" /></p>\r\n\r\n<h2><strong>Th&ocirc;ng số m&agrave;n h&igrave;nh kh&ocirc;ng phải l&agrave; tất cả</strong></h2>\r\n\r\n<p>C&ocirc;ng nghệ IPS cải thiện g&oacute;c nh&igrave;n, cho chất lượng h&igrave;nh ảnh r&otilde; n&eacute;t từ mọi hướng. Tỉ lệ hiển thị 16:10. Độ s&aacute;ng trung b&igrave;nh 486.5 nits, cao hơn Macbook Pro(435 nit) v&agrave; c&aacute;c d&ograve;ng laptop cao cấp c&ugrave;ng ph&acirc;n kh&uacute;c kh&aacute;c.&nbsp;</p>\r\n\r\n<p>Dell c&oacute; cung cấp cả phi&ecirc;n bản 4K, tuy nhi&ecirc;n, n&oacute; thực sự kh&ocirc;ng cần thiết, v&igrave; ở những phi&ecirc;n bản FHD+ người d&ugrave;ng đ&atilde; ho&agrave;n to&agrave;n trải nghiệm được c&ocirc;ng nghệ h&igrave;nh ảnh tuyệt vời.&nbsp;</p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/laptop-dell-xps-13-9310-70231343-2-in-1_8ad84c15c344471d8923d752ffc8bd44_grande.jpg\" /></p>\r\n\r\n<p>Tất cả c&aacute;c dải m&agrave;u của m&aacute;y được thể hiện tốt: 100% sRGB, 76% AdobeRGB, 80% P3 c&ugrave;ng hơn 6 triệu m&agrave;u. Độ tương phản 1200:1, kết hợp với c&ocirc;ng nghệ Dolby Vision, cung cấp v&ugrave;ng tối s&acirc;u gấp 40 lần v&agrave; v&ugrave;ng s&aacute;ng hơn 10 lần. Đem đến h&igrave;nh ảnh ch&acirc;n thực chưa từng c&oacute;.&nbsp;</p>\r\n\r\n<p>Tốc độ khung h&igrave;nh tr&ecirc;n m&aacute;y cũng được cải thiện l&ecirc;n 120Ghz, kh&ocirc;ng chỉ đ&aacute;p ứng được chuyển động của c&aacute;c bộ phim chất lượng cao m&agrave; c&ograve;n phục vụ hữu &iacute;ch cho render video v&agrave; chơi game.&nbsp;</p>\r\n\r\n<p>V&agrave; đặc biệt nhất l&agrave; m&agrave;n h&igrave;nh cảm ứng nhạy b&eacute;n, đem đến trải nghiệm sử dụng tốt hơn, tiện &iacute;ch hơn, đặc biệt với những người d&ugrave;ng kh&ocirc;ng quen sử dụng touchpad.</p>\r\n\r\n<h2><strong>Hệ thống loa c&oacute; sự cải tiến</strong></h2>\r\n\r\n<p>Trong phi&ecirc;n bản Dell XPS 9310, cụm loa k&eacute;p được thiết kế dọc theo c&aacute;c cạnh của m&aacute;y, sử dụng c&ocirc;ng nghệ &acirc;m thanh Waves MaxxAudio cho chất &acirc;m to r&otilde;, &acirc;m bass mạnh, khắc phục được hạn chế về &acirc;m thanh, vốn l&agrave; vấn đề của mọi chiếc laptop.&nbsp;</p>\r\n\r\n<h2><strong>XPS 9310 2in1 - Chuẩn Intel Evo&nbsp;</strong></h2>\r\n\r\n<p>Intel Evo l&agrave; bộ ti&ecirc;u chuẩn được Intel đưa ra với mục ti&ecirc;u thiết kế lại laptop ph&ugrave; hợp với nhu cầu sử dụng của nhịp sống hiện đại. N&oacute; kh&ocirc;ng chỉ đem lại trải nghiệm tiện &iacute;ch hơn m&agrave; c&ograve;n cho ph&eacute;p c&aacute; nh&acirc;n h&oacute;a theo từng y&ecirc;u cầu người d&ugrave;ng. Được thể hiện ở t&iacute;nh di động, hiệu năng v&agrave; thời lượng d&ugrave;ng pin.&nbsp;</p>\r\n\r\n<p>Cụ thể thời lượng pin phải đ&aacute;p ứng được tr&ecirc;n 9 giờ sử dụng ở m&agrave;n h&igrave;nh FHD, sạc nhanh. Khả năng xuất t&iacute;n hiệu ra m&agrave;n h&igrave;nh chuẩn 8K@60Hz hoặc 4 m&agrave;n h&igrave;nh 4K@60Hz, cho ph&eacute;p mở rộng kh&ocirc;ng gian l&agrave;m việc linh hoạt theo nhu cầu sử dụng. Hiệu năng mạnh mẽ, đủ khả năng giải quyết cả c&ocirc;ng việc c&ocirc;ng ty v&agrave; đồ họa.&nbsp;</p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/dell-xps-9310-2020-2_950c2d1fa3e34a11b5364b9071a189fe_grande.jpg\" /></p>\r\n\r\n<p>C&ocirc;ng nghệ n&agrave;y cũng y&ecirc;u cầu t&iacute;nh sẵn s&agrave;ng cao, thời gian chuyển từ trạng th&aacute;i ngủ (sleep) trở lại v&agrave; khởi động c&aacute;c phần mềm chỉ dưới một gi&acirc;y. Về t&iacute;nh tương th&iacute;ch, laptop hỗ trợ giao tiếp tốc độ cao Thunderbolt 4 v&agrave; kết nối Wi-Fi 6 (802.11ax) cho hiệu suất kết nối trong m&ocirc;i trường lưu lượng dữ liệu cao, mật độ kết nối d&agrave;y đặc v&agrave; sự can nhiễu t&iacute;n hiệu lớn do việc cạnh tranh băng tần.</p>\r\n\r\n<p>Về cơ bản, XPS 9310 đ&aacute;p ứng được ho&agrave;n to&agrave;n những y&ecirc;u cầu n&agrave;y, kh&ocirc;ng phải dĩ nhi&ecirc;n m&agrave; XPS được người d&ugrave;ng v&agrave; c&aacute;c chuy&ecirc;n gia đ&aacute;nh gi&aacute; h&agrave;i l&ograve;ng đến tr&ecirc;n 92% v&agrave; trở th&agrave;nh đối trọng trực tiếp của Macbook Pro.&nbsp;</p>\r\n\r\n<h2><strong>Cấu h&igrave;nh mạnh mẽ, giải quyết mọi c&ocirc;ng việc trong tầm tay.&nbsp;</strong></h2>\r\n\r\n<p>XPS đ&atilde; c&oacute; sự kết hợp tuyệt vời c&ugrave;ng Intel để thay đổi tiến tr&igrave;nh sản xuất l&ecirc;n 10nm, cải tiến hiệu suất tổng thể của m&aacute;y l&ecirc;n gấp 2 lần. Trong b&agrave;i kiểm tra&nbsp;&nbsp;Geekbench 5 m&aacute;y đạt hiệu suất 1.539 l&otilde;i đơn, 5,365 điểm, vượt qua mức trung b&igrave;nh 4,104 điểm của d&ograve;ng laptop cao cấp. Ở 3DMark, XPS 13 đạt 1.547 trong Time Spy; 4,173 ở Firestrike; v&agrave; 13.300 trong Sky Diver. Ngay cả b&agrave;i kiểm tra PCMark 10, XPS 13 cũng đạt được điểm số kh&aacute; ấn tượng - 4.816. Nghĩa l&agrave; XPS 3910 2in1 thực sự l&agrave; một sản phẩm đa nhiệm tuyệt vời cho ph&eacute;p người d&ugrave;ng thực hiện tốt mọi c&ocirc;ng việc h&agrave;ng ng&agrave;y.&nbsp;</p>\r\n\r\n<p>Ổ cứng SSD thực sự l&agrave; một điểm cộng kh&ocirc;ng thể bỏ qua khi n&oacute; copy 1 tệp tin 25GB với tốc độ l&agrave; 814.4 MBps, vượt kh&aacute; xa so với&nbsp;&nbsp;mức trung b&igrave;nh ph&acirc;n kh&uacute;c l&agrave; 604.5 MBps.</p>\r\n\r\n<p>Với những con số m&agrave; XPS 3910 2in1 đạt được, Dellonline.vn thực sự chỉ biết &lsquo;Wow&rsquo; để thể hiện th&aacute;i độ l&uacute;c n&agrave;y của m&igrave;nh.&nbsp;</p>\r\n\r\n<h2><strong>XPS 9310 2in1 -&nbsp;C&ocirc;ng nghệ đồ họa ấn tượng</strong></h2>\r\n\r\n<p>Với c&aacute;c chip đồ họa xuất sắc của thế hệ Intel 10 v&agrave; 11, XPS đ&atilde; tăng tốc độ xử l&yacute; h&igrave;nh ảnh l&ecirc;n 2,7 lần.&nbsp;&nbsp;Gi&uacute;p m&aacute;y c&oacute; thể dễ d&agrave;ng đ&aacute;p ứng được c&aacute;c y&ecirc;u cầu về đồ họa v&agrave; chơi game hiện h&agrave;nh</p>\r\n\r\n<p>Thực tế cho thấy, XPS 9310 ho&agrave;n to&agrave;n c&oacute; thể k&eacute;o được tựa game Fortnite với setting đồ họa cao nhất, FPS trung b&igrave;nh cho từ 55 đến 60. C&aacute;c tựa game AAA hầu như kh&ocirc;ng phải vấn đề với đứa con cưng n&agrave;y của Dell.&nbsp;</p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/xps_9310_6ecc433c68e04005abcff555dff2e65a_grande.jpg\" /></p>\r\n\r\n<p>Tuy nhi&ecirc;n, dưới g&oacute;c độ c&ocirc;ng nghệ v&agrave; bỏ qua những ưu điểm về th&ocirc;ng số, ch&uacute;ng ta cần nh&igrave;n nhận ch&iacute;nh x&aacute;c, dell XPS kh&ocirc;ng phải một chiếc laptop chuy&ecirc;n game, v&igrave; vậy n&oacute; kh&ocirc;ng được cung cấp c&aacute;c t&iacute;nh năng chuy&ecirc;n biệt như Alienware, game shift,...hay hệ thống tản nhiệt chuy&ecirc;n biệt. Khiến trải nghiệm chơi game kh&ocirc;ng thể xuất sắc như d&ograve;ng Dell gaming. Đồng thời, cũng tạo th&ecirc;m g&aacute;nh nặng l&ecirc;n tuổi thọ m&aacute;y.&nbsp;&nbsp;Nếu nhu cầu của bạn thi&ecirc;n về một m&aacute;y t&iacute;nh chơi game, th&igrave; XPS kh&ocirc;ng phải l&agrave; một lựa chọn tối ưu.&nbsp;</p>\r\n\r\n<h2><strong>Kết luận</strong></h2>\r\n\r\n<p>Với XPS 1930, Dell Inc một lần nữa khẳng định vị thế kh&ocirc;ng thể lật đổ của m&igrave;nh tr&ecirc;n thị trường m&aacute;y t&iacute;nh. Mở đầu cho thế hệ của những chiếc ultrabook mỏng nhẹ, đa năng v&agrave; c&oacute; tầm nh&igrave;n tương lai.&nbsp;</p>\r\n\r\n<p>nguồn: Dellonline.vn</p>', 0, '2021-10-29 06:54:54', '2021-10-29 06:54:54'),
(4, 'top-5-laptop-hoc-sinh-ma-phu-huynh-nen-mua-cho-con', 'Top 5 laptop học sinh mà phụ huynh nên mua cho con', '1635515815.jpg', 'Rẻ – đẹp – tiện ích: đó là những ưu điểm mà top 5 laptop học sinh của Dell đang sở hữu, giúp dòng sản phẩm này trở thành tâm điểm chú ý của các bậc phụ huynh khi mà một năm học mới lại sắp bắt đầu. Vậy, top 5 laptop học sinh này gồm những sản phẩm nào? Chúng có ưu điểm nào vượt trội? Cùng chúng tôi tìm hiểu ngay sau đây!', '<h1>Top 5 laptop học sinh m&agrave; phụ huynh n&ecirc;n mua cho con</h1>\r\n\r\n<ul>\r\n	<li>Thảo - VCO&nbsp;-&nbsp;24.08.2021</li>\r\n	<li>&nbsp;</li>\r\n	<li><a href=\"https://dellonline.vn/blogs/ban-tin-cong-nghe/top-5-laptop-hoc-sinh-ma-phu-huynh-nen-mua-cho-con#\">&nbsp;Bản tin c&ocirc;ng nghệ</a></li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;<a href=\"https://dellonline.vn/blogs/ban-tin-cong-nghe/top-5-laptop-hoc-sinh-ma-phu-huynh-nen-mua-cho-con#comments\">0&nbsp;B&igrave;nh luận</a></li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><em>Rẻ &ndash; đẹp &ndash; tiện &iacute;ch: đ&oacute; l&agrave; những ưu điểm m&agrave; top 5 laptop học sinh của Dell đang sở hữu, gi&uacute;p d&ograve;ng sản phẩm n&agrave;y trở th&agrave;nh t&acirc;m điểm ch&uacute; &yacute; của c&aacute;c bậc phụ huynh khi m&agrave; một năm học mới lại sắp bắt đầu. Vậy, top 5 laptop học sinh n&agrave;y gồm những sản phẩm n&agrave;o? Ch&uacute;ng c&oacute; ưu điểm n&agrave;o vượt trội? C&ugrave;ng ch&uacute;ng t&ocirc;i t&igrave;m hiểu ngay sau đ&acirc;y!</em></p>\r\n\r\n<h2><strong>Ưu điểm gi&uacute;p laptop học sinh của Dell dễ d&agrave;ng l&agrave;m h&agrave;i l&ograve;ng c&aacute;c bậc phụ huynh</strong></h2>\r\n\r\n<h3><strong>Thiết kế tiện &iacute;ch</strong></h3>\r\n\r\n<p>Đối với một chiếc laptop d&agrave;nh cho học sinh, điều đầu ti&ecirc;n m&agrave; bố mẹ cần quan t&acirc;m l&agrave; thiết kế gọn g&agrave;ng v&agrave; dễ sử dụng của sản phẩm. Laptop Dell dễ d&agrave;ng đ&aacute;p ứng y&ecirc;u cầu n&agrave;y với m&agrave;u sắc trang nh&atilde; nhưng kh&ocirc;ng k&eacute;m phần hiện đại, thiết kế gọn g&agrave;ng nhưng v&ocirc; c&ugrave;ng cứng c&aacute;p. B&ecirc;n cạnh đ&oacute;, b&agrave;n ph&iacute;m của Dell lu&ocirc;n được trang bị h&agrave;nh tr&igrave;nh ph&iacute;m hợp l&yacute; v&agrave; Touchpad mượt m&agrave;, tạo cảm gi&aacute;c thoải m&aacute;i v&agrave; dễ d&agrave;ng thao t&aacute;c.&nbsp;</p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/anh_1_0bfb7782e75d4176a56088f3a0407147_grande.jpg\" /></p>\r\n\r\n<p><em>B&agrave;n ph&iacute;m của Dell lu&ocirc;n được trang bị h&agrave;nh tr&igrave;nh ph&iacute;m hợp l&yacute; v&agrave; Touchpad mượt m&agrave;, dễ thao t&aacute;c</em></p>\r\n\r\n<p>Ngo&agrave;i ra, hệ thống cổng kết nối của Dell lu&ocirc;n đầy đủ v&agrave; đa nhiệm, từ kết nối với thiết bị ngoại vi cho đến kết nối kh&ocirc;ng d&acirc;y hay đồng bộ với điện thoại th&ocirc;ng minh, mang lại cho c&aacute;c con những trải nghiệm tiện &iacute;ch tuyệt vời nhất.</p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/anh_2_659b3dc9de4845ebb85c360dd689924d_grande.jpg\" /></p>\r\n\r\n<p><em>Đầy đủ c&aacute;c cổng kết nối</em></p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2><strong>M&agrave;n h&igrave;nh bảo vệ mắt tốt v&agrave; &acirc;m thanh chất lượng</strong></h2>\r\n\r\n<p>Để phục vụ việc học online đang dần thịnh h&agrave;nh do ảnh hưởng của đại dịch, c&ograve;n g&igrave; tốt hơn l&agrave; một m&agrave;n h&igrave;nh hiển thị r&otilde; n&eacute;t, bảo vệ mắt hiệu quả v&agrave; chất lượng &acirc;m thanh ch&acirc;n thực nhất. Đ&oacute; ch&iacute;nh x&aacute;c l&agrave; những g&igrave; m&agrave; Dell trang bị cho c&aacute;c m&aacute;y t&iacute;nh x&aacute;ch tay của m&igrave;nh. B&ecirc;n cạnh đ&oacute;, sự xuất hiện của webcam v&agrave; micro cũng gi&uacute;p cho việc học hay l&agrave;m việc của bạn trở n&ecirc;n hiệu quả hơn.</p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/anh_3_99e3653f38a549feaabb02f88ffb7e49_grande.jpg\" /></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh chống ch&oacute;i với độ ph&acirc;n giải cao cho chất lượng h&igrave;nh ảnh ch&acirc;n thực</em></p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h2><strong>Cấu h&igrave;nh mạnh mẽ vừa đủ</strong></h2>\r\n\r\n<p>Kh&ocirc;ng y&ecirc;u cầu cao như c&aacute;c m&aacute;y t&iacute;nh chuy&ecirc;n dụng kh&aacute;c, top 5 laptop học sinh của Dell được trang bị cấu h&igrave;nh với sức mạnh vừa phải, đủ để đ&aacute;p ứng mọi nhu cầu học tập, l&agrave;m việc hay giải tr&iacute; cơ bản của bất kỳ đối tượng n&agrave;o, kể cả l&agrave; học sinh, sinh vi&ecirc;n hay nh&acirc;n vi&ecirc;n văn ph&ograve;ng.</p>\r\n\r\n<h3><strong>Gi&aacute; cả phải chăng</strong></h3>\r\n\r\n<p>Cuối c&ugrave;ng nhưng l&agrave; quan trọng nhất, mức gi&aacute; 14-18 triệu của top 5 laptop học sinh n&agrave;y đủ đ&aacute;nh bật tất cả khỏi đường đua, l&agrave;m h&agrave;i l&ograve;ng cả những bậc phụ huynh kh&oacute; t&iacute;nh nhất. Chất lượng tuyệt hảo đi đ&ocirc;i với mức gi&aacute; &ldquo;hạt dẻ&rdquo;, r&otilde; r&agrave;ng laptop học sinh của Dell l&agrave; lựa chọn &ldquo;kinh tế&rdquo; nhất d&agrave;nh cho tất cả mọi người.</p>\r\n\r\n<h2><strong>Top 5 laptop học sinh m&agrave; phụ huynh n&ecirc;n mua cho con&nbsp;</strong></h2>\r\n\r\n<h3><strong>#1 Laptop Dell Inspiron 3505 AMD Ryzen 3</strong></h3>\r\n\r\n<p><em>Bộ vi xử l&yacute;: AMD Ryzen 3 3250U&nbsp;</em></p>\r\n\r\n<p><em>Bộ nhớ RAM: 2 x 4GB DDR4</em></p>\r\n\r\n<p><em>Ổ cứng: 256GB SSD PCIe&nbsp;</em></p>\r\n\r\n<p><em>Card đồ hoạ: t&iacute;ch hợp AMD APU&nbsp;</em></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh chống ch&oacute;i: 15.6 inch Full HD (1920 x 1080)&nbsp;&nbsp;</em></p>\r\n\r\n<p><em>Trọng lượng: 1.8kg</em></p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/inspiron_3505_ca5c397b397b4e30995f40219faeb905_master_2e8d22a2a19341b6b6393e1302c880f2_grande.jpeg\" /></p>\r\n\r\n<p><em>Laptop Dell Inspiron 3505 AMD Ryzen 3</em></p>\r\n\r\n<p>Như đ&atilde; đề cập trước đ&acirc;y, AMD Ryzen 3 ch&iacute;nh x&aacute;c l&agrave; con chip ho&agrave;n hảo cho m&aacute;y t&iacute;nh x&aacute;ch tay ph&acirc;n kh&uacute;c tầm trung, v&agrave; Laptop Dell Inspiron 3505 ch&iacute;nh l&agrave; chiếc m&aacute;y t&iacute;nh sở hữu chip ho&agrave;n hảo đ&oacute;. V&igrave; vậy phụ huynh ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m khi lựa chọn chiếc laptop học sinh n&agrave;y cho con em m&igrave;nh.</p>\r\n\r\n<p>Chip xử l&yacute; AMD Ryzen 3 3250U c&ugrave;ng với ổ cứng 256GB SSD, ngo&agrave;i việc xử l&yacute; tốt c&aacute;c t&aacute;c vụ văn ph&ograve;ng, đ&aacute;p ứng tốt nhu cầu l&agrave;m việc v&agrave; học tập cơ bản, c&ograve;n đảm bảo khả năng xử l&yacute; đồ họa ổn với card đồ họa t&iacute;ch hợp AMD Radeon Graphics.&nbsp;</p>\r\n\r\n<p>Th&ecirc;m v&agrave;o đ&oacute;, laptop học sinh Dell Inspiron 3505 c&ograve;n được trang bị nhiều t&iacute;nh năng hỗ trợ tốt việc học của c&aacute;c con như:&nbsp;</p>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh chống ch&oacute;i 15.6 inch Full HD với độ ph&acirc;n giải cao v&agrave; g&oacute;c nh&igrave;n rộng, cho chất lượng h&igrave;nh ảnh cao đồng thời bảo vệ tốt cho mắt.</li>\r\n	<li>HD webcam v&agrave; c&ocirc;ng nghệ &acirc;m thanh Realtek High Definition Audio khuếch t&aacute;n &acirc;m hiệu quả, chất lượng &acirc;m thanh to, r&otilde;, th&iacute;ch hợp cho việc học online hay gọi nh&oacute;m.</li>\r\n	<li>Ngo&agrave;i ra, b&agrave;n ph&iacute;m của Dell Inspiron 3505 cũng rất dễ thao t&aacute;c, đầy đủ c&aacute;c cổng kết nối ngoại vi v&agrave; kết nối kh&ocirc;ng d&acirc;y, đồng thời cũng nhẹ hơn so với c&aacute;c d&ograve;ng sản phẩm tiền nhiệm.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://dellonline.vn/products/laptop-dell-inspiron-3505\"><img style=\"max-width:973px\" alt=\"Laptop Dell Inspiron 3505 AMD Ryzen 3\" src=\"https://file.hstatic.net/200000019898/file/dat-mua-ngay_ed557b1f17d04b11b7bd6c82260f677a_medium.gif\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>#2 Laptop Dell Inspiron 3501</strong></h3>\r\n\r\n<p><em>Bộ vi xử l&yacute;: Intel Core i3-1115G4&nbsp;</em></p>\r\n\r\n<p><em>Ổ cứng: 256GB M.2 PCIe NVMe SSD</em></p>\r\n\r\n<p><em>Bộ nhớ RAM: 4GB DDR4</em></p>\r\n\r\n<p><em>Đồ hoạ: Intel UHD Graphics</em></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh: 15.6 inch FHD (1920 x 1080)</em></p>\r\n\r\n<p><em>Trọng lượng: 1.7kg</em></p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/laptop-dell-inspiron-3501-n3501c-02_72d2c4a9ca7a4e7ab63a664c8c7a28a6_grande.jpg\" /></p>\r\n\r\n<p><em>Laptop Dell Inspiron 3501</em></p>\r\n\r\n<p>Đứng thứ hai trong danh s&aacute;ch top 5 laptop học sinh của Dell phải kể đến Dell Inspiron 3501. N&oacute;i đến laptop chất lượng nhưng gi&aacute; rẻ d&agrave;nh cho học sinh, phụ huynh chắc chắn kh&ocirc;ng thể bỏ qua những t&iacute;nh năng vượt trội của d&ograve;ng sản phẩm n&agrave;y đ&oacute; l&agrave;:</p>\r\n\r\n<ul>\r\n	<li>Thiết kế gọn nhẹ chỉ 1.7kg với m&agrave;u sắc v&ocirc; c&ugrave;ng trang nh&atilde;, hiện đại.</li>\r\n	<li>M&agrave;n h&igrave;nh 15.6 inch, Full HD viền mỏng cho kh&ocirc;ng gian hiển thị lớn hơn, độ ph&acirc;n giải cao mang lại trải nghiệm h&igrave;nh ảnh ch&acirc;n thực hơn bao giờ hết.</li>\r\n	<li>Cấu h&igrave;nh mạnh mẽ đủ đ&aacute;p ứng mọi nhu cầu học tập, l&agrave;m việc v&agrave; giải tr&iacute; cơ bản với chip xử l&yacute; Intel Core i3-1115G4 thế hệ 11 v&agrave; ổ cứng SSD 256GB.</li>\r\n	<li>Trang bị đầy đủ c&aacute;c tiện &iacute;ch: t&iacute;ch hợp b&agrave;n ph&iacute;m số dễ d&agrave;ng theo t&aacute;c; đầy đủ cổng kết nối thiết bị ngoại vi v&agrave; kh&ocirc;ng d&acirc;y; HD webcam c&ugrave;ng micro ổn định; kết nối đồng bộ với điện thoại Dell Mobile Connect&hellip;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://dellonline.vn/products/laptop-dell-inspiron-3501-i3-1\"><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/dat-mua-ngay_ed557b1f17d04b11b7bd6c82260f677a_medium.gif\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>#3 Laptop Dell Vostro 3500 (V5I3001W)</strong></h3>\r\n\r\n<p><em>Bộ vi xử l&yacute;: Intel Core i3-1115G4 Processor&nbsp;</em></p>\r\n\r\n<p><em>Bộ nhớ RAM: 8GB DDR4&nbsp;</em></p>\r\n\r\n<p><em>Ổ cứng: 256GB M.2 PCIe NVMe</em></p>\r\n\r\n<p><em>Card đồ hoạ: Intel UHD Graphics&nbsp;</em></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh chống ch&oacute;i: 15.6 inch FHD (1920 x 1080)&nbsp;</em></p>\r\n\r\n<p><em>Trọng lượng: 1.9 kg</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/laptop-dell-inspiron-3501-n3501c-02_22733dfc613b4909b8c2f5663be088e9_grande.jpg\" /></p>\r\n\r\n<p><em>Laptop Dell Vostro 3500 (V5I3001W)</em></p>\r\n\r\n<p>Dell Vostro 3500 với kiểu d&aacute;ng thời trang, m&agrave;u sắc hiện đại v&agrave; thiết kế chắc chắn l&agrave; sản phẩm tiếp theo trong top 5 laptop học sinh m&agrave; ch&uacute;ng t&ocirc;i muốn giới thiệu đến bạn. Chiếc laptop n&agrave;y sở hữu cấu h&igrave;nh vừa phải: Intel Core i3-1115G4, bộ nhớ RAM 8GB v&agrave; ổ cứng SSD 256GB cho kh&ocirc;ng gian lưu trữ dữ liệu lớn, khả năng xử l&yacute; đa nhiệm, gi&uacute;p chuyển đổi mượt m&agrave; giữa c&aacute;c ứng dụng, từ đ&oacute; gi&uacute;p c&aacute;c con tương t&aacute;c tốt với c&aacute;c tr&igrave;nh soạn thảo v&agrave; phần mềm đa dạng.&nbsp;</p>\r\n\r\n<p>Kết hợp với card đồ họa Intel UHD Graphics, c&aacute;c con c&oacute; thể sử dụng phần mềm đồ họa cơ bản như photoshop một c&aacute;ch mượt m&agrave;, đồng thời c&oacute; thể giải tr&iacute; bằng c&aacute;c game online phổ th&ocirc;ng nhất.</p>\r\n\r\n<p>Dell Vostro 3500 cũng được trang bị m&agrave;n h&igrave;nh chống ch&oacute;i 15.6 inch FHD (1920 x 1080) viền hẹp 2 b&ecirc;n, cho tỉ lệ m&agrave;n h&igrave;nh lớn hơn, h&igrave;nh ảnh c&oacute; độ sắc n&eacute;t cao v&agrave; đặc biệt chế độ chống ch&oacute;i gi&uacute;p bảo vệ mắt hiệu quả.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, Dell Vostro 3500 sở hữu hệ thống &acirc;m thanh r&otilde; r&agrave;ng, ch&acirc;n thực với c&ocirc;ng nghệ&nbsp;Realtek High Definition Audio&nbsp;v&agrave; HD Webcam, hỗ trợ tốt cho việc học online của c&aacute;c con. Ngo&agrave;i ra, m&aacute;y t&iacute;nh x&aacute;ch tay&nbsp; n&agrave;y c&ograve;n được trang bị b&agrave;n ph&iacute;m chiclet đầy đủ ph&iacute;m số dễ d&agrave;ng thao t&aacute;c. Cổng kết nối đa nhiệm từ cổng USB, HDMI, khe thẻ nhớ, giắc cắm&hellip; cho đến cổng kết nối kh&ocirc;ng d&acirc;y 802.11ac 1x1 WiFi and Bluetooth ổn định.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://dellonline.vn/products/laptop-dell-vostro-3500\"><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/dat-mua-ngay_ed557b1f17d04b11b7bd6c82260f677a_medium.gif\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>#4 Laptop Dell Vostro 3400 core i3</strong></h3>\r\n\r\n<p><em>Bộ vi xử l&yacute;: Intel Core i3-1115G4&nbsp;</em></p>\r\n\r\n<p><em>Ổ cứng: 256GB M.2 PCIe NVMe SSD</em></p>\r\n\r\n<p><em>Bộ nhớ RAM: 8GB DDR4&nbsp;</em></p>\r\n\r\n<p><em>Card đồ hoạ: Intel UHD Graphics&nbsp;</em></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh chống ch&oacute;i: 14 inch FHD (1920 x 1080, 60Hz)&nbsp;</em></p>\r\n\r\n<p><em>Trọng lượng: 1.64kg</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/vostro_3400_2_154bfc3611dd490eacf35663140dfab5_3ec212a297e246b5955a5d3aa6788d5c_grande.jpeg\" /></p>\r\n\r\n<p><em>Laptop Dell Vostro 3400 i3</em></p>\r\n\r\n<p>Nếu ti&ecirc;u ch&iacute; của phụ huynh l&agrave; nhỏ gọn, th&igrave; Laptop Dell Vostro 3400 i3 ho&agrave;n to&agrave;n c&oacute; thể đ&aacute;p ứng tốt mong muốn n&agrave;y vớic&acirc;n nặng chỉ 1.64kg v&agrave; m&agrave;n h&igrave;nh 14 inch FHD cho chất lượng h&igrave;nh ảnh sắc n&eacute;t.</p>\r\n\r\n<p>Dell Vostro 3400 được trang bị bộ vi xử l&yacute; Intel Core i3-1115G4 mạnh mẽ c&ugrave;ng bộ nhớ RAM 8GB, ổ cứng SSD 256GB v&agrave; card đồ họa Intel UHD Graphics, cho khả năng xử l&yacute; mượt m&agrave; mọi t&aacute;c vụ v&agrave; ứng dụng cơ bản, tốc độ truy xuất dữ liệu nhanh cũng như khả năng phản hồi hiệu quả.</p>\r\n\r\n<p>Đặc biệt, m&agrave;n h&igrave;nh của Vostro 3400 chỉ 14 inch với độ s&aacute;ng l&ecirc;n tới 220 Nits, c&ugrave;ng thiết kế mỏng nhẹ của m&aacute;y sẽ ph&ugrave; hợp với những bạn th&iacute;ch m&aacute;y t&iacute;ch x&aacute;ch tay nhỏ gọn. B&agrave;n ph&iacute;m với h&agrave;nh tr&igrave;nh hợp l&yacute;, quen thuộc cũng g&oacute;p phần gi&uacute;p bạn thao t&aacute;c dễ d&agrave;ng hơn.</p>\r\n\r\n<p>Ngo&agrave;i ra, kh&ocirc;ng thể thiếu sự hỗ trợ của c&aacute;c cổng kết nối kh&ocirc;ng d&acirc;y v&agrave; thiết bị ngoại vi, HD webcam v&agrave; c&ocirc;ng nghệ &acirc;m thanh Realtek High Definition Audio đỉnh cao, gi&uacute;p trải nghiệm học online của bạn tuyệt vời hơn bao giờ hết.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://dellonline.vn/products/laptop-dell-vostro-3400-i3-70235020\"><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/dat-mua-ngay_ed557b1f17d04b11b7bd6c82260f677a_medium.gif\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>#5 Laptop Dell Inspiron 5310 (N3I3116W)</strong></p>\r\n\r\n<p><em>Bộ vi xử l&yacute;: Intel Core i3-1115G4 Processor&nbsp;</em></p>\r\n\r\n<p><em>Ổ cứng: 256GB M.2 PCIe NVMe SSD</em></p>\r\n\r\n<p><em>Bộ nhớ RAM: 8GB, onboard, LPDDR4x</em></p>\r\n\r\n<p><em>Card đồ hoạ: Intel UHD Graphics</em></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh chống ch&oacute;i: 13.3 inch Full HD (1920 x 1080), độ s&aacute;ng 300nits</em></p>\r\n\r\n<p><em>Trọng lượng: 1.25kg</em></p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/anh_5_153745b00c764c908a24c86b1f98ec6f_grande.png\" /></p>\r\n\r\n<p><em>Laptop Dell Inspiron 5310</em></p>\r\n\r\n<p>Si&ecirc;u phẩm cuối c&ugrave;ng thống trị top 5 laptop học sinh của ch&uacute;ng t&ocirc;i kh&ocirc;ng ai kh&aacute;c ch&iacute;nh l&agrave;&nbsp;Dell Inspiron 5310 thần th&aacute;nh. Sở hữu bộ vi xử l&yacute; Intel Core i3-1115G4 thế hệ thứ 11 cho hiệu năng mạnh mẽ, c&ugrave;ng ổ cứng 256GB SSD, bộ nhớ RAM onboard 8GB v&agrave; card đồ họa Intel UHD Graphics mang lại những trải nghiệm tốt nhất cho người d&ugrave;ng, c&oacute; thể n&oacute;i Dell Inspiron 5310 thậm ch&iacute; c&ograve;n nhỉnh hơn so với &ldquo;người anh em&rdquo; Dell Vostro 3400 ở tr&ecirc;n.&nbsp;</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, Dell Inspiron 5310 c&agrave;ng si&ecirc;u tinh tế hơn, thanh lịch hơn với độ nhỏ gọn tuyệt đối v&agrave; trọng lượng si&ecirc;u nhẹ vượt trội so với c&aacute;c d&ograve;ng sản phẩm kh&aacute;c (chỉ 1.25kg), tha hồ để bạn mang theo đến bất cứ đ&acirc;u.&nbsp;</p>\r\n\r\n<p>M&agrave;n h&igrave;nh của Dell Inspiron 5310 cũng chỉ 13.3 inch, tuy nhi&ecirc;n viền m&agrave;n h&igrave;nh của n&oacute; si&ecirc;u mỏng, bạn sẽ kh&ocirc;ng phải lo về kh&ocirc;ng giản hiển thị của m&aacute;y. Đồng thời, độ ph&acirc;n giải cao v&agrave; độ s&aacute;ng l&ecirc;n đến 300nits của n&oacute; sẽ gi&uacute;p bạn trải nghiệm h&igrave;nh ảnh sắc n&eacute;t, m&agrave;u sắc h&agrave;i h&ograve;a v&agrave; ch&acirc;n thực hơn bao giờ hết. Th&ecirc;m v&agrave;o đ&oacute;, c&ocirc;ng nghệ chống ch&oacute;i độc quyền cũng sẽ bảo vệ mắt của bạn một c&aacute;ch tốt nhất.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra, chiếc m&aacute;y t&iacute;nh n&agrave;y cũng sở hữu đầy đủ c&aacute;c t&iacute;nh năng kh&aacute;c của thương hiệu, đ&aacute;p ứng mọi ti&ecirc;u ch&iacute; m&agrave; bố mẹ v&agrave; học sinh cần ở một chiếc laptop phục vụ học tập.&nbsp;<em>&nbsp;</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://dellonline.vn/products/laptop-dell-inspiron-5301-n3i3116w\"><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/dat-mua-ngay_ed557b1f17d04b11b7bd6c82260f677a_medium.gif\" /></a></p>\r\n\r\n<h2><strong>Lời kết</strong></h2>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; top 5 laptop học sinh &ldquo;lợi đủ đường&rdquo; m&agrave; c&aacute;c bậc phụ huynh n&ecirc;n tham khảo nếu đang t&igrave;m mua một chiếc laptop gi&aacute; rẻ chất lượng cho con em m&igrave;nh. D&ugrave; l&agrave; về ngoại h&igrave;nh, cấu h&igrave;nh hay gi&aacute; cả, c&aacute;c laptop của Dell đều đang thể hiện r&otilde; ưu thế ho&agrave;n hảo của m&igrave;nh trong ph&acirc;n kh&uacute;c tầm trung. Hy vọng với những th&ocirc;ng tin ở tr&ecirc;n, bố mẹ đ&atilde; c&oacute; thể tự tin lựa chọn sản phẩm ph&ugrave; hợp nhất cho con em m&igrave;nh, v&agrave; đừng qu&ecirc;n li&ecirc;n hệ với ch&uacute;ng t&ocirc;i để được tư vấn chi tiết nh&eacute;</p>\r\n\r\n<p>nguồn: Dellonline.vn</p>', 1, '2021-10-29 06:56:55', '2021-10-29 06:58:59');
INSERT INTO `news` (`id`, `url`, `title`, `image`, `content_short`, `content_detail`, `status`, `created_at`, `updated_at`) VALUES
(5, 'top-5-laptop-hoc-sinh-ma-phu-huynh-nen-mua-cho-con', 'Top 5 laptop học sinh mà phụ huynh nên mua cho con', '1635515815.jpg', 'Rẻ – đẹp – tiện ích: đó là những ưu điểm mà top 5 laptop học sinh của Dell đang sở hữu, giúp dòng sản phẩm này trở thành tâm điểm chú ý của các bậc phụ huynh khi mà một năm học mới lại sắp bắt đầu. Vậy, top 5 laptop học sinh này gồm những sản phẩm nào? Chúng có ưu điểm nào vượt trội? Cùng chúng tôi tìm hiểu ngay sau đây!', '<h1>Top 5 laptop học sinh m&agrave; phụ huynh n&ecirc;n mua cho con</h1>\r\n\r\n<ul>\r\n	<li>Thảo - VCO&nbsp;-&nbsp;24.08.2021</li>\r\n	<li>&nbsp;</li>\r\n	<li><a href=\"https://dellonline.vn/blogs/ban-tin-cong-nghe/top-5-laptop-hoc-sinh-ma-phu-huynh-nen-mua-cho-con#\">&nbsp;Bản tin c&ocirc;ng nghệ</a></li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;<a href=\"https://dellonline.vn/blogs/ban-tin-cong-nghe/top-5-laptop-hoc-sinh-ma-phu-huynh-nen-mua-cho-con#comments\">0&nbsp;B&igrave;nh luận</a></li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><em>Rẻ &ndash; đẹp &ndash; tiện &iacute;ch: đ&oacute; l&agrave; những ưu điểm m&agrave; top 5 laptop học sinh của Dell đang sở hữu, gi&uacute;p d&ograve;ng sản phẩm n&agrave;y trở th&agrave;nh t&acirc;m điểm ch&uacute; &yacute; của c&aacute;c bậc phụ huynh khi m&agrave; một năm học mới lại sắp bắt đầu. Vậy, top 5 laptop học sinh n&agrave;y gồm những sản phẩm n&agrave;o? Ch&uacute;ng c&oacute; ưu điểm n&agrave;o vượt trội? C&ugrave;ng ch&uacute;ng t&ocirc;i t&igrave;m hiểu ngay sau đ&acirc;y!</em></p>\r\n\r\n<h2><strong>Ưu điểm gi&uacute;p laptop học sinh của Dell dễ d&agrave;ng l&agrave;m h&agrave;i l&ograve;ng c&aacute;c bậc phụ huynh</strong></h2>\r\n\r\n<h3><strong>Thiết kế tiện &iacute;ch</strong></h3>\r\n\r\n<p>Đối với một chiếc laptop d&agrave;nh cho học sinh, điều đầu ti&ecirc;n m&agrave; bố mẹ cần quan t&acirc;m l&agrave; thiết kế gọn g&agrave;ng v&agrave; dễ sử dụng của sản phẩm. Laptop Dell dễ d&agrave;ng đ&aacute;p ứng y&ecirc;u cầu n&agrave;y với m&agrave;u sắc trang nh&atilde; nhưng kh&ocirc;ng k&eacute;m phần hiện đại, thiết kế gọn g&agrave;ng nhưng v&ocirc; c&ugrave;ng cứng c&aacute;p. B&ecirc;n cạnh đ&oacute;, b&agrave;n ph&iacute;m của Dell lu&ocirc;n được trang bị h&agrave;nh tr&igrave;nh ph&iacute;m hợp l&yacute; v&agrave; Touchpad mượt m&agrave;, tạo cảm gi&aacute;c thoải m&aacute;i v&agrave; dễ d&agrave;ng thao t&aacute;c.&nbsp;</p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/anh_1_0bfb7782e75d4176a56088f3a0407147_grande.jpg\" /></p>\r\n\r\n<p><em>B&agrave;n ph&iacute;m của Dell lu&ocirc;n được trang bị h&agrave;nh tr&igrave;nh ph&iacute;m hợp l&yacute; v&agrave; Touchpad mượt m&agrave;, dễ thao t&aacute;c</em></p>\r\n\r\n<p>Ngo&agrave;i ra, hệ thống cổng kết nối của Dell lu&ocirc;n đầy đủ v&agrave; đa nhiệm, từ kết nối với thiết bị ngoại vi cho đến kết nối kh&ocirc;ng d&acirc;y hay đồng bộ với điện thoại th&ocirc;ng minh, mang lại cho c&aacute;c con những trải nghiệm tiện &iacute;ch tuyệt vời nhất.</p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/anh_2_659b3dc9de4845ebb85c360dd689924d_grande.jpg\" /></p>\r\n\r\n<p><em>Đầy đủ c&aacute;c cổng kết nối</em></p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2><strong>M&agrave;n h&igrave;nh bảo vệ mắt tốt v&agrave; &acirc;m thanh chất lượng</strong></h2>\r\n\r\n<p>Để phục vụ việc học online đang dần thịnh h&agrave;nh do ảnh hưởng của đại dịch, c&ograve;n g&igrave; tốt hơn l&agrave; một m&agrave;n h&igrave;nh hiển thị r&otilde; n&eacute;t, bảo vệ mắt hiệu quả v&agrave; chất lượng &acirc;m thanh ch&acirc;n thực nhất. Đ&oacute; ch&iacute;nh x&aacute;c l&agrave; những g&igrave; m&agrave; Dell trang bị cho c&aacute;c m&aacute;y t&iacute;nh x&aacute;ch tay của m&igrave;nh. B&ecirc;n cạnh đ&oacute;, sự xuất hiện của webcam v&agrave; micro cũng gi&uacute;p cho việc học hay l&agrave;m việc của bạn trở n&ecirc;n hiệu quả hơn.</p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/anh_3_99e3653f38a549feaabb02f88ffb7e49_grande.jpg\" /></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh chống ch&oacute;i với độ ph&acirc;n giải cao cho chất lượng h&igrave;nh ảnh ch&acirc;n thực</em></p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h2><strong>Cấu h&igrave;nh mạnh mẽ vừa đủ</strong></h2>\r\n\r\n<p>Kh&ocirc;ng y&ecirc;u cầu cao như c&aacute;c m&aacute;y t&iacute;nh chuy&ecirc;n dụng kh&aacute;c, top 5 laptop học sinh của Dell được trang bị cấu h&igrave;nh với sức mạnh vừa phải, đủ để đ&aacute;p ứng mọi nhu cầu học tập, l&agrave;m việc hay giải tr&iacute; cơ bản của bất kỳ đối tượng n&agrave;o, kể cả l&agrave; học sinh, sinh vi&ecirc;n hay nh&acirc;n vi&ecirc;n văn ph&ograve;ng.</p>\r\n\r\n<h3><strong>Gi&aacute; cả phải chăng</strong></h3>\r\n\r\n<p>Cuối c&ugrave;ng nhưng l&agrave; quan trọng nhất, mức gi&aacute; 14-18 triệu của top 5 laptop học sinh n&agrave;y đủ đ&aacute;nh bật tất cả khỏi đường đua, l&agrave;m h&agrave;i l&ograve;ng cả những bậc phụ huynh kh&oacute; t&iacute;nh nhất. Chất lượng tuyệt hảo đi đ&ocirc;i với mức gi&aacute; &ldquo;hạt dẻ&rdquo;, r&otilde; r&agrave;ng laptop học sinh của Dell l&agrave; lựa chọn &ldquo;kinh tế&rdquo; nhất d&agrave;nh cho tất cả mọi người.</p>\r\n\r\n<h2><strong>Top 5 laptop học sinh m&agrave; phụ huynh n&ecirc;n mua cho con&nbsp;</strong></h2>\r\n\r\n<h3><strong>#1 Laptop Dell Inspiron 3505 AMD Ryzen 3</strong></h3>\r\n\r\n<p><em>Bộ vi xử l&yacute;: AMD Ryzen 3 3250U&nbsp;</em></p>\r\n\r\n<p><em>Bộ nhớ RAM: 2 x 4GB DDR4</em></p>\r\n\r\n<p><em>Ổ cứng: 256GB SSD PCIe&nbsp;</em></p>\r\n\r\n<p><em>Card đồ hoạ: t&iacute;ch hợp AMD APU&nbsp;</em></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh chống ch&oacute;i: 15.6 inch Full HD (1920 x 1080)&nbsp;&nbsp;</em></p>\r\n\r\n<p><em>Trọng lượng: 1.8kg</em></p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/inspiron_3505_ca5c397b397b4e30995f40219faeb905_master_2e8d22a2a19341b6b6393e1302c880f2_grande.jpeg\" /></p>\r\n\r\n<p><em>Laptop Dell Inspiron 3505 AMD Ryzen 3</em></p>\r\n\r\n<p>Như đ&atilde; đề cập trước đ&acirc;y, AMD Ryzen 3 ch&iacute;nh x&aacute;c l&agrave; con chip ho&agrave;n hảo cho m&aacute;y t&iacute;nh x&aacute;ch tay ph&acirc;n kh&uacute;c tầm trung, v&agrave; Laptop Dell Inspiron 3505 ch&iacute;nh l&agrave; chiếc m&aacute;y t&iacute;nh sở hữu chip ho&agrave;n hảo đ&oacute;. V&igrave; vậy phụ huynh ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m khi lựa chọn chiếc laptop học sinh n&agrave;y cho con em m&igrave;nh.</p>\r\n\r\n<p>Chip xử l&yacute; AMD Ryzen 3 3250U c&ugrave;ng với ổ cứng 256GB SSD, ngo&agrave;i việc xử l&yacute; tốt c&aacute;c t&aacute;c vụ văn ph&ograve;ng, đ&aacute;p ứng tốt nhu cầu l&agrave;m việc v&agrave; học tập cơ bản, c&ograve;n đảm bảo khả năng xử l&yacute; đồ họa ổn với card đồ họa t&iacute;ch hợp AMD Radeon Graphics.&nbsp;</p>\r\n\r\n<p>Th&ecirc;m v&agrave;o đ&oacute;, laptop học sinh Dell Inspiron 3505 c&ograve;n được trang bị nhiều t&iacute;nh năng hỗ trợ tốt việc học của c&aacute;c con như:&nbsp;</p>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh chống ch&oacute;i 15.6 inch Full HD với độ ph&acirc;n giải cao v&agrave; g&oacute;c nh&igrave;n rộng, cho chất lượng h&igrave;nh ảnh cao đồng thời bảo vệ tốt cho mắt.</li>\r\n	<li>HD webcam v&agrave; c&ocirc;ng nghệ &acirc;m thanh Realtek High Definition Audio khuếch t&aacute;n &acirc;m hiệu quả, chất lượng &acirc;m thanh to, r&otilde;, th&iacute;ch hợp cho việc học online hay gọi nh&oacute;m.</li>\r\n	<li>Ngo&agrave;i ra, b&agrave;n ph&iacute;m của Dell Inspiron 3505 cũng rất dễ thao t&aacute;c, đầy đủ c&aacute;c cổng kết nối ngoại vi v&agrave; kết nối kh&ocirc;ng d&acirc;y, đồng thời cũng nhẹ hơn so với c&aacute;c d&ograve;ng sản phẩm tiền nhiệm.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://dellonline.vn/products/laptop-dell-inspiron-3505\"><img style=\"max-width:973px\" alt=\"Laptop Dell Inspiron 3505 AMD Ryzen 3\" src=\"https://file.hstatic.net/200000019898/file/dat-mua-ngay_ed557b1f17d04b11b7bd6c82260f677a_medium.gif\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>#2 Laptop Dell Inspiron 3501</strong></h3>\r\n\r\n<p><em>Bộ vi xử l&yacute;: Intel Core i3-1115G4&nbsp;</em></p>\r\n\r\n<p><em>Ổ cứng: 256GB M.2 PCIe NVMe SSD</em></p>\r\n\r\n<p><em>Bộ nhớ RAM: 4GB DDR4</em></p>\r\n\r\n<p><em>Đồ hoạ: Intel UHD Graphics</em></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh: 15.6 inch FHD (1920 x 1080)</em></p>\r\n\r\n<p><em>Trọng lượng: 1.7kg</em></p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/laptop-dell-inspiron-3501-n3501c-02_72d2c4a9ca7a4e7ab63a664c8c7a28a6_grande.jpg\" /></p>\r\n\r\n<p><em>Laptop Dell Inspiron 3501</em></p>\r\n\r\n<p>Đứng thứ hai trong danh s&aacute;ch top 5 laptop học sinh của Dell phải kể đến Dell Inspiron 3501. N&oacute;i đến laptop chất lượng nhưng gi&aacute; rẻ d&agrave;nh cho học sinh, phụ huynh chắc chắn kh&ocirc;ng thể bỏ qua những t&iacute;nh năng vượt trội của d&ograve;ng sản phẩm n&agrave;y đ&oacute; l&agrave;:</p>\r\n\r\n<ul>\r\n	<li>Thiết kế gọn nhẹ chỉ 1.7kg với m&agrave;u sắc v&ocirc; c&ugrave;ng trang nh&atilde;, hiện đại.</li>\r\n	<li>M&agrave;n h&igrave;nh 15.6 inch, Full HD viền mỏng cho kh&ocirc;ng gian hiển thị lớn hơn, độ ph&acirc;n giải cao mang lại trải nghiệm h&igrave;nh ảnh ch&acirc;n thực hơn bao giờ hết.</li>\r\n	<li>Cấu h&igrave;nh mạnh mẽ đủ đ&aacute;p ứng mọi nhu cầu học tập, l&agrave;m việc v&agrave; giải tr&iacute; cơ bản với chip xử l&yacute; Intel Core i3-1115G4 thế hệ 11 v&agrave; ổ cứng SSD 256GB.</li>\r\n	<li>Trang bị đầy đủ c&aacute;c tiện &iacute;ch: t&iacute;ch hợp b&agrave;n ph&iacute;m số dễ d&agrave;ng theo t&aacute;c; đầy đủ cổng kết nối thiết bị ngoại vi v&agrave; kh&ocirc;ng d&acirc;y; HD webcam c&ugrave;ng micro ổn định; kết nối đồng bộ với điện thoại Dell Mobile Connect&hellip;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://dellonline.vn/products/laptop-dell-inspiron-3501-i3-1\"><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/dat-mua-ngay_ed557b1f17d04b11b7bd6c82260f677a_medium.gif\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>#3 Laptop Dell Vostro 3500 (V5I3001W)</strong></h3>\r\n\r\n<p><em>Bộ vi xử l&yacute;: Intel Core i3-1115G4 Processor&nbsp;</em></p>\r\n\r\n<p><em>Bộ nhớ RAM: 8GB DDR4&nbsp;</em></p>\r\n\r\n<p><em>Ổ cứng: 256GB M.2 PCIe NVMe</em></p>\r\n\r\n<p><em>Card đồ hoạ: Intel UHD Graphics&nbsp;</em></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh chống ch&oacute;i: 15.6 inch FHD (1920 x 1080)&nbsp;</em></p>\r\n\r\n<p><em>Trọng lượng: 1.9 kg</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/laptop-dell-inspiron-3501-n3501c-02_22733dfc613b4909b8c2f5663be088e9_grande.jpg\" /></p>\r\n\r\n<p><em>Laptop Dell Vostro 3500 (V5I3001W)</em></p>\r\n\r\n<p>Dell Vostro 3500 với kiểu d&aacute;ng thời trang, m&agrave;u sắc hiện đại v&agrave; thiết kế chắc chắn l&agrave; sản phẩm tiếp theo trong top 5 laptop học sinh m&agrave; ch&uacute;ng t&ocirc;i muốn giới thiệu đến bạn. Chiếc laptop n&agrave;y sở hữu cấu h&igrave;nh vừa phải: Intel Core i3-1115G4, bộ nhớ RAM 8GB v&agrave; ổ cứng SSD 256GB cho kh&ocirc;ng gian lưu trữ dữ liệu lớn, khả năng xử l&yacute; đa nhiệm, gi&uacute;p chuyển đổi mượt m&agrave; giữa c&aacute;c ứng dụng, từ đ&oacute; gi&uacute;p c&aacute;c con tương t&aacute;c tốt với c&aacute;c tr&igrave;nh soạn thảo v&agrave; phần mềm đa dạng.&nbsp;</p>\r\n\r\n<p>Kết hợp với card đồ họa Intel UHD Graphics, c&aacute;c con c&oacute; thể sử dụng phần mềm đồ họa cơ bản như photoshop một c&aacute;ch mượt m&agrave;, đồng thời c&oacute; thể giải tr&iacute; bằng c&aacute;c game online phổ th&ocirc;ng nhất.</p>\r\n\r\n<p>Dell Vostro 3500 cũng được trang bị m&agrave;n h&igrave;nh chống ch&oacute;i 15.6 inch FHD (1920 x 1080) viền hẹp 2 b&ecirc;n, cho tỉ lệ m&agrave;n h&igrave;nh lớn hơn, h&igrave;nh ảnh c&oacute; độ sắc n&eacute;t cao v&agrave; đặc biệt chế độ chống ch&oacute;i gi&uacute;p bảo vệ mắt hiệu quả.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, Dell Vostro 3500 sở hữu hệ thống &acirc;m thanh r&otilde; r&agrave;ng, ch&acirc;n thực với c&ocirc;ng nghệ&nbsp;Realtek High Definition Audio&nbsp;v&agrave; HD Webcam, hỗ trợ tốt cho việc học online của c&aacute;c con. Ngo&agrave;i ra, m&aacute;y t&iacute;nh x&aacute;ch tay&nbsp; n&agrave;y c&ograve;n được trang bị b&agrave;n ph&iacute;m chiclet đầy đủ ph&iacute;m số dễ d&agrave;ng thao t&aacute;c. Cổng kết nối đa nhiệm từ cổng USB, HDMI, khe thẻ nhớ, giắc cắm&hellip; cho đến cổng kết nối kh&ocirc;ng d&acirc;y 802.11ac 1x1 WiFi and Bluetooth ổn định.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://dellonline.vn/products/laptop-dell-vostro-3500\"><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/dat-mua-ngay_ed557b1f17d04b11b7bd6c82260f677a_medium.gif\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>#4 Laptop Dell Vostro 3400 core i3</strong></h3>\r\n\r\n<p><em>Bộ vi xử l&yacute;: Intel Core i3-1115G4&nbsp;</em></p>\r\n\r\n<p><em>Ổ cứng: 256GB M.2 PCIe NVMe SSD</em></p>\r\n\r\n<p><em>Bộ nhớ RAM: 8GB DDR4&nbsp;</em></p>\r\n\r\n<p><em>Card đồ hoạ: Intel UHD Graphics&nbsp;</em></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh chống ch&oacute;i: 14 inch FHD (1920 x 1080, 60Hz)&nbsp;</em></p>\r\n\r\n<p><em>Trọng lượng: 1.64kg</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/vostro_3400_2_154bfc3611dd490eacf35663140dfab5_3ec212a297e246b5955a5d3aa6788d5c_grande.jpeg\" /></p>\r\n\r\n<p><em>Laptop Dell Vostro 3400 i3</em></p>\r\n\r\n<p>Nếu ti&ecirc;u ch&iacute; của phụ huynh l&agrave; nhỏ gọn, th&igrave; Laptop Dell Vostro 3400 i3 ho&agrave;n to&agrave;n c&oacute; thể đ&aacute;p ứng tốt mong muốn n&agrave;y vớic&acirc;n nặng chỉ 1.64kg v&agrave; m&agrave;n h&igrave;nh 14 inch FHD cho chất lượng h&igrave;nh ảnh sắc n&eacute;t.</p>\r\n\r\n<p>Dell Vostro 3400 được trang bị bộ vi xử l&yacute; Intel Core i3-1115G4 mạnh mẽ c&ugrave;ng bộ nhớ RAM 8GB, ổ cứng SSD 256GB v&agrave; card đồ họa Intel UHD Graphics, cho khả năng xử l&yacute; mượt m&agrave; mọi t&aacute;c vụ v&agrave; ứng dụng cơ bản, tốc độ truy xuất dữ liệu nhanh cũng như khả năng phản hồi hiệu quả.</p>\r\n\r\n<p>Đặc biệt, m&agrave;n h&igrave;nh của Vostro 3400 chỉ 14 inch với độ s&aacute;ng l&ecirc;n tới 220 Nits, c&ugrave;ng thiết kế mỏng nhẹ của m&aacute;y sẽ ph&ugrave; hợp với những bạn th&iacute;ch m&aacute;y t&iacute;ch x&aacute;ch tay nhỏ gọn. B&agrave;n ph&iacute;m với h&agrave;nh tr&igrave;nh hợp l&yacute;, quen thuộc cũng g&oacute;p phần gi&uacute;p bạn thao t&aacute;c dễ d&agrave;ng hơn.</p>\r\n\r\n<p>Ngo&agrave;i ra, kh&ocirc;ng thể thiếu sự hỗ trợ của c&aacute;c cổng kết nối kh&ocirc;ng d&acirc;y v&agrave; thiết bị ngoại vi, HD webcam v&agrave; c&ocirc;ng nghệ &acirc;m thanh Realtek High Definition Audio đỉnh cao, gi&uacute;p trải nghiệm học online của bạn tuyệt vời hơn bao giờ hết.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://dellonline.vn/products/laptop-dell-vostro-3400-i3-70235020\"><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/dat-mua-ngay_ed557b1f17d04b11b7bd6c82260f677a_medium.gif\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>#5 Laptop Dell Inspiron 5310 (N3I3116W)</strong></p>\r\n\r\n<p><em>Bộ vi xử l&yacute;: Intel Core i3-1115G4 Processor&nbsp;</em></p>\r\n\r\n<p><em>Ổ cứng: 256GB M.2 PCIe NVMe SSD</em></p>\r\n\r\n<p><em>Bộ nhớ RAM: 8GB, onboard, LPDDR4x</em></p>\r\n\r\n<p><em>Card đồ hoạ: Intel UHD Graphics</em></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh chống ch&oacute;i: 13.3 inch Full HD (1920 x 1080), độ s&aacute;ng 300nits</em></p>\r\n\r\n<p><em>Trọng lượng: 1.25kg</em></p>\r\n\r\n<p><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/anh_5_153745b00c764c908a24c86b1f98ec6f_grande.png\" /></p>\r\n\r\n<p><em>Laptop Dell Inspiron 5310</em></p>\r\n\r\n<p>Si&ecirc;u phẩm cuối c&ugrave;ng thống trị top 5 laptop học sinh của ch&uacute;ng t&ocirc;i kh&ocirc;ng ai kh&aacute;c ch&iacute;nh l&agrave;&nbsp;Dell Inspiron 5310 thần th&aacute;nh. Sở hữu bộ vi xử l&yacute; Intel Core i3-1115G4 thế hệ thứ 11 cho hiệu năng mạnh mẽ, c&ugrave;ng ổ cứng 256GB SSD, bộ nhớ RAM onboard 8GB v&agrave; card đồ họa Intel UHD Graphics mang lại những trải nghiệm tốt nhất cho người d&ugrave;ng, c&oacute; thể n&oacute;i Dell Inspiron 5310 thậm ch&iacute; c&ograve;n nhỉnh hơn so với &ldquo;người anh em&rdquo; Dell Vostro 3400 ở tr&ecirc;n.&nbsp;</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, Dell Inspiron 5310 c&agrave;ng si&ecirc;u tinh tế hơn, thanh lịch hơn với độ nhỏ gọn tuyệt đối v&agrave; trọng lượng si&ecirc;u nhẹ vượt trội so với c&aacute;c d&ograve;ng sản phẩm kh&aacute;c (chỉ 1.25kg), tha hồ để bạn mang theo đến bất cứ đ&acirc;u.&nbsp;</p>\r\n\r\n<p>M&agrave;n h&igrave;nh của Dell Inspiron 5310 cũng chỉ 13.3 inch, tuy nhi&ecirc;n viền m&agrave;n h&igrave;nh của n&oacute; si&ecirc;u mỏng, bạn sẽ kh&ocirc;ng phải lo về kh&ocirc;ng giản hiển thị của m&aacute;y. Đồng thời, độ ph&acirc;n giải cao v&agrave; độ s&aacute;ng l&ecirc;n đến 300nits của n&oacute; sẽ gi&uacute;p bạn trải nghiệm h&igrave;nh ảnh sắc n&eacute;t, m&agrave;u sắc h&agrave;i h&ograve;a v&agrave; ch&acirc;n thực hơn bao giờ hết. Th&ecirc;m v&agrave;o đ&oacute;, c&ocirc;ng nghệ chống ch&oacute;i độc quyền cũng sẽ bảo vệ mắt của bạn một c&aacute;ch tốt nhất.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra, chiếc m&aacute;y t&iacute;nh n&agrave;y cũng sở hữu đầy đủ c&aacute;c t&iacute;nh năng kh&aacute;c của thương hiệu, đ&aacute;p ứng mọi ti&ecirc;u ch&iacute; m&agrave; bố mẹ v&agrave; học sinh cần ở một chiếc laptop phục vụ học tập.&nbsp;<em>&nbsp;</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://dellonline.vn/products/laptop-dell-inspiron-5301-n3i3116w\"><img style=\"max-width:973px\" src=\"https://file.hstatic.net/200000019898/file/dat-mua-ngay_ed557b1f17d04b11b7bd6c82260f677a_medium.gif\" /></a></p>\r\n\r\n<h2><strong>Lời kết</strong></h2>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; top 5 laptop học sinh &ldquo;lợi đủ đường&rdquo; m&agrave; c&aacute;c bậc phụ huynh n&ecirc;n tham khảo nếu đang t&igrave;m mua một chiếc laptop gi&aacute; rẻ chất lượng cho con em m&igrave;nh. D&ugrave; l&agrave; về ngoại h&igrave;nh, cấu h&igrave;nh hay gi&aacute; cả, c&aacute;c laptop của Dell đều đang thể hiện r&otilde; ưu thế ho&agrave;n hảo của m&igrave;nh trong ph&acirc;n kh&uacute;c tầm trung. Hy vọng với những th&ocirc;ng tin ở tr&ecirc;n, bố mẹ đ&atilde; c&oacute; thể tự tin lựa chọn sản phẩm ph&ugrave; hợp nhất cho con em m&igrave;nh, v&agrave; đừng qu&ecirc;n li&ecirc;n hệ với ch&uacute;ng t&ocirc;i để được tư vấn chi tiết nh&eacute;</p>\r\n\r\n<p>nguồn: Dellonline.vn</p>', 0, '2021-10-29 06:56:55', '2021-10-29 06:56:55'),
(6, 'cach-cap-nhat-windows-11-chinh-thuc-tren-may-tinh-de-ban-bat-dau-su-dung-he-dieu-hanh-moi-voi-nhieu-tinh-nang-hap-dan', 'Cách cập nhật Windows 11 chính thức trên máy tính, để bạn bắt đầu sử dụng hệ điều hành mới với nhiều tính năng hấp dẫn', '1635516207.jpg', NULL, '<h1>C&aacute;ch cập nhật Windows 11 ch&iacute;nh thức tr&ecirc;n m&aacute;y t&iacute;nh, để bạn bắt đầu sử dụng hệ điều h&agrave;nh mới với nhiều t&iacute;nh năng hấp dẫn</h1>\r\n\r\n<p><a href=\"https://www.thegioididong.com/tin-tuc/profile/0\">Nguyễn Ngọc Huy</a>&nbsp;05/10&nbsp;214 b&igrave;nh luận</p>\r\n\r\n<p><img style=\"max-width:973px\" alt=\"Cách cập nhật Windows 11 chính thức\" src=\"https://cdn.tgdd.vn/Files/2021/10/05/1387858/cach-cap-nhat-windows-11-chinh-thuc_1280x720-800-resize.jpg\" /></p>\r\n\r\n<h2>Như vậy l&agrave;&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/chu-de/windows-11-205\" target=\"_blank\">Windows 11</a>&nbsp;đ&atilde; được Microsoft ph&aacute;t h&agrave;nh ch&iacute;nh thức. Windows 11 cho ph&eacute;p bạn n&acirc;ng cấp miễn ph&iacute; tr&ecirc;n c&aacute;c m&aacute;y t&iacute;nh chạy Windows 10 đủ điều kiện v&agrave; m&aacute;y t&iacute;nh mới đ&atilde; c&agrave;i sẵn Windows 11. Sau đ&acirc;y l&agrave; hướng dẫn&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/cach-cap-nhat-windows-11-chinh-thuc-1387858\" target=\"_blank\">c&aacute;ch cập nhật Windows 11 ch&iacute;nh thức</a>&nbsp;tr&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">m&aacute;y t&iacute;nh</a>&nbsp;cho bạn.</h2>\r\n\r\n<p><em><strong>*Lưu &yacute;</strong>: Để biết m&aacute;y t&iacute;nh của bạn c&oacute; đủ điều kiện n&acirc;ng cấp l&ecirc;n Windows 11 hay kh&ocirc;ng, h&atilde;y xem:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/cach-kiem-tra-may-tinh-cua-ban-co-duoc-len-windows-11-hay-khong-1363188\" target=\"_blank\">C&aacute;ch kiểm tra m&aacute;y t&iacute;nh c&oacute; c&agrave;i Windows 11 được hay kh&ocirc;ng bằng Windows PC Health Check</a>&nbsp;n&agrave;y nh&eacute;.</em></p>\r\n\r\n<h3><strong>1. C&aacute;ch cập nhật Windows 11 ch&iacute;nh thức qua Windows Update</strong></h3>\r\n\r\n<p>Đ&acirc;y l&agrave; c&aacute;ch cập nhật Windows 11 ch&iacute;nh thống an to&agrave;n v&agrave; đảm bảo nhất cho bạn. N&acirc;ng cấp Windows 11 từ Windows Update gi&uacute;p bạn c&oacute; thể y&ecirc;n t&acirc;m rằng m&aacute;y t&iacute;nh của m&igrave;nh đ&atilde; ho&agrave;n to&agrave;n tương th&iacute;ch với hệ điều h&agrave;nh mới n&agrave;y v&agrave; kh&ocirc;ng c&oacute; lỗi g&igrave; nghi&ecirc;m trọng.</p>\r\n\r\n<p><strong>Bước 1</strong>. Bạn v&agrave;o&nbsp;<strong>Settings</strong>&nbsp;của Windows, chọn&nbsp;<strong>Update &amp; Security</strong>&nbsp;&gt;&nbsp;<strong>Windows Update</strong>.</p>\r\n\r\n<p><img style=\"max-width:973px\" alt=\"Cách cập nhật Windows 11 chính thức\" src=\"https://cdn.tgdd.vn/Files/2021/10/05/1387858/cach-cap-nhat-windows-11-chinh-thuc-1-_1529x875-800-resize.jpg\" /></p>\r\n\r\n<p><strong>Bước 2</strong>. Bạn sẽ thấy th&ocirc;ng b&aacute;o mời n&acirc;ng cấp l&ecirc;n Windows 11 ch&iacute;nh thức từ Microsoft, nhấn&nbsp;<strong>Download and install</strong>&nbsp;để bắt đầu c&agrave;i đặt Windows 11 ch&iacute;nh thức nh&eacute;.</p>\r\n\r\n<p><img style=\"max-width:973px\" alt=\"Cách cập nhật Windows 11 chính thức\" src=\"https://cdn.tgdd.vn/Files/2021/10/05/1387858/cach-cap-nhat-windows-11-chinh-thuc-3_1280x670-800-resize.jpg\" /></p>\r\n\r\n<h3><strong>2. C&aacute;ch cập nhật Windows 11 ch&iacute;nh thức từ Windows 11 Insider</strong></h3>\r\n\r\n<p><strong>Bước 1</strong>.&nbsp;Bạn v&agrave;o&nbsp;<strong>Settings</strong>&nbsp;&gt;&nbsp;<strong>Windows Update</strong>&nbsp;&gt;&nbsp;<strong>Windows Insider Program</strong>.</p>\r\n\r\n<p><img style=\"max-width:973px\" alt=\"Cách cập nhật Windows 11 chính thức\" src=\"https://cdn.tgdd.vn/Files/2021/10/05/1387858/cach-cap-nhat-windows-11-chinh-thuc-8_1280x757-800-resize.jpg\" /></p>\r\n\r\n<p><strong>Bước 2</strong>. Chọn&nbsp;<strong>Stop getting preview builds</strong>&nbsp;&gt; bật&nbsp;<strong>On</strong>&nbsp;mục&nbsp;<strong>Unenroll this device when the next version of Windows releases</strong>. M&aacute;y t&iacute;nh sẽ tự động ngắt bạn khỏi chương tr&igrave;nh Insider, v&agrave; chỉ nhận bản update Windows 11 ch&iacute;nh thức để cập nhật.</p>\r\n\r\n<p><img style=\"max-width:973px\" alt=\"Cách cập nhật Windows 11 chính thức\" src=\"https://cdn.tgdd.vn/Files/2021/10/05/1387858/cach-cap-nhat-windows-11-chinh-thuc-9_1280x757-800-resize.jpg\" /></p>\r\n\r\n<h3><strong>3. C&aacute;ch cập nhật Windows 11 qua Windows 11 Installation Assistant</strong></h3>\r\n\r\n<p><em><strong>*Lưu &yacute;</strong>:&nbsp;C&aacute;ch n&agrave;y chỉ d&agrave;nh cho người d&ugrave;ng r&agrave;nh về m&aacute;y t&iacute;nh, v&agrave; bạn chỉ n&ecirc;n d&ugrave;ng c&aacute;ch n&agrave;y tr&ecirc;n m&aacute;y phụ để tr&aacute;nh xảy ra sự cố đ&aacute;ng tiếc. C&aacute;ch an to&agrave;n nhất vẫn l&agrave; cập nhật th&ocirc;ng qua Windows Update.</em></p>\r\n\r\n<p><strong>Bước 1</strong>. Bạn truy cập v&agrave;o trang web b&ecirc;n dưới, tại mục&nbsp;<strong>Windows 11 Installation Assistant</strong>, chọn&nbsp;<strong>Before you begin</strong>&nbsp;để đọc c&aacute;c điều kiện về n&acirc;ng cấp.</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.microsoft.com/en-us/software-download/windows11\" target=\"_blank\">Download Windows 11 Installation Assistant</a></li>\r\n</ul>\r\n\r\n<p><img style=\"max-width:973px\" alt=\"Cách cập nhật Windows 11 chính thức\" src=\"https://cdn.tgdd.vn/Files/2021/10/05/1387858/cach-cap-nhat-windows-11-chinh-thuc-4-_1470x924-800-resize.jpg\" /></p>\r\n\r\n<p><strong>Bước 2</strong>. Nhấn&nbsp;<strong>Download Now</strong>. Sau khi tải về xong Windows 11 Installation Assistant, bạn chạy v&agrave; l&agrave;m theo c&aacute;c hướng dẫn tr&ecirc;n m&agrave;n h&igrave;nh để bắt đầu c&agrave;i đặt Windows 11.</p>\r\n\r\n<p><img style=\"max-width:973px\" alt=\"Cách cập nhật Windows 11 chính thức\" src=\"https://cdn.tgdd.vn/Files/2021/10/05/1387858/cach-cap-nhat-windows-11-chinh-thuc-5-_1602x810-800-resize.jpg\" /></p>\r\n\r\n<h3><strong>4. C&aacute;ch c&agrave;i Windows 11 qua file ISO</strong></h3>\r\n\r\n<p><em><strong>*Lưu &yacute;</strong>: C&aacute;ch n&agrave;y sẽ c&agrave;i Windows 11 tr&ecirc;n m&aacute;y t&iacute;nh của bạn lại từ đầu, x&oacute;a sạch sẽ dữ liệu v&agrave; bạn sẽ c&oacute; một m&aacute;y t&iacute;nh mới ho&agrave;n to&agrave;n. Tương tự, c&aacute;ch n&agrave;y chỉ n&ecirc;n d&ugrave;ng cho những người r&agrave;nh m&aacute;y t&iacute;nh v&agrave; c&aacute;ch cập nhật tốt nhất l&agrave; th&ocirc;ng qua Windows Update.</em></p>\r\n\r\n<p><strong>Bước 1</strong>. Bạn truy cập v&agrave;o link b&ecirc;n dưới, cuộn xuống mục&nbsp;<strong>Download Windows 11 Disk Image (ISO)</strong>, nhấn&nbsp;<strong>Before you begin</strong>&nbsp;để xem c&aacute;c điều kiện trước khi n&acirc;ng cấp l&ecirc;n.</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.microsoft.com/en-us/software-download/windows11\" target=\"_blank\">Download Windows 11 Installation Assistant</a></li>\r\n</ul>\r\n\r\n<p><img style=\"max-width:973px\" alt=\"Cách cập nhật Windows 11 chính thức\" src=\"https://cdn.tgdd.vn/Files/2021/10/05/1387858/cach-cap-nhat-windows-11-chinh-thuc-6_1299x726-800-resize.jpg\" /></p>\r\n\r\n<p><strong>Bước 2</strong>. Sau đ&oacute;, tại&nbsp;<strong>Select Download</strong>, bạn chọn&nbsp;<strong>Windows 11</strong>&nbsp;v&agrave; nhấn&nbsp;<strong>Download</strong>để c&agrave;i Windows 11 mới.</p>\r\n\r\n<p><img style=\"max-width:973px\" alt=\"Cách cập nhật Windows 11 chính thức\" src=\"https://cdn.tgdd.vn/Files/2021/10/05/1387858/cach-cap-nhat-windows-11-chinh-thuc-7_1280x433-800-resize.jpg\" /></p>\r\n\r\n<p>Ch&uacute;c c&aacute;c bạn c&oacute; những trải nghiệm tuyệt vời tr&ecirc;n Windows 11 ch&iacute;nh thức. C&ograve;n thắc mắc n&agrave;o, bạn h&atilde;y b&igrave;nh luận b&ecirc;n dưới. Nhớ ấn Like v&agrave; Chia sẻ ủng hộ m&igrave;nh nh&eacute;.</p>\r\n\r\n<p>C&oacute; thể bạn chưa biết, 100% Laptop Thế Giới Di Động b&aacute;n ra đều t&iacute;ch hợp sẵn Windows bản quyền (được cập nhật Windows 11 từ Microsoft). Nếu bạn đang t&igrave;m mua Laptop để học tập v&agrave; l&agrave;m việc, h&atilde;y bấm v&agrave;o n&uacute;t b&ecirc;n dưới để lựa cho m&igrave;nh một mẫu nh&eacute;.</p>\r\n\r\n<p>nguồn: thegioididong</p>', 0, '2021-10-29 07:03:27', '2021-10-29 07:03:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('nvlinh1309@gmail.com', '$2y$10$S22CuYErGYiBwQCtclxHgeUVcjGM8t1N6VUdyD1npKV0rroVfjH6O', '2021-10-13 09:04:07'),
('emmahousehn@gmail.com', '$2y$10$a7NTeCJSqwFkk7ATistqYeROKhQ/oTTUaj231wcn8meGdx548dEKG', '2021-10-24 22:28:40'),
('doanthuytrangdell@gmail.com', '$2y$10$OYQJzcPDYIzwbC0JGz0ZTOvhl3ztwu2YM82oOcN8jy7ObpqOjRMyS', '2021-10-25 22:23:58'),
('myhuyendell@gmail.com', '$2y$10$wydXZJi8uc/QnnzdQzkiwedTC30k/N9FPOoQXFAX5umygGikuNG/e', '2021-10-26 20:10:15'),
('Camtrang25041994@gamil.com', '$2y$10$Y8Ollm6ZDxkzAnd6odInr.UVxiI2yhAEFUnSDcc9qOkdOb9D2npMK', '2021-10-26 23:12:47'),
('Camtrang25041994@gmail.com', '$2y$10$KX3iYe6PViHldPOab3YaR.NB1Du14plrmtdWV7UCvl3apjy6lmI5m', '2021-10-27 01:56:58'),
('nguyencamtrang.dell@gmail.com', '$2y$10$4nodoCZWSK6RrVIWnYrcpuL/267FEAEE.8Pn7cMeGCTb7ReZZ04PG', '2021-10-27 02:12:19'),
('hoangkim9931@gmail.com', '$2y$10$.2XLuUAtuiRVD.A2eS6ft.yYmfk9f7u4Ncy8dkzZ6oGP6Xe7gnBx6', '2021-10-27 02:22:53'),
('karemphung@gmail.com', '$2y$10$z7n9eVntiolPaSuxMzuLC.ASlmMTqhs2H1T6kbis9o7hsxP.4n0fW', '2021-10-27 03:05:50'),
('thaontp@ankhang.net', '$2y$10$embUWgEUtt54mWQiLgucBe4H.bRgg/WGE70DqX8xwoo507mnL0e2W', '2021-10-27 04:12:51'),
('thaovo@tnc.com.vn', '$2y$10$quJLlhM1UshCwTfk6DHwUO7zUawOtSp8WBchX7ySahah3/Xqa9ulO', '2021-10-27 07:46:30'),
('dat.hoang@chinhnhan.vn', '$2y$10$UxGWKG7S.X/h4QKD.g8tHebRb69M4RVm02G5z4fk3ywEMDDIFem8e', '2021-10-27 19:17:18'),
('binh.nguyen@metanvietnam.com', '$2y$10$86oUFUqd/wt.fEafaFv2kuG5/GcDJyJH./Wd3b2IBuRUoddv.HaJq', '2021-12-06 00:48:41'),
('sample@email.tst', 'JQDyUhN7pvdc3WzdkusbLZ6kM4YHLGiOCT0c55gbqRoTHpPy3yJVv9fux0DIHVad', '2023-12-25 06:39:40'),
('sample@email.tst', 'x39TmxQWFuPW5cpqQwyRMnOVhIDy2hcikuDyjhHVOgeh7KizHxBZBXcDYSv6aot8', '2023-12-25 06:39:40'),
('sample@email.tst', 'GZFyIAi0mx8LyxtkVdKVGj3Qa0kZX64GwZHZ8hyP9IqdRIDi71OZNuhbr5y45FC1', '2023-12-25 06:39:40'),
('sample@email.tst', 'bKfFTWNczt1qozXdJm1OxI70mQDSz4qLRiu7qfl4PqIuqUU0wBMRLo5OnQWlhBTM', '2023-12-25 06:55:08'),
('sample@email.tst', 'x5dOTG9zjPuQoEpvFogsxJ1R51IFxy2BI8cMqobquZPkiK3HSWkJgrTAhZCEmETt', '2023-12-25 06:55:08'),
('sample@email.tst', 'ZHpetasEPSkTAtlD0K95S323xlnHkouYKmTMlQZIpE0PsVA33xPLgR7aqtJeufwW', '2023-12-25 06:55:08'),
('sample@email.tst', 'uPLvYWie2aj2cbhxkUh4eZ9J5OU6D8WtOBoXIDfTMTQOhD8u4IkiCQTV1IvK8wPE', '2023-12-30 06:52:18'),
('sample@email.tst', 'L5tLftkPQeN6rGwWy2bU967RCiqzM8zCYfr7APDebaKWCcalfS9H1wfIPFR30ll2', '2023-12-30 06:52:18'),
('sample@email.tst', 'C4Y799hpsEDG435fb3qshh5u7I9z7wyBtsu4U9e0qHKyLFO6rkc7RwuLX27Y9iUz', '2023-12-30 06:52:18'),
('sample@email.tst', 'tifQk62xdpx0M9qUc9MMl2S4SJgkaVKrM5Q18vj2tl4m65jvrbvrUg8cj5jf3Vyv', '2023-12-30 07:01:15'),
('sample@email.tst', 'QqsC3r0N0OBDjBhnlb5JSTNT9eI51SCid1LBe77hfhD84wMGI68oON5SoAevIPBT', '2023-12-30 07:01:15'),
('sample@email.tst', 'GsDCiPweO8HA1OVet6K95MUJLrppc5qQ7xjdgB0loretORNiWH9clzpmt8CaeB9o', '2023-12-30 07:01:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'management', 'web', '2022-03-10 04:35:25', '2022-03-10 04:35:25'),
(2, 'management_quarter', 'web', '2022-03-10 04:35:25', '2022-03-10 04:35:25'),
(3, 'management_questions', 'web', '2022-03-10 04:35:25', '2022-03-10 04:35:25'),
(4, 'management_agency', 'web', '2022-03-10 04:35:26', '2022-03-10 04:35:26'),
(5, 'management_common', 'web', '2022-03-10 04:35:26', '2022-03-10 04:35:26'),
(6, 'management_gift', 'web', '2022-03-10 04:35:26', '2022-03-10 04:35:26'),
(7, 'management_news', 'web', '2022-03-10 04:35:26', '2022-03-10 04:35:26'),
(8, 'management_rule', 'web', '2022-03-10 04:35:26', '2022-03-10 04:35:26'),
(9, 'management_videos', 'web', '2022-03-10 04:35:26', '2022-03-10 04:35:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quarter_group_question`
--

CREATE TABLE `quarter_group_question` (
  `id` bigint UNSIGNED NOT NULL,
  `id_training` int NOT NULL,
  `group` int NOT NULL,
  `status_active` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quarter_group_question`
--

INSERT INTO `quarter_group_question` (`id`, `id_training`, `group`, `status_active`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 1, '2021-10-20 20:06:22', '2021-10-22 07:05:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `id` bigint UNSIGNED NOT NULL,
  `question_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `questions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_training` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `questions`
--

INSERT INTO `questions` (`id`, `question_group`, `questions`, `answer`, `correct`, `id_training`, `created_at`, `updated_at`) VALUES
(50, '1', 'Phần mềm nào dành cho người chuyên ép xung ?', '[\"A. Intel Extreme Tuning Utility (XTU)\",\"B. Intel speed optimizer\",\"C. Intel graphics control panel\",\"D. Intel thermal velocity boost\"]', 'A', 5, '2021-10-20 20:06:22', '2021-10-21 08:36:43'),
(51, '1', 'Intel Wi-Fi 6E (Gig+)  tận dụng lợi thế nào sau đây để mang lại trải nghiệm wifi nhanh chóng và tin cậy ?', '[\"A. Pyrite 2.0\",\"B. Ph\\u1ed5 t\\u1ea7n 6Ghz\",\"C. Intel Turbo Boost 3.0\",\"D. C\\u00f4ng ngh\\u1ec7 QLC 3D NAND\"]', 'B', 5, '2021-10-20 20:06:22', '2021-10-21 08:36:58'),
(52, '1', 'BVXL Intel Th11 dòng H hỗ trợ màn hình lên đến  ?', '[\"A. Full HD 360Hz\",\"B. Full HD 720Hz\",\"C. 4K 60Hz\",\"D. 4K 120Hz\",\"E. Full HD 360Hz & 4K 120Hz\"]', 'E', 5, '2021-10-20 20:06:22', '2021-10-22 21:28:43'),
(53, '1', 'Phát biểu nào sau đây đúng về Thunderbolt?', '[\"A. \\u0110\\u00e1nh th\\u1ee9c m\\u00e1y t\\u1eeb thi\\u1ebft b\\u1ecb ngo\\u1ea1i vi th\\u00f4ng qua \\u0111\\u1ebf Thunderbolt 4, Thunderbolt 3 kh\\u00f4ng l\\u00e0m \\u0111\\u01b0\\u1ee3c\",\"B. Chi\\u1ec1u d\\u00e0i d\\u00e2y Thunderbolt 3 t\\u1ed1i \\u0111a ch\\u1ec9 50cm; Thunderbolt 4 t\\u1ed1i \\u0111a 2m\",\"C. C\\u00e1c \\u00fd \\u0111\\u1ec1u \\u0111\\u00fang.\",\"D. C\\u00e1c \\u00fd \\u0111\\u1ec1u sai.\"]', 'C', 5, '2021-10-20 20:06:22', '2021-10-22 21:30:24'),
(54, '1', 'Các công nghệ mới của RTX 3050 và 3050 TI Laptop là gì?', '[\"A. Nvidia DLSS, RayTracing, Reflex\",\"B. Nvidia DLSS, RayTracing, Reflex, Broadcast\",\"C. Nvidia Ampere, RayTracing, DLSS, Max- Q 3rd\"]', 'C', 5, '2021-10-20 20:06:22', '2021-10-21 09:09:58'),
(55, '1', '1.	Thế nào là sản phẩm đạt chuẩn Intel EVO?', '[\"A.\\tC\\u00f3 Th\\u1eddi l\\u01b0\\u1ee3ng pin 9 ti\\u1ebfng v\\u1edbi m\\u00e0n h\\u00ecnh Full HD.\",\"B.\\tTh\\u1eddi gian s\\u1eb5n s\\u00e0ng ho\\u1ea1t \\u0111\\u1ed9ng t\\u1eeb ch\\u1ebf \\u0111\\u1ed9 sleep ph\\u1ea3i \\u00edt h\\u01a1n 1 gi\\u00e2y\",\"C.\\tS\\u1ea1c nhanh 30 ph\\u00fat \\u0111\\u01b0\\u1ee3c 4 gi\\u1edd s\\u1eed d\\u1ee5ng\",\"D.\\tTrang b\\u1ecb card Intel iRISxe. H\\u1ed7 tr\\u1ee3 Wi-Fi 6 v\\u00e0 Thunderbolt 4.\",\"E.\\tT\\u1ea5t c\\u1ea3 c\\u00e1c \\u0111\\u00e1p \\u00e1n tr\\u00ean\"]', 'E', 5, '2021-10-21 03:27:42', '2021-10-22 22:26:15'),
(56, '1', 'Khi tư vấn Dell G15 (5511) thì các bạn cần tư vấn những điểm nào ?', '[\"A. CPU: Intel 11th Gen (i5 6-cores, i7 8-cores); RAM: 2 slot (up to 16GB) DDR4 2933MHz; \\u1ed4 c\\u1ee9ng: up to Single 1TB M2 PCIe SSD, or Dual up to 512GB M2 PCIe SSD; Card \\u0111\\u1ed3 h\\u1ecda r\\u1eddi NVIDIA RTX & card Intel\",\"B. M\\u00e0n h\\u00ecnh: 15.6 inch FHD 250 nits (120Hz) or 300 nits (165Hz); Thi\\u1ebft k\\u1ebf: V\\u1ecf Plastic, m\\u1ecfng 21.2 mm, tr\\u1ecdng l\\u01b0\\u1ee3ng TBD; Battery: 56Whr (4 cell) or 86Whr (4 cell) on RTX 3060 integrated; Game Shift key at F9\",\"C. T\\u1ea5t c\\u1ea3 c\\u00e1c \\u00fd tr\\u00ean \\u0111\\u1ec1u \\u0111\\u00fang\",\"D. T\\u1ea5t c\\u1ea3 c\\u00e1c \\u00fd tr\\u00ean \\u0111\\u1ec1u sai\"]', 'C', 5, '2021-10-21 03:29:33', '2021-10-22 01:37:35'),
(57, '1', 'Khi tư vấn Dell G15 (5510) thì các bạn cần tư vấn những điểm nào ?', '[\"A. CPU: Intel 11th Gen (i5 Quad core, i7 Hex core); RAM: 2 slot (up to 16GB) DDR4 2933MHz; \\u1ed4 c\\u1ee9ng: up to Single 1TB M2 PCIe SSD, or Dual up to 512GB M2 PCIe SSD; Card \\u0111\\u1ed3 h\\u1ecda r\\u1eddi NVIDIA RTX & card Intel\",\"B. M\\u00e0n h\\u00ecnh: 15.6 inch FHD 250 nits (120Hz) or 300 nits (165Hz); Thi\\u1ebft k\\u1ebf: V\\u1ecf Plastic, m\\u1ecfng 21.2 mm, tr\\u1ecdng l\\u01b0\\u1ee3ng 2.4449 kg; Battery: 56Whr (4 cell) or 86Whr (4 cell) on RTX 3060 integrated; Game Shift key at F9\",\"C. T\\u1ea5t c\\u1ea3 c\\u00e1c \\u00fd tr\\u00ean \\u0111\\u1ec1u \\u0111\\u00fang\",\"D. T\\u1ea5t c\\u1ea3 c\\u00e1c \\u00fd tr\\u00ean \\u0111\\u1ec1u sai\"]', 'B', 5, '2021-10-21 03:30:54', '2021-10-21 09:10:53'),
(58, '1', 'Khi tư vấn Dell G15 SE (5505) thì các bạn cần tư vấn những điểm nào ?', '[\"A. CPU: AMD Ryzen 5 4600H or Ryzen 7 4800H; RAM: 2 slot (up to 16GB) DDR4 3200MHz; \\u1ed4 c\\u1ee9ng: up to Single 1TB M2 PCIe SSD, or Dual up to 512GB M2 PCIe SSD; Card \\u0111\\u1ed3 h\\u1ecda r\\u1eddi RX 5600M\",\"B. M\\u00e0n h\\u00ecnh: 15.6 inch FHD 220 nits (60Hz) or 300 nits (144Hz); Thi\\u1ebft k\\u1ebf: V\\u1ecf Plastic, m\\u1ecfng 21.6 mm, tr\\u1ecdng l\\u01b0\\u1ee3ng 2.5 kg; Battery: 51Whr (3 cell) or 68Whr (4 cell) integrated; Game Shift key at F7\",\"C. T\\u1ea5t c\\u1ea3 c\\u00e1c \\u00fd \\u0111\\u1ec1u \\u0111\\u00fang\",\"D. T\\u1ea5t c\\u1ea3 c\\u00e1c \\u00fd \\u0111\\u1ec1u sai\"]', 'C', 5, '2021-10-21 03:31:59', '2021-10-22 01:36:34'),
(59, '1', 'Khi tư vấn Dell G15 Ryzen Edition (5515) thì các bạn cần tư vấn những điểm nào ?', '[\"A. CPU: AMD Ryzen 5 5600H or Ryzen 7 5800H; RAM: 2 slot (up to 16GB) DDR4 3200MHz; \\u1ed4 c\\u1ee9ng: up to Single 1TB M2 PCIe SSD, or Dual up to 512GB M2 PCIe SSD; Card \\u0111\\u1ed3 h\\u1ecda r\\u1eddi RX 5600M\",\"B. M\\u00e0n h\\u00ecnh: 15.6 inch FHD 250 nits (120Hz) or 300 nits (165Hz); Thi\\u1ebft k\\u1ebf: V\\u1ecf Plastic, m\\u1ecfng 21.2 mm, tr\\u1ecdng l\\u01b0\\u1ee3ng TBD; Battery: 56Whr (3 cell) or 86Whr (4 cell) integrated; Game Shift key at F9\",\"C. T\\u1ea5t c\\u1ea3 c\\u00e1c \\u00fd tr\\u00ean \\u0111\\u1ec1u \\u0111\\u00fang\",\"D. T\\u1ea5t c\\u1ea3 c\\u00e1c \\u00fd tr\\u00ean \\u0111\\u1ec1u sai\"]', 'D', 5, '2021-10-21 03:33:22', '2021-10-21 09:11:42'),
(60, '1', 'Dell G15 5511 là Vỏ kim loại hay vỏ nhựa ?', '[\"A. V\\u1ecf nh\\u00f4m\",\"B. Palmrest, nh\\u00f4m\",\"C. Plastic\"]', 'C', 5, '2021-10-21 03:34:12', '2021-10-21 09:12:02'),
(61, '1', 'Dell G15 5515 là vỏ kim loại hay vỏ nhựa ?', '[\"A. V\\u1ecf nh\\u00f4m\",\"B. Palmrest, nh\\u00f4m\",\"C. Plastic\"]', 'C', 5, '2021-10-21 03:34:58', '2021-10-21 09:12:18'),
(62, '1', 'Dell G15 SE 5511 là vỏ kim loại hay vỏ nhựa ?', '[\"A. V\\u1ecf nh\\u00f4m\",\"B. Palmrest, nh\\u00f4m\",\"C. Plastic\"]', 'A', 5, '2021-10-21 03:35:45', '2021-10-21 09:12:37'),
(63, '1', 'Sản phẩm NB nào của Dell đạt chuẩn Nvidia Studio ?', '[\"A. L\\u00e0 c\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u00f3 h\\u1ed7 tr\\u1ee3 Nvidia Geforce RTX 3050 v\\u00e0 3050 TI nh\\u01b0 Dell G15 5511\",\"B. L\\u00e0 t\\u1ea5t c\\u1ea3 c\\u00e1c s\\u1ea3n ph\\u1ea9m Dell c\\u00f3 h\\u1ed7 tr\\u1ee3 card Nvidia Geforce GTX\"]', 'A', 5, '2021-10-21 03:36:33', '2021-10-21 09:12:50'),
(64, '1', 'Laptop và Desktop Dell từ T9/2021 đều được trang bị MS Office Student (on-shelf) ?', '[\"A. C\\u00f3, \\u0111\\u1ea7y \\u0111\\u1ee7 c\\u00e1c \\u1ee9ng d\\u1ee5ng c\\u01a1 b\\u1ea3n nh\\u01b0 Word, Excel v\\u00e0 Powerpoint. \\u0110\\u1eb7c bi\\u1ec7t l\\u00e0 s\\u1edf h\\u1eefu v\\u0129nh vi\\u1ec5n (Mua 1 l\\u1ea7n, X\\u00e0i 1 \\u0111\\u1eddi)\",\"B. Kh\\u00f4ng, ch\\u1ec9 c\\u00f3 ph\\u1ea7n m\\u1ec1m Windows\"]', 'A', 5, '2021-10-21 03:37:30', '2021-10-21 09:13:04'),
(65, '1', 'Màn hình LCD monitor của Dell dòng C series là', '[\"A. D\\u00f2ng s\\u1ea3n ph\\u1ea9m m\\u00e0n h\\u00ecnh d\\u00e0nh cho h\\u1ed9i ngh\\u1ecb, size t\\u1eeb 24\\u201d \\u0111\\u1ebfn 86\\u201d, h\\u1ed7 tr\\u1ee3 l\\u00ean \\u0111\\u1ebfn WQHD v\\u00e0 4K, t\\u00edch h\\u1ee3p Microsoft Team v\\u00e0 USB type C v\\u1edbi power 90W\",\"B. D\\u00f2ng s\\u1ea3n ph\\u1ea9m m\\u00e0n h\\u00ecnh d\\u00e0nh cho h\\u1ed9i ngh\\u1ecb, size t\\u1eeb 24\\u201d \\u0111\\u1ebfn 86\\u201d, h\\u1ed7 tr\\u1ee3 l\\u00ean \\u0111\\u1ebfn WQHD v\\u00e0 4K, t\\u00edch h\\u1ee3p Microsoft Team v\\u00e0 USB type C v\\u1edbi power 65W\"]', 'A', 5, '2021-10-21 03:38:15', '2021-10-21 09:13:18'),
(66, '1', 'Sự khác biệt giữa màn hình Ultrasharp, Ultrasharp Premier và màn hình P series ?', '[\"A. \\u0110\\u1ec1u l\\u00e0 d\\u00f2ng s\\u1ea3n ph\\u1ea9m d\\u00e0nh cho \\u0111\\u1ed3 h\\u1ecda nh\\u01b0ng Ultrasharp l\\u00e0 d\\u00f2ng cao c\\u1ea5p h\\u01a1n, P series c\\u00f3 size t\\u1eeb 19\\u201d \\u0111\\u1ebfn 34\\u201d v\\u00e0 h\\u1ed7 tr\\u1ee3 \\u0111\\u1ebfn 4k, c\\u00f2n Ultrasharp th\\u00ec c\\u00f3 size t\\u1eeb 24\\u201d \\u0111\\u1ebfn 49\\u201d v\\u00e0 h\\u1ed7 tr\\u1ee3 \\u0111\\u1ebfn 8k, \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 d\\u00f2ng Ultrasharp Premier Color (UP series) l\\u00e0 d\\u00f2ng m\\u00e0n h\\u00ecnh h\\u1ed7 tr\\u1ee3 \\u0111\\u1ed3 h\\u1ecda cao c\\u1ea5p nh\\u1ea5t c\\u1ee7a Dell v\\u1edbi 100% NTSC.\",\"B. \\u0110\\u1ec1u l\\u00e0 d\\u00f2ng s\\u1ea3n ph\\u1ea9m d\\u00e0nh cho \\u0111\\u1ed3 h\\u1ecda nh\\u01b0ng Ultrasharp l\\u00e0 d\\u00f2ng cao c\\u1ea5p h\\u01a1n, P series c\\u00f3 size t\\u1eeb 19\\u201d \\u0111\\u1ebfn 34\\u201d v\\u00e0 h\\u1ed7 tr\\u1ee3 \\u0111\\u1ebfn 4k, c\\u00f2n Ultrasharp Premier Color th\\u00ec c\\u00f3 size t\\u1eeb 24\\u201d \\u0111\\u1ebfn 49\\u201d v\\u00e0 h\\u1ed7 tr\\u1ee3 \\u0111\\u1ebfn 8k, \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 d\\u00f2ng Ultrasharp (UP series) l\\u00e0 d\\u00f2ng m\\u00e0n h\\u00ecnh h\\u1ed7 tr\\u1ee3 \\u0111\\u1ed3 h\\u1ecda cao c\\u1ea5p nh\\u1ea5t c\\u1ee7a Dell v\\u1edbi 100% NTSC.\"]', 'A', 5, '2021-10-21 03:38:53', '2021-10-21 09:13:31'),
(67, '1', 'Số điện thoại hỗ trợ tư vấn về sản phẩm của Dell', '[\"A. 1800 54 54 55\",\"B. 1800 28 28 48\"]', 'B', 5, '2021-10-21 03:39:37', '2021-10-21 09:13:42'),
(68, '1', 'Desktop (MTĐB) Inspiron 3891 có đặc điểm: Hỗ trợ BVXL thế hệ 11, hỗ trợ nâng cấp RAM lên đến 64G, hỗ trợ lên đến Geforce GTX 1660 6GB, nói chung là dễ dàng nâng cấp. Hỗ trợ DVBH tại nhà 1 năm Pro support.', '[\"A. \\u0110\\u00fang\",\"B. Sai\"]', 'A', 5, '2021-10-21 03:40:34', '2021-10-22 01:36:00'),
(69, '1', 'Để tìm kiếm các thông tin phục vụ cho nhu cầu tải driver, thông tin nâng cấp sản phẩm và cấu hình kỹ thuật của máy thì cần tìm kiếm thông tin ở đâu ?', '[\"A. Support.dell.com\",\"B. Dellonline.vn\"]', 'A', 5, '2021-10-21 03:41:11', '2021-10-21 09:14:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'supper_admin', 'web', '2022-03-10 04:35:25', '2022-03-10 04:35:25'),
(2, 'admin1', 'web', '2022-03-10 04:35:25', '2022-03-10 04:35:25'),
(3, 'admin2', 'web', '2022-03-10 04:35:25', '2022-03-10 04:35:25'),
(4, 'admin3', 'web', '2022-03-10 04:35:25', '2022-03-10 04:35:25'),
(5, 'admin4', 'web', '2022-03-10 04:35:26', '2022-03-10 04:35:26'),
(6, 'admin5', 'web', '2022-03-10 04:35:26', '2022-03-10 04:35:26'),
(7, 'admin6', 'web', '2022-03-10 04:35:26', '2022-03-10 04:35:26'),
(8, 'admin7', 'web', '2022-03-10 04:35:26', '2022-03-10 04:35:26'),
(9, 'admin8', 'web', '2022-03-10 04:35:26', '2022-03-10 04:35:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `training_management`
--

CREATE TABLE `training_management` (
  `id` bigint UNSIGNED NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `video` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `training_management`
--

INSERT INTO `training_management` (`id`, `month`, `year`, `name`, `created_at`, `updated_at`, `video`, `status`) VALUES
(5, '3', '2021', '1646842568.jpg', '2021-10-20 19:59:51', '2022-03-09 16:16:08', '1637834168.mp4', 1),
(6, '4', '2021', '1646845050.jpg', '2022-03-09 16:57:30', '2022-03-09 16:57:30', NULL, 1),
(7, '1', '2021', '1646925500.jpg', '2022-03-10 15:18:20', '2022-03-10 15:18:20', '1646925500.mp4', 1),
(8, '2', '2021', '1646926844.jpg', '2022-03-10 15:40:44', '2022-03-10 15:40:44', '1646926844.mp4', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `usertype` int NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `place_work` text COLLATE utf8mb4_unicode_ci,
  `participants` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0',
  `is_send_mail` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `usertype`, `phone`, `address`, `place_work`, `participants`, `status`, `is_send_mail`) VALUES
(4, 'AdminHR', 'admin_dell@gmail.com', NULL, '$2y$10$x42GC2BLdP8o5isqjS.e1O4Qw7TTFxlgi3HXVVOL5lNGz0oNkqGq6', NULL, '2021-10-14 03:05:06', '2021-10-14 03:05:06', 1, NULL, NULL, NULL, NULL, 1, 0),
(18, 'DELL', 'set@gmail.com', NULL, '$2y$10$C0IUGuFCZxUCxc9Bb3.GMuOB1eFJ6EcDAE8YDilQ2ZJLTYOGn/w0O', NULL, '2021-10-20 20:13:32', '2021-10-20 20:14:11', 0, '0938738383', '305 Phạm Văn Đồng', 'DELL HOÀNG', '2', 1, 0),
(19, 'TONY', 'tony@gmail.copm', NULL, '$2y$10$u.4qogXUefFF4ePHzobaDOssXWxfSpemlfSqYA3eJc.EbxdmBDv0K', NULL, '2021-10-20 20:13:58', '2021-10-20 20:14:22', 0, '0988877722', 'Chung cư Hà Đô', 'DELL HOÀNG Văn', '3', 1, 0),
(29, 'Tony Nam', 'hieu.to@maimultimedia.com', NULL, '$2y$10$8gLkK60lIcuET3YJKgxnreKw5NaU2mbVrVMmIsGDxQMaIf137GMKG', NULL, '2021-10-22 20:12:49', '2021-10-22 20:13:34', 0, '09645646433', 'Hà Nội', 'Thủ Đô', '1', 1, 1),
(30, 'Nguyen Vu Linh', 'nvlinh1309+4@gmail.com', NULL, '$2y$10$5r5Z45G/ZQYe3P6aTvKD0.2yFdaBC0xsMNlulXrX0gxlNtz9hAYeu', NULL, '2021-10-22 20:19:21', '2021-10-22 20:20:32', 0, '0987654321', 'HCM', 'Hcm', '1', 1, 1),
(34, 'Nguyễn Cường Thịnh', 'nguyencuongthinh2015@gmail.com', NULL, '$2y$10$V0tlx.R9g77zcMQ2C.WOvOyw0AoW1f.oC.qXZBF.K8CgNleaig2Bm', NULL, '2021-10-24 20:41:30', '2021-10-24 20:43:35', 0, '0908500189', '383 nguyễn duy trinh', 'Dell', '3', 1, 1),
(38, 'Hoàng Oanh', 'honanguyen@yahoo.com', NULL, '$2y$10$MQI4cpHhxBVjxPxb4a2PpOOCArgTtHLfLRp3kbJoe7xgE.gFT8iG.', NULL, '2021-10-25 02:12:36', '2021-10-25 02:13:19', 0, '0908475378', '80/19 Nguyen Trai, W.3, D5', 'Metan', '1', 1, 1),
(39, 'Nguyễn Huỳnh Nguyệt Ánh', 'nguyetanhdell@gmail.com', NULL, '$2y$10$aywUo8mln3IFF.dEjZc88eWpjVLrqcnv8AhDkkYH4gEPCH72MrzXe', NULL, '2021-10-25 19:49:47', '2021-10-25 19:53:01', 0, '0336563658', '152 Hàm Nghi,Thạc Gián,Thanh Khê,Đà Nẵng', 'Phi Long Đà Nẵng', '3', 1, 1),
(40, 'Linh Trương', 'truongmylinhdell@gmail.com', NULL, '$2y$10$WRcohRQsYQkacORGqotaD.E/XCOWIav16R6qNLyUFAY7084UPoIIe', NULL, '2021-10-25 20:50:22', '2021-10-25 21:02:55', 0, '0327125522', 'Hà Nội', '134 Thái Hà', '3', 1, 1),
(41, 'Nguyễn Thị Nguyên', 'nguyennguyendell@gmail.com', NULL, '$2y$10$3O1t.VJZIrWHWvhwCrdHheN3mwpC0XbT521XWDnuA5uV2DuhE/Dvu', NULL, '2021-10-25 20:51:31', '2021-10-25 21:02:43', 0, '0367785794', '152 Trần Duy Hưng', 'Phúc Anh Trần Duy Hưng', '3', 1, 1),
(42, 'Nguyễn Trung Tín', 'nguyentrungtindell@gmail.com', NULL, '$2y$10$t41ukecWJjXEF0AhqScqQ.S5G05YeBK6cFG9k0.UY93mT.t.HDvDm', NULL, '2021-10-25 21:01:47', '2021-10-25 21:02:32', 0, '0569301732', 'Hcm', 'Dellonline', '3', 1, 1),
(43, 'Huyền Ly', 'Nguyenhuyenlydell@gmail.com', NULL, '$2y$10$EC8Ocq7OPWTjkqNNMMU88eLVZNQxmkXRzPs7xJykMUSitFPRi43gm', NULL, '2021-10-25 21:03:33', '2021-10-25 22:07:44', 0, '0336569152', 'Hà Nội', 'An Khang Computer', '3', 1, 1),
(44, 'Nguyễn Thanh Huyền', 'nguyenthanhhuyendell@gmail.com', NULL, '$2y$10$q95Y7X321jDH8mcnuTbHM..aehk7UpxCH0xSMNkzKfi8UCuiTgg22', NULL, '2021-10-25 21:06:49', '2021-10-25 22:07:25', 0, '0969305520', 'Hà Nội', 'HACOM 129 - 131 Lê Thanh Nghị, Hai Bà Trưng, HN', '3', 1, 1),
(45, 'Nguyễn Thị Thương', 'nguyenthithuongdell@gmail.com', NULL, '$2y$10$7GbUb8pkuejGoAwbmhZXZ.q7lxNFs91tYyKAK2jSh2Ik.tBVyzNF.', NULL, '2021-10-25 21:47:10', '2021-10-25 22:07:07', 0, '0855789997', '79 Nguyễn Văn Huyên Cầu Giấy Hà Nội', 'Hanoicomputer 79 Nguyễn Văn Huyên', '3', 1, 1),
(46, 'Bùi Nhung', 'buinhungdell@gmail.com', NULL, '$2y$10$R/cT7oNlOjD7uBWoKNNAnen6amwVmdvj7iLWZIsRtSRspXZtZhGey', NULL, '2021-10-25 21:49:11', '2021-10-25 22:06:26', 0, '0981489535', 'Hà nội', 'An Phat Lê Thanh Nghị', '3', 1, 1),
(47, 'Trần Phương Thảo', 'phuongthaotran.dell@gmail.com', NULL, '$2y$10$UKKrNn8psoym4lmPnedgweQKk3qQgtyll7Egbqpk8.wO1mtTudQju', NULL, '2021-10-25 22:11:47', '2021-10-25 22:56:16', 0, '0904982394', 'Hà Nội', 'An Phát 49 Thái Hà', '3', 1, 1),
(48, 'Đoàn thuỳ Trang', 'doanthuytrangdell@gmail.com', NULL, '$2y$10$NFnPbd4fhcALBiJR2g6IGemGxBdL8waM1nosbP6JI2zQdcmefMufi', NULL, '2021-10-25 22:18:48', '2021-10-25 22:56:05', 0, '0967111295', 'Hà Nội', 'Đmx Thái Hà', '3', 1, 1),
(49, 'Đoàn Thuỳ Trang', 'doanthuytrang111295@gmail.com', NULL, '$2y$10$3u3RcQEIgyWm2jQyf6otk.k8sz9mvutWi98JXtoz/vVIyj875uF7W', NULL, '2021-10-25 22:33:17', '2021-10-25 22:55:52', 0, '0967111295', 'Hà Nội', 'Điện máy xanh Thái Hà', '1', 1, 1),
(50, 'Nguyễn Thị Hoàng Anh', 'hoanganhnguyendell@gmail.com', NULL, '$2y$10$iSF67t6RkClWFu9QnoqhOOrk.0XxVExXH96pZgkgurgvnqfWWFKK6', NULL, '2021-10-26 01:58:38', '2021-10-26 02:10:40', 0, '0901166321', '1104/4a Kha Vạn Cân , Linh Chiểu,Thủ Đức', 'Nguyễn Kim (Thủ Đức', '3', 1, 1),
(51, 'Nguyễn Thị Hoàng Anh', 'hoanganhne10101995@gmail.com', NULL, '$2y$10$mhzKC5puMjWvB8uy1xdV2uN4GkuAyMegh1oPsr6vxSl9Lh9bYoZoW', NULL, '2021-10-26 02:17:16', '2021-10-26 03:00:07', 0, '0901166321', '1104/4a Kha Vạn Cân , Linh Chiểu,Thủ Đức', 'Nguyễn Kim (Thủ Đức', '3', 1, 1),
(52, 'Nguyen Thi Hoang Oanh', 'oanh.nguyen@metanvietnam.com', NULL, '$2y$10$EtUJjQ0823Or/3pHDDeFEOevdJVRaNb5Vw2NUPzGEfX4ZB0bC6hrK', NULL, '2021-10-26 07:44:17', '2021-10-26 07:54:31', 0, '0908475378', '80/19 Nguyen Trai, W.3, D5', 'Metan', '1', 1, 1),
(53, 'Nguyễn Võ Hoàng Duy', 'hoangduydell@gmail.com', NULL, '$2y$10$cZz1r7RBLts4/X3TnMrwAekx9ANbDZNgF3zwBP/xVA1hhdEtabKRW', NULL, '2021-10-26 08:00:09', '2021-10-26 08:05:38', 0, '0932087178', '31 đường 25 phường 10 quận 6', 'Phong Vũ 264', '3', 1, 1),
(54, 'Hồ Thị Yến Trang', 'yentrangdell@gmail.com', NULL, '$2y$10$YjHzq.B/bYVHmlCIp/Ogn.Fu3Ojk7jHxUyL3yt7kqs/JmQ.4K/Qn6', NULL, '2021-10-26 18:15:55', '2021-10-26 18:34:38', 0, '0943149194', 'Nghệ An', 'Hồng Hà Nghệ An', '3', 1, 1),
(55, 'Nguyễn Thu Trà', 'thutra.dell@gmail.com', NULL, '$2y$10$In.2fanCypGEA1JGa/A8zO/YkZaSpFH7D8McVudd9RtRN8MYGOE6y', NULL, '2021-10-26 20:00:37', '2021-10-26 21:15:50', 0, '0904757179', 'Hà Nội', 'Sup', '3', 1, 1),
(56, 'Đặng Thị Mỹ Huyền', 'myhuyendell@gmail.com', NULL, '$2y$10$lq51wVQIu5vDs0L0w7GL7eBB2Hr0GIdXRCFpJYmM6Fdtynuv/c0JS', NULL, '2021-10-26 20:06:12', '2021-10-26 21:15:40', 0, '0902494501', '149 lê hồng phong, thành phố Quy Nhơn, Tỉnh Bình Định', 'Quy Nhơn Computer', '3', 1, 1),
(57, 'Nguyễn Nữ', 'nguyen.nu@dellonline.vn', NULL, '$2y$10$Sy5Q23fJDYcweIEKxJgWe.Yh7y/2q3sdCrwa73lh2CiGbMrf4lkO2', NULL, '2021-10-26 20:23:27', '2021-10-26 21:15:30', 0, '0935937891', '11 Hoàng Đạo Thành - quận Cẩm Lệ -TP Đà Nẵng', 'dell online', '3', 1, 1),
(58, 'Nguyễn Thị Thu Huyền', 'thuhuyenhpdell@gmail.com', NULL, '$2y$10$ZbFkKhRhiIjZIzYpP6aafui6acJBVS8i2xNs7Crhe0VnbJ1K6TRju', NULL, '2021-10-26 20:30:15', '2021-10-26 21:15:12', 0, '0934298628', 'Hải Phòng', 'CPN Hải Phòng', '3', 1, 1),
(59, 'Đỗ Thị Huỳnh Như', 'huynh.nhu@dellonline.vn', NULL, '$2y$10$4zXc3qBABko8AOJhTqLWve7OSdi13t53KZrbCeQYKqT/vzIy2AQmq', NULL, '2021-10-26 20:47:16', '2021-10-26 21:15:02', 0, '0794955873', 'Ấp Thới Hòa- Xã Long Bình- Huyện Gò Công Tây-Tỉnh Tiền Giang', 'Team Online', '3', 1, 1),
(60, 'Đỗ Thị Huỳnh Như', 'huynhnhudell@gmail.com', NULL, '$2y$10$WN9vZo6TWUPAyb5xE5Z2Ou.B.NsL569EtLOX5qy.tpPydb6.aM9jq', NULL, '2021-10-26 20:50:27', '2021-10-26 21:14:49', 0, '0794955873', 'Ấp Thới Hòa- Xã Long Bình- Huyện Gò Công Tây-Tỉnh Tiền Giang', 'Team Online', '3', 1, 1),
(62, 'Nguyễn thị lưu', 'nguyenluudell@gmail.com', NULL, '$2y$10$9phXOkKNraEVnfDs.grA.ehUkeMeQnLZHZOnoB8smGJNCRU8pP8XC', NULL, '2021-10-26 21:35:04', '2021-10-27 01:51:46', 0, '965005869', '503 hồng hà', '15 xã đàn', '3', 1, 1),
(63, 'Nguyễn Thị Lưu', 'nguyenduong170120@gmail.com', NULL, '$2y$10$68HJraJpgRCd0SElXIRa.eJRUpbnJCa/dFSiDIQBAA/DOMU7jj5lW', NULL, '2021-10-26 21:47:33', '2021-10-27 01:51:35', 0, '0965005869', '503 hồng hà', '15 xã đàn', '3', 1, 1),
(64, 'Cẩm trang', 'nguyencamtrang.dell@gmail.com', NULL, '$2y$10$wq.dD3Fe1e0jxKKYuIF2GOZuG4B/Qqo8GtBbooMT.PVqC2cJaughm', NULL, '2021-10-26 22:52:19', '2021-10-27 01:51:22', 0, '0967078447', '158-160 lý thường kiệt phường 14 quận 10', 'An Phát - lý thường kiệt', '3', 1, 1),
(65, 'Nguyễn Thị Cẩm Trang', 'Camtrang25041994@gamil.com', NULL, '$2y$10$OI8SU5RPWzMIQvIUDEgHgu.6cdkwTXRb1fUZq4od0RkuJM5.iAToi', NULL, '2021-10-26 22:59:19', '2021-10-27 01:51:10', 0, '0967078447', '158-160 lý thường kiệt, phường 14, quận 10', 'ĐẠI LÝ AN PHÁT', '3', 1, 1),
(66, 'Nguyễn Thị Cẩm Trang', 'Camtrang25041994@gmail.com', NULL, '$2y$10$1rdXvey.ReBVCWUhwMxNEu9Rc6JiDQskErc77qdmQmt6LFCDMwQhW', NULL, '2021-10-26 23:08:36', '2021-10-27 01:50:51', 0, '0967078447', '158-160 lý thường kiệt, phường 14, quận 10', 'ĐẠI LÝ AN PHÁT', '3', 1, 1),
(67, 'Hoàng thị hường', 'hoangthihuongdell@gmail.com', NULL, '$2y$10$1TuVyY/CaMy2Q5N7oNzVGu1IBwoyPsJ8Y4I6qeOXRoz0ridp3in5.', NULL, '2021-10-26 23:27:16', '2021-10-27 01:50:39', 0, '0979642463', 'Hà Nội', 'Ben - NKT', '3', 1, 1),
(68, 'Nhung Nguyen', 'nguyenhongnhungdell@gmail.com', NULL, '$2y$10$F.e.sjMoC2EcJIFFLe.m3uM3zgz2gJuLOdBTuTIliXRAeD2PA0MfK', NULL, '2021-10-27 00:20:18', '2021-10-27 01:50:29', 0, '0332960598', 'P.Xuân Đỉnh, Q.Bắc Từ Liêm, Hà Nội', 'HNC Thái Hà', '3', 1, 1),
(69, 'Nguyễn Thị Cẩm Trang', 'le@anphatpc.com.vn', NULL, '$2y$10$tE6pRwfRIjSIQ3NK1Sb2mOH3cFdVw4Nz9VdoDJOPkehMt3w40hqGq', NULL, '2021-10-27 00:39:34', '2021-10-27 01:50:17', 0, '0967078447', '158-160 lý thường kiệt, phường 14, quận 10', 'ĐẠI LÝ AN PHÁT', '3', 1, 1),
(70, 'Nguyễn Văn Kiên', 'vankien8083@gmail.com', NULL, '$2y$10$ZB4FJ/.rm0s9kMlj0gB3eOg48mMzGJd5GA921eJx5fU0O1Ta3nqrK', NULL, '2021-10-27 01:43:56', '2021-10-27 01:50:03', 0, '0904023480', 'Hà Nội', 'Hà Nội', '1', 1, 1),
(71, 'Vũ Ngọc Uyên', 'ngocuyenhoangphat@gmail.com', NULL, '$2y$10$Lc9jhy8LcfbbSBdwpUCls.Lnl/djfw99910Eo0u60TbZy0QMBfpDm', NULL, '2021-10-27 02:13:45', '2021-10-27 02:51:42', 0, '0936661733', 'Tầng 4, Sô 4 lô 2A lê hồng phong, ngô quyền, hải phòng', 'Công ty TNHH TM Hoàng Phát', '1', 1, 1),
(72, 'Phạm Đỗ Thanh Thế', 'thepdt@nguyenkimvn.vn', NULL, '$2y$10$92Ub0vnOC/ATUAjzhMk5o.AULjQY6Il4o.PgfBuDFk0wzjAtOXqNm', NULL, '2021-10-27 02:16:14', '2021-10-27 02:51:23', 0, '0933880711', '117 Nguyễn Cư Trinh Phường Nguyễn Cư Trinh Quận 1', 'Quận 1', '1', 1, 1),
(73, 'VĂN PHÚ NGUYÊN LAI', 'van.phu.nguyen.lai@psd.com.vn', NULL, '$2y$10$XnaQZoC1cunNMPynTU5gHO2CF30m.SGzcObJ8Z8hJ6Z8ROi77noQO', NULL, '2021-10-27 02:16:33', '2021-10-27 02:50:44', 0, '0905151676', 'TP Đà Nẵng', 'CTY PSD - CN DN', '2', 1, 1),
(74, 'TỪ KIM HOÀNG', 'hoangkim9931@gmail.com', NULL, '$2y$10$fHUlZQTXKNLcKsf9BwQ1I.J2h3GHzeL2/EYOVgMEsJjQv7qTu7aTW', NULL, '2021-10-27 02:21:48', '2021-10-27 02:50:34', 0, '0818797045', '201/22 vĩnh viễn p4 q10', 'CÔNG TY TNHH NGUYÊN KIM', '1', 1, 1),
(75, 'TỪ KIM HOÀNG', 'hoangtk@nguyenkimvn.vn', NULL, '$2y$10$72jez.B8nNtoSvvFOb.pZODQjRVwITl9/GX2huF5D36zdNoFnGJ/S', NULL, '2021-10-27 02:25:01', '2021-10-27 02:50:25', 0, '0818797045', '201/22 vĩnh viễn p4 q10', 'CÔNG TY TNHH VI TÍNH NGUYÊN KIM', '1', 1, 1),
(76, 'Trần Lương Mạnh Khang', 'khangtlm@microstar.com.vn', NULL, '$2y$10$V/umwrKoxeBC4YZwf5CHPOxr.Dd2J12KaAnWZS5lRxgfaM4WSEpWe', NULL, '2021-10-27 02:29:52', '2021-10-27 02:50:16', 0, '0825527134', 'Can 801, Lo C1, Chung cu Ly Thuong Kiet, phuong 7,', 'Công ty TNHH Một thành viên Công nghệ Tin học Viễn Sơn', '2', 1, 1),
(77, 'Nguyễn Tuấn Anh', 'anknt1983@gmail.com', NULL, '$2y$10$SJSfpEGVQm2hwZ.pjWrTOOoiE8NBS1yhv7sH/unW0k2z6BliIsCTe', NULL, '2021-10-27 02:30:03', '2021-10-27 02:49:54', 0, '0834146116', '173 Xuân Thủy, Cầu Giấy', 'Pico', '1', 1, 1),
(78, 'PHam Trung Phuong', 'phuongpt@cpn.com.vn', NULL, '$2y$10$vpcan3ON8afldVUrT8u45OtZGorW20O/Q4O52p.GvagaRAzo8OtS2', NULL, '2021-10-27 02:43:17', '2021-10-27 02:49:43', 0, '0936899050', 'số 7 lô 2A Lê Hồng Phong', 'CPN Việt Nam', '1', 1, 1),
(79, 'Phùng Thị Thanh Thúy', 'karemphung@gmail.com', NULL, '$2y$10$wunbq18q8AhYN6.aNjS94udUcY/xX7.PXhYuFKbr.b2E3kJ/9chQK', NULL, '2021-10-27 02:57:10', '2021-10-27 03:07:38', 0, '0904471167', '175 Nguyễn Thị Minh Khai Quận 1', 'Cty Viễn Sơn', '2', 1, 1),
(80, 'Lê Hoàng Thiện', 'thien.lh01@phongvu.vn', NULL, '$2y$10$R7KooCjW/sigbCA4ZK5YiOzRAwYXULSLCLp.Qt6BvugEji1cs.raK', NULL, '2021-10-27 02:58:28', '2021-10-27 03:07:21', 0, '0975250572', '6B Phạm Hùng, x Bình Hưng, Bình Chánh', 'VP HCM Phong Vũ', '1', 1, 1),
(81, 'Dat Huynh', 'huynhtandat.hcm@gmail.com', NULL, '$2y$10$eHuYpskbnkxH.z.W4rAQbe03k2oKSR0ZBPSaELOINkxxJ1qnumInK', NULL, '2021-10-27 03:17:26', '2021-10-27 04:03:38', 0, '+84947989900', 'Thanh Loan street, W.5, Dist.8', 'HCM', '3', 1, 1),
(82, 'Nguyễn Thị Phương Thảo', 'thaontp@ankhang.net', NULL, '$2y$10$PFxZiZM8vrqMAgA5swqsMOGqFBilz.9ygU4UIq3HCnt/nYs7Zitia', NULL, '2021-10-27 04:11:14', '2021-10-27 05:53:20', 0, '0334909125', 'Liên Trung, Đan Phượng, Hà Nội', 'Công ty TNHH Máy tính và viễn thông An Khang', '1', 1, 1),
(83, 'Doãn Hoà', 'doanhoatt@gmail.com', NULL, '$2y$10$5KaXoqMf.f5VQ5VUCFcdi.sq0k1bgdj/SxJ3j6/fn9m0.Rjk.6jKC', NULL, '2021-10-27 05:07:35', '2021-10-27 05:53:07', 0, '989970642', 'Thanh Xuân', 'Pico 346 Nguyễn Trãi', '1', 1, 1),
(84, 'Nguyễn Phước Đạt', 'phuocdatkt@gmail.com', NULL, '$2y$10$W8.B/0dr6WjjLlkUlwfHS.php6RheDroZ0rBu.lMWR71jqFKrzsTC', NULL, '2021-10-27 05:19:09', '2021-10-27 05:52:55', 0, '0905710005', '307 Trần Hưng Đạo', 'Công Ty TNHH MTV Điện Máy Duyên', '1', 1, 1),
(85, 'Nguyễn Thị Cẩm Trang', 'baovy20062021@gmail.com', NULL, '$2y$10$nwrIOMxVSkLnIvD7muRFLeJ6EGPCqKiwTBnbp51CrAkhSMOzOU096', NULL, '2021-10-27 05:28:09', '2021-10-27 05:52:30', 0, '0901166321', 'Gò vấp', 'An Phát Lý Thường Kiệt', '3', 1, 1),
(86, 'le thị xuyên', 'lethixuyendell@gmail.com', NULL, '$2y$10$neEDyN8CCJQc2sQRfkFUNewkImJQjAxgrWGQQxUGNU04TPhzPC9yu', NULL, '2021-10-27 05:45:06', '2021-10-27 05:52:17', 0, '0372739438', 'thanh trì hà nội', 'fpt 45 thái hà', '3', 1, 1),
(87, 'Phạm Ngọc Lương', 'phamngocluong1312@gmail.com', NULL, '$2y$10$V8/pMloWIXn0rCgEZRMdAOPLqKjAbPaToFG6ZRLLPPcWXHCCQUBmq', NULL, '2021-10-27 05:47:59', '2021-10-27 05:50:49', 0, '0987553503', 'Số 90, Lê Hồng Phong', 'Pico Ninh Bình', '1', 1, 1),
(88, 'Bắc Nguyễn', 'cafedag@gmail.com', NULL, '$2y$10$rxDwjrlNScmyYdqxB4RaVOsHMjtvDIvxRKGmqqTj/kJM5UmmHoo9C', NULL, '2021-10-27 05:48:02', '2021-10-27 05:50:39', 0, '+84966641891', '90 lê hồng phong', 'Pico Ninh Bình', '1', 1, 1),
(89, 'NGUYỄN THỊ THẢO HIỀN', 'nguyenthithaohiendell@gmail.com', NULL, '$2y$10$BsAfo4acw0fh5wtglT/aBuDbAC7SMYPnFhZ660PPFsjwQtv3Bp4gG', NULL, '2021-10-27 05:52:02', '2021-10-27 05:52:43', 0, '0907885792', '68/14 Phạm Thái Bường Phường 4, Thành Phố Vĩnh Long', 'Đỗ Gia Vĩnh Long', '3', 1, 1),
(90, 'Nguyễn Vĩnh Hiệp', 'hiep8765@gmail.com', NULL, '$2y$10$CNiyQA/gvEgs.YcoOVV7eeravhGaPEA4d33iv8pwWTJ2/RLtzPqsO', NULL, '2021-10-27 06:04:52', '2021-10-27 06:17:20', 0, '0902737887', 'T3-404 Chung Cư Palm Heights - Phường An Phú - TP Thủ Đức', 'Dell', '3', 1, 1),
(91, 'VÕ MINH LUÂN', 'duonglong93vl@gmail.com', NULL, '$2y$10$BONa122QvnaF02ClK25.cOP2tlquqf2kR1JJgz0qZYqKVsCHp.fY2', NULL, '2021-10-27 06:08:08', '2021-10-27 06:17:10', 0, '+84387696580', '17A, Lý Tự Trọng,Ninh Kiều,Cần Thơ', 'Cần Thơ', '1', 1, 1),
(92, 'VÕ THẢO', 'thaovo@tnc.com.vn', NULL, '$2y$10$jCa5vMwdVsFGhNsdOCZVkOxsnzW4aGC5S.VnTR0dvWuVnFaQHff76', NULL, '2021-10-27 07:41:22', '2021-10-27 09:25:17', 0, '0908491272', '176 Bùi Thị Xuân, Phường Phạm Ngũ Lão Quận 1', 'Công ty TNHH Tin Học Thành Nhân', '1', 1, 1),
(93, 'Bùi Nguyễn Khôi Nguyên', 'khoinguyendell@gmail.com', NULL, '$2y$10$uA1rrmJMFcH1MGT0chaLO.u4hB2GpsXXl.HzeBCZFJ9FUdWkeQIjC', NULL, '2021-10-27 08:40:00', '2021-10-27 09:25:29', 0, '0907346795', '17a Lý Tự Trọng, An Phú, Ninh Kiều TP Cần Thơ', 'TPT Cần Thơ', '3', 1, 1),
(94, 'Nguyễn Anh Kiệt', 'kietnguyen190619@gmail.com', NULL, '$2y$10$QNmHfuzxD1AQCuDs./rvHezs5Gd0Tw3c6oZTc5iwGFkJmmxTF5fEi', NULL, '2021-10-27 09:27:01', '2021-10-27 18:26:09', 0, '0857569002', 'HCM', 'Metan', '3', 1, 1),
(95, 'Tinh Dang', 'tinh.dang@adg.vn', NULL, '$2y$10$6Pyx4f2gSZzyJIK52CA5yuEhNxBLseh8W0mk9QYkf9ekl7q1Q00Na', NULL, '2021-10-27 18:41:17', '2021-10-27 18:44:26', 0, '0974265885', '42 Ngụy Như KonTum', 'ADG', '2', 1, 1),
(96, 'HOANG CAO DAT', 'dat.hoang@chinhnhan.vn', NULL, '$2y$10$e.FlWxdFWhegQyRmUtRSAuePXq.CKiGe41uPi4FDNAIcr2luky7dK', NULL, '2021-10-27 19:16:10', '2021-10-27 19:36:41', 0, '0966857478', '245 Trần Quang Khải , Phường Tân Định, Quận 1, TP.HCM', 'Công ty TNHH Công Nghệ Chính Nhân', '1', 1, 1),
(97, 'PHAM HONG DIEP', 'diepph@nguyenkimvn.vn', NULL, '$2y$10$C.Bu0//pujyBklxd5q3zaOvj9VeTB3hdiML8SorxiI9rzxhHaXaRi', NULL, '2021-10-27 19:23:09', '2021-10-27 19:36:28', 0, '0933808893', '245B Trần Quang Khải ,P. Tân Định, Q1', '245B Trần Quang Khải ,P. Tân Định, Q1', '1', 1, 1),
(98, 'Nguyễn Chí Đạo', 'daonc@nguyenkimvn.vn', NULL, '$2y$10$gCFPQE6Y5yKQ8Wk9Txtq6O/vsEcYpn/pzX1WtaYyD1KwID/m6kKnO', NULL, '2021-10-27 19:29:48', '2021-10-27 19:36:18', 0, '0948786844', '245B Trần Quang Khải Q1', 'Công Ty TNHH Vi Tính Nguyên Kim', '1', 1, 1),
(99, 'TRẦN DƯƠNG NGỌC TRÂM', 'ngoctramdell@gmail.com', NULL, '$2y$10$I1LkncOhk5NiY2wFDfO/7ukMrVfK.wReRvBYcnxmg1ictWG/qKROy', NULL, '2021-10-27 20:03:32', '2021-10-27 20:03:32', 0, '0966805781', '211 đường 3/2 Phường Hưng Lợi Quận Ninh Kiều Tp Cần Thơ', 'siêu thị Phương Tùng Cần Thơ', '3', 1, 1),
(100, 'Hà Thanh Toàn', 'hatoan1003@gmail.com', NULL, '$2y$10$nC0BtQEyyuw0.G0tCS1lQOJyR6KIC7SaXAePi/tJVOQTxF5YKSkJ.', NULL, '2021-10-27 20:57:51', '2021-10-27 20:57:51', 0, '0947999849', '45/5 Huỳnh Thúc Kháng,An Nghiệp ,Cần Thơ', 'ADG', '1', 1, 1),
(101, 'Ngô Thị Trà My', 'myngodell@gmail.com', NULL, '$2y$10$cZllKqPDsZZ3ygEVOddSruKrCpv7Yl2drViAk8alvQ7gyQIG9RSjy', NULL, '2021-10-27 22:30:47', '2021-10-27 22:30:47', 0, '0961047264', 'Hà Nội', 'Mediamart', '3', 1, 1),
(102, 'Nguyễn lưu', 'anhduong170120@gmail.com', NULL, '$2y$10$l.H5Sz2FYSRoDSROPbSS0.EdbDZibSS9WRCWepekO47riBytoQdjW', NULL, '2021-10-27 23:12:25', '2021-10-27 23:12:25', 0, '0965005869', '503 hồng hà', '15 xã đàn', '3', 1, 1),
(104, 'TRƯƠNG MINH TÌNH', 'minhtinhkt@gmail.com', NULL, '$2y$10$7jcRsD.Opdvv8liVkfRXAuFXZtlPkESGlUfwd/VX9Gbf4ZRdvRonq', NULL, '2021-10-27 23:36:33', '2021-10-27 23:36:33', 0, '0902766729', '245 trần quang khải, phường tân định, quận 1', 'CÔNG TY TNHH CÔNG NGHỆ CHÍNH NHÂN', '1', 1, 1),
(105, 'Truong Ngoc Duy', 'duytn@microstar.com.vn', NULL, '$2y$10$u610prMmAe3rc9JXCa08C.8FzopYtE6Ar2acU.vYmtx2ePng98XU2', NULL, '2021-10-28 00:19:41', '2021-10-28 00:19:41', 0, '0913898567', '162B Bùi Thị Xuân', 'Đà Nẵng', '2', 1, 1),
(106, 'Lê Thanh Huyền', 'lethithanhhuyendell@gmail.com', NULL, '$2y$10$6ZoKVvFpVBl/Se7VmvMksOBtTnO0LMa41uTa..9WOopkjuk4RB0YK', NULL, '2021-10-28 00:45:47', '2021-10-28 00:45:47', 0, '0904217988', 'Hải Phòng', 'Hoàng Phát', '3', 1, 1),
(109, 'Phạm Gia Hân', 'phamgiahandell@gmail.com', NULL, '$2y$10$mxkmm6OqZ84n2iAtU6sVuOC3ICYqIV1ue3T90UwCKu9oHLJ.aMbam', NULL, '2021-10-28 09:02:01', '2021-10-28 09:02:01', 0, '0906670405', '290/30/9 Nơ Trang Long, p.12, q.Bình Thạnh, TP.HCM', '145 Nguyễn Thị Minh Khai, p.Phạm Ngũ Lão, q.1, TP.HCM', '3', 1, 1),
(110, 'Đỗ Thị Hoàng Diễm', 'Hoangdiemdell@gmail.com', NULL, '$2y$10$Uin.pGsjIkWAmVAHMwVOgua.QA/HNUSZ5QrgsQjmJjvT4ABmtc93a', NULL, '2021-10-28 09:13:07', '2021-10-28 09:13:07', 0, '0389767887', '43 trương đình hội phường 16 quận 8', 'Nguyễn Kim quận 1', '3', 1, 1),
(112, 'Bùi Lương Thiên Nhi', 'thiennhidell@gmail.com', NULL, '$2y$10$jLCA..XQR6FTwHzzfdVwdu922ibXjiJdL8e1m2BoqIhCAw0Q8rzyC', NULL, '2021-10-28 19:02:54', '2021-10-28 19:02:54', 0, '0902612920', 'CTU-TECH Số 01 Lý Tự Trọng, An Phú, Ninh Kiều, Cần Thơ', 'CTU-TECH Số 01 Lý Tự Trọng, An Phú, Ninh Kiều, Cần Thơ', '3', 1, 1),
(113, 'Đỗ Thị Lê Trâm', 'lbhue57@gmail.com', NULL, '$2y$10$CDb3EiKvEd7EiOnT5khpIeqbh39VAbbTTSftiuS7Z4h7ljPLego7i', NULL, '2021-10-28 19:06:42', '2021-10-28 19:06:42', 0, '0777180861', 'Số 01 Lý Tự Trọng, An Phú, Ninh Kiều, Cần Thơ', 'CTU-TECH', '1', 1, 1),
(114, 'Nguyễn Hoàng Trung', 'hoangtrung@dgw.com.vn', NULL, '$2y$10$qala508DtsQoZn.j7H2Wd.A.65j8M2.WH5nigkNGzSaeHnntYsMpi', NULL, '2021-10-31 18:33:17', '2021-10-31 18:33:17', 0, '0789525225', 'Số 1 Thái Hà', 'DGW', '2', 1, 1),
(115, 'Vũ Ngọc Hiếu', 'vuhieu197@gmail.com', NULL, '$2y$10$d9.n0mumZXtbrPACJktZheY5vNX4jPkK/ofrMdoyA5ZYeI0E/7e5G', NULL, '2021-10-31 18:51:18', '2021-10-31 18:51:18', 0, '0913539585', 'HCM', 'Digiworld', '2', 1, 1),
(116, 'Trương Duy Nhật Trung', 'nhattrung@dgw.com.vn', NULL, '$2y$10$Hhcxi2u6Yb5ZAUlBknrl1u.BpuaU1QgQlDXngbgLbXmSZXjcIFLPC', NULL, '2021-10-31 18:55:02', '2021-10-31 18:55:02', 0, '0979437079', '285 Phan Văn Hớn, P. Tân Thới Nhất, Q. 12, TP. HCM', '203 Cách Mạng Tháng Tám, Phương 4, Quận 3, TP. HCM', '1', 1, 1),
(117, 'Đinh Hoàng Vũ', 'dinhhoangvu.1996@gmail.com', NULL, '$2y$10$lIZ5wea0BxhsdOdBOQRD7enN5FsCI848U7pCeTEItiObILngEnEcm', NULL, '2021-10-31 21:34:43', '2021-10-31 21:34:43', 0, '0987448750', 'Nhà 06-N01 khu tái định cư Triều Khúc', 'Phúc Anh', '1', 1, 1),
(118, 'Tô Thị Kiều My', 'kieumy170399@gmail.com', NULL, '$2y$10$j1.wGnOWJCnH50QSYjGLauMP2wSf3gCK5ualmwk8jzeaSFOLLLojK', NULL, '2021-11-01 00:05:21', '2021-11-01 00:05:21', 0, '0344126094', '1194 đường láng', '173XT', '1', 1, 1),
(119, 'Trần Hải Đăng', 'danganh051191@gmail.com', NULL, '$2y$10$/hXvjGU0qHAw82ZNhMzt1.QT9uRQA8ftcK4r0LeStobca5SN43052', NULL, '2021-11-01 18:50:45', '2021-11-01 18:50:45', 0, '0896688288', '73 An Trạch', 'Phòng Dự Án - Phúc Anh 134 Thái Hà', '1', 1, 1),
(121, 'Nguyen Tan Trung', 'tantrungster@gmail.com', NULL, '$2y$10$AVMSGAGw48uzxH9./Q0k3uI7zfRom7jphR1TnAtzJ8joiozpZqSJ2', NULL, '2021-11-29 20:22:49', '2021-11-29 20:22:49', 0, '0935695955', 'Ho chi mihn', 'HCM', '2', 1, 1),
(126, 'Binh Nguyen', 'binh.nguyen@metanvietnam.com', NULL, '$2y$10$14UDMy9pBeRxomjhSTjF6.fXoaQOAFjAuY6cI9jBF0F96G/34pLcS', NULL, '2021-12-06 01:40:01', '2021-12-06 01:40:01', 1, NULL, NULL, NULL, '1', 1, 1),
(128, 'Quốc Trung', 'dellsteam2018@gmaill.com', NULL, '$2y$10$/62SO1uPnvJ2EL25wNF7Iex9QpAC1BJXdFzXC/D7ZWxsptdQr2mIm', NULL, '2021-12-21 22:51:40', '2021-12-21 22:51:40', 0, '0938812607', '231/81 Dương Bá Trạc P1 Q8', 'Phong vu', '1', 1, 1),
(129, 'METAN', 'binh.metan@gmail.com', NULL, '$2y$10$0GZcxsa2sK2jhr4CN8nDiuhwigX08LLb4dn4ToANAc.V.hvjJNT6C', NULL, '2021-12-22 06:46:40', '2021-12-22 07:29:13', 0, '0938738383', '150 TRAN PHU', 'DELL HOÀNG', '1', 1, 1),
(130, 'Trung IT', 'trung.ngo@metanvietnam.com', NULL, '$2y$10$5WGHUUc4YBhfXIJwKE/FUeWvb9amisD5oMisiVb1UfucDGweMCdxe', NULL, '2021-12-23 07:16:38', '2021-12-23 07:16:38', 1, NULL, NULL, 'HP', '1', 1, 1),
(131, 'hoang_test', 'nxhoang201195@gmail.com', NULL, '$2y$10$ip/WYJjSnUdV1V2iEmPQjOQum4eeiqdQCbfq9xSujFRPfT/Aro9k.', NULL, '2021-12-26 16:52:47', '2021-12-26 16:52:59', 0, '44343434', 'HCM', 'HCM', '1', 1, 1),
(132, 'sasa', 'bugh4nter@gmail.com', NULL, '$2y$10$StpbEuAbJw2v4R/76RUO4Oggu4t3o1YUQ2pa/10smyUFl1Rgq56aK', NULL, '2023-12-25 06:14:42', '2023-12-25 06:14:42', 0, '08755023065', 'sadsadsadsa', 'asasas', '2', 1, 1),
(133, 'pHqghUme', 'sample@email.tst', NULL, '$2y$10$8zAmP5pYKwQWVa2ZniDeOezsVhLIq6g/RTwIqBKE9nObJZ54NBNP6', NULL, '2023-12-25 06:33:42', '2023-12-25 06:33:42', 0, '555-666-0606', '3137 Laguna Street', '1', '3', 1, 1),
(138, 'pHqghUme', 'sample@email.tst9697208', NULL, '$2y$10$yLlZsddoV9S4jAMxypll7.ODIBIuIuHnDcfeiiDr6FxdgodIidrnK', NULL, '2023-12-25 06:35:36', '2023-12-25 06:35:36', 0, '555-666-0606', '3137 Laguna Street', '1', '3', 1, 1),
(141, 'JCfUZQsq', 'sample@email.tst9330658', NULL, '$2y$10$y5VqfYMMNO2c8c8l5Du3Ousw3h/TYBbrL/8VV4KrxeaXqLkZwi0IC', NULL, '2023-12-30 07:15:55', '2023-12-30 07:15:55', 0, '555-666-0606', '3137 Laguna Street', '1', '3', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_test_histories`
--

CREATE TABLE `user_test_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `question_group` int DEFAULT NULL,
  `id_training` int NOT NULL,
  `answered` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `score` int DEFAULT '0',
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_test_histories`
--

INSERT INTO `user_test_histories` (`id`, `question_group`, `id_training`, `answered`, `score`, `user_id`, `created_at`, `updated_at`, `type`) VALUES
(56, NULL, 5, NULL, 0, 17, '2021-10-20 20:08:44', '2021-10-20 20:08:44', 1),
(57, 1, 5, '{\"50\":\"C\",\"51\":\"C\",\"52\":\"C\",\"53\":\"C\",\"54\":\"A\"}', 1, 17, '2021-10-20 20:11:35', '2021-10-20 20:11:35', 0),
(58, 1, 5, '{\"50\":\"A\",\"51\":\"C\",\"52\":\"C\",\"53\":\"C\",\"54\":\"C\"}', 3, 17, '2021-10-20 20:19:09', '2021-10-20 20:19:09', 0),
(59, 1, 5, '{\"50\":\"A\",\"51\":\"B\",\"52\":\"C\",\"53\":\"D\",\"54\":\"A\"}', 2, 17, '2021-10-20 20:43:37', '2021-10-20 20:43:37', 0),
(60, 1, 5, '{\"50\":\"I\",\"51\":\"P\",\"52\":\"F\",\"53\":\"A\",\"54\":\"N\"}', 0, 17, '2021-10-21 03:09:31', '2021-10-21 03:09:31', 0),
(61, 1, 5, '{\"50\":\"I\",\"51\":\"P\",\"52\":\"F\",\"53\":\"C\",\"54\":\"N\",\"55\":\"C\",\"56\":\"M\",\"57\":\"T\",\"58\":\"M\",\"59\":\"M\",\"60\":\"V\",\"61\":\"P\",\"62\":\"P\",\"63\":\"L\",\"64\":\"C\",\"65\":\"D\",\"66\":null,\"67\":\"1\",\"68\":\"S\",\"69\":\"D\"}', 1, 17, '2021-10-21 08:05:13', '2021-10-21 08:05:13', 0),
(62, 1, 5, '{\"59\":\"T\",\"64\":\"K\",\"57\":\"M\",\"68\":\"S\",\"62\":\"P\",\"66\":null,\"51\":\"C\",\"67\":\"1\",\"61\":\"P\",\"54\":\"N\",\"52\":\"4\",\"50\":\"I\",\"56\":\"T\",\"58\":\"T\",\"63\":\"L\",\"53\":\"A\",\"55\":\"K\",\"60\":\"P\",\"69\":\"D\"}', 0, 17, '2021-10-21 08:16:25', '2021-10-21 08:16:25', 0),
(63, 1, 5, '{\"66\":null,\"54\":\"N\",\"64\":\"C\",\"53\":\"A\",\"62\":\"P\",\"65\":\"D\",\"59\":\"T\",\"51\":\"P\",\"56\":\"M\",\"50\":\"I\",\"63\":\"L\",\"58\":\"T\",\"57\":\"T\",\"68\":null,\"69\":\"S\",\"55\":\"C\",\"61\":\"V\",\"60\":\"P\",\"52\":\"F\",\"67\":\"1\"}', 0, 17, '2021-10-21 08:29:13', '2021-10-21 08:29:13', 0),
(64, 1, 5, '{\"50\":\"I\",\"56\":\"C\",\"60\":\"P\",\"67\":\"1\",\"59\":\"M\",\"61\":\"P\",\"65\":\"D\",\"63\":\"L\",\"51\":\"P\",\"57\":\"M\",\"54\":\"N\",\"64\":\"C\",\"62\":\"P\",\"68\":null,\"52\":\"F\",\"69\":\"S\",\"58\":\"M\",\"53\":\"A\",\"55\":\"C\",\"66\":null}', 1, 17, '2021-10-21 08:30:48', '2021-10-21 08:30:48', 0),
(65, 1, 5, '{\"58\":\"C\",\"60\":\"P\",\"64\":\"K\",\"61\":\"P\",\"66\":null}', 1, 17, '2021-10-21 08:35:31', '2021-10-21 08:35:31', 0),
(66, 1, 5, '{\"65\":\"D\",\"62\":\"V\",\"57\":\"T\",\"52\":\"F\",\"54\":\"N\",\"56\":\"M\",\"55\":\"C\",\"50\":\"I\",\"63\":\"L\",\"67\":\"1\",\"58\":\"T\",\"68\":null,\"61\":\"P\",\"53\":\"A\",\"59\":\"T\",\"69\":\"S\",\"64\":\"C\",\"60\":\"P\",\"66\":null,\"51\":\"P\"}', 0, 17, '2021-10-21 08:41:27', '2021-10-21 08:41:27', 0),
(67, 1, 5, '{\"54\":\"N\",\"69\":\"D\",\"58\":\"C\",\"59\":\"M\",\"52\":\"F\",\"63\":\"L\",\"64\":\"C\",\"55\":\"K\",\"61\":\"V\",\"67\":\"1\",\"56\":\"C\",\"60\":\"P\",\"66\":null,\"62\":\"P\",\"51\":\"B\",\"50\":\"A\"}', 4, 17, '2021-10-21 08:45:29', '2021-10-21 08:45:29', 0),
(68, 1, 5, '{\"66\":null,\"51\":\"B\",\"52\":\"F\",\"54\":\"N\",\"64\":\"C\",\"55\":\"C\",\"65\":\"D\",\"61\":\"P\",\"57\":\"M\",\"68\":null,\"50\":\"A\",\"63\":\"L\",\"69\":\"S\",\"56\":\"T\",\"62\":\"V\",\"67\":\"1\",\"59\":\"T\",\"60\":\"P\",\"53\":\"A\",\"58\":\"T\"}', 2, 17, '2021-10-21 08:49:27', '2021-10-21 08:49:27', 0),
(69, 1, 5, '{\"59\":\"C\",\"52\":\"4\",\"58\":\"C\",\"62\":\"V\",\"54\":\"N\",\"61\":\"P\",\"63\":\"L\",\"67\":\"1\",\"65\":\"D\",\"50\":\"A\",\"69\":\"S\",\"56\":\"C\",\"66\":null,\"53\":\"C\",\"51\":\"D\",\"64\":\"C\",\"55\":\"C\",\"60\":\"V\",\"57\":\"T\",\"68\":null}', 4, 21, '2021-10-21 09:00:33', '2021-10-21 09:00:33', 0),
(70, 1, 5, '{\"56\":\"C\",\"59\":\"D\",\"52\":\"A\",\"67\":\"B\",\"66\":\"A\",\"51\":\"B\",\"58\":\"C\",\"54\":\"C\",\"55\":\"A\",\"50\":\"A\",\"61\":\"C\",\"62\":\"A\",\"63\":\"A\",\"57\":\"B\",\"69\":\"A\",\"65\":\"A\",\"68\":\"A\",\"64\":\"A\",\"53\":\"C\",\"60\":\"C\"}', 19, 17, '2021-10-21 09:17:35', '2021-10-21 09:17:35', 0),
(71, 1, 5, '{\"67\":\"A\",\"54\":\"A\",\"66\":\"B\",\"59\":\"A\",\"62\":\"A\",\"57\":\"C\",\"64\":\"A\",\"56\":\"C\",\"60\":\"C\",\"52\":\"D\",\"51\":\"D\",\"61\":\"C\",\"55\":\"A\",\"69\":\"A\",\"65\":\"B\",\"63\":\"A\",\"50\":\"A\",\"68\":\"A\",\"58\":\"B\",\"53\":\"C\"}', 10, 27, '2021-10-22 18:08:30', '2021-10-22 18:08:30', 0),
(72, 1, 5, '{\"56\":\"C\",\"66\":\"A\",\"69\":\"A\",\"58\":\"B\",\"68\":\"A\",\"61\":\"C\",\"62\":\"A\",\"59\":\"B\",\"64\":\"A\",\"63\":\"A\",\"67\":\"B\",\"55\":\"A\",\"51\":\"B\",\"60\":\"C\",\"53\":\"C\",\"52\":\"A\",\"57\":\"B\",\"65\":\"A\",\"50\":\"A\"}', 16, 31, '2021-10-22 21:24:56', '2021-10-22 21:24:56', 0),
(73, 1, 5, '{\"61\":\"C\",\"54\":\"C\",\"65\":\"A\",\"66\":\"B\",\"50\":\"A\",\"63\":\"A\",\"51\":\"B\",\"69\":\"A\",\"60\":\"C\",\"64\":\"A\",\"58\":\"C\",\"62\":\"B\",\"67\":\"B\",\"56\":\"C\",\"53\":\"C\",\"59\":\"C\",\"55\":\"A\",\"52\":\"E\",\"57\":\"C\",\"68\":\"A\"}', 15, 28, '2021-10-22 21:38:15', '2021-10-22 21:38:15', 0),
(74, 1, 5, '{\"50\":\"A\",\"53\":\"C\",\"65\":\"B\",\"60\":\"C\",\"63\":\"A\",\"59\":\"C\",\"64\":\"A\",\"68\":\"A\",\"66\":\"A\",\"54\":\"C\",\"58\":\"C\",\"67\":\"B\",\"51\":\"D\",\"62\":\"A\",\"52\":\"E\",\"55\":\"A\",\"57\":\"C\",\"56\":\"A\",\"69\":\"A\",\"61\":\"C\"}', 14, 27, '2021-10-22 22:11:00', '2021-10-22 22:11:00', 0),
(75, 1, 5, '{\"63\":\"A\",\"54\":\"C\",\"62\":\"A\",\"53\":\"C\",\"66\":\"A\",\"68\":\"A\",\"52\":\"E\",\"50\":\"A\",\"65\":\"B\",\"58\":\"C\",\"69\":\"A\",\"59\":\"C\",\"56\":\"C\",\"61\":\"C\",\"57\":\"C\",\"64\":\"A\",\"67\":\"B\",\"60\":\"C\",\"55\":\"E\",\"51\":\"D\"}', 16, 27, '2021-10-24 19:13:04', '2021-10-24 19:13:04', 0),
(76, 1, 5, '{\"65\":\"A\",\"58\":\"C\",\"62\":\"A\",\"52\":\"E\",\"53\":\"C\",\"63\":\"A\",\"51\":\"B\",\"61\":\"C\",\"56\":\"C\",\"66\":\"A\",\"60\":\"C\",\"59\":\"D\",\"55\":\"E\",\"69\":\"A\",\"68\":\"A\",\"64\":\"A\",\"54\":\"C\",\"57\":\"B\",\"50\":\"A\",\"67\":\"B\"}', 20, 27, '2021-10-24 19:21:56', '2021-10-24 19:21:56', 0),
(77, 1, 5, '{\"63\":\"B\",\"58\":\"C\",\"67\":\"B\",\"69\":\"A\",\"62\":\"A\",\"53\":\"B\",\"57\":\"C\",\"60\":\"C\",\"50\":\"A\",\"65\":\"A\",\"66\":\"B\",\"68\":\"A\",\"56\":\"C\",\"54\":\"B\",\"59\":\"C\",\"61\":\"A\",\"51\":\"B\",\"52\":\"E\",\"55\":\"E\",\"64\":\"A\"}', 13, 32, '2021-10-24 19:33:14', '2021-10-24 19:33:14', 0),
(78, 1, 5, '{\"51\":\"C\",\"62\":\"B\",\"61\":\"B\",\"63\":\"B\",\"50\":\"D\",\"65\":\"B\",\"56\":\"C\",\"59\":\"C\",\"69\":\"A\",\"67\":\"B\",\"55\":\"E\",\"53\":\"C\",\"57\":\"C\",\"60\":\"B\",\"66\":\"A\",\"64\":\"A\",\"68\":\"A\",\"58\":\"C\",\"52\":\"E\",\"54\":\"B\"}', 10, 33, '2021-10-24 19:33:23', '2021-10-24 19:33:23', 0),
(79, 1, 5, '{\"66\":\"B\",\"67\":\"A\",\"68\":\"A\",\"57\":\"C\",\"59\":\"C\",\"65\":\"A\",\"69\":\"A\",\"51\":\"C\",\"50\":\"A\",\"58\":\"C\",\"64\":\"A\",\"55\":\"E\",\"52\":\"E\",\"56\":\"C\",\"62\":\"B\",\"53\":\"C\",\"63\":\"A\",\"61\":\"A\",\"60\":\"B\",\"54\":\"C\"}', 12, 36, '2021-10-24 22:39:22', '2021-10-24 22:39:22', 0),
(80, 1, 5, '{\"51\":\"D\",\"69\":\"A\",\"53\":\"A\",\"61\":\"C\",\"59\":\"D\",\"60\":\"C\",\"52\":\"D\",\"63\":\"B\",\"64\":\"A\",\"50\":\"D\",\"57\":\"D\",\"68\":\"A\",\"67\":\"A\",\"58\":\"D\",\"56\":\"C\",\"62\":\"C\",\"54\":\"A\",\"66\":\"B\",\"65\":\"A\",\"55\":\"E\"}', 9, 37, '2021-10-25 02:29:40', '2021-10-25 02:29:40', 0),
(81, 1, 5, '{\"50\":\"A\",\"60\":\"A\",\"67\":\"A\",\"69\":\"B\",\"62\":\"B\",\"56\":\"B\",\"55\":\"C\",\"59\":\"B\",\"63\":\"A\",\"61\":\"C\",\"57\":\"B\",\"53\":\"A\",\"51\":\"D\",\"66\":\"B\",\"58\":\"B\",\"64\":\"A\",\"68\":\"A\",\"65\":\"A\",\"54\":\"B\",\"52\":\"C\"}', 7, 27, '2021-10-25 03:00:06', '2021-10-25 03:00:06', 0),
(82, 1, 5, '{\"64\":\"A\",\"57\":\"B\",\"66\":\"B\",\"53\":\"C\",\"58\":\"A\",\"65\":\"B\",\"61\":\"C\",\"67\":\"B\",\"52\":\"E\",\"51\":\"B\",\"59\":\"B\",\"69\":\"A\",\"54\":\"C\",\"68\":\"A\",\"55\":\"E\",\"56\":\"C\",\"63\":\"A\",\"60\":\"C\",\"62\":\"A\",\"50\":\"A\"}', 16, 27, '2021-10-25 06:45:02', '2021-10-25 06:45:02', 0),
(83, 1, 5, '{\"55\":\"E\",\"53\":\"B\",\"51\":\"B\",\"63\":\"A\",\"60\":\"C\",\"67\":\"B\",\"57\":\"B\",\"61\":\"C\",\"66\":\"B\",\"59\":\"D\",\"52\":\"E\",\"56\":\"B\",\"69\":\"A\",\"65\":\"A\",\"50\":\"B\",\"68\":\"A\",\"54\":\"C\",\"64\":\"A\",\"62\":\"C\",\"58\":\"B\"}', 14, 42, '2021-10-25 21:24:19', '2021-10-25 21:24:19', 0),
(84, 1, 5, '{\"63\":\"A\",\"56\":\"C\",\"50\":\"A\",\"54\":\"C\",\"60\":\"C\",\"58\":\"C\",\"57\":\"B\",\"64\":\"A\",\"52\":\"E\",\"66\":\"A\",\"51\":\"B\",\"67\":\"B\",\"69\":\"A\",\"61\":\"C\",\"62\":\"C\",\"65\":\"A\",\"68\":\"A\",\"53\":\"C\",\"55\":\"E\",\"59\":\"C\"}', 18, 42, '2021-10-25 21:32:03', '2021-10-25 21:32:03', 0),
(85, 1, 5, '{\"65\":\"A\",\"63\":\"A\",\"54\":\"C\",\"67\":\"B\",\"69\":\"A\",\"56\":\"C\",\"60\":\"C\",\"55\":\"E\",\"64\":\"A\",\"53\":\"C\",\"52\":\"E\",\"68\":\"A\",\"59\":\"D\",\"61\":\"C\",\"50\":\"A\",\"62\":\"C\",\"66\":\"A\",\"58\":\"C\"}', 17, 40, '2021-10-25 21:38:35', '2021-10-25 21:38:35', 0),
(86, 1, 5, '{\"64\":\"A\",\"69\":\"A\",\"58\":\"C\",\"55\":\"E\",\"62\":\"B\",\"65\":\"A\",\"57\":\"B\",\"53\":\"C\",\"61\":\"C\",\"56\":\"C\",\"68\":\"A\",\"66\":\"A\",\"51\":\"B\",\"50\":\"A\",\"63\":\"A\",\"59\":\"D\",\"60\":\"C\",\"52\":\"E\",\"67\":\"B\",\"54\":\"C\"}', 19, 40, '2021-10-25 21:45:14', '2021-10-25 21:45:14', 0),
(87, 1, 5, '{\"66\":\"A\",\"51\":\"B\",\"60\":\"C\",\"56\":\"C\",\"58\":\"C\",\"62\":\"C\",\"54\":\"C\",\"61\":\"C\",\"69\":\"A\",\"59\":\"D\",\"57\":\"B\",\"52\":\"E\",\"64\":\"A\",\"65\":\"A\",\"53\":\"C\",\"63\":\"A\",\"68\":\"A\",\"55\":\"E\",\"67\":\"B\",\"50\":\"A\"}', 19, 44, '2021-10-25 22:43:51', '2021-10-25 22:43:51', 0),
(88, 1, 5, '{\"61\":\"C\",\"68\":\"B\",\"56\":\"C\",\"51\":\"B\",\"52\":\"E\",\"59\":\"C\",\"60\":\"A\",\"69\":\"B\",\"67\":\"B\",\"63\":\"A\",\"58\":\"B\",\"57\":\"B\",\"54\":\"C\",\"55\":\"E\",\"62\":\"A\",\"64\":\"A\",\"66\":\"A\",\"50\":\"A\",\"53\":\"C\",\"65\":\"A\"}', 15, 43, '2021-10-25 22:48:58', '2021-10-25 22:48:58', 0),
(89, 1, 5, '{\"60\":\"A\",\"50\":\"A\",\"54\":\"C\",\"52\":\"E\",\"63\":\"A\",\"67\":\"B\",\"62\":\"A\",\"65\":\"A\",\"55\":\"E\",\"69\":\"A\",\"68\":\"B\",\"53\":\"C\",\"57\":\"B\",\"64\":\"A\",\"61\":\"C\",\"59\":\"C\",\"66\":\"A\",\"51\":\"B\",\"58\":\"B\",\"56\":\"C\"}', 16, 43, '2021-10-25 23:38:03', '2021-10-25 23:38:03', 0),
(90, 1, 5, '{\"63\":\"A\",\"68\":\"A\",\"58\":\"C\",\"57\":\"B\",\"56\":\"C\",\"60\":\"C\",\"52\":\"E\",\"64\":\"A\",\"59\":\"D\",\"53\":\"C\",\"65\":\"A\",\"67\":\"B\",\"54\":\"C\",\"55\":\"E\",\"51\":\"B\",\"66\":\"A\",\"62\":\"C\",\"50\":\"A\",\"69\":\"A\",\"61\":\"C\"}', 19, 46, '2021-10-25 23:42:33', '2021-10-25 23:42:33', 0),
(91, 1, 5, '{\"57\":\"B\",\"67\":\"B\",\"54\":\"C\",\"64\":\"A\",\"58\":\"D\",\"50\":\"A\",\"66\":\"A\",\"63\":\"A\",\"69\":\"A\",\"61\":\"C\",\"65\":\"A\",\"52\":\"E\",\"68\":\"A\",\"60\":\"C\",\"51\":\"B\",\"53\":\"C\",\"56\":\"C\",\"62\":\"C\",\"55\":\"E\"}', 17, 49, '2021-10-25 23:44:03', '2021-10-25 23:44:03', 0),
(92, 1, 5, '{\"64\":\"A\",\"56\":\"C\",\"66\":\"A\",\"59\":\"D\",\"65\":\"A\",\"52\":\"A\",\"69\":\"A\",\"67\":\"B\",\"62\":\"C\",\"60\":\"C\",\"58\":\"C\",\"63\":\"A\",\"53\":\"C\",\"57\":\"B\",\"51\":\"B\",\"68\":\"A\",\"50\":\"A\",\"55\":\"E\",\"61\":\"C\"}', 17, 47, '2021-10-25 23:46:04', '2021-10-25 23:46:04', 0),
(93, 1, 5, '{\"61\":\"C\",\"55\":\"E\",\"59\":\"D\",\"63\":\"A\",\"65\":\"A\",\"50\":\"A\",\"64\":\"A\",\"68\":\"A\",\"52\":\"E\",\"58\":\"C\",\"57\":\"B\",\"53\":\"C\",\"69\":\"A\",\"54\":\"C\",\"66\":\"A\",\"67\":\"B\",\"60\":\"C\",\"51\":\"B\",\"62\":\"A\",\"56\":\"C\"}', 20, 43, '2021-10-25 23:47:02', '2021-10-25 23:47:02', 0),
(94, 1, 5, '{\"59\":\"D\",\"58\":\"C\",\"52\":\"D\",\"68\":\"A\",\"53\":\"C\",\"60\":\"C\",\"69\":\"A\",\"64\":\"A\",\"55\":\"E\",\"57\":\"B\",\"63\":\"A\",\"51\":\"B\",\"62\":\"C\",\"65\":\"A\",\"56\":\"C\",\"50\":\"A\",\"67\":\"B\",\"61\":\"C\",\"66\":\"A\"}', 17, 47, '2021-10-25 23:53:02', '2021-10-25 23:53:02', 0),
(95, 1, 5, '{\"50\":\"A\",\"56\":\"C\",\"59\":\"D\",\"55\":\"E\",\"51\":\"B\",\"65\":\"A\",\"60\":\"C\",\"58\":\"C\",\"63\":\"A\",\"66\":\"A\",\"62\":\"C\",\"53\":\"C\",\"64\":\"A\",\"67\":\"B\",\"57\":\"B\",\"52\":\"E\",\"68\":\"A\",\"54\":\"C\",\"61\":\"C\"}', 18, 49, '2021-10-25 23:55:19', '2021-10-25 23:55:19', 0),
(96, 1, 5, '{\"68\":\"A\",\"54\":\"C\",\"58\":\"C\",\"59\":\"D\",\"51\":\"B\",\"60\":\"C\",\"62\":\"C\",\"56\":\"C\",\"50\":\"A\",\"55\":\"E\",\"67\":\"B\",\"63\":\"A\",\"52\":\"E\",\"57\":\"B\",\"61\":\"C\",\"65\":\"A\",\"64\":\"A\",\"66\":\"A\",\"53\":\"C\"}', 18, 47, '2021-10-25 23:58:08', '2021-10-25 23:58:08', 0),
(97, 1, 5, '{\"61\":\"C\",\"57\":\"B\",\"68\":\"A\",\"66\":\"A\",\"53\":\"C\",\"54\":\"C\",\"52\":\"E\",\"62\":\"C\",\"58\":\"C\",\"60\":\"C\",\"55\":\"E\",\"59\":\"D\",\"64\":\"A\",\"63\":\"A\",\"65\":\"A\",\"51\":\"B\",\"56\":\"C\",\"67\":\"B\",\"69\":\"A\",\"50\":\"A\"}', 19, 41, '2021-10-26 05:17:28', '2021-10-26 05:17:28', 0),
(98, 1, 5, '{\"60\":\"C\",\"53\":\"C\",\"59\":\"C\",\"50\":\"A\",\"61\":\"C\",\"69\":\"A\",\"54\":\"C\",\"67\":\"B\",\"56\":\"C\",\"57\":\"B\",\"68\":\"A\",\"63\":\"A\",\"65\":\"A\",\"64\":\"A\",\"55\":\"E\",\"66\":\"A\",\"51\":\"B\",\"58\":\"C\",\"62\":\"B\",\"52\":\"E\"}', 18, 45, '2021-10-26 06:50:50', '2021-10-26 06:50:50', 0),
(99, 1, 5, '{\"60\":\"B\",\"52\":\"E\",\"55\":\"E\",\"53\":\"C\",\"64\":\"A\",\"69\":\"A\",\"62\":\"C\",\"67\":\"B\",\"54\":\"C\",\"59\":\"D\",\"57\":\"B\",\"63\":\"A\",\"61\":\"C\",\"68\":\"A\",\"50\":\"A\",\"65\":\"A\",\"58\":\"C\",\"51\":\"B\",\"66\":\"A\",\"56\":\"B\"}', 17, 50, '2021-10-26 09:33:05', '2021-10-26 09:33:05', 0),
(100, 1, 5, '{\"50\":\"A\",\"51\":\"B\",\"55\":\"E\",\"64\":\"A\",\"58\":\"B\",\"67\":\"B\",\"60\":\"B\",\"52\":\"E\",\"53\":\"C\",\"61\":\"C\",\"66\":\"A\",\"54\":\"C\",\"56\":\"B\",\"57\":\"B\",\"62\":\"B\",\"59\":\"D\",\"65\":\"A\",\"69\":\"A\",\"68\":\"A\",\"63\":\"A\"}', 16, 50, '2021-10-26 09:42:23', '2021-10-26 09:42:23', 0),
(101, 1, 5, '{\"60\":\"B\",\"69\":\"B\",\"65\":\"A\",\"61\":\"C\",\"54\":\"C\",\"55\":\"E\",\"56\":\"B\",\"58\":\"B\",\"62\":\"C\",\"63\":\"A\",\"50\":\"A\",\"51\":\"B\",\"57\":\"B\",\"67\":\"B\",\"53\":\"C\",\"66\":\"A\",\"64\":\"A\",\"68\":\"A\",\"52\":\"E\"}', 14, 50, '2021-10-26 09:48:01', '2021-10-26 09:48:01', 0),
(102, 1, 5, '{\"59\":\"D\",\"56\":\"D\",\"66\":\"A\",\"55\":\"E\",\"61\":\"C\",\"58\":\"D\",\"53\":\"C\",\"57\":\"B\",\"62\":\"B\",\"67\":\"B\",\"52\":\"E\",\"68\":\"A\",\"51\":\"B\",\"64\":\"A\",\"54\":\"C\",\"50\":\"A\",\"60\":\"C\",\"65\":\"A\",\"63\":\"A\",\"69\":\"A\"}', 17, 50, '2021-10-26 09:58:27', '2021-10-26 09:58:27', 0),
(103, 1, 5, '{\"53\":\"C\",\"69\":\"A\",\"52\":\"E\",\"59\":\"D\",\"68\":\"A\",\"51\":\"B\",\"54\":\"C\",\"67\":\"B\",\"56\":\"B\",\"60\":\"C\",\"62\":\"C\",\"61\":\"C\",\"57\":\"B\",\"63\":\"A\",\"65\":\"A\",\"55\":\"E\",\"66\":\"A\",\"50\":\"A\",\"58\":\"C\"}', 17, 50, '2021-10-26 10:08:03', '2021-10-26 10:08:03', 0),
(104, 1, 5, '{\"60\":\"B\",\"68\":\"A\",\"56\":\"C\",\"55\":\"E\",\"52\":\"E\",\"69\":\"A\",\"65\":\"A\",\"57\":\"D\",\"62\":\"A\",\"66\":\"A\",\"64\":\"A\",\"58\":\"D\",\"51\":\"B\",\"54\":\"C\",\"59\":\"B\",\"63\":\"A\",\"61\":\"C\",\"50\":\"A\",\"67\":\"B\",\"53\":\"C\"}', 16, 53, '2021-10-26 10:13:20', '2021-10-26 10:13:20', 0),
(105, 1, 5, '{\"69\":\"A\",\"50\":\"A\",\"62\":\"B\",\"57\":\"B\",\"53\":\"C\",\"66\":\"A\",\"54\":\"C\",\"61\":\"C\",\"52\":\"E\",\"63\":\"A\",\"59\":\"D\",\"65\":\"A\",\"68\":\"A\",\"58\":\"B\",\"56\":\"C\",\"60\":\"C\",\"67\":\"B\",\"55\":\"E\",\"64\":\"A\",\"51\":\"B\"}', 18, 50, '2021-10-26 10:16:15', '2021-10-26 10:16:15', 0),
(106, 1, 5, '{\"51\":\"B\",\"54\":\"C\",\"67\":\"B\",\"61\":\"C\",\"53\":\"C\",\"55\":\"E\",\"62\":\"A\",\"58\":\"D\",\"64\":\"A\",\"52\":\"E\",\"50\":\"A\",\"59\":\"D\",\"65\":\"A\",\"60\":\"C\",\"66\":\"A\",\"56\":\"C\",\"69\":\"A\",\"68\":\"A\",\"57\":\"B\",\"63\":\"A\"}', 19, 50, '2021-10-26 10:23:20', '2021-10-26 10:23:20', 0),
(107, 1, 5, '{\"53\":\"C\",\"66\":\"A\",\"55\":\"E\",\"59\":\"D\",\"63\":\"A\",\"52\":\"E\",\"51\":\"B\",\"61\":\"C\",\"57\":\"B\",\"65\":\"A\",\"56\":\"C\",\"67\":\"B\",\"68\":\"A\",\"62\":\"A\",\"64\":\"A\",\"50\":\"A\",\"54\":\"C\",\"69\":\"A\",\"60\":\"C\",\"58\":\"C\"}', 20, 50, '2021-10-26 10:27:46', '2021-10-26 10:27:46', 0),
(108, 1, 5, '{\"63\":\"A\",\"50\":\"A\",\"64\":\"A\",\"59\":\"B\",\"51\":\"B\",\"56\":\"B\",\"65\":\"A\",\"61\":\"C\",\"55\":\"E\",\"57\":\"A\",\"68\":\"A\",\"54\":\"C\",\"67\":\"B\",\"52\":\"E\",\"60\":\"C\",\"69\":\"A\",\"53\":\"C\",\"58\":\"B\",\"62\":\"A\",\"66\":\"A\"}', 16, 53, '2021-10-26 10:29:29', '2021-10-26 10:29:29', 0),
(109, 1, 5, '{\"65\":\"A\",\"53\":\"C\",\"55\":\"E\",\"62\":\"A\",\"59\":\"D\",\"54\":\"C\",\"61\":\"C\",\"64\":\"A\",\"57\":\"B\",\"60\":\"C\",\"56\":\"B\",\"68\":\"A\",\"69\":\"A\",\"67\":\"B\",\"66\":\"A\",\"63\":\"A\",\"50\":\"A\",\"52\":\"E\",\"58\":\"B\",\"51\":\"B\"}', 18, 53, '2021-10-26 10:41:52', '2021-10-26 10:41:52', 0),
(110, 1, 5, '{\"54\":\"C\",\"62\":\"C\",\"65\":\"A\",\"64\":\"A\",\"55\":\"E\",\"56\":\"C\",\"52\":\"E\",\"66\":\"A\",\"68\":\"A\",\"57\":\"B\",\"69\":\"A\",\"50\":\"A\",\"60\":\"C\",\"51\":\"B\",\"58\":\"C\",\"59\":\"B\",\"63\":\"A\",\"61\":\"C\",\"53\":\"C\",\"67\":\"B\"}', 18, 53, '2021-10-26 10:48:54', '2021-10-26 10:48:54', 0),
(111, 1, 5, '{\"69\":\"A\",\"64\":\"A\",\"52\":\"E\",\"66\":\"A\",\"67\":\"B\",\"68\":\"A\",\"62\":\"A\",\"54\":\"C\",\"50\":\"A\",\"63\":\"A\",\"59\":\"C\",\"61\":\"C\",\"51\":\"B\",\"56\":\"C\",\"65\":\"A\",\"57\":\"C\",\"60\":\"C\",\"53\":\"C\",\"58\":\"C\",\"55\":\"E\"}', 18, 53, '2021-10-26 10:52:25', '2021-10-26 10:52:25', 0),
(112, 1, 5, '{\"63\":\"A\",\"57\":\"B\",\"66\":\"A\",\"62\":\"A\",\"59\":\"D\",\"61\":\"C\",\"53\":\"C\",\"50\":\"A\",\"60\":\"C\",\"55\":\"E\",\"65\":\"A\",\"52\":\"E\",\"64\":\"A\",\"58\":\"C\",\"68\":\"A\",\"54\":\"C\",\"56\":\"D\",\"69\":\"A\",\"67\":\"B\",\"51\":\"B\"}', 19, 53, '2021-10-26 10:57:22', '2021-10-26 10:57:22', 0),
(113, 1, 5, '{\"69\":\"A\",\"65\":\"A\",\"66\":\"A\",\"61\":\"C\",\"64\":\"A\",\"50\":\"A\",\"51\":\"B\",\"63\":\"A\",\"58\":\"C\",\"53\":\"C\",\"57\":\"B\",\"56\":\"D\",\"68\":\"A\",\"52\":\"E\",\"67\":\"B\",\"55\":\"E\",\"59\":\"D\",\"62\":\"A\",\"54\":\"C\",\"60\":\"C\"}', 19, 53, '2021-10-26 11:04:26', '2021-10-26 11:04:26', 0),
(114, 1, 5, '{\"63\":\"A\",\"56\":\"C\",\"51\":\"B\",\"64\":\"A\",\"66\":\"A\",\"54\":\"C\",\"60\":\"C\",\"67\":\"B\",\"68\":\"A\",\"57\":\"B\",\"53\":\"C\",\"69\":\"A\",\"52\":\"E\",\"61\":\"C\",\"65\":\"A\",\"55\":\"E\",\"59\":\"D\",\"62\":\"A\",\"50\":\"A\",\"58\":\"C\"}', 20, 53, '2021-10-26 11:08:29', '2021-10-26 11:08:29', 0),
(115, 1, 5, '{\"65\":\"A\",\"50\":\"A\",\"69\":\"A\",\"55\":\"E\",\"61\":\"C\",\"58\":\"C\",\"53\":\"C\",\"68\":\"A\",\"54\":\"C\",\"57\":\"B\",\"52\":\"E\",\"56\":\"C\",\"51\":\"B\",\"63\":\"A\",\"59\":\"D\",\"66\":\"B\",\"67\":\"B\",\"64\":\"A\",\"62\":\"C\",\"60\":\"C\"}', 18, 39, '2021-10-26 20:23:19', '2021-10-26 20:23:19', 0),
(116, 1, 5, '{\"69\":\"A\",\"58\":\"C\",\"52\":\"E\",\"53\":\"C\",\"66\":\"B\",\"54\":\"C\",\"62\":\"A\",\"67\":\"B\",\"57\":\"B\",\"55\":\"E\",\"68\":\"A\",\"59\":\"D\",\"64\":\"A\",\"65\":\"A\",\"56\":\"C\",\"50\":\"A\",\"60\":\"C\",\"51\":\"B\",\"63\":\"A\",\"61\":\"C\"}', 19, 39, '2021-10-26 20:32:10', '2021-10-26 20:32:10', 0),
(117, 1, 5, '{\"64\":\"A\",\"52\":\"E\",\"53\":\"C\",\"51\":\"D\",\"50\":\"A\",\"69\":\"A\",\"66\":\"B\",\"68\":\"A\",\"59\":\"D\",\"67\":\"B\",\"57\":\"B\",\"58\":\"C\",\"65\":\"B\",\"63\":\"A\",\"61\":\"C\",\"54\":\"C\",\"55\":\"E\",\"60\":\"C\",\"62\":\"C\",\"56\":\"C\"}', 16, 59, '2021-10-26 22:10:18', '2021-10-26 22:10:18', 0),
(118, 1, 5, '{\"66\":\"B\",\"52\":\"E\",\"69\":\"A\",\"68\":\"A\",\"65\":\"A\",\"59\":\"D\",\"54\":\"C\",\"62\":\"C\",\"64\":\"A\",\"50\":\"A\",\"55\":\"E\",\"63\":\"A\",\"60\":\"C\",\"57\":\"B\",\"53\":\"C\",\"58\":\"C\",\"61\":\"C\",\"51\":\"B\",\"67\":\"B\",\"56\":\"C\"}', 18, 57, '2021-10-26 22:12:51', '2021-10-26 22:12:51', 0),
(119, 1, 5, '{\"66\":\"B\",\"52\":\"E\",\"69\":\"A\",\"68\":\"A\",\"65\":\"A\",\"59\":\"D\",\"54\":\"C\",\"62\":\"C\",\"64\":\"A\",\"50\":\"A\",\"55\":\"E\",\"63\":\"A\",\"60\":\"C\",\"57\":\"B\",\"53\":\"C\",\"58\":\"C\",\"61\":\"C\",\"51\":\"B\",\"67\":\"B\",\"56\":\"C\"}', 18, 57, '2021-10-26 22:12:51', '2021-10-26 22:12:51', 0),
(120, 1, 5, '{\"60\":\"B\",\"54\":\"C\",\"51\":\"B\",\"64\":\"A\",\"66\":\"B\",\"55\":\"E\",\"52\":\"E\",\"61\":\"C\",\"63\":\"A\",\"67\":\"B\",\"69\":\"A\",\"59\":\"D\",\"65\":\"A\",\"50\":\"A\",\"58\":\"C\",\"62\":\"C\",\"53\":\"C\",\"56\":\"C\",\"57\":\"B\",\"68\":\"A\"}', 17, 59, '2021-10-26 22:16:37', '2021-10-26 22:16:37', 0),
(121, 1, 5, '{\"64\":\"A\",\"52\":\"E\",\"54\":\"C\",\"65\":\"A\",\"68\":\"A\",\"59\":\"D\",\"55\":\"E\",\"66\":\"B\",\"69\":\"A\",\"58\":\"C\",\"67\":\"B\",\"63\":\"A\",\"50\":\"A\",\"60\":\"C\",\"56\":\"C\",\"57\":\"B\",\"51\":\"B\",\"53\":\"C\",\"62\":\"C\",\"61\":\"C\"}', 18, 59, '2021-10-26 22:21:33', '2021-10-26 22:21:33', 0),
(122, 1, 5, '{\"62\":\"C\",\"58\":\"B\",\"66\":\"A\",\"63\":\"A\",\"61\":\"C\",\"59\":\"B\",\"50\":\"A\",\"65\":\"A\",\"51\":\"B\",\"68\":\"B\",\"57\":\"B\",\"56\":\"B\",\"69\":\"A\",\"54\":\"C\",\"52\":\"E\",\"53\":\"C\",\"55\":\"E\",\"60\":\"C\",\"64\":\"A\",\"67\":\"B\"}', 15, 55, '2021-10-26 23:07:02', '2021-10-26 23:07:02', 0),
(123, 1, 5, '{\"67\":\"B\",\"59\":\"C\",\"64\":\"A\",\"52\":\"E\",\"53\":\"C\",\"56\":\"C\",\"55\":\"E\",\"60\":\"C\",\"63\":\"A\",\"57\":\"C\",\"51\":\"B\",\"62\":\"C\",\"58\":\"C\",\"65\":\"A\",\"50\":\"A\",\"68\":\"B\",\"61\":\"C\",\"66\":\"A\",\"54\":\"C\",\"69\":\"A\"}', 16, 55, '2021-10-26 23:22:37', '2021-10-26 23:22:37', 0),
(124, 1, 5, '{\"52\":\"E\",\"61\":\"C\",\"60\":\"C\",\"65\":\"B\",\"58\":\"A\",\"68\":\"B\",\"56\":\"C\",\"53\":\"C\",\"63\":\"B\",\"66\":\"B\",\"57\":\"C\",\"50\":\"A\",\"54\":\"C\",\"62\":\"C\",\"59\":\"A\",\"51\":\"C\",\"69\":\"B\",\"55\":\"E\",\"64\":\"A\"}', 9, 58, '2021-10-27 02:10:35', '2021-10-27 02:10:35', 0),
(125, 1, 5, '{\"55\":\"E\",\"68\":\"A\",\"52\":\"E\",\"60\":\"C\",\"65\":\"A\",\"69\":\"A\",\"54\":\"C\",\"57\":\"C\",\"51\":\"B\",\"66\":\"A\",\"53\":\"C\",\"56\":\"C\",\"63\":\"A\",\"67\":\"B\",\"50\":\"A\",\"62\":\"A\",\"59\":\"A\",\"61\":\"C\",\"64\":\"A\",\"58\":\"D\"}', 17, 58, '2021-10-27 02:16:25', '2021-10-27 02:16:25', 0),
(126, 1, 5, '{\"61\":\"C\",\"65\":\"A\",\"53\":\"C\",\"63\":\"A\",\"66\":\"A\",\"58\":\"D\",\"52\":\"E\",\"60\":\"C\",\"64\":\"A\",\"54\":\"C\",\"55\":\"E\",\"51\":\"B\",\"57\":\"B\",\"62\":\"A\",\"67\":\"B\",\"68\":\"A\",\"50\":\"A\",\"59\":\"C\",\"56\":\"D\"}', 16, 58, '2021-10-27 02:20:56', '2021-10-27 02:20:56', 0),
(127, 1, 5, '{\"64\":\"A\",\"57\":\"C\",\"59\":\"C\",\"61\":\"C\",\"52\":\"E\",\"56\":\"D\",\"68\":\"A\",\"54\":\"C\",\"58\":\"A\",\"67\":\"B\",\"65\":\"A\",\"63\":\"A\",\"50\":\"A\",\"53\":\"C\",\"55\":\"E\",\"62\":\"A\",\"51\":\"B\",\"66\":\"A\",\"60\":\"C\"}', 15, 58, '2021-10-27 02:23:51', '2021-10-27 02:23:51', 0),
(128, 1, 5, '{\"54\":\"C\",\"68\":\"B\",\"69\":\"A\",\"61\":\"C\",\"59\":\"D\",\"53\":\"C\",\"51\":\"B\",\"67\":\"B\",\"56\":\"B\",\"66\":\"A\",\"58\":\"B\",\"63\":\"A\",\"55\":\"E\",\"50\":\"A\",\"52\":\"E\",\"57\":\"B\",\"64\":\"A\",\"65\":\"A\",\"60\":\"C\"}', 16, 55, '2021-10-27 03:01:43', '2021-10-27 03:01:43', 0),
(129, 1, 5, '{\"50\":\"A\",\"66\":\"B\",\"69\":\"A\",\"65\":\"B\",\"58\":\"C\",\"53\":\"C\",\"67\":\"B\",\"57\":\"D\",\"59\":\"A\",\"51\":\"B\",\"60\":\"C\",\"63\":\"A\",\"62\":\"C\",\"61\":\"C\",\"56\":\"C\",\"54\":\"C\",\"55\":\"E\",\"64\":\"A\",\"52\":\"D\",\"68\":\"B\"}', 13, 68, '2021-10-27 03:05:36', '2021-10-27 03:05:36', 0),
(130, 1, 5, '{\"57\":\"C\",\"62\":\"A\",\"56\":\"A\",\"51\":\"B\",\"54\":\"C\",\"67\":\"A\",\"53\":\"C\",\"50\":\"A\",\"65\":\"A\",\"68\":\"A\",\"64\":\"A\",\"63\":\"A\",\"66\":\"A\",\"61\":\"A\",\"55\":\"E\",\"69\":\"A\",\"59\":\"C\",\"60\":\"A\",\"52\":\"E\",\"58\":\"C\"}', 14, 72, '2021-10-27 03:14:12', '2021-10-27 03:14:12', 0),
(131, 1, 5, '{\"69\":\"A\",\"54\":\"C\",\"59\":\"D\",\"68\":\"B\",\"67\":\"B\",\"58\":\"C\",\"66\":\"A\",\"65\":\"A\",\"60\":\"C\",\"50\":\"A\",\"56\":\"C\",\"55\":\"E\",\"52\":\"E\",\"64\":\"A\",\"62\":\"C\",\"53\":\"C\",\"57\":\"B\",\"61\":\"C\",\"51\":\"B\",\"63\":\"A\"}', 18, 55, '2021-10-27 03:24:43', '2021-10-27 03:24:43', 0),
(132, 1, 5, '{\"62\":\"C\",\"54\":\"C\",\"52\":\"E\",\"56\":\"C\",\"53\":\"C\",\"58\":\"C\",\"63\":\"A\",\"65\":\"A\",\"68\":\"A\",\"51\":\"B\",\"64\":\"A\",\"50\":\"A\",\"69\":\"A\",\"66\":\"A\",\"67\":\"B\",\"61\":\"B\",\"60\":\"C\",\"57\":\"B\",\"55\":\"E\",\"59\":\"D\"}', 18, 56, '2021-10-27 03:29:54', '2021-10-27 03:29:54', 0),
(133, 1, 5, '{\"64\":\"A\",\"60\":\"B\",\"65\":\"A\",\"63\":\"A\",\"69\":\"A\",\"53\":\"C\",\"59\":\"C\",\"61\":\"B\",\"68\":\"A\",\"51\":\"C\",\"62\":\"A\",\"58\":\"C\",\"54\":\"C\",\"67\":\"A\",\"50\":\"A\",\"52\":\"E\",\"56\":\"C\",\"57\":\"C\",\"55\":\"E\",\"66\":\"A\"}', 14, 73, '2021-10-27 05:12:40', '2021-10-27 05:12:40', 0),
(134, 1, 5, '{\"68\":\"A\",\"65\":\"A\",\"53\":\"C\",\"63\":\"A\",\"64\":\"A\",\"58\":\"C\",\"51\":\"D\",\"57\":\"A\",\"62\":\"A\",\"52\":\"E\",\"56\":\"C\",\"69\":\"A\",\"61\":\"A\",\"55\":\"E\",\"60\":\"A\",\"66\":\"A\",\"59\":\"C\",\"54\":\"C\",\"50\":\"A\",\"67\":\"B\"}', 15, 73, '2021-10-27 05:17:02', '2021-10-27 05:17:02', 0),
(135, 1, 5, '{\"52\":\"E\",\"68\":\"A\",\"59\":\"B\",\"56\":\"B\",\"50\":\"A\",\"62\":\"C\",\"54\":\"C\",\"67\":\"B\",\"51\":\"B\",\"65\":\"A\",\"55\":\"E\",\"69\":\"A\",\"64\":\"A\",\"53\":\"C\",\"57\":\"B\",\"60\":\"C\",\"58\":\"B\",\"63\":\"A\",\"61\":\"C\",\"66\":\"A\"}', 16, 89, '2021-10-27 05:59:18', '2021-10-27 05:59:18', 0),
(136, 1, 5, '{\"61\":\"C\",\"67\":\"B\",\"53\":\"C\",\"57\":\"B\",\"68\":\"A\",\"60\":\"C\",\"52\":\"E\",\"63\":\"A\",\"64\":\"A\",\"54\":\"C\",\"55\":\"E\",\"66\":\"A\",\"69\":\"A\",\"56\":\"D\",\"51\":\"B\",\"62\":\"B\",\"58\":\"D\",\"65\":\"A\",\"50\":\"A\",\"59\":\"D\"}', 17, 89, '2021-10-27 06:08:07', '2021-10-27 06:08:07', 0),
(137, 1, 5, '{\"61\":\"A\",\"56\":\"C\",\"55\":\"E\",\"64\":\"A\",\"52\":\"D\",\"63\":\"A\",\"68\":\"A\",\"60\":\"A\",\"67\":\"A\",\"66\":\"B\",\"69\":\"B\",\"65\":\"B\",\"57\":\"C\",\"54\":\"B\",\"59\":\"C\",\"53\":\"A\",\"58\":\"C\",\"51\":\"D\",\"62\":\"C\"}', 6, 85, '2021-10-27 06:09:32', '2021-10-27 06:09:32', 0),
(138, 1, 5, '{\"54\":\"C\",\"68\":\"A\",\"58\":\"C\",\"55\":\"E\",\"59\":\"D\",\"50\":\"A\",\"66\":\"A\",\"56\":\"C\",\"53\":\"C\",\"63\":\"A\",\"52\":\"E\",\"64\":\"A\",\"69\":\"A\",\"51\":\"B\",\"61\":\"C\",\"60\":\"A\",\"65\":\"A\",\"57\":\"B\",\"62\":\"C\",\"67\":\"B\"}', 18, 89, '2021-10-27 06:11:56', '2021-10-27 06:11:56', 0),
(139, 1, 5, '{\"67\":\"B\",\"64\":\"A\",\"54\":\"C\",\"63\":\"A\",\"53\":\"C\",\"50\":\"A\",\"62\":\"A\",\"51\":\"B\",\"68\":\"A\",\"56\":\"C\",\"65\":\"A\",\"55\":\"E\",\"60\":\"B\",\"59\":\"D\",\"66\":\"A\",\"58\":\"C\",\"52\":\"E\",\"57\":\"B\",\"69\":\"A\",\"61\":\"C\"}', 19, 89, '2021-10-27 06:16:16', '2021-10-27 06:16:16', 0),
(140, 1, 5, '{\"64\":\"A\",\"51\":\"B\",\"61\":\"C\",\"58\":\"C\",\"65\":\"A\",\"50\":\"B\",\"52\":\"E\",\"54\":\"C\",\"56\":\"D\",\"62\":\"C\",\"53\":\"D\",\"68\":\"A\",\"57\":\"C\",\"63\":\"A\",\"67\":\"B\",\"69\":\"B\",\"66\":\"B\",\"59\":\"C\",\"55\":\"E\",\"60\":\"C\"}', 12, 85, '2021-10-27 06:17:01', '2021-10-27 06:17:01', 0),
(141, 1, 5, '{\"64\":\"A\",\"69\":\"A\",\"58\":\"C\",\"59\":\"D\",\"54\":\"C\",\"65\":\"A\",\"52\":\"E\",\"62\":\"A\",\"55\":\"E\",\"67\":\"B\",\"68\":\"A\",\"66\":\"A\",\"53\":\"C\",\"51\":\"B\",\"57\":\"B\",\"61\":\"C\",\"63\":\"A\",\"50\":\"A\",\"60\":\"A\",\"56\":\"C\"}', 19, 89, '2021-10-27 06:20:05', '2021-10-27 06:20:05', 0),
(142, 1, 5, '{\"67\":\"B\",\"57\":\"C\",\"54\":\"B\",\"55\":\"E\",\"65\":\"B\",\"50\":\"A\",\"66\":\"B\",\"61\":\"C\",\"53\":\"C\",\"58\":\"C\",\"63\":\"A\",\"68\":\"A\",\"62\":\"C\",\"56\":\"C\",\"64\":\"A\",\"60\":\"C\",\"52\":\"E\",\"69\":\"B\",\"59\":\"C\",\"51\":\"D\"}', 12, 85, '2021-10-27 06:21:55', '2021-10-27 06:21:55', 0),
(143, 1, 5, '{\"64\":\"B\",\"61\":\"C\",\"57\":\"D\",\"60\":\"C\",\"59\":\"D\",\"58\":\"C\",\"53\":\"C\",\"54\":\"B\",\"69\":\"A\",\"62\":\"C\",\"67\":\"B\",\"65\":\"A\",\"51\":\"C\",\"55\":\"E\",\"56\":\"D\",\"50\":\"D\",\"66\":\"A\",\"63\":\"A\",\"52\":\"B\",\"68\":\"A\"}', 12, 85, '2021-10-27 06:26:31', '2021-10-27 06:26:31', 0),
(144, 1, 5, '{\"64\":\"B\",\"61\":\"C\",\"57\":\"D\",\"60\":\"C\",\"59\":\"D\",\"58\":\"C\",\"53\":\"C\",\"54\":\"B\",\"69\":\"A\",\"62\":\"C\",\"67\":\"B\",\"65\":\"A\",\"51\":\"C\",\"55\":\"E\",\"56\":\"D\",\"50\":\"D\",\"66\":\"A\",\"63\":\"A\",\"52\":\"B\",\"68\":\"A\"}', 12, 85, '2021-10-27 06:26:31', '2021-10-27 06:26:31', 0),
(145, 1, 5, '{\"67\":\"B\",\"53\":\"C\",\"64\":\"A\",\"61\":\"C\",\"65\":\"B\",\"59\":\"C\",\"55\":\"E\",\"50\":\"A\",\"62\":\"A\",\"51\":\"D\",\"68\":\"A\",\"56\":\"C\",\"54\":\"C\",\"52\":\"E\",\"58\":\"C\",\"66\":\"A\",\"60\":\"C\",\"69\":\"A\",\"57\":\"C\",\"63\":\"A\"}', 16, 85, '2021-10-27 06:38:40', '2021-10-27 06:38:40', 0),
(146, 1, 5, '{\"50\":\"A\",\"64\":\"A\",\"52\":\"A\",\"68\":\"A\",\"56\":\"D\",\"63\":\"A\",\"55\":\"E\",\"58\":\"C\",\"60\":\"C\",\"57\":\"C\",\"62\":\"A\",\"66\":\"A\",\"59\":\"D\",\"53\":\"C\",\"65\":\"A\",\"54\":\"C\",\"61\":\"C\",\"69\":\"A\",\"51\":\"B\"}', 16, 85, '2021-10-27 06:46:36', '2021-10-27 06:46:36', 0),
(147, 1, 5, '{\"69\":\"A\",\"68\":\"A\",\"64\":\"A\",\"60\":\"C\",\"54\":\"C\",\"58\":\"C\",\"53\":\"C\",\"66\":\"A\",\"56\":\"C\",\"59\":\"D\",\"61\":\"C\",\"50\":\"A\",\"57\":\"D\",\"51\":\"B\",\"55\":\"E\",\"65\":\"A\",\"52\":\"C\",\"63\":\"A\",\"67\":\"B\",\"62\":\"A\"}', 18, 85, '2021-10-27 06:54:35', '2021-10-27 06:54:35', 0),
(148, 1, 5, '{\"56\":\"C\",\"53\":\"C\",\"52\":\"D\",\"67\":\"B\",\"62\":\"C\",\"61\":\"A\",\"60\":\"C\",\"68\":\"A\",\"65\":\"A\",\"54\":\"C\",\"59\":\"C\",\"64\":\"A\",\"51\":\"B\",\"55\":\"E\",\"69\":\"A\",\"58\":\"D\",\"63\":\"A\",\"50\":\"A\",\"66\":\"A\",\"57\":\"C\"}', 14, 87, '2021-10-27 08:34:22', '2021-10-27 08:34:22', 0),
(149, 1, 5, '{\"55\":\"E\",\"54\":\"C\",\"66\":\"A\",\"56\":\"D\",\"60\":\"C\",\"51\":\"B\",\"50\":\"A\",\"65\":\"A\",\"69\":\"A\",\"58\":\"C\",\"64\":\"A\",\"62\":\"A\",\"67\":\"B\",\"53\":\"C\",\"57\":\"A\",\"52\":\"E\",\"63\":\"A\",\"61\":\"C\",\"68\":\"A\",\"59\":\"B\"}', 17, 87, '2021-10-27 08:51:45', '2021-10-27 08:51:45', 0),
(150, 1, 5, '{\"58\":\"C\",\"51\":\"B\",\"64\":\"A\",\"56\":\"B\",\"59\":\"D\",\"69\":\"A\",\"52\":\"E\",\"54\":\"C\",\"66\":\"A\",\"63\":\"A\",\"50\":\"A\",\"68\":\"A\",\"62\":\"A\",\"61\":\"C\",\"65\":\"A\",\"55\":\"E\",\"57\":\"D\",\"67\":\"B\",\"60\":\"C\",\"53\":\"C\"}', 18, 87, '2021-10-27 09:02:02', '2021-10-27 09:02:02', 0),
(151, 1, 5, '{\"59\":\"D\",\"63\":\"A\",\"50\":\"A\",\"51\":\"B\",\"58\":\"C\",\"52\":\"E\",\"61\":\"C\",\"64\":\"A\",\"69\":\"A\",\"60\":\"C\",\"68\":\"A\",\"62\":\"A\",\"56\":\"A\",\"66\":\"A\",\"55\":\"E\",\"65\":\"A\",\"53\":\"C\",\"57\":\"B\",\"54\":\"C\",\"67\":\"B\"}', 19, 87, '2021-10-27 09:06:49', '2021-10-27 09:06:49', 0),
(152, 1, 5, '{\"69\":\"A\",\"56\":\"C\",\"60\":\"C\",\"63\":\"A\",\"64\":\"A\",\"50\":\"A\",\"57\":\"C\",\"52\":\"E\",\"53\":\"C\",\"54\":\"C\",\"55\":\"E\",\"66\":\"A\",\"58\":\"C\",\"67\":\"B\",\"59\":\"D\",\"51\":\"B\",\"62\":\"A\",\"68\":\"A\",\"65\":\"A\",\"61\":\"C\"}', 19, 87, '2021-10-27 09:13:02', '2021-10-27 09:13:02', 0),
(153, 1, 5, '{\"53\":\"C\",\"67\":\"B\",\"62\":\"A\",\"69\":\"A\",\"58\":\"C\",\"66\":\"A\",\"59\":\"D\",\"56\":\"C\",\"65\":\"A\",\"57\":\"B\",\"64\":\"A\",\"63\":\"A\",\"50\":\"A\",\"55\":\"E\",\"52\":\"E\",\"61\":\"C\",\"51\":\"B\",\"68\":\"A\",\"54\":\"C\",\"60\":\"C\"}', 20, 87, '2021-10-27 09:19:33', '2021-10-27 09:19:33', 0),
(154, 1, 5, '{\"55\":\"E\",\"51\":\"B\",\"62\":\"A\",\"60\":\"C\",\"68\":\"A\",\"57\":\"B\",\"50\":\"A\",\"54\":\"C\",\"69\":\"A\",\"61\":\"C\",\"53\":\"C\",\"63\":\"A\",\"59\":\"D\",\"65\":\"A\",\"67\":\"B\",\"58\":\"C\",\"66\":\"A\",\"64\":\"A\",\"56\":\"C\",\"52\":\"E\"}', 20, 87, '2021-10-27 09:24:13', '2021-10-27 09:24:13', 0),
(155, 1, 5, '{\"54\":\"C\",\"61\":\"C\",\"60\":\"C\",\"62\":\"A\",\"53\":\"C\",\"67\":\"B\",\"55\":\"E\",\"52\":\"E\",\"56\":\"C\",\"51\":\"B\",\"68\":\"A\",\"69\":\"A\",\"66\":\"A\",\"63\":\"A\",\"50\":\"A\",\"64\":\"A\",\"58\":\"C\",\"57\":\"B\",\"65\":\"A\"}', 19, 87, '2021-10-27 09:26:13', '2021-10-27 09:26:13', 0),
(156, 1, 5, '{\"62\":\"A\",\"55\":\"E\",\"58\":\"C\",\"65\":\"A\",\"67\":\"A\",\"60\":\"A\",\"50\":\"A\",\"66\":\"A\",\"63\":\"B\",\"56\":\"C\",\"61\":\"C\",\"51\":\"B\",\"59\":\"C\",\"57\":\"C\",\"69\":\"A\",\"54\":\"C\",\"52\":\"D\",\"53\":\"D\",\"68\":\"A\",\"64\":\"A\"}', 13, 92, '2021-10-27 18:20:13', '2021-10-27 18:20:13', 0),
(157, 1, 5, '{\"67\":\"B\",\"58\":\"C\",\"53\":\"A\",\"50\":\"A\",\"65\":\"A\",\"54\":\"C\",\"59\":\"A\",\"69\":\"A\",\"63\":\"A\",\"51\":\"B\",\"64\":\"A\",\"61\":\"C\",\"60\":\"C\",\"68\":\"A\",\"56\":\"A\",\"55\":\"A\",\"57\":\"A\",\"62\":\"C\",\"66\":\"A\",\"52\":\"C\"}', 13, 92, '2021-10-27 18:23:54', '2021-10-27 18:23:54', 0),
(158, 1, 5, '{\"56\":\"B\",\"61\":\"A\",\"69\":\"A\",\"68\":\"A\",\"53\":\"D\",\"65\":\"A\",\"63\":\"A\",\"66\":\"A\",\"58\":\"C\",\"62\":\"C\",\"51\":\"B\",\"54\":\"C\",\"55\":\"A\",\"50\":\"A\",\"60\":\"C\",\"67\":\"B\",\"57\":\"B\",\"52\":\"C\",\"59\":\"B\",\"64\":\"A\"}', 13, 92, '2021-10-27 18:25:23', '2021-10-27 18:25:23', 0),
(159, 1, 5, '{\"57\":\"A\",\"56\":\"A\",\"51\":\"B\",\"68\":\"A\",\"59\":\"A\",\"54\":\"C\",\"67\":\"B\",\"65\":\"A\",\"63\":\"A\",\"62\":\"A\",\"60\":\"A\",\"50\":\"A\",\"64\":\"A\",\"69\":\"A\",\"66\":\"A\",\"52\":\"E\",\"61\":\"C\",\"55\":\"E\",\"58\":\"A\",\"53\":\"A\"}', 14, 92, '2021-10-27 18:27:50', '2021-10-27 18:27:50', 0),
(160, 1, 5, '{\"53\":\"D\",\"62\":\"C\",\"52\":\"E\",\"50\":\"A\",\"57\":\"D\",\"69\":\"A\",\"61\":\"C\",\"63\":\"A\",\"60\":\"C\",\"67\":\"B\",\"56\":\"D\",\"54\":\"C\",\"51\":\"B\",\"66\":\"A\",\"59\":\"D\",\"65\":\"A\",\"68\":\"A\",\"58\":\"D\",\"64\":\"A\",\"55\":\"E\"}', 15, 92, '2021-10-27 18:30:10', '2021-10-27 18:30:10', 0),
(161, 1, 5, '{\"64\":\"A\",\"53\":\"B\",\"54\":\"C\",\"65\":\"A\",\"52\":\"E\",\"61\":\"A\",\"56\":\"A\",\"66\":\"A\",\"59\":\"D\",\"63\":\"A\",\"57\":\"A\",\"62\":\"A\",\"55\":\"E\",\"68\":\"A\",\"67\":\"B\",\"51\":\"B\",\"69\":\"A\",\"50\":\"A\",\"58\":\"A\",\"60\":\"C\"}', 15, 92, '2021-10-27 18:37:02', '2021-10-27 18:37:02', 0),
(162, 1, 5, '{\"56\":\"D\",\"54\":\"C\",\"62\":\"C\",\"63\":\"A\",\"67\":\"B\",\"52\":\"E\",\"64\":\"A\",\"65\":\"A\",\"57\":\"D\",\"51\":\"B\",\"61\":\"C\",\"50\":\"A\",\"68\":\"A\",\"69\":\"A\",\"53\":\"D\",\"58\":\"D\",\"60\":\"C\",\"59\":\"C\",\"55\":\"E\",\"66\":\"A\"}', 14, 92, '2021-10-27 18:39:59', '2021-10-27 18:39:59', 0),
(163, 1, 5, '{\"62\":\"C\",\"50\":\"A\",\"57\":\"A\",\"52\":\"E\",\"64\":\"A\",\"63\":\"A\",\"67\":\"B\",\"58\":\"B\",\"55\":\"E\",\"51\":\"B\",\"66\":\"A\",\"59\":\"A\",\"54\":\"C\",\"65\":\"A\",\"60\":\"A\",\"53\":\"B\",\"69\":\"A\",\"61\":\"C\",\"56\":\"D\",\"68\":\"A\"}', 13, 92, '2021-10-27 18:42:15', '2021-10-27 18:42:15', 0),
(164, 1, 5, '{\"61\":\"C\",\"65\":\"A\",\"53\":\"D\",\"66\":\"A\",\"51\":\"B\",\"64\":\"A\",\"63\":\"A\",\"69\":\"A\",\"57\":\"D\",\"54\":\"C\",\"56\":\"A\",\"50\":\"A\",\"60\":\"C\",\"62\":\"A\",\"67\":\"B\",\"52\":\"E\",\"58\":\"D\",\"59\":\"D\",\"55\":\"E\"}', 15, 92, '2021-10-27 18:45:48', '2021-10-27 18:45:48', 0),
(165, 1, 5, '{\"54\":\"C\",\"65\":\"A\",\"50\":\"A\",\"61\":\"C\",\"59\":\"C\",\"58\":\"C\",\"66\":\"A\",\"56\":\"A\",\"62\":\"A\",\"63\":\"A\",\"68\":\"A\",\"55\":\"E\",\"69\":\"A\",\"64\":\"A\",\"67\":\"B\",\"60\":\"A\",\"52\":\"E\",\"51\":\"B\",\"57\":\"D\",\"53\":\"D\"}', 15, 92, '2021-10-27 18:50:24', '2021-10-27 18:50:24', 0),
(166, 1, 5, '{\"60\":\"B\",\"69\":\"A\",\"65\":\"A\",\"53\":\"C\",\"57\":\"B\",\"58\":\"B\",\"50\":\"A\",\"62\":\"C\",\"54\":\"C\",\"56\":\"A\",\"51\":\"B\",\"63\":\"A\",\"64\":\"A\",\"59\":\"A\",\"52\":\"D\",\"67\":\"B\",\"68\":\"A\",\"61\":\"A\",\"66\":\"A\",\"55\":\"E\"}', 13, 95, '2021-10-27 19:10:34', '2021-10-27 19:10:34', 0),
(167, 1, 5, '{\"62\":\"B\",\"69\":\"A\",\"58\":\"C\",\"57\":\"C\",\"63\":\"A\",\"64\":\"A\",\"52\":\"B\",\"60\":\"B\",\"51\":\"C\",\"53\":\"C\",\"54\":\"C\",\"55\":\"E\",\"67\":\"A\",\"59\":\"C\",\"66\":\"A\",\"65\":\"A\",\"61\":\"B\",\"56\":\"C\",\"50\":\"A\",\"68\":\"A\"}', 12, 97, '2021-10-27 19:44:18', '2021-10-27 19:44:18', 0),
(168, 1, 5, '{\"65\":\"B\",\"51\":\"C\",\"62\":\"C\",\"69\":\"A\",\"60\":\"C\",\"58\":\"C\",\"57\":\"C\",\"63\":\"A\",\"66\":\"B\",\"52\":\"E\",\"50\":\"A\",\"67\":\"B\",\"56\":\"C\",\"53\":\"C\",\"54\":\"A\",\"61\":\"C\",\"68\":\"B\",\"64\":\"A\",\"59\":\"C\",\"55\":\"E\"}', 12, 54, '2021-10-27 21:06:26', '2021-10-27 21:06:26', 0),
(169, 1, 5, '{\"53\":\"C\",\"50\":\"A\",\"51\":\"B\",\"61\":\"A\",\"68\":\"A\",\"63\":\"A\",\"59\":\"D\",\"57\":\"B\",\"64\":\"A\",\"54\":\"C\",\"67\":\"B\",\"56\":\"C\",\"55\":\"E\",\"66\":\"A\",\"60\":\"C\",\"58\":\"C\",\"62\":\"C\",\"52\":\"E\",\"65\":\"A\",\"69\":\"A\"}', 18, 67, '2021-10-27 21:08:50', '2021-10-27 21:08:50', 0),
(170, 1, 5, '{\"54\":\"B\",\"50\":\"A\",\"56\":\"C\",\"57\":\"B\",\"67\":\"B\",\"68\":\"A\",\"53\":\"C\",\"51\":\"B\",\"52\":\"E\",\"58\":\"C\",\"59\":\"C\",\"60\":\"C\",\"55\":\"E\",\"63\":\"A\",\"66\":\"A\",\"61\":\"C\",\"65\":\"A\",\"62\":\"B\",\"69\":\"A\",\"64\":\"A\"}', 17, 54, '2021-10-27 21:16:37', '2021-10-27 21:16:37', 0),
(171, 1, 5, '{\"68\":\"A\",\"69\":\"A\",\"52\":\"E\",\"66\":\"A\",\"61\":\"C\",\"59\":\"B\",\"67\":\"B\",\"57\":\"B\",\"60\":\"C\",\"62\":\"A\",\"63\":\"A\",\"65\":\"A\",\"53\":\"C\",\"50\":\"A\",\"54\":\"C\",\"55\":\"E\",\"51\":\"B\",\"58\":\"C\",\"56\":\"C\",\"64\":\"A\"}', 19, 54, '2021-10-27 21:23:05', '2021-10-27 21:23:05', 0),
(172, 1, 5, '{\"54\":\"C\",\"55\":\"E\",\"52\":\"E\",\"56\":\"D\",\"51\":\"D\",\"69\":\"B\",\"57\":\"C\",\"63\":\"B\",\"64\":\"A\",\"58\":\"C\",\"66\":\"A\",\"62\":\"B\",\"61\":\"A\",\"67\":\"A\",\"68\":\"A\",\"65\":\"B\",\"53\":\"C\",\"59\":\"C\",\"50\":\"A\"}', 9, 101, '2021-10-27 22:45:59', '2021-10-27 22:45:59', 0),
(173, 1, 5, '{\"53\":\"C\",\"65\":\"B\",\"64\":\"A\",\"51\":\"D\",\"60\":\"B\",\"55\":\"E\",\"69\":\"B\",\"59\":\"C\",\"50\":\"A\",\"58\":\"C\",\"63\":\"A\",\"57\":\"C\",\"67\":\"A\",\"61\":\"B\",\"66\":\"B\",\"54\":\"C\",\"52\":\"E\",\"62\":\"A\",\"68\":\"A\",\"56\":\"C\"}', 11, 101, '2021-10-27 22:48:10', '2021-10-27 22:48:10', 0),
(174, 1, 5, '{\"51\":\"D\",\"69\":\"B\",\"50\":\"A\",\"65\":\"A\",\"67\":\"B\",\"57\":\"D\",\"60\":\"A\",\"68\":\"A\",\"62\":\"A\",\"66\":\"A\",\"64\":\"A\",\"58\":\"C\",\"56\":\"D\",\"63\":\"A\",\"54\":\"C\",\"61\":\"A\",\"53\":\"C\",\"59\":\"C\",\"55\":\"E\",\"52\":\"E\"}', 13, 101, '2021-10-27 22:57:41', '2021-10-27 22:57:41', 0),
(175, 1, 5, '{\"59\":\"B\",\"65\":\"A\",\"51\":\"B\",\"68\":\"A\",\"67\":\"B\",\"63\":\"A\",\"53\":\"C\",\"62\":\"C\",\"56\":\"C\",\"66\":\"A\",\"55\":\"E\",\"54\":\"C\",\"57\":\"B\",\"69\":\"B\",\"60\":\"B\",\"52\":\"E\",\"58\":\"C\",\"61\":\"B\",\"64\":\"A\",\"50\":\"A\"}', 15, 101, '2021-10-27 23:07:36', '2021-10-27 23:07:36', 0),
(176, 1, 5, '{\"50\":\"A\",\"52\":\"E\",\"65\":\"A\",\"63\":\"A\",\"67\":\"B\",\"68\":\"A\",\"53\":\"C\",\"69\":\"B\",\"55\":\"E\",\"54\":\"C\",\"51\":\"B\",\"59\":\"A\",\"66\":\"A\",\"61\":\"C\",\"62\":\"A\",\"57\":\"B\",\"60\":\"C\",\"58\":\"C\",\"56\":\"C\",\"64\":\"A\"}', 18, 101, '2021-10-27 23:12:25', '2021-10-27 23:12:25', 0),
(177, 1, 5, '{\"67\":\"A\",\"55\":\"E\",\"59\":\"D\",\"61\":\"C\",\"66\":\"B\",\"69\":\"B\",\"54\":\"C\",\"57\":\"C\",\"63\":\"A\",\"62\":\"B\",\"51\":\"C\",\"56\":\"D\",\"53\":\"A\",\"58\":\"C\",\"50\":\"A\",\"52\":\"D\",\"64\":\"B\",\"60\":\"C\",\"68\":\"B\"}', 8, 102, '2021-10-27 23:33:39', '2021-10-27 23:33:39', 0),
(178, 1, 5, '{\"64\":\"A\",\"54\":\"B\",\"62\":\"C\",\"61\":\"C\",\"60\":\"C\",\"50\":\"A\",\"58\":\"D\",\"68\":\"A\",\"69\":\"A\",\"55\":\"E\",\"53\":\"C\",\"65\":\"A\",\"56\":\"C\",\"51\":\"B\",\"67\":\"B\",\"52\":\"E\",\"66\":\"A\",\"57\":\"C\",\"59\":\"D\"}', 15, 93, '2021-10-27 23:36:12', '2021-10-27 23:36:12', 0),
(179, 1, 5, '{\"69\":\"B\",\"64\":\"B\",\"68\":\"B\",\"51\":\"C\",\"52\":\"D\",\"63\":\"A\",\"55\":\"E\",\"60\":\"B\",\"58\":\"C\",\"67\":\"A\",\"61\":\"C\",\"57\":\"D\",\"59\":\"D\",\"65\":\"B\",\"53\":\"A\",\"66\":\"A\",\"50\":\"A\"}', 7, 102, '2021-10-27 23:37:35', '2021-10-27 23:37:35', 0),
(180, 1, 5, '{\"62\":\"B\",\"61\":\"C\",\"64\":\"B\",\"58\":\"D\",\"53\":\"D\",\"54\":\"A\",\"67\":\"A\",\"52\":\"C\",\"65\":\"B\",\"69\":\"B\",\"55\":\"E\",\"63\":\"B\",\"60\":\"C\",\"57\":\"C\",\"66\":\"B\",\"59\":\"D\",\"50\":\"A\",\"68\":\"A\",\"51\":\"D\",\"56\":\"D\"}', 6, 102, '2021-10-27 23:49:13', '2021-10-27 23:49:13', 0),
(181, 1, 5, '{\"63\":\"B\",\"50\":\"A\",\"56\":\"D\",\"65\":\"A\",\"55\":\"E\",\"54\":\"A\",\"64\":\"B\",\"57\":\"D\",\"58\":\"C\",\"67\":\"A\",\"60\":\"A\",\"61\":\"A\",\"69\":\"B\",\"68\":\"A\",\"53\":\"A\",\"52\":\"E\",\"62\":\"C\",\"66\":\"B\",\"51\":\"A\",\"59\":\"A\"}', 6, 102, '2021-10-27 23:52:29', '2021-10-27 23:52:29', 0),
(182, 1, 5, '{\"68\":\"A\",\"63\":\"A\",\"61\":\"C\",\"66\":\"A\",\"69\":\"A\",\"64\":\"A\",\"60\":\"A\",\"58\":\"C\",\"51\":\"C\",\"53\":\"D\",\"55\":\"E\",\"57\":\"C\",\"65\":\"A\",\"54\":\"B\",\"50\":\"C\",\"67\":\"B\",\"56\":\"D\",\"52\":\"E\",\"62\":\"A\"}', 12, 102, '2021-10-28 00:00:21', '2021-10-28 00:00:21', 0),
(183, 1, 5, '{\"53\":\"C\",\"56\":\"C\",\"65\":\"A\",\"58\":\"C\",\"68\":\"A\",\"67\":\"B\",\"51\":\"C\",\"52\":\"E\",\"69\":\"A\",\"59\":\"D\",\"55\":\"E\",\"57\":\"D\",\"64\":\"A\",\"54\":\"C\",\"63\":\"A\",\"61\":\"C\",\"50\":\"D\",\"60\":\"C\",\"66\":\"A\",\"62\":\"A\"}', 17, 102, '2021-10-28 00:12:59', '2021-10-28 00:12:59', 0),
(184, 1, 5, '{\"57\":\"C\",\"67\":\"B\",\"66\":\"A\",\"53\":\"C\",\"50\":\"C\",\"62\":\"A\",\"60\":\"C\",\"68\":\"A\",\"69\":\"A\",\"51\":\"D\",\"61\":\"C\",\"65\":\"A\",\"54\":\"C\",\"63\":\"A\",\"58\":\"C\",\"56\":\"C\",\"55\":\"E\",\"59\":\"D\",\"64\":\"A\",\"52\":\"E\"}', 17, 102, '2021-10-28 00:22:24', '2021-10-28 00:22:24', 0),
(185, 1, 5, '{\"68\":\"A\",\"66\":\"A\",\"64\":\"A\",\"62\":\"C\",\"58\":\"C\",\"55\":\"E\",\"60\":\"C\",\"69\":\"A\",\"67\":\"B\",\"56\":\"C\",\"59\":\"D\",\"65\":\"A\",\"50\":\"B\",\"52\":\"E\",\"57\":\"A\",\"54\":\"C\",\"63\":\"A\",\"61\":\"C\",\"53\":\"C\",\"51\":\"B\"}', 17, 102, '2021-10-28 00:34:31', '2021-10-28 00:34:31', 0),
(186, 1, 5, '{\"57\":\"B\",\"58\":\"C\",\"64\":\"A\",\"65\":\"A\",\"62\":\"A\",\"60\":\"C\",\"50\":\"D\",\"55\":\"E\",\"61\":\"C\",\"53\":\"C\",\"66\":\"A\",\"63\":\"A\",\"54\":\"C\",\"68\":\"A\",\"52\":\"E\",\"67\":\"B\",\"59\":\"D\",\"56\":\"C\",\"69\":\"A\",\"51\":\"B\"}', 19, 102, '2021-10-28 00:43:31', '2021-10-28 00:43:31', 0),
(187, 1, 5, '{\"56\":\"C\",\"62\":\"B\",\"59\":\"C\",\"55\":\"E\",\"51\":\"B\",\"58\":\"C\",\"65\":\"B\",\"66\":\"B\",\"60\":\"C\",\"53\":\"C\",\"57\":\"C\",\"64\":\"A\",\"61\":\"C\",\"68\":\"A\",\"54\":\"C\",\"69\":\"A\",\"63\":\"A\",\"52\":\"E\",\"67\":\"B\",\"50\":\"A\"}', 15, 80, '2021-10-28 00:53:05', '2021-10-28 00:53:05', 0),
(188, 1, 5, '{\"51\":\"B\",\"56\":\"A\",\"66\":\"A\",\"64\":\"A\",\"62\":\"C\",\"50\":\"A\",\"69\":\"A\",\"52\":\"E\",\"60\":\"C\",\"63\":\"A\",\"54\":\"C\",\"55\":\"E\",\"59\":\"A\",\"58\":\"A\",\"53\":\"C\",\"65\":\"A\",\"67\":\"B\",\"57\":\"A\",\"61\":\"C\",\"68\":\"A\"}', 15, 80, '2021-10-28 00:55:26', '2021-10-28 00:55:26', 0),
(189, 1, 5, '{\"64\":\"A\",\"66\":\"A\",\"56\":\"B\",\"61\":\"C\",\"58\":\"C\",\"68\":\"A\",\"50\":\"A\",\"54\":\"C\",\"60\":\"A\",\"67\":\"B\",\"65\":\"A\",\"53\":\"C\",\"69\":\"A\",\"63\":\"A\",\"52\":\"E\",\"59\":\"B\",\"51\":\"B\",\"55\":\"E\",\"57\":\"C\",\"62\":\"C\"}', 15, 80, '2021-10-28 00:57:18', '2021-10-28 00:57:18', 0),
(190, 1, 5, '{\"65\":\"A\",\"61\":\"C\",\"56\":\"C\",\"57\":\"B\",\"64\":\"A\",\"58\":\"C\",\"52\":\"D\",\"67\":\"B\",\"59\":\"D\",\"60\":\"C\",\"63\":\"A\",\"51\":\"B\",\"50\":\"A\",\"66\":\"A\",\"62\":\"C\",\"69\":\"A\",\"53\":\"C\",\"55\":\"E\",\"54\":\"C\",\"68\":\"A\"}', 18, 106, '2021-10-28 01:00:42', '2021-10-28 01:00:42', 0),
(191, 1, 5, '{\"53\":\"C\",\"59\":\"C\",\"69\":\"A\",\"50\":\"A\",\"56\":\"C\",\"55\":\"E\",\"51\":\"D\",\"61\":\"B\",\"54\":\"C\",\"66\":\"B\",\"57\":\"C\",\"63\":\"A\",\"62\":\"B\",\"64\":\"A\",\"60\":\"A\",\"52\":\"E\",\"67\":\"A\",\"58\":\"C\",\"68\":\"A\",\"65\":\"A\"}', 12, 105, '2021-10-28 01:01:01', '2021-10-28 01:01:01', 0),
(192, 1, 5, '{\"67\":\"A\",\"64\":\"A\",\"57\":\"D\",\"51\":\"C\",\"65\":\"A\",\"68\":\"A\",\"66\":\"A\",\"53\":\"C\",\"58\":\"C\",\"60\":\"C\",\"61\":\"C\",\"69\":\"A\",\"55\":\"E\",\"59\":\"C\",\"50\":\"A\",\"56\":\"D\",\"63\":\"A\",\"62\":\"C\",\"52\":\"E\",\"54\":\"C\"}', 14, 105, '2021-10-28 01:13:01', '2021-10-28 01:13:01', 0),
(193, 1, 5, '{\"55\":\"E\",\"57\":\"D\",\"63\":\"A\",\"51\":\"B\",\"66\":\"A\",\"52\":\"E\",\"59\":\"D\",\"67\":\"B\",\"65\":\"A\",\"68\":\"A\",\"54\":\"C\",\"62\":\"A\",\"61\":\"A\",\"50\":\"A\",\"56\":\"C\",\"69\":\"A\",\"53\":\"C\",\"64\":\"A\",\"58\":\"C\",\"60\":\"C\"}', 18, 105, '2021-10-28 01:24:13', '2021-10-28 01:24:13', 0),
(194, 1, 5, '{\"68\":\"A\",\"51\":\"B\",\"61\":\"C\",\"60\":\"B\",\"67\":\"B\",\"57\":\"D\",\"62\":\"B\",\"55\":\"E\",\"69\":\"A\",\"59\":\"D\",\"56\":\"D\",\"50\":\"A\",\"63\":\"A\",\"65\":\"A\",\"53\":\"C\",\"64\":\"A\",\"66\":\"A\",\"58\":\"D\",\"54\":\"C\",\"52\":\"E\"}', 15, 80, '2021-10-28 01:24:52', '2021-10-28 01:24:52', 0),
(195, 1, 5, '{\"65\":\"A\",\"67\":\"B\",\"55\":\"E\",\"53\":\"C\",\"63\":\"A\",\"62\":\"C\",\"60\":\"C\",\"50\":\"A\",\"68\":\"A\",\"51\":\"B\",\"64\":\"A\",\"52\":\"E\",\"56\":\"B\",\"59\":\"B\",\"57\":\"B\",\"58\":\"D\",\"54\":\"C\",\"61\":\"C\",\"66\":\"A\",\"69\":\"A\"}', 16, 80, '2021-10-28 01:35:22', '2021-10-28 01:35:22', 0),
(196, 1, 5, '{\"64\":\"A\",\"67\":\"B\",\"66\":\"A\",\"65\":\"A\",\"68\":\"A\",\"61\":\"C\",\"57\":\"B\",\"63\":\"A\",\"52\":\"E\",\"59\":\"A\",\"55\":\"E\",\"53\":\"C\",\"69\":\"A\",\"58\":\"A\",\"56\":\"A\",\"62\":\"B\",\"60\":\"C\",\"51\":\"B\",\"50\":\"A\",\"54\":\"C\"}', 16, 80, '2021-10-28 01:38:13', '2021-10-28 01:38:13', 0),
(197, 1, 5, '{\"62\":\"A\",\"63\":\"A\",\"51\":\"B\",\"55\":\"E\",\"59\":\"C\",\"65\":\"A\",\"67\":\"B\",\"69\":\"A\",\"52\":\"E\",\"60\":\"C\",\"53\":\"C\",\"56\":\"B\",\"54\":\"C\",\"66\":\"A\",\"57\":\"B\",\"50\":\"A\",\"58\":\"B\",\"61\":\"C\",\"64\":\"A\",\"68\":\"A\"}', 17, 80, '2021-10-28 01:40:57', '2021-10-28 01:40:57', 0),
(198, 1, 5, '{\"56\":\"D\",\"67\":\"B\",\"60\":\"C\",\"62\":\"A\",\"51\":\"B\",\"54\":\"C\",\"65\":\"A\",\"50\":\"A\",\"61\":\"C\",\"52\":\"E\",\"68\":\"A\",\"53\":\"C\",\"58\":\"C\",\"69\":\"A\",\"55\":\"E\",\"64\":\"A\",\"59\":\"D\",\"63\":\"A\",\"57\":\"B\",\"66\":\"A\"}', 19, 80, '2021-10-28 01:42:38', '2021-10-28 01:42:38', 0),
(199, 1, 5, '{\"56\":\"C\",\"50\":\"A\",\"58\":\"C\",\"54\":\"C\",\"60\":\"C\",\"68\":\"A\",\"67\":\"B\",\"65\":\"A\",\"69\":\"A\",\"64\":\"A\",\"66\":\"A\",\"57\":\"B\",\"59\":\"D\",\"55\":\"E\",\"51\":\"B\",\"53\":\"C\",\"61\":\"C\",\"52\":\"E\",\"63\":\"A\",\"62\":\"A\"}', 20, 80, '2021-10-28 01:44:50', '2021-10-28 01:44:50', 0),
(200, 1, 5, '{\"57\":\"B\",\"61\":\"C\",\"65\":\"A\",\"67\":\"B\",\"64\":\"A\",\"60\":\"C\",\"51\":\"B\",\"68\":\"A\",\"59\":\"D\",\"62\":\"A\",\"52\":\"E\",\"58\":\"C\",\"50\":\"A\",\"54\":\"C\",\"55\":\"E\",\"66\":\"A\",\"69\":\"A\",\"56\":\"C\",\"63\":\"A\",\"53\":\"C\"}', 20, 80, '2021-10-28 01:48:36', '2021-10-28 01:48:36', 0),
(201, 1, 5, '{\"62\":\"A\",\"55\":\"E\",\"60\":\"A\",\"51\":\"C\",\"58\":\"C\",\"52\":\"E\",\"57\":\"D\",\"63\":\"B\",\"64\":\"A\",\"59\":\"D\",\"50\":\"D\",\"69\":\"A\",\"54\":\"C\",\"67\":\"A\",\"65\":\"A\",\"66\":\"B\",\"56\":\"B\",\"53\":\"C\",\"68\":\"A\"}', 11, 88, '2021-10-28 05:06:08', '2021-10-28 05:06:08', 0),
(202, 1, 5, '{\"67\":\"B\",\"63\":\"A\",\"51\":\"D\",\"62\":\"B\",\"56\":\"C\",\"68\":\"A\",\"69\":\"A\",\"53\":\"C\",\"55\":\"E\",\"59\":\"C\",\"60\":\"B\",\"64\":\"A\",\"57\":\"C\",\"50\":\"C\",\"54\":\"C\",\"65\":\"A\",\"61\":\"A\",\"66\":\"A\",\"58\":\"C\",\"52\":\"D\"}', 12, 88, '2021-10-28 05:13:22', '2021-10-28 05:13:22', 0),
(203, 1, 5, '{\"65\":\"A\",\"59\":\"C\",\"62\":\"A\",\"58\":\"C\",\"68\":\"A\",\"51\":\"A\",\"50\":\"A\",\"57\":\"C\",\"64\":\"A\",\"61\":\"A\",\"69\":\"A\",\"55\":\"E\",\"54\":\"A\",\"56\":\"C\",\"67\":\"B\",\"63\":\"A\",\"52\":\"A\",\"66\":\"A\",\"60\":\"A\",\"53\":\"C\"}', 13, 88, '2021-10-28 05:15:41', '2021-10-28 05:15:41', 0),
(204, 1, 5, '{\"59\":\"A\",\"61\":\"B\",\"66\":\"A\",\"68\":\"A\",\"67\":\"B\",\"63\":\"A\",\"52\":\"B\",\"64\":\"A\",\"57\":\"A\",\"54\":\"B\",\"69\":\"A\",\"56\":\"B\",\"53\":\"C\",\"51\":\"B\",\"55\":\"E\",\"60\":\"A\",\"65\":\"A\",\"50\":\"B\",\"58\":\"C\",\"62\":\"B\"}', 11, 88, '2021-10-28 05:18:41', '2021-10-28 05:18:41', 0),
(205, 1, 5, '{\"55\":\"E\",\"65\":\"A\",\"56\":\"C\",\"61\":\"C\",\"68\":\"A\",\"52\":\"D\",\"57\":\"D\",\"62\":\"C\",\"60\":\"C\",\"54\":\"C\",\"58\":\"C\",\"66\":\"A\",\"51\":\"C\",\"64\":\"A\",\"69\":\"A\",\"53\":\"C\",\"63\":\"A\",\"50\":\"B\",\"59\":\"C\",\"67\":\"B\"}', 14, 88, '2021-10-28 05:20:25', '2021-10-28 05:20:25', 0),
(206, 1, 5, '{\"56\":\"C\",\"68\":\"A\",\"59\":\"B\",\"51\":\"A\",\"62\":\"C\",\"50\":\"A\",\"69\":\"A\",\"52\":\"B\",\"67\":\"B\",\"65\":\"A\",\"66\":\"A\",\"64\":\"A\",\"55\":\"E\",\"63\":\"A\",\"61\":\"A\",\"54\":\"C\",\"57\":\"C\",\"58\":\"C\",\"53\":\"C\",\"60\":\"C\"}', 14, 88, '2021-10-28 05:26:17', '2021-10-28 05:26:17', 0),
(207, 1, 5, '{\"56\":\"C\",\"61\":\"A\",\"60\":\"C\",\"64\":\"A\",\"68\":\"A\",\"65\":\"A\",\"59\":\"D\",\"54\":\"C\",\"55\":\"E\",\"66\":\"A\",\"67\":\"B\",\"58\":\"C\",\"50\":\"A\",\"69\":\"A\",\"53\":\"C\",\"52\":\"E\",\"51\":\"C\",\"62\":\"C\",\"63\":\"A\",\"57\":\"C\"}', 16, 88, '2021-10-28 05:28:25', '2021-10-28 05:28:25', 0),
(208, 1, 5, '{\"69\":\"A\",\"54\":\"C\",\"63\":\"A\",\"66\":\"A\",\"62\":\"C\",\"57\":\"D\",\"55\":\"E\",\"52\":\"E\",\"56\":\"C\",\"59\":\"D\",\"67\":\"B\",\"61\":\"A\",\"53\":\"C\",\"58\":\"C\",\"50\":\"A\",\"68\":\"A\",\"51\":\"C\",\"65\":\"A\",\"60\":\"C\",\"64\":\"A\"}', 16, 88, '2021-10-28 05:30:16', '2021-10-28 05:30:16', 0),
(209, 1, 5, '{\"65\":\"A\",\"54\":\"C\",\"63\":\"A\",\"51\":\"D\",\"67\":\"B\",\"55\":\"E\",\"60\":\"C\",\"52\":\"E\",\"59\":\"B\",\"68\":\"A\",\"58\":\"C\",\"64\":\"A\",\"53\":\"C\",\"69\":\"A\",\"62\":\"C\",\"57\":\"C\",\"50\":\"A\",\"66\":\"A\",\"61\":\"C\",\"56\":\"C\"}', 16, 88, '2021-10-28 05:35:52', '2021-10-28 05:35:52', 0);
INSERT INTO `user_test_histories` (`id`, `question_group`, `id_training`, `answered`, `score`, `user_id`, `created_at`, `updated_at`, `type`) VALUES
(210, 1, 5, '{\"55\":\"E\",\"65\":\"A\",\"61\":\"A\",\"50\":\"A\",\"54\":\"C\",\"62\":\"A\",\"52\":\"E\",\"59\":\"B\",\"51\":\"D\",\"69\":\"A\",\"60\":\"C\",\"58\":\"C\",\"66\":\"A\",\"67\":\"B\",\"63\":\"A\",\"64\":\"A\",\"57\":\"C\",\"53\":\"C\",\"68\":\"A\",\"56\":\"C\"}', 16, 88, '2021-10-28 05:40:23', '2021-10-28 05:40:23', 0),
(211, 1, 5, '{\"61\":\"C\",\"60\":\"C\",\"66\":\"A\",\"64\":\"A\",\"52\":\"E\",\"54\":\"C\",\"67\":\"B\",\"51\":\"B\",\"62\":\"C\",\"68\":\"A\",\"57\":\"B\",\"59\":\"D\",\"58\":\"C\",\"63\":\"A\",\"65\":\"A\",\"56\":\"C\",\"69\":\"A\",\"50\":\"A\",\"55\":\"E\",\"53\":\"C\"}', 19, 109, '2021-10-28 09:13:44', '2021-10-28 09:13:44', 0),
(212, 1, 5, '{\"50\":\"A\",\"56\":\"C\",\"65\":\"B\",\"55\":\"E\",\"52\":\"E\",\"54\":\"C\",\"51\":\"B\",\"58\":\"C\",\"68\":\"A\",\"59\":\"D\",\"60\":\"B\",\"69\":\"A\",\"61\":\"B\",\"63\":\"A\",\"66\":\"B\",\"53\":\"C\",\"64\":\"A\",\"62\":\"C\",\"57\":\"B\"}', 14, 86, '2021-10-28 09:22:18', '2021-10-28 09:22:18', 0),
(213, 1, 5, '{\"63\":\"A\",\"53\":\"C\",\"52\":\"E\",\"55\":\"E\",\"60\":\"C\",\"69\":\"A\",\"58\":\"C\",\"62\":\"A\",\"51\":\"B\",\"57\":\"B\",\"65\":\"A\",\"59\":\"D\",\"54\":\"C\",\"61\":\"C\",\"66\":\"A\",\"67\":\"B\",\"50\":\"A\",\"68\":\"A\",\"64\":\"A\",\"56\":\"C\"}', 20, 109, '2021-10-28 09:22:49', '2021-10-28 09:22:49', 0),
(214, 1, 5, '{\"56\":\"C\",\"57\":\"B\",\"59\":\"D\",\"52\":\"D\",\"68\":\"A\",\"67\":\"B\",\"58\":\"C\",\"54\":\"C\",\"65\":\"A\",\"64\":\"A\",\"66\":\"A\",\"69\":\"A\",\"60\":\"C\",\"51\":\"B\",\"61\":\"C\",\"63\":\"A\",\"53\":\"C\",\"50\":\"A\",\"62\":\"C\",\"55\":\"E\"}', 18, 110, '2021-10-28 09:26:43', '2021-10-28 09:26:43', 0),
(215, 1, 5, '{\"64\":\"A\",\"56\":\"C\",\"67\":\"B\",\"53\":\"C\",\"61\":\"A\",\"62\":\"A\",\"68\":\"A\",\"51\":\"B\",\"60\":\"A\",\"58\":\"C\",\"52\":\"E\",\"69\":\"A\",\"54\":\"C\",\"63\":\"A\",\"55\":\"E\",\"59\":\"D\",\"50\":\"A\",\"66\":\"A\",\"65\":\"A\",\"57\":\"B\"}', 18, 86, '2021-10-28 09:30:03', '2021-10-28 09:30:03', 0),
(216, 1, 5, '{\"51\":\"B\",\"61\":\"C\",\"68\":\"A\",\"54\":\"C\",\"57\":\"B\",\"58\":\"C\",\"64\":\"A\",\"56\":\"C\",\"59\":\"D\",\"53\":\"C\",\"60\":\"A\",\"67\":\"B\",\"66\":\"A\",\"55\":\"E\",\"63\":\"A\",\"50\":\"A\",\"65\":\"A\",\"52\":\"E\",\"62\":\"A\",\"69\":\"A\"}', 19, 86, '2021-10-28 09:36:02', '2021-10-28 09:36:02', 0),
(217, 1, 5, '{\"68\":\"A\",\"61\":\"A\",\"66\":\"A\",\"59\":\"D\",\"52\":\"E\",\"55\":\"E\",\"62\":\"A\",\"67\":\"B\",\"54\":\"C\",\"50\":\"A\",\"53\":\"C\",\"63\":\"A\",\"58\":\"C\",\"56\":\"C\",\"64\":\"A\",\"60\":\"C\",\"57\":\"B\",\"65\":\"B\",\"51\":\"B\",\"69\":\"A\"}', 18, 86, '2021-10-28 09:41:48', '2021-10-28 09:41:48', 0),
(218, 1, 5, '{\"67\":\"B\",\"53\":\"A\",\"66\":\"A\",\"69\":\"A\",\"59\":\"B\",\"51\":\"B\",\"65\":\"A\",\"61\":\"C\",\"56\":\"C\",\"60\":\"C\",\"58\":\"C\",\"52\":\"E\",\"64\":\"A\",\"62\":\"A\",\"63\":\"A\",\"54\":\"B\",\"55\":\"E\",\"50\":\"A\",\"68\":\"A\",\"57\":\"A\"}', 16, 113, '2021-10-28 19:10:12', '2021-10-28 19:10:12', 0),
(219, 1, 5, '{\"68\":\"A\",\"69\":\"A\",\"62\":\"C\",\"59\":\"B\",\"60\":\"C\",\"65\":\"A\",\"61\":\"C\",\"64\":\"A\",\"66\":\"A\",\"52\":\"E\",\"57\":\"C\",\"50\":\"A\",\"55\":\"E\",\"53\":\"A\",\"58\":\"C\",\"56\":\"B\",\"67\":\"B\",\"63\":\"A\",\"54\":\"C\",\"51\":\"B\"}', 15, 113, '2021-10-28 19:13:23', '2021-10-28 19:13:23', 0),
(220, 1, 5, '{\"69\":\"A\",\"59\":\"C\",\"63\":\"A\",\"50\":\"A\",\"51\":\"B\",\"64\":\"A\",\"67\":\"B\",\"53\":\"C\",\"62\":\"B\",\"57\":\"A\",\"56\":\"C\",\"66\":\"A\",\"65\":\"A\",\"58\":\"C\",\"68\":\"A\",\"52\":\"E\",\"60\":\"B\",\"55\":\"E\",\"61\":\"C\",\"54\":\"C\"}', 16, 113, '2021-10-28 20:20:14', '2021-10-28 20:20:14', 0),
(221, 1, 5, '{\"53\":\"C\",\"61\":\"C\",\"66\":\"A\",\"55\":\"E\",\"62\":\"A\",\"57\":\"B\",\"52\":\"E\",\"68\":\"A\",\"69\":\"A\",\"63\":\"A\",\"67\":\"B\",\"50\":\"A\",\"51\":\"B\",\"64\":\"A\",\"59\":\"D\",\"54\":\"C\",\"56\":\"B\",\"60\":\"C\",\"65\":\"A\",\"58\":\"C\"}', 19, 113, '2021-10-28 20:55:30', '2021-10-28 20:55:30', 0),
(222, 1, 5, '{\"65\":\"A\",\"67\":\"B\",\"60\":\"A\",\"59\":\"D\",\"55\":\"E\",\"62\":\"A\",\"64\":\"A\",\"57\":\"C\",\"53\":\"C\",\"69\":\"A\",\"50\":\"A\",\"51\":\"B\",\"66\":\"A\",\"61\":\"C\",\"56\":\"C\",\"58\":\"C\",\"52\":\"E\",\"54\":\"C\",\"63\":\"A\",\"68\":\"A\"}', 18, 113, '2021-10-28 21:55:23', '2021-10-28 21:55:23', 0),
(223, 1, 5, '{\"53\":\"C\",\"54\":\"C\",\"63\":\"A\",\"68\":\"A\",\"64\":\"A\",\"61\":\"C\",\"66\":\"A\",\"69\":\"A\",\"50\":\"A\",\"57\":\"B\",\"65\":\"A\",\"62\":\"A\",\"58\":\"C\",\"67\":\"B\",\"56\":\"C\",\"51\":\"B\",\"55\":\"E\",\"59\":\"D\",\"60\":\"C\",\"52\":\"E\"}', 20, 55, '2021-10-28 22:25:17', '2021-10-28 22:25:17', 0),
(224, 1, 5, '{\"51\":\"B\",\"66\":\"B\",\"57\":\"B\",\"54\":\"C\",\"50\":\"A\",\"59\":\"D\",\"64\":\"A\",\"61\":\"C\",\"56\":\"B\",\"69\":\"A\",\"60\":\"C\",\"52\":\"E\",\"63\":\"B\",\"68\":\"B\",\"58\":\"B\",\"53\":\"C\",\"65\":\"A\",\"62\":\"C\",\"67\":\"B\",\"55\":\"E\"}', 14, 99, '2021-10-29 00:21:31', '2021-10-29 00:21:31', 0),
(225, 1, 5, '{\"57\":\"A\",\"58\":\"B\",\"60\":\"C\",\"64\":\"A\",\"66\":\"A\",\"53\":\"C\",\"55\":\"E\",\"63\":\"A\",\"61\":\"C\",\"50\":\"A\",\"65\":\"A\",\"59\":\"D\",\"52\":\"E\",\"69\":\"A\",\"51\":\"B\",\"67\":\"B\",\"68\":\"A\",\"54\":\"C\",\"56\":\"B\",\"62\":\"A\"}', 17, 113, '2021-10-29 00:24:59', '2021-10-29 00:24:59', 0),
(226, 1, 5, '{\"64\":\"A\",\"56\":\"B\",\"51\":\"B\",\"65\":\"A\",\"59\":\"D\",\"53\":\"C\",\"54\":\"C\",\"62\":\"C\",\"58\":\"B\",\"68\":\"A\",\"57\":\"B\",\"67\":\"B\",\"69\":\"A\",\"55\":\"E\",\"52\":\"E\",\"50\":\"A\",\"63\":\"A\",\"66\":\"A\",\"61\":\"C\"}', 16, 99, '2021-10-29 00:25:04', '2021-10-29 00:25:04', 0),
(227, 1, 5, '{\"53\":\"C\",\"55\":\"E\",\"61\":\"C\",\"56\":\"B\",\"66\":\"A\",\"52\":\"E\",\"60\":\"C\",\"69\":\"A\",\"67\":\"B\",\"64\":\"A\",\"58\":\"B\",\"68\":\"A\",\"57\":\"B\",\"51\":\"B\",\"50\":\"A\",\"62\":\"C\",\"63\":\"A\",\"65\":\"A\",\"54\":\"C\",\"59\":\"D\"}', 17, 99, '2021-10-29 00:28:51', '2021-10-29 00:28:51', 0),
(228, 1, 5, '{\"69\":\"A\",\"60\":\"A\",\"51\":\"B\",\"61\":\"C\",\"52\":\"E\",\"63\":\"A\",\"65\":\"A\",\"64\":\"A\",\"53\":\"C\",\"57\":\"D\",\"68\":\"A\",\"67\":\"B\",\"62\":\"A\",\"55\":\"E\",\"58\":\"C\",\"54\":\"C\",\"50\":\"A\",\"56\":\"B\",\"59\":\"D\",\"66\":\"A\"}', 17, 113, '2021-10-29 00:29:27', '2021-10-29 00:29:27', 0),
(229, 1, 5, '{\"66\":\"A\",\"53\":\"C\",\"57\":\"B\",\"63\":\"A\",\"62\":\"A\",\"68\":\"A\",\"69\":\"A\",\"52\":\"E\",\"51\":\"B\",\"54\":\"C\",\"59\":\"D\",\"65\":\"A\",\"56\":\"C\",\"64\":\"A\",\"61\":\"C\",\"55\":\"E\",\"50\":\"A\",\"58\":\"C\",\"67\":\"B\",\"60\":\"C\"}', 20, 112, '2021-10-29 00:32:26', '2021-10-29 00:32:26', 0),
(230, 1, 5, '{\"60\":\"C\",\"54\":\"C\",\"55\":\"E\",\"68\":\"B\",\"66\":\"A\",\"50\":\"A\",\"61\":\"C\",\"52\":\"E\",\"63\":\"B\",\"59\":\"D\",\"53\":\"C\",\"56\":\"B\",\"69\":\"A\",\"57\":\"B\",\"65\":\"A\",\"67\":\"B\",\"64\":\"A\",\"58\":\"B\",\"62\":\"C\",\"51\":\"B\"}', 15, 99, '2021-10-29 00:33:59', '2021-10-29 00:33:59', 0),
(231, 1, 5, '{\"50\":\"A\",\"65\":\"A\",\"63\":\"B\",\"67\":\"B\",\"61\":\"C\",\"53\":\"C\",\"64\":\"A\",\"55\":\"E\",\"62\":\"C\",\"51\":\"B\",\"59\":\"B\",\"54\":\"C\",\"56\":\"C\",\"66\":\"A\",\"68\":\"A\",\"58\":\"B\",\"57\":\"B\",\"52\":\"E\",\"69\":\"A\",\"60\":\"C\"}', 16, 99, '2021-10-29 00:41:29', '2021-10-29 00:41:29', 0),
(232, 1, 5, '{\"61\":\"C\",\"59\":\"D\",\"66\":\"A\",\"58\":\"B\",\"60\":\"C\",\"68\":\"A\",\"53\":\"C\",\"63\":\"A\",\"64\":\"A\",\"56\":\"C\",\"52\":\"E\",\"62\":\"C\",\"51\":\"B\",\"55\":\"E\",\"69\":\"A\",\"54\":\"C\",\"65\":\"A\",\"50\":\"A\",\"67\":\"B\"}', 17, 99, '2021-10-29 00:48:28', '2021-10-29 00:48:28', 0),
(233, 1, 5, '{\"54\":\"C\",\"55\":\"E\",\"67\":\"B\",\"69\":\"A\",\"52\":\"E\",\"66\":\"A\",\"63\":\"A\",\"51\":\"B\",\"60\":\"C\",\"64\":\"A\",\"68\":\"A\",\"58\":\"C\",\"61\":\"C\",\"50\":\"A\",\"65\":\"A\",\"56\":\"B\",\"53\":\"C\",\"62\":\"A\",\"57\":\"C\",\"59\":\"D\"}', 18, 93, '2021-10-29 00:48:47', '2021-10-29 00:48:47', 0),
(234, 1, 5, '{\"64\":\"A\",\"63\":\"A\",\"61\":\"C\",\"59\":\"D\",\"54\":\"C\",\"67\":\"B\",\"62\":\"A\",\"53\":\"C\",\"52\":\"E\",\"57\":\"B\",\"51\":\"B\",\"60\":\"C\",\"69\":\"A\",\"58\":\"C\",\"50\":\"A\",\"66\":\"A\",\"65\":\"A\",\"56\":\"C\",\"55\":\"E\",\"68\":\"A\"}', 20, 93, '2021-10-29 00:51:22', '2021-10-29 00:51:22', 0),
(235, 1, 5, '{\"57\":\"B\",\"58\":\"C\",\"62\":\"C\",\"52\":\"E\",\"63\":\"A\",\"69\":\"A\",\"64\":\"A\",\"51\":\"B\",\"67\":\"B\",\"60\":\"C\",\"68\":\"A\",\"50\":\"A\",\"54\":\"C\",\"55\":\"E\",\"53\":\"C\",\"56\":\"C\",\"59\":\"D\",\"61\":\"C\",\"65\":\"A\",\"66\":\"A\"}', 19, 99, '2021-10-29 01:00:53', '2021-10-29 01:00:53', 0),
(236, 1, 5, '{\"56\":\"C\",\"55\":\"E\",\"53\":\"D\",\"63\":\"A\",\"69\":\"A\",\"61\":\"A\",\"57\":\"C\",\"58\":\"D\",\"59\":\"D\",\"65\":\"A\",\"50\":\"A\",\"52\":\"E\",\"64\":\"A\",\"68\":\"A\",\"54\":\"A\",\"66\":\"A\",\"51\":\"B\",\"62\":\"A\",\"67\":\"A\",\"60\":\"B\"}', 13, 115, '2021-10-31 19:33:30', '2021-10-31 19:33:30', 0),
(237, 1, 5, '{\"63\":\"A\",\"53\":\"C\",\"52\":\"D\",\"66\":\"A\",\"58\":\"C\",\"69\":\"B\",\"54\":\"B\",\"67\":\"A\",\"51\":\"D\",\"60\":\"B\",\"50\":\"A\",\"55\":\"E\",\"64\":\"A\",\"68\":\"B\",\"61\":\"B\",\"57\":\"C\",\"59\":\"C\",\"56\":\"C\",\"65\":\"A\"}', 9, 118, '2021-11-06 11:16:19', '2021-11-06 11:16:19', 0),
(238, 1, 5, '{\"57\":\"B\",\"66\":\"A\",\"58\":\"C\",\"69\":\"A\",\"67\":\"B\",\"60\":\"C\",\"56\":\"C\",\"64\":\"A\",\"65\":\"A\",\"59\":\"D\",\"51\":\"B\",\"52\":\"E\",\"53\":\"C\",\"54\":\"C\",\"50\":\"A\",\"61\":\"A\",\"55\":\"E\",\"62\":\"A\",\"63\":\"A\",\"68\":\"A\"}', 19, 127, '2021-12-21 00:51:08', '2021-12-21 00:51:08', 0),
(239, 1, 5, '{\"68\":\"A\",\"66\":\"A\",\"55\":\"A\",\"56\":\"C\",\"58\":\"C\",\"65\":\"A\",\"51\":\"B\",\"67\":\"A\",\"62\":\"A\",\"64\":\"A\",\"53\":\"C\",\"54\":\"C\",\"63\":\"A\",\"50\":\"A\",\"60\":\"A\",\"52\":\"E\",\"69\":\"A\",\"61\":\"A\",\"57\":\"C\",\"59\":\"C\"}', 14, 127, '2021-12-21 09:59:33', '2021-12-21 09:59:33', 0),
(240, 1, 5, '{\"62\":\"B\",\"60\":\"C\",\"59\":\"C\",\"65\":\"A\",\"66\":\"B\",\"69\":\"A\",\"53\":\"C\",\"57\":\"B\",\"63\":\"B\",\"58\":\"D\",\"51\":\"C\",\"64\":\"B\",\"67\":\"A\",\"52\":\"E\",\"68\":\"B\",\"55\":\"E\",\"56\":\"B\",\"54\":\"A\",\"50\":\"D\",\"61\":\"C\"}', 1000, 129, '2021-12-22 06:58:09', '2021-12-22 06:58:09', 0),
(241, 1, 5, '{\"58\":\"C\",\"59\":\"B\",\"62\":\"A\",\"53\":\"A\",\"66\":\"A\",\"65\":\"B\",\"64\":\"A\",\"68\":\"A\",\"69\":\"A\",\"54\":\"B\",\"61\":\"A\",\"60\":\"A\",\"67\":\"A\",\"56\":\"A\",\"63\":\"A\",\"55\":\"D\",\"52\":\"D\",\"50\":\"A\",\"51\":\"B\",\"57\":\"A\"}', 9, 128, '2021-12-22 20:54:47', '2021-12-22 20:54:47', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `videos`
--

CREATE TABLE `videos` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quarter_id` int NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `videos`
--

INSERT INTO `videos` (`id`, `created_at`, `updated_at`, `quarter_id`, `video`, `image`, `status`) VALUES
(2, '2022-03-10 04:01:37', '2022-03-10 04:01:37', 5, '1646884897.mp4', '1646884897.png', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `history_gift_user`
--
ALTER TABLE `history_gift_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `management_address`
--
ALTER TABLE `management_address`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `management_card`
--
ALTER TABLE `management_card`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `management_gifts`
--
ALTER TABLE `management_gifts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `management_provider`
--
ALTER TABLE `management_provider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `quarter_group_question`
--
ALTER TABLE `quarter_group_question`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `training_management`
--
ALTER TABLE `training_management`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `user_test_histories`
--
ALTER TABLE `user_test_histories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `configs`
--
ALTER TABLE `configs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `history_gift_user`
--
ALTER TABLE `history_gift_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `management_address`
--
ALTER TABLE `management_address`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `management_card`
--
ALTER TABLE `management_card`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `management_gifts`
--
ALTER TABLE `management_gifts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `management_provider`
--
ALTER TABLE `management_provider`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `quarter_group_question`
--
ALTER TABLE `quarter_group_question`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `training_management`
--
ALTER TABLE `training_management`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT cho bảng `user_test_histories`
--
ALTER TABLE `user_test_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT cho bảng `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
