-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2022 at 11:25 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_providers`
--

CREATE TABLE `api_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'standard',
  `balance` decimal(15,5) DEFAULT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `ids`, `uid`, `name`, `desc`, `image`, `sort`, `status`, `created`, `changed`) VALUES
(29, NULL, NULL, 'Dofus Kamas', NULL, NULL, 1, 1, '2022-09-19 05:04:45', '2022-09-19 05:04:45');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` longtext DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `general_custom_page`
--

CREATE TABLE `general_custom_page` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `pid` int(1) DEFAULT 1,
  `position` int(1) DEFAULT 0,
  `name` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `general_file_manager`
--

CREATE TABLE `general_file_manager` (
  `id` int(11) NOT NULL,
  `ids` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `file_name` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `file_type` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `file_ext` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `file_size` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `is_image` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `general_lang`
--

CREATE TABLE `general_lang` (
  `id` int(11) NOT NULL,
  `ids` varchar(100) DEFAULT NULL,
  `lang_code` varchar(10) DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `general_lang_list`
--

CREATE TABLE `general_lang_list` (
  `id` int(11) NOT NULL,
  `ids` varchar(225) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `country_code` varchar(225) DEFAULT NULL,
  `is_default` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_lang_list`
--

INSERT INTO `general_lang_list` (`id`, `ids`, `code`, `country_code`, `is_default`, `status`, `created`) VALUES
(1, '22ccfa9de7829e4ad66af0fde88c6486', 'en', 'GB', 1, 1, '2022-05-20 23:50:38');

-- --------------------------------------------------------

--
-- Table structure for table `general_news`
--

CREATE TABLE `general_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `expiry` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_options`
--

