-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 26 2021 г., 20:33
-- Версия сервера: 10.3.16-MariaDB
-- Версия PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `serverlogs`
--

-- --------------------------------------------------------

--
-- Структура таблицы `adminlog`
--

CREATE TABLE `adminlog` (
  `time` datetime NOT NULL,
  `admin` text NOT NULL,
  `action` text NOT NULL,
  `player` text NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `adminlog`
--

INSERT INTO `adminlog` (`time`, `admin`, `action`, `player`, `idkey`) VALUES
('2021-04-16 20:33:25', 'Ivan_Chekhouv', 'vehCreate(g63)', '', 1),
('2021-04-16 20:36:44', 'Ivan_Chekhouv', 'delacar', '', 2),
('2021-04-16 20:37:19', 'Ivan_Chekhouv', 'vehCreate(maverick)', '', 3),
('2021-04-16 20:38:40', 'Ivan_Chekhouv', 'delacar', '', 4),
('2021-04-16 20:39:01', 'Ivan_Chekhouv', 'vehCreate(panamera17turbo)', '', 5),
('2021-04-16 20:53:31', 'Ivan_Chekhouv', 'delacar', '', 6),
('2021-04-26 21:13:57', 'Ivan_Chekhouv', 'vehCreate(pfister811)', '', 7),
('2021-04-26 21:15:59', 'Ivan_Chekhouv', 'setFracLeader(7)', 'Ivan_Chekhouv', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `arrestlog`
--

CREATE TABLE `arrestlog` (
  `time` datetime NOT NULL,
  `player` text NOT NULL,
  `target` text NOT NULL,
  `reason` text NOT NULL,
  `stars` text NOT NULL,
  `pnick` text NOT NULL,
  `tnick` text NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `banlog`
--

CREATE TABLE `banlog` (
  `time` datetime NOT NULL,
  `admin` text NOT NULL,
  `player` text NOT NULL,
  `until` datetime NOT NULL,
  `reason` text NOT NULL,
  `ishard` text NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `connlog`
--

CREATE TABLE `connlog` (
  `uuid` text NOT NULL,
  `in` datetime NOT NULL,
  `out` datetime DEFAULT NULL,
  `sclub` text NOT NULL,
  `hwid` text NOT NULL,
  `ip` text NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `connlog`
--

INSERT INTO `connlog` (`uuid`, `in`, `out`, `sclub`, `hwid`, `ip`, `idkey`) VALUES
('333333', '2021-04-16 20:33:11', NULL, 'Quartzz720', 'F51051D8E602035883C23C40ADC4C55088E60298872EDD086548109C968AAB007B2C4A0C59628D0854E08B684F06781056FC9184E712AB60B07A3A1461564B40', '127.0.0.1', 3350),
('333333', '2021-04-26 16:37:28', NULL, 'Quartzz720', 'D8903A045BEEA8E8D3C45340A99A85B0752A905CB18611083EF018C8DD22A300BD562E84B0EEADB8E3128F408F1687501B7C08A056B6E9585892D998B5409680', '127.0.0.1', 3351),
('333333', '2021-04-26 20:46:51', NULL, 'Quartzz720', 'D8903A045BEEA8E8D3C45340A99A85B0752A905CB18611083EF018C8DD22A300BD562E84B0EEADB8E3128F408F1687501B7C08A056B6E9585892D998B5409680', '127.0.0.1', 3352),
('333333', '2021-04-26 21:00:47', NULL, 'Quartzz720', 'D8903A045BEEA8E8D3C45340A99A85B0752A905CB18611083EF018C8DD22A300BD562E84B0EEADB8E3128F408F1687501B7C08A056B6E9585892D998B5409680', '127.0.0.1', 3353),
('333333', '2021-04-26 21:13:35', '2021-04-26 21:26:29', 'Quartzz720', 'D8903A045BEEA8E8D3C45340A99A85B0752A905CB18611083EF018C8DD22A300BD562E84B0EEADB8E3128F408F1687501B7C08A056B6E9585892D998B5409680', '127.0.0.1', 3354);

-- --------------------------------------------------------

--
-- Структура таблицы `deletelog`
--

CREATE TABLE `deletelog` (
  `time` datetime NOT NULL,
  `uuid` text NOT NULL,
  `name` text NOT NULL,
  `account` text NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `eventslog`
--

CREATE TABLE `eventslog` (
  `AdminStarted` text NOT NULL,
  `EventName` text NOT NULL,
  `MembersLimit` text NOT NULL,
  `Started` text NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `idlog`
--

CREATE TABLE `idlog` (
  `in` datetime NOT NULL,
  `out` datetime DEFAULT NULL,
  `uuid` text NOT NULL,
  `id` text NOT NULL,
  `name` text NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `idlog`
--

INSERT INTO `idlog` (`in`, `out`, `uuid`, `id`, `name`, `idkey`) VALUES
('2021-04-16 20:33:11', NULL, '333333', '0', 'Ivan_Chekhouv', 1),
('2021-04-26 16:37:28', NULL, '333333', '0', 'Ivan_Chekhouv', 2),
('2021-04-26 20:46:51', NULL, '333333', '0', 'Ivan_Chekhouv', 3),
('2021-04-26 21:00:47', NULL, '333333', '0', 'Ivan_Chekhouv', 4),
('2021-04-26 21:13:35', NULL, '333333', '0', 'Ivan_Chekhouv', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `itemslog`
--

CREATE TABLE `itemslog` (
  `time` datetime NOT NULL,
  `from` text NOT NULL,
  `to` text NOT NULL,
  `type` text NOT NULL,
  `amount` text NOT NULL,
  `data` text NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `moneylog`
--

CREATE TABLE `moneylog` (
  `time` datetime NOT NULL,
  `from` text NOT NULL,
  `to` text NOT NULL,
  `amount` text NOT NULL,
  `comment` text NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `moneylog`
--

INSERT INTO `moneylog` (`time`, `from`, `to`, `amount`, `comment`, `idkey`) VALUES
('2021-04-16 21:00:00', 'server', 'player(333333)', '100', 'allowance', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `namelog`
--

CREATE TABLE `namelog` (
  `time` datetime NOT NULL,
  `uuid` text NOT NULL,
  `old` text NOT NULL,
  `new` text NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `stocklog`
--

CREATE TABLE `stocklog` (
  `time` datetime NOT NULL,
  `frac` text NOT NULL,
  `uuid` text NOT NULL,
  `type` text NOT NULL,
  `amount` text NOT NULL,
  `in` text NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `ticketlog`
--

CREATE TABLE `ticketlog` (
  `time` datetime NOT NULL,
  `player` text NOT NULL,
  `target` text NOT NULL,
  `sum` text NOT NULL,
  `reason` text NOT NULL,
  `pnick` text NOT NULL,
  `tnick` text NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `adminlog`
--
ALTER TABLE `adminlog`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `arrestlog`
--
ALTER TABLE `arrestlog`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `banlog`
--
ALTER TABLE `banlog`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `connlog`
--
ALTER TABLE `connlog`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `deletelog`
--
ALTER TABLE `deletelog`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `eventslog`
--
ALTER TABLE `eventslog`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `idlog`
--
ALTER TABLE `idlog`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `itemslog`
--
ALTER TABLE `itemslog`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `moneylog`
--
ALTER TABLE `moneylog`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `namelog`
--
ALTER TABLE `namelog`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `stocklog`
--
ALTER TABLE `stocklog`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `ticketlog`
--
ALTER TABLE `ticketlog`
  ADD PRIMARY KEY (`idkey`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `adminlog`
--
ALTER TABLE `adminlog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `arrestlog`
--
ALTER TABLE `arrestlog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `banlog`
--
ALTER TABLE `banlog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `connlog`
--
ALTER TABLE `connlog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3355;

--
-- AUTO_INCREMENT для таблицы `deletelog`
--
ALTER TABLE `deletelog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `eventslog`
--
ALTER TABLE `eventslog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `idlog`
--
ALTER TABLE `idlog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `itemslog`
--
ALTER TABLE `itemslog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `moneylog`
--
ALTER TABLE `moneylog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `namelog`
--
ALTER TABLE `namelog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `stocklog`
--
ALTER TABLE `stocklog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `ticketlog`
--
ALTER TABLE `ticketlog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
