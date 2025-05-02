-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2025 at 06:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abscenceplatform`
--

-- --------------------------------------------------------

--
-- Table structure for table `absence`
--

CREATE TABLE `absence` (
  `date_au_plus_tard` date DEFAULT NULL,
  `date_au_plus_tot` date DEFAULT NULL,
  `abs_ratt_id` bigint(20) NOT NULL,
  `enseignant_user_id` bigint(20) DEFAULT NULL,
  `acceptee` enum('non','oui') DEFAULT NULL,
  `pinned` enum('non','oui') DEFAULT NULL,
  `seancedb` enum('S1','S2','S3','S4','S5') DEFAULT NULL,
  `seancefin` enum('S1','S2','S3','S4','S5') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `absence`
--

INSERT INTO `absence` (`date_au_plus_tard`, `date_au_plus_tot`, `abs_ratt_id`, `enseignant_user_id`, `acceptee`, `pinned`, `seancedb`, `seancefin`) VALUES
('2026-06-05', '2025-06-01', 52, 4, NULL, NULL, 'S1', 'S4'),
('2025-01-10', '2025-01-05', 201, 1, NULL, 'non', 'S1', 'S2'),
('2025-01-20', '2025-01-15', 202, 2, NULL, 'non', 'S1', 'S3'),
('2025-02-05', '2025-02-01', 203, 3, NULL, 'oui', 'S2', 'S4'),
('2025-02-15', '2025-02-10', 204, 4, NULL, 'non', 'S2', 'S5'),
('2025-02-25', '2025-02-20', 205, 5, NULL, 'oui', 'S3', 'S1'),
('2025-03-06', '2025-03-01', 206, 6, NULL, 'non', 'S3', 'S2'),
('2025-03-15', '2025-03-10', 207, 7, NULL, 'oui', 'S4', 'S3'),
('2025-03-25', '2025-03-20', 208, 8, NULL, 'non', 'S4', 'S5'),
('2025-04-05', '2025-04-01', 209, 9, NULL, 'oui', 'S5', 'S1'),
('2025-04-15', '2025-04-10', 210, 10, NULL, 'non', 'S5', 'S2'),
('2025-04-25', '2025-04-20', 211, 11, 'non', 'oui', 'S1', 'S4'),
('2025-05-06', '2025-05-01', 212, 12, 'oui', 'non', 'S2', 'S5'),
('2025-05-15', '2025-05-10', 213, 13, 'non', 'oui', 'S3', 'S1'),
('2025-05-25', '2025-05-20', 214, 14, 'oui', 'non', 'S4', 'S2'),
('2025-06-06', '2025-06-01', 215, 15, 'non', 'oui', 'S5', 'S3'),
('2025-06-15', '2025-06-10', 216, 16, 'oui', 'non', 'S1', 'S4'),
('2025-06-25', '2025-06-20', 217, 17, 'non', 'oui', 'S2', 'S5'),
('2025-07-06', '2025-07-01', 218, 18, 'oui', 'non', 'S3', 'S1'),
('2025-07-15', '2025-07-10', 219, 19, 'non', 'oui', 'S4', 'S2'),
('2025-07-25', '2025-07-20', 220, 20, 'oui', 'non', 'S5', 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `absence_etudiants_qui_epinglent`
--

CREATE TABLE `absence_etudiants_qui_epinglent` (
  `absence_abs_ratt_id` bigint(20) NOT NULL,
  `etudiants_qui_epinglent_user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abs_epinglee`
--

CREATE TABLE `abs_epinglee` (
  `id_abs` bigint(20) NOT NULL,
  `id_usr` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `abs_epinglee`
--

INSERT INTO `abs_epinglee` (`id_abs`, `id_usr`) VALUES
(201, 101),
(202, 101),
(203, 102),
(204, 102),
(205, 103),
(206, 103),
(207, 104),
(208, 104),
(209, 105),
(210, 105),
(211, 106),
(212, 106),
(213, 107),
(214, 107),
(215, 108),
(216, 108),
(217, 109),
(218, 109),
(219, 110),
(220, 110),
(201, 101),
(202, 101),
(203, 102),
(204, 102),
(205, 103),
(206, 103),
(207, 104),
(208, 104),
(209, 105),
(210, 105),
(211, 106),
(212, 106),
(213, 107),
(214, 107),
(215, 108),
(216, 108),
(217, 109),
(218, 109),
(219, 110),
(220, 110);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `motdepass` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `numtel` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `email`, `motdepass`, `nom`, `numtel`, `prenom`) VALUES
(1001, 'admin1@enic.tn', '$2a$10$c4BnpqED5eoyC4RojzMsDuu6yw9ZQHH4ILEJmVEZ/Y58Rpdgk2.9S', 'Saida', '+21629110001', 'Saida'),
(1002, 'admin2@enic.tn', '$2a$10$/6Ete4GhIad/NjGbnpDOLOWR23Em8Nr65U3KSiHo44MdsnXem1FWe', 'Khaled', '+21629110002', 'Khaled'),
(1003, 'admin3@enic.tn', '$2a$10$BpL8jxAOAul3ZOrfTOyITOPGj.WYxchI4gzuxXSP2fGqSPFN2JVem', 'Nadia', '+21629110003', 'Nadia'),
(1004, 'admin4@enic.tn', '$2a$10$agY4/EVQv3DGkD32064GJO42nT6GKHnoBAStGRKyixdOxYRRdYR/C', 'Maher', '+21629110004', 'Maher'),
(1005, 'admin5@enic.tn', '$2a$10$L4D3OuS2/NsogWAF7eMJHuU.TQyaua4MNIaWxRT2q35VG4GEhnRZi', 'Yosra', '+21629110005', 'Yosra'),
(1006, 'admin6@enic.tn', '$2a$10$3rFhnDgBeHLHvTUce7aMiOK6GZYd9S.PC99.tOShGUmniVNETNvmK', 'Karim', '+21629110006', 'Karim'),
(1007, 'admin7@enic.tn', '$2a$10$N3BaKci8Cg2stvS23BhYLerFyecuNd1BIsSarJQYicr6wS.M8Itse', 'Safa', '+21629110007', 'Safa'),
(1008, 'admin8@enic.tn', '$2a$10$ULoelgiVxjnINh1m8wdD5uTL8114/sNk.XqVA8ZzCIrhi3KA7ycBC', 'Imen', '+21629110008', 'Imen'),
(1009, 'admin9@enic.tn', '$2a$10$tbt4ULYxmYIAvxTVkBqO0uQKQwrKAOYQmK87Yfwzgs6OA1iOvr19O', 'Selim', '+21629110009', 'Selim'),
(1010, 'admin10@enic.tn', '$2a$10$8Cy1IwiF2F.KG9Gj5CrVAeTDWpGksxFWjY4yyTP.LUVeRs1wkkpLa', 'Ons', '+21629110010', 'Ons'),
(1011, 'admin11@enic.tn', '$2a$10$lm2cuZg7Mm1TF//b3JhmkOA5PHiZl5ZOH25XkpNY5fLk2O2ydSyYa', 'Lamia', '+21629110011', 'Lamia'),
(1012, 'admin12@enic.tn', '$2a$10$fu6jn9VHP/3aiwNdYYqqTOZjpVPaSzMx4aLj3BNNyIxbB2Rqhg/qy', 'Hedi', '+21629110012', 'Hedi'),
(1013, 'admin13@enic.tn', '$2a$10$tG6nyYLykCoNbyDY7dpA3O952eGig4jkEHkw0Rpyrzcy7axd2vGde', 'Rania', '+21629110013', 'Rania'),
(1014, 'admin14@enic.tn', '$2a$10$LgLSQ5dp8eYU/lUFFxUBfeZpwRncMWnDxxwvSevJH8UUWT/C5ulMq', 'Nizar', '+21629110014', 'Nizar'),
(1015, 'admin15@enic.tn', '$2a$10$X83KbKo63Kz.L9whHg4tDONFyGUbNt7Jda1ZN/p0j46rHY2pkvM4u', 'Eya', '+21629110015', 'Eya'),
(1016, 'admin16@enic.tn', '$2a$10$glYLO5dNM68ohZvEEUKecOx/O.BZCkT7ipTzvDGsOg4K3APsMURR2', 'Lotfi', '+21629110016', 'Lotfi'),
(1017, 'admin17@enic.tn', '$2a$10$AXPlpeN.HcvZDr11PFkpjOHJuTuhvdG1NOT4Hpngy/yJCP3viqZ7q', 'Marwa', '+21629110017', 'Marwa'),
(1018, 'admin18@enic.tn', '$2a$10$bK2TT8ZEdwfL962gnIGyoOQA4SBvZRmRyhdxlhUKmR.SlNCxdvEci', 'Salma', '+21629110018', 'Salma'),
(1019, 'admin19@enic.tn', '$2a$10$Dg0trav5E3o2gzSOc2xDRuvrueyhlFhKCEd22wYSzLHxhYz1NLFj2', 'Anis', '+21629110019', 'Anis'),
(1020, 'admin20@enic.tn', '$2a$10$V2Kcrc70nAwW8RuKjClqk.hTbbBsrcrXuvlaS6entIvyw/sNCia7e', 'Nour', '+21629110020', 'Nour');

-- --------------------------------------------------------

--
-- Table structure for table `emploi_temps`
--

CREATE TABLE `emploi_temps` (
  `seance1_id` int(11) DEFAULT NULL,
  `seance2_id` int(11) DEFAULT NULL,
  `seance3_id` int(11) DEFAULT NULL,
  `seance4_id` int(11) DEFAULT NULL,
  `seance5_id` int(11) DEFAULT NULL,
  `classe` enum('DEUXIEME','PREMIERE','TROISIEME') NOT NULL,
  `groupe` enum('A','B','C','D','E') NOT NULL,
  `jourr` enum('JEUDI','LUNDI','MARDI','MERCREDI','SAMEDI','VENDREDI') NOT NULL,
  `specialite` enum('GSI','GSIL','INFO','MECA') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emploi_temps`
