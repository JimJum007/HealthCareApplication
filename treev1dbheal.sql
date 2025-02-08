-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               9.1.0 - MySQL Community Server - GPL
-- Server OS:                    Linux
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table healthcare.FoodRecord: ~4 rows (approximately)
REPLACE INTO `FoodRecord` (`id`, `userId`, `name`, `time`, `date`, `calories`, `createdAt`) VALUES
	(1, 1, 'Grilled Chicken Salad', '2025-01-20 12:30:00.000', '2025-01-20 00:00:00.000', 350, '2025-01-21 05:34:02.000'),
	(2, 1, 'Banana Smoothie', '2025-01-20 15:00:00.000', '2025-01-20 00:00:00.000', 150, '2025-01-21 05:34:02.000'),
	(3, 2, 'Veggie Wrap', '2025-01-21 13:15:00.000', '2025-01-21 00:00:00.000', 300, '2025-01-21 05:34:02.000'),
	(4, 2, 'Oatmeal with Fruits', '2025-01-21 08:30:00.000', '2025-01-21 00:00:00.000', 250, '2025-01-21 05:34:02.000'),
	(5, 1, 'gggg', '2025-01-22 00:09:00.000', '2025-01-22 00:00:00.000', 20, '2025-01-21 06:25:33.583'),
	(6, 1, 'dfhrstjfsghrsth', '2025-01-30 17:10:00.000', '2025-01-31 00:00:00.000', 567, '2025-01-21 06:27:49.803'),
	(7, 1, 'dasdasdasdasd', '2025-01-21 17:12:00.000', '2025-01-22 00:00:00.000', 560, '2025-01-21 06:28:36.328'),
	(8, 1, 'mmmm', '2025-01-31 05:11:00.000', '2025-01-31 00:00:00.000', 123, '2025-01-21 06:28:48.031'),
	(9, 1, 'aaaa', '2025-01-22 17:00:00.000', '2025-01-23 00:00:00.000', 111, '2025-01-21 06:31:25.581'),
	(10, 1, 'KAW PAD MOO', '2025-03-27 11:10:00.000', '2025-03-27 00:00:00.000', 700, '2025-01-21 06:33:21.146'),
	(11, 1, 'KAW pad ma pai', '2025-01-31 05:10:00.000', '2025-01-31 00:00:00.000', 2000, '2025-01-21 06:47:30.651');

-- Dumping data for table healthcare.User: ~2 rows (approximately)
REPLACE INTO `User` (`id`, `name`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
	(1, 'John Doe', 'john.doe@example.com', '$2b$10$urHhtZx5uATD539/28Sz9u4hFaQg42khRa0xo/qoWi/iOJYEY2zfq', '2025-01-21 05:33:27.000', '2025-01-21 05:33:27.000'),
	(2, 'Jane Smith', 'jane.smith@example.com', '$2b$10$urHhtZx5uATD539/28Sz9u4hFaQg42khRa0xo/qoWi/iOJYEY2zfq', '2025-01-21 05:33:27.000', '2025-01-21 05:33:27.000');

-- Dumping data for table healthcare._prisma_migrations: ~1 rows (approximately)
REPLACE INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
	('d57a4b99-0486-4868-aae6-e86c27d5c7cf', 'd7438f080f2782feb98502b492b923cdc136b4af62ffe2ade1f935b916b2eb42', '2025-01-21 05:32:08.882', '20250121053208_fix_likes_field', NULL, NULL, '2025-01-21 05:32:08.810', 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
