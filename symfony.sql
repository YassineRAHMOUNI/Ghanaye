-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 15, 2021 at 09:45 PM
-- Server version: 8.0.26-0ubuntu0.20.04.2
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `symfony`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `parent_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `title`, `description`, `keywords`, `status`, `create_at`, `image`) VALUES
(29, 0, 'Alimentation', 'Alimentation', 'Alimentation', 'True', '2021-07-02 10:00:01', NULL),
(32, 0, 'Agriculture', 'Agriculture', 'Agriculture', 'True', '2021-07-18 17:22:43', '2a87c560f6234cb5e18111b0fcc2b895.png'),
(33, 32, 'Chemicals', 'Chemicals', 'Chemicals', 'True', '2021-07-18 17:27:32', 'd65c2a983e1390ca33657851c4039401.png'),
(34, 32, 'Machinery and Tools', 'Machinery and Tools', 'Machinery and Tools', 'True', '2021-07-18 17:29:15', 'fe0db82bbcc25f919b0fcc4772bcfe18.png'),
(35, 32, 'Other Agricultural Items', 'Other Agricultural Items', 'Other Agricultural Items', 'True', '2021-07-18 17:32:57', 'f4af29b7b6348c4606cb29978d36c971.png'),
(36, 32, 'Seeds & Plants', 'Seeds & Plants', 'Seeds & Plants', 'True', '2021-07-18 17:34:01', 'a48b3e22f6e42f7bd6266c5f2c811a11.png'),
(37, 0, 'Babies & Kids', 'Babies & Kids', 'Babies & Kids', 'True', '2021-07-18 17:35:31', '4ab4630c475173506512a88c467133af.png'),
(38, 37, 'Babies kids accessories', 'Babies kids accessories', 'Babies kids accessories', 'False', '2021-07-18 17:37:14', '4faa2f066ceb6bf1b26da797c023f116.png'),
(39, 37, 'Child Care products', 'Child Care products', 'Child Care products', 'True', '2021-07-18 17:40:57', 'ddc1adf16301c1c1deb1829e008991c0.png'),
(40, 37, 'Children fourniture', 'Children fourniture', 'Children fourniture', 'True', '2021-07-18 17:43:29', '4b4d951dd3df74eb843bcccf4a414caf.png'),
(41, 0, 'Accessories for Animals', 'Accessories for Animals', 'Accessories for Animals', 'True', '2021-07-20 16:13:13', '09c7da91ec7cf7030eaab72ee86f77c7.png'),
(42, 0, 'Audio _ Music', 'Audio _ Music', 'Audio _ Music', 'True', '2021-07-20 16:14:52', '3d4bdee9fa5fcc6f592a49f951bd4c71.png'),
(43, 0, 'Babies _ Kids Accessories', 'Babies _ Kids Accessories', 'Babies _ Kids Accessories', 'True', '2021-07-20 16:15:55', 'f0297b4ae24329849efc80ec5397dcf9.png'),
(44, 0, 'Automotive Services', 'Automotive Services', 'Automotive Services', 'True', '2021-07-20 19:41:47', 'd5930add181d4012a4bcd8a9a37c97c4.png'),
(45, 0, 'Bags', 'Bags', 'Bags', 'True', '2021-07-20 19:44:50', '9e3be9395bb2a8ee8a9706cfc29555e4.png'),
(46, 0, 'Beauty Products', 'Beauty Products', 'Beauty Products', 'True', '2021-07-20 19:45:33', 'f95f54fdd54454eed08d97ccfa711262.png'),
(47, 0, 'Buses _ Microbuses', 'Buses _ Microbuses', 'Buses _ Microbuses', 'True', '2021-07-20 19:46:37', '9c992e752622a8fb3136c459db0049d2.png'),
(48, 0, 'Business _ Industry', 'Business _ Industry', 'Business _ Industry', 'True', '2021-07-20 19:47:39', 'f400c13d770148d3b33c581cf24e7336.png'),
(49, 0, 'Building Materials', 'Building Materials', 'Building Materials', 'True', '2021-07-20 19:48:53', 'cc06218a865a7597d814d6c1397a795c.png');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `productId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `favorite`
--

