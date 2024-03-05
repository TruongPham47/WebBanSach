-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 05, 2024 at 01:35 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `name`, `email`, `phone`) VALUES
('abcd', '81dc9bdb52d04dc20036dbd8313ed055', 'Nguyễn văn A', NULL, NULL),
('hung', 'e10adc3949ba59abbe56e057f20f883e', 'Lên Văn An', NULL, NULL),
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Trần Văn Hùng', NULL, NULL),
('hoangnghia', '467b617fec4d9fcb63505734ee224851', 'Nguyễn Hoàng Nghĩa', 'ABC', NULL),
('aaa', 'fcea920f7412b5da7be0cf42b8c93759', 'asd', 'abc', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `book_id` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `book_name` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `img` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `pub_id` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `cat_id` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`book_id`),
  KEY `manxb` (`pub_id`,`cat_id`),
  KEY `maloai` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_name`, `description`, `price`, `img`, `pub_id`, `cat_id`, `quantity`) VALUES
('nn01', 'Oxford Advanced Learner\'s Dictionary', 'The Oxford Advanced Learner\'s Dictionary is the world\'s bestselling advanced level dictionary for learners of English.\r\nNow in its 10th edition, the Oxford Advanced Learner\'s Dictionary, or OALD, is your complete guide to learning English vocabulary with definitions that learners can understand, example sentences showing language in use, and the new Oxford 3000 (TM) and Oxford 5000 (TM) word lists providing core vocabulary that every student needs to learn.', 500000, 'uploads/oxford.jpg', 'gd', 'nn', 0),
('td01', 'Từ Điển Y Học DorLand Anh - Việt', 'Cuốn sách Từ Điển Y Học DorLand Anh – Việt PDF là một cuốn sách tham khảo hàng đầu trên thế giới về các thuật ngữ y học. Cuốn từ điển này đã  chọn lọc kho từ vựng phong phú mô tả những khu vực trọng yếu của kiến thức y học luôn mở rộng và thay đổi. ', 1300000, 'uploads/tudienyhoc.jpg', 'gd', 'td', 0),
('td02', 'How to Win Friends and Influence People', 'Đắc Nhân Tâm là một trong những tựa sách self-help nổi tiếng nhất thế giới với hơn 15 triệu bản được bán ra trên toàn cầu. Cuốn sách này được đánh giá là kho tàng kiến thức vô giá và là một nguồn cảm hứng thú vị cho những ai muốn nâng cao kỹ năng giao tiếp, cải thiện khả năng xây dựng mối quan hệ và tìm kiếm thành công trong cuộc sống.', 85000, 'uploads/dacnhantam.jpg', 'vhtt', 'td', 0),
('td03', 'Đại Từ Điển Tiếng Việt (Bản mới 2010)', 'Thêm yêu tiếng Việt\r\n\r\n \r\n\r\nTừ lâu chúng ta đã có nhiều công trình nghiên cứu về kho tàng tiếng Việt, thế nhưng “Đại từ điển tiếng Việt” (NXB Đại học Quốc gia TPHCM - Nguyễn Như Ý chủ biên) vừa ra mắt bạn đọc là công trình đầy đặn và đồ sộ nhất. Cuốn sách đã bắt nhịp cầu cho những ai yêu tiếng mẹ…\r\n\r\n \r\n\r\nCầm trên tay cuốn Đại từ điển dày gần 2.000 trang mới cảm nhận hết tâm huyết của những người làm sách. Cuốn từ điển này được in lần đầu tiên vào năm 1999, đến nay, đáp ứng nhu cầu của bạn đọc, các tác giả đã tiến hành nghiên cứu, bổ sung.\r\n\r\n \r\n\r\nTrong lần tái bản này, ban biên soạn đã chọn và đưa vào sách những từ ngữ mới xuất hiện và đã được dùng rộng rãi trong đời sống và trên các phương tiện thông tin đại chúng nhằm làm tăng tính mới mẻ và tiện ích cho người sử dụng.\r\n\r\n \r\n\r\nMột trong những ý tưởng chinh phục người đọc là tính đa dạng của Đại từ điển tiếng Việt. Bởi nó không chỉ đơn thuần là sự tra cứu nghĩa các từ mà mở ra chân trời kiến thức mới. Việc đan xen những kiến thức cơ bản về văn hóa, văn minh Việt Nam và thế giới, giới thiệu tổng quan và hệ thống các hiện vật văn hóa như: Đơn vị đo lường của Việt Nam và thế giới, đồng bạc Việt xưa và nay, các loại trống đồng hiện có ở Việt Nam, quốc kỳ các nước trên thế giới… Đây là những thông tin bổ ích đáp ứng nhu cầu bổ sung kiến thức cơ bản của học sinh - sinh viên và các bạn trẻ Việt Nam.\r\n\r\n\r\n', 850000, 'uploads/dai-tu-dien.jpg', 'hcm', 'td', 0),
('td06', 'Từ điển địa danh hành chính Nam Bộ', 'Từ điển địa danh hành chính Nam Bộ do tác giả Nguyễn Đình Tư biên soạn hết sức công phu, tổng hợp được nhiều tư liệu quý, là công cụ giúp bạn đọc tra cứu một cách khoa học về địa danh hành chính. Đây là cuốn sách có giá trị không chỉ bởi nó cung cấp một lượng mục từ khá đồ sộ, mà còn bởi tác giả đã dành rất nhiều công sức và tâm huyết để sưu tầm, xử lý tư liệu về vùng đất có bề dày truyền thống lịch sử, nhưng cũng có sự thay đổi nhiều và phức tạp nhất về địa danh hành chính', 265000, 'uploads/tu-dien-dia-danh.jpg', 'hcm', 'td', 0),
('th01', '100 thủ thuật với Excel 2010', '100 thủ thuật ứng với 100 bài tập thực hành được hướng dẫn, giải thích theo bố cục chặt chẽ, cách trình bày rõ ràng, dễ sử dụng, bạn đọc có thể tự mình xử lý những vấn đề nảy sinh trong quá trình thực hành đồng thời giúp các bạn thao tác nhanh trên bảng tính.\r\n', 54000, 'uploads/100thuthuat.jpg', 'hcm', 'td', 0),
('th05', 'Từng Bước Làm Quen Với Máy Tính', 'Mục Lục:\r\n\r\nBài 1: Máy tính điện tử và hệ điều hành\r\n\r\nBài 2: Hệ điều hành Window XP\r\n\r\nBài 3: Làm việc với máy tính qua desktop\r\n\r\nBài 4: Tệp tin và thư mục\r\n\r\nBài 5: Sử dụng Window Explorer\r\n\r\nBài 6: Một số thao tác cần biết\r\n\r\nPhụ lục – Những tổ hợp phím tắt', 31000, 'uploads/tungbuoclamquen.jpg', 'vhtt', 'th', 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `cat_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
('gk', 'Giáo Khoa'),
('khkt', 'Ky Thuat'),
('kt', 'Kinh Tế'),
('Ls', 'Lịch sử '),
('LS1', 'Lịch sử'),
('nn', 'Ngoại Ngữ'),
('pl', 'Pháp Luật'),
('td', 'Từ Điển'),
('test', 'Loai Moi'),
('th', 'Tin Học'),
('tt', 'The Thao Du Lich'),
('vh', 'Văn Học'),
('vhxh', 'Van Hoa xa Hoi');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'tiêu đề',
  `img` varchar(50) DEFAULT NULL COMMENT 'path file hình',
  `short_content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Nội dung ngắn',
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Nội dung',
  `hot` int NOT NULL DEFAULT '0' COMMENT 'tin hot=1, thường: != 1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `img`, `short_content`, `content`, `hot`) VALUES
(1, 'qqq', 'q', 'q', 'q', 0),
(2, 'ww', 'w', 'w', 'w', 1),
(3, 'ee', 'e', 'e', 'e', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `order_id` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL DEFAULT '',
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `consignee_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `consignee_add` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `consignee_phone` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '',
  `status` int NOT NULL DEFAULT '0' COMMENT 'Trạng thái:0-3',
  PRIMARY KEY (`order_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `email`, `order_date`, `consignee_name`, `consignee_add`, `consignee_phone`, `status`) VALUES
('65843ddc6bdbf', '1@1.1', '2023-12-21 20:30:04', NULL, NULL, '', 0),
('65843e0aabd2d', '1@1.1', '2023-12-21 20:30:50', NULL, NULL, '', 0),
('65843e43391c0', '1@1.1', '2023-12-21 20:31:47', NULL, NULL, '', 0),
('65843e8c97339', '1@1.1', '2023-12-21 20:33:00', NULL, NULL, '', 0),
('658442ee1bbb8', '1@1.1', '2023-12-21 20:51:42', NULL, NULL, '', 0),
('6585330889d1d', 'phamtruongb20@gmail.com', '2023-12-22 13:56:08', NULL, NULL, '', 0),
('658536faa98b5', 'phamtruongb20@gmail.com', '2023-12-22 14:12:58', NULL, NULL, '', 0),
('658537176098f', 'phamtruongb20@gmail.com', '2023-12-22 14:13:27', NULL, NULL, '', 0),
('65853b5f3aa7f', 'phamtruongb20@gmail.com', '2023-12-22 14:31:43', NULL, NULL, '', 0),
('65867e27d9837', 'phamtruongb20@gmail.com', '2023-12-23 13:28:55', NULL, NULL, '', 0),
('65867e77d04ce', 'phamtruongb20@gmail.com', '2023-12-23 13:30:15', NULL, NULL, '', 0),
('65867e7ba31f6', 'phamtruongb20@gmail.com', '2023-12-23 13:30:19', NULL, NULL, '', 0),
('65867e8fd0717', 'phamtruongb20@gmail.com', '2023-12-23 13:30:39', NULL, NULL, '', 0),
('65867ee108b6f', 'phamtruongb20@gmail.com', '2023-12-23 13:32:01', NULL, NULL, '', 0),
('658bbb4d61a38', 'phamtruongb20@gmail.com', '2023-12-27 12:51:09', NULL, NULL, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE IF NOT EXISTS `order_detail` (
  `order_id` varchar(100) NOT NULL,
  `book_id` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `quantity` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`book_id`),
  KEY `masach` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_id`, `book_id`, `quantity`, `price`) VALUES
