-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 05, 2013 at 08:06 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `champsquest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(20) NOT NULL,
  `AdminCategory` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
  `AnswerId` varchar(10) NOT NULL,
  `QuestionId` varchar(10) NOT NULL,
  `UserId` varchar(10) NOT NULL,
  `Answer` text NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `best`
--

CREATE TABLE IF NOT EXISTS `best` (
  `QuestionId` varchar(255) NOT NULL,
  `AnswerId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `CategoryId` varchar(255) NOT NULL,
  `CategoryName` varchar(255) NOT NULL,
  `Questions` varchar(10) NOT NULL,
  `Users` varchar(10) NOT NULL,
  `Tags` varchar(10) NOT NULL,
  `Views` varchar(10) NOT NULL,
  `Status` enum('0','1') NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryId`, `CategoryName`, `Questions`, `Users`, `Tags`, `Views`, `Status`, `Date`) VALUES
('gate001', 'GATE', '0', '0', '0', '0', '1', '2013-09-05 00:00:00'),
('ies002', 'IES', '0', '0', '0', '0', '1', '2013-09-05 00:00:00'),
('civil003', 'CIVILS', '0', '0', '0', '0', '1', '2013-09-05 00:00:00'),
('mba004', 'CAT,GMAT,SAT', '0', '0', '0', '0', '1', '2013-09-05 00:00:00'),
('gre005', 'GRE', '0', '0', '0', '0', '1', '2013-09-05 00:00:00'),
('toefl006', 'TOEFL', '0', '0', '0', '0', '1', '2013-09-05 00:00:00'),
('ms007', 'MS Profile', '2', '0', '3', '9', '1', '2013-09-05 00:00:00'),
('eng008', 'Engineering', '0', '0', '0', '0', '1', '2013-09-05 00:00:00'),
('iit009', 'IIT-JEE,AIEEE', '0', '0', '0', '0', '1', '2013-09-05 00:00:00'),
('state010', 'State Exams', '0', '0', '0', '0', '1', '2013-09-05 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `categorytags`
--

CREATE TABLE IF NOT EXISTS `categorytags` (
  `CategoryId` varchar(255) NOT NULL,
  `TagId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorytags`
--

INSERT INTO `categorytags` (`CategoryId`, `TagId`) VALUES
('ms007', 'GEBL3'),
('ms007', 'GDLGX'),
('ms007', '2I86U');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Comment` text NOT NULL,
  `CUserId` varchar(10) NOT NULL,
  `QuestionId` varchar(10) NOT NULL,
  `Date` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`Id`, `Comment`, `CUserId`, `QuestionId`, `Date`) VALUES
(1, 'San jose state university...:)', '6W90UQHJJ', 'M8EYT2KGQ', '2013-09-05 08:08:53');

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE IF NOT EXISTS `favourites` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(10) NOT NULL,
  `QuestionId` varchar(10) NOT NULL,
  `Date` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `grouptags`
--

CREATE TABLE IF NOT EXISTS `grouptags` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(10) NOT NULL,
  `GroupId` varchar(10) NOT NULL,
  `Date` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE IF NOT EXISTS `likes` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `QuestionId` varchar(10) NOT NULL,
  `LUserId` varchar(10) NOT NULL,
  `Date` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`Id`, `QuestionId`, `LUserId`, `Date`) VALUES
(1, 'M8EYT2KGQ', '6W90UQHJJ', '2013-09-05 08:08:36'),
(2, 'M8EYT2KGQ', '6W90UQHJJ', '2013-09-05 08:08:37'),
(3, 'MVPOGAXWW', '6W90UQHJJ', '2013-09-05 08:10:46'),
(4, 'MVPOGAXWW', '6W90UQHJJ', '2013-09-05 08:10:46');

-- --------------------------------------------------------

--
-- Table structure for table `md5encrypts`
--

