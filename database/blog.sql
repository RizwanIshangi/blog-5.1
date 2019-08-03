-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2017 at 01:19 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `alien_category`
--

CREATE TABLE `alien_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category_alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alien_comments`
--

CREATE TABLE `alien_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `diary_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alien_diary`
--

CREATE TABLE `alien_diary` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `featured_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visits` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alien_messages`
--

CREATE TABLE `alien_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `alien_messages`
--

INSERT INTO `alien_messages` (`id`, `name`, `email`, `image`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'rizwan', 'rizwan.ishangi@gmail.com', 'http://www.gravatar.com/avatar/fa7efe9cdb794bb57630149caf5c33b9', 'hi rizwan this is cotact mesage', 0, '2016-10-09 04:41:48', '2016-10-09 04:41:48'),
(2, 'feroz', 'mr_rizvi898@yahoo.com', 'http://www.gravatar.com/avatar/b1770730d54abe69a720e484a7a6c10b', ' hjghjg jhg jh gjhgjhgjh gj', 0, '2016-10-16 00:31:06', '2016-10-16 00:31:06'),
(3, 'feroz', 'mr_rizvi898@yahoo.com', 'http://www.gravatar.com/avatar/b1770730d54abe69a720e484a7a6c10b', 'ccvc jjgfjhgf jh', 0, '2016-10-16 00:41:43', '2016-10-16 00:41:43'),
(4, 'feroz', 'mr_rizvi898@yahoo.com', 'http://www.gravatar.com/avatar/b1770730d54abe69a720e484a7a6c10b', 'ccvc jjgfjhgf jh', 0, '2016-10-16 00:43:59', '2016-10-16 00:43:59'),
(5, 'feroz', 'mr_rizvi898@yahoo.com', 'http://www.gravatar.com/avatar/b1770730d54abe69a720e484a7a6c10b', 'ccvc jjgfjhgf jh', 0, '2016-10-16 01:18:06', '2016-10-16 01:18:06'),
(6, 'feroz', 'rizwan.ishangi@gmail.com', 'http://www.gravatar.com/avatar/fa7efe9cdb794bb57630149caf5c33b9', 'sfsdf asdfads', 0, '2016-10-16 01:32:14', '2016-10-16 01:32:14'),
(7, 'feroz', 'rizwan.ishangi@gmail.com', 'http://www.gravatar.com/avatar/fa7efe9cdb794bb57630149caf5c33b9', 'sfsdf asdfads', 0, '2016-10-16 01:32:45', '2016-10-16 01:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `alien_migrations`
--

CREATE TABLE `alien_migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `alien_migrations`
--

INSERT INTO `alien_migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_08_13_141818_create_diary_table', 1),
('2015_08_14_094915_create_category_table', 1),
('2015_08_17_094947_create_comments_table', 1),
('2015_08_18_105055_craete_notifications_table', 1),
('2015_08_19_104711_create_work_educaton_table', 1),
('2015_08_19_124645_create_skills_table', 1),
('2015_08_24_074611_create_message_table', 1),
('2015_08_24_074647_create_settings_table', 1),
('2015_08_26_082311_create_tags_table', 1),
('2015_08_26_082346_create_tagged_table', 1),
('2016_04_20_073342_add_visit_column_in_diary_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `alien_notifications`
--

CREATE TABLE `alien_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `messages` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alien_password_resets`
--

CREATE TABLE `alien_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alien_settings`
--

CREATE TABLE `alien_settings` (
  `option` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alien_skills`
--

CREATE TABLE `alien_skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `skill` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `skill_range` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alien_tagged`
--

CREATE TABLE `alien_tagged` (
  `diary_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alien_tags`
--

CREATE TABLE `alien_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_name` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alien_users`
--

CREATE TABLE `alien_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `visits` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alien_work_education`
--

CREATE TABLE `alien_work_education` (
  `id` int(10) UNSIGNED NOT NULL,
  `institute` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `period` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alien_category`
--
ALTER TABLE `alien_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_category_alias_unique` (`category_alias`);

--
-- Indexes for table `alien_comments`
--
ALTER TABLE `alien_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alien_diary`
--
ALTER TABLE `alien_diary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alien_messages`
--
ALTER TABLE `alien_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alien_notifications`
--
ALTER TABLE `alien_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alien_password_resets`
--
ALTER TABLE `alien_password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `alien_settings`
--
ALTER TABLE `alien_settings`
  ADD UNIQUE KEY `settings_option_unique` (`option`);

--
-- Indexes for table `alien_skills`
--
ALTER TABLE `alien_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alien_tags`
--
ALTER TABLE `alien_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_tag_name_unique` (`tag_name`);

--
-- Indexes for table `alien_users`
--
ALTER TABLE `alien_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `alien_work_education`
--
ALTER TABLE `alien_work_education`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alien_category`
--
ALTER TABLE `alien_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `alien_comments`
--
ALTER TABLE `alien_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `alien_diary`
--
ALTER TABLE `alien_diary`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `alien_messages`
--
ALTER TABLE `alien_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `alien_notifications`
--
ALTER TABLE `alien_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `alien_skills`
--
ALTER TABLE `alien_skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `alien_tags`
--
ALTER TABLE `alien_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `alien_users`
--
ALTER TABLE `alien_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `alien_work_education`
--
ALTER TABLE `alien_work_education`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
