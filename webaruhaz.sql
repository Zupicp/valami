-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Hoszt: 127.0.0.1
-- Létrehozás ideje: 2021. jan. 12. 12:53
-- Szerver verzió: 5.0.96
-- PHP verzió: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Adatbázis: `zupicpeter`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet: `webaruhaz`
--

CREATE TABLE IF NOT EXISTS `webaruhaz` (
  `id` tinyint(4) NOT NULL auto_increment,
  `kategoria` varchar(255) character set utf8 collate utf8_hungarian_ci NOT NULL,
  `termek_neve` varchar(255) character set utf8 collate utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL,
  `foto` varchar(255) character set utf8 collate utf8_hungarian_ci NOT NULL,
  `keszlet` int(11) NOT NULL,
  `vasarlas` varchar(255) character set utf8 collate utf8_hungarian_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- A tábla adatainak kiíratása `webaruhaz`
--

INSERT INTO `webaruhaz` (`id`, `kategoria`, `termek_neve`, `ar`, `foto`, `keszlet`, `vasarlas`) VALUES
(1, 'alaplap', 'SAM4 ASUS ROG STRIX B450-F GAMING', 39489, '1.jpg', 5, '1_vasarlas.php'),
(2, 'monitor', 'AOC 27G2U Monitor', 79000, '2.jpg', 4, '2_vasarlas.php'),
(3, 'monitor', 'PHILIPS - V - SOROZAT - 273V7QDSB/00', 44820, '3.jpg', 1, '3_vasarlas.php'),
(4, 'monitor', 'LG - 25UM58-P', 49440, '4.jpg', 6, '4_vasarlas.php'),
(5, 'alaplap', 'SAM4 GIGABYTE B450 AORUS ELITE', 31860, '5.jpg', 7, '5_vasarlas.php');
