
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
-- Table structure for table `user`
--

CREATE DATABASE `test_db`;
CREATE `USER` 'root'@'%' IDENTIFIED BY 'password';

GRANT ALL PRIVILAGES ON `test_db.*` TO 'root'@'%';

USE `test_db`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
