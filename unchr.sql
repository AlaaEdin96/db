-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2022 at 04:29 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unchr`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pohne_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appoetment_with` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `nationality_id` int(10) UNSIGNED NOT NULL,
  `orginzations_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_c` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `name`, `id_file`, `pohne_number`, `appoetment_with`, `sex`, `date_of_birth`, `date`, `user_id`, `nationality_id`, `orginzations_id`, `created_at`, `updated_at`, `is_c`) VALUES
(1, 'mohA', '1234C2342', '09243212345', 'Rshade', 'دكر', '12321', '2022-12-09 00:00:00', 1, 1, 1, '2022-01-02 08:43:21', '2022-01-02 08:43:21', 0),
(2, 'ahmed', '1234d90', '12345654', 'f', 'sdf', 'vv', '2022-01-09 16:23:03', 1, 1, 1, NULL, NULL, 0),
(3, 'kg,', 'ijoml;,./', 'oklm;', '1232', 'fdf', '43234', '2022-01-06 16:22:58', 1, 1, 1, NULL, NULL, 0),
(4, 'poij', '798ter', '7529-', 'ljbp\';', 'jkl', '89io', '2022-01-06 16:22:52', 1, 1, 1, NULL, NULL, NULL),
(5, ';oijl ;lk', 'po;l,', 'po\';l,', '\';l,/.', '\';oml,', 'pk[[', '2022-01-02 00:00:00', 1, 1, 1, '2022-01-02 12:05:37', '2022-01-02 10:20:20', 1),
(6, 'mohA', '1234C2342', '09243212345', 'Rshade', 'دكر', '12321', '2022-01-02 00:00:00', 1, 1, 1, '2022-01-02 09:16:02', '2022-01-02 10:23:47', 1),
(7, 'mohA', '1234C2342', '09243212345', 'Rshade', 'دكر', '2022-01-02 00:00:00', '2022-01-02 00:00:00', 1, 1, 1, '2022-01-02 09:23:41', '2022-01-02 09:23:59', 1),
(8, 'libua', '1234C2342', '09243212345', 'Rshade', 'option1', '2022-02-04 00:00:00', '2022-02-04 00:00:00', 1, 1, 1, '2022-02-04 13:53:22', '2022-02-04 13:54:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2022-01-01 10:53:33', '2022-01-01 10:53:33'),
(2, NULL, 1, 'Category 2', 'category-2', '2022-01-01 10:53:33', '2022-01-01 10:53:33');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 0, 0, 0, 0, 0, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 0, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 5),
(58, 7, 'id_file', 'text', 'Id File', 1, 1, 1, 1, 1, 1, '{}', 6),
(59, 7, 'pohne_number', 'text', 'Pohne Number', 1, 1, 1, 1, 1, 1, '{}', 7),
(60, 7, 'appoetment_with', 'text', 'Appoetment With', 1, 1, 1, 1, 1, 1, '{}', 8),
(61, 7, 'sex', 'select_dropdown', 'Sex', 1, 1, 1, 1, 1, 1, '{\"options\":{\"option1\":\"Male\",\"option2\":\"female \"}}', 9),
(62, 7, 'date_of_birth', 'date', 'Date Of Birth', 1, 1, 1, 1, 1, 1, '{}', 10),
(63, 7, 'date', 'date', 'Date', 1, 1, 1, 1, 1, 1, '{}', 11),
(64, 7, 'user_id', 'text', 'User Id', 1, 1, 1, 0, 0, 1, '{}', 2),
(65, 7, 'nationality_id', 'text', 'Nationality Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(66, 7, 'orginzations_id', 'text', 'Orginzations Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(67, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(68, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(69, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(71, 8, 'user_id', 'text', 'User Id', 1, 1, 1, 0, 0, 1, '{}', 2),
(72, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(73, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(108, 7, 'appointment_belongsto_nationality_relationship', 'relationship', 'nationality', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Nationality\",\"table\":\"nationality\",\"type\":\"belongsTo\",\"column\":\"nationality_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"appointment\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(109, 7, 'is_c', 'text', 'attendence', 0, 1, 1, 0, 0, 0, '{}', 14),
(110, 7, 'appointment_belongsto_orginzation_relationship', 'relationship', 'orginzation', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Orginzations\",\"table\":\"orginzation\",\"type\":\"belongsTo\",\"column\":\"orginzations_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"appointment\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(111, 8, 'nationality_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 0, 0, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"appointment\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(112, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(113, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(114, 15, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(115, 15, 'code', 'text', 'Code', 1, 1, 1, 1, 1, 1, '{}', 4),
(116, 15, 'user_id', 'text', 'User Id', 1, 1, 1, 0, 0, 1, '{}', 2),
(117, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(118, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(119, 15, 'orginzation_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 0, 0, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"appointment\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(120, 7, 'appointment_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 0, 0, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"appointment\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-01-01 10:53:26', '2022-02-04 10:15:41'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-01-01 10:53:26', '2022-01-01 10:53:26'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-01-01 10:53:26', '2022-01-01 10:53:26'),
(7, 'appointment', 'appointment', 'Appointment', 'Appointments', NULL, 'App\\Models\\Appointment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-01-01 10:54:27', '2022-02-05 13:58:34'),
(8, 'nationality', 'nationality', 'Nationality', 'Nationalities', 'voyager-bell', 'App\\Models\\Nationality', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-01-01 10:56:09', '2022-01-05 17:19:43'),
(15, 'orginzation', 'orginzation', 'Orginzation', 'Orginzations', NULL, 'App\\Models\\Orginzations', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-02-05 13:49:51', '2022-02-05 13:53:54');

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
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-01-01 10:53:28', '2022-01-01 10:53:28');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2022-01-01 10:53:28', '2022-01-01 10:54:58', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 1, '2022-01-01 10:53:28', '2022-01-01 10:54:58', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 3, '2022-01-01 10:53:28', '2022-01-01 10:54:58', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2022-01-01 10:53:28', '2022-01-01 10:53:28', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2022-01-01 10:53:28', '2022-01-01 10:53:28', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2022-01-01 10:53:28', '2022-01-01 10:53:28', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2022-01-01 10:53:28', '2022-01-01 10:53:28', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2022-01-01 10:53:28', '2022-01-01 10:53:28', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2022-01-01 10:53:28', '2022-01-01 10:53:28', 'voyager.settings.index', NULL),
(14, 1, 'Appointments', '', '_self', NULL, NULL, NULL, 15, '2022-01-01 10:54:27', '2022-01-01 10:54:27', 'voyager.appointment.index', NULL),
(15, 1, 'Nationalities', '', '_self', 'voyager-bell', NULL, NULL, 16, '2022-01-01 10:56:09', '2022-01-01 10:56:09', 'voyager.nationality.index', NULL),
(20, 1, 'Orginzations', '', '_self', NULL, NULL, NULL, 17, '2022-02-05 13:49:52', '2022-02-05 13:49:52', 'voyager.orginzation.index', NULL);

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(31, '2021_12_22_190303_orginzation', 2),
(32, '2021_12_22_190320_nationality', 2),
(33, '2021_12_23_190202_appointment', 3);

-- --------------------------------------------------------

--
-- Table structure for table `nationality`
--

CREATE TABLE `nationality` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nationality`
--

INSERT INTO `nationality` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'libya', 1, '2022-01-02 08:37:07', '2022-01-02 08:37:07'),
(2, 'hanger44', 1, '2022-01-05 17:20:02', '2022-01-05 17:20:02');

-- --------------------------------------------------------

--
-- Table structure for table `orginzation`
--

CREATE TABLE `orginzation` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orginzation`
--

INSERT INTO `orginzation` (`id`, `name`, `code`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'uhcr', '120', 1, NULL, NULL),
(2, 'libua', '453', 1, '2022-02-05 13:54:08', '2022-02-05 13:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2022-01-01 10:53:36', '2022-01-01 10:53:36');

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
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(6, 'browse_menus', 'menus', '2022-01-01 10:53:29', '2022-01-01 10:53:29'),
(7, 'read_menus', 'menus', '2022-01-01 10:53:29', '2022-01-01 10:53:29'),
(8, 'edit_menus', 'menus', '2022-01-01 10:53:29', '2022-01-01 10:53:29'),
(9, 'add_menus', 'menus', '2022-01-01 10:53:29', '2022-01-01 10:53:29'),
(10, 'delete_menus', 'menus', '2022-01-01 10:53:29', '2022-01-01 10:53:29'),
(11, 'browse_roles', 'roles', '2022-01-01 10:53:29', '2022-01-01 10:53:29'),
(12, 'read_roles', 'roles', '2022-01-01 10:53:29', '2022-01-01 10:53:29'),
(13, 'edit_roles', 'roles', '2022-01-01 10:53:29', '2022-01-01 10:53:29'),
(14, 'add_roles', 'roles', '2022-01-01 10:53:29', '2022-01-01 10:53:29'),
(15, 'delete_roles', 'roles', '2022-01-01 10:53:29', '2022-01-01 10:53:29'),
(16, 'browse_users', 'users', '2022-01-01 10:53:30', '2022-01-01 10:53:30'),
(17, 'read_users', 'users', '2022-01-01 10:53:30', '2022-01-01 10:53:30'),
(18, 'edit_users', 'users', '2022-01-01 10:53:30', '2022-01-01 10:53:30'),
(19, 'add_users', 'users', '2022-01-01 10:53:30', '2022-01-01 10:53:30'),
(20, 'delete_users', 'users', '2022-01-01 10:53:30', '2022-01-01 10:53:30'),
(21, 'browse_settings', 'settings', '2022-01-01 10:53:30', '2022-01-01 10:53:30'),
(22, 'read_settings', 'settings', '2022-01-01 10:53:30', '2022-01-01 10:53:30'),
(23, 'edit_settings', 'settings', '2022-01-01 10:53:30', '2022-01-01 10:53:30'),
(24, 'add_settings', 'settings', '2022-01-01 10:53:30', '2022-01-01 10:53:30'),
(25, 'delete_settings', 'settings', '2022-01-01 10:53:30', '2022-01-01 10:53:30'),
(41, 'browse_appointment', 'appointment', '2022-01-01 10:54:27', '2022-01-01 10:54:27'),
(42, 'read_appointment', 'appointment', '2022-01-01 10:54:27', '2022-01-01 10:54:27'),
(43, 'edit_appointment', 'appointment', '2022-01-01 10:54:27', '2022-01-01 10:54:27'),
(44, 'add_appointment', 'appointment', '2022-01-01 10:54:27', '2022-01-01 10:54:27'),
(45, 'delete_appointment', 'appointment', '2022-01-01 10:54:27', '2022-01-01 10:54:27'),
(46, 'browse_nationality', 'nationality', '2022-01-01 10:56:09', '2022-01-01 10:56:09'),
(47, 'read_nationality', 'nationality', '2022-01-01 10:56:09', '2022-01-01 10:56:09'),
(48, 'edit_nationality', 'nationality', '2022-01-01 10:56:09', '2022-01-01 10:56:09'),
(49, 'add_nationality', 'nationality', '2022-01-01 10:56:09', '2022-01-01 10:56:09'),
(50, 'delete_nationality', 'nationality', '2022-01-01 10:56:09', '2022-01-01 10:56:09'),
(56, 'browse_admin', NULL, NULL, NULL),
(57, 'browse_bread', NULL, NULL, NULL),
(58, 'browse_database', NULL, NULL, NULL),
(59, 'browse_media', NULL, NULL, NULL),
(60, 'browse_compass', NULL, NULL, NULL),
(76, 'statstics_appointment', 'appointment', NULL, NULL),
(77, 'browse_orginzation', 'orginzation', '2022-02-05 13:49:51', '2022-02-05 13:49:51'),
(78, 'read_orginzation', 'orginzation', '2022-02-05 13:49:51', '2022-02-05 13:49:51'),
(79, 'edit_orginzation', 'orginzation', '2022-02-05 13:49:51', '2022-02-05 13:49:51'),
(80, 'add_orginzation', 'orginzation', '2022-02-05 13:49:51', '2022-02-05 13:49:51'),
(81, 'delete_orginzation', 'orginzation', '2022-02-05 13:49:51', '2022-02-05 13:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
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
(41, 1),
(41, 3),
(41, 5),
(41, 6),
(42, 1),
(43, 1),
(44, 1),
(44, 3),
(44, 6),
(44, 7),
(45, 1),
(45, 6),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(56, 1),
(56, 4),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(76, 1),
(76, 6),
(77, 1),
(77, 6),
(78, 1),
(78, 6),
(79, 1),
(79, 6),
(80, 1),
(80, 6),
(81, 1),
(81, 6);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-01-01 10:53:34', '2022-01-01 10:53:34'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-01-01 10:53:34', '2022-01-01 10:53:34'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-01-01 10:53:34', '2022-01-01 10:53:34'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-01-01 10:53:34', '2022-01-01 10:53:34');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'Super Admin', '2022-01-01 10:53:28', '2022-01-02 11:09:24'),
(2, 'unactive user', 'unactive user', '2022-01-01 10:53:28', '2022-01-02 11:08:19'),
(3, 'Receptionist', 'Receptionist', '2022-01-02 11:10:58', '2022-01-02 11:10:58'),
(4, 'activate user', 'activate user', '2022-01-02 11:11:41', '2022-01-02 11:11:41'),
(5, 'User view only', 'User view only', '2022-01-02 11:12:18', '2022-01-02 11:12:18'),
(6, 'admin', 'admin', '2022-01-02 11:13:21', '2022-01-02 11:13:21'),
(7, 'user insert data only', 'user insert data only', '2022-01-02 11:14:02', '2022-01-02 11:14:02');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'UNHSR', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-01-01 10:53:36', '2022-01-01 10:53:36'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-01-01 10:53:36', '2022-01-01 10:53:36'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-01-01 10:53:36', '2022-01-01 10:53:36'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-01-01 10:53:36', '2022-01-01 10:53:36'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-01-01 10:53:37', '2022-01-01 10:53:37'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-01-01 10:53:37', '2022-01-01 10:53:37'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-01-01 10:53:37', '2022-01-01 10:53:37'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-01-01 10:53:37', '2022-01-01 10:53:37'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-01-01 10:53:37', '2022-01-01 10:53:37'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-01-01 10:53:37', '2022-01-01 10:53:37'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-01-01 10:53:37', '2022-01-01 10:53:37'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-01-01 10:53:37', '2022-01-01 10:53:37'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-01-01 10:53:37', '2022-01-01 10:53:37'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-01-01 10:53:37', '2022-01-01 10:53:37'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-01-01 10:53:37', '2022-01-01 10:53:37'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-01-01 10:53:37', '2022-01-01 10:53:37'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-01-01 10:53:38', '2022-01-01 10:53:38'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-01-01 10:53:38', '2022-01-01 10:53:38'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-01-01 10:53:38', '2022-01-01 10:53:38'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-01-01 10:53:38', '2022-01-01 10:53:38'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-01-01 10:53:38', '2022-01-01 10:53:38'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-01-01 10:53:38', '2022-01-01 10:53:38'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-01-01 10:53:38', '2022-01-01 10:53:38'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-01-01 10:53:38', '2022-01-01 10:53:38'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-01-01 10:53:38', '2022-01-01 10:53:38'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-01-01 10:53:38', '2022-01-01 10:53:38'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-01-01 10:53:38', '2022-01-01 10:53:38'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-01-01 10:53:38', '2022-01-01 10:53:38'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-01-01 10:53:39', '2022-01-01 10:53:39'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-01-01 10:53:39', '2022-01-01 10:53:39'),
(31, 'data_types', 'display_name_singular', 12, 'pt', 'Post', '2022-01-01 11:05:09', '2022-01-01 11:05:09'),
(32, 'data_types', 'display_name_singular', 13, 'pt', 'Página', '2022-01-01 11:05:09', '2022-01-01 11:05:09'),
(33, 'data_types', 'display_name_singular', 11, 'pt', 'Categoria', '2022-01-01 11:05:09', '2022-01-01 11:05:09'),
(34, 'data_types', 'display_name_plural', 12, 'pt', 'Posts', '2022-01-01 11:05:09', '2022-01-01 11:05:09'),
(35, 'data_types', 'display_name_plural', 13, 'pt', 'Páginas', '2022-01-01 11:05:09', '2022-01-01 11:05:09'),
(36, 'data_types', 'display_name_plural', 11, 'pt', 'Categorias', '2022-01-01 11:05:10', '2022-01-01 11:05:10'),
(37, 'menu_items', 'title', 18, 'pt', 'Publicações', '2022-01-01 11:05:10', '2022-01-01 11:05:10'),
(38, 'menu_items', 'title', 17, 'pt', 'Categorias', '2022-01-01 11:05:10', '2022-01-01 11:05:10'),
(39, 'menu_items', 'title', 19, 'pt', 'Páginas', '2022-01-01 11:05:10', '2022-01-01 11:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$cYf18z29ZU/ZSMkAaOO.ueFna4U1YTZiooRTfvjvEXufJcAV928Ji', 'ocmYtgsZUBEs2tN56lPC6I3dQPQFQCpzT2zISFVFDRe4Pvc55gIp4Olqi9OL', NULL, '2022-01-01 10:53:33', '2022-02-06 09:54:46'),
(2, 2, 'iukr', 'a@a.com', 'users/default.png', NULL, '$2y$10$jbO876wmvmqwOpsXmH7SgO/4XyD33seZzTXgPIBwthuBlEznUra26', NULL, '{\"locale\":\"en\"}', '2022-01-01 11:42:02', '2022-01-01 11:42:02'),
(3, 2, 'alaaa', 'admin@admin.coma', 'users/default.png', NULL, '$2y$10$HwX8eQC5f3J8ArFl0OWrJOCE4NR135tQ6fXMv.m8n0Z7hLxTqY5Fm', NULL, NULL, '2022-01-02 06:39:21', '2022-01-02 06:39:21'),
(4, 4, 'rashad', 'tknetekne@gmail.com', 'users/default.png', NULL, '$2y$10$nS2RCpvy9MIdD0ikBf.F1ev9HOzTW/o5Yli3lJTJbCbjVPPsLIuC2', NULL, '{\"locale\":\"en\"}', '2022-01-02 11:05:55', '2022-01-02 11:14:39'),
(5, NULL, 'sss', 'yourss@email.com', 'users/default.png', NULL, '$2y$10$QJIyzsT0lrSVR1XDxVNSiOwEmcIGoFeekrDbRdFnKpHmPqhFp.LDK', NULL, NULL, '2022-01-15 11:27:11', '2022-01-15 11:27:11'),
(6, NULL, 'sss', 'yoursss@email.com', 'users/default.png', NULL, '$2y$10$eS7EguczVI58jL68C2qMfuJTMZ9ZuNYUz3sW7gTSFgk5k3V0UbFl.', NULL, NULL, '2022-01-15 11:29:08', '2022-01-15 11:29:08'),
(7, NULL, 'wrw', 'a@axx.com', 'users/default.png', '2022-01-15 11:33:37', '$2y$10$ZpMISPTgx4Hbz/kfLIa32.JjUfmrEDQ6StE/ssjlJ6WGC3kAk/NyG', NULL, NULL, '2022-01-15 11:32:35', '2022-01-15 11:33:37'),
(8, 1, 'ALAEDDIN ALI MOUSA', 'rashad@admin.com', 'users/default.png', '2022-01-15 11:49:51', '$2y$10$CGp53sSFU3VrLq4hxKEsvurSu27ijMlIG39Chgfi0XsE.HtakFjDi', 'aWXlRhWoOZgNFrZEJIdAKw5vVHhM4V7GiVGpHF4VUDVMOxErDHTtsYjC00XU', NULL, '2022-01-15 11:49:20', '2022-01-15 11:49:51'),
(9, NULL, 'fff', 'edfds@fd.com', 'users/default.png', '2022-01-15 12:36:38', '$2y$10$sUJnCw6LSdWHH/XJIJyqKec4qYX9N2poO04tXT3joKuUumfKvkgl.', NULL, NULL, '2022-01-15 12:36:10', '2022-01-15 12:36:38'),
(10, NULL, 'vf', 'admiddn@admin.comd', 'users/default.png', '2022-01-15 12:39:14', '$2y$10$/dlmZEQSgKqbYIOF.KCJLewa0Kzq0ah5PYm4YiH0eJhE15aYJzNiG', NULL, NULL, '2022-01-15 12:38:56', '2022-01-15 12:39:14'),
(26, NULL, 'علاء الدين', 'aa@aa.com', 'users/default.png', NULL, '$2y$10$Z7aPb8rMtSyhx8wOn1U7iufwk30dy.wZKsDRGtl0VELloH/34zazq', NULL, NULL, '2022-02-05 13:29:52', '2022-02-05 13:29:52'),
(28, 4, 'ff', 'a123@a.com', 'users/default.png', NULL, '$2y$10$jDFORllpgGHogtOe8HSBY.790X62u5MsFLYlMIRrZK/VaxIPMSsIq', NULL, NULL, '2022-02-06 10:53:20', '2022-02-06 10:54:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 2),
(4, 7),
(28, 5),
(28, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointment_user_id_foreign` (`user_id`),
  ADD KEY `appointment_nationality_id_foreign` (`nationality_id`),
  ADD KEY `appointment_orginzations_id_foreign` (`orginzations_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nationality`
--
ALTER TABLE `nationality`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nationality_user_id_foreign` (`user_id`);

--
-- Indexes for table `orginzation`
--
ALTER TABLE `orginzation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orginzation_user_id_foreign` (`user_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `nationality`
--
ALTER TABLE `nationality`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orginzation`
--
ALTER TABLE `orginzation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_nationality_id_foreign` FOREIGN KEY (`nationality_id`) REFERENCES `nationality` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointment_orginzations_id_foreign` FOREIGN KEY (`orginzations_id`) REFERENCES `orginzation` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointment_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nationality`
--
ALTER TABLE `nationality`
  ADD CONSTRAINT `nationality_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orginzation`
--
ALTER TABLE `orginzation`
  ADD CONSTRAINT `orginzation_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
