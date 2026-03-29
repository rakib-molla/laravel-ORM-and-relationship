-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2026 at 10:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `form_error_handling`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 'Devices like mobile, laptop, gadgets', 17, '2026-03-29 19:10:44', '2026-03-29 19:10:44'),
(2, 'Fashion', 'Clothing, shoes and accessories', 88, '2026-03-29 19:10:44', '2026-03-29 19:10:44'),
(3, 'Home & Kitchen', 'Home appliances and kitchen tools', 89, '2026-03-29 19:10:44', '2026-03-29 19:10:44'),
(4, 'Beauty & Personal Care', 'Cosmetics and skincare products', 82, '2026-03-29 19:10:44', '2026-03-29 19:10:44'),
(5, 'Sports & Fitness', 'Gym equipment and sports items', 44, '2026-03-29 19:10:44', '2026-03-29 19:10:44'),
(6, 'Automotive', 'Car accessories and tools', 72, '2026-03-29 19:10:44', '2026-03-29 19:10:44'),
(7, 'Books & Stationery', 'Books, notebooks and office supplies', 26, '2026-03-29 19:10:44', '2026-03-29 19:10:44'),
(8, 'Toys & Kids', 'Kids toys and baby products', 14, '2026-03-29 19:10:44', '2026-03-29 19:10:44'),
(9, 'Groceries', 'Daily food and grocery items', 94, '2026-03-29 19:10:44', '2026-03-29 19:10:44'),
(10, 'Health & Medicine', 'Healthcare and medicine products', 26, '2026-03-29 19:10:44', '2026-03-29 19:10:44');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
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
-- Table structure for table `job_batches`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_03_27_183741_create_customers', 1),
(5, '2026_03_29_183018_create_categories_table', 1),
(6, '2026_03_29_191228_create_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'iPhone 13', 999.99, 7, 16, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(2, 'Samsung Galaxy S22', 850.00, 10, 13, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(3, 'Dell Inspiron Laptop', 750.00, 9, 7, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(4, 'HP Pavilion Laptop', 680.00, 7, 99, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(5, 'Sony Headphones', 120.00, 1, 26, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(6, 'Bluetooth Speaker', 60.00, 2, 94, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(7, 'Men T-Shirt', 15.00, 3, 42, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(8, 'Women Dress', 35.00, 4, 49, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(9, 'Running Shoes', 55.00, 4, 41, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(10, 'Leather Wallet', 25.00, 9, 29, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(11, 'Smart Watch', 150.00, 8, 73, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(12, 'LED TV 42 Inch', 400.00, 5, 25, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(13, 'Microwave Oven', 180.00, 8, 7, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(14, 'Rice Cooker', 45.00, 1, 4, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(15, 'Blender Machine', 30.00, 1, 2, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(16, 'Office Chair', 95.00, 1, 97, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(17, 'Wooden Table', 120.00, 9, 24, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(18, 'Bed Sheet Set', 40.00, 7, 77, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(19, 'Cooking Pan Set', 70.00, 8, 46, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(20, 'Knife Set', 25.00, 1, 81, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(21, 'Face Wash', 10.00, 10, 17, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(22, 'Shampoo', 12.00, 1, 83, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(23, 'Body Lotion', 14.00, 10, 26, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(24, 'Perfume', 60.00, 5, 50, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(25, 'Makeup Kit', 80.00, 1, 1, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(26, 'Football', 20.00, 8, 76, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(27, 'Cricket Bat', 45.00, 6, 26, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(28, 'Dumbbell Set', 75.00, 8, 3, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(29, 'Yoga Mat', 25.00, 9, 15, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(30, 'Treadmill', 500.00, 3, 65, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(31, 'Car Phone Holder', 10.00, 6, 86, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(32, 'Car Vacuum Cleaner', 35.00, 7, 46, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(33, 'Motorbike Helmet', 50.00, 5, 98, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(34, 'Engine Oil', 30.00, 5, 45, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(35, 'Car Seat Cover', 65.00, 8, 60, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(36, 'Notebook Pack', 15.00, 7, 32, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(37, 'Ball Pen Set', 8.00, 8, 59, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(38, 'Office File Folder', 12.00, 8, 26, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(39, 'School Bag', 30.00, 9, 58, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(40, 'Kids Toy Car', 20.00, 3, 67, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(41, 'Baby Diapers', 25.00, 5, 38, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(42, 'Stuffed Teddy Bear', 18.00, 5, 14, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(43, 'Puzzle Game', 22.00, 4, 23, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(44, 'Grocery Rice 5kg', 35.00, 2, 4, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(45, 'Cooking Oil 2L', 28.00, 8, 71, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(46, 'Milk Powder', 20.00, 3, 7, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(47, 'Biscuits Pack', 5.00, 7, 85, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(48, 'Green Tea', 12.00, 5, 56, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(49, 'Vitamin C Tablets', 15.00, 5, 82, '2026-03-29 19:18:02', '2026-03-29 19:18:02'),
(50, 'First Aid Box', 25.00, 7, 59, '2026-03-29 19:18:02', '2026-03-29 19:18:02');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
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
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('c5HVQnDn4odhVm4zE7JufaxQx89gMAMDUNGzdBx5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVpvQUR0cjcyTFBwUW5tREpCRWpKZnFFSUcxSHp6R1lDRDUyQnBGTyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0cyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1774814787);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ana Lang', 'damore.janiya@example.net', '2026-03-29 12:59:05', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'yTy4UIs04O', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(2, 'Sallie Wyman', 'billie.mohr@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'GCGPHktyKI', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(3, 'Dr. Allan Rice', 'tremblay.deshawn@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'vV0XDEJ4aE', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(4, 'Warren Murphy', 'maximillian.dickens@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'XKqzI01mMM', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(5, 'Dr. Julien Corkery Jr.', 'anastasia.carter@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'q1mrfLOorP', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(6, 'Brielle VonRueden', 'panderson@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', '3rgfa7FOeT', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(7, 'Olin Wolff', 'bria.price@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'JPxd1E2e8w', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(8, 'Eloy Lowe DVM', 'imurazik@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'CMVv11LjpJ', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(9, 'Dr. Abe Wisoky IV', 'eva95@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'Lliwgy6xuS', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(10, 'Elissa Wehner', 'udibbert@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'LC1sCoo7pI', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(11, 'Elmer Satterfield', 'johnson.jenkins@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'wabFpJJYYO', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(12, 'Raleigh Wiza', 'treutel.geoffrey@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', '2Urg4JxjSw', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(13, 'Ms. Joelle Dickinson', 'willy.kihn@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'jf8CJwxN76', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(14, 'Ms. Modesta Dare PhD', 'dylan29@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'xdeUSYzLQO', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(15, 'Dortha Kuphal I', 'natalia52@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'CE8qG1hwOw', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(16, 'Pasquale Beahan', 'shanahan.rose@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'HfWPrqJM3a', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(17, 'Jameson Schimmel I', 'dach.kassandra@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'ZRPQGNt8VW', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(18, 'Mrs. Cecelia Schumm Sr.', 'muriel.sanford@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'XvscdkxG6L', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(19, 'Shirley Leannon', 'anabel85@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'xeeEBfXjtB', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(20, 'Keanu Rath', 'uriel87@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', '75mljFfjHI', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(21, 'Prof. Jeffery Metz MD', 'flarson@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'zssukXTaQe', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(22, 'Dariana Luettgen', 'israel23@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'SViH3RhvpW', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(23, 'Mr. Tyree Bogan', 'maria15@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'Gw0u31W0X3', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(24, 'Dr. Payton Stehr', 'martin32@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'MBeenal97X', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(25, 'Waylon Konopelski', 'orville27@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'MoRKIMRDld', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(26, 'Joany Ankunding DVM', 'elenor33@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'HdC9LIX0oh', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(27, 'Larue Tromp Jr.', 'alexzander.breitenberg@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'yLa4NVirSH', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(28, 'Ashleigh Jacobson', 'heidenreich.ashley@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', '8i2nVpBgtY', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(29, 'Bret Gottlieb', 'adan.haley@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'fMRIzjzAcX', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(30, 'Waylon Kohler', 'mallory.labadie@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'bAxhX8T4Rb', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(31, 'Pearl Hagenes', 'chasity37@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'pMwBqWlN4i', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(32, 'Darren O\'Hara', 'oprosacco@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'YFZf20cmvO', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(33, 'Colby Upton', 'kris.nikki@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'I7TqO8Op38', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(34, 'Cullen Kerluke', 'bbednar@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', '7sP3yKG7l5', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(35, 'Jevon Rowe', 'lon02@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'XkkwzS5rtI', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(36, 'Cielo Wolff', 'raymond.stanton@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'gZbomH96tM', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(37, 'Wilfredo Franecki', 'ova29@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'nxEIxro759', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(38, 'Christy Kuhic', 'mariah.ernser@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'FDeSjvaeqj', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(39, 'Joe Bauch DVM', 'kwitting@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'u5PodRp6IU', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(40, 'Eduardo Kozey', 'hcronin@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', '4CDHkXPEal', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(41, 'Carmine Treutel', 'alan.blanda@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'pMXOjoioHW', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(42, 'Emile Balistreri', 'greinger@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', '3lAosvdu9J', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(43, 'Carole Walsh', 'durward23@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'XQCJTnSsST', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(44, 'Miss Ashleigh Konopelski', 'khermiston@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'IdARWxZQm3', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(45, 'Earlene Friesen', 'gcrona@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'dePTznQVjX', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(46, 'Fabian Boyle', 'wjohns@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'lHlQxxkfmT', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(47, 'Prof. Elbert Treutel', 'barton.palma@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'H5Bgks6FOV', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(48, 'Dr. Clay Ruecker', 'garrett.feil@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'Cmgyzh6ZpY', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(49, 'Prof. Moriah Howe III', 'thea.kunze@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'uaqzrnLYjM', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(50, 'Amos Moen', 'dibbert.amalia@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'hpQtbZze9U', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(51, 'Jewell Senger', 'abbey93@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'Me7Fs7HERK', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(52, 'Ms. Peggie Thiel', 'alene93@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', '8CK79t2HjM', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(53, 'Kyla Ankunding V', 'nienow.lucie@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'c6pr3bj9Ca', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(54, 'Jermey Denesik III', 'everette.block@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', '0nAwSYKJLM', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(55, 'Dr. Cydney Reichel', 'herman.ayla@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'YoMe2Yc7kU', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(56, 'Linnie Ferry DDS', 'elenora.gleason@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'hUxIQz80z4', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(57, 'Sam Volkman', 'reese81@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'QSGrP3UzlJ', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(58, 'Cedrick Corwin', 'erin.heller@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'MA6PvVUxWs', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(59, 'Rhett Smitham', 'percy42@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'FUEUqqJh2t', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(60, 'Alva Wehner', 'jbarrows@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'V7gP5sqSKe', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(61, 'Vivienne Mann', 'mmorar@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', '4MPHwiM3sU', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(62, 'Dr. Keeley Hayes', 'liliane.block@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'obHvrGi8Iz', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(63, 'Adrienne Russel', 'sconnelly@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'yiWPa1YuvU', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(64, 'Prof. Robbie Bergnaum I', 'jacinthe.jaskolski@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'X6unTeYjRX', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(65, 'Frankie Walker', 'jeffrey.durgan@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'PMMUee7XPr', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(66, 'Queen Wilderman', 'darron.kub@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'Ar5V5ePVLO', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(67, 'Genevieve Turner Sr.', 'ethan.watsica@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'g0mIl35a05', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(68, 'Bertha Greenfelder', 'benton.bins@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'ZD5WVCdGFi', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(69, 'Dr. Claud Langworth III', 'carlie88@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'EhHsxS2G2s', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(70, 'Eldon Olson', 'vrath@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'bGx3iaBgjR', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(71, 'Everett Kerluke', 'dcruickshank@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', '8oV4z3N1Ve', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(72, 'Tiffany Wisozk', 'croob@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'YSD5QSBqEM', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(73, 'Rupert Pouros', 'reid85@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'FBuOcjvwm3', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(74, 'Prof. Virginia Luettgen MD', 'thea40@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'l2H3HWZh5y', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(75, 'Miss Ardella Gorczany DVM', 'bulah85@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'IN6uCwkkqb', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(76, 'Gerhard Marvin II', 'lleuschke@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'haoKcvsjIw', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(77, 'Donnell Gislason', 'zward@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'uJXOZDH0Ng', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(78, 'Dr. Lina Quigley', 'hwunsch@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'TsQFzdz7jt', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(79, 'Drew Bruen', 'boehm.mandy@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', '03mEONQwIg', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(80, 'Cassidy Moore', 'xkutch@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'Aq3wIaGwHq', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(81, 'Alf Keebler', 'nledner@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'Efre4cMHSd', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(82, 'Tito Nolan', 'myriam.lang@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'Dbxf85m1OV', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(83, 'Prof. Dusty Harris IV', 'reynolds.nikko@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'sOooqGUN6n', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(84, 'Mr. Devyn Tremblay DVM', 'vpadberg@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'XaEdPggpvW', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(85, 'Leone Raynor IV', 'phoeger@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'fKsd1ozRkP', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(86, 'Miss Jazlyn Morissette', 'wintheiser.stephania@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'J7hnzbYcvS', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(87, 'Bruce Weissnat', 'nbailey@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'CTIzGdlyzz', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(88, 'Dr. Andres Prohaska', 'elza.oconnell@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'EUURWxskTl', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(89, 'Myah Dickinson', 'eloise16@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'v0YdmMeaJN', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(90, 'Bernard Abernathy', 'aanderson@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'NGlhDVWZD7', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(91, 'Antonetta Yundt', 'huels.jana@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'vqinLBQjtN', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(92, 'Dorcas Trantow', 'carroll.dayton@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'EvYWmCDRu6', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(93, 'Virgil Bogan', 'mhermiston@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'e1QdSLPugc', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(94, 'Dr. Wilber Feeney', 'elfrieda.dooley@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'Mr4EbwZTgl', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(95, 'Vesta Kunze', 'rlowe@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'rlNyUQ7m9A', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(96, 'Miss Rhea Keeling', 'loraine.kuhic@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'DEGxQYdBSV', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(97, 'Gilbert Kuvalis II', 'trevor.wunsch@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'L9Gd2LCdTR', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(98, 'Alessandra Hudson', 'tyrell.green@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'YguHY1K6b1', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(99, 'Ms. Jody Veum MD', 'dustin04@example.net', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'Bo3vTIMmYj', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(100, 'Luciano Paucek', 'ava.schuppe@example.org', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'FBgSJZJ32j', '2026-03-29 12:59:06', '2026-03-29 12:59:06'),
(101, 'Test User', 'test@example.com', '2026-03-29 12:59:06', '$2y$12$Xm3Cq3NTMus6wLq6nMJ3uOAWWaUlLivTDY5i.FyzeIJbLIATfAlZW', 'gC8MFyaxrw', '2026-03-29 12:59:06', '2026-03-29 12:59:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
