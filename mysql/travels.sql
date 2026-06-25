-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 25 Haz 2026, 13:27:35
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `tourism_project`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `travels`
--

CREATE TABLE `travels` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `link` varchar(50) NOT NULL,
  `file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `travels`
--

INSERT INTO `travels` (`id`, `name`, `image`, `comment`, `link`, `file`) VALUES
(41, 'India Tour', '../images/india.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classi', '../travels/tour.php', '../admin/tour.php'),
(42, 'Far East Tour', '../images/korea.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '../travels/tour_1.php', '../admin/tour_1.php'),
(43, 'Safari', '../images/safari.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '../travels/tour_2.php', '../admin/tour_2.php'),
(44, 'Russia Tour', '../images/russia.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '../travels/tour_3.php', '../admin/tour_3.php'),
(45, 'Norway Trip', '../images/norway_1.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '../travels/tour_4.php', '../admin/tour_4.php'),
(46, 'Marmara Tour', '../images/istanbul.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '../travels/tour_5.php', '../admin/tour_5.php'),
(47, 'Maldives Cruise', '../images/maldive.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '../travels/tour_6.php', '../admin/tour_6.php'),
(48, 'Caribbean Cruise', '../images/caribbean.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '../travels/tour_7.php', '../admin/tour_7.php'),
(49, 'Black Sea Tour', '../images/bsr.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '../travels/tour_8.php', '../admin/tour_8.php'),
(50, 'Canada Spring Festival', '../images/canada.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '../travels/tour_9.php', '../admin/tour_9.php'),
(51, 'Central Anatolia Tour', '../images/anatolia.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '../travels/tour_10.php', '../admin/tour_10.php'),
(52, 'Southeastern Anatolia Tour', '../images/south.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '../travels/tour_11.php', '../admin/tour_11.php'),
(53, 'Morocco Tour', '../images/morocco.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '../travels/tour_12.php', '../admin/tour_12.php'),
(54, 'Indonesia Cruise', '../images/bali.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '../travels/tour_13.php', '../admin/tour_13.php'),
(55, 'Aegean Tour', '../images/aegean.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '../travels/tour_14.php', '../admin/tour_14.php'),
(56, 'Eastern Express Trip', '../images/east.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '../travels/tour_15.php', '../admin/tour_15.php'),
(57, 'Eastern Anatolia Tour', '../images/east_1.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '../travels/tour_16.php', '../admin/tour_16.php'),
(59, 'Australia Tour', '../images/sidney.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '../travels/tour_18.php', '../admin/tour_18.php'),
(60, 'Europe Tour', '../images/germany.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '../travels/tour_19.php', '../admin/tour_19.php'),
(61, 'America Tour', '../images/colombia.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '../travels/tour_20.php', '../admin/tour_20.php'),
(64, 'Mediterranean Tour', '../images/mediterrenian.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '../travels/tour_21.php', '../admin/tour_21.php'),
(65, 'Canada Spring Festival', '../images/csf.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '../travels/tour_17.php', '../admin/tour_17.php');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `travels`
--
ALTER TABLE `travels`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `travels`
--
ALTER TABLE `travels`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
