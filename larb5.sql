-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Temps de generació: 19-11-2025 a les 22:54:20
-- Versió del servidor: 8.0.43-0ubuntu0.24.04.2
-- Versió de PHP: 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de dades: `larb5`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('estudijoanpuig-cache-spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:32:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:12:\"view_clients\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:14:\"create_clients\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:12:\"edit_clients\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:14:\"delete_clients\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:13:\"view_products\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:15:\"create_products\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:13:\"edit_products\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:15:\"delete_products\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:10:\"view_sales\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:12:\"create_sales\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:10:\"edit_sales\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:12:\"delete_sales\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:14:\"view_purchases\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:16:\"create_purchases\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:14:\"edit_purchases\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:16:\"delete_purchases\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:14:\"view_suppliers\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:16:\"create_suppliers\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:14:\"edit_suppliers\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:16:\"delete_suppliers\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:14:\"view_employees\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:16:\"create_employees\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:14:\"edit_employees\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:16:\"delete_employees\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:12:\"view_reports\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:14:\"export_reports\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:10:\"view_users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:12:\"create_users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:10:\"edit_users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:12:\"delete_users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:12:\"manage_roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:18:\"manage_permissions\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:3:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:6:\"editor\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:6:\"viewer\";s:1:\"c\";s:3:\"web\";}}}', 1763678265);

-- --------------------------------------------------------

--
-- Estructura de la taula `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de la taula `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'laravel', '2025-08-09 06:56:33', '2025-08-09 06:56:33'),
(2, 'wordpress', '2025-08-09 06:56:33', '2025-08-09 06:56:33'),
(3, 'codeigniter', '2025-08-09 06:56:36', '2025-08-09 07:11:19'),
(4, 'php', '2025-08-09 06:56:36', '2025-08-09 07:11:31'),
(5, 'pagines amb errors', '2025-08-14 05:30:49', '2025-08-14 05:30:49');

-- --------------------------------------------------------

--
-- Estructura de la taula `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de la taula `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de la taula `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de la taula `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2025_08_11_173150_create_cache_table', 0),
(2, '2025_08_11_173150_create_cache_locks_table', 0),
(3, '2025_08_11_173150_create_categories_table', 0),
(4, '2025_08_11_173150_create_failed_jobs_table', 0),
(5, '2025_08_11_173150_create_job_batches_table', 0),
(6, '2025_08_11_173150_create_jobs_table', 0),
(7, '2025_08_11_173150_create_password_reset_tokens_table', 0),
(8, '2025_08_11_173150_create_project_tags_table', 0),
(9, '2025_08_11_173150_create_projects_table', 0),
(10, '2025_08_11_173150_create_sessions_table', 0),
(11, '2025_08_11_173150_create_tags_table', 0),
(12, '2025_08_11_173150_create_users_table', 0),
(13, '2025_08_11_173150_create_wp_contabilidad_categoria_clientes_table', 0),
(14, '2025_08_11_173150_create_wp_contabilidad_categoria_productos_table', 0),
(15, '2025_08_11_173150_create_wp_contabilidad_clientes_table', 0),
(16, '2025_08_11_173150_create_wp_contabilidad_detalles_venta_table', 0),
(17, '2025_08_11_173150_create_wp_contabilidad_empleados_table', 0),
(18, '2025_08_11_173150_create_wp_contabilidad_productos_table', 0),
(19, '2025_08_11_173150_create_wp_contabilidad_proveedores_table', 0),
(20, '2025_08_11_173150_create_wp_contabilidad_ventas_table', 0),
(21, '2025_08_11_173153_add_foreign_keys_to_project_tags_table', 0),
(22, '2025_08_11_173153_add_foreign_keys_to_projects_table', 0),
(23, '2025_08_11_173153_add_foreign_keys_to_wp_contabilidad_clientes_table', 0),
(24, '2025_08_11_173153_add_foreign_keys_to_wp_contabilidad_productos_table', 0),
(25, '2025_11_17_125125_create_wp_contabilidad_compras_table', 1),
(26, '2025_11_17_125125_create_wp_contabilidad_detalles_compra_table', 1),
(27, '2025_11_19_220748_create_permission_tables', 2),
(28, '2025_11_19_222750_add_avatar_to_users_table', 3);

-- --------------------------------------------------------

--
-- Estructura de la taula `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de la taula `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Estructura de la taula `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de la taula `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_clients', 'web', '2025-11-19 22:14:05', '2025-11-19 22:14:05'),
(2, 'create_clients', 'web', '2025-11-19 22:14:05', '2025-11-19 22:14:05'),
(3, 'edit_clients', 'web', '2025-11-19 22:14:05', '2025-11-19 22:14:05'),
(4, 'delete_clients', 'web', '2025-11-19 22:14:05', '2025-11-19 22:14:05'),
(5, 'view_products', 'web', '2025-11-19 22:14:05', '2025-11-19 22:14:05'),
(6, 'create_products', 'web', '2025-11-19 22:14:05', '2025-11-19 22:14:05'),
(7, 'edit_products', 'web', '2025-11-19 22:14:05', '2025-11-19 22:14:05'),
(8, 'delete_products', 'web', '2025-11-19 22:14:05', '2025-11-19 22:14:05'),
(9, 'view_sales', 'web', '2025-11-19 22:14:05', '2025-11-19 22:14:05'),
(10, 'create_sales', 'web', '2025-11-19 22:14:05', '2025-11-19 22:14:05'),
(11, 'edit_sales', 'web', '2025-11-19 22:14:05', '2025-11-19 22:14:05'),
(12, 'delete_sales', 'web', '2025-11-19 22:14:05', '2025-11-19 22:14:05'),
(13, 'view_purchases', 'web', '2025-11-19 22:14:06', '2025-11-19 22:14:06'),
(14, 'create_purchases', 'web', '2025-11-19 22:14:06', '2025-11-19 22:14:06'),
(15, 'edit_purchases', 'web', '2025-11-19 22:14:06', '2025-11-19 22:14:06'),
(16, 'delete_purchases', 'web', '2025-11-19 22:14:06', '2025-11-19 22:14:06'),
(17, 'view_suppliers', 'web', '2025-11-19 22:14:06', '2025-11-19 22:14:06'),
(18, 'create_suppliers', 'web', '2025-11-19 22:14:06', '2025-11-19 22:14:06'),
(19, 'edit_suppliers', 'web', '2025-11-19 22:14:06', '2025-11-19 22:14:06'),
(20, 'delete_suppliers', 'web', '2025-11-19 22:14:06', '2025-11-19 22:14:06'),
(21, 'view_employees', 'web', '2025-11-19 22:14:06', '2025-11-19 22:14:06'),
(22, 'create_employees', 'web', '2025-11-19 22:14:06', '2025-11-19 22:14:06'),
(23, 'edit_employees', 'web', '2025-11-19 22:14:06', '2025-11-19 22:14:06'),
(24, 'delete_employees', 'web', '2025-11-19 22:14:06', '2025-11-19 22:14:06'),
(25, 'view_reports', 'web', '2025-11-19 22:14:06', '2025-11-19 22:14:06'),
(26, 'export_reports', 'web', '2025-11-19 22:14:06', '2025-11-19 22:14:06'),
(27, 'view_users', 'web', '2025-11-19 22:14:06', '2025-11-19 22:14:06'),
(28, 'create_users', 'web', '2025-11-19 22:14:06', '2025-11-19 22:14:06'),
(29, 'edit_users', 'web', '2025-11-19 22:14:06', '2025-11-19 22:14:06'),
(30, 'delete_users', 'web', '2025-11-19 22:14:06', '2025-11-19 22:14:06'),
(31, 'manage_roles', 'web', '2025-11-19 22:14:06', '2025-11-19 22:14:06'),
(32, 'manage_permissions', 'web', '2025-11-19 22:14:06', '2025-11-19 22:14:06');

-- --------------------------------------------------------

--
-- Estructura de la taula `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `projects`
--

INSERT INTO `projects` (`id`, `name`, `image`, `url`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'estudijoanpuig', 'larb5.jpg', 'http://estudijoanpuig.com/', 'portfoli projectes i primera comptabilitat amb cruds no filament', 1, '2025-08-09 07:09:23', '2025-08-15 10:01:16'),
(4, 'wordpress', 'wordpress.jpg', 'http://estudijoanpuig.com/wordpress/', '<p>http://estudijoanpuig.com/wordpress/</p>', 2, '2025-08-09 08:43:07', '2025-08-11 18:27:09'),
(5, 'wp_nitida', 'wp_nitida.jpg', 'http://estudijoanpuig.com/wp_nitida/', 'wordpress al vps', 2, '2025-08-10 09:06:07', '2025-08-11 18:27:26'),
(6, 'manual_vps', 'manual_vps.jpg', 'http://estudijoanpuig.com/manual_vps/', 'http://estudijoanpuig.com/manual_vps/', 4, '2025-08-10 09:08:49', '2025-08-11 18:27:48'),
(7, 'php_twpreline', 'php_twpreline.jpg', 'http://estudijoanpuig.com/php_twpreline/', 'http://estudijoanpuig.com/php_twpreline/', 4, '2025-08-10 09:10:10', '2025-08-11 18:28:12'),
(9, 'http://estudijoanpuig.com/ci4admin/', 'ci4admin.jpg', 'http://estudijoanpuig.com/ci4admin/', 'projecte codeigniter molt treballat', 3, '2025-08-13 05:34:24', '2025-08-13 05:34:24'),
(10, 'http://estudijoanpuig.com/sheets/', 'sheets.jpg', 'http://estudijoanpuig.com/sheets/', 'http://estudijoanpuig.com/sheets/', 1, '2025-08-13 06:39:48', '2025-08-13 06:39:48'),
(15, 'http://estudijoanpuig.com/nanogallery/', 'nanogallery.jpg', 'http://estudijoanpuig.com/nanogallery/', 'http://estudijoanpuig.com/nanogallery/', 4, '2025-08-14 17:11:14', '2025-08-14 17:11:14'),
(16, 'grok', 'grok.png', 'https://estudijoanpuig.com/grok/', 'Plantilla d\'administració Bootstrap 5 gratuïta i premium\nUna biblioteca de components d\'IU professional que inclou més de 500 components d\'IU, formularis, taules, gràfics i icones llestos per utilitzar. AdminKit està construït sobre Bootstrap 5 i t\'ajuda a crear aplicacions més ràpidament i millor, i a oferir la millor experiència d\'usuari.', 4, '2025-09-02 17:54:26', '2025-11-10 14:00:13'),
(17, 'laravel12', 'laravel12.jpg', 'https://estudijoanpuig.com/laravel12/', 'laravel amb tailwind4 i filament3', 1, '2025-09-09 09:47:34', '2025-09-09 09:47:34'),
(18, 'posts_adk', 'posts_adk.png', 'https://estudijoanpuig.com/posts_adk/', 'bootstrap 5 emn phpmysql amb dashboard i login logout profile', 4, '2025-11-19 13:15:32', '2025-11-19 13:15:32');

-- --------------------------------------------------------

--
-- Estructura de la taula `project_tags`
--

CREATE TABLE `project_tags` (
  `project_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `project_tags`
--

INSERT INTO `project_tags` (`project_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 56, '2025-08-15 16:44:21', '2025-08-15 16:44:21'),
(1, 64, '2025-08-15 16:44:21', '2025-08-15 16:44:21'),
(1, 106, '2025-08-15 16:44:21', '2025-08-15 16:44:21'),
(1, 132, '2025-08-15 16:44:21', '2025-08-15 16:44:21'),
(6, 47, '2025-09-02 16:47:20', '2025-09-02 16:47:20'),
(6, 54, '2025-09-02 16:42:46', '2025-09-02 16:42:46'),
(6, 63, '2025-09-02 16:42:46', '2025-09-02 16:42:46'),
(6, 64, '2025-09-02 16:42:46', '2025-09-02 16:42:46'),
(6, 132, '2025-09-02 16:43:51', '2025-09-02 16:43:51'),
(16, 46, '2025-09-02 17:54:26', '2025-09-02 17:54:26'),
(16, 54, '2025-09-02 17:54:26', '2025-09-02 17:54:26'),
(16, 64, '2025-09-02 17:54:26', '2025-09-02 17:54:26'),
(16, 106, '2025-09-02 17:54:26', '2025-09-02 17:54:26'),
(16, 132, '2025-09-02 17:54:26', '2025-09-02 17:54:26'),
(17, 62, '2025-09-09 09:47:34', '2025-09-09 09:47:34'),
(17, 64, '2025-09-09 09:47:34', '2025-09-09 09:47:34'),
(17, 132, '2025-09-09 09:47:34', '2025-09-09 09:47:34'),
(18, 46, '2025-11-19 13:15:32', '2025-11-19 13:15:32'),
(18, 47, '2025-11-19 13:15:32', '2025-11-19 13:15:32'),
(18, 107, '2025-11-19 13:15:32', '2025-11-19 13:15:32'),
(18, 132, '2025-11-19 13:15:32', '2025-11-19 13:15:32');

-- --------------------------------------------------------

--
-- Estructura de la taula `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2025-11-19 22:14:06', '2025-11-19 22:14:06'),
(2, 'editor', 'web', '2025-11-19 22:14:06', '2025-11-19 22:14:06'),
(3, 'viewer', 'web', '2025-11-19 22:14:06', '2025-11-19 22:14:06');

-- --------------------------------------------------------

--
-- Estructura de la taula `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(1, 3),
(5, 3),
(9, 3),
(13, 3),
(17, 3),
(21, 3),
(25, 3);

-- --------------------------------------------------------

--
-- Estructura de la taula `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('023Xnf3hL4ijcsZn6PsVoUUU3d5xT9HFDirLVG1I', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibGQyZVd5RmdoZ0Q5dkJ4NUE4MUFaZUhDRmdlZ3F6NnFtUGVWTU52MSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763580652),
('09cbDoKXSItYgQyuIIq6dFmwXEMfWksysVYUZxBU', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieUlFdGZaUkt2bHpxM2VCaGV4VmlDUzdaWmg0Vm5zNkY2Sk9zUDRsSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763568081),
('09TpSnTZJf8v1CxcYHUUGL7SDGAZpbWdRC5r1MzW', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQjlqYkxJZFNEaXZGeEZpY3J5bHdFZnBueEV1WWo5OFVBNTcyMWkxNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763574359),
('0F9W7UWuArvuChzGvE48bNqtGVdwdfpLuRU0mtL0', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTENWV0Fzc1dEWkwwbVFFUXpHcnB3VkFFZzNZVnBoSHR2ZkV6aXM0QiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763589173),
('0fH3vHmlAJU7eRWBmZOg1ycCiZDg89eP6vYNmwWC', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiY1hVaUo0VkdRTlVQZXhLcFpCQkhwSmpWVGV6YWVaNDBpOVpxZFREWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763590220),
('0SFzW5PP4ikQ1FqrNAGPUKevYPCssqlCk1i7xnwp', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVTBNbjd5N3UxRUJncTdtaXpNaGVNZHgxOTdWTmxCMEd2MUJieDdTdSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763576442),
('0UCrBcagIKIoIjhbugQTJazDgnjjvX0N7MMsRkzq', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTDd1VjdUZ3JySXFhVmVFcnJ0WXY4dnBKSFg2dWRnaFMxcWp3Qzc3SCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763570072),
('0uJ4S5PprHMcX4gPJsRpHzLFn9vKeDzJTXuwcuGg', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUmhPWnpTdXlJbzV6MDRvc3hvUktJeUFLcW1wRno4QWNkaEtwQ0RqZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763579870),
('19Dwh0UOR2e5g9LqF6pkJToWI4QMfJAgplXYL48M', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWVpVUTBzaGdSbDFMc1Y5N2JNSjJneU9ibEJzMXVKcjVsOXk1OHRIZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763590882),
('1IBh9JOuuQaDhxMCJZXghkdVswxMJlRi7LX7fDF2', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWWZXWFFzWXFZTlVyUkpYekx3MHI4VTh3VGNoSmlSNFlqdjRjbWppZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763580532),
('1Kctz7RXXJVNNVnSoIxVhAJ36WE41K3iNtlNXGqc', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidTdNQXo0UzZ2U1JBN0wxb3gzMHNEdUh0SUlObHU1MmtjYzlYN3c4NyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763574539),
('1tfSrUqh8tVq3u2mMaAHoWr0cwkipHs2iACiImYP', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaE1KbVNFeTEzakhhR0tqSnVWRDBrck9CUjU3RW9KU3NsVmNFa0d1NyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763569411),
('2cpjRT3otrvvOp7FYcp68TzMCbeRvZ26vEnk6t9i', NULL, '72.56.79.36', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNkVEZXFnc0QwZ2RsTm95dEF0b2Jla0x0a0RzVzF4enlxOTBvcGc0ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vZXN0dWRpam9hbnB1aWcuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763583005),
('2jo42GOPlQju78Sc2wAx7D7ynkKeJ5oNbtQw2BCR', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiM01QaG9pV2dTOHNySXJHYjMwYXRJTXlHYmp2bFhvUGJOeWFvajlqZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763583481),
('2k0zSfo02x5mJDCwQrnhU5OKBaoKz5WbEnv2uToY', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYmZKV0VDYlZGWFJjNGhUME5aUmFYWDdEZDZaTGdPc3RJbENITUg2OCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763577164),
('2k33Ln08gvs5LhdSdeZVSX3a2hhQh0vPkMZouZlC', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOTdFcDFqVEFNT2o5YUcxVUZUVGhjem92RGlGWWlhQW9STlVZSHBxOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763588588),
('2rka9wnsZcgASnpA0AvLyczrvxjl3Y0jOYV1ThqQ', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUVZtSmxqSTBOR0V0M21Xbm1BUDZtbDBDb2tiSVRjRm1zRjhaejh6cyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763590702),
('2tji20n7jfSam22HnyDuedFLijIXp2WjHtAMvsZ6', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNlpFRXo0SFN2SXJnTFhOcEtQeEhMRzNHQlpGMnRlenQxdFo1T2JSSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763570734),
('2uDdefDPClrjHva9yhVtV0youLnqxE2baMirPkzX', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoia3BaSEljY1dvTmd1eEZReTRmZTU2SUZ0blNaQkl3RTc3QjJFM0dyNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763581495),
('3eQlCYlDS6xsYP6kwZy5Im0mATAmCSCS6v3Zhlgs', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZ24zRXdyM2ZHM01iS056UlF4WFg0czFsd05XdkVVa0pxY1NjcVFPeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763587665),
('3FNmPIpsai01L5GxbVIkiesohuMDajWSFCDsnkHu', NULL, '2a14:7c1::2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHVlZUhvNFZJZ0p4TEJLdkJlMUZERnY4NTVWdWwyMzFscTdzS2Q1TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd2VibWFpbC5zcnY5NDEzMTYuaHN0Z3IuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1763574258),
('3jYLUJEWCURRA0TdvKZvVWr8v1QFlzn7qvER6V2r', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ3BjSWVrVU5LblM3MW1IcUVjb1ZjMHUySmU5aHpOTmcySG1yWUtYZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763572855),
('3kaoCF3vZgxy2T7ZioFRJtj6rV8W6aEvwEGXgVQm', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNlhyQkdrSEpIVkg4RHBienlSY3VCVG1EeU5WNmREdU9ua1JVaGh4MCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763589980),
('3urmUzk2lioCZAEIlUy2bNTl9Icqrfx60mcM9S75', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNmlDd1dJR3lnOUE0bmhTczNVZ21iWmZ1eTRleEhvY1BTNVJFbExLUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763576321),
('3vTtx04qY12ietlpFji7iaMwbDqECXUghwPz4wkK', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUnFGdzJCcFAwUEJuTzBhMTE4RWRGT255ZGJ5b3RvTnRoVzBDbGhiaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763586517),
('41XEX5HkiNxdRYExzWZuCBoIJXvzA8PFO8NGFYoN', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUkVVeTFucm02VUFxTTY2RHFKdzNXV2IzSFdDcDNnSXBCNXVqMGVKcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763578849),
('44UzJ0Wbtu18bAvQWlh1HDwM3y5DOXE36ZOAZVai', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRnpJQ1EzVDMxTVJUWGpoT203eDVxWXdJcVJPV21VNFU1WUtSa2htMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763589654),
('4i2zRgpcFdC7jAxp8TfmbnQoIuHDms5WijEUKdet', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiT3lvTTlZb1pabkxNT3E1V0Nvck4zUXRySmpINkdWUUtNYkk5TnhKMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763571757),
('4M2QGMJcL4b96OEILl0JnhNy3zBqkGcyDDHTZHQP', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiV09wWHEzU1E1NUtLaXpHZmhBdXFkTGpxOEVjTm4zdDRNQW5jN2YzYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763577044),
('4qANR626NCT7vNosAqRgyOlcnWVEeC9qCOI8n3f1', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiR3ptd21XV1NCTVg4aGVNN3V2WjZGVmtGS0VYWWc4d21rcjd4YW11VyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763585106),
('4ROWxI35KI6v3fvhi028cVXPgRyGqZur4VCshEux', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiM1lYQU9uOEc3dWl0dHJGelpwV3VTTnFRWkkyRXROZWpYQTVSeHJXWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763581254),
('4Xnqm4ECc5iZ7ztnsHx4golwV66SmZEaqYtFGnJY', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTU9OcVp6UEcyMXJGQ09GNkZ4MUxwS21oRlQzOEw5NmZEMm1jaE5nTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763579389),
('52ZXWjua3tGYtFv7HpIFDLAwVTkUQ2PXwsXu3fkl', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicXR3bE5BSVNJWk9TVmg1TlNaak1uYUJnWThhaGs0bHBQWDdRWUx1bSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763580111),
('57DGj6J32fmuoXjymNGiqLHNYq5HhtYHYmtMVUqo', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaFF3MjNSM0FFUEZFc0pmdzh2V3QwbjU4VFR2VFA2VWE0a2Raazh4cyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763578970),
('5cKK9hvRDDvC1lgW3XEipQ8R9Rfkhelet2AUjdEZ', NULL, '2a14:7c1::2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3BOalZLQlFadzJvRTBTa3RkZzMyeU1ReldyU0RIRm1vNGFUTDdoViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vd2htLnNydjk0MTMxNi5oc3Rnci5jbG91ZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763574258),
('5gaN6U4wE4EtlTSE3kxwXlWA0x6DUwQ5oUdJBOLx', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYzJKVWxPNTNCbm9DWnpKTXJhb2prMDZ0Mk9LSGZIRHRUakZJcUZHciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763585226),
('5KqDtQ64Q9UQekGAjdypIxLZq8DGKztWLFCyKbHl', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiY3BaQkZsVXpkOUlwTnptSGJxcmFnWG51NkJTQVlOcmpldlJTVjJENyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763578910),
('5KXThMrC86ekbbsKUo6pZhO2NYCGDnuCJ2svAfi8', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSW1XaFE1VFNNQWlCMDhWUWhwM01jSjhoenIwVms4cVV5MUg0QVR2MSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763584745),
('5KZcPqJnmqhWjGdjnIFhUqtvAaY67MIwSd7tU9ie', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidm9zN3VrRTNhSDB6S25EaVpYRm5OZVNkT3pYWUZ4c0ROcTlTbkVuZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763574858),
('5mZ2qtPo8uTK60eqAN6GMxfhdc15g10hfqC0IeVS', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ3NTWWtzTU1NYWxvaUh1bnN6ZkpsbkN5TEVNSW82andTMmlwTzZGciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763588157),
('5mzerRy79oyEU1gbLxcEj0h8PdTRxnoiTxyFsUmg', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSVI1NHZYNVdNUVNOVTdyaGMyQzU1VjFmcHhPQ2NNaUJTdGtSYk5xWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763581374),
('5NXY87iVq4MA5jtyRe1HUrP7Jbs0meoJnf02RT85', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ1IwQ0pOYUlQYWlNWFlLaGxNM3ZTUXBQQnVpZ0l4RTd6V3NQc1dObiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763577285),
('5xVNNE9Hu7nhuRiN7KCg1giEADBaZXBAzDDWCxAe', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWllVOTNLMjZkMlJQdnN3VGZNWDYxbFEySHlucEpJWlhNSU95RElreCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763570915),
('6Cfc4J8IxxoLE4mHWSyDO0hAKwR55r0azO0ORM98', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOVpFNm5wU0kyY1FxSE15WWNYcDNaTDVqc0tRQ3c3MXdRVFpCdjRKdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763591666),
('6echgWVu6IX1O0VU8PSWzwnbseYvGG2kiuYKUQ3d', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNWVmVTdibW1mbGZWbzloZ0hSOUozMzhaaVZJcWNmODNZeEVGbWxrOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763587304),
('6ekbFfc0AYyXnOaDTAl2mJtKdkuXclgQZYBDqSz4', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRVJyRTVoRUZXU0h6bmloVDVwNkJKWHQ0bUM2T3pwS0VoM2V4TEEybSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763577646),
('6GKzUF1WfZ8TcTjWJ3NKCyDwqcX48z8S75x5p8Ay', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiazB6QjU3YVl3TjgxalA2eGJxMXBJOWx3Undja3p4VHdjS2NtaUlRRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763586131),
('6Io1OtCBmH3abAWnqv5w84DOq3nAcIOjggyrwAjz', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieEZhU2RMZ2k4cVlZMGp2d05hdWt6d2pzYjQ0dFZLYm9Ia2x0ZjFIbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763572614),
('6NFx5O9UoJoXPkUefqEeTYAwIAOHX2NsPQWCmIKL', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoid2paSzh1dUlGd1o2aTRjSEtEYmJLVURBbTY5Q2NiMVZ6cWl0dXVBcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763584986),
('6SE3WIRSIyYoq5SSKA2s9LpMVPXP4nku9u15WWiX', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSlFIa21JUDZtWW9QeFY3UmtzSnVOYU5DelJqTHV1QUh0ZFVtcjYxNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763575780),
('6vpOkObiOvGtDllVr1mURNm7XT3NkdJnXOQRt3uk', NULL, '49.51.72.236', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDcwTXdwV2Q2TlFtWlJERG1ob3E4elAwbk1hS0tYZWNPQzZJajl2ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDguMjMwLjExNy4xNTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1763592295),
('74yTdReOrLSAZck0p03H2MMXHhLlUvtYgIwgn9Sy', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYWlYaHR6Qktpbm5mdm1Hb09IY0hhRzZYWUpFa3haaXhaSHdNYUs4MiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763570193),
('75Ltf7xfzMuwgpzvpSomucq2InOL4CXAuBMPYK1B', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaUcwa2txQkhhWm9NSE9RdE0yZE85N0hLYVZpa1Q4alVhbDdmRDhadyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763568326),
('75WqfgHPbaZuFY4FIGKVqA28oGkhQieRwRWsFHkY', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZlBxRWZyUElpYXhDSGlFRjk3MDdXdFZiU1pLYVhaeThHWlFXTVU1SiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763573095),
('7EyWfjA2kKmsQG0s8FTCyqbj3aahuc9Pk4w1NpDA', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidEFsVmtIekM0SHc2R3Y0VEh6OXRqQkQ1MDJ6S1FzUHRCMlJBV25WVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763567900),
('7lz7ccBfg1gp3bBe9MuHW5f76EYdK94DQqAj92Fp', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiY05FTWtpTElVTzNYU2dwVFNzY0oxbFQwRTBnQkZFbXgxUEU5aUx0ayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763589594),
('7mQSLjSrorW3pUsVgZSXzs3dEOjeoMT5jKnUNxCq', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTG12Y3B6WGlpRVoxNUMxQjhsem40clJ2aFNGNTh4ZFd0eENDZzVpeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763582219),
('7Ow1MoZPiKQFCv8xXW4nVSECX7w5Bvwv7Xx2ZwK5', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVVJ4MUJSbWdLSEJmNGVTbmswbE5BWHllM2FjWFE5Vmxab1Q5QThDQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763577947),
('7smPLnNbMDvKokTz3VoFbtfXqbrTrQOLIsIrFsak', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiU2RabHJwMUJBdW9QSUNOQ0RNWFlPcjNrQXlCelNJdmpzYW9YV3JGcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763571336),
('7WAtDiOlJTcsplK4CFFlgQLe5mfdsLSXVnwew5HE', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUFJZQkFWdmpKbkVINmhIU3p3a3ZlRUtaektRakpLT3pxSUlrRmpXbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763574918),
('7zpbTlzazviinarwdyipBnzc7ZlgJsk8sdaN3hKC', NULL, '178.62.248.138', 'Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 10.0; .NET4.0C; .NET4.0E; .NET CLR 2.0.50727; .NET CLR 3.0.30729; .NET CLR 3.5.30729)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYnJRQmlaWlZ2V2FBMXc4RVVLdENxWmdzV1N0VG9mczl5STExS0lqTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vMTQ4LjIzMC4xMTcuMTUwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763585204),
('8aEemcWhUtGMGMvZDTbMj9jd6PbViNMf1k8COUAS', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQlJRTGRKVnRhYjk3RVFNT1pmb3dWaXdpTTRkVzJ2a2w3SzlnNjdvYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763584324),
('8nclQvP8pgcNCLF1iNlbYzNXhb5Hg0GhVhWN11is', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaEVPQU04bUliajRLbVhoWlFJeDNKdUo5UXhXZ0pmTE9RM01nRlZQeSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763581134),
('8sjGmFjdrMEDaYVrWfD5romElaZp8RpJpjof5qsl', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZGt1Z3BGZlNQT3Rab203dUZtZW9BVVNWeGlvVGVId3ZIbVNSSVk4aSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763578188),
('8WGqtj2P0AXSIhyDJYHY5vG2M2C4OVrhNWHK2a59', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoib3ZWRWd2MTJFVnY1czVLcjlTd29DMWFYTEZtWnMyb2JFckloNmZLbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763583240),
('9cs74LfxR3FAlp8bONIzkUwknaAg9JwBDF2dXaJV', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUlQxNzVJdzl0cnRhRWZHYmd2Z0N3QTB3UmdNS1RoYlNObkxuQW93OSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763585949),
('9DYZLemBsiUGJ86OmFRjznX8cMfug0NY6Xj2fTDU', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQjlUMW94UTRoV0g4enlPdDBud2swaURwZVlNdmV3OTMwMVo1WTVFTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763591426),
('9IOqKe33Q7QQDzz00pvyQDOkzWBuPP4NRmYQAMTB', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaWNHUGhGQ3hoYTdpdHNSSWhCcjZHWVdtamRVRWw0a1BVcFdBRnoyZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763590160),
('9KkHwNCLB9UAhYLpL7oZbjN616V9PUVvu8zI4qOQ', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMTFlSVVLMEM2Z2FBV0ZYUVNRVXFmdkhHRlFsbFJhc3ZXdUdkTzNXSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763568687),
('A0ReoE3Mlb27lDIWczxQULdoYR685OqWeELOutZf', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidVQzNEg5YVRrUlU1UmpOVjkwcnRJdWZGNGxWbWNYYUM4QkxiQWlmTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763591243),
('A7Ib6AaEYiMQSrYuP2Fi2hIAOqT96g060APRyOLo', NULL, '185.156.73.167', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkV6UjY1R0pzNnBaZVk2SzRrdUtLMW1BOG9DdXdKeGJ0MmJFZ0ZueiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vMTQ4LjIzMC4xMTcuMTUwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763578321),
('a9WQ36TdUymfURIGdYLk8dcCn5HlZDLo33bVnQCf', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSnoySkZ3Tnh1blhIbm5VOGE1a0lnaktZeE5vWjk2QmNmN2VjN1JxNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763576261),
('aajdTGs4JbPrOEnURQryTeu8R6zZgdXQlHuW5B6x', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiV1FKRDNtYUlDaUNkb0VRbGl1MldNU2hNb2VFQmpINndlVnZJaDRxcyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763583783),
('AI64MjXd820E4JUbuP6mL2tzjJr0MG4alEH8aSDc', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiODZVUEt2NGpjbU52MFRWNHAzbE94M2JPOUtKSEhpNTI3dUtWSjg2ZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763587424),
('aihxy24CXoplDpWtlFolvIXpAJNphdGw1XpzEdhL', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWG5wdEYzUmhWZ3Y3TEZBSzBBWWxqMGUwWWpGUFJHUG9JcWs0RW1VSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763579810),
('AkLAh0s2jLlOY8ZJABX5wsCq6kSKf2w9xdg1NQxy', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidWxjbXJFanBHQk1DRG8xRHptUjlMU0p2djRtOEphNWs4OEloMEZESCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763589714),
('AM4TdXGxjJtvLOh7tPTrDlNxpxhTJlW1ph4P3SgR', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiV0FCOTYyN3QxV1hhM2tzbXRJVHoxMFFkaHJDcHJlN010YzlsN0FZaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763586010),
('anl1tngjTRs914tJepAk9BEtqmaWHOdSfL4GMVSC', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN25BV2l6cHRTcmxkV2tCc05VZVZmbERYQVdlcklrbmR4VkFKdEZFSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763575659),
('ASpqnGP1VcKfT4ZLye3higrAvttszz5jq1e0IqtR', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiblNXUDZ3dmttenpPM3pCRUU2ZElZWUc1c0gxeFh5YmN1VlZ5YTRTSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763568506),
('Awu9y2QdZpTMvHDLh1AfRvmKWrSfUXNK8olKhnAw', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiV2xabmRRVjZaa3lGUE9pYmREeUZBQ0hEOGVMWGpobEMxdDdZb0JOZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763587244),
('aXPwBcvCsaA5LrlwVbf8LFLvqvBvKV50RHkIjuTw', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieUt6dnQycmJYSU5nNzNNSTNNSkhZZkhUaHZlN09Cdll0WmNYc1VHZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763578308),
('B1Qft6gZdOeAvQUh6gHzQEF8enTiIINl5ibyFW0o', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieFgyWlphcjhqVkxYVjB3NHRhYlhoY29NZG5RcjhkZmI2MWF2MTQxQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763571276),
('b6S4DJQF8LDJKmzzfycFUV0n1MluanfXqsvzopYh', NULL, '2a14:7c1::2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRUUyVktiblg4YkVoeDVuYWo5blFYblY4S0lnOENKQkQwYWl6azFGYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vY3Bjb250YWN0cy5zcnY5NDEzMTYuaHN0Z3IuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1763574258),
('BDLl5IINF46oIJqXIvJRKUWzedC7NtyZ6hqDps79', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNGh1b2d1Q1d4M2c2QUY0R0g3Q1F6WkEzdm5hR2RYSmNJV1BrdFhGUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763591727),
('bGLrq89Mibex0ur18nYGSBshAp6ZKchG64IhlTQg', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYUhwam03QkZyUUpFTmZDV2VOc1ZMUU1MV1BhVkl6bWI1YjI1ZE15dSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763568627),
('bIcILh4ocUb9j2RXXVEhF9saAQ0QXDhbzuldz4Tw', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWDJqNGxFVDhrNXlHQ0E4aVkxY2lDZFV1cE1RRkJ4Rm5ienNxVnRPOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763581434),
('bjHEByGOKmfGEDtDeB1XJo7L07gCuhm4RTjrBUkt', NULL, '184.154.76.53', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibjNtTkRGU05XMXZJcm1SNWlUYktXSFFxYzU5ZDhaSnBjR1lETmNwRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vZXN0dWRpam9hbnB1aWcuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763584625),
('bngzQiA0kcrJTiVLUq25cCrqJOlBqZRLS9X5bb4C', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUVhjaWU1QmFyczJyZFBuY0FCeEx5ejlCZmhpNmlVMUJ5eVZQd1NieCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763589919),
('boONiBSoIJRQilKxt33v3cppYRNevwo9YT2ybjnq', NULL, '43.153.48.240', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEVQaDBWSzh4Q3lCc3AyUzVua2M4NWdTNVByNUR0TlhxS2t1YktHdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vZXN0dWRpam9hbnB1aWcuY29tL2FkbWluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763574193),
('BTBde9nmpWBdGjkpUnEY4A0rvNAHlqFCUHM9Edr0', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiU1p3OHNMdDVZbHhySmE2WUkxdnpzMkV4MXZ6bXMzOE05S0ZFVzZDUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763592219),
('BUhPki76dqlicQQqvP6mBXKxOXKOi5eBj1B1qTsX', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidWw1QjhpZFlZRDc5YkVreEZlTktIRDBVelJBNjRWY2FHaHdhSnM3aSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763587545),
('BuzHgIj2RCzeoiqpjxGLRn7uWCMqqs3dnITMrFTK', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWmlNUGlOUEdBbjhOUFJnRWgwaG0xc3BDNHRYM3lycTd6cjZwc3htcyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763580051),
('BVktFi3CHaoA577wTKtzr1smSMq9y5P8lMAuJPDj', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYmxuWUFnaVhkVjFDZ2l0U0RNN1pVZlo5aHVTNndQNTFvMzJxY1k4TSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763575343),
('bVpO4dwgliH6I0kBqZy8EZyXxED7qRQLwOsYepxO', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZ1JONkdrRFFjUmliZWFYTTBBVnFQWVo3Ym9pdFZLOU1md1RiZ3FxZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763568867),
('C4apXQM27lwQhF7rvVhwEtIHn9P0FOMQ4BXDxZnW', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWVRscEcxbURzbjBTWkhKZ0hjS2lKanF3aExFR1F3VjVhclI1VXk0diI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763584264),
('c6GhGRttReh9mwtXvr4T0w3dlPUx5wL74zoyBWIo', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUG84WUpTSXFQQk8zdVdUaVo2UHg2Z0Y2eEhRU0JJTXFGNjVhbmxUbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763583059),
('C75wyVrDmpGa5Xc1Hth71t6DeneMV5WFENyFbpaK', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicmhzRXRHWFBTb3V0d3BRQXd5dEV4Um90UUJuNUZUd3VMUk1La1F4OCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763587183),
('c7qEhH2kHsmXCKXDMTLjA24CU8W7j7dRZOOjAx4u', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTHk1MVdwMnFJMVl5cUlld2kwQm90aFd4V0RUZGNGT0JhVkpoalpPbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763592340),
('cajzH1eNSRQ8G2B3RMRvMbfuO0DOxzeYLmy2N4vT', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieElXV2dnNGdaTEpIMEhtTDhDYXozZ3FXQ2Jiem8ybUxyZVFSYjFlSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763591546),
('cE2c53I5rdHxl618vaNO8x7D95PzLa12h1BNVIM0', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUHRremk2eFVnWmY0VDlGYU5jMnB4TUJRUUlkUjVVWTREQ3V1aktNYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763569471),
('cJJO2eusirVLzu1tydOAUxkpauiBBC84zWmgyz3P', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRWw5ZkdtSGN6dU5NQTJuR0VITFdJUTlsSWh2ZmxNVmNDMzJnQ2I1SyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763584505),
('CK1LnhNJgcK0wjyPvPcfizcwXyvgTVPeu2MSh0qt', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTVpCc29ZaWZnaHlXUXFkR1hWMUJxdm11N1FpMTR5eFUyTDBNR29wdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763592725),
('CkffhKtJuzAVQTRzlx5v6V6uDni7Z1vdxptYT6ze', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUzRISGJsYVhjeUdqcEJYblphYmtOb2ZQd0pHSDQ1WkFZVnoxQ0RTMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763574058),
('CKXrqcO1fnZa3pHknniZkDU0RX13LuPYlSpCotic', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiR2RQNm1VRG10Y1JLMlZwSjFmM2NZdUY2NWtDeWlnR3Zsa1FNcXFacCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763578488),
('CNnHKapN0G29wbpQAuVOR4cMOIWoR7F8JbaNEATu', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZEhkVEcwN3h6NkhlVlQ4bGU1QThqTE1wZTNidWoxTXdyY2lBQmNqSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763583843),
('CQQvMFLyzWJwE7wDdAeMRwz3xSkPxe5GOmDiLMMZ', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUjk4U0FxVFJHamlxRkM4Z2tZWmdYNlVaVzVQQ2hDVmlHOE52R0JYRyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763572073),
('CTEu8Gv9MdAvFnveaYL1dgCok3gV99jH0sidqB5c', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicXJoRlRLRGlVWm9vNzl4ck54aVR6bWF5ckpReGlpb0RyTklMSWc1ZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763589293),
('Ctufye0ypN9s2PXZQ1JbcYyiBOgxqJPvkShPF7k3', NULL, '136.118.127.126', 'Mozilla/5.0 (Linux; U; Android 11; en-US; V2027) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.116 UCBrowser/13.4.0.1306 Mobile Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMmVKSVlvWnFNQUlxQ2tPemhnaElidU9GU3lnNHVGU3lTT2NHN1VpZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763580865),
('cYTeXm0QogFqkixMSYSWzWMaZfLmTZ028DQQkGzg', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVVJQbHlST3ZJTVhPWWVjSmh4UTNZQ1VDMDN2WmZVMjVPT1M2S2hGSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763584143),
('cZOBdvCyn5v1aFaqTRZyshAxZ4DdepBSuDsyRW07', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ2NMYU5YY01sRWRLVHJNcXlrNUJFd2Rac0RRc2t2YUdEeFR5bnQ3MyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763573577),
('d2QUVPFe8sxsQHLWVJWkWpo1muGM2C2Q89zZ807c', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicGgyYkhzbEZ0eThtVmEyZXJnQ0RKZnFVVUVESXkwRHBvVDJ0UFFISyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763576743),
('D6ZZb9nAkB361Q8tBcW1NO5bb2p6eRDj7oeOVgyF', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoic2NkZFlxZDJEenBLU25lbHlrVXlzUUVxNDFNVzdhTUQ0dmxqbkRPNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763569772),
('D9SWtb5GdNarMfXpRY8Zemw2D8r3P8AUrYwtg3sP', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUVVhRXhoVlJTdURxVVpOdVVId0x2bXFTT3FtMFdWbUl0Yk1aN2xMMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763582460),
('DF6LIlvcnr2WVktwlUOJec64Rz9cG3kA3T9RL52Z', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQXdkdWZ2OXdSN0V0MW9MSVQ5eVloQjJNMmh0bU93bXcxQzRpNzdjQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763592159),
('dfaZ4poii1QOijtzhaQGL7kCW8xrUm0Z06PtLN1Q', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaGV4NWtWVTdZb0JwYmFJbXNOTmFmYk1DNlM0SHhLU1Y5cE12MnFhOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763587364),
('DFCBOOo48JNqTxmBW6T8ABeJQTBXs6YsI9iwYlUf', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZzc3aHRqWTM1OFU5MjRaV09OSHhwVVMwWkZ4a0xNNGhyUjc3b0QySSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763587971),
('DGPNdTnA8HeNryzGKf3s1mlcI3VF9kZmKAGnDSHy', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUUFnOTZ2dW9WdXB1dW5lTzhaU1pzeUVuRFRkWk5ZQmQyNXU4SmpKeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763591003),
('DneQ5kmJ1sjU7YGOvzZLoSME8FkmaFww41wvXW5J', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaGluRnEzSmtWcmJ4QXpvbkNjd0g3U3FYU0EyY1RiRnhqbkhDZERHOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763578789),
('DnNpW6v8cwl9Av1UEg1LX2tbQgYTe8zn8wf1BhHj', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiT1BzaW1pdG1ld1VmUlpQR2pvQnNxYXJwVlNXc1BUOUJiRzlrb0ZCdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763579148),
('DNpWsbo5kFUKG08Lz7L2aGcSyrDpnHtDpmzjYuHh', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiREZtdUkzaVRqenpyQVJIQkNvVkNNN2sxRlB0anVmV0ttYXRDaFM5YyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763579569),
('dNxL7FaDQGNNUqzREC7Xb22iYw0nEAbPwNlWyxdF', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZW5lbFB2S1htczVHanJMcU5UanREMU8wUmxTZVphMDNDYUdMNGUxSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763582939),
('dOJeDSD17H8KCWgWA4KvcZ48EWtkgMD0IRA0WUXl', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSnRNVmFMQWxWcTUwTnFjTTJqUHBiTmpPS2c3RVoxM2VHRHFSa3k2VyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763584023),
('Dpzys4ij0LI9BJyD9k8il0pITQsRl8kWkubXkOPT', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTFFYYThYaXpSWjJoTUFBWDFOSlA3Mlo4amg3TlVsRUlNelplRUVSeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763585889),
('duK2kNMHOC0rm7sCWazWrRvRIS0mQ8YH0ZyfRQwO', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUWdIS3dRTmRUajg5MmRvSUJsamtjOUVvTFVlNGsyTG94WndBenNMUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763579028),
('DVDpGDPKBTJJ6GecA9Mu8501Vx5mwpligXbCVi8o', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiM3hWQTJ3dlFyWlBOdHZ5UUIxSEhxRmZiWThNbk1hQ2IyZDJ3cElISiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763588278),
('DwLUEDzXXZQ6TAGIBFWj2V9gQmL3DzFlPVGht8tY', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibGxCdkMzS2Z2UFR3blBmRHNsMm1jclZHTXN2RUdiM3Y4SHdNUTF2ZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763575960),
('dxqqU7BSxZVoPobZwBjk4FM3fV6BzBRx2vDIAqvS', NULL, '49.51.47.100', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRWt2ZUJCTW5XVkpTTFhyaGhkeldRY1dGYVBkckFWNFAwSXo2eG1CcSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MjoiaHR0cHM6Ly9lc3R1ZGlqb2FucHVpZy5jb20vYWRtaW4vcHJvZHVjdG9zIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vZXN0dWRpam9hbnB1aWcuY29tL2FkbWluL3Byb2R1Y3RvcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763576144),
('e1drFVNxHtS9nBXvwLx6UUbsuMJInx4qBJi0jVzH', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZ2JlR2tHYVl5UG51UTYxNTgweE4wbzBPYUYzNmdKQ05lcVhBYzNZdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763575840),
('eaSptC78yEAort2ZRPpmBSL4eOybGuyRpJKQONIv', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTmJCNDNqNnJNZGdWTkQ1V0oxZjc3T0NjVFBURkxUUlJGVlZoMVRxYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763577886),
('eekjx9jPt8cRHTXBGLQ5Kxz8ccdzCMMoCeS4qimR', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiV1lnSW1wNUxTR0hiVkhHaTJHQUhUMHpjT0FMZXRaZHlUVFpHUXhKMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763573216),
('eJGhEni87IZoYoTDB1D7Qai3c3zwscuJi3Z5rKWo', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTVYxVG9HYkRkeGRIbkp5M3hEV0NQd1Z0bmllaHZZcDZ0b1A3eGhSNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763568928),
('eK7AjaWxJmCdyCtOVqGQJIq17XIhQF1qEPZSPmNi', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibENPUm1BRFBKQXMyRVFEOWFWdGJxQUUyOUY3RGhrZUtteGdFSkd2QyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763577345),
('eLiVvSpr81mXr4aq10TtfHPFbnunovAieKxNwkMl', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSHZrak5SSUY3d2hBbk9peHVmT2pEM29saUkyM0hJUW5nb1pwSGQyVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763585708),
('eLy1Q4VjM9F8jFWllsDZ98KpD9kXpRHlI8p8uVU1', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibUVJRUM1THdnQ1dOWktoSnYzT29DejZ1eDFTcm9NcVVkTXFacXBSeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763570854),
('eNPtenuYeEb9DgPRavk5BkNZEMG11fcvf6Aiw8ow', NULL, '43.157.142.101', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEdSYUtCSXVDaGp0cVZ6RTF0cE1hamNwODhIcWx0ZXRMYnRrbVZMOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vZXN0dWRpam9hbnB1aWcuY29tL2FkbWluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763572652),
('eQAkVZemqWPoJfgVWMLRS00CTTjQ7JeRLgCwriPX', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibFNOT2pBSnh6MlB3RFl6Q0VhY3I0MkVWaENCaThadDNMNTY3U2dDeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763580712),
('eRHNUsGTUrRfkCBCmAkorrXWl0VJGlUpJ666Y93j', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibkRRV1VBS0ZicFZlYWUyalhLemNtQWJhZVZBMk5UVFBZSTVrSW9ySCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763580893),
('esuWX8p2Io4DHNNd0BhVmPNk2CtQhj8vOFvcocRj', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNldNb0JNRkFvY1d5a1c3OE1OSDFXUVBObkRiRnk4eEZiYzNMQ095YiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763586276),
('EWT33g88RhGtriwr3BE2X7rZwymmzcMvHF1dGk5T', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNjFINXVaZXpkb284dXNaYzRqUDN6Tk9TMFlEZjBmV0VmZUxwVkZUMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763573877),
('EznZQpI2v1KPpS5qIk5rgGUdmYRrEtnTYgvBhom7', NULL, '43.130.3.120', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDNmQmtsdVQzY2ZaWWdhMVJTekpocUhPRW9ySFVSYzZBa1VTb1E2SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vd3d3LmVzdHVkaWpvYW5wdWlnLmNvbS9ndWllcy9jb21wYXJhdGl2YSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763590660),
('f5yWuOD6DqSEfFIAllcqDX9MAg2W2P7AZ0fHEVW4', NULL, '222.79.104.23', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHF6M0hNWVFqRnhiQzF3ekhQcUUxOFlmNE1BRVVVSGVBZnlWTThjdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vZXN0dWRpam9hbnB1aWcuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763578833),
('F7JMSt5xILWPLttJ7JhmefXqNuLdnkZZ5eeo6wpX', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVG11eDVURVhMNHNjNldVM0NHQjdYeTBzUTVsNlBEdDJETk12MllYayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763590943),
('faFBDFzosN1SDi1x8mLIdlDFU5u1CNqjFU6kEuzk', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicUZodTNzMVVMZEpMV3ZkRFh2MVJUQVJ5aEI2bnlzbzVtWHpVaDAxTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763571396),
('FArG3QUPON90Bi6XfghFRMrLcTOylPpVbxJOMsM6', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWVFtTkwxaTBHOVJBOW1TNVRrNUxRejlTem5iejdURDBGdVh6elBRMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763591304);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('fBRVJPLxhKxQLtOF50YNiIVcU5qsnP1JBgltj5j9', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQlJZRTU5c1dFQmJ6QmljaUNiUTZ2Mm44WXJpUDNvWkVKZ0txdmxnbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763573156),
('fFMAALIrjFpmiu0Xufq5yAC9VQBXvuMUtfsiUyij', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRFZ3VUVlUUpGdmVqd3RremtzMWUySlZmZVVETEtmNGtrZmVNVEQ1cyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763585829),
('fg0QO9t92qkpXYlBiW6ZKDZte4bgeR7FtbbBGR7h', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiR0pkTFlXZjNDQmpoRkROSVY5dWtKVjl0QjRjWVNDdDRXUEI5YTlqUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763576562),
('fk6NBmvsck6SZbbAqXoWpq5FzrTJHIYWhGWnFoa0', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicWJqSW1MMExkZTdvcHJYN2RHeWlUbUs5SElvbWRRSGY1TkQxN1RFUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763579328),
('fKTAu5gxFlrV2j4pTEwWYdcs2xmDpqqnFK4iihBp', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMzdLdU84cUFxQVptNVBUemtqRFVCU09WZjNndkFucHczTUlBWUFoTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763570975),
('FO3Al92sw5Kk2xpS9UQIGRczPDDtZ1PNJdtTRMIN', NULL, '43.157.180.116', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZkNPQ3E1endQOEtJWUlRajNxcE4wbmxTVXN3eFhESHllaHhoS0Y2dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vZXN0dWRpam9hbnB1aWcuY29tL2FkbWluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763574670),
('FodGgTiMz27yKtozvs0XCYwYqATuSHFfszLAtXeO', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiclJuN29aemQ3U01ZemlYNkJFZDNvdDZYVW5qaUJQVEJPUFdIaHlEOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763582099),
('fPHFccdzHVNZBbLSGqq4yXVApUfHup5ZHLD8hyoF', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYThTelhRZVRzWHN5Y1dJcklMV29MRXgxekhzUWJxNjlZRXo5SmZRcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763591787),
('FpZzZypgg6LumgQMwFNxnoWw07IoXk4VtHeNLHc1', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUE1QV3JucGMweEpEcTVudEhncDVNU2hjdXd2Z2tTY05sYWllYWttUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763573276),
('fQfqWJnKevtvpgnbUHlwo3azqjLmgh94Yk8kLORy', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibzhYa1dnZ09pOEJIVkZ4NWx5ZDNJR0tlR0c1cEt1TFU5U1pzdmxSNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763579509),
('fsoILDHWLxDNbLuOS5HMJtdSEQdLnxN85nXWCp88', NULL, '109.237.203.51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnBTZ01MRnA1WDJ3OWZmSHZhdjhHNmhHRmZkNkc4akN3a3hKdjRUbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vd3d3LmVzdHVkaWpvYW5wdWlnLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763574098),
('fSpOBlxnmu3gQG7TINysr7yrhoRl8ePzvcxtcIFi', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ0xhd2JHbENNRkswcHZLU1BxUkxLRHFheFhybTF4RGpNaHV5QVlSVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763569711),
('ftKezZ35mo3FfOoLIlkBj94zcabS2DXNEBBDdE8z', NULL, '170.106.143.6', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFFRY090QThwdU55S3NsR0EzZ3pKdURuSGdPNHRGUWR1OXNFRW1XNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vd3d3LmVzdHVkaWpvYW5wdWlnLmNvbS9ndWllcy9jb3BpbG90Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763590054),
('fx0FbslgbmkgQ9d9a4qh6XLQzfR2mJhZVgc76JA5', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSnpiS0lremN0Umg2bXJ1d0pob3dDZlFya3VyclZlR01tZW93WG9LaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763572554),
('FZnTyifQkHJjmpMw4XbYSTYb1bvnjOhM4wl1ggsc', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZGVvNU9GZUFzZjk1elgyaEhSTjdsMDg4STFWSFdDYkpncHExbkVWaiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763571892),
('g1uPgqnHRtq8ibE0n58VLT8izIJmKbEyNmazJr6f', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOU1UaENKT1VpeE5HMnlyTVFYd2w4N1FWTHB0VmVFZzg3ZHFyUXF5VyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763571637),
('G5ixPlT5GklwggMRFhPi7rRaTph4sDm6CH80CFwk', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTWI3T3BOM3haTTdKS0FmdEJJMmxnYVc3WEtsWFhzTlA2U3JRc3ZlZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763573757),
('G62HZ3Wh3CsqwZyukOZTyD9Btv1AuR7sfcTpTelu', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYVVOWU9SbmNoakQ1Tm83TFlUZkJydzV3Z2lzUnNUSzFrNFN0dWsxbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763572374),
('gci2KK6PXknS3vpAAyCnuFyXSxekDkUppyMpGdLj', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQk1pdkpteHNTeGFOT2ZYOGlFWEp2d3ZsTmxLZHJJbHhNRHRlTFpzSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763586577),
('GFE817riBb6g6MQAXSZLYLVAGtNYJ4fGJSMVFuTa', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiak8xQzNwZWxCYm4xOHowZ2ZmYVJMZ2tKdDFxVE53SmJGZ1gxMHVwUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763569591),
('GFLUbfksRHPUe3uGSMDibAbORF0JuXpUwkyNe4Uf', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidGJSZlUyYk5henA5MGpvcXdrWVcxMkdETllYOE9wemFpNDlOTUlHZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763582879),
('ggCA1G8nxRg1GH3bHV3YpSNphDlcSQwFgvKSsG4o', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidmh3MUU2b1VKTHNMQ1ZHaGRKcmtnZnFrS25HT2szSXZhbkE3MXNhRyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763578127),
('GGws7jiuDQU9cbVyLRlHXYMir49AwV7I0I49sOWg', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZ0tVSkVXcThXS1pURGVMY0sycm5OaHg1Zkt3cW11Y1RzbURtcEU1MSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763568747),
('GmAtezGa4vJaMZk05NOeFZZoDhPhFQ0Okm6McNxR', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSDl1NEUxemxKNnNXS1czTEFrRmJRMzFmZ1RveGlqdkdDbkpnekxRNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763580472),
('gmzTs56isq7i6iURvheBPxsBjscG7ANe5ijA123Q', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSWZoTFhYSWwxdWx1QjJvbXV6ZHg3VUVRM0owYW9zdWF1TmdBbkpEViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763568567),
('gn0g2oF1u2C41EGNcrLczAgoKDcYetNM7kjr6TJb', NULL, '2a14:7c1::2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVI5cTJMVUQ4NXF0WFpva0hqRDlNTnNieG9CZlV3YTBXOXAxMFo5YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vY3BjYWxlbmRhcnMuc3J2OTQxMzE2LmhzdGdyLmNsb3VkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763574258),
('gnN9o2LZXEtvaxAK1IPwNGnfkNc33Mk99RW6j9Co', NULL, '2a14:7c1::2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWNjejJ5Undna2d4Rmt6RUVlc09WakhiSWtQTDY1cGU3R1ZVb2xhMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vYXV0b2Rpc2NvdmVyLnNydjk0MTMxNi5oc3Rnci5jbG91ZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763574258),
('goQ2Xds1T90x96jesRKWonMLssYx9iI3WXXZWAub', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ0h1N2tRT1F1bWpxb3pXVW1QR0hNbTFqV3Q1aEdtY1pDVWpZbHpaZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763583360),
('GSEFtFMZKlyuqM3Ei332RoA2h7tA99jjC55kF4vl', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVkYyakkzSkJLam9nY096WnpLNWpKS0I4QUdEYm1nTndCQ3lxN2xQWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763592580),
('gwx9YDDqXdMTyAQf8h2VVbAsxWOfs7YxrHAt3Z3M', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoickY1UG5JWWFkMFdwdEFMTEFVNXBMSDJBOHdOUFZ1NHpJUGJGVjg3RiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763587846),
('GYApr8EEpSg5TqUVNLOdylHmGd2trgMtsyihD3nZ', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMVpsbkk1ZG1ad0tCSHRQa0luMTZoRXJCQjhwbGR0NEh5VG41TnRaOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763571517),
('gZYilnMANysYFSirWRYCnYCh42zTVUyG6uEsRrlp', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYVBvWVhTM3dFZFI5cHZBWnRVVGtBVWRxcUxPQ0Z4dU9qckVkV2NmeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763574419),
('H0utqu12umOpblM51YqcQTjxf0q4VdJfTbZkKhUh', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoickJNVlBIWkJnNGpES0tHemdVcWFVQ25xUnpqenlldFRKV0xRQUVNaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763577826),
('H2ACSGqIcwDNCllLdS1UuobG09ZErcL4bA4pbPh2', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRVJzaTdwZnMyeVVKZTg3VThIWnBONHlnQWJncVNJOE9MdkRsUUVUYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763571697),
('H4eM8rYqI0cakruebLFAN4ycgosbmoetEBZXW8Dr', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMnN3YTZIMUNmUkpVM1gxdkZvYjBMb0JTSmRadnJhMHdmQzMzc1dBSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763590461),
('h4UZF75bMvUxysBFtBjC8D1OBCeLZkHKNXEl95RD', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieGJzdVN3bE94Q2FiUVhNbm92QWRpeUM3V0ZiNXlLRXo4bEI0TXRxbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763576983),
('h6urMeO3UKlqqA2tgvPyFRiQr7AIj5hQ3Zf0kjAP', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiemtQOExFT2tnWUxISTU1dFFuaVI4Z2FRV1VZbEpVYWFOWE5kT2JYeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763569651),
('has9LrzDMtKcQDbwHr6DpztfIG58gtc8kGzYlk2e', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ2dxeDFJeFhPZEU0bVBCN1Z2WkYwNnJDV2lyeXBxMEk5R0pERDRrbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763591123),
('HGw6ylwmrh1oV18b3HaW3QCvH26DoJOjnPHfilY7', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQVpaTlFyTVpFR3dReFMyYXNXRmZIb3BtUDVMTXRkSDQ5bHB2WmYwbiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763591486),
('hirwyAkUlF5AgLueVRF8VaUl6DwWvZMFHLC7RjnH', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidDJ3VlpHMWM3Ym1rOXB1RVRXUUJ2TWpBeXFZUUJzM0k5WERBMEhXZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763579990),
('HMBQ0RYILGSghtdgIpCXqugQ0tpO1S2TTZIZ0vEF', NULL, '2a14:7c1::2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNXFiSTAya3JTR3A2RjBXa2pyWlF1M0RGQzhWY21EcnZhQ2RnZXI1MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd2ViZGlzay5zcnY5NDEzMTYuaHN0Z3IuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1763574258),
('Hmm5eI07cmtaZNFmIV1HjyXRGcqrSXxq5KRhIi2i', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYXBpaUJlRDY0TkZlc0NrQ1dKYzdCVmUyVXQ2amlOR1owanJQeVNJVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763576803),
('Hp20IpveZTSDC1Aoy9rp0UU3t0N6aAt5a5KI6Gll', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUFl2N2JTbDhScDUwRFVNZnh1VzVtdzNuSUw4VnZNeXBGdFF2V3ZDOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763588097),
('HPEijEDWy4So4H5DZC8rNYGsHzTKDCxbhDpnSNt7', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYUs2QnVkNG9WaUVZaDlNSWdOb0RBNm42Y2lmd1h2cHFSeFhJczdwNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763585347),
('HPzzIGtSAiShHNJ3J4gply0QfgKoTNuMkCLtObsV', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoia1RCQXlHVVFDYUVQcGZGTTNYSUllVjdYVkVTV0RiUXBscEJJelNmZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763570433),
('hUKvvlSDVWr1VLOJ8BMqYE2vBn6cP4CRu9Bofe2h', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRkp2aVI4R2JrcWhYRWk0dmRJS2JkNlRBTDJCU25MZlRuMXp5SVBoMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763573396),
('Hvam8MjwQ9YK0N2FCVizGDr8elV9IyVHrQjpBLMC', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN3pZdmx4dnFmMUVpSHlPYWd2Y1lCbmMwaU1vUmpzbmFURlZnT25EciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763584083),
('hvaMcYX1lJxZX3qCcd4WaYKoFmZoRqJBOmytMvFw', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiU3J4MzFCWXRIWUlGR2xnQ09TMWFPdlRGdWtmZlJReE81M0pURHU5bSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763583300),
('HXCWLsom41UhzWypRHWBE5vbxkglCtcSSo9p2xKo', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOHRFcldUWUtkaWEwQlhlVkxQN1lPOXdBcHhYaUtqVkMxb0Q1RWhqSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763579268),
('hxgAZSiDpuVsmikhI8CUNQIdzNK5QYLI0lcu2gFj', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicXJnUHNnclV6cTRva1hBWmtqQmgxbDRxWUp2UklEa3h6RUNZeXdneSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763588339),
('hXvRhIM9ScYJfJEU5Proeixfqj72I9ViXPvi3Cn8', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOFVEMEFySk55ZXVkM2xNQUd1YmtpY2tPOGhhWUp5T0xKejlwdjBOUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763572013),
('hYOSWX9JIw9tXbTjLsgP83NtoAerZAMf7jRD8kvv', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMTJxWEhVdmJqeGk3OVo2Q1VZRjEyOWVNdDJlRXVBZXdNV0llTW12WiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763575599),
('IEHEbroAlH32pgnnDKsBhZY1ElzLish91KAq2H6Y', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoib2JZdEFZYnl4YU5ydEIxbW45c294NmdtMkdjaG5wNW5hTkt6eEhNYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763578729),
('igDyCOuPg1zvrCkuW6etnaK8CAgDSM8B68hKxb46', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRUZqN294aUJiZ3dkZ3hHTThiNXVmd0FmSElvbnJSNnVDVG9yRkpTNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763568021),
('IjkIeGl1BiSTsYhb8CBj9vLHIXps5BoVKN4nXpEF', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieTZVQmhIRE9WUXlvU0MxTVZSZTJXZXJXdlVWT2xIdGUxSjBQd241MSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763573456),
('iKErVjRsDYifA00fMF65OqVsjuwtzVVTR8lg7Uof', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaFd6c21ZaDdiZVVDSDU1TTRHVGRaYU1RM1NBc2dIZG4xUjFVTnlRUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763584565),
('iMYSYmrQfK9pue8zT3mjv38LsmpaFb5lCxTGecbs', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWlU1Ukd6MFRkUk5CazFLSmxaa2xrWFFibk5nd1VjVmdpekRaQ1JHZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763570554),
('IPBDIGUFXJM1cu38shUtUoEaOk5bH16i5zJ0cCzX', NULL, '43.156.202.34', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVNTYzZqM1V1a05EeHZ2NGVBSkJ2RkVXV2ZvaUhNeE5RTlZ4N2ZXQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vZXN0dWRpam9hbnB1aWcuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763569572),
('IPdiiA1DCLIGsHlwNhtHwCtmHvwx5h6rfOFHOC79', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibGtOc295RjNCM3VXYkNZc2FaSEFPUmV2Uk5Jd1IyNjNIZG9MbERXSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763573697),
('ITa7tjq7mSsiB35KoZMJkq0lNgZ1xUEDKQYU1mqg', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibm1WUXNsMU45cEs2aVlkcHFBdHZlWkxxZnpzdWt3Qjh1dUtEWFhaYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763576141),
('iXToWSvKJwcYOxwaMt4kgGKjp9i7TRAAsuuVKXTg', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiT2J6cGhEampYWWU4UDhaSXUyandzZ2hKS3FBaTVyOHRYVGVNOEtxSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763571156),
('jBbuzH2mfASG11iTyxYx0DqzL1bTmBRm7NMESGnY', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZTZMdHE2V1o2TVB2YWNUOW5CQzJGdUdzbFVRR0V2MnFGZExaTkdGVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763584866),
('jBpGSPocNVq5Fl9K4za9X0TAVn0sSLmRqhchWn1z', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZXF4M2R3OUJNUTJBcnIzWFlnU3FEeXJVRUN1VVJiTEV0YnZtQlJ4aSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763580772),
('jeMGeC6RrFGMb6jaJkqS5OSDQHJtdX1DLZ88k3MC', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidEwxSUhDTERuVDRWdU9RdlgzVE9OcmlKeFIxbGdneTQ1YlNSVGxzNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763578067),
('jg2MG7IDDZbM8f9Jawbo0RhcgeFSqtjcjyvOxN3Y', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMGttcW5MSHhkaWdvVFpRYWZZT3FOQ2lZUG9taDRUbG1CM3Y3WEF0TSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763572193),
('JgIVlONWYN8FBq9x8Q24ATN2Br3kRGlUlxNK7N64', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYnEzeGtja2NPUEhCZUZLMUxxRVZBWFd0NW4xWTBNQ1RaaExvUXFsTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763575900),
('Jh65ARJUeyV0njcYUD8yJkxEEb8Yh7BXrtpydQHb', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoia3plZmZmcE9XOTI2N2ZpZFFhVnZPeHpjSnJwSm1EMVRjbUNhRFltaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763569291),
('ji7LCWqezfB45d8QemGZoLYo0VSfoaRlpa6uKwPx', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiM3pIWW8wZEFCT3VHMkZ6ZXVMcUI0NTA3YWZobzhlc1RXZElsY2doaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763574735),
('JJptGYrhzckqwlJunW7Ic8sAh9FVTvZ2fZMm2NCf', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieEVlZktnb3FZcFQ4V2oxblo1VWdQa0dUa3lWdUJTYUxRWDZTU3dyeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763585528),
('jkh9sgofdsV1IjSJMexyQfvTskoLRVwp2a7qgTpB', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidW1VTmg4M2UxNFQyWGExN1AwRXFHRWJhRk5iUVhxOWdWOEVjbHRVaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763590401),
('jPWADV2VgmkVAjQyrOhHW6yHGIQMSluYXaUJxDpl', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieVM3Yk9RQ0lRalB1MFhXbUNxM0h3WDFoVHJSZDBvWTBvN3RBc3dIbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763587485),
('jQ0BLgBxHPUpprSMXLodVmMZ4qsiDqhbp38FgSh8', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTUpHSlhWTlVVU0RqSnBOQzY2NEhHdW5vTVd1bHVIVnhhWkQ2Qnk3NiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763575539),
('jSwOpFD9bDDOkNdBCWOYW4O0p9RcO4mAV9VmMeta', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVmpmVE0wYnRnd0xmdzVBSjVDOTRzNlcyTEU5Qm1iNXBDaU9TU3JSbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763590642),
('juBuiZtCa6s40HBoYmLyaw4tL9Jr70ygdqAb1JWQ', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZ09qMDBmZFZ6R0xSUnc3V2lyc0Z2aU1iOGY5aUZTOVRNY0Rvc3RBVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763586758),
('jwdkJTuCs5aan3pXzUBKbbIn2X729rd2c6KxPcQO', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoia25yOUpDNkg3eGwzNkpwRkR1OEliSGVQdDlobTZOaDVQNUZMMEdNOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763580412),
('k03WxasIH702oc78DH6S3LNE4NHi2nGop6oKTwYq', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoienl5ZlFPNmlaaTAybDkyM09tMGdmWGJ4aWZ2ZnkyUHEzc3FIY2VPRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763577526),
('k0Bbs9NWv29zcirWnxyf9uA72zXzNwY69RGyfPGW', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMlU3SXlkTklOYWxKSmJSWENhZUdtMG1WZGwzUXBQWUNjTThoeFZTRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763571832),
('k4VCkKPvJOcMLCXRhk1xqsUCoQMQTgdtV9znoatd', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVmV2a05qT2ZnSnR5REV0cTRJaVlHNURGMXpOTmZUMFBDdUpPUTBxQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763581013),
('Ka8Io8yKPtz9jZnaYciAaxZOwWuWKywUmstfym4P', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibXBZclBqQzZkaURwdXhiTVV2Z2pBamZzbTdFaVNycVZ1d3kxdWxIYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763582159),
('kdMLn2uv9RG0ufLzkM6v1jHEsfiHc2sBlURH63qz', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNGZCQWFWbEg3TU5XQXRXZUJSUXZoOEV4QTk4VzNUeDVZTEs0TGgxVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763589233),
('kfyFQM13jL1FAcxTIY6Ea74WCY9Klbtib79O7KwZ', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoia0RJRWlHQzQxeVVrb1I2SjNaaVdXYk5ibnRXaUszSGl4NDNmaldmcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763583722),
('krV5HS3uKzjxNLJZxEZwFx0sH9D3rEREbBWcZAif', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVWRFRGtlSzZKNk5GSjM0ZDdqNUNnekZncFV0UHQ0cFlERnBXYWhQaiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763575112),
('KU9lsrsJlLgxgCPrC7KQt9qUeIuLATk1Tc4AjEqM', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTFRNR3J6S3NicHZnbm9SQ244eGoyR2Rram9keW0wSGdzMVVZeGx6ayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763572434),
('KVO2sYzF4pP8LGQq7u6rQhYPVDTJgiSMpWJilMRI', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieHVFNDc3RjdCeHlyNG9weXZoMEdyeHRZbkp6MmxhVDNKaFBoTEhBNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763572253),
('kvQumrs4LvM8pllcIFGTiw50Dmw9JUFlFw915rzS', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiam5RMjNTM2xIUjlBckVDYlJNVzVmYjJpemJudEE0WHNWY2paY2ZSQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763568386),
('kWBrUTA5iFAVb7kznxJxsqlqKWO4ILjGKKamtkuo', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiR0FpR1ZURzFxODR1MXZkRzBYc1FnTG9wdXp6aWlqRUtQYmJuMTZtMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763586938),
('kYZh2hZhkKvruhaIGr23YzGSMLyQqJGQSyNfoxuI', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZDBtRzNsWWE3RExQSEdwemRKUllLNlU4cmlLOEx3eElrN1lVVnZsdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763568141),
('L1IRnvvSzHfe9QzZyJEDGktxCtgtnJQR68QznaMj', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUjdaM3pJbFRlV3g4Y1NSbjdBNmpQN2k0dktORXdiN3h2Rmc2RU4wQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763585588),
('l3Kikc5Wv9m0OkkjMGi7wa1erARN8v3CoxO56sTX', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSTdqN3FabHpyRnlqUFFxcFN3Z2VOeWNLcE1MN1A1WlBZWjRBVDlrUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763574239),
('lA3erozkeA3yArHQmVGv3GtDRSgTYyTELnSoMofc', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidHhvV2xxdWluZmREaE1QQmFZZXFoSENDUnhwNUdQaXlWeFowN2pFcyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763582698),
('laq2lVgz8awVcFmMC1wfjkvtQMS1lRu3QqzwI0fo', NULL, '46.105.38.210', 'Mozilla/5.0 (compatible; MJ12bot/v2.0.4; http://mj12bot.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1hJQ2xzbnZOdTRNSTdTYlBiY0dyUXAzbUY2enlFTTFQVU5UdDNkZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vZXN0dWRpam9hbnB1aWcuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763579146),
('Lb4SyV2Y8ngM55n7vfpls9ONL26KJ33VCNQItvUY', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNEUwNG1jRkFzdFF0YkJWaFF2cVUwZFRvZksxOVNPdWVEY2s4QUloMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763574118),
('LbUntVw8HmXYUcPyzzfU1yJNvECLI08WoFCOXz6v', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZEpaT2ZLZnJUdUhEemZTbzFXTklYc05LMkNuSkc3alZvUDJWV2M3TiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763582819),
('LeKfc9DCvZouzY1QzI1fTlYG7Vyyo5EBwDmzFWyw', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidGVtMkJwTGNVeW5VTzJwajRwUVZkV1ZvRGtndmN5QTdjZFluTFVHayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763585287),
('leUnemSuoxHMABOHyVTJzWEEptOO4h51X8h5ANnv', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWmFzUDVabm5uMUpNeHNFYTFSMnFta3c2MTRXUlRoaVNVRzkwcGFxOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763583963),
('lNKjRDub3QaY5nFlUPUVRFRBnQffY7aDHyh0RiwO', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZnE1TzZ6OVFIcFc3Z1lSSk5zdlNxaGhCNzZYM0lGUlZDVjF3b29JZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763578549),
('lOABrTeNBDHpiQdfADsZd3ET9Fx8HlN4CtFbNiJJ', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMENRTjFkMkRJV1RzUkVhNVRKTXdXQ0ZKZkE0QWlBcVFoU0hBaDJwUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763591606),
('lsX7cXbXnec4h7zi4M5uCnpBWXk9AZ7ZVvtZikQl', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoib3hLQnpYUnN1RDlxdGRCWnRPN2JPaUlHSlg1RDEzMFhLTUV1QkdQZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763587605),
('LtRaZUy7RmEHOFjDOOYYSxMYFS6P60OrFbvQWTyM', NULL, '178.62.248.138', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNDlzWVVlZ3NGVjB5dElCVjNic3ZuUnA3YXpqcW9wMDR6TzR5cUVYeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vMTQ4LjIzMC4xMTcuMTUwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763585204),
('lvlVspSn1hOi97ebUXi1SpDTmpKV0tH1zaZB1o2y', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQm5YdUZYblhJSjl0OTVWS0Exd2xkY0l2WFVRekkyTnlsb0JXbjZtaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763589534),
('lxBEkc9KnuMC7zpmdIH2Z61Pgxic2J1AcnDtiz1l', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidFZOb3p1WnNnZld1a0ZWbzg3YXp2eE9WbnRZbmZHd0NPbmQ3bWZ4UCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763576081),
('lZCtXtTjZMYi0QO1pZmOx9NWWfnKbU3PQaijWiC3', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMVVEZkFNSTFmWkhXU2xCT0YxUEJTQ3N4aGhTM2Nxbjl3dGw1OEV6aSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763590281),
('M0XYOxwSb2sVFvoy5ucf4TgnZ3GzjcUBYcGzA1U2', NULL, '43.153.48.240', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRXJnUHE4Z294WVVuU1NScGdlYkRGaE96VXl6akZHZGJOeEZLNHBCVCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MToiaHR0cHM6Ly9lc3R1ZGlqb2FucHVpZy5jb20vYWRtaW4vZW1wbGVhdHMiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0MToiaHR0cHM6Ly9lc3R1ZGlqb2FucHVpZy5jb20vYWRtaW4vZW1wbGVhdHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1763574190),
('MgMKgMna6xwSymY0ac2WXHwPgxNu3NIgsaj7OwMP', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRWo1RWtxWTIxYmQ1dzRxY0hwWmFzcnJ1RkxnSVRvSWVTanhKaW1sViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763591972),
('MJb3vZXRJjXbYGwK87XQU2nSDSIZHhGu7KIMbBvd', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieDFBQ01qVXBXMVpTSUlDeUlTQUY2SDJUWEc2SDdQSzRnUkxRUm5pYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763581074),
('MlIXqE8KfQLGlQ9kEHBu8Tfp9BD8q15XAvfCWMpE', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaGM3b2d6clgxbHRFVnVZbDlNUVJBTlBTN3J6elZkMTlsSzJEVDl1WCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763582638),
('mpvq40DtCK9bdP0bp2cEGzOFpfNJ7nYawjfzwvpv', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicHJUSEd1RVdjYmxVczhWOU9VUjZvWDN0dWdOR21tZE9SalBRUU9xMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763585046),
('mr4lRgLQVU15ELYJxpcoAGIfVHk7qGcMJWSi2YQP', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieFRiSEcwTXVVd0ppaGVvUzZCTmxPMVNIRU5aQmN5cElnYm05VDM2NCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763572795),
('mVfRT8Of27LYKVANnScbVsqZs4544kVDftH7Pn5I', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSVZ1aktDVXF3anBZdmVORU13RlJGZU1mZjVFTWR5ZjFDcTA0MU55QyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763590522),
('mVrGnYqQoYxzyolobSy4JJtngyotiCgbimqg4BlR', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSVgxTTEzdHZmQ0h2UExpZjZLa05va0RrbWVIUXNtdmpJYkJ0QjczZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763591063),
('mX5PGsjCHTR95uMtL9qcDXSHc29Eb9U0YkpiddMG', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWkxjc01vUUFwcHZsSFNnaFZJTmV1VzRUNkNCT3FsUXIxYUlzNnJDSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763572975),
('N2qBk33FNxBQyu9pb6URs2lZojDfAiYpD9ZEw1El', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieGE0aFU1YUtrM0E1Y0lhdE5yS0N3RFNPUTcxdFlham1MY2NCam5acCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763582279),
('N46lr35cPhS8K6iCCzdx0JdpPeSRk8mu3pS9Qcxp', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMjlaV0lVUFJIS0pjdTdEYjJaOWo1V0hlR0MyYzJWWFBReTd4N09kUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763583120),
('N76Q2LaD599NQs2u9EA9mb5j305tAGaeODnWD7PU', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidDlFZEtsREhuV29QczU0aTVqU09sUFk4TVBFblVwN1JmcXJuY0J6QSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763592460),
('NBuo1qZ1iWyeXBDu3CrWHByr9f4B6ERi0XA2b46t', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieTV2VU82WWplcHhwQ1NUQzgzbTk2WFp4aWFjUjk0cDBsZlduek9weCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763570313),
('nD28fMDp5R6MWCj41mmFkjnPJ3klO2RWN5gvG4j9', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYVA1aWJZNjdtd2htQjU4WUZHbXFQbUdjcDhITkNUamJMMEFmVUtEdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763570794),
('ND4PytNiyuOJMCMTgqYyMeahLQevf29a8z9XTZwR', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSmFrdWhRUWIyUzMwbkpZU0NKSk1CREpHWVNBenNreWxnbUZFMmhrdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763583420),
('NEmqHEwPQFeAeOlO1lRnSZIt5jiy6BxYjWRpfjL8', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYzhuRmdGbzFqMmpVVUh5clAySTZTR1ZEdk5ReXd2YVd4Y01QeDM4UCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763575246),
('njkwQQTffPrkyHDBCq7ESMkXtLcevN25IAWry3pY', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRWFxNmxyU3doNTd2ZXRhTmx6MWdJMGgzOVdGNU5qaDNBYlh6NG40ZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763579629),
('Nk7871Kou0dx2FapvnxcFYPOP0OwgzAwF91Zl9ei', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWEM5ZGZiSnVSUlUzUmZ6RVlYaE5zVndrek9veGVxaWRsdkZQUE1rVCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763571216),
('nN5xEv6T11oz6Z1ioasJT16iuugSMjHID23CZPRG', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWjZsaERKWFJqSnl5OUFNenFaa3d0TkJ5b1I0eXlQMUpJZUQwUml0ZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763586878),
('nPCrV0dK4YXI2Sy2e7otxuUPl8HNYYlkACl5ZH3J', NULL, '43.157.180.116', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR215c1VIa0dwSDdlblc5Umk1cHFFcXBoaFJMYll4Y2s5SVl6YUdWZiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0ODoiaHR0cHM6Ly9lc3R1ZGlqb2FucHVpZy5jb20vYWRtaW4vY2xpZW50ZXMvY3JlYXRlIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vZXN0dWRpam9hbnB1aWcuY29tL2FkbWluL2NsaWVudGVzL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763574668),
('NRXTuKAPxzJntP7bX333lek3QAbFqYIsjhTej8PY', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUkp4dm1zRGF6aDk0SlhqaTY3bUhZN1R0U2dzZkVQbkpKMjNNZzBFcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763584926),
('nT4QlmhafZAnCfsravXIHlKeq4oipkTQZFFcPj6h', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUGN4V1p3WDA0bmw1Nm4xWjdPU3BMZkRrdDRKS2o5bHFsb1Naa2I4TSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763576201),
('NWnRaG1UBlwsFQRU3IZsCaRnVOYW7185DTgpyUKC', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoic293YlNjTGphUGNUT0VYb0hjZEJZMjNib250QVZCOHlFRDNhN0tVQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763572915),
('nXz6yXLEMpJ08Sb6kXXWM7sJS8RqBm21b1vwMpUK', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSUlMSXlITkFSbXNNSVVDbEQ3djhFVURVQUVmUmpjd25CYVpXemJQViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763569170),
('O0cbY0S8i3BHRiGesVfpVTb3hBNMJLBjNgyYrDED', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYVJTVmFDVGlORkN6dEd6T2Z0U1l1cVRHRHZkVUdDWXdhbEhlZFI4QiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763589859),
('o0gy9QFcwdG4c7gZecf3HtrYujvfScBat6RAqGr9', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTWNqaldzaTNXMjQ1OTJZbU9OVHlaejlWdXZxZW9MMXFaYXhZQ3RITSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763581615),
('obqfLIgcZ8gzFnLfSrKWgc5eBoIjbxbGpEyatQxT', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidUNMOEh1VUZZTXBQVnRzNk9ZM0ZYeVVRaUhwY1k5aG5qb1hPV200ZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763584805),
('oDGJw5DKqdepCp12BYehcLVDiueEeZtg5NMXmolU', NULL, '66.249.65.38', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.7390.122 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzhkNm9MR0NhYW45RWFmdlRJdHBQd2ZWaFdDTE1WUzEwaGdkQUZlZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8vZXN0dWRpam9hbnB1aWcuY29tL2NvbXB0YWJpbGl0YXQvdmVuZGVzLzczNy9lZGl0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763589298),
('Oh7ZHJGTAYWODkpNSJGHKTZzw9qGdsSJqc9pg3to', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZEdoOU9ITXpVZzF5dDFSalBXQ1FWdHJxV3ZqTGtpeTk4c2VBSVpSViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763575051),
('OiHhXNFr1FzyJUzxASco1yy6xWxusnfcZQGdvKX4', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiU0NsNHJMeDRpcDNlaHhCTUZIQVlyREF2UmJsWEVOanhSOFFhS3NvZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763582759),
('oj4Wwpl8nOfrPlcwaq1JFgkTwlUwpxeYYv5OHH1v', NULL, '184.154.76.53', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTlNhY2VrVXFWbnlXbXI1aUR6UU9TZ0pYbmN5RG9mWVZqdTdQenRhaSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MToiaHR0cHM6Ly9lc3R1ZGlqb2FucHVpZy5jb20vYWRtaW4vY2xpZW50ZXMiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0MToiaHR0cHM6Ly9lc3R1ZGlqb2FucHVpZy5jb20vYWRtaW4vY2xpZW50ZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1763584646),
('OOOc7shDmsaT29PRCBI4p67mKDt4U6BJl3mYqOpu', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMHRVWEhaVkhGdUZYSTJKMVh0WkROM0cwWVFXUldYVEVOb0dMWFpmSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763590582),
('ORwWOFsqRM2k2Z8Jncr1Zgg6CAhgTFaZjHTilB1M', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiY0ZzblZBS3hia0Q5NnluSVd2aHhpUm9DVXFwYlp0ZVA0dDBpTTIwUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763582520),
('OUVFqbcTCcENoIhD7YlxfhrcPnL5J8DLoo8BGyo5', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibDR1OVgyS1VMdlZ3ZDRkS01HWGhNdGdqOExRNk40WGlPb2VTZ2dHYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763570494),
('ovQTztot12hnOTwdwtBwWoEXQb1Wme5Uf13KCS6V', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoic3AwQmszVDlzbWZpQW5OWHB4WGY2bVJmNEhvSzk1RFJwRkJTZURVeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763586697),
('OwI9PSerHUi0bZdscY5QdpfKsUqTdQHTPD1n195b', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUWZRR011d0wxUHBSb2wzSllRckp4ZnVlRm1zMktTejFoeUlDY0U5NyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763590040),
('OyevBfUt5FMkCfH9TAwGPkEi6l3B8u0f5wD7cNhb', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidEpWUktsbWtoWFRwMWVMWnpvbFVJS0ZJSG5TOUxwTGtmVHRybERLcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763576863),
('p46ERhhnVzGx3Ag5jo5bQ8ZRocGWq8BEZBTIoRKj', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVDFhdU9SRmNhZTI1RDQ0eERiMVVwa0RhcUdEZDdZRmpUaXVOaVVZUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763568206),
('P7AORd9eFGaXZNOopt3hD6DkboJiS4u0LMf3GVkX', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZm9peGw1d3drWWVBMkJKWVFKRk5UM3RqRXVZSGdtMHM4b3VBcFNTMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763584444),
('pd7ncu6PZSeaXGkTeO4sWRdXfETasTE45HZaWytq', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQVVmOGZuRUdwVEVpZ2liUURzVkdEQXo4dTFLMTRxc3drdkd5Q2hqeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763574178),
('pH5xozrO8axUpVUzoIq0weSZntTZzK05NxVRJcAz', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTnQ2NkQ3Y0N6Z2tTOTV4QnVVV2FsemNJNlJPZ2VSOWFqQ2swNmdTbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763576502);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('pHOJnjDhD7DGDhXmFv08cHNxSWYhshNU7HRu74Fq', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYmdFaklDYVdRVEV2cEJHcWtVVHhjcmFiN2preXlYbUNxN01Pd0xoZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763570132),
('PHr1bXgSJ8RYFue1lUU70DM1pnHzRyFFkkDPdHys', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiandmNU40V3RabEJqQlVGYWxOakJveGtMMVY3MmJJNTc2RFE2WUQwZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763585166),
('PIcV2SszaeaXSaSpNpv6eAKEtLDYNEEq5VV7gm6F', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiY2RzUG5heFZxQkVnNFgyZEM3WjkyTGRSUjlIMGVndnRncU1FWXNNRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763567961),
('piKlVBrmKs5gcJAU9BlQeb5RVqq595vAPpg3ZIch', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSW5vRlNtT3VqSkNNZXJJTjc1TkFpY2tHb3ozOXlCQ1RXdWdsR3BRdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763589775),
('pJPfiBDQ9LhZqEWUJeGgfNcaf3l8jJvzLcmR1Hff', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRk5keXY3SlVwZUlBc1BEM3RIMGoxZXozSHVwd1VpVDN4RHJ1NWhoUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763592400),
('PKuFz6WFzU4UlDsQCSGh7IvvjBrsL1uSDs8hW21e', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVXlsdklJcGJETXpMOVk5ZWV3MGxaV3E4ZlJoYWRzSkdPbjBxWnNWTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763576622),
('PLiceQAPa6LThaLqFJm1Bbrw1C1PlWfONvvAUcYW', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMmEyYUljNzFvZzlwWnlTbDBhazJHeTZPUVZVaHhWbVdMazUwcWkycCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763582400),
('pLMO0nbuqCwQgOso2QQ9HMHrxSwv64LvJqeaXvHI', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQkRUV1RUU3NlbjFPd2NpTUdMaFJlamlQOThrTWRuUDA2eEkwb3Z3OCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763584204),
('po0lTWmlF9HYSm0vom4rAG8zYSpZivhjjOpYsO86', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidXBuYkZtUnp2WEJBc2JNMGFKYnFmZDBzQ01hV2hzZG50NWQ5bmNDaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763579449),
('pQNdLv0E69Z7tbahD8ssoXiLsQIhwpbUE5VfIjgT', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSU9pcTJFVUVWcmJEU1lBbkxZVVVYU3dNZ1R2emJHWGlFVkVQdWxtYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763589799),
('psXjzBLBKDcGbfsNJE0SOyfYGfimchTjFlm7RwCy', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiU3RKQW1ROGxMVExGMG8ySmFSbmRzSndJZ2FVRjdkT0Z4T3QwSTFOaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763573035),
('Py6zhvruJLp4olKpslJfIaK4Salz9RyNWhZOj3PA', NULL, '129.226.93.214', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRER2RTlNeWpIbnNLOXo1UTNqUDQwTENsMjN2SWhGcktJaVJqd1hWNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHBzOi8vZXN0dWRpam9hbnB1aWcuY29tL2NvbWVuJUMzJUE3ZW1sYW5vc3RyYWJhc2VkZWRhZGVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763575273),
('PZS7w9uMX29sBPEiVhwlebG8WNbpSFQqrJkKTX6c', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiU29EWGlCWDkwcnhnaDhqS2xIRWRhWlBoYXlDUDA2QUl3UFJKbXo5ZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763591847),
('Q2Cydr7fBUaEL1AjDiHWmwoLnVeCIU7y38LLvthY', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieGZmSVlIN2R3VUJsbm9TWGt0YTBSZ0JvcDZuMW5kUWg0RUV0RTU4TyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763577405),
('Q6PC5xlxAqMSpvdSDkpnHFmsxafZMM5ZmyCmGB8s', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWDFqTmlmVFU4dkY0cVlPbUFGYnNkOTFhYXRUbEs2aHhhUEFONnZwTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763591907),
('q7rhjAFt8xfCC8UOVGEhSAmZAc85zYBqK5IN0k64', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSGpkUlViMGdyNVc1dUI1d3RzUTJkQ1FTc3Q3WXJUWm11VlN1QlhtMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763585768),
('Q9pq8cnk6KnavuoZNErj29j1bVhskqPonZIP2qoW', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZDZycHVTb3JWdFdzVnpwVWdNV2ZVZU84bnpRbFVrNk9ZUFZTVWRhSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763572735),
('qH3gbrBWNYDxTV7Mf29DtSBcSn4oTlNtv2ZP1QV4', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYjNuZTdaMXlYSUdYQVJiV0hBdGdpWGlzUlNEcUd3bG5OMTA1NDlxaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763592641),
('qhgUgTpVEEEqYHizfCPmDhMjnrwnivKnyBKdVRNw', NULL, '170.106.192.208', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEVvUHcyUWlqU1AyY3M3UW9yNzJFTllzVGRiSmtwMDE2QjIwbnNsRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHBzOi8vZXN0dWRpam9hbnB1aWcuY29tL2NvbWVuJUMzJUE3ZW1sYW5vc3RyYWJhc2VkZWRhZGVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763577671),
('QIYAV2mRRMzsBrfVT6zMCMtarjo3J9cS6Oedl6Cs', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRlpQNXB1c3U4YnJobmhJellsQjFtc3ZCUk1wSWpBN2tIRFZKRVQwSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763576021),
('QjXz0avWlUPYC7dvTiD4xkcP0zbF206yyxc9di4B', NULL, '43.157.142.101', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM05mcHd5cFNJSzJEQktubEhTWnZRU1BLTEdYSUdiV3hIYXBQSVVTcSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMjoiaHR0cHM6Ly9lc3R1ZGlqb2FucHVpZy5jb20vYWRtaW4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMjoiaHR0cHM6Ly9lc3R1ZGlqb2FucHVpZy5jb20vYWRtaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1763572649),
('QkXjr1BPAokg1oWDRIgfSP5Kqpyf6zFFnA2TuLbh', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTVNqcmtET0ZkSkdGejVDRXhsU1FaREh2V0Jib1p5MEFvRnpkVzlCdSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763574299),
('qlvDgPeUUyUOlnjOLoRjloVVMEmL8d2oxrr8WrTw', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTWJkNjc3MG1WdFRabGozcFJSVXR0d2E1WndLTHpvWUZHeDh3eUt6bCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763574599),
('QpbNDFE216OWWoz8yNEHT68YzHtQrku0S3d2ZQVp', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicDZ5QU1IcUZQSUE2M0ZXbmNzMUthS2RldU9WcHViSEtaMUMyWWU2TCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763577104),
('QrDBZv4eT3UKz0GgAEARxUldmAJVY1pWr3g1yusT', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoienBXeGRQRVhTeTZxYzNOSGl3eVcwZEI2NHdLSXNqVElTbkpNcW9LMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763578669),
('Qx83KYXYEYhL4Lft0Fz4Z1mgUAYqFontjcAIpmuY', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN3lNOGVkd3BqcjRaZGNMZ05zbENhejdCS3VWd3pNRzV1VHhhc0FyYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763572675),
('QyZgRiM1ZX9LrT2Q7UdzEMdaSGzC3l35YOFTYWPR', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNnl4dXdJTFhlMVdQanZpV0lIeVJScXhZYVNESDdCa2ZzVG82WEpwWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763567780),
('qZlEgTvczcBJqCZDSICh0vKjxg0u7JmRBU79D8G6', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSFpJVkNRNmZTZ3oxZTBzR2hHVGxaMzN4R3dMMXFrMzdsVHRlUXA4eCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763580832),
('r2hRSEicAySLzTOvdb2b1CxioNopL3xLyb5cJrJV', NULL, '2a14:7c1::2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnVhMlY3WndDOE1qUUpCWEptaWlsZkFOV1FTYXFWd2VMQ2xvTHFOZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vYXV0b2NvbmZpZy5zcnY5NDEzMTYuaHN0Z3IuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1763574258),
('R2vjvjxBUKXYSVwqxN4F3M9yRFwDY9iiWrJzusiC', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ3dHQ1prZGZBektONHN5YzBadWFrbFhKUVZjaDQ2a0RSSFZQY3BLUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763569230),
('R3CzeCljtogIqXnciUunjCTtd1HrMj5ADqwYW6OL', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUjZPeWk4VVBWZEtVZ2ZYaHFCaW8zajl1RnpYVmI4eEdHZnhZVUNuRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763580291),
('R4bDXTLj6Tm4wQ7eZSir1kzl6M82x2ykAzHvNN6U', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicEVMY0RBTm1DRjEyMWpqQUlnOEVwYzZyWExzMWFnenNjVFhyTGlIVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763591183),
('RBYpIKuXh7tWo54kwLFwITOomKDzMts4QSZ5O5qa', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN2NXc0RvUmxiTFNPWmJFaktjUWJjUXBvSlcxYkxGZFBMQm5MSm5jZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763590341),
('RHtRSa9698iEW5vVHHtQCRr3g7YjZKbxeH6n0B4U', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMFFEY2gwSUNQVzhDelBQZ2JsR1FyUkxSV21UaHZKdWNBNUJ0YzhwdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763578428),
('RRfyVMoAPE1yjBH506j4FNcVoWFfNLsInyltDYKs', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZjZ6SDJuT1NXcWdBbGZuOGpYcXFibjdnUTJCT3VoRzJwS2lyNk5uRyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763574986),
('rTfzkZDbmjuB7fnGIf6dBkp65FtinLnGlrrO3oJD', NULL, '2a14:7c1::2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieDFwZjZ5UWttalNtU1NueDU2WUhRYVlMSnFaNTJWUnZHaGtCdzBtWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vaXB2Ni5zcnY5NDEzMTYuaHN0Z3IuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1763574258),
('RWFNkyWdoCKYrVLbnV6NYGjM1hTJSwFmdgsaHnpR', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYVYwN1VHRTFUVW5aNEVEY0Y3Tm1iZ2V1MnhXTVJyMzNyMTlEdTVHUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763592098),
('rwLVWBm4cwVjksQmqw8fSH0AjlFo2H7eA7x1i8gc', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMjY3dllYUjJjb2E5bzBuWmk1TkdwYmJ2dU1NVTVZdEliaXg1Y0MwRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763571952),
('S3x7o7xqsQXjoJBW3QF2NLLQLKjNdmZC2qgAtlUj', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOHpKaUFvOVA5Z3NudU5tRGhjSTJObWR1MWtXUWFJSlRkQnNtNTBxMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763589474),
('S5KRhUjzb2hue3kHtRVnRtRd8KpnwVfRl5vP6rHG', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZ3U1ZDhqZndGWGhRdkIxeHhzYjF1M1B6cUM4V3FIVEIwY0RzcFNUZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763578007),
('sA5ruB9rrefOV2liTi53RSISGxMeVi3XpNQyv9lM', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoickhmYWM0YW5lU1g3eGZnZmR4Tm1YQ1JZdVVMWXpHMm1UYmY4YmZrbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763583662),
('sapYlKLtuVB5qKJGYaq184gsEST9UGVAnlXxLBa7', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ0x2TmtXUGIxa1BSU21CRUFDQ3RDVHFNM1ZMMmFwOXdvZnhFNjh4aCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763586336),
('sBUd3tfW7ji9k0Gz7DvkzYuXwhXsBJFDeI2yrE3c', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRGdSMlhMWG53UERqSjVDdjY0NGViUEhMWDRVQ2NwNEdaUUtud0V0eCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763580592),
('SCfz4H3GJVePOWfJugewhcqx5uIfoQuU06rHMJ7a', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiR2xhOGpHcEtNV3NEcVNWNGZDU1VaaGhsZzRIQ2loSkdESEw0NUxZayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763571095),
('smLOkB54JxMfdYCnyqqZxq8AEOWsBOCgRn6M8zV2', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTmpWWGZuUnpMWVRKWHp2dUVDVXVrenQ1bUhIaWp4VDhjQU1GZDVVcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763583602),
('sNuqtOUoZCd2sv1kQ2EN2zsvU9N4C3QHlPn2Sy5O', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoib01OQXdndVFmZmxUT0dRZ25lNHdiTkM1QW95ZlV6YVBKUXFKaHNIQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763576682),
('SoEOmwyU6e3hLbePlfQC4wbmXKOjB1c7t0BxcSB3', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTW1XdjBGRlhDYmp1UUJsUzB3blp6NElWVEQ4Tzh1MlFyelI5aWF6SyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763577766),
('sPaZ3kmtlSqpdgURfPc4rQmqyFtJ7XYAMysp8nvK', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUGhBSTBlZ25hV3dPbDZWWG5ibEd3eXNmY3hyUFFJTDY1TEFNU3h3NiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763587907),
('SQ8ZH9Qcz5tVPP2T9BW3PYsRpkORARX0NxxMKd7E', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRE9BTWcyYU9nbmtOcXpZR2thc05vM1B1SmRBM3FXUW5uYVNNeW92SiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763586818),
('SqZ6RZ6Iy9tA60c62smvyHvnbAuPctdRpFz3WNms', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaHBmWjFubWQzdVJBaW82cUtTUGFvZ2JEVWZmRWlSdm00NXBjMWRaRyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763578248),
('SSPnLwfUXKzq30Pd6ZsUXBaUkD8vPAPuS5r12p39', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicnhaclU2cksxV0Q5UzRaNFhpYzdvWkV5bkJxTXBoUnVGMUVSb1hkbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763586637),
('SwsDdnGTsD0Pe7jODpZH3LP8qQzESwxoC9vXGU3A', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoia0psNktVVGx4T0lxVmg0cXlMd24yM3ZNU1YwZGFXNXJkV2EwcWxxbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763572133),
('sziTZHaVGC9ZKK1udSzlxQKRlV4teXy4PrnLz7jt', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWHYzNVlmTVpuWUg4dEpWbXhNRXY1ekt3amsyZzRnWURlM0VBTHUxWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763573336),
('SZUcygDWnR4GXgWsFNzE1QMR40o91p3EKzDZZVvZ', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibkV5U2NPMEM1N1NDQzJFMmZZSDFQRlBTZ0VpUWNCMGNpQkc5SjdUVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763579088),
('T5bF1ehCJbfMgnpGZjOeCngPYotbBwaXB3kaI4h0', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUFVPTHZ6cTVlcHBoQzVkTXZLdTlYZldWS2pyeXg3QWhDTlVNa0FiNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763568266),
('TA6ic5YCXWcm1X5plLgLyZa2H0uQi1uMH9pk1pUv', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNXFEY1pIcUhwZDRRc3NoRjRlOXFUSFNtR1B6TVd2Y1ZzZ0liNWxJdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763584685),
('tCV70SqRw4oYOjhJUcwtsMuRI8wbXYL0hPHODG9T', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidjYzcEY4NVNJMldBMEduV1pTZlhqNHhtY1M1dU5kczNyTUZlejFKcyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763585468),
('TE2aX1gj69TbcVdcfZhxQMVs7pMOmShdm3LRiN1d', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieDNjNHJoZHpVQjV4STB5WTNCTEs1ZnpZanhNWmljRFRWTklhYmhWSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763569351),
('Tech8Rm7c8vciRlYQaGlZvCrAyfWl7MOaCN1nHAA', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiS1RKNWVzZVFBcHFzNVQ0MERMZE91anpqNTVHbmFxUnpCTlRicVJHeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763585407),
('tekcvj4RcRfjKwx6yHozu9K4LZdVYkE550MFZ4BI', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiS3h1VGhGaU1UT290dnA0OVdxMjh3b0phMVpuT3pLdlNsYXpHRklHOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763588217),
('tF50y3F1hmVSKlAUdBUxyB6269fZX7qbDaCiZlmk', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYmd0OHNJb0s5RUdLVWZsR2c1bzgzNVlnSGNyR0lsNVphamhRbWpjaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763569110),
('tHjxyKGdLLf4uPywG6XSzSrZ89kPa8gcfKq2125L', NULL, '87.120.191.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibnJzR1Q4eVZ5VUd2VzVWdjgwMXRaS0hoc05sY09TWFNuRm9haDUyQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763592715),
('tihj8BmrsUU2wrEZTRGFML4cdqNZGgAMpNthRItV', NULL, '184.154.76.53', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0xRQVhKSTVRZDA1N29YSmh1S3QySGdoUmNzQU9YcTRCV1NUSkNzSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vZXN0dWRpam9hbnB1aWcuY29tL2luZm9ybWVzL3Jlc3VsdGF0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763584650),
('tjj00pQBkXaDuJqJdfdCq2Jegz6jEoXxRrahK8Io', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieGRjdVhpYVQ0aU91R1BPSUgycVN4cm5VSGhNMGpoN0g0TVQ4MmdMcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763572313),
('tjJtoPXaBrQ638CiONE3PO2CoiQTQ0QdFuSXPvdw', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUXhZdXhwOTY3UU5xUTlvM2RVeFBiQkNOaFloc1RsenJsOTZjWDBIaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763579930),
('toxY1P6a9oQGClaSd7ae7YMnhMGxjqjyt5DUibwv', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSzlYVE1SQ2FjV3dCS0pRVVlnZTQ0aTVhRkd6eGlYaHdNNGRMaXFCTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763583903),
('trkW6MrQXQ5ww7X68oxCdAhiNG1ga7s2crIkqyH2', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVlRsN09kZDhKRzNWZ0tDeHFuMk1jRkE2dnZhZzdDU2w1VmY1REJwYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763583180),
('troznGKFoB89sfw6WfAeVGK3XuRQfk1Vfuk6lFPc', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ09DUldrYnVaMllqT01abmhiZWZwdFZIVEpCRE93Yk5NQXg3anRwMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763586457),
('tSoOwKc8PV8w9TXKAZqFxWJu1MJy30QyEOO0iG4Z', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaHVxUWZ3N3ZnQmRUSjQ5Y3FwQnh1dnNib0JtMTF4VkhNN0tYdk1PMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763578368),
('TWMCVFAZKtGTLK8JZpKfBF5rz2I7jRy5iBSJM6ZL', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYXNscWppV056ckJSc3Nkek5kbm9Hak9HV0M4ZWJhVnlNTWdjRnVPYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763584384),
('txY01YLBBuWOclnnFF48piarY3GtiWqlojmhe44o', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQzlwbUNyWkxaV1d4Ukt2dFlSOVNLNzhFMTZwWE1IUXZmRVpLTHBIRyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763585648),
('tY4Yh7hS0fi75YNERPAnwVQ0QVXiV4ssGcJrWixI', NULL, '2a14:7c1::2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUN5SUtCMTJvQTRqT1RsVjRnN3B5UjE1elZuWFhLZkhnZ3c5MnpXTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vbWFpbC5zcnY5NDEzMTYuaHN0Z3IuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1763574258),
('u2A1PZMAKROyJHvaNx6qH8tcYSmDiXRixg2hcAZl', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYjdXTDFPWGxEWXZNYWdsM0hYVms5VGY2cVI1NEFLZ2NlZHVENW44ViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763590100),
('U4PVLeBr5CzzoIs8NySClBaWVgE6NU9iEbKj2fxc', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaHFlam0yNU82ZzhHTlU3eFU1d211SFFmSW5BeFhhY0IyMWRYMnliOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763590762),
('UEk4uTwnLCFsbeDScCTkBYWzYVydIFzCNZOR6Zp2', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidVduS3FqTlI5UlJDV0xjb3ZrWG5YVVk0aWFWck05WTdmNHZvc1JxRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763569892),
('ufytU3gjZglTBQ3zFgsCYeFyV2PiTmYa7ZcuYOim', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNFFtZjRiWVNNNUNGamxyT3lhMnkzQ2xrWWp5bHhXQ2NJSjB2cTZURyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763570674),
('uKYsMk0WS620a3ji9PifMShLWB9iYssbwchs9xMJ', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicmZ1M3VIQ0ZtajV6cXVZRlNYaFpHTTFoMloxcjhEZWxwZHF0eTg4QyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763581856),
('Un0suraW76F8lBC5fjUu6lobxX1jk2DkDxbLRG8E', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiY1c3YVlGMEhNV1I5TzNzVzJXNTlrRjlscmF2b0RUSWQ2ZUw2UnhCTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763569050),
('uNoAhcMT1WE7tNLhJ7NS0vsbzPKqqVrlWIbjfXWb', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWDNsYTMxeVZNMmJzSnZnRlo3M0dzakREM0RpMUtmRVBiVEpMQTZZMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763583541),
('uQEiyA05VR6y7zwq4J24M0GltTuKJBCOWsIzmMS9', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWHhSZU5lOVZoMGxtazA2V1p4YjlETkNoMzNmbkUxUkFVMGtMdkl0cSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763569531),
('uRalqABYRSRpkQy747aYFlrz2a78bCutaw40F0v6', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiY0ZkZ3VrTnBkMTAwTnh5eEFzOGkxdUI1S2tRemJ4aWdKRDN2WkxZSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763581555),
('UrF3yQT4kWt5hyXf5ZpIqWZ9vLwyaJsKTfe7gmF2', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTDhjTzV3NVNFWHFIWGxDeHhPTDBzRHpncWxhMHp4Z2dPNU1WVnZpSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763589413),
('URvtrKPujkM4zNzmAqrsjEQ72JMROn4Pg5I4vSyx', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUm13eEZiRHBJMjl3RGI1Q2xiaFFOVkMza2cwZFBOZFNEVE54SjhNSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763577586),
('Ut5H3d4sk7aoUh4SBpPyLqJgrVIwNbvj0ty3rWsD', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOHRPMVUyZG5DdGFNNnBjczd6N204RWFvQXFCWFVobDhQdHYxMnM4UyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763567840),
('uTHVu3qyaveng5aRuFfd74HufDnILdhpZz7OeZHQ', NULL, '116.179.32.106', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlk1djk3bVM5YTNmS1UxS0xxTFY0SWRHejN4amZOQkY5YlhqNHJpaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vZXN0dWRpam9hbnB1aWcuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763590446),
('uvwRHc0UP1DmxBcYVutRiRtbgLGrOrGLEvQkkfQj', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoienV4S3RLVmVzQUdzQ2FRQVYzVDZKZXJ2Z1EzTVFDdlJwTUJ2V2dSTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763587786),
('uZ7GhzAyckmtfBVeMmHbbBp8UaFl3Y2DjuFb5QRe', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicUFlWVNZSGtUMFZaeFNkZjBFbnlwd1FORW9kQTVFUnN5T2w5SWVYQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763581795),
('UZNaanim2jYxvvfxuc03UmdCI5jAnQigVmXRAxtg', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMlVYaHFaa2JESFQ4ZUw0R0NWeUt0aU5VaVE0bnpON1ZrTVNMUTRaTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763582999),
('V9AWdncTpBKZHuuxiWyazGp9q7sOi41rgb6dwKKW', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWWxtQUNMZ2ZXVElXWXd0WHEyZHRiV3pESU5yZ0h5NzkwMWZsdWE2MiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763586216),
('VARJ98GPqHrE8GRAZMguBU4xrWeRVbZjNYD4K1ak', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSmJBTFBoVzdHTHUzaHRkZ01wbVJFVFBFZU9aUk5jR3d4QWpMNGg1NCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763577706),
('VD9vKTQ4iIzjWl822bNUsqIldVtUVVAlxudv1W3Y', NULL, '49.51.47.100', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3l1V3NaWFB3OFNTeml3MXU5NVJIRmlNVWlJR0hDdVBkYVU5MzZNZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vZXN0dWRpam9hbnB1aWcuY29tL2FkbWluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763576146),
('vdyJqIdc1PrVOXHycZeNMMvvbQ8LtoMgp3iXkkIV', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQWp5R3JzTkIzYk1IWVEyMzY2TUhuR3BkS3FoNWd1NmRYckxVMzBuZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763579208),
('VePNz60MpzV6qbLo68SBsgn56Wb4aY038QgKadsP', NULL, '66.249.74.169', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.7390.122 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiem9zUGZLRWFBOXRSSjFBTG1jYTEwQXJCaHU4TlJJYTJBR2xWNFpDSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHBzOi8vd3d3LmVzdHVkaWpvYW5wdWlnLmNvbS9kZXRhbGwtcG9zdC81NzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1763568055),
('VffYP0mbCVd53MvfiJ4YV9wfcQNblAAeXNpCv0Db', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoia0hxbVlVTkxmU3hRbVZJMnMyb3JMd2NsaWtSRG5YRUxQZmRRYkZCQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763584625),
('VfQ4rw46IZbbKKFatIpy40XQ3OA6UBsaVwVZcuUL', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaW1XWGJkWk9pMXBRVlV3SjZTdndrdkx5T2RSdjlnV3pFcHA3eU1CUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763580171),
('VfQTKdtCEPa4bhGhFEipc5m1gp0mHjO8t4AaafXZ', NULL, '101.32.15.141', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOHFVVTF1ZHFEWjBEVkxrcjJobmx3SVg1UWJJeGY0VUV4MVM3NGdHUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDguMjMwLjExNy4xNTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1763573154),
('vgcBn0SD2oZLFlKgXbwxmk7NTJI3h08fbMBc39P8', NULL, '49.51.50.147', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnNOcUROVkY3RTR6ZUREY0J3eFREWGljbWZValFpN2VaMmJONWtYeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vZXN0dWRpam9hbnB1aWcuY29tL2luZm9ybWVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763573328),
('vGRv6zJlEtAQVdckwMxXh6neQtDzIHHyywSwmE0V', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZ2U3a0FQUGJleTJmV1lMUnhKRVBvcUFtN3pkWTljVEtqNXhJYjQ0YyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763573516),
('vHPzhFnOEPbZZzKcm2Y2d74DSSlzdhqE86aNQUHs', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUUdTUmM4SWIxYVh1QXg0YTZDZlFxRWVRaldwTzFmVWM3Yk5yRjlRYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763581314),
('vjigDhPQpVz6hl5tXQOF2cqDulClZeI69Rm7m8Id', 1, '185.217.220.198', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoia29mWkZlSVEzbXV2SHJ4WnpSbDNSN0ZyckM2NUV6WkJlc0Q5T1VTNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vZXN0dWRpam9hbnB1aWcuY29tL3Npc3RlbWEtdXN1YXJpcyI7fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkeXN2UG9haG5MOVhoZnZtb3lTcUQ5ZXIucE1lVG15OGNSV2YvSkY3MER0Nk01d0hKeTUyNUMiO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1763592005),
('VNkHQYTrbg00lup024SLBsM6h0TZqLcx2qDcwIAO', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRzk1dnFLa1Y2cHRrM09GRVdDMWFnN3N2Q3NGbmV1NFlYTFNHVEZlYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763573937),
('VP1bnbxUt7LnIexyeSIqbg5ORUgxE6y20UXAPuRE', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZlkxSk5Na1hrYnJEUk1Hb20xanNTT0RLNjU0QU9UQ1AxQVgwMFZWUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763581978),
('vQeDYmRO9TSwJGiz0Co5rl7uL3s4lWC06DwY5m8h', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUnBadzBHcFJPbHViQTh2SDAzeEpoQW1zWVFyU1lVckpqcVRTdXY3TCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763576923),
('vTylxIn2mSF5h9HYqohm89xCadZp5f0SYAGFrucQ', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaG1VbzBxZEJsb1ZXUDB4emxCOHYwUlRDUGdjZlNmSTBMREpqMDB6MyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763577224),
('vvs8XvXX4OKoU2pLVmNYoOqqAfWDMVbaz5Kqr63l', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRVhId01xT20zRDRXUWFkQTZmVjRnSHEyWHVEQ0NPSVNaalZUQUc3MiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763588462),
('vvveRL4veRbAsUADbztxBzYs4ZqMnBOy81Lm8ffz', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRVBwaWdkeXFrTkR5WFM0Mmt0YXJoMjNLOHFtNURoOWp2NnliRWd6MSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763587002),
('w1Fzh3GYVlbBW5bySSB8cKrPaf8eAlABDr6LAii7', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoid0FXMzFTeXU4N2dwVHJkRjRFamVIQml3N2M2cUdqaE9EU3RSMEpnYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763587063),
('W1QgzfKyK72K0IiJtqbzkrFtQFQubLAO4GN8WJUm', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOW9ZOXdZZlJ6QXJJb1FnOXJmRzNCVExKNmJ6RXhXSFQya3ZzbDRkMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763590822),
('w4RvBztQvKnIUYMeT6Q4knJTyTIezZvQZx7EmMgt', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSnFQMDFFUUhrZDFCV1RvcmJuMWMzdHdieXNMa3NGZWlmZjg2Q3dWbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763579750),
('w65vUPUgyIGIvbI2vmXU7fAeuVSX1KDNOQFuwCxd', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoib015cndxYjR6dzhRWEc3WjlpWUpqVTVuYzZnZUIxTkxnNWJDUmNuOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763570253),
('w6Gg30kOwkG9UZf6FpIWuiuysx2rPZfx92XbM7v4', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN2dCNkdsZXRhcXRSUEhFV2h5dW12QTJnVEppenFWQ3hYRWZlb2RSayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763589353),
('W7I1MxLsTUYC4HhbpNEly7n87Uz4dYgz6MrQJb4W', NULL, '150.109.119.38', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0xTZnNBRG1kZ0VRYWx1eDVndnZlM1kyS0c5dEd4MnplYUZNWHFIZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vd3d3LmVzdHVkaWpvYW5wdWlnLmNvbS9ndWllcy9jaGF0Z3B0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763591357),
('w9mTlD8LMDBnXyxr0HEjYbceYtN7kR37sygykEus', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYVZrcFNPZXllV0ZBRjBUWVJhcUpYT01ybjFMc29qSkoxN01KMm5qZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763574797),
('wCYHNY1mtdPwsprA8jJ2HeIs5yxR4A9AzpuQVMXD', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNTVtVzFDOWtwZHp5cDA5QjAya3ZZaGs5YldLemN3d2JHa2x6MGgyeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763587725),
('WgDNdlC9k4kqxZ2hBHFwxD0aM29QVNBq2XsmMjW4', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiekxZRFB4NnhnWWp2bDBBNHhOSnVuRFZRaGdHZE93VVMzWHNvbGVueSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763580953),
('wjUMnb6xNsBp4ZNTD7U2UcHuMKN0shwoRcEHQs6H', NULL, '43.153.73.200', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnN0dnNXYWRIcXlFTWFjWjZ0M3l0MzNFUnA5NklQelRNUnpVRTFHVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vd3d3LmVzdHVkaWpvYW5wdWlnLmNvbS9ndWllcy9kZWVwc2VlayI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763592489),
('wl9cB0Rr3ybTtghyVH3F1GzkkCnn4YTmO8uptiLj', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibWlBVWhsd1R5MXZqb29RenNtYk1aNGU5elV3UG0zbnFRczhldzhPaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763573817),
('WnJ0AyNuHfWrB9Iv8UJCHoHWC7osqEAhRUKtiEbP', NULL, '2a14:7c1::2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjMzMGJFREMzd3FFQVRPZ09yZXFmVzEzQ2xZSEhIN2ZVUXk5YlRmNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vY3BhbmVsLnNydjk0MTMxNi5oc3Rnci5jbG91ZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763574258),
('wPxht0efocD0zE1bBFnByA6XEdM7nVwV2rXdle9c', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicmpXa1NxT0tNVlBrR0pTV1c4T25EaDV4emd5UHdra0RhT3BUc2FFSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763587123),
('WXDkuCqcTCGHUfFFj9tBkZVwzC52S9D0z5vPQwWB', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibGp6U2VBMlJzYkJObVZGTXJzUjNwQ04xOVBSME9WaFJZMkxHYVhWeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763578609),
('WZXdzeqsURTWwbppa9pEdMoRirw6fN4W9PcQZyBC', NULL, '184.154.76.53', 'SiteLockSpider [en] (WinNT; I ;Nav)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZkVSWmp1eFRMRm5pT1JMVjZyTzdLU0VBc0N0UFExbFdqeGpkenRWVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vZXN0dWRpam9hbnB1aWcuY29tL2FkbWluL3Byb2R1Y3RvcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6NDI6Imh0dHBzOi8vZXN0dWRpam9hbnB1aWcuY29tL2FkbWluL3Byb2R1Y3RvcyI7fX0=', 1763584752),
('X4bNc0voAp0gO8HfSLN1nZftOO0CAeTdb4JpMvBp', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZFYwSDRCb3c1WTJDRFpPU29DNWkxTXpXWEc2RnRJSkQ5QW5SVDdGUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763581916),
('Xg7RI1dJ0bOTJ6kSVxQZSHWVMT686UIWFa0D7WJT', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZWZETkFReUpOSVBSenFwbFNLbG1DQXh4NTVsczdld2U3dkxCckZ5aiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763588400),
('xnUYP3wexNhBlSj9pZwL6y6eO3ZR4A7qKTkliany', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNjhKY1pIZEoyUEllYUhiUWJvZVdUVTFjMUszSFVZNnVWamFFUzVsRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763588036),
('XP1Z6ij7v4AF7ZdCoglSldCrs6IW1QeNv9Qgj6Jl', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZlRDUnROM2Vsemd3azNFZXIwS3VFdGpxYlFvWkxZbHU1cnVzVVlwaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763575720),
('XPGA9fL8vYf64HMcygFOt4oXw8dHP0rvWOz5mxiA', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUXQ4d0FGT3JYYzF6M1Z4WUNKNWtyZGFRcXhDT2NaREZjQ0t5R0JBUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763592038),
('XQFrjgZG3mudVnAXWgcE0MbqCPZmkKAUBZ9WihUT', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRU5taVFVS2QyUVY2WmpYMTNGclhiUGxrTWpVQVVLb1dKTTZUdFpUViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763579689),
('xSLH67L7KKqPuLJzN4bwLrE3G3eh5w0Kelx6ZHyE', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSGJwYUhRTFRhUWZPU3ZiTlFmWWN3bHlQaVBDZkt1VDAzVW9FQ2FaeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763573637),
('xSNRIt34qf6OFFbaj9PzofGHRqHLPdLGsRwXVQXA', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWDZQeG5pZm1Xd241amZ0V1E5Yjh6UDdobmRpemxXd2ZpS3M4S0YybyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763581735),
('xvAoYneZLEcp2XNXiyZrcQrJ1utsfmRGwSfEHJTn', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZ3JkekNuemNPOHRjRlB0ZU9ocnM2Vm9xTEhnZ3pMODRSQnBtYVVVZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763581194),
('XZcIqPGVXAR0SxEF690Tsv8UKGqSJOg6AzxKf9Xi', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUkZ2UEt2MUwydmkzSjMybG1QTDdGZ0RmVUZ5VTI5V2NudUp0OVZ5NyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763574479),
('YEZD5cS3Xrmw9XJjsCKVON7M8pE4z3X58YaHVBIG', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNXhGdjd5aGg2aGVwRzdWNDJsQmdzb0FpNld1dzd6OEcxSklGQzZxdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763580231),
('yfg6txnIpAC5rKUlkRVj1bRrGsRzJ0ccHTPVFq9P', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidVpvTk00QjdnZmxabVB3Z2tweDU2cXY1OXIzc3BoOUVsak5NM1JGaiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763570614),
('yFrqhyJ5DqFbheGOBtEqD7Vd55zk0NU3zxXdK5BU', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZkxVdlkxdHNhd3lMTE9SR2d5dVQ0bjhUMElUQjBEZVBWZW9rdWxPaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763592280),
('YI5P7mCdb9xh77cDoLiY3y6Oxt8qVVrgRugsiYJN', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidUl3UVJHU2ZJVWt1Ym1McFltbnpzb3BxUFZqSFRXMUJpb3FoNm1FeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763569832),
('YIXjP8VLhAQtIEFfBaVutd5IcKZUqQF0mCTGqpqY', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRHplenBqN2lGRzlvQVBiME14MzkwTE13YWNEOWxhd3hoNE01cXNUNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763580351),
('yj6asi0u1JSS5YBKVEsLUAdX5tD0e6Fc3YdcrIrR', NULL, '3.237.67.73', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOElKcHZvNmVDYWlZaGZpUDc5ajRPZ1BYZURLa2loZ2dwbUZLNW9YUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vZXN0dWRpam9hbnB1aWcuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763589801),
('yJljfVvDNHyGF9aIjjx4vmUbL1yvBTilmAfT5gZY', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiR2Z4NEJ4M2NrT0d4dG1XR0hqOTRCNTFDNXJodEpTMk9TWTFwZEVsVCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763576381),
('YKv1PK0IiDRG7uKZLO2KFcRJkMJxDCghI2VvEDkO', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVUd5Z3Z2QTNWQjBXQzdVSldyZ3FXc1VlV2tWbld5UTc1RjlhVXdjMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763592520),
('yky99FGTub9KfYMaloXzf721ZKwiENfjJDFeVvje', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaW1YSW16S2R4d2NEVnFTSkZVdXlWT1hFQUM0VjdJWEZFdmlkTkROciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763570012);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('YO4fpRaTjv7nNsKQ6CxH8uljtX8BpQI0M8XOkBh2', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOFd0cXplTVJCbnhkYW8xdTU0VFR0Qk1QemlkMjBtZEI5MXo2WVJyUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763577465),
('yStRk8Df4PIMH8YiFFFAciIKt245WhilFAor4LBk', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSXRabldHNXAzMDFSYWo0ako2ZE8yZU00S3JQNGZDZXJmUE83a0Z3OCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763588522),
('yuXUotmJZ9EID4KInKdRgM5gQply7vGsN7UAxRZM', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZ1ZPdWxidjlkVTV1VkJmMTlham1vbmNhZUNLOGJGRGMyQ2RSeERjUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763571456),
('Yv1szCrP6mFX6QPwdTuFkRW8BnV9m473YCmXLJE1', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZzJQb3lZMjJNZVlpTUpNRXJrMWxKNG16R0NNeHVWTENKeU1nbzg4NSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763574662),
('yxeHQegpX3CmwkS8GV9OXdgCsRXf0VVyTm3dzHHx', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRVJWZG5tR1hrb3BDcTFaVzNVOHY4dExMMXp4NjZRQjZmTEdPbk9iMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763581675),
('yY9NJhlIbF2xh2y41xIQBYOSoKSJjbqvUBsHeWl4', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTmdpRkhLRmVMV0JFQk1nU3pEczhPMWFQdER2bzZMZ3Q0ejh0MEpveiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763582339),
('Z5UQ5HsbTweYe4ZL06JHo2eFgnGYd2RQ0t6kPKoG', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMW1pZkVoYXRJbW8wR1ZqNFJUYW9jWjRZMFY1TUpqRUNSSEhoVDVTeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763572494),
('z6tuCIPzb1Vo8vLIBHszmJe5OUH9e0sP7cyEj6OM', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMWpWcGpSbFlaNXVrdFR5clViUVNMcmtsYkdveEh1UVZxRUtjbnpYRyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763582039),
('ZamE71h59T0GdHsEX9UeqTXdVekKDIQteODHGmy1', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoid3FOSjFNR29IWUJIejFYMzhidzZoMmRXWmFWdU9teElLMFZiWEZ0bCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763568807),
('zC9hhhFQ9BY00u5GztZDNU3langMSysQOKJiR8TI', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidExQNHFMdzI0TU1aRVVyaHBNTXhVaTVLZ1d6b3E0YmlzeE11M0lkMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763586070),
('Zd31DC7IMNIBYk1BJll3r77dxanm8qCwAMuzYlLx', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSXVEeTlXbzlkY3h6dEx6U0wydTVuNWlSTFdNcVpVV1V6UXBIcmU3NSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763582580),
('zfvMN3Tho5b7yC5pSqwGt0sNDruq5XiCEMyLsR4j', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibG1TSUJyVU0zVjRzV2RWV1ZxVWVnMzVZUFJwbnpUVjllRWFLR3dmbiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763571577),
('Zlu0nmd5qnWKIZsTlGBOsKji55aEAEh4rWiBYcEs', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicVlQd2dPc05kUmM5c3VMZmVvZnJoaVUxNW9wRUtsTElxY09hRHhONiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763570373),
('ZmZNSGiYWC1r7Mr2VddqcTPAPnVCKzygazRu8Rpl', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicjhTd2o2NHZraUo5SlJJNjdpVDhXVm9GdzNIU052OEFzWXcwdzliOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763568446),
('ZnEGXvyCVHnNDlTnH1bdlK7vbRLJwvqJ7JtWHHlu', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibGlRejVLVzM0U1RSVTZxNFBRcUNRY1BBNnNnamxJN2NjQjFKa0hhNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763569952),
('znUZAH3OVbhA7vIRfFKdnzNREM2QcwTsD1r0HzVq', NULL, '43.130.72.40', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEFNTmF0WDBzaXVaTHlyWmRIM1ZwODdpNUh5dVBiVFBPcFBYNkFGZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vd3d3LmVzdHVkaWpvYW5wdWlnLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763589282),
('ZstcAcu4o943lQz5xMYK3zgZf3fbdEkVFB6AoIqh', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicHdVbGV5Q05ZdHRVbjlabzZJa1NZeUZFNm4wUUJsVEZKajFNdGcwWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763571035),
('zSy3EQFXp2BYoX6c6Cz75kbn0j9NaMUvdwil1ooM', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMmI2UkdrQU43Q1pIYmQ3MjVudVQ5Y0t2dFFEUjhiOUV1akhLUm9yeSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763568988),
('ZtuFHXkp6s20qV7VP2fjsYEKkn5mWZKBdu9feJJ0', NULL, '2a06:4883:3000::33', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlZwQTZQYTVLd21NNWlMejJhUXduQWQyclZHdnRKU05rOFJVRVkzUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vWzJhMDI6NDc4MDoyODplNTM0OjoxXSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763577478),
('zujWRShYgXUn0bf3mDR5SbaByj7IDGMPlZavEScu', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNXRBOFoyaXNzWVV3YW13UW9vdTVib1pTR3I2a1JBclQzWGJ6cGQ4QSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763573998),
('ZuT7eDUPnJ1AgpWmKuh7kBDMogJLcwRSgPE3UnpD', NULL, '95.179.220.67', 'Mozilla/5.0 (compatible; monitoring360bot/1.1; +https://app.360monitoring.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZml0d01SR2ExbTZrdE1jMmJGUFRYV1hVY1dEU3pvWHhNaEwwb05tVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763586397);

-- --------------------------------------------------------

--
-- Estructura de la taula `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `svg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `tags`
--

INSERT INTO `tags` (`id`, `name`, `svg`, `created_at`, `updated_at`) VALUES
(2, 'eloquent-orm', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#c41c1c\" d=\"M18.68 12.32a4.49 4.49 0 0 0-6.36.01a4.49 4.49 0 0 0 0 6.36a4.508 4.508 0 0 0 5.57.63L21 22.39L22.39 21l-3.09-3.11c1.13-1.77.87-4.09-.62-5.57m-1.41 4.95c-.98.98-2.56.97-3.54 0c-.97-.98-.97-2.56.01-3.54c.97-.97 2.55-.97 3.53 0c.97.98.97 2.56 0 3.54M10.9 20.1a6.527 6.527 0 0 1-1.48-2.32C6.27 17.25 4 15.76 4 14v3c0 2.21 3.58 4 8 4c-.4-.26-.77-.56-1.1-.9M4 9v3c0 1.68 2.07 3.12 5 3.7v-.2c0-.93.2-1.85.58-2.69C6.34 12.3 4 10.79 4 9m8-6C7.58 3 4 4.79 4 7c0 2 3 3.68 6.85 4h.05c1.2-1.26 2.86-2 4.6-2c.91 0 1.81.19 2.64.56A3.215 3.215 0 0 0 20 7c0-2.21-3.58-4-8-4\"/></svg>', '2024-03-12 21:14:08', '2024-03-12 21:14:08'),
(3, 'query-builder', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#c41c1c\" d=\"M18.68 12.32a4.49 4.49 0 0 0-6.36.01a4.49 4.49 0 0 0 0 6.36a4.508 4.508 0 0 0 5.57.63L21 22.39L22.39 21l-3.09-3.11c1.13-1.77.87-4.09-.62-5.57m-1.41 4.95c-.98.98-2.56.97-3.54 0c-.97-.98-.97-2.56.01-3.54c.97-.97 2.55-.97 3.53 0c.97.98.97 2.56 0 3.54M10.9 20.1a6.527 6.527 0 0 1-1.48-2.32C6.27 17.25 4 15.76 4 14v3c0 2.21 3.58 4 8 4c-.4-.26-.77-.56-1.1-.9M4 9v3c0 1.68 2.07 3.12 5 3.7v-.2c0-.93.2-1.85.58-2.69C6.34 12.3 4 10.79 4 9m8-6C7.58 3 4 4.79 4 7c0 2 3 3.68 6.85 4h.05c1.2-1.26 2.86-2 4.6-2c.91 0 1.81.19 2.64.56A3.215 3.215 0 0 0 20 7c0-2.21-3.58-4-8-4\"/></svg>', '2024-03-12 21:14:08', '2024-03-12 21:14:08'),
(4, 'array', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#c41c1c\" d=\"M18.68 12.32a4.49 4.49 0 0 0-6.36.01a4.49 4.49 0 0 0 0 6.36a4.508 4.508 0 0 0 5.57.63L21 22.39L22.39 21l-3.09-3.11c1.13-1.77.87-4.09-.62-5.57m-1.41 4.95c-.98.98-2.56.97-3.54 0c-.97-.98-.97-2.56.01-3.54c.97-.97 2.55-.97 3.53 0c.97.98.97 2.56 0 3.54M10.9 20.1a6.527 6.527 0 0 1-1.48-2.32C6.27 17.25 4 15.76 4 14v3c0 2.21 3.58 4 8 4c-.4-.26-.77-.56-1.1-.9M4 9v3c0 1.68 2.07 3.12 5 3.7v-.2c0-.93.2-1.85.58-2.69C6.34 12.3 4 10.79 4 9m8-6C7.58 3 4 4.79 4 7c0 2 3 3.68 6.85 4h.05c1.2-1.26 2.86-2 4.6-2c.91 0 1.81.19 2.64.56A3.215 3.215 0 0 0 20 7c0-2.21-3.58-4-8-4\"/></svg>', '2024-03-12 21:14:08', '2024-03-12 21:14:08'),
(5, 'artisan', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 16 16\"><g fill=\"#c41c1c\"><path d=\"m10.875 7l2.008 5h-.711l-2.008-5zm-5.125.594c-.276 0-.526.041-.75.125a1.542 1.542 0 0 0-.578.375c-.162.166-.287.37-.375.61a2.364 2.364 0 0 0-.133.827c0 .287.04.547.117.781c.078.235.196.433.352.594c.156.162.346.29.57.383c.224.094.48.138.766.133a2.63 2.63 0 0 0 .992-.195l.125.484a1.998 1.998 0 0 1-.492.148a4.381 4.381 0 0 1-.75.07a2.61 2.61 0 0 1-.914-.156a2.207 2.207 0 0 1-.742-.453a1.878 1.878 0 0 1-.485-.742a3.204 3.204 0 0 1-.18-1.023c0-.365.06-.698.18-1c.12-.302.287-.563.5-.782c.214-.218.471-.388.774-.507a2.69 2.69 0 0 1 1-.18c.296 0 .536.023.718.07c.183.047.315.094.399.14l-.149.493a1.85 1.85 0 0 0-.406-.14a2.386 2.386 0 0 0-.539-.055M8 8h1v1H8zm0 2h1v1H8z\"/><path d=\"M15.5 1H.5l-.5.5v13l.5.5h15l.5-.5v-13zM15 14H1V5h14zm0-10H1V2h14z\"/></g></svg>', '2024-03-12 21:14:08', '2024-03-12 21:14:08'),
(6, 'bbdd', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#c41c1c\" d=\"M12 21q-3.775 0-6.387-1.162T3 17V7q0-1.65 2.638-2.825T12 3q3.725 0 6.363 1.175T21 7v10q0 1.675-2.613 2.838T12 21m0-11.975q2.225 0 4.475-.638T19 7.025q-.275-.725-2.512-1.375T12 5q-2.275 0-4.462.638T5 7.025q.35.75 2.538 1.375T12 9.025M12 14q1.05 0 2.025-.1t1.863-.288q.887-.187 1.675-.462T19 12.525v-3q-.65.35-1.437.625t-1.675.463q-.888.187-1.863.287T12 11q-1.05 0-2.05-.1t-1.888-.288q-.887-.187-1.662-.462T5 9.525v3q.625.35 1.4.625t1.663.463q.887.187 1.887.287T12 14m0 5q1.15 0 2.338-.175t2.187-.462q1-.288 1.675-.65t.8-.738v-2.45q-.65.35-1.437.625t-1.675.463q-.888.187-1.863.287T12 16q-1.05 0-2.05-.1t-1.888-.288q-.887-.187-1.662-.462T5 14.525V17q.125.375.788.725t1.662.638q1 .287 2.2.462T12 19\"/></svg>', '2024-03-12 21:14:08', '2024-03-12 21:14:08'),
(7, 'belongsto', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 2048 2048\"><path fill=\"#c41c1c\" d=\"M2048 640h-640V482L691 960l717 478v-158h640v640h-640v-328l-768-512v200H0V640h640v200l768-512V0h640zm-512 768v384h384v-384zM512 1152V768H128v384zM1536 128v384h384V128z\"/></svg>', '2024-03-12 21:14:08', '2024-03-12 21:14:08'),
(9, 'cabanyes', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#c41c1c\" d=\"M10 1c0 1.66-1.34 3-3 3c-.55 0-1 .45-1 1H4c0-1.66 1.34-3 3-3c.55 0 1-.45 1-1zm2 2L6 7.58V6H4v3.11L1 11.4l1.21 1.59L4 11.62V21h16v-9.38l1.79 1.36L23 11.4zm1.94 4h-3.89L12 5.52zm-6.5 2h9.12L18 10.1v.9H6v-.9zM18 13v2H6v-2zM6 19v-2h12v2z\"/></svg>', '2024-03-12 21:14:08', '2024-03-12 21:14:08'),
(10, 'cards', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#c41c1c\" d=\"M6 11.5V6h5.5v5.5zM6 18v-5.5h5.5V18zm6.5-6.5V6H18v5.5zm0 6.5v-5.5H18V18zM5 21q-.825 0-1.412-.587T3 19V5q0-.825.588-1.412T5 3h14q.825 0 1.413.588T21 5v14q0 .825-.587 1.413T19 21zm0-2h14V5H5z\"/></svg>', '2024-03-12 21:14:08', '2024-03-12 21:14:08'),
(11, 'themes', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 48 48\"><path fill=\"none\" stroke=\"#c41c1c\" stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M13.073 4.5h21.854A2.567 2.567 0 0 1 37.5 7.073l-.464 14.917H10.783L10.5 7.073C10.476 5.648 11.648 4.5 13.073 4.5\"/><path fill=\"none\" stroke=\"#c41c1c\" stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M37.036 21.99v4.632c.172 1.885-2.133 1.862-3.628 1.87c-5.493.028-6.634 2.567-6.469 5.291c.156 2.572.197 2.898.232 4.349c.085 3.487-1.595 5.368-3.262 5.368s-3.346-1.88-3.261-5.368c.035-1.451.076-1.777.232-4.349c.164-2.724-.976-5.263-6.47-5.291c-1.495-.008-3.8.015-3.627-1.87V21.99\"/></svg>', '2024-03-13 21:26:45', '2024-03-13 21:26:45'),
(12, 'ubuntu', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#e91b0c\" d=\"M22 12a10 10 0 0 1-10 10A10 10 0 0 1 2 12A10 10 0 0 1 12 2a10 10 0 0 1 10 10m-7.66-4.26c.58.33 1.31.13 1.66-.44c.31-.57.12-1.3-.46-1.64c-.57-.33-1.31-.16-1.64.44c-.33.57-.13 1.31.44 1.64m-2.46 7.76c-.53 0-1.03-.11-1.47-.32l-.84 1.5c.7.32 1.48.54 2.31.54c.49 0 .95-.07 1.4-.19c.08-.49.36-.93.82-1.19c.46-.27.98-.29 1.44-.12c.89-.87 1.46-2.06 1.55-3.39l-1.71-.02a3.506 3.506 0 0 1-3.5 3.19m0-7c1.84 0 3.34 1.39 3.5 3.19l1.71-.03a5.209 5.209 0 0 0-1.55-3.38c-.46.17-.99.14-1.44-.12c-.46-.26-.74-.71-.82-1.19c-.45-.12-.91-.19-1.4-.19c-.83 0-1.61.19-2.31.54l.84 1.5c.44-.21.94-.32 1.47-.32M8.37 12c0-1.19.59-2.24 1.49-2.87L9 7.65a5.217 5.217 0 0 0-2.17 3.04c.38.31.62.78.62 1.31s-.24 1-.62 1.31A5.195 5.195 0 0 0 9 16.34l.86-1.47c-.9-.63-1.49-1.68-1.49-2.87m5.97 4.26c-.57.33-.77 1.06-.44 1.64c.33.57 1.07.77 1.64.44c.58-.34.77-1.07.46-1.64c-.35-.58-1.08-.77-1.66-.44M5.76 10.8c-.66 0-1.2.54-1.2 1.2c0 .66.54 1.2 1.2 1.2c.67 0 1.2-.54 1.2-1.2c0-.66-.53-1.2-1.2-1.2\"/></svg>', '2024-03-16 11:31:32', '2024-08-28 18:10:45'),
(13, 'synology', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 32 32\"><path fill=\"#e91b0c\" d=\"M23.86 15.901c0-.713.181-1.412.525-2.037l-.011.021a3.593 3.593 0 0 1 1.432-1.479l.021-.005a4.185 4.185 0 0 1 2.032-.511h.061c1.193 0 2.172.385 2.933 1.161c.76.771 1.14 1.751 1.145 2.937c0 1.193-.385 2.177-1.156 2.969c-.771.787-1.74 1.177-2.912 1.177a4.577 4.577 0 0 1-2.093-.505l.025.015a3.426 3.426 0 0 1-1.489-1.427l-.005-.016c-.339-.629-.509-1.396-.509-2.301zm2.124.115c0 .787.183 1.391.557 1.796a1.82 1.82 0 0 0 2.756 0h.005c.364-.411.547-1.02.547-1.807c0-.792-.183-1.38-.547-1.792a1.828 1.828 0 0 0-2.756 0h-.005c-.369.412-.557 1.011-.557 1.797zm-2.135 3.916H21.77v-4.015c0-.849-.041-1.396-.131-1.647a1.206 1.206 0 0 0-.437-.583h-.005a1.265 1.265 0 0 0-.692-.209h-.052c-.36 0-.699.109-.969.303h.005a1.448 1.448 0 0 0-.593.765v.011c-.115.328-.161.927-.161 1.812v3.563h-2.068v-7.896h1.917v1.157c.692-.876 1.556-1.308 2.604-1.308h.025c.448 0 .875.088 1.265.251l-.02-.005c.344.14.635.353.859.629l.005.005c.188.251.328.541.407.86v.015c.077.371.12.797.12 1.229v.172zM8.552 12.036h2.203l1.885 5.604l1.833-5.604h2.147l-2.756 7.595l-.504 1.38c-.141.38-.319.739-.537 1.077l.016-.02a2.233 2.233 0 0 1-.563.588l-.005.005a2.576 2.576 0 0 1-.771.344l-.021.005a4.03 4.03 0 0 1-1.031.135h-.032a5.92 5.92 0 0 1-1.213-.14l.037.005l-.172-1.641c.26.063.568.1.88.104c.479 0 .839-.14 1.068-.421c.244-.323.421-.688.525-1.079l.005-.02zM0 16.385l2.125-.197c.129.713.391 1.239.781 1.572c.385.339.916.505 1.588.5c.703 0 1.235-.145 1.593-.443c.36-.296.537-.651.537-1.047v-.031c0-.229-.079-.453-.224-.631c-.151-.177-.412-.333-.787-.464c-.255-.099-.844-.249-1.751-.484c-1.176-.287-1.995-.645-2.463-1.073a2.854 2.854 0 0 1-1-2.171v-.043c0-.572.177-1.104.473-1.547l-.005.011c.328-.495.792-.88 1.339-1.104l.021-.005c.588-.245 1.297-.375 2.135-.375c1.36 0 2.381.301 3.073.9c.688.609 1.047 1.407 1.079 2.412l-2.199.073c-.099-.552-.291-.953-.604-1.199c-.307-.244-.771-.369-1.375-.369c-.636 0-1.136.131-1.489.401a.782.782 0 0 0-.349.651v.016c0 .271.125.505.323.656v.005c.271.235.943.479 2.011.724c1.063.249 1.849.515 2.36.787c.495.265.9.64 1.187 1.104l.011.011c.287.457.432 1.047.432 1.739c0 .651-.192 1.261-.525 1.765l.005-.009a3.149 3.149 0 0 1-1.443 1.213l-.021.005c-.636.26-1.423.396-2.365.396c-1.369 0-2.427-.319-3.161-.959c-.739-.647-1.172-1.573-1.317-2.792z\"/></svg>', '2024-03-16 11:31:44', '2024-08-28 18:11:08'),
(14, 'windows server\r\n', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 32 32\"><path fill=\"#7baddb\" d=\"M27.9 6h-9.7l-2 4H5v17h25V6Zm.1 18H7V12h21Zm.1-14h-7.8l1-2H28Z\"/><path fill=\"#7baddb\" d=\"M25.9 14H.3l3.8 13h25.6z\"/><path fill=\"#0078d6\" d=\"m10 12.974l8.582-1.166v8.253L10 20.109Zm8.577 8.037l.008 8.261l-8.579-1.172v-7.14Zm1.041-9.355L31 10v9.956l-11.379.089ZM31 21.089V31l-11.382-1.6l-.018-8.33Z\"/></svg>', '2024-03-16 11:32:06', '2024-08-28 18:10:16'),
(15, 'hostinger', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#850ce9\" d=\"M16.415 0v7.16l5.785 3.384V2.949zM1.8 0v11.237h18.815L14.89 8.09l-7.457-.003V3.024zm14.615 20.894v-5.019l-7.514-.005c.007.033-5.82-3.197-5.82-3.197l19.119.091V24zM1.8 13.551v7.343l5.633 2.949v-6.988z\"/></svg>', '2024-03-16 11:32:17', '2024-08-28 18:11:35'),
(16, 'localhost', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 256 258\"><g fill=\"none\" fill-rule=\"evenodd\"><path fill=\"#fb7a24\" d=\"M127.929.002c33.227 0 66.455 0 99.682-.002c4.17 0 8.3.362 12.301 1.582c8.675 2.644 13.268 8.865 15.068 17.438c.715 3.4.918 6.865.925 10.33c.053 23.27.092 46.542.094 69.814c.002 42.384.007 84.768-.08 127.151c-.012 5.933-.328 11.931-3.257 17.336c-3.249 5.994-7.697 10.738-14.45 12.824c-1.22.377-2.494.806-3.745.806c-2.882.002-5.687.716-8.56.716c-65.067-.005-130.133.033-195.2-.07c-5.292-.01-10.67-.395-15.697-2.548c-1-.43-2.01-.79-2.89-1.46c-6.4-4.877-10.746-10.96-11.678-19.191c-.335-2.968-.442-5.92-.442-8.889c.01-65.952.016-131.904.05-197.856c.003-3.826.042-7.718 1.219-11.38C4.403 6.846 11.261 1.519 21.427.437C23.79.185 26.173.022 28.547.02C61.672-.007 94.801.002 127.928.002\"/><path fill=\"#fff\" d=\"M128.775 164.113c-.727 4.454-1.238 8.48-2.838 12.19c-7.49 17.384-20.256 27.977-39.394 30.086c-22.621 2.492-43.515-11.47-49.797-33.154c-2.277-7.858-2.049-15.869-1.223-23.867c.881-8.546 3.399-16.65 7.33-24.296c.563-1.093.552-1.918-.152-2.977c-6.036-9.078-8.378-19.107-7.528-29.932c.455-5.786 1.86-11.32 4.483-16.504c7.689-15.185 24.57-28.072 47.179-25.932c19.88 1.88 38.293 19.029 41.167 38.315c.145.968.417 1.918.735 3.346c.476-2.586.82-4.72 1.265-6.834c3.703-17.521 20.854-35.855 45.164-36.082c24.64-.228 42.887 19.097 46.33 37.045c1.455 7.585 1.202 15.163.002 22.738a81.02 81.02 0 0 1-6.672 21.775c-.716 1.529-.642 2.63.275 4.05c5.307 8.224 7.649 17.252 7.349 27.056c-.628 20.457-15.097 38.802-35.002 43.6c-27.79 6.697-49.093-9.923-56.262-30.031c-1.17-3.273-1.723-6.69-2.41-10.592m50.489-35.94c.297-1.157 1.193-1.85 1.837-2.706c6.968-9.26 10.633-19.603 9.815-31.25c-.596-8.5-7.587-14.488-16.05-14.171c-8.469.317-14.85 6.848-14.97 15.322c-.009.694.033 1.389-.01 2.078c-.583 9.031-5.566 13.978-13.117 14.53c-1.379.101-2.762.224-4.143.228c-9.8.022-19.599.018-29.4.009c-4.28-.004-8.524.462-12.6 1.72c-19.027 5.87-30.122 18.882-33.796 38.275c-.728 3.837-1.383 7.819-.125 11.76c1.805 5.653 5.17 9.857 11.126 11.263c6.173 1.457 11.55-.155 15.822-5.004c2.761-3.135 3.632-6.86 3.838-10.948c.534-10.515 6.26-15.771 15.81-15.692c14.649.122 29.3.026 43.951.037c2.6.001 2.624.036 2.637 2.608c.025 4.75-.121 9.507.062 14.252c.298 7.747 7.114 14.186 15.016 14.413c8.148.233 15.411-5.794 15.942-13.661c.458-6.81.429-13.661-.018-20.476c-.346-5.275-3.2-9.035-8.036-11.217c-1.16-.522-2.38-.913-3.591-1.37m-91.832-15.984c3.151 0 5.723-.029 8.293.013c1.274.02 1.746-.528 1.736-1.777c-.042-4.943.213-9.902-.102-14.827c-.416-6.497-3.871-11.194-9.92-13.563c-6.202-2.429-11.878-1.043-16.678 3.538c-4.821 4.603-5.464 10.232-3.777 16.392c1.55 5.662 5.21 8.878 10.968 9.85c3.344.563 6.707.293 9.48.374\"/></g></svg>', '2024-03-16 11:32:27', '2024-08-28 18:12:06'),
(17, 'install', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 20 20\"><path fill=\"#e9380c\" d=\"m19.059 10.898l-3.171-7.927A1.543 1.543 0 0 0 14.454 2H12.02l.38 4.065h2.7L10 10.293L4.9 6.065h2.7L7.98 2H5.546c-.632 0-1.2.384-1.434.971L.941 10.898a4.25 4.25 0 0 0-.246 2.272l.59 3.539A1.544 1.544 0 0 0 2.808 18h14.383c.755 0 1.399-.546 1.523-1.291l.59-3.539a4.22 4.22 0 0 0-.245-2.272m-2.1 4.347a.902.902 0 0 1-.891.755H3.932a.902.902 0 0 1-.891-.755l-.365-2.193A.902.902 0 0 1 3.567 12h12.867c.558 0 .983.501.891 1.052z\"/></svg>', '2024-03-16 11:34:01', '2024-08-28 18:13:00'),
(18, 'config', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 32 32\"><path fill=\"#53a2c1\" d=\"M27.5 5.5h-9.3l-2.1 4.2H4.4v16.8h25.2v-21Zm0 4.2h-8.2l1.1-2.1h7.1Z\"/><path fill=\"#99b8c4\" d=\"m26.049 26.785l.675-.671c3.123.1 3.171-.008 3.308-.329l.858-2.085l.064-.2l-.07-.173c-.037-.092-.15-.365-2.1-2.224v-.978c2.25-2.168 2.2-2.279 2.074-2.6L30 15.418c-.128-.317-.177-.44-3.278-.356l-.675-.7a15.125 15.125 0 0 0-.106-3.08l-.087-.2l-2.231-.975c-.329-.15-.444-.2-2.55 2.09l-.947-.014c-2.168-2.315-2.271-2.273-2.6-2.141l-2.074.839c-.325.131-.44.178-.314 3.328l-.67.668c-3.122-.1-3.17.009-3.305.329l-.86 2.09l-.068.2l.071.174c.037.09.146.36 2.1 2.222v.975c-2.25 2.168-2.2 2.279-2.072 2.6l.854 2.113c.131.323.177.438 3.277.357l.675.7a15.182 15.182 0 0 0 .1 3.075l.087.2l2.245.981c.326.137.44.185 2.54-2.1l.947.012c2.171 2.318 2.282 2.273 2.6 2.144l2.069-.836c.338-.131.452-.176.321-3.328m-8.894-4.893a3.718 3.718 0 1 1 4.866 2.118a3.761 3.761 0 0 1-4.866-2.118\"/></svg>', '2024-03-16 11:34:10', '2024-08-28 18:13:22'),
(19, 'create', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 26 26\"><path fill=\"#0ca6e9\" d=\"M22.438-.063c-.375 0-.732.17-1.032.47l-.718.687l4.218 4.218l.688-.718c.6-.6.6-1.494 0-2.094L23.5.406c-.3-.3-.688-.469-1.063-.469zM20 1.688l-1.094.907l4.5 4.5l1-1zm-1.688 1.625l-9.03 8.938a.975.975 0 0 0-.126.125l-.062.031a.975.975 0 0 0-.219.438l-1.219 4.281a.975.975 0 0 0 1.219 1.219l4.281-1.219a.975.975 0 0 0 .656-.531l8.876-8.782L21 6v.094l-1.188-1.188h.094l-1.593-1.593zM.813 4A1 1 0 0 0 0 5v20a1 1 0 0 0 1 1h20a1 1 0 0 0 1-1V14a1 1 0 1 0-2 0v10H2V6h10a1 1 0 1 0 0-2H1a1 1 0 0 0-.094 0a1 1 0 0 0-.094 0zm9.813 9.813l1.375.093l.094 1.5l-1.375.406l-.531-.53z\"/></svg>', '2024-03-16 11:34:17', '2024-08-28 18:14:07'),
(20, 'update', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 20 20\"><path fill=\"#c96522\" d=\"M5.7 9c.4-2 2.2-3.5 4.3-3.5c1.5 0 2.7.7 3.5 1.8l1.7-2C14 3.9 12.1 3 10 3C6.5 3 3.6 5.6 3.1 9H1l3.5 4L8 9zm9.8-2L12 11h2.3c-.5 2-2.2 3.5-4.3 3.5c-1.5 0-2.7-.7-3.5-1.8l-1.7 1.9C6 16.1 7.9 17 10 17c3.5 0 6.4-2.6 6.9-6H19z\"/></svg>', '2024-03-16 11:34:25', '2024-08-28 18:46:11'),
(21, 'delete', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#0ca6e9\" d=\"M7 21q-.825 0-1.412-.587T5 19V6H4V4h5V3h6v1h5v2h-1v13q0 .825-.587 1.413T17 21zM17 6H7v13h10zM9 17h2V8H9zm4 0h2V8h-2zM7 6v13z\"/></svg>', '2024-03-16 11:34:33', '2024-08-28 18:14:33'),
(22, 'models_people', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 48 48\"><g fill=\"none\" stroke=\"#a315e5\" stroke-width=\"4\"><path stroke-linecap=\"round\" d=\"M32.4853 24.4853C34.6569 22.3137 36 19.3137 36 16C36 9.37258 30.6274 4 24 4C17.3726 4 12 9.37258 12 16C12 19.3137 13.3431 22.3137 15.5147 24.4853\"/><path stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M6 44L7 39L18 31L24 37L30 31L41 39L42 44\"/><path d=\"M12.9934 21.0071C13.0061 16.8965 13.6749 13.8941 15 11.9999C16.9877 9.15871 18.387 9.36755 19.4054 9.81009C20.4238 10.2526 21.0226 13.1442 22.7236 13.9777C24.4246 14.8112 28.7777 14.9141 30.2687 15.9167C31.7597 16.9194 35.1696 18.7844 34.3195 21.9684\"/></g></svg>', '2024-03-16 11:51:59', '2024-08-28 16:50:46'),
(23, 'fotografs', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 20 20\"><g fill=\"#9c23c7\"><path d=\"m7.762 7.5l.41-1.268A2.5 2.5 0 0 1 10.55 4.5h2.898a2.5 2.5 0 0 1 2.379 1.732l.41 1.268H17.5A2.5 2.5 0 0 1 20 10v6a2.5 2.5 0 0 1-2.5 2.5h-11A2.5 2.5 0 0 1 4 16v-6a2.5 2.5 0 0 1 2.5-2.5z\" opacity=\"0.2\"/><path fill-rule=\"evenodd\" d=\"M6.172 5.232L5.762 6.5H4.5A2.5 2.5 0 0 0 2 9v6a2.5 2.5 0 0 0 2.5 2.5h11A2.5 2.5 0 0 0 18 15V9a2.5 2.5 0 0 0-2.5-2.5h-1.263l-.409-1.268a2.5 2.5 0 0 0-2.38-1.732H8.552a2.5 2.5 0 0 0-2.38 1.732M4.5 7.5h1.99l.633-1.96A1.5 1.5 0 0 1 8.551 4.5h2.898a1.5 1.5 0 0 1 1.427 1.04l.633 1.96H15.5A1.5 1.5 0 0 1 17 9v6a1.5 1.5 0 0 1-1.5 1.5h-11A1.5 1.5 0 0 1 3 15V9a1.5 1.5 0 0 1 1.5-1.5\" clip-rule=\"evenodd\"/><path fill-rule=\"evenodd\" d=\"M7 11.5a3 3 0 1 0 6 0a3 3 0 0 0-6 0m5 0a2 2 0 1 1-4 0a2 2 0 0 1 4 0\" clip-rule=\"evenodd\"/></g></svg>', '2024-03-16 11:52:15', '2025-01-03 15:18:47'),
(24, 'painters', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 48 48\"><path fill=\"none\" stroke=\"#9c23c7\" stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M21.571 31.833c.417 0 .833-.277 1.25-.555c1.665-.971 3.053-2.36 4.302-3.747c5.829-5.83 10.964-12.353 15.822-19.014c.139-.278.416-.694.555-.972c0-.139 0-.555-.139-.694s-.416-.139-.694-.139c-.139 0-.416.278-.694.417c-1.943 1.388-4.025 2.775-5.968 4.163c-4.996 3.609-9.993 7.356-14.434 11.659c-1.249 1.249-2.36 2.637-3.47 3.886c-.416.416-.555.971-.139 1.527c.694 1.11 1.666 2.22 2.776 3.053c.278.278.417.278.833.416\"/><path fill=\"none\" stroke=\"#9c23c7\" stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M17.685 27.947c-.416-.139-1.527-.139-1.943 0c-1.527.278-2.776 1.25-3.886 2.36c-.833.971-1.388 2.081-1.943 3.33c-.555 1.666-1.388 3.054-2.915 4.025c-.971.417-1.665.972-2.498 1.527l1.25.833c2.636 1.249 5.55 1.665 8.327.833c3.747-.972 6.523-5.274 7.355-9.16\"/></svg>', '2024-03-16 11:52:26', '2024-08-02 12:08:24'),
(25, 'actors', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><g fill=\"none\" stroke=\"#9c23c7\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.5\"><path d=\"M7 14a2 2 0 1 0 0-4a2 2 0 0 0 0 4m10 0a2 2 0 1 0 0-4a2 2 0 0 0 0 4m-5-5a2 2 0 1 0 0-4a2 2 0 0 0 0 4m0 10a2 2 0 1 0 0-4a2 2 0 0 0 0 4\"/><path d=\"M2 12c0 5.523 4.477 10 10 10s10-4.477 10-10S17.523 2 12 2S2 6.477 2 12m0 0v10\"/></g></svg>', '2024-03-16 11:53:44', '2024-07-31 02:25:51'),
(26, 'athletes', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#884444\" d=\"M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10s10-4.48 10-10S17.52 2 12 2m1 3.3l1.35-.95a8 8 0 0 1 4.38 3.34l-.39 1.34l-1.35.46L13 6.7zm-3.35-.95L11 5.3v1.4L7.01 9.49l-1.35-.46l-.39-1.34a8.1 8.1 0 0 1 4.38-3.34M7.08 17.11l-1.14.1A7.94 7.94 0 0 1 4 12c0-.12.01-.23.02-.35l1-.73l1.38.48l1.46 4.34zm7.42 2.48c-.79.26-1.63.41-2.5.41s-1.71-.15-2.5-.41l-.69-1.49l.64-1.1h5.11l.64 1.11zM14.27 15H9.73l-1.35-4.02L12 8.44l3.63 2.54zm3.79 2.21l-1.14-.1l-.79-1.37l1.46-4.34l1.39-.47l1 .73c.01.11.02.22.02.34c0 1.99-.73 3.81-1.94 5.21\"/></svg>', '2024-03-16 11:54:05', '2024-08-28 18:31:14'),
(27, 'chefs', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 16 16\"><path fill=\"#ba7617\" d=\"M6.723 1.054a.5.5 0 0 1 .265.335C7.006 1.468 7.5 3.582 7.5 5c0 .95-.442 1.797-1.13 2.346c-.25.2-.37.418-.37.6v.486q0 .035.004.066c.034.248.157 1.169.272 2.124c.113.937.224 1.959.224 2.378a2 2 0 1 1-4 0c0-.42.111-1.44.224-2.378c.115-.955.238-1.876.272-2.124L3 8.432v-.486c0-.182-.12-.4-.37-.6A3 3 0 0 1 1.5 5c0-1.413.49-3.516.512-3.61A.505.505 0 0 1 2.505 1c.28 0 .507.227.507.507v2.998A.495.495 0 1 0 4 4.5v-3a.5.5 0 0 1 1 0v3.026a.495.495 0 0 0 .99-.021v-3c0-.279.226-.505.506-.505c.022 0 .12 0 .227.054M9 5.5A4.5 4.5 0 0 1 13.5 1a.5.5 0 0 1 .5.5v5.973l.019.177a262 262 0 0 1 .229 2.24c.123 1.256.252 2.664.252 3.11a2 2 0 1 1-4 0c0-.446.129-1.854.252-3.11c.063-.637.126-1.247.173-1.699l.02-.191H10a1 1 0 0 1-1-1z\"/></svg>', '2024-03-16 11:54:26', '2024-08-28 18:33:25'),
(28, 'decorators', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 50 50\"><g fill=\"none\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"2\"><path stroke=\"#306cfe\" d=\"M41.667 18.75h-4.584l-4.166 4.167h-5.834V18.75h-12.5v16.667h-4.166a4.167 4.167 0 1 0 0 8.333h31.25a2.083 2.083 0 0 0 2.083-2.083V20.833a2.083 2.083 0 0 0-2.083-2.083M14.583 12.5v22.917h-4.166a4.167 4.167 0 0 0-4.167 4.166V16.667a4.167 4.167 0 0 1 4.167-4.167z\"/><path stroke=\"#344054\" d=\"m43.146 9.77l-2.917-2.916a2.083 2.083 0 0 0-2.916 0l-10.23 10.23v5.833h5.834l10.229-10.23a2.083 2.083 0 0 0 0-2.916\"/></g></svg>', '2024-03-16 11:54:55', '2024-08-28 18:35:13'),
(29, 'fitness', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><g fill=\"none\" fill-rule=\"evenodd\"><path d=\"m12.594 23.258l-.012.002l-.071.035l-.02.004l-.014-.004l-.071-.036q-.016-.004-.024.006l-.004.01l-.017.428l.005.02l.01.013l.104.074l.015.004l.012-.004l.104-.074l.012-.016l.004-.017l-.017-.427q-.004-.016-.016-.018m.264-.113l-.014.002l-.184.093l-.01.01l-.003.011l.018.43l.005.012l.008.008l.201.092q.019.005.029-.008l.004-.014l-.034-.614q-.005-.019-.02-.022m-.715.002a.02.02 0 0 0-.027.006l-.006.014l-.034.614q.001.018.017.024l.015-.002l.201-.093l.01-.008l.003-.011l.018-.43l-.003-.012l-.01-.01z\"/><path fill=\"#73210c\" d=\"M11.879 5.5c-.955.117-1.86.456-2.242.77c-2.228 1.842-3.486 4.277-4.139 6.4a13.8 13.8 0 0 0-.562 2.763c-.034.383-.065.784-.007 1.167c.383.434.925.749 1.428 1.019c1.051.565 2.63 1.151 4.753 1.387c1.202.134 2.72.21 4.12.098c1.453-.117 2.567-.422 3.145-.885c.974-.779 1.22-1.688 1.131-2.484c-.095-.856-.576-1.58-1.06-1.903c-.835-.556-1.775-.612-2.661-.38c-.912.24-1.661.76-2.015 1.186a1 1 0 0 1-1.477.069c-.55-.55-1.485-.71-2.738.125a1 1 0 0 1-1.536-.636c-.286-1.434-.137-2.958.127-4.215c.266-1.259.666-2.342.96-2.928a1 1 0 0 1 1.788 0c.203.404.574.766 1.006.918c.335-.211.626-.506.862-.821c.434-.578.579-1.125.386-1.608c-.392-.14-.867-.091-1.27-.042Zm1.483-1.964c.484.093 1.191.335 1.532 1.017c.747 1.494.13 2.914-.532 3.797c-.432.576-.988 1.118-1.635 1.45c-.135.07-.41.2-.727.2c-.591 0-1.17-.269-1.645-.605c-.09.306-.177.642-.252.998a10.6 10.6 0 0 0-.24 2.078c1.053-.34 2.13-.304 3.058.22a6.5 6.5 0 0 1 2.357-1.173c1.3-.341 2.86-.294 4.277.65c1.015.677 1.784 1.952 1.939 3.347c.162 1.454-.343 3.044-1.87 4.266c-1.078.862-2.721 1.195-4.233 1.316c-1.565.126-3.218.04-4.501-.103c-2.378-.264-4.204-.928-5.48-1.613c-.837-.45-1.982-1.072-2.345-2.025c-.245-.646-.181-1.43-.121-2.102c.08-.881.276-1.981.643-3.173c.732-2.379 2.165-5.194 4.776-7.352c.803-.664 2.147-1.076 3.272-1.214c.58-.071 1.19-.081 1.727.021\"/></g></svg>', '2024-03-16 11:55:03', '2024-08-28 18:36:23'),
(30, 'influencers', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 48 48\"><g fill=\"none\" stroke-linejoin=\"round\" stroke-width=\"4\"><path fill=\"#2f88ff\" stroke=\"#000\" d=\"M39 6H9C7.34315 6 6 7.34315 6 9V39C6 40.6569 7.34315 42 9 42H39C40.6569 42 42 40.6569 42 39V9C42 7.34315 40.6569 6 39 6Z\"/><path stroke=\"#fff\" stroke-linecap=\"round\" d=\"M13.4398 29.8347L19.0967 24.1778L23.4847 28.5555L34 18.0001\"/><path stroke=\"#fff\" stroke-linecap=\"round\" d=\"M26 18H34V26\"/></g></svg>', '2024-03-16 11:55:25', '2024-08-02 18:11:29'),
(31, 'musicians', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 48 48\"><g fill=\"#e91e63\"><circle cx=\"19\" cy=\"33\" r=\"9\"/><path d=\"M24 6v27h4V14l11 3v-7z\"/></g></svg>', '2024-03-16 11:55:33', '2024-08-04 06:49:00'),
(32, 'writers', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"1em\" height=\"1em\" viewBox=\"0 0 48 48\"><path fill=\"none\" stroke=\"#c96522\" stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M25.527 35.414c-1.285 1.574-1.821 3.314-.939 5.396c2.624-.05 4.006-1.301 5.291-2.875l6.678-16.033zm15.382-10.991l2.537-3.108c-.796-1.75-2.354-2.788-4.352-2.521l-2.537 3.108c1.81.362 3.486 1.164 4.352 2.521l-11.03 13.512m-16.125-2.06c-.485 2.641-.41 3.608 1.157 6.592c.153-1.494.077-2.063.642-2.954c.993 1.162 1.95 2.138 3.662 2.12c-2.292-.943-1.438-2.263-1.286-5.759m-1.893-7.554l2.718-16.85h4.8c5.154 0 8.8 3.301 8.143 7.372l-.34 2.106C30.7 25.02 25.99 28.32 20.836 28.32zm8.118 5.413l-14.485.003c-2.386 0-4.169 1.65-4.169 3.712m37-9.477c0 3.192-2.57 5.76-5.76 5.76h-.777\"/><path fill=\"none\" stroke=\"#c96522\" stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M42.5 25.449V38.5a4 4 0 0 1-4 4H21.171m-8.748 0H9.5a4 4 0 0 1-4-4v-29a4 4 0 0 1 4-4h29a4 4 0 0 1 4 4v7.832\"/></svg>', '2024-03-16 11:56:19', '2024-08-28 18:37:27'),
(40, 'laravel', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 16 16\"><g fill=\"none\" stroke=\"#e31635\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path d=\"M12.51 5.49v3.29M9.64 3.89l2.86 1.6l2.74-1.53M6.5 12v3.5m-3-12l3-1.5\"/><path d=\"m3.5 10.5l6-3.5V3.5L12.51 2l2.99 1.5V7l-3.06 1.5L9.5 7\"/><path d=\"m.5 2l3-1.5l3 1.5v6.5\"/><path d=\"M.5 2v10.17l6 3.33l6.02-3.41V8.5L6.5 12.04l-3-1.54v-7z\"/></g></svg>', '2024-03-16 15:33:00', '2024-08-28 18:15:28'),
(41, 'wordpress', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 20 20\"><path fill=\"#1060e0\" d=\"M20 10c0-5.52-4.48-10-10-10S0 4.48 0 10s4.48 10 10 10s10-4.48 10-10M10 1.01c4.97 0 8.99 4.02 8.99 8.99s-4.02 8.99-8.99 8.99S1.01 14.97 1.01 10S5.03 1.01 10 1.01M8.01 14.82L4.96 6.61c.49-.03 1.05-.08 1.05-.08c.43-.05.38-1.01-.06-.99c0 0-1.29.1-2.13.1c-.15 0-.33 0-.52-.01c1.44-2.17 3.9-3.6 6.7-3.6c2.09 0 3.99.79 5.41 2.09c-.6-.08-1.45.35-1.45 1.42c0 .66.38 1.22.79 1.88c.31.54.5 1.22.5 2.21c0 1.34-1.27 4.48-1.27 4.48l-2.71-7.5c.48-.03.75-.16.75-.16c.43-.05.38-1.1-.05-1.08c0 0-1.3.11-2.14.11c-.78 0-2.11-.11-2.11-.11c-.43-.02-.48 1.06-.05 1.08l.84.08l1.12 3.04zm6.02 2.15L16.64 10s.67-1.69.39-3.81c.63 1.14.94 2.42.94 3.81c0 2.96-1.56 5.58-3.94 6.97M2.68 6.77L6.5 17.25c-2.67-1.3-4.47-4.08-4.47-7.25c0-1.16.2-2.23.65-3.23m7.45 4.53l2.29 6.25c-.75.27-1.57.42-2.42.42c-.72 0-1.41-.11-2.06-.3z\"/></svg>', '2024-03-16 15:33:00', '2024-08-28 18:15:56'),
(42, 'codeigniter', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 256 316\"><path fill=\"#dd4814\" d=\"M81.834 315.107c-20.223-8.935-33.964-28.183-35.767-50.228a70.92 70.92 0 0 1 32.181-55.763c-3.122 7.614-2.364 16.282 1.97 23.247a21.34 21.34 0 0 0 21.74 8.48c11.84-3.329 18.775-15.622 15.446-27.472a22.6 22.6 0 0 0-6.777-10.747A49.36 49.36 0 0 1 92.896 157.5a46.2 46.2 0 0 1 14.392-23.444c-5.32 14.185 9.683 28.182 19.75 35.068a523 523 0 0 1 51.537 35.274c17.997 14.185 27.808 36.388 26.272 59.103c-4.049 24.173-21.15 44.13-44.456 51.616c46.623-10.372 94.693-47.41 95.609-99.942c-.916-42.032-26.005-79.75-64.353-96.929h-1.704a15.7 15.7 0 0 1 1.182 6.511a24.5 24.5 0 0 0 0-4.334a21.2 21.2 0 0 1 0 5.122c-2.916 11.949-14.973 19.307-26.951 16.391c-4.787-1.182-9.062-3.87-12.136-7.752c-15.367-19.7 0-42.12 2.571-63.792A81.04 81.04 0 0 0 121.07 0c11.239 18.736-3.734 43.342-14.619 57.34c-10.904 13.997-26.665 24.429-39.51 36.643c-13.84 12.875-26.527 27.03-37.914 42.16C4.41 166.217-5.253 205.885 2.755 243.907c10.984 36.644 41.441 64.176 79.001 71.318h.207z\"/></svg>', '2024-03-16 15:33:00', '2024-08-28 18:16:24'),
(44, 'php_model', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 32 32\"><defs><radialGradient id=\"vscodeIconsFolderTypePhpOpened0\" cx=\"-10.216\" cy=\"31.126\" r=\"13.788\" gradientTransform=\"translate(26.52 -9.307)\" gradientUnits=\"userSpaceOnUse\"><stop offset=\"0\" stop-color=\"#fff\"/><stop offset=\".5\" stop-color=\"#4c6b96\"/><stop offset=\"1\" stop-color=\"#231f20\"/></radialGradient></defs><path fill=\"#7a9edd\" d=\"M27.4 5.5h-9.2l-2.1 4.2H4.3v16.8h25.2v-21Zm0 18.7H6.6V11.8h20.8Zm0-14.5h-8.2l1-2.1h7.1v2.1Z\"/><path fill=\"#7a9edd\" d=\"M25.7 13.7H.5l3.8 12.8h25.2z\"/><ellipse cx=\"20.5\" cy=\"25.4\" fill=\"url(#vscodeIconsFolderTypePhpOpened0)\" rx=\"10.5\" ry=\"5.523\"/><ellipse cx=\"20.5\" cy=\"25.4\" fill=\"#6280b6\" rx=\"10.09\" ry=\"5.113\"/><path fill=\"#fff\" d=\"m22.544 27.053l.5-2.576a1.314 1.314 0 0 0-.279-1.289a2.2 2.2 0 0 0-1.5-.394H20.4l.248-1.276a.164.164 0 0 0-.161-.2h-1.2a.164.164 0 0 0-.161.133l-.526 2.738a1.538 1.538 0 0 0-.358-.79a2.087 2.087 0 0 0-1.65-.605h-2.32a.164.164 0 0 0-.161.133l-1.076 5.535a.164.164 0 0 0 .161.2H14.4a.164.164 0 0 0 .161-.133l.26-1.339h.9a3.875 3.875 0 0 0 1.176-.152a2.3 2.3 0 0 0 .863-.517a2.654 2.654 0 0 0 .51-.633l-.215 1.106a.164.164 0 0 0 .161.2h1.2a.164.164 0 0 0 .161-.133l.59-3.038h.821c.35 0 .452.07.48.1s.078.124.019.427l-.476 2.449a.164.164 0 0 0 .161.2h1.215a.164.164 0 0 0 .157-.146M17 24.924a1.312 1.312 0 0 1-.421.819a1.628 1.628 0 0 1-.986.241h-.534L15.443 24h.691c.508 0 .712.109.794.2a.886.886 0 0 1 .072.724M27.66 23.4a2.087 2.087 0 0 0-1.65-.605h-2.319a.164.164 0 0 0-.161.133l-1.076 5.535a.164.164 0 0 0 .161.2h1.206a.164.164 0 0 0 .161-.133l.26-1.339h.9a3.875 3.875 0 0 0 1.176-.152a2.3 2.3 0 0 0 .863-.517a2.569 2.569 0 0 0 .807-1.445a1.884 1.884 0 0 0-.328-1.677m-1.251 1.525a1.312 1.312 0 0 1-.421.819a1.628 1.628 0 0 1-.986.241h-.534L24.854 24h.691c.508 0 .712.109.794.2a.886.886 0 0 1 .07.724Z\"/><path fill=\"#000004\" d=\"M16.134 23.831a1.234 1.234 0 0 1 .916.254a1 1 0 0 1 .109.871a1.459 1.459 0 0 1-.482.917a1.771 1.771 0 0 1-1.086.275h-.733l.45-2.317ZM13.2 28.493h1.2l.286-1.472h1.034a3.7 3.7 0 0 0 1.125-.144a2.13 2.13 0 0 0 .8-.482a2.4 2.4 0 0 0 .757-1.356a1.723 1.723 0 0 0-.289-1.533a1.926 1.926 0 0 0-1.526-.549h-2.315Zm6.091-7.007h1.2l-.291 1.472h1.066a2.075 2.075 0 0 1 1.388.351a1.161 1.161 0 0 1 .229 1.137l-.5 2.576h-1.215l.476-2.449a.665.665 0 0 0-.06-.57a.841.841 0 0 0-.6-.152h-.956l-.616 3.171h-1.2Zm6.254 2.345a1.234 1.234 0 0 1 .916.254a1 1 0 0 1 .109.871a1.459 1.459 0 0 1-.482.917a1.771 1.771 0 0 1-1.088.275h-.733l.45-2.317Zm-2.938 4.662h1.206l.286-1.472h1.033a3.7 3.7 0 0 0 1.125-.144a2.13 2.13 0 0 0 .8-.482a2.4 2.4 0 0 0 .757-1.356a1.723 1.723 0 0 0-.289-1.533A1.926 1.926 0 0 0 26 22.958h-2.317Z\"/></svg>', '2024-03-16 15:34:24', '2024-08-28 18:16:49'),
(46, 'dashboard', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><g fill=\"none\" stroke=\"#c7811f\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"2\"><path d=\"M11.175 11.178a2 2 0 1 0 2.653 2.634M14.5 10.5l1-1\"/><path d=\"M8.621 4.612a9 9 0 0 1 11.721 11.72m-1.516 2.488A9 9 0 0 1 17.6 20H6.4a9 9 0 0 1-.268-13.87M3 3l18 18\"/></g></svg>', '2024-03-16 15:37:36', '2024-08-03 19:38:04'),
(47, 'admin', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#c96522\" d=\"m16 7.58l-5.5-2.4L5 7.58v3.6c0 3.5 2.33 6.74 5.5 7.74c.25-.08.49-.2.73-.3c-.15-.51-.23-1.06-.23-1.62c0-2.97 2.16-5.43 5-5.91z\" opacity=\"0.3\"/><path fill=\"#c96522\" d=\"M17 13c-2.21 0-4 1.79-4 4s1.79 4 4 4s4-1.79 4-4s-1.79-4-4-4m0 1.38c.62 0 1.12.51 1.12 1.12s-.51 1.12-1.12 1.12s-1.12-.51-1.12-1.12s.5-1.12 1.12-1.12m0 5.37c-.93 0-1.74-.46-2.24-1.17c.05-.72 1.51-1.08 2.24-1.08s2.19.36 2.24 1.08c-.5.71-1.31 1.17-2.24 1.17\" opacity=\"0.3\"/><circle cx=\"17\" cy=\"15.5\" r=\"1.12\" fill=\"#c96522\"/><path fill=\"#c96522\" d=\"M18 11.09V6.27L10.5 3L3 6.27v4.91c0 4.54 3.2 8.79 7.5 9.82c.55-.13 1.08-.32 1.6-.55A5.97 5.97 0 0 0 17 23c3.31 0 6-2.69 6-6c0-2.97-2.16-5.43-5-5.91M11 17c0 .56.08 1.11.23 1.62c-.24.11-.48.22-.73.3c-3.17-1-5.5-4.24-5.5-7.74v-3.6l5.5-2.4l5.5 2.4v3.51c-2.84.48-5 2.94-5 5.91m6 4c-2.21 0-4-1.79-4-4s1.79-4 4-4s4 1.79 4 4s-1.79 4-4 4\"/><path fill=\"#c96522\" d=\"M17 17.5c-.73 0-2.19.36-2.24 1.08c.5.71 1.32 1.17 2.24 1.17s1.74-.46 2.24-1.17c-.05-.72-1.51-1.08-2.24-1.08\"/></svg>', '2024-03-16 15:37:36', '2024-08-28 18:39:16'),
(48, 'watercolors', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"currentColor\" d=\"m12 3.77l-.75.84S9.97 6.06 8.68 7.94S6 12.07 6 14.23a6 6 0 0 0 6 6a6 6 0 0 0 6-6c0-2.16-1.39-4.41-2.68-6.29s-2.57-3.33-2.57-3.33zm0 3.13c.44.52.84.95 1.68 2.17c1.21 1.76 2.32 4 2.32 5.16c0 2.22-1.78 4-4 4s-4-1.78-4-4c0-1.16 1.11-3.4 2.32-5.16c.84-1.22 1.24-1.65 1.68-2.17\"/></svg>', '2024-03-17 19:37:19', '2024-08-02 12:09:05'),
(49, 'south-america', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#daa5ea\" d=\"M12 22q-2.075 0-3.9-.788t-3.175-2.137T2.788 15.9T2 12t.788-3.9t2.137-3.175T8.1 2.788T12 2t3.9.788t3.175 2.137T21.213 8.1T22 12t-.788 3.9t-2.137 3.175t-3.175 2.138T12 22m0-2l-.7-.7q-.15-.15-.225-.325T11 18.6V13q-.825 0-1.412-.587T9 11v-1L5.875 6.875Q5 7.925 4.5 9.225T4 12q0 3.35 2.325 5.675T12 20m1-.05q2.975-.375 4.988-2.625T20 12q0-3.325-2.337-5.663T12 4q-1.1 0-2.113.288T8 5.075V7h3.55q.45 0 .863.2t.687.55l1.4 1.75H16q.425 0 .713.288T17 10.5v1.05q0 .225-.062.425t-.188.4L13 18z\"/></svg>', '2024-03-17 19:42:08', '2025-01-03 14:07:11'),
(50, 'north-america', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 32 32\"><path fill=\"#daa5ea\" fill-rule=\"evenodd\" d=\"M16 1C7.716 1 1 7.716 1 16s6.716 15 15 15s15-6.716 15-15S24.284 1 16 1m-.136 2c-1.726.018-3.37.372-4.873 1h1.51c.28 0 .51.23.5.51s.25.49.52.49h.17c.19 0 .36-.11.44-.28l.46-.91A1.47 1.47 0 0 1 15.863 3M5.752 8A12.94 12.94 0 0 0 3 16c0 7.18 5.82 13 13 13s13-5.82 13-13c0-3.088-1.076-5.924-2.874-8.154a2.6 2.6 0 0 1-.756-.426l-3.83-3.06c-.29-.23-.66-.36-1.03-.36h-1.44c-.4 0-.59.48-.3.76l.11.11c.08.08.19.13.31.13h.18c.34 0 .62.27.63.61c.01.24.09.48.27.65l.59.59c.09.1.22.15.35.15h1.29c.28 0 .5.22.5.5s-.22.5-.5.5h-1.22c-.17 0-.34.09-.42.24l-2.64 4.4c-.15.24-.22.51-.22.79c0 .32-.26.57-.58.57h-.23a.19.19 0 0 1-.19-.19c0-.45-.36-.81-.81-.81h-.93c-.7 0-1.26.56-1.26 1.26v.87c0 .48.39.87.87.89h.11L15 16h.48c.28 0 .52-.13.52-.41v-.09c0-.28.22-.5.5-.5s.5.22.5.5v.09c0 .23.19.41.41.41h.17c.23 0 .41.19.41.41c0 .32.26.59.59.59h2.62c.52 0 1.03.12 1.5.35l.49.24c.49.25.8.75.8 1.3v.52c0 .32.26.58.58.58h.24c.65 0 1.18.53 1.18 1.19v.39c0 .28-.1.55-.27.76l-4.52 5.43c-.13.15-.32.24-.52.24c-.38 0-.68-.3-.68-.68v-3.65c0-.37-.3-.67-.67-.67c-.73 0-1.33-.6-1.33-1.33v-2.05c0-.34.27-.61.61-.61c.21 0 .39-.17.39-.39v-.12c0-.28-.22-.5-.5-.5h-1.36c-.09 0-.18-.02-.26-.06l-2.788-.93a1.4 1.4 0 0 1-.342-.08l-1.87-.64c-.48-.16-.8-.61-.8-1.12v-.47c0-.32-.12-.63-.34-.86l-.94-.99c-.51-.54-.8-1.26-.8-2v-.97C9 8.84 8.16 8 7.12 8zM18.5 8c.28 0 .5-.22.5-.5s-.22-.5-.5-.5s-.5-.22-.5-.5s-.22-.5-.5-.5s-.5.22-.5.5s-.22.5-.5.5h-1c-.28 0-.5.22-.5.5s.22.5.5.5h1c.28 0 .5.22.5.5s.22.5.5.5s.5-.22.5-.5s.22-.5.5-.5\" clip-rule=\"evenodd\"/></svg>', '2024-03-17 19:42:25', '2025-01-03 14:12:35'),
(51, 'belongsTo', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#daa5ea\" d=\"M22 15v2h-1v2h-2v-2h-1v2h-2v-2h-5V9H7v2H5V9H2V7h3V5h2v2h6v8h3v-2h2v2h1v-2h2v2Z\"/></svg>', '2024-03-17 23:08:37', '2025-01-03 14:09:03'),
(52, 'belongsToMany', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#daa5ea\" d=\"M22 13v6h-1l-2-2v2h-2v-2h-6V9H7v2H5V9l-2 2H2V5h1l2 2V5h2v2h6v8h4v-2h2v2l2-2Z\"/></svg>', '2024-03-17 23:09:05', '2025-01-03 14:08:38'),
(53, 'model', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 32 32\"><path fill=\"#7baddb\" d=\"M27.4 5.5h-9.2l-2.1 4.2H4.3v16.8h25.2v-21Zm0 18.7H6.6V11.8h20.8Zm0-14.5h-8.2l1-2.1h7.1v2.1Z\"/><path fill=\"#7baddb\" d=\"M25.7 13.7H.5l3.8 12.8h25.2z\"/><path fill=\"#b2cde5\" d=\"M20.62 10v5.999l-5.188-3\"/><path fill=\"#b2cde5\" d=\"m25.807 12.999l-5.187 3V10\"/><path fill=\"#4c89c3\" d=\"M25.807 12.999V19l-5.187-3.001\"/><path fill=\"#0057a9\" d=\"M15.432 12.999V19l5.188-3.001m0 0V22l-5.188-3\"/><path fill=\"#4c89c3\" d=\"M20.622 15.999L20.62 22l5.187-2.998\"/><path fill=\"#b2cde5\" d=\"M25.807 19v6l-5.187-3\"/><path fill=\"#b2cde5\" d=\"M15.432 19v6l5.188-3\"/><path fill=\"#4c89c3\" d=\"M20.62 22v6l-5.188-3\"/><path fill=\"#0057a9\" d=\"m20.622 22l-.002 6l5.187-2.998\"/><path fill=\"#b2cde5\" d=\"M15.432 19v6l-5.187-3\"/><path fill=\"#0057a9\" d=\"M10.245 22v6l5.187-3m0 0v6l-5.187-3\"/><path fill=\"#4c89c3\" d=\"m15.434 25l-.002 6l5.188-2.998\"/><path fill=\"#b2cde5\" d=\"M30.995 22.002L25.807 25l.003-6\"/><path fill=\"#4c89c3\" d=\"M30.995 22v6l-5.188-3\"/><path fill=\"#0057a9\" d=\"M25.807 25v6l-5.187-3\"/><path fill=\"#4c89c3\" d=\"m25.81 25l-.003 6l5.188-2.998\"/></svg>', '2024-03-17 23:09:14', '2024-08-28 18:17:18'),
(54, 'php', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 32 32\"><path fill=\"#8993be\" d=\"M7.6 13.791a2.352 2.352 0 0 1 1.745.483a1.916 1.916 0 0 1 .207 1.66a2.78 2.78 0 0 1-.918 1.748a3.375 3.375 0 0 1-2.07.529h-1.4l.86-4.411ZM2 22.677h2.3l.545-2.8h1.967a7.049 7.049 0 0 0 2.144-.277a4.06 4.06 0 0 0 1.53-.918A4.585 4.585 0 0 0 11.93 16.1a3.288 3.288 0 0 0-.55-2.922a3.671 3.671 0 0 0-2.91-1.049H4.057ZM13.617 9.323H15.9l-.553 2.8h2.031a3.956 3.956 0 0 1 2.645.669a2.213 2.213 0 0 1 .436 2.167l-.954 4.909h-2.31l.908-4.667a1.267 1.267 0 0 0-.114-1.086a1.6 1.6 0 0 0-1.144-.286h-1.823l-1.175 6.044h-2.288Zm11.922 4.468a2.352 2.352 0 0 1 1.745.483a1.916 1.916 0 0 1 .207 1.66a2.78 2.78 0 0 1-.918 1.748a3.375 3.375 0 0 1-2.074.529H23.1l.858-4.416Zm-5.6 8.886h2.3l.545-2.8h1.968A7.049 7.049 0 0 0 26.9 19.6a4.06 4.06 0 0 0 1.53-.918a4.585 4.585 0 0 0 1.439-2.582a3.288 3.288 0 0 0-.55-2.922a3.671 3.671 0 0 0-2.909-1.046h-4.42Z\"/></svg>', '2024-03-18 06:39:52', '2024-08-28 18:17:43'),
(55, 'css', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 16 16\"><path fill=\"#0ca6e9\" fill-rule=\"evenodd\" d=\"M14 4.5V14a2 2 0 0 1-2 2h-1v-1h1a1 1 0 0 0 1-1V4.5h-2A1.5 1.5 0 0 1 9.5 3V1H4a1 1 0 0 0-1 1v9H2V2a2 2 0 0 1 2-2h5.5zM3.397 14.841a1.13 1.13 0 0 0 .401.823q.195.162.478.252q.284.091.665.091q.507 0 .859-.158q.354-.158.539-.44q.187-.284.187-.656q0-.336-.134-.56a1 1 0 0 0-.375-.357a2 2 0 0 0-.566-.21l-.621-.144a1 1 0 0 1-.404-.176a.37.37 0 0 1-.144-.299q0-.234.185-.384q.188-.152.512-.152q.214 0 .37.068a.6.6 0 0 1 .246.181a.56.56 0 0 1 .12.258h.75a1.1 1.1 0 0 0-.2-.566a1.2 1.2 0 0 0-.5-.41a1.8 1.8 0 0 0-.78-.152q-.439 0-.776.15q-.337.149-.527.421q-.19.273-.19.639q0 .302.122.524q.124.223.352.367q.228.143.539.213l.618.144q.31.073.463.193a.39.39 0 0 1 .152.326a.5.5 0 0 1-.085.29a.56.56 0 0 1-.255.193q-.167.07-.413.07q-.175 0-.32-.04a.8.8 0 0 1-.248-.115a.58.58 0 0 1-.255-.384zM.806 13.693q0-.373.102-.633a.87.87 0 0 1 .302-.399a.8.8 0 0 1 .475-.137q.225 0 .398.097a.7.7 0 0 1 .272.26a.85.85 0 0 1 .12.381h.765v-.072a1.33 1.33 0 0 0-.466-.964a1.4 1.4 0 0 0-.489-.272a1.8 1.8 0 0 0-.606-.097q-.534 0-.911.223q-.375.222-.572.632q-.195.41-.196.979v.498q0 .568.193.976q.197.407.572.626q.375.217.914.217q.439 0 .785-.164t.55-.454a1.27 1.27 0 0 0 .226-.674v-.076h-.764a.8.8 0 0 1-.118.363a.7.7 0 0 1-.272.25a.9.9 0 0 1-.401.087a.85.85 0 0 1-.478-.132a.83.83 0 0 1-.299-.392a1.7 1.7 0 0 1-.102-.627zM6.78 15.29a1.2 1.2 0 0 1-.111-.449h.764a.58.58 0 0 0 .255.384q.106.073.25.114q.142.041.319.041q.245 0 .413-.07a.56.56 0 0 0 .255-.193a.5.5 0 0 0 .085-.29a.39.39 0 0 0-.153-.326q-.152-.12-.463-.193l-.618-.143a1.7 1.7 0 0 1-.539-.214a1 1 0 0 1-.351-.367a1.1 1.1 0 0 1-.123-.524q0-.366.19-.639q.19-.272.527-.422t.777-.149q.456 0 .779.152q.326.153.5.41q.18.255.2.566h-.75a.56.56 0 0 0-.12-.258a.6.6 0 0 0-.246-.181a.9.9 0 0 0-.37-.068q-.324 0-.512.152a.47.47 0 0 0-.184.384q0 .18.143.3a1 1 0 0 0 .404.175l.621.143q.326.075.566.211t.375.358t.135.56q0 .37-.188.656a1.2 1.2 0 0 1-.539.439q-.351.158-.858.158q-.381 0-.665-.09a1.4 1.4 0 0 1-.478-.252a1.1 1.1 0 0 1-.29-.375\"/></svg>', '2024-03-18 06:55:26', '2024-08-28 18:18:10'),
(56, 'filament', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#e11432\" d=\"M16.5 20.475v-3h-3v-1h3v-3h1v3h3v1h-3v3zM3.5 17.5v-1h1v1zm3 0v-1h5.017q-.017.265-.004.505q.012.24.03.495zm-3-4v-1h1v1zm3 0v-1h7.304q-.287.208-.538.458q-.25.25-.485.542zm-3-4v-1h1v1zm3 0v-1h12v1zm-3-4v-1h1v1zm3 0v-1h12v1z\"/></svg>', '2024-03-18 09:00:34', '2024-08-28 18:18:34'),
(57, 'controller', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><g fill=\"#daa5ea\"><path d=\"m14.828 6.343l1.415-1.414L12 .686L7.757 4.93l1.415 1.414L12 3.515zm-9.899 9.9l1.414-1.415L3.515 12l2.828-2.828L4.93 7.757L.686 12zm2.828 2.828L12 23.314l4.243-4.243l-1.415-1.414L12 20.485l-2.828-2.828zm9.9-9.899L20.485 12l-2.828 2.828l1.414 1.415L23.314 12L19.07 7.757z\"/><path fill-rule=\"evenodd\" d=\"M12 8a4 4 0 1 1 0 8a4 4 0 0 1 0-8m0 2a2 2 0 1 1 0 4a2 2 0 0 1 0-4\" clip-rule=\"evenodd\"/></g></svg>', '2024-03-19 18:21:16', '2025-01-03 14:09:43'),
(58, 'view', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><g fill=\"#daa5ea\"><path d=\"m14.828 6.343l1.415-1.414L12 .686L7.757 4.93l1.415 1.414L12 3.515zm-9.899 9.9l1.414-1.415L3.515 12l2.828-2.828L4.93 7.757L.686 12zm2.828 2.828L12 23.314l4.243-4.243l-1.415-1.414L12 20.485l-2.828-2.828zm9.9-9.899L20.485 12l-2.828 2.828l1.414 1.415L23.314 12L19.07 7.757z\"/><path fill-rule=\"evenodd\" d=\"M12 8a4 4 0 1 1 0 8a4 4 0 0 1 0-8m0 2a2 2 0 1 1 0 4a2 2 0 0 1 0-4\" clip-rule=\"evenodd\"/></g></svg>', '2024-03-19 18:21:41', '2025-01-03 14:10:31'),
(59, 'layout', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><g fill=\"none\"><path d=\"m12.593 23.258l-.011.002l-.071.035l-.02.004l-.014-.004l-.071-.035q-.016-.005-.024.005l-.004.01l-.017.428l.005.02l.01.013l.104.074l.015.004l.012-.004l.104-.074l.012-.016l.004-.017l-.017-.427q-.004-.016-.017-.018m.265-.113l-.013.002l-.185.093l-.01.01l-.003.011l.018.43l.005.012l.008.007l.201.093q.019.005.029-.008l.004-.014l-.034-.614q-.005-.018-.02-.022m-.715.002a.02.02 0 0 0-.027.006l-.006.014l-.034.614q.001.018.017.024l.015-.002l.201-.093l.01-.008l.004-.011l.017-.43l-.003-.012l-.01-.01z\"/><path fill=\"#daa5ea\" d=\"M9 10v11H5a2 2 0 0 1-1.995-1.85L3 19v-9zm12 0v9a2 2 0 0 1-1.85 1.995L19 21h-8V10zm-2-7a2 2 0 0 1 2 2v3H3V5a2 2 0 0 1 2-2z\"/></g></svg>', '2024-03-19 18:21:53', '2025-01-03 14:14:13'),
(60, 'vaixells', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 14 14\"><path fill=\"none\" stroke=\"#daa5ea\" stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M13.5 9.5H.5l1 2.7a2 2 0 0 0 1.88 1.3h7.22a2 2 0 0 0 1.88-1.3zm-7 0v-9m0 0l-5 6h5m2-4l3.5 4H8.5\"/></svg>', '2024-03-19 18:28:55', '2025-01-03 14:15:13'),
(62, 'tailwind', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 128 128\"><path fill=\"#38bdf8\" d=\"M64.004 25.602c-17.067 0-27.73 8.53-32 25.597c6.398-8.531 13.867-11.73 22.398-9.597c4.871 1.214 8.352 4.746 12.207 8.66C72.883 56.629 80.145 64 96.004 64c17.066 0 27.73-8.531 32-25.602q-9.6 12.803-22.399 9.602c-4.87-1.215-8.347-4.746-12.207-8.66c-6.27-6.367-13.53-13.738-29.394-13.738M32.004 64c-17.066 0-27.73 8.531-32 25.602Q9.603 76.799 22.402 80c4.871 1.215 8.352 4.746 12.207 8.66c6.274 6.367 13.536 13.738 29.395 13.738c17.066 0 27.73-8.53 32-25.597q-9.6 12.797-22.399 9.597c-4.87-1.214-8.347-4.746-12.207-8.66C55.128 71.371 47.868 64 32.004 64m0 0\"/></svg>', '2024-03-20 07:36:26', '2024-08-28 18:19:03'),
(63, 'uikit', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 256 297\"><path fill=\"#2396f3\" d=\"M174.656 28.438L125.717 0L74.646 31.723l49.621 27.414zm23.403 12.245L147.52 71.424l57.28 33.109V192l-77.248 43.904L51.2 192v-68.267L0 98.304v123.563l125.717 74.666L256 222.422V74.155z\"/></svg>', '2024-03-20 07:36:40', '2024-08-28 18:19:32'),
(64, 'gallery', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 20 20\"><path fill=\"#c26814\" d=\"M16 4h1.96c.57 0 1.04.47 1.04 1.04v12.92c0 .57-.47 1.04-1.04 1.04H5.04C4.47 19 4 18.53 4 17.96V16H2.04C1.47 16 1 15.53 1 14.96V2.04C1 1.47 1.47 1 2.04 1h12.92c.57 0 1.04.47 1.04 1.04zM3 14h11V3H3zm5-8.5C8 4.67 7.33 4 6.5 4S5 4.67 5 5.5S5.67 7 6.5 7S8 6.33 8 5.5m2 4.5s1-5 3-5v8H4V7c2 0 2 3 2 3s.33-2 2-2s2 2 2 2m7 7V6h-1v8.96c0 .57-.47 1.04-1.04 1.04H6v1z\"/></svg>', '2024-03-20 07:38:58', '2024-08-28 18:19:52'),
(65, 'cmd', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 16 16\"><g fill=\"#020e22\"><path d=\"m10.875 7l2.008 5h-.711l-2.008-5zm-5.125.594q-.414 0-.75.125a1.54 1.54 0 0 0-.578.375q-.243.25-.375.61a2.4 2.4 0 0 0-.133.827q0 .43.117.781t.352.594q.234.243.57.383q.337.14.766.133a2.6 2.6 0 0 0 .992-.195l.125.484a2 2 0 0 1-.492.148a4.4 4.4 0 0 1-.75.07a2.6 2.6 0 0 1-.914-.156a2.2 2.2 0 0 1-.742-.453a1.9 1.9 0 0 1-.485-.742a3.2 3.2 0 0 1-.18-1.023q0-.547.18-1t.5-.782q.32-.328.774-.507a2.7 2.7 0 0 1 1-.18q.445 0 .718.07q.274.07.399.14l-.149.493a2 2 0 0 0-.406-.14a2.4 2.4 0 0 0-.539-.055M8 8h1v1H8zm0 2h1v1H8z\"/><path d=\"M15.5 1H.5l-.5.5v13l.5.5h15l.5-.5v-13zM15 14H1V5h14zm0-10H1V2h14z\"/></g></svg>', '2024-03-20 08:23:38', '2024-08-28 18:20:23'),
(66, 'edit', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"none\" stroke=\"#c26814\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"2\" d=\"m14.304 4.844l2.852 2.852M7 7H4a1 1 0 0 0-1 1v10a1 1 0 0 0 1 1h11a1 1 0 0 0 1-1v-4.5m2.409-9.91a2.017 2.017 0 0 1 0 2.853l-6.844 6.844L8 14l.713-3.565l6.844-6.844a2.015 2.015 0 0 1 2.852 0Z\"/></svg>', '2024-03-20 10:58:23', '2024-08-28 18:20:55'),
(67, 'essential', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 32 32\"><path fill=\"#e11432\" d=\"M8 4v4H4V4zM2 2v8h8V2zm16 5v4h-4V7zm-6-2v8h8V5zM8 16v4H4v-4zm-6-2v8h8v-8z\"/><path fill=\"#e11432\" d=\"M22 10v6h-6v6h-6v8h20V10Zm-4 8h4v4h-4Zm-2 10h-4v-4h4Zm6 0h-4v-4h4Zm6 0h-4v-4h4Zm0-6h-4v-4h4Zm-4-6v-4h4v4Z\"/></svg>', '2024-03-20 11:05:38', '2024-08-28 18:21:20'),
(68, 'navbar', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><g fill=\"none\" stroke=\"#daa5ea\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"2\"><path d=\"M4 18V6a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2m0-9h16\"/><path d=\"m10 14l2 2l2-2\"/></g></svg>', '2024-03-20 11:12:10', '2025-01-03 14:15:39'),
(69, 'file', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#daa5ea\" d=\"M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8zm4 18H6V4h7v5h5z\"/></svg>', '2024-03-20 11:19:08', '2025-01-03 14:16:34');
INSERT INTO `tags` (`id`, `name`, `svg`, `created_at`, `updated_at`) VALUES
(70, 'lightpainting', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 128 128\"><ellipse cx=\"64\" cy=\"116.87\" fill=\"#424242\" rx=\"12.09\" ry=\"7.13\"/><path fill=\"#ffd600\" d=\"M64 4C42.92 4 25.82 19.67 25.82 38.99c0 5.04 1.52 10.43 3.75 15.18c3.13 6.68 6.54 11.62 7.54 13.44c2.78 5.06 2.38 10.39 3.15 13.73c1.45 6.24 5.79 8.5 23.73 8.5s21.8-2.15 23.41-7.9c1.1-3.91.03-8.18 2.8-13.23c1-1.82 5.07-7.85 8.21-14.54c2.23-4.75 3.75-10.14 3.75-15.18C102.18 19.67 85.08 4 64 4\"/><ellipse cx=\"64\" cy=\"86.13\" fill=\"#b26500\" rx=\"21.94\" ry=\"4.46\"/><ellipse cx=\"64\" cy=\"86.13\" fill=\"#b26500\" rx=\"21.94\" ry=\"4.46\"/><ellipse cx=\"64\" cy=\"86.13\" fill=\"#ffa000\" rx=\"15.99\" ry=\"2.06\"/><g fill=\"none\" stroke-miterlimit=\"10\" stroke-width=\"2\"><path stroke=\"#b26500\" d=\"M53.3 56.77c-.62 1.56-2.23 4.77-1.39 6.21c1.95 3.35 6.6 4.55 6.6 7.63c0 4.7-3.42 19.93-3.42 19.93m18.94-34.33s2.24 4.8 1.29 6.95c-.71 1.6-4.98 4.18-5.53 4.61c-2.55 2 .84 22.78.84 22.78\"/><path stroke=\"#fff\" d=\"M53.3 56.77c3.44-6.8 5.21-22.32.84-21.53c-7.37 1.33 1.71 26.83 6.18 23.9s10.01-23.85 3.21-23.93s.46 26.66 5.08 23.69c3.65-2.35 12.56-23.66 5.24-23.66c-6.23 0 .19 20.97.19 20.97\"/></g><path fill=\"#82aec0\" d=\"M85.89 87.06S80.13 89.84 64 89.84s-21.89-2.78-21.89-2.78s-.36 5.14.83 7.47c1.43 2.8 2.53 3.77 2.53 3.77l.6 2.85l-.24.75c-.31.98-.09 2.06.6 2.83l.52.58l.58 2.74l-.2.55c-.38 1.05-.12 2.22.66 3.02l.38.39l.47 2.24s2.38 5.08 15.16 5.08s15.16-5.08 15.16-5.08l.04-.19l.26-.26c.52-.51.69-1.27.44-1.95l-.15-.39l.62-2.96l1.09-1.15c.54-.57.66-1.41.31-2.11l-.5-.99l.63-2.97l.4-.31c.59-.65.6-1.63.34-2.3c-.2-.53-.04-1.13.37-1.52c.63-.6 1.44-1.51 2.04-2.64c1.23-2.29.84-7.45.84-7.45\"/><path fill=\"#2f7889\" d=\"m45.47 98.3l.54 2.87c5.82-.03 13.59.26 28.5-2.11c2.69-.61 5.92-1.82 2.35-1.32c0-.01-13.69 1.3-31.39.56m2 9.77c6.44-.11 19.6-.75 33.74-3.82l.63-2.97c-14.79 3.36-28.7 3.96-34.95 4.04zm32.84.42c-13.09 2.84-25.34 3.57-31.97 3.73l.43 2.04s.21 6.33 15.16 6.33s15.16-6.33 15.16-6.33s-6.38 1.82-14.23.93a.63.63 0 0 1-.01-1.26c4.69-.62 10.29-1.54 14.84-2.48z\"/><path fill=\"none\" stroke=\"#82aec0\" stroke-linecap=\"round\" stroke-miterlimit=\"10\" stroke-width=\"4\" d=\"M42.18 87.06s6.46 2.78 21.76 2.78s21.88-2.78 21.88-2.78\"/><path fill=\"#ffff8d\" d=\"M49.88 10.32c3.91-.96 8-.48 10.8 2.92c.79.96 1.4 2.1 1.54 3.34c.28 2.39-1.2 4.65-2.96 6.31c-5.02 4.74-12.15 7.04-15.39 13.58c-.76 1.53-1.36 3.18-2.52 4.43s-3.09 2.01-4.6 1.21c-.8-.42-1.35-1.21-1.8-2c-2.84-5.06-2.63-11.51-.13-16.75c2.75-5.74 8.78-11.5 15.06-13.04\"/><path fill=\"#ffd600\" d=\"M46.45 91.93c-.88-.4-.53-1.72.43-1.65c3.22.25 8.7.56 15.95.56c7.64 0 14.36-.57 18.28-.99c.97-.1 1.34 1.23.45 1.64c-3.02 1.42-8.55 3.04-18.03 3.04c-9.25 0-14.35-1.37-17.08-2.6\"/><path fill=\"#94d1e0\" d=\"M51.94 102.03c-.67.24-1.36.57-1.7 1.19c-.12.23-.19.49-.14.75c.08.38.43.65.78.82c.7.34 1.49.43 2.26.44c1.59.02 3.17-.28 4.74-.58c.47-.09.95-.18 1.37-.41s.78-.62.85-1.09c.1-.63-.35-1.24-.9-1.54c-1.9-1.05-5.34-.27-7.26.42m1.49 6.59c-.67.24-1.36.57-1.7 1.19c-.12.23-.19.49-.14.75c.08.38.43.65.78.82c.7.34 1.49.43 2.26.44c1.59.02 3.17-.28 4.74-.58c.47-.09.95-.18 1.37-.41s.78-.62.85-1.09c.1-.63-.35-1.24-.9-1.54c-1.9-1.04-5.35-.26-7.26.42\"/><path fill=\"#ffff8d\" d=\"M50.01 84.2c.91.09 1.87.01 2.64-.48s1.26-1.49.95-2.35c-.16-.45-.51-.81-.85-1.15c-.75-.74-1.5-1.48-2.24-2.22c-.83-.83-1.66-1.65-2.56-2.4c-1.39-1.16-3.26-2.25-5.09-1.4c-1.56.72-1.93 2.14-1.24 3.63c1.47 3.13 4.89 6.01 8.39 6.37\"/></svg>', '2024-03-20 11:27:33', '2024-08-03 19:21:32'),
(72, 'spark', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#daa5ea\" d=\"M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8zm4 18H6V4h7v5h5z\"/></svg>', '2024-03-25 17:14:05', '2025-01-03 14:17:06'),
(73, 'framework', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#147ee1\" d=\"M12.9 4.22C18.73 6.84 20 2 20 2s-1.11 6.07-6.21 8.55c-1.04.51-1.69.78-1.69.78L3.73 7.25l8.37-3.43s-.2-.06.8.4M11.12 22l-7.79-4.22V9.07l7.79 3.97zm1.76 0l7.8-4.22V9.07l-7.8 3.97z\"/></svg>', '2024-04-23 16:23:27', '2024-08-28 18:21:50'),
(74, 'groceryCrud', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><g fill=\"none\" stroke=\"#0c45ed\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"2\"><path d=\"M12 22h6a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v10\"/><path d=\"M14 2v4a2 2 0 0 0 2 2h4m-9.6 4.6a2 2 0 1 1 3 3L8 21l-4 1l1-4Z\"/></g></svg>', '2024-04-25 17:45:38', '2024-08-28 18:22:39'),
(75, 'drone', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#12a8f3\" d=\"M22 11h-1l-1-2h-6.25L16 12.5h-2L10.75 9H4c-.55 0-2-.45-2-1s1.5-2.5 3.5-2.5S7.67 6.5 9 7h12a1 1 0 0 1 1 1zM10.75 6.5L14 3h2l-2.25 3.5zM18 11V9.5h1.75L19 11zM3 19a1 1 0 0 1-1-1a1 1 0 0 1 1-1a4 4 0 0 1 4 4a1 1 0 0 1-1 1a1 1 0 0 1-1-1a2 2 0 0 0-2-2m8 2a1 1 0 0 1-1 1a1 1 0 0 1-1-1a6 6 0 0 0-6-6a1 1 0 0 1-1-1a1 1 0 0 1 1-1a8 8 0 0 1 8 8\"/></svg>', '2024-04-25 22:52:55', '2024-08-28 17:10:28'),
(77, 'inteligencia_artificial', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 48 48\"><path fill=\"none\" stroke=\"#3bc3d7\" stroke-linejoin=\"round\" d=\"M18.38 27.94v-14.4l11.19-6.46c6.2-3.58 17.3 5.25 12.64 13.33\"/><path fill=\"none\" stroke=\"#3bc3d7\" stroke-linejoin=\"round\" d=\"m18.38 20.94l12.47-7.2l11.19 6.46c6.2 3.58 4.1 17.61-5.23 17.61\"/><path fill=\"none\" stroke=\"#3bc3d7\" stroke-linejoin=\"round\" d=\"m24.44 17.44l12.47 7.2v12.93c0 7.16-13.2 12.36-17.86 4.28\"/><path fill=\"none\" stroke=\"#3bc3d7\" stroke-linejoin=\"round\" d=\"M30.5 21.2v14.14L19.31 41.8c-6.2 3.58-17.3-5.25-12.64-13.33\"/><path fill=\"none\" stroke=\"#3bc3d7\" stroke-linejoin=\"round\" d=\"m30.5 27.94l-12.47 7.2l-11.19-6.46c-6.21-3.59-4.11-17.61 5.22-17.61\"/><path fill=\"none\" stroke=\"#3bc3d7\" stroke-linejoin=\"round\" d=\"m24.44 31.44l-12.47-7.2V11.31c0-7.16 13.2-12.36 17.86-4.28\"/></svg>', '2024-05-08 14:08:26', '2024-12-30 15:32:06'),
(78, 'icons', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#daa5ea\" d=\"M22 2H8v5.15A7.5 7.5 0 1 0 16.85 16H22zm-5.016 12A7.5 7.5 0 0 0 10 7.016V4h10v10zM9.5 9a5.5 5.5 0 1 1 0 11a5.5 5.5 0 0 1 0-11\"/></svg>', '2024-07-16 15:52:22', '2025-01-03 14:17:43'),
(79, 'github', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#4a74e3\" d=\"M12 2A10 10 0 0 0 2 12c0 4.42 2.87 8.17 6.84 9.5c.5.08.66-.23.66-.5v-1.69c-2.77.6-3.36-1.34-3.36-1.34c-.46-1.16-1.11-1.47-1.11-1.47c-.91-.62.07-.6.07-.6c1 .07 1.53 1.03 1.53 1.03c.87 1.52 2.34 1.07 2.91.83c.09-.65.35-1.09.63-1.34c-2.22-.25-4.55-1.11-4.55-4.92c0-1.11.38-2 1.03-2.71c-.1-.25-.45-1.29.1-2.64c0 0 .84-.27 2.75 1.02c.79-.22 1.65-.33 2.5-.33s1.71.11 2.5.33c1.91-1.29 2.75-1.02 2.75-1.02c.55 1.35.2 2.39.1 2.64c.65.71 1.03 1.6 1.03 2.71c0 3.82-2.34 4.66-4.57 4.91c.36.31.69.92.69 1.85V21c0 .27.16.59.67.5C19.14 20.16 22 16.42 22 12A10 10 0 0 0 12 2\"/></svg>', '2024-07-16 16:03:46', '2024-12-31 11:16:05'),
(80, 'visual_estudio_code', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 256 254\"><defs><linearGradient id=\"logosVisualStudioCode0\" x1=\"50%\" x2=\"50%\" y1=\"0%\" y2=\"100%\"><stop offset=\"0%\" stop-color=\"#fff\"/><stop offset=\"100%\" stop-color=\"#fff\" stop-opacity=\"0\"/></linearGradient><path id=\"logosVisualStudioCode1\" d=\"M180.828 252.605a15.87 15.87 0 0 0 12.65-.486l52.501-25.262a15.94 15.94 0 0 0 9.025-14.364V41.197a15.94 15.94 0 0 0-9.025-14.363l-52.5-25.263a15.88 15.88 0 0 0-18.115 3.084L74.857 96.35l-43.78-33.232a10.614 10.614 0 0 0-13.56.603L3.476 76.494c-4.63 4.211-4.635 11.495-.012 15.713l37.967 34.638l-37.967 34.637c-4.623 4.219-4.618 11.502.012 15.714l14.041 12.772a10.614 10.614 0 0 0 13.56.604l43.78-33.233l100.507 91.695a15.85 15.85 0 0 0 5.464 3.571m10.464-183.649l-76.262 57.889l76.262 57.888z\"/></defs><mask id=\"logosVisualStudioCode2\" fill=\"#fff\"><use href=\"#logosVisualStudioCode1\"/></mask><path fill=\"#0065a9\" d=\"M246.135 26.873L193.593 1.575a15.885 15.885 0 0 0-18.123 3.08L3.466 161.482c-4.626 4.219-4.62 11.502.012 15.714l14.05 12.772a10.625 10.625 0 0 0 13.569.604L238.229 33.436c6.949-5.271 16.93-.315 16.93 8.407v-.61a15.94 15.94 0 0 0-9.024-14.36\" mask=\"url(#logosVisualStudioCode2)\"/><path fill=\"#007acc\" d=\"m246.135 226.816l-52.542 25.298a15.89 15.89 0 0 1-18.123-3.08L3.466 92.207c-4.626-4.218-4.62-11.502.012-15.713l14.05-12.773a10.625 10.625 0 0 1 13.569-.603l207.132 157.135c6.949 5.271 16.93.315 16.93-8.408v.611a15.94 15.94 0 0 1-9.024 14.36\" mask=\"url(#logosVisualStudioCode2)\"/><path fill=\"#1f9cf0\" d=\"M193.428 252.134a15.89 15.89 0 0 1-18.125-3.083c5.881 5.88 15.938 1.715 15.938-6.603V11.273c0-8.318-10.057-12.483-15.938-6.602a15.89 15.89 0 0 1 18.125-3.084l52.533 25.263a15.94 15.94 0 0 1 9.03 14.363V212.51c0 6.125-3.51 11.709-9.03 14.363z\" mask=\"url(#logosVisualStudioCode2)\"/><path fill=\"url(#logosVisualStudioCode0)\" fill-opacity=\"0.25\" d=\"M180.828 252.605a15.87 15.87 0 0 0 12.65-.486l52.5-25.263a15.94 15.94 0 0 0 9.026-14.363V41.197a15.94 15.94 0 0 0-9.025-14.363L193.477 1.57a15.88 15.88 0 0 0-18.114 3.084L74.857 96.35l-43.78-33.232a10.614 10.614 0 0 0-13.56.603L3.476 76.494c-4.63 4.211-4.635 11.495-.012 15.713l37.967 34.638l-37.967 34.637c-4.623 4.219-4.618 11.502.012 15.714l14.041 12.772a10.614 10.614 0 0 0 13.56.604l43.78-33.233l100.506 91.695a15.9 15.9 0 0 0 5.465 3.571m10.464-183.65l-76.262 57.89l76.262 57.888z\" mask=\"url(#logosVisualStudioCode2)\"/></svg>', '2024-07-16 16:04:17', '2024-08-28 18:28:22'),
(81, 'mysql', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 32 32\"><path fill=\"#dcb67a\" d=\"M27.917 6h-9.679l-2 4H5v17h25V6ZM28 24H7V12h21Zm.1-14h-7.81l.952-2H28v2Zm-2.233 4H.273l3.86 13h25.594Z\"/><path fill=\"#5d87a1\" fill-rule=\"evenodd\" d=\"M16.018 14.715a2.3 2.3 0 0 0-.591.072v.029h.028a5 5 0 0 0 .461.591c.116.231.217.46.332.691l.028-.029a.81.81 0 0 0 .3-.721a3 3 0 0 1-.173-.3c-.086-.144-.274-.216-.39-.331\"/><path fill=\"#00758f\" fill-rule=\"evenodd\" d=\"M30.328 27.286a6.7 6.7 0 0 0-2.8.4c-.216.086-.562.086-.591.36c.116.115.13.3.232.462a3.4 3.4 0 0 0 .749.879c.3.231.605.46.923.662c.562.347 1.2.548 1.743.894c.318.2.634.461.953.678c.158.115.258.3.46.374v-.044a3 3 0 0 0-.22-.462c-.144-.143-.288-.274-.433-.417a6.9 6.9 0 0 0-1.5-1.455c-.462-.318-1.471-.75-1.658-1.282l-.029-.029a6 6 0 0 0 1-.232c.489-.129.936-.1 1.441-.229c.231-.058.649-.2.649-.2v-.225c-.258-.256-.442-.6-.713-.841a19 19 0 0 0-2.352-1.753c-.443-.285-1.013-.47-1.483-.713c-.17-.086-.455-.128-.555-.271a5.7 5.7 0 0 1-.585-1.1a35 35 0 0 1-1.169-2.48a15 15 0 0 0-.727-1.625a14.37 14.37 0 0 0-5.517-5.331a6.8 6.8 0 0 0-1.824-.585c-.357-.015-.713-.043-1.069-.057a6 6 0 0 1-.656-.5c-.813-.513-2.907-1.625-3.506-.157c-.385.927.57 1.839.9 2.31a6.7 6.7 0 0 1 .726 1.069c.1.242.128.5.229.756a17 17 0 0 0 .741 1.911a7 7 0 0 0 .527.883c.115.158.314.228.357.486a4 4 0 0 0-.328 1.069a6.28 6.28 0 0 0 .414 4.789c.228.356.77 1.141 1.5.841c.641-.256.5-1.069.684-1.781c.043-.172.014-.285.1-.4v.14s.364.8.544 1.209a8.2 8.2 0 0 0 1.8 1.951a2.6 2.6 0 0 1 .663.875v.258h.322a.8.8 0 0 0-.319-.593a7 7 0 0 1-.722-.874a19 19 0 0 1-1.555-2.651c-.223-.453-.417-.947-.6-1.4c-.083-.174-.083-.437-.222-.524a5.5 5.5 0 0 0-.666.989a8.6 8.6 0 0 0-.389 2.2c-.055.015-.028 0-.055.029c-.444-.116-.6-.6-.764-1a6.6 6.6 0 0 1-.125-3.89c.1-.3.515-1.267.347-1.558c-.084-.278-.361-.437-.514-.656a6 6 0 0 1-.5-.932c-.333-.815-.5-1.719-.861-2.534a8 8 0 0 0-.694-1.122a7 7 0 0 1-.764-1.136a.7.7 0 0 1-.056-.6a.23.23 0 0 1 .2-.19c.18-.16.694.043.874.131a7 7 0 0 1 1.374.728c.2.146.652.516.652.516h.135c.461.1.981.028 1.413.158a9.2 9.2 0 0 1 2.075.994a12.8 12.8 0 0 1 4.5 4.93c.173.331.246.634.4.979c.3.708.678 1.429.98 2.12a9.5 9.5 0 0 0 1.024 1.932c.216.3 1.081.461 1.47.62a11 11 0 0 1 1 .4c.49.3.979.649 1.441.981c.23.173.951.533.994.822\"/></svg>', '2024-07-17 08:07:25', '2024-08-28 18:09:39'),
(82, 'phpmyadmin', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#e91b0c\" d=\"M5.463 3.476C6.69 5.225 7.497 7.399 7.68 9.798a12.9 12.9 0 0 1-.672 5.254a4.3 4.3 0 0 1 2.969-1.523l.148-.008c.08-.491.47-3.45-.977-6.68c-1.068-2.386-3-3.16-3.685-3.365m1.777.037s2.406 1.066 3.326 5.547c.607 2.955.049 4.836-.402 5.773a7.35 7.35 0 0 1 4.506-1.994c.86-.065 1.695.02 2.482.233c-.1-.741-.593-3.414-2.732-5.92c-3.263-3.823-7.18-3.64-7.18-3.64Zm14.817 9.701l-17.92 3.049a2.28 2.28 0 0 1 1.535 2.254a2.3 2.3 0 0 1-.106.61c.055-.027 2.689-1.275 6.342-2.034c3.238-.673 5.723-.36 6.285-.273a6.46 6.46 0 0 1 3.864-3.606m-6.213 4.078c-2.318 0-4.641.495-6.614 1.166c-2.868.976-2.951 1.348-5.55 1.043C1.844 19.286 0 18.386 0 18.386s2.406 1.97 4.914 2.127c1.986.125 3.505-.822 5.315-1.414c2.661-.871 4.511-.97 6.253-.975C19.361 18.116 24 19.353 24 19.353s-2.11-1.044-5.033-1.72a14 14 0 0 0-3.123-.34Z\"/></svg>', '2024-07-17 08:08:44', '2024-08-28 18:24:32'),
(84, 'mariadb', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 32 32\"><path fill=\"#7ba4db\" d=\"M27.9 6h-9.7l-2 4H5v17h25V6Zm.1 18H7V12h21Zm.1-14h-7.8l1-2H28z\"/><path fill=\"#7ba4db\" d=\"M25.9 14H.3l3.8 13h25.6z\"/><path fill=\"#002b64\" d=\"M31.451 15.4c-.386.012-.264.124-1.1.329a17 17 0 0 0-2.781.525c-2.71 1.137-3.254 5.021-5.717 6.413c-1.842 1.04-3.7 1.123-5.37 1.647a9.8 9.8 0 0 0-3.293 1.907c-.772.666-.792 1.251-1.6 2.085c-.863.893-3.429.015-4.592 1.382c.375.379.539.485 1.277.387c-.153.29-1.054.534-.878.96c.186.448 2.364.753 4.345-.443a7.24 7.24 0 0 1 3.093-1.551a23.8 23.8 0 0 1 6.152.469a9.6 9.6 0 0 1-1.473 2.342c-.159.171.319.19.865.087a8.6 8.6 0 0 0 2.429-.869c.91-.53 1.048-1.887 2.164-2.181a2.5 2.5 0 0 0 3.363.417c-.921-.261-1.175-2.221-.865-3.085c.294-.818.585-2.126.882-3.206a17.6 17.6 0 0 1 .821-3.215a7.6 7.6 0 0 1 1.776-1.7A2.5 2.5 0 0 0 32 15.964c-.005-.37-.2-.576-.548-.565Z\"/><path fill=\"#c49a6c\" d=\"M7.8 30.952a5.55 5.55 0 0 0 3.4-.491a31 31 0 0 1 3.032-1.645c1.671-.536 3.5 0 5.29.108a7.7 7.7 0 0 0 1.294-.02c.666-.409.652-1.939 1.3-2.079A7.38 7.38 0 0 1 20.3 31.5a5.21 5.21 0 0 0 3.884-2.963a11 11 0 0 0 .621-1.455c.278.213.12.862.26 1.213c1.336-.744 2.1-2.443 2.608-4.161c.586-1.988.826-4 1.2-4.589a5 5 0 0 1 1.467-1.3a2.34 2.34 0 0 0 1.22-1.645c-.628-.058-.773-.2-.866-.52a1.9 1.9 0 0 1-.93.225c-.283.009-.595 0-.975.035c-3.146.323-3.545 3.79-5.562 5.756a5 5 0 0 1-.473.4a10 10 0 0 1-2.369 1.207c-1.289.493-2.515.528-3.725.953a11.2 11.2 0 0 0-2.52 1.264a7 7 0 0 0-.512.382a5 5 0 0 0-.981 1.138a7.6 7.6 0 0 1-.964 1.241c-.668.656-3.166.191-4.046.8a.7.7 0 0 0-.229.247c.48.218.8.084 1.352.145c.072.524-1.139.835-.96 1.076Z\"/><path fill=\"#002b64\" d=\"M27.742 17.643a.742.742 0 0 0 1.213-.693c-.692-.058-1.093.177-1.213.693m3.104-.899a2.3 2.3 0 0 0-.345 1.2c0 .109-.082.183-.084.016a2.37 2.37 0 0 1 .344-1.237c.081-.143.129-.084.085.021m-.119-.094a2.85 2.85 0 0 0-.532 1.3c-.01.108-.1.175-.085.008a2.9 2.9 0 0 1 .534-1.335c.093-.136.136-.073.083.027m-.109-.124a3.4 3.4 0 0 0-.785 1.367c-.019.107-.113.166-.085 0a3.5 3.5 0 0 1 .79-1.4c.104-.129.142-.062.08.033m-.097-.138a4.7 4.7 0 0 0-1 1.464c-.034.1-.135.149-.085-.011a4.6 4.6 0 0 1 1.011-1.5c.121-.112.149-.041.075.045Z\"/></svg>', '2024-07-17 08:44:14', '2024-08-28 18:28:00'),
(85, 'xampp', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 256 258\"><g fill=\"none\" fill-rule=\"evenodd\"><path fill=\"#fb7a24\" d=\"M127.929.002Q177.77.002 227.61 0c4.17 0 8.3.362 12.301 1.582c8.675 2.644 13.268 8.865 15.068 17.438c.715 3.4.918 6.865.925 10.33c.053 23.27.092 46.542.094 69.814c.002 42.384.007 84.768-.08 127.151c-.012 5.933-.328 11.931-3.257 17.336c-3.249 5.994-7.697 10.738-14.45 12.824c-1.22.377-2.494.806-3.745.806c-2.882.002-5.687.716-8.56.716c-65.067-.005-130.133.033-195.2-.07c-5.292-.01-10.67-.395-15.697-2.548c-1-.43-2.01-.79-2.89-1.46c-6.4-4.877-10.746-10.96-11.678-19.191c-.335-2.968-.442-5.92-.442-8.889c.01-65.952.016-131.904.05-197.856c.003-3.826.042-7.718 1.219-11.38C4.403 6.846 11.261 1.519 21.427.437C23.79.185 26.173.022 28.547.02C61.672-.007 94.801.002 127.928.002\"/><path fill=\"#fff\" d=\"M128.775 164.113c-.727 4.454-1.238 8.48-2.838 12.19c-7.49 17.384-20.256 27.977-39.394 30.086c-22.621 2.492-43.515-11.47-49.797-33.154c-2.277-7.858-2.049-15.869-1.223-23.867c.881-8.546 3.399-16.65 7.33-24.296c.563-1.093.552-1.918-.152-2.977c-6.036-9.078-8.378-19.107-7.528-29.932c.455-5.786 1.86-11.32 4.483-16.504c7.689-15.185 24.57-28.072 47.179-25.932c19.88 1.88 38.293 19.029 41.167 38.315c.145.968.417 1.918.735 3.346c.476-2.586.82-4.72 1.265-6.834c3.703-17.521 20.854-35.855 45.164-36.082c24.64-.228 42.887 19.097 46.33 37.045c1.455 7.585 1.202 15.163.002 22.738a81 81 0 0 1-6.672 21.775c-.716 1.529-.642 2.63.275 4.05c5.307 8.224 7.649 17.252 7.349 27.056c-.628 20.457-15.097 38.802-35.002 43.6c-27.79 6.697-49.093-9.923-56.262-30.031c-1.17-3.273-1.723-6.69-2.41-10.592m50.489-35.94c.297-1.157 1.193-1.85 1.837-2.706c6.968-9.26 10.633-19.603 9.815-31.25c-.596-8.5-7.587-14.488-16.05-14.171c-8.469.317-14.85 6.848-14.97 15.322c-.009.694.033 1.389-.01 2.078c-.583 9.031-5.566 13.978-13.117 14.53c-1.379.101-2.762.224-4.143.228c-9.8.022-19.599.018-29.4.009c-4.28-.004-8.524.462-12.6 1.72c-19.027 5.87-30.122 18.882-33.796 38.275c-.728 3.837-1.383 7.819-.125 11.76c1.805 5.653 5.17 9.857 11.126 11.263c6.173 1.457 11.55-.155 15.822-5.004c2.761-3.135 3.632-6.86 3.838-10.948c.534-10.515 6.26-15.771 15.81-15.692c14.649.122 29.3.026 43.951.037c2.6.001 2.624.036 2.637 2.608c.025 4.75-.121 9.507.062 14.252c.298 7.747 7.114 14.186 15.016 14.413c8.148.233 15.411-5.794 15.942-13.661c.458-6.81.429-13.661-.018-20.476c-.346-5.275-3.2-9.035-8.036-11.217c-1.16-.522-2.38-.913-3.591-1.37m-91.832-15.984c3.151 0 5.723-.029 8.293.013c1.274.02 1.746-.528 1.736-1.777c-.042-4.943.213-9.902-.102-14.827c-.416-6.497-3.871-11.194-9.92-13.563c-6.202-2.429-11.878-1.043-16.678 3.538c-4.821 4.603-5.464 10.232-3.777 16.392c1.55 5.662 5.21 8.878 10.968 9.85c3.344.563 6.707.293 9.48.374\"/></g></svg>', '2024-07-17 12:29:56', '2024-08-28 18:27:36'),
(86, 'apache2', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2rm\" height=\"2em\" viewBox=\"0 0 256 512\"><defs><linearGradient id=\"logosApache0\" x1=\"16.363%\" x2=\"159.99%\" y1=\"63.905%\" y2=\"20.213%\"><stop offset=\"0%\" stop-color=\"#f69923\"/><stop offset=\"31.23%\" stop-color=\"#f79a23\"/><stop offset=\"83.83%\" stop-color=\"#e97826\"/></linearGradient><linearGradient id=\"logosApache1\" x1=\"-217.651%\" x2=\"74.743%\" y1=\"394.672%\" y2=\"13.846%\"><stop offset=\"32.33%\" stop-color=\"#9e2064\"/><stop offset=\"63.02%\" stop-color=\"#c92037\"/><stop offset=\"75.14%\" stop-color=\"#cd2335\"/><stop offset=\"100%\" stop-color=\"#e97826\"/></linearGradient><linearGradient id=\"logosApache2\" x1=\"-80.044%\" x2=\"146.24%\" y1=\"170.418%\" y2=\"-44.299%\"><stop offset=\"32.33%\" stop-color=\"#9e2064\"/><stop offset=\"63.02%\" stop-color=\"#c92037\"/><stop offset=\"75.14%\" stop-color=\"#cd2335\"/><stop offset=\"100%\" stop-color=\"#e97826\"/></linearGradient><linearGradient id=\"logosApache3\" x1=\"-18.316%\" x2=\"165.002%\" y1=\"77.36%\" y2=\"-41.416%\"><stop offset=\"0%\" stop-color=\"#282662\"/><stop offset=\"9.548%\" stop-color=\"#662e8d\"/><stop offset=\"78.82%\" stop-color=\"#9f2064\"/><stop offset=\"94.87%\" stop-color=\"#cd2032\"/></linearGradient><linearGradient id=\"logosApache4\" x1=\"-129.783%\" x2=\"66.456%\" y1=\"463.715%\" y2=\"17.19%\"><stop offset=\"32.33%\" stop-color=\"#9e2064\"/><stop offset=\"63.02%\" stop-color=\"#c92037\"/><stop offset=\"75.14%\" stop-color=\"#cd2335\"/><stop offset=\"100%\" stop-color=\"#e97826\"/></linearGradient><linearGradient id=\"logosApache5\" x1=\"-34.88%\" x2=\"110.599%\" y1=\"187.706%\" y2=\"-51.1%\"><stop offset=\"32.33%\" stop-color=\"#9e2064\"/><stop offset=\"63.02%\" stop-color=\"#c92037\"/><stop offset=\"75.14%\" stop-color=\"#cd2335\"/><stop offset=\"100%\" stop-color=\"#e97826\"/></linearGradient><linearGradient id=\"logosApache6\" x1=\"-20.619%\" x2=\"125.26%\" y1=\"192.564%\" y2=\"-136.906%\"><stop offset=\"0%\" stop-color=\"#282662\"/><stop offset=\"9.548%\" stop-color=\"#662e8d\"/><stop offset=\"78.82%\" stop-color=\"#9f2064\"/><stop offset=\"94.87%\" stop-color=\"#cd2032\"/></linearGradient></defs><path fill=\"url(#logosApache0)\" d=\"M218.048 2.889c-7.969 4.681-21.316 18.129-37.254 37.553v1.195l13.945 25.8l.698.498c10.26-14.643 20.619-27.891 31.178-39.147c.797-.897 1.195-1.295 1.195-1.295c-.398.398-.797.896-1.195 1.295c-3.387 3.785-13.747 15.738-29.286 39.645l1.793.398s36.358-3.586 53.89-6.574l.996-.897c5.578-31.278-5.479-45.621-5.479-45.621s-13.945-22.513-30.48-12.85\"/><path fill=\"url(#logosApache1)\" d=\"M152.405 139.156c4.482-8.267 8.965-16.435 13.447-24.305c4.682-8.168 9.463-16.137 14.344-23.807c.299-.398.598-.896.797-1.394a548 548 0 0 1 14.444-21.715l-14.643-27.593c-1.096 1.295-2.192 2.69-3.287 4.084c-4.184 5.28-8.567 10.858-13.05 16.835a769 769 0 0 0-15.539 21.516a829 829 0 0 0-14.742 21.814c-4.184 6.475-8.467 13.05-12.65 19.923c-.2.298-.3.498-.499.797v1.095l18.229 36.159l.797.299c4.084-7.97 8.168-15.938 12.352-23.708\"/><path fill=\"url(#logosApache2)\" d=\"M73.015 316.165c3.287-8.567 6.773-17.233 10.26-25.998c3.386-8.368 6.773-16.835 10.36-25.302c3.486-8.467 7.171-16.933 10.857-25.5c3.785-8.666 7.57-17.332 11.455-25.899c3.885-8.467 7.77-16.934 11.754-25.301a377 377 0 0 1 4.383-9.065c2.49-5.18 5.08-10.36 7.57-15.44c.1-.298.3-.497.399-.796l-19.026-37.553l-.896 1.494c-4.383 7.271-8.866 14.642-13.149 22.213a873 873 0 0 0-12.85 23.309c-3.586 6.674-6.972 13.348-10.36 20.121c-.697 1.395-1.294 2.69-1.991 4.084a514 514 0 0 0-11.256 24.704q-5.678 13.447-10.16 25.7c-1.993 5.378-3.686 10.459-5.38 15.44a609 609 0 0 0-3.785 12.65a360 360 0 0 0-7.272 29.783l.3 1.196l18.228 36.258l.598.299c2.49-6.774 5.08-13.547 7.77-20.52c.697-1.992 1.494-3.885 2.19-5.877\"/><path fill=\"url(#logosApache3)\" d=\"M43.73 306.104c-2.391 12.053-4.085 24.106-4.981 36.06c0 .398-.1.796-.1 1.294c-5.977-9.562-21.914-18.826-21.914-18.826c11.455 16.535 20.121 32.971 21.416 49.108c-6.076 1.295-14.444-.598-24.205-4.084c10.06 9.264 17.63 11.854 20.619 12.551c-9.264.598-18.926 6.973-28.688 14.244c14.244-5.777 25.7-8.068 33.967-6.275C26.795 427.132 13.746 467.972.598 511.203c3.984-1.195 6.375-3.885 7.77-7.57c2.29-7.87 17.83-59.269 42.035-126.905c.697-1.892 1.395-3.884 2.092-5.777c.2-.498.398-1.096.598-1.594c2.59-7.072 5.18-14.344 7.968-21.715c.598-1.693 1.295-3.387 1.893-5.08v-.1L43.928 304.81c0 .498-.1.897-.199 1.295\"/><path fill=\"url(#logosApache4)\" d=\"M197.33 68.532c-4.284 6.575-8.966 14.045-14.046 22.512c-.299.399-.498.897-.797 1.295a836 836 0 0 0-13.846 24.206a1001 1001 0 0 0-13.148 24.604a924 924 0 0 0-12.253 24.404l.897.399l46.319-4.98l1.096-.798c14.045-6.474 20.32-12.351 26.397-20.818a230 230 0 0 0 4.88-7.272c4.981-7.77 9.862-16.237 14.145-24.703c4.184-8.169 7.87-16.337 10.758-23.608c1.793-4.682 3.287-8.965 4.284-12.75q1.344-5.08 2.091-9.563c-18.726 3.287-41.737 6.375-56.778 7.072\"/><path fill=\"url(#logosApache5)\" d=\"M141.447 169.438c-1.593 3.387-3.287 6.873-4.98 10.36c-1.793 3.785-3.686 7.77-5.479 11.754c-.896 1.992-1.892 4.084-2.789 6.076c-2.888 6.176-5.678 12.551-8.666 19.125a1713 1713 0 0 0-10.957 25.202c-3.586 8.367-7.172 16.934-10.758 25.899a1436 1436 0 0 0-10.46 26.197c-3.187 8.069-6.374 16.237-9.562 24.803c-.2.399-.299.797-.498 1.196c-3.187 8.467-6.296 17.08-9.584 25.945c-.1.2-.277.718-.377.917l.688.153l13.855-1.49l.782-.324c-.299-.1-.483-.498-.782-.597c18.329-2.291 42.733-16.038 58.571-32.972c7.272-7.77 13.846-17.033 20.022-27.79c4.582-8.07 8.766-16.935 12.85-26.796c3.586-8.567 6.973-17.93 10.26-27.99c-4.184 2.19-9.065 3.884-14.344 4.98c-.897.199-1.893.398-2.889.597c-.996.2-1.992.3-2.889.498c17.134-6.574 27.892-19.324 35.76-34.863c-4.482 3.087-11.853 7.072-20.619 9.064c-1.195.299-2.39.498-3.685.697c-.3 0-.598.1-.897.1c5.977-2.49 10.957-5.28 15.34-8.567c.897-.697 1.793-1.394 2.69-2.191c1.295-1.195 2.59-2.39 3.785-3.586c.797-.797 1.494-1.594 2.291-2.49a56 56 0 0 0 4.781-6.575c.498-.697.897-1.494 1.395-2.191c.598-1.096 1.096-2.191 1.594-3.287c2.39-4.781 4.283-9.065 5.777-12.85c.797-1.893 1.395-3.586 1.992-5.28c.2-.597.399-1.294.698-1.892c.597-1.793 1.095-3.387 1.494-4.88a43 43 0 0 0 1.096-4.981c-.598.498-1.196.896-1.993 1.394c-5.18 3.088-14.045 5.877-21.217 7.172l14.145-1.594l-14.145 1.594c-.996.2-1.693.299-2.49.498q.099-.099-47.926 5.067c-.2.2-1.381 2.703-1.88 3.898\"/><path fill=\"url(#logosApache6)\" d=\"M65.843 350.63c-2.49 6.874-5.08 13.946-7.57 21.118c0 .1-.1.2-.1.299c-.399.996-.698 1.992-1.096 3.088c-1.693 4.88-3.188 9.164-6.574 19.125c5.578 2.59 10.06 9.264 14.344 16.934c-.399-7.87-3.686-15.34-9.961-21.018c27.592 1.195 51.399-5.778 63.651-25.899a51 51 0 0 0 2.988-5.678c-5.578 7.073-12.55 10.06-25.5 9.364h-.1h.1c19.225-8.567 28.787-16.835 37.354-30.481a170 170 0 0 0 5.977-10.659c-16.835 17.233-36.259 22.114-56.679 18.428l-15.34 1.694c-.498 1.095-.996 2.39-1.494 3.685\"/></svg>', '2024-07-17 12:30:54', '2024-08-28 18:27:06'),
(90, 'presentacio', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"none\" stroke=\"#daa5ea\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.5\" d=\"M22 4.6v12.8a.6.6 0 0 1-.6.6H2.6a.6.6 0 0 1-.6-.6V4.6a.6.6 0 0 1 .6-.6h18.8a.6.6 0 0 1 .6.6M8.5 21.5L12 18l3.5 3.5M12 2v2m-3 8v2m3-4v4m3-6v6\"/></svg>', '2024-07-24 01:49:55', '2025-01-03 14:11:22'),
(91, 'detall', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 48 48\"><g fill=\"none\" stroke=\"#c26814\" stroke-linejoin=\"round\" stroke-width=\"4\"><rect width=\"36\" height=\"36\" x=\"6\" y=\"6\" rx=\"3\"/><path d=\"M13 13h8v8h-8z\"/><path stroke-linecap=\"round\" d=\"M27 13h8m-8 7h8m-22 8h22m-22 7h22\"/></g></svg>', '2024-07-24 01:50:59', '2024-08-28 18:25:56'),
(93, 'pagina', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 48 48\"><g fill=\"none\" stroke=\"#c26814\" stroke-linejoin=\"round\" stroke-width=\"4\"><rect width=\"36\" height=\"36\" x=\"6\" y=\"6\" rx=\"3\"/><path stroke-linecap=\"round\" d=\"M6 17h36M17 42V17\"/></g></svg>', '2024-07-24 02:01:58', '2024-07-31 02:32:27'),
(101, 'git', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#e11432\" d=\"M2.6 10.59L8.38 4.8l1.69 1.7c-.24.85.15 1.78.93 2.23v5.54c-.6.34-1 .99-1 1.73a2 2 0 0 0 2 2a2 2 0 0 0 2-2c0-.74-.4-1.39-1-1.73V9.41l2.07 2.09c-.07.15-.07.32-.07.5a2 2 0 0 0 2 2a2 2 0 0 0 2-2a2 2 0 0 0-2-2c-.18 0-.35 0-.5.07L13.93 7.5a1.98 1.98 0 0 0-1.15-2.34c-.43-.16-.88-.2-1.28-.09L9.8 3.38l.79-.78c.78-.79 2.04-.79 2.82 0l7.99 7.99c.79.78.79 2.04 0 2.82l-7.99 7.99c-.78.79-2.04.79-2.82 0L2.6 13.41c-.79-.78-.79-2.04 0-2.82\"/></svg>', '2024-07-31 06:36:50', '2024-07-31 06:36:50'),
(102, 'node', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 128 128\"><path fill=\"url(#deviconNodejs0)\" d=\"M66.958.825a6.07 6.07 0 0 0-6.035 0L11.103 29.76c-1.895 1.072-2.96 3.095-2.96 5.24v57.988c0 2.143 1.183 4.167 2.958 5.24l49.82 28.934a6.07 6.07 0 0 0 6.036 0l49.82-28.935c1.894-1.072 2.958-3.096 2.958-5.24V35c0-2.144-1.183-4.167-2.958-5.24z\"/><path fill=\"url(#deviconNodejs1)\" d=\"M116.897 29.76L66.841.825A8 8 0 0 0 65.302.23L9.21 96.798a6.3 6.3 0 0 0 1.657 1.43l50.057 28.934c1.42.833 3.076 1.072 4.615.595l52.66-96.925a3.7 3.7 0 0 0-1.302-1.072\"/><path fill=\"url(#deviconNodejs2)\" d=\"M116.898 98.225c1.42-.833 2.485-2.262 2.958-3.81L65.066.108c-1.42-.238-2.959-.119-4.26.715L11.104 29.639l53.606 98.355c.71-.12 1.54-.358 2.25-.715z\"/><defs><linearGradient id=\"deviconNodejs0\" x1=\"34.513\" x2=\"27.157\" y1=\"15.535\" y2=\"30.448\" gradientTransform=\"translate(-129.242 -73.715)scale(6.18523)\" gradientUnits=\"userSpaceOnUse\"><stop stop-color=\"#3f873f\"/><stop offset=\".33\" stop-color=\"#3f8b3d\"/><stop offset=\".637\" stop-color=\"#3e9638\"/><stop offset=\".934\" stop-color=\"#3da92e\"/><stop offset=\"1\" stop-color=\"#3dae2b\"/></linearGradient><linearGradient id=\"deviconNodejs1\" x1=\"30.009\" x2=\"50.533\" y1=\"23.359\" y2=\"8.288\" gradientTransform=\"translate(-129.242 -73.715)scale(6.18523)\" gradientUnits=\"userSpaceOnUse\"><stop offset=\".138\" stop-color=\"#3f873f\"/><stop offset=\".402\" stop-color=\"#52a044\"/><stop offset=\".713\" stop-color=\"#64b749\"/><stop offset=\".908\" stop-color=\"#6abf4b\"/></linearGradient><linearGradient id=\"deviconNodejs2\" x1=\"21.917\" x2=\"40.555\" y1=\"22.261\" y2=\"22.261\" gradientTransform=\"translate(-129.242 -73.715)scale(6.18523)\" gradientUnits=\"userSpaceOnUse\"><stop offset=\".092\" stop-color=\"#6abf4b\"/><stop offset=\".287\" stop-color=\"#64b749\"/><stop offset=\".598\" stop-color=\"#52a044\"/><stop offset=\".862\" stop-color=\"#3f873f\"/></linearGradient></defs></svg>', '2024-08-01 09:02:16', '2024-08-28 18:25:37'),
(103, 'express node', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"currentColor\" d=\"M24 18.588a1.53 1.53 0 0 1-1.895-.72l-3.45-4.771l-.5-.667l-4.003 5.444a1.466 1.466 0 0 1-1.802.708l5.158-6.92l-4.798-6.251a1.595 1.595 0 0 1 1.9.666l3.576 4.83l3.596-4.81a1.435 1.435 0 0 1 1.788-.668L21.708 7.9l-2.522 3.283a.666.666 0 0 0 0 .994l4.804 6.412zM.002 11.576l.42-2.075c1.154-4.103 5.858-5.81 9.094-3.27c1.895 1.489 2.368 3.597 2.275 5.973H1.116C.943 16.447 4.005 19.009 7.92 17.7a4.08 4.08 0 0 0 2.582-2.876c.207-.666.548-.78 1.174-.588a5.42 5.42 0 0 1-2.589 3.957a6.27 6.27 0 0 1-7.306-.933a6.58 6.58 0 0 1-1.64-3.858c0-.235-.08-.455-.134-.666A88 88 0 0 1 0 11.577zm1.127-.286h9.654c-.06-3.076-2.001-5.258-4.59-5.278c-2.882-.04-4.944 2.094-5.071 5.264z\"/></svg>', '2024-08-01 09:04:09', '2024-08-28 18:25:14'),
(104, 'JavaScript', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 256 256\"><g fill=\"none\"><rect width=\"256\" height=\"256\" fill=\"#f0db4f\" rx=\"60\"/><path fill=\"#323330\" d=\"m67.312 213.932l19.59-11.856c3.78 6.701 7.218 12.371 15.465 12.371c7.905 0 12.889-3.092 12.889-15.12v-81.798h24.058v82.138c0 24.917-14.606 36.259-35.916 36.259c-19.245 0-30.416-9.967-36.087-21.996m85.07-2.576l19.588-11.341c5.157 8.421 11.859 14.607 23.715 14.607c9.969 0 16.325-4.984 16.325-11.858c0-8.248-6.53-11.17-17.528-15.98l-6.013-2.579c-17.357-7.388-28.871-16.668-28.871-36.258c0-18.044 13.748-31.792 35.229-31.792c15.294 0 26.292 5.328 34.196 19.247l-18.731 12.029c-4.125-7.389-8.591-10.31-15.465-10.31c-7.046 0-11.514 4.468-11.514 10.31c0 7.217 4.468 10.139 14.778 14.608l6.014 2.577c20.449 8.765 31.963 17.699 31.963 37.804c0 21.654-17.012 33.51-39.867 33.51c-22.339 0-36.774-10.654-43.819-24.574\"/></g></svg>', '2024-08-01 09:06:04', '2024-08-28 18:24:53'),
(105, 'oli', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#1762c4\" d=\"M22 12.5s2 2.17 2 3.5a2 2 0 0 1-2 2a2 2 0 0 1-2-2c0-1.33 2-3.5 2-3.5M6 6h4a1 1 0 0 1 1 1a1 1 0 0 1-1 1H9v2h2c.74 0 1.39.4 1.73 1l6.51-3.76l3.26 1.89c.5.27.64.87.37 1.37c-.28.47-.87.64-1.37.36l-2.1-1.21l-3.65 6.32c-.34.61-1 1.03-1.75 1.03H5a2 2 0 0 1-2-2v-3a2 2 0 0 1 2-2h2V8H6a1 1 0 0 1-1-1a1 1 0 0 1 1-1m-1 6v3h9l2.06-3.57l-3.46 2l-.91-1.43zM.38 9.21L2.09 7.5c.41-.39 1.02-.39 1.41 0s.39 1 0 1.41l-1.71 1.71c-.39.38-1.02.38-1.41 0C0 10.23 0 9.6.38 9.21\"/></svg>', '2024-08-02 11:55:24', '2024-08-02 12:07:19'),
(106, 'bootstrap', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 256 204\"><path fill=\"#7e13f8\" d=\"M53.172 0C38.565 0 27.756 12.785 28.24 26.65c.465 13.32-.139 30.573-4.482 44.642C19.402 85.402 12.034 94.34 0 95.488v12.956c12.034 1.148 19.402 10.086 23.758 24.197c4.343 14.069 4.947 31.32 4.482 44.641c-.484 13.863 10.325 26.65 24.934 26.65h149.673c14.608 0 25.414-12.785 24.93-26.65c-.464-13.32.139-30.572 4.482-44.641c4.359-14.11 11.707-23.05 23.741-24.197V95.488c-12.034-1.148-19.382-10.086-23.74-24.196c-4.344-14.067-4.947-31.321-4.483-44.642C228.261 12.787 217.455 0 202.847 0H53.17zM173.56 125.533c0 19.092-14.24 30.67-37.872 30.67h-40.23a4.34 4.34 0 0 1-4.338-4.339V52.068a4.34 4.34 0 0 1 4.339-4.34h39.999c19.705 0 32.637 10.675 32.637 27.063c0 11.503-8.7 21.801-19.783 23.604v.601c15.089 1.655 25.248 12.104 25.248 26.537m-42.26-64.05h-22.937v32.4h19.32c14.934 0 23.17-6.014 23.17-16.764c0-10.073-7.082-15.636-19.552-15.636m-22.937 45.256v35.705h23.782c15.548 0 23.786-6.239 23.786-17.965c0-11.728-8.467-17.742-24.786-17.742h-22.782z\"/></svg>', '2024-08-04 06:54:52', '2024-08-04 06:54:52'),
(107, 'servidor', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 32 32\"><defs><linearGradient id=\"vscodeIconsFolderTypeServer0\" x1=\"127.346\" x2=\"125.823\" y1=\"-116.408\" y2=\"-119.26\" gradientTransform=\"matrix(.864 0 0 -.864 -81.843 -76.99)\" gradientUnits=\"userSpaceOnUse\"><stop offset=\"0\" stop-color=\"#fff\"/><stop offset=\"1\" stop-color=\"#fff\"/></linearGradient><linearGradient id=\"vscodeIconsFolderTypeServer1\" x1=\"127.349\" x2=\"125.824\" y1=\"-116.274\" y2=\"-119.127\" gradientTransform=\"matrix(.864 0 0 -.864 -81.843 -76.99)\" gradientUnits=\"userSpaceOnUse\"><stop offset=\"0\"/><stop offset=\"1\" stop-color=\"#6a6a6a\"/></linearGradient><linearGradient id=\"vscodeIconsFolderTypeServer2\" x1=\"126.507\" x2=\"128.647\" y1=\"-131.222\" y2=\"-131.222\" gradientTransform=\"matrix(.864 0 0 -.864 -90.788 -94.496)\" gradientUnits=\"userSpaceOnUse\"><stop offset=\"0\" stop-color=\"#e7ebef\"/><stop offset=\"1\" stop-color=\"#c4ce00\"/></linearGradient><linearGradient id=\"vscodeIconsFolderTypeServer3\" x1=\"127.346\" x2=\"125.823\" y1=\"-117.409\" y2=\"-120.262\" gradientTransform=\"matrix(.864 0 0 -.864 -81.843 -78.528)\" href=\"#vscodeIconsFolderTypeServer0\"/><linearGradient id=\"vscodeIconsFolderTypeServer4\" x1=\"127.349\" x2=\"125.824\" y1=\"-117.276\" y2=\"-120.128\" gradientTransform=\"matrix(.864 0 0 -.864 -81.843 -78.528)\" href=\"#vscodeIconsFolderTypeServer1\"/><linearGradient id=\"vscodeIconsFolderTypeServer5\" x1=\"127.346\" x2=\"125.823\" y1=\"-118.411\" y2=\"-121.263\" gradientTransform=\"matrix(.864 0 0 -.864 -81.843 -80.066)\" href=\"#vscodeIconsFolderTypeServer0\"/><linearGradient id=\"vscodeIconsFolderTypeServer6\" x1=\"127.349\" x2=\"125.824\" y1=\"-118.277\" y2=\"-121.13\" gradientTransform=\"matrix(.864 0 0 -.864 -81.843 -80.066)\" href=\"#vscodeIconsFolderTypeServer1\"/><linearGradient id=\"vscodeIconsFolderTypeServer7\" x1=\"127.346\" x2=\"125.823\" y1=\"-119.413\" y2=\"-122.265\" gradientTransform=\"matrix(.864 0 0 -.864 -81.843 -81.604)\" href=\"#vscodeIconsFolderTypeServer0\"/><linearGradient id=\"vscodeIconsFolderTypeServer8\" x1=\"127.349\" x2=\"125.824\" y1=\"-119.279\" y2=\"-122.131\" gradientTransform=\"matrix(.864 0 0 -.864 -81.843 -81.604)\" href=\"#vscodeIconsFolderTypeServer1\"/><linearGradient id=\"vscodeIconsFolderTypeServer9\" x1=\"127.346\" x2=\"125.823\" y1=\"-115.406\" y2=\"-118.258\" gradientTransform=\"matrix(.864 0 0 -.864 -81.843 -75.452)\" href=\"#vscodeIconsFolderTypeServer0\"/><linearGradient id=\"vscodeIconsFolderTypeServera\" x1=\"127.349\" x2=\"125.824\" y1=\"-115.272\" y2=\"-118.125\" gradientTransform=\"matrix(.864 0 0 -.864 -81.843 -75.452)\" href=\"#vscodeIconsFolderTypeServer1\"/></defs><path fill=\"#53c1b6\" d=\"M27.5 5.5h-9.3l-2.1 4.2H4.4v16.8h25.2v-21Zm0 4.2h-8.2l1.1-2.1h7.1Z\"/><path fill=\"#00608b\" stroke=\"#000\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.28\" d=\"M29.374 12.871a324 324 0 0 1-4.66-1.331a1.3 1.3 0 0 0-.642-.038c-.113.038-6.883 4.008-7.11 4.121c-.038 0-.038.038-.076.076a.8.8 0 0 0-.264.567v0l.078 11.743c0 .189.038.264.189.34c0 0 4.912 1.965 5.479 2.116h.076c.264.038.34.038.453-.076l.038-.038c.113-.076 6.416-4.869 6.529-4.982a.57.57 0 0 0 .151-.3c0-.113.177-11.554.177-11.7v-.038a.51.51 0 0 0-.416-.453Zm-.118.567a2 2 0 0 0 .227-.189s-.113.076-.264.189c-.264.189-.6.416-.982.718c.642-.453 1.209-.831 1.36-.945a2.4 2.4 0 0 1-.336.227Z\"/><path fill=\"#00608b\" d=\"M24.7 11.5a1.3 1.3 0 0 0-.642-.038c-.113.038-6.867 4.051-7.094 4.2c-.189.113-.264.34 0 .453c.264.076 5.214 1.7 5.4 1.738a.82.82 0 0 0 .68-.038c.113-.076 6.516-4.453 6.63-4.566s-.111-.314-.27-.367c-.181-.06-4.518-1.346-4.744-1.422l.038.038Z\"/><path fill=\"#00608b\" d=\"M16.66 16.3c0-.189.113-.3.264-.264c.113.038 5.441 1.776 5.63 1.927c.189.113.3.189.3.34l-.076 11.932a.235.235 0 0 1-.34.227c-.567-.151-5.479-2.116-5.479-2.116c-.151-.076-.189-.151-.189-.34Z\"/><path fill=\"#00608b\" d=\"M22.969 30.389c-.113.076-.235-.013-.235-.226l.046-11.895a.47.47 0 0 1 .189-.378c.113-.076 6.53-4.528 6.681-4.642s.227.113.189.227c0 .113-.214 11.5-.214 11.616a.28.28 0 0 1-.151.264c-.113.113-6.467 4.958-6.543 5.071z\"/><path fill=\"#00608b\" d=\"M16.886 15.963c-.038 0 0-.189.113-.3a.83.83 0 0 0-.34.642a.236.236 0 0 1 .227-.189c.68.227 5.365 1.851 5.554 1.927s.3.144.3.333l.037.451l.068-.459c0-.189.126-.324.352-.475c.113-.076 2.969-2.095 3.775-2.815c-.766.408-3.8 2.777-4.216 2.777c-.321 0-5.831-1.889-5.869-1.889Z\"/><path fill=\"#00608b\" d=\"M26.521 15.4a2 2 0 0 1 .34-.227ZM23 30.365a.46.46 0 0 1-.533.109a.28.28 0 0 0 .281-.226s.029.205.252.118Zm6.58-17.056c.189-.091.269.007.275.169c.027-.167.021-.466-.451-.6c0 0 .379.188.176.428Z\"/><path fill=\"url(#vscodeIconsFolderTypeServer0)\" d=\"m29.278 23.842l-4.1 2.976v.151l4.091-3.027l.007-.1Z\" opacity=\"0.13\"/><path fill=\"url(#vscodeIconsFolderTypeServer1)\" d=\"M29.3 23.719L25.18 26.7v.151l4.1-3.042l.019-.094Z\" opacity=\"0.13\"/><path fill=\"url(#vscodeIconsFolderTypeServer2)\" d=\"M18.51 18.444v.227l1.852.642v-.189z\"/><path d=\"m18.51 18.671l-.113.075v-.453l2.04.718l-.075.113l-1.852-.68z\" opacity=\"0.22\"/><path fill=\"#fff\" d=\"M20.437 19.464v-.453l-.075.113v.189l-1.852-.642l-.113.075z\" opacity=\"0.72\"/><path fill=\"url(#vscodeIconsFolderTypeServer3)\" d=\"m29.278 23.169l-4.1 2.976v.155l4.091-3.027l.007-.1Z\" opacity=\"0.13\"/><path fill=\"url(#vscodeIconsFolderTypeServer4)\" d=\"m29.3 23.047l-4.12 2.985v.151l4.1-3.042l.019-.094Z\" opacity=\"0.13\"/><path fill=\"url(#vscodeIconsFolderTypeServer5)\" d=\"m29.278 22.5l-4.1 2.976v.151l4.093-3.027z\" opacity=\"0.13\"/><path fill=\"url(#vscodeIconsFolderTypeServer6)\" d=\"m29.3 22.374l-4.12 2.985v.151l4.1-3.042l.019-.094Z\" opacity=\"0.13\"/><path fill=\"url(#vscodeIconsFolderTypeServer7)\" d=\"M29.278 21.824L25.18 24.8v.151l4.091-3.027z\" opacity=\"0.13\"/><path fill=\"url(#vscodeIconsFolderTypeServer8)\" d=\"m29.3 21.7l-4.12 2.987v.151l4.1-3.042z\" opacity=\"0.13\"/><path fill=\"url(#vscodeIconsFolderTypeServer9)\" d=\"m29.278 24.514l-4.1 2.976v.151l4.091-3.027l.007-.1Z\" opacity=\"0.13\"/><path fill=\"url(#vscodeIconsFolderTypeServera)\" d=\"m29.3 24.392l-4.12 2.985v.151l4.1-3.042l.019-.094Z\" opacity=\"0.13\"/></svg>', '2024-08-04 07:01:29', '2024-08-04 07:01:29'),
(108, 'pagina_inici', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2rem\" height=\"2rem\" viewBox=\"0 0 48 48\"><g fill=\"none\" stroke=\"#c7811f\" stroke-linejoin=\"round\" stroke-width=\"4\"><rect width=\"36\" height=\"36\" x=\"6\" y=\"6\" rx=\"3\"/><path stroke-linecap=\"round\" d=\"M6 17h36M17 42V17\"/></g></svg>', '2024-08-08 02:00:11', '2024-08-08 02:00:11'),
(109, 'html', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#022aed\" d=\"M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8zm-1 2l5 5h-5zM8.531 18h-.76v-1.411H6.515V18h-.767v-3.373h.767v1.296h1.257v-1.296h.76zm3-2.732h-.921V18h-.766v-2.732h-.905v-.641h2.592zM14.818 18l-.05-1.291c-.017-.405-.03-.896-.03-1.387h-.016c-.104.431-.245.911-.375 1.307l-.41 1.316h-.597l-.359-1.307a15 15 0 0 1-.306-1.316h-.011c-.021.456-.034.976-.059 1.396L12.545 18h-.705l.216-3.373h1.015l.331 1.126c.104.391.21.811.284 1.206h.017c.095-.391.209-.836.32-1.211l.359-1.121h.996L15.563 18zm3.434 0h-2.108v-3.373h.767v2.732h1.342z\"/></svg>', '2024-08-27 16:11:42', '2024-08-27 16:11:42'),
(110, 'container', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#022aed\" d=\"M13.152.682a2.25 2.25 0 0 1 2.269 0l.007.004l6.957 4.276a2.28 2.28 0 0 1 1.126 1.964v7.516c0 .81-.432 1.56-1.133 1.968l-.002.001l-11.964 7.037l-.004.003c-.706.41-1.578.41-2.284 0l-.026-.015l-6.503-4.502a2.27 2.27 0 0 1-1.096-1.943V9.438c0-.392.1-.77.284-1.1l.003-.006l.014-.026c.197-.342.48-.627.82-.827h.002L13.152.681Zm.757 1.295h-.001L2.648 8.616l6.248 4.247a.78.78 0 0 0 .758-.01h.001l11.633-6.804l-6.629-4.074a.75.75 0 0 0-.75.003ZM8.517 14.33a2.3 2.3 0 0 1-.393-.18l-.023-.014l-6.102-4.147v7.003c0 .275.145.528.379.664l.025.014l6.114 4.232zM18 9.709l-3.25 1.9v7.548L18 17.245Zm-7.59 4.438l-.002.002a2.3 2.3 0 0 1-.391.18v7.612l3.233-1.902v-7.552Zm9.09-5.316v7.532l2.124-1.25a.78.78 0 0 0 .387-.671V7.363Z\"/></svg>', '2024-08-27 19:56:07', '2024-08-27 19:56:07'),
(111, 'background', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#022aed\" d=\"M11.342 12.994c-.188.409-.342.888-.342 1.381c0 .735.287 1.426.775 1.914A2.4 2.4 0 0 0 13.5 17c1.471 0 2.5-1.234 2.5-2.625c0-.493-.154-.972-.342-1.381a7 7 0 0 0-.674-1.134c-.237-.33-.473-.613-.649-.812l-.305-.328l-.002-.002a.75.75 0 0 0-1.059.002l-.005.005c-.058.062-.214.226-.3.323c-.175.199-.411.48-.649.812a7 7 0 0 0-.673 1.134m2.423-.26c.202.281.392.586.53.886c.14.305.205.56.205.755c0 .691-.481 1.125-1 1.125c-.25 0-.492-.1-.675-.283c-.196-.195-.325-.484-.325-.842c0-.194.065-.45.205-.755c.137-.3.328-.605.53-.885q.135-.189.265-.35q.13.16.265.35M6.75 1a.75.75 0 0 0-.75.75v1.756l-.093.087l-4.243 4.243a2 2 0 0 0 0 2.828L5.199 14.2a2 2 0 0 0 2.829 0l4.243-4.243a2 2 0 0 0 0-2.828L8.735 3.593A2 2 0 0 0 7.5 3.015V1.75A.75.75 0 0 0 6.75 1M6 5.621v.629a.75.75 0 1 0 1.5 0V4.54a.5.5 0 0 1 .174.114l3.536 3.535a.5.5 0 0 1 .144.311H3.121zm.26 7.518l-3.128-3.128h6.964l-3.129 3.128a.5.5 0 0 1-.707 0M2 17.5v-5.088l1.5 1.5V17.5a1 1 0 0 0 1 1h15a1 1 0 0 0 1-1v-11a1 1 0 0 0-1-1h-7.441l-1.5-1.5H19.5A2.5 2.5 0 0 1 22 6.5v11a2.5 2.5 0 0 1-2.5 2.5h-15A2.5 2.5 0 0 1 2 17.5\"/></svg>', '2024-08-27 19:57:23', '2024-08-27 19:57:23'),
(112, 'color', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 32 32\"><g fill=\"none\"><path fill=\"#ac5810\" d=\"M19.343 4.83C11.708.802 4.757 3.672 2.253 7.595C1.432 8.877.852 11.21.874 13.06c.045 3.807 2.152 8.05 6.7 12.33c5.595 5.265 11.305 4.805 13.12 4.363c2.285-.558 3.817-1.033 3.582-3.163c-.03-.28-.27-.788-.632-1.01c-1.162-.705-3.59-1.072-4.732-2.77c-1.66-2.472.404-2.597 2.382-1.54c2.117 1.133 3.327 1.84 5.452 1.645c1.558-.142 3.823-1.082 4.13-3.71c.276-2.377-3.194-9.975-11.534-14.375m3.117 12.92c-.585.89-2.03.585-2.977-.255s-1.07-2.24-.456-2.79c.625-.557 1.8-.43 2.748.41c.945.842 1.143 1.935.685 2.635\"/><path fill=\"#f2a259\" d=\"M19.678 3.923C12.042-.105 5.074 3.01 2.57 6.933c-2.507 3.925-1.417 11.192 5.338 17.55c5.594 5.264 11.305 4.805 13.12 4.362c2.285-.557 3.897-1.645 2.892-3.032c-.693-.958-3.175-1.68-4.673-3.91c-1.66-2.473.406-2.598 2.383-1.54c2.117 1.132 3.328 1.84 5.453 1.645c1.557-.143 3.912-1.348 3.842-3.783c-.073-2.393-2.908-9.9-11.248-14.302m3.514 13.757c-.712.77-2.23.56-3.39-.465c-1.157-1.027-1.52-2.482-.807-3.25c.712-.77 2.23-.56 3.39.465s1.52 2.483.807 3.25\"/><path fill=\"#eee\" d=\"M11.905 21.165c.288-.735 2.333-1.54 4.213-.203c.527.375 1.187 1.33 1.12 2.53c-.22 3.92-6.653 1.055-5.333-2.327\"/><path fill=\"#2686c6\" d=\"M5.933 14.518c.657-1.05 2.255-1.17 3.652-.263c1.245.807 2.285 2.795.75 4.095c-.822.697-2.245.265-3.122-.408c-1.065-.812-1.988-2.294-1.28-3.424\"/><path fill=\"#ffee58\" d=\"M14.418 5.355c.202-.832 1.614-.975 2.614-.602c1.728.645 2.51 2.355 1.873 3.307c-.933 1.393-2.965.915-3.735.118c-1.307-1.35-.922-2.125-.752-2.823\"/><path fill=\"#7cb342\" d=\"M24.428 9.43c1.384.63 1.564 1.627 1.3 2.355c-.166.45-.503 1.067-1.193 1.123c-1.168.095-1.33-.87-2.163-1.135c-.7-.223-.985-1.18-.71-1.823c.256-.592 1-1.325 2.765-.52\"/><path fill=\"#b0b0b0\" d=\"M16.743 24.24c-.345.313-1.543.698-3.063-.252c-.515-.323-1.008-.79-1.285-1.49c-.217-.55-.17-1.08-.072-1.315c.28-.678.707-.803.707-.803c-.43-.03-1.242.54-1.377 1.288c-.043.235-.346 1.704 1.602 3.037c1.677 1.15 4.158 1.043 3.995-1.272a1.8 1.8 0 0 1-.508.807\"/><path fill=\"#01579b\" d=\"M11.065 16.43c-.047.893-1.093 1.363-1.675 1.365c-1.648.002-3.128-1.033-3.23-2.875c-.018-.33.145-.807.145-.807c-.218.092-.525.562-.59.827c-.385 1.59 1.217 3.443 2.905 3.818c.855.19 1.933-.103 2.325-.868c.28-.545.225-1.012.12-1.46\"/><path fill=\"#df7f14\" d=\"M16.83 8.18c-1.12-.128-1.74-.86-1.902-1.028c-.446-.465-.72-.917-.56-1.587c.05-.215.172-.49.322-.645c-.182.06-.477.452-.57.665c-.095.212-.44 1.01.3 1.992c.457.61 1.255 1.298 2.435 1.463c.837.117 1.438-.183 1.938-.67c.34-.333.49-1.083.287-1.47c.033.282-.485 1.482-2.25 1.28\"/><path fill=\"#558b2f\" d=\"M26.043 11.213a2.4 2.4 0 0 0-.425-.79c.127.245.38.98-.15 1.694c-.268.36-1.073.803-2.023.033c-.28-.228-.505-.453-1.01-.638c-1.282-.472-.723-1.777-.277-2.182c-.35.183-.668.51-.8 1.01c-.186.697.272 1.428.967 1.777c.79.398 1.045 1.165 2.128 1.165q.082 0 .175-.007c.73-.062 1.037-.345 1.26-.69c.272-.43.28-.918.154-1.373\"/><path fill=\"#f44336\" d=\"M6.455 6.448c.57-.563 1.562-1.158 3.015-.4c.875.455 1.893.99 1.432 2.84c-.284 1.147-1.955 1.755-3.35.477C7 8.86 4.9 7.982 6.455 6.447\"/><path fill=\"#c62828\" d=\"M11.235 8.64c.018-.437-.207-.97-.285-1.15c.013.262.24.925-.802 1.802a1.73 1.73 0 0 1-1.738.255c-.367-.145-.895-.752-1.272-.905c-1.403-.564-.798-2.067-.6-2.272a1.7 1.7 0 0 0-.688 1.095c-.13.678-.01 1.318.92 2.05c2.64 2.082 3.45.827 3.738.508c.362-.39.707-.9.727-1.383\"/><path fill=\"#fff\" d=\"M16.435 4.84c-.367-.172-1.417-.122-1.62.753c-.122.525.263 1.057.625.995c.412-.07.193-.713.44-.895c.377-.275 1.07-.61.555-.853M8.69 6.115c-.362-.24-1.52-.242-1.867.645c-.21.533.117 1.15.51 1.14c.447-.01.232-.537.604-.872c.47-.423 1.26-.578.753-.913m-.172 8.01c-.343-.217-1.358-.303-1.778.492c-.308.585.115 1.23.482 1.213c.418-.02.278-.685.545-.835c.408-.227 1.23-.565.75-.87m5.832 6.657c-.367-.172-1.418-.122-1.62.753c-.123.525.262 1.058.625.995c.412-.07.192-.713.44-.895c.375-.275 1.068-.61.555-.853m9.42-11.27c-.33-.234-1.372-.372-1.727.453c-.213.495.07 1.088.437 1.09c.418.002.315-.668.593-.803c.417-.202 1.16-.41.697-.74\"/></g></svg>', '2024-08-27 19:59:12', '2024-08-27 19:59:12');
INSERT INTO `tags` (`id`, `name`, `svg`, `created_at`, `updated_at`) VALUES
(113, 'linux', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 256 295\"><defs><linearGradient id=\"logosLinuxTux0\" x1=\"48.548%\" x2=\"51.047%\" y1=\"115.276%\" y2=\"41.364%\"><stop offset=\"0%\" stop-color=\"#ffeed7\"/><stop offset=\"100%\" stop-color=\"#bdbfc2\"/></linearGradient><linearGradient id=\"logosLinuxTux1\" x1=\"54.407%\" x2=\"46.175%\" y1=\"2.404%\" y2=\"90.542%\"><stop offset=\"0%\" stop-color=\"#fff\" stop-opacity=\"0.8\"/><stop offset=\"100%\" stop-color=\"#fff\" stop-opacity=\"0\"/></linearGradient><linearGradient id=\"logosLinuxTux2\" x1=\"51.86%\" x2=\"47.947%\" y1=\"88.248%\" y2=\"9.748%\"><stop offset=\"0%\" stop-color=\"#ffeed7\"/><stop offset=\"100%\" stop-color=\"#bdbfc2\"/></linearGradient><linearGradient id=\"logosLinuxTux3\" x1=\"49.925%\" x2=\"49.924%\" y1=\"85.49%\" y2=\"13.811%\"><stop offset=\"0%\" stop-color=\"#ffeed7\"/><stop offset=\"100%\" stop-color=\"#bdbfc2\"/></linearGradient><linearGradient id=\"logosLinuxTux4\" x1=\"53.901%\" x2=\"45.956%\" y1=\"3.102%\" y2=\"93.895%\"><stop offset=\"0%\" stop-color=\"#fff\" stop-opacity=\"0.65\"/><stop offset=\"100%\" stop-color=\"#fff\" stop-opacity=\"0\"/></linearGradient><linearGradient id=\"logosLinuxTux5\" x1=\"45.593%\" x2=\"54.811%\" y1=\"5.475%\" y2=\"93.524%\"><stop offset=\"0%\" stop-color=\"#fff\" stop-opacity=\"0.65\"/><stop offset=\"100%\" stop-color=\"#fff\" stop-opacity=\"0\"/></linearGradient><linearGradient id=\"logosLinuxTux6\" x1=\"49.984%\" x2=\"49.984%\" y1=\"89.845%\" y2=\"40.632%\"><stop offset=\"0%\" stop-color=\"#ffeed7\"/><stop offset=\"100%\" stop-color=\"#bdbfc2\"/></linearGradient><linearGradient id=\"logosLinuxTux7\" x1=\"53.505%\" x2=\"42.746%\" y1=\"99.975%\" y2=\"23.545%\"><stop offset=\"0%\" stop-color=\"#ffeed7\"/><stop offset=\"100%\" stop-color=\"#bdbfc2\"/></linearGradient><linearGradient id=\"logosLinuxTux8\" x1=\"49.841%\" x2=\"50.241%\" y1=\"13.229%\" y2=\"94.673%\"><stop offset=\"0%\" stop-color=\"#fff\" stop-opacity=\"0.8\"/><stop offset=\"100%\" stop-color=\"#fff\" stop-opacity=\"0\"/></linearGradient><linearGradient id=\"logosLinuxTux9\" x1=\"49.927%\" x2=\"50.727%\" y1=\"37.327%\" y2=\"92.782%\"><stop offset=\"0%\" stop-color=\"#fff\" stop-opacity=\"0.65\"/><stop offset=\"100%\" stop-color=\"#fff\" stop-opacity=\"0\"/></linearGradient><linearGradient id=\"logosLinuxTuxa\" x1=\"49.876%\" x2=\"49.876%\" y1=\"2.299%\" y2=\"81.204%\"><stop offset=\"0%\" stop-color=\"#fff\" stop-opacity=\"0.65\"/><stop offset=\"100%\" stop-color=\"#fff\" stop-opacity=\"0\"/></linearGradient><linearGradient id=\"logosLinuxTuxb\" x1=\"49.833%\" x2=\"49.824%\" y1=\"2.272%\" y2=\"71.799%\"><stop offset=\"0%\" stop-color=\"#fff\" stop-opacity=\"0.65\"/><stop offset=\"100%\" stop-color=\"#fff\" stop-opacity=\"0\"/></linearGradient><linearGradient id=\"logosLinuxTuxc\" x1=\"53.467%\" x2=\"38.949%\" y1=\"48.921%\" y2=\"98.1%\"><stop offset=\"0%\" stop-color=\"#ffa63f\"/><stop offset=\"100%\" stop-color=\"#ff0\"/></linearGradient><linearGradient id=\"logosLinuxTuxd\" x1=\"52.373%\" x2=\"47.579%\" y1=\"143.009%\" y2=\"-64.622%\"><stop offset=\"0%\" stop-color=\"#ffeed7\"/><stop offset=\"100%\" stop-color=\"#bdbfc2\"/></linearGradient><linearGradient id=\"logosLinuxTuxe\" x1=\"30.581%\" x2=\"65.887%\" y1=\"34.024%\" y2=\"89.175%\"><stop offset=\"0%\" stop-color=\"#ffa63f\"/><stop offset=\"100%\" stop-color=\"#ff0\"/></linearGradient><linearGradient id=\"logosLinuxTuxf\" x1=\"59.572%\" x2=\"48.361%\" y1=\"-17.216%\" y2=\"66.118%\"><stop offset=\"0%\" stop-color=\"#fff\" stop-opacity=\"0.65\"/><stop offset=\"100%\" stop-color=\"#fff\" stop-opacity=\"0\"/></linearGradient><linearGradient id=\"logosLinuxTuxg\" x1=\"47.769%\" x2=\"51.373%\" y1=\"1.565%\" y2=\"104.313%\"><stop offset=\"0%\" stop-color=\"#fff\" stop-opacity=\"0.65\"/><stop offset=\"100%\" stop-color=\"#fff\" stop-opacity=\"0\"/></linearGradient><linearGradient id=\"logosLinuxTuxh\" x1=\"43.55%\" x2=\"57.114%\" y1=\"4.533%\" y2=\"92.827%\"><stop offset=\"0%\" stop-color=\"#fff\" stop-opacity=\"0.65\"/><stop offset=\"100%\" stop-color=\"#fff\" stop-opacity=\"0\"/></linearGradient><linearGradient id=\"logosLinuxTuxi\" x1=\"49.733%\" x2=\"50.558%\" y1=\"17.609%\" y2=\"99.385%\"><stop offset=\"0%\" stop-color=\"#ffa63f\"/><stop offset=\"100%\" stop-color=\"#ff0\"/></linearGradient><linearGradient id=\"logosLinuxTuxj\" x1=\"50.17%\" x2=\"49.68%\" y1=\"2.89%\" y2=\"94.17%\"><stop offset=\"0%\" stop-color=\"#fff\" stop-opacity=\"0.65\"/><stop offset=\"100%\" stop-color=\"#fff\" stop-opacity=\"0\"/></linearGradient><filter id=\"logosLinuxTuxk\" width=\"200%\" height=\"200%\" x=\"-50%\" y=\"-50%\" filterUnits=\"objectBoundingBox\"><feOffset in=\"SourceAlpha\" result=\"shadowOffsetOuter1\"/><feGaussianBlur in=\"shadowOffsetOuter1\" result=\"shadowBlurOuter1\" stdDeviation=\"6.5\"/></filter></defs><g fill=\"none\"><path fill=\"#000\" fill-opacity=\"0.2\" d=\"M235.125 249.359c0 17.355-52.617 31.497-117.54 31.497S.044 266.806.044 249.359c0-17.356 52.618-31.498 117.54-31.498c64.924 0 117.45 14.142 117.541 31.498\" filter=\"url(#logosLinuxTuxk)\" transform=\"translate(10)\"/><path fill=\"#000\" d=\"M63.213 215.474c-11.387-16.346-13.591-69.606 12.947-102.39C89.292 97.383 92.69 86.455 93.7 71.67c.734-16.805-11.846-66.851 35.537-70.616c48.027-3.857 45.364 43.526 45.088 68.596c-.183 21.12 15.52 33.15 26.355 49.68c19.927 30.303 18.274 82.461-3.765 110.745c-27.916 35.354-51.791 20.018-67.678 21.304c-29.752 1.745-30.762 17.54-66.024-35.905\"/><path fill=\"url(#logosLinuxTux0)\" d=\"M169.1 122.451c8.265 7.622 29.661 41.69-4.224 62.995c-11.937 7.438 10.653 35.721 21.488 22.039c19.193-24.61 6.98-63.913-4.591-77.963c-7.714-9.917-19.651-13.774-12.672-7.07\" transform=\"translate(10)\"/><path fill=\"#000\" stroke=\"#000\" stroke-width=\"0.98\" d=\"M176.805 117.86c13.59 11.02 38.292 49.587 2.204 74.748c-11.846 7.806 10.468 32.508 23.049 19.927c43.618-43.894-1.102-94.308-16.53-111.664c-13.774-15.151-25.987 3.49-8.723 16.989Z\"/><path fill=\"url(#logosLinuxTux1)\" d=\"M147.245 25.02c-.459 12.581-14.325 23.51-30.946 24.52S86.639 41 87.097 28.418c.46-12.581 14.326-23.509 30.947-24.519c16.62-.918 29.66 8.54 29.201 21.12\" transform=\"translate(10)\"/><path fill=\"url(#logosLinuxTux2)\" d=\"M107.483 54.957c.46 8.173-3.397 15.06-8.723 15.335s-10.01-6.06-10.47-14.232S91.688 41 97.014 40.725s10.01 6.06 10.468 14.233\" transform=\"translate(10)\"/><path fill=\"url(#logosLinuxTux3)\" d=\"M117.125 55.6c.184 9.458 6.337 16.988 13.683 16.805c7.346-.184 13.131-7.99 12.948-17.54c-.184-9.458-6.336-16.988-13.683-16.804c-7.346.183-13.223 8.08-12.948 17.539\" transform=\"translate(10)\"/><path fill=\"#000\" d=\"M133.186 57.712c-.092 5.234 2.48 9.458 5.877 9.458c3.306 0 6.153-4.224 6.245-9.366c.091-5.234-2.48-9.459-5.878-9.459c-3.397 0-6.152 4.225-6.244 9.367m-21.212.092c.459 4.316-1.194 7.989-3.582 8.356c-2.387.276-4.683-2.938-5.142-7.254s1.194-7.99 3.581-8.357c2.388-.275 4.684 2.939 5.143 7.255\"/><path fill=\"url(#logosLinuxTux4)\" d=\"M124.564 54.773c-.276 2.939 1.102 5.326 3.03 5.51s3.765-2.112 4.04-4.959c.276-2.938-1.102-5.326-3.03-5.51c-1.928-.183-3.765 2.113-4.04 4.96\" transform=\"translate(10)\"/><path fill=\"url(#logosLinuxTux5)\" d=\"M99.953 55.508c.276 2.388-.734 4.5-2.203 4.683c-1.47.184-2.847-1.653-3.123-4.132c-.275-2.388.735-4.5 2.204-4.683c1.47-.184 2.847 1.744 3.122 4.132\" transform=\"translate(10)\"/><path fill=\"url(#logosLinuxTux6)\" d=\"M71.027 145.684c6.52-14.785 20.386-40.772 20.662-60.883c0-15.978 47.843-19.835 51.7-3.856c3.856 15.978 13.59 39.853 19.834 51.424c6.245 11.478 24.335 48.118 5.051 80.074c-17.356 28.284-69.973 50.69-98.073-3.856c-9.55-18.917-7.806-42.333.826-62.903\" transform=\"translate(10)\"/><path fill=\"url(#logosLinuxTux7)\" d=\"M65.15 134.664c-5.601 10.56-17.172 38.293 11.112 53.445c30.395 16.162 30.303 49.312-6.245 33.517c-33.425-14.233-18.641-71.902-9.274-85.676c6.06-9.642 15.243-21.488 4.407-1.286\" transform=\"translate(10)\"/><path fill=\"#000\" stroke=\"#000\" stroke-width=\"1.25\" d=\"M79.925 122.727c-8.907 14.509-30.211 48.669-1.652 66.484c38.384 23.6 27.548 47.108-7.53 25.895c-49.404-29.568-5.97-89.257 13.774-112.03c22.59-25.529 4.316 4.683-4.592 19.65Z\"/><path fill=\"url(#logosLinuxTux8)\" d=\"M156.428 151.285c0 16.162-15.519 37.1-42.15 36.916c-27.456.183-39.118-20.754-39.118-36.916s18.182-29.293 40.588-29.293c22.498.092 40.68 13.132 40.68 29.293\" transform=\"translate(10)\"/><path fill=\"url(#logosLinuxTux9)\" d=\"M141.92 100.504c-.276 16.713-11.204 20.662-24.978 20.662s-23.784-2.48-24.978-20.662c0-11.387 11.203-17.998 24.978-17.998c13.774-.092 24.977 6.52 24.977 17.998\" transform=\"translate(10)\"/><path fill=\"url(#logosLinuxTuxa)\" d=\"M58.63 126.216c9-13.682 28.008-34.711 3.582 2.939c-19.835 31.038-7.346 50.965-.918 56.474c18.549 16.53 17.814 27.64 3.214 18.917c-31.314-18.641-24.794-50.047-5.878-78.33\" transform=\"translate(10)\"/><path fill=\"url(#logosLinuxTuxb)\" d=\"M188.936 131.818c-7.806-16.07-32.6-56.842 1.193-9.459c30.763 42.884 9.183 72.729 5.326 75.667c-3.856 2.939-16.804 8.908-13.04-1.469c3.858-10.377 22.958-30.028 6.52-64.74\" transform=\"translate(10)\"/><path fill=\"url(#logosLinuxTuxc)\" stroke=\"#e68c3f\" stroke-width=\"6.25\" d=\"M51.835 258.542c-20.57-10.928-50.414 2.112-39.578-27.457c2.204-6.704-3.214-16.805.275-23.325c4.133-7.989 13.04-6.244 18.366-11.57c5.234-5.51 8.54-15.06 18.366-13.59c9.734 1.468 16.254 13.406 23.049 28.099c5.05 10.468 22.865 25.253 21.672 37.007c-1.47 17.998-21.948 21.396-42.15 10.836Z\" transform=\"translate(10)\"/><path fill=\"url(#logosLinuxTuxd)\" d=\"M201.608 189.119c-3.122 5.877-16.162 15.335-24.886 12.856c-8.815-2.388-12.856-15.795-11.111-25.988c1.653-11.386 11.111-12.03 23.05-6.336c12.855 6.336 16.712 11.662 12.947 19.468\" transform=\"translate(10)\"/><path fill=\"url(#logosLinuxTuxe)\" stroke=\"#e68c3f\" stroke-width=\"6.25\" d=\"M194.445 253.49c15.06-18.273 48.578-14.508 25.988-39.577c-4.775-5.418-3.306-16.989-9.183-21.947c-6.887-6.061-14.509-1.102-21.488-4.224c-6.979-3.398-14.325-9.918-22.865-5.327c-8.54 4.684-9.459 16.805-10.285 32.783c-.735 11.479-11.203 30.671-5.602 41.231c8.081 16.346 29.11 14.142 43.435-2.938Z\" transform=\"translate(10)\"/><path fill=\"url(#logosLinuxTuxf)\" d=\"M187.925 229.064c23.325-34.435 5.97-34.16.092-36.823c-5.877-2.755-12.03-8.173-18.916-4.408c-6.888 3.857-7.255 13.775-7.439 26.814c-.275 9.367-8.08 25.07-3.397 33.793c5.693 10.193 19.467-4.591 29.66-19.376\" transform=\"translate(10)\"/><path fill=\"url(#logosLinuxTuxg)\" d=\"M47.06 234.023c-34.895-22.59-18.55-30.303-13.315-33.885c6.336-4.591 6.428-13.407 14.233-12.58c7.806.826 12.397 10.468 17.631 22.406c3.857 8.54 17.264 19.927 16.254 29.753c-1.285 11.57-19.743 3.948-34.803-5.694\" transform=\"translate(10)\"/><path fill=\"#000\" d=\"M209.588 188.843c-2.755 4.776-13.958 12.306-21.396 10.285c-7.622-1.928-11.112-12.672-9.55-20.753c1.377-9.183 9.55-9.642 19.834-5.05c10.928 4.958 14.326 9.182 11.112 15.518\"/><path fill=\"url(#logosLinuxTuxh)\" d=\"M192.058 186.18c-1.745 3.306-9.091 8.54-14.234 7.163c-5.142-1.377-7.713-8.815-6.887-14.417c.735-6.336 6.244-6.704 13.223-3.581c7.53 3.49 9.918 6.428 7.898 10.835\" transform=\"translate(10)\"/><path fill=\"url(#logosLinuxTuxi)\" stroke=\"#e68c3f\" stroke-width=\"3.75\" d=\"M97.107 66.344c3.673-3.398 12.58-13.774 29.477-2.939c3.122 2.02 5.693 2.204 11.662 4.775c12.03 4.96 6.336 16.897-6.52 20.937c-5.51 1.745-10.468 8.449-20.386 7.806c-8.54-.46-10.744-6.06-15.978-9.091c-9.275-5.234-10.652-12.305-5.602-16.07c5.051-3.765 6.98-5.143 7.347-5.418Z\" transform=\"translate(10)\"/><path stroke=\"#e68c3f\" stroke-width=\"2.5\" d=\"M148.43 75.986c-5.05.275-15.979 11.203-27.457 11.203s-18.366-10.652-20.11-10.652\"/><path fill=\"url(#logosLinuxTuxj)\" d=\"M102.8 65.426c1.837-1.653 7.622-6.153 15.244-1.562c1.653.919 3.306 1.929 5.693 3.306c4.867 2.847 2.48 6.98-3.398 9.55c-2.663 1.102-7.07 3.49-10.376 3.306c-3.673-.367-6.153-2.755-8.54-4.316c-4.5-2.938-4.224-5.418-2.112-7.346c1.56-1.47 3.305-2.847 3.49-2.938\" transform=\"translate(10)\"/></g></svg>', '2024-08-27 21:05:45', '2024-08-28 18:23:44'),
(115, 'consulta-sql', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 256 256\"><path fill=\"#022aed\" d=\"M48 120a12 12 0 0 0 12-12V44h76v48a12 12 0 0 0 12 12h48v4a12 12 0 1 0 24 0V88a12 12 0 0 0-3.51-8.48l-56-56A12 12 0 0 0 152 20H56a20 20 0 0 0-20 20v68a12 12 0 0 0 12 12m135-40h-23V57Zm53 128a12 12 0 0 1-12 12h-28a12 12 0 0 1-12-12v-56a12 12 0 0 1 24 0v44h16a12 12 0 0 1 12 12M91.78 196.8a24.7 24.7 0 0 1-11 18c-6 4-13.26 5.15-19.73 5.15a63.8 63.8 0 0 1-16.23-2.21a12 12 0 1 1 6.46-23.11c6.81 1.85 15 1.61 16.39.06a2.5 2.5 0 0 0 .21-.71c-1.94-1.23-6.82-2.64-9.88-3.53c-5.39-1.56-11-3.17-15.75-6.26c-7.62-4.92-11.21-12.45-10.1-21.19a24.44 24.44 0 0 1 10.68-17.76c6.07-4.09 14.17-5.83 24.1-5.17A69 69 0 0 1 79 142a12 12 0 0 1-6.1 23.21c-6.35-1.63-13.61-1.5-16.07-.33a80 80 0 0 0 7.92 2.59c5.47 1.58 11.67 3.37 16.8 6.82c7.78 5.24 11.45 13.24 10.23 22.51m76 2A43.2 43.2 0 0 0 172 180c0-22-16.15-40-36-40s-36 18-36 40s16.15 40 36 40a32.8 32.8 0 0 0 15.25-3.77l.27.26a12 12 0 0 0 17-17ZM124 180c0-8.67 5.5-16 12-16s12 7.33 12 16v.69a12 12 0 0 0-15.51 14.56C127.62 193.16 124 187 124 180\"/></svg>', '2024-08-28 05:51:49', '2024-08-28 18:09:06'),
(116, 'routes', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 16 16\"><g fill=\"none\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path stroke=\"#728ae4\" d=\"M4.5 4.5H12A1.5 1.5 0 0 1 13.5 6v.5m-7.5 7H2A1.5 1.5 0 0 1 .5 12V3.5a1 1 0 0 1 1-1h5a1 1 0 0 1 1 1v1\"/><path stroke=\"#48aa27\" d=\"M11.5 11.5v4m0-7.5v1.5m-1.5 6h3m-4.5-6v2h5.75l1.25-1l-1.25-1z\"/></g></svg>', '2024-08-29 12:28:54', '2024-08-29 12:28:54'),
(117, 'voyager', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#a1480c\" d=\"m2 11l2.05.1a7.96 7.96 0 0 1 3.2-5.54L6.13 3.84c-.27-.48-.13-1.09.37-1.37c.5-.27 1.09-.11 1.37.37l.93 1.82a8.1 8.1 0 0 1 6.4 0l.93-1.82c.28-.48.87-.64 1.37-.37c.5.28.64.89.37 1.37l-1.12 1.72a7.96 7.96 0 0 1 3.2 5.54L22 11a1 1 0 0 1 1 1a1 1 0 0 1-1 1l-2.05-.1a7.96 7.96 0 0 1-3.2 5.54l1.12 1.72c.27.48.13 1.09-.37 1.37c-.5.27-1.09.11-1.37-.37l-.93-1.82a8.1 8.1 0 0 1-6.4 0l-.93 1.82c-.28.48-.87.64-1.37.37c-.5-.28-.64-.89-.37-1.37l1.12-1.72a7.96 7.96 0 0 1-3.2-5.54L2 13a1 1 0 0 1-1-1a1 1 0 0 1 1-1m7.07.35c.13-.61.46-1.15.93-1.56L8.34 7.25a6 6 0 0 0-2.29 3.95zM12 9c.32 0 .62.05.9.14l1.38-2.69C13.58 6.16 12.81 6 12 6s-1.58.16-2.28.45l1.38 2.69c.28-.09.58-.14.9-.14m2.93 2.35l3.02-.15a6 6 0 0 0-2.29-3.95L14 9.79c.47.41.8.95.93 1.56m0 1.3c-.13.61-.46 1.15-.93 1.56l1.66 2.54a6 6 0 0 0 2.29-3.95zM12 15c-.32 0-.62-.05-.91-.14l-1.37 2.69c.7.29 1.47.45 2.28.45s1.58-.16 2.28-.45l-1.37-2.69c-.29.09-.59.14-.91.14m-2.93-2.35l-3.02.15c.22 1.6 1.06 3.01 2.29 3.95L10 14.21c-.47-.41-.8-.95-.93-1.56\"/></svg>', '2024-08-29 12:46:45', '2024-08-29 12:46:45'),
(118, 'middelware', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#0c3ed4\" d=\"M12 21v-2h7V5h-7V3h7q.825 0 1.413.588T21 5v14q0 .825-.587 1.413T19 21zm-2-4l-1.375-1.45l2.55-2.55H3v-2h8.175l-2.55-2.55L10 7l5 5z\"/></svg>', '2024-08-29 14:01:39', '2024-08-29 14:01:39'),
(119, 'image', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#df1616\" d=\"M5 21q-.825 0-1.412-.587T3 19V5q0-.825.588-1.412T5 3h14q.825 0 1.413.588T21 5v14q0 .825-.587 1.413T19 21zm1-4h12l-3.75-5l-3 4L9 13z\"/></svg>', '2024-08-31 17:26:32', '2024-08-31 17:26:32'),
(120, 'wordpress-plugin', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 16 16\"><g fill=\"none\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path stroke=\"#cad3f5\" d=\"m1.875 8l.686-2.743a1 1 0 0 1 .97-.757h10.938a1 1 0 0 1 .97 1.243l-.315 1.26M6 13.5H2.004A1.5 1.5 0 0 1 .5 12V3.5a1 1 0 0 1 1-1h5a1 1 0 0 1 1 1v1\"/><path stroke=\"#373ff0\" d=\"m8.518 15.5l1.015-1.016m3.969-5.968l-2 1.99m3.998.01l-1.998 2m-2.97-2.625l3.595 3.594l-.899.898c-.57.629-1.545.914-2.477.704c-.899-.202-1.589-.928-1.82-1.82a2.54 2.54 0 0 1 .703-2.478Z\"/></g></svg>', '2024-12-09 10:19:55', '2024-12-09 10:38:34'),
(121, 'comptabilitat', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 50 50\"><path fill=\"#daa5ea\" d=\"M41 1H9C6.8 1 5 2.8 5 5v40c0 2.2 1.8 4 4 4h32c2.2 0 4-1.8 4-4V5c0-2.2-1.8-4-4-4M17 41c0 1.1-.9 2-2 2h-4c-1.1 0-2-.9-2-2v-1c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2zm0-8c0 1.1-.9 2-2 2h-4c-1.1 0-2-.9-2-2v-1c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2zm0-8c0 1.1-.9 2-2 2h-4c-1.1 0-2-.9-2-2v-1c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2zm12 16c0 1.1-.9 2-2 2h-4c-1.1 0-2-.9-2-2v-1c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2zm0-8c0 1.1-.9 2-2 2h-4c-1.1 0-2-.9-2-2v-1c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2zm0-8c0 1.1-.9 2-2 2h-4c-1.1 0-2-.9-2-2v-1c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2zm12 16c0 1.1-.9 2-2 2h-4c-1.1 0-2-.9-2-2v-1c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2zm0-8c0 1.1-.9 2-2 2h-4c-1.1 0-2-.9-2-2v-1c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2zm0-8c0 1.1-.9 2-2 2h-4c-1.1 0-2-.9-2-2v-1c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2zm0-9c0 1.1-.9 2-2 2H11c-1.1 0-2-.9-2-2V8c0-1.1.9-2 2-2h28c1.1 0 2 .9 2 2z\"/></svg>', '2024-12-09 22:30:30', '2025-01-03 14:05:04'),
(122, 'windows', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 256 256\"><g fill=\"none\"><g clip-path=\"url(#skillIconsWindowsLight0)\"><path fill=\"#f4f2ed\" d=\"M196 0H60C26.863 0 0 26.863 0 60v136c0 33.137 26.863 60 60 60h136c33.137 0 60-26.863 60-60V60c0-33.137-26.863-60-60-60\"/><path fill=\"#00adef\" d=\"m40 65.663l70.968-9.665l.032 68.455l-70.934.404zm70.935 66.677l.055 68.515l-70.934-9.753l-.004-59.221zm8.602-77.607L213.636 41v82.582l-94.099.748zm94.121 78.251l-.022 82.211l-94.099-13.281l-.131-69.083z\"/></g><defs><clipPath id=\"skillIconsWindowsLight0\"><path fill=\"#fff\" d=\"M0 0h256v256H0z\"/></clipPath></defs></g></svg>', '2024-12-18 18:32:25', '2024-12-18 18:32:25'),
(123, 'backup', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 36 36\"><path fill=\"#63d73b\" d=\"m18 19.84l6.38-6.35A1 1 0 1 0 23 12.08L19 16V4a1 1 0 1 0-2 0v12l-4-3.95a1 1 0 0 0-1.41 1.42Z\" class=\"clr-i-solid clr-i-solid-path-1\"/><path fill=\"#63d73b\" d=\"m19.41 21.26l-.74.74h15.26c-.17-.57-.79-2.31-3.09-8.63A1.94 1.94 0 0 0 28.93 12h-2.38a3 3 0 0 1-.76 2.92Z\" class=\"clr-i-solid clr-i-solid-path-2\"/><path fill=\"#63d73b\" d=\"m16.58 21.26l-6.38-6.35A3 3 0 0 1 9.44 12H7.07a1.92 1.92 0 0 0-1.9 1.32c-2.31 6.36-2.93 8.11-3.1 8.68h15.26Z\" class=\"clr-i-solid clr-i-solid-path-3\"/><path fill=\"#63d73b\" d=\"M2 24v6a2 2 0 0 0 2 2h28a2 2 0 0 0 2-2v-6Zm28 4h-4v-2h4Z\" class=\"clr-i-solid clr-i-solid-path-4\"/><path fill=\"none\" d=\"M0 0h36v36H0z\"/></svg>', '2024-12-18 18:33:44', '2024-12-18 18:33:44'),
(125, 'migrations', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 32 32\"><path fill=\"#f4a308\" d=\"M26 2H6a2 2 0 0 0-2 2v4a2 2 0 0 0 2 2h9v6.17l-2.59-2.58L11 15l5 5l5-5l-1.41-1.41L17 16.17V10h9a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2M6 4h4v4H6zm20 4H12V4h14zm0 14H6a2 2 0 0 0-2 2v4a2 2 0 0 0 2 2h20a2 2 0 0 0 2-2v-4a2 2 0 0 0-2-2M6 24h14v4H6zm20 4h-4v-4h4z\"/></svg>', '2025-01-19 19:48:09', '2025-01-19 19:48:09'),
(126, 'llibreries', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 2048 2048\"><path fill=\"#f4a308\" d=\"M608 128q45 0 77 9t58 24t46 31t40 31t44 23t55 10h992q27 0 50 10t40 27t28 41t10 50v451l-128-128V384H928q-31 0-54 9t-44 24t-41 31t-45 31t-58 23t-78 10H128v1152h640v128H0V256q0-27 10-50t27-40t41-28t50-10zm0 256q24 0 42-4t33-13t29-20t32-27q-17-15-31-26t-30-20t-33-13t-42-5H128v128zm1019 256l421 421v987H896V640zm37 384h165l-165-165zm256 128h-384V768h-512v1152h896zm-768 512h512v128h-512zm256-128h-256v-128h256zm0-256h-256v-128h256zm0-256h-256V896h256z\"/></svg>', '2025-01-20 04:30:27', '2025-01-20 04:30:27'),
(127, 'tables', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 2048 2048\"><path fill=\"#f4a308\" d=\"M608 128q45 0 77 9t58 24t46 31t40 31t44 23t55 10h992q27 0 50 10t40 27t28 41t10 50v451l-128-128V384H928q-31 0-54 9t-44 24t-41 31t-45 31t-58 23t-78 10H128v1152h640v128H0V256q0-27 10-50t27-40t41-28t50-10zm0 256q24 0 42-4t33-13t29-20t32-27q-17-15-31-26t-30-20t-33-13t-42-5H128v128zm1019 256l421 421v987H896V640zm37 384h165l-165-165zm256 128h-384V768h-512v1152h896zm-768 512h512v128h-512zm256-128h-256v-128h256zm0-256h-256v-128h256zm0-256h-256V896h256z\"/></svg>', '2025-01-20 04:38:54', '2025-01-20 04:38:54'),
(128, 'resource', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 32 32\"><path fill=\"#f4a308\" d=\"M22 24H10a2 2 0 0 1-2-2V10a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2M10 10v12h12V10zM8 30H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h4v2H4v24h4zm20 0h-4v-2h4V4h-4V2h4a2 2 0 0 1 2 2v24a2 2 0 0 1-2 2\"/></svg>', '2025-01-20 12:34:17', '2025-01-20 12:34:17'),
(129, 'formularis', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#08bef4\" d=\"M17 20.475q-.214 0-.357-.144t-.143-.356v-2.5H14q-.213 0-.356-.144t-.144-.357t.144-.356t.356-.143h2.5v-2.5q0-.212.144-.356t.357-.144t.356.144t.143.356v2.5H20q.213 0 .356.144t.144.357t-.144.356t-.356.143h-2.5v2.5q0 .213-.144.356t-.357.144M7 17.5q-.213 0-.356-.144t-.144-.357t.144-.356T7 16.5h4.289q.212 0 .356.144t.143.357t-.143.356t-.357.143zm0-4q-.213 0-.356-.144t-.144-.357t.144-.356T7 12.5h4.289q.212 0 .356.144t.143.357t-.143.356t-.357.143zm0-4q-.213 0-.356-.144T6.5 8.999t.144-.356T7 8.5h11q.213 0 .356.144t.144.357t-.144.356T18 9.5zm0-4q-.213 0-.356-.144T6.5 4.999t.144-.356T7 4.5h11q.213 0 .356.144t.144.357t-.144.356T18 5.5zm-3 0q-.214 0-.357-.144T3.5 4.999t.144-.356t.357-.143t.356.144t.143.357t-.144.356t-.357.143m0 4q-.213 0-.356-.144T3.5 8.999t.144-.356t.357-.143t.356.144t.143.357t-.144.356t-.357.143m0 4q-.213 0-.356-.144t-.143-.357t.144-.356t.357-.143t.356.144t.143.357t-.144.356t-.357.143m0 4q-.213 0-.356-.144t-.143-.357t.144-.356t.357-.143t.356.144t.143.357t-.144.356t-.357.143\"/></svg>', '2025-01-24 08:37:12', '2025-01-24 08:37:12'),
(131, 'laravel12.test', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><g fill=\"none\" fill-rule=\"evenodd\"><path d=\"m12.594 23.258l-.012.002l-.071.035l-.02.004l-.014-.004l-.071-.036q-.016-.004-.024.006l-.004.01l-.017.428l.005.02l.01.013l.104.074l.015.004l.012-.004l.104-.074l.012-.016l.004-.017l-.017-.427q-.004-.016-.016-.018m.264-.113l-.014.002l-.184.093l-.01.01l-.003.011l.018.43l.005.012l.008.008l.201.092q.019.005.029-.008l.004-.014l-.034-.614q-.005-.019-.02-.022m-.715.002a.02.02 0 0 0-.027.006l-.006.014l-.034.614q.001.018.017.024l.015-.002l.201-.093l.01-.008l.003-.011l.018-.43l-.003-.012l-.01-.01z\"/><path fill=\"#a25124\" d=\"M13 3a1 1 0 1 0-2 0v1.062A7.96 7.96 0 0 0 7.094 5.68l-.75-.75a1 1 0 0 0-1.415 1.413l.751.751A7.96 7.96 0 0 0 4.062 11H3a1 1 0 1 0 0 2h1.062a7.96 7.96 0 0 0 1.618 3.906l-.751.751a1 1 0 1 0 1.414 1.414l.751-.751A7.96 7.96 0 0 0 11 19.938V21a1 1 0 1 0 2 0v-1.062a7.96 7.96 0 0 0 3.906-1.618l.751.751a1 1 0 0 0 1.414-1.414l-.751-.751A7.96 7.96 0 0 0 19.938 13H21a1 1 0 1 0 0-2h-1.062a7.96 7.96 0 0 0-1.618-3.906l.751-.75a1 1 0 0 0-1.414-1.415l-.751.751A7.96 7.96 0 0 0 13 4.062zm2.477 4.11A6 6 0 0 0 13 6.082v2.043c.367.094.714.24 1.032.428l1.445-1.445Zm-2.073 3.466l.01.01l.01.01a2 2 0 1 1-2.85.002l.012-.012l.012-.012c.36-.355.856-.574 1.402-.574c.547 0 1.043.22 1.404.576m2.042-.608l1.445-1.444A6 6 0 0 1 17.917 11h-2.043a4 4 0 0 0-.428-1.032m-6.922 6.923A6 6 0 0 0 11 17.917v-2.043a4 4 0 0 1-1.032-.428zm.03-2.859A4 4 0 0 1 8.126 13H6.083a6 6 0 0 0 1.026 2.477zM6.083 11h2.043a4 4 0 0 1 .428-1.032L7.109 8.524A6 6 0 0 0 6.083 11m11.834 2h-2.043c-.095.367-.24.714-.428 1.032l1.445 1.445A6 6 0 0 0 17.917 13m-3.885 2.446a4 4 0 0 1-1.032.428v2.043a6 6 0 0 0 2.476-1.026zM9.968 8.554L8.523 7.109A6 6 0 0 1 11 6.083v2.043a4 4 0 0 0-1.032.428\"/></g></svg>', '2025-03-21 06:08:45', '2025-03-21 06:08:45'),
(132, 'datatables', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"none\" stroke=\"#41addf\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"2\" d=\"M3 15v3a1 1 0 0 0 1 1h4v-4m-5 0v-4m0 4h5m-5-4V6a1 1 0 0 1 1-1h16a1 1 0 0 1 1 1v1.99M3 11h5v4m9.47 4.172l-.869-1.439l-2.816-.235l-2.573-4.257l1.487-2.836l1.444 2.389a1.353 1.353 0 1 0 2.316-1.4l-1.444-2.39h3.136l2.61 4.278l-1.072 2.585l.87 1.438\"/></svg>', '2025-03-21 08:53:33', '2025-03-21 08:53:33'),
(133, 'slider', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 56 56\"><path fill=\"#41addf\" d=\"M12.625 35.5H43.4c4.546 0 6.96-2.32 6.96-6.867v-15.82c0-4.547-2.414-6.868-6.96-6.868H12.624c-4.336 0-6.984 2.32-6.984 6.868v15.82c0 4.547 2.414 6.867 6.984 6.867m-.047-3.516c-2.086 0-3.164-1.101-3.164-3.164V12.625c0-2.062 1.078-3.14 3.164-3.14h30.867c2.063 0 3.141 1.078 3.141 3.14V28.82c0 2.063-1.078 3.164-3.14 3.164Zm23.578 18.07c2.438 0 4.524-1.57 5.297-3.75h7.125c.961 0 1.781-.82 1.781-1.874c0-1.078-.82-1.899-1.781-1.899h-7.125a5.62 5.62 0 0 0-5.297-3.726a5.67 5.67 0 0 0-5.32 3.726H7.539c-1.055 0-1.898.82-1.898 1.899c0 1.054.843 1.875 1.898 1.875h23.297a5.67 5.67 0 0 0 5.32 3.75m0-2.882a2.716 2.716 0 0 1-2.742-2.742c0-1.57 1.195-2.766 2.742-2.766s2.742 1.195 2.742 2.766a2.716 2.716 0 0 1-2.742 2.742\"/></svg>', '2025-03-21 09:49:02', '2025-03-21 09:49:02'),
(134, 'blog', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 32 32\"><path fill=\"#41addf\" d=\"M4 24h10v2H4zm0-6h10v2H4zm22-4H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h20a2 2 0 0 1 2 2v6a2 2 0 0 1-2 2M6 6v6h20V6zm20 22h-6a2 2 0 0 1-2-2v-6a2 2 0 0 1 2-2h6a2 2 0 0 1 2 2v6a2 2 0 0 1-2 2m-6-8v6h6v-6z\"/></svg>', '2025-03-21 13:29:10', '2025-03-21 13:29:10'),
(135, 'larpreline.test', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"none\" stroke=\"#3f6fe8\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"2\" d=\"m14 10.8l4.5 2.5M5.5 1L1 3.5V18l9 5l8.5-4.7v-10L23 5.8v5L10 18l-4.5-2.5V6L10 3.5ZM1 3.5L5.5 6m0 9.5l8.5-4.7v-5l4.5-2.5L23 5.8M10 3.5V13m4-7.2l4.5 2.5M10 18v5\"/></svg>', '2025-03-22 08:19:09', '2025-03-22 08:19:09'),
(136, 'show_post', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 24 24\"><path fill=\"#3f6fe8\" d=\"M15 3H5c-1.11 0-2 .89-2 2v5.82a6.505 6.505 0 0 1 9.1.08a6.525 6.525 0 0 1 0 9.2c-.36.35-.75.64-1.16.9H19c1.11 0 2-.89 2-2V9zm-1 7V4.5l5.5 5.5zm-6.5 1C5 11 3 13 3 15.5c0 .88.25 1.71.69 2.4L.61 21L2 22.39l3.12-3.07c.69.43 1.51.68 2.38.68c2.5 0 4.5-2 4.5-4.5S10 11 7.5 11m0 7a2.5 2.5 0 0 1 0-5a2.5 2.5 0 0 1 0 5\"/></svg>', '2025-03-22 17:24:07', '2025-03-22 17:24:07'),
(137, 'PDO', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"2em\" height=\"2em\" viewBox=\"0 0 512 512\"><path fill=\"#3f6fe8\" d=\"M304 136H128v152h80v88h176V224h-80ZM160 256v-88h112v88zm192 0v88H240v-56h64v-32Z\"/><path fill=\"#3f6fe8\" d=\"M400 48H112V16H16v96h32v288H16v96h96v-32h288v32h96v-96h-32V112h32V16h-96ZM48 48h32v32H48Zm32 416H48v-32h32Zm384 0h-32v-32h32ZM432 48h32v32h-32Zm0 352h-32v32H112v-32H80V112h32V80h288v32h32Z\"/></svg>', '2025-03-24 10:57:45', '2025-03-24 10:57:45');

-- --------------------------------------------------------

--
-- Estructura de la taula `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'joan', 'joanpuigbertran@gmail.com', 'avatars/01KAF3WNYKCFD8B5TBA8GDNJWH.jpg', NULL, '$2y$12$ysvPoahnL9XhfvmoySqD9er.pMeTmy8cRWf/JF70Dt6M5wHJy525C', '8txZTErdjwGCFIutkAGG5e9B7eyLgYXFSwFiS6idxJ3c38qHVBDzbo5Z8p1f', '2025-08-10 00:52:30', '2025-11-19 22:31:17'),
(2, 'Administrador', 'admin@comptabilitat.local', NULL, '2025-11-19 22:14:06', '$2y$12$5zcEjtlbZ9dx.yVh8aZKwuUySA3u6MgSI45kxvcnbicb199znrkny', NULL, '2025-11-19 22:14:06', '2025-11-19 22:14:06'),
(3, 'Editor', 'editor@comptabilitat.local', NULL, '2025-11-19 22:14:06', '$2y$12$nNj3YMkis9VciTClP.qMM.YNAN4yeIHyngSntxkG4AMM5tCPt4yYS', NULL, '2025-11-19 22:14:06', '2025-11-19 22:14:06'),
(4, 'Visualitzador', 'viewer@comptabilitat.local', NULL, '2025-11-19 22:14:06', '$2y$12$HbjyuAOzZtjSK9eXkqaskuJeNZA6GHFUocG51fZLpW/aSPiCv2Ca2', NULL, '2025-11-19 22:14:06', '2025-11-19 22:14:06');

-- --------------------------------------------------------

--
-- Estructura de la taula `wp_contabilidad_categoria_clientes`
--

CREATE TABLE `wp_contabilidad_categoria_clientes` (
  `id` int NOT NULL,
  `nombre_categoria` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Bolcament de dades per a la taula `wp_contabilidad_categoria_clientes`
--

INSERT INTO `wp_contabilidad_categoria_clientes` (`id`, `nombre_categoria`, `created_at`, `updated_at`) VALUES
(1, 'Particular', '2025-08-11 13:27:47', '2025-08-11 13:27:47'),
(2, 'Empresa', '2025-08-11 13:27:47', '2025-08-11 13:27:47'),
(3, 'VIP', '2025-08-11 13:27:47', '2025-08-11 13:27:47');

-- --------------------------------------------------------

--
-- Estructura de la taula `wp_contabilidad_categoria_productos`
--

CREATE TABLE `wp_contabilidad_categoria_productos` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre_categoria` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `wp_contabilidad_categoria_productos`
--

INSERT INTO `wp_contabilidad_categoria_productos` (`id`, `nombre_categoria`, `created_at`, `updated_at`) VALUES
(5, 'php', '2025-11-19 20:51:22', '2025-11-19 20:51:22'),
(6, 'laravel', '2025-11-19 20:52:17', '2025-11-19 20:52:17'),
(7, 'wordpress', '2025-11-19 20:52:24', '2025-11-19 20:52:24'),
(8, 'codeigniter', '2025-11-19 20:52:33', '2025-11-19 20:52:33'),
(9, 'phyton', '2025-11-19 20:52:43', '2025-11-19 20:52:43'),
(10, 'react', '2025-11-19 20:52:57', '2025-11-19 20:52:57');

-- --------------------------------------------------------

--
-- Estructura de la taula `wp_contabilidad_clientes`
--

CREATE TABLE `wp_contabilidad_clientes` (
  `id` mediumint UNSIGNED NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `direccion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `nif` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `telefono` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `id_categoria_cliente` int NOT NULL DEFAULT '1',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `notas` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Bolcament de dades per a la taula `wp_contabilidad_clientes`
--

INSERT INTO `wp_contabilidad_clientes` (`id`, `nombre`, `direccion`, `nif`, `telefono`, `email`, `id_categoria_cliente`, `img`, `notas`, `created_at`, `updated_at`) VALUES
(1, 'Clifton Huels', '97431 Oren Tunnel\nDemariofort, VA 07835-9127', '17418660R', '419.315.5061', 'drake14@gmail.com', 3, 'client1.jpg', 'Client fictici generat.', '2025-08-11 13:27:47', '2025-08-11 13:27:47'),
(2, 'Ezra Beier MD', '9209 Lurline Vista Suite 372\nGreenfelderborough, NH 63632', '41514828N', '320-796-0864', 'sadie.tremblay@hotmail.com', 1, 'client2.jpg', 'Client fictici generat.', '2025-08-11 13:27:47', '2025-08-11 13:27:47'),
(3, 'Candido Bernhard', '47747 Wisoky Extension\nPort Yasminebury, AL 93251-9350', '38504806T', '1-480-743-1023', 'philip94@yahoo.com', 1, 'client3.jpg', 'Client fictici generat.', '2025-08-11 13:27:47', '2025-08-11 13:27:47'),
(4, 'Mackenzie Von', '519 Gussie Rapid\nPowlowskiview, TX 63735', '30377435R', '1-440-846-5203', 'feeney.yadira@langosh.com', 3, 'client4.jpg', 'Client fictici generat.', '2025-08-11 13:27:47', '2025-08-11 13:27:47'),
(5, 'Deontae Zemlak', '4275 Larson Burgs Suite 220\nLake Alek, MA 03090', '99206699V', '830.850.0295', 'santos42@waelchi.net', 3, 'client5.jpg', 'Client fictici generat.', '2025-08-11 13:27:47', '2025-08-11 13:27:47'),
(6, 'Allen Kilback', '50629 Thelma Bridge\nPort Gertrude, TX 69438-3454', '32687961Q', '+14056364738', 'ritchie.sage@yahoo.com', 3, 'client6.jpg', 'Client fictici generat.', '2025-08-11 13:27:47', '2025-08-11 13:27:47'),
(7, 'Ms. Georgiana Schumm', '7463 Swift Village Suite 161\nEast Damaris, MD 25134', '09959438R', '+1.505.660.3937', 'pietro29@kreiger.info', 2, 'client7.jpg', 'Client fictici generat.', '2025-08-11 13:27:47', '2025-08-11 13:27:47'),
(8, 'Shirley Mayert', '50778 Lockman Valley\nSouth Olen, CT 66846', '42994817C', '252.945.2217', 'victor.okuneva@yahoo.com', 3, 'client8.jpg', 'Client fictici generat.', '2025-08-11 13:27:47', '2025-08-11 13:27:47'),
(9, 'Krista Gulgowski', '9425 Klocko Trafficway Apt. 287\nNorwoodmouth, WA 00477', '32059688B', '(320) 260-3013', 'maddison.dach@yahoo.com', 1, 'client9.jpg', 'Client fictici generat.', '2025-08-11 13:27:47', '2025-08-11 13:27:47'),
(10, 'Elissa Blanda Jr.', '92517 Emmy Inlet\nMarcoshaven, FL 90348', '90146029J', '+1-518-353-1302', 'sheldon46@hotmail.com', 3, 'client10.jpg', 'Client fictici generat.', '2025-08-11 13:27:47', '2025-08-11 13:27:47');

-- --------------------------------------------------------

--
-- Estructura de la taula `wp_contabilidad_compras`
--

CREATE TABLE `wp_contabilidad_compras` (
  `id` mediumint UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `proveedor_id` mediumint NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `iva_porcentaje` decimal(5,2) NOT NULL,
  `iva_monto` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `notas` text COLLATE utf8mb4_unicode_ci,
  `fecha_creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `empleado_id` mediumint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `wp_contabilidad_compras`
--

INSERT INTO `wp_contabilidad_compras` (`id`, `fecha`, `proveedor_id`, `subtotal`, `iva_porcentaje`, `iva_monto`, `total`, `created_at`, `updated_at`, `notas`, `fecha_creacion`, `empleado_id`) VALUES
(1, '2023-10-27', 2, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'Compra 1', '2025-11-19 20:39:13', NULL),
(2, '2023-11-16', 4, 10800.00, 21.00, 2268.00, 13068.00, NULL, NULL, 'Compra 2', '2025-11-19 20:39:13', NULL),
(3, '2023-07-26', 4, 30000.00, 21.00, 6300.00, 36300.00, NULL, NULL, 'Compra 3', '2025-11-19 20:39:13', NULL),
(4, '2023-04-10', 5, 32400.00, 21.00, 6804.00, 39204.00, NULL, NULL, 'Compra 4', '2025-11-19 20:39:13', NULL),
(5, '2023-05-24', 2, 30000.00, 21.00, 6300.00, 36300.00, NULL, NULL, 'Compra 5', '2025-11-19 20:39:13', NULL),
(6, '2023-12-15', 4, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'Compra 6', '2025-11-19 20:39:13', NULL),
(7, '2023-03-06', 1, 42000.00, 21.00, 8820.00, 50820.00, NULL, NULL, 'Compra 7', '2025-11-19 20:39:13', NULL),
(8, '2023-10-04', 4, 50400.00, 21.00, 10584.00, 60984.00, NULL, NULL, 'Compra 8', '2025-11-19 20:39:13', NULL),
(9, '2023-01-10', 4, 28800.00, 21.00, 6048.00, 34848.00, NULL, NULL, 'Compra 9', '2025-11-19 20:39:13', NULL),
(10, '2023-08-05', 1, 42000.00, 21.00, 8820.00, 50820.00, NULL, NULL, 'Compra 10', '2025-11-19 20:39:13', NULL),
(11, '2023-09-08', 5, 36000.00, 21.00, 7560.00, 43560.00, NULL, NULL, 'Compra 11', '2025-11-19 20:39:13', NULL),
(12, '2023-04-22', 1, 55200.00, 21.00, 11592.00, 66792.00, NULL, NULL, 'Compra 12', '2025-11-19 20:39:13', NULL),
(13, '2023-02-27', 4, 20400.00, 21.00, 4284.00, 24684.00, NULL, NULL, 'Compra 13', '2025-11-19 20:39:13', NULL),
(14, '2023-09-03', 4, 63600.00, 21.00, 13356.00, 76956.00, NULL, NULL, 'Compra 14', '2025-11-19 20:39:13', NULL),
(15, '2023-10-01', 4, 10800.00, 21.00, 2268.00, 13068.00, NULL, NULL, 'Compra 15', '2025-11-19 20:39:13', NULL),
(16, '2023-11-01', 2, 34800.00, 21.00, 7308.00, 42108.00, NULL, NULL, 'Compra 16', '2025-11-19 20:39:13', NULL),
(17, '2023-07-27', 2, 51600.00, 21.00, 10836.00, 62436.00, NULL, NULL, 'Compra 17', '2025-11-19 20:39:13', NULL),
(18, '2023-08-23', 1, 30000.00, 21.00, 6300.00, 36300.00, NULL, NULL, 'Compra 18', '2025-11-19 20:39:13', NULL),
(19, '2023-01-04', 1, 37200.00, 21.00, 7812.00, 45012.00, NULL, NULL, 'Compra 19', '2025-11-19 20:39:13', NULL),
(20, '2023-05-02', 4, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'Compra 20', '2025-11-19 20:39:13', NULL),
(21, '2023-12-05', 4, 30000.00, 21.00, 6300.00, 36300.00, NULL, NULL, 'Compra 21', '2025-11-19 20:39:13', NULL),
(22, '2023-09-20', 1, 8400.00, 21.00, 1764.00, 10164.00, NULL, NULL, 'Compra 22', '2025-11-19 20:39:13', NULL),
(23, '2023-06-04', 1, 50400.00, 21.00, 10584.00, 60984.00, NULL, NULL, 'Compra 23', '2025-11-19 20:39:13', NULL),
(24, '2023-07-17', 5, 19200.00, 21.00, 4032.00, 23232.00, NULL, NULL, 'Compra 24', '2025-11-19 20:39:13', NULL),
(25, '2023-08-03', 1, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'Compra 25', '2025-11-19 20:39:13', NULL),
(26, '2023-10-18', 4, 8400.00, 21.00, 1764.00, 10164.00, NULL, NULL, 'Compra 26', '2025-11-19 20:39:13', NULL),
(27, '2023-08-24', 1, 13200.00, 21.00, 2772.00, 15972.00, NULL, NULL, 'Compra 27', '2025-11-19 20:39:13', NULL),
(28, '2023-12-12', 3, 22800.00, 21.00, 4788.00, 27588.00, NULL, NULL, 'Compra 28', '2025-11-19 20:39:13', NULL),
(29, '2023-07-18', 4, 25200.00, 21.00, 5292.00, 30492.00, NULL, NULL, 'Compra 29', '2025-11-19 20:39:13', NULL),
(30, '2023-02-08', 3, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'Compra 30', '2025-11-19 20:39:13', NULL),
(31, '2023-01-28', 4, 37200.00, 21.00, 7812.00, 45012.00, NULL, NULL, 'Compra 31', '2025-11-19 20:39:13', NULL),
(32, '2023-12-02', 2, 44400.00, 21.00, 9324.00, 53724.00, NULL, NULL, 'Compra 32', '2025-11-19 20:39:13', NULL),
(33, '2023-09-02', 3, 22800.00, 21.00, 4788.00, 27588.00, NULL, NULL, 'Compra 33', '2025-11-19 20:39:13', NULL),
(34, '2023-09-04', 2, 14400.00, 21.00, 3024.00, 17424.00, NULL, NULL, 'Compra 34', '2025-11-19 20:39:13', NULL),
(35, '2023-01-28', 4, 9600.00, 21.00, 2016.00, 11616.00, NULL, NULL, 'Compra 35', '2025-11-19 20:39:13', NULL),
(36, '2023-03-02', 5, 39600.00, 21.00, 8316.00, 47916.00, NULL, NULL, 'Compra 36', '2025-11-19 20:39:13', NULL),
(37, '2023-07-13', 3, 7200.00, 21.00, 1512.00, 8712.00, NULL, NULL, 'Compra 37', '2025-11-19 20:39:13', NULL),
(38, '2023-02-24', 5, 13200.00, 21.00, 2772.00, 15972.00, NULL, NULL, 'Compra 38', '2025-11-19 20:39:13', NULL),
(39, '2023-07-21', 1, 30000.00, 21.00, 6300.00, 36300.00, NULL, NULL, 'Compra 39', '2025-11-19 20:39:13', NULL),
(40, '2023-07-25', 2, 36000.00, 21.00, 7560.00, 43560.00, NULL, NULL, 'Compra 40', '2025-11-19 20:39:13', NULL),
(41, '2023-12-18', 3, 27600.00, 21.00, 5796.00, 33396.00, NULL, NULL, 'Compra 41', '2025-11-19 20:39:13', NULL),
(42, '2023-10-24', 3, 56400.00, 21.00, 11844.00, 68244.00, NULL, NULL, 'Compra 42', '2025-11-19 20:39:13', NULL),
(43, '2023-12-27', 4, 10800.00, 21.00, 2268.00, 13068.00, NULL, NULL, 'Compra 43', '2025-11-19 20:39:13', NULL),
(44, '2023-08-05', 5, 39600.00, 21.00, 8316.00, 47916.00, NULL, NULL, 'Compra 44', '2025-11-19 20:39:13', NULL),
(45, '2023-03-02', 1, 42000.00, 21.00, 8820.00, 50820.00, NULL, NULL, 'Compra 45', '2025-11-19 20:39:13', NULL),
(46, '2023-03-21', 1, 38400.00, 21.00, 8064.00, 46464.00, NULL, NULL, 'Compra 46', '2025-11-19 20:39:13', NULL),
(47, '2023-09-14', 5, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'Compra 47', '2025-11-19 20:39:13', NULL),
(48, '2023-06-18', 3, 19200.00, 21.00, 4032.00, 23232.00, NULL, NULL, 'Compra 48', '2025-11-19 20:39:13', NULL),
(49, '2023-05-01', 4, 9600.00, 21.00, 2016.00, 11616.00, NULL, NULL, 'Compra 49', '2025-11-19 20:39:13', NULL),
(50, '2023-07-25', 5, 37200.00, 21.00, 7812.00, 45012.00, NULL, NULL, 'Compra 50', '2025-11-19 20:39:13', NULL),
(51, '2023-06-15', 3, 30000.00, 21.00, 6300.00, 36300.00, NULL, NULL, 'Compra 51', '2025-11-19 20:39:13', NULL),
(52, '2023-11-09', 2, 32400.00, 21.00, 6804.00, 39204.00, NULL, NULL, 'Compra 52', '2025-11-19 20:39:13', NULL),
(53, '2023-04-10', 5, 57600.00, 21.00, 12096.00, 69696.00, NULL, NULL, 'Compra 53', '2025-11-19 20:39:13', NULL),
(54, '2023-10-15', 5, 15600.00, 21.00, 3276.00, 18876.00, NULL, NULL, 'Compra 54', '2025-11-19 20:39:13', NULL),
(55, '2023-04-04', 1, 60000.00, 21.00, 12600.00, 72600.00, NULL, NULL, 'Compra 55', '2025-11-19 20:39:13', NULL),
(56, '2023-05-04', 2, 37200.00, 21.00, 7812.00, 45012.00, NULL, NULL, 'Compra 56', '2025-11-19 20:39:13', NULL),
(57, '2023-08-15', 3, 39600.00, 21.00, 8316.00, 47916.00, NULL, NULL, 'Compra 57', '2025-11-19 20:39:13', NULL),
(58, '2023-11-13', 1, 42000.00, 21.00, 8820.00, 50820.00, NULL, NULL, 'Compra 58', '2025-11-19 20:39:13', NULL),
(59, '2023-01-23', 3, 56400.00, 21.00, 11844.00, 68244.00, NULL, NULL, 'Compra 59', '2025-11-19 20:39:13', NULL),
(60, '2023-03-16', 3, 26400.00, 21.00, 5544.00, 31944.00, NULL, NULL, 'Compra 60', '2025-11-19 20:39:13', NULL),
(61, '2024-05-08', 2, 28800.00, 21.00, 6048.00, 34848.00, NULL, NULL, 'Compra 61', '2025-11-19 20:39:13', NULL),
(62, '2024-12-11', 4, 30000.00, 21.00, 6300.00, 36300.00, NULL, NULL, 'Compra 62', '2025-11-19 20:39:13', NULL),
(63, '2024-11-09', 3, 34800.00, 21.00, 7308.00, 42108.00, NULL, NULL, 'Compra 63', '2025-11-19 20:39:13', NULL),
(64, '2024-04-01', 4, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'Compra 64', '2025-11-19 20:39:13', NULL),
(65, '2024-07-25', 3, 19200.00, 21.00, 4032.00, 23232.00, NULL, NULL, 'Compra 65', '2025-11-19 20:39:13', NULL),
(66, '2024-04-12', 1, 61200.00, 21.00, 12852.00, 74052.00, NULL, NULL, 'Compra 66', '2025-11-19 20:39:13', NULL),
(67, '2024-03-04', 5, 19200.00, 21.00, 4032.00, 23232.00, NULL, NULL, 'Compra 67', '2025-11-19 20:39:13', NULL),
(68, '2024-07-26', 2, 16800.00, 21.00, 3528.00, 20328.00, NULL, NULL, 'Compra 68', '2025-11-19 20:39:13', NULL),
(69, '2024-01-25', 4, 48000.00, 21.00, 10080.00, 58080.00, NULL, NULL, 'Compra 69', '2025-11-19 20:39:13', NULL),
(70, '2024-08-14', 2, 49200.00, 21.00, 10332.00, 59532.00, NULL, NULL, 'Compra 70', '2025-11-19 20:39:13', NULL),
(71, '2024-11-21', 1, 48000.00, 21.00, 10080.00, 58080.00, NULL, NULL, 'Compra 71', '2025-11-19 20:39:13', NULL),
(72, '2024-09-13', 1, 10800.00, 21.00, 2268.00, 13068.00, NULL, NULL, 'Compra 72', '2025-11-19 20:39:13', NULL),
(73, '2024-11-24', 4, 9600.00, 21.00, 2016.00, 11616.00, NULL, NULL, 'Compra 73', '2025-11-19 20:39:13', NULL),
(74, '2024-03-11', 2, 15600.00, 21.00, 3276.00, 18876.00, NULL, NULL, 'Compra 74', '2025-11-19 20:39:13', NULL),
(75, '2024-05-22', 3, 10800.00, 21.00, 2268.00, 13068.00, NULL, NULL, 'Compra 75', '2025-11-19 20:39:13', NULL),
(76, '2024-10-04', 5, 16800.00, 21.00, 3528.00, 20328.00, NULL, NULL, 'Compra 76', '2025-11-19 20:39:13', NULL),
(77, '2024-08-19', 3, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'Compra 77', '2025-11-19 20:39:13', NULL),
(78, '2024-04-21', 1, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'Compra 78', '2025-11-19 20:39:13', NULL),
(79, '2024-01-17', 2, 28800.00, 21.00, 6048.00, 34848.00, NULL, NULL, 'Compra 79', '2025-11-19 20:39:13', NULL),
(80, '2024-08-20', 2, 69600.00, 21.00, 14616.00, 84216.00, NULL, NULL, 'Compra 80', '2025-11-19 20:39:13', NULL),
(81, '2024-05-23', 1, 51600.00, 21.00, 10836.00, 62436.00, NULL, NULL, 'Compra 81', '2025-11-19 20:39:13', NULL),
(82, '2024-04-16', 5, 45600.00, 21.00, 9576.00, 55176.00, NULL, NULL, 'Compra 82', '2025-11-19 20:39:13', NULL),
(83, '2024-11-14', 5, 44400.00, 21.00, 9324.00, 53724.00, NULL, NULL, 'Compra 83', '2025-11-19 20:39:13', NULL),
(84, '2024-06-09', 2, 16800.00, 21.00, 3528.00, 20328.00, NULL, NULL, 'Compra 84', '2025-11-19 20:39:13', NULL),
(85, '2024-09-25', 4, 21600.00, 21.00, 4536.00, 26136.00, NULL, NULL, 'Compra 85', '2025-11-19 20:39:13', NULL),
(86, '2024-06-02', 2, 19200.00, 21.00, 4032.00, 23232.00, NULL, NULL, 'Compra 86', '2025-11-19 20:39:13', NULL),
(87, '2024-01-19', 3, 22800.00, 21.00, 4788.00, 27588.00, NULL, NULL, 'Compra 87', '2025-11-19 20:39:13', NULL),
(88, '2024-12-06', 4, 40800.00, 21.00, 8568.00, 49368.00, NULL, NULL, 'Compra 88', '2025-11-19 20:39:13', NULL),
(89, '2024-09-19', 2, 36000.00, 21.00, 7560.00, 43560.00, NULL, NULL, 'Compra 89', '2025-11-19 20:39:13', NULL),
(90, '2024-03-28', 1, 32400.00, 21.00, 6804.00, 39204.00, NULL, NULL, 'Compra 90', '2025-11-19 20:39:13', NULL),
(91, '2024-08-11', 5, 22800.00, 21.00, 4788.00, 27588.00, NULL, NULL, 'Compra 91', '2025-11-19 20:39:13', NULL),
(92, '2024-09-28', 3, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'Compra 92', '2025-11-19 20:39:13', NULL),
(93, '2024-01-11', 2, 36000.00, 21.00, 7560.00, 43560.00, NULL, NULL, 'Compra 93', '2025-11-19 20:39:13', NULL),
(94, '2024-09-22', 2, 48000.00, 21.00, 10080.00, 58080.00, NULL, NULL, 'Compra 94', '2025-11-19 20:39:13', NULL),
(95, '2024-07-22', 3, 15600.00, 21.00, 3276.00, 18876.00, NULL, NULL, 'Compra 95', '2025-11-19 20:39:13', NULL),
(96, '2024-04-15', 1, 51600.00, 21.00, 10836.00, 62436.00, NULL, NULL, 'Compra 96', '2025-11-19 20:39:13', NULL),
(97, '2024-06-20', 1, 44400.00, 21.00, 9324.00, 53724.00, NULL, NULL, 'Compra 97', '2025-11-19 20:39:13', NULL),
(98, '2024-04-06', 5, 21600.00, 21.00, 4536.00, 26136.00, NULL, NULL, 'Compra 98', '2025-11-19 20:39:13', NULL),
(99, '2024-12-18', 1, 52800.00, 21.00, 11088.00, 63888.00, NULL, NULL, 'Compra 99', '2025-11-19 20:39:13', NULL),
(100, '2024-06-15', 4, 37200.00, 21.00, 7812.00, 45012.00, NULL, NULL, 'Compra 100', '2025-11-19 20:39:13', NULL),
(101, '2024-07-02', 2, 8400.00, 21.00, 1764.00, 10164.00, NULL, NULL, 'Compra 101', '2025-11-19 20:39:13', NULL),
(102, '2024-04-19', 3, 36000.00, 21.00, 7560.00, 43560.00, NULL, NULL, 'Compra 102', '2025-11-19 20:39:13', NULL),
(103, '2024-12-16', 2, 34800.00, 21.00, 7308.00, 42108.00, NULL, NULL, 'Compra 103', '2025-11-19 20:39:13', NULL),
(104, '2024-12-26', 2, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'Compra 104', '2025-11-19 20:39:13', NULL),
(105, '2024-07-09', 2, 48000.00, 21.00, 10080.00, 58080.00, NULL, NULL, 'Compra 105', '2025-11-19 20:39:13', NULL),
(106, '2024-01-14', 5, 8400.00, 21.00, 1764.00, 10164.00, NULL, NULL, 'Compra 106', '2025-11-19 20:39:13', NULL),
(107, '2024-07-04', 4, 52800.00, 21.00, 11088.00, 63888.00, NULL, NULL, 'Compra 107', '2025-11-19 20:39:13', NULL),
(108, '2024-06-16', 3, 37200.00, 21.00, 7812.00, 45012.00, NULL, NULL, 'Compra 108', '2025-11-19 20:39:13', NULL),
(109, '2024-04-08', 1, 26400.00, 21.00, 5544.00, 31944.00, NULL, NULL, 'Compra 109', '2025-11-19 20:39:13', NULL),
(110, '2024-06-03', 1, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'Compra 110', '2025-11-19 20:39:13', NULL),
(111, '2024-02-05', 2, 63600.00, 21.00, 13356.00, 76956.00, NULL, NULL, 'Compra 111', '2025-11-19 20:39:13', NULL),
(112, '2024-08-14', 2, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'Compra 112', '2025-11-19 20:39:13', NULL),
(113, '2024-05-14', 4, 30000.00, 21.00, 6300.00, 36300.00, NULL, NULL, 'Compra 113', '2025-11-19 20:39:13', NULL),
(114, '2024-04-02', 5, 37200.00, 21.00, 7812.00, 45012.00, NULL, NULL, 'Compra 114', '2025-11-19 20:39:13', NULL),
(115, '2024-09-15', 2, 30000.00, 21.00, 6300.00, 36300.00, NULL, NULL, 'Compra 115', '2025-11-19 20:39:13', NULL),
(116, '2024-01-21', 2, 32400.00, 21.00, 6804.00, 39204.00, NULL, NULL, 'Compra 116', '2025-11-19 20:39:13', NULL),
(117, '2024-08-27', 5, 55200.00, 21.00, 11592.00, 66792.00, NULL, NULL, 'Compra 117', '2025-11-19 20:39:13', NULL),
(118, '2024-02-05', 4, 8400.00, 21.00, 1764.00, 10164.00, NULL, NULL, 'Compra 118', '2025-11-19 20:39:13', NULL),
(119, '2024-03-17', 5, 10800.00, 21.00, 2268.00, 13068.00, NULL, NULL, 'Compra 119', '2025-11-19 20:39:13', NULL),
(120, '2024-01-25', 3, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'Compra 120', '2025-11-19 20:39:13', NULL),
(121, '2024-08-19', 5, 26400.00, 21.00, 5544.00, 31944.00, NULL, NULL, 'Compra 121', '2025-11-19 20:39:13', NULL),
(122, '2024-07-25', 2, 45600.00, 21.00, 9576.00, 55176.00, NULL, NULL, 'Compra 122', '2025-11-19 20:39:13', NULL),
(123, '2024-07-21', 1, 14400.00, 21.00, 3024.00, 17424.00, NULL, NULL, 'Compra 123', '2025-11-19 20:39:13', NULL),
(124, '2024-12-26', 5, 22800.00, 21.00, 4788.00, 27588.00, NULL, NULL, 'Compra 124', '2025-11-19 20:39:13', NULL),
(125, '2024-11-19', 3, 66000.00, 21.00, 13860.00, 79860.00, NULL, NULL, 'Compra 125', '2025-11-19 20:39:13', NULL),
(126, '2024-12-27', 3, 52800.00, 21.00, 11088.00, 63888.00, NULL, NULL, 'Compra 126', '2025-11-19 20:39:13', NULL),
(127, '2024-06-23', 3, 31200.00, 21.00, 6552.00, 37752.00, NULL, NULL, 'Compra 127', '2025-11-19 20:39:13', NULL),
(128, '2024-02-13', 2, 19200.00, 21.00, 4032.00, 23232.00, NULL, NULL, 'Compra 128', '2025-11-19 20:39:13', NULL),
(129, '2024-08-23', 4, 22800.00, 21.00, 4788.00, 27588.00, NULL, NULL, 'Compra 129', '2025-11-19 20:39:13', NULL),
(130, '2024-01-21', 3, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'Compra 130', '2025-11-19 20:39:13', NULL),
(131, '2025-10-20', 5, 20400.00, 21.00, 4284.00, 24684.00, NULL, NULL, 'Compra 131', '2025-11-19 20:39:13', NULL),
(132, '2025-02-06', 2, 7200.00, 21.00, 1512.00, 8712.00, NULL, NULL, 'Compra 132', '2025-11-19 20:39:13', NULL),
(133, '2025-07-23', 4, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'Compra 133', '2025-11-19 20:39:13', NULL),
(134, '2025-09-10', 1, 22800.00, 21.00, 4788.00, 27588.00, NULL, NULL, 'Compra 134', '2025-11-19 20:39:13', NULL),
(135, '2025-05-04', 1, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'Compra 135', '2025-11-19 20:39:13', NULL),
(136, '2025-04-14', 5, 44400.00, 21.00, 9324.00, 53724.00, NULL, NULL, 'Compra 136', '2025-11-19 20:39:13', NULL),
(137, '2025-07-08', 4, 20400.00, 21.00, 4284.00, 24684.00, NULL, NULL, 'Compra 137', '2025-11-19 20:39:13', NULL),
(138, '2025-02-24', 1, 30000.00, 21.00, 6300.00, 36300.00, NULL, NULL, 'Compra 138', '2025-11-19 20:39:13', NULL),
(139, '2025-10-07', 1, 43200.00, 21.00, 9072.00, 52272.00, NULL, NULL, 'Compra 139', '2025-11-19 20:39:13', NULL),
(140, '2025-10-02', 5, 51600.00, 21.00, 10836.00, 62436.00, NULL, NULL, 'Compra 140', '2025-11-19 20:39:13', NULL),
(141, '2025-01-14', 2, 13200.00, 21.00, 2772.00, 15972.00, NULL, NULL, 'Compra 141', '2025-11-19 20:39:14', NULL),
(142, '2025-10-11', 1, 7200.00, 21.00, 1512.00, 8712.00, NULL, NULL, 'Compra 142', '2025-11-19 20:39:14', NULL),
(143, '2025-06-10', 5, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'Compra 143', '2025-11-19 20:39:14', NULL),
(144, '2025-05-14', 4, 37200.00, 21.00, 7812.00, 45012.00, NULL, NULL, 'Compra 144', '2025-11-19 20:39:14', NULL),
(145, '2025-08-04', 3, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'Compra 145', '2025-11-19 20:39:14', NULL),
(146, '2025-02-13', 4, 22800.00, 21.00, 4788.00, 27588.00, NULL, NULL, 'Compra 146', '2025-11-19 20:39:14', NULL),
(147, '2025-03-04', 3, 9600.00, 21.00, 2016.00, 11616.00, NULL, NULL, 'Compra 147', '2025-11-19 20:39:14', NULL),
(148, '2025-07-24', 4, 10800.00, 21.00, 2268.00, 13068.00, NULL, NULL, 'Compra 148', '2025-11-19 20:39:14', NULL),
(149, '2025-03-22', 4, 43200.00, 21.00, 9072.00, 52272.00, NULL, NULL, 'Compra 149', '2025-11-19 20:39:14', NULL),
(150, '2025-01-25', 3, 50400.00, 21.00, 10584.00, 60984.00, NULL, NULL, 'Compra 150', '2025-11-19 20:39:14', NULL),
(151, '2025-08-06', 3, 19200.00, 21.00, 4032.00, 23232.00, NULL, NULL, 'Compra 151', '2025-11-19 20:39:14', NULL),
(152, '2025-11-24', 3, 22800.00, 21.00, 4788.00, 27588.00, NULL, NULL, 'Compra 152', '2025-11-19 20:39:14', NULL),
(153, '2025-03-06', 3, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'Compra 153', '2025-11-19 20:39:14', NULL),
(154, '2025-01-24', 1, 60000.00, 21.00, 12600.00, 72600.00, NULL, NULL, 'Compra 154', '2025-11-19 20:39:14', NULL),
(155, '2025-09-26', 4, 15600.00, 21.00, 3276.00, 18876.00, NULL, NULL, 'Compra 155', '2025-11-19 20:39:14', NULL),
(156, '2025-06-02', 4, 9600.00, 21.00, 2016.00, 11616.00, NULL, NULL, 'Compra 156', '2025-11-19 20:39:14', NULL),
(157, '2025-07-12', 5, 52800.00, 21.00, 11088.00, 63888.00, NULL, NULL, 'Compra 157', '2025-11-19 20:39:14', NULL),
(158, '2025-08-11', 1, 30000.00, 21.00, 6300.00, 36300.00, NULL, NULL, 'Compra 158', '2025-11-19 20:39:14', NULL),
(159, '2025-06-16', 3, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'Compra 159', '2025-11-19 20:39:14', NULL),
(160, '2025-03-18', 1, 14400.00, 21.00, 3024.00, 17424.00, NULL, NULL, 'Compra 160', '2025-11-19 20:39:14', NULL),
(161, '2025-03-23', 3, 13200.00, 21.00, 2772.00, 15972.00, NULL, NULL, 'Compra 161', '2025-11-19 20:39:14', NULL),
(162, '2025-08-15', 2, 34800.00, 21.00, 7308.00, 42108.00, NULL, NULL, 'Compra 162', '2025-11-19 20:39:14', NULL),
(163, '2025-04-27', 3, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'Compra 163', '2025-11-19 20:39:14', NULL),
(164, '2025-11-19', 1, 39600.00, 21.00, 8316.00, 47916.00, NULL, NULL, 'Compra 164', '2025-11-19 20:39:14', NULL),
(165, '2025-07-11', 5, 36000.00, 21.00, 7560.00, 43560.00, NULL, NULL, 'Compra 165', '2025-11-19 20:39:14', NULL),
(166, '2025-02-09', 3, 46800.00, 21.00, 9828.00, 56628.00, NULL, NULL, 'Compra 166', '2025-11-19 20:39:14', NULL),
(167, '2025-05-07', 1, 56400.00, 21.00, 11844.00, 68244.00, NULL, NULL, 'Compra 167', '2025-11-19 20:39:14', NULL),
(168, '2025-11-02', 1, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'Compra 168', '2025-11-19 20:39:14', NULL),
(169, '2025-10-18', 3, 43200.00, 21.00, 9072.00, 52272.00, NULL, NULL, 'Compra 169', '2025-11-19 20:39:14', NULL),
(170, '2025-10-22', 1, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'Compra 170', '2025-11-19 20:39:14', NULL),
(171, '2025-02-09', 1, 20400.00, 21.00, 4284.00, 24684.00, NULL, NULL, 'Compra 171', '2025-11-19 20:39:14', NULL),
(172, '2025-10-16', 3, 32400.00, 21.00, 6804.00, 39204.00, NULL, NULL, 'Compra 172', '2025-11-19 20:39:14', NULL),
(173, '2025-05-25', 3, 50400.00, 21.00, 10584.00, 60984.00, NULL, NULL, 'Compra 173', '2025-11-19 20:39:14', NULL),
(174, '2025-01-04', 4, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'Compra 174', '2025-11-19 20:39:14', NULL),
(175, '2025-04-06', 4, 44400.00, 21.00, 9324.00, 53724.00, NULL, NULL, 'Compra 175', '2025-11-19 20:39:14', NULL),
(176, '2025-08-28', 5, 20400.00, 21.00, 4284.00, 24684.00, NULL, NULL, 'Compra 176', '2025-11-19 20:39:14', NULL),
(177, '2025-11-06', 4, 36000.00, 21.00, 7560.00, 43560.00, NULL, NULL, 'Compra 177', '2025-11-19 20:39:14', NULL),
(178, '2025-02-26', 3, 51600.00, 21.00, 10836.00, 62436.00, NULL, NULL, 'Compra 178', '2025-11-19 20:39:14', NULL),
(179, '2025-05-26', 5, 51600.00, 21.00, 10836.00, 62436.00, NULL, NULL, 'Compra 179', '2025-11-19 20:39:14', NULL),
(180, '2025-08-01', 2, 28800.00, 21.00, 6048.00, 34848.00, NULL, NULL, 'Compra 180', '2025-11-19 20:39:14', NULL);

-- --------------------------------------------------------

--
-- Estructura de la taula `wp_contabilidad_detalles_compra`
--

CREATE TABLE `wp_contabilidad_detalles_compra` (
  `id` mediumint UNSIGNED NOT NULL,
  `compra_id` mediumint NOT NULL,
  `producto_id` mediumint NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `wp_contabilidad_detalles_compra`
--

INSERT INTO `wp_contabilidad_detalles_compra` (`id`, `compra_id`, `producto_id`, `cantidad`, `precio_unitario`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 15, 1200.00, 18000.00, NULL, NULL),
(2, 2, 6, 9, 1200.00, 10800.00, NULL, NULL),
(3, 3, 8, 5, 1200.00, 6000.00, NULL, NULL),
(4, 3, 4, 10, 1200.00, 12000.00, NULL, NULL),
(5, 3, 10, 10, 1200.00, 12000.00, NULL, NULL),
(6, 4, 3, 9, 1200.00, 10800.00, NULL, NULL),
(7, 4, 6, 18, 1200.00, 21600.00, NULL, NULL),
(8, 5, 10, 16, 1200.00, 19200.00, NULL, NULL),
(9, 5, 11, 9, 1200.00, 10800.00, NULL, NULL),
(10, 6, 4, 5, 1200.00, 6000.00, NULL, NULL),
(11, 7, 9, 6, 1200.00, 7200.00, NULL, NULL),
(12, 7, 4, 11, 1200.00, 13200.00, NULL, NULL),
(13, 7, 11, 18, 1200.00, 21600.00, NULL, NULL),
(14, 8, 10, 18, 1200.00, 21600.00, NULL, NULL),
(15, 8, 7, 6, 1200.00, 7200.00, NULL, NULL),
(16, 8, 3, 18, 1200.00, 21600.00, NULL, NULL),
(17, 9, 6, 6, 1200.00, 7200.00, NULL, NULL),
(18, 9, 7, 18, 1200.00, 21600.00, NULL, NULL),
(19, 10, 6, 5, 1200.00, 6000.00, NULL, NULL),
(20, 10, 1, 20, 1200.00, 24000.00, NULL, NULL),
(21, 10, 8, 10, 1200.00, 12000.00, NULL, NULL),
(22, 11, 4, 16, 1200.00, 19200.00, NULL, NULL),
(23, 11, 11, 14, 1200.00, 16800.00, NULL, NULL),
(24, 12, 10, 15, 1200.00, 18000.00, NULL, NULL),
(25, 12, 7, 19, 1200.00, 22800.00, NULL, NULL),
(26, 12, 5, 12, 1200.00, 14400.00, NULL, NULL),
(27, 13, 5, 6, 1200.00, 7200.00, NULL, NULL),
(28, 13, 10, 11, 1200.00, 13200.00, NULL, NULL),
(29, 14, 11, 15, 1200.00, 18000.00, NULL, NULL),
(30, 14, 1, 19, 1200.00, 22800.00, NULL, NULL),
(31, 14, 10, 19, 1200.00, 22800.00, NULL, NULL),
(32, 15, 8, 9, 1200.00, 10800.00, NULL, NULL),
(33, 16, 9, 11, 1200.00, 13200.00, NULL, NULL),
(34, 16, 11, 5, 1200.00, 6000.00, NULL, NULL),
(35, 16, 7, 13, 1200.00, 15600.00, NULL, NULL),
(36, 17, 11, 17, 1200.00, 20400.00, NULL, NULL),
(37, 17, 9, 12, 1200.00, 14400.00, NULL, NULL),
(38, 17, 6, 14, 1200.00, 16800.00, NULL, NULL),
(39, 18, 4, 8, 1200.00, 9600.00, NULL, NULL),
(40, 18, 8, 8, 1200.00, 9600.00, NULL, NULL),
(41, 18, 9, 9, 1200.00, 10800.00, NULL, NULL),
(42, 19, 4, 10, 1200.00, 12000.00, NULL, NULL),
(43, 19, 2, 15, 1200.00, 18000.00, NULL, NULL),
(44, 19, 2, 6, 1200.00, 7200.00, NULL, NULL),
(45, 20, 9, 10, 1200.00, 12000.00, NULL, NULL),
(46, 21, 2, 7, 1200.00, 8400.00, NULL, NULL),
(47, 21, 1, 8, 1200.00, 9600.00, NULL, NULL),
(48, 21, 7, 10, 1200.00, 12000.00, NULL, NULL),
(49, 22, 5, 7, 1200.00, 8400.00, NULL, NULL),
(50, 23, 10, 16, 1200.00, 19200.00, NULL, NULL),
(51, 23, 4, 11, 1200.00, 13200.00, NULL, NULL),
(52, 23, 7, 15, 1200.00, 18000.00, NULL, NULL),
(53, 24, 2, 5, 1200.00, 6000.00, NULL, NULL),
(54, 24, 8, 11, 1200.00, 13200.00, NULL, NULL),
(55, 25, 5, 10, 1200.00, 12000.00, NULL, NULL),
(56, 26, 3, 7, 1200.00, 8400.00, NULL, NULL),
(57, 27, 9, 11, 1200.00, 13200.00, NULL, NULL),
(58, 28, 7, 9, 1200.00, 10800.00, NULL, NULL),
(59, 28, 8, 10, 1200.00, 12000.00, NULL, NULL),
(60, 29, 9, 13, 1200.00, 15600.00, NULL, NULL),
(61, 29, 1, 8, 1200.00, 9600.00, NULL, NULL),
(62, 30, 1, 5, 1200.00, 6000.00, NULL, NULL),
(63, 30, 5, 5, 1200.00, 6000.00, NULL, NULL),
(64, 31, 8, 12, 1200.00, 14400.00, NULL, NULL),
(65, 31, 4, 19, 1200.00, 22800.00, NULL, NULL),
(66, 32, 1, 17, 1200.00, 20400.00, NULL, NULL),
(67, 32, 5, 9, 1200.00, 10800.00, NULL, NULL),
(68, 32, 6, 11, 1200.00, 13200.00, NULL, NULL),
(69, 33, 5, 19, 1200.00, 22800.00, NULL, NULL),
(70, 34, 6, 12, 1200.00, 14400.00, NULL, NULL),
(71, 35, 6, 8, 1200.00, 9600.00, NULL, NULL),
(72, 36, 4, 15, 1200.00, 18000.00, NULL, NULL),
(73, 36, 3, 18, 1200.00, 21600.00, NULL, NULL),
(74, 37, 10, 6, 1200.00, 7200.00, NULL, NULL),
(75, 38, 10, 11, 1200.00, 13200.00, NULL, NULL),
(76, 39, 6, 20, 1200.00, 24000.00, NULL, NULL),
(77, 39, 7, 5, 1200.00, 6000.00, NULL, NULL),
(78, 40, 9, 19, 1200.00, 22800.00, NULL, NULL),
(79, 40, 7, 11, 1200.00, 13200.00, NULL, NULL),
(80, 41, 9, 16, 1200.00, 19200.00, NULL, NULL),
(81, 41, 1, 7, 1200.00, 8400.00, NULL, NULL),
(82, 42, 9, 19, 1200.00, 22800.00, NULL, NULL),
(83, 42, 6, 18, 1200.00, 21600.00, NULL, NULL),
(84, 42, 9, 10, 1200.00, 12000.00, NULL, NULL),
(85, 43, 8, 9, 1200.00, 10800.00, NULL, NULL),
(86, 44, 5, 8, 1200.00, 9600.00, NULL, NULL),
(87, 44, 9, 17, 1200.00, 20400.00, NULL, NULL),
(88, 44, 10, 8, 1200.00, 9600.00, NULL, NULL),
(89, 45, 4, 16, 1200.00, 19200.00, NULL, NULL),
(90, 45, 7, 12, 1200.00, 14400.00, NULL, NULL),
(91, 45, 5, 7, 1200.00, 8400.00, NULL, NULL),
(92, 46, 7, 18, 1200.00, 21600.00, NULL, NULL),
(93, 46, 8, 14, 1200.00, 16800.00, NULL, NULL),
(94, 47, 11, 10, 1200.00, 12000.00, NULL, NULL),
(95, 47, 10, 5, 1200.00, 6000.00, NULL, NULL),
(96, 48, 1, 16, 1200.00, 19200.00, NULL, NULL),
(97, 49, 4, 8, 1200.00, 9600.00, NULL, NULL),
(98, 50, 6, 14, 1200.00, 16800.00, NULL, NULL),
(99, 50, 6, 17, 1200.00, 20400.00, NULL, NULL),
(100, 51, 6, 8, 1200.00, 9600.00, NULL, NULL),
(101, 51, 5, 10, 1200.00, 12000.00, NULL, NULL),
(102, 51, 6, 7, 1200.00, 8400.00, NULL, NULL),
(103, 52, 3, 19, 1200.00, 22800.00, NULL, NULL),
(104, 52, 4, 8, 1200.00, 9600.00, NULL, NULL),
(105, 53, 1, 19, 1200.00, 22800.00, NULL, NULL),
(106, 53, 4, 11, 1200.00, 13200.00, NULL, NULL),
(107, 53, 10, 18, 1200.00, 21600.00, NULL, NULL),
(108, 54, 5, 13, 1200.00, 15600.00, NULL, NULL),
(109, 55, 3, 19, 1200.00, 22800.00, NULL, NULL),
(110, 55, 4, 20, 1200.00, 24000.00, NULL, NULL),
(111, 55, 7, 11, 1200.00, 13200.00, NULL, NULL),
(112, 56, 2, 19, 1200.00, 22800.00, NULL, NULL),
(113, 56, 4, 12, 1200.00, 14400.00, NULL, NULL),
(114, 57, 9, 16, 1200.00, 19200.00, NULL, NULL),
(115, 57, 4, 17, 1200.00, 20400.00, NULL, NULL),
(116, 58, 10, 5, 1200.00, 6000.00, NULL, NULL),
(117, 58, 4, 10, 1200.00, 12000.00, NULL, NULL),
(118, 58, 4, 20, 1200.00, 24000.00, NULL, NULL),
(119, 59, 11, 18, 1200.00, 21600.00, NULL, NULL),
(120, 59, 1, 18, 1200.00, 21600.00, NULL, NULL),
(121, 59, 1, 11, 1200.00, 13200.00, NULL, NULL),
(122, 60, 7, 11, 1200.00, 13200.00, NULL, NULL),
(123, 60, 4, 11, 1200.00, 13200.00, NULL, NULL),
(124, 61, 1, 13, 1200.00, 15600.00, NULL, NULL),
(125, 61, 6, 11, 1200.00, 13200.00, NULL, NULL),
(126, 62, 2, 13, 1200.00, 15600.00, NULL, NULL),
(127, 62, 2, 12, 1200.00, 14400.00, NULL, NULL),
(128, 63, 1, 14, 1200.00, 16800.00, NULL, NULL),
(129, 63, 3, 15, 1200.00, 18000.00, NULL, NULL),
(130, 64, 1, 6, 1200.00, 7200.00, NULL, NULL),
(131, 64, 5, 9, 1200.00, 10800.00, NULL, NULL),
(132, 65, 4, 9, 1200.00, 10800.00, NULL, NULL),
(133, 65, 9, 7, 1200.00, 8400.00, NULL, NULL),
(134, 66, 4, 18, 1200.00, 21600.00, NULL, NULL),
(135, 66, 6, 18, 1200.00, 21600.00, NULL, NULL),
(136, 66, 11, 15, 1200.00, 18000.00, NULL, NULL),
(137, 67, 5, 16, 1200.00, 19200.00, NULL, NULL),
(138, 68, 11, 7, 1200.00, 8400.00, NULL, NULL),
(139, 68, 9, 7, 1200.00, 8400.00, NULL, NULL),
(140, 69, 9, 8, 1200.00, 9600.00, NULL, NULL),
(141, 69, 7, 20, 1200.00, 24000.00, NULL, NULL),
(142, 69, 1, 12, 1200.00, 14400.00, NULL, NULL),
(143, 70, 2, 19, 1200.00, 22800.00, NULL, NULL),
(144, 70, 2, 8, 1200.00, 9600.00, NULL, NULL),
(145, 70, 3, 14, 1200.00, 16800.00, NULL, NULL),
(146, 71, 8, 15, 1200.00, 18000.00, NULL, NULL),
(147, 71, 10, 15, 1200.00, 18000.00, NULL, NULL),
(148, 71, 10, 10, 1200.00, 12000.00, NULL, NULL),
(149, 72, 9, 9, 1200.00, 10800.00, NULL, NULL),
(150, 73, 8, 8, 1200.00, 9600.00, NULL, NULL),
(151, 74, 7, 13, 1200.00, 15600.00, NULL, NULL),
(152, 75, 3, 9, 1200.00, 10800.00, NULL, NULL),
(153, 76, 5, 8, 1200.00, 9600.00, NULL, NULL),
(154, 76, 11, 6, 1200.00, 7200.00, NULL, NULL),
(155, 77, 6, 5, 1200.00, 6000.00, NULL, NULL),
(156, 78, 4, 15, 1200.00, 18000.00, NULL, NULL),
(157, 79, 11, 10, 1200.00, 12000.00, NULL, NULL),
(158, 79, 7, 14, 1200.00, 16800.00, NULL, NULL),
(159, 80, 6, 20, 1200.00, 24000.00, NULL, NULL),
(160, 80, 11, 20, 1200.00, 24000.00, NULL, NULL),
(161, 80, 5, 18, 1200.00, 21600.00, NULL, NULL),
(162, 81, 6, 12, 1200.00, 14400.00, NULL, NULL),
(163, 81, 4, 16, 1200.00, 19200.00, NULL, NULL),
(164, 81, 7, 15, 1200.00, 18000.00, NULL, NULL),
(165, 82, 2, 18, 1200.00, 21600.00, NULL, NULL),
(166, 82, 10, 20, 1200.00, 24000.00, NULL, NULL),
(167, 83, 2, 19, 1200.00, 22800.00, NULL, NULL),
(168, 83, 3, 18, 1200.00, 21600.00, NULL, NULL),
(169, 84, 7, 14, 1200.00, 16800.00, NULL, NULL),
(170, 85, 3, 8, 1200.00, 9600.00, NULL, NULL),
(171, 85, 10, 10, 1200.00, 12000.00, NULL, NULL),
(172, 86, 8, 16, 1200.00, 19200.00, NULL, NULL),
(173, 87, 4, 19, 1200.00, 22800.00, NULL, NULL),
(174, 88, 5, 20, 1200.00, 24000.00, NULL, NULL),
(175, 88, 11, 7, 1200.00, 8400.00, NULL, NULL),
(176, 88, 7, 7, 1200.00, 8400.00, NULL, NULL),
(177, 89, 10, 10, 1200.00, 12000.00, NULL, NULL),
(178, 89, 7, 20, 1200.00, 24000.00, NULL, NULL),
(179, 90, 3, 16, 1200.00, 19200.00, NULL, NULL),
(180, 90, 8, 11, 1200.00, 13200.00, NULL, NULL),
(181, 91, 11, 19, 1200.00, 22800.00, NULL, NULL),
(182, 92, 1, 10, 1200.00, 12000.00, NULL, NULL),
(183, 93, 4, 20, 1200.00, 24000.00, NULL, NULL),
(184, 93, 10, 10, 1200.00, 12000.00, NULL, NULL),
(185, 94, 10, 14, 1200.00, 16800.00, NULL, NULL),
(186, 94, 9, 20, 1200.00, 24000.00, NULL, NULL),
(187, 94, 2, 6, 1200.00, 7200.00, NULL, NULL),
(188, 95, 5, 13, 1200.00, 15600.00, NULL, NULL),
(189, 96, 7, 17, 1200.00, 20400.00, NULL, NULL),
(190, 96, 9, 13, 1200.00, 15600.00, NULL, NULL),
(191, 96, 4, 13, 1200.00, 15600.00, NULL, NULL),
(192, 97, 10, 11, 1200.00, 13200.00, NULL, NULL),
(193, 97, 4, 14, 1200.00, 16800.00, NULL, NULL),
(194, 97, 10, 12, 1200.00, 14400.00, NULL, NULL),
(195, 98, 9, 7, 1200.00, 8400.00, NULL, NULL),
(196, 98, 4, 11, 1200.00, 13200.00, NULL, NULL),
(197, 99, 8, 20, 1200.00, 24000.00, NULL, NULL),
(198, 99, 7, 5, 1200.00, 6000.00, NULL, NULL),
(199, 99, 9, 19, 1200.00, 22800.00, NULL, NULL),
(200, 100, 4, 7, 1200.00, 8400.00, NULL, NULL),
(201, 100, 1, 6, 1200.00, 7200.00, NULL, NULL),
(202, 100, 11, 18, 1200.00, 21600.00, NULL, NULL),
(203, 101, 10, 7, 1200.00, 8400.00, NULL, NULL),
(204, 102, 9, 20, 1200.00, 24000.00, NULL, NULL),
(205, 102, 4, 10, 1200.00, 12000.00, NULL, NULL),
(206, 103, 4, 13, 1200.00, 15600.00, NULL, NULL),
(207, 103, 1, 16, 1200.00, 19200.00, NULL, NULL),
(208, 104, 10, 5, 1200.00, 6000.00, NULL, NULL),
(209, 105, 9, 8, 1200.00, 9600.00, NULL, NULL),
(210, 105, 9, 18, 1200.00, 21600.00, NULL, NULL),
(211, 105, 10, 14, 1200.00, 16800.00, NULL, NULL),
(212, 106, 5, 7, 1200.00, 8400.00, NULL, NULL),
(213, 107, 2, 18, 1200.00, 21600.00, NULL, NULL),
(214, 107, 9, 7, 1200.00, 8400.00, NULL, NULL),
(215, 107, 4, 19, 1200.00, 22800.00, NULL, NULL),
(216, 108, 5, 7, 1200.00, 8400.00, NULL, NULL),
(217, 108, 8, 14, 1200.00, 16800.00, NULL, NULL),
(218, 108, 8, 10, 1200.00, 12000.00, NULL, NULL),
(219, 109, 3, 12, 1200.00, 14400.00, NULL, NULL),
(220, 109, 3, 10, 1200.00, 12000.00, NULL, NULL),
(221, 110, 10, 10, 1200.00, 12000.00, NULL, NULL),
(222, 110, 11, 5, 1200.00, 6000.00, NULL, NULL),
(223, 111, 11, 16, 1200.00, 19200.00, NULL, NULL),
(224, 111, 8, 17, 1200.00, 20400.00, NULL, NULL),
(225, 111, 1, 20, 1200.00, 24000.00, NULL, NULL),
(226, 112, 8, 8, 1200.00, 9600.00, NULL, NULL),
(227, 112, 5, 6, 1200.00, 7200.00, NULL, NULL),
(228, 112, 8, 6, 1200.00, 7200.00, NULL, NULL),
(229, 113, 2, 7, 1200.00, 8400.00, NULL, NULL),
(230, 113, 7, 18, 1200.00, 21600.00, NULL, NULL),
(231, 114, 3, 7, 1200.00, 8400.00, NULL, NULL),
(232, 114, 5, 15, 1200.00, 18000.00, NULL, NULL),
(233, 114, 6, 9, 1200.00, 10800.00, NULL, NULL),
(234, 115, 3, 9, 1200.00, 10800.00, NULL, NULL),
(235, 115, 5, 9, 1200.00, 10800.00, NULL, NULL),
(236, 115, 11, 7, 1200.00, 8400.00, NULL, NULL),
(237, 116, 6, 5, 1200.00, 6000.00, NULL, NULL),
(238, 116, 10, 7, 1200.00, 8400.00, NULL, NULL),
(239, 116, 2, 15, 1200.00, 18000.00, NULL, NULL),
(240, 117, 10, 11, 1200.00, 13200.00, NULL, NULL),
(241, 117, 4, 19, 1200.00, 22800.00, NULL, NULL),
(242, 117, 11, 16, 1200.00, 19200.00, NULL, NULL),
(243, 118, 1, 7, 1200.00, 8400.00, NULL, NULL),
(244, 119, 10, 9, 1200.00, 10800.00, NULL, NULL),
(245, 120, 6, 20, 1200.00, 24000.00, NULL, NULL),
(246, 121, 2, 17, 1200.00, 20400.00, NULL, NULL),
(247, 121, 2, 5, 1200.00, 6000.00, NULL, NULL),
(248, 122, 9, 12, 1200.00, 14400.00, NULL, NULL),
(249, 122, 1, 7, 1200.00, 8400.00, NULL, NULL),
(250, 122, 8, 19, 1200.00, 22800.00, NULL, NULL),
(251, 123, 2, 6, 1200.00, 7200.00, NULL, NULL),
(252, 123, 1, 6, 1200.00, 7200.00, NULL, NULL),
(253, 124, 11, 19, 1200.00, 22800.00, NULL, NULL),
(254, 125, 5, 20, 1200.00, 24000.00, NULL, NULL),
(255, 125, 10, 15, 1200.00, 18000.00, NULL, NULL),
(256, 125, 4, 20, 1200.00, 24000.00, NULL, NULL),
(257, 126, 3, 6, 1200.00, 7200.00, NULL, NULL),
(258, 126, 9, 19, 1200.00, 22800.00, NULL, NULL),
(259, 126, 3, 19, 1200.00, 22800.00, NULL, NULL),
(260, 127, 2, 20, 1200.00, 24000.00, NULL, NULL),
(261, 127, 2, 6, 1200.00, 7200.00, NULL, NULL),
(262, 128, 11, 16, 1200.00, 19200.00, NULL, NULL),
(263, 129, 5, 19, 1200.00, 22800.00, NULL, NULL),
(264, 130, 3, 15, 1200.00, 18000.00, NULL, NULL),
(265, 131, 9, 6, 1200.00, 7200.00, NULL, NULL),
(266, 131, 4, 11, 1200.00, 13200.00, NULL, NULL),
(267, 132, 9, 6, 1200.00, 7200.00, NULL, NULL),
(268, 133, 3, 11, 1200.00, 13200.00, NULL, NULL),
(269, 133, 1, 9, 1200.00, 10800.00, NULL, NULL),
(270, 134, 4, 5, 1200.00, 6000.00, NULL, NULL),
(271, 134, 8, 14, 1200.00, 16800.00, NULL, NULL),
(272, 135, 5, 10, 1200.00, 12000.00, NULL, NULL),
(273, 136, 5, 10, 1200.00, 12000.00, NULL, NULL),
(274, 136, 2, 20, 1200.00, 24000.00, NULL, NULL),
(275, 136, 8, 7, 1200.00, 8400.00, NULL, NULL),
(276, 137, 1, 17, 1200.00, 20400.00, NULL, NULL),
(277, 138, 5, 10, 1200.00, 12000.00, NULL, NULL),
(278, 138, 4, 15, 1200.00, 18000.00, NULL, NULL),
(279, 139, 8, 19, 1200.00, 22800.00, NULL, NULL),
(280, 139, 1, 17, 1200.00, 20400.00, NULL, NULL),
(281, 140, 6, 7, 1200.00, 8400.00, NULL, NULL),
(282, 140, 7, 17, 1200.00, 20400.00, NULL, NULL),
(283, 140, 6, 19, 1200.00, 22800.00, NULL, NULL),
(284, 141, 11, 11, 1200.00, 13200.00, NULL, NULL),
(285, 142, 4, 6, 1200.00, 7200.00, NULL, NULL),
(286, 143, 11, 10, 1200.00, 12000.00, NULL, NULL),
(287, 144, 6, 6, 1200.00, 7200.00, NULL, NULL),
(288, 144, 10, 11, 1200.00, 13200.00, NULL, NULL),
(289, 144, 11, 14, 1200.00, 16800.00, NULL, NULL),
(290, 145, 4, 10, 1200.00, 12000.00, NULL, NULL),
(291, 146, 2, 5, 1200.00, 6000.00, NULL, NULL),
(292, 146, 4, 14, 1200.00, 16800.00, NULL, NULL),
(293, 147, 2, 8, 1200.00, 9600.00, NULL, NULL),
(294, 148, 10, 9, 1200.00, 10800.00, NULL, NULL),
(295, 149, 4, 5, 1200.00, 6000.00, NULL, NULL),
(296, 149, 1, 12, 1200.00, 14400.00, NULL, NULL),
(297, 149, 6, 19, 1200.00, 22800.00, NULL, NULL),
(298, 150, 9, 15, 1200.00, 18000.00, NULL, NULL),
(299, 150, 9, 20, 1200.00, 24000.00, NULL, NULL),
(300, 150, 5, 7, 1200.00, 8400.00, NULL, NULL),
(301, 151, 9, 16, 1200.00, 19200.00, NULL, NULL),
(302, 152, 8, 19, 1200.00, 22800.00, NULL, NULL),
(303, 153, 8, 10, 1200.00, 12000.00, NULL, NULL),
(304, 154, 1, 20, 1200.00, 24000.00, NULL, NULL),
(305, 154, 3, 20, 1200.00, 24000.00, NULL, NULL),
(306, 154, 6, 10, 1200.00, 12000.00, NULL, NULL),
(307, 155, 3, 13, 1200.00, 15600.00, NULL, NULL),
(308, 156, 2, 8, 1200.00, 9600.00, NULL, NULL),
(309, 157, 5, 12, 1200.00, 14400.00, NULL, NULL),
(310, 157, 10, 16, 1200.00, 19200.00, NULL, NULL),
(311, 157, 1, 16, 1200.00, 19200.00, NULL, NULL),
(312, 158, 6, 10, 1200.00, 12000.00, NULL, NULL),
(313, 158, 11, 7, 1200.00, 8400.00, NULL, NULL),
(314, 158, 5, 8, 1200.00, 9600.00, NULL, NULL),
(315, 159, 6, 5, 1200.00, 6000.00, NULL, NULL),
(316, 160, 10, 12, 1200.00, 14400.00, NULL, NULL),
(317, 161, 8, 11, 1200.00, 13200.00, NULL, NULL),
(318, 162, 6, 13, 1200.00, 15600.00, NULL, NULL),
(319, 162, 9, 16, 1200.00, 19200.00, NULL, NULL),
(320, 163, 10, 5, 1200.00, 6000.00, NULL, NULL),
(321, 164, 9, 6, 1200.00, 7200.00, NULL, NULL),
(322, 164, 8, 7, 1200.00, 8400.00, NULL, NULL),
(323, 164, 11, 20, 1200.00, 24000.00, NULL, NULL),
(324, 165, 10, 16, 1200.00, 19200.00, NULL, NULL),
(325, 165, 3, 6, 1200.00, 7200.00, NULL, NULL),
(326, 165, 5, 8, 1200.00, 9600.00, NULL, NULL),
(327, 166, 2, 17, 1200.00, 20400.00, NULL, NULL),
(328, 166, 9, 16, 1200.00, 19200.00, NULL, NULL),
(329, 166, 3, 6, 1200.00, 7200.00, NULL, NULL),
(330, 167, 7, 9, 1200.00, 10800.00, NULL, NULL),
(331, 167, 2, 20, 1200.00, 24000.00, NULL, NULL),
(332, 167, 7, 18, 1200.00, 21600.00, NULL, NULL),
(333, 168, 8, 5, 1200.00, 6000.00, NULL, NULL),
(334, 168, 4, 5, 1200.00, 6000.00, NULL, NULL),
(335, 169, 3, 14, 1200.00, 16800.00, NULL, NULL),
(336, 169, 10, 7, 1200.00, 8400.00, NULL, NULL),
(337, 169, 4, 15, 1200.00, 18000.00, NULL, NULL),
(338, 170, 6, 10, 1200.00, 12000.00, NULL, NULL),
(339, 171, 10, 17, 1200.00, 20400.00, NULL, NULL),
(340, 172, 11, 11, 1200.00, 13200.00, NULL, NULL),
(341, 172, 6, 16, 1200.00, 19200.00, NULL, NULL),
(342, 173, 10, 18, 1200.00, 21600.00, NULL, NULL),
(343, 173, 6, 7, 1200.00, 8400.00, NULL, NULL),
(344, 173, 7, 17, 1200.00, 20400.00, NULL, NULL),
(345, 174, 5, 9, 1200.00, 10800.00, NULL, NULL),
(346, 174, 10, 11, 1200.00, 13200.00, NULL, NULL),
(347, 175, 1, 19, 1200.00, 22800.00, NULL, NULL),
(348, 175, 8, 18, 1200.00, 21600.00, NULL, NULL),
(349, 176, 9, 12, 1200.00, 14400.00, NULL, NULL),
(350, 176, 6, 5, 1200.00, 6000.00, NULL, NULL),
(351, 177, 7, 10, 1200.00, 12000.00, NULL, NULL),
(352, 177, 4, 20, 1200.00, 24000.00, NULL, NULL),
(353, 178, 5, 16, 1200.00, 19200.00, NULL, NULL),
(354, 178, 10, 19, 1200.00, 22800.00, NULL, NULL),
(355, 178, 2, 8, 1200.00, 9600.00, NULL, NULL),
(356, 179, 1, 12, 1200.00, 14400.00, NULL, NULL),
(357, 179, 2, 19, 1200.00, 22800.00, NULL, NULL),
(358, 179, 8, 12, 1200.00, 14400.00, NULL, NULL),
(359, 180, 2, 15, 1200.00, 18000.00, NULL, NULL),
(360, 180, 9, 9, 1200.00, 10800.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de la taula `wp_contabilidad_detalles_venta`
--

CREATE TABLE `wp_contabilidad_detalles_venta` (
  `id` mediumint UNSIGNED NOT NULL,
  `venta_id` mediumint NOT NULL,
  `producto_id` mediumint NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `wp_contabilidad_detalles_venta`
--

INSERT INTO `wp_contabilidad_detalles_venta` (`id`, `venta_id`, `producto_id`, `cantidad`, `precio_unitario`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 2, 3000.00, 6000.00, NULL, NULL),
(2, 1, 11, 2, 3000.00, 6000.00, NULL, NULL),
(3, 1, 11, 2, 3000.00, 6000.00, NULL, NULL),
(4, 2, 3, 2, 3000.00, 6000.00, NULL, NULL),
(5, 2, 2, 3, 3000.00, 9000.00, NULL, NULL),
(6, 2, 5, 2, 3000.00, 6000.00, NULL, NULL),
(7, 3, 10, 2, 3000.00, 6000.00, NULL, NULL),
(8, 4, 9, 2, 3000.00, 6000.00, NULL, NULL),
(9, 4, 11, 1, 3000.00, 3000.00, NULL, NULL),
(10, 4, 3, 2, 3000.00, 6000.00, NULL, NULL),
(11, 4, 10, 3, 3000.00, 9000.00, NULL, NULL),
(12, 5, 11, 2, 3000.00, 6000.00, NULL, NULL),
(13, 6, 4, 3, 3000.00, 9000.00, NULL, NULL),
(14, 7, 11, 2, 3000.00, 6000.00, NULL, NULL),
(15, 7, 1, 3, 3000.00, 9000.00, NULL, NULL),
(16, 8, 5, 3, 3000.00, 9000.00, NULL, NULL),
(17, 8, 11, 1, 3000.00, 3000.00, NULL, NULL),
(18, 9, 10, 3, 3000.00, 9000.00, NULL, NULL),
(19, 9, 9, 1, 3000.00, 3000.00, NULL, NULL),
(20, 9, 9, 3, 3000.00, 9000.00, NULL, NULL),
(21, 9, 4, 3, 3000.00, 9000.00, NULL, NULL),
(22, 10, 11, 2, 3000.00, 6000.00, NULL, NULL),
(23, 10, 8, 2, 3000.00, 6000.00, NULL, NULL),
(24, 10, 2, 2, 3000.00, 6000.00, NULL, NULL),
(25, 11, 5, 1, 3000.00, 3000.00, NULL, NULL),
(26, 11, 10, 2, 3000.00, 6000.00, NULL, NULL),
(27, 11, 2, 1, 3000.00, 3000.00, NULL, NULL),
(28, 11, 11, 3, 3000.00, 9000.00, NULL, NULL),
(29, 12, 9, 3, 3000.00, 9000.00, NULL, NULL),
(30, 12, 4, 3, 3000.00, 9000.00, NULL, NULL),
(31, 12, 7, 1, 3000.00, 3000.00, NULL, NULL),
(32, 13, 6, 3, 3000.00, 9000.00, NULL, NULL),
(33, 13, 7, 1, 3000.00, 3000.00, NULL, NULL),
(34, 13, 6, 3, 3000.00, 9000.00, NULL, NULL),
(35, 14, 5, 2, 3000.00, 6000.00, NULL, NULL),
(36, 15, 4, 1, 3000.00, 3000.00, NULL, NULL),
(37, 15, 5, 1, 3000.00, 3000.00, NULL, NULL),
(38, 15, 5, 3, 3000.00, 9000.00, NULL, NULL),
(39, 15, 1, 3, 3000.00, 9000.00, NULL, NULL),
(40, 16, 10, 1, 3000.00, 3000.00, NULL, NULL),
(41, 16, 8, 2, 3000.00, 6000.00, NULL, NULL),
(42, 16, 4, 2, 3000.00, 6000.00, NULL, NULL),
(43, 16, 7, 2, 3000.00, 6000.00, NULL, NULL),
(44, 17, 10, 2, 3000.00, 6000.00, NULL, NULL),
(45, 17, 11, 2, 3000.00, 6000.00, NULL, NULL),
(46, 18, 6, 2, 3000.00, 6000.00, NULL, NULL),
(47, 19, 3, 1, 3000.00, 3000.00, NULL, NULL),
(48, 19, 5, 2, 3000.00, 6000.00, NULL, NULL),
(49, 19, 6, 2, 3000.00, 6000.00, NULL, NULL),
(50, 19, 5, 2, 3000.00, 6000.00, NULL, NULL),
(51, 20, 10, 2, 3000.00, 6000.00, NULL, NULL),
(52, 20, 2, 3, 3000.00, 9000.00, NULL, NULL),
(53, 21, 9, 1, 3000.00, 3000.00, NULL, NULL),
(54, 21, 4, 3, 3000.00, 9000.00, NULL, NULL),
(55, 21, 10, 1, 3000.00, 3000.00, NULL, NULL),
(56, 21, 3, 1, 3000.00, 3000.00, NULL, NULL),
(57, 22, 10, 2, 3000.00, 6000.00, NULL, NULL),
(58, 22, 2, 2, 3000.00, 6000.00, NULL, NULL),
(59, 22, 5, 3, 3000.00, 9000.00, NULL, NULL),
(60, 22, 7, 2, 3000.00, 6000.00, NULL, NULL),
(61, 23, 1, 1, 3000.00, 3000.00, NULL, NULL),
(62, 24, 11, 3, 3000.00, 9000.00, NULL, NULL),
(63, 25, 3, 3, 3000.00, 9000.00, NULL, NULL),
(64, 25, 9, 2, 3000.00, 6000.00, NULL, NULL),
(65, 26, 9, 1, 3000.00, 3000.00, NULL, NULL),
(66, 26, 1, 3, 3000.00, 9000.00, NULL, NULL),
(67, 27, 9, 3, 3000.00, 9000.00, NULL, NULL),
(68, 27, 5, 1, 3000.00, 3000.00, NULL, NULL),
(69, 28, 11, 3, 3000.00, 9000.00, NULL, NULL),
(70, 29, 4, 3, 3000.00, 9000.00, NULL, NULL),
(71, 29, 7, 2, 3000.00, 6000.00, NULL, NULL),
(72, 30, 11, 3, 3000.00, 9000.00, NULL, NULL),
(73, 30, 7, 1, 3000.00, 3000.00, NULL, NULL),
(74, 30, 8, 2, 3000.00, 6000.00, NULL, NULL),
(75, 30, 11, 2, 3000.00, 6000.00, NULL, NULL),
(76, 31, 7, 2, 3000.00, 6000.00, NULL, NULL),
(77, 32, 9, 1, 3000.00, 3000.00, NULL, NULL),
(78, 33, 10, 3, 3000.00, 9000.00, NULL, NULL),
(79, 33, 8, 3, 3000.00, 9000.00, NULL, NULL),
(80, 33, 9, 2, 3000.00, 6000.00, NULL, NULL),
(81, 34, 4, 3, 3000.00, 9000.00, NULL, NULL),
(82, 35, 1, 2, 3000.00, 6000.00, NULL, NULL),
(83, 35, 1, 1, 3000.00, 3000.00, NULL, NULL),
(84, 35, 3, 1, 3000.00, 3000.00, NULL, NULL),
(85, 35, 6, 2, 3000.00, 6000.00, NULL, NULL),
(86, 36, 4, 1, 3000.00, 3000.00, NULL, NULL),
(87, 36, 10, 3, 3000.00, 9000.00, NULL, NULL),
(88, 36, 6, 1, 3000.00, 3000.00, NULL, NULL),
(89, 37, 11, 1, 3000.00, 3000.00, NULL, NULL),
(90, 37, 7, 3, 3000.00, 9000.00, NULL, NULL),
(91, 38, 4, 2, 3000.00, 6000.00, NULL, NULL),
(92, 39, 8, 3, 3000.00, 9000.00, NULL, NULL),
(93, 39, 4, 2, 3000.00, 6000.00, NULL, NULL),
(94, 40, 1, 2, 3000.00, 6000.00, NULL, NULL),
(95, 40, 7, 1, 3000.00, 3000.00, NULL, NULL),
(96, 40, 8, 3, 3000.00, 9000.00, NULL, NULL),
(97, 41, 7, 3, 3000.00, 9000.00, NULL, NULL),
(98, 42, 11, 3, 3000.00, 9000.00, NULL, NULL),
(99, 42, 5, 1, 3000.00, 3000.00, NULL, NULL),
(100, 43, 3, 3, 3000.00, 9000.00, NULL, NULL),
(101, 43, 11, 2, 3000.00, 6000.00, NULL, NULL),
(102, 44, 10, 2, 3000.00, 6000.00, NULL, NULL),
(103, 44, 2, 2, 3000.00, 6000.00, NULL, NULL),
(104, 45, 7, 1, 3000.00, 3000.00, NULL, NULL),
(105, 45, 6, 1, 3000.00, 3000.00, NULL, NULL),
(106, 45, 5, 2, 3000.00, 6000.00, NULL, NULL),
(107, 45, 3, 3, 3000.00, 9000.00, NULL, NULL),
(108, 46, 5, 3, 3000.00, 9000.00, NULL, NULL),
(109, 47, 8, 1, 3000.00, 3000.00, NULL, NULL),
(110, 47, 1, 3, 3000.00, 9000.00, NULL, NULL),
(111, 47, 3, 1, 3000.00, 3000.00, NULL, NULL),
(112, 48, 2, 2, 3000.00, 6000.00, NULL, NULL),
(113, 48, 7, 3, 3000.00, 9000.00, NULL, NULL),
(114, 49, 2, 3, 3000.00, 9000.00, NULL, NULL),
(115, 49, 2, 1, 3000.00, 3000.00, NULL, NULL),
(116, 49, 11, 1, 3000.00, 3000.00, NULL, NULL),
(117, 49, 4, 1, 3000.00, 3000.00, NULL, NULL),
(118, 50, 9, 3, 3000.00, 9000.00, NULL, NULL),
(119, 50, 2, 2, 3000.00, 6000.00, NULL, NULL),
(120, 50, 8, 2, 3000.00, 6000.00, NULL, NULL),
(121, 51, 10, 3, 3000.00, 9000.00, NULL, NULL),
(122, 51, 2, 2, 3000.00, 6000.00, NULL, NULL),
(123, 51, 10, 1, 3000.00, 3000.00, NULL, NULL),
(124, 52, 10, 3, 3000.00, 9000.00, NULL, NULL),
(125, 53, 10, 1, 3000.00, 3000.00, NULL, NULL),
(126, 53, 8, 1, 3000.00, 3000.00, NULL, NULL),
(127, 53, 9, 1, 3000.00, 3000.00, NULL, NULL),
(128, 53, 9, 1, 3000.00, 3000.00, NULL, NULL),
(129, 54, 2, 3, 3000.00, 9000.00, NULL, NULL),
(130, 55, 3, 2, 3000.00, 6000.00, NULL, NULL),
(131, 56, 6, 3, 3000.00, 9000.00, NULL, NULL),
(132, 56, 2, 3, 3000.00, 9000.00, NULL, NULL),
(133, 57, 5, 2, 3000.00, 6000.00, NULL, NULL),
(134, 58, 7, 3, 3000.00, 9000.00, NULL, NULL),
(135, 59, 11, 3, 3000.00, 9000.00, NULL, NULL),
(136, 59, 9, 1, 3000.00, 3000.00, NULL, NULL),
(137, 60, 7, 3, 3000.00, 9000.00, NULL, NULL),
(138, 60, 7, 3, 3000.00, 9000.00, NULL, NULL),
(139, 61, 6, 1, 3000.00, 3000.00, NULL, NULL),
(140, 61, 7, 2, 3000.00, 6000.00, NULL, NULL),
(141, 61, 1, 2, 3000.00, 6000.00, NULL, NULL),
(142, 62, 6, 2, 3000.00, 6000.00, NULL, NULL),
(143, 63, 6, 3, 3000.00, 9000.00, NULL, NULL),
(144, 64, 3, 3, 3000.00, 9000.00, NULL, NULL),
(145, 64, 9, 2, 3000.00, 6000.00, NULL, NULL),
(146, 64, 2, 1, 3000.00, 3000.00, NULL, NULL),
(147, 65, 2, 1, 3000.00, 3000.00, NULL, NULL),
(148, 65, 2, 1, 3000.00, 3000.00, NULL, NULL),
(149, 65, 10, 1, 3000.00, 3000.00, NULL, NULL),
(150, 66, 5, 1, 3000.00, 3000.00, NULL, NULL),
(151, 67, 2, 2, 3000.00, 6000.00, NULL, NULL),
(152, 68, 9, 3, 3000.00, 9000.00, NULL, NULL),
(153, 68, 11, 1, 3000.00, 3000.00, NULL, NULL),
(154, 68, 4, 3, 3000.00, 9000.00, NULL, NULL),
(155, 68, 1, 1, 3000.00, 3000.00, NULL, NULL),
(156, 69, 11, 3, 3000.00, 9000.00, NULL, NULL),
(157, 69, 5, 3, 3000.00, 9000.00, NULL, NULL),
(158, 70, 2, 3, 3000.00, 9000.00, NULL, NULL),
(159, 70, 4, 2, 3000.00, 6000.00, NULL, NULL),
(160, 70, 2, 2, 3000.00, 6000.00, NULL, NULL),
(161, 70, 9, 2, 3000.00, 6000.00, NULL, NULL),
(162, 71, 4, 1, 3000.00, 3000.00, NULL, NULL),
(163, 72, 10, 2, 3000.00, 6000.00, NULL, NULL),
(164, 72, 7, 1, 3000.00, 3000.00, NULL, NULL),
(165, 73, 8, 2, 3000.00, 6000.00, NULL, NULL),
(166, 73, 5, 1, 3000.00, 3000.00, NULL, NULL),
(167, 73, 9, 3, 3000.00, 9000.00, NULL, NULL),
(168, 73, 6, 2, 3000.00, 6000.00, NULL, NULL),
(169, 74, 8, 3, 3000.00, 9000.00, NULL, NULL),
(170, 74, 8, 2, 3000.00, 6000.00, NULL, NULL),
(171, 74, 4, 3, 3000.00, 9000.00, NULL, NULL),
(172, 75, 5, 3, 3000.00, 9000.00, NULL, NULL),
(173, 75, 7, 1, 3000.00, 3000.00, NULL, NULL),
(174, 75, 3, 3, 3000.00, 9000.00, NULL, NULL),
(175, 76, 9, 2, 3000.00, 6000.00, NULL, NULL),
(176, 77, 4, 2, 3000.00, 6000.00, NULL, NULL),
(177, 78, 9, 1, 3000.00, 3000.00, NULL, NULL),
(178, 78, 6, 2, 3000.00, 6000.00, NULL, NULL),
(179, 78, 10, 1, 3000.00, 3000.00, NULL, NULL),
(180, 78, 3, 2, 3000.00, 6000.00, NULL, NULL),
(181, 79, 4, 2, 3000.00, 6000.00, NULL, NULL),
(182, 80, 8, 1, 3000.00, 3000.00, NULL, NULL),
(183, 80, 11, 3, 3000.00, 9000.00, NULL, NULL),
(184, 80, 8, 2, 3000.00, 6000.00, NULL, NULL),
(185, 81, 5, 3, 3000.00, 9000.00, NULL, NULL),
(186, 81, 10, 1, 3000.00, 3000.00, NULL, NULL),
(187, 82, 7, 1, 3000.00, 3000.00, NULL, NULL),
(188, 82, 8, 1, 3000.00, 3000.00, NULL, NULL),
(189, 82, 6, 3, 3000.00, 9000.00, NULL, NULL),
(190, 83, 5, 3, 3000.00, 9000.00, NULL, NULL),
(191, 84, 1, 3, 3000.00, 9000.00, NULL, NULL),
(192, 84, 8, 3, 3000.00, 9000.00, NULL, NULL),
(193, 85, 4, 3, 3000.00, 9000.00, NULL, NULL),
(194, 85, 8, 1, 3000.00, 3000.00, NULL, NULL),
(195, 86, 9, 2, 3000.00, 6000.00, NULL, NULL),
(196, 86, 5, 3, 3000.00, 9000.00, NULL, NULL),
(197, 86, 4, 2, 3000.00, 6000.00, NULL, NULL),
(198, 86, 5, 3, 3000.00, 9000.00, NULL, NULL),
(199, 87, 5, 3, 3000.00, 9000.00, NULL, NULL),
(200, 87, 7, 2, 3000.00, 6000.00, NULL, NULL),
(201, 87, 11, 3, 3000.00, 9000.00, NULL, NULL),
(202, 88, 11, 2, 3000.00, 6000.00, NULL, NULL),
(203, 88, 6, 2, 3000.00, 6000.00, NULL, NULL),
(204, 88, 5, 1, 3000.00, 3000.00, NULL, NULL),
(205, 89, 6, 3, 3000.00, 9000.00, NULL, NULL),
(206, 89, 6, 1, 3000.00, 3000.00, NULL, NULL),
(207, 90, 6, 1, 3000.00, 3000.00, NULL, NULL),
(208, 91, 10, 1, 3000.00, 3000.00, NULL, NULL),
(209, 92, 6, 1, 3000.00, 3000.00, NULL, NULL),
(210, 92, 9, 2, 3000.00, 6000.00, NULL, NULL),
(211, 92, 7, 3, 3000.00, 9000.00, NULL, NULL),
(212, 92, 8, 1, 3000.00, 3000.00, NULL, NULL),
(213, 93, 7, 3, 3000.00, 9000.00, NULL, NULL),
(214, 93, 7, 1, 3000.00, 3000.00, NULL, NULL),
(215, 93, 8, 3, 3000.00, 9000.00, NULL, NULL),
(216, 94, 4, 2, 3000.00, 6000.00, NULL, NULL),
(217, 94, 11, 2, 3000.00, 6000.00, NULL, NULL),
(218, 94, 1, 1, 3000.00, 3000.00, NULL, NULL),
(219, 94, 6, 2, 3000.00, 6000.00, NULL, NULL),
(220, 95, 10, 1, 3000.00, 3000.00, NULL, NULL),
(221, 95, 7, 3, 3000.00, 9000.00, NULL, NULL),
(222, 95, 10, 2, 3000.00, 6000.00, NULL, NULL),
(223, 96, 7, 2, 3000.00, 6000.00, NULL, NULL),
(224, 97, 6, 3, 3000.00, 9000.00, NULL, NULL),
(225, 97, 5, 1, 3000.00, 3000.00, NULL, NULL),
(226, 98, 8, 1, 3000.00, 3000.00, NULL, NULL),
(227, 98, 3, 1, 3000.00, 3000.00, NULL, NULL),
(228, 98, 10, 3, 3000.00, 9000.00, NULL, NULL),
(229, 99, 2, 1, 3000.00, 3000.00, NULL, NULL),
(230, 99, 7, 2, 3000.00, 6000.00, NULL, NULL),
(231, 99, 11, 2, 3000.00, 6000.00, NULL, NULL),
(232, 100, 1, 3, 3000.00, 9000.00, NULL, NULL),
(233, 101, 8, 1, 3000.00, 3000.00, NULL, NULL),
(234, 101, 4, 3, 3000.00, 9000.00, NULL, NULL),
(235, 102, 11, 1, 3000.00, 3000.00, NULL, NULL),
(236, 102, 11, 3, 3000.00, 9000.00, NULL, NULL),
(237, 102, 7, 2, 3000.00, 6000.00, NULL, NULL),
(238, 103, 8, 2, 3000.00, 6000.00, NULL, NULL),
(239, 103, 4, 2, 3000.00, 6000.00, NULL, NULL),
(240, 104, 1, 1, 3000.00, 3000.00, NULL, NULL),
(241, 104, 9, 1, 3000.00, 3000.00, NULL, NULL),
(242, 104, 7, 3, 3000.00, 9000.00, NULL, NULL),
(243, 104, 1, 1, 3000.00, 3000.00, NULL, NULL),
(244, 105, 11, 2, 3000.00, 6000.00, NULL, NULL),
(245, 105, 1, 2, 3000.00, 6000.00, NULL, NULL),
(246, 106, 11, 3, 3000.00, 9000.00, NULL, NULL),
(247, 106, 5, 1, 3000.00, 3000.00, NULL, NULL),
(248, 107, 9, 3, 3000.00, 9000.00, NULL, NULL),
(249, 108, 8, 1, 3000.00, 3000.00, NULL, NULL),
(250, 108, 2, 2, 3000.00, 6000.00, NULL, NULL),
(251, 109, 1, 2, 3000.00, 6000.00, NULL, NULL),
(252, 109, 5, 2, 3000.00, 6000.00, NULL, NULL),
(253, 109, 11, 1, 3000.00, 3000.00, NULL, NULL),
(254, 109, 7, 1, 3000.00, 3000.00, NULL, NULL),
(255, 110, 3, 1, 3000.00, 3000.00, NULL, NULL),
(256, 110, 4, 3, 3000.00, 9000.00, NULL, NULL),
(257, 111, 1, 3, 3000.00, 9000.00, NULL, NULL),
(258, 111, 9, 1, 3000.00, 3000.00, NULL, NULL),
(259, 111, 2, 2, 3000.00, 6000.00, NULL, NULL),
(260, 111, 5, 3, 3000.00, 9000.00, NULL, NULL),
(261, 112, 9, 2, 3000.00, 6000.00, NULL, NULL),
(262, 112, 2, 2, 3000.00, 6000.00, NULL, NULL),
(263, 112, 9, 2, 3000.00, 6000.00, NULL, NULL),
(264, 113, 11, 3, 3000.00, 9000.00, NULL, NULL),
(265, 114, 5, 1, 3000.00, 3000.00, NULL, NULL),
(266, 114, 11, 2, 3000.00, 6000.00, NULL, NULL),
(267, 114, 1, 3, 3000.00, 9000.00, NULL, NULL),
(268, 114, 9, 2, 3000.00, 6000.00, NULL, NULL),
(269, 115, 8, 3, 3000.00, 9000.00, NULL, NULL),
(270, 115, 3, 1, 3000.00, 3000.00, NULL, NULL),
(271, 115, 2, 2, 3000.00, 6000.00, NULL, NULL),
(272, 115, 9, 3, 3000.00, 9000.00, NULL, NULL),
(273, 116, 11, 1, 3000.00, 3000.00, NULL, NULL),
(274, 117, 3, 1, 3000.00, 3000.00, NULL, NULL),
(275, 118, 1, 3, 3000.00, 9000.00, NULL, NULL),
(276, 118, 10, 1, 3000.00, 3000.00, NULL, NULL),
(277, 118, 8, 2, 3000.00, 6000.00, NULL, NULL),
(278, 119, 11, 3, 3000.00, 9000.00, NULL, NULL),
(279, 119, 2, 2, 3000.00, 6000.00, NULL, NULL),
(280, 120, 8, 3, 3000.00, 9000.00, NULL, NULL),
(281, 121, 1, 1, 3000.00, 3000.00, NULL, NULL),
(282, 121, 6, 1, 3000.00, 3000.00, NULL, NULL),
(283, 122, 7, 2, 3000.00, 6000.00, NULL, NULL),
(284, 122, 3, 2, 3000.00, 6000.00, NULL, NULL),
(285, 122, 5, 1, 3000.00, 3000.00, NULL, NULL),
(286, 122, 4, 1, 3000.00, 3000.00, NULL, NULL),
(287, 123, 2, 1, 3000.00, 3000.00, NULL, NULL),
(288, 123, 2, 3, 3000.00, 9000.00, NULL, NULL),
(289, 123, 3, 2, 3000.00, 6000.00, NULL, NULL),
(290, 124, 10, 2, 3000.00, 6000.00, NULL, NULL),
(291, 124, 4, 1, 3000.00, 3000.00, NULL, NULL),
(292, 124, 7, 1, 3000.00, 3000.00, NULL, NULL),
(293, 125, 4, 2, 3000.00, 6000.00, NULL, NULL),
(294, 125, 6, 2, 3000.00, 6000.00, NULL, NULL),
(295, 125, 3, 2, 3000.00, 6000.00, NULL, NULL),
(296, 126, 9, 3, 3000.00, 9000.00, NULL, NULL),
(297, 127, 3, 3, 3000.00, 9000.00, NULL, NULL),
(298, 128, 8, 2, 3000.00, 6000.00, NULL, NULL),
(299, 128, 3, 3, 3000.00, 9000.00, NULL, NULL),
(300, 128, 4, 3, 3000.00, 9000.00, NULL, NULL),
(301, 129, 4, 2, 3000.00, 6000.00, NULL, NULL),
(302, 129, 8, 3, 3000.00, 9000.00, NULL, NULL),
(303, 130, 5, 3, 3000.00, 9000.00, NULL, NULL),
(304, 131, 8, 3, 3000.00, 9000.00, NULL, NULL),
(305, 131, 10, 2, 3000.00, 6000.00, NULL, NULL),
(306, 132, 4, 2, 3000.00, 6000.00, NULL, NULL),
(307, 132, 5, 1, 3000.00, 3000.00, NULL, NULL),
(308, 132, 4, 3, 3000.00, 9000.00, NULL, NULL),
(309, 133, 7, 1, 3000.00, 3000.00, NULL, NULL),
(310, 133, 5, 3, 3000.00, 9000.00, NULL, NULL),
(311, 133, 10, 2, 3000.00, 6000.00, NULL, NULL),
(312, 133, 10, 2, 3000.00, 6000.00, NULL, NULL),
(313, 134, 11, 3, 3000.00, 9000.00, NULL, NULL),
(314, 134, 3, 3, 3000.00, 9000.00, NULL, NULL),
(315, 135, 1, 1, 3000.00, 3000.00, NULL, NULL),
(316, 135, 2, 2, 3000.00, 6000.00, NULL, NULL),
(317, 135, 11, 2, 3000.00, 6000.00, NULL, NULL),
(318, 135, 8, 1, 3000.00, 3000.00, NULL, NULL),
(319, 136, 10, 1, 3000.00, 3000.00, NULL, NULL),
(320, 136, 8, 1, 3000.00, 3000.00, NULL, NULL),
(321, 137, 1, 1, 3000.00, 3000.00, NULL, NULL),
(322, 137, 10, 3, 3000.00, 9000.00, NULL, NULL),
(323, 137, 6, 1, 3000.00, 3000.00, NULL, NULL),
(324, 138, 9, 2, 3000.00, 6000.00, NULL, NULL),
(325, 138, 7, 1, 3000.00, 3000.00, NULL, NULL),
(326, 139, 2, 2, 3000.00, 6000.00, NULL, NULL),
(327, 139, 5, 3, 3000.00, 9000.00, NULL, NULL),
(328, 139, 9, 1, 3000.00, 3000.00, NULL, NULL),
(329, 139, 4, 2, 3000.00, 6000.00, NULL, NULL),
(330, 140, 2, 2, 3000.00, 6000.00, NULL, NULL),
(331, 140, 1, 3, 3000.00, 9000.00, NULL, NULL),
(332, 141, 7, 1, 3000.00, 3000.00, NULL, NULL),
(333, 141, 3, 1, 3000.00, 3000.00, NULL, NULL),
(334, 141, 4, 3, 3000.00, 9000.00, NULL, NULL),
(335, 142, 5, 1, 3000.00, 3000.00, NULL, NULL),
(336, 142, 5, 3, 3000.00, 9000.00, NULL, NULL),
(337, 143, 2, 1, 3000.00, 3000.00, NULL, NULL),
(338, 143, 5, 2, 3000.00, 6000.00, NULL, NULL),
(339, 143, 4, 1, 3000.00, 3000.00, NULL, NULL),
(340, 143, 2, 3, 3000.00, 9000.00, NULL, NULL),
(341, 144, 6, 1, 3000.00, 3000.00, NULL, NULL),
(342, 144, 8, 2, 3000.00, 6000.00, NULL, NULL),
(343, 144, 10, 2, 3000.00, 6000.00, NULL, NULL),
(344, 144, 4, 2, 3000.00, 6000.00, NULL, NULL),
(345, 145, 2, 1, 3000.00, 3000.00, NULL, NULL),
(346, 145, 1, 3, 3000.00, 9000.00, NULL, NULL),
(347, 145, 11, 3, 3000.00, 9000.00, NULL, NULL),
(348, 145, 9, 3, 3000.00, 9000.00, NULL, NULL),
(349, 146, 11, 3, 3000.00, 9000.00, NULL, NULL),
(350, 146, 8, 2, 3000.00, 6000.00, NULL, NULL),
(351, 147, 1, 3, 3000.00, 9000.00, NULL, NULL),
(352, 147, 3, 3, 3000.00, 9000.00, NULL, NULL),
(353, 147, 4, 1, 3000.00, 3000.00, NULL, NULL),
(354, 148, 10, 3, 3000.00, 9000.00, NULL, NULL),
(355, 148, 6, 1, 3000.00, 3000.00, NULL, NULL),
(356, 148, 9, 2, 3000.00, 6000.00, NULL, NULL),
(357, 149, 2, 1, 3000.00, 3000.00, NULL, NULL),
(358, 149, 5, 3, 3000.00, 9000.00, NULL, NULL),
(359, 149, 3, 2, 3000.00, 6000.00, NULL, NULL),
(360, 149, 8, 1, 3000.00, 3000.00, NULL, NULL),
(361, 150, 11, 3, 3000.00, 9000.00, NULL, NULL),
(362, 150, 7, 3, 3000.00, 9000.00, NULL, NULL),
(363, 150, 10, 2, 3000.00, 6000.00, NULL, NULL),
(364, 151, 5, 2, 3000.00, 6000.00, NULL, NULL),
(365, 151, 9, 3, 3000.00, 9000.00, NULL, NULL),
(366, 151, 9, 2, 3000.00, 6000.00, NULL, NULL),
(367, 151, 4, 2, 3000.00, 6000.00, NULL, NULL),
(368, 152, 2, 2, 3000.00, 6000.00, NULL, NULL),
(369, 153, 5, 3, 3000.00, 9000.00, NULL, NULL),
(370, 153, 7, 3, 3000.00, 9000.00, NULL, NULL),
(371, 154, 2, 3, 3000.00, 9000.00, NULL, NULL),
(372, 154, 4, 1, 3000.00, 3000.00, NULL, NULL),
(373, 155, 9, 3, 3000.00, 9000.00, NULL, NULL),
(374, 155, 3, 1, 3000.00, 3000.00, NULL, NULL),
(375, 155, 2, 2, 3000.00, 6000.00, NULL, NULL),
(376, 156, 8, 1, 3000.00, 3000.00, NULL, NULL),
(377, 157, 4, 2, 3000.00, 6000.00, NULL, NULL),
(378, 157, 6, 1, 3000.00, 3000.00, NULL, NULL),
(379, 157, 6, 2, 3000.00, 6000.00, NULL, NULL),
(380, 157, 3, 3, 3000.00, 9000.00, NULL, NULL),
(381, 158, 6, 2, 3000.00, 6000.00, NULL, NULL),
(382, 159, 5, 1, 3000.00, 3000.00, NULL, NULL),
(383, 159, 6, 2, 3000.00, 6000.00, NULL, NULL),
(384, 160, 3, 2, 3000.00, 6000.00, NULL, NULL),
(385, 160, 7, 2, 3000.00, 6000.00, NULL, NULL),
(386, 161, 1, 3, 3000.00, 9000.00, NULL, NULL),
(387, 161, 5, 2, 3000.00, 6000.00, NULL, NULL),
(388, 161, 8, 2, 3000.00, 6000.00, NULL, NULL),
(389, 161, 1, 1, 3000.00, 3000.00, NULL, NULL),
(390, 162, 3, 1, 3000.00, 3000.00, NULL, NULL),
(391, 162, 6, 3, 3000.00, 9000.00, NULL, NULL),
(392, 163, 6, 1, 3000.00, 3000.00, NULL, NULL),
(393, 164, 5, 2, 3000.00, 6000.00, NULL, NULL),
(394, 164, 6, 3, 3000.00, 9000.00, NULL, NULL),
(395, 164, 4, 2, 3000.00, 6000.00, NULL, NULL),
(396, 165, 4, 3, 3000.00, 9000.00, NULL, NULL),
(397, 165, 5, 1, 3000.00, 3000.00, NULL, NULL),
(398, 166, 10, 2, 3000.00, 6000.00, NULL, NULL),
(399, 167, 10, 2, 3000.00, 6000.00, NULL, NULL),
(400, 167, 6, 3, 3000.00, 9000.00, NULL, NULL),
(401, 168, 11, 1, 3000.00, 3000.00, NULL, NULL),
(402, 168, 5, 1, 3000.00, 3000.00, NULL, NULL),
(403, 169, 5, 3, 3000.00, 9000.00, NULL, NULL),
(404, 169, 5, 2, 3000.00, 6000.00, NULL, NULL),
(405, 169, 2, 1, 3000.00, 3000.00, NULL, NULL),
(406, 170, 3, 3, 3000.00, 9000.00, NULL, NULL),
(407, 170, 10, 1, 3000.00, 3000.00, NULL, NULL),
(408, 170, 1, 3, 3000.00, 9000.00, NULL, NULL),
(409, 171, 11, 3, 3000.00, 9000.00, NULL, NULL),
(410, 171, 8, 3, 3000.00, 9000.00, NULL, NULL),
(411, 171, 11, 2, 3000.00, 6000.00, NULL, NULL),
(412, 172, 1, 1, 3000.00, 3000.00, NULL, NULL),
(413, 173, 2, 3, 3000.00, 9000.00, NULL, NULL),
(414, 173, 7, 1, 3000.00, 3000.00, NULL, NULL),
(415, 174, 2, 3, 3000.00, 9000.00, NULL, NULL),
(416, 175, 10, 2, 3000.00, 6000.00, NULL, NULL),
(417, 176, 1, 1, 3000.00, 3000.00, NULL, NULL),
(418, 176, 9, 3, 3000.00, 9000.00, NULL, NULL),
(419, 176, 9, 1, 3000.00, 3000.00, NULL, NULL),
(420, 177, 9, 2, 3000.00, 6000.00, NULL, NULL),
(421, 177, 11, 3, 3000.00, 9000.00, NULL, NULL),
(422, 178, 1, 3, 3000.00, 9000.00, NULL, NULL),
(423, 178, 10, 1, 3000.00, 3000.00, NULL, NULL),
(424, 179, 4, 3, 3000.00, 9000.00, NULL, NULL),
(425, 179, 6, 1, 3000.00, 3000.00, NULL, NULL),
(426, 179, 5, 3, 3000.00, 9000.00, NULL, NULL),
(427, 180, 8, 2, 3000.00, 6000.00, NULL, NULL),
(428, 181, 8, 2, 3000.00, 6000.00, NULL, NULL),
(429, 181, 2, 2, 3000.00, 6000.00, NULL, NULL),
(430, 181, 7, 2, 3000.00, 6000.00, NULL, NULL),
(431, 182, 4, 1, 3000.00, 3000.00, NULL, NULL),
(432, 182, 3, 2, 3000.00, 6000.00, NULL, NULL),
(433, 182, 3, 1, 3000.00, 3000.00, NULL, NULL),
(434, 183, 3, 3, 3000.00, 9000.00, NULL, NULL),
(435, 183, 8, 3, 3000.00, 9000.00, NULL, NULL),
(436, 183, 11, 1, 3000.00, 3000.00, NULL, NULL),
(437, 184, 7, 3, 3000.00, 9000.00, NULL, NULL),
(438, 184, 2, 3, 3000.00, 9000.00, NULL, NULL),
(439, 185, 4, 3, 3000.00, 9000.00, NULL, NULL),
(440, 185, 8, 3, 3000.00, 9000.00, NULL, NULL),
(441, 185, 4, 3, 3000.00, 9000.00, NULL, NULL),
(442, 186, 11, 3, 3000.00, 9000.00, NULL, NULL),
(443, 186, 4, 3, 3000.00, 9000.00, NULL, NULL),
(444, 186, 10, 3, 3000.00, 9000.00, NULL, NULL),
(445, 186, 6, 3, 3000.00, 9000.00, NULL, NULL),
(446, 187, 9, 2, 3000.00, 6000.00, NULL, NULL),
(447, 187, 1, 3, 3000.00, 9000.00, NULL, NULL),
(448, 188, 6, 3, 3000.00, 9000.00, NULL, NULL),
(449, 189, 11, 3, 3000.00, 9000.00, NULL, NULL),
(450, 189, 11, 3, 3000.00, 9000.00, NULL, NULL),
(451, 189, 5, 3, 3000.00, 9000.00, NULL, NULL),
(452, 189, 5, 1, 3000.00, 3000.00, NULL, NULL),
(453, 190, 5, 3, 3000.00, 9000.00, NULL, NULL),
(454, 190, 11, 1, 3000.00, 3000.00, NULL, NULL),
(455, 191, 6, 3, 3000.00, 9000.00, NULL, NULL),
(456, 191, 4, 2, 3000.00, 6000.00, NULL, NULL),
(457, 192, 5, 1, 3000.00, 3000.00, NULL, NULL),
(458, 192, 6, 1, 3000.00, 3000.00, NULL, NULL),
(459, 192, 6, 1, 3000.00, 3000.00, NULL, NULL),
(460, 192, 6, 3, 3000.00, 9000.00, NULL, NULL),
(461, 193, 9, 3, 3000.00, 9000.00, NULL, NULL),
(462, 193, 1, 2, 3000.00, 6000.00, NULL, NULL),
(463, 193, 8, 1, 3000.00, 3000.00, NULL, NULL),
(464, 193, 11, 1, 3000.00, 3000.00, NULL, NULL),
(465, 194, 11, 2, 3000.00, 6000.00, NULL, NULL),
(466, 194, 2, 2, 3000.00, 6000.00, NULL, NULL),
(467, 194, 3, 1, 3000.00, 3000.00, NULL, NULL),
(468, 194, 9, 3, 3000.00, 9000.00, NULL, NULL),
(469, 195, 10, 3, 3000.00, 9000.00, NULL, NULL),
(470, 195, 11, 2, 3000.00, 6000.00, NULL, NULL),
(471, 196, 11, 3, 3000.00, 9000.00, NULL, NULL),
(472, 197, 2, 2, 3000.00, 6000.00, NULL, NULL),
(473, 197, 10, 1, 3000.00, 3000.00, NULL, NULL),
(474, 197, 7, 1, 3000.00, 3000.00, NULL, NULL),
(475, 198, 1, 2, 3000.00, 6000.00, NULL, NULL),
(476, 198, 2, 2, 3000.00, 6000.00, NULL, NULL),
(477, 199, 10, 1, 3000.00, 3000.00, NULL, NULL),
(478, 199, 9, 1, 3000.00, 3000.00, NULL, NULL),
(479, 199, 6, 3, 3000.00, 9000.00, NULL, NULL),
(480, 200, 6, 2, 3000.00, 6000.00, NULL, NULL),
(481, 200, 10, 1, 3000.00, 3000.00, NULL, NULL),
(482, 200, 3, 3, 3000.00, 9000.00, NULL, NULL),
(483, 200, 8, 2, 3000.00, 6000.00, NULL, NULL),
(484, 201, 11, 1, 3000.00, 3000.00, NULL, NULL),
(485, 201, 6, 1, 3000.00, 3000.00, NULL, NULL),
(486, 202, 7, 1, 3000.00, 3000.00, NULL, NULL),
(487, 202, 10, 1, 3000.00, 3000.00, NULL, NULL),
(488, 202, 10, 2, 3000.00, 6000.00, NULL, NULL),
(489, 203, 7, 3, 3000.00, 9000.00, NULL, NULL),
(490, 203, 4, 3, 3000.00, 9000.00, NULL, NULL),
(491, 203, 6, 3, 3000.00, 9000.00, NULL, NULL),
(492, 203, 9, 2, 3000.00, 6000.00, NULL, NULL),
(493, 204, 1, 2, 3000.00, 6000.00, NULL, NULL),
(494, 204, 10, 3, 3000.00, 9000.00, NULL, NULL),
(495, 204, 11, 3, 3000.00, 9000.00, NULL, NULL),
(496, 205, 5, 3, 3000.00, 9000.00, NULL, NULL),
(497, 205, 5, 1, 3000.00, 3000.00, NULL, NULL),
(498, 205, 8, 3, 3000.00, 9000.00, NULL, NULL),
(499, 206, 8, 2, 3000.00, 6000.00, NULL, NULL),
(500, 206, 5, 2, 3000.00, 6000.00, NULL, NULL),
(501, 207, 2, 2, 3000.00, 6000.00, NULL, NULL),
(502, 207, 9, 1, 3000.00, 3000.00, NULL, NULL),
(503, 207, 7, 1, 3000.00, 3000.00, NULL, NULL),
(504, 208, 8, 2, 3000.00, 6000.00, NULL, NULL),
(505, 208, 5, 2, 3000.00, 6000.00, NULL, NULL),
(506, 208, 11, 2, 3000.00, 6000.00, NULL, NULL),
(507, 209, 8, 2, 3000.00, 6000.00, NULL, NULL),
(508, 209, 7, 2, 3000.00, 6000.00, NULL, NULL),
(509, 209, 1, 3, 3000.00, 9000.00, NULL, NULL),
(510, 209, 10, 1, 3000.00, 3000.00, NULL, NULL),
(511, 210, 4, 1, 3000.00, 3000.00, NULL, NULL),
(512, 210, 5, 3, 3000.00, 9000.00, NULL, NULL),
(513, 211, 8, 2, 3000.00, 6000.00, NULL, NULL),
(514, 212, 11, 1, 3000.00, 3000.00, NULL, NULL),
(515, 212, 9, 1, 3000.00, 3000.00, NULL, NULL),
(516, 213, 5, 2, 3000.00, 6000.00, NULL, NULL),
(517, 213, 7, 2, 3000.00, 6000.00, NULL, NULL),
(518, 213, 2, 1, 3000.00, 3000.00, NULL, NULL),
(519, 213, 3, 1, 3000.00, 3000.00, NULL, NULL),
(520, 214, 5, 1, 3000.00, 3000.00, NULL, NULL),
(521, 214, 7, 3, 3000.00, 9000.00, NULL, NULL),
(522, 215, 10, 2, 3000.00, 6000.00, NULL, NULL),
(523, 215, 5, 2, 3000.00, 6000.00, NULL, NULL),
(524, 216, 7, 3, 3000.00, 9000.00, NULL, NULL),
(525, 216, 7, 3, 3000.00, 9000.00, NULL, NULL),
(526, 217, 6, 3, 3000.00, 9000.00, NULL, NULL),
(527, 217, 4, 1, 3000.00, 3000.00, NULL, NULL),
(528, 217, 8, 2, 3000.00, 6000.00, NULL, NULL),
(529, 218, 10, 3, 3000.00, 9000.00, NULL, NULL),
(530, 218, 9, 3, 3000.00, 9000.00, NULL, NULL),
(531, 218, 3, 2, 3000.00, 6000.00, NULL, NULL),
(532, 218, 2, 3, 3000.00, 9000.00, NULL, NULL),
(533, 219, 1, 3, 3000.00, 9000.00, NULL, NULL),
(534, 219, 8, 3, 3000.00, 9000.00, NULL, NULL),
(535, 219, 1, 1, 3000.00, 3000.00, NULL, NULL),
(536, 219, 9, 2, 3000.00, 6000.00, NULL, NULL),
(537, 220, 1, 3, 3000.00, 9000.00, NULL, NULL),
(538, 220, 8, 2, 3000.00, 6000.00, NULL, NULL),
(539, 220, 2, 3, 3000.00, 9000.00, NULL, NULL),
(540, 220, 11, 3, 3000.00, 9000.00, NULL, NULL),
(541, 221, 7, 2, 3000.00, 6000.00, NULL, NULL),
(542, 222, 6, 2, 3000.00, 6000.00, NULL, NULL),
(543, 223, 10, 1, 3000.00, 3000.00, NULL, NULL),
(544, 223, 9, 2, 3000.00, 6000.00, NULL, NULL),
(545, 224, 11, 1, 3000.00, 3000.00, NULL, NULL),
(546, 224, 2, 2, 3000.00, 6000.00, NULL, NULL),
(547, 224, 2, 2, 3000.00, 6000.00, NULL, NULL),
(548, 224, 9, 2, 3000.00, 6000.00, NULL, NULL),
(549, 225, 3, 2, 3000.00, 6000.00, NULL, NULL),
(550, 226, 10, 3, 3000.00, 9000.00, NULL, NULL),
(551, 227, 7, 3, 3000.00, 9000.00, NULL, NULL),
(552, 227, 6, 1, 3000.00, 3000.00, NULL, NULL),
(553, 228, 10, 2, 3000.00, 6000.00, NULL, NULL),
(554, 229, 3, 2, 3000.00, 6000.00, NULL, NULL),
(555, 230, 1, 1, 3000.00, 3000.00, NULL, NULL),
(556, 231, 1, 1, 3000.00, 3000.00, NULL, NULL),
(557, 231, 2, 2, 3000.00, 6000.00, NULL, NULL),
(558, 232, 4, 2, 3000.00, 6000.00, NULL, NULL),
(559, 232, 4, 1, 3000.00, 3000.00, NULL, NULL),
(560, 232, 11, 1, 3000.00, 3000.00, NULL, NULL),
(561, 232, 7, 2, 3000.00, 6000.00, NULL, NULL),
(562, 233, 9, 1, 3000.00, 3000.00, NULL, NULL),
(563, 234, 7, 3, 3000.00, 9000.00, NULL, NULL),
(564, 234, 9, 2, 3000.00, 6000.00, NULL, NULL),
(565, 234, 3, 2, 3000.00, 6000.00, NULL, NULL),
(566, 234, 10, 2, 3000.00, 6000.00, NULL, NULL),
(567, 235, 5, 1, 3000.00, 3000.00, NULL, NULL),
(568, 235, 9, 3, 3000.00, 9000.00, NULL, NULL),
(569, 235, 5, 2, 3000.00, 6000.00, NULL, NULL),
(570, 235, 2, 3, 3000.00, 9000.00, NULL, NULL),
(571, 236, 8, 2, 3000.00, 6000.00, NULL, NULL),
(572, 236, 6, 3, 3000.00, 9000.00, NULL, NULL),
(573, 236, 7, 1, 3000.00, 3000.00, NULL, NULL),
(574, 237, 6, 1, 3000.00, 3000.00, NULL, NULL),
(575, 237, 4, 2, 3000.00, 6000.00, NULL, NULL),
(576, 237, 8, 2, 3000.00, 6000.00, NULL, NULL),
(577, 238, 1, 1, 3000.00, 3000.00, NULL, NULL),
(578, 238, 1, 3, 3000.00, 9000.00, NULL, NULL),
(579, 238, 1, 2, 3000.00, 6000.00, NULL, NULL),
(580, 239, 9, 2, 3000.00, 6000.00, NULL, NULL),
(581, 239, 3, 3, 3000.00, 9000.00, NULL, NULL),
(582, 240, 6, 2, 3000.00, 6000.00, NULL, NULL),
(583, 240, 5, 1, 3000.00, 3000.00, NULL, NULL),
(584, 241, 11, 1, 3000.00, 3000.00, NULL, NULL),
(585, 241, 10, 1, 3000.00, 3000.00, NULL, NULL),
(586, 241, 7, 3, 3000.00, 9000.00, NULL, NULL),
(587, 242, 9, 1, 3000.00, 3000.00, NULL, NULL),
(588, 242, 4, 3, 3000.00, 9000.00, NULL, NULL),
(589, 243, 11, 3, 3000.00, 9000.00, NULL, NULL),
(590, 243, 10, 1, 3000.00, 3000.00, NULL, NULL),
(591, 243, 7, 3, 3000.00, 9000.00, NULL, NULL),
(592, 243, 8, 1, 3000.00, 3000.00, NULL, NULL),
(593, 244, 7, 3, 3000.00, 9000.00, NULL, NULL),
(594, 245, 7, 3, 3000.00, 9000.00, NULL, NULL),
(595, 245, 9, 2, 3000.00, 6000.00, NULL, NULL),
(596, 245, 5, 2, 3000.00, 6000.00, NULL, NULL),
(597, 246, 1, 2, 3000.00, 6000.00, NULL, NULL),
(598, 246, 11, 2, 3000.00, 6000.00, NULL, NULL),
(599, 247, 7, 2, 3000.00, 6000.00, NULL, NULL),
(600, 248, 6, 2, 3000.00, 6000.00, NULL, NULL),
(601, 248, 11, 3, 3000.00, 9000.00, NULL, NULL),
(602, 249, 7, 1, 3000.00, 3000.00, NULL, NULL),
(603, 249, 10, 3, 3000.00, 9000.00, NULL, NULL),
(604, 249, 2, 2, 3000.00, 6000.00, NULL, NULL),
(605, 249, 1, 1, 3000.00, 3000.00, NULL, NULL),
(606, 250, 8, 1, 3000.00, 3000.00, NULL, NULL),
(607, 250, 3, 1, 3000.00, 3000.00, NULL, NULL),
(608, 250, 4, 2, 3000.00, 6000.00, NULL, NULL),
(609, 250, 10, 1, 3000.00, 3000.00, NULL, NULL),
(610, 251, 2, 3, 3000.00, 9000.00, NULL, NULL),
(611, 252, 10, 2, 3000.00, 6000.00, NULL, NULL),
(612, 253, 6, 1, 3000.00, 3000.00, NULL, NULL),
(613, 253, 3, 1, 3000.00, 3000.00, NULL, NULL),
(614, 253, 9, 2, 3000.00, 6000.00, NULL, NULL),
(615, 254, 7, 1, 3000.00, 3000.00, NULL, NULL),
(616, 255, 8, 3, 3000.00, 9000.00, NULL, NULL),
(617, 256, 2, 1, 3000.00, 3000.00, NULL, NULL),
(618, 256, 11, 2, 3000.00, 6000.00, NULL, NULL),
(619, 257, 5, 2, 3000.00, 6000.00, NULL, NULL),
(620, 257, 4, 3, 3000.00, 9000.00, NULL, NULL),
(621, 257, 4, 2, 3000.00, 6000.00, NULL, NULL),
(622, 258, 5, 3, 3000.00, 9000.00, NULL, NULL),
(623, 259, 7, 1, 3000.00, 3000.00, NULL, NULL),
(624, 260, 11, 2, 3000.00, 6000.00, NULL, NULL),
(625, 260, 4, 1, 3000.00, 3000.00, NULL, NULL),
(626, 261, 9, 3, 3000.00, 9000.00, NULL, NULL),
(627, 262, 5, 2, 3000.00, 6000.00, NULL, NULL),
(628, 262, 2, 2, 3000.00, 6000.00, NULL, NULL),
(629, 263, 7, 1, 3000.00, 3000.00, NULL, NULL),
(630, 263, 8, 2, 3000.00, 6000.00, NULL, NULL),
(631, 263, 2, 3, 3000.00, 9000.00, NULL, NULL),
(632, 264, 3, 3, 3000.00, 9000.00, NULL, NULL),
(633, 265, 5, 2, 3000.00, 6000.00, NULL, NULL),
(634, 265, 9, 2, 3000.00, 6000.00, NULL, NULL),
(635, 265, 8, 2, 3000.00, 6000.00, NULL, NULL),
(636, 266, 3, 1, 3000.00, 3000.00, NULL, NULL),
(637, 266, 1, 3, 3000.00, 9000.00, NULL, NULL),
(638, 266, 7, 3, 3000.00, 9000.00, NULL, NULL),
(639, 267, 7, 2, 3000.00, 6000.00, NULL, NULL),
(640, 267, 6, 1, 3000.00, 3000.00, NULL, NULL),
(641, 268, 1, 1, 3000.00, 3000.00, NULL, NULL),
(642, 268, 11, 1, 3000.00, 3000.00, NULL, NULL),
(643, 268, 11, 1, 3000.00, 3000.00, NULL, NULL),
(644, 268, 4, 1, 3000.00, 3000.00, NULL, NULL),
(645, 269, 7, 3, 3000.00, 9000.00, NULL, NULL),
(646, 270, 1, 1, 3000.00, 3000.00, NULL, NULL),
(647, 270, 7, 2, 3000.00, 6000.00, NULL, NULL),
(648, 271, 3, 1, 3000.00, 3000.00, NULL, NULL),
(649, 271, 8, 3, 3000.00, 9000.00, NULL, NULL),
(650, 272, 11, 1, 3000.00, 3000.00, NULL, NULL),
(651, 272, 10, 2, 3000.00, 6000.00, NULL, NULL),
(652, 273, 3, 2, 3000.00, 6000.00, NULL, NULL),
(653, 274, 10, 2, 3000.00, 6000.00, NULL, NULL),
(654, 274, 4, 1, 3000.00, 3000.00, NULL, NULL),
(655, 274, 9, 2, 3000.00, 6000.00, NULL, NULL),
(656, 274, 11, 2, 3000.00, 6000.00, NULL, NULL),
(657, 275, 7, 3, 3000.00, 9000.00, NULL, NULL),
(658, 275, 5, 2, 3000.00, 6000.00, NULL, NULL),
(659, 275, 6, 3, 3000.00, 9000.00, NULL, NULL),
(660, 276, 4, 3, 3000.00, 9000.00, NULL, NULL),
(661, 276, 7, 2, 3000.00, 6000.00, NULL, NULL),
(662, 276, 6, 1, 3000.00, 3000.00, NULL, NULL),
(663, 276, 5, 1, 3000.00, 3000.00, NULL, NULL),
(664, 277, 11, 3, 3000.00, 9000.00, NULL, NULL),
(665, 277, 3, 3, 3000.00, 9000.00, NULL, NULL),
(666, 277, 9, 2, 3000.00, 6000.00, NULL, NULL),
(667, 277, 5, 1, 3000.00, 3000.00, NULL, NULL),
(668, 278, 9, 3, 3000.00, 9000.00, NULL, NULL),
(669, 278, 1, 3, 3000.00, 9000.00, NULL, NULL),
(670, 279, 11, 3, 3000.00, 9000.00, NULL, NULL),
(671, 279, 3, 1, 3000.00, 3000.00, NULL, NULL),
(672, 279, 6, 3, 3000.00, 9000.00, NULL, NULL),
(673, 280, 7, 3, 3000.00, 9000.00, NULL, NULL),
(674, 281, 6, 2, 3000.00, 6000.00, NULL, NULL),
(675, 281, 11, 2, 3000.00, 6000.00, NULL, NULL),
(676, 282, 3, 3, 3000.00, 9000.00, NULL, NULL),
(677, 283, 2, 2, 3000.00, 6000.00, NULL, NULL),
(678, 283, 11, 1, 3000.00, 3000.00, NULL, NULL),
(679, 284, 6, 2, 3000.00, 6000.00, NULL, NULL),
(680, 285, 8, 2, 3000.00, 6000.00, NULL, NULL),
(681, 285, 7, 1, 3000.00, 3000.00, NULL, NULL),
(682, 286, 7, 2, 3000.00, 6000.00, NULL, NULL),
(683, 286, 6, 1, 3000.00, 3000.00, NULL, NULL),
(684, 286, 2, 2, 3000.00, 6000.00, NULL, NULL),
(685, 287, 10, 2, 3000.00, 6000.00, NULL, NULL),
(686, 287, 8, 3, 3000.00, 9000.00, NULL, NULL),
(687, 287, 2, 3, 3000.00, 9000.00, NULL, NULL),
(688, 287, 4, 2, 3000.00, 6000.00, NULL, NULL),
(689, 288, 6, 2, 3000.00, 6000.00, NULL, NULL),
(690, 288, 6, 1, 3000.00, 3000.00, NULL, NULL),
(691, 289, 7, 1, 3000.00, 3000.00, NULL, NULL),
(692, 289, 8, 3, 3000.00, 9000.00, NULL, NULL),
(693, 289, 6, 2, 3000.00, 6000.00, NULL, NULL),
(694, 290, 6, 1, 3000.00, 3000.00, NULL, NULL),
(695, 290, 3, 2, 3000.00, 6000.00, NULL, NULL),
(696, 291, 4, 2, 3000.00, 6000.00, NULL, NULL),
(697, 292, 4, 3, 3000.00, 9000.00, NULL, NULL),
(698, 292, 9, 1, 3000.00, 3000.00, NULL, NULL),
(699, 292, 7, 2, 3000.00, 6000.00, NULL, NULL),
(700, 292, 3, 2, 3000.00, 6000.00, NULL, NULL),
(701, 293, 4, 1, 3000.00, 3000.00, NULL, NULL),
(702, 293, 3, 2, 3000.00, 6000.00, NULL, NULL),
(703, 294, 7, 1, 3000.00, 3000.00, NULL, NULL),
(704, 295, 1, 2, 3000.00, 6000.00, NULL, NULL),
(705, 296, 3, 2, 3000.00, 6000.00, NULL, NULL),
(706, 296, 2, 3, 3000.00, 9000.00, NULL, NULL),
(707, 296, 9, 1, 3000.00, 3000.00, NULL, NULL),
(708, 296, 7, 3, 3000.00, 9000.00, NULL, NULL),
(709, 297, 9, 2, 3000.00, 6000.00, NULL, NULL),
(710, 297, 7, 1, 3000.00, 3000.00, NULL, NULL),
(711, 297, 11, 2, 3000.00, 6000.00, NULL, NULL),
(712, 298, 9, 3, 3000.00, 9000.00, NULL, NULL),
(713, 298, 1, 2, 3000.00, 6000.00, NULL, NULL),
(714, 298, 2, 2, 3000.00, 6000.00, NULL, NULL),
(715, 299, 10, 1, 3000.00, 3000.00, NULL, NULL),
(716, 299, 5, 2, 3000.00, 6000.00, NULL, NULL),
(717, 299, 3, 3, 3000.00, 9000.00, NULL, NULL),
(718, 300, 3, 1, 3000.00, 3000.00, NULL, NULL),
(719, 300, 1, 1, 3000.00, 3000.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de la taula `wp_contabilidad_empleados`
--

CREATE TABLE `wp_contabilidad_empleados` (
  `id` mediumint UNSIGNED NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nif` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `telefono` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `wp_contabilidad_empleados`
--

INSERT INTO `wp_contabilidad_empleados` (`id`, `nombre`, `nif`, `direccion`, `telefono`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Nathan Mante', '37793253K', '6511 Schulist Valleys Apt. 958\nOrnfurt, NE 90475', '1-458-573-4867', 'tiara.hirthe@yahoo.com', '2025-08-11 13:27:47', '2025-08-11 13:27:47'),
(2, 'Ms. Mina Schuppe II', '24924332Z', '2504 Saul Corner Apt. 541\nWest Oscar, WY 39061-9410', '(954) 243-4512', 'deontae.mitchell@sanford.com', '2025-08-11 13:27:47', '2025-08-11 13:27:47'),
(3, 'Keira Hansen', '24248644C', '951 Shanahan Path Apt. 103\nReeceton, VT 02741', '+1.858.389.3980', 'rice.rebeka@prohaska.org', '2025-08-11 13:27:47', '2025-08-11 13:27:47'),
(4, 'Warren Keeling', '74528521B', '930 Jada Wells\nMerlview, WA 64036', '+1-934-787-4510', 'macie52@hotmail.com', '2025-08-11 13:27:47', '2025-08-11 13:27:47'),
(5, 'Hanna Sauer', '78381608T', '60379 Kulas Fall\nCalistafurt, DC 42526', '+16267780204', 'peter.kautzer@yahoo.com', '2025-08-11 13:27:47', '2025-08-11 13:27:47');

-- --------------------------------------------------------

--
-- Estructura de la taula `wp_contabilidad_productos`
--

CREATE TABLE `wp_contabilidad_productos` (
  `id` mediumint UNSIGNED NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_categoria_producto` bigint UNSIGNED DEFAULT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `protocol` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `precio` decimal(10,2) DEFAULT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `wp_contabilidad_productos`
--

INSERT INTO `wp_contabilidad_productos` (`id`, `nombre`, `img`, `video`, `id_categoria_producto`, `descripcion`, `protocol`, `precio`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'estudijoanpuig', 'larb5.jpg', 'http://estudijoanpuig.com/', NULL, 'portfoli projectes i primera comptabilitat amb cruds no filament', NULL, 3000.00, 7, '2025-11-19 20:39:10', '2025-11-19 20:39:10'),
(2, 'wordpress', 'wordpress.jpg', 'http://estudijoanpuig.com/wordpress/', NULL, '<p>http://estudijoanpuig.com/wordpress/</p>', NULL, 3000.00, 33, '2025-11-19 20:39:10', '2025-11-19 20:39:10'),
(3, 'wp_nitida', 'wp_nitida.jpg', 'http://estudijoanpuig.com/wp_nitida/', NULL, 'wordpress al vps', NULL, 3000.00, 31, '2025-11-19 20:39:10', '2025-11-19 20:39:10'),
(4, 'manual_vps', 'manual_vps.jpg', 'http://estudijoanpuig.com/manual_vps/', NULL, 'http://estudijoanpuig.com/manual_vps/', NULL, 3000.00, 40, '2025-11-19 20:39:10', '2025-11-19 20:39:10'),
(5, 'php_twpreline', 'php_twpreline.jpg', 'http://estudijoanpuig.com/php_twpreline/', NULL, 'http://estudijoanpuig.com/php_twpreline/', NULL, 3000.00, 6, '2025-11-19 20:39:10', '2025-11-19 20:39:10'),
(6, 'http://estudijoanpuig.com/ci4admin/', 'ci4admin.jpg', 'http://estudijoanpuig.com/ci4admin/', NULL, 'projecte codeigniter molt treballat', NULL, 3000.00, 40, '2025-11-19 20:39:10', '2025-11-19 20:39:10'),
(7, 'http://estudijoanpuig.com/sheets/', 'sheets.jpg', 'http://estudijoanpuig.com/sheets/', NULL, 'http://estudijoanpuig.com/sheets/', NULL, 3000.00, 11, '2025-11-19 20:39:10', '2025-11-19 20:39:10'),
(8, 'http://estudijoanpuig.com/nanogallery/', 'nanogallery.jpg', 'http://estudijoanpuig.com/nanogallery/', NULL, 'http://estudijoanpuig.com/nanogallery/', NULL, 3000.00, 24, '2025-11-19 20:39:10', '2025-11-19 20:39:10'),
(9, 'grok', 'grok.png', 'https://estudijoanpuig.com/grok/', NULL, 'Plantilla d\'administració Bootstrap 5 gratuïta i premium\nUna biblioteca de components d\'IU professional que inclou més de 500 components d\'IU, formularis, taules, gràfics i icones llestos per utilitzar. AdminKit està construït sobre Bootstrap 5 i t\'ajuda a crear aplicacions més ràpidament i millor, i a oferir la millor experiència d\'usuari.', NULL, 3000.00, 41, '2025-11-19 20:39:10', '2025-11-19 20:39:10'),
(10, 'laravel12', 'laravel12.jpg', 'https://estudijoanpuig.com/laravel12/', NULL, 'laravel amb tailwind4 i filament3', NULL, 3000.00, 5, '2025-11-19 20:39:10', '2025-11-19 20:39:10'),
(11, 'posts_adk', 'posts_adk.png', 'https://estudijoanpuig.com/posts_adk/', NULL, 'bootstrap 5 emn phpmysql amb dashboard i login logout profile', NULL, 3000.00, 12, '2025-11-19 20:39:10', '2025-11-19 20:39:10');

-- --------------------------------------------------------

--
-- Estructura de la taula `wp_contabilidad_proveedores`
--

CREATE TABLE `wp_contabilidad_proveedores` (
  `id` mediumint UNSIGNED NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nif` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `telefono` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `wp_contabilidad_proveedores`
--

INSERT INTO `wp_contabilidad_proveedores` (`id`, `nombre`, `nif`, `direccion`, `telefono`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Parisian-Stehr', '73564401M', '117 Oleta Skyway\nNew Ashlychester, MA 93397-3461', '(586) 918-9041', 'glover.paula@stamm.com', '2025-08-11 13:27:47', '2025-08-11 13:27:47'),
(2, 'Sauer-Metz', '23193516V', '84628 Jeanie Plains Apt. 715\nNew Jevon, MD 52754', '+1-435-612-0846', 'conor.farrell@hotmail.com', '2025-08-11 13:27:47', '2025-08-11 13:27:47'),
(3, 'Daugherty and Sons', '88862111R', '2803 Hill Trace\nNorth Mozell, NH 33038-9197', '870.546.2984', 'edmund.kuhlman@dach.com', '2025-08-11 13:27:47', '2025-08-11 13:27:47'),
(4, 'Langosh PLC', '22565510A', '4635 Grace Crossing Suite 687\nAltafort, MT 30257', '+1.364.652.4941', 'afton34@gmail.com', '2025-08-11 13:27:47', '2025-08-11 13:27:47'),
(5, 'Anderson Group', '58248292X', '90327 Wisozk Points\nLake Adrien, NC 17621-6242', '+14027104209', 'ronaldo15@gmail.com', '2025-08-11 13:27:47', '2025-08-11 13:27:47');

-- --------------------------------------------------------

--
-- Estructura de la taula `wp_contabilidad_ventas`
--

CREATE TABLE `wp_contabilidad_ventas` (
  `id` mediumint UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `cliente_id` mediumint NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `iva_porcentaje` decimal(5,2) NOT NULL,
  `iva_monto` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `notas` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fecha_creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `empleado_id` mediumint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `wp_contabilidad_ventas`
--

INSERT INTO `wp_contabilidad_ventas` (`id`, `fecha`, `cliente_id`, `subtotal`, `iva_porcentaje`, `iva_monto`, `total`, `created_at`, `updated_at`, `notas`, `fecha_creacion`, `empleado_id`) VALUES
(1, '2023-03-10', 8, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'bono', '2025-11-19 20:39:10', 3),
(2, '2023-06-22', 9, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:10', 3),
(3, '2023-05-16', 7, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'targeta', '2025-11-19 20:39:10', 3),
(4, '2023-08-28', 1, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'bono', '2025-11-19 20:39:10', 4),
(5, '2023-09-28', 10, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'bono', '2025-11-19 20:39:10', 4),
(6, '2023-07-04', 1, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:10', 3),
(7, '2023-07-21', 8, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:10', 1),
(8, '2023-02-24', 3, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'targeta', '2025-11-19 20:39:10', 1),
(9, '2023-11-14', 2, 30000.00, 21.00, 6300.00, 36300.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:10', 3),
(10, '2023-05-02', 10, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'bono', '2025-11-19 20:39:10', 2),
(11, '2023-06-09', 6, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'bono', '2025-11-19 20:39:10', 1),
(12, '2023-09-20', 10, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:10', 2),
(13, '2023-08-03', 2, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'bono', '2025-11-19 20:39:10', 3),
(14, '2023-11-20', 4, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'bono', '2025-11-19 20:39:10', 1),
(15, '2023-07-12', 2, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:10', 3),
(16, '2023-08-11', 4, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'targeta', '2025-11-19 20:39:10', 4),
(17, '2023-03-22', 5, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'bono', '2025-11-19 20:39:10', 4),
(18, '2023-03-23', 3, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:10', 4),
(19, '2023-10-09', 6, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:10', 1),
(20, '2023-01-16', 1, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'targeta', '2025-11-19 20:39:10', 3),
(21, '2023-09-16', 4, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:10', 4),
(22, '2023-02-05', 10, 27000.00, 21.00, 5670.00, 32670.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:10', 4),
(23, '2023-04-12', 6, 3000.00, 21.00, 630.00, 3630.00, NULL, NULL, 'targeta', '2025-11-19 20:39:10', 5),
(24, '2023-02-15', 3, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:10', 4),
(25, '2023-02-10', 1, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'targeta', '2025-11-19 20:39:10', 3),
(26, '2023-01-05', 1, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:10', 1),
(27, '2023-03-19', 5, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'targeta', '2025-11-19 20:39:10', 2),
(28, '2023-01-22', 2, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:10', 4),
(29, '2023-01-17', 7, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:10', 3),
(30, '2023-02-01', 1, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'targeta', '2025-11-19 20:39:10', 4),
(31, '2023-03-01', 4, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:11', 1),
(32, '2023-06-13', 8, 3000.00, 21.00, 630.00, 3630.00, NULL, NULL, 'targeta', '2025-11-19 20:39:11', 1),
(33, '2023-08-23', 9, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:11', 3),
(34, '2023-09-08', 10, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:11', 4),
(35, '2023-11-03', 6, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'targeta', '2025-11-19 20:39:11', 2),
(36, '2023-05-16', 9, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 1),
(37, '2023-04-28', 7, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 1),
(38, '2023-09-25', 5, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:11', 5),
(39, '2023-01-18', 9, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 5),
(40, '2023-11-07', 2, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 2),
(41, '2023-12-22', 4, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 4),
(42, '2023-05-23', 6, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 5),
(43, '2023-04-10', 4, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:11', 2),
(44, '2023-10-22', 7, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 5),
(45, '2023-05-08', 1, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 2),
(46, '2023-08-15', 1, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 3),
(47, '2023-05-05', 9, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 5),
(48, '2023-08-15', 4, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 4),
(49, '2023-06-11', 1, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 4),
(50, '2023-09-01', 6, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 4),
(51, '2023-03-28', 1, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 3),
(52, '2023-02-10', 10, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'targeta', '2025-11-19 20:39:11', 2),
(53, '2023-12-28', 3, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 2),
(54, '2023-05-05', 6, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 3),
(55, '2023-08-23', 9, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 3),
(56, '2023-01-15', 6, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 5),
(57, '2023-02-05', 5, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'targeta', '2025-11-19 20:39:11', 4),
(58, '2023-10-18', 2, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 5),
(59, '2023-03-20', 8, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 5),
(60, '2023-10-15', 4, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'targeta', '2025-11-19 20:39:11', 1),
(61, '2023-12-01', 8, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 2),
(62, '2023-10-07', 1, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'targeta', '2025-11-19 20:39:11', 5),
(63, '2023-09-20', 2, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'targeta', '2025-11-19 20:39:11', 4),
(64, '2023-02-28', 4, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 5),
(65, '2023-07-28', 9, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'targeta', '2025-11-19 20:39:11', 4),
(66, '2023-10-06', 1, 3000.00, 21.00, 630.00, 3630.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:11', 2),
(67, '2023-11-19', 6, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'targeta', '2025-11-19 20:39:11', 4),
(68, '2023-04-26', 3, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:11', 5),
(69, '2023-12-01', 4, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 2),
(70, '2023-10-18', 10, 27000.00, 21.00, 5670.00, 32670.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 1),
(71, '2023-01-05', 3, 3000.00, 21.00, 630.00, 3630.00, NULL, NULL, 'targeta', '2025-11-19 20:39:11', 1),
(72, '2023-04-23', 6, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 1),
(73, '2023-05-22', 6, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 1),
(74, '2023-03-06', 2, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 1),
(75, '2023-05-02', 1, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 1),
(76, '2023-09-05', 4, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 1),
(77, '2023-08-07', 6, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 3),
(78, '2023-10-26', 10, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:11', 2),
(79, '2023-10-27', 5, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 3),
(80, '2023-01-02', 2, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 4),
(81, '2023-12-11', 10, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 4),
(82, '2023-06-22', 3, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:11', 2),
(83, '2023-06-15', 8, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:11', 3),
(84, '2023-02-11', 6, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 3),
(85, '2023-10-09', 9, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:11', 3),
(86, '2023-10-21', 10, 30000.00, 21.00, 6300.00, 36300.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:11', 5),
(87, '2023-04-11', 5, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 1),
(88, '2023-04-09', 7, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 2),
(89, '2023-07-27', 8, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 1),
(90, '2023-12-15', 5, 3000.00, 21.00, 630.00, 3630.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 1),
(91, '2023-07-19', 9, 3000.00, 21.00, 630.00, 3630.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:11', 5),
(92, '2023-04-15', 10, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 5),
(93, '2023-12-24', 7, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 5),
(94, '2023-12-03', 1, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'targeta', '2025-11-19 20:39:11', 1),
(95, '2023-10-11', 5, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'targeta', '2025-11-19 20:39:11', 2),
(96, '2023-06-06', 4, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 2),
(97, '2023-12-03', 2, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 4),
(98, '2023-10-06', 7, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 2),
(99, '2023-12-15', 5, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 5),
(100, '2023-10-22', 3, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 1),
(101, '2024-01-21', 7, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 1),
(102, '2024-05-07', 8, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'targeta', '2025-11-19 20:39:11', 1),
(103, '2024-09-12', 7, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 5),
(104, '2024-03-20', 9, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 4),
(105, '2024-07-24', 2, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 3),
(106, '2024-04-07', 4, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'targeta', '2025-11-19 20:39:11', 4),
(107, '2024-12-26', 9, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 4),
(108, '2024-02-20', 4, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'targeta', '2025-11-19 20:39:11', 4),
(109, '2024-11-01', 9, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 4),
(110, '2024-06-20', 3, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 5),
(111, '2024-07-13', 3, 27000.00, 21.00, 5670.00, 32670.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 1),
(112, '2024-06-28', 8, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 3),
(113, '2024-08-23', 7, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 5),
(114, '2024-02-24', 10, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 3),
(115, '2024-04-02', 7, 27000.00, 21.00, 5670.00, 32670.00, NULL, NULL, 'targeta', '2025-11-19 20:39:11', 5),
(116, '2024-04-04', 7, 3000.00, 21.00, 630.00, 3630.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:11', 4),
(117, '2024-07-17', 2, 3000.00, 21.00, 630.00, 3630.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 3),
(118, '2024-10-16', 3, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 2),
(119, '2024-01-20', 3, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 1),
(120, '2024-05-25', 2, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 3),
(121, '2024-08-28', 6, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:11', 3),
(122, '2024-12-01', 5, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 3),
(123, '2024-10-15', 3, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 4),
(124, '2024-08-25', 5, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 5),
(125, '2024-05-18', 9, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:11', 1),
(126, '2024-04-15', 5, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:11', 5),
(127, '2024-01-19', 9, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 4),
(128, '2024-08-06', 8, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 2),
(129, '2024-10-18', 8, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 5),
(130, '2024-08-13', 10, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 4),
(131, '2024-12-19', 8, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:11', 4),
(132, '2024-10-03', 9, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 4),
(133, '2024-02-03', 5, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 4),
(134, '2024-11-26', 8, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 5),
(135, '2024-01-28', 1, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'targeta', '2025-11-19 20:39:11', 5),
(136, '2024-08-12', 4, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 1),
(137, '2024-03-09', 6, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 5),
(138, '2024-06-03', 3, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 3),
(139, '2024-03-18', 6, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 3),
(140, '2024-02-05', 5, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 3),
(141, '2024-05-17', 10, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 3),
(142, '2024-07-21', 8, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:11', 3),
(143, '2024-01-17', 9, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 3),
(144, '2024-05-11', 1, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'targeta', '2025-11-19 20:39:11', 4),
(145, '2024-05-26', 2, 30000.00, 21.00, 6300.00, 36300.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 2),
(146, '2024-09-14', 2, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'targeta', '2025-11-19 20:39:11', 4),
(147, '2024-11-16', 10, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 1),
(148, '2024-12-02', 9, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:11', 1),
(149, '2024-11-16', 8, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'bono', '2025-11-19 20:39:11', 1),
(150, '2024-11-01', 1, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:11', 5),
(151, '2024-03-09', 2, 27000.00, 21.00, 5670.00, 32670.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:11', 4),
(152, '2024-09-10', 10, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:11', 3),
(153, '2024-08-21', 9, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 5),
(154, '2024-03-26', 1, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 3),
(155, '2024-04-20', 4, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:12', 2),
(156, '2024-01-10', 3, 3000.00, 21.00, 630.00, 3630.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:12', 5),
(157, '2024-09-15', 2, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:12', 5),
(158, '2024-04-15', 3, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:12', 5),
(159, '2024-07-16', 4, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:12', 2),
(160, '2024-01-24', 5, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 3),
(161, '2024-07-11', 1, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:12', 3),
(162, '2024-04-02', 2, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 2),
(163, '2024-06-08', 6, 3000.00, 21.00, 630.00, 3630.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 5),
(164, '2024-12-06', 5, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 3),
(165, '2024-11-10', 8, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 1),
(166, '2024-08-11', 5, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 5),
(167, '2024-12-14', 10, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 3),
(168, '2024-12-12', 1, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 1),
(169, '2024-11-22', 4, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 4),
(170, '2024-08-25', 9, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 1),
(171, '2024-02-22', 4, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 2),
(172, '2024-04-23', 9, 3000.00, 21.00, 630.00, 3630.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 2),
(173, '2024-04-05', 5, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 5),
(174, '2024-07-10', 4, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 2),
(175, '2024-06-23', 5, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:12', 3),
(176, '2024-12-13', 7, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 4),
(177, '2024-02-17', 8, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:12', 5),
(178, '2024-01-09', 7, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 2),
(179, '2024-11-22', 6, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 2),
(180, '2024-10-20', 1, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:12', 5),
(181, '2024-10-03', 9, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 1),
(182, '2024-04-13', 6, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:12', 2),
(183, '2024-02-19', 6, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 2),
(184, '2024-12-25', 6, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:12', 2),
(185, '2024-02-13', 7, 27000.00, 21.00, 5670.00, 32670.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 5),
(186, '2024-10-07', 8, 36000.00, 21.00, 7560.00, 43560.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 4),
(187, '2024-01-24', 10, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 5),
(188, '2024-09-18', 9, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 4),
(189, '2024-10-15', 9, 30000.00, 21.00, 6300.00, 36300.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 3),
(190, '2024-06-23', 7, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 4),
(191, '2024-08-27', 7, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 2),
(192, '2024-09-08', 1, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 1),
(193, '2024-04-04', 3, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:12', 4),
(194, '2024-12-05', 1, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 4),
(195, '2024-11-10', 3, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:12', 4),
(196, '2024-02-18', 5, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 3),
(197, '2024-08-18', 7, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:12', 3),
(198, '2024-10-07', 4, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 1),
(199, '2024-01-01', 6, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:12', 2),
(200, '2024-08-09', 8, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 4),
(201, '2024-01-16', 7, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 5),
(202, '2024-05-21', 8, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 1),
(203, '2024-04-04', 4, 33000.00, 21.00, 6930.00, 39930.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:12', 3),
(204, '2024-12-25', 7, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 2),
(205, '2024-02-19', 7, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:12', 1),
(206, '2024-01-04', 2, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 1),
(207, '2024-02-11', 10, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 1),
(208, '2024-09-06', 10, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:12', 3),
(209, '2024-09-15', 3, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 2),
(210, '2024-08-21', 7, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 4),
(211, '2024-11-24', 5, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 5),
(212, '2024-06-05', 6, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 5),
(213, '2024-02-27', 7, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:12', 1),
(214, '2024-03-12', 8, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 5),
(215, '2024-10-21', 2, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:12', 2),
(216, '2024-09-22', 1, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 1),
(217, '2024-05-13', 1, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 2),
(218, '2024-10-17', 10, 33000.00, 21.00, 6930.00, 39930.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 3),
(219, '2024-09-22', 9, 27000.00, 21.00, 5670.00, 32670.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:12', 2),
(220, '2024-06-10', 7, 33000.00, 21.00, 6930.00, 39930.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:12', 1),
(221, '2025-01-14', 5, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 2),
(222, '2025-03-05', 2, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 2),
(223, '2025-10-23', 3, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:12', 4),
(224, '2025-09-04', 5, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 3),
(225, '2025-10-22', 7, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 1),
(226, '2025-11-11', 9, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:12', 5),
(227, '2025-10-02', 10, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 1),
(228, '2025-03-20', 4, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:12', 4),
(229, '2025-09-21', 1, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 1),
(230, '2025-05-22', 7, 3000.00, 21.00, 630.00, 3630.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 5),
(231, '2025-11-24', 6, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:12', 2),
(232, '2025-11-04', 1, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:12', 3),
(233, '2025-09-20', 7, 3000.00, 21.00, 630.00, 3630.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 4),
(234, '2025-07-12', 8, 27000.00, 21.00, 5670.00, 32670.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 2),
(235, '2025-08-02', 10, 27000.00, 21.00, 5670.00, 32670.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 4),
(236, '2025-03-22', 7, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 2),
(237, '2025-02-05', 4, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 3),
(238, '2025-05-06', 5, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 3),
(239, '2025-08-02', 5, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 1),
(240, '2025-01-27', 6, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:12', 3),
(241, '2025-01-07', 8, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 5),
(242, '2025-06-17', 6, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:12', 2),
(243, '2025-04-11', 7, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 3),
(244, '2025-10-24', 5, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 3),
(245, '2025-02-02', 3, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:12', 5),
(246, '2025-03-23', 2, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 3),
(247, '2025-08-09', 1, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 1),
(248, '2025-06-26', 3, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 2),
(249, '2025-01-03', 5, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 5),
(250, '2025-10-14', 5, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 2),
(251, '2025-05-07', 3, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 2),
(252, '2025-06-05', 9, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:12', 5),
(253, '2025-08-11', 9, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 3),
(254, '2025-09-22', 3, 3000.00, 21.00, 630.00, 3630.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 5),
(255, '2025-08-08', 1, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:12', 1),
(256, '2025-09-03', 1, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 3),
(257, '2025-09-21', 6, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 1),
(258, '2025-07-19', 5, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 1),
(259, '2025-05-17', 10, 3000.00, 21.00, 630.00, 3630.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:12', 1),
(260, '2025-04-07', 1, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 3),
(261, '2025-08-01', 4, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 3),
(262, '2025-01-04', 9, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 5),
(263, '2025-03-04', 6, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:12', 5),
(264, '2025-06-06', 2, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:12', 2),
(265, '2025-07-28', 1, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:12', 4),
(266, '2025-03-28', 1, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 5),
(267, '2025-08-19', 10, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:12', 3),
(268, '2025-09-24', 2, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 2),
(269, '2025-03-21', 3, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:12', 2),
(270, '2025-07-28', 8, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 3),
(271, '2025-06-01', 7, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:12', 1),
(272, '2025-08-28', 9, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:12', 4),
(273, '2025-08-01', 4, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 3),
(274, '2025-01-24', 6, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 2),
(275, '2025-09-27', 7, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 1),
(276, '2025-09-28', 4, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:12', 5),
(277, '2025-08-22', 9, 27000.00, 21.00, 5670.00, 32670.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:12', 3),
(278, '2025-06-18', 4, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 1),
(279, '2025-01-03', 3, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 5),
(280, '2025-09-06', 3, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 2),
(281, '2025-01-13', 9, 12000.00, 21.00, 2520.00, 14520.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:12', 5),
(282, '2025-07-20', 9, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 2),
(283, '2025-06-13', 1, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 4),
(284, '2025-04-19', 4, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:12', 2),
(285, '2025-11-09', 6, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'bono', '2025-11-19 20:39:12', 3),
(286, '2025-05-17', 4, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:12', 4),
(287, '2025-09-17', 5, 30000.00, 21.00, 6300.00, 36300.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 3),
(288, '2025-11-27', 3, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'targeta', '2025-11-19 20:39:12', 2),
(289, '2025-05-19', 10, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'bono', '2025-11-19 20:39:13', 2),
(290, '2025-03-18', 4, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:13', 5),
(291, '2025-05-24', 6, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:13', 1),
(292, '2025-03-22', 6, 24000.00, 21.00, 5040.00, 29040.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:13', 5),
(293, '2025-06-24', 7, 9000.00, 21.00, 1890.00, 10890.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:13', 3),
(294, '2025-04-25', 7, 3000.00, 21.00, 630.00, 3630.00, NULL, NULL, 'efectiu', '2025-11-19 20:39:13', 5),
(295, '2025-02-10', 10, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'bono', '2025-11-19 20:39:13', 4),
(296, '2025-11-24', 4, 27000.00, 21.00, 5670.00, 32670.00, NULL, NULL, 'bizum_neus', '2025-11-19 20:39:13', 4),
(297, '2025-06-12', 7, 15000.00, 21.00, 3150.00, 18150.00, NULL, NULL, 'bono', '2025-11-19 20:39:13', 1),
(298, '2025-05-22', 8, 21000.00, 21.00, 4410.00, 25410.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:13', 4),
(299, '2025-04-21', 8, 18000.00, 21.00, 3780.00, 21780.00, NULL, NULL, 'transferencia', '2025-11-19 20:39:13', 5),
(300, '2025-06-25', 10, 6000.00, 21.00, 1260.00, 7260.00, NULL, NULL, 'targeta', '2025-11-19 20:39:13', 3);

--
-- Índexs per a les taules bolcades
--

--
-- Índexs per a la taula `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Índexs per a la taula `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Índexs per a la taula `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índexs per a la taula `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Índexs per a la taula `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Índexs per a la taula `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Índexs per a la taula `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índexs per a la taula `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Índexs per a la taula `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_category_id_foreign` (`category_id`);

--
-- Índexs per a la taula `project_tags`
--
ALTER TABLE `project_tags`
  ADD PRIMARY KEY (`project_id`,`tag_id`),
  ADD KEY `project_tags_tag_id_foreign` (`tag_id`);

--
-- Índexs per a la taula `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Índexs per a la taula `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Índexs per a la taula `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Índexs per a la taula `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Índexs per a la taula `wp_contabilidad_categoria_clientes`
--
ALTER TABLE `wp_contabilidad_categoria_clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `wp_contabilidad_categoria_productos`
--
ALTER TABLE `wp_contabilidad_categoria_productos`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `wp_contabilidad_clientes`
--
ALTER TABLE `wp_contabilidad_clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wp_contabilidad_clientes_id_categoria_cliente_foreign` (`id_categoria_cliente`);

--
-- Índexs per a la taula `wp_contabilidad_compras`
--
ALTER TABLE `wp_contabilidad_compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wp_contabilidad_compras_proveedor_id_index` (`proveedor_id`),
  ADD KEY `wp_contabilidad_compras_empleado_id_index` (`empleado_id`);

--
-- Índexs per a la taula `wp_contabilidad_detalles_compra`
--
ALTER TABLE `wp_contabilidad_detalles_compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wp_contabilidad_detalles_compra_compra_id_index` (`compra_id`),
  ADD KEY `wp_contabilidad_detalles_compra_producto_id_index` (`producto_id`);

--
-- Índexs per a la taula `wp_contabilidad_detalles_venta`
--
ALTER TABLE `wp_contabilidad_detalles_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wp_contabilidad_detalles_venta_venta_id_index` (`venta_id`),
  ADD KEY `wp_contabilidad_detalles_venta_producto_id_index` (`producto_id`);

--
-- Índexs per a la taula `wp_contabilidad_empleados`
--
ALTER TABLE `wp_contabilidad_empleados`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `wp_contabilidad_productos`
--
ALTER TABLE `wp_contabilidad_productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wp_contabilidad_productos_id_categoria_producto_foreign` (`id_categoria_producto`);

--
-- Índexs per a la taula `wp_contabilidad_proveedores`
--
ALTER TABLE `wp_contabilidad_proveedores`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `wp_contabilidad_ventas`
--
ALTER TABLE `wp_contabilidad_ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wp_contabilidad_ventas_cliente_id_index` (`cliente_id`),
  ADD KEY `wp_contabilidad_ventas_empleado_id_index` (`empleado_id`);

--
-- AUTO_INCREMENT per les taules bolcades
--

--
-- AUTO_INCREMENT per la taula `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la taula `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la taula `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la taula `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT per la taula `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT per la taula `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT per la taula `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la taula `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT per la taula `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la taula `wp_contabilidad_categoria_clientes`
--
ALTER TABLE `wp_contabilidad_categoria_clientes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la taula `wp_contabilidad_categoria_productos`
--
ALTER TABLE `wp_contabilidad_categoria_productos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la taula `wp_contabilidad_clientes`
--
ALTER TABLE `wp_contabilidad_clientes`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la taula `wp_contabilidad_compras`
--
ALTER TABLE `wp_contabilidad_compras`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT per la taula `wp_contabilidad_detalles_compra`
--
ALTER TABLE `wp_contabilidad_detalles_compra`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;

--
-- AUTO_INCREMENT per la taula `wp_contabilidad_detalles_venta`
--
ALTER TABLE `wp_contabilidad_detalles_venta`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=720;

--
-- AUTO_INCREMENT per la taula `wp_contabilidad_empleados`
--
ALTER TABLE `wp_contabilidad_empleados`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la taula `wp_contabilidad_productos`
--
ALTER TABLE `wp_contabilidad_productos`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la taula `wp_contabilidad_proveedores`
--
ALTER TABLE `wp_contabilidad_proveedores`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la taula `wp_contabilidad_ventas`
--
ALTER TABLE `wp_contabilidad_ventas`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- Restriccions per a les taules bolcades
--

--
-- Restriccions per a la taula `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Restriccions per a la taula `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Restriccions per a la taula `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Restriccions per a la taula `project_tags`
--
ALTER TABLE `project_tags`
  ADD CONSTRAINT `project_tags_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Restriccions per a la taula `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Restriccions per a la taula `wp_contabilidad_clientes`
--
ALTER TABLE `wp_contabilidad_clientes`
  ADD CONSTRAINT `wp_contabilidad_clientes_id_categoria_cliente_foreign` FOREIGN KEY (`id_categoria_cliente`) REFERENCES `wp_contabilidad_categoria_clientes` (`id`) ON DELETE RESTRICT;

--
-- Restriccions per a la taula `wp_contabilidad_productos`
--
ALTER TABLE `wp_contabilidad_productos`
  ADD CONSTRAINT `wp_contabilidad_productos_id_categoria_producto_foreign` FOREIGN KEY (`id_categoria_producto`) REFERENCES `wp_contabilidad_categoria_productos` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