('65843e43391c0', 'nn01', 1, 500000),
('65843e8c97339', 'nn01', 1, 500000),
('658536faa98b5', 'nn01', 1, 500000),
('65853b5f3aa7f', 'td01', 47, 1300000),
('65853b5f3aa7f', 'td03', 255, 850000),
('65867e27d9837', 'nn01', 1, 500000),
('65867e77d04ce', 'nn01', 1, 500000),
('65867e7ba31f6', 'nn01', 1, 500000),
('65867e8fd0717', 'nn01', 1, 500000),
('65867ee108b6f', 'nn01', 1, 500000),
('658bbb4d61a38', 'nn01', 1, 500000),
('658bbb4d61a38', 'td01', 1, 1300000);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
CREATE TABLE IF NOT EXISTS `publisher` (
  `pub_id` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `pub_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`pub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`pub_id`, `pub_name`) VALUES
('gd', 'Giáo dục'),
('hcm', 'Tổng Hợp Hồ Chí Minh'),
('hnv', 'Hội Nhà Văn'),
('pn', 'Phụ Nữ'),
('tn', 'Thanh Niên'),
('vh', 'Văn Học'),
('vhtt', 'Văn Hóa Thông Tin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `email` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `password`, `name`, `address`, `phone`) VALUES
('1@1.1', 'c4ca4238a0b923820dcc509a6f75849b', 'Đại Ca - Trần văn Hùng', 'Quận 3', '090090999'),
('abc@gmail.com', '123456', 'truong', 'tanphu', '12345678'),
('abcd@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Minh Triết', 'Q1', '99999999'),
('phamtruongb20@gmail.com', '25d55ad283aa400af464c76d713c07ad', ' truong', '233TanPhu', '12345678');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publisher` (`pub_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`) ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
