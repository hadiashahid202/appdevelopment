CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `users` (`name`, `email`, `subject`, `message`, `submitted_at`) VALUES
('hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-23 18:15:21'),
('Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-23 18:15:27'),
('Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-23 18:37:02'),
('Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 07:09:32'),
('Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 07:09:38'),
('Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 07:12:56');
