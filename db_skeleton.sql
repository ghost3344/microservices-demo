-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.31 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for orders
DROP DATABASE IF EXISTS `orders`;
CREATE DATABASE IF NOT EXISTS `orders` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `orders`;

-- Dumping structure for table orders.orders
DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `payment_provider` enum('paypal','stripe') CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `payment_status` enum('failed','success','processing') CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_vietnamese_ci;

-- Dumping data for table orders.orders: ~0 rows (approximately)
INSERT INTO `orders` (`order_id`, `order_amount`, `payment_provider`, `user_id`, `payment_status`, `createdAt`, `updatedAt`) VALUES
	('4b58ad19-62ae-48d6-9507-7f4142190426', 100.20, 'paypal', 'c4905632-9566-4776-ae48-b7a70ebddf6f', 'processing', '2023-05-17', '2023-05-17'),
	('c9578517-4fae-4174-9c60-01e31a6102e0', 100.20, 'paypal', 'c4905632-9566-4776-ae48-b7a70ebddf6f', 'processing', '2023-05-17', '2023-05-17'),
	('73a5f6d2-9461-4507-8221-1fc480ddb219', 100.20, 'paypal', 'c4905632-9566-4776-ae48-b7a70ebddf6f', 'processing', '2023-05-17', '2023-05-17'),
	('261de48d-a8c2-4178-a6c7-93fbf68a88e3', 100.20, 'paypal', 'c4905632-9566-4776-ae48-b7a70ebddf6f', 'processing', '2023-05-17', '2023-05-17'),
	('b5267713-511e-46a1-b621-e171acc48b3a', 100.20, 'paypal', 'c4905632-9566-4776-ae48-b7a70ebddf6f', 'processing', '2023-05-17', '2023-05-17'),
	('9881abaa-f3b0-4178-8ac8-88dc63b9e1fa', 100.20, 'paypal', 'c4905632-9566-4776-ae48-b7a70ebddf6f', 'processing', '2023-05-17', '2023-05-17'),
	('eeb8d8ac-6737-41d0-80de-410a073387ad', 100.20, 'paypal', 'c4905632-9566-4776-ae48-b7a70ebddf6f', 'processing', '2023-05-17', '2023-05-17'),
	('0aa6f57e-047f-47ca-8b5b-91ea529453d2', 100.20, 'paypal', 'c4905632-9566-4776-ae48-b7a70ebddf6f', 'processing', '2023-05-17', '2023-05-17'),
	('dc5945cc-84cc-4e15-91b7-45a02a9a0e1c', 100.20, 'paypal', 'c4905632-9566-4776-ae48-b7a70ebddf6f', 'processing', '2023-05-17', '2023-05-17'),
	('134599cb-b188-4371-948e-7caa32371f61', 100.20, 'paypal', 'c4905632-9566-4776-ae48-b7a70ebddf6f', 'processing', '2023-05-17', '2023-05-17'),
	('205ad304-f0a5-4170-8790-9e367a3508cb', 100.20, 'paypal', 'c4905632-9566-4776-ae48-b7a70ebddf6f', 'success', '2023-05-17', '2023-05-17'),
	('6d70ad73-3873-4a75-86dd-bdebd5dde613', 100.20, 'paypal', 'c4905632-9566-4776-ae48-b7a70ebddf6f', 'success', '2023-05-17', '2023-05-17'),
	('c0a82c02-03bc-456a-89d0-92e7b8ea7e81', 100.20, 'paypal', 'c4905632-9566-4776-ae48-b7a70ebddf6f', 'success', '2023-05-17', '2023-05-17'),
	('539d58d8-8219-4c0f-87a9-80f699d664c8', 100.20, 'paypal', 'c4905632-9566-4776-ae48-b7a70ebddf6f', 'success', '2023-05-17', '2023-05-17'),
	('46264648-623b-4acf-8b91-1d213629c162', 100.20, 'stripe', 'c4905632-9566-4776-ae48-b7a70ebddf6f', 'success', '2023-05-17', '2023-05-17'),
	('bcec133a-8825-4806-96a6-9235285897ad', 134.20, 'stripe', 'c4905632-9566-4776-ae48-b7a70ebddf6f', 'success', '2023-05-17', '2023-05-17'),
	('39822b70-e605-4799-834d-cb4d560871ad', 134.20, 'stripe', 'c4905632-9566-4776-ae48-b7a70ebddf6f', 'processing', '2023-05-17', '2023-05-17'),
	('c58b7a3a-a0e9-4221-885a-8cca8b0decde', 134.20, 'stripe', 'c4905632-9566-4776-ae48-b7a70ebddf6f', 'success', '2023-05-17', '2023-05-17');


