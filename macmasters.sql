
DROP TABLE IF EXISTS `articles`;
DROP TABLE IF EXISTS `categories`;
DROP TABLE IF EXISTS `providers`;
DROP TABLE IF EXISTS `brands`;
DROP TABLE IF EXISTS `users`;


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";




--
CREATE DATABASE IF NOT EXISTS `macmasters` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `macmasters`;


CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount` int(2) NOT NULL DEFAULT '0',
  `stock` int(10) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `outstanding` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `serialNumber` int(6) UNSIGNED DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


SET NAMES utf8mb4;

INSERT INTO `articles` (`id`, `name`, `price`, `discount`, `stock`, `category_id`, `outstanding`, `image`, `description`, `serialNumber`, `brand_id`, `createdAt`, `updatedAt`) VALUES
(43,	'Yamaha R3',	5000.00,	10,	5,	2,	1,	'[\"/motos/r32.png\",\"/motos/r3.png\"]',	'Poderosa Yamaha R3',	89984,	NULL,	'2024-12-08 12:58:38',	'2024-12-08 20:49:03'),
(44,	'Yamaha R7',	15600.00,	0,	2,	2,	1,	'[\"/motos/r7.png\",\"/motos/r72.png\"]',	'Yamaha R7',	4564563,	NULL,	'2024-12-08 20:47:52',	'2024-12-08 20:47:52'),
(45,	'Yamaha MT 10',	19000.00,	10,	5,	1,	0,	'[\"/motos/mt10.jpg\",\"/motos/mt102.jpg\"]',	'Yamaha MT 10',	3398,	NULL,	'2024-12-08 20:54:34',	'2024-12-08 20:54:34'),
(46,	'Yamaha MT 03',	45000.00,	0,	10,	2,	1,	'[\"/motos/mt03.png\",\"/motos/mt031.png\"]',	'Yamaha MT 03',	828282,	NULL,	'2024-12-08 20:55:50',	'2024-12-08 20:55:50'),
(47,	'WR 250F',	2000.00,	0,	1,	3,	1,	'[\"/motos/wr250F.jpg\",\"/motos/wr250F2.png\"]',	'WR 250 F',	889,	NULL,	'2024-12-08 20:58:28',	'2024-12-08 20:58:28'),
(48,	'TT R110E',	1990.00,	0,	2,	3,	1,	'[\"/motos/TT R110E (2).jpg\",\"/motos/TT R110E (3).jpg\"]',	'TT R1103',	83838,	NULL,	'2024-12-08 21:00:34',	'2024-12-08 21:00:34'),
(49,	'YZ 250F',	3990.00,	0,	2,	3,	1,	'[\"/motos/YZ 250F (2).png\",\"/motos/YZ 250F.png\"]',	'YZ 250F ',	83838,	NULL,	'2024-12-08 21:00:34',	'2024-12-08 21:00:34'),
(50,	'Yamaha R1',	31990.00,	0,	2,	1,	1,	'[\"/motos/r1.jpg\",\"/motos/r12.png\"]',	'Yamaha R1',	83838,	NULL,	'2024-12-08 21:00:34',	'2024-12-08 21:00:34');


CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `rating` decimal(3,0) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `brands` (`id`, `name`, `rating`) VALUES
(1, 'Yamaha', '10'),
(2, 'Kawasaki', '10'),
(3, 'Suzuki', '8');


CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `categories` (`id`, `name`, `parent_id`) VALUES
(1, 'Super Deportivas', NULL),
(2, 'Deportivas', NULL),
(3, 'Enduro', NULL),
(4, 'Scooter', NULL),
(5, 'Cruiser', NULL),
(6, 'Touring', NULL),
(7, 'Sport Touring', NULL),
(8, 'Off Road', NULL);




CREATE TABLE `providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `company` char(60) NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `address` text,
  `contact_number` int(30) UNSIGNED NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `providers` (`id`, `company`, `product_id`, `address`, `contact_number`, `createdAt`, `updatedAt`) VALUES
(1, 'Kaizen motors', 2, 'PANAMÁ, CALLE 45 SAN FRANCISCO', 813491738, '2024-12-08 22:34:17', '2024-12-08 22:34:17'),
(2, 'KAWASAKI PA', NULL, 'COCLÉ, PANAMÁ CUIDAD DE ONTARIO', 1555576684, '2024-12-08 22:36:49', '2024-12-08 22:36:49'),
(3, 'Suzuki inc.', 3, 'SAGRADA PROVINCIA DE CHARMINTELER', 1778123668, '2024-12-08 22:39:05', '2024-12-08 22:39:05');


CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(60) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `avatar` varchar(50) NOT NULL,
  `rating` float UNSIGNED DEFAULT NULL,
  `isAdmin` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `users` (`id`, `email`, `pass`, `firstName`, `lastName`, `avatar`, `rating`, `isAdmin`, `createdAt`, `updatedAt`) VALUES
(5, 'soyAdmin@gmail.com', '$2b$10$qI4d6vSkJPkpoMg8VjiaX.0RZR4H6Kt49T4LXLwVYEUhMZoy2H5e6', 'Manuel', 'Leonard', '/motos/r1.png', NULL, 1, '2024-07-20 20:09:34', '2024-07-20 20:09:34');


ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`) USING BTREE,
  ADD KEY `brand_id` (`brand_id`);


ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;


ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;


ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;


ALTER TABLE `providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;


