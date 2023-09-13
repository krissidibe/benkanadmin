-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 11 sep. 2023 à 22:42
-- Version du serveur : 10.6.15-MariaDB
-- Version de PHP : 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `benkan`
--
CREATE DATABASE IF NOT EXISTS `benkan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `benkan`;

-- --------------------------------------------------------

--
-- Structure de la table `adhesions`
--

CREATE TABLE `adhesions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `sexe` varchar(255) DEFAULT NULL,
  `inOrganisation` varchar(255) DEFAULT NULL,
  `nina` varchar(255) DEFAULT NULL,
  `carteElec` varchar(255) DEFAULT NULL,
  `numero` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `region` varchar(255) NOT NULL,
  `cercleComune` varchar(255) NOT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `idEnq` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `adhesions`
--

INSERT INTO `adhesions` (`id`, `nom`, `prenom`, `sexe`, `inOrganisation`, `nina`, `carteElec`, `numero`, `email`, `region`, `cercleComune`, `adresse`, `photo`, `idEnq`, `created_at`, `updated_at`) VALUES
(2, 'Kouyate', 'Bakary', NULL, 'AIMER KANU', 'Oui', 'Oui', '63466738', 'bkouyate@gmail.com', 'Bamako', 'Commune I', 'Rue 430 porte 63 Banconi', 'adhesions/1809664637.jpg', '1', '2021-07-24 08:41:33', '2022-04-01 11:09:10'),
(4, 'Diallo', 'Oumou', NULL, 'Yelema', 'Oui', 'Oui', '76340935', 'Oudiallo24@gmail.com', 'KAYES', 'BAFOULABE', 'Bafoulabe plateau1', 'adhesion/228206805.jpg', '1', '2021-07-28 04:38:06', '2022-04-01 08:23:07'),
(5, 'DABO', 'Maimouna', NULL, 'RPM', 'Oui', 'Oui', '66 72 47 59', 'dg@medequip.ml', 'BAMAKO', 'Commune I', 'Korofina Sud Bamako', 'adhesion/1044125390.jpg', '1', '2021-07-29 14:46:09', '2022-04-01 08:20:32'),
(9, 'Sall', 'Samba', NULL, 'AIMER KANU', 'Oui', 'Oui', '0039339600642', 'sabatch@gmail.com', 'BAMAKO', 'BAMAKO', 'Sokoniko Bamako', 'adhesion/578673150.jpg', '1', '2021-08-22 19:17:24', '2022-04-02 07:44:30'),
(10, 'Keita', 'Modibo', NULL, 'Non', 'Oui', 'Oui', '94944389', 'mkeita@novecml.net', 'SÉGOU', 'SEGOU', 'Medine', 'adhesion/1212558604.jpg', '1', '2021-08-24 14:52:41', '2022-04-01 10:20:05'),
(11, 'Haidara', 'Aminetou', NULL, 'Non', 'Oui', 'Oui', '93 16 75 80', 'amihaidara0109@gmail.com', 'BAMAKO', 'BAMAKO', 'Niamakoro Bamako', 'adhesion/1653794775.jpg', '1', '2021-09-15 23:48:55', '2022-04-01 10:06:34'),
(12, 'Coulibaly', 'Bokoba', NULL, 'Non', 'Oui', 'Oui', '+22375474736', 'bissocly80@gmail.com', 'BAMAKO', 'BAMAKO', 'J\'ai mesure 1,75; j\'ai 31 ans.', 'adhesion/54414640.jpg', '1', '2021-09-16 03:27:09', '2022-04-01 08:08:15'),
(16, 'Sinayoko', 'Moriba', NULL, 'Association des ressortissants de la commune de Tienfala', 'Oui', 'Oui', '76325455', 'Moribasinayoko@yahoo.fr', 'BAMAKO', 'BAMAKO', 'Quartier Mali 300 logements p8 rue 361', 'adhesion/1620025076.jpg', '1', '2021-09-20 14:57:12', '2021-09-20 14:57:12'),
(17, 'N\'DIAYE', 'Mamadou', NULL, 'Polirique', 'Oui', 'Oui', '66 99 03 75', 'mamadoundiaye23589@gmail.com', 'KAYES', 'KAYES', 'Medine', 'adhesion/132768364.jpg', '1', '2021-09-23 08:57:28', '2022-04-02 07:02:39'),
(18, 'Wane', 'Fatimata', NULL, 'RPM', 'Oui', 'Oui', '00223 71 96 24 87', 'fatided1980@gmail.com', 'KAYES', 'KAYES', 'Kayes Kasso', 'adhesion/1615669000.jpg', '1', '2021-09-30 19:08:38', '2022-04-02 08:07:31'),
(19, 'Cissé', 'OUMAR', NULL, 'AMERS', 'Non', 'Non', '0022371747543', 'oumar.cisse.14811@gmail.com', 'SÉGOU', 'SEGOU', 'Bamako/Point G', 'adhesion/31625254.jpg', '1', '2021-10-01 09:43:59', '2021-10-01 09:43:59'),
(20, 'Barro', 'Habib', NULL, 'Non', 'Non', 'Oui', '70456678', 'barroh3@gmail.com', 'BAMAKO', 'BAMAKO', 'Missabougou', 'adhesion/1726097069.jpg', '1', '2021-10-13 10:13:20', '2021-10-13 10:13:20'),
(26, 'Bassirou', 'SIDIBE', NULL, 'Non', 'Oui', 'Oui', '0022375256944', 'sonaltesssesidibe@gmail.com', 'BOUGOUNI', 'BOUGOUNI', 'Torakabougou', 'adhesion/928580497.jpg', '1', '2021-11-11 08:30:22', '2021-11-11 08:30:22'),
(28, 'Dolo', 'Abdoulaye', NULL, 'Non', 'Non', 'Oui', '78869732', 'doloabdoulaye78@gmail.com', 'MOPTI', 'MOPTI', 'Sport', 'adhesion/310264524.jpg', '1', '2021-11-19 11:18:06', '2022-04-01 08:58:58'),
(29, 'TOGO', 'Hamidou', NULL, 'Fédération des Clubs UNESCO', 'Oui', 'Oui', '79368146', 'togohamidou@gmail.com', 'BANDIAGARA', 'KORO', 'Koporo-na', 'adhesion/661335967.jpg', '1', '2021-12-30 15:32:20', '2022-04-02 08:00:42'),
(33, 'TRAORE', 'Youba', NULL, 'Oui', 'Oui', 'Oui', '66878595', 'traoreyouba@gmail.com', 'BAMAKO', 'BAMAKO', 'Djicoroni para rue: 122 porte: 192', 'adhesion/1587047942.jpg', '1', '2022-02-02 11:58:28', '2023-04-09 11:04:59'),
(74, 'Camara', 'Aïché Djigui', NULL, 'jeunesse mouvement avenir', 'Oui', 'Oui', '67141568', 'Aichedjiguicamara@gmail.com', 'BAMAKO', 'BAMAKO', 'banconi', 'adhesion/1679469867.jpg', NULL, '2022-02-16 08:48:27', '2022-02-16 08:48:27'),
(75, 'simpara', 'Aminata', NULL, 'Association des pionniers de Dioila', 'Non', 'Oui', '94319357', 'samakemams@gmail.com', 'BAMAKO', 'BAMAKO', 'Boulkassoumbougou', 'adhesion/1738964066.jpg', NULL, '2022-02-16 08:53:31', '2022-04-02 07:53:49'),
(76, 'TRAORE', 'Yamoussa', NULL, 'oui', 'Oui', 'Oui', '+223 76 73 40 40', 'yamoussa2000@yahoo.fr', 'BAMAKO', 'BAMAKO', 'banankabougou, face École Biya commune 6', 'adhesion/2060960487.jpg', NULL, '2022-02-17 12:31:28', '2022-04-02 08:02:21'),
(77, 'Traore', 'Bouya', NULL, 'politique', 'Oui', 'Oui', '+22376062323', 'bouya_sabou@yahoo.fr', 'BAMAKO', 'BAMAKO', 'Faladie sema', 'adhesion/374212718.jpg', NULL, '2022-02-17 20:05:45', '2022-04-02 08:02:41'),
(78, 'Zoumana Sidibé', 'Zoumana', NULL, 'Adema PASJ', 'Oui', 'Oui', '65937398', 'sizotbest@gmail.com', 'DIOILA', 'DIOILA', 'Dioila Bolibana', 'adhesion/1434501859.jpg', NULL, '2022-02-17 20:34:16', '2022-04-02 08:10:19'),
(79, 'kemenani', 'Amidou', NULL, 'cds', 'Oui', 'Oui', '76836997', 'kemesbgni@gmail.com', 'BAMAKO', 'BAMAKO', 'kalaban nerekoro', 'adhesion/1287622253.jpg', NULL, '2022-02-17 20:46:49', '2022-04-01 10:22:52'),
(80, 'kissima', 'Diakité', NULL, 'Non', 'Oui', 'Oui', '66724528', 'kissimadiakite14@gmail.com', 'SÉGOU', 'SEGOU', 'hamdallaye rue 426 porte 94', 'adhesion/315800461.jpg', NULL, '2022-02-17 20:49:30', '2022-04-01 10:23:30'),
(81, 'Fofana', 'Nouhoum', NULL, 'Non', 'Oui', 'Oui', '+2347032709291', 'nouf@7837', 'KOULIKORO', 'BANAMBA', 'comarcan', 'adhesion/2145737598.jpg', NULL, '2022-02-17 21:42:17', '2022-04-01 09:06:32'),
(82, 'DOUCOURE', 'MODIBO', NULL, 'Non', 'Oui', 'Oui', '0022670647416', 'doucourevan5@gmail', 'KAYES', 'YELIMANE', 'je suis minier a AIMGOLD ESSAKANE BURKINA FASO', 'adhesion/1162784273.jpg', NULL, '2022-02-17 21:54:46', '2022-04-01 08:59:30'),
(83, 'keita', 'seydou Nama', NULL, 'Non', 'Oui', 'Oui', '76 08 66 69', 'keitamali@yahoo.fr', 'BAMAKO', 'BAMAKO', 'hamdallaye rue 81 porte 51', 'adhesion/1638359090.jpg', NULL, '2022-02-17 21:59:21', '2022-04-01 10:20:31'),
(85, 'ouedrago', 'Dramane', NULL, 'agriculture sylvculteur', 'Oui', 'Oui', '0022382512920', '18004701001037 y', 'KOUTIALA', 'YOROSSO', '1303820704', 'adhesion/1937070518.jpg', NULL, '2022-02-17 22:44:05', '2022-04-02 07:04:38'),
(86, 'KEITA', 'Ousmane Jibhala', NULL, 'Non', 'Oui', 'Non', '66713105', 'ojkeita@gmail.com', 'BAMAKO', 'BAMAKO', 'Bamako Coura', 'adhesion/1843492370.jpg', NULL, '2022-02-17 23:59:15', '2022-04-01 10:21:08'),
(87, 'DIALLO', 'Yaya', NULL, 'apolitique', 'Oui', 'Oui', '76457380', 'yayadiallo71@gmail.com', 'BAMAKO', 'BAMAKO', 'Kalaban coura', 'adhesion/1016823807.jpg', NULL, '2022-02-18 00:35:28', '2022-04-01 08:23:33'),
(88, 'TRAORÉ', 'Soumaila', NULL, 'Non', 'Oui', 'Oui', '76489663', 'soumtara@gmail.com', 'BAMAKO', 'BAMAKO', 'Sokorodji Rue 567 porte 118', 'adhesion/660906795.jpg', NULL, '2022-02-18 05:33:57', '2022-04-02 08:05:11'),
(89, 'Bouaré', 'Tahirou', NULL, 'Non', 'Oui', 'Non', '66656823', 'tahiroubouare14@gmail.com', 'SIKASSO', 'SIKASSO', 'bamako', 'adhesion/510519026.jpg', NULL, '2022-02-18 09:26:11', '2022-02-18 09:26:11'),
(90, 'Arama', 'sékou', NULL, 'oui', 'Oui', 'Oui', '77809071', 'sekouarama580@gmail.com', 'MOPTI', 'DJENNE', 'Étudiant', 'adhesion/2041659084.jpg', NULL, '2022-02-18 11:45:33', '2022-02-18 11:45:33'),
(91, 'FOFANA', 'MAMADOU', NULL, 'Non', 'Oui', 'Oui', '68787884', 'www.fofanamamadou83@gmail.com', 'BAMAKO', 'BAMAKO', 'YIRIMADIO', 'adhesion/1049216577.jpg', NULL, '2022-02-18 16:19:02', '2022-04-01 09:08:27'),
(92, 'sidy', 'Traoré', NULL, 'Non', 'Oui', 'Non', '79992169', 'sidyt082@gmail.com', 'BAMAKO', 'BAMAKO', 'Banconi', 'adhesion/1286627113.jpg', NULL, '2022-02-18 18:08:35', '2022-04-02 07:53:17'),
(93, 'BAH', 'Sirou', NULL, 'ASMA', 'Oui', 'Oui', '77 38 09 14', 'Siroubah95@gmail.com', 'MOPTI', 'DJENNE', 'Sofarois (Fakala)', 'adhesion/947245375.jpg', NULL, '2022-02-18 19:02:22', '2022-02-18 19:02:22'),
(94, 'CAMARA', 'Aboubacar', NULL, 'Politique', 'Oui', 'Oui', '70059005', 'camaraself@gmail.com', 'KOULIKORO', 'KANGABA', 'Selefougou', 'adhesion/699199188.jpg', NULL, '2022-02-19 20:06:13', '2022-02-19 20:06:13'),
(95, 'DIALLO', 'OUMAR', NULL, 'Non', 'Oui', 'Oui', '62 12 15 15', 'od733780gmail.com', 'SIKASSO', 'SIKASSO', 'j\'ai pas compris', 'adhesion/1674297544.jpg', NULL, '2022-02-19 22:51:24', '2022-04-01 08:23:56'),
(96, 'BAMBA', 'Abdramane', NULL, 'Non', 'Oui', 'Oui', '71882224', 'draba24@yahoo.fr', 'BAMAKO', 'BAMAKO', 'Kalaban Coro', 'adhesion/402284300.jpg', '1', '2022-02-19 23:28:58', '2022-02-19 23:28:58'),
(97, 'Sy', 'Amara', NULL, 'Non', 'Non', 'Non', '+22376292489', 'Amarasy254@gmail.com', 'BAMAKO', 'BAMAKO', 'Homme', 'adhesion/975013945.jpg', '1', '2022-02-19 23:46:16', '2022-04-02 07:58:13'),
(98, 'Kanouté', 'Issa', NULL, 'Non', 'Non', 'Non', '70279141', 'issakanoute350@yahoo.fr', 'KOULIKORO', 'KATI', 'Koko-plateau', 'adhesion/963182078.jpg', NULL, '2022-02-20 06:08:18', '2022-04-01 10:18:33'),
(99, 'Mamadou z Diarra', 'DIARRA', NULL, 'politique', 'Non', 'Non', '76809259', 'mamadoudiarra852@gmail.com', 'SIKASSO', 'KADIOLO', 'journaliste sportif,en comptable', 'adhesion/1078023804.jpg', NULL, '2022-02-20 08:41:20', '2022-04-01 11:13:12'),
(100, 'Tounkara', 'Ibrahim', NULL, 'Benkan', 'Oui', 'Non', '212-920-1629', 'tounkaraibrahim@yahoo.fr', 'BAMAKO', 'BAMAKO', 'porte 57 rue 810 faladie', 'adhesion/1556862882.jpg', NULL, '2022-02-20 09:00:46', '2022-04-02 08:01:02'),
(101, 'BALLO', 'Sory Ibrahim Moussa', NULL, 'URD', 'Oui', 'Oui', '72419070', 'soryibrahimmoussa@gmail.com', 'BAMAKO', 'BAMAKO', 'Rue\"324      Porte \"220', 'adhesion/1465822019.jpg', NULL, '2022-02-20 10:19:12', '2022-02-20 10:19:12'),
(102, 'Sidibé', 'Aliou', NULL, 'Non', 'Oui', 'Oui', '66685426', 'lacatus73.as@gmail.com', 'KAYES', 'KAYES', 'Kakoulou', 'adhesion/179978120.jpg', NULL, '2022-02-20 10:20:22', '2022-04-02 07:49:57'),
(103, 'goribe', 'silly', NULL, 'Non', 'Oui', 'Oui', '0033767460787', 'boulayegoribe156@gmail.com', 'KAYES', 'KAYES', '6 rue péan  75013 Paris', 'adhesion/1000101836.jpg', NULL, '2022-02-20 10:36:05', '2022-02-20 10:36:05'),
(104, 'GAKOU', 'Lalia epse TRAORE', NULL, 'unesco Association', 'Oui', 'Oui', '61007242', 'Laligakou@gmail.com', 'BAMAKO', 'BAMAKO', 'Sebenicoro', 'adhesion/1359711676.jpg', NULL, '2022-02-20 10:41:15', '2022-04-01 09:10:16'),
(105, 'MAIGA', 'Sékou B', NULL, 'CRIJ', 'Oui', 'Oui', '60303031', 'm.sekoub@yahoo.com', 'BAMAKO', 'BAMAKO', 'Sebenicoro', 'adhesion/53250112.jpg', NULL, '2022-02-20 11:17:07', '2022-04-01 11:10:19'),
(107, 'KOUMA', 'mamadou', NULL, 'oui', 'Oui', 'Oui', '00242066551616', 'mamadoubamakouma@gmail.com', 'KOULIKORO', 'BANAMBA', 'djelibougou', 'adhesion/1255095305.jpg', NULL, '2022-02-20 12:59:39', '2022-04-01 11:07:50'),
(108, 'Dioumassi', 'Lassana', NULL, 'apolitique', 'Oui', 'Oui', '76426355', 'dioumassilassana@gmail.com', 'BAMAKO', 'BAMAKO', 'Lafia- Bougoudani', 'adhesion/1764662439.jpg', NULL, '2022-02-20 13:11:51', '2022-04-01 08:58:06'),
(109, 'COULIBALY', 'SORY IBRAHIM', NULL, 'Non', 'Oui', 'Oui', '76176357', 'sorycoul6@gmail.com', 'BAMAKO', 'BAMAKO', 'NIAMAKORO BKO', 'adhesion/1919187848.jpg', NULL, '2022-02-20 13:28:45', '2022-04-01 08:08:42'),
(110, 'Guindo', 'Alhousseyni', NULL, 'Benkan', 'Oui', 'Oui', '83838300', 'Alhousseyni12@hotmail.com', 'BAMAKO', 'BAMAKO', 'Faladie Sema', 'adhesion/688000258.jpg', NULL, '2022-02-20 13:46:48', '2022-04-01 10:05:51'),
(111, 'FANE', 'AMADOU BOUBACAR', NULL, 'PDES', 'Oui', 'Oui', '76348001', 'amadouboubacarfane@gmail.com', 'BAMAKO', 'BAMAKO', 'Boulkassoumbougou', 'adhesion/1467442440.jpg', NULL, '2022-02-20 17:28:08', '2022-04-01 09:03:53'),
(112, 'Mbodje', 'El Bechir', NULL, 'Non', 'Non', 'Oui', '66753307', 'elbachirmbodje@gmail.com', 'BAMAKO', 'BAMAKO', 'Zrny Stade 26 Mars', 'adhesion/1030630145.jpg', NULL, '2022-02-20 20:44:25', '2022-04-02 07:00:18'),
(113, 'Sidibé', 'Joachim', NULL, 'oui', 'Oui', 'Oui', '76 38 74 20', 'jsidibe@yahoo.fr', 'BAMAKO', 'BAMAKO', 'ZRNY Yirimadio', 'adhesion/1843821711.jpg', NULL, '2022-02-20 21:20:45', '2022-04-02 07:52:18'),
(114, 'Maiga', 'oumar', NULL, 'Non', 'Oui', 'Oui', '64048362', 'Obarroumaiga1955@gmail.com', 'KOULIKORO', 'KATI', 'kantiguila', 'adhesion/1318731848.jpg', NULL, '2022-02-20 23:16:40', '2022-04-01 11:10:59'),
(115, 'Thera', 'Adama Siaka', NULL, 'oui', 'Oui', 'Oui', '+223 74044147', '++223 74044147', 'SÉGOU', 'SEGOU', 'Diamarabougou Markala (segou)', 'adhesion/751438432.jpg', NULL, '2022-02-21 11:55:29', '2022-04-02 07:59:09'),
(116, 'Doumbia', 'Issa', NULL, 'UNESCO', 'Oui', 'Oui', '75402729', 'Drdoum7@gmail.com', 'BAMAKO', 'BAMAKO', 'Mamaribougou', 'adhesion/1445243711.jpg', NULL, '2022-02-21 12:46:07', '2022-04-01 09:01:47'),
(117, 'DICKO', 'Badi Abdoul Wahab', NULL, 'apolitique', 'Oui', 'Oui', '76570077', 'badiabdoulwahabdicko@gmail.com', 'GAO', 'BOUREM', 'kalaban coura ACI', 'adhesion/1446232236.jpg', NULL, '2022-02-21 17:52:39', '2022-04-01 08:57:43'),
(118, 'samake', 'Abdoulaye', NULL, 'Non', 'Oui', 'Oui', '223763695', 'samentrepris@gmail.com', 'SÉGOU', 'SEGOU', 'homme', 'adhesion/258785348.jpg', NULL, '2022-02-22 09:53:09', '2022-04-02 07:45:04'),
(119, 'Zorome', 'Habibatou', NULL, 'Politique', 'Oui', 'Oui', '93364451', 'habibatouzorom@gmail', 'BAMAKO', 'BAMAKO', 'Kalaban coura ACI', 'adhesion/1366447277.jpg', NULL, '2022-02-22 21:49:55', '2022-04-02 08:09:08'),
(120, 'SIDIBE', 'Aboubakar', NULL, 'Non', 'Oui', 'Oui', '64307781', 'asidibe14@gmail.com', 'BAMAKO', 'BAMAKO', 'lafiabougou rue 250 porte 195', 'adhesion/642048589.jpg', NULL, '2022-03-01 08:47:10', '2022-04-02 07:47:27'),
(121, 'TANGARA', 'Abdoulaye', NULL, 'Non', 'Oui', 'Oui', '0022376203734', 'tangaraabdoulaye178@gmail.com', 'SÉGOU', 'SEGOU', 'Bamako, kalaban Adeken', 'adhesion/226717058.jpg', NULL, '2022-03-01 13:22:41', '2022-04-02 07:58:44'),
(122, 'Diallo', 'Sega', NULL, 'Apolitique', 'Oui', 'Oui', '77 34 02 37', 'dsega327@gmail.com', 'BAMAKO', 'BAMAKO', 'Sikoro', 'adhesion/1023182603.jpg', NULL, '2022-03-01 13:27:52', '2022-04-01 08:24:48'),
(123, 'Sanon', 'Abdoul Rachid Appollinaire', NULL, 'Non', 'Oui', 'Non', '95051840', 'abdoulrachidasanon@gmail.com', 'BAMAKO', 'BAMAKO', 'Titibougou', 'adhesion/1573667774.jpg', '1', '2022-03-01 14:14:01', '2022-04-02 07:46:36'),
(124, 'Koné', 'Nouhoum', NULL, 'RPM', 'Oui', 'Oui', '66724830', 'kone_nouhoumt@yahoo.fr', 'SIKASSO', 'KADIOLO', 'Lafiabougou Bougoudany', 'adhesion/1607421345.jpg', NULL, '2022-03-01 14:21:55', '2022-04-01 11:03:07'),
(126, 'Koné', 'Odiouma', NULL, 'Non', 'Oui', 'Oui', '22373111629', 'odioumakone@yahoo.fr', 'BOUGOUNI', 'BOUGOUNI', 'Bougouni', 'adhesion/1229043508.jpg', NULL, '2022-03-01 14:57:37', '2022-04-01 11:03:37'),
(128, 'Traore', 'Issa', NULL, 'CNJ', 'Oui', 'Oui', '73284371', 'djenebousalika1986@gmail.com', 'BAMAKO', 'BAMAKO', 'Hamdallaye', 'adhesion/1333717556.jpg', NULL, '2022-03-01 17:27:27', '2022-04-02 08:03:00'),
(130, 'Traoré', 'Ibrahima Yacouba', NULL, 'Non', 'Oui', 'Oui', '78 38 82 80', 'traoreibrahimayacouba@yahoo.fr', 'BAMAKO', 'BAMAKO', 'Bacodjicoroni golfe', 'adhesion/1918571484.jpg', NULL, '2022-03-02 11:34:52', '2022-04-02 08:05:29'),
(131, 'Diarra', 'Malick', NULL, 'Non', 'Oui', 'Oui', '22371555065', 'malickdiarra257@gmail.com', 'KAYES', 'KAYES', 'actuellement je suis à Sikasso', 'adhesion/1141899459.jpg', NULL, '2022-03-02 12:28:03', '2022-04-01 08:26:53'),
(132, 'Modibo Sissoko', 'Modibo Sissoko', NULL, 'oui', 'Oui', 'Non', '79 05 94 41', 'smodibo268@gmail.com', 'NARA', 'NARA', 'Nara dabaye', 'adhesion/597284982.jpg', NULL, '2022-03-02 13:29:37', '2022-04-02 07:01:00'),
(133, 'Coulibaly', 'Mahamadou', NULL, 'Non', 'Oui', 'Oui', '62007100', 'coulibalymahamadou97@gmail.com', 'BAMAKO', 'BAMAKO', 'Banconi Djanguinebougou', 'adhesion/1808929.jpg', NULL, '2022-03-02 14:28:02', '2022-04-01 08:09:20'),
(134, 'Bengaly', 'Alhassane', NULL, 'coream', 'Oui', 'Oui', '74676025', 'bengalyalhassane22gmail', 'SIKASSO', 'SIKASSO', 'Bamako sebenikoro', 'adhesion/418947048.jpg', NULL, '2022-03-02 16:29:44', '2022-03-02 16:29:44'),
(136, 'Coulibaly', 'Seydou', NULL, 'Non', 'Oui', 'Oui', '76393115', 'baharoubaharou@gmail.com', 'SIKASSO', 'SIKASSO', 'sebenikoro', 'adhesion/1640676090.jpg', NULL, '2022-03-02 16:34:46', '2022-08-30 15:58:32'),
(137, 'DIALLO', 'Cheick Oumar', NULL, 'Convergence pour le développement de Ganadougou', 'Oui', 'Oui', '79018085', 'dialslices@gmail.com', 'BAMAKO', 'BAMAKO', 'Kalaban coura ACI', 'adhesion/162999405.jpg', NULL, '2022-03-02 16:39:20', '2022-04-01 08:25:13'),
(138, 'Fane', 'Tenin', NULL, 'Non', 'Oui', 'Oui', '66794366', 'teninfanne@yahoo.fr', 'BAMAKO', 'BAMAKO', 'sebenicoro Ifa Baco', 'adhesion/1485769984.jpg', NULL, '2022-03-02 16:53:09', '2022-04-01 09:06:09'),
(139, 'Cissé', 'Amadou', NULL, 'FARE', 'Oui', 'Oui', '76034247', 'Amadoucisse@gmail.com', 'BAMAKO', 'BAMAKO', 'Niamana', 'adhesion/1754695151.jpg', '1', '2022-03-02 17:51:38', '2022-03-02 17:51:38'),
(140, 'Diawara', 'Cheickina', NULL, 'Non', 'Oui', 'Oui', '78868697', 'zinwara3@gmail.com', 'BAMAKO', 'BAMAKO', 'Boulkassoumbougou', 'adhesion/1139836308.jpg', '1', '2022-03-02 18:22:56', '2022-04-01 08:57:18'),
(142, 'Goita', 'Ezechias', NULL, 'Non', 'Non', 'Non', '79277459', 'goitaezechias76@gmail.com', 'KOUTIALA', 'KOUTIALA', 'neant', 'adhesion/1975503062.jpg', NULL, '2022-03-02 22:46:54', '2022-04-01 09:50:06'),
(143, 'coulibaly', 'Yera', NULL, 'Non', 'Oui', 'Oui', '70778521', 'yeraprestation@yahoo.fr', 'KAYES', 'BAFOULABE', 'au nord de Bafoulabe', 'adhesion/890323022.jpg', NULL, '2022-03-03 01:12:05', '2022-04-01 08:16:13'),
(144, 'Tounkara', 'Souleymane', NULL, 'Oui', 'Oui', 'Oui', '75182160', '75182160', 'BAMAKO', 'BAMAKO', 'djelibougou', 'adhesion/1867799423.jpg', NULL, '2022-03-03 05:17:43', '2022-03-03 05:17:43'),
(145, 'diakite', 'mariam', NULL, 'Adema PASJ', 'Oui', 'Oui', '60150999', 'traoremariamdiakite@gmail.com', 'BAMAKO', 'BAMAKO', 'quartier mali', 'adhesion/1626147943.jpg', NULL, '2022-03-03 07:20:41', '2022-04-01 08:22:44'),
(146, 'Thiero', 'Djenebou', NULL, 'Non', 'Non', 'Non', '79378271', 'Djenebathiero1@gmail.com', 'BAMAKO', 'BAMAKO', 'tein blanche', 'adhesion/619222087.jpg', NULL, '2022-03-03 08:45:42', '2022-04-02 07:59:54'),
(147, 'keita', 'hady', NULL, 'mouvement citoyen', 'Oui', 'Oui', '0022376035111', 'hadykeita11@gmail.com', 'BAMAKO', 'BAMAKO', 'kalabancoura rue 30 porte 1888', 'adhesion/1441038888.jpg', NULL, '2022-03-03 11:30:04', '2022-04-01 10:22:11'),
(150, 'DAOU', 'IDRISSA', NULL, 'Non', 'Oui', 'Oui', '79060531', 'idrissadaou74@gmail.com', 'BAMAKO', 'BAMAKO', 'LAFIABOUGOU RUE 440 PORTE 823', 'adhesion/928466622.jpg', NULL, '2022-03-03 17:28:25', '2022-04-01 08:21:42'),
(151, 'Kounta', 'Sidi El Moctar', NULL, 'Benkan', 'Oui', 'Oui', '77922166', 'alkuntius@gmail.com', 'BAMAKO', 'BAMAKO', 'Commune 6', 'adhesion/1102896874.jpg', NULL, '2022-03-03 18:18:38', '2022-04-01 11:08:30'),
(152, 'MARIKO', 'Sibiri', NULL, 'Rpdm', 'Oui', 'Oui', '76022155', 'marikosibiri@gmail.com', 'KOULIKORO', 'KATI', 'Katie koko plaine extension (Tombo)', 'adhesion/1793439964.jpg', NULL, '2022-03-04 09:15:04', '2022-04-01 11:13:36'),
(153, 'Bouare', 'Bintou', NULL, 'Non', 'Oui', 'Oui', '73286052', 'bbintou15@yahoo.fr', 'SÉGOU', 'SEGOU', 'titibougou', 'adhesion/2041690353.jpg', NULL, '2022-03-04 11:46:25', '2022-03-04 11:46:25'),
(154, 'Ballo', 'Seydou', NULL, 'apolitique', 'Oui', 'Oui', '75032709', 'balloseydou64@gmail.com', 'BAMAKO', 'BAMAKO', '1m82', 'adhesion/1403529819.jpg', NULL, '2022-03-04 12:36:00', '2022-03-04 12:36:00'),
(155, 'TRAORE', 'Yoro', NULL, 'UNJM, AEEM', 'Oui', 'Oui', '76285139', 'yorotraore@yahoo.fr', 'SÉGOU', 'SEGOU', 'Kalabancoro heremakono', 'adhesion/667723327.jpg', NULL, '2022-03-04 13:00:34', '2022-04-02 08:03:18'),
(156, 'Sangaré', 'Abdoulaye', NULL, 'Non', 'Oui', 'Oui', '83807190', 'abdsang.89@gmail.com', 'BAMAKO', 'BAMAKO', 'homme', 'adhesion/1470272646.jpg', NULL, '2022-03-04 15:20:12', '2022-04-02 07:55:32'),
(157, 'Cisse', 'Mama', NULL, 'JDE', 'Oui', 'Oui', '00221784483692', 'cisa.mlbko2015@yahoo.com', 'BAMAKO', 'BAMAKO', 'Dakar hanne Maristes', 'adhesion/2143409814.jpg', '1', '2022-03-04 15:20:47', '2022-03-04 15:20:47'),
(158, 'Kamara', 'Nathalie Ramatou', NULL, 'Non', 'Oui', 'Non', '71262678', 'Kamaranathie78@gmail.com', 'BAMAKO', 'BAMAKO', 'Hamdallaye Rue 380 porte 37', 'adhesion/1451174704.jpg', '1', '2022-03-04 15:34:52', '2022-04-01 10:08:26'),
(159, 'Thiam', 'Modibo', NULL, 'rpm', 'Oui', 'Oui', '76363629', 'thiammodi@gmail.com', 'BAMAKO', 'BAMAKO', 'kalaban coura', 'adhesion/728695881.jpg', NULL, '2022-03-04 15:38:20', '2022-04-02 07:59:34'),
(161, 'DIALLO', 'Abd El Aziz', NULL, 'Non', 'Oui', 'Oui', '76436256', 'azizbceom@yahoo.fr', 'SÉGOU', 'SEGOU', 'Faladie Bamako', 'adhesion/8271989.jpg', NULL, '2022-03-04 17:58:48', '2022-04-01 08:25:32'),
(162, 'TRAORE', 'Mamadou', NULL, 'RPM', 'Oui', 'Oui', '68517041', 'mamadoualioutrore@gmail.com', 'SÉGOU', 'SEGOU', 'quartier Boigoufiè rue 214', 'adhesion/1452434434.jpg', NULL, '2022-03-04 19:16:49', '2022-04-02 08:03:43'),
(163, 'TRAORÉ', 'Ousmane', NULL, 'Oui', 'Non', 'Oui', '75730891', 'petrolierousbi@gmail.com', 'BAMAKO', 'BAMAKO', 'Sicoro', 'adhesion/41511741.jpg', NULL, '2022-03-05 08:08:52', '2022-04-02 08:05:55'),
(164, 'Kamara', 'Awa Oumar', NULL, 'Non', 'Oui', 'Non', '82659841', 'Awakamara@930gmail.com', 'BAMAKO', 'BAMAKO', 'Hamdallaye', 'adhesion/540489176.jpg', '1', '2022-03-05 13:06:16', '2022-04-01 10:09:11'),
(165, 'SIDIBÉ', 'NOUHOUM LADJI', NULL, 'Non', 'Oui', 'Oui', '71 05 71 05', 'nouhoumladjis@yahoo.fr', 'BAMAKO', 'BAMAKO', 'ZRNY', 'adhesion/1000795570.jpg', NULL, '2022-03-05 14:40:11', '2022-04-02 07:52:47'),
(166, 'Kouyaté', 'Fanta', NULL, 'Non', 'Oui', 'Oui', '76105592', 'Fantak146@gmail.com', 'BAMAKO', 'BAMAKO', 'Hamdallaye', 'adhesion/1446046662.jpg', '1', '2022-03-05 20:14:20', '2022-04-01 11:09:49'),
(167, 'Kamara', 'Aïssata Oumar', NULL, 'Non', 'Non', 'Non', '69280607', 'Kamaranathie78@gmail.com', 'BAMAKO', 'BAMAKO', 'Hamdallaye', 'adhesion/1176873635.jpg', '1', '2022-03-05 20:17:03', '2022-04-01 10:09:50'),
(168, 'Sountoura', 'Yaya', NULL, 'Benkan', 'Oui', 'Non', '70399115', 'sountouraya55@icloud.com', 'BOUGOUNI', 'KOLONDIEBA', 'Massala', 'adhesion/1746303878.jpg', '1', '2022-03-05 22:01:19', '2022-04-02 07:57:42'),
(169, 'zeynabou', 'sene', NULL, 'Non', 'Non', 'Non', '94945830', 'zeyna 10@gmail.com', 'MOPTI', 'MOPTI', 'sevare', 'adhesion/1077609871.jpg', NULL, '2022-03-06 21:13:32', '2022-04-02 08:08:51'),
(170, 'COULIBALY', 'Amadou  BEYDI', NULL, 'ADEMA', 'Non', 'Oui', '+22376064647', 'amabeydi@yahoo.fr', 'BAMAKO', 'BAMAKO', 'Bacodjicoroni  ACI  Rue  : 610  Porte : 228', 'adhesion/1430414144.jpg', NULL, '2022-03-06 22:37:52', '2022-04-01 08:19:23'),
(171, 'kanoute', 'oumar', NULL, 'Adema', 'Oui', 'Oui', '77777777', '74562797', 'KAYES', 'BAFOULABE', 'oumar kanoute', 'adhesion/1558564646.jpg', NULL, '2022-03-07 09:42:14', '2022-04-01 10:13:03'),
(172, 'CISSÉ', 'MOHAMED', NULL, 'Non', 'Oui', 'Oui', '76913238', 'medcisse2002@gmail.com', 'BAMAKO', 'BAMAKO', 'Bagadadji Rue: 514 Porte: 151', 'adhesion/692435710.jpg', NULL, '2022-03-07 11:36:20', '2022-03-07 11:36:20'),
(173, 'Dagnoko', 'Issa', NULL, 'ASPP', 'Oui', 'Oui', '76617630', 'issadagnoko30@gmail.com', 'BAMAKO', 'BAMAKO', 'Base A', 'adhesion/1733460511.jpg', NULL, '2022-03-07 11:42:49', '2022-04-01 08:21:21'),
(174, 'SOUMBOUNOU', 'Mountaga', NULL, 'Adema PASJ', 'Oui', 'Oui', '66718029', 'm.soumbounou@cira-sas.com', 'SÉGOU', 'SEGOU', 'ntomikorobougou rue 654 porte 193', 'adhesion/1302280055.jpg', NULL, '2022-03-07 11:54:29', '2022-04-02 07:56:09'),
(175, 'Traoré', 'Bagui', NULL, 'AJRK', 'Oui', 'Oui', '79301229', 'baguitraore68@yahoo.fr', 'BAMAKO', 'BAMAKO', 'niamana', 'adhesion/1330665785.jpg', NULL, '2022-03-07 13:23:04', '2022-04-02 08:06:19'),
(176, 'Maiga', 'Alassane', NULL, 'Non', 'Oui', 'Oui', '66761717', 'amaiga251@gmail.com', 'BAMAKO', 'BAMAKO', 'Badalabougou', 'adhesion/1688936608.jpg', '1', '2022-03-07 13:57:23', '2022-04-01 11:11:35'),
(177, 'NAMORY SÉKOU', 'KEÏTA', NULL, 'apolitique', 'Non', 'Non', '73723888', 'keitan037@gmail.com', 'KOULIKORO', 'KATI', 'SEBENICORO', 'adhesion/1899825538.jpg', NULL, '2022-03-07 18:18:59', '2022-04-02 07:03:29'),
(178, 'Diarra', 'Koniba', NULL, 'Non', 'Oui', 'Oui', '93189220', 'konibadiarra896@gmail.com', 'MOPTI', 'MOPTI', 'comptabite', 'adhesion/695781466.jpg', NULL, '2022-03-08 09:14:29', '2022-04-01 08:46:04'),
(179, 'SIDIBE', 'Amadou fily', NULL, 'CRC Oumar tatam LY', 'Oui', 'Oui', '76058031', 'smithamadous@yahoo.com', 'BAMAKO', 'BAMAKO', 'Sokorodji', 'adhesion/1005119086.jpg', NULL, '2022-03-08 09:23:23', '2022-04-02 07:49:25'),
(180, 'COULIBALY', 'Hadji', NULL, 'Non', 'Oui', 'Non', '76353417', 'coulibaly_hadji@yahoo.fr', 'SÉGOU', 'SEGOU', 'contrôleur de gestion à la CMDT de Koutiala', 'adhesion/1612385488.jpg', NULL, '2022-03-08 16:23:46', '2022-04-01 08:20:04'),
(181, 'Diarra', 'Yacouba', NULL, 'Non', 'Non', 'Non', '83419260', 'Diarrayacouba257@gmail.com', 'MOPTI', 'MOPTI', 'Menuiserie', 'adhesion/506385163.jpg', NULL, '2022-03-08 19:32:18', '2022-04-01 08:56:28'),
(182, 'Traoré', 'Mamadou', NULL, 'Non', 'Non', 'Non', '93492659', 'amadoutraorey239@gmail.com', 'MOPTI', 'MOPTI', 'élève', 'adhesion/1751484398.jpg', NULL, '2022-03-08 19:43:07', '2022-04-02 08:06:46'),
(183, 'traore', 'ali', NULL, 'Non', 'Non', 'Non', '60543767', 'traorealvin187@gmail.com', 'MOPTI', 'MOPTI', 'Basketeur', 'adhesion/606754750.jpg', NULL, '2022-03-08 19:56:27', '2022-04-02 08:04:44'),
(184, 'TOURÉ', 'Ibrahim Ahamadou', NULL, 'RENOVA', 'Oui', 'Oui', '78625258', 'ibrahimtoure82@yahoo.com', 'BAMAKO', 'BAMAKO', 'Baco Djicoroni GOLF', 'adhesion/2098233445.jpg', '1', '2022-03-09 16:41:01', '2022-03-09 16:41:01'),
(185, 'Wague', 'Souleymane', NULL, 'Non', 'Oui', 'Oui', '76322703', 'souleymane_w@yahoo.fr', 'BAMAKO', 'BAMAKO', 'Hippodrome', 'adhesion/717114988.jpg', '1', '2022-03-09 16:44:58', '2022-04-02 08:07:12'),
(186, 'Doumbia', 'Anna', NULL, 'Non', 'Non', 'Non', '60453137', 'annadoumbia57@gmail.com', 'MOPTI', 'MOPTI', 'élève', 'adhesion/1406316763.jpg', NULL, '2022-03-09 16:59:25', '2022-04-01 09:02:55'),
(187, 'Maïga', 'Yaya dit Baba', NULL, 'Non', 'Oui', 'Non', '+22365393940', 'maigababa622@gmail.com', 'BAMAKO', 'BAMAKO', 'Sotuba ACI', 'adhesion/679690554.jpg', NULL, '2022-03-10 00:19:42', '2022-04-02 06:59:32'),
(188, 'camara', 'samba', NULL, 'oui', 'Oui', 'Oui', '99699900', 'gouverneursambacamara@gmail.com', 'BAMAKO', 'BAMAKO', 'badialan II', 'adhesion/1783218883.jpg', NULL, '2022-03-10 23:40:08', '2022-03-10 23:40:08'),
(189, 'ZERBO', 'Seini', NULL, 'Non', 'Oui', 'Oui', '78940481', 'Seinizerbo4@gmail.com', 'MOPTI', 'MOPTI', 'Technicien de Bâtiments', 'adhesion/1793729895.jpg', '1', '2022-03-11 08:32:36', '2022-04-02 08:07:50'),
(190, 'Daou', 'Seydou', NULL, 'Non', 'Non', 'Non', '66450952', 'seydkillah@gmail.com', 'BAMAKO', 'BAMAKO', 'baco djicoroni', 'adhesion/1775339280.jpg', NULL, '2022-03-11 16:24:36', '2022-04-01 08:22:08'),
(191, 'FOFANA', 'Dionké', NULL, 'AIMER', 'Oui', 'Oui', '66741636', 'tomora.saboucire@gmail.com', 'BAMAKO', 'BAMAKO', 'Rue 669 Porte 111', 'adhesion/1904691078.jpg', NULL, '2022-03-11 21:39:34', '2022-04-01 09:08:51'),
(192, 'AMADOU.', 'SAMASSEKOU', NULL, 'Non', 'Non', 'Non', '78348622', 'samassekouamadoub@gmail.com', 'MOPTI', 'MOPTI', 'Mopti', 'adhesion/872191369.jpg', NULL, '2022-03-12 19:35:19', '2022-03-12 19:35:19'),
(193, 'Sacko', 'Mahamadou', NULL, 'Non', 'Oui', 'Oui', '78781632', 'sackomah@gmail.com', 'BAMAKO', 'BAMAKO', 'Baco-djicoroni ACI, rue 640, porte 475', 'adhesion/379013498.jpg', NULL, '2022-03-13 01:18:39', '2022-04-02 07:05:35'),
(194, 'sacko', 'Aboubacar', NULL, 'Non', 'Oui', 'Oui', '73477711', '73477711', 'BAMAKO', 'BAMAKO', 'drodougou', 'adhesion/29222798.jpg', NULL, '2022-03-15 10:51:25', '2022-04-02 07:06:04'),
(195, 'AMEKOU', 'Kodjo Elom', NULL, 'Non', 'Non', 'Non', '91740610', 'amekouelom@gmail.com', 'BAMAKO', 'BAMAKO', 'forme normale', 'adhesion/86401622.jpg', NULL, '2022-03-15 22:52:23', '2022-03-15 22:52:23'),
(196, 'Gano', 'Oumar', NULL, 'Non', 'Non', 'Non', '82474644', 'ganooumar114@gmail.com', 'MOPTI', 'MOPTI', 'élève', 'adhesion/1158358392.jpg', NULL, '2022-03-17 20:08:05', '2022-04-01 09:49:10'),
(197, 'Maiga', 'Abdoulaye', NULL, 'Non', 'Oui', 'Oui', '74208408', 'maigadou08@gmail.com', 'MOPTI', 'MOPTI', 'Étudiant', 'adhesion/1407402964.jpg', NULL, '2022-03-19 13:32:16', '2022-04-01 11:12:08'),
(198, 'Diarisso', 'Ibrahima', NULL, 'Non', 'Non', 'Non', '93055853', 'diarissoibrahima5@gmail.com', 'MOPTI', 'MOPTI', 'Étudiant', 'adhesion/1366678697.jpg', NULL, '2022-03-20 11:08:36', '2022-04-01 08:25:58'),
(199, 'Sissoko', 'kissima', NULL, 'Non', 'Oui', 'Oui', '73743388', 'ksissoko@gmail112.com', 'KAYES', 'BAFOULABE', 'Éleveur', 'adhesion/682754.jpg', NULL, '2022-03-20 15:47:12', '2022-04-02 07:55:15'),
(200, 'DOUMBIA', 'Idrissa', NULL, 'Non', 'Oui', 'Oui', '00223 74 53 40 14', 'i.doumbia300@gmail.com', 'BAMAKO', 'BAMAKO', 'Djicoroni Para Doteme 1', 'adhesion/1138247584.jpg', NULL, '2022-03-20 16:55:59', '2022-04-01 09:03:30'),
(201, 'ZERBO', 'Adama', NULL, 'Jeunesse Libre et Démocratique JLD', 'Oui', 'Non', '66763128', 'adamasandji@gmail.com', 'BAMAKO', 'BAMAKO', 'Quartier SAME / COMMUNE III/Bko', 'adhesion/1754180510.jpg', NULL, '2022-03-22 15:39:11', '2022-04-02 08:08:18'),
(202, 'Fane', 'Fatou', NULL, 'Non', 'Oui', 'Oui', '77626216', 'Fanefatou78@yahoo.ca', 'BAMAKO', 'BAMAKO', 'Cite du Niger 2', 'adhesion/823426509.jpg', '1', '2022-03-23 16:27:10', '2022-04-01 09:05:56'),
(203, 'toure', 'Ibrahim Oumar', NULL, 'Nouvel Horizon', 'Oui', 'Oui', '76357771', 'ibrapap@hotmail.fr', 'BAMAKO', 'BAMAKO', 'Golf', 'adhesion/306293375.jpg', NULL, '2022-03-24 16:19:27', '2022-04-02 08:01:24'),
(204, 'TIMBINÉ', 'Hamidou', NULL, 'club de soutien', 'Oui', 'Oui', '79 16 49 19', 'hamtimbine86@yahoo.fr', 'BAMAKO', 'BAMAKO', 'yirimadio ZRNY', 'adhesion/848397478.jpg', NULL, '2022-03-30 11:31:51', '2022-04-02 08:00:20'),
(205, 'Mangara', 'Abdoul kader', NULL, 'Non', 'Non', 'Non', '0022556334492', 'kaderma', 'BAMAKO', 'BAMAKO', 'homme', 'adhesion/1759977108.jpg', NULL, '2022-03-31 15:47:27', '2022-04-05 13:11:04'),
(206, 'DIARRA', 'LADJI', NULL, 'politique', 'Oui', 'Oui', '76751135', 'wwilly770@gmail.com', 'BOUGOUNI', 'BOUGOUNI', '1m76', 'adhesion/1804177630.jpg', NULL, '2022-03-31 19:38:06', '2022-04-01 08:56:54'),
(207, 'Sylla épouse Traoré', 'badiallo', NULL, 'Non', 'Oui', 'Oui', '66738016', 'pitchoubad@yahoo.fr', 'BAMAKO', 'BAMAKO', 'baco djikoroni aci rue 610 porte 342', 'adhesion/387178982.jpg', NULL, '2022-04-02 13:11:51', '2022-04-02 13:11:51'),
(208, 'Diallo', 'Abdoul Karim', NULL, 'Non', 'Non', 'Non', '66817649', 'dialloabdoulkarim12@gmail.com', 'BAMAKO', 'BAMAKO', 'kalaban coro golf', 'adhesion/1358726768.jpg', NULL, '2022-04-05 21:13:59', '2022-04-05 21:13:59'),
(209, 'kany', 'kouyaté', NULL, 'Non', 'Oui', 'Oui', '095370340396', '0905370340396', 'BAMAKO', 'BAMAKO', 'Kalman coura', 'adhesion/738217250.jpg', NULL, '2022-04-06 12:50:29', '2022-04-06 12:50:29'),
(210, 'Denou', 'Gilbert lewa', NULL, 'Non', 'Oui', 'Oui', '79756044', 'denougilbert@gmail.com', 'SÉGOU', 'NIONO', 'Niégue km 23 coura', 'adhesion/1671976947.jpg', NULL, '2022-04-08 06:05:59', '2022-04-08 06:05:59'),
(211, 'DIAKITÉ', 'Abdoulaye', NULL, 'Conseil communal de la jeunesse commune IV', 'Oui', 'Oui', '65088204', 'abdoulayediakite935@gmail.com', 'BAMAKO', 'BAMAKO', 'Sebenikoro', 'adhesion/2072791914.jpg', NULL, '2022-04-09 13:42:45', '2022-04-09 13:42:45'),
(212, 'DIAGOURAGA', 'Cheickna', NULL, 'Non', 'Oui', 'Non', '78018683', 'diagouscheick24@gmail.com', 'BAMAKO', 'BAMAKO', 'Kalaban coura', 'adhesion/1273336320.jpg', '1', '2022-04-13 09:48:20', '2022-04-13 09:48:20'),
(213, 'Siriki', 'Diabaté', NULL, 'SADI', 'Oui', 'Oui', '98451035', 'sirikidiabate83@yahoo.fr', 'SIKASSO', 'KADIOLO', 'Zegoua', 'adhesion/792574510.jpg', NULL, '2022-04-15 00:10:48', '2022-04-15 00:10:48'),
(214, 'DABO', 'Alima', NULL, 'Jamah', 'Oui', 'Oui', '66779493', 'alyaah@aol.com', 'BAMAKO', 'BAMAKO', 'Korofina Sud route de Koulikoro', 'adhesion/1276633480.jpg', NULL, '2022-04-18 07:56:15', '2022-04-18 07:56:15'),
(215, 'Basse', 'Thora', NULL, 'Non', 'Oui', 'Oui', '+33785124397', 'thora.basse@yahoo.com', 'BAMAKO', 'BAMAKO', '1 rue de la Marne aux Marchais Torcy 77 200 France', 'adhesion/1428022623.jpg', NULL, '2022-04-18 08:17:52', '2022-04-18 08:17:52'),
(216, 'Dabo', 'Alassana', NULL, 'Non', 'Oui', 'Oui', '0033695519015', 'Alassana 27@gmail.com', 'KAYES', 'BAFOULABE', '11 Rue Étienne Dolet 93380 pierrefitte sur Seine  france', 'adhesion/1596956549.jpg', '1', '2022-04-22 13:22:30', '2022-04-22 13:22:30'),
(217, 'COULIBALY', 'Jedéon', NULL, 'Non', 'Non', 'Non', '71556102', 'coulibajedeon@gmail.com', 'BAMAKO', 'BAMAKO', 'kalaban coura', 'adhesion/1977246163.jpg', NULL, '2022-04-28 18:36:55', '2022-04-28 18:36:55'),
(218, 'Nimaga', 'Seydina Oumar Cheickné', NULL, 'Non', 'Oui', 'Oui', '79103582', 'son87oum@gmail.com', 'NIORO', 'NIORO', 'Bamako/faladie sema', 'adhesion/1408471419.jpg', NULL, '2022-05-03 12:26:15', '2022-05-03 12:26:15'),
(219, 'traore mamadou', 'traore mamadou', NULL, 'Non', 'Oui', 'Oui', '667364', 'mt266017 @gmail.com', 'BAMAKO', 'BAMAKO', 'magnambougou plateau', 'adhesion/1913675735.jpg', NULL, '2022-05-07 11:19:05', '2022-05-07 11:19:05'),
(220, 'Camara née Dembele', 'saoudatou', NULL, 'RPDM', 'Oui', 'Oui', '66734907', 'saouda05@yahoo.fr', 'KOULIKORO', 'KATI', 'Dialkorobougou/ nouvelle zone industrielle', 'adhesion/55782927.jpg', NULL, '2022-05-10 10:28:42', '2022-05-10 10:28:42'),
(221, 'Dembele', 'Thiery', NULL, 'Non', 'Non', 'Non', '78038038', 'thierdembele@gmail', 'KOULIKORO', 'KOULIKORO', 'Massigui', 'adhesion/1447379777.jpg', NULL, '2022-05-14 19:48:20', '2022-05-14 19:48:20'),
(222, 'Ousmane Maïga', 'cissé', NULL, 'organisation politique', 'Oui', 'Oui', '0022378462990', '60304886', 'SÉGOU', 'SEGOU', 'homme', 'adhesion/729173268.jpg', NULL, '2022-05-15 11:24:06', '2022-05-15 11:24:06'),
(223, 'Barou', 'Coulibaly', NULL, 'oui', 'Oui', 'Oui', '74663472', 'barouc390@gmail.com', 'SÉGOU', 'MACINA', 'Sports', 'adhesion/621002464.jpg', NULL, '2022-05-16 12:09:36', '2022-05-16 12:09:36'),
(224, 'N\'diaye', 'Fatou', NULL, 'RPDM', 'Oui', 'Oui', '66919373', 'diarrafatoun\'diaye@yahoo.fr', 'KOULIKORO', 'KATI', 'Titibougou', 'adhesion/405546871.jpg', NULL, '2022-05-17 11:08:38', '2022-05-17 11:08:38'),
(225, 'Coulibaly', 'Daouda', NULL, 'C\'est ma première fois. Seulement , à travers les explications et ce que j\'ai constaté alors Benkan est mon choix éternel. Aussi je remercie beaucoup Nah Kodio', 'Oui', 'Oui', '94633404', 'daoudacoulibalyr@gmail.com', 'KITA', 'KITA', 'Bamako', 'adhesion/1350018934.jpg', NULL, '2022-05-19 14:12:24', '2022-05-19 14:12:24'),
(226, 'Camara', 'Mahamadou', NULL, 'Politique', 'Non', 'Non', '91914041', 'Mahamadoucamara930@gmail.com', 'BAMAKO', 'BAMAKO', 'Sebenikoro', 'adhesion/1372827287.jpg', '1', '2022-05-28 11:59:13', '2022-05-28 11:59:13'),
(227, 'Diarra', 'Mamadou', NULL, 'Organisation apolitique ( les associations surtout)', 'Oui', 'Oui', '72556684', 'mamadoudiarra419@gmail.com', 'BAMAKO', 'BAMAKO', 'Bamako Bacodjicoroni Golf', 'adhesion/1957815004.jpg', NULL, '2022-06-01 16:40:30', '2022-06-01 16:40:30'),
(228, 'Dramane', 'Coulibaly', NULL, 'non', 'Oui', 'Oui', '70617678', '69666518', 'KAYES', 'YELIMANE', 'Yelimane', 'adhesion/780956665.jpg', NULL, '2022-06-03 11:48:26', '2022-06-03 11:48:26'),
(229, 'Konte  Edia', 'Konte  Edia', NULL, '+22249926975', 'Oui', 'Non', 'Konte  Edia', '+22249926975', 'KOULIKORO', 'BANAMBA', 'konte', 'adhesion/164726945.jpg', NULL, '2022-06-04 18:30:05', '2022-06-04 18:30:05'),
(230, 'SANOGO', 'Adama', NULL, 'OUI', 'Oui', 'Oui', '60606041', 'diasanogo@gmail.com', 'BAMAKO', 'BAMAKO', 'BACO DJIICORONI ACI', 'adhesion/1806427941.jpg', NULL, '2022-06-04 19:53:59', '2022-06-04 19:53:59'),
(231, 'besta', 'buggy', NULL, 'Non', 'Non', 'Non', '83637708', 'madoidoufarka@live.fr', 'TOMBOUCTOU', 'NIAFUNKE', 'niafunke djamnati dernière le marche', 'adhesion/1492908573.jpg', NULL, '2022-06-05 11:19:05', '2022-06-05 11:19:05'),
(232, 'Togola', 'Gabriel', NULL, 'Non', 'Oui', 'Oui', '74843789', 'togolagabriel@gmail.com', 'BAMAKO', 'BAMAKO', 'enceinte de l église EEPM', 'adhesion/157494912.jpg', NULL, '2022-06-10 16:01:37', '2022-06-10 16:01:37'),
(233, 'SAIBOU DIAWARA', 'Diawara', NULL, 'Non', 'Oui', 'Non', '91134616', 'saiboudiawara06@gmail.com', 'KAYES', 'YELIMANE', 'Bamako', 'adhesion/1792862439.jpg', NULL, '2022-06-11 23:29:42', '2022-06-11 23:29:42'),
(234, 'Dembélé', 'siaka', NULL, 'oui j\'ai été actif dans une organisation politique', 'Oui', 'Oui', '60241901', 'siakadembele95@gmail.com', 'KOUTIALA', 'YOROSSO', 'je suis l\'homme,teint noir et de taille moyenne', 'adhesion/1475187585.jpg', NULL, '2022-06-12 06:00:10', '2022-06-12 06:00:10'),
(235, 'Waly', 'Diarra', NULL, 'Organisation de la jeunesse de mon village', 'Oui', 'Oui', '93 95 21 54', 'walydiarra1982@gmail.com', 'KITA', 'KITA', 'Niagané', 'adhesion/1418909788.jpg', NULL, '2022-06-12 22:07:56', '2022-06-12 22:07:56'),
(236, 'Traoré', 'Moussa', NULL, 'Non', 'Non', 'Non', '77852757', '7785275m@gmail.com', 'BAMAKO', 'BAMAKO', '94', 'adhesion/1471337555.jpg', '1', '2022-07-16 21:17:44', '2022-07-16 21:17:44'),
(241, 'Barhima', 'Gole', NULL, 'Non', 'Oui', 'Non', '00242055536246', 'Ibrahm1980@gmail,com', 'NIORO', 'NIORO', 'homme', 'adhesion/767117117.jpg', NULL, '2022-07-18 12:24:38', '2022-07-18 12:24:38'),
(242, 'Diarra', 'Oumar', NULL, 'Non', 'Oui', 'Oui', '76372221', 'odiarra93@gmail.com', 'BAMAKO', 'BAMAKO', 'Kalaban coura, Rue 192, Porte 69', 'adhesion/1735049690.jpg', NULL, '2022-07-19 10:30:32', '2022-07-19 10:30:32'),
(243, 'Cisse', 'Houreymatou', NULL, 'IR GANDA', 'Oui', 'Oui', '91000075', 'matoucisse44@gmail.com', 'BAMAKO', 'BAMAKO', 'Boulkassoumbougou', 'adhesion/1716226879.jpg', NULL, '2022-07-23 20:56:53', '2022-07-23 20:56:53'),
(244, 'COULIBALY', 'Cheickna', NULL, 'Non', 'Oui', 'Oui', '76188133', 'coulibalyc208@gmail.com', 'BAMAKO', 'BAMAKO', 'SABALIBOUGOU COURANI', 'adhesion/1564894956.jpg', NULL, '2022-07-24 11:31:01', '2022-07-24 11:31:01'),
(245, 'Bouna', 'Camara', NULL, 'oui', 'Oui', 'Non', '0022391018045', 'camarabouna365@gmail.com', 'KAYES', 'KAYES', 'employé', 'adhesion/178792475.jpg', NULL, '2022-07-26 21:27:49', '2022-07-26 21:27:49'),
(246, 'sanogo', 'Yadouna', NULL, 'Non', 'Oui', 'Non', '77651577', 'sanogoyadoun@gmail.com', 'KAYES', 'KAYES', 'sanogo yadouna agent commercial Orange KENIEBA', 'adhesion/2000122381.jpg', NULL, '2022-07-27 05:32:16', '2022-07-27 05:32:16'),
(247, 'COULIBALY', 'Seydou Mamadou', NULL, 'Non', 'Oui', 'Oui', '+33689404039', 'seydoumamad@yahoo.fr', 'BAMAKO', 'BAMAKO', 'cité du Niger', 'adhesion/1130941732.jpg', NULL, '2022-07-30 08:46:15', '2022-07-30 08:46:15'),
(248, 'Coulibaly', 'Karim', NULL, 'RPM', 'Oui', 'Oui', '67555573', 'Karimcoulibaly16@yahoo.fr', 'BAMAKO', 'BAMAKO', 'Bamako Bacodjicoroni Golf près de la mosquée Wamy', 'adhesion/321665430.jpg', NULL, '2022-07-30 09:33:36', '2022-07-30 09:33:36'),
(249, 'KONÉ', 'Aboubacar Sidiki', NULL, 'Sabati', 'Oui', 'Oui', '+22365696467', 'sidikouladjal@gmail.com', 'BAMAKO', 'BAMAKO', 'Ouolofobougou', 'adhesion/922950.jpg', NULL, '2022-07-30 09:38:41', '2022-07-30 09:38:41'),
(250, 'SYLLA', 'Abdel Kader', NULL, 'Mouvement des Jeunes Bâtisseurs du Mali (MJBM)', 'Oui', 'Oui', '75647474', 'syllaabdelkader4@gmail.com', 'BAMAKO', 'BAMAKO', 'Faladiè Sokoro rue 744 porte 642', 'adhesion/761170993.jpg', NULL, '2022-07-30 09:40:15', '2022-07-30 09:40:15'),
(251, 'bocoum', 'oumou', NULL, 'APM-MALIKO', 'Oui', 'Oui', '76 67 86 33', 'bocoumoumou79@gmail.com', 'MOPTI', 'MOPTI', 'badalabougou rue 110 porte 47', 'adhesion/26599528.jpg', NULL, '2022-07-30 09:40:26', '2022-07-30 09:40:26'),
(252, 'Kaba Diakité', 'AMARA', NULL, 'Parti Mali kanu', 'Oui', 'Oui', '99342535', 'kaba92@yahoo.com', 'BAMAKO', 'BAMAKO', 'Kaba', 'adhesion/1778866053.jpg', NULL, '2022-07-30 09:55:55', '2022-07-30 09:55:55'),
(253, 'Samaké', 'Fabiné', NULL, 'oui', 'Oui', 'Oui', '73815998', 'fabinesamake@gmail.com', 'BOUGOUNI', 'BOUGOUNI', 'Bougouni Torakabougou', 'adhesion/873587653.jpg', NULL, '2022-07-30 09:58:06', '2022-07-30 09:58:06'),
(254, 'GUINDO', 'Moussa', NULL, 'oui', 'Oui', 'Oui', '76877904', 'gballadjigui08@gmail.com', 'BOUGOUNI', 'BOUGOUNI', 'Bamako/Magnambougou', 'adhesion/629853315.jpg', NULL, '2022-07-30 09:58:12', '2022-07-30 09:58:12'),
(255, 'KONATÉ', 'Youba Ibrahima', NULL, 'Mas-IBK', 'Oui', 'Oui', '0022373777740', 'konateyouba@hotmail.fr', 'BAMAKO', 'BAMAKO', 'Faladiè Sema Rue 886 Porte 649', 'adhesion/791130501.jpg', NULL, '2022-07-30 10:00:08', '2022-07-30 10:00:08'),
(256, 'Ag HAMAHADI', 'Mohamed Issa', NULL, 'MAS IBK', 'Oui', 'Oui', '22376395959', 'medissa6@yahoo.fr', 'TOMBOUCTOU', 'TOMBOUCTOU', 'kalabancoura rue 425', 'adhesion/501471137.jpg', NULL, '2022-07-30 10:08:01', '2022-07-30 10:08:01'),
(257, 'KONE', 'Bassekou', NULL, 'RPM', 'Oui', 'Oui', '76032943', 'bassekou77@yahoo.fr', 'BAMAKO', 'BAMAKO', 'communeVI quartier senou', 'adhesion/1711284546.jpg', NULL, '2022-07-30 10:44:47', '2022-07-30 10:44:47'),
(258, 'KONÉ', 'NANOUROU', NULL, 'ONG HUMANITAIRES', 'Oui', 'Oui', '79544109', 'nanourou.kone77@gmail.com', 'SIKASSO', 'SIKASSO', 'Bamako hippodrome', 'adhesion/1502446913.jpg', NULL, '2022-07-31 10:47:16', '2022-07-31 10:47:16'),
(259, 'TOURÉ', 'Saïd Oumar', NULL, 'ATOFEJU, CMAS', 'Oui', 'Oui', '76207612', 'asland001@hotmail.fr', 'BAMAKO', 'BAMAKO', 'Bagadadji Rue 508 Porte No 267', 'adhesion/1928370754.jpg', NULL, '2022-08-01 06:45:32', '2022-08-01 06:45:32'),
(260, 'TOURE', 'MAHAMADOU', NULL, 'Association pour le développement de Same', 'Oui', 'Oui', '99290020', 'touremahamadou.mt80@gmail.com', 'BAMAKO', 'BAMAKO', 'Same', 'adhesion/1440001056.jpg', NULL, '2022-08-02 11:54:19', '2022-08-02 11:54:19'),
(261, 'Traoré', 'Zeïnabou', NULL, 'Non', 'Oui', 'Non', '82981006', 'Zeinaboutraore1705@gmail.com', 'BAMAKO', 'BAMAKO', 'samé cité rail', 'adhesion/640115034.jpg', NULL, '2022-08-02 16:32:48', '2022-08-02 16:32:48'),
(262, 'keita', 'Banè', NULL, 'Benkan', 'Oui', 'Oui', '79582014', 'banebebelkeita@icloud.com', 'Mali', 'Mali', 'zrny/bollé derrière la cour d\'appel', 'adhesion/1611977470.jpg', NULL, '2022-08-02 16:39:20', '2022-08-02 16:39:20'),
(263, 'Mahamadou', 'Togo', NULL, 'oui', 'Oui', 'Non', '69199142', 'mahamadoutogo90@gmail.com', 'BANDIAGARA', 'KORO', 'Bamako', 'adhesion/1271332088.jpg', NULL, '2022-08-03 00:13:34', '2022-08-03 00:13:34'),
(264, 'Toure', 'Moussa', NULL, 'Non', 'Oui', 'Oui', '76038700', 'touremou@yahoo.fr', 'BAMAKO', 'BAMAKO', 'Sebenikoro', 'adhesion/1407331362.jpg', NULL, '2022-08-05 09:53:37', '2022-08-05 09:53:37'),
(265, 'Coulibaly', 'Bassidi', NULL, 'Non', 'Oui', 'Oui', '76367900', 'bassidi_coulibaly@yahoo.fr', 'BAMAKO', 'BAMAKO', 'faladié  sema', 'adhesion/470429630.jpg', NULL, '2022-08-06 10:18:24', '2022-08-06 10:18:24'),
(266, 'Thera', 'Moro', NULL, 'l adema', 'Oui', 'Oui', '76433318', 'morothera.mt@gmail.com', 'BAMAKO', 'BAMAKO', 'Banankabougou rue 655 porte 227', 'adhesion/785733137.jpg', NULL, '2022-08-06 10:20:28', '2022-08-06 10:20:28'),
(267, 'Camara', 'Mambè', NULL, 'Recotrade', 'Oui', 'Oui', '76981243', 'mambécamara@gmail.com', 'BAMAKO', 'BAMAKO', 'Sotuba Banga', 'adhesion/850786095.jpg', NULL, '2022-08-06 10:20:40', '2022-08-06 10:20:40'),
(268, 'BOLY', 'SINNA', NULL, 'j\'ai été membre du bureau de cordinnation de l\'AEEM', 'Non', 'Non', '84868644', 'sinnaboly85@gmail.com', 'BAMAKO', 'BAMAKO', 'Niamakoro Courani', 'adhesion/1131443159.jpg', NULL, '2022-08-06 10:24:08', '2022-08-11 05:03:11'),
(269, 'Konaté', 'Fatoumata', NULL, 'Non', 'Non', 'Non', '94499717', 'fatou_konate1@hotmail.fr', 'BAMAKO', 'BAMAKO', 'Faladie rue du gouverneur', 'adhesion/436383156.jpg', NULL, '2022-08-08 12:12:39', '2022-08-08 12:12:39'),
(270, 'TOURE', 'IBRAHIM', NULL, 'Collectif pour le Développement de la République (CDR)', 'Oui', 'Oui', '77419495', 'toureibrahim154@gmail.com', 'GAO', 'BOUREM', 'BAMAKO', 'adhesion/1633804878.jpg', NULL, '2022-08-08 20:08:43', '2022-08-08 20:08:43'),
(271, 'KOITA', 'Dadou Fernand', NULL, 'Non', 'Oui', 'Oui', '76202212', 'bossobekamate@gmail.com', 'SAN', 'SAN', 'San', 'adhesion/693046421.jpg', NULL, '2022-08-11 21:21:04', '2022-08-11 21:21:04'),
(272, 'boubacar', 'Sogoba', NULL, 'Non', 'Non', 'Non', '66101396', '66101396', 'BAMAKO', 'BAMAKO', 'Yirimadjo', 'adhesion/1240187363.jpg', NULL, '2022-08-12 15:00:00', '2022-08-12 15:00:00'),
(273, 'Bagayojo', 'Mamadou', NULL, 'Non', 'Oui', 'Oui', '00223 76496251', 'Hamedbacus@gmail.com', 'BAMAKO', 'BAMAKO', 'Niarela rue 404/ Bko', 'adhesion/1260925978.jpg', NULL, '2022-08-15 20:46:33', '2022-08-15 20:46:33'),
(274, 'Aliou diop', 'Aliou', NULL, 'Non', 'Oui', 'Oui', '+241062286227', 'alioudiop1982@gmail.com', 'NIORO', 'NIORO', 'ok', 'adhesion/2063029852.jpg', NULL, '2022-08-21 10:06:52', '2022-08-21 10:06:52'),
(275, 'TOURE', 'Diane', NULL, 'RPM', 'Oui', 'Oui', '0033658601918', 'ndiayetoure@yahoo.fr', 'KAYES', 'KAYES', 'Sony', 'adhesion/152330967.jpg', NULL, '2022-08-22 17:49:08', '2022-08-22 17:49:08'),
(276, 'Traoré', 'Adama Karim', NULL, 'oui', 'Non', 'Non', '79335301', '79335301', 'KITA', 'KENIEBA', 'konlonba 1 commune de Dabia', 'adhesion/1626064131.jpg', NULL, '2022-08-25 11:01:30', '2022-08-25 11:01:30'),
(277, 'SIDIBÉ', 'Aïssata', NULL, 'JCI', 'Oui', 'Oui', '90255808', 'sidibeaissata@hotmail.com', 'BAMAKO', 'BAMAKO', 'Kalaban Koro Adeken', 'adhesion/2110159755.jpg', NULL, '2022-08-30 13:23:31', '2022-08-30 13:23:31'),
(278, 'FAYE', 'yacine', NULL, 'Lions Club', 'Oui', 'Oui', '76107951', 'sidibeyacine@yahoo.fr', 'TOMBOUCTOU', 'TOMBOUCTOU', 'kalabancoro adekene, rue 410,porte 140', 'adhesion/1797356319.jpg', NULL, '2022-08-30 13:29:42', '2022-08-30 13:29:42'),
(279, 'DOUMBIA', 'Issa', NULL, 'Non', 'Oui', 'Oui', '+22366613196', 'issadoumbia479@gmail.com', 'DIOILA', 'DIOILA', 'direction régionale des routes de Dioila', 'adhesion/1649077710.jpg', NULL, '2022-09-01 08:04:37', '2022-09-01 08:04:37'),
(280, 'Salif Famory', 'TRAORÉ', NULL, 'Non', 'Non', 'Non', '0015712019515', 'Docsft@gmail.com', 'BAMAKO', 'BAMAKO', 'Bamako Rue 555, Porte 213', 'adhesion/514918185.jpg', NULL, '2022-09-01 10:56:14', '2022-09-01 10:56:14'),
(281, 'KODIO', 'Daouda', NULL, 'Non', 'Oui', 'Oui', '74066612', 'kodiodaouda401@gmail.com', 'DIOILA', 'FANA', 'Fana coura zone château', 'adhesion/2024167993.jpg', NULL, '2022-09-02 06:59:17', '2022-09-02 06:59:17'),
(282, 'Daou', 'Bakari', NULL, 'Non', 'Non', 'Non', '74206088', 'bakaridaou18@gmail.com', 'SÉGOU', 'SEGOU', 'bien', 'adhesion/910370706.jpg', NULL, '2022-09-02 13:36:10', '2022-09-02 13:36:10'),
(283, 'Coulibaly Fall', 'Fousseiny', NULL, 'Non', 'Oui', 'Non', '00971544439902', 'fallfousseiny@gmail.com', 'BAMAKO', 'BAMAKO', 'Baco Djicoroni', 'adhesion/1725000433.jpg', NULL, '2022-09-02 14:16:05', '2022-09-02 14:16:05'),
(284, 'SIDIBÉ', 'Col Major Boubacar', NULL, 'MPM', 'Non', 'Oui', '65 61 76 76', 'Bayeboubacars@gmail.com', 'BAMAKO', 'BAMAKO', 'Magnambou rue 349 porte 115 commune VI', 'adhesion/1481261955.jpg', NULL, '2022-09-02 14:24:46', '2022-09-02 14:24:46'),
(285, 'Bakaga', 'Tieman', NULL, 'Non', 'Oui', 'Oui', '0022376445925', 'tiemanbagaga@gmail.com', 'BAMAKO', 'BAMAKO', 'Yirimadio', 'adhesion/767561720.jpg', NULL, '2022-09-02 14:26:41', '2022-09-02 14:26:41'),
(286, 'Abdoulaye', 'Dao', NULL, 'Non', 'Non', 'Non', '83192499', '83192499', 'SIKASSO', 'SIKASSO', 'Bézanso', 'adhesion/85865783.jpg', NULL, '2022-09-02 19:15:34', '2022-09-02 19:15:34'),
(287, 'TRAORE', 'Dramane Modibo', NULL, 'Non', 'Oui', 'Oui', '74007099', 'traore.dramane77@gmail.com', 'SAN', 'SAN', 'Médine', 'adhesion/764806524.jpg', NULL, '2022-09-03 06:27:55', '2022-09-03 06:27:55'),
(288, 'sidi Mohamed', 'Diabaté', NULL, 'apolitique', 'Oui', 'Oui', '76499798', '66499798', 'SIKASSO', 'SIKASSO', 'fama', 'adhesion/109114878.jpg', NULL, '2022-09-03 08:59:18', '2022-09-03 08:59:18'),
(289, 'Goribe', 'silly', NULL, 'Non', 'Oui', 'Oui', '0767460787', 'boulayegoribe9@gmail.com', 'KAYES', 'KAYES', 'paris', 'adhesion/1292392727.jpg', NULL, '2022-09-03 14:19:41', '2022-09-03 14:19:41'),
(290, 'Maïga', 'Elhadji Badrou', NULL, 'politique', 'Oui', 'Oui', '0022374049836', 'elhadji badrouelhadji@gmail.com', 'SIKASSO', 'SIKASSO', 'ATT Bougou', 'adhesion/1349267955.jpg', NULL, '2022-09-03 18:07:22', '2022-09-03 18:07:22'),
(291, 'Sangaré', 'Soungalo', NULL, 'Non', 'Oui', 'Oui', '70415814', 'asoungaloz@gmail.com', 'KOUTIALA', 'KOUTIALA', 'segou', 'adhesion/470830141.jpg', NULL, '2022-09-05 11:44:00', '2022-09-05 11:44:00'),
(292, 'Niangaly', 'Issiaka', NULL, 'Non', 'Oui', 'Oui', '70 41 50 87', 'madinaniangaly@gmail.com', 'BAMAKO', 'BAMAKO', 'Kalabancoro Koulouba près du commissariat', 'adhesion/1876217784.jpg', NULL, '2022-09-05 14:31:31', '2022-09-05 14:31:31'),
(293, 'SIDIBÉ', 'MOHAMED A - G', NULL, 'ASMA - CFP', 'Oui', 'Oui', '64141770', 'flackesirimansidibe@gmail.com', 'BAMAKO', 'BAMAKO', 'Lafiabougou secteur 1 Rue 209 Porte 116', 'adhesion/458549863.jpg', NULL, '2022-09-08 12:51:47', '2022-09-08 12:51:47'),
(294, 'SANGARE', 'PENDA', NULL, 'politique', 'Oui', 'Oui', '66 75 98 22', 'sangarepinda@yahoo.com', 'BAMAKO', 'BAMAKO', 'Dravela Rue Dakar porte 115', 'adhesion/1689956416.jpg', NULL, '2022-09-09 15:34:59', '2022-09-09 15:34:59'),
(295, 'N’DIAYE', 'ABDOUL KARIM', NULL, 'SYNOUMA', 'Oui', 'Oui', '74565699', 'abkndiaye1517@gmail.com', 'BAMAKO', 'BAMAKO', 'N’TOMIKOROBOUGOU', 'adhesion/134193758.jpg', NULL, '2022-09-09 15:35:25', '2022-09-09 15:35:25'),
(296, 'Cissé', 'Néné', NULL, 'Non', 'Oui', 'Oui', '90292689', 'tirankedoumbia479@gmail.com', 'DIOILA', 'DIOILA', 'Dioila Socoura Nord', 'adhesion/518428397.jpg', NULL, '2022-09-11 09:27:34', '2022-09-11 09:27:34'),
(297, '90779588', 'malick guindo', NULL, 'Non', 'Non', 'Oui', '90779588', '90779588', 'BAMAKO', 'BAMAKO', 'malick guindo', 'adhesion/17650759.jpg', NULL, '2022-09-13 19:06:43', '2022-09-13 19:06:43'),
(298, 'Salifou', 'Diarra', NULL, 'salifoudiarra713@gmail.com', 'Oui', 'Oui', '76665622', 'salifoudiarra713@gmail.com', 'BAMAKO', 'BAMAKO', 'seylasob', 'adhesion/22965939.jpg', NULL, '2022-09-14 20:53:08', '2022-09-14 20:53:08'),
(299, 'Dibassy', 'Baba', NULL, 'Non', 'Non', 'Non', '0632806588', 'baba.dibassy@gm.com', 'KAYES', 'KAYES', 'liberté', 'adhesion/314491917.jpg', NULL, '2022-09-20 14:37:45', '2022-09-20 14:37:45'),
(300, 'Bocoum', 'Amadou', NULL, 'RPDM', 'Oui', 'Oui', '74543296', 'vieux89@yahoo.com', 'BAMAKO', 'BAMAKO', 'Kalabancoro', 'adhesion/2047296159.jpg', NULL, '2022-09-21 11:34:03', '2022-09-21 11:34:03');
INSERT INTO `adhesions` (`id`, `nom`, `prenom`, `sexe`, `inOrganisation`, `nina`, `carteElec`, `numero`, `email`, `region`, `cercleComune`, `adresse`, `photo`, `idEnq`, `created_at`, `updated_at`) VALUES
(302, 'Dao', 'Mamadou', NULL, 'Oui', 'Oui', 'Oui', '71812656', 'waragogo00@gmail.com', 'KITA', 'KITA', 'Environnementaliste', 'adhesion/1399054109.jpg', NULL, '2022-09-28 07:41:33', '2022-09-28 07:41:33'),
(303, 'Traoré', 'Oumar', NULL, 'le mouvement des présidents des universités privées', 'Non', 'Non', '+22374947525', 'oumartall412@gmail.com', 'BAMAKO', 'BAMAKO', 'magnambougou rue 360 porte 237', 'adhesion/1004647652.jpg', NULL, '2022-09-29 07:55:32', '2022-09-29 07:55:32'),
(304, 'TOURE', 'Badra Aliou', NULL, 'Non', 'Oui', 'Oui', '77107992', 'btoure419@gmail', 'BAMAKO', 'BAMAKO', 'j\'ignore', 'adhesion/1905974153.jpg', NULL, '2022-09-29 12:10:47', '2022-09-29 12:10:47'),
(305, 'DIABATE', 'Modibo', NULL, 'RPM', 'Oui', 'Oui', '76382027 et 66382027', 'modibod2000@yahoo.fr', 'BAMAKO', 'BAMAKO', 'Sebenikoro commune IV', 'adhesion/1016176328.jpg', NULL, '2022-10-02 08:29:58', '2022-10-02 08:29:58'),
(306, 'Coulibaly', 'Daouda', NULL, 'Fadima', 'Oui', 'Oui', '+242055526165', 'Daouda20coulibaly@gmail.com', 'KITA', 'KITA', 'Congo Brazzaville', 'adhesion/1000604991.jpg', NULL, '2022-10-03 13:03:03', '2022-10-03 13:03:03'),
(307, 'fatouma', 'elbechire', NULL, 'Non', 'Oui', 'Oui', '76859496', 'feitybaby@yahoo.com', 'BAMAKO', 'BAMAKO', 'samaya', 'adhesion/722432281.jpg', NULL, '2022-10-05 08:03:17', '2022-10-05 08:03:17'),
(308, 'Diallo', 'abdel kader', NULL, 'RPM', 'Oui', 'Oui', '76065014', 'kaderdiallo709@gmail.com', 'BAMAKO', 'BAMAKO', 'badala Sema 2', 'adhesion/1024396846.jpg', NULL, '2022-10-06 16:42:26', '2022-10-06 16:42:26'),
(311, 'SYLLA', 'Moussa', NULL, 'Non', 'Oui', 'Oui', '71820292', 'moussazsyllaa@gmail.com', 'KOULIKORO', 'KOULIKORO', 'Koulikoro ba', 'adhesion/800305179.jpg', NULL, '2022-10-11 23:04:07', '2022-10-11 23:04:07'),
(312, 'Konaré', 'yaya john slattery', NULL, 'Non', 'Non', 'Non', '71026349', 'yayajs@outlook.fr', 'BAMAKO', 'BAMAKO', 'yirimadio', 'adhesion/1525766526.jpg', NULL, '2023-01-25 14:58:05', '2023-01-25 14:58:05'),
(313, 'Diarra', 'Dramane', NULL, 'Non', 'Oui', 'Oui', '+22379027044', 'dradiarra2020@gmail.com', 'SÉGOU', 'SEGOU', 'Bamako', 'adhesion/1066470144.jpg', NULL, '2023-01-25 18:13:50', '2023-01-25 18:13:50'),
(314, 'Goïta', 'ousmane', NULL, 'codem', 'Oui', 'Oui', '76 19 67 33', '76 19 67 33', 'NARA', 'NARA', 'boulkasoumbougou', 'adhesion/1915627735.jpg', NULL, '2023-01-27 10:15:32', '2023-01-27 10:15:32'),
(315, 'Hama', 'Mahamadou', NULL, 'je suis l\'actuel vice président de l\'association des jeunes de Bintagoungou', 'Non', 'Non', '93 48 07 24', 'mahamadoujr02@gmail.com', 'TOMBOUCTOU', 'GOUNDAM', 'Hamdallaye Aci 2000', 'adhesion/1536049193.jpg', NULL, '2023-01-31 22:42:02', '2023-01-31 22:42:02'),
(317, 'Traoré', 'Aichata', NULL, 'Non', 'Non', 'Non', '+22372011515', 'sirifiaicha@gmail.com', 'BAMAKO', 'BAMAKO', 'rue 61 Porte 352', 'adhesion/1352280608.jpg', NULL, '2023-02-16 19:29:54', '2023-02-16 19:29:54'),
(318, 'adama', 'adama', NULL, 'Non', 'Non', 'Non', '75730809', 'adamatikibiry@gmal.com', 'BAMAKO', 'BAMAKO', 'lafiabougou', 'adhesion/679784901.jpg', NULL, '2023-02-18 07:53:14', '2023-02-18 07:53:14'),
(319, 'Zoumana', 'Koné', NULL, 'Non', 'Non', 'Non', '90317915', 'Kone93245', 'BAMAKO', 'BAMAKO', 'Lafiabougou', 'adhesion/68617127.jpg', NULL, '2023-02-18 07:56:21', '2023-02-18 07:56:21'),
(320, 'Camara', 'Ibrahima Tikibiry', NULL, 'Non', 'Oui', 'Non', '97024413', 'ibrahimacama31@gmail.com', 'BAMAKO', 'BAMAKO', 'lafiabougou', 'adhesion/360883222.jpg', NULL, '2023-02-18 07:57:43', '2023-02-18 07:57:43'),
(321, 'Drame', 'sidi', NULL, 'Non', 'Oui', 'Non', '73483388', '73483388', 'BAMAKO', 'BAMAKO', 'lafiabougou', 'adhesion/1847012942.jpg', NULL, '2023-02-18 08:10:50', '2023-02-18 08:10:50'),
(322, 'Dioumassi', 'DAMORY', NULL, 'Association sportive', 'Oui', 'Oui', '92-74-20-14', 'damoridioumassi708@gmail.com', 'BAMAKO', 'BAMAKO', 'lafiabougou', 'adhesion/230026779.jpg', NULL, '2023-02-18 08:24:11', '2023-02-18 08:24:11'),
(323, 'traore', 'Harouna', NULL, 'Non', 'Oui', 'Non', '72561739', 'harounat443@gmail.com', 'BAMAKO', 'BAMAKO', 'Hamdallaye', 'adhesion/245616359.jpg', NULL, '2023-02-18 08:34:18', '2023-02-18 08:34:18'),
(324, 'Traoré', 'Alpha Oumar', NULL, 'Non', 'Non', 'Non', '62966715', 'alphaotraore44@gmail.com', 'BAMAKO', 'BAMAKO', 'Hamdallaye', 'adhesion/1741979831.jpg', NULL, '2023-02-18 08:35:22', '2023-02-18 08:35:22'),
(325, 'Diourte', 'Hawa', NULL, 'Non', 'Oui', 'Non', '74452417', 'hawadiourte17@gmail.com', 'BAMAKO', 'BAMAKO', 'hamdallay', 'adhesion/863949377.jpg', NULL, '2023-02-18 08:36:58', '2023-02-18 08:36:58'),
(326, 'moussa', 'yattara', NULL, 'Non', 'Non', 'Non', '71196617', 'moussayatta 17@gmail.com', 'BAMAKO', 'BAMAKO', 'Hamdallaye', 'adhesion/566691050.jpg', NULL, '2023-02-18 08:38:12', '2023-02-18 08:38:12'),
(327, 'Diourté', 'Kadiatou', NULL, 'Non', 'Non', 'Non', '91400887', '@kadiatoudiourté91@gmail.com', 'BAMAKO', 'BAMAKO', 'Hamdallaye', 'adhesion/1998438108.jpg', NULL, '2023-02-18 08:49:57', '2023-02-18 08:49:57'),
(328, 'Toure', 'Mamadou', NULL, 'Non', 'Oui', 'Oui', '66767251', 'mamadou.toure@bsicmali.ml', 'BAMAKO', 'BAMAKO', 'moussabougou', 'adhesion/1423111435.jpg', NULL, '2023-02-18 09:27:06', '2023-02-18 09:27:06'),
(329, 'Fofana', 'Modibo', NULL, 'Non', 'Oui', 'Oui', '79258327', 'fofmodibo828@gmail.com', 'BAMAKO', 'BAMAKO', 'Djicoroni para', 'adhesion/808980638.jpg', NULL, '2023-02-18 09:28:33', '2023-02-18 09:28:33'),
(330, 'keita', 'balla', NULL, 'jigitugu Benkan', 'Oui', 'Oui', '79164628', 'namballakeita@gmail.com', 'BAMAKO', 'BAMAKO', 'niamakoro ru333 porte22', 'adhesion/43575153.jpg', NULL, '2023-02-18 09:30:42', '2023-02-18 09:30:42'),
(331, 'kone', 'Aboubacar', NULL, 'Non', 'Oui', 'Oui', '75948951', 'kone88060@gmail.com', 'BAMAKO', 'BAMAKO', 'moribabougou', 'adhesion/1980443509.jpg', NULL, '2023-02-18 09:36:01', '2023-02-18 09:36:01'),
(332, 'Sangaré', 'Djenebou', NULL, 'Non', 'Oui', 'Oui', '76696333', 'dsangare618@gmail.com', 'BAMAKO', 'BAMAKO', 'sebenikoro', 'adhesion/679999515.jpg', NULL, '2023-02-18 09:37:20', '2023-02-18 09:37:20'),
(333, 'balakissa', 'koïta', NULL, 'Non', 'Oui', 'Oui', '67756912', 'Balakissa 12@gmail.com', 'BAMAKO', 'BAMAKO', 'Sabalibougou', 'adhesion/156389393.jpg', NULL, '2023-02-18 09:38:12', '2023-02-18 09:38:12'),
(334, 'keïta', 'safoure', NULL, 'Non', 'Oui', 'Oui', '76291897', 'safourekeïta@', 'BAMAKO', 'BAMAKO', 'korofina', 'adhesion/2113803879.jpg', NULL, '2023-02-18 09:39:05', '2023-02-18 09:39:05'),
(335, 'samb', 'mohamed', NULL, 'Non', 'Oui', 'Non', '90672726', 'mouhamedsamb906@gmail.com', 'BAMAKO', 'BAMAKO', 'lafiabougou', 'adhesion/1843312490.jpg', NULL, '2023-02-18 09:40:39', '2023-02-18 09:40:39'),
(336, 'coulibaly', 'Djeneba', NULL, 'Benka', 'Oui', 'Oui', '76521283', 'coulibalydjeneba119@gmail.com', 'BAMAKO', 'BAMAKO', 'kalaban Koura Aci rue 688 porte 39', 'adhesion/1346079122.jpg', NULL, '2023-02-18 09:42:36', '2023-02-18 09:42:36'),
(337, 'sountoura', 'mahamadou', NULL, 'Non', 'Non', 'Non', '91519974', 'ww. mahamadousountouragmail@.com', 'BAMAKO', 'BAMAKO', 'koulouba', 'adhesion/378037675.jpg', NULL, '2023-02-18 09:42:43', '2023-02-18 09:42:43'),
(338, 'keita', 'fatoumata', NULL, 'Non', 'Oui', 'Oui', '76039872', 'fatoumata@gmail.com', 'BAMAKO', 'BAMAKO', 'djicoroni', 'adhesion/1714847052.jpg', NULL, '2023-02-18 09:44:47', '2023-02-18 09:44:47'),
(339, 'diarra', 'tiemoko', NULL, 'Non', 'Non', 'Non', '91168178', 'favelatiemoko@email. com', 'BAMAKO', 'BAMAKO', 'médina coura', 'adhesion/859377980.jpg', NULL, '2023-02-18 09:45:47', '2023-02-18 09:45:47'),
(340, 'Keita', 'Brehima', NULL, 'Coordination des jeunes du mandé', 'Oui', 'Oui', '77970870', 'brehimakeit87@gmail.com', 'BAMAKO', 'BAMAKO', 'sébénikoro', 'adhesion/1449763071.jpg', NULL, '2023-02-18 09:46:49', '2023-02-18 09:46:49'),
(341, 'Konipo', 'Coumba', NULL, 'Non', 'Oui', 'Oui', '70700043', 'coumbakonipo@gmail.com', 'BAMAKO', 'BAMAKO', 'Faladiè Sema', 'adhesion/505518521.jpg', NULL, '2023-02-18 09:47:34', '2023-02-18 09:47:34'),
(342, 'DIARRA', 'Abdoulaye', NULL, 'Non', 'Non', 'Oui', '67307415', 'Abdoulayediarra2@.com', 'BAMAKO', 'BAMAKO', 'hippodrome 2', 'adhesion/1401689926.jpg', NULL, '2023-02-18 09:48:07', '2023-02-18 09:48:07'),
(343, 'coulibaly', 'aissata', NULL, 'Non', 'Oui', 'Oui', '76455879', '76455879', 'BAMAKO', 'BAMAKO', 'Medina coura', 'adhesion/990298215.jpg', NULL, '2023-02-18 09:48:28', '2023-02-18 09:48:28'),
(344, 'Samaké', 'Mariam', NULL, 'Benka', 'Oui', 'Non', '76024174', 'mariam.samak17@gmail.com', 'BAMAKO', 'BAMAKO', 'kalaban Coura Aci, rue:583,Porte 39', 'adhesion/1028970552.jpg', NULL, '2023-02-18 09:51:56', '2023-02-18 09:51:56'),
(345, 'Cissé', 'Bougadari Gaoussou', NULL, 'ADP MALIBA', 'Oui', 'Oui', '66415455', '76415455', 'BAMAKO', 'BAMAKO', 'Badialan 3', 'adhesion/106474903.jpg', NULL, '2023-02-18 09:52:02', '2023-02-18 09:52:02'),
(346, 'traoré', 'daouda', NULL, 'Non', 'Non', 'Non', '74668507', 'dt003074@gmail.com', 'BAMAKO', 'BAMAKO', 'médina coura', 'adhesion/1451953653.jpg', NULL, '2023-02-18 09:54:09', '2023-02-18 09:54:09'),
(347, 'Keita', 'Ramata', NULL, 'Non', 'Oui', 'Oui', '79105637', '79105637', 'BAMAKO', 'BAMAKO', 'paradjikori', 'adhesion/287243823.jpg', NULL, '2023-02-18 09:54:21', '2023-02-18 09:54:21'),
(348, 'kaloga', 'oumar', NULL, 'Non', 'Oui', 'Non', '78801534', 'oumarkaloga2022@gmail.com', 'KAYES', 'KAYES', 'bangoni', 'adhesion/415915121.jpg', NULL, '2023-02-18 09:56:20', '2023-02-18 09:56:20'),
(349, 'sanogo', 'Alou', NULL, 'Djontilaban Don', 'Oui', 'Oui', '79492174', 'Alou Sanogo', 'BAMAKO', 'BAMAKO', 'Boulkasobougou', 'adhesion/1886338558.jpg', NULL, '2023-02-18 09:58:14', '2023-02-18 09:58:14'),
(350, 'Naba', 'keita', NULL, 'Non', 'Oui', 'Oui', '74617014', 'nabakeita@gmail.com', 'BAMAKO', 'BAMAKO', 'Lafiabougou', 'adhesion/564281848.jpg', NULL, '2023-02-18 09:58:56', '2023-02-18 09:58:56'),
(351, 'Kadiatou', 'Diallo', NULL, 'Non', 'Oui', 'Oui', '65797920', 'Kadiatou65@gmail.cpp zoom', 'BAMAKO', 'BAMAKO', 'fombabougou', 'adhesion/778942379.jpg', NULL, '2023-02-18 09:59:27', '2023-02-18 09:59:27'),
(352, 'Camara', 'Oumar', NULL, 'Non', 'Non', 'Oui', '70243063', '70243063', 'BAMAKO', 'BAMAKO', 'Koulouba', 'adhesion/899061226.jpg', NULL, '2023-02-18 10:00:13', '2023-02-18 10:00:13'),
(353, 'Konate', 'Nansiama', NULL, 'Non', 'Non', 'Non', '53433111', 'nansiamak@gmail.com', 'BAMAKO', 'BAMAKO', 'médina coura', 'adhesion/273244577.jpg', NULL, '2023-02-18 10:01:42', '2023-02-18 10:01:42'),
(354, 'Maiga', 'moussa', NULL, 'ADP Maliba', 'Oui', 'Oui', '79158405', 'maiga.vieri2020@gmail.com', 'Mali', 'Mali', 'Kalaban coura Aci', 'adhesion/1382943500.jpg', NULL, '2023-02-18 10:03:50', '2023-02-18 10:03:50'),
(355, 'KEITA', 'Ismaila', NULL, 'Oui', 'Oui', 'Oui', '76059868', 'ismailakeita07@gmail.com', 'BAMAKO', 'BAMAKO', 'Bamako Coura', 'adhesion/369111448.jpg', NULL, '2023-02-18 10:05:11', '2023-02-18 10:05:11'),
(356, 'Traoré', 'Ibrahima', NULL, 'Grand Grin', 'Oui', 'Oui', '76921811', 'tibrahima157@gmail.com', 'BAMAKO', 'BAMAKO', 'Senou/banankoro', 'adhesion/796009372.jpg', NULL, '2023-02-18 10:06:14', '2023-02-18 10:06:14'),
(357, 'keita', 'sadio', NULL, 'Non', 'Non', 'Non', '53038844', 'keytasadio@gmail.com', 'BAMAKO', 'BAMAKO', 'lafiabougou', 'adhesion/1640179793.jpg', NULL, '2023-02-18 10:06:25', '2023-02-18 10:06:25'),
(358, 'Diarra', 'El pizo', NULL, 'Non', 'Oui', 'Oui', '82663518', 'diarranouma8@gmail.com', 'BAMAKO', 'BAMAKO', 'Darsalam', 'adhesion/937674.jpg', NULL, '2023-02-18 10:06:58', '2023-02-18 10:06:58'),
(359, 'Diarrassouba', 'Mahawa', NULL, 'Non', 'Oui', 'Oui', '76085529', '76085529', 'BAMAKO', 'BAMAKO', 'Bagadadji', 'adhesion/2015701206.jpg', NULL, '2023-02-18 10:07:35', '2023-02-18 10:07:35'),
(360, 'Coulibaly', 'Yaya Salifou', NULL, 'No Limit Club', 'Oui', 'Oui', '76477278', 'yayasalifoucoulibaly@gmail.com', 'BAMAKO', 'BAMAKO', 'Bamako Koulouba', 'adhesion/1365665062.jpg', NULL, '2023-02-18 10:09:01', '2023-02-18 10:09:01'),
(361, 'cisse', 'boubacar sidiki', NULL, 'URD', 'Oui', 'Oui', '91000084', 'boubacarsidikycisse87@gmail.com', 'BAMAKO', 'BAMAKO', 'Djicoroni para', 'adhesion/1062528896.jpg', NULL, '2023-02-18 10:10:55', '2023-02-18 10:10:55'),
(362, 'Fadjalan', 'Coulibaly', NULL, 'Non', 'Oui', 'Oui', '76141654', '64559015', 'BAMAKO', 'BAMAKO', 'moribabougou', 'adhesion/21401832.jpg', NULL, '2023-02-18 10:13:42', '2023-02-18 10:13:42'),
(363, 'diarra', 'mamadou', NULL, 'adema', 'Oui', 'Oui', '75360171', 'ismailniambele@gmail.com', 'BAMAKO', 'BAMAKO', 'koulouba', 'adhesion/174431414.jpg', NULL, '2023-02-18 10:13:43', '2023-02-18 10:13:43'),
(364, 'GUINDO', 'Mohamed Lamine', NULL, 'Non', 'Oui', 'Non', '94986357', 'mohguindo1212@gmail.com', 'BAMAKO', 'BAMAKO', 'Sebenicoro', 'adhesion/1175038194.jpg', NULL, '2023-02-18 10:14:12', '2023-02-18 10:14:12'),
(365, 'Mariko', 'salimata', NULL, 'Non', 'Oui', 'Oui', '61222238', 'salimatamariko498@gmail.com', 'BAMAKO', 'BAMAKO', 'senou', 'adhesion/760181667.jpg', NULL, '2023-02-18 10:15:14', '2023-02-18 10:15:14'),
(366, 'NIMAGA', 'Boubacar', NULL, 'bekan', 'Oui', 'Oui', '83090114', 'boubacarnimaga8309@gmail.com', 'BAMAKO', 'BAMAKO', 'fombabougou', 'adhesion/146461761.jpg', NULL, '2023-02-18 10:15:40', '2023-02-18 10:15:40'),
(367, 'Maïga', 'Sékou', NULL, 'Non', 'Oui', 'Non', '79575779', 'sekoumaiga7957', 'BAMAKO', 'BAMAKO', 'cite de Niger', 'adhesion/817986857.jpg', NULL, '2023-02-18 10:15:57', '2023-02-18 10:15:57'),
(368, 'dacko', 'fatoumata', NULL, 'rpm', 'Oui', 'Oui', '76279847', 'nnnnnn@gmail.com', 'BAMAKO', 'BAMAKO', 'niamakoro', 'adhesion/1391898252.jpg', NULL, '2023-02-18 10:17:01', '2023-02-18 10:17:01'),
(369, 'zorom', 'Baba', NULL, 'Non', 'Oui', 'Oui', '0022376464544', 'babazorom875@gmail.com', 'BAMAKO', 'BAMAKO', 'hippodrome', 'adhesion/56158263.jpg', NULL, '2023-02-18 10:17:09', '2023-02-18 10:17:09'),
(370, 'Dabo', 'Diakaridia', NULL, 'Sadi', 'Oui', 'Oui', '76218620', 'Diakaridiadabo6gmail.com', 'BAMAKO', 'BAMAKO', 'Sabalibougou', 'adhesion/55061939.jpg', NULL, '2023-02-18 10:17:58', '2023-02-18 10:17:58'),
(371, 'Diallo', 'fatoumata', NULL, 'association djikiya gnouma', 'Oui', 'Oui', '76159140', 'diallo', 'BAMAKO', 'BAMAKO', 'kalanbancoro', 'adhesion/1159289567.jpg', NULL, '2023-02-18 10:18:25', '2023-02-18 10:18:25'),
(372, 'Agna', 'Sarampo', NULL, 'Non', 'Oui', 'Oui', '76010843', 'Agna76@gmail.com', 'BAMAKO', 'BAMAKO', 'Banakabougou', 'adhesion/445084926.jpg', NULL, '2023-02-18 10:18:34', '2023-02-18 10:18:34'),
(373, 'Doumbia', 'Adiaratou', NULL, 'association Mandé', 'Oui', 'Oui', '94596633', 'adiaratou doumbia 825@com', 'BAMAKO', 'BAMAKO', 'sebenikoro', 'adhesion/1601437588.jpg', NULL, '2023-02-18 10:18:40', '2023-02-18 10:18:40'),
(374, 'DEMBELE', 'Drissa', NULL, 'Non', 'Oui', 'Oui', '91432550', 'dri0111998@gmail.com', 'SÉGOU', 'NIONO', 'Sebenikoro', 'adhesion/162156318.jpg', NULL, '2023-02-18 10:19:09', '2023-02-18 10:19:09'),
(375, 'Traoré', 'Aramata', NULL, 'Modibo keïta', 'Oui', 'Oui', '72078972', '74078972', 'BAMAKO', 'BAMAKO', 'Dravela', 'adhesion/1795487474.jpg', NULL, '2023-02-18 10:19:55', '2023-02-18 10:19:55'),
(376, 'camara', 'kadiatou', NULL, 'Fare', 'Oui', 'Oui', '76021293', 'kadiatoucamara@gmail.com', 'BAMAKO', 'BAMAKO', 'tabacoro', 'adhesion/89504839.jpg', NULL, '2023-02-18 10:20:18', '2023-02-18 10:20:18'),
(377, 'DIALLO', 'Issaka', NULL, 'Non', 'Oui', 'Oui', '76211151', 'sassouizak21@yahoo.fr', 'BAMAKO', 'BAMAKO', 'kalaban Coura', 'adhesion/894350306.jpg', NULL, '2023-02-18 10:20:27', '2023-02-18 10:20:27'),
(378, 'kané', 'KOROTOUM', NULL, 'Association Dèmè', 'Oui', 'Oui', '73148201', '73148201', 'BAMAKO', 'BAMAKO', 'Manniabougou', 'adhesion/1947382972.jpg', NULL, '2023-02-18 10:21:57', '2023-03-03 13:33:43'),
(379, 'Diakite', 'sata', NULL, 'Non', 'Oui', 'Oui', '78675930', 'Diakite @gmail.com', 'BAMAKO', 'BAMAKO', 'banakabougou', 'adhesion/822402462.jpg', NULL, '2023-02-18 10:22:23', '2023-02-18 10:22:23'),
(380, 'Touré', 'Ibrahim', NULL, 'Non', 'Non', 'Non', '70603590', 'it31394 @gmail.com', 'BAMAKO', 'BAMAKO', 'Mamaribougou', 'adhesion/2040271579.jpg', NULL, '2023-02-18 10:22:27', '2023-02-18 10:22:27'),
(381, 'SIDIBÉ', 'kadiatou', NULL, 'Non', 'Oui', 'Oui', '76041273', 'sidibekadi68@gmail.com', 'BAMAKO', 'BAMAKO', 'sebenikoro', 'adhesion/891199851.jpg', NULL, '2023-02-18 10:23:26', '2023-02-18 10:23:26'),
(382, 'Diarra', 'Dafalé', NULL, 'Non', 'Non', 'Non', '53005674', 'dafale005674@gmail.com', 'BAMAKO', 'BAMAKO', 'Moribabougou', 'adhesion/489785438.jpg', NULL, '2023-02-18 10:27:56', '2023-02-18 10:27:56'),
(383, 'Cissé', 'Fanta', NULL, 'les veuves et les femmes démunies de Manniabougou', 'Non', 'Non', '70639580', '70639580', 'BAMAKO', 'BAMAKO', 'Manniabougou rue 445', 'adhesion/1759294989.jpg', NULL, '2023-02-18 10:29:13', '2023-02-18 10:29:13'),
(384, 'Maiga', 'Mohamed', NULL, 'Non', 'Oui', 'Oui', '75050017', 'Maiga', 'BAMAKO', 'BAMAKO', 'Djikoroni para', 'adhesion/1320414779.jpg', NULL, '2023-02-18 10:29:25', '2023-02-18 10:29:25'),
(385, 'camara', 'sarata', NULL, 'Modibo keita', 'Oui', 'Oui', '66117118', '66117118', 'BAMAKO', 'BAMAKO', 'Dravela', 'adhesion/1165224313.jpg', NULL, '2023-02-18 10:29:32', '2023-02-18 10:29:32'),
(386, 'diarra', 'Mahamadou', NULL, 'Non', 'Oui', 'Oui', '76046331', '76046331', 'BAMAKO', 'BAMAKO', 'senou', 'adhesion/1680732883.jpg', NULL, '2023-02-18 10:30:50', '2023-02-18 10:30:50'),
(387, 'camara', 'Badra Alou', NULL, 'Rpm', 'Oui', 'Oui', '92582344', 'badraAlou@gmailcom', 'KOULIKORO', 'KOULIKORO', 'mamadibougou', 'adhesion/1828656210.jpg', NULL, '2023-02-18 10:31:11', '2023-02-22 09:32:33'),
(388, 'Coulibaly', 'awa', NULL, 'Non', 'Oui', 'Oui', '74025560', 'nnnnnn@gmail.com', 'BAMAKO', 'BAMAKO', 'banankoro', 'adhesion/1688226560.jpg', NULL, '2023-02-18 10:31:25', '2023-02-18 10:31:25'),
(389, 'Maiga', 'Oumeissa', NULL, 'AFABA', 'Oui', 'Oui', '66830368', 'omaiga7469@gmail.com', 'BAMAKO', 'BAMAKO', 'Bako djikoroni', 'adhesion/114659984.jpg', NULL, '2023-02-18 10:31:25', '2023-02-18 10:31:25'),
(390, 'mme Diarra', 'Samakoun', NULL, 'Non', 'Oui', 'Oui', '76457605', 'mmediarra2883@gmail.com', 'BAMAKO', 'BAMAKO', 'zone industrielle', 'adhesion/2036120814.jpg', NULL, '2023-02-18 10:32:11', '2023-02-18 10:32:11'),
(391, 'camara', 'nouh', NULL, 'Non', 'Oui', 'Oui', '78657006', 'camaranouh@gmail.com', 'BAMAKO', 'BAMAKO', 'kanadjigila', 'adhesion/620866096.jpg', NULL, '2023-02-18 10:34:59', '2023-02-18 10:34:59'),
(392, 'KODIO', 'AMADOU', NULL, 'URD', 'Oui', 'Oui', '75449285', 'Kodioamadou72@gmail.com', 'BAMAKO', 'BAMAKO', 'Kalaban coura Aci', 'adhesion/1545612461.jpg', NULL, '2023-02-18 10:35:52', '2023-02-18 10:35:52'),
(393, 'toukome', 'yayi', NULL, 'Non', 'Non', 'Non', '84653640', 'adiaratoukomou27@gmail.com', 'BAMAKO', 'BAMAKO', 'koulouba', 'adhesion/1426460389.jpg', NULL, '2023-02-18 10:36:42', '2023-02-18 10:36:42'),
(394, 'SOUMOUNOU', 'Halimatou Sidi', NULL, 'Non', 'Oui', 'Oui', '74069015', 'halimasoumounou@yahoo.fr', 'BAMAKO', 'BAMAKO', 'kalaban coura ACI', 'adhesion/518490549.jpg', NULL, '2023-02-18 10:36:42', '2023-02-18 10:36:42'),
(395, 'traoré', 'Awa', NULL, 'Non', 'Oui', 'Non', '74355209', '74355209', 'BAMAKO', 'BAMAKO', 'dravela', 'adhesion/1084575849.jpg', NULL, '2023-02-18 10:37:21', '2023-02-18 10:37:21'),
(396, 'sidibe', 'amadou', NULL, 'AdP', 'Oui', 'Oui', '91792783', 'sidibeamadougmail.com', 'BAMAKO', 'BAMAKO', 'medine coura', 'adhesion/1602285777.jpg', NULL, '2023-02-18 10:37:52', '2023-02-18 10:37:52'),
(397, 'samaké', 'abdoul karim', NULL, 'Non', 'Oui', 'Oui', '63095656', 'nnann@gmail.com', 'BAMAKO', 'BAMAKO', 'badalabougou', 'adhesion/1303043434.jpg', NULL, '2023-02-18 10:37:59', '2023-02-18 10:37:59'),
(398, 'Sinqyogo', 'Mafi', NULL, 'Non', 'Oui', 'Non', '93782820', '93782820', 'BAMAKO', 'BAMAKO', 'Niamakoro', 'adhesion/644610711.jpg', NULL, '2023-02-18 10:38:36', '2023-02-18 10:38:36'),
(399, 'coulibaly', 'ousmane', NULL, 'Non', 'Oui', 'Non', '90199218', 'ousmanecoulibaly887@gmail.com', 'BAMAKO', 'BAMAKO', 'sebenikoro', 'adhesion/443884419.jpg', NULL, '2023-02-18 10:39:19', '2023-02-18 10:39:19'),
(400, 'Kanté', 'Abdoulaye', NULL, 'Non', 'Oui', 'Oui', '76426778', 'Abdoulaykeïta@email.com', 'BAMAKO', 'BAMAKO', 'medinacoura', 'adhesion/1536714692.jpg', NULL, '2023-02-18 10:40:19', '2023-02-18 10:40:19'),
(401, 'sow', 'oumar', NULL, 'Non', 'Oui', 'Non', '69430092', 'oumar773754@gmail.com', 'BAMAKO', 'BAMAKO', 'sebeninkoro', 'adhesion/992594420.jpg', NULL, '2023-02-18 10:41:00', '2023-02-18 10:41:00'),
(402, 'kante', 'boubacar', NULL, 'Non', 'Non', 'Non', '76312410', 'boubacarkante@gmail.com', 'BAMAKO', 'BAMAKO', 'medine coura', 'adhesion/1554570774.jpg', NULL, '2023-02-18 10:41:05', '2023-02-18 10:41:05'),
(403, 'sessouma', 'mamadou', NULL, 'Non', 'Non', 'Non', '51547131', 'sessouma mamadousessouma26@gmail.com', 'BAMAKO', 'BAMAKO', 'yirimadio', 'adhesion/2089251864.jpg', NULL, '2023-02-18 10:41:17', '2023-02-18 10:41:17'),
(404, 'bagayogo', 'younsira', NULL, 'Non', 'Oui', 'Oui', '66791702', 'noumousirabagayoko@gmail.com', 'BAMAKO', 'BAMAKO', 'Médine coura', 'adhesion/765204797.jpg', NULL, '2023-02-18 10:42:37', '2023-02-18 10:42:37'),
(405, 'Doumbia', 'Aminata', NULL, 'Benkan', 'Oui', 'Oui', '76289173', '76289173', 'BAMAKO', 'BAMAKO', 'Koulouba', 'adhesion/1580550922.jpg', NULL, '2023-02-18 10:43:02', '2023-02-18 10:43:02'),
(406, 'COULIBALY', 'Tiéfolo', NULL, 'Non', 'Oui', 'Oui', '69286148', 'tiefolocoulibaly28@gmail.com', 'BAMAKO', 'BAMAKO', 'NIAMAKORO', 'adhesion/2051495726.jpg', NULL, '2023-02-18 10:44:16', '2023-02-18 10:44:16'),
(407, 'KASSAMBARA', 'Souleymane', NULL, 'benkan', 'Oui', 'Oui', '76173506', 'Kassambara', 'SAN', 'SAN', 'Kabala', 'adhesion/2067956995.jpg', NULL, '2023-02-18 10:44:37', '2023-02-18 10:44:37'),
(408, 'sogodogo', 'assetou', NULL, 'Musso kounkam', 'Oui', 'Oui', '78647907', '78647907', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/291639655.jpg', NULL, '2023-02-18 10:44:45', '2023-02-18 10:44:45'),
(409, 'Sissoko', 'amadou', NULL, 'Non', 'Oui', 'Oui', '61138414', 'Sissokoamadou@gmail.com', 'BAMAKO', 'BAMAKO', 'medina coura', 'adhesion/680267775.jpg', NULL, '2023-02-18 10:45:40', '2023-02-18 10:45:40'),
(410, 'Tounkara', 'oumou', NULL, 'Non', 'Oui', 'Oui', '52156869', 'dackojean7@gmail.com', 'BAMAKO', 'BAMAKO', 'koulouba', 'adhesion/1842125464.jpg', NULL, '2023-02-18 10:46:52', '2023-02-18 10:46:52'),
(411, 'Ramata', 'Keïta', NULL, 'Non', 'Oui', 'Oui', '76 56 83 58', 'Kramata336@gmail.com', 'BAMAKO', 'BAMAKO', 'sébénicoro', 'adhesion/2078954371.jpg', NULL, '2023-02-18 10:46:57', '2023-02-18 10:46:57'),
(412, 'sissoko', 'Amadou', NULL, 'politique', 'Non', 'Non', '67410199', 'medina coura', 'BAMAKO', 'BAMAKO', 'medina coura', 'adhesion/1834886141.jpg', NULL, '2023-02-18 10:48:09', '2023-02-18 10:48:09'),
(413, 'Dramé', 'Bintou', NULL, 'Non', 'Oui', 'Oui', '73477529', '73477529', 'BAMAKO', 'BAMAKO', 'Koulouba', 'adhesion/1514974972.jpg', NULL, '2023-02-18 10:48:10', '2023-02-18 10:48:10'),
(414, 'keïta', 'bassaro', NULL, 'R.P.M', 'Oui', 'Oui', '764554948', 'bassarokeita@gmail.com', 'BAMAKO', 'BAMAKO', 'hamdallaye', 'adhesion/781135114.jpg', NULL, '2023-02-18 10:49:04', '2023-02-18 10:49:04'),
(415, 'kanté', 'sidi', NULL, 'Non', 'Non', 'Non', '92764297', 'kantesidi413@gmail.com', 'BAMAKO', 'BAMAKO', 'medina coura', 'adhesion/1655710820.jpg', NULL, '2023-02-18 10:50:22', '2023-02-18 10:50:22'),
(416, 'traorè', 'Mariama', NULL, 'Non', 'Non', 'Non', '73541911', 'Mariama0600gmail.com', 'BAMAKO', 'BAMAKO', 'para djicroni', 'adhesion/941268153.jpg', NULL, '2023-02-18 10:50:53', '2023-02-18 10:50:53'),
(417, 'kante', 'sidi yaya', NULL, 'Non', 'Non', 'Non', '74340918', 'sidiyaya@gmail.com', 'BAMAKO', 'BAMAKO', 'medina coura', 'adhesion/478847971.jpg', NULL, '2023-02-18 10:52:26', '2023-02-18 10:52:26'),
(418, 'ouédrago', 'kadidjiatou', NULL, 'Non', 'Non', 'Non', '73727201', '73727201', 'BAMAKO', 'BAMAKO', 'doumazana', 'adhesion/1894276395.jpg', NULL, '2023-02-18 10:52:49', '2023-02-18 10:52:49'),
(419, 'seydi', 'Namparé', NULL, 'Non', 'Oui', 'Oui', '77611955', '66670520', 'BAMAKO', 'BAMAKO', 'banconi plateau', 'adhesion/872420841.jpg', NULL, '2023-02-18 10:53:06', '2023-02-18 10:53:06'),
(420, 'Camara', 'Mahamadou', NULL, 'association Sinignè Sigui Ton', 'Oui', 'Oui', '76 61 36 00', 'mahamadoucamara637@gmail.com', 'BAMAKO', 'BAMAKO', 'Kalaban-Coro', 'adhesion/697616259.jpg', NULL, '2023-02-18 10:53:10', '2023-02-18 10:53:10'),
(421, 'Traoré', 'saran', NULL, 'Non', 'Oui', 'Non', '79916723', 'nan@gmail.com', 'BAMAKO', 'BAMAKO', 'médina coura', 'adhesion/67180971.jpg', NULL, '2023-02-18 10:54:57', '2023-02-18 10:54:57'),
(422, 'KEITA', 'Djibril', NULL, 'Non', 'Oui', 'Non', '72458988', 'djibrilfass300@gmail.com', 'BAMAKO', 'BAMAKO', 'missabougou', 'adhesion/275944365.jpg', NULL, '2023-02-18 10:55:39', '2023-02-18 10:55:39'),
(423, 'Coulibaly', 'Salimata', NULL, 'Non', 'Non', 'Non', '79380082', 'siralah@hotmail.fr', 'BAMAKO', 'BAMAKO', 'djicoroni', 'adhesion/841169020.jpg', NULL, '2023-02-18 10:56:29', '2023-02-18 10:56:29'),
(424, 'Ousmane', 'Faissal', NULL, 'association ajec', 'Oui', 'Non', '0022370443683', 'ofaissal@hotmail.com', 'BAMAKO', 'BAMAKO', 'sirakoro', 'adhesion/744161995.jpg', NULL, '2023-02-18 10:57:22', '2023-02-18 10:57:22'),
(425, 'kanté', 'Rokia', NULL, 'Non', 'Non', 'Non', '62222975', 'Rokiakante911@gmail.com', 'BAMAKO', 'BAMAKO', 'medina coura', 'adhesion/1455418301.jpg', NULL, '2023-02-18 10:58:32', '2023-02-18 10:58:32'),
(426, 'camara', 'nassou', NULL, 'Non', 'Oui', 'Oui', '66674207', 'nassoucamara948@gmail.com', 'BAMAKO', 'BAMAKO', 'talko', 'adhesion/1443375421.jpg', NULL, '2023-02-18 10:59:08', '2023-02-18 10:59:08'),
(427, 'Toure', 'Abdoulaye', NULL, 'Non', 'Non', 'Non', '73539882', '73539882', 'BAMAKO', 'BAMAKO', 'para Djikoroni', 'adhesion/2131205046.jpg', NULL, '2023-02-18 11:00:34', '2023-02-18 11:00:34'),
(428, 'kante', 'mariam', NULL, 'Non', 'Non', 'Non', '89420966', 'assansolimana18@gmail.com', 'BAMAKO', 'BAMAKO', 'medina coura', 'adhesion/1538544488.jpg', NULL, '2023-02-18 11:00:52', '2023-02-18 11:00:52'),
(429, 'samake', 'Drissa', NULL, 'Non', 'Non', 'Non', '91917270', 'nnnn@gmail.com', 'BAMAKO', 'BAMAKO', 'koulouba', 'adhesion/1141446308.jpg', NULL, '2023-02-18 11:01:34', '2023-02-18 11:01:34'),
(430, 'Traore', 'Abdoulay', NULL, 'Non', 'Oui', 'Non', '77694333', '77694333', 'BAMAKO', 'BAMAKO', 'para Djikoroni', 'adhesion/1427790145.jpg', NULL, '2023-02-18 11:04:20', '2023-02-18 11:04:20'),
(431, 'kante', 'rokia', NULL, 'Non', 'Non', 'Non', '70773378', 'rokiakante23@icloud.com', 'BAMAKO', 'BAMAKO', 'medina coura', 'adhesion/110843794.jpg', NULL, '2023-02-18 11:04:43', '2023-02-22 09:37:31'),
(432, 'Coulibaly', 'Aïcha', NULL, 'Non', 'Non', 'Non', '91895045', 'aissatastyle2020@gmail.com', 'BAMAKO', 'BAMAKO', 'lafiabougou', 'adhesion/549620848.jpg', NULL, '2023-02-18 11:04:46', '2023-02-18 11:04:46'),
(433, 'diarra', 'mariam', NULL, 'Non', 'Non', 'Non', '73466847', '73466847', 'BAMAKO', 'BAMAKO', 'djicoronipara', 'adhesion/1005915476.jpg', NULL, '2023-02-18 11:04:50', '2023-02-18 11:04:50'),
(434, 'berthé', 'mariam', NULL, 'Non', 'Oui', 'Oui', '64148180', 'berthemariamb6@gmail.com', 'BAMAKO', 'BAMAKO', 'yirimadio', 'adhesion/962511616.jpg', NULL, '2023-02-18 11:05:29', '2023-02-18 11:05:29'),
(435, 'camara', 'kankou', NULL, 'Non', 'Oui', 'Oui', '92090025', 'kankoucamara@gmail.com', 'BAMAKO', 'BAMAKO', 'medina coura', 'adhesion/883386774.jpg', NULL, '2023-02-18 11:07:22', '2023-02-18 11:07:22'),
(436, 'tangara', 'dramane', NULL, 'Non', 'Oui', 'Oui', '84371847', 'dramanetangara84', 'BAMAKO', 'BAMAKO', 'Djelibougou', 'adhesion/508906748.jpg', NULL, '2023-02-18 11:07:27', '2023-02-18 11:07:27'),
(437, 'MAIGA', 'ALIOU ISSOUFA', NULL, 'AOPM', 'Oui', 'Oui', '73487705', 'lalioum613@gmail.com', 'BAMAKO', 'BAMAKO', 'Sibribougou commune 4', 'adhesion/443313994.jpg', NULL, '2023-02-18 11:08:04', '2023-02-18 11:08:04'),
(438, 'diabi', 'mariam', NULL, 'Non', 'Oui', 'Oui', '76053778', 'mariamdiabi@gmail.com', 'BAMAKO', 'BAMAKO', 'doumazana', 'adhesion/1893600765.jpg', NULL, '2023-02-18 11:08:11', '2023-02-18 11:08:11'),
(439, 'Coulibaly', 'coura', NULL, 'Non', 'Oui', 'Non', '77463273', 'Coulibalycoura34@gmail.com', 'BAMAKO', 'BAMAKO', 'medina coura', 'adhesion/86222809.jpg', NULL, '2023-02-18 11:10:04', '2023-02-18 11:10:04'),
(440, 'nimaga', 'assitan', NULL, 'Non', 'Oui', 'Oui', '76309082', 'nimagaassan79@gmail.com', 'BAMAKO', 'BAMAKO', 'daoudabougou', 'adhesion/662291082.jpg', NULL, '2023-02-18 11:10:10', '2023-02-22 10:24:06'),
(441, 'traoré', 'chaka', NULL, 'Non', 'Non', 'Non', '51901668', '51901668', 'BAMAKO', 'BAMAKO', 'doumazana', 'adhesion/1876309770.jpg', NULL, '2023-02-18 11:10:13', '2023-02-18 11:10:13'),
(442, 'togola', 'koniba', NULL, 'Non', 'Non', 'Non', '72750822', 'xxxnnx@gmail.com', 'BAMAKO', 'BAMAKO', 'sabalibougou', 'adhesion/1629531227.jpg', NULL, '2023-02-18 11:10:54', '2023-02-18 11:10:54'),
(443, 'Diarra', 'Sory', NULL, 'Non', 'Oui', 'Oui', '70073740', 'dscg223@gmail.com', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/386746751.jpg', NULL, '2023-02-18 11:14:04', '2023-02-18 11:14:04'),
(444, 'n\'diaye', 'AliMA', NULL, 'Non', 'Oui', 'Oui', '79192550', 'AliMA.n\'diaye312@gmail.com', 'BAMAKO', 'BAMAKO', 'fadjiguila', 'adhesion/1983367463.jpg', NULL, '2023-02-18 11:14:10', '2023-02-18 11:14:10'),
(445, 'Dabele', 'Moussa', NULL, 'Non', 'Non', 'Non', '91857817', 'mdemb371@gmail.com', 'BAMAKO', 'BAMAKO', 'Sebenikoro', 'adhesion/813416709.jpg', NULL, '2023-02-18 11:14:32', '2023-02-18 11:14:32'),
(446, 'Konare', 'Issa', NULL, 'Non', 'Oui', 'Oui', '60865086', 'issakonare248@gmail.com', 'BAMAKO', 'BAMAKO', 'Sebenikoro', 'adhesion/1149267569.jpg', NULL, '2023-02-18 11:14:55', '2023-02-22 10:35:23'),
(447, 'koné', 'bourama', NULL, 'Non', 'Oui', 'Non', '87521537', 'rnbnttvx@gmail.com', 'BAMAKO', 'BAMAKO', 'sabalibougou', 'adhesion/1041527371.jpg', NULL, '2023-02-18 11:15:26', '2023-02-18 11:15:26'),
(448, 'Dembele', 'Matiba', NULL, 'PIDP', 'Oui', 'Oui', '94336819', '94336819', 'BAMAKO', 'BAMAKO', 'boulkassoubougou', 'adhesion/2146304673.jpg', NULL, '2023-02-18 11:15:56', '2023-02-18 11:15:56'),
(449, 'Diapkile', 'Ibrahima', NULL, 'Non', 'Oui', 'Oui', '71514745', 'ibrahimadiapkile2016@gmail.com', 'BAMAKO', 'BAMAKO', 'Niamkoro Diallobougou', 'adhesion/1129627184.jpg', NULL, '2023-02-18 11:17:03', '2023-02-18 11:17:03'),
(450, 'camara', 'Maïssata', NULL, 'RPM', 'Oui', 'Oui', '70927279', '70927279', 'BAMAKO', 'BAMAKO', 'lafiabougou', 'adhesion/2125235146.jpg', NULL, '2023-02-18 11:19:07', '2023-02-18 11:19:07'),
(451, 'kindo', 'Abdoul Karim', NULL, 'Non', 'Oui', 'Oui', '71410330', 'Abdoul Karim kindo026@Email.com', 'BAMAKO', 'BAMAKO', 'Hamdallaye Aci 2000', 'adhesion/922444351.jpg', NULL, '2023-02-18 11:22:14', '2023-02-18 11:22:14'),
(452, 'samake', 'Hafsatou Djinessira', NULL, 'Non', 'Non', 'Non', '53591555', 'hafsatousamake16@gmail.com', 'BAMAKO', 'BAMAKO', 'niamakoro', 'adhesion/580262481.jpg', NULL, '2023-02-18 11:22:48', '2023-02-18 11:22:48'),
(453, 'Diallo', 'Daouda', NULL, 'Non', 'Non', 'Non', '78926838', 'daoudadiallo@nnnnngmail.com', 'BAMAKO', 'BAMAKO', 'kouliba', 'adhesion/576581188.jpg', NULL, '2023-02-18 11:22:56', '2023-02-18 11:22:56'),
(454, 'hawa', 'sanogo', NULL, 'Non', 'Oui', 'Oui', '94714112', '94714112', 'BAMAKO', 'BAMAKO', 'Djelibougou', 'adhesion/311687072.jpg', NULL, '2023-02-18 11:23:36', '2023-02-18 11:23:36'),
(455, 'toure', 'Ibrahima', NULL, 'Non', 'Oui', 'Non', '72202878', 'Ibrahima 7220@gmail.com', 'BAMAKO', 'BAMAKO', 'Sebenicoro', 'adhesion/1442650185.jpg', NULL, '2023-02-18 11:23:46', '2023-02-18 11:23:46'),
(456, 'Diapkile', 'Alassane', NULL, 'Non', 'Oui', 'Oui', '73902672', 'alassanediapkile73@gmail.com', 'BAMAKO', 'BAMAKO', 'Niamakoro', 'adhesion/2062555674.jpg', NULL, '2023-02-18 11:24:08', '2023-02-18 11:24:08'),
(457, 'Haidara', 'Amadou', NULL, 'Non', 'Non', 'Non', '94449530', 'amadouhaid1234@gmail.com', 'BAMAKO', 'BAMAKO', 'Niamakoro', 'adhesion/1709960789.jpg', NULL, '2023-02-18 11:24:34', '2023-02-18 11:24:34'),
(458, 'karambe', 'aichata', NULL, 'Non', 'Oui', 'Oui', '53396739', 'aichatakarambe55@gmail.com', 'BAMAKO', 'BAMAKO', 'niamakoro', 'adhesion/237023721.jpg', NULL, '2023-02-18 11:25:03', '2023-02-18 11:25:03'),
(459, 'keita', 'Niougouba', NULL, 'Non', 'Oui', 'Oui', '78110249', '78110249', 'BAMAKO', 'BAMAKO', 'lafiabougou', 'adhesion/376115392.jpg', NULL, '2023-02-18 11:25:54', '2023-02-18 11:25:54'),
(460, 'samake', 'Maïmouna', NULL, 'Non', 'Non', 'Non', '63644367', 'maïmounasa@gmail.com', 'BAMAKO', 'BAMAKO', 'niamakoro', 'adhesion/686019949.jpg', NULL, '2023-02-18 11:26:27', '2023-02-18 11:26:27'),
(461, 'Sidibé', 'Mohamed', NULL, 'Non', 'Non', 'Non', '83076683', 'moh8307@icloud.com', 'BAMAKO', 'BAMAKO', 'Niamakoro', 'adhesion/1334463963.jpg', NULL, '2023-02-18 11:26:47', '2023-02-18 11:26:47'),
(462, 'Goita', 'tata', NULL, 'Non', 'Non', 'Non', '93537409', 'tatagoita23@gmail.com', 'BAMAKO', 'BAMAKO', 'niamakoro', 'adhesion/1559081978.jpg', NULL, '2023-02-18 11:28:21', '2023-02-18 11:28:21'),
(463, 'Diabate', 'Bakari', NULL, 'Non', 'Oui', 'Non', '90161863', 'b Diabaté 510@gmail.com', 'BAMAKO', 'BAMAKO', 'Niamakoro', 'adhesion/1390573108.jpg', NULL, '2023-02-18 11:28:43', '2023-02-18 11:28:43'),
(464, 'Wague', 'Amadou', NULL, 'Non', 'Non', 'Non', '89288527', 'ad7548527@gmail.com', 'BAMAKO', 'BAMAKO', 'nianmacoro', 'adhesion/231791892.jpg', NULL, '2023-02-18 11:31:26', '2023-02-18 11:31:26'),
(465, 'Coulibaly', 'Botie', NULL, 'Non', 'Oui', 'Oui', '67454949', 'Coulibaly', 'BAMAKO', 'BAMAKO', 'Niamakoro', 'adhesion/2060897838.jpg', NULL, '2023-02-18 11:33:10', '2023-02-18 11:33:10'),
(466, 'samake', 'Diakaria', NULL, 'Non', 'Non', 'Non', '98391615', 'diakaria@gmail.com', 'BAMAKO', 'BAMAKO', 'yirimadio', 'adhesion/2072679910.jpg', NULL, '2023-02-18 11:34:20', '2023-02-18 11:34:20'),
(467, 'Sogodogo', 'Bamory', NULL, 'Non', 'Oui', 'Oui', '76280714', 'bamorysogodogo22@gmail.com', 'BAMAKO', 'BAMAKO', 'Kalaban', 'adhesion/1823628807.jpg', NULL, '2023-02-18 11:34:35', '2023-02-18 11:34:35'),
(468, 'Camara', 'djeneba', NULL, 'Non', 'Oui', 'Oui', '76351097', 'djeneboucamara23@gmail.com', 'BAMAKO', 'BAMAKO', 'Djicoroni-para', 'adhesion/1112496651.jpg', NULL, '2023-02-18 11:36:08', '2023-02-18 11:36:08'),
(469, 'Togola', 'Moussa', NULL, 'Non', 'Non', 'Non', '67564960', 'moussat@gmail.com', 'BAMAKO', 'BAMAKO', 'niamakoro', 'adhesion/83863204.jpg', NULL, '2023-02-18 11:36:20', '2023-02-18 11:36:20'),
(470, 'Coulibaly', 'moussa', NULL, 'Non', 'Non', 'Non', '78839808', 'mc3971157@gmail.com', 'BAMAKO', 'BAMAKO', 'doumazana golf', 'adhesion/68420331.jpg', NULL, '2023-02-18 11:38:05', '2023-02-18 11:38:05'),
(471, 'Camara', 'Fatoumata', NULL, 'Étoile du Mali', 'Oui', 'Oui', '76378311', 'fatimc1975@gm', 'BAMAKO', 'BAMAKO', 'Yirimadio zerni', 'adhesion/144703722.jpg', NULL, '2023-02-18 11:39:04', '2023-02-18 11:39:04'),
(472, 'Niamou', 'yacouba', NULL, 'benkan', 'Oui', 'Oui', '70607020', 'yacouba@gmail.com', 'BAMAKO', 'BAMAKO', 'nianmakoro', 'adhesion/1787249991.jpg', NULL, '2023-02-18 11:39:18', '2023-02-22 09:50:59'),
(473, 'Daou', 'Drissa', NULL, 'Non', 'Oui', 'Non', '77708861', 'drissadaou182@gmail.com', 'BAMAKO', 'BAMAKO', 'Kalaban coûta Aci', 'adhesion/439848165.jpg', NULL, '2023-02-18 11:39:39', '2023-02-18 11:39:39'),
(474, 'Diallo', 'Alima', NULL, 'urd ,Rpm', 'Oui', 'Oui', '79234622', 'alima@gmail.com', 'BAMAKO', 'BAMAKO', 'medina coura', 'adhesion/1541262031.jpg', NULL, '2023-02-18 11:41:18', '2023-02-18 11:41:18'),
(475, 'samake', 'Allassane', NULL, 'Non', 'Non', 'Non', '67324113', 'alassane@gmail.com', 'BAMAKO', 'BAMAKO', 'niamaloro', 'adhesion/1360450529.jpg', NULL, '2023-02-18 11:43:30', '2023-02-18 11:43:30'),
(476, 'koné', 'zakaria', NULL, 'Non', 'Oui', 'Non', '98496605', '98496605', 'BAMAKO', 'BAMAKO', 'lafiabougou', 'adhesion/459725882.jpg', NULL, '2023-02-18 11:44:06', '2023-02-18 11:44:06'),
(477, 'Diarra', 'modibo', NULL, 'Non', 'Non', 'Non', '89921896', 'modibo@gmail.com', 'BAMAKO', 'BAMAKO', 'nianmakoro', 'adhesion/983409120.jpg', NULL, '2023-02-18 11:45:22', '2023-02-18 11:45:22'),
(478, 'samake', 'fousseyni', NULL, 'Non', 'Non', 'Oui', '98282507', 'samake@gmail.com', 'BAMAKO', 'BAMAKO', 'niamakoro', 'adhesion/1347798260.jpg', NULL, '2023-02-18 11:47:47', '2023-02-18 11:47:47'),
(479, 'Doumbia', 'demba', NULL, 'Non', 'Non', 'Non', '95727995', 'demba@gmail.com', 'BAMAKO', 'BAMAKO', 'niamakoro', 'adhesion/616979589.jpg', NULL, '2023-02-18 11:49:31', '2023-02-18 11:49:31'),
(480, 'Sidibé', 'Mariam', NULL, 'Non', 'Non', 'Non', '76109266', '76109266', 'BAMAKO', 'BAMAKO', 'Lassa', 'adhesion/1384197178.jpg', NULL, '2023-02-18 11:49:44', '2023-02-18 11:49:44'),
(481, 'diambou', 'kadidiatou', NULL, 'Non', 'Non', 'Oui', '76413161', 'marakaadja92@gmail.com', 'BAMAKO', 'BAMAKO', 'ipodrome', 'adhesion/176225968.jpg', NULL, '2023-02-18 11:50:33', '2023-02-18 11:50:33'),
(483, 'Doumbia', 'Oumar', NULL, 'Non', 'Oui', 'Oui', '69869645', 'oumardoumb89@gemail.com', 'BAMAKO', 'BAMAKO', 'sebenikoro', 'adhesion/1886135551.jpg', NULL, '2023-02-18 11:53:17', '2023-02-18 11:53:17'),
(484, 'seyba', 'seribara', NULL, 'Non', 'Oui', 'Oui', '76144808', 'nnnn@gmai.com', 'BAMAKO', 'BAMAKO', 'Gof', 'adhesion/1976556734.jpg', NULL, '2023-02-18 11:53:23', '2023-02-18 11:53:23'),
(485, 'yanoga', 'Abdoulaye', NULL, 'Non', 'Oui', 'Oui', '75932599', 'nnnn@gmail.com', 'BAMAKO', 'BAMAKO', 'Niamakoro', 'adhesion/160852272.jpg', NULL, '2023-02-18 11:53:40', '2023-02-18 11:53:40'),
(486, 'Traore', 'Mamadou', NULL, 'Non', 'Oui', 'Oui', '76235620', 'Mamadou@gmail.com', 'BAMAKO', 'BAMAKO', 'koulouba', 'adhesion/1226318304.jpg', NULL, '2023-02-18 11:53:58', '2023-02-18 11:53:58'),
(487, 'Lamine', 'Doumbia', NULL, 'Non', 'Non', 'Non', '51336180', 'nnnn11@gmail.com', 'BAMAKO', 'BAMAKO', 'Lafiagougou', 'adhesion/1792027682.jpg', NULL, '2023-02-18 12:14:27', '2023-02-18 12:14:27'),
(488, 'niare', 'wouah', NULL, 'Non', 'Non', 'Non', '72385362', 'wouahniare@gmail.com', 'BAMAKO', 'BAMAKO', 'masculins', 'adhesion/83502887.jpg', NULL, '2023-02-18 17:38:51', '2023-02-18 17:38:51'),
(489, 'Coulibaly', 'Moise', NULL, 'Non', 'Oui', 'Non', '83412948', 'Moisecoulibaly76@gmail.com', 'Mali', 'Mali', 'lafiabougou', 'adhesion/1482618101.jpg', NULL, '2023-02-19 10:18:38', '2023-02-19 10:18:38'),
(490, 'diarra', 'Bréhima', NULL, 'Non', 'Oui', 'Oui', '69826100', 'brehimadiarra2016@yahoo.fr', 'BAMAKO', 'BAMAKO', 'Niamakoro', 'adhesion/1189986538.jpg', NULL, '2023-02-22 14:22:20', '2023-02-22 14:22:20'),
(491, 'Diarra', 'Ousmane', NULL, 'Non', 'Oui', 'Oui', '76066364', 'ousmane_diarra86@yahoo.fr', 'BAMAKO', 'BAMAKO', 'kalaban coura', 'adhesion/1050567890.jpg', NULL, '2023-02-22 14:25:09', '2023-02-22 14:25:09'),
(492, 'Amédégnato', 'Samuel', NULL, 'Non', 'Oui', 'Oui', '78848478', 'amgtsam@gmail.com', 'KOULIKORO', 'KATI', 'Baguineda', 'adhesion/1629722875.jpg', NULL, '2023-02-25 11:45:29', '2023-02-25 11:45:29'),
(493, 'Kaouwa', 'Baby', NULL, 'Non', 'Non', 'Non', '6566672', 'kaouwababy@gmail.com', 'BAMAKO', 'BAMAKO', 'boulkassoubougou', 'adhesion/1580514596.jpg', NULL, '2023-02-27 14:41:46', '2023-02-27 14:41:46'),
(494, 'Mady', 'Keïta', NULL, 'Oui je suis actif dans une organisation politique qu\'il s\'appel \"P.E.I\" Parti Écologiste pour l\'intégration et plusieurs organisations apolitique.', 'Oui', 'Oui', '63752045/75456115', 'madyk6375@gmail.com/63752045', 'Mali', 'Mali', 'Sébénicoro-Secteur I, rue :606 et porte : 219', 'adhesion/1277897832.jpg', NULL, '2023-02-28 10:57:06', '2023-02-28 10:57:06'),
(495, 'SANOGO', 'Noury N’Dyne', NULL, 'ADEMA PASJ', 'Oui', 'Oui', '76743565', 'nouryndynes@yahoo.fr', 'TOMBOUCTOU', 'TOMBOUCTOU', 'Sareikeina', 'adhesion/758355351.jpg', NULL, '2023-02-28 15:38:57', '2023-02-28 15:38:57'),
(496, 'Coulibaly', 'ousmane', NULL, 'oui', 'Oui', 'Oui', '76295277', 'nnnn', 'SIKASSO', 'KADIOLO', 'apte sans handicap', 'adhesion/2093835492.jpg', NULL, '2023-03-01 20:06:46', '2023-03-01 20:06:46'),
(497, 'traore', 'Bouya', NULL, 'RDA', 'Oui', 'Oui', '66 06 23 23', 'igsm.bt@gemail.com', 'BAMAKO', 'BAMAKO', 'faladier sema rue 802 porte 190', 'adhesion/1904385009.jpg', NULL, '2023-03-04 10:18:41', '2023-03-04 10:18:41'),
(498, 'Ousmane', 'Ousmane', NULL, 'AEEM', 'Oui', 'Non', '76459774', 'nnnn@gmail.com', 'BAMAKO', 'BAMAKO', 'kalabanCoura', 'adhesion/590495016.jpg', NULL, '2023-03-12 10:08:39', '2023-03-12 10:08:39'),
(500, 'bbbb', 'bbbb', NULL, 'Non', 'Non', 'Non', '76544545', '76457645', 'BAMAKO', 'BAMAKO', 'kalabanCoura', 'adhesion/50872550.jpg', NULL, '2023-03-13 12:54:55', '2023-03-13 12:54:55'),
(503, 'Traoré', 'Yacouba', NULL, 'Kafo Walé', 'Oui', 'Oui', '79495684', 'yacoubatraore6688@gmail.com', 'BAMAKO', 'BAMAKO', 'Niamakoro', 'adhesion/563855368.jpg', NULL, '2023-03-14 14:51:36', '2023-03-14 14:51:36'),
(504, 'Diarra', 'Aboubacar sidiki', NULL, 'Jeunesse Engagée Pour le Développement', 'Oui', 'Oui', '79657348', 'diarraaboubacar102@gmail.com', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/1423371519.jpg', NULL, '2023-03-14 14:54:11', '2023-03-14 14:54:11'),
(506, 'Camara', 'Souleymane', NULL, 'Fédération nationale des retraités du Mali', 'Oui', 'Oui', '76064993', '76064993', 'BAMAKO', 'BAMAKO', 'Coulouba', 'adhesion/1923422361.jpg', NULL, '2023-03-14 15:24:04', '2023-03-14 15:24:04'),
(508, 'Traoré', 'Salif Famory', NULL, 'uneem', 'Non', 'Non', '90269720', 'docsft@gmail,com', 'SIKASSO', 'SIKASSO', 'Sikasso wayéréma 1', 'adhesion/440681271.jpg', NULL, '2023-03-27 14:10:32', '2023-03-27 14:10:32'),
(509, 'Guindo', 'sara', NULL, 'Non', 'Oui', 'Oui', '73549779', 'saraguindo3@gmail.com', 'BAMAKO', 'BAMAKO', 'kalaban coura', 'adhesion/318669343.jpg', NULL, '2023-03-29 07:57:59', '2023-03-29 07:57:59'),
(510, 'Sidibé', 'Moussa', NULL, 'Grande famille du badialan 3', 'Oui', 'Oui', '66952257', 'moussconsulting@yahoo.fr', 'BAMAKO', 'BAMAKO', 'badialan 3', 'adhesion/1890238671.jpg', NULL, '2023-04-03 09:05:20', '2023-04-03 09:05:20'),
(511, 'Adama', 'Ann', NULL, 'Non', 'Non', 'Non', '73547625', 'adamaann84@gmail.com', 'KAYES', 'YELIMANE', 'yelimané cébé', 'adhesion/1209636672.jpg', NULL, '2023-04-08 08:11:23', '2023-04-08 08:11:23'),
(512, 'TOURÉ', 'Moussa Abdoulaye', NULL, 'Non', 'Oui', 'Oui', '79076169', 'moutoure@unicef.org', 'TOMBOUCTOU', 'TOMBOUCTOU', 'bariz', 'adhesion/1039898963.jpg', NULL, '2023-04-18 19:24:16', '2023-04-18 19:24:16'),
(513, 'Samake', 'ousmane', NULL, 'Non', 'Oui', 'Oui', '64426669', 'ousmanesam10@gmail.com', 'BAMAKO', 'BAMAKO', 'niamakoro cité unicef', 'adhesion/1538724632.jpg', NULL, '2023-04-22 21:13:19', '2023-04-22 21:13:19'),
(514, 'Ousmane', 'Faissal', NULL, 'MJA;AJEC;bureau des étudiants Intecsup', 'Oui', 'Oui', '70443683', 'faomaiga9@gmail.com', 'BAMAKO', 'BAMAKO', 'sirakoro', 'adhesion/1365695218.jpg', NULL, '2023-04-29 18:34:59', '2023-04-29 18:34:59'),
(515, 'MAGUIRAGA', 'Hamadi', NULL, 'oui', 'Oui', 'Non', '76299544', 'hmaguis@gmail.Com', 'BAMAKO', 'BAMAKO', 'Faladie', 'adhesion/87703470.jpg', NULL, '2023-04-29 19:58:30', '2023-04-29 19:58:30'),
(516, 'COULIBALY', 'Sékou', NULL, 'oui', 'Oui', 'Oui', '66890101', 'sekoucly@gmail.com', 'BAMAKO', 'BAMAKO', 'Magnambougou', 'adhesion/2058042642.jpg', NULL, '2023-04-29 20:51:31', '2023-04-29 20:51:31'),
(537, 'bbb', 'bbb', 'FEMME', 'Non', 'Non', 'Non', '90909090', 'N/A', 'BAMAKO', 'BAMAKO', 'bbbb', 'adhesion/1413838878.jpg', NULL, '2023-05-02 21:36:27', '2023-05-02 21:36:27'),
(538, 'bbb', 'bbb', 'HOMME', 'bbbb', 'bbbb', 'Oui', 'bbb', 'N/A', 'Morocco', 'Morocco', 'bbbb', 'adhesion/17138788.jpg', NULL, '2023-05-02 21:37:21', '2023-05-02 21:37:21'),
(539, 'bcbcbcb', 'ccc', 'FEMME', 'nnn', 'Non', 'Oui', '70114965', 'email@ddd.com', 'KAYES', 'KAYES', 'bbnbn', 'adhesion/2071876052.jpg', NULL, '2023-05-02 21:41:55', '2023-05-02 21:41:55'),
(540, 'dfdfd', 'dfdfdf', 'HOMME', 'Non', 'Ninaaaa', 'Oui', '90909090C', 'N/A', 'TAOUDÉNIT', 'ARAOUANE', 'dsdd', 'adhesion/1540276602.jpg', NULL, '2023-05-02 21:43:07', '2023-05-02 21:43:07'),
(541, 'kone', 'oumar', NULL, 'Non', 'Oui', 'Oui', '+22376236675', 'salut', 'BAMAKO', 'BAMAKO', 'sport', 'adhesion/58780858.jpg', NULL, '2023-05-03 10:54:27', '2023-05-03 10:54:27'),
(542, 'Aboukris', 'Aboukris', 'HOMME', 'Non', '1181818181', 'Oui', '70909099', 'N/A', 'TOMBOUCTOU', 'GOUNDAM', 'Mali', 'adhesion/1355522092.jpg', NULL, '2023-05-03 14:45:12', '2023-05-03 14:45:12'),
(544, 'Magassa', 'Komakan', NULL, 'CNJ_Mali', 'Oui', 'Oui', '70906080', '70906080', 'BAMAKO', 'BAMAKO', 'Yirimadjo', 'adhesion/1961635194.jpg', NULL, '2023-05-03 21:14:40', '2023-05-03 21:14:40'),
(546, 'TRAORE', 'Dramane', 'HOMME', 'Non', 'Non', 'Oui', '66248219', 'N/A', 'BAMAKO', 'BAMAKO', 'kalaban coura', 'adhesion/1613209506.jpg', NULL, '2023-05-05 13:30:56', '2023-05-05 13:30:56'),
(548, 'Sanou', 'Luther', 'HOMME', 'URD', 'Non', 'Non', '76645268', '76645268', 'SIKASSO', 'SIKASSO', 'Yorosso', 'adhesion/2034713158.jpg', NULL, '2023-05-05 20:45:40', '2023-05-05 20:45:40'),
(549, 'Coulibaly', 'Brehima', 'HOMME', 'RPM', 'Non', 'Non', '79790974', '69391800', 'SIKASSO', 'SIKASSO', 'yorosso', 'adhesion/1234691101.jpg', NULL, '2023-05-05 20:48:00', '2023-05-05 20:48:00'),
(551, 'sidi', 'Abdoulaye', 'HOMME', 'association', 'Non', 'Non', '74731082', 'Abdoulaye55@dickogmail.com', 'BAMAKO', 'BAMAKO', 'kalaban Koura ACI', 'adhesion/1518090985.jpg', NULL, '2023-05-06 21:55:47', '2023-05-06 21:55:47'),
(552, 'Dembele', 'Amidou', 'HOMME', 'RPM', 'Non', 'Non', '70091008', '63166318', 'SÉGOU', 'SEGOU', 'Touna', 'adhesion/2069062699.jpg', NULL, '2023-05-07 10:09:44', '2023-05-07 10:09:44'),
(553, 'Diarra', 'Alou', 'HOMME', 'RPM', 'Non', 'Non', '76166161', '69694718', 'SÉGOU', 'SEGOU', 'Bla', 'adhesion/1256588318.jpg', NULL, '2023-05-07 10:25:25', '2023-05-07 10:25:25'),
(554, 'Salia', 'Coulibaly', 'HOMME', 'RPM', 'Non', 'Non', '76668159', '66016420', 'SÉGOU', 'SEGOU', 'BLA', 'adhesion/467435272.jpg', NULL, '2023-05-07 10:32:38', '2023-05-07 10:32:38'),
(555, 'Konaté', 'Bakary', 'HOMME', 'RPM', 'Non', 'Non', '82376176', '61180169', 'SÉGOU', 'SEGOU', 'Bla', 'adhesion/383973345.jpg', NULL, '2023-05-07 10:39:25', '2023-05-07 10:39:25'),
(556, 'Sogoba', 'Bourama', 'HOMME', 'RPM', 'Non', 'Non', '78467308', '67380098', 'SÉGOU', 'SEGOU', 'Bla', 'adhesion/323512625.jpg', NULL, '2023-05-07 10:43:20', '2023-05-07 10:43:20'),
(557, 'diarra', 'yaya', 'HOMME', 'rpm', 'Non', 'Non', '77721212', '62150000', 'SÉGOU', 'SEGOU', 'Bla', 'adhesion/1083854529.jpg', NULL, '2023-05-07 14:57:16', '2023-05-07 14:57:16'),
(558, 'sissoko', 'Amina', 'FEMME', 'RPM', 'Non', 'Non', '76449618', '76449618', 'BAMAKO', 'BAMAKO', 'Kalabankoro sud Est', 'adhesion/2048826245.jpg', NULL, '2023-05-08 07:59:34', '2023-05-08 07:59:34'),
(559, 'Sidibé', 'Fatoumata', 'FEMME', 'RPM', 'Non', 'Non', '76121288', '76121288', 'BAMAKO', 'BAMAKO', 'Kalabankoro kouloubleni', 'adhesion/1535156014.jpg', NULL, '2023-05-08 08:07:21', '2023-05-08 08:07:21'),
(560, 'Diarra Kanté', 'Madji', 'FEMME', 'Non', 'non', 'Non', '76824545', 'N/A', 'BAMAKO', 'BAMAKO', 'Centre commercial', 'adhesion/1417143559.jpg', NULL, '2023-05-10 09:16:10', '2023-05-10 09:16:10'),
(561, 'Gariko', 'Oumou', 'FEMME', 'Non', 'non', 'Non', '76296037', 'non', 'BAMAKO', 'BAMAKO', 'sogoniko', 'adhesion/507814635.jpg', NULL, '2023-05-11 08:10:45', '2023-05-11 08:10:45'),
(562, 'Konaré', 'mountaga', 'HOMME', 'Non', 'non', 'Non', '73 88 69 28', 'mouckonare@gmail.com', 'BAMAKO', 'BAMAKO', 'magnambougou', 'adhesion/1770052157.jpg', NULL, '2023-05-11 08:13:24', '2023-05-11 08:13:24'),
(563, 'Dembele', 'Baba', 'HOMME', 'Non', 'Non', 'Non', '83330080', 'N/A', 'SÉGOU', 'SEGOU', 'Markala kirango Diakakin', 'adhesion/2064376242.jpg', NULL, '2023-05-11 09:09:28', '2023-05-11 09:09:28'),
(564, 'KONE', 'Saouti', 'HOMME', 'Non', 'oui', 'Oui', '73453136', 'N/A', 'SÉGOU', 'SEGOU', 'MARKALA KIRANGO', 'adhesion/1685860804.jpg', NULL, '2023-05-11 09:13:41', '2023-05-11 09:13:41'),
(565, 'Dembele', 'Mariame', 'FEMME', 'regroupement des femmes de yorosso', 'non', 'Non', '91236011', '91236011', 'SÉGOU', 'SEGOU', 'Yorosso', 'adhesion/1295704309.jpg', NULL, '2023-05-11 09:23:53', '2023-05-11 09:23:53'),
(566, 'Coulibaly', 'Sanaba', 'FEMME', 'Regroupement des femmes de yorosso', 'non', 'Non', '91422290', '91422290', 'SÉGOU', 'SEGOU', 'yorosso', 'adhesion/1757677646.jpg', NULL, '2023-05-11 09:26:33', '2023-05-11 09:26:33'),
(567, 'Goita', 'Germaine', 'FEMME', 'regroupement des femmes de yorosso', 'non', 'Non', '76328404', '76328404', 'SÉGOU', 'SEGOU', 'yorosso kafona', 'adhesion/1684643488.jpg', NULL, '2023-05-11 09:31:39', '2023-05-11 09:31:39'),
(568, 'Dembele', 'Dounanba', 'FEMME', 'Non', 'non', 'Non', '94681864', '94681864', 'KOUTIALA', 'YOROSSO', 'yorosso kafona', 'adhesion/55425105.jpg', NULL, '2023-05-11 09:38:57', '2023-05-11 09:38:57'),
(569, 'Mounkoro', 'Fanta', 'FEMME', 'regroupement des femmes de yorosso', 'Non', 'Non', '92240096', '92240096', 'KOUTIALA', 'YOROSSO', 'Yorosso', 'adhesion/1194966866.jpg', NULL, '2023-05-11 09:42:10', '2023-05-11 09:42:10'),
(570, 'Makounou', 'Djenebou', 'FEMME', 'Non', 'Non', 'Non', '61465124', '61465225', 'KOUTIALA', 'YOROSSO', 'yorosso', 'adhesion/118315727.jpg', NULL, '2023-05-11 10:27:21', '2023-05-11 10:27:21'),
(571, 'Nana', 'Coulibaly', 'FEMME', 'oui', 'oui', 'Non', '73360432', 'N/A', 'SÉGOU', 'SEGOU', 'Markala kirango', 'adhesion/1081204276.jpg', NULL, '2023-05-11 13:14:45', '2023-05-11 13:14:45'),
(572, 'TANGARA', 'AMIDOU', 'HOMME', 'URD / UM-RDA', 'oui', 'Non', '78585954', 'non', 'SAN', 'BLA', 'BINGUENA', 'adhesion/1292867426.jpg', NULL, '2023-05-11 15:38:43', '2023-05-11 15:38:43'),
(573, 'DRABO', 'ADAMA', 'HOMME', 'Non', 'OUI', 'Non', '72728457', 'Non', 'SÉGOU', 'SEGOU', 'Markala', 'adhesion/793118970.jpg', NULL, '2023-05-11 15:45:26', '2023-05-11 15:45:26'),
(574, 'Coulibaly', 'Fatoumata', 'FEMME', 'Non', '27004117001079', 'Non', '79752127', 'N/A', 'SÉGOU', 'SEGOU', 'Markala', 'adhesion/1312433574.jpg', NULL, '2023-05-11 18:50:41', '2023-05-11 18:50:41'),
(575, 'Keïta', 'Demba koly', 'HOMME', 'Non', 'Non', 'Non', '91870293', 'N/A', 'SÉGOU', 'SEGOU', 'Markala', 'adhesion/1223061491.jpg', NULL, '2023-05-11 20:36:28', '2023-05-11 20:36:28'),
(576, 'FOFANA', 'BOURAMA', 'HOMME', 'RPM', 'oui', 'Non', '78465053', 'non', 'SAN', 'BLA', 'Benguenin n\'gonina', 'adhesion/804222681.jpg', NULL, '2023-05-12 11:59:43', '2023-05-12 11:59:43'),
(578, 'GOITA', 'FATOUMATA', 'FEMME', 'Non', 'Oui', 'Non', '62111814', 'Non', 'KOUTIALA', 'YOROSSO', 'Yorosso kofana', 'adhesion/287832783.jpg', NULL, '2023-05-12 12:44:44', '2023-05-12 12:44:44');
INSERT INTO `adhesions` (`id`, `nom`, `prenom`, `sexe`, `inOrganisation`, `nina`, `carteElec`, `numero`, `email`, `region`, `cercleComune`, `adresse`, `photo`, `idEnq`, `created_at`, `updated_at`) VALUES
(579, 'SANGARE', 'GNAGARI', 'FEMME', 'Non', 'Oui', 'Non', '69533961', 'Non', 'KOUTIALA', 'YOROSSO', 'yorosso', 'adhesion/2115990437.jpg', NULL, '2023-05-12 12:51:50', '2023-05-12 12:51:50'),
(580, 'GOITA', 'HAWA', 'FEMME', 'Adema', 'Oui', 'Non', '71458191', 'Non', 'KOUTIALA', 'YOROSSO', 'KOKONO', 'adhesion/109892183.jpg', NULL, '2023-05-12 12:54:01', '2023-05-12 12:54:01'),
(582, 'GOITA', 'MARIE', 'FEMME', 'Non', 'Oui', 'Non', '83803308', 'Non', 'KOUTIALA', 'YOROSSO', 'Yorosso kofona', 'adhesion/1958728960.jpg', NULL, '2023-05-12 13:03:19', '2023-05-12 13:03:19'),
(583, 'BAMBA', 'Saran', 'FEMME', 'Association des handicapés de yorosso', 'Oui', 'Non', '0022379447537', 'non', 'KOUTIALA', 'YOROSSO', 'worosso', 'adhesion/1716327179.jpg', NULL, '2023-05-12 14:46:46', '2023-05-12 14:46:46'),
(584, 'Dakouo', 'Dabou', 'FEMME', 'regroupement des femmes de yorosso', 'non', 'Non', '75003539', '75003539', 'KOUTIALA', 'YOROSSO', 'yorosso', 'adhesion/841974345.jpg', NULL, '2023-05-14 14:37:40', '2023-05-14 14:37:40'),
(585, 'Goita', 'Aboubacar Sidiki', 'HOMME', 'RPM', 'non', 'Non', '64915384', '64915384', 'KOUTIALA', 'YOROSSO', 'yorosso', 'adhesion/1602170890.jpg', NULL, '2023-05-14 14:42:32', '2023-05-14 14:42:32'),
(586, 'Sanou', 'Daouda', 'HOMME', 'Non', 'non', 'Non', '79194366', '79194366', 'KOUTIALA', 'YOROSSO', 'yorosso', 'adhesion/512176835.jpg', NULL, '2023-05-14 14:45:17', '2023-05-14 14:45:17'),
(587, 'Koné', 'Lamine', 'HOMME', 'Non', 'non', 'Non', '93724699', '93724699', 'KOUTIALA', 'YOROSSO', 'yorosso', 'adhesion/1586563361.jpg', NULL, '2023-05-14 14:48:10', '2023-05-14 14:48:10'),
(588, 'Koné', 'Mamadou', 'HOMME', 'Non', 'non', 'Non', '74226779', '74226779', 'KOUTIALA', 'YOROSSO', 'N\'gorosso', 'adhesion/587706133.jpg', NULL, '2023-05-14 14:51:39', '2023-05-14 14:51:39'),
(589, 'Bouare', 'Korotimi', 'FEMME', 'Regroupement des femmes de yorosso', 'non', 'Non', '66584842', '66584842', 'KOUTIALA', 'YOROSSO', 'Yorosso', 'adhesion/1086501879.jpg', NULL, '2023-05-14 14:54:33', '2023-05-14 14:54:33'),
(590, 'Dao', 'Sali', 'FEMME', 'Regroupement des femmes de yorosso', 'non', 'Non', '77080475', '77080475', 'KOUTIALA', 'YOROSSO', 'Minaba', 'adhesion/837939665.jpg', NULL, '2023-05-14 14:58:41', '2023-05-14 14:58:41'),
(591, 'Traoré', 'Fatoumata Paye', 'FEMME', 'Regroupement des femmes de yorosso', 'Non', 'Non', '78514874', '78514974', 'KOUTIALA', 'YOROSSO', 'Yorosso', 'adhesion/1576995560.jpg', NULL, '2023-05-14 15:01:54', '2023-05-14 15:01:54'),
(592, 'Haidara', 'Kadidiatou', 'FEMME', 'Non', 'Non', 'Non', '73185713', '73184713', 'KOUTIALA', 'YOROSSO', 'Yorosso', 'adhesion/1097702832.jpg', NULL, '2023-05-14 15:09:12', '2023-05-14 15:09:12'),
(593, 'Sawale', 'Fatoumata', 'FEMME', 'Non', 'Non', 'Non', '77722870', '77722870', 'KOUTIALA', 'YOROSSO', 'Yorosso', 'adhesion/258552673.jpg', NULL, '2023-05-14 15:15:52', '2023-05-14 15:15:52'),
(594, 'Traoré', 'Ibrahim', 'HOMME', 'Non', 'Non', 'Non', '92743325', '92743325', 'KOUTIALA', 'YOROSSO', 'Yorosso', 'adhesion/862603906.jpg', NULL, '2023-05-14 15:18:52', '2023-05-14 15:18:52'),
(595, 'Sissoko', 'Aminata', 'FEMME', 'Regroupement des femmes de yorosso', 'non', 'Non', '67158712', '67158712', 'KOUTIALA', 'YOROSSO', 'Yorosso', 'adhesion/1868692371.jpg', NULL, '2023-05-14 15:21:21', '2023-05-14 15:21:21'),
(596, 'Coulibaly', 'Aboubacar Sidiky', 'HOMME', 'Non', 'Non', 'Non', '79096462', 'aboubacarsidiki951@gmail.com', 'SÉGOU', 'SEGOU', 'Markala kirango', 'adhesion/275856855.jpg', NULL, '2023-05-14 18:55:30', '2023-05-14 18:55:30'),
(597, 'KONATÉ', 'HAROUNA', 'HOMME', 'Non', 'Oui', 'Non', '65841329', 'Non', 'SAN', 'BLA', 'Dangoumana', 'adhesion/1405839541.jpg', NULL, '2023-05-15 09:47:46', '2023-05-15 09:47:46'),
(598, 'GOÏTA', 'MINATA', 'FEMME', 'Non', 'Oui', 'Non', '61254434', 'Non', 'KOUTIALA', 'YOROSSO', 'Yorosso', 'adhesion/575576721.jpg', NULL, '2023-05-15 09:50:08', '2023-05-15 09:50:08'),
(599, 'N\'DAOU', 'KADIA', 'FEMME', 'Association \"SIGUI TE MOGO SON\"', 'Oui', 'Non', '79132199', 'Non', 'KOUTIALA', 'YOROSSO', 'Yorosso', 'adhesion/952046745.jpg', NULL, '2023-05-15 09:53:29', '2023-05-15 09:53:29'),
(600, 'COULIBALY', 'SOUMAÏLA', 'HOMME', 'UDD', 'Oui', 'Non', '82602255', 'Non', 'SAN', 'BLA', 'Dankoumana', 'adhesion/141886407.jpg', NULL, '2023-05-15 09:56:31', '2023-05-15 09:56:31'),
(601, 'fodé', 'Camara', 'HOMME', 'Non', '18209101006220', 'Non', '66725705', 'ninaservices@yahoo.com', 'BAMAKO', 'BAMAKO', '300 logements', 'adhesion/385425959.jpg', NULL, '2023-05-16 09:23:35', '2023-05-16 09:23:35'),
(602, 'Dao', 'Drissa', 'HOMME', 'Non', '1900905008208F', 'Non', '79305780', 'daodrissa63@gmail.com', 'BAMAKO', 'BAMAKO', 'sabalibougou', 'adhesion/503646821.jpg', NULL, '2023-05-16 10:46:58', '2023-05-16 10:46:58'),
(603, 'bama issa', 'tangara', 'HOMME', 'Non', '19504317001026A', 'Non', '66 32 53 83', 'tangarabama509@gmail.com', 'BAMAKO', 'BAMAKO', 'garantikibougou', 'adhesion/541368324.jpg', NULL, '2023-05-16 11:00:06', '2023-05-16 11:00:06'),
(604, 'DIARRA', 'Diakalia', NULL, 'Non', 'Oui', 'Oui', '76035313', 'diarradiakalia@yahoo.fr', 'SIKASSO', 'SIKASSO', 'Bamako,  Sabalibougou rue 468, porte non codifiée', 'adhesion/1764483155.jpg', NULL, '2023-05-17 11:11:29', '2023-05-17 11:11:29'),
(605, 'MAIGA', 'Ali', 'HOMME', 'Non', 'non', 'Non', '79758584', 'N/A', 'SÉGOU', 'SEGOU', 'MARKALA', 'adhesion/799381368.jpg', NULL, '2023-05-19 06:35:42', '2023-05-19 06:35:42'),
(606, 'TRAORE', 'Fatoumata', 'FEMME', 'Non', 'oui', 'Non', '78248871', 'N/A', 'SÉGOU', 'SEGOU', 'Point A', 'adhesion/1430248737.jpg', NULL, '2023-05-19 06:38:31', '2023-05-19 06:38:31'),
(607, 'SAMAKE', 'Alimatou', 'FEMME', 'Non', 'oui', 'Non', '66644366', 'N/A', 'SÉGOU', 'SEGOU', 'MARKALA', 'adhesion/976187901.jpg', NULL, '2023-05-19 06:40:54', '2023-05-19 06:40:54'),
(608, 'DEMBELE', 'Fatoumata', 'FEMME', 'Non', 'oui', 'Non', '922009054', 'N/A', 'SÉGOU', 'SEGOU', 'MARKALA', 'adhesion/1566302674.jpg', NULL, '2023-05-19 06:43:43', '2023-05-19 06:43:43'),
(609, 'DIARRA', 'Astan', 'HOMME', 'Non', 'Non', 'Non', '72493843', 'N/A', 'SÉGOU', 'SEGOU', 'Markala', 'adhesion/1377075016.jpg', NULL, '2023-05-19 06:47:15', '2023-05-19 06:47:15'),
(610, 'SEREME', 'Sanata', 'FEMME', 'Non', 'oui', 'Non', '68487574', 'N/A', 'SÉGOU', 'SEGOU', 'Service', 'adhesion/729316036.jpg', NULL, '2023-05-19 06:49:23', '2023-05-19 06:49:23'),
(611, 'COUMARE', 'Aichata', 'FEMME', 'Association des femmes de MARKALA', 'oui', 'Non', '79113117', 'N/A', 'SÉGOU', 'SEGOU', 'SERVICE', 'adhesion/1959533849.jpg', NULL, '2023-05-19 06:52:33', '2023-05-19 06:52:33'),
(612, 'DIARRA', 'Aichata', 'FEMME', 'Non', 'oui', 'Non', '77442722', 'N/A', 'SÉGOU', 'SEGOU', 'SERVICE', 'adhesion/649341956.jpg', NULL, '2023-05-19 06:54:55', '2023-05-19 06:54:55'),
(613, 'GOÏTA', 'Sita', 'FEMME', 'Non', 'Non', 'Non', '76881744', 'N/A', 'SÉGOU', 'SEGOU', 'Kofona', 'adhesion/717055760.jpg', NULL, '2023-05-19 06:58:29', '2023-05-19 06:58:29'),
(614, 'Maïga', 'Ousmane dit cissé', NULL, 'politique', 'Oui', 'Oui', '78462990', 'om163504@gmail.com', 'SÉGOU', 'SEGOU', 'oui', 'adhesion/2132086336.jpg', NULL, '2023-05-19 07:32:28', '2023-05-19 07:32:28'),
(615, 'SANOU', 'ESTHER', 'FEMME', 'Non', 'Non', 'Non', '65933614', 'NON', 'KOUTIALA', 'YOROSSO', 'Yorosso', 'adhesion/1200220567.jpg', NULL, '2023-05-19 08:52:44', '2023-05-19 08:52:44'),
(616, 'TANGARA', 'DRISSA', 'HOMME', 'Oui', 'Oui', 'Non', '78410653', 'Non', 'SAN', 'BLA', 'Dakoumana', 'adhesion/621515931.jpg', NULL, '2023-05-19 08:58:01', '2023-05-19 08:58:01'),
(617, 'Goïta', 'Mariam', 'FEMME', 'Oui', 'Non', 'Non', '76784694', 'Non', 'KOUTIALA', 'YOROSSO', 'yorosso', 'adhesion/78321619.jpg', NULL, '2023-05-19 09:01:39', '2023-05-19 09:01:39'),
(618, 'sy', 'mahamane ousmane', 'HOMME', 'Non', '164DZ905001001K', 'Non', '76493864', 'symahamane02@gmail.com', 'BAMAKO', 'BAMAKO', 'sema missabougou', 'adhesion/1923344582.jpg', NULL, '2023-05-22 13:39:54', '2023-05-22 13:39:54'),
(619, 'Cissoko', 'Abdoulaye', 'HOMME', 'Association', 'Non', 'Non', '76072127', '76072127', 'BAMAKO', 'BAMAKO', 'Djicoroni Para', 'adhesion/1452694451.jpg', NULL, '2023-05-23 14:11:05', '2023-05-23 14:11:05'),
(620, 'Macalou', 'Assan', 'FEMME', 'Associatif', 'Non', 'Non', '63997571', '63997571', 'BAMAKO', 'BAMAKO', 'Kalabanbougou', 'adhesion/1972799018.jpg', NULL, '2023-05-23 14:15:10', '2023-05-23 14:15:10'),
(621, 'Dembele', 'Yacouba', 'HOMME', 'Association', 'Non', 'Non', '77243499', '77243499', 'BAMAKO', 'BAMAKO', 'Lafiabougou', 'adhesion/766529394.jpg', NULL, '2023-05-23 14:18:32', '2023-05-23 14:18:32'),
(622, 'Doumbia', 'Youssouf', 'HOMME', 'Association', 'Non', 'Non', '76100083', '76100083', 'BAMAKO', 'BAMAKO', 'Djicoroni Para', 'adhesion/1382180884.jpg', NULL, '2023-05-23 14:20:31', '2023-05-23 14:20:31'),
(623, 'Camara', 'Maimouna', 'FEMME', 'Association', 'Non', 'Non', '76329431', '76329431', 'BAMAKO', 'BAMAKO', 'Sebenicoro', 'adhesion/1813399020.jpg', NULL, '2023-05-23 14:22:47', '2023-05-23 14:22:47'),
(624, 'Toulema', 'Fatoumata', 'FEMME', 'Association', 'Non', 'Oui', '96 53 29 55', '96 53 29 55', 'BAMAKO', 'BAMAKO', 'Sebenicoro', 'adhesion/1359213516.jpg', NULL, '2023-05-24 09:18:29', '2023-05-24 09:18:29'),
(625, 'Sanogo', 'Adama', 'HOMME', 'Association', 'Non', 'Non', '75458230', '75458230', 'BAMAKO', 'BAMAKO', 'djicoroni-para', 'adhesion/192455914.jpg', NULL, '2023-05-24 10:14:23', '2023-05-24 10:14:23'),
(626, 'AMEKOU', 'Kodjo Elom', 'HOMME', 'Non', 'Non', 'Oui', '0022391740610', 'amekouelom@gmail.com', 'SÉGOU', 'SEGOU', 'normal', 'adhesion/82022820.jpg', NULL, '2023-05-24 20:51:14', '2023-05-24 20:51:14'),
(627, 'Gueye', 'Abdoulaye', 'HOMME', 'Non', 'Non', 'Non', '91542348', 'N/A', 'SÉGOU', 'SEGOU', 'MARKALA', 'adhesion/2133747531.jpg', NULL, '2023-05-26 12:11:27', '2023-05-26 12:11:27'),
(628, 'GOÏTA', 'Sita', 'FEMME', 'Non', 'Non', 'Non', '76881745', 'N/A', 'KOUTIALA', 'YOROSSO', 'kofona', 'adhesion/1902497631.jpg', NULL, '2023-05-26 12:13:24', '2023-05-26 12:13:24'),
(629, 'Dao', 'Mah', 'FEMME', 'Non', 'Non', 'Non', '93629468', 'N/A', 'KOUTIALA', 'YOROSSO', 'kofona', 'adhesion/1855261242.jpg', NULL, '2023-05-26 12:14:42', '2023-05-26 12:14:42'),
(630, 'zerbo', 'Maman', 'FEMME', 'Non', 'Non', 'Non', '91398943', 'N/A', 'SÉGOU', 'SEGOU', 'service', 'adhesion/1741618101.jpg', NULL, '2023-05-26 12:21:04', '2023-05-26 12:21:04'),
(631, 'Diarra', 'Djelika', 'FEMME', 'Non', 'Non', 'Non', '93340507', 'N/A', 'SÉGOU', 'SEGOU', 'service', 'adhesion/1378254067.jpg', NULL, '2023-05-26 12:23:27', '2023-05-26 12:23:27'),
(633, 'Sissoko', 'Mamadou Tidiane', 'HOMME', 'mouvement Mamadou Diarra IGOR', 'non', 'Non', '66267833', '76267833', 'BAMAKO', 'BAMAKO', 'Bagadadji rue 515 porte 43', 'adhesion/1432297230.jpg', NULL, '2023-05-27 14:43:22', '2023-05-27 14:43:22'),
(634, 'Tangara', 'korotimi', 'FEMME', 'Non', 'Non', 'Non', '74264219', '74264219', 'SÉGOU', 'SEGOU', 'Markala', 'adhesion/309637528.jpg', NULL, '2023-05-28 17:14:34', '2023-05-28 17:14:34'),
(635, 'Goita', 'Alima', 'FEMME', 'Non', 'non', 'Non', '67250243', '67250243', 'KOUTIALA', 'YOROSSO', 'Fofona', 'adhesion/116509171.jpg', NULL, '2023-05-28 17:19:28', '2023-05-28 17:19:28'),
(636, 'Coulibaly', 'Kiatou', 'FEMME', 'Non', 'non', 'Non', '92009154', '92009151', 'SÉGOU', 'SEGOU', 'Markala', 'adhesion/667934369.jpg', NULL, '2023-05-28 17:22:29', '2023-05-28 17:22:29'),
(637, 'Traoré', 'Anata', 'FEMME', 'Non', 'non', 'Non', '74044199', '74044199', 'SÉGOU', 'SEGOU', 'Markala', 'adhesion/1723621276.jpg', NULL, '2023-05-28 17:24:57', '2023-05-28 17:24:57'),
(638, 'Diarra', 'Assetou', 'FEMME', 'Non', 'Non', 'Non', '75575349', '75575349', 'SÉGOU', 'SEGOU', 'Markala service kin', 'adhesion/598709395.jpg', NULL, '2023-05-28 17:27:18', '2023-05-28 17:27:18'),
(639, 'Tienta', 'safiatou', 'FEMME', 'Non', 'non', 'Non', '65597348', '65597348', 'SÉGOU', 'SEGOU', 'Markala service kin', 'adhesion/672685775.jpg', NULL, '2023-05-28 17:29:43', '2023-05-28 17:29:43'),
(640, 'Diallo', 'Hawa', 'FEMME', 'Non', 'non', 'Non', '82756540', '82756540', 'SÉGOU', 'SEGOU', 'Markala service kin', 'adhesion/503599564.jpg', NULL, '2023-05-28 17:32:09', '2023-05-28 17:32:09'),
(641, 'Dao', 'Abi', 'FEMME', 'Non', 'non', 'Non', '70143473', '70143473', 'KOUTIALA', 'YOROSSO', 'yorosso', 'adhesion/1870838261.jpg', NULL, '2023-05-28 17:34:32', '2023-05-28 17:34:32'),
(642, 'Makounou', 'Rebeka', 'FEMME', 'Non', 'Non', 'Non', '67566806', '67566806', 'KOUTIALA', 'YOROSSO', 'Yorosso', 'adhesion/602047755.jpg', NULL, '2023-05-28 17:36:54', '2023-05-28 17:36:54'),
(643, 'Coulibaly', 'Assanatou', 'FEMME', 'Non', 'Non', 'Non', '96330276', '96330276', 'KOUTIALA', 'YOROSSO', 'Fonfona', 'adhesion/366608861.jpg', NULL, '2023-05-28 17:39:11', '2023-05-28 17:39:11'),
(644, 'Goita', 'Massaran', 'FEMME', 'Non', 'non', 'Non', '74645606', '74645606', 'KOUTIALA', 'YOROSSO', 'Fonfona', 'adhesion/1135654286.jpg', NULL, '2023-05-28 17:43:52', '2023-05-28 17:43:52'),
(645, 'Sangaré', 'Dado', 'FEMME', 'Non', 'non', 'Non', '70125564', '70125564', 'KOUTIALA', 'YOROSSO', 'kouloukan', 'adhesion/20756593.jpg', NULL, '2023-05-28 17:46:09', '2023-05-28 17:46:09'),
(646, 'Dabo', 'Djougou', 'FEMME', 'Non', 'non', 'Non', '92674377', '92674377', 'SÉGOU', 'SEGOU', 'Markala service kin', 'adhesion/767564866.jpg', NULL, '2023-05-28 17:49:52', '2023-05-28 17:49:52'),
(647, 'Esaï', 'Diarra', 'HOMME', 'Réseau des Jeunes Chercheurs pour l’Education et la Protection des Enfants au Mali RJCEPEM', '19709104002992E', 'Non', '77946298', 'diarraesai@gmail.com', 'BAMAKO', 'BAMAKO', 'Sébénikoro', 'adhesion/1612875823.jpg', NULL, '2023-05-30 09:41:26', '2023-05-30 09:41:26'),
(648, 'Adizatou', 'Diallo', 'FEMME', 'Non', 'non', 'Non', '72418204', 'Adizatoudiallo@72gmail.com', 'BAMAKO', 'BAMAKO', 'Kalaban coura', 'adhesion/1962050328.jpg', NULL, '2023-06-03 14:08:26', '2023-06-03 14:08:26'),
(649, 'Keita', 'Mohamed', 'HOMME', 'Association des leaders du Mali', 'non', 'Non', '78418517', 'keitamoh18@gmail.com', 'BAMAKO', 'BAMAKO', 'Sebenicoro', 'adhesion/1057918189.jpg', NULL, '2023-06-08 14:04:34', '2023-06-08 14:04:34'),
(650, 'Toulema', 'Bouya Albachir', 'HOMME', 'association  suguda', '19oo6101999034x', 'Oui', '79 21 34 54', '79 21 34 54', 'BAMAKO', 'BAMAKO', 'Sebenicoro', 'adhesion/967037756.jpg', NULL, '2023-06-08 15:21:42', '2023-06-08 15:21:42'),
(651, 'KONATÉ', 'MARIAM', 'FEMME', 'Ben kadi yorosso', 'Oui', 'Non', '89424730', 'Non', 'KOUTIALA', 'YOROSSO', 'yorosso kafona', 'adhesion/503244995.jpg', NULL, '2023-06-09 09:00:22', '2023-06-09 09:00:22'),
(652, 'Camara', 'Fodé', 'HOMME', 'oui', 'oui', 'Non', '76 49 28 67', 'cfode2007@yahoo.fr', 'BAMAKO', 'BAMAKO', 'faladiè Socoro rue 295 . porte 368', 'adhesion/1251104763.jpg', NULL, '2023-06-14 15:43:09', '2023-06-14 15:43:09'),
(653, 'Diarra', 'Kassim', 'HOMME', 'Non', 'non', 'Non', '63300502', '63300502', 'BAMAKO', 'BAMAKO', 'faladie sema', 'adhesion/1685087325.jpg', NULL, '2023-06-14 15:47:18', '2023-06-14 15:47:18'),
(654, 'Sissoko', 'Bakary', 'HOMME', 'Non', 'non', 'Non', '63395754', '63395754', 'BAMAKO', 'BAMAKO', 'Faladie sema', 'adhesion/154419166.jpg', NULL, '2023-06-14 15:51:25', '2023-06-14 15:51:25'),
(655, 'koita', 'Bintou', 'FEMME', 'Non', 'non', 'Non', '69694057', '69694057', 'BAMAKO', 'BAMAKO', 'Banankabougou', 'adhesion/370598304.jpg', NULL, '2023-06-14 15:54:29', '2023-06-14 15:54:29'),
(656, 'Sidibé', 'Allassane', 'HOMME', 'Non', 'non', 'Non', '70177646', '70177646', 'BAMAKO', 'BAMAKO', 'Faladie', 'adhesion/980221351.jpg', NULL, '2023-06-14 16:48:18', '2023-06-14 16:48:18'),
(657, 'Konaté', 'Seydou', 'HOMME', 'Non', 'non', 'Non', '66918252', '66918252', 'BAMAKO', 'BAMAKO', 'Banankabougou', 'adhesion/686474571.jpg', NULL, '2023-06-14 16:53:02', '2023-06-14 16:53:02'),
(658, 'Sangaré', 'Sambry', 'HOMME', 'Non', 'non', 'Non', '78790114', '78790114', 'BAMAKO', 'BAMAKO', 'Sokorodji', 'adhesion/681046913.jpg', NULL, '2023-06-14 16:57:36', '2023-06-14 16:57:36'),
(659, 'Barry', 'Abdrahamane', 'HOMME', 'Non', 'non', 'Non', '66823567', '66723567', 'BAMAKO', 'BAMAKO', 'yirimadjo', 'adhesion/783042014.jpg', NULL, '2023-06-14 17:03:03', '2023-06-14 17:03:03'),
(660, 'Maiga', 'Aminata', 'FEMME', 'Non', 'non', 'Non', '67121221', '67121221', 'BAMAKO', 'BAMAKO', 'Sogoniko', 'adhesion/1303729671.jpg', NULL, '2023-06-14 17:13:01', '2023-06-14 17:13:01'),
(661, 'Dabo', 'Souleymane', 'HOMME', 'Non', 'non', 'Non', '76634942', '76634942', 'BAMAKO', 'BAMAKO', 'Banankabougou', 'adhesion/1514396693.jpg', NULL, '2023-06-14 17:26:42', '2023-06-14 17:26:42'),
(662, 'Camara', 'Rose', 'FEMME', 'Non', 'non', 'Non', '76037656', '76037656', 'BAMAKO', 'BAMAKO', '1008 Logement', 'adhesion/2043614203.jpg', NULL, '2023-06-14 17:51:01', '2023-06-14 17:51:01'),
(663, 'Touré', 'Boubacar Zakaria', 'HOMME', 'Non', 'non', 'Non', '74504442', '74504442', 'BAMAKO', 'BAMAKO', 'Magnanbougou', 'adhesion/1059272766.jpg', NULL, '2023-06-14 19:36:22', '2023-06-14 19:36:22'),
(664, 'TRAORE', 'FATOUMATA', 'FEMME', 'Non', '28503201999046B', 'Oui', '78862200', 'matraka2010@yahoo.fr', 'BAMAKO', 'BAMAKO', 'faladie socoro', 'adhesion/234743279.jpg', NULL, '2023-06-15 10:33:27', '2023-06-15 10:33:27'),
(665, 'Camara', 'Fodé', 'HOMME', 'oui', 'oui', 'Non', '76492867', 'cfode2007@yahoo. fr', 'BAMAKO', 'BAMAKO', 'commune 6 du District de Bamako. Faladiè socoro rue 295 porte 368', 'adhesion/845473486.jpg', NULL, '2023-06-15 12:31:08', '2023-06-15 12:31:08'),
(666, 'Maiga', 'Mahamadou Soumaguel', 'HOMME', 'Non', 'non', 'Non', '74744587', '74744587', 'BAMAKO', 'BAMAKO', 'Sirakoro', 'adhesion/2132169253.jpg', NULL, '2023-06-15 13:03:30', '2023-06-15 13:03:30'),
(667, 'Djire', 'Ousmane', 'HOMME', 'Non', 'non', 'Non', '76526411', '76526411', 'BAMAKO', 'BAMAKO', 'sogoniko', 'adhesion/891000182.jpg', NULL, '2023-06-16 11:29:21', '2023-06-16 11:29:21'),
(668, 'KABA', 'Abdourahamane', 'HOMME', 'URD', 'Oui', 'Non', '66626431', 'Non', 'BAMAKO', 'BAMAKO', 'Dravéla', 'adhesion/311746020.jpg', NULL, '2023-06-19 14:06:10', '2023-06-19 14:06:10'),
(669, 'DIARRA', 'Demba', 'HOMME', 'SYMOUMA', 'Oui', 'Non', '77615707', 'Non', 'BAMAKO', 'BAMAKO', 'Samè-kôkô', 'adhesion/1968081032.jpg', NULL, '2023-06-20 11:14:24', '2023-06-20 11:14:24'),
(670, 'COULIBALY', 'SALIF', 'HOMME', 'CNID', 'Oui', 'Non', '77634404', 'Non', 'BAMAKO', 'BAMAKO', 'N\'tomikorobougou', 'adhesion/215524356.jpg', NULL, '2023-06-20 13:01:03', '2023-06-20 13:01:03'),
(671, 'DEMBELE', 'Koura', 'FEMME', 'Non', 'Oui', 'Non', '79492212', 'Non', 'BAMAKO', 'BAMAKO', 'Bamako Koura', 'adhesion/763850720.jpg', NULL, '2023-06-20 13:06:12', '2023-06-20 13:06:12'),
(672, 'DIARRA', 'Ousmane', 'HOMME', 'AJDP-PG', 'Oui', 'Non', '79035058', 'Non', 'KOULIKORO', 'KATI', 'Point G', 'adhesion/1870773989.jpg', NULL, '2023-06-20 13:09:04', '2023-06-20 13:09:04'),
(673, 'DIARRA', 'Gnan Marie Thérèse', 'FEMME', 'Ben kadi Segoubougouni', 'Oui', 'Non', '76293500', 'Non', 'BAMAKO', 'BAMAKO', 'Koulouba Segoubougouni', 'adhesion/479529513.jpg', NULL, '2023-06-20 13:12:38', '2023-06-20 13:12:38'),
(674, 'DIALLO', 'Kadiatou', 'FEMME', 'ISC MALI', 'Oui', 'Non', '68242444', 'Non', 'BAMAKO', 'BAMAKO', 'Bamako Coura', 'adhesion/1099719092.jpg', NULL, '2023-06-20 13:16:23', '2023-06-20 13:16:23'),
(675, 'Diallo', 'Madina', 'FEMME', 'fare', '1444466743367', 'Oui', '002250747262061', 'madinadiallo05@yahoo.fr', 'Côte d\'Ivoire', 'Côte d\'Ivoire', 'Treichville av 26 rue 44', 'adhesion/2081925993.jpg', NULL, '2023-06-21 19:45:04', '2023-06-21 19:45:04'),
(676, 'CAMARA', 'Mamadou S', 'HOMME', 'CNID, RPDM', 'Oui', 'Non', '79377677', 'Non', 'BAMAKO', 'BAMAKO', 'Koulouba', 'adhesion/303704901.jpg', NULL, '2023-06-22 12:45:21', '2023-06-22 12:45:21'),
(677, 'DIALLO', 'Sadio', 'HOMME', 'Oui', 'Oui', 'Non', '78930444', 'Non', 'BAMAKO', 'BAMAKO', 'Dravela Bolibana', 'adhesion/1404972589.jpg', NULL, '2023-06-22 12:47:40', '2023-06-22 12:47:40'),
(678, 'KINDO', 'Adama', 'HOMME', 'ADP MALIBA', 'Oui', 'Non', '77787822', 'Non', 'BAMAKO', 'BAMAKO', 'Badialan 2', 'adhesion/1779649259.jpg', NULL, '2023-06-22 12:50:13', '2023-06-22 12:50:13'),
(679, 'Moussa', 'DIARRA dit Bafing', 'HOMME', 'Non', 'Non', 'Non', '76761813', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/1075950815.jpg', NULL, '2023-06-22 19:12:50', '2023-06-22 19:12:50'),
(680, 'FANE', 'Abdramane', 'HOMME', 'Non', 'Non', 'Non', '66712198', 'N/A', 'BAMAKO', 'BAMAKO', 'Djelibougou', 'adhesion/264080687.jpg', NULL, '2023-06-22 19:16:19', '2023-06-22 19:16:19'),
(681, 'DOGORE', 'Kadidiatou', 'HOMME', 'Non', 'Non', 'Non', '63192989', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/1879374366.jpg', NULL, '2023-06-22 19:30:22', '2023-06-22 19:30:22'),
(682, 'SIGUE', 'Korotoumou', 'HOMME', 'Non', 'Non', 'Non', '76300540', 'N/A', 'BAMAKO', 'BAMAKO', 'Djanguinbg', 'adhesion/641730660.jpg', NULL, '2023-06-22 19:32:17', '2023-06-22 19:32:17'),
(683, 'DOUMBIA', 'Aliou', 'HOMME', 'Non', 'Non', 'Non', '66995460', 'N/A', 'BAMAKO', 'BAMAKO', 'Fadjiguila', 'adhesion/1158898474.jpg', NULL, '2023-06-22 19:34:52', '2023-06-22 19:34:52'),
(684, 'CAMARA', 'Souleymane', 'HOMME', 'Non', 'Non', 'Non', '94503620', 'N/A', 'BAMAKO', 'BAMAKO', 'SIKORO', 'adhesion/2061839228.jpg', NULL, '2023-06-22 19:37:22', '2023-06-22 19:37:22'),
(685, 'KONATE', 'Dramane', 'HOMME', 'Non', 'Non', 'Non', '66755116', 'N/A', 'BAMAKO', 'BAMAKO', 'BOULKASSOBOUGOU', 'adhesion/370656781.jpg', NULL, '2023-06-22 19:38:44', '2023-06-22 19:38:44'),
(686, 'Diarra', 'Youssi', 'HOMME', 'Non', 'Non', 'Non', '70782006', 'youssidiarranke@gmail.com', 'TOMBOUCTOU', 'NIAFUNKE', 'Djoulabougou', 'adhesion/1421186278.jpg', NULL, '2023-06-22 19:39:02', '2023-06-22 19:39:02'),
(687, 'DIABY', 'Abdoul Kadri', 'HOMME', 'Non', 'Non', 'Non', '75736248', 'N/A', 'BAMAKO', 'BAMAKO', 'BOULK KOULOUBLENI', 'adhesion/1783927477.jpg', NULL, '2023-06-22 19:40:41', '2023-06-22 19:40:41'),
(688, 'OUATTARA', 'Abou', 'HOMME', 'Non', 'Non', 'Non', '79477598', 'N/A', 'BAMAKO', 'BAMAKO', 'Boulkassobougou', 'adhesion/1313709096.jpg', NULL, '2023-06-22 19:43:03', '2023-06-22 19:43:03'),
(689, 'SOUMOUNOU', 'Boubacar', 'HOMME', 'Non', 'Non', 'Non', '79569824', 'N/A', 'BAMAKO', 'BAMAKO', 'DOUMANZANA', 'adhesion/635673401.jpg', NULL, '2023-06-22 19:46:14', '2023-06-22 19:46:14'),
(690, 'DIARRA', 'Sanata', 'FEMME', 'Non', 'Non', 'Non', '79195455', 'N/A', 'BAMAKO', 'BAMAKO', 'Djelibougou', 'adhesion/1528271621.jpg', NULL, '2023-06-22 19:50:03', '2023-06-22 19:50:03'),
(691, 'TRAORE', 'Assai Baba', 'HOMME', 'Non', 'Non', 'Non', '76821211', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/1642693914.jpg', NULL, '2023-06-22 19:52:08', '2023-06-22 19:52:08'),
(692, 'TRAORE', 'MOHAMED TC', 'HOMME', 'Non', 'Non', 'Non', '79235303', 'N/A', 'BAMAKO', 'BAMAKO', 'Boulkassobougou', 'adhesion/622339221.jpg', NULL, '2023-06-22 19:54:24', '2023-06-22 19:54:24'),
(693, 'TRAORE', 'AWA', 'FEMME', 'Non', 'Non', 'Non', '75989180', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/509723986.jpg', NULL, '2023-06-22 19:56:23', '2023-06-22 19:56:23'),
(694, 'FANE', 'LALA', 'FEMME', 'Non', 'Non', 'Non', '53270340', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/1440019627.jpg', NULL, '2023-06-22 19:57:59', '2023-06-22 19:57:59'),
(695, 'SARRE', 'Sory', 'HOMME', 'Non', 'Non', 'Non', '66764708', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/1030288328.jpg', NULL, '2023-06-22 20:00:21', '2023-06-22 20:00:21'),
(696, 'POUDIOUGOU', 'Abdoulaye', 'HOMME', 'Non', 'Non', 'Non', '62314879', 'N/A', 'BAMAKO', 'BAMAKO', 'Sikoro', 'adhesion/1136594411.jpg', NULL, '2023-06-22 20:02:19', '2023-06-22 20:02:19'),
(697, 'COULIBALY', 'Tidiane', 'HOMME', 'Non', 'Non', 'Non', '76111136', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/628886363.jpg', NULL, '2023-06-22 20:03:45', '2023-06-22 20:03:45'),
(698, 'DIALLO', 'Moriba', 'HOMME', 'Non', 'Non', 'Non', '77791846', 'N/A', 'BAMAKO', 'BAMAKO', 'Sikoro', 'adhesion/819373598.jpg', NULL, '2023-06-22 20:05:14', '2023-06-22 20:05:14'),
(699, 'FOMBA', 'Sekouba', 'HOMME', 'Non', 'Non', 'Non', '82100203', 'N/A', 'BAMAKO', 'BAMAKO', 'Boulkassobougou', 'adhesion/247077377.jpg', NULL, '2023-06-22 20:08:22', '2023-06-22 20:08:22'),
(700, 'TRAORE', 'Korotoumou', 'FEMME', 'Non', 'Non', 'Non', '93251968', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/999965512.jpg', NULL, '2023-06-22 20:09:45', '2023-06-22 20:09:45'),
(701, 'Coulibaly', 'Souleymane', 'HOMME', 'Non', 'Non', 'Non', '76463522', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/1932869432.jpg', NULL, '2023-06-22 20:10:57', '2023-06-22 20:10:57'),
(702, 'diaby', 'madou b', 'HOMME', 'Non', 'Non', 'Non', '76059589', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/1221645913.jpg', NULL, '2023-06-27 11:17:59', '2023-06-27 11:17:59'),
(703, 'DEMBELE', 'Abdoulaye', 'HOMME', 'Non', 'Non', 'Non', '76416355', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/1059991576.jpg', NULL, '2023-07-06 20:01:30', '2023-07-06 20:01:30'),
(704, 'Kone', 'Zoumana', 'HOMME', 'Non', 'Non', 'Non', '69241991', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/1498803012.jpg', NULL, '2023-07-06 20:04:00', '2023-07-06 20:04:00'),
(705, 'KANOUTE', 'Lassana', 'HOMME', 'Non', 'Non', 'Non', 'sans numéro', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/26242638.jpg', NULL, '2023-07-06 20:05:34', '2023-07-06 20:05:34'),
(706, 'Djiguiba', 'Oumar', 'HOMME', 'Non', 'Non', 'Non', '66739121', 'N/A', 'BAMAKO', 'BAMAKO', 'Korofina', 'adhesion/1947984146.jpg', NULL, '2023-07-06 20:07:41', '2023-07-06 20:07:41'),
(707, 'Camara', 'Sory', 'HOMME', 'Non', 'Non', 'Non', '74031547', 'N/A', 'BAMAKO', 'BAMAKO', 'Korofina', 'adhesion/143464062.jpg', NULL, '2023-07-06 20:24:56', '2023-07-06 20:24:56'),
(708, 'TRAORE', 'Adama', 'HOMME', 'Non', 'Non', 'Non', '78706614', 'N/A', 'BAMAKO', 'BAMAKO', 'Korofina sud', 'adhesion/856118048.jpg', NULL, '2023-07-06 20:33:51', '2023-07-06 20:33:51'),
(709, 'Sissoko', 'Charil', 'HOMME', 'Non', 'Non', 'Non', 'sans contact', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/350267012.jpg', NULL, '2023-07-06 20:36:02', '2023-07-06 20:36:02'),
(710, 'Kone', 'Daouda', 'HOMME', 'Non', 'Non', 'Non', '76160022', 'N/A', 'BAMAKO', 'BAMAKO', 'Flabougou', 'adhesion/481322061.jpg', NULL, '2023-07-06 20:39:19', '2023-07-06 20:39:19'),
(711, 'PEROU', 'Awa', 'FEMME', 'Non', 'Non', 'Non', '62247433', 'N/A', 'BAMAKO', 'BAMAKO', 'korofina', 'adhesion/2044098544.jpg', NULL, '2023-07-06 20:42:05', '2023-07-06 20:42:05'),
(712, 'DEMBELE', 'Alima', 'FEMME', 'Non', 'Non', 'Non', '76772159', 'N/A', 'BAMAKO', 'BAMAKO', 'Sikoro', 'adhesion/1259693195.jpg', NULL, '2023-07-06 20:45:08', '2023-07-06 20:45:08'),
(713, 'Sogoba', 'Soumaila', 'HOMME', 'Non', 'Non', 'Non', '66360870', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/1200645614.jpg', NULL, '2023-07-06 20:47:22', '2023-07-06 20:47:22'),
(714, 'DIALLO', 'Sega', 'HOMME', 'Non', 'Non', 'Non', '77340237', 'N/A', 'BAMAKO', 'BAMAKO', 'Sikoro', 'adhesion/1698398272.jpg', NULL, '2023-07-06 20:49:11', '2023-07-06 20:49:11'),
(715, 'Tounkara', 'Adama', 'HOMME', 'Non', 'Non', 'Non', '76810182', 'N/A', 'BAMAKO', 'BAMAKO', 'SIKORO', 'adhesion/1212631597.jpg', NULL, '2023-07-06 20:53:57', '2023-07-06 20:53:57'),
(716, 'DIARRA', 'Aissata', 'HOMME', 'Non', 'Non', 'Non', '70923163', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/753650132.jpg', NULL, '2023-07-07 05:31:39', '2023-07-07 05:31:39'),
(717, 'Bouare', 'Mady', 'HOMME', 'Non', 'Non', 'Non', '64177295', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/1982989333.jpg', NULL, '2023-07-07 05:33:29', '2023-07-07 05:33:29'),
(718, 'Dansoko', 'Salif', 'HOMME', 'Non', 'Non', 'Non', '90363713', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/519242624.jpg', NULL, '2023-07-07 05:34:49', '2023-07-07 05:34:49'),
(719, 'Diarra', 'Houry K', 'HOMME', 'Non', 'Non', 'Non', '75900809', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/2141388726.jpg', NULL, '2023-07-07 05:36:05', '2023-07-07 05:36:05'),
(720, 'Dogore', 'Awa', 'FEMME', 'Non', 'Non', 'Non', '60838642', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/540002241.jpg', NULL, '2023-07-07 05:46:31', '2023-07-07 05:46:31'),
(721, 'NIARE', 'Sekou', 'HOMME', 'Non', 'Non', 'Non', '62347288', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/796457555.jpg', NULL, '2023-07-07 05:50:12', '2023-07-07 05:50:12'),
(722, 'DEMBELE', 'Moussa', 'HOMME', 'Non', 'Non', 'Non', '70467297', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/2093550310.jpg', NULL, '2023-07-07 05:52:53', '2023-07-07 05:52:53'),
(723, 'DEMBELE', 'Mamadou', 'HOMME', 'Non', 'Non', 'Non', '73473368', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/1115002878.jpg', NULL, '2023-07-07 05:54:08', '2023-07-07 05:54:08'),
(724, 'DIARRA', 'Balla', 'HOMME', 'Non', 'Non', 'Non', '89339850', 'N/A', 'BAMAKO', 'BAMAKO', 'Sikoro', 'adhesion/1626291318.jpg', NULL, '2023-07-07 05:55:19', '2023-07-07 05:55:19'),
(725, 'KONARE', 'Sona', 'HOMME', 'Non', 'Non', 'Non', '62153437', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanazana', 'adhesion/2125327390.jpg', NULL, '2023-07-07 05:56:37', '2023-07-07 05:56:37'),
(726, 'PENGOUROUBA', 'Seydou', 'HOMME', 'Non', 'Non', 'Non', '99411715', 'N/A', 'BAMAKO', 'BAMAKO', 'Sikoro', 'adhesion/679989820.jpg', NULL, '2023-07-07 05:58:04', '2023-07-07 05:58:04'),
(727, 'DIALLO', 'Sidy', 'HOMME', 'Non', 'Non', 'Non', '76327511', 'N/A', 'BAMAKO', 'BAMAKO', 'BOULKASSOBOUGOU', 'adhesion/543021712.jpg', NULL, '2023-07-07 05:59:20', '2023-07-07 05:59:20'),
(728, 'KONATE', 'Adama D', 'HOMME', 'Non', 'Non', 'Non', '76452151', 'N/A', 'BAMAKO', 'BAMAKO', 'non identifiée', 'adhesion/486346588.jpg', NULL, '2023-07-07 06:01:24', '2023-07-07 06:01:24'),
(729, 'TOGOLA', 'Bassirou Ben', 'HOMME', 'Non', 'Non', 'Non', '76636203', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanazana', 'adhesion/1752045135.jpg', NULL, '2023-07-07 06:02:58', '2023-07-07 06:02:58'),
(730, 'KANOUTE', 'Foussenyni', 'HOMME', 'Non', 'Non', 'Non', 'Bafing', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/2119314453.jpg', NULL, '2023-07-07 06:04:11', '2023-07-07 06:04:11'),
(731, 'DIALLO', 'Drissa', 'HOMME', 'Non', 'Non', 'Non', '94164934', 'N/A', 'BAMAKO', 'BAMAKO', 'Sikoro', 'adhesion/750891577.jpg', NULL, '2023-07-07 06:05:48', '2023-07-07 06:05:48'),
(732, 'SAM', 'Malle', 'HOMME', 'Non', 'Non', 'Non', '93696595', 'N/A', 'BAMAKO', 'BAMAKO', 'Razel', 'adhesion/1540270298.jpg', NULL, '2023-07-07 06:07:05', '2023-07-07 06:07:05'),
(733, 'SOGOBA', 'Siaka', 'HOMME', 'Non', 'Non', 'Non', 'NAH', 'N/A', 'BAMAKO', 'BAMAKO', 'Razel', 'adhesion/728509855.jpg', NULL, '2023-07-07 06:08:32', '2023-07-07 06:08:32'),
(734, 'COULIBALY', 'ADAMA', 'HOMME', 'Non', 'Non', 'Non', '97040091', 'N/A', 'BAMAKO', 'BAMAKO', 'Plateau', 'adhesion/1742546321.jpg', NULL, '2023-07-07 06:10:33', '2023-07-07 06:10:33'),
(735, 'SOGOBA', 'GUEDIOUMA', 'HOMME', 'Non', 'Non', 'Non', '67108499', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/1973364323.jpg', NULL, '2023-07-07 06:13:06', '2023-07-07 06:13:06'),
(736, 'SOGOBA', 'BAKARY', 'HOMME', 'Non', 'Non', 'Non', '67349720', 'N/A', 'BAMAKO', 'BAMAKO', 'doumanzana', 'adhesion/72906134.jpg', NULL, '2023-07-07 11:58:21', '2023-07-07 11:58:21'),
(737, 'CISSE', 'ADEYE DITE ANNA', 'FEMME', 'Non', 'Non', 'Non', '76662203', 'N/A', 'BAMAKO', 'BAMAKO', 'doumanzana', 'adhesion/758644407.jpg', NULL, '2023-07-07 12:00:25', '2023-07-07 12:00:25'),
(738, 'DIALLO', 'DAOUDA', 'HOMME', 'Non', 'Non', 'Non', '76655900', 'N/A', 'BAMAKO', 'BAMAKO', 'BACONI', 'adhesion/69542233.jpg', NULL, '2023-07-07 12:01:23', '2023-07-07 12:01:23'),
(739, 'TRAORÉ', 'KOYAN', 'HOMME', 'Non', 'Non', 'Non', '82383854', 'N/A', 'BAMAKO', 'BAMAKO', 'doumanzana', 'adhesion/1525910868.jpg', NULL, '2023-07-07 12:02:29', '2023-07-07 12:02:29'),
(740, 'DIARRA', 'SOUMAILA', 'HOMME', 'Non', 'Non', 'Non', '82542480', 'N/A', 'BAMAKO', 'BAMAKO', 'doumanzana', 'adhesion/726518337.jpg', NULL, '2023-07-07 12:03:32', '2023-07-07 12:03:32'),
(741, 'TRAORE', 'ADAMA', 'HOMME', 'Non', 'Non', 'Non', '71091627', 'N/A', 'BAMAKO', 'BAMAKO', 'SIKORO', 'adhesion/615721591.jpg', NULL, '2023-07-07 12:04:38', '2023-07-07 12:04:38'),
(742, 'MOUNKORO', 'MASSA', 'HOMME', 'Non', 'Non', 'Non', '65213516', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/967096700.jpg', NULL, '2023-07-07 12:05:53', '2023-07-07 12:05:53'),
(743, 'DIARRA', 'N\'DJI', 'HOMME', 'Non', 'Non', 'Non', '77126469', 'N/A', 'BAMAKO', 'BAMAKO', 'FADJIGUILA', 'adhesion/504925599.jpg', NULL, '2023-07-07 12:07:17', '2023-07-07 12:07:17'),
(744, 'SOGOBA', 'DRAMANE', 'HOMME', 'Non', 'Non', 'Non', '68880965', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/1682989183.jpg', NULL, '2023-07-07 12:08:17', '2023-07-07 12:08:17'),
(745, 'KASSONGUE', 'MOUSSA', 'HOMME', 'Non', 'Non', 'Non', '75250457', 'N/A', 'BAMAKO', 'BAMAKO', 'FADJIGUILA', 'adhesion/1986828456.jpg', NULL, '2023-07-07 12:10:11', '2023-07-07 12:10:11'),
(746, 'KONE', 'SALAMA', 'FEMME', 'Non', 'Non', 'Non', '79133157', 'N/A', 'BAMAKO', 'BAMAKO', 'FLABOUGOU', 'adhesion/356369807.jpg', NULL, '2023-07-07 12:11:39', '2023-07-07 12:11:39'),
(747, 'KONARE', 'FLOKO', 'HOMME', 'Non', 'Non', 'Non', '76196400', 'N/A', 'BAMAKO', 'BAMAKO', 'FLABOUGOU', 'adhesion/1669654550.jpg', NULL, '2023-07-07 12:13:04', '2023-07-07 12:13:04'),
(748, 'DJIGUIBA', 'FAMA', 'HOMME', 'Non', 'Non', 'Non', '73393260', 'N/A', 'BAMAKO', 'BAMAKO', 'Doumanzana', 'adhesion/983079442.jpg', NULL, '2023-07-07 12:14:15', '2023-07-07 12:14:15'),
(749, 'DIARRA', 'IDRISSA', 'HOMME', 'Non', 'Non', 'Non', '66554990', 'N/A', 'BAMAKO', 'BAMAKO', 'DOUMANZANA', 'adhesion/800104110.jpg', NULL, '2023-07-07 12:15:48', '2023-07-07 12:15:48'),
(750, 'TOUNKARA', 'CHEICK', 'HOMME', 'Non', 'Non', 'Non', '62266868', 'N/A', 'BAMAKO', 'BAMAKO', 'Banconi', 'adhesion/416890089.jpg', NULL, '2023-07-07 12:17:04', '2023-07-07 12:17:04'),
(751, 'DIARRA', 'BOURAMA', 'HOMME', 'URD', 'Non', 'Non', '77653941', 'N/A', 'KAYES', 'YELIMANE', 'HOMME', 'adhesion/979757797.jpg', NULL, '2023-07-12 14:25:58', '2023-07-12 14:25:58'),
(752, 'MAGADJI', 'AÏCHE', 'FEMME', 'Non', '28901701003010z', 'Non', '75855554', 'N/A', 'KAYES', 'YELIMANE', 'yelimane VILLE', 'adhesion/286966363.jpg', NULL, '2023-07-12 16:19:09', '2023-07-12 16:19:09'),
(753, 'TRAORÉ', 'AMINATA', 'FEMME', 'ADEMA', '289017001077x', 'Non', '73551291', 'N/A', 'KAYES', 'YELIMANE', 'yelimane VILLE', 'adhesion/1342388770.jpg', NULL, '2023-07-12 16:24:43', '2023-07-12 16:24:43'),
(754, 'Dembele', 'Oumar', 'HOMME', 'Non', 'Non', 'Non', '76049558', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/1352028703.jpg', NULL, '2023-07-13 21:26:12', '2023-07-13 21:26:12'),
(755, 'TRAORE', 'AMADOU', 'HOMME', 'Non', 'Non', 'Non', '76295944', 'N/A', 'SIKASSO', 'SIKASSO', 'SIKASSO', 'adhesion/1660209920.jpg', NULL, '2023-07-13 21:27:38', '2023-07-13 21:27:38'),
(756, 'LINGANY', 'ISMAILA', 'HOMME', 'Non', 'Non', 'Non', '79368696', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/1371936361.jpg', NULL, '2023-07-13 21:29:09', '2023-07-13 21:29:09'),
(757, 'DIAKITE', 'SOULEY', 'HOMME', 'Non', 'Non', 'Non', '73733070', 'N/A', 'SIKASSO', 'SIKASSO', 'SIKASSO', 'adhesion/1850241875.jpg', NULL, '2023-07-13 21:31:17', '2023-07-13 21:31:17'),
(758, 'KONE', 'HAMIDOU', 'HOMME', 'Non', 'Non', 'Non', '68593379', 'N/A', 'SIKASSO', 'SIKASSO', 'SIKASSO', 'adhesion/1611389937.jpg', NULL, '2023-07-13 21:33:01', '2023-07-13 21:33:01'),
(759, 'BENGALY', 'SEYDOU', 'HOMME', 'Non', 'Non', 'Non', '75399195', 'N/A', 'SIKASSO', 'SIKASSO', 'SIKASSO', 'adhesion/2104836781.jpg', NULL, '2023-07-13 21:34:46', '2023-07-13 21:34:46'),
(760, 'KONATE', 'DAOUDA', 'HOMME', 'Non', 'Non', 'Non', '66659376', 'N/A', 'SIKASSO', 'SIKASSO', 'SIKASSO', 'adhesion/1024427738.jpg', NULL, '2023-07-13 21:36:25', '2023-07-13 21:36:25'),
(761, 'CISSE', 'Cheick Oumar', 'HOMME', 'Non', 'Non', 'Non', '99447975', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/140868171.jpg', NULL, '2023-07-14 12:03:57', '2023-07-14 12:03:57'),
(762, 'SYLLA', 'KAFOUGOUNA A', 'HOMME', 'Non', 'Non', 'Non', '70246356', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/699751139.jpg', NULL, '2023-07-14 12:06:44', '2023-07-14 12:06:44'),
(763, 'SIDIBE', 'LASSINE', 'HOMME', 'Non', 'Non', 'Non', '74743810', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/958073985.jpg', NULL, '2023-07-14 12:08:08', '2023-07-14 12:08:08'),
(764, 'COULIBALY', 'KOLLE L', 'HOMME', 'Non', 'Non', 'Non', '92054620', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/1987550171.jpg', NULL, '2023-07-14 12:09:42', '2023-07-14 12:09:42'),
(765, 'NANGO', 'LAMINE', 'HOMME', 'Non', 'Non', 'Non', '78760029', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/405720564.jpg', NULL, '2023-07-14 12:12:09', '2023-07-14 12:12:09'),
(766, 'MAKANGUILE', 'Hamaye', 'HOMME', 'Non', 'Non', 'Non', '93706266', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/1075229242.jpg', NULL, '2023-07-14 12:14:30', '2023-07-14 12:14:30'),
(767, 'BERTHE', 'ISSA', 'HOMME', 'Non', 'Non', 'Non', '76014512', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/1566386634.jpg', NULL, '2023-07-14 12:16:21', '2023-07-14 12:16:21'),
(768, 'TESSOUGUE', 'ADAMA', 'HOMME', 'Non', 'Non', 'Non', '79819128', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/825531093.jpg', NULL, '2023-07-14 12:17:43', '2023-07-14 12:17:43'),
(769, 'SANOGO', 'DRAMANE', 'HOMME', 'Non', 'Non', 'Non', '76906761', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/850299014.jpg', NULL, '2023-07-14 12:19:53', '2023-07-14 12:19:53'),
(770, 'FAROTA', 'Moctar', 'HOMME', 'Non', 'Non', 'Non', '76371633', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/1197859080.jpg', NULL, '2023-07-14 12:21:12', '2023-07-14 12:21:12'),
(771, 'TRAORE', 'DAOUDA', 'HOMME', 'Non', 'Non', 'Non', '82818464', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/666404832.jpg', NULL, '2023-07-14 12:31:11', '2023-07-14 12:31:11'),
(772, 'COULIBALY', 'ISMAILA', 'HOMME', 'Non', 'Non', 'Non', '79439486', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/1593551178.jpg', NULL, '2023-07-14 12:33:35', '2023-07-14 12:33:35'),
(773, 'KEITA', 'Mamadou', 'HOMME', 'Non', '18009102007165W', 'Non', '76789191', 'keita801125@gmail.com', 'SIKASSO', 'SIKASSO', 'sikasso wayerma II', 'adhesion/1062654721.jpg', NULL, '2023-07-15 09:58:32', '2023-07-15 09:58:32'),
(774, 'Dembélé', 'Boubacar', 'HOMME', 'synouma', '17503101047033D', 'Non', '79167459', 'dembeleaboubacar34@yahoo.fr', 'SIKASSO', 'SIKASSO', 'wayerema2', 'adhesion/233946188.jpg', NULL, '2023-07-15 10:07:04', '2023-07-15 10:07:04'),
(775, 'TOURE', 'IBRAHIMA', 'HOMME', 'Non', '18605401999018L', 'Non', '79 13 53 39', 'houber10@gmail.com', 'SIKASSO', 'SIKASSO', 'Sikasso Wayerma 2', 'adhesion/374164930.jpg', NULL, '2023-07-15 10:15:26', '2023-07-15 10:15:26'),
(776, 'Touré', 'Sayon', 'HOMME', 'politique', '18501530001047X', 'Oui', '77073911', 'tsayon595@gmail.com', 'KITA', 'KITA', 'kita saint Félix', 'adhesion/179994171.jpg', NULL, '2023-07-15 11:28:22', '2023-07-15 11:28:22'),
(777, 'Bamba', 'Bakary', 'HOMME', 'Non', '17803101042004H', 'Non', '50795146', 'N/A', 'SIKASSO', 'SIKASSO', 'agent technique', 'adhesion/1578301668.jpg', NULL, '2023-07-15 12:13:46', '2023-07-15 12:13:46'),
(778, 'Keita', 'Fantamady', 'HOMME', 'Non', 'non', 'Non', '73871496', '73871496', 'KITA', 'KITA', 'kita', 'adhesion/969584062.jpg', NULL, '2023-07-17 20:14:52', '2023-07-17 20:14:52'),
(779, 'Dembele', 'Fassirime', 'HOMME', 'Non', 'non', 'Non', '75367619', '75367619', 'KITA', 'KITA', 'kita', 'adhesion/550253876.jpg', NULL, '2023-07-17 20:22:05', '2023-07-17 20:22:05'),
(780, 'Koné', 'Amara', 'HOMME', 'Non', 'non', 'Non', '76322669', '76322669', 'KITA', 'KITA', 'kita', 'adhesion/934942942.jpg', NULL, '2023-07-17 20:26:48', '2023-07-17 20:26:48'),
(781, 'Keita', 'Abdoulaye', 'HOMME', 'CSC', 'non', 'Non', '74600659', '74600659', 'KITA', 'KITA', 'kita', 'adhesion/1165714009.jpg', NULL, '2023-07-17 20:35:31', '2023-07-17 20:35:31'),
(782, 'Sow', 'Nouhoun', 'HOMME', 'Non', 'non', 'Non', '78380526', '78380526', 'KITA', 'KITA', 'kita', 'adhesion/281215934.jpg', NULL, '2023-07-17 20:44:45', '2023-07-17 20:44:45'),
(783, 'Cissé', 'Sabia', 'FEMME', 'Non', 'non', 'Non', '69539066', '69539066', 'KITA', 'KITA', 'kita', 'adhesion/520504405.jpg', NULL, '2023-07-17 20:56:34', '2023-07-17 20:56:34'),
(784, 'Tounkara', 'Mamadou', 'HOMME', 'RPM', 'non', 'Non', '82288014', '82288014', 'KITA', 'KITA', 'kita', 'adhesion/2015208378.jpg', NULL, '2023-07-17 21:05:16', '2023-07-17 21:05:16'),
(785, 'Camara', 'Ibrahim', 'HOMME', 'CNJ', 'non', 'Non', '92101088', '92101088', 'KITA', 'KITA', 'kita', 'adhesion/1376648338.jpg', NULL, '2023-07-17 21:18:54', '2023-07-17 21:18:54'),
(786, 'Keita', 'Bourama', 'HOMME', 'GRKG Kita', 'non', 'Non', '65074669', '65074669', 'KITA', 'KITA', 'Railda Garé', 'adhesion/1933416471.jpg', NULL, '2023-07-17 21:29:01', '2023-07-17 21:29:01'),
(787, 'Tounkara', 'Daby', 'HOMME', 'Non', 'non', 'Non', '96512723', '96512723', 'KITA', 'KITA', 'kita', 'adhesion/1155253797.jpg', NULL, '2023-07-17 21:43:56', '2023-07-17 21:43:56'),
(788, 'Koloma', 'Doucouré', 'HOMME', 'EPK ( Ensemble Pour Kita)', 'non', 'Non', '76945710', '76945710', 'KITA', 'KITA', 'kita', 'adhesion/1911542645.jpg', NULL, '2023-07-18 12:50:07', '2023-07-18 12:50:07'),
(789, 'Kanté', 'Souadou', 'FEMME', 'Non', 'non', 'Non', '90647009', '90647009', 'KITA', 'KITA', 'kita', 'adhesion/1357657229.jpg', NULL, '2023-07-18 12:55:45', '2023-07-18 12:55:45'),
(790, 'Maba', 'Allassane', 'HOMME', 'Non', 'non', 'Non', '62789257', '62789257', 'KITA', 'KITA', 'kita', 'adhesion/1693523083.jpg', NULL, '2023-07-18 13:02:41', '2023-07-18 13:02:41'),
(791, 'Traoré', 'Mohamed', 'HOMME', 'MPR', 'non', 'Non', '75782119', '75782119', 'KITA', 'KITA', 'kita', 'adhesion/963509425.jpg', NULL, '2023-07-18 13:11:27', '2023-07-18 13:11:27'),
(792, 'Keita', 'Madou', 'HOMME', 'Parti MPM', 'non', 'Non', '72629479', '72629479', 'KITA', 'KITA', 'kita', 'adhesion/562005976.jpg', NULL, '2023-07-18 13:23:58', '2023-07-18 13:23:58'),
(793, 'SACKO', 'ABDRAMANE', 'HOMME', 'ADEMA', 'Non', 'Non', '76069241', 'sackoabdramane77@gmail.com', 'KAYES', 'YELIMANE', 'YELIMANE VILLE', 'adhesion/1989596159.jpg', NULL, '2023-07-18 15:19:54', '2023-07-18 15:19:54'),
(794, 'DOUGOUNE', 'ALFOUSSEINI', 'HOMME', 'Non', '19101701005017x', 'Non', '79677085', 'N/A', 'Mali', 'Mali', 'DIONCOULANI', 'adhesion/498602109.jpg', NULL, '2023-07-18 15:37:54', '2023-07-18 15:37:54'),
(795, 'KONATE', 'KALADIO', 'HOMME', 'UM RDA', 'Non', 'Non', '666555520', 'N/A', 'KAYES', 'YELIMANE', 'YELIMANE VILLE', 'adhesion/1351651060.jpg', NULL, '2023-07-18 15:41:43', '2023-07-18 15:41:43'),
(796, 'DEMBELE', 'ABDOULAYE', 'HOMME', 'UM RDA', 'Non', 'Non', '766234526', 'N/A', 'KAYES', 'YELIMANE', 'YELIMANE VILLE', 'adhesion/1983592802.jpg', NULL, '2023-07-18 15:43:34', '2023-07-18 15:43:34'),
(797, 'KOITE', 'SALIF', 'HOMME', 'UM RDA', 'Non', 'Non', '79400839', 'N/A', 'KAYES', 'YELIMANE', 'YELIMANE VILLE', 'adhesion/666244339.jpg', NULL, '2023-07-18 15:45:27', '2023-07-18 15:45:27'),
(798, 'SISSOKO', 'ALASSANE', 'HOMME', 'Non', 'Non', 'Non', '78144002', 'N/A', 'KAYES', 'YELIMANE', 'YELIMANE VILLE', 'adhesion/1848564039.jpg', NULL, '2023-07-18 15:47:03', '2023-07-18 15:47:03'),
(799, 'BALLO', 'KOMIAN', 'HOMME', 'Non', 'Non', 'Non', '676689934', 'N/A', 'KAYES', 'YELIMANE', 'YELIMANE VILLE', 'adhesion/1860849351.jpg', NULL, '2023-07-18 15:49:32', '2023-07-18 15:49:32'),
(800, 'SISSOKO', 'FATOUMATA', 'FEMME', 'Non', 'Non', 'Non', '76788769', 'N/A', 'KAYES', 'YELIMANE', 'YELIMANE VILLE', 'adhesion/236310775.jpg', NULL, '2023-07-18 15:51:12', '2023-07-18 15:51:12'),
(801, 'TRAORÉ', 'DATE', 'FEMME', 'Non', 'Non', 'Non', '92802618', 'N/A', 'KAYES', 'YELIMANE', 'YELIMANE VILLE', 'adhesion/926994219.jpg', NULL, '2023-07-18 15:52:53', '2023-07-18 15:52:53'),
(802, 'SISSOKO', 'MAKAN', 'HOMME', 'Non', 'Non', 'Non', '79401139', 'N/A', 'KAYES', 'YELIMANE', 'YELIMANE VILLE', 'adhesion/1430116048.jpg', NULL, '2023-07-18 15:54:26', '2023-07-18 15:54:26'),
(803, 'NASSARANE', 'OUMAR', 'HOMME', 'Non', 'Non', 'Non', '79451076', 'N/A', 'KAYES', 'YELIMANE', 'YELIMANE VILLE', 'adhesion/532685646.jpg', NULL, '2023-07-18 15:56:01', '2023-07-18 15:56:01'),
(804, 'DIACKO', 'ADAMA', 'HOMME', 'Non', 'Non', 'Non', '73213022', 'N/A', 'KAYES', 'YELIMANE', 'YELIMANE VILLE', 'adhesion/1796362353.jpg', NULL, '2023-07-18 15:58:39', '2023-07-18 15:58:39'),
(805, 'KONARE', 'MORIMOUSSOU', 'FEMME', 'Non', 'Non', 'Non', '76064264', 'N/A', 'KAYES', 'YELIMANE', 'YELIMANE VILLE', 'adhesion/558997037.jpg', NULL, '2023-07-18 16:00:46', '2023-07-18 16:00:46'),
(806, 'DIARRA', 'KADIA', 'FEMME', 'Non', 'Non', 'Non', '76118928', 'N/A', 'KAYES', 'YELIMANE', 'YELIMANE VILLE', 'adhesion/979506033.jpg', NULL, '2023-07-18 16:02:10', '2023-07-18 16:02:10'),
(807, 'SISSOKO', 'DIANGOU', 'FEMME', 'Non', 'Non', 'Non', '77413830', 'N/A', 'KAYES', 'YELIMANE', 'YELIMANE VILLE', 'adhesion/1445271465.jpg', NULL, '2023-07-18 16:03:52', '2023-07-18 16:03:52'),
(808, 'DIARRA', 'AÏCHE', 'FEMME', 'Non', 'Non', 'Non', '98743040', 'N/A', 'KAYES', 'YELIMANE', 'YELIMANE VILLE', 'adhesion/988274086.jpg', NULL, '2023-07-18 16:05:12', '2023-07-18 16:05:12'),
(809, 'COULIBALI', 'AMINATA', 'FEMME', 'Non', 'Non', 'Non', '73679794', 'N/A', 'KAYES', 'YELIMANE', 'YELIMANE VILLE', 'adhesion/1133504498.jpg', NULL, '2023-07-18 16:07:39', '2023-07-18 16:07:39'),
(810, 'BATHILY', 'ISSOUF BABA', 'HOMME', 'Non', 'Non', 'Non', '77464703', 'N/A', 'KAYES', 'YELIMANE', 'YELIMANE VILLE', 'adhesion/1421700327.jpg', NULL, '2023-07-18 16:09:11', '2023-07-18 16:09:11'),
(811, 'Traoré', 'Souleymane Dramane', 'HOMME', 'AIJPD (Association pour l\'insertion des jeunes dans le processus de développement', '18603101016073M', 'Non', '75143545', 'souleymanedra@yahoo.fr', 'BAMAKO', 'BAMAKO', 'Sebenikoro', 'adhesion/988010078.jpg', NULL, '2023-07-20 11:00:48', '2023-07-20 11:00:48'),
(817, 'BATHILY', 'KADIA', 'FEMME', 'Non', '28501701001032w', 'Non', '84964020', 'N/A', 'KAYES', 'YELIMANE', 'YELIMANE VILLE', 'adhesion/1459311086.jpg', NULL, '2023-07-21 15:22:34', '2023-07-21 15:22:34'),
(818, 'DOUMBIA', 'MARIAM', 'FEMME', 'Non', '29409105008640h', 'Non', '74482798', 'N/A', 'KAYES', 'YELIMANE', 'YELIMANE VILLE', 'adhesion/1544430337.jpg', NULL, '2023-07-21 15:27:22', '2023-07-21 15:27:22'),
(819, 'MAKADJI', 'M\'BARKE', 'FEMME', 'Non', '28001701001031A', 'Non', '74367921', 'N/A', 'KAYES', 'YELIMANE', 'YELIMANE VILLE', 'adhesion/247407721.jpg', NULL, '2023-07-21 15:30:43', '2023-07-21 15:30:43'),
(820, 'Coulibaly', 'Binta Fall', 'FEMME', 'Apolitique', 'non', 'Non', '70 04 66 15', 'bintafall5@yahoo.fr', 'BAMAKO', 'BAMAKO', 'Lafiabougou', 'adhesion/1279971256.jpg', NULL, '2023-07-26 11:40:45', '2023-07-26 11:40:45'),
(821, 'DIALLO', 'Moussa', 'HOMME', 'Non', 'Non', 'Non', '61132119', 'N/A', 'SIKASSO', 'SIKASSO', 'SIKASSO', 'adhesion/890181227.jpg', NULL, '2023-07-27 17:29:59', '2023-07-27 17:29:59'),
(822, 'MAIGA', 'Baichira', 'HOMME', 'Non', 'Non', 'Non', '74646306', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/1091289227.jpg', NULL, '2023-07-27 17:31:27', '2023-07-27 17:31:27'),
(823, 'TOGOLA', 'Issa', 'HOMME', 'Non', 'Non', 'Non', '76322268', 'N/A', 'SIKASSO', 'SIKASSO', 'SIKASSO', 'adhesion/337640245.jpg', NULL, '2023-07-27 17:32:53', '2023-07-27 17:32:53'),
(824, 'TRAORE', 'LAKOUMANE', 'HOMME', 'Non', 'Non', 'Non', '92064494', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/976221078.jpg', NULL, '2023-07-27 17:35:51', '2023-07-27 17:35:51'),
(825, 'DIABATE', 'Mahamadou', 'HOMME', 'Non', 'Non', 'Non', '79449409', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/1410105859.jpg', NULL, '2023-07-27 17:37:50', '2023-07-27 17:37:50'),
(826, 'DIARRA', 'Adama', 'HOMME', 'Non', 'Non', 'Non', '69696264', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/1820808182.jpg', NULL, '2023-07-27 17:39:16', '2023-07-27 17:39:16'),
(827, 'TOUNKARA', 'Kalifa', 'HOMME', 'Non', 'Non', 'Non', '70460299', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/1451141142.jpg', NULL, '2023-07-27 17:41:06', '2023-07-27 17:41:06'),
(828, 'DIALLO', 'Abdoul A', 'HOMME', 'Non', 'Non', 'Non', '65694776', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/46753985.jpg', NULL, '2023-07-27 17:42:36', '2023-07-27 17:42:36'),
(829, 'DIALLO', 'Oumou', 'HOMME', 'Non', 'Non', 'Non', '79033183', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/1434251681.jpg', NULL, '2023-07-27 17:43:56', '2023-07-27 17:43:56'),
(830, 'SANOGO', 'Seydou', 'HOMME', 'Non', 'Non', 'Non', '74598301', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/1477441036.jpg', NULL, '2023-07-27 17:45:04', '2023-07-27 17:45:04'),
(831, 'DIAKITE', 'SERIBA', 'HOMME', 'Non', 'Non', 'Non', '93306050', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/1273245639.jpg', NULL, '2023-07-27 17:46:35', '2023-07-27 17:46:35'),
(832, 'kone', 'Fasssery', 'HOMME', 'Non', 'Non', 'Non', '76377058', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/1731118976.jpg', NULL, '2023-07-28 08:06:35', '2023-07-28 08:06:35'),
(833, 'Kone', 'Lamine', 'HOMME', 'Non', 'Non', 'Non', '78789119', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/1186266704.jpg', NULL, '2023-07-28 08:09:22', '2023-07-28 08:09:22'),
(834, 'NIARE', 'Yssouf', 'HOMME', 'Non', 'Non', 'Non', '76475766', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/1183184260.jpg', NULL, '2023-07-28 08:11:02', '2023-07-28 08:11:02'),
(835, 'TRAORE', 'Moustapha', 'HOMME', 'Non', 'Non', 'Non', '79210937', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/1796577704.jpg', NULL, '2023-07-28 08:12:37', '2023-07-28 08:12:37'),
(836, 'TRAORE', 'MOHAMED', 'HOMME', 'Non', 'Non', 'Non', '66688230', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/1029216632.jpg', NULL, '2023-07-28 08:14:47', '2023-07-28 08:14:47'),
(837, 'COULIBALY', 'ADAMA', 'HOMME', 'Non', 'Non', 'Non', '66454826', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/486069198.jpg', NULL, '2023-07-28 08:17:31', '2023-07-28 08:17:31'),
(838, 'COULIBALY', 'ASMAO', 'HOMME', 'Non', 'Non', 'Non', '74257745', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/1771256780.jpg', NULL, '2023-07-28 08:19:47', '2023-07-28 08:19:47'),
(839, 'TOGOLA', 'AFOU', 'HOMME', 'Non', 'Non', 'Non', '75022537', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/1158584637.jpg', NULL, '2023-07-28 08:23:28', '2023-07-28 08:23:28'),
(840, 'DIAMOUTENE', 'ASSITAN', 'HOMME', 'Non', 'Non', 'Non', '66489087', 'N/A', 'SIKASSO', 'SIKASSO', 'SIKASSO', 'adhesion/526335870.jpg', NULL, '2023-07-28 08:24:46', '2023-07-28 08:24:46');
INSERT INTO `adhesions` (`id`, `nom`, `prenom`, `sexe`, `inOrganisation`, `nina`, `carteElec`, `numero`, `email`, `region`, `cercleComune`, `adresse`, `photo`, `idEnq`, `created_at`, `updated_at`) VALUES
(841, 'OUATTARA', 'MAMADOU', 'HOMME', 'Non', 'Non', 'Non', '63904505', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/176922204.jpg', NULL, '2023-07-28 08:26:02', '2023-07-28 08:26:02'),
(842, 'OUATTARA', 'Assetou', 'HOMME', 'Non', 'Non', 'Non', '63585611', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/40434529.jpg', NULL, '2023-07-28 08:28:24', '2023-07-28 08:28:24'),
(843, 'Kouyate', 'Ami', 'HOMME', 'Non', 'Non', 'Non', '79131797', 'N/A', 'SIKASSO', 'SIKASSO', 'Sikasso', 'adhesion/3154833.jpg', NULL, '2023-07-28 08:30:09', '2023-07-28 08:30:09'),
(844, 'fane', 'Souleymane', 'HOMME', 'RPM', 'non', 'Non', '77267178', 'souleymanefanesam@gmail.com', 'NIORO', 'DIEMA', 'kontecounda 2', 'adhesion/1561948062.jpg', NULL, '2023-08-03 17:42:16', '2023-08-03 17:42:16'),
(845, 'Doumbia', 'Tiranké', 'FEMME', 'Mouvement Benkan', '2 92 09 1 05 001 034 R', 'Non', '79981297', 'tirankedoumbia479@gmail.com', 'BAMAKO', 'BAMAKO', 'Tiebani', 'adhesion/983440699.jpg', NULL, '2023-08-04 19:02:52', '2023-08-04 19:02:52'),
(846, 'Diagouraga', 'Tenin', 'FEMME', 'Non', 'oui', 'Non', '98994867', 'Non', 'KAYES', 'KAYES', 'konté kounda II', 'adhesion/458526486.jpg', NULL, '2023-08-10 13:58:50', '2023-08-10 13:58:50'),
(847, 'Niagaté', 'Aissata', 'FEMME', 'Oui', 'Oui', 'Non', '72779628', 'Non', 'KAYES', 'KAYES', 'Sonsankiné', 'adhesion/1227365756.jpg', NULL, '2023-08-10 14:02:48', '2023-08-10 14:02:48'),
(848, 'Sidibé', 'Hawa', 'FEMME', 'Wassa', 'Oui', 'Oui', '79357024', 'Non', 'KAYES', 'KAYES', 'konté kounda II', 'adhesion/236565368.jpg', NULL, '2023-08-10 14:04:45', '2023-08-10 14:04:45'),
(849, 'Tounkara', 'Oumou', 'FEMME', 'Oui', 'Non', 'Non', '90074489', 'Non', 'KAYES', 'KAYES', 'konté kounda II', 'adhesion/1287193361.jpg', NULL, '2023-08-10 14:16:48', '2023-08-10 14:16:48'),
(850, 'Diallo', 'Awa', 'FEMME', 'Non', 'Oui', 'Non', '50380117', 'Non', 'KAYES', 'KAYES', 'Sanoubougou', 'adhesion/2046542224.jpg', NULL, '2023-08-10 14:18:53', '2023-08-10 14:18:53'),
(851, 'Samourou', 'Aissata', 'FEMME', 'Non', 'Oui', 'Non', '74979228', 'Non', 'KAYES', 'KAYES', 'konté kounda II', 'adhesion/1783339706.jpg', NULL, '2023-08-10 14:23:35', '2023-08-10 14:23:35'),
(852, 'KEITA', 'KAFOUNE', 'FEMME', 'Non', 'Non', 'Non', '94933652', 'N/A', 'KAYES', 'KAYES', 'konte kounda II', 'adhesion/516278935.jpg', NULL, '2023-08-15 07:19:11', '2023-08-15 07:19:11'),
(853, 'DOUMBIA', 'AMI', 'FEMME', 'Non', 'Non', 'Non', '76325258', 'N/A', 'KAYES', 'KAYES', 'konte-kounda II', 'adhesion/280404178.jpg', NULL, '2023-08-15 07:21:32', '2023-08-15 07:21:32'),
(854, 'DIARRA', 'MAH', 'FEMME', 'Non', 'Non', 'Non', '76871068', 'N/A', 'KAYES', 'KAYES', 'Sanoubougou', 'adhesion/1493930925.jpg', NULL, '2023-08-15 07:23:03', '2023-08-15 07:23:03'),
(855, 'TOURE', 'SANDY', 'FEMME', 'Non', 'Non', 'Non', '78491595', 'N/A', 'KAYES', 'KAYES', 'konte kounda II', 'adhesion/1905736832.jpg', NULL, '2023-08-15 07:24:33', '2023-08-15 07:24:33'),
(856, 'COULIBALY', 'KONDE', 'FEMME', 'Non', 'Non', 'Non', '94395104', 'N/A', 'KAYES', 'KAYES', 'konte kounda II', 'adhesion/1918921442.jpg', NULL, '2023-08-15 07:26:16', '2023-08-15 07:26:16'),
(857, 'SIDIBÉ', 'AICHATA', 'FEMME', 'Non', 'Non', 'Non', '91015689', 'N/A', 'KAYES', 'KAYES', 'Konte Kounda II', 'adhesion/1232640479.jpg', NULL, '2023-08-15 07:28:34', '2023-08-15 07:28:34'),
(858, 'Daou', 'Madeleine', 'FEMME', 'Non', 'Non', 'Non', '83466038', 'N/A', 'KAYES', 'KAYES', 'Konte-kounda II', 'adhesion/984369247.jpg', NULL, '2023-08-15 07:30:29', '2023-08-15 07:30:29'),
(859, 'KEITA', 'OUMOU', 'FEMME', 'Non', 'Non', 'Non', '73952426', 'N/A', 'KAYES', 'KAYES', 'Sanoubougou', 'adhesion/1962761858.jpg', NULL, '2023-08-15 07:31:49', '2023-08-15 07:31:49'),
(860, 'SISSOKO', 'MINA', 'FEMME', 'Non', 'Non', 'Non', '79487295', 'N/A', 'KAYES', 'KAYES', 'MARAKAKING', 'adhesion/1583071697.jpg', NULL, '2023-08-15 07:35:07', '2023-08-15 07:35:07'),
(861, 'TRAORE', 'FANTA', 'FEMME', 'Non', 'Non', 'Non', '75142391', 'N/A', 'KAYES', 'KAYES', 'Sanoubougou', 'adhesion/872873637.jpg', NULL, '2023-08-15 07:36:20', '2023-08-15 07:36:20'),
(862, 'SOW', 'DÉDÉ', 'FEMME', 'Non', 'Non', 'Non', '79239055', 'N/A', 'KAYES', 'KAYES', 'Konte Kounda II', 'adhesion/1796846625.jpg', NULL, '2023-08-15 07:38:52', '2023-08-15 07:38:52'),
(863, 'COULIBALY', 'FATOUMATA', 'FEMME', 'Non', 'Non', 'Non', '94074460', 'N/A', 'KAYES', 'KAYES', 'konte kounda II', 'adhesion/915839719.jpg', NULL, '2023-08-15 07:40:29', '2023-08-15 07:40:29'),
(864, 'DIARRA', 'HATOUMA', 'FEMME', 'Non', 'Non', 'Non', '91620896', 'N/A', 'KAYES', 'KAYES', 'konte-kounda II', 'adhesion/398833845.jpg', NULL, '2023-08-15 07:42:13', '2023-08-15 07:42:13'),
(865, 'Sow', 'HAWA', 'FEMME', 'Non', 'Non', 'Non', '94425483', 'N/A', 'KAYES', 'Diema', 'konte-kounda II', 'adhesion/338075644.jpg', NULL, '2023-08-15 07:44:29', '2023-08-15 13:47:51'),
(867, 'Magassa', 'Mariam', 'FEMME', 'Tièsiri', 'Oui', 'Non', '74005945', 'Non', 'KAYES', 'KAYES', 'konté kounda II', 'adhesion/939546083.jpg', NULL, '2023-08-15 11:07:32', '2023-08-15 11:07:32'),
(868, 'Samoura', 'Touné', 'FEMME', 'Non', 'Oui', 'Non', '92825404', 'Non', 'KAYES', 'KAYES', 'konté kounda II', 'adhesion/941251772.jpg', NULL, '2023-08-15 11:11:34', '2023-08-15 11:11:34'),
(869, 'Diawara', 'Mamadou', 'HOMME', 'benkadi kayes', 'Oui', 'Non', '79559170', 'Non', 'KAYES', 'KAYES', 'lambidou', 'adhesion/601586580.jpg', NULL, '2023-08-15 11:38:57', '2023-08-15 11:38:57'),
(870, 'Keïta', 'Mariétou', 'FEMME', 'Non', 'Oui', 'Non', '82258450', 'Non', 'KAYES', 'KAYES', 'konté kounda II', 'adhesion/1359290699.jpg', NULL, '2023-08-15 11:40:56', '2023-08-15 11:40:56'),
(871, 'Tambara', 'Garan', 'HOMME', 'Non', 'Oui', 'Non', '90003422', 'Non', 'KAYES', 'KAYES', 'Madiga', 'adhesion/131620039.jpg', NULL, '2023-08-15 11:42:52', '2023-08-15 11:42:52'),
(872, 'Toulema', 'Lalla', 'FEMME', 'association', '91386826', 'Oui', '91386826', 'N/A', 'BAMAKO', 'BAMAKO', 'Sebenicoro', 'adhesion/27633878.jpg', NULL, '2023-08-15 12:17:14', '2023-08-15 12:17:14'),
(873, 'DAO', 'AMIDOU', 'HOMME', 'ARTD', '18003706017008E', 'Non', '60 03 50 10', 'daoml2212@gmail.com', 'SIKASSO', 'SIKASSO', 'Wayerma 2', 'adhesion/749878454.jpg', NULL, '2023-08-16 16:14:34', '2023-08-16 16:14:34'),
(874, 'Tamba', 'konté', 'HOMME', 'yelema', 'Non', 'Non', '70358578', '70358578', 'NIORO', 'DIEMA', 'Diema', 'adhesion/872513144.jpg', NULL, '2023-08-17 09:02:19', '2023-08-17 09:02:19'),
(875, 'Soumare', 'Aida', 'FEMME', 'oui', 'oui', 'Oui', '66719590', '66719990', 'BAMAKO', 'BAMAKO', 'Sebenicoro', 'adhesion/1281548492.jpg', NULL, '2023-08-17 18:58:05', '2023-08-17 18:58:05'),
(876, 'Wague', 'Safiatou', 'FEMME', 'association', 'oui', 'Oui', '66720676', '66020676', 'BAMAKO', 'BAMAKO', 'Hamdallaye', 'adhesion/2006856344.jpg', NULL, '2023-08-17 19:10:39', '2023-08-17 19:10:39'),
(877, 'Soumare', 'Daouda', 'HOMME', 'association', 'oui', 'Oui', '76253448', '76253448', 'BAMAKO', 'BAMAKO', 'Lafiabougou', 'adhesion/1496703503.jpg', NULL, '2023-08-17 19:20:10', '2023-08-17 19:20:10'),
(878, 'Sogore', 'Fomory', 'HOMME', 'association', 'oui', 'Oui', '63 472916', '63472916', 'BAMAKO', 'BAMAKO', 'Sibiribougou', 'adhesion/844777875.jpg', NULL, '2023-08-17 19:24:20', '2023-08-17 19:24:20'),
(879, 'Noumogo', 'Koudedia', 'FEMME', 'association', 'pui', 'Oui', '66552276', '66552276', 'BAMAKO', 'BAMAKO', 'Lafiabougou', 'adhesion/1403656339.jpg', NULL, '2023-08-17 19:29:45', '2023-08-17 19:29:45'),
(880, 'Diabate', 'Nagnouma', 'HOMME', 'association', 'oui', 'Oui', '63083831', '63083331', 'BAMAKO', 'BAMAKO', 'Sibiribougou', 'adhesion/440663563.jpg', NULL, '2023-08-17 19:36:22', '2023-08-17 19:36:22'),
(881, 'Soumane', 'Tenin Fane', 'FEMME', 'association', 'oui', 'Oui', '76633745', '76633744', 'BAMAKO', 'BAMAKO', 'Sebenicoro', 'adhesion/228234711.jpg', NULL, '2023-08-17 19:40:43', '2023-08-17 19:40:43'),
(882, 'Soumbounou', 'Barou', 'HOMME', 'association', 'oui', 'Oui', '66724041', '66633744', 'BAMAKO', 'BAMAKO', 'Hamdallaye', 'adhesion/416071347.jpg', NULL, '2023-08-17 19:45:38', '2023-08-17 19:45:38'),
(883, 'Dembele', 'Koniba', 'FEMME', 'association', 'oui', 'Oui', '62302869', '62302869', 'BAMAKO', 'BAMAKO', 'Lafiabougou', 'adhesion/388167034.jpg', NULL, '2023-08-17 19:49:48', '2023-08-17 19:49:48'),
(884, 'Keita', 'Mah Goundo', 'FEMME', 'association', 'oui', 'Oui', '75 403525', '75403523', 'BAMAKO', 'BAMAKO', 'Hamdallaye', 'adhesion/470185577.jpg', NULL, '2023-08-17 19:53:22', '2023-08-17 19:53:22'),
(885, 'Dioumassi', 'Lassana', 'HOMME', 'association', 'oui', 'Oui', '76426356', '76426355', 'BAMAKO', 'BAMAKO', 'Talko', 'adhesion/457238045.jpg', NULL, '2023-08-17 19:57:49', '2023-08-17 19:57:49'),
(886, 'keita', 'Mohamed', 'HOMME', 'association', 'oui', 'Oui', '63 552235', '63552235', 'BAMAKO', 'BAMAKO', 'Sebenicoro', 'adhesion/1310344665.jpg', NULL, '2023-08-17 20:01:11', '2023-08-17 20:01:11'),
(887, 'Diarra', 'Djelikan', 'HOMME', 'association', 'oui', 'Oui', '76741220', '76741220', 'BAMAKO', 'BAMAKO', 'Djicoroni para', 'adhesion/1455319427.jpg', NULL, '2023-08-17 20:04:48', '2023-08-17 20:04:48'),
(888, 'Camara', 'Ibrahima', 'HOMME', 'association', 'oui', 'Oui', '62229070', '62229070', 'BAMAKO', 'BAMAKO', 'Lassa', 'adhesion/1163211484.jpg', NULL, '2023-08-17 20:12:35', '2023-08-17 20:12:35'),
(889, 'Cisse', 'Nana', 'FEMME', 'association', 'oui', 'Oui', '74433435', '74333435', 'BAMAKO', 'BAMAKO', 'Djicoroni para', 'adhesion/1797073321.jpg', NULL, '2023-08-17 20:15:11', '2023-08-17 20:15:11'),
(890, 'N\'Diaye', 'Oumou', 'FEMME', 'association', 'oui', 'Oui', '75129821', '75139821', 'BAMAKO', 'BAMAKO', 'Djicoroni para', 'adhesion/1406337287.jpg', NULL, '2023-08-17 20:17:42', '2023-08-17 20:17:42'),
(891, 'Doumbia', 'Aboubacar Sidiki', 'HOMME', 'association', 'oui', 'Oui', '78216624', '78216624', 'BAMAKO', 'BAMAKO', 'Sebenicoro', 'adhesion/443557896.jpg', NULL, '2023-08-18 08:43:25', '2023-08-18 08:43:25'),
(892, 'Camara', 'Assetou  Dembele', 'FEMME', 'association', 'oui', 'Oui', '76054153', '76054153', 'BAMAKO', 'BAMAKO', 'kalabanbougou', 'adhesion/945495450.jpg', NULL, '2023-08-18 08:46:39', '2023-08-18 08:46:39'),
(893, 'Doumbia', 'Aboubacar Sidiki', 'HOMME', 'association', 'oui', 'Oui', 'Doumbia', 'Aboubacar Sidiki', 'BAMAKO', 'BAMAKO', 'Sebenicoro', 'adhesion/1514123219.jpg', NULL, '2023-08-18 08:52:14', '2023-08-18 08:52:14'),
(894, 'Sacko', 'Kissiman', 'HOMME', 'association', 'oui', 'Oui', '77724979', '77724979', 'BAMAKO', 'BAMAKO', 'Sebenicoro', 'adhesion/1361394301.jpg', NULL, '2023-08-18 08:56:05', '2023-08-18 08:56:05'),
(895, 'Keita', 'Oumou', 'FEMME', 'association', 'oui', 'Oui', '50299923', '50299923', 'BAMAKO', 'BAMAKO', 'Lafiabougou', 'adhesion/950373668.jpg', NULL, '2023-08-18 08:58:59', '2023-08-18 08:58:59'),
(896, 'Camara', 'Ibrahima', 'HOMME', 'association', 'oui', 'Oui', '62229170', '62239170', 'BAMAKO', 'BAMAKO', 'Lassa', 'adhesion/439500666.jpg', NULL, '2023-08-18 09:06:17', '2023-08-18 09:06:17'),
(897, 'Doumbia', 'Morike\'  G', 'HOMME', 'association', 'oui', 'Oui', '75388315', '75388315', 'BAMAKO', 'BAMAKO', 'Djicoroni para', 'adhesion/711570965.jpg', NULL, '2023-08-18 09:09:11', '2023-08-18 09:09:11'),
(898, 'Doumbia', 'Fatoumata', 'FEMME', 'association', 'oui', 'Oui', '76178023', '76178022', 'BAMAKO', 'BAMAKO', 'Kalabanbougou', 'adhesion/2136607679.jpg', NULL, '2023-08-18 09:11:28', '2023-08-18 09:11:28'),
(899, 'Diallo', 'Tenin', 'FEMME', 'association', 'oui', 'Oui', '76216114', '76216114', 'BAMAKO', 'BAMAKO', 'Lassa', 'adhesion/1395066519.jpg', NULL, '2023-08-18 09:14:37', '2023-08-18 09:14:37'),
(900, 'Keita', 'Moussa Mohamed', 'HOMME', 'association', 'oui', 'Oui', '74004273', '74004273', 'BAMAKO', 'BAMAKO', 'Sebenicoro', 'adhesion/1432958717.jpg', NULL, '2023-08-18 09:17:07', '2023-08-18 09:17:07'),
(901, 'Traore', 'Oumar', 'HOMME', 'Association', 'oui', 'Oui', '77790965', '77790965', 'BAMAKO', 'BAMAKO', 'Lassa', 'adhesion/243726049.jpg', NULL, '2023-08-18 09:19:58', '2023-08-18 09:19:58'),
(902, 'Camara', 'Alimata', 'FEMME', 'Association', 'oui', 'Oui', '73020385', '73020384', 'BAMAKO', 'BAMAKO', 'Lassa', 'adhesion/1221918765.jpg', NULL, '2023-08-18 09:22:40', '2023-08-18 09:22:40'),
(903, 'Coulibaly', 'Fatoumata', 'FEMME', 'Association', 'oui', 'Oui', '66959630', '66959630', 'BAMAKO', 'BAMAKO', 'Sebenicoro', 'adhesion/1698372264.jpg', NULL, '2023-08-18 09:25:26', '2023-08-18 09:25:26'),
(904, 'Diallo', 'Moussa', 'HOMME', 'Association', 'oui', 'Oui', '78171358', '78171358', 'BAMAKO', 'BAMAKO', 'Sebenicoro', 'adhesion/1193036116.jpg', NULL, '2023-08-18 09:28:45', '2023-08-18 09:28:45'),
(905, 'Toure', 'Djeneba', 'FEMME', 'Association', 'oui', 'Oui', '76021936', '76021936', 'BAMAKO', 'BAMAKO', 'Djicoroni para', 'adhesion/513111357.jpg', NULL, '2023-08-18 09:38:54', '2023-08-18 09:38:54'),
(906, 'Coulibaly', 'Mohamed', 'HOMME', 'Association', 'oui', 'Oui', '78566761', '78566761', 'BAMAKO', 'BAMAKO', 'Sebenicoro', 'adhesion/1363900777.jpg', NULL, '2023-08-18 09:41:24', '2023-08-18 09:41:24'),
(907, 'Sangare', 'Salimata', 'FEMME', 'Association', 'oui', 'Oui', '92350893', '92350893', 'BAMAKO', 'BAMAKO', 'Djicoroni para', 'adhesion/1296614310.jpg', NULL, '2023-08-18 09:45:07', '2023-08-18 09:45:07'),
(908, 'Samake', 'Ousmane', 'HOMME', 'Association', 'oui', 'Oui', '76397941', '7697941', 'BAMAKO', 'BAMAKO', 'Djicoroni para', 'adhesion/1856382639.jpg', NULL, '2023-08-18 09:48:47', '2023-08-18 09:48:47'),
(909, 'Fane', 'Oury', 'FEMME', 'oui', 'oui', 'Oui', '76352021', '76352021', 'BAMAKO', 'BAMAKO', 'Djicoroni  para', 'adhesion/640900961.jpg', NULL, '2023-08-18 09:52:00', '2023-08-18 09:52:00'),
(910, 'Kone', 'Fatoumata', 'FEMME', 'oui', 'oui', 'Oui', '53330208', '53330208', 'BAMAKO', 'BAMAKO', 'benkan', 'adhesion/1067223711.jpg', NULL, '2023-08-18 09:57:03', '2023-08-18 09:57:03'),
(911, 'Sanogo', 'Imam Aboubacar', 'HOMME', 'association', 'oui', 'Oui', '76119502', '76119502', 'BAMAKO', 'BAMAKO', 'Djicoroni para', 'adhesion/1379560216.jpg', NULL, '2023-08-18 10:03:00', '2023-08-18 10:03:00'),
(912, 'Camara', 'Imam Aboubacar', 'HOMME', 'Association', 'oui', 'Oui', '66553061', '66353061', 'BAMAKO', 'BAMAKO', 'Djicoroni para', 'adhesion/478611318.jpg', NULL, '2023-08-18 10:11:33', '2023-08-18 10:11:33'),
(913, 'Haidara', 'Sidy', 'HOMME', 'Association', 'oui', 'Oui', '66985997', '66985997', 'BAMAKO', 'BAMAKO', 'Kalabanbougou', 'adhesion/1857497706.jpg', NULL, '2023-08-18 10:14:59', '2023-08-18 10:14:59'),
(914, 'Kanté', 'Fatoumata', 'FEMME', 'Adema PASJ', 'Oui', 'Non', '78169683', 'Non', 'KAYES', 'KAYES', 'Sanoubougou I', 'adhesion/1492133886.jpg', NULL, '2023-08-18 11:40:46', '2023-08-18 11:40:46'),
(915, 'Sacko', 'Diambéré', 'HOMME', 'ADP MALIBA', 'Oui', 'Non', '77780974', 'Non', 'KAYES', 'KAYES', 'Madiga', 'adhesion/623630896.jpg', NULL, '2023-08-19 15:06:20', '2023-08-19 15:06:20'),
(916, 'Traoré', 'Idrissa', 'HOMME', 'Non', '1 83 09 1 04 003 430 p', 'Non', '76450949', '76450949', 'BAMAKO', 'BAMAKO', 'lafiabougou', 'adhesion/1791208846.jpg', NULL, '2023-08-21 08:40:27', '2023-08-21 08:40:27'),
(917, 'Traoré', 'Idrissa', 'HOMME', 'Non', '18309104003430p', 'Non', '95664822', 'N/A', 'BAMAKO', 'BAMAKO', 'lafiabougou', 'adhesion/1671824392.jpg', NULL, '2023-08-21 09:04:12', '2023-08-21 09:04:12'),
(918, 'Denon', 'Seyan', 'HOMME', 'Non', 'Non', 'Non', '78770967', 'seden7821@gmail.com', 'BAMAKO', 'BAMAKO', 'Hamdallaye', 'adhesion/996397213.jpg', NULL, '2023-08-21 09:37:04', '2023-08-21 09:37:04'),
(919, 'test', 'test', 'Homme', 'inOrganisation', '121', 'N', '93090393', 'N', 'Bamako', 'Bamako', 'Bamakos', NULL, '1', '2023-08-24 14:31:49', '2023-08-24 14:31:49'),
(924, 'Ibrahima', 'Camara', 'HOMME', 'Non', '10209104005222A', 'Oui', '52325219', 'ibrahimacama31@gmail.com', 'Mali', 'Mali', 'Lafiabougou', 'adhesion/1702523026.jpg', NULL, '2023-08-28 11:25:29', '2023-08-28 11:25:29'),
(925, 'Dao', 'Blaise', 'HOMME', 'Non', 'non', 'Non', '78906181', '78906181', 'KAYES', 'KAYES', 'kanté kounda II', 'adhesion/702022775.jpg', NULL, '2023-08-31 08:44:54', '2023-08-31 08:44:54'),
(926, 'Magassa', 'Aminata', 'FEMME', 'Non', 'non', 'Non', '76406490', '76406490', 'KAYES', 'KAYES', 'Kanté kounda II', 'adhesion/1345645687.jpg', NULL, '2023-08-31 08:48:48', '2023-08-31 08:48:48'),
(927, 'Koyaté', 'Salimata', 'FEMME', 'Non', 'non', 'Non', '83039955', '83039955', 'KAYES', 'KAYES', 'Kanté kounda II', 'adhesion/748694335.jpg', NULL, '2023-08-31 08:52:12', '2023-08-31 08:52:12'),
(928, 'konté', 'oumar', 'HOMME', 'Non', 'Non', 'Non', '70251413', '70251413', 'NIORO', 'DIEMA', '2eme délégué chargé à la organisation', 'adhesion/497813125.jpg', NULL, '2023-08-31 17:19:17', '2023-08-31 17:19:17'),
(929, 'Dao', 'Blaise', 'HOMME', 'Non', 'Non', 'Non', '50313302', '1er délégué chargé à la Information', 'NIORO', 'DIEMA', 'Diema', 'adhesion/1034897152.jpg', NULL, '2023-09-01 09:16:37', '2023-09-01 09:16:37'),
(930, 'konté', 'Tamba', 'HOMME', 'Non', '18304113001021k', 'Non', '84996851', '70358578', 'NIORO', 'DIEMA', 'Diema', 'adhesion/507773504.jpg', NULL, '2023-09-01 09:22:27', '2023-09-01 09:22:27'),
(931, 'Konté', 'Mahamadou', 'HOMME', 'Non', 'Non', 'Non', '90730503', '1er  délégué chargé des légitimités coutumières', 'NIORO', 'DIEMA', 'Diema', 'adhesion/989820161.jpg', NULL, '2023-09-01 09:26:50', '2023-09-01 09:26:50'),
(932, 'sissoko', 'Madi', 'HOMME', 'Non', '17701303010003M', 'Non', '77819753', 'coordinateur Diangounté camara', 'NIORO', 'DIEMA', 'Diangounté camara', 'adhesion/1866913294.jpg', NULL, '2023-09-01 10:43:11', '2023-09-01 10:43:11'),
(933, 'Konté', 'Souleymane', 'HOMME', 'Non', 'Non', 'Non', '83806000', '1er délégué chargé des enseignants', 'NIORO', 'DIEMA', 'Diema', 'adhesion/540582960.jpg', NULL, '2023-09-01 11:45:36', '2023-09-01 11:45:36'),
(934, 'konté', 'oumar', 'HOMME', 'Non', 'Non', 'Non', '79275829', '2me délégué chargé à la organisation', 'NIORO', 'DIEMA', 'Diema', 'adhesion/206078393.jpg', NULL, '2023-09-01 11:50:09', '2023-09-01 11:50:09'),
(935, 'konté', 'Bah djindé', 'HOMME', 'Non', '18601314001039H', 'Non', '70734758', '2eme délégué chargé de la production agricole', 'NIORO', 'DIEMA', 'Diema', 'adhesion/84910049.jpg', NULL, '2023-09-01 14:23:28', '2023-09-01 14:23:28'),
(936, 'Ballo', 'Moussa', 'HOMME', 'Non', '18209104005150D', 'Non', '94004052', '1er délégué chargé à la l information', 'NIORO', 'DIEMA', 'Diema', 'adhesion/566245381.jpg', NULL, '2023-09-01 14:41:48', '2023-09-01 14:41:48'),
(937, 'Traoré', 'Bouya', 'HOMME', 'yelema', 'Oui', 'Non', '76062323', 'bouya_sabou@yahoo.fr', 'BAMAKO', 'BAMAKO', 'Faladiè', 'adhesion/866463158.jpg', NULL, '2023-09-05 19:46:52', '2023-09-05 19:46:52'),
(938, 'Maïga', 'Mahamoud B', 'HOMME', 'OUI', 'Oui', 'Non', '72722304', 'Non', 'BAMAKO', 'BAMAKO', 'Niamana', 'adhesion/1594920765.jpg', NULL, '2023-09-05 19:50:28', '2023-09-05 19:50:28'),
(939, 'Maïga', 'Aissata', 'FEMME', 'Non', 'Oui', 'Non', '76367343', 'Non', 'BAMAKO', 'BAMAKO', 'Faladiè', 'adhesion/1249905233.jpg', NULL, '2023-09-05 20:01:01', '2023-09-05 20:01:01'),
(940, 'Keita', 'Mahamadou', 'HOMME', 'Non', 'non', 'Non', '92098900', '92098900', 'KAYES', 'KAYES', 'Diema', 'adhesion/1413765962.jpg', NULL, '2023-09-06 12:55:50', '2023-09-06 12:55:50'),
(941, 'Guirou', 'Issa', 'HOMME', 'Non', '19605603003001Yo', 'Non', '78331694', 'délégué chargé des enseignants', 'NIORO', 'DIEMA', 'Diema', 'adhesion/1913584394.jpg', NULL, '2023-09-06 14:36:56', '2023-09-06 14:36:56'),
(942, 'Toure', 'Mahamane', 'HOMME', 'AJES', '19206316001068', 'Non', '77759544', 'boureimamahamane45@gmail.com', 'BAMAKO', 'BAMAKO', 'kalaban coura aci', 'adhesion/105553177.jpg', NULL, '2023-09-06 15:10:07', '2023-09-06 15:10:07'),
(943, 'Konté', 'Ibrahim', 'HOMME', 'Non', 'non', 'Non', '83021884', '83021884', 'KAYES', 'KAYES', 'Diema', 'adhesion/1886337469.jpg', NULL, '2023-09-08 14:13:01', '2023-09-08 14:13:01'),
(944, 'konté', 'Nana Kadidia', 'FEMME', 'Non', 'non', 'Non', '70619305', '70619305', 'KAYES', 'KAYES', 'Diema', 'adhesion/1888179793.jpg', NULL, '2023-09-08 19:31:38', '2023-09-08 19:31:38'),
(945, 'Coulibaly', 'Ramatou', 'FEMME', 'Non', 'non', 'Non', '71299820', '71299820', 'KAYES', 'KAYES', 'Diema', 'adhesion/1236202115.jpg', NULL, '2023-09-08 19:54:42', '2023-09-08 19:54:42'),
(946, 'Diagouraga', 'Fatoumata', 'FEMME', 'Non', 'non', 'Non', '73320201', '73320201', 'KAYES', 'KAYES', 'Diema', 'adhesion/231621313.jpg', NULL, '2023-09-08 20:09:39', '2023-09-08 20:09:39'),
(947, 'Maiga', 'Fatoumata', 'FEMME', 'Non', 'non', 'Non', '75405708', '75405708', 'KAYES', 'KAYES', 'Diema', 'adhesion/1691131801.jpg', NULL, '2023-09-08 20:16:01', '2023-09-08 20:16:01'),
(948, 'Koyaté', 'Fatoumata', 'FEMME', 'Non', 'non', 'Non', '73591307', '73591307', 'KAYES', 'KAYES', 'Diema', 'adhesion/1652587480.jpg', NULL, '2023-09-08 20:33:47', '2023-09-08 20:33:47'),
(949, 'Keita', 'Saran', 'FEMME', 'Non', 'non', 'Non', '75404778', '75404778', 'KAYES', 'KAYES', 'Diema', 'adhesion/1094285045.jpg', NULL, '2023-09-09 01:09:09', '2023-09-09 01:09:09'),
(950, 'Sidibé', 'Seydou', 'HOMME', 'Non', 'non', 'Non', '79343237', '79343237', 'KAYES', 'KAYES', 'Diema', 'adhesion/717592513.jpg', NULL, '2023-09-09 01:20:22', '2023-09-09 01:20:22'),
(951, 'Konaté', 'Mamadou', 'HOMME', 'Non', 'non', 'Non', '91346714', '91346714', 'KAYES', 'KAYES', 'Diema', 'adhesion/21994504.jpg', NULL, '2023-09-09 01:29:05', '2023-09-09 01:29:05');

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nom` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `nom`, `email`, `password`) VALUES
(1, 'Youba Traore', 'traoreyouba@gmail.com', 'youbaADMIN@123'),
(2, 'Sinna Boly', 'sinnaboly85@gmail.com', '88151215SB@');

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `contenu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `avis`
--

INSERT INTO `avis` (`id`, `titre`, `image`, `contenu`, `created_at`, `updated_at`) VALUES
(5, 'SUITE AU COMMUNIQUÉ N°18 DU GOUVERNEMENT DE LA TRANSITION', NULL, '<p>Je salue la cr&eacute;ation d&rsquo;un m&eacute;canisme de concertation par le gouvernement du Mali dans le but de poursuivre le dialogue avec la CEDEAO, l&rsquo;Union Africaine et la Communaut&eacute; internationale. Je souhaite une issue favorable rapide afin d&rsquo;abr&eacute;ger la souffrance des populations. #SeydouMamadouCoulibaly</p>', '2022-02-10 08:26:46', '2022-02-22 12:06:45'),
(6, 'COMMUNIQUÉ CONJOINT Adéma - PASJ / BENKAN - LE PACTE CITOYEN', NULL, '<p style=\"text-align: justify;\">Le Jeudi 10 f&eacute;vrier 2022, &agrave; 15H00, les cadres de la coordination nationale du mouvement politique Benkan, le Pacte Citoyen avec &agrave; leur t&ecirc;te le Pr&eacute;sident M. Seydou Mamadou Coulibaly, ont re&ccedil;u une d&eacute;l&eacute;gation du Comit&eacute; Ex&eacute;cutif de l&rsquo;Ad&eacute;ma - Parti Africain pour la Solidarit&eacute; et la Justice (Ad&eacute;ma-PASJ) conduite par le Pr. Marimantia DIARRA, Pr&eacute;sident dudit parti. &nbsp;Cette 2&egrave;me rencontre s&rsquo;inscrit dans le cadre d&rsquo;&eacute;changes d&eacute;j&agrave; existants entre les deux formations politiques. Elle a permis de faire un large tour d&rsquo;horizon des principales questions politiques nationales d&rsquo;actualit&eacute;, notamment, l&rsquo;&eacute;volution de la transition malienne et les questions li&eacute;es aux futures relations entre Benkan, le Pacte Citoyen et l&rsquo;Ad&eacute;ma &ndash; PASJ. &nbsp; &nbsp;Au terme d&rsquo;&eacute;changes ouverts et riches, les deux formations politiques ont not&eacute; une convergence de visions sur l\'essentiel des sujets &eacute;voqu&eacute;s, comme entre autres, la d&eacute;fense des valeurs r&eacute;publicaines et d&eacute;mocratiques, le soutien ind&eacute;fectible &agrave; la transition dans le respect d\'un cadre normatif consensuel et la recherche de solutions pouvant conduire &agrave; la stabilit&eacute; et au rel&egrave;vement du Mali. A cet &eacute;gard, les deux parties ont d&eacute;cid&eacute; de travailler dans une synergie d&rsquo;actions pour la sauvegarde et le renforcement des acquis d&eacute;mocratiques. &nbsp; &nbsp;</p>\r\n<p style=\"text-align: justify;\">En outre, les deux formations politiques ont pris acte des conclusions des Assises Nationales de la Refondation de l&rsquo;&Eacute;tat et ont appel&eacute; &agrave; la vigilance et &agrave; la dext&eacute;rit&eacute; des hautes autorit&eacute;s de la transition en les invitant &agrave; travailler davantage avec l&rsquo;ensemble des forces vives pour convenir d&rsquo;un sch&eacute;ma de sortie de crise consensuel pouvant conduire &agrave; des &eacute;lections libres, transparentes et d&eacute;mocratiques.&nbsp; &nbsp; &nbsp;Enfin, les deux d&eacute;l&eacute;gations se sont f&eacute;licit&eacute;es de l&rsquo;opportunit&eacute; qu&rsquo;offrent de telles rencontres pour raffermir leurs relations et &eacute;changer sur l&rsquo;actualit&eacute;. Elles ont convenu de maintenir cette dynamique &agrave; travers la mise en place urgente d&rsquo;un cadre r&eacute;gulier d&rsquo;&eacute;changes et de concertation, pour initier ou approfondir les r&eacute;flexions sur les questions d&rsquo;int&eacute;r&ecirc;t national dans le seul but de favoriser la r&eacute;alisation d&rsquo;un Mali apais&eacute; et prosp&egrave;re.</p>\r\n<p style=\"text-align: justify;\">Bamako, le 10 f&eacute;vrier 2022</p>\r\n<p style=\"text-align: justify;\">Pour L&rsquo;Ad&eacute;ma - PASJ&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Pour Benkan, le Pacte Citoyen &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Le Pr&eacute;sident&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Le Pr&eacute;sident Pr. Marimantia DIARRA&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Seydou Mamadou COULIBALY&nbsp; &nbsp; Officier de l&rsquo;Ordre National</p>', '2022-02-18 07:44:39', '2022-02-19 00:54:19'),
(7, 'AVIS DE DECCES', '1667774807.jpeg', '', '2022-11-06 21:46:47', '2022-11-06 21:46:47'),
(8, 'AVIS DE DECCES', '1674651295.jpeg', '', '2023-01-25 11:54:55', '2023-01-25 11:54:55'),
(9, 'AVIS DE DECCES', '1674651319.jpeg', '', '2023-01-25 11:55:19', '2023-01-25 11:55:19'),
(10, 'AVIS DE DECCES', NULL, '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;CONDOL&Eacute;ANCES</p>\r\n<p>La jeunesse Benkan en deuil :</p>\r\n<p>Le mouvement Benkan le pacte citoyen a le regret de vous annoncer le d&eacute;c&egrave;s d\'un des membres actifs de sa jeunesse.</p>\r\n<p>SEKOU B MAIGA se nommait t-il, il &eacute;tait le 2em d&eacute;l&eacute;gu&eacute; charg&eacute; &agrave; la communication du bureau national de jeunesse.</p>\r\n<p>La lev&eacute;e du corp est pr&eacute;vue pour ce Lundi 13 F&eacute;vrier a partir de 16h00 dans sa famille a Sebenico. Puisse son &acirc;me reposer en paix &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>R&Eacute;DACTRICE : BOLY SINNA</p>\r\n<p>&nbsp;&Eacute;QUIPE APPLI BENKAN&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', '2023-02-13 13:51:49', '2023-02-13 13:55:39'),
(12, 'INVITATION', '1676625179.jpg', '', '2023-02-17 08:12:59', '2023-02-17 08:12:59'),
(13, 'AVIS DE DECCES', '1681472162.jpeg', '', '2023-04-14 09:36:02', '2023-04-14 09:36:02'),
(14, 'SOUNAKARI COLLECTIF AU SIGE NATIONNAL', '1681745736.jpeg', 'Tous les membres et sympathisants du mouvement Benkan sont invités demain 18 Avril 2023 à une rupture collective de jeun. La rencontre sera présidée par M. Seydou Mamadou Coulibaly; et aura lieu au siege National à Hamdallaye ACI.\r\n \r\n \r\nBENKAN : Ben, Baar, Nietaa\r\nEquipe Appli Benkan\r\nRédaction : BOLY SINNA', '2023-04-17 13:35:36', '2023-04-17 13:35:36'),
(15, 'AVIS DE DECCES', '1682346148.jpeg', '', '2023-04-24 12:22:28', '2023-04-24 12:22:28'),
(17, 'AVIS DE DECCES', '1688762940.jpeg', '', '2023-07-07 18:49:00', '2023-07-07 18:49:00'),
(18, 'AVIS DE DECCES', '1690136054.jpg', '', '2023-07-23 16:14:14', '2023-07-23 16:14:14'),
(19, 'AVIS DE DECCES', '1690285413.jpeg', '', '2023-07-25 09:43:33', '2023-07-25 09:43:33'),
(21, 'AVIS DE DECCES', '1693295596.jpeg', 'Le mouvement Benkan le pacte citoyen a le regret d’annoncer le décès de Monsieur Tiemogho Bernard Coulibaly dit TBC Enseignant à la retraite, père du coordinateur du bureau de la jeunesse Benkan du cercle de Kadiolo.\r\nLe décès est survenu le vendredi 18 Aout à l\'hôpital régional de Sikasso, cérémonies funèbres le lundi 21 à Kadiolo.\r\n \r\nEn cette douloureuse circonstance, le mouvement Benkan présente ses condoléances les plus attristés à la famille endeuillée, et formule des prières pour le repos éternel de son âme… Amen !  \r\n \r\nMardi 29 Aout 2023\r\nLa Direction exécutive du mouvement Benkan, le pacte citoyen.', '2023-08-29 05:53:16', '2023-08-29 05:53:16'),
(22, 'AVIS DE DECCES', '1693412757.jpeg', '', '2023-08-30 14:25:58', '2023-08-30 14:25:58'),
(23, 'BENKAN EN DEUIL...', '1694301714.jpeg', '', '2023-09-09 21:21:54', '2023-09-09 21:21:54');

-- --------------------------------------------------------

--
-- Structure de la table `calendars`
--

CREATE TABLE `calendars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `startedAt` time DEFAULT NULL,
  `endedAt` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `day` date DEFAULT NULL,
  `isCompleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `calendars`
--

INSERT INTO `calendars` (`id`, `titre`, `startedAt`, `endedAt`, `created_at`, `updated_at`, `day`, `isCompleted`) VALUES
(3, 'titre 3', '16:00:00', '16:05:00', '2023-06-18 14:00:08', '2023-06-18 14:00:08', '2023-06-18', 0),
(4, 'titre 20', '22:06:00', '22:07:00', '2023-06-18 14:01:10', '2023-06-18 14:01:10', '2023-06-18', 0),
(5, 'autre', '16:01:00', '19:04:00', '2023-06-18 14:01:33', '2023-06-18 14:01:33', '2023-06-18', 0),
(6, 'Test: Rencontre avec le CCAB Lundi a 12H00 à Cira', '12:00:00', '13:00:00', '2023-06-18 14:20:27', '2023-06-18 14:20:27', '2023-06-29', 0),
(7, 'TEST2: RENCONTRE AVEC LE CCAB A CIRA', '12:00:00', '13:00:00', '2023-06-18 14:23:18', '2023-06-18 14:23:18', '2023-06-19', 0),
(8, 'RENCONTRE AVEC LE POLE FEMME A BENKAN', '13:00:00', '14:00:00', '2023-06-18 14:31:08', '2023-06-18 14:31:08', '2023-06-19', 0),
(9, 'Ut tempor quibusdam', '09:16:00', '17:41:00', '2023-06-18 15:07:45', '2023-06-18 15:07:45', '2023-06-18', 0),
(10, 'Est dolores et nulla', '12:31:00', '11:55:00', '2023-06-18 15:08:02', '2023-06-18 15:08:02', '2023-06-18', 0),
(12, 'Sed earum a deleniti', '05:43:00', '12:08:00', '2023-06-18 15:08:16', '2023-06-18 15:08:16', '2023-06-18', 0),
(13, 'Sunt recusandae Atq', '08:43:00', '03:21:00', '2023-06-18 15:08:44', '2023-06-18 15:08:44', '2023-06-18', 0),
(14, 'TEST : RENCONTRE AVEC LE CCAB A BENKAN', '16:00:00', '17:00:00', '2023-06-22 13:40:13', '2023-06-22 13:40:13', '2023-06-22', 0),
(15, 'Test 3', '17:52:00', '18:52:00', '2023-06-22 13:53:00', '2023-07-21 04:29:19', '2023-06-22', 1),
(16, 'Test 4 avec le CCAB', '17:53:00', '18:53:00', '2023-06-22 13:54:10', '2023-06-22 13:54:10', '2023-06-22', 0),
(17, 'TEST AVEC SMC', '15:40:00', '18:40:00', '2023-07-06 12:40:46', '2023-07-06 12:40:46', '2023-07-06', 0),
(18, 'RDV : SEKOU SILAMAN DIARRA Association Sinangouya Ton + 4 ps', '15:00:00', '16:00:00', '2023-07-17 18:51:32', '2023-07-20 03:53:47', '2023-07-18', 1),
(19, 'RDV à CIRA : M.BARRY ALY & IBRAHIM TOURE  VP Jeunesse Benkan', '16:00:00', '17:30:00', '2023-07-19 18:40:16', '2023-07-22 08:19:10', '2023-07-20', 1),
(24, 'RDV à CIRA: FATOUMATA BAH Coordinatrice PACAM', '11:30:00', '12:30:00', '2023-07-20 09:03:55', '2023-07-24 14:32:58', '2023-07-20', 1),
(26, 'RDV : Mahamane Mariko Président du Parti CRA FASSO NIETA', '15:30:00', '16:30:00', '2023-07-21 08:46:11', '2023-07-22 08:19:02', '2023-07-21', 1),
(27, 'SORTIE : Enterrement de Marmantia Diarra à Kalaban', '16:00:00', '18:00:00', '2023-07-24 07:01:20', '2023-07-26 09:11:18', '2023-07-24', 1),
(28, 'Réunion à CIRA : A propos de l\'association \"sinankouya ton\"', '16:00:00', '17:00:00', '2023-07-25 11:26:45', '2023-07-25 18:06:35', '2023-07-25', 1),
(29, 'Sortie : visite au siège de la JCI', '16:00:00', '18:00:00', '2023-07-28 10:01:19', '2023-07-30 18:59:16', '2023-07-28', 1),
(30, 'Sortie : Visite au siège du parti CRAJ-Fasso Nietaa', '11:00:00', '12:00:00', '2023-07-28 20:03:04', '2023-07-30 18:59:13', '2023-07-29', 1),
(31, 'Rencontre à Cira : avec un groupe de jeunes (le forum libre)', '15:00:00', '16:00:00', '2023-08-10 09:51:31', '2023-08-10 14:13:48', '2023-08-10', 1),
(32, 'RENCONTRE A CIRA : AVEC L\'ATISTE DOUMBIA NAHAWA', '14:00:00', '15:00:00', '2023-08-16 08:51:56', '2023-08-21 00:31:12', '2023-08-16', 1);

-- --------------------------------------------------------

--
-- Structure de la table `cercles`
--

CREATE TABLE `cercles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `non` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `region_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cercles`
--

INSERT INTO `cercles` (`id`, `non`, `created_at`, `updated_at`, `region_id`) VALUES
(1, 'BAFOULABE', NULL, NULL, 1),
(2, 'KAYES', NULL, NULL, 1),
(3, 'YELIMANE', NULL, NULL, 1),
(4, 'AOUROU', NULL, NULL, 1),
(5, 'KOULIKORO', NULL, NULL, 2),
(6, 'KOLOKANI', NULL, NULL, 2),
(7, 'KATI', NULL, NULL, 2),
(8, 'KANGABA', NULL, NULL, 2),
(9, 'BANAMBA', NULL, NULL, 2),
(10, 'SANANKOROBA', NULL, NULL, 2),
(11, 'SIKASSO', NULL, NULL, 3),
(12, 'KADIOLO', NULL, NULL, 3),
(13, 'KIGNAN', NULL, NULL, 3),
(14, 'NIENA', NULL, NULL, 3),
(15, 'SEGOU', NULL, NULL, 4),
(16, 'MACINA', NULL, NULL, 4),
(17, 'BAROUELI', NULL, NULL, 4),
(18, 'NIONO', NULL, NULL, 4),
(19, 'MOPTI', NULL, NULL, 5),
(20, 'DJENNE', NULL, NULL, 5),
(21, 'YOUWAROU', NULL, NULL, 5),
(22, 'TENENKOU', NULL, NULL, 5),
(23, 'TOMBOUCTOU', NULL, NULL, 6),
(24, 'NIAFUNKE', NULL, NULL, 6),
(25, 'GOUNDAM', NULL, NULL, 6),
(26, 'DIRE', NULL, NULL, 6),
(27, 'BER', NULL, NULL, 6),
(28, 'LERE', NULL, NULL, 6),
(29, 'BOUREM', NULL, NULL, 7),
(30, 'ANSONGO', NULL, NULL, 7),
(31, 'GAO', NULL, NULL, 7),
(32, 'ERSANE', NULL, NULL, 7),
(33, 'DJEBOCK', NULL, NULL, 7),
(34, 'AL MOUSTARAT', NULL, NULL, 7),
(35, 'TALATAYE', NULL, NULL, 7),
(36, 'KIDAL', NULL, NULL, 8),
(37, 'TESSALIT', NULL, NULL, 8),
(38, 'ABEIBARA', NULL, NULL, 8),
(39, 'TIN-ESSAKO', NULL, NULL, 8),
(40, 'ACHIBOGHO', NULL, NULL, 8),
(41, 'ANEFIS', NULL, NULL, 8),
(42, 'ESSOUK', NULL, NULL, 8),
(43, 'TIMETRINE', NULL, NULL, 8),
(44, 'ACHOURATT', NULL, NULL, 9),
(45, 'AL-OURCHE', NULL, NULL, 9),
(46, 'ARAOUANE', NULL, NULL, 9),
(47, 'BOUJBEHA', NULL, NULL, 9),
(48, 'FOUM-ELBA', NULL, NULL, 9),
(49, 'TAOUDENIT', NULL, NULL, 9),
(50, 'ANDERAMBOUKANE', NULL, NULL, 10),
(51, 'INEKAR', NULL, NULL, 10),
(52, 'MENAKA', NULL, NULL, 10),
(53, 'TIDERMENE', NULL, NULL, 10),
(54, 'BOUGOUNI', NULL, NULL, 11),
(55, 'GARALO', NULL, NULL, 11),
(56, 'KOLONDIEBA', NULL, NULL, 11),
(57, 'KOUMANTOU', NULL, NULL, 11),
(58, 'OUELESSEBOUGOU', NULL, NULL, 11),
(59, 'YANFOLILA', NULL, NULL, 11),
(60, 'BANCO', NULL, NULL, 12),
(61, 'BELECO', NULL, NULL, 12),
(62, 'DIOILA', NULL, NULL, 12),
(63, 'FANA', NULL, NULL, 12),
(64, 'MASSIGUI', NULL, NULL, 12),
(65, 'SANDARE', NULL, NULL, 13),
(66, 'TROUNGOUMBE', NULL, NULL, 13),
(67, 'DIEMA', NULL, NULL, 13),
(68, 'NIORO', NULL, NULL, 13),
(69, 'KOUTIALA', NULL, NULL, 14),
(70, 'M\'PESSOBA', NULL, NULL, 14),
(71, 'YOROSSO', NULL, NULL, 14),
(72, 'KENIEBA', NULL, NULL, 15),
(73, 'KITA', NULL, NULL, 15),
(74, 'SAGABANI', NULL, NULL, 15),
(75, 'SEBECORO', NULL, NULL, 15),
(76, 'TOUKOTO', NULL, NULL, 15),
(77, 'NARA', NULL, NULL, 16),
(78, 'BALLE', NULL, NULL, 16),
(79, 'DILLY', NULL, NULL, 16),
(80, 'MOURDIAH', NULL, NULL, 16),
(81, 'BANDIAGARA', NULL, NULL, 17),
(82, 'BANKASS', NULL, NULL, 17),
(83, 'KORO', NULL, NULL, 17),
(84, 'BLA', NULL, NULL, 18),
(85, 'KIMPARANA', NULL, NULL, 18),
(86, 'SAN', NULL, NULL, 18),
(87, 'TOMINIAN', NULL, NULL, 18),
(88, 'DOUENTZA', NULL, NULL, 19),
(89, 'BONI', NULL, NULL, 19),
(90, 'DIANKABOU', NULL, NULL, 19),
(91, 'MONDORO', NULL, NULL, 19),
(92, 'GOSSI', NULL, NULL, 20),
(93, 'BAMBARA MAOUDE', NULL, NULL, 20),
(94, 'RHAROUS', NULL, NULL, 20),
(95, 'BAMAKO', NULL, NULL, 21);

-- --------------------------------------------------------

--
-- Structure de la table `communes`
--

CREATE TABLE `communes` (
  `id` int(11) NOT NULL,
  `non` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cercle_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `communes`
--

INSERT INTO `communes` (`id`, `non`, `created_at`, `updated_at`, `cercle_id`) VALUES
(1, 'BAFOULABE', NULL, NULL, 1),
(2, 'BAMAFELE', NULL, NULL, 1),
(3, 'DIAKON', NULL, NULL, 1),
(4, 'DIALLAN', NULL, NULL, 1),
(5, 'DIOKELI', NULL, NULL, 1),
(6, 'GOUNFA', NULL, NULL, 1),
(7, 'KONTELA', NULL, NULL, 1),
(8, 'KOUNDIAN', NULL, NULL, 1),
(9, 'MAHINA', NULL, NULL, 1),
(10, 'NIAMBIYA', NULL, NULL, 1),
(11, 'OUALIA', NULL, NULL, 1),
(12, 'SIDIBELA', NULL, NULL, 1),
(13, 'TOMORA', NULL, NULL, 1),
(14, 'BANGASSI', NULL, NULL, 2),
(15, 'COLOMBINE', NULL, NULL, 2),
(16, 'DIAMOU', NULL, NULL, 2),
(17, 'FALEME', NULL, NULL, 2),
(18, 'FEGUI', NULL, NULL, 2),
(19, 'GORY GOPELA', NULL, NULL, 2),
(20, 'GOUMERA', NULL, NULL, 2),
(21, 'GUIDI MAKA KAFFO', NULL, NULL, 2),
(22, 'HAWA DEMBAYA', NULL, NULL, 2),
(23, 'KAYES', NULL, NULL, 2),
(24, 'KEMENE TAMBO', NULL, NULL, 2),
(25, 'KHOULOUM', NULL, NULL, 2),
(26, 'KOUNIAKARY', NULL, NULL, 2),
(27, 'LIBERTE DEMBAYA', NULL, NULL, 2),
(28, 'LOGO', NULL, NULL, 2),
(29, 'MARENA DIOMBOUGOU', NULL, NULL, 2),
(30, 'MARINTOUMANIA', NULL, NULL, 2),
(31, 'SADIOLA', NULL, NULL, 2),
(32, 'SAME DIONGOMA', NULL, NULL, 2),
(33, 'SEGALA', NULL, NULL, 2),
(34, 'SERO DIAMANOU', NULL, NULL, 2),
(35, 'SOMANKIDI', NULL, NULL, 2),
(36, 'SONY', NULL, NULL, 2),
(37, 'TAFACIRGA', NULL, NULL, 2),
(38, 'DIAFOUNOU DIONGAGA', NULL, NULL, 3),
(39, 'DIAFOUNOU GORY', NULL, NULL, 3),
(40, 'FANGA', NULL, NULL, 3),
(41, 'GORY', NULL, NULL, 3),
(42, 'GUIDIME', NULL, NULL, 3),
(43, 'KIRANE KANIAGA', NULL, NULL, 3),
(44, 'KONSIGA', NULL, NULL, 3),
(45, 'KREMIS', NULL, NULL, 3),
(46, 'MAREKAFFO', NULL, NULL, 3),
(47, 'SOUMPOU', NULL, NULL, 3),
(48, 'TOYA', NULL, NULL, 3),
(49, 'TRINGA', NULL, NULL, 3),
(50, 'Djélébou', NULL, NULL, 4),
(51, 'Kararkoro', NULL, NULL, 4),
(52, 'Koussane', NULL, NULL, 4),
(53, 'Sahel', NULL, NULL, 4),
(54, 'DINANDOUGOU', NULL, NULL, 5),
(55, 'DOUMBA', NULL, NULL, 5),
(56, 'KOULA', NULL, NULL, 5),
(57, 'KOULIKORO', NULL, NULL, 5),
(58, 'MEGUETAN', NULL, NULL, 5),
(59, 'NYAMINA', NULL, NULL, 5),
(60, 'SIRAKOROLA', NULL, NULL, 5),
(61, 'TIENFALA', NULL, NULL, 5),
(62, 'TOUGOUNI', NULL, NULL, 5),
(63, 'DIDIENI', NULL, NULL, 6),
(64, 'GUIHOYO', NULL, NULL, 6),
(65, 'KOLOKANI', NULL, NULL, 6),
(66, 'MASSANTOLA', NULL, NULL, 6),
(67, 'NONKON', NULL, NULL, 6),
(68, 'NOSSOMBOUGOU', NULL, NULL, 6),
(69, 'OUOLODO', NULL, NULL, 6),
(70, 'SAGABALA', NULL, NULL, 6),
(71, 'SEBECORO I', NULL, NULL, 6),
(72, 'TIORIBOUGOU', NULL, NULL, 6),
(73, 'BANCOUMANA', NULL, NULL, 7),
(74, 'BOSSOFALA', NULL, NULL, 7),
(75, 'DABAN', NULL, NULL, 7),
(76, 'DIAGO', NULL, NULL, 7),
(77, 'DIEDOUGOU', NULL, NULL, 7),
(78, 'DIO-GARE', NULL, NULL, 7),
(79, 'DOMBILA', NULL, NULL, 7),
(80, 'DOUBABOUGOU', NULL, NULL, 7),
(81, 'KALIFABOUGOU', NULL, NULL, 7),
(82, 'KAMBILA', NULL, NULL, 7),
(83, 'KATI', NULL, NULL, 7),
(84, 'MANDE', NULL, NULL, 7),
(85, 'NIOUMA-MAKANA', NULL, NULL, 7),
(86, 'N\'TJIBA', NULL, NULL, 7),
(87, 'SAFO', NULL, NULL, 7),
(88, 'SIBY', NULL, NULL, 7),
(89, 'SOBRA', NULL, NULL, 7),
(90, 'YELEKEBOUGOU', NULL, NULL, 7),
(91, 'Benkadi', NULL, NULL, 8),
(92, 'Balan-bakana', NULL, NULL, 8),
(93, 'Kaniogo', NULL, NULL, 8),
(94, 'Karan', NULL, NULL, 8),
(95, 'Maramandougou', NULL, NULL, 8),
(96, 'Minidian', NULL, NULL, 8),
(97, 'Naréna', NULL, NULL, 8),
(98, 'Nouga', NULL, NULL, 8),
(99, 'Séléfougou', NULL, NULL, 8),
(100, 'BANAMBA', NULL, NULL, 9),
(101, 'BENKADI', NULL, NULL, 9),
(102, 'BORON', NULL, NULL, 9),
(103, 'SEBETE', NULL, NULL, 9),
(104, 'DUWUWOLOWULA', NULL, NULL, 9),
(105, 'KIBAN', NULL, NULL, 9),
(106, 'MADINA-SACKO', NULL, NULL, 9),
(107, 'TOUBACORO', NULL, NULL, 9),
(108, 'TOUKOROBA', NULL, NULL, 9),
(109, 'BAGUINEDA-CAMP', NULL, NULL, 10),
(110, 'MOUNTOUGOULA', NULL, NULL, 10),
(111, 'N\'GOURABA', NULL, NULL, 10),
(112, 'TIELE', NULL, NULL, 10),
(113, 'FARABA', NULL, NULL, 10),
(114, 'KOUROUBA', NULL, NULL, 10),
(115, 'NIAGADINA', NULL, NULL, 10),
(116, 'TIAGADOUGOU-DIALAKORO', NULL, NULL, 10),
(117, 'BOUGOULA', NULL, NULL, 10),
(118, 'DIALAKOROBA', NULL, NULL, 10),
(119, 'SANANKOROBA', NULL, NULL, 10),
(120, 'Danderesso', NULL, NULL, 11),
(121, 'Diomatene', NULL, NULL, 11),
(122, 'Fama', NULL, NULL, 11),
(123, 'Farakala', NULL, NULL, 11),
(124, 'Finkolo', NULL, NULL, 11),
(125, 'Gongasso', NULL, NULL, 11),
(126, 'Klela', NULL, NULL, 11),
(127, 'Kaboila', NULL, NULL, 11),
(128, 'Kafouziela', NULL, NULL, 11),
(129, 'Kapala', NULL, NULL, 11),
(130, 'Kapolondougou', NULL, NULL, 11),
(131, 'Kofan', NULL, NULL, 11),
(132, 'Kolokoba', NULL, NULL, 11),
(133, 'Kouoro ', NULL, NULL, 11),
(134, 'Lobougoula', NULL, NULL, 11),
(135, 'Missirikoro', NULL, NULL, 11),
(136, 'Pimperena', NULL, NULL, 11),
(137, 'Natien ', NULL, NULL, 11),
(138, 'Nongon – Souala', NULL, NULL, 11),
(139, 'Sikasso ', NULL, NULL, 11),
(140, 'Sokourani–Missirikoro ', NULL, NULL, 11),
(141, 'zanférébougou', NULL, NULL, 11),
(142, 'Zangaradougou', NULL, NULL, 11),
(143, 'Diou', NULL, NULL, 12),
(144, 'Dioumatene', NULL, NULL, 12),
(145, 'Fourou', NULL, NULL, 12),
(146, 'Kadiolo', NULL, NULL, 12),
(147, 'Kaï', NULL, NULL, 12),
(148, 'Loulouni', NULL, NULL, 12),
(149, 'Misseni', NULL, NULL, 12),
(150, 'Nimbougou', NULL, NULL, 12),
(151, 'Zegoua', NULL, NULL, 12),
(152, 'KIGNAN', NULL, NULL, 13),
(153, 'DOGONI', NULL, NULL, 13),
(154, 'KABARASSO', NULL, NULL, 13),
(155, 'DOUMANABA', NULL, NULL, 13),
(156, 'DIALAKORO', NULL, NULL, 13),
(157, 'KOUMANKOU', NULL, NULL, 13),
(158, 'KOUROUMA', NULL, NULL, 13),
(159, 'SANZANA', NULL, NULL, 13),
(160, 'TELLA', NULL, NULL, 13),
(161, 'BENKADI', NULL, NULL, 14),
(162, 'BLENDIO', NULL, NULL, 14),
(163, 'DEMBELA', NULL, NULL, 14),
(164, 'MIRIA', NULL, NULL, 14),
(165, 'TIANKADI', NULL, NULL, 14),
(166, 'FINKOLO-GANADOUGOU', NULL, NULL, 14),
(167, 'MINIKO', NULL, NULL, 14),
(168, 'N\'TJIKOUNA', NULL, NULL, 14),
(169, 'NIENA', NULL, NULL, 14),
(170, 'WATENI', NULL, NULL, 14),
(171, 'ZANIENA', NULL, NULL, 14),
(172, 'Baguindadougou', NULL, NULL, 15),
(173, 'Bellen', NULL, NULL, 15),
(174, 'Boussin', NULL, NULL, 15),
(175, 'Cinzana', NULL, NULL, 15),
(176, 'Diedougou', NULL, NULL, 15),
(177, 'Diganidougou', NULL, NULL, 15),
(178, 'Dioro', NULL, NULL, 15),
(179, 'Diouna', NULL, NULL, 15),
(180, 'Dougabougou', NULL, NULL, 15),
(181, 'Farako', NULL, NULL, 15),
(182, 'Farakou-Massa', NULL, NULL, 15),
(183, 'Fatine', NULL, NULL, 15),
(184, 'Kamiandougou', NULL, NULL, 15),
(185, 'Katiena', NULL, NULL, 15),
(186, 'Konodimini', NULL, NULL, 15),
(187, 'Markala', NULL, NULL, 15),
(188, 'Massala', NULL, NULL, 15),
(189, 'N\'gara', NULL, NULL, 15),
(190, 'N\'Koumandougou', NULL, NULL, 15),
(191, 'Pelengana', NULL, NULL, 15),
(192, 'Sakoiba', NULL, NULL, 15),
(193, 'Sama-Foulala', NULL, NULL, 15),
(194, 'Samine', NULL, NULL, 15),
(195, 'Sansanding', NULL, NULL, 15),
(196, 'Sebougou', NULL, NULL, 15),
(197, 'Ségou', NULL, NULL, 15),
(198, 'Sibila', NULL, NULL, 15),
(199, 'Soignebougou', NULL, NULL, 15),
(200, 'Souba', NULL, NULL, 15),
(201, 'Togou', NULL, NULL, 15),
(202, 'Boky-Were', NULL, NULL, 16),
(203, 'Folomana', NULL, NULL, 16),
(204, 'Kokry-Centre', NULL, NULL, 16),
(205, 'Kolongo', NULL, NULL, 16),
(206, 'Macina', NULL, NULL, 16),
(207, 'Matomo', NULL, NULL, 16),
(208, 'Monimpebougou', NULL, NULL, 16),
(209, 'Saloba', NULL, NULL, 16),
(210, 'Sana', NULL, NULL, 16),
(211, 'Souleye', NULL, NULL, 16),
(212, 'Tongue', NULL, NULL, 16),
(213, 'Barouéli', NULL, NULL, 17),
(214, 'Boidié', NULL, NULL, 17),
(215, 'Dogoufé', NULL, NULL, 17),
(216, 'Gouendo', NULL, NULL, 17),
(217, 'Kalaké', NULL, NULL, 17),
(218, 'Konobougou', NULL, NULL, 17),
(219, 'N\'Gassola', NULL, NULL, 17),
(220, 'Sanando', NULL, NULL, 17),
(221, 'Somo', NULL, NULL, 17),
(222, 'Tamani', NULL, NULL, 17),
(223, 'Tesserla', NULL, NULL, 17),
(224, 'Diabaly', NULL, NULL, 18),
(225, 'Dogofry', NULL, NULL, 18),
(226, 'Kala-Siguida', NULL, NULL, 18),
(227, 'Mariko', NULL, NULL, 18),
(228, 'Nampalari', NULL, NULL, 18),
(229, 'Niono', NULL, NULL, 18),
(230, 'Pogo', NULL, NULL, 18),
(231, 'Sirfila-Boudi', NULL, NULL, 18),
(232, 'Siribala', NULL, NULL, 18),
(233, 'Sokolo', NULL, NULL, 18),
(234, 'Toridaga-Ko', NULL, NULL, 18),
(235, 'Yeredon-Saniona', NULL, NULL, 18),
(236, 'Bassirou', NULL, NULL, 19),
(237, 'Borondougou', NULL, NULL, 19),
(238, 'Dialloubé', NULL, NULL, 19),
(239, 'Fatoma', NULL, NULL, 19),
(240, 'Konna', NULL, NULL, 19),
(241, 'Korombana', NULL, NULL, 19),
(242, 'Koubaye', NULL, NULL, 19),
(243, 'Kounari', NULL, NULL, 19),
(244, 'Mopti', NULL, NULL, 19),
(245, 'Ouro-Modi', NULL, NULL, 19),
(246, 'Ouroubé Doudde', NULL, NULL, 19),
(247, 'Salsabé', NULL, NULL, 19),
(248, 'Sio', NULL, NULL, 19),
(249, 'Socoura', NULL, NULL, 19),
(250, 'Soye', NULL, NULL, 19),
(251, 'DANDOUGOU FAKALA', NULL, NULL, 20),
(252, 'DERARY', NULL, NULL, 20),
(253, 'DJENNE', NULL, NULL, 20),
(254, 'FAKALA', NULL, NULL, 20),
(255, 'FEMAYE', NULL, NULL, 20),
(256, 'KEWA', NULL, NULL, 20),
(257, 'MADIAMA', NULL, NULL, 20),
(258, 'NEMA BADENYAKAFO', NULL, NULL, 20),
(259, 'NIANSANARIE', NULL, NULL, 20),
(260, 'OURO-ALY', NULL, NULL, 20),
(261, 'PONDORI', NULL, NULL, 20),
(262, 'TOGUE MOURARI', NULL, NULL, 20),
(263, 'BIMBERE TAMA', NULL, NULL, 21),
(264, 'DEBOYE', NULL, NULL, 21),
(265, 'DIRMA', NULL, NULL, 21),
(266, 'DONGO', NULL, NULL, 21),
(267, 'FARIMAKE', NULL, NULL, 21),
(268, 'N\'DODJIGA', NULL, NULL, 21),
(269, 'YOUWAROU', NULL, NULL, 21),
(270, 'DIAFARABE', NULL, NULL, 22),
(271, 'DIAKA', NULL, NULL, 22),
(272, 'DIONDIORO', NULL, NULL, 22),
(273, 'KARERI', NULL, NULL, 22),
(274, 'OURO-ARDO', NULL, NULL, 22),
(275, 'OURO-GUIRE', NULL, NULL, 22),
(276, 'SOUGOULBE', NULL, NULL, 22),
(277, 'TENENKOU', NULL, NULL, 22),
(278, 'TOGORO KOTIYA', NULL, NULL, 22),
(279, 'TOGUERE-COUMBE', NULL, NULL, 22),
(280, 'ALAFIA', NULL, NULL, 23),
(281, 'BOUREM-INALY', NULL, NULL, 23),
(282, 'LAFIA', NULL, NULL, 23),
(283, 'TOMBOUCTOU', NULL, NULL, 23),
(284, 'BANIKANE NARHAWA', NULL, NULL, 24),
(285, 'FITTOUGA', NULL, NULL, 24),
(286, 'KOUMAIRA', NULL, NULL, 24),
(287, 'N\'GORKOU', NULL, NULL, 24),
(288, 'SOBOUNDOU', NULL, NULL, 24),
(289, 'BINTAGOUNGOU', NULL, NULL, 25),
(290, 'DOUEKIRE', NULL, NULL, 25),
(291, 'DOUKOURIA', NULL, NULL, 25),
(292, 'ESSAKANE', NULL, NULL, 25),
(293, 'GOUNDAM', NULL, NULL, 25),
(294, 'ISSA-BERY', NULL, NULL, 25),
(295, 'KANEYE', NULL, NULL, 25),
(296, 'M\'BOUNA', NULL, NULL, 25),
(297, 'TELE', NULL, NULL, 25),
(298, 'TONKA', NULL, NULL, 25),
(299, 'ARHAM', NULL, NULL, 26),
(300, 'BINGA', NULL, NULL, 26),
(301, 'BOUREM SIDI AMAR', NULL, NULL, 26),
(302, 'DANGHA', NULL, NULL, 26),
(303, 'DIRE', NULL, NULL, 26),
(304, 'GARBAKORA', NULL, NULL, 26),
(305, 'HAIBONGO', NULL, NULL, 26),
(306, 'KIRCHAMBA', NULL, NULL, 26),
(307, 'KONDI', NULL, NULL, 26),
(308, 'SARE-YAMOU', NULL, NULL, 26),
(309, 'TIENKOUR', NULL, NULL, 26),
(310, 'TINDIRMA', NULL, NULL, 26),
(311, 'TINGUEREGUI GARI', NULL, NULL, 26),
(312, 'BER', NULL, NULL, 27),
(313, 'TEHERDJE', NULL, NULL, 27),
(314, 'ZARHO', NULL, NULL, 27),
(315, 'ANDARMALANE', NULL, NULL, 28),
(316, 'GARGANDO', NULL, NULL, 28),
(317, 'LERE', NULL, NULL, 28),
(318, 'ALZOUNOUB', NULL, NULL, 28),
(319, 'TILEMSI', NULL, NULL, 28),
(320, 'RAZ-EL-MA', NULL, NULL, 28),
(321, 'TIN-AÏCHA', NULL, NULL, 28),
(322, 'DIANKE', NULL, NULL, 28),
(323, 'SOUMPI', NULL, NULL, 28),
(324, 'BAMBA', NULL, NULL, 29),
(325, 'TABOYE', NULL, NULL, 29),
(326, 'TEMERA', NULL, NULL, 29),
(327, 'BOUREM-FOGHAS', NULL, NULL, 29),
(328, 'ANSONGO', NULL, NULL, 30),
(329, 'BARA', NULL, NULL, 30),
(330, 'BOURRA', NULL, NULL, 30),
(331, 'OUATTAGOUNA', NULL, NULL, 30),
(332, 'TESSIT', NULL, NULL, 30),
(333, 'TIN-HAMA', NULL, NULL, 30),
(334, 'GABERO', NULL, NULL, 31),
(335, 'GOUNZOUREYE', NULL, NULL, 31),
(336, 'N\'TILLIT', NULL, NULL, 31),
(337, 'SONY-ALIBER', NULL, NULL, 31),
(338, 'GAO', NULL, NULL, 31),
(339, 'DJENOUNE', NULL, NULL, 32),
(340, 'EL MAHMOUD', NULL, NULL, 32),
(341, 'TARKINT', NULL, NULL, 32),
(342, 'ERSANE', NULL, NULL, 32),
(343, 'DJEBOCK', NULL, NULL, 33),
(344, 'EM-N-AGHIL', NULL, NULL, 33),
(345, 'IN-MINASS', NULL, NULL, 33),
(346, 'SAMETT', NULL, NULL, 33),
(347, 'AMASSARAKADH', NULL, NULL, 33),
(348, 'TIN-AOUKER', NULL, NULL, 33),
(349, 'M\'BEIKIT-EL DIOUNE', NULL, NULL, 34),
(350, 'AGHAROUS', NULL, NULL, 34),
(351, 'TABANKORT', NULL, NULL, 34),
(352, 'EL MOUSTARART', NULL, NULL, 34),
(353, 'TALATAYE', NULL, NULL, 35),
(354, 'INDELIMANE', NULL, NULL, 35),
(355, 'TINTACHORI', NULL, NULL, 35),
(356, 'ANEFIF', NULL, NULL, 36),
(357, 'KIDAL', NULL, NULL, 36),
(358, 'ADJEL-HOC', NULL, NULL, 37),
(359, 'TESSALIT', NULL, NULL, 37),
(360, 'ABEIBARA', NULL, NULL, 38),
(361, 'TINZAWATENE', NULL, NULL, 38),
(362, 'AGHLI', NULL, NULL, 38),
(363, 'IN-TAHEK', NULL, NULL, 38),
(364, 'BOGHASSA', NULL, NULL, 38),
(365, 'TIN ESSAKO', NULL, NULL, 39),
(366, 'ABIYOU', NULL, NULL, 39),
(367, 'TINEZE', NULL, NULL, 39),
(368, 'INTADJEDITE', NULL, NULL, 40),
(369, 'TAGORAST', NULL, NULL, 40),
(370, 'IMBOULAL', NULL, NULL, 40),
(371, 'AMASSINE', NULL, NULL, 41),
(372, 'TAKALOTT', NULL, NULL, 41),
(373, 'ANEFIS', NULL, NULL, 41),
(374, 'KANNAY', NULL, NULL, 41),
(375, 'INKHALIL', NULL, NULL, 42),
(376, 'IKADHAWATANE', NULL, NULL, 42),
(377, 'TIMTAGHENE', NULL, NULL, 42),
(378, 'ESSOUK', NULL, NULL, 43),
(379, 'INTACHDAYT', NULL, NULL, 43),
(380, 'TELABIT', NULL, NULL, 43),
(381, 'ACHOURATT', NULL, NULL, 44),
(382, 'ALFACROUNA', NULL, NULL, 44),
(383, 'ALGATARA', NULL, NULL, 44),
(384, 'ALMATIA', NULL, NULL, 44),
(385, 'LIRAKA', NULL, NULL, 44),
(386, 'AL-OURCHE', NULL, NULL, 45),
(387, 'DIABA', NULL, NULL, 45),
(388, 'NIBKIT-EL-ELK', NULL, NULL, 45),
(389, 'OUM-LAAZAM', NULL, NULL, 45),
(390, 'TAMAGOUNITE', NULL, NULL, 45),
(391, 'TOUWAL', NULL, NULL, 45),
(392, 'ZIRBA', NULL, NULL, 45),
(393, 'ARAOUANE', NULL, NULL, 46),
(394, 'M\'BACK-SAMNA', NULL, NULL, 46),
(395, 'WADE LHAJARE', NULL, NULL, 46),
(396, 'ACHAMOUR', NULL, NULL, 46),
(397, 'TINAGUELHAJ', NULL, NULL, 46),
(398, 'AGOUNI', NULL, NULL, 47),
(399, 'TICHIFT', NULL, NULL, 47),
(400, 'BOUJBEHA', NULL, NULL, 47),
(401, 'ERGK-LAKHAL', NULL, NULL, 47),
(402, 'LIMGASSIM', NULL, NULL, 47),
(403, 'BOUGOUYAÏRA', NULL, NULL, 48),
(404, 'FOUM-ELBA', NULL, NULL, 48),
(405, 'LAMHAMIDE', NULL, NULL, 48),
(406, 'TAOUDENIT', NULL, NULL, 49),
(407, 'TEGHAZA', NULL, NULL, 49),
(408, 'ELHANK', NULL, NULL, 49),
(409, 'ALOUGIA', NULL, NULL, 49),
(410, 'ZOUELYA', NULL, NULL, 49),
(411, 'ANDERAMBOUKANE', NULL, NULL, 50),
(412, 'ANOU-ZAGRENE', NULL, NULL, 50),
(413, 'AZAWAK', NULL, NULL, 50),
(414, 'TAMALET', NULL, NULL, 50),
(415, 'INEKAR', NULL, NULL, 51),
(416, 'INLAMAWANE', NULL, NULL, 51),
(417, 'TISSOUAKH', NULL, NULL, 51),
(418, 'TADIRANTE', NULL, NULL, 51),
(419, 'INFOURKARETANE', NULL, NULL, 52),
(420, 'TABANKORT', NULL, NULL, 52),
(421, 'TIN-ABAW', NULL, NULL, 52),
(422, 'ASSAKARAY', NULL, NULL, 52),
(423, 'IN-AZOLE', NULL, NULL, 52),
(424, 'IZGUIRETE', NULL, NULL, 52),
(425, 'MENAKA', NULL, NULL, 52),
(426, 'ALATA', NULL, NULL, 53),
(427, 'TEGUERET', NULL, NULL, 53),
(428, 'CHIMAN', NULL, NULL, 53),
(429, 'INHINITA', NULL, NULL, 53),
(430, 'INTADEYNE', NULL, NULL, 53),
(431, 'TIDERMENE', NULL, NULL, 53),
(432, 'Bougouni', NULL, NULL, 54),
(433, 'Danou', NULL, NULL, 54),
(434, 'Dogo', NULL, NULL, 54),
(435, 'Faradiele ', NULL, NULL, 54),
(436, 'Faragouaran ', NULL, NULL, 54),
(437, 'Keleya', NULL, NULL, 54),
(438, 'Kokele ', NULL, NULL, 54),
(439, 'Kola', NULL, NULL, 54),
(440, 'Kouroulamini', NULL, NULL, 54),
(441, 'Meridiela', NULL, NULL, 54),
(442, 'Ouroun ', NULL, NULL, 54),
(443, 'Sido ', NULL, NULL, 54),
(444, 'Syen Toula', NULL, NULL, 54),
(445, 'Tiemala-B', NULL, NULL, 54),
(446, 'Zantiebougou ', NULL, NULL, 54),
(447, 'Bladie Tiemala ', NULL, NULL, 55),
(448, 'Defina', NULL, NULL, 55),
(449, 'Garalo ', NULL, NULL, 55),
(450, 'Sibirila ', NULL, NULL, 55),
(451, 'Yinindougou ', NULL, NULL, 55),
(452, 'Yiridougou ', NULL, NULL, 55),
(453, 'Bougoula', NULL, NULL, 56),
(454, 'Fakola', NULL, NULL, 56),
(455, 'Farako', NULL, NULL, 56),
(456, 'Kadiana', NULL, NULL, 56),
(457, 'Kebila ', NULL, NULL, 56),
(458, 'Kolondieba', NULL, NULL, 56),
(459, 'Kolosso ', NULL, NULL, 56),
(460, 'Mena', NULL, NULL, 56),
(461, 'N’Golodiana', NULL, NULL, 56),
(462, 'Nangalasso', NULL, NULL, 56),
(463, 'Tiongui ', NULL, NULL, 56),
(464, 'Tousseguela', NULL, NULL, 56),
(465, 'Koumantou ', NULL, NULL, 57),
(466, 'Debelin ', NULL, NULL, 57),
(467, 'Domba', NULL, NULL, 57),
(468, 'Sanso ', NULL, NULL, 57),
(469, 'Wola ', NULL, NULL, 57),
(470, 'OUELESSEBOUGOU', NULL, NULL, 58),
(471, 'SANANKORO-DJITOUMOU', NULL, NULL, 58),
(472, 'Baya ', NULL, NULL, 58),
(473, 'Tagandougou', NULL, NULL, 58),
(474, 'Bolo-Fouta', NULL, NULL, 59),
(475, 'Djallon-Foula', NULL, NULL, 59),
(476, 'Djiguiya de Koloni ', NULL, NULL, 59),
(477, 'Gouanan ', NULL, NULL, 59),
(478, 'Gouandiaka', NULL, NULL, 59),
(479, 'Koussan ', NULL, NULL, 59),
(480, 'Sankarani', NULL, NULL, 59),
(481, 'Sere Moussa ani Samou', NULL, NULL, 59),
(482, 'Wassoulou Balle ', NULL, NULL, 59),
(483, 'Yallankoro-Soloba ', NULL, NULL, 59),
(484, 'Banco', NULL, NULL, 60),
(485, 'Falani', NULL, NULL, 60),
(486, 'N’Golobougou', NULL, NULL, 60),
(487, 'Benkady', NULL, NULL, 61),
(488, 'Diébé', NULL, NULL, 61),
(489, 'Diédougou', NULL, NULL, 61),
(490, 'Dolendougou', NULL, NULL, 61),
(491, 'Jekafo', NULL, NULL, 61),
(492, 'N’Dlondougou', NULL, NULL, 61),
(493, 'Dégnékoro ', NULL, NULL, 62),
(494, 'Kaladougou', NULL, NULL, 62),
(495, 'Kemekafo', NULL, NULL, 62),
(496, 'Kilidougou ', NULL, NULL, 62),
(497, 'N’Garadougou', NULL, NULL, 62),
(498, 'Wacoro', NULL, NULL, 62),
(499, 'Binko', NULL, NULL, 63),
(500, 'Guegneka ', NULL, NULL, 63),
(501, 'Kerela ', NULL, NULL, 63),
(502, 'Nangola ', NULL, NULL, 63),
(503, 'Diouman ', NULL, NULL, 63),
(504, 'Tenindougou', NULL, NULL, 63),
(505, 'Zan Coulibaly', NULL, NULL, 63),
(506, 'Massigui ', NULL, NULL, 64),
(507, 'Niantjila ', NULL, NULL, 64),
(508, 'DIAYE-COURA', NULL, NULL, 65),
(509, 'GAVINANE', NULL, NULL, 65),
(510, 'GUETEMA', NULL, NULL, 65),
(511, 'GADIABA KADIEL', NULL, NULL, 65),
(512, 'NIORO', NULL, NULL, 65),
(513, 'NIORO TOUGOUNE RANGABE', NULL, NULL, 65),
(514, 'YOURI', NULL, NULL, 65),
(515, 'BEMA', NULL, NULL, 66),
(516, 'DIANGUIRDE', NULL, NULL, 66),
(517, 'DIANKOUNTE CAMARA', NULL, NULL, 66),
(518, 'DIEMA', NULL, NULL, 66),
(519, 'DIOUMARA KOUSSATA', NULL, NULL, 66),
(520, 'FASSOUDEBE', NULL, NULL, 66),
(521, 'FATAO', NULL, NULL, 66),
(522, 'GOMITRADOUGOU', NULL, NULL, 66),
(523, 'GROUMERA', NULL, NULL, 66),
(524, 'GUEDEBINE', NULL, NULL, 66),
(525, 'LAMBIDOU', NULL, NULL, 66),
(526, 'MADIGA-SACKO', NULL, NULL, 66),
(527, 'DIEOURA', NULL, NULL, 67),
(528, 'LAKAMANE', NULL, NULL, 67),
(529, 'SANSANKIDE', NULL, NULL, 67),
(530, 'SANDARE', NULL, NULL, 67),
(531, 'SIMBY', NULL, NULL, 67),
(532, 'GOGUI', NULL, NULL, 68),
(533, 'KORERA KORE', NULL, NULL, 68),
(534, 'BANIERE-KORE', NULL, NULL, 68),
(535, 'DIABIGUE', NULL, NULL, 68),
(536, 'DIARRAH', NULL, NULL, 68),
(537, 'TROUNGOUMBE', NULL, NULL, 68),
(538, 'YERERE', NULL, NULL, 68),
(539, 'Diedougou', NULL, NULL, 69),
(540, 'Diouradougou Kafo', NULL, NULL, 69),
(541, 'Fagui ', NULL, NULL, 69),
(542, 'Gouadjikao', NULL, NULL, 69),
(543, 'Gouadji-Soukouna', NULL, NULL, 69),
(544, 'Kapala', NULL, NULL, 69),
(545, 'Kolonigue ', NULL, NULL, 69),
(546, 'Konina', NULL, NULL, 69),
(547, 'Koningue', NULL, NULL, 69),
(548, 'Konseguela', NULL, NULL, 69),
(549, 'Koromo', NULL, NULL, 69),
(550, 'Kouniana', NULL, NULL, 69),
(551, 'Koutiala', NULL, NULL, 69),
(552, 'Logouana', NULL, NULL, 69),
(553, 'N’Golonianasso', NULL, NULL, 69),
(554, 'N’Goutjina', NULL, NULL, 69),
(555, 'Nafanga ', NULL, NULL, 69),
(556, 'Nampe', NULL, NULL, 69),
(557, 'Niantaga', NULL, NULL, 69),
(558, 'Sincina', NULL, NULL, 69),
(559, 'Sinkolo', NULL, NULL, 69),
(560, 'Songo-Doubacore', NULL, NULL, 69),
(561, 'Songoua', NULL, NULL, 69),
(562, 'Sorobasso', NULL, NULL, 69),
(563, 'Yognogo', NULL, NULL, 69),
(564, 'Zanfigue', NULL, NULL, 69),
(565, 'Zangasso', NULL, NULL, 69),
(566, 'Diaramana', NULL, NULL, 69),
(567, 'Zebala', NULL, NULL, 69),
(568, 'Fakolo', NULL, NULL, 70),
(569, 'M’Pessoba', NULL, NULL, 70),
(570, 'N’Tossoni', NULL, NULL, 70),
(571, 'Tao ', NULL, NULL, 70),
(572, 'Zanina', NULL, NULL, 70),
(573, 'Kafo-Faboli', NULL, NULL, 70),
(574, 'Karagouana Mallet', NULL, NULL, 70),
(575, 'Miena', NULL, NULL, 70),
(576, 'Boura', NULL, NULL, 71),
(577, 'Ourikela', NULL, NULL, 71),
(578, 'Karangana', NULL, NULL, 71),
(579, 'Kiffosso I', NULL, NULL, 71),
(580, 'Koumbia ', NULL, NULL, 71),
(581, 'Koury', NULL, NULL, 71),
(582, 'Mahou ', NULL, NULL, 71),
(583, 'Menamba I', NULL, NULL, 71),
(584, 'Yorosso', NULL, NULL, 71),
(585, 'BAYE', NULL, NULL, 72),
(586, 'DABIA', NULL, NULL, 72),
(587, 'DIALAFARA', NULL, NULL, 72),
(588, 'DOMBIA', NULL, NULL, 72),
(589, 'FALEA', NULL, NULL, 72),
(590, 'FARABA', NULL, NULL, 72),
(591, 'GUINEGORE', NULL, NULL, 72),
(592, 'KASSAMA', NULL, NULL, 72),
(593, 'KENIEBA', NULL, NULL, 72),
(594, 'KOUROUKOTO', NULL, NULL, 72),
(595, 'SAGALO', NULL, NULL, 72),
(596, 'STAKILY', NULL, NULL, 72),
(597, 'BADIA', NULL, NULL, 73),
(598, 'BENDOUGOUBA', NULL, NULL, 73),
(599, 'BOUDOFO', NULL, NULL, 73),
(600, 'BOUGARIBAYA', NULL, NULL, 73),
(601, 'DJIDIAN', NULL, NULL, 73),
(602, ' BENKADI FOUNIA', NULL, NULL, 73),
(603, 'KITA  NORD', NULL, NULL, 73),
(604, 'KITA OUEST', NULL, NULL, 73),
(605, 'KOKOFATA', NULL, NULL, 73),
(606, 'MACONO', NULL, NULL, 73),
(607, 'NAMALA GUIMBALA', NULL, NULL, 73),
(608, 'SABOULA', NULL, NULL, 73),
(609, 'SENKO', NULL, NULL, 73),
(610, 'SIRAKORO', NULL, NULL, 73),
(611, 'SOURANZAN TOUMOTO', NULL, NULL, 73),
(612, 'TAMBAGA', NULL, NULL, 73),
(613, 'KITA', NULL, NULL, 73),
(614, 'KOULOU', NULL, NULL, 74),
(615, 'GADOUGOU I', NULL, NULL, 74),
(616, 'GADOUGOU II', NULL, NULL, 74),
(617, 'KASSARO', NULL, NULL, 75),
(618, 'KOTOUBA', NULL, NULL, 75),
(619, 'SEBEKORO', NULL, NULL, 75),
(620, 'MADINA', NULL, NULL, 75),
(621, 'DIDANKO', NULL, NULL, 76),
(622, 'DJOUGOUN', NULL, NULL, 76),
(623, 'GUEMOUCOURABA', NULL, NULL, 76),
(624, 'KOUROUNINKOTO', NULL, NULL, 76),
(625, 'SEFETO NORD', NULL, NULL, 76),
(626, 'SEFETO OUEST', NULL, NULL, 76),
(627, 'KOBIRI', NULL, NULL, 76),
(628, 'NIANTANSO', NULL, NULL, 76),
(629, 'TOUKOTO', NULL, NULL, 76),
(630, 'GUENEÏBE', NULL, NULL, 77),
(631, 'NARA ', NULL, NULL, 77),
(632, 'OUAGADOU ', NULL, NULL, 77),
(633, 'ALLAHINA ', NULL, NULL, 78),
(634, 'DABO ', NULL, NULL, 78),
(635, 'DOGOFRY ', NULL, NULL, 78),
(636, 'DILLY', NULL, NULL, 79),
(637, 'FALLOU ', NULL, NULL, 79),
(638, 'KORONGA ', NULL, NULL, 79),
(639, 'GUIRE ', NULL, NULL, 80),
(640, 'NIAMANA ', NULL, NULL, 80),
(641, 'Bandiagara', NULL, NULL, 81),
(642, 'Bara-Sara', NULL, NULL, 81),
(643, 'Borko', NULL, NULL, 81),
(644, 'Dandoli', NULL, NULL, 81),
(645, 'Diamnati', NULL, NULL, 81),
(646, 'Doganibéré', NULL, NULL, 81),
(647, 'Doucombo', NULL, NULL, 81),
(648, 'Dourou', NULL, NULL, 81),
(649, 'Kende', NULL, NULL, 81),
(650, 'Kendie', NULL, NULL, 81),
(651, 'Pignari', NULL, NULL, 81),
(652, 'Lowol Gueou', NULL, NULL, 81),
(653, 'Metoumou', NULL, NULL, 81),
(654, 'Ondougou', NULL, NULL, 81),
(655, 'Pelou', NULL, NULL, 81),
(656, 'Pignari-Bana', NULL, NULL, 81),
(657, 'Sangha', NULL, NULL, 81),
(658, 'Segue-Iré', NULL, NULL, 81),
(659, 'Soroly', NULL, NULL, 81),
(660, 'Timniri', NULL, NULL, 81),
(661, 'Wadouba', NULL, NULL, 81),
(662, 'Bankass', NULL, NULL, 82),
(663, 'Baye', NULL, NULL, 82),
(664, 'Diallassagou', NULL, NULL, 82),
(665, 'Dimbal-Habé', NULL, NULL, 82),
(666, 'Kani-Bozon', NULL, NULL, 82),
(667, 'Koulogon Habé', NULL, NULL, 82),
(668, 'Lessagou Habé', NULL, NULL, 82),
(669, 'Ouenkoro', NULL, NULL, 82),
(670, 'Segué', NULL, NULL, 82),
(671, 'Sokoura', NULL, NULL, 82),
(672, 'Soubala', NULL, NULL, 82),
(673, 'Tori', NULL, NULL, 82),
(674, 'BARAPIRELI', NULL, NULL, 83),
(675, 'BONDO', NULL, NULL, 83),
(676, 'DINANGOUROU', NULL, NULL, 83),
(677, 'DIOUNGANI', NULL, NULL, 83),
(678, 'DOUGOUTENE I', NULL, NULL, 83),
(679, 'DOUGOUTENE II', NULL, NULL, 83),
(680, 'KOPORO-PEN', NULL, NULL, 83),
(681, 'KOPROKENDIE-NA', NULL, NULL, 83),
(682, 'KORO', NULL, NULL, 83),
(683, 'MADOUGOU', NULL, NULL, 83),
(684, 'PEL MAOUDE', NULL, NULL, 83),
(685, 'YORO', NULL, NULL, 83),
(686, 'YOUDIOU', NULL, NULL, 83),
(687, 'Beguene', NULL, NULL, 84),
(688, 'Bla', NULL, NULL, 84),
(689, 'Diena', NULL, NULL, 84),
(690, 'Dougouolo', NULL, NULL, 84),
(691, 'Falo', NULL, NULL, 84),
(692, 'Fani', NULL, NULL, 84),
(693, 'Kazancasso', NULL, NULL, 84),
(694, 'Kemeni', NULL, NULL, 84),
(695, 'Korodougou', NULL, NULL, 84),
(696, 'Koulandougou', NULL, NULL, 84),
(697, 'Niala', NULL, NULL, 84),
(698, 'Samabogo', NULL, NULL, 84),
(699, 'Somasso', NULL, NULL, 84),
(700, 'Tiemena', NULL, NULL, 84),
(701, 'Touna', NULL, NULL, 84),
(702, 'Yangasso', NULL, NULL, 84),
(703, 'Dah', NULL, NULL, 85),
(704, 'Kaniegué', NULL, NULL, 85),
(705, 'Karaba', NULL, NULL, 85),
(706, 'Kassorola', NULL, NULL, 85),
(707, 'Kava', NULL, NULL, 85),
(708, 'Moribila', NULL, NULL, 85),
(709, 'Sourountouna', NULL, NULL, 85),
(710, 'Tourakolomba', NULL, NULL, 85),
(711, 'Waki', NULL, NULL, 85),
(712, 'Baramandougou', NULL, NULL, 86),
(713, 'Diakourouna', NULL, NULL, 86),
(714, 'Diéli', NULL, NULL, 86),
(715, 'Djeguena', NULL, NULL, 86),
(716, 'Fion', NULL, NULL, 86),
(717, 'N\'Goa', NULL, NULL, 86),
(718, 'Niamana', NULL, NULL, 86),
(719, 'Niasso', NULL, NULL, 86),
(720, 'N\'Torosso', NULL, NULL, 86),
(721, 'Ouolon', NULL, NULL, 86),
(722, 'San', NULL, NULL, 86),
(723, 'Siadougou', NULL, NULL, 86),
(724, 'Somo', NULL, NULL, 86),
(725, 'Sy', NULL, NULL, 86),
(726, 'Téné', NULL, NULL, 86),
(727, 'Teneni', NULL, NULL, 86),
(728, 'Bénéna', NULL, NULL, 87),
(729, 'Diora', NULL, NULL, 87),
(730, 'Fangasso', NULL, NULL, 87),
(731, 'Koula', NULL, NULL, 87),
(732, 'Lanfiala', NULL, NULL, 87),
(733, 'Mafouné', NULL, NULL, 87),
(734, 'Mandiakuy', NULL, NULL, 87),
(735, 'Ouan', NULL, NULL, 87),
(736, 'Sanekuy', NULL, NULL, 87),
(737, 'Timissa', NULL, NULL, 87),
(738, 'Tominian', NULL, NULL, 87),
(739, 'Yasso', NULL, NULL, 87),
(740, 'DALLAH', NULL, NULL, 88),
(741, 'DANGOL BORE', NULL, NULL, 88),
(742, 'DEBERE', NULL, NULL, 88),
(743, 'DIANWELY', NULL, NULL, 88),
(744, 'DJAPTODJI', NULL, NULL, 88),
(745, 'DOUENTZA', NULL, NULL, 88),
(746, 'GANDAMIA', NULL, NULL, 88),
(747, 'KERENA', NULL, NULL, 88),
(748, 'KORAROU', NULL, NULL, 88),
(749, 'KOUBEWEL-KOUNDIA', NULL, NULL, 88),
(750, 'PETAKA', NULL, NULL, 88),
(751, 'TEDIE', NULL, NULL, 88),
(752, 'NOKARA', NULL, NULL, 89),
(753, 'SERMA', NULL, NULL, 89),
(754, 'GAMNI', NULL, NULL, 89),
(755, 'HAIRE', NULL, NULL, 89),
(756, 'HOMBORI', NULL, NULL, 89),
(757, 'BAMBA', NULL, NULL, 90),
(758, 'DIANKABOU', NULL, NULL, 90),
(759, 'KASSA', NULL, NULL, 90),
(760, 'BOULIKESSI', NULL, NULL, 91),
(761, 'MONDORO', NULL, NULL, 91),
(762, 'NIAGASSADIOU', NULL, NULL, 91),
(763, 'EBANG-L-MALLEN', NULL, NULL, 92),
(764, 'N\'DAKI', NULL, NULL, 92),
(765, 'GOSSI', NULL, NULL, 92),
(766, 'OUINERDEN', NULL, NULL, 92),
(767, 'BAMBARA MAOUDE', NULL, NULL, 93),
(768, 'HARIBOMO', NULL, NULL, 93),
(769, 'INADIATAFANE', NULL, NULL, 93),
(770, 'BANIKANE', NULL, NULL, 94),
(771, 'HANZAKOMA', NULL, NULL, 94),
(772, 'RHAROUS', NULL, NULL, 94),
(773, 'SERERE', NULL, NULL, 94),
(774, 'Commune I', NULL, NULL, 95),
(775, 'Commune II', NULL, NULL, 95),
(776, 'Commune III', NULL, NULL, 95),
(777, 'Commune IV', NULL, NULL, 95),
(778, 'Commune V', NULL, NULL, 95),
(779, 'Commune VI', NULL, NULL, 95);

-- --------------------------------------------------------

--
-- Structure de la table `coor_bases`
--

CREATE TABLE `coor_bases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `region` varchar(255) NOT NULL,
  `cercle` varchar(255) NOT NULL,
  `commune` varchar(255) NOT NULL,
  `quartier` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `coor_bases`
--

INSERT INTO `coor_bases` (`id`, `region`, `cercle`, `commune`, `quartier`, `prenom`, `nom`, `titre`, `numero`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Menaka', 'Gourma', 'Watagouna', 'Château 1', 'Mamadou', 'Ould', 'Secretaire', '65432187', 'Bmmm@tu.kon', '', '2021-07-24 04:27:50', '2021-07-24 04:27:50');

-- --------------------------------------------------------

--
-- Structure de la table `coor_cercles`
--

CREATE TABLE `coor_cercles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `numCoor` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `cercle` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `coor_cercles`
--

INSERT INTO `coor_cercles` (`id`, `numCoor`, `region`, `cercle`, `prenom`, `nom`, `titre`, `numero`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, '001', 'Kidal', 'Tinza watin', 'Bakary', 'Maiga', 'Secrétaire general', '76055951', 'bkouyate@agetic.gouv.ml', '', '2021-07-24 08:46:00', '2021-07-24 08:46:00'),
(2, '1010', 'BAMAKO', 'Commune IV', 'Aboubacar', 'Sidibe', 'Exemple', '70702020', 'email@email.com', '', '2021-07-28 01:05:44', '2021-07-28 01:05:44'),
(3, '01', 'MENAKA', 'TIDERMENE', 'Mohmodou Ag', 'Alhamdou', 'Secrétaire général', '89235412', 'noemail@gmail.com', '', '2021-07-28 04:45:12', '2021-07-28 04:45:12'),
(4, '123', 'KOULIKORO', 'KATI', 'Test', 'Nom', 'Titre', '707090', 'Email@email.com', '707090', '2021-08-13 17:11:50', '2021-08-13 17:11:50'),
(5, '1', 'KAYES', 'BAFOULABE', 'Yera', 'Coulibaly', 'Coordinateur', '66 17 47 77', 'yera.coulibaly@gmail.com', '66 17 47 77', '2021-08-22 18:03:56', '2021-08-22 18:03:56'),
(6, '1', 'BAMAKO', 'BAMAKO', 'Aminata', 'Haidara', 'Coordinatrice', '93 16 75 80', 'amihaidara0109@gmail.com', '93 16 75 80 ', '2021-09-15 23:37:14', '2021-09-15 23:37:14'),
(7, '1', 'TOMBOUCTOU', 'TOMBOUCTOU', 'Baba', 'Haidara', 'Delegué chargé des femmes', '+223725476', 'moulayeahmed666@yahoo.com', '+223725476', '2021-09-20 15:05:54', '2021-09-20 15:05:54'),
(8, '94262693', 'BAMAKO', 'BAMAKO', 'Toure', 'Oumar', 'Vice-président', '94262693', 'Kumartoureyaro@yahoo.com', '94262693', '2021-09-20 15:05:59', '2021-09-20 15:05:59'),
(9, '1', 'SIKASSO', 'SIKASSO', 'Adama', 'Sogodogo', 'Coordinateur', '75358100', 'Adamasogodogo@gmail.com', '75358100', '2021-09-20 15:06:16', '2021-09-20 15:06:16'),
(10, '2', 'KOULIKORO', 'KOULIKORO', 'Tenin', 'Fane', 'Coordinatrice de Benkan', '76633744', 'Teninfane@yahoo.fr', '76633744', '2021-09-20 15:06:52', '2021-09-20 15:06:52');

-- --------------------------------------------------------

--
-- Structure de la table `coor_coms`
--

CREATE TABLE `coor_coms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `numCoor` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `cercle` varchar(255) NOT NULL,
  `commune` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `coor_coms`
--

INSERT INTO `coor_coms` (`id`, `numCoor`, `region`, `cercle`, `commune`, `prenom`, `nom`, `titre`, `numero`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Tomora', 'Kayes', 'Bafoulabé', 'Tomora', 'Dionké', 'Fofana', 'Délégué chargé de la jeunesse', '66 74 16 36', 'tomora.saboucire@gmail.com', '0000', '2021-07-24 04:44:34', '2021-07-24 04:44:34');

-- --------------------------------------------------------

--
-- Structure de la table `coor_regions`
--

CREATE TABLE `coor_regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `region` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `coor_regions`
--

INSERT INTO `coor_regions` (`id`, `region`, `prenom`, `nom`, `titre`, `numero`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Kayes', 'Dionké', 'Fofana', 'Coordinateur', '66 74 16 36', 'tomora.saboucire@gmail.com', '0000', '2021-07-24 04:41:28', '2021-07-24 04:41:28'),
(2, 'Douentza', 'Madou', 'Toure', 'Tresorier', '76976543', 'Tmadou@gmail.com', '0000', '2021-07-28 04:52:57', '2021-07-28 04:52:57'),
(3, 'Bamako', 'Admin', 'Region', 'Admin', '000000', 'region@test.com', '000000', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `enquser`
--

CREATE TABLE `enquser` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `sexe` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `dateNaissance` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `enquser`
--

INSERT INTO `enquser` (`id`, `nom`, `prenom`, `email`, `password`, `region`, `adresse`, `sexe`, `telephone`, `dateNaissance`, `created_at`, `updated_at`) VALUES
(1, 'Amadou', 'Diarra', 'adiarra@gmail.com', '123456', 'Sikasso', 'Wayerma1', 'homme', '67654543', '2002-06-24', '2021-07-24 04:23:54', '2021-07-24 04:23:54');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `titre`, `image`, `contenu`, `created_at`, `updated_at`) VALUES
(23, 'RENCONTRE AVEC LA FEDERATION DES PROFESSIONNELS DE LA MODE', '1645695245.jpg', 'SMC a rencontré le mercredi 09 févier 2022 au siège de Bɛnkan, la Fédération des professionnels de la mode (tailleurs, couturiers, stylistes, modélistes...).          \r\nCette rencontre avec les professionnels de la mode est en droite ligne avec la vision du mouvement Bɛnkan, le Pacte Citoyen qui consiste entre autres à écouter, à réveiller les énergies y compris les énergies dormantes, à toutes les fédérer et les mettre au seul service du Mali. En d\'autres termes, il s\'agit pour Bɛnkan de rassembler les Maliens autour d\'un projet commun, celui de la reconstruction d\'un nouveau Mali.\r\nSMC a rappelé à ses hôtes que l\'artisanat est un pan important du projet de société de notre Mouvement. La valorisation de l’artisanat est un creuset important pour lutter efficacement contre le chômage des jeunes et tendre vers le plein emploi', '2022-02-24 08:34:05', '2022-02-24 08:34:05'),
(24, 'LE PRESIDENT DE L’ADEMA-PASJ REÇU PAR LE PRESIDENT DE BENKAN', '1645696440.jpg', 'Merci d\'avoir fait le déplacement à Bɛnkan. Nous avons pleinement conscience de la valeur des hommes et des femmes qui composent le PASJ et recevoir une délégation de ce parti historique dans notre siège est véritablement un honneur pour nous et surtout un privilège de pouvoir nous réunir avec vous pour échanger sur les questions d\'actualité, sur les questions brûlantes de l\'heure dixit SMC en guise de mots de bienvenue.\r\nLa Coordination Nationale de Bɛnkan, le Pacte Citoyen avec à sa tête SMC a reçu le Jeudi 10 Février 2022 le Comité Exécutif du Parti Africain pour la Solidarité et la Justice – Adéma, en abrégé Adéma PASJ. Cette rencontre, deuxième du genre en 6 mois, s\'inscrit dans le cadre d\'une réunion d\'échanges sur les grands sujets d\'actualité et plus globalement sur des sujets d\'intérêt national.SMC, dans ses propos liminaires à féliciter son hôte du jour pour sa brillante élection lors du congrès du PASJ avant d\'enchaîner avec les difficultés que connaît notre pays en ce moment. Il a par ailleurs égrainé les solutions possibles pouvant faciliter le relèvement et l\'émergence de notre pays.\r\nLe Président du parti de l\'abeille Marimantia DIARRA a abondé dans le même sens que SMC et a fait état des réflexions en cours et menées par son parti en ce moment qui se matérialisent par des propositions de sortie de crise.\r\nLes deux premiers responsables ont souhaité, désormais, multiplier ce genre de rencontre afin de renforcer les liens de collaboration entre les deux formations et dans le seul but de favoriser l’émergence d’un Mali apaisé, un Mali réconcilié et un Mali développé où il fera bon d’y vivre.', '2022-02-24 08:54:00', '2022-02-24 08:54:00'),
(26, 'NOS FONDEMENTS', '1645697316.jpeg', 'Notre pays est confronté à l\'une des pires crises de son histoire contemporaine. Une crise multiforme et multidimensionnelle, qui est la sédimentation des crises socio - politiques à répétition, des conflits intra - étatiques et des rebellions sans fin, des injustices sociales et des impunités au quotidien, du chômage chronique des jeunes et la pauvreté quasi généralisée. De 1960 à nos jours, une génération sacrifiée, spoliée et presque humiliée. La gravité de la situation oblige à aller au-delà du seul constat d’échec collectif.\r\n C\'est ainsi que des hommes et des femmes épris de paix et de justice, des acteurs non issus de la classe politique conventionnelle, des acteurs économiques pour l\'essentiel ont décidé de venir sur le terrain politique en créant un mouvement politique appelé Bɛnkan, le Pacte Citoyen. \r\n•  Bɛnkan, pour tourner les pages sombres de notre histoire ; \r\n•  Bɛnkan, pour la préservation de nos valeurs issues des traditions ancestrales. \r\n•  Bɛnkan, pour redonner de l’espoir à un peuple meurtri, mais digne et fier •  Bɛnkan, pour poser les jalons d’un avenir radieux pour la postérité. Bɛnkan, pour ENFIN un Mali, libre, réconcilié, uni, solidaire et prospère.', '2022-02-24 09:08:36', '2022-02-24 09:08:36'),
(27, '𝐓𝐑𝐈𝐁𝐔𝐍𝐄 𝐝𝐮 𝐦𝐨𝐢𝐬 𝐝𝐞 𝐉𝐀𝐍𝐕𝐈𝐄𝐑', '1645697535.jpg', 'LA NATION, NOTRE BOUSSOLE COMMUNE Par Seydou Mamadou Coulibaly  \r\nPorte infaillible de nos incertitudes et de notre fierté, la Nation est notre boussole commune. C’est vers elle que nous nous tournons quand toute retraite semble coupée et que nous cherchons des repères. Elle nous situe dans le temps et l’espace et nous enseigne comment nous sortir du doute avec des exemples vécus par nos illustres devanciers. Dans la vie de tous les jours comme dans les sciences sociales, la Nation est souvent définie comme l’ensemble de femmes et d’hommes vivant sur le même territoire, partageant la même histoire, la même culture, la même origine ainsi que des principes et des valeurs ayant un caractère s’imposant à tous, en tous lieux et en toutes circonstances. C’est donc un vécu commun aussi bien matériel qu’immatériel. \r\nLes nations entre elles s’expriment à travers des signes et des symboles que sont le drapeau, l’hymne et la devise. Dans ce dialogue entre nations, le Mali se distingue en se présentant avec dans sa corbeille une riche culture et une belle histoire qui ont traversé les océans et les mers et qu’il a transmises aux autres à travers les siècles. Soubresauts de l’histoire Si l’on remonte dans le temps, dès le 4è siècle, l’empire du Ghana, dont faisait partie l’actuel Mali, s’étendait sur de nombreux pays de l’Afrique de l’Ouest. Les historiens qui parlent de cette époque décrivent une gestion exemplaire avec des sujets respectueux des us et coutumes locales. Le déclin du Ghana, à la fin du 11è siècle, marqua l’émergence de l’empire du Mali dont le plus illustre leader fut Soundjata Keïta qui régna jusqu’en 1255. Soundjata fut l’auteur de l’unification des différents royaumes rivaux qu’il conquit et apaisa pour ériger l’Empire du Mali. \r\nCe fut sous son règne que fut édictée la Charte de Kurukanfuga, édictée en 1236, dans laquelle furent balisées les règles de vie dans un Etat du Moyen Age, respectueux des droits humains. Ensuite vint l’empire Songhoï, le dernier grand empire de l’espace ouest africain. Malgré la période coloniale avec sa politique du « diviser pour régner », force est de constater que la volonté de réaliser une unité nationale a guidé les dirigeants maliens dès l’accession à la souveraineté internationale. On comprend dès lors que nos compatriotes, dans leur grande majorité, portent en eux des valeurs culturelles importantes. L’histoire récente de notre pays, marquée, entre autres, par des rébellions ne saurait masquer la grandeur d’antan ni accréditer des thèses séparatistes défendues par une majorité numérique. L’on se souvient que la première revendication de la rébellion du nord, après l’indépendance en 1960, était l’expression d’une volonté intégratrice d’appartenance. La métastase de ce conflit, qui a trouvé un terreau fertile dans la mauvaise gouvernance politique, a conduit à la crise multidimensionnelle que notre pays connait actuellement. La défense de l’intégrité territoriale du Mali est, pour l’écrasante majorité de notre peuple, la priorité absolue. Sa nécessité est également reconnue par la communauté internationale. \r\nLe patrimoine culturel national est riche et ancien, faut-il le répéter. Il est l’élément central autour duquel s’organise l’unité nationale dans la diversité. C’est cet atout qui doit être mis en avant pour parvenir à l’émergence d’une solution durable qui consolide un Mali un et indivisible. Communauté de destin Au cours des dernières années, les Maliens se sont divisés sur de nombreux sujets, faisant planer une fissure nationale à la place d’une unité nationale, surtout en cette période où le pays doit dépasser ses divisions factices. Qu’il suffise de rappeler, sans être nostalgique, les activités en faveur de l’unité nationale qui avaient cours il n’y a guère longtemps. A ce titre, l’on peut mentionner la biennale artistique et culturelle, les défilés militaires sans oublier les tournées régionales des Présidents qui étaient des moments de célébration de l’appartenance à la même communauté de destin. L’on peut constater que ces initiatives se sont peu à peu estompées ces dernières années. Comme un contre-coup, on assiste à la montée du communautarisme favorisée par l’absence de l’Etat qui entraine le repli sur soi pour se défendre et exister. D’où l’apparition de l’émergence de milices d’auto défense qui a aggravé l’affaiblissement de l’Etat. \r\nDe nombreux ennemis extérieurs profitent de cette situation pour s’impliquer négativement dans les affaires internes du pays. Il est donc vital pour le Mali de retrouver rapidement un retour à la coexistence paisible entre les communautés à travers une forte présence de l’Etat et la renaissance d’un sentiment d’appartenance nationale. La reconnaissance du drapeau national, de l’hymne national, de la devise nationale, des forces de défense et de sécurité nationales n’est possible qu’avec le renforcement de la solidarité nationale, de la justice nationale, de l’éducation nationale et de la sécurité nationale. \r\nLe citoyen malien doit être placé dans ses devoirs et remis dans ses droits. L’enseignement de notre histoire et de notre culture dans sa diversité doit être soutenu par les pouvoirs publics afin de les rendre plus connues et plus accessibles. La lutte contre les inégalités et l’injustice est l’élément indispensable à l’émergence d’un sentiment d’appartenance nationale qui permet ainsi à chaque citoyen malien de voir les vertus et les retombées positives de son patriotisme.  \r\nPrésident du Mouvement Benkan, le Pacte Citoyen', '2022-02-24 09:12:15', '2022-02-24 09:12:15'),
(28, 'NOTRE SYMBOLE', '1645697816.jpg', 'BENKAN, le Pacte Citoyen est représenté par 7 mains unies par la main droite : La main droite symbolisant la main généreuse, celle qui donne, celle qui protège, celle qui rassemble et celle qui unit. Le chiffre 7 pour magnifier nos valeurs ancestrales comme représentant l’alliance entre la femme (4) et l’homme (3) ; comme répugnant le malheur et le seitan ; comme appelant le bonheur et l’allégresse.  . Il s’agit également de faire allusion aux 7 jours de la semaine en valorisant le travail et l’abnégation. Enfin 7 pour annoncer l’ambition économique d’émerger comme un pilier solide parmi les 7 voisins du Mali.\r\n BɛN, BAARA, ɲɛTAA', '2022-02-24 09:16:56', '2022-02-24 09:16:56'),
(29, 'NOTRE VISION', '1645698180.jpeg', 'La vision de BɛNKAN, le Pacte Citoyen est axée sur la bonne gouvernance. C’est sur cette base qu’il compte permettre l’émergence d’une société malienne forgée autour des droits et des devoirs. Le respect de nos valeurs culturelles, le renforcement de la démocratie et des droits humains, la cohésion nationale, l’utilisation optimale des deniers publics et la sécurité pour tous, sont au cœur de la vision de Bɛnkan en faveur du Mali de demain. Les cinq axes qui sous-tendent cette vision sont :\r\n•   Tailler une architecture institutionnelle à la mesure des ambitions et des aspirations du peuple du Mali, à celle de son histoire et de ses traditions ;\r\n•   Bâtir une politique économique et financière libérale, performante et créatrice d’emplois ;\r\n•   Faire émerger un véritable contrat social comme base du rétablissement de la confiance entre l’État et les citoyens ;\r\n•   Faire de la sécurité des personnes et des biens sur toute l’étendue du territoire une priorité à travers le renforcement des capacités des forces de défense et de sécurité ;\r\n•   Porter le développement sur toute l’étendue du territoire national à travers la valorisation des atouts naturels et des infrastructures. \r\nBɛN, BAARA, ɲɛTAA»', '2022-02-24 09:23:00', '2022-02-24 09:23:00'),
(30, 'RENCONTRE DES CADRES DE BENKAN', '1645698390.JPG', 'Le Mardi 18 Janvier 2022 s\'est tenu au siège du Mouvement  Benkan, le Pacte Citoyen un séminaire des cadres autour du Président Seydou Mamadou COULIBALY.\r\nCe séminaire a permis aux cadres du Mouvement d\'examiner et analyser les conséquences des sanctions infligées au Mali par la CEDEAO et L\'UEMOA d\'une part; et de réfléchir et proposer des solutions pouvant amoindrir les effets des sanctions sur les populations et travailler sur des propositions de sortie de crises à proposer aux autorités d\'autre part. Un séminaire riche en informations et partage d\'idées.', '2022-02-24 09:26:30', '2022-02-24 09:26:30'),
(31, 'RENCONTRE AVEC LE \"DESC - ART - MALI\"', '1645698934.jpg', 'Le réseau des droits économiques, sociaux Et culturels du mali \"DESC - ART - MALI\" a pour objet, «l’Amélioration des conditions de vie et de travail des artisans ». Il intervient dans le domaine de l’Éducation, de la Communication et du Plaidoyer. \r\nLe réseau entend soutenir les idéaux de Benkan et de son président SMC à travers la mobilisation de nombreux militants partout au Mali.\r\nLes échanges ont porté sur les problématiques et difficultés rencontrées par le Réseau dans le secteur de l\'artisanat.\r\nSMC a dit : L’artisanat constitue la pierre angulaire du tissu économique et du développement de notre pays. Un secteur pourvoyeur d’emploi par excellence. ', '2022-02-24 09:35:34', '2022-02-24 09:35:34'),
(32, 'LE RDV DE L’EXPERTISE', '1645699268.jpg', '<p>Regards crois&eacute;s sur les recommandations des Assises Nationales de la Refondation (ANR) de l\'&Eacute;tat. Restitution et Analyse des Conclusions des ANR En pr&eacute;sence de grands t&eacute;moins, les cadres du Mouvement ont pass&eacute; en revue&nbsp; et analys&eacute; les recommandations issues&nbsp; des ANR. &nbsp;Les &eacute;changes ont port&eacute; sur:</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Le fondement des &nbsp;ANR&nbsp;;</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Le choix m&eacute;thodologique&nbsp;;</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Les ANR en chiffre&nbsp;;</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; L&rsquo;analyse des recommandations&nbsp;;</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Recommandations pour Benkan.</p>\r\n<p class=\"MsoNormal\">La r&eacute;union<span style=\"mso-spacerun: yes;\">&nbsp; </span>a recommand&eacute; la mise en place par le<strong style=\"mso-bidi-font-weight: normal;\"><span style=\"color: #e36c0a; mso-themecolor: accent6; mso-themeshade: 191;\"> P&ocirc;le Politique et Gouvernance (PPG)</span></strong><span style=\"color: #e36c0a; mso-themecolor: accent6; mso-themeshade: 191;\"> </span>d&rsquo;un groupe de travail pour approfondir la r&eacute;flexion sur des points &agrave; haut impact pour Benkan.</p>', '2022-02-24 09:41:08', '2022-02-24 09:45:05'),
(37, 'QUI EST SEYDOU MAMADOU COULIBALY ?', '1646211084.jpg', '<p style=\"text-align: justify;\"><strong><span style=\"text-decoration: underline;\">Un excellent &eacute;tudiant</span></strong></p>\r\n<p style=\"text-align: justify;\">C&rsquo;est en 1990 que Seydou Mamadou COULIBALY a fini ses &eacute;tudes &agrave; l&rsquo;ENI du Mali. Il d&eacute;crochait ainsi son dipl&ocirc;me d&rsquo;ing&eacute;nieur en &eacute;tant Major de sa promotion. &nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"text-decoration: underline;\"><strong> Un ing&eacute;nieur pers&eacute;v&eacute;rant</strong></span></p>\r\n<p style=\"text-align: justify;\">En 1991, l&rsquo;&eacute;tudiant r&ecirc;veur et ambitieux lance CIRA (Conseil d&rsquo;Ing&eacute;nierie en Recherche Appliqu&eacute;e), une entreprise sp&eacute;cialis&eacute;e dans le G&eacute;nie Civil. Il parvient avec CIRA &agrave; se b&acirc;tir dans 26 pays en Afrique, la r&eacute;putation d&rsquo;ing&eacute;nieur d&rsquo;exception, d&rsquo;homme d&rsquo;affaires avis&eacute; et surtout d&rsquo;apporteur de solutions. A force de rigueur, de m&eacute;thodes et d&rsquo;acharnement, ce qui initialement &eacute;tait un simple bureau d&rsquo;&eacute;tudes sera amen&eacute; &agrave; m&ucirc;rir et devenir un v&eacute;ritable empire. Ses entreprises sont de v&eacute;ritables f&eacute;d&eacute;rateurs d&rsquo;intelligence, qui managent aujourd&rsquo;hui plus de 1100 personnes.</p>\r\n<p style=\"text-align: justify;\"><span style=\"text-decoration: underline;\"><strong>Un cadre &agrave; la carri&egrave;re fulgurante</strong></span></p>\r\n<p style=\"text-align: justify;\">Celui qui avait commenc&eacute; sa carri&egrave;re comme Directeur de Projets dans les &eacute;tudes techniques d&rsquo;ex&eacute;cution au Mali et au Burkina Faso a occup&eacute; les fonctions d&rsquo;Ing&eacute;nieur de conception, d&rsquo;&eacute;tudes et de Directeur de Projets dans plus d&rsquo;une dizaine de pays en Afrique de l&rsquo;Ouest et Afrique Centrale. Avec pr&egrave;s d&rsquo;une trentaine d&rsquo;ann&eacute;es d&rsquo;exp&eacute;rience dans le domaine de la conception et la supervision des travaux d&rsquo;infrastructures hydrauliques, de transport et de projets de d&eacute;veloppement rural et urbain, il a fait de CIRA SA une r&eacute;f&eacute;rence au plan national, r&eacute;gional et international. Seydou Mamadou Coulibaly a &eacute;t&eacute; aussi 1er Vice-Pr&eacute;sident du CNPM (Conseil National du Patronat Malien). En 2015, il a &eacute;t&eacute; &eacute;lev&eacute; au rang d&rsquo;officier de l&rsquo;Ordre National du Mali.</p>\r\n<p style=\"text-align: justify;\"><span style=\"text-decoration: underline;\"><strong> Un acteur engag&eacute; dans la vie politique du Mali </strong></span></p>\r\n<p style=\"text-align: justify;\">Aujourd&rsquo;hui, lorsque la souverainet&eacute; et l&rsquo;existence de notre pays sont menac&eacute;es, lorsque les d&eacute;fis sont encore &eacute;normes, l&rsquo;ing&eacute;nieur estime avoir le devoir d&rsquo;apporter encore une fois, sa pierre &agrave; la redynamisation de l&rsquo;&eacute;difice Mali. Cet amoureux de sa terre natale, conscient des &eacute;normes d&eacute;fis politiques et de gouvernance qui menacent le Mali, se doit de mettre sa longue et riche exp&eacute;rience de b&acirc;tisseur, de f&eacute;d&eacute;rateur d&rsquo;intelligence au service de la Nation.</p>\r\n<p style=\"text-align: justify;\">&nbsp; Ce chef de famille, mari&eacute; et p&egrave;re de cinq enfants, fait partie de ces grands hommes sur lesquels le Mali peut compter.&nbsp;&nbsp;</p>', '2022-03-02 07:51:24', '2022-03-02 07:54:58'),
(38, 'COMMUNIQUÉ', '1646409355.jpg', '\r\nC’est avec une grande affliction que j’ai appris l’attaque des groupes terroristes contre l’armée malienne à Mondoro. Je présente mes sincères condoléances aux familles des victimes et prompt rétablissement aux blessés.\r\nLa lutte contre les groupes armés terroristes est un défi de chaque instant. Mon soutien aux FAMa et à leurs partenaires.\r\n\r\n\r\n#SeydouMamadouCoulibaly #FAMa #Mali #BenkanLePacteCitoyen #SMC\r\n', '2022-03-04 14:55:55', '2022-03-04 14:55:55'),
(39, 'MISE EN PLACE DU COMITE BENKAN/CIRA', '/tmp/phpRE5Qge', '<p>Le Comit&eacute; Benkan de CIRA &eacute;tait le jeudi 03 mars 2022 en r&eacute;union de restitution, d&rsquo;information et d&rsquo;&eacute;change. Les points inscrits &agrave; l\'ordre du jour &eacute;tait : - Pr&eacute;sentation du Comit&eacute; de Benkan CIRA; - Pr&eacute;sentation du r&ocirc;le des membres; - Pr&eacute;sentation du plan d\'action et sa mise en place. Le but de cette r&eacute;union &eacute;tait de faire le compte rendu du plan d&rsquo;action retenu pour le lancement de ses activit&eacute;s et de recueillir des suggestions.</p>', '2022-03-07 12:58:49', '2022-03-20 09:26:42'),
(40, 'Benkan ka Barow à Kita', '/tmp/phpzW3heQ', '<p>#P&ocirc;le_Implantation_Benkan</p>\r\n<p>Une d&eacute;l&eacute;gation du Mouvement Benkan &agrave; sa t&ecirc;te Monsieur Youba Ibrahima KONATE, Pr&eacute;sident du P&ocirc;le Implantation &agrave; pris part hier 05 Mars 2022 &agrave; Kita pr&eacute;cis&eacute;ment dans la commune de Bendougou, avec les repr&eacute;sentants des 19 villages de la Commune, &agrave; la premi&egrave;re phase de #Benkan ka Barow.</p>', '2022-03-07 13:04:13', '2022-03-15 07:43:51'),
(41, '𝑻𝒓𝒊𝒃𝒖𝒏𝒆 𝒅𝒖 𝒎𝒐𝒊𝒔 𝒅𝒆 𝑭𝒆́𝒗𝒓𝒊𝒆𝒓', '1646665916.jpg', '<p style=\"text-align: justify;\">&nbsp; NOTRE OUTIL DE DEFENSE UNE MONT&Eacute;E EN PUISSANCE SOLITAIRE APPR&Eacute;CI&Eacute;E ET APPR&Eacute;CIABLE &nbsp;</p>\r\n<p style=\"text-align: justify;\">&bull; Par Seydou Mamadou Coulibaly &nbsp;</p>\r\n<p style=\"text-align: justify;\">Depuis plus d&rsquo;une d&eacute;cennie, faut-il le rappeler, l&rsquo;arm&eacute;e malienne est engag&eacute;e sur le th&eacute;&acirc;tre des op&eacute;rations face &agrave; des groupes arm&eacute;s terroristes, &agrave; des narco trafiquants, &agrave; des bandits de tous genres&hellip;, imposant une guerre asym&eacute;trique et ne respectant aucune loi, ni r&egrave;gle. De nombreux citoyens maliens, militaires et civils en ont &eacute;t&eacute; des victimes et beaucoup d\'autres ont &eacute;t&eacute; rendus vuln&eacute;rables.&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;Dans un contexte g&eacute;opolitique domin&eacute; par l&rsquo;incertitude, aujourd\'hui la situation s&rsquo;av&egrave;re impr&eacute;visible. Le Mali traverse actuellement une p&eacute;riode particuli&egrave;rement difficile avec les sanctions multiformes auxquelles il fait face. Il faut esp&eacute;rer que dans un d&eacute;lai tr&egrave;s proche, la raison pr&eacute;vaudra. En attendant, malgr&eacute; cette situation et les faibles moyens, l&rsquo;arm&eacute;e se tient en premi&egrave;re ligne. Cette posture exemplaire de nos soldats exige un soutien sans r&eacute;serve de l\'ensemble des maliennes et des maliens sans exclusive. Ce dont je ne saurais douter connaissant le patriotisme partag&eacute; de tous nos compatriotes.</p>\r\n<p style=\"text-align: justify;\">&nbsp; Depuis quelques mois, il est heureux de constater l\'apaisement, voire l\'&eacute;touffement des foyers de tensions sur la presque totalit&eacute; du territoire. Les paysans vont aux champs, les &eacute;leveurs font paitre leurs animaux, les &eacute;l&egrave;ves et les enseignants vont &agrave; l&rsquo;&eacute;cole et les ouvriers &agrave; l&rsquo;&eacute;tabli sans obstacles ni entraves. Plus qu&rsquo;une libert&eacute; de mouvement, c&rsquo;est de la dignit&eacute; retrouv&eacute;e gr&acirc;ce &agrave; la mont&eacute;e en puissance de nos FAMa qui marchent d&eacute;sormais sur les traces de leurs illustres devanciers. Ceux-l&agrave; m&ecirc;me qui ont construit un v&eacute;ritable outil de d&eacute;fense, un instrument efficace de souverainet&eacute;, compos&eacute; de femmes et d&rsquo;hommes &agrave; la vaillance reconnue en dehors de nos fronti&egrave;res. &nbsp; Au-del&agrave; de la fiert&eacute; nationale commune retrouv&eacute;e, ce qui nous ravit, en ce moment avec bonheur, c&rsquo;est la consolation des veuves et des orphelins qui, malgr&eacute; la tristesse de la perte d&rsquo;&ecirc;tres chers, r&eacute;alisent pourquoi les leurs ont pay&eacute; de leurs vies afin que nous esp&eacute;rions aujourd&rsquo;hui ce qu&rsquo;avant nous f&ucirc;mes. &nbsp;</p>\r\n<p style=\"text-align: justify;\">C\'est l\'occasion de rendre un vibrant hommage, m&eacute;rit&eacute; et sans ambages &agrave; nos forces de d&eacute;fense et de s&eacute;curit&eacute;, &agrave; toute la hi&eacute;rarchie militaire et paramilitaire, aux hommes de rang, aux soldats, aux sous-officiers et officiers sup&eacute;rieurs. Ces vaillants guerriers avec courage et abn&eacute;gation, arm&eacute;s d&rsquo;un patriotisme sans limites et qui, m&ecirc;me un genou &agrave; terre, ne se sont jamais avou&eacute;s vaincus. Parfois abandonn&eacute;es, souvent abus&eacute;es, et fr&eacute;quemment sous &eacute;quip&eacute;es, nos arm&eacute;es ont montr&eacute; qu&rsquo;avec des &eacute;quipements appropri&eacute;s, un commandement professionnel, ainsi que des conditions de vie et de travail ad&eacute;quates, elles peuvent braver et vaincre toutes les formes d\'adversit&eacute;s. De telles valeurs, dont nos FAMa sont les symboles vivants, ont fait changer la peur de camp et nous valent ces jours heureux qui nous permettent d&rsquo;envisager l&rsquo;avenir avec optimisme et s&eacute;r&eacute;nit&eacute;. &nbsp;</p>\r\n<p style=\"text-align: justify;\">A cet effet, je voudrais magnifier la grande r&eacute;silience des populations locales qui ont fait preuve de r&eacute;sistance malgr&eacute; la volont&eacute; affich&eacute;e des groupes arm&eacute;s terroristes de s\'attaquer entre autres aux zones de production agricole, d\'&eacute;levage et de p&ecirc;che, aux couloirs de passage d\'animaux, aux march&eacute; quotidien et hebdomadaire, aux principaux axes de d&eacute;placement des citoyens et des touristes, ainsi qu\'aux espaces &agrave; forte potentialit&eacute; mini&egrave;re. Tout &ccedil;a dans un but de d&eacute;moraliser et affamer la population malienne avec comme objectif ultime d&rsquo;asphyxier notre &eacute;conomie. &nbsp;</p>\r\n<p style=\"text-align: justify;\">Les op&eacute;rations Maliko et K&eacute;l&eacute;tigui, lanc&eacute;es il y a quelques mois, portent des r&eacute;sultats tr&egrave;s encourageants. la prise d&rsquo;initiative par les FAMa d&eacute;montre un changement de posture salutaire. Et nous ne sommes pas seuls &agrave; reconna&icirc;tre, pour la saluer, la nouvelle r&eacute;alit&eacute; sur le terrain. Alioune Tine, un Expert Ind&eacute;pendant mandat&eacute; par les Nations Unies sur la situation des droits de l&rsquo;Homme au Mali, est arriv&eacute; &agrave; la m&ecirc;me conclusion. Dans son rapport il admet sans &eacute;quivoque en ces termes : &laquo; pour la premi&egrave;re fois depuis le d&eacute;but de mes visites en 2018, on note une am&eacute;lioration tangible dans le domaine s&eacute;curitaire &raquo;.</p>\r\n<p style=\"text-align: justify;\">&nbsp; Cette mont&eacute;e en puissance n&rsquo;est pas le fruit du hasard, elle s\'adosse sur la volont&eacute; et le leadership marqu&eacute; des hautes autorit&eacute;s qui ont su enclencher toute une dynamique en faveur du renforcement des capacit&eacute;s strat&eacute;giques et op&eacute;rationnelles des forces de d&eacute;fense et de s&eacute;curit&eacute; afin d&rsquo;avoir des r&eacute;sultats concrets sur le terrain.</p>\r\n<p style=\"text-align: justify;\">Nous nous r&eacute;jouissons de constater que notre outil de d&eacute;fense avance avec m&eacute;thode et pugnacit&eacute; et mieux, qu\'il r&eacute;duise au fur et &agrave; mesure, sa d&eacute;pendance ext&eacute;rieure en organisant progressivement la prise en main de notre d&eacute;fense nationale en portant l&rsquo;initiative de la planification strat&eacute;gique aux op&eacute;rations sur le terrain. C\'est un signe encourageant qui doit &ecirc;tre soutenu et bien chaleureusement f&eacute;licit&eacute;. C\'est aussi, le moment de transformer les ateliers centraux de Markala en un p&ocirc;le technologique qui pourrait diminuer les achats d\'armes et de munitions conventionnelles.</p>\r\n<p style=\"text-align: justify;\">&nbsp; Concomitamment, ce regain de confiance &agrave; travers le recouvrement progressif de notre territoire doit s\'accompagner d\'un vaste plan d\'envergure, un plan de campagne, de stabilisation, de rel&egrave;vement et de d&eacute;veloppement. Le retour de l\'&Eacute;tat dans les zones lib&eacute;r&eacute;es par l&rsquo;arm&eacute;e doit s\'acc&eacute;l&eacute;rer et s&rsquo;organiser selon les r&egrave;gles de l\'art. &nbsp;</p>\r\n<p style=\"text-align: justify;\">Il nous faut rapidement nous attaquer &agrave; d&rsquo;autres tares de notre soci&eacute;t&eacute; pour favoriser le retour rapide et incessant de la coh&eacute;sion sociale, la r&eacute;conciliation nationale, mais surtout la mise en place d\'une gouvernance vertueuse, &agrave; tous les niveaux, qui reste la condition sin&eacute;quanun de la victoire totale, celle du bien sur le mal, celle du d&eacute;veloppement sur la pauvret&eacute;, celle de la paix sur les conflits, celle de l\'&eacute;mergence sur le recul des acquis d&eacute;mocratiques. &nbsp;</p>\r\n<p style=\"text-align: justify;\">&bull; Pr&eacute;sident du Mouvement Benkan, Pacte citoyen</p>\r\n<p style=\"text-align: justify;\">&nbsp; #SeydouMamadouCoulibaly #Benkan#LePacteCitoyen #SMC</p>', '2022-03-07 14:11:56', '2022-03-07 14:16:11'),
(42, 'Bonne Journée Internationales des Droits Femmes.', '1646822741.jpg', '', '2022-03-09 09:45:41', '2022-03-09 09:45:41'),
(43, 'Message de la Présidente ANKA SEYDOU', '/tmp/php1ZmJ2o', '<p>Message Madame Soumare Tenin FANE, Pr&eacute;sidente du Club de Soutien aux id&eacute;aux de #SMC &agrave; l&rsquo;occasion de la Journ&eacute;e Internationale de la Femme.</p>', '2022-03-09 09:53:06', '2022-03-15 07:35:55'),
(44, 'LES ARTISANS PROFESSIONNELS TRANSFORMATEURS DU COTON DU MALI', '1647771334.jpg', '\r\nRencontre avec les artisans professionnels transformateurs du coton du Mali le mardi 15 mars 2022 au siège du mouvement Benkan, le Pacte citoyen.\r\n\r\n\r\nCe fut l\'occasion pour SMC de les remercier, les féliciter pour leur soutien inébranlable au mouvement Benkan.\r\n\r\n\r\nL\'exploitation et la transformation du coton est un facteur clé du développement de notre pays, et les artisans en sont là pierre angulaire.\r\n', '2022-03-20 09:15:34', '2022-03-20 09:15:34'),
(45, 'CONFERENCE DES MENTORS', '1647772514.jpg', '\r\nSMC a participé le 18 mars 2022 à yirimadio à la conférence des mentors du Programme Entrepreneuriat vert & Leadership organisée par Sanuva Academy et dont le thème était \"Entrepreneuriat & Investissements\"\r\n\r\n\r\nCe fut l\'occasion de rencontrer des jeunes pétris de talents, qui s\'intéressent aux énergies durables, dixit SMC .\r\n\r\n\r\nUne réelle opportunité de partager avec ces jeunes entrepreneurs, les bonnes pratiques entreprenariales et les pièges à eviter pour impacter positivement sur le développement de notre pays.\r\n', '2022-03-20 09:35:14', '2022-03-20 09:35:14'),
(47, 'Communiqué conjoint pôle  jeunesse Benkan / jeunesse Adema-PASJ', '1647773109.jpeg', '', '2022-03-20 09:45:09', '2022-03-20 09:45:09'),
(50, 'CELEBRATION DU 08 MARS 2022', '1648716844.jpg', 'Dans le cadre des festivités de la célébration du 08 Mars, le Mouvement Benkan, le pacte Citoyen était à l’honneur en CIII du district de Bamako ce jour 19 mars 2022 avec l’association des femmes >. Rappelons que la cérémonie était sous le Parrainage de Mr Amadou Cisse Président du pôle Organisation et Mobilisation dudit mouvement.', '2022-03-31 06:54:04', '2022-03-31 06:54:04'),
(51, '𝗟𝗲 𝗖𝗼𝗺𝗶𝘁𝗲́ 𝗕𝗲𝗻𝗸𝗮𝗻 𝗱𝗲 𝗖𝗜𝗥𝗔 𝗰𝗲́𝗹𝗲̀𝗯𝗿𝗲 𝗹𝗮 𝗙𝗲𝗺𝗺𝗲', '1648716909.jpg', '<p>CIRA HOLDING SAS N\'EST PAS RESTE EN MARGE DE LA CELEBRATION DE LA JOURNEE INTERNATIONALE DES DROITS DE LA FEMME, EDITION 2022. A l\'occasion les femmes de CIRA ont pu mettre en valeur un des piliers essentiels du mouvement Bɛnkan &agrave; savoir la promotion du leadership f&eacute;minin &agrave; travers une conf&eacute;rence d&eacute;bat sur le m&ecirc;me th&egrave;me. Ce fut l\'occasion pour la conf&eacute;renci&egrave;re de rappeler que les combats men&eacute;s par les femmes du Mali ont marqu&eacute; l\'histoire #contemporaine de notre pays. L\'histoire des femmes du Mali, c\'est aussi l\'histoire des valeurs qui fondent notre soci&eacute;t&eacute; et qui font de nos mamans, de nos s&oelig;urs, de nos femmes les boucliers de nos us et coutumes, mais surtout le socle et la poutre ma&icirc;tresse du progr&egrave;s de notre jeune #d&eacute;mocratie. Cette conf&eacute;rence a &eacute;t&eacute; rendue possible gr&acirc;ce au comit&eacute; Benkan de CIRA qui &eacute;tait ce jour 24 mars 2022 dans la salle de conf&eacute;rences de DFA Communication pour c&eacute;l&eacute;brer les droits de la femme. A not&eacute; que l\'activit&eacute; &eacute;tait sous la co-pr&eacute;sidence de Dionk&eacute; FOFANA, Directeur de Cabinet du Pr&eacute;sident SMC, et de Monsieur Lacina DIALLO Directeur Adjoint du Groupe CIRA HOLDING SAS&nbsp;&nbsp;</p>', '2022-03-31 06:55:09', '2022-03-31 07:00:49'),
(52, 'HOMMAGE AUX MARTYRS', '1648717000.jpg', 'Au nom de la démocratie et de la souveraineté du peuple malien continuons à honorer le sacrifice de nos martyrs du 26 mars 1991.', '2022-03-31 06:56:40', '2022-03-31 06:56:40'),
(53, 'Bɛnkan, le Pacte Citoyen à la rencontre du Mali profond', '1648717198.jpg', '\r\nBougouni, première étape d\'une large concertation citoyenne \r\n\r\n\r\nDans le cadre de la sensibilisation et de la mobilisation de nos compatriotes de Garalo et de Kolondièba en vue de l\'implantation prochaine du Mouvement Bɛnkan dans les dites localités, une délégation conduite par Honorable Safiatou Diourté / Sanogo accompagnée de Amadou Cissé, Président du Pôle Organisation et Mobilisation, a sillonné du 26 au 29 mars 2022 les villages rattachés aux communes de Defina et Yiridougou.\r\n\r\n\r\n1. *Étape de la Commune de Defina* : Les villages ci-après ont été visités\r\n- village de Zanabladiè ;\r\n- Village de Donkéléna ;\r\n- Village de féléfélé ;\r\n- Village de Dègèbo ;\r\n\r\n\r\n2. *Étape de la Commune de Yiridougou*: Les villages ci-après ont été visités:\r\n- Village de Wourounpana ;\r\n- Village de Zamma ;\r\n- Village de Gomogo ;\r\n- Village de Soungala ;\r\n- Village de Sirakorola;\r\n-Village de Soroni;\r\nVillage de Diarrala\r\n\r\n\r\nLa mission a permis de présenter le Mouvement Bɛnkan, ses fondements, ses valeurs, ses principes, ses ambitions et ses objectifs. Elle a permis également de présenter le Président du Mouvement, son Background, son parcours et surtout les valeurs qu\'il incarne.\r\n', '2022-03-31 06:59:58', '2022-03-31 06:59:58'),
(54, 'FORMATION DE 150 FEMMES DE KOUTIALA EN SAVONNERIE', '1648717856.jpg', '\r\nA l\'occasion du 1er anniversaire de Bɛnkan, le Pacte Citoyen et conformément à sa politique de renforcement des capacités des femmes, le mouvement à travers son Pôle Implantation a procédé à la formation de #150 femmes de Koutiala du 14 au 19 mars 2022 en savonnerie en vue de leur autonomisation.\r\nPour le couronnement de cette activité et dans l\'optique d\'opérationnalisation du savoir-faire acquis, Bɛnkan a remis aux femmes des kits de démarrage, ainsi qu\'une importante quantité d\'intrants.\r\nUne délégation venue de Bamako ce jour 30 mars 2002, conduite par Madame #Alima DABO, 6ème Vice-présidente du mouvement Bɛnkan accompagnée du Président du Pôle Implantation, #Youba Ibrahima KONATÉ et de son Adjointe #Agna TOURÉ était à l\'honneur dans la capitale de l\'or blanc, le coton.\r\n\r\n\r\nD\'autres actions du même genre sont en cours de préparation dans d\'autres localités.\r\n\r\n\r\n#Unis Pour le Mali\r\n', '2022-03-31 07:10:56', '2022-03-31 07:10:56'),
(55, 'Actualités du Pôle Implantation', '1648717979.jpg', '\r\nLA COORDINATION BƐNKAN DE LA COMMUNE V SE RÉADAPTE POUR MIEUX GERER LE FLUX ENTRANT DE NOUVEAUX CADRES \r\n\r\n\r\nDans le cadre de son ouverture politique et en vue d\'un large rassemblement au niveau de la commune 5, la coordination Benkan de ladite commune a organisé le mardi 30 mars 2022 une réunion stratégique initiée par la Vice-présidente de Bamako, Mme Traoré Oumou Bocoum et à laquelle a pris part Ibrahim Traoré, membre du cabinet du Président chargé des grands électeurs.\r\n\r\n\r\nLa réunion a permis de travailler à la mise en place d\'une stratégie de remembrement et d\'accueil de personnalités diverses au sein de la coordination locale.\r\n\r\n\r\nDe telles réunions se feront dans toutes les communes de Bamako et à l\'échelle du pays.\r\n\r\n\r\n#Unis pour le Mali\r\n', '2022-03-31 07:12:59', '2022-03-31 07:12:59'),
(56, 'BENKAN SOUHAITE UN BON MOIS DE RAMADAN A TOUS LES MUSULMANS', '1648981666.jpg', ' \r\n\r\nQue ce mois béni soit un mois de dévotion, de paix et de rapprochement des cœurs afin de nous rassembler pour la grandeur de notre chère patrie .\r\n', '2022-04-03 08:27:46', '2022-04-03 08:27:46'),
(57, 'SMC VOUS SOUHAITE UN BON MOIS DE RAMADAN', '1648984483.jpg', 'Bon mois de Ramadan à toute la Communauté musulmane \r\n ', '2022-04-03 09:14:43', '2022-04-03 09:14:43'),
(58, 'RUPTURE DE JEÛNE COLLECTIVE', '1649584676.jpg', '\r\nLe mouvement Benkan, le Pacte Citoyen a organisé ce vendredi 08 Avril au CICB une rupture de jeûne collective avec ses cadres, ses militants et sympathisants.\r\n\r\n\r\nLa cérémonie à laquelle étaient invités des hautes personnalités comme As Seid Ousmane Chérif Haidara, le guide spirituel des Ancardines et non moins Président du Conseil Islamique; du fils du guide As Seid Hamed Tidiani Haidara, le ministre des affaires étrangères, M Abdoulaye Diop, le représentant du ministre des cultes et bien d\'autres, a fini par la visite des stands à la foire hallal organisée par l\'agence de communication Influence.\r\n\r\n\r\nA rappeler que le Président du mouvement Benkan M. Seydou Mamadou Coulibaly était le bienfaiteur officiel de ladite foire pour avoir pratiqué un important rabais sur le prix des Denrées de premières nécessités comme le riz, le mil, le mais, l\'huile et le lait afin d\'atténuer les souffrances des populations et accompagner la communauté malienne en ce mois béni de ramadan.\r\n', '2022-04-10 07:57:56', '2022-04-10 07:57:56'),
(59, 'RUPTURE COLLECTIVE A L’INSTITUT DES JEUNES AVEUGLES (IJA)', '1650892841.jpg', '\r\nLe vendredi 15 avril 2022, le mouvement Benkan a organisé une rupture collective avec les différentes associations de non et ou de mal-voyants.\r\n\r\n\r\nLa rencontre a eu lieu à l’institut des jeunes aveugles du Mali (IJA). Après une visite des locaux du dit institut, le président du mouvement Benkan Seydou Mamadou Coulibaly a rompu son #jeûne avec l’ensemble des associations conviées.\r\n\r\n\r\nCe fut un moment de partage dans un esprit fraternel, le mouvement Benkan remercie les membres de l’association pour leur mobilisation.\r\n', '2022-04-25 11:20:41', '2022-04-25 11:20:41'),
(60, 'Bonne Fête', '1650892932.jpeg', '', '2022-04-25 11:22:12', '2022-04-25 11:22:12'),
(61, 'Présentation de condoléance à la famille HAIDARA', '1650893184.jpg', '<p>Dimanche le 24 avril 2022, une d&eacute;l&eacute;gation du Mouvement Benkan, le Pacte Citoyen conduite par le Pr&eacute;sident Seydou Mamadou s\'est rendue &agrave; Nioro pour pr&eacute;senter les condol&eacute;ances de Benkan au ch&eacute;rif M\'Bouill&eacute; Haidara ainsi qu\'&agrave; sa famille durement &eacute;prouv&eacute;e suite au d&eacute;c&egrave;s de son &eacute;pouse. Que son &acirc;me repose en PAIX</p>', '2022-04-25 11:26:24', '2022-08-01 05:43:29'),
(62, 'BONNE NUIT DU DESTIN A TOUTES ET A TOUS', '1651567503.jpg', '', '2022-05-03 06:45:03', '2022-05-03 06:45:03'),
(63, 'VISITE DE COURTOISIE AU PACP', '1651567809.jpg', 'Le jeudi 28 avril 2022 le président SMC a rendu une visite de courtoisie au Président du Parti pour l\'Action Civique et Patriotique (PACP), Monsieur Yeah Samake . Les échanges entre les deux formations ont essentiellement porté sur la situation de notre pays et les perspectives de sortie de crise.', '2022-05-03 06:50:09', '2022-05-03 06:50:09'),
(64, 'RENCONTRE AVEC LA JEUNESSE DE L\'ASSOCIATION POUR LE MALI', '1651567955.jpg', '\r\nLe Président SMC a rencontré le 29 avril 2022, une délégation de la Jeunesse de l\'Association Pour le Mali avec à sa tête leur président, Monsieur Cheickna KONÉ dit Sékou.\r\n\r\n\r\nLa rencontre a permis aux deux organisations de se connaître mutuellement et surtout de dégager une cohérence de vue sur la gouvernance à proposer afin d\'amorcer un développement durable de notre pays.\r\n\r\n\r\nElle a également été l\'occasion de poser les bases d\'une collaboration franche entre les deux structures.\r\n', '2022-05-03 06:52:35', '2022-05-03 06:52:35'),
(65, 'AW SAMBE SAMBE', '1651568125.jpeg', '', '2022-05-03 06:55:25', '2022-05-03 06:55:25'),
(66, '01 MAI 2022', '1651570225.jpeg', '\r\nLe travail libère l\'homme\r\n\r\n\r\nÀ l\'occasion de la fête du travail, nous profitons pour féliciter tous les travailleurs pour leurs efforts accomplis pour la construction de notre patrie.\r\n\r\n\r\nCélébrons le travail bonne fête!\r\n', '2022-05-03 07:30:25', '2022-05-03 07:30:25'),
(67, 'BONNE JOURNEE INTERNATIONALE DU TRAVAIL', '1651570367.jpg', '', '2022-05-03 07:32:47', '2022-05-03 07:32:47'),
(68, 'COCKTAIL DINATOIRE A L\'OCCASION DE LA FÊTE', '1651617414.JPG', '\r\nLe comité Bɛnkan de CIRA SAS a organisé aujourd\'hui Mardi 03 mai 2022 un cocktail dînatoire à l\'occasion de la fête de Ramadan dans les locaux de l\'entreprise.\r\n\r\n\r\nL\'occasion pour le Président Seydou Mamadou Coulibaly d\'expliquer pendant une bonne trentaine de minutes les 5 leviers du projet de société que propose Benkan Le Pacte Citoyen pour la stabilité et l\'émergence du Mali.\r\n\r\n\r\nCe fut également l\'occasion de remercier l\'ensemble de ses collaborateurs et de formuler à leur endroit les vœux de plein succès et de pleine réussite.\r\n\r\n\r\nEnfin le Président SMC a loué et appelé les faveurs d\'Allah le Très Miséricordieux pour un Mali de paix et un Mali réconcilié.\r\n', '2022-05-03 20:36:54', '2022-05-03 20:36:54'),
(69, 'TRIBUNE DU MOIS DE MARS', '1651739545.jpg', '\r\nTRIBUNE CONSTRUIRE DES PARTENARIATS GAGNANT – GAGNANT\r\n\r\n\r\n \r\n\r\n\r\n POUR UN MALI DÉBOUT Par Seydou Mamadou Coulibaly\r\n\r\n\r\n \r\n\r\n\r\nAujourd’hui, à l’ère de la mondialisation, aucun pays ne peut vivre en autarcie et il est important de rappeler qu’il appartient à chaque État de protéger ses citoyens, d’assurer la prospérité de la nation et préparer ainsi l’avenir de la postérité. C’est d’ailleurs la raison pour laquelle chaque État s’évertue à définir des domaines régaliens dont la quintessence s’articule essentiellement autour de la défense des intérêts du pays, de la protection et l’épanouissement des citoyens. Cette réalité semble être aujourd’hui une priorité dans nombre de pays Africains sous l’impulsion d’une nouvelle génération de citoyens africains dans l’optique de favoriser le développement durable de l’Afrique.\r\n\r\n\r\n \r\n\r\n\r\nLe Mali n’est pas en reste, depuis les évènements d’Août 2020, le pays est engagé dans un processus de refondation nationale. Les autorités de la transition ont amorcé un véritable changement de paradigme en s’engageant vers la mise en place d’une diplomatie agressive visant à diversifier les partenaires du Mali. Dans ce processus, il est convenable et urgent de doter notre diplomatie d’outils et de moyens efficaces qui lui permettent de peser sur les relations inter – Etat et d’avoir voix au chapitre dans le concert des nations. \r\n\r\n\r\n \r\n\r\n\r\nDepuis plus d’une décennie le Mali est plongé dans une crise multiforme sans précédent avec de sérieuses conséquences sur tous les secteurs vitaux et particulièrement sur sa capacité à sécuriser et à protéger ses populations. La faiblesse des gouvernements d’alors et l’incapacité de la classe politique à proposer des solutions malgré les diverses alliances ont entrainé une perte de repère et une crise de confiance des maliens vis-à-vis des institutions étatiques. La complexité de la situation du Mali est devenue une source de préoccupation majeure et sa résolution appelle aujourd’hui au rassemblement des capacités internes et à la diversification de ses relations diplomatiques.\r\n\r\n\r\n \r\n\r\n\r\nLa neutralité comme principe hérité de nos illustres devanciers.\r\n\r\n\r\n \r\n\r\n\r\nLe Mali est un pays traditionnellement neutre vis-à-vis des différents blocs d’influence, il fait d’ailleurs partie des 24 premières nations à adhérer au Mouvement des non-alignés, crée en septembre 1961 à Belgrade. Ce principe de neutralité ne doit pas empêcher le Mali de se donner l’autonomie nécessaire à son épanouissement dans les relations internationales. C’est pourquoi le père de la nation, le feu Président Modibo Keita avait sa vision et sa définition de « non – alignés » qui consistait à dire que « le non-alignement n’est pas un non-engagement, les nations émancipées du colonialisme se sentant toujours engagées, et à fond, dans la suite du combat contre ce système… ». Fin de citation.\r\n\r\n\r\n \r\n\r\n\r\nCette volonté de diversification des relations doit s’exprimer de manière pérenne.\r\n\r\n\r\n \r\n\r\n\r\n Nous devons susciter chez les autres États de l’intérêt à développer un partenariat durable et fécond avec nous, basé sur du « win - win », en d’autres termes un partenariat gagnant – gagnant. Ceci exigera des dirigeants la mise en place et la promotion d’un environnement favorable aux affaires, la solidité des institutions, la promotion de la démocratie et de la bonne gouvernance. \r\n\r\n\r\n Il ne s’agit pas de la mise à disposition des matières premières à des prix dérisoires, mais à démontrer sa capacité à produire de la valeur ajoutée profitable aux ambitions de développement clairement définies et en finir avec la détérioration des termes de l’échange. \r\n\r\n\r\nConstruire un socle solide pour l’émergence du Mali.\r\n\r\n\r\nMalgré la crise le pays tient son rang de 3ème économie de l’UEMOA et de 5ème économie de l’espace CEDEAO. Cela traduit à la fois une bonne résilience et un dynamisme constant. Malheureusement depuis près de quatre mois, le Mali fait face à de lourdes sanctions politiques, diplomatiques, économiques et commerciales de la part de l’UEMOA et de la CEDEAO.\r\n\r\n\r\n Si elles ne sont pas levées rapidement, l’économie malienne pourrait perdre sa vitalité sur le long terme. L’affaiblissement du Mali pourrait provoquer un effet domino en Afrique de l’Ouest, car en plus de l’appartenance au même espace géographique, huit Etats ont une monnaie commune. De nombreux États voisins du Mali, notamment le Sénégal et la Côte d’Ivoire sentent plus ou moins les effets négatifs des sanctions contre le Mali. \r\n\r\n\r\nLa base de l’émergence du Mali réside dans son économie, sa sécurité et sa diplomatie.\r\n\r\n\r\n \r\n\r\n\r\n Ce triptyque doit bénéficier d’une vigilance accrue et d’un accompagnement particulier et solide pendant la transition. L’État doit se recentrer sur ces trois secteurs prioritaires dont le renforcement déterminera d’abord le relèvement, puis la stabilité et enfin le développement de notre pays.\r\n\r\n\r\n \r\n\r\n\r\nConstruire une cohérence diplomatique\r\n\r\n\r\nEn ces périodes de grandes incertitudes et dans un monde qui rétrograde vers une logique bipolaire, le Mali doit soigneusement choisir ses partenaires en construisant des relations équilibrées dans le respect de ses intérêts fondamentaux.\r\n\r\n\r\n \r\n\r\n\r\n Cette cohérence devra être désormais balisée par une démarche diplomatique rigoureuse et porteuse d’une ambition claire. Les partenaires sécuritaires et économiques devront être sélectionnés en tenant compte de leur capacité à produire des résultats sur le long terme. \r\n\r\n\r\nNotre diplomatie doit être guidée par les 3 principes sacro-saints des relations internationales, à savoir le principe de l’universalité qui réside dans notre capacité à nous ouvrir au monde et à entreprendre des partenariats justes et équilibrés ; \r\n\r\n\r\nle principe de la responsabilité qui réside dans notre capacité à stabiliser nos frontières et à sécuriser nos concitoyens ; \r\n\r\n\r\nle principe de la coopération internationale qui réside dans notre capacité à respecter nos engagements dans le concert des nations. Le renforcement de ce triptyque contribuera à la cohérence et à la crédibilité de notre outil de souveraineté et de la coopération internationale. \r\n\r\n\r\n \r\n\r\n\r\nPrésident du Mouvement Benkan, le Pacte Citoyen\r\n', '2022-05-05 06:32:25', '2022-05-05 06:32:25'),
(70, 'RAMADAN 2022', '1651825427.JPG', '\r\nPrésentation de vœux des membres et sympathisants du Mouvement Benkan, le Pacte Citoyen au Président #SMC à l’occasion de l\'Aïd El Fitr.\r\n\r\n\r\n#SeydouMamadouCoulibaly\r\n#BenkanLePacteCitoyen\r\n#UnisPourLeMali\r\n#SMC\r\n', '2022-05-06 06:23:47', '2022-05-06 06:23:47'),
(71, 'Actualités du Président SMC', '1652861555.jpg', 'Dimanche 15 Mai à Montréal au Canada, le président Seydou Mamadou Coulibaly a reçu la visite de certains membres de la coordination de Benkan Canada.\r\nSMC a tenu à féliciter cette diaspora malienne pour son soutien indéfectible au projet Benkan.', '2022-05-18 06:12:35', '2022-05-18 06:12:35');
INSERT INTO `posts` (`id`, `titre`, `image`, `contenu`, `created_at`, `updated_at`) VALUES
(72, 'TRIBUNE DU MOIS D\'AVRIL', '1655236000.jpeg', '\r\nTRIBUNE CONSTRUIRE DES PARTENARIATS GAGNANT – GAGNANT\r\n\r\n\r\nPOUR UN MALI DÉBOUT Par Seydou Mamadou Coulibaly\r\n\r\n\r\nAujourd’hui, à l’ère de la mondialisation, aucun pays ne peut vivre en autarcie et il est important de rappeler qu’il appartient à chaque État de protéger ses citoyens, d’assurer la prospérité de la nation et préparer ainsi l’avenir de la postérité. C’est d’ailleurs la raison pour laquelle chaque État s’évertue à définir des domaines régaliens dont la quintessence s’articule essentiellement autour de la défense des intérêts du pays, de la protection et l’épanouissement des citoyens. Cette réalité semble être aujourd’hui une priorité dans nombre de pays Africains sous l’impulsion d’une nouvelle génération de citoyens africains dans l’optique de favoriser le développement durable de l’Afrique.\r\nLe Mali n’est pas en reste, depuis les évènements d’Août 2020, le pays est engagé dans un processus de refondation nationale. Les autorités de la transition ont amorcé un véritable changement de paradigme en s’engageant vers la mise en place d’une diplomatie agressive visant à diversifier les partenaires du Mali. Dans ce processus, il est convenable et urgent de doter notre diplomatie d’outils et de moyens efficaces qui lui permettent de peser sur les relations inter – Etat et d’avoir voix au chapitre dans le concert des nations.\r\nDepuis plus d’une décennie le Mali est plongé dans une crise multiforme sans précédent avec de sérieuses conséquences sur tous les secteurs vitaux et particulièrement sur sa capacité à sécuriser et à protéger ses populations. La faiblesse des gouvernements d’alors et l’incapacité de la classe politique à proposer des solutions malgré les diverses alliances ont entrainé une perte de repère et une crise de confiance des maliens vis-à-vis des institutions étatiques. La complexité de la situation du Mali est devenue une source de préoccupation majeure et sa résolution appelle aujourd’hui au rassemblement des capacités internes et à la diversification de ses relations diplomatiques.\r\nLa neutralité comme principe hérité de nos illustres devanciers.\r\nLe Mali est un pays traditionnellement neutre vis-à-vis des différents blocs d’influence, il fait d’ailleurs partie des 24 premières nations à adhérer au Mouvement des non-alignés, crée en septembre 1961 à Belgrade. Ce principe de neutralité ne doit pas empêcher le Mali de se donner l’autonomie nécessaire à son épanouissement dans les relations internationales. C’est pourquoi le père de la nation, le feu Président Modibo Keita avait sa vision et sa définition de « non – alignés » qui consistait à dire que « le non-alignement n’est pas un non-engagement, les nations émancipées du colonialisme se sentant toujours engagées, et à fond, dans la suite du combat contre ce système… ». Fin de citation.\r\nCette volonté de diversification des relations doit s’exprimer de manière pérenne.\r\nNous devons susciter chez les autres États de l’intérêt à développer un partenariat durable et fécond avec nous, basé sur du « win - win », en d’autres termes un partenariat gagnant – gagnant. Ceci exigera des dirigeants la mise en place et la promotion d’un environnement favorable aux affaires, la solidité des institutions, la promotion de la démocratie et de la bonne gouvernance.\r\nIl ne s’agit pas de la mise à disposition des matières premières à des prix dérisoires, mais à démontrer sa capacité à produire de la valeur ajoutée profitable aux ambitions de développement clairement définies et en finir avec la détérioration des termes de l’échange.\r\nConstruire un socle solide pour l’émergence du Mali.\r\nMalgré la crise le pays tient son rang de 3ème économie de l’UEMOA et de 5ème économie de l’espace CEDEAO. Cela traduit à la fois une bonne résilience et un dynamisme constant. Malheureusement depuis près de quatre mois, le Mali fait face à de lourdes sanctions politiques, diplomatiques, économiques et commerciales de la part de l’UEMOA et de la CEDEAO.\r\nSi elles ne sont pas levées rapidement, l’économie malienne pourrait perdre sa vitalité sur le long terme. L’affaiblissement du Mali pourrait provoquer un effet domino en Afrique de l’Ouest, car en plus de l’appartenance au même espace géographique, huit Etats ont une monnaie commune. De nombreux États voisins du Mali, notamment le Sénégal et la Côte d’Ivoire sentent plus ou moins les effets négatifs des sanctions contre le Mali.\r\nLa base de l’émergence du Mali réside dans son économie, sa sécurité et sa diplomatie.\r\nCe triptyque doit bénéficier d’une vigilance accrue et d’un accompagnement particulier et solide pendant la transition. L’État doit se recentrer sur ces trois secteurs prioritaires dont le renforcement déterminera d’abord le relèvement, puis la stabilité et enfin le développement de notre pays.\r\nConstruire une cohérence diplomatique\r\nEn ces périodes de grandes incertitudes et dans un monde qui rétrograde vers une logique bipolaire, le Mali doit soigneusement choisir ses partenaires en construisant des relations équilibrées dans le respect de ses intérêts fondamentaux.\r\nCette cohérence devra être désormais balisée par une démarche diplomatique rigoureuse et porteuse d’une ambition claire. Les partenaires sécuritaires et économiques devront être sélectionnés en tenant compte de leur capacité à produire des résultats sur le long terme.\r\nNotre diplomatie doit être guidée par les 3 principes sacro-saints des relations internationales, à savoir le principe de l’universalité qui réside dans notre capacité à nous ouvrir au monde et à entreprendre des partenariats justes et équilibrés ;\r\nle principe de la responsabilité qui réside dans notre capacité à stabiliser nos frontières et à sécuriser nos concitoyens ;\r\nle principe de la coopération internationale qui réside dans notre capacité à respecter nos engagements dans le concert des nations. Le renforcement de ce triptyque contribuera à la cohérence et à la crédibilité de notre outil de souveraineté et de la coopération internationale.\r\nPrésident du Mouvement Benkan, le Pacte Citoyen\r\n', '2022-06-14 17:46:40', '2022-06-14 17:46:40'),
(73, 'TRIBUNE DU MOIS DE MAI', '1655236189.jpeg', 'Du désespoir à la résilience pour un Mali débout !\r\nPar Seydou Mamadou Coulibaly\r\nUn désespoir du fait des crises multiformes à répétition \r\nNul n’a eu besoin d’un microscope pour observer les conséquences des décennies d’instabilité, d’insécurité et de mauvaise gouvernance… La dernière décennie a été celle qui a accéléré la détérioration des conditions de vie de nos concitoyens. Elle fut caractérisée par entre autres ; une quasi généralisation de l’insécurité dans le septentrion et dans les zones inondées et exondées du centre du pays, un accès difficile aux services essentiels de base (éducation, santé, justice sociale...), une université devenue une fabrique à chômeurs, un panier de la ménagère qui se vide par le fait de la détérioration du pouvoir d’achat, la flambée exponentielle et incontrôlée des produits de première nécessité, le coût de la vie en hausse continue, la raréfaction du flux et de la transaction financière.                                                     \r\nAujourd’hui plus qu’hier le front de l\'ennemi du Mali et de l’Afrique n’est plus dissimulé. Cet ennemi est d\'abord et avant tout au dedans, il est dans nos villes et dans nos villages, il est dans nos rues et dans nos maisons. Il a un visage, il a un nom, et il s\'appelle pauvreté, il se nomme insécurité, il se prénomme gabegie, il se surnomme mauvaise gouvernance, il s’affuble mauvaise éducation, Il s’identifie à la perte de nos valeurs ancestrales... \r\nNotre capacité de résilience est notre meilleur atout\r\nÀ chaque fois que notre pays a été en face des difficultés, notre histoire a surgi pour nous rappeler que nous sommes un grand peuple et que nous avons été aux avant-postes des causes justes. Le Mali s’est tenu aux côtés de nombreux pays dans leur quête d’indépendance et de démocratie.\r\nNotre histoire nous rappelle encore une fois que dès le 4ème siècle au sein de l’empire du Ghana, plusieurs intellectuels étrangers servaient dans la cour de l’empereur en toute sérénité. Un système de gouvernance bien stabilisé sur plusieurs siècles qui a servi d’exemple ailleurs. La grande liberté des nations est aussi la possibilité de nouer des alliances stratégiques jugées pertinentes pour la quête de la paix et du développement.\r\nMalgré l’embargo et les mesures d’austérité imposées par les institutions communautaires de la CEDEAO et de l’UEMOA, notre pays a su garder son rang de 5ième économie de la CEDEAO et 3ième de l’espace UEMOA avec un taux de croissance est resté stable durant les 10 dernières années. La grande solidarité et le grand dynamisme du secteur économique malien a été la clé de voute de cette résilience. \r\nUn effort de compréhension de la part de nos partenaires est nécessaire pour suivre l’évolution de la situation malienne. Le principe du non alignement hérité de nos illustres devanciers dès l’accession du pays à l’indépendance en 1960, a permis à notre pays de se tourner vers d’autres partenaires chaque fois que nécessaire. Le Mali ne saurait choisir un camp au détriment de ses intérêts. La quête de la paix et du développement durable reste la priorité absolue. L’accompagnement du Mali à aller de l’avant au nom de la stabilité dans le Sahel et en Afrique de l’Ouest est plus que nécessaire. \r\nLe pays couvre une superficie de 1 241 000 km² et partage 7 400 km de frontières avec ses voisins maghrébins et subsahariens. Il n’est donc pas souhaitable que l’affaiblissement du Mali perdure dans le temps au risque de provoquer un effet domino dans une région à la stabilité déjà précaire. \r\nL’espoir et l’espérance nés de notre capacité de résilience\r\nCette crise a permis d’identifier les faiblesses de notre modèle de gouvernance et de notre politique de développement économique et social. La survie de notre nation et l’avenir de la postérité nous contraints à la préservation des acquis démocratiques, à la valorisation des principes et valeurs qui fondent notre société, à la promotion de la solidarité active comme vecteur essentiel de résilience. \r\nSi en temps de paix, on prépare la guerre, en temps de difficultés et de grandes fragilités une synergie d’actions dans un élan de sursaut national est indispensable pour soutenir les efforts de résilience et favoriser l’émergence d’un malien débout, d’une nation débout et d’un pays débout.\r\nMaintenant que la durée de la transition est connue, nous devons garder espoir en notre pays, un pays reconnu pour sa capacité de résilience, mais également pour ses innombrables atouts. Une trêve sociale et politique s’avère indispensable pour lancer les jalons des grandes réformes nécessaires à la restructuration des piliers et des fondements de notre État – Nation. À cet effet, la recherche d’un équilibre durable est indispensable. La refondation de la démocratie malienne reste un enjeu majeur, car il y va de l’avenir du pays. L’organisation d’élections libres, crédibles et transparentes est un défi majeur pour ériger un édifice solide et durable pour les générations futures.\r\nLa gouvernance future devra être celle des défis et des enjeux de stabilité, de relance, de développement et d’émergence. \r\nSans plus attendre, il nous faut travailler à bâtir le Mali de nos rêves, celui qui tourne dos au clientélisme, qui met fin à la gabegie, qui s\'insurge contre la mauvaise gouvernance, qui bannit à jamais le favoritisme, qui refuse toutes pratiques empêchant le développement et le progrès social. Pour cela, l\'excellence doit devenir le maître mot et prendre le dessus sur la gestion aléatoire. La promotion de cette culture d’excellence doit émaner de la gouvernance politique. Ceci permettra à toutes les composantes de la nation de mettre en commun leur ingéniosité et faire éclore leur génie créateur.\r\nEn ces moments difficiles, il devient impératif, pour chaque malienne et pour chaque malien, de s’accorder sur l’essentiel. Nous devons comprendre les enjeux actuels et consentir à faire les sacrifices nécessaires à la naissance d\'un autre Mali. Un Mali qui valorise l’effort, la discipline et le travail. Un Mali qui assume son destin et envisage sereinement l’avenir. Un Mali où chacun, indépendamment de son origine sociale ou ethnique contribue par son savoir-faire à l’émergence de notre pays dans le respect de l\'autre et en privilégiant le vivre ensemble.\r\n*Président du Mouvement Benkan, le Pacte Citoyen', '2022-06-14 17:49:49', '2022-06-14 17:49:49'),
(74, 'ACTUALITES DE LA COORDINATION NATIONALE DES CLUBS ET ASSOCIATIONS DE SOUTIEN A SMC,  REGION DE SEGOU', '1657979112.jpg', '<p>Dans le cadre de la sensibilisation et de l\'&eacute;largissement du socle de confiance de la coordination des clubs et associations de soutien &agrave; SMC, une mission conduite par M. Alhassane Bengaly , Pr&eacute;sident de la CNCAS s\'est rendue le mercredi 22 juin 2022 &agrave; Bewani dans la r&eacute;gion de S&eacute;gou. La mission a permis, entre autres, de rencontrer les notabilit&eacute;s telles que les l&eacute;gitimit&eacute;s coutumi&egrave;res et religieuses. D&eacute;sormais align&eacute;s derri&egrave;re les id&eacute;aux du Mouvement Bɛnkan, l\'imam de la grande mosqu&eacute;e (Ali Kodio) et le chef du village (Amara Coulibaly) de Bewani comptent maintenant parmi les ambassadeurs de Benkan, le Pacte Citoyen.</p>', '2022-07-16 11:45:12', '2022-07-16 12:24:06'),
(75, '𝘾𝙤𝙢𝙢𝙪𝙣𝙞𝙦𝙪𝙚́ 𝙙𝙪 𝙈𝙤𝙪𝙫𝙚𝙢𝙚𝙣𝙩 𝘽𝙚𝙣𝙠𝙖𝙣- 𝙇𝙚 𝙋𝙖𝙘𝙩𝙚 𝘾𝙞𝙩𝙤𝙮𝙚𝙣', '1657979258.jpg', '', '2022-07-16 11:47:38', '2022-07-16 11:47:38'),
(76, 'RENCONTRE AVEC DES PRESIDENTS DES CHAMBRES DES METIERS DU MALI', '1657979493.jpg', '<p>Nous avons eu le plaisir de recevoir le vendredi 24 juin 2022 une d&eacute;l&eacute;gation des Pr&eacute;sidents des chambres des m&eacute;tiers du Mali et plusieurs autres acteurs du milieu artisanal. Apr&egrave;s le bilan des difficult&eacute;s et autres enjeux, nous avons d&eacute;cid&eacute; de la mise en place d&rsquo;une commission mixte qui aura pour mission de proposer des solutions concr&egrave;tes pour la redynamisation de l&rsquo;artisanat malien.</p>', '2022-07-16 11:51:33', '2022-07-16 12:23:42'),
(77, 'CELEBRATION DE LA FETE DE L\'AID EL ADHA', '1657980648.jpg', 'À l\'occasion de la célébration de la fête de l\'Aid el Adha , les membres du mouvement Benkan vous souhaitent une bonne fête.Aw Sambè Sambé !', '2022-07-16 12:10:48', '2022-07-16 12:10:48'),
(78, 'VŒUX DU PRESIDENT SEYDOU MAMADOU COULIBALY', '1657980796.jpg', '<p>&nbsp; V&oelig;ux du Pr&eacute;sident SMC &agrave; l\'occasion de la f&ecirc;te de l\'Aid Al-Adha Bonne f&ecirc;te &agrave; tous ! &nbsp;</p>', '2022-07-16 12:13:16', '2022-07-16 12:23:29'),
(79, 'ACTUALITES DU PRESIDENT SEYDOU MAMADOU COULIBALY', '1657980954.jpg', '<p>&laquo; J\'ai eu la chaleureuse occasion de recevoir le mardi 12 juillet 2022, une forte d&eacute;l&eacute;gation du Mouvement BENKAN, Le Pacte Citoyen et des clubs de soutiens venus pr&eacute;senter leurs v&oelig;ux &agrave; l\'occasion de la f&ecirc;te de l\'Eid Al Adha. Ce fut belle opportunit&eacute; pour moi de leur exprimer ma gratitude et ma satisfaction pour leurs efforts quotidiens en faveur de notre projet commun. Une occasion &eacute;galement de formuler des pri&egrave;res pour la paix et la stabilit&eacute; du Mali. &raquo;</p>', '2022-07-16 12:15:54', '2022-07-16 12:23:08'),
(80, 'ACTUALITES DU PRESIDENT SEYDOU MAMADOU COULIBALY', '1657981165.jpg', '<p>Le Pr&eacute;sident SMC, en compagnie des cadres de Bɛnkan, le Pacte Citoyen, a re&ccedil;u simultan&eacute;ment le Mercredi 13 Juillet 2022 la visite de la Start up \"Emploi et Moi\", de l\'association VIJEL (V&eacute;ritable Initiative des Jeunes Leaders de la Commune 1), et l\'Association des &Eacute;l&egrave;ves, &Eacute;tudiants et Stagiaires Maliens au S&eacute;n&eacute;gal. Ces jeunes Leaders maliens &eacute;taient venus s\'enqu&eacute;rir de la vision de Bɛnkan pour le Mali d\'une part; et pour remettre des distinctions au Pr&eacute;sident SMC en guise de remerciements pour son engagement patriotique &agrave; travers le soutien aux nombreuses activit&eacute;s citoyennes d\'autre part. Le train du rassemblement des forces vives du Mali est d&eacute;sormais en marche. &nbsp;</p>', '2022-07-16 12:19:25', '2022-07-16 12:22:47'),
(81, 'RENCONTRE AVEC MONSIEUR ABDRAHAMANE SYLLA', '1657981323.jpg', 'Le jeudi 14 Juillet 2022 une importante délégation de l\'association \"Convention Citoyenne pour le Renouveau et l\'Émergence du Mali\" conduite par son Président Abdrahamane Sylla ancien ministre des Maliens Établis l\'Extérieur. \r\nCette rencontre, la deuxième en seulement trois mois a permis d\'évoquer les sujets brûlants qui marquent l\'actualité politique, sécuritaire et socio économique de notre pays.\r\nLes questions de développement ont été au centre des échanges. \r\nVu la richesse des échanges la réunion a recommandé la tenue de rencontres régulières entre les deux formations à travers la mise en place de commissions techniques mixtes et paritaires', '2022-07-16 12:22:03', '2022-07-16 12:22:03'),
(82, 'ACTUALITES DU POLE IMPLANTATION | MARKALA', '1657981555.jpg', 'Dans le cadre des activités du Pôle Implantation, le Comité Benkan de CIRA représenté par Monsieur Bamou Soumbounou était à Markala pour procéder à la validation du bureau de la coordination CIRA de Benkan Markala. Ladite coordination regroupe les représentants de l\'ensemble des quartiers et villages environnants de Markala.\r\nLa mise en place de la coordination locale du Comité Benkan de CIRA a été effectuée le jeudi 14 juillet 2022. Cette coordination aura en charge l\'installation des différents comités CIRA de Bɛnkan dans les quartiers, villages, hameaux et fractions de Markala.', '2022-07-16 12:25:55', '2022-07-16 12:25:55'),
(83, 'ACTUALITES DU CLUB ANKA SEYDOU | SAMEDI, 02 JUILLET 2022', '1657981891.jpg', '<p>Madame Soumar&eacute; T&egrave;nin FAN&Eacute;, Pr&eacute;sidente du Club ANKA Seydou et marraine du tournoi de football inter - universitaire qui s\'est d&eacute;roul&eacute; du 14 mai au 02 juillet 2022, a proc&eacute;d&eacute; dans la matin&eacute;e du samedi 02 juillet, dans les locaux de DFA, &agrave; la remise des attestations de participation aux diff&eacute;rents Lyc&eacute;es et universit&eacute;s ayant particip&eacute;s au tournoi d\'une part et de remise de jeux de maillots aux deux finalistes d\'autre part. Lors de la c&eacute;r&eacute;monie, les &eacute;l&egrave;ves et &eacute;tudiants ont b&eacute;n&eacute;fici&eacute; d\'une br&egrave;ve pr&eacute;sentation du Pr&eacute;sident Seydou Mamadou COULIBALY par M. Youba Ibrahim KONATE, Pr&eacute;sident du P&ocirc;le Implantation et M. Amadou CISS&Eacute;, Pr&eacute;sident du p&ocirc;le Mobilisation et Organisation. Aussi, une conf&eacute;rence d&eacute;bat amin&eacute;e par M. Dionk&eacute; FOFANA, Directeur de Cabinet de SMC sur le th&egrave;me &laquo; R&ocirc;le et place de la jeunesse dans la refondation du Mali &raquo; pour ne dire que ceci. On notait la pr&eacute;sence de M. Nourry Dine SANOGO, Pr&eacute;sident du P&ocirc;le Suivi, &Eacute;valuation et Capitalisation ; M. Alhassane BENGALY, Coordinateur National des Club et Association de Soutien au Pr&eacute;sident du mouvement Bɛnkan ; M. Nouhoum KON&Eacute;, Vice-Pr&eacute;sident du P&ocirc;le Communication; M.Oumar TOURE, Pr&eacute;sident du Club Vision 2022 etc... La journ&eacute;e s\'est achev&eacute;e dans l\'apr&egrave;s-midi par la finale du tournoi de football qui a oppos&eacute; l&rsquo;&eacute;quipe de la Facult&eacute; de M&eacute;decine et d\'odontostomatologie (FMPOS) &agrave; celle de l&rsquo;&Eacute;cole Sup&eacute;rieure de Gestion (ESG). Dans une atmosph&egrave;re bon enfant, le match a &eacute;t&eacute; remport&eacute; par la FMPOS apr&egrave;s des s&eacute;ances de tir au but. Une journ&eacute;e bien remplie, et riche en communication sociale. Un grand MERCI au MJE, Mouvement des Jeunes &Eacute;tudiants qui a su mobiliser et organiser ce tournoi avec brio. \"Un esprit sain dans un corps sain\", Bɛnkan s\'y engage et vivement la prochaine &eacute;dition ! &nbsp;</p>', '2022-07-16 12:31:31', '2022-07-16 12:32:35'),
(84, 'ATTAQUE PERPETREE CONTRE LA CASERNE MILITAIRE DE KATI', '1658660862.jpg', '\r\nJe condamne énergiquement l’attaque perpétrée contre la caserne militaire de Kati et félicite la réactivité des forces armées maliennes dont la risposte a mis rapidement fin à ce projet funeste contre notre pays.\r\n\r\n\r\nUne pensée pieuse pour la famille du soldat disparu et prompt rétablissement aux blessés.\r\n\r\n\r\nQue Dieu protège le Mali \r\n', '2022-07-24 09:07:42', '2022-07-24 09:07:42'),
(85, 'ACTUALITES DU PRESIDENT SMC', '1658661552.jpg', '<p>Rencontre avec l\'association Mali Jigi_ya_Kura | Samedi 23 juillet 2022 Le Pr&eacute;sident SMC, accompagn&eacute; des cadres de Benkan, a rencontr&eacute; ce jour une d&eacute;l&eacute;gation de l\'Association \"Mali Jigi ya Kura\", une jeune association cr&eacute;&eacute;e en Novembre 2021 et implant&eacute;e dans les 6 communes du district de Bamako. &Agrave; l\'occasion, les deux organisations ont pu d&eacute;gager une convergence de vue sur la n&eacute;cessit&eacute; d\'un large rassemblement des patriotes pour une offre politique nouvelle visant un d&eacute;veloppement harmonieux et durable de notre pays. &nbsp;Le cercle des partenaires de Bɛnkan, le Pacte Citoyen continue de s\'&eacute;largir ! &nbsp;</p>', '2022-07-24 09:19:12', '2022-07-28 08:54:29'),
(86, 'ACTUALITÉS DU PÔLE IMPLANTATION', '/tmp/phpZTeouc', '<p>Le P&ocirc;le Implantation lance les matin&eacute;es th&eacute;matiques Bɛnkan pour acc&eacute;l&eacute;rer le processus de maillage territorial. &nbsp;Le samedi 30 Juillet 2021 le p&ocirc;le organise une activit&eacute; de dons de sang en faveur des Forces Arm&eacute;es et de S&eacute;curit&eacute;&nbsp; du Mali. En marge du don de sang, d\'autres activit&eacute;s d\'information et de sensibilisation auront lieu. En pr&eacute;lude&nbsp; de la premi&egrave;re matin&eacute;e th&eacute;matique les membres du P&ocirc;le Implantation se sont r&eacute;unis ce jour 28 juillet 2022 au si&egrave;ge de Benkan, le Pacte Citoyen sous la pr&eacute;sidence de M. Youba Ibrahim KONAT&Eacute; pr&eacute;sident dudit p&ocirc;le pour faire les derniers r&eacute;glages. Un vibrant appel est lanc&eacute; &agrave; l\'ensemble des sympathisants et membres actifs du mouvement pour participer &agrave; l\'op&eacute;ration \"Je suis Benkan et je donne mon sang pour aider mes compatriotes en besoin de produits sanguins\" Venez nombreux ce samedi 30 Juillet &agrave; partir de 08h00 au si&egrave;ge de Benkan. &nbsp;</p>', '2022-07-29 08:47:52', '2022-07-29 09:30:03'),
(87, 'ACTUALITÉS DU PRÉSIDENT SMC', '1659092475.JPG', 'Le Président SMC, accompagné des cadres de Bɛnkan, le Pacte Citoyen, a rencontré ce Jeudi 28 juillet 2022 l\'Association des ouvriers professionnels du Mali en abrégé AOPM conduite par son Président Monsieur Abba Soumaoro Kanté.\r\n \r\nL\'AOPM est une association qui est présente sur toute l\'étendue du territoire malien, dans nombres de pays du voisinage et à travers l\'Afrique.\r\nElle est très investie dans la conduite des projets à forts impacts rapides pour les populations en besoin avec comme vision de lutter contre l\'émigration irrégulière. \r\nLa rencontre a permis de dégager une convergence de vue sur les grands sujets d\'actualité et les deux Présidents ont décidé de développer un partenariat fécond en travaillant désormais dans une synergie d\'actions pour apporter des changements positifs.', '2022-07-29 09:01:15', '2022-07-29 09:01:15'),
(88, 'ACTUALITÉS DU PÔLE IMPLANTATION', '1659339406.jpg', 'Le Pôle Implantation a lancé ce Samedi 30 juillet 2022 au siège de Benkan, le Pacte Citoyen les matinées thématiques Bɛnkan pour accélérer le processus de maillage territorial, sous la présidence de monsieur Salif Traoré, VPN-Benkan accompagné de Nourdine Sanogo, Directeur Exécutif , Nouhoum Koné vice-président du pôle communication et plusieurs autres cadres du mouvement. \r\nLe pôle Implantation dans sa grande diversité avec l\'aide du Centre National des Transfusions Sanguines (CNTS) a procédé à la collecte de poches de sang au bénéfice des FAMas.\r\nUne forte mobilisation a permis de recueillir près de 40 poches de sang.\r\nÀ noter qu\'il y a aussi eu une rencontre de sensibilisation et d’informations sur le fonctionnement du Mouvement ainsi qu’une série de réunions sectorielles ont été arrêtées pour l’appropriation de la stratégie d’implantation. \r\nJournée très animée pour Monsieur Youba Ibrahim Konaté, Président du pôle d\'implantation et ses camarades.', '2022-08-01 05:36:47', '2022-08-01 05:36:47'),
(89, 'TRIBUNE DU MOIS DE JUILLET', '1659632463.jpeg', 'DE LA RÉSILIENCE AU TRAVAIL POUR UN MALI DEBOUT ! Par Seydou Mamadou Coulibaly\r\nUne tendance des indicateurs qu’il va falloir inverser\r\nLa persistance des crises profondes non encore résolues continue de menacer la stabilité de notre pays. Malgré les efforts des autorités de la transition, les indicateurs de développement macro – économiques et sociaux ne sont pas satisfaisants. Notre pays continue d’être menacé dans ses fondements. Les ressorts sociétaux s’affaiblissent de jour en jour, les services essentiels de base restent encore inaccessibles à bon nombre de nos compatriotes.\r\nAvec les effets des sanctions économiques et les conséquences de la Covid 19, les experts tirent la sonnette d’alarme à propos de nos indicateurs macro-économiques. Même si le produit intérieur brut (PIB) nominal de notre pays indexé sur l’année 2021 est en progression par rapport à 2020 (c’est-à-dire 19,2 Mds de $ US en 2021 contre 17,5 MdS de $ US en 2020), la croissance du produit intérieur brut réel, elle, indexée sur l’année 2022 sera en nette régression, c’est-à-dire en deçà de 5,2% prévu par le Ministère de l’Économie et des Finances pour 2022. Vu cette tendance, le Burkina Faso et le Bénin supplanteraient le Mali à l’horizon 2025. Le Burkina Faso affichant une croissance du PIB réel de 4,7% en 2022 contre 5,9% pour le Bénin.\r\nAujourd’hui, encore cette crise multidimensionnelle continue de freiner le processus de développement de notre pays, alors même que sans développement il n’y aura ni paix, ni sécurité, encore moins de stabilité.  Nous devons-nous obliger, sans exclusive, à accompagner la réussite de la transition.\r\n \r\nAu travail pour un Mali debout : « La nécessité de transformer la résilience nationale en un vecteur d’émergence »\r\nGrâce à la résilience des maliens, grâce aux efforts des acteurs économiques, grâce à tous les efforts concertés, notre pays a su maintenir un niveau de cohésion acceptable. Mais face aux nombreux défis endogènes et exogènes qui nous assaillent, cette résilience légendaire ne suffira plus. Il nous faut un véritable changement de paradigme et se mettre au travail avec des maliens debout pour une nation debout.  Les solutions existent, mais elles nécessiteront la mise en commun des expertises et des expériences de l’ensemble des maliens.\r\nIl urge pour les autorités de créer les conditions d’un pacte de stabilité social avec les partenaires sociaux, c’est-à-dire avec les syndicats et l’ensemble des groupements socio - professionnels.\r\nSur le plan politique, les autorités de la transition ont annoncé et présenté un chronogramme pour l’organisation des futures élections locales et nationales. Les citoyens sont placés en première ligne de ce processus qui doit permettre au Mali de progresser vers un nouveau processus démocratique renforcé et durable. Participer à la réussite d’un processus de normalisation est un acte patriotique important. Les réformes déjà amorcées par les autorités de la transition doivent être accompagnées et soutenues, qu’il s’agisse de la réforme de la loi électorale, ou de la réforme constitutionnelle. Aussi, d’autres réformes allant dans le sens de la justice sociale comme la réforme des codes de procédures civiles et pénales peuvent être entamées.\r\nDans le domaine de la paix, de la sécurité et de la stabilité (P2SS), les Forces Armées Maliennes se sont montrées exemplaires en matière de résilience. Tout en étant engagées sur le théâtre des opérations, elles continuent de se reformer pour mieux assurer leur mission de protection de la nation. Mais compte tenu de la typologie complexe de la problématique sécuritaire au Mali, nous pensons que les autorités de la transition ne doivent pas céder au tout sécuritaire. Elles doivent plutôt répondre prioritairement au triptyque paix, stabilité et développement à travers entre autres :\r\n▪             Le renforcement des liens de confiance entre les FAMa et les populations par l’amplification des activités civilo-militaires (ACM) ;\r\n \r\n▪             L’investissement massif dans les projets de développement à impacts rapides à très court terme et à des projets innovants et structurants à moyen terme. Après la levée des sanctions économiques, il nous faut innover pour accroître la compétitivité de notre économie à l’échelle sous régionale et africaine. Ceci passera par l’amélioration de la productivité, et du climat des affaires. Nous devrons également mettre en place de nouveaux leviers ou renforcer davantage ceux déjà existants, comme entre autres « les dettes mezzanines », l’amplification des partenariats public – privé, le renforcement de l’économie solidaire et de la protection sociale en faveur des couches les plus vulnérables de la population, la subvention des secteurs productifs comme le primaire (intrants agricoles, les semences…).\r\nLes solutions évoquées sont loin d’être exhaustives, elles viendront en complément d’autres que nous nous efforcerons d’évoquer dans nos prochaines notes.    \r\nPrésident du Mouvement Benkan, le Pacte Citoyen', '2022-08-04 15:01:03', '2022-08-04 15:01:03'),
(90, 'ACTUALITES DU CLUB DE SOUTIEN ANKA SEYDOU', '1659879990.JPG', '<p>Hier 06 ao&ucirc;t 2022 au si&egrave;ge de Benkan, les membres du club Anka Seydou de la commune 4 du District de Bamako avec &agrave; leur t&ecirc;te le coordinateur M. Br&eacute;hima Diarra, ont tenu &agrave; rendre un hommage &eacute;m&eacute;rite &agrave; Madame Soumar&eacute; Tenin FAN&Eacute;, Pr&eacute;sidente nationale dudit Club pour sa constance et ses soutiens multi - formes.</p>\r\n<p>Dans une atmosph&egrave;re bon enfant les diff&eacute;rents intervenants ont reconnu et salu&eacute; le leadership du Pr&eacute;sident SMC qui se magnifie au jour le jour par son soutien constant, sa clairvoyance et son engagement pour le Mali.</p>\r\n<p>Plusieurs hauts cadres du Mouvement Benkan, des Clubs de soutien et associations affili&eacute;es ont marqu&eacute; et rehauss&eacute; l\'&eacute;clat de l\'&eacute;v&eacute;nement par leur pr&eacute;sence.</p>', '2022-08-07 11:46:30', '2022-08-07 11:48:55'),
(91, 'BONNE CELEBRATION DE L\'ACHOURA', '1660596635.jpg', '', '2022-08-15 18:50:35', '2022-08-15 18:50:35'),
(92, '𝗘𝘅𝘁𝗿𝗮𝗶𝘁 𝗱𝗲 l𝗮 𝗧𝗿𝗶𝗯𝘂𝗻𝗲 𝗱𝘂 𝗺𝗼𝗶𝘀 𝗱𝗲 𝗝𝘂𝗶𝗹𝗹𝗲𝘁 𝟮𝟬𝟮𝟮', '1660596781.jpg', '', '2022-08-15 18:53:01', '2022-08-15 18:53:01'),
(93, 'ACTUALITÉ DU PÔLE IMPLANTATION', '1660597186.JPG', ' \r\nCe samedi 13 août 2022 s’est tenue la conférence de commune de la Coordination de la Commune V du District de Bamako sous la présidence de Monsieur Boubacar DIADJE, premier vice-coordinateur de ladite commune.\r\nCette rencontre, qui a permis de faire l’état de vie de la coordination et de dégager un plan de relance des activités pour mieux aborder toutes les échéances électorales, a vu la participation de Monsieur Youba KONATE, Président du pôle implantation et Madame Traoré Oumou BOCOUM, vice-présidente du pôle implantation en charge de Bamako , venus leur apporter tout le soutien de la coordination nationale dans leur dynamique.', '2022-08-15 18:59:46', '2022-08-15 18:59:46'),
(94, 'JOURNEÉ INTERNATIONALE DE LA JEUNESSE', '1660597539.jpg', 'Nous célébrons aujourd’hui, vendredi 12 Août 2022, la journée internationale de la jeunesse.A Benkan la jeunesse occupe une place de choix car elle est le socle sur lequel le Mali de demain reposera. Et c\'est pourquoi nous nous employons à aller à sa rencontre, à l\'ecouter, à l\'entendre afin de comprendre ses préoccupations et ses aspirations profondes.Notre devoir en tant qu\'aînés est de garantir à notre jeunesse la formation et l\'accompagnement nécessaires pour en faire des citoyens conscients et engagés dans le développement de leur pays. Un pays que nous mettrons ensemble 𝗗𝗘𝗕𝗢𝗨𝗧.Bonne journée internationale de la jeunesse!', '2022-08-15 19:05:39', '2022-08-15 19:05:39'),
(95, 'BONNE FÊTE DE L’ASSOMPTION', '1660597960.jpg', 'Je me joins à l’ensemble des membres du Mouvement Benkan pour souhaiter à la communauté Chrétienne du Mali une bonne fête de l’Assomption. Que ce jour, soit pour chacun de nous, l’occasion de raffermir notre foi et consolider nos liens. ', '2022-08-15 19:12:40', '2022-08-15 19:12:40'),
(96, 'ACTUALITÉS DU PRESIDENT SMC', '1661677462.jpg', '\r\nCe vendredi 27 août 2022, le Président Seydou Mamadou Coulibaly à la tête d\'une forte délégation du Mouvement BENKAN, le Pacte Citoyen a rendu une Visite de courtoisie à Monsieur Bamoussa #TOURÉ, Coordinateur des chefs de quartiers du District de Bamako. \r\n\r\n\r\nCette visite rentre dans le cadre des échanges avec les autorités traditionnelles et coutumières.\r\n\r\n\r\nComme le disait Milan Kundera: “La culture, c’est la mémoire du peuple, la conscience collective de la continuité historique, le mode de penser et de vivre.”\r\n', '2022-08-28 07:04:22', '2022-08-28 07:04:22'),
(97, 'TRIBUNE DU MOIS D’AOÛT', '1663063463.jpeg', ' \r\nConstruire un système éducatif performant pour un Mali débout\r\nLa date de la prochaine rentrée scolaire au Mali est fixée au 03 octobre 2022, selon l’annonce faite par la ministre en charge de l’éducation nationale, le jeudi 1er septembre 2022. Cette annonce met fin aux polémiques suscitées par certains acteurs à propos du précédent calendrier qui fixait cette rentrée au 16 septembre.\r\nSi les autorités scolaires ont pu réussir le pari d’une année scolaire paisible conduisant à l’achèvement correct des programmes et au bon déroulement des examens, il n’en demeure pas moins que les résultats ont été pour le moins catastrophiques en 2022. Pour preuves, 47,86 % de taux de réussite au DEF cette année contre 68,67 en 2021 ; 20,38% de taux de réussite au bac cette année contre 39,23% en 2021. Ce paradoxe, comme un goût d’inachevé, montre bien les dysfonctionnements et la mauvaise qualité de notre système d’enseignement soumis à plusieurs décennies de réformes et d’expérimentations qui n’ont jamais apporté les résultats escomptés. Le combat des autorités maliennes pour un enseignement performant, de qualité, et pour l’augmentation du taux de scolarisation est loin d’être atteint.\r\n Trois décennies de reformes et des résultats toujours mitigés\r\nDès les premières heures de la démocratie en 1992 jusqu’à ce jour, notre pays a été un laboratoire d’expérimentation de réformes, parfois ambitieuses, dans le domaine de l’éducation comme entre autres ; la nouvelle école fondamentale (NEF) , le Programme décennal de développement de l’éducation (PRODEC), le curriculum de l’enseignement fondamental (CEF), l’approche par compétences, la réforme licence-master-doctorat (LMD). À ces réformes, il faut ajouter la politique de privatisation à outrance qui, même si elle a permis une diversification de l’offre d’enseignement, est considérée aujourd’hui comme l’un des principaux facteurs de régression en termes de qualité.\r\nL’Éducation représente le 2ième poste budgétaire dans la loi de finances rectificative de 2022 avec un budget de 444,625 milliards FCFA soit 16,80 % du budget total, et elle peine toujours à se mettre en harmonie et en adéquation avec les standards internationaux. Malgré les efforts concertés, l’atteinte des indicateurs pour tendre vers un accès universel pour tous à une École de qualité reste aléatoire au Mali. Le sempiternel problème d’inadéquation entre la formation et l’emploi persiste faisant de l’École malienne une fabrique de chômeurs. La procédure d’assurance qualité avec les services d’inspection contrôle cède le pas à la politique de massification. La qualité des outils pédagogiques, de l’enseignement, des infrastructures n’est plus supervisée, faute de moyens adéquats. La dégradation quasi généralisée des infrastructures scolaires à tous les niveaux (central, déconcentré et décentralisé) favorise la déperdition scolaire. Les grèves intempestives, parfois légitimes, des élèves mais aussi des enseignants, nous conduisent à des incertitudes quant à l’achèvement des programmes annuels d’enseignements. Bref, le niveau recule et les chômeurs augmentent année après année pour atteindre en moyenne 300 000 nouveaux par an avec seulement 10 % qui arrivent à trouver un emploi. \r\nIl est impératif aujourd’hui de procéder à une revisite de notre système éducatif afin qu’il corresponde à nos besoins de développement et qu’il devienne un véritable outil de lutte contre l’ignorance et la pauvreté.\r\nVaincre la fatalité et faire de l’École le sédiment de notre émergence.\r\nLes solutions pour sortir notre école de cette léthargie existent et nous devons nous obliger, sans exclusive, à travailler pour donner à notre système éducatif ses lettres de noblesses d’antan. Pour cela, chacun doit jouer sa partition, les parents, les éducateurs, mais aussi et surtout les autorités qui sont tenues par une obligation de moyens en lien avec les stratégies adoptées. \r\nPour faire face aux nombreux défis et enjeux de l’École malienne, les autorités de la transition doivent négocier une trêve sociale avec les partenaires de l’École (syndicats des enseignants, syndicats des élèves et étudiants…) sur la durée restante de la transition suivant une base consensuelle et claire. Il urge également d’organiser les états généraux de l’école malienne afin d’aboutir à l’élaboration d’une loi d’orientation et de programmation de l’école malienne. Nous n’avons d’autres choix que de faire de notre système éducatif une priorité absolue pour définitivement emprunter la voie du développement. \r\nAu cœur de la réflexion peuvent figurer entre autres, les initiatives ci-après :\r\n- Redonner à l’école publique ses lettres de noblesse avec un investissement massif dans les infrastructures et équipements scolaires, dans le recrutement et la formation des enseignants de qualité ;\r\n- Réduire les inégalités et le contrôle social de l’État dans la définition et la mise en œuvre des objectifs collectivement fixés ; \r\n- Accélérer le transfèrement des moyens aux collectivités territoriales pour un suivi qualitatif de proximité dans le cadre de la décentralisation ;\r\n- Encadrer rigoureusement la création des établissements scolaires privés et asseoir un mécanisme de supervision qualitatif ;\r\n- Réviser les programmes d’enseignements afin de les adapter à nos valeurs culturelles (le retour de l’éducation civique et morale), à nos besoins de développement et en utilisant également les TICs ; \r\n- Renforcer les systèmes d’encadrement des enfants, de la primaire au secondaire par la formation des enseignants et inspecteurs expérimentés pour prendre en charge les enfants qui ont des insuffisances d’apprentissage ;\r\n- Fermer in extenso toutes les écoles privées qui ne remplissent pas les conditions requises et qui ne concourent pas à l’atteinte des objectifs assignés ;\r\n- Développer le sport, la musique, l’art et la culture dans les écoles par un investissement dans les équipements et infrastructures…\r\nLes solutions évoquées sont loin d’être exhaustives, elles viennent en complément d’une réflexion plus large sur l’éducation que nous évoquerons prochainement.\r\nPrésident du Mouvement Benkan, le Pacte Citoyen\r\n \r\n \r\n ', '2022-09-13 08:04:23', '2022-09-13 08:04:23'),
(100, 'SMC À LA ZIHARA DE DOGNOUMANA', '1664882342.JPG', '\r\nLe Président SMC était ce dimanche 02 Octobre 2022, à la Zihara organisée par le Guide Spitituel des Ançar et Président du Haut Conseil Islamique, le Chérif Ousmane Madani Haidara.\r\n\r\n\r\nDes prières et bénédictions ont été faites à l\'endroit de nos illustres disparus.\r\n\r\n\r\nÀ l\'occosion, le président SMC a remercié le guide Asied Cherif Ousmane Madani HAÏDARA, et a fait des Douas pour le retour rapide de la paix et la stabilité dans notre pays .\r\n', '2022-10-04 09:19:02', '2022-10-04 09:19:02'),
(101, 'BONNE FETE AUX FAMAS!!!', '1674651164.jpeg', '', '2023-01-25 11:52:44', '2023-01-25 11:52:44'),
(102, 'LA JEUNESSE BENKAN A BANAMBA', '1674907869.jpg', '<p>Aujourd\'hui Samedi le 28/01/2023, la jeunesse du mouvement Benkan a tenue une assembl&eacute;e dans l\'enceinte de la mairie du cercle de Banamba.</p>\r\n<p>&Eacute;taient pr&eacute;sents les 9 communes du cercle de Banamba. Les &eacute;changes furent fructueuses et pleins d\'espoirs.</p>\r\n<p>De nos jours Benkan est repr&eacute;sent&eacute; en masse et en qualit&eacute; dans le cercle de Banamba : entre autres nous pouvons compter aujourd\'hui 36 &eacute;lus locaux, 2 maires et des centaines d\'autres adh&eacute;rents Benkan confirm&eacute;s.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>R&eacute;dactrice: BOLY SINNA&nbsp;</p>\r\n<p>EQUIPE APPLI BEKAN</p>', '2023-01-28 11:11:09', '2023-01-28 11:35:57'),
(104, 'EN DIRECTE DE LA MAISON DES AÎNÉS DE BAMAKO', '1676722641.jpg', '', '2023-02-18 11:17:21', '2023-02-18 11:17:21'),
(105, 'SMC A LA RENCONTRE DES BUREAUX DE COORDINATION DE BAMAKO', '1676811789.jpg', 'Dans le cadre d\'une conférence du district visant à renforcer la cohésion et à redynamiser les objectifs de BEKAN et de ses collaborateurs, \r\nHier Samedi 18/02/2023, s\'est tenue à la maison des aînés de Bamako une rencontre entre le président SEYDOU MAMADOU COULIBALY et les bureaux de coordination des 6 communes de Bamako.\r\nL\'espoir pour un Mali nouveau était au rendez-vous.\r\nÉtaient aussi présents tous les autres clubs et associations de soutien à SMC pour l\'occasion. \r\nBenkan, ensemble pour un Mali meilleur...\r\n \r\n \r\nRédaction : BOLY SINNA\r\nÉQUIPE APPLI BENKAN ', '2023-02-19 12:03:09', '2023-02-19 12:03:09'),
(106, 'LA JEUNESSE BENKAN À KADIOLO', '1677334272.jpg', 'Dans le cadre de la redynamisation de ses différents bureaux de coordinations et comités de bases, le bureau national de la jeunesse de benkan a effectue aujourd\'hui 25 Février 2023 une rencontre avec les bureaux de la jeunesse du cercle de Kadiolo.\r\nÉtaient présents toutes les autorités locales en plus des 8 autres communes du cercle de kadiolo.\r\nNombreuses questions pertinentes d\'ordre nationales furent soulevées lors des échanges. Sans oublier les questions portants sur la biographie du président national SEYDOU MAMADOU COULIBALY qui fut mise en avant lors des introductions.\r\nLa rencontre fut riche et pleine d\'espoir. \r\n \r\nBenkan,  ensemble pour un Mali meilleur!!!\r\n \r\n \r\n \r\n \r\nRÉDACTION : BOLY SINNA\r\nÉQUIPE APPLI BENKAN ', '2023-02-25 13:11:12', '2023-02-25 13:11:12'),
(107, 'SMC AU CONGRÈS DE LA JEUNESSE DU PARTI NEMA', '1677501346.jpg', 'Le Président Seydou Mamadou Coulibaly, accompagné de plusieurs cadres, femmes et jeunes de Bɛnkan, le Pacte Citoyen, a pris part à la cérémonie d\'ouverture du Congrès Ordinaire des mouvements de femmes et de jeunes du Parti Nouvel Espoir pour le Mali \"NEMA\".\r\nQui s\'est tenu ce samedi 25 février 2023 au Centre International de Conférence de Bamako (CICB).\r\nVoir les images sur la page Facebook du Mouvement en suivant ce lien. https://m.facebook.com/story.php?story_fbid=pfbid0zZ1Ew61WkMJyWAyrFoPmxxcqYWMeqPKSqr1HYuhWDKkZZ7f5f9RQ9tUpdeSzkicMl&id=100089960167531&sfnsn=mo&mibextid=RUbZ1f\r\n \r\nBenkan : Ben, Baara, Nietaa\r\n \r\n \r\n \r\nRédaction : BOLY SINNA\r\nÉQUIPE APPLI BENKAN ', '2023-02-27 11:35:46', '2023-02-27 11:35:46'),
(108, 'LA COMMUNE 1 AUX PREMIERES LOGES', '1677619353.jpeg', '<p>La Coordination Bɛnkan, le Pacte Citoyen de la commune I &agrave; &eacute;t&eacute; valid&eacute;e ce dimanche 26 F&eacute;vrier 2023 &agrave; Doumazana dans la grande salle de r&eacute;union des locaux de l\'Association Tagn&egrave;. En pr&eacute;sence de la Vice-pr&eacute;sidente charg&eacute;e de l\'implantation du District de Bamako.</p>\r\n<p>&nbsp;</p>\r\n<p>Monsieur Bafing DIARRA est le tout nouveau Coordinateur.</p>\r\n<p>Restons Unis pour le Mali.&nbsp; &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Benkan: Ben, Baara, Nietaa &nbsp; &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>REDACTION : BOLY SINNA</p>\r\n<p>EQUIPE APPLI BENKAN &nbsp;</p>', '2023-02-28 20:22:33', '2023-04-24 10:59:43'),
(109, 'BENKAN A MORIBABOUGOU', '1678188542.jpeg', '<p>Rencontre entre la Coordination Nationale Benkan, repr&eacute;sent&eacute;e par les pr&eacute;sidents des P&ocirc;les Implantation, et Organisation et Mobilisation, et la Coordination communale de Moribabougou-N&rsquo;Gabacoro Droit&nbsp; ce samedi 04/03/23 au si&egrave;ge de ladite coordination sise &agrave; Moribabougou.</p>\r\n<p>Les echanges furent fructueses et des projets de redynamisations furent discut&eacute;s dans la plus grande convivialit&eacute;. &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>BENKAN : Ben, Baara, Nietaa &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>REDACTION: BOLY SINNA</p>\r\n<p>EQUIPE APPLI BENKAN</p>', '2023-03-07 10:29:02', '2023-03-07 10:30:27'),
(110, 'BEKAN A KITA', '1678720462.jpeg', 'Ce jeudi 09 mars 2023, une délégation de la Coordination Nationale de Benkan, le Pacte Citoyen composée du président du Pôle Implantation, du président du Pôle Organisation et Mobilisation, et d’un cadre du pôle Implantation a rencontré les cadres de Benkan de KITA.\r\nCette rencontre a été mise à profit pour souhaiter la bienvenue à la section de la CODEM qui nous a rejoint en bloc avec leur tête le Maire Soriba CISSÉ.\r\n \r\n \r\nBenkan : Ben, Baara, Nietaa\r\n \r\nREDACTION : BOLY SINNA\r\nEQUIPE APPLI BENKAN', '2023-03-13 14:14:22', '2023-03-13 14:14:22'),
(111, 'RAMADAN MUBARACK', '1679650413.jpg', '', '2023-03-24 08:33:33', '2023-03-24 08:33:33'),
(112, 'JOURNEE INTERNATIONNALE DE LA SANTE', '1681468874.jpeg', '<p>Ce vendredi <strong>07 avril</strong> nous c&eacute;l&eacute;brons la journ&eacute;e internationale de la sant&eacute;.</p>\r\n<p>Le th&egrave;me retenu cette ann&eacute;e est &laquo; la sant&eacute; pour tous &raquo;.</p>\r\n<p>Je ne saurai dire mieux, car rien n&rsquo;est plus pr&eacute;cieux que la sant&eacute; et il faut la souhaiter &agrave; tous !</p>\r\n<p>Je salue l&rsquo;architecture de notre syst&egrave;me national de soin constitu&eacute; de centre de sant&eacute; communautaire (CSCOM), de centre de sant&eacute; de r&eacute;f&eacute;rence (CSREF), et h&ocirc;pitaux r&eacute;gionaux et nationaux visant &agrave; &eacute;tendre la couverture sanitaire tout en rendant les services accessibles &agrave; la population tant &eacute;conomiquement que g&eacute;ographiquement.</p>\r\n<p>J&rsquo;ai une pens&eacute;e particuli&egrave;re &agrave; l&rsquo;endroit du Pr&eacute;sident Amadou Toumani Tour&eacute; (ATT) pour les nombreux combats qu&rsquo;il a men&eacute;s en faveur de la &laquo; sant&eacute; pour tous &raquo;.</p>\r\n<p>Parmi ces initiatives, je salue particuli&egrave;rement l&rsquo;Assurance Maladie Obligatoire qui permet encore &agrave; nos concitoyens de se soigner &agrave; moindre co&ucirc;t.</p>\r\n<p>Rien n&rsquo;est envisageable sans une bonne sant&eacute;. Nous avons &eacute;t&eacute; t&eacute;moins des ravages de la COVID 19 et continuons &agrave; suivre de pr&egrave;s son &eacute;volution au d&eacute;triment de notre sant&eacute; et de nos activit&eacute;s. &nbsp; Je me reconnais parfaitement dans le th&egrave;me &laquo; la sant&eacute; pour tous &raquo; et j&rsquo;encourage les autorit&eacute;s de la transition &agrave; poursuivre leur engagement en faveur de la sant&eacute; des maliens.</p>\r\n<p>Je souhaite une bonne sant&eacute; &agrave; tous nos concitoyens ! &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>SEYDOU MAMADOU COULIBALY</strong></p>\r\n<p><em><strong>BENKAN: Ben, Baara, Nietaa</strong></em></p>\r\n<p>&nbsp;</p>\r\n<p>Equipe Appli Benkan</p>\r\n<p>R&eacute;daction : BOLY SINNA</p>', '2023-04-14 08:41:14', '2023-04-14 14:24:49'),
(113, 'LA JEUNESSE BENKAN DANS LA REGION DES RAILS', '1681471974.jpeg', '<p>Dans le cadre de ses activit&eacute;s de fid&eacute;lisation, une d&eacute;l&eacute;gation du P&ocirc;le Jeunesse du Mouvement Benkan s&rsquo;est rendue du <strong>6 au 9 Avril 2023</strong> dans les Cercles de Yelimane et de Nioro-du-Sahel. L&rsquo;objectif de ces missions &eacute;tait de rencontrer les d&eacute;l&eacute;gu&eacute;s des 28 Coordinations jeunesse Benkan des deux Cercles.</p>\r\n<p>&nbsp;</p>\r\n<p><em><strong>Benkan : Ben, Baara, Nietaa</strong></em> &nbsp;</p>\r\n<p>Equipe Appli Benkan</p>\r\n<p>R&eacute;daction : BOLY SINNA</p>', '2023-04-14 09:32:54', '2023-04-14 14:25:46'),
(114, 'BENKAN COMMUNE 5', '1681489440.jpeg', 'La Coordination Benkan de la commune V du District de Bamako sous l’égide de son Coordinateur, a procédé ce dimanche 09 avril 2023 à une remise de sucre à ses militants. C\'etait dans le cadre du mois sacré de Ramadan.\r\nLa cérémonie de remise, qui s’est tenue en présence des membres de la Coordination Nationale, a eu lieu au domicile de Madame HAIDARA en commune 5. \r\n \r\nBENKAN : Ben, Baara, Nietaa\r\nEquipe Appli Benkan\r\nRédaction : BOLY SINNA', '2023-04-14 14:24:00', '2023-04-14 14:24:00');
INSERT INTO `posts` (`id`, `titre`, `image`, `contenu`, `created_at`, `updated_at`) VALUES
(115, 'LE POLE FEMME AUX PREMIERES LOGES', '1681631825.jpeg', 'Ce samedi 15 avril 2023, les femmes du Mouvement Benkan ont tenu une rencontre avec la nouvelle Présidente du pôle Femme, Mme Diarra Madji Kanté.\r\nLa rencontre qui était une prise de contact, a servi de cadre d’échange pour la mise en place effective du prochain bureau du Pôle Femme du Mouvement Benkan.\r\n \r\nUne salutation chaleureuse à cette rencontre qui laisse envisager de belles perspectives pour notre Mouvement !\r\n \r\nBENKAN : Ben, Baara, Nietaa\r\n \r\nÉquipe Appli Benkan\r\n \r\nRédaction : BOLY SINNA', '2023-04-16 05:57:05', '2023-04-16 05:57:05'),
(116, 'SOUNAKARI COLLECTIF 2023', '1681890309.jpeg', '<p>Ce Mardi 18 Avril 2023, s&rsquo;est tenue une belle rencontre entre le pr&eacute;sident SMC et les diff&eacute;rents p&ocirc;les et coordinations Benkan au si&egrave;ge national de Bamako.</p>\r\n<p>Entre rupture collective de jeun et discours de remerciements, l&rsquo;ordre du jour fut honor&eacute;&hellip;</p>\r\n<p>Puisse Allahou SWT accepter nos jeunes et pri&egrave;res, et b&eacute;nir le Mali.</p>\r\n<p>Dieu b&eacute;nisse Benkan, le pacte citoyen.</p>\r\n<p>&nbsp;</p>\r\n<p>BENKAN : Ben, Baara, Nietaa &nbsp;</p>\r\n<p>&Eacute;quipe Appli Benkan</p>\r\n<p>R&eacute;daction : BOLY SINNA</p>', '2023-04-19 05:45:09', '2023-04-19 06:07:41'),
(117, 'EID MUBARAK ! 2023', '1682057597.jpeg', '', '2023-04-21 04:13:17', '2023-04-21 04:13:17'),
(118, 'BONNE FETE DU TRAVAIL', '1682948752.jpeg', '', '2023-05-01 11:45:52', '2023-05-01 11:45:52'),
(119, 'JOURNEE MONDIALE DE LA LIBERTE DE LA PRESSE', '1683183506.jpeg', '', '2023-05-04 04:58:26', '2023-05-04 04:58:26'),
(120, 'SMC RENCONTRE LES ENTREPRENEURS !', '/tmp/phpU6oByS', '<p>Ce jeudi 4 mai 2023 au si&egrave;ge de Mouvement Benkan, j\'ai eu l\'honneur de pouvoir &eacute;changer avec un groupement de jeunes constitu&eacute; de GIE et d\'entrepreneurs dans le secteur de l\'artisanat et de la pisciculture.&nbsp;</p>\r\n<p>Nos &eacute;changes ont port&eacute; sur les difficult&eacute;s rencontr&eacute;es dans leurs activit&eacute;s.&nbsp; Un accent particulier a &eacute;t&eacute; mis sur la question de l&rsquo;assainissement en Commune IV et dans la commune du Mand&eacute;, qui pose un s&eacute;rieux probl&egrave;me aux riverains. &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>SEYDOU MAMADOU COULIBALY</p>\r\n<p>&nbsp;</p>\r\n<p>BENKAN : Ben, Barra, Nietaa</p>\r\n<p>EQUIPE APPLI BENKAN</p>\r\n<p>REDACTION : BOLY SINNA</p>', '2023-05-05 13:42:59', '2023-05-07 10:47:13'),
(121, 'RENCONTRE LOCALE DE LA JEUNESSE BENKAN DU CERCLE DE YOROSSO', '1683461640.jpeg', 'Dans le cadre de ses activités de fidélisation, une délégation du Pôle Jeunesse du Mouvement Benkan, s’est rendue ce Samedi 06 Mai 2023 dans le Cercle de Yorosso.\r\nL’objectif de la mission était de rencontrer les délégués des differentes Coordinations de jeunesse Benkan du-dit Cercle.\r\nLa rencontre fut couronnée de succes et les échanges conviviales et fructueses...\r\n \r\nBENKAN : Ben, Baara, Nietaa\r\nEQUIPE APPLI BENKAN\r\nREDACTION : BOLY SINNA', '2023-05-07 10:14:00', '2023-05-07 10:14:00'),
(122, 'BENKAN DANS LE CERCLE DE BLA !', '1683478044.jpeg', 'Une rencontre entre le pole jeunesse et la coordination locale de la jeunesse du Cercle de Bla, fut organisée ce Dimanche 7 Mai 2023.\r\nAvec la participation des délégués des Coordinations des 17 Communes, l\'objectif de la rencontre rentrait dans le cadre de la redynamisation des bureaux mis en place par le pole dans le cercle.\r\n \r\nBENKAN : Ben, Baara, Nietaa\r\n \r\n \r\n \r\nEQUIPE APPLI BENKAN\r\nREDACTION : BOLY SINNA', '2023-05-07 14:47:24', '2023-05-07 14:47:24'),
(123, 'RENCONTRE DES ARTISANTS DE LA COMMUNE VI', '/tmp/php5Fk1yy', '<p>Ce Samedi 12 mai 2023 au si&egrave;ge des artisans de la CVI, s\'est tenue une rencontre entre les repr&eacute;sentants des artisans de la commune et ceux du Pr&eacute;sident Seydou Mamadou Coulibaly.</p>\r\n<p>Une forte d&eacute;l&eacute;gation constitu&eacute;e par :&nbsp;</p>\r\n<p>Ancien Ministre de la jeunesse Mr Mohamed Salia Tour&eacute;, honorable Camara saoudatou Demb&eacute;l&eacute;,&nbsp; Allassane Bengaly, Dramane Diarra , la coordination de jikituku benkan de la CVI. &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>BENKAN : Ben, Baara, Nietaa</p>\r\n<p>EQUIPE APPLI BENKAN</p>\r\n<p>REDACTION : BOLY SINNA</p>', '2023-05-13 16:09:38', '2023-05-13 16:22:11'),
(124, 'TRIBUNE DU MOIS D\'AVRIL', '1684001861.jpeg', 'Évoquer le monde agricole, c’est parler de la ruralité dans sa globalité. En la matière, les chiffres du Mali sont éloquents et montrent que le secteur est hautement stratégique.\r\n \r\nSelon les chiffres de l’Organisation des Nations Unies pour l’Alimentation et l’Agriculture (FAO), 63,78% de la population malienne est rurale. L’économie agro pastorale contribue pour 33% au PIB du Mali, soit 19,1% pour l’agriculture, 8,5% pour l’élevage et 5% pour la pêche. Le secteur rural occupe 70% de la population active et contribue pour 20% aux recettes d’exportation du pays.\r\n \r\nL’un des atouts naturels majeurs du Mali pour soutenir le secteur rural est l’importance du bassin du fleuve Niger qui couvre 25% du territoire national. Malgré cette importante ressource, l’accès à l’eau reste un défi majeur pour de nombreux ruraux par manque d’infrastructures.\r\n \r\nSelon les chiffres officiels, le potentiel irrigable au Mali est estimé à 2.2 millions d’hectares, mais à ce jour moins de 400 milles hectares sont irrigués.\r\nLes activités rurales constituent une immense opportunité pour le Mali, car elles sont en mesure de créer des milliers d’emplois et d’améliorer sensiblement la situation économique du pays. L’engagement des exploitants agricoles en faveur de la production permet au Mali d’atténuer les effets de l’insécurité alimentaire.\r\n \r\nParadoxalement, le monde rural fait majoritairement partie des Maliens qui vivent en dessous du seuil de pauvreté, soit un revenu de moins de 120 000 FCFA par an. La pauvreté est visible et palpable en milieu rural. Parmi les difficultés, on peut noter, entre autres, le manque de logements, de moyens de locomotion, d’accès aux soins de santé, l’incapacité à scolariser les enfants et l’absence d’une alimentation équilibrée.\r\n \r\nLe défi majeur est de pouvoir améliorer les conditions de vie de nos braves populations rurales, tout en leur permettant de vivre décemment de leurs activités. Pour atteindre cet objectif, il est indispensable que toutes les parties prenantes s’y engagent fermement.\r\n \r\nSoutenir le monde rural au Mali\r\n \r\nLe Mali possède de nombreuses potentialités agro pastorales et halieutiques, mais les acteurs directs vivent dans des conditions précaires. La question principale serait de savoir comment améliorer la situation socio-économique des exploitants agricoles au Mali ?\r\n \r\nLes gouvernements successifs ont souvent porté la ruralité au cœur de leurs ambitions, c’est ainsi que dès 2005, le pays a adopté une loi d’orientation agricole dans le but de promouvoir « une agriculture durable, moderne, ainsi que l’entreprise agricole à travers la création d’un environnement propice au développement d’un secteur agricole structuré ».\r\n \r\nEntre 2015 et 2016 une politique de distribution de tracteurs aux exploitants agricoles avait été initiée, mais cette initiative s’est étiolée avec le temps jusqu’à la disparition du projet. À cela s’ajoute la politique de subvention des engrais par l’État. Force est de reconnaitre que ces différents engagements étatiques n’ont pas produit un bilan satisfaisant. Plus particulièrement la politique de subvention, soulève divers débats dans notre société, entre ceux qui la soutiennent pour l’augmentation des rendements et ceux qui la critiquent en dénonçant l’absence d’un cadre structuré et transparent. Je suggère d’évaluer cette politique sur ces dix dernières années afin de concilier les différents points de vue et orienter notre pays vers une démarche structurée, durable et productive.\r\n \r\nL’équipement du monde rural reste certes une priorité, mais le renforcement des capacités professionnelles à travers la formation est un préalable. Il est également nécessaire de construire des infrastructures agricoles à grande échelle pour mieux organiser le secteur mais aussi relier les lieux de production aux lieux de consommation afin d’éviter des pertes importantes. Un autre aspect s’avère important, à savoir la bonne gestion de la politique commerciale pour favoriser un meilleur soutien à la production locale face aux importations. Le secteur rural au Mali doit être mieux structuré avec le renforcement de la formation professionnelle et l’encouragement des jeunes à rejoindre ce secteur stratégique et lucratif pour notre pays.\r\n \r\nLe renforcement des activités rurales doit absolument être une priorité. Il devra se faire dans le cadre d’une diversification de partenariats, de transfert de compétences et de technologies venant des pays expérimentés et innovants vers notre pays.\r\nLes ambitions de notre loi d’orientation agricole doivent être mieux opérationnalisées et renforcées. Par ailleurs, il ne saurait y avoir une bonne politique rurale sans une bonne protection de l’environnement. La protection de nos cours d’eau, et de nos terres contre les pollutions constitue un défi majeur.\r\n \r\nÀ la volonté politique doit s’ajouter l’engagement citoyen afin de réussir à créer une dynamique durable en faveur de la ruralité.\r\n \r\nToutes ces initiatives trouveront un aboutissement avec une meilleure sécurisation de notre territoire national, raison pour laquelle, les forces de défense et de sécurité doivent être soutenues.\r\n \r\nLe financement des projets agricoles doit aussi être renforcé, surtout en direction de la jeunesse qui s’oriente de plus en plus vers l’agro-business.\r\n \r\nUne meilleure politique industrielle en faveur de la ruralité\r\n \r\nLe Mali, comme de nombreux pays africains, souffre de la non-transformation de ses produits locaux en produits industriels exportables. Le pays est majoritairement doté de petites unités artisanales et semi industrielles. La transformation du coton sur place reste une priorité, mais cela ne doit pas faire oublier la nécessité de favoriser la transformation des produits vivriers. Certains produits à forte valeur ajoutée, comme, le karité, le baobab, le sésame, l’anacarde et les céréales peuvent conférer un avantage certain à l’économie malienne, tout en améliorant les conditions de vie des producteurs locaux.\r\n \r\nLa ruralité n’étant pas limitée au seul secteur agricole, le Mali peut tirer un profit important des autres secteurs ruraux. En effet, la surface forestière est estimée à environ 12.4 millions d’hectares selon les chiffres officiels, mais force est de constater que ces forêts sont à la fois victimes de spéculation foncière, de braconnage et de destruction du fait de leur utilisation comme sanctuaire par les groupes terroristes. Il est important de sauvegarder ces ressources stratégiques en redynamisant la politique des « forêts classées ». Les forêts sont productrices d’essences rares et naturelles pouvant jouer un rôle important dans le développement de la médecine entre autres. Leur capacité à capter le dioxyde de carbone est par ailleurs un atout inestimable.\r\n \r\nQuant à l’élevage, notre pays est parmi les mieux lotis du continent africain, avec un cheptel estimé à près de 70 millions de bovins, caprins, ovins, équidés, porcins, camélidés, volailles etc.\r\n \r\nMalgré l’insécurité et les trafics de bétails, le Mali reste un acteur majeur du secteur, sa grande faiblesse est encore une fois, l’absence de formations et d’équipements pour les acteurs.\r\nLa pêche est également un secteur stratégique au Mali. Avant la grande insécurité de ces dernières années, les principales régions du centre du pays, Mopti et Ségou avaient une économie florissante, grâce entre autres à la pêche.\r\n \r\nLa pollution du fleuve Niger, l’absence d’une structuration du secteur, les activités minières, les changements climatiques ont, eu raison de la pêche au Mali. C’est une situation assez inquiétante, car si rien n’est fait rapidement, à ce rythme, l’activité risque de se réduire encore plus. La pêche est d’abord victime de l’absence d’une véritable politique nationale. Pourtant, selon les estimations de la FAO, le Mali pourrait assurer 40% de la production de poissons d’eau douce de l’Afrique de l’Ouest.\r\n \r\nLa ruralité mérite notre soutien à tous, du fait qu’au-delà même des enjeux économiques, elle est notre identité, nous nous y retrouvons par notre culture, nos traditions, nos organisations et notre bien-être social. La ruralité au Mali est très stratégique pour le développement du Mali. Beaucoup de pays industrialisés ont d’abord commencé par développer les activités rurales.\r\n \r\n Par Seydou Mamadou COULIBALY\r\n \r\n \r\n \r\nBENKAN : Ben, Baara, Nietaa\r\nEQUIPE APPLI BENKAN\r\nPUBLICATION : BOLY SINNA', '2023-05-13 16:17:41', '2023-05-13 16:17:41'),
(125, 'SMC : PARRAIN DU MANDAT 2023 DE LA JCI MALI', '1684004829.jpeg', 'Aujourd’hui symbole de la sphère politique Malienne, Seydou Mamadou Coulibaly parraine le mandat 2023 de la JCI Mali. Cela en sa qualité d\'entrepreneur accompli et de figure de référence pour la jeunesse.\r\nC’est dans cette dynamique que ce samedi 12 Mai 2023, lors du Conseil National de la Jeune Chambre Internationale JCI Mali, l’homme dans son rôle de parrain intervint à travers la personne de son représentant M. Sanogo Noury N’dyne.\r\nDes questions d’ordres Nationale furent évoquées en passant tant par le rôle et l’engagement de la jeunesse dans la reconstruction nationale, que par la valorisation de l’entreprenariat dans la même dynamique…\r\nLadite activité fut couronnée de succès !\r\n \r\nAvec SMC, ensemble pour un Mali Meilleur…\r\n \r\n \r\nBENKAN : Ben, Baara, Nietaa\r\n \r\nÉQUIPE APPLI BENKAN\r\nREDACTION : BOLY SINNA', '2023-05-13 17:07:09', '2023-05-13 17:07:09'),
(126, 'HOMMAGE AU PRÉSIDENT MODIBO KEITA !', '1684335068.jpg', '16 mai 1977-16 mai 2023, cela fait 46 ans que le Premier Président du Mali indépendant, fut arraché à notre affection. Le Président Modibo Keïta fut ce dirigeant qui a avant tout, porté la fierté malienne sur la scène nationale et internationale.\r\n Il incarnait nos valeurs culturelles dans ses aspects les plus nobles.\r\nNous sommes peu à avoir connu sa gouvernance, mais nous avons hérité de son parcours construit autour de la méritocratie. \r\nPendant sa scolarité, il fut un élève, puis, un étudiant exemplaire selon les différentes archives le concernant.\r\nD\'après l’avis de certains de ses compagnons, il avait le souci de la structuration, de l’organisation et de la rigueur.\r\n \r\nLe Président Modibo Keïta était cette voix respectée de l’Afrique, il n’a jamais manqué de solidarité envers les autres États africains en difficulté. C’est grâce à ses efforts que la guerre des sables en 1964, entre l’Algérie et le Maroc a pris fin. Également, son engagement en faveur de la Chine et de l’Afrique du Sud est resté dans les mémoires.\r\n \r\nDe nos jours, le Mali bénéficie de ce capital de respect construit très tôt par le Président Modibo Keïta, auquel je rends un hommage appuyé ce jour.\r\nJamais nous ne pouvons et ne devons oublier les combats du Président Modibo Keïta, qui fut le premier à pointer du doigt et à nommer ce qui deviendra l’un des combats actuels, à savoir, le « Néocolonialisme ».\r\nAu nom du Mouvement Benkan, le Pacte Citoyen, je m’incline devant la mémoire du Président Modibo Keïta, père de la nation malienne.\r\nNous prions pour le repos éternel de son âme et exprimons notre constante solidarité envers sa famille.\r\n \r\n#seydoumamadoucoulibaly\r\n \r\nBENKAN: Ben, Baara, Nietaa\r\nEQUIPE APPLI BENKAN\r\nPUBLICATION : BOLY SINNA ', '2023-05-17 12:51:08', '2023-05-17 12:51:08'),
(127, 'LES ACTUALITES DE LA COMMUNE 6', '1684364307.jpeg', 'La coordination de la commune VI à travers M. SIDIBE Amadou Fily, a parrainé la compétition de Maracana pendant ce mois de ramadan.\r\nC\'etait le 07 Mai 2023 entre les équipes de la commune. La finale a opposé FC Seriba contre FC boulangerie soldé par la victoire de Fc Seriba au tir au but. Une compétition organisée par Bama Show.\r\n \r\nBENKAN : Ben, baara, Nietaa\r\nEQUIPE APPLI BENKAN\r\nREDACTION : BOLY SINNA', '2023-05-17 20:58:27', '2023-05-17 20:58:27'),
(128, 'RENCONTRE BENKAN A N\'GOURALA', '1685804729.jpeg', 'Ce Samedi 03 Juin 2023, une rencontre organisée par la coordination régionale de Sikasso eut lieu dans la commune de N\'Gourala.\r\nParmi les objectifs de ladite rencontre dont la redynamisation du bureau local; les objectifs communs ainsi que l\'expression de l\'engagement des uns et des autres envers la cause ont étés mises en avant.\r\nL\'activité fut d\'un grand succès dans la commune.\r\n \r\nBenkan : Ben, Baara, Nietaa\r\n \r\nREDACTION : BOLY SINNA', '2023-06-03 13:05:29', '2023-06-03 13:05:29'),
(132, 'MISE EN PLACE DE LA COORDINATION DES FEMMES DE BAFOULABE', '1686037715.jpeg', 'Ce Dimanche 04/06/2023, la coordination féminine de Bafoulabé a vu le jour.\r\nUne forte délégation composée de deux pôles d’activités notamment les pôles femme et jeunesse, s’est rendue à Bafoulabé avec pour objectif de mettre en place une coordination de plus à l’honneur de Benkan.\r\nElles sont massivement sorties et n’ont pas manqué d’adresser leurs sincères remerciements aux missionnaires pour l’effort consentis.\r\nAvec Benkan, ensemble pour un Mali meilleur…  \r\n \r\nBENKAN : Ben, Baara, Nietaa  \r\nÉQUIPE APPLI BENKAN\r\nREDACTION : BOLY SINNA', '2023-06-06 05:48:35', '2023-06-06 05:48:35'),
(133, 'LE POLE JEUNESSE A BAFOULABE', '1686037820.jpeg', 'Le Dimanche 4 Juin 2023 a eu lieu la rencontre locale de la jeunesse Benkan de Bafoulabe.\r\nLe pôle jeunesse à travers cette activité de redynamisation, n’a point manqué de mots pour saluer chaleureusement le courage et le dévouement de ses militants partout au Mali.\r\nLadite rencontre a été honorée par une forte participation des délégués venus des 13 Communes du Cercle de Bafoulabé.\r\nBENKAN : Ben, Baara, Nietaa  \r\nÉQUIPE APPLI BENKAN\r\nREDACTION : BOLY SINNA', '2023-06-06 05:50:20', '2023-06-06 05:50:20'),
(134, 'LE POLE FEMME A MANANTALI', '1686037865.jpeg', 'Ce Lundi 05/06/2023, à Manantali, une coordination féminine a été mise en place par le pôle « engagement et promotion de la femme ».\r\nL’activité fut couronnée de succès avec une importante participation des femmes de Manantali et environnants.\r\nAu compte du pole femme, Benkan accueil un bureau de coordination de plus !\r\n \r\nBenkan : Ben, Baraa, Nietaa\r\nEQUIPE APPLI BENKAN\r\nREDACTION : BOLY SINNA', '2023-06-06 05:51:05', '2023-06-06 05:51:05'),
(135, 'FINAL DE LA COMPETITION \"COUPE BENKAN\" DE KALABANCOURA aci', '1686519172.jpeg', 'Hier le Dimanche 10 Juin 2023, au sien de la commune 5 plus précisément à Kalabancoura Aci, L\'association \"Sikida Kounkanko\" avec sa présidente Mme BOLY SINNA finalisa sa compétition de football dénommée \"coupe Benkan\".\r\nLa rencontre opposait deux grandes équipes de la commune 5 : Le FC-CALCIO ; et le FC-ASSK. Achevée par une victoire de 1-0 à la faveur de cette dernière, l\'activité fut clôturée par remises de prix et remerciements pilotés par le Directeur du cabinet Mr Coulibaly Bassidi.\r\nEn partenariat avec le bureau de coordination de la commune 5, l\'événement fut d’un grand succès !\r\n \r\nAvec Benkan, ensemble pour un Mali meilleur...\r\nBENKAN : Ben, Baara, Nietaa\r\nREDACTION : BOLY SINNA', '2023-06-11 19:32:52', '2023-06-11 19:32:52'),
(137, 'SMC, PARRAIN DE LA JEUNE CHAMBRE INTERNATIONALE (JCI) MALI', '1688886624.jpeg', 'Participation de M. Ousmane DIARRA dit Gousno, Président du Pôle jeunesse comme représentant de M. Seydou Mamadou COULIBALY, Président du Mouvement Benkan le Pacte Citoyen et Parrain National du Mandat « JCI 2023 », à l’inauguration du siège National de la Jeune Chambre Internationale du Mali.\r\nLa cérémonie a eu lieu le samedi 8 Juillet 2023 à Bamako.\r\n \r\nAvec Benkan, ensemble pour un Mali meilleur...\r\nBENKAN : Ben, Baara, Nietaa\r\nREDACTION : BOLY SINNA', '2023-07-09 05:10:25', '2023-07-09 05:10:25'),
(140, 'LE CLUB \"ANKA SEYDOU\" EN ACTION', '1688973796.jpeg', 'Conférence de presse organisée par le Club \"Ankan Seydou\" au Siège National ce Samdi 08/07 en prélude de la grande finale de  la coupe inter-scolaire organisée par le mouvement des jeunes Étudiants MJE en partenariat avec le dit club et BENKAN.\r\nÉtaitent présents les présidents de pôles, certains responsables de BENKAN et Mme Soumaré, la présidente de \"Anka Seydou\".    \r\n \r\nAvec Benkan, ensemble pour un Mali meilleur...\r\nBenkan: Ben, Baara, Nietaa    \r\n \r\nPUBLICATION : BOLY SINNA    ', '2023-07-10 05:23:16', '2023-07-10 05:23:16'),
(141, 'LA « COUPE BEKAN » DU CLUB DE SOUTIEN « ANKA SEYDOU »', '1689507331.jpeg', 'Ce Vendredi 14 Juillet 2023, la finale de la deuxième édition du tournoi interscolaire organisée par le club de soutien Anka Seydou a eu lieu à Dravela.\r\nLes équipes de l’ESG et de Louis Braille se sont affrontées lors d’un match intense, où elles ont montré un niveau de jeu remarquable.  \r\nl’ESG remporte la victoire avec un score de 4 à 2.\r\n \r\nAvec Benkan, ensemble pour un Mali meilleur...\r\nBENKAN : Ben, Baara, Nietaa\r\n \r\n \r\nREDACTION : BOLY SINNA', '2023-07-16 09:35:31', '2023-07-16 09:35:31'),
(142, 'BENKAN SEGOU A L\'HONNEUR...', '1689508145.jpeg', 'Réunis, les Présidents des Pôles Implantations, Jeunesse et Mobilisations, avec le Coordinateur des clubs et associations organisent la rencontre des Coordinateurs Benkan des 7 Cercles de la région de Ségou.\r\nC’était ce samedi 15 Juillet 2023 au sein du siège régional de Ségou.\r\nLa rencontre, dans le cadre d’une redynamisation des coordinations de cercle de la zone, fut d’un grand succès.\r\nAvec Benkan, ensemble pour un Mali meilleur...\r\nBENKAN : Ben, Baara, Nietaa\r\n \r\n \r\nREDACTION : BOLY SINNA', '2023-07-16 09:49:05', '2023-07-16 09:49:05'),
(143, 'RENCONTRE ENTRE SMC ET L\'ASSOCIATION \"SINANKOUYA TON\" DU MALI', '1689712290.jpeg', 'C’était aujourd’hui Mardi 18/07 lors d’une rencontre entre le président SMC et une forte délégation de l’association « Sinankouya ton » du Mali, conduite par son président Mr Sékou Siraman Diarra.\r\nEntre promesses d’alliance et de soutient à la candidature du président de BENKAN, les échanges ont été particulièrement fécondes !\r\nDans l’objectif de bâtir ensemble un Mali meilleur, le mouvement BENKAN prône particulièrement alliances, ententes et accords autours de ses projets.\r\nAvec Benkan, ensemble pour un Mali meilleur...\r\nBENKAN : Ben, Baara, Nietaa\r\n \r\n \r\nREDACTION : BOLY SINNA\r\n ', '2023-07-18 18:31:30', '2023-07-18 18:31:30'),
(144, 'BONNE ET HEUREUSE ANNÉE A LA COMMUNAUTÉ MUSULMANE', '1689780633.jpg', '', '2023-07-19 13:30:33', '2023-07-19 13:30:33'),
(145, 'Bonne fête d\'Achoura à toute la communauté Musulmane', '1690542673.jpg', '', '2023-07-28 09:11:13', '2023-07-28 09:11:13'),
(146, 'SMC AU SIEGE DE LA JEUNE CHAMBRE INTERNATIONALE MALI', '1690625192.jpg', 'C’était hier Vendredi 28, SMC accompagné par sa jeunesse, a rendu une visite de courtoisie au siège nouvellement inauguré de la jeune chambre internationale Mali à Bamako.\r\nEn tant que parrain national du mandat 2023, SMC n’a point manqué l’occasion pour saluer les efforts et initiatives du président JCI 2023 et par la même, réitérer sa fierté à l’égard de la jeunesse malienne toute entière…\r\nDes questions d’avenir et de reconstruction nationale étaient au rendez-vous !\r\n \r\nAvec Benkan, ensemble pour un Mali meilleur...\r\nBenkan: Ben, Baara, Nietaa\r\n \r\nRédaction : BOLY SINNA ', '2023-07-29 08:06:32', '2023-07-29 08:06:32'),
(147, 'VISITE AU SIEGE DU PARTI CARAJ FASSO NIETAA', '1690751610.jpeg', 'Ce samedi 29 Juillet à Bamako, une forte délégation du mouvement BENKAN LE PACTE CITOYEN dirigée par le président Seydou Mamadou Coulibaly a rendu une visite de courtoisie au siège du parti politique \"CARAJ FASSO NIETAA\" de M. Mariko Mahamane.\r\nLes échanges, portées essentiellement sur les différents fondements et visions des deux formations politiques, ont étés particulièrement riches et pleines de promesses pour un avenir commun dans l’esprit d’une reconstruction Nationale sans précédent.\r\nEntre alliances et accords, le mouvement benkan depuis sa création n’a ménagé aucun effort dans le sens de la reconstruction d’un Mali uni et fort…\r\n \r\nAvec Benkan, ensemble pour un Mali meilleur...\r\nBENKAN : Ben, Baara, Nietaa\r\nREDACTION : BOLY SINNA', '2023-07-30 19:13:30', '2023-07-30 19:13:30'),
(148, 'LE VICE PRÉSIDENT MODIBO KEÏTA À L\'HONNEUR...', '1690894925.jpg', 'Ce Lundi 31 juillet 2023, Monsieur Modibo KEÏTA, Membre du Conseil National de Transition (CNT), et Vice-président du Mouvement Benkan, le Pacte Citoyen, a eu l’insigne honneur de recevoir une délégation envoyée par le Gouverneur de la Région de Ségou pour lui présenter le trophée du premier prix de la biennale culturelle et artistique de Mopti, et lui remercier pour son soutien constant et de taille au rayonnement de sa Région.\r\nBENKAN : Ben, Baara; Nietaa\r\n \r\nPublication : BOLY SINNA ', '2023-08-01 11:02:05', '2023-08-01 11:02:05'),
(149, 'LA JEUNESSE BENKAN À DJÉMA', '1691179009.jpg', 'Ce Vendredi 04 Août, le bureau national de la jeunesse Benkan a tenu la rencontre locale avec la jeunesse du cercle de Djéma.\r\nLes 15 communes du dit cercle étaient valablement représentées par des hommes et des femmes leaders de leurs cités.\r\nLes échange ont porté essentiellement sur la vie, le fonctionnement et les visions du pacte citoyen Benkan.\r\n \r\nAvec Benkan, ensemble pour un Mali meilleur...\r\n \r\nBENKAN : Ben, Baara, Nietaa\r\n \r\nREDACTION : BOLY SINNA', '2023-08-04 17:56:50', '2023-08-04 17:56:50'),
(150, 'JOURNEE CULTURELLE DE LA JEUNESSE DE LA COMMUNE 6', '1691360892.jpeg', 'Ce samedi 5 Août 2023 a eu lieu la cérémonie d’ouverture des journées culturelles du Collectif des jeunes Leaders de la Commune VI de Bamako.\r\nLadite cérémonie est parrainée par Honorabe CAMARA Saoudatou DEMBELE, avec l’accompagnement de Benkan, le Pacte citoyen.\r\n \r\nBENKAN : Ben, Baara, Nietaa\r\nPUBLICATION : BOLY SINNA\r\n ', '2023-08-06 20:28:12', '2023-08-06 20:28:12'),
(151, 'BENKAN ACCEUIL LE \"FORUM LIBRE\" A SON SIEGE', '1691699155.jpeg', 'Ce Jeudi 10 Aout 2023, le président Seydou Mamadou Coulibaly (SMC) accompagné d’une forte délégation de Benkan, a reçu des représentants du « forum libre » et de la « coalition des grands républicains du Mali ».\r\nLa rencontre fut d’un grand succès dans l’exposition d’une vision commune pour un Mali meilleur.\r\n \r\nAvec Benkan, ensemble pour un Mali meilleur...\r\nBENKAN : Ben, Baara, Nietaa\r\nREDACTION : BOLY SINNA', '2023-08-10 18:25:56', '2023-08-10 18:25:56'),
(152, 'NOUVELLE VISION AU SIEGE DE BENKAN', '1692184123.jpeg', 'Ce Mardi 15 Aout 2023, le président Seydou Mamadou Coulibaly (SMC) accompagné d’une forte délégation de Benkan, a reçu les représentants de l’association « Vision Nouvelle ».\r\nDans l’optique d’une éventuelle alliance entre les deux formations, ladite rencontre fut couronnée de succès.\r\n \r\nAvec Benkan, ensemble pour un Mali meilleur...\r\n \r\nBENKAN : Ben, Baara, Nietaa\r\nREDACTION : BOLY SINNA', '2023-08-16 09:08:44', '2023-08-16 09:08:44'),
(153, 'BENKAN A SIKASSO VILLE', '1692302036.jpeg', 'Ce Mercredi 16/08 2023, une délégation du Mouvement Benkan composée par :\r\n- Dr Salif Traoré (Vice-Président chargé de la région de Sikasso)\r\n- Mr Seydou Mamadou Coulibaly N⁰2 CGE\r\n- Mr Alhassane Bengaly CNSAS\r\n- Mr Dramane Diarra PI\r\nA procédé à la remise d\'un jet de maillot à l’équipe « Black STAR » de Sanoubougou 2 de SIKASSO.\r\nLes dirigeants sportifs du quartier n’ont pas caché leur joie par rapport au geste.\r\n \r\nAvec Benkan, ensemble pour un Mali meilleur...\r\n \r\nBENKAN : Ben, Baara, Nietaa\r\nPUBLICATION : BOLY SINNA', '2023-08-17 17:53:56', '2023-08-17 17:53:56'),
(154, 'BENKAN DANS LA REGION DE SIKASSO', '1692526024.jpeg', 'Ce Jeudi 18/08, a eu lieu une rencontre du mouvement benkan à Sanzana dans la region de Sikasso.\r\nOrganisée conjointement par le coordinateur Vamara A Koné de Sikasso et Docteur Salif Famory Traoré le vice président National chargé de ladite région.\r\nLes échanges furent fructueuses...\r\n \r\nBENKAN : Ben, Baara, Nietaa\r\nPUBLICATION : BOLY SINNA', '2023-08-20 08:07:04', '2023-08-20 08:07:04'),
(155, 'MISE EN PLACE DE LA COORDINATION DES JEUNES EN COMMUNE 5', '1693854942.jpeg', 'Ce Dimanche 03 Septembre 2023, s’est tenue dans le nouveau siège de la commune5 la validation du bureau communal de la jeunesse Benkan.\r\nValidé par le coordinateur national de la jeunesse M. Coulibaly Mahamadou ; le bureau avec à sa tête M. Touré Mahamane comme coordinateur, est désormais reconnu légalement selon les textes du mouvement comme étant un point de repère pour toute la jeunesse de la commune 5.\r\nBon vent au tout nouveau bureau, puisse le bon Dieu les assister !\r\n \r\nAvec Benkan, ensemble pour un Mali meilleur...\r\nBENKAN : Ben, Baara, Nietaa\r\n \r\nREDACTION : BOLY SINNA', '2023-09-04 17:15:42', '2023-09-04 17:15:42'),
(157, 'LE POLE FEMME A BOUGOUNI', '1694300797.jpeg', 'Ce Jeudi 07 Septembre 2023 dans la région de Bougouni, a eu lieu la rencontre locale du pôle engagement et promotion féminine de Benkan.\r\nLa présidente du pôle à travers cette activité de prise de contact, n’a point manqué de mot pour saluer chaleureusement le courage et le dévouement de ses militantes.\r\nLadite rencontre couronnée par la validation du bureau de coordination régionale de Bougouni, a été honorée par une forte participation de la gente féminine ainsi que de certaines autorités de ladite région.\r\nAvec Benkan, ensemble pour un Mali meilleur...\r\n \r\n \r\nBENKAN : Ben, Baara, Nietaa\r\nREDACTION : BOLY SINNA', '2023-09-09 21:06:37', '2023-09-09 21:06:37'),
(158, 'LES FEMMES DE SIKASSO DISENT OUI A BENKAN !', '1694301540.jpeg', 'Le Vendredi 08 Septembre 2023, la présidente du pole femme Mme Diarra Madji kanté accompagnée d’une forte délégation, a procédé à la mise en place du bureau de coordination régionale de Sikasso.\r\nLa nouvelle présidente Mme Aissata Coulibaly, adressa un message d’engagement et de soutien total au mouvement Benkan ainsi qu’à ses convictions.\r\nL’activité fut d’un grand succès, et nous souhaitons un bon vent aux nouveaux bureaux de coordination mis en place.\r\nAvec Benkan, ensemble pour un Mali meilleur...\r\n \r\nBENKAN : Ben, Baara, Nietaa\r\nREDACTION : BOLY SINNA', '2023-09-09 21:19:00', '2023-09-09 21:19:00');

-- --------------------------------------------------------

--
-- Structure de la table `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `classement` int(11) NOT NULL,
  `electeurs` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `regions`
--

INSERT INTO `regions` (`id`, `nom`, `classement`, `electeurs`, `created_at`, `updated_at`) VALUES
(1, 'Kayes', 2, 472208, NULL, NULL),
(2, 'Koulikoro', 3, 631282, NULL, NULL),
(3, 'Sikasso', 4, 492094, NULL, NULL),
(4, 'Ségou', 5, 762148, NULL, NULL),
(5, 'Mopti', 6, 463695, NULL, NULL),
(6, 'Tombouctou', 7, 299926, NULL, NULL),
(7, 'Gao', 8, 238472, NULL, NULL),
(8, 'Kidal', 9, 38325, NULL, NULL),
(9, 'Taoudénit', 10, 1, NULL, NULL),
(10, 'Menaka', 11, 50804, NULL, NULL),
(11, 'Bougouni', 12, 456356, NULL, NULL),
(12, 'Dioila', 13, 222973, NULL, NULL),
(13, 'Nioro', 14, 213621, NULL, NULL),
(14, 'Koutiala', 15, 257657, NULL, NULL),
(15, 'Kita', 16, 286359, NULL, NULL),
(16, 'Nara', 17, 102714, NULL, NULL),
(17, 'Bandiagara', 18, 421820, NULL, NULL),
(18, 'San', 19, 398587, NULL, NULL),
(19, 'Douentza', 20, 147637, NULL, NULL),
(20, 'Gourma', 21, 68859, NULL, NULL),
(21, 'Bamako', 1, 1265484, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adhesions`
--
ALTER TABLE `adhesions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `calendars`
--
ALTER TABLE `calendars`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cercles`
--
ALTER TABLE `cercles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cercles_region_id_index` (`region_id`);

--
-- Index pour la table `communes`
--
ALTER TABLE `communes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `coor_bases`
--
ALTER TABLE `coor_bases`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `coor_cercles`
--
ALTER TABLE `coor_cercles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `coor_coms`
--
ALTER TABLE `coor_coms`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `coor_regions`
--
ALTER TABLE `coor_regions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `enquser`
--
ALTER TABLE `enquser`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `adhesions`
--
ALTER TABLE `adhesions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=952;

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `avis`
--
ALTER TABLE `avis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `calendars`
--
ALTER TABLE `calendars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `cercles`
--
ALTER TABLE `cercles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT pour la table `communes`
--
ALTER TABLE `communes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=780;

--
-- AUTO_INCREMENT pour la table `coor_bases`
--
ALTER TABLE `coor_bases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `coor_cercles`
--
ALTER TABLE `coor_cercles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `coor_coms`
--
ALTER TABLE `coor_coms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `coor_regions`
--
ALTER TABLE `coor_regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `enquser`
--
ALTER TABLE `enquser`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT pour la table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cercles`
--
ALTER TABLE `cercles`
  ADD CONSTRAINT `cercles_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