INSERT INTO `favorite` (`id`, `userId`, `productId`) VALUES
(1, 40, 75),
(2, 40, 75);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `product_id`, `image`) VALUES
(82, 60, 'f8e1c08088037126f014523894fb840e.jpeg'),
(85, 61, '6f9259dcbdc2299ac1c0f7c7ee0d0c0a.jpeg'),
(86, 61, '27e394b0a1c57d53582048bc444cfee5.jpeg'),
(87, 61, '9c0d973f313e49e0107f5dc519de0952.jpeg'),
(88, 62, 'd50a1cd01ed9b292dce5a1736eb08205.jpeg'),
(89, 69, '3ca4cb4052bdab4e229c11c37af8f70a.jpeg'),
(90, 70, 'b932d7ffa7ff71f467dedeb860691e12.jpeg'),
(93, 75, 'e222ad10d5a60332cb2041022b371a24.jpeg'),
(94, 74, '2c352e68724872e1ea542e8493edbae3.jpeg'),
(95, 73, '9eaed940e9addfc18c1bbdd5c7118098.jpeg'),
(96, 72, 'ff1d5dd61d2f095e28790710a67bbac4.jpeg'),
(97, 68, 'acdaf70998e480513e98b37b94ed16d1.jpeg'),
(98, 80, 'af37a5d9aeae917494e5b68b06fdccaa.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `image_setting`
--

CREATE TABLE `image_setting` (
  `id` int NOT NULL,
  `slider_image_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_image_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anasayfa_image_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anasayfa_image_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anasayfa_image_three` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anasayfa_image_four` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anasayfa_image_five` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anasayfa_image_six` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_kampanya1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_kampanya_iki` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_kampanya_uc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_kampanya_dort` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_kampanya_bes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_kampanya_alti` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urunler_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hakkimizda_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iletisim_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referans_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kampanya_link_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kampanya_link_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `id` int NOT NULL,
  `orderid` int DEFAULT NULL,
  `userid` int DEFAULT NULL,
  `productid` int DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `userid` int DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipinfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher_id` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `pprice` double DEFAULT NULL,
  `sprice` double DEFAULT NULL,
  `minamout` int DEFAULT NULL,
  `detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `category_id` int DEFAULT '0',
  `user_id` int DEFAULT '0',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region_Id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `keywords`, `description`, `type`, `publisher_id`, `year`, `amount`, `pprice`, `sprice`, `minamout`, `detail`, `image`, `category_id`, `user_id`, `status`, `create_at`, `brand`, `region_Id`) VALUES
(68, 'Fatala', 'Agriculture, Chemicals, Home & Garden, Other Home Products', 'Kills all flying insects and its an odourless spray as well Kills all flying insects and its an odourless spray as well Kills all flying insects and its an odourless spray as well Kills all flying insects and its an odourless spray as well', 'Chemical', 1, 2021, 200, NULL, 11, 50, '<p>&nbsp;</p>', 'd737f784c700c45849f22cca6c986be8.webp', 33, NULL, 'True', NULL, '', 0),
(69, 'kiri', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 'alimenter', NULL, 2020, 4, 4, 5, 5, '<p>&nbsp;</p>', '2641d81b7a2e98c51843247b8e805e27.jpeg', 29, NULL, 'True', NULL, '', 0),
(70, 'Picakorom', NULL, 'Picakorom  margurine Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type spe', NULL, NULL, 2030, 7, 5, 4, 4, '<p>&nbsp;</p>', '03500418dd79020eef79e7f90c947af4.jpeg', 29, NULL, 'True', NULL, '', 0),
(71, 'Machinery/power weeder', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 'Agriculture & Farming', NULL, NULL, 450, NULL, NULL, NULL, '<p>&nbsp;</p>', '6cbe9b5d3b0ec6ed326da5ffb7b3378d.jpeg', 32, NULL, 'True', NULL, '', 0),
(72, 'Clothing', 'Clothing', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 'Clothing', NULL, NULL, 99, 4, 0, NULL, '<p>&nbsp;</p>', '9925dd5401fec0c173e6433735444d11.jpeg', 38, NULL, 'True', NULL, '', 0),
(73, 'Electric Car', 'Electric Car', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 'Electric Car Jack', NULL, NULL, 54, NULL, NULL, NULL, '<p>&nbsp;</p>', '6976e2554b4629c79b3bc13f4992ff6f.jpeg', 34, NULL, 'True', NULL, '', 0),
(74, 'Rubber Seeds', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', NULL, NULL, NULL, 66, NULL, NULL, NULL, '<p>&nbsp;</p>', 'ddbe9428b4b4ccbdfb7d2f03539fdf76.jpeg', 36, NULL, 'True', NULL, '', 0),
(75, 'top and down', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', NULL, NULL, NULL, 69, NULL, NULL, NULL, '<p>&nbsp;</p>', '19ee9afad2a589af7e6dad00efa84575.jpeg', 37, NULL, 'True', NULL, '', 0),
(76, 'chokotom', 'bachkoutou chokola', 'chokotom Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', 'bachkoutou', 0, 2000, 300, 85, 100, 20, '<p>chkotom yeghleb jou3</p>', 'd933a13b2af98b28942cdcdac470f7c0.png', 29, 42, 'true', '2021-07-24 09:20:53', '', 0),
(77, 'chokotom', 'bachkoutou chokola', 'chokotom Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', 'bachkoutou', 0, 2000, 300, 85, 100, 20, '<p>chkotom yeghleb jou3</p>', '9ee930e2e56f924b432338cd3d93b7d9.jpeg', 29, 42, 'true', '2021-07-24 09:29:31', '', 0),
(78, 'Tom', 'bachkoutou chokola', 'chokotom Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', 'bachkoutou', 0, 2000, 300, 85, 100, 20, '<p>chkotom yeghleb jou3</p>', '8af1c50c6a37a627083a1042cdb48b1f.jpeg', 29, 42, 'true', '2021-07-24 09:30:34', '', 0),
(80, 'flitow', NULL, 'Kills all flying insects and its an odourless spray as well Kills all flying insects and its an odourless spray as well Kills all flying insects and its an odourless spray as well Kills all flying insects and its an odourless spray as well', NULL, NULL, NULL, 13, NULL, NULL, NULL, '<p>&nbsp;</p>', 'b081637b4004a45ad1777c1f1ea7bc42.jpeg', 33, NULL, 'True', NULL, '', 0),
(114, '1', '1', '1', '1', 1, 1, 1, 1, 1, 1, '<p>&nbsp;</p>', NULL, 29, 1, 'True', NULL, NULL, 0),
(121, 'title', 'keywords', 'description', 'type', 0, 1, 1, 1, 1, 1, '1', NULL, 3, 1, 'TRUE', '2021-08-15 13:52:09', 'brand', 0),
(122, 't', 't', '1', 't', 1, 1, 1, 1, 1, 1, '<p>&nbsp;</p>', NULL, 29, 1, 'True', NULL, '1', 9);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `name`) VALUES
(5, 'fahed'),
(6, 'test2'),
(9, 'name');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpserver` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtppaswd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpport` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutus` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `referances` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `title`, `description`, `keywords`, `company`, `address`, `fax`, `phone`, `email`, `smtpserver`, `smtpmail`, `smtppaswd`, `smtpport`, `aboutus`, `contact`, `referances`, `status`, `create_at`) VALUES
(1, 'MacroMan A.Ş', 'Erkek Ürünleri Sitesi', 'Pantolon Gömlek Kazak', 'MacroMan', 'Atatürk Caddesi Karabük Türkiye', '0505 980 9621', '0505 980 9622', 'info@macroman.com', 'smtp.gmail.com', 'domain@domain.com', '12345', '587', '<h2><strong>Hakkımızda</strong></h2><p>&nbsp;</p><p>MacroMan Mağazacılık A.Ş. Türkiye\'nin halka açık gıda ve elektronik dışı en büyük perakende grubu MacroMan&nbsp;Grup’un amiral gemisi ve Türkiye’nin lider mağaza zinciri... 1981’de ‘Çarşı’ tabelasıyla Bakırköy’de açılan mağazasıyla faaliyetlerine başlayan MacroMan&nbsp;, alışveriş dünyasını yeniliklerle tanıştırarak, sürekli büyümesini sürdürdü. 2013’te YKM’nin hisselerini alarak, sektördeki konumuna güç kattı. MacroMan&nbsp;bugün çok katlı mağazaları, tek kategoride uzmanlaşmış konsept mağazaları MacroMan&nbsp;Sports, &nbsp;Outlet Mağazaları ve MacroMan&nbsp;Mağazaları ile 6 farklı mağazacılık konsepti ile Türkiye’nin 37 ilinde 117&nbsp;mağazası ile hizmet veriyor. MacroMan&nbsp;, müşterilerine &nbsp;erke aktif spor giyimden ayakkabı ve aksesuara, kozmetikten ev dekorasyon ürünlerine kadar farklı kategorideki pek çok yerli ve yabancı marka ürünü bir arada sunuyor. Ayrıca erkek genç aktif spor giyim ve ayakkabı kategorilerinde House Of Camellia, Black Pepper, Penford, North Of Navy, Cotton Bar, T-Box, Limon Company, &nbsp;Mammaramma, Monster High, Barbie, Pink &amp; Orange, Funky Rocks, North Of Navy Kids, Limon Company Kids ile sadece Boyner ve YKM’lere özel markaları ile de dünya moda markalarını müşterileriyle buluşturuyor. MacroMan&nbsp;ve YKM Mağazaları, tüm lifestyle&nbsp;kategorilerinde müşterilerine doğru sezon, marka birliktelikleri, görsel sunum, servis ve mükemmel alışveriş düzeni ile yüksek kaliteli milyonlarca ürün sunarak müşterilerinin keyifli alışveriş deneyimi yaşamaları için hizmet veriyor.</p><p>2015’te ‘Türkiye’nin en çok sevilen ve tercih edilen alışveriş markası olma’ vizyonuyla kapsamlı bir değişim sürecini başlatan MacroMan&nbsp;, ürün ve marka çeşitliliğinden müşteri deneyimine, tedarik süreçlerinden satış kanallarına kadar birçok yeniliği hayata geçiriyor. Yenilikçi kimliğiyle e-ticaret alanında da hızla büyüyen Boyner, mağaza ve online alışverişi birleştiren “all-line” uygulamaları ile yeniliklere imza atıyor.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/faf26046c7.png\"></figure><h2>&nbsp;</h2><h2>Türkiye\'nin Lider Moda Sitesi</h2><p>macroman.com, en çok aranan marka ve tasarımcıları herkes için ulaşılabilir yapma hedefiyle Mart 2010’da yola çıktı. Kurulduğu günden itibaren modaya öncülük ederek, bu doğrultuda Türk Tasarımcılara destek olma misyonu ile bir çok Türk Tasarımcının ürünlerini internette satışa sunan ilk site oldu. 2011 yılsonu itibarı ile 6,5 milyondan fazla üyesine 900 kişilik genç bir ekip ve 1000’den fazla marka seçeneği ile hizmet veren macroman.com, kurduğu dev operasyon merkezinden her gün onbinlerce paketin sevkiyatını gerçekleştirmektedir.</p><blockquote><p><i>Amaç insanları değiştirmek değil, kim olduklarını kıyafetlerle anlatma fırsatını vermektir</i></p><p><i><strong>Dries Van Noten</strong></i></p></blockquote><h2>Dünya Devi Yatırımcılar</h2><p>macroman.com’un vizyonu, kendisine yatırım yapan fonların prestiji ile tescillidir. Kuruluşunu izleyen 6 ay içerisinde ABD merkezli dev yatırım şirketi Tiger Global’dan yatırım almıştır. Ağustos 2011’de ise Google, Amazon, Groupon, Zynga ve Twitter gibi şirketlerinin yatırımcısı olan; dünyanın en prestijli fonlarından Kleiner Perkins Caufield &amp; Byers’ın yatırımı ile daha da güçlenmiştir.</p><blockquote><p>Elbiseler, insanın ruhudur.</p><p><strong>W.Shakespeare&nbsp;</strong></p></blockquote><p>&nbsp;</p><h3>Güvenli Alışveriş</h3><p>macroman.com, veri iletiminde 128 bit şifreleme ile iletilen bilgilerin güvenliğini sağlayan SSL sertifikası kullanmaktadır. macroman.com’da kredi kartı bilgileriniz yalnızca sipariş işlemi gerçekleştirilirken kullanılır ve veri tabanında kayıtlı olarak tutulmaz. macroman.com, online alışverişi daha güvenli hale getirmek için en yüksek güvenlik yöntemi olan yeşil bar sertifikasını Türkiye’de ilk alan sitelerden biri olduğu gibi, aynı güvenlik sistemine sahip Facebook e-mağazası ile üyelerine Facebook’tan çıkmadan alışveriş kolaylığı sağlamaktadır.</p><blockquote><p>Çok ama önemsiz kıyafete sahip olmaktansa, kaliteli ama az şey olması çok daha iyidir.</p><p><strong>Rachel Zoe</strong></p></blockquote><figure class=\"image\"><img src=\"http://www.resimag.com/p1/88958e06c3.png\"></figure><h3>Kalite ve Orijinallik Garantisi</h3><p>Satılan ürünlerin orijinalliği ve kalitesi, ürünlerin seçim aşamasında macroman.com’a özel geliştirilmiş T29 testi ile, depoda paketleme aşamasında ise %100 kalite kontrolü yapan özel operasyon hattı ile iki defa test edilmektedir.</p><h3>En iyi Müşteri Deneyimi</h3><p>En iyi müşteri deneyimini yaşatmayı hizmet anlayışının merkezine koyan macroman.com, 7 gün 24 saat ulaşılabilen müşteri hizmetleri ekibi, ve üyeleri ile birebir iletişim kurduğu Facebook, twitter, Google+ kanalları aracılığı ile sürekli ulaşılabilir durumdadır.</p><p>macroman.com’dan almış olduğunuz bir ürünü herhangi bir sebeple iade etmek isterseniz, 15 gün içinde kolayca ve ücretsiz olarak geri gönderebilir, üstelik iade ettiğiniz ürün için kargo parası dahil tüm ödemiş olduğunuz tutarı iade alırsınız.</p><blockquote><p>Boşver be yaşı başı,Gönlün ne kadar şık sen ondan haber ver? Şöyle atıp koyu grileri, siyahları sabahtan Sarı bir kaşkol atabiliyor musun boynuna, ondan haber ver…</p><p><strong>Can Yücel</strong></p></blockquote><p>&nbsp;</p>', '<h2>Nasıl yardımcı olabiliriz?</h2><p>İletişim formumuzu doldurarak, ihtiyacınızı belirtin, Size özel en teknolojik çözümleri sunalım.</p><p>Sosyal Medya\'da biz!</p><p>Adınız / Soyadınız:</p><p>E-Mail Adresiniz:</p><p>Konu:</p><p>Telefon:</p><p>Mesaj:</p><p>&nbsp;</p>', '<h2>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Referanslar</h2><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/952a9e7124.png\"></figure>', NULL, '2018-12-06 04:35:39');

-- --------------------------------------------------------

--
-- Table structure for table `shopcart`
--

CREATE TABLE `shopcart` (
  `id` int NOT NULL,
  `userid` int DEFAULT NULL,
  `productid` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `addres` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `tel`, `addres`, `type`, `status`, `city`, `create_at`) VALUES
(40, 'Yassine', 'yassine@gmail.com', '$2y$13$.7QPRekEyW8EZWa8hB9/6eFGH7kloMQF6XnOjA8C9IUqtk717rQMm', '0505050505', 'Tunis', 'Admin', 'True', 'Tunis', '2021-07-01 10:17:36'),
(42, 'he_trabelsi', 'he.trabelsi@gmail.com', '$2y$10$mwFzK.z.jRegJvmJUNNUc.IfxoHu7thNtJXsx6mXMS2yKhW4tJmQm', '2222222', '22', 'Member', '1', 'Tunis', '2021-07-18 21:09:27'),
(45, 'honson', 'farhati@gmail.com', '$2y$10$INzjlDRK88cZbLNwW2G/gOBVRgmtYfgtR/knPhI8LZ5M4nNdSnbl6', '1234', 'tunis', 'Member', '1', 'tunis', '2021-07-23 09:42:46'),
(46, 'honson', 'n@gmail.com', '$2y$10$sFZF897wHDIedBds2DeI8OwE52M/i9KZsRU6SMexYTWlJRegaqquK', '1234', 'tunis', 'Member', '1', 'tunis', '2021-07-23 09:47:08'),
(47, 'honson', 'riadh@gmail.com', '$2y$10$DPueRbOpynBpSi.3jbF9Se6P4MvsUFpPqOe1tvBg4Sx24OBLlWcUm', '1234', 'tunis', 'Member', '1', 'tunis', '2021-07-23 10:05:05'),
(48, '', '', '$2y$10$GNG0mnk3oIZXufKCxa9Gx.ThgpqTikN3GXcUq0cauyMyG2DA4anOa', '', '', 'Member', '1', '', '2021-07-23 10:15:11'),
(49, 'honson', 'r@gmail.com', '$2y$10$884WEtWBJwlfOcPSK54hWOxSKQp3oqXFF4ZVrzBorVXYKCDFiDMcK', '1234', 'tunis', 'Member', '1', 'tunisipm', '2021-07-23 10:49:09'),
(50, 'honson', 'ho@gmail.com', '$2y$10$2CuAn/fM2D45KnmX6F7DR.rwQMUE3yCe4uoX2FarJKvTFdksW5LNK', '1234', 'tunis', 'Member', '1', 'tunis', '2021-07-23 10:58:24'),
(51, 'honson', 'honson@gmail.com', '$2y$10$Mg/pw7WsCeMl2.919WeF2uMAkJea2kOWDBCrITWL6/CqbkUjdE6Hm', '1234', 'tunis', 'Member', '1', 'tunis', '2021-07-23 11:02:46'),
(52, 'honson', 'honsmon@gmail.com', '$2y$10$SMrp5pqflTXQqxGwEjmHhe7nIFUMbvUcZmYdTrwNa6ZfuicTfqMri', '1234', 'tunis', 'Member', '1', 'tunis', '2021-07-23 12:21:15'),
(53, 'honson', 'hoknson@gmail.com', '$2y$10$SB23mI02eZB4yveNnTv29./fWDVO8FJW1t551mBxw7SVwcd/XJkbG', '1234', 'tunis', 'Member', '1', 'tunis', '2021-07-23 18:54:01'),
(54, '{\"dispatchConfig\":nu', '{\"dispatchConfig\":null,\"_targetInst\":null,\"_dispat', '$2y$10$/qxzIWHvmV/Id0OjlABGNewO0qpCEahjqvuYPzYJUjPyKfL6oeKLq', '{\"dispatchConfig\":nu', '', 'Member', '1', '{\"dispatchConfig\":null,\"_targe', '2021-07-23 18:56:42'),
(55, 'lk', 'zeme@lmksd.kp', '$2y$10$vvbsEZMe.vQuOJAqBe6LjuPjUTGNdFmYIAWsl8oXtosPA26rOaU6O', '234', '', 'Member', '1', 'mlklm', '2021-07-23 19:05:51'),
(56, 'client1', 'f@gmail.com', '$2y$10$qKjyYC7HBrtYnFpsGXKByellXJ2QrLcMAUp7KWbLPjZ4VcZBQFTP2', '3454', '', 'Member', '1', 'fahs', '2021-07-24 13:02:58'),
(57, 'r', 'fr@gmail.com', '$2y$10$jHMkfDScU6I7DjHZ.qOPzur9Ui2MzVqxlaOsErANefj7uSykct/0i', '2345', '', 'Member', '1', 'fahs', '2021-07-24 13:30:04'),
(58, 'ya', 'ya@gmail.com', '$2y$10$nmTq74Rd7E13MkK5F4nLfeP0Uem2CXjJr.hOy8.GuM3NBbfAxDynu', '234', '', 'Member', '1', 'sel', '2021-07-24 13:31:33'),
(59, 'riadh', 'farhatired@gmail.com', '$2y$10$RE0nx8x4X1.aTu4TcJhk8efA7EtTx5dGo1TWY6x8.0zR6mwzrXEMy', '23456', '', 'Member', '1', 'elfahs', '2021-08-06 10:20:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_setting`
--
ALTER TABLE `image_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopcart`
--
ALTER TABLE `shopcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `image_setting`
--
ALTER TABLE `image_setting`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shopcart`
--
ALTER TABLE `shopcart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
