SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `services` (`id`, `title`, `image`, `description`) VALUES
(6, 'Web Design', 'web-design.png', 'Hello,... this is a web-design section of services  '),
(7, 'Web Design', 'img.png', 'hello my name is hadia shahid\r\n'),
(8, 'App-design', 'assets/img/icons/app-design.png', 'Hello,....this is a app-design section of services');


ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

