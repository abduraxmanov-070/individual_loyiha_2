-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 16 2023 г., 07:07
-- Версия сервера: 10.4.21-MariaDB
-- Версия PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mmtp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `farmers`
--

CREATE TABLE `farmers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leader` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `farmers`
--

INSERT INTO `farmers` (`id`, `name`, `inn`, `bank_account`, `bank_code`, `leader`, `created_at`, `updated_at`) VALUES
(1, 'Парвоз Отахон', '205445441', '20208000804381706001', '00572', 'Отахон', '2023-01-11 00:14:50', '2023-01-11 00:14:50'),
(2, 'Сабрина Кумуш', '205445441', '20208000804381706001', '00572', 'Кумуш', '2023-01-11 23:10:28', '2023-01-11 23:10:28');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_08_072235_create_tractors_table', 1),
(6, '2023_01_08_073333_create_workers_table', 1),
(7, '2023_01_08_075717_create_types_table', 1),
(8, '2023_01_08_102305_create_farmers_table', 1),
(11, '2023_01_08_104745_create_services_table', 2),
(12, '2023_01_08_114009_create_reports_table', 3),
(15, '2023_01_12_071921_create_offices_table', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `offices`
--

CREATE TABLE `offices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leader` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `offices`
--

INSERT INTO `offices` (`id`, `name`, `inn`, `bank_account`, `bank_code`, `leader`, `accountant`, `created_at`, `updated_at`) VALUES
(1, '\"Улугбек-Обод mmtp\" МЧЖ', '000000001', '00000000000000000000', '00000', 'Бунёд', 'Дилмурод', '2023-01-12 23:44:37', '2023-03-03 17:27:28');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `worker_id` int(11) NOT NULL,
  `tractor_id` int(11) NOT NULL,
  `farmer_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `weight` double(11,2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `reports`
--

INSERT INTO `reports` (`id`, `worker_id`, `tractor_id`, `farmer_id`, `service_id`, `weight`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 1, 1, 116.75, '2023-01-11', '2023-01-13', '2023-01-11 06:57:07', '2023-01-11 06:57:07'),
(3, 2, 1, 1, 1, 10.00, '2023-01-11', '2023-01-11', '2023-01-11 11:38:53', '2023-01-11 11:38:53'),
(4, 2, 2, 1, 2, 10.00, '2023-01-14', '2023-01-15', '2023-01-11 11:39:14', '2023-01-11 11:39:14'),
(5, 1, 1, 2, 1, 12.00, '2023-01-12', '2023-01-15', '2023-01-11 23:11:15', '2023-01-11 23:11:15'),
(6, 2, 2, 2, 2, 10.00, '2023-01-16', '2023-01-16', '2023-01-11 23:11:37', '2023-01-11 23:11:37'),
(7, 1, 1, 1, 3, 10.00, '2023-01-15', '2023-01-15', '2023-01-14 11:44:04', '2023-01-14 11:44:04'),
(8, 1, 2, 1, 4, 10.00, '2023-01-19', '2023-01-20', '2023-01-14 11:44:35', '2023-01-14 11:44:35'),
(9, 2, 1, 1, 3, 10.00, '2023-01-21', '2023-01-21', '2023-01-14 12:02:21', '2023-01-14 12:02:21'),
(10, 2, 2, 1, 4, 10.00, '2023-01-24', '2023-01-25', '2023-01-14 12:02:40', '2023-01-14 12:02:40'),
(11, 1, 1, 1, 6, 5.20, '2023-03-04', '2023-03-04', '2023-03-04 09:09:42', '2023-03-04 09:09:42'),
(12, 1, 1, 1, 1, 16.00, '2023-01-11', '2023-01-13', '2023-01-11 06:57:07', '2023-01-11 06:57:07'),
(13, 2, 1, 1, 1, 10.00, '2023-01-11', '2023-01-11', '2023-01-11 11:38:53', '2023-01-11 11:38:53'),
(14, 2, 2, 1, 2, 10.00, '2023-01-14', '2023-01-15', '2023-01-11 11:39:14', '2023-01-11 11:39:14'),
(15, 1, 1, 2, 1, 12.00, '2023-01-12', '2023-01-15', '2023-01-11 23:11:15', '2023-01-11 23:11:15'),
(16, 2, 2, 2, 2, 10.00, '2023-01-16', '2023-01-16', '2023-01-11 23:11:37', '2023-01-11 23:11:37'),
(17, 1, 2, 1, 4, 10.00, '2023-01-19', '2023-01-20', '2023-01-14 11:44:35', '2023-01-14 11:44:35'),
(18, 2, 2, 1, 4, 10.00, '2023-01-24', '2023-01-25', '2023-01-14 12:02:40', '2023-01-14 12:02:40'),
(19, 1, 1, 1, 1, 16.00, '2023-01-11', '2023-01-13', '2023-01-11 06:57:07', '2023-01-11 06:57:07'),
(20, 2, 1, 1, 1, 10.00, '2023-01-11', '2023-01-11', '2023-01-11 11:38:53', '2023-01-11 11:38:53');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tractor_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `price_worker` double(11,2) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `name`, `tractor_id`, `type_id`, `count`, `price`, `price_worker`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Суришдан кейин огир мола', 1, 2, 8, 26991, 20330.30, '2023-01-11', '2023-01-11 00:41:19', '2023-01-11 00:41:52'),
(2, 'Суришдан кейин огир мола', 2, 1, 6, 27028, 20330.00, '2023-01-11', '2023-01-11 00:41:20', '2023-01-11 00:41:20'),
(3, 'Суришдан кейин огир мола', 1, 1, 8, 450000, 35000.00, '2023-01-15', '2023-01-13 15:58:59', '2023-02-15 07:53:29'),
(4, 'Суришдан кейин огир мола', 2, 1, 6, 400000, 30000.00, '2023-01-15', '2023-01-13 15:59:00', '2023-01-13 15:59:00'),
(6, 'Суришдан кейин огир мола', 1, 1, 0, 100000, 0.00, '2023-03-04', '2023-03-04 09:05:00', '2023-03-04 09:05:00');

-- --------------------------------------------------------

--
-- Структура таблицы `tractors`
--

CREATE TABLE `tractors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tractors`
--

INSERT INTO `tractors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'МТЗ-80', '2023-01-10 14:32:15', '2023-01-11 00:09:01'),
(2, 'T-28X4', '2023-01-10 14:32:29', '2023-01-10 14:32:29');

-- --------------------------------------------------------

--
-- Структура таблицы `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `types`
--

INSERT INTO `types` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'га', '2023-01-10 14:31:52', '2023-01-10 14:31:52'),
(2, 'соат', '2023-01-10 14:31:58', '2023-01-10 14:31:58');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Админ', 'admin@gmail.com', NULL, '$2y$10$idpQ4dgDYrJ8XinXuNWItubljcn/mVssf27esznkOOQKrHDIh3SPy', NULL, '2023-01-10 14:30:57', '2023-01-10 14:30:57');

-- --------------------------------------------------------

--
-- Структура таблицы `workers`
--

CREATE TABLE `workers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `workers`
--

INSERT INTO `workers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Хасанов Хамро', '2023-01-11 00:18:25', '2023-01-11 00:18:25'),
(2, 'Хасанов Иномжон', '2023-01-11 00:18:37', '2023-01-11 00:18:37');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `farmers`
--
ALTER TABLE `farmers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tractors`
--
ALTER TABLE `tractors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `farmers`
--
ALTER TABLE `farmers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `offices`
--
ALTER TABLE `offices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `tractors`
--
ALTER TABLE `tractors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `workers`
--
ALTER TABLE `workers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
