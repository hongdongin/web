-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        11.0.2-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- kd 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `kd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `kd`;

-- 테이블 kd.board_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `board_info` (
  `BI_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `BI_TITLE` varchar(100) NOT NULL,
  `BI_CONTENT` text NOT NULL,
  `BI_WRITER` varchar(30) NOT NULL,
  `BI_CREDAT` timestamp NOT NULL,
  `BI_CNT` int(11) NOT NULL,
  PRIMARY KEY (`BI_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 kd.board_info:~2 rows (대략적) 내보내기
INSERT INTO `board_info` (`BI_NUM`, `BI_TITLE`, `BI_CONTENT`, `BI_WRITER`, `BI_CREDAT`, `BI_CNT`) VALUES
	(1, '첫번째ㅁ123123', '									냉무\r\n			ㅁㄴㅇㄴㅁㅇ\r\n			\r\n			', '글쓴이"""', '2023-07-14 05:33:06', 0),
	(2, 'dsa', 'asd', 'sad', '2023-07-14 05:57:04', 0);

-- 테이블 kd.class_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `class_info` (
  `CI_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `CI_NAME` varchar(100) NOT NULL,
  `CI_DESC` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`CI_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 kd.class_info:~4 rows (대략적) 내보내기
INSERT INTO `class_info` (`CI_NUM`, `CI_NAME`, `CI_DESC`) VALUES
	(1, '이름', 'DESC'),
	(2, '이름2', 'DESC2'),
	(3, '이름2', 'DESC2'),
	(4, '이름2', 'DESC2');

-- 테이블 kd.user_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `user_info` (
  `UI_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `UI_ID` varchar(30) NOT NULL,
  `UI_PWD` varchar(30) NOT NULL,
  `UI_NAME` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`UI_NUM`),
  UNIQUE KEY `UI_ID` (`UI_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 kd.user_info:~2 rows (대략적) 내보내기
INSERT INTO `user_info` (`UI_NUM`, `UI_ID`, `UI_PWD`, `UI_NAME`) VALUES
	(1, 'TEST1', 'TEST1', '연습1'),
	(2, 'TEST2', 'TEST2', '연습2');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
