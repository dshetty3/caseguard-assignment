-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 03, 2024 at 02:44 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--
CREATE DATABASE IF NOT EXISTS `wordpress` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `wordpress`;

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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2024-05-10 04:00:29', '2024-05-10 04:00:29', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

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
(1, 'siteurl', 'http://localhost', 'yes'),
(2, 'home', 'http://localhost', 'yes'),
(3, 'blogname', 'CaseGuard', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'dshetty1702@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:97:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=22&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:74:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/caseguard/serach.php\";i:1;s:74:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/caseguard/single.php\";i:2;s:77:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/caseguard/functions.php\";i:3;s:73:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/caseguard/style.css\";i:4;s:0:\"\";}', 'no'),
(40, 'template', 'caseguard', 'yes'),
(41, 'stylesheet', 'caseguard', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '57155', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '22', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '81', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1730865629', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '57155', 'yes'),
(101, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:8:{i:1716703229;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1716739229;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1716739265;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1716782429;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1716782465;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1717207588;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1717214429;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.5.3\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:27:\"post-content/editor-rtl.css\";i:281;s:31:\"post-content/editor-rtl.min.css\";i:282;s:23:\"post-content/editor.css\";i:283;s:27:\"post-content/editor.min.css\";i:284;s:23:\"post-date/style-rtl.css\";i:285;s:27:\"post-date/style-rtl.min.css\";i:286;s:19:\"post-date/style.css\";i:287;s:23:\"post-date/style.min.css\";i:288;s:27:\"post-excerpt/editor-rtl.css\";i:289;s:31:\"post-excerpt/editor-rtl.min.css\";i:290;s:23:\"post-excerpt/editor.css\";i:291;s:27:\"post-excerpt/editor.min.css\";i:292;s:26:\"post-excerpt/style-rtl.css\";i:293;s:30:\"post-excerpt/style-rtl.min.css\";i:294;s:22:\"post-excerpt/style.css\";i:295;s:26:\"post-excerpt/style.min.css\";i:296;s:34:\"post-featured-image/editor-rtl.css\";i:297;s:38:\"post-featured-image/editor-rtl.min.css\";i:298;s:30:\"post-featured-image/editor.css\";i:299;s:34:\"post-featured-image/editor.min.css\";i:300;s:33:\"post-featured-image/style-rtl.css\";i:301;s:37:\"post-featured-image/style-rtl.min.css\";i:302;s:29:\"post-featured-image/style.css\";i:303;s:33:\"post-featured-image/style.min.css\";i:304;s:34:\"post-navigation-link/style-rtl.css\";i:305;s:38:\"post-navigation-link/style-rtl.min.css\";i:306;s:30:\"post-navigation-link/style.css\";i:307;s:34:\"post-navigation-link/style.min.css\";i:308;s:28:\"post-template/editor-rtl.css\";i:309;s:32:\"post-template/editor-rtl.min.css\";i:310;s:24:\"post-template/editor.css\";i:311;s:28:\"post-template/editor.min.css\";i:312;s:27:\"post-template/style-rtl.css\";i:313;s:31:\"post-template/style-rtl.min.css\";i:314;s:23:\"post-template/style.css\";i:315;s:27:\"post-template/style.min.css\";i:316;s:24:\"post-terms/style-rtl.css\";i:317;s:28:\"post-terms/style-rtl.min.css\";i:318;s:20:\"post-terms/style.css\";i:319;s:24:\"post-terms/style.min.css\";i:320;s:24:\"post-title/style-rtl.css\";i:321;s:28:\"post-title/style-rtl.min.css\";i:322;s:20:\"post-title/style.css\";i:323;s:24:\"post-title/style.min.css\";i:324;s:26:\"preformatted/style-rtl.css\";i:325;s:30:\"preformatted/style-rtl.min.css\";i:326;s:22:\"preformatted/style.css\";i:327;s:26:\"preformatted/style.min.css\";i:328;s:24:\"pullquote/editor-rtl.css\";i:329;s:28:\"pullquote/editor-rtl.min.css\";i:330;s:20:\"pullquote/editor.css\";i:331;s:24:\"pullquote/editor.min.css\";i:332;s:23:\"pullquote/style-rtl.css\";i:333;s:27:\"pullquote/style-rtl.min.css\";i:334;s:19:\"pullquote/style.css\";i:335;s:23:\"pullquote/style.min.css\";i:336;s:23:\"pullquote/theme-rtl.css\";i:337;s:27:\"pullquote/theme-rtl.min.css\";i:338;s:19:\"pullquote/theme.css\";i:339;s:23:\"pullquote/theme.min.css\";i:340;s:39:\"query-pagination-numbers/editor-rtl.css\";i:341;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:342;s:35:\"query-pagination-numbers/editor.css\";i:343;s:39:\"query-pagination-numbers/editor.min.css\";i:344;s:31:\"query-pagination/editor-rtl.css\";i:345;s:35:\"query-pagination/editor-rtl.min.css\";i:346;s:27:\"query-pagination/editor.css\";i:347;s:31:\"query-pagination/editor.min.css\";i:348;s:30:\"query-pagination/style-rtl.css\";i:349;s:34:\"query-pagination/style-rtl.min.css\";i:350;s:26:\"query-pagination/style.css\";i:351;s:30:\"query-pagination/style.min.css\";i:352;s:25:\"query-title/style-rtl.css\";i:353;s:29:\"query-title/style-rtl.min.css\";i:354;s:21:\"query-title/style.css\";i:355;s:25:\"query-title/style.min.css\";i:356;s:20:\"query/editor-rtl.css\";i:357;s:24:\"query/editor-rtl.min.css\";i:358;s:16:\"query/editor.css\";i:359;s:20:\"query/editor.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}', 'yes'),
(123, 'recovery_keys', 'a:0:{}', 'yes'),
(124, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.5.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.3\";s:7:\"version\";s:5:\"6.5.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1716700578;s:15:\"version_checked\";s:5:\"6.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(126, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1716700578;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no'),
(129, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1716700578;s:7:\"checked\";a:1:{s:9:\"caseguard\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(130, 'theme_mods_twentytwentyfour', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1715442459;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}}', 'no'),
(148, 'can_compress_scripts', '1', 'yes'),
(151, 'finished_updating_comment_type', '1', 'yes'),
(154, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'no'),
(155, 'recently_activated', 'a:0:{}', 'yes'),
(183, 'current_theme', 'Case Guard', 'yes'),
(184, 'theme_mods_caseguard', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1715399597;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(185, 'theme_switched', '', 'yes'),
(186, 'recovery_mode_email_last_sent', '1716010084', 'yes'),
(210, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(224, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(225, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":7,\"critical\":1}', 'yes'),
(444, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(458, '_wp_suggested_policy_text_has_changed', 'not-changed', 'yes'),
(469, '_transient_timeout_dirsize_cache', '2031415679', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(470, '_transient_dirsize_cache', 'a:316:{s:61:\"/Applications/MAMP/htdocs/wordpress/wp-admin/css/colors/ocean\";i:75229;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-admin/css/colors/midnight\";i:78486;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-admin/css/colors/blue\";i:77778;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-admin/css/colors/sunrise\";i:78407;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-admin/css/colors/coffee\";i:75892;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-admin/css/colors/ectoplasm\";i:77742;s:61:\"/Applications/MAMP/htdocs/wordpress/wp-admin/css/colors/light\";i:78474;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-admin/css/colors/modern\";i:77989;s:55:\"/Applications/MAMP/htdocs/wordpress/wp-admin/css/colors\";i:643556;s:48:\"/Applications/MAMP/htdocs/wordpress/wp-admin/css\";i:2533635;s:51:\"/Applications/MAMP/htdocs/wordpress/wp-admin/images\";i:426139;s:55:\"/Applications/MAMP/htdocs/wordpress/wp-admin/js/widgets\";i:139380;s:47:\"/Applications/MAMP/htdocs/wordpress/wp-admin/js\";i:1966153;s:52:\"/Applications/MAMP/htdocs/wordpress/wp-admin/network\";i:125258;s:53:\"/Applications/MAMP/htdocs/wordpress/wp-admin/includes\";i:3053274;s:49:\"/Applications/MAMP/htdocs/wordpress/wp-admin/user\";i:3418;s:50:\"/Applications/MAMP/htdocs/wordpress/wp-admin/maint\";i:7592;s:44:\"/Applications/MAMP/htdocs/wordpress/wp-admin\";i:9043778;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/read-more\";i:2526;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/comments\";i:28882;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/site-logo\";i:16227;s:66:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-author\";i:2895;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/video\";i:11523;s:70:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/navigation-link\";i:12266;s:74:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/comments-pagination\";i:8628;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/tag-cloud\";i:3500;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/calendar\";i:3804;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/buttons\";i:11183;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-date\";i:1377;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/embed\";i:11320;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-excerpt\";i:2925;s:59:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/file\";i:11254;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/paragraph\";i:6857;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/quote\";i:6522;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/group\";i:13249;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/site-tagline\";i:1570;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/shortcode\";i:3192;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/comment-edit-link\";i:1213;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/separator\";i:5280;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/gallery\";i:79899;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/heading\";i:5710;s:71:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/comment-template\";i:2910;s:70:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/comment-content\";i:1369;s:71:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/term-description\";i:1751;s:58:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/rss\";i:5077;s:71:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-author-name\";i:1118;s:79:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/comments-pagination-next\";i:1011;s:79:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/query-pagination-numbers\";i:1942;s:59:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/code\";i:2638;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/navigation\";i:133018;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/verse\";i:1860;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/details\";i:2067;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/pullquote\";i:8387;s:68:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/legacy-widget\";i:556;s:76:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-author-biography\";i:971;s:66:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/query-title\";i:1392;s:59:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/html\";i:3708;s:61:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/column\";i:1597;s:68:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/template-part\";i:8502;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/archives\";i:1725;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/social-links\";i:54790;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/missing\";i:617;s:61:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/spacer\";i:4737;s:66:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/social-link\";i:2344;s:75:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-navigation-link\";i:4010;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/image\";i:67389;s:59:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/more\";i:3752;s:61:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/search\";i:18972;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/nextpage\";i:3039;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/text-columns\";i:3034;s:71:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/query-no-results\";i:899;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/comment-date\";i:1112;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/list-item\";i:1099;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/audio\";i:3564;s:73:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-comments-form\";i:9575;s:76:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/query-pagination-next\";i:1039;s:61:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/button\";i:23227;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/loginout\";i:1026;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/table\";i:27288;s:68:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-template\";i:8336;s:59:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/list\";i:2157;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/preformatted\";i:1696;s:61:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/avatar\";i:2296;s:71:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/query-pagination\";i:9403;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/footnotes\";i:2642;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/freeform\";i:41824;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-terms\";i:1715;s:80:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/query-pagination-previous\";i:1051;s:69:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/page-list-item\";i:1109;s:69:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/comments-title\";i:1701;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/home-link\";i:1130;s:74:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-featured-image\";i:28162;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/page-list\";i:7663;s:83:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/comments-pagination-previous\";i:1023;s:74:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/comment-author-name\";i:1192;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/columns\";i:9193;s:70:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/latest-comments\";i:6657;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/latest-posts\";i:11254;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/pattern\";i:411;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/media-text\";i:13788;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-content\";i:1389;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-title\";i:1823;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/query\";i:13889;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/site-title\";i:2201;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/widget-group\";i:374;s:73:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/comment-reply-link\";i:1001;s:73:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/navigation-submenu\";i:5842;s:82:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/comments-pagination-numbers\";i:1833;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/categories\";i:2825;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/block\";i:5072;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/cover\";i:85204;s:54:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks\";i:1501416;s:52:\"/Applications/MAMP/htdocs/wordpress/wp-includes/l10n\";i:30570;s:51:\"/Applications/MAMP/htdocs/wordpress/wp-includes/ID3\";i:1160011;s:57:\"/Applications/MAMP/htdocs/wordpress/wp-includes/PHPMailer\";i:233227;s:61:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/Net\";i:7493;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/Cache\";i:39607;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/Parse\";i:20551;s:70:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/Content/Type\";i:8015;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/Content\";i:8015;s:73:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/XML/Declaration\";i:7098;s:61:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/XML\";i:7098;s:69:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/Decode/HTML\";i:17241;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/Decode\";i:17241;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/HTTP\";i:11487;s:57:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie\";i:458625;s:71:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/format-library\";i:5472;s:70:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/block-library\";i:822550;s:68:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/preferences\";i:8370;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/patterns\";i:5546;s:69:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/edit-widgets\";i:97016;s:66:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/edit-site\";i:465060;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/nux\";i:11540;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/block-directory\";i:15076;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/components\";i:354537;s:77:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/list-reusable-blocks\";i:17844;s:69:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/block-editor\";i:613729;s:74:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/customize-widgets\";i:23540;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/commands\";i:12768;s:66:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/edit-post\";i:150390;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/reusable-blocks\";i:2206;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/editor\";i:129032;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/widgets\";i:23656;s:56:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist\";i:2758332;s:51:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css\";i:3406025;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/images/smilies\";i:10082;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/images/crystal\";i:15541;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/images/media\";i:5263;s:54:\"/Applications/MAMP/htdocs/wordpress/wp-includes/images\";i:102178;s:61:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/codemirror\";i:1287141;s:73:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/wpview\";i:8985;s:74:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/wpemoji\";i:5099;s:81:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/directionality\";i:2749;s:73:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/wplink\";i:26566;s:76:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/wordpress\";i:50628;s:76:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/wpdialogs\";i:3761;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/lists\";i:97383;s:76:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/textcolor\";i:16237;s:80:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/wptextpattern\";i:11923;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/image\";i:55874;s:79:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/compat3x/css\";i:8179;s:75:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/compat3x\";i:21758;s:75:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/tabfocus\";i:5336;s:79:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/wpautoresize\";i:8332;s:71:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/link\";i:32949;s:78:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/wpeditimage\";i:37711;s:74:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/charmap\";i:31811;s:78:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/colorpicker\";i:4910;s:69:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/hr\";i:1347;s:77:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/fullscreen\";i:7779;s:76:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/wpgallery\";i:4806;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/paste\";i:113193;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/media\";i:57914;s:66:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins\";i:607051;s:81:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/skins/wordpress/images\";i:14207;s:74:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/skins/wordpress\";i:22831;s:78:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/skins/lightgray/img\";i:2856;s:80:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/skins/lightgray/fonts\";i:155760;s:74:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/skins/lightgray\";i:210254;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/skins\";i:233085;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/utils\";i:18826;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/langs\";i:15529;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/themes/inlite\";i:452642;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/themes/modern\";i:446221;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/themes\";i:898863;s:58:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce\";i:2853756;s:56:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/jcrop\";i:24976;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/dist/development\";i:179848;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/dist/vendor\";i:2714416;s:55:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/dist\";i:20677627;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/jquery/ui\";i:808535;s:57:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/jquery\";i:1326271;s:55:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/crop\";i:20004;s:73:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/mediaelement/renderers\";i:18880;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/mediaelement\";i:721307;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/swfupload\";i:8715;s:59:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/plupload\";i:490468;s:59:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/thickbox\";i:31266;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/imgareaselect\";i:49553;s:50:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js\";i:29907446;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/block-patterns\";i:8843;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/certificates\";i:233231;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/block-supports\";i:113978;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/theme-compat\";i:15656;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Requests/library\";i:261;s:70:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Requests/src/Transport\";i:35060;s:69:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Requests/src/Response\";i:3101;s:66:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Requests/src/Proxy\";i:4217;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Requests/src/Auth\";i:2541;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Requests/src/Cookie\";i:4363;s:80:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Requests/src/Exception/Transport\";i:1397;s:75:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Requests/src/Exception/Http\";i:16715;s:70:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Requests/src/Exception\";i:22464;s:68:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Requests/src/Utility\";i:7176;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Requests/src\";i:214155;s:56:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Requests\";i:214416;s:56:\"/Applications/MAMP/htdocs/wordpress/wp-includes/html-api\";i:210846;s:52:\"/Applications/MAMP/htdocs/wordpress/wp-includes/pomo\";i:57144;s:66:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sitemaps/providers\";i:17593;s:56:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sitemaps\";i:47491;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/block-bindings\";i:3610;s:86:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/namespaced/Core/ChaCha20\";i:224;s:86:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/namespaced/Core/Poly1305\";i:112;s:91:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/namespaced/Core/Curve25519/Ge\";i:602;s:88:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/namespaced/Core/Curve25519\";i:820;s:77:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/namespaced/Core\";i:2444;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/namespaced\";i:2698;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/lib\";i:87360;s:85:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core32/SecretStream\";i:3656;s:81:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core32/ChaCha20\";i:6407;s:81:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core32/Poly1305\";i:15965;s:86:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core32/Curve25519/Ge\";i:8177;s:83:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core32/Curve25519\";i:122690;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core32\";i:437041;s:83:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core/SecretStream\";i:3624;s:77:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core/Base64\";i:22135;s:79:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core/ChaCha20\";i:5264;s:79:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core/Poly1305\";i:12912;s:84:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core/Curve25519/Ge\";i:7881;s:81:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core/Curve25519\";i:121645;s:70:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core\";i:452743;s:71:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/PHP52\";i:4116;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src\";i:1207254;s:61:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat\";i:1303525;s:66:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Text/Diff/Renderer\";i:5528;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Text/Diff/Engine\";i:31802;s:57:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Text/Diff\";i:44136;s:52:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Text\";i:57049;s:58:\"/Applications/MAMP/htdocs/wordpress/wp-includes/php-compat\";i:1253;s:51:\"/Applications/MAMP/htdocs/wordpress/wp-includes/IXR\";i:33915;s:53:\"/Applications/MAMP/htdocs/wordpress/wp-includes/fonts\";i:326255;s:54:\"/Applications/MAMP/htdocs/wordpress/wp-includes/assets\";i:26062;s:55:\"/Applications/MAMP/htdocs/wordpress/wp-includes/widgets\";i:158520;s:66:\"/Applications/MAMP/htdocs/wordpress/wp-includes/rest-api/endpoints\";i:846393;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-includes/rest-api/search\";i:16749;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-includes/rest-api/fields\";i:22510;s:56:\"/Applications/MAMP/htdocs/wordpress/wp-includes/rest-api\";i:975239;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/style-engine\";i:43906;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/interactivity-api\";i:52125;s:57:\"/Applications/MAMP/htdocs/wordpress/wp-includes/customize\";i:176574;s:47:\"/Applications/MAMP/htdocs/wordpress/wp-includes\";i:48108203;s:46:\"/Applications/MAMP/htdocs/wordpress/wp-content\";i:0;s:35:\"/Applications/MAMP/htdocs/wordpress\";i:57339034;s:79:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentyfour/patterns\";i:156197;s:77:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentyfour/styles\";i:33892;s:76:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentyfour/parts\";i:1473;s:80:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentyfour/templates\";i:12593;s:81:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentyfour/assets/css\";i:357;s:84:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentyfour/assets/images\";i:1152100;s:89:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentyfour/assets/fonts/cardo\";i:388180;s:89:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentyfour/assets/fonts/inter\";i:331004;s:99:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentyfour/assets/fonts/instrument-sans\";i:187522;s:88:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentyfour/assets/fonts/jost\";i:116852;s:83:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentyfour/assets/fonts\";i:1023558;s:77:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentyfour/assets\";i:2176015;s:70:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentyfour\";i:3353652;s:82:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentytwo/inc/patterns\";i:158253;s:73:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentytwo/inc\";i:162261;s:76:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentytwo/styles\";i:11351;s:75:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentytwo/parts\";i:2724;s:79:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentytwo/templates\";i:13966;s:83:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentytwo/assets/images\";i:1503139;s:83:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentytwo/assets/videos\";i:468755;s:90:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentytwo/assets/fonts/dm-sans\";i:301601;s:99:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentytwo/assets/fonts/source-serif-pro\";i:1409152;s:91:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentytwo/assets/fonts/ibm-plex\";i:423403;s:88:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentytwo/assets/fonts/inter\";i:809786;s:82:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentytwo/assets/fonts\";i:4348514;s:76:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentytwo/assets\";i:6320408;s:69:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentytwo\";i:6693483;s:80:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentythree/patterns\";i:9142;s:78:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentythree/styles\";i:52627;s:77:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentythree/parts\";i:727;s:81:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentythree/templates\";i:10626;s:92:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentythree/assets/fonts/dm-sans\";i:128429;s:101:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentythree/assets/fonts/source-serif-pro\";i:1409152;s:90:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentythree/assets/fonts/inter\";i:807760;s:98:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentythree/assets/fonts/ibm-plex-mono\";i:148118;s:84:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentythree/assets/fonts\";i:2493459;s:78:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentythree/assets\";i:2493459;s:71:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/twentytwentythree\";i:2659589;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/caseguard/inc\";i:0;s:71:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/caseguard/classes\";i:0;s:78:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/caseguard/template-parts\";i:0;s:73:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/caseguard/templates\";i:0;s:74:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/caseguard/assets/css\";i:0;s:77:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/caseguard/assets/images\";i:46391159;s:73:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/caseguard/assets/js\";i:4535;s:76:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/caseguard/assets/fonts\";i:0;s:70:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/caseguard/assets\";i:46395694;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/caseguard\";i:47259944;s:53:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes\";i:59966668;s:54:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins\";i:28;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-content/uploads/2024/05\";i:61283;s:59:\"/Applications/MAMP/htdocs/wordpress/wp-content/uploads/2024\";i:61283;s:54:\"/Applications/MAMP/htdocs/wordpress/wp-content/uploads\";i:61283;}', 'no'),
(504, 'category_children', 'a:0:{}', 'yes'),
(553, '_site_transient_timeout_browser_ff7e7f203dcbfae3c2289c78cf5e6085', '1716756056', 'no'),
(554, '_site_transient_browser_ff7e7f203dcbfae3c2289c78cf5e6085', 'a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:4:\"16.6\";s:8:\"platform\";s:6:\"iPhone\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:1;}', 'no'),
(604, '_site_transient_timeout_theme_roots', '1716702378', 'no'),
(605, '_site_transient_theme_roots', 'a:1:{s:9:\"caseguard\";s:7:\"/themes\";}', 'no'),
(606, '_site_transient_timeout_php_check_990bfacb848fa087bcfc06850f5e4447', '1717305379', 'no'),
(607, '_site_transient_php_check_990bfacb848fa087bcfc06850f5e4447', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');

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
(3, 6, '_edit_lock', '1715356302:1'),
(4, 6, '_wp_trash_meta_status', 'draft'),
(5, 6, '_wp_trash_meta_time', '1715356369'),
(6, 6, '_wp_desired_post_slug', ''),
(7, 2, '_edit_lock', '1716002085:1'),
(8, 3, '_edit_lock', '1715356245:1'),
(9, 3, '_wp_trash_meta_status', 'draft'),
(10, 3, '_wp_trash_meta_time', '1715356401'),
(11, 3, '_wp_desired_post_slug', 'privacy-policy'),
(17, 13, '_wp_attached_file', '2024/05/CaseGuard_logo.png'),
(18, 13, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:186;s:6:\"height\";i:40;s:4:\"file\";s:26:\"2024/05/CaseGuard_logo.png\";s:8:\"filesize\";i:2993;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"CaseGuard_logo-150x40.png\";s:5:\"width\";i:150;s:6:\"height\";i:40;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2744;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(22, 19, '_wp_attached_file', '2024/05/cropped-CaseGuard_logo.png'),
(23, 19, '_wp_attachment_context', 'site-icon'),
(24, 19, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:34:\"2024/05/cropped-CaseGuard_logo.png\";s:8:\"filesize\";i:7894;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"cropped-CaseGuard_logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8299;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"cropped-CaseGuard_logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6189;}s:4:\"team\";a:5:{s:4:\"file\";s:34:\"cropped-CaseGuard_logo-475x475.png\";s:5:\"width\";i:475;s:6:\"height\";i:475;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:11377;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:34:\"cropped-CaseGuard_logo-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8228;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:34:\"cropped-CaseGuard_logo-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5445;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:34:\"cropped-CaseGuard_logo-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6769;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:32:\"cropped-CaseGuard_logo-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1345;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 19, '_oembed_1dd58980800263b4d62e49ee7f977751', '{{unknown}}'),
(29, 22, '_edit_lock', '1716007327:1'),
(33, 24, '_edit_lock', '1716001856:1'),
(34, 24, '_wp_trash_meta_status', 'publish'),
(35, 24, '_wp_trash_meta_time', '1716002266'),
(36, 24, '_wp_desired_post_slug', 'case-guard'),
(37, 2, '_wp_trash_meta_status', 'publish'),
(38, 2, '_wp_trash_meta_time', '1716002270'),
(39, 2, '_wp_desired_post_slug', 'sample-page'),
(41, 28, '_edit_lock', '1716003529:1'),
(43, 28, '_wp_trash_meta_status', 'publish'),
(44, 28, '_wp_trash_meta_time', '1716007455'),
(45, 28, '_wp_desired_post_slug', 'caseguard-supppp'),
(46, 35, '_edit_lock', '1716010941:1'),
(49, 39, '_edit_lock', '1716010975:1'),
(50, 3, '_wp_suggested_privacy_policy_content', 'a:3:{s:11:\"plugin_name\";s:9:\"WordPress\";s:11:\"policy_text\";s:4460:\"<h2 class=\"wp-block-heading\">Who we are</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost.</p><h2 class=\"wp-block-heading\">Comments</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h2 class=\"wp-block-heading\">Media</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h2 class=\"wp-block-heading\">Cookies</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h2 class=\"wp-block-heading\">Embedded content from other websites</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h2 class=\"wp-block-heading\">Who we share your data with</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><h2 class=\"wp-block-heading\">How long we retain your data</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2 class=\"wp-block-heading\">What rights you have over your data</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2 class=\"wp-block-heading\">Where your data is sent</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\";s:5:\"added\";i:1716055396;}'),
(51, 41, '_edit_lock', '1716149482:1'),
(52, 42, '_wp_attached_file', '2024/05/IMG_5_Green.jpg'),
(53, 42, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:23:\"2024/05/IMG_5_Green.jpg\";s:8:\"filesize\";i:189646;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"IMG_5_Green-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6773;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"IMG_5_Green-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66961;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"IMG_5_Green-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3602;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"IMG_5_Green-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36152;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"IMG_5_Green-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:162365;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 44, '_edit_lock', '1716149503:1'),
(61, 47, '_edit_lock', '1716149595:1'),
(62, 48, '_wp_attached_file', '2024/05/IMG_1_Black.jpg'),
(63, 48, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1919;s:6:\"height\";i:1281;s:4:\"file\";s:23:\"2024/05/IMG_1_Black.jpg\";s:8:\"filesize\";i:122919;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"IMG_1_Black-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4925;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"IMG_1_Black-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:54844;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"IMG_1_Black-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2314;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"IMG_1_Black-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:32925;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"IMG_1_Black-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:110388;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(68, 50, '_edit_lock', '1716149584:1'),
(69, 51, '_wp_attached_file', '2024/05/IMG_3_Black.jpg'),
(70, 51, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1919;s:6:\"height\";i:1277;s:4:\"file\";s:23:\"2024/05/IMG_3_Black.jpg\";s:8:\"filesize\";i:345492;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"IMG_3_Black-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8720;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"IMG_3_Black-1024x681.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:681;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:135695;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"IMG_3_Black-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3753;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"IMG_3_Black-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:75037;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"IMG_3_Black-1536x1022.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1022;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:281157;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(73, 53, '_edit_lock', '1716149539:1'),
(74, 54, '_wp_attached_file', '2024/05/IMG_2_Blue.jpg'),
(75, 54, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:22:\"2024/05/IMG_2_Blue.jpg\";s:8:\"filesize\";i:211849;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"IMG_2_Blue-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7585;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"IMG_2_Blue-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:81916;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"IMG_2_Blue-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3490;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"IMG_2_Blue-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:47020;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"IMG_2_Blue-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:177791;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(78, 56, '_edit_lock', '1716149560:1'),
(79, 57, '_wp_attached_file', '2024/05/IMG_4_Blue.jpg'),
(80, 57, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:22:\"2024/05/IMG_4_Blue.jpg\";s:8:\"filesize\";i:389464;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"IMG_4_Blue-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8168;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"IMG_4_Blue-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:121253;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"IMG_4_Blue-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3678;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"IMG_4_Blue-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64554;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"IMG_4_Blue-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:292509;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 59, '_edit_lock', '1716144691:1'),
(84, 1, '_wp_trash_meta_status', 'publish'),
(85, 1, '_wp_trash_meta_time', '1716144843'),
(86, 1, '_wp_desired_post_slug', 'hello-world'),
(87, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(88, 61, '_edit_lock', '1716145030:1'),
(91, 56, '_thumbnail_id', '57'),
(94, 53, '_thumbnail_id', '54'),
(97, 50, '_thumbnail_id', '51'),
(100, 47, '_thumbnail_id', '48'),
(106, 41, '_thumbnail_id', '42'),
(107, 63, '_edit_lock', '1716146239:1'),
(110, 65, '_edit_lock', '1716149485:1'),
(121, 71, '_edit_lock', '1716172229:1'),
(126, 74, 'footnotes', ''),
(133, 78, '_edit_lock', '1716172093:1'),
(134, 79, '_edit_lock', '1716172616:1'),
(137, 81, '_wp_attached_file', '2024/05/cropped-CaseGuard_logo-1.png'),
(138, 81, '_wp_attachment_context', 'site-icon'),
(139, 81, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:36:\"2024/05/cropped-CaseGuard_logo-1.png\";s:8:\"filesize\";i:7894;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:36:\"cropped-CaseGuard_logo-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8299;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:36:\"cropped-CaseGuard_logo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6189;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:36:\"cropped-CaseGuard_logo-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8228;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:36:\"cropped-CaseGuard_logo-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5445;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:36:\"cropped-CaseGuard_logo-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6769;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:34:\"cropped-CaseGuard_logo-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1345;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 82, '_edit_lock', '1716173229:1'),
(141, 82, '_wp_trash_meta_status', 'publish'),
(142, 82, '_wp_trash_meta_time', '1716173265');

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
(1, 1, '2024-05-10 04:00:29', '2024-05-10 04:00:29', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2024-05-19 18:54:03', '2024-05-19 18:54:03', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1),
(2, 1, '2024-05-10 04:00:29', '2024-05-10 04:00:29', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'CaseGuard - Test', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2024-05-18 03:17:50', '2024-05-18 03:17:50', '', 0, 'http://localhost/?page_id=2', 0, 'page', '', 0),
(3, 1, '2024-05-10 04:00:29', '2024-05-10 04:00:29', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2024-05-10 15:53:21', '2024-05-10 15:53:21', '', 0, 'http://localhost/?page_id=3', 0, 'page', '', 0),
(4, 0, '2024-05-10 04:00:30', '2024-05-10 04:00:30', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-05-10 04:00:30', '2024-05-10 04:00:30', '', 0, 'http://localhost/2024/05/10/navigation/', 0, 'wp_navigation', '', 0),
(6, 1, '2024-05-10 15:52:49', '2024-05-10 15:52:49', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|30\",\"right\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|30\",\"left\":\"var:preset|spacing|30\"}}},\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull\" style=\"padding-top:var(--wp--preset--spacing--30);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30);padding-left:var(--wp--preset--spacing--30)\"><!-- wp:group {\"align\":\"wide\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\",\"flexWrap\":\"wrap\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"24px\"}},\"layout\":{\"type\":\"flex\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo /-->\n\n<!-- wp:site-title {\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|contrast\"}}}}} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:navigation {\"ref\":4,\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"right\"}} /--></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->', '', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2024-05-10 15:52:49', '2024-05-10 15:52:49', '', 0, 'http://localhost/?page_id=6', 0, 'page', '', 0),
(7, 1, '2024-05-10 15:44:43', '2024-05-10 15:44:43', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentyfour', '', '', '2024-05-10 15:44:43', '2024-05-10 15:44:43', '', 0, 'http://localhost/2024/05/10/wp-global-styles-twentytwentyfour/', 0, 'wp_global_styles', '', 0),
(8, 1, '2024-05-10 15:50:11', '2024-05-10 15:50:11', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|30\",\"right\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|30\",\"left\":\"var:preset|spacing|30\"}}},\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull\" style=\"padding-top:var(--wp--preset--spacing--30);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30);padding-left:var(--wp--preset--spacing--30)\"><!-- wp:group {\"align\":\"wide\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\",\"flexWrap\":\"wrap\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"24px\"}},\"layout\":{\"type\":\"flex\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo /-->\n\n<!-- wp:site-title {\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|contrast\"}}}}} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:navigation {\"ref\":4,\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"right\"}} /--></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->', '', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2024-05-10 15:50:11', '2024-05-10 15:50:11', '', 6, 'http://localhost/?p=8', 0, 'revision', '', 0),
(9, 1, '2024-05-10 15:53:21', '2024-05-10 15:53:21', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2024-05-10 15:53:21', '2024-05-10 15:53:21', '', 3, 'http://localhost/?p=9', 0, 'revision', '', 0),
(10, 1, '2024-05-10 15:53:25', '2024-05-10 15:53:25', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2024-05-10 15:53:25', '2024-05-10 15:53:25', '', 2, 'http://localhost/?p=10', 0, 'revision', '', 0),
(13, 1, '2024-05-11 03:08:19', '2024-05-11 03:08:19', '', 'CaseGuard_logo', '', 'inherit', 'open', 'closed', '', 'caseguard_logo', '', '', '2024-05-11 03:08:19', '2024-05-11 03:08:19', '', 0, 'http://localhost/wp-content/uploads/2024/05/CaseGuard_logo.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2024-05-11 03:13:11', '2024-05-11 03:13:11', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|30\",\"right\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|30\",\"left\":\"var:preset|spacing|30\"}}},\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull\" style=\"padding-top:var(--wp--preset--spacing--30);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30);padding-left:var(--wp--preset--spacing--30)\"><!-- wp:group {\"align\":\"wide\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\",\"flexWrap\":\"wrap\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"24px\"}},\"layout\":{\"type\":\"flex\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo {\"width\":120,\"shouldSyncIcon\":true} /-->\n\n<!-- wp:site-title {\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|contrast\"}}}}} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:navigation {\"ref\":4,\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"right\"}} /--></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2024-05-11 03:13:11', '2024-05-11 03:13:11', '', 2, 'http://localhost/?p=17', 0, 'revision', '', 0),
(18, 1, '2024-05-11 03:13:47', '2024-05-11 03:13:47', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|30\",\"right\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|30\",\"left\":\"var:preset|spacing|30\"}}},\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull\" style=\"padding-top:var(--wp--preset--spacing--30);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30);padding-left:var(--wp--preset--spacing--30)\"><!-- wp:group {\"align\":\"wide\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\",\"flexWrap\":\"wrap\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"24px\"}},\"layout\":{\"type\":\"flex\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo {\"width\":120,\"shouldSyncIcon\":true} /--></div>\n<!-- /wp:group --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2024-05-11 03:13:47', '2024-05-11 03:13:47', '', 2, 'http://localhost/?p=18', 0, 'revision', '', 0),
(19, 1, '2024-05-11 03:31:36', '2024-05-11 03:31:36', 'http://localhost/wp-content/uploads/2024/05/cropped-CaseGuard_logo.png', 'cropped-CaseGuard_logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-caseguard_logo-png', '', '', '2024-05-11 03:31:36', '2024-05-11 03:31:36', '', 13, 'http://localhost/wp-content/uploads/2024/05/cropped-CaseGuard_logo.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2024-05-18 01:44:26', '2024-05-18 01:44:26', '<!-- wp:paragraph -->\n<p>This is a test...</p>\n<!-- /wp:paragraph -->', 'Caseguard Template', '', 'publish', 'closed', 'closed', '', 'caseguard-assignment', '', '', '2024-05-18 04:44:26', '2024-05-18 04:44:26', '', 0, 'http://localhost/?page_id=22', 0, 'page', '', 0),
(23, 1, '2024-05-18 01:44:26', '2024-05-18 01:44:26', '<!-- wp:paragraph -->\n<p>This is a test</p>\n<!-- /wp:paragraph -->', 'Caseguard Assignment', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2024-05-18 01:44:26', '2024-05-18 01:44:26', '', 22, 'http://localhost/?p=23', 0, 'revision', '', 0),
(24, 1, '2024-05-18 02:04:17', '2024-05-18 02:04:17', '<!-- wp:paragraph -->\n<p>Test</p>\n<!-- /wp:paragraph -->', 'Case Guard', '', 'trash', 'closed', 'closed', '', 'case-guard__trashed', '', '', '2024-05-18 03:17:46', '2024-05-18 03:17:46', '', 0, 'http://localhost/?page_id=24', 0, 'page', '', 0),
(25, 1, '2024-05-18 02:04:17', '2024-05-18 02:04:17', '<!-- wp:paragraph -->\n<p>Test</p>\n<!-- /wp:paragraph -->', 'Case Guard', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2024-05-18 02:04:17', '2024-05-18 02:04:17', '', 24, 'http://localhost/?p=25', 0, 'revision', '', 0),
(26, 1, '2024-05-18 03:12:11', '2024-05-18 03:12:11', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'CaseGuard - Test', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2024-05-18 03:12:11', '2024-05-18 03:12:11', '', 2, 'http://localhost/?p=26', 0, 'revision', '', 0),
(28, 1, '2024-05-18 03:18:39', '2024-05-18 03:18:39', '<!-- wp:paragraph -->\n<p>Helloooooooooooo</p>\n<!-- /wp:paragraph -->', 'CaseGuard - Supppp', '', 'trash', 'closed', 'closed', '', 'caseguard-supppp__trashed', '', '', '2024-05-18 04:44:15', '2024-05-18 04:44:15', '', 0, 'http://localhost/?page_id=28', 0, 'page', '', 0),
(29, 1, '2024-05-18 03:18:39', '2024-05-18 03:18:39', '<!-- wp:paragraph -->\n<p>suppppppp</p>\n<!-- /wp:paragraph -->', 'CaseGuard - Supppp', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2024-05-18 03:18:39', '2024-05-18 03:18:39', '', 28, 'http://localhost/?p=29', 0, 'revision', '', 0),
(30, 1, '2024-05-18 03:35:59', '2024-05-18 03:35:59', '<!-- wp:paragraph -->\n<p>Helloooooooooooo</p>\n<!-- /wp:paragraph -->', 'CaseGuard - Supppp', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2024-05-18 03:35:59', '2024-05-18 03:35:59', '', 28, 'http://localhost/?p=30', 0, 'revision', '', 0),
(32, 1, '2024-05-18 03:49:04', '2024-05-18 03:49:04', '<!-- wp:paragraph -->\n<p>This is a test </p>\n<!-- /wp:paragraph -->', 'Caseguard Template', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2024-05-18 03:49:04', '2024-05-18 03:49:04', '', 22, 'http://localhost/?p=32', 0, 'revision', '', 0),
(33, 1, '2024-05-18 04:44:26', '2024-05-18 04:44:26', '<!-- wp:paragraph -->\n<p>This is a test...</p>\n<!-- /wp:paragraph -->', 'Caseguard Template', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2024-05-18 04:44:26', '2024-05-18 04:44:26', '', 22, 'http://localhost/?p=33', 0, 'revision', '', 0),
(35, 1, '2024-05-18 05:44:24', '2024-05-18 05:44:24', '', 'Button1', '', 'publish', 'closed', 'closed', '', 'button1', '', '', '2024-05-18 05:44:24', '2024-05-18 05:44:24', '', 0, 'http://localhost/?page_id=35', 0, 'page', '', 0),
(36, 1, '2024-05-18 05:44:24', '2024-05-18 05:44:24', '', 'Button1', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2024-05-18 05:44:24', '2024-05-18 05:44:24', '', 35, 'http://localhost/?p=36', 0, 'revision', '', 0),
(39, 1, '2024-05-18 05:45:02', '2024-05-18 05:45:02', '', 'Button2', '', 'publish', 'closed', 'closed', '', 'button2', '', '', '2024-05-18 05:45:02', '2024-05-18 05:45:02', '', 0, 'http://localhost/?page_id=39', 0, 'page', '', 0),
(40, 1, '2024-05-18 05:45:02', '2024-05-18 05:45:02', '', 'Button2', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2024-05-18 05:45:02', '2024-05-18 05:45:02', '', 39, 'http://localhost/?p=40', 0, 'revision', '', 0),
(41, 1, '2024-05-19 18:48:15', '2024-05-19 18:48:15', '<!-- wp:image {\"id\":42,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wp-content/uploads/2024/05/IMG_5_Green-1024x683.jpg\" alt=\"\" class=\"wp-image-42\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Green 1', '', 'publish', 'open', 'open', '', 'green-article-1', '', '', '2024-05-19 20:13:29', '2024-05-19 20:13:29', '', 0, 'http://localhost/?p=41', 0, 'post', '', 0),
(42, 1, '2024-05-19 18:44:37', '2024-05-19 18:44:37', '', 'IMG_5_Green', '', 'inherit', 'open', 'closed', '', 'img_5_green', '', '', '2024-05-19 18:44:37', '2024-05-19 18:44:37', '', 41, 'http://localhost/wp-content/uploads/2024/05/IMG_5_Green.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2024-05-19 18:48:15', '2024-05-19 18:48:15', '<!-- wp:image {\"id\":42,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wp-content/uploads/2024/05/IMG_5_Green-1024x683.jpg\" alt=\"\" class=\"wp-image-42\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Green Article 1', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2024-05-19 18:48:15', '2024-05-19 18:48:15', '', 41, 'http://localhost/?p=43', 0, 'revision', '', 0),
(44, 1, '2024-05-19 18:49:27', '2024-05-19 18:49:27', '<!-- wp:image {\"id\":45,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wp-content/uploads/2024/05/IMG_6_Green-1024x683.jpg\" alt=\"\" class=\"wp-image-45\"/></figure>\n<!-- /wp:image -->', 'Green 2', '', 'publish', 'open', 'open', '', 'green-article-2', '', '', '2024-05-19 20:14:02', '2024-05-19 20:14:02', '', 0, 'http://localhost/?p=44', 0, 'post', '', 0),
(46, 1, '2024-05-19 18:49:27', '2024-05-19 18:49:27', '<!-- wp:image {\"id\":45,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wp-content/uploads/2024/05/IMG_6_Green-1024x683.jpg\" alt=\"\" class=\"wp-image-45\"/></figure>\n<!-- /wp:image -->', 'Green Article 2', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2024-05-19 18:49:27', '2024-05-19 18:49:27', '', 44, 'http://localhost/?p=46', 0, 'revision', '', 0),
(47, 1, '2024-05-19 18:50:12', '2024-05-19 18:50:12', '<!-- wp:image {\"id\":48,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wp-content/uploads/2024/05/IMG_1_Black-1024x684.jpg\" alt=\"\" class=\"wp-image-48\"/></figure>\n<!-- /wp:image -->', 'Black 1', '', 'publish', 'open', 'open', '', 'black-article-1', '', '', '2024-05-19 20:15:37', '2024-05-19 20:15:37', '', 0, 'http://localhost/?p=47', 0, 'post', '', 0),
(48, 1, '2024-05-19 18:50:02', '2024-05-19 18:50:02', '', 'IMG_1_Black', '', 'inherit', 'open', 'closed', '', 'img_1_black', '', '', '2024-05-19 18:50:02', '2024-05-19 18:50:02', '', 47, 'http://localhost/wp-content/uploads/2024/05/IMG_1_Black.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2024-05-19 18:50:12', '2024-05-19 18:50:12', '<!-- wp:image {\"id\":48,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wp-content/uploads/2024/05/IMG_1_Black-1024x684.jpg\" alt=\"\" class=\"wp-image-48\"/></figure>\n<!-- /wp:image -->', 'Black Article 1', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2024-05-19 18:50:12', '2024-05-19 18:50:12', '', 47, 'http://localhost/?p=49', 0, 'revision', '', 0),
(50, 1, '2024-05-19 18:52:09', '2024-05-19 18:52:09', '<!-- wp:image {\"id\":51,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wp-content/uploads/2024/05/IMG_3_Black-1024x681.jpg\" alt=\"\" class=\"wp-image-51\"/></figure>\n<!-- /wp:image -->', 'Black 2', '', 'publish', 'open', 'open', '', 'black-article-2', '', '', '2024-05-19 20:15:26', '2024-05-19 20:15:26', '', 0, 'http://localhost/?p=50', 0, 'post', '', 0),
(51, 1, '2024-05-19 18:51:38', '2024-05-19 18:51:38', '', 'IMG_3_Black', '', 'inherit', 'open', 'closed', '', 'img_3_black', '', '', '2024-05-19 18:51:38', '2024-05-19 18:51:38', '', 50, 'http://localhost/wp-content/uploads/2024/05/IMG_3_Black.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2024-05-19 18:52:09', '2024-05-19 18:52:09', '<!-- wp:image {\"id\":51,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wp-content/uploads/2024/05/IMG_3_Black-1024x681.jpg\" alt=\"\" class=\"wp-image-51\"/></figure>\n<!-- /wp:image -->', 'Black Article 2', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2024-05-19 18:52:09', '2024-05-19 18:52:09', '', 50, 'http://localhost/?p=52', 0, 'revision', '', 0),
(53, 1, '2024-05-19 18:52:57', '2024-05-19 18:52:57', '<!-- wp:image {\"id\":54,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wp-content/uploads/2024/05/IMG_2_Blue-1024x683.jpg\" alt=\"\" class=\"wp-image-54\"/></figure>\n<!-- /wp:image -->', 'Blue 1', '', 'publish', 'open', 'open', '', 'blue-article-1', '', '', '2024-05-19 20:14:40', '2024-05-19 20:14:40', '', 0, 'http://localhost/?p=53', 0, 'post', '', 0),
(54, 1, '2024-05-19 18:52:48', '2024-05-19 18:52:48', '', 'IMG_2_Blue', '', 'inherit', 'open', 'closed', '', 'img_2_blue', '', '', '2024-05-19 18:52:48', '2024-05-19 18:52:48', '', 53, 'http://localhost/wp-content/uploads/2024/05/IMG_2_Blue.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2024-05-19 18:52:57', '2024-05-19 18:52:57', '<!-- wp:image {\"id\":54,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wp-content/uploads/2024/05/IMG_2_Blue-1024x683.jpg\" alt=\"\" class=\"wp-image-54\"/></figure>\n<!-- /wp:image -->', 'Blue Article 1', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2024-05-19 18:52:57', '2024-05-19 18:52:57', '', 53, 'http://localhost/?p=55', 0, 'revision', '', 0),
(56, 1, '2024-05-19 18:53:36', '2024-05-19 18:53:36', '', 'Blue 2', '', 'publish', 'open', 'open', '', 'blue-article-2', '', '', '2024-05-19 20:15:01', '2024-05-19 20:15:01', '', 0, 'http://localhost/?p=56', 0, 'post', '', 0),
(57, 1, '2024-05-19 18:53:28', '2024-05-19 18:53:28', '', 'IMG_4_Blue', '', 'inherit', 'open', 'closed', '', 'img_4_blue', '', '', '2024-05-19 18:53:28', '2024-05-19 18:53:28', '', 56, 'http://localhost/wp-content/uploads/2024/05/IMG_4_Blue.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2024-05-19 18:53:36', '2024-05-19 18:53:36', '<!-- wp:image {\"id\":57,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wp-content/uploads/2024/05/IMG_4_Blue-1024x683.jpg\" alt=\"\" class=\"wp-image-57\"/></figure>\n<!-- /wp:image -->', 'Blue Article 2', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2024-05-19 18:53:36', '2024-05-19 18:53:36', '', 56, 'http://localhost/?p=58', 0, 'revision', '', 0),
(59, 1, '2024-05-19 18:53:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-05-19 18:53:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=59', 0, 'post', '', 0),
(60, 1, '2024-05-19 18:54:03', '2024-05-19 18:54:03', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2024-05-19 18:54:03', '2024-05-19 18:54:03', '', 1, 'http://localhost/?p=60', 0, 'revision', '', 0),
(61, 1, '2024-05-19 18:59:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-05-19 18:59:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=61', 0, 'post', '', 0),
(62, 1, '2024-05-19 19:01:25', '2024-05-19 19:01:25', '', 'Blue Article 2', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2024-05-19 19:01:25', '2024-05-19 19:01:25', '', 56, 'http://localhost/?p=62', 0, 'revision', '', 0),
(63, 1, '2024-05-19 19:19:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-05-19 19:19:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=63', 0, 'post', '', 0),
(64, 1, '2024-05-19 20:13:29', '2024-05-19 20:13:29', '<!-- wp:image {\"id\":42,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wp-content/uploads/2024/05/IMG_5_Green-1024x683.jpg\" alt=\"\" class=\"wp-image-42\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Green 1', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2024-05-19 20:13:29', '2024-05-19 20:13:29', '', 41, 'http://localhost/?p=64', 0, 'revision', '', 0),
(65, 1, '2024-05-19 20:13:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-05-19 20:13:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=65', 0, 'post', '', 0),
(66, 1, '2024-05-19 20:14:02', '2024-05-19 20:14:02', '<!-- wp:image {\"id\":45,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wp-content/uploads/2024/05/IMG_6_Green-1024x683.jpg\" alt=\"\" class=\"wp-image-45\"/></figure>\n<!-- /wp:image -->', 'Green 2', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2024-05-19 20:14:02', '2024-05-19 20:14:02', '', 44, 'http://localhost/?p=66', 0, 'revision', '', 0),
(67, 1, '2024-05-19 20:14:40', '2024-05-19 20:14:40', '<!-- wp:image {\"id\":54,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wp-content/uploads/2024/05/IMG_2_Blue-1024x683.jpg\" alt=\"\" class=\"wp-image-54\"/></figure>\n<!-- /wp:image -->', 'Blue 1', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2024-05-19 20:14:40', '2024-05-19 20:14:40', '', 53, 'http://localhost/?p=67', 0, 'revision', '', 0),
(68, 1, '2024-05-19 20:15:01', '2024-05-19 20:15:01', '', 'Blue 2', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2024-05-19 20:15:01', '2024-05-19 20:15:01', '', 56, 'http://localhost/?p=68', 0, 'revision', '', 0),
(69, 1, '2024-05-19 20:15:26', '2024-05-19 20:15:26', '<!-- wp:image {\"id\":51,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wp-content/uploads/2024/05/IMG_3_Black-1024x681.jpg\" alt=\"\" class=\"wp-image-51\"/></figure>\n<!-- /wp:image -->', 'Black 2', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2024-05-19 20:15:26', '2024-05-19 20:15:26', '', 50, 'http://localhost/?p=69', 0, 'revision', '', 0),
(70, 1, '2024-05-19 20:15:37', '2024-05-19 20:15:37', '<!-- wp:image {\"id\":48,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wp-content/uploads/2024/05/IMG_1_Black-1024x684.jpg\" alt=\"\" class=\"wp-image-48\"/></figure>\n<!-- /wp:image -->', 'Black 1', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2024-05-19 20:15:37', '2024-05-19 20:15:37', '', 47, 'http://localhost/?p=70', 0, 'revision', '', 0),
(71, 1, '2024-05-20 02:15:58', '2024-05-20 02:15:58', '<p style=\"color: white;\"><span style=\"font-weight:bold;\"> Lorem ipsum </span> dolor sit amet, consectetur adipiscing elit. Cras tortor nibh, vestibulum id elit at, eleifend condimentum mi. Nunc suscipit ullamcorper dolor, et suscipit leo consequat nec. Sed sit amet neque sollicitudin,semper urna et, rutrum massa. Suspendisse nec euismod ex. Pellentesque nunc metus, rhoncus sed scelerisque ut, porta non eros.</p>', 'Section 1', '', 'publish', 'open', 'open', '', '71', '', '', '2024-05-20 02:20:46', '2024-05-20 02:20:46', '', 0, 'http://localhost/?p=71', 0, 'post', '', 0),
(72, 1, '2024-05-20 02:15:58', '2024-05-20 02:15:58', ' <p style=\"color: white;\"><span style=\"font-weight:bold;\"> Lorem ipsum </span> dolor sit amet, \n            consectetur adipiscing elit. \n            Cras tortor nibh, vestibulum id elit at, eleifend condimentum mi. \n            Nunc suscipit ullamcorper dolor, et suscipit leo consequat nec. \n            Sed sit amet neque sollicitudin, semper urna et, rutrum massa. \n            Suspendisse nec euismod ex. Pellentesque nunc metus, rhoncus sed scelerisque ut, porta non eros.\n </p>', '', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2024-05-20 02:15:58', '2024-05-20 02:15:58', '', 71, 'http://localhost/?p=72', 0, 'revision', '', 0),
(73, 1, '2024-05-20 02:17:38', '2024-05-20 02:17:38', ' <p style=\"color: white;\"><span style=\"font-weight:bold;\"> Lorem ipsum </span> dolor sit amet, \n            consectetur adipiscing elit. \n            Cras tortor nibh, vestibulum id elit at, eleifend condimentum mi. \n            Nunc suscipit ullamcorper dolor, et suscipit leo consequat nec. \n            Sed sit amet neque sollicitudin, semper urna et, rutrum massa. \n            Suspendisse nec euismod ex. Pellentesque nunc metus, rhoncus sed scelerisque ut, porta non eros.\n </p>', 'Section 1', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2024-05-20 02:17:38', '2024-05-20 02:17:38', '', 71, 'http://localhost/?p=73', 0, 'revision', '', 0),
(74, 1, '2024-05-20 02:18:56', '2024-05-20 02:18:56', ' <p style=\"color: white;\"><span style=\"font-weight:bold;\"> Lorem ipsum </span> dolor sit amet, consectetur adipiscing elit. Cras tortor nibh, vestibulum id elit at, eleifend condimentum mi. Nunc suscipit ullamcorper dolor, et suscipit leo consequat nec. \n            Sed sit amet neque sollicitudin, semper urna et, rutrum massa. \n            Suspendisse nec euismod ex. Pellentesque nunc metus, rhoncus sed scelerisque ut, porta non eros.\n </p>', 'Section 1', '', 'inherit', 'closed', 'closed', '', '71-autosave-v1', '', '', '2024-05-20 02:18:56', '2024-05-20 02:18:56', '', 71, 'http://localhost/?p=74', 0, 'revision', '', 0),
(75, 1, '2024-05-20 02:19:14', '2024-05-20 02:19:14', ' <p style=\"color: white;\"><span style=\"font-weight:bold;\"> Lorem ipsum </span> dolor sit amet, consectetur adipiscing elit. Cras tortor nibh, vestibulum id elit at, eleifend condimentum mi. Nunc suscipit ullamcorper dolor, et suscipit leo consequat nec.Sed sit amet neque sollicitudin, semper urna et, rutrum massa.Suspendisse nec euismod ex. Pellentesque nunc metus, rhoncus sed scelerisque ut, porta non eros.</p>', 'Section 1', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2024-05-20 02:19:14', '2024-05-20 02:19:14', '', 71, 'http://localhost/?p=75', 0, 'revision', '', 0),
(76, 1, '2024-05-20 02:19:46', '2024-05-20 02:19:46', ' <p style=\"color: white;\"><span style=\"font-weight:bold;\"> Lorem ipsum </span> dolor sit amet, consectetur adipiscing elit. Cras tortor nibh, vestibulum id elit at, eleifend condimentum mi. Nunc suscipit ullamcorper dolor, et suscipit leo consequat nec. Sed sit amet neque sollicitudin, semper urna et, rutrum massa.Suspendisse nec euismod ex. Pellentesque nunc metus, rhoncus sed scelerisque ut, porta non eros.</p>', 'Section 1', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2024-05-20 02:19:46', '2024-05-20 02:19:46', '', 71, 'http://localhost/?p=76', 0, 'revision', '', 0),
(77, 1, '2024-05-20 02:20:46', '2024-05-20 02:20:46', '<p style=\"color: white;\"><span style=\"font-weight:bold;\"> Lorem ipsum </span> dolor sit amet, consectetur adipiscing elit. Cras tortor nibh, vestibulum id elit at, eleifend condimentum mi. Nunc suscipit ullamcorper dolor, et suscipit leo consequat nec. Sed sit amet neque sollicitudin,semper urna et, rutrum massa. Suspendisse nec euismod ex. Pellentesque nunc metus, rhoncus sed scelerisque ut, porta non eros.</p>', 'Section 1', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2024-05-20 02:20:46', '2024-05-20 02:20:46', '', 71, 'http://localhost/?p=77', 0, 'revision', '', 0),
(78, 1, '2024-05-20 02:30:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-05-20 02:30:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=78', 0, 'post', '', 0),
(79, 1, '2024-05-20 02:32:05', '2024-05-20 02:32:05', '<span class=\"sectionp\" style= \"color: #FFFF;\"> \n<span style=\"font-weight:bold;\"> Lorem ipsum </span> dolor sit amet, consectetur adipiscing elit. Cras tortor nibh, vestibulum id elit at, eleifend condimentum mi.  \n</span>', 'Section 2', '', 'publish', 'open', 'open', '', 'section-2', '', '', '2024-05-20 02:32:05', '2024-05-20 02:32:05', '', 0, 'http://localhost/?p=79', 0, 'post', '', 0),
(80, 1, '2024-05-20 02:32:05', '2024-05-20 02:32:05', '<span class=\"sectionp\" style= \"color: #FFFF;\"> \n<span style=\"font-weight:bold;\"> Lorem ipsum </span> dolor sit amet, consectetur adipiscing elit. Cras tortor nibh, vestibulum id elit at, eleifend condimentum mi.  \n</span>', 'Section 2', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2024-05-20 02:32:05', '2024-05-20 02:32:05', '', 79, 'http://localhost/?p=80', 0, 'revision', '', 0),
(81, 1, '2024-05-20 02:46:58', '2024-05-20 02:46:58', 'http://localhost/wp-content/uploads/2024/05/cropped-CaseGuard_logo-1.png', 'cropped-CaseGuard_logo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-caseguard_logo-1-png', '', '', '2024-05-20 02:46:58', '2024-05-20 02:46:58', '', 13, 'http://localhost/wp-content/uploads/2024/05/cropped-CaseGuard_logo-1.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2024-05-20 02:47:45', '2024-05-20 02:47:45', '{\n    \"site_icon\": {\n        \"value\": 81,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-05-20 02:47:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5c8b8dfd-6873-4c0f-8742-3946dcf7ef48', '', '', '2024-05-20 02:47:45', '2024-05-20 02:47:45', '', 0, 'http://localhost/?p=82', 0, 'customize_changeset', '', 0);

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
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'twentytwentyfour', 'twentytwentyfour', 0),
(3, 'Navmenu', 'navmenu', 0),
(4, 'Green', 'green', 0),
(5, 'Black', 'black', 0),
(6, 'Blue', 'blue', 0);

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
(7, 2, 0),
(41, 4, 0),
(44, 4, 0),
(47, 5, 0),
(50, 5, 0),
(53, 6, 0),
(56, 6, 0),
(71, 1, 0),
(79, 1, 0);

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
(1, 1, 'category', '', 0, 2),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 0),
(4, 4, 'category', '', 0, 2),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 2);

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
(1, 1, 'nickname', 'caseguard'),
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
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '34'),
(18, 1, 'wp_persisted_preferences', 'a:4:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:14:\"fullscreenMode\";b:0;}s:9:\"_modified\";s:24:\"2024-05-20T02:18:36.578Z\";s:14:\"core/edit-site\";a:1:{s:12:\"welcomeGuide\";b:0;}s:4:\"core\";a:2:{s:10:\"openPanels\";a:5:{i:0;s:15:\"page-attributes\";i:1;s:11:\"post-status\";i:2;s:12:\"post-excerpt\";i:3;s:23:\"taxonomy-panel-category\";i:4;s:14:\"featured-image\";}s:10:\"editorMode\";s:4:\"text\";}}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1715356332'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(25, 1, 'nav_menu_recently_edited', '3'),
(28, 1, 'session_tokens', 'a:1:{s:64:\"6eb268f94c9c6df617527a02444c5091edd2142f6843f25e266f0c11e6e47e36\";a:4:{s:10:\"expiration\";i:1716316840;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36\";s:5:\"login\";i:1716144040;}}');

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
(1, 'caseguard', '$P$BPnshc.hDjFiKc2AKXdNHjCLkrJFOx/', 'caseguard', 'dshetty1702@gmail.com', 'http://localhost', '2024-05-10 04:00:29', '', 0, 'caseguard');

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=608;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
