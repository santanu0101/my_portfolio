-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 04, 2025 at 12:15 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel-management-system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `img_path` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `login_token` varchar(200) DEFAULT NULL,
  `login_dttm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `name`, `email`, `img_path`, `password`, `login_token`, `login_dttm`) VALUES
(1, 'Admin', 'admin@gmail.com', 'upload1/google.jpeg', '1234', 'ad9d4d2bc5365e856dcb6d78fb0c7cb5', '2025-08-04 17:44:06');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `content` text,
  `dttm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `content`, `dttm`) VALUES
(1, 'san@raj', 'hi, i am hacker', '2024-10-26 21:39:02'),
(2, 'san@raj', 'hello go', '2024-10-26 21:47:47'),
(3, 'jack@dev', 'jdbsjdbfjsd', '2024-10-28 20:50:07'),
(4, 'sayani@gmail.com', 'hii i am sayani....', '2024-11-09 12:09:12');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int NOT NULL,
  `student_id` varchar(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `course` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `dttm` datetime NOT NULL,
  `ip` varchar(15) NOT NULL,
  `img_path` varchar(200) DEFAULT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `student_id`, `name`, `course`, `gender`, `phone`, `address`, `email`, `dttm`, `ip`, `img_path`, `room_no`, `status`) VALUES
(41, 'STD0075808', 'santanu raj', 'MCA', 'Male', '1233456789', 'South 24 parganas, Subhasgram Sukanta Sarani', 'san@raj.com', '2024-10-25 19:02:03', '::1', 'upload/17298631231790.jpeg', '104', 'approved'),
(44, 'STD0075877', 'jack sparrow', 'BCA', 'Male', '12345678', 'South 24 parganas, Subhasgram Sukanta Sarani', 'jack@dev.com', '2024-10-25 21:02:38', '::1', 'upload/17298703585211.jpeg', '103', 'approved'),
(45, 'STD0078461', 'sumon raj', 'B.Tech ECE', 'Male', '123456', 'South 24 parganas, Subhasgram Sukanta Sarani', 'aniket@mail.com', '2024-10-28 21:06:29', '::1', 'upload/17301297895905.jpeg', '103', 'approved'),
(46, 'STD0079473', 'sumon pal', 'MCA', 'Male', '1234567890', 'Subhasgram', 'sumon@gmail.com', '2024-10-31 18:11:34', '::1', 'upload/17303784944200.jpg', '106', 'approved'),
(48, 'STD0074891', 'sayani ghosh', 'MCA', 'Female', '1234567890', 'kolkata', 'sayani@gmail.com', '2024-11-09 12:30:28', '::1', 'upload/17311356281136.jpg', '104', 'approved'),
(49, 'STD0076673', 'jon don', 'B.Tech AIML', 'Male', '1234567890', 'Subhasgram', 'jon@gmail.com', '2025-01-30 21:40:19', '::1', 'upload/17382534191856.png', NULL, '0'),
(50, 'STD0074329', 'jhon ray', 'B.Tech CSE', 'Male', '1234567892', 'South 24 parganas, Subhasgram Sukanta Sarani', 'jhonray@mail.com', '2025-03-31 11:34:36', '::1', 'upload/17434010761923.jpg', '104', 'approved'),
(51, 'STD0077391', 'payel das', 'BCA', 'Male', '4253698746', 'South 24 parganas, Subhasgram Sukanta Sarani', 'payel@das.com', '2025-08-04 17:04:29', '::1', 'upload/17543072694140.png', NULL, '0'),
(52, 'STD0073837', 'kartick raj', 'MCA', 'Male', '5236536598', 'South 24 parganas, Subhasgram Sukanta Sarani', 'kar@gmail.com', '2025-08-04 17:42:07', '::1', 'upload/17543095271276.png', '104', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(110) NOT NULL,
  `img_path` varchar(200) DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  `login_token` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rem_token` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `expire` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `login_dttm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `name`, `email`, `img_path`, `password`, `login_token`, `rem_token`, `expire`, `login_dttm`) VALUES
(23, 'santanu raj', 'san@raj.com', 'upload/17298631231790.jpeg', 'c20ad4d76fe97759aa27a0c99bff6710', 'af922fd52975aee0083fb8e0ba9c1d64', NULL, NULL, '2025-01-30 18:51:15'),
(26, 'jack sparrow', 'jack@dev.com', 'upload/17298703585211.jpeg', 'c20ad4d76fe97759aa27a0c99bff6710', '1b932eaf9f7c0cb84f471a560097ddb8', NULL, NULL, '2024-10-29 12:08:47'),
(27, 'sumon raj', 'aniket@mail.com', 'upload/17301297895905.jpeg', 'c20ad4d76fe97759aa27a0c99bff6710', NULL, NULL, NULL, NULL),
(28, 'sumon pal', 'sumon@gmail.com', 'upload/17303784944200.jpg', 'c20ad4d76fe97759aa27a0c99bff6710', 'dcacff2565700c8f88f59cf4a16f9dfc', NULL, NULL, '2024-10-31 18:13:08'),
(30, 'sayani ghosh', 'sayani@gmail.com', 'upload/17311356281136.jpg', 'e0c84d892df98caac8975160b2df6986', 'b1790a55a67906c18bd9a046e17c5935', NULL, NULL, '2024-11-09 12:45:19'),
(31, 'jon don', 'jon@gmail.com', 'upload/17382534191856.png', 'cb013a872e48177c5a148ba0041f9db1', 'df877f3865752637daa540ea9cbc474f', NULL, NULL, '2025-01-30 21:41:01'),
(32, 'jhon ray', 'jhonray@mail.com', 'upload/17434010761923.jpg', '3f732506e18bffedca75eeb03cfcbfbc', '52947e0ade57a09e4a1386d08f17b656', NULL, NULL, '2025-03-31 12:55:17'),
(33, 'payel das', 'payel@das.com', 'upload/17543072694140.png', '$2y$10$iH4gyJkCctB2vi.MhpNc1.Q33x3u95ZhFFbsFG5dXXEBFIXyqdT8.', 'b1d853e2d5f84c4e421d9f07e5e69f44', NULL, NULL, '2025-08-04 17:09:28'),
(34, 'kartick raj', 'kar@gmail.com', 'upload/17543095271276.png', 'd3bf7dac9dc9e575a57b13fe07e0760f', 'c678aec6e828c899b32a099c14ee882c', NULL, NULL, '2025-08-04 17:44:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
