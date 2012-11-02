-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2012 at 06:57 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cosc_410_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `Course Name` varchar(128) NOT NULL,
  PRIMARY KEY (`Course Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE IF NOT EXISTS `enrollment` (
  `email` varchar(256) NOT NULL,
  `Course Name` varchar(128) NOT NULL,
  PRIMARY KEY (`email`,`Course Name`),
  KEY `Course Name` (`Course Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE IF NOT EXISTS `lesson` (
  `Lesson Number` int(11) NOT NULL,
  `Lesson Name` varchar(128) NOT NULL,
  PRIMARY KEY (`Lesson Number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lessons in a course`
--

CREATE TABLE IF NOT EXISTS `lessons in a course` (
  `Course Name` varchar(128) NOT NULL,
  `Lesson Number` int(11) NOT NULL,
  PRIMARY KEY (`Course Name`,`Lesson Number`),
  KEY `Lesson Number` (`Lesson Number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `email` varchar(256) NOT NULL,
  `name` varchar(128) NOT NULL,
  `school` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user lesson end date`
--

CREATE TABLE IF NOT EXISTS `user lesson end date` (
  `email` varchar(256) NOT NULL,
  `Lesson Number` int(11) NOT NULL,
  `Type` varchar(8) NOT NULL,
  `End Date` date NOT NULL,
  PRIMARY KEY (`email`,`Lesson Number`,`Type`),
  KEY `Lesson Number` (`Lesson Number`),
  KEY `Type` (`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user lesson start date`
--

CREATE TABLE IF NOT EXISTS `user lesson start date` (
  `email` varchar(256) NOT NULL,
  `Lesson Number` int(11) NOT NULL,
  `Type` varchar(8) NOT NULL,
  `Start Date` date NOT NULL,
  PRIMARY KEY (`email`,`Lesson Number`,`Type`),
  KEY `Lesson Number` (`Lesson Number`),
  KEY `Type` (`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`Course Name`) REFERENCES `course` (`Course Name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lessons in a course`
--
ALTER TABLE `lessons in a course`
  ADD CONSTRAINT `lessons@0020in@0020a@0020course_ibfk_2` FOREIGN KEY (`Lesson Number`) REFERENCES `lesson` (`Lesson Number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lessons@0020in@0020a@0020course_ibfk_1` FOREIGN KEY (`Course Name`) REFERENCES `course` (`Course Name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user lesson end date`
--
ALTER TABLE `user lesson end date`
  ADD CONSTRAINT `user@0020lesson@0020end@0020date_ibfk_3` FOREIGN KEY (`Type`) REFERENCES `user lesson start date` (`Type`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user@0020lesson@0020end@0020date_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user lesson start date` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user@0020lesson@0020end@0020date_ibfk_2` FOREIGN KEY (`Lesson Number`) REFERENCES `user lesson start date` (`Lesson Number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user lesson start date`
--
ALTER TABLE `user lesson start date`
  ADD CONSTRAINT `user@0020lesson@0020start@0020date_ibfk_2` FOREIGN KEY (`Lesson Number`) REFERENCES `lesson` (`Lesson Number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user@0020lesson@0020start@0020date_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;