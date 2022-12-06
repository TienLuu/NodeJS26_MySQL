/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `food_type`;
CREATE TABLE `food_type` (
  `type_id` int DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `foods`;
CREATE TABLE `foods` (
  `food_id` int DEFAULT NULL,
  `food_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `type_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `like_res`;
CREATE TABLE `like_res` (
  `user_id` int DEFAULT NULL,
  `res_id` int DEFAULT NULL,
  `date_like` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `user_id` int DEFAULT NULL,
  `food_id` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `arr_sub_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `rate_res`;
CREATE TABLE `rate_res` (
  `user_id` int DEFAULT NULL,
  `res_id` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `date_rate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `restaurants`;
CREATE TABLE `restaurants` (
  `res_id` int DEFAULT NULL,
  `res_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `sub_food`;
CREATE TABLE `sub_food` (
  `sub_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(255) DEFAULT NULL,
  `sub_price` float DEFAULT NULL,
  `food_id` int DEFAULT NULL,
  UNIQUE KEY `sub_id` (`sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



INSERT INTO `foods` (`food_id`, `food_name`, `image`, `price`, `desc`, `type_id`) VALUES
(1, 'Com chien', 'ComchienImage', 300, 'Com chien', 1);
INSERT INTO `foods` (`food_id`, `food_name`, `image`, `price`, `desc`, `type_id`) VALUES
(2, 'Canh', 'CanhImage', 50, 'Canh', 2);
INSERT INTO `foods` (`food_id`, `food_name`, `image`, `price`, `desc`, `type_id`) VALUES
(3, 'Thit kho', 'ThitkhoImage', 290, 'Thitkho ', 3);
INSERT INTO `foods` (`food_id`, `food_name`, `image`, `price`, `desc`, `type_id`) VALUES
(4, 'Bun xao', 'BunxaoImage', 170, 'Bunxao', 4);

INSERT INTO `like_res` (`user_id`, `res_id`, `date_like`) VALUES
(1, 2, '2022-12-06 13:48:12');
INSERT INTO `like_res` (`user_id`, `res_id`, `date_like`) VALUES
(2, 1, '2022-12-06 13:48:51');
INSERT INTO `like_res` (`user_id`, `res_id`, `date_like`) VALUES
(3, 1, '2022-12-06 13:48:42');
INSERT INTO `like_res` (`user_id`, `res_id`, `date_like`) VALUES
(4, 4, '2022-12-06 13:49:03'),
(5, 2, '2022-12-06 13:49:20'),
(1, 4, '2022-12-06 13:50:17'),
(2, 4, '2022-12-06 13:50:28'),
(6, 1, '2022-12-06 13:50:51'),
(2, 2, '2022-12-06 13:51:45'),
(3, 2, '2022-12-06 13:52:32'),
(4, 1, '2022-12-06 13:52:54'),
(6, 3, '2022-12-06 13:52:54');

INSERT INTO `orders` (`user_id`, `food_id`, `amount`, `code`, `arr_sub_id`) VALUES
(1, 1, 20, '123', 'A2');
INSERT INTO `orders` (`user_id`, `food_id`, `amount`, `code`, `arr_sub_id`) VALUES
(2, 3, 30, '1234', 'A3');
INSERT INTO `orders` (`user_id`, `food_id`, `amount`, `code`, `arr_sub_id`) VALUES
(3, 1, 21, '321', 'A2');
INSERT INTO `orders` (`user_id`, `food_id`, `amount`, `code`, `arr_sub_id`) VALUES
(1, 4, 42, '213', 'A5');

INSERT INTO `rate_res` (`user_id`, `res_id`, `amount`, `date_rate`) VALUES
(1, 2, 80, '2022-12-05 23:45:34');
INSERT INTO `rate_res` (`user_id`, `res_id`, `amount`, `date_rate`) VALUES
(1, 3, 70, '2022-12-05 23:45:57');
INSERT INTO `rate_res` (`user_id`, `res_id`, `amount`, `date_rate`) VALUES
(2, 2, 50, '2022-12-05 23:46:26');
INSERT INTO `rate_res` (`user_id`, `res_id`, `amount`, `date_rate`) VALUES
(4, 1, 30, NULL),
(5, 4, 20, '2022-12-06 13:18:18'),
(6, 5, 64, '2022-12-06 13:18:52'),
(4, 6, 10, NULL),
(3, 1, 12, '2022-12-06 13:21:39');

INSERT INTO `restaurants` (`res_id`, `res_name`, `image`, `desc`) VALUES
(1, 'China', 'ChinaImage', 'China restaurant');
INSERT INTO `restaurants` (`res_id`, `res_name`, `image`, `desc`) VALUES
(2, 'Japan', 'JapanImage', 'Japan restaurant');
INSERT INTO `restaurants` (`res_id`, `res_name`, `image`, `desc`) VALUES
(3, 'Vietnam', 'VietnameImage', 'Vietnam restaurant');
INSERT INTO `restaurants` (`res_id`, `res_name`, `image`, `desc`) VALUES
(4, 'Lao', 'LaoImage', 'Lao restaurant'),
(5, 'Korea', 'KoreaImage', 'Korea restaurant'),
(6, 'Indo', 'InoImage', 'Indo restaurant');

INSERT INTO `sub_food` (`sub_id`, `sub_name`, `sub_price`, `food_id`) VALUES
(1, 'Thit', 100, 1);
INSERT INTO `sub_food` (`sub_id`, `sub_name`, `sub_price`, `food_id`) VALUES
(2, 'Ca', 90, 2);
INSERT INTO `sub_food` (`sub_id`, `sub_name`, `sub_price`, `food_id`) VALUES
(3, 'Tau Hu', 60, 1);
INSERT INTO `sub_food` (`sub_id`, `sub_name`, `sub_price`, `food_id`) VALUES
(4, 'Thit heo', 95, 3),
(5, 'Rau', 110, 3);

INSERT INTO `users` (`user_id`, `full_name`, `email`, `password`) VALUES
(1, 'Lưu Tiến', 'luutien1@gmail.com', '123');
INSERT INTO `users` (`user_id`, `full_name`, `email`, `password`) VALUES
(3, 'Tiến Lưu', 'tienluu1@gmail.com', '123');
INSERT INTO `users` (`user_id`, `full_name`, `email`, `password`) VALUES
(2, 'Tiến', 'tien@gmail.com', '123');
INSERT INTO `users` (`user_id`, `full_name`, `email`, `password`) VALUES
(4, 'Minh Tiến', 'minhtien@gmail.com', '123'),
(5, 'Luu', 'luu@gmail.com', '123'),
(6, 'Tu', 'tu@gmail.com', '123'),
(7, 'Luu Tu', 'luutu@gmail.com', '123');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;