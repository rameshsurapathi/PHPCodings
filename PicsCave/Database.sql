-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 06, 2013 at 01:18 AM
-- Server version: 5.1.70-cll
-- PHP Version: 5.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `picscave_picscavedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(10) NOT NULL,
  `AlbumId` varchar(6) NOT NULL,
  `AlbumName` varchar(255) NOT NULL,
  `AlbumDescription` text NOT NULL,
  `AlbumLocation` varchar(255) NOT NULL,
  `AlbumTime` varchar(255) NOT NULL,
  `Date` datetime NOT NULL,
  `Count` int(4) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `AlbumName` (`AlbumName`),
  UNIQUE KEY `AlbumId` (`AlbumId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`Id`, `UserId`, `AlbumId`, `AlbumName`, `AlbumDescription`, `AlbumLocation`, `AlbumTime`, `Date`, `Count`) VALUES
(1, 'FJL66H9RL', '54051', 'Artistic', '', '', '', '2013-07-13 17:21:26', 4);

-- --------------------------------------------------------

--
-- Table structure for table `fbalbums`
--

CREATE TABLE IF NOT EXISTS `fbalbums` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(10) NOT NULL,
  `AlbumId` varchar(6) NOT NULL,
  `AlbumName` varchar(255) NOT NULL,
  `AlbumDescription` text NOT NULL,
  `AlbumLocation` varchar(255) NOT NULL,
  `AlbumTime` varchar(255) NOT NULL,
  `Date` datetime NOT NULL,
  `Count` int(4) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `AlbumId` (`AlbumId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `fbalbums`
--

INSERT INTO `fbalbums` (`Id`, `UserId`, `AlbumId`, `AlbumName`, `AlbumDescription`, `AlbumLocation`, `AlbumTime`, `Date`, `Count`) VALUES
(1, 'FJL66H9RL', '51946', 'Timeline Photos', 'NULL', 'NULL', '2013-01-06T19:15:07+0000', '2013-07-11 16:25:46', 3),
(2, 'FJL66H9RL', '31932', '20th July, 2012', 'NULL', 'NULL', '2012-11-25T12:40:32+0000', '2013-07-11 16:25:49', 13),
(3, 'FJL66H9RL', '79617', 'Cover Photos', 'NULL', 'NULL', '2012-02-21T18:56:22+0000', '2013-07-19 01:31:07', 4),
(4, 'FJL66H9RL', '51183', 'Untitled Album', 'Safari !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 'NULL', '2013-04-03T09:33:32+0000', '2013-07-19 01:31:20', 3);

-- --------------------------------------------------------

--
-- Table structure for table `fbphotos`
--

CREATE TABLE IF NOT EXISTS `fbphotos` (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `AlbumId` varchar(6) NOT NULL,
  `AlbumName` varchar(255) NOT NULL,
  `PhotoId` varchar(20) NOT NULL,
  `PhotoMessage` text NOT NULL,
  `Date` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `PhotoId` (`PhotoId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `fbphotos`
--

INSERT INTO `fbphotos` (`Id`, `AlbumId`, `AlbumName`, `PhotoId`, `PhotoMessage`, `Date`) VALUES
(1, '51946', 'Timeline Photos', 'XHJU4I7UJAJPC4X.jpg', '', '2013-07-11 16:25:49'),
(2, '31932', '20th July, 2012', '2Y4NTH8XEML2UUM.jpg', '', '2013-07-11 16:25:52'),
(3, '31932', '20th July, 2012', 'O3J9CJISLCFYICC.jpg', '', '2013-07-11 16:25:54'),
(4, '31932', '20th July, 2012', 'Q51KIKSG7WTIPE3.jpg', '', '2013-07-11 16:25:56'),
(5, '31932', '20th July, 2012', '1TWBSZL1HX3NLCP.jpg', '', '2013-07-11 16:25:58'),
(6, '31932', '20th July, 2012', 'NSKE3TOL0M8JVNO.jpg', '', '2013-07-11 16:26:01'),
(7, '31932', '20th July, 2012', 'OF7BGP1RG8EALQD.jpg', '', '2013-07-11 16:26:04'),
(8, '31932', '20th July, 2012', '14VC9PVO0L0ZVMD.jpg', '', '2013-07-11 16:26:07'),
(9, '31932', '20th July, 2012', 'CHIF8T6V324T3BP.jpg', 'At vizag beach on 20th july,2012.', '2013-07-13 16:46:25'),
(10, '79617', 'Cover Photos', 'NUVZD0G6E2HZ02D.jpg', '', '2013-07-19 01:31:11'),
(11, '79617', 'Cover Photos', '69FWAE80772Y5P2.jpg', '', '2013-07-19 01:31:14'),
(12, '79617', 'Cover Photos', 'W2MHSQ8YMDRU2HN.jpg', '', '2013-07-19 01:31:17'),
(13, '79617', 'Cover Photos', '5DMB0NFZDDW61RM.jpg', '', '2013-07-19 01:31:20'),
(14, '51183', 'Untitled Album', 'XMJMZN3KFAXBEAC.jpg', '', '2013-07-19 01:31:24'),
(15, '51183', 'Untitled Album', '5NIURLHODZ1W36T.jpg', '', '2013-07-19 01:31:27'),
(16, '51183', 'Untitled Album', 'EU5O6V1Z570T94T.jpg', '', '2013-07-19 01:31:30'),
(17, '51946', 'Timeline Photos', 'ZARFPZ7HSH34BED.jpg', 'Thanks for the birthday wishes.Thanks a lot...:)', '2013-07-21 20:59:32'),
(18, '51946', 'Timeline Photos', 'WT90C36TTKB4HTO.jpg', 'Thanks for the birthday wishes.Thanks a lot...:)', '2013-07-21 20:59:32'),
(19, '31932', '20th July, 2012', 'ICJZCAB1CCPHHQU.jpg', '', '2013-07-27 02:14:53'),
(20, '31932', '20th July, 2012', '98HKJVW6ZJ4D4NK.jpg', '', '2013-07-27 02:14:53'),
(21, '31932', '20th July, 2012', 'DVNMLQMNIOPXWXD.jpg', '', '2013-07-27 02:14:53'),
(22, '31932', '20th July, 2012', 'GXBN7L9UHY3C1XP.jpg', '', '2013-07-27 02:14:54'),
(23, '31932', '20th July, 2012', 'C1BQDN6P0E4G2Q4.jpg', '', '2013-07-27 02:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE IF NOT EXISTS `feedbacks` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Feedback` text NOT NULL,
  `Date` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`Id`, `Name`, `Email`, `Feedback`, `Date`) VALUES
(1, 'Ramesh kumar', 'ramesh.surapathi@gmail.com', 'Try to make more improvements', '2013-03-23 05:22:47'),
(2, 'Ramesh', 'ramesh.surapathi@gmail.com', 'Good Going..:)', '2013-07-07 02:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `md5passwords`
--

CREATE TABLE IF NOT EXISTS `md5passwords` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(10) NOT NULL,
  `md5Value` varchar(255) NOT NULL,
  `Text` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserId` (`UserId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `md5passwords`
--

INSERT INTO `md5passwords` (`Id`, `UserId`, `md5Value`, `Text`) VALUES
(1, '46BUDL4Q1', '061090d541cb18eb154ce3c8b1f75607', 'honeybeesa82'),
(2, '7U5SRDIT6', '477f17b09c14b4992f97073ca64cf0c9', 'honeybeesa328'),
(3, 'FJL66H9RL', '511372d74a35e9bc3d2b382ff42abd0f', 'heyhii');

-- --------------------------------------------------------

--
-- Table structure for table `md5secrettexts`
--

CREATE TABLE IF NOT EXISTS `md5secrettexts` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(10) NOT NULL,
  `md5Value` varchar(255) NOT NULL,
  `Text` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserId` (`UserId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `md5secrettexts`
--

INSERT INTO `md5secrettexts` (`Id`, `UserId`, `md5Value`, `Text`) VALUES
(1, 'FJL66H9RL', 'ac2daa8a7b3382e5292f5697636cff92', 'picscaveonitsway');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `AlbumId` varchar(6) NOT NULL,
  `AlbumName` varchar(255) NOT NULL,
  `PhotoId` varchar(20) NOT NULL,
  `PhotoMessage` text NOT NULL,
  `Date` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `PhotoId` (`PhotoId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`Id`, `AlbumId`, `AlbumName`, `PhotoId`, `PhotoMessage`, `Date`) VALUES
(12, '7', 'Artistic', '2IQIZC489D4PSMD.jpg', '', '2013-03-27 23:52:13'),
(13, '3', 'Artistic', 'P2RYYX72WINA0XA.jpg', '', '2013-03-30 19:05:47'),
(15, '4', 'Artistic', '8MRGT7553CCCNTO.jpg', '', '2013-03-30 19:15:54'),
(16, '5', 'Artistic', 'IZN2HMHX5GUMJNK.jpg', '', '2013-03-30 19:17:08'),
(17, '1', 'Artistic', 'CDAEFXRQM32PPD3.jpg', '', '2013-07-13 17:21:27'),
(18, '54051', 'Artistic', 'VHADE1LCZ6V71UV.jpg', '', '2013-07-13 17:43:33'),
(20, '54051', 'Artistic', 'YIRFMWJ046A5FFL.jpg', '', '2013-07-17 18:23:22'),
(21, '54051', 'Artistic', 'BZK2E44HBRLVTWG.jpg', '', '2013-07-17 22:55:02'),
(25, '54051', 'Artistic', '8J6C1188QTRN777.jpg', 'My Parents at Multnomah Falls,Oregon,USA', '2013-07-19 00:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `textwatermark`
--

CREATE TABLE IF NOT EXISTS `textwatermark` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(10) NOT NULL,
  `SecretText` varchar(255) NOT NULL,
  `Date` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserId` (`UserId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `textwatermark`
--

INSERT INTO `textwatermark` (`Id`, `UserId`, `SecretText`, `Date`) VALUES
(1, 'FJL66H9RL', 'ac2daa8a7b3382e5292f5697636cff92', '2013-07-12 00:20:08');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(10) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DateofBirth` char(100) NOT NULL,
  `Activation` enum('0','1') NOT NULL DEFAULT '0',
  `Status` enum('0','1') NOT NULL DEFAULT '0',
  `Date` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `UserId` (`UserId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `UserId`, `FirstName`, `LastName`, `Email`, `Password`, `Gender`, `DateofBirth`, `Activation`, `Status`, `Date`) VALUES
(1, '46BUDL4Q1', 'aruna', 'kumari', 'sarunakumari@gmail.com', '061090d541cb18eb154ce3c8b1f75607', 'female', 'December 9,1982', '0', '1', '2013-07-09 12:07:56'),
(2, 'FJL66H9RL', 'Ramesh', 'Surapathi', 'ramesh.surapathi@gmail.com', '511372d74a35e9bc3d2b382ff42abd0f', 'male', 'July 20,1987', '1', '1', '2013-07-11 15:56:52');

-- --------------------------------------------------------

--
-- Table structure for table `watermarklogs`
--

CREATE TABLE IF NOT EXISTS `watermarklogs` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `PhotoId` varchar(255) NOT NULL,
  `VisibleText` text NOT NULL,
  `InvisibleText` varchar(10) NOT NULL,
  `Xkey` int(3) NOT NULL,
  `Ykey` int(3) NOT NULL,
  `Time` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `watermarklogs`
--

INSERT INTO `watermarklogs` (`Id`, `PhotoId`, `VisibleText`, `InvisibleText`, `Xkey`, `Ykey`, `Time`) VALUES
(3, 'CDAEFXRQM32PPD3.jpg', 'aa8a7b3382', '2daa8a7b', 95, 92, '2013-07-13 17:25:39'),
(7, '8J6C1188QTRN777.jpg', 'My Parents at Multnomah Water Falls,Oregon,USA', '2daa8a7b', 21, 33, '2013-07-19 00:11:30'),
(8, 'ZARFPZ7HSH34BED.jpg', '20th July,2013.', '2daa8a7b', 87, 23, '2013-07-21 21:02:43'),
(9, 'ICJZCAB1CCPHHQU.jpg', 'Ramesh Kumar Surapathi', '2daa8a7b', 70, 45, '2013-07-27 06:46:35');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