--

INSERT INTO `emploi_temps` (`seance1_id`, `seance2_id`, `seance3_id`, `seance4_id`, `seance5_id`, `classe`, `groupe`, `jourr`, `specialite`) VALUES
(9, NULL, 13, 4, NULL, 'DEUXIEME', 'A', 'JEUDI', 'GSI'),
(16, 17, 18, 19, 20, 'DEUXIEME', 'A', 'JEUDI', 'MECA'),
(1, 2, 3, 4, 5, 'DEUXIEME', 'A', 'LUNDI', 'GSI'),
(NULL, 1, 8, NULL, 9, 'DEUXIEME', 'A', 'LUNDI', 'MECA'),
(9, 2, NULL, 15, 12, 'DEUXIEME', 'A', 'MARDI', 'GSI'),
(18, NULL, NULL, 14, 3, 'DEUXIEME', 'A', 'MARDI', 'MECA'),
(20, 12, NULL, 7, 3, 'DEUXIEME', 'A', 'MERCREDI', 'GSI'),
(NULL, 17, 1, NULL, 8, 'DEUXIEME', 'A', 'MERCREDI', 'MECA'),
(NULL, 13, 9, NULL, 15, 'DEUXIEME', 'A', 'SAMEDI', 'GSI'),
(7, NULL, NULL, 11, 4, 'DEUXIEME', 'A', 'SAMEDI', 'MECA'),
(3, 7, 9, NULL, 12, 'DEUXIEME', 'A', 'VENDREDI', 'GSI'),
(NULL, 8, 1, 15, 9, 'DEUXIEME', 'A', 'VENDREDI', 'MECA'),
(NULL, 19, 13, 12, 14, 'DEUXIEME', 'B', 'JEUDI', 'INFO'),
(7, 8, 9, 10, 1, 'DEUXIEME', 'B', 'LUNDI', 'INFO'),
(20, NULL, 8, 2, 11, 'DEUXIEME', 'B', 'MARDI', 'INFO'),
(13, 7, 16, 15, NULL, 'DEUXIEME', 'B', 'MERCREDI', 'INFO'),
(NULL, NULL, 20, 15, 13, 'DEUXIEME', 'B', 'SAMEDI', 'INFO'),
(NULL, 2, 5, 4, NULL, 'DEUXIEME', 'B', 'VENDREDI', 'INFO'),
(7, 17, 5, NULL, 12, 'DEUXIEME', 'C', 'JEUDI', 'GSI'),
(13, 14, 15, 16, 17, 'DEUXIEME', 'C', 'LUNDI', 'GSI'),
(18, 9, 4, NULL, NULL, 'DEUXIEME', 'C', 'MARDI', 'GSI'),
(9, 15, 1, NULL, 6, 'DEUXIEME', 'C', 'MERCREDI', 'GSI'),
(NULL, 16, 18, NULL, 3, 'DEUXIEME', 'C', 'SAMEDI', 'GSI'),
(4, 1, 10, 12, NULL, 'DEUXIEME', 'C', 'VENDREDI', 'GSI'),
(19, NULL, NULL, 7, 8, 'DEUXIEME', 'D', 'JEUDI', 'INFO'),
(4, 5, 6, 7, 8, 'DEUXIEME', 'D', 'JEUDI', 'MECA'),
(19, 20, 1, 2, 3, 'DEUXIEME', 'D', 'LUNDI', 'INFO'),
(9, NULL, 17, 6, 18, 'DEUXIEME', 'D', 'LUNDI', 'MECA'),
(8, 7, 14, NULL, 16, 'DEUXIEME', 'D', 'MARDI', 'INFO'),
(12, NULL, 17, 13, 15, 'DEUXIEME', 'D', 'MARDI', 'MECA'),
(14, 15, 2, NULL, 20, 'DEUXIEME', 'D', 'MERCREDI', 'INFO'),
(18, 11, NULL, NULL, 1, 'DEUXIEME', 'D', 'MERCREDI', 'MECA'),
(NULL, 18, NULL, 3, 1, 'DEUXIEME', 'D', 'SAMEDI', 'INFO'),
(NULL, 16, 7, NULL, 9, 'DEUXIEME', 'D', 'SAMEDI', 'MECA'),
(6, NULL, 15, 9, 8, 'DEUXIEME', 'D', 'VENDREDI', 'INFO'),
(2, NULL, 8, NULL, 3, 'DEUXIEME', 'D', 'VENDREDI', 'MECA'),
(10, 1, 2, 3, 4, 'DEUXIEME', 'E', 'JEUDI', 'GSIL'),
(13, 16, NULL, 7, 2, 'DEUXIEME', 'E', 'LUNDI', 'GSIL'),
(16, 15, NULL, 14, 10, 'DEUXIEME', 'E', 'MARDI', 'GSIL'),
(18, NULL, 19, 2, NULL, 'DEUXIEME', 'E', 'MERCREDI', 'GSIL'),
(NULL, 13, 4, NULL, 8, 'DEUXIEME', 'E', 'SAMEDI', 'GSIL'),
(20, NULL, 2, 6, 17, 'DEUXIEME', 'E', 'VENDREDI', 'GSIL'),
(3, 8, 5, NULL, 12, 'PREMIERE', 'A', 'JEUDI', 'INFO'),
(NULL, 14, 3, NULL, 20, 'PREMIERE', 'A', 'LUNDI', 'INFO'),
(NULL, 8, 9, 11, NULL, 'PREMIERE', 'A', 'MARDI', 'INFO'),
(11, NULL, 1, 15, 3, 'PREMIERE', 'A', 'MERCREDI', 'INFO'),
(20, 17, NULL, 1, 10, 'PREMIERE', 'A', 'SAMEDI', 'INFO'),
(11, 12, 13, 14, 15, 'PREMIERE', 'A', 'VENDREDI', 'INFO'),
(12, 15, 7, NULL, NULL, 'PREMIERE', 'B', 'JEUDI', 'GSI'),
(NULL, 1, 2, 5, 11, 'PREMIERE', 'B', 'JEUDI', 'GSIL'),
(14, 18, NULL, NULL, 12, 'PREMIERE', 'B', 'LUNDI', 'GSI'),
(NULL, 5, 18, NULL, 9, 'PREMIERE', 'B', 'LUNDI', 'GSIL'),
(NULL, 6, 14, NULL, 1, 'PREMIERE', 'B', 'MARDI', 'GSI'),
(2, 3, 4, 5, 6, 'PREMIERE', 'B', 'MARDI', 'GSIL'),
(6, 4, NULL, 9, NULL, 'PREMIERE', 'B', 'MERCREDI', 'GSI'),
(9, 16, 7, 17, NULL, 'PREMIERE', 'B', 'MERCREDI', 'GSIL'),
(13, 11, 7, NULL, NULL, 'PREMIERE', 'B', 'SAMEDI', 'GSI'),
(5, NULL, 2, 12, 10, 'PREMIERE', 'B', 'SAMEDI', 'GSIL'),
(17, 18, 19, 20, 1, 'PREMIERE', 'B', 'VENDREDI', 'GSI'),
(1, 18, NULL, 3, 4, 'PREMIERE', 'B', 'VENDREDI', 'GSIL'),
(7, NULL, 9, 19, 2, 'PREMIERE', 'C', 'JEUDI', 'MECA'),
(17, 18, NULL, 11, 13, 'PREMIERE', 'C', 'LUNDI', 'MECA'),
(8, 9, 10, 1, 2, 'PREMIERE', 'C', 'MARDI', 'MECA'),
(12, NULL, 2, 4, 14, 'PREMIERE', 'C', 'MERCREDI', 'MECA'),
(NULL, 11, 10, 13, 5, 'PREMIERE', 'C', 'SAMEDI', 'MECA'),
(14, 18, 3, 11, NULL, 'PREMIERE', 'C', 'VENDREDI', 'MECA'),
(10, NULL, 3, 17, 6, 'PREMIERE', 'D', 'JEUDI', 'GSIL'),
(19, 10, NULL, 20, NULL, 'PREMIERE', 'D', 'LUNDI', 'GSIL'),
(14, 15, 16, 17, 18, 'PREMIERE', 'D', 'MARDI', 'GSIL'),
(15, NULL, 11, 7, 14, 'PREMIERE', 'D', 'MERCREDI', 'GSIL'),
(7, NULL, 13, 14, 19, 'PREMIERE', 'D', 'SAMEDI', 'GSIL'),
(8, 7, NULL, 5, 1, 'PREMIERE', 'D', 'VENDREDI', 'GSIL'),
(8, 14, 16, 9, NULL, 'PREMIERE', 'E', 'JEUDI', 'GSIL'),
(6, 16, 15, 18, NULL, 'PREMIERE', 'E', 'JEUDI', 'MECA'),
(NULL, 19, 3, 14, NULL, 'PREMIERE', 'E', 'LUNDI', 'GSIL'),
(8, 4, NULL, 14, NULL, 'PREMIERE', 'E', 'LUNDI', 'MECA'),
(14, NULL, 13, NULL, 7, 'PREMIERE', 'E', 'MARDI', 'GSIL'),
(20, 1, 2, 3, 4, 'PREMIERE', 'E', 'MARDI', 'MECA'),
(10, NULL, 12, 16, 1, 'PREMIERE', 'E', 'MERCREDI', 'GSIL'),
(NULL, 5, 15, 4, NULL, 'PREMIERE', 'E', 'MERCREDI', 'MECA'),
(15, NULL, 18, 5, NULL, 'PREMIERE', 'E', 'SAMEDI', 'GSIL'),
(20, 18, 5, 3, NULL, 'PREMIERE', 'E', 'SAMEDI', 'MECA'),
(5, 6, 7, 8, 9, 'PREMIERE', 'E', 'VENDREDI', 'GSI'),
(NULL, 9, 8, 15, 3, 'PREMIERE', 'E', 'VENDREDI', 'MECA'),
(1, 2, 8, NULL, NULL, 'TROISIEME', 'A', 'JEUDI', 'GSIL'),
(5, 14, NULL, 3, NULL, 'TROISIEME', 'A', 'LUNDI', 'GSIL'),
(NULL, 7, 13, 15, 11, 'TROISIEME', 'A', 'MARDI', 'GSIL'),
(3, 16, NULL, 1, 9, 'TROISIEME', 'A', 'MERCREDI', 'GSIL'),
(6, 7, 8, 9, 10, 'TROISIEME', 'A', 'SAMEDI', 'GSIL'),
(8, 5, NULL, 16, NULL, 'TROISIEME', 'A', 'VENDREDI', 'GSIL'),
(11, 1, NULL, 3, 17, 'TROISIEME', 'B', 'JEUDI', 'MECA'),
(6, NULL, 12, 19, 4, 'TROISIEME', 'B', 'LUNDI', 'MECA'),
(19, 13, NULL, 7, 20, 'TROISIEME', 'B', 'MARDI', 'MECA'),
(NULL, NULL, 12, 2, 19, 'TROISIEME', 'B', 'MERCREDI', 'MECA'),
(12, 13, 14, 15, 16, 'TROISIEME', 'B', 'SAMEDI', 'MECA'),
(NULL, 6, 5, 14, 15, 'TROISIEME', 'B', 'VENDREDI', 'MECA'),
(17, NULL, 9, NULL, 16, 'TROISIEME', 'C', 'JEUDI', 'GSIL'),
(NULL, 7, 6, 12, 16, 'TROISIEME', 'C', 'JEUDI', 'INFO'),
(NULL, 10, 8, NULL, 13, 'TROISIEME', 'C', 'LUNDI', 'GSIL'),
(19, 14, 11, NULL, 9, 'TROISIEME', 'C', 'LUNDI', 'INFO'),
(NULL, 11, 18, 14, 12, 'TROISIEME', 'C', 'MARDI', 'GSIL'),
(19, 13, 15, NULL, NULL, 'TROISIEME', 'C', 'MARDI', 'INFO'),
(4, 7, NULL, NULL, 11, 'TROISIEME', 'C', 'MERCREDI', 'GSIL'),
(3, 4, 5, 6, 7, 'TROISIEME', 'C', 'MERCREDI', 'INFO'),
(18, 19, 20, 1, 2, 'TROISIEME', 'C', 'SAMEDI', 'GSIL'),
(16, 15, NULL, NULL, 20, 'TROISIEME', 'C', 'SAMEDI', 'INFO'),
(12, 10, 8, NULL, NULL, 'TROISIEME', 'C', 'VENDREDI', 'GSIL'),
(NULL, 17, NULL, 7, 3, 'TROISIEME', 'C', 'VENDREDI', 'INFO'),
(6, NULL, 15, 11, 2, 'TROISIEME', 'D', 'JEUDI', 'GSI'),
(NULL, NULL, 2, 19, 9, 'TROISIEME', 'D', 'LUNDI', 'GSI'),
(NULL, 1, 4, NULL, 16, 'TROISIEME', 'D', 'MARDI', 'GSI'),
(9, 10, 1, 2, 3, 'TROISIEME', 'D', 'MERCREDI', 'GSI'),
(NULL, 8, NULL, 14, 18, 'TROISIEME', 'D', 'SAMEDI', 'GSI'),
(2, 16, 3, 5, NULL, 'TROISIEME', 'D', 'VENDREDI', 'GSI'),
(NULL, 14, NULL, 6, 1, 'TROISIEME', 'E', 'JEUDI', 'INFO'),
(19, NULL, 14, 20, 10, 'TROISIEME', 'E', 'LUNDI', 'INFO'),
(3, 7, NULL, NULL, 9, 'TROISIEME', 'E', 'MARDI', 'INFO'),
(15, 16, 17, 18, 19, 'TROISIEME', 'E', 'MERCREDI', 'INFO'),
(19, NULL, 7, 9, NULL, 'TROISIEME', 'E', 'SAMEDI', 'INFO'),
(10, NULL, 19, 8, NULL, 'TROISIEME', 'E', 'VENDREDI', 'INFO');

