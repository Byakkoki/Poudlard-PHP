-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 25 nov. 2021 à 08:58
-- Version du serveur : 10.3.31-MariaDB-0ubuntu0.20.04.1
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dlardpou`
--

-- --------------------------------------------------------

--
-- Structure de la table `Maison`
--

CREATE TABLE `Maison` (
  `idMaison` varchar(255) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `directeur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Maison`
--

INSERT INTO `Maison` (`idMaison`, `nom`, `directeur`) VALUES
('06502d03-6a84-4688-9bb8-90bd540e609f', 'GRYFFONDOR', '44abaf3f-3f8d-406d-b4fe-319fd1618969'),
('4c04e179-de64-466a-95b8-fd4c25a72369', 'SERPENTARD', '405b4d13-77b8-4cc0-af89-aa1830fa80b5'),
('9ebce4e7-dcf1-4093-9b6d-b0bd328f40ff', 'POUFSOUFFLE', '3c488442-4385-49ab-8da1-dfec8e433aa7'),
('b29cea9a-7404-4fe8-8e89-c6b6fb949f85', 'SEGPA', 'ba7b8196-b5ef-4c66-8891-f76c44af60c9'),
('dd57a475-ed16-4ca6-8276-6d2b90a35160', 'EQUIPETT', '61cae446-8f41-40bb-ac3e-574b89b40fe0'),
('e29c7611-f34a-43b9-89e8-c047cb483c87', 'SERDAIGLE', 'd21b2625-118e-4452-a865-b94a89a3a10a');

-- --------------------------------------------------------

--
-- Structure de la table `Matiere`
--

CREATE TABLE `Matiere` (
  `idMatiere` varchar(255) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `personne` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Matiere`
--

INSERT INTO `Matiere` (`idMatiere`, `nom`, `personne`) VALUES
('01dff7c7-d2e8-4fae-a805-ee46ad592979', 'histoire de la magie', '44abaf3f-3f8d-406d-b4fe-319fd1618969'),
('255e4761-e6d3-4d5a-9286-7f18594a83d5', 'Cours d\'atronomie', '3999f4b6-a77a-452e-a1a6-b8c1e4863c68'),
('55d4b7ae-685a-4ac5-8386-437e9fe50b9c', 'Cours de Botanique', '3c488442-4385-49ab-8da1-dfec8e433aa7'),
('6561e3ba-9525-45e4-84c2-edb831359c58', 'Cours d\'alchimie', '61cae446-8f41-40bb-ac3e-574b89b40fe0'),
('b36c78d7-a76c-4003-bc3b-9f5114f18d24', 'Cours de Sortilèges', 'd21b2625-118e-4452-a865-b94a89a3a10a'),
('ba6ed045-08cb-438e-b3a7-0d5f2be1d730', 'Preparation des Potions', '405b4d13-77b8-4cc0-af89-aa1830fa80b5'),
('e8ac108f-54a8-4453-94d7-9a5c30ca1f5f', 'Défense contre les forces du Mâle', '88265ad2-8a29-4739-ad18-a30eab929d8c'),
('f3559042-c2d6-457b-9146-a0c402a3f147', 'Cours de soins aux créatures magiques', 'ba7b8196-b5ef-4c66-8891-f76c44af60c9');

-- --------------------------------------------------------

--
-- Structure de la table `Personne`
--

