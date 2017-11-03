-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3306
-- Létrehozás ideje: 2017. Nov 02. 19:08
-- Kiszolgáló verziója: 5.7.19
-- PHP verzió: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `yellow-apishf`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `currency`
--

DROP TABLE IF EXISTS `currency`;
CREATE TABLE IF NOT EXISTS `currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(100) NOT NULL,
  PRIMARY KEY (`currency_id`),
  UNIQUE KEY `currency_name` (`currency_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `currency`
--

INSERT INTO `currency` (`currency_id`, `currency_name`) VALUES
(1, 'HUF');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_password` varchar(100) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_email` (`customer_email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`) VALUES
(1, 'Márk', 'mark@gmail.com', 'zQXQYVdD5nCyEgQp'),
(2, 'Gábor', 'gabor@gmail.com', '8HxgAwBhJTjHU9Be'),
(3, 'Réka', 'reka@gmail.com', 'zRwHkFT3fwQK4Ghe'),
(4, 'Zsolt', 'zsolt@gmail.com', 'NbzWVpUcRjHrd453'),
(5, 'Eszter', 'eszter@gmail.com', 'Mcfrb9zrZhWrpTYp'),
(6, 'Patrik', 'patrik@gmail.com', 't8zcghVp4nsEyHzN'),
(7, 'Dóri', 'dori@gmail.com', '5fyvkT5fA9JfP6bh'),
(8, 'Jácint', 'jacint@gmail.com', 'DvaGPWtc4MdzzXwt'),
(9, 'Barbara', 'barbara@gmail.com', 'QVBgTu4NwqWL62g4'),
(10, 'Zsófia', 'zsofia@gmail.com', 'PRX6Ln8yGxGF2rXj'),
(11, 'Máté', 'mate@gmail.com', 'W3eY3rHKvUbn3Yfv'),
(12, 'Ildi', 'ildiko@gmail.com', '2f9u2umKBd2u89K2'),
(13, 'Zsombor', 'zsombor@gmail.com', 'wW2jwjq85GQTbDRb'),
(14, 'Niki', 'niki@gmail.com', 'ZVR9mFjQfKRvHz4F'),
(15, 'Szilveszter', 'szilveszter@gmail.com', 'TxJWxLf4GhpENbuD'),
(16, 'Gabi', 'gabi@gmail.com', 'K5TgWr2vT6raneTr'),
(17, 'Káin', 'kain@gmail.com', '432FAx3XEG26Tvta'),
(18, 'Zsófi', 'zsofi@gmail.com', 's5PRErvzSwf7GeGj');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_date` datetime NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `ordered_quantity` int(11) NOT NULL,
  `price_id` int(11) NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `price_id` (`price_id`),
  KEY `product_id` (`product_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `customer_id`, `product_id`, `ordered_quantity`, `price_id`, `currency_id`) VALUES
