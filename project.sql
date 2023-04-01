-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2020 at 10:57 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'mhasan9988xx@gmail.com', 'admin'),
(2, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5f958acd59e19', '5f958acd7646c'),
('5f958acda9ae1', '5f958acdaf487'),
('5f958acdd2598', '5f958acde2c24'),
('5f958ace173e1', '5f958ace1ccc8'),
('5f958ace37c6a', '5f958ace3d5c2');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('5f958c43cf688', 'NNN', 'n@n.com', 'test', 'this is test ', '2020-10-25', '03:31:31pm'),
('5f9864fbb1041', 'gfshdghjk', 'm@m.com', 'ghjskl', 'drtyuiokl', '2020-10-27', '07:20:43pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('n@n.com', '5f95896b0fcfb', -6, 5, 1, 4, '2020-10-27 08:45:32'),
('m@m.com', '5f95896b0fcfb', -2, 5, 2, 3, '2020-11-05 16:01:45');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5f958acd59e19', 'Home Tool Markup Language', '5f958acd7645b'),
('5f958acd59e19', 'Hyperlink and markup Language ', '5f958acd76468'),
('5f958acd59e19', 'Hypertext Markup language ', '5f958acd7646c'),
('5f958acd59e19', 'Hypertext Minimal Language', '5f958acd76470'),
('5f958acda9ae1', 'GOOGLE', '5f958acdaf477'),
('5f958acda9ae1', 'YAHOO', '5f958acdaf482'),
('5f958acda9ae1', 'MOZILA', '5f958acdaf485'),
('5f958acda9ae1', 'World Wide Web Consortium', '5f958acdaf487'),
('5f958acdd2598', '<br>', '5f958acde2c24'),
('5f958acdd2598', '<lb>', '5f958acde2c2a'),
('5f958acdd2598', '<brk>', '5f958acde2c2b'),
('5f958acdd2598', '<nl>', '5f958acde2c2c'),
('5f958ace173e1', '<italic>', '5f958ace1ccbe'),
('5f958ace173e1', '<em>', '5f958ace1ccc8'),
('5f958ace173e1', '<i>', '5f958ace1cccb'),
('5f958ace173e1', '<bold>', '5f958ace1cccd'),
('5f958ace37c6a', '*', '5f958ace3d5b5'),
('5f958ace37c6a', '#', '5f958ace3d5c0'),
('5f958ace37c6a', '/', '5f958ace3d5c2'),
('5f958ace37c6a', '<', '5f958ace3d5c5');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5f95896b0fcfb', '5f958acd59e19', 'What does HTML stand for?', 4, 1),
('5f95896b0fcfb', '5f958acda9ae1', 'Who is making the Web standards?', 4, 2),
('5f95896b0fcfb', '5f958acdd2598', 'What is the correct HTML element for inserting a line break?', 4, 3),
('5f95896b0fcfb', '5f958ace173e1', 'Choose the correct HTML element to define emphasized text', 4, 4),
('5f95896b0fcfb', '5f958ace37c6a', 'Which character is used to indicate an end tag?', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('5f95896b0fcfb', 'Web Design 1', 2, 2, 5, 10, 'HTML 5 QUIZ-1', '#html,#web_design', '2020-10-25 14:19:23'),
('5fa41fe8d4e41', 'Fghjk', 2, 2, 3, 5, 'gfhjk', '', '2020-11-05 15:53:12'),
('5fa42101efe23', 'Dfghjk', 2, 2, 2, 2, 'ad', '', '2020-11-05 15:57:53');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('sunnygkp10@gmail.com', 9, '2015-06-24 03:22:38'),
('avantika420@gmail.com', 8, '2015-06-23 14:49:39'),
('mi5@hollywood.com', 4, '2015-06-23 15:12:56'),
('nik1@gmail.com', 1, '2015-06-23 16:11:50'),
('m@m.com', -2, '2020-11-05 16:01:45'),
('n@n.com', -6, '2020-10-27 08:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Mahmudul', 'M', 'BUBT', 'm@m.com', 1234567890, '827ccb0eea8a706c4c34a16891f84e7b'),
('Nnnnn', 'F', 'BUBT', 'n@n.com', 1234567890, '827ccb0eea8a706c4c34a16891f84e7b'),
('Ooo', 'M', 'BUBT', 'o@o.com', 1234567890, '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