-- --------------------------------------------------------

--
-- Table structure for table `enseignant`
--

CREATE TABLE `enseignant` (
  `nb_absences` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `motdepass` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `num_tel` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enseignant`
--

INSERT INTO `enseignant` (`nb_absences`, `user_id`, `email`, `grade`, `motdepass`, `nom`, `num_tel`, `prenom`) VALUES
(2, 1, 'ahmed.benali@enic.tn', 'Professeur', '$2a$10$lzoHHR18oU7.QHivrotejunvrDE1HVu/8lBlrI5ynkBDuv7df//0e', 'Ben Ali', '+21620000001', 'Ahmed'),
(1, 2, 'fatma.trabelsi@enic.tn', 'Assistant', '$2a$10$./KaJNLHz2RkJGrVWvi2BOIwwDcnjLyK7tUlBExQlmBAkCo3Ncw3a', 'Trabelsi', '+21620000002', 'Fatma'),
(0, 3, 'youssef.hammami@enic.tn', 'Maitre-assistant', '$2a$10$MiShOzJHKRGC9ul7xiMN/.bA0CNIl7oQDt.uubn9WA2t4Ml9TJP0m', 'Hammami', '+21620000003', 'Youssef'),
(3, 4, 'mariem.khalifa@enic.tn', 'Professeur', '$2a$10$zlhyohQVqGVD9qIa7x6XVuN2vxKoxkdhguOOTB7WvhXiEOMFBrRki', 'Khalifa', '+21620000004', 'Mariem'),
(4, 5, 'ali.gharsallah@enic.tn', 'Assistant', '$2a$10$xfWsMV1THdyUtsVwErtfq.0tXtynqyoTnoeNEZbAhmvzzHabj1/Ri', 'Gharsallah', '+21620000005', 'Ali'),
(1, 6, 'sarra.saadi@enic.tn', 'Maitre de conférences', '$2a$10$tfbyE3ZmOBYA7VaKPpBiLeZu6mXsEYnuC431SGUOCpidt6eCRwH66', 'Saadi', '+21620000006', 'Sarra'),
(2, 7, 'khaled.farhat@enic.tn', 'Professeur', '$2a$10$vo3ech9t3rfVj3ZSTdzfz.L6SewskH6rbQaH17F3uD6uz0Pm0zyQW', 'Farhat', '+21620000007', 'Khaled'),
(0, 8, 'eya.jaziri@enic.tn', 'Assistant', '$2a$10$0hWkwmLeMdDPaaCo0omFxO02GcmwMeYju2/p.aQh/DXkwP49pR36K', 'Jaziri', '+21620000008', 'Eya'),
(5, 9, 'houssem.rekik@enic.tn', 'Maitre-assistant', '$2a$10$mSH8hJIYB/imyJQVfhRDp.WnsAeUElp.spJ2SxU.MplPwirnD.TTG', 'Rekik', '+21620000009', 'Houssem'),
(2, 10, 'leila.bouzid@enic.tn', 'Professeur', '$2a$10$3KMkbiUYOdILmiXsct7ykOyY3DfkvkM3HVPl6RL7LXXjztddT4Cu6', 'Bouzid', '+21620000010', 'Leila'),
(1, 11, 'walid.benyoucef@enic.tn', 'Assistant', '$2a$10$r9ND7eKUtvIIuwCf0lEMjO3px6sfPHzjgiTJDD04cXIrCIbCTNrPO', 'Ben Youcef', '+21620000011', 'Walid'),
(0, 12, 'raoudha.masmoudi@enic.tn', 'Maitre-assistant', '$2a$10$/FLYTyAsjgPk/78Kk9aUrezbHLoru.TsUVDRK50jxjOlyDoOyizi6', 'Masmoudi', '+21620000012', 'Raoudha'),
(3, 13, 'anis.ghazel@enic.tn', 'Professeur', '$2a$10$cwK4roy5gXXGf0ny80JYGO8KPngh5J2nIutjTipFi.2QY9f14Bzue', 'Ghazel', '+21620000013', 'Anis'),
(4, 14, 'rania.fdhili@enic.tn', 'Assistant', '$2a$10$94goz71oydwG4lZnaIyn..6oIZtfE1M9WYcApTJxJ2Ldf46dCZ68a', 'Fdhili', '+21620000014', 'Rania'),
(2, 15, 'mehdi.jemli@enic.tn', 'Maitre-assistant', '$2a$10$Nc9O8LohVH/yphEOIVUoAOWFlMN5CrIRhN1UkWxDN4/8NSzP8yDhW', 'Jemli', '+21620000015', 'Mehdi'),
(1, 16, 'samy.hachicha@enic.tn', 'Professeur', '$2a$10$N0KsO.x.lms8i/Mi8/K54uHNrtuEb9D/woW.fjmadob9ztAssipia', 'Hachicha', '+21620000016', 'Samy'),
(0, 17, 'ons.abid@enic.tn', 'Assistant', '$2a$10$6pDN0sGLmpgoqmf6R6.gm.dIQqcDDIg1psKas/9BJFnwRsOKBlHSK', 'Abid', '+21620000017', 'Ons'),
(2, 18, 'sami.kallel@enic.tn', 'Professeur', '$2a$10$giZY0Ir6fnCZLlwXpWQyBuue8te9wpueRwpIlKAFimCUycdNbrtjO', 'Kallel', '+21620000018', 'Sami'),
(3, 19, 'emna.hajri@enic.tn', 'Maitre-assistant', '$2a$10$covnyWDfyYXR2dMFy/BoTuBMO5f3XfcG0ieuf06Vq4S1ovjku7vnO', 'Hajri', '+21620000019', 'Emna'),
(1, 20, 'yassine.chouchene@enic.tn', 'Assistant', '$2a$10$CD6l8X0mULxLwWLhqtkquu9fjtPVI97SYYOKcJ9qyswwG61myKFUK', 'Chouchene', '+21620000020', 'Yassine');

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

CREATE TABLE `etudiant` (
  `user_id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `motdepass` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `classe` enum('DEUXIEME','PREMIERE','TROISIEME') DEFAULT NULL,
  `groupe` enum('A','B','C','D','E') DEFAULT NULL,
  `specialite` enum('GSI','GSIL','INFO','MECA') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`user_id`, `email`, `motdepass`, `nom`, `prenom`, `classe`, `groupe`, `specialite`) VALUES
