-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 25 Haz 2026, 13:25:30
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
-- Tablo için tablo yapısı `homepage_tours`
--

CREATE TABLE `homepage_tours` (
  `id` int(50) NOT NULL,
  `baslik` varchar(50) NOT NULL,
  `resim` varchar(50) NOT NULL,
  `yazi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `homepage_tours`
--

INSERT INTO `homepage_tours` (`id`, `baslik`, `resim`, `yazi`) VALUES
(16, 'Our Norway Tour', '../images/northern_lights.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe'),
(17, 'Chestnuts in Uludag', '../images/uludag.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe'),
(18, 'Our Safari Adventures', '../images/safari_1.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe'),
(19, 'Cappadocia Trip', '../images/kapadokya.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe'),
(20, 'Tea in the Black Sea Region', '../images/tea.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe'),
(21, 'Niagara Falls', '../images/niagara.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page whe');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `homepage_tours`
--
ALTER TABLE `homepage_tours`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `homepage_tours`
--
ALTER TABLE `homepage_tours`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
