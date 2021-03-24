-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 21, 2020 at 10:17 AM
-- Server version: 5.5.62-log
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE IF NOT EXISTS `reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flyingFrom` char(50) NOT NULL,
  `flyingTo` char(50) NOT NULL,
  `departDate` date NOT NULL,
  `returnDate` date NOT NULL,
  `numberOfAdults` int(1) NOT NULL,
  `numberOfChilder` int(1) NOT NULL,
  `travelClass` char(15) NOT NULL,
  `price` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'Semir', '$2y$10$Cxa6kekJc6BNf7xWtystWe7dAQL2UPPTnItEoZ1GoDV69Via7lAPO'),
(2, 'Amina', '$2y$10$Qyi2aDU29aZMiUsMehPtKe.g5HeaKMC0Ndaz7kztp9tQzOCWHnHgC'),
(3, 'Nejra', '$2y$10$tYUaYS0IaJIxvWLXEGh2X.HGMyqBNTUWU0fdk5ywW5IChxgG3Hw7y'),
(4, 'Amila', '$2y$10$z7Fko3hiw.Kr6Nnn9owkqO0ur/GSd6aCSRfmbZ9cNa1iC3ONa.rNm'),
(5, 'Hatidza', '$2y$10$pkq3dMFj3WN6weXgLdOWQ.KKiUlBdZeV7r8xyLwCnn3HfhU58yJzy'),
(6, 'test', '$2y$10$R0GKWxRKXrI4vMds5VOQMuRBjxBjQz.Kj6MKg634smEr45sEQ3NSy'),
(7, 'test1', '$2y$10$Pis1c2Rs5tFXh0bwspU9n.Rtz0bh/IOX2DZiXkrxET98Rs4zOcyfu'),
(8, 'test2', '$2y$10$YnJB6BPN7AtP8pORSa7D0OYy8Hbbr2.rcc66w.FvuIinAmcQwRZzS'),
(9, 'testic', '$2y$10$tNBwb.jKADvjVG2V/v8l3ue/qqvuXbM2g/v/MC0bJDsQk0MS8WVyO'),
(10, 'Neko', '$2y$10$S5qkqafU79VbF0bu.VD9.OYvYsd4ETpDjX9iIPdEyyZcJUf8y6xT.'),
(11, 'Novi', '$2y$10$qRK2vUFF1BqdJGvqs0FVFOCzaf.x580E./9NgXxgJ40mPuklayRji'),
(12, 'Final', '$2y$10$40cxBxl0H8PGpJ3uIMJSMu6dRFaMhjSTPd7JwcgsMJZV9SflyDhCW'),
(13, 'Proba', '$2y$10$LlA8D8457Tgn8WArMVVwCuUE9c2MpgZ1Y9Z.9.cXiydZyq.m2Br9G');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
