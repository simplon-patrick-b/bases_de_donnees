-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 03, 2016 at 11:27 AM
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
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `client_id` int(11) NOT NULL,
  `nom_client` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `nom_client`) VALUES
(1, 'OJCM'),
(2, 'Sortez plus'),
(3, 'ERDF');

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

-- --------------------------------------------------------

--
-- Table structure for table `simploniens`
--

CREATE TABLE IF NOT EXISTS `simploniens` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `photo` text NOT NULL,
  `cv` text NOT NULL,
  `mail` varchar(255) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `naissance` date NOT NULL,
  `proj_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `simploniens`
--

INSERT INTO `simploniens` (`id`, `nom`, `prenom`, `photo`, `cv`, `mail`, `telephone`, `naissance`, `proj_id`) VALUES
(3, 'GOMES DA COSTA', 'Isabelle', 'images/Isabelle_GOMES_DA_COSTA.JPG', '', '', '', '0000-00-00', 1),
(20, 'VIVANCOS', 'Renaud', 'images/Renaud_VIVANCOS.JPG', 'http://simplon-renaudv.github.io/', 'renaud.vivancos@free.fr', '0650735346', '1981-05-19', 5),
(24, 'CHALONO', 'Alexis', './images/Alexis_CHALONO.JPG', '', 'chalono.alexis@gmail.com', '', '0000-00-00', 3),
(25, 'ELWERT', 'Aline', './images/Aline_ELWERT.JPG', '', 'a.elwert@hotmail.fr', '', '0000-00-00', 4),
(27, 'BULLICH', 'Benjamin', './images/Benjamin_BULLICH.JPG', '', '', '', '0000-00-00', 2),
(28, 'STRUGALA', 'Catherine', './images/Catherine_STRUGALA.JPG', '', '', '', '0000-00-00', 5),
(29, 'TARCZEWSKI', 'David', 'images/David_TARCZEWSKI.JPG', '', '', '', '0000-00-00', 2),
(30, 'DELOS', 'Emmanuel', './images/Emmanuel_DELOS.JPG', '', '', '', '0000-00-00', 1),
(31, 'GRAVEZ', 'Edouard', './images/Edouard_GRAVEZ.JPG', '', '', '', '0000-00-00', 5),
(32, 'GUILLAUME', 'Gregory', './images/Gregory_GUILLAUME.JPG', '', 'grexor@hotmail.com', '', '0000-00-00', 6),
(33, 'GUEZOU', 'Gwenaelle', './images/Gwenaelle_GUEZOU.JPG', '', 'lambertleila@aol.com', '0612237085', '0000-00-00', 6),
(34, 'RAYNAUD', 'Jeremy', './images/Jeremy_RAYNAUD.JPG', '', '', '', '0000-00-00', 1),
(35, 'NANGUET', 'Jerome', './images/Jerome_NANGUET.JPG', '', 'nanguet.jerome@gmail.com', '0950995699', '1991-11-19', 3),
(36, 'MICHELET', 'Julie', './images/Julie_MICHELET.JPG', '', 'michelet.julie@yahoo.fr', '0616833765', '1990-02-10', 2),
(37, 'DEVYNCK', 'Nicolas', './images/Nicolas_DEVYNCK.JPG', '', 'nicolas.devynck@live.fr', '0786470504', '0000-00-00', 4),
(38, 'HANAN', 'Otman', './images/Otman_HANAN.JPG', '', 'otman1994@hotmail.fr', '0651872008', '0000-00-00', 5),
(39, 'BELAIRE', 'Patrick', './images/Patrick_BELAIRE.JPG', '', '', '', '0000-00-00', 1),
(40, 'MORGHADI', 'Patrick', './images/Patrick_MORGHADI.JPG', '', '', '', '0000-00-00', 2),
(41, 'COLAS', 'Philippe', './images/Philippe_COLAS.JPG', '', 'colas.p@hotmail.fr', '0663235318', '0000-00-00', 3),
(42, 'RAFFIN', 'Alexis', 'images/Alexis_RAFFIN.JPG', '', 'alexis.raffin@hotmail.com', '0624496413', '0000-00-00', 4),
(43, 'NGOMA', 'Thomas', './images/Thomas_NGOMA.JPG', '', 'thomas.ngoma@live.fr', '0649388786', '0000-00-00', 5),
(44, 'ZILLIOX', 'Tyffany', './images/Tyffany_ZILLIOX.JPG', '', 'tyff34@gmail.com', '0633359985', '0000-00-00', 2),
(45, 'GABELLI', 'Ulysse', './images/Ulysse_GABELLI.JPG', '', '', '0783254650', '1991-02-26', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `projets`
--
ALTER TABLE `projets`
  ADD PRIMARY KEY (`proj_id`),
  ADD KEY `fk_projets_1_idx` (`client_id`);

--
-- Indexes for table `simploniens`
--
ALTER TABLE `simploniens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_simploniens_1_idx` (`proj_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `projets`
--
ALTER TABLE `projets`
  MODIFY `proj_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `simploniens`
--
ALTER TABLE `simploniens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `projets`
--
ALTER TABLE `projets`
  ADD CONSTRAINT `fk_projets_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `simploniens`
--
ALTER TABLE `simploniens`
  ADD CONSTRAINT `fk_simploniens_1` FOREIGN KEY (`proj_id`) REFERENCES `projets` (`proj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
