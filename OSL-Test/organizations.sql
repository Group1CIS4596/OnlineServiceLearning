-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 21, 2013 at 02:45 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `osl`
--

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE IF NOT EXISTS `organizations` (
  `orgID` int(5) NOT NULL,
  `orgName` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city1` varchar(25) DEFAULT NULL,
  `state1` varchar(2) DEFAULT NULL,
  `zip1` int(5) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `svcLocation` varchar(25) DEFAULT NULL,
  `city2` varchar(25) DEFAULT NULL,
  `state2` varchar(2) DEFAULT NULL,
  `zip2` int(5) DEFAULT NULL,
  `orgOverview` text,
  `logistics` text,
  `insurance` char(1) DEFAULT NULL,
  `procTime` varchar(250) DEFAULT NULL,
  `details1` text,
  `availability` datetime DEFAULT NULL,
  `background` char(1) DEFAULT NULL,
  `details2` text,
  `drugTest` char(1) DEFAULT NULL,
  `other` text,
  `comments` text,
  PRIMARY KEY (`orgID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `organizations`
--
ALTER TABLE `organizations`
  ADD CONSTRAINT `organizations_ibfk_1` FOREIGN KEY (`orgID`) REFERENCES `contacts` (`nameID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
