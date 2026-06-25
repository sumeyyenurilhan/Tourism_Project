-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 25 Haz 2026, 13:25:26
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
-- Tablo için tablo yapısı `homepage_slider`
--

CREATE TABLE `homepage_slider` (
  `id` int(6) NOT NULL,
  `baslik` varchar(50) NOT NULL,
  `resim` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `homepage_slider`
--

INSERT INTO `homepage_slider` (`id`, `baslik`, `resim`) VALUES
(27, 'Europe Tour', '../images/germany.jpg'),
(28, 'Far East Tour', '../images/korea.jpg'),
(29, 'Seasonal Tours', '../images/switzerland.jpg'),
(30, 'America Tour', '../images/colombia.jpg'),
(31, 'Russia Tour', '../images/russia.jpg'),
(32, 'Domestic Tours', '../images/aegean.jpg'),
(33, 'Eastern Express', '../images/east.jpg'),
(34, 'Australia Tour', '../images/sidney.jpg');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `homepage_slider`
--
ALTER TABLE `homepage_slider`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `homepage_slider`
--
ALTER TABLE `homepage_slider`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
