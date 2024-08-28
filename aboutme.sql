SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `aboutme` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `classes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `aboutme` (`id`, `img`, `title`, `desc`, `classes`) VALUES
(1, 'social-media', '25,000+', 'Social media audience', 'media'),
(2, 'social', '150+', 'Clients', 'media social'),
(3, 'checkout', '700+', 'Projects completed', 'media checkout');


ALTER TABLE `aboutme`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `aboutme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;
