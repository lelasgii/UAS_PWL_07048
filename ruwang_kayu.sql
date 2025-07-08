-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jul 2025 pada 10.35
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ruwang_kayu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_popular_couriers', 'a:6:{i:0;a:2:{s:4:\"code\";s:3:\"jne\";s:11:\"description\";s:11:\"JNE Express\";}i:1;a:2:{s:4:\"code\";s:3:\"pos\";s:11:\"description\";s:13:\"POS Indonesia\";}i:2;a:2:{s:4:\"code\";s:3:\"jnt\";s:11:\"description\";s:11:\"J&T Express\";}i:4;a:2:{s:4:\"code\";s:7:\"sicepat\";s:11:\"description\";s:7:\"SiCepat\";}i:5;a:2:{s:4:\"code\";s:4:\"tiki\";s:11:\"description\";s:4:\"TIKI\";}i:6;a:2:{s:4:\"code\";s:8:\"anteraja\";s:11:\"description\";s:8:\"AnterAja\";}}', 1751968605),
('laravel_cache_provinces', 'a:37:{i:0;a:2:{s:2:\"id\";s:2:\"11\";s:4:\"name\";s:4:\"ACEH\";}i:1;a:2:{s:2:\"id\";s:2:\"12\";s:4:\"name\";s:14:\"SUMATERA UTARA\";}i:2;a:2:{s:2:\"id\";s:2:\"13\";s:4:\"name\";s:14:\"SUMATERA BARAT\";}i:3;a:2:{s:2:\"id\";s:2:\"14\";s:4:\"name\";s:4:\"RIAU\";}i:4;a:2:{s:2:\"id\";s:2:\"15\";s:4:\"name\";s:5:\"JAMBI\";}i:5;a:2:{s:2:\"id\";s:2:\"16\";s:4:\"name\";s:16:\"SUMATERA SELATAN\";}i:6;a:2:{s:2:\"id\";s:2:\"17\";s:4:\"name\";s:8:\"BENGKULU\";}i:7;a:2:{s:2:\"id\";s:2:\"18\";s:4:\"name\";s:7:\"LAMPUNG\";}i:8;a:2:{s:2:\"id\";s:2:\"19\";s:4:\"name\";s:25:\"KEPULAUAN BANGKA BELITUNG\";}i:9;a:2:{s:2:\"id\";s:2:\"21\";s:4:\"name\";s:14:\"KEPULAUAN RIAU\";}i:10;a:2:{s:2:\"id\";s:2:\"31\";s:4:\"name\";s:11:\"DKI JAKARTA\";}i:11;a:2:{s:2:\"id\";s:2:\"32\";s:4:\"name\";s:10:\"JAWA BARAT\";}i:12;a:2:{s:2:\"id\";s:2:\"33\";s:4:\"name\";s:11:\"JAWA TENGAH\";}i:13;a:2:{s:2:\"id\";s:2:\"34\";s:4:\"name\";s:26:\"DAERAH ISTIMEWA YOGYAKARTA\";}i:14;a:2:{s:2:\"id\";s:2:\"35\";s:4:\"name\";s:10:\"JAWA TIMUR\";}i:15;a:2:{s:2:\"id\";s:2:\"36\";s:4:\"name\";s:6:\"BANTEN\";}i:16;a:2:{s:2:\"id\";s:2:\"51\";s:4:\"name\";s:4:\"BALI\";}i:17;a:2:{s:2:\"id\";s:2:\"52\";s:4:\"name\";s:19:\"NUSA TENGGARA BARAT\";}i:18;a:2:{s:2:\"id\";s:2:\"53\";s:4:\"name\";s:19:\"NUSA TENGGARA TIMUR\";}i:19;a:2:{s:2:\"id\";s:2:\"61\";s:4:\"name\";s:16:\"KALIMANTAN BARAT\";}i:20;a:2:{s:2:\"id\";s:2:\"62\";s:4:\"name\";s:17:\"KALIMANTAN TENGAH\";}i:21;a:2:{s:2:\"id\";s:2:\"63\";s:4:\"name\";s:18:\"KALIMANTAN SELATAN\";}i:22;a:2:{s:2:\"id\";s:2:\"64\";s:4:\"name\";s:16:\"KALIMANTAN TIMUR\";}i:23;a:2:{s:2:\"id\";s:2:\"65\";s:4:\"name\";s:16:\"KALIMANTAN UTARA\";}i:24;a:2:{s:2:\"id\";s:2:\"71\";s:4:\"name\";s:14:\"SULAWESI UTARA\";}i:25;a:2:{s:2:\"id\";s:2:\"72\";s:4:\"name\";s:15:\"SULAWESI TENGAH\";}i:26;a:2:{s:2:\"id\";s:2:\"73\";s:4:\"name\";s:16:\"SULAWESI SELATAN\";}i:27;a:2:{s:2:\"id\";s:2:\"74\";s:4:\"name\";s:17:\"SULAWESI TENGGARA\";}i:28;a:2:{s:2:\"id\";s:2:\"75\";s:4:\"name\";s:9:\"GORONTALO\";}i:29;a:2:{s:2:\"id\";s:2:\"76\";s:4:\"name\";s:14:\"SULAWESI BARAT\";}i:30;a:2:{s:2:\"id\";s:2:\"81\";s:4:\"name\";s:6:\"MALUKU\";}i:31;a:2:{s:2:\"id\";s:2:\"82\";s:4:\"name\";s:12:\"MALUKU UTARA\";}i:32;a:2:{s:2:\"id\";s:2:\"91\";s:4:\"name\";s:5:\"PAPUA\";}i:33;a:2:{s:2:\"id\";s:2:\"92\";s:4:\"name\";s:11:\"PAPUA BARAT\";}i:34;a:2:{s:2:\"id\";s:2:\"93\";s:4:\"name\";s:13:\"PAPUA SELATAN\";}i:35;a:2:{s:2:\"id\";s:2:\"94\";s:4:\"name\";s:12:\"PAPUA TENGAH\";}i:36;a:2:{s:2:\"id\";s:2:\"95\";s:4:\"name\";s:16:\"PAPUA PEGUNUNGAN\";}}', 1751968599);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation` varchar(255) DEFAULT NULL,
  `size` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Perabotan Rumah Tangga', '2025-06-24 11:32:46', '2025-06-24 11:32:46'),
(2, 'Dekorasi Rumah', '2025-06-24 11:32:46', '2025-06-24 11:32:46'),
(3, 'Peralatan Dapur', '2025-06-24 11:32:46', '2025-06-24 11:32:46'),
(4, 'Peralatan Makan', '2025-06-24 11:32:46', '2025-06-24 11:32:46'),
(5, 'Aksesoris', '2025-06-24 11:32:46', '2025-06-24 11:32:46'),
(6, 'Mainan', '2025-06-24 11:32:46', '2025-06-24 11:32:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category_product`
--

CREATE TABLE `category_product` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `review` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `user_id`, `product_id`, `rating`, `review`, `created_at`, `updated_at`) VALUES
(7, 10, 15, 5, 'cantik', '2025-07-07 06:38:47', '2025-07-07 06:38:47'),
(8, 10, 15, 5, 'barang berkualitas', '2025-07-07 08:29:59', '2025-07-07 08:29:59'),
(9, 11, 15, 5, 'barang bagus, warna sesuai di foto', '2025-07-07 08:46:39', '2025-07-07 08:46:39'),
(10, 10, 18, 5, NULL, '2025-07-07 21:21:57', '2025-07-07 21:21:57'),
(11, 10, 16, 5, NULL, '2025-07-07 21:38:06', '2025-07-07 21:38:06'),
(12, 10, 19, 5, 'produk kuat', '2025-07-07 21:48:33', '2025-07-07 21:48:33'),
(13, 10, 15, 5, 'barang sampai dengan selamat', '2025-07-08 00:09:11', '2025-07-08 00:09:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `feedback_comments`
--

CREATE TABLE `feedback_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feedback_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `feedback_likes`
--

CREATE TABLE `feedback_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feedback_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_06_14_053211_categories', 1),
(5, '2025_06_15_052844_create_products_table', 1),
(6, '2025_06_16_192854_create_category_product_table', 1),
(7, '2025_06_17_063000_create_product_images_table', 1),
(8, '2025_06_18_085031_create_carts_table', 1),
(9, '2025_06_19_163130_create_orders_table', 1),
(10, '2025_06_20_113349_create_order_details_table', 1),
(11, '2025_06_20_201341_add_weight_to_products_table', 1),
(12, '2025_06_21_113434_create_payments_table', 1),
(13, '2025_06_21_193713_create_feedback_table', 1),
(14, '2025_06_22_045802_add_rating_to_products_table', 1),
(15, '2025_06_22_054311_create_feedback_likes_table', 1),
(16, '2025_06_22_054312_create_feedback_comments_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `person_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `subdistrict` varchar(255) NOT NULL,
  `village` varchar(255) NOT NULL,
  `postal_code` varchar(255) NOT NULL,
  `courier` varchar(255) DEFAULT NULL,
  `delivery_method` enum('antar','toko') NOT NULL,
  `payment_method` enum('cod','qris','kartu','midtrans') DEFAULT NULL,
  `total_price` decimal(12,2) NOT NULL,
  `status` enum('pending','paid','failed') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_id`, `person_name`, `phone`, `address`, `province`, `city`, `subdistrict`, `village`, `postal_code`, `courier`, `delivery_method`, `payment_method`, `total_price`, `status`, `created_at`, `updated_at`) VALUES
(17, 10, 'RWK-481672', 'Laela Sugi', '081391004041', 'Jl Panda Barat, Semarang, Jawa Tengah', '33', '33.74', '33.74.06', '33.74.06.1002', '50199', 'jne', 'antar', 'midtrans', 50000.00, 'paid', '2025-07-07 06:32:58', '2025-07-07 06:32:58'),
(18, 10, 'RWK-627114', 'Laela Sugi', '081391004041', 'Jl Panda Barat, Semarang, Jawa Tengah', '33', '33.74', '33.74.06', '33.74.06.1012', '50199', 'jnt', 'antar', 'midtrans', 70000.00, 'paid', '2025-07-07 08:28:17', '2025-07-07 08:28:17'),
(19, 11, 'RWK-171860', 'Laela Sugi', '081391004041', 'Jl Panda Barat, Semarang, Jawa Tengah', '33', '33.74', '33.74.11', '33.74.11.1005', '50199', 'jnt', 'antar', 'midtrans', 90000.00, 'paid', '2025-07-07 08:45:26', '2025-07-07 08:45:26'),
(20, 10, 'RWK-157898', 'Laela Sugi', '081391004041', 'Jl Panda Barat, Semarang, Jawa Tengah', '33', '33.74', '33.74.06', '33.74.06.1011', '50199', 'jnt', 'antar', 'midtrans', 130000.00, 'paid', '2025-07-07 21:19:56', '2025-07-07 21:19:56'),
(21, 10, 'RWK-551013', 'Laela Sugi', '081391004041', 'Jl Panda Barat, Semarang, Jawa Tengah', '33', '33.74', '33.74.06', '33.74.06.1011', '50199', 'jnt', 'antar', 'midtrans', 130000.00, 'paid', '2025-07-07 21:20:59', '2025-07-07 21:20:59'),
(22, 10, 'RWK-880325', 'Laela Sugi', '081391004041', 'Jl Panda Barat, Semarang, Jawa Tengah', '33', '33.06', '33.06.10', '33.06.10.2011', '50199', 'pos', 'antar', 'midtrans', 105000.00, 'paid', '2025-07-07 21:22:43', '2025-07-07 21:22:43'),
(23, 10, 'RWK-589881', 'Laela Sugi', '081391004041', 'Jl Panda Barat, Semarang, Jawa Tengah', '33', '33.74', '33.74.15', '33.74.15.1007', '50199', 'pos', 'antar', 'midtrans', 80000.00, 'paid', '2025-07-07 21:38:55', '2025-07-07 21:38:55'),
(24, 10, 'RWK-332145', 'Laela Sugi', '081391004041', 'Jl Panda Barat, Semarang, Jawa Tengah', '33', '33.74', '33.74.15', '33.74.15.1007', '50199', 'pos', 'antar', 'midtrans', 80000.00, 'paid', '2025-07-07 21:47:52', '2025-07-07 21:47:52'),
(25, 10, 'RWK-426541', 'Laela Sugi', '081391004041', 'Jl Panda Barat, Semarang, Jawa Tengah', '33', '33.22', '33.22.20', '33.22.20.2006', '50199', 'pos', 'antar', 'midtrans', 90000.00, 'paid', '2025-07-08 00:07:49', '2025-07-08 00:07:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `quantity`, `price`, `size`, `created_at`, `updated_at`) VALUES
(17, 17, 15, 'Cobek kayu dan Ulekan kayu', 1, 20000.00, 'Sedang', '2025-07-07 06:32:58', '2025-07-07 06:32:58'),
(18, 18, 15, 'Cobek kayu dan Ulekan kayu', 2, 20000.00, 'Besar', '2025-07-07 08:28:17', '2025-07-07 08:28:17'),
(19, 19, 15, 'Cobek kayu dan Ulekan kayu', 3, 20000.00, 'Sedang', '2025-07-07 08:45:26', '2025-07-07 08:45:26'),
(20, 20, 18, 'Spatula Kayu Tahan Panas Kecil 25cm', 2, 50000.00, 'default', '2025-07-07 21:19:56', '2025-07-07 21:19:56'),
(21, 21, 18, 'Spatula Kayu Tahan Panas Kecil 25cm', 2, 50000.00, 'default', '2025-07-07 21:20:59', '2025-07-07 21:20:59'),
(22, 22, 16, 'Talenan Kayu Jati asli Gagang alumunium ukuran 30cm x 20cm', 1, 75000.00, 'default', '2025-07-07 21:22:43', '2025-07-07 21:22:43'),
(23, 23, 19, 'Talenan 2', 1, 50000.00, 'default', '2025-07-07 21:38:55', '2025-07-07 21:38:55'),
(24, 24, 19, 'Talenan 2', 1, 50000.00, 'default', '2025-07-07 21:47:52', '2025-07-07 21:47:52'),
(25, 25, 15, 'Cobek kayu dan Ulekan kayu', 3, 20000.00, 'default', '2025-07-08 00:07:49', '2025-07-08 00:07:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `fraud_status` varchar(255) DEFAULT NULL,
  `raw_response` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`raw_response`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `price` bigint(20) NOT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT 1000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `product_code`, `name`, `category_id`, `stock`, `price`, `rating`, `image`, `description`, `created_at`, `updated_at`, `weight`) VALUES
(13, '#ZY4848', 'Kursi Tamu Minimalis Jati', 1, 30, 2340000, NULL, 'uploads/product_images/1751887944_main_686bb0489793d.jpg', 'Berikut sepsifikasi produk diatas :\r\nWarna : Salak\r\nJenis Kayu : Jati\r\nJenis Warna : Finishing Melamin (Sepetan)\r\nBisa Request warna, ukiran dan ukuran untuk menyesuaikan ruangan, Bisa juga request atau order barang custom (Model dari kalian) gaess!\r\n\r\nKami mebel citra indah sudah berdiri sejak tahun 90an sudah melayani berbagai pesanan mulai eceran, grosir, mengisi toko, mengisi asrama, perumahan dan proyek-proyek besar lainnya. Bagaiamana kami bisa bertahan sampai sekarang ? Karena kami menjaga kepercayaan kualitas kepeada pelanggan kami.', '2025-07-07 04:32:24', '2025-07-07 04:32:24', 1000),
(14, '#ZY5606', 'Lemari Pakaian 3 Pintu Kayu Jati Ukiran Ring', 1, 22, 3340000, NULL, 'uploads/product_images/1751888202_main_686bb14abd8b6.jpg', 'Berikut spesifikasi produk diatas :\r\nUkuran PxLxT : 165 x 50 x 210 cm\r\nJenis Warna : Finishing Melamin (Sepetan)\r\nWarna : Teh\r\nJenis Kayu : Jati full\r\n\r\nBisa Request ukuran untuk menyesuaikan luas ruangan, Bisa juga request atau order barang custom (Model dari kalian) gaess!', '2025-07-07 04:36:42', '2025-07-07 04:36:42', 1000),
(15, '#ZY2766', 'Cobek kayu dan Ulekan kayu', 3, 55, 20000, 5.00, 'uploads/product_images/1751888551_main_686bb2a721a0e.jpg', 'barang ini cocok untuk melengkapi peralatan dapur anda dan tidak berat dibawa serta mudah di bersihkan dan tidak menimbulkan krikil ketika cobek di gunakan karena terbuat dari bahan alami dan tidak mudah pecah.\r\n\r\n- Bahan : Kayu Mahoni\r\n- diameter 16 cm, 18cm, 20cm, 22cm\r\n\r\npilih variasi yang benar \r\n1. set cobek di dalam nya  ( cobek + ulekan ) \r\n2. cobek saja di dalam nya  ( cobek tanpa ulekan ) \r\nberat ulekan 50 gram rata - rata \r\n\r\ncatatan :\r\n* BERAT : 600 gram. Rata - rata berat cobek + ulekan   karena kayu berbeda beda, berat yang kami cantumkan rata rata berat setelah dipaking.\r\n* jika komplain harus menyertakan vidoe unboxing \r\n* jika tidak menyertai video dalam komplain nya maka kami tidak akan menanggapinya \r\n* jika memberikan bintang 1 atau 2 maka dengan otomatis kami blok permanen', '2025-07-07 04:42:31', '2025-07-08 00:09:11', 1000),
(16, '#ZY3954', 'Talenan Kayu Jati asli Gagang alumunium ukuran 30cm x 20cm', 3, 109, 75000, 5.00, 'uploads/product_images/1751888861_main_686bb3dda0948.jpg', 'Talenan Kayu Jati asli TEBAL\r\n\r\nTerbuat dari kayu Asli! sangat aesthetic dan unik banget\r\nMaterial : Kayu Jati\r\nUkuran Panjang 30cm\r\nLebar 20cm\r\nKetebalan 1.7-2.2cm\r\n\r\nkami IMPODIO official store memiliki beragam product untuk kebutuhan konten anda, Mulai dari Studio Box foto, Greenscreen, Instan backdrop sampai aksesoris photo yg lengkap dan beragam variannya\r\n\r\nJika anda mengalami masalah pada pemesanan, MOHON. Hubungi kami dulu ya karena kami 100% bertanggung jawab. Mohon videokan paket saat unboxing ya.\r\n\r\nKami menyediakan berbagai photo props berkualitas lainnya.\r\nCheck toko kami yaa\r\nStock ready, boleh langsung order yaa', '2025-07-07 04:47:41', '2025-07-07 21:38:07', 1000),
(18, '#ZY2868', 'Spatula Kayu Tahan Panas Kecil 25cm', 3, 199, 50000, 5.00, 'uploads/product_images/1751889347_main_686bb5c35f5b8.jpg', 'Memasak lebih aman dan nyaman menggunakan spatula kayu. Selain sifatnya yang tidak menyerap panas, spatula kayu juga tidak menyebabkan permukaan alat masak rusak karena tergores\r\n\r\nBahan : Kayu jati\r\nFinishing : Biopolish waterbased foodgrades\r\nUkuran Produk :\r\nPanjang : 25 cm\r\nLebar bagian spatula : 5,5 cm ; Lebar gagang : 2,5cm\r\n\r\nCara Perawatan :\r\n• cuci - bilas - keringkan seperti biasa\r\n• hindari menyimpan di tempat lembab apalagi direndam terlalu lama\r\n• dianjurkan dicuci dengan tangan\r\n• untuk menjaga tampilan produk bisa bisa dioleskan minyak kelapa/VCO/olive oil/woodpolish secara berkala', '2025-07-07 04:55:47', '2025-07-07 21:21:57', 1000),
(19, '#ZY2279', 'Talenan 2', 3, 20, 50000, 5.00, 'uploads/product_images/1751903299_main_686bec43b1d2a.jpg', 'Talinan tahan air', '2025-07-07 08:48:19', '2025-07-07 21:48:33', 1000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_path`, `created_at`, `updated_at`) VALUES
(17, 13, 'uploads/product_images/1751887944_686bb048995a9.jpg', '2025-07-07 04:32:24', '2025-07-07 04:32:24'),
(18, 13, 'uploads/product_images/1751887944_686bb0489a2b8.jpg', '2025-07-07 04:32:24', '2025-07-07 04:32:24'),
(19, 14, 'uploads/product_images/1751888202_686bb14abe210.jpg', '2025-07-07 04:36:42', '2025-07-07 04:36:42'),
(20, 14, 'uploads/product_images/1751888202_686bb14abe9c1.jpg', '2025-07-07 04:36:42', '2025-07-07 04:36:42'),
(21, 15, 'uploads/product_images/1751888551_686bb2a7227eb.jpg', '2025-07-07 04:42:31', '2025-07-07 04:42:31'),
(22, 15, 'uploads/product_images/1751888551_686bb2a723059.jpg', '2025-07-07 04:42:31', '2025-07-07 04:42:31'),
(23, 16, 'uploads/product_images/1751888861_686bb3dda152d.jpg', '2025-07-07 04:47:41', '2025-07-07 04:47:41'),
(24, 16, 'uploads/product_images/1751888861_686bb3dda20b2.jpg', '2025-07-07 04:47:41', '2025-07-07 04:47:41'),
(27, 18, 'uploads/product_images/1751889347_686bb5c3605ba.jpg', '2025-07-07 04:55:47', '2025-07-07 04:55:47'),
(28, 18, 'uploads/product_images/1751889347_686bb5c361745.jpg', '2025-07-07 04:55:47', '2025-07-07 04:55:47'),
(29, 19, 'uploads/product_images/1751903299_686bec43b2c9a.jpg', '2025-07-07 08:48:19', '2025-07-07 08:48:19'),
(30, 19, 'uploads/product_images/1751903299_686bec43b337b.jpg', '2025-07-07 08:48:19', '2025-07-07 08:48:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('siCi6MNaFGd3uCeXgnfkofueReqjbWOBTwbZx1ik', 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibG5CT2hBQU52NlNTODZkMEdxMndrNGRSZGdnZ2NGSnN1RkNQcnVvQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9ob21lcGFnZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjk7fQ==', 1751958871);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `google_id`, `name`, `email`, `email_verified_at`, `password`, `role`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, NULL, 'Laela', 'sugilaela@gmail.com', NULL, '$2y$12$1WxuG2BylFpH5.YEz.aVwegtzk.euejzzWN6kuVppebQIMY32oFcC', 'admin', NULL, NULL, '2025-07-07 00:55:57', '2025-07-07 00:55:57'),
(10, NULL, 'Laela', 'laelasugi2005@gmail.com', NULL, '$2y$12$0YdC.CteyZeGmDSTY3MK.upm9dsJl5IO0P0ZrJ1AexWFVKzTcnBPu', 'user', NULL, NULL, '2025-07-07 02:11:17', '2025-07-07 02:11:17'),
(11, NULL, 'laela', '112202307048@mhs.dinus.ac.id', NULL, '$2y$12$1PcZT17Qf/K9V5pyHayYwOsZhLRmmoSvxLNfa5AWJIQGJpsQZm65O', 'user', NULL, NULL, '2025-07-07 08:43:10', '2025-07-07 08:43:10');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedbacks_user_id_foreign` (`user_id`),
  ADD KEY `feedbacks_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `feedback_comments`
--
ALTER TABLE `feedback_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_comments_feedback_id_foreign` (`feedback_id`),
  ADD KEY `feedback_comments_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `feedback_likes`
--
ALTER TABLE `feedback_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_likes_feedback_id_foreign` (`feedback_id`),
  ADD KEY `feedback_likes_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_id_unique` (`order_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_order_id_foreign` (`order_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_code_unique` (`product_code`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_google_id_unique` (`google_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `feedback_comments`
--
ALTER TABLE `feedback_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `feedback_likes`
--
ALTER TABLE `feedback_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD CONSTRAINT `feedbacks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `feedbacks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `feedback_comments`
--
ALTER TABLE `feedback_comments`
  ADD CONSTRAINT `feedback_comments_feedback_id_foreign` FOREIGN KEY (`feedback_id`) REFERENCES `feedbacks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `feedback_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `feedback_likes`
--
ALTER TABLE `feedback_likes`
  ADD CONSTRAINT `feedback_likes_feedback_id_foreign` FOREIGN KEY (`feedback_id`) REFERENCES `feedbacks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `feedback_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
