-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Apr 26, 2019 at 02:03 PM
-- Server version: 10.3.13-MariaDB-1:10.3.13+maria~bionic
-- PHP Version: 7.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizz`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `themeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `questions` varchar(255) NOT NULL,
  `answers` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT 0,
  `progression` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `themeId`, `userId`, `questions`, `answers`, `score`, `progression`) VALUES
(138, 3, 16, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"25\";i:0;s:2:\"25\";}i:1;a:2:{s:2:\"id\";s:2:\"34\";i:0;s:2:\"34\";}i:2;a:2:{s:2:\"id\";s:2:\"20\";i:0;s:2:\"20\";}i:3;a:2:{s:2:\"id\";s:2:\"29\";i:0;s:2:\"29\";}i:4;a:2:{s:2:\"id\";s:2:\"17\";i:0;s:2:\"17\";}i:5;a:2:{s:2:\"id\";s:2:\"27\";i:0;s:2:\"27\";}}', 'a:6:{i:0;d:310;i:1;d:233;i:2;d:321;i:3;d:391;i:4;d:247;i:5;i:0;}', 1502, 6),
(139, 1, 17, 'a:6:{i:0;a:2:{s:2:\"id\";s:1:\"5\";i:0;s:1:\"5\";}i:1;a:2:{s:2:\"id\";s:1:\"7\";i:0;s:1:\"7\";}i:2;a:2:{s:2:\"id\";s:1:\"9\";i:0;s:1:\"9\";}i:3;a:2:{s:2:\"id\";s:1:\"4\";i:0;s:1:\"4\";}i:4;a:2:{s:2:\"id\";s:2:\"10\";i:0;s:2:\"10\";}i:5;a:2:{s:2:\"id\";s:2:\"15\";i:0;s:2:\"15\";}}', 'a:6:{i:0;d:208;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;d:198;}', 406, 6),
(140, 3, 17, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"25\";i:0;s:2:\"25\";}i:1;a:2:{s:2:\"id\";s:2:\"28\";i:0;s:2:\"28\";}i:2;a:2:{s:2:\"id\";s:2:\"23\";i:0;s:2:\"23\";}i:3;a:2:{s:2:\"id\";s:2:\"19\";i:0;s:2:\"19\";}i:4;a:2:{s:2:\"id\";s:2:\"34\";i:0;s:2:\"34\";}i:5;a:2:{s:2:\"id\";s:2:\"20\";i:0;s:2:\"20\";}}', 'a:6:{i:0;d:180;i:1;d:136;i:2;i:0;i:3;d:121;i:4;i:0;i:5;d:321;}', 758, 6),
(141, 1, 18, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"14\";i:0;s:2:\"14\";}i:1;a:2:{s:2:\"id\";s:1:\"4\";i:0;s:1:\"4\";}i:2;a:2:{s:2:\"id\";s:2:\"10\";i:0;s:2:\"10\";}i:3;a:2:{s:2:\"id\";s:1:\"2\";i:0;s:1:\"2\";}i:4;a:2:{s:2:\"id\";s:2:\"11\";i:0;s:2:\"11\";}i:5;a:2:{s:2:\"id\";s:1:\"9\";i:0;s:1:\"9\";}}', 'a:6:{i:0;d:159;i:1;d:202;i:2;d:109;i:3;d:198;i:4;i:0;i:5;d:130;}', 798, 6),
(142, 3, 18, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"34\";i:0;s:2:\"34\";}i:1;a:2:{s:2:\"id\";s:2:\"16\";i:0;s:2:\"16\";}i:2;a:2:{s:2:\"id\";s:2:\"20\";i:0;s:2:\"20\";}i:3;a:2:{s:2:\"id\";s:2:\"19\";i:0;s:2:\"19\";}i:4;a:2:{s:2:\"id\";s:2:\"22\";i:0;s:2:\"22\";}i:5;a:2:{s:2:\"id\";s:2:\"28\";i:0;s:2:\"28\";}}', 'a:6:{i:0;d:102;i:1;d:207;i:2;d:405;i:3;d:235;i:4;d:365;i:5;d:245;}', 1559, 6),
(218, 4, 15, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"66\";i:0;s:2:\"66\";}i:1;a:2:{s:2:\"id\";s:2:\"46\";i:0;s:2:\"46\";}i:2;a:2:{s:2:\"id\";s:2:\"44\";i:0;s:2:\"44\";}i:3;a:2:{s:2:\"id\";s:2:\"68\";i:0;s:2:\"68\";}i:4;a:2:{s:2:\"id\";s:2:\"43\";i:0;s:2:\"43\";}i:5;a:2:{s:2:\"id\";s:2:\"65\";i:0;s:2:\"65\";}}', 'a:6:{i:0;d:735;i:1;d:926;i:2;d:833;i:3;d:621;i:4;d:625;i:5;i:0;}', 3740, 6),
(222, 4, 11, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"61\";i:0;s:2:\"61\";}i:1;a:2:{s:2:\"id\";s:2:\"46\";i:0;s:2:\"46\";}i:2;a:2:{s:2:\"id\";s:2:\"45\";i:0;s:2:\"45\";}i:3;a:2:{s:2:\"id\";s:2:\"66\";i:0;s:2:\"66\";}i:4;a:2:{s:2:\"id\";s:2:\"64\";i:0;s:2:\"64\";}i:5;a:2:{s:2:\"id\";s:2:\"62\";i:0;s:2:\"62\";}}', 'a:6:{i:0;i:1000;i:1;d:893;i:2;d:284;i:3;d:787;i:4;d:730;i:5;i:0;}', 3694, 6),
(226, 3, 11, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"23\";i:0;s:2:\"23\";}i:1;a:2:{s:2:\"id\";s:2:\"16\";i:0;s:2:\"16\";}i:2;a:2:{s:2:\"id\";s:2:\"17\";i:0;s:2:\"17\";}i:3;a:2:{s:2:\"id\";s:2:\"34\";i:0;s:2:\"34\";}i:4;a:2:{s:2:\"id\";s:2:\"18\";i:0;s:2:\"18\";}i:5;a:2:{s:2:\"id\";s:2:\"21\";i:0;s:2:\"21\";}}', 'a:6:{i:0;i:0;i:1;d:917;i:2;d:1000;i:3;d:741;i:4;d:885;i:5;d:962;}', 4505, 6),
(227, 4, 11, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"61\";i:0;s:2:\"61\";}i:1;a:2:{s:2:\"id\";s:2:\"63\";i:0;s:2:\"63\";}i:2;a:2:{s:2:\"id\";s:2:\"45\";i:0;s:2:\"45\";}i:3;a:2:{s:2:\"id\";s:2:\"44\";i:0;s:2:\"44\";}i:4;a:2:{s:2:\"id\";s:2:\"62\";i:0;s:2:\"62\";}i:5;a:2:{s:2:\"id\";s:2:\"64\";i:0;s:2:\"64\";}}', 'a:6:{i:0;i:1000;i:1;d:704;i:2;d:429;i:3;d:730;i:4;d:690;i:5;i:1000;}', 4553, 6),
(229, 2, 11, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"52\";i:0;s:2:\"52\";}i:1;a:2:{s:2:\"id\";s:2:\"47\";i:0;s:2:\"47\";}i:2;a:2:{s:2:\"id\";s:2:\"50\";i:0;s:2:\"50\";}i:3;a:2:{s:2:\"id\";s:2:\"36\";i:0;s:2:\"36\";}i:4;a:2:{s:2:\"id\";s:2:\"37\";i:0;s:2:\"37\";}i:5;a:2:{s:2:\"id\";s:2:\"48\";i:0;s:2:\"48\";}}', 'a:6:{i:0;d:813;i:1;d:585;i:2;d:446;i:3;d:610;i:4;d:433;i:5;d:709;}', 3596, 6),
(230, 2, 11, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"35\";i:0;s:2:\"35\";}i:1;a:2:{s:2:\"id\";s:2:\"47\";i:0;s:2:\"47\";}i:2;a:2:{s:2:\"id\";s:2:\"36\";i:0;s:2:\"36\";}i:3;a:2:{s:2:\"id\";s:2:\"52\";i:0;s:2:\"52\";}i:4;a:2:{s:2:\"id\";s:2:\"50\";i:0;s:2:\"50\";}i:5;a:2:{s:2:\"id\";s:2:\"57\";i:0;s:2:\"57\";}}', 'a:6:{i:0;d:971;i:1;d:741;i:2;d:467;i:3;i:1000;i:4;d:787;i:5;d:629;}', 4595, 6),
(231, 1, 11, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"14\";i:0;s:2:\"14\";}i:1;a:2:{s:2:\"id\";s:2:\"11\";i:0;s:2:\"11\";}i:2;a:2:{s:2:\"id\";s:2:\"12\";i:0;s:2:\"12\";}i:3;a:2:{s:2:\"id\";s:2:\"10\";i:0;s:2:\"10\";}i:4;a:2:{s:2:\"id\";s:1:\"3\";i:0;s:1:\"3\";}i:5;a:2:{s:2:\"id\";s:1:\"8\";i:0;s:1:\"8\";}}', 'a:6:{i:0;d:820;i:1;d:781;i:2;d:758;i:3;i:1000;i:4;d:840;i:5;i:1000;}', 5199, 6),
(233, 1, 15, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"13\";i:0;s:2:\"13\";}i:1;a:2:{s:2:\"id\";s:1:\"1\";i:0;s:1:\"1\";}i:2;a:2:{s:2:\"id\";s:1:\"4\";i:0;s:1:\"4\";}i:3;a:2:{s:2:\"id\";s:1:\"8\";i:0;s:1:\"8\";}i:4;a:2:{s:2:\"id\";s:1:\"9\";i:0;s:1:\"9\";}i:5;a:2:{s:2:\"id\";s:1:\"3\";i:0;s:1:\"3\";}}', 'a:6:{i:0;d:893;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;}', 893, 6),
(236, 4, 20, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"64\";i:0;s:2:\"64\";}i:1;a:2:{s:2:\"id\";s:2:\"68\";i:0;s:2:\"68\";}i:2;a:2:{s:2:\"id\";s:2:\"63\";i:0;s:2:\"63\";}i:3;a:2:{s:2:\"id\";s:2:\"45\";i:0;s:2:\"45\";}i:4;a:2:{s:2:\"id\";s:2:\"58\";i:0;s:2:\"58\";}i:5;a:2:{s:2:\"id\";s:2:\"61\";i:0;s:2:\"61\";}}', 'a:6:{i:0;d:351;i:1;d:226;i:2;d:238;i:3;i:0;i:4;d:195;i:5;d:189;}', 1199, 6),
(237, 1, 15, 'a:6:{i:0;a:2:{s:2:\"id\";s:1:\"3\";i:0;s:1:\"3\";}i:1;a:2:{s:2:\"id\";s:1:\"8\";i:0;s:1:\"8\";}i:2;a:2:{s:2:\"id\";s:1:\"4\";i:0;s:1:\"4\";}i:3;a:2:{s:2:\"id\";s:2:\"15\";i:0;s:2:\"15\";}i:4;a:2:{s:2:\"id\";s:1:\"5\";i:0;s:1:\"5\";}i:5;a:2:{s:2:\"id\";s:2:\"12\";i:0;s:2:\"12\";}}', 'a:6:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:1000;i:4;i:0;i:5;i:1000;}', 2000, 6),
(238, 1, 15, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"14\";i:0;s:2:\"14\";}i:1;a:2:{s:2:\"id\";s:2:\"11\";i:0;s:2:\"11\";}i:2;a:2:{s:2:\"id\";s:1:\"1\";i:0;s:1:\"1\";}i:3;a:2:{s:2:\"id\";s:1:\"5\";i:0;s:1:\"5\";}i:4;a:2:{s:2:\"id\";s:2:\"13\";i:0;s:2:\"13\";}i:5;a:2:{s:2:\"id\";s:1:\"3\";i:0;s:1:\"3\";}}', 'a:6:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:1000;i:5;i:1000;}', 2000, 6),
(243, 1, 15, 'a:6:{i:0;a:2:{s:2:\"id\";s:1:\"3\";i:0;s:1:\"3\";}i:1;a:2:{s:2:\"id\";s:1:\"2\";i:0;s:1:\"2\";}i:2;a:2:{s:2:\"id\";s:2:\"12\";i:0;s:2:\"12\";}i:3;a:2:{s:2:\"id\";s:1:\"7\";i:0;s:1:\"7\";}i:4;a:2:{s:2:\"id\";s:2:\"15\";i:0;s:2:\"15\";}i:5;a:2:{s:2:\"id\";s:2:\"11\";i:0;s:2:\"11\";}}', 'a:6:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;d:641;i:5;i:0;}', 641, 6),
(244, 1, 15, 'a:6:{i:0;a:2:{s:2:\"id\";s:1:\"9\";i:0;s:1:\"9\";}i:1;a:2:{s:2:\"id\";s:1:\"1\";i:0;s:1:\"1\";}i:2;a:2:{s:2:\"id\";s:2:\"10\";i:0;s:2:\"10\";}i:3;a:2:{s:2:\"id\";s:2:\"15\";i:0;s:2:\"15\";}i:4;a:2:{s:2:\"id\";s:1:\"3\";i:0;s:1:\"3\";}i:5;a:2:{s:2:\"id\";s:1:\"5\";i:0;s:1:\"5\";}}', 'a:6:{i:0;i:0;i:1;d:431;i:2;i:0;i:3;i:1000;i:4;i:0;i:5;i:0;}', 1431, 6),
(260, 1, 15, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"13\";i:0;s:2:\"13\";}i:1;a:2:{s:2:\"id\";s:2:\"12\";i:0;s:2:\"12\";}i:2;a:2:{s:2:\"id\";s:2:\"11\";i:0;s:2:\"11\";}i:3;a:2:{s:2:\"id\";s:1:\"1\";i:0;s:1:\"1\";}i:4;a:2:{s:2:\"id\";s:1:\"9\";i:0;s:1:\"9\";}i:5;a:2:{s:2:\"id\";s:1:\"4\";i:0;s:1:\"4\";}}', 'a:6:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;}', 1457, 6),
(268, 1, 11, 'a:6:{i:0;a:2:{s:2:\"id\";s:1:\"1\";i:0;s:1:\"1\";}i:1;a:2:{s:2:\"id\";s:2:\"14\";i:0;s:2:\"14\";}i:2;a:2:{s:2:\"id\";s:2:\"11\";i:0;s:2:\"11\";}i:3;a:2:{s:2:\"id\";s:2:\"15\";i:0;s:2:\"15\";}i:4;a:2:{s:2:\"id\";s:1:\"5\";i:0;s:1:\"5\";}i:5;a:2:{s:2:\"id\";s:1:\"4\";i:0;s:1:\"4\";}}', 'a:6:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;}', 2869, 6),
(272, 4, 11, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"59\";i:0;s:2:\"59\";}i:1;a:2:{s:2:\"id\";s:2:\"62\";i:0;s:2:\"62\";}i:2;a:2:{s:2:\"id\";s:2:\"64\";i:0;s:2:\"64\";}i:3;a:2:{s:2:\"id\";s:2:\"67\";i:0;s:2:\"67\";}i:4;a:2:{s:2:\"id\";s:2:\"44\";i:0;s:2:\"44\";}i:5;a:2:{s:2:\"id\";s:2:\"61\";i:0;s:2:\"61\";}}', 'a:6:{i:0;i:0;i:1;d:526;i:2;d:565;i:3;d:459;i:4;d:595;i:5;d:885;}', 3030, 6),
(273, 1, 11, 'a:6:{i:0;a:2:{s:2:\"id\";s:1:\"5\";i:0;s:1:\"5\";}i:1;a:2:{s:2:\"id\";s:2:\"13\";i:0;s:2:\"13\";}i:2;a:2:{s:2:\"id\";s:1:\"1\";i:0;s:1:\"1\";}i:3;a:2:{s:2:\"id\";s:1:\"6\";i:0;s:1:\"6\";}i:4;a:2:{s:2:\"id\";s:1:\"4\";i:0;s:1:\"4\";}i:5;a:2:{s:2:\"id\";s:1:\"9\";i:0;s:1:\"9\";}}', 'a:6:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:1000;i:5;i:1000;}', 2000, 6),
(274, 1, 11, 'a:6:{i:0;a:2:{s:2:\"id\";s:1:\"9\";i:0;s:1:\"9\";}i:1;a:2:{s:2:\"id\";s:1:\"5\";i:0;s:1:\"5\";}i:2;a:2:{s:2:\"id\";s:1:\"3\";i:0;s:1:\"3\";}i:3;a:2:{s:2:\"id\";s:1:\"7\";i:0;s:1:\"7\";}i:4;a:2:{s:2:\"id\";s:2:\"11\";i:0;s:2:\"11\";}i:5;a:2:{s:2:\"id\";s:1:\"1\";i:0;s:1:\"1\";}}', 'a:6:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:1000;i:4;i:0;i:5;i:0;}', 1000, 6),
(276, 1, 21, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"14\";i:0;s:2:\"14\";}i:1;a:2:{s:2:\"id\";s:1:\"5\";i:0;s:1:\"5\";}i:2;a:2:{s:2:\"id\";s:2:\"15\";i:0;s:2:\"15\";}i:3;a:2:{s:2:\"id\";s:1:\"8\";i:0;s:1:\"8\";}i:4;a:2:{s:2:\"id\";s:1:\"6\";i:0;s:1:\"6\";}i:5;a:2:{s:2:\"id\";s:2:\"13\";i:0;s:2:\"13\";}}', 'a:6:{i:0;d:680;i:1;d:813;i:2;i:0;i:3;i:1000;i:4;d:769;i:5;i:1000;}', 4262, 6),
(277, 2, 21, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"50\";i:0;s:2:\"50\";}i:1;a:2:{s:2:\"id\";s:2:\"53\";i:0;s:2:\"53\";}i:2;a:2:{s:2:\"id\";s:2:\"55\";i:0;s:2:\"55\";}i:3;a:2:{s:2:\"id\";s:2:\"54\";i:0;s:2:\"54\";}i:4;a:2:{s:2:\"id\";s:2:\"52\";i:0;s:2:\"52\";}i:5;a:2:{s:2:\"id\";s:2:\"35\";i:0;s:2:\"35\";}}', 'a:6:{i:0;d:562;i:1;d:342;i:2;d:725;i:3;d:346;i:4;i:0;i:5;d:741;}', 2716, 6),
(283, 1, 21, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"15\";i:0;s:2:\"15\";}i:1;a:2:{s:2:\"id\";s:2:\"14\";i:0;s:2:\"14\";}i:2;a:2:{s:2:\"id\";s:1:\"7\";i:0;s:1:\"7\";}i:3;a:2:{s:2:\"id\";s:1:\"2\";i:0;s:1:\"2\";}i:4;a:2:{s:2:\"id\";s:2:\"10\";i:0;s:2:\"10\";}i:5;a:2:{s:2:\"id\";s:2:\"13\";i:0;s:2:\"13\";}}', 'a:6:{i:0;d:676;i:1;d:725;i:2;d:463;i:3;d:357;i:4;d:346;i:5;d:478;}', 3045, 6),
(284, 1, 21, 'a:6:{i:0;a:2:{s:2:\"id\";s:1:\"1\";i:0;s:1:\"1\";}i:1;a:2:{s:2:\"id\";s:1:\"8\";i:0;s:1:\"8\";}i:2;a:2:{s:2:\"id\";s:1:\"9\";i:0;s:1:\"9\";}i:3;a:2:{s:2:\"id\";s:2:\"11\";i:0;s:2:\"11\";}i:4;a:2:{s:2:\"id\";s:1:\"3\";i:0;s:1:\"3\";}i:5;a:2:{s:2:\"id\";s:1:\"7\";i:0;s:1:\"7\";}}', NULL, 0, 6),
(285, 1, 21, 'a:6:{i:0;a:2:{s:2:\"id\";s:1:\"8\";i:0;s:1:\"8\";}i:1;a:2:{s:2:\"id\";s:1:\"3\";i:0;s:1:\"3\";}i:2;a:2:{s:2:\"id\";s:1:\"5\";i:0;s:1:\"5\";}i:3;a:2:{s:2:\"id\";s:1:\"2\";i:0;s:1:\"2\";}i:4;a:2:{s:2:\"id\";s:1:\"9\";i:0;s:1:\"9\";}i:5;a:2:{s:2:\"id\";s:2:\"10\";i:0;s:2:\"10\";}}', NULL, 0, 6),
(286, 1, 21, 'a:6:{i:0;a:2:{s:2:\"id\";s:1:\"1\";i:0;s:1:\"1\";}i:1;a:2:{s:2:\"id\";s:2:\"13\";i:0;s:2:\"13\";}i:2;a:2:{s:2:\"id\";s:1:\"9\";i:0;s:1:\"9\";}i:3;a:2:{s:2:\"id\";s:1:\"4\";i:0;s:1:\"4\";}i:4;a:2:{s:2:\"id\";s:1:\"7\";i:0;s:1:\"7\";}i:5;a:2:{s:2:\"id\";s:2:\"11\";i:0;s:2:\"11\";}}', NULL, 0, 6),
(287, 1, 21, 'a:6:{i:0;a:2:{s:2:\"id\";s:1:\"4\";i:0;s:1:\"4\";}i:1;a:2:{s:2:\"id\";s:1:\"8\";i:0;s:1:\"8\";}i:2;a:2:{s:2:\"id\";s:1:\"6\";i:0;s:1:\"6\";}i:3;a:2:{s:2:\"id\";s:2:\"13\";i:0;s:2:\"13\";}i:4;a:2:{s:2:\"id\";s:2:\"12\";i:0;s:2:\"12\";}i:5;a:2:{s:2:\"id\";s:1:\"7\";i:0;s:1:\"7\";}}', NULL, 0, 6),
(288, 1, 21, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"13\";i:0;s:2:\"13\";}i:1;a:2:{s:2:\"id\";s:1:\"3\";i:0;s:1:\"3\";}i:2;a:2:{s:2:\"id\";s:1:\"6\";i:0;s:1:\"6\";}i:3;a:2:{s:2:\"id\";s:1:\"2\";i:0;s:1:\"2\";}i:4;a:2:{s:2:\"id\";s:1:\"8\";i:0;s:1:\"8\";}i:5;a:2:{s:2:\"id\";s:1:\"7\";i:0;s:1:\"7\";}}', 'a:6:{i:0;i:0;i:1;i:0;i:2;i:1000;i:3;i:0;i:4;i:0;i:5;i:0;}', 1000, 6),
(289, 1, 21, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"15\";i:0;s:2:\"15\";}i:1;a:2:{s:2:\"id\";s:2:\"10\";i:0;s:2:\"10\";}i:2;a:2:{s:2:\"id\";s:2:\"11\";i:0;s:2:\"11\";}i:3;a:2:{s:2:\"id\";s:1:\"2\";i:0;s:1:\"2\";}i:4;a:2:{s:2:\"id\";s:2:\"14\";i:0;s:2:\"14\";}i:5;a:2:{s:2:\"id\";s:2:\"12\";i:0;s:2:\"12\";}}', NULL, 0, 6),
(290, 1, 21, 'a:6:{i:0;a:2:{s:2:\"id\";s:1:\"2\";i:0;s:1:\"2\";}i:1;a:2:{s:2:\"id\";s:1:\"6\";i:0;s:1:\"6\";}i:2;a:2:{s:2:\"id\";s:1:\"4\";i:0;s:1:\"4\";}i:3;a:2:{s:2:\"id\";s:1:\"8\";i:0;s:1:\"8\";}i:4;a:2:{s:2:\"id\";s:2:\"11\";i:0;s:2:\"11\";}i:5;a:2:{s:2:\"id\";s:1:\"9\";i:0;s:1:\"9\";}}', NULL, 0, 6),
(291, 3, 15, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"29\";i:0;s:2:\"29\";}i:1;a:2:{s:2:\"id\";s:2:\"20\";i:0;s:2:\"20\";}i:2;a:2:{s:2:\"id\";s:2:\"28\";i:0;s:2:\"28\";}i:3;a:2:{s:2:\"id\";s:2:\"19\";i:0;s:2:\"19\";}i:4;a:2:{s:2:\"id\";s:2:\"27\";i:0;s:2:\"27\";}i:5;a:2:{s:2:\"id\";s:2:\"26\";i:0;s:2:\"26\";}}', 'a:6:{i:0;i:1000;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;}', 1000, 6),
(292, 4, 21, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"46\";i:0;s:2:\"46\";}i:1;a:2:{s:2:\"id\";s:2:\"67\";i:0;s:2:\"67\";}i:2;a:2:{s:2:\"id\";s:2:\"58\";i:0;s:2:\"58\";}i:3;a:2:{s:2:\"id\";s:2:\"66\";i:0;s:2:\"66\";}i:4;a:2:{s:2:\"id\";s:2:\"45\";i:0;s:2:\"45\";}i:5;a:2:{s:2:\"id\";s:2:\"65\";i:0;s:2:\"65\";}}', 'a:6:{i:0;d:602;i:1;d:478;i:2;d:391;i:3;d:800;i:4;i:0;i:5;d:694;}', 2965, 6),
(293, 2, 22, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"35\";i:0;s:2:\"35\";}i:1;a:2:{s:2:\"id\";s:2:\"52\";i:0;s:2:\"52\";}i:2;a:2:{s:2:\"id\";s:2:\"48\";i:0;s:2:\"48\";}i:3;a:2:{s:2:\"id\";s:2:\"51\";i:0;s:2:\"51\";}i:4;a:2:{s:2:\"id\";s:2:\"50\";i:0;s:2:\"50\";}i:5;a:2:{s:2:\"id\";s:2:\"53\";i:0;s:2:\"53\";}}', 'a:6:{i:0;d:855;i:1;d:503;i:2;i:0;i:3;d:667;i:4;d:629;i:5;d:490;}', 3144, 6),
(294, 4, 22, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"45\";i:0;s:2:\"45\";}i:1;a:2:{s:2:\"id\";s:2:\"60\";i:0;s:2:\"60\";}i:2;a:2:{s:2:\"id\";s:2:\"61\";i:0;s:2:\"61\";}i:3;a:2:{s:2:\"id\";s:2:\"63\";i:0;s:2:\"63\";}i:4;a:2:{s:2:\"id\";s:2:\"65\";i:0;s:2:\"65\";}i:5;a:2:{s:2:\"id\";s:2:\"62\";i:0;s:2:\"62\";}}', 'a:6:{i:0;d:568;i:1;d:503;i:2;i:1000;i:3;d:658;i:4;d:971;i:5;i:0;}', 3700, 6),
(295, 2, 23, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"52\";i:0;s:2:\"52\";}i:1;a:2:{s:2:\"id\";s:2:\"38\";i:0;s:2:\"38\";}i:2;a:2:{s:2:\"id\";s:2:\"50\";i:0;s:2:\"50\";}i:3;a:2:{s:2:\"id\";s:2:\"49\";i:0;s:2:\"49\";}i:4;a:2:{s:2:\"id\";s:2:\"55\";i:0;s:2:\"55\";}i:5;a:2:{s:2:\"id\";s:2:\"35\";i:0;s:2:\"35\";}}', 'a:6:{i:0;d:382;i:1;d:429;i:2;d:546;i:3;d:319;i:4;d:800;i:5;d:719;}', 3195, 6),
(296, 2, 24, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"38\";i:0;s:2:\"38\";}i:1;a:2:{s:2:\"id\";s:2:\"36\";i:0;s:2:\"36\";}i:2;a:2:{s:2:\"id\";s:2:\"55\";i:0;s:2:\"55\";}i:3;a:2:{s:2:\"id\";s:2:\"47\";i:0;s:2:\"47\";}i:4;a:2:{s:2:\"id\";s:2:\"56\";i:0;s:2:\"56\";}i:5;a:2:{s:2:\"id\";s:2:\"37\";i:0;s:2:\"37\";}}', 'a:6:{i:0;d:581;i:1;d:240;i:2;i:1000;i:3;d:461;i:4;i:1000;i:5;d:578;}', 3860, 6),
(297, 1, 25, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"13\";i:0;s:2:\"13\";}i:1;a:2:{s:2:\"id\";s:2:\"14\";i:0;s:2:\"14\";}i:2;a:2:{s:2:\"id\";s:1:\"7\";i:0;s:1:\"7\";}i:3;a:2:{s:2:\"id\";s:1:\"3\";i:0;s:1:\"3\";}i:4;a:2:{s:2:\"id\";s:1:\"5\";i:0;s:1:\"5\";}i:5;a:2:{s:2:\"id\";s:1:\"1\";i:0;s:1:\"1\";}}', 'a:6:{i:0;d:272;i:1;i:0;i:2;i:0;i:3;d:289;i:4;i:0;i:5;i:0;}', 561, 6),
(298, 4, 26, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"68\";i:0;s:2:\"68\";}i:1;a:2:{s:2:\"id\";s:2:\"63\";i:0;s:2:\"63\";}i:2;a:2:{s:2:\"id\";s:2:\"43\";i:0;s:2:\"43\";}i:3;a:2:{s:2:\"id\";s:2:\"64\";i:0;s:2:\"64\";}i:4;a:2:{s:2:\"id\";s:2:\"60\";i:0;s:2:\"60\";}i:5;a:2:{s:2:\"id\";s:2:\"61\";i:0;s:2:\"61\";}}', 'a:6:{i:0;d:282;i:1;d:324;i:2;d:248;i:3;d:260;i:4;d:265;i:5;d:289;}', 1668, 6),
(299, 4, 26, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"45\";i:0;s:2:\"45\";}i:1;a:2:{s:2:\"id\";s:2:\"46\";i:0;s:2:\"46\";}i:2;a:2:{s:2:\"id\";s:2:\"58\";i:0;s:2:\"58\";}i:3;a:2:{s:2:\"id\";s:2:\"44\";i:0;s:2:\"44\";}i:4;a:2:{s:2:\"id\";s:2:\"63\";i:0;s:2:\"63\";}i:5;a:2:{s:2:\"id\";s:2:\"61\";i:0;s:2:\"61\";}}', 'a:6:{i:0;d:426;i:1;d:305;i:2;d:388;i:3;i:0;i:4;d:418;i:5;d:794;}', 2331, 6),
(300, 3, 26, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"20\";i:0;s:2:\"20\";}i:1;a:2:{s:2:\"id\";s:2:\"28\";i:0;s:2:\"28\";}i:2;a:2:{s:2:\"id\";s:2:\"27\";i:0;s:2:\"27\";}i:3;a:2:{s:2:\"id\";s:2:\"24\";i:0;s:2:\"24\";}i:4;a:2:{s:2:\"id\";s:2:\"29\";i:0;s:2:\"29\";}i:5;a:2:{s:2:\"id\";s:2:\"21\";i:0;s:2:\"21\";}}', 'a:6:{i:0;d:980;i:1;d:592;i:2;d:840;i:3;i:1000;i:4;d:741;i:5;d:862;}', 5015, 6),
(301, 3, 26, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"18\";i:0;s:2:\"18\";}i:1;a:2:{s:2:\"id\";s:2:\"34\";i:0;s:2:\"34\";}i:2;a:2:{s:2:\"id\";s:2:\"29\";i:0;s:2:\"29\";}i:3;a:2:{s:2:\"id\";s:2:\"16\";i:0;s:2:\"16\";}i:4;a:2:{s:2:\"id\";s:2:\"24\";i:0;s:2:\"24\";}i:5;a:2:{s:2:\"id\";s:2:\"17\";i:0;s:2:\"17\";}}', 'a:6:{i:0;d:342;i:1;d:273;i:2;d:787;i:3;d:478;i:4;d:495;i:5;d:613;}', 2988, 6),
(302, 4, 26, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"46\";i:0;s:2:\"46\";}i:1;a:2:{s:2:\"id\";s:2:\"63\";i:0;s:2:\"63\";}i:2;a:2:{s:2:\"id\";s:2:\"44\";i:0;s:2:\"44\";}i:3;a:2:{s:2:\"id\";s:2:\"59\";i:0;s:2:\"59\";}i:4;a:2:{s:2:\"id\";s:2:\"58\";i:0;s:2:\"58\";}i:5;a:2:{s:2:\"id\";s:2:\"45\";i:0;s:2:\"45\";}}', 'a:6:{i:0;d:510;i:1;d:296;i:2;d:329;i:3;d:413;i:4;d:339;i:5;i:0;}', 1887, 6),
(303, 3, 27, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"24\";i:0;s:2:\"24\";}i:1;a:2:{s:2:\"id\";s:2:\"19\";i:0;s:2:\"19\";}i:2;a:2:{s:2:\"id\";s:2:\"23\";i:0;s:2:\"23\";}i:3;a:2:{s:2:\"id\";s:2:\"27\";i:0;s:2:\"27\";}i:4;a:2:{s:2:\"id\";s:2:\"21\";i:0;s:2:\"21\";}i:5;a:2:{s:2:\"id\";s:2:\"22\";i:0;s:2:\"22\";}}', 'a:6:{i:0;i:0;i:1;d:303;i:2;d:341;i:3;d:680;i:4;d:254;i:5;d:741;}', 2319, 6),
(304, 2, 27, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"36\";i:0;s:2:\"36\";}i:1;a:2:{s:2:\"id\";s:2:\"35\";i:0;s:2:\"35\";}i:2;a:2:{s:2:\"id\";s:2:\"38\";i:0;s:2:\"38\";}i:3;a:2:{s:2:\"id\";s:2:\"37\";i:0;s:2:\"37\";}i:4;a:2:{s:2:\"id\";s:2:\"57\";i:0;s:2:\"57\";}i:5;a:2:{s:2:\"id\";s:2:\"49\";i:0;s:2:\"49\";}}', 'a:6:{i:0;i:0;i:1;d:676;i:2;d:304;i:3;d:408;i:4;d:209;i:5;d:197;}', 1794, 6),
(305, 4, 27, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"59\";i:0;s:2:\"59\";}i:1;a:2:{s:2:\"id\";s:2:\"65\";i:0;s:2:\"65\";}i:2;a:2:{s:2:\"id\";s:2:\"60\";i:0;s:2:\"60\";}i:3;a:2:{s:2:\"id\";s:2:\"66\";i:0;s:2:\"66\";}i:4;a:2:{s:2:\"id\";s:2:\"64\";i:0;s:2:\"64\";}i:5;a:2:{s:2:\"id\";s:2:\"68\";i:0;s:2:\"68\";}}', 'a:6:{i:0;i:0;i:1;i:0;i:2;d:971;i:3;i:1000;i:4;i:1000;i:5;i:1000;}', 3971, 6),
(306, 1, 27, 'a:6:{i:0;a:2:{s:2:\"id\";s:2:\"12\";i:0;s:2:\"12\";}i:1;a:2:{s:2:\"id\";s:1:\"8\";i:0;s:1:\"8\";}i:2;a:2:{s:2:\"id\";s:2:\"10\";i:0;s:2:\"10\";}i:3;a:2:{s:2:\"id\";s:1:\"4\";i:0;s:1:\"4\";}i:4;a:2:{s:2:\"id\";s:2:\"11\";i:0;s:2:\"11\";}i:5;a:2:{s:2:\"id\";s:2:\"15\";i:0;s:2:\"15\";}}', 'a:6:{i:0;d:244;i:1;d:485;i:2;d:429;i:3;d:435;i:4;i:0;i:5;d:820;}', 2413, 6);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `themeId` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer1` varchar(255) NOT NULL,
  `answer2` varchar(255) NOT NULL,
  `answer3` varchar(255) NOT NULL,
  `answer4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `themeId`, `question`, `answer1`, `answer2`, `answer3`, `answer4`) VALUES
(1, 1, 'L\'élément <title> doit être situé à l\'intérieur de ?', 'l\'element <head>', 'l\'element <body>', 'l\'element <footer>', 'l\'element <script>'),
(2, 1, 'Quel est la bonne abréviation de HTML ?', 'Hyper Text Markup Language ', 'Hyper Test Markup Language ', 'Hyper Troll Module Language', 'Hyperlink Markup Language '),
(3, 1, 'Quelle balise utiliseriez-vous pour créer un lien hypertexte ?', '<a>', '<img>', '<dl>', '<li>'),
(4, 1, ' Quel attribut est-il convenu d\'employer pour désigner un élément qui ne sera employé qu\'une seule fois dans le document ?', 'id', 'article', 'class', 'span'),
(5, 1, 'Quel est l\'élément HTML pour afficher une image ?', '<img>', '<pics>', '<image>', '<picture>'),
(6, 1, 'Comment écrire un commentaire HTML ?', '<!-- commentaire -->', '/* commentaire */ ', '// commentaire', '* commentaire *'),
(7, 1, 'Laquelle des balises de table suivantes est utilisée pour créer une ligne de table ?', '<tr>', '<td>', '<th>', '<table>'),
(8, 1, 'Laquelle des balises HTML suivantes n’est pas valide ?', '<h8>', '<h1>', '<h4>', '<h5>'),
(9, 1, 'Quel est l\'attribut HTML pour référencer l\'emplacement d\'une image dans la balise image ?', 'src', 'href', 'link', 'location'),
(10, 1, 'Lorsque nous devons créer une liste non ordonnée, quel balisage devons nous utiliser ?', '<ul>', '<ol>', '<li>', '<th>'),
(11, 1, 'Comment pouvez-vous mettre un texte en gras ?', '<bold>', '<strong>', '<b>', '<em>'),
(12, 1, 'En HTML nous utilisons le tag <br> pour ?', 'faire un saut de ligne', 'créer un espace', 'pour faire beau', 'pour faire parler les curieux'),
(13, 1, 'Quelle est la première ligne obligatoire dans un fichier HTML ?', 'La déclaration du doctype', 'Le copyright du créateur de la page', 'Le titre de la page', 'l\'encodage de caractère UTF-8'),
(14, 1, 'À quoi sert la balise <head></head> ?', 'déclarer l\'entête du document HTML (informations sur la page)', 'mettre la photo du créateur du site', 'mettre le contenu de la page', 'mettre des bonus'),
(15, 1, 'Quelle est la syntaxe pour déclarer l\'encodage des caractères du document en UTF-8 ?', '<meta charset=\"UTF-8\">', '<meta charset=\"text/html; UTF-8\">', '<meta encoding=\"text/html; charset=utf-8\">', '<meta charset=\'text/html; UTF-8\'>'),
(16, 3, 'Que signifie PHP ?', 'PHP: Hypertext Preprocessor', 'Programming Home Pages', 'Page Helper Process', 'player home page'),
(17, 3, 'Un script PHP devrait commencer par ?', '<?php', '<php', '<?', '<!php'),
(18, 3, 'PHP permet de créer des sites...', 'dynamiques', 'féériques', 'statics', 'prolifiques'),
(19, 3, 'Dans le cas d\'envoi d\'informations plus ou moins sensibles par formulaire, quelle méthode utilisera-t-on de préférence ?', 'POST', 'MAILTO', 'GET', 'GET OUT'),
(20, 3, 'Les fichiers PHP ont l’extension ... ?', '.php', '.xml', '.json', '.html'),
(21, 3, 'Qu\'est-ce qui est indispensable au bon fonctionnement d\'un site web écrit avec PHP afin qu\'il s\'affiche correctement dans un navigateur ?', 'Un serveur web (Apache, Nginx…)', 'Un IDE', 'Un terminal (ligne de commande)', 'deux IDE'),
(22, 3, 'PHP est-il sensible à la casse ?', 'Vrai', 'Faux', 'C\'est quoi la casse ?', 'Non car c\'est un dure à cuire !'),
(23, 3, 'Laquelle des méthodes suivantes connecte une base de données MySql en utilisant PHP?', 'mysql_connect()', 'mysql_query()', 'mysql_close()', 'Aucune de ces réponses n’est vraie'),
(24, 3, 'Qui est le père de PHP ?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', 'List Barely'),
(25, 3, 'Comment écrivez-vous \"Hello World\" en PHP ?', 'echo \"Hello World\";', 'Document.Write(\"Hello World\");', '\"Hello world\";', 'echo <\"Hello World\">;'),
(26, 3, 'Par quel symbole les variables PHP commencent elles ?', '$', '!', '@', '&'),
(27, 3, 'A quoi ressemble une balise PHP ?', '<?php \r\n?>', '<?php \r\n/>', '<php \r\n?>', '<?/ \\>'),
(28, 3, 'Comment accède-t-on au 1er élément chaton dans le tableau suivant : $tableau = Array(\'chaton\' , \'ornithorynque\', \'dauphin\'); ?', '$tableau[0]', '$tableau[1]', '$tableau{0}', '$tableau.get(1)'),
(29, 3, 'Comment créez-vous un cookie en PHP ?', 'setcookie()', 'makecookie()', 'createCookie', 'modelCookie'),
(34, 3, 'Comment créez-vous un tableau en PHP ?', '$cars = array[\"Volvo\", \"BMW\", \"Toyota\"];', '$cars = (\"Volvo\", \"BMW\", \"Toyota\");', '$cars = \"Volvo\", \"BMW\", \"Toyota\";', '$cars = {\"Volvo\", \"BMW\", \"Toyota\"};'),
(35, 2, 'Que signifie CSS ?', 'Cascading Style Sheets', 'Create Simple Samples', 'Choucroute et Saucisses d\'Alsace', 'Custom Custom Suctom'),
(36, 2, 'Pourquoi utilise-t-on généralement du CSS ?', 'Pour séparer le contenu et la présentation des documents web', 'Pour se compliquer la vie bien sûr', 'Cela permet de faire de plus jolis dégradés de couleurs', 'Pour communiquer avec la base de données'),
(37, 2, 'Où est-il conseillé de placer le code CSS ?', 'Dans un fichier externe utilisable pour plusieurs pages', 'Dans le <body>, c\'te question', 'Entre les balises <head>, c\'est bien plus propre', 'Dans le premier tiroir de l\'armoire'),
(38, 2, 'Dans quoi définit-on les déclarations CSS ?', 'Entre deux accolades séparés par des points-virgules { ... ; ... }', 'Entre deux crochets sépareés par des tirets [ ... - ... ]', 'Entre deux guillemets séparées par des slashs \" ... / ... \"', 'Entre deux parenthèses séparées par des slashs ( ... / ... )'),
(43, 4, 'Qui à créer le Javascript ?', 'Brendan Eich', 'Java script', 'Jeanne d\'arc', 'Jean claude Vandam'),
(44, 4, 'Comment écrivez-vous \"Hello World\" dans une boîte d\'alerte ?', 'alert(\"Hello World\");', 'msgBox(\"Hello World\");', 'msg(\"Hello World\");', 'alertBox(\"Hello World\");'),
(45, 4, 'Comment créez-vous une fonction en JavaScript ?', 'function = myFunction()', 'function myFunction()', 'function : myFunction()', 'function == myFunction()'),
(46, 4, 'Comment appelez-vous une fonction nommée \"myFunction\" ?', 'myFunction()', 'call myFunction()', 'call function myFunction()', 'call myFunktion()'),
(47, 2, 'Quel élément sépare la propriété de sa valeur ?', 'Le signe deux points', 'Le signe espace', 'Le signe égal', 'le signe point-virgule'),
(48, 2, 'Quel est le code HTML correct pour faire référence à une feuille de style externe ?', '<link rel=\"stylesheet\" type=\"text/css\" href=\"\"mystyle.css\">', '<style src=\"mystyle.css\">', '<stylesheet>mystyle.css<stylesheet>', 'La flemme de trouver une troisième mauvaise réponse...'),
(49, 2, 'Quel est la syntaxe CSS correcte ?', 'body {color : black;}', 'body {color = black;}', '{body: color = black;}', '{body= color : black;} '),
(50, 2, 'Quelle propriété est utilisée pour changer la couleur de fond ?', 'background-color', 'bg-colored', 'color', 'font-color'),
(51, 2, 'Quelle propriété CSS contrôle la taille du texte ?', 'font-size', 'text-style', 'font-style', 'text-size'),
(52, 2, 'Quelle est la syntaxe CSS correcte pour mettre en gras tous les éléments <p> ?', 'p {\r\nfont-weight : bold;\r\n}', 'p {\r\ntext-size : bold;\r\n}', '<p style=\"\r\nfont-size : bold;\">', '<p style=\"\r\ntext-size : bold;\">'),
(53, 2, 'Comment affichez-vous des liens hypertextes sans soulignement ?', 'a {\r\ntext-decoration : none;\r\n}', 'a {\r\ntext-decoration : no-underline;\r\n}', 'a {\r\nunderline : none;\r\n}', 'a {\r\ndecoration : no-underline;\r\n}'),
(54, 2, 'Quelle propriété est utilisée pour changer la marge gauche d\'un élément ?', 'margin-left', 'indent', 'padding-left', 'left'),
(55, 2, 'Comment sélectionnez-vous les éléments avec la classe \"test\" ?', '.test', 'test ', '#test', '*test'),
(56, 2, 'Comment sélectionnez-vous tous les éléments \"p\" à l\'intérieur d\'un élément div ?', 'div p', 'div > p	', 'div + p', 'div.p'),
(57, 2, 'Quelle est la valeur par défaut de la propriété position ?', 'static', 'absolute', 'fixed', 'relative'),
(58, 4, 'Comment une boucle WHILE commence-t-elle ?', 'while(i < 10)', 'while(i + 10 ; i++)', 'while (i = 1; to 10)', 'while(i -(O_O)- 10)'),
(59, 4, 'Comment une boucle FOR démarre-t-elle ?', 'for (i = 0 ; i < 5 ; i++)', 'for (i <= 5; i++)', 'for i = 1 to 5', 'for (i = 0 ; i <= 5)'),
(60, 4, 'Quelle est la bonne façon d\'écrire un tableau JavaScript ?', 'var colors = [\"red\", \"green\", \"blue\"]', 'var colors = \"red\", \"green\", \"blue\"', 'var colors = (1:\"red\", 2:\"green\", 3:\"blue\")', 'var colors = 1 = [(\"red\"), 2 = (\"green\"), 3 = (\"blue\")]'),
(61, 4, 'Quel événement se produit lorsque l\'utilisateur clique sur un élément HTML ?', 'onclick', 'onmouseover', 'onmouseclick', 'onchange'),
(62, 4, 'Comment déclarez-vous une variable JavaScript ?', 'let name;', 'v name;', 'variable name;', 'letName;'),
(63, 4, 'Quel opérateur est utilisé pour assigner une valeur à une variable ?', '=', 'x', '-', '>'),
(64, 4, 'JavaScript est-il sensible à la casse ?', 'oui', 'non', 'Noui', 'ouon'),
(65, 4, 'Quels sont les différents types de bouttons de la balise <INPUT> ?', 'SUBMIT, RESET, BUTTON etc', 'SUBMIT et BOSTON', 'SUBWAY', 'VALUE et SPAN'),
(66, 4, 'Que signifie \"NaN\" ?', 'Not a Number', 'Number area NULL', 'Not a NULL', 'Not a Name'),
(67, 4, 'Quel opérateur est utilisé pour concaténer des chaînes de caractères ?', '.', '&', 'add()', '+'),
(68, 4, 'Comment afficher \"Bonjour\" sur la console ?', 'console.log(\"Bonjour\");', 'prompt_f(\"Bonjour\");', 'print_n(\"Bonjour\");', 'console(\"Bonjour\");');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`) VALUES
(1, 'HTML'),
(2, 'CSS'),
(3, 'PHP'),
(4, 'Javascript');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nickname`, `password`) VALUES
(2, 'dede', '$2y$10$lX6yy8FifC7GTOv9tKtr.OYBcocRyK.r9V9hV5B3yu1mVRkIG.KGK'),
(3, 'Pedro', '$2y$10$NjHgLOM6sR/adsF8xgEkz.A8dDcZBYXKx8IjdmDX/GbxpW/5eWhmq'),
(4, 'koala', '$2y$10$YiFStUonrvTMuUIvZyS/EeURNHT3HoGrujAxEpjFo2NCKUhGaHo4.'),
(5, 'Kalimero', '$2y$10$6/uyrpfVmMaWCqDd9cxr/e5DTsl6lR7GSF2WHQUeP.sSl8NviYjBK'),
(6, 'rodrigue', '$2y$10$rVa1h04acov//5O7wy..YegsRAqIHG8xuc84e3X7a027m/6tAQi8q'),
(11, 'roro', '$2y$10$NSPnWyVYEDn9lx7pPARAgeBY0FUmeYl6k8lZ0dIKSjr9qTwhBAdOS'),
(12, 'Tata', '$2y$10$mzyV8mkR/ROy.khJArkGDuhVE35EuwUHM8vp4a/DxCvrf.IdQn9Ve'),
(13, 'Toto', '$2y$10$wVSwPxIeL.A62Q1ujiaBn.Oq0tM8xBdobjLenVBwpUli6Qk9CCn32'),
(14, 'ame', '$2y$10$CDlL3lVYUgjocgpatQYd7eCiv0taHkRsJBBkJCyGGcxgq1gE76n/m'),
(15, 'Nico', '$2y$10$c.MfOli3I7tPPW3C6DgfOec5PWyRTZlFZ/EoUo.ZFSG.7/fG9hH12'),
(16, 'Micka', '$2y$10$8zOl.HV26F7Zf1FceXCjpen6JnvD6eQgm5op1SvaXyRFDw48X4nzO'),
(17, 'Baptiste', '$2y$10$s7flhKXSh8nlGiVOdC1wA.Ic5xh7PGZXTon2VJOJ2ZFAMIXriuXgK'),
(18, 'InovaXion', '$2y$10$Y/fZWP39HEqMeFvibKFJV.iEF9WmZu3uQRi6npGHOspm/EStQBPY.'),
(20, 'pierre', '$2y$10$QM.GhsNKdiA7Mw05lb.8a.2SDv57a9wKL/TiQcnO0Rq6aJ6hy8lZS'),
(21, 'azerty', '$2y$10$m5GUcmDHLA/0uJLP0If1LuCpkaCVLCOLRWcVhKATt/LUS9oiFemaa'),
(22, 'pouf', '$2y$10$2i6YLCM0ciwNE/2GQHmej.Jp0ILtlU0pqtY/65fjRU.USBXbMB/oC'),
(23, 'inconnu', '$2y$10$scB/a1HUM5PIl9wUyvhqb.3Xxp4y8bqEcpBEzTepiseEulSi4cyFS'),
(24, 'brocoli', '$2y$10$JnjL.lH44.mcYpy79EtQ6OVYFE2jNc3i/EH8szC9Stl85nM/SFunC'),
(25, 'angelique', '$2y$10$BMVj/jRY6.1vRRYH6fAhlO5iKcWD70eBIParN9Yeb.hWhHo3IHSXO'),
(26, 'Sp6M3N', '$2y$10$ffww96Wwn.TpkOPPbJxWFOT1eT6HgbxOQW9uT4RGfujiIrT6aGzci'),
(27, 'InhumanRampage', '$2y$10$.yLoJcTzq.uoT9760uearun03E5jniM8TizYZjUMxcmdjpYwgs38q');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD KEY `themeId` (`themeId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `themeId` (`themeId`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_ibfk_1` FOREIGN KEY (`themeId`) REFERENCES `themes` (`id`),
  ADD CONSTRAINT `games_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`themeId`) REFERENCES `themes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