CREATE TABLE `general_options` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_options`
--

INSERT INTO `general_options` (`id`, `name`, `value`) VALUES
(67, 'enable_https', '0'),
(68, 'is_maintenance_mode', '0'),
(69, 'enable_disable_homepage', '0'),
(70, 'website_desc', 'Kama Dofus- #1 SMM Reseller Panel - Best SMM Panel for Resellers. Also well known for TOP SMM Panel and Cheap SMM Panel for all kind of Social Media Marketing Services. SMM Panel for Facebook, Instagram, YouTube and more services! '),
(71, 'website_keywords', 'kamas dofus,\r\ndofus kamas,\r\nacheter des kamas,\r\nbuy kamas dofus,\r\nachat kamas dofus,\r\nacheter kamas dofus,\r\nachat kamas dofus touch,\r\nastuce kamas dofus,\r\nvente kamas dofus,\r\nvendre kamas dofus,\r\nastuce kamas dofus touch,\r\nacheter kamas dofus retro,\r\ncomprar kamas dofus,\r\nkamas dofus astuce,\r\nkamas dofus achat,\r\nkamas dofus acheter,\r\nkamas dofus a vendre,\r\nkamas dofus audiotel,\r\nkamas acheter dofus touch,\r\ndofus kamas allegro,\r\ndofus kamas agride,\r\nkamas alchimiste dofus touch,\r\ndofus kamas alchimiste,\r\nastuce kamas dofus retro,\r\nacheter des kamas dofus touch,\r\nastuce kamas dofus touch 2021,\r\nastuce kamas dofus retro monocompte,\r\nkamas dofus buy,\r\nkamas dofus boune,\r\nkamas dofus beta,\r\nkamas dofus bas level,\r\nbuy kamas dofus touch,\r\nbuy kamas dofus retro,\r\ndofus kamas bucheron,\r\ndofus kamas bl,\r\nkamas dofus touch brutus,\r\nachat kamas dofus ban,\r\nbourse aux kamas dofus,\r\nbolsa de kamas dofus,\r\nbourse aux kamas dofus retro,\r\nbot kamas dofus,\r\nbas level kamas dofus,\r\nbourse au kamas dofus retro,\r\nbourse au kamas dofus touch,\r\nkamas dofus cheat,\r\ndofus kamas cheap,\r\ndofus comme kamas,\r\ndofus com kamas,\r\nkamas crocabulia dofus,\r\ndofus kamas crail,\r\nkamas chasseur dofus,\r\nkamas dofus pas cher,\r\nkamas dofus retro crail,\r\nkamas dofus touch pas cher,\r\ncomment se faire des kamas dofus,\r\ncomprar kamas dofus retro,\r\ncheat kamas dofus,\r\ncomprar kamas dofus touch,\r\ncomment faire des kamas dofus touch,\r\ncomment faire des kamas dofus retro,\r\ncheat game kamas dofus,\r\ncomo fazer kamas dofus touch,\r\ncomo hacer kamas dofus touch,\r\nkamas dofus discord,\r\ndofus kamas de glace,\r\ndofus kamas de glace facile,\r\ndofus kamas de hielo,\r\ndofus kamas doré en chocolat,\r\ndofus kamas de gelo,\r\ndofus kamas drop,\r\ndofus kamas débutant,\r\nvente kamas dofus discord,\r\ntrade kamas dofus discord,\r\ndiscord kamas dofus,\r\ndette de kamas dofus,\r\ndrop kamas dofus,\r\ndiscord vente kamas dofus retro,\r\ndrop kamas dofus retro,\r\ndiscord vente kamas dofus,\r\ndiscord achat kamas dofus,\r\ndiscord kamas dofus touch,\r\ndiscord echange kamas dofus,\r\ndonde vender kamas dofus,\r\ndofus kamas exchange,\r\ndofus kamas echo,\r\ndofus kamas eratz,\r\nachat kamas dofus eratz,\r\ncomprar kamas en dofus touch,\r\nfragment de kamas dofus echange,\r\nganar kamas en dofus,\r\ncomo hacer kamas en dofus touch 2021,\r\ncomo hacer kamas en dofus 2021,\r\nechange kamas dofus,\r\nebay kamas dofus,\r\nechange kamas dofus wakfu,\r\nechange kamas dofus touch,\r\nechange kamas dofus retro,\r\nechange kamas dofus vs dofus touch,\r\nbuy dofus kamas echo,\r\nhow to earn kamas fast in dofus,\r\ncomo hacer kamas en dofus touch,\r\ndofus kamas for sale,                                                                 '),
(72, 'website_title', 'KamaDofus - Buy Kamas easly.'),
(73, 'website_favicon', 'http://localhost/kamas/assets/images/favicon.png'),
(74, 'embed_head_javascript', ''),
(75, 'website_logo', 'http://localhost/kamas/assets/images/logo.png'),
(76, 'website_logo_white', 'http://localhost/kamas/assets/images/logo-white.png'),
(77, 'enable_service_list_no_login', '1'),
(78, 'disable_signup_page', '0'),
(79, 'notification_popup_content', ''),
(80, 'is_cookie_policy_page', ''),
(81, 'enable_api_tab', '0'),
(82, 'contact_tel', '+212612542343'),
(83, 'contact_email', 'support24h@kamadofus.com'),
(84, 'contact_work_hour', 'Mon - Sat 09 am - 10 pm'),
(85, 'social_facebook_link', 'https://www.facebook.com/kamadofus'),
(86, 'social_twitter_link', 'https://www.kamadofus.com/kamadofus'),
(87, 'social_instagram_link', 'https://www.instagram.com/kamadofus'),
(88, 'social_pinterest_link', ''),
(89, 'social_tumblr_link', ''),
(90, 'social_youtube_link', 'https://www.youtube.com/kamadofus'),
(91, 'copy_right_content', 'Copyright © 2022 - Kamadofus'),
(92, 'embed_javascript', ''),
(93, 'enable_notification_popup', '0'),
(94, 'enable_goolge_recapcha', '0'),
(95, 'enable_signup_skype_field', '1'),
(96, 'is_verification_new_account', '0'),
(97, 'is_welcome_email', '0'),
(98, 'is_new_user_email', '0'),
(99, 'currency_symbol', '$'),
(100, 'currency_decimal', '2'),
(101, 'currency_decimal_separator', 'dot'),
(102, 'currency_thousand_separator', 'comma'),
(103, 'user_layout', 'vertical'),
(104, 'default_header_skin', 'purple'),
(105, 'enable_news_announcement', '1'),
(106, 'admin_auto_logout_when_change_ip', '0'),
(107, 'website_logo_mark', 'http://localhost/kamas/assets/images/logo-mark.png'),
(108, 'website_name', 'KamaDofus'),
(109, 'default_limit_per_page', '10'),
(110, 'is_clear_ticket', '0'),
(111, 'default_clear_ticket_days', '30'),
(112, 'default_min_order', '300'),
(113, 'default_max_order', '5000'),
(114, 'default_price_per_1k', '0.80'),
(115, 'enable_drip_feed', '0'),
(116, 'default_drip_feed_runs', '10'),
(117, 'default_drip_feed_interval', '30'),
(118, 'enable_explication_service_symbol', '0'),
(119, 'google_capcha_site_key', ''),
(120, 'google_capcha_secret_key', ''),
(121, 'default_home_page', 'pergo'),
(122, 'cookies_policy_page', '<p><strong>Lorem Ipsum</strong></p><p>Lorem ipsum dolor sit amet, in eam consetetur consectetuer. Vivendo eleifend postulant ut mei, vero maiestatis cu nam. Qui et facer mandamus, nullam regione lucilius eu has. Mei an vidisse facilis posidonium, eros minim deserunt per ne.</p><p>Duo quando tibique intellegam at. Nec error mucius in, ius in error legendos reformidans. Vidisse dolorum vulputate cu ius. Ei qui stet error consulatu.</p><p>Mei habeo prompta te. Ignota commodo nam ei. Te iudico definitionem sed, placerat oporteat tincidunt eu per, stet clita meliore usu ne. Facer debitis ponderum per no, agam corpora recteque at mel.</p>'),
(123, 'terms_content', '<p><strong>Lorem Ipsum</strong></p><p>Lorem ipsum dolor sit amet, in eam consetetur consectetuer. Vivendo eleifend postulant ut mei, vero maiestatis cu nam. Qui et facer mandamus, nullam regione lucilius eu has. Mei an vidisse facilis posidonium, eros minim deserunt per ne.</p><p>Duo quando tibique intellegam at. Nec error mucius in, ius in error legendos reformidans. Vidisse dolorum vulputate cu ius. Ei qui stet error consulatu.</p><p>Mei habeo prompta te. Ignota commodo nam ei. Te iudico definitionem sed, placerat oporteat tincidunt eu per, stet clita meliore usu ne. Facer debitis ponderum per no, agam corpora recteque at mel.</p>'),
(124, 'policy_content', '<p><strong>Lorem Ipsum</strong></p><p>Lorem ipsum dolor sit amet, in eam consetetur consectetuer. Vivendo eleifend postulant ut mei, vero maiestatis cu nam. Qui et facer mandamus, nullam regione lucilius eu has. Mei an vidisse facilis posidonium, eros minim deserunt per ne.</p><p>Duo quando tibique intellegam at. Nec error mucius in, ius in error legendos reformidans. Vidisse dolorum vulputate cu ius. Ei qui stet error consulatu.</p><p>Mei habeo prompta te. Ignota commodo nam ei. Te iudico definitionem sed, placerat oporteat tincidunt eu per, stet clita meliore usu ne. Facer debitis ponderum per no, agam corpora recteque at mel.</p>'),
(125, 'is_payment_notice_email', '0'),
(126, 'is_ticket_notice_email', '0'),
(127, 'is_ticket_notice_email_admin', '0'),
(128, 'is_order_notice_email', '0'),
(129, 'email_from', 'sapp@gmail.com'),
(130, 'email_name', 'We are here'),
(131, 'email_protocol_type', 'smtp'),
(132, 'smtp_server', ''),
(133, 'smtp_port', ''),
(134, 'smtp_encryption', 'none'),
(135, 'smtp_username', ''),
(136, 'smtp_password', ''),
(137, 'currency_code', 'USD'),
(138, 'default_price_percentage_increase', '30'),
(139, 'auto_rounding_x_decimal_places', '2'),
(140, 'is_auto_currency_convert', '0'),
(141, 'new_currecry_rate', '1'),
(142, 'is_active_manual', ''),
(143, 'enable_attentions_orderpage', ''),
(144, 'news_announcement_button_position', 'header'),
(145, 'is_new_manual_order_notice_email', '1'),
(156, 'manual_payment_content', 'You can make a manual payment to cover an outstanding balance. Once time, open a ticket and contact with Administrator.'),
(146, 'verification_email_subject', '{{website_name}} - Please validate your account'),
(147, 'verification_email_content', '<p><strong>Welcome to {{website_name}}! </strong></p><p>Hello <strong>{{user_firstname}}</strong>!</p><p> Thank you for joining! We&#39;re glad to have you as community member, and we&#39;re stocked for you to start exploring our service.  If you don&#39;t verify your address, you won&#39;t be able to create a User Account.</p><p>  All you need to do is activate your account by click this link: <br>  {{activation_link}} </p><p>Thanks and Best Regards!</p>'),
(148, 'email_welcome_email_subject', '{{website_name}} - Getting Started with Our Service!'),
(149, 'email_welcome_email_content', '<p><strong>Welcome to {{website_name}}! </strong></p><p>Hello <strong>{{user_firstname}}</strong>!</p><p>Congratulations! <br>You have successfully signed up for our service - {{website_name}} with follow data</p><ul><li>Firstname: {{user_firstname}}</li><li>Lastname: {{user_lastname}}</li><li>Email: {{user_email}}</li><li>Timezone: {{user_timezone}}</li></ul><p>We want to exceed your expectations, so please do not hesitate to reach out at any time if you have any questions or concerns. We look to working with you.</p><p>Best Regards,</p>'),
(150, 'email_new_registration_subject', '{{website_name}} - New Registration'),
(151, 'email_new_registration_content', '<p>Hi Admin!</p><p>Someone signed up in <strong>{{website_name}}</strong> with follow data</p><ul><li>Firstname {{user_firstname}}</li><li>Lastname: {{user_lastname}}</li><li>Email: {{user_email}}</li><li>Timezone: {{user_timezone}}</li></ul> '),
(152, 'email_password_recovery_subject', '{{website_name}} - Password Recovery'),
(153, 'email_password_recovery_content', '<p>Hi<strong> {{user_firstname}}! </strong></p><p>Somebody (hopefully you) requested a new password for your account. </p><p>No changes have been made to your account yet. <br>You can reset your password by click this link: <br>{{recovery_password_link}}</p><p>If you did not request a password reset, no further action is required. </p><p>Thanks and Best Regards!</p>                '),
(154, 'email_payment_notice_subject', '{{website_name}} -  Thank You! Deposit Payment Received'),
(155, 'email_payment_notice_content', '<p>Hi<strong> {{user_firstname}}! </strong></p><p>We&#39;ve just received your final remittance and would like to thank you. We appreciate your diligence in adding funds to your balance in our service.</p><p>It has been a pleasure doing business with you. We wish you the best of luck.</p><p>Thanks and Best Regards!</p>');

-- --------------------------------------------------------

--
-- Table structure for table `general_purchase`
--

CREATE TABLE `general_purchase` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `pid` text DEFAULT NULL,
  `purchase_code` text DEFAULT NULL,
  `version` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_purchase`
