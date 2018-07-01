-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 01 jul 2018 om 21:14
-- Serverversie: 10.1.28-MariaDB
-- PHP-versie: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myband_db`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `articles`
--

CREATE TABLE `articles` (
  `article_id` int(11) NOT NULL,
  `title` varchar(140) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `imagelink` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `articles`
--

INSERT INTO `articles` (`article_id`, `title`, `content`, `imagelink`) VALUES
(0, 'Title 1', 'Content 1', 'Image 1'),
(0, 'Title 2', 'Content 2', 'Image 2'),
(0, 'Title 3', 'Content 3', 'Image 3'),
(0, 'Title 4', 'Content 4', 'Image 4'),
(0, 'Title 5', 'Content 5', 'Image 5'),
(0, 'Title 6', 'Content 6', 'Image 6'),
(0, 'Title 7', 'Content 7', 'Image 7'),
(0, 'Title 8', 'Content 8', 'Image 8'),
(0, 'Title 9', 'Content 9', 'Image 9'),
(0, 'Title 10', 'Content 10', 'Image 10'),
(0, 'Title 11', 'Content 11', 'Image 11'),
(0, 'Title 12', 'Content 12', 'Image 12'),
(0, 'Title 13', 'Content 13', 'Image 13'),
(0, 'Title 14', 'Content 14', 'Image 14'),
(0, 'Title 15', 'Content 15', 'Image 15'),
(0, 'Title 16', 'Content 16', 'Image 16'),
(0, 'Title 17', 'Content 17', 'Image 17'),
(0, 'Title 18', 'Content 18', 'Image 18'),
(0, 'Title 19', 'Content 19', 'Image 19'),
(0, 'Title 20', 'Content 20', 'Image 20'),
(0, 'Title 21', 'Content 21', 'Image 21'),
(0, 'Title 22', 'Content 22', 'Image 22'),
(0, 'Title 23', 'Content 23', 'Image 23'),
(0, 'Title 24', 'Content 24', 'Image 24'),
(0, 'Title 25', 'Content 25', 'Image 25'),
(0, 'Title 26', 'Content 26', 'Image 26'),
(0, 'Title 27', 'Content 27', 'Image 27'),
(0, 'Title 28', 'Content 28', 'Image 28'),
(0, 'Title 29', 'Content 29', 'Image 29'),
(0, 'Title 30', 'Content 30', 'Image 30'),
(0, 'Title 31', 'Content 31', 'Image 31'),
(0, 'Title 32', 'Content 32', 'Image 32'),
(0, 'Title 33', 'Content 33', 'Image 33'),
(0, 'Title 34', 'Content 34', 'Image 34'),
(0, 'Title 35', 'Content 35', 'Image 35'),
(0, 'Title 36', 'Content 36', 'Image 36'),
(0, 'Title 37', 'Content 37', 'Image 37'),
(0, 'Title 38', 'Content 38', 'Image 38'),
(0, 'Title 39', 'Content 39', 'Image 39'),
(0, 'Title 40', 'Content 40', 'Image 40'),
(0, 'Title 41', 'Content 41', 'Image 41'),
(0, 'Title 42', 'Content 42', 'Image 42'),
(0, 'Title 43', 'Content 43', 'Image 43'),
(0, 'Title 44', 'Content 44', 'Image 44'),
(0, 'Title 45', 'Content 45', 'Image 45'),
(0, 'Title 46', 'Content 46', 'Image 46'),
(0, 'Title 47', 'Content 47', 'Image 47'),
(0, 'Title 48', 'Content 48', 'Image 48'),
(0, 'Title 49', 'Content 49', 'Image 49'),
(0, 'Title 50', 'Content 50', 'Image 50'),
(0, 'Title 51', 'Content 51', 'Image 51'),
(0, 'Title 52', 'Content 52', 'Image 52'),
(0, 'Title 53', 'Content 53', 'Image 53'),
(0, 'Title 54', 'Content 54', 'Image 54'),
(0, 'Title 55', 'Content 55', 'Image 55'),
(0, 'Title 56', 'Content 56', 'Image 56'),
(0, 'Title 57', 'Content 57', 'Image 57'),
(0, 'Title 58', 'Content 58', 'Image 58'),
(0, 'Title 59', 'Content 59', 'Image 59'),
(0, 'Title 60', 'Content 60', 'Image 60'),
(0, 'Title 61', 'Content 61', 'Image 61'),
(0, 'Title 62', 'Content 62', 'Image 62'),
(0, 'Title 63', 'Content 63', 'Image 63'),
(0, 'Title 64', 'Content 64', 'Image 64'),
(0, 'Title 65', 'Content 65', 'Image 65'),
(0, 'Title 66', 'Content 66', 'Image 66'),
(0, 'Title 67', 'Content 67', 'Image 67'),
(0, 'Title 68', 'Content 68', 'Image 68'),
(0, 'Title 69', 'Content 69', 'Image 69'),
(0, 'Title 70', 'Content 70', 'Image 70'),
(0, 'Title 71', 'Content 71', 'Image 71'),
(0, 'Title 72', 'Content 72', 'Image 72'),
(0, 'Title 73', 'Content 73', 'Image 73'),
(0, 'Title 74', 'Content 74', 'Image 74'),
(0, 'Title 75', 'Content 75', 'Image 75'),
(0, 'Title 76', 'Content 76', 'Image 76'),
(0, 'Title 77', 'Content 77', 'Image 77'),
(0, 'Title 78', 'Content 78', 'Image 78'),
(0, 'Title 79', 'Content 79', 'Image 79'),
(0, 'Title 80', 'Content 80', 'Image 80'),
(0, 'Title 81', 'Content 81', 'Image 81'),
(0, 'Title 82', 'Content 82', 'Image 82'),
(0, 'Title 83', 'Content 83', 'Image 83'),
(0, 'Title 84', 'Content 84', 'Image 84'),
(0, 'Title 85', 'Content 85', 'Image 85'),
(0, 'Title 86', 'Content 86', 'Image 86'),
(0, 'Title 87', 'Content 87', 'Image 87'),
(0, 'Title 88', 'Content 88', 'Image 88'),
(0, 'Title 89', 'Content 89', 'Image 89'),
(0, 'Title 90', 'Content 90', 'Image 90'),
(0, 'Title 91', 'Content 91', 'Image 91'),
(0, 'Title 92', 'Content 92', 'Image 92'),
(0, 'Title 93', 'Content 93', 'Image 93'),
(0, 'Title 94', 'Content 94', 'Image 94'),
(0, 'Title 95', 'Content 95', 'Image 95'),
(0, 'Title 96', 'Content 96', 'Image 96'),
(0, 'Title 97', 'Content 97', 'Image 97'),
(0, 'Title 98', 'Content 98', 'Image 98'),
(0, 'Title 99', 'Content 99', 'Image 99'),
(0, 'Title 100', 'Content 100', 'Image 100');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