(101, 'mouna.karoui@etud.enic.tn', '$2a$10$9otqYuOG34x0Bh9fZAmTEuyR.FgB2R08yt1M1OjhMu/EUFJZL..tu', 'Karoui', 'Mouna', 'DEUXIEME', 'A', 'GSI'),
(102, 'aya.mansouri@etud.enic.tn', '$2a$10$srkbhpDMKzSY2YmNda08Ze.nb/K7s9KwN.AgYDKP67s9TFugBukVS', 'Mansouri', 'Aya', 'PREMIERE', 'B', 'GSIL'),
(103, 'sami.benali@etud.enic.tn', '$2a$10$BemgFJZ2vvoq/9/Y7fJb0eGxwPincoHx6XL7eKp/EfWVZzxcWwpmm', 'Ben Ali', 'Sami', 'TROISIEME', 'C', 'INFO'),
(104, 'nour.hammami@etud.enic.tn', '$2a$10$sviXfIBiCHekRyeqpkO9L.rP2YYCJJzArCP0wIHhSI0j0X0vo5.rG', 'Hammami', 'Nour', 'DEUXIEME', 'D', 'MECA'),
(105, 'hani.trabelsi@etud.enic.tn', '$2a$10$24ngsDQ2Or3e.WoAfbGaJe.B8l/hWxdzZrMTc8ULXcbbu1Cyitiwy', 'Trabelsi', 'Hani', 'PREMIERE', 'E', 'GSI'),
(106, 'faten.benmohamed@etud.enic.tn', '$2a$10$nUtFwQgqJWtdRJXshk1njeIwat/nN5AuV9qEhTSIul9QV9AiLPPgy', 'Ben Mohamed', 'Faten', 'TROISIEME', 'A', 'GSIL'),
(107, 'walid.khammassi@etud.enic.tn', '$2a$10$uN8UN8HCxmlCQbsZebOxjOdhT2VJvwKyQ4mb27tceENvSsnsOHcp.', 'Khammassi', 'Walid', 'DEUXIEME', 'B', 'INFO'),
(108, 'sarra.kacem@etud.enic.tn', '$2a$10$FuoR6E56Ui4Bb8yUuQPmYecQTdF3vQOyvT2nLKqSzCVEXWWF6ucDW', 'Kacem', 'Sarra', 'PREMIERE', 'C', 'MECA'),
(109, 'oussama.salem@etud.enic.tn', '$2a$10$.3Gc6OO7PcOj4bIyff1X1OLJP92NZ3UQkecPUZ17aacNotKP5gNGC', 'Salem', 'Oussama', 'TROISIEME', 'D', 'GSI'),
(110, 'marwa.najjar@etud.enic.tn', '$2a$10$Dhwt825aE0LRBBaIQ4Q/euKLIU80dxXWngcCeoSt3vLAJ2H7DrFJa', 'Najjar', 'Marwa', 'DEUXIEME', 'E', 'GSIL'),
(111, 'adil.behija@etud.enic.tn', '$2a$10$tisNiGlwRjiFgZlmO9pQF.agbxMngqbccvc5warx4VhcBSmWlhj6.', 'Behija', 'Adil', 'PREMIERE', 'A', 'INFO'),
(112, 'aya.salem@etud.enic.tn', '$2a$10$pY1ssnDSpJLtZayrz39VTOSNkGeQbrnVPMiTjyOCCPnpRjT3JXDzq', 'Salem', 'Aya', 'TROISIEME', 'B', 'MECA'),
(113, 'khalil.jmal@etud.enic.tn', '$2a$10$vBJlnM8DPd9IXOy5DMehKOU/U/hXKuWWKu8fVTie63eNCiLD9iUbO', 'Jmal', 'Khalil', 'DEUXIEME', 'C', 'GSI'),
(114, 'leila.khlifi@etud.enic.tn', '$2a$10$q7dmCrqFaS42iV4RX.TKweLbONKf0l8CVqcrGOFqxXtj0dtrk6Cwi', 'Khlifi', 'Leila', 'PREMIERE', 'D', 'GSIL'),
(115, 'ameen.harabi@etud.enic.tn', '$2a$10$LTRBvK/OxumVBu9tN5mGguKK1CPR73gSFPEzVS3vMcdtPk3sH2mUq', 'Harabi', 'Ameen', 'TROISIEME', 'E', 'INFO'),
(116, 'rim.rachdi@etud.enic.tn', '$2a$10$dVwu15M3EVQB5BdEs/6vVOOkA.7K0f8E8.tFoWBYBJFRMVlT2r.o.', 'Rachdi', 'Rim', 'DEUXIEME', 'A', 'MECA'),
(117, 'houssem.ali@etud.enic.tn', '$2a$10$0s1tu/ba.A3eMgtQQXtMyOOQwLDY33NFqbneycsynBT.UH8lAzbbi', 'Ali', 'Houssem', 'PREMIERE', 'B', 'GSI'),
(118, 'emna.kykh@etud.enic.tn', '$2a$10$o5e7gXSTaObSYfTi9R7jveJg3HOOJ64hka1QF7mH8vygaDaxA4fUi', 'Kykh', 'Emna', 'TROISIEME', 'C', 'GSIL'),
(119, 'lotfi.zitoun@etud.enic.tn', '$2a$10$85wNsy0oGCoqDKUpUHir/.9f6Vc7ZssloJhqUQeUvARWKW16SOQC2', 'Zitoun', 'Lotfi', 'DEUXIEME', 'D', 'INFO'),
(120, 'dali.brahim@etud.enic.tn', '$2a$10$HUO823gHocraHSwl00jaDuZadnG5ah5vVJtJjQ2cowbulEM0j/M.2', 'Brahim', 'Dali', 'PREMIERE', 'E', 'MECA');