(1, '2017-09-01 17:27:23', 5, 10, 10, 10, 1),
(2, '2017-07-10 05:52:15', 18, 5, 23, 5, 1),
(3, '2017-10-31 05:17:06', 1, 15, 40, 15, 1),
(4, '2017-11-01 08:11:37', 2, 14, 20, 14, 1),
(5, '2017-11-01 08:13:40', 4, 4, 4, 4, 1),
(6, '2017-10-24 06:35:12', 5, 5, 5, 5, 1),
(7, '2017-10-25 23:37:08', 6, 6, 10, 6, 1),
(8, '2017-10-25 14:13:50', 7, 12, 12, 12, 1),
(9, '2017-10-16 10:10:41', 8, 8, 40, 8, 1),
(10, '2017-10-23 23:16:00', 9, 9, 15, 9, 1),
(11, '2017-10-14 11:10:34', 10, 10, 30, 10, 1),
(12, '2017-10-18 05:32:12', 11, 3, 11, 3, 1),
(13, '2017-10-16 14:18:45', 12, 12, 12, 12, 1),
(14, '2017-08-13 04:53:18', 13, 13, 13, 13, 1),
(15, '2017-02-13 08:47:17', 14, 14, 40, 14, 1),
(16, '2017-04-01 09:51:17', 15, 15, 100, 15, 1),
(17, '2017-11-01 09:44:26', 16, 1, 16, 1, 1),
(18, '2017-11-01 08:48:19', 17, 2, 42, 2, 1),
(19, '2017-08-02 11:11:53', 18, 3, 72, 3, 1),
(20, '2017-09-12 13:12:36', 1, 4, 4, 4, 1),
(21, '2017-10-10 03:38:28', 2, 4, 30, 4, 1),
(22, '2017-10-09 12:14:24', 4, 5, 50, 5, 1),
(23, '2017-10-17 12:10:13', 5, 6, 10, 6, 1),
(24, '2017-09-13 00:00:00', 6, 7, 8, 7, 1),
(25, '2017-09-11 23:10:20', 7, 8, 9, 8, 1),
(26, '2017-03-13 19:15:08', 8, 9, 10, 9, 1),
(27, '2017-09-12 04:21:00', 9, 10, 11, 10, 1),
(28, '2017-10-15 05:36:13', 10, 11, 12, 11, 1),
(29, '2017-06-13 14:49:11', 11, 12, 13, 12, 1),
(30, '2017-05-15 10:47:21', 12, 13, 14, 13, 1),
(31, '2017-05-03 23:19:00', 13, 14, 15, 14, 1),
(32, '2017-08-15 15:20:11', 14, 15, 15, 15, 1),
(33, '2017-08-31 20:13:06', 16, 1, 40, 1, 1),
(34, '2017-09-12 17:09:02', 17, 2, 25, 2, 1),
(35, '2017-08-05 09:17:00', 18, 3, 30, 3, 1),
(36, '2017-08-30 10:35:06', 1, 10, 10, 10, 1),
(37, '2017-10-02 09:56:12', 2, 9, 9, 9, 1),
(38, '2017-09-20 12:45:02', 4, 8, 16, 8, 1),
(39, '2017-08-26 17:43:09', 5, 7, 2, 7, 1),
(40, '2017-09-01 13:11:00', 6, 9, 10, 9, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `prices`
--

DROP TABLE IF EXISTS `prices`;
CREATE TABLE IF NOT EXISTS `prices` (
  `price_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `price_value` float NOT NULL,
  `currency_id` int(11) NOT NULL,
  PRIMARY KEY (`price_id`),
  UNIQUE KEY `price_value` (`price_value`),
  KEY `product_id` (`product_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `prices`
--

INSERT INTO `prices` (`price_id`, `product_id`, `price_value`, `currency_id`) VALUES
(1, 1, 4350, 1),
(2, 2, 4790, 1),
(3, 3, 4299, 1),
(4, 4, 4440, 1),
(5, 5, 5950, 1),
(6, 6, 4190, 1),
(7, 7, 3990, 1),
(8, 8, 4690, 1),
(9, 9, 5990, 1),
(10, 10, 2100, 1),
(11, 10, 6490, 1),
(12, 12, 3190, 1),
(13, 13, 3950, 1),
(14, 14, 2690, 1),
(15, 15, 4090, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `price_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `product_name` (`product_name`),
  KEY `price_id` (`price_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `price_id`, `currency_id`) VALUES
(1, 'Absolut Vodka', 1, 1),
(2, 'Jim Beam', 2, 1),
(3, 'Gordons Gin', 3, 1),
(4, 'Smirnoff', 4, 1),
(5, 'Jack Deniel\'s', 5, 1),
(6, 'Jägermeister', 6, 1),
(7, 'Bacardi', 7, 1),
(8, 'Absinthe', 8, 1),
(9, 'Sierra Tequila', 9, 1),
(10, 'Martini Bianco', 10, 1),
(11, 'Bols Genever', 11, 1),
(12, 'St. Hubertus', 12, 1),
(13, 'Finlandia Vodka', 13, 1),
(14, 'Blue Curacao', 14, 1),
(15, 'Metaxa', 15, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Felhasználók adatai';

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`) VALUES
(1, 'Réka', 'reka@yellow.com', 'reka2017'),
(2, 'Máté', 'mate@yellow.com', 'mate2017'),
(3, 'Ildi', 'ildi@yellow.com', 'ildi2017');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
