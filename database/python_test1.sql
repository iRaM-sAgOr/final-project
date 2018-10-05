-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2018 at 01:37 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `python_test1`
--

-- --------------------------------------------------------

--
-- Table structure for table `email_data`
--

CREATE TABLE `email_data` (
  `mail_id` int(11) NOT NULL,
  `From` varchar(100) NOT NULL,
  `To` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `check` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_data`
--

INSERT INTO `email_data` (`mail_id`, `From`, `To`, `body`, `check`) VALUES
(12, 'sagoreee', 'fahim', 'do you need conspiracy', 1),
(13, 'sagor', 'fahim', 'conspiracy is important', 1),
(31, 'Sagor', 'fa@d', 'Hi how are you', 1),
(34, 'Sagor', 'fa@d', 'asdfa', 1),
(35, 'Sagor', 'siyam@gmail.com', 'conspiracy i want to make some conspiracy related work', 1),
(36, 'Sagor', 'sagor@g', 'conspiracy is a bad thing ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `result_data`
--

CREATE TABLE `result_data` (
  `mail_id` int(20) NOT NULL,
  `From` varchar(1000) NOT NULL,
  `To` varchar(1000) NOT NULL,
  `body` text NOT NULL,
  `verdict` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result_data`
--

INSERT INTO `result_data` (`mail_id`, `From`, `To`, `body`, `verdict`) VALUES
(13, 'sagor', 'fahim', 'conspiracy is important', 'infected'),
(35, 'Sagor', 'siyam@gmail.com', 'conspiracy i want to make some conspiracy related work', 'infected'),
(36, 'Sagor', 'sagor@g', 'conspiracy is a bad thing ', 'infected');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `email_data`
--
ALTER TABLE `email_data`
  ADD PRIMARY KEY (`mail_id`);

--
-- Indexes for table `result_data`
--
ALTER TABLE `result_data`
  ADD PRIMARY KEY (`mail_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `email_data`
--
ALTER TABLE `email_data`
  MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
