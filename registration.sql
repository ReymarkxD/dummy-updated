-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2019 at 02:44 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userId` int(12) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `password2` varchar(32) NOT NULL,
  `uFirst_name` text NOT NULL,
  `uLast_name` text NOT NULL,
  `uEmail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userId`, `username`, `password`, `password2`, `uFirst_name`, `uLast_name`, `uEmail`) VALUES
(1, 'admin', 'jande', 'jande', 'assds', 'sdsdsdsd', 'ad'),
(2, 'admin', 'admin', 'admin', 'sad', 'asd', '@'),
(3, 'jande', '123', '123', 'Juan', 'Fajardo', 'uEmail'),
(4, 'dasdsa', 'dasdsa', 'dadsa1312', 'test', 'das', 'uEmail'),
(5, 'test', '123', '123', 'data', 'test', 'uEmail'),
(6, 'another', '123', '123', 'ther', 'ano', '1@g.com'),
(7, 'qwee', '123', '123', 'poiut', 'asd', 'ja@gm.com');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stud_id` int(11) NOT NULL,
  `stud_firstname` text NOT NULL,
  `stud_lastname` text NOT NULL,
  `stud_birth` date NOT NULL,
  `stud_gender` char(6) DEFAULT NULL,
  `stud_email` varchar(50) NOT NULL,
  `stud_password` varchar(32) NOT NULL,
  `stud_password2` varchar(32) NOT NULL,
  `stud_contact` int(13) NOT NULL,
  `stud_address` varchar(255) NOT NULL,
  `stud_course` text NOT NULL,
  `stud_year` int(11) NOT NULL,
  `stud_image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stud_id`, `stud_firstname`, `stud_lastname`, `stud_birth`, `stud_gender`, `stud_email`, `stud_password`, `stud_password2`, `stud_contact`, `stud_address`, `stud_course`, `stud_year`, `stud_image`) VALUES
(12, 'asd', 'asd', '1955-02-02', 'Male', 'jan@t.com', '', '', 912345678, '#20 don renato st. holy spirit', 'BSIT', 4, ''),
(13, 'Nine', 'Grock', '2019-05-01', 'Female', 'bugs@g.com', '', '', 912345678, '#20 don renato st. holy spirit', 'BSIT', 0, ''),
(14, 'Nana', 'Harith', '2019-05-02', 'Male', '22bugs@g.com', '', '', 912345678, '#20 don renato st. holy spirit', 'BSIT', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stud_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `userId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;