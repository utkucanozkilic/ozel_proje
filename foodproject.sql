-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 25 Ağu 2020, 18:08:34
-- Sunucu sürümü: 10.4.13-MariaDB
-- PHP Sürümü: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `foodproject`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `parentid` int(11) DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`id`, `parentid`, `title`, `keywords`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(4, 0, 'Izgaracı', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 0, 'Dönerci', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 0, 'Tatlıcı', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 0, 'Çiğ Köfteci', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 0, 'Mantıcı', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 4, 'Kebap', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 4, 'Dürüm', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 5, 'Et Döner', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 5, 'Tavuk Döner', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 6, 'Waffle', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 6, 'Lokma', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 0, 'Hamburgerci', NULL, NULL, NULL, 'True', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `subject` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `restaurantid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `comment`
--

INSERT INTO `comment` (`id`, `subject`, `comment`, `status`, `ip`, `userid`, `created_at`, `updated_at`, `rate`, `restaurantid`) VALUES
(1, 'asd', 'das', 'true', 'asd', 1, NULL, NULL, 3, 3),
(2, 'liked', NULL, 'New', '127.0.0.1', 14, NULL, NULL, 3, 3),
(3, 'Güzel hamburger', NULL, 'New', '127.0.0.1', 14, NULL, NULL, 3, 3),
(4, 'subject', 'comment', 'True', '127.0.0.1', 14, NULL, NULL, 1, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200809231423', '2020-08-10 01:23:22', 306),
('DoctrineMigrations\\Version20200810214018', '2020-08-10 23:41:32', 3392),
('DoctrineMigrations\\Version20200813221504', '2020-08-14 00:15:23', 2773),
('DoctrineMigrations\\Version20200813225646', '2020-08-14 00:57:11', 280),
('DoctrineMigrations\\Version20200814150901', '2020-08-14 17:09:17', 574),
('DoctrineMigrations\\Version20200814201952', '2020-08-14 22:20:11', 2031),
('DoctrineMigrations\\Version20200821153854', '2020-08-21 17:39:06', 233),
('DoctrineMigrations\\Version20200823141735', '2020-08-23 16:18:03', 1001),
('DoctrineMigrations\\Version20200823161614', '2020-08-23 18:16:45', 236),
('DoctrineMigrations\\Version20200823193733', '2020-08-23 21:37:41', 254),
('DoctrineMigrations\\Version20200823195922', '2020-08-23 21:59:34', 134),
('DoctrineMigrations\\Version20200823211812', '2020-08-23 23:18:19', 232),
('DoctrineMigrations\\Version20200823222515', '2020-08-24 00:25:24', 1013),
('DoctrineMigrations\\Version20200823224414', '2020-08-24 00:44:24', 585),
('DoctrineMigrations\\Version20200823235244', '2020-08-24 01:52:49', 140),
('DoctrineMigrations\\Version20200824023444', '2020-08-24 04:34:51', 345),
('DoctrineMigrations\\Version20200824031019', '2020-08-24 05:10:27', 124),
('DoctrineMigrations\\Version20200824131835', '2020-08-24 15:18:54', 2582),
('DoctrineMigrations\\Version20200824132217', '2020-08-24 15:22:23', 112),
('DoctrineMigrations\\Version20200824151852', '2020-08-24 17:18:59', 551);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `image`
--

INSERT INTO `image` (`id`, `restaurant_id`, `title`, `image`) VALUES
(1, 2, '250 gr. kızarmış tavuk + patates', '4e35003465977f7bfccab8aef0d4c55e.jpeg'),
(2, 2, 'tavuk dürüm + patates', '956a24cf9392a1a392e635062e67400f.jpeg'),
(3, 3, 'Evde Kal Seçmeli Menü', '51646ae16bd4233ba3f8006227dc9836.png'),
(4, 3, 'Pro Gamer Tavuklu Barbekü Deluxe Burger Menü', 'cfd51c083fb045e2c7978c0ed43d4f69.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restaurantid` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`id`, `title`, `restaurantid`, `description`, `image`, `price`, `status`) VALUES
(2, 'Muhteşem ikili', 3, 'Muhteşem ikili muhteşem fiyata', '6b2931766171f0ba91d341c8516f95b7.jpeg', 19.95, 'True'),
(4, 'Kral İkili', 3, 'Big King + King Chicken', '493b8f41ee7e78a83545f6448c15565e.jpeg', 17.25, 'True'),
(5, 'Evde Kal Menüsü', 6, 'Dev Kampanya', '8e79ef14255e2ef37cef3fe37bb0fffe.jpeg', 22.49, 'True'),
(6, 'Big Maç Menü', 6, 'Maç izlerken aç kalma', '0f84e2922b73836f57fce0d4c6dc6590.png', 24.99, 'True');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `messages`
--

