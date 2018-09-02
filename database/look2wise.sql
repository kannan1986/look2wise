-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2018 at 08:14 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `look2wise`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `password` varchar(220) NOT NULL,
  `role_type` enum('0','1') NOT NULL DEFAULT '0',
  `ip_address` varchar(220) DEFAULT NULL,
  `lat` varchar(220) DEFAULT NULL,
  `long` varchar(220) DEFAULT NULL,
  `remember_token` varchar(120) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role_type`, `ip_address`, `lat`, `long`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$PDztFvc.RjzxWPnTA9ixtOkab9FlYg4rvwqSwMGFZ1bUfo2dHATTy', '1', NULL, NULL, NULL, 'DQw7Ov45C9ScFLj7TdraqIAcwouIAcrqMEYBtA7fol6ag8hnInQe6AJaQ0sI', '2018-09-02 02:32:47', '2018-09-02 02:32:47'),
(2, 'selvakumar', 'selvakumar@gmail.com', '$2y$10$JDye/SExJqWmomvvbqwpWe4E/6Y5TWX2ba/QpA8x5kQtoIr9QXV6K', '0', NULL, NULL, NULL, 'YEKhE3bVTjYrTnADhbguDevzqYLGypKHb9kFUVZJ0xPrD1yNehXyXy5C9eee', '2018-09-02 17:29:11', '2018-09-02 17:29:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
