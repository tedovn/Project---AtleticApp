-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2014 at 05:17 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `phpappdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `alcoholic beverages`
--

CREATE TABLE IF NOT EXISTS `alcoholic beverages` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `calories_id` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `consumed_drinks`
--

CREATE TABLE IF NOT EXISTS `consumed_drinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alcoholic_beverages` int(11) NOT NULL,
  `soft_drinks` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `consumed_foods`
--

CREATE TABLE IF NOT EXISTS `consumed_foods` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `cons_fruits` int(11) DEFAULT NULL,
  `cons_vegetables` int(11) DEFAULT NULL,
  `cons_meats` int(11) DEFAULT NULL,
  `cons_desserts` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `food_dessert`
--

CREATE TABLE IF NOT EXISTS `food_dessert` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `calories_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `food_fruits`
--

CREATE TABLE IF NOT EXISTS `food_fruits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  `calories_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `food_meats`
--

CREATE TABLE IF NOT EXISTS `food_meats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `calories_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `food_vegetables`
--

CREATE TABLE IF NOT EXISTS `food_vegetables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `food_vegetables` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `info_recev_cons_calories`
--

CREATE TABLE IF NOT EXISTS `info_recev_cons_calories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `daily_calories` int(11) DEFAULT NULL,
  `daily_activities` int(11) DEFAULT NULL,
  `daily_result` int(11) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `weekly_result` int(11) DEFAULT NULL,
  `monthly_result` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `soft_drinks`
--

CREATE TABLE IF NOT EXISTS `soft_drinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `calories_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