INSERT INTO `messages` (`id`, `name`, `subject`, `message`, `status`, `ip`, `note`, `created_at`, `updated_at`, `email`) VALUES
(1, 'xxx', 'sss', NULL, NULL, NULL, 'aaa', NULL, NULL, 'zzz@hotmail.com'),
(2, 'utku', 'konusuz', 'mesaj', 'New', '127.0.0.1', NULL, NULL, NULL, 'utkucan@gmail.com'),
(3, 'utku can özkılıç', 'konusuz', 'mesajmesaj', 'Answered', '127.0.0.1', 'It\'s answered', NULL, NULL, 'utkucan@gmail.com'),
(4, 'utku can özkılıç', 'konusuz', 'mesajmesaj', 'New', '127.0.0.1', NULL, NULL, NULL, 'utkucan@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `restaurantid` int(11) DEFAULT NULL,
  `menuid` int(11) DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkin` datetime DEFAULT NULL,
  `checkout` datetime DEFAULT NULL,
  `total` float DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `pay` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `piece` int(11) DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `order`
--

INSERT INTO `order` (`id`, `userid`, `restaurantid`, `menuid`, `name`, `surname`, `email`, `phone`, `ordering`, `checkin`, `checkout`, `total`, `ip`, `status`, `created_at`, `updated_at`, `pay`, `piece`, `message`) VALUES
(6, 2, 3, 2, 'Utku', 'Can', 'hans@gmail.com', '12312312', 'Sipariş Alındı', NULL, NULL, 39, '127.0.0.1', 'Accepted', NULL, NULL, 'dene', 2, NULL),
(7, 14, 3, 4, 'admin', 'can', 'admin@gmail.com', '11', 'xxx', NULL, NULL, 34, '127.0.0.1', 'Accepted', NULL, NULL, 'cash', 2, NULL),
(8, 2, 3, 4, 'Utku', 'Can', 'hans@gmail.com', '123123', NULL, NULL, NULL, 51, '127.0.0.1', 'New', NULL, NULL, 'cash', 3, NULL),
(9, 2, 3, 4, 'Utku', 'Can', 'hans@gmail.com', 'asdasd', NULL, NULL, NULL, 207, '127.0.0.1', 'New', NULL, NULL, 'check', 12, NULL),
(10, 14, 6, 6, 'admin', 'can', 'admin@gmail.com', '564654', NULL, NULL, NULL, 49, '127.0.0.1', 'New', NULL, NULL, 'Cash', 2, NULL),
(11, 2, 3, 4, 'Utku', 'Can', 'hans@gmail.com', '13123', NULL, NULL, NULL, 86, '127.0.0.1', 'New', NULL, NULL, 'Cash', 5, NULL),
(12, 2, 3, 2, 'Utku', 'Can', 'hans@gmail.com', '545646', NULL, NULL, NULL, 299, '127.0.0.1', 'New', NULL, NULL, 'cash', 15, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `Score` float DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `restaurant`
--

INSERT INTO `restaurant` (`id`, `category_id`, `title`, `keywords`, `description`, `image`, `location`, `status`, `created_at`, `updated_at`, `Score`, `userid`, `detail`) VALUES
(2, 5, 'Cajun Corner', 'Tavuk, Kızarmış Tavuk, Noodle', 'Lezzet Dünyası', 'a03085319e613dfd8f84874396e48864.jpeg', 'Karabük', 'True', NULL, NULL, 5.2, NULL, NULL),
(3, 4, 'Burger King', 'hamburger', 'ateş seni çağırıyo', '482280f057441b9b553711c67762aa8e.png', 'Ankara', 'True', NULL, NULL, 3.5, NULL, NULL),
(4, 5, 'Tavuk Dünyası', 'Döner, Tavuk', 'Tavuğun Adresi', '041ad0f1a033154f38bc692a2a98c792.png', 'Ankara', 'True', NULL, NULL, 4.2, NULL, NULL),
(6, 5, 'Mc Donald\'s', 'hamburger', 'Hammmmburgerrr', '634241620fa4974449fda1f7d74997f8.jpeg', 'Ankara', 'True', NULL, NULL, 9.6, 2, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutus` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `setting`
--

INSERT INTO `setting` (`id`, `title`, `keywords`, `description`, `company`, `address`, `phone`, `email`, `instagram`, `twitter`, `facebook`, `aboutus`, `contact`, `status`) VALUES
(1, 'YemekSepeti', 'yemeksepeti', 'Yemek Sipariş', 'Yemek Sepeti LTD. STI.', 'Istanbul', '+909999999', 'yemeksepeti@gmail.com', 'https://www.instagram.com/yemeksepeti/', 'https://twitter.com/yemeksepeti?ref_src=twsrc%5Ego', 'facebook.com', '<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Şirket Unvanı</td>\r\n			<td>Yemek Sepeti Elektronik İletişim Perakende Gıda Lojistik A.Ş.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sorumlu Kişiler</td>\r\n			<td>Yunus Elmas</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ticaret Sicil No</td>\r\n			<td>444563</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Merkezin Bulunduğu Yer</td>\r\n			<td>T&Uuml;RKİYE / İSTANBUL / ŞİŞLİ / ESENTEPE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Telefon No</td>\r\n			<td>+90 212 359 18 00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Denetim Mercii</td>\r\n			<td>KPMG Bağımsız Denetim ve Serbest Muhasebeci Mali M&uuml;şavirlik A.Ş.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Servis Sağlayıcı</td>\r\n			<td>TELLCOM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KEP Adresi</td>\r\n			<td>yemeksepeti@hs01.kep.tr</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tescilli Marka adı</td>\r\n			<td>Yemeksepeti</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mersis No</td>\r\n			<td>0947045746800015</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>Siparişleriniz ile ilgili destek hattımıza hemen ulaşmak i&ccedil;in web ve uygulamalar &uuml;zerinde yer alan canlı yardım butonuna tıklayabilirsiniz. G&ouml;r&uuml;şleriniz i&ccedil;in&nbsp;<a href=\"mailto:info@yemeksepeti.com\">info@yemeksepeti.com</a>&nbsp;adresine email g&ouml;nderebilir veya 444 5 445 numaralı telefondan bize ulaşabilirsiniz.</p>', 'True');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crated_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`, `surname`, `image`, `status`, `crated_at`, `updated_at`) VALUES
(2, 'hans@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$VEVRT0RlNzJ6azY5b0pNQw$u2Y3bs32YsrmqkKT/Y459Oqh8ui5Rrh7/7zUvnTq7Vo', 'Utku', 'Can', '1563bac71cefe123180119a6879ecc53.png', 'True', NULL, NULL),
(14, 'admin@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$ZmVFcVZKQmp6V25QZkdELw$jalU2jTmkZKD5sNyQToXs5IXZzkTnXpuyyotWDOYWbQ', 'admin', 'can', '19aefb98f4cca0894e3d3266357da6e0.png', 'True', NULL, NULL),
(17, 'user@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$cWR1VElGZUo2NU9laTZqOA$MIgmTn878tJr1FUum6yrygANvFQr46zU8LvtceENv/8', 'xxx', 'yy', '2fce04ab7da162531af5d1db32794fa9.png', 'True', NULL, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Tablo için indeksler `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C53D045FB1E7706E` (`restaurant_id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EB95123F12469DE2` (`category_id`);

--
-- Tablo için indeksler `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_C53D045FB1E7706E` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`);

--
-- Tablo kısıtlamaları `restaurant`
--
ALTER TABLE `restaurant`
  ADD CONSTRAINT `FK_EB95123F12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
