-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 25 Mai 2018 à 18:50
-- Version du serveur :  10.1.21-MariaDB
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog_esgis`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_wp_trash_meta_status', '1'),
(2, 1, '_wp_trash_meta_time', '1527066662');

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-05-22 18:07:15', '2018-05-22 16:07:15', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0),
(2, 47, 'robert', 'robert.aziakesse228@gmail.com', '', '::1', '2018-05-23 09:36:41', '2018-05-23 09:36:41', 'vous avez du vrai talent inh!! continuer de travailler fort le succes vient au bout de l\'effort...', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/dashboard/blog_esgis', 'yes'),
(2, 'home', 'http://localhost/dashboard/blog_esgis', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'robert.aziakesse228@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:19:\"akismet/akismet.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:4:{i:0;s:74:\"C:\\xamp\\htdocs\\dashboard\\blog_esgis/wp-content/themes/blog_esgis/style.css\";i:1;s:75:\"C:\\xamp\\htdocs\\dashboard\\blog_esgis/wp-content/themes/blog_esgis/custom.css\";i:3;s:77:\"C:\\xamp\\htdocs\\dashboard\\blog_esgis/wp-content/themes/blog_esgis/comments.php\";i:4;s:0:\"\";}', 'no'),
(40, 'template', 'blog_esgis', 'yes'),
(41, 'stylesheet', 'blog_esgis', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '0', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(64, 'large_size_w', '2000', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '1', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Africa/Lome', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', 'gallery', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '59', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:9:\"Recherche\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;i:4;a:0:{}}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:3:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;i:4;a:0:{}}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:10:\"archives-2\";i:1;s:10:\"archives-4\";i:2;s:13:\"media_video-3\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"calendar-3\";i:4;s:13:\"media_image-3\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:16:\"Votre Calendrier\";}}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:15:{s:13:\"attachment_id\";i:50;s:3:\"url\";s:100:\"http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/banniere-mutuelle-sante-300x103.jpg\";s:5:\"title\";s:12:\"Image posté\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:1020;s:6:\"height\";i:350;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:4:\"none\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}}', 'yes'),
(105, 'widget_media_video', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:11:{s:13:\"attachment_id\";i:0;s:3:\"url\";s:0:\"\";s:5:\"title\";s:13:\"vidéo posté\";s:7:\"preload\";s:8:\"metadata\";s:4:\"loop\";b:0;s:7:\"content\";s:0:\"\";s:3:\"mp4\";s:0:\"\";s:3:\"m4v\";s:0:\"\";s:4:\"webm\";s:0:\"\";s:3:\"ogv\";s:0:\"\";s:3:\"flv\";s:0:\"\";}}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:5:{i:1527307639;a:2:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1527307640;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1527317537;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1527351002;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1527005674;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(122, 'can_compress_scripts', '1', 'no'),
(127, 'current_theme', 'Blog_esgis', 'yes'),
(128, 'theme_mods_blog_esgis', 'a:6:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:73;s:16:\"header_textcolor\";s:6:\"000000\";s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:16:\"background_color\";s:6:\"cecece\";}', 'yes'),
(129, 'theme_switched', '', 'yes'),
(150, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(189, 'category_children', 'a:0:{}', 'yes'),
(232, '_site_transient_timeout_wporg_theme_feature_list', '1527173075', 'no'),
(233, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'no'),
(236, 'theme_mods_blog', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1527162669;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:10:\"archives-2\";i:1;s:10:\"archives-4\";i:2;s:13:\"media_video-3\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:12:\"categories-2\";i:4;s:13:\"media_image-3\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(253, '_transient_timeout_plugin_slugs', '1527276031', 'no'),
(254, '_transient_plugin_slugs', 'a:2:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";}', 'no'),
(255, 'recently_activated', 'a:0:{}', 'yes'),
(256, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(268, '_site_transient_timeout_browser_37852581c9557110c7bab064af517413', '1527855347', 'no'),
(269, '_site_transient_browser_37852581c9557110c7bab064af517413', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"66.0.3359.181\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(270, '_site_transient_timeout_community-events-4501c091b0366d76ea3218b6cfdd8097', '1527293757', 'no'),
(271, '_site_transient_community-events-4501c091b0366d76ea3218b6cfdd8097', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:2:\"::\";}s:6:\"events\";a:2:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Europe\";s:3:\"url\";s:33:\"https://2018.europe.wordcamp.org/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2018-06-14 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:16:\"Belgrade, Serbia\";s:7:\"country\";s:2:\"RS\";s:8:\"latitude\";d:44.808497000000003;s:9:\"longitude\";d:20.432285;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:4:\"WP15\";s:3:\"url\";s:86:\"https://wordpress.org/news/2018/04/celebrate-the-wordpress-15th-anniversary-on-may-27/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2018-05-27 12:00:00\";s:8:\"location\";a:1:{s:8:\"location\";s:10:\"Everywhere\";}}}}', 'no'),
(274, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1527275157', 'no'),
(275, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4464;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2790;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2561;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2431;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1871;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1654;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1644;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1453;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1392;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1390;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1388;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1315;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1284;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1210;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1103;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1060;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1024;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1013;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:893;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:878;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:829;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:803;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:802;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:711;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:692;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:686;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:685;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:673;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:661;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:658;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:644;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:640;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:637;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:632;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:609;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:607;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:605;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:599;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:589;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:587;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:564;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:548;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:537;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:537;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:522;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:519;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:510;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:510;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:498;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:493;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:492;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:483;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:480;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:478;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:470;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:467;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:456;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:456;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:445;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:432;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:429;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:426;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:419;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:416;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:415;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:413;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:406;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:405;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:395;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:389;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:384;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:368;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:363;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:360;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:356;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:353;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:350;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:349;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:347;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:345;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:342;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:341;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:339;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:333;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:332;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:330;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:322;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:316;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:306;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:305;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:304;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:301;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:298;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:298;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:295;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:295;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:293;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:291;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:291;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:286;}}', 'no'),
(279, '_site_transient_timeout_theme_roots', '1527266294', 'no'),
(280, '_site_transient_theme_roots', 'a:5:{s:4:\"blog\";s:7:\"/themes\";s:10:\"blog_esgis\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(283, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:5:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.6.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.6.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.5.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.8.6.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.8.6.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.8.6\";s:7:\"version\";s:5:\"4.8.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1527264504;s:15:\"version_checked\";s:5:\"4.8.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-14 18:07:51\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(284, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1527264511;s:7:\"checked\";a:5:{s:4:\"blog\";s:5:\"1.0.0\";s:10:\"blog_esgis\";s:5:\"1.0.0\";s:13:\"twentyfifteen\";s:3:\"1.8\";s:15:\"twentyseventeen\";s:3:\"1.3\";s:13:\"twentysixteen\";s:3:\"1.3\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.0.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.6.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.5.zip\";}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"1.3\";s:7:\"updated\";s:19:\"2017-11-08 21:02:49\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.3/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:13:\"twentysixteen\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"1.3\";s:7:\"updated\";s:19:\"2017-11-08 21:16:31\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/theme/twentysixteen/1.3/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(285, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1527264685;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"3.3.4\";s:9:\"hello.php\";s:3:\"1.6\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.5\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"1.6\";s:7:\"updated\";s:19:\"2018-04-27 10:03:32\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.6/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(4, 6, '_wp_attached_file', '2018/05/bts-lmd-etudiants.jpg'),
(5, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:350;s:4:\"file\";s:29:\"2018/05/bts-lmd-etudiants.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"bts-lmd-etudiants-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"bts-lmd-etudiants-300x103.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"bts-lmd-etudiants-768x264.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:264;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 7, '_wp_attached_file', '2018/05/app.ico'),
(7, 8, '_wp_attached_file', '2018/05/accueil-news-mutuelle-sante.jpg'),
(8, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:39:\"2018/05/accueil-news-mutuelle-sante.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"accueil-news-mutuelle-sante-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"accueil-news-mutuelle-sante-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 9, '_wp_attached_file', '2018/05/accreditation-cames.jpg'),
(10, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:695;s:6:\"height\";i:250;s:4:\"file\";s:31:\"2018/05/accreditation-cames.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"accreditation-cames-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"accreditation-cames-300x108.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11, 10, '_wp_attached_file', '2018/05/cropped-accreditation-cames.jpg'),
(12, 10, '_wp_attachment_context', 'custom-header'),
(13, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:359;s:4:\"file\";s:39:\"2018/05/cropped-accreditation-cames.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"cropped-accreditation-cames-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"cropped-accreditation-cames-300x108.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"cropped-accreditation-cames-768x276.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 11, '_wp_attached_file', '2018/05/cropped-bts-lmd-etudiants.jpg'),
(17, 11, '_wp_attachment_context', 'custom-logo'),
(18, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:350;s:4:\"file\";s:37:\"2018/05/cropped-bts-lmd-etudiants.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"cropped-bts-lmd-etudiants-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"cropped-bts-lmd-etudiants-300x103.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"cropped-bts-lmd-etudiants-768x264.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:264;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 12, '_wp_attached_file', '2018/05/intro-bg.jpg'),
(20, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2200;s:6:\"height\";i:1466;s:4:\"file\";s:20:\"2018/05/intro-bg.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"intro-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"intro-bg-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"intro-bg-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"intro-bg-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 12, '_wp_attachment_is_custom_background', 'blog_esgis'),
(22, 13, '_wp_attached_file', '2018/05/benner_bg.jpg'),
(23, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:660;s:4:\"file\";s:21:\"2018/05/benner_bg.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"benner_bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"benner_bg-300x132.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:132;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"benner_bg-768x338.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"benner_bg-1024x451.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:451;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 13, '_wp_attachment_is_custom_background', 'blog_esgis'),
(25, 14, '_wp_attached_file', '2018/05/bts-lmd-etudiants-1.jpg'),
(26, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:350;s:4:\"file\";s:31:\"2018/05/bts-lmd-etudiants-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"bts-lmd-etudiants-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"bts-lmd-etudiants-1-300x103.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"bts-lmd-etudiants-1-768x264.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:264;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 15, '_wp_attached_file', '2018/05/cropped-bts-lmd-etudiants-1.jpg'),
(28, 15, '_wp_attachment_context', 'custom-header'),
(29, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:343;s:4:\"file\";s:39:\"2018/05/cropped-bts-lmd-etudiants-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"cropped-bts-lmd-etudiants-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"cropped-bts-lmd-etudiants-1-300x103.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"cropped-bts-lmd-etudiants-1-768x263.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:263;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 16, '_wp_attached_file', '2018/05/cropped-cropped-bts-lmd-etudiants-1.jpg'),
(33, 16, '_wp_attachment_context', 'custom-logo'),
(34, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:343;s:4:\"file\";s:47:\"2018/05/cropped-cropped-bts-lmd-etudiants-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"cropped-cropped-bts-lmd-etudiants-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"cropped-cropped-bts-lmd-etudiants-1-300x103.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"cropped-cropped-bts-lmd-etudiants-1-768x263.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:263;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 17, '_wp_attached_file', '2018/05/cropped-benner_bg.jpg'),
(36, 17, '_wp_attachment_context', 'custom-logo'),
(37, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:660;s:4:\"file\";s:29:\"2018/05/cropped-benner_bg.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-benner_bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"cropped-benner_bg-300x132.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:132;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"cropped-benner_bg-768x338.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"cropped-benner_bg-1024x451.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:451;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 18, '_wp_attached_file', '2018/05/cropped-cropped-cropped-bts-lmd-etudiants-1.jpg'),
(39, 18, '_wp_attachment_context', 'custom-logo'),
(40, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:342;s:6:\"height\";i:343;s:4:\"file\";s:55:\"2018/05/cropped-cropped-cropped-bts-lmd-etudiants-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:55:\"cropped-cropped-cropped-bts-lmd-etudiants-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:55:\"cropped-cropped-cropped-bts-lmd-etudiants-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 20, '_wp_attached_file', '2018/05/cropped-bts-lmd-etudiants-2.jpg'),
(42, 20, '_wp_attachment_context', 'custom-logo'),
(43, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:350;s:4:\"file\";s:39:\"2018/05/cropped-bts-lmd-etudiants-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"cropped-bts-lmd-etudiants-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"cropped-bts-lmd-etudiants-2-300x103.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"cropped-bts-lmd-etudiants-2-768x264.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:264;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 21, '_wp_attached_file', '2018/05/bts-lmd-etudiants-2.jpg'),
(45, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:350;s:4:\"file\";s:31:\"2018/05/bts-lmd-etudiants-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"bts-lmd-etudiants-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"bts-lmd-etudiants-2-300x103.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"bts-lmd-etudiants-2-768x264.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:264;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 22, '_wp_attached_file', '2018/05/cropped-bts-lmd-etudiants-2-1.jpg'),
(47, 22, '_wp_attachment_context', 'custom-logo'),
(48, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:350;s:4:\"file\";s:41:\"2018/05/cropped-bts-lmd-etudiants-2-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"cropped-bts-lmd-etudiants-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"cropped-bts-lmd-etudiants-2-1-300x103.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"cropped-bts-lmd-etudiants-2-1-768x264.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:264;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 19, '_wp_trash_meta_status', 'publish'),
(50, 19, '_wp_trash_meta_time', '1527045553'),
(51, 23, '_menu_item_type', 'custom'),
(52, 23, '_menu_item_menu_item_parent', '0'),
(53, 23, '_menu_item_object_id', '23'),
(54, 23, '_menu_item_object', 'custom'),
(55, 23, '_menu_item_target', ''),
(56, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(57, 23, '_menu_item_xfn', ''),
(58, 23, '_menu_item_url', 'http://localhost/dashboard/blog_esgis/'),
(60, 24, '_menu_item_type', 'post_type'),
(61, 24, '_menu_item_menu_item_parent', '0'),
(62, 24, '_menu_item_object_id', '2'),
(63, 24, '_menu_item_object', 'page'),
(64, 24, '_menu_item_target', ''),
(65, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(66, 24, '_menu_item_xfn', ''),
(67, 24, '_menu_item_url', ''),
(68, 24, '_menu_item_orphaned', '1527045682'),
(78, 26, '_wp_attached_file', '2018/05/cropped-cropped-bts-lmd-etudiants-2-1.jpg'),
(79, 26, '_wp_attachment_context', 'custom-logo'),
(80, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:350;s:4:\"file\";s:49:\"2018/05/cropped-cropped-bts-lmd-etudiants-2-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"cropped-cropped-bts-lmd-etudiants-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"cropped-cropped-bts-lmd-etudiants-2-1-300x103.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"cropped-cropped-bts-lmd-etudiants-2-1-768x264.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:264;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 27, '_wp_trash_meta_status', 'publish'),
(82, 27, '_wp_trash_meta_time', '1527047460'),
(83, 29, '_wp_attached_file', '2018/05/cropped-bts-lmd-etudiants-3.jpg'),
(84, 29, '_wp_attachment_context', 'custom-logo'),
(85, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:350;s:4:\"file\";s:39:\"2018/05/cropped-bts-lmd-etudiants-3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"cropped-bts-lmd-etudiants-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"cropped-bts-lmd-etudiants-3-300x103.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"cropped-bts-lmd-etudiants-3-768x264.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:264;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 30, '_edit_last', '1'),
(87, 30, '_edit_lock', '1527062288:1'),
(91, 30, '_wp_trash_meta_status', 'publish'),
(92, 30, '_wp_trash_meta_time', '1527062429'),
(93, 30, '_wp_desired_post_slug', 'a-propos'),
(94, 34, '_edit_last', '1'),
(95, 34, '_edit_lock', '1527062506:1'),
(96, 35, '_edit_last', '1'),
(97, 35, '_edit_lock', '1527066052:1'),
(116, 41, '_customize_draft_post_name', 'a-propos'),
(117, 34, '_wp_trash_meta_status', 'draft'),
(118, 34, '_wp_trash_meta_time', '1527066172'),
(119, 34, '_wp_desired_post_slug', ''),
(120, 2, '_wp_trash_meta_status', 'publish'),
(121, 2, '_wp_trash_meta_time', '1527066224'),
(122, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(123, 44, '_wp_trash_meta_status', 'publish'),
(124, 44, '_wp_trash_meta_time', '1527066303'),
(125, 35, '_wp_trash_meta_status', 'publish'),
(126, 35, '_wp_trash_meta_time', '1527066337'),
(127, 35, '_wp_desired_post_slug', 'a-propos'),
(128, 1, '_edit_lock', '1527066594:1'),
(129, 1, '_wp_trash_meta_status', 'publish'),
(130, 1, '_wp_trash_meta_time', '1527066735'),
(131, 1, '_wp_desired_post_slug', 'bonjour-tout-le-monde'),
(132, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:5:\"trash\";}'),
(133, 47, '_edit_last', '1'),
(134, 47, '_edit_lock', '1527094994:1'),
(135, 48, '_wp_attached_file', '2018/05/IMG_2768-150x150.jpg'),
(136, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:28:\"2018/05/IMG_2768-150x150.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 47, '_thumbnail_id', '65'),
(138, 50, '_wp_attached_file', '2018/05/banniere-mutuelle-sante.jpg'),
(139, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:350;s:4:\"file\";s:35:\"2018/05/banniere-mutuelle-sante.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"banniere-mutuelle-sante-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"banniere-mutuelle-sante-300x103.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"banniere-mutuelle-sante-768x264.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:264;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 54, '_edit_last', '1'),
(143, 54, '_edit_lock', '1527094505:1'),
(144, 54, '_thumbnail_id', '50'),
(146, 56, '_wp_trash_meta_status', 'publish'),
(147, 56, '_wp_trash_meta_time', '1527070862'),
(148, 57, '_wp_trash_meta_status', 'publish'),
(149, 57, '_wp_trash_meta_time', '1527071116'),
(150, 58, '_wp_attached_file', '2018/05/logo-copie.png'),
(151, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:180;s:6:\"height\";i:180;s:4:\"file\";s:22:\"2018/05/logo-copie.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"logo-copie-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 59, '_wp_attached_file', '2018/05/cropped-logo-copie.png'),
(153, 59, '_wp_attachment_context', 'site-icon'),
(154, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:30:\"2018/05/cropped-logo-copie.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-logo-copie-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"cropped-logo-copie-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:30:\"cropped-logo-copie-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:30:\"cropped-logo-copie-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:30:\"cropped-logo-copie-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:28:\"cropped-logo-copie-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(155, 60, '_wp_trash_meta_status', 'publish'),
(156, 60, '_wp_trash_meta_time', '1527071286'),
(157, 63, '_wp_trash_meta_status', 'publish'),
(158, 63, '_wp_trash_meta_time', '1527091127'),
(159, 65, '_wp_attached_file', '2018/05/IMG_8189.jpg'),
(160, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1296;s:6:\"height\";i:684;s:4:\"file\";s:20:\"2018/05/IMG_8189.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8189-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8189-300x158.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_8189-768x405.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:405;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:4:\"iPad\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1509114256\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.28\";s:3:\"iso\";s:2:\"50\";s:13:\"shutter_speed\";s:18:\"0.0080645161290323\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(166, 67, '_wp_attached_file', '2018/05/image_propre.png'),
(167, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:250;s:4:\"file\";s:24:\"2018/05/image_propre.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"image_propre-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"image_propre-300x75.png\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"image_propre-768x192.png\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(168, 68, '_wp_attached_file', '2018/05/cropped-image_propre.png'),
(169, 68, '_wp_attachment_context', 'custom-logo'),
(170, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:250;s:4:\"file\";s:32:\"2018/05/cropped-image_propre.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-image_propre-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"cropped-image_propre-300x75.png\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"cropped-image_propre-768x192.png\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(171, 69, '_wp_trash_meta_status', 'publish'),
(172, 69, '_wp_trash_meta_time', '1527148859'),
(175, 72, '_wp_attached_file', '2018/05/image1.jpg'),
(176, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:250;s:4:\"file\";s:18:\"2018/05/image1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"image1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"image1-300x50.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"image1-768x128.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(177, 73, '_wp_attached_file', '2018/05/cropped-image1.jpg'),
(178, 73, '_wp_attachment_context', 'custom-logo'),
(179, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:250;s:4:\"file\";s:26:\"2018/05/cropped-image1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-image1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"cropped-image1-300x50.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"cropped-image1-768x128.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(180, 74, '_wp_trash_meta_status', 'publish'),
(181, 74, '_wp_trash_meta_time', '1527164115'),
(182, 75, '_wp_trash_meta_status', 'publish'),
(183, 75, '_wp_trash_meta_time', '1527173382'),
(184, 76, '_wp_trash_meta_status', 'publish'),
(185, 76, '_wp_trash_meta_time', '1527173601'),
(186, 77, '_edit_last', '1'),
(187, 77, '_edit_lock', '1527180942:1'),
(189, 79, '_wp_attached_file', '2018/05/jeunesse.png'),
(190, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:693;s:6:\"height\";i:210;s:4:\"file\";s:20:\"2018/05/jeunesse.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"jeunesse-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"jeunesse-300x91.png\";s:5:\"width\";i:300;s:6:\"height\";i:91;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(191, 80, '_wp_attached_file', '2018/05/jeunesse-1.png'),
(192, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:682;s:6:\"height\";i:217;s:4:\"file\";s:22:\"2018/05/jeunesse-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"jeunesse-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"jeunesse-1-300x95.png\";s:5:\"width\";i:300;s:6:\"height\";i:95;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(194, 80, '_edit_lock', '1527179724:1'),
(195, 83, '_wp_attached_file', '2018/05/jeunesse-2.png'),
(196, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:510;s:6:\"height\";i:184;s:4:\"file\";s:22:\"2018/05/jeunesse-2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"jeunesse-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"jeunesse-2-300x108.png\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(198, 86, '_menu_item_type', 'taxonomy'),
(199, 86, '_menu_item_menu_item_parent', '0'),
(200, 86, '_menu_item_object_id', '5'),
(201, 86, '_menu_item_object', 'category'),
(202, 86, '_menu_item_target', ''),
(203, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(204, 86, '_menu_item_xfn', ''),
(205, 86, '_menu_item_url', ''),
(270, 85, '_wp_trash_meta_status', 'publish'),
(271, 85, '_wp_trash_meta_time', '1527180620'),
(273, 97, '_wp_trash_meta_status', 'publish'),
(274, 97, '_wp_trash_meta_time', '1527182503'),
(275, 99, '_menu_item_type', 'taxonomy'),
(276, 99, '_menu_item_menu_item_parent', '0'),
(277, 99, '_menu_item_object_id', '4'),
(278, 99, '_menu_item_object', 'category'),
(279, 99, '_menu_item_target', ''),
(280, 99, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(281, 99, '_menu_item_xfn', ''),
(282, 99, '_menu_item_url', ''),
(283, 100, '_menu_item_type', 'taxonomy'),
(284, 100, '_menu_item_menu_item_parent', '0'),
(285, 100, '_menu_item_object_id', '3'),
(286, 100, '_menu_item_object', 'category'),
(287, 100, '_menu_item_target', ''),
(288, 100, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(289, 100, '_menu_item_xfn', ''),
(290, 100, '_menu_item_url', ''),
(291, 98, '_wp_trash_meta_status', 'publish'),
(292, 98, '_wp_trash_meta_time', '1527182608'),
(293, 101, '_edit_last', '1'),
(294, 101, '_edit_lock', '1527201793:1'),
(295, 102, '_wp_attached_file', '2018/05/concepteur.jpg'),
(296, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4032;s:6:\"height\";i:3024;s:4:\"file\";s:22:\"2018/05/concepteur.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"concepteur-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"concepteur-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"concepteur-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"concepteur-1365x1024.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:14:\"iPhone 6s Plus\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1519116163\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.15\";s:3:\"iso\";s:3:\"125\";s:13:\"shutter_speed\";s:5:\"0.125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(297, 105, '_menu_item_type', 'post_type'),
(298, 105, '_menu_item_menu_item_parent', '0'),
(299, 105, '_menu_item_object_id', '101'),
(300, 105, '_menu_item_object', 'page'),
(301, 105, '_menu_item_target', ''),
(302, 105, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(303, 105, '_menu_item_xfn', ''),
(304, 105, '_menu_item_url', ''),
(305, 104, '_wp_trash_meta_status', 'publish'),
(306, 104, '_wp_trash_meta_time', '1527202289'),
(307, 106, '_wp_trash_meta_status', 'publish'),
(308, 106, '_wp_trash_meta_time', '1527202364');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-05-22 18:07:15', '2018-05-22 16:07:15', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde !', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde__trashed', '', '', '2018-05-23 09:12:15', '2018-05-23 09:12:15', '', 0, 'http://localhost/dashboard/blog_esgis/?p=1', 0, 'post', '', 0),
(2, 1, '2018-05-22 18:07:15', '2018-05-22 16:07:15', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://localhost/dashboard/blog_esgis/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2018-05-23 09:03:44', '2018-05-23 09:03:44', '', 0, 'http://localhost/dashboard/blog_esgis/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-05-22 18:10:03', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-05-22 18:10:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/dashboard/blog_esgis/?p=3', 0, 'post', '', 0),
(5, 1, '2018-05-23 00:19:20', '0000-00-00 00:00:00', '{\n    \"blogdescription\": {\n        \"value\": \"La reeussite est au bout de l\'\\u00e9ffort\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"blog_esgis::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"blog_esgis::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-2\",\n            \"recent-posts-2\",\n            \"recent-comments-2\",\n            \"categories-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"blog_esgis::header_image\": {\n        \"value\": \"http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-bts-lmd-etudiants-1.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"blog_esgis::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-bts-lmd-etudiants-1.jpg\",\n            \"thumbnail_url\": \"http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-bts-lmd-etudiants-1.jpg\",\n            \"timestamp\": 1527024169271,\n            \"attachment_id\": 15,\n            \"width\": 1000,\n            \"height\": 343\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"blog_esgis::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"blog_esgis::background_position_x\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"blog_esgis::background_position_y\": {\n        \"value\": \"bottom\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"blog_esgis::background_color\": {\n        \"value\": \"#e8e8e8\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '7217e995-388b-4f5d-91e6-be7c2d7bde65', '', '', '2018-05-23 00:19:20', '2018-05-22 22:19:20', '', 0, 'http://localhost/dashboard/blog_esgis/?p=5', 0, 'customize_changeset', '', 0),
(6, 1, '2018-05-22 21:50:54', '2018-05-22 19:50:54', '', 'bts-lmd-etudiants', 'image-entete', 'inherit', 'open', 'closed', '', 'bts-lmd-etudiants', '', '', '2018-05-22 21:51:43', '2018-05-22 19:51:43', '', 0, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/bts-lmd-etudiants.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2018-05-22 21:57:05', '2018-05-22 19:57:05', '', 'app', '', 'inherit', 'open', 'closed', '', 'app', '', '', '2018-05-22 21:57:05', '2018-05-22 19:57:05', '', 0, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/app.ico', 0, 'attachment', 'image/x-icon', 0),
(8, 1, '2018-05-22 22:07:03', '2018-05-22 20:07:03', '', 'accueil-news-mutuelle-sante', '', 'inherit', 'open', 'closed', '', 'accueil-news-mutuelle-sante', '', '', '2018-05-22 22:07:03', '2018-05-22 20:07:03', '', 0, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/accueil-news-mutuelle-sante.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2018-05-22 22:07:53', '2018-05-22 20:07:53', '', 'image-entete', '', 'inherit', 'open', 'closed', '', 'accreditation-cames', '', '', '2018-05-22 22:08:11', '2018-05-22 20:08:11', '', 0, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/accreditation-cames.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2018-05-22 22:08:42', '2018-05-22 20:08:42', '', 'cropped-accreditation-cames.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-accreditation-cames-jpg', '', '', '2018-05-22 22:08:42', '2018-05-22 20:08:42', '', 0, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-accreditation-cames.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2018-05-22 22:10:12', '2018-05-22 20:10:12', 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-bts-lmd-etudiants.jpg', 'cropped-bts-lmd-etudiants.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-bts-lmd-etudiants-jpg', '', '', '2018-05-22 22:10:12', '2018-05-22 20:10:12', '', 0, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-bts-lmd-etudiants.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2018-05-22 22:11:31', '2018-05-22 20:11:31', '', 'arrierre-plan', '', 'inherit', 'open', 'closed', '', 'intro-bg', '', '', '2018-05-22 22:12:02', '2018-05-22 20:12:02', '', 0, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/intro-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2018-05-22 22:14:07', '2018-05-22 20:14:07', '', 'arrierre-plan', '', 'inherit', 'open', 'closed', '', 'benner_bg', '', '', '2018-05-22 22:14:29', '2018-05-22 20:14:29', '', 0, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/benner_bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-05-22 23:22:12', '2018-05-22 21:22:12', '', 'bts-lmd-etudiants', '', 'inherit', 'open', 'closed', '', 'bts-lmd-etudiants-2', '', '', '2018-05-22 23:22:12', '2018-05-22 21:22:12', '', 0, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/bts-lmd-etudiants-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2018-05-22 23:22:45', '2018-05-22 21:22:45', '', 'cropped-bts-lmd-etudiants-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-bts-lmd-etudiants-1-jpg', '', '', '2018-05-22 23:22:45', '2018-05-22 21:22:45', '', 0, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-bts-lmd-etudiants-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-05-22 23:35:44', '2018-05-22 21:35:44', 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-cropped-bts-lmd-etudiants-1.jpg', 'cropped-cropped-bts-lmd-etudiants-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-cropped-bts-lmd-etudiants-1-jpg', '', '', '2018-05-22 23:35:44', '2018-05-22 21:35:44', '', 0, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-cropped-bts-lmd-etudiants-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2018-05-23 00:18:47', '2018-05-22 22:18:47', 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-benner_bg.jpg', 'cropped-benner_bg.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-benner_bg-jpg', '', '', '2018-05-23 00:18:47', '2018-05-22 22:18:47', '', 0, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-benner_bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2018-05-23 00:35:04', '2018-05-22 22:35:04', 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-cropped-cropped-bts-lmd-etudiants-1.jpg', 'cropped-cropped-cropped-bts-lmd-etudiants-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-cropped-cropped-bts-lmd-etudiants-1-jpg', '', '', '2018-05-23 00:35:04', '2018-05-22 22:35:04', '', 0, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-cropped-cropped-bts-lmd-etudiants-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2018-05-23 05:19:12', '2018-05-23 03:19:12', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"blog_esgis::custom_logo\": {\n        \"value\": 22,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"blogname\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"blog_esgis::header_textcolor\": {\n        \"value\": \"#000000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dfc8a6b1-31d2-4b1e-baea-66d8b840e862', '', '', '2018-05-23 05:19:12', '2018-05-23 03:19:12', '', 0, 'http://localhost/dashboard/blog_esgis/?p=19', 0, 'customize_changeset', '', 0),
(20, 1, '2018-05-23 00:36:33', '2018-05-22 22:36:33', 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-bts-lmd-etudiants-2.jpg', 'cropped-bts-lmd-etudiants-2.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-bts-lmd-etudiants-2-jpg', '', '', '2018-05-23 00:36:33', '2018-05-22 22:36:33', '', 0, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-bts-lmd-etudiants-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2018-05-23 00:37:06', '2018-05-22 22:37:06', '', 'bts-lmd-etudiants', '', 'inherit', 'open', 'closed', '', 'bts-lmd-etudiants-3', '', '', '2018-05-23 00:37:06', '2018-05-22 22:37:06', '', 0, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/bts-lmd-etudiants-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2018-05-23 00:37:23', '2018-05-22 22:37:23', 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-bts-lmd-etudiants-2-1.jpg', 'cropped-bts-lmd-etudiants-2-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-bts-lmd-etudiants-2-1-jpg', '', '', '2018-05-23 00:37:23', '2018-05-22 22:37:23', '', 0, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-bts-lmd-etudiants-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-05-23 05:23:32', '2018-05-23 03:23:32', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2018-05-23 08:34:40', '2018-05-23 08:34:40', '', 0, 'http://localhost/dashboard/blog_esgis/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2018-05-23 05:21:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-05-23 05:21:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/dashboard/blog_esgis/?p=24', 1, 'nav_menu_item', '', 0),
(26, 1, '2018-05-23 05:50:25', '2018-05-23 03:50:25', 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-cropped-bts-lmd-etudiants-2-1.jpg', 'cropped-cropped-bts-lmd-etudiants-2-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-cropped-bts-lmd-etudiants-2-1-jpg', '', '', '2018-05-23 05:50:25', '2018-05-23 03:50:25', '', 0, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-cropped-bts-lmd-etudiants-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2018-05-23 05:51:00', '2018-05-23 03:51:00', '{\n    \"blog_esgis::custom_logo\": {\n        \"value\": 26,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"blog_esgis::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f053cf9e-a7fa-4501-bb06-87aeb46a25f0', '', '', '2018-05-23 05:51:00', '2018-05-23 03:51:00', '', 0, 'http://localhost/dashboard/blog_esgis/?p=27', 0, 'customize_changeset', '', 0),
(28, 1, '2018-05-23 05:59:01', '0000-00-00 00:00:00', '{\n    \"blog_esgis::custom_logo\": {\n        \"value\": 29,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '7c04eca4-fbf3-4727-9107-ee25e7a99a33', '', '', '2018-05-23 05:59:01', '2018-05-23 03:59:01', '', 0, 'http://localhost/dashboard/blog_esgis/?p=28', 0, 'customize_changeset', '', 0),
(29, 1, '2018-05-23 05:58:57', '2018-05-23 03:58:57', 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-bts-lmd-etudiants-3.jpg', 'cropped-bts-lmd-etudiants-3.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-bts-lmd-etudiants-3-jpg', '', '', '2018-05-23 05:58:57', '2018-05-23 03:58:57', '', 0, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-bts-lmd-etudiants-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2018-05-23 09:01:23', '2018-05-23 07:01:23', '', 'A propos', '', 'trash', 'closed', 'closed', '', 'a-propos__trashed', '', '', '2018-05-23 10:00:29', '2018-05-23 08:00:29', '', 0, 'http://localhost/dashboard/blog_esgis/?page_id=30', 0, 'page', '', 0),
(31, 1, '2018-05-23 09:01:23', '2018-05-23 07:01:23', '', 'A propos', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-05-23 09:01:23', '2018-05-23 07:01:23', '', 30, 'http://localhost/dashboard/blog_esgis/2018/05/23/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-05-23 09:55:46', '2018-05-23 07:55:46', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://localhost/dashboard/blog_esgis/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-05-23 09:55:46', '2018-05-23 07:55:46', '', 2, 'http://localhost/dashboard/blog_esgis/2018/05/23/2-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-05-23 09:56:11', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-05-23 09:56:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/dashboard/blog_esgis/?page_id=33', 0, 'page', '', 0),
(34, 1, '2018-05-23 10:01:46', '2018-05-23 10:01:46', '', 'A propos', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-05-23 09:02:52', '2018-05-23 09:02:52', '', 0, 'http://localhost/dashboard/blog_esgis/?page_id=34', 0, 'page', '', 0),
(35, 1, '2018-05-23 10:04:50', '2018-05-23 08:04:50', '', 'A propos', '', 'trash', 'closed', 'closed', '', 'a-propos__trashed-2', '', '', '2018-05-23 09:05:37', '2018-05-23 09:05:37', '', 0, 'http://localhost/dashboard/blog_esgis/?page_id=35', 0, 'page', '', 0),
(36, 1, '2018-05-23 10:04:50', '2018-05-23 08:04:50', '', 'A propos', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-05-23 10:04:50', '2018-05-23 08:04:50', '', 35, 'http://localhost/dashboard/blog_esgis/2018/05/23/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-05-23 08:24:48', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-05-23 08:24:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/dashboard/blog_esgis/?p=37', 0, 'post', '', 0),
(40, 1, '2018-05-23 08:58:44', '0000-00-00 00:00:00', '{\n    \"nav_menu_item[39]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"page_on_front\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            41\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"blog_esgis::nav_menu_locations[menu-1]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"nav_menu[2]\": {\n        \"value\": {\n            \"name\": \"Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'a6d2920d-ff7c-4ad0-acbf-6774bacb45a6', '', '', '2018-05-23 08:58:44', '2018-05-23 08:58:44', '', 0, 'http://localhost/dashboard/blog_esgis/?p=40', 0, 'customize_changeset', '', 0),
(41, 1, '2018-05-23 08:58:44', '0000-00-00 00:00:00', '', 'A propos', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-05-23 08:57:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/dashboard/blog_esgis/?page_id=41', 0, 'page', '', 0),
(42, 1, '2018-05-23 09:00:36', '0000-00-00 00:00:00', '{\n    \"blog_esgis::nav_menu_locations[menu-1]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"nav_menu[2]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[39]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '35257fc7-ad86-49cf-9eab-78c0d89d6206', '', '', '2018-05-23 09:00:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/dashboard/blog_esgis/?p=42', 0, 'customize_changeset', '', 0),
(43, 1, '2018-05-23 09:02:52', '2018-05-23 09:02:52', '', 'A propos', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-05-23 09:02:52', '2018-05-23 09:02:52', '', 34, 'http://localhost/dashboard/blog_esgis/2018/05/23/34-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-05-23 09:05:01', '2018-05-23 09:05:01', '{\n    \"nav_menu_item[39]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '789f114b-30ff-4110-9dcc-096d99dd6e7a', '', '', '2018-05-23 09:05:01', '2018-05-23 09:05:01', '', 0, 'http://localhost/dashboard/blog_esgis/2018/05/23/789f114b-30ff-4110-9dcc-096d99dd6e7a/', 0, 'customize_changeset', '', 0),
(45, 1, '2018-05-23 09:12:15', '2018-05-23 09:12:15', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-05-23 09:12:15', '2018-05-23 09:12:15', '', 1, 'http://localhost/dashboard/blog_esgis/2018/05/23/1-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-05-23 09:14:15', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-05-23 09:14:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/dashboard/blog_esgis/?p=46', 0, 'post', '', 0),
(47, 1, '2018-05-23 09:33:52', '2018-05-23 09:33:52', '<p style=\"text-align: center;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<!--more--> quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>', 'Les Etudiants Informaticien(es) d\'ESGIS', '', 'publish', 'open', 'open', '', 'les-etudiants-informaticienes-desgis', '', '', '2018-05-23 17:03:11', '2018-05-23 17:03:11', '', 0, 'http://localhost/dashboard/blog_esgis/?p=47', 0, 'post', '', 1),
(48, 1, '2018-05-23 09:27:46', '2018-05-23 09:27:46', '', 'informaticien', 'nformaticien_img', 'inherit', 'open', 'closed', '', 'img_2768-150x150', '', '', '2018-05-23 09:28:27', '2018-05-23 09:28:27', '', 47, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/IMG_2768-150x150.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-05-23 09:29:18', '2018-05-23 09:29:18', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\r\n\r\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'Les Etudiants Informaticien(es) d\'ESGIS', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2018-05-23 09:29:18', '2018-05-23 09:29:18', '', 47, 'http://localhost/dashboard/blog_esgis/2018/05/23/47-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-05-23 09:31:31', '2018-05-23 09:31:31', '', 'banniere-mutuelle-sante', '', 'inherit', 'open', 'closed', '', 'banniere-mutuelle-sante', '', '', '2018-05-23 09:31:31', '2018-05-23 09:31:31', '', 47, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/banniere-mutuelle-sante.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2018-05-23 09:31:46', '2018-05-23 09:31:46', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'Les Etudiants Informaticien(es) d\'ESGIS', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2018-05-23 09:31:46', '2018-05-23 09:31:46', '', 47, 'http://localhost/dashboard/blog_esgis/2018/05/23/47-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-05-23 09:34:21', '2018-05-23 09:34:21', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<!--more--> quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'Les Etudiants Informaticien(es) d\'ESGIS', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2018-05-23 09:34:21', '2018-05-23 09:34:21', '', 47, 'http://localhost/dashboard/blog_esgis/2018/05/23/47-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-05-23 17:02:50', '2018-05-23 17:02:50', '<pre>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<!--more--> quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</pre>', 'Les Etudiants Informaticien(es) d\'ESGIS', '', 'inherit', 'closed', 'closed', '', '47-autosave-v1', '', '', '2018-05-23 17:02:50', '2018-05-23 17:02:50', '', 47, 'http://localhost/dashboard/blog_esgis/2018/05/23/47-autosave-v1/', 0, 'revision', '', 0),
(54, 1, '2018-05-23 09:40:55', '2018-05-23 09:40:55', '&nbsp;\r\n\r\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'L\'Administration', '', 'publish', 'open', 'open', '', 'ladministration', '', '', '2018-05-23 16:56:47', '2018-05-23 16:56:47', '', 0, 'http://localhost/dashboard/blog_esgis/?p=54', 0, 'post', '', 0),
(55, 1, '2018-05-23 09:40:55', '2018-05-23 09:40:55', '&nbsp;\r\n\r\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'L\'Administration', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-05-23 09:40:55', '2018-05-23 09:40:55', '', 54, 'http://localhost/dashboard/blog_esgis/2018/05/23/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-05-23 10:21:01', '2018-05-23 10:21:01', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-2\",\n            \"recent-posts-2\",\n            \"recent-comments-2\",\n            \"categories-2\",\n            \"meta-2\",\n            \"media_video-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_archives[4]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_media_video[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxMTp7czoxMzoiYXR0YWNobWVudF9pZCI7aTowO3M6MzoidXJsIjtzOjA6IiI7czo1OiJ0aXRsZSI7czoxMzoidmlkw6lvIHBvc3TDqSI7czo3OiJwcmVsb2FkIjtzOjg6Im1ldGFkYXRhIjtzOjQ6Imxvb3AiO2I6MDtzOjc6ImNvbnRlbnQiO3M6MDoiIjtzOjM6Im1wNCI7czowOiIiO3M6MzoibTR2IjtzOjA6IiI7czo0OiJ3ZWJtIjtzOjA6IiI7czozOiJvZ3YiO3M6MDoiIjtzOjM6ImZsdiI7czowOiIiO30=\",\n            \"title\": \"vid\\u00e9o post\\u00e9\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"3a1d42730eafd2e218762cea5849e54a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_search[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjk6IlJlY2hlcmNoZSI7fQ==\",\n            \"title\": \"Recherche\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"60f59afb2a7e3af7adb584c1803709a9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '317bd913-c1e4-44d6-ad7d-d06ec477febb', '', '', '2018-05-23 10:21:01', '2018-05-23 10:21:01', '', 0, 'http://localhost/dashboard/blog_esgis/?p=56', 0, 'customize_changeset', '', 0),
(57, 1, '2018-05-23 10:25:16', '2018-05-23 10:25:16', '{\n    \"sidebars_widgets[wp_inactive_widgets]\": {\n        \"value\": [\n            \"media_video-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-2\",\n            \"recent-posts-2\",\n            \"recent-comments-2\",\n            \"categories-2\",\n            \"media_image-3\",\n            \"meta-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_media_image[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxNTp7czoxMzoiYXR0YWNobWVudF9pZCI7aTo1MDtzOjM6InVybCI7czoxMDA6Imh0dHA6Ly9sb2NhbGhvc3QvZGFzaGJvYXJkL2Jsb2dfZXNnaXMvd3AtY29udGVudC91cGxvYWRzLzIwMTgvMDUvYmFubmllcmUtbXV0dWVsbGUtc2FudGUtMzAweDEwMy5qcGciO3M6NToidGl0bGUiO3M6MTI6IkltYWdlIHBvc3TDqSI7czo0OiJzaXplIjtzOjY6Im1lZGl1bSI7czo1OiJ3aWR0aCI7aToxMDIwO3M6NjoiaGVpZ2h0IjtpOjM1MDtzOjc6ImNhcHRpb24iO3M6MDoiIjtzOjM6ImFsdCI7czowOiIiO3M6OToibGlua190eXBlIjtzOjQ6Im5vbmUiO3M6ODoibGlua191cmwiO3M6MDoiIjtzOjEzOiJpbWFnZV9jbGFzc2VzIjtzOjA6IiI7czoxMjoibGlua19jbGFzc2VzIjtzOjA6IiI7czo4OiJsaW5rX3JlbCI7czowOiIiO3M6MTc6ImxpbmtfdGFyZ2V0X2JsYW5rIjtiOjA7czoxMToiaW1hZ2VfdGl0bGUiO3M6MDoiIjt9\",\n            \"title\": \"Image post\\u00e9\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"25dd0f5919398376401679f8500a260f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bfac3fc3-002e-4cf1-bc91-19ee175b28ee', '', '', '2018-05-23 10:25:16', '2018-05-23 10:25:16', '', 0, 'http://localhost/dashboard/blog_esgis/?p=57', 0, 'customize_changeset', '', 0),
(58, 1, '2018-05-23 10:27:07', '2018-05-23 10:27:07', '', 'logo copie', '', 'inherit', 'open', 'closed', '', 'logo-copie', '', '', '2018-05-23 10:27:07', '2018-05-23 10:27:07', '', 0, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/logo-copie.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2018-05-23 10:27:18', '2018-05-23 10:27:18', 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-logo-copie.png', 'cropped-logo-copie.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-copie-png', '', '', '2018-05-23 10:27:18', '2018-05-23 10:27:18', '', 0, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-logo-copie.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2018-05-23 10:28:06', '2018-05-23 10:28:06', '{\n    \"site_icon\": {\n        \"value\": 59,\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"blog_esgis::header_textcolor\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1621d9da-30d1-43fb-b5d1-97056002e8fd', '', '', '2018-05-23 10:28:06', '2018-05-23 10:28:06', '', 0, 'http://localhost/dashboard/blog_esgis/?p=60', 0, 'customize_changeset', '', 0),
(61, 1, '2018-05-23 10:53:31', '0000-00-00 00:00:00', '{\n    \"blog_esgis::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"blog_esgis::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'e755eae0-0bf8-4118-aabc-b05b1ca48d43', '', '', '2018-05-23 10:53:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/dashboard/blog_esgis/?p=61', 0, 'customize_changeset', '', 0),
(62, 1, '2018-05-23 15:56:45', '0000-00-00 00:00:00', '{\n    \"nav_menu_item[23]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 23,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"Lien personnalis\\u00e9\",\n            \"title\": \"\",\n            \"url\": \"http://localhost/dashboard/blog_esgis/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu[2]\": {\n        \"value\": {\n            \"name\": \"Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '84d7585f-beb7-4c86-8e13-a24ffe698ca7', '', '', '2018-05-23 15:56:45', '2018-05-23 15:56:45', '', 0, 'http://localhost/dashboard/blog_esgis/?p=62', 0, 'customize_changeset', '', 0),
(63, 1, '2018-05-23 15:58:47', '2018-05-23 15:58:47', '{\n    \"blog_esgis::background_color\": {\n        \"value\": \"#cecece\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd740c1cd-838c-4977-9be5-a754f072bc81', '', '', '2018-05-23 15:58:47', '2018-05-23 15:58:47', '', 0, 'http://localhost/dashboard/blog_esgis/2018/05/23/d740c1cd-838c-4977-9be5-a754f072bc81/', 0, 'customize_changeset', '', 0),
(64, 1, '2018-05-23 16:02:38', '0000-00-00 00:00:00', '{\n    \"custom_css[blog_esgis]\": {\n        \"value\": \"/*\\nVous pouvez ajouter du CSS personnalis\\u00e9 ici.\\n\\nCliquez sur l\\u2019ic\\u00f4ne d\\u2019aide ci-dessus pour en savoir plus.\\n*/\\n\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '300df83d-61bd-41f1-bd0b-1c8b8c279c98', '', '', '2018-05-23 16:02:38', '2018-05-23 16:02:38', '', 0, 'http://localhost/dashboard/blog_esgis/?p=64', 0, 'customize_changeset', '', 0),
(65, 1, '2018-05-23 16:52:37', '2018-05-23 16:52:37', '', 'IMG_8189', '', 'inherit', 'open', 'closed', '', 'img_8189', '', '', '2018-05-23 16:52:37', '2018-05-23 16:52:37', '', 54, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/IMG_8189.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2018-05-23 17:03:11', '2018-05-23 17:03:11', '<p style=\"text-align: center;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<!--more--> quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>', 'Les Etudiants Informaticien(es) d\'ESGIS', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2018-05-23 17:03:11', '2018-05-23 17:03:11', '', 47, 'http://localhost/dashboard/blog_esgis/2018/05/23/47-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2018-05-24 08:00:07', '2018-05-24 08:00:07', '', 'image_propre', '', 'inherit', 'open', 'closed', '', 'image_propre', '', '', '2018-05-24 08:00:07', '2018-05-24 08:00:07', '', 0, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/image_propre.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2018-05-24 08:00:35', '2018-05-24 08:00:35', 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-image_propre.png', 'cropped-image_propre.png', '', 'inherit', 'open', 'closed', '', 'cropped-image_propre-png', '', '', '2018-05-24 08:00:35', '2018-05-24 08:00:35', '', 0, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-image_propre.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2018-05-24 08:00:58', '2018-05-24 08:00:58', '{\n    \"blog_esgis::custom_logo\": {\n        \"value\": 68,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8d00e0bb-e871-431c-b74c-a52f7a72d8ff', '', '', '2018-05-24 08:00:58', '2018-05-24 08:00:58', '', 0, 'http://localhost/dashboard/blog_esgis/2018/05/24/8d00e0bb-e871-431c-b74c-a52f7a72d8ff/', 0, 'customize_changeset', '', 0),
(70, 1, '2018-05-24 11:40:16', '0000-00-00 00:00:00', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-2\",\n            \"recent-posts-2\",\n            \"recent-comments-2\",\n            \"categories-2\",\n            \"media_image-3\",\n            \"meta-2\",\n            \"calendar-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_calendar[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '101e9113-b9be-4310-a2c3-1d8c79323d9c', '', '', '2018-05-24 11:40:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/dashboard/blog_esgis/?p=70', 0, 'customize_changeset', '', 0),
(72, 1, '2018-05-24 12:14:35', '2018-05-24 12:14:35', '', 'image', '', 'inherit', 'open', 'closed', '', 'image1', '', '', '2018-05-24 12:14:47', '2018-05-24 12:14:47', '', 0, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/image1.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2018-05-24 12:14:58', '2018-05-24 12:14:58', 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-image1.jpg', 'cropped-image1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-image1-jpg', '', '', '2018-05-24 12:14:58', '2018-05-24 12:14:58', '', 0, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/cropped-image1.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2018-05-24 12:15:14', '2018-05-24 12:15:14', '{\n    \"blog_esgis::custom_logo\": {\n        \"value\": 73,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ebd23301-02c1-4922-a314-201ea91b78f6', '', '', '2018-05-24 12:15:14', '2018-05-24 12:15:14', '', 0, 'http://localhost/dashboard/blog_esgis/?p=74', 0, 'customize_changeset', '', 0),
(75, 1, '2018-05-24 14:49:41', '2018-05-24 14:49:41', '{\n    \"blog_esgis::nav_menu_locations[menu-1]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-2\",\n            \"recent-posts-2\",\n            \"recent-comments-2\",\n            \"calendar-3\",\n            \"media_image-3\",\n            \"meta-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_recent-posts[4]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_calendar[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '79089528-de64-4721-a1ce-95dfcb907038', '', '', '2018-05-24 14:49:41', '2018-05-24 14:49:41', '', 0, 'http://localhost/dashboard/blog_esgis/?p=75', 0, 'customize_changeset', '', 0),
(76, 1, '2018-05-24 14:53:21', '2018-05-24 14:53:21', '{\n    \"widget_calendar[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjE2OiJWb3RyZSBDYWxlbmRyaWVyIjt9\",\n            \"title\": \"Votre Calendrier\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1b139236b71793997f4598871316967f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd6d5e8bc-db97-4790-b04b-9c4175d043da', '', '', '2018-05-24 14:53:21', '2018-05-24 14:53:21', '', 0, 'http://localhost/dashboard/blog_esgis/?p=76', 0, 'customize_changeset', '', 0),
(77, 1, '2018-05-24 16:13:48', '2018-05-24 16:13:48', '<a href=\"http://localhost/dashboard/blog_esgis/2018/05/24/journee-internationale-de-la-femme-a-lesgis/jeunesse-2/\"><img class=\" wp-image-83 aligncenter\" src=\"http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/jeunesse-2-300x108.png\" alt=\"\" width=\"306\" height=\"110\" /></a>\r\n\r\nCe jeudi 08/03/2018 a été la Journée Internationale de la Femme. A cette occasion, une conférence a été organisée à l’Ecole Supérieur de Gestion d’Informatique et des Sciences (ESGIS-TOGO) sur leur site d’Avédji. La conférence a pour thème : <strong>« Le Leadership Féminin : la femme et les métiers des finances »</strong>. Etaient présents :\r\n<ul>\r\n 	<li>Macy Marcel AKAKPO Président du Conseil d’Administration de l’ESGIS.</li>\r\n 	<li>Comlangan Mawutoè d’ALMEIDA ancien Ministre de la communication actuellement écrivain,</li>\r\n 	<li>Mme AFANOU-KEZIE Responsable des Ressources Humaines à la BOA,</li>\r\n 	<li>Mme NATHANIELS Chef d’agence à l’Agence Principale de la BOA,</li>\r\n</ul>', 'Journée Internationale de la Femme à l’ESGIS', '', 'publish', 'open', 'open', '', 'journee-internationale-de-la-femme-a-lesgis', '', '', '2018-05-24 16:55:41', '2018-05-24 16:55:41', '', 0, 'http://localhost/dashboard/blog_esgis/?p=77', 0, 'post', '', 0),
(78, 1, '2018-05-24 16:13:48', '2018-05-24 16:13:48', 'Ce jeudi 08/03/2018 a été la Journée Internationale de la Femme. A cette occasion, une conférence a été organisée à l’Ecole Supérieur de Gestion d’Informatique et des Sciences (ESGIS-TOGO) sur leur site d’Avédji. La conférence a pour thème : <strong>« Le Leadership Féminin : la femme et les métiers des finances »</strong>. Etaient présents :\r\n<ul>\r\n 	<li>Macy Marcel AKAKPO Président du Conseil d’Administration de l’ESGIS.</li>\r\n 	<li>Comlangan Mawutoè d’ALMEIDA ancien Ministre de la communication actuellement écrivain,</li>\r\n 	<li>Mme AFANOU-KEZIE Responsable des Ressources Humaines à la BOA,</li>\r\n 	<li>Mme NATHANIELS Chef d’agence à l’Agence Principale de la BOA,</li>\r\n</ul>', 'Journée Internationale de la Femme à l’ESGIS', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2018-05-24 16:13:48', '2018-05-24 16:13:48', '', 77, 'http://localhost/dashboard/blog_esgis/2018/05/24/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2018-05-24 16:16:02', '2018-05-24 16:16:02', '', 'jeunesse', '', 'inherit', 'open', 'closed', '', 'jeunesse', '', '', '2018-05-24 16:16:02', '2018-05-24 16:16:02', '', 77, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/jeunesse.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2018-05-24 16:19:40', '2018-05-24 16:19:40', '', 'jeunesse', '', 'inherit', 'open', 'closed', '', 'jeunesse-2', '', '', '2018-05-24 16:19:40', '2018-05-24 16:19:40', '', 77, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/jeunesse-1.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2018-05-24 16:38:59', '2018-05-24 16:38:59', '<a href=\"http://localhost/dashboard/blog_esgis/2018/05/24/journee-internationale-de-la-femme-a-lesgis/jeunesse-2/\"></a>\n\nCe jeudi 08/03/2018 a été la Journée Internationale de la Femme. A cette occasion, une conférence a été organisée à l’Ecole Supérieur de Gestion d’Informatique et des Sciences (ESGIS-TOGO) sur leur site d’Avédji. La conférence a pour thème : <strong>« Le Leadership Féminin : la femme et les métiers des finances »</strong>. Etaient présents :\n<ul>\n 	<li>Macy Marcel AKAKPO Président du Conseil d’Administration de l’ESGIS.</li>\n 	<li>Comlangan Mawutoè d’ALMEIDA ancien Ministre de la communication actuellement écrivain,</li>\n 	<li>Mme AFANOU-KEZIE Responsable des Ressources Humaines à la BOA,</li>\n 	<li>Mme NATHANIELS Chef d’agence à l’Agence Principale de la BOA,</li>\n</ul>', 'Journée Internationale de la Femme à l’ESGIS', '', 'inherit', 'closed', 'closed', '', '77-autosave-v1', '', '', '2018-05-24 16:38:59', '2018-05-24 16:38:59', '', 77, 'http://localhost/dashboard/blog_esgis/2018/05/24/77-autosave-v1/', 0, 'revision', '', 0),
(82, 1, '2018-05-24 16:22:19', '2018-05-24 16:22:19', '<a href=\"http://localhost/dashboard/blog_esgis/2018/05/24/journee-internationale-de-la-femme-a-lesgis/jeunesse-2/\"><img class=\"aligncenter wp-image-80\" src=\"http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/jeunesse-1-300x95.png\" alt=\"\" width=\"250\" height=\"80\" /></a>\r\n\r\nCe jeudi 08/03/2018 a été la Journée Internationale de la Femme. A cette occasion, une conférence a été organisée à l’Ecole Supérieur de Gestion d’Informatique et des Sciences (ESGIS-TOGO) sur leur site d’Avédji. La conférence a pour thème : <strong>« Le Leadership Féminin : la femme et les métiers des finances »</strong>. Etaient présents :\r\n<ul>\r\n 	<li>Macy Marcel AKAKPO Président du Conseil d’Administration de l’ESGIS.</li>\r\n 	<li>Comlangan Mawutoè d’ALMEIDA ancien Ministre de la communication actuellement écrivain,</li>\r\n 	<li>Mme AFANOU-KEZIE Responsable des Ressources Humaines à la BOA,</li>\r\n 	<li>Mme NATHANIELS Chef d’agence à l’Agence Principale de la BOA,</li>\r\n</ul>', 'Journée Internationale de la Femme à l’ESGIS', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2018-05-24 16:22:19', '2018-05-24 16:22:19', '', 77, 'http://localhost/dashboard/blog_esgis/2018/05/24/77-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-05-24 16:39:30', '2018-05-24 16:39:30', '', 'jeunesse', '', 'inherit', 'open', 'closed', '', 'jeunesse-3', '', '', '2018-05-24 16:39:30', '2018-05-24 16:39:30', '', 77, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/jeunesse-2.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2018-05-24 16:40:15', '2018-05-24 16:40:15', '<a href=\"http://localhost/dashboard/blog_esgis/2018/05/24/journee-internationale-de-la-femme-a-lesgis/jeunesse-2/\"><img class=\" wp-image-83 aligncenter\" src=\"http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/jeunesse-2-300x108.png\" alt=\"\" width=\"306\" height=\"110\" /></a>\r\n\r\nCe jeudi 08/03/2018 a été la Journée Internationale de la Femme. A cette occasion, une conférence a été organisée à l’Ecole Supérieur de Gestion d’Informatique et des Sciences (ESGIS-TOGO) sur leur site d’Avédji. La conférence a pour thème : <strong>« Le Leadership Féminin : la femme et les métiers des finances »</strong>. Etaient présents :\r\n<ul>\r\n 	<li>Macy Marcel AKAKPO Président du Conseil d’Administration de l’ESGIS.</li>\r\n 	<li>Comlangan Mawutoè d’ALMEIDA ancien Ministre de la communication actuellement écrivain,</li>\r\n 	<li>Mme AFANOU-KEZIE Responsable des Ressources Humaines à la BOA,</li>\r\n 	<li>Mme NATHANIELS Chef d’agence à l’Agence Principale de la BOA,</li>\r\n</ul>', 'Journée Internationale de la Femme à l’ESGIS', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2018-05-24 16:40:15', '2018-05-24 16:40:15', '', 77, 'http://localhost/dashboard/blog_esgis/2018/05/24/77-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(85, 1, '2018-05-24 16:50:11', '2018-05-24 16:50:11', '{\n    \"nav_menu_item[-1996844490]\": {\n        \"value\": {\n            \"object_id\": 5,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"taxonomy\",\n            \"title\": \"ADMINISTRATION\",\n            \"url\": \"http://localhost/dashboard/blog_esgis/category/adm/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"ADMINISTRATION\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Cat\\u00e9gorie\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-378453119]\": {\n        \"value\": {\n            \"object_id\": 5,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"taxonomy\",\n            \"title\": \"ADMINISTRATION\",\n            \"url\": \"http://localhost/dashboard/blog_esgis/category/adm/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"ADMINISTRATION\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Cat\\u00e9gorie\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-1911232404]\": {\n        \"value\": {\n            \"object_id\": 3,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"taxonomy\",\n            \"title\": \"ETUDIANTS\",\n            \"url\": \"http://localhost/dashboard/blog_esgis/category/etd/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"ETUDIANTS\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Cat\\u00e9gorie\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-1641800942]\": {\n        \"value\": {\n            \"object_id\": 1,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"taxonomy\",\n            \"title\": \"ESGIS\",\n            \"url\": \"http://localhost/dashboard/blog_esgis/category/esgis/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"ESGIS\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Cat\\u00e9gorie\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-1356926407]\": {\n        \"value\": {\n            \"object_id\": 4,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"taxonomy\",\n            \"title\": \"PROFESSEUR\",\n            \"url\": \"http://localhost/dashboard/blog_esgis/category/prof/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"PROFESSEUR\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Cat\\u00e9gorie\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-386172783]\": {\n        \"value\": {\n            \"object_id\": 77,\n            \"object\": \"post\",\n            \"menu_item_parent\": 0,\n            \"position\": 7,\n            \"type\": \"post_type\",\n            \"title\": \"Journ\\u00e9e Internationale de la Femme \\u00e0 l\\u2019ESGIS\",\n            \"url\": \"http://localhost/dashboard/blog_esgis/2018/05/24/journee-internationale-de-la-femme-a-lesgis/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Journ\\u00e9e Internationale de la Femme \\u00e0 l\\u2019ESGIS\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Article\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-1459484373]\": {\n        \"value\": {\n            \"object_id\": 54,\n            \"object\": \"post\",\n            \"menu_item_parent\": 0,\n            \"position\": 8,\n            \"type\": \"post_type\",\n            \"title\": \"L\'Administration\",\n            \"url\": \"http://localhost/dashboard/blog_esgis/2018/05/23/ladministration/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"L\'Administration\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Article\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-1724494093]\": {\n        \"value\": {\n            \"object_id\": 47,\n            \"object\": \"post\",\n            \"menu_item_parent\": 0,\n            \"position\": 9,\n            \"type\": \"post_type\",\n            \"title\": \"Les Etudiants Informaticien(es) d\'ESGIS\",\n            \"url\": \"http://localhost/dashboard/blog_esgis/2018/05/23/les-etudiants-informaticienes-desgis/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Les Etudiants Informaticien(es) d\'ESGIS\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Article\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-241933317]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 10,\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://localhost/dashboard/blog_esgis\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Accueil\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ddaa69c0-24c3-4e17-a1a2-53289d8a6170', '', '', '2018-05-24 16:50:11', '2018-05-24 16:50:11', '', 0, 'http://localhost/dashboard/blog_esgis/?p=85', 0, 'customize_changeset', '', 0),
(86, 1, '2018-05-24 16:50:11', '2018-05-24 16:50:11', ' ', '', '', 'publish', 'closed', 'closed', '', '86', '', '', '2018-05-24 16:50:11', '2018-05-24 16:50:11', '', 0, 'http://localhost/dashboard/blog_esgis/2018/05/24/86/', 2, 'nav_menu_item', '', 0),
(95, 1, '2018-05-24 16:53:47', '0000-00-00 00:00:00', '{\n    \"nav_menu_item[87]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[94]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[90]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 4,\n            \"object\": \"category\",\n            \"type\": \"taxonomy\",\n            \"type_label\": \"Cat\\u00e9gorie\",\n            \"url\": \"http://localhost/dashboard/blog_esgis/category/prof/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 6,\n            \"status\": \"publish\",\n            \"original_title\": \"PROFESSEUR\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '811e8013-6c25-42aa-b22d-e147a383e150', '', '', '2018-05-24 16:53:47', '2018-05-24 16:53:47', '', 0, 'http://localhost/dashboard/blog_esgis/?p=95', 0, 'customize_changeset', '', 0),
(96, 1, '2018-05-24 17:11:23', '0000-00-00 00:00:00', '{\n    \"nav_menu_item[87]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[91]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[92]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[93]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[94]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[88]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[90]\": {\n        \"value\": {\n            \"object_id\": 4,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 7,\n            \"type\": \"taxonomy\",\n            \"title\": \"\",\n            \"url\": \"http://localhost/dashboard/blog_esgis/category/prof/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"PROFESSEUR\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Cat\\u00e9gorie\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[86]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[89]\": {\n        \"value\": {\n            \"object_id\": 1,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 9,\n            \"type\": \"taxonomy\",\n            \"title\": \"\",\n            \"url\": \"http://localhost/dashboard/blog_esgis/category/esgis/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"ESGIS\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Cat\\u00e9gorie\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-1124386088]\": {\n        \"value\": {\n            \"object_id\": 5,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"taxonomy\",\n            \"title\": \"ADMINISTRATION\",\n            \"url\": \"http://localhost/dashboard/blog_esgis/category/adm/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"ADMINISTRATION\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Cat\\u00e9gorie\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-1256308793]\": {\n        \"value\": {\n            \"object_id\": 3,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 8,\n            \"type\": \"taxonomy\",\n            \"title\": \"ETUDIANTS\",\n            \"url\": \"http://localhost/dashboard/blog_esgis/category/etd/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"ETUDIANTS\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Cat\\u00e9gorie\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '9c6b9759-1af3-4dc5-87cb-7c794ee8865c', '', '', '2018-05-24 17:11:23', '2018-05-24 17:11:23', '', 0, 'http://localhost/dashboard/blog_esgis/?p=96', 0, 'customize_changeset', '', 0),
(97, 1, '2018-05-24 17:21:35', '0000-00-00 00:00:00', '{\n    \"nav_menu_item[87]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[88]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[89]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[91]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[92]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[93]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[94]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[90]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '845ae4f4-6e8d-4d01-93f7-91375ecfa3df', '', '', '2018-05-24 17:21:35', '2018-05-24 17:21:35', '', 0, 'http://localhost/dashboard/blog_esgis/?p=97', 0, 'customize_changeset', '', 0),
(98, 1, '2018-05-24 17:23:26', '2018-05-24 17:23:26', '{\n    \"nav_menu_item[-1309466341]\": {\n        \"value\": {\n            \"object_id\": 4,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"taxonomy\",\n            \"title\": \"PROFESSEUR\",\n            \"url\": \"http://localhost/dashboard/blog_esgis/category/prof/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"PROFESSEUR\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Cat\\u00e9gorie\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-1804042399]\": {\n        \"value\": {\n            \"object_id\": 3,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"taxonomy\",\n            \"title\": \"ETUDIANTS\",\n            \"url\": \"http://localhost/dashboard/blog_esgis/category/etd/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"ETUDIANTS\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Cat\\u00e9gorie\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f1d62f5c-11b6-406e-9b79-5d75a2a6766c', '', '', '2018-05-24 17:23:26', '2018-05-24 17:23:26', '', 0, 'http://localhost/dashboard/blog_esgis/?p=98', 0, 'customize_changeset', '', 0),
(99, 1, '2018-05-24 17:23:26', '2018-05-24 17:23:26', ' ', '', '', 'publish', 'closed', 'closed', '', '99', '', '', '2018-05-24 17:23:26', '2018-05-24 17:23:26', '', 0, 'http://localhost/dashboard/blog_esgis/2018/05/24/99/', 3, 'nav_menu_item', '', 0),
(100, 1, '2018-05-24 17:23:27', '2018-05-24 17:23:27', ' ', '', '', 'publish', 'closed', 'closed', '', '100', '', '', '2018-05-24 17:23:27', '2018-05-24 17:23:27', '', 0, 'http://localhost/dashboard/blog_esgis/2018/05/24/100/', 4, 'nav_menu_item', '', 0),
(101, 1, '2018-05-24 22:45:07', '2018-05-24 22:45:07', '<div class=\"entry-content\">\r\n<p style=\"text-align: center;\"><img class=\" wp-image-102 alignleft\" src=\"http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/concepteur-300x225.jpg\" alt=\"\" width=\"236\" height=\"177\" /></p>\r\n<p style=\"text-align: left;\">Je suis informaticien de formation dans ma deuxième année.je me spécialise en administration\r\ndes réseaux et sécurité. je suis passionné par le numériques digitale plus précisément l\'intelligence\r\nartificiel et la physique quantique qui seront dans un future proche la clé maitresse de notre évolution.\r\nJaime bien les travail collectif, <strong>Car seul je ne suis rien mais ensemble on est fort!!</strong></p>\r\n\r\n</div>', 'A propos du concepteur', '', 'publish', 'closed', 'closed', '', 'description', '', '', '2018-05-24 22:45:07', '2018-05-24 22:45:07', '', 0, 'http://localhost/dashboard/blog_esgis/?page_id=101', 0, 'page', '', 0),
(102, 1, '2018-05-24 22:43:02', '2018-05-24 22:43:02', '', 'concepteur', '', 'inherit', 'open', 'closed', '', 'concepteur', '', '', '2018-05-24 22:43:02', '2018-05-24 22:43:02', '', 101, 'http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/concepteur.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2018-05-24 22:45:07', '2018-05-24 22:45:07', '<div class=\"entry-content\">\r\n<p style=\"text-align: center;\"><img class=\" wp-image-102 alignleft\" src=\"http://localhost/dashboard/blog_esgis/wp-content/uploads/2018/05/concepteur-300x225.jpg\" alt=\"\" width=\"236\" height=\"177\" /></p>\r\n<p style=\"text-align: left;\">Je suis informaticien de formation dans ma deuxième année.je me spécialise en administration\r\ndes réseaux et sécurité. je suis passionné par le numériques digitale plus précisément l\'intelligence\r\nartificiel et la physique quantique qui seront dans un future proche la clé maitresse de notre évolution.\r\nJaime bien les travail collectif, <strong>Car seul je ne suis rien mais ensemble on est fort!!</strong></p>\r\n\r\n</div>', 'A propos du concepteur', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2018-05-24 22:45:07', '2018-05-24 22:45:07', '', 101, 'http://localhost/dashboard/blog_esgis/2018/05/24/101-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2018-05-24 22:51:28', '2018-05-24 22:51:28', '{\n    \"nav_menu_item[-68464466]\": {\n        \"value\": {\n            \"object_id\": 101,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"A propos du concepteur\",\n            \"url\": \"http://localhost/dashboard/blog_esgis/description/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"A propos du concepteur\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c528226a-d640-4afc-9d97-293ee61668b4', '', '', '2018-05-24 22:51:28', '2018-05-24 22:51:28', '', 0, 'http://localhost/dashboard/blog_esgis/2018/05/24/c528226a-d640-4afc-9d97-293ee61668b4/', 0, 'customize_changeset', '', 0),
(105, 1, '2018-05-24 22:51:29', '2018-05-24 22:51:29', '', 'A PROPOS DU CONCEPTEUR', '', 'publish', 'closed', 'closed', '', '105', '', '', '2018-05-24 22:52:44', '2018-05-24 22:52:44', '', 0, 'http://localhost/dashboard/blog_esgis/2018/05/24/105/', 5, 'nav_menu_item', '', 0),
(106, 1, '2018-05-24 22:52:44', '2018-05-24 22:52:44', '{\n    \"nav_menu_item[105]\": {\n        \"value\": {\n            \"object_id\": 101,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"A PROPOS DU CONCEPTEUR\",\n            \"url\": \"http://localhost/dashboard/blog_esgis/description/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"A propos du concepteur\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '96f705c6-11b6-497a-b2dc-158764bdf2e7', '', '', '2018-05-24 22:52:44', '2018-05-24 22:52:44', '', 0, 'http://localhost/dashboard/blog_esgis/?p=106', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'ESGIS', 'esgis', 0),
(2, 'Menu', 'menu', 0),
(3, 'ETUDIANTS', 'etd', 0),
(4, 'PROFESSEUR', 'prof', 0),
(5, 'ADMINISTRATION', 'adm', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(23, 2, 0),
(47, 3, 0),
(54, 5, 0),
(77, 1, 0),
(86, 2, 0),
(99, 2, 0),
(100, 2, 0),
(105, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin@Blog_ESGIS.admin'),
(2, 1, 'first_name', 'robert'),
(3, 1, 'last_name', 'AZIAKESSE'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'true'),
(7, 1, 'admin_color', 'coffee'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', 'fr_FR'),
(11, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:8:{s:64:\"e7043b706b42a48206fd760c1a137c3bac8f814f26210935e087d8080032e55c\";a:4:{s:10:\"expiration\";i:1528215001;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299\";s:5:\"login\";i:1527005401;}s:64:\"d2a00279c918441b90c76d0a569b538f3d0fc2c5fc436c2ddd38ad2ee6c371c0\";a:4:{s:10:\"expiration\";i:1528215205;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299\";s:5:\"login\";i:1527005605;}s:64:\"4534a7dd418c8b4564417697f9878b6de30799ef7347707e15a2f805853a4a87\";a:4:{s:10:\"expiration\";i:1528217522;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0\";s:5:\"login\";i:1527007922;}s:64:\"a11f1b5da18ac6c14c3c68e25ce4bd499b7ae9f7a4f0bb9c04549d4a0eec9b4a\";a:4:{s:10:\"expiration\";i:1528227754;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299\";s:5:\"login\";i:1527018154;}s:64:\"638b7d2f78625a69ab486a61d7d3e26df76849f47121c0961eed13cf4187e856\";a:4:{s:10:\"expiration\";i:1528228500;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:58.0) Gecko/20100101 Firefox/58.0\";s:5:\"login\";i:1527018900;}s:64:\"45ac347a2aff1f09056b69351cbea8b37ab858cf429567527b6919587d075fb1\";a:4:{s:10:\"expiration\";i:1528237303;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:58.0) Gecko/20100101 Firefox/58.0\";s:5:\"login\";i:1527027703;}s:64:\"d416fad45c1c899826147d3f5a0b22c44912c187e7ed81b6f13b23c3ae29f14e\";a:4:{s:10:\"expiration\";i:1528263552;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:5:\"login\";i:1527053952;}s:64:\"afdb7a74f9df62327cd6bbf3c96be983028d98e3754e5d4c0837b5bf1be63758\";a:4:{s:10:\"expiration\";i:1528275570;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:5:\"login\";i:1527065970;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=1&editor_plain_text_paste_warning=1&editor=tinymce&post_dfw=off'),
(18, 1, 'wp_user-settings-time', '1527201907'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:11:\"css-classes\";i:3;s:3:\"xfn\";i:4;s:11:\"description\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'closedpostboxes_page', 'a:0:{}'),
(23, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(24, 1, 'closedpostboxes_post', 'a:0:{}'),
(25, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(26, 1, 'closedpostboxes_dashboard', 'a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}'),
(27, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(28, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin@Blog_ESGIS.admin', '$P$BCT0HbnRQgAdZ8gPgctjp8ZAcMs7ER/', 'adminblog_esgis-admin', 'robert.aziakesse228@gmail.com', '', '2018-05-22 16:07:14', '', 0, 'robert');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;
--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;
--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
