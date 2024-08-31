-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2024 at 07:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `businessdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutme`
--

CREATE TABLE `aboutme` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `classes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aboutme`
--

INSERT INTO `aboutme` (`id`, `img`, `title`, `desc`, `classes`) VALUES
(1, 'social-media', '25,000+', 'Social media audience', 'media'),
(2, 'social', '150+', 'Clients', 'media social'),
(5, 'checkout', '700+', 'Projects completed', 'media checkout');

-- --------------------------------------------------------

--
-- Table structure for table `about_section`
--

CREATE TABLE `about_section` (
  `id` int(11) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `paragraph` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_section`
--

INSERT INTO `about_section` (`id`, `heading`, `title`, `paragraph`, `link`, `img`, `desc`) VALUES
(2, 'Hadia Shahid', 'DESIGN LIKE A PRO', 'Hello my name is HADIA SHAHID', 'order', 'vector', 'order here'),
(3, 'Hadia Shahid', 'DESIGN LIKE A PRO and make money', 'Hello my name is hadia shahid', 'Order', 'vector', 'order here'),
(4, 'Hadia Shahid', 'DESIGN LIKE A PRO <br> and make money', 'Hello my name is hadia shahid', 'order', 'vector', 'order here'),
(5, 'Hadia Shahid', 'DESIGN LIKE PRO', 'Hello my name is hadia shahid', 'Order', 'vector', 'order here'),
(6, 'Hadia Shahid', 'DESIGN LIKE A PRO', 'Hello my name is hadia shahid', 'Order', 'vector', 'order here'),
(9, 'Hadia Shahid', 'Hadia Shahid', 'Hello my name is hadia', 'Order', 'vector', 'order here'),
(10, 'Hadia Shahid', 'HADIA SHAHID', 'Hello my name is hadia shahid', 'Order', 'vector', 'order here');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `img`, `link`) VALUES
(12, 'facebook', 'https://www.facebook.com'),
(13, 'insta', 'https://www.instagram.com'),
(53, 'facebook', 'https://www.facebook.com');

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE `icons` (
  `id` int(11) NOT NULL,
  `about_section_id` int(11) DEFAULT NULL,
  `img` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`id`, `about_section_id`, `img`, `link`) VALUES
(4, 2, 'instagram-icon', 'https://facebook.com'),
(5, 2, 'facebook-icon', ' https://instagram.com'),
(6, 2, 'linkedin-icon', ' https://linkedin.com'),
(7, 3, 'instagram-icon', 'https://instagram.com'),
(8, 3, 'facebook-icon', ' https://facebook.com'),
(9, 3, 'linkedin-icon', ' https://linkedin.com'),
(10, 4, 'facebook-icon', 'https://facebook.com'),
(11, 4, ' instagram-icon', ' https://instagram.com'),
(12, 4, ' linkedin-icon', ' https://linkedin.com'),
(13, 5, 'instagram-icon', 'https://facebook.com'),
(14, 5, 'facebook-icon', ' https://instagram.com'),
(15, 5, 'linkedin-icon', ' https://linkedin.com'),
(16, 6, 'instagram-icon', 'https://facebook.com'),
(17, 6, 'facebook-icon', ' https://instagram.com'),
(18, 6, 'linkedin-icon', ' https://linkedin.com'),
(23, 9, 'facebook-icon', 'https://facebook.com'),
(24, 9, 'instagram-icon', 'https://instagram.com'),
(25, 9, 'linkedin-icon', 'https://linkedin.com'),
(26, 10, 'facebook-icon', 'https://facebook.com'),
(27, 10, 'instagram-icon', 'https://instagram.com'),
(28, 10, 'linkedin-icon', 'https://linkedin.com');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL,
  `about_section_id` int(11) DEFAULT NULL,
  `list_item` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `about_section_id`, `list_item`, `link`) VALUES
(6, 2, 'Home', '#hero-section'),
(7, 2, 'About', '#aboutme-section'),
(8, 2, 'Services', '#services-section'),
(9, 2, 'Packages', '#packages-section'),
(10, 2, 'Contacts', '#footer-section'),
(11, 2, 'Dashboard', 'forms/dashboard.php'),
(12, 3, 'Home', '#about'),
(13, 3, ' About', '#aboutme-section'),
(14, 3, ' Services', '#services-section'),
(15, 3, ' Pricing', ' #packages-section'),
(16, 3, ' Contact', ' #footer-section'),
(17, 3, ' Dashboard', ' forms/dashboard.php'),
(18, 4, 'Home', '#about'),
(19, 4, ' About', ' #aboutme-section'),
(20, 4, ' Services', '#services-section'),
(21, 4, ' Pricing', '#packages-section'),
(22, 4, ' Contact', ' #footer-section'),
(23, 4, ' Dashboard', ' forms/dashboard.php'),
(24, 5, 'Home', '#about'),
(25, 5, ' About', '#aboutme-section'),
(26, 5, ' Services', '#services-section'),
(27, 5, ' Pricing', '#packages-section'),
(28, 5, ' Contact', ' #footer-section'),
(29, 5, ' Dashboard', 'forms/dashboard.php'),
(30, 6, 'Home', '#about'),
(31, 6, ' About', ' #aboutme-section'),
(32, 6, ' Services', ' #services-section'),
(33, 6, ' Pricing', '#packages-section'),
(34, 6, ' Contact', ' #footer-section'),
(35, 6, ' Dashboard', 'forms/dashboard.php'),
(48, 9, 'Home', '#hero-section'),
(49, 9, ' About', '#aboutme-section'),
(50, 9, ' Services', '#services-section'),
(51, 9, ' Pricing', '#packages-section'),
(52, 9, ' Contact', '#footer-section'),
(53, 9, ' Dashboard', 'forms/dashboard.php'),
(54, 10, 'Home', '#about'),
(55, 10, ' About', '#aboutme-section'),
(56, 10, ' Services', '#services-section'),
(57, 10, ' Pricing', '#packages-section'),
(58, 10, ' Contact', '#footer-section'),
(59, 10, ' Dashboard', 'forms/dashboard.php');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` varchar(50) NOT NULL,
  `button_text` varchar(50) NOT NULL,
  `classes` varchar(50) NOT NULL,
  `popular` tinyint(1) NOT NULL,
  `features` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `title`, `price`, `button_text`, `classes`, `popular`, `features`) VALUES