-- Dumping database structure for paypal
DROP DATABASE IF EXISTS `paypal`;
CREATE DATABASE IF NOT EXISTS `paypal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `paypal`;

-- Dumping structure for table paypal.transactions
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `transaction_id` varchar(50) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `payment_status` enum('processing','failed','success') NOT NULL,
  `card_details` json DEFAULT NULL,
  `payment_type` enum('credit','upi','debit') NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table paypal.transactions: ~0 rows (approximately)
INSERT INTO `transactions` (`transaction_id`, `order_id`, `payment_status`, `card_details`, `payment_type`, `createdAt`, `updatedAt`) VALUES
	('836a547f-8cdd-4bd5-962d-f735b2115fd3', '0aa6f57e-047f-47ca-8b5b-91ea529453d2', 'success', '{}', 'upi', '2023-05-17', '2023-05-17'),
	('a124fcb0-912f-4a99-8b02-039db3c003bf', 'dc5945cc-84cc-4e15-91b7-45a02a9a0e1c', 'success', '{}', 'upi', '2023-05-17', '2023-05-17'),
	('86093492-ea60-435d-872a-9c32222e3f77', '134599cb-b188-4371-948e-7caa32371f61', 'success', '{}', 'upi', '2023-05-17', '2023-05-17'),
	('2bc9a946-6590-4d48-9445-b0e27778d91e', '205ad304-f0a5-4170-8790-9e367a3508cb', 'success', '{}', 'upi', '2023-05-17', '2023-05-17'),
	('8e6449c6-e2a9-44e8-bddf-0f5217b37fc8', '6d70ad73-3873-4a75-86dd-bdebd5dde613', 'success', '{}', 'upi', '2023-05-17', '2023-05-17'),
	('9c7b29f9-90fa-4f93-9210-f5d1c49827cc', 'c0a82c02-03bc-456a-89d0-92e7b8ea7e81', 'success', '{}', 'upi', '2023-05-17', '2023-05-17'),
	('20d4c029-94c0-4b15-a596-e8fb8c9ad805', '539d58d8-8219-4c0f-87a9-80f699d664c8', 'success', '{}', 'upi', '2023-05-17', '2023-05-17');


-- Dumping database structure for stripe
DROP DATABASE IF EXISTS `stripe`;
CREATE DATABASE IF NOT EXISTS `stripe` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `stripe`;

-- Dumping structure for table stripe.transactions
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `transaction_id` varchar(50) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `payment_status` enum('processing','failed','success') NOT NULL,
  `card_details` json DEFAULT NULL,
  `payment_type` enum('credit','upi','debit') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table stripe.transactions: ~0 rows (approximately)
INSERT INTO `transactions` (`transaction_id`, `order_id`, `payment_status`, `card_details`, `payment_type`, `createdAt`, `updatedAt`) VALUES
	('7092947d-a94d-4f4b-8a9a-0097c91b1c5b', '46264648-623b-4acf-8b91-1d213629c162', 'success', '{}', 'upi', '2023-05-17', '2023-05-17'),
	('8ea2f427-fb9f-4fc9-bab5-b53286aa1c8b', 'bcec133a-8825-4806-96a6-9235285897ad', 'success', '{}', 'credit', '2023-05-17', '2023-05-17'),
	('7c86d8c6-5379-4bce-bcca-936c037c5612', 'c58b7a3a-a0e9-4221-885a-8cca8b0decde', 'success', '{}', 'debit', '2023-05-17', '2023-05-17');


-- Dumping database structure for users
DROP DATABASE IF EXISTS `users`;
CREATE DATABASE IF NOT EXISTS `users` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `users`;

-- Dumping structure for table users.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` varchar(50) COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `user_status` tinyint NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_vietnamese_ci;

-- Dumping data for table users.users: ~0 rows (approximately)
INSERT INTO `users` (`user_id`, `user_name`, `user_status`, `password`, `createdAt`, `updatedAt`) VALUES
	('c4905632-9566-4776-ae48-b7a70ebddf6f', 'kashyap', 1, '$2a$10$SBwmVcl3MCcHZWtLe4MzEel12fc6Tlgzu5VBtUrJ5.fwN6ZzxRCUy', NULL, NULL),
	('8b56278d-80fb-4206-b745-a5f1dacb1315', 'vijay', 1, '$2a$10$SBwmVcl3MCcHZWtLe4MzEel12fc6Tlgzu5VBtUrJ5.fwN6ZzxRCUy', NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
