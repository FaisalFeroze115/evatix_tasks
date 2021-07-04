-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2021 at 11:24 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evatix_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1164dd9366734ce44bf42db4b4457a19b2b87fe95c87dcaf1beb8958601debc4e84ad097939faa50', 8, 1, 'authToken', '[]', 0, '2021-07-03 11:33:41', '2021-07-03 11:33:41', '2022-07-03 17:33:41'),
('177e74b4552677860c7390f8e2c00ea54d906c12dd1e3c6a4816a595730cd795d00add6fe217be4c', 10, 1, 'authToken', '[]', 0, '2021-07-03 13:06:25', '2021-07-03 13:06:25', '2022-07-03 19:06:25'),
('24c175b9287208be8094978927a392d24ed50e4460190ff90b594b4e7e69dfc4e2a463635332bd00', 1, 1, 'authToken', '[]', 0, '2021-07-03 11:36:21', '2021-07-03 11:36:21', '2022-07-03 17:36:21'),
('26ebc62b9845480c2e4303003bc31f67e305d540bbc02b61365f2c11fc17cb0538078df76c6631d0', 4, 1, 'authToken', '[]', 0, '2021-07-03 06:54:18', '2021-07-03 06:54:18', '2022-07-03 12:54:18'),
('35bb1440377fca8b8d50954fa9a0271c142f853f1ed8b73f4c6828c42fa9c7ae4f652ed842da2538', 11, 1, 'authToken', '[]', 0, '2021-07-03 13:24:31', '2021-07-03 13:24:31', '2022-07-03 19:24:31'),
('3a4a955095f2865d0d81ac0832d1d3f6ae6fba10645524ed3705ce9da6eea0a77142fe7719fa52e7', 3, 1, 'authToken', '[]', 0, '2021-07-03 06:53:24', '2021-07-03 06:53:24', '2022-07-03 12:53:24'),
('3d2cd6d68826ba7143d6840c5a437bea096f3e8473ab1fe4d5fbf3d972e03c7619aa7bbe64829521', 10, 1, 'authToken', '[]', 0, '2021-07-03 13:07:05', '2021-07-03 13:07:05', '2022-07-03 19:07:05'),
('52c386a5568db8c0384b7c42dbf9343da5bf77f0073e69ac380d47a80970f43cd2814f010b5aeb96', 4, 1, 'authToken', '[]', 0, '2021-07-03 10:43:17', '2021-07-03 10:43:17', '2022-07-03 16:43:17'),
('576694e622e7ff8a3723c056cfa99b309a9a83824b1b6fc2323a59ddbbbafd5cac42929ab56ecf1c', 2, 1, 'authToken', '[]', 0, '2021-07-03 04:44:14', '2021-07-03 04:44:14', '2022-07-03 10:44:14'),
('576d9e5c7ff62a3a643c99830f4b0f33029689c807fa842cc77fc839f5599772f765ac687728b80d', 5, 1, 'authToken', '[]', 0, '2021-07-03 06:57:10', '2021-07-03 06:57:10', '2022-07-03 12:57:10'),
('6680f82df86dcee2c9c06f769874570370a4b9e8b7fec6bd259417b263e3a3a8d9a0167c102ef612', 1, 1, 'authToken', '[]', 0, '2021-07-03 04:40:49', '2021-07-03 04:40:49', '2022-07-03 10:40:49'),
('6ebb46ed7cc052c0649fd55c5f36f54a705c8db5f6b872679b7f293e5cfa690f3748edb910eebb7d', 10, 1, 'authToken', '[]', 0, '2021-07-03 13:06:55', '2021-07-03 13:06:55', '2022-07-03 19:06:55'),
('750278bb0291a48d170b1d8c196fd9f78140751cbcda934d30da33850ff37a81dd3cf9af7d03afd7', 8, 1, 'authToken', '[]', 0, '2021-07-03 11:35:10', '2021-07-03 11:35:10', '2022-07-03 17:35:10'),
('799227000aa7fc81887f2e158dc370f7c4611f5f3e8080b8e067259adbddd133e2edaa8a815fd25e', 11, 1, 'authToken', '[]', 0, '2021-07-03 13:24:30', '2021-07-03 13:24:30', '2022-07-03 19:24:30'),
('7a4cad585b37fc5c6a49c5791beee2026ae1b6431f66c7d4f9e809005f826aa110285df927c1a835', 4, 1, 'authToken', '[]', 0, '2021-07-03 10:43:01', '2021-07-03 10:43:01', '2022-07-03 16:43:01'),
('7a8561d8e0b1ae1cf28968e97659b5fa3791da12eef5fc20122b72470bfe5cf4a84486901e453134', 4, 1, 'authToken', '[]', 0, '2021-07-03 07:43:58', '2021-07-03 07:43:58', '2022-07-03 13:43:58'),
('85fc145226059efaa375089d18a40dd91aa11d805aa3bf6c8e5af893b610724c65d17663bf223280', 4, 1, 'authToken', '[]', 0, '2021-07-03 10:15:22', '2021-07-03 10:15:22', '2022-07-03 16:15:22'),
('86773701074534afbb534c9394f78e8775114b69af179cacafab8ab6e029f3e2620c4ff1485de308', 1, 1, 'authToken', '[]', 0, '2021-07-03 04:29:49', '2021-07-03 04:29:49', '2022-07-03 10:29:49'),
('a15fa0a00c8c9a14427c1f787f50473c8cac6474e880093cc5166d00fa14744f3f1d7cdb5b74f55c', 3, 1, 'authToken', '[]', 0, '2021-07-03 11:31:14', '2021-07-03 11:31:14', '2022-07-03 17:31:14'),
('aaabe9830b439431e040034f7e823cc68a84cb537ad4877945b04d0c2b5cdb5433212f6ca1819e78', 8, 1, 'authToken', '[]', 0, '2021-07-03 11:35:45', '2021-07-03 11:35:45', '2022-07-03 17:35:45'),
('cb04fe42047d6e9f2ef3c587fc3f44588718e341b61177b97fe92a1de7dbd288f4cee7817e727bde', 3, 1, 'authToken', '[]', 0, '2021-07-03 11:31:42', '2021-07-03 11:31:42', '2022-07-03 17:31:42'),
('cdad44d5818817e7f2c38a3a7bbf401c89d8c9e00e7fcf101b809a3f482654c29a18092580335296', 4, 1, 'authToken', '[]', 0, '2021-07-03 09:08:57', '2021-07-03 09:08:57', '2022-07-03 15:08:57'),
('d1c0425fa8e95f1e65b6b5939371526d5830a4cc528d79df6072f305d6adb12d35398ba1c69e8739', 8, 1, 'authToken', '[]', 0, '2021-07-03 11:35:36', '2021-07-03 11:35:36', '2022-07-03 17:35:36'),
('d350203c2e665275b79b566d18e53c43e59f6c296143f67631313dc3263f9b6a776b3ccaed7f3484', 10, 1, 'authToken', '[]', 0, '2021-07-03 13:08:00', '2021-07-03 13:08:00', '2022-07-03 19:08:00'),
('e2d7c7449340a0ac749243edb5d7e834602a3e3e580a025ca9515d01a759e3b6f722b0c55fe571fa', 10, 1, 'authToken', '[]', 0, '2021-07-03 13:06:25', '2021-07-03 13:06:25', '2022-07-03 19:06:25'),
('e9edf393936b0dc9324422a4aad8f79a3618aabe53b6259e9c266ed5b3be93df002e4de3a618b1bf', 4, 1, 'authToken', '[]', 0, '2021-07-03 08:00:38', '2021-07-03 08:00:38', '2022-07-03 14:00:38'),
('f000e380e5996b185f418afc59bbc3ab01ae32379fa6154f0f5d75a419a4f6fdcde955465a7be541', 1, 1, 'authToken', '[]', 0, '2021-07-03 04:34:36', '2021-07-03 04:34:36', '2022-07-03 10:34:36'),
('f5e492d5c07c90579d22066b2c6caa0f7750f24145009c86948824f5d10dd065cd7633614d909456', 1, 1, 'authToken', '[]', 0, '2021-07-03 10:41:08', '2021-07-03 10:41:08', '2022-07-03 16:41:08'),
('f62d0ca192686f838eccbacd937d6ec57f8c2288a9c08700f75de455a4996a2f93ce9dd2e84441d9', 1, 1, 'authToken', '[]', 0, '2021-07-03 10:41:33', '2021-07-03 10:41:33', '2022-07-03 16:41:33');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '4kJLuoZ1GO04fmCw2EfKvz03ae1iqkxeTgEnDTGp', NULL, 'http://localhost', 1, 0, 0, '2021-07-03 03:54:53', '2021-07-03 03:54:53'),
(2, NULL, 'Laravel Password Grant Client', 'pLu8yMztR6SinR1LuzGIQK8KkeRkTJK6e8xWACKq', 'users', 'http://localhost', 0, 1, 0, '2021-07-03 03:54:53', '2021-07-03 03:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-07-03 03:54:53', '2021-07-03 03:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `is_third_party_login` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `full_name`, `profession`, `dob`, `is_third_party_login`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Faisal', 'ff@gmail.com', NULL, '$2y$10$v7.e2Y8ZW8L6W49zqIiRFem/ED7JpQQqkyepjWbO9Syvdusy.cDr.', 'Faisal Feroze Tipu', 'Developer', '2021-02-16', NULL, NULL, '2021-07-03 04:29:34', '2021-07-03 10:41:33'),
(5, 'Jaber', 'jaber@gmail.com', NULL, '$2y$10$vfiBOTA/2zBBGxZs5yrNQuGlgxcx1LCLrovwXcBcVOwc.x0HIeQpC', NULL, NULL, NULL, 0, NULL, '2021-07-03 06:57:02', '2021-07-03 06:57:02'),
(10, 'Faisal', 'ff.tipu@gmail.com', NULL, NULL, 'Faisal Feroze Tipu', NULL, NULL, NULL, NULL, '2021-07-03 13:06:22', '2021-07-03 13:06:55'),
(11, 'Faisal', 'faisal.cokreates@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-03 13:24:29', '2021-07-03 13:24:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
