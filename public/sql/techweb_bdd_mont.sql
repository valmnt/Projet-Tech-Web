-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 11 juin 2019 à 13:31
-- Version du serveur :  5.7.24
-- Version de PHP :  7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `techweb_bdd_mont`
--

-- --------------------------------------------------------

--
-- Structure de la table `competence`
--

DROP TABLE IF EXISTS `competence`;
CREATE TABLE IF NOT EXISTS `competence` (
  `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NOM` varchar(100) NOT NULL,
  `NIVEAU` varchar(100) NOT NULL,
  `IDINFO` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `competence_fk_infoperso` (`IDINFO`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `competence`
--

INSERT INTO `competence` (`ID`, `NOM`, `NIVEAU`, `IDINFO`) VALUES
(10, 'HTML/CSS', '80', 1),
(11, 'PHP', '60', 1),
(12, 'CISCO', '90', 1),
(13, 'LANGAGE C', '60', 1),
(14, 'SQL', '70', 1);

-- --------------------------------------------------------

--
-- Structure de la table `competence_experience`
--

DROP TABLE IF EXISTS `competence_experience`;
CREATE TABLE IF NOT EXISTS `competence_experience` (
  `IDEXPERIENCE` smallint(5) UNSIGNED NOT NULL,
  `IDCOMPETENCE` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`IDEXPERIENCE`,`IDCOMPETENCE`),
  KEY `competence_experience_idexp` (`IDCOMPETENCE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `competence_formation`
--

DROP TABLE IF EXISTS `competence_formation`;
CREATE TABLE IF NOT EXISTS `competence_formation` (
  `IDFORMATION` smallint(5) UNSIGNED NOT NULL,
  `IDCOMPETENCE` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`IDFORMATION`,`IDCOMPETENCE`),
  KEY `competence_formation_idcomp` (`IDCOMPETENCE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NOM` varchar(100) NOT NULL,
  `MAIL` varchar(100) NOT NULL,
  `MESSAGE` varchar(1000) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`ID`, `NOM`, `MAIL`, `MESSAGE`) VALUES
(1, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(2, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(3, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(4, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(5, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(6, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(7, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(8, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(9, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(10, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(11, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(12, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(13, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(14, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(15, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(16, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(17, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(18, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(19, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(20, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(21, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(22, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(23, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(24, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(25, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(26, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(27, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(28, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(29, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(30, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(31, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(32, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(33, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(34, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(35, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(36, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(37, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(38, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(39, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(40, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(41, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(42, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(43, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(44, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(45, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(46, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(47, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(48, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(49, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(50, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(51, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(52, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(53, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(54, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(55, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(56, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(57, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(58, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(59, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(60, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(61, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(62, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(63, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(64, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(65, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(66, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(67, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(68, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(69, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(70, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(71, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(72, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(73, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(74, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(75, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(76, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(77, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(78, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(79, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(80, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(81, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(82, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(83, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(84, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(85, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(86, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(87, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(88, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(89, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(90, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(91, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(92, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(93, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(94, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(95, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(96, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(97, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(98, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(99, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(100, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(101, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(102, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(103, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(104, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(105, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(106, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(107, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(108, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(109, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(110, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(111, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(112, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(113, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(114, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(115, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(116, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(117, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(118, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(119, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(120, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(121, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(122, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(123, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(124, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(125, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(126, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(127, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(128, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(129, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(130, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(131, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(132, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(133, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(134, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(135, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(136, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(137, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(138, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(139, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(140, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(141, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(142, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(143, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(144, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(145, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(146, 'FDSF', 'DSF@SFDFSD', 'SDFSD'),
(147, '', '', ''),
(148, '', '', ''),
(149, '', '', ''),
(150, '', '', ''),
(151, '', '', ''),
(152, '', '', ''),
(153, '', '', ''),
(154, '', '', ''),
(155, '', '', ''),
(156, '', '', ''),
(157, '', '', ''),
(158, '', '', ''),
(159, '', '', ''),
(160, '', '', ''),
(161, '', '', ''),
(162, '', '', ''),
(163, '', '', ''),
(164, '', '', ''),
(165, '', '', ''),
(166, '', '', ''),
(167, '', '', ''),
(168, '', '', ''),
(169, '', '', ''),
(170, '', '', ''),
(171, '', '', ''),
(172, '', '', ''),
(173, '', '', ''),
(174, 'Valentin MONT', 'vmvdesigne@gmail.com', 'fdsfds');

-- --------------------------------------------------------

--
-- Structure de la table `experience`
--

DROP TABLE IF EXISTS `experience`;
CREATE TABLE IF NOT EXISTS `experience` (
  `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `POSTE` varchar(100) NOT NULL,
  `DATEDEBUT` varchar(50) DEFAULT NULL,
  `DATEDEFIN` varchar(50) NOT NULL,
  `IDSTRUCTURES` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `experience_fk_structures` (`IDSTRUCTURES`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `experience`
--

INSERT INTO `experience` (`ID`, `POSTE`, `DATEDEBUT`, `DATEDEFIN`, `IDSTRUCTURES`) VALUES
(4, 'Amont guichets', '08/2018', '09/2018', 1),
(5, 'Stage Marketing', '05/2015', '05/2015', 3),
(6, 'Agent Technique', '07/2018', '08/2018', 4);

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

DROP TABLE IF EXISTS `formation`;
CREATE TABLE IF NOT EXISTS `formation` (
  `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `DATEDEBUT` varchar(50) NOT NULL,
  `DATEFIN` varchar(50) NOT NULL,
  `DIPLOME` varchar(100) DEFAULT NULL,
  `DOMAINE` varchar(100) NOT NULL,
  `IDSTRUCTURES` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fromation_fk_structures` (`IDSTRUCTURES`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`ID`, `DATEDEBUT`, `DATEFIN`, `DIPLOME`, `DOMAINE`, `IDSTRUCTURES`) VALUES
(1, '2015', '2018', 'BAC', 'Lycée Economie Social', 2),
(2, '2018', '2021', 'BACHELOR', 'Ecole Informatique', 5),
(3, '2016', '2018', 'PERMIS', '', 6);

-- --------------------------------------------------------

--
-- Structure de la table `infoperso`
--

DROP TABLE IF EXISTS `infoperso`;
CREATE TABLE IF NOT EXISTS `infoperso` (
  `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `LASTNAME` varchar(100) NOT NULL,
  `FIRSTNAME` varchar(100) NOT NULL,
  `BIRTHDAY` date NOT NULL,
  `MAIL` varchar(100) DEFAULT NULL,
  `ADRESSE` varchar(100) NOT NULL,
  `TELEPHONE` decimal(10,0) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `infoperso`
--

INSERT INTO `infoperso` (`ID`, `LASTNAME`, `FIRSTNAME`, `BIRTHDAY`, `MAIL`, `ADRESSE`, `TELEPHONE`) VALUES
(1, 'Mont', 'Valentin', '2000-01-15', 'valentinmont8@gmail.com', '43 route montferrat recours', '651845896');

-- --------------------------------------------------------

--
-- Structure de la table `passions`
--

DROP TABLE IF EXISTS `passions`;
CREATE TABLE IF NOT EXISTS `passions` (
  `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NOM` varchar(60) NOT NULL,
  `IDINFOPERSO` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `passions_fk_cv` (`IDINFOPERSO`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `passions`
--

INSERT INTO `passions` (`ID`, `NOM`, `IDINFOPERSO`) VALUES
(4, 'Football American', 1),
(5, 'Kikboxing', 1),
(6, 'Jeux videos', 1),
(7, 'Informatique', 1);

-- --------------------------------------------------------

--
-- Structure de la table `structures`
--

DROP TABLE IF EXISTS `structures`;
CREATE TABLE IF NOT EXISTS `structures` (
  `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NOM` varchar(100) NOT NULL,
  `VILLE` varchar(100) NOT NULL,
  `CODEPOSTAL` decimal(10,0) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `structures`
--

INSERT INTO `structures` (`ID`, `NOM`, `VILLE`, `CODEPOSTAL`) VALUES
(1, 'TCL', 'LYON', '69'),
(2, 'Ella Fitzgerald', 'VIENNE', '38'),
(3, 'FOREZIA', 'CHASSES', '38'),
(4, 'MAIRIE', 'CHUZELLES', '38'),
(5, 'YNOV', 'LYON', '69'),
(6, 'CAPERMIS', 'Vienne', '38');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `competence`
--
ALTER TABLE `competence`
  ADD CONSTRAINT `competence_fk_infoperso` FOREIGN KEY (`IDINFO`) REFERENCES `infoperso` (`ID`);

--
-- Contraintes pour la table `competence_experience`
--
ALTER TABLE `competence_experience`
  ADD CONSTRAINT `competence_experience_idexp` FOREIGN KEY (`IDCOMPETENCE`) REFERENCES `competence` (`ID`),
  ADD CONSTRAINT `competence_experience_idforma` FOREIGN KEY (`IDEXPERIENCE`) REFERENCES `experience` (`ID`);

--
-- Contraintes pour la table `competence_formation`
--
ALTER TABLE `competence_formation`
  ADD CONSTRAINT `competence_formation_idcomp` FOREIGN KEY (`IDCOMPETENCE`) REFERENCES `competence` (`ID`),
  ADD CONSTRAINT `competence_formation_idforma` FOREIGN KEY (`IDFORMATION`) REFERENCES `formation` (`ID`);

--
-- Contraintes pour la table `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `experience_fk_structures` FOREIGN KEY (`IDSTRUCTURES`) REFERENCES `structures` (`ID`);

--
-- Contraintes pour la table `formation`
--
ALTER TABLE `formation`
  ADD CONSTRAINT `fromation_fk_structures` FOREIGN KEY (`IDSTRUCTURES`) REFERENCES `structures` (`ID`);

--
-- Contraintes pour la table `passions`
--
ALTER TABLE `passions`
  ADD CONSTRAINT `passions_fk_cv` FOREIGN KEY (`IDINFOPERSO`) REFERENCES `infoperso` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
