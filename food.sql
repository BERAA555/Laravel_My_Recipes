-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 09, 2023 at 03:43 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Table structure for table `commons`
--

CREATE TABLE `commons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commons`
--

INSERT INTO `commons` (`id`, `food_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 16, 'super', '2023-02-27 17:11:21', '2023-02-27 17:11:21'),
(2, 16, 'man', '2023-02-27 17:11:21', '2023-02-27 17:11:21'),
(3, 16, 'food', '2023-02-27 17:11:21', '2023-02-27 17:11:21'),
(4, 16, 'rice', '2023-02-27 17:11:21', '2023-02-27 17:11:21');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `explane` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `menu_id`, `name`, `explane`, `like`, `created_at`, `updated_at`) VALUES
(1, 2, 'Emerson Williamson', 'Sed quo neque reprehenderit sit rerum omnis a. Voluptatibus temporibus qui provident repellat ut ut culpa. Laborum sed in velit vel cum non optio eaque. Ducimus expedita labore placeat excepturi.', 0, '2022-12-29 17:42:20', '2023-02-24 20:17:58'),
(2, 3, 'Carlee Upton I', 'In quae nobis doloribus qui. Omnis praesentium natus harum voluptatem. Delectus beatae quae nemo quaerat. Et sit quam dolor esse consequatur quam hic.', 1, '2022-12-29 17:42:20', '2023-02-27 17:12:51'),
(3, 4, 'Prof. Kole McGlynn II', 'Ex voluptas rerum excepturi vel officia earum. Est est omnis est nostrum hic aut suscipit. Cumque eos doloribus eius sunt et ducimus. Soluta quo doloribus voluptas cumque nostrum.', 1, '2022-12-29 17:42:20', '2023-02-24 20:20:06'),
(4, 4, 'Kayla Schumm', 'Ex incidunt necessitatibus quia. Ut quae qui adipisci omnis ut. Ab harum facilis itaque voluptatem et provident.', 1, '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(5, 3, 'Nicolette Terry II', 'Vero consequuntur doloremque molestiae. Animi eaque laboriosam voluptatibus et totam. Occaecati illum aut magni doloremque itaque vero repellat. Nesciunt molestias consectetur aut odio ad est.', 1, '2022-12-29 17:42:20', '2023-02-27 17:10:15'),
(6, 4, 'Ike Pagac III', 'Molestiae ad debitis et laborum quasi officiis id. Laudantium ullam aut autem ipsam quidem sunt.', 1, '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(7, 1, 'Jedediah Murray', 'At totam enim non. Amet temporibus est quia omnis. Tempora ut qui excepturi ut iure nihil. Aspernatur modi nulla minus dolores illum.', 0, '2022-12-29 17:42:20', '2023-02-27 17:10:21'),
(8, 1, 'Winnifred Auer', 'Consequuntur rem aut impedit autem voluptatibus nisi eveniet. Consequatur natus veritatis aut earum quod corrupti non sequi. Ad ex praesentium quam qui. Nemo magnam pariatur harum fugit vitae.', 1, '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(9, 4, 'Dr. Britney Hayes', 'Sunt expedita mollitia velit repudiandae unde optio. Aspernatur ut qui tenetur. Ab doloribus quas amet debitis enim.', 0, '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(10, 2, 'Verlie Baumbach', 'Adipisci est quia dolor nisi accusamus. Reprehenderit veniam sunt rem corporis quia excepturi ipsam. Velit et cumque beatae doloremque.', 1, '2022-12-29 17:42:20', '2023-02-27 17:10:29'),
(11, 3, 'Rodger Goodwin', 'Repellendus et cum consequatur aut voluptates corrupti aut. Maiores est vitae iure ratione. In non veniam et aut error temporibus blanditiis. Quia beatae suscipit repellendus repudiandae.', 0, '2022-12-29 17:42:20', '2022-12-29 17:42:50'),
(12, 4, 'Cleveland Fisher', 'Delectus sed autem dolore pariatur accusantium ab. Sint maiores reprehenderit iusto. Veniam non voluptas incidunt rem ut necessitatibus.', 1, '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(13, 1, 'Mrs. Adelia Kris', 'Quis nesciunt id quos explicabo hic. Nemo quis accusantium voluptas voluptatum. Itaque minus mollitia aut et perferendis ut architecto. Eveniet quisquam possimus in nihil itaque in in.', 0, '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(14, 4, 'Karolann Hirthe', 'Aut repellat ut suscipit aut aspernatur et. Quia quis quisquam placeat quibusdam quam.', 0, '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(15, 1, 'Karson Schulist', 'Delectus est quos est velit ea. Laborum ea iusto soluta fuga. Ut dolores aperiam sed omnis quia.', 0, '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(16, 4, 'super man food', 'it\'s make from shees and rice', 0, '2022-12-29 17:45:31', '2023-02-27 17:05:45'),
(17, 2, 'laravel', 'Create ready login and register pages for Project', 0, '2023-03-25 21:30:32', '2023-03-25 21:30:32');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Ashton Hudson V', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(2, 'Dr. Vivian Satterfield', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(3, 'Quentin Reinger', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(4, 'Ms. Wava Jacobs', '2022-12-29 17:42:20', '2022-12-29 17:42:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_25_054758_create_menus_table', 1),
(6, '2022_12_25_084156_create_food_table', 1),
(7, '2022_12_25_092921_create_commons_table', 1),
(8, '2022_12_25_092935_create_photos_table', 1),
(9, '2022_12_25_092953_create_quantities_table', 1),
(10, '2022_12_25_093011_create_steps_table', 1),
(11, '2022_12_28_114945_add_explane_to_food', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `food_id`, `path`, `created_at`, `updated_at`) VALUES
(1, 8, 'photo9.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(2, 9, 'photo7.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(3, 10, 'photo3.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(4, 9, 'photo10.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(5, 5, 'photo4.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(6, 11, 'photo1.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(7, 1, 'photo10.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(8, 6, 'photo8.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(9, 7, 'photo10.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(10, 15, 'photo1.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(11, 14, 'photo8.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(12, 4, 'photo3.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(13, 7, 'photo9.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(14, 7, 'photo5.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(15, 2, 'photo8.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(16, 11, 'photo3.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(17, 7, 'photo2.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(18, 14, 'photo2.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(19, 4, 'photo2.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(20, 15, 'photo3.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(21, 9, 'photo10.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(22, 15, 'photo4.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(23, 13, 'photo5.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(24, 12, 'photo2.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(25, 14, 'photo7.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(26, 8, 'photo9.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(27, 4, 'photo1.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(28, 12, 'photo1.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(29, 8, 'photo8.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(30, 10, 'photo10.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(31, 13, 'photo6.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(32, 5, 'photo8.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(33, 10, 'photo2.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(34, 13, 'photo4.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(35, 4, 'photo4.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(36, 8, 'photo9.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(37, 1, 'photo1.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(38, 9, 'photo1.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(39, 13, 'photo3.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(40, 12, 'photo2.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(41, 3, 'photo1.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(42, 6, 'photo5.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(43, 5, 'photo7.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(44, 6, 'photo6.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(45, 5, 'photo3.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(46, 11, 'photo5.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(47, 5, 'photo4.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(48, 8, 'photo9.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(49, 11, 'photo6.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(50, 5, 'photo2.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(51, 11, 'photo2.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(52, 11, 'photo9.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(53, 3, 'photo4.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(54, 4, 'photo7.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(55, 3, 'photo2.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(56, 7, 'photo2.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(57, 12, 'photo10.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(58, 12, 'photo5.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(59, 12, 'photo5.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(60, 1, 'photo3.jpg', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(61, 16, '7N9iVTJ82kVu8wEQyk6egQGfR22IjQ9ugvFZAWyc.jpg', '2022-12-29 17:46:21', '2022-12-29 17:46:21');

-- --------------------------------------------------------

--
-- Table structure for table `quantities`
--

CREATE TABLE `quantities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quantities`
--

INSERT INTO `quantities` (`id`, `food_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 2, 'Yarım su bardağı erişte ve 1,5 tatlı kaşığı tuz', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(2, 1, '1 adet yumurta ve 1 su bardağı yoğurt', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(3, 10, '1 adet yumurta ve 1 su bardağı yoğurt', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(4, 14, '1 adet yumurta ve 1 su bardağı yoğurt', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(5, 15, '1 adet yumurta ve 1 su bardağı yoğurt', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(6, 2, '200 gr kıyma ve 2 yemek kaşığı köftelik bulgur', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(7, 2, '1 adet soğan ve 1 yemek kaşığı salça', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(8, 6, '1 adet yumurta ve 1 su bardağı yoğurt', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(9, 13, 'Yarım su bardağı erişte ve 1,5 tatlı kaşığı tuz', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(10, 2, '200 gr kıyma ve 2 yemek kaşığı köftelik bulgur', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(11, 9, 'Yarım su bardağı erişte ve 1,5 tatlı kaşığı tuz', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(12, 12, '2 yemek kaşığı sıvı yağ ve 1,5 litre sıcak su', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(13, 6, '1 adet yumurta ve 1 su bardağı yoğurt', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(14, 11, '1 adet yumurta ve 1 su bardağı yoğurt', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(15, 5, '2 yemek kaşığı sıvı yağ ve 1,5 litre sıcak su', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(16, 2, 'Yarım su bardağı erişte ve 1,5 tatlı kaşığı tuz', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(17, 15, '2 yemek kaşığı sıvı yağ ve 1,5 litre sıcak su', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(18, 8, '200 gr kıyma ve 2 yemek kaşığı köftelik bulgur', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(19, 4, '1 adet soğan ve 1 yemek kaşığı salça', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(20, 7, '2 yemek kaşığı sıvı yağ ve 1,5 litre sıcak su', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(21, 5, '200 gr kıyma ve 2 yemek kaşığı köftelik bulgur', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(22, 12, '1 adet yumurta ve 1 su bardağı yoğurt', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(23, 4, '2 yemek kaşığı sıvı yağ ve 1,5 litre sıcak su', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(24, 1, '1 adet soğan ve 1 yemek kaşığı salça', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(25, 5, '200 gr kıyma ve 2 yemek kaşığı köftelik bulgur', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(26, 1, '1 adet yumurta ve 1 su bardağı yoğurt', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(27, 14, 'Yarım su bardağı erişte ve 1,5 tatlı kaşığı tuz', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(28, 10, '1 adet yumurta ve 1 su bardağı yoğurt', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(29, 3, 'Yarım su bardağı erişte ve 1,5 tatlı kaşığı tuz', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(30, 11, '1 adet yumurta ve 1 su bardağı yoğurt', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(31, 1, '200 gr kıyma ve 2 yemek kaşığı köftelik bulgur', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(32, 14, '200 gr kıyma ve 2 yemek kaşığı köftelik bulgur', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(33, 9, '2 yemek kaşığı sıvı yağ ve 1,5 litre sıcak su', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(34, 7, '2 yemek kaşığı sıvı yağ ve 1,5 litre sıcak su', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(35, 3, '2 yemek kaşığı sıvı yağ ve 1,5 litre sıcak su', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(36, 12, '1 adet soğan ve 1 yemek kaşığı salça', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(37, 3, '2 yemek kaşığı sıvı yağ ve 1,5 litre sıcak su', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(38, 4, '1 adet yumurta ve 1 su bardağı yoğurt', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(39, 10, '2 yemek kaşığı sıvı yağ ve 1,5 litre sıcak su', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(40, 7, '2 yemek kaşığı sıvı yağ ve 1,5 litre sıcak su', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(41, 12, '2 yemek kaşığı sıvı yağ ve 1,5 litre sıcak su', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(42, 10, '1 adet yumurta ve 1 su bardağı yoğurt', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(43, 6, '200 gr kıyma ve 2 yemek kaşığı köftelik bulgur', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(44, 6, '200 gr kıyma ve 2 yemek kaşığı köftelik bulgur', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(45, 10, 'Yarım su bardağı erişte ve 1,5 tatlı kaşığı tuz', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(46, 7, '1 adet yumurta ve 1 su bardağı yoğurt', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(47, 4, 'Yarım su bardağı erişte ve 1,5 tatlı kaşığı tuz', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(48, 5, '2 yemek kaşığı sıvı yağ ve 1,5 litre sıcak su', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(49, 14, 'Yarım su bardağı erişte ve 1,5 tatlı kaşığı tuz', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(50, 2, 'Yarım su bardağı erişte ve 1,5 tatlı kaşığı tuz', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(51, 9, '2 yemek kaşığı sıvı yağ ve 1,5 litre sıcak su', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(52, 15, 'Yarım su bardağı erişte ve 1,5 tatlı kaşığı tuz', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(53, 3, '1 adet yumurta ve 1 su bardağı yoğurt', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(54, 6, '1 adet soğan ve 1 yemek kaşığı salça', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(55, 12, 'Yarım su bardağı erişte ve 1,5 tatlı kaşığı tuz', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(56, 5, '1 adet soğan ve 1 yemek kaşığı salça', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(57, 3, '1 adet soğan ve 1 yemek kaşığı salça', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(58, 13, 'Yarım su bardağı erişte ve 1,5 tatlı kaşığı tuz', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(59, 1, '2 yemek kaşığı sıvı yağ ve 1,5 litre sıcak su', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(60, 8, '1 adet yumurta ve 1 su bardağı yoğurt', '2022-12-29 17:42:21', '2022-12-29 17:42:21'),
(61, 16, 'bir kilo sugar', '2023-02-27 17:07:34', '2023-02-27 17:07:34'),
(62, 16, 'bir kilo domatos', '2023-02-27 17:07:34', '2023-02-27 17:07:34'),
(63, 16, 'bir kilo havuc', '2023-02-27 17:07:34', '2023-02-27 17:07:34'),
(64, 16, 'bir bucuk kilo ananas', '2023-02-27 17:07:34', '2023-02-27 17:07:34');

-- --------------------------------------------------------

--
-- Table structure for table `steps`
--

CREATE TABLE `steps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `steps`
--

INSERT INTO `steps` (`id`, `food_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 2, 'Diğer taraftan; tencereye yağı koyarak rendelenmiş soğanı pembeleşinceye kadar kavuralım.t', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(2, 8, 'Salçayı ekleyelim ve kaynar suyu ilave edelim. Karıştırarak kaynamaya bırakalım', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(3, 3, 'Öncelikle köfteleri hazırladıktan sonra bulamak için unu geniş bir tabağa alarak yanımıza alalım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(4, 7, 'Şekillendirme işlemi bittikten sonra tabağımızı ileri geri sallayalım ve köftelerin tamamının una bulanmasını sağlayalım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(5, 10, 'Diğer taraftan; tencereye yağı koyarak rendelenmiş soğanı pembeleşinceye kadar kavuralım.t', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(6, 7, 'Şekillendirme işlemi bittikten sonra tabağımızı ileri geri sallayalım ve köftelerin tamamının una bulanmasını sağlayalım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(7, 1, 'Diğer taraftan; tencereye yağı koyarak rendelenmiş soğanı pembeleşinceye kadar kavuralım.t', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(8, 2, 'Diğer taraftan; tencereye yağı koyarak rendelenmiş soğanı pembeleşinceye kadar kavuralım.t', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(9, 10, 'Ardından köfte harcı için karıştırma kabına kıyma, köftelik bulgur, karabiber ve pul biberi alarak güzelce yoğuralım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(10, 5, 'Öncelikle köfteleri hazırladıktan sonra bulamak için unu geniş bir tabağa alarak yanımıza alalım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(11, 10, 'Ardından köfte harcı için karıştırma kabına kıyma, köftelik bulgur, karabiber ve pul biberi alarak güzelce yoğuralım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(12, 4, 'Salçayı ekleyelim ve kaynar suyu ilave edelim. Karıştırarak kaynamaya bırakalım', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(13, 8, 'Diğer taraftan; tencereye yağı koyarak rendelenmiş soğanı pembeleşinceye kadar kavuralım.t', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(14, 3, 'Salçayı ekleyelim ve kaynar suyu ilave edelim. Karıştırarak kaynamaya bırakalım', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(15, 1, 'Salçayı ekleyelim ve kaynar suyu ilave edelim. Karıştırarak kaynamaya bırakalım', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(16, 5, 'Salçayı ekleyelim ve kaynar suyu ilave edelim. Karıştırarak kaynamaya bırakalım', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(17, 14, 'Ardından köfte harcı için karıştırma kabına kıyma, köftelik bulgur, karabiber ve pul biberi alarak güzelce yoğuralım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(18, 11, 'Öncelikle köfteleri hazırladıktan sonra bulamak için unu geniş bir tabağa alarak yanımıza alalım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(19, 9, 'Diğer taraftan; tencereye yağı koyarak rendelenmiş soğanı pembeleşinceye kadar kavuralım.t', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(20, 15, 'Ardından köfte harcı için karıştırma kabına kıyma, köftelik bulgur, karabiber ve pul biberi alarak güzelce yoğuralım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(21, 12, 'Ardından köfte harcı için karıştırma kabına kıyma, köftelik bulgur, karabiber ve pul biberi alarak güzelce yoğuralım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(22, 8, 'Salçayı ekleyelim ve kaynar suyu ilave edelim. Karıştırarak kaynamaya bırakalım', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(23, 14, 'Öncelikle köfteleri hazırladıktan sonra bulamak için unu geniş bir tabağa alarak yanımıza alalım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(24, 15, 'Öncelikle köfteleri hazırladıktan sonra bulamak için unu geniş bir tabağa alarak yanımıza alalım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(25, 13, 'Ardından köfte harcı için karıştırma kabına kıyma, köftelik bulgur, karabiber ve pul biberi alarak güzelce yoğuralım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(26, 5, 'Öncelikle köfteleri hazırladıktan sonra bulamak için unu geniş bir tabağa alarak yanımıza alalım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(27, 14, 'Diğer taraftan; tencereye yağı koyarak rendelenmiş soğanı pembeleşinceye kadar kavuralım.t', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(28, 9, 'Ardından köfte harcı için karıştırma kabına kıyma, köftelik bulgur, karabiber ve pul biberi alarak güzelce yoğuralım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(29, 12, 'Diğer taraftan; tencereye yağı koyarak rendelenmiş soğanı pembeleşinceye kadar kavuralım.t', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(30, 14, 'Şekillendirme işlemi bittikten sonra tabağımızı ileri geri sallayalım ve köftelerin tamamının una bulanmasını sağlayalım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(31, 2, 'Ardından köfte harcı için karıştırma kabına kıyma, köftelik bulgur, karabiber ve pul biberi alarak güzelce yoğuralım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(32, 12, 'Ardından köfte harcı için karıştırma kabına kıyma, köftelik bulgur, karabiber ve pul biberi alarak güzelce yoğuralım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(33, 8, 'Diğer taraftan; tencereye yağı koyarak rendelenmiş soğanı pembeleşinceye kadar kavuralım.t', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(34, 12, 'Salçayı ekleyelim ve kaynar suyu ilave edelim. Karıştırarak kaynamaya bırakalım', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(35, 6, 'Öncelikle köfteleri hazırladıktan sonra bulamak için unu geniş bir tabağa alarak yanımıza alalım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(36, 6, 'Diğer taraftan; tencereye yağı koyarak rendelenmiş soğanı pembeleşinceye kadar kavuralım.t', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(37, 12, 'Şekillendirme işlemi bittikten sonra tabağımızı ileri geri sallayalım ve köftelerin tamamının una bulanmasını sağlayalım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(38, 5, 'Öncelikle köfteleri hazırladıktan sonra bulamak için unu geniş bir tabağa alarak yanımıza alalım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(39, 15, 'Ardından köfte harcı için karıştırma kabına kıyma, köftelik bulgur, karabiber ve pul biberi alarak güzelce yoğuralım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(40, 14, 'Ardından köfte harcı için karıştırma kabına kıyma, köftelik bulgur, karabiber ve pul biberi alarak güzelce yoğuralım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(41, 15, 'Öncelikle köfteleri hazırladıktan sonra bulamak için unu geniş bir tabağa alarak yanımıza alalım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(42, 15, 'Ardından köfte harcı için karıştırma kabına kıyma, köftelik bulgur, karabiber ve pul biberi alarak güzelce yoğuralım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(43, 9, 'Salçayı ekleyelim ve kaynar suyu ilave edelim. Karıştırarak kaynamaya bırakalım', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(44, 8, 'Diğer taraftan; tencereye yağı koyarak rendelenmiş soğanı pembeleşinceye kadar kavuralım.t', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(45, 12, 'Şekillendirme işlemi bittikten sonra tabağımızı ileri geri sallayalım ve köftelerin tamamının una bulanmasını sağlayalım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(46, 14, 'Ardından köfte harcı için karıştırma kabına kıyma, köftelik bulgur, karabiber ve pul biberi alarak güzelce yoğuralım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(47, 7, 'Öncelikle köfteleri hazırladıktan sonra bulamak için unu geniş bir tabağa alarak yanımıza alalım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(48, 5, 'Salçayı ekleyelim ve kaynar suyu ilave edelim. Karıştırarak kaynamaya bırakalım', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(49, 4, 'Öncelikle köfteleri hazırladıktan sonra bulamak için unu geniş bir tabağa alarak yanımıza alalım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(50, 4, 'Salçayı ekleyelim ve kaynar suyu ilave edelim. Karıştırarak kaynamaya bırakalım', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(51, 8, 'Ardından köfte harcı için karıştırma kabına kıyma, köftelik bulgur, karabiber ve pul biberi alarak güzelce yoğuralım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(52, 3, 'Öncelikle köfteleri hazırladıktan sonra bulamak için unu geniş bir tabağa alarak yanımıza alalım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(53, 3, 'Şekillendirme işlemi bittikten sonra tabağımızı ileri geri sallayalım ve köftelerin tamamının una bulanmasını sağlayalım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(54, 1, 'Şekillendirme işlemi bittikten sonra tabağımızı ileri geri sallayalım ve köftelerin tamamının una bulanmasını sağlayalım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(55, 13, 'Diğer taraftan; tencereye yağı koyarak rendelenmiş soğanı pembeleşinceye kadar kavuralım.t', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(56, 5, 'Salçayı ekleyelim ve kaynar suyu ilave edelim. Karıştırarak kaynamaya bırakalım', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(57, 4, 'Şekillendirme işlemi bittikten sonra tabağımızı ileri geri sallayalım ve köftelerin tamamının una bulanmasını sağlayalım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(58, 1, 'Ardından köfte harcı için karıştırma kabına kıyma, köftelik bulgur, karabiber ve pul biberi alarak güzelce yoğuralım.', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(59, 10, 'Diğer taraftan; tencereye yağı koyarak rendelenmiş soğanı pembeleşinceye kadar kavuralım.t', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(60, 3, 'Salçayı ekleyelim ve kaynar suyu ilave edelim. Karıştırarak kaynamaya bırakalım', '2022-12-29 17:42:20', '2022-12-29 17:42:20'),
(62, 16, 'r kilo domatosbi', '2023-02-27 17:09:26', '2023-02-27 17:09:26'),
(63, 16, 'bir kilo elma', '2023-02-27 17:09:26', '2023-02-27 17:09:26'),
(64, 16, 'bir kilo portakal', '2023-02-27 17:09:26', '2023-02-27 17:09:26'),
(65, 16, 'bir bucuk kilo anans', '2023-02-27 17:09:26', '2023-02-27 17:09:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commons`
--
ALTER TABLE `commons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commons_food_id_foreign` (`food_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`),
  ADD KEY `food_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_food_id_foreign` (`food_id`);

--
-- Indexes for table `quantities`
--
ALTER TABLE `quantities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quantities_food_id_foreign` (`food_id`);

--
-- Indexes for table `steps`
--
ALTER TABLE `steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `steps_food_id_foreign` (`food_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `commons`
--
ALTER TABLE `commons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `quantities`
--
ALTER TABLE `quantities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `steps`
--
ALTER TABLE `steps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `commons`
--
ALTER TABLE `commons`
  ADD CONSTRAINT `commons_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quantities`
--
ALTER TABLE `quantities`
  ADD CONSTRAINT `quantities_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `steps`
--
ALTER TABLE `steps`
  ADD CONSTRAINT `steps_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
