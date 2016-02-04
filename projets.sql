-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 03, 2016 at 11:10 AM
-- Server version: 5.6.28-0ubuntu0.15.10.1
-- PHP Version: 5.6.11-1ubuntu3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Trombinoscope`
--

-- --------------------------------------------------------

--
-- Table structure for table `projets`
--

CREATE TABLE IF NOT EXISTS `projets` (
  `proj_id` int(11) NOT NULL,
  `proj_nom` varchar(45) NOT NULL,
  `proj_langage` varchar(45) DEFAULT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projets`
--

INSERT INTO `projets` (`proj_id`, `proj_nom`, `proj_langage`, `client_id`) VALUES
(1, 'Plug-in', 'Javascript', 1),
(2, 'Site Iness', 'Drupal', 2),
(3, 'Site Simplon', 'Wordpress', 3),
(4, 'Géolocalisation', 'Javascript', 2),
(5, 'Site sport', 'Wordpress', 1),
(6, 'Site DJ', 'HTML CSS PHP', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `projets`
--
ALTER TABLE `projets`
  ADD PRIMARY KEY (`proj_id`),
  ADD KEY `fk_projets_1_idx` (`client_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `projets`
--
ALTER TABLE `projets`
  MODIFY `proj_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `projets`
--
ALTER TABLE `projets`
  ADD CONSTRAINT `fk_projets_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
