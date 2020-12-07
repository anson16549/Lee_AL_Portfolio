-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 06, 2020 at 10:55 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_fip`
--

-- --------------------------------------------------------

--
-- Table structure for table `infor`
--

CREATE TABLE `infor` (
  `id` int(11) NOT NULL,
  `mediatype` varchar(80) NOT NULL,
  `image` varchar(80) NOT NULL,
  `subtitle` varchar(180) NOT NULL,
  `video` varchar(180) NOT NULL,
  `Description` text NOT NULL,
  `image2` varchar(180) NOT NULL,
  `title` varchar(180) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `infor`
--

INSERT INTO `infor` (`id`, `mediatype`, `image`, `subtitle`, `video`, `Description`, `image2`, `title`) VALUES
(1, 'Graphic', 'demoReel.jpg', 'Motion Graphic Project', 'demo_reel.mp4', 'This Demo Reel collects some of the works I have done in school as well as some transition skills. I hope you enjoy it!', 'Video.jpg', 'Demo Reel'),
(2, 'Graphic', 'intro.jpg', 'Motion Text', 'Midterm.mp4', 'This is the short version of introduction I tried to make before I was totally new with After Effects. I learned a lot just by watching tutorial on Youtube\r\n', 'intro.jpg', 'Beginner'),
(3, 'Graphic', 'TVBanner2.jpg', 'TV Banner', 'KID_Channel.mp4', 'This is a one of the Motion Graphics project we did before in school. Students will have to make 3D modules in Cinema 4D first then do some styling in After Effects.', 'TVBanner.jpg', 'Motion Project'),
(4, 'Graphic', 'beersImage.jpg', 'Website Design', '', 'This is a website I made with my classmates in our first year Final Projects. We used HTML, CSS and JS to set up the webiste.', 'fipImage.jpg', 'Dynamics Website');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `infor`
--
ALTER TABLE `infor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `infor`
--
ALTER TABLE `infor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
