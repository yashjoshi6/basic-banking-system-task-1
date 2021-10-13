-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 12, 2021 at 07:55 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `sno` int(3) NOT NULL AUTO_INCREMENT,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`sno`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(6, 'Sai', 'Bhooshan', 5000, '2021-06-05 20:41:06'),
(5, 'Komal', 'Sanika', 5000, '2021-06-03 21:49:16'),
(4, 'Bhooshan', 'Akshay', 1, '2021-04-08 14:58:55'),
(3, 'Sachin', 'Komal', 100, '2021-04-08 14:55:43'),
(2, 'Sandesh', 'Sachin', 9, '2021-04-08 18:08:56'),
(7, 'Sanika', 'Sai', 5000, '2021-06-05 23:34:40'),
(8, 'Tanmay', 'Sandesh', 5000, '2021-06-06 10:42:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `balance` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Sandesh', 'sandesh1458@gamil.com', 30001),
(2, 'bhooshan', 'bhoossh29@gamil.com', 55144),
(3, 'Sachin', 'sachinc17@gamil.com', 50004),
(4, 'komal', 'komal6@gamil.com', 60000),
(5, 'Krishna', 'krish4@gamil.com', 40008),
(6, 'Akshay', 'akshayja45@gamil.com', 35000),
(7, 'Chaitanya', 'chaitanya222@gamil.com', 55144),
(8, 'Sanika', 'sanika18@gamil.com', 45017),
(9, 'Tanmay', 'tanmayja44@gamil.com', 16922),
(10, 'sai', 'saigore15@gamil.com', 60044);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