-- --------------------------------------------------------

--
-- Table structure for table `evenement`
--

CREATE TABLE `evenement` (
  `date_de_debut` date DEFAULT NULL,
  `date_de_fin` date DEFAULT NULL,
  `event_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `salle_salle` varchar(255) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `isannulee` enum('non','oui') DEFAULT NULL,
  `seancedb` enum('S1','S2','S3','S4','S5') DEFAULT NULL,
  `seancefin` enum('S1','S2','S3','S4','S5') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `evenement`
--

INSERT INTO `evenement` (`date_de_debut`, `date_de_fin`, `event_id`, `description`, `salle_salle`, `titre`, `isannulee`, `seancedb`, `seancefin`) VALUES
('2025-01-15', '2025-01-15', 1, 'Atelier IA', 'A101', 'Conférence IA', 'non', 'S1', 'S2'),
('2025-02-01', '2025-02-02', 2, 'Forum Emploi', 'B201', 'Salon Carrières', 'non', 'S2', 'S3'),
('2025-02-20', '2025-02-20', 3, 'Journée Portes Ouvertes', 'C301', 'Portes Ouvertes', 'non', 'S3', 'S4'),
('2025-03-05', '2025-03-05', 4, 'Séminaire Sécurité', 'D401', 'Sécurité Réseaux', 'non', 'S4', 'S5'),
('2025-03-18', '2025-03-18', 5, 'Hackathon Étudiants', 'A102', 'Hackathon', 'non', 'S1', 'S3'),
('2025-04-10', '2025-04-11', 6, 'Webinaire Cloud', 'B202', 'Cloud Computing', 'non', 'S2', 'S4'),
('2025-04-25', '2025-04-25', 7, 'Conférence Blockchain', 'C302', 'Blockchain', 'non', 'S3', 'S5'),
('2025-05-07', '2025-05-07', 8, 'Atelier IoT', 'D402', 'Internet des Objets', 'non', 'S4', 'S1'),
('2025-05-20', '2025-05-21', 9, 'Salon Innovation', 'A103', 'Projets Étudiants', 'non', 'S5', 'S2'),
('2025-06-02', '2025-06-02', 10, 'Journée Alumni', 'B203', 'Réseau Anciens', 'non', 'S1', 'S4'),
('2025-06-15', '2025-06-15', 11, 'Conférence Data', 'C303', 'Big Data', 'non', 'S2', 'S5'),
('2025-06-28', '2025-06-29', 12, 'Forum Startup', 'D403', 'Entrepreneuriat', 'non', 'S3', 'S1'),
('2025-07-10', '2025-07-10', 13, 'Atelier DevOps', 'A104', 'CI/CD', 'non', 'S4', 'S2'),
('2025-07-22', '2025-07-22', 14, 'Webinaire AI Ethics', 'B204', 'Éthique IA', 'non', 'S5', 'S3'),
('2025-08-05', '2025-08-05', 15, 'Journée Sportive', 'C304', 'Tournoi Foot', 'non', 'S1', 'S4'),
('2025-08-18', '2025-08-18', 16, 'Séance Orientation', 'D404', 'Orientation', 'non', 'S2', 'S5'),
('2025-09-01', '2025-09-01', 17, 'Salon Métiers', 'A105', 'Métiers IT', 'non', 'S3', 'S1'),
('2025-09-14', '2025-09-14', 18, 'Atelier CyberSécurité', 'B205', 'Cybersécurité', 'non', 'S4', 'S2'),
('2025-09-27', '2025-09-27', 19, 'Conférence Réseaux', 'C305', '5G & 6G', 'non', 'S5', 'S3'),
('2025-10-10', '2025-10-11', 20, 'Hackathon IA', 'D405', 'Code et ML', 'non', 'S1', 'S5');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequences`
--

CREATE TABLE `hibernate_sequences` (
  `next_val` bigint(20) DEFAULT NULL,
  `sequence_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hibernate_sequences`
--

INSERT INTO `hibernate_sequences` (`next_val`, `sequence_name`) VALUES
(150, 'default');

-- --------------------------------------------------------

--
-- Table structure for table `rattrappage`
--

CREATE TABLE `rattrappage` (
  `date_affectee` date DEFAULT NULL,
  `date_au_plus_tard` date DEFAULT NULL,
  `date_au_plus_tot` date DEFAULT NULL,
  `abs_ratt_id` bigint(20) NOT NULL,
  `enseignant_user_id` bigint(20) DEFAULT NULL,
  `salle_salle` varchar(255) DEFAULT NULL,
  `acceptee` enum('non','oui') DEFAULT NULL,
  `classe` enum('DEUXIEME','PREMIERE','TROISIEME') DEFAULT NULL,
  `groupe` enum('A','B','C','D','E') DEFAULT NULL,
  `pinned` enum('non','oui') DEFAULT NULL,
  `seance_aff` enum('S1','S2','S3','S4','S5') DEFAULT NULL,
  `seancedb` enum('S1','S2','S3','S4','S5') DEFAULT NULL,
  `seancefin` enum('S1','S2','S3','S4','S5') DEFAULT NULL,
  `specialite` enum('GSI','GSIL','INFO','MECA') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rattrappage`
--

INSERT INTO `rattrappage` (`date_affectee`, `date_au_plus_tard`, `date_au_plus_tot`, `abs_ratt_id`, `enseignant_user_id`, `salle_salle`, `acceptee`, `classe`, `groupe`, `pinned`, `seance_aff`, `seancedb`, `seancefin`, `specialite`) VALUES
(NULL, '2025-05-10', '2025-05-01', 1, 5, NULL, NULL, 'DEUXIEME', 'B', 'non', NULL, NULL, NULL, 'INFO'),
(NULL, '2025-05-10', '2025-05-01', 2, 5, NULL, NULL, 'DEUXIEME', 'C', 'non', NULL, NULL, NULL, 'INFO'),
('2028-05-01', '2025-01-17', '2025-01-12', 301, 2, 'A101', 'oui', 'PREMIERE', 'A', 'non', 'S5', 'S1', 'S2', 'GSI'),
('2026-05-01', '2025-01-27', '2025-01-22', 302, 3, 'D404', 'oui', 'DEUXIEME', 'B', 'oui', 'S4', 'S2', 'S3', 'GSIL'),
('2025-05-01', '2025-02-13', '2025-02-08', 303, 4, 'B205', 'oui', 'TROISIEME', 'C', 'non', 'S1', 'S3', 'S4', 'INFO'),
('2025-02-13', '2025-02-23', '2025-02-18', 304, 5, 'A105', 'non', 'PREMIERE', 'D', 'oui', 'S4', 'S4', 'S5', 'MECA'),
('2025-02-23', '2025-03-05', '2025-02-28', 305, 6, 'B201', NULL, 'DEUXIEME', 'E', 'non', 'S5', 'S5', 'S1', 'GSI'),
('2025-03-03', '2025-03-13', '2025-03-08', 306, 7, 'B202', NULL, 'TROISIEME', 'A', 'oui', 'S1', 'S1', 'S2', 'GSIL'),
('2025-03-13', '2025-03-23', '2025-03-18', 307, 8, 'B203', NULL, 'PREMIERE', 'B', 'non', 'S2', 'S2', 'S3', 'INFO'),
('2025-03-23', '2025-04-02', '2025-03-28', 308, 9, 'B204', NULL, 'DEUXIEME', 'C', 'oui', 'S3', 'S3', 'S4', 'MECA'),
('2025-04-02', '2025-04-12', '2025-04-07', 309, 10, 'B205', NULL, 'TROISIEME', 'D', 'non', 'S4', 'S4', 'S5', 'GSI'),
('2025-04-12', '2025-04-22', '2025-04-17', 310, 11, 'C301', NULL, 'PREMIERE', 'E', 'oui', 'S5', 'S5', 'S1', 'GSIL'),
('2025-04-22', '2025-05-02', '2025-04-27', 311, 12, 'C302', 'oui', 'DEUXIEME', 'A', 'non', 'S1', 'S1', 'S2', 'INFO'),
('2025-05-02', '2025-05-12', '2025-05-07', 312, 13, 'C303', 'non', 'TROISIEME', 'B', 'oui', 'S2', 'S2', 'S3', 'MECA'),
('2025-05-12', '2025-05-22', '2025-05-17', 313, 14, 'C304', 'oui', 'PREMIERE', 'C', 'non', 'S3', 'S3', 'S4', 'GSI'),
('2025-05-22', '2025-06-01', '2025-05-27', 314, 15, 'C305', 'non', 'DEUXIEME', 'D', 'oui', 'S4', 'S4', 'S5', 'GSIL'),
('2025-06-01', '2025-06-11', '2025-06-06', 315, 16, 'D401', 'oui', 'TROISIEME', 'E', 'non', 'S5', 'S5', 'S1', 'INFO'),
('2025-06-11', '2025-06-21', '2025-06-16', 316, 17, 'D402', 'non', 'PREMIERE', 'A', 'oui', 'S1', 'S1', 'S2', 'MECA'),
('2025-06-21', '2025-07-01', '2025-06-26', 317, 18, 'D403', 'oui', 'DEUXIEME', 'B', 'non', 'S2', 'S2', 'S3', 'GSI'),
('2025-07-01', '2025-07-11', '2025-07-06', 318, 19, 'D404', 'non', 'TROISIEME', 'C', 'oui', 'S3', 'S3', 'S4', 'GSIL'),
('2025-07-11', '2025-07-21', '2025-07-16', 319, 20, 'D405', 'oui', 'PREMIERE', 'D', 'non', 'S4', 'S4', 'S5', 'INFO'),
('2025-07-21', '2025-07-31', '2025-07-26', 320, 1, 'A101', 'non', 'DEUXIEME', 'E', 'oui', 'S5', 'S5', 'S1', 'MECA');

-- --------------------------------------------------------

--
-- Table structure for table `ratt_epinglee`
--

CREATE TABLE `ratt_epinglee` (
  `id_ratt` bigint(20) NOT NULL,
  `id_usr` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratt_epinglee`
--

INSERT INTO `ratt_epinglee` (`id_ratt`, `id_usr`) VALUES
(301, 101),
(302, 101),
(303, 102),
(304, 102),
(305, 103),
(306, 103),
(307, 104),
(308, 104),
(309, 105),
(310, 105),
(311, 106),
(312, 106),
(313, 107),
(314, 107),
(315, 108),
(316, 108),
(317, 109),
(318, 109),
(319, 110),
(320, 110),
(301, 101),
(302, 101),
(303, 102),
(304, 102),
(305, 103),
(306, 103),
(307, 104),
(308, 104),
(309, 105),
(310, 105),
(311, 106),
(312, 106),
(313, 107),
(314, 107),
(315, 108),
(316, 108),
(317, 109),
(318, 109),
(319, 110),
(320, 110);

-- --------------------------------------------------------

--
-- Table structure for table `salle`
--

CREATE TABLE `salle` (
  `salle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salle`
--

INSERT INTO `salle` (`salle`) VALUES
('A101'),
('A102'),
('A103'),
('A104'),
('A105'),
('B201'),
('B202'),
('B203'),
('B204'),
('B205'),
('C301'),
('C302'),
('C303'),
('C304'),
('C305'),
('D401'),
('D402'),
('D403'),
('D404'),
('D405');

-- --------------------------------------------------------

--
-- Table structure for table `seance`
--

CREATE TABLE `seance` (
  `id` int(11) NOT NULL,
  `enseignant_user_id` bigint(20) DEFAULT NULL,
  `rattrapage_abs_ratt_id` bigint(20) DEFAULT NULL,
  `matiere` varchar(255) DEFAULT NULL,
  `salle_salle` varchar(255) DEFAULT NULL,
  `israttrappage` enum('non','oui') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seance`
--

INSERT INTO `seance` (`id`, `enseignant_user_id`, `rattrapage_abs_ratt_id`, `matiere`, `salle_salle`, `israttrappage`) VALUES
(1, 1, NULL, 'Mathématiques', 'A101', 'non'),
(2, 2, NULL, 'Physique', 'A102', 'non'),
(3, 3, NULL, 'Chimie', 'A103', 'non'),
(4, 4, NULL, 'Informatique', 'A104', 'non'),
(5, 5, NULL, 'Génie Logiciel', 'A105', 'non'),
(6, 6, 301, 'Réseaux', 'B201', 'non'),
(7, 7, 302, 'BD Oracle', 'B202', 'non'),
(8, 8, 303, 'Systèmes Embarqués', 'B203', 'non'),
(9, 9, 304, 'Électronique', 'B204', 'non'),
(10, 10, 305, 'Automatique', 'B205', 'non'),
(11, 11, 306, 'Statistique', 'C301', 'non'),
(12, 12, 307, 'Algorithmique', 'C302', 'non'),
(13, 13, 308, 'OSI & TCP/IP', 'C303', 'non'),
(14, 14, 309, 'Bases NoSQL', 'C304', 'non'),
(15, 15, 310, 'Sécurité', 'C305', 'non'),
(16, 16, 311, 'DevOps', 'D401', 'non'),
(17, 17, 312, 'Big Data', 'D402', 'non'),
(18, 18, 313, 'Cloud', 'D403', 'non'),
(19, 19, 314, 'UX/UI', 'D404', 'oui'),
(20, 20, 315, 'IA', 'D405', 'oui'),
(21, 2, 301, NULL, 'A101', 'oui'),
(22, 3, 302, NULL, 'D404', 'oui');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absence`
--
ALTER TABLE `absence`
  ADD PRIMARY KEY (`abs_ratt_id`),
  ADD KEY `FK7ankjeeqg2945fx4fulkmoif8` (`enseignant_user_id`);

--
-- Indexes for table `absence_etudiants_qui_epinglent`
--
ALTER TABLE `absence_etudiants_qui_epinglent`
  ADD KEY `FK56a87u6nc1buue566tln16tt6` (`etudiants_qui_epinglent_user_id`),
  ADD KEY `FKx9qqms7jcpmcto27ewky42v` (`absence_abs_ratt_id`);

--
-- Indexes for table `abs_epinglee`
--
ALTER TABLE `abs_epinglee`
  ADD KEY `FKb4ko8ykw2l8w41csf1lahmvgr` (`id_abs`),
  ADD KEY `FKk55u74vlqft8k49me7hsdwkw` (`id_usr`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `emploi_temps`
--
ALTER TABLE `emploi_temps`
  ADD PRIMARY KEY (`classe`,`groupe`,`jourr`,`specialite`),
  ADD KEY `FK62vl06p7bymdnhhw1tf03oo5i` (`seance1_id`),
  ADD KEY `FK9hjqwnc40k3v2qscdb9vl6wgv` (`seance2_id`),
  ADD KEY `FKi68u9l5o42nmk0dw752uhlcpo` (`seance3_id`),
  ADD KEY `FK90nplej8b5e0uc0u1fiallwa6` (`seance4_id`),
  ADD KEY `FKn2ovh1brcpia5udxb26r7ena7` (`seance5_id`);

--
-- Indexes for table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `evenement`
--
ALTER TABLE `evenement`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `FK68w8hmv66r43ow9somwuidakm` (`salle_salle`);

--
-- Indexes for table `hibernate_sequences`
--
ALTER TABLE `hibernate_sequences`
  ADD PRIMARY KEY (`sequence_name`);

--
-- Indexes for table `rattrappage`
--
ALTER TABLE `rattrappage`
  ADD PRIMARY KEY (`abs_ratt_id`),
  ADD KEY `FK7ju5belvqh9e4nx787pj5hnj6` (`enseignant_user_id`),
  ADD KEY `FKdrjy38ua9pmh0i2l4tced033c` (`salle_salle`);

--
-- Indexes for table `ratt_epinglee`
--
ALTER TABLE `ratt_epinglee`
  ADD KEY `FKlrsv6di7qihqk1lo3gisko67t` (`id_ratt`),
  ADD KEY `FKj8gkvjectmbgqqvpjvuhrq7mx` (`id_usr`);

--
-- Indexes for table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`salle`);

--
-- Indexes for table `seance`
--
ALTER TABLE `seance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6d5rcwgnxkyg8cff50a6c6ine` (`enseignant_user_id`),
  ADD KEY `FKenowurun8dtd2958i0bp6yhkl` (`rattrapage_abs_ratt_id`),
  ADD KEY `FKhxtlgbtpf1fqg33sghhjtfrwd` (`salle_salle`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `seance`
--
ALTER TABLE `seance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absence`
--
ALTER TABLE `absence`
  ADD CONSTRAINT `FK7ankjeeqg2945fx4fulkmoif8` FOREIGN KEY (`enseignant_user_id`) REFERENCES `enseignant` (`user_id`);

--
-- Constraints for table `absence_etudiants_qui_epinglent`
--
ALTER TABLE `absence_etudiants_qui_epinglent`
  ADD CONSTRAINT `FK56a87u6nc1buue566tln16tt6` FOREIGN KEY (`etudiants_qui_epinglent_user_id`) REFERENCES `etudiant` (`user_id`),
  ADD CONSTRAINT `FKx9qqms7jcpmcto27ewky42v` FOREIGN KEY (`absence_abs_ratt_id`) REFERENCES `absence` (`abs_ratt_id`);

--
-- Constraints for table `abs_epinglee`
--
ALTER TABLE `abs_epinglee`
  ADD CONSTRAINT `FKb4ko8ykw2l8w41csf1lahmvgr` FOREIGN KEY (`id_abs`) REFERENCES `absence` (`abs_ratt_id`),
  ADD CONSTRAINT `FKk55u74vlqft8k49me7hsdwkw` FOREIGN KEY (`id_usr`) REFERENCES `etudiant` (`user_id`);

--
-- Constraints for table `emploi_temps`
--
ALTER TABLE `emploi_temps`
  ADD CONSTRAINT `FK62vl06p7bymdnhhw1tf03oo5i` FOREIGN KEY (`seance1_id`) REFERENCES `seance` (`id`),
  ADD CONSTRAINT `FK90nplej8b5e0uc0u1fiallwa6` FOREIGN KEY (`seance4_id`) REFERENCES `seance` (`id`),
  ADD CONSTRAINT `FK9hjqwnc40k3v2qscdb9vl6wgv` FOREIGN KEY (`seance2_id`) REFERENCES `seance` (`id`),
  ADD CONSTRAINT `FKi68u9l5o42nmk0dw752uhlcpo` FOREIGN KEY (`seance3_id`) REFERENCES `seance` (`id`),
  ADD CONSTRAINT `FKn2ovh1brcpia5udxb26r7ena7` FOREIGN KEY (`seance5_id`) REFERENCES `seance` (`id`);

--
-- Constraints for table `evenement`
--
ALTER TABLE `evenement`
  ADD CONSTRAINT `FK68w8hmv66r43ow9somwuidakm` FOREIGN KEY (`salle_salle`) REFERENCES `salle` (`salle`);

--
-- Constraints for table `rattrappage`
--
ALTER TABLE `rattrappage`
  ADD CONSTRAINT `FK7ju5belvqh9e4nx787pj5hnj6` FOREIGN KEY (`enseignant_user_id`) REFERENCES `enseignant` (`user_id`),
  ADD CONSTRAINT `FKdrjy38ua9pmh0i2l4tced033c` FOREIGN KEY (`salle_salle`) REFERENCES `salle` (`salle`);

--
-- Constraints for table `ratt_epinglee`
--
ALTER TABLE `ratt_epinglee`
  ADD CONSTRAINT `FKj8gkvjectmbgqqvpjvuhrq7mx` FOREIGN KEY (`id_usr`) REFERENCES `etudiant` (`user_id`),
  ADD CONSTRAINT `FKlrsv6di7qihqk1lo3gisko67t` FOREIGN KEY (`id_ratt`) REFERENCES `rattrappage` (`abs_ratt_id`);

--
-- Constraints for table `seance`
--
ALTER TABLE `seance`
  ADD CONSTRAINT `FK6d5rcwgnxkyg8cff50a6c6ine` FOREIGN KEY (`enseignant_user_id`) REFERENCES `enseignant` (`user_id`),
  ADD CONSTRAINT `FKenowurun8dtd2958i0bp6yhkl` FOREIGN KEY (`rattrapage_abs_ratt_id`) REFERENCES `rattrappage` (`abs_ratt_id`),
  ADD CONSTRAINT `FKhxtlgbtpf1fqg33sghhjtfrwd` FOREIGN KEY (`salle_salle`) REFERENCES `salle` (`salle`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
