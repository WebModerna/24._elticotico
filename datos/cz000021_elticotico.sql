-- phpMyAdmin SQL Dump
-- version 4.0.10.15
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 30-09-2016 a las 16:58:53
-- Versión del servidor: 5.1.73
-- Versión de PHP: 5.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cz000021_elticotico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) DEFAULT NULL,
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5630 ;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://www.webmoderna.com.ar/elticotico', 'yes'),
(2, 'blogname', 'El Tico Tico', 'yes'),
(3, 'blogdescription', 'Marisquería en Mina Clavero', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'edgardogalletto@gmail.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '', 'yes'),
(8, 'use_smilies', '', 'yes'),
(9, 'require_name_email', '', 'yes'),
(10, 'comments_notify', '', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '1', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'closed', 'yes'),
(19, 'default_ping_status', 'closed', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'j F, Y', 'yes'),
(23, 'time_format', 'H:i', 'yes'),
(24, 'links_updated_date_format', 'j F, Y G:i', 'yes'),
(28, 'comment_moderation', '', 'yes'),
(29, 'moderation_notify', '', 'yes'),
(30, 'permalink_structure', '/%postname%/', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:2:{i:0;s:45:"limit-login-attempts/limit-login-attempts.php";i:2;s:23:"wp-minify/wp-minify.php";}', 'yes'),
(36, 'home', 'http://www.webmoderna.com.ar/elticotico', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', 'a:3:{i:0;s:81:"/home/cz000021/public_html/elticotico/wp-content/themes/desarrollos/functions.php";i:2;s:77:"/home/cz000021/public_html/elticotico/wp-content/themes/desarrollos/style.css";i:3;s:0:"";}', 'no'),
(44, 'template', 'desarrollos', 'yes'),
(45, 'stylesheet', 'desarrollos', 'yes'),
(46, 'comment_whitelist', '', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '37965', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '1', 'yes'),
(56, 'default_link_category', '0', 'yes'),
(57, 'show_on_front', 'page', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '660', 'yes'),
(66, 'medium_size_h', '550', 'yes'),
(67, 'avatar_default', 'blank', 'yes'),
(68, 'large_size_w', '660', 'yes'),
(69, 'large_size_h', '550', 'yes'),
(70, 'image_default_link_type', '', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:0:{}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', 'America/Argentina/Cordoba', 'yes'),
(87, 'page_for_posts', '24', 'yes'),
(88, 'page_on_front', '2', 'yes'),
(89, 'default_post_format', '', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '22441', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:4:{i:1475239496;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1475280529;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1475282755;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:39:"http://www.webmoderna.com.ar/elticotico";s:4:"link";s:115:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://www.webmoderna.com.ar/elticotico/";s:3:"url";s:140:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/24._Elticotico/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:26:"http://wordpress.org/news/";s:3:"url";s:31:"http://wordpress.org/news/feed/";s:5:"title";s:22:"Blog oficial WordPress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:28:"http://planet.wordpress.org/";s:3:"url";s:33:"http://planet.wordpress.org/feed/";s:5:"title";s:30:"Otras noticias sobre WordPress";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(141, 'recently_activated', 'a:1:{s:41:"wordpress-importer/wordpress-importer.php";i:1475261955;}', 'yes'),
(145, '_transient_random_seed', 'a9e7245deb2d1e94f9d77661499f4960', 'yes'),
(155, 'wp_minify', 'a:21:{s:14:"cache_external";b:1;s:14:"cache_interval";i:900;s:11:"css_exclude";a:0:{}s:11:"css_include";a:0:{}s:14:"debug_nominify";b:0;s:13:"debug_firephp";b:1;s:10:"enable_css";b:0;s:9:"enable_js";b:0;s:11:"enable_html";b:1;s:9:"auto_base";b:1;s:20:"extra_minify_options";s:0:"";s:10:"js_exclude";a:0:{}s:10:"js_include";a:0:{}s:12:"js_in_footer";b:0;s:11:"force_https";b:0;s:10:"pretty_url";b:1;s:9:"show_link";b:0;s:13:"show_advanced";b:1;s:11:"uri_exclude";a:0:{}s:7:"version";s:5:"1.2.0";s:10:"deprecated";a:3:{i:0;s:7:"wp_path";i:1;s:5:"debug";i:2;s:17:"debug_noprettyurl";}}', 'yes'),
(160, 'current_theme', 'El tico Tico', 'yes'),
(161, 'theme_mods_Adapt', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1355532798;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:10:"footer-one";a:0:{}s:10:"footer-two";a:0:{}s:12:"footer-three";N;s:11:"footer-four";N;}}}', 'yes'),
(162, 'theme_switched', '', 'yes'),
(165, 'theme_mods_desarrollos', 'a:1:{i:0;b:0;}', 'yes'),
(166, 'et_images_temp_folder', 'http://www.webmoderna.com.ar/elticotico/wp-content/uploads/et_temp', 'yes'),
(167, 'et_schedule_clean_images_last_time', '1355533085', 'yes'),
(169, '_site_transient_et_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1355536822;}', 'yes'),
(170, 'elegantestate_logo', '', 'yes'),
(171, 'elegantestate_favicon', '', 'yes'),
(172, 'elegantestate_color_scheme', 'Default', 'yes'),
(173, 'elegantestate_blog_style', 'false', 'yes'),
(174, 'elegantestate_grab_image', 'false', 'yes'),
(175, 'elegantestate_blog_cat', 'Sin categoría', 'yes'),
(176, 'elegantestate_catnum_posts', '6', 'yes'),
(177, 'elegantestate_archivenum_posts', '5', 'yes'),
(178, 'elegantestate_searchnum_posts', '5', 'yes'),
(179, 'elegantestate_tagnum_posts', '5', 'yes'),
(180, 'elegantestate_date_format', 'M j, Y', 'yes'),
(181, 'elegantestate_use_excerpt', 'false', 'yes'),
(182, 'elegantestate_homepage_posts', '7', 'yes'),
(183, 'elegantestate_duplicate', 'false', 'yes'),
(184, 'elegantestate_use_pages', 'false', 'yes'),
(185, 'elegantestate_feat_cat', 'Sin categoría', 'yes'),
(186, 'elegantestate_featured_num', '5', 'yes'),
(187, 'elegantestate_slider_auto', 'false', 'yes'),
(188, 'elegantestate_slider_autospeed', '3000', 'yes'),
(189, 'elegantestate_slider_effect', 'fade', 'yes'),
(190, 'elegantestate_listings', 'false', 'yes'),
(191, 'elegantestate_enable_dropdowns', 'false', 'yes'),
(192, 'elegantestate_home_link', 'false', 'yes'),
(193, 'elegantestate_sort_pages', 'post_title', 'yes'),
(194, 'elegantestate_order_page', 'asc', 'yes'),
(195, 'elegantestate_tiers_shown_pages', '3', 'yes'),
(196, 'elegantestate_enable_dropdowns_categories', 'false', 'yes'),
(197, 'elegantestate_categories_empty', 'false', 'yes'),
(198, 'elegantestate_tiers_shown_categories', '3', 'yes'),
(199, 'elegantestate_sort_cat', 'name', 'yes'),
(200, 'elegantestate_order_cat', 'asc', 'yes'),
(201, 'elegantestate_swap_navbar', 'false', 'yes'),
(202, 'elegantestate_disable_toptier', 'false', 'yes'),
(203, 'elegantestate_postinfo2', 'a:4:{i:0;s:6:"author";i:1;s:4:"date";i:2;s:10:"categories";i:3;s:8:"comments";}', 'yes'),
(204, 'elegantestate_thumbnails', 'false', 'yes'),
(205, 'elegantestate_show_postcomments', 'false', 'yes'),
(206, 'elegantestate_contact_agent', '#', 'yes'),
(207, 'elegantestate_page_thumbnails', 'false', 'yes'),
(208, 'elegantestate_show_pagescomments', 'false', 'yes'),
(209, 'elegantestate_postinfo1', 'a:4:{i:0;s:6:"author";i:1;s:4:"date";i:2;s:10:"categories";i:3;s:8:"comments";}', 'yes'),
(210, 'elegantestate_thumbnails_index', 'false', 'yes'),
(211, 'elegantestate_custom_colors', 'false', 'yes'),
(212, 'elegantestate_child_css', 'false', 'yes'),
(213, 'elegantestate_child_cssurl', '', 'yes'),
(214, 'elegantestate_color_bgcolor', '', 'yes'),
(215, 'elegantestate_color_mainfont', '', 'yes'),
(216, 'elegantestate_color_mainlink', '', 'yes'),
(217, 'elegantestate_color_pagelink', '', 'yes'),
(218, 'elegantestate_color_catslink', '', 'yes'),
(219, 'elegantestate_color_sidebar_titles', '', 'yes'),
(220, 'elegantestate_sidebar_links', '', 'yes'),
(221, 'elegantestate_color_footer_links', '', 'yes'),
(222, 'elegantestate_seo_home_title', 'false', 'yes'),
(223, 'elegantestate_seo_home_description', 'false', 'yes'),
(224, 'elegantestate_seo_home_keywords', 'false', 'yes'),
(225, 'elegantestate_seo_home_canonical', 'false', 'yes'),
(226, 'elegantestate_seo_home_titletext', '', 'yes'),
(227, 'elegantestate_seo_home_descriptiontext', '', 'yes'),
(228, 'elegantestate_seo_home_keywordstext', '', 'yes'),
(229, 'elegantestate_seo_home_type', 'BlogName | Blog description', 'yes'),
(230, 'elegantestate_seo_home_separate', ' | ', 'yes'),
(231, 'elegantestate_seo_single_title', 'false', 'yes'),
(232, 'elegantestate_seo_single_description', 'false', 'yes'),
(233, 'elegantestate_seo_single_keywords', 'false', 'yes'),
(234, 'elegantestate_seo_single_canonical', 'false', 'yes'),
(235, 'elegantestate_seo_single_field_title', 'seo_title', 'yes'),
(236, 'elegantestate_seo_single_field_description', 'seo_description', 'yes'),
(237, 'elegantestate_seo_single_field_keywords', 'seo_keywords', 'yes'),
(238, 'elegantestate_seo_single_type', 'Post title | BlogName', 'yes'),
(239, 'elegantestate_seo_single_separate', ' | ', 'yes'),
(240, 'elegantestate_seo_index_canonical', 'false', 'yes'),
(241, 'elegantestate_seo_index_description', 'false', 'yes'),
(242, 'elegantestate_seo_index_type', 'Category name | BlogName', 'yes'),
(243, 'elegantestate_seo_index_separate', ' | ', 'yes'),
(244, 'elegantestate_integrate_header_enable', 'false', 'yes'),
(245, 'elegantestate_integrate_body_enable', 'false', 'yes'),
(246, 'elegantestate_integrate_singletop_enable', 'false', 'yes'),
(247, 'elegantestate_integrate_singlebottom_enable', 'false', 'yes'),
(248, 'elegantestate_integration_head', '', 'yes'),
(249, 'elegantestate_integration_body', '', 'yes'),
(250, 'elegantestate_integration_single_top', '', 'yes'),
(251, 'elegantestate_integration_single_bottom', '', 'yes'),
(252, 'elegantestate_468_enable', 'false', 'yes'),
(253, 'elegantestate_468_image', '', 'yes'),
(254, 'elegantestate_468_url', '', 'yes'),
(255, 'elegantestate_468_adsense', '', 'yes'),
(263, 'theme_mods_mobipress/mobipress-theme', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1355536877;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;}}}', 'yes'),
(264, 'theme_mods_twentyeleven', 'a:5:{i:0;b:0;s:16:"header_textcolor";s:5:"blank";s:12:"header_image";s:88:"http://localhost/24._Elticotico/wp-content/themes/twentyeleven/images/headers/willow.jpg";s:17:"header_image_data";a:3:{s:3:"url";s:88:"http://localhost/24._Elticotico/wp-content/themes/twentyeleven/images/headers/willow.jpg";s:13:"thumbnail_url";s:98:"http://localhost/24._Elticotico/wp-content/themes/twentyeleven/images/headers/willow-thumbnail.jpg";s:11:"description";s:5:"Sauce";}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1355542639;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;s:9:"sidebar-3";N;s:9:"sidebar-4";N;s:9:"sidebar-5";N;}}}', 'yes'),
(265, 'twentyeleven_theme_options', 'a:3:{s:12:"color_scheme";s:5:"light";s:10:"link_color";s:7:"#1b8be0";s:12:"theme_layout";s:7:"content";}', 'yes'),
(270, 'theme_mods_twentytwelve', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1355542659;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:18:"orphaned_widgets_2";a:0:{}s:18:"orphaned_widgets_3";a:0:{}}}}', 'yes'),
(281, 'category_children', 'a:0:{}', 'yes'),
(354, '_transient_plugins_delete_result_1', '1', 'yes'),
(761, 'db_upgraded', '', 'yes'),
(774, 'limit_login_client_type', 'REMOTE_ADDR', 'yes'),
(775, 'limit_login_allowed_retries', '4', 'yes'),
(776, 'limit_login_lockout_duration', '1200', 'yes'),
(777, 'limit_login_allowed_lockouts', '4', 'yes'),
(778, 'limit_login_long_duration', '86400', 'yes'),
(779, 'limit_login_valid_duration', '43200', 'yes'),
(780, 'limit_login_lockout_notify', 'log,email', 'yes'),
(781, 'limit_login_notify_email_after', '4', 'yes'),
(782, 'limit_login_cookies', '1', 'yes'),
(783, 'WPLANG', 'es_ES', 'yes'),
(1007, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:25:"edgardogalletto@gmail.com";s:7:"version";s:5:"4.5.4";s:9:"timestamp";i:1473330835;}', 'yes'),
(2806, 'limit_login_retries', 'a:1:{s:13:"186.128.48.65";i:1;}', 'no'),
(2807, 'limit_login_retries_valid', 'a:1:{s:13:"186.128.48.65";i:1475305051;}', 'no'),
(2808, 'limit_login_lockouts', 'a:0:{}', 'yes'),
(2809, 'limit_login_logged', 'a:1:{s:13:"190.12.169.64";a:1:{s:5:"Admin";i:1;}}', 'no'),
(2810, 'limit_login_lockouts_total', '1', 'no'),
(3441, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1444366273', 'no'),
(3455, 'rewrite_rules', 'a:85:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=2&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(4294, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(4295, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(4296, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(4297, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(4298, 'finished_splitting_shared_terms', '1', 'yes'),
(4299, 'site_icon', '0', 'yes'),
(4300, 'medium_large_size_w', '768', 'yes'),
(4301, 'medium_large_size_h', '0', 'yes'),
(5619, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1475261999;s:7:"checked";a:3:{s:11:"desarrollos";s:3:"1.0";s:8:"spacious";s:7:"1.4.0.1";s:10:"webmoderna";s:3:"2.0";}s:8:"response";a:1:{s:8:"spacious";a:4:{s:5:"theme";s:8:"spacious";s:11:"new_version";s:5:"1.4.1";s:3:"url";s:38:"https://wordpress.org/themes/spacious/";s:7:"package";s:56:"https://downloads.wordpress.org/theme/spacious.1.4.1.zip";}}s:12:"translations";a:0:{}}', 'no'),
(5620, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1475261953;s:7:"checked";a:13:{s:36:"contact-form-7/wp-contact-form-7.php";s:3:"4.5";s:33:"contact-form-7-modules/hidden.php";s:3:"2.0";s:42:"contact-form-7-modules/send-all-fields.php";s:3:"2.0";s:105:"envialosimple-email-marketing-y-newsletters-gratis/envialosimple-email-marketing-y-newsletters-gratis.php";s:5:"1.108";s:14:"eliminador.php";s:3:"1.0";s:45:"limit-login-attempts/limit-login-attempts.php";s:5:"1.7.1";s:35:"wp-math-captcha/wp-math-captcha.php";s:5:"1.2.6";s:47:"really-simple-captcha/really-simple-captcha.php";s:3:"1.9";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:5:"2.2.6";s:35:"rename-wp-login/rename-wp-login.php";s:5:"2.5.5";s:41:"wordpress-importer/wordpress-importer.php";s:5:"0.6.1";s:21:"wp-sweep/wp-sweep.php";s:5:"1.0.8";s:23:"wp-minify/wp-minify.php";s:5:"1.2.0";}s:8:"response";a:2:{s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":8:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.5.1";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.4.5.1.zip";s:6:"tested";s:5:"4.6.1";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}s:41:"wordpress-importer/wordpress-importer.php";O:8:"stdClass":8:{s:2:"id";s:5:"14975";s:4:"slug";s:18:"wordpress-importer";s:6:"plugin";s:41:"wordpress-importer/wordpress-importer.php";s:11:"new_version";s:5:"0.6.3";s:3:"url";s:49:"https://wordpress.org/plugins/wordpress-importer/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.3.zip";s:6:"tested";s:5:"4.6.1";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}}s:12:"translations";a:0:{}s:9:"no_update";a:10:{s:33:"contact-form-7-modules/hidden.php";O:8:"stdClass":6:{s:2:"id";s:5:"18844";s:4:"slug";s:22:"contact-form-7-modules";s:6:"plugin";s:33:"contact-form-7-modules/hidden.php";s:11:"new_version";s:3:"2.0";s:3:"url";s:53:"https://wordpress.org/plugins/contact-form-7-modules/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/contact-form-7-modules.zip";}s:42:"contact-form-7-modules/send-all-fields.php";O:8:"stdClass":6:{s:2:"id";s:5:"18844";s:4:"slug";s:22:"contact-form-7-modules";s:6:"plugin";s:42:"contact-form-7-modules/send-all-fields.php";s:11:"new_version";s:3:"2.0";s:3:"url";s:53:"https://wordpress.org/plugins/contact-form-7-modules/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/contact-form-7-modules.zip";}s:105:"envialosimple-email-marketing-y-newsletters-gratis/envialosimple-email-marketing-y-newsletters-gratis.php";O:8:"stdClass":6:{s:2:"id";s:5:"36674";s:4:"slug";s:50:"envialosimple-email-marketing-y-newsletters-gratis";s:6:"plugin";s:105:"envialosimple-email-marketing-y-newsletters-gratis/envialosimple-email-marketing-y-newsletters-gratis.php";s:11:"new_version";s:5:"1.108";s:3:"url";s:81:"https://wordpress.org/plugins/envialosimple-email-marketing-y-newsletters-gratis/";s:7:"package";s:93:"https://downloads.wordpress.org/plugin/envialosimple-email-marketing-y-newsletters-gratis.zip";}s:45:"limit-login-attempts/limit-login-attempts.php";O:8:"stdClass":7:{s:2:"id";s:4:"6158";s:4:"slug";s:20:"limit-login-attempts";s:6:"plugin";s:45:"limit-login-attempts/limit-login-attempts.php";s:11:"new_version";s:5:"1.7.1";s:3:"url";s:51:"https://wordpress.org/plugins/limit-login-attempts/";s:7:"package";s:69:"https://downloads.wordpress.org/plugin/limit-login-attempts.1.7.1.zip";s:14:"upgrade_notice";s:249:"Users of version 1.6.2 and 1.7.0 should upgrade immediately. There was a problem with &quot;auth cookie&quot; lockout enforcement. Lockout of normal password login attempts still worked as it should. Please see plugin Changelog for more information.";}s:35:"wp-math-captcha/wp-math-captcha.php";O:8:"stdClass":7:{s:2:"id";s:5:"41636";s:4:"slug";s:15:"wp-math-captcha";s:6:"plugin";s:35:"wp-math-captcha/wp-math-captcha.php";s:11:"new_version";s:5:"1.2.6";s:3:"url";s:46:"https://wordpress.org/plugins/wp-math-captcha/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/wp-math-captcha.1.2.6.zip";s:14:"upgrade_notice";s:37:"Fix: Contact form 7 compatibility fix";}s:47:"really-simple-captcha/really-simple-captcha.php";O:8:"stdClass":6:{s:2:"id";s:4:"7028";s:4:"slug";s:21:"really-simple-captcha";s:6:"plugin";s:47:"really-simple-captcha/really-simple-captcha.php";s:11:"new_version";s:3:"1.9";s:3:"url";s:52:"https://wordpress.org/plugins/really-simple-captcha/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/really-simple-captcha.1.9.zip";}s:47:"regenerate-thumbnails/regenerate-thumbnails.php";O:8:"stdClass":6:{s:2:"id";s:4:"4437";s:4:"slug";s:21:"regenerate-thumbnails";s:6:"plugin";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:11:"new_version";s:5:"2.2.6";s:3:"url";s:52:"https://wordpress.org/plugins/regenerate-thumbnails/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip";}s:35:"rename-wp-login/rename-wp-login.php";O:8:"stdClass":6:{s:2:"id";s:5:"43156";s:4:"slug";s:15:"rename-wp-login";s:6:"plugin";s:35:"rename-wp-login/rename-wp-login.php";s:11:"new_version";s:5:"2.5.5";s:3:"url";s:46:"https://wordpress.org/plugins/rename-wp-login/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/rename-wp-login.2.5.5.zip";}s:21:"wp-sweep/wp-sweep.php";O:8:"stdClass":6:{s:2:"id";s:5:"58052";s:4:"slug";s:8:"wp-sweep";s:6:"plugin";s:21:"wp-sweep/wp-sweep.php";s:11:"new_version";s:5:"1.0.8";s:3:"url";s:39:"https://wordpress.org/plugins/wp-sweep/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/wp-sweep.1.0.8.zip";}s:23:"wp-minify/wp-minify.php";O:8:"stdClass":6:{s:2:"id";s:4:"7407";s:4:"slug";s:9:"wp-minify";s:6:"plugin";s:23:"wp-minify/wp-minify.php";s:11:"new_version";s:5:"1.2.0";s:3:"url";s:40:"https://wordpress.org/plugins/wp-minify/";s:7:"package";s:52:"https://downloads.wordpress.org/plugin/wp-minify.zip";}}}', 'no'),
(5621, '_site_transient_timeout_browser_d7ebeddeee1c10c06a3c4cf170141814', '1475866708', 'no'),
(5622, '_site_transient_browser_d7ebeddeee1c10c06a3c4cf170141814', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"49.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(5624, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/es_ES/wordpress-4.6.1.zip";s:6:"locale";s:5:"es_ES";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/es_ES/wordpress-4.6.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.6.1";s:7:"version";s:5:"4.6.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1475261933;s:15:"version_checked";s:5:"4.6.1";s:12:"translations";a:0:{}}', 'no'),
(5625, '_transient_timeout_plugin_slugs', '1475348356', 'no'),
(5626, '_transient_plugin_slugs', 'a:13:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";i:1;s:33:"contact-form-7-modules/hidden.php";i:2;s:42:"contact-form-7-modules/send-all-fields.php";i:3;s:105:"envialosimple-email-marketing-y-newsletters-gratis/envialosimple-email-marketing-y-newsletters-gratis.php";i:4;s:14:"eliminador.php";i:5;s:45:"limit-login-attempts/limit-login-attempts.php";i:6;s:35:"wp-math-captcha/wp-math-captcha.php";i:7;s:47:"really-simple-captcha/really-simple-captcha.php";i:8;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:9;s:35:"rename-wp-login/rename-wp-login.php";i:10;s:41:"wordpress-importer/wordpress-importer.php";i:11;s:21:"wp-sweep/wp-sweep.php";i:12;s:23:"wp-minify/wp-minify.php";}', 'no'),
(5627, 'can_compress_scripts', '0', 'no'),
(5628, '_site_transient_timeout_theme_roots', '1475263798', 'no'),
(5629, '_site_transient_theme_roots', 'a:3:{s:11:"desarrollos";s:7:"/themes";s:8:"spacious";s:7:"/themes";s:10:"webmoderna";s:7:"/themes";}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=121 ;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1444323367:1'),
(3, 2, '_edit_last', '1'),
(4, 2, 'et_page_template', ''),
(30, 24, '_edit_last', '1'),
(31, 24, '_edit_lock', '1355616437:1'),
(87, 73, '_edit_last', '1'),
(88, 73, '_edit_lock', '1358831407:1'),
(93, 79, '_wp_attached_file', '2012/12/IMG_5891-e1360319893789.jpg'),
(94, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:660;s:6:"height";i:495;s:4:"file";s:35:"2012/12/IMG_5891-e1360319893789.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_5891-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_5891-660x495.jpg";s:5:"width";i:660;s:6:"height";i:495;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"IMG_5891-660x495.jpg";s:5:"width";i:660;s:6:"height";i:495;s:9:"mime-type";s:10:"image/jpeg";}s:15:"video-thumbnail";a:4:{s:4:"file";s:18:"IMG_5891-66x56.jpg";s:5:"width";i:66;s:6:"height";i:56;s:9:"mime-type";s:10:"image/jpeg";}s:15:"index-thumbnail";a:4:{s:4:"file";s:20:"IMG_5891-170x160.jpg";s:5:"width";i:170;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:16:"slider-thumbnail";a:4:{s:4:"file";s:20:"IMG_5891-400x190.jpg";s:5:"width";i:400;s:6:"height";i:190;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:23:"Canon PowerShot A570 IS";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1274755565;s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"12.7";s:3:"iso";s:3:"250";s:13:"shutter_speed";s:5:"0.125";s:5:"title";s:0:"";}}'),
(95, 79, '_wp_attachment_image_alt', 'Edgard_Roul'),
(96, 79, '_edit_lock', '1360319903:1'),
(97, 79, '_wp_attachment_backup_sizes', 'a:1:{s:9:"full-orig";a:3:{s:5:"width";i:866;s:6:"height";i:650;s:4:"file";s:12:"IMG_5891.jpg";}}'),
(98, 79, '_edit_last', '1'),
(99, 81, '_wp_attached_file', '2012/12/SSA40004-e1360320814819.jpg'),
(100, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:720;s:6:"height";i:540;s:4:"file";s:35:"2012/12/SSA40004-e1360320814819.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";d:2.79999999999999982236431605997495353221893310546875;s:6:"credit";s:0:"";s:6:"camera";s:22:"Digimax A40 / KENOX Q1";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1229822043;s:9:"copyright";s:14:"Copyright 2005";s:12:"focal_length";s:5:"5.954";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:17:"0.033333333333333";s:5:"title";s:0:"";}}'),
(101, 81, '_edit_lock', '1360320824:1'),
(102, 81, '_wp_attachment_backup_sizes', 'a:2:{s:9:"full-orig";a:3:{s:5:"width";i:2048;s:6:"height";i:1536;s:4:"file";s:12:"SSA40004.jpg";}s:18:"full-1360320800358";a:3:{s:5:"width";i:660;s:6:"height";i:495;s:4:"file";s:27:"SSA40004-e1360320762536.jpg";}}'),
(103, 81, '_edit_last', '1'),
(104, 81, '_wp_attachment_image_alt', 'SSA40004'),
(105, 82, '_wp_attached_file', '2012/12/SSA40012-e1360320889711.jpg'),
(106, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:720;s:6:"height";i:540;s:4:"file";s:35:"2012/12/SSA40012-e1360320889711.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"SSA40012-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"SSA40012-660x495.jpg";s:5:"width";i:660;s:6:"height";i:495;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"SSA40012-660x495.jpg";s:5:"width";i:660;s:6:"height";i:495;s:9:"mime-type";s:10:"image/jpeg";}s:15:"video-thumbnail";a:4:{s:4:"file";s:18:"SSA40012-66x56.jpg";s:5:"width";i:66;s:6:"height";i:56;s:9:"mime-type";s:10:"image/jpeg";}s:15:"index-thumbnail";a:4:{s:4:"file";s:20:"SSA40012-170x160.jpg";s:5:"width";i:170;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:16:"slider-thumbnail";a:4:{s:4:"file";s:20:"SSA40012-400x190.jpg";s:5:"width";i:400;s:6:"height";i:190;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:2.79999999999999982236431605997495353221893310546875;s:6:"credit";s:0:"";s:6:"camera";s:22:"Digimax A40 / KENOX Q1";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1229822423;s:9:"copyright";s:14:"Copyright 2005";s:12:"focal_length";s:5:"5.954";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:17:"0.033333333333333";s:5:"title";s:0:"";}}'),
(107, 82, '_wp_attachment_image_alt', 'SSA40012'),
(108, 82, '_edit_lock', '1360320963:1'),
(109, 82, '_wp_attachment_backup_sizes', 'a:1:{s:9:"full-orig";a:3:{s:5:"width";i:2048;s:6:"height";i:1536;s:4:"file";s:12:"SSA40012.jpg";}}'),
(110, 82, '_edit_last', '1'),
(111, 84, '_wp_attached_file', '2012/12/SSA40017-e1360323669900.jpg'),
(112, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1536;s:6:"height";i:1182;s:4:"file";s:35:"2012/12/SSA40017-e1360323669900.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"SSA40017-e1360323669900-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"SSA40017-e1360323669900-660x507.jpg";s:5:"width";i:660;s:6:"height";i:507;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"SSA40017-e1360323669900-660x507.jpg";s:5:"width";i:660;s:6:"height";i:507;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:2.79999999999999982236431605997495353221893310546875;s:6:"credit";s:0:"";s:6:"camera";s:22:"Digimax A40 / KENOX Q1";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1229822743;s:9:"copyright";s:14:"Copyright 2005";s:12:"focal_length";s:5:"5.954";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:17:"0.033333333333333";s:5:"title";s:0:"";}}'),
(113, 84, '_edit_lock', '1360323754:1'),
(114, 84, '_wp_attachment_backup_sizes', 'a:7:{s:9:"full-orig";a:3:{s:5:"width";i:1536;s:6:"height";i:2048;s:4:"file";s:12:"SSA40017.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:20:"SSA40017-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:20:"SSA40017-412x550.jpg";s:5:"width";i:412;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:10:"large-orig";a:4:{s:4:"file";s:20:"SSA40017-412x550.jpg";s:5:"width";i:412;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:20:"video-thumbnail-orig";a:4:{s:4:"file";s:18:"SSA40017-66x56.jpg";s:5:"width";i:66;s:6:"height";i:56;s:9:"mime-type";s:10:"image/jpeg";}s:20:"index-thumbnail-orig";a:4:{s:4:"file";s:20:"SSA40017-170x160.jpg";s:5:"width";i:170;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:21:"slider-thumbnail-orig";a:4:{s:4:"file";s:20:"SSA40017-400x190.jpg";s:5:"width";i:400;s:6:"height";i:190;s:9:"mime-type";s:10:"image/jpeg";}}'),
(115, 84, '_edit_last', '1'),
(116, 84, '_wp_attachment_image_alt', 'SSA40017'),
(117, 86, '_wp_attached_file', '2012/12/SSA40088.jpg'),
(118, 86, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2048;s:6:"height";i:1536;s:4:"file";s:20:"2012/12/SSA40088.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";d:2.79999999999999982236431605997495353221893310546875;s:6:"credit";s:0:"";s:6:"camera";s:22:"Digimax A40 / KENOX Q1";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1229825743;s:9:"copyright";s:14:"Copyright 2005";s:12:"focal_length";s:5:"5.954";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:17:"0.033333333333333";s:5:"title";s:0:"";}}'),
(119, 86, '_edit_lock', '1360324146:1'),
(120, 86, '_wp_attachment_backup_sizes', 'a:2:{s:9:"full-orig";a:3:{s:5:"width";i:2048;s:6:"height";i:1536;s:4:"file";s:12:"SSA40088.jpg";}s:18:"full-1360324414369";a:3:{s:5:"width";i:660;s:6:"height";i:495;s:4:"file";s:27:"SSA40088-e1360324350804.jpg";}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_name` (`post_name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=94 ;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2012-12-15 00:44:50', '2012-12-15 00:44:50', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665"></iframe>\r\n\r\n[caption align="aligncenter" width="660"]<img src="http://www.webmoderna.com.ar/elticotico/wp-content/uploads/2012/12/IMG_5891-660x495.jpg" alt="Edgard_Roul" class="size-large" /> Edgard_Roul[/caption]\r\n\r\n[caption align="aligncenter" width="660"]<img src="http://www.webmoderna.com.ar/elticotico/wp-content/uploads/2012/12/SSA40004-e1360320814819.jpg" alt="SSA40004" class="size-large" /> SSA40004[/caption]\r\n\r\n[caption align="aligncenter" width="660"]<img src="http://www.webmoderna.com.ar/elticotico/wp-content/uploads/2012/12/SSA40012-660x495.jpg" alt="SSA40012" class="size-large" /> SSA40012[/caption]\r\n\r\n[caption align="aligncenter" width="660"]<img src="http://www.webmoderna.com.ar/elticotico/wp-content/uploads/2012/12/SSA40017-e1360323669900-660x507.jpg" alt="SSA40017" class="size-medium" /> SSA40017SSA40017[/caption]\r\n\r\n', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2014-06-28 14:32:07', '2014-06-28 17:32:07', '', 0, 'http://localhost/24._Elticotico/?page_id=2', 0, 'page', '', 0),
(4, 1, '2012-12-15 00:44:50', '2012-12-15 00:44:50', 'Esto es una página de ejemplo. Es diferente a una entrada porque permanece fija en un lugar y se mostrará en la navegación de tu sitio (en la mayoría de los temas). La mayoría de la gente empieza con una página de Acerca de, que les presenta a los potenciales visitantes del sitio. Podría ser algo como esto::\n\n<blockquote>¡Hola! Soy mensajero por el día, aspirante a actor por la noche, y este es mi blog. Vivo en Madrid, tengo un perrazo llamado Duque y me gustan las piñas coladas (y que me pille un chaparrón)</blockquote>\n\n...o algo así:\n\n<blockquote>La empresa XYZ se fundó en 1971 y ha estado ofreciendo "cosas" de calidad al público desde entonces. Situada en Madrid, XYZ emplea a más de 2.000 personas y hace todo tipo de cosas sorprendentes para la comunidad de Madrid.</blockquote>\n\nSi eres nuevo en WordPress deberías ir a <a href="http://localhost/24._Elticotico/wp-admin/">tu escritorio</a> para borrar esta páginay crear páginas nuevas con tu propio contenido. ¡Pásalo bien!', 'Página de ejemplo', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-15 00:44:50', '2012-12-15 00:44:50', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision/', 0, 'revision', '', 0),
(5, 1, '2012-12-15 00:51:09', '2012-12-15 00:51:09', 'Esto es una página de ejemplo. Es diferente a una entrada porque permanece fija en un lugar y se mostrará en la navegación de tu sitio (en la mayoría de los temas). La mayoría de la gente empieza con una página de Acerca de, que les presenta a los potenciales visitantes del sitio. Podría ser algo como esto::\r\n<blockquote>¡Hola! Soy mensajero por el día, aspirante a actor por la noche, y este es mi blog. Vivo en Madrid, tengo un perrazo llamado Duque y me gustan las piñas coladas (y que me pille un chaparrón)</blockquote>\r\n...o algo así:\r\n<blockquote>La empresa XYZ se fundó en 1971 y ha estado ofreciendo "cosas" de calidad al público desde entonces. Situada en Madrid, XYZ emplea a más de 2.000 personas y hace todo tipo de cosas sorprendentes para la comunidad de Madrid.</blockquote>\r\nSi eres nuevo en WordPress deberías ir a <a href="http://localhost/24._Elticotico/wp-admin/">tu escritorio</a> para borrar esta páginay crear páginas nuevas con tu propio contenido. ¡Pásalo bien!', 'Página de ejemplo', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-15 00:51:09', '2012-12-15 00:51:09', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-2/', 0, 'revision', '', 0),
(6, 1, '2014-06-28 14:32:03', '2014-06-28 17:32:03', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665"></iframe>\n\n[caption align="aligncenter" width="660"]<img src="http://www.webmoderna.com.ar/elticotico/wp-content/uploads/2012/12/IMG_5891-660x495.jpg" alt="Edgard_Roul" class="size-large wp-image-79" /> Edgard_Roul[/caption]\n\n[caption align="aligncenter" width="660"]<img src="http://www.webmoderna.com.ar/elticotico/wp-content/uploads/2012/12/SSA40004-e1360320814819.jpg" alt="SSA40004" class="size-large wp-image-81" /> SSA40004[/caption]\n\n[caption align="aligncenter" width="660"]<img src="http://www.webmoderna.com.ar/elticotico/wp-content/uploads/2012/12/SSA40012-660x495.jpg" alt="SSA40012" class="size-large" /> SSA40012[/caption]\n\n[caption align="aligncenter" width="660"]<img src="http://www.webmoderna.com.ar/elticotico/wp-content/uploads/2012/12/SSA40017-e1360323669900-660x507.jpg" alt="SSA40017" class="size-medium" /> SSA40017SSA40017[/caption]\n\n', 'Home', '', 'inherit', 'open', 'open', '', 'autosave', '', '', '2014-06-28 14:32:03', '2014-06-28 17:32:03', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-autosave/', 0, 'revision', '', 0),
(7, 1, '2012-12-15 00:51:36', '2012-12-15 00:51:36', 'Esto es una página de ejemplo. Es diferente a una entrada porque permanece fija en un lugar y se mostrará en la navegación de tu sitio (en la mayoría de los temas). La mayoría de la gente empieza con una página de Acerca de, que les presenta a los potenciales visitantes del sitio. Podría ser algo como esto::\r\n<blockquote>¡Hola! Soy mensajero por el día, aspirante a actor por la noche, y este es mi blog. Vivo en Madrid, tengo un perrazo llamado Duque y me gustan las piñas coladas (y que me pille un chaparrón)</blockquote>\r\n...o algo así:\r\n<blockquote>La empresa XYZ se fundó en 1971 y ha estado ofreciendo "cosas" de calidad al público desde entonces. Situada en Madrid, XYZ emplea a más de 2.000 personas y hace todo tipo de cosas sorprendentes para la comunidad de Madrid.</blockquote>\r\nSi eres nuevo en WordPress deberías ir a <a href="http://localhost/24._Elticotico/wp-admin/">tu escritorio</a> para borrar esta páginay crear páginas nuevas con tu propio contenido. ¡Pásalo bien!', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-15 00:51:36', '2012-12-15 00:51:36', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-3/', 0, 'revision', '', 0),
(14, 1, '2012-12-15 01:02:34', '2012-12-15 01:02:34', 'Esto es una página de ejemplo. Es diferente a una entrada porque permanece fija en un lugar y se mostrará en la navegación de tu sitio (en la mayoría de los temas). La mayoría de la gente empieza con una página de Acerca de, que les presenta a los potenciales visitantes del sitio. Podría ser algo como esto::\r\n<blockquote>¡Hola! Soy mensajero por el día, aspirante a actor por la noche, y este es mi blog. Vivo en Madrid, tengo un perrazo llamado Duque y me gustan las piñas coladas (y que me pille un chaparrón)</blockquote>\r\n...o algo así:\r\n<blockquote>La empresa XYZ se fundó en 1971 y ha estado ofreciendo "cosas" de calidad al público desde entonces. Situada en Madrid, XYZ emplea a más de 2.000 personas y hace todo tipo de cosas sorprendentes para la comunidad de Madrid.</blockquote>\r\nSi eres nuevo en WordPress deberías ir a <a href="http://localhost/24._Elticotico/wp-admin/">tu escritorio</a> para borrar esta páginay crear páginas nuevas con tu propio contenido. ¡Pásalo bien!', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-15 01:02:34', '2012-12-15 01:02:34', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-4/', 0, 'revision', '', 0),
(15, 1, '2012-12-15 01:13:24', '2012-12-15 01:13:24', '[caption id="attachment_13" align="alignnone" width="1024"]<iframe frameborder="0" width="665" height="569" border="0" id="camara1" src="http://192.168.5.105/main.htm">\r\n       </iframe> img10[/caption]\r\n\r\n[caption id="attachment_13" align="alignnone" width="1024"]<img class="size-large wp-image-13" alt="img10" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img101-1024x768.jpg" width="1024" height="768" /> img10[/caption]\r\n\r\n[caption id="attachment_12" align="alignnone" width="1024"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img91-1024x768.jpg" alt="img9" width="1024" height="768" class="size-large wp-image-12" /> img9[/caption]\r\n\r\n[caption id="attachment_10" align="alignnone" width="1024"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img71-1024x768.jpg" alt="img7" width="1024" height="768" class="size-large wp-image-10" /> img7[/caption]', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-15 01:13:24', '2012-12-15 01:13:24', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-5/', 0, 'revision', '', 0),
(16, 1, '2012-12-15 01:26:33', '2012-12-15 01:26:33', '<iframe frameborder="0" width="665" height="569" border="0" id="camara1" src="http://192.168.5.105/main.htm">\r\n</iframe>\r\n\r\n<img class="size-large wp-image-13" alt="img10" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img101-1024x768.jpg" width="1024" height="768" />\r\n\r\n<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img91-1024x768.jpg" alt="img9" width="1024" height="768" class="size-large wp-image-12" />\r\n\r\n<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img71-1024x768.jpg" alt="img7" width="1024" height="768" class="size-large wp-image-10" />', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-15 01:26:33', '2012-12-15 01:26:33', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-6/', 0, 'revision', '', 0),
(21, 1, '2012-12-15 01:30:38', '2012-12-15 01:30:38', '<iframe frameborder="0" width="665" height="569" border="0" id="camara1" src="http://192.168.5.105/main.htm">\r\n</iframe>\r\n<img class="size-large wp-image-13" alt="img10" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img101-1024x768.jpg" width="1024" height="768" />\r\n\r\n<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img91-1024x768.jpg" alt="img9" width="1024" height="768" class="size-large wp-image-12" />\r\n\r\n<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img71-1024x768.jpg" alt="img7" width="1024" height="768" class="size-large wp-image-10" />', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-15 01:30:38', '2012-12-15 01:30:38', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-7/', 0, 'revision', '', 0),
(24, 1, '2012-12-16 00:09:05', '2012-12-16 00:09:05', '', 'news', '', 'publish', 'open', 'open', '', 'news', '', '', '2012-12-16 00:09:05', '2012-12-16 00:09:05', '', 0, 'http://localhost/24._Elticotico/?page_id=24', 0, 'page', '', 0),
(25, 1, '2012-12-16 00:09:01', '2012-12-16 00:09:01', '', 'news', '', 'inherit', 'open', 'open', '', '24-revision', '', '', '2012-12-16 00:09:01', '2012-12-16 00:09:01', '', 24, 'http://localhost/24._Elticotico/sin-categoria/24-revision/', 0, 'revision', '', 0),
(26, 1, '2012-12-15 21:35:21', '2012-12-15 21:35:21', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665" frameborder="0"></iframe>\r\n<img class="size-large wp-image-13" alt="img10" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img101-1024x768.jpg" width="1024" height="768" />\r\n\r\n<img class="size-large wp-image-12" alt="img9" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img91-1024x768.jpg" width="1024" height="768" />\r\n\r\n<img class="size-large wp-image-10" alt="img7" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img71-1024x768.jpg" width="1024" height="768" />', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-15 21:35:21', '2012-12-15 21:35:21', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-8/', 0, 'revision', '', 0),
(27, 1, '2012-12-16 00:20:16', '2012-12-16 00:20:16', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665" frameborder="0"></iframe>\r\n<img class="size-large wp-image-13" alt="img10" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img101-1024x768.jpg" width="1024" height="768" />\r\n\r\n<img class="size-large wp-image-12" alt="img9" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img91-1024x768.jpg" width="1024" height="768" />\r\n\r\n<img class="size-large wp-image-10" alt="img7" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img71-1024x768.jpg" width="1024" height="768" />', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-16 00:20:16', '2012-12-16 00:20:16', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-9/', 0, 'revision', '', 0),
(28, 1, '2012-12-16 01:09:16', '2012-12-16 01:09:16', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665" frameborder="0"></iframe>\r\n<img class="size-large wp-image-13" alt="img10" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img101-1024x768.jpg" width="auto" height="768" />\r\n\r\n<img class="size-large wp-image-12" alt="img9" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img91-1024x768.jpg" width="auto" height="768" />\r\n\r\n<img class="size-large wp-image-10" alt="img7" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img71-1024x768.jpg" width="auto" height="768" />', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-16 01:09:16', '2012-12-16 01:09:16', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-10/', 0, 'revision', '', 0),
(29, 1, '2012-12-16 01:11:25', '2012-12-16 01:11:25', '<p style="text-align: center;"><iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665" frameborder="0"></iframe>\r\n<img class=" wp-image-13 aligncenter" alt="img10" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img101-1024x768.jpg" width="auto" height="768" /></p>\r\n<p style="text-align: center;"><img class=" wp-image-12 aligncenter" alt="img9" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img91-1024x768.jpg" width="auto" height="768" /></p>\r\n<img class="size-large wp-image-10" alt="img7" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img71-1024x768.jpg" width="auto" height="768" />', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-16 01:11:25', '2012-12-16 01:11:25', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-11/', 0, 'revision', '', 0),
(30, 1, '2012-12-16 01:12:20', '2012-12-16 01:12:20', '<p style="text-align: center;"><iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665" frameborder="0"></iframe>\r\n<img class=" wp-image-13 aligncenter" alt="img10" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img101-1024x768.jpg" width="auto" height="768" /></p>\r\n<img class=" wp-image-12 aligncenter" alt="img9" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img91-1024x768.jpg" width="auto" height="768" />\r\n<img class="size-large wp-image-10" alt="img7" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img71-1024x768.jpg" width="auto" height="768" />', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-16 01:12:20', '2012-12-16 01:12:20', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-12/', 0, 'revision', '', 0),
(31, 1, '2012-12-16 01:12:52', '2012-12-16 01:12:52', '<p style="text-align: center;"><iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665" align="center" frameborder="0"></iframe>\r\n<img class=" wp-image-13 aligncenter" alt="img10" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img101-1024x768.jpg" width="auto" height="768" align="center" />\r\n<img class=" wp-image-12 aligncenter" alt="img9" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img91-1024x768.jpg" width="auto" height="768" />\r\n<img class="size-large wp-image-10" alt="img7" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img71-1024x768.jpg" width="auto" height="768" align="center" /></p>', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-16 01:12:52', '2012-12-16 01:12:52', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-13/', 0, 'revision', '', 0),
(32, 1, '2012-12-16 01:13:39', '2012-12-16 01:13:39', '<p style="text-align: center;"><iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665" align="center" frameborder="0"></iframe>\r\n<img class=" wp-image-13 aligncenter" alt="img10" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img101-1024x768.jpg" width="auto" height="768" align="center" />\r\n<img class=" wp-image-12 aligncenter" alt="img9" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img91-1024x768.jpg" width="auto" height="768" align="center" />\r\n<img class="size-large wp-image-10" alt="img7" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img71-1024x768.jpg" width="auto" height="768" align="center" /></p>', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-16 01:13:39', '2012-12-16 01:13:39', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-14/', 0, 'revision', '', 0),
(33, 1, '2012-12-16 01:13:54', '2012-12-16 01:13:54', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665" align="center" frameborder="0"></iframe>\r\n<img class=" wp-image-13 aligncenter" alt="img10" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img101-1024x768.jpg" width="auto" height="768" align="center" />\r\n<img class=" wp-image-12 aligncenter" alt="img9" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img91-1024x768.jpg" width="auto" height="768" align="center" />\r\n<img class="size-large wp-image-10" alt="img7" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img71-1024x768.jpg" width="auto" height="768" align="center" />', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-16 01:13:54', '2012-12-16 01:13:54', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-15/', 0, 'revision', '', 0),
(34, 1, '2012-12-16 01:21:22', '2012-12-16 01:21:22', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665" frameborder="0" align="middle"></iframe>\r\n\r\n[caption id="attachment_10" align="alignnone" width="1920"]<img class="size-full wp-image-10" alt="img7" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img71.jpg" width="1920" height="1440" /> img7[/caption]\r\n\r\n[caption id="attachment_12" align="alignnone" width="1920"]<img class="size-full wp-image-12" alt="img9" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img91.jpg" width="1920" height="1440" /> img9[/caption]\r\n\r\n[caption id="attachment_13" align="alignnone" width="1920"]<img class="size-full wp-image-13" alt="img10" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img101.jpg" width="1920" height="1440" /> img10[/caption]', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-16 01:21:22', '2012-12-16 01:21:22', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-16/', 0, 'revision', '', 0),
(39, 1, '2012-12-16 01:26:47', '2012-12-16 01:26:47', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665" frameborder="0" align="middle"></iframe>\r\n\r\n[caption id="attachment_10" align="alignnone" width="1920"]<img class="size-full wp-image-10" alt="img7" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img71.jpg" width="1920" height="1440" /> img7[/caption]\r\n\r\n[caption id="attachment_12" align="alignnone" width="1920"]<img class="size-full wp-image-12" alt="img9" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img91.jpg" width="1920" height="1440" /> img9[/caption]\r\n\r\n[caption id="attachment_13" align="alignnone" width="1920"]<img class="size-full wp-image-13" alt="img10" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img101.jpg" width="1920" height="1440" /> img10[/caption]', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-16 01:26:47', '2012-12-16 01:26:47', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-17/', 0, 'revision', '', 0),
(40, 1, '2012-12-16 01:34:21', '2012-12-16 01:34:21', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665" frameborder="0" align="middle"></iframe>\r\n<img class="alignnone size-full wp-image-38" alt="trabajando-feliz-empresa" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/trabajando-feliz-empresa.jpg" width="400" height="300" />\r\n<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/tasaciones_001.jpg" alt="tasaciones_001" width="410" height="272" class="alignnone size-full wp-image-37" /><img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/8127.jpg" alt="8127" width="640" height="512" class="alignnone size-full wp-image-35" />', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-16 01:34:21', '2012-12-16 01:34:21', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-18/', 0, 'revision', '', 0),
(41, 1, '2012-12-16 01:35:34', '2012-12-16 01:35:34', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665" frameborder="0" align="middle"></iframe><img class="aligncenter size-full wp-image-38" alt="trabajando-feliz-empresa" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/trabajando-feliz-empresa.jpg" width="400" height="300" />', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-16 01:35:34', '2012-12-16 01:35:34', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-19/', 0, 'revision', '', 0),
(42, 1, '2012-12-16 01:38:29', '2012-12-16 01:38:29', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665" frameborder="0" align="middle"></iframe>\r\n\r\n[caption id="attachment_38" align="aligncenter" width="400"]<img class="size-full wp-image-38" alt="trabajando-feliz-empresa" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/trabajando-feliz-empresa.jpg" width="400" height="300" /> trabajando-feliz-empresa[/caption]\r\n\r\n[caption id="attachment_37" align="aligncenter" width="410"]<img class="size-full wp-image-37" alt="tasaciones_001" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/tasaciones_001.jpg" width="410" height="272" /> tasaciones_001tasaciones_001tasaciones_001[/caption]\r\n\r\n[caption id="attachment_36" align="aligncenter" width="500"]<img class="size-full wp-image-36" alt="quienes somos" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/quienes-somos.jpeg" width="500" height="375" /> quienes somos[/caption]\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-16 01:38:29', '2012-12-16 01:38:29', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-20/', 0, 'revision', '', 0),
(43, 1, '2012-12-16 01:41:21', '2012-12-16 01:41:21', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665" frameborder="0" align="middle"></iframe>\r\n[caption id="attachment_38" align="aligncenter" width="400"]<img class="size-full wp-image-38" alt="trabajando-feliz-empresa" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/trabajando-feliz-empresa.jpg" width="400" height="300" /> trabajando-feliz-empresa[/caption]\r\n[caption id="attachment_37" align="aligncenter" width="410"]<img class="size-full wp-image-37" alt="tasaciones_001" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/tasaciones_001.jpg" width="410" height="272" /> tasaciones_001tasaciones_001tasaciones_001[/caption]\r\n[caption id="attachment_36" align="aligncenter" width="500"]<img class="size-full wp-image-36" alt="quienes somos" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/quienes-somos.jpeg" width="500" height="375" /> quienes somos[/caption]', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-16 01:41:21', '2012-12-16 01:41:21', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-21/', 0, 'revision', '', 0),
(44, 1, '2012-12-16 01:45:06', '2012-12-16 01:45:06', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665" frameborder="0" align="middle"></iframe><img class="alignright size-full wp-image-38" alt="trabajando-feliz-empresa" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/trabajando-feliz-empresa.jpg" width="400" height="300" />', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-16 01:45:06', '2012-12-16 01:45:06', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-22/', 0, 'revision', '', 0),
(45, 1, '2012-12-16 01:47:55', '2012-12-16 01:47:55', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665" frameborder="0" align="middle"></iframe>\r\n\r\n[caption id="attachment_10" align="aligncenter" width="1024"]<img class="aligncenter size-large wp-image-18" alt="bg1" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/bg1-1024x659.jpg" width="1024" height="659" />img7[/caption]\r\n\r\n[caption id="attachment_10" align="aligncenter" width="1024"]<img class="size-large wp-image-10" alt="img7" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img71-1024x768.jpg" width="1024" height="768" /> img7[/caption]\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-16 01:47:55', '2012-12-16 01:47:55', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-23/', 0, 'revision', '', 0),
(46, 1, '2012-12-16 01:48:06', '2012-12-16 01:48:06', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665" frameborder="0" align="middle"></iframe>\r\n\r\n[caption id="attachment_10" align="aligncenter" width="1024"]<img class="aligncenter size-large wp-image-18" alt="bg1" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/bg1-1024x659.jpg" width="1024" height="659" />img7[/caption]\r\n\r\n[caption id="attachment_10" align="aligncenter" width="1024"]<img class="size-large wp-image-10" alt="img7" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img71-1024x768.jpg" width="1024" height="768" /> img7[/caption]', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-16 01:48:06', '2012-12-16 01:48:06', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-24/', 0, 'revision', '', 0),
(47, 1, '2012-12-16 02:21:54', '2012-12-16 02:21:54', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665" frameborder="0" align="middle"></iframe>\r\n\r\n[caption id="attachment_10" align="aligncenter" width="1024"]<img class="aligncenter size-large wp-image-18" alt="bg1" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/bg1-1024x659.jpg" width="1024" height="659" /> img7[/caption]\r\n\r\n[caption id="attachment_10" align="aligncenter" width="1024"]<img class="size-large wp-image-10" alt="img7" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img71-1024x768.jpg" width="1024" height="768" /> img7[/caption]\r\n\r\n&nbsp;\r\n\r\n[caption id="attachment_12" align="aligncenter" width="1024"]<img class="size-large wp-image-12" alt="img9" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img91-1024x768.jpg" width="1024" height="768" /> img9[/caption]', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-16 02:21:54', '2012-12-16 02:21:54', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-25/', 0, 'revision', '', 0),
(52, 1, '2012-12-16 02:46:14', '2012-12-16 02:46:14', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665" frameborder="0" align="middle"></iframe>\r\n\r\n[caption id="attachment_10" align="aligncenter" width="1024"]<img class="aligncenter size-large wp-image-18" alt="bg1" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/bg1-1024x659.jpg" width="1024" height="659" /> img7[/caption]\r\n\r\n[caption id="attachment_10" align="aligncenter" width="1024"]<img class="size-large wp-image-10" alt="img7" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img71-1024x768.jpg" width="1024" height="768" /> img7[/caption]\r\n\r\n[caption id="attachment_12" align="aligncenter" width="1024"]<img class="size-large wp-image-12" alt="img9" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/img91-1024x768.jpg" width="1024" height="768" /> img9[/caption]', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-16 02:46:14', '2012-12-16 02:46:14', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-26/', 0, 'revision', '', 0),
(53, 1, '2012-12-20 06:11:10', '2012-12-20 06:11:10', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665"></iframe>\r\n\r\n[caption id="attachment_48" align="aligncenter" width="948"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/500001.jpg" alt="Mariscos a la parrilla" width="948" height="545" class="size-full wp-image-48" /> Mariscos a la parrilla[/caption]\r\n\r\n[caption id="attachment_49" align="aligncenter" width="1024"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/gambas-hervidas-3-1024x671.jpg" alt="Gambas hervidas" width="1024" height="671" class="size-large wp-image-49" /> Gambas hervidas[/caption]\r\n\r\n[caption id="attachment_50" align="aligncenter" width="882"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/MariscadaFritaOParrilla.jpg" alt="Mariscada Frita Parrilla" width="882" height="516" class="size-full wp-image-50" /> Mariscada Frita Parrilla[/caption]\r\n\r\n[caption id="attachment_51" align="aligncenter" width="768"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/salpicon-de-marisco.jpg" alt="Salpicon de Mariscos" width="768" height="514" class="size-full wp-image-51" /> Salpicon de Mariscos[/caption]', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-20 06:11:10', '2012-12-20 06:11:10', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-27/', 0, 'revision', '', 0),
(54, 1, '2012-12-20 06:12:31', '2012-12-20 06:12:31', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665"></iframe>\r\n\r\n[caption id="attachment_48" align="aligncenter" width="948"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/500001.jpg" alt="Mariscos a la parrilla" width="948" height="545" class="size-full wp-image-48" /> Mariscos a la parrilla[/caption]\r\n\r\n[caption id="attachment_49" align="aligncenter" width="1024"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/gambas-hervidas-3-1024x671.jpg" alt="Gambas hervidas" width="1024" height="671" class="size-large wp-image-49" /> Gambas hervidas[/caption]\r\n\r\n[caption id="attachment_50" align="aligncenter" width="882"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/MariscadaFritaOParrilla.jpg" alt="Mariscada Frita Parrilla" width="882" height="516" class="size-full wp-image-50" /> Mariscada Frita Parrilla[/caption]\r\n\r\n[caption id="attachment_51" align="aligncenter" width="768"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/salpicon-de-marisco.jpg" alt="Salpicon de Mariscos" width="768" height="514" class="size-full wp-image-51" /> Salpicon de Mariscos[/caption]', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-20 06:12:31', '2012-12-20 06:12:31', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-28/', 0, 'revision', '', 0),
(55, 1, '2012-12-20 06:18:10', '2012-12-20 06:18:10', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665"></iframe>\r\n\r\n[caption id="attachment_48" align="aligncenter" width="948"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/500001.jpg" alt="Mariscos a la parrilla" width="auto" height="550" class="size-full wp-image-48" /> Mariscos a la parrilla[/caption]\r\n\r\n[caption id="attachment_49" align="aligncenter" width="1024"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/gambas-hervidas-3-1024x671.jpg" alt="Gambas hervidas" width="1024" height="671" class="size-large wp-image-49" /> Gambas hervidas[/caption]\r\n\r\n[caption id="attachment_50" align="aligncenter" width="882"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/MariscadaFritaOParrilla.jpg" alt="Mariscada Frita Parrilla" width="882" height="516" class="size-full wp-image-50" /> Mariscada Frita Parrilla[/caption]\r\n\r\n[caption id="attachment_51" align="aligncenter" width="768"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/salpicon-de-marisco.jpg" alt="Salpicon de Mariscos" width="768" height="514" class="size-full wp-image-51" /> Salpicon de Mariscos[/caption]', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-20 06:18:10', '2012-12-20 06:18:10', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-29/', 0, 'revision', '', 0),
(56, 1, '2012-12-20 06:22:25', '2012-12-20 06:22:25', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665"></iframe>\r\n\r\n[caption id="attachment_48" align="aligncenter" width="708"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/500001-e1355984435368.jpg" alt="Mariscos a la parrilla" width="708" height="542" class="size-full wp-image-48" /> Mariscos a la parrilla[/caption]\r\n\r\n[caption id="attachment_49" align="aligncenter" width="1024"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/gambas-hervidas-3-1024x671.jpg" alt="Gambas hervidas" width="1024" height="671" class="size-large wp-image-49" /> Gambas hervidas[/caption]\r\n\r\n[caption id="attachment_50" align="aligncenter" width="882"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/MariscadaFritaOParrilla.jpg" alt="Mariscada Frita Parrilla" width="882" height="516" class="size-full wp-image-50" /> Mariscada Frita Parrilla[/caption]\r\n\r\n[caption id="attachment_51" align="aligncenter" width="768"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/salpicon-de-marisco.jpg" alt="Salpicon de Mariscos" width="768" height="514" class="size-full wp-image-51" /> Salpicon de Mariscos[/caption]', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2012-12-20 06:22:25', '2012-12-20 06:22:25', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-30/', 0, 'revision', '', 0),
(58, 1, '2012-12-20 06:22:44', '2012-12-20 06:22:44', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665"></iframe>\r\n\r\n[caption id="attachment_48" align="aligncenter" width="708"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/500001-e1355984435368.jpg" alt="Mariscos a la parrilla" width="708" height="550" class="size-full wp-image-48" /> Mariscos a la parrilla[/caption]\r\n\r\n[caption id="attachment_49" align="aligncenter" width="1024"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/gambas-hervidas-3-1024x671.jpg" alt="Gambas hervidas" width="1024" height="671" class="size-large wp-image-49" /> Gambas hervidas[/caption]\r\n\r\n[caption id="attachment_50" align="aligncenter" width="882"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/MariscadaFritaOParrilla.jpg" alt="Mariscada Frita Parrilla" width="882" height="516" class="size-full wp-image-50" /> Mariscada Frita Parrilla[/caption]\r\n\r\n[caption id="attachment_51" align="aligncenter" width="768"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/salpicon-de-marisco.jpg" alt="Salpicon de Mariscos" width="768" height="514" class="size-full wp-image-51" /> Salpicon de Mariscos[/caption]', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2012-12-20 06:22:44', '2012-12-20 06:22:44', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-31/', 0, 'revision', '', 0),
(70, 1, '2013-01-03 04:30:07', '2013-01-03 07:30:07', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665"></iframe>\r\n\r\n[caption id="attachment_48" align="aligncenter" width="708"]<img class="size-full wp-image-48" alt="Mariscos a la parrilla" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/500001-e1355984435368.jpg" width="708" height="550" /> Mariscos a la parrilla[/caption]\r\n\r\n[caption id="attachment_49" align="aligncenter" width="1024"]<img class="size-large wp-image-49" alt="Gambas hervidas" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/gambas-hervidas-3-1024x671.jpg" width="1024" height="671" /> Gambas hervidas[/caption]\r\n\r\n[caption id="attachment_50" align="aligncenter" width="882"]<img class="size-full wp-image-50" alt="Mariscada Frita Parrilla" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/MariscadaFritaOParrilla.jpg" width="882" height="516" /> Mariscada Frita Parrilla[/caption]\r\n\r\n[caption id="attachment_51" align="aligncenter" width="768"]<img class="size-full wp-image-51" alt="Salpicon de Mariscos" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/salpicon-de-marisco.jpg" width="768" height="514" /> Salpicon de Mariscos[/caption]', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2013-01-03 04:30:07', '2013-01-03 07:30:07', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-32/', 0, 'revision', '', 0),
(71, 1, '2013-01-03 04:37:45', '2013-01-03 07:37:45', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665"></iframe>\r\n\r\n[caption id="attachment_59" align="aligncenter" width="660"]<img class="size-large wp-image-59" alt="HTML5" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/html5-topper-660x446.png" width="660" height="446" /> HTML5[/caption]\r\n[caption id="attachment_64" align="aligncenter" width="660"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/Mountains_061-660x495.jpg" alt="Mountains_061" width="660" height="495" class="size-large wp-image-64" /> Mountains_061Mountains_061[/caption]\r\n[caption id="attachment_63" align="aligncenter" width="660"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/Mountains_060-660x495.jpg" alt="Mountains_060" width="660" height="495" class="size-large wp-image-63" /> Mountains_060Mountains_060[/caption]\r\n[caption id="attachment_62" align="aligncenter" width="660"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/Mountains_059-660x495.jpg" alt="Mountains_059" width="660" height="495" class="size-large wp-image-62" /> Mountains_059[/caption]\r\n[caption id="attachment_60" align="aligncenter" width="660"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/HTML5-wallpaper03-1600x1200-660x495.jpg" alt="HTML5 3D Wallpaper by Rafael Otake" width="660" height="495" class="size-large wp-image-60" /> HTML5 3D Wallpaper by Rafael Otake[/caption]\r\n[caption id="attachment_65" align="aligncenter" width="660"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/Mountains_062-660x495.jpg" alt="Mountains_062" width="660" height="495" class="size-large wp-image-65" /> Mountains_062Mountains_062[/caption]', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2013-01-03 04:37:45', '2013-01-03 07:37:45', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-33/', 0, 'revision', '', 0),
(73, 1, '2013-01-22 02:10:07', '0000-00-00 00:00:00', 'zxcvctrshdfhvgfsgh54wvwgtewtvegtert', 'asdfac', '', 'draft', 'closed', 'closed', '', '', '', '', '2013-01-22 02:10:07', '2013-01-22 05:10:07', '', 0, 'http://localhost/24._Elticotico/?p=73', 0, 'post', '', 0),
(75, 1, '2013-01-03 04:38:44', '2013-01-03 07:38:44', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665"></iframe>\r\n\r\n[caption id="attachment_59" align="aligncenter" width="660"]<img class="size-large wp-image-59" alt="HTML5" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/html5-topper-660x446.png" width="660" height="446" /> HTML5[/caption]\r\n\r\n[caption id="attachment_64" align="aligncenter" width="660"]<img class="size-large wp-image-64" alt="Mountains_061" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/Mountains_061-660x495.jpg" width="660" height="495" /> Mountains_061Mountains_061[/caption]\r\n\r\n[caption id="attachment_63" align="aligncenter" width="660"]<img class="size-large wp-image-63" alt="Mountains_060" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/Mountains_060-660x495.jpg" width="660" height="495" /> Mountains_060Mountains_060[/caption]\r\n\r\n[caption id="attachment_62" align="aligncenter" width="660"]<img class="size-large wp-image-62" alt="Mountains_059" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/Mountains_059-660x495.jpg" width="660" height="495" /> Mountains_059[/caption]\r\n\r\n[caption id="attachment_60" align="aligncenter" width="660"]<img class="size-large wp-image-60" alt="HTML5 3D Wallpaper by Rafael Otake" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/HTML5-wallpaper03-1600x1200-660x495.jpg" width="660" height="495" /> HTML5 3D Wallpaper by Rafael Otake[/caption]\r\n\r\n[caption id="attachment_65" align="aligncenter" width="660"]<img class="size-large wp-image-65" alt="Mountains_062" src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/Mountains_062-660x495.jpg" width="660" height="495" /> Mountains_062Mountains_062[/caption]', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2013-01-03 04:38:44', '2013-01-03 07:38:44', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-34/', 0, 'revision', '', 0),
(76, 1, '2013-01-25 18:50:51', '2013-01-25 21:50:51', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665"></iframe>\r\n\r\n[caption id="attachment_74" align="aligncenter" width="482"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/decepticons_logo2.jpg" alt="Plato de Desepticosn $40" width="482" height="482" class="size-full wp-image-74" /> Plato de Desepticosn $40[/caption]', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2013-01-25 18:50:51', '2013-01-25 21:50:51', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-35/', 0, 'revision', '', 0),
(78, 1, '2013-01-25 19:08:43', '2013-01-25 22:08:43', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665"></iframe>\r\n\r\n[caption id="attachment_74" align="aligncenter" width="482"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/decepticons_logo2.jpg" alt="Plato de Desepticosn $40" width="482" height="482" class="size-full wp-image-74" />[/caption]', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2013-01-25 19:08:43', '2013-01-25 22:08:43', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-36/', 0, 'revision', '', 0),
(79, 1, '2013-02-08 07:34:33', '2013-02-08 10:34:33', 'Edgard_Roul 1', 'Edgard_Roul', 'Edgard_Roul', 'inherit', 'closed', 'closed', '', 'img_5891', '', '', '2013-02-08 07:34:33', '2013-02-08 10:34:33', '', 2, 'http://localhost/24._Elticotico/wp-content/uploads/2012/12/IMG_5891.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2013-02-08 07:30:57', '2013-02-08 10:30:57', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665"></iframe>\r\n\r\n', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2013-02-08 07:30:57', '2013-02-08 10:30:57', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-37/', 0, 'revision', '', 0),
(81, 1, '2013-02-08 07:52:27', '2013-02-08 10:52:27', 'SSA40004', 'SSA40004', 'SSA40004', 'inherit', 'closed', 'closed', '', 'ssa40004', '', '', '2013-02-08 07:52:27', '2013-02-08 10:52:27', '', 2, 'http://localhost/24._Elticotico/wp-content/uploads/2012/12/SSA40004.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2013-02-08 07:54:17', '2013-02-08 10:54:17', 'SSA40012', 'SSA40012', 'SSA40012', 'inherit', 'closed', 'closed', '', 'ssa40012', '', '', '2013-02-08 07:54:17', '2013-02-08 10:54:17', '', 2, 'http://localhost/24._Elticotico/wp-content/uploads/2012/12/SSA40012.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2013-02-08 07:35:29', '2013-02-08 10:35:29', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665"></iframe>\r\n\r\n[caption id="attachment_79" align="aligncenter" width="660"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/IMG_5891-660x495.jpg" alt="Edgard_Roul" width="660" height="495" class="size-large wp-image-79" /> Edgard_Roul[/caption]', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2013-02-08 07:35:29', '2013-02-08 10:35:29', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-38/', 0, 'revision', '', 0),
(84, 1, '2013-02-08 08:40:08', '2013-02-08 11:40:08', 'SSA40017', 'SSA40017', 'SSA40017SSA40017', 'inherit', 'closed', 'closed', '', 'ssa40017', '', '', '2013-02-08 08:40:08', '2013-02-08 11:40:08', '', 2, 'http://localhost/24._Elticotico/wp-content/uploads/2012/12/SSA40017.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2013-02-08 07:55:20', '2013-02-08 10:55:20', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665"></iframe>\r\n\r\n[caption id="attachment_79" align="aligncenter" width="660"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/IMG_5891-660x495.jpg" alt="Edgard_Roul" width="660" height="495" class="size-large wp-image-79" /> Edgard_Roul[/caption]\r\n\r\n[caption id="attachment_81" align="aligncenter" width="660"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/SSA40004-e1360320814819.jpg" alt="SSA40004" width="660" height="495" class="size-large wp-image-81" /> SSA40004[/caption]\r\n\r\n[caption id="attachment_82" align="aligncenter" width="660"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/SSA40012-660x495.jpg" alt="SSA40012" width="660" height="495" class="size-large wp-image-82" /> SSA40012[/caption]', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2013-02-08 07:55:20', '2013-02-08 10:55:20', '', 2, 'http://localhost/24._Elticotico/sin-categoria/2-revision-39/', 0, 'revision', '', 0),
(86, 1, '2013-02-08 08:47:39', '2013-02-08 11:47:39', '', 'SSA40088', '', 'inherit', 'closed', 'closed', '', 'ssa40088', '', '', '2013-02-08 08:47:39', '2013-02-08 11:47:39', '', 2, 'http://localhost/24._Elticotico/wp-content/uploads/2012/12/SSA40088.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2013-02-08 08:43:30', '2013-02-08 11:43:30', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665"></iframe>\r\n\r\n[caption id="attachment_79" align="aligncenter" width="660"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/IMG_5891-660x495.jpg" alt="Edgard_Roul" width="660" height="495" class="size-large wp-image-79" /> Edgard_Roul[/caption]\r\n\r\n[caption id="attachment_81" align="aligncenter" width="660"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/SSA40004-e1360320814819.jpg" alt="SSA40004" width="660" height="495" class="size-large wp-image-81" /> SSA40004[/caption]\r\n\r\n[caption id="attachment_82" align="aligncenter" width="660"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/SSA40012-660x495.jpg" alt="SSA40012" width="660" height="495" class="size-large wp-image-82" /> SSA40012[/caption]\r\n\r\n[caption id="attachment_84" align="aligncenter" width="660"]<img src="http://localhost/24._Elticotico/wp-content/uploads/2012/12/SSA40017-e1360323669900-660x507.jpg" alt="SSA40017" width="660" height="507" class="size-medium wp-image-84" /> SSA40017SSA40017[/caption]\r\n\r\n', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2013-02-08 08:43:30', '2013-02-08 11:43:30', '', 2, 'http://www.webmoderna.com.ar/elticotico/sin-categoria/2-revision-40/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(91, 1, '2013-03-30 20:33:50', '2013-03-30 23:33:50', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665"></iframe>\r\n\r\n[caption id="attachment_79" align="aligncenter" width="660"]<img src="http://www.webmoderna.com.ar/elticotico/wp-content/uploads/2012/12/IMG_5891-660x495.jpg" alt="Edgard_Roul" width="660" height="495" class="size-large wp-image-79" /> Edgard_Roul[/caption]\r\n\r\n[caption id="attachment_81" align="aligncenter" width="660"]<img src="http://www.webmoderna.com.ar/elticotico/wp-content/uploads/2012/12/SSA40004-e1360320814819.jpg" alt="SSA40004" width="660" height="495" class="size-large wp-image-81" /> SSA40004[/caption]\r\n\r\n[caption id="attachment_82" align="aligncenter" width="660"]<img src="http://www.webmoderna.com.ar/elticotico/wp-content/uploads/2012/12/SSA40012-660x495.jpg" alt="SSA40012" width="660" height="495" class="size-large wp-image-82" /> SSA40012[/caption]\r\n\r\n[caption id="attachment_84" align="aligncenter" width="660"]<img src="http://www.webmoderna.com.ar/elticotico/wp-content/uploads/2012/12/SSA40017-e1360323669900-660x507.jpg" alt="SSA40017" width="660" height="507" class="size-medium wp-image-84" /> SSA40017SSA40017[/caption]\r\n\r\n', 'Home', '', 'inherit', 'closed', 'closed', '', 'revision', '', '', '2013-03-30 20:33:50', '2013-03-30 23:33:50', '', 2, 'http://www.webmoderna.com.ar/elticotico/sin-categoria/revision/', 0, 'revision', '', 0),
(92, 1, '2014-06-28 14:32:07', '2014-06-28 17:32:07', '<iframe id="camara1" src="http://192.168.5.105/main.htm" height="569" width="665"></iframe>\r\n\r\n[caption align="aligncenter" width="660"]<img src="http://www.webmoderna.com.ar/elticotico/wp-content/uploads/2012/12/IMG_5891-660x495.jpg" alt="Edgard_Roul" class="size-large" /> Edgard_Roul[/caption]\r\n\r\n[caption align="aligncenter" width="660"]<img src="http://www.webmoderna.com.ar/elticotico/wp-content/uploads/2012/12/SSA40004-e1360320814819.jpg" alt="SSA40004" class="size-large" /> SSA40004[/caption]\r\n\r\n[caption align="aligncenter" width="660"]<img src="http://www.webmoderna.com.ar/elticotico/wp-content/uploads/2012/12/SSA40012-660x495.jpg" alt="SSA40012" class="size-large" /> SSA40012[/caption]\r\n\r\n[caption align="aligncenter" width="660"]<img src="http://www.webmoderna.com.ar/elticotico/wp-content/uploads/2012/12/SSA40017-e1360323669900-660x507.jpg" alt="SSA40017" class="size-medium" /> SSA40017SSA40017[/caption]\r\n\r\n', 'Home', '', 'inherit', 'closed', 'closed', '', 'revision', '', '', '2014-06-28 14:32:07', '2014-06-28 17:32:07', '', 2, 'http://www.webmoderna.com.ar/elticotico/sin-categoria/revision/', 0, 'revision', '', 0),
(93, 1, '2016-09-30 15:58:28', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-09-30 15:58:28', '0000-00-00 00:00:00', '', 0, 'http://www.webmoderna.com.ar/elticotico/?p=93', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `name` (`name`(191)),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(73, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'elticotico'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp410_dfw'),
(13, 1, 'show_welcome_panel', '0'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '93'),
(15, 1, 'wp_user-settings', 'hidetb=1&editor=html&libraryContent=browse&urlbutton=none&imgsize=medium&align=center'),
(16, 1, 'wp_user-settings-time', '1360323807'),
(17, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}'),
(19, 1, 'default_password_nag', ''),
(20, 1, 'session_tokens', 'a:1:{s:64:"b8fcd37470edda2859054a2b9680d9fa1cfc8efab501642fea70d7b693ad9ce4";a:4:{s:10:"expiration";i:1476471504;s:2:"ip";s:13:"186.128.48.65";s:2:"ua";s:73:"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0";s:5:"login";i:1475261904;}}'),
(21, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(22, 1, 'metaboxhidden_dashboard', 'a:3:{i:0;s:18:"dashboard_activity";i:1;s:21:"dashboard_quick_press";i:2;s:17:"dashboard_primary";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'elticotico', '$P$BdkDGpm8JojNI2iSnjQyv6GYvKuqrM0', 'elticotico', 'edgardogalletto@gmail.com', '', '2012-12-15 00:44:48', '', 0, 'elticotico');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
