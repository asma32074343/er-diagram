-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 08, 2018 at 11:16 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `departement`
--

CREATE TABLE `departement` (
  `iddep` int(11) NOT NULL,
  `name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `departement`
--

INSERT INTO `departement` (`iddep`, `name`) VALUES
(1, 'cardiology'),
(2, 'immunology');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `iddoc` int(11) NOT NULL,
  `name` text NOT NULL,
  `year of practise` int(11) NOT NULL,
  `Departement_iddep` int(11) NOT NULL,
  `prescreption_id pre` int(11) NOT NULL,
  `Patients_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`iddoc`, `name`, `year of practise`, `Departement_iddep`, `prescreption_id pre`, `Patients_id`) VALUES
(10, 'younes', 10, 1, 1000, 101),
(102, 'abdelhadi', 20, 2, 2000, 101);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `name` text,
  `age` int(11) NOT NULL,
  `illnes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `age`, `illnes`) VALUES
(101, 'mohamed', 60, 'xxxx'),
(102, 'noor', 40, 'YYYYY');

-- --------------------------------------------------------

--
-- Table structure for table `prescreption`
--

CREATE TABLE `prescreption` (
  `id pre` int(11) NOT NULL,
  `medecament` text NOT NULL,
  `date issued` date NOT NULL,
  `Patients_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prescreption`
--

INSERT INTO `prescreption` (`id pre`, `medecament`, `date issued`, `Patients_id`) VALUES
(1000, 'aaaaa', '2018-02-12', 101),
(2000, 'iiiii', '2014-03-06', 102);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`iddep`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`iddoc`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescreption`
--
ALTER TABLE `prescreption`
  ADD PRIMARY KEY (`id pre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
