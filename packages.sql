SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` varchar(50) NOT NULL,
  `button_text` varchar(50) NOT NULL,
  `classes` varchar(50) NOT NULL,
  `popular` tinyint(1) NOT NULL,
  `features` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `packages` (`id`, `title`, `price`, `button_text`, `classes`, `popular`, `features`) VALUES
(4, 'Basic', '200$', 'Buy now', 'basic', 0, 'Hadia Shahid,Fahid Javid'),
(5, 'Standard', '500$', 'Buy now', 'standard', 1, 'Hadia Shahid,Fahid Javid,QuraTullain');


ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;
