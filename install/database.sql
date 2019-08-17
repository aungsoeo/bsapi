-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 21, 2019 at 12:02 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oxoo_empty`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `comments_id` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `video_id` int(20) NOT NULL,
  `comment_type` int(5) NOT NULL DEFAULT '1',
  `replay_for` int(10) DEFAULT '0',
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `comment_at` datetime DEFAULT NULL,
  `publication` int(5) DEFAULT '0',
  PRIMARY KEY (`comments_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`config_id`, `title`, `value`) VALUES
(1, 'system_name', 'OXOO - Android Live TV & Movie Portal'),
(4, 'business_address', 'My Address'),
(5, 'business_phone', '880170000000'),
(6, 'contact_email', 'contact@mydomain.com'),
(7, 'system_email', 'email@mydomain.com'),
(8, 'system_short_name', 'OXOO'),
(30, 'slider_type', 'image'),
(31, 'slide_per_page', ''),
(32, 'protocol', 'smtp'),
(33, 'mailpath', '/usr/bin/sendmail'),
(34, 'smtp_host', 'smtp.gmail.com'),
(35, 'smtp_user', 'email@website.com'),
(36, 'smtp_pass', 'xxxxxxxxx'),
(37, 'smtp_port', '465'),
(38, 'smtp_crypto', 'ssl'),
(52, 'comments_approval', '1'),
(64, 'movie_per_page', '72'),
(82, 'purchase_code', 'item_purchase_code'),
(106, 'push_notification_enable', ''),
(107, 'onesignal_appid', 'xxxxxxxxxxxxxxxe'),
(111, 'onesignal_api_keys', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxe'),
(114, 'mobile_apps_api_secret_key', 'api2018forovoo'),
(139, 'cron_key', 'jrajriwhwgjlwgx7s7dfeikz'),
(140, 'db_backup', '1'),
(141, 'backup_schedule', '1'),
(143, 'terms', '<h2 class=\"page-title\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(223,=\"\" 223,=\"\" 223);=\"\" margin-bottom:=\"\" 20px;=\"\" font-size:=\"\" 28px;\"=\"\"><span style=\"color: inherit;\">Terms and Conditions</span></h2>\r\n<div class=\"dmcal-content\" style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"color: inherit;\">This Agreement contains the complete terms and conditions that apply to your participation in our site. If you wish to use the site including its tools and services please read these terms of use carefully. By accessing this site or using any part of the site or any content or services hereof, you agree to become bound by these terms and conditions. If you do not agree to all the terms and conditions, then you may not access the site or use the content or any services in the site.</span></p>\r\n<h3 style=\"line-height: 1.1; margin-top: 20px; margin-bottom: 10px; font-size: 24px;\"><span style=\"color: inherit;\">Modifications of Terms and Conditions</span></h3>\r\n<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"color: inherit;\">Amendments to this agreement can be made and effected by us from time to time without specific notice to your end. Agreement posted on the Site reflects the latest agreement and you should carefully review the same before you use our site.</span></p>\r\n<h3 style=\"line-height: 1.1; margin-top: 20px; margin-bottom: 10px; font-size: 24px;\"><span style=\"color: inherit;\">Use of the site</span></h3>\r\n<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"color: inherit;\">The Site allows you to post offers, sell, advertise, bid and shop online. However, you are prohibited to do the following acts, to wit: (a) use our sites, including its services and or tools if you are not able to form legally binding contracts, are under the age of 18, or are temporarily or indefinitely suspended from using our sites, services, or tools (b) posting of an items in inappropriate category or areas on our sites and services; (c) collecting information about users’ personal information; (d) maneuvering the price of any item or interfere with other users’ listings; (f) post false, inaccurate, misleading, defamatory, or libelous content; (g) take any action that may damage the rating system.</span></p>\r\n<h3 style=\"line-height: 1.1; margin-top: 20px; margin-bottom: 10px; font-size: 24px;\"><span style=\"color: inherit;\">Registration Information</span></h3>\r\n<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"color: inherit;\">For you to complete the sign-up process in our site, you must provide your full legal name, current address, a valid email address, member name and any other information needed in order to complete the signup process. You must qualify that you are 18 years or older and must be responsible for keeping your password secure and be responsible for all activities and contents that are uploaded under your account. You must not transmit any worms or viruses or any code of a destructive nature. Any information provided by you or gathered by the site or third parties during any visit to the site shall be subject to the terms of YesMovies.to’s Privacy Policy.</span></p>\r\n<h3 style=\"line-height: 1.1; margin-top: 20px; margin-bottom: 10px; font-size: 24px;\"><span style=\"color: inherit;\">Non-commercial Use by Users</span></h3>\r\n<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"color: inherit;\">Users on this website are prohibited to use the services of the website in connection with any commercial endeavors or ventures. This includes providing links to other websites, whether deemed competitive to this website or not. Juridical persons or entities including but not limited to organizations, companies, and/or businesses may not become Members of YesMovies.to and should not use the site for any purpose.</span></p>\r\n<h3 style=\"line-height: 1.1; margin-top: 20px; margin-bottom: 10px; font-size: 24px;\"><span style=\"color: inherit;\">Links</span></h3>\r\n<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"color: inherit;\">Illegal and/or unauthorized uses of the Services, including unauthorized framing of or linking to the Sites will be investigated, and appropriate legal action may be taken. Some links, however, are welcome to the site and you are allowed to establish hyperlink to appropriate part within the site provided that: (i) you post your link only within the forum, chat or message board section; (ii) you do not remove or obscure any advertisements, copyright notices or other notices on the placed at the site; (iii) the link does not state or imply any sponsorship or endorsement of your site and (iv) you immediately stop providing any links to the site on written notice from us. However, you must check the copyright notice on the homepage to which you wish to link to make sure that one of our content providers does not have its own policies regarding direct links to their content on our sites.</span></p>\r\n<h3 style=\"line-height: 1.1; margin-top: 20px; margin-bottom: 10px; font-size: 24px;\"><span style=\"color: inherit;\">Limitations of Liability</span></h3>\r\n<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"color: inherit;\">We make no express or implied warranties or representations with respect to the Program or any products sold through the Program (including, without limitation, warranties of fitness, merchantability, non-infringement, or any implied warranties arising out of a course of performance, dealing, or trade usage). In addition, we make no representation that the operation of our site will be uninterrupted or error-free, and we will not be liable for the consequences of any interruptions or errors. We may change, restrict access to, suspend or discontinued the site or any part of it at anytime. The information, content and services on the site are provided on an “as is” basis. When you use the site and or participate therein, you understand and agree that you participate at your own risk.</span></p>\r\n<h3 style=\"line-height: 1.1; margin-top: 20px; margin-bottom: 10px; font-size: 24px;\"><span style=\"color: inherit;\">Intellectual Property Rights</span></h3>\r\n<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"color: inherit;\">You hereby acknowledge that all rights, titles and interests, including but not limited to rights covered by the Intellectual Property Rights, in and to the site, and that You will not acquire any right, title, or interest in or to the site except as expressly set forth in this Agreement. You will not modify, adapt, translate, prepare derivative works from, decompile, reverse engineer, disassemble or otherwise attempt to derive source code from any of our services, software, or documentation, or create or attempt to create a substitute or similar service or product through use of or access to the Program or proprietary information related thereto.</span></p>\r\n<h3 style=\"line-height: 1.1; margin-top: 20px; margin-bottom: 10px; font-size: 24px;\"><span style=\"color: inherit;\">Confidentiality</span></h3>\r\n<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"color: inherit;\">You agree not to disclose information you obtain from us and or from our clients, advertisers, suppliers and forum members. All information submitted to by an end-user customer pursuant to a Program is proprietary information of YesMovies.to. Such customer information is confidential and may not be disclosed. Publisher agrees not to reproduce, disseminate, sell, distribute or commercially exploit any such proprietary information in any manner.</span></p>\r\n<h3 style=\"line-height: 1.1; margin-top: 20px; margin-bottom: 10px; font-size: 24px;\"><span style=\"color: inherit;\">Non-Assignment of Rights</span></h3>\r\n<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"color: inherit;\">Your rights of whatever nature cannot be assigned nor transferred to anybody, and any such attempt may result in termination of this Agreement, without liability to us. However, we may assign this Agreement to any person at any time without notice.</span></p>\r\n<h3 style=\"line-height: 1.1; margin-top: 20px; margin-bottom: 10px; font-size: 24px;\"><span style=\"color: inherit;\">Waiver</span></h3>\r\n<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"color: inherit;\">Failure of the YesMovies.to to insist upon strict performance of any of the terms, conditions and covenants hereof shall not be deemed a relinquishment or waiver of any rights or remedy that the we may have, nor shall it be construed as a waiver of any subsequent breach of the terms, conditions or covenants hereof, which terms, conditions and covenants shall continue to be in full force and effect.</span></p>\r\n<h3 style=\"line-height: 1.1; margin-top: 20px; margin-bottom: 10px; font-size: 24px;\"><span style=\"color: inherit;\">Severability of Terms</span></h3>\r\n<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"color: inherit;\">In the event that any provision of these Terms and Conditions is found invalid or unenforceable pursuant to any judicial decree or decision, such provision shall be deemed to apply only to the maximum extent permitted by law, and the remainder of these Terms and Conditions shall remain valid and enforceable according to its terms.</span></p>\r\n<h3 style=\"line-height: 1.1; margin-top: 20px; margin-bottom: 10px; font-size: 24px;\"><span style=\"color: inherit;\">Entire Agreement</span></h3>\r\n<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"color: inherit;\">This Agreement shall be governed by and construed in accordance with the substantive laws of United Kingdom, without any reference to conflict-of-laws principles. The Agreement describes and encompasses the entire agreement between us and you, and supersedes all prior or contemporaneous agreements, representations, warranties and understandings with respect to the Site, the contents and materials provided by or through the Site, and the subject matter of this Agreement.</span></p>\r\n<h3 style=\"line-height: 1.1; margin-top: 20px; margin-bottom: 10px; font-size: 24px;\"><span style=\"color: inherit;\">Choice of Law; Jurisdiction</span></h3>\r\n<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"color: inherit;\">Any dispute, controversy or difference which may arise between the parties out of, in relation to or in connection with this Agreement is hereby irrevocably submitted to the exclusive jurisdiction of the courts of United Kingdom, to the exclusion of any other courts without giving effect to its conflict of laws provisions or your actual state or country of residence.</span></p>\r\n</div>');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `description` varchar(25) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `publication` int(2) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES
(1, 'International', '', 'international', 1),
(2, 'Asia', '', 'asia', 1),
(3, 'USA', '', 'usa', 1),
(4, 'China', '', 'china', 1),
(5, 'Japan', '', 'japan', 1),
(6, 'Korean', '', 'korean', 1),
(7, 'Nepal', '', 'nepal', 1),
(8, 'Thailand', '', 'thailand', 1),
(9, 'Tamil', '', 'tamil', 1),
(10, 'India', '', 'india', 1),
(11, 'France', '', 'france', 1),
(12, 'Italy', '', 'italy', 1),
(13, 'German', '', 'german', 1),
(14, 'London', '', 'london', 1),
(15, 'Canada', '', 'canada', 1),
(16, 'Denmark', '', 'denmark', 1),
(17, 'UK', '', 'uk', 1),
(18, 'Hong kong', '', 'hong-kong', 1),
(19, 'UAE', '', 'uae', 1),
(20, 'Australia', '', 'australia', 1),
(21, 'South Korea', '', 'south-korea', 1),
(22, 'Russia', '', 'russia', 1),
(23, ' Sweden', '', 'sweden', 1),
(24, 'Spain', '', 'spain', 1),
(25, 'Brazil', '', 'brazil', 1),
(26, 'Iran', '', 'iran', 1),
(27, 'Israel', '', 'israel', 1),
(28, 'Indonesia', '', 'indonesia', 1),
(29, 'Philippines', '', 'philippines', 1),
(30, ' Peru', ' Peru', 'peru', 1),
(31, ' Canada', ' Canada', 'canada', 1),
(32, ' Japan', ' Japan', 'japan', 1),
(33, ' USA', ' USA', 'usa', 1),
(34, ' Hong Kong', ' Hong Kong', 'hong-kong', 1),
(35, ' Mexico', ' Mexico', 'mexico', 1),
(36, ' New Zealand', ' New Zealand', 'new-zealand', 1),
(37, ' UK', ' UK', 'uk', 1),
(38, ' Denmark', ' Denmark', 'denmark', 1),
(39, ' Australia', ' Australia', 'australia', 1),
(40, ' Germany', ' Germany', 'germany', 1),
(41, ' Hungary', ' Hungary', 'hungary', 1),
(42, ' India', ' India', 'india', 1),
(43, 'Hungary', 'Hungary', 'hungary', 1),
(44, ' France', ' France', 'france', 1),
(45, ' China', ' China', 'china', 1),
(46, 'Chile', 'Chile', 'chile', 1),
(47, ' Argentina', ' Argentina', 'argentina', 1),
(48, 'Egypt', 'Egypt', 'egypt', 1),
(49, 'New Zealand', 'New Zealand', 'new-zealand', 1),
(50, 'Croatia', 'Croatia', 'croatia', 1),
(51, ' Switzerland', ' Switzerland', 'switzerland', 1),
(52, ' Tunisia', ' Tunisia', 'tunisia', 1),
(53, 'Belgium', 'Belgium', 'belgium', 1),
(68, 'United States of America', 'United States of America', 'united-states-of-america', 1),
(69, 'Bangladesh', 'Bangladesh', 'bangladesh', 1),
(70, 'United Kingdom', 'United Kingdom', 'united-kingdom', 1),
(71, 'Malaysia', 'Malaysia', 'malaysia', 1),
(72, 'South Africa', 'South Africa', 'south-africa', 1),
(73, 'Switzerland', 'Switzerland', 'switzerland', 1),
(74, 'Germany', 'Germany', 'germany', 1),
(75, 'Sweden', 'Sweden', 'sweden', 1),
(76, 'Bulgaria', 'Bulgaria', 'bulgaria', 1),
(77, 'Soviet Union', 'Soviet Union', 'soviet-union', 1),
(78, 'Netherlands', 'Netherlands', 'netherlands', 1),
(80, 'Malta', 'Malta', 'malta', 1),
(81, 'Taiwan', 'Taiwan', 'taiwan', 1),
(82, 'Argentina', 'Argentina', 'argentina', 1),
(83, 'Iceland', 'Iceland', 'iceland', 1),
(84, 'CA', 'CA', 'ca', 1),
(85, 'US', 'US', 'us', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cron`
--

DROP TABLE IF EXISTS `cron`;
CREATE TABLE IF NOT EXISTS `cron` (
  `cron_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image_url` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `save_to` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `videos_id` int(250) DEFAULT NULL,
  `admin_email_from` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_to` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_sub` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` longtext CHARACTER SET utf32 COLLATE utf32_unicode_ci,
  PRIMARY KEY (`cron_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

DROP TABLE IF EXISTS `episodes`;
CREATE TABLE IF NOT EXISTS `episodes` (
  `episodes_id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `videos_id` int(11) DEFAULT NULL,
  `seasons_id` int(11) DEFAULT NULL,
  `episodes_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_source` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_type` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_url` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`episodes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(250) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `publication` int(1) NOT NULL,
  `featured` int(2) DEFAULT '0',
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES
(1, 'Action', 'Action Movie<br>', 'action', 1, 1),
(2, 'TV Show', 'Tv Show <br>', 'tv-show', 1, 0),
(3, 'Si-Fi', '', 'si-fi', 1, 1),
(4, 'Adventure', 'Adventure Movies<br>', 'adventure', 1, 0),
(5, 'Animation', 'Animation Movies<br>', 'animation', 1, 1),
(6, 'Biography', 'Biography Movies<br>', 'biography', 1, 0),
(7, 'Comedy', 'Comedy Movies<br>', 'comedy', 1, 1),
(8, 'Crime', 'Crime Movies<br>', 'crime', 1, 0),
(9, 'Documentary', 'Documentary Movies<br>', 'documentary', 1, 0),
(10, 'Drama', '', 'drama', 1, 0),
(11, 'Family', 'Family<br>', 'family', 1, 1),
(12, 'Fantasy', 'Fantasy Movies<br>', 'fantasy', 1, 0),
(13, 'History', '', 'history', 1, 0),
(14, 'Horror', 'Horror Movies<br>', 'horror', 1, 1),
(15, 'Music', '', 'music', 1, 0),
(16, 'Musical', '', 'musical', 1, 0),
(17, 'Mystery', '', 'mystery', 1, 0),
(18, 'Thriller', '', 'thriller', 1, 1),
(19, 'War', '', 'war', 1, 0),
(20, 'Western', '', 'western', 1, 0),
(21, 'TV Series', '', 'tv-series', 1, 0),
(22, ' Romance', ' Romance', 'romance', 1, 0),
(23, ' Adventure', ' Adventure', 'adventure', 1, 0),
(24, ' Thriller', ' Thriller', 'thriller', 1, 0),
(25, ' Drama', ' Drama', 'drama', 1, 0),
(26, ' Fantasy', ' Fantasy', 'fantasy', 1, 0),
(27, ' Sci-Fi', ' Sci-Fi', 'sci-fi', 1, 0),
(28, ' Comedy', ' Comedy', 'comedy', 1, 0),
(29, ' Family', ' Family', 'family', 1, 0),
(30, ' Action', ' Action', 'action', 1, 0),
(31, 'Short', 'Short', 'short', 1, 0),
(32, ' Music', ' Music', 'music', 1, 0),
(33, ' History', ' History', 'history', 1, 0),
(34, ' Crime', ' Crime', 'crime', 1, 0),
(35, ' Western', ' Western', 'western', 1, 0),
(36, ' Sport', ' Sport', 'sport', 1, 0),
(37, ' Short', ' Short', 'short', 1, 0),
(38, ' Mystery', ' Mystery', 'mystery', 1, 0),
(39, 'Romance', 'Romance', 'romance', 1, 0),
(40, 'Action & Adventure', 'Action & Adventure', 'action-adventure', 1, 0),
(41, 'Sci-Fi & Fantasy', 'Sci-Fi & Fantasy', 'sci-fi-fantasy', 1, 0),
(42, 'Science Fiction', 'Science Fiction', 'science-fiction', 1, 0),
(44, 'TV Movie', 'TV Movie', 'tv-movie', 1, 0),
(45, 'News', 'News', 'news', 1, 0),
(46, '', '', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `live_tv`
--

DROP TABLE IF EXISTS `live_tv`;
CREATE TABLE IF NOT EXISTS `live_tv` (
  `live_tv_id` int(11) NOT NULL AUTO_INCREMENT,
  `tv_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_title` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `live_tv_category_id` int(50) DEFAULT NULL,
  `slug` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `language` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'en',
  `stream_from` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `stream_label` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `stream_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `poster` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `thumbnail` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `focus_keyword` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int(2) DEFAULT '1',
  `tags` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `publish` int(10) UNSIGNED DEFAULT '0',
  PRIMARY KEY (`live_tv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `live_tv_category`
--

DROP TABLE IF EXISTS `live_tv_category`;
CREATE TABLE IF NOT EXISTS `live_tv_category` (
  `live_tv_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `live_tv_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `live_tv_category_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`live_tv_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `live_tv_category`
--

INSERT INTO `live_tv_category` (`live_tv_category_id`, `live_tv_category`, `live_tv_category_desc`, `status`) VALUES
(1, 'General', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `live_tv_url`
--

DROP TABLE IF EXISTS `live_tv_url`;
CREATE TABLE IF NOT EXISTS `live_tv_url` (
  `live_tv_url_id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `live_tv_id` int(11) DEFAULT NULL,
  `url_for` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`live_tv_url_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quality`
--

DROP TABLE IF EXISTS `quality`;
CREATE TABLE IF NOT EXISTS `quality` (
  `quality_id` int(10) NOT NULL AUTO_INCREMENT,
  `quality` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` int(5) DEFAULT '1',
  PRIMARY KEY (`quality_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quality`
--

INSERT INTO `quality` (`quality_id`, `quality`, `description`, `status`) VALUES
(2, 'HD', 'Sandard Defination', 1),
(3, 'SD', 'Ultra High Defination', 1),
(4, 'CAM', 'Web Camera Video', 1),
(7, 'LQ', 'Low Quality', 1),
(8, 'DVD', 'Digital Video Device', 1);

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

DROP TABLE IF EXISTS `seasons`;
CREATE TABLE IF NOT EXISTS `seasons` (
  `seasons_id` int(11) NOT NULL AUTO_INCREMENT,
  `videos_id` int(11) DEFAULT NULL,
  `seasons_name` varchar(250) DEFAULT NULL,
  `publish` int(11) DEFAULT '1',
  PRIMARY KEY (`seasons_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `description` varchar(250) NOT NULL,
  `video_link` varchar(250) NOT NULL,
  `image_link` varchar(250) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `publication` int(1) NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `star`
--

DROP TABLE IF EXISTS `star`;
CREATE TABLE IF NOT EXISTS `star` (
  `star_id` int(10) NOT NULL AUTO_INCREMENT,
  `star_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `star_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `star_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`star_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci,
  `slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `gender` int(2) DEFAULT '1',
  `role` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` text COLLATE utf8_unicode_ci,
  `theme` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'default',
  `theme_color` varchar(50) COLLATE utf8_unicode_ci DEFAULT '#16163F',
  `join_date` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `slug`, `username`, `email`, `password`, `gender`, `role`, `token`, `theme`, `theme_color`, `join_date`, `last_login`, `status`) VALUES
(1, 'admin_name', 'admin-name', 'admin_username', 'my_admin_email', 'admin_password', 0, 'admin', '0585e70f08a9acc258193ea416d41127', 'default', '#16163F', '2019-01-01 00:00:00', '2019-03-21 16:42:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `videos_id` int(11) NOT NULL AUTO_INCREMENT,
  `imdbid` varchar(200) DEFAULT NULL,
  `title` varchar(150) NOT NULL,
  `seo_title` varchar(250) DEFAULT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `description` longtext,
  `stars` varchar(250) DEFAULT '',
  `director` varchar(250) DEFAULT NULL,
  `writer` varchar(250) DEFAULT NULL,
  `rating` varchar(5) DEFAULT '0',
  `release` varchar(25) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `genre` varchar(200) DEFAULT NULL,
  `video_type` varchar(50) DEFAULT NULL,
  `runtime` varchar(10) DEFAULT NULL,
  `video_quality` varchar(200) DEFAULT 'HD',
  `publication` int(5) DEFAULT NULL,
  `trailer` int(5) DEFAULT '0',
  `enable_download` int(5) DEFAULT '1',
  `focus_keyword` text,
  `meta_description` text,
  `tags` text,
  `imdb_rating` varchar(5) DEFAULT NULL,
  `is_tvseries` int(11) NOT NULL DEFAULT '0',
  `total_rating` int(50) DEFAULT '1',
  `today_view` int(250) DEFAULT '0',
  `weekly_view` int(250) DEFAULT '0',
  `monthly_view` int(250) DEFAULT '0',
  `total_view` int(250) DEFAULT '1',
  PRIMARY KEY (`videos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `video_file`
--

DROP TABLE IF EXISTS `video_file`;
CREATE TABLE IF NOT EXISTS `video_file` (
  `video_file_id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `videos_id` int(11) DEFAULT NULL,
  `file_source` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_type` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_url` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`video_file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wish_list`
--

DROP TABLE IF EXISTS `wish_list`;
CREATE TABLE IF NOT EXISTS `wish_list` (
  `wish_list_id` int(11) NOT NULL AUTO_INCREMENT,
  `wish_list_type` varchar(200) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `videos_id` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`wish_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
