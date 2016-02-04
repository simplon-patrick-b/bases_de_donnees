-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 28 Janvier 2016 à 09:57
-- Version du serveur :  5.6.27-0ubuntu1
-- Version de PHP :  5.6.11-1ubuntu3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `Trombinoscope`
--

-- --------------------------------------------------------

--
-- Structure de la table `simploniens`
--

CREATE TABLE IF NOT EXISTS `simploniens` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `photo` text NOT NULL,
  `cv` text NOT NULL,
  `mail` varchar(255) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `naissance` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `simploniens`
--

INSERT INTO `simploniens` (`id`, `nom`, `prenom`, `photo`, `cv`, `mail`, `telephone`, `naissance`) VALUES
(3, 'GOMES DA COSTA', 'Isabelle', 'images/Isabelle_GOMES_DA_COSTA.JPG', '', '', '', '0000-00-00'),
(20, 'VIVANCOS', 'Renaud', 'images/Renaud_VIVANCOS.JPG', 'http://simplon-renaudv.github.io/', 'renaud.vivancos@free.fr', '0650735346', '1981-05-19'),
(24, 'CHALONO', 'Alexis', './images/Alexis_CHALONO.JPG', '', 'chalono.alexis@gmail.com', '', '0000-00-00'),
(25, 'ELWERT', 'Aline', './images/Aline_ELWERT.JPG', '', 'a.elwert@hotmail.fr', '', '0000-00-00'),
(26, 'MICHEL', 'Amandine', './images/Amandine_MICHEL.JPG', '', 'michel-amandine@live.fr', '0663609778', '0000-00-00'),
(27, 'BULLICH', 'Benjamin', './images/Benjamin_BULLICH.JPG', '', '', '', '0000-00-00'),
(28, 'STRUGALA', 'Catherine', './images/Catherine_STRUGALA.JPG', '', '', '', '0000-00-00'),
(29, 'TARCZEWSKI', 'David', 'images/David_TARCZEWSKI.JPG', '', '', '', '0000-00-00'),
(30, 'DELOS', 'Emmanuel', './images/Emmanuel_DELOS.JPG', '', '', '', '0000-00-00'),
(31, 'GRAVEZ', 'Edouard', './images/Edouard_GRAVEZ.JPG', '', '', '', '0000-00-00'),
(32, 'GUILLAUME', 'Gregory', './images/Gregory_GUILLAUME.JPG', '', 'grexor@hotmail.com', '', '0000-00-00'),
(33, 'GUEZOU', 'Gwenaelle', './images/Gwenaelle_GUEZOU.JPG', '', 'lambertleila@aol.com', '0612237085', '0000-00-00'),
(34, 'RAYNAUD', 'Jeremy', './images/Jeremy_RAYNAUD.JPG', '', '', '', '0000-00-00'),
(35, 'NANGUET', 'Jerome', './images/Jerome_NANGUET.JPG', '', 'nanguet.jerome@gmail.com', '0950995699', '1991-11-19'),
(36, 'MICHELET', 'Julie', './images/Julie_MICHELET.JPG', '', 'michelet.julie@yahoo.fr', '0616833765', '1990-02-10'),
(37, 'DEVYNCK', 'Nicolas', './images/Nicolas_DEVYNCK.JPG', '', 'nicolas.devynck@live.fr', '0786470504', '0000-00-00'),
(38, 'HANAN', 'Otman', './images/Otman_HANAN.JPG', '', 'otman1994@hotmail.fr', '0651872008', '0000-00-00'),
(39, 'BELAIRE', 'Patrick', './images/Patrick_BELAIRE.JPG', '', '', '', '0000-00-00'),
(40, 'MORGHADI', 'Patrick', './images/Patrick_MORGHADI.JPG', '', '', '', '0000-00-00'),
(41, 'COLAS', 'Philippe', './images/Philippe_COLAS.JPG', '', 'colas.p@hotmail.fr', '0663235318', '0000-00-00'),
(42, 'RAFFIN', 'Alexis', 'images/Alexis_RAFFIN.JPG', '', 'alexis.raffin@hotmail.com', '0624496413', '0000-00-00'),
(43, 'NGOMA', 'Thomas', './images/Thomas_NGOMA.JPG', '', 'thomas.ngoma@live.fr', '0649388786', '0000-00-00'),
(44, 'ZILLIOX', 'Tyffany', './images/Tyffany_ZILLIOX.JPG', '', 'tyff34@gmail.com', '0633359985', '0000-00-00'),
(45, 'GABELLI', 'Ulysse', './images/Ulysse_GABELLI.JPG', '', '', '0783254650', '1991-02-26');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `simploniens`
--
ALTER TABLE `simploniens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `simploniens`
--
ALTER TABLE `simploniens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
