-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 17 mars 2019 à 18:35
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mont_valentin_mont_b1`
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
  `DOMAINE` varchar(100) NOT NULL,
  `IDINFO` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `competence_fk_infoperso` (`IDINFO`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `competence`
--

INSERT INTO `competence` (`ID`, `NOM`, `NIVEAU`, `DOMAINE`, `IDINFO`) VALUES
(1, 'JAVASCRIPT', 'MAUVAIS', 'DEV', 1),
(2, 'HTML_CSS', 'BON', 'DEV', 1),
(3, 'CISCO', 'BON', 'RESEAU', 1),
(4, 'ITALIEN', 'BON', 'LANGUE', 1),
(5, 'ESPAGNOL', 'BON', 'LANGUE', 1),
(6, 'ANGLAIS', 'BON', 'LANGUE', 1),
(7, 'RELATION_CLIENT', 'BON', 'RH', 1),
(8, 'MARKETING', 'BON', 'COMMUNICATION', 1),
(9, 'AGILITE_MANUEL', '', 'MANUEL', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `experience`
--

DROP TABLE IF EXISTS `experience`;
CREATE TABLE IF NOT EXISTS `experience` (
  `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NOM` varchar(100) NOT NULL,
  `DATEDEBUT` date DEFAULT NULL,
  `DUREEJOUR` decimal(10,0) NOT NULL,
  `IDSTRUCTURES` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `experience_fk_structures` (`IDSTRUCTURES`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `experience`
--

INSERT INTO `experience` (`ID`, `NOM`, `DATEDEBUT`, `DUREEJOUR`, `IDSTRUCTURES`) VALUES
(1, 'AMONT_GUICHET', '2018-08-27', '15', 1),
(2, 'COMMERCIAL', '2015-03-05', '7', 3),
(3, 'AGENT_TECHNIQUE', '2018-07-08', '30', 4);

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

DROP TABLE IF EXISTS `formation`;
CREATE TABLE IF NOT EXISTS `formation` (
  `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `DATEDEBUT` date NOT NULL,
  `DATEFIN` date NOT NULL,
  `DIPLOME` varchar(100) DEFAULT NULL,
  `NIVEAU` varchar(100) DEFAULT NULL,
  `IDSTRUCTURES` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fromation_fk_structures` (`IDSTRUCTURES`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`ID`, `DATEDEBUT`, `DATEFIN`, `DIPLOME`, `NIVEAU`, `IDSTRUCTURES`) VALUES
(1, '2015-09-03', '2018-06-25', 'BAC', 'LYCEE', 2),
(2, '2018-09-17', '2019-07-09', 'BACHELOR', 'B1', 5);

-- --------------------------------------------------------

--
-- Structure de la table `infoperso`
--

DROP TABLE IF EXISTS `infoperso`;
CREATE TABLE IF NOT EXISTS `infoperso` (
  `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NOM` varchar(100) NOT NULL,
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

INSERT INTO `infoperso` (`ID`, `NOM`, `FIRSTNAME`, `BIRTHDAY`, `MAIL`, `ADRESSE`, `TELEPHONE`) VALUES
(1, 'MONT', 'VALENTIN', '2000-01-15', 'VALENTINMONT8@GMAIL.COM', '43 ROUTE MONT FERRAT RECOURS', '651845896');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `passions`
--

INSERT INTO `passions` (`ID`, `NOM`, `IDINFOPERSO`) VALUES
(1, 'BOXE', 1),
(2, 'COURSE', 1),
(3, 'INFORMATIQUE', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `structures`
--

INSERT INTO `structures` (`ID`, `NOM`, `VILLE`, `CODEPOSTAL`) VALUES
(1, 'TCL', 'LYON', '69'),
(2, 'ELLA', 'VIENNE', '38'),
(3, 'FOREZIA', 'CHASSES', '38'),
(4, 'MAIRIE', 'CHUZELLES', '38'),
(5, 'YNOV', 'LYON', '69');

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
