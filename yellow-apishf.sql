-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3306
-- Létrehozás ideje: 2017. Nov 01. 13:59
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
  PRIMARY KEY (`currency_id`)
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
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `price_id` (`price_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`user_id`)
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
