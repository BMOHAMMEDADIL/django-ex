-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2022 at 06:39 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL,
  `modifiedby` varchar(45) DEFAULT NULL,
  `createddatetime` timestamp NULL DEFAULT NULL,
  `modifieddatetime` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`, `createdby`, `modifiedby`, `createddatetime`, `modifieddatetime`) VALUES
(1, 'mukesh', 'mukesh.ahir151997@gmail.com', 'aaaaaa', 'wqewrewwr', NULL, NULL, '2022-07-30 12:02:56', '2022-07-30 12:02:56'),
(2, 'mukesh', 'mukesh.ahir151997@gmail.com', 'survicate', 'ok', NULL, NULL, '2022-08-01 07:21:24', '2022-08-01 07:21:24'),
(3, 'mukesh', 'manish.ahir151997@gmail.com', 'survicate', 'okkkkkkkkkkkkkk', NULL, NULL, '2022-08-08 10:35:54', '2022-08-08 10:35:54'),
(4, 'Clementine Weiss', 'hifujunebi@mailinator.com', 'Commodi quisquam vel', 'Nulla laborum volupt', NULL, NULL, '2022-08-09 11:31:13', '2022-08-09 11:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `eventtype`
--

CREATE TABLE `eventtype` (
  `id` bigint(20) NOT NULL,
  `eventname` varchar(200) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL,
  `modifiedby` varchar(45) DEFAULT NULL,
  `createddatetime` timestamp NULL DEFAULT NULL,
  `modifieddatetime` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventtype`
--

INSERT INTO `eventtype` (`id`, `eventname`, `description`, `createdby`, `modifiedby`, `createddatetime`, `modifieddatetime`) VALUES
(2, 'Industry Conferences Event', 'The goal of any great conference is to organize a group of people with related interests and provide them with helpful information on topics they care about. Conferences usually schedule multiple sessions spread out over days, weekends, or in some cases entire weeks.', 'admin', NULL, '2022-07-28 06:49:18', '2022-07-28 06:49:18'),
(3, 'Trade Shows and Expos', 'Trade shows and expos aim to present new products and services from a variety of related brands in a professional manner. Typically these types of events have a theme that ties the booths together. These types of events are almost always in-person because of the nature of hands-on opportunities and trade show booths.', 'user', NULL, '2022-07-28 06:50:05', '2022-07-28 06:50:05'),
(4, 'Field Marketing Events', 'Field marketing events  roadshows, professional development events, and product launches  are smaller, targeted events that drive specific business outcomes. Field marketing events contribute to brand building, strengthen customer relationships, and accelerate lead generation efforts. For the most part, folks who attend these events enjoy learning and networking opportunities.', 'user', NULL, '2022-07-28 06:50:33', '2022-07-28 06:50:33'),
(5, 'Private Events', 'Private events  think networking events, VIP summits, corporate retreats, advisory board meetings, and investor meetings  can take place in-person, virtually, or in a hybrid format.', 'user', NULL, '2022-07-28 06:51:42', '2022-07-28 06:51:42'),
(6, 'Company parties Event', 'Company parties bring employees together to celebrate shared victories, acknowledge milestones, boost morale, and enjoy holidays. While the focus of this type of event is usually fun and relaxation, event planners can still set and achieve concrete goals for their colleagues.', 'user', NULL, '2022-07-28 06:54:14', '2022-07-28 06:54:14'),
(7, 'Hero', 'okkkk', NULL, NULL, '2022-08-02 07:20:07', '2022-08-02 07:20:07'),
(8, 'school event', 'sdsad sdsdasd', NULL, NULL, '2022-08-09 11:30:22', '2022-08-09 11:30:22');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` bigint(20) NOT NULL,
  `personname` varchar(200) DEFAULT NULL,
  `cardnumber` varchar(200) DEFAULT NULL,
  `expire` varchar(100) DEFAULT NULL,
  `cvv` varchar(45) DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL,
  `modifiedby` varchar(45) DEFAULT NULL,
  `createddatetime` timestamp NULL DEFAULT NULL,
  `modifieddatetime` timestamp NULL DEFAULT NULL,
  `userid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `personname`, `cardnumber`, `expire`, `cvv`, `createdby`, `modifiedby`, `createddatetime`, `modifieddatetime`, `userid`) VALUES
