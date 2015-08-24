-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 09, 2014 at 01:35 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hybrid_car`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `loginid` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `Security_Question` varchar(25) NOT NULL,
  `Answer` varchar(15) NOT NULL,
  PRIMARY KEY (`loginid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`loginid`, `password`, `Security_Question`, `Answer`) VALUES
('admin', 'admin', 'Color', 'orange');

-- --------------------------------------------------------

--
-- Table structure for table `car_images`
--

CREATE TABLE IF NOT EXISTS `car_images` (
  `Sr_No` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(15) NOT NULL,
  `car_type` varchar(15) NOT NULL,
  `car_comp_name` varchar(20) NOT NULL,
  PRIMARY KEY (`Sr_No`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `car_images`
--

INSERT INTO `car_images` (`Sr_No`, `image`, `car_type`, `car_comp_name`) VALUES
(1, '01.jpg', '123', 'Audi'),
(2, '02.jpg', 'Audi', 'Audi');

-- --------------------------------------------------------

--
-- Table structure for table `car_info`
--

CREATE TABLE IF NOT EXISTS `car_info` (
  `Car_Model_no` varchar(15) NOT NULL,
  `type` varchar(15) NOT NULL,
  `Car_company_Name` varchar(15) NOT NULL,
  `cost` int(11) NOT NULL,
  `country` varchar(15) NOT NULL,
  `Sr_No` int(11) NOT NULL AUTO_INCREMENT,
  `Status` varchar(15) NOT NULL,
  PRIMARY KEY (`Sr_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `car_info`
--


-- --------------------------------------------------------

--
-- Table structure for table `car_videos`
--

CREATE TABLE IF NOT EXISTS `car_videos` (
  `Sr_No` int(11) NOT NULL,
  `path` varchar(15) NOT NULL,
  `car_type` varchar(15) NOT NULL,
  `car_comp_name` varchar(20) NOT NULL,
  PRIMARY KEY (`Sr_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_videos`
--


-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `Sr_No` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `comment` varchar(100) NOT NULL,
  PRIMARY KEY (`Sr_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `feedback`
--


-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE IF NOT EXISTS `forum` (
  `Sr_No` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `comment` varchar(200) NOT NULL,
  PRIMARY KEY (`Sr_No`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `forum`
--

INSERT INTO `forum` (`Sr_No`, `name`, `comment`) VALUES
(1, 'vishnu', 'how r u?'),
(2, 'null', 'null'),
(3, 'null', 'null'),
(4, 'null', 'sdfasdfsfdsfdsf'),
(5, 'Vishnu Suryakant Katpure', 'HI\r\n'),
(6, 'Vishnu Suryakant Katpure', 'Kasa ahes?');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `Sr_No` int(11) NOT NULL AUTO_INCREMENT,
  `Date` varchar(50) NOT NULL,
  `Notification_comment` varchar(50) NOT NULL,
  PRIMARY KEY (`Sr_No`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`Sr_No`, `Date`, `Notification_comment`) VALUES
(8, 'Fri Feb 07 08:09:15 PST 2014', 'Hello'),
(9, 'Sat Feb 08 09:53:27 PST 2014', 'Vishnu Katpure');

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_car`
--

CREATE TABLE IF NOT EXISTS `upcoming_car` (
  `Sr_No` int(11) NOT NULL AUTO_INCREMENT,
  `car_company_name` varchar(15) NOT NULL,
  `model` varchar(15) NOT NULL,
  `launch_date` varchar(30) NOT NULL,
  `cost` int(11) NOT NULL,
  PRIMARY KEY (`Sr_No`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `upcoming_car`
--

INSERT INTO `upcoming_car` (`Sr_No`, `car_company_name`, `model`, `launch_date`, `cost`) VALUES
(1, 'Bmw', 'bmw 123', '22/2/2014', 5595959);

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE IF NOT EXISTS `visitor` (
  `vname` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `mobil` varchar(12) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`vname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`vname`, `email`, `mobil`, `address`, `password`) VALUES
('Vishnu Suryakant Katpure', 'katpurev@gmail.com', '919767907727', 'latur', 'aaa');
