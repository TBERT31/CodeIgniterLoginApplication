-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 07 fév. 2023 à 09:32
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `errand_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_user_id` int(11) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `project_body` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `projects`
--

INSERT INTO `projects` (`id`, `project_user_id`, `project_name`, `project_body`, `date_created`) VALUES
(1, 5, 'PHP', 'THIS TASK INVOLVES CODING A SCRIPT THAT ECHOS NAMES', '2023-02-03 17:39:34'),
(2, 5, 'Javascript', 'I need javascript to make app behavior do nice things.', '2023-02-03 17:39:34'),
(6, 5, 'React', 'React is a javascript Framework, very tendence currently', '2023-02-03 23:06:11'),
(4, 5, 'Bootstrap', 'Bootstrap is the best responsive framework, take my course and be ahead of the game', '2023-02-03 18:29:30');

-- --------------------------------------------------------

--
-- Structure de la table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `task_body` text NOT NULL,
  `due_date` date DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tasks`
--

INSERT INTO `tasks` (`id`, `project_id`, `task_name`, `task_body`, `due_date`, `date_created`, `status`) VALUES
(1, 1, 'take PHP Course 1', 'Take Thomas Berteau\'s PHP course this week.', '2023-02-10', '2023-02-04 12:44:31', 1),
(2, 2, 'JAVASCRIPT Course', 'Take Javascript Berteau Thomas\'s JS course.', '2023-02-09', '2023-02-04 12:44:31', 0),
(3, 4, 'SCSS', 'SCSS on local in order to setting style', '2023-02-05', '2023-02-04 17:49:42', 0),
(4, 6, 'NextJS', 'Learn Next JS Framework, accodring to REACT JS library', '2023-02-17', '2023-02-04 17:55:26', 0),
(5, 1, 'Codeiniter', 'PHP Framework use to deploy some application', '2023-02-10', '2023-02-06 09:59:29', 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `registrer_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `registrer_date`) VALUES
(1, 'rico', '123', '', '', '', '2023-02-03 11:37:42'),
(2, 'suave', '12345', '', '', '', '2023-02-03 11:37:42'),
(4, 'peter20', '123', 'peter', 'williams', 'peter012@gmail.com', '2023-02-03 14:16:02'),
(5, 'maria200', '$2y$12$44631NtBpxG.iIONZjUIKeMujeMTHwa4nc4uZjYOlAQxqSpdijGre', 'maria', 'fernandez', 'maria@gmail.com', '2023-02-03 14:47:20');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
