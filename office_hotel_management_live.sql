-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2023 at 09:49 AM
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
-- Database: `office_hotel_management_live`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Ipsam explicabo Vol', 'Delectus voluptatum', '2023-03-04 05:33:31', '2023-03-04 05:33:31');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hotel_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `check_in` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_out` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `customer_phone`, `hotel_id`, `room_id`, `check_in`, `check_out`, `distance`, `original_price`, `discount`, `final_price`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, '01682824509', 2, 1, '2023-03-10', '2023-03-24', '20', '1', '1', '1', '1', NULL, '2023-03-04 05:21:56');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `on_top` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `title`, `type`, `start_date`, `end_date`, `photo`, `on_top`, `created_at`, `updated_at`) VALUES
(1, 'Enim recusandae Eni', 'Vel magna assumenda', '2015-10-26', '2012-09-24', '20230304110335.jpg', 'yes', '2023-03-04 05:32:35', '2023-03-04 05:32:35'),
(2, 'Adipisicing cupidata', 'Dolor voluptatem Ma', '2020-07-31', '2011-10-30', '20230304110350.jpg', 'yes', '2023-03-04 05:32:51', '2023-03-04 05:32:51'),
(3, 'Aut quis non error u', 'Sapiente commodo aut', '1973-08-18', '2013-06-18', '20230304110309.jpg', 'yes', '2023-03-04 05:33:09', '2023-03-04 05:33:09');

-- --------------------------------------------------------

--
-- Table structure for table `claimeddiscounts`
--

CREATE TABLE `claimeddiscounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('received','approved') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'received',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `claimeddiscounts`
--

INSERT INTO `claimeddiscounts` (`id`, `user_id`, `user_name`, `restaurant_id`, `restaurant_name`, `restaurant_discount`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 'Rabbani', 1, 'Food', '50', 'received', '2023-03-05 00:00:32', '2023-03-05 00:00:32'),
(2, 4, 'Rabbani', 1, 'Food', '50', 'received', '2023-03-05 00:00:46', '2023-03-05 00:00:46');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Khulna', '2023-03-04 05:06:47', '2023-03-04 05:06:47'),
(2, 'Dhaka', '2023-03-04 05:06:53', '2023-03-04 05:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `emergency_contacts`
--

CREATE TABLE `emergency_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emergency_contacts`
--

INSERT INTO `emergency_contacts` (`id`, `name`, `contact`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Fitzgerald Peck', '235345', 'Labore in exercitati', '2023-03-04 05:43:36', '2023-03-04 05:43:36');

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
-- Table structure for table `help_and_supports`
--

CREATE TABLE `help_and_supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `help_and_supports`
--

INSERT INTO `help_and_supports` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Molestias repellendu', 'Quis sequi magnam ul', '2023-03-04 05:43:08', '2023-03-04 05:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `hotelratings`
--

CREATE TABLE `hotelratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hotel_id` bigint(20) UNSIGNED DEFAULT NULL,
  `feedback` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotelratings`
--

INSERT INTO `hotelratings` (`id`, `hotel_id`, `feedback`, `star`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '3', '2023-03-04 05:16:13', '2023-03-04 05:16:52'),
(2, 3, NULL, '4', '2023-03-04 05:16:26', '2023-03-04 05:16:26'),
(3, 2, NULL, '5', '2023-03-04 05:16:37', '2023-03-04 05:16:37');

-- --------------------------------------------------------

--
-- Table structure for table `hotelrooms`
--

CREATE TABLE `hotelrooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hotel_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beds` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baths` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_occupancy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `private_policy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotelrooms`
--