CREATE TABLE IF NOT EXISTS `md5encrypts` (
  `UserId` varchar(255) NOT NULL,
  `Text` varchar(255) NOT NULL,
  `md5Value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `md5encrypts`
--

INSERT INTO `md5encrypts` (`UserId`, `Text`, `md5Value`) VALUES
('6W90UQHJJ', 'heyhii', '511372d74a35e9bc3d2b382ff42abd0f'),
('WZZ4EC0WN', 'heyhii', '511372d74a35e9bc3d2b382ff42abd0f');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `QuestionId` varchar(20) NOT NULL,
  `CategoryId` varchar(10) NOT NULL,
  `UserID` varchar(10) NOT NULL,
  `Title` text NOT NULL,
  `Description` text NOT NULL,
  `Tags` text NOT NULL,
  `Answers` varchar(5) NOT NULL,
  `Views` varchar(5) NOT NULL,
  `Likes` varchar(5) NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`QuestionId`, `CategoryId`, `UserID`, `Title`, `Description`, `Tags`, `Answers`, `Views`, `Likes`, `Date`) VALUES
('MVPOGAXWW', 'ms007', '6W90UQHJJ', 'Evaluate My Profile For MS CS-Fall 2014, GRE 307 (Q :162, V:145), 8.34 CPI, GTU ', 'Please Evaluate My Profile<br>\n<br>\nGRE/TOEFL:<br>\n<br>\nGRE - 307 (Quant : 162,Verbal :145, AWA: (3.0 expecting)) (Just given by 2nd september)<br>\nTOEFL - Yet To Give<br>\n<br>\nMy Academics:<br>\n<br>\nSemester Wise Result(out of 10CPI):<br>\nSEM-1 : 8.27<br>\nSEM-2 : 9.03<br>\nSEM-3 : 8.00<br>\nSEM-4 : 8.03<br>\nSEM-5 : 8.37<br>\nSEM-6 : 8.33<br>\n<br>\n- I am the RANKER of BE-Computer Science Department of GEC-Patan (right from the 1st SEM) affiliated with GTU.<br>\n- Strong Bond with the college professors &amp; HOD (LOR will be decent).<br>\n- I was felicitated by Dewang Mehta IT Award for being ranker in year 2012.<br>\n<br>\nProjects/Internship:<br>\n<br>\n- Accomplished live project on Advance JAVA(Advance E-Learning) &amp; \nanother on .NET(Railway Ticket Reservation System) at RADIX Solutions \nduring my 4 month summer internship in 2012.<br>\n- Almost going to complete 4 month summer internship (June-July-August-Sept 2013) at TOPS TECHNOLOGY Pvt. Ltd.<br>\n- Android Certified Programmer by TOPS TECHNOLOGIES.<br>\n- I am developing "Personal Safety Monitoring Application on Android Smartphones" as a part of my final year project.<br>\n- I have developed SUDOKU game for Android Smartphones.<br>\n- I have also developed Chat Application &amp; Route Finder Application for android smartphones.<br>\n- Solid background for website developing.<br>\n- Great command over OO languages such as c++,JAVA,Advance JAVA.<br>\n<br>\nExtra-Activities:<br>\n<br>\n- I was the PRESIDENT of state level TECHFEST-2013 event that is organized by our college this year.<br>\n- Active member of each CULFEST event that is annually performed by our college.<br>\n<br>\nNote On Research Paper:<br>\n<br>\n- Not published any research paper but have a good survey on NP-P \nCompleteness, read lots of papers on this problem &amp; definitely on \nlong run it might helpful to publish any paper in future.<br>\n<br>\nAbove mention details are very brief but It might help you to judge me.<br>\n<br>\n"HAVING SUCH ACADEMIC PROFILE &amp; GRE SCORE OF 307(Q:162,V:145) PLEASE\n SUGGEST ME SAFE-MODERATE-AMBITIOUS UNIVERSITIES BASED ON MY LIST &amp; \nSUGGEST ME ANY OTHER UNIVERSITIES THAT I SHOULD INCLUDE ACCORDING TO MY \nPROFILE"<br>\n<br>\nUniversity List :<br>\n<br>\nUniversity Of California, Davis (UCD)<br>\nUniversity Of California, Irvine (UCI)<br>\nUniversity of Southern California (USC)<br>\nUniversity Of Illinois - Chicago (UIC)<br>\nSUNY - Buffalo<br>\nSUNY - Stony Brook<br>\nIndiana University at Bloomington (IUB)<br>\nNorth Carolina State University (NCSU)<br>\nUniversity of Texasâ€“Dallas (UTD)<br>\nSan Jose State University (SJSU)<br>\nUniversity of Pennsylvania (UPenn)\n						', '3', '0', '4', '2', '2013-09-05 07:56:38'),
('M8EYT2KGQ', 'ms007', '6W90UQHJJ', 'Evaluate My Profile For MS CS-Fall 2014, GRE 307 (Q :162, V:145), 8.34 CPI, GTU ', 'Please Evaluate My Profile<br>\n<br>\nGRE/TOEFL:<br>\n<br>\nGRE - 307 (Quant : 162,Verbal :145, AWA: (3.0 expecting)) (Just given by 2nd september)<br>\nTOEFL - Yet To Give<br>\n<br>\nMy Academics:<br>\n<br>\nSemester Wise Result(out of 10CPI):<br>\nSEM-1 : 8.27<br>\nSEM-2 : 9.03<br>\nSEM-3 : 8.00<br>\nSEM-4 : 8.03<br>\nSEM-5 : 8.37<br>\nSEM-6 : 8.33<br>\n<br>\n- I am the RANKER of BE-Computer Science Department of GEC-Patan (right from the 1st SEM) affiliated with GTU.<br>\n- Strong Bond with the college professors &amp; HOD (LOR will be decent).<br>\n- I was felicitated by Dewang Mehta IT Award for being ranker in year 2012.<br>\n<br>\nProjects/Internship:<br>\n<br>\n- Accomplished live project on Advance JAVA(Advance E-Learning) &amp; \nanother on .NET(Railway Ticket Reservation System) at RADIX Solutions \nduring my 4 month summer internship in 2012.<br>\n- Almost going to complete 4 month summer internship (June-July-August-Sept 2013) at TOPS TECHNOLOGY Pvt. Ltd.<br>\n- Android Certified Programmer by TOPS TECHNOLOGIES.<br>\n- I am developing "Personal Safety Monitoring Application on Android Smartphones" as a part of my final year project.<br>\n- I have developed SUDOKU game for Android Smartphones.<br>\n- I have also developed Chat Application &amp; Route Finder Application for android smartphones.<br>\n- Solid background for website developing.<br>\n- Great command over OO languages such as c++,JAVA,Advance JAVA.<br>\n<br>\nExtra-Activities:<br>\n<br>\n- I was the PRESIDENT of state level TECHFEST-2013 event that is organized by our college this year.<br>\n- Active member of each CULFEST event that is annually performed by our college.<br>\n<br>\nNote On Research Paper:<br>\n<br>\n- Not published any research paper but have a good survey on NP-P \nCompleteness, read lots of papers on this problem &amp; definitely on \nlong run it might helpful to publish any paper in future.<br>\n<br>\nAbove mention details are very brief but It might help you to judge me.<br>\n<br>\n"HAVING SUCH ACADEMIC PROFILE &amp; GRE SCORE OF 307(Q:162,V:145) PLEASE\n SUGGEST ME SAFE-MODERATE-AMBITIOUS UNIVERSITIES BASED ON MY LIST &amp; \nSUGGEST ME ANY OTHER UNIVERSITIES THAT I SHOULD INCLUDE ACCORDING TO MY \nPROFILE"<br>\n<br>\nUniversity List :<br>\n<br>\nUniversity Of California, Davis (UCD)<br>\nUniversity Of California, Irvine (UCI)<br>\nUniversity of Southern California (USC)<br>\nUniversity Of Illinois - Chicago (UIC)<br>\nSUNY - Buffalo<br>\nSUNY - Stony Brook<br>\nIndiana University at Bloomington (IUB)<br>\nNorth Carolina State University (NCSU)<br>\nUniversity of Texasâ€“Dallas (UTD)<br>\nSan Jose State University (SJSU)<br>\nUniversity of Pennsylvania (UPenn)\n						', '3', '0', '3', '2', '2013-09-05 07:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `questiontags`
--

CREATE TABLE IF NOT EXISTS `questiontags` (
  `QuestionId` varchar(10) NOT NULL,
  `TagId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questiontags`
--

INSERT INTO `questiontags` (`QuestionId`, `TagId`) VALUES
('MVPOGAXWW', 'GEBL3'),
('MVPOGAXWW', 'GDLGX'),
('MVPOGAXWW', '2I86U');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `TagId` varchar(10) NOT NULL,
  `TagName` varchar(255) NOT NULL,
  `Questions` varchar(10) NOT NULL,
  `Users` varchar(10) NOT NULL,
  `Views` varchar(10) NOT NULL,
  `Status` enum('0','1') NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`TagId`, `TagName`, `Questions`, `Users`, `Views`, `Status`, `Date`) VALUES
('GEBL3', 'cse', '2', '1', '2', '1', '2013-09-05 07:56:36'),
('GDLGX', 'profile', '2', '1', '4', '1', '2013-09-05 07:56:37'),
('2I86U', 'evaluation', '2', '1', '2', '1', '2013-09-05 07:56:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `UserId` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `EmailId` varchar(255) NOT NULL,
  `Password` text NOT NULL,
  `Questions` varchar(5) NOT NULL,
  `Answers` varchar(10) NOT NULL,
  `Points` varchar(5) NOT NULL,
  `Tags` varchar(10) NOT NULL,
  `Activation` enum('0','1') NOT NULL,
  `Status` enum('0','1') NOT NULL,
  `LastLogin` datetime NOT NULL,
  `LastLogout` datetime NOT NULL,
  `Notifications` varchar(3) NOT NULL,
  `Date` datetime NOT NULL,
  `City` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Questions`, `Answers`, `Points`, `Tags`, `Activation`, `Status`, `LastLogin`, `LastLogout`, `Notifications`, `Date`, `City`, `Country`) VALUES
('6W90UQHJJ', 'Ramesh', 'Surapathi', 'ramesh.surapathi@gmail.com', '511372d74a35e9bc3d2b382ff42abd0f', '2', '0', '141', '3', '1', '1', '2013-09-05 07:50:27', '2013-09-05 08:11:32', '0', '2013-09-05 07:49:14', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `usertags`
--

CREATE TABLE IF NOT EXISTS `usertags` (
  `UserId` varchar(255) NOT NULL,
  `TagId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertags`
--

INSERT INTO `usertags` (`UserId`, `TagId`) VALUES
('6W90UQHJJ', 'GEBL3'),
('6W90UQHJJ', 'GDLGX'),
('6W90UQHJJ', '2I86U');

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE IF NOT EXISTS `usertype` (
  `UserName` varchar(255) NOT NULL,
  `UserCode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`UserName`, `UserCode`) VALUES
('Champs Cadet Officer ', '100');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