(2, 'ishwar', '878726475745', '01/2030', '980', NULL, NULL, '2022-08-08 11:57:55', '2022-08-08 11:57:55', NULL),
(3, 'govind', '352525266211', '09/2031', '465', NULL, NULL, '2022-08-08 11:58:42', '2022-08-08 11:58:42', NULL),
(4, 'mukesh', '535523525', '01/2043', '463', NULL, NULL, '2022-08-08 12:33:54', '2022-08-08 12:33:54', 2),
(5, 'manish', 'r345435', '43252', 'e4243', NULL, NULL, '2022-08-08 12:40:46', '2022-08-08 12:40:46', 2),
(6, 'Harper Wyatt', '675', 'Illum amet maiores', 'Pa$$w0rd!', NULL, NULL, '2022-08-09 11:32:03', '2022-08-09 11:32:03', 5);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `rolename` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createddatetime` timestamp NULL DEFAULT NULL,
  `modifieddatetime` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `rolename`, `password`, `createdby`, `modifiedby`, `createddatetime`, `modifieddatetime`) VALUES
(1, 'Admin', 'ADmin@1234', 'root', 'root', '2022-07-27 07:01:59', '2022-07-27 07:01:59'),
(2, 'User', 'User@123', 'root', 'root', '2022-07-27 07:02:28', '2022-07-27 07:02:28');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `roleid` bigint(20) DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL,
  `modifiedby` varchar(45) DEFAULT NULL,
  `createddatetime` timestamp NULL DEFAULT NULL,
  `modifieddatetime` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstName`, `lastName`, `email`, `password`, `gender`, `roleid`, `createdby`, `modifiedby`, `createddatetime`, `modifieddatetime`) VALUES
(1, 'mukesh', 'yadav', 'mukesh.ahir151997@gmail.com', 'Admin@1234', 'Male', 1, 'root', 'root', '2022-08-08 11:42:27', '2022-08-08 11:42:27'),
(2, 'manish', 'yadav', 'manish.ahir151997@gmail.com', 'User@1234', 'Male', 2, 'root', 'root', '2022-08-08 11:42:46', '2022-08-08 11:42:46'),
(3, 'shubhanshu', 'sarin', 'skkk51997@gmail.com', 'Admin@1234', 'Male', 2, 'root', 'root', '2022-08-09 10:12:22', '2022-08-09 10:12:22'),
(5, 'Cara', 'Conway', 'kitelu@mailinator.com', 'Pa$$w0rd!', 'Female', 2, 'root', 'root', '2022-08-09 11:29:10', '2022-08-09 11:29:10');

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `id` bigint(20) NOT NULL,
  `eventtypeid` bigint(20) DEFAULT NULL,
  `location` varchar(500) DEFAULT NULL,
  `capacity` varchar(500) DEFAULT NULL,
  `cost` varchar(500) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `image` longblob DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL,
  `modifiedby` varchar(45) DEFAULT NULL,
  `createddatetime` timestamp NULL DEFAULT NULL,
  `modifieddatetime` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventtype`
--
ALTER TABLE `eventtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roleid_idx` (`roleid`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventtype_idx` (`eventtypeid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `venue`
--
ALTER TABLE `venue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `roleid` FOREIGN KEY (`roleid`) REFERENCES `role` (`id`);

--
-- Constraints for table `venue`
--
ALTER TABLE `venue`
  ADD CONSTRAINT `eventtype` FOREIGN KEY (`eventtypeid`) REFERENCES `eventtype` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
