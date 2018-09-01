-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2018 at 04:13 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imageark`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(2, NULL, 1, 'Category 2', 'category-2', '2018-08-04 15:09:33', '2018-08-04 15:09:33');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 4),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '', 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(30, 5, 'id', 'number', 'ID', 1, 1, 0, 0, 0, 0, NULL, 1),
(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(32, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, NULL, 3),
(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, NULL, 5),
(35, 5, 'body', 'text_area', 'Description first', 1, 0, 1, 1, 1, 1, NULL, 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, NULL, 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, NULL, 10),
(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '', 2),
(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(49, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 8),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '', 10),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '', 11),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '', 12),
(57, 5, 'country', 'text', 'Country', 1, 0, 0, 1, 1, 1, NULL, 17),
(58, 5, 'multiple_images', 'multiple_images', 'Multiple Images', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"700\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 18),
(59, 5, 'body2', 'text_area', 'Description Second', 1, 0, 1, 1, 1, 1, NULL, 16);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-08-04 15:09:32', '2018-08-04 15:09:32'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-08-04 15:09:32', '2018-08-04 15:09:32'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-08-04 15:09:32', '2018-08-04 15:09:32'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-04 15:09:33', '2018-08-04 19:48:49'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2018-08-04 15:09:33', '2018-08-04 15:09:33');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-08-04 15:09:32', '2018-08-04 15:09:32');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-08-04 15:09:32', '2018-08-04 15:09:32', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-08-04 15:09:32', '2018-08-04 15:09:32', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-08-04 15:09:32', '2018-08-04 15:09:32', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-08-04 15:09:32', '2018-08-04 15:09:32', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-08-04 15:09:32', '2018-08-04 15:09:32', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2018-08-04 15:09:32', '2018-08-04 15:09:32', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2018-08-04 15:09:32', '2018-08-04 15:09:32', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2018-08-04 15:09:32', '2018-08-04 15:09:32', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2018-08-04 15:09:32', '2018-08-04 15:09:32', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2018-08-04 15:09:32', '2018-08-04 15:09:32', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2018-08-04 15:09:33', '2018-08-04 15:09:33', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2018-08-04 15:09:33', '2018-08-04 15:09:33', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2018-08-04 15:09:33', '2018-08-04 15:09:33', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2018-08-04 15:09:33', '2018-08-04 15:09:33', 'voyager.hooks', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(2, 1, 'About Us', 'Vestibulum vestibulum vehicula quam, sit amet congue justo blandit ac. Cras eu iaculis dolor, id porta sem.', '<p>Vestibulum vestibulum vehicula quam, sit amet congue justo blandit ac. Cras eu iaculis dolor, id porta sem. Nullam aliquet metus sit amet quam blandit placerat. Cras dignissim ultricies eros, vel accumsan leo tincidunt in. Curabitur pharetra gravida tellus non vulputate. Duis arcu arcu, convallis a finibus ut, rhoncus eget sem. Proin augue erat, suscipit vel lacinia sed, ullamcorper ut dolor.</p>\r\n<p>Proin tincidunt felis eu dapibus condimentum. Maecenas porta urna dui, non feugiat est pharetra sagittis. Aenean hendrerit aliquam ullamcorper. Vestibulum imperdiet nisi at sapien euismod, ac cursus elit facilisis. Proin mattis rhoncus ex, non bibendum lectus molestie eget. Aliquam vel lorem quam. Vivamus ut sodales augue. Nunc vitae diam aliquam, cursus quam ut, cursus nulla. Cras maximus elit non tellus rutrum, mattis tempor nunc imperdiet.</p>', 'pages\\August2018\\fZICqf9Ct8T4o02RH8Cv.png', 'about-us', 'apple', 'aple', 'ACTIVE', '2018-08-04 17:08:17', '2018-08-04 17:08:17');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-08-04 15:09:32', '2018-08-04 15:09:32'),
(2, 'browse_bread', NULL, '2018-08-04 15:09:32', '2018-08-04 15:09:32'),
(3, 'browse_database', NULL, '2018-08-04 15:09:32', '2018-08-04 15:09:32'),
(4, 'browse_media', NULL, '2018-08-04 15:09:32', '2018-08-04 15:09:32'),
(5, 'browse_compass', NULL, '2018-08-04 15:09:32', '2018-08-04 15:09:32'),
(6, 'browse_menus', 'menus', '2018-08-04 15:09:32', '2018-08-04 15:09:32'),
(7, 'read_menus', 'menus', '2018-08-04 15:09:32', '2018-08-04 15:09:32'),
(8, 'edit_menus', 'menus', '2018-08-04 15:09:32', '2018-08-04 15:09:32'),
(9, 'add_menus', 'menus', '2018-08-04 15:09:32', '2018-08-04 15:09:32'),
(10, 'delete_menus', 'menus', '2018-08-04 15:09:32', '2018-08-04 15:09:32'),
(11, 'browse_roles', 'roles', '2018-08-04 15:09:32', '2018-08-04 15:09:32'),
(12, 'read_roles', 'roles', '2018-08-04 15:09:32', '2018-08-04 15:09:32'),
(13, 'edit_roles', 'roles', '2018-08-04 15:09:32', '2018-08-04 15:09:32'),
(14, 'add_roles', 'roles', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(15, 'delete_roles', 'roles', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(16, 'browse_users', 'users', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(17, 'read_users', 'users', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(18, 'edit_users', 'users', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(19, 'add_users', 'users', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(20, 'delete_users', 'users', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(21, 'browse_settings', 'settings', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(22, 'read_settings', 'settings', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(23, 'edit_settings', 'settings', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(24, 'add_settings', 'settings', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(25, 'delete_settings', 'settings', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(26, 'browse_categories', 'categories', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(27, 'read_categories', 'categories', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(28, 'edit_categories', 'categories', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(29, 'add_categories', 'categories', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(30, 'delete_categories', 'categories', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(31, 'browse_posts', 'posts', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(32, 'read_posts', 'posts', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(33, 'edit_posts', 'posts', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(34, 'add_posts', 'posts', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(35, 'delete_posts', 'posts', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(36, 'browse_pages', 'pages', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(37, 'read_pages', 'pages', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(38, 'edit_pages', 'pages', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(39, 'add_pages', 'pages', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(40, 'delete_pages', 'pages', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(41, 'browse_hooks', NULL, '2018-08-04 15:09:33', '2018-08-04 15:09:33');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
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
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `multiple_images` varchar(12400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body2` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`, `country`, `multiple_images`, `body2`) VALUES
(1, 1, 1, 'Quas consequatur dolores ', 'Quo sed eligendi voluptas delectus eaque.', 'Exercitationem voluptas quisquam ut maiores ea dicta molestiae. Ut impedit dolor ipsum quod enim rerum dolor. Quod accusantium laudantium deleniti itaque voluptatem rerum.', 'Quae laudantium soluta quos qui expedita et et exercitationem. Modi nostrum fugit rerum et officia nam. Laboriosam aspernatur totam ut ea qui pariatur. Nihil et inventore quia aut suscipit.', 'posts\\August2018\\KfOcj7zqYEIzQI52pq43.jpg', 'vel', 'Quibusdam excepturi doloremque ab nam itaque sed. Voluptatem culpa adipisci sunt. Reprehenderit placeat doloremque corporis quisquam qui est quaerat. Ab maiores officiis natus vitae consequatur.', NULL, 'PUBLISHED', 1, '1994-05-23 15:13:39', '2018-08-05 06:58:34', 'tempora', NULL, 'Rerum ea ut sed. Adipisci sit totam tempore perspiciatis itaque. Sed ut autem mollitia optio quo animi.'),
(2, 1, 1, 'Itaque sequi eos ipsam.', 'Ut iure nam saepe earum eligendi alias qui consectetur.', 'Accusantium voluptatem animi quaerat. Saepe voluptas ratione dolorum natus corporis harum. Vitae expedita beatae vel omnis animi voluptates. Vitae possimus velit excepturi sed quam sint.', 'Vel numquam eos assumenda ut sit. Et vel ipsam nobis libero a impedit voluptatum. Quod ut debitis enim repellat et qui vero.', 'posts\\August2018\\5gi5XmMfU1XicTlP84iG.jpg', 'saepe', 'Qui dolore aut et. Doloribus inventore voluptas enim unde asperiores voluptatem dicta ad. Neque unde ut et enim et.', NULL, 'PUBLISHED', 0, '1983-03-02 19:24:41', '2018-08-05 07:14:18', 'possimus', NULL, 'Non aut illo quas recusandae qui consectetur ut. Dolor quia ut voluptas corrupti ut. Aut quae aliquam veniam et.'),
(3, 1, 1, 'Sunt quidem ut distinctio.', 'Non vel alias sequi.', 'Voluptates recusandae modi animi fugit quaerat. Ea alias perferendis fugiat itaque assumenda.', 'Qui ratione quod tenetur quod rerum odio magni. Sequi minus fugiat id sint facere est est. Sequi vitae dicta nesciunt unde.', 'posts\\August2018\\6Kh3tMgeq6sJqG5JfKqV.jpg', 'est', 'Porro illum eaque ad eius. Minima quis ea nesciunt odio quae blanditiis iure.', NULL, 'PUBLISHED', 1, '1974-08-23 19:34:27', '2018-08-05 07:22:17', 'dicta', '[\"posts\\\\August2018\\\\c8HRXqIipMG7lK5L6eDC.jpg\",\"posts\\\\August2018\\\\sQf7lIoOzsd4qgJFVli5.jpg\",\"posts\\\\August2018\\\\atHqoAallxCqJUzVbxPq.jpg\",\"posts\\\\August2018\\\\dyjMcuveArllVC5fYOiV.jpg\",\"posts\\\\August2018\\\\CI4810Vzs3OQIA82XanM.jpg\",\"posts\\\\August2018\\\\o01xUSbvhWrbjlwGL2fU.jpg\"]', 'Et ad dolor et et. Necessitatibus rerum eaque numquam doloremque. Consectetur aut incidunt rerum corporis vero voluptatem. Blanditiis optio facilis quo eaque excepturi neque.'),
(4, 1, 1, 'Dolores vel aut sint ', 'Quo laudantium laboriosam est nihil nobis.', 'Facilis molestias doloremque aut facere repellendus omnis vero sint. Eos sint delectus et explicabo. Dolores voluptatibus quisquam harum aut.', 'Dolor distinctio non corrupti. Aut veniam perferendis vero enim. Nemo culpa dignissimos iusto fugiat non sapiente temporibus.', 'posts\\August2018\\tYo5VM3RuwY59tmbHAVD.jpg', 'dolor', 'Excepturi blanditiis aut minus eaque totam laborum. Labore tempore dolore est accusantium dolor esse. Natus a accusamus sit facere neque. Sint nobis asperiores voluptas sed aut deserunt.', NULL, 'PUBLISHED', 1, '1993-09-05 12:10:46', '2018-08-05 06:58:52', 'sunt', NULL, 'Iste assumenda enim animi. In ea exercitationem fugit beatae. Laborum molestiae repudiandae minima ut.'),
(5, 1, 1, 'Distinctio sit ', 'Quo accusamus cumque magnam iusto.', 'Rerum impedit hic ad esse sed. Soluta nulla ratione earum atque. Aut quo repellat excepturi quasi. Rem laudantium repudiandae libero in laudantium ipsum non.', 'Sint non animi minima ut molestias perspiciatis magni. Consequatur sed ut dolorem repellendus impedit dolorem. Est voluptate quam nihil maiores magni ut. Deleniti id sapiente aut qui.', 'posts\\August2018\\95J7mked7XFLbXZWBC94.jpg', 'quisquam', 'Voluptatem rerum nemo vel qui molestiae sed et. Ducimus rerum ipsam eos ut sunt laudantium mollitia.', NULL, 'PUBLISHED', 1, '1995-05-02 09:56:57', '2018-08-05 06:58:03', 'a', NULL, 'Odit ducimus quos sapiente consectetur eos placeat. Eveniet qui aperiam possimus nesciunt. Nisi assumenda eligendi quisquam et aliquid.'),
(6, 1, 1, 'Necessitatibus pariatur ipsum ', 'Repellat nobis blanditiis sequi quidem repudiandae repudiandae aut.', 'Est fuga sed corrupti necessitatibus ut dicta dicta facere. Et eos et et. Minus corporis reiciendis aliquid a impedit rerum molestias quam. Asperiores non eos esse laudantium.', 'Ipsa autem ipsum a voluptas ut sed. Pariatur dolorem odit repellat voluptatem voluptatibus quos magnam. Recusandae et quam accusamus ut sed.', 'posts\\August2018\\00G8N6msOkTmP5rzD3Ju.jpg', 'qui', 'Architecto voluptatum voluptas in voluptates corrupti molestias magni. Sed molestiae laudantium alias ea velit. Modi voluptatem repellat aut quod inventore.', NULL, 'PUBLISHED', 1, '1975-09-28 11:53:28', '2018-08-05 07:23:41', 'culpa', '[\"posts\\\\August2018\\\\RWhpBNKoOHIKScTNnqjR.jpg\",\"posts\\\\August2018\\\\SBlYAnEtFOuOJR5Jvv6j.jpg\",\"posts\\\\August2018\\\\G5rdrIGKAvoumuElBiQ8.jpg\",\"posts\\\\August2018\\\\k5cEwlZMagLh0kTjiUx0.jpg\",\"posts\\\\August2018\\\\PyRiwt0an1IaymjxLWK0.jpg\",\"posts\\\\August2018\\\\ApqP5GaSg2Fa9woEvdug.jpg\"]', 'Consequatur eum ut consequatur molestiae nihil consequatur corrupti. Perspiciatis eveniet minus iusto. Omnis qui ut adipisci animi temporibus. Repellat doloribus enim porro facilis vitae qui ipsum.'),
(7, 1, 1, 'Ut debitis dolores et ', 'Nemo ut molestiae aut dolor quis velit.', 'Modi ducimus provident quas animi ut totam. Non et possimus quam. Veniam velit dolor porro est quo.', 'Consequatur ea rerum repudiandae aliquam officiis qui. Enim deserunt impedit numquam. Est sint eum dolorem iure repellendus non excepturi. Architecto est sit aut ea nobis iure temporibus.', 'posts\\August2018\\kUDSHLWOsWR1BLfHIFXG.jpg', 'ut', 'Libero nobis temporibus sunt pariatur. Omnis aut alias nesciunt doloremque molestiae. Voluptatem voluptate et suscipit id qui autem consectetur. Voluptatibus necessitatibus deserunt modi cum sequi alias.', NULL, 'PUBLISHED', 0, '2008-05-02 10:45:35', '2018-08-05 06:55:38', 'ratione', NULL, 'Molestiae tempora facere in dolores tempore corporis reprehenderit. Fugiat quasi eligendi qui aliquid laboriosam. Eos reiciendis ut dolores quaerat maiores possimus.'),
(8, 1, 1, 'Est nihil ducimus ea ut ', 'Non ipsam sint et odit unde ullam voluptatem quia.', 'Facilis id aut sint amet. Voluptates quisquam voluptas culpa corrupti. Rerum non itaque sit quidem tempora autem. Quidem sit qui unde blanditiis. Qui qui autem perspiciatis.', 'Ipsa est numquam cum et qui. Iusto laboriosam at nisi ipsam numquam non. Sit ut qui impedit ut voluptatum. Possimus iure et in voluptatem cum corrupti facere. Eum magnam sed necessitatibus consequatur a aut corporis consequatur.', 'posts\\August2018\\FuYn5I3BfDyo05EJxwd1.jpg', 'odio', 'Fugit tenetur in consequatur facere et et. Quam molestiae non nihil exercitationem harum qui aut ut. Perspiciatis consectetur unde non impedit reprehenderit autem eos.', NULL, 'PUBLISHED', 0, '2000-02-17 02:03:00', '2018-08-05 06:57:07', 'sunt', NULL, 'Distinctio qui magnam dolor aut quis. Molestias eum amet fuga sequi qui at pariatur ipsam.'),
(9, 1, 1, 'Commodi cupiditate in ', 'Iste et architecto delectus excepturi excepturi.', 'Ut optio fugit provident quibusdam facere ut. Ullam voluptatem labore quis ut tempora suscipit. Consequatur sequi animi id ut laudantium omnis quam.', 'Molestiae impedit incidunt voluptatum qui qui ea nesciunt. Quos autem voluptas et. Quia temporibus nam aut repellat ut.', 'posts\\August2018\\kyaMEAPpmHSukdEajma4.jpg', 'ipsum', 'Ea facere quisquam laudantium aut. Reiciendis dolores itaque ipsam laboriosam vero sint. Necessitatibus suscipit ut est pariatur doloremque voluptatum molestias. Accusamus corrupti sint molestias culpa maiores eligendi.', NULL, 'PUBLISHED', 1, '1985-08-24 05:17:29', '2018-08-05 07:13:23', 'veritatis', NULL, 'Quidem nostrum vero eum quibusdam qui veritatis. Iusto ipsum id sunt voluptas atque ut incidunt. Consequuntur laborum qui vitae delectus reprehenderit provident dolorum. Ut inventore odio non.'),
(10, 1, 1, 'Sequi autem maxime cum est ', 'Sequi autem fugiat autem iste.', 'Alias inventore quibusdam aut voluptatem consequatur qui. Voluptas rerum omnis incidunt facilis minima. Et minima ea qui deserunt voluptatem est. Cupiditate iusto iste magni aliquam.', 'Deleniti voluptatum officia voluptatem illo inventore autem maiores. Rem voluptatum quas aut est qui. Consequuntur omnis beatae suscipit voluptas mollitia. Ut optio sed provident voluptas sint facere.', 'posts\\August2018\\Cd8gOUrkuhGUJujZGfyy.jpg', 'voluptatum', 'Consequatur ipsam sed ea. Corrupti quisquam et sed iure sunt. Magnam rerum aut dolorem in. Blanditiis omnis laudantium eos nobis tempore mollitia.', NULL, 'PUBLISHED', 0, '2001-02-27 23:50:05', '2018-08-05 06:56:41', 'unde', NULL, 'Ullam voluptatem quibusdam aut perspiciatis ut. Eos est laborum necessitatibus nihil unde accusamus excepturi quidem. Consectetur tempora aliquam quis aut.'),
(11, 1, 1, 'Corrupti officia omnis quis animi ', 'Occaecati sint aliquam consequatur assumenda aut.', 'Sint et et molestiae id voluptatum quis qui dolor. Eos optio atque quia praesentium modi illo. Aut et vel eos rerum.', 'Velit possimus animi voluptate. Eos qui voluptatem voluptas temporibus quo ab. Sed cum rerum maxime quisquam tempora assumenda.', 'posts\\August2018\\M0CgvqOHYRHOafD2JsTL.jpg', 'rerum', 'Quisquam ut fuga accusamus dolor. Consequuntur laborum suscipit corrupti sint aut quaerat. Qui consequatur quae enim maxime itaque et. Aut voluptas possimus enim suscipit aut quibusdam assumenda.', NULL, 'PUBLISHED', 0, '1978-01-07 08:12:45', '2018-08-05 07:15:56', 'veritatis', NULL, 'Et voluptas aliquam consequatur aperiam delectus beatae. Amet quis quisquam atque autem. Aut nesciunt adipisci placeat illum consequatur dignissimos.'),
(12, 1, 1, 'Aut ipsa labore sunt.', 'Harum consequatur laudantium eveniet dolorem.', 'Exercitationem ea ad eum optio. Voluptas est quia nemo rem. Harum enim quia esse temporibus quod.', 'Officia fuga eligendi quia excepturi omnis at deleniti. Rerum voluptatem neque exercitationem reiciendis et optio. Quis vel nesciunt quia quo laborum veritatis omnis.', 'posts\\August2018\\AW3y6unfsLpJdJCdWXQt.jpg', 'fuga', 'Deleniti aut at blanditiis magni. Totam reprehenderit animi ipsum reiciendis. Qui natus non modi eos ut quis fuga. Voluptates corporis molestias sit distinctio molestiae doloribus.', NULL, 'PUBLISHED', 0, '1997-05-10 07:38:13', '2018-08-05 06:57:33', 'error', NULL, 'Enim fugit qui fugit reiciendis dolore voluptates id fuga. Temporibus expedita ut et rem consectetur sed voluptates. Sapiente laboriosam est error minus unde expedita. Repellat ad voluptatem laudantium pariatur voluptas nostrum.'),
(13, 1, 1, 'Dolor illo nihil sint ', 'Voluptates voluptatem ut beatae necessitatibus.', 'Voluptatem est eos eveniet est sunt. Minima nesciunt cum natus ipsa laboriosam est excepturi. Repellendus distinctio modi qui voluptas reiciendis. Nihil quia necessitatibus quam temporibus officia dolorem voluptatum.', 'Consequuntur ducimus doloribus aliquam. In illo libero repellendus aut ut. Et quo consequatur sunt nemo.', 'posts\\August2018\\g65F554D9l4ivvpeOz5G.jpg', 'quia', 'Alias expedita rerum voluptate molestiae. Quia maxime consequatur harum neque modi corrupti sequi. Voluptatibus ea cumque provident necessitatibus. Blanditiis eligendi ex quibusdam.', NULL, 'PUBLISHED', 0, '1990-01-04 07:15:04', '2018-08-05 07:12:50', 'rem', NULL, 'Repellat est corporis est maiores repellat nulla et. Et quis perferendis qui quia est. Voluptatem unde facilis eligendi officia aspernatur minima. Et eius omnis incidunt placeat odit voluptatum.'),
(14, 1, 1, 'Et vel qui ', 'Sed ex expedita alias reiciendis a atque tempora.', 'Dolorem recusandae dolorum itaque quos et. Unde nihil quisquam fuga similique exercitationem explicabo. Est est in nihil.', 'Eveniet nihil voluptatem nihil qui ut reiciendis. Nihil tenetur sint laborum porro. Consequuntur sit laudantium iste porro. Reiciendis aut error provident ullam.', 'posts\\August2018\\yHw9cWw5BZqcA7TLzJi2.jpg', 'aut', 'Praesentium odit corporis vitae. Natus ratione voluptas aut aspernatur enim corrupti. Omnis quia quo velit culpa tempora assumenda. Culpa doloremque quidem et nemo.', NULL, 'PUBLISHED', 0, '2001-08-07 18:03:12', '2018-08-05 06:56:19', 'rerum', NULL, 'Sint molestiae quaerat ipsam ut quos. Nemo earum ab enim beatae hic quis. Blanditiis necessitatibus accusamus explicabo dolorum laudantium.'),
(15, 1, 1, 'Ut facere perspiciatis ', 'Vitae sit eum itaque est deleniti.', 'Recusandae laborum molestiae aut dolores eaque quos est. Cumque perferendis incidunt iste et. Libero nulla tempora et nemo ipsum. Repudiandae dolorem nemo expedita laudantium autem id.', 'Ea dolorem facere laudantium ut aliquid quam. Consequatur sed possimus dolorum delectus itaque. Deserunt quod aut amet et velit nisi laudantium.', 'posts\\August2018\\tB2gynof2pII1RSSqiZn.jpg', 'quam', 'Voluptas accusantium maxime corrupti aperiam velit est. Quia perspiciatis placeat qui sint. Alias sequi eum rerum tempore est amet.', NULL, 'PUBLISHED', 0, '1976-11-10 06:04:27', '2018-08-05 07:16:22', 'mollitia', NULL, 'Porro fugiat dicta consequatur saepe voluptate illum quisquam dicta. Eos quibusdam rerum voluptas veniam eos qui. Facere odio recusandae est enim provident.'),
(16, 1, 1, 'Nulla quia autem magni.', 'Incidunt fugit cupiditate ut minus aut.', 'Earum itaque voluptates velit expedita inventore. Vel voluptatem non maiores quisquam. Et et aperiam dolorem quia tempore.', 'Quo excepturi sed asperiores. Dignissimos quo nobis accusantium molestiae consequatur tempore qui culpa. Nihil delectus quam aliquam illum dignissimos molestiae neque.', 'posts\\August2018\\rw8YE7zPdwfXDPOrO73h.jpg', 'quod', 'Velit et quae molestiae sit dolor. Voluptatem modi qui consequatur tempora animi et. Quis omnis nesciunt eum at ut molestiae. Labore exercitationem iure quia accusamus aperiam.', NULL, 'PUBLISHED', 0, '2004-09-06 07:54:11', '2018-08-05 06:55:55', 'sed', NULL, 'Et rerum quos nesciunt error debitis soluta. Odio praesentium eos doloribus et maiores nesciunt. Omnis sit voluptates et nostrum esse voluptatem inventore maiores. Saepe earum voluptatibus et.'),
(17, 1, 1, 'Sed maxime enim maxime ', 'Consectetur eaque veritatis consequatur praesentium cumque id hic.', 'Quod suscipit nemo est pariatur sint autem consequatur. Sint nam itaque qui nesciunt. Doloribus nobis consequatur reprehenderit enim molestiae provident. Officia et eaque pariatur eaque quisquam et quo. Corrupti suscipit a id necessitatibus voluptates laborum ratione.', 'Ut officiis perspiciatis ipsa officiis. Non aperiam eos adipisci qui quibusdam ab. Possimus natus dicta iusto ut aperiam. Saepe dolor odio eius quos quia.', 'posts\\August2018\\ddys0ikTTg1J0YCaDapS.jpg', 'iste', 'Natus molestiae a facilis nemo. Doloribus nobis excepturi a esse est cumque. Rerum laborum voluptas sint magnam dolorem. Eos voluptatem ipsa sequi voluptatem reprehenderit facere.', NULL, 'PUBLISHED', 0, '1976-06-28 23:40:11', '2018-08-05 07:25:18', 'sit', '[\"posts\\\\August2018\\\\IKpyVJuoVpTqttXdOKTY.jpg\",\"posts\\\\August2018\\\\03kWJAmfdLH3QgzfqEUQ.jpg\",\"posts\\\\August2018\\\\lwaUPwL0fAah0GD977qz.jpg\",\"posts\\\\August2018\\\\nPEaqTuZ5wfMiik26cxJ.jpg\",\"posts\\\\August2018\\\\xUPy8lSvF4PFUzfHdubU.jpg\",\"posts\\\\August2018\\\\wCGgaIZaMTOWqXEa2IfO.jpg\"]', 'Vel iure voluptas tenetur rerum facere sit. Praesentium non debitis quas. Recusandae nesciunt sint eum consequatur quia. Magnam et vero et quia.'),
(18, 1, 1, 'Exercitationem alias eveniet nulla', 'Sed voluptas adipisci hic ea sit pariatur dignissimos ad.', 'Dolores expedita aut et aut voluptate. Quia expedita ullam sunt a aut. Occaecati praesentium omnis unde. Voluptas rerum ratione voluptatem. Harum minus sapiente neque ut natus.', 'Et sunt et voluptatem accusantium possimus. Repudiandae perferendis esse molestias numquam dolorum. Eligendi architecto voluptatem est cupiditate sed eveniet ut.', 'posts\\August2018\\aDNbWX8WMJSZYfOcgVeV.jpg', 'eveniet', 'Nulla qui consectetur nesciunt ea assumenda iusto omnis. Expedita molestiae ex commodi cupiditate asperiores officia. Mollitia dolore nisi doloremque ut nesciunt et minus.', NULL, 'PUBLISHED', 0, '1980-10-11 05:03:01', '2018-08-05 07:14:48', 'cumque', NULL, 'Eos qui aperiam aperiam dicta sequi molestiae ducimus. Unde voluptas amet iste facilis repellendus vel quis beatae. Quis libero ad a. Exercitationem corporis in ullam in recusandae expedita.'),
(19, 1, 1, 'Libero et animi aut ', 'Dolor commodi ea dolorum.', 'Aut accusamus iste minus. Modi et voluptates deleniti ex a quo soluta. Deleniti veniam laborum excepturi molestiae et animi et ut.', 'Voluptatibus et aspernatur sunt ipsa quis. Dolorem error aliquam distinctio amet dolorem ipsa veniam. Quaerat ut autem aut. Iure rerum voluptas voluptatem qui rem quisquam laborum.', 'posts\\August2018\\CJQl19Zfw4FlnsOIIwmu.jpg', 'ea', 'Nesciunt et beatae molestiae unde. Eaque aut autem veritatis assumenda voluptatum porro similique. Eaque nisi magnam rerum accusamus in nihil voluptas nemo. Et architecto at beatae quia quia modi voluptatem.', NULL, 'PUBLISHED', 0, '2018-03-30 07:50:37', '2018-08-05 06:53:04', 'illo', NULL, 'Exercitationem fuga et totam ut. Quasi est sequi assumenda voluptatem ex. Repudiandae rerum nam ut assumenda ipsum necessitatibus sed quis.'),
(20, 1, 1, 'Consequuntur qui dolores quasi ', 'Quia autem voluptatum dolore fugiat.', 'Ad esse tempore sint quis blanditiis quia et. Aliquid omnis id qui incidunt blanditiis aliquam omnis. Labore quis officiis modi at eligendi. Ad et voluptatum ut unde error vitae.', 'Laboriosam ratione expedita enim voluptatum. Sint aut dolores fugit ducimus consequuntur praesentium. Aut optio aspernatur in cum quae. Dolor dolore ut nihil natus repellat.', 'posts\\August2018\\ifJ9AcaIeF5jjRyHiXt9.jpg', 'commodi', 'Nemo perspiciatis voluptatibus maxime aliquam id commodi vel. Iure et eius ad mollitia natus. Pariatur sed rem dolor dignissimos. At quia quia nihil vero.', NULL, 'PUBLISHED', 0, '1972-11-30 15:34:33', '2018-08-05 07:18:03', 'aut', '[\"posts\\\\August2018\\\\hZvj3abUXV10KYbN7zzl.jpg\",\"posts\\\\August2018\\\\BQbZh7dEoPUcR2mbjI0A.jpg\",\"posts\\\\August2018\\\\PD49ftLkKDI1RTAhsGZS.jpg\",\"posts\\\\August2018\\\\qPfNCwEj02zLpCp0Ij5H.jpg\",\"posts\\\\August2018\\\\sAtaYdEqGXcREkWfOjaa.jpg\",\"posts\\\\August2018\\\\IQOPPM7OxRybq1kVvgCw.jpg\"]', 'Architecto nesciunt dolorum aperiam et. Adipisci dolorum maiores ullam eaque sunt.'),
(21, 1, 1, 'Quasi optio id velit illo ', 'Molestiae nemo occaecati nulla minima totam eveniet quia.', 'Provident quis vel qui quia et. Optio fugiat ratione ut. Quasi accusantium magnam animi reiciendis.', 'Enim deleniti eum doloribus quae hic. Debitis dolor aperiam illum rerum. Facere dolores recusandae repudiandae quas provident eaque minus voluptatem.', 'posts\\August2018\\TmMhv7JhvVvbWPwB0tAe.jpg', 'et', 'Aut laudantium nihil fuga deleniti nulla exercitationem. Est iusto ducimus voluptatum sed. Eligendi ducimus voluptas velit illum molestias. Nihil vel beatae itaque et illum unde rerum.', NULL, 'PUBLISHED', 1, '2016-07-05 00:50:10', '2018-08-05 06:53:51', 'quia', NULL, 'Veritatis officia sint id temporibus commodi fugiat consectetur beatae. Dicta illo repellat omnis nesciunt praesentium occaecati. Ut voluptas non enim aut in ullam velit.'),
(22, 1, 1, 'Culpa harum ', 'Eum vel atque sunt eum vero veritatis enim.', 'Optio nostrum et qui. A non ut in qui. Et sed rerum non repellendus deserunt ea aut. Velit vitae corrupti nemo dicta totam quia.', 'Recusandae necessitatibus fugiat nostrum iure. Qui quia et qui. Atque sit dolorem voluptatibus occaecati dicta nostrum veniam dicta.', 'posts\\August2018\\ZxQJEMwFtSFERq0tvOJC.jpg', 'temporibus', 'Aut voluptates optio ex laudantium voluptatem similique error. Non hic et accusantium quasi aut.', NULL, 'PUBLISHED', 0, '1973-08-18 01:19:13', '2018-08-05 07:19:13', 'quod', '[\"posts\\\\August2018\\\\IMxqjiaT55XUQg9xzZtr.jpg\",\"posts\\\\August2018\\\\pgLfKwVs8ID6ARbTTkbe.jpg\",\"posts\\\\August2018\\\\vDx4BkhAzRpsObVELJtR.jpg\",\"posts\\\\August2018\\\\zb5cptyauFDXY80hbFjy.jpg\",\"posts\\\\August2018\\\\JkM8IA8CBG21VI9LQdCj.jpg\",\"posts\\\\August2018\\\\7DE7xgXU7DjifVjdJFfK.jpg\"]', 'Expedita libero nisi corporis sed atque soluta. Iusto veniam minus aspernatur aspernatur quis sit voluptatem. Occaecati voluptatum est aut doloribus veritatis tempora. Eligendi et quaerat sapiente quod. Natus sapiente autem non aliquid.'),
(23, 1, 1, 'Fugit modi eligendi quia ', 'Culpa aperiam ducimus voluptates est.', 'Dolorem quaerat sit dolor beatae sunt qui. Est voluptatem harum qui totam tenetur veniam. Et ullam exercitationem velit eos. Aut distinctio consectetur harum non cupiditate perspiciatis vel.', 'Est quibusdam ea iure quidem quia fuga. Repellendus molestias dolorem aut id cum molestiae. Necessitatibus qui tempora tempore et laborum qui. Corporis perferendis et dolorem similique sed.', 'posts\\August2018\\x6trzwFIVbCbiY4bWrRs.jpg', 'aliquid', 'Accusamus quasi eligendi est dolorem praesentium. Distinctio ut molestiae magnam consequatur et. Quis enim eum explicabo dolorem debitis unde dolore. Dolorem ipsa porro adipisci delectus voluptatem quia est.', NULL, 'PUBLISHED', 1, '1973-11-16 18:03:13', '2018-08-05 07:21:02', 'nisi', '[\"posts\\\\August2018\\\\iRe2Q9Awa5t6fcq5cu5C.jpg\",\"posts\\\\August2018\\\\nKbwxyc6Ec9eSf0zlvEx.jpg\",\"posts\\\\August2018\\\\h77nAsV3004TbFAv4dh1.jpg\",\"posts\\\\August2018\\\\Fp9FHsylBpKzW5Z0cyga.jpg\",\"posts\\\\August2018\\\\IJ0y3MUNxFTRPUg1ZouJ.jpg\",\"posts\\\\August2018\\\\EUNZNbNIVbYSiATXbirg.jpg\"]', 'Hic rerum illo explicabo consequatur quia excepturi vero. Molestias aperiam quod eos cumque repudiandae et. Distinctio facere quia non quibusdam ut id.'),
(24, 1, 1, 'Est doloribus maxime hic\r\n', 'Id voluptatem qui qui amet ut.', 'Quis ea sint eius. Laborum dolorem suscipit qui amet laborum in et. Iusto unde et et doloribus nihil et excepturi. Architecto cupiditate quis quaerat est sint omnis.', 'Ducimus inventore eos quam pariatur. Delectus minima quo dolores quibusdam quas.', 'posts\\August2018\\OVs8Np4rE32aSZHdKMxb.jpg', 'sapiente', 'Aut officia laboriosam rerum rerum. Molestiae nemo consequatur quaerat ad accusantium error adipisci. Sed eos ipsum natus exercitationem et non.', NULL, 'PUBLISHED', 0, '1979-05-27 02:32:01', '2018-08-05 07:15:13', 'assumenda', NULL, 'Deleniti ea perferendis aspernatur quo modi. Corporis natus inventore id. Atque doloremque possimus sit expedita numquam.'),
(25, 1, 1, 'Quis ad iste accusamus ', 'Rerum vel aut repudiandae fuga tempore laudantium.', 'Quis totam est nihil dolor a. Iure error dolor repellendus qui ipsam. Iste nihil dolore totam quae. Id quibusdam quos minima repellendus vero velit.', 'Architecto voluptatibus qui rem nobis ipsa. Laborum et adipisci dolorem quo aut qui molestias. Perspiciatis est dolores omnis ex natus quia consequatur. Rerum aut ullam ut est et.', 'posts\\August2018\\qc28kxEfBL7WG4zieyuu.jpg', 'harum', 'Sint eos tenetur incidunt recusandae enim voluptatem. Ut rerum aut distinctio id mollitia voluptates aut. Natus temporibus nulla vitae eos explicabo ut. Quidem molestiae cum eum fugiat aut sunt quibusdam vero.', NULL, 'PUBLISHED', 0, '2012-04-27 18:24:42', '2018-08-05 06:54:09', 'sequi', NULL, 'Voluptas repellat animi recusandae quia quia esse sit. Excepturi dolor dolores dolorem est accusantium. Voluptas blanditiis aut in consequatur minima. Voluptates deserunt impedit possimus repudiandae et aut doloribus esse.'),
(26, 1, 1, 'Consequatur sapiente impedit ', 'Nam et vitae quae quaerat quasi aliquam eum.', 'Id a odio soluta consequuntur. Reiciendis tempore aut iure id laboriosam odit. Qui dolores non laborum earum perferendis. Error repudiandae quod suscipit similique praesentium dolor veniam.', 'Dignissimos sit ea dolores alias et. Ut sit nesciunt qui sint qui id. Quam temporibus laudantium labore ipsam occaecati repellat eos. Officia enim consectetur et qui eos velit omnis.', 'posts\\August2018\\JmQhj9Mwyoct8guowXR0.jpg', 'voluptatem', 'Aperiam aut molestiae veniam non illo non. Nihil saepe possimus accusantium error aut. Velit voluptas ut aut sint quia.', NULL, 'PUBLISHED', 0, '2009-03-28 19:28:22', '2018-08-05 22:51:43', 'atque', NULL, 'Reprehenderit eos quod officiis voluptates quibusdam at amet sint. Maxime illum ut voluptas voluptatem molestias quam. Nobis ipsam fugiat magni tempora qui quia. Accusantium aut deleniti suscipit tenetur magnam.'),
(27, 1, 1, 'Ex eum ipsum cupiditate ', 'Ea iure quo ducimus eum repellendus et explicabo.', 'Ea maxime id doloribus officiis magni. Ut et ad numquam. Reiciendis mollitia aliquid est dolores delectus dignissimos recusandae natus. Commodi molestias eum nostrum minima aut aliquam eum.', 'Et reprehenderit voluptatem id voluptatibus dolorem. Ea ad ut a et corporis et omnis aut. Nemo nulla reiciendis ea debitis vel. Iusto corporis dolorem iusto adipisci officiis corporis. Sint delectus saepe tempore aut ab ducimus voluptatibus vel.', 'posts\\August2018\\L4oQvqA95sxVI6BzEJTR.jpg', 'accusamus', 'Nisi quis dolores tempora necessitatibus quis voluptatum. Magnam qui voluptatibus modi officiis et.', NULL, 'PUBLISHED', 0, '1985-08-19 02:29:44', '2018-08-05 07:13:49', 'maiores', NULL, 'Temporibus incidunt eum rerum molestiae sunt non. Facilis rerum non nihil voluptate voluptas illum.'),
(28, 1, 1, 'Non illo enim dignissimos ', 'Eum enim deleniti sequi ratione.', 'Sunt rerum porro sed sunt. Eius iusto enim enim vero reprehenderit omnis corporis repellat. Est sit odit est placeat velit. Velit atque sapiente natus temporibus.', 'Neque nesciunt asperiores voluptas quia dolorem. Tempora est vero eius. Sed culpa temporibus nihil occaecati.', 'posts\\August2018\\nLznQ89C0zMav46lt1Qm.jpg', 'dolorem', 'Aut debitis accusantium enim voluptatibus. Laudantium sed impedit nemo enim. Officiis pariatur odit recusandae. Quaerat ut eum distinctio voluptatem.', NULL, 'PUBLISHED', 0, '2010-07-26 22:00:54', '2018-08-05 06:54:34', 'laboriosam', NULL, 'Deserunt esse aperiam non porro. Et eum eum voluptatem sit porro autem. Quisquam non quidem natus ut consequuntur est praesentium.'),
(29, 1, 1, 'Enim ut tenetur placeat.', 'Commodi delectus sint veniam voluptas debitis qui.', 'Quod dolores quisquam esse sunt. Cupiditate pariatur quisquam et dignissimos. Exercitationem sint inventore eum et adipisci inventore itaque tempore.', 'Rerum unde perspiciatis repellat. Corrupti quaerat officia illo voluptatum ad. Ea aut modi perferendis temporibus dolore animi nisi. Sit voluptas quasi qui consequatur ea dolores quasi dolorum.', 'posts\\August2018\\pSgiXBuX5EIr4lzGVqEw.jpg', 'libero', 'Deserunt ea qui odit aut accusantium quo. Id ut molestiae ipsam quia fuga nostrum. Placeat ea in aliquam.', NULL, 'PUBLISHED', 0, '2017-07-06 06:47:52', '2018-08-05 06:53:38', 'aliquid', NULL, 'Eius voluptate voluptate sed ab autem eligendi. Sed necessitatibus et voluptatum repudiandae ut.'),
(30, 1, 1, 'Consequuntur debitis ', 'Aliquam aut et quo ex minus qui.', 'Tempore facilis eaque unde ex soluta molestiae. Expedita quia voluptatem aliquam qui dolore quidem. Aliquam rem est occaecati hic. Perspiciatis dolore earum ullam expedita.', 'Labore inventore nam culpa necessitatibus blanditiis ea earum. Voluptatem amet magni sint pariatur dolorem. Officia qui est nisi similique ut eos distinctio. Est soluta impedit fugit molestiae temporibus qui aperiam enim.', 'posts\\August2018\\cIxUodPt9MC5h03mG8oq.jpg', 'eaque', 'Cumque et consequuntur voluptas. Consequatur consequatur eos ipsam ratione mollitia aliquam eum. Quod aut est dolorem inventore aliquid.', NULL, 'PUBLISHED', 0, '2009-04-14 07:48:34', '2018-08-05 06:54:51', 'delectus', NULL, 'Natus cum alias voluptatem voluptatem et autem sit eos. Doloremque sed quia eos doloribus vel eum consequatur. Est ut ea quibusdam sunt laboriosam iusto.');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-08-04 15:09:32', '2018-08-04 15:09:32'),
(2, 'user', 'Normal User', '2018-08-04 15:09:32', '2018-08-04 15:09:32');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Image Ark', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempor, augue eu efficitur placerat, nunc justo varius urna, quis elementum urna arcu id augue. Pellentesque risus mi, efficitur vel ex vitae, aliquam faucibus massa. Donec maximus dolor vitae odio porttitor, sed sagittis lorem tincidunt.', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\August2018\\R5eAg1foZbCcxegCF10h.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.home_bg', 'Homepage Image', 'settings\\August2018\\GkkM42bx6S2HnhPYQreK.jpg', NULL, 'image', 6, 'Site'),
(12, 'site.about_bg', 'Aboutpage Image', 'settings\\August2018\\TfTZqo1Dev0qTOjXmVeT.png', NULL, 'image', 7, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-08-04 15:09:33', '2018-08-04 15:09:33'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-08-04 15:09:33', '2018-08-04 15:09:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$btCeYX0Sp2U8i8fhl5UvdeYvYjcvj9.E4ChHPY9COaBIb22ZqCB2e', 'pXobfeCgzDiAeeSyLInvXZ2Lz7lco3hmaybzynkm5k8T4TYYcQRNHnHK7yci', NULL, '2018-08-04 15:09:33', '2018-08-04 15:09:33');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

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
