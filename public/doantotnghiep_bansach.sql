-- MySQL dump 10.14  Distrib 5.5.65-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: doantotnghiep_bansach
-- ------------------------------------------------------
-- Server version	5.5.65-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`),
  UNIQUE KEY `admins_phone_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Admin','doantotnghiep@gmail.com','$2y$10$NcVzUnDTK.HtqKPczIgW4OKxUVeRYPkm7wmAkmSGnRUL3Pm4APEvy','0364624396',NULL,'67DCTM22','Đại học Công nghệ GTVT',1,1,'2020-04-20__h21.png',NULL,'2020-04-16 17:15:17'),(6,'Nhân Viên','nhanvien@gmail.com','$2y$10$2Btw2.RpZgDGwgw0yeTSdeyy.md58ZxQD.k.XNhUjFT3zRoD76YVu','012345678',NULL,NULL,NULL,2,1,NULL,'2020-06-06 05:48:35','2020-06-06 05:50:54');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `a_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT '0',
  `a_active` tinyint(4) NOT NULL DEFAULT '1',
  `a_menu_id` int(11) NOT NULL DEFAULT '0',
  `a_view` int(11) NOT NULL DEFAULT '0',
  `a_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `a_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT '0',
  `a_position_1` tinyint(4) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_a_slug_index` (`a_slug`),
  KEY `articles_a_hot_index` (`a_hot`),
  KEY `articles_a_active_index` (`a_active`),
  KEY `articles_a_menu_id_index` (`a_menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'Hạ Đỏ: Lặng lẽ một tình yêu đơn phương','ha-do-lang-le-mot-tinh-yeu-don-phuong',1,1,2,0,'Hạ đỏ, cũng như những mùa hạ khác của Nguyễn Nhật Ánh, ám ảnh, da diết và vỡ vụn. Có những mùa hạ trôi qua, đong đầy thương nhớ; cũng có những mùa hạ đến rồi lại gạn vợi niềm vui. Đọc câu chuyện, độc giả hẳn không thể nào cầm nổi nước mắt, lại thêm một chuyện tình buồn, khiến nhiều lúc lại bâng khuâng tự hỏi phải chăng tình đầu luôn là mối tình đớn đau nhất.','2020-04-12__31.jpg','<p>C&acirc;u chuyện kể về Chương, trong một k&igrave; nghỉ h&egrave; về qu&ecirc; ngoại, v&ocirc; t&igrave;nh phải l&ograve;ng &Uacute;t th&ecirc;m, c&ocirc; bạn c&ugrave;ng qu&ecirc;. Những c&acirc;u chuyện vụn vặt, nhỏ b&eacute; g&oacute;p th&agrave;nh những bức tranh đẹp, m&agrave; trong đ&oacute; Chương v&agrave; những người bạn của anh l&agrave; Nhạn v&agrave; Dế l&agrave; nh&acirc;n vật ch&iacute;nh. Từ đ&oacute; mở ra trong t&aacute;c phẩm vừa l&agrave; tuổi thơ tr&agrave;n đầy sức sống, vừa l&agrave; nỗi đau da diết kh&ocirc;n ngu&ocirc;i, cất l&ecirc;n từ mối t&igrave;nh buồn của Chương v&agrave; &Uacute;t Th&ecirc;m.</p>\r\n\r\n<h2><strong>Vụn vặt, nhỏ b&eacute; m&agrave; g&oacute;p th&agrave;nh tuổi thơ</strong></h2>\r\n\r\n<p><strong><em>&ldquo;T&ocirc;i thấy Nguyễn Nhật &Aacute;nh trong tuổi thơ&rdquo; &ndash; Hải Đăng</em></strong></p>\r\n\r\n<p>Cũng như con ong biến trăm hoa th&agrave;nh một mật,&nbsp;<a href=\"https://reviewsach.net/tag/nguyen-nhat-anh/\">Nguyễn Nhật &Aacute;nh</a>&nbsp;lặng lẽ đi t&igrave;m mật ngọt từ tuổi thơ của mỗi người, để kết tinh th&agrave;nh những trang s&aacute;ch l&agrave;m lay động tr&aacute;i tim của biết bao thế hệ. Tuổi thơ đ&oacute; l&agrave; qu&ecirc; ngoại y&ecirc;n b&igrave;nh c&oacute; Nhạn v&agrave; Dế, được che chở bằng những lũy tre xanh m&aacute;t, từng giọt v&agrave;ng rơi xuống đường qu&ecirc;, khiến người ta nặng l&ograve;ng kh&ocirc;ng muốn rời. L&agrave; những buổi trưa c&ugrave;ng Nhạn v&agrave;o vườn bắn trộm chim, h&aacute;i trộm xo&agrave;i. L&agrave; những trận đ&aacute;nh &ldquo;kinh điển&rdquo; với Dư, mỗi trận đều hấp dẫn như ngo&agrave;i chiến trường. V&agrave; cả những rung động của tuổi mới lớn. Những k&iacute; ức đ&oacute; l&agrave; dư vị đ&atilde; n&iacute;u giữ ch&acirc;n người đọc mỗi lần đọc&nbsp;<em>Hạ đỏ.</em></p>\r\n\r\n<p><em>&nbsp;</em>Những c&acirc;u chuyện hết sức b&igrave;nh dị nay được vẽ lại dưới ng&ograve;i b&uacute;t của Nguyễn Nhật &Aacute;nh, n&ecirc;n thơ, đẹp đẽ v&agrave; trong ngần. Ai trong ch&uacute;ng ta chẳng c&oacute; một m&ugrave;a hạ để m&agrave; nhớ, cũng giống như Chương th&ocirc;i. Cứ như thế, m&ugrave;a hạ đỏ lặng lẽ v&agrave; trầm ng&acirc;m, từng ch&uacute;t một hiện ra dưới ng&ograve;i b&uacute;t. Trong m&ugrave;a hạ đẹp kh&ocirc;n c&ugrave;ng đ&oacute;, điểm xuyết một v&agrave;i thanh nhạc trầm đến từ t&igrave;nh y&ecirc;u kh&ocirc;ng vẹn tr&ograve;n, nhưng dẫu sao cũng đ&atilde; th&agrave;nh c&ocirc;ng dẫn người đọc v&agrave;o địa hạt của tuổi thơ. Đ&oacute; ch&iacute;nh l&agrave; mong ước cuối c&ugrave;ng của t&aacute;c giả mỗi khi viết t&aacute;c phẩm. Đ&acirc;u phải ngẫu nhi&ecirc;n m&agrave; Nguyễn Nhật &Aacute;nh được ca tụng l&agrave; người đi t&igrave;m k&iacute; ức.</p>\r\n\r\n<h2><strong>T&igrave;nh đầu ng&acirc;y thơ</strong></h2>\r\n\r\n<p>Ai trong ch&uacute;ng ta chẳng c&oacute; một người để nhớ, để thương, để vấn vương suốt cả một đời người? &Uacute;t th&ecirc;m với Chương cũng như vậy. Hai người gặp nhau trong ho&agrave;n cảnh &eacute;o le, khi &Uacute;t th&ecirc;m đưa Dư đến nh&agrave; Nhạn v&agrave; Dế băng b&oacute; vết thương v&igrave; bị Chương bắn đ&aacute; tr&uacute;ng đầu. Ch&agrave;ng trai mới lớn của ch&uacute;ng ta ngay lập tức say nắng đ&ocirc;i mắt của c&ocirc; bạn c&ugrave;ng qu&ecirc;. Lặng lẽ như gi&oacute; g&oacute;p th&agrave;nh b&atilde;o, như m&acirc;y g&oacute;p th&agrave;nh trời, như s&ocirc;ng dệt th&agrave;nh biển. T&igrave;nh y&ecirc;u trong Chương cứ vậy m&agrave; lớn dần, Chương bắt đầu biết giả vờ ngồi c&acirc;u c&aacute; để chờ &Uacute;t th&ecirc;m đi ngang, biết viết thư tỏ t&igrave;nh l&eacute;n để v&agrave;o giỏ của &Uacute;t. Chương cũng từ bỏ mối th&ugrave; với Dư- em trai của c&ocirc; để mơ mộng về một ng&agrave;y được cưới &Uacute;t l&agrave;m vợ. Từ bỏ cả những niềm vui tuổi nhỏ, Chương giờ th&iacute;ch vẩn vơ nghĩ đến đ&ocirc;i mắt của &Uacute;t hơn l&agrave; đi chơi c&ugrave;ng Nhạn v&agrave; Dế. T&aacute;c giả đ&atilde; rất t&agrave;i t&igrave;nh khi mi&ecirc;u tả t&acirc;m l&iacute; của những ch&agrave;ng trai mới lớn.</p>\r\n\r\n<p>Để th&uacute;c đẩy cho chuyện t&igrave;nh của cả hai được đi l&ecirc;n đỉnh điểm, Nguyễn Nhật &Aacute;nh đ&atilde; x&acirc;y dựng t&igrave;nh huống &Uacute;t th&ecirc;m kh&ocirc;ng biết đọc để tạo cơ hội cho Chương. Anh ch&agrave;ng trở th&agrave;nh thầy gi&aacute;o của &Uacute;t th&ecirc;m, những ng&agrave;y th&aacute;ng cứ tr&ocirc;i qua như thế, &ecirc;m đềm v&agrave; giản dị, lặng lẽ m&agrave; tr&agrave;n ngập y&ecirc;u thương. Tất cả những g&igrave; Chương muốn l&agrave; được hằng ng&agrave;y ngắm &Uacute;t. T&igrave;nh y&ecirc;u đ&oacute; ng&acirc;y thơ trong s&aacute;ng v&agrave; thuần khiết.</p>\r\n\r\n<p>Ai bảo rằng t&igrave;nh y&ecirc;u thời học tr&ograve; th&igrave; nhanh qua, ch&oacute;ng t&agrave;n. Chương ngay lần đầu biết nếm vị của t&igrave;nh y&ecirc;u đ&atilde; y&ecirc;u thật s&acirc;u đậm, thật mạnh mẽ đ&oacute; th&ocirc;i? Ở c&aacute;i tuổi mới lớn ấy, con người ta sẵn s&agrave;ng hi sinh, vị tha cho t&igrave;nh y&ecirc;u của m&igrave;nh. Kh&ocirc;ng c&oacute; ranh giới n&agrave;o được vẽ ra m&agrave; c&oacute; thể ngăn c&aacute;ch được t&igrave;nh y&ecirc;u, Chương đ&atilde; vượt qua những ngại ng&ugrave;ng, những th&ugrave; hằn để c&oacute; thể được y&ecirc;u &Uacute;t Th&ecirc;m trọn vẹn.</p>\r\n\r\n<p>Nguyễn Nhật &Aacute;nh thật biết c&aacute;ch biến những bi kịch th&agrave;nh nụ cười gằn nhẹ, t&igrave;nh y&ecirc;u của Chương dẫu kh&ocirc;ng vẹn to&agrave;n th&igrave; tất cả những g&igrave; đọng lại s&acirc;u nhất trong t&acirc;m hồn người đọc vẫn ch&iacute;nh l&agrave; c&aacute;i trong ngần, c&aacute;i ng&acirc;y thơ chất ph&aacute;c của nh&acirc;n vật khi y&ecirc;u. Chuyện t&igrave;nh trong&nbsp;<em>Hạ đỏ</em>&nbsp;kh&ocirc;ng cần qu&aacute; cầu k&igrave;, tiểu tiết hay giật g&acirc;n, vẫn chiếm trọn tr&aacute;i tim người đọc bằng ch&iacute;nh sự ch&acirc;n thật của n&oacute;. Cứ vậy m&agrave; lặng lẽ m&agrave; đi v&agrave;o hồn người, da diết kh&ocirc;n ngu&ocirc;i.</p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>','2020-04-12 03:06:39',0,1,'2020-05-10 08:17:45'),(2,'Nhà Văn Về Làng – Ngọt lịm một tấm lòng','nha-van-ve-lang-ngot-lim-mot-tam-long',1,1,2,0,'Từ khi bắt đầu sự nghiệp cầm bút, Nguyễn Quang Sáng chỉ in truyện chứ không in ký. “Nhà văn về làng” là tác phẩm đầu tiên cũng là duy nhất mà tác giả in ký thành sách, với mục đích đơn giản là lưu giữ kỷ niệm và tri ân những người bạn văn nghệ sĩ thân thiết của ông.','2020-04-12__32.jpeg','<p>Thoạt đầu, t&aacute;c giả đặt t&ecirc;n tập k&yacute; l&agrave; &ldquo;D&ograve;ng s&ocirc;ng tr&ocirc;i vẫn tr&ocirc;i&rdquo;, nhưng nh&agrave; xuất bản bảo t&aacute;c phẩm văn xu&ocirc;i m&agrave; lấy t&ecirc;n nghe thơ qu&aacute; m&agrave; thơ b&acirc;y giờ&hellip; ế lắm (!) n&ecirc;n đề nghị đổi t&ecirc;n s&aacute;ch th&agrave;nh &ldquo;Nh&agrave; văn về l&agrave;ng&rdquo;.</p>\r\n\r\n<p>T&aacute;c phẩm được Nh&agrave; xuất bản Văn Nghệ th&agrave;nh phố Hồ Ch&iacute; Minh ph&aacute;t h&agrave;nh năm 2008, cũng l&agrave; cuốn s&aacute;ch cuối đời của nh&agrave; văn Nguyễn Quang S&aacute;ng.</p>\r\n\r\n<p><img alt=\"Nha van ve lang reviewsachonly (7)\" src=\"https://reviewsach.net/wp-content/uploads/2020/01/Nha-van-ve-lang-reviewsachonly-7.jpeg\" style=\"height:1200px; width:1200px\" /></p>\r\n\r\n<h2><strong>T&igrave;nh y&ecirc;u qu&ecirc; hương, đất nước, con người.</strong></h2>\r\n\r\n<p>Ở tuổi 76 xuất bản một tập k&yacute; &ndash; thể loại đ&ograve;i hỏi phải đi nhiều, thấy nhiều, kể nhiều &ndash; độc giả cảm th&aacute;n sự sung sức của nh&agrave; văn. Tuy nhi&ecirc;n, sự thật kh&ocirc;ng phải vậy, điều hiểu nhầm bắt nguồn từ sự kh&aacute;c biệt giữa nghề văn v&agrave; c&aacute;nh b&aacute;o ch&iacute;, b&aacute;o ch&iacute; l&agrave; đi về phải c&oacute; t&aacute;c phẩm tức thời nộp cho t&ograve;a soạn, c&ograve;n nh&agrave; văn th&igrave; kh&ocirc;ng.</p>\r\n\r\n<p>T&aacute;c phẩm &ldquo;Nh&agrave; văn về l&agrave;ng&rdquo; gồm 31 b&agrave;i viết m&agrave; t&aacute;c giả đ&atilde; từng in b&aacute;o trong mấy chục năm. C&aacute;c b&agrave;i k&yacute; đa phần l&agrave; kỷ niệm nh&agrave; văn Nguyễn Quang S&aacute;ng song h&agrave;nh trong những chuyến đi c&ugrave;ng c&aacute;c nh&agrave; văn, nhạc sĩ: Nguyễn Tu&acirc;n, Trịnh C&ocirc;ng Sơn, Ho&agrave;ng Việt, Ho&agrave;ng Hiệp, Nguyễn Đ&igrave;nh Thi, Nguyễn Duy, Thu Bồn&hellip; m&agrave; th&agrave;nh. Tất nhi&ecirc;n, những b&agrave;i viết cũng &iacute;t nhiều li&ecirc;n quan đến t&ecirc;n tuổi c&aacute;c vị vừa n&ecirc;u.</p>\r\n\r\n<p>C&aacute;c b&agrave;i viết kh&ocirc;ng được sắp xếp theo thời gian, lại viết về những nh&acirc;n vật kh&aacute;c nhau, tr&ocirc;ng c&oacute; vẻ rời rạc, nhưng lại gắn kết bất ngờ. Xuy&ecirc;n suốt t&aacute;c phẩm l&agrave; t&igrave;nh y&ecirc;u qu&ecirc; hương của nh&agrave; văn với l&agrave;ng Mỹ Lu&ocirc;ng, Chợ Mới, An Giang &ndash; nơi người đ&atilde; sinh ra v&agrave; lớn l&ecirc;n, nơi mồ mả &ocirc;ng b&agrave; nằm đ&oacute;; l&agrave; t&igrave;nh y&ecirc;u đất nước của người chiến sĩ quyết định gia nhập bộ đội li&ecirc;n lạc khi tuổi vừa 14, mấy chục năm r&ograve;ng sống nơi chiến trường kh&oacute;i lửa, vượt bom đạn để g&oacute;p phần v&agrave;o chiến thắng của to&agrave;n qu&acirc;n to&agrave;n d&acirc;n; l&agrave; t&igrave;nh đồng ch&iacute;, đồng đội, tri kỷ, những con người t&igrave;m được đồng điệu trong t&acirc;m hồn, để rồi người ra đi về nơi c&aacute;t bụi, người ở lại l&ograve;ng luyến tiếc vấn vương&hellip;</p>\r\n\r\n<p>Với tất cả những thứ t&igrave;nh đ&oacute;, được kể qua giọng văn đặc qu&aacute;nh chất Nam bộ của Nguyễn Quang S&aacute;ng, m&agrave; theo T&ocirc; Ho&agrave;i l&agrave;:&nbsp;<em>&ldquo;Kh&ocirc;ng c&oacute; c&aacute;i nh&agrave;n nhạt chữ nghĩa d&ugrave;ng cho miền n&agrave;o cũng được&rdquo;</em>. Bởi vậy, đọc &ldquo;Nh&agrave; văn về l&agrave;ng&rdquo; lại thấy thương v&ugrave;ng s&ocirc;ng nước miền T&acirc;y Nam Bộ như thương ch&iacute;nh b&oacute;ng h&igrave;nh chữ S, c&agrave;ng biết ơn những ai đ&atilde; hy sinh cả thanh xu&acirc;n v&agrave; cuộc đời để gi&agrave;nh lấy h&ograve;a b&igrave;nh cho đất nước, v&agrave; ngạc nhi&ecirc;n trước những tượng đ&agrave;i trong l&agrave;ng nghệ thuật Việt Nam qua lời kể của một tượng đ&agrave;i kh&aacute;c trở n&ecirc;n b&igrave;nh dị, gần gũi m&agrave; đ&aacute;ng y&ecirc;u đến bất ngờ.</p>\r\n\r\n<p><img alt=\"Nha van ve lang reviewsachonly (1)\" src=\"https://reviewsach.net/wp-content/uploads/2020/01/Nha-van-ve-lang-reviewsachonly-1.jpeg\" style=\"height:1200px; width:1200px\" /></p>\r\n\r\n<h2><strong>Thi&ecirc;n chức của nh&agrave; văn.</strong></h2>\r\n\r\n<p>Nguyễn Quang S&aacute;ng nhập ngũ năm 1946, khi vừa mới 14 tuổi,&nbsp;thực thụ sống đời chiến sĩ nơi mặt trận, từ một người l&iacute;nh đến c&aacute;n bộ, rồi sau đ&oacute; l&agrave;m nh&agrave; văn, nhưng vẫn lu&ocirc;n gắn liền với c&aacute;ch mạng.</p>\r\n\r\n<p>Cho n&ecirc;n, trước khi l&agrave; nh&agrave; văn, Nguyễn Quang S&aacute;ng đ&atilde; l&agrave; một người l&iacute;nh. Trước khi l&agrave; người l&iacute;nh, Nguyễn Quang S&aacute;ng đ&atilde; l&agrave; một người Việt Nam mang trong m&igrave;nh d&ograve;ng m&aacute;u con rồng ch&aacute;u ti&ecirc;n. Văn nghiệp của &ocirc;ng lu&ocirc;n đậm dấu ấn của một người l&iacute;nh viết văn, từ bối cảnh chiến tranh với những điều giản dị tạo những &aacute;ng văn cực kỳ đắt gi&aacute;.</p>\r\n\r\n<p>Thế nhưng ở thời chiến, người d&acirc;n qu&ecirc; vẫn chưa hiểu: Nh&agrave; văn th&igrave; l&agrave;m c&aacute;i g&igrave;? Đi kh&aacute;ng chiến, đi c&aacute;ch mạng th&igrave; l&aacute;i m&aacute;y bay chiến đấu, bắn ph&aacute;o, bắn s&uacute;ng, sao lại viết tiểu thuyết? Ng&ograve;i viết đ&acirc;m thủng tờ giấy, l&agrave;m sao đ&acirc;m lủng bụng thằng giặc?</p>\r\n\r\n<p>Đ&oacute; l&agrave; những c&acirc;u hỏi thật l&ograve;ng của một người b&agrave; con đặt ra khi gặp nh&agrave; văn Nguyễn Quang S&aacute;ng về l&agrave;ng ng&agrave;y đất nước thống nhất, tha hương 29 năm.</p>\r\n\r\n<p>C&acirc;u hỏi ch&acirc;n chất của người d&acirc;n qu&ecirc;, được đ&aacute;p bởi một tấm l&ograve;ng ch&acirc;n chất kh&aacute;c: Đ&aacute;nh giặc, l&agrave; phải đ&aacute;nh bằng nhiều ng&agrave;nh, nhiều nghề &ndash; B&aacute;c Hồ đ&atilde; n&oacute;i vậy &ndash; Nh&agrave; văn l&agrave; chiến sĩ trong mặt trận văn h&oacute;a.</p>\r\n\r\n<p>Nh&agrave; văn Nguyễn Quang S&aacute;ng viết về những g&igrave;? &Ocirc;ng viết về s&ocirc;ng nước, c&acirc;y cỏ, con người v&agrave; cuộc chiến tranh đ&aacute;nh Ph&aacute;p, đ&aacute;nh Mỹ của d&acirc;n l&agrave;ng. &Ocirc;ng c&oacute;p nhặt từng chi tiết của đời sống để viết n&ecirc;n những t&aacute;c phẩm sống động m&agrave; ch&acirc;n thực. Nh&agrave; văn lớn đều lớn từ những nhận x&eacute;t nhỏ, từ những chi tiết tưởng l&agrave; b&igrave;nh thường trong cuộc đời.</p>\r\n\r\n<p><img alt=\"Nha van ve lang reviewsachonly (3)\" src=\"https://reviewsach.net/wp-content/uploads/2020/01/Nha-van-ve-lang-reviewsachonly-3.jpeg\" style=\"height:1200px; width:1200px\" /></p>\r\n\r\n<h2><strong>Ngọt lịm một tấm l&ograve;ng.</strong></h2>\r\n\r\n<p>Phan Đắc Lập từng nhận x&eacute;t:&nbsp;<em>&ldquo;Nguyễn Quang S&aacute;ng c&oacute; t&agrave;i kể chuyện. Bằng một lối văn mộc mạc, anh cứ thủ thỉ kể hết cuộc t&igrave;nh n&agrave;y đến cuộc t&igrave;nh kh&aacute;c như một người n&ocirc;ng d&acirc;n Nam bộ kể chuyện đời xưa v&agrave; chuyện tiếu l&acirc;m. Ấy vậy m&agrave; với những trang viết mộc mạc n&agrave;y, Nguyễn Quang S&aacute;ng đ&atilde; chạm tới những rung động vi nhiệm của t&igrave;nh y&ecirc;u&rdquo;.</em></p>\r\n\r\n<p>Người th&acirc;n quen đều biết, Nguyễn Quang S&aacute;ng chịu chơi v&agrave; chơi được, &ocirc;ng c&oacute; nhiều bạn &ndash; bạn chiến đấu, bạn nh&agrave; văn, bạn nghệ sĩ, bạn rượu&hellip; V&agrave; với mỗi người, trong &ocirc;ng đều đọng lại những kỷ niệm để n&acirc;ng niu. Bằng ch&iacute;nh t&agrave;i thủ thỉ kể chuyện v&ocirc; c&ugrave;ng duy&ecirc;n d&aacute;ng, nh&agrave; văn chia sẻ những kỷ niệm đ&oacute; v&agrave;o trang s&aacute;ch, thể hiện niềm tr&acirc;n qu&yacute; với tất cả những mối quan hệ m&agrave; &ocirc;ng may mắn c&oacute; được trong cuộc đời.</p>\r\n\r\n<p>Từ ng&agrave;y giải ph&oacute;ng miền Nam, thống nhất đất nước, trong nh&oacute;m bạn của nh&agrave; văn, c&oacute; người đ&atilde; hy sinh trong cuộc kh&aacute;ng chiến, người ở lại như ch&ugrave;m l&aacute; tr&ecirc;n c&agrave;nh, cứ l&aacute;t đ&aacute;t từng chiếc l&aacute; rơi.</p>\r\n\r\n<p><em>&ldquo;T&ocirc;i đi tr&ecirc;n đường phố, vắng những người bạn; đường S&agrave;i G&ograve;n, xe cuồn cuộn m&agrave; t&ocirc;i thấy thưa vắng qu&aacute;.&rdquo;</em>&nbsp;&ndash; Nh&agrave; văn Nguyễn Quang S&aacute;ng bộc bạch nỗi l&ograve;ng.</p>\r\n\r\n<p>Mỗi một b&agrave;i k&yacute; viết về người bạn đ&atilde; an nghỉ c&otilde;i thi&ecirc;n thu &ndash; nh&agrave; văn lu&ocirc;n d&ugrave;ng phong th&aacute;i của một người bạn viết cho một người bạn, kh&ocirc;ng chỉ kể phiến diện c&aacute;i t&agrave;i, m&agrave; viết lu&ocirc;n cả c&aacute;i tật &ndash; c&aacute;i điều m&agrave; th&acirc;n lắm mới biết, rồi kết th&uacute;c bằng một lời cảm ơn, hoặc l&agrave; một lời tiếc thương. Những b&agrave;i k&yacute; của t&aacute;c giả, khiến độc giả ngưỡng mộ loại t&igrave;nh cảm tri kỷ của những t&acirc;m hồn t&agrave;i hoa đ&oacute;, v&agrave; hơn hết thảy l&agrave; biết ơn những con người đ&atilde; l&agrave;m phong ph&uacute; th&ecirc;m cho nền văn học &ndash; nghệ thuật của đất nước.</p>\r\n\r\n<p><img alt=\"Nha van ve lang reviewsachonly (2)\" src=\"https://reviewsach.net/wp-content/uploads/2020/01/Nha-van-ve-lang-reviewsachonly-2.jpeg\" style=\"height:1200px; width:1200px\" /></p>\r\n\r\n<h2><strong>V&agrave;i n&eacute;t về t&aacute;c giả Nguyễn Quang S&aacute;ng.</strong></h2>\r\n\r\n<p>Nhắc đến nh&agrave; văn Nguyễn Quang S&aacute;ng, bất kể lứa tuổi n&agrave;o sau THCS đều bật ra trong đầu truyện ngắn &ldquo;Chiếc lược ng&agrave;&rdquo; &ndash; đ&acirc;y l&agrave; t&aacute;c phẩm nổi tiếng nhất của &ocirc;ng được đưa v&agrave;o chương tr&igrave;nh Ngữ văn lớp 9, l&agrave; t&aacute;c phẩm gắn liền với t&ecirc;n tuổi của t&aacute;c giả &ndash;&nbsp; nhưng cuộc đời v&agrave; sự nghiệp của &ocirc;ng kh&ocirc;ng chỉ dừng lại ở t&aacute;c phẩm n&agrave;y.</p>\r\n\r\n<p>Nguyễn Quang S&aacute;ng (12/01/1932 &ndash; 13/02/2014) nguy&ecirc;n qu&aacute;n ở x&atilde; Mỹ Lu&ocirc;ng, huyện Chợ Mới, tỉnh An Giang. &Ocirc;ng l&agrave; chiến sĩ c&aacute;ch mạng, nh&agrave; văn, nh&agrave; bi&ecirc;n kịch nổi tiếng, l&agrave; một c&acirc;y đại thụ trong l&agrave;ng văn học Việt Nam với gia t&agrave;i văn chương đồ sộ. C&aacute;c t&aacute;c phẩm của &ocirc;ng đều to&aacute;t l&ecirc;n t&igrave;nh y&ecirc;u qu&ecirc; hương, đất nước, con người.</p>\r\n\r\n<p>Những th&agrave;nh tựu nổi bật trong văn nghiệp của nh&agrave; văn Nguyễn Quang S&aacute;ng: giải thưởng b&aacute;o Thống Nhất 1959, giải thưởng tạp ch&iacute; Văn nghệ Qu&acirc;n Đội 1959, giải thưởng Hội Nh&agrave; Văn VN năm 1985, 1993, B&ocirc;ng sen v&agrave;ng li&ecirc;n hoan phim to&agrave;n quốc 1980, huy chương v&agrave;ng li&ecirc;n hoan phim Moskva 1981 cho bộ phim &ldquo;C&aacute;nh đồng hoang&rdquo;, giải thưởng Hồ Ch&iacute; Minh năm 2000&hellip; Nhưng giải thưởng lớn nhất &ocirc;ng c&oacute; được ch&iacute;nh l&agrave; sự ghi nhận v&agrave; tưởng thưởng của đồng nghiệp, của độc giả.</p>\r\n\r\n<p>V&agrave;o ng&agrave;y 13/02/2014, đạo diễn&nbsp;Nguyễn Quang Dũng&nbsp;đ&atilde; th&ocirc;ng b&aacute;o về sự ra đi của bố m&igrave;nh:</p>\r\n\r\n<p><em>&ldquo;Kết th&uacute;c một chặng đường, Ba t&ocirc;i nh&agrave; văn&nbsp;Nguyễn Quang S&aacute;ng&nbsp;đ&atilde; chia tay gia đ&igrave;nh t&ocirc;i. Ba đến nơi gặp những bạn b&egrave; th&acirc;n ch&uacute;&nbsp;Trịnh C&ocirc;ng Sơn, ch&uacute;&nbsp;Bảo Ph&uacute;c&hellip; Ch&uacute;c ba vui vẻ nơi ấy! M&aacute; v&agrave; c&aacute;c con y&ecirc;u ba! C&aacute;m ơn thượng đế cho con được l&agrave; con của ba.&rdquo;</em></p>\r\n\r\n<p>Sự ra đi của nh&agrave; văn l&agrave; mất m&aacute;t lớn lao của l&agrave;ng văn Việt Nam, để lại niềm tiếc thương v&ocirc; v&agrave;n trong l&ograve;ng người y&ecirc;u văn chương nước nh&agrave;.</p>\r\n\r\n<p>Mong hương hồn nh&agrave; văn thanh thản.</p>\r\n\r\n<p>K&iacute;nh d&acirc;ng một n&eacute;n hương l&ograve;ng tưởng nhớ đến bậc thầy, bậc đại thụ, m&agrave; nay&hellip; Chiếc lược ng&agrave; đ&atilde; xa&hellip;</p>','2020-04-12 03:09:40',0,0,'2020-04-12 03:15:32'),(3,'Cảm ơn người lớn – Cuốn bí kíp về lòng bao dung giữa hai thế hệ','cam-on-nguoi-lon-cuon-bi-kip-ve-long-bao-dung-giua-hai-the-he',1,1,2,0,'“Nếu biết con cái là một lũ sinh vật lúc nào cũng hào hứng làm những chuyện ngốc nghếch sau lưng đấng sinh thành, chắc các bậc làm cha làm mẹ phải họp hành căng thẳng để bàn tính xem có nên đẻ ra bọn tôi hay không. […] Ờ, có lẽ điều đáng kể nhất mà người lớn đóng góp cho cuộc đời chính là họ làm ra trẻ con một cách hồn nhiên.” (Trích lời cu Mùi – Cảm ơn người lớn)','2020-04-12__33.jpg','<p>&ldquo;Cảm ơn người lớn&rdquo; chỉ vỏn vẹn gồm 264 trang, chia l&agrave;m 19 chương, l&agrave; sự kế thừa v&agrave; tiếp nối th&agrave;nh c&ocirc;ng cảm x&uacute;c của mạch truyện &ldquo;Cho t&ocirc;i xin một v&eacute; đi tuổi thơ&rdquo; &ndash; một hiện tượng văn học của&nbsp;<a href=\"https://reviewsach.net/tag/nguyen-nhat-anh/\">Nguyễn Nhật &Aacute;nh</a>&nbsp;ph&aacute;t h&agrave;nh 10 năm trước.</p>\r\n\r\n<p>Vẫn l&agrave; những cu M&ugrave;i, c&aacute;i Tủn, T&iacute; S&uacute;n v&agrave; Hải c&ograve;, vẫn l&agrave; những c&acirc;u chuyện nho nhỏ, những tr&ograve; nghịch ngợm đ&aacute;ng y&ecirc;u, vẫn duy&ecirc;n, vẫn đi&ecirc;n đi&ecirc;n như giọng văn Nguyễn Nhật &Aacute;nh vốn thế. Thế nhưng cuốn s&aacute;ch n&agrave;y c&oacute; một khung sườn chắc chắn hơn, được x&acirc;y đắp bởi những chi&ecirc;m nghiệm, những trăn trở khi trẻ con đ&atilde; kh&ocirc;ng c&ograve;n l&agrave; trẻ con nữa, m&agrave; phải bước qua nấc thang thời gian để trở th&agrave;nh người lớn.</p>\r\n\r\n<p>T&aacute;c giả th&ocirc;ng qua nh&acirc;n vật cu M&ugrave;i để so s&aacute;nh hai thế giới tưởng chừng c&aacute;ch biệt lại lu&ocirc;n giao ho&agrave; ấy, rồi t&agrave;i t&igrave;nh vẫy th&ecirc;m vết m&agrave;u loang ngẫu hứng gợi những suy tư về t&igrave;nh y&ecirc;u, h&ocirc;n nh&acirc;n, tiền bạc, sức khỏe, thời gian, c&aacute;i chết&hellip; Những nỗi &aacute;m ảnh mu&ocirc;n thuở của con người.</p>\r\n\r\n<p><strong>Xem th&ecirc;m:&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li><a href=\"https://reviewsach.net/mat-biec/\">Mắt biếc: Kết cục buồn cho những kẻ &ocirc;m mối t&igrave;nh si</a></li>\r\n	<li><a href=\"https://reviewsach.net/ngay-xua-co-mot-chuyen-tinh/\">Ng&agrave;y xưa c&oacute; một chuyện t&igrave;nh</a></li>\r\n	<li><a href=\"https://reviewsach.net/nguyen-nhat-anh-dao-mong-mo/\">Đảo Mộng Mơ</a></li>\r\n	<li><a href=\"https://reviewsach.net/chuyen-co-tich-danh-cho-nguoi-lon/\">Chuyện cổ t&iacute;ch d&agrave;nh cho người lớn &ndash; C&acirc;u chuyện kh&ocirc;ng c&oacute; vai ch&iacute;nh diện&nbsp;</a></li>\r\n</ul>\r\n\r\n<h2><strong>&Ocirc;i, bạo ch&uacute;a thời gian!</strong></h2>\r\n\r\n<p>Thật kh&oacute; để một b&eacute; con 8 tuổi tưởng tượng ra được sau hơn 40 năm cuộc đời n&oacute; sẽ đi về đ&acirc;u. V&agrave; Nguyễn Nhật &Aacute;nh đ&atilde; gi&uacute;p nhiều đứa trẻ cụ thể h&oacute;a c&aacute;i tương lai đ&oacute; đến từng suy nghĩ.</p>\r\n\r\n<p>L&agrave; khi nh&oacute;m bạn tuổi thơ gặp mặt nhau sau khi tất cả đ&atilde; l&agrave; người lớn. Thậm ch&iacute; l&agrave; &ldquo;lớn hơn cả những người lớn&rdquo;, ở c&aacute;i tuổi m&agrave; cơ thể đ&atilde; bắt đầu biểu t&igrave;nh, l&agrave; khi thấy h&igrave;nh tr&aacute;i tim cũng chỉ nghĩ đến bệnh động mạch v&agrave;nh v&agrave; ph&ograve;ng kh&aacute;m tim mạch chứ kh&ocirc;ng c&ograve;n sức li&ecirc;n tưởng về t&igrave;nh y&ecirc;u nữa. Với bao nhi&ecirc;u thứ đảo lộn sau ngần ấy năm, tất cả chỉ c&oacute; thể thốt l&ecirc;n rằng: &Ocirc;i, bạo ch&uacute;a thời gian!</p>\r\n\r\n<p><em>&ldquo;Thời gian biến t&oacute;c ta th&agrave;nh hoa lau, nhuộm hồn ta th&agrave;nh l&aacute; đỏ. V&agrave; đến một ng&agrave;y n&oacute; sẽ biến đời cuộc đời ta th&agrave;nh m&acirc;y trắng lang thang.&rdquo;</em></p>\r\n\r\n<p>&ldquo;Cảm ơn người lớn&rdquo; kể chuyện về bộ tứ tuổi thơ M&ugrave;i &ndash; Hải &ndash; Tủn &ndash; T&iacute;, nh&oacute;m bạn thanh mai tr&uacute;c m&atilde;, từ l&uacute;c 8 tuổi c&ugrave;ng b&agrave;y ra đủ tr&ograve; tinh qu&aacute;i cho đến khi ngũ tuần, rồi mỗi lần tụ tập v&agrave; hồi tưởng lại phải thốt l&ecirc;n đầy hậm hực rằng:&nbsp;<em>&ldquo;Tao m&agrave; gặp lại thằng Hải c&ograve; ng&agrave;y xưa tao sẽ x&aacute;ng cho n&oacute; một bạt tai v&igrave; c&aacute;i tội chơi ngu!&rdquo;</em>&nbsp;&ndash; Đấy, &ocirc;ng Hải c&ograve; bảo vậy.</p>\r\n\r\n<p><img alt=\"cảm ơn người lớn byreviewsach.net\" src=\"https://reviewsach.net/wp-content/uploads/2019/05/ca%CC%89m-o%CC%9Bn-ngu%CC%9Bo%CC%9B%CC%80i-lo%CC%9B%CC%81n-byreviewsach.net_.jpg\" style=\"height:750px; width:1000px\" /></p>\r\n\r\n<h2><strong>Trẻ con đ&aacute;ng y&ecirc;u</strong></h2>\r\n\r\n<p>Trẻ con c&oacute; tr&iacute; tưởng tượng v&ocirc; c&ugrave;ng phong ph&uacute;, mơ những thứ rất lạ, rất phi khoa học. Tỉ như muốn tự m&igrave;nh bay như chim, bốn đứa nghĩ thế l&agrave; rủ nhau l&agrave;m thật, chim bay được nhờ c&aacute;nh, vậy th&igrave; c&ugrave;ng nhau l&agrave;m c&aacute;nh, hậu quả sau chuyến bay l&agrave; Hải c&ograve; xuất viện với c&aacute;nh tay trắng to&aacute;t v&igrave; b&oacute; bột.</p>\r\n\r\n<p>Trẻ con c&oacute; thể nghĩ đến mọi thứ, trừ c&aacute;i chết. Bởi ch&uacute;ng thấy c&aacute;i chết xa t&iacute;t m&ugrave;, chẳng c&oacute; li&ecirc;n quan g&igrave; đến m&igrave;nh cả, c&oacute; nhiều th&uacute; vui quan trọng hơn, sống m&agrave; kh&ocirc;ng vui th&igrave; c&oacute; g&igrave; th&uacute; vị đ&acirc;u? N&ecirc;n trẻ con thường b&agrave;y tr&ograve; nghịch dại, như kho&aacute;i c&aacute;i cảm gi&aacute;c đi tr&ecirc;n đầu tường ch&ecirc;nh v&ecirc;nh, ch&acirc;n run run, người lắc lư&hellip;</p>\r\n\r\n<p>Đầu &oacute;c trẻ con n&oacute;i chung đơn giản, dễ nhớ, mau qu&ecirc;n, cả th&egrave;m, ch&oacute;ng ch&aacute;n &ndash; khi đ&atilde; ch&aacute;n (hoặc sợ) &ldquo;bay&rdquo; rồi th&igrave; muốn l&agrave;m vua để c&oacute; đặc quyền sai bảo đứa kh&aacute;c &ldquo;g&atilde;i lưng&rdquo; cho m&igrave;nh.</p>\r\n\r\n<p>Từ tr&ograve; vua &nbsp;t&ocirc;i đến tr&ograve; vợ chồng, c&atilde;i nhau ch&iacute; ch&oacute;e rồi thoắt c&aacute;i đ&atilde; gật đầu v&agrave; nghi&ecirc;m t&uacute;c thực hiện vai tr&ograve; của m&igrave;nh ngay. C&ugrave;ng l&ecirc;n &ldquo;kế hoạch lớn&rdquo; như vẽ bản đồ nơi m&igrave;nh sống, hay l&agrave; &ldquo;sản xuất v&agrave; ph&aacute;t h&agrave;nh&rdquo; một bộ truyện tranh để kiếm tiền gi&uacute;p bạn được đi học.</p>\r\n\r\n<p>Cu M&ugrave;i lại c&ograve;n l&agrave;m c&aacute;i điều ngớ ngẩn như tự viết thư tỏ t&igrave;nh, k&yacute; t&ecirc;n con Tủn rồi qua bưu điện gửi cho ch&iacute;nh m&igrave;nh. Ấy thế m&agrave; khi nhận thư cu cậu vẫn hồi hộp đọc. M&agrave; &ldquo;ngu&rdquo; nhất l&agrave; khi đọc xong thư, sau c&aacute;i ửng đỏ tr&ecirc;n m&aacute; v&agrave; t&acirc;m trạng phơi phới như con Tủn gửi thư t&igrave;nh cho m&igrave;nh thật, cu M&ugrave;i lại đi khoe thư với đ&aacute;m bạn. K&eacute;o theo đ&oacute; l&agrave; chuỗi ng&agrave;y tụi nhỏ gần nh&agrave; gửi thư cho nhau, đ&ocirc;i khi chỉ để n&oacute;i một c&acirc;u t&aacute;n gẫu:&nbsp;<em>&ldquo;Đố m&agrave;y biết ng&agrave;y mai c&ocirc; gi&aacute;o mặc &aacute;o m&agrave;u g&igrave;?&rdquo;</em>, &ldquo;<em>Bạn l&agrave;m b&agrave;i tập chưa?&rdquo;.</em></p>\r\n\r\n<p><img alt=\"cảm ơn người lớn - reviewsach.net\" src=\"https://reviewsach.net/wp-content/uploads/2019/05/ca%CC%89m-o%CC%9Bn-ngu%CC%9Bo%CC%9B%CC%80i-lo%CC%9B%CC%81n-reviewsach.net_.jpg\" style=\"height:639px; width:960px\" /></p>\r\n\r\n<p>Ảnh: Đinh L&ecirc; Vũ</p>\r\n\r\n<p>Những kỷ niệm hồn nhi&ecirc;n đ&oacute; l&agrave; qu&atilde;ng thời gian m&agrave; t&aacute;c giả &ldquo;t&ocirc;i&rdquo; lu&ocirc;n hồi tưởng v&agrave; nhắc nhở bản th&acirc;n mỗi lần muốn dạy dỗ con c&aacute;i, để rồi nhận ra hồi đ&oacute; &ocirc;ng c&ograve;n đi&ecirc;n gấp mười lần con b&acirc;y giờ, xong kịp thời dừng lại những lời tr&aacute;ch mắng v&agrave; đổi giọng cười x&ograve;a&nbsp;<em>&ldquo;Ờ, ờ&hellip; tuyệt lắm, con!&rdquo;</em></p>\r\n\r\n<p><strong>Xem th&ecirc;m review s&aacute;ch của Nguyễn Nhật &Aacute;nh</strong></p>\r\n\r\n<p><a href=\"https://reviewsach.net/ha-do/\">Hạ đỏ: Lặng lẽ một t&igrave;nh y&ecirc;u đơn phương</a></p>\r\n\r\n<p><a href=\"https://reviewsach.net/bay-buoc-toi-mua-he/\">Bảy bước tới m&ugrave;a h&egrave;</a></p>\r\n\r\n<h2><strong>Người lớn dễ thương</strong></h2>\r\n\r\n<p>Thoạt đầu, &ldquo;<strong>Cảm ơn người lớn</strong>&rdquo; mới chỉ l&agrave; v&agrave;i mẩu chuyện trong sinh hoạt hằng ng&agrave;y của cu M&ugrave;i v&agrave; đ&aacute;m bạn. Rồi mở rộng kh&ocirc;ng gian nhờ &ldquo;Bản đồ thị trấn&rdquo; m&agrave; c&oacute; th&ecirc;m c&aacute;c nh&acirc;n vật Hiệp c&ograve;i, c&aacute;i L&yacute;, &ocirc;ng Hi&ecirc;n, anh Sỏi, b&agrave; Ng&aacute;t, chị Chi&ecirc;u&hellip; Tiếp nối một chuỗi c&aacute;c c&acirc;u chuyện đời v&ocirc; c&ugrave;ng phong ph&uacute;, th&uacute; vị v&agrave; bất ngờ.</p>\r\n\r\n<p>Như c&acirc;u chuyện về ba mẹ con L&yacute;, nh&agrave; con L&yacute; b&aacute;n nước mắm lẻ, cạnh c&aacute;i muỗng ống tr&uacute;c đong nước mắm cho kh&aacute;ch, mẹ n&oacute; c&oacute; để c&aacute;i bảng c&aacute;c-t&ocirc;ng chi ch&iacute;t t&ecirc;n người v&agrave; con số &ndash; đ&oacute; l&agrave; sổ ghi nợ khi h&agrave;ng x&oacute;m mua trước trả sau. Rồi một ng&agrave;y mẹ con L&yacute; rượt ba n&oacute; v&igrave; c&aacute;i tội x&oacute;a sạch tấm bảng ấy.</p>\r\n\r\n<p>Điều đ&aacute;ng n&oacute;i l&agrave; mẹ n&oacute; rượt ba n&oacute; chạy l&ograve;ng v&ograve;ng chứ kh&ocirc;ng đ&aacute;nh c&aacute;i n&agrave;o hết, c&ograve;n ba n&oacute; th&igrave; co gi&ograve; chạy m&agrave; vẫn cười h&igrave; h&igrave;, vin v&agrave;o c&aacute;i quyền l&agrave;m chồng để x&oacute;a c&aacute;i sổ nợ đ&oacute;, v&igrave; thương h&agrave;ng x&oacute;m ai cũng ngh&egrave;o. Vậy tại sao mẹ con L&yacute; kh&ocirc;ng ghi nợ chỗ kh&aacute;c rồi cất đi? Một điển h&igrave;nh cho tr&ograve; chơi một người th&iacute;ch ghi cho người kia x&oacute;a, một người th&iacute;ch rượt v&agrave; một người th&iacute;ch bị đuổi!</p>\r\n\r\n<p><em>&ldquo;Thỉnh thoảng c&oacute; những người lớn dễ thương. Người lớn dễ thương thỉnh thoảng nghĩ ra những tr&ograve; chơi dễ thương.&rdquo;</em></p>\r\n\r\n<p>Dĩ nhi&ecirc;n l&agrave; thỉnh thoảng người lớn mới dễ thương th&ocirc;i, bởi khi trưởng th&agrave;nh th&igrave; người lớn c&oacute; qu&aacute; nhiều điều phải lo toan trong cuộc sống. Thế n&ecirc;n trẻ con phải biết ơn người lớn! Người lớn sinh ra trẻ con v&agrave; lu&ocirc;n che chở bảo bọc để trẻ con sống một thời tuổi thơ đẹp đẽ như vậy.</p>\r\n\r\n<p><img alt=\"Cảm Ơn Người Lớn - Review sách (Ảnh - Lam Điền)\" src=\"https://reviewsach.net/wp-content/uploads/2019/05/Ca%CC%89m-O%CC%9Bn-Ngu%CC%9Bo%CC%9B%CC%80i-Lo%CC%9B%CC%81n-Review-sa%CC%81ch-A%CC%89nh-Lam-%C4%90ie%CC%82%CC%80n.jpg\" style=\"height:495px; width:660px\" /></p>\r\n\r\n<h2><strong>B&agrave;i học về l&ograve;ng bao dung</strong></h2>\r\n\r\n<p><em>&ldquo;Người lớn n&ecirc;n thấu hiểu v&agrave; th&ocirc;ng cảm cho trẻ con. Kh&ocirc;ng phải v&igrave; người lớn nhiều tuổi hơn trẻ con. M&agrave; l&agrave; v&igrave; người lớn nay l&agrave; &ldquo;những đứa trẻ con đ&atilde; lớn&rdquo;.&rdquo;</em></p>\r\n\r\n<p>Người lớn đ&atilde; từng l&agrave; trẻ con, nhưng trẻ con chưa từng l&agrave; người lớn.</p>\r\n\r\n<p>Nguyễn Nhật &Aacute;nh lu&ocirc;n ho&agrave;i niệm lại những điều hồn nhi&ecirc;n th&uacute; vị thời thơ b&eacute;. Để rồi buộc phải so s&aacute;nh với g&oacute;c nh&igrave;n ho&agrave;n to&agrave;n kh&aacute;c của người lớn. Phải l&agrave;m người lớn rồi mới hiểu được l&uacute;c xưa m&igrave;nh đ&atilde; ng&acirc;y ng&ocirc; như thế n&agrave;o.</p>\r\n\r\n<p>Điều người lớn hơn trẻ con l&agrave; kinh nghiệm qua vốn thời gian d&agrave;i hơn. Đặc quyền của người lớn l&agrave; c&oacute; thể nh&igrave;n lại thời thơ ấu của m&igrave;nh rồi đối chiếu với thực tại, để chi&ecirc;m nghiệm về qu&atilde;ng đời m&agrave; m&igrave;nh đ&atilde; sống.</p>\r\n\r\n<p>Nhưng kh&ocirc;ng thể bắt trẻ con phải lu&ocirc;n lu&ocirc;n h&agrave;nh xử cẩn trọng như người lớn được, v&igrave; trẻ con l&agrave; qu&atilde;ng đời vui vẻ nhất của một con người, khi c&ograve;n được chở che dưới đ&ocirc;i c&aacute;nh của bố mẹ, được ăn chơi v&agrave; được nghịch dại. Bắt trẻ con trưởng th&agrave;nh sớm cũng giống như việc giết chết qu&atilde;ng đời trẻ con của ch&uacute;ng đi vậy.</p>\r\n\r\n<p>Người lớn cần gi&aacute;o dục trẻ con, nhưng kh&ocirc;ng bao giờ, kh&ocirc;ng cần v&agrave; kh&ocirc;ng n&ecirc;n d&ugrave;ng bạo lực. Cả bạo lực th&acirc;n thể lẫn bạo lực ng&ocirc;n ngữ. H&atilde;y quan s&aacute;t c&aacute;c con, lu&ocirc;n tr&ograve; chuyện v&agrave; lắng nghe t&acirc;m sự như những người bạn tri kỷ. H&atilde;y tạo kh&ocirc;ng gian s&aacute;ng tạo cho c&aacute;c con, để ch&uacute;ng được chơi, được nghịch, v&agrave; từ những tr&ograve; chơi đ&oacute; lắng đọng lại trong t&acirc;m hồn non trẻ k&yacute; ức qu&yacute; gi&aacute; v&agrave; b&agrave;i học cho ri&ecirc;ng m&igrave;nh.</p>\r\n\r\n<p><em>&ldquo;Bọn t&ocirc;i c&ograve;n cả cuộc đời ph&iacute;a trước để vật lộn, thậm ch&iacute; để chịu đựng những đ&ograve;n roi của cuộc sống; bọn t&ocirc;i kh&ocirc;ng biết tương lai của m&igrave;nh sẽ ra sao, cũng kh&ocirc;ng biết c&aacute;ch chuẩn bị cho tương lai như thế n&agrave;o nhưng h&agrave;nh động bồng bột thuở ấu thơ đ&oacute; đ&atilde; gi&uacute;p bọn t&ocirc;i h&igrave;nh th&agrave;nh một th&oacute;i quen để sau n&agrave;y kh&ocirc;ng phung ph&iacute; hoặc phản bội lại những &yacute; tưởng tốt đẹp m&agrave; tuổi thơ ban ph&aacute;t.&rdquo;</em></p>\r\n\r\n<p>V&agrave; v&igrave; những lẽ đ&oacute;, trẻ con cảm ơn người lớn khi được hiện diện tr&ecirc;n c&otilde;i đời n&agrave;y, được y&ecirc;u thương, được nu&ocirc;i nấng bảo bọc.</p>\r\n\r\n<p>Đọc &ldquo;Cảm ơn người lớn&rdquo;, trẻ con sẽ thấy người lớn dễ thương theo c&aacute;ch m&agrave; họ kh&ocirc;ng biết. C&ograve;n người lớn sẽ học được c&aacute;ch bao dung với c&aacute;c em hơn. Người lớn bao dung với trẻ con, cũng ch&iacute;nh l&agrave; bao dung với &ldquo;một thời oanh liệt&rdquo; của ch&iacute;nh m&igrave;nh.</p>\r\n\r\n<p>Nh&agrave; văn Ma Văn Kh&aacute;ng c&oacute; lời nhận x&eacute;t về &ldquo;Cảm ơn người lớn&rdquo;:&nbsp;<em>&ldquo;Viết như kh&ocirc;ng viết. Nhẹ như một hơi thở v&ocirc; t&igrave;nh. M&agrave; mỗi &yacute; tưởng của tuổi thơ t&aacute;i hiện lọt đến tận tim gan&hellip;&nbsp;</em><strong><em>&lsquo;T&ocirc;i viết cho những ai từng l&agrave; trẻ em&rsquo;</em></strong><em>. Đ&oacute; l&agrave; lời đề từ ở đầu cuốn truyện của Nguyễn Nhật &Aacute;nh. T&ocirc;i, một &ocirc;ng gi&agrave; đ&atilde; ở tuổi b&aacute;t thập, may mắn thay, hạnh ph&uacute;c thay, đ&atilde; được trở lại tuổi l&ecirc;n t&aacute;m khi đọc cuốn s&aacute;ch n&agrave;y của một nh&agrave; văn được bạn đọc h&ocirc;m nay rất y&ecirc;u mến v&agrave; ngưỡng mộ.&rdquo;</em></p>','2020-04-12 03:11:15',0,0,'2020-04-12 03:13:51'),(4,'Trúng Số Độc Đắc – Sự tha hóa của con người dưới sức mạnh đồng tiền','trung-so-doc-dac-su-tha-hoa-cua-con-nguoi-duoi-suc-manh-dong-tien',1,1,2,0,'Bằng bút lực cuối đời, Vũ Trọng Phụng viết nên thiên tiểu thuyết “Trúng số độc đắc”, đặt vấn đề về sự tương quan giữa tiền tài và phẩm cách, về sức mạnh của đồng tiền, về bản chất của con người… qua một thể nghiệm tâm lý hết sức thú vị.','2020-04-12__34.jpg','<p>N&oacute;i cho c&ugrave;ng, liệu c&oacute; bao nhi&ecirc;u người c&oacute; đủ tự tin giữ vững được sơ t&acirc;m nếu một ng&agrave;y bỗng dưng trở n&ecirc;n gi&agrave;u c&oacute;?</p>\r\n\r\n<h2><strong>Th&oacute;i đời thay đổi, l&ograve;ng người đổi thay.</strong></h2>\r\n\r\n<p>Tiểu thuyết &ldquo;Tr&uacute;ng số độc đắc&rdquo; kể lại diễn biến t&acirc;m l&yacute; của một anh ch&agrave;ng thất nghiệp, v&igrave; tr&uacute;ng số độc đắc m&agrave; trở th&agrave;nh một tay cự ph&uacute;. Xuy&ecirc;n suốt cả 9 chương truyện, Nguyễn Văn Ph&uacute;c &ndash; nh&acirc;n vật ch&iacute;nh, xuất hiện trong từng trang từng trang s&aacute;ch, suy nghĩ v&agrave; ng&ocirc;n từ của anh trải d&agrave;i t&aacute;c phẩm, để người đọc cốt r&otilde; c&aacute;i đồng tiền đ&atilde; khiến cho một kẻ được coi l&agrave; người tốt trở n&ecirc;n &ldquo;hư&rdquo; như thế n&agrave;o.</p>\r\n\r\n<p>Ph&uacute;c l&agrave; một &ldquo;cậu &aacute;o trắng d&agrave;i&rdquo;, ng&agrave;y ng&agrave;y ra vườn hoa đọc s&aacute;ch nhằm tu th&acirc;n sửa ch&iacute;, với mong muốn trở th&agrave;nh một hiền nh&acirc;n qu&acirc;n tử ở đời. C&aacute;i sự rảnh rỗi đ&oacute; l&agrave; bởi Ph&uacute;c đ&atilde; thất nghiệp ng&oacute;t ngh&eacute;t một năm, ở nh&agrave; bị vợ sỉ vả, bị bố mẹ coi khinh; ra ngo&agrave;i bị l&atilde;o chủ T&acirc;y n&eacute;m đơn xin việc xuống đất, bị t&ograve;a b&aacute;o nhục mạ quỵt tiền&hellip;</p>\r\n\r\n<p>V&agrave; rồi, Ph&uacute;c tr&uacute;ng số. Tr&uacute;ng số độc đắc mười vạn.</p>\r\n\r\n<p>Chưa đầy nửa th&aacute;ng sau khi biết tin, c&aacute;c nh&agrave; b&aacute;o k&eacute;o đến chụp ảnh, phỏng vấn, cung k&iacute;nh Ph&uacute;c v&ocirc; c&ugrave;ng. C&aacute;i l&atilde;o chủ T&acirc;y thấy Ph&uacute;c đến l&agrave; c&uacute;i đầu ch&agrave;o rất thấp, nịnh h&oacute;t li&ecirc;n hồi, xin lỗi tới tấp. Bố mẹ thay đổi như c&oacute; ph&eacute;p thần th&ocirc;ng, khiến Ph&uacute;c thấy m&igrave;nh như biến h&igrave;nh th&agrave;nh đại qu&yacute; tử. Bố v&agrave; anh cả Ph&uacute;c tranh nhau năm trăm bạc của Ph&uacute;c cho m&agrave; như hai con &aacute;c th&uacute; trước một miếng mồi&hellip;</p>\r\n\r\n<p>Nh&acirc;n t&igrave;nh thế th&aacute;i thay đổi trắng trợn, Ph&uacute;c mượn &ldquo;<a href=\"https://vi.wikisource.org/wiki/L%E1%BA%BD_t%E1%BB%A5c_ph%C3%BA\">Lẽ tục ph&uacute;</a>&rdquo; của Trần Văn Nghĩa để tức cảnh sinh t&igrave;nh:</p>\r\n\r\n<p><em>&ldquo;Khi đắc thế th&igrave; đất nặn n&ecirc;n bụt, nghe hơi kh&aacute; th&igrave; xăm xăm chen g&oacute;t tới, đến ngỡ đ&agrave;n ruồi;</em></p>\r\n\r\n<p><em>Kh&oacute; giữa chợ n&agrave;o ai th&egrave;m hỏi, chẳng mua th&ugrave; b&aacute;n giận cũng thờ ơ;</em></p>\r\n\r\n<p><em>Gi&agrave;u tr&ecirc;n non, lắm kẻ đi t&igrave;m, kh&ocirc;ng &eacute;p đ&acirc;u, n&agrave;i thương m&agrave; sục sạo.&rdquo;</em></p>\r\n\r\n<p>Th&oacute;i đời đổi trắng thay đen. M&agrave; l&ograve;ng người cũng thường thay đổi theo th&oacute;i đời. Người xung quanh Ph&uacute;c đ&atilde; thế, m&agrave; Ph&uacute;c &ndash; kẻ từng muốn tu nh&acirc;n sửa ch&iacute; th&agrave;nh một hiền nh&acirc;n qu&acirc;n tử &ndash; cũng thế, anh trượt d&agrave;i tr&ecirc;n con đường tư bản hưởng thụ.</p>\r\n\r\n<p><img alt=\"Trúng số độc đắc Vũ Trọng Phụng reviewsachonly\" src=\"https://reviewsach.net/wp-content/uploads/2020/04/%E1%BA%A2nh-Th%C3%BAy-Di%E1%BB%85m-reviewsachonly.jpeg\" style=\"height:770px; width:600px\" /></p>\r\n\r\n<p>Ảnh: Th&uacute;y Diễm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Kẻ thất bại tự ru mộng m&igrave;nh.</strong></h2>\r\n\r\n<p>Vũ Trọng Phụng đ&atilde; rất th&agrave;nh c&ocirc;ng đắp nặn n&ecirc;n Ph&uacute;c &ndash; một nh&acirc;n vật điển h&igrave;nh rơi v&agrave;o chủ nghĩa vị tinh thần.</p>\r\n\r\n<p>Ph&uacute;c thất nghiệp v&agrave; tự cho m&igrave;nh c&aacute;i quyền hơn người l&agrave; ngồi kh&ocirc;ng v&agrave; đọc s&aacute;ch, khăng khăng với luận điệu g&agrave;n dở l&agrave; cuộc đời chỉ thanh cao v&agrave; &yacute; nghĩa khi người ta tu th&acirc;n t&iacute;ch đức bằng s&aacute;ch vở. Đọc được nhiều s&aacute;ch khiến anh ch&agrave;ng tự n&acirc;ng m&igrave;nh l&ecirc;n một bậc so với tất cả mọi người xung quanh. Đầu &oacute;c ưa l&yacute; luận b&aacute;m v&agrave;o &yacute; nghĩ rằng anh cũng chẳng ăn hại mấy, v&igrave; sau n&agrave;y chia gia t&agrave;i chắc chắn anh được hưởng một phần tư c&aacute;i nh&agrave; ở phố H&agrave;ng Gai, n&ecirc;n anh thấy m&igrave;nh chẳng cần phải gi&uacute;p đỡ g&igrave; cho gia đ&igrave;nh cả.</p>\r\n\r\n<p>Với bản t&iacute;nh sĩ diện hảo, Ph&uacute;c trốn tr&aacute;nh sự thật rằng đứng trước thực tế cuộc sống, tất cả những g&igrave; cao thượng m&agrave; cổ nh&acirc;n để lại chỉ l&agrave; những l&yacute; luận chết cứng, v&ocirc; tri, nếu kh&ocirc;ng biết c&aacute;ch ứng dụng v&agrave; tạo điều kiện để ứng dụng. S&aacute;ch chỉ c&oacute; thể sống, sinh động v&agrave; hữu &iacute;ch khi người đọc biết &aacute;p dụng v&agrave; thực h&agrave;nh n&oacute; trong đời sống. Nếu tư tưởng l&agrave; một mầm c&acirc;y được sinh ra từ s&aacute;ch vở v&agrave; gi&aacute;o dục, th&igrave; h&agrave;nh động l&agrave; &aacute;nh s&aacute;ng v&agrave; ph&acirc;n b&oacute;n nu&ocirc;i dưỡng c&acirc;y lớn mạnh trước b&atilde;o gi&ocirc;ng l&agrave; thực tế cuộc đời.</p>\r\n\r\n<p>Kh&ocirc;ng chịu chấp nhận thất bại của bản th&acirc;n m&agrave; chui r&uacute;c trong vỏ bọc của s&aacute;ch vở, tự huyễn hoặc tr&ecirc;n tư tưởng Th&aacute;nh hiền, Ph&uacute;c mang hơi hướm của tinh thần&nbsp;<a href=\"https://reviewsach.net/aq-chinh-truyen/\">AQ</a>&nbsp;bất diệt, một ph&eacute;p thắng lợi tinh thần, tự ru mộng m&igrave;nh.</p>\r\n\r\n<p>Mộng chợt tỉnh khi nhận ra nỗi nhục của một kẻ kh&ocirc;ng l&agrave;m chủ được đồng tiền, Ph&uacute;c lại mơ một giấc mơ kh&aacute;c, mơ m&igrave;nh tr&uacute;ng số:&nbsp;<em>&ldquo;Cứ biết rằng ở đời n&agrave;y nếu ta c&oacute; nhiều tiền, th&igrave; ta l&agrave;m được nhiều việc tốt đẹp lắm. Nếu t&ocirc;i gi&agrave;u th&igrave; anh xem.&rdquo;</em></p>\r\n\r\n<p>Vậy m&agrave; Ph&uacute;c tr&uacute;ng số thật. Thế nhưng khi nhảy từ th&aacute;i cực &acirc;m sang th&aacute;i cực dương v&igrave; một cục tiền từ tr&ecirc;n trời rơi xuống, chữ nghĩa Th&aacute;nh hiền coi khinh tiền bạc dường như bị tiền quạt đi đ&acirc;u mất, Ph&uacute;c triết l&yacute; rằng:&nbsp;<em>&ldquo;Xưa kia t&ocirc;i đạo đức v&igrave; chưa đủ tiền để hư.&rdquo;</em></p>\r\n\r\n<p><img alt=\"Trúng Số Độc Đắc reviewsachonly\" src=\"https://reviewsach.net/wp-content/uploads/2020/04/Tr%C3%BAng-S%E1%BB%91-%C4%90%E1%BB%99c-%C4%90%E1%BA%AFc-reviewsachonly.jpg\" style=\"height:764px; width:1018px\" /></p>\r\n\r\n<h2><strong>Sự tha h&oacute;a của con người dưới sức mạnh đồng tiền</strong>.</h2>\r\n\r\n<p>Trong khi những t&aacute;c giả hiện thực c&ugrave;ng thời mới chỉ ph&acirc;n chia x&atilde; hội th&agrave;nh hai lớp lang tốt v&agrave; xấu, đề cao c&aacute;i tốt v&agrave; hạ bệ c&aacute;i xấu, th&igrave; Vũ Trọng Phụng l&agrave; nh&agrave; văn Việt Nam đầu ti&ecirc;n đ&atilde; phanh phui bản chất của người, kể cả những người được coi l&agrave; hiền l&agrave;nh, ch&acirc;n thật.</p>\r\n\r\n<p>Kh&ocirc;ng c&oacute; trắng tuyệt đối, đen tuyệt đối, Vũ Trọng Phụng vẽ n&ecirc;n dải m&agrave;u x&aacute;m của l&ograve;ng người v&agrave; của cuộc đời. Dải m&agrave;u x&aacute;m đ&oacute; ch&iacute;nh l&agrave; sự tha h&oacute;a của con người. &Ocirc;ng đi trước thời đại, &ocirc;ng tả ch&acirc;n một x&atilde; hội hai mặt với những con người hai mặt, d&ugrave;ng đối thoại v&agrave; độc thoại nội t&acirc;m của c&aacute;c nh&acirc;n vật, như một phương ph&aacute;p th&aacute;m hiểm v&ugrave;ng tiềm thức của con người.</p>\r\n\r\n<p>Vũ Trọng Phụng kh&ocirc;ng d&ugrave;ng ng&ograve;i b&uacute;t để chống lại một th&agrave;nh phần, một giai cấp, cũng kh&ocirc;ng trực tiếp chỉ tr&iacute;ch sự mục n&aacute;t, thối rữa của x&atilde; hội Việt Nam dưới &aacute;ch thống trị của thực d&acirc;n. &Ocirc;ng&nbsp;m&ocirc; tả sự tha ho&aacute; của con người, tr&ecirc;n to&agrave;n diện x&atilde; hội, dưới chiều s&acirc;u, qua nhiều từng lớp, nhiều hạng người, mỗi người c&oacute; một c&aacute;ch tha ho&aacute; kh&aacute;c nhau trước thế lực của tiền bạc.</p>\r\n\r\n<p>Nếu &ldquo;<a href=\"https://reviewsach.net/vu-trong-phung-giong-to/\">Gi&ocirc;ng tố</a>&rdquo; l&agrave; một x&atilde; hội ch&oacute; đểu đ&aacute;nh v&agrave;o sự tr&acirc;ng tr&aacute;o t&agrave;n bạo của thế lực đồng tiền, của thế lực phản bội dựa v&agrave;o đế quốc, của hạng tay sai n&uacute;p dưới b&oacute;ng thực d&acirc;n h&ograve;ng chuộc lợi, đẩy nh&acirc;n d&acirc;n v&agrave;o thế lầm than. Hay &ldquo;<a href=\"https://reviewsach.net/ky-nghe-lay-tay/\">Kỹ nghệ lấy T&acirc;y</a>&rdquo; khi h&ocirc;n nh&acirc;n l&agrave; một c&aacute;i nghề, đặt đồng tiền l&ecirc;n tr&ecirc;n gi&aacute; trị con người, trong c&aacute;i x&atilde; hội m&agrave; c&ocirc;ng l&yacute; kh&ocirc;ng nằm b&ecirc;n lẽ phải m&agrave; nghi&ecirc;ng hẳn về ph&iacute;a c&oacute; t&uacute;i tiền nặng hơn. Th&igrave; &ldquo;Tr&uacute;ng số độc đắc&rdquo; l&agrave; một thể nghiệm t&acirc;m l&yacute; cụ thể hơn trong nội tại của một con người, khi chuyển biến từ kiếp sống thanh bần sang trọc ph&uacute;.</p>\r\n\r\n<p>Tr&uacute;ng số độc đắc, khi trong tay đ&atilde; sẵn đồng tiền, bước đầu Ph&uacute;c cũng gi&uacute;p đỡ mọi người, từ gia đ&igrave;nh đến kẻ th&acirc;n thuộc. Anh cũng c&uacute;ng tiền v&agrave;o hội Tế sinh của cụ Cả Mọc &ndash; người suốt đời tận tụy, hy sinh hết sản nghiệp để nu&ocirc;i h&agrave;ng ng&agrave;n trẻ con thi&ecirc;n hạ m&agrave; bố mẹ ngh&egrave;o đ&oacute;i bỏ cầu bất, cầu bơ.</p>\r\n\r\n<p>Nhưng khi bước sang cuộc đời trưởng giả, tậu nh&agrave;, sắm &ocirc; t&ocirc;, tiền t&agrave;i dư dả, Ph&uacute;c bắt đầu tr&aacute;c t&aacute;ng, c&aacute;i triết l&yacute; sống thanh cao của anh ng&agrave;y ấy chỉ ph&ugrave; hợp cho người ngh&egrave;o. Đứng trước đồng tiền, anh cũng chỉ l&agrave; một người như tất cả mọi người.</p>\r\n\r\n<p><em>&ldquo;Ph&uacute;c kh&ocirc;ng biết rằng sự gi&agrave;u c&oacute; đ&atilde; khiến anh cậy của m&agrave; hỗn xược với đời, v&agrave; một khi sự đời đối với anh c&aacute;i g&igrave; cũng kh&ocirc;ng qu&aacute; kh&oacute; khăn nữa, th&igrave; tất nhi&ecirc;n anh nếm ch&iacute;nh c&aacute;i hạnh ph&uacute;c hẳn hoi m&agrave; cũng cứ l&agrave; thực bất tri kỳ vị.&rdquo;</em></p>\r\n\r\n<p>Đồng tiền. N&oacute; khiến Ph&uacute;c qu&ecirc;n đi những triết l&yacute; nu&ocirc;i dưỡng hiền nh&acirc;n qu&acirc;n tử m&agrave; anh từng t&ocirc;n thờ. N&oacute; đưa anh trai của Ph&uacute;c, từ đứa con ph&aacute; gia chi tử đến địa vị của một &ocirc;ng ph&aacute;n, bố mẹ cũng phải kh&uacute;m n&uacute;m ki&ecirc;ng d&egrave;. N&oacute; biến &ocirc;ng b&aacute;c ph&uacute;c hậu, phương phi của Ph&uacute;c th&agrave;nh một l&atilde;o ăn m&agrave;y hốc h&aacute;c v&agrave; bẩn thỉu. N&oacute; biến mối quan hệ m&aacute;u mủ ruột gi&agrave; bỗng chốc trở n&ecirc;n rẻ r&uacute;ng, h&ocirc;i tanh. N&oacute; khiến mối quan hệ tưởng chừng tri kỷ bỗng th&agrave;nh s&aacute;o rỗng, giả tạo.</p>\r\n\r\n<p>Bằng sức quan s&aacute;t hơn người v&agrave; ng&ograve;i b&uacute;t tả ch&acirc;n đầy sắc sảo, Vũ Trọng Phụng đ&atilde; khắc hoạ th&agrave;nh c&ocirc;ng những con người m&ugrave; qu&aacute;ng chạy theo đồng tiền. Họ kh&ocirc;ng sống theo lu&acirc;n thường đạo l&yacute;, nh&acirc;n nghĩa hay li&ecirc;m sỉ nữa, họ đặt đồng tiền l&ecirc;n đầu quả tim.</p>\r\n\r\n<p>&ldquo;Tr&uacute;ng số độc đắc&rdquo; tiếp tục l&agrave; một đứa con gien trội của Vũ Trọng Phụng, v&igrave; d&ugrave; l&agrave; ph&eacute;p thắng lợi tinh thần, hay l&agrave; sức mạnh của đồng tiền, n&oacute; vẫn lu&ocirc;n lu&ocirc;n tồn tại trong bất kỳ một x&atilde; hội n&agrave;o.</p>\r\n\r\n<p><img alt=\"Trúng Số Độc Đắc Vũ Trọng Phụng reviewsachonly\" src=\"https://reviewsach.net/wp-content/uploads/2020/04/Tr%C3%BAng-S%E1%BB%91-%C4%90%E1%BB%99c-%C4%90%E1%BA%AFc-V%C5%A9-Tr%E1%BB%8Dng-Ph%E1%BB%A5ng-reviewsachonly.jpg\" style=\"height:768px; width:1022px\" /></p>\r\n\r\n<h2><strong>T&aacute;c phẩm cuối đời của t&agrave;i hoa Vũ Trọng Phụng.</strong></h2>\r\n\r\n<p>Tr&aacute;i với lối thường viết c&aacute;c tiểu thuyết kh&aacute;c, cứ đến ng&agrave;y b&aacute;o ra mới viết một chương, đưa in, xong hết mới th&agrave;nh s&aacute;ch. Vũ Trọng Phụng viết &ldquo;Tr&uacute;ng Số Độc Đắc&rdquo; một mạch cho đến khi ho&agrave;n th&agrave;nh, lại tự tay đ&oacute;ng lấy th&agrave;nh quyển, ngắm ngh&iacute;a m&acirc;n m&ecirc; như kh&ocirc;ng muốn rời tay, m&atilde;i rồi mới đưa cho nh&agrave; xuất bản.</p>\r\n\r\n<p>Người bạn cố tri của Vũ Trọng Phụng l&agrave; nh&agrave; văn Ngọc Giao, kể lại rằng mấy h&ocirc;m trước khi qua đời, Vũ Trọng Phụng đ&atilde; nhờ Ngọc Giao d&igrave;u đến tận nh&agrave; in, xin mấy tờ bản thảo đ&atilde; xếp chữ rồi, lấm lem mực in v&agrave; dấu tay thợ in, dặn Ngọc Giao giữ lại để l&oacute;t đầu cho m&igrave;nh khi đặt thi h&agrave;i m&igrave;nh v&agrave;o &aacute;o quan.</p>\r\n\r\n<p>Vũ Trọng Phụng ra đời dưới một ng&ocirc;i sao xấu, để rồi ra đi trong ngh&egrave;o đ&oacute;i v&agrave; bệnh tật, đến nổi phải thủ thỉ tr&ecirc;n giường bệnh với người bạn văn Vũ Bằng rằng:&nbsp;<em>&ldquo;Nếu mỗi ng&agrave;y t&ocirc;i c&oacute; một miếng b&iacute;t tết để ăn th&igrave; đ&acirc;u c&oacute; phải chết non như thế n&agrave;y&rdquo;.</em></p>\r\n\r\n<p>Thế nhưng cuộc đời ngắn ngủi 27 năm với cả những gập ghềnh, cũng đ&atilde; đủ để cho t&agrave;i hoa Vũ Trọng Phụng nở rộ tr&ecirc;n văn đ&agrave;n nước nh&agrave; v&agrave; vươn tầm thế giới.</p>\r\n\r\n<p>Mong hương hồn nh&agrave; văn thanh thản.</p>\r\n\r\n<p>K&iacute;nh d&acirc;ng một n&eacute;n hương l&ograve;ng tưởng nhớ đến bậc thầy, bậc đại thụ của nền văn học Việt Nam.</p>','2020-04-12 03:12:12',0,1,'2020-04-12 03:13:50'),(5,'Ai hát giữa rừng khuya – Gương mặt lạ trong “Việt Nam danh tác”','ai-hat-giua-rung-khuya-guong-mat-la-trong-viet-nam-danh-tac',1,1,2,0,'Bằng một cốt truyện hấp dẫn, lối cấu tứ lớp lang, kết cấu các chương khéo léo, phần đuôi của câu chuyện trước là khởi đầu cho một câu chuyện ly kỳ khác ở chương sau, đến với “Ai hát giữa rừng khuya”, TchyA dẫn dắt độc giả vào một thế giới lạ lẫm, có phần rợn người, dù trí não có nghĩ là hư cấu thì hormone adrenaline vẫn chạy rần rật trong cơ thể khiến người đọc bất giác bị cuốn hút vào từng tình tiết.','2020-04-12__35.jpg','<h2><strong>Giải m&atilde; TchyA</strong></h2>\r\n\r\n<p>TchyA (nhiều người đọc l&agrave; T&ecirc;-Chi-A, nh&agrave; văn Vũ Bằng gọi th&acirc;n thương l&agrave; Tẩy X&igrave;a) t&ecirc;n thật l&agrave; Đ&aacute;i Đức Tuấn, l&agrave; một nh&agrave; văn, nh&agrave; thơ Việt Nam. &Ocirc;ng bắt đầu sự nghiệp văn chương từ năm 1935 v&agrave; từng giảng dạy tại trường Quốc Học Huế.</p>\r\n\r\n<p>Thời Đ&aacute;i Đức Tuấn l&agrave;m tham t&aacute; Nha học ch&iacute;nh Đ&ocirc;ng Dương, &ocirc;ng c&oacute; say m&ecirc; một mỹ nh&acirc;n H&agrave; th&agrave;nh t&ecirc;n B&iacute;ch Ngọc &ndash; c&ocirc; n&agrave;ng mang n&eacute;t đẹp T&acirc;y phương n&ecirc;n tự gọi m&igrave;nh l&agrave; Ang&egrave;le. Cũng từ nguy&ecirc;n do đ&oacute; m&agrave; ch&agrave;ng trai t&agrave;i hoa phong lưu đ&atilde; chọn b&uacute;t hiệu l&agrave; &ldquo;Tuấn chỉ y&ecirc;u Ang&egrave;le&rdquo;, viết gọn th&agrave;nh TchyA như b&acirc;y giờ. C&aacute;i t&ecirc;n n&agrave;y từng tạo n&ecirc;n một tr&agrave;o lưu đặt t&ecirc;n ph&aacute; c&aacute;ch l&uacute;c bấy giờ, c&oacute; họa sỹ Trần Quang Tr&acirc;n lấy b&uacute;t hiệu Ngym &ndash; &ldquo;Người y&ecirc;u m&igrave;nh&rdquo;, Vũ Trọng Phụng cũng gọi một nh&acirc;n vật trong t&aacute;c phẩm &ldquo;<a href=\"https://reviewsach.net/so-do/\">Số đỏ</a>&rdquo; của m&igrave;nh l&agrave; Typn &ndash; &ldquo;T&ocirc;i y&ecirc;u phụ nữ&rdquo;&hellip;</p>\r\n\r\n<p>TchyA từng rất nổi danh bởi những vần thơ được gọt dũa đi&ecirc;u luyện, đầy thanh tao &yacute; tứ, mang hơi hướng thơ Đường, v&agrave; đặc biệt l&agrave; t&aacute;c giả của rất nhiều truyện truyền kỳ &ndash; kinh dị chịu ảnh hưởng phong c&aacute;ch li&ecirc;u trai. &Ocirc;ng l&agrave; một trong số kh&ocirc;ng nhiều những nh&agrave; văn trước năm 1945 chuy&ecirc;n viết về thể loại văn chương n&agrave;y, được xem l&agrave; &ldquo;cha đẻ&rdquo; của ma tr&agrave;nh v&agrave; thần hổ &ndash; những nh&acirc;n vật tưởng như hoang đường kỳ dị m&agrave; rất đời, &aacute;m ảnh h&agrave;ng chục thế hệ độc giả bấy l&acirc;u nay&hellip; &ldquo;Ai h&aacute;t giữa rừng khuya&rdquo; l&agrave; một tiểu thuyết kinh dị nổi bật của &ocirc;ng.</p>\r\n\r\n<h2><strong>Thực hư chuyện ma, chuyện thần trong &ldquo;Ai h&aacute;t giữa rừng khuya&rdquo;</strong></h2>\r\n\r\n<p>T&aacute;c phẩm xuất bản năm 1942, mặc d&ugrave; đ&atilde; từng bị mang tiếng l&agrave; &ldquo;truyện đường rừng&rdquo; ba xu, nhưng theo d&ograve;ng thời gian &ldquo;Ai h&aacute;t giữa rừng khuya&rdquo; đ&atilde; khẳng định gi&aacute; trị nghệ thuật của m&igrave;nh, được Nh&agrave; ph&aacute;t h&agrave;nh&nbsp;Nh&atilde; Nam<em>&nbsp;</em>v&agrave;&nbsp;Nh&agrave; xuất bản Văn Học<em>&nbsp;</em>c&ugrave;ng bi&ecirc;n soạn v&agrave; t&aacute;i bản trong bộ s&aacute;ch &ldquo;Việt Nam danh t&aacute;c&rdquo; &ndash; gồm những cuốn s&aacute;ch vang b&oacute;ng một thời.</p>\r\n\r\n<p>C&oacute; lẽ đại đa số mọi người ng&agrave;y nay đều theo chủ nghĩa duy vật v&agrave; &yacute; thức hệ thời đại mới, n&ecirc;n sẽ kh&ocirc;ng tin chuyện ma, chuyện thần. T&aacute;c giả cũng đ&atilde; từng vậy. Bởi ngay khi mở đầu c&acirc;u chuyện &ocirc;ng đ&atilde; cho hay, nhờ c&aacute;c nh&agrave; khoa học nghi&ecirc;n cứu m&agrave; con người mới biết được những hiện tượng tự nhi&ecirc;n như m&ugrave;i khen kh&eacute;t sau mưa b&atilde;o l&agrave; kết quả của c&aacute;c luồng điện nhấp nho&aacute;ng trong kh&ocirc;ng gian. Nếu kh&ocirc;ng được khoa học chứng minh, nhiều người sẽ coi đ&oacute; l&agrave; chuyện hoang đường, v&igrave; hiện tượng tự nhi&ecirc;n ấy v&ocirc; h&igrave;nh v&ocirc; dạng, con người chỉ c&oacute; thể cảm nhận chứ kh&ocirc;ng thể nh&igrave;n thấy.</p>\r\n\r\n<p><strong>Xem th&ecirc;m những t&aacute;c phẩm trong &ldquo;Việt Nam danh t&aacute;c&rdquo;</strong></p>\r\n\r\n<ul>\r\n	<li><a href=\"https://reviewsach.net/so-do/\">Số đỏ: Đứa con đ&aacute;ng tự h&agrave;o của &ldquo;&ocirc;ng vua ph&oacute;ng sự đất Bắc&rdquo;</a></li>\r\n	<li><a href=\"https://reviewsach.net/to-tam/\">Tố t&acirc;m: C&aacute;nh hoa sa mưa</a></li>\r\n	<li><a href=\"https://reviewsach.net/truyen-ky-man-luc-chuyen-nguoi-con-gai-nam-xuong/\">Truyền k&igrave; mạn lục: Chuyện về người con g&aacute;i Nam Xương</a></li>\r\n</ul>\r\n\r\n<p>TchyA kết luận rằng,&nbsp;<em>&ldquo;Hoang đường l&agrave; tất cả mọi sự m&agrave; lo&agrave;i người chưa t&igrave;m ra cội rễ, căn nguy&ecirc;n vậy.&rdquo;&nbsp;</em>Nguy&ecirc;n nh&acirc;n con người đọc hay nghe kể chuyện ma, v&igrave; tin c&aacute;i chuyện hoang đường ấy th&igrave; &iacute;t m&agrave; v&igrave; d&otilde;i theo t&iacute;nh hấp dẫn để giải tr&iacute; th&igrave; nhiều.</p>\r\n\r\n<p>Đến cả t&aacute;c giả của &ldquo;Li&ecirc;u Trai ch&iacute; dị&rdquo; l&agrave; Bồ T&ugrave;ng Linh (Trung Quốc) cũng mở đầu tập truyện kinh dị bất hủ n&agrave;y bằng bốn c&acirc;u thơ rất thẳng thắn:</p>\r\n\r\n<p><em>&ldquo;N&oacute;i l&aacute;o&rdquo; m&agrave; chơi, nghe l&aacute;o chơi</em></p>\r\n\r\n<p><em>D&agrave;n dưa l&uacute;n ph&uacute;n hạt mưa rơi</em></p>\r\n\r\n<p><em>Chuyện đời đ&atilde; ch&aacute;n kh&ocirc;ng buồn nhắc</em></p>\r\n\r\n<p><em>Thơ thẩn nghe ma kể mấy lời.</em></p>\r\n\r\n<p>Nghĩa l&agrave; họ Bồ tự nhận rằng những g&igrave; &ocirc;ng viết chỉ l&agrave; sản phẩm của tr&iacute; tưởng tượng m&agrave; th&ocirc;i.</p>\r\n\r\n<p>Ấy vậy m&agrave; TchyA lại kh&aacute;c, nh&agrave; văn viết trong lời giới thiệu s&aacute;ch rằng: &nbsp;&ldquo;<em>T&ocirc;i c&oacute; lẽ c&ograve;n được nhiều hạnh ph&uacute;c hơn Bồ ti&ecirc;n sinh l&agrave; t&ocirc;i đ&atilde; được thấy tận mắt</em><em>&nbsp;</em><em>ma hiện h&igrave;nh giữa ban ng&agrave;y, trong thời đại b&acirc;y giờ, lại ở một nơi kh&ocirc;ng c&aacute;ch xa đ&ocirc; th&agrave;nh phồn nhiệt mấy. &ETH;&oacute; thực l&agrave; một sự lạ, v&agrave;, cũng v&igrave; sự lạ đ&oacute;, t&ocirc;i mới ch&eacute;p n&ecirc;n c&acirc;u chuyện n&agrave;y&hellip;&rdquo;</em></p>\r\n\r\n<h2><strong>Chuyện đời n&agrave;ng Oanh Ca</strong></h2>\r\n\r\n<p>&ldquo;Ai h&aacute;t giữa rừng khuya&rdquo;&nbsp;kể về kiếp hồng nhan bạc phận của n&agrave;ng Oanh Cơ. Sinh thời mồ c&ocirc;i cha mẹ, n&agrave;ng sống c&ugrave;ng với anh trai cả Văn Quản v&agrave; chị g&aacute;i Huyền Cơ. Hai chị em đều l&agrave; mỹ nh&acirc;n, được trời ban cho dung nhan kiều diễm, c&oacute; thể s&aacute;nh ngang với Th&uacute;y V&acirc;n, Th&uacute;y Kiều năm xưa của cụ Nguyễn Du.</p>\r\n\r\n<p>Huyền Cơ thương em n&ecirc;n c&aacute;i g&igrave; cũng nhường nhịn, d&agrave;nh cho em hết, trong l&ograve;ng kh&ocirc;ng so đo ghen tị. C&ocirc; em &uacute;t Oanh Cơ ng&agrave;y c&agrave;ng xinh đẹp v&agrave; t&agrave;i năng, tiếng thơm bay khắp v&ugrave;ng. Thế nhưng kiếp đ&agrave;o đơn, đ&agrave;o k&eacute;o cũng kh&ocirc;ng thể gi&uacute;p ba anh em tho&aacute;t khỏi cơn t&uacute;ng quẫn. Họ quyết định vượt chốn rừng thi&ecirc;ng nước độc để t&igrave;m cơ hội đổi đời. Định mệnh nghiệt ng&atilde; đ&atilde; khiến ba người gặp cảnh chia ly, từ đấy để lại một tiếng đ&agrave;n h&aacute;t kh&oacute;c than ai o&aacute;n trong rừng.</p>\r\n\r\n<p>Sự kiện kỳ lạ n&agrave;y đ&atilde; đến tai t&aacute;c giả TchyA trong một chuyến du ngoạn về thăm bạn l&agrave;m thầu kho&aacute;n ở hạt Đồng Giao, Ninh B&igrave;nh. V&agrave;o một đ&ecirc;m đang l&atilde;ng đ&atilde;ng với kh&oacute;i sương của n&agrave;ng ti&ecirc;n n&acirc;u, nh&agrave; văn đ&atilde; nghe được tiếng đ&agrave;n h&aacute;t huyền diệu vẳng từ rừng ra&hellip; C&acirc;u chuyện về n&agrave;ng đ&agrave;o k&eacute;p Oanh Cơ được h&eacute; mở.</p>\r\n\r\n<p>Cũng phải kể rằng trước đ&oacute; v&agrave;i năm, khi tới thăm nh&agrave; bạn ở Nam Định, lần đầu ti&ecirc;n t&aacute;c giả c&oacute; dịp chứng kiến c&aacute;i sự vốn tưởng l&agrave; &ldquo;hoang đường&rdquo; ấy &ndash; t&aacute;c giả đ&atilde; nh&igrave;n thấy ma! Đ&oacute; l&agrave; một sự hiếm gặp với kh&aacute;ch lạ, nhưng lại l&agrave; chuyện thường của người d&acirc;n N&uacute;i G&ocirc;i sau mỗi lần mưa xuống nắng l&ecirc;n: m&agrave;n tỉ v&otilde; của hai hồn ma, điều đặc sắc ở đ&acirc;y l&agrave; hai hồn ma ấy kh&ocirc;ng c&oacute; đầu!</p>\r\n\r\n<p><img alt=\"ai hat giua rung khuya - reviewsach.net - instagram nguyen quang tung\" src=\"https://reviewsach.net/wp-content/uploads/2019/04/ai-hat-giua-rung-khuya-reviewsach.net-instagram-nguyen-quang-tung.jpg\" style=\"height:1080px; width:1080px\" /></p>\r\n\r\n<p>Ảnh: Nguyễn Quang T&ugrave;ng</p>\r\n\r\n<p>Sau khi ngỡ ng&agrave;ng v&igrave; được chứng kiến sự lạ, t&aacute;c giả hết sức t&ograve; m&ograve; về cuộc đời l&uacute;c c&ograve;n dương gian v&agrave; cớ sự tồn tại của hai oan hồn tr&ecirc;n, song cố gắng m&atilde;i m&agrave; chưa t&igrave;m được dấu t&iacute;ch g&igrave; r&otilde; r&agrave;ng trong sử s&aacute;ch hoặc d&acirc;n gian. Nay lại th&ecirc;m c&aacute;i duy&ecirc;n khi nghe được tiếng h&aacute;t vọng về từ rừng khuya xa vắng m&agrave; kh&ocirc;ng phải ai cũng c&oacute; thể nghe, t&aacute;c giả li&ecirc;n kết những sự kiện, nghe người kể lại v&agrave; t&igrave;m kiếm sử liệu&hellip; cuối c&ugrave;ng &ocirc;ng đ&atilde; v&eacute;n l&ecirc;n bức m&agrave;n b&iacute; mật đau thương v&agrave; bất hạnh của Oanh Cơ.</p>\r\n\r\n<h2><strong>Nghe ma h&aacute;t ngẫm nh&acirc;n sinh</strong></h2>\r\n\r\n<p>Tiểu thuyết&nbsp;&ldquo;Ai h&aacute;t giữa rừng khuya&rdquo; tuy ảnh hưởng mạnh bởi phong c&aacute;ch&nbsp;li&ecirc;u trai nhưng mức kinh dị, giật g&acirc;n chỉ ở dừng lại vừa đủ, thay v&agrave;o đ&oacute; người đọc x&oacute;t xa, tiếc thương cho những kiếp người thời Ph&aacute;p thuộc.</p>\r\n\r\n<p>Ma tr&agrave;nh v&agrave; thần hổ c&oacute; thật hay kh&ocirc;ng l&agrave; t&ugrave;y v&agrave;o đức tin của mỗi người. Nhưng bối cảnh trong truyện l&agrave; c&oacute; thật. S&aacute;u mươi mốt năm Việt Nam chịu sự đ&ocirc; hộ của Ph&aacute;p l&agrave; c&oacute; thật. Mất&nbsp;chủ quyền, Việt Nam bị chia cắt th&agrave;nh 3 xứ ri&ecirc;ng biệt với 3 cơ cấu h&agrave;nh ch&iacute;nh ri&ecirc;ng: xứ&nbsp;thuộc địa&nbsp;Nam Kỳ&nbsp;v&agrave; hai xứ bảo hộ&nbsp;Bắc&nbsp;v&agrave;&nbsp;Trung Kỳ. Hạt Đồng Giao &ndash; nơi xảy ra c&acirc;u chuyện &ndash; nằm ở đ&egrave;o Tam Điệp, miền gi&aacute;p giới Bắc, Trung Kỳ.</p>\r\n\r\n<p>Bối cảnh của &ldquo;Ai h&aacute;t giữa rừng khuya&rdquo; l&agrave; khoảng thời gian Ph&aacute;p mới dựng &ldquo;nền bảo hộ&rdquo; ở Việt Nam, người d&acirc;n sống theo c&aacute;c tục lệ cổ hủ; đường s&aacute; thuở ấy chưa được mở mang rộng r&atilde;i; trong nước đang thời loạn lạc, cướp b&oacute;c tứ tung, c&aacute;c tay anh h&ugrave;ng lục l&acirc;m ho&agrave;nh h&agrave;nh khắp chốn m&agrave; nền trị an th&igrave; chưa lấy g&igrave; được vững v&agrave;ng, lại th&ecirc;m những t&ecirc;n quan lại b&aacute;n nước khinh d&acirc;n&hellip; Đấy cũng l&agrave; một phần trong những nguồn cơn cớ sự g&acirc;y n&ecirc;n số phận bi đ&aacute;t của Oanh Cơ.</p>\r\n\r\n<p>TchyA kh&eacute;o l&eacute;o lồng gh&eacute;p v&agrave;o truyện lịch sử thời đại v&agrave; nh&acirc;n sinh thời đại. Phật Ph&aacute;p c&oacute; c&acirc;u &ldquo;<em>Bồ t&aacute;t sợ nh&acirc;n, ch&uacute;ng sanh sợ quả</em>&rdquo; &ndash; h&agrave;m &yacute; thế gian đều c&oacute; nh&acirc;n quả. Nh&acirc;n quả lại do t&acirc;m tạo, t&acirc;m khởi một niệm thiện th&igrave; c&oacute; thiện quả, t&acirc;m khởi một niệm &aacute;c chi&ecirc;u cảm &aacute;c quả. Đ&acirc;y cũng l&agrave; một trong những chủ đề được thể hiện trong tiểu thuyết: Luật nh&acirc;n quả trong mối quan hệ giữa người với người v&agrave; giữa người với thi&ecirc;n nhi&ecirc;n.</p>\r\n\r\n<p><strong>Xem th&ecirc;m:&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li><a href=\"https://reviewsach.net/ben-khong-chong/\">Bến kh&ocirc;ng chồng: &ldquo;H&ograve;n vọng phu&rdquo; thời hiện đại</a></li>\r\n	<li><a href=\"https://reviewsach.net/lam-di/\">L&agrave;m đĩ: B&agrave;i học cảnh tỉnh về gi&aacute;o dục giới t&iacute;nh</a></li>\r\n	<li><a href=\"https://reviewsach.net/song-mon/\">Sống m&ograve;n: Thi&ecirc;n tiểu thuyết đặc tả ng&ograve;i b&uacute;t thi&ecirc;n t&agrave;i</a></li>\r\n</ul>\r\n\r\n<h2><strong>Đ&oacute;ng g&oacute;p của TchyA &ndash; Một giọng văn &ldquo;d&agrave;i d&ograve;ng, cổ lỗ&rdquo;</strong></h2>\r\n\r\n<p>Nh&agrave; văn, nh&agrave; nghi&ecirc;n cứu văn học hiện đại v&agrave; văn học d&acirc;n gian Việt Nam &ndash; Vũ Ngọc Phan đ&atilde; c&oacute; nhận x&eacute;t kh&aacute; thẳng thắn như vậy về văn chương của TchyA.</p>\r\n\r\n<p>Kỳ thật th&igrave;, ch&iacute;nh t&iacute;nh chất d&agrave;i d&ograve;ng ấy l&agrave; kết quả của khả năng quan s&aacute;t bậc thầy c&ugrave;ng kinh nghiệm đa dạng, kiến thức phong ph&uacute; m&agrave; chỉ c&oacute; những kẻ đi rừng l&acirc;u năm, phi&ecirc;u bạt ch&acirc;n trời g&oacute;c bể mới t&iacute;ch lũy được. V&iacute; như khi &ocirc;ng mi&ecirc;u tả về v&ugrave;ng đất Đồng Giao. Mọi người c&oacute; lẽ đ&atilde; nghe c&acirc;u &ldquo;chốn rừng thi&ecirc;ng nước độc&rdquo; rất nhiều nhưng hẳn l&agrave; chưa ai cắt nghĩa được r&otilde; r&agrave;ng như TchyA.</p>\r\n\r\n<p>&Ocirc;ng giải th&iacute;ch theo cả g&oacute;c độ t&acirc;m linh lẫn khoa học bằng những lập luận chắc chắn:&nbsp;<em>&ldquo;Sở dĩ nước độc, tại v&igrave; bốn chung quanh hạt to&agrave;n l&agrave; rừng r&uacute;, ng&agrave;n nội, tru&ocirc;ng sậy h&atilde;i lau; những c&acirc;y l&aacute; mục n&aacute;t từ thuở xưa c&ograve;n chồng chất cả tr&ecirc;n mặt đất, trong l&ograve;ng suối, khiến nước xanh l&egrave; như m&agrave;u r&ecirc;u, hoặc đục v&aacute;ng l&ecirc;n như nước ao t&ugrave;. Gia dĩ trong rừng, b&oacute;ng mặt trời kh&ocirc;ng lọt v&agrave;o được, l&aacute; c&acirc;y cổ thụ rườm r&agrave; che lấp hẳn &aacute;nh nắng, h&oacute;a n&ecirc;n sự &aacute;m chướng thi&ecirc;n ni&ecirc;n vạn đại cũng chưa ti&ecirc;u. L&aacute; c&acirc;y, khi rụng xuống, xếp l&ecirc;n th&agrave;nh khối, l&acirc;u ng&agrave;y mục dần biến ra một tảng đất đen h&ocirc;i thối, c&oacute; khi rơi v&agrave;o nước, hoặc ngấm v&agrave;o mạch nước, đầu độc cả c&aacute;c suối, c&aacute;c ng&ograve;i.&rdquo;</em></p>\r\n\r\n<p>Xuất th&acirc;n trong một gia đ&igrave;nh quan lại, tốt nghiệp t&uacute; t&agrave;i to&agrave;n phần, lại c&oacute; niềm đam m&ecirc; với H&aacute;n học n&ecirc;n giọng văn của TchyA rất uyển chuyển, sử dụng linh hoạt nhiều t&iacute;nh từ tạo n&ecirc;n một h&igrave;nh th&aacute;i phong ph&uacute;, thoải m&aacute;i gợi h&igrave;nh, gợi cảm đầy thi th&uacute;. Vốn từ h&aacute;n cổ được sử dụng nhiều, lạ lẫm g&acirc;y được ch&uacute; &yacute; với độc giả. Vậy n&ecirc;n, &ldquo;Ai h&aacute;t giữa rừng khuya&rdquo; c&oacute; thể sẽ g&acirc;y ch&aacute;n đối với những ai ch&uacute; t&acirc;m nội dung v&agrave; gh&eacute;t sự rườm r&agrave;, nhưng chắc chắn sẽ l&agrave; một kho t&agrave;ng ng&ocirc;n ngữ qu&yacute; b&aacute;u đối với sinh vi&ecirc;n khoa văn hay th&agrave;nh phần mọt s&aacute;ch muốn bổ sung vốn từ v&ocirc; hạn.</p>\r\n\r\n<p>Ch&iacute;nh c&aacute;ch h&agrave;nh văn sinh động ấy đ&atilde; lột tả được vẻ đẹp của Oanh Cơ m&agrave; c&oacute; lẽ c&oacute; thể khiến tứ đại mỹ nh&acirc;n Trung Hoa cũng phải ghen tị v&igrave; bị lu mờ:&nbsp;<em>&ldquo;Oanh Cơ l&agrave; c&ocirc;ng tr&igrave;nh tuyệt mỹ, tuyệt xảo của H&oacute;a c&ocirc;ng, gồm cả thanh &acirc;m lẫn nhan sắc. N&agrave;ng đẹp, một vẻ đẹp o&aacute;i oăm, huyền b&iacute;, oanh liệt, lại dịu d&agrave;ng, tựa hồ đấng Thi&ecirc;ng li&ecirc;ng đem hết bao nhi&ecirc;u tinh t&uacute;y của non s&ocirc;ng c&acirc;y cỏ m&agrave; chung đ&uacute;c v&agrave;o nhan sắc ấy.&rdquo;</em></p>\r\n\r\n<p>Độc giả bắt gặp trong &ldquo;Ai kh&oacute;c giữa rừng khuya&rdquo; những ma qu&aacute;i, những quỷ thần như đ&atilde; gặp trong&nbsp;&ldquo;Li&ecirc;u Trai ch&iacute; dị&rdquo; hay&nbsp;&ldquo;Truyền kỳ mạn lục&rdquo;.&nbsp;Nhưng c&aacute;i kh&aacute;c biệt l&agrave; truyện truyền kỳ của TchyA vừa mang m&agrave;u sắc truyền thống phương Đ&ocirc;ng lại vừa c&oacute; hơi hướm kinh dị phương T&acirc;y.</p>\r\n\r\n<p>X&atilde; hội ma v&agrave; x&atilde; hội người trong tiểu thuyết của TchyA chỉ l&agrave; một, bởi vậy m&agrave; &yacute; nghĩa hiện thực của tiểu thuyết TchyA được ghi nhận l&agrave; một đ&oacute;ng g&oacute;p. Ma thần muốn hại người n&ecirc;n người muốn ti&ecirc;u diệt ma thần; c&oacute; l&uacute;c ma lại giao tiếp với người nhưng lại bất lực trước sức sống của người, n&ecirc;n phải chấp nhận h&ograve;a ho&atilde;n chung sống. Ng&ograve;i b&uacute;t TchyA viện v&agrave;o nhận thức khoa học để l&yacute; giải chuyện ma chuyện thần. Ấy l&agrave; chỗ kh&aacute;c biệt của &ocirc;ng với Bồ T&ugrave;ng Linh v&agrave; Nguyễn Dữ.</p>\r\n\r\n<p>C&oacute; thể n&oacute;i rằng, d&ugrave; kh&ocirc;ng s&aacute;nh được với kho t&agrave;ng khổng lồ về văn học truyền kỳ kinh dị của Trung Quốc, nhưng Việt Nam cũng một d&ograve;ng văn học truyền kỳ, m&agrave; TchyA l&agrave; người g&oacute;p c&ocirc;ng đ&aacute;ng kể trong việc gầy dựng v&agrave; ph&aacute;t triển thể loại n&agrave;y.</p>','2020-04-12 03:13:24',0,1,'2020-04-12 03:13:48'),(6,'Khám phá \'Xách ba lô lên và đi\' - Sách hot trong giới trẻ','kham-pha-xach-ba-lo-len-va-di-sach-hot-trong-gioi-tre',1,1,2,0,'Cô gái nổi tiếng với việc chu du khắp thế giới lúc 20 tuổi, bắt đầu bằng 700 USD đã cho ra đời cuốn sách Xách ba lô lên và đi. Đây là một trong số những tác phẩm ít ỏi được chào đón ngay từ khi chưa ra đời.','2020-04-17__h46.jpg','<p>Khi tr&agrave;o lưu du lịch bụi đang ng&agrave;y c&agrave;ng l&ecirc;n cao trong giới trẻ Việt th&igrave; những h&agrave;nh tr&igrave;nh của Huyền Chip - c&ocirc; g&aacute;i nổi tiếng với việc trải qua h&agrave;ng chục quốc gia đ&atilde; trở th&agrave;nh đề t&agrave;i n&oacute;ng. Chỉ trong thời gian ngắn, c&ocirc; g&aacute;i trẻ với những th&ocirc;ng điệp về sự dấn th&acirc;n để kh&aacute;m ph&aacute; đ&atilde; trở th&agrave;nh kh&aacute;ch mời cho nhiều chương tr&igrave;nh, hội thảo của giới trẻ.</p>\r\n\r\n<p>V&agrave; mới đ&acirc;y, cuốn s&aacute;ch&nbsp;<em>X&aacute;ch ba l&ocirc; l&ecirc;n v&agrave; đi</em>&nbsp;của c&ocirc; bạn đ&atilde; trở th&agrave;nh t&acirc;m điểm của d&acirc;n y&ecirc;u s&aacute;ch v&agrave; du lịch bụi. Ngay từ khi mới chỉ l&ecirc;n ph&aacute;c thảo b&igrave;a, cư d&acirc;n mạng đ&atilde; b&agrave;n t&aacute;n v&agrave; đặt trước ở c&aacute;c trang b&aacute;n s&aacute;ch online.</p>\r\n\r\n<p>Mới đ&acirc;y, cuốn s&aacute;ch c&oacute; độ d&agrave;y gần 500 trang, nhiều h&igrave;nh ảnh sống động về h&agrave;nh tr&igrave;nh của Huyền Chip đ&atilde; ra mắt độc giả. Gi&aacute; b&igrave;a 99.000 đồng kh&ocirc;ng l&agrave; qu&aacute; đắt so với v&ocirc; số những quyển s&aacute;ch ng&ocirc;n t&igrave;nh xuất hiện d&agrave;y đặc trong thời gian gần đ&acirc;y.</p>\r\n\r\n<p>Ngay từ&nbsp;<em>Lời n&oacute;i đầu</em>, Huyền Chip đ&atilde; rất thẳng thắn: &quot;Trước hết, t&ocirc;i cần nhấn mạnh lại rằng t&ocirc;i đi chuyến đi n&agrave;y đơn giản v&igrave; đ&oacute; l&agrave; mơ ước của t&ocirc;i. T&ocirc;i đi kh&ocirc;ng để chứng minh điều g&igrave; cả. T&ocirc;i cũng kh&ocirc;ng đi để thay đổi cuộc sống của ai cả, trừ cuộc sống của ch&iacute;nh t&ocirc;i&quot;.</p>\r\n\r\n<p>Trong phần một với chủ đề&nbsp;<em>Đi bừa đi</em>, c&ocirc; viết: &quot;Mọi người hay hỏi t&ocirc;i quyết định đi &quot;v&ograve;ng quanh thế giới&quot; như thế n&agrave;o. T&ocirc;i chẳng quyết định. Khi bắt đầu đi, t&ocirc;i mới chỉ l&agrave; một con b&eacute; 19 tuổi kh&ocirc;ng xu d&iacute;nh t&uacute;i, n&oacute;i đi &quot;v&ograve;ng quanh thế giới&quot; chỉ như một đứa trẻ con năm tuổi n&oacute;i với mẹ &quot;lớn l&ecirc;n con muốn l&agrave;m nh&agrave; du h&agrave;nh vũ trụ&quot;. Chuyến đi d&agrave;i ng&agrave;y của t&ocirc;i bắt đầu từ một chuyến đi 3 ng&agrave;y sang Brunei. Chuyến đi đ&atilde; l&agrave;m thay đổi cả cuộc đời t&ocirc;i từ khi đ&oacute;&quot;.</p>\r\n\r\n<p>Thế rồi, ở những trang s&aacute;ch tiếp theo, người đọc c&ugrave;ng trải qua những h&agrave;nh tr&igrave;nh của c&ocirc; g&aacute;i trẻ. Từ<em>&nbsp;Mưa ở lễ hội rừng mưa tới kh&aacute;ch sạn c&oacute; ma ở Sibu, cứu n&uacute;i Chiếc răng của Kuching, lần đầu ăn s&acirc;u v&agrave; &ocirc;ng l&atilde;o &quot;d&ecirc; cụ&quot;, đi du thuyền v&ograve;ng quanh thế giới, tại sao kh&ocirc;ng, đột nhập doanh trại hải qu&acirc;n Mumbai... đến l&agrave;m diễn vi&ecirc;n ở Bollywood, lẻn v&agrave;o Taj Mahal, kh&ocirc;ng tiền về lại Ấn Độ...</em></p>\r\n\r\n<p>Đan xen với những c&acirc;u chuyện trong h&agrave;nh tr&igrave;nh du ngoạn,&nbsp;<em>X&aacute;ch ba l&ocirc; l&ecirc;n v&agrave; đi</em>&nbsp;c&ograve;n c&oacute; những chia sẻ về kinh nghiệm khi đến một v&ugrave;ng đất n&agrave;o đ&oacute;. Ch&iacute;nh v&igrave; thế, bạn đọc kh&ocirc;ng chỉ cảm thấy hứng khởi hơn với niềm đam m&ecirc; kh&aacute;m ph&aacute; cuộc sống, m&agrave; c&ograve;n c&oacute; th&ecirc;m những kinh nghiệm bổ &iacute;ch trong việc đi du lịch bụi.&nbsp;</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"5\" cellspacing=\"0\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Tr&iacute;ch X&aacute;ch ba l&ocirc; l&ecirc;n v&agrave; đi: Ngủ lang ở Guwahati</strong>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Tr&ecirc;n đường về lại Nepal, t&ocirc;i quyết định dừng ch&acirc;n ở Duwahati. T&agrave;u đến Duwahati l&uacute;c nửa đ&ecirc;m, thấy b&ecirc;n ngo&agrave;i kh&ocirc;ng c&oacute; vẻ g&igrave; l&agrave; an to&agrave;n cả, t&ocirc;i ngồi trong ga ngủ. Sớm qu&aacute; kh&ocirc;ng muốn d&aacute;nh thức ai, t&ocirc;i t&iacute;nh đi dạo v&ograve;ng v&ograve;ng quanh th&agrave;nh phố đợi trời s&aacute;ng hẳn sẽ ra điện thoại c&ocirc;ng cộng gọi cho Devraj, một CouchSurfe m&agrave; t&ocirc;i đ&atilde; li&ecirc;n hệ từ trước.</p>\r\n\r\n			<p>Cũng giống như ăn c&aacute; phải ăn l&uacute;c c&ograve;n tươi, muốn t&igrave;m hiểu một th&agrave;nh phố đang bắt đầu lấy lại nhịp sống s&ocirc;i động h&agrave;ng ng&agrave;y nhưng chưa đủ tỉnh t&aacute;o để che đậy những b&iacute; mật ri&ecirc;ng tư nhất của m&igrave;nh. Một người phụ nữ trải b&aacute;o nằm ngủ ngay dưới ch&acirc;n tượn nữ thần Durga. Một d&atilde;y đ&agrave;n &ocirc;ng ngồi xổm b&ecirc;n đường hồn nhi&ecirc;n l&agrave;m vệ sinh buổi s&aacute;ng. Một em b&eacute; ngồi chống cằm b&ecirc;n th&ugrave;ng b&aacute;nh, ng&aacute;p kh&ocirc;ng buồn che miệng. Một cụ gi&agrave; vừa qu&eacute;t vỉa h&egrave;, vừa nh&oacute;p nh&eacute;p nhai trầu.&nbsp; Một anh thợ cắt t&oacute;c h&iacute; ho&aacute;y cạo r&acirc;u cho một người đ&agrave;n &ocirc;ng trung ni&ecirc;n ngay tr&ecirc;n vỉa h&egrave;, những vị kh&aacute;ch c&ograve;n lại ki&ecirc;n nhẫn đọc b&aacute;o đứng chờ. Một c&ocirc; g&aacute;i một tay cầm tr&agrave;ng hoa c&uacute;c, một tay khẽ nhấc ch&acirc;n bộ sari rực rỡ bước từng bậc l&ecirc;n ch&ugrave;a.</p>\r\n\r\n			<p>Chợ trung t&acirc;m đ&atilde; bắt đầu lấy lại sự nhộn nhịp. Chợ ở Guwahati rất lớn, tr&agrave;n ngập hoa quả, gia vị, xoong nồi, củi đun, trầm thơm, hoa c&uacute;ng, l&aacute; dừa kh&ocirc; để lợp nh&agrave;, cỏ lau kh&ocirc; để l&agrave;m chổi. Kh&aacute;c với chợ Việt Nam, đồ ăn Ấn Độ kh&ocirc;ng nhiều thịt c&aacute;, rất nhiều rau củ quả, nhiều nhất l&agrave; ớt. Người Guwahati cũng ăn trầu cau như m&igrave;nh.&nbsp;Cau v&agrave;ng &oacute;ng ả chất th&agrave;nh từng bao đầy oạp, l&aacute; trầu kh&ocirc;ng xanh ngắt xếp tr&ograve;n th&agrave;nh từng v&ograve;ng. Đất đai Guwahati m&agrave;u mỡ, quả n&agrave;o cũng căng tr&ograve;n, b&eacute;o ngậy, m&agrave;u sắc tươi gi&ograve;n. T&ocirc;i mua cho m&igrave;nh một nải chuối đi ra bờ s&ocirc;ng ngồi ăn.</p>\r\n\r\n			<p>S&ocirc;ng Guwahati c&oacute; b&atilde;i c&aacute;t trắng muốt, tỏa ra một vầng s&aacute;ng mờ ảo trong &aacute;nh nắng ban mai. B&atilde;i c&aacute;t n&agrave;y rộng phải đến năm mươi m&eacute;t, l&agrave; nơi diễn ra mọi sinh hoạt của ngư d&acirc;n nơi đ&acirc;y. Lần đầu ti&ecirc;n ở Ấn Độ t&ocirc;i thấy người đ&agrave;n &ocirc;ng giặt quần &aacute;o. Những người đ&agrave;n &ocirc;ng ng&acirc;m nửa người dưới nước, h&igrave; hụi vo vo, đập đập. H&agrave;ng chục d&acirc;y căng d&agrave;i k&iacute;n đặc quần &aacute;o: h&agrave;ng trăm chiếc quần phăng xanh, h&agrave;ng trăm chiếc khăn trắng - loại được d&ugrave;ng để l&agrave;m quấn quanh h&ocirc;ng dạng như khố. T&ocirc;i đo&aacute;n l&agrave; họ nhận giặt quần &aacute;o thu&ecirc;, chứ l&agrave;m g&igrave; c&oacute; ai nhiều quần &aacute;o đến thế. Khắp bờ s&ocirc;ng rải r&aacute;c những h&igrave;nh nộm l&agrave;m từ rơm. Trong dịp lễ hội, ch&uacute;ng được kho&aacute;c quần &aacute;o, được thờ c&uacute;ng như những vị thần. Giờ đ&acirc;y hết thời, ch&uacute;ng bị lột trần truồng vứt văng vứt v&atilde;i m&eacute; nước, sứt đầu, sứt tay, sứt ch&acirc;n. Những x&aacute;c thuyền sắt được tận dụng l&agrave;m hotel giờ mới bắt đầu mở cửa. Hotel ở Ấn Độ c&oacute; rất nhiều nghĩa v&agrave; trong văn cảnh n&agrave;y n&oacute; c&oacute; nghĩa l&agrave; qu&aacute;n ăn nhỏ.</p>\r\n\r\n			<p>&nbsp;Devraj đến đ&oacute;n t&ocirc;i về nh&agrave; anh.&nbsp;T&oacute;c anh d&agrave;i, r&acirc;u anh rậm rạp, tương phản với khu&ocirc;n mặt non choẹt. Anh sống với bố mẹ trong một ng&ocirc;i nh&agrave; x&acirc;y kiểu thực d&acirc;n cũ hết sức ngăn nắp v&agrave; sạch sẽ, c&oacute; ph&ograve;ng ri&ecirc;ng cho kh&aacute;ch.&nbsp;Đ&aacute;m bạn của anh l&uacute;c đ&oacute; đ&atilde; ở đ&oacute; cả, đang ngồi xem video chuyến đua xe &ocirc; t&ocirc; độ m&agrave; anh vừa thực hiện với một nh&oacute;m nhiếp ảnh gia kh&aacute;c tr&ecirc;n đường đến xem lễ hội Chim Mỏ Sừng. Anh cẩn thận đ&oacute;ng cửa, rồi quay sang n&oacute;i với đ&aacute;m bạn:</p>\r\n\r\n			<p>&quot;Được rồi đấy.&nbsp;Cuốn đi&quot;.</p>\r\n\r\n			<p>&quot;Cuối tuần n&agrave;o mọi người cũng gặp nhau thế n&agrave;y &agrave;?&quot;. T&ocirc;i hỏi.</p>\r\n\r\n			<p>&quot;&Agrave;,&nbsp;Devraj với anh ng&agrave;y n&agrave;o chẳng gặp&quot;. Raju, anh ch&agrave;ng to cao, r&acirc;u quai n&oacute;n đặc trưng của người khu vực miền Bắc Ấn Độ, nhưng cười th&igrave; duy&ecirc;n đến đau tim vừa cuốn thuốc vừa bảo:</p>\r\n\r\n			<p>&quot;Tuần n&agrave;y c&oacute; hai người từ Delhi đến n&ecirc;n tất cả mọi người tụ tập&quot;.</p>\r\n\r\n			<p>&quot;Mọi người c&oacute; t&iacute;nh đi đ&acirc;u cuối tuần n&agrave;y kh&ocirc;ng?&nbsp;Đi Bhutan đi&quot;.</p>\r\n\r\n			<p>Devaj ph&aacute; l&ecirc;n cười.</p>\r\n\r\n			<p>&quot;Chip muốn đi Bhutan m&agrave; kh&ocirc;ng c&oacute; tiền mua visa, n&ecirc;n đang t&igrave;m ai l&aacute;i xe qua bi&ecirc;n giới cho n&oacute; chui xuống ghế xe lẻn v&agrave;o&quot;.</p>\r\n\r\n			<p>Người Ấn Độ kh&ocirc;ng cần visa để v&agrave;o Bhutan, nhưng người từ c&aacute;c quốc gia kh&aacute;c muốn v&agrave;o Bhutan phải trả tiền visa khoảng 200$/ng&agrave;y.</p>\r\n\r\n			<p>&quot;Ha ha, d&aacute;m liều kh&ocirc;ng?&nbsp;Để anh hỏi thử bạn b&egrave; xem c&oacute; ai đi kh&ocirc;ng. Ng&agrave;y mai bọn anh t&iacute;nh đi ra đảo&quot;.</p>\r\n\r\n			<p>&quot;Ủa, ở Guwahati c&oacute; biển đ&acirc;u m&agrave; c&oacute; đảo?&quot;.</p>\r\n\r\n			<p>&quot;Thế mới đặc biệt.&nbsp;Đảo đẹp nhất trần gian, kh&ocirc;ng một b&oacute;ng người, hoang sơ đến từng centimet&quot;.</p>\r\n\r\n			<p>&quot;Nh&igrave;n n&agrave;y&quot;. Devraj cười b&iacute; hiểm l&ocirc;i ra một c&aacute;i loa đĩa USD chạy bằng pin. &quot;Mua d&agrave;nh ri&ecirc;ng cho dịp n&agrave;y đấy. Nghe thử đi, &acirc;m thanh ngon chết lu&ocirc;n. Đi chơi đảo m&agrave; c&oacute; nhạc nữa th&igrave; c&ograve;n g&igrave; bằng&quot;.</p>\r\n\r\n			<p>Kh&ocirc;ng ai chịu giải th&iacute;ch th&ecirc;m cho t&ocirc;i đ&acirc;y l&agrave; đảo g&igrave;. M&atilde;i đến buổi tối khi cả hội đi nghe nhạc, t&ocirc;i mới moi được th&ocirc;ng tin từ Devraj. H&ograve;n đảo đấy l&agrave; h&ograve;n đảo ri&ecirc;ng của Raju.</p>\r\n\r\n			<p>&quot;C&aacute;i g&igrave;.&nbsp;Raju c&oacute; một h&ograve;n đảo?&quot;.</p>\r\n\r\n			<p>&quot;Ừ, thừa kế từ gia đ&igrave;nh.&nbsp;Đảo tr&ecirc;n s&ocirc;ng th&ocirc;i m&agrave;&quot;.</p>\r\n\r\n			<p>&quot;Vẫn sướng. L&agrave;m sao để c&oacute; một h&ograve;n đảo b&acirc;y giờ nhỉ?&quot;.</p>\r\n\r\n			<p>&quot;Ha ha ha, hoặc l&agrave; em c&oacute; rất nhiều tiền, hoặc l&agrave; gia đ&igrave;nh em c&oacute; đất đai để lại, hoặc l&agrave; em cưới Raju&quot;.</p>\r\n\r\n			<p>S&ocirc;ng Brahmaputra bắt nguồn từ T&acirc;y Tạng, sang đến Assam đột ngột mở rộng, c&oacute; những chỗ rộng đến mười kilomet. H&ograve;n đảo của Raju nằm c&aacute;ch bờ s&ocirc;ng khoảng nửa tiếng đi t&agrave;u. T&agrave;u l&agrave; của ch&uacute; Raju lu&ocirc;n. Ch&uacute; Raju sống ngay tr&ecirc;n bờ trong một trang trại cũng v&ocirc; c&ugrave;ng đ&aacute;ng th&egrave;m muốn. Nh&agrave; ở ngay s&aacute;t b&igrave;a rừng, c&oacute; vườn đầy c&acirc;y tr&aacute;i, ao s&acirc;u thả c&aacute;, c&oacute; cả t&uacute;p lều thơ mộng b&ecirc;n ao để c&acirc;u c&aacute;. Sống ở l&agrave;ng qu&ecirc;, đất đai rộng r&atilde;i thật l&agrave; th&iacute;ch.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>','2020-04-17 07:34:14',0,1,'2020-04-17 07:36:43');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `atb_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type` tinyint(4) NOT NULL DEFAULT '0',
  `atb_category_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  KEY `attributes_atb_category_id_index` (`atb_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` VALUES (1,'NXB Giáo dục','nxb-giao-duc',1,1,'2020-04-12 02:16:52',NULL),(2,'NXB Tuổi trẻ','nxb-tuoi-tre',1,1,'2020-04-12 02:16:57','2020-04-16 16:54:20'),(5,'NXB Thiếu nhi','nxb-thieu-nhi',1,1,'2020-04-16 16:52:09','2020-04-18 18:17:16'),(6,'NXB Đại học quốc gia Hà Nội','nxb-dai-hoc-quoc-gia-ha-noi',1,8,'2020-04-16 16:57:19','2020-04-20 12:04:21'),(7,'NXB Kim Đồng','nxb-kim-dong',1,1,'2020-04-16 17:12:14',NULL),(9,'NXB Từ Điển Bách Khoa','nxb-tu-dien-bach-khoa',1,8,'2020-04-17 03:24:43','2020-04-20 11:05:25'),(10,'NXB Y Dược','nxb-y-duoc',1,1,'2020-04-17 10:04:58','2020-04-18 18:06:56'),(12,'Fujiko Fujio','fujiko-fujio',2,4,'2020-04-19 05:45:42','2020-04-20 12:04:05'),(13,'Aoyama Gōshō','aoyama-gosho',2,1,'2020-04-19 05:50:14',NULL);
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT '0',
  `c_hot` tinyint(4) NOT NULL DEFAULT '0',
  `c_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  KEY `categories_c_parent_id_index` (`c_parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Sách tiếng việt','sach-tieng-viet','2020-04-17__h13.jpg',NULL,NULL,0,0,1,'2020-04-12 02:16:06','2020-05-09 08:49:52'),(2,'Sách ngoại ngữ','sach-ngoai-ngu','2020-04-17__h14.jpg',NULL,NULL,0,0,1,'2020-04-12 02:16:09','2020-04-17 05:37:26'),(3,'Ebooks','ebooks','2020-04-17__h15.jpg',NULL,NULL,0,0,1,'2020-04-12 02:16:19','2020-04-17 05:39:47'),(4,'Truyện tranh','truyen-tranh','2020-04-16__ho-guom.jpg',NULL,NULL,0,0,1,'2020-04-16 16:50:02','2020-04-17 03:13:29'),(5,'Sách giáo khoa','sach-giao-khoa','2020-04-16__sgk.png',NULL,NULL,1,0,1,'2020-04-16 16:53:53',NULL),(7,'Sách dành cho thiếu nhi','sach-danh-cho-thieu-nhi','2020-04-17__h16.jpg',NULL,NULL,0,0,1,'2020-04-17 03:12:48','2020-04-17 07:15:34'),(8,'Sách khoa học','sach-khoa-hoc','2020-04-17__h17.jpg',NULL,NULL,0,1,1,'2020-04-17 03:23:35','2020-04-17 05:41:49'),(9,'Sách tham khảo','sach-tham-khao','2020-04-17__h19.jpg',NULL,NULL,0,0,1,'2020-04-17 05:27:05','2020-04-17 05:43:25'),(10,'Báo-Tạp chí','bao-tap-chi','2020-04-17__h12.jpg',NULL,NULL,0,0,1,'2020-04-17 05:31:53',NULL),(12,'Sách Y Dược','sach-y-duoc',NULL,NULL,NULL,0,0,1,'2020-04-18 11:49:08','2020-04-18 17:49:35');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cmt_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` text COLLATE utf8mb4_unicode_ci,
  `cmt_parent_id` int(11) NOT NULL DEFAULT '0',
  `cmt_product_id` int(11) NOT NULL DEFAULT '0',
  `cmt_admin_id` int(11) NOT NULL DEFAULT '0',
  `cmt_user_id` int(11) NOT NULL DEFAULT '0',
  `cmt_like` int(11) NOT NULL DEFAULT '0',
  `cmt_disk_like` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  KEY `comments_cmt_user_id_index` (`cmt_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (3,NULL,NULL,'sach hay',0,30,0,2,0,0,'2020-04-17 17:08:35',NULL),(5,NULL,NULL,'Chào bạn. Hay quá nhỉ',0,38,0,4,0,0,'2020-04-18 15:34:21',NULL),(8,NULL,NULL,'1212121211212',0,38,0,4,0,0,'2020-05-31 11:47:55',NULL),(9,NULL,NULL,'@Trung Phu NA: ok nh] cuc',8,38,0,4,0,0,'2020-05-31 11:48:02',NULL),(10,NULL,NULL,'@Trung Phu NA: 12121212121',8,38,0,4,0,0,'2020-05-31 11:48:08',NULL);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `c_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_phone` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'chao ban','0123456789','bthuan490@gmailk.com','hahaah','2020-04-27 05:29:16',NULL);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `e_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT '0',
  `e_position_2` tinyint(4) NOT NULL DEFAULT '0',
  `e_position_3` tinyint(4) NOT NULL DEFAULT '0',
  `e_position_4` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Giảm giá toàn bộ sản phẩm sách nhân ngày 30/4-1/5 (sale off 20-49%)','2020-04-18__h72.png','https://thanhnien.vn/van-hoa/nha-sach-online-bung-no-giam-gia-sach-1193285.html',0,1,0,0,'2020-04-18 04:27:38','2020-04-18 04:27:38'),(2,'Chào mừng năm học mới ưu đãi cho tất cả sinh viên giảm giá lên tới 40% tất cả các loại sách','2020-04-18__h54.jpg','https://omegaplus.vn/giam-gia-tu-50-70-tai-hoi-sach-nua-gia.html',0,0,1,0,'2020-04-18 03:35:19','2020-04-18 03:35:19'),(3,'Giảm giá mùa dịch, khuyến mại 30% cùng nhau đẩy lùi covid19','2020-04-18__hq.png','http://pnc.com.vn/pnc_info.php?id=421&mode=print',1,0,0,0,'2020-04-18 11:29:12','2020-04-18 11:29:12');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keywords`
--

DROP TABLE IF EXISTS `keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keywords` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `k_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `keywords_k_slug_unique` (`k_slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keywords`
--

LOCK TABLES `keywords` WRITE;
/*!40000 ALTER TABLE `keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mn_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT '0',
  `mn_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (2,'Kinh nghiệm mua sách','kinh-nghiem-mua-sach',NULL,NULL,NULL,0,1,'2020-04-12 03:03:58','2020-04-17 04:04:08'),(3,'Kinh nghiệm đọc sách','kinh-nghiem-doc-sach',NULL,NULL,NULL,0,1,'2020-04-17 04:04:30','2020-04-18 13:16:58');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2019_08_19_000000_create_failed_jobs_table',1),(3,'2020_02_02_041429_create_categories_table',1),(4,'2020_02_02_155318_create_keywords_table',1),(5,'2020_02_03_145303_create_products_table',1),(6,'2020_02_06_165057_create_attributes_table',1),(7,'2020_02_06_184708_create_products_attributes_table',1),(8,'2020_02_08_005029_add_multiple_column_attribute_in_table_products',1),(9,'2020_02_09_073958_create_transactions_table',1),(10,'2020_02_09_074025_create_orders_table',1),(11,'2020_02_09_133309_create_products_keywords_table',1),(12,'2020_02_09_155308_create_admins_table',1),(13,'2020_02_09_180519_create_menus_table',1),(14,'2020_02_09_180620_create_articles_table',1),(15,'2020_02_12_100000_create_password_resets_table',1),(16,'2020_02_13_154148_alter_column_pro_number_in_table_product',1),(17,'2020_02_13_171036_create_slides_table',1),(18,'2020_02_14_121248_alter_column_a_position_in_table_articles',1),(19,'2020_02_15_053225_create_user_favourite_table',1),(20,'2020_02_15_191555_create_ratings_table',1),(21,'2020_02_17_162605_create_events_table',1),(22,'2020_02_18_152103_create_product_images_table',1),(23,'2020_02_24_222836_create_social_accounts_table',1),(24,'2020_03_08_104810_create_statics_table',1),(25,'2020_03_08_213403_alter_column_pro_age_review_in_table_product',1),(26,'2020_03_12_205704_create_contacts_table',1),(27,'2020_03_17_183239_create_comments_table',1),(28,'2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users',1),(29,'2020_03_23_223714_alter_column_admin_in_table_admin',1),(30,'2020_03_24_201555_alter_column_c_parent_id_in_table_categories',1),(31,'2020_03_25_214331_create_list_table_system_pay_table',1),(32,'2020_03_27_181534_alter_column_type_pay_in_table_transaction',1),(33,'2020_04_14_164245_create_supplieres_table',2),(34,'2020_04_15_003305_alter_column_pro_supplier_id_in_table_products',2),(35,'2020_04_16_234410_after_column_tst_admin_id_in_table_transaction',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `od_transaction_id` int(11) NOT NULL DEFAULT '0',
  `od_product_id` int(11) NOT NULL DEFAULT '0',
  `od_sale` int(11) NOT NULL DEFAULT '0',
  `od_qty` tinyint(4) NOT NULL DEFAULT '0',
  `od_price` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (16,15,38,15,1,697000,'2020-05-13 05:30:50',NULL),(19,18,38,15,1,697000,'2020-06-01 10:14:43',NULL),(20,19,47,10,1,34200,'2020-06-08 13:49:16',NULL),(21,19,39,10,1,53100,'2020-06-08 13:49:16',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('phuongnguyen70680@gmail.com','$2y$10$4YLsBYTs1t.WW4q7u4oYKOQB4xAHGSVkIzdvTq.uQ1DM7tC6NJLM.','2020-04-25 02:57:21'),('phuongnguyen70680@gmail.com','$2y$10$Kht/eKi4SAE8TGSlg9ZzjuXL3PRVOhg5DKs5u.Cy.ejbtA/F0OXIi','2020-04-25 03:09:18'),('phuongnguyen70680@gmail.com','$2y$10$GRFriqGnlA6pgCH7Y59rTeX8VbSx0cOe93MaU/UNqSw2qRPSzhXmS','2020-05-02 03:07:21'),('phuongnguyen70680@gmail.com','$2y$10$4OkOzMtbGv/bPah2VxIxxuW3IeSWwHxFrQ1dbpQ.j4xXLfQtT0O9G','2020-05-02 03:07:50'),('phuongnguyen70680@gmail.com','$2y$10$UHxD4fVm884w4gx65gkHRuoYt5t0lbvfTpHw83UJdqFTf..mh769.','2020-05-02 03:11:10'),('phuongnguyen70680@gmail.com','$2y$10$7bcSsst/vWUYl1A5dkdgqek6GeaVuXKXVKVBzaJEVa3jayfkbCtVK','2020-05-03 01:59:48'),('bthuan490@gmail.com','$2y$10$FcoMADBhwsQxLTar/w9ZE.ReH7dVZKPmR8ua0J7RzoQlxqs6UOK8C','2020-06-19 11:31:49');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_histories`
--

DROP TABLE IF EXISTS `pay_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_histories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ph_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ph_user_id` int(10) unsigned NOT NULL,
  `ph_credit` int(10) unsigned NOT NULL DEFAULT '0',
  `ph_debit` int(10) unsigned NOT NULL DEFAULT '0',
  `ph_balance` int(10) unsigned NOT NULL DEFAULT '0',
  `ph_meta_detail` text COLLATE utf8mb4_unicode_ci,
  `ph_status` tinyint(4) NOT NULL DEFAULT '0',
  `ph_month` tinyint(3) unsigned DEFAULT NULL,
  `ph_year` smallint(5) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pay_histories_ph_code_unique` (`ph_code`),
  KEY `index_code_user_id` (`ph_code`,`ph_user_id`),
  KEY `pay_histories_ph_user_id_index` (`ph_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_histories`
--

LOCK TABLES `pay_histories` WRITE;
/*!40000 ALTER TABLE `pay_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_ins`
--

DROP TABLE IF EXISTS `pay_ins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_ins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pi_user_id` int(10) unsigned NOT NULL,
  `pi_admin_id` int(10) unsigned NOT NULL,
  `pi_provider` int(10) unsigned NOT NULL DEFAULT '0',
  `pi_money` int(10) unsigned NOT NULL DEFAULT '0',
  `pi_fee` int(10) unsigned NOT NULL DEFAULT '0',
  `pi_amount` int(10) unsigned NOT NULL DEFAULT '0',
  `pi_meta_detail` text COLLATE utf8mb4_unicode_ci,
  `pi_status` tinyint(4) NOT NULL DEFAULT '0',
  `pi_month` tinyint(3) unsigned DEFAULT NULL,
  `pi_year` smallint(5) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pay_ins_pi_user_id_index` (`pi_user_id`),
  KEY `pay_ins_pi_admin_id_index` (`pi_admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_ins`
--

LOCK TABLES `pay_ins` WRITE;
/*!40000 ALTER TABLE `pay_ins` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_ins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_outs`
--

DROP TABLE IF EXISTS `pay_outs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_outs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `po_user_id` int(10) unsigned NOT NULL,
  `po_transaction_id` int(10) unsigned NOT NULL,
  `po_money` int(10) unsigned NOT NULL DEFAULT '0',
  `po_meta_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `po_status` tinyint(4) NOT NULL DEFAULT '0',
  `po_month` tinyint(3) unsigned DEFAULT NULL,
  `po_year` smallint(5) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pay_outs_po_user_id_index` (`po_user_id`),
  KEY `pay_outs_po_transaction_id_index` (`po_transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_outs`
--

LOCK TABLES `pay_outs` WRITE;
/*!40000 ALTER TABLE `pay_outs` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_outs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pi_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,'hhh.jpg','2020-04-17__hhhjpg.jpg',30,'2020-04-16 17:18:50',NULL),(2,'ql.jpg','2020-04-17__qljpg.jpg',32,'2020-04-16 17:56:12',NULL),(3,'gf.jpg','2020-04-17__gfjpg.jpg',33,'2020-04-17 03:35:16',NULL),(4,'MggGJuH.jpg','2020-04-17__mgggjuhjpg.jpg',34,'2020-04-17 03:40:21',NULL),(5,'h1.jpg','2020-04-17__h1jpg.jpg',35,'2020-04-17 03:44:48',NULL),(6,'h2.jpg','2020-04-17__h2jpg.jpg',36,'2020-04-17 03:51:20',NULL),(7,'h4.jpg','2020-04-17__h4jpg.jpg',37,'2020-04-17 03:56:38',NULL),(8,'h22.jpg','2020-04-17__h22jpg.jpg',38,'2020-04-17 06:18:23',NULL),(9,'h28.jpg','2020-04-17__h28jpg.jpg',40,'2020-04-17 06:40:44',NULL),(10,'h29.png','2020-04-17__h29png.png',41,'2020-04-17 06:59:39',NULL),(11,'h32.jpg','2020-04-17__h32jpg.jpg',42,'2020-04-17 07:02:29',NULL),(12,'h35.jpg','2020-04-17__h35jpg.jpg',43,'2020-04-17 07:09:40',NULL),(13,'h47.jpg','2020-04-17__h47jpg.jpg',45,'2020-04-17 07:18:27',NULL),(14,'h48.jpg','2020-04-17__h48jpg.jpg',46,'2020-04-17 07:23:20',NULL),(15,'h51.jpg','2020-04-17__h51jpg.jpg',47,'2020-04-17 07:26:50',NULL);
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT '0',
  `pro_price_entry` int(11) NOT NULL DEFAULT '0' COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT '0',
  `pro_supplier_id` int(11) NOT NULL DEFAULT '0',
  `pro_admin_id` int(11) NOT NULL DEFAULT '0',
  `pro_sale` tinyint(4) NOT NULL DEFAULT '0',
  `pro_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT '0',
  `pro_hot` tinyint(4) NOT NULL DEFAULT '0',
  `pro_active` tinyint(4) NOT NULL DEFAULT '1',
  `pro_pay` int(11) NOT NULL DEFAULT '0',
  `pro_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `pro_content` text COLLATE utf8mb4_unicode_ci,
  `pro_review_total` int(11) NOT NULL DEFAULT '0',
  `pro_review_star` int(11) NOT NULL DEFAULT '0',
  `pro_age_review` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT '0',
  `pro_resistant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_energy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_country` tinyint(4) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  KEY `products_pro_hot_index` (`pro_hot`),
  KEY `products_pro_active_index` (`pro_active`),
  KEY `products_pro_supplier_id_index` (`pro_supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'HBR’s 10 Must Reads Leadership Collection','hbrs-10-must-reads-leadership-collection',120000,0,2,0,0,1,'2020-04-12__1.jpg',6,0,1,0,'HBR’s 10 Must Reads Leadership Collection','HBR’s 10 Must Reads Leadership Collection',0,0,0,'2020-04-12 02:25:28',0,NULL,NULL,0,'2020-04-12 02:33:57'),(2,'Oxford Picture Dictionary English/Vietnamese','oxford-picture-dictionary-englishvietnamese',230000,0,2,0,0,2,'2020-04-12__2.jpg',1,0,1,0,'Oxford Picture Dictionary English/Vietnamese','Oxford Picture Dictionary English/Vietnamese',0,0,0,'2020-04-12 02:28:03',25,NULL,NULL,0,'2020-04-18 17:18:52'),(3,'The Subtle Art Of Not Giving A F*Ck','the-subtle-art-of-not-giving-a-fck',249000,0,2,0,0,10,'2020-04-12__3.jpg',1,0,1,0,'The Subtle Art Of Not Giving A F*Ck','The Subtle Art Of Not Giving A F*Ck',0,0,0,'2020-04-12 02:29:33',0,NULL,NULL,0,'2020-04-12 02:34:19'),(4,'Harry Potter Box Set: The Complete','harry-potter-box-set-the-complete',991000,0,2,0,0,0,'2020-04-12__4.png',0,0,1,0,'Harry Potter Box Set: The Complete','Harry Potter Box Set: The Complete',0,0,0,'2020-04-12 02:30:19',0,NULL,NULL,0,'2020-04-12 02:34:01'),(5,'Đừng Lựa Chọn An Nhàn Khi Còn Trẻ','dung-lua-chon-an-nhan-khi-con-tre',56000,0,1,0,0,0,'2020-04-12__5.jpg',2,0,1,0,'Đừng Lựa Chọn An Nhàn Khi Còn Trẻ','Đừng Lựa Chọn An Nhàn Khi Còn Trẻ',0,0,0,'2020-04-12 02:31:05',0,NULL,NULL,0,'2020-04-12 02:33:44'),(6,'Cân Bằng Cảm Xúc, Cả Lúc Bão Giông','can-bang-cam-xuc-ca-luc-bao-giong',58000,0,1,0,0,5,'2020-04-12__6.jpg',2,0,1,0,'Cân Bằng Cảm Xúc, Cả Lúc Bão Giông','Cân Bằng Cảm Xúc, Cả Lúc Bão Giông',1,5,5,'2020-04-12 02:32:03',0,NULL,NULL,0,'2020-06-08 13:28:04'),(7,'Bạn Đắt Giá Bao Nhiêu?','ban-dat-gia-bao-nhieu',25000,0,1,0,0,0,'2020-04-12__7.jpg',1,0,1,0,'Bạn Đắt Giá Bao Nhiêu?','Bạn Đắt Giá Bao Nhiêu?',0,0,0,'2020-04-12 02:36:12',0,NULL,NULL,0,NULL),(8,'Nóng Giận Là Bản Năng , Tĩnh Lặng Là Bản Lĩnh','nong-gian-la-ban-nang-tinh-lang-la-ban-linh',250000,0,1,0,0,0,'2020-04-12__8.jpg',0,0,1,0,'Nóng Giận Là Bản Năng , Tĩnh Lặng Là Bản Lĩnh','Nóng Giận Là Bản Năng , Tĩnh Lặng Là Bản Lĩnh',0,0,0,'2020-04-12 02:37:31',0,NULL,NULL,0,NULL),(9,'Sống Thực Tế Giữa Đời Thực Dụng','song-thuc-te-giua-doi-thuc-dung',98000,0,1,0,0,5,'2020-04-12__9.jpg',1,0,1,0,'Sống Thực Tế Giữa Đời Thực Dụng','Sống Thực Tế Giữa Đời Thực Dụng',0,0,0,'2020-04-12 02:38:26',0,NULL,NULL,0,NULL),(10,'Đắc Nhân Tâm (Khổ Lớn)','dac-nhan-tam-kho-lon',50000,0,1,0,0,1,'2020-04-12__11.jpg',0,0,1,0,'Đắc Nhân Tâm (Khổ Lớn)','Đắc Nhân Tâm (Khổ Lớn)',0,0,0,'2020-04-12 02:50:12',0,NULL,NULL,0,NULL),(11,'Cuộc Sống \"Đếch\" Giống Cuộc Đời','cuoc-song-dech-giong-cuoc-doi',52000,0,1,0,0,2,'2020-04-12__12.jpg',0,0,1,0,'Cuộc Sống \"Đếch\" Giống Cuộc Đời','Cuộc Sống \"Đếch\" Giống Cuộc Đời',0,0,0,'2020-04-12 02:50:45',0,NULL,NULL,0,NULL),(12,'Thiên Tài Bên Trái, Kẻ Điên Bên Phải','thien-tai-ben-trai-ke-dien-ben-phai',850000,0,1,0,0,4,'2020-04-12__13.jpg',0,0,1,0,'Thiên Tài Bên Trái, Kẻ Điên Bên Phải','Thiên Tài Bên Trái, Kẻ Điên Bên Phải',0,0,0,'2020-04-12 02:51:30',0,NULL,NULL,0,NULL),(13,'Tuổi Trẻ Đáng Giá Bao Nhiêu (Tái Bản)','tuoi-tre-dang-gia-bao-nhieu-tai-ban',56000,0,1,0,0,5,'2020-04-12__14.jpg',0,0,1,0,'Tuổi Trẻ Đáng Giá Bao Nhiêu (Tái Bản)','Tuổi Trẻ Đáng Giá Bao Nhiêu (Tái Bản)',0,0,0,'2020-04-12 02:52:09',0,NULL,NULL,0,NULL),(14,'Payback Time - Ngày Đòi Nợ','payback-time-ngay-doi-no',100000,0,1,0,0,0,'2020-04-12__15.jpg',0,0,1,0,'Payback Time - Ngày Đòi Nợ','Payback Time - Ngày Đòi Nợ',0,0,0,'2020-04-12 02:52:39',0,NULL,NULL,0,NULL),(15,'Khí Chất Bao Nhiêu, Hạnh Phúc Bấy Nhiêu','khi-chat-bao-nhieu-hanh-phuc-bay-nhieu',60000,0,1,1,0,0,'2020-04-12__16.jpg',1,0,1,0,'Khí Chất Bao Nhiêu, Hạnh Phúc Bấy Nhiêu','Khí Chất Bao Nhiêu, Hạnh Phúc Bấy Nhiêu',0,0,0,'2020-04-12 02:53:07',0,NULL,NULL,0,'2020-04-17 09:44:27'),(16,'21 Bài Học Cho Thế Kỷ 21','21-bai-hoc-cho-the-ky-21',23500,0,1,0,0,0,'2020-04-12__17.jpg',0,0,1,0,'21 Bài Học Cho Thế Kỷ 21','21 Bài Học Cho Thế Kỷ 21',0,0,0,'2020-04-12 02:53:37',0,NULL,NULL,0,NULL),(17,'3 Phút Sơ Cứu','3-phut-so-cuu',56000,0,12,2,0,5,'2020-04-12__18.jpg',1,0,1,0,'3 Phút Sơ Cứu','3 Phút Sơ Cứu',0,0,0,'2020-04-12 02:54:07',10,NULL,NULL,0,'2020-04-18 18:09:10'),(18,'Tôi Quyết Định Sống Cho Chính Tôi','toi-quyet-dinh-song-cho-chinh-toi',580000,0,1,0,0,6,'2020-04-12__19.jpg',0,0,1,0,'Tôi Quyết Định Sống Cho Chính Tôi','Tôi Quyết Định Sống Cho Chính Tôi',0,0,0,'2020-04-12 02:54:41',0,NULL,NULL,0,NULL),(19,'Bước Chậm Lại Giữa Thế Gian Vội Vã','buoc-cham-lai-giua-the-gian-voi-va',65000,0,1,0,0,0,'2020-04-12__20.jpg',1,0,1,0,'Bước Chậm Lại Giữa Thế Gian Vội Vã','Bước Chậm Lại Giữa Thế Gian Vội Vã',0,0,0,'2020-04-12 02:55:40',0,NULL,NULL,0,NULL),(20,'Combo Cà Phê Cùng Tony và Trên Đường Băng','combo-ca-phe-cung-tony-va-tren-duong-bang',568000,0,1,0,0,0,'2020-04-12__21.jpg',0,0,1,0,'Combo Cà Phê Cùng Tony và Trên Đường Băng','Combo Cà Phê Cùng Tony và Trên Đường Băng',0,0,0,'2020-04-12 02:56:07',0,NULL,NULL,0,NULL),(21,'Không Phải Chưa Đủ Năng Lực , Mà Là Chưa Đủ Kiên Định','khong-phai-chua-du-nang-luc-ma-la-chua-du-kien-dinh',586400,0,1,0,0,0,'2020-04-12__22.jpg',6,1,1,0,'Không Phải Chưa Đủ Năng Lực , Mà Là Chưa Đủ','Không Phải Chưa Đủ Năng Lực , Mà Là Chưa Đủ Kiên Định',0,0,0,'2020-04-12 02:57:04',0,NULL,NULL,0,'2020-04-12 03:01:54'),(22,'Hành Trình Về Phương Đông','hanh-trinh-ve-phuong-dong',25000,0,1,0,0,0,'2020-04-12__23.jpg',9,1,1,0,'Hành Trình Về Phương Đông','Hành Trình Về Phương Đông',0,0,0,'2020-04-12 02:57:40',0,NULL,NULL,0,'2020-04-12 03:01:56'),(23,'Chủ Nghĩa Khắc Kỷ - Phong Cách Sống Bản Lĩnh','chu-nghia-khac-ky-phong-cach-song-ban-linh',450000,0,1,0,0,0,'2020-04-12__24.jpg',9,1,1,0,'Chủ Nghĩa Khắc Kỷ - Phong Cách Sống Bản Lĩnh','Chủ Nghĩa Khắc Kỷ - Phong Cách Sống Bản Lĩnh',0,0,0,'2020-04-12 02:58:10',0,NULL,NULL,0,'2020-04-12 03:01:41'),(24,'Thiết Kế Cuộc Đời Thịnh Vượng','thiet-ke-cuoc-doi-thinh-vuong',250000,0,3,0,0,0,'2020-04-12__25.jpg',3,0,1,0,'Thiết Kế Cuộc Đời Thịnh Vượng','Thiết Kế Cuộc Đời Thịnh Vượng',0,0,0,'2020-04-12 02:58:40',0,NULL,NULL,0,NULL),(25,'Tự Học Tiếng Anh Giao Tiếp Chỉ Trong 3 Tháng','tu-hoc-tieng-anh-giao-tiep-chi-trong-3-thang',450000,0,2,0,0,0,'2020-04-12__26.jpg',5,1,1,0,'Tự Học Tiếng Anh Giao Tiếp Chỉ Trong 3 Tháng','Tự Học Tiếng Anh Giao Tiếp Chỉ Trong 3 Tháng',0,0,0,'2020-04-12 02:59:10',0,NULL,NULL,0,'2020-04-12 03:01:39'),(26,'Đừng Ngồi Chờ Chết Trong Gió Bão','dung-ngoi-cho-chet-trong-gio-bao',25000,0,1,0,0,0,'2020-04-12__27.jpg',2,0,1,0,'Đừng Ngồi Chờ Chết Trong Gió Bão','Đừng Ngồi Chờ Chết Trong Gió Bão',0,0,0,'2020-04-12 02:59:48',0,NULL,NULL,0,NULL),(27,'COMBO SÁCH: KHƠI DẬY CẢM HỨNG HỌC TẬP','combo-sach-khoi-day-cam-hung-hoc-tap',236500,0,2,0,0,0,'2020-04-12__28.jpg',0,0,1,0,'COMBO SÁCH: KHƠI DẬY CẢM HỨNG HỌC TẬP','COMBO SÁCH: KHƠI DẬY CẢM HỨNG HỌC TẬP',0,0,0,'2020-04-12 03:00:21',0,NULL,NULL,0,NULL),(28,'999 Lá Thư Gửi Cho Chính Mình','999-la-thu-gui-cho-chinh-minh',250000,0,1,0,0,8,'2020-04-12__29.jpg',9,0,1,4,'999 Lá Thư Gửi Cho Chính Mình','999 Lá Thư Gửi Cho Chính Mình',0,0,5,'2020-04-12 03:00:58',10,NULL,NULL,0,'2020-05-31 07:41:22'),(29,'Yêu Những Điều Không Hoàn Hảo','yeu-nhung-dieu-khong-hoan-hao',25600,0,1,0,0,0,'2020-04-12__30.jpg',6,0,1,0,'Yêu Những Điều Không Hoàn Hảo','Yêu Những Điều Không Hoàn Hảo',0,0,0,'2020-04-12 03:01:32',10,NULL,NULL,0,'2020-04-19 06:00:54'),(30,'Doremon','doremon',30000,0,4,2,0,12,'2020-04-17__kk.jpeg',11,0,1,1,'Sách giúp các bạn trẻ giải trí học hỏi kinh nghiệm','Doraemon (ドラえもん?) (hay Đôrêmon, tên gọi cũ trước khi được đổi theo Công ước Bern về bản quyền), là bộ truyện tranh Nhật Bản của tác giả Fujiko Fujio được sáng tác từ năm 1969 với mục đích ban đầu dành cho tuổi thiếu nhi',1,5,5,'2020-04-16 17:18:50',50,NULL,NULL,0,'2020-04-19 05:46:21'),(31,'Conan','conan',28000,0,4,0,0,15,'2020-04-17__conan.jpg',9,0,1,0,'truyện tranh conan giúp các bạn nhỏ học hỏi thư giãn','Sản phẩm hữu ích',0,0,0,'2020-04-16 17:34:54',0,NULL,NULL,0,'2020-04-19 05:50:50'),(32,'Sách ngôn tình','sach-ngon-tinh',150000,0,1,0,0,6,'2020-04-17__ll.jpg',2,0,1,0,'Sách lãng mạn thu hút người đọc','sách hay thú vị và lãng mạn',0,0,0,'2020-04-16 17:56:12',0,NULL,NULL,0,'2020-04-16 17:58:38'),(33,'Thông Điệp Của Nước','thong-diep-cua-nuoc',128000,0,8,0,0,6,'2020-04-17__gf.jpg',5,0,1,0,'Sách hay về khoa học của Masaru Emoto sẽ thay đổi một cách sâu sắc thế giới quan của bạn','Ý nghĩa của nghiên cứu này chính là hình thành nên lối nhận thức mới về cách chúng ta có thể tác động tích cực đến trái đất và chính sức khỏe cá nhân mỗi chúng ta. Cuốn sách là quá trình tiến hành nghiên cứu, đo lường dao động sóng trong nước, tìm hiểu về những tinh thể và tác giả đã khám phá ra rằng nước tự thể hiện nó theo muôn vàn cách khác nhau.',0,0,5,'2020-04-17 03:35:16',0,NULL,NULL,0,'2020-04-19 16:05:24'),(34,'Các Thế Giới Song Song – Michio Kaku','cac-the-gioi-song-song-michio-kaku',130000,0,8,0,0,20,'2020-04-17__c-c-th-gi-i-song-song-t-i-b-n-2018-1.jpg',6,0,1,0,'Với quyển sách này, Michio Kaku sẽ dẫn dắt chúng ta đến với chuyến du hành qua các vũ trụ để chiêm ngưỡng vẻ đẹp kỳ vĩ của vũ trụ kể từ vụ nổ lớn, vượt qua những hố đen, lỗ sâu, bước vào các thế giới lượng tử từ muôn màu kỳ lạ nằm ngay trước mũi chúng ta, vốn dĩ tồn tại song song trên một màng bên ngoài không – thời gian bốn chiều.','Chúng ta sẽ được ngắm nhìn thực tại vật chất quen thuộc hòa quyện với thế giới của những điều kỳ diệu như năng lượng và vật chất tối, sự nảy chồi của các vũ trụ, những chiều không gian bí ẩn và sự biến ảo của các dây rung siêu nhỏ',0,0,0,'2020-04-17 03:40:21',0,NULL,NULL,0,'2020-04-17 03:45:33'),(35,'Vũ Trụ Trong Một Nguyên Tử – Dalai Lama','vu-tru-trong-mot-nguyen-tu-dalai-lama',70000,0,8,0,0,12,'2020-04-17__h1.jpg',5,0,1,0,'Đức Dalai Lama được xem là người đứng đầu lĩnh vực tâm linh trên toàn thế giới. Người đã nhận được giải Nobel Hòa bình. Khảo sát nghiên cứu ngoạn mục này là món quà quý giá dành cho các bậc thầy tâm linh và khoa học cùng mọi người.','Trong quyển sách này, Dalai Lama đã khám phá mối quan hệ giữa tâm linh và khoa học hiện đại, và đã đề nghị một phương hướng mà chúng ta có thể tán thành nhằm mở rộng hiểu biết của toàn thể nhân loại. Qua việc đặt hai phương hướng tiếp cận này, một là truyền thống triết học Phật giáo và một là khoa học hiện đại, lại gần với nhau; Người đã tìm hiểu khám phá về căn nguyên của vũ trụ, bản chất hữu thức nhân loại, quá trình tiến hóa của mọi loài.',0,0,0,'2020-04-17 03:44:48',0,NULL,NULL,0,'2020-04-17 03:45:08'),(36,'Lịch Sử Tự Nhiên – Nhiều tác giả','lich-su-tu-nhien-nhieu-tac-gia',690000,0,8,0,0,20,'2020-04-17__h3.jpg',3,0,1,0,'Cuốn sách hay về khoa học này là cánh cửa nhìn vào sự đa dạng đáng kinh ngạc và lịch sử tự nhiên của thế giới quanh ta.','Lịch sử tự nhiên mở ra cánh cửa khám phá thế giới tự nhiên chứa đựng vô vàn những điều kì thú trên hành tinh của chúng ta. Đây là công trình biên soạn của tập thể các chuyên gia về thiên nhiên hoang dã, với sự cố vấn của Viện Smithsonian danh tiếng.',0,0,0,'2020-04-17 03:51:20',0,NULL,NULL,0,NULL),(37,'Bí Mật Của Một Trí Nhớ Siêu Phàm – Eran Katz','bi-mat-cua-mot-tri-nho-sieu-pham-eran-katz',120000,0,8,0,0,26,'2020-04-17__h5.jpg',10,0,1,0,'Trong quyển sách hay về khoa học trí nhớ này, Eran Katz khẳng định rằng trí nhớ của bạn tốt hơn bạn tưởng rất nhiều. Và bạn đã rất sai lầm khi nghĩ rằng trí nhớ của mình không hoàn hảo và mất niềm tin vào nó. Bạn có biết chúng ta chỉ sử dụng 10% khả năng nhớ của bộ não trong suốt cuộc đời, chính vì thế bộ não còn bộ nhớ rất khổng lồ mà chúng ta đã lãng phí.','Để tận dụng 90% lãng phí đó, Eran Katz đã đưa ra những phương pháp ghi nhớ và một hệ thống các bài luyện tập tăng cường trí nhớ đặc biệt giúp tăng cường trí nhớ của bạn. Và một trong những phương pháp hữu hiệu nhất ông thường xuyên áp dụng chính là phương pháp liên tưởng.',0,0,0,'2020-04-17 03:56:38',0,NULL,NULL,0,NULL),(38,'Dragon Ball - 7 viên ngọc rồng','dragon-ball-7-vien-ngoc-rong',820000,0,4,2,0,15,'2020-04-17__h24.jpg',30,0,1,11,'Một cậu bé có đuôi khỉ được tìm thấy bởi một ông lão sống một mình trong rừng, ông đặt tên là Son Goku và xem đứa bé như là cháu của mình. Một ngày nọ Goku tình cờ gặp một cô gái tên là Bulma trên đường đi bắt cá về, Goku và Bulma đã cùng nhau truy tìm bảy viên ngọc rồng. Các viên ngọc rồng này chứa đựng một bí mật có thể triệu hồi một con rồng và ban điều ước cho ai sở hữu chúng. Trên cuộc hành trình dài đi tìm những viên ngọc rồng, họ gặp những người bạn (Yamcha, Krillin,Yajirobe, Thiên, Giáo tử, Oolong,...) và những đấu sĩ huyền thoại cũng như nhiều ác quỷ','Một cậu bé có đuôi khỉ được tìm thấy bởi một ông lão sống một mình trong rừng, ông đặt tên là Son Goku và xem đứa bé như là cháu của mình. Một ngày nọ Goku tình cờ gặp một cô gái tên là Bulma trên đường đi bắt cá về, Goku và Bulma đã cùng nhau truy tìm bảy viên ngọc rồng. Các viên ngọc rồng này chứa đựng một bí mật có thể triệu hồi một con rồng và ban điều ước cho ai sở hữu chúng. Trên cuộc hành trình dài đi tìm những viên ngọc rồng, họ gặp những người bạn (Yamcha, Krillin,Yajirobe, Thiên, Giáo tử, Oolong,...) và những đấu sĩ huyền thoại cũng như nhiều ác quỷ',1,5,5,'2020-04-17 06:18:23',15,NULL,NULL,0,'2020-05-31 07:41:20'),(39,'Chú sâu háu ăn – Eric Carle','chu-sau-hau-an-eric-carle',59000,0,7,2,0,10,'2020-04-17__h26.jpg',2,0,1,1,'Chú sâu háu ăn là cuốn sách hay cho thiếu nhi nổi tiếng thế giới kể về câu chuyện trong bảy ngày của một chú sâu xanh. Lúc nào chú ta cũng cảm thấy đói bụng và chú ta bắt đầu bò đi tìm kiếm thức ăn. Mỗi ngày trôi qua số lượng đồ ăn chú sâu ấy ăn vào bụng càng nhiều, cho tới khi chú không còn là một chú sâu bé nhỏ nữa, mà đã trở thành chú sâu to béo có thể tự xây nhà trong cái Kén bao quanh mình.','Và rồi một sáng đẹp trời, chú đã hóa thành một chú bướm xinh đẹp chui ra khỏi cái Kén của mình. Chú sâu háu ăn là cuốn sách tuyệt vời giúp trẻ học đếm và nhớ các ngày trong tuần.',0,0,0,'2020-04-17 06:37:05',5,NULL,NULL,0,'2020-04-19 06:06:35'),(40,'Charlotte và Wilbur – E.B. White','charlotte-va-wilbur-eb-white',56000,0,7,1,0,25,'2020-04-17__h27.jpg',0,0,1,0,'Charlotte và Wilbur, câu chuyện kể về việc một con nhện đã cứu sống con lợn bạn mình như thế nào, là tác phẩm kinh điển của văn học thiếu nhi Mỹ; và tình bạn của chúng đã được hàng triệu độc giả trên thế giới cùng chia sẻ. Wilbur, chú lợn xuân cứ đinh ninh mình sẽ vui hưởng thái bình mãi trong trang trại nhà Zuckerman, thế nên, chú tưởng như phát cuồng lên được khi biết rằng người ta sẽ giết thịt chú khi mùa đông tới… Mọi hy vọng của chú, giờ đây, chỉ còn biết đổ dồn lại vào Charlotte, chị nhện xám vẫn tĩnh tại giăng mắc ở trên chuồng lợn…','Charlotte và Wilbur là cuốn sách gõ vào cánh cửa tưởng tượng của tuổi thơ, với tất cả những ai đang là trẻ nhỏ và từng là trẻ nhỏ. Nó mang đến thế giới kỳ diệu mà chỉ những cô bé biết khóc vì chú lợn kẹ sắp bị giết như Fern mới thấu hiểu. Lắng đọng với nhiều tình tiết cảm động, như chuyện Fern đã chăm sóc lợn Wilbur hồi nhỏ, cuộc chia tay cuối cùng giữa Charlotte và Wilbur, và tình bạn nối tiếp với những đứa con, cháu, chắt của Charlotte sau này… Tác phẩm là thông điệp của lòng yêu thương, sự thủy chung son sắt. Điều đó mang lại sự tươi mới cho Charlotte và Wilbur và được hàng triệu độc giả trên thế giới chia sẻ.',0,0,0,'2020-04-17 06:40:44',1,NULL,NULL,0,NULL),(41,'Hoàng tử bé – Antoine de Saint-Exupéry','hoang-tu-be-antoine-de-saint-exupery',49000,0,7,2,0,18,'2020-04-17__h30.jpg',0,0,1,0,'Truyện Hoàng tử bé của nhà văn – phi công người Pháp Antoine Saint Exupéry là một tiểu thuyết nhỏ, giản dị mà vô cùng sâu sắc, chứa đựng nhiều bài học rất hay về cuộc sống, cho cả trẻ em và người lớn.','Câu chuyện kể về một hoàng tử nhỏ cô đơn từ tiểu tinh cầu xa xôi viếng thăm rồi lại lìa xa Trái đất. Hoàng tử bé được xem là tác phẩm thơ mộng nhất của mọi thời đại. Cho đến nay, tác phẩm ra đời vào năm 1943 của nhà văn Saint-Exupéry này đã được dịch sang hơn 160 ngôn ngữ và phát hành hơn 50 triệu bản trên khắp thế giới. Sự giản dị trong sáng tỏa khắp tác phẩm đã khiến nó trở thành một bài thơ bất hủ mà mãi mãi người ta muốn đem làm quà tặng của tình yêu. Cho đến nay, không biết bao nhiêu người đã đọc đi đọc lại tác phẩm này để rồi lần nào cũng lặng đi trong nước mắt.',0,0,0,'2020-04-17 06:59:39',10,NULL,NULL,0,'2020-04-18 17:47:55'),(42,'Alice ở xứ sở trong gương – Lewis Carroll','alice-o-xu-so-trong-guong-lewis-carroll',90000,0,7,2,0,32,'2020-04-17__h31.jpg',0,0,1,0,'Alice ở Xứ Sở Trong Gương là cuốn sách hay dành cho thiếu nhi nổi tiếng của nhà văn người Anh Lewis Carroll.','Alice ở Xứ Sở Trong Gương là cuốn sách hay dành cho thiếu nhi nổi tiếng của nhà văn người Anh Lewis Carroll. Bảy năm sau khi “Cuộc phiêu lưu của Alice ở Xứ Sở Thần Tiên” ra mắt (năm 1865) và được đông đảo bạn đọc cả trẻ em lẫn người lớn say mê, năm 1872, Alice ở Xứ Sở Trong Gương được xuất bản, và ngay lập tức những nhân vật như cặp anh em Tweedledum, Hoàng hậu Đỏ, Hoàng hậu Trắng… trở nên nổi tiếng và được yêu mến không kém Thỏ Trắng, Sâu Bướm, Đức Vua và Hoàng Hậu Quân Cơ…',0,0,0,'2020-04-17 07:02:29',20,NULL,NULL,0,'2020-04-18 17:27:41'),(43,'Satoshi (Pokémon)-Tajiri Satoshi','satoshi-pokemon-tajiri-satoshi',44000,0,4,2,0,8,'2020-04-17__h34.jpg',18,0,1,6,'Truyện hay kì thú làm trỗi dậy mong muốn khám phá của bản thân','Truyện hay kì thú làm trỗi dậy mong muốn khám phá của bản thân',0,0,0,'2020-04-17 07:09:40',50,NULL,NULL,0,'2020-04-18 17:27:07'),(44,'Tự học hình không gian','tu-hoc-hinh-khong-gian',143000,0,9,2,0,20,'2020-04-17__h44.png',5,0,1,1,'“Tự học hình không gian” nhằm giúp chúng ta tự rèn luyện, nâng cao tư duy sáng tạo và tốc độ xử lý bài toán hình học không gian.','“Tự học hình không gian” nhằm giúp chúng ta tự rèn luyện, nâng cao tư duy sáng tạo và tốc độ xử lý bài toán hình học không gian.',0,0,0,'2020-04-17 07:13:40',10,NULL,NULL,0,'2020-04-18 17:20:30'),(45,'Tự học Mũ - Logarit và Hình tọa độ OXYZ','tu-hoc-mu-logarit-va-hinh-toa-do-oxyz',150000,0,9,2,0,28,'2020-04-17__h46.png',5,0,1,0,'Viết về chương Mũ-Logarit và chương Hình tọa độ không gian Oxyz với khoảng 3000 bài toán trắc nghiệm điển hình, bao quát tất cả các dạng toán,','Viết về chương Mũ-Logarit và chương Hình tọa độ không gian Oxyz với khoảng 3000 bài toán trắc nghiệm điển hình, bao quát tất cả các dạng toán,',0,0,0,'2020-04-17 07:18:27',10,NULL,NULL,0,'2020-04-18 17:20:13'),(46,'Tạp Chí Du lịch','tap-chi-du-lich',20000,0,10,2,0,0,'2020-04-17__h48.jpg',8,0,1,1,'Giúp hiểu biết về các vùng đất mới , con người mới','Giúp hiểu biết về các vùng đất mới , con người mới',0,0,0,'2020-04-17 07:23:20',25,NULL,NULL,0,'2020-04-18 17:19:52'),(47,'Tạp chí sắc đẹp','tap-chi-sac-dep',38000,0,10,2,0,10,'2020-04-26__sac-dep.jpg',25,0,1,4,'Tìm hiểu về kiến thức làm đẹp, về thời trang','Tìm hiểu về kiến thức làm đẹp, về thời trang...',0,0,5,'2020-04-17 07:26:50',25,NULL,NULL,0,'2020-06-01 09:51:41');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_attributes`
--

DROP TABLE IF EXISTS `products_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pa_product_id` int(11) NOT NULL DEFAULT '0',
  `pa_attribute_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_attributes`
--

LOCK TABLES `products_attributes` WRITE;
/*!40000 ALTER TABLE `products_attributes` DISABLE KEYS */;
INSERT INTO `products_attributes` VALUES (13,5,2),(14,5,4),(15,1,2),(16,1,4),(17,4,1),(18,4,4),(21,3,1),(22,3,4),(23,6,1),(24,6,4),(25,8,1),(26,8,4),(27,9,1),(28,9,4),(29,10,1),(30,10,4),(31,11,2),(32,12,1),(33,12,4),(34,13,1),(35,13,4),(36,14,1),(37,14,4),(40,16,2),(41,16,3),(44,18,2),(45,18,4),(46,19,2),(47,19,3),(48,20,1),(49,20,4),(50,21,1),(51,21,4),(52,22,1),(53,22,4),(54,23,1),(55,23,4),(56,24,1),(57,24,4),(58,25,2),(59,25,4),(60,26,1),(61,26,4),(62,27,1),(63,27,4),(72,32,2),(74,33,9),(77,35,9),(78,34,9),(79,36,9),(80,37,9),(86,40,5),(94,15,2),(101,2,2),(102,46,2),(103,45,6),(104,44,6),(105,43,2),(107,42,7),(112,28,2),(114,41,5),(115,38,5),(117,17,10),(118,17,6),(120,30,7),(121,30,12),(122,31,7),(123,31,13),(125,29,1),(126,39,5),(130,47,2);
/*!40000 ALTER TABLE `products_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_keywords`
--

DROP TABLE IF EXISTS `products_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_keywords` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pk_product_id` int(11) NOT NULL DEFAULT '0',
  `pk_keyword_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_keywords`
--

LOCK TABLES `products_keywords` WRITE;
/*!40000 ALTER TABLE `products_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `r_user_id` int(11) NOT NULL DEFAULT '0',
  `r_product_id` int(11) NOT NULL DEFAULT '0',
  `r_number` tinyint(4) NOT NULL DEFAULT '0',
  `r_status` tinyint(4) NOT NULL DEFAULT '0',
  `r_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,2,30,5,0,'sách hay và bổ ich','2020-04-17 17:08:05','2020-04-17 17:08:05'),(3,4,38,5,0,'Quá tốt. Hay quá','2020-04-18 15:34:14','2020-04-18 15:34:14'),(7,14,6,5,0,'ok','2020-06-08 13:28:04','2020-06-08 13:28:04');
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slides` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sd_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT '1',
  `sd_active` tinyint(4) NOT NULL DEFAULT '1',
  `sd_sort` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slides`
--

LOCK TABLES `slides` WRITE;
/*!40000 ALTER TABLE `slides` DISABLE KEYS */;
INSERT INTO `slides` VALUES (1,'Banner1','http://google.com.vn','2020-04-12__banner1.jpg',1,1,0,'2020-04-12 02:36:30','2020-04-27 14:04:35'),(2,'Banner2','https://vouchercode.vn/ma-giam-gia-sach-voucher-sach-tot-nhat-hien-nay/','2020-04-18__h50.jpg',1,1,0,'2020-04-18 04:17:38','2020-04-27 14:04:21'),(3,'Banner3','https://sachvui.com/','2020-04-12__banner3.jpg',1,1,0,'2020-04-17 07:56:15','2020-04-27 14:04:21');
/*!40000 ALTER TABLE `slides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_accounts`
--

DROP TABLE IF EXISTS `social_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_accounts_provider_user_id_provider_unique` (`provider_user_id`,`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_accounts`
--

LOCK TABLES `social_accounts` WRITE;
/*!40000 ALTER TABLE `social_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statics`
--

DROP TABLE IF EXISTS `statics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `s_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT '0',
  `s_md5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statics`
--

LOCK TABLES `statics` WRITE;
/*!40000 ALTER TABLE `statics` DISABLE KEYS */;
INSERT INTO `statics` VALUES (1,'Mua 1 doi 1',NULL,2,NULL,'<p>k dung yeu cau thi tra lai va boi thuong hoan tien 100%</p>','2020-04-20 12:03:25','2020-04-20 12:03:25');
/*!40000 ALTER TABLE `statics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplieres`
--

DROP TABLE IF EXISTS `supplieres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplieres` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sl_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplieres`
--

LOCK TABLES `supplieres` WRITE;
/*!40000 ALTER TABLE `supplieres` DISABLE KEYS */;
INSERT INTO `supplieres` VALUES (2,'Việt Nam','0364624396','bthuan490@gmail.com','Thái Bình','2020-04-17 09:53:15',NULL);
/*!40000 ALTER TABLE `supplieres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tst_user_id` int(11) NOT NULL DEFAULT '0',
  `tst_admin_id` int(11) NOT NULL DEFAULT '0',
  `tst_total_money` int(11) NOT NULL DEFAULT '0',
  `tst_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT '1',
  `tst_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_tst_user_id_index` (`tst_user_id`),
  KEY `transactions_tst_admin_id_index` (`tst_admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (13,7,1,0,'Nguyen van a','bthuan490@gmail.com','012345678','Hà Nội',NULL,3,1,'2020-05-09 07:29:29','2020-05-10 08:10:49'),(14,7,1,0,'Nguyen van a','bthuan490@gmail.com','012345678','Hà Nội',NULL,3,1,'2020-05-10 08:14:32','2020-05-10 08:15:16'),(15,7,0,697000,'Nguyen van a','bthuan490@gmail.com','012345678','Hà nội',NULL,-1,1,'2020-05-13 05:30:50','2020-05-13 05:31:01'),(16,7,0,0,'Nguyen van a','bthuan490@gmail.com','012345678','Hà nội',NULL,-1,1,'2020-05-19 04:57:26','2020-05-19 04:58:27'),(18,13,0,697000,'Nguyen van a','bthuan490@gmail.com','12345678','Hà Nội',NULL,1,1,'2020-06-01 10:14:43',NULL),(19,14,0,87300,'taitai','ngvana@gmail.com','123456789','123 Huynh Thuc Khang, Q1','Mua hàng',1,1,'2020-06-08 13:49:16',NULL);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_favourite`
--

DROP TABLE IF EXISTS `user_favourite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_favourite` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uf_product_id` int(11) NOT NULL DEFAULT '0',
  `uf_user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_favourite`
--

LOCK TABLES `user_favourite` WRITE;
/*!40000 ALTER TABLE `user_favourite` DISABLE KEYS */;
INSERT INTO `user_favourite` VALUES (6,1,11),(8,1,12),(9,6,14),(5,21,8),(2,22,2),(1,23,1),(7,28,10);
/*!40000 ALTER TABLE `user_favourite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` int(11) NOT NULL DEFAULT '0',
  `log_login` text COLLATE utf8mb4_unicode_ci,
  `count_comment` tinyint(4) NOT NULL DEFAULT '0',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`),
  KEY `users_balance_index` (`balance`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'Trung Phu NA','phupt.humg.94@gmail.com',NULL,'$2y$10$Bszoym9QHYYvqZidwvVZBOjvnlI1N0CIII9XQ96557paJk.lVAO0G','0986420994',0,'[{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_12_6\",\"browser\":\"Chrome\",\"browser_ver\":\"80.0.3987.163\",\"time\":\"2020-04-18T15:33:50.570695Z\"},{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_12_6\",\"browser\":\"Chrome\",\"browser_ver\":\"81.0.4044.129\",\"time\":\"2020-05-02T02:52:37.332363Z\"},{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_12_6\",\"browser\":\"Chrome\",\"browser_ver\":\"81.0.4044.129\",\"time\":\"2020-05-02T03:02:56.227295Z\"},{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_15_5\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.61\",\"time\":\"2020-05-31T11:47:47.690521Z\"}]',4,NULL,NULL,NULL,'2020-04-18 10:35:30',NULL),(12,'Sinh','sinh1@gmail.com',NULL,'$2y$10$jTSUQBPmP.MBJSpI6PC/b.HwmvroHSrSphlTniF0zEubijbqO/El.','0935998901',0,NULL,0,NULL,NULL,NULL,'2020-05-27 06:33:22',NULL),(13,'Nguyen van a','bthuan490@gmail.com',NULL,'$2y$10$L6HrvVMeXq7cT4lRO2nG8.U.ASLVa727YsUTJn7v8fb4X3SgMbRba','12345678',0,'[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"80.0.3987.172\",\"time\":\"2020-06-01T10:14:31.471728Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"80.0.3987.172\",\"time\":\"2020-06-06T05:49:31.447871Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"80.0.3987.172\",\"time\":\"2020-06-19T11:28:33.568460Z\"}]',0,NULL,NULL,NULL,'2020-05-31 07:12:09',NULL),(14,'taitai','ngvana@gmail.com',NULL,'$2y$10$Q2wulvg91UvmLMoiVdGH6uBrh8nonAJYx1KqhQ6R9YsVC8QHrCcVS','123456789',0,NULL,0,NULL,NULL,NULL,'2020-06-08 13:08:04',NULL),(15,'bulong122','bulong123@gmail.com',NULL,'$2y$10$N3eqYU3M5g3gYN3SiCBr2O4pdPtfuyhcd/V7RAbaFEp2lWBCU53j2','07676088',0,'[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"87.0.4280.88\",\"time\":\"2020-12-19T08:27:08.897316Z\"}]',0,NULL,NULL,NULL,'2020-12-19 08:24:55',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-19 18:35:55