CREATE TABLE `Personne` (
  `idPersonne` varchar(255) NOT NULL,
  `Prenom` varchar(45) NOT NULL,
  `Nom` varchar(45) NOT NULL,
  `Age` varchar(45) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `maison` varchar(255) DEFAULT NULL,
  `promotion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Personne`
--

INSERT INTO `Personne` (`idPersonne`, `Prenom`, `Nom`, `Age`, `status`, `maison`, `promotion`) VALUES
('05c29ba2-8fa3-4a99-baea-e45672a459f6', 'Colin', 'CREEVAY', '17', 1, '06502d03-6a84-4688-9bb8-90bd540e609f', '9a68189c-53e4-4f5e-94ba-cd03ebdac47d'),
('0b0e3362-706c-45e4-a007-b1d9bff2bc57', 'Gregory', 'GOYLE', '18', 0, '4c04e179-de64-466a-95b8-fd4c25a72369', 'b350a185-764e-4efb-b8f4-859a7f1ea9c0'),
('17b878e3-2452-476c-aa49-bd3cb5e76d33', 'Rose', 'CELLER', '18', 1, '9ebce4e7-dcf1-4093-9b6d-b0bd328f40ff', 'b350a185-764e-4efb-b8f4-859a7f1ea9c0'),
('2a26fb77-6886-4926-9bd9-b4a16d4ce5e1', 'Luna', 'LOVEGOOD', '18', 1, 'e29c7611-f34a-43b9-89e8-c047cb483c87', '9a68189c-53e4-4f5e-94ba-cd03ebdac47d'),
('2b2e18bb-68ff-4db5-a6fd-cbfa4dda433f', 'Neville', 'LONDUBAT', '18', 1, '06502d03-6a84-4688-9bb8-90bd540e609f', 'b350a185-764e-4efb-b8f4-859a7f1ea9c0'),
('2b972c4d-ad27-4458-8355-16006602707c', 'Vincent', 'TIGGER', '18', 1, '4c04e179-de64-466a-95b8-fd4c25a72369', 'b350a185-764e-4efb-b8f4-859a7f1ea9c0'),
('2e005e8e-985a-46fd-9974-37acba0917e8', 'Padma', 'PATTIL', '17', 1, 'e29c7611-f34a-43b9-89e8-c047cb483c87', 'b350a185-764e-4efb-b8f4-859a7f1ea9c0'),
('2f787068-8a88-4fdf-a4e7-9ec839c62428', 'Florent', 'SALMON', '26', 0, 'b29cea9a-7404-4fe8-8e89-c6b6fb949f85', NULL),
('32c4f530-6997-46a6-a8fb-27d8e532ee10', 'Freed', 'WEASLEY', '20', 0, '06502d03-6a84-4688-9bb8-90bd540e609f', NULL),
('3672f243-157a-40ab-a32f-5f9e7fa80b40', 'Maclom', 'BADOOCK', '18', 1, '4c04e179-de64-466a-95b8-fd4c25a72369', 'b350a185-764e-4efb-b8f4-859a7f1ea9c0'),
('36a27d99-3802-4dc4-8838-0ab99458d31b', 'Hermionne', 'GRANGER', '18', 1, '06502d03-6a84-4688-9bb8-90bd540e609f', 'b350a185-764e-4efb-b8f4-859a7f1ea9c0'),
('3999f4b6-a77a-452e-a1a6-b8c1e4863c68', 'Alastor', 'MAUGREY', '36', 1, 'e29c7611-f34a-43b9-89e8-c047cb483c87', NULL),
('3c488442-4385-49ab-8da1-dfec8e433aa7', 'Pomona', 'CHOURAVE', '36', 0, '9ebce4e7-dcf1-4093-9b6d-b0bd328f40ff', NULL),
('405b4d13-77b8-4cc0-af89-aa1830fa80b5', 'Severus', 'ROGUE', '40', 0, '06502d03-6a84-4688-9bb8-90bd540e609f', NULL),
('44abaf3f-3f8d-406d-b4fe-319fd1618969', 'Minerva', 'MCGONAGALL', '64', 1, '06502d03-6a84-4688-9bb8-90bd540e609f', NULL),
('57ebb576-66bd-4b33-876f-ca86c881a088', 'Terry', 'STEEVAL', '21', 1, 'e29c7611-f34a-43b9-89e8-c047cb483c87', NULL),
('5e44bbf0-9a40-45fe-b4a8-dcc8e410facb', 'Leanne', 'NONE', '18', 0, '9ebce4e7-dcf1-4093-9b6d-b0bd328f40ff', 'b350a185-764e-4efb-b8f4-859a7f1ea9c0'),
('61cae446-8f41-40bb-ac3e-574b89b40fe0', 'Dolores', 'OMBRAGE', '34', 1, '4c04e179-de64-466a-95b8-fd4c25a72369', NULL),
('6446ac1c-7398-4520-89c5-956081ab86d4', 'Dean', 'THOMAS', '18', 1, '06502d03-6a84-4688-9bb8-90bd540e609f', 'b350a185-764e-4efb-b8f4-859a7f1ea9c0'),
('667ee5bf-a1be-4b66-a2d0-4206f9d42b83', 'Adrian', 'PUCEY', '20', 0, '4c04e179-de64-466a-95b8-fd4c25a72369', NULL),
('6fa91e91-5c0b-49f6-9dec-18dd3ac35da9', 'Orla', 'QUIRCK', '21', 1, 'e29c7611-f34a-43b9-89e8-c047cb483c87', NULL),
('70502523-8fd9-4a1c-972a-30cc01b11116', 'Ernie', 'Macmillan', '17', 1, '9ebce4e7-dcf1-4093-9b6d-b0bd328f40ff', '9a68189c-53e4-4f5e-94ba-cd03ebdac47d'),
('88265ad2-8a29-4739-ad18-a30eab929d8c', 'Remus', 'LUPIN', '38', 0, '06502d03-6a84-4688-9bb8-90bd540e609f', NULL),
('9751de55-aedb-4486-9dff-479aab467fc1', 'Georges', 'WEASLEY', '20', 1, '06502d03-6a84-4688-9bb8-90bd540e609f', NULL),
('97b9effc-e511-4717-aaa3-6d0eab054194', 'Cho', 'CHANG', '17', 1, 'e29c7611-f34a-43b9-89e8-c047cb483c87', 'b350a185-764e-4efb-b8f4-859a7f1ea9c0'),
('b723cf38-6168-4cf2-bf62-23ec6e7ca668', 'Ron', 'WEASLEY', '18', 1, '06502d03-6a84-4688-9bb8-90bd540e609f', 'b350a185-764e-4efb-b8f4-859a7f1ea9c0'),
('ba7b8196-b5ef-4c66-8891-f76c44af60c9', 'Hagrid', 'RUBEUS', '71', 1, '06502d03-6a84-4688-9bb8-90bd540e609f', NULL),
('bc10fccf-3820-4e3a-81b3-cded117e035f', 'Marcus', 'FLITT', '18', 1, '4c04e179-de64-466a-95b8-fd4c25a72369', 'b350a185-764e-4efb-b8f4-859a7f1ea9c0'),
('d21b2625-118e-4452-a865-b94a89a3a10a', 'Filius', 'FLITWICK', '85', 0, 'e29c7611-f34a-43b9-89e8-c047cb483c87', NULL),
('d3f2404d-059d-486e-bd87-a8efe92039ed', 'Genny', 'WEASLEY', '17', 1, '06502d03-6a84-4688-9bb8-90bd540e609f', '9a68189c-53e4-4f5e-94ba-cd03ebdac47d'),
('df33a693-f0ed-4115-adef-0b316497e451', 'Albus', 'DUMBLEDORE', '116', 0, '06502d03-6a84-4688-9bb8-90bd540e609f', NULL),
('e35c1ca0-408b-43d3-bdc1-77fa37f26d29', 'Cedric', 'DIGORRY', '18', 0, '9ebce4e7-dcf1-4093-9b6d-b0bd328f40ff', NULL),
('e76074e1-582c-49a5-aa9a-f47e983d419e', 'Drago', 'MALFOY', '18', 1, '4c04e179-de64-466a-95b8-fd4c25a72369', 'b350a185-764e-4efb-b8f4-859a7f1ea9c0'),
('ef4245f9-39be-4f62-b987-e5580bd01594', 'Coin', 'MICHAEL', '18', 1, 'e29c7611-f34a-43b9-89e8-c047cb483c87', 'b350a185-764e-4efb-b8f4-859a7f1ea9c0'),
('fc350be7-84a0-44fa-b2a9-9643a6ab13f8', 'Lisa', 'TURPIN', '17', 1, 'e29c7611-f34a-43b9-89e8-c047cb483c87', '9a68189c-53e4-4f5e-94ba-cd03ebdac47d'),
('fc7510c5-e893-406d-9395-99b60ec77c2d', 'Harry', 'POTTER', '18', 1, '06502d03-6a84-4688-9bb8-90bd540e609f', 'b350a185-764e-4efb-b8f4-859a7f1ea9c0');

-- --------------------------------------------------------

--
-- Structure de la table `Personne_has_Role`
--

CREATE TABLE `Personne_has_Role` (
  `personne` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Personne_has_Role`
--

INSERT INTO `Personne_has_Role` (`personne`, `role`) VALUES
('05c29ba2-8fa3-4a99-baea-e45672a459f6', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('0b0e3362-706c-45e4-a007-b1d9bff2bc57', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('17b878e3-2452-476c-aa49-bd3cb5e76d33', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('2a26fb77-6886-4926-9bd9-b4a16d4ce5e1', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('2b2e18bb-68ff-4db5-a6fd-cbfa4dda433f', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('2b972c4d-ad27-4458-8355-16006602707c', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('2e005e8e-985a-46fd-9974-37acba0917e8', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('2f787068-8a88-4fdf-a4e7-9ec839c62428', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('32c4f530-6997-46a6-a8fb-27d8e532ee10', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('3672f243-157a-40ab-a32f-5f9e7fa80b40', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('36a27d99-3802-4dc4-8838-0ab99458d31b', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('3999f4b6-a77a-452e-a1a6-b8c1e4863c68', '31296f18-a8bd-44ec-ae74-a0a3d89aa353'),
('3999f4b6-a77a-452e-a1a6-b8c1e4863c68', '5638f272-3099-4bbe-a8f1-92036440d279'),
('3c488442-4385-49ab-8da1-dfec8e433aa7', '31296f18-a8bd-44ec-ae74-a0a3d89aa353'),
('3c488442-4385-49ab-8da1-dfec8e433aa7', '5638f272-3099-4bbe-a8f1-92036440d279'),
('3c488442-4385-49ab-8da1-dfec8e433aa7', '65614d39-9172-4225-b716-2fb7961de886'),
('405b4d13-77b8-4cc0-af89-aa1830fa80b5', '31296f18-a8bd-44ec-ae74-a0a3d89aa353'),
('405b4d13-77b8-4cc0-af89-aa1830fa80b5', '5638f272-3099-4bbe-a8f1-92036440d279'),
('405b4d13-77b8-4cc0-af89-aa1830fa80b5', '65614d39-9172-4225-b716-2fb7961de886'),
('44abaf3f-3f8d-406d-b4fe-319fd1618969', '31296f18-a8bd-44ec-ae74-a0a3d89aa353'),
('44abaf3f-3f8d-406d-b4fe-319fd1618969', '5638f272-3099-4bbe-a8f1-92036440d279'),
('44abaf3f-3f8d-406d-b4fe-319fd1618969', '65614d39-9172-4225-b716-2fb7961de886'),
('57ebb576-66bd-4b33-876f-ca86c881a088', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('5e44bbf0-9a40-45fe-b4a8-dcc8e410facb', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('61cae446-8f41-40bb-ac3e-574b89b40fe0', '31296f18-a8bd-44ec-ae74-a0a3d89aa353'),
('61cae446-8f41-40bb-ac3e-574b89b40fe0', '5638f272-3099-4bbe-a8f1-92036440d279'),
('6446ac1c-7398-4520-89c5-956081ab86d4', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('667ee5bf-a1be-4b66-a2d0-4206f9d42b83', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('6fa91e91-5c0b-49f6-9dec-18dd3ac35da9', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('70502523-8fd9-4a1c-972a-30cc01b11116', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('88265ad2-8a29-4739-ad18-a30eab929d8c', '31296f18-a8bd-44ec-ae74-a0a3d89aa353'),
('88265ad2-8a29-4739-ad18-a30eab929d8c', '5638f272-3099-4bbe-a8f1-92036440d279'),
('9751de55-aedb-4486-9dff-479aab467fc1', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('97b9effc-e511-4717-aaa3-6d0eab054194', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('b723cf38-6168-4cf2-bf62-23ec6e7ca668', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('ba7b8196-b5ef-4c66-8891-f76c44af60c9', '31296f18-a8bd-44ec-ae74-a0a3d89aa353'),
('ba7b8196-b5ef-4c66-8891-f76c44af60c9', '5638f272-3099-4bbe-a8f1-92036440d279'),
('bc10fccf-3820-4e3a-81b3-cded117e035f', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('d21b2625-118e-4452-a865-b94a89a3a10a', '31296f18-a8bd-44ec-ae74-a0a3d89aa353'),
('d21b2625-118e-4452-a865-b94a89a3a10a', '5638f272-3099-4bbe-a8f1-92036440d279'),
('d21b2625-118e-4452-a865-b94a89a3a10a', '65614d39-9172-4225-b716-2fb7961de886'),
('d3f2404d-059d-486e-bd87-a8efe92039ed', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('df33a693-f0ed-4115-adef-0b316497e451', '5638f272-3099-4bbe-a8f1-92036440d279'),
('df33a693-f0ed-4115-adef-0b316497e451', 'fb27abd3-2dd9-492f-9607-e611fa1be56a'),
('e35c1ca0-408b-43d3-bdc1-77fa37f26d29', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('e76074e1-582c-49a5-aa9a-f47e983d419e', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('ef4245f9-39be-4f62-b987-e5580bd01594', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('fc350be7-84a0-44fa-b2a9-9643a6ab13f8', 'ba191da5-9642-458d-9ebb-be6dd86e295c'),
('fc7510c5-e893-406d-9395-99b60ec77c2d', 'ba191da5-9642-458d-9ebb-be6dd86e295c');

-- --------------------------------------------------------

--
-- Structure de la table `Points`
--

CREATE TABLE `Points` (
  `idPoints` varchar(255) NOT NULL,
  `point` int(11) NOT NULL,
  `personne` varchar(255) DEFAULT NULL,
  `maison` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Points`
--

INSERT INTO `Points` (`idPoints`, `point`, `personne`, `maison`, `date`) VALUES
('0631685f-0f44-4f43-8511-92dc3c2b145c', 200, '44abaf3f-3f8d-406d-b4fe-319fd1618969', '06502d03-6a84-4688-9bb8-90bd540e609f', '2021-11-24 12:36:46'),
('096a2add-0570-4520-8d6f-23cbd2bc513b', 50, '44abaf3f-3f8d-406d-b4fe-319fd1618969', '4c04e179-de64-466a-95b8-fd4c25a72369', '2021-11-24 12:36:46'),
('0eace083-7a5b-449e-8814-a140ead87fd6', -20, 'ba7b8196-b5ef-4c66-8891-f76c44af60c9', '9ebce4e7-dcf1-4093-9b6d-b0bd328f40ff', '2021-11-24 12:36:46'),
('1190e69b-5d46-4095-83a9-c812bd88a05e', 1000, '44abaf3f-3f8d-406d-b4fe-319fd1618969', '06502d03-6a84-4688-9bb8-90bd540e609f', '2021-11-24 12:36:46'),
('12759fd0-a065-4d1e-bc8a-4fb1ea74c51f', -100, '44abaf3f-3f8d-406d-b4fe-319fd1618969', '06502d03-6a84-4688-9bb8-90bd540e609f', '2021-11-24 12:36:46'),
('188d3b87-b0ab-4f5b-a84c-b2bdc99e8868', 100, '3999f4b6-a77a-452e-a1a6-b8c1e4863c68', '06502d03-6a84-4688-9bb8-90bd540e609f', '2021-11-24 12:36:46'),
('1fa6ad4d-f2db-4638-9f5a-6d092c7c29a9', 250, '405b4d13-77b8-4cc0-af89-aa1830fa80b5', '4c04e179-de64-466a-95b8-fd4c25a72369', '2021-11-24 14:21:35'),
('2a397054-b0b6-4099-933e-955fccc5a355', 150, '3c488442-4385-49ab-8da1-dfec8e433aa7', 'e29c7611-f34a-43b9-89e8-c047cb483c87', '2021-11-24 12:36:46'),
('349f57e8-572c-4f64-b248-034fed25d498', 250, '405b4d13-77b8-4cc0-af89-aa1830fa80b5', '4c04e179-de64-466a-95b8-fd4c25a72369', '2021-11-24 14:16:43'),
('3c9e57be-5239-4330-a671-861597dac01e', 250, '405b4d13-77b8-4cc0-af89-aa1830fa80b5', '4c04e179-de64-466a-95b8-fd4c25a72369', '2021-11-24 14:16:37'),
('417c8b55-cfa8-4f60-9c33-6948ba1694f2', -150, '3c488442-4385-49ab-8da1-dfec8e433aa7', '06502d03-6a84-4688-9bb8-90bd540e609f', '2021-11-24 12:36:46'),
('4232c883-253d-4cf8-b75b-e32a4a377e13', 2000, '44abaf3f-3f8d-406d-b4fe-319fd1618969', 'dd57a475-ed16-4ca6-8276-6d2b90a35160', '2021-11-24 15:36:02'),
('4b5533e7-c804-44bc-9ba9-a61d84adcc69', 200, '88265ad2-8a29-4739-ad18-a30eab929d8c', '06502d03-6a84-4688-9bb8-90bd540e609f', '2021-11-24 12:36:46'),
('59c42319-4ec9-4ce2-921c-11efa008c2bd', 300, 'd21b2625-118e-4452-a865-b94a89a3a10a', 'e29c7611-f34a-43b9-89e8-c047cb483c87', '2021-11-24 12:36:46'),
('5c7f773a-29e4-47d7-a47a-bc33aa0cc582', 600, '405b4d13-77b8-4cc0-af89-aa1830fa80b5', '9ebce4e7-dcf1-4093-9b6d-b0bd328f40ff', '2021-11-24 12:36:46'),
('5d722073-2dcf-4dee-ab63-a0e99acc663c', 25, '44abaf3f-3f8d-406d-b4fe-319fd1618969', '06502d03-6a84-4688-9bb8-90bd540e609f', '2021-11-24 12:36:46'),
('5eee678c-339e-49bf-95d2-204b5e959994', 2000, '44abaf3f-3f8d-406d-b4fe-319fd1618969', 'dd57a475-ed16-4ca6-8276-6d2b90a35160', '2021-11-24 14:22:43'),
('67e9800f-fdbd-403d-b7f6-5136735390a3', -200, '44abaf3f-3f8d-406d-b4fe-319fd1618969', 'e29c7611-f34a-43b9-89e8-c047cb483c87', '2021-11-24 12:36:46'),
('6ca2a0b9-9408-4b4b-a71e-287e5eb7c181', 500, '405b4d13-77b8-4cc0-af89-aa1830fa80b5', '4c04e179-de64-466a-95b8-fd4c25a72369', '2021-11-24 12:36:46'),
('8c488e14-1f90-4684-9a76-c2c02d66954a', -75, '405b4d13-77b8-4cc0-af89-aa1830fa80b5', '06502d03-6a84-4688-9bb8-90bd540e609f', '2021-11-24 12:36:46'),
('983ebdf5-f860-4f2a-9e6a-57755175ea37', -150, '405b4d13-77b8-4cc0-af89-aa1830fa80b5', '06502d03-6a84-4688-9bb8-90bd540e609f', '2021-11-24 12:36:46'),
('9aada0cc-5bc2-410f-ac22-35024c47eb56', -250, 'ba7b8196-b5ef-4c66-8891-f76c44af60c9', '4c04e179-de64-466a-95b8-fd4c25a72369', '2021-11-24 12:36:46'),
('9c0abc1e-ff9f-4f1c-86a9-d41abf824854', 200, '3c488442-4385-49ab-8da1-dfec8e433aa7', '9ebce4e7-dcf1-4093-9b6d-b0bd328f40ff', '2021-11-24 12:36:46'),
('ad93927d-efea-4848-82fa-46da2c1b7f47', 250, '405b4d13-77b8-4cc0-af89-aa1830fa80b5', '4c04e179-de64-466a-95b8-fd4c25a72369', '2021-11-24 14:22:37'),
('bbfb5d1a-d24c-4ecf-93c6-3905098c02fb', -100, 'ba7b8196-b5ef-4c66-8891-f76c44af60c9', '06502d03-6a84-4688-9bb8-90bd540e609f', '2021-11-24 12:36:46'),
('c91cadb2-05a3-418f-b485-fee07f95f171', 80, 'ba7b8196-b5ef-4c66-8891-f76c44af60c9', '9ebce4e7-dcf1-4093-9b6d-b0bd328f40ff', '2021-11-24 12:36:46'),
('d39e509e-8e45-4609-bd73-83b18d49ce6e', 100, 'ba7b8196-b5ef-4c66-8891-f76c44af60c9', '4c04e179-de64-466a-95b8-fd4c25a72369', '2021-11-24 12:36:46'),
('dc176db1-9c25-4743-b0b0-0823ee82331b', 100, '61cae446-8f41-40bb-ac3e-574b89b40fe0', 'e29c7611-f34a-43b9-89e8-c047cb483c87', '2021-11-24 12:36:46'),
('e675de56-b553-461a-bd93-b7a1bcdf073c', 500, '405b4d13-77b8-4cc0-af89-aa1830fa80b5', 'b29cea9a-7404-4fe8-8e89-c6b6fb949f85', '2021-11-24 12:36:46'),
('eaace7ef-b534-4a27-b732-57376afdb41e', 50, '88265ad2-8a29-4739-ad18-a30eab929d8c', '4c04e179-de64-466a-95b8-fd4c25a72369', '2021-11-24 12:36:46');

-- --------------------------------------------------------

--
-- Structure de la table `Promotion`
--

CREATE TABLE `Promotion` (
  `idPromotion` varchar(255) NOT NULL,
  `annee_courante` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Promotion`
--

INSERT INTO `Promotion` (`idPromotion`, `annee_courante`) VALUES
('2fad1f58-6d1f-49d1-9e62-c4aba1b5e079', '3eme année'),
('446c2a36-b34f-4ea5-b00c-bef23809d017', '1er année'),
('4b1af463-71e4-4ac5-924d-9020042d4ff9', '4eme année'),
('9a68189c-53e4-4f5e-94ba-cd03ebdac47d', '6eme année'),
('a1db7f5c-7f32-4754-b768-6036872413b8', '2eme année'),
('b350a185-764e-4efb-b8f4-859a7f1ea9c0', '7eme année'),
('e40220ac-6503-4c5f-a697-b8fb6368271b', '5eme année');

-- --------------------------------------------------------

--
-- Structure de la table `Role`
--

CREATE TABLE `Role` (
  `idRole` varchar(255) NOT NULL,
  `nom` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Role`
--

INSERT INTO `Role` (`idRole`, `nom`) VALUES
('31296f18-a8bd-44ec-ae74-a0a3d89aa353', 'professeur'),
('5638f272-3099-4bbe-a8f1-92036440d279', 'Staff'),
('65614d39-9172-4225-b716-2fb7961de886', 'directeur maison'),
('92b04c01-3667-470b-93ca-703322ca3e24', 'Fantome'),
('ba191da5-9642-458d-9ebb-be6dd86e295c', 'Eleve'),
('fb27abd3-2dd9-492f-9607-e611fa1be56a', 'directeur');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Maison`
--
ALTER TABLE `Maison`
  ADD PRIMARY KEY (`idMaison`);

--
-- Index pour la table `Matiere`
--
ALTER TABLE `Matiere`
  ADD PRIMARY KEY (`idMatiere`),
  ADD KEY `fk_Matiere_Personne1_idx` (`personne`);

--
-- Index pour la table `Personne`
--
ALTER TABLE `Personne`
  ADD PRIMARY KEY (`idPersonne`),
  ADD KEY `fk_Personne_Maison` (`maison`),
  ADD KEY `fk_Personne_Promotion1` (`promotion`);

--
-- Index pour la table `Personne_has_Role`
--
ALTER TABLE `Personne_has_Role`
  ADD PRIMARY KEY (`personne`,`role`),
  ADD KEY `fk_Personne_has_Role_Role1_idx` (`role`),
  ADD KEY `fk_Personne_has_Role_Personne1_idx` (`personne`);

--
-- Index pour la table `Points`
--
ALTER TABLE `Points`
  ADD PRIMARY KEY (`idPoints`),
  ADD KEY `fk_Points_Maison` (`maison`),
  ADD KEY `fk_Points_Personne1` (`personne`);

--
-- Index pour la table `Promotion`
--
ALTER TABLE `Promotion`
  ADD PRIMARY KEY (`idPromotion`);

--
-- Index pour la table `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`idRole`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Matiere`
--
ALTER TABLE `Matiere`
  ADD CONSTRAINT `fk_Matiere_Personne1` FOREIGN KEY (`personne`) REFERENCES `Personne` (`idPersonne`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `Personne`
--
ALTER TABLE `Personne`
  ADD CONSTRAINT `fk_Personne_Maison` FOREIGN KEY (`maison`) REFERENCES `Maison` (`idMaison`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Personne_Promotion1` FOREIGN KEY (`promotion`) REFERENCES `Promotion` (`idPromotion`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `Personne_has_Role`
--
ALTER TABLE `Personne_has_Role`
  ADD CONSTRAINT `fk_Personne_has_Role_Personne1` FOREIGN KEY (`personne`) REFERENCES `Personne` (`idPersonne`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Personne_has_Role_Role1` FOREIGN KEY (`role`) REFERENCES `Role` (`idRole`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Points`
--
ALTER TABLE `Points`
  ADD CONSTRAINT `fk_Points_Maison` FOREIGN KEY (`maison`) REFERENCES `Maison` (`idMaison`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Points_Personne1` FOREIGN KEY (`personne`) REFERENCES `Personne` (`idPersonne`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
