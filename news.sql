-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 24, 2024 at 09:31 AM
-- Server version: 8.0.31
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL,
  `name` varchar(225) NOT NULL,
  `slug` varchar(225) NOT NULL,
  `parent` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent`) VALUES
(0, 'Thời sự', 'Thoi-su', 0),
(1, 'Thế giới', 'The-Gioi', 0),
(2, 'Thể thao', 'The-Thao', 0),
(3, 'Chính Trị', 'Chinh-Tri', 0),
(4, 'Giáo Dục', 'Giao-Duc', 0);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int NOT NULL,
  `title` varchar(225) NOT NULL,
  `excerpt` varchar(225) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` int NOT NULL,
  `featured` int NOT NULL,
  `views` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `author` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `excerpt`, `content`, `image`, `category`, `featured`, `views`, `created_at`, `updated_at`, `author`) VALUES
(1, 'Xiaomi tạo nhẫn thông minh tự điều chỉnh kích thước', 'Mẫu nhẫn thông minh sắp ra mắt của Xiaomi được cho là có thể mở rộng hoặc thu nhỏ kích thước phù hợp ngón tay người dùng.', 'Theo thông tin từ Cục Sở hữu trí tuệ quốc gia Trung Quốc (CNIPA), nhẫn của Xiaomi sử dụng chất liệu có khả năng đàn hồi như PVC hoặc cao su, kết hợp với cơ chế lò xo giúp đổi kích thước linh hoạt. Điều này cho phép smart ring có thể vừa vặn với bất kỳ ngón tay nào.\r\n\r\nTrang công nghệ PhoneArena đánh giá sáng kiến này giống như chiếc nhẫn trong phim The Lord of the Rings, giải quyết được khó khăn thường gặp của người dùng khi lựa chọn kích thước nhẫn.\r\n\r\nBên cạnh thiết kế linh hoạt, smart ring của Xiaomi dự kiến tích hợp nhiều công nghệ hiện đại. Theo bằng sáng chế, sản phẩm hỗ trợ kết nối wifi, mạng di động từ 2G đến 5G, NFC và UWB, cùng nhiều cảm biến như ánh sáng, gia tốc, con quay hồi chuyển, từ trường và nhiệt độ. Ngoài việc theo dõi sức khỏe, nhẫn có thể kết nối và điều khiển thiết bị di động khác.\r\n\r\nTrước đó, công ty Oura cũng cho biết đang nghiên cứu và phát triển nhẫn thông minh với khả năng tự điều chỉnh kích cỡ.\r\n\r\n<img src=\"https://i1-sohoa.vnecdn.net/2024/10/16/black-shark-ring-01-3545-1729091853.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=55SQ9Vx4ktEAtGTj7iMkCg\">\r\nNhẫn thông minh của Black Shark. Ảnh: Black Shark\r\nHồi tháng 4, Black Shark, công ty chuyên về điện thoại chơi game do Xiaomi đứng sau, cũng đã giới thiệu nhẫn thông minh có thời lượng sử dụng 180 ngày nhờ hộp sạc đi kèm.\r\n\r\nBlack Shark Ring được mô tả có thiết kế thời trang, tạo cảm giác đeo thoải mái, độ dày 2,2 mm, và có hai phiên bản màu bạc và màu đen - đỏ. Black Shark cho biết sản phẩm hỗ trợ tính năng chạm thông minh và điều khiển bằng một tay, đầy đủ tính năng đo sức khỏe như theo dõi chỉ số nhịp tim, SpO2, nhiệt độ cơ thể.', '<img src=\"https://i1-sohoa.vnecdn.net/2024/10/16/black-shark-ring-01-3545-1729091853.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=55SQ9Vx4ktEAtGTj7iMkCg\">', 1, 1, 1000, '2024-10-24 07:42:59', '2024-10-24 07:42:59', 0),
(2, 'Vì sao dùng 5G tốn dung lượng hơn 4G?', 'Nhiều người phản ánh khi smartphone kết nối mạng 5G, họ có cảm giác data nhanh hết hơn, nhưng chuyên gia cho rằng dung lượng tương đương.', '\"Tôi đăng ký gói cước 2 GB dữ liệu mỗi ngày, trước đây đều dư thừa. Tuy nhiên, từ khi chuyển sang 5G, chỉ vài tiếng đã thấy báo hết dung lượng\", Phương Anh (Hà Nội) nói. Đây cũng là ý kiến của nhiều người khi trải nghiệm 5G thời gian qua, dù thói quen và nhu cầu sử dụng của họ không thay đổi.\r\n\r\nThử thách cùng Khánh Vy và nhận quà tặng từ Dạ Hương\r\nDạ Hương_T10.MNG\r\nThử thách cùng Khánh Vy và nhận quà tặng từ Dạ Hương\r\nAd\r\nTại hội thảo 5G sáng 24/10, Viettel, nhà mạng đầu tiên thương mại hóa 5G tại Việt Nam, cho biết đã ghi nhận vấn đề. Theo ông Nguyễn Văn Sơn, Giám đốc Trung tâm di động Viettel Telecom, \"5G không tốn data hơn 4G nếu sử dụng tác vụ và nội dung với cùng một chất lượng\", đặc biệt với nhu cầu cơ bản của người dùng như truy cập mạng xã hội, tải tài liệu.', '<img src=\"https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA1sPkdk.img?w=612&h=367&m=6&x=1067&y=185&s=1275&d=1112\">\r\n', 1, 1, 1000, '2024-10-24 07:57:43', '2024-10-24 07:57:43', 2),
(3, 'Mỹ-Hàn Quốc huy động hàng loạt tiêm kích tiến hành hoạt động lớn; Nga cảnh báo \'thay đổi bản chất quan hệ\' nếu Seoul làm một điều', 'Không quân Hàn Quốc cho biết, nước này và Mỹ đã bắt đầu cuộc tập trận không quân chung quy mô lớn mang tên Lá cờ tự do hôm 21/10, nhằm tăng cường khả năng sẵn sàng đối phó với các mối đe dọa.', 'Tiêm kích tàng hình F-35 sẽ tham gia cuộc tập trận quy mô lớn của Mỹ-Hàn Quốc. (Nguồn: Wikipedia)\r\nHãng thông tấn Yonhap đưa tin, cuộc tập trận kéo dài 12 ngày này diễn ra tại nhiều căn cứ không quân khác nhau ở Hàn Quốc, huy động khoảng 110 máy bay, bao gồm tiêm kích tàng hình F-35A và F-15K của Hàn Quốc, F-35B và F-16 cùng máy bay không người lái MQ-9 của Mỹ.\r\n\r\nTin liên quan\r\n\r\nTương lai bán đảo Triều Tiên dưới bóng bầu cử Mỹ\r\nTương lai bán đảo Triều Tiên dưới bóng bầu cử Mỹ\r\nTương lai bán đảo Triều Tiên dưới bóng bầu cử Mỹ\r\nKhông quân Hoàng gia Australia cũng tham gia với máy bay tiếp nhiên liệu đa năng KC-30A.\r\n\r\nTheo Không quân Hàn Quốc, đây là lần đầu tiên cuộc tập trận có sự phối hợp giữa máy bay chiến đấu và thiết bị bay không người lái, nhằm mô phỏng tình huống chiến đấu trên thực tế dựa trên các cuộc xung đột gần đây, như cuộc chiến ở Ukraine.', 'Image2.jpg', 3, 1, 1000, '2024-10-24 09:26:54', '2024-10-24 09:26:54', 3),
(4, 'iPhone 17 là sản phẩm tham vọng nhất trong lịch sử Apple\r\n', 'Việc thăng chức cho Dinh, Pakula và Nordhues diễn ra vào thời điểm nhóm kỹ thuật phần cứng của Apple đang trải qua những thay đổi đáng kể.', 'Apple đã có những cải tổ mạnh mẽ trong nhóm kỹ thuật phần cứng, hướng đến những thay đổi lớn đối với iPhone 17 ra mắt vào năm 2025.\r\n\r\nJohn Ternus, người đứng đầu nhóm kỹ thuật phần cứng của Apple, đã thăng chức cho Richard Dinh, Dave Pakula và Donny Nordhues lên vị trí cao hơn.\r\n\r\nGame chiến thuật hay nhất\r\nForge of Empires\r\nGame chiến thuật hay nhất\r\nAd\r\nCùng nhau, 3 người này sẽ đảm nhận những trách nhiệm mới, đóng góp vào quá trình phát triển sản phẩm trong tương lai của Apple.\r\n\r\nRichard Dinh sẽ giám sát quá trình phát triển dòng iPhone 17 sắp ra mắt, được Ternus mô tả là \"dòng sản phẩm tham vọng nhất trong lịch sử\" Apple.\r\n\r\nMặc dù tuyên bố này có vẻ cường điệu, nhưng có một số lý do để tin rằng iPhone 17 thực sự có thể là một dòng sản phẩm mang tính đột phá của gã khổng lồ công nghệ này.\r\n\r\nDave Pakula sẽ chịu trách nhiệm thiết kế sản phẩm cho iPad, Apple Watch, sản phẩm âm thanh, thiết bị đầu vào, nhóm Mac tại Trung Quốc. Chuyên môn của ông sẽ đóng vai trò quan trọng trong việc định hình tương lai của các dòng sản phẩm này.\r\n\r\nDonny Nordhues sẽ đảm nhiệm vai trò quản lý chương trình cho tổ chức kỹ thuật phần cứng. Trọng tâm của ông sẽ là hợp lý hóa quy trình, cải thiện hiệu quả và đảm bảo các dự án được hoàn thành đúng thời hạn và trong phạm vi ngân sách.', 'Image3.jpg', 2, 1, 1000, '2024-10-24 09:29:08', '2024-10-24 09:29:08', 5),
(5, 'Bóng bay rác Triều Tiên lại rơi trúng Dinh Tổng thống Hàn Quốc', 'Bóng bay chứa rác của Triều Tiên lại một lần nữa rơi vào khu vực Dinh Tổng thống Hàn Quốc, dù đây là khu vực cấm bay và được nhiều binh sĩ canh gác.\r\n\r\n\r\n', 'Theo Đài ABC News, ngày 24-10, bóng bay mang rác của Triều Tiên lại một lần nữa rơi xuống khu vực gần Dinh Tổng thống Hàn Quốc.\r\n\r\nNhiều phương tiện truyền thông Hàn Quốc cho biết những quả bóng bay này có chứa các tờ rơi chế giễu Tổng thống Hàn Quốc Yoon Suk Yeol và Đệ nhất phu nhân Kim Keon Hee. Bao gồm hình ảnh vợ chồng tổng thống cùng với những câu như “Tổng thống Yoon và vợ thật may mắn khi không có con” và “Hàn Quốc là vương quốc của bà Keon Hee”.\r\n\r\nKhám phá cuộc sống cân bằng cùng Dạ Hương và Khánh Vy\r\nDạ Hương_T10.MNG\r\nKhám phá cuộc sống cân bằng cùng Dạ Hương và Khánh Vy\r\nAd\r\nNhững tờ rơi ám chỉ việc bà Kim Keon Hee đang phải đối mặt với cáo buộc thao túng cổ phiếu và can thiệp vào quá trình đề cử ứng viên của Đảng Quyền lực Quốc dân (PPP) trong thời gian chuẩn bị cho cuộc tổng tuyển cử hồi tháng 4.\r\n\r\nTrong một tuyên bố được đưa ra sau đó, Cơ quan An ninh Tổng thống Hàn Quốc (PSS) cho biết một trong nhiều quả bóng bay chứa rác đã phát nổ tại khu vực này sáng 24-10. Không có vật phẩm nguy hiểm nào được tìm thấy.\r\n\r\nSự việc diễn ra chỉ vài ngày sau khi bà Kim Yo Jong, em gái Chủ tịch Triều Tiên Kim Jong Un, một lần nữa cáo buộc các nhà hoạt động Hàn Quốc gửi máy bay không người lái đến Triều Tiên và rải truyền những tờ đơn chống Bình Nhưỡng.\r\n\r\n“Bản thân Hàn Quốc sẽ phải tự mình trải nghiệm để hiểu rõ hành động nguy hiểm mà họ đã thực hiện và những hậu quả khủng khiếp họ tự chuốc lấy”, bà khẳng định.\r\n\r\nTriều Tiên lại thả bóng bay chứa rác, bất chấp Hàn Quốc cảnh báo đáp trả\r\nĐây là lần thứ hai bóng bay rác xâm nhập khu vực này, dấy lên mối lo ngại khi các địa điểm quan trọng của Hàn Quốc như Dinh Tổng thống, vốn được bảo vệ bởi nhiều binh sĩ và là khu vực cấm bay, lại dễ bị ảnh hưởng trước các hành động khiêu khích của Triều Tiên.\r\n\r\nTrước đó, vào tháng 7, bóng bay mang rác từ Triều Tiên đã rơi vào khu vực Dinh Tổng thống Hàn Quốc. Lực lượng an ninh Seoul đã phải huy động đội phản ứng hóa học để ứng phó.\r\n\r\nTừ cuối tháng 5, Bình Nhưỡng đã bắt đầu một cuộc “chiến tranh tâm lý” với Hàn Quốc khi liên tiếp gửi bóng bay chứa rác thải hoặc phân, thậm chí một số quả bóng còn bay đến tận thủ đô Seoul.\r\n\r\nKể từ năm 2022, văn phòng tổng thống Hàn Quốc không còn ở Nhà Xanh mà được đặt tại Yongsan, một quận trung tâm ở thủ đô Seoul.\r\n\r\nVào tháng 3-2022, sau khi đắc cử, Tổng thống Yoon Suk Yeol phá vỡ truyền thống lâu đời và chuyển ra khỏi Nhà Xanh.\r\n\r\nViệc rời đi giúp ông tiếp cận người dân tốt hơn và dễ liên lạc với các trợ lý vì \"Nhà Xanh là một dinh thự hoàng gia cô lập và bị bao quanh bởi rừng, an ninh nghiêm ngặt\".\r\n\r\nNhà Xanh hiện mở cửa cho toàn bộ người dân vào tham quan.', 'Image4.jpg', 4, 1, 1000, '2024-10-24 09:30:58', '2024-10-24 09:30:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(1, 'Huy Đức'),
(2, 'Phạm A'),
(3, 'Nguyễn Van B'),
(4, 'Dương Thành Tĩnh'),
(5, 'Nguyễn Thành Vinh');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
