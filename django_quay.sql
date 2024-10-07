-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 07, 2024 lúc 02:52 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `django_quay`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add item', 7, 'add_item'),
(26, 'Can change item', 7, 'change_item'),
(27, 'Can delete item', 7, 'delete_item'),
(28, 'Can view item', 7, 'view_item'),
(29, 'Can add item', 8, 'add_item'),
(30, 'Can change item', 8, 'change_item'),
(31, 'Can delete item', 8, 'delete_item'),
(32, 'Can view item', 8, 'view_item'),
(33, 'Can add category', 9, 'add_category'),
(34, 'Can change category', 9, 'change_category'),
(35, 'Can delete category', 9, 'delete_category'),
(36, 'Can view category', 9, 'view_category'),
(37, 'Can add article', 10, 'add_article'),
(38, 'Can change article', 10, 'change_article'),
(39, 'Can delete article', 10, 'delete_article'),
(40, 'Can view article', 10, 'view_article'),
(41, 'Can add feed', 11, 'add_feed'),
(42, 'Can change feed', 11, 'change_feed'),
(43, 'Can delete feed', 11, 'delete_feed'),
(44, 'Can view feed', 11, 'view_feed'),
(45, 'Can add contact', 12, 'add_contact'),
(46, 'Can change contact', 12, 'change_contact'),
(47, 'Can delete contact', 12, 'delete_contact'),
(48, 'Can view contact', 12, 'view_contact'),
(49, 'Can add category', 13, 'add_category'),
(50, 'Can change category', 13, 'change_category'),
(51, 'Can delete category', 13, 'delete_category'),
(52, 'Can view category', 13, 'view_category'),
(53, 'Can add product', 14, 'add_product'),
(54, 'Can change product', 14, 'change_product'),
(55, 'Can delete product', 14, 'delete_product'),
(56, 'Can view product', 14, 'view_product'),
(57, 'Can add planting method', 15, 'add_plantingmethod'),
(58, 'Can change planting method', 15, 'change_plantingmethod'),
(59, 'Can delete planting method', 15, 'delete_plantingmethod'),
(60, 'Can view planting method', 15, 'view_plantingmethod'),
(61, 'Can add contact', 16, 'add_contact'),
(62, 'Can change contact', 16, 'change_contact'),
(63, 'Can delete contact', 16, 'delete_contact'),
(64, 'Can view contact', 16, 'view_contact'),
(65, 'Can add author', 17, 'add_author'),
(66, 'Can change author', 17, 'change_author'),
(67, 'Can delete author', 17, 'delete_author'),
(68, 'Can view author', 17, 'view_author'),
(69, 'Can add tag', 18, 'add_tag'),
(70, 'Can change tag', 18, 'change_tag'),
(71, 'Can delete tag', 18, 'delete_tag'),
(72, 'Can view tag', 18, 'view_tag');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$y9BBnH4jQsHQcQo59WU4Ld$rKz5J0yO0BKvKeLLNQfyiJRxV+JQW1SCsky/1Hm+0YE=', '2024-09-28 13:25:55.007065', 1, 'baobui1509', '', '', 'buithienbaoo2@gmail.com', 1, 1, '2024-08-07 05:22:30.176310');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-08-08 08:58:33.410226', '1', 'Category object (1)', 1, '[{\"added\": {}}]', 9, 1),
(2, '2024-08-08 08:58:48.343590', '2', 'Category object (2)', 1, '[{\"added\": {}}]', 9, 1),
(3, '2024-08-08 09:26:10.149126', '3', 'Khoa học', 1, '[{\"added\": {}}]', 9, 1),
(4, '2024-08-08 09:26:27.002346', '4', 'Category object (4)', 1, '[{\"added\": {}}]', 9, 1),
(5, '2024-08-08 12:14:32.739097', '1', 'Việt Nam muôn năm', 1, '[{\"added\": {}}]', 10, 1),
(6, '2024-08-08 12:31:57.034921', '1', 'Việt Nam muôn năm', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(7, '2024-08-08 12:35:50.661682', '1', 'Việt Nam muôn năm', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(8, '2024-08-08 13:33:46.698753', '1', 'Việt Nam muôn năm', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(9, '2024-08-08 13:39:54.706671', '1', 'Việt Nam muôn năm', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(10, '2024-08-08 13:41:13.638664', '1', 'Việt Nam muôn năm', 3, '', 10, 1),
(11, '2024-08-09 10:40:30.356786', '1', 'Feed object (1)', 1, '[{\"added\": {}}]', 11, 1),
(12, '2024-08-09 10:41:01.893032', '2', 'Feed object (2)', 1, '[{\"added\": {}}]', 11, 1),
(13, '2024-08-09 10:42:22.438034', '3', 'Báo tin tức', 1, '[{\"added\": {}}]', 11, 1),
(14, '2024-08-09 10:58:59.504955', '2', 'Bùi Thiên Bảo', 1, '[{\"added\": {}}]', 10, 1),
(15, '2024-08-15 07:03:50.268597', '3', 'Cảnh sát Mỹ truy tìm người đột nhập văn phòng chiến dịch Trump', 1, '[{\"added\": {}}]', 10, 1),
(16, '2024-08-15 07:05:57.909365', '5', 'Thể thao', 1, '[{\"added\": {}}]', 9, 1),
(17, '2024-08-15 07:06:21.417294', '2', 'Văn Linh', 3, '', 9, 1),
(18, '2024-08-15 07:06:21.419516', '1', 'Bùi Thiên Bảo', 3, '', 9, 1),
(19, '2024-08-15 07:07:43.351279', '4', 'Ukraine nêu điều kiện kết thúc chiến dịch tấn công tỉnh Kursk', 1, '[{\"added\": {}}]', 10, 1),
(20, '2024-08-15 07:08:57.831791', '5', 'Tiểu hành tinh kim loại 10 tỷ tỷ USD đang han gỉ', 1, '[{\"added\": {}}]', 10, 1),
(21, '2024-08-15 07:09:33.715633', '6', 'Tiểu hành tinh quay nhanh kỷ lục đâm xuống Trái Đất', 1, '[{\"added\": {}}]', 10, 1),
(22, '2024-08-15 07:10:17.504973', '7', 'Khoa họcTin tứcThứ bảy, 17/2/2024, 19:00 (GMT+7) Tàu NASA mang về nhiều mẫu vật tiểu hành tinh nhất', 1, '[{\"added\": {}}]', 10, 1),
(23, '2024-08-15 07:11:25.733711', '8', 'Hamas không dự vòng đàm phán then chốt về ngừng bắn ở Gaza', 1, '[{\"added\": {}}]', 10, 1),
(24, '2024-08-15 07:11:57.620417', '9', 'Thỏa thuận ngừng bắn Gaza có thể ngăn Iran tấn công Israel', 1, '[{\"added\": {}}]', 10, 1),
(25, '2024-08-15 07:12:34.759498', '10', 'Iran bác lời kêu gọi kiềm chế của phương Tây', 1, '[{\"added\": {}}]', 10, 1),
(26, '2024-08-15 07:13:02.972292', '11', 'Quân đội Israel phê chuẩn kế hoạch tác chiến đa mặt trận', 1, '[{\"added\": {}}]', 10, 1),
(27, '2024-08-15 07:13:30.804358', '12', 'Lãnh đạo Iran có thể đang tranh cãi về biện pháp trả đũa Israel', 1, '[{\"added\": {}}]', 10, 1),
(28, '2024-08-15 07:14:27.430898', '13', 'Ferdinand: \'Mourinho không còn đẳng cấp dẫn dắt CLB châu Âu\'', 1, '[{\"added\": {}}]', 10, 1),
(29, '2024-08-15 07:14:52.858600', '14', 'Mourinho trách VAR khi đội nhà bị loại khỏi Champions League', 1, '[{\"added\": {}}]', 10, 1),
(30, '2024-08-15 07:15:21.205413', '15', 'Fenerbahce chỉ về nhì giải VĐQG Thổ Nhĩ Kì mùa trước, nên phải đá từ vòng loại hai Champions League', 1, '[{\"added\": {}}]', 10, 1),
(31, '2024-08-15 07:15:48.349220', '16', 'HLV Jose Mourinho nhắc lại việc từng trao cơ hội ra mắt đội một Real Madrid cho Alvaro Morata và Nac', 1, '[{\"added\": {}}]', 10, 1),
(32, '2024-08-15 07:16:18.222181', '17', 'Bellingham đá tung thùng nước, cầu thủ Anh chìm trong nước mắt', 1, '[{\"added\": {}}]', 10, 1),
(33, '2024-08-15 07:29:32.135748', '4', 'Thế giới', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 9, 1),
(34, '2024-08-15 07:29:39.424720', '3', 'Khoa học', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 9, 1),
(35, '2024-08-15 07:49:48.710518', '8', 'Hamas không dự vòng đàm phán then chốt về ngừng bắn ở Gaza', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 10, 1),
(36, '2024-08-15 08:02:47.357836', '5', 'Tiểu hành tinh kim loại 10 tỷ tỷ USD đang han gỉ', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 10, 1),
(37, '2024-08-15 08:02:58.032520', '4', 'Ukraine nêu điều kiện kết thúc chiến dịch tấn công tỉnh Kursk', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 10, 1),
(38, '2024-08-15 08:03:30.970469', '4', 'Ukraine nêu điều kiện kết thúc chiến dịch tấn công tỉnh Kursk', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 10, 1),
(39, '2024-08-15 16:18:13.724443', '3', 'Cảnh sát Mỹ truy tìm người đột nhập văn phòng chiến dịch Trump', 2, '[{\"changed\": {\"fields\": [\"Publish date\"]}}]', 10, 1),
(40, '2024-08-15 16:18:27.855913', '3', 'Cảnh sát Mỹ truy tìm người đột nhập văn phòng chiến dịch Trump', 2, '[{\"changed\": {\"fields\": [\"Publish date\"]}}]', 10, 1),
(41, '2024-08-15 16:26:00.846166', '3', 'Cảnh sát Mỹ truy tìm người đột nhập văn phòng chiến dịch Trump', 2, '[]', 10, 1),
(42, '2024-08-15 16:26:35.751595', '17', 'Bellingham đá tung thùng nước, cầu thủ Anh chìm trong nước mắt', 2, '[{\"changed\": {\"fields\": [\"Publish date\"]}}]', 10, 1),
(43, '2024-08-16 07:44:49.978448', '9', 'Thỏa thuận ngừng bắn Gaza có thể ngăn Iran tấn công Israel', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 10, 1),
(44, '2024-08-16 07:44:55.447406', '15', 'Fenerbahce chỉ về nhì giải VĐQG Thổ Nhĩ Kì mùa trước, nên phải đá từ vòng loại hai Champions League', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 10, 1),
(45, '2024-08-16 07:45:03.783399', '12', 'Lãnh đạo Iran có thể đang tranh cãi về biện pháp trả đũa Israel', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 10, 1),
(46, '2024-08-16 07:45:09.602297', '6', 'Tiểu hành tinh quay nhanh kỷ lục đâm xuống Trái Đất', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 10, 1),
(47, '2024-08-16 07:46:46.586092', '17', 'Bellingham đá tung thùng nước, cầu thủ Anh chìm trong nước mắt', 2, '[{\"changed\": {\"fields\": [\"Special\"]}}]', 10, 1),
(48, '2024-08-16 09:07:22.388949', '5', 'Thể thao', 2, '[{\"changed\": {\"fields\": [\"Is homepage\"]}}]', 9, 1),
(49, '2024-08-17 15:23:29.327812', '2', 'Thanh niên', 2, '[{\"changed\": {\"fields\": [\"Link\"]}}]', 11, 1),
(50, '2024-08-17 15:38:28.553395', '2', 'Thanh niên', 2, '[{\"changed\": {\"fields\": [\"Link\"]}}]', 11, 1),
(51, '2024-08-17 17:52:58.720021', '6', 'Tiểu hành tinh quay nhanh kỷ lục đâm xuống Trái Đất', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 10, 1),
(52, '2024-08-17 17:53:15.253369', '7', 'Khoa họcTin tứcThứ bảy, 17/2/2024, 19:00 (GMT+7) Tàu NASA mang về nhiều mẫu vật tiểu hành tinh nhất', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 10, 1),
(53, '2024-08-17 17:53:34.398529', '7', 'Tàu NASA mang về nhiều mẫu vật tiểu hành tinh nhất', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Slug\"]}}]', 10, 1),
(54, '2024-08-17 17:53:52.251126', '5', 'Tiểu hành tinh kim loại 10 tỷ tỷ USD đang han gỉ', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 10, 1),
(55, '2024-08-17 17:53:56.377181', '4', 'Ukraine nêu điều kiện kết thúc chiến dịch tấn công tỉnh Kursk', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 10, 1),
(56, '2024-08-17 17:53:59.538369', '3', 'Cảnh sát Mỹ truy tìm người đột nhập văn phòng chiến dịch Trump', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 10, 1),
(57, '2024-08-17 17:54:31.386586', '4', 'Ukraine nêu điều kiện kết thúc chiến dịch tấn công tỉnh Kursk', 2, '[]', 10, 1),
(58, '2024-08-19 15:15:49.851517', '17', 'Bellingham đá tung thùng nước, cầu thủ Anh chìm trong nước mắt', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(59, '2024-08-19 15:16:14.396925', '16', 'HLV Jose Mourinho nhắc lại việc từng trao cơ hội ra mắt đội một Real Madrid cho Alvaro Morata và Nac', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(60, '2024-08-19 15:16:45.155430', '15', 'Fenerbahce chỉ về nhì giải VĐQG Thổ Nhĩ Kì mùa trước, nên phải đá từ vòng loại hai Champions League', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(61, '2024-08-19 15:17:03.313837', '14', 'Mourinho trách VAR khi đội nhà bị loại khỏi Champions League', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(62, '2024-08-19 15:17:31.034116', '13', 'Ferdinand: \'Mourinho không còn đẳng cấp dẫn dắt CLB châu Âu\'', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(63, '2024-08-19 15:17:57.581767', '12', 'Lãnh đạo Iran có thể đang tranh cãi về biện pháp trả đũa Israel', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(64, '2024-08-19 15:18:20.343940', '11', 'Quân đội Israel phê chuẩn kế hoạch tác chiến đa mặt trận', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(65, '2024-08-19 15:18:55.339290', '10', 'Iran bác lời kêu gọi kiềm chế của phương Tây', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(66, '2024-08-19 15:19:20.569198', '9', 'Thỏa thuận ngừng bắn Gaza có thể ngăn Iran tấn công Israel', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(67, '2024-08-19 15:20:54.563810', '7', 'Tàu NASA mang về nhiều mẫu vật tiểu hành tinh nhất', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(68, '2024-08-19 15:21:04.128701', '6', 'Tiểu hành tinh quay nhanh kỷ lục đâm xuống Trái Đất', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(69, '2024-08-19 15:21:14.157918', '5', 'Tiểu hành tinh kim loại 10 tỷ tỷ USD đang han gỉ', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(70, '2024-08-19 15:21:22.632516', '3', 'Cảnh sát Mỹ truy tìm người đột nhập văn phòng chiến dịch Trump', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(71, '2024-08-19 15:22:33.759262', '8', 'Hamas không dự vòng đàm phán then chốt về ngừng bắn ở Gaza', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(72, '2024-08-19 15:22:53.826078', '4', 'Ukraine nêu điều kiện kết thúc chiến dịch tấn công tỉnh Kursk', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(73, '2024-08-19 15:24:42.727624', '3', 'Cảnh sát Mỹ truy tìm người đột nhập văn phòng chiến dịch Trump', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(74, '2024-08-19 15:25:24.415755', '15', 'Fenerbahce chỉ về nhì giải VĐQG Thổ Nhĩ Kì mùa trước, nên phải đá từ vòng loại hai Champions League', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(75, '2024-08-22 12:02:42.960718', '6', 'Lap Trinh', 1, '[{\"added\": {}}]', 9, 1),
(76, '2024-08-26 15:29:47.291579', '3', 'Bảo', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Admin message\"]}}]', 12, 1),
(77, '2024-08-26 15:38:03.901900', '3', 'Bảo', 2, '[{\"changed\": {\"fields\": [\"Admin message\"]}}]', 12, 1),
(78, '2024-10-03 13:06:54.782160', '1', 'Hoa Lan', 1, '[{\"added\": {}}]', 13, 1),
(79, '2024-10-03 13:07:04.012677', '2', 'Hoa Sen', 1, '[{\"added\": {}}]', 13, 1),
(80, '2024-10-03 13:07:16.721983', '3', 'Hoa Bảo', 1, '[{\"added\": {}}]', 13, 1),
(81, '2024-10-03 13:07:26.315391', '4', 'Hoa Hoẹ', 1, '[{\"added\": {}}]', 13, 1),
(82, '2024-10-03 13:07:35.773219', '5', 'Hoa Kaka', 1, '[{\"added\": {}}]', 13, 1),
(83, '2024-10-03 13:08:00.490781', '6', 'Hoa Vàng trên cỏ xanh', 1, '[{\"added\": {}}]', 13, 1),
(84, '2024-10-03 13:36:51.823014', '6', 'Cây văn phòng', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Slug\"]}}]', 13, 1),
(85, '2024-10-03 13:37:00.240600', '5', 'Cây leo', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Slug\"]}}]', 13, 1),
(86, '2024-10-03 13:37:08.597381', '4', 'Cây ăn quả', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Slug\"]}}]', 13, 1),
(87, '2024-10-03 13:37:21.394288', '3', 'Cây Kaider', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Slug\"]}}]', 13, 1),
(88, '2024-10-03 13:37:32.624729', '2', 'Cây cối', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Slug\"]}}]', 13, 1),
(89, '2024-10-03 13:37:44.356829', '1', 'Cây ICM', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Slug\"]}}]', 13, 1),
(90, '2024-10-03 13:46:41.464327', '3', 'Cây Bảo Bùi', 1, '[{\"added\": {}}]', 14, 1),
(91, '2024-10-04 03:09:39.329570', '1', 'Đất nền', 1, '[{\"added\": {}}]', 15, 1),
(92, '2024-10-04 03:09:49.463359', '2', 'Thuỷ sinh', 1, '[{\"added\": {}}]', 15, 1),
(93, '2024-10-04 03:10:27.109898', '3', 'Cây Bảo Bùi', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Planting methods\"]}}]', 14, 1),
(94, '2024-10-04 03:15:28.232795', '4', 'Hoa Sen', 1, '[{\"added\": {}}]', 14, 1),
(95, '2024-10-04 03:17:39.602318', '5', 'Tôn Ngộ Không', 1, '[{\"added\": {}}]', 14, 1),
(96, '2024-10-06 02:44:49.363746', '1', 'Bùi Thiên Bảo', 1, '[{\"added\": {}}]', 17, 1),
(97, '2024-10-06 03:13:05.492588', '17', 'Bellingham đá tung thùng nước, cầu thủ Anh chìm trong nước mắt', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Author\"]}}]', 10, 1),
(98, '2024-10-06 03:13:21.454896', '16', 'HLV Jose Mourinho nhắc lại việc từng trao cơ hội ra mắt đội một Real Madrid cho Alvaro Morata và Nac', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Author\"]}}]', 10, 1),
(99, '2024-10-06 03:13:39.237456', '15', 'Fenerbahce chỉ về nhì giải VĐQG Thổ Nhĩ Kì mùa trước, nên phải đá từ vòng loại hai Champions League', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Author\"]}}]', 10, 1),
(100, '2024-10-06 03:13:52.797866', '14', 'Mourinho trách VAR khi đội nhà bị loại khỏi Champions League', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Author\"]}}]', 10, 1),
(101, '2024-10-06 03:14:03.136740', '13', 'Ferdinand: \'Mourinho không còn đẳng cấp dẫn dắt CLB châu Âu\'', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Author\"]}}]', 10, 1),
(102, '2024-10-06 03:14:19.752517', '13', 'Ferdinand: \'Mourinho không còn đẳng cấp dẫn dắt CLB châu Âu\'', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(103, '2024-10-06 03:14:33.470686', '12', 'Lãnh đạo Iran có thể đang tranh cãi về biện pháp trả đũa Israel', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Author\"]}}]', 10, 1),
(104, '2024-10-06 03:14:45.060695', '11', 'Quân đội Israel phê chuẩn kế hoạch tác chiến đa mặt trận', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Author\"]}}]', 10, 1),
(105, '2024-10-06 03:14:55.798413', '10', 'Iran bác lời kêu gọi kiềm chế của phương Tây', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Author\"]}}]', 10, 1),
(106, '2024-10-06 03:15:31.429855', '9', 'Thỏa thuận ngừng bắn Gaza có thể ngăn Iran tấn công Israel', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Author\"]}}]', 10, 1),
(107, '2024-10-06 03:15:52.961590', '8', 'Hamas không dự vòng đàm phán then chốt về ngừng bắn ở Gaza', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Author\"]}}]', 10, 1),
(108, '2024-10-06 03:16:13.238137', '7', 'Tàu NASA mang về nhiều mẫu vật tiểu hành tinh nhất', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Author\"]}}]', 10, 1),
(109, '2024-10-06 03:16:26.207383', '6', 'Tiểu hành tinh quay nhanh kỷ lục đâm xuống Trái Đất', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Author\"]}}]', 10, 1),
(110, '2024-10-06 03:16:37.012515', '5', 'Tiểu hành tinh kim loại 10 tỷ tỷ USD đang han gỉ', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Author\"]}}]', 10, 1),
(111, '2024-10-06 03:16:51.541427', '4', 'Ukraine nêu điều kiện kết thúc chiến dịch tấn công tỉnh Kursk', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Image\", \"Author\"]}}]', 10, 1),
(112, '2024-10-06 03:17:01.692048', '3', 'Cảnh sát Mỹ truy tìm người đột nhập văn phòng chiến dịch Trump', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Author\"]}}]', 10, 1),
(113, '2024-10-06 12:27:07.268711', '6', 'Lap Trinh', 3, '', 9, 1),
(114, '2024-10-06 14:50:50.871927', '1', 'Châu Âu', 1, '[{\"added\": {}}]', 18, 1),
(115, '2024-10-06 14:51:05.825723', '2', 'Châu Á', 1, '[{\"added\": {}}]', 18, 1),
(116, '2024-10-06 15:20:18.189527', '17', 'Bellingham đá tung thùng nước, cầu thủ Anh chìm trong nước mắt', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Tag\"]}}]', 10, 1),
(117, '2024-10-06 16:30:55.293967', '17', 'Bellingham đá tung thùng nước, cầu thủ Anh chìm trong nước mắt', 2, '[]', 10, 1),
(118, '2024-10-06 16:31:07.004799', '17', 'Bellingham đá tung thùng nước, cầu thủ Anh chìm trong nước mắt', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'myapp', 'item'),
(10, 'news', 'article'),
(17, 'news', 'author'),
(9, 'news', 'category'),
(12, 'news', 'contact'),
(11, 'news', 'feed'),
(8, 'news', 'item'),
(18, 'news', 'tag'),
(6, 'sessions', 'session'),
(13, 'shop', 'category'),
(16, 'shop', 'contact'),
(15, 'shop', 'plantingmethod'),
(14, 'shop', 'product');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-08-07 05:18:53.958284'),
(2, 'auth', '0001_initial', '2024-08-07 05:18:54.099609'),
(3, 'admin', '0001_initial', '2024-08-07 05:18:54.129998'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-08-07 05:18:54.134000'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-08-07 05:18:54.137328'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-08-07 05:18:54.159414'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-08-07 05:18:54.184214'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-08-07 05:18:54.192263'),
(9, 'auth', '0004_alter_user_username_opts', '2024-08-07 05:18:54.194994'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-08-07 05:18:54.205450'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-08-07 05:18:54.206006'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-08-07 05:18:54.208458'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-08-07 05:18:54.215771'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-08-07 05:18:54.223367'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-08-07 05:18:54.230355'),
(16, 'auth', '0011_update_proxy_permissions', '2024-08-07 05:18:54.234115'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-08-07 05:18:54.242869'),
(18, 'myapp', '0001_initial', '2024-08-07 05:18:54.249602'),
(19, 'sessions', '0001_initial', '2024-08-07 05:18:54.268882'),
(20, 'news', '0001_initial', '2024-08-08 08:40:23.918390'),
(21, 'news', '0002_category_delete_item', '2024-08-08 08:42:48.053089'),
(22, 'news', '0003_rename_question_text_category_name_and_more', '2024-08-08 08:58:23.229515'),
(23, 'news', '0004_article', '2024-08-08 11:42:19.536499'),
(24, 'news', '0005_alter_article_content', '2024-08-08 11:50:56.636031'),
(25, 'news', '0006_alter_article_content', '2024-08-08 11:57:26.227588'),
(26, 'news', '0007_alter_article_image', '2024-08-08 12:31:36.225458'),
(27, 'news', '0008_feed_alter_article_image', '2024-08-09 10:35:07.175941'),
(28, 'news', '0009_alter_article_options_alter_category_options_and_more', '2024-08-12 10:30:00.682769'),
(29, 'news', '0010_contact', '2024-08-22 11:41:41.272532'),
(30, 'news', '0011_alter_contact_admin_message', '2024-08-26 12:57:12.314828'),
(31, 'news', '0012_alter_article_status_alter_category_status_and_more', '2024-09-28 13:19:30.809044'),
(32, 'shop', '0001_initial', '2024-10-03 13:00:20.963983'),
(33, 'shop', '0002_remove_product_planting_methods_and_more', '2024-10-03 13:13:40.837924'),
(34, 'shop', '0003_alter_product_options_alter_product_price_real_and_more', '2024-10-03 13:58:14.519333'),
(35, 'shop', '0004_alter_product_price_sale', '2024-10-04 03:15:16.380893'),
(36, 'shop', '0005_contact', '2024-10-04 03:45:12.912459'),
(37, 'shop', '0006_rename_contact_id_contact_contacted', '2024-10-04 03:48:55.613236'),
(38, 'news', '0013_author', '2024-10-06 02:22:21.945306'),
(39, 'shop', '0007_alter_contact_options', '2024-10-06 02:22:21.948400'),
(40, 'news', '0014_alter_author_options_article_author', '2024-10-06 03:12:14.991212'),
(41, 'news', '0015_tag_article_tag', '2024-10-06 14:47:57.363908');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8cewzijvxdr6oek1zub1thrjrxf8md61', '.eJxVjEEOgjAQRe_StWmYYVqKS_eeoZl2poIaSCisjHdXEha6_e-9_zKRt3WIW9UljmLOBszpd0ucHzrtQO483Wab52ldxmR3xR602uss-rwc7t_BwHX41pn6oonRFV8IkQm4JQJAhb54J11qXO5TyK0ih1ZzR4riGwjEIOLM-wPpcjfz:1sv7fx:-dFY3FGdKQ_EAsvUzEnCEQkN7fMrsohmhH53TLviMGM', '2024-10-14 04:06:21.764734'),
('a3lcrl495bx02b5lm3j9zljlne39cb7f', '.eJxVjEEOgjAQRe_StWmYYVqKS_eeoZl2poIaSCisjHdXEha6_e-9_zKRt3WIW9UljmLOBszpd0ucHzrtQO483Wab52ldxmR3xR602uss-rwc7t_BwHX41pn6oonRFV8IkQm4JQJAhb54J11qXO5TyK0ih1ZzR4riGwjEIOLM-wPpcjfz:1sibdV:KoKwmAIs8l4IPRdAa08wy5CeaC8cscMXKHYiV5nxE-E', '2024-09-09 15:28:05.814870'),
('o38jkz5kf8cixvc5gun5iskkvuymbqow', '.eJxVjEEOgjAQRe_StWmYYVqKS_eeoZl2poIaSCisjHdXEha6_e-9_zKRt3WIW9UljmLOBszpd0ucHzrtQO483Wab52ldxmR3xR602uss-rwc7t_BwHX41pn6oonRFV8IkQm4JQJAhb54J11qXO5TyK0ih1ZzR4riGwjEIOLM-wPpcjfz:1sbZ8j:Vf9vNuRGJ33Ew-L0gfnFPWYZXfVb4gFuE9tr5DK9rn4', '2024-08-21 05:23:13.504942');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `myapp_item`
--

CREATE TABLE `myapp_item` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_article`
--

CREATE TABLE `news_article` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ordering` int(11) NOT NULL,
  `special` tinyint(1) NOT NULL,
  `publish_date` datetime(6) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `author_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news_article`
--

INSERT INTO `news_article` (`id`, `name`, `slug`, `status`, `ordering`, `special`, `publish_date`, `content`, `image`, `category_id`, `author_id`) VALUES
(3, 'Cảnh sát Mỹ truy tìm người đột nhập văn phòng chiến dịch Trump', 'canh-sat-my-truy-tim-nguoi-dot-nhap-van-phong-chien-dich-trump', 'public', 1, 1, '2024-08-16 07:02:46.000000', '<p class=\"Normal\">Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.</p>', 'news/images/articles/88727224-e677-407c-ba76-438af666c70f.jpeg', 3, 1),
(4, 'Ukraine nêu điều kiện kết thúc chiến dịch tấn công tỉnh Kursk', 'ukraine-neu-dieu-kien-ket-thuc-chien-dich-tan-cong-tinh-kursk', 'public', 2, 0, '2024-08-15 07:07:02.000000', '<div class=\"header-content width_common\">\r\n<ul class=\"breadcrumb\" data-campaign=\"Header\">\r\n<li>\r\n<p class=\"Normal\">Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.</p>\r\n</li>\r\n</ul>\r\n</div>', 'news/images/articles/9f3031f9-83bd-4588-ae69-78143303d2d8.jpeg', 3, 1),
(5, 'Tiểu hành tinh kim loại 10 tỷ tỷ USD đang han gỉ', 'tieu-hanh-tinh-kim-loai-10-ty-ty-usd-dang-han-gi', 'public', 2, 0, '2024-08-15 07:08:34.000000', '<div class=\"social_pin\">\r\n<p class=\"Normal\">Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.</p>\r\n</div>', 'news/images/articles/47a3aab1-5545-48e0-9111-9af5e0a865d0.jpeg', 3, 1),
(6, 'Tiểu hành tinh quay nhanh kỷ lục đâm xuống Trái Đất', 'tieu-hanh-tinh-quay-nhanh-ky-luc-dam-xuong-trai-dat', 'public', 4, 1, '2024-08-15 07:09:16.000000', '<p class=\"Normal\">Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.</p>', 'news/images/articles/d27eff38-11f9-4387-a685-6e60b27ea60c.jpeg', 3, 1),
(7, 'Tàu NASA mang về nhiều mẫu vật tiểu hành tinh nhất', 'tau-nasa-mang-ve-nhieu-mau-vat-tieu-hanh-tinh-nhat', 'public', 5, 0, '2024-08-15 07:09:48.000000', '<p class=\"Normal\">Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.Tiểu h&agrave;nh tinh 2024 BX1 biến th&agrave;nh quả cầu lửa v&agrave; ph&aacute;t nổ tr&ecirc;n bầu trời Berlin, Đức, h&ocirc;m 21/1. D&ugrave; c&aacute;c tiểu h&agrave;nh tinh nhỏ va chạm với Tr&aacute;i Đất thường chỉ được ph&aacute;t hiện khi ch&uacute;ng tiến v&agrave;o kh&iacute; quyển, nhưng c&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện tiểu h&agrave;nh tinh n&agrave;y khoảng ba giờ trước khi xảy ra va chạm.</p>', 'news/images/articles/6e6839ed-241c-4a30-8edc-56bdb7d9451e.webp', 3, 1),
(8, 'Hamas không dự vòng đàm phán then chốt về ngừng bắn ở Gaza', 'hamas-khong-du-vong-dam-phan-then-chot-ve-ngung-ban-o-gaza', 'public', 1, 0, '2024-08-15 07:10:45.000000', '<div class=\"header-content width_common\">&nbsp;</div>\r\n<p class=\"description\">Hamas sẽ kh&ocirc;ng tham dự v&ograve;ng đ&aacute;m ph&aacute;n quan trọng tại Qatar về lệnh ngừng bắn ở Gaza, song c&oacute; thể sẽ gặp c&aacute;c b&ecirc;n trung gian sau đ&oacute;.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\"Tham gia cuộc đ&agrave;m ph&aacute;n sẽ chỉ cho ph&eacute;p lực lượng chiếm đ&oacute;ng &aacute;p đặt c&aacute;c điều kiện mới v&agrave; tiến h&agrave;nh th&ecirc;m c&aacute;c cuộc thảm s&aacute;t\", Sami Abu Zuhri, quan chức cấp cao của Hamas, n&oacute;i ng&agrave;y 14/8 khi n&ecirc;u l&yacute; do từ chối tham gia v&ograve;ng h&ograve;a đ&agrave;m mới về Gaza sẽ diễn ra ở Doha, Qatar h&ocirc;m nay.</p>\r\n<p class=\"Normal\">Mỹ v&agrave; Israel đ&atilde; x&aacute;c nhận sẽ cử đại diện tham dự cuộc đối thoại. Đ&acirc;y được coi l&agrave; \"cơ hội cuối c&ugrave;ng\" để c&aacute;c b&ecirc;n đạt được lệnh ngừng bắn, trước khi t&igrave;nh h&igrave;nh diễn biến phức tạp hơn nếu Iran tung đ&ograve;n tấn c&ocirc;ng Israel để đ&aacute;p trả vụ &aacute;m s&aacute;t thủ lĩnh Hamas tại Tehran.</p>\r\n<p class=\"description\">Hamas sẽ kh&ocirc;ng tham dự v&ograve;ng đ&aacute;m ph&aacute;n quan trọng tại Qatar về lệnh ngừng bắn ở Gaza, song c&oacute; thể sẽ gặp c&aacute;c b&ecirc;n trung gian sau đ&oacute;.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\"Tham gia cuộc đ&agrave;m ph&aacute;n sẽ chỉ cho ph&eacute;p lực lượng chiếm đ&oacute;ng &aacute;p đặt c&aacute;c điều kiện mới v&agrave; tiến h&agrave;nh th&ecirc;m c&aacute;c cuộc thảm s&aacute;t\", Sami Abu Zuhri, quan chức cấp cao của Hamas, n&oacute;i ng&agrave;y 14/8 khi n&ecirc;u l&yacute; do từ chối tham gia v&ograve;ng h&ograve;a đ&agrave;m mới về Gaza sẽ diễn ra ở Doha, Qatar h&ocirc;m nay.</p>\r\n<p class=\"Normal\">Mỹ v&agrave; Israel đ&atilde; x&aacute;c nhận sẽ cử đại diện tham dự cuộc đối thoại. Đ&acirc;y được coi l&agrave; \"cơ hội cuối c&ugrave;ng\" để c&aacute;c b&ecirc;n đạt được lệnh ngừng bắn, trước khi t&igrave;nh h&igrave;nh diễn biến phức tạp hơn nếu Iran tung đ&ograve;n tấn c&ocirc;ng Israel để đ&aacute;p trả vụ &aacute;m s&aacute;t thủ lĩnh Hamas tại Tehran.</p>\r\n<p class=\"description\">Hamas sẽ kh&ocirc;ng tham dự v&ograve;ng đ&aacute;m ph&aacute;n quan trọng tại Qatar về lệnh ngừng bắn ở Gaza, song c&oacute; thể sẽ gặp c&aacute;c b&ecirc;n trung gian sau đ&oacute;.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\"Tham gia cuộc đ&agrave;m ph&aacute;n sẽ chỉ cho ph&eacute;p lực lượng chiếm đ&oacute;ng &aacute;p đặt c&aacute;c điều kiện mới v&agrave; tiến h&agrave;nh th&ecirc;m c&aacute;c cuộc thảm s&aacute;t\", Sami Abu Zuhri, quan chức cấp cao của Hamas, n&oacute;i ng&agrave;y 14/8 khi n&ecirc;u l&yacute; do từ chối tham gia v&ograve;ng h&ograve;a đ&agrave;m mới về Gaza sẽ diễn ra ở Doha, Qatar h&ocirc;m nay.</p>\r\n<p class=\"Normal\">Mỹ v&agrave; Israel đ&atilde; x&aacute;c nhận sẽ cử đại diện tham dự cuộc đối thoại. Đ&acirc;y được coi l&agrave; \"cơ hội cuối c&ugrave;ng\" để c&aacute;c b&ecirc;n đạt được lệnh ngừng bắn, trước khi t&igrave;nh h&igrave;nh diễn biến phức tạp hơn nếu Iran tung đ&ograve;n tấn c&ocirc;ng Israel để đ&aacute;p trả vụ &aacute;m s&aacute;t thủ lĩnh Hamas tại Tehran.</p>\r\n<p class=\"description\">Hamas sẽ kh&ocirc;ng tham dự v&ograve;ng đ&aacute;m ph&aacute;n quan trọng tại Qatar về lệnh ngừng bắn ở Gaza, song c&oacute; thể sẽ gặp c&aacute;c b&ecirc;n trung gian sau đ&oacute;.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\"Tham gia cuộc đ&agrave;m ph&aacute;n sẽ chỉ cho ph&eacute;p lực lượng chiếm đ&oacute;ng &aacute;p đặt c&aacute;c điều kiện mới v&agrave; tiến h&agrave;nh th&ecirc;m c&aacute;c cuộc thảm s&aacute;t\", Sami Abu Zuhri, quan chức cấp cao của Hamas, n&oacute;i ng&agrave;y 14/8 khi n&ecirc;u l&yacute; do từ chối tham gia v&ograve;ng h&ograve;a đ&agrave;m mới về Gaza sẽ diễn ra ở Doha, Qatar h&ocirc;m nay.</p>\r\n<p class=\"Normal\">Mỹ v&agrave; Israel đ&atilde; x&aacute;c nhận sẽ cử đại diện tham dự cuộc đối thoại. Đ&acirc;y được coi l&agrave; \"cơ hội cuối c&ugrave;ng\" để c&aacute;c b&ecirc;n đạt được lệnh ngừng bắn, trước khi t&igrave;nh h&igrave;nh diễn biến phức tạp hơn nếu Iran tung đ&ograve;n tấn c&ocirc;ng Israel để đ&aacute;p trả vụ &aacute;m s&aacute;t thủ lĩnh Hamas tại Tehran.</p>\r\n<p class=\"description\">Hamas sẽ kh&ocirc;ng tham dự v&ograve;ng đ&aacute;m ph&aacute;n quan trọng tại Qatar về lệnh ngừng bắn ở Gaza, song c&oacute; thể sẽ gặp c&aacute;c b&ecirc;n trung gian sau đ&oacute;.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\"Tham gia cuộc đ&agrave;m ph&aacute;n sẽ chỉ cho ph&eacute;p lực lượng chiếm đ&oacute;ng &aacute;p đặt c&aacute;c điều kiện mới v&agrave; tiến h&agrave;nh th&ecirc;m c&aacute;c cuộc thảm s&aacute;t\", Sami Abu Zuhri, quan chức cấp cao của Hamas, n&oacute;i ng&agrave;y 14/8 khi n&ecirc;u l&yacute; do từ chối tham gia v&ograve;ng h&ograve;a đ&agrave;m mới về Gaza sẽ diễn ra ở Doha, Qatar h&ocirc;m nay.</p>\r\n<p class=\"Normal\">Mỹ v&agrave; Israel đ&atilde; x&aacute;c nhận sẽ cử đại diện tham dự cuộc đối thoại. Đ&acirc;y được coi l&agrave; \"cơ hội cuối c&ugrave;ng\" để c&aacute;c b&ecirc;n đạt được lệnh ngừng bắn, trước khi t&igrave;nh h&igrave;nh diễn biến phức tạp hơn nếu Iran tung đ&ograve;n tấn c&ocirc;ng Israel để đ&aacute;p trả vụ &aacute;m s&aacute;t thủ lĩnh Hamas tại Tehran.</p>\r\n<p class=\"description\">Hamas sẽ kh&ocirc;ng tham dự v&ograve;ng đ&aacute;m ph&aacute;n quan trọng tại Qatar về lệnh ngừng bắn ở Gaza, song c&oacute; thể sẽ gặp c&aacute;c b&ecirc;n trung gian sau đ&oacute;.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\"Tham gia cuộc đ&agrave;m ph&aacute;n sẽ chỉ cho ph&eacute;p lực lượng chiếm đ&oacute;ng &aacute;p đặt c&aacute;c điều kiện mới v&agrave; tiến h&agrave;nh th&ecirc;m c&aacute;c cuộc thảm s&aacute;t\", Sami Abu Zuhri, quan chức cấp cao của Hamas, n&oacute;i ng&agrave;y 14/8 khi n&ecirc;u l&yacute; do từ chối tham gia v&ograve;ng h&ograve;a đ&agrave;m mới về Gaza sẽ diễn ra ở Doha, Qatar h&ocirc;m nay.</p>\r\n<p class=\"Normal\">Mỹ v&agrave; Israel đ&atilde; x&aacute;c nhận sẽ cử đại diện tham dự cuộc đối thoại. Đ&acirc;y được coi l&agrave; \"cơ hội cuối c&ugrave;ng\" để c&aacute;c b&ecirc;n đạt được lệnh ngừng bắn, trước khi t&igrave;nh h&igrave;nh diễn biến phức tạp hơn nếu Iran tung đ&ograve;n tấn c&ocirc;ng Israel để đ&aacute;p trả vụ &aacute;m s&aacute;t thủ lĩnh Hamas tại Tehran.</p>\r\n<p class=\"description\">Hamas sẽ kh&ocirc;ng tham dự v&ograve;ng đ&aacute;m ph&aacute;n quan trọng tại Qatar về lệnh ngừng bắn ở Gaza, song c&oacute; thể sẽ gặp c&aacute;c b&ecirc;n trung gian sau đ&oacute;.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\"Tham gia cuộc đ&agrave;m ph&aacute;n sẽ chỉ cho ph&eacute;p lực lượng chiếm đ&oacute;ng &aacute;p đặt c&aacute;c điều kiện mới v&agrave; tiến h&agrave;nh th&ecirc;m c&aacute;c cuộc thảm s&aacute;t\", Sami Abu Zuhri, quan chức cấp cao của Hamas, n&oacute;i ng&agrave;y 14/8 khi n&ecirc;u l&yacute; do từ chối tham gia v&ograve;ng h&ograve;a đ&agrave;m mới về Gaza sẽ diễn ra ở Doha, Qatar h&ocirc;m nay.</p>\r\n<p class=\"Normal\">Mỹ v&agrave; Israel đ&atilde; x&aacute;c nhận sẽ cử đại diện tham dự cuộc đối thoại. Đ&acirc;y được coi l&agrave; \"cơ hội cuối c&ugrave;ng\" để c&aacute;c b&ecirc;n đạt được lệnh ngừng bắn, trước khi t&igrave;nh h&igrave;nh diễn biến phức tạp hơn nếu Iran tung đ&ograve;n tấn c&ocirc;ng Israel để đ&aacute;p trả vụ &aacute;m s&aacute;t thủ lĩnh Hamas tại Tehran.</p>\r\n</article>\r\n</article>\r\n</article>\r\n</article>\r\n</article>\r\n</article>\r\n</article>', 'news/images/articles/57e28444-8d7a-4f1a-afdb-90a3b7efc936.jpeg', 4, 1),
(9, 'Thỏa thuận ngừng bắn Gaza có thể ngăn Iran tấn công Israel', 'thoa-thuan-ngung-ban-gaza-co-the-ngan-iran-tan-cong-israel', 'public', 2, 1, '2024-08-15 07:11:41.000000', '<p class=\"description\">Tổng thống Biden cho rằng Iran sẽ kh&ocirc;ng tấn c&ocirc;ng Israel để đ&aacute;p trả vụ &aacute;m s&aacute;t thủ lĩnh Hamas nếu Tel Aviv v&agrave; Hamas đạt thỏa thuận ngừng bắn ở Gaza.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">Trong sự kiện tại th&agrave;nh phố New Orleans, bang Louisiana h&ocirc;m 13/8, Tổng thống Mỹ Joe Biden được hỏi liệu lệnh ngừng bắn giữa Israel v&agrave; Hamas c&oacute; thể ngăn đ&ograve;n tập k&iacute;ch của Iran v&agrave;o Israel hay kh&ocirc;ng.</p>\r\n<p class=\"Normal\">\"T&ocirc;i cho l&agrave; như vậy\", &ocirc;ng Biden trả lời, đồng thời cảnh b&aacute;o việc đạt được thỏa thuận ngừng bắn đang \"ng&agrave;y c&agrave;ng kh&oacute; khăn hơn\".</p>\r\n<div id=\"sis_outstream__c\" data-set=\"dfp\"></div>\r\n<p class=\"Normal\">&Ocirc;ng cũng nhấn mạnh quyết t&acirc;m chấm dứt t&igrave;nh trạng giao tranh hiện nay. \"Ch&uacute;ng ta sẽ xem Iran l&agrave;m g&igrave; v&agrave; xem điều g&igrave; sẽ xảy ra nếu họ ph&aacute;t động tấn c&ocirc;ng. Nhưng t&ocirc;i sẽ kh&ocirc;ng bỏ cuộc\", Tổng thống Mỹ cho hay.</p>\r\n<p class=\"description\">Tổng thống Biden cho rằng Iran sẽ kh&ocirc;ng tấn c&ocirc;ng Israel để đ&aacute;p trả vụ &aacute;m s&aacute;t thủ lĩnh Hamas nếu Tel Aviv v&agrave; Hamas đạt thỏa thuận ngừng bắn ở Gaza.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">Trong sự kiện tại th&agrave;nh phố New Orleans, bang Louisiana h&ocirc;m 13/8, Tổng thống Mỹ Joe Biden được hỏi liệu lệnh ngừng bắn giữa Israel v&agrave; Hamas c&oacute; thể ngăn đ&ograve;n tập k&iacute;ch của Iran v&agrave;o Israel hay kh&ocirc;ng.</p>\r\n<p class=\"Normal\">\"T&ocirc;i cho l&agrave; như vậy\", &ocirc;ng Biden trả lời, đồng thời cảnh b&aacute;o việc đạt được thỏa thuận ngừng bắn đang \"ng&agrave;y c&agrave;ng kh&oacute; khăn hơn\".</p>\r\n<div id=\"sis_outstream__c\" data-set=\"dfp\"></div>\r\n<p class=\"Normal\">&Ocirc;ng cũng nhấn mạnh quyết t&acirc;m chấm dứt t&igrave;nh trạng giao tranh hiện nay. \"Ch&uacute;ng ta sẽ xem Iran l&agrave;m g&igrave; v&agrave; xem điều g&igrave; sẽ xảy ra nếu họ ph&aacute;t động tấn c&ocirc;ng. Nhưng t&ocirc;i sẽ kh&ocirc;ng bỏ cuộc\", Tổng thống Mỹ cho hay.</p>\r\n<p class=\"description\">Tổng thống Biden cho rằng Iran sẽ kh&ocirc;ng tấn c&ocirc;ng Israel để đ&aacute;p trả vụ &aacute;m s&aacute;t thủ lĩnh Hamas nếu Tel Aviv v&agrave; Hamas đạt thỏa thuận ngừng bắn ở Gaza.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">Trong sự kiện tại th&agrave;nh phố New Orleans, bang Louisiana h&ocirc;m 13/8, Tổng thống Mỹ Joe Biden được hỏi liệu lệnh ngừng bắn giữa Israel v&agrave; Hamas c&oacute; thể ngăn đ&ograve;n tập k&iacute;ch của Iran v&agrave;o Israel hay kh&ocirc;ng.</p>\r\n<p class=\"Normal\">\"T&ocirc;i cho l&agrave; như vậy\", &ocirc;ng Biden trả lời, đồng thời cảnh b&aacute;o việc đạt được thỏa thuận ngừng bắn đang \"ng&agrave;y c&agrave;ng kh&oacute; khăn hơn\".</p>\r\n<div id=\"sis_outstream__c\" data-set=\"dfp\"></div>\r\n<p class=\"Normal\">&Ocirc;ng cũng nhấn mạnh quyết t&acirc;m chấm dứt t&igrave;nh trạng giao tranh hiện nay. \"Ch&uacute;ng ta sẽ xem Iran l&agrave;m g&igrave; v&agrave; xem điều g&igrave; sẽ xảy ra nếu họ ph&aacute;t động tấn c&ocirc;ng. Nhưng t&ocirc;i sẽ kh&ocirc;ng bỏ cuộc\", Tổng thống Mỹ cho hay.</p>\r\n<p class=\"description\">Tổng thống Biden cho rằng Iran sẽ kh&ocirc;ng tấn c&ocirc;ng Israel để đ&aacute;p trả vụ &aacute;m s&aacute;t thủ lĩnh Hamas nếu Tel Aviv v&agrave; Hamas đạt thỏa thuận ngừng bắn ở Gaza.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">Trong sự kiện tại th&agrave;nh phố New Orleans, bang Louisiana h&ocirc;m 13/8, Tổng thống Mỹ Joe Biden được hỏi liệu lệnh ngừng bắn giữa Israel v&agrave; Hamas c&oacute; thể ngăn đ&ograve;n tập k&iacute;ch của Iran v&agrave;o Israel hay kh&ocirc;ng.</p>\r\n<p class=\"Normal\">\"T&ocirc;i cho l&agrave; như vậy\", &ocirc;ng Biden trả lời, đồng thời cảnh b&aacute;o việc đạt được thỏa thuận ngừng bắn đang \"ng&agrave;y c&agrave;ng kh&oacute; khăn hơn\".</p>\r\n<div id=\"sis_outstream__c\" data-set=\"dfp\"></div>\r\n<p class=\"Normal\">&Ocirc;ng cũng nhấn mạnh quyết t&acirc;m chấm dứt t&igrave;nh trạng giao tranh hiện nay. \"Ch&uacute;ng ta sẽ xem Iran l&agrave;m g&igrave; v&agrave; xem điều g&igrave; sẽ xảy ra nếu họ ph&aacute;t động tấn c&ocirc;ng. Nhưng t&ocirc;i sẽ kh&ocirc;ng bỏ cuộc\", Tổng thống Mỹ cho hay.</p>\r\n<p class=\"description\">Tổng thống Biden cho rằng Iran sẽ kh&ocirc;ng tấn c&ocirc;ng Israel để đ&aacute;p trả vụ &aacute;m s&aacute;t thủ lĩnh Hamas nếu Tel Aviv v&agrave; Hamas đạt thỏa thuận ngừng bắn ở Gaza.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">Trong sự kiện tại th&agrave;nh phố New Orleans, bang Louisiana h&ocirc;m 13/8, Tổng thống Mỹ Joe Biden được hỏi liệu lệnh ngừng bắn giữa Israel v&agrave; Hamas c&oacute; thể ngăn đ&ograve;n tập k&iacute;ch của Iran v&agrave;o Israel hay kh&ocirc;ng.</p>\r\n<p class=\"Normal\">\"T&ocirc;i cho l&agrave; như vậy\", &ocirc;ng Biden trả lời, đồng thời cảnh b&aacute;o việc đạt được thỏa thuận ngừng bắn đang \"ng&agrave;y c&agrave;ng kh&oacute; khăn hơn\".</p>\r\n<div id=\"sis_outstream__c\" data-set=\"dfp\"></div>\r\n<p class=\"Normal\">&Ocirc;ng cũng nhấn mạnh quyết t&acirc;m chấm dứt t&igrave;nh trạng giao tranh hiện nay. \"Ch&uacute;ng ta sẽ xem Iran l&agrave;m g&igrave; v&agrave; xem điều g&igrave; sẽ xảy ra nếu họ ph&aacute;t động tấn c&ocirc;ng. Nhưng t&ocirc;i sẽ kh&ocirc;ng bỏ cuộc\", Tổng thống Mỹ cho hay.</p>\r\n<p class=\"description\">Tổng thống Biden cho rằng Iran sẽ kh&ocirc;ng tấn c&ocirc;ng Israel để đ&aacute;p trả vụ &aacute;m s&aacute;t thủ lĩnh Hamas nếu Tel Aviv v&agrave; Hamas đạt thỏa thuận ngừng bắn ở Gaza.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">Trong sự kiện tại th&agrave;nh phố New Orleans, bang Louisiana h&ocirc;m 13/8, Tổng thống Mỹ Joe Biden được hỏi liệu lệnh ngừng bắn giữa Israel v&agrave; Hamas c&oacute; thể ngăn đ&ograve;n tập k&iacute;ch của Iran v&agrave;o Israel hay kh&ocirc;ng.</p>\r\n<p class=\"Normal\">\"T&ocirc;i cho l&agrave; như vậy\", &ocirc;ng Biden trả lời, đồng thời cảnh b&aacute;o việc đạt được thỏa thuận ngừng bắn đang \"ng&agrave;y c&agrave;ng kh&oacute; khăn hơn\".</p>\r\n<div id=\"sis_outstream__c\" data-set=\"dfp\"></div>\r\n<p class=\"Normal\">&Ocirc;ng cũng nhấn mạnh quyết t&acirc;m chấm dứt t&igrave;nh trạng giao tranh hiện nay. \"Ch&uacute;ng ta sẽ xem Iran l&agrave;m g&igrave; v&agrave; xem điều g&igrave; sẽ xảy ra nếu họ ph&aacute;t động tấn c&ocirc;ng. Nhưng t&ocirc;i sẽ kh&ocirc;ng bỏ cuộc\", Tổng thống Mỹ cho hay.</p>\r\n<figure class=\"tplCaption action_thumb_added\" data-href=\"\" data-target=\"\"></figure>\r\n</article>\r\n<figure class=\"tplCaption action_thumb_added\" data-href=\"\" data-target=\"\"></figure>\r\n</article>\r\n<figure class=\"tplCaption action_thumb_added\" data-href=\"\" data-target=\"\"></figure>\r\n</article>\r\n<figure class=\"tplCaption action_thumb_added\" data-href=\"\" data-target=\"\"></figure>\r\n</article>\r\n<figure class=\"tplCaption action_thumb_added\" data-href=\"\" data-target=\"\"></figure>\r\n</article>\r\n<figure class=\"tplCaption action_thumb_added\" data-href=\"\" data-target=\"\"></figure>\r\n</article>', 'news/images/articles/a21a5ee5-639c-4c21-aeeb-04b54ad6dd3b.jpeg', 4, 1),
(10, 'Iran bác lời kêu gọi kiềm chế của phương Tây', 'iran-bac-loi-keu-goi-kiem-che-cua-phuong-tay', 'public', 3, 0, '2024-08-15 07:12:10.000000', '<p class=\"description\">Ba nước ch&acirc;u &Acirc;u k&ecirc;u gọi Iran kiềm chế sau lời đe dọa tấn c&ocirc;ng trả đũa Israel, nhưng Tehran b&aacute;c bỏ, cho rằng đ&acirc;y l&agrave; y&ecirc;u cầu \"phi logic\".</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\"Tuy&ecirc;n bố của Ph&aacute;p, Đức v&agrave; Anh kh&ocirc;ng n&ecirc;u ra bất kỳ phản đối n&agrave;o đối với tội &aacute;c m&agrave; Israel đ&atilde; g&acirc;y ra. Thay v&agrave;o đ&oacute;, họ trắng trợn y&ecirc;u cầu Iran kh&ocirc;ng h&agrave;nh động răn đe Israel, nước đ&atilde; vi phạm chủ quyền v&agrave; to&agrave;n vẹn l&atilde;nh thổ của ch&uacute;ng t&ocirc;i\", ph&aacute;t ng&ocirc;n vi&ecirc;n Bộ Ngoại giao Iran Nasser Kanani h&ocirc;m nay cho hay.</p>\r\n<p class=\"Normal\">B&igrave;nh luận của &ocirc;ng Kanani đề cập tuy&ecirc;n bố chung của Ph&aacute;p, Đức v&agrave; Anh một ng&agrave;y trước, trong đ&oacute; k&ecirc;u gọi Iran v&agrave; đồng minh kiềm chế, kh&ocirc;ng tấn c&ocirc;ng qu&acirc;n sự v&agrave;o Israel sau vụ thủ lĩnh Hamas Ismail Haniyeh bị &aacute;m s&aacute;t.</p>\r\n<div id=\"sis_outstream__c\" data-set=\"dfp\"></div>\r\n<p class=\"Normal\">\"Y&ecirc;u cầu như vậy thiếu logic ch&iacute;nh trị, đi ngược lại c&aacute;c nguy&ecirc;n tắc v&agrave; quy định của luật ph&aacute;p quốc tế, đồng thời thể hiện sự ủng hộ c&ocirc;ng khai với Israel\", ph&aacute;t ng&ocirc;n vi&ecirc;n Bộ Ngoại giao Iran n&oacute;i th&ecirc;m.</p>\r\n<p class=\"description\">Ba nước ch&acirc;u &Acirc;u k&ecirc;u gọi Iran kiềm chế sau lời đe dọa tấn c&ocirc;ng trả đũa Israel, nhưng Tehran b&aacute;c bỏ, cho rằng đ&acirc;y l&agrave; y&ecirc;u cầu \"phi logic\".</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\"Tuy&ecirc;n bố của Ph&aacute;p, Đức v&agrave; Anh kh&ocirc;ng n&ecirc;u ra bất kỳ phản đối n&agrave;o đối với tội &aacute;c m&agrave; Israel đ&atilde; g&acirc;y ra. Thay v&agrave;o đ&oacute;, họ trắng trợn y&ecirc;u cầu Iran kh&ocirc;ng h&agrave;nh động răn đe Israel, nước đ&atilde; vi phạm chủ quyền v&agrave; to&agrave;n vẹn l&atilde;nh thổ của ch&uacute;ng t&ocirc;i\", ph&aacute;t ng&ocirc;n vi&ecirc;n Bộ Ngoại giao Iran Nasser Kanani h&ocirc;m nay cho hay.</p>\r\n<p class=\"Normal\">B&igrave;nh luận của &ocirc;ng Kanani đề cập tuy&ecirc;n bố chung của Ph&aacute;p, Đức v&agrave; Anh một ng&agrave;y trước, trong đ&oacute; k&ecirc;u gọi Iran v&agrave; đồng minh kiềm chế, kh&ocirc;ng tấn c&ocirc;ng qu&acirc;n sự v&agrave;o Israel sau vụ thủ lĩnh Hamas Ismail Haniyeh bị &aacute;m s&aacute;t.</p>\r\n<div id=\"sis_outstream__c\" data-set=\"dfp\"></div>\r\n<p class=\"Normal\">\"Y&ecirc;u cầu như vậy thiếu logic ch&iacute;nh trị, đi ngược lại c&aacute;c nguy&ecirc;n tắc v&agrave; quy định của luật ph&aacute;p quốc tế, đồng thời thể hiện sự ủng hộ c&ocirc;ng khai với Israel\", ph&aacute;t ng&ocirc;n vi&ecirc;n Bộ Ngoại giao Iran n&oacute;i th&ecirc;m.</p>\r\n<p class=\"description\">Ba nước ch&acirc;u &Acirc;u k&ecirc;u gọi Iran kiềm chế sau lời đe dọa tấn c&ocirc;ng trả đũa Israel, nhưng Tehran b&aacute;c bỏ, cho rằng đ&acirc;y l&agrave; y&ecirc;u cầu \"phi logic\".</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\"Tuy&ecirc;n bố của Ph&aacute;p, Đức v&agrave; Anh kh&ocirc;ng n&ecirc;u ra bất kỳ phản đối n&agrave;o đối với tội &aacute;c m&agrave; Israel đ&atilde; g&acirc;y ra. Thay v&agrave;o đ&oacute;, họ trắng trợn y&ecirc;u cầu Iran kh&ocirc;ng h&agrave;nh động răn đe Israel, nước đ&atilde; vi phạm chủ quyền v&agrave; to&agrave;n vẹn l&atilde;nh thổ của ch&uacute;ng t&ocirc;i\", ph&aacute;t ng&ocirc;n vi&ecirc;n Bộ Ngoại giao Iran Nasser Kanani h&ocirc;m nay cho hay.</p>\r\n<p class=\"Normal\">B&igrave;nh luận của &ocirc;ng Kanani đề cập tuy&ecirc;n bố chung của Ph&aacute;p, Đức v&agrave; Anh một ng&agrave;y trước, trong đ&oacute; k&ecirc;u gọi Iran v&agrave; đồng minh kiềm chế, kh&ocirc;ng tấn c&ocirc;ng qu&acirc;n sự v&agrave;o Israel sau vụ thủ lĩnh Hamas Ismail Haniyeh bị &aacute;m s&aacute;t.</p>\r\n<div id=\"sis_outstream__c\" data-set=\"dfp\"></div>\r\n<p class=\"Normal\">\"Y&ecirc;u cầu như vậy thiếu logic ch&iacute;nh trị, đi ngược lại c&aacute;c nguy&ecirc;n tắc v&agrave; quy định của luật ph&aacute;p quốc tế, đồng thời thể hiện sự ủng hộ c&ocirc;ng khai với Israel\", ph&aacute;t ng&ocirc;n vi&ecirc;n Bộ Ngoại giao Iran n&oacute;i th&ecirc;m.</p>\r\n<p class=\"description\">Ba nước ch&acirc;u &Acirc;u k&ecirc;u gọi Iran kiềm chế sau lời đe dọa tấn c&ocirc;ng trả đũa Israel, nhưng Tehran b&aacute;c bỏ, cho rằng đ&acirc;y l&agrave; y&ecirc;u cầu \"phi logic\".</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\"Tuy&ecirc;n bố của Ph&aacute;p, Đức v&agrave; Anh kh&ocirc;ng n&ecirc;u ra bất kỳ phản đối n&agrave;o đối với tội &aacute;c m&agrave; Israel đ&atilde; g&acirc;y ra. Thay v&agrave;o đ&oacute;, họ trắng trợn y&ecirc;u cầu Iran kh&ocirc;ng h&agrave;nh động răn đe Israel, nước đ&atilde; vi phạm chủ quyền v&agrave; to&agrave;n vẹn l&atilde;nh thổ của ch&uacute;ng t&ocirc;i\", ph&aacute;t ng&ocirc;n vi&ecirc;n Bộ Ngoại giao Iran Nasser Kanani h&ocirc;m nay cho hay.</p>\r\n<p class=\"Normal\">B&igrave;nh luận của &ocirc;ng Kanani đề cập tuy&ecirc;n bố chung của Ph&aacute;p, Đức v&agrave; Anh một ng&agrave;y trước, trong đ&oacute; k&ecirc;u gọi Iran v&agrave; đồng minh kiềm chế, kh&ocirc;ng tấn c&ocirc;ng qu&acirc;n sự v&agrave;o Israel sau vụ thủ lĩnh Hamas Ismail Haniyeh bị &aacute;m s&aacute;t.</p>\r\n<div id=\"sis_outstream__c\" data-set=\"dfp\"></div>\r\n<p class=\"Normal\">\"Y&ecirc;u cầu như vậy thiếu logic ch&iacute;nh trị, đi ngược lại c&aacute;c nguy&ecirc;n tắc v&agrave; quy định của luật ph&aacute;p quốc tế, đồng thời thể hiện sự ủng hộ c&ocirc;ng khai với Israel\", ph&aacute;t ng&ocirc;n vi&ecirc;n Bộ Ngoại giao Iran n&oacute;i th&ecirc;m.</p>\r\n</article>\r\n</article>\r\n</article>\r\n</article>', 'news/images/articles/c3e08459-e842-4eca-b64a-62a7e2d8a12c.jpeg', 4, 1);
INSERT INTO `news_article` (`id`, `name`, `slug`, `status`, `ordering`, `special`, `publish_date`, `content`, `image`, `category_id`, `author_id`) VALUES
(11, 'Quân đội Israel phê chuẩn kế hoạch tác chiến đa mặt trận', 'quan-doi-israel-phe-chuan-ke-hoach-tac-chien-da-mat-tran', 'public', 4, 0, '2024-08-15 07:12:48.000000', '<p class=\"description\">IDF \"b&aacute;o động tối đa\" trước nguy cơ Iran c&ugrave;ng đồng minh tấn c&ocirc;ng Israel v&agrave; Tổng tham mưu trưởng đ&atilde; ph&ecirc; chuẩn kế hoạch t&aacute;c chiến.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">Lực lượng Ph&ograve;ng vệ Israel (IDF) ng&agrave;y 12/8 th&ocirc;ng b&aacute;o Tổng tham mưu trưởng Herzi Halevi đ&atilde; c&ugrave;ng Ph&oacute; tổng tham mưu trưởng, Tổng cục t&igrave;nh b&aacute;o, Tổng cục t&aacute;c chiến, Hội đồng Tham mưu trưởng, l&atilde;nh đạo c&aacute;c bộ tư lệnh trực thuộc đ&aacute;nh gi&aacute; t&igrave;nh h&igrave;nh v&agrave; ph&ecirc; chuẩn \"kế hoạch t&aacute;c chiến ở nhiều mặt trận\".</p>\r\n<p class=\"Normal\">\"Tổng tham mưu trưởng nhấn mạnh qu&acirc;n đội cần duy tr&igrave; mức sẵn s&agrave;ng t&aacute;c chiến cao v&agrave; nỗ lực chuẩn bị cho cả tấn c&ocirc;ng lẫn ph&ograve;ng thủ\", th&ocirc;ng c&aacute;o của IDF cho biết.</p>\r\n<div id=\"sis_outstream__c\" data-set=\"dfp\"></div>\r\n<p class=\"Normal\">Trước đ&oacute;, nguồn tin khu vực Trung Đ&ocirc;ng tiết lộ với đ&agrave;i&nbsp;<em>Fox</em>&nbsp;rằng Iran c&oacute; thể tấn c&ocirc;ng Israel tr&ugrave;ng với lễ Tisha B\'av của người Do Th&aacute;i v&agrave;o ng&agrave;y 12-13/8.</p>\r\n<p class=\"Normal\">Iran c&ugrave;ng đồng minh thời gian qua nhiều lần c&ocirc;ng khai đe dọa đ&aacute;p trả Israel sau khi thủ lĩnh ch&iacute;nh trị Hamas Ismail Haniyeh bị &aacute;m s&aacute;t ở Tehran h&ocirc;m 31/7, d&ugrave; Tel Aviv đến nay vẫn kh&ocirc;ng nhận tr&aacute;ch nhiệm vụ tấn c&ocirc;ng</p>\r\n<p class=\"description\">IDF \"b&aacute;o động tối đa\" trước nguy cơ Iran c&ugrave;ng đồng minh tấn c&ocirc;ng Israel v&agrave; Tổng tham mưu trưởng đ&atilde; ph&ecirc; chuẩn kế hoạch t&aacute;c chiến.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">Lực lượng Ph&ograve;ng vệ Israel (IDF) ng&agrave;y 12/8 th&ocirc;ng b&aacute;o Tổng tham mưu trưởng Herzi Halevi đ&atilde; c&ugrave;ng Ph&oacute; tổng tham mưu trưởng, Tổng cục t&igrave;nh b&aacute;o, Tổng cục t&aacute;c chiến, Hội đồng Tham mưu trưởng, l&atilde;nh đạo c&aacute;c bộ tư lệnh trực thuộc đ&aacute;nh gi&aacute; t&igrave;nh h&igrave;nh v&agrave; ph&ecirc; chuẩn \"kế hoạch t&aacute;c chiến ở nhiều mặt trận\".</p>\r\n<p class=\"Normal\">\"Tổng tham mưu trưởng nhấn mạnh qu&acirc;n đội cần duy tr&igrave; mức sẵn s&agrave;ng t&aacute;c chiến cao v&agrave; nỗ lực chuẩn bị cho cả tấn c&ocirc;ng lẫn ph&ograve;ng thủ\", th&ocirc;ng c&aacute;o của IDF cho biết.</p>\r\n<div id=\"sis_outstream__c\" data-set=\"dfp\"></div>\r\n<p class=\"Normal\">Trước đ&oacute;, nguồn tin khu vực Trung Đ&ocirc;ng tiết lộ với đ&agrave;i&nbsp;<em>Fox</em>&nbsp;rằng Iran c&oacute; thể tấn c&ocirc;ng Israel tr&ugrave;ng với lễ Tisha B\'av của người Do Th&aacute;i v&agrave;o ng&agrave;y 12-13/8.</p>\r\n<p class=\"Normal\">Iran c&ugrave;ng đồng minh thời gian qua nhiều lần c&ocirc;ng khai đe dọa đ&aacute;p trả Israel sau khi thủ lĩnh ch&iacute;nh trị Hamas Ismail Haniyeh bị &aacute;m s&aacute;t ở Tehran h&ocirc;m 31/7, d&ugrave; Tel Aviv đến nay vẫn kh&ocirc;ng nhận tr&aacute;ch nhiệm vụ tấn c&ocirc;ng</p>\r\n<p class=\"description\">IDF \"b&aacute;o động tối đa\" trước nguy cơ Iran c&ugrave;ng đồng minh tấn c&ocirc;ng Israel v&agrave; Tổng tham mưu trưởng đ&atilde; ph&ecirc; chuẩn kế hoạch t&aacute;c chiến.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">Lực lượng Ph&ograve;ng vệ Israel (IDF) ng&agrave;y 12/8 th&ocirc;ng b&aacute;o Tổng tham mưu trưởng Herzi Halevi đ&atilde; c&ugrave;ng Ph&oacute; tổng tham mưu trưởng, Tổng cục t&igrave;nh b&aacute;o, Tổng cục t&aacute;c chiến, Hội đồng Tham mưu trưởng, l&atilde;nh đạo c&aacute;c bộ tư lệnh trực thuộc đ&aacute;nh gi&aacute; t&igrave;nh h&igrave;nh v&agrave; ph&ecirc; chuẩn \"kế hoạch t&aacute;c chiến ở nhiều mặt trận\".</p>\r\n<p class=\"Normal\">\"Tổng tham mưu trưởng nhấn mạnh qu&acirc;n đội cần duy tr&igrave; mức sẵn s&agrave;ng t&aacute;c chiến cao v&agrave; nỗ lực chuẩn bị cho cả tấn c&ocirc;ng lẫn ph&ograve;ng thủ\", th&ocirc;ng c&aacute;o của IDF cho biết.</p>\r\n<div id=\"sis_outstream__c\" data-set=\"dfp\"></div>\r\n<p class=\"Normal\">Trước đ&oacute;, nguồn tin khu vực Trung Đ&ocirc;ng tiết lộ với đ&agrave;i&nbsp;<em>Fox</em>&nbsp;rằng Iran c&oacute; thể tấn c&ocirc;ng Israel tr&ugrave;ng với lễ Tisha B\'av của người Do Th&aacute;i v&agrave;o ng&agrave;y 12-13/8.</p>\r\n<p class=\"Normal\">Iran c&ugrave;ng đồng minh thời gian qua nhiều lần c&ocirc;ng khai đe dọa đ&aacute;p trả Israel sau khi thủ lĩnh ch&iacute;nh trị Hamas Ismail Haniyeh bị &aacute;m s&aacute;t ở Tehran h&ocirc;m 31/7, d&ugrave; Tel Aviv đến nay vẫn kh&ocirc;ng nhận tr&aacute;ch nhiệm vụ tấn c&ocirc;ng</p>\r\n<p class=\"description\">IDF \"b&aacute;o động tối đa\" trước nguy cơ Iran c&ugrave;ng đồng minh tấn c&ocirc;ng Israel v&agrave; Tổng tham mưu trưởng đ&atilde; ph&ecirc; chuẩn kế hoạch t&aacute;c chiến.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">Lực lượng Ph&ograve;ng vệ Israel (IDF) ng&agrave;y 12/8 th&ocirc;ng b&aacute;o Tổng tham mưu trưởng Herzi Halevi đ&atilde; c&ugrave;ng Ph&oacute; tổng tham mưu trưởng, Tổng cục t&igrave;nh b&aacute;o, Tổng cục t&aacute;c chiến, Hội đồng Tham mưu trưởng, l&atilde;nh đạo c&aacute;c bộ tư lệnh trực thuộc đ&aacute;nh gi&aacute; t&igrave;nh h&igrave;nh v&agrave; ph&ecirc; chuẩn \"kế hoạch t&aacute;c chiến ở nhiều mặt trận\".</p>\r\n<p class=\"Normal\">\"Tổng tham mưu trưởng nhấn mạnh qu&acirc;n đội cần duy tr&igrave; mức sẵn s&agrave;ng t&aacute;c chiến cao v&agrave; nỗ lực chuẩn bị cho cả tấn c&ocirc;ng lẫn ph&ograve;ng thủ\", th&ocirc;ng c&aacute;o của IDF cho biết.</p>\r\n<div id=\"sis_outstream__c\" data-set=\"dfp\"></div>\r\n<p class=\"Normal\">Trước đ&oacute;, nguồn tin khu vực Trung Đ&ocirc;ng tiết lộ với đ&agrave;i&nbsp;<em>Fox</em>&nbsp;rằng Iran c&oacute; thể tấn c&ocirc;ng Israel tr&ugrave;ng với lễ Tisha B\'av của người Do Th&aacute;i v&agrave;o ng&agrave;y 12-13/8.</p>\r\n<p class=\"Normal\">Iran c&ugrave;ng đồng minh thời gian qua nhiều lần c&ocirc;ng khai đe dọa đ&aacute;p trả Israel sau khi thủ lĩnh ch&iacute;nh trị Hamas Ismail Haniyeh bị &aacute;m s&aacute;t ở Tehran h&ocirc;m 31/7, d&ugrave; Tel Aviv đến nay vẫn kh&ocirc;ng nhận tr&aacute;ch nhiệm vụ tấn c&ocirc;ng</p>\r\n<p class=\"description\">IDF \"b&aacute;o động tối đa\" trước nguy cơ Iran c&ugrave;ng đồng minh tấn c&ocirc;ng Israel v&agrave; Tổng tham mưu trưởng đ&atilde; ph&ecirc; chuẩn kế hoạch t&aacute;c chiến.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">Lực lượng Ph&ograve;ng vệ Israel (IDF) ng&agrave;y 12/8 th&ocirc;ng b&aacute;o Tổng tham mưu trưởng Herzi Halevi đ&atilde; c&ugrave;ng Ph&oacute; tổng tham mưu trưởng, Tổng cục t&igrave;nh b&aacute;o, Tổng cục t&aacute;c chiến, Hội đồng Tham mưu trưởng, l&atilde;nh đạo c&aacute;c bộ tư lệnh trực thuộc đ&aacute;nh gi&aacute; t&igrave;nh h&igrave;nh v&agrave; ph&ecirc; chuẩn \"kế hoạch t&aacute;c chiến ở nhiều mặt trận\".</p>\r\n<p class=\"Normal\">\"Tổng tham mưu trưởng nhấn mạnh qu&acirc;n đội cần duy tr&igrave; mức sẵn s&agrave;ng t&aacute;c chiến cao v&agrave; nỗ lực chuẩn bị cho cả tấn c&ocirc;ng lẫn ph&ograve;ng thủ\", th&ocirc;ng c&aacute;o của IDF cho biết.</p>\r\n<div id=\"sis_outstream__c\" data-set=\"dfp\"></div>\r\n<p class=\"Normal\">Trước đ&oacute;, nguồn tin khu vực Trung Đ&ocirc;ng tiết lộ với đ&agrave;i&nbsp;<em>Fox</em>&nbsp;rằng Iran c&oacute; thể tấn c&ocirc;ng Israel tr&ugrave;ng với lễ Tisha B\'av của người Do Th&aacute;i v&agrave;o ng&agrave;y 12-13/8.</p>\r\n<p class=\"Normal\">Iran c&ugrave;ng đồng minh thời gian qua nhiều lần c&ocirc;ng khai đe dọa đ&aacute;p trả Israel sau khi thủ lĩnh ch&iacute;nh trị Hamas Ismail Haniyeh bị &aacute;m s&aacute;t ở Tehran h&ocirc;m 31/7, d&ugrave; Tel Aviv đến nay vẫn kh&ocirc;ng nhận tr&aacute;ch nhiệm vụ tấn c&ocirc;ng</p>\r\n</article>\r\n</article>\r\n</article>\r\n</article>\r\n</article>', 'news/images/articles/17536573-cf10-40f6-8748-9e772db47c18.jpeg', 4, 1),
(12, 'Lãnh đạo Iran có thể đang tranh cãi về biện pháp trả đũa Israel', 'lanh-dao-iran-co-the-dang-tranh-cai-ve-bien-phap-tra-dua-israel', 'public', 5, 1, '2024-08-15 07:13:13.000000', '<p class=\"description\">Giới qu&acirc;n sự Iran muốn trừng phạt Israel quyết liệt để b&aacute;o th&ugrave; cho thủ lĩnh Hamas, nhưng Tổng thống Pezeshkian đề nghị phản ứng nhẹ nh&agrave;ng hơn, theo t&igrave;nh b&aacute;o Israel.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">Tranh c&atilde;i gần đ&acirc;y nổ ra giữa Vệ binh C&aacute;ch mạng Hồi gi&aacute;o Iran (IRGC) với Tổng thống Iran Masoud Pezeshkian về biện ph&aacute;p đ&aacute;p trả Israel sau vụ &aacute;m s&aacute;t thủ lĩnh Hamas Ismail Haniyeh tại Tehran,&nbsp;<em>Jerusalem Post</em>, tờ b&aacute;o h&agrave;ng đầu Israel, dẫn c&aacute;c nguồn tin trong lực lượng t&igrave;nh b&aacute;o nước n&agrave;y ng&agrave;y 11/8 cho biết.</p>\r\n<p class=\"Normal\">Tranh c&atilde;i nổ ra gần đ&acirc;y giữa c&aacute;c l&atilde;nh đạo ch&iacute;nh trị v&agrave; qu&acirc;n sự Iran, tập trung v&agrave;o bản chất v&agrave; thời điểm phản ứng với vụ &aacute;m s&aacute;t &ocirc;ng Haniyeh, theo t&igrave;nh b&aacute;o Israel.</p>\r\n<p class=\"description\">Giới qu&acirc;n sự Iran muốn trừng phạt Israel quyết liệt để b&aacute;o th&ugrave; cho thủ lĩnh Hamas, nhưng Tổng thống Pezeshkian đề nghị phản ứng nhẹ nh&agrave;ng hơn, theo t&igrave;nh b&aacute;o Israel.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">Tranh c&atilde;i gần đ&acirc;y nổ ra giữa Vệ binh C&aacute;ch mạng Hồi gi&aacute;o Iran (IRGC) với Tổng thống Iran Masoud Pezeshkian về biện ph&aacute;p đ&aacute;p trả Israel sau vụ &aacute;m s&aacute;t thủ lĩnh Hamas Ismail Haniyeh tại Tehran,&nbsp;<em>Jerusalem Post</em>, tờ b&aacute;o h&agrave;ng đầu Israel, dẫn c&aacute;c nguồn tin trong lực lượng t&igrave;nh b&aacute;o nước n&agrave;y ng&agrave;y 11/8 cho biết.</p>\r\n<p class=\"Normal\">Tranh c&atilde;i nổ ra gần đ&acirc;y giữa c&aacute;c l&atilde;nh đạo ch&iacute;nh trị v&agrave; qu&acirc;n sự Iran, tập trung v&agrave;o bản chất v&agrave; thời điểm phản ứng với vụ &aacute;m s&aacute;t &ocirc;ng Haniyeh, theo t&igrave;nh b&aacute;o Israel.</p>\r\n<p class=\"description\">Giới qu&acirc;n sự Iran muốn trừng phạt Israel quyết liệt để b&aacute;o th&ugrave; cho thủ lĩnh Hamas, nhưng Tổng thống Pezeshkian đề nghị phản ứng nhẹ nh&agrave;ng hơn, theo t&igrave;nh b&aacute;o Israel.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">Tranh c&atilde;i gần đ&acirc;y nổ ra giữa Vệ binh C&aacute;ch mạng Hồi gi&aacute;o Iran (IRGC) với Tổng thống Iran Masoud Pezeshkian về biện ph&aacute;p đ&aacute;p trả Israel sau vụ &aacute;m s&aacute;t thủ lĩnh Hamas Ismail Haniyeh tại Tehran,&nbsp;<em>Jerusalem Post</em>, tờ b&aacute;o h&agrave;ng đầu Israel, dẫn c&aacute;c nguồn tin trong lực lượng t&igrave;nh b&aacute;o nước n&agrave;y ng&agrave;y 11/8 cho biết.</p>\r\n<p class=\"Normal\">Tranh c&atilde;i nổ ra gần đ&acirc;y giữa c&aacute;c l&atilde;nh đạo ch&iacute;nh trị v&agrave; qu&acirc;n sự Iran, tập trung v&agrave;o bản chất v&agrave; thời điểm phản ứng với vụ &aacute;m s&aacute;t &ocirc;ng Haniyeh, theo t&igrave;nh b&aacute;o Israel.</p>\r\n<p class=\"description\">Giới qu&acirc;n sự Iran muốn trừng phạt Israel quyết liệt để b&aacute;o th&ugrave; cho thủ lĩnh Hamas, nhưng Tổng thống Pezeshkian đề nghị phản ứng nhẹ nh&agrave;ng hơn, theo t&igrave;nh b&aacute;o Israel.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">Tranh c&atilde;i gần đ&acirc;y nổ ra giữa Vệ binh C&aacute;ch mạng Hồi gi&aacute;o Iran (IRGC) với Tổng thống Iran Masoud Pezeshkian về biện ph&aacute;p đ&aacute;p trả Israel sau vụ &aacute;m s&aacute;t thủ lĩnh Hamas Ismail Haniyeh tại Tehran,&nbsp;<em>Jerusalem Post</em>, tờ b&aacute;o h&agrave;ng đầu Israel, dẫn c&aacute;c nguồn tin trong lực lượng t&igrave;nh b&aacute;o nước n&agrave;y ng&agrave;y 11/8 cho biết.</p>\r\n<p class=\"Normal\">Tranh c&atilde;i nổ ra gần đ&acirc;y giữa c&aacute;c l&atilde;nh đạo ch&iacute;nh trị v&agrave; qu&acirc;n sự Iran, tập trung v&agrave;o bản chất v&agrave; thời điểm phản ứng với vụ &aacute;m s&aacute;t &ocirc;ng Haniyeh, theo t&igrave;nh b&aacute;o Israel.</p>\r\n<p class=\"description\">Giới qu&acirc;n sự Iran muốn trừng phạt Israel quyết liệt để b&aacute;o th&ugrave; cho thủ lĩnh Hamas, nhưng Tổng thống Pezeshkian đề nghị phản ứng nhẹ nh&agrave;ng hơn, theo t&igrave;nh b&aacute;o Israel.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">Tranh c&atilde;i gần đ&acirc;y nổ ra giữa Vệ binh C&aacute;ch mạng Hồi gi&aacute;o Iran (IRGC) với Tổng thống Iran Masoud Pezeshkian về biện ph&aacute;p đ&aacute;p trả Israel sau vụ &aacute;m s&aacute;t thủ lĩnh Hamas Ismail Haniyeh tại Tehran,&nbsp;<em>Jerusalem Post</em>, tờ b&aacute;o h&agrave;ng đầu Israel, dẫn c&aacute;c nguồn tin trong lực lượng t&igrave;nh b&aacute;o nước n&agrave;y ng&agrave;y 11/8 cho biết.</p>\r\n<p class=\"Normal\">Tranh c&atilde;i nổ ra gần đ&acirc;y giữa c&aacute;c l&atilde;nh đạo ch&iacute;nh trị v&agrave; qu&acirc;n sự Iran, tập trung v&agrave;o bản chất v&agrave; thời điểm phản ứng với vụ &aacute;m s&aacute;t &ocirc;ng Haniyeh, theo t&igrave;nh b&aacute;o Israel.</p>\r\n<p class=\"description\">Giới qu&acirc;n sự Iran muốn trừng phạt Israel quyết liệt để b&aacute;o th&ugrave; cho thủ lĩnh Hamas, nhưng Tổng thống Pezeshkian đề nghị phản ứng nhẹ nh&agrave;ng hơn, theo t&igrave;nh b&aacute;o Israel.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">Tranh c&atilde;i gần đ&acirc;y nổ ra giữa Vệ binh C&aacute;ch mạng Hồi gi&aacute;o Iran (IRGC) với Tổng thống Iran Masoud Pezeshkian về biện ph&aacute;p đ&aacute;p trả Israel sau vụ &aacute;m s&aacute;t thủ lĩnh Hamas Ismail Haniyeh tại Tehran,&nbsp;<em>Jerusalem Post</em>, tờ b&aacute;o h&agrave;ng đầu Israel, dẫn c&aacute;c nguồn tin trong lực lượng t&igrave;nh b&aacute;o nước n&agrave;y ng&agrave;y 11/8 cho biết.</p>\r\n<p class=\"Normal\">Tranh c&atilde;i nổ ra gần đ&acirc;y giữa c&aacute;c l&atilde;nh đạo ch&iacute;nh trị v&agrave; qu&acirc;n sự Iran, tập trung v&agrave;o bản chất v&agrave; thời điểm phản ứng với vụ &aacute;m s&aacute;t &ocirc;ng Haniyeh, theo t&igrave;nh b&aacute;o Israel.</p>\r\n</article>\r\n</article>\r\n</article>\r\n</article>\r\n</article>\r\n</article>', 'news/images/articles/82369ef7-8f72-489b-8ac1-bcc15730d583.jpeg', 4, 1),
(13, 'Ferdinand: \'Mourinho không còn đẳng cấp dẫn dắt CLB châu Âu\'', 'ferdinand-mourinho-khong-con-dang-cap-dan-dat-clb-chau-au', 'public', 1, 0, '2024-08-15 07:13:53.000000', '<p class=\"description\">Cựu hậu vệ Rio Ferdinand ch&ecirc; HLV Jose Mourinho kh&ocirc;ng c&ograve;n đẳng cấp ph&ugrave; hợp để l&agrave;m việc ở ch&acirc;u &Acirc;u, sau khi &ocirc;ng c&ugrave;ng Fenerbahce thua Lille ở v&ograve;ng loại Champions League.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\"Trận với Lille cho thấy ch&uacute;ng ta thấy tại sao Mourinho kh&ocirc;ng c&ograve;n ở đẳng cấp ph&ugrave; hợp để dẫn dắt một CLB ch&acirc;u &Acirc;u. Thay v&igrave; chỉ tr&iacute;ch trọng t&agrave;i, Mourinho n&ecirc;n tập trung v&agrave;o b&oacute;ng đ&aacute;, bởi trận đấu được định đoạt bằng c&aacute;c t&igrave;nh huống tr&ecirc;n s&acirc;n\", tờ&nbsp;<em>Mundo Deportivo</em> dẫn lời Ferdinand.</p>\r\n<p class=\"description\">Cựu hậu vệ Rio Ferdinand ch&ecirc; HLV Jose Mourinho kh&ocirc;ng c&ograve;n đẳng cấp ph&ugrave; hợp để l&agrave;m việc ở ch&acirc;u &Acirc;u, sau khi &ocirc;ng c&ugrave;ng Fenerbahce thua Lille ở v&ograve;ng loại Champions League.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\"Trận với Lille cho thấy ch&uacute;ng ta thấy tại sao Mourinho kh&ocirc;ng c&ograve;n ở đẳng cấp ph&ugrave; hợp để dẫn dắt một CLB ch&acirc;u &Acirc;u. Thay v&igrave; chỉ tr&iacute;ch trọng t&agrave;i, Mourinho n&ecirc;n tập trung v&agrave;o b&oacute;ng đ&aacute;, bởi trận đấu được định đoạt bằng c&aacute;c t&igrave;nh huống tr&ecirc;n s&acirc;n\", tờ&nbsp;<em>Mundo Deportivo</em> dẫn lời Ferdinand.</p>\r\n<p class=\"description\">Cựu hậu vệ Rio Ferdinand ch&ecirc; HLV Jose Mourinho kh&ocirc;ng c&ograve;n đẳng cấp ph&ugrave; hợp để l&agrave;m việc ở ch&acirc;u &Acirc;u, sau khi &ocirc;ng c&ugrave;ng Fenerbahce thua Lille ở v&ograve;ng loại Champions League.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\"Trận với Lille cho thấy ch&uacute;ng ta thấy tại sao Mourinho kh&ocirc;ng c&ograve;n ở đẳng cấp ph&ugrave; hợp để dẫn dắt một CLB ch&acirc;u &Acirc;u. Thay v&igrave; chỉ tr&iacute;ch trọng t&agrave;i, Mourinho n&ecirc;n tập trung v&agrave;o b&oacute;ng đ&aacute;, bởi trận đấu được định đoạt bằng c&aacute;c t&igrave;nh huống tr&ecirc;n s&acirc;n\", tờ&nbsp;<em>Mundo Deportivo</em> dẫn lời Ferdinand.</p>\r\n<p class=\"description\">Cựu hậu vệ Rio Ferdinand ch&ecirc; HLV Jose Mourinho kh&ocirc;ng c&ograve;n đẳng cấp ph&ugrave; hợp để l&agrave;m việc ở ch&acirc;u &Acirc;u, sau khi &ocirc;ng c&ugrave;ng Fenerbahce thua Lille ở v&ograve;ng loại Champions League.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\"Trận với Lille cho thấy ch&uacute;ng ta thấy tại sao Mourinho kh&ocirc;ng c&ograve;n ở đẳng cấp ph&ugrave; hợp để dẫn dắt một CLB ch&acirc;u &Acirc;u. Thay v&igrave; chỉ tr&iacute;ch trọng t&agrave;i, Mourinho n&ecirc;n tập trung v&agrave;o b&oacute;ng đ&aacute;, bởi trận đấu được định đoạt bằng c&aacute;c t&igrave;nh huống tr&ecirc;n s&acirc;n\", tờ&nbsp;<em>Mundo Deportivo</em> dẫn lời Ferdinand.</p>\r\n<p class=\"description\">Cựu hậu vệ Rio Ferdinand ch&ecirc; HLV Jose Mourinho kh&ocirc;ng c&ograve;n đẳng cấp ph&ugrave; hợp để l&agrave;m việc ở ch&acirc;u &Acirc;u, sau khi &ocirc;ng c&ugrave;ng Fenerbahce thua Lille ở v&ograve;ng loại Champions League.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\"Trận với Lille cho thấy ch&uacute;ng ta thấy tại sao Mourinho kh&ocirc;ng c&ograve;n ở đẳng cấp ph&ugrave; hợp để dẫn dắt một CLB ch&acirc;u &Acirc;u. Thay v&igrave; chỉ tr&iacute;ch trọng t&agrave;i, Mourinho n&ecirc;n tập trung v&agrave;o b&oacute;ng đ&aacute;, bởi trận đấu được định đoạt bằng c&aacute;c t&igrave;nh huống tr&ecirc;n s&acirc;n\", tờ&nbsp;<em>Mundo Deportivo</em> dẫn lời Ferdinand.</p>\r\n<p class=\"description\">Cựu hậu vệ Rio Ferdinand ch&ecirc; HLV Jose Mourinho kh&ocirc;ng c&ograve;n đẳng cấp ph&ugrave; hợp để l&agrave;m việc ở ch&acirc;u &Acirc;u, sau khi &ocirc;ng c&ugrave;ng Fenerbahce thua Lille ở v&ograve;ng loại Champions League.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\"Trận với Lille cho thấy ch&uacute;ng ta thấy tại sao Mourinho kh&ocirc;ng c&ograve;n ở đẳng cấp ph&ugrave; hợp để dẫn dắt một CLB ch&acirc;u &Acirc;u. Thay v&igrave; chỉ tr&iacute;ch trọng t&agrave;i, Mourinho n&ecirc;n tập trung v&agrave;o b&oacute;ng đ&aacute;, bởi trận đấu được định đoạt bằng c&aacute;c t&igrave;nh huống tr&ecirc;n s&acirc;n\", tờ&nbsp;<em>Mundo Deportivo</em> dẫn lời Ferdinand.</p>\r\n</article>\r\n</article>\r\n</article>\r\n</article>\r\n</article>\r\n</article>', 'news/images/articles/0b83e988-3c37-4518-81d7-9a4a35ce3c09.jpg', 5, 1),
(14, 'Mourinho trách VAR khi đội nhà bị loại khỏi Champions League', 'mourinho-trach-var-khi-doi-nha-bi-loai-khoi-champions-league', 'public', 2, 0, '2024-08-15 07:14:37.000000', '<p class=\"Normal\">Fenerbahce chỉ về nh&igrave; giải VĐQG Thổ Nhĩ K&igrave; m&ugrave;a trước, n&ecirc;n phải đ&aacute; từ v&ograve;ng loại hai Champions League 2024-2025. Dưới trướng Mourinho, đội thắng Lugano (Thụy Sĩ) 6-4, để v&agrave;o v&ograve;ng loại ba gặp Lille. Trong trận lượt đi ở Ph&aacute;p h&ocirc;m 6/8, Fenerbahce thua 1-2 ở ph&uacute;t b&ugrave; hiệp hai.</p>\r\n<p class=\"Normal\">Đến lượt về tối 13/8, hậu vệ Bafode Diakite phản lưới cũng ở ph&uacute;t b&ugrave; đầu ti&ecirc;n hiệp hai, đưa Fenerbahce v&agrave;o hiệp phụ. Nhưng v&agrave;o ph&uacute;t 118, tiền đạo Jonathan David s&uacute;t phạt đền ấn định thắng lợi tổng tỷ số 3-2 cho Lille, gi&uacute;p họ v&agrave;o v&ograve;ng loại cuối c&ugrave;ng, đẩy Fenerbahce xuống v&ograve;ng đấu ch&iacute;nh Europa League.</p>\r\n<p class=\"Normal\">Fenerbahce chỉ về nh&igrave; giải VĐQG Thổ Nhĩ K&igrave; m&ugrave;a trước, n&ecirc;n phải đ&aacute; từ v&ograve;ng loại hai Champions League 2024-2025. Dưới trướng Mourinho, đội thắng Lugano (Thụy Sĩ) 6-4, để v&agrave;o v&ograve;ng loại ba gặp Lille. Trong trận lượt đi ở Ph&aacute;p h&ocirc;m 6/8, Fenerbahce thua 1-2 ở ph&uacute;t b&ugrave; hiệp hai.</p>\r\n<p class=\"Normal\">Đến lượt về tối 13/8, hậu vệ Bafode Diakite phản lưới cũng ở ph&uacute;t b&ugrave; đầu ti&ecirc;n hiệp hai, đưa Fenerbahce v&agrave;o hiệp phụ. Nhưng v&agrave;o ph&uacute;t 118, tiền đạo Jonathan David s&uacute;t phạt đền ấn định thắng lợi tổng tỷ số 3-2 cho Lille, gi&uacute;p họ v&agrave;o v&ograve;ng loại cuối c&ugrave;ng, đẩy Fenerbahce xuống v&ograve;ng đấu ch&iacute;nh Europa League.</p>\r\n<p class=\"Normal\">Fenerbahce chỉ về nh&igrave; giải VĐQG Thổ Nhĩ K&igrave; m&ugrave;a trước, n&ecirc;n phải đ&aacute; từ v&ograve;ng loại hai Champions League 2024-2025. Dưới trướng Mourinho, đội thắng Lugano (Thụy Sĩ) 6-4, để v&agrave;o v&ograve;ng loại ba gặp Lille. Trong trận lượt đi ở Ph&aacute;p h&ocirc;m 6/8, Fenerbahce thua 1-2 ở ph&uacute;t b&ugrave; hiệp hai.</p>\r\n<p class=\"Normal\">Đến lượt về tối 13/8, hậu vệ Bafode Diakite phản lưới cũng ở ph&uacute;t b&ugrave; đầu ti&ecirc;n hiệp hai, đưa Fenerbahce v&agrave;o hiệp phụ. Nhưng v&agrave;o ph&uacute;t 118, tiền đạo Jonathan David s&uacute;t phạt đền ấn định thắng lợi tổng tỷ số 3-2 cho Lille, gi&uacute;p họ v&agrave;o v&ograve;ng loại cuối c&ugrave;ng, đẩy Fenerbahce xuống v&ograve;ng đấu ch&iacute;nh Europa League.</p>\r\n<p class=\"Normal\">Fenerbahce chỉ về nh&igrave; giải VĐQG Thổ Nhĩ K&igrave; m&ugrave;a trước, n&ecirc;n phải đ&aacute; từ v&ograve;ng loại hai Champions League 2024-2025. Dưới trướng Mourinho, đội thắng Lugano (Thụy Sĩ) 6-4, để v&agrave;o v&ograve;ng loại ba gặp Lille. Trong trận lượt đi ở Ph&aacute;p h&ocirc;m 6/8, Fenerbahce thua 1-2 ở ph&uacute;t b&ugrave; hiệp hai.</p>\r\n<p class=\"Normal\">Đến lượt về tối 13/8, hậu vệ Bafode Diakite phản lưới cũng ở ph&uacute;t b&ugrave; đầu ti&ecirc;n hiệp hai, đưa Fenerbahce v&agrave;o hiệp phụ. Nhưng v&agrave;o ph&uacute;t 118, tiền đạo Jonathan David s&uacute;t phạt đền ấn định thắng lợi tổng tỷ số 3-2 cho Lille, gi&uacute;p họ v&agrave;o v&ograve;ng loại cuối c&ugrave;ng, đẩy Fenerbahce xuống v&ograve;ng đấu ch&iacute;nh Europa League.</p>\r\n<p class=\"Normal\">Fenerbahce chỉ về nh&igrave; giải VĐQG Thổ Nhĩ K&igrave; m&ugrave;a trước, n&ecirc;n phải đ&aacute; từ v&ograve;ng loại hai Champions League 2024-2025. Dưới trướng Mourinho, đội thắng Lugano (Thụy Sĩ) 6-4, để v&agrave;o v&ograve;ng loại ba gặp Lille. Trong trận lượt đi ở Ph&aacute;p h&ocirc;m 6/8, Fenerbahce thua 1-2 ở ph&uacute;t b&ugrave; hiệp hai.</p>\r\n<p class=\"Normal\">Đến lượt về tối 13/8, hậu vệ Bafode Diakite phản lưới cũng ở ph&uacute;t b&ugrave; đầu ti&ecirc;n hiệp hai, đưa Fenerbahce v&agrave;o hiệp phụ. Nhưng v&agrave;o ph&uacute;t 118, tiền đạo Jonathan David s&uacute;t phạt đền ấn định thắng lợi tổng tỷ số 3-2 cho Lille, gi&uacute;p họ v&agrave;o v&ograve;ng loại cuối c&ugrave;ng, đẩy Fenerbahce xuống v&ograve;ng đấu ch&iacute;nh Europa League.</p>', 'news/images/articles/4e8334db-ed5d-435c-a491-cc1d7af5a91d.jpg', 5, 1),
(15, 'Fenerbahce chỉ về nhì giải VĐQG Thổ Nhĩ Kì mùa trước, nên phải đá từ vòng loại hai Champions League', 'fenerbahce-chi-ve-nhi-giai-vdqg-tho-nhi-ki-mua-truoc-nen-phai-da-tu-vong-loai-hai-champions-league', 'public', 3, 1, '2024-08-15 07:15:07.000000', '<p class=\"description\">HLV Jose Mourinho nhắc lại việc từng trao cơ hội ra mắt đội một Real Madrid cho Alvaro Morata v&agrave; Nacho - bộ đ&ocirc;i vừa c&ugrave;ng T&acirc;y Ban Nha v&ocirc; địch Euro 2024.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\"Đội trưởng của CLB v&ocirc; địch Champions League 2024 Nacho Fernandez v&agrave; đội trưởng của đội tuyển v&ocirc; địch Euro 2024 Alvaro Morata. Gửi lời ch&uacute;c mừng đến cả hai v&agrave; đến HLV đ&atilde; gi&uacute;p họ c&oacute; m&agrave;n ra mắt đội một Real khi họ đang ở học viện\", Mourinho viết tr&ecirc;n&nbsp;<em>Instagram</em>, đăng k&egrave;m ảnh chụp c&ugrave;ng Morata v&agrave; Nacho khi c&ograve;n l&agrave;m việc tại Real.</p>\r\n<p class=\"description\">HLV Jose Mourinho nhắc lại việc từng trao cơ hội ra mắt đội một Real Madrid cho Alvaro Morata v&agrave; Nacho - bộ đ&ocirc;i vừa c&ugrave;ng T&acirc;y Ban Nha v&ocirc; địch Euro 2024.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\"Đội trưởng của CLB v&ocirc; địch Champions League 2024 Nacho Fernandez v&agrave; đội trưởng của đội tuyển v&ocirc; địch Euro 2024 Alvaro Morata. Gửi lời ch&uacute;c mừng đến cả hai v&agrave; đến HLV đ&atilde; gi&uacute;p họ c&oacute; m&agrave;n ra mắt đội một Real khi họ đang ở học viện\", Mourinho viết tr&ecirc;n&nbsp;<em>Instagram</em>, đăng k&egrave;m ảnh chụp c&ugrave;ng Morata v&agrave; Nacho khi c&ograve;n l&agrave;m việc tại Real.</p>\r\n<p class=\"description\">HLV Jose Mourinho nhắc lại việc từng trao cơ hội ra mắt đội một Real Madrid cho Alvaro Morata v&agrave; Nacho - bộ đ&ocirc;i vừa c&ugrave;ng T&acirc;y Ban Nha v&ocirc; địch Euro 2024.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\"Đội trưởng của CLB v&ocirc; địch Champions League 2024 Nacho Fernandez v&agrave; đội trưởng của đội tuyển v&ocirc; địch Euro 2024 Alvaro Morata. Gửi lời ch&uacute;c mừng đến cả hai v&agrave; đến HLV đ&atilde; gi&uacute;p họ c&oacute; m&agrave;n ra mắt đội một Real khi họ đang ở học viện\", Mourinho viết tr&ecirc;n&nbsp;<em>Instagram</em>, đăng k&egrave;m ảnh chụp c&ugrave;ng Morata v&agrave; Nacho khi c&ograve;n l&agrave;m việc tại Real.</p>\r\n<p class=\"description\">HLV Jose Mourinho nhắc lại việc từng trao cơ hội ra mắt đội một Real Madrid cho Alvaro Morata v&agrave; Nacho - bộ đ&ocirc;i vừa c&ugrave;ng T&acirc;y Ban Nha v&ocirc; địch Euro 2024.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\"Đội trưởng của CLB v&ocirc; địch Champions League 2024 Nacho Fernandez v&agrave; đội trưởng của đội tuyển v&ocirc; địch Euro 2024 Alvaro Morata. Gửi lời ch&uacute;c mừng đến cả hai v&agrave; đến HLV đ&atilde; gi&uacute;p họ c&oacute; m&agrave;n ra mắt đội một Real khi họ đang ở học viện\", Mourinho viết tr&ecirc;n&nbsp;<em>Instagram</em>, đăng k&egrave;m ảnh chụp c&ugrave;ng Morata v&agrave; Nacho khi c&ograve;n l&agrave;m việc tại Real.</p>\r\n<p class=\"description\">HLV Jose Mourinho nhắc lại việc từng trao cơ hội ra mắt đội một Real Madrid cho Alvaro Morata v&agrave; Nacho - bộ đ&ocirc;i vừa c&ugrave;ng T&acirc;y Ban Nha v&ocirc; địch Euro 2024.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\"Đội trưởng của CLB v&ocirc; địch Champions League 2024 Nacho Fernandez v&agrave; đội trưởng của đội tuyển v&ocirc; địch Euro 2024 Alvaro Morata. Gửi lời ch&uacute;c mừng đến cả hai v&agrave; đến HLV đ&atilde; gi&uacute;p họ c&oacute; m&agrave;n ra mắt đội một Real khi họ đang ở học viện\", Mourinho viết tr&ecirc;n&nbsp;<em>Instagram</em>, đăng k&egrave;m ảnh chụp c&ugrave;ng Morata v&agrave; Nacho khi c&ograve;n l&agrave;m việc tại Real.</p>\r\n<p class=\"description\">HLV Jose Mourinho nhắc lại việc từng trao cơ hội ra mắt đội một Real Madrid cho Alvaro Morata v&agrave; Nacho - bộ đ&ocirc;i vừa c&ugrave;ng T&acirc;y Ban Nha v&ocirc; địch Euro 2024.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\"Đội trưởng của CLB v&ocirc; địch Champions League 2024 Nacho Fernandez v&agrave; đội trưởng của đội tuyển v&ocirc; địch Euro 2024 Alvaro Morata. Gửi lời ch&uacute;c mừng đến cả hai v&agrave; đến HLV đ&atilde; gi&uacute;p họ c&oacute; m&agrave;n ra mắt đội một Real khi họ đang ở học viện\", Mourinho viết tr&ecirc;n&nbsp;<em>Instagram</em>, đăng k&egrave;m ảnh chụp c&ugrave;ng Morata v&agrave; Nacho khi c&ograve;n l&agrave;m việc tại Real.</p>\r\n<p class=\"description\">HLV Jose Mourinho nhắc lại việc từng trao cơ hội ra mắt đội một Real Madrid cho Alvaro Morata v&agrave; Nacho - bộ đ&ocirc;i vừa c&ugrave;ng T&acirc;y Ban Nha v&ocirc; địch Euro 2024.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\"Đội trưởng của CLB v&ocirc; địch Champions League 2024 Nacho Fernandez v&agrave; đội trưởng của đội tuyển v&ocirc; địch Euro 2024 Alvaro Morata. Gửi lời ch&uacute;c mừng đến cả hai v&agrave; đến HLV đ&atilde; gi&uacute;p họ c&oacute; m&agrave;n ra mắt đội một Real khi họ đang ở học viện\", Mourinho viết tr&ecirc;n&nbsp;<em>Instagram</em>, đăng k&egrave;m ảnh chụp c&ugrave;ng Morata v&agrave; Nacho khi c&ograve;n l&agrave;m việc tại Real.</p>\r\n</article>\r\n</article>\r\n</article>\r\n</article>\r\n</article>\r\n</article>\r\n</article>', 'news/images/articles/b1e48baa-35a8-4c13-9bbc-e6c4c4326360.jpeg', 5, 1),
(16, 'HLV Jose Mourinho nhắc lại việc từng trao cơ hội ra mắt đội một Real Madrid cho Alvaro Morata và Nac', 'hlv-jose-mourinho-nhac-lai-viec-tung-trao-co-hoi-ra-mat-doi-mot-real-madrid-cho-alvaro-morata-va-nac', 'public', 4, 0, '2024-08-15 07:15:33.000000', '<p>Ở chung kết Euro 2020 tr&ecirc;n s&acirc;n Wembley, London, d&ugrave; được đ&aacute; trước kh&aacute;n giả nh&agrave;, Anh chỉ cầm b&oacute;ng 34%, dứt điểm s&aacute;u lần với hai c&uacute; tr&uacute;ng đ&iacute;ch - so với 19 v&agrave; s&aacute;u của Italy. D&ugrave; mở tỷ số ngay ph&uacute;t 2 nhờ c&ocirc;ng Luke Shaw, họ để Leonardo Bonucci qu&acirc;n b&igrave;nh tỷ số 1-1 rồi thua 2-3 trong loạt lu&acirc;n lưu.Ở chung kết Euro 2020 tr&ecirc;n s&acirc;n Wembley, London, d&ugrave; được đ&aacute; trước kh&aacute;n giả nh&agrave;, Anh chỉ cầm b&oacute;ng 34%, dứt điểm s&aacute;u lần với hai c&uacute; tr&uacute;ng đ&iacute;ch - so với 19 v&agrave; s&aacute;u của Italy. D&ugrave; mở tỷ số ngay ph&uacute;t 2 nhờ c&ocirc;ng Luke Shaw, họ để Leonardo Bonucci qu&acirc;n b&igrave;nh tỷ số 1-1 rồi thua 2-3 trong loạt lu&acirc;n lưu.Ở chung kết Euro 2020 tr&ecirc;n s&acirc;n Wembley, London, d&ugrave; được đ&aacute; trước kh&aacute;n giả nh&agrave;, Anh chỉ cầm b&oacute;ng 34%, dứt điểm s&aacute;u lần với hai c&uacute; tr&uacute;ng đ&iacute;ch - so với 19 v&agrave; s&aacute;u của Italy. D&ugrave; mở tỷ số ngay ph&uacute;t 2 nhờ c&ocirc;ng Luke Shaw, họ để Leonardo Bonucci qu&acirc;n b&igrave;nh tỷ số 1-1 rồi thua 2-3 trong loạt lu&acirc;n lưu.Ở chung kết Euro 2020 tr&ecirc;n s&acirc;n Wembley, London, d&ugrave; được đ&aacute; trước kh&aacute;n giả nh&agrave;, Anh chỉ cầm b&oacute;ng 34%, dứt điểm s&aacute;u lần với hai c&uacute; tr&uacute;ng đ&iacute;ch - so với 19 v&agrave; s&aacute;u của Italy. D&ugrave; mở tỷ số ngay ph&uacute;t 2 nhờ c&ocirc;ng Luke Shaw, họ để Leonardo Bonucci qu&acirc;n b&igrave;nh tỷ số 1-1 rồi thua 2-3 trong loạt lu&acirc;n lưu.Ở chung kết Euro 2020 tr&ecirc;n s&acirc;n Wembley, London, d&ugrave; được đ&aacute; trước kh&aacute;n giả nh&agrave;, Anh chỉ cầm b&oacute;ng 34%, dứt điểm s&aacute;u lần với hai c&uacute; tr&uacute;ng đ&iacute;ch - so với 19 v&agrave; s&aacute;u của Italy. D&ugrave; mở tỷ số ngay ph&uacute;t 2 nhờ c&ocirc;ng Luke Shaw, họ để Leonardo Bonucci qu&acirc;n b&igrave;nh tỷ số 1-1 rồi thua 2-3 trong loạt lu&acirc;n lưu.Ở chung kết Euro 2020 tr&ecirc;n s&acirc;n Wembley, London, d&ugrave; được đ&aacute; trước kh&aacute;n giả nh&agrave;, Anh chỉ cầm b&oacute;ng 34%, dứt điểm s&aacute;u lần với hai c&uacute; tr&uacute;ng đ&iacute;ch - so với 19 v&agrave; s&aacute;u của Italy. D&ugrave; mở tỷ số ngay ph&uacute;t 2 nhờ c&ocirc;ng Luke Shaw, họ để Leonardo Bonucci qu&acirc;n b&igrave;nh tỷ số 1-1 rồi thua 2-3 trong loạt lu&acirc;n lưu.Ở chung kết Euro 2020 tr&ecirc;n s&acirc;n Wembley, London, d&ugrave; được đ&aacute; trước kh&aacute;n giả nh&agrave;, Anh chỉ cầm b&oacute;ng 34%, dứt điểm s&aacute;u lần với hai c&uacute; tr&uacute;ng đ&iacute;ch - so với 19 v&agrave; s&aacute;u của Italy. D&ugrave; mở tỷ số ngay ph&uacute;t 2 nhờ c&ocirc;ng Luke Shaw, họ để Leonardo Bonucci qu&acirc;n b&igrave;nh tỷ số 1-1 rồi thua 2-3 trong loạt lu&acirc;n lưu.Ở chung kết Euro 2020 tr&ecirc;n s&acirc;n Wembley, London, d&ugrave; được đ&aacute; trước kh&aacute;n giả nh&agrave;, Anh chỉ cầm b&oacute;ng 34%, dứt điểm s&aacute;u lần với hai c&uacute; tr&uacute;ng đ&iacute;ch - so với 19 v&agrave; s&aacute;u của Italy. D&ugrave; mở tỷ số ngay ph&uacute;t 2 nhờ c&ocirc;ng Luke Shaw, họ để Leonardo Bonucci qu&acirc;n b&igrave;nh tỷ số 1-1 rồi thua 2-3 trong loạt lu&acirc;n lưu.Ở chung kết Euro 2020 tr&ecirc;n s&acirc;n Wembley, London, d&ugrave; được đ&aacute; trước kh&aacute;n giả nh&agrave;, Anh chỉ cầm b&oacute;ng 34%, dứt điểm s&aacute;u lần với hai c&uacute; tr&uacute;ng đ&iacute;ch - so với 19 v&agrave; s&aacute;u của Italy. D&ugrave; mở tỷ số ngay ph&uacute;t 2 nhờ c&ocirc;ng Luke Shaw, họ để Leonardo Bonucci qu&acirc;n b&igrave;nh tỷ số 1-1 rồi thua 2-3 trong loạt lu&acirc;n lưu.</p>\r\n<p>&nbsp;</p>\r\n<p>Ở chung kết Euro 2020 tr&ecirc;n s&acirc;n Wembley, London, d&ugrave; được đ&aacute; trước kh&aacute;n giả nh&agrave;, Anh chỉ cầm b&oacute;ng 34%, dứt điểm s&aacute;u lần với hai c&uacute; tr&uacute;ng đ&iacute;ch - so với 19 v&agrave; s&aacute;u của Italy. D&ugrave; mở tỷ số ngay ph&uacute;t 2 nhờ c&ocirc;ng Luke Shaw, họ để Leonardo Bonucci qu&acirc;n b&igrave;nh tỷ số 1-1 rồi thua 2-3 trong loạt lu&acirc;n lưu.Ở chung kết Euro 2020 tr&ecirc;n s&acirc;n Wembley, London, d&ugrave; được đ&aacute; trước kh&aacute;n giả nh&agrave;, Anh chỉ cầm b&oacute;ng 34%, dứt điểm s&aacute;u lần với hai c&uacute; tr&uacute;ng đ&iacute;ch - so với 19 v&agrave; s&aacute;u của Italy. D&ugrave; mở tỷ số ngay ph&uacute;t 2 nhờ c&ocirc;ng Luke Shaw, họ để Leonardo Bonucci qu&acirc;n b&igrave;nh tỷ số 1-1 rồi thua 2-3 trong loạt lu&acirc;n lưu.</p>', 'news/images/articles/acd32300-8f81-4f44-8f40-cf8049bfed73.jpeg', 5, 1),
(17, 'Bellingham đá tung thùng nước, cầu thủ Anh chìm trong nước mắt', 'bellingham-da-tung-thung-nuoc-cau-thu-anh-chim-trong-nuoc-mat', 'public', 5, 1, '2024-08-14 07:16:01.000000', '<p class=\"Normal\">Đội trưởng Harry Kane an ủi đ&agrave;n em. Đ&acirc;y l&agrave; thất bại đầu ti&ecirc;n của Jude Bellingham m&ugrave;a n&agrave;y, sau khi c&ugrave;ng Real Madrid v&ocirc; địch Champions League v&agrave; La Liga.</p>\r\n<p class=\"Normal\">Bellingham g&oacute;p c&ocirc;ng v&agrave;o h&agrave;nh tr&igrave;nh đến chung kết Euro 2024 của Anh. Tiền vệ sinh năm 2003 ghi b&agrave;n duy nhất để hạ Serbia ở v&ograve;ng bảng, rồi tung người m&oacute;c b&oacute;ng đưa Anh \"từ c&otilde;i chết trở về\", để gỡ ho&agrave; 1-1, ở ph&uacute;t b&ugrave; thứ năm v&ograve;ng 1/8 với Slovakia.</p>\r\n<p class=\"Normal\">Đội trưởng Harry Kane an ủi đ&agrave;n em. Đ&acirc;y l&agrave; thất bại đầu ti&ecirc;n của Jude Bellingham m&ugrave;a n&agrave;y, sau khi c&ugrave;ng Real Madrid v&ocirc; địch Champions League v&agrave; La Liga.</p>\r\n<p class=\"Normal\">Bellingham g&oacute;p c&ocirc;ng v&agrave;o h&agrave;nh tr&igrave;nh đến chung kết Euro 2024 của Anh. Tiền vệ sinh năm 2003 ghi b&agrave;n duy nhất để hạ Serbia ở v&ograve;ng bảng, rồi tung người m&oacute;c b&oacute;ng đưa Anh \"từ c&otilde;i chết trở về\", để gỡ ho&agrave; 1-1, ở ph&uacute;t b&ugrave; thứ năm v&ograve;ng 1/8 với Slovakia.</p>\r\n<p class=\"Normal\">Đội trưởng Harry Kane an ủi đ&agrave;n em. Đ&acirc;y l&agrave; thất bại đầu ti&ecirc;n của Jude Bellingham m&ugrave;a n&agrave;y, sau khi c&ugrave;ng Real Madrid v&ocirc; địch Champions League v&agrave; La Liga.</p>\r\n<p class=\"Normal\">Bellingham g&oacute;p c&ocirc;ng v&agrave;o h&agrave;nh tr&igrave;nh đến chung kết Euro 2024 của Anh. Tiền vệ sinh năm 2003 ghi b&agrave;n duy nhất để hạ Serbia ở v&ograve;ng bảng, rồi tung người m&oacute;c b&oacute;ng đưa Anh \"từ c&otilde;i chết trở về\", để gỡ ho&agrave; 1-1, ở ph&uacute;t b&ugrave; thứ năm v&ograve;ng 1/8 với Slovakia.</p>\r\n<p class=\"Normal\">Đội trưởng Harry Kane an ủi đ&agrave;n em. Đ&acirc;y l&agrave; thất bại đầu ti&ecirc;n của Jude Bellingham m&ugrave;a n&agrave;y, sau khi c&ugrave;ng Real Madrid v&ocirc; địch Champions League v&agrave; La Liga.</p>\r\n<p class=\"Normal\">Bellingham g&oacute;p c&ocirc;ng v&agrave;o h&agrave;nh tr&igrave;nh đến chung kết Euro 2024 của Anh. Tiền vệ sinh năm 2003 ghi b&agrave;n duy nhất để hạ Serbia ở v&ograve;ng bảng, rồi tung người m&oacute;c b&oacute;ng đưa Anh \"từ c&otilde;i chết trở về\", để gỡ ho&agrave; 1-1, ở ph&uacute;t b&ugrave; thứ năm v&ograve;ng 1/8 với Slovakia.</p>\r\n<p class=\"Normal\">Đội trưởng Harry Kane an ủi đ&agrave;n em. Đ&acirc;y l&agrave; thất bại đầu ti&ecirc;n của Jude Bellingham m&ugrave;a n&agrave;y, sau khi c&ugrave;ng Real Madrid v&ocirc; địch Champions League v&agrave; La Liga.</p>\r\n<p class=\"Normal\">Bellingham g&oacute;p c&ocirc;ng v&agrave;o h&agrave;nh tr&igrave;nh đến chung kết Euro 2024 của Anh. Tiền vệ sinh năm 2003 ghi b&agrave;n duy nhất để hạ Serbia ở v&ograve;ng bảng, rồi tung người m&oacute;c b&oacute;ng đưa Anh \"từ c&otilde;i chết trở về\", để gỡ ho&agrave; 1-1, ở ph&uacute;t b&ugrave; thứ năm v&ograve;ng 1/8 với Slovakia.</p>\r\n<p class=\"Normal\">Đội trưởng Harry Kane an ủi đ&agrave;n em. Đ&acirc;y l&agrave; thất bại đầu ti&ecirc;n của Jude Bellingham m&ugrave;a n&agrave;y, sau khi c&ugrave;ng Real Madrid v&ocirc; địch Champions League v&agrave; La Liga.</p>\r\n<p class=\"Normal\">Bellingham g&oacute;p c&ocirc;ng v&agrave;o h&agrave;nh tr&igrave;nh đến chung kết Euro 2024 của Anh. Tiền vệ sinh năm 2003 ghi b&agrave;n duy nhất để hạ Serbia ở v&ograve;ng bảng, rồi tung người m&oacute;c b&oacute;ng đưa Anh \"từ c&otilde;i chết trở về\", để gỡ ho&agrave; 1-1, ở ph&uacute;t b&ugrave; thứ năm v&ograve;ng 1/8 với Slovakia.</p>\r\n<p class=\"Normal\">Đội trưởng Harry Kane an ủi đ&agrave;n em. Đ&acirc;y l&agrave; thất bại đầu ti&ecirc;n của Jude Bellingham m&ugrave;a n&agrave;y, sau khi c&ugrave;ng Real Madrid v&ocirc; địch Champions League v&agrave; La Liga.</p>\r\n<p class=\"Normal\">Bellingham g&oacute;p c&ocirc;ng v&agrave;o h&agrave;nh tr&igrave;nh đến chung kết Euro 2024 của Anh. Tiền vệ sinh năm 2003 ghi b&agrave;n duy nhất để hạ Serbia ở v&ograve;ng bảng, rồi tung người m&oacute;c b&oacute;ng đưa Anh \"từ c&otilde;i chết trở về\", để gỡ ho&agrave; 1-1, ở ph&uacute;t b&ugrave; thứ năm v&ograve;ng 1/8 với Slovakia.</p>\r\n<p class=\"Normal\">Đội trưởng Harry Kane an ủi đ&agrave;n em. Đ&acirc;y l&agrave; thất bại đầu ti&ecirc;n của Jude Bellingham m&ugrave;a n&agrave;y, sau khi c&ugrave;ng Real Madrid v&ocirc; địch Champions League v&agrave; La Liga.</p>\r\n<p class=\"Normal\">Bellingham g&oacute;p c&ocirc;ng v&agrave;o h&agrave;nh tr&igrave;nh đến chung kết Euro 2024 của Anh. Tiền vệ sinh năm 2003 ghi b&agrave;n duy nhất để hạ Serbia ở v&ograve;ng bảng, rồi tung người m&oacute;c b&oacute;ng đưa Anh \"từ c&otilde;i chết trở về\", để gỡ ho&agrave; 1-1, ở ph&uacute;t b&ugrave; thứ năm v&ograve;ng 1/8 với Slovakia.</p>\r\n<p class=\"Normal\">Đội trưởng Harry Kane an ủi đ&agrave;n em. Đ&acirc;y l&agrave; thất bại đầu ti&ecirc;n của Jude Bellingham m&ugrave;a n&agrave;y, sau khi c&ugrave;ng Real Madrid v&ocirc; địch Champions League v&agrave; La Liga.</p>\r\n<p class=\"Normal\">Bellingham g&oacute;p c&ocirc;ng v&agrave;o h&agrave;nh tr&igrave;nh đến chung kết Euro 2024 của Anh. Tiền vệ sinh năm 2003 ghi b&agrave;n duy nhất để hạ Serbia ở v&ograve;ng bảng, rồi tung người m&oacute;c b&oacute;ng đưa Anh \"từ c&otilde;i chết trở về\", để gỡ ho&agrave; 1-1, ở ph&uacute;t b&ugrave; thứ năm v&ograve;ng 1/8 với Slovakia.</p>', 'news/images/articles/b4622ddf-d606-4620-80f4-dc7cf4c79c7b.jpeg', 5, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_article_tag`
--

CREATE TABLE `news_article_tag` (
  `id` bigint(20) NOT NULL,
  `article_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news_article_tag`
--

INSERT INTO `news_article_tag` (`id`, `article_id`, `tag_id`) VALUES
(1, 17, 1),
(2, 17, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_author`
--

CREATE TABLE `news_author` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `email` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news_author`
--

INSERT INTO `news_author` (`id`, `name`, `slug`, `status`, `image`, `phone_number`, `email`) VALUES
(1, 'Bùi Thiên Bảo', 'bui-thien-bao', 'public', 'news/images/articles/62287f05-5c2b-47f3-90d2-4da4505d4033.jpg', '0777407040', 'buithienbaoo2@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_category`
--

CREATE TABLE `news_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `is_homepage` tinyint(1) NOT NULL,
  `layout` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news_category`
--

INSERT INTO `news_category` (`id`, `name`, `slug`, `is_homepage`, `layout`, `status`, `ordering`) VALUES
(3, 'Khoa học', 'khoa-hoc', 1, 'list', 'public', -1),
(4, 'Thế giới', 'the-gioi', 0, 'list', 'public', 0),
(5, 'Thể thao', 'the-thao', 1, 'grid', 'public', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_contact`
--

CREATE TABLE `news_contact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `admin_message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news_contact`
--

INSERT INTO `news_contact` (`id`, `name`, `created`, `status`, `email`, `message`, `admin_message`) VALUES
(1, 'Bùi Thiên Bảo', '2024-08-26 13:02:34.517798', 0, 'buithienbaoo2@gmail.com', 'a', ''),
(2, 'Văn Linh', '2024-08-26 13:27:14.285765', 0, 'abc', 'abc', ''),
(3, 'Bảo', '2024-08-26 14:03:17.000000', 1, 'buithienbaoo2@gmail.com', 'I love you ok', ''),
(4, 'python', '2024-08-26 14:46:15.637548', 0, 'buithienbaoo2@gmail.com', 'hehe', ''),
(5, 'Bùi', '2024-08-26 14:47:01.007133', 0, 'buithienbaoo2@gmail.com', 'test', ''),
(6, 'python', '2024-09-28 13:58:14.440606', 0, 'buithienbaoo2@gmail.com', 'dfgfdsgh', ''),
(7, 'fdfggf', '2024-09-28 14:05:35.613205', 0, 'buithienbaoo2@gmail.com', 'gtdfgfd', ''),
(8, 'hâhhaa', '2024-09-28 14:14:37.284993', 0, 'buithienbaoo2@gmail.com', 'frdf', ''),
(9, 'java', '2024-09-30 02:03:08.613403', 0, 'buithienbaoo2@gmail.com', 'abcxyz', ''),
(10, 'werewrwr', '2024-09-30 04:06:20.514977', 0, 'buithienbaoo2@gmail.com', 'drferfrewrwr', ''),
(11, 'fdfd', '2024-09-30 04:22:30.790717', 0, 'buithienbaoo2@gmail.com', 'fdfd', ''),
(12, 'dsds', '2024-09-30 04:24:27.499558', 0, 'buithienbaoo2@gmail.com', 'dsds', ''),
(13, '1', '2024-10-01 03:42:22.659540', 0, 'buithienbaoo2@gmail.com', 'edfe', ''),
(14, 'dffgddf', '2024-10-01 04:02:33.575680', 0, 'buithienbaoo2@gmail.com', 'yghtfggh', ''),
(15, 'trtrt', '2024-10-01 04:08:09.347518', 0, 'buithienbaoo2@gmail.com', 'rtrtr', ''),
(16, 'dsd', '2024-10-01 09:36:12.009165', 0, 'buithienbaoo2@gmail.com', 'vđ', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_feed`
--

CREATE TABLE `news_feed` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ordering` int(11) NOT NULL,
  `link` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news_feed`
--

INSERT INTO `news_feed` (`id`, `name`, `slug`, `status`, `ordering`, `link`) VALUES
(1, 'VNExpress', 'vnexpress', 'public', 0, 'https://vnexpress.net/rss/tin-moi-nhat.rss'),
(2, 'Thanh niên', 'thanh-nien', 'public', 1, 'https://thanhnien.vn/rss/home.rss'),
(3, 'Báo tin tức', 'bao-tin-tuc', 'public', 2, 'https://baotintuc.vn/tin-moi-nhat.rss');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_tag`
--

CREATE TABLE `news_tag` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news_tag`
--

INSERT INTO `news_tag` (`id`, `name`, `slug`) VALUES
(1, 'Châu Âu', 'chau-au'),
(2, 'Châu Á', 'chau-a');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_category`
--

CREATE TABLE `shop_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `is_homepage` tinyint(1) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_category`
--

INSERT INTO `shop_category` (`id`, `name`, `slug`, `is_homepage`, `status`, `ordering`) VALUES
(1, 'Cây ICM', 'cay-icm', 1, 'public', 1),
(2, 'Cây cối', 'cay-coi', 0, 'public', 2),
(3, 'Cây Kaider', 'cay-kaider', 0, 'public', 3),
(4, 'Cây ăn quả', 'cay-an-qua', 0, 'public', 4),
(5, 'Cây leo', 'cay-leo', 0, 'public', 5),
(6, 'Cây văn phòng', 'cay-van-phong', 0, 'public', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_contact`
--

CREATE TABLE `shop_contact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `message` longtext NOT NULL,
  `contacted` tinyint(1) NOT NULL,
  `message_admin` longtext NOT NULL,
  `created` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_plantingmethod`
--

CREATE TABLE `shop_plantingmethod` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_plantingmethod`
--

INSERT INTO `shop_plantingmethod` (`id`, `name`, `status`, `ordering`) VALUES
(1, 'Đất nền', 'public', 1),
(2, 'Thuỷ sinh', 'public', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_product`
--

CREATE TABLE `shop_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ordering` int(11) NOT NULL,
  `special` tinyint(1) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `price_sale` decimal(10,0) DEFAULT NULL,
  `price_real` decimal(10,0) NOT NULL,
  `total_sold` int(11) NOT NULL,
  `summary` longtext NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_product`
--

INSERT INTO `shop_product` (`id`, `name`, `slug`, `status`, `ordering`, `special`, `price`, `price_sale`, `price_real`, `total_sold`, `summary`, `content`, `image`, `category_id`) VALUES
(3, 'Cây Bảo Bùi', 'cay-bao-bui', 'public', 1, 1, 100000000, 90000000, 90000000, 0, 'Cây đẹp trai', '<p>Cho d&ugrave; bạn lựa chọn l&agrave;m việc trong bất kỳ ng&agrave;nh nghề n&agrave;o, kiến thức ph&acirc;n t&iacute;ch dữ liệu l&agrave; kỹ năng cần thiết để xử l&yacute; v&agrave; đưa ra c&aacute;c quyết định dựa tr&ecirc;n dữ liệu. Sau khi tham gia kh&oacute;a học, bạn sẽ c&oacute; được nền tảng vững chắc về Pandas, NumPy, Matplotlib, Seaborn, SQL v&agrave; c&aacute;c kỹ năng thực hiện dự &aacute;n thực tế, với sự hướng dẫn chi tiết v&agrave; chuy&ecirc;n s&acirc;u, đặc biệt l&agrave; nhiều biểu đồ minh họa.</p>', 'news/images/articles/0e8d1a52-b7a2-441e-a1de-9353dd1ed1ca.jpeg', 1),
(4, 'Hoa Sen', 'hoa-sen', 'public', 2, 0, 100000, NULL, 100000, 0, 'abcxyz', '<p>Em v&agrave; c&ocirc; ấy quen nhau từ hồi 2019 đến nay, biết nhau cũng đ&atilde; 5-6 năm rồi v&agrave; c&ocirc; ấy đang học đại học QTKD, ch&uacute;ng em mập mờ với nhau xuất một khoảng thời gian. L&uacute;c c&oacute; được th&igrave; em kh&ocirc;ng biết tr&acirc;n trọng đợi đến khi mất đi rồi th&igrave; lại thấy hối hận, Bọn em quen xa v&agrave; vừa rồi mới c&oacute; dịp gặp, giờ kh&ocirc;ng c&ograve;n li&ecirc;n lạc nữa, em nhớ c&ocirc; ấy rất nhiều, đến khi em muốn bu&ocirc;ng bỏ chấp niệm th&igrave; Anh lại đem đến những &ldquo; bảo t&agrave;ng nuối tiếc &ldquo;. Nếu như c&oacute; cơ hội gặp lại em nguyện n&oacute;i với c&ocirc; ấy rằng l&agrave; \" Anh y&ecirc;u Em \" v&agrave; nếu như c&oacute; kỳ hạn em hi vọng kỳ hạn đ&oacute; l&agrave; 1 vạn năm. #T</p>', 'news/images/articles/af0c92f9-12fb-4eaf-964a-0a15a960a6c2.jpeg', 2),
(5, 'Tôn Ngộ Không', 'ton-ngo-khong', 'public', 3, 0, 333333, NULL, 333333, 0, 'dsdss', '<p>Em v&agrave; c&ocirc; ấy quen nhau từ hồi 2019 đến nay, biết nhau cũng đ&atilde; 5-6 năm rồi v&agrave; c&ocirc; ấy đang học đại học QTKD, ch&uacute;ng em mập mờ với nhau xuất một khoảng thời gian. L&uacute;c c&oacute; được th&igrave; em kh&ocirc;ng biết tr&acirc;n trọng đợi đến khi mất đi rồi th&igrave; lại thấy hối hận, Bọn em quen xa v&agrave; vừa rồi mới c&oacute; dịp gặp, giờ kh&ocirc;ng c&ograve;n li&ecirc;n lạc nữa, em nhớ c&ocirc; ấy rất nhiều, đến khi em muốn bu&ocirc;ng bỏ chấp niệm th&igrave; Anh lại đem đến những &ldquo; bảo t&agrave;ng nuối tiếc &ldquo;. Nếu như c&oacute; cơ hội gặp lại em nguyện n&oacute;i với c&ocirc; ấy rằng l&agrave; \" Anh y&ecirc;u Em \" v&agrave; nếu như c&oacute; kỳ hạn em hi vọng kỳ hạn đ&oacute; l&agrave; 1 vạn năm. <span class=\"\" dir=\"auto\"><a class=\"yt-core-attributed-string__link yt-core-attributed-string__link--call-to-action-color\" tabindex=\"0\" href=\"https://www.youtube.com/hashtag/t\" target=\"\">#T</a></span></p>', 'news/images/articles/479fe3c7-b97f-44ef-b5c3-4f793ec568e2.jpeg', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_product_planting_methods`
--

CREATE TABLE `shop_product_planting_methods` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `plantingmethod_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_product_planting_methods`
--

INSERT INTO `shop_product_planting_methods` (`id`, `product_id`, `plantingmethod_id`) VALUES
(2, 3, 1),
(3, 3, 2),
(4, 4, 1),
(5, 5, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Chỉ mục cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Chỉ mục cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Chỉ mục cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Chỉ mục cho bảng `myapp_item`
--
ALTER TABLE `myapp_item`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_article`
--
ALTER TABLE `news_article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `news_article_category_id_7ede7614_fk_news_category_id` (`category_id`),
  ADD KEY `news_article_author_id_11c60ced_fk_news_author_id` (`author_id`);

--
-- Chỉ mục cho bảng `news_article_tag`
--
ALTER TABLE `news_article_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_article_tag_article_id_tag_id_bff2e651_uniq` (`article_id`,`tag_id`),
  ADD KEY `news_article_tag_tag_id_743a7b8e_fk_news_tag_id` (`tag_id`);

--
-- Chỉ mục cho bảng `news_author`
--
ALTER TABLE `news_author`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `news_category`
--
ALTER TABLE `news_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `question_text` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Chỉ mục cho bảng `news_contact`
--
ALTER TABLE `news_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_feed`
--
ALTER TABLE `news_feed`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Chỉ mục cho bảng `news_tag`
--
ALTER TABLE `news_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Chỉ mục cho bảng `shop_category`
--
ALTER TABLE `shop_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Chỉ mục cho bảng `shop_contact`
--
ALTER TABLE `shop_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_plantingmethod`
--
ALTER TABLE `shop_plantingmethod`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `shop_product`
--
ALTER TABLE `shop_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `shop_product_category_id_14d7eea8_fk_shop_category_id` (`category_id`);

--
-- Chỉ mục cho bảng `shop_product_planting_methods`
--
ALTER TABLE `shop_product_planting_methods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_product_planting_me_product_id_plantingmetho_0a2d755a_uniq` (`product_id`,`plantingmethod_id`),
  ADD KEY `shop_product_plantin_plantingmethod_id_53c62ee8_fk_shop_plan` (`plantingmethod_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `myapp_item`
--
ALTER TABLE `myapp_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `news_article`
--
ALTER TABLE `news_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `news_article_tag`
--
ALTER TABLE `news_article_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `news_author`
--
ALTER TABLE `news_author`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `news_category`
--
ALTER TABLE `news_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `news_contact`
--
ALTER TABLE `news_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `news_feed`
--
ALTER TABLE `news_feed`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `news_tag`
--
ALTER TABLE `news_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `shop_category`
--
ALTER TABLE `shop_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `shop_contact`
--
ALTER TABLE `shop_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `shop_plantingmethod`
--
ALTER TABLE `shop_plantingmethod`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `shop_product`
--
ALTER TABLE `shop_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `shop_product_planting_methods`
--
ALTER TABLE `shop_product_planting_methods`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Các ràng buộc cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `news_article`
--
ALTER TABLE `news_article`
  ADD CONSTRAINT `news_article_author_id_11c60ced_fk_news_author_id` FOREIGN KEY (`author_id`) REFERENCES `news_author` (`id`),
  ADD CONSTRAINT `news_article_category_id_7ede7614_fk_news_category_id` FOREIGN KEY (`category_id`) REFERENCES `news_category` (`id`);

--
-- Các ràng buộc cho bảng `news_article_tag`
--
ALTER TABLE `news_article_tag`
  ADD CONSTRAINT `news_article_tag_article_id_a37c5485_fk_news_article_id` FOREIGN KEY (`article_id`) REFERENCES `news_article` (`id`),
  ADD CONSTRAINT `news_article_tag_tag_id_743a7b8e_fk_news_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `news_tag` (`id`);

--
-- Các ràng buộc cho bảng `shop_product`
--
ALTER TABLE `shop_product`
  ADD CONSTRAINT `shop_product_category_id_14d7eea8_fk_shop_category_id` FOREIGN KEY (`category_id`) REFERENCES `shop_category` (`id`);

--
-- Các ràng buộc cho bảng `shop_product_planting_methods`
--
ALTER TABLE `shop_product_planting_methods`
  ADD CONSTRAINT `shop_product_plantin_plantingmethod_id_53c62ee8_fk_shop_plan` FOREIGN KEY (`plantingmethod_id`) REFERENCES `shop_plantingmethod` (`id`),
  ADD CONSTRAINT `shop_product_plantin_product_id_3f148b30_fk_shop_prod` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