(4, 'Basic', '200$', 'Buy now', 'basic', 0, 'Hadia Shahid,Fahid Javid'),
(5, 'Standard', '500$', 'Buy now', 'standard', 1, 'Hadia Shahid,Fahid Javid,QuraTullain'),
(6, 'Premium', '1k$', 'Buy now', 'premium', 0, 'Hadia Shahid,Fahid Javid,QuraTullain,Junaid Shakir');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `image`, `description`) VALUES
(16, 'Web design', 'web-design', 'Hello this is web design section of services'),
(17, 'App Design', 'app-design', 'Hello this is a app design section of services');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(11) NOT NULL,
  `about_section_id` int(11) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `cross_img` varchar(255) NOT NULL,
  `classes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `about_section_id`, `image`, `desc`, `cross_img`, `classes`) VALUES
(2, 2, 'photoshop', 'Photoshop', 'cross', 'photoshop'),
(3, 3, 'adobe', 'Illustrator', 'cross', 'adobe'),
(4, 4, 'photoshop', 'Photoshop', 'cross', 'photoshop'),
(5, 4, 'Illustrator', 'cross', 'adobe', ''),
(6, 5, 'Figma', 'Figma', 'cross', 'figma'),
(7, 6, 'photoshop', 'Photoshop', 'cross', 'photoshop'),
(8, 6, 'adobe', 'Illustrator', 'cross', 'adobe'),
(9, 6, 'Figma', 'Figma', 'cross', 'figma'),
(12, 9, 'photoshop', 'Photoshop', 'cross', 'photoshop'),
(13, 9, 'adobe', 'Illustrator', 'cross', 'adobe'),
(14, 9, 'Figma', 'Figma', 'cross', 'figma'),
(15, 10, 'photoshop', 'Photoshop', 'cross', 'photoshop'),
(16, 10, 'adobe', 'Illustrator', 'cross', 'adobe'),
(17, 10, 'Figma', 'Figma', 'cross', 'figma');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `subject`, `message`, `submitted_at`) VALUES
(15, 'hadia shahid', 'hadiashahid202@gmail.com', ' contact-form', 'my name is hadia', '2024-08-23 18:15:21'),
(21, 'Hadia Shahid', 'fahidjavid@gmail.com', ' contact-form', 'hello', '2024-08-23 18:37:02'),
(22, 'Hadia Shahid', 'fahidjavid@gmail.com', ' hello', 'hello', '2024-08-24 07:09:32'),
(23, 'Hadia Shahid', 'fahidjavid@gmail.com', ' hello', 'hello', '2024-08-24 07:09:38'),
(44, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(45, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(46, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(47, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(48, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(49, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(50, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(51, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(52, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(53, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(54, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(55, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(56, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(57, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(58, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(59, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(60, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(61, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(62, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(63, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(64, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(65, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(66, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(67, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(68, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(69, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(70, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(71, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(72, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(73, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(74, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(75, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(76, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(77, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(78, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(79, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(80, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(81, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(82, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(83, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(84, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(85, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(86, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(87, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(88, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(89, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(90, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(91, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(92, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(93, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(94, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(95, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(96, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(97, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(98, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(99, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(100, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(101, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(102, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(103, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(104, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(105, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(106, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(107, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(108, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(109, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(110, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(111, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(112, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(113, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(114, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(115, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(116, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(117, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(118, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(119, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(120, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(121, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(122, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(123, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(124, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(125, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(126, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(127, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(128, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(129, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(130, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(131, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(132, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(133, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(134, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(135, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(136, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(137, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(138, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(139, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(140, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(141, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(142, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(143, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(144, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(145, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(146, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(147, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(148, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(149, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(150, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(151, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(152, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(153, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(154, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(155, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(156, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(157, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(158, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(159, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(160, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(161, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(162, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(163, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(164, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(165, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(166, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(167, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(168, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(169, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(170, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(171, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(172, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(173, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(174, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(175, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(176, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(177, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(178, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(179, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(180, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(181, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(182, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(183, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(184, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(185, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(186, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(187, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(188, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(189, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(190, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(191, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(192, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(193, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(194, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(195, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(196, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(197, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(198, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(199, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(200, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(201, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(202, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(203, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(204, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(205, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(206, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(207, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(208, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(209, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(210, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(211, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(212, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(213, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(214, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(215, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(216, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(217, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(218, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(219, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(220, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(221, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(222, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(223, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(224, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(225, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(226, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(227, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(228, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(229, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(230, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(231, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(232, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(233, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(234, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(235, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(236, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(237, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(238, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(239, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(240, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(241, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(242, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(243, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(244, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(245, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(246, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(247, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(248, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(249, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(250, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(251, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(252, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(253, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(254, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(255, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(256, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(257, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(258, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(259, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(260, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(261, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(262, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(263, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(264, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(265, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(266, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(267, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(268, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(269, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(270, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(271, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(272, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(273, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(274, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(275, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(276, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(277, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(278, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(279, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(280, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(281, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(282, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(283, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(284, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(285, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(286, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(287, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(288, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(289, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(290, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(291, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(292, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(293, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(294, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(295, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(296, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(297, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(298, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(299, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(300, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(301, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(302, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(303, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(304, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(305, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(306, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(307, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(308, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(309, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(310, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(311, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(312, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(313, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(314, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(315, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(316, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(317, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(318, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(319, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(320, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(321, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(322, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(323, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(324, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(325, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(326, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(327, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(328, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(329, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(330, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(331, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(332, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(333, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(334, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(335, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(336, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(337, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(338, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(339, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(340, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(341, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(342, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(343, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(344, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(345, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(346, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(347, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(348, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(349, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(350, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(351, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(352, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(353, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(354, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(355, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(356, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(357, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(358, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(359, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(360, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(361, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(362, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(363, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(364, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(365, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(366, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(367, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(368, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(369, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(370, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(371, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(372, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(373, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(374, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(375, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(376, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(377, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(378, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(379, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(380, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(381, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(382, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(383, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(384, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(385, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(386, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(387, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(388, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(389, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(390, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(391, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(392, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(393, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(394, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(395, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(396, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(397, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(398, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(399, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(400, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(401, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(402, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(403, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(404, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(405, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(406, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(407, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(408, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(409, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(410, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(411, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(412, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(413, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(414, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(415, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(416, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56'),
(417, 'hadia shahid', 'hadiashahid202@gmail.com', 'contact-form', 'my name is hadia', '2024-08-24 01:15:21'),
(418, 'Hadia Shahid', 'hadiashahid202@gmail.com', 'contact-form', 's', '2024-08-24 01:15:27'),
(419, 'Hadia Shahid', 'fahidjavid@gmail.com', 'contact-form', 'hello', '2024-08-24 01:37:02'),
(420, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:32'),
(421, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:09:38'),
(422, 'Hadia Shahid', 'fahidjavid@gmail.com', 'hello', 'hello', '2024-08-24 14:12:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutme`
--
ALTER TABLE `aboutme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_section`
--
ALTER TABLE `about_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_section_id` (`about_section_id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_section_id` (`about_section_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_section_id` (`about_section_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutme`
--
ALTER TABLE `aboutme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `about_section`
--
ALTER TABLE `about_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=423;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `icons`
--
ALTER TABLE `icons`
  ADD CONSTRAINT `icons_ibfk_1` FOREIGN KEY (`about_section_id`) REFERENCES `about_section` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_ibfk_1` FOREIGN KEY (`about_section_id`) REFERENCES `about_section` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_media`
--
ALTER TABLE `social_media`
  ADD CONSTRAINT `social_media_ibfk_1` FOREIGN KEY (`about_section_id`) REFERENCES `about_section` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