--

INSERT INTO `general_purchase` (`id`, `ids`, `pid`, `purchase_code`, `version`) VALUES
(1, '8068ec7f79145fe55dea67dd63b012c3', '23595718', 'ab912eb7-569a-4c5c-83af-c81c4d100eab', '4.0');

-- --------------------------------------------------------

--
-- Table structure for table `general_sessions`
--

CREATE TABLE `general_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_sessions`
--

INSERT INTO `general_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('q8st3peq2kf9t5pt8bshl46c8m9kps63', '::1', 1665782403, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353738323334303b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223232636366613964653738323965346164363661663066646538386336343836223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032322d30352d32302032333a35303a3338223b7d7569647c733a323a223339223b757365725f63757272656e745f696e666f7c613a353a7b733a343a22726f6c65223b733a353a2261646d696e223b733a353a22656d61696c223b733a31393a22746f756d697274747640676d61696c2e636f6d223b733a31303a2266697273745f6e616d65223b733a363a2273616464616d223b733a393a226c6173745f6e616d65223b733a373a2264617277697368223b733a383a2274696d657a6f6e65223b733a31373a224166726963612f43617361626c616e6361223b7d),
('t3m4l7crjg3gonnr9oc3oi4l3j1lavg4', '41.141.5.247', 1665782451, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353738323435313b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223232636366613964653738323965346164363661663066646538386336343836223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032322d30352d32302032333a35303a3338223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `general_subscribers`
--

CREATE TABLE `general_subscribers` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `general_transaction_logs`
--

CREATE TABLE `general_transaction_logs` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `payer_email` varchar(255) DEFAULT NULL,
  `type` text DEFAULT NULL,
  `transaction_id` text DEFAULT NULL,
  `txn_fee` double DEFAULT NULL,
  `note` int(11) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_transaction_logs`
