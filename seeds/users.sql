-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Мар 30 2020 г., 13:30
-- Версия сервера: 5.7.29-0ubuntu0.18.04.1
-- Версия PHP: 7.2.24-0ubuntu0.18.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `users`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) AUTO_INCREMENT primary key NOT NULL ,
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `role` varchar(10) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `created`, `updated`) VALUES
(1, 'oles', 'oles1103@gmail.com', 'caaa94a51cfd9430ba963237bd6b015ee3292b3b3a00033eb523b9eb133398e38edb1fba534319079f18d11e02f64a9ca1ffc89f09a9e704cd111cb735daac05593cfad73931200b24fcbd1e468ca4104776f7e50f8aad0cb8d88ebe8267584f', 'admin', '2020-03-30 00:00:00', '2020-03-30 00:00:00'),
(2, 'sergey', 'sergey@gmail.com', 'caaa94a51cfd9430ba963237bd6b015ee3292b3b3a00033eb523b9eb133398e38edb1fba534319079f18d11e02f64a9ca1ffc89f09a9e704cd111cb735daac05593cfad73931200b24fcbd1e468ca4104776f7e50f8aad0cb8d88ebe8267584f', 'user', '2020-03-30 00:00:00', '2020-03-30 00:00:00'),
(3, 'vany', 'vany@gmail.com', 'caaa94a51cfd9430ba963237bd6b015ee3292b3b3a00033eb523b9eb133398e38edb1fba534319079f18d11e02f64a9ca1ffc89f09a9e704cd111cb735daac05593cfad73931200b24fcbd1e468ca4104776f7e50f8aad0cb8d88ebe8267584f', 'user', '2020-03-30 00:00:00', '2020-03-30 00:00:00'),
(4, 'dima', 'dima@gmail.com', 'caaa94a51cfd9430ba963237bd6b015ee3292b3b3a00033eb523b9eb133398e38edb1fba534319079f18d11e02f64a9ca1ffc89f09a9e704cd111cb735daac05593cfad73931200b24fcbd1e468ca4104776f7e50f8aad0cb8d88ebe8267584f', 'user', '2020-03-30 00:00:00', '2020-03-30 00:00:00'),
(5, 'alex', 'alex@gmail.com', 'caaa94a51cfd9430ba963237bd6b015ee3292b3b3a00033eb523b9eb133398e38edb1fba534319079f18d11e02f64a9ca1ffc89f09a9e704cd111cb735daac05593cfad73931200b24fcbd1e468ca4104776f7e50f8aad0cb8d88ebe8267584f', 'user', '2020-03-30 00:00:00', '2020-03-30 00:00:00'),
(6, 'sasha', 'sasha@gmail.com', 'caaa94a51cfd9430ba963237bd6b015ee3292b3b3a00033eb523b9eb133398e38edb1fba534319079f18d11e02f64a9ca1ffc89f09a9e704cd111cb735daac05593cfad73931200b24fcbd1e468ca4104776f7e50f8aad0cb8d88ebe8267584f', 'user', '2020-03-30 00:00:00', '2020-03-30 00:00:00'),
(7, 'oleg', 'oleg@gmail.com', 'caaa94a51cfd9430ba963237bd6b015ee3292b3b3a00033eb523b9eb133398e38edb1fba534319079f18d11e02f64a9ca1ffc89f09a9e704cd111cb735daac05593cfad73931200b24fcbd1e468ca4104776f7e50f8aad0cb8d88ebe8267584f', 'user', '2020-03-30 00:00:00', '2020-03-30 00:00:00'),
(8, 'tolia', 'tolia@gmail.com', 'caaa94a51cfd9430ba963237bd6b015ee3292b3b3a00033eb523b9eb133398e38edb1fba534319079f18d11e02f64a9ca1ffc89f09a9e704cd111cb735daac05593cfad73931200b24fcbd1e468ca4104776f7e50f8aad0cb8d88ebe8267584f', 'user', '2020-03-30 00:00:00', '2020-03-30 00:00:00'),
(9, 'lesha', 'lesha@gmail.com', '016cbe860f20633d47299117cb4add24986262a50a5b6a874a2e9e070190d1c41eb2d982759ff7bdc09a26e38ac89937337e88cc51c43bf54f94017ad63b9fc3cf0cb4ca804df46b95addbf30723e6e0c9792b3f81e45f3a53929ef2d6a970de', 'user', '2020-03-30 00:00:00', '2020-03-30 00:00:00'),
(10, 'maks', 'maks@gmail.com', '016cbe860f20633d47299117cb4add24986262a50a5b6a874a2e9e070190d1c41eb2d982759ff7bdc09a26e38ac89937337e88cc51c43bf54f94017ad63b9fc3cf0cb4ca804df46b95addbf30723e6e0c9792b3f81e45f3a53929ef2d6a970de', 'user', '2020-03-30 00:00:00', '2020-03-30 00:00:00'),
(11, 'yura', 'yura@gmail.com', '016cbe860f20633d47299117cb4add24986262a50a5b6a874a2e9e070190d1c41eb2d982759ff7bdc09a26e38ac89937337e88cc51c43bf54f94017ad63b9fc3cf0cb4ca804df46b95addbf30723e6e0c9792b3f81e45f3a53929ef2d6a970de', 'user', '2020-03-30 00:00:00', '2020-03-30 00:00:00'),
(12, 'dasha', 'dasha@gmail.com', '016cbe860f20633d47299117cb4add24986262a50a5b6a874a2e9e070190d1c41eb2d982759ff7bdc09a26e38ac89937337e88cc51c43bf54f94017ad63b9fc3cf0cb4ca804df46b95addbf30723e6e0c9792b3f81e45f3a53929ef2d6a970de', 'user', '2020-03-30 00:00:00', '2020-03-30 00:00:00'),
(13, 'nastia', 'nastia@gmail.com', '016cbe860f20633d47299117cb4add24986262a50a5b6a874a2e9e070190d1c41eb2d982759ff7bdc09a26e38ac89937337e88cc51c43bf54f94017ad63b9fc3cf0cb4ca804df46b95addbf30723e6e0c9792b3f81e45f3a53929ef2d6a970de', 'user', '2020-03-30 00:00:00', '2020-03-30 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
