-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2021 at 11:27 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_boilerplate`
--

-- --------------------------------------------------------

--
-- Table structure for table `color_settings`
--

CREATE TABLE `color_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `color_settings`
--

INSERT INTO `color_settings` (`id`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, '#ea2e2e', NULL, '2021-10-28 09:02:57');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `email`, `phone`, `address`, `logo`, `favicon`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'email@email.com', '01747620489', 'genda, savar, dhaka', 'logo.png', 'favicon.png', 'title', 'description', 'keywords', NULL, '2021-10-28 06:49:32');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_10_28_084707_create_sessions_table', 1),
(7, '2021_10_28_112930_create_general_settings_table', 2),
(8, '2021_10_28_125049_create_color_settings_table', 3),
(10, '2021_10_28_141410_create_socialurls_table', 4),
(11, '2021_10_28_153344_create_contacts_table', 5),
(12, '2021_10_28_161312_create_subscribers_table', 6),
(13, '2021_10_29_111104_create_theme_settings_table', 7),
(14, '2021_10_29_121341_create_visits_table', 8);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('a1Pr37XCi72QKYDhzz24RumIGf0Onv3Mz34xF7nK', 133, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiaVJxZVlhZXQwM0Z0U2VoMWlJRDUzdTg0Znh5VUhwQXBZRExMZ0ZmbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMzM7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRpQTY2Ri9HTkRYc0lrNTFLQk1ZVjN1NWZrVlpFYzJ1NXl5V055UGw1UXNic2FFSkRmVWdHRyI7fQ==', 1635584268),
('sR1zdFYk263qTpLsDTTJKC7axJSrtc35qrzX1sRV', 133, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZXU5U1FBSWNRSUxKZ0pQMndRbHM4ajY5bGhTVEZiR2pmQWVlcGdpUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL3Byb2ZpbGUiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMzM7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRpQTY2Ri9HTkRYc0lrNTFLQk1ZVjN1NWZrVlpFYzJ1NXl5V055UGw1UXNic2FFSkRmVWdHRyI7fQ==', 1635525892);

-- --------------------------------------------------------

--
-- Table structure for table `shetabit_visits`
--

CREATE TABLE `shetabit_visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `languages` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headers` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visitor_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shetabit_visits`
--

INSERT INTO `shetabit_visits` (`id`, `method`, `request`, `url`, `referer`, `languages`, `useragent`, `headers`, `device`, `platform`, `browser`, `ip`, `visitable_type`, `visitable_id`, `visitor_type`, `visitor_id`, `created_at`, `updated_at`) VALUES
(1, 'GET', '[]', 'http://127.0.0.1:8000', NULL, '[\"en-us\",\"en\",\"bn\",\"la\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"cache-control\":[\"max-age=0\"],\"sec-ch-ua\":[\"\\\"Google Chrome\\\";v=\\\"95\\\", \\\"Chromium\\\";v=\\\"95\\\", \\\";Not A Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/95.0.4638.54 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br\"],\"accept-language\":[\"en-US,en;q=0.9,bn;q=0.8,la;q=0.7\"],\"cookie\":[\"remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkFScUhOL1ZyMjR0WXFNVlJPSFgrTkE9PSIsInZhbHVlIjoiUmlmOTREYm9NcGlQMHJNSjd4UkRORnMxK05yTy84WVRVcktYcnp3bnEwd2JCS2x1SDJCT3UyTG1YNTFNYjMzekNNT09OMVorbGJxNjU5U1h2NjRBME1iN3poeHVpdEhLUkpXWjkweExZdTFTRmtNcnRZa0p5T1lqT0xPdlJUdEk5ZDMwNFI4aDNBVERzZ2xqU3JrWDlxU2huRjVQNVpVcFJtQldaL05vK2tLakZIUWJGYnIyRVhZdlBkV1Bjb0kwckpYbFhKRzJrWFNLNGhKa3E0N2xGbkJiU29Mc1N4a1FGZGNlQWhvTHdVVT0iLCJtYWMiOiIyYjhlZmZhMWUxNWUyYzg4M2FmNzc4ZjBhM2I0OWNkZGIzM2NmYWMzNDQwNjQ3MmQ3MmQ1YTIwMDIyN2E4MDNhIn0%3D; zefruit_session=eyJpdiI6InlhOFhpZG16SmRHdU91M3dQdlpqMWc9PSIsInZhbHVlIjoiWHdqYktUYWJxdW53S1JKWnJ2d2hhZnhVS0l6bTVSZlZVTnpZTlRpZ1d2c2hvdU5sR3pOTjdDRkpPNjl1QU9ndWdUb0t3elgwbzNxbXNMY3hsRU5wRURTdVRUS2Q3blJDTVh2MHY0U3FpNGhKdWNsT213azdUSFBNeTlWcVpkZU4iLCJtYWMiOiJmZjIyOGU4ZTQzMWExODFlOTdlODdiYjE0Yzg4YzU1ODZlNTRmMWJlODJiZTkyNjA2Y2MyOTNiMGUyZjRhZDc1In0%3D; XSRF-TOKEN=eyJpdiI6IkF4c0YwZ2FYSWc1d2JVT2lmRGd2N0E9PSIsInZhbHVlIjoiSUVMU0VDVit4dkJDR1VtejBlWlk0U3Y5R3BWZVZ1amNRQVpyQVVWUkw1RVJEMVp1SDlpNHBBcmFGcmNMZkw5MjMyZitYek5pdi94M2xMNDNBTWdjVEp5N0dWUG44LzdUUzdDM0dzc0huRnlTblhrWG1QemlGSnc1aGNoc2NPRzciLCJtYWMiOiIzMGM5NmRhYWZlOGI5MjkxMDY0Zjg1MDA1NjM3NmQ2Y2Q4NmU4YzU3ODU5ZGZlYWZkZDYxODUzMDA2ZDAzNWIxIiwidGFnIjoiIn0%3D; laravel_boilerplate_session=eyJpdiI6IllOamVXNVpXQ0hvODYzQjJnem03aWc9PSIsInZhbHVlIjoiNXNGUGQxaGlNY05rWElHQWJJQW5Ga3lZb0c4V3RqaFluL1Vxb2J0WGw1UWVNdzFwSTAxYzRyYk5ER0RtaXplMEZ4VVN1anpidTlZV3FycVV2MnFsREVZaS9CUWJzVHZkeG1mT3FTZmJya2tEMUJHMGQvcW55Nzd2K3V1eHFTUlEiLCJtYWMiOiIwZDQ0YjBhZjE1NjYyODAzYTY2ZGE4ZmE1MDM2MDYzMDNhMmFmMzI3MTYzYWRiNmNiMWQ1ZmNiYzcwODBkMjdmIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, 'App\\Models\\User', 133, '2021-10-29 06:17:19', '2021-10-29 06:17:19'),
(2, 'GET', '[]', 'http://127.0.0.1:8000', NULL, '[\"en-us\",\"en\",\"bn\",\"la\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Google Chrome\\\";v=\\\"95\\\", \\\"Chromium\\\";v=\\\"95\\\", \\\";Not A Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/95.0.4638.54 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br\"],\"accept-language\":[\"en-US,en;q=0.9,bn;q=0.8,la;q=0.7\"],\"cookie\":[\"remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkFScUhOL1ZyMjR0WXFNVlJPSFgrTkE9PSIsInZhbHVlIjoiUmlmOTREYm9NcGlQMHJNSjd4UkRORnMxK05yTy84WVRVcktYcnp3bnEwd2JCS2x1SDJCT3UyTG1YNTFNYjMzekNNT09OMVorbGJxNjU5U1h2NjRBME1iN3poeHVpdEhLUkpXWjkweExZdTFTRmtNcnRZa0p5T1lqT0xPdlJUdEk5ZDMwNFI4aDNBVERzZ2xqU3JrWDlxU2huRjVQNVpVcFJtQldaL05vK2tLakZIUWJGYnIyRVhZdlBkV1Bjb0kwckpYbFhKRzJrWFNLNGhKa3E0N2xGbkJiU29Mc1N4a1FGZGNlQWhvTHdVVT0iLCJtYWMiOiIyYjhlZmZhMWUxNWUyYzg4M2FmNzc4ZjBhM2I0OWNkZGIzM2NmYWMzNDQwNjQ3MmQ3MmQ1YTIwMDIyN2E4MDNhIn0%3D; zefruit_session=eyJpdiI6InlhOFhpZG16SmRHdU91M3dQdlpqMWc9PSIsInZhbHVlIjoiWHdqYktUYWJxdW53S1JKWnJ2d2hhZnhVS0l6bTVSZlZVTnpZTlRpZ1d2c2hvdU5sR3pOTjdDRkpPNjl1QU9ndWdUb0t3elgwbzNxbXNMY3hsRU5wRURTdVRUS2Q3blJDTVh2MHY0U3FpNGhKdWNsT213azdUSFBNeTlWcVpkZU4iLCJtYWMiOiJmZjIyOGU4ZTQzMWExODFlOTdlODdiYjE0Yzg4YzU1ODZlNTRmMWJlODJiZTkyNjA2Y2MyOTNiMGUyZjRhZDc1In0%3D; XSRF-TOKEN=eyJpdiI6IllGeGlwU25Cc202V3E1RUhPRjBtSFE9PSIsInZhbHVlIjoiblQzU201bGdYSnJRTW9DcTM5cFlMU1ZML0pYVWJROVo5QXRVZTAyOFJ5SC9ITHphVUVvd0NqdVArMFkyRHhLOUR3NVNLd01Lam05QTkxV0JFWWh4UVR1VVhJK2w4ZXozQW9LUURSMFdzMitkTEZVZG00Q2N3U3ZuR2JQRVNRdDAiLCJtYWMiOiIxNjU5M2QyMjdkZDFjNmE0ODFiNjVmYTk0MGI0NTgzODRjN2NmMjdmOGFkNzc0Yjc0ZTg5YTA0MWE5MmYwYzIxIiwidGFnIjoiIn0%3D; laravel_boilerplate_session=eyJpdiI6IllSZE5uaHRYWllmdWliYVZpOUpVVWc9PSIsInZhbHVlIjoiSFpoVnlyQ1R2eGhxRndCa01nY1EvRTVma2ZoWjJnbnlSR1dwbVZEUlBTUUt3MTVLSy9HRFFtVVNZdW1LZFN6bXhqSTZUU1pjU2hQbU40dnBKanlPV3hXdmpVN2t6WUMzWVphVndhV2JqRCtRTFZJOFhWUmdPbS83VU1aeXc3bWkiLCJtYWMiOiI2YTllMGJjOTM5N2M4ZmVjYmRlOTJlOTU4MTViODYxOThiMzcxMzcyMjVmMWZkNmE5MDg2YTUyYjlmMDlkOGMxIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, 'App\\Models\\User', 133, '2021-10-29 06:17:22', '2021-10-29 06:17:22'),
(3, 'GET', '[]', 'http://127.0.0.1:8000', NULL, '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '{\"host\":[\"127.0.0.1:8000\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko\\/20100101 Firefox\\/93.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"connection\":[\"keep-alive\"],\"upgrade-insecure-requests\":[\"1\"],\"sec-fetch-dest\":[\"document\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-user\":[\"?1\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, NULL, NULL, '2021-10-29 06:21:13', '2021-10-29 06:21:13'),
(4, 'GET', '[]', 'http://127.0.0.1:8000', 'http://127.0.0.1:8000/user/profile', '[\"en-us\",\"en\",\"bn\",\"la\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"cache-control\":[\"max-age=0\"],\"upgrade-insecure-requests\":[\"1\"],\"dnt\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/95.0.4638.54 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"sec-ch-ua\":[\"\\\"Google Chrome\\\";v=\\\"95\\\", \\\"Chromium\\\";v=\\\"95\\\", \\\";Not A Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/user\\/profile\"],\"accept-encoding\":[\"gzip, deflate, br\"],\"accept-language\":[\"en-US,en;q=0.9,bn;q=0.8,la;q=0.7\"],\"cookie\":[\"remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkFScUhOL1ZyMjR0WXFNVlJPSFgrTkE9PSIsInZhbHVlIjoiUmlmOTREYm9NcGlQMHJNSjd4UkRORnMxK05yTy84WVRVcktYcnp3bnEwd2JCS2x1SDJCT3UyTG1YNTFNYjMzekNNT09OMVorbGJxNjU5U1h2NjRBME1iN3poeHVpdEhLUkpXWjkweExZdTFTRmtNcnRZa0p5T1lqT0xPdlJUdEk5ZDMwNFI4aDNBVERzZ2xqU3JrWDlxU2huRjVQNVpVcFJtQldaL05vK2tLakZIUWJGYnIyRVhZdlBkV1Bjb0kwckpYbFhKRzJrWFNLNGhKa3E0N2xGbkJiU29Mc1N4a1FGZGNlQWhvTHdVVT0iLCJtYWMiOiIyYjhlZmZhMWUxNWUyYzg4M2FmNzc4ZjBhM2I0OWNkZGIzM2NmYWMzNDQwNjQ3MmQ3MmQ1YTIwMDIyN2E4MDNhIn0%3D; XSRF-TOKEN=eyJpdiI6IndPVEIrdWNsOTBPbllxak5mVjFScVE9PSIsInZhbHVlIjoiNEJRajFXNWJWZ2tGVkE1S3B1NkpGd2dZYUlBQkdqTlgxNkoxMkFwYjJIRW9pNjhEeEZhRUtuaFlOWlIwSzcvZXdEWUU3ejNqTHJaSFdCcjI5OU5Eb2FUbEU5b0RqYmhZdkxib0xHREJkSlhYT1hLZGhNd2pWREVBWjZGVFFCY2MiLCJtYWMiOiI1MjZhMDU4NjI4OTMyMDkwYmQ5Mjk5MDA1MTAzNzNlNWI0NTVhNDg4MTMxNTMwYTY3NWJkZGFiZjNjN2Y3YTc1IiwidGFnIjoiIn0%3D; laravel_boilerplate_session=eyJpdiI6IkxUMG8zaHBIMjloQWNMWC84SGk5d2c9PSIsInZhbHVlIjoiZDNZZklwRVpodmsrcVliQkdDT2xyRytMcU9sczlyRHd0MGE4NXh5dk1XUWpkK0tjbm9yVnJoYk5LNVloK3dWSWZvRGJvVzdkOFY0VTY2aGRsUGw2emJicGdpVlhSTjBpeHFCSnNUZXQxaTdrL0VjTzRzVDNpTWpFb0xJWFFoWUMiLCJtYWMiOiJmYjYzN2U3OGY3MGIyNGQ3ZTZiOTljZWMyMDM3OTBiNDdiMDViNTk5Y2IxN2NmNGQxODI1OWVlN2MzYTcwNjRhIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, '2021-10-29 09:17:59', '2021-10-29 09:17:59'),
(5, 'GET', '[]', 'http://127.0.0.1:8000', 'http://127.0.0.1:8000/admin/dashboard', '[\"en-us\",\"en\",\"bn\",\"la\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"cache-control\":[\"max-age=0\"],\"upgrade-insecure-requests\":[\"1\"],\"dnt\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/95.0.4638.54 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"sec-ch-ua\":[\"\\\"Google Chrome\\\";v=\\\"95\\\", \\\"Chromium\\\";v=\\\"95\\\", \\\";Not A Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/admin\\/dashboard\"],\"accept-encoding\":[\"gzip, deflate, br\"],\"accept-language\":[\"en-US,en;q=0.9,bn;q=0.8,la;q=0.7\"],\"cookie\":[\"remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkFScUhOL1ZyMjR0WXFNVlJPSFgrTkE9PSIsInZhbHVlIjoiUmlmOTREYm9NcGlQMHJNSjd4UkRORnMxK05yTy84WVRVcktYcnp3bnEwd2JCS2x1SDJCT3UyTG1YNTFNYjMzekNNT09OMVorbGJxNjU5U1h2NjRBME1iN3poeHVpdEhLUkpXWjkweExZdTFTRmtNcnRZa0p5T1lqT0xPdlJUdEk5ZDMwNFI4aDNBVERzZ2xqU3JrWDlxU2huRjVQNVpVcFJtQldaL05vK2tLakZIUWJGYnIyRVhZdlBkV1Bjb0kwckpYbFhKRzJrWFNLNGhKa3E0N2xGbkJiU29Mc1N4a1FGZGNlQWhvTHdVVT0iLCJtYWMiOiIyYjhlZmZhMWUxNWUyYzg4M2FmNzc4ZjBhM2I0OWNkZGIzM2NmYWMzNDQwNjQ3MmQ3MmQ1YTIwMDIyN2E4MDNhIn0%3D; XSRF-TOKEN=eyJpdiI6InFHb3RmaFRNUXE2US9Od3NaQmZKY3c9PSIsInZhbHVlIjoiTHFXWXFlVyswM3pBN2hLSTVBeU1HdE5aY3JSMDVzVFdUYllHZnlKOHA0RitleTdKV0dJQ21jeS9Pd2lWVVVuVlBaMEtmWEU2dGlVL2YyQXpHU1FTNnUyZENXZ0hReFNjcXdxWkV6NCtYL0xLSi85Mk9zV3c4MURnYVExeGxLQmYiLCJtYWMiOiJjY2U2NGFhYzBjYTdhOWJmODllYjVkMjg1NTNhYjdkMmExMzI0ODQxZDFhYzkyMWRiOWVlZmQxNmZkMjI5NzViIiwidGFnIjoiIn0%3D; laravel_boilerplate_session=eyJpdiI6IkE4ZDNmbUt6ckp4ZjVzUy9BNU8wOGc9PSIsInZhbHVlIjoiTlROWjMzK2hwRjl5bTNDN0RaalR3c3pZUlpnYzhJWFpYWTJBelE4NVpxeGxGZGlzUzk2SStGMTJOVEhnK2ZqUys1VjhhUXBIdzM3clFQNFBHdWJId1FOQ2Ewdnp4TVhRNmdXVmx3QjNNM04wb0RrdGgzdGFMSUVzVTlRT3k4SGEiLCJtYWMiOiJjNjEzYmM1YmZkNDY2NGVhM2U1MTcxOTc1OWVjZDc3YzZmZDI3MzY2MjY2YzNhYjg3ODMzNmRmYzA5ZTMzY2Q0IiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, '2021-10-29 09:25:56', '2021-10-29 09:25:56'),
(6, 'GET', '[]', 'http://127.0.0.1:8000', NULL, '[\"en-us\",\"en\",\"bn\",\"la\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Google Chrome\\\";v=\\\"95\\\", \\\"Chromium\\\";v=\\\"95\\\", \\\";Not A Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/95.0.4638.54 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br\"],\"accept-language\":[\"en-US,en;q=0.9,bn;q=0.8,la;q=0.7\"],\"cookie\":[\"remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkFScUhOL1ZyMjR0WXFNVlJPSFgrTkE9PSIsInZhbHVlIjoiUmlmOTREYm9NcGlQMHJNSjd4UkRORnMxK05yTy84WVRVcktYcnp3bnEwd2JCS2x1SDJCT3UyTG1YNTFNYjMzekNNT09OMVorbGJxNjU5U1h2NjRBME1iN3poeHVpdEhLUkpXWjkweExZdTFTRmtNcnRZa0p5T1lqT0xPdlJUdEk5ZDMwNFI4aDNBVERzZ2xqU3JrWDlxU2huRjVQNVpVcFJtQldaL05vK2tLakZIUWJGYnIyRVhZdlBkV1Bjb0kwckpYbFhKRzJrWFNLNGhKa3E0N2xGbkJiU29Mc1N4a1FGZGNlQWhvTHdVVT0iLCJtYWMiOiIyYjhlZmZhMWUxNWUyYzg4M2FmNzc4ZjBhM2I0OWNkZGIzM2NmYWMzNDQwNjQ3MmQ3MmQ1YTIwMDIyN2E4MDNhIn0%3D; XSRF-TOKEN=eyJpdiI6Ii8rY0RsYjAzQkh4Uk5ZK0M4RmY2NkE9PSIsInZhbHVlIjoiSE9HNkNIbks0Nnd0M1V0bW9WZkM2VWkyTEhVd0lFdlFIMkU3c2tqZjdTNEJpSE1SQjNTQVNKcFRUUjFDMHorazZ1M1NJZWVKTjlWT0xidFV3RkYyQk82ek1qd2FINHZLTUtLenl3VDhIMTFEVEtqRnhkWHRISnVVSGtJUU5PeDEiLCJtYWMiOiI1MjBhNzQ1MjViZmYzNTRhOGVhZTY5NzkwMjE5NTk1M2RhMWNkOWU2NTk1Y2QzNGIzYTNmMzZiZGY3Yjg2ZTlhIiwidGFnIjoiIn0%3D; laravel_boilerplate_session=eyJpdiI6ImJrRUY0ekVTRU5mbFgzWDN4NG8xVUE9PSIsInZhbHVlIjoiLzhUOHluTDVvT0lZZXRLV3ZNcmtFS1ZSR3B0dmdJYlFld0dTZ0pYQWZwdlVOMytmOFFLaE4yVFBxc1UvVDAvanMvaXQyVEdTQ0psQ1FZQXllWkROOXJpaHJRb2NkTlFWUTJ2N09uRlh1QWU5Z1UxWEszc0d1bFlPdlhmbTZOYWQiLCJtYWMiOiIxOTg0NjhjMWFiNmY0YTQzMDI0OGE2YTQwMWE2YTI1OGUzYzEwOTA2NWRkYzg2YWRiOTViMTEzMTk0YTliYzEzIiwidGFnIjoiIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, 'App\\Models\\User', 133, '2021-10-29 09:26:47', '2021-10-29 09:26:47'),
(7, 'GET', '[]', 'http://127.0.0.1:8000', NULL, '[\"en-us\",\"en\",\"bn\",\"la\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Google Chrome\\\";v=\\\"95\\\", \\\"Chromium\\\";v=\\\"95\\\", \\\";Not A Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/95.0.4638.69 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br\"],\"accept-language\":[\"en-US,en;q=0.9,bn;q=0.8,la;q=0.7\"],\"cookie\":[\"remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkFScUhOL1ZyMjR0WXFNVlJPSFgrTkE9PSIsInZhbHVlIjoiUmlmOTREYm9NcGlQMHJNSjd4UkRORnMxK05yTy84WVRVcktYcnp3bnEwd2JCS2x1SDJCT3UyTG1YNTFNYjMzekNNT09OMVorbGJxNjU5U1h2NjRBME1iN3poeHVpdEhLUkpXWjkweExZdTFTRmtNcnRZa0p5T1lqT0xPdlJUdEk5ZDMwNFI4aDNBVERzZ2xqU3JrWDlxU2huRjVQNVpVcFJtQldaL05vK2tLakZIUWJGYnIyRVhZdlBkV1Bjb0kwckpYbFhKRzJrWFNLNGhKa3E0N2xGbkJiU29Mc1N4a1FGZGNlQWhvTHdVVT0iLCJtYWMiOiIyYjhlZmZhMWUxNWUyYzg4M2FmNzc4ZjBhM2I0OWNkZGIzM2NmYWMzNDQwNjQ3MmQ3MmQ1YTIwMDIyN2E4MDNhIn0%3D\"]}', 'WebKit', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, '2021-10-30 01:59:28', '2021-10-30 01:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `socialurls`
--

CREATE TABLE `socialurls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fb_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `instagram_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `youtube_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `twitter_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `linkedin_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialurls`
--

INSERT INTO `socialurls` (`id`, `fb_url`, `instagram_url`, `youtube_url`, `twitter_url`, `linkedin_url`, `created_at`, `updated_at`) VALUES
(5, '#', '#', '#', '#', '#', '2021-10-28 08:42:46', '2021-10-28 08:42:46');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `theme_settings`
--

CREATE TABLE `theme_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'light-layout',
  `nav` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'expanded',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `theme_settings`
--

INSERT INTO `theme_settings` (`id`, `user_id`, `theme`, `nav`, `created_at`, `updated_at`) VALUES
(1, 133, 'light-layout', 'expanded', '2021-10-29 05:17:08', '2021-10-30 02:57:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(133, 'Admin', 'admin@admin.com', '2021-10-29 05:17:08', '$2y$10$iA66F/GNDXsIk51KBMYV3u5fkVZEc2u5yyWNyPl5QsbsaEJDfUgGG', NULL, NULL, NULL, NULL, 'profile-photos/Z2EEyChDNTKvngaYYr1wBHroBDYJJ1VFhAR87Ki0.png', '2021-10-29 05:17:08', '2021-10-29 10:08:03'),
(134, 'Ahmed', 'a@a.com', NULL, '$2y$10$G.0DIEi0YVM8AlhUYXV5UuddA8t6kj/Lzi4E7Ixkq5VTTjI/8AvFy', NULL, NULL, NULL, NULL, NULL, '2021-10-29 05:17:58', '2021-10-29 05:17:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `color_settings`
--
ALTER TABLE `color_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shetabit_visits`
--
ALTER TABLE `shetabit_visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shetabit_visits_visitable_type_visitable_id_index` (`visitable_type`,`visitable_id`),
  ADD KEY `shetabit_visits_visitor_type_visitor_id_index` (`visitor_type`,`visitor_id`);

--
-- Indexes for table `socialurls`
--
ALTER TABLE `socialurls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`);

--
-- Indexes for table `theme_settings`
--
ALTER TABLE `theme_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `color_settings`
--
ALTER TABLE `color_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shetabit_visits`
--
ALTER TABLE `shetabit_visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `socialurls`
--
ALTER TABLE `socialurls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `theme_settings`
--
ALTER TABLE `theme_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