INSERT INTO `hotelrooms` (`id`, `hotel_id`, `title`, `subtitle`, `description`, `offer_start_date`, `offer_end_date`, `beds`, `baths`, `price`, `discount`, `discount_price`, `max_occupancy`, `private_policy`, `info`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 'Dolore exercitation', 'Et et impedit atque', 'Sit fugiat nisi qu', '2023-03-04', '2023-03-02', 'Ullamco nisi atque v', 'Aliquid tempore fac', '464', '20', '371.2', 'Facilis dolorum ex e', 'Quidem lorem aut et', 'Qui qui qui adipisci', '20230304110326.jpg', '2023-03-04 05:14:26', '2023-03-04 05:14:26'),
(2, 3, 'Perspiciatis mollit', 'Incidunt corporis e', 'Aut qui qui pariatur', '2016-05-16', '1973-06-21', 'Optio aut numquam v', 'Quibusdam laboriosam', '934', '88', '112.08', 'Dolores voluptatem', 'Voluptatum id aut bl', 'Saepe mollit autem q', '20230304110345.jpg', '2023-03-04 05:14:45', '2023-03-04 05:14:45'),
(4, 2, 'Laborum Ut dolor of', 'Placeat ipsum expe', 'Non quibusdam amet', '2021-10-10', '2013-05-01', 'Optio magni enim no', 'Ad excepteur duis ci', '628', '19', '508.68', 'At accusamus placeat', 'Vel corrupti est ma', 'Ipsam incidunt et v', '20230304110349.jpg', '2023-03-04 05:15:19', '2023-03-04 05:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `services` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `popular_deal` enum('popular','not_popular') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not_popular',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `division_id`, `location`, `description`, `price`, `offer_price`, `discount`, `latitude`, `longitude`, `contact_no`, `facebook_page`, `website_link`, `youtube_link`, `photo`, `tags`, `services`, `status`, `popular_deal`, `created_at`, `updated_at`) VALUES
(1, 'Elvis Love', '1', 'Deleniti quos qui la', 'In et eiusmod at min', '1000', '700', '20', '546854', '45654', '+1 (521) 674-4691', 'https://www.rykex.biz', 'https://www.walymy.co', 'https://www.budu.biz', '20230304110355.jpg', 'Dolor unde sunt nih', 'Nihil quia omnis est', '1', 'popular', NULL, NULL),
(2, 'Rinah Hunter', '2', 'Sit quod magnam rep', 'Accusamus magnam qui', '492', '953', '88', '546546', '354654', '+1 (496) 208-2047', 'https://www.jowacelelufa.tv', 'https://www.xopu.ca', 'https://www.viqahekizalod.me.uk', '20230304110340.jpg', 'Sint corrupti accu', 'Aut error eu qui qua', '1', 'not_popular', NULL, NULL),
(3, 'Randall Rice', '2', 'Proident molestiae', 'Odio fuga Quasi aut', '591', '951', '95', 'Sequi atque ratione', 'Fuga Aut itaque qui', '+1 (223) 512-1843', 'https://www.diqi.me.uk', 'https://www.cyhy.me.uk', 'https://www.dyqab.biz', '20230304110338.jpg', 'Commodi dolorem culp', 'Rerum voluptates ut', '1', 'popular', NULL, NULL),
(4, 'Karyn Stone', '1', 'Deleniti aspernatur', 'Occaecat assumenda l', '351', '567', '49', '2435', '2542', '+1 (817) 633-3438', 'https://www.rizu.biz', 'https://www.muzamedujyger.com.au', 'https://www.wemolafadeduta.ws', '20230304110355.jpg', 'Perferendis ut volup', 'Cillum labore sit ab', '1', 'popular', NULL, NULL);

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_02_15_083339_create_divisions_table', 1),
(11, '2023_02_19_062327_create_deals_table', 1),
(12, '2023_02_19_062805_create_campaigns_table', 1),
(13, '2023_02_19_083532_create_emergency_contacts_table', 1),
(14, '2023_02_19_083645_create_help_and_supports_table', 1),
(15, '2023_02_19_083957_create_hotels_table', 1),
(16, '2023_02_19_084028_create_privacy_policies_table', 1),
(17, '2023_02_19_084237_create_restaurants_table', 1),
(18, '2023_02_19_085415_create_terms_of_services_table', 1),
(19, '2023_02_19_085537_create_about_us_table', 1),
(20, '2023_02_19_090243_create_customers_table', 1),
(21, '2023_02_20_041015_create_hotelrooms_table', 1),
(22, '2023_02_20_120734_create_permissions_table', 1),
(23, '2023_02_20_174548_create_restaurantmenus_table', 1),
(24, '2023_02_23_063426_create_hotelratings_table', 1),
(25, '2023_02_23_063739_create_restaurantratings_table', 1),
(26, '2023_02_27_080152_create_bookings_table', 1),
(27, '2023_03_02_060422_create_claimeddiscounts_table', 1),
(28, '2023_03_02_061843_create_reviews_table', 1),
(29, '2023_03_04_103324_create_reviewhotels_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('4f7635dd4541a3292ef2db4d19d5bcd991f5f336c5e323f58d05197e607e7bdd38be393ee80f28ce', 9, 1, 'app', '[]', 1, '2023-03-04 23:25:13', '2023-03-04 23:25:13', '2024-03-05 05:25:13'),
('62c7a9803cc7b03589cb3815c8ff7bfcf0e02a0a79842dcf8f1bd30dea73d92eb778a06dd6c729b8', 9, 1, 'app', '[]', 1, '2023-03-05 00:37:09', '2023-03-05 00:37:09', '2024-03-05 06:37:09'),
('8db09101fb1144c9aaff76fcc4676ba617acb0bfcc3851c1652c7a0149c4561a35f096bd80ed5eff', 9, 1, 'app', '[]', 0, '2023-03-04 23:14:50', '2023-03-04 23:14:50', '2024-03-05 05:14:50'),
('8f90c0e5ebd80e08b53168e509d38a11efb525267af3fe54a4f7b786172f9b103744b5292a167904', 10, 1, 'app', '[]', 0, '2023-03-04 23:27:00', '2023-03-04 23:27:00', '2024-03-05 05:27:00'),
('f3e0fdb20f6a3543e7736592b15897572030152a4292b5979f3e02e369f8d6ad8d5523ef0919c489', 9, 1, 'app', '[]', 1, '2023-03-05 00:35:00', '2023-03-05 00:35:00', '2024-03-05 06:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '1skBuvcwfaCmOOPG1GaYzYo9EgO5maWM0cp6jR1g', NULL, 'http://localhost', 1, 0, 0, '2023-03-04 23:10:27', '2023-03-04 23:10:27'),
(2, NULL, 'Laravel Password Grant Client', 'kjokH0w1UAkJ5BHRoChdfgwDIl7lc2SHauyNC3DR', 'users', 'http://localhost', 0, 1, 0, '2023-03-04 23:10:27', '2023-03-04 23:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-03-04 23:10:27', '2023-03-04 23:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `permission_name`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'create_hotel', '1', 1, '2023-03-04 05:06:05', '2023-03-04 05:06:05'),
(2, 'hotel_list', '2', 1, '2023-03-04 05:06:05', '2023-03-04 05:06:05'),
(3, 'hotel_delete', '3', 1, '2023-03-04 05:06:05', '2023-03-04 05:06:05'),
(4, 'edit_hotel', '4', 1, '2023-03-04 05:06:05', '2023-03-04 05:06:05'),
(5, 'create_hotel_room', '5', 1, '2023-03-04 05:06:05', '2023-03-04 05:06:05'),
(6, 'room_list', '6', 1, '2023-03-04 05:06:05', '2023-03-04 05:06:05'),
(7, 'edit_room', '7', 1, '2023-03-04 05:06:05', '2023-03-04 05:06:05'),
(8, 'delete_room', '8', 1, '2023-03-04 05:06:05', '2023-03-04 05:06:05'),
(9, 'hotel_rating_list', '9', 1, '2023-03-04 05:06:05', '2023-03-04 05:06:05'),
(10, 'create_hotel_rating', '10', 1, '2023-03-04 05:06:05', '2023-03-04 05:06:05'),
(11, 'edit_hotel_rating', '11', 1, '2023-03-04 05:06:05', '2023-03-04 05:06:05'),
(12, 'all_hotel_booking_list', '12', 1, '2023-03-04 05:06:05', '2023-03-04 05:06:05'),
(13, 'create_hotel_booking', '13', 1, '2023-03-04 05:06:05', '2023-03-04 05:06:05'),
(14, 'edit_hotel_booking', '14', 1, '2023-03-04 05:06:05', '2023-03-04 05:06:05'),
(15, 'delete_hotel_booking', '15', 1, '2023-03-04 05:06:05', '2023-03-04 05:06:05'),
(16, 'booking_status', '16', 1, '2023-03-04 05:06:06', '2023-03-04 05:06:06'),
(17, 'see_all_restaurant', '17', 1, '2023-03-04 05:06:06', '2023-03-04 05:06:06'),
(18, 'create_restaurant', '18', 1, '2023-03-04 05:06:06', '2023-03-04 05:06:06'),
(19, 'edit_restaurant', '19', 1, '2023-03-04 05:06:06', '2023-03-04 05:06:06'),
(20, 'delete_restaurant', '20', 1, '2023-03-04 05:06:06', '2023-03-04 05:06:06'),
(21, 'all_restaurant_menus', '21', 1, '2023-03-04 05:06:06', '2023-03-04 05:06:06'),
(22, 'create_restaurant_menu', '22', 1, '2023-03-04 05:06:06', '2023-03-04 05:06:06'),
(23, 'edit_restaurant_menu', '23', 1, '2023-03-04 05:06:06', '2023-03-04 05:06:06'),
(24, 'delete_restaurant_menu', '24', 1, '2023-03-04 05:06:06', '2023-03-04 05:06:06'),
(25, 'all_restaurant_star', '25', 1, '2023-03-04 05:06:06', '2023-03-04 05:06:06'),
(26, 'create_restaurant_star', '26', 1, '2023-03-04 05:06:06', '2023-03-04 05:06:06'),
(27, 'edit_restaurant_star', '27', 1, '2023-03-04 05:06:06', '2023-03-04 05:06:06'),
(28, 'claimed_discount', '28', 1, '2023-03-04 05:06:06', '2023-03-04 05:06:06'),
(29, 'change_discount_status', '29', 1, '2023-03-04 05:06:06', '2023-03-04 05:06:06'),
(49, 'create_hotel', '1', 7, '2023-03-04 05:47:01', '2023-03-04 05:47:01'),
(50, 'hotel_list', '2', 7, '2023-03-04 05:47:01', '2023-03-04 05:47:01'),
(51, 'hotel_delete', '3', 7, '2023-03-04 05:47:01', '2023-03-04 05:47:01'),
(53, 'room_list', '6', 7, '2023-03-04 05:47:01', '2023-03-04 05:47:01'),
(54, 'delete_room', '8', 7, '2023-03-04 05:47:01', '2023-03-04 05:47:01'),
(55, 'create_hotel_rating', '10', 7, '2023-03-04 05:47:01', '2023-03-04 05:47:01'),
(56, 'booking_status', '16', 7, '2023-03-04 05:47:01', '2023-03-04 05:47:01'),
(57, 'see_all_restaurant', '17', 7, '2023-03-04 05:47:01', '2023-03-04 05:47:01'),
(58, 'create_restaurant', '18', 7, '2023-03-04 05:47:01', '2023-03-04 05:47:01'),
(59, 'delete_restaurant', '20', 7, '2023-03-04 05:47:01', '2023-03-04 05:47:01'),
(60, 'delete_restaurant_menu', '24', 7, '2023-03-04 05:47:01', '2023-03-04 05:47:01'),
(61, 'all_restaurant_star', '25', 7, '2023-03-04 05:47:01', '2023-03-04 05:47:01'),
(62, 'claimed_discount', '28', 7, '2023-03-04 05:47:02', '2023-03-04 05:47:02'),
(63, 'change_discount_status', '29', 7, '2023-03-04 05:47:02', '2023-03-04 05:47:02');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Voluptates molestiae', 'Eius sit tenetur lib', '2023-03-04 05:42:32', '2023-03-04 05:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `restaurantmenus`
--

CREATE TABLE `restaurantmenus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurantmenus`
--

INSERT INTO `restaurantmenus` (`id`, `restaurant_id`, `name`, `description`, `discount`, `photo`, `tags`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'Mollie Schmidt', 'Deleniti ex quo eius', '99', '20230304110321.jpg', 'Aut est aliqua Ad r', '1', NULL, '2023-03-04 05:25:21'),
(2, 1, 'Dane Anderson', 'Non libero deleniti', '3', '20230304110340.jpg', 'Magnam nemo qui nihi', '1', NULL, NULL),
(3, 1, 'Haley Riley', 'In similique ut ab q', '42', '20230304110356.jpg', 'Commodo non voluptat', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `restaurantratings`
--

CREATE TABLE `restaurantratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `feedback` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurantratings`
--

INSERT INTO `restaurantratings` (`id`, `restaurant_id`, `feedback`, `star`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '3', '2023-03-04 05:25:42', '2023-03-04 05:25:42'),
(2, 3, NULL, '4', '2023-03-04 05:25:54', '2023-03-04 05:25:54'),
(3, 2, NULL, '5', '2023-03-04 05:26:05', '2023-03-04 05:26:05');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `popular_deal` enum('popular','not_popular') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not_popular',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `division_id`, `location`, `description`, `discount`, `latitude`, `longitude`, `contact_no`, `facebook_page`, `website_link`, `youtube_link`, `photo`, `tags`, `popular_deal`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Charde Vasquez', '2', 'Beatae consectetur', 'Sunt nisi sint sapi', '50', '64565', '5465', '46', 'https://www.rofyjitemefuge.cc', 'https://www.korowone.net', 'https://www.barele.ca', '20230304110339.jpg', 'Ullamco omnis adipis', 'popular', '1', NULL, NULL),
(2, 'Robert England', '2', 'Voluptatem illo cons', 'Modi amet nesciunt', '96', 'Dolores dolorum vel', 'Facere sit et expedi', '72', 'https://www.mymukygofa.me', 'https://www.vynuc.com.au', 'https://www.fosud.com.au', '20230304110301.jpg', 'Alias sed consectetu', 'not_popular', '1', NULL, NULL),
(3, 'Mannix Kelly', '1', 'Facere velit nostrum', 'Est quia velit quo i', '49', 'Pariatur Dolore num', 'Suscipit quidem quis', '40', 'https://www.zelynyram.biz', 'https://www.vecyh.org.au', 'https://www.xajuwyqulih.me', '20230304110346.jpg', 'Et atque eum velit a', 'popular', '1', NULL, '2023-03-04 05:23:46');

-- --------------------------------------------------------

--
-- Table structure for table `reviewhotels`
--

CREATE TABLE `reviewhotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hotel_id` bigint(20) UNSIGNED NOT NULL,
  `hotel_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feedback` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviewhotels`
--

INSERT INTO `reviewhotels` (`id`, `user_id`, `user_name`, `hotel_id`, `hotel_name`, `star`, `feedback`, `created_at`, `updated_at`) VALUES
(2, 9, 'TestTwo', 4, 'Karyn Stone', '2', 'yoooo', '2023-03-04 23:53:22', '2023-03-04 23:53:22');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feedback` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `user_name`, `restaurant_id`, `restaurant_name`, `star`, `feedback`, `created_at`, `updated_at`) VALUES
(1, 9, 'TestTwo', 3, 'Mannix Kelly', '5', 'asdasdasd', '2023-03-04 23:58:40', '2023-03-04 23:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `terms_of_services`
--

CREATE TABLE `terms_of_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_of_services`
--

INSERT INTO `terms_of_services` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Assumenda repudianda', 'Iure eveniet commod', '2023-03-05 00:03:20', '2023-03-05 00:03:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','vendor','customer') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `phone`, `gender`, `dob`, `image`, `address`, `password`, `prefer`, `status`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'test@example.com', NULL, NULL, NULL, NULL, NULL, '$2y$10$vdyvOBsQUZ7BcfZ3fXKj/u8YIwt6g/vf6v1XUoiu6RfG9gsdL61Ee', NULL, '0', NULL, NULL, '2023-03-04 05:06:05', '2023-03-04 05:06:05'),
(2, 'Sonya Velez', 'customer', 'vycu@mailinator.com', '+1 (192) 977-9571', '1', '2008-03-25', '20230304110310.jpg', 'Commodi sed amet qu', '$2y$10$900lUvfo9hlqwlSnforfNOEDd6pjVfxoWOfbWKrVD04eslXG4sGCa', 'Tempor corporis labo', '0', NULL, NULL, '2023-03-04 05:18:10', '2023-03-04 05:18:10'),
(3, 'Lawrence Nicholson', 'customer', 'wowixosub@mailinator.com', '01682824509', '2', '2011-02-13', '20230304110336.jpg', 'Quisquam dicta asper', '$2y$10$7zY2AK6PRtnGffWMOVaSpeRMmYqGHPGUB10EwADAiMTXN3mQ9OeU.', 'Similique ratione qu', '0', NULL, NULL, '2023-03-04 05:18:37', '2023-03-04 05:19:45'),
(4, 'Farhan', 'customer', 'jyqevuv@mailinator.com', '010000000', NULL, NULL, '20230305060358.jpg', 'Dhaka', '$2y$10$.ncWjpQ1eg5d1/Pd6Dc2LuTjIAq5PvjXyc5nAexsce0IbfEWPzTHG', NULL, '0', NULL, NULL, '2023-03-04 05:19:18', '2023-03-05 00:14:58'),
(7, 'Farhan', 'vendor', 'farhan@gmail.com', '01721926182', NULL, NULL, '20230304110301.jpg', 'uttaerara', '$2y$10$E8XwRENst6GJHMPE6FPyJOA.sa7cS6xzhGMYSF01FIM1HNh/ImTEK', NULL, '1', NULL, NULL, '2023-03-04 05:47:01', '2023-03-04 05:48:07'),
(8, 'TestTwo', 'customer', 'test2@gmail.com', '01998529561', 'male', '2023-03-01', '20230305050328.png', 'nagua, kg', '$2y$10$lhh8686jUz2QmOdF15zMcuLdVgZRGDYraQzuPLYDg.C/DXyQ1VJPa', 'bla, bla', '1', NULL, NULL, '2023-03-04 23:04:28', '2023-03-04 23:04:28'),
(9, 'TestTwo', 'customer', 'test3@gmail.com', '01998529562', 'male', '2023-03-01', '20230305050350.png', 'nagua, kg', '$2y$10$XXUuHV77sfC2FgtCA0qWxuh.dTuZsoUJcDMmmXK1vE4f5HEnlT3Wi', 'bla, bla', '0', NULL, NULL, '2023-03-04 23:14:50', '2023-03-05 00:38:55'),
(10, 'TestTwo', 'customer', 'test4@gmail.com', '01998529563', 'male', '2023-03-01', '20230305050359.png', 'nagua, kg', '$2y$10$AMqsx3OAetjkJGdc8gDlb.kv9vDpnK03svN1o/VMO63TVlR8IsWXe', 'bla, bla', '0', NULL, NULL, '2023-03-04 23:26:59', '2023-03-04 23:26:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_user_id_foreign` (`user_id`),
  ADD KEY `bookings_hotel_id_foreign` (`hotel_id`),
  ADD KEY `bookings_room_id_foreign` (`room_id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `claimeddiscounts`
--
ALTER TABLE `claimeddiscounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `claimeddiscounts_user_id_foreign` (`user_id`),
  ADD KEY `claimeddiscounts_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `help_and_supports`
--
ALTER TABLE `help_and_supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotelratings`
--
ALTER TABLE `hotelratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotelratings_hotel_id_foreign` (`hotel_id`);

--
-- Indexes for table `hotelrooms`
--
ALTER TABLE `hotelrooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotelrooms_hotel_id_foreign` (`hotel_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurantmenus`
--
ALTER TABLE `restaurantmenus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurantmenus_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `restaurantratings`
--
ALTER TABLE `restaurantratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurantratings_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviewhotels`
--
ALTER TABLE `reviewhotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviewhotels_user_id_foreign` (`user_id`),
  ADD KEY `reviewhotels_hotel_id_foreign` (`hotel_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `terms_of_services`
--
ALTER TABLE `terms_of_services`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `claimeddiscounts`
--
ALTER TABLE `claimeddiscounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deals`
--
ALTER TABLE `deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `help_and_supports`
--
ALTER TABLE `help_and_supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotelratings`
--
ALTER TABLE `hotelratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hotelrooms`
--
ALTER TABLE `hotelrooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `restaurantmenus`
--
ALTER TABLE `restaurantmenus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `restaurantratings`
--
ALTER TABLE `restaurantratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviewhotels`
--
ALTER TABLE `reviewhotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `terms_of_services`
--
ALTER TABLE `terms_of_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `hotelrooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `claimeddiscounts`
--
ALTER TABLE `claimeddiscounts`
  ADD CONSTRAINT `claimeddiscounts_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `claimeddiscounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hotelratings`
--
ALTER TABLE `hotelratings`
  ADD CONSTRAINT `hotelratings_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hotelrooms`
--
ALTER TABLE `hotelrooms`
  ADD CONSTRAINT `hotelrooms_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `restaurantmenus`
--
ALTER TABLE `restaurantmenus`
  ADD CONSTRAINT `restaurantmenus_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `restaurantratings`
--
ALTER TABLE `restaurantratings`
  ADD CONSTRAINT `restaurantratings_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviewhotels`
--
ALTER TABLE `reviewhotels`
  ADD CONSTRAINT `reviewhotels_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviewhotels_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
