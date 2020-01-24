-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 24, 2020 at 10:45 AM
-- Server version: 5.7.24
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-01-15 10:18:25', '2020-01-15 09:18:25', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Compostion', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'vincent.bouton.dev@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=60&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:40:\"acf-image-crop-add-on/acf-image-crop.php\";i:1;s:41:\"acf-to-rest-api/class-acf-to-rest-api.php\";i:2;s:34:\"advanced-custom-fields-pro/acf.php\";i:3;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:74:\"C:\\MAMP\\htdocs\\wordpress/wp-content/plugins/advanced-custom-fields/acf.php\";i:1;s:60:\"C:\\MAMP\\htdocs\\wordpress/wp-content/themes/Project/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'cms-composition/templatebecode', 'yes'),
(41, 'stylesheet', 'cms-composition/templatebecode', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:20:\"À propos de ce site\";s:4:\"text\";s:99:\"C’est peut-être le bon endroit pour vous présenter et votre site ou insérer quelques crédits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:14:\"Retrouvez-nous\";s:4:\"text\";s:189:\"<strong>Adresse</strong>\nAvenue des Champs-Élysées\n75008, Paris\n\n<strong>Heures d’ouverture</strong>\nDu lundi au vendredi : 9h00&ndash;17h00\nLes samedi et dimanche : 11h00&ndash;15h00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;i:4;a:4:{s:5:\"title\";s:20:\"À propos de ce site\";s:4:\"text\";s:99:\"C’est peut-être le bon endroit pour vous présenter et votre site ou insérer quelques crédits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:14:\"Retrouvez-nous\";s:4:\"text\";s:189:\"<strong>Adresse</strong>\nAvenue des Champs-Élysées\n75008, Paris\n\n<strong>Heures d’ouverture</strong>\nDu lundi au vendredi : 9h00&ndash;17h00\nLes samedi et dimanche : 11h00&ndash;15h00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Brussels', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '60', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1594631904', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'fr_BE', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:6:\"text-4\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-5\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:6:{i:1579861107;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1579900707;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1579943906;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579943916;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579943917;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'theme_mods_twentytwenty', 'a:9:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:2;s:8:\"expanded\";i:3;s:6:\"social\";i:4;}s:16:\"background_color\";s:6:\"ffffff\";s:30:\"header_footer_background_color\";s:7:\"#0a0a0a\";s:17:\"accent_hue_active\";s:6:\"custom\";s:10:\"accent_hue\";i:0;s:12:\"blog_content\";s:4:\"full\";s:24:\"accent_accessible_colors\";a:2:{s:7:\"content\";a:5:{s:4:\"text\";s:7:\"#000000\";s:6:\"accent\";s:7:\"#ee0606\";s:10:\"background\";s:7:\"#ffffff\";s:7:\"borders\";s:7:\"#dbdbdb\";s:9:\"secondary\";s:7:\"#6d6d6d\";}s:13:\"header-footer\";a:5:{s:4:\"text\";s:7:\"#ffffff\";s:6:\"accent\";s:7:\"#f00e0e\";s:10:\"background\";s:7:\"#0a0a0a\";s:7:\"borders\";s:7:\"#2b2b2b\";s:9:\"secondary\";s:7:\"#828282\";}}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1579605026;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:6:\"text-4\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-5\";}}}}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(123, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"fr_BE\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1579857550;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(124, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1579854157;s:7:\"checked\";a:6:{s:7:\"Project\";s:0:\"\";s:30:\"cms-composition/templatebecode\";s:5:\"alpha\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(143, 'can_compress_scripts', '1', 'no'),
(149, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(183, 'theme_mods_Project', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1579769957;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:6:\"text-4\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-5\";}}}}', 'yes'),
(184, 'theme_switch_menu_locations', '', 'yes'),
(185, 'current_theme', 'templatebecode', 'yes'),
(186, 'theme_switched', '', 'yes'),
(187, 'theme_switched_via_customizer', '', 'yes'),
(188, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(191, 'recently_activated', 'a:1:{s:29:\"acf-extended/acf-extended.php\";i:1579605751;}', 'yes'),
(199, 'acf_version', '5.8.7', 'yes'),
(206, '_site_transient_timeout_browser_09f454857cbf37627aacee60db0bd6fc', '1580371272', 'no'),
(207, '_site_transient_browser_09f454857cbf37627aacee60db0bd6fc', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"79.0.3945.117\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(208, '_site_transient_timeout_php_check_d1959de4b7de84f195ea226c4728f095', '1580371272', 'no'),
(209, '_site_transient_php_check_d1959de4b7de84f195ea226c4728f095', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(225, 'theme_mods_cms-composition/templatebecode', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:14:\"new custom nav\";i:5;}}', 'yes'),
(233, '_transient_timeout_plugin_slugs', '1579940564', 'no'),
(234, '_transient_plugin_slugs', 'a:7:{i:0;s:41:\"acf-to-rest-api/class-acf-to-rest-api.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:29:\"acf-extended/acf-extended.php\";i:3;s:40:\"acf-image-crop-add-on/acf-image-crop.php\";i:4;s:34:\"advanced-custom-fields-pro/acf.php\";i:5;s:19:\"akismet/akismet.php\";i:6;s:9:\"hello.php\";}', 'no'),
(244, '_transient_timeout_acf_plugin_info_pro', '1579878574', 'no'),
(245, '_transient_acf_plugin_info_pro', 'a:18:{s:4:\"name\";s:26:\"Advanced Custom Fields PRO\";s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:7:\"version\";s:5:\"5.8.7\";s:8:\"homepage\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"author\";s:64:\"<a href=\"https://www.advancedcustomfields.com\">Elliot Condon</a>\";s:12:\"contributors\";a:1:{s:12:\"elliotcondon\";a:3:{s:7:\"profile\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"avatar\";s:81:\"https://secure.gravatar.com/avatar/c296f449f92233e8d1102ff01c9bc71e?s=96&d=mm&r=g\";s:12:\"display_name\";s:22:\"Advanced Custom Fields\";}}s:8:\"requires\";s:5:\"4.7.0\";s:12:\"requires_php\";s:3:\"5.4\";s:6:\"tested\";s:5:\"5.3.0\";s:5:\"added\";s:10:\"2014-07-11\";s:12:\"last_updated\";s:10:\"2019-11-12\";s:11:\"description\";s:1349:\"<p>Use the Advanced Custom Fields plugin to take full control of your WordPress edit screens & custom field data.</p>\n\n<p><strong>Add fields on demand.</strong> Our field builder allows you to quickly and easily add fields to WP edit screens with only the click of a few buttons!</p>\n\n<p><strong>Add them anywhere.</strong> Fields can be added all over WP including posts, users, taxonomy terms, media, comments and even custom options pages!</p>\n\n<p><strong>Show them everywhere.</strong> Load and display your custom field values in any theme template file with our hassle free developer friendly functions!</p>\n\n<h4>Features</h4>\n<ul>\n<li>Simple & Intuitive</li>\n<li>Powerful Functions</li>\n<li>Over 30 Field Types</li>\n<li>Extensive Documentation</li>\n<li>Millions of Users</li>\n</ul>\n\n<h4>Links</h4>\n<ul>\n<li><a href=\"https://www.advancedcustomfields.com\">Website</a></li>\n<li><a href=\"https://www.advancedcustomfields.com/resources/\">Documentation</a></li>\n<li><a href=\"https://support.advancedcustomfields.com\">Support</a></li>\n<li><a href=\"https://www.advancedcustomfields.com/pro/\">ACF PRO</a></li>\n</ul>\n\n<h4>PRO</h4>\n<p>The Advanced Custom Fields plugin is also available in a professional version which includes more fields, more functionality, and more flexibility! <a href=\"https://www.advancedcustomfields.com/pro/\">Learn more</a></p>\";s:12:\"installation\";s:503:\"<p>From your WordPress dashboard</p>\n\n<ol>\n<li><strong>Visit</strong> Plugins > Add New</li>\n<li><strong>Search</strong> for \"Advanced Custom Fields\"</li>\n<li><strong>Activate</strong> Advanced Custom Fields from your Plugins page</li>\n<li><strong>Click</strong> on the new menu item \"Custom Fields\" and create your first Custom Field Group!</li>\n<li><strong>Read</strong> the documentation to <a href=\"https://www.advancedcustomfields.com/resources/getting-started-with-acf/\">get started</a></li>\n</ol>\";s:9:\"changelog\";s:2005:\"<h4>5.8.7</h4>\n<p><em>Release Date - 12 November 2019</em></p>\n\n<ul>\n<li>New - Updated admin CSS for new WordPress 5.3 styling.</li>\n<li>Fix - Fixed various issues affecting dynamic metaboxes in the block editor (requires WordPress 5.3)</li>\n<li>Fix - Fixed performance issue when checking network sites for upgrades.</li>\n<li>Fix - Fixed Select2 clones appearing after duplicating a Relationship field.</li>\n<li>Tweak - Repeater field \"Add row\" icons will now hide when maximum rows are reached.</li>\n<li>Tweak - Removed ACF Blocks keyword limit for later versions of Gutenberg.</li>\n</ul>\n\n<h4>5.8.6</h4>\n<p><em>Release Date - 24 October 2019</em></p>\n\n<ul>\n<li>New - Added more data to Google Maps field value including place_id, street_name, country and more.</li>\n<li>Fix - Fixed bug in Gallery field incorrectly displaying .pdf attachments as icons.</li>\n<li>Fix - Fixed bug in Checkbox field missing \"selected\" class after \"Toggle All\".</li>\n<li>Dev - Added compatibility for Attachments in the Post Taxonomy location rule.</li>\n<li>Dev - Added missing return statement from <code>acf_get_form()</code> function.</li>\n<li>Dev - Added \"google_map_result\" JS filter.</li>\n</ul>\n\n<h4>5.8.5</h4>\n<p><em>Release Date - 8 October 2019</em></p>\n\n<ul>\n<li>New - Added new choice \"Add\" to the User Form location rule.</li>\n<li>New - Optimized <code>acf_form()</code> logic when used in combination with <code>acf_register_form()</code>.</li>\n<li>Fix - Fixed bug causing incorrect field order after sync.</li>\n<li>Fix - Fixed bug reverting the first field type to Text in Firefox version 69.0.1.</li>\n<li>Fix - Fixed bug causing tinymce issues when changing between block modes.</li>\n<li>Fix - Fixed bug preventing block registration when category does not exist.</li>\n<li>Fix - Fixed bug preventing block registration when no icon is declared.</li>\n<li>Dev - Added RegExp compatibility for innerBlocks.</li>\n</ul>\n\n<p><a href=\"https://www.advancedcustomfields.com/changelog/\">View the full changelog</a></p>\";s:14:\"upgrade_notice\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"versions\";a:104:{i:0;s:5:\"5.8.6\";i:1;s:5:\"5.8.5\";i:2;s:5:\"5.8.4\";i:3;s:5:\"5.8.3\";i:4;s:5:\"5.8.2\";i:5;s:5:\"5.8.1\";i:6;s:13:\"5.8.0-beta4.1\";i:7;s:11:\"5.8.0-beta4\";i:8;s:11:\"5.8.0-beta3\";i:9;s:11:\"5.8.0-beta2\";i:10;s:11:\"5.8.0-beta1\";i:11;s:9:\"5.8.0-RC2\";i:12;s:9:\"5.8.0-RC1\";i:13;s:5:\"5.8.0\";i:14;s:5:\"5.7.9\";i:15;s:5:\"5.7.8\";i:16;s:5:\"5.7.7\";i:17;s:5:\"5.7.6\";i:18;s:5:\"5.7.5\";i:19;s:5:\"5.7.4\";i:20;s:5:\"5.7.3\";i:21;s:5:\"5.7.2\";i:22;s:6:\"5.7.13\";i:23;s:6:\"5.7.12\";i:24;s:6:\"5.7.10\";i:25;s:5:\"5.7.1\";i:26;s:5:\"5.7.0\";i:27;s:5:\"5.6.9\";i:28;s:5:\"5.6.8\";i:29;s:5:\"5.6.7\";i:30;s:5:\"5.6.6\";i:31;s:5:\"5.6.5\";i:32;s:5:\"5.6.4\";i:33;s:5:\"5.6.3\";i:34;s:5:\"5.6.2\";i:35;s:6:\"5.6.10\";i:36;s:5:\"5.6.1\";i:37;s:11:\"5.6.0-beta2\";i:38;s:11:\"5.6.0-beta1\";i:39;s:9:\"5.6.0-RC2\";i:40;s:9:\"5.6.0-RC1\";i:41;s:5:\"5.6.0\";i:42;s:5:\"5.5.9\";i:43;s:5:\"5.5.7\";i:44;s:5:\"5.5.5\";i:45;s:5:\"5.5.3\";i:46;s:5:\"5.5.2\";i:47;s:6:\"5.5.14\";i:48;s:6:\"5.5.13\";i:49;s:6:\"5.5.12\";i:50;s:6:\"5.5.11\";i:51;s:6:\"5.5.10\";i:52;s:5:\"5.5.1\";i:53;s:5:\"5.5.0\";i:54;s:5:\"5.4.8\";i:55;s:5:\"5.4.7\";i:56;s:5:\"5.4.6\";i:57;s:5:\"5.4.5\";i:58;s:5:\"5.4.4\";i:59;s:5:\"5.4.3\";i:60;s:5:\"5.4.2\";i:61;s:5:\"5.4.1\";i:62;s:5:\"5.4.0\";i:63;s:5:\"5.3.9\";i:64;s:5:\"5.3.8\";i:65;s:5:\"5.3.7\";i:66;s:5:\"5.3.6\";i:67;s:5:\"5.3.5\";i:68;s:5:\"5.3.4\";i:69;s:5:\"5.3.3\";i:70;s:5:\"5.3.2\";i:71;s:6:\"5.3.10\";i:72;s:5:\"5.3.1\";i:73;s:5:\"5.3.0\";i:74;s:5:\"5.2.9\";i:75;s:5:\"5.2.8\";i:76;s:5:\"5.2.7\";i:77;s:5:\"5.2.6\";i:78;s:5:\"5.2.5\";i:79;s:5:\"5.2.4\";i:80;s:5:\"5.2.3\";i:81;s:5:\"5.2.2\";i:82;s:5:\"5.2.1\";i:83;s:5:\"5.2.0\";i:84;s:5:\"5.1.9\";i:85;s:5:\"5.1.8\";i:86;s:5:\"5.1.7\";i:87;s:5:\"5.1.6\";i:88;s:5:\"5.1.5\";i:89;s:5:\"5.1.4\";i:90;s:5:\"5.1.3\";i:91;s:5:\"5.1.2\";i:92;s:5:\"5.1.1\";i:93;s:5:\"5.1.0\";i:94;s:5:\"5.0.9\";i:95;s:5:\"5.0.8\";i:96;s:5:\"5.0.7\";i:97;s:5:\"5.0.6\";i:98;s:5:\"5.0.5\";i:99;s:5:\"5.0.4\";i:100;s:5:\"5.0.3\";i:101;s:5:\"5.0.2\";i:102;s:5:\"5.0.1\";i:103;s:5:\"5.0.0\";}}', 'no'),
(246, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5T1RBd09ESjhkSGx3WlQxa1pYWmxiRzl3WlhKOFpHRjBaVDB5TURFMkxUQTVMVEl3SURJeE9qSTBPakF6IjtzOjM6InVybCI7czoyNjoiaHR0cDovL2xvY2FsaG9zdC93b3JkcHJlc3MiO30=', 'yes'),
(247, '_transient_timeout_acf_plugin_updates', '1579965097', 'no'),
(248, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.7\";}}', 'no'),
(258, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1579864918', 'no'),
(259, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4659;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3875;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2657;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2537;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1950;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1788;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1770;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1479;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1465;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1458;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1446;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1406;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1380;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1297;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1169;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1158;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1117;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1084;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1082;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:977;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:864;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:864;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:856;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:838;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:779;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:756;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:752;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:748;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:739;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:730;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:711;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:696;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:692;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:689;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:674;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:658;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:641;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:640;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:632;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:625;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:623;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:610;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:581;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:577;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:572;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:569;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:568;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:550;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:541;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:540;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:538;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:533;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:527;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:526;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:526;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:516;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:508;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:492;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:491;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:491;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:484;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:483;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:474;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:470;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:463;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:457;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:436;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:435;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:429;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:428;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:423;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:420;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:420;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:418;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:414;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:410;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:407;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:400;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:391;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:389;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:389;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:383;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:376;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:375;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:373;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:373;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:368;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:364;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:359;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:354;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:350;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:343;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:334;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:333;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:330;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:329;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:324;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:322;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:321;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:320;}}', 'no'),
(263, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1579854163;s:7:\"checked\";a:7:{s:41:\"acf-to-rest-api/class-acf-to-rest-api.php\";s:5:\"3.1.0\";s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:29:\"acf-extended/acf-extended.php\";s:7:\"0.8.3.1\";s:40:\"acf-image-crop-add-on/acf-image-crop.php\";s:6:\"1.4.12\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.7\";s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:41:\"acf-to-rest-api/class-acf-to-rest-api.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/acf-to-rest-api\";s:4:\"slug\";s:15:\"acf-to-rest-api\";s:6:\"plugin\";s:41:\"acf-to-rest-api/class-acf-to-rest-api.php\";s:11:\"new_version\";s:5:\"3.1.0\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/acf-to-rest-api/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/acf-to-rest-api.3.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/acf-to-rest-api/assets/icon-256x256.jpg?rev=1752896\";s:2:\"1x\";s:68:\"https://ps.w.org/acf-to-rest-api/assets/icon-128x128.jpg?rev=1752896\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/acf-to-rest-api/assets/banner-1544x500.jpg?rev=1752896\";s:2:\"1x\";s:70:\"https://ps.w.org/acf-to-rest-api/assets/banner-772x250.jpg?rev=1752896\";}s:11:\"banners_rtl\";a:0:{}}s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"acf-extended/acf-extended.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/acf-extended\";s:4:\"slug\";s:12:\"acf-extended\";s:6:\"plugin\";s:29:\"acf-extended/acf-extended.php\";s:11:\"new_version\";s:7:\"0.8.3.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/acf-extended/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/acf-extended.0.8.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/acf-extended/assets/icon-256x256.png?rev=2071550\";s:2:\"1x\";s:65:\"https://ps.w.org/acf-extended/assets/icon-128x128.png?rev=2071550\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/acf-extended/assets/banner-1544x500.png?rev=2071550\";s:2:\"1x\";s:67:\"https://ps.w.org/acf-extended/assets/banner-772x250.png?rev=2071550\";}s:11:\"banners_rtl\";a:0:{}}s:40:\"acf-image-crop-add-on/acf-image-crop.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/acf-image-crop-add-on\";s:4:\"slug\";s:21:\"acf-image-crop-add-on\";s:6:\"plugin\";s:40:\"acf-image-crop-add-on/acf-image-crop.php\";s:11:\"new_version\";s:6:\"1.4.12\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/acf-image-crop-add-on/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/acf-image-crop-add-on.1.4.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/acf-image-crop-add-on/assets/icon-256x256.png?rev=1127065\";s:2:\"1x\";s:74:\"https://ps.w.org/acf-image-crop-add-on/assets/icon-256x256.png?rev=1127065\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/acf-image-crop-add-on/assets/banner-1544x500.png?rev=1128753\";s:2:\"1x\";s:76:\"https://ps.w.org/acf-image-crop-add-on/assets/banner-772x250.png?rev=1128753\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(266, '_site_transient_timeout_theme_roots', '1579859350', 'no'),
(267, '_site_transient_theme_roots', 'a:7:{s:10:\"MYNEWTHEME\";s:7:\"/themes\";s:7:\"Project\";s:7:\"/themes\";s:30:\"cms-composition/templatebecode\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(16, 11, '_wp_attached_file', '2020/01/2020-landscape-1-1.png'),
(17, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:769;s:4:\"file\";s:30:\"2020/01/2020-landscape-1-1.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"2020-landscape-1-1-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"2020-landscape-1-1-1024x656.png\";s:5:\"width\";i:1024;s:6:\"height\";i:656;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"2020-landscape-1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"2020-landscape-1-1-768x492.png\";s:5:\"width\";i:768;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(18, 11, '_starter_content_theme', 'twentytwenty'),
(20, 12, '_thumbnail_id', '11'),
(22, 12, '_customize_changeset_uuid', '1e82f601-b1f0-4d15-833f-40eb3618775b'),
(24, 13, '_customize_changeset_uuid', '1e82f601-b1f0-4d15-833f-40eb3618775b'),
(26, 14, '_customize_changeset_uuid', '1e82f601-b1f0-4d15-833f-40eb3618775b'),
(28, 15, '_customize_changeset_uuid', '1e82f601-b1f0-4d15-833f-40eb3618775b'),
(29, 16, '_edit_lock', '1579080421:1'),
(134, 16, '_wp_trash_meta_status', 'publish'),
(135, 16, '_wp_trash_meta_time', '1579080428'),
(141, 12, '_edit_lock', '1579604890:1'),
(142, 39, '_edit_lock', '1579602269:1'),
(143, 40, '_edit_lock', '1579603472:1'),
(144, 51, '_wp_trash_meta_status', 'publish'),
(145, 51, '_wp_trash_meta_time', '1579605026'),
(146, 52, '_edit_lock', '1579605160:1'),
(155, 52, '_wp_trash_meta_status', 'publish'),
(156, 52, '_wp_trash_meta_time', '1579605182'),
(157, 54, '_wp_trash_meta_status', 'publish'),
(158, 54, '_wp_trash_meta_time', '1579605215'),
(159, 12, '_wp_trash_meta_status', 'publish'),
(160, 12, '_wp_trash_meta_time', '1579605225'),
(161, 12, '_wp_desired_post_slug', 'the-new-umoma-opens-its-doors-2'),
(162, 3, '_wp_trash_meta_status', 'draft'),
(163, 3, '_wp_trash_meta_time', '1579605227'),
(164, 3, '_wp_desired_post_slug', 'privacy-policy'),
(165, 40, '_wp_trash_meta_status', 'private'),
(166, 40, '_wp_trash_meta_time', '1579605231'),
(167, 40, '_wp_desired_post_slug', '40-2'),
(168, 56, '_edit_lock', '1579605108:1'),
(169, 57, '_edit_lock', '1579605120:1'),
(170, 58, '_edit_lock', '1579605140:1'),
(171, 59, '_edit_lock', '1579605161:1'),
(173, 60, '_customize_changeset_uuid', '787159fd-67a8-44e5-a7bd-014b59fef22b'),
(175, 61, '_customize_changeset_uuid', '787159fd-67a8-44e5-a7bd-014b59fef22b'),
(176, 62, '_wp_trash_meta_status', 'publish'),
(177, 62, '_wp_trash_meta_time', '1579605330'),
(178, 65, '_edit_lock', '1579605195:1'),
(179, 2, '_wp_trash_meta_status', 'publish'),
(180, 2, '_wp_trash_meta_time', '1579605385'),
(181, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(183, 67, '_customize_changeset_uuid', 'c00551e5-e251-4fff-a75b-c8bbb67febb2'),
(184, 68, '_wp_trash_meta_status', 'publish'),
(185, 68, '_wp_trash_meta_time', '1579605412'),
(186, 67, '_edit_lock', '1579766351:1'),
(187, 70, '_edit_last', '1'),
(188, 70, '_edit_lock', '1579859029:1'),
(189, 75, '_wp_attached_file', '2020/01/archi-image.jpg'),
(190, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1850;s:6:\"height\";i:1200;s:4:\"file\";s:23:\"2020/01/archi-image.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"archi-image-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"archi-image-1024x664.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:664;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"archi-image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"archi-image-768x498.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:498;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:24:\"archi-image-1536x996.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:996;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(191, 76, '_wp_attached_file', '2020/01/archi-image-2.jpg'),
(192, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1850;s:6:\"height\";i:1200;s:4:\"file\";s:25:\"2020/01/archi-image-2.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"archi-image-2-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"archi-image-2-1024x664.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:664;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"archi-image-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"archi-image-2-768x498.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:498;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:26:\"archi-image-2-1536x996.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:996;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(193, 77, '_wp_attached_file', '2020/01/archi-image-3.jpg'),
(194, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1300;s:4:\"file\";s:25:\"2020/01/archi-image-3.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"archi-image-3-231x300.jpg\";s:5:\"width\";i:231;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"archi-image-3-788x1024.jpg\";s:5:\"width\";i:788;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"archi-image-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"archi-image-3-768x998.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:998;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(195, 78, '_wp_attached_file', '2020/01/archi-image-4-scaled.jpg'),
(196, 78, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:689;s:4:\"file\";s:32:\"2020/01/archi-image-4-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"archi-image-4-300x81.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:81;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"archi-image-4-1024x276.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"archi-image-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"archi-image-4-768x207.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:26:\"archi-image-4-1536x414.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:414;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:26:\"archi-image-4-2048x551.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:551;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:17:\"archi-image-4.jpg\";}'),
(197, 1, '_edit_lock', '1579618247:1'),
(198, 79, '_edit_lock', '1579766469:1'),
(199, 79, '_customize_restore_dismissed', '1'),
(200, 81, '_wp_trash_meta_status', 'publish'),
(201, 81, '_wp_trash_meta_time', '1579769957'),
(202, 60, '_edit_lock', '1579856258:1'),
(203, 13, '_wp_trash_meta_status', 'publish'),
(204, 13, '_wp_trash_meta_time', '1579779107'),
(205, 13, '_wp_desired_post_slug', 'a-propos-de'),
(206, 67, '_wp_trash_meta_status', 'publish'),
(207, 67, '_wp_trash_meta_time', '1579779109'),
(208, 67, '_wp_desired_post_slug', 'architecture-dinterieur'),
(209, 15, '_wp_trash_meta_status', 'publish'),
(210, 15, '_wp_trash_meta_time', '1579779112'),
(211, 15, '_wp_desired_post_slug', 'blog'),
(212, 14, '_wp_trash_meta_status', 'publish'),
(213, 14, '_wp_trash_meta_time', '1579779113'),
(214, 14, '_wp_desired_post_slug', 'contact'),
(215, 61, '_wp_trash_meta_status', 'publish'),
(216, 61, '_wp_trash_meta_time', '1579779116'),
(217, 61, '_wp_desired_post_slug', 'magasin'),
(218, 94, '_edit_lock', '1579858883:1'),
(219, 94, '_edit_last', '1'),
(220, 94, '_wp_page_template', 'archi.php'),
(221, 108, '_edit_last', '1'),
(222, 108, '_edit_lock', '1579857221:1'),
(223, 131, '_wp_attached_file', '2020/01/Home-image-1.jpg'),
(224, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1250;s:4:\"file\";s:24:\"2020/01/Home-image-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Home-image-1-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"Home-image-1-1024x853.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:853;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Home-image-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Home-image-1-768x640.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(225, 132, '_wp_attached_file', '2020/01/Home-image-2.jpg'),
(226, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1250;s:4:\"file\";s:24:\"2020/01/Home-image-2.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Home-image-2-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"Home-image-2-1024x853.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:853;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Home-image-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Home-image-2-768x640.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(227, 60, '_edit_last', '1'),
(228, 60, '_wp_page_template', 'front-page.php'),
(229, 60, 'bandeau_img', '131'),
(230, 60, '_bandeau_img', 'field_5e29a72c7aaa6'),
(231, 60, 'bandeau_titre', 'Architecte d\'intérieur'),
(232, 60, '_bandeau_titre', 'field_5e29b1167fd37'),
(233, 60, 'bandeau_hover_titre', ''),
(234, 60, '_bandeau_hover_titre', 'field_5e29ac647aaa9'),
(235, 60, 'bandeau_hover_texte', ''),
(236, 60, '_bandeau_hover_texte', 'field_5e29ac7d7aaaa'),
(237, 60, 'bandeau_hover_lien_interne', ''),
(238, 60, '_bandeau_hover_lien_interne', 'field_5e29acb07aaab'),
(239, 60, 'bandeau_hover', ''),
(240, 60, '_bandeau_hover', 'field_5e29a74f7aaa8'),
(241, 60, 'bandeau', ''),
(242, 60, '_bandeau', 'field_5e29a6eb7aaa4'),
(243, 60, 'intro_texte', 'Demandez du caractère,\r\ndes marques exclusives,\r\ndes conseils,\r\nde la personnalisation !'),
(244, 60, '_intro_texte', 'field_5e29ad3dd585f'),
(245, 60, 'intro_titre', 'Des idées fraiches pour chaque pièce de la maison ?'),
(246, 60, '_intro_titre', 'field_5e29ad4bd5860'),
(247, 60, 'intro_wysiwyg', 'La scénographie de notre magasin est conçue pour vous inspirer. Tous les meubles, luminaires et tissus sont présentés dans des ambiances tantôt cottage, moderne, classique ou design.\r\n\r\nNous proposons également des services d’architecte d’intérieur en combinaison avec l’achat de mobilier ainsi que du garnissage et de la tapisserie d’ameublement.'),
(248, 60, '_intro_wysiwyg', 'field_5e29ad53d5861'),
(249, 60, 'intro_lien_interne', 'a:3:{s:5:\"title\";s:10:\"Le Magasin\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(250, 60, '_intro_lien_interne', 'field_5e29ad61d5862'),
(251, 60, 'intro_img', '144'),
(252, 60, '_intro_img', 'field_5e29ad71d5863'),
(253, 60, 'intro', ''),
(254, 60, '_intro', 'field_5e29ad1f7aaad'),
(255, 60, 'milieu_texte', '\r\nFormes, couleurs, matières : vous avez envie de changement et vous ne savez pas par où commencer pour créer un intérieur original ?'),
(256, 60, '_milieu_texte', 'field_5e29ada7a21ba'),
(257, 60, 'milieu_lien_interne', 'a:3:{s:5:\"title\";s:27:\"Services d\'archi intérieur\";s:3:\"url\";s:33:\"http://localhost/wordpress/archi/\";s:6:\"target\";s:0:\"\";}'),
(258, 60, '_milieu_lien_interne', 'field_5e29adbaa21bb'),
(259, 60, 'milieu', ''),
(260, 60, '_milieu', 'field_5e29ad8ad5864'),
(261, 60, 'tissus_img', '76'),
(262, 60, '_tissus_img', 'field_5e29adeba21bd'),
(263, 60, 'tissus_titre', 'Tissus et habillage maison'),
(264, 60, '_tissus_titre', 'field_5e29adf0a21be'),
(265, 60, 'tissus_wysiwyg', 'Les tissus font bien plus que d’habiller, ils créent des nuances ou des contrastes, et répondent au mobilier de la pièce. Ils augmentent les possibilités de personnalisation et facilitent certaines associations.\r\n\r\nDécouvrez des centaines d’échantillons dans notre espace tissus et habillage de la maison. Nous réalisons également la confection de rideaux et le recouvrement de meubles, fauteuils et canapés.'),
(266, 60, '_tissus_wysiwyg', 'field_5e29ae0aa21bf'),
(267, 60, 'tissus_lien_interne', 'a:3:{s:5:\"title\";s:24:\"Tapisserie d\'ameublement\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(268, 60, '_tissus_lien_interne', 'field_5e29ae18a21c0'),
(269, 60, 'tissus', ''),
(270, 60, '_tissus', 'field_5e29addaa21bc'),
(271, 133, 'bandeau_img', '132'),
(272, 133, '_bandeau_img', 'field_5e29a72c7aaa6'),
(273, 133, 'bandeau_titre', ''),
(274, 133, '_bandeau_titre', 'field_5e29a73d7aaa7'),
(275, 133, 'bandeau_hover_titre', ''),
(276, 133, '_bandeau_hover_titre', 'field_5e29ac647aaa9'),
(277, 133, 'bandeau_hover_texte', ''),
(278, 133, '_bandeau_hover_texte', 'field_5e29ac7d7aaaa'),
(279, 133, 'bandeau_hover_lien_interne', ''),
(280, 133, '_bandeau_hover_lien_interne', 'field_5e29acb07aaab'),
(281, 133, 'bandeau_hover', ''),
(282, 133, '_bandeau_hover', 'field_5e29a74f7aaa8'),
(283, 133, 'bandeau', ''),
(284, 133, '_bandeau', 'field_5e29a6eb7aaa4'),
(285, 133, 'intro_texte', ''),
(286, 133, '_intro_texte', 'field_5e29ad3dd585f'),
(287, 133, 'intro_titre', ''),
(288, 133, '_intro_titre', 'field_5e29ad4bd5860'),
(289, 133, 'intro_wysiwyg', ''),
(290, 133, '_intro_wysiwyg', 'field_5e29ad53d5861'),
(291, 133, 'intro_lien_interne', ''),
(292, 133, '_intro_lien_interne', 'field_5e29ad61d5862'),
(293, 133, 'intro_img', ''),
(294, 133, '_intro_img', 'field_5e29ad71d5863'),
(295, 133, 'intro', ''),
(296, 133, '_intro', 'field_5e29ad1f7aaad'),
(297, 133, 'milieu_texte', ''),
(298, 133, '_milieu_texte', 'field_5e29ada7a21ba'),
(299, 133, 'milieu_lien_interne', ''),
(300, 133, '_milieu_lien_interne', 'field_5e29adbaa21bb'),
(301, 133, 'milieu', ''),
(302, 133, '_milieu', 'field_5e29ad8ad5864'),
(303, 133, 'tissus_img', ''),
(304, 133, '_tissus_img', 'field_5e29adeba21bd'),
(305, 133, 'tissus_titre', ''),
(306, 133, '_tissus_titre', 'field_5e29adf0a21be'),
(307, 133, 'tissus_wysiwyg', ''),
(308, 133, '_tissus_wysiwyg', 'field_5e29ae0aa21bf'),
(309, 133, 'tissus_lien_interne', ''),
(310, 133, '_tissus_lien_interne', 'field_5e29ae18a21c0'),
(311, 133, 'tissus', ''),
(312, 133, '_tissus', 'field_5e29addaa21bc'),
(313, 135, 'bandeau_img', '132'),
(314, 135, '_bandeau_img', 'field_5e29a72c7aaa6'),
(315, 135, 'bandeau_titre', 'Architecte d\'intérieur'),
(316, 135, '_bandeau_titre', 'field_5e29b1167fd37'),
(317, 135, 'bandeau_hover_titre', ''),
(318, 135, '_bandeau_hover_titre', 'field_5e29ac647aaa9'),
(319, 135, 'bandeau_hover_texte', ''),
(320, 135, '_bandeau_hover_texte', 'field_5e29ac7d7aaaa'),
(321, 135, 'bandeau_hover_lien_interne', ''),
(322, 135, '_bandeau_hover_lien_interne', 'field_5e29acb07aaab'),
(323, 135, 'bandeau_hover', ''),
(324, 135, '_bandeau_hover', 'field_5e29a74f7aaa8'),
(325, 135, 'bandeau', ''),
(326, 135, '_bandeau', 'field_5e29a6eb7aaa4'),
(327, 135, 'intro_texte', ''),
(328, 135, '_intro_texte', 'field_5e29ad3dd585f'),
(329, 135, 'intro_titre', ''),
(330, 135, '_intro_titre', 'field_5e29ad4bd5860'),
(331, 135, 'intro_wysiwyg', ''),
(332, 135, '_intro_wysiwyg', 'field_5e29ad53d5861'),
(333, 135, 'intro_lien_interne', ''),
(334, 135, '_intro_lien_interne', 'field_5e29ad61d5862'),
(335, 135, 'intro_img', ''),
(336, 135, '_intro_img', 'field_5e29ad71d5863'),
(337, 135, 'intro', ''),
(338, 135, '_intro', 'field_5e29ad1f7aaad'),
(339, 135, 'milieu_texte', ''),
(340, 135, '_milieu_texte', 'field_5e29ada7a21ba'),
(341, 135, 'milieu_lien_interne', ''),
(342, 135, '_milieu_lien_interne', 'field_5e29adbaa21bb'),
(343, 135, 'milieu', ''),
(344, 135, '_milieu', 'field_5e29ad8ad5864'),
(345, 135, 'tissus_img', ''),
(346, 135, '_tissus_img', 'field_5e29adeba21bd'),
(347, 135, 'tissus_titre', ''),
(348, 135, '_tissus_titre', 'field_5e29adf0a21be'),
(349, 135, 'tissus_wysiwyg', ''),
(350, 135, '_tissus_wysiwyg', 'field_5e29ae0aa21bf'),
(351, 135, 'tissus_lien_interne', ''),
(352, 135, '_tissus_lien_interne', 'field_5e29ae18a21c0'),
(353, 135, 'tissus', ''),
(354, 135, '_tissus', 'field_5e29addaa21bc'),
(355, 136, 'bandeau_img', '132'),
(356, 136, '_bandeau_img', 'field_5e29a72c7aaa6'),
(357, 136, 'bandeau_titre', 'Architecte d\'intérieur'),
(358, 136, '_bandeau_titre', 'field_5e29b1167fd37'),
(359, 136, 'bandeau_hover_titre', ''),
(360, 136, '_bandeau_hover_titre', 'field_5e29ac647aaa9'),
(361, 136, 'bandeau_hover_texte', ''),
(362, 136, '_bandeau_hover_texte', 'field_5e29ac7d7aaaa'),
(363, 136, 'bandeau_hover_lien_interne', ''),
(364, 136, '_bandeau_hover_lien_interne', 'field_5e29acb07aaab'),
(365, 136, 'bandeau_hover', ''),
(366, 136, '_bandeau_hover', 'field_5e29a74f7aaa8'),
(367, 136, 'bandeau', ''),
(368, 136, '_bandeau', 'field_5e29a6eb7aaa4'),
(369, 136, 'intro_texte', ''),
(370, 136, '_intro_texte', 'field_5e29ad3dd585f'),
(371, 136, 'intro_titre', ''),
(372, 136, '_intro_titre', 'field_5e29ad4bd5860'),
(373, 136, 'intro_wysiwyg', ''),
(374, 136, '_intro_wysiwyg', 'field_5e29ad53d5861'),
(375, 136, 'intro_lien_interne', ''),
(376, 136, '_intro_lien_interne', 'field_5e29ad61d5862'),
(377, 136, 'intro_img', ''),
(378, 136, '_intro_img', 'field_5e29ad71d5863'),
(379, 136, 'intro', ''),
(380, 136, '_intro', 'field_5e29ad1f7aaad'),
(381, 136, 'milieu_texte', ''),
(382, 136, '_milieu_texte', 'field_5e29ada7a21ba'),
(383, 136, 'milieu_lien_interne', ''),
(384, 136, '_milieu_lien_interne', 'field_5e29adbaa21bb'),
(385, 136, 'milieu', ''),
(386, 136, '_milieu', 'field_5e29ad8ad5864'),
(387, 136, 'tissus_img', ''),
(388, 136, '_tissus_img', 'field_5e29adeba21bd'),
(389, 136, 'tissus_titre', ''),
(390, 136, '_tissus_titre', 'field_5e29adf0a21be'),
(391, 136, 'tissus_wysiwyg', ''),
(392, 136, '_tissus_wysiwyg', 'field_5e29ae0aa21bf'),
(393, 136, 'tissus_lien_interne', ''),
(394, 136, '_tissus_lien_interne', 'field_5e29ae18a21c0'),
(395, 136, 'tissus', ''),
(396, 136, '_tissus', 'field_5e29addaa21bc'),
(397, 137, 'bandeau_img', '131'),
(398, 137, '_bandeau_img', 'field_5e29a72c7aaa6'),
(399, 137, 'bandeau_titre', 'Architecte d\'intérieur'),
(400, 137, '_bandeau_titre', 'field_5e29b1167fd37'),
(401, 137, 'bandeau_hover_titre', ''),
(402, 137, '_bandeau_hover_titre', 'field_5e29ac647aaa9'),
(403, 137, 'bandeau_hover_texte', ''),
(404, 137, '_bandeau_hover_texte', 'field_5e29ac7d7aaaa'),
(405, 137, 'bandeau_hover_lien_interne', ''),
(406, 137, '_bandeau_hover_lien_interne', 'field_5e29acb07aaab'),
(407, 137, 'bandeau_hover', ''),
(408, 137, '_bandeau_hover', 'field_5e29a74f7aaa8'),
(409, 137, 'bandeau', ''),
(410, 137, '_bandeau', 'field_5e29a6eb7aaa4'),
(411, 137, 'intro_texte', ''),
(412, 137, '_intro_texte', 'field_5e29ad3dd585f'),
(413, 137, 'intro_titre', ''),
(414, 137, '_intro_titre', 'field_5e29ad4bd5860'),
(415, 137, 'intro_wysiwyg', ''),
(416, 137, '_intro_wysiwyg', 'field_5e29ad53d5861'),
(417, 137, 'intro_lien_interne', ''),
(418, 137, '_intro_lien_interne', 'field_5e29ad61d5862'),
(419, 137, 'intro_img', ''),
(420, 137, '_intro_img', 'field_5e29ad71d5863'),
(421, 137, 'intro', ''),
(422, 137, '_intro', 'field_5e29ad1f7aaad'),
(423, 137, 'milieu_texte', ''),
(424, 137, '_milieu_texte', 'field_5e29ada7a21ba'),
(425, 137, 'milieu_lien_interne', ''),
(426, 137, '_milieu_lien_interne', 'field_5e29adbaa21bb'),
(427, 137, 'milieu', ''),
(428, 137, '_milieu', 'field_5e29ad8ad5864'),
(429, 137, 'tissus_img', ''),
(430, 137, '_tissus_img', 'field_5e29adeba21bd'),
(431, 137, 'tissus_titre', ''),
(432, 137, '_tissus_titre', 'field_5e29adf0a21be'),
(433, 137, 'tissus_wysiwyg', ''),
(434, 137, '_tissus_wysiwyg', 'field_5e29ae0aa21bf'),
(435, 137, 'tissus_lien_interne', ''),
(436, 137, '_tissus_lien_interne', 'field_5e29ae18a21c0'),
(437, 137, 'tissus', ''),
(438, 137, '_tissus', 'field_5e29addaa21bc'),
(439, 60, 'bandeau_img-1', '131'),
(440, 60, '_bandeau_img-1', 'field_5e29a7227aaa5'),
(441, 60, 'bandeau_img-2', '132'),
(442, 60, '_bandeau_img-2', 'field_5e29a72c7aaa6'),
(443, 60, 'bandeau_titre-1', 'Meubles contemporains'),
(444, 60, '_bandeau_titre-1', 'field_5e29a73d7aaa7'),
(445, 60, 'bandeau_titre-2', 'Architecte d\'intérieur'),
(446, 60, '_bandeau_titre-2', 'field_5e29b1167fd37'),
(447, 60, 'bandeau_hover-1_titre', 'De l’inspiration dans tous les coins'),
(448, 60, '_bandeau_hover-1_titre', 'field_5e29ac647aaa9'),
(449, 60, 'bandeau_hover-1_texte', 'Voyagez dans un espace découpé en zones thématiques, entre des marques mondialement renommées, des designers exclusifs et des créateurs belges. '),
(450, 60, '_bandeau_hover-1_texte', 'field_5e29ac7d7aaaa'),
(451, 60, 'bandeau_hover-1_lien_interne', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(452, 60, '_bandeau_hover-1_lien_interne', 'field_5e29acb07aaab'),
(453, 60, 'bandeau_hover-1', ''),
(454, 60, '_bandeau_hover-1', 'field_5e29a74f7aaa8'),
(455, 60, 'bandeau_hover-2_titre', 'Des idées fraiches pour votre maison ?'),
(456, 60, '_bandeau_hover-2_titre', 'field_5e29b22641437'),
(457, 60, 'bandeau_hover-2_texte', 'Formes, couleurs, matières : vous avez envie de changement et vous ne savez pas par où commencer pour créer un intérieur original ? '),
(458, 60, '_bandeau_hover-2_texte', 'field_5e29b22641438'),
(459, 60, 'bandeau_hover-2_lien_interne', ''),
(460, 60, '_bandeau_hover-2_lien_interne', 'field_5e29b22641439'),
(461, 60, 'bandeau_hover-2', ''),
(462, 60, '_bandeau_hover-2', 'field_5e29b22641436'),
(463, 142, 'bandeau_img', '131'),
(464, 142, '_bandeau_img', 'field_5e29a72c7aaa6'),
(465, 142, 'bandeau_titre', 'Architecte d\'intérieur'),
(466, 142, '_bandeau_titre', 'field_5e29b1167fd37'),
(467, 142, 'bandeau_hover_titre', ''),
(468, 142, '_bandeau_hover_titre', 'field_5e29ac647aaa9'),
(469, 142, 'bandeau_hover_texte', ''),
(470, 142, '_bandeau_hover_texte', 'field_5e29ac7d7aaaa'),
(471, 142, 'bandeau_hover_lien_interne', ''),
(472, 142, '_bandeau_hover_lien_interne', 'field_5e29acb07aaab'),
(473, 142, 'bandeau_hover', ''),
(474, 142, '_bandeau_hover', 'field_5e29a74f7aaa8'),
(475, 142, 'bandeau', ''),
(476, 142, '_bandeau', 'field_5e29a6eb7aaa4'),
(477, 142, 'intro_texte', ''),
(478, 142, '_intro_texte', 'field_5e29ad3dd585f'),
(479, 142, 'intro_titre', ''),
(480, 142, '_intro_titre', 'field_5e29ad4bd5860'),
(481, 142, 'intro_wysiwyg', ''),
(482, 142, '_intro_wysiwyg', 'field_5e29ad53d5861'),
(483, 142, 'intro_lien_interne', ''),
(484, 142, '_intro_lien_interne', 'field_5e29ad61d5862'),
(485, 142, 'intro_img', ''),
(486, 142, '_intro_img', 'field_5e29ad71d5863'),
(487, 142, 'intro', ''),
(488, 142, '_intro', 'field_5e29ad1f7aaad'),
(489, 142, 'milieu_texte', ''),
(490, 142, '_milieu_texte', 'field_5e29ada7a21ba'),
(491, 142, 'milieu_lien_interne', ''),
(492, 142, '_milieu_lien_interne', 'field_5e29adbaa21bb'),
(493, 142, 'milieu', ''),
(494, 142, '_milieu', 'field_5e29ad8ad5864'),
(495, 142, 'tissus_img', ''),
(496, 142, '_tissus_img', 'field_5e29adeba21bd'),
(497, 142, 'tissus_titre', ''),
(498, 142, '_tissus_titre', 'field_5e29adf0a21be'),
(499, 142, 'tissus_wysiwyg', ''),
(500, 142, '_tissus_wysiwyg', 'field_5e29ae0aa21bf'),
(501, 142, 'tissus_lien_interne', ''),
(502, 142, '_tissus_lien_interne', 'field_5e29ae18a21c0'),
(503, 142, 'tissus', ''),
(504, 142, '_tissus', 'field_5e29addaa21bc'),
(505, 142, 'bandeau_img-1', '131'),
(506, 142, '_bandeau_img-1', 'field_5e29a7227aaa5'),
(507, 142, 'bandeau_img-2', '132'),
(508, 142, '_bandeau_img-2', 'field_5e29a72c7aaa6'),
(509, 142, 'bandeau_titre-1', 'Meubles contemporains'),
(510, 142, '_bandeau_titre-1', 'field_5e29a73d7aaa7'),
(511, 142, 'bandeau_titre-2', 'Architecte d\'intérieur'),
(512, 142, '_bandeau_titre-2', 'field_5e29b1167fd37'),
(513, 142, 'bandeau_hover-1_titre', ''),
(514, 142, '_bandeau_hover-1_titre', 'field_5e29ac647aaa9'),
(515, 142, 'bandeau_hover-1_texte', ''),
(516, 142, '_bandeau_hover-1_texte', 'field_5e29ac7d7aaaa'),
(517, 142, 'bandeau_hover-1_lien_interne', ''),
(518, 142, '_bandeau_hover-1_lien_interne', 'field_5e29acb07aaab'),
(519, 142, 'bandeau_hover-1', ''),
(520, 142, '_bandeau_hover-1', 'field_5e29a74f7aaa8'),
(521, 142, 'bandeau_hover-2_titre', ''),
(522, 142, '_bandeau_hover-2_titre', 'field_5e29b22641437'),
(523, 142, 'bandeau_hover-2_texte', ''),
(524, 142, '_bandeau_hover-2_texte', 'field_5e29b22641438'),
(525, 142, 'bandeau_hover-2_lien_interne', ''),
(526, 142, '_bandeau_hover-2_lien_interne', 'field_5e29b22641439'),
(527, 142, 'bandeau_hover-2', ''),
(528, 142, '_bandeau_hover-2', 'field_5e29b22641436'),
(529, 143, 'bandeau_img', '131'),
(530, 143, '_bandeau_img', 'field_5e29a72c7aaa6'),
(531, 143, 'bandeau_titre', 'Architecte d\'intérieur'),
(532, 143, '_bandeau_titre', 'field_5e29b1167fd37'),
(533, 143, 'bandeau_hover_titre', ''),
(534, 143, '_bandeau_hover_titre', 'field_5e29ac647aaa9'),
(535, 143, 'bandeau_hover_texte', ''),
(536, 143, '_bandeau_hover_texte', 'field_5e29ac7d7aaaa'),
(537, 143, 'bandeau_hover_lien_interne', ''),
(538, 143, '_bandeau_hover_lien_interne', 'field_5e29acb07aaab'),
(539, 143, 'bandeau_hover', ''),
(540, 143, '_bandeau_hover', 'field_5e29a74f7aaa8'),
(541, 143, 'bandeau', ''),
(542, 143, '_bandeau', 'field_5e29a6eb7aaa4'),
(543, 143, 'intro_texte', ''),
(544, 143, '_intro_texte', 'field_5e29ad3dd585f'),
(545, 143, 'intro_titre', ''),
(546, 143, '_intro_titre', 'field_5e29ad4bd5860'),
(547, 143, 'intro_wysiwyg', ''),
(548, 143, '_intro_wysiwyg', 'field_5e29ad53d5861'),
(549, 143, 'intro_lien_interne', ''),
(550, 143, '_intro_lien_interne', 'field_5e29ad61d5862'),
(551, 143, 'intro_img', ''),
(552, 143, '_intro_img', 'field_5e29ad71d5863'),
(553, 143, 'intro', ''),
(554, 143, '_intro', 'field_5e29ad1f7aaad'),
(555, 143, 'milieu_texte', ''),
(556, 143, '_milieu_texte', 'field_5e29ada7a21ba'),
(557, 143, 'milieu_lien_interne', ''),
(558, 143, '_milieu_lien_interne', 'field_5e29adbaa21bb'),
(559, 143, 'milieu', ''),
(560, 143, '_milieu', 'field_5e29ad8ad5864'),
(561, 143, 'tissus_img', ''),
(562, 143, '_tissus_img', 'field_5e29adeba21bd'),
(563, 143, 'tissus_titre', ''),
(564, 143, '_tissus_titre', 'field_5e29adf0a21be'),
(565, 143, 'tissus_wysiwyg', ''),
(566, 143, '_tissus_wysiwyg', 'field_5e29ae0aa21bf'),
(567, 143, 'tissus_lien_interne', ''),
(568, 143, '_tissus_lien_interne', 'field_5e29ae18a21c0'),
(569, 143, 'tissus', ''),
(570, 143, '_tissus', 'field_5e29addaa21bc'),
(571, 143, 'bandeau_img-1', '131'),
(572, 143, '_bandeau_img-1', 'field_5e29a7227aaa5'),
(573, 143, 'bandeau_img-2', '132'),
(574, 143, '_bandeau_img-2', 'field_5e29a72c7aaa6'),
(575, 143, 'bandeau_titre-1', 'Meubles contemporains'),
(576, 143, '_bandeau_titre-1', 'field_5e29a73d7aaa7'),
(577, 143, 'bandeau_titre-2', 'Architecte d\'intérieur'),
(578, 143, '_bandeau_titre-2', 'field_5e29b1167fd37'),
(579, 143, 'bandeau_hover-1_titre', 'De l’inspiration dans tous les coins'),
(580, 143, '_bandeau_hover-1_titre', 'field_5e29ac647aaa9'),
(581, 143, 'bandeau_hover-1_texte', 'Voyagez dans un espace découpé en zones thématiques, entre des marques mondialement renommées, des designers exclusifs et des créateurs belges. '),
(582, 143, '_bandeau_hover-1_texte', 'field_5e29ac7d7aaaa'),
(583, 143, 'bandeau_hover-1_lien_interne', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(584, 143, '_bandeau_hover-1_lien_interne', 'field_5e29acb07aaab'),
(585, 143, 'bandeau_hover-1', ''),
(586, 143, '_bandeau_hover-1', 'field_5e29a74f7aaa8'),
(587, 143, 'bandeau_hover-2_titre', 'Des idées fraiches pour votre maison ?'),
(588, 143, '_bandeau_hover-2_titre', 'field_5e29b22641437'),
(589, 143, 'bandeau_hover-2_texte', 'Formes, couleurs, matières : vous avez envie de changement et vous ne savez pas par où commencer pour créer un intérieur original ? '),
(590, 143, '_bandeau_hover-2_texte', 'field_5e29b22641438'),
(591, 143, 'bandeau_hover-2_lien_interne', ''),
(592, 143, '_bandeau_hover-2_lien_interne', 'field_5e29b22641439'),
(593, 143, 'bandeau_hover-2', ''),
(594, 143, '_bandeau_hover-2', 'field_5e29b22641436'),
(595, 144, '_wp_attached_file', '2020/01/Home-image-3.jpg'),
(596, 144, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1600;s:4:\"file\";s:24:\"2020/01/Home-image-3.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Home-image-3-188x300.jpg\";s:5:\"width\";i:188;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"Home-image-3-640x1024.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Home-image-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Home-image-3-768x1229.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1229;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"Home-image-3-960x1536.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(597, 145, 'bandeau_img', '131'),
(598, 145, '_bandeau_img', 'field_5e29a72c7aaa6'),
(599, 145, 'bandeau_titre', 'Architecte d\'intérieur'),
(600, 145, '_bandeau_titre', 'field_5e29b1167fd37'),
(601, 145, 'bandeau_hover_titre', ''),
(602, 145, '_bandeau_hover_titre', 'field_5e29ac647aaa9'),
(603, 145, 'bandeau_hover_texte', ''),
(604, 145, '_bandeau_hover_texte', 'field_5e29ac7d7aaaa'),
(605, 145, 'bandeau_hover_lien_interne', ''),
(606, 145, '_bandeau_hover_lien_interne', 'field_5e29acb07aaab'),
(607, 145, 'bandeau_hover', ''),
(608, 145, '_bandeau_hover', 'field_5e29a74f7aaa8'),
(609, 145, 'bandeau', ''),
(610, 145, '_bandeau', 'field_5e29a6eb7aaa4'),
(611, 145, 'intro_texte', 'Demandez du caractère,\r\ndes marques exclusives,\r\ndes conseils,\r\nde la personnalisation !'),
(612, 145, '_intro_texte', 'field_5e29ad3dd585f'),
(613, 145, 'intro_titre', 'Des idées fraiches pour chaque pièce de la maison ?'),
(614, 145, '_intro_titre', 'field_5e29ad4bd5860'),
(615, 145, 'intro_wysiwyg', 'La scénographie de notre magasin est conçue pour vous inspirer. Tous les meubles, luminaires et tissus sont présentés dans des ambiances tantôt cottage, moderne, classique ou design.\r\n\r\nNous proposons également des services d’architecte d’intérieur en combinaison avec l’achat de mobilier ainsi que du garnissage et de la tapisserie d’ameublement.'),
(616, 145, '_intro_wysiwyg', 'field_5e29ad53d5861'),
(617, 145, 'intro_lien_interne', 'a:3:{s:5:\"title\";s:10:\"Le Magasin\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(618, 145, '_intro_lien_interne', 'field_5e29ad61d5862'),
(619, 145, 'intro_img', '144'),
(620, 145, '_intro_img', 'field_5e29ad71d5863'),
(621, 145, 'intro', ''),
(622, 145, '_intro', 'field_5e29ad1f7aaad'),
(623, 145, 'milieu_texte', '\r\nFormes, couleurs, matières : vous avez envie de changement et vous ne savez pas par où commencer pour créer un intérieur original ?'),
(624, 145, '_milieu_texte', 'field_5e29ada7a21ba'),
(625, 145, 'milieu_lien_interne', 'a:3:{s:5:\"title\";s:27:\"Services d\'archi intérieur\";s:3:\"url\";s:33:\"http://localhost/wordpress/archi/\";s:6:\"target\";s:0:\"\";}'),
(626, 145, '_milieu_lien_interne', 'field_5e29adbaa21bb'),
(627, 145, 'milieu', ''),
(628, 145, '_milieu', 'field_5e29ad8ad5864'),
(629, 145, 'tissus_img', '76'),
(630, 145, '_tissus_img', 'field_5e29adeba21bd'),
(631, 145, 'tissus_titre', 'Tissus et habillage maison'),
(632, 145, '_tissus_titre', 'field_5e29adf0a21be'),
(633, 145, 'tissus_wysiwyg', 'Les tissus font bien plus que d’habiller, ils créent des nuances ou des contrastes, et répondent au mobilier de la pièce. Ils augmentent les possibilités de personnalisation et facilitent certaines associations.\r\n\r\nDécouvrez des centaines d’échantillons dans notre espace tissus et habillage de la maison. Nous réalisons également la confection de rideaux et le recouvrement de meubles, fauteuils et canapés.'),
(634, 145, '_tissus_wysiwyg', 'field_5e29ae0aa21bf'),
(635, 145, 'tissus_lien_interne', 'a:3:{s:5:\"title\";s:24:\"Tapisserie d\'ameublement\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(636, 145, '_tissus_lien_interne', 'field_5e29ae18a21c0'),
(637, 145, 'tissus', ''),
(638, 145, '_tissus', 'field_5e29addaa21bc'),
(639, 145, 'bandeau_img-1', '131'),
(640, 145, '_bandeau_img-1', 'field_5e29a7227aaa5'),
(641, 145, 'bandeau_img-2', '132'),
(642, 145, '_bandeau_img-2', 'field_5e29a72c7aaa6'),
(643, 145, 'bandeau_titre-1', 'Meubles contemporains'),
(644, 145, '_bandeau_titre-1', 'field_5e29a73d7aaa7'),
(645, 145, 'bandeau_titre-2', 'Architecte d\'intérieur'),
(646, 145, '_bandeau_titre-2', 'field_5e29b1167fd37'),
(647, 145, 'bandeau_hover-1_titre', 'De l’inspiration dans tous les coins'),
(648, 145, '_bandeau_hover-1_titre', 'field_5e29ac647aaa9'),
(649, 145, 'bandeau_hover-1_texte', 'Voyagez dans un espace découpé en zones thématiques, entre des marques mondialement renommées, des designers exclusifs et des créateurs belges. '),
(650, 145, '_bandeau_hover-1_texte', 'field_5e29ac7d7aaaa'),
(651, 145, 'bandeau_hover-1_lien_interne', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(652, 145, '_bandeau_hover-1_lien_interne', 'field_5e29acb07aaab'),
(653, 145, 'bandeau_hover-1', ''),
(654, 145, '_bandeau_hover-1', 'field_5e29a74f7aaa8'),
(655, 145, 'bandeau_hover-2_titre', 'Des idées fraiches pour votre maison ?'),
(656, 145, '_bandeau_hover-2_titre', 'field_5e29b22641437'),
(657, 145, 'bandeau_hover-2_texte', 'Formes, couleurs, matières : vous avez envie de changement et vous ne savez pas par où commencer pour créer un intérieur original ? '),
(658, 145, '_bandeau_hover-2_texte', 'field_5e29b22641438'),
(659, 145, 'bandeau_hover-2_lien_interne', ''),
(660, 145, '_bandeau_hover-2_lien_interne', 'field_5e29b22641439'),
(661, 145, 'bandeau_hover-2', ''),
(662, 145, '_bandeau_hover-2', 'field_5e29b22641436'),
(681, 149, '_menu_item_type', 'post_type'),
(682, 149, '_menu_item_menu_item_parent', '0'),
(683, 149, '_menu_item_object_id', '60'),
(684, 149, '_menu_item_object', 'page'),
(685, 149, '_menu_item_target', ''),
(686, 149, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(687, 149, '_menu_item_xfn', ''),
(688, 149, '_menu_item_url', ''),
(690, 150, '_menu_item_type', 'post_type'),
(691, 150, '_menu_item_menu_item_parent', '0'),
(692, 150, '_menu_item_object_id', '94'),
(693, 150, '_menu_item_object', 'page'),
(694, 150, '_menu_item_target', ''),
(695, 150, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(696, 150, '_menu_item_xfn', ''),
(697, 150, '_menu_item_url', ''),
(699, 94, 'diaporama_posts_projets_titre', 'Prendre soin de votre schéma de vie'),
(700, 94, '_diaporama_posts_projets_titre', 'field_5e2980ee2105c'),
(701, 94, 'diaporama_posts_projets_img', '{\"original_image\":\"75\",\"cropped_image\":\"75\"}'),
(702, 94, '_diaporama_posts_projets_img', 'field_5e2980ff2105d'),
(703, 94, 'diaporama_posts_projets_intro', ''),
(704, 94, '_diaporama_posts_projets_intro', 'field_5e29810f2105e'),
(705, 94, 'diaporama_posts_projets_flexibles_titre', ''),
(706, 94, '_diaporama_posts_projets_flexibles_titre', 'field_5e29812f21060'),
(707, 94, 'diaporama_posts_projets_flexibles_img', ''),
(708, 94, '_diaporama_posts_projets_flexibles_img', 'field_5e29813a21061'),
(709, 94, 'diaporama_posts_projets_flexibles_wysiwyg', ''),
(710, 94, '_diaporama_posts_projets_flexibles_wysiwyg', 'field_5e29814c21062'),
(711, 94, 'diaporama_posts_projets_flexibles', ''),
(712, 94, '_diaporama_posts_projets_flexibles', 'field_5e29811b2105f'),
(713, 94, 'diaporama_posts_projets', ''),
(714, 94, '_diaporama_posts_projets', 'field_5e2980ba21059'),
(715, 94, 'diaporama', ''),
(716, 94, '_diaporama', 'field_5e297e467f9f9'),
(717, 94, 'etude_darchi_titre', '150 € l’étude d’archi'),
(718, 94, '_etude_darchi_titre', 'field_5e29a09b364b1'),
(719, 94, 'etude_darchi_ss-titre', 'Plutôt une bonne affaire, non?'),
(720, 94, '_etude_darchi_ss-titre', 'field_5e29a0a5364b2'),
(721, 94, 'etude_darchi_wysiwyg', 'Offrez-vous une étude complète d’architecte d’intérieur dès lors que vous êtes intéressés par du mobilier de notre magasin.\r\n\r\n<strong>Pour 150 € au lieu de 1100 €, vous recevez un projet de réaménagement complet d’une pièce ou de l’ensemble de votre maison.</strong>'),
(722, 94, '_etude_darchi_wysiwyg', 'field_5e29a0bb364b3'),
(723, 94, 'etude_darchi_repeater_0_texte', 'Nous vous aidons à définir une ambiance et à décrire l’espace :'),
(724, 94, '_etude_darchi_repeater_0_texte', 'field_5e29a4984364b'),
(725, 94, 'etude_darchi_repeater_1_texte', 'Schémas de circulation'),
(726, 94, '_etude_darchi_repeater_1_texte', 'field_5e29a4984364b'),
(727, 94, 'etude_darchi_repeater_2_texte', 'Habillage des fenêtres'),
(728, 94, '_etude_darchi_repeater_2_texte', 'field_5e29a4984364b'),
(729, 94, 'etude_darchi_repeater_3_texte', 'Habillage des murs'),
(730, 94, '_etude_darchi_repeater_3_texte', 'field_5e29a4984364b'),
(731, 94, 'etude_darchi_repeater_4_texte', 'Conseil en couleurs (peintures, tapisserie, etc.)'),
(732, 94, '_etude_darchi_repeater_4_texte', 'field_5e29a4984364b'),
(733, 94, 'etude_darchi_repeater_5_texte', 'Réintégration de vieux mobilier'),
(734, 94, '_etude_darchi_repeater_5_texte', 'field_5e29a4984364b'),
(735, 94, 'etude_darchi_repeater', '6'),
(736, 94, '_etude_darchi_repeater', 'field_5e29a0cc364b4'),
(737, 94, 'etude_darchi', ''),
(738, 94, '_etude_darchi', 'field_5e297ea321058'),
(739, 94, 'nghi_&_stephan_titre', 'Nghi & Stephan'),
(740, 94, '_nghi_&_stephan_titre', 'field_5e29a10bb23fa'),
(741, 94, 'nghi_&_stephan_ss-titre', 'Architecte d’intérieur et designer'),
(742, 94, '_nghi_&_stephan_ss-titre', 'field_5e29a111b23fb'),
(743, 94, 'nghi_&_stephan_wysiwyg', 'Elle est architecte d’intérieur, lui designer. Elle associe, il compose, elle colore, il meuble, elle illumine, il décore. Depuis tant d’années qu’ils travaillent ensemble, Nghi et Stéphan savent comment rendre réels les besoins et les envies des clients.\r\n\r\nChaque projet d’architecture d’intérieur commence par une écoute et une visite qui servent à dessiner les contours d’un cahier des charges et qui déjà servent d’inspiration.\r\n\r\nLes propositions de tissus et d’ameublement qui sont ensuite présentées aux clients ajoutent élégance et originalité tout en respectant leur première intuition.\r\n\r\nIl y a trois réponses possibles au design : oui, non et wow. Nous travaillons toujours pour cette dernière.'),
(744, 94, '_nghi_&_stephan_wysiwyg', 'field_5e29a11eb23fc'),
(745, 94, 'nghi_&_stephan', ''),
(746, 94, '_nghi_&_stephan', 'field_5e29a0f2b23f8'),
(747, 94, 'tissus_et_artisanat_repeater_0_img', '76'),
(748, 94, '_tissus_et_artisanat_repeater_0_img', 'field_5e29a4b64364c'),
(749, 94, 'tissus_et_artisanat_repeater', '1'),
(750, 94, '_tissus_et_artisanat_repeater', 'field_5e29a15000566'),
(751, 94, 'tissus_et_artisanat_titre', 'Tissus et artisanat'),
(752, 94, '_tissus_et_artisanat_titre', 'field_5e2ab78e78323'),
(753, 94, 'tissus_et_artisanat_ss-titre', 'Habillage de meubles et de fenêtres'),
(754, 94, '_tissus_et_artisanat_ss-titre', 'field_5e2ab79878324'),
(755, 94, 'tissus_et_artisanat_wysiwyg', 'Ajoutez un brin de tissus dans vos intérieurs et changez toute une ambiance : l’esthétique, la mise en valeur de mobilier ou d’éléments d’architecture, la réverbération du son, de la lumière, etc.\r\n\r\n&nbsp;\r\n\r\nNous avons un choix formidable de tissus à vous présenter et à assortir entre eux : Diaz, etc.'),
(756, 94, '_tissus_et_artisanat_wysiwyg', 'field_5e2ab7a078325'),
(757, 94, 'tissus_et_artisanat', ''),
(758, 94, '_tissus_et_artisanat', 'field_5e29a13b00565'),
(759, 154, 'diaporama_posts_projets_titre', 'Prendre soin de votre schéma de vie'),
(760, 154, '_diaporama_posts_projets_titre', 'field_5e2980ee2105c'),
(761, 154, 'diaporama_posts_projets_img', '{\"original_image\":\"75\",\"cropped_image\":\"75\"}'),
(762, 154, '_diaporama_posts_projets_img', 'field_5e2980ff2105d'),
(763, 154, 'diaporama_posts_projets_intro', ''),
(764, 154, '_diaporama_posts_projets_intro', 'field_5e29810f2105e'),
(765, 154, 'diaporama_posts_projets_flexibles_titre', ''),
(766, 154, '_diaporama_posts_projets_flexibles_titre', 'field_5e29812f21060'),
(767, 154, 'diaporama_posts_projets_flexibles_img', ''),
(768, 154, '_diaporama_posts_projets_flexibles_img', 'field_5e29813a21061'),
(769, 154, 'diaporama_posts_projets_flexibles_wysiwyg', ''),
(770, 154, '_diaporama_posts_projets_flexibles_wysiwyg', 'field_5e29814c21062'),
(771, 154, 'diaporama_posts_projets_flexibles', ''),
(772, 154, '_diaporama_posts_projets_flexibles', 'field_5e29811b2105f'),
(773, 154, 'diaporama_posts_projets', ''),
(774, 154, '_diaporama_posts_projets', 'field_5e2980ba21059'),
(775, 154, 'diaporama', ''),
(776, 154, '_diaporama', 'field_5e297e467f9f9'),
(777, 154, 'etude_darchi_titre', '150 € l’étude d’archi'),
(778, 154, '_etude_darchi_titre', 'field_5e29a09b364b1'),
(779, 154, 'etude_darchi_ss-titre', 'Plutôt une bonne affaire, non?'),
(780, 154, '_etude_darchi_ss-titre', 'field_5e29a0a5364b2'),
(781, 154, 'etude_darchi_wysiwyg', 'Offrez-vous une étude complète d’architecte d’intérieur dès lors que vous êtes intéressés par du mobilier de notre magasin.\r\n\r\n<strong>Pour 150 € au lieu de 1100 €, vous recevez un projet de réaménagement complet d’une pièce ou de l’ensemble de votre maison.</strong>'),
(782, 154, '_etude_darchi_wysiwyg', 'field_5e29a0bb364b3'),
(783, 154, 'etude_darchi_repeater_0_texte', 'Nous vous aidons à définir une ambiance et à décrire l’espace :'),
(784, 154, '_etude_darchi_repeater_0_texte', 'field_5e29a4984364b'),
(785, 154, 'etude_darchi_repeater_1_texte', 'Schémas de circulation'),
(786, 154, '_etude_darchi_repeater_1_texte', 'field_5e29a4984364b'),
(787, 154, 'etude_darchi_repeater_2_texte', 'Habillage des fenêtres'),
(788, 154, '_etude_darchi_repeater_2_texte', 'field_5e29a4984364b'),
(789, 154, 'etude_darchi_repeater_3_texte', 'Habillage des murs'),
(790, 154, '_etude_darchi_repeater_3_texte', 'field_5e29a4984364b'),
(791, 154, 'etude_darchi_repeater_4_texte', 'Conseil en couleurs (peintures, tapisserie, etc.)'),
(792, 154, '_etude_darchi_repeater_4_texte', 'field_5e29a4984364b'),
(793, 154, 'etude_darchi_repeater_5_texte', 'Réintégration de vieux mobilier'),
(794, 154, '_etude_darchi_repeater_5_texte', 'field_5e29a4984364b'),
(795, 154, 'etude_darchi_repeater', '6'),
(796, 154, '_etude_darchi_repeater', 'field_5e29a0cc364b4'),
(797, 154, 'etude_darchi', ''),
(798, 154, '_etude_darchi', 'field_5e297ea321058'),
(799, 154, 'nghi_&_stephan_titre', 'Nghi & Stephan'),
(800, 154, '_nghi_&_stephan_titre', 'field_5e29a10bb23fa'),
(801, 154, 'nghi_&_stephan_ss-titre', 'Architecte d’intérieur et designer'),
(802, 154, '_nghi_&_stephan_ss-titre', 'field_5e29a111b23fb'),
(803, 154, 'nghi_&_stephan_wysiwyg', 'Elle est architecte d’intérieur, lui designer. Elle associe, il compose, elle colore, il meuble, elle illumine, il décore. Depuis tant d’années qu’ils travaillent ensemble, Nghi et Stéphan savent comment rendre réels les besoins et les envies des clients.\r\n\r\nChaque projet d’architecture d’intérieur commence par une écoute et une visite qui servent à dessiner les contours d’un cahier des charges et qui déjà servent d’inspiration.\r\n\r\nLes propositions de tissus et d’ameublement qui sont ensuite présentées aux clients ajoutent élégance et originalité tout en respectant leur première intuition.\r\n\r\nIl y a trois réponses possibles au design : oui, non et wow. Nous travaillons toujours pour cette dernière.'),
(804, 154, '_nghi_&_stephan_wysiwyg', 'field_5e29a11eb23fc'),
(805, 154, 'nghi_&_stephan', ''),
(806, 154, '_nghi_&_stephan', 'field_5e29a0f2b23f8'),
(807, 154, 'tissus_et_artisanat_repeater_0_img', '76'),
(808, 154, '_tissus_et_artisanat_repeater_0_img', 'field_5e29a4b64364c'),
(809, 154, 'tissus_et_artisanat_repeater', '1'),
(810, 154, '_tissus_et_artisanat_repeater', 'field_5e29a15000566'),
(811, 154, 'tissus_et_artisanat_titre', 'Tissus et artisanat'),
(812, 154, '_tissus_et_artisanat_titre', 'field_5e2ab78e78323'),
(813, 154, 'tissus_et_artisanat_ss-titre', 'Habillage de meubles et de fenêtres'),
(814, 154, '_tissus_et_artisanat_ss-titre', 'field_5e2ab79878324'),
(815, 154, 'tissus_et_artisanat_wysiwyg', '<div class=\"textes-container left\">\r\n<div class=\"texte format ng-isolate-scope fade-in-when-visible\">\r\n\r\nAjoutez un brin de tissus dans vos intérieurs et changez toute une ambiance : l’esthétique, la mise en valeur de mobilier ou d’éléments d’architecture, la réverbération du son, de la lumière, etc.\r\n\r\n&nbsp;\r\n\r\nNous avons un choix formidable de tissus à vous présenter et à assortir entre eux : Diaz, etc.\r\n\r\n&nbsp;\r\n\r\n</div>\r\n</div>\r\n<div class=\"textes-container right\">\r\n<div class=\"texte format ng-isolate-scope fade-in-when-visible\">\r\n\r\nTravail selon les méthodes artisanales :\r\n<ul>\r\n 	<li>Regarnissage et rhabillage de toutes pièces de mobilier, même neuves.</li>\r\n 	<li>Confection de tentures, de stores et de rideaux.</li>\r\n 	<li>Tapisseries murales</li>\r\n 	<li>Canapés personnalisés</li>\r\n 	<li>Tapis</li>\r\n</ul>\r\n</div>\r\n</div>'),
(816, 154, '_tissus_et_artisanat_wysiwyg', 'field_5e2ab7a078325'),
(817, 154, 'tissus_et_artisanat', ''),
(818, 154, '_tissus_et_artisanat', 'field_5e29a13b00565'),
(819, 94, 'tissus_et_artisanat_repeater-1', ''),
(820, 94, '_tissus_et_artisanat_repeater-1', 'field_5e29a15000566'),
(821, 94, 'tissus_et_artisanat_repeater-2_0_texte', 'Travail selon les méthodes artisanales :'),
(822, 94, '_tissus_et_artisanat_repeater-2_0_texte', 'field_5e2abb75d38b2'),
(823, 94, 'tissus_et_artisanat_repeater-2_1_texte', 'Regarnissage et rhabillage de toutes pièces de mobilier, même neuves.'),
(824, 94, '_tissus_et_artisanat_repeater-2_1_texte', 'field_5e2abb75d38b2'),
(825, 94, 'tissus_et_artisanat_repeater-2_2_texte', 'Confection de tentures, de stores et de rideaux.'),
(826, 94, '_tissus_et_artisanat_repeater-2_2_texte', 'field_5e2abb75d38b2'),
(827, 94, 'tissus_et_artisanat_repeater-2_3_texte', 'Tapisseries murales'),
(828, 94, '_tissus_et_artisanat_repeater-2_3_texte', 'field_5e2abb75d38b2'),
(829, 94, 'tissus_et_artisanat_repeater-2_4_texte', 'Canapés personnalisés'),
(830, 94, '_tissus_et_artisanat_repeater-2_4_texte', 'field_5e2abb75d38b2'),
(831, 94, 'tissus_et_artisanat_repeater-2_5_texte', 'Tapis'),
(832, 94, '_tissus_et_artisanat_repeater-2_5_texte', 'field_5e2abb75d38b2'),
(833, 94, 'tissus_et_artisanat_repeater-2', '6'),
(834, 94, '_tissus_et_artisanat_repeater-2', 'field_5e2abb64d38b1'),
(835, 157, 'diaporama_posts_projets_titre', 'Prendre soin de votre schéma de vie'),
(836, 157, '_diaporama_posts_projets_titre', 'field_5e2980ee2105c'),
(837, 157, 'diaporama_posts_projets_img', '{\"original_image\":\"75\",\"cropped_image\":\"75\"}'),
(838, 157, '_diaporama_posts_projets_img', 'field_5e2980ff2105d'),
(839, 157, 'diaporama_posts_projets_intro', ''),
(840, 157, '_diaporama_posts_projets_intro', 'field_5e29810f2105e'),
(841, 157, 'diaporama_posts_projets_flexibles_titre', ''),
(842, 157, '_diaporama_posts_projets_flexibles_titre', 'field_5e29812f21060'),
(843, 157, 'diaporama_posts_projets_flexibles_img', ''),
(844, 157, '_diaporama_posts_projets_flexibles_img', 'field_5e29813a21061'),
(845, 157, 'diaporama_posts_projets_flexibles_wysiwyg', ''),
(846, 157, '_diaporama_posts_projets_flexibles_wysiwyg', 'field_5e29814c21062'),
(847, 157, 'diaporama_posts_projets_flexibles', ''),
(848, 157, '_diaporama_posts_projets_flexibles', 'field_5e29811b2105f'),
(849, 157, 'diaporama_posts_projets', ''),
(850, 157, '_diaporama_posts_projets', 'field_5e2980ba21059'),
(851, 157, 'diaporama', ''),
(852, 157, '_diaporama', 'field_5e297e467f9f9'),
(853, 157, 'etude_darchi_titre', '150 € l’étude d’archi');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(854, 157, '_etude_darchi_titre', 'field_5e29a09b364b1'),
(855, 157, 'etude_darchi_ss-titre', 'Plutôt une bonne affaire, non?'),
(856, 157, '_etude_darchi_ss-titre', 'field_5e29a0a5364b2'),
(857, 157, 'etude_darchi_wysiwyg', 'Offrez-vous une étude complète d’architecte d’intérieur dès lors que vous êtes intéressés par du mobilier de notre magasin.\r\n\r\n<strong>Pour 150 € au lieu de 1100 €, vous recevez un projet de réaménagement complet d’une pièce ou de l’ensemble de votre maison.</strong>'),
(858, 157, '_etude_darchi_wysiwyg', 'field_5e29a0bb364b3'),
(859, 157, 'etude_darchi_repeater_0_texte', 'Nous vous aidons à définir une ambiance et à décrire l’espace :'),
(860, 157, '_etude_darchi_repeater_0_texte', 'field_5e29a4984364b'),
(861, 157, 'etude_darchi_repeater_1_texte', 'Schémas de circulation'),
(862, 157, '_etude_darchi_repeater_1_texte', 'field_5e29a4984364b'),
(863, 157, 'etude_darchi_repeater_2_texte', 'Habillage des fenêtres'),
(864, 157, '_etude_darchi_repeater_2_texte', 'field_5e29a4984364b'),
(865, 157, 'etude_darchi_repeater_3_texte', 'Habillage des murs'),
(866, 157, '_etude_darchi_repeater_3_texte', 'field_5e29a4984364b'),
(867, 157, 'etude_darchi_repeater_4_texte', 'Conseil en couleurs (peintures, tapisserie, etc.)'),
(868, 157, '_etude_darchi_repeater_4_texte', 'field_5e29a4984364b'),
(869, 157, 'etude_darchi_repeater_5_texte', 'Réintégration de vieux mobilier'),
(870, 157, '_etude_darchi_repeater_5_texte', 'field_5e29a4984364b'),
(871, 157, 'etude_darchi_repeater', '6'),
(872, 157, '_etude_darchi_repeater', 'field_5e29a0cc364b4'),
(873, 157, 'etude_darchi', ''),
(874, 157, '_etude_darchi', 'field_5e297ea321058'),
(875, 157, 'nghi_&_stephan_titre', 'Nghi & Stephan'),
(876, 157, '_nghi_&_stephan_titre', 'field_5e29a10bb23fa'),
(877, 157, 'nghi_&_stephan_ss-titre', 'Architecte d’intérieur et designer'),
(878, 157, '_nghi_&_stephan_ss-titre', 'field_5e29a111b23fb'),
(879, 157, 'nghi_&_stephan_wysiwyg', 'Elle est architecte d’intérieur, lui designer. Elle associe, il compose, elle colore, il meuble, elle illumine, il décore. Depuis tant d’années qu’ils travaillent ensemble, Nghi et Stéphan savent comment rendre réels les besoins et les envies des clients.\r\n\r\nChaque projet d’architecture d’intérieur commence par une écoute et une visite qui servent à dessiner les contours d’un cahier des charges et qui déjà servent d’inspiration.\r\n\r\nLes propositions de tissus et d’ameublement qui sont ensuite présentées aux clients ajoutent élégance et originalité tout en respectant leur première intuition.\r\n\r\nIl y a trois réponses possibles au design : oui, non et wow. Nous travaillons toujours pour cette dernière.'),
(880, 157, '_nghi_&_stephan_wysiwyg', 'field_5e29a11eb23fc'),
(881, 157, 'nghi_&_stephan', ''),
(882, 157, '_nghi_&_stephan', 'field_5e29a0f2b23f8'),
(883, 157, 'tissus_et_artisanat_repeater_0_img', '76'),
(884, 157, '_tissus_et_artisanat_repeater_0_img', 'field_5e29a4b64364c'),
(885, 157, 'tissus_et_artisanat_repeater', '1'),
(886, 157, '_tissus_et_artisanat_repeater', 'field_5e29a15000566'),
(887, 157, 'tissus_et_artisanat_titre', 'Tissus et artisanat'),
(888, 157, '_tissus_et_artisanat_titre', 'field_5e2ab78e78323'),
(889, 157, 'tissus_et_artisanat_ss-titre', 'Habillage de meubles et de fenêtres'),
(890, 157, '_tissus_et_artisanat_ss-titre', 'field_5e2ab79878324'),
(891, 157, 'tissus_et_artisanat_wysiwyg', 'Ajoutez un brin de tissus dans vos intérieurs et changez toute une ambiance : l’esthétique, la mise en valeur de mobilier ou d’éléments d’architecture, la réverbération du son, de la lumière, etc.\r\n\r\n&nbsp;\r\n\r\nNous avons un choix formidable de tissus à vous présenter et à assortir entre eux : Diaz, etc.'),
(892, 157, '_tissus_et_artisanat_wysiwyg', 'field_5e2ab7a078325'),
(893, 157, 'tissus_et_artisanat', ''),
(894, 157, '_tissus_et_artisanat', 'field_5e29a13b00565'),
(895, 157, 'tissus_et_artisanat_repeater-1', ''),
(896, 157, '_tissus_et_artisanat_repeater-1', 'field_5e29a15000566'),
(897, 157, 'tissus_et_artisanat_repeater-2_0_texte', 'Travail selon les méthodes artisanales :'),
(898, 157, '_tissus_et_artisanat_repeater-2_0_texte', 'field_5e2abb75d38b2'),
(899, 157, 'tissus_et_artisanat_repeater-2_1_texte', 'Regarnissage et rhabillage de toutes pièces de mobilier, même neuves.'),
(900, 157, '_tissus_et_artisanat_repeater-2_1_texte', 'field_5e2abb75d38b2'),
(901, 157, 'tissus_et_artisanat_repeater-2_2_texte', 'Confection de tentures, de stores et de rideaux.'),
(902, 157, '_tissus_et_artisanat_repeater-2_2_texte', 'field_5e2abb75d38b2'),
(903, 157, 'tissus_et_artisanat_repeater-2_3_texte', 'Tapisseries murales'),
(904, 157, '_tissus_et_artisanat_repeater-2_3_texte', 'field_5e2abb75d38b2'),
(905, 157, 'tissus_et_artisanat_repeater-2_4_texte', 'Canapés personnalisés'),
(906, 157, '_tissus_et_artisanat_repeater-2_4_texte', 'field_5e2abb75d38b2'),
(907, 157, 'tissus_et_artisanat_repeater-2_5_texte', 'Tapis'),
(908, 157, '_tissus_et_artisanat_repeater-2_5_texte', 'field_5e2abb75d38b2'),
(909, 157, 'tissus_et_artisanat_repeater-2', '6'),
(910, 157, '_tissus_et_artisanat_repeater-2', 'field_5e2abb64d38b1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-01-15 10:18:25', '2020-01-15 09:18:25', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2020-01-15 10:18:25', '2020-01-15 09:18:25', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2020-01-15 10:18:25', '2020-01-15 09:18:25', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2020-01-21 12:16:25', '2020-01-21 11:16:25', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-01-15 10:18:25', '2020-01-15 09:18:25', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2020-01-21 12:13:47', '2020-01-21 11:13:47', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(11, 1, '2020-01-15 10:27:06', '2020-01-15 09:27:06', '', 'The New UMoMA Opens its Doors', '', 'inherit', 'open', 'closed', '', 'the-new-umoma-opens-its-doors', '', '', '2020-01-15 10:27:06', '2020-01-15 09:27:06', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/01/2020-landscape-1-1.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2020-01-15 10:27:06', '2020-01-15 09:27:06', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">The premier destination for modern art in Northern Sweden. Open from 10 AM to 6 PM every day during the summer months.</h2>\n<!-- /wp:heading --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} -->\n<figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png\" alt=\"\" class=\"wp-image-37\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Works and Days</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>August 1 -- December 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} -->\n<figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png\" alt=\"\" class=\"wp-image-37\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Theatre of Operations</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>October 1 -- December 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:group --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} -->\n<figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png\" alt=\"\" class=\"wp-image-37\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>The Life I Deserve</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>August 1 -- December 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} -->\n<figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png\" alt=\"\" class=\"wp-image-37\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>From Signac to Matisse</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>October 1 -- December 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} -->\n<figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png\" alt=\"\" class=\"wp-image-37\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\",\"textColor\":\"accent\"} -->\n<h2 class=\"has-accent-color has-text-color has-text-align-center\">”Cyborgs, as the philosopher Donna Haraway established, are not reverent. They do not remember the cosmos.”</h2>\n<!-- /wp:heading --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph {\"dropCap\":true} -->\n<p class=\"has-drop-cap\">With seven floors of striking architecture, UMoMA shows exhibitions of international contemporary art, sometimes along with art historical retrospectives. Existential, political and philosophical issues are intrinsic to our programme. As visitor you are invited to guided tours artist talks, lectures, film screenings and other events with free admission</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The exhibitions are produced by UMoMA in collaboration with artists and museums around the world and they often attract international attention. UMoMA has received a Special Commendation from the European Museum of the Year, and was among the top candidates for the Swedish Museum of the Year Award as well as for the Council of Europe Museum Prize.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group {\"customBackgroundColor\":\"#ffffff\",\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide has-background\" style=\"background-color:#ffffff\"><div class=\"wp-block-group__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Become a Member and Get Exclusive Offers!</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Members get access to exclusive exhibits and sales. Our memberships cost $99.99 and are billed annually.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Join the Club</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:gallery {\"ids\":[39,38],\"align\":\"wide\"} -->\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" alt=\"\" data-id=\"39\" data-full-url=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" data-link=\"assets/images/2020-square-2/\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" alt=\"\" data-id=\"38\" data-full-url=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" data-link=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1/\" class=\"wp-image-38\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'The New UMoMA Opens its Door', '', 'trash', 'closed', 'closed', '', 'the-new-umoma-opens-its-doors-2__trashed', '', '', '2020-01-21 12:13:45', '2020-01-21 11:13:45', '', 0, 'http://localhost/wordpress/?page_id=12', 0, 'page', '', 0),
(13, 1, '2020-01-15 10:27:06', '2020-01-15 09:27:06', '<!-- wp:paragraph -->\n<p>Vous pourriez être un artiste et vouloir présenter vos travaux et vous même ou encore être une entreprise avec une mission à promouvoir.</p>\n<!-- /wp:paragraph -->', 'À propos de', '', 'trash', 'closed', 'closed', '', 'a-propos-de__trashed', '', '', '2020-01-23 12:31:47', '2020-01-23 11:31:47', '', 0, 'http://localhost/wordpress/?page_id=13', 0, 'page', '', 0),
(14, 1, '2020-01-15 10:27:06', '2020-01-15 09:27:06', '<!-- wp:paragraph -->\n<p>C’est une page avec des informations de contact de base, comme l’adresse et le numéro de téléphone. Vous pouvez aussi essayer une extension pour ajouter un formulaire de contact.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'trash', 'closed', 'closed', '', 'contact__trashed', '', '', '2020-01-23 12:31:53', '2020-01-23 11:31:53', '', 0, 'http://localhost/wordpress/?page_id=14', 0, 'page', '', 0),
(15, 1, '2020-01-15 10:27:06', '2020-01-15 09:27:06', '', 'Blog', '', 'trash', 'closed', 'closed', '', 'blog__trashed', '', '', '2020-01-23 12:31:52', '2020-01-23 11:31:52', '', 0, 'http://localhost/wordpress/?page_id=15', 0, 'page', '', 0),
(16, 1, '2020-01-15 10:27:06', '2020-01-15 09:27:06', '{\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"80c51a9ff8f85ea279d645ce6f4af26d\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:24:10\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:24:10\"\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"a0d1e89ec6e6ff23bbd4f6c49e37bbf2\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:24:10\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:24:10\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            11,\n            12,\n            13,\n            14,\n            15\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:24:10\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"Primary\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:27:06\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:27:06\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 13,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u00c0 propos de\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u00c0 propos de\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:27:06\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 15,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:27:06\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 14,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:27:06\"\n    },\n    \"twentytwenty::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:24:10\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"Primary\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:27:06\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:27:06\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 13,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u00c0 propos de\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u00c0 propos de\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:27:06\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 15,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:27:06\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 14,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:27:06\"\n    },\n    \"twentytwenty::nav_menu_locations[expanded]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:24:10\"\n    },\n    \"nav_menu[-9]\": {\n        \"value\": {\n            \"name\": \"Social Links Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:27:06\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:27:06\"\n    },\n    \"nav_menu_item[-10]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:27:06\"\n    },\n    \"nav_menu_item[-11]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:27:06\"\n    },\n    \"nav_menu_item[-12]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:27:06\"\n    },\n    \"nav_menu_item[-13]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"E-mail\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:27:06\"\n    },\n    \"twentytwenty::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:24:10\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:24:10\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 12,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:24:10\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 15,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:24:10\"\n    },\n    \"twentytwenty::background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:25:54\"\n    },\n    \"twentytwenty::header_footer_background_color\": {\n        \"value\": \"#0a0a0a\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:25:54\"\n    },\n    \"twentytwenty::accent_hue_active\": {\n        \"value\": \"custom\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:25:54\"\n    },\n    \"twentytwenty::accent_hue\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:25:54\"\n    },\n    \"twentytwenty::blog_content\": {\n        \"value\": \"full\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:25:54\"\n    },\n    \"blogname\": {\n        \"value\": \"Test\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:27:01\"\n    },\n    \"twentytwenty::accent_accessible_colors\": {\n        \"value\": {\n            \"content\": {\n                \"text\": \"#000000\",\n                \"accent\": \"#ee0606\",\n                \"background\": \"#ffffff\",\n                \"borders\": \"#dbdbdb\",\n                \"secondary\": \"#6d6d6d\"\n            },\n            \"header-footer\": {\n                \"text\": \"#ffffff\",\n                \"accent\": \"#f00e0e\",\n                \"background\": \"#0a0a0a\",\n                \"borders\": \"#2b2b2b\",\n                \"secondary\": \"#828282\"\n            }\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-15 09:27:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1e82f601-b1f0-4d15-833f-40eb3618775b', '', '', '2020-01-15 10:27:06', '2020-01-15 09:27:06', '', 0, 'http://localhost/wordpress/?p=16', 0, 'customize_changeset', '', 0),
(17, 1, '2020-01-15 10:27:06', '2020-01-15 09:27:06', '<!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">The premier destination for modern art in Northern Sweden. Open from 10 AM to 6 PM every day during the summer months.</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {\"align\":\"wide\"} --><div class=\"wp-block-columns alignwide\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Works and Days</h3><!-- /wp:heading --><!-- wp:paragraph --><p>August 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Theatre of Operations</h3><!-- /wp:heading --><!-- wp:paragraph --><p>October 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>The Life I Deserve</h3><!-- /wp:heading --><!-- wp:paragraph --><p>August 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>From Signac to Matisse</h3><!-- /wp:heading --><!-- wp:paragraph --><p>October 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\",\"textColor\":\"accent\"} --><h2 class=\"has-accent-color has-text-align-center\">”Cyborgs, as the philosopher Donna Haraway established, are not reverent. They do not remember the cosmos.”</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {\"dropCap\":true} --><p class=\"has-drop-cap\">With seven floors of striking architecture, UMoMA shows exhibitions of international contemporary art, sometimes along with art historical retrospectives. Existential, political and philosophical issues are intrinsic to our programme. As visitor you are invited to guided tours artist talks, lectures, film screenings and other events with free admission</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>The exhibitions are produced by UMoMA in collaboration with artists and museums around the world and they often attract international attention. UMoMA has received a Special Commendation from the European Museum of the Year, and was among the top candidates for the Swedish Museum of the Year Award as well as for the Council of Europe Museum Prize.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {\"customBackgroundColor\":\"#ffffff\",\"align\":\"wide\"} --><div class=\"wp-block-group alignwide has-background\" style=\"background-color:#ffffff\"><div class=\"wp-block-group__inner-container\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">Become a Member and Get Exclusive Offers!</h2><!-- /wp:heading --><!-- wp:paragraph {\"align\":\"center\"} --><p class=\"has-text-align-center\">Members get access to exclusive exhibits and sales. Our memberships cost $99.99 and are billed annually.</p><!-- /wp:paragraph --><!-- wp:button {\"align\":\"center\"} --><div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Join the Club</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {\"ids\":[39,38],\"align\":\"wide\"} --><figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" alt=\"\" data-id=\"39\" data-full-url=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" data-link=\"assets/images/2020-square-2/\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" alt=\"\" data-id=\"38\" data-full-url=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" data-link=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1/\" class=\"wp-image-38\"/></figure></li></ul></figure><!-- /wp:gallery -->', 'The New UMoMA Opens its Doors', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-01-15 10:27:06', '2020-01-15 09:27:06', '', 12, 'http://localhost/wordpress/2020/01/15/12-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-01-15 10:27:06', '2020-01-15 09:27:06', '<!-- wp:paragraph -->\n<p>Vous pourriez être un artiste et vouloir présenter vos travaux et vous même ou encore être une entreprise avec une mission à promouvoir.</p>\n<!-- /wp:paragraph -->', 'À propos de', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-01-15 10:27:06', '2020-01-15 09:27:06', '', 13, 'http://localhost/wordpress/2020/01/15/13-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2020-01-15 10:27:06', '2020-01-15 09:27:06', '<!-- wp:paragraph -->\n<p>C’est une page avec des informations de contact de base, comme l’adresse et le numéro de téléphone. Vous pouvez aussi essayer une extension pour ajouter un formulaire de contact.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-01-15 10:27:06', '2020-01-15 09:27:06', '', 14, 'http://localhost/wordpress/2020/01/15/14-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-01-15 10:27:06', '2020-01-15 09:27:06', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-01-15 10:27:06', '2020-01-15 09:27:06', '', 15, 'http://localhost/wordpress/2020/01/15/15-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(37, 1, '2020-01-15 14:23:26', '2020-01-15 13:23:26', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">The premier destination for modern art in Northern Sweden. Open from 10 AM to 6 PM every day during the summer months.</h2>\n<!-- /wp:heading --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} -->\n<figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png\" alt=\"\" class=\"wp-image-37\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Works and Days</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>August 1 -- December 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} -->\n<figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png\" alt=\"\" class=\"wp-image-37\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Theatre of Operations</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>October 1 -- December 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:group --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} -->\n<figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png\" alt=\"\" class=\"wp-image-37\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>The Life I Deserve</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>August 1 -- December 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} -->\n<figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png\" alt=\"\" class=\"wp-image-37\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>From Signac to Matisse</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>October 1 -- December 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} -->\n<figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png\" alt=\"\" class=\"wp-image-37\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\",\"textColor\":\"accent\"} -->\n<h2 class=\"has-accent-color has-text-color has-text-align-center\">”Cyborgs, as the philosopher Donna Haraway established, are not reverent. They do not remember the cosmos.”</h2>\n<!-- /wp:heading --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph {\"dropCap\":true} -->\n<p class=\"has-drop-cap\">With seven floors of striking architecture, UMoMA shows exhibitions of international contemporary art, sometimes along with art historical retrospectives. Existential, political and philosophical issues are intrinsic to our programme. As visitor you are invited to guided tours artist talks, lectures, film screenings and other events with free admission</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The exhibitions are produced by UMoMA in collaboration with artists and museums around the world and they often attract international attention. UMoMA has received a Special Commendation from the European Museum of the Year, and was among the top candidates for the Swedish Museum of the Year Award as well as for the Council of Europe Museum Prize.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group {\"customBackgroundColor\":\"#ffffff\",\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide has-background\" style=\"background-color:#ffffff\"><div class=\"wp-block-group__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Become a Member and Get Exclusive Offers!</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Members get access to exclusive exhibits and sales. Our memberships cost $99.99 and are billed annually.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Join the Club</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:gallery {\"ids\":[39,38],\"align\":\"wide\"} -->\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" alt=\"\" data-id=\"39\" data-full-url=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" data-link=\"assets/images/2020-square-2/\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" alt=\"\" data-id=\"38\" data-full-url=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" data-link=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1/\" class=\"wp-image-38\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'The New UMoMA Opens its Door', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-01-15 14:23:26', '2020-01-15 13:23:26', '', 12, 'http://localhost/wordpress/2020/01/15/12-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2020-01-21 11:25:14', '2020-01-21 10:25:14', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">The premier destination for modern art in Northern Sweden. Open from 10 AM to 6 PM every day during the summer months.</h2>\n<!-- /wp:heading --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} -->\n<figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png\" alt=\"\" class=\"wp-image-37\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Works and Days</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>August 1 -- December 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} -->\n<figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png\" alt=\"\" class=\"wp-image-37\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Theatre of Operations</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>October 1 -- December 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:group --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} -->\n<figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png\" alt=\"\" class=\"wp-image-37\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>The Life I Deserve</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>August 1 -- December 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} -->\n<figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png\" alt=\"\" class=\"wp-image-37\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>From Signac to Matisse</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>October 1 -- December 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} -->\n<figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png\" alt=\"\" class=\"wp-image-37\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\",\"textColor\":\"accent\"} -->\n<h2 class=\"has-accent-color has-text-color has-text-align-center\">”Cyborgs, as the philosopher Donna Haraway established, are not reverent. They do not remember the cosmos.”</h2>\n<!-- /wp:heading --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph {\"dropCap\":true} -->\n<p class=\"has-drop-cap\">With seven floors of striking architecture, UMoMA shows exhibitions of international contemporary art, sometimes along with art historical retrospectives. Existential, political and philosophical issues are intrinsic to our programme. As visitor you are invited to guided tours artist talks, lectures, film screenings and other events with free admission</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The exhibitions are produced by UMoMA in collaboration with artists and museums around the world and they often attract international attention. UMoMA has received a Special Commendation from the European Museum of the Year, and was among the top candidates for the Swedish Museum of the Year Award as well as for the Council of Europe Museum Prize.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group {\"customBackgroundColor\":\"#ffffff\",\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide has-background\" style=\"background-color:#ffffff\"><div class=\"wp-block-group__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Become a Member and Get Exclusive Offers!</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Members get access to exclusive exhibits and sales. Our memberships cost $99.99 and are billed annually.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Join the Club</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:gallery {\"ids\":[39,38],\"align\":\"wide\"} -->\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" alt=\"\" data-id=\"39\" data-full-url=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" data-link=\"assets/images/2020-square-2/\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" alt=\"\" data-id=\"38\" data-full-url=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" data-link=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1/\" class=\"wp-image-38\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Prendre soin de votre schéma de vie', '', 'inherit', 'closed', 'closed', '', '12-autosave-v1', '', '', '2020-01-21 11:25:14', '2020-01-21 10:25:14', '', 12, 'http://localhost/wordpress/2020/01/21/12-autosave-v1/', 0, 'revision', '', 0),
(39, 1, '2020-01-21 11:26:51', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-01-21 11:26:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=39', 0, 'post', '', 0),
(40, 1, '2020-01-21 11:40:10', '2020-01-21 10:40:10', '<!-- wp:group {\"align\":\"full\"} -->\n<div class=\"wp-block-group alignfull\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"level\":4} -->\n<h4> Prendre soin de votre schéma de vie </h4>\n<!-- /wp:heading --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:image {\"align\":\"left\",\"width\":1450,\"height\":940,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"https://raw.githubusercontent.com/becodeorg/CRL-Woods-2.15/master/Projects/Wordpress/assets/images/1850x1200_04.jpg?token=AMYF2DQG4KVZERZLQYBCNK26GAGYE\" alt=\"\" width=\"1450\" height=\"940\"/></figure></div>\n<!-- /wp:image -->', '', '', 'trash', 'closed', 'closed', '', '40-2__trashed', '', '', '2020-01-21 12:13:51', '2020-01-21 11:13:51', '', 0, 'http://localhost/wordpress/?page_id=40', 0, 'page', '', 0),
(41, 1, '2020-01-21 11:40:10', '2020-01-21 10:40:10', '<!-- wp:group {\"align\":\"full\"} -->\n<div class=\"wp-block-group alignfull\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:image {\"align\":\"left\",\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large\"><img src=\"https://raw.githubusercontent.com/becodeorg/CRL-Woods-2.15/master/Projects/Wordpress/assets/images/1850x1200_04.jpg?token=AMYF2DQG4KVZERZLQYBCNK26GAGYE\" alt=\"\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-01-21 11:40:10', '2020-01-21 10:40:10', '', 40, 'http://localhost/wordpress/2020/01/21/40-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2020-01-21 11:41:48', '2020-01-21 10:41:48', '<!-- wp:group {\"align\":\"full\"} -->\n<div class=\"wp-block-group alignfull\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"level\":4} -->\n<h4> Prendre soin de votre schéma de vie </h4>\n<!-- /wp:heading --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:image {\"align\":\"left\",\"width\":1388,\"height\":900,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"https://raw.githubusercontent.com/becodeorg/CRL-Woods-2.15/master/Projects/Wordpress/assets/images/1850x1200_04.jpg?token=AMYF2DQG4KVZERZLQYBCNK26GAGYE\" alt=\"\" width=\"1388\" height=\"900\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-01-21 11:41:48', '2020-01-21 10:41:48', '', 40, 'http://localhost/wordpress/2020/01/21/40-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2020-01-21 11:42:32', '2020-01-21 10:42:32', '<!-- wp:group {\"align\":\"full\"} -->\n<div class=\"wp-block-group alignfull\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"level\":4} -->\n<h4> Prendre soin de votre schéma de vie </h4>\n<!-- /wp:heading --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:image {\"align\":\"left\",\"width\":1850,\"height\":1200,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"https://raw.githubusercontent.com/becodeorg/CRL-Woods-2.15/master/Projects/Wordpress/assets/images/1850x1200_04.jpg?token=AMYF2DQG4KVZERZLQYBCNK26GAGYE\" alt=\"\" width=\"1850\" height=\"1200\"/></figure></div>\n<!-- /wp:image -->', '', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-01-21 11:42:32', '2020-01-21 10:42:32', '', 40, 'http://localhost/wordpress/2020/01/21/40-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-01-21 11:43:13', '2020-01-21 10:43:13', '<!-- wp:group {\"align\":\"full\"} -->\n<div class=\"wp-block-group alignfull\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"level\":4} -->\n<h4> Prendre soin de votre schéma de vie </h4>\n<!-- /wp:heading --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image alignfull size-large\"><img src=\"https://raw.githubusercontent.com/becodeorg/CRL-Woods-2.15/master/Projects/Wordpress/assets/images/1850x1200_04.jpg?token=AMYF2DQG4KVZERZLQYBCNK26GAGYE\" alt=\"\"/></figure>\n<!-- /wp:image -->', '', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-01-21 11:43:13', '2020-01-21 10:43:13', '', 40, 'http://localhost/wordpress/2020/01/21/40-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2020-01-21 11:44:06', '2020-01-21 10:44:06', '<!-- wp:group {\"align\":\"full\"} -->\n<div class=\"wp-block-group alignfull\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"level\":4} -->\n<h4> Prendre soin de votre schéma de vie </h4>\n<!-- /wp:heading --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:image {\"align\":\"left\",\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large\"><img src=\"https://raw.githubusercontent.com/becodeorg/CRL-Woods-2.15/master/Projects/Wordpress/assets/images/1850x1200_04.jpg?token=AMYF2DQG4KVZERZLQYBCNK26GAGYE\" alt=\"\"/></figure></div>\n<!-- /wp:image -->', '', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-01-21 11:44:06', '2020-01-21 10:44:06', '', 40, 'http://localhost/wordpress/2020/01/21/40-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2020-01-21 11:44:27', '2020-01-21 10:44:27', '<!-- wp:group {\"align\":\"full\"} -->\n<div class=\"wp-block-group alignfull\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"level\":4} -->\n<h4> Prendre soin de votre schéma de vie </h4>\n<!-- /wp:heading --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:image {\"align\":\"wide\",\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image alignwide size-large\"><img src=\"https://raw.githubusercontent.com/becodeorg/CRL-Woods-2.15/master/Projects/Wordpress/assets/images/1850x1200_04.jpg?token=AMYF2DQG4KVZERZLQYBCNK26GAGYE\" alt=\"\"/></figure>\n<!-- /wp:image -->', '', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-01-21 11:44:27', '2020-01-21 10:44:27', '', 40, 'http://localhost/wordpress/2020/01/21/40-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2020-01-21 11:45:19', '2020-01-21 10:45:19', '<!-- wp:group {\"align\":\"full\"} -->\n<div class=\"wp-block-group alignfull\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"level\":4} -->\n<h4> Prendre soin de votre schéma de vie </h4>\n<!-- /wp:heading --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:image {\"align\":\"left\",\"width\":30000,\"height\":120033,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"https://raw.githubusercontent.com/becodeorg/CRL-Woods-2.15/master/Projects/Wordpress/assets/images/1850x1200_04.jpg?token=AMYF2DQG4KVZERZLQYBCNK26GAGYE\" alt=\"\" width=\"30000\" height=\"120033\"/></figure></div>\n<!-- /wp:image -->', '', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-01-21 11:45:19', '2020-01-21 10:45:19', '', 40, 'http://localhost/wordpress/2020/01/21/40-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-01-21 11:46:44', '2020-01-21 10:46:44', '<!-- wp:group {\"align\":\"full\"} -->\n<div class=\"wp-block-group alignfull\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"level\":4} -->\n<h4> Prendre soin de votre schéma de vie </h4>\n<!-- /wp:heading --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:image {\"align\":\"left\",\"width\":1450,\"height\":940,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"https://raw.githubusercontent.com/becodeorg/CRL-Woods-2.15/master/Projects/Wordpress/assets/images/1850x1200_04.jpg?token=AMYF2DQG4KVZERZLQYBCNK26GAGYE\" alt=\"\" width=\"1450\" height=\"940\"/></figure></div>\n<!-- /wp:image -->', '', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-01-21 11:46:44', '2020-01-21 10:46:44', '', 40, 'http://localhost/wordpress/2020/01/21/40-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2020-01-21 12:10:26', '2020-01-21 11:10:26', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"text-4\"\n            ],\n            \"sidebar-2\": [\n                \"text-5\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 11:10:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b0017ae8-ddf6-4472-b134-933e596d8c4e', '', '', '2020-01-21 12:10:26', '2020-01-21 11:10:26', '', 0, 'http://localhost/wordpress/2020/01/21/b0017ae8-ddf6-4472-b134-933e596d8c4e/', 0, 'customize_changeset', '', 0),
(52, 1, '2020-01-21 12:13:02', '2020-01-21 11:13:02', '{\n    \"blogname\": {\n        \"value\": \"Compostion\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 11:11:12\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 11:11:12\"\n    },\n    \"nav_menu_item[21]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 21,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"Lien personnalis\\u00e9\",\n            \"title\": \"Magasin\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 11:11:39\"\n    },\n    \"nav_menu_item[22]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 13,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/a-propos-de/\",\n            \"title\": \"ARCHITECTE D\'INTERIEUR\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"\\u00c0 propos de\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 11:11:59\"\n    },\n    \"nav_menu_item[23]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 15,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/blog/\",\n            \"title\": \"A propos de \",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 11:12:39\"\n    },\n    \"nav_menu_item[24]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 14,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/contact/\",\n            \"title\": \"Blog\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 11:12:39\"\n    },\n    \"nav_menu_item[-1301529838]\": {\n        \"value\": {\n            \"object_id\": 14,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"http://localhost/wordpress/contact/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 11:12:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7a6af176-e3c7-4447-8a4d-ac3414d528cc', '', '', '2020-01-21 12:13:02', '2020-01-21 11:13:02', '', 0, 'http://localhost/wordpress/?p=52', 0, 'customize_changeset', '', 0),
(54, 1, '2020-01-21 12:13:35', '2020-01-21 11:13:35', '{\n    \"page_on_front\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 11:13:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '19fdb162-86ff-4ef5-bbd6-e58c9464fa73', '', '', '2020-01-21 12:13:35', '2020-01-21 11:13:35', '', 0, 'http://localhost/wordpress/2020/01/21/19fdb162-86ff-4ef5-bbd6-e58c9464fa73/', 0, 'customize_changeset', '', 0),
(55, 1, '2020-01-21 12:13:47', '2020-01-21 11:13:47', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-01-21 12:13:47', '2020-01-21 11:13:47', '', 3, 'http://localhost/wordpress/2020/01/21/3-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2020-01-21 12:14:11', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-21 12:14:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=56', 0, 'page', '', 0),
(57, 1, '2020-01-21 12:14:21', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-21 12:14:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=57', 0, 'page', '', 0),
(58, 1, '2020-01-21 12:14:39', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-21 12:14:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=58', 0, 'page', '', 0),
(59, 1, '2020-01-21 12:14:57', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-01-21 12:14:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=59', 0, 'post', '', 0),
(60, 1, '2020-01-21 12:15:30', '2020-01-21 11:15:30', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-01-23 16:41:34', '2020-01-23 15:41:34', '', 0, 'http://localhost/wordpress/?page_id=60', 0, 'page', '', 0),
(61, 1, '2020-01-21 12:15:30', '2020-01-21 11:15:30', '', 'Magasin', '', 'trash', 'closed', 'closed', '', 'magasin__trashed', '', '', '2020-01-23 12:31:56', '2020-01-23 11:31:56', '', 0, 'http://localhost/wordpress/?page_id=61', 0, 'page', '', 0),
(62, 1, '2020-01-21 12:15:30', '2020-01-21 11:15:30', '{\n    \"page_on_front\": {\n        \"value\": \"60\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 11:15:30\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            60,\n            61\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 11:15:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '787159fd-67a8-44e5-a7bd-014b59fef22b', '', '', '2020-01-21 12:15:30', '2020-01-21 11:15:30', '', 0, 'http://localhost/wordpress/2020/01/21/787159fd-67a8-44e5-a7bd-014b59fef22b/', 0, 'customize_changeset', '', 0),
(63, 1, '2020-01-21 12:15:30', '2020-01-21 11:15:30', '', 'Home', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2020-01-21 12:15:30', '2020-01-21 11:15:30', '', 60, 'http://localhost/wordpress/2020/01/21/60-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-01-21 12:15:30', '2020-01-21 11:15:30', '', 'Magasin', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-01-21 12:15:30', '2020-01-21 11:15:30', '', 61, 'http://localhost/wordpress/2020/01/21/61-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2020-01-21 12:15:37', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-01-21 12:15:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=65', 0, 'post', '', 0),
(66, 1, '2020-01-21 12:16:25', '2020-01-21 11:16:25', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-01-21 12:16:25', '2020-01-21 11:16:25', '', 2, 'http://localhost/wordpress/2020/01/21/2-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2020-01-21 12:16:52', '2020-01-21 11:16:52', '<!-- wp:heading {\"level\":4} -->\n<h4>Prendre soin de votre schéma de vie</h4>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"></div>\n<!-- /wp:columns -->', 'Architecture d\'intérieur', '', 'trash', 'closed', 'closed', '', 'architecture-dinterieur__trashed', '', '', '2020-01-23 12:31:49', '2020-01-23 11:31:49', '', 0, 'http://localhost/wordpress/?page_id=67', 0, 'page', '', 0),
(68, 1, '2020-01-21 12:16:52', '2020-01-21 11:16:52', '{\n    \"page_on_front\": {\n        \"value\": \"60\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 11:16:52\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            67\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 11:16:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c00551e5-e251-4fff-a75b-c8bbb67febb2', '', '', '2020-01-21 12:16:52', '2020-01-21 11:16:52', '', 0, 'http://localhost/wordpress/2020/01/21/c00551e5-e251-4fff-a75b-c8bbb67febb2/', 0, 'customize_changeset', '', 0),
(69, 1, '2020-01-21 12:16:52', '2020-01-21 11:16:52', '', 'Architecture d\'intérieur', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2020-01-21 12:16:52', '2020-01-21 11:16:52', '', 67, 'http://localhost/wordpress/2020/01/21/67-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-01-21 12:23:46', '2020-01-21 11:23:46', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"94\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:4:\"left\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Archi', 'archi', 'publish', 'closed', 'closed', '', 'group_5e26df31c246a', '', '', '2020-01-24 10:41:27', '2020-01-24 09:41:27', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=70', 0, 'acf-field-group', '', 0),
(71, 1, '2020-01-21 14:41:27', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-21 14:41:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&p=71', 0, 'acf-field-group', '', 0),
(72, 1, '2020-01-21 14:44:02', '2020-01-21 13:44:02', '<!-- wp:heading {\"level\":4} -->\n<h4>Prendre soin de votre schéma de vie</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Architecture d\'intérieur', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2020-01-21 14:44:02', '2020-01-21 13:44:02', '', 67, 'http://localhost/wordpress/2020/01/21/67-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2020-01-21 15:48:24', '2020-01-21 14:48:24', '<!-- wp:heading {\"level\":4} -->\n<h4>Prendre soin de votre schéma de vie</h4>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"></div>\n<!-- /wp:columns -->', 'Architecture d\'intérieur', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2020-01-21 15:48:24', '2020-01-21 14:48:24', '', 67, 'http://localhost/wordpress/2020/01/21/67-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2020-01-21 15:52:33', '2020-01-21 14:52:33', '', 'archi-image', '', 'inherit', 'open', 'closed', '', 'archi-image', '', '', '2020-01-21 15:52:33', '2020-01-21 14:52:33', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/01/archi-image.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2020-01-21 15:52:36', '2020-01-21 14:52:36', '', 'archi-image-2', '', 'inherit', 'open', 'closed', '', 'archi-image-2', '', '', '2020-01-23 15:59:31', '2020-01-23 14:59:31', '', 60, 'http://localhost/wordpress/wp-content/uploads/2020/01/archi-image-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2020-01-21 15:52:37', '2020-01-21 14:52:37', '', 'archi-image-3', '', 'inherit', 'open', 'closed', '', 'archi-image-3', '', '', '2020-01-21 15:52:37', '2020-01-21 14:52:37', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/01/archi-image-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2020-01-21 15:52:39', '2020-01-21 14:52:39', '', 'archi-image-4', '', 'inherit', 'open', 'closed', '', 'archi-image-4', '', '', '2020-01-21 15:52:39', '2020-01-21 14:52:39', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/01/archi-image-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2020-01-21 15:57:34', '0000-00-00 00:00:00', '{\n    \"custom_css[Project]\": {\n        \"value\": \"\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-21 14:57:34\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '7138081a-8c89-4ade-a80a-3f2ed3f1460b', '', '', '2020-01-21 15:57:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=79', 0, 'customize_changeset', '', 0),
(80, 1, '2020-01-23 09:01:12', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-01-23 09:01:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=80', 0, 'post', '', 0),
(81, 1, '2020-01-23 09:59:17', '2020-01-23 08:59:17', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"text-4\"\n            ],\n            \"sidebar-2\": [\n                \"text-5\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-23 08:59:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '43cbf0d9-49ee-4559-aee7-9cf109d29151', '', '', '2020-01-23 09:59:17', '2020-01-23 08:59:17', '', 0, 'http://localhost/wordpress/2020/01/23/43cbf0d9-49ee-4559-aee7-9cf109d29151/', 0, 'customize_changeset', '', 0),
(82, 1, '2020-01-23 12:00:55', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-23 12:00:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&p=82', 0, 'acf-field-group', '', 0),
(83, 1, '2020-01-23 12:01:27', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-23 12:01:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&p=83', 0, 'acf-field-group', '', 0),
(84, 1, '2020-01-23 12:07:09', '2020-01-23 11:07:09', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Diaporama', 'diaporama', 'publish', 'closed', 'closed', '', 'field_5e297e467f9f9', '', '', '2020-01-23 12:30:02', '2020-01-23 11:30:02', '', 70, 'http://localhost/wordpress/?post_type=acf-field&#038;p=84', 0, 'acf-field', '', 0),
(85, 1, '2020-01-23 12:30:02', '2020-01-23 11:30:02', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'POSTS PROJETS', 'posts_projets', 'publish', 'closed', 'closed', '', 'field_5e2980ba21059', '', '', '2020-01-23 12:30:02', '2020-01-23 11:30:02', '', 84, 'http://localhost/wordpress/?post_type=acf-field&p=85', 0, 'acf-field', '', 0),
(86, 1, '2020-01-23 12:30:02', '2020-01-23 11:30:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titre', 'titre', 'publish', 'closed', 'closed', '', 'field_5e2980ee2105c', '', '', '2020-01-23 12:30:02', '2020-01-23 11:30:02', '', 85, 'http://localhost/wordpress/?post_type=acf-field&p=86', 0, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(87, 1, '2020-01-23 12:30:02', '2020-01-23 11:30:02', 'a:15:{s:4:\"type\";s:10:\"image_crop\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"crop_type\";s:4:\"hard\";s:11:\"target_size\";s:9:\"thumbnail\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:10:\"force_crop\";s:2:\"no\";s:21:\"save_in_media_library\";s:3:\"yes\";s:11:\"retina_mode\";s:2:\"no\";s:11:\"save_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";}', 'img', 'img', 'publish', 'closed', 'closed', '', 'field_5e2980ff2105d', '', '', '2020-01-24 10:24:24', '2020-01-24 09:24:24', '', 85, 'http://localhost/wordpress/?post_type=acf-field&#038;p=87', 1, 'acf-field', '', 0),
(88, 1, '2020-01-23 12:30:02', '2020-01-23 11:30:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Intro', 'intro', 'publish', 'closed', 'closed', '', 'field_5e29810f2105e', '', '', '2020-01-23 12:30:02', '2020-01-23 11:30:02', '', 85, 'http://localhost/wordpress/?post_type=acf-field&p=88', 2, 'acf-field', '', 0),
(89, 1, '2020-01-23 12:30:02', '2020-01-23 11:30:02', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Flexibles', 'flexibles', 'publish', 'closed', 'closed', '', 'field_5e29811b2105f', '', '', '2020-01-23 12:30:02', '2020-01-23 11:30:02', '', 85, 'http://localhost/wordpress/?post_type=acf-field&p=89', 3, 'acf-field', '', 0),
(90, 1, '2020-01-23 12:30:02', '2020-01-23 11:30:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titre', 'titre', 'publish', 'closed', 'closed', '', 'field_5e29812f21060', '', '', '2020-01-23 12:30:02', '2020-01-23 11:30:02', '', 89, 'http://localhost/wordpress/?post_type=acf-field&p=90', 0, 'acf-field', '', 0),
(91, 1, '2020-01-23 12:30:02', '2020-01-23 11:30:02', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Img', 'img', 'publish', 'closed', 'closed', '', 'field_5e29813a21061', '', '', '2020-01-23 12:30:02', '2020-01-23 11:30:02', '', 89, 'http://localhost/wordpress/?post_type=acf-field&p=91', 1, 'acf-field', '', 0),
(92, 1, '2020-01-23 12:30:02', '2020-01-23 11:30:02', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'WYSIWYG', 'wysiwyg', 'publish', 'closed', 'closed', '', 'field_5e29814c21062', '', '', '2020-01-23 12:30:02', '2020-01-23 11:30:02', '', 89, 'http://localhost/wordpress/?post_type=acf-field&p=92', 2, 'acf-field', '', 0),
(93, 1, '2020-01-23 12:30:02', '2020-01-23 11:30:02', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Etude d\'archi', 'etude_darchi', 'publish', 'closed', 'closed', '', 'field_5e297ea321058', '', '', '2020-01-23 14:34:40', '2020-01-23 13:34:40', '', 70, 'http://localhost/wordpress/?post_type=acf-field&#038;p=93', 1, 'acf-field', '', 0),
(94, 1, '2020-01-23 12:32:13', '2020-01-23 11:32:13', '', 'Architecture d\'intérieur', '', 'publish', 'closed', 'closed', '', 'archi', '', '', '2020-01-24 10:43:40', '2020-01-24 09:43:40', '', 0, 'http://localhost/wordpress/?page_id=94', 1, 'page', '', 0),
(95, 1, '2020-01-23 12:32:13', '2020-01-23 11:32:13', '', 'Archi', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2020-01-23 12:32:13', '2020-01-23 11:32:13', '', 94, 'http://localhost/wordpress/2020/01/23/94-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2020-01-23 14:34:40', '2020-01-23 13:34:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titre', 'titre', 'publish', 'closed', 'closed', '', 'field_5e29a09b364b1', '', '', '2020-01-23 14:34:40', '2020-01-23 13:34:40', '', 93, 'http://localhost/wordpress/?post_type=acf-field&p=96', 0, 'acf-field', '', 0),
(97, 1, '2020-01-23 14:34:40', '2020-01-23 13:34:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'ss-titre', 'ss-titre', 'publish', 'closed', 'closed', '', 'field_5e29a0a5364b2', '', '', '2020-01-23 14:34:40', '2020-01-23 13:34:40', '', 93, 'http://localhost/wordpress/?post_type=acf-field&p=97', 1, 'acf-field', '', 0),
(98, 1, '2020-01-23 14:34:40', '2020-01-23 13:34:40', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'WYSIWYG', 'wysiwyg', 'publish', 'closed', 'closed', '', 'field_5e29a0bb364b3', '', '', '2020-01-23 14:34:40', '2020-01-23 13:34:40', '', 93, 'http://localhost/wordpress/?post_type=acf-field&p=98', 2, 'acf-field', '', 0),
(99, 1, '2020-01-23 14:34:40', '2020-01-23 13:34:40', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Repeater', 'repeater', 'publish', 'closed', 'closed', '', 'field_5e29a0cc364b4', '', '', '2020-01-23 14:59:34', '2020-01-23 13:59:34', '', 93, 'http://localhost/wordpress/?post_type=acf-field&#038;p=99', 3, 'acf-field', '', 0),
(100, 1, '2020-01-23 14:35:53', '2020-01-23 13:35:53', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Nghi & Stephan', 'nghi_&_stephan', 'publish', 'closed', 'closed', '', 'field_5e29a0f2b23f8', '', '', '2020-01-23 14:35:53', '2020-01-23 13:35:53', '', 70, 'http://localhost/wordpress/?post_type=acf-field&p=100', 2, 'acf-field', '', 0),
(101, 1, '2020-01-23 14:35:53', '2020-01-23 13:35:53', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titre', 'titre', 'publish', 'closed', 'closed', '', 'field_5e29a10bb23fa', '', '', '2020-01-23 14:35:53', '2020-01-23 13:35:53', '', 100, 'http://localhost/wordpress/?post_type=acf-field&p=101', 0, 'acf-field', '', 0),
(102, 1, '2020-01-23 14:35:53', '2020-01-23 13:35:53', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'ss-titre', 'ss-titre', 'publish', 'closed', 'closed', '', 'field_5e29a111b23fb', '', '', '2020-01-23 14:35:53', '2020-01-23 13:35:53', '', 100, 'http://localhost/wordpress/?post_type=acf-field&p=102', 1, 'acf-field', '', 0),
(103, 1, '2020-01-23 14:35:53', '2020-01-23 13:35:53', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'WYSIWYG', 'wysiwyg', 'publish', 'closed', 'closed', '', 'field_5e29a11eb23fc', '', '', '2020-01-23 14:35:53', '2020-01-23 13:35:53', '', 100, 'http://localhost/wordpress/?post_type=acf-field&p=103', 2, 'acf-field', '', 0),
(104, 1, '2020-01-23 14:47:28', '2020-01-23 13:47:28', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Tissus et artisanat', 'tissus_et_artisanat', 'publish', 'closed', 'closed', '', 'field_5e29a13b00565', '', '', '2020-01-23 14:59:34', '2020-01-23 13:59:34', '', 70, 'http://localhost/wordpress/?post_type=acf-field&#038;p=104', 3, 'acf-field', '', 0),
(105, 1, '2020-01-23 14:47:28', '2020-01-23 13:47:28', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Repeater', 'repeater-1', 'publish', 'closed', 'closed', '', 'field_5e29a15000566', '', '', '2020-01-24 10:41:27', '2020-01-24 09:41:27', '', 104, 'http://localhost/wordpress/?post_type=acf-field&#038;p=105', 0, 'acf-field', '', 0),
(106, 1, '2020-01-23 14:59:34', '2020-01-23 13:59:34', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'texte', 'texte', 'publish', 'closed', 'closed', '', 'field_5e29a4984364b', '', '', '2020-01-23 14:59:34', '2020-01-23 13:59:34', '', 99, 'http://localhost/wordpress/?post_type=acf-field&p=106', 0, 'acf-field', '', 0),
(107, 1, '2020-01-23 14:59:34', '2020-01-23 13:59:34', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'img', 'img', 'publish', 'closed', 'closed', '', 'field_5e29a4b64364c', '', '', '2020-01-23 14:59:34', '2020-01-23 13:59:34', '', 105, 'http://localhost/wordpress/?post_type=acf-field&p=107', 0, 'acf-field', '', 0),
(108, 1, '2020-01-23 15:26:41', '2020-01-23 14:26:41', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"60\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:4:\"left\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_5e29a6ce3ad1c', '', '', '2020-01-24 10:10:06', '2020-01-24 09:10:06', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=108', 0, 'acf-field-group', '', 0),
(109, 1, '2020-01-23 15:26:41', '2020-01-23 14:26:41', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Bandeau', 'bandeau', 'publish', 'closed', 'closed', '', 'field_5e29a6eb7aaa4', '', '', '2020-01-23 15:26:41', '2020-01-23 14:26:41', '', 108, 'http://localhost/wordpress/?post_type=acf-field&p=109', 0, 'acf-field', '', 0),
(110, 1, '2020-01-23 15:26:41', '2020-01-23 14:26:41', 'a:15:{s:4:\"type\";s:10:\"image_crop\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"crop_type\";s:4:\"hard\";s:11:\"target_size\";s:9:\"thumbnail\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:10:\"force_crop\";s:2:\"no\";s:21:\"save_in_media_library\";s:3:\"yes\";s:11:\"retina_mode\";s:2:\"no\";s:11:\"save_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";}', 'img', 'img-1', 'publish', 'closed', 'closed', '', 'field_5e29a7227aaa5', '', '', '2020-01-24 09:38:01', '2020-01-24 08:38:01', '', 109, 'http://localhost/wordpress/?post_type=acf-field&#038;p=110', 0, 'acf-field', '', 0),
(111, 1, '2020-01-23 15:26:41', '2020-01-23 14:26:41', 'a:15:{s:4:\"type\";s:10:\"image_crop\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"crop_type\";s:4:\"hard\";s:11:\"target_size\";s:9:\"thumbnail\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:10:\"force_crop\";s:2:\"no\";s:21:\"save_in_media_library\";s:3:\"yes\";s:11:\"retina_mode\";s:2:\"no\";s:11:\"save_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";}', 'img', 'img-2', 'publish', 'closed', 'closed', '', 'field_5e29a72c7aaa6', '', '', '2020-01-24 09:38:01', '2020-01-24 08:38:01', '', 109, 'http://localhost/wordpress/?post_type=acf-field&#038;p=111', 1, 'acf-field', '', 0),
(112, 1, '2020-01-23 15:26:41', '2020-01-23 14:26:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titre', 'titre-1', 'publish', 'closed', 'closed', '', 'field_5e29a73d7aaa7', '', '', '2020-01-23 15:48:36', '2020-01-23 14:48:36', '', 109, 'http://localhost/wordpress/?post_type=acf-field&#038;p=112', 2, 'acf-field', '', 0),
(113, 1, '2020-01-23 15:26:41', '2020-01-23 14:26:41', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Hover', 'hover-1', 'publish', 'closed', 'closed', '', 'field_5e29a74f7aaa8', '', '', '2020-01-23 15:48:36', '2020-01-23 14:48:36', '', 109, 'http://localhost/wordpress/?post_type=acf-field&#038;p=113', 4, 'acf-field', '', 0),
(114, 1, '2020-01-23 15:26:41', '2020-01-23 14:26:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titre', 'titre', 'publish', 'closed', 'closed', '', 'field_5e29ac647aaa9', '', '', '2020-01-23 15:26:41', '2020-01-23 14:26:41', '', 113, 'http://localhost/wordpress/?post_type=acf-field&p=114', 0, 'acf-field', '', 0),
(115, 1, '2020-01-23 15:26:41', '2020-01-23 14:26:41', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Texte', 'texte', 'publish', 'closed', 'closed', '', 'field_5e29ac7d7aaaa', '', '', '2020-01-23 15:26:41', '2020-01-23 14:26:41', '', 113, 'http://localhost/wordpress/?post_type=acf-field&p=115', 1, 'acf-field', '', 0),
(116, 1, '2020-01-23 15:26:41', '2020-01-23 14:26:41', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Lien interne', 'lien_interne', 'publish', 'closed', 'closed', '', 'field_5e29acb07aaab', '', '', '2020-01-23 15:26:41', '2020-01-23 14:26:41', '', 113, 'http://localhost/wordpress/?post_type=acf-field&p=116', 2, 'acf-field', '', 0),
(117, 1, '2020-01-23 15:26:41', '2020-01-23 14:26:41', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Intro', 'intro', 'publish', 'closed', 'closed', '', 'field_5e29ad1f7aaad', '', '', '2020-01-23 15:28:32', '2020-01-23 14:28:32', '', 108, 'http://localhost/wordpress/?post_type=acf-field&#038;p=117', 1, 'acf-field', '', 0),
(118, 1, '2020-01-23 15:28:32', '2020-01-23 14:28:32', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Texte', 'texte', 'publish', 'closed', 'closed', '', 'field_5e29ad3dd585f', '', '', '2020-01-23 15:28:32', '2020-01-23 14:28:32', '', 117, 'http://localhost/wordpress/?post_type=acf-field&p=118', 0, 'acf-field', '', 0),
(119, 1, '2020-01-23 15:28:32', '2020-01-23 14:28:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titre', 'titre', 'publish', 'closed', 'closed', '', 'field_5e29ad4bd5860', '', '', '2020-01-23 15:28:32', '2020-01-23 14:28:32', '', 117, 'http://localhost/wordpress/?post_type=acf-field&p=119', 1, 'acf-field', '', 0),
(120, 1, '2020-01-23 15:28:32', '2020-01-23 14:28:32', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'WYSIWYG', 'wysiwyg', 'publish', 'closed', 'closed', '', 'field_5e29ad53d5861', '', '', '2020-01-23 15:28:32', '2020-01-23 14:28:32', '', 117, 'http://localhost/wordpress/?post_type=acf-field&p=120', 2, 'acf-field', '', 0),
(121, 1, '2020-01-23 15:28:32', '2020-01-23 14:28:32', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Lien interne', 'lien_interne', 'publish', 'closed', 'closed', '', 'field_5e29ad61d5862', '', '', '2020-01-24 10:03:00', '2020-01-24 09:03:00', '', 117, 'http://localhost/wordpress/?post_type=acf-field&#038;p=121', 3, 'acf-field', '', 0),
(122, 1, '2020-01-23 15:28:32', '2020-01-23 14:28:32', 'a:15:{s:4:\"type\";s:10:\"image_crop\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"crop_type\";s:4:\"hard\";s:11:\"target_size\";s:9:\"thumbnail\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:10:\"force_crop\";s:2:\"no\";s:21:\"save_in_media_library\";s:3:\"yes\";s:11:\"retina_mode\";s:2:\"no\";s:11:\"save_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";}', 'img', 'img', 'publish', 'closed', 'closed', '', 'field_5e29ad71d5863', '', '', '2020-01-24 10:03:00', '2020-01-24 09:03:00', '', 117, 'http://localhost/wordpress/?post_type=acf-field&#038;p=122', 4, 'acf-field', '', 0),
(123, 1, '2020-01-23 15:28:32', '2020-01-23 14:28:32', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Milieu', 'milieu', 'publish', 'closed', 'closed', '', 'field_5e29ad8ad5864', '', '', '2020-01-23 15:32:17', '2020-01-23 14:32:17', '', 108, 'http://localhost/wordpress/?post_type=acf-field&#038;p=123', 2, 'acf-field', '', 0),
(124, 1, '2020-01-23 15:32:17', '2020-01-23 14:32:17', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Texte', 'texte', 'publish', 'closed', 'closed', '', 'field_5e29ada7a21ba', '', '', '2020-01-23 15:32:17', '2020-01-23 14:32:17', '', 123, 'http://localhost/wordpress/?post_type=acf-field&p=124', 0, 'acf-field', '', 0),
(125, 1, '2020-01-23 15:32:17', '2020-01-23 14:32:17', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Lien interne', 'lien_interne', 'publish', 'closed', 'closed', '', 'field_5e29adbaa21bb', '', '', '2020-01-23 15:32:17', '2020-01-23 14:32:17', '', 123, 'http://localhost/wordpress/?post_type=acf-field&p=125', 1, 'acf-field', '', 0),
(126, 1, '2020-01-23 15:32:17', '2020-01-23 14:32:17', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Tissus', 'tissus', 'publish', 'closed', 'closed', '', 'field_5e29addaa21bc', '', '', '2020-01-23 15:32:17', '2020-01-23 14:32:17', '', 108, 'http://localhost/wordpress/?post_type=acf-field&p=126', 3, 'acf-field', '', 0),
(127, 1, '2020-01-23 15:32:17', '2020-01-23 14:32:17', 'a:15:{s:4:\"type\";s:10:\"image_crop\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"crop_type\";s:4:\"hard\";s:11:\"target_size\";s:9:\"thumbnail\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:10:\"force_crop\";s:2:\"no\";s:21:\"save_in_media_library\";s:3:\"yes\";s:11:\"retina_mode\";s:2:\"no\";s:11:\"save_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";}', 'img', 'img', 'publish', 'closed', 'closed', '', 'field_5e29adeba21bd', '', '', '2020-01-24 10:10:06', '2020-01-24 09:10:06', '', 126, 'http://localhost/wordpress/?post_type=acf-field&#038;p=127', 0, 'acf-field', '', 0),
(128, 1, '2020-01-23 15:32:17', '2020-01-23 14:32:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titre', 'titre', 'publish', 'closed', 'closed', '', 'field_5e29adf0a21be', '', '', '2020-01-23 15:32:17', '2020-01-23 14:32:17', '', 126, 'http://localhost/wordpress/?post_type=acf-field&p=128', 1, 'acf-field', '', 0),
(129, 1, '2020-01-23 15:32:17', '2020-01-23 14:32:17', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'WYSIWYG', 'wysiwyg', 'publish', 'closed', 'closed', '', 'field_5e29ae0aa21bf', '', '', '2020-01-23 15:32:17', '2020-01-23 14:32:17', '', 126, 'http://localhost/wordpress/?post_type=acf-field&p=129', 2, 'acf-field', '', 0),
(130, 1, '2020-01-23 15:32:17', '2020-01-23 14:32:17', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Lien Interne', 'lien_interne', 'publish', 'closed', 'closed', '', 'field_5e29ae18a21c0', '', '', '2020-01-23 15:32:17', '2020-01-23 14:32:17', '', 126, 'http://localhost/wordpress/?post_type=acf-field&p=130', 3, 'acf-field', '', 0),
(131, 1, '2020-01-23 15:41:04', '2020-01-23 14:41:04', '', 'Home-image-1', '', 'inherit', 'open', 'closed', '', 'home-image-1', '', '', '2020-01-23 15:41:04', '2020-01-23 14:41:04', '', 60, 'http://localhost/wordpress/wp-content/uploads/2020/01/Home-image-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2020-01-23 15:41:20', '2020-01-23 14:41:20', '', 'Home-image-2', '', 'inherit', 'open', 'closed', '', 'home-image-2', '', '', '2020-01-23 15:41:20', '2020-01-23 14:41:20', '', 60, 'http://localhost/wordpress/wp-content/uploads/2020/01/Home-image-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2020-01-23 15:42:37', '2020-01-23 14:42:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2020-01-23 15:42:37', '2020-01-23 14:42:37', '', 60, 'http://localhost/wordpress/2020/01/23/60-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2020-01-23 15:43:59', '2020-01-23 14:43:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titre', 'titre-2', 'publish', 'closed', 'closed', '', 'field_5e29b1167fd37', '', '', '2020-01-23 15:48:36', '2020-01-23 14:48:36', '', 109, 'http://localhost/wordpress/?post_type=acf-field&#038;p=134', 3, 'acf-field', '', 0),
(135, 1, '2020-01-23 15:46:13', '2020-01-23 14:46:13', '', 'Home', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2020-01-23 15:46:13', '2020-01-23 14:46:13', '', 60, 'http://localhost/wordpress/2020/01/23/60-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2020-01-23 15:46:38', '2020-01-23 14:46:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2020-01-23 15:46:38', '2020-01-23 14:46:38', '', 60, 'http://localhost/wordpress/2020/01/23/60-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2020-01-23 15:47:14', '2020-01-23 14:47:14', '', 'Home', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2020-01-23 15:47:14', '2020-01-23 14:47:14', '', 60, 'http://localhost/wordpress/2020/01/23/60-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2020-01-23 15:48:36', '2020-01-23 14:48:36', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Hover', 'hover-2', 'publish', 'closed', 'closed', '', 'field_5e29b22641436', '', '', '2020-01-23 15:48:36', '2020-01-23 14:48:36', '', 109, 'http://localhost/wordpress/?post_type=acf-field&p=138', 5, 'acf-field', '', 0),
(139, 1, '2020-01-23 15:48:36', '2020-01-23 14:48:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titre', 'titre', 'publish', 'closed', 'closed', '', 'field_5e29b22641437', '', '', '2020-01-23 15:48:36', '2020-01-23 14:48:36', '', 138, 'http://localhost/wordpress/?post_type=acf-field&p=139', 0, 'acf-field', '', 0),
(140, 1, '2020-01-23 15:48:36', '2020-01-23 14:48:36', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Texte', 'texte', 'publish', 'closed', 'closed', '', 'field_5e29b22641438', '', '', '2020-01-23 15:48:36', '2020-01-23 14:48:36', '', 138, 'http://localhost/wordpress/?post_type=acf-field&p=140', 1, 'acf-field', '', 0),
(141, 1, '2020-01-23 15:48:36', '2020-01-23 14:48:36', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Lien interne', 'lien_interne', 'publish', 'closed', 'closed', '', 'field_5e29b22641439', '', '', '2020-01-23 15:48:36', '2020-01-23 14:48:36', '', 138, 'http://localhost/wordpress/?post_type=acf-field&p=141', 2, 'acf-field', '', 0),
(142, 1, '2020-01-23 15:49:11', '2020-01-23 14:49:11', '', 'Home', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2020-01-23 15:49:11', '2020-01-23 14:49:11', '', 60, 'http://localhost/wordpress/2020/01/23/60-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2020-01-23 15:51:35', '2020-01-23 14:51:35', '', 'Home', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2020-01-23 15:51:35', '2020-01-23 14:51:35', '', 60, 'http://localhost/wordpress/2020/01/23/60-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2020-01-23 15:55:29', '2020-01-23 14:55:29', '', 'Home-image-3', '', 'inherit', 'open', 'closed', '', 'home-image-3', '', '', '2020-01-23 15:55:29', '2020-01-23 14:55:29', '', 60, 'http://localhost/wordpress/wp-content/uploads/2020/01/Home-image-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2020-01-23 15:59:31', '2020-01-23 14:59:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2020-01-23 15:59:31', '2020-01-23 14:59:31', '', 60, 'http://localhost/wordpress/2020/01/23/60-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2020-01-23 16:42:07', '2020-01-23 15:42:07', '', 'Architecture d\'intérieur', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2020-01-23 16:42:07', '2020-01-23 15:42:07', '', 94, 'http://localhost/wordpress/2020/01/23/94-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2020-01-23 16:43:04', '2020-01-23 15:43:04', ' ', '', '', 'publish', 'closed', 'closed', '', '149', '', '', '2020-01-23 16:43:12', '2020-01-23 15:43:12', '', 0, 'http://localhost/wordpress/?p=149', 1, 'nav_menu_item', '', 0),
(150, 1, '2020-01-23 16:43:04', '2020-01-23 15:43:04', '', 'Architecture d\'intérieur', '', 'publish', 'closed', 'closed', '', 'architecture-dinterieur', '', '', '2020-01-23 16:43:12', '2020-01-23 15:43:12', '', 0, 'http://localhost/wordpress/?p=150', 2, 'nav_menu_item', '', 0),
(151, 1, '2020-01-24 10:24:24', '2020-01-24 09:24:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titre', 'titre', 'publish', 'closed', 'closed', '', 'field_5e2ab78e78323', '', '', '2020-01-24 10:24:24', '2020-01-24 09:24:24', '', 104, 'http://localhost/wordpress/?post_type=acf-field&p=151', 1, 'acf-field', '', 0),
(152, 1, '2020-01-24 10:24:24', '2020-01-24 09:24:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'ss-titre', 'ss-titre', 'publish', 'closed', 'closed', '', 'field_5e2ab79878324', '', '', '2020-01-24 10:24:24', '2020-01-24 09:24:24', '', 104, 'http://localhost/wordpress/?post_type=acf-field&p=152', 2, 'acf-field', '', 0),
(153, 1, '2020-01-24 10:24:24', '2020-01-24 09:24:24', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'WYSIWYG', 'wysiwyg', 'publish', 'closed', 'closed', '', 'field_5e2ab7a078325', '', '', '2020-01-24 10:24:24', '2020-01-24 09:24:24', '', 104, 'http://localhost/wordpress/?post_type=acf-field&p=153', 3, 'acf-field', '', 0),
(154, 1, '2020-01-24 10:38:13', '2020-01-24 09:38:13', '', 'Architecture d\'intérieur', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2020-01-24 10:38:13', '2020-01-24 09:38:13', '', 94, 'http://localhost/wordpress/2020/01/24/94-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2020-01-24 10:41:27', '2020-01-24 09:41:27', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Repeater', 'repeater-2', 'publish', 'closed', 'closed', '', 'field_5e2abb64d38b1', '', '', '2020-01-24 10:41:27', '2020-01-24 09:41:27', '', 104, 'http://localhost/wordpress/?post_type=acf-field&p=155', 4, 'acf-field', '', 0),
(156, 1, '2020-01-24 10:41:27', '2020-01-24 09:41:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'texte', 'texte', 'publish', 'closed', 'closed', '', 'field_5e2abb75d38b2', '', '', '2020-01-24 10:41:27', '2020-01-24 09:41:27', '', 155, 'http://localhost/wordpress/?post_type=acf-field&p=156', 0, 'acf-field', '', 0),
(157, 1, '2020-01-24 10:43:40', '2020-01-24 09:43:40', '', 'Architecture d\'intérieur', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2020-01-24 10:43:40', '2020-01-24 09:43:40', '', 94, 'http://localhost/wordpress/2020/01/24/94-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(5, 'Custom-nav', 'custom-nav', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(149, 5, 0),
(150, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(5, 5, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice,plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"f1f13ce11ba3acd25ebd9655c8b8d1203d2384762b71724462b29ab82b227773\";a:4:{s:10:\"expiration\";i:1579947803;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36\";s:5:\"login\";i:1579775003;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '80'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1579790552'),
(21, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(22, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(23, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(24, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(25, 1, 'nav_menu_recently_edited', '5'),
(26, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(27, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$B3P40Q7ArLY/uuHUuYHyRLWE7XnXxX/', 'root', 'vincent.bouton.dev@gmail.com', '', '2020-01-15 09:18:24', '', 0, 'root');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=911;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;