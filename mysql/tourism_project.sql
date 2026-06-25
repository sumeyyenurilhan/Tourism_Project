-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 25 Haz 2026, 13:24:50
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
-- Tablo için tablo yapısı `about_us_1`
--

CREATE TABLE `about_us_1` (
  `id` tinyint(4) NOT NULL,
  `aciklama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `about_us_1`
--

INSERT INTO `about_us_1` (`id`, `aciklama`) VALUES
(21, '<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since 1966, when designers at Letraset and James Mosley, the librarian at St Bride Printing Library in London, took a 1914 Cicero translation and scrambled it to make dummy text for Letraset\'s Body Type sheets. It has survived not only many decades, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised thanks to these sheets and more recently with desktop publishing software like Aldus PageMaker and Microsoft Word including versions of Lorem Ipsum.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since 1966, when designers at Letraset and James Mosley, the librarian at St Bride Printing Library in London, took a 1914 Cicero translation and scrambled it to make dummy text for Letraset\'s Body Type sheets. It has survived not only many decades, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised thanks to these sheets and more recently with desktop publishing software like Aldus PageMaker and Microsoft Word including versions of Lorem Ipsum.<br />');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `about_us_2`
--

CREATE TABLE `about_us_2` (
  `id` tinyint(4) NOT NULL,
  `aciklama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `about_us_2`
--

INSERT INTO `about_us_2` (`id`, `aciklama`) VALUES
(6, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since 1966 is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `about_us_3`
--

CREATE TABLE `about_us_3` (
  `id` tinyint(4) NOT NULL,
  `aciklama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `about_us_3`
--

INSERT INTO `about_us_3` (`id`, `aciklama`) VALUES
(6, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contact_form`
--

CREATE TABLE `contact_form` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `contact_form`
--

INSERT INTO `contact_form` (`id`, `name`, `email`, `number`, `message`) VALUES
(1, 'mehmet aydın', 'mehmetaydin@gmail.com', '0231659847', 'merhaba'),
(2, 'eda güneş', 'edagunes@gmail.com', '0213695874', 'MERHABA'),
(7, 'ayşe gülay', 'aysegulay@gmail.com', '0254189324', 'merhaba ayşe');

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

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour`
--

CREATE TABLE `tour` (
  `id` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `text` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `tour`
--

INSERT INTO `tour` (`id`, `name`, `image`, `text`) VALUES
(8, 'India Tour', '../image/india.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour_1`
--

CREATE TABLE `tour_1` (
  `id` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `text` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `tour_1`
--

INSERT INTO `tour_1` (`id`, `name`, `image`, `text`) VALUES
(11, 'Far East Tour', '../image/korea.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour_2`
--

CREATE TABLE `tour_2` (
  `id` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `text` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `tour_2`
--

INSERT INTO `tour_2` (`id`, `name`, `image`, `text`) VALUES
(4, 'Safari', '../image/safari.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour_3`
--

CREATE TABLE `tour_3` (
  `id` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `text` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `tour_3`
--

INSERT INTO `tour_3` (`id`, `name`, `image`, `text`) VALUES
(4, 'Russia Tour', '../image/russia.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour_4`
--

CREATE TABLE `tour_4` (
  `id` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `text` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `tour_4`
--

INSERT INTO `tour_4` (`id`, `name`, `image`, `text`) VALUES
(3, 'Norway Trip', '../image/norway_1.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour_5`
--

CREATE TABLE `tour_5` (
  `id` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `text` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `tour_5`
--

INSERT INTO `tour_5` (`id`, `name`, `image`, `text`) VALUES
(3, 'Marmara Tour', '../image/istanbul.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour_6`
--

CREATE TABLE `tour_6` (
  `id` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `text` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `tour_6`
--

INSERT INTO `tour_6` (`id`, `name`, `image`, `text`) VALUES
(4, 'Maldives Cruise', '../image/maldive.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour_7`
--

CREATE TABLE `tour_7` (
  `id` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `text` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `tour_7`
--

INSERT INTO `tour_7` (`id`, `name`, `image`, `text`) VALUES
(3, 'Caribbean Cruise', '../image/caribbean.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour_8`
--

CREATE TABLE `tour_8` (
  `id` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `text` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `tour_8`
--

INSERT INTO `tour_8` (`id`, `name`, `image`, `text`) VALUES
(3, 'Black Sea Tour', '../image/bsr.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour_9`
--

CREATE TABLE `tour_9` (
  `id` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `text` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `tour_9`
--

INSERT INTO `tour_9` (`id`, `name`, `image`, `text`) VALUES
(3, 'Canada Spring Festival', '../image/canada.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour_10`
--

CREATE TABLE `tour_10` (
  `id` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `text` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `tour_10`
--

INSERT INTO `tour_10` (`id`, `name`, `image`, `text`) VALUES
(3, 'Central Anatolia Tour', '../image/anatolia.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour_11`
--

CREATE TABLE `tour_11` (
  `id` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `text` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `tour_11`
--

INSERT INTO `tour_11` (`id`, `name`, `image`, `text`) VALUES
(3, ' Southeastern Anatolia Tour', '../image/south.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour_12`
--

CREATE TABLE `tour_12` (
  `id` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `text` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `tour_12`
--

INSERT INTO `tour_12` (`id`, `name`, `image`, `text`) VALUES
(3, 'Morocco Tour', '../image/morocco.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour_13`
--

CREATE TABLE `tour_13` (
  `id` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `text` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `tour_13`
--

INSERT INTO `tour_13` (`id`, `name`, `image`, `text`) VALUES
(3, 'Indonesia Cruise', '../image/bali.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour_14`
--

CREATE TABLE `tour_14` (
  `id` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `text` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `tour_14`
--

INSERT INTO `tour_14` (`id`, `name`, `image`, `text`) VALUES
(3, 'Aegean Tour', '../image/aegean.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour_15`
--

CREATE TABLE `tour_15` (
  `id` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `text` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `tour_15`
--

INSERT INTO `tour_15` (`id`, `name`, `image`, `text`) VALUES
(3, ' Eastern Express Trip', '../image/east.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour_16`
--

CREATE TABLE `tour_16` (
  `id` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `text` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `tour_16`
--

INSERT INTO `tour_16` (`id`, `name`, `image`, `text`) VALUES
(3, ' Eastern Anatolia Tour', '../image/east_1.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour_17`
--

CREATE TABLE `tour_17` (
  `id` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `text` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `tour_17`
--

INSERT INTO `tour_17` (`id`, `name`, `image`, `text`) VALUES
(3, 'China Spring Festival', '../image/csf.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour_18`
--

CREATE TABLE `tour_18` (
  `id` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `text` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `tour_18`
--

INSERT INTO `tour_18` (`id`, `name`, `image`, `text`) VALUES
(3, ' Australia Tour', '../image/sidney.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour_19`
--

CREATE TABLE `tour_19` (
  `id` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `text` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `tour_19`
--

INSERT INTO `tour_19` (`id`, `name`, `image`, `text`) VALUES
(3, ' Europe Tour', '../image/germany.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour_20`
--

CREATE TABLE `tour_20` (
  `id` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `text` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `tour_20`
--

INSERT INTO `tour_20` (`id`, `name`, `image`, `text`) VALUES
(3, ' America Tour', '../image/colombia.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour_21`
--

CREATE TABLE `tour_21` (
  `id` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `text` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `tour_21`
--

INSERT INTO `tour_21` (`id`, `name`, `image`, `text`) VALUES
(3, 'Mediterranean Tour', '../image/mediterrenian.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.');

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

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` tinyint(4) NOT NULL,
  `kullanici` varchar(100) NOT NULL,
  `sifre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `kullanici`, `sifre`) VALUES
(3, 'admin', '1234567\r\n'),
(4, 'nur', '1234');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `about_us_1`
--
ALTER TABLE `about_us_1`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `about_us_2`
--
ALTER TABLE `about_us_2`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `about_us_3`
--
ALTER TABLE `about_us_3`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `homepage_slider`
--
ALTER TABLE `homepage_slider`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `homepage_tours`
--
ALTER TABLE `homepage_tours`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tour_1`
--
ALTER TABLE `tour_1`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tour_2`
--
ALTER TABLE `tour_2`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tour_3`
--
ALTER TABLE `tour_3`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tour_4`
--
ALTER TABLE `tour_4`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tour_5`
--
ALTER TABLE `tour_5`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tour_6`
--
ALTER TABLE `tour_6`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tour_7`
--
ALTER TABLE `tour_7`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tour_8`
--
ALTER TABLE `tour_8`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tour_9`
--
ALTER TABLE `tour_9`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tour_10`
--
ALTER TABLE `tour_10`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tour_11`
--
ALTER TABLE `tour_11`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tour_12`
--
ALTER TABLE `tour_12`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tour_13`
--
ALTER TABLE `tour_13`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tour_14`
--
ALTER TABLE `tour_14`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tour_15`
--
ALTER TABLE `tour_15`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tour_16`
--
ALTER TABLE `tour_16`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tour_17`
--
ALTER TABLE `tour_17`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tour_18`
--
ALTER TABLE `tour_18`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tour_19`
--
ALTER TABLE `tour_19`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tour_20`
--
ALTER TABLE `tour_20`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tour_21`
--
ALTER TABLE `tour_21`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `travels`
--
ALTER TABLE `travels`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `about_us_1`
--
ALTER TABLE `about_us_1`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Tablo için AUTO_INCREMENT değeri `about_us_2`
--
ALTER TABLE `about_us_2`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `about_us_3`
--
ALTER TABLE `about_us_3`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- Tablo için AUTO_INCREMENT değeri `homepage_slider`
--
ALTER TABLE `homepage_slider`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Tablo için AUTO_INCREMENT değeri `homepage_tours`
--
ALTER TABLE `homepage_tours`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Tablo için AUTO_INCREMENT değeri `tour`
--
ALTER TABLE `tour`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `tour_1`
--
ALTER TABLE `tour_1`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `tour_2`
--
ALTER TABLE `tour_2`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `tour_3`
--
ALTER TABLE `tour_3`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `tour_4`
--
ALTER TABLE `tour_4`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `tour_5`
--
ALTER TABLE `tour_5`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `tour_6`
--
ALTER TABLE `tour_6`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `tour_7`
--
ALTER TABLE `tour_7`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `tour_8`
--
ALTER TABLE `tour_8`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `tour_9`
--
ALTER TABLE `tour_9`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `tour_10`
--
ALTER TABLE `tour_10`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `tour_11`
--
ALTER TABLE `tour_11`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `tour_12`
--
ALTER TABLE `tour_12`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `tour_13`
--
ALTER TABLE `tour_13`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `tour_14`
--
ALTER TABLE `tour_14`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `tour_15`
--
ALTER TABLE `tour_15`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `tour_16`
--
ALTER TABLE `tour_16`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `tour_17`
--
ALTER TABLE `tour_17`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `tour_18`
--
ALTER TABLE `tour_18`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `tour_19`
--
ALTER TABLE `tour_19`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `tour_20`
--
ALTER TABLE `tour_20`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `tour_21`
--
ALTER TABLE `tour_21`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `travels`
--
ALTER TABLE `travels`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