--

INSERT INTO `general_transaction_logs` (`id`, `ids`, `uid`, `payer_email`, `type`, `transaction_id`, `txn_fee`, `note`, `data`, `amount`, `status`, `created`) VALUES
(41, 'da706ccb82b12bea225b288bb9ee503f', 40, NULL, 'manual', '123456', NULL, 0, NULL, 1, 1, '2022-09-19 05:49:29');

-- --------------------------------------------------------

--
-- Table structure for table `general_users`
--

CREATE TABLE `general_users` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `login_type` text DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `timezone` text DEFAULT NULL,
  `more_information` text DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `balance` decimal(15,4) DEFAULT 0.0000,
  `custom_rate` int(11) NOT NULL DEFAULT 0,
  `api_key` varchar(191) DEFAULT NULL,
  `spent` varchar(225) DEFAULT NULL,
  `activation_key` text DEFAULT NULL,
  `reset_key` text DEFAULT NULL,
  `history_ip` text DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_users`
--

INSERT INTO `general_users` (`id`, `ids`, `role`, `login_type`, `first_name`, `last_name`, `email`, `password`, `timezone`, `more_information`, `settings`, `desc`, `balance`, `custom_rate`, `api_key`, `spent`, `activation_key`, `reset_key`, `history_ip`, `status`, `changed`, `created`) VALUES
(38, 'e7ace76210625c6880498190c0af2d58', 'user', NULL, 'System', 'Administrator', 'admin@admin.com', 'e10adc3949ba59abbe56e057f20f883e', 'Asia/Kolkata', NULL, NULL, NULL, '0.0000', 0, '0S6SBh4ne71ZeBXobOjGL5smNhdIJHNz', NULL, 'c4a78c5172c30e669bb05d9dse48d6f5', 'c4a78c5172c30e669bb05d98f248d6f5', NULL, 1, '2022-09-19 05:12:01', NULL),
(39, '5017cc6e8db2aa4e717245556941a19c', 'admin', 'Sign_up_page', 'saddam', 'darwish', 'toumirttv@gmail.com', '$2a$08$6fqHBDIHA8SGYa6EMfrmPelAjkk5X67PdYqJSegq4n4KaTbG37AAi', 'Africa/Casablanca', NULL, '{\"limit_payments\":[]}', NULL, '0.0000', 0, 'tjrJTv7pwU1InhuMSCUWepWwqCpvgBFv', NULL, 'bO4VBLmHnDqCagD7kAKpANQPpQmXVQCJ', '5cf6770a2bc15dda635e46a3c3a79ead', '::1', 1, '2022-09-19 04:54:07', '2022-09-19 04:54:07'),
(40, 'ecec83acbc88ff5a4f6ef768338769dd', 'user', 'create_by_39', 'Saddam', 'Darwish', 'user@gmail.com', '$2a$08$nLQf1akYhXRFKzOhF5uek.JdKb05X95rllbmwVx0RWx7dh10Vn6o6', 'Pacific/Midway', '{\"website\":null,\"phone\":null,\"what_asap\":null,\"skype_id\":\"0612542343\",\"address\":null}', 'null', NULL, '0.5200', 0, '46LvE2U9XqIFHmlHhCldb0TzDLkmHMBp', NULL, NULL, '5cda9250d7349a206f28b0f0664fde42', '::1', 1, '2022-09-20 01:15:27', '2022-09-19 05:38:43');

-- --------------------------------------------------------

--
-- Table structure for table `general_users_price`
--

CREATE TABLE `general_users_price` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `ids` text CHARACTER SET utf8 DEFAULT NULL,
  `type` enum('direct','api') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'direct',
  `cate_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_order_id` int(11) DEFAULT NULL,
  `service_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `api_provider_id` int(11) DEFAULT NULL,
  `api_service_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_order_id` int(11) DEFAULT 0,
  `uid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usernames` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hashtags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hashtag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_posts` int(11) DEFAULT NULL,
  `sub_min` int(11) DEFAULT NULL,
  `sub_max` int(11) DEFAULT NULL,
  `sub_delay` int(11) DEFAULT NULL,
  `sub_expiry` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_response_orders` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_response_posts` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_status` enum('Active','Paused','Completed','Expired','Canceled') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(15,4) DEFAULT NULL,
  `formal_charge` decimal(15,4) DEFAULT NULL,
  `profit` decimal(15,4) DEFAULT NULL,
  `status` enum('active','completed','processing','inprogress','pending','partial','canceled','refunded','awaiting','error','fail') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `start_counter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remains` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `is_drip_feed` int(1) DEFAULT 0,
  `runs` int(11) DEFAULT 0,
  `interval` int(2) DEFAULT 0,
  `dripfeed_quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `refill` int(1) DEFAULT 0 COMMENT '1 -->active 0 --> Not Allowed',
  `refill_status` int(1) DEFAULT NULL COMMENT '1 - Pending, 3 - In Process, 2 - Awaiting, 4 - Rejected, 5 - Fail, 7 - Complete',
  `refill_date` datetime DEFAULT NULL COMMENT 'Refill update Time',
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ids`, `type`, `cate_id`, `service_id`, `main_order_id`, `service_type`, `api_provider_id`, `api_service_id`, `api_order_id`, `uid`, `link`, `quantity`, `usernames`, `username`, `hashtags`, `hashtag`, `media`, `comments`, `sub_posts`, `sub_min`, `sub_max`, `sub_delay`, `sub_expiry`, `sub_response_orders`, `sub_response_posts`, `sub_status`, `charge`, `formal_charge`, `profit`, `status`, `start_counter`, `remains`, `is_drip_feed`, `runs`, `interval`, `dripfeed_quantity`, `refill`, `refill_status`, `refill_date`, `note`, `changed`, `created`) VALUES
(389720, 'a06e02d09814d4343f7efb34415aa3b5', 'direct', '29', '1', NULL, 'default', 0, '', 0, '40', 'rixdot', '300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.2400', '0.0000', '0.2400', 'pending', NULL, '0', 0, 0, 0, '0', 0, NULL, NULL, NULL, '2022-09-19 05:50:24', '2022-09-19 05:50:24'),
(389721, 'fb78dec82db82541433c115314f45dce', 'direct', '29', '1', NULL, 'default', 0, '', 0, '40', 'rixdot', '300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.2400', '0.0000', '0.2400', 'pending', NULL, '0', 0, 0, 0, '0', 0, NULL, NULL, NULL, '2022-09-19 05:51:11', '2022-09-19 05:51:11'),
(389722, '30e8e28fcf2db48efbd67f3827e09b30', 'direct', '29', '1', NULL, 'default', 0, '', 0, '40', 'rixdot', '300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '0.0000', 'canceled', '', '', 0, 0, 0, '0', 0, NULL, NULL, NULL, '2022-09-19 05:58:19', '2022-09-19 05:51:25'),
(389723, 'a20a0945eb18db767bb8bc218f448b53', 'direct', '29', '1', NULL, 'default', 0, '', 0, '40', 'rixdot', '300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '0.0000', 'canceled', '', '', 0, 0, 0, '0', 0, NULL, NULL, NULL, '2022-09-19 06:06:11', '2022-09-19 05:51:42');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(225) NOT NULL,
  `min` double NOT NULL,
  `max` double NOT NULL,
  `sort` int(3) DEFAULT NULL,
  `new_users` int(1) NOT NULL DEFAULT 0 COMMENT '1:Allowed, 0: Not Allowed',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '1 -> ON, 0 -> OFF',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `type`, `name`, `min`, `max`, `sort`, `new_users`, `status`, `params`) VALUES
(13, 'paypal', 'Paypal Checkout', 10, 100, NULL, 1, 0, '{\"type\":\"paypal\",\"name\":\"Paypal Checkout\",\"min\":\"10\",\"max\":\"100\",\"new_users\":\"1\",\"status\":\"1\",\"take_fee_from_user\":\"0\",\"option\":{\"environment\":\"sandbox\",\"client_id\":\"\",\"secret_key\":\"\"}}'),
(14, 'stripe', 'Stripe Checkout', 5, 100, NULL, 0, 0, '{\"type\":\"stripe\",\"name\":\"Stripe Checkout\",\"min\":\"5\",\"max\":\"100\",\"new_users\":\"0\",\"status\":\"1\",\"option\":{\"tnx_fee\":\"10\",\"environment\":\"sandbox\",\"public_key\":\"\",\"secret_key\":\"\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `payments_bonus`
--

CREATE TABLE `payments_bonus` (
  `id` int(11) NOT NULL,
  `ids` varchar(100) DEFAULT NULL,
  `payment_id` int(11) NOT NULL,
  `bonus_from` double NOT NULL,
  `percentage` double NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  `original_price` decimal(15,4) DEFAULT NULL,
  `deny_duplicates` int(1) DEFAULT 0,
  `refill` int(1) NOT NULL DEFAULT 0,
  `refill_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 -> provider , 0 -> manual',
  `min` int(50) DEFAULT NULL,
  `max` int(50) DEFAULT NULL,
  `add_type` enum('manual','api') DEFAULT 'manual',
  `type` varchar(100) DEFAULT 'default',
  `api_service_id` varchar(200) DEFAULT NULL,
  `api_provider_id` int(11) DEFAULT NULL,
  `dripfeed` int(1) DEFAULT 0,
  `status` int(1) DEFAULT 1,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `ids`, `uid`, `cate_id`, `name`, `desc`, `price`, `original_price`, `deny_duplicates`, `refill`, `refill_type`, `min`, `max`, `add_type`, `type`, `api_service_id`, `api_provider_id`, `dripfeed`, `status`, `changed`, `created`) VALUES
(1, '1fc97fe27e50b5476a6cd625a2b8014a', NULL, 29, 'Agride', '', '0.8060', NULL, 0, 0, 0, 300, 5000000, 'manual', 'default', '', 0, 0, 1, '2022-09-20 00:32:59', '2022-09-19 05:06:43'),
(2, '5eedb5795ede65187da560af32c27cd1', NULL, 29, 'Atcham', '', '0.8000', NULL, 0, 0, 0, 300, 5000, 'manual', 'default', '', 0, 0, 1, '2022-09-19 05:06:55', '2022-09-19 05:06:55'),
(3, 'df16f3687ed6708eb200f0d3244a2db7', NULL, 29, 'Boune', '', '0.8000', NULL, 0, 0, 0, 300, 5000, 'manual', 'default', '', 0, 0, 1, '2022-09-19 05:07:11', '2022-09-19 05:07:11'),
(4, 'cd0f2507f6d5e26720edd1c8fbb7e4a9', NULL, 29, 'Brumen', '', '0.8000', NULL, 0, 0, 0, 300, 5000, 'manual', 'default', '', 0, 0, 1, '2022-09-19 05:07:22', '2022-09-19 05:07:22'),
(5, '5b73b23b4a6dcc9ceb1404156840d738', NULL, 29, 'Crail', '', '0.8000', NULL, 0, 0, 0, 300, 5000, 'manual', 'default', '', 0, 0, 1, '2022-09-19 05:07:31', '2022-09-19 05:07:31'),
(6, '49e415ea714e7a08dee5967612c1b3da', NULL, 29, 'Echo', '', '0.8000', NULL, 0, 0, 0, 300, 5000, 'manual', 'default', '', 0, 0, 1, '2022-09-19 05:07:40', '2022-09-19 05:07:40'),
(7, '395fcc6c499b983a14a5410af18874dc', NULL, 29, 'Eratz', '', '0.8000', NULL, 0, 0, 0, 300, 5000, 'manual', 'default', '', 0, 0, 1, '2022-09-19 05:07:50', '2022-09-19 05:07:50'),
(8, '27315b68e54325d3344983890d51c3a9', NULL, 29, 'Furye', '', '0.8000', NULL, 0, 0, 0, 300, 5000, 'manual', 'default', '', 0, 0, 1, '2022-09-19 05:07:58', '2022-09-19 05:07:58'),
(9, '2f0ab4d7c30e9a50811bead359da45bb', NULL, 29, 'Galgarion', '', '0.8000', NULL, 0, 0, 0, 300, 5000, 'manual', 'default', '', 0, 0, 1, '2022-09-19 05:08:10', '2022-09-19 05:08:10'),
(10, '1444461182bf0932de18bd59aadcc38d', NULL, 29, 'Henual', '', '0.8000', NULL, 0, 0, 0, 300, 5000, 'manual', 'default', '', 0, 0, 1, '2022-09-19 05:08:22', '2022-09-19 05:08:22'),
(11, 'cfdaedcb99d870837fcae5d73150cd9f', NULL, 29, 'Ilyzaelle', '', '0.8000', NULL, 0, 0, 0, 300, 5000, 'manual', 'default', '', 0, 0, 1, '2022-09-19 05:08:30', '2022-09-19 05:08:30'),
(12, '8d1ffd5c08a9e6a06bab569339349155', NULL, 29, 'Jahash', '', '0.8000', NULL, 0, 0, 0, 300, 5000, 'manual', 'default', '', 0, 0, 1, '2022-09-19 05:08:40', '2022-09-19 05:08:40'),
(13, '19474b3eee0140b3915c5d5dfa56e98a', NULL, 29, 'Julith', '', '0.8000', NULL, 0, 0, 0, 300, 5000, 'manual', 'default', '', 0, 0, 1, '2022-09-19 05:08:49', '2022-09-19 05:08:49'),
(14, 'ad197caa3c7e6a362f8b3d009c47605e', NULL, 29, 'Meriana', '', '0.8000', NULL, 0, 0, 0, 300, 5000, 'manual', 'default', '', 0, 0, 1, '2022-09-19 05:08:57', '2022-09-19 05:08:57'),
(15, '4fcbc8891ad62861d2741e2a2551f641', NULL, 29, 'Merkator', '', '0.8000', NULL, 0, 0, 0, 300, 5000, 'manual', 'default', '', 0, 0, 1, '2022-09-19 05:09:10', '2022-09-19 05:09:10'),
(16, '18466df7b6c6528ae6982025c27f9d96', NULL, 29, 'Nidas', '', '0.8000', NULL, 0, 0, 0, 300, 5000, 'manual', 'default', '', 0, 0, 1, '2022-09-19 05:09:19', '2022-09-19 05:09:19'),
(17, 'd32959cc9f1a47f59e387c0601e84ebf', NULL, 29, 'Ombre(Shadow) ', '', '0.8000', NULL, 0, 0, 0, 300, 5000, 'manual', 'default', '', 0, 0, 1, '2022-09-19 05:09:28', '2022-09-19 05:09:28'),
(18, '6687e42f926dd9532bf10474aae5f0f9', NULL, 29, 'Oto Mustam ', '', '0.8000', NULL, 0, 0, 0, 300, 5000, 'manual', 'default', '', 0, 0, 1, '2022-09-19 05:09:38', '2022-09-19 05:09:38'),
(19, '0e037ac589e236bf0c767ac0a0d16c87', NULL, 29, 'Pandore', '', '0.8000', NULL, 0, 0, 0, 300, 5000, 'manual', 'default', '', 0, 0, 1, '2022-09-19 05:09:46', '2022-09-19 05:09:46'),
(20, '0c63f87d2392fcc592fbf40c539935ed', NULL, 29, 'Rubilax', '', '0.8000', NULL, 0, 0, 0, 300, 5000, 'manual', 'default', '', 0, 0, 1, '2022-09-19 05:09:56', '2022-09-19 05:09:56'),
(22, 'f68146a636ea218c093ca91ec1637c07', NULL, 29, 'Temporis XIII ', '', '0.8000', NULL, 0, 0, 0, 300, 5000, 'manual', 'default', '', 0, 0, 1, '2022-09-19 05:10:12', '2022-09-19 05:10:12'),
(23, '0995bda628298987f9c79b9460d2be57', NULL, 29, 'Thanatena', '', '0.8000', NULL, 0, 0, 0, 300, 5000, 'manual', 'default', '', 0, 0, 1, '2022-09-19 05:10:20', '2022-09-19 05:10:20'),
(24, '95c45b36f2994e90625bc09604e6147a', NULL, 29, 'USH', '', '0.8000', NULL, 0, 0, 0, 300, 5000, 'manual', 'default', '', 0, 0, 1, '2022-09-19 05:10:28', '2022-09-19 05:10:28');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('new','pending','closed','answered') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `user_read` double NOT NULL DEFAULT 0,
  `admin_read` double NOT NULL DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `ids`, `uid`, `description`, `subject`, `status`, `user_read`, `admin_read`, `created`, `changed`) VALUES
(1, '4752e1d3d8393e0705e038707431a0bb', 40, 'Cancel\r\n', 'Order - Cancellation - 389723', 'closed', 0, 0, '2022-09-19 06:05:26', '2022-09-19 06:06:12'),
(2, '2126c5186a767779a740bded7c908dfb', 40, '123456', 'Payment - Other - 1264566', 'closed', 0, 0, '2022-09-19 11:08:06', '2022-09-20 02:07:02');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `author` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support` int(1) DEFAULT 0 COMMENT '1 - From support , 0 - From client',
  `ticket_id` int(11) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_messages`
--

INSERT INTO `ticket_messages` (`id`, `ids`, `uid`, `author`, `support`, `ticket_id`, `message`, `is_read`, `changed`, `created`) VALUES
(1, '36948c479449a97a2b89cb902368f57a', 39, ' ', 1, 1, 'Okey', NULL, '2022-09-19 06:05:43', '2022-09-19 06:05:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_providers`
--
ALTER TABLE `api_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_custom_page`
--
ALTER TABLE `general_custom_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_file_manager`
--
ALTER TABLE `general_file_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_lang`
--
ALTER TABLE `general_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_lang_list`
--
ALTER TABLE `general_lang_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_news`
--
ALTER TABLE `general_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Indexes for table `general_options`
--
ALTER TABLE `general_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_purchase`
--
ALTER TABLE `general_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_sessions`
--
ALTER TABLE `general_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `general_subscribers`
--
ALTER TABLE `general_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_transaction_logs`
--
ALTER TABLE `general_transaction_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_users`
--
ALTER TABLE `general_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_users_price`
--
ALTER TABLE `general_users_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments_bonus`
--
ALTER TABLE `payments_bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_messages_user_id_foreign` (`uid`),
  ADD KEY `ticket_messages_ticket_id_foreign` (`ticket_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_providers`
--
ALTER TABLE `api_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `general_custom_page`
--
ALTER TABLE `general_custom_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `general_file_manager`
--
ALTER TABLE `general_file_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT for table `general_lang`
--
ALTER TABLE `general_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_lang_list`
--
ALTER TABLE `general_lang_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_news`
--
ALTER TABLE `general_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_options`
--
ALTER TABLE `general_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `general_purchase`
--
ALTER TABLE `general_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_subscribers`
--
ALTER TABLE `general_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_transaction_logs`
--
ALTER TABLE `general_transaction_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `general_users`
--
ALTER TABLE `general_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `general_users_price`
--
ALTER TABLE `general_users_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=389724;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payments_bonus`
--
ALTER TABLE `payments_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
