-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 14 Şub 2022, 19:04:27
-- Sunucu sürümü: 10.4.22-MariaDB
-- PHP Sürümü: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `mytodoapp`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_02_12_192912_create_tasks_table', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('user@gmail.com', '$2y$10$CpgputskFoTRFInRHHmN5OZYkjB.NEBzWK0nVRKckQDYS4ESvHL4i', '2022-02-13 16:17:53');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `body`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'aa', 'aaa', 1, 0, '2022-02-13 15:24:39', '2022-02-13 15:24:39'),
(2, 'aa', 'aaa', 1, 0, '2022-02-13 15:24:40', '2022-02-13 15:24:40'),
(3, 'aa', 'aaa', 1, 0, '2022-02-13 15:24:40', '2022-02-13 15:24:40'),
(16, 'aaa', 'aaaa', 3, 0, '2022-02-13 15:54:23', '2022-02-13 15:54:23'),
(17, 'aaa', 'aaaa', 3, 0, '2022-02-13 15:54:24', '2022-02-13 15:54:24'),
(18, 'aaa', 'aaaa', 3, 0, '2022-02-13 15:54:24', '2022-02-13 15:54:24'),
(19, 'aaa', 'aaaa', 3, 0, '2022-02-13 15:54:25', '2022-02-13 15:54:25'),
(20, 'wqddqw', 'dqwdwq', 1, 1, '2022-02-13 15:55:05', '2022-02-13 15:55:05'),
(24, 'xx', 'aaaxxx', 4, 0, '2022-02-13 15:57:07', '2022-02-13 15:57:07'),
(25, 'ooo', 'ppp', 3, 0, '2022-02-13 15:58:58', '2022-02-13 15:58:58'),
(26, 'eewf', 'fewwef', 3, 0, '2022-02-13 16:02:32', '2022-02-13 16:02:32'),
(27, 'ddd', 'fff', 4, 0, '2022-02-13 16:11:58', '2022-02-13 16:11:58'),
(28, 'ttta', 'tttb', 6, 0, '2022-02-13 16:52:01', '2022-02-13 16:52:06'),
(29, 'llk', 'asdads', 6, 0, '2022-02-13 17:14:52', '2022-02-13 17:14:52'),
(30, 'aaa', 'bbb', 1, 0, '2022-02-13 19:52:53', '2022-02-13 19:52:53'),
(31, 'aaaa', 'cccc', 1, 0, '2022-02-13 19:53:01', '2022-02-13 19:53:01'),
(32, 'rrr', 'yyyy', 1, 0, '2022-02-13 19:53:21', '2022-02-13 19:53:21'),
(33, 'oooo', 'pppp', 1, 0, '2022-02-13 20:02:15', '2022-02-13 20:02:15'),
(34, 'aa', 'ccc', 1, 0, '2022-02-13 21:06:33', '2022-02-13 21:06:33'),
(35, 'ewqfew', 'fwewfefwe', 1, 0, '2022-02-14 10:09:35', '2022-02-14 10:09:35'),
(36, 'ııop', 'rrrt', 1, 0, '2022-02-14 10:37:50', '2022-02-14 10:37:50'),
(37, 'aaa', 'bbb', 6, 1, '2022-02-14 11:48:26', '2022-02-14 11:48:26');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ömer Şaşkın', 'user@gmail.com', NULL, 1, '$2y$10$vFnpch4CALe3hqv.s2zL3u4ofKu9/3OTllnBNMrTBWN9OK.EB.Tuq', NULL, '2022-02-13 15:22:14', '2022-02-13 15:22:14'),
(3, 'Kullanıcı', 'b@gmail.com', NULL, NULL, '$2y$10$LlijjZa5VGhEE4WdsvpfX.gK1GrD35vmTBKVK/M9vTu0WXFlWK.ra', NULL, '2022-02-13 15:43:13', '2022-02-13 15:43:13'),
(4, 'c', 'c@gmail.com', NULL, NULL, '$2y$10$/ANpw/Xn7kQtJzONS1EDJuLESYDm56a48hqGoAsaSyYd36.C5ZOHS', NULL, '2022-02-13 15:56:41', '2022-02-13 15:56:41'),
(5, 'Ömer Şaşkın', 'd@gmail.com', NULL, NULL, '$2y$10$wJSGpKPApWR8G99I8ClyTOCvh5NjILrJsxJMB04BcZNX6FrzPZjb2', NULL, '2022-02-13 16:42:09', '2022-02-13 16:42:09'),
(6, 'r', 'r@gmail.com', NULL, NULL, '$2y$10$4BafDtdx48KTGfg7Kql9suhz6twQKaFnAVy5Tdap5K8ypfanc7s0K', NULL, '2022-02-13 16:44:13', '2022-02-13 16:44:13'),
(7, 'Ömer Şaşkın', 'h@gmail.com', NULL, NULL, '$2y$10$SOLYQGe63hR66e6vB7J.RerhroDzVQkLFXQ1wr1GgPKPxx5eKqOm.', NULL, '2022-02-13 16:45:27', '2022-02-13 16:45:27'),
(8, 'Ömer Şaşkın', 'k@gmail.com', NULL, NULL, '$2y$10$FharkCNhubXVpR38D1Tr9ueTJBHTgWa7oMk3EAYuAXmkvAQ6eP4OK', NULL, '2022-02-13 16:49:33', '2022-02-13 16:49:33'),
(9, 'Ömer Şaşkın', 'j@gmail.com', NULL, NULL, '$2y$10$VNYdDJZp6B18/LQEJgdICO5g2HzU2ofQYxpkIRzS6gw0KKcCkmCp.', NULL, '2022-02-13 17:05:46', '2022-02-13 17:05:46'),
(10, 'Ömer Şaşkın', 'o@gmail.com', NULL, NULL, '$2y$10$5EDmenHUIE9BDi8i8LEpauXeLjf/m34IsfWanqo1T0up3dDTFfp.C', NULL, '2022-02-13 17:11:03', '2022-02-13 17:11:03'),
(11, 'der', 'per@gmail.com', NULL, NULL, '$2y$10$JQCugURE65hqImAe5sZ6TurLVczPXikTROWO4EebQylRKeeN6soYm', NULL, '2022-02-13 17:13:28', '2022-02-13 17:13:28');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
