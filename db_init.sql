-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : mar. 03 mai 2022 à 07:59
-- Version du serveur : 8.0.29
-- Version de PHP : 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `exampledb`
--

-- --------------------------------------------------------

DROP TABLE IF EXISTS `streamers-stats`;
DROP TABLE IF EXISTS `streamers`;

--
-- Structure de la table `streamers`
--

CREATE TABLE `streamers` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `comparator_picture` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `streamer_picture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `streamers`
--

INSERT INTO `streamers` (`id`, `name`, `comparator_picture`, `logo`, `streamer_picture`) VALUES
(1, 'ANTOINE DANIEL', '/asset/Streamers/Image_AntoineDaniel.png', '/asset/Streamers/AntoineDaniel.png', '/asset/Streamers/AntoineDaniel_Entier.png'),
(2, 'ZERATOR', '/asset/Streamers/Image_Zerator.png', '/asset/Streamers/Zerator.png', '/asset/Streamers/Zerator_Entier.png'),
(3, 'DOMINGO', '/asset/Streamers/Image_Domingo.png', '/asset/Streamers/Domingo.png', '/asset/Streamers/Domingo_Entier.png'),
(4, 'PONCE', '/asset/Streamers/Image_Ponce.png', '/asset/Streamers/Ponce.png', '/asset/Streamers/Mynthos_Ponce.png'),
(5, 'MYNTHOS', '/asset/Streamers/Image_Mynthos.png', '/asset/Streamers/Mynthos.png', '/asset/Streamers/Mynthos_Entier.png'),
(6, 'KAMETO', '/asset/Streamers/Image_Kameto.png', 'Streamers/Kameto.jpg', '/asset/Streamers/Kameto_Entier.png');

-- --------------------------------------------------------

--
-- Structure de la table `streamers-stats`
--

CREATE TABLE `streamers-stats` (
  `id` int NOT NULL,
  `date` datetime NOT NULL,
  `minutes_streamed` int NOT NULL COMMENT 'Nombre de minutes streamées dans le mois',
  `rank` int NOT NULL COMMENT 'Rank of the streamer this month',
  `avg_viewers` int NOT NULL COMMENT 'Average of the streamer this month',
  `max_viewers` int NOT NULL COMMENT 'Max viewers of the streamer this month',
  `hours_watched` int NOT NULL COMMENT 'Number of hours whatched this month',
  `followers` int NOT NULL COMMENT 'Number of followers gaming this month',
  `views` int NOT NULL COMMENT 'Number of unique views this month',
  `followers_total` int NOT NULL,
  `views_total` int NOT NULL,
  `streamer` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `streamers-stats`
--

INSERT INTO `streamers-stats` (`id`, `date`, `minutes_streamed`, `rank`, `avg_viewers`, `max_viewers`, `hours_watched`, `followers`, `views`, `followers_total`, `views_total`, `streamer`) VALUES
(1, '2022-05-03 07:30:00', 4553, 112, 16519, 51399, 1253510, 23007, 783876, 800033, 37264890, 1),
(2, '2022-05-03 07:30:49', 9255, 10, 40663, 198810, 6272233, 67562, 6036633, 1416881, 1416881, 2),
(3, '2022-05-03 07:32:24', 10705, 584, 3414, 9541, 609118, 8147, 455416, 154643, 10426155, 5),
(4, '2022-05-03 07:34:46', 5765, 82, 19864, 131914, 1908611, 30639, 1172468, 1398976, 121218348, 3),
(5, '2022-05-03 07:36:16', 10467, 99, 13452, 59108, 2346631, 27715, 1472998, 737217, 60650679, 4),
(6, '2022-05-03 07:36:57', 11436, 6, 43009, 419458, 8197471, 277054, 8672712, 1387331, 108084562, 6),
(7, '2022-04-01 07:30:00', 3953, 101, 18321, 74993, 1558347, 27032, 923876, 794021, 36223890, 1),
(8, '2022-03-01 07:30:00', 4120, 122, 13321, 32491, 103405, 18543, 608028, 788432, 35623890, 1),
(9, '2022-04-01 07:30:49', 3249, 120, 9403, 75943, 984083, 21345, 899430, 1256881, 1116881, 2),
(10, '2022-04-01 07:30:49', 8048, 17, 29458, 159534, 3984083, 123453, 4190495, 1206881, 1016881, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `streamers`
--
ALTER TABLE `streamers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `streamers-stats`
--
ALTER TABLE `streamers-stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `BUMBLEBEE_KFC` (`streamer`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `streamers`
--
ALTER TABLE `streamers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `streamers-stats`
--
ALTER TABLE `streamers-stats`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `streamers-stats`
--
ALTER TABLE `streamers-stats`
  ADD CONSTRAINT `BUMBLEBEE_KFC` FOREIGN KEY (`streamer`) REFERENCES `streamers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
