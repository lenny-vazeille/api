-- -------------------------------------------------------------
-- TablePlus 4.5.2(402)
--
-- https://tableplus.com/
--
-- Database: api-wine-list
-- Generation Time: 2022-01-03 16:23:25.4950
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `collection_wine`;
CREATE TABLE `collection_wine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wine_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `wine_red`;
CREATE TABLE `wine_red` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `liters` decimal(5,2) NOT NULL,
  `prices` decimal(5,2) NOT NULL,
  `wine_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `wine_rose`;
CREATE TABLE `wine_rose` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `liters` decimal(5,2) NOT NULL,
  `prices` decimal(5,2) NOT NULL,
  `wine_year` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `wine_white`;
CREATE TABLE `wine_white` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `liters` decimal(5,2) NOT NULL,
  `prices` decimal(5,2) NOT NULL,
  `wine_year` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `collection_wine` (`id`, `wine_name`) VALUES
(1, NULL),
(2, NULL),
(3, NULL),
(4, 'red_wine');

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20211201123038', '2021-12-01 12:30:59', 135),
('DoctrineMigrations\\Version20211201124346', '2021-12-01 12:43:57', 130),
('DoctrineMigrations\\Version20211201125449', '2021-12-01 12:55:01', 137),
('DoctrineMigrations\\Version20211201125742', '2021-12-01 12:57:51', 112),
('DoctrineMigrations\\Version20211201130215', '2021-12-01 13:02:29', 123),
('DoctrineMigrations\\Version20211201135140', '2021-12-01 13:51:56', 99),
('DoctrineMigrations\\Version20211201150140', '2021-12-01 15:01:55', 99),
('DoctrineMigrations\\Version20211201150448', '2021-12-01 15:05:25', 126),
('DoctrineMigrations\\Version20211202142107', '2021-12-02 14:21:24', 172),
('DoctrineMigrations\\Version20211202154155', '2021-12-02 15:42:08', 161),
('DoctrineMigrations\\Version20211206122115', '2021-12-06 12:21:27', 278),
('DoctrineMigrations\\Version20211206124001', '2021-12-06 12:40:09', 153),
('DoctrineMigrations\\Version20211206140051', '2021-12-06 14:00:58', 142),
('DoctrineMigrations\\Version20211206140519', '2021-12-06 14:05:49', 156),
('DoctrineMigrations\\Version20220103144752', '2022-01-03 14:48:07', 226);

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1, 'morgan@live.fr', '[]', '$2y$13$r.euzvt1eRLD0BG3f9Wp4OE72JxJbj3iQHd3MsV6KzEeZb3kGPkLC'),
(2, 'lenny@live.fr', '[]', '$2y$13$sCJPcARqarSSTrBAeWWNxusogB3YhGaL0dgBnYXmTHYW7EuOOAlz2'),
(3, 'sofiane@live.fr', '[]', '$2y$13$5RlGl6kvsuREoNY75MoCsOPZ0Fp7V4xDlXgi5.Jl77EXiYkniHm7O'),
(4, 'valentin@live.fr', '[]', '$2y$13$Eh6JdlH8g7iQI.fEFHj1uuxByeMNCcPlDilwoxoK9UNkW.5DZerau');

INSERT INTO `wine_red` (`id`, `title`, `origin`, `liters`, `prices`, `wine_year`, `email`, `published_date`) VALUES
(4, 'bordeaux', 'bordeaux', 1.00, 10.00, '10', 'ferfer', '0000-00-00 00:00:00'),
(5, 'bordeaux', 'bordeaux', 1.00, 1.00, '10', 'ferferfe', '2021-12-01 13:02:50'),
(6, 'bordeauxdeux', 'cher moi', 1.00, 100.00, '1900', 'string@hotmail.com', '2021-12-01 13:05:00'),
(7, 'string', 'string', 2.45, 59.40, '0', 'string', '2021-12-01 15:07:06');

INSERT INTO `wine_rose` (`id`, `title`, `origin`, `liters`, `prices`, `wine_year`, `email`, `published_date`) VALUES
(2, 'lenny', 'string', 0.10, 23.00, 0, 'string', '2021-12-02 15:44:44');

INSERT INTO `wine_white` (`id`, `title`, `origin`, `liters`, `prices`, `wine_year`, `email`, `published_date`) VALUES
(1, 'string', 'string', 1.10, 100.40, 1200, 'string', '2021-12-01 13:53:47');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;