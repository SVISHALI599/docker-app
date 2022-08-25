-- DROP DATABASE IF EXISTS test_db;
CREATE DATABASE `test_db`;

USE `test_db`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(12) NOT NULL,
  PRIMARY KEY (user_id)
)
INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `username`, `password`) VALUES
(1, 'Vishali', 'Sakthivel', 'Vishali', 'Vishali@123');
