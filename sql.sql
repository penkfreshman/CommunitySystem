-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.28 - MySQL Community Server - GPL
-- 服务器操作系统:                      Linux
-- HeidiSQL 版本:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 CommunitySystemInformation 的数据库结构
CREATE DATABASE IF NOT EXISTS `CommunitySystemInformation` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `CommunitySystemInformation`;

-- 导出  表 CommunitySystemInformation.administrator 结构
CREATE TABLE IF NOT EXISTS `administrator` (
  `name` varchar(8) NOT NULL,
  `Idcard` int NOT NULL,
  `level` int NOT NULL,
  PRIMARY KEY (`Idcard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='管理员权限表';

-- 数据导出被取消选择。

-- 导出  表 CommunitySystemInformation.cost 结构
CREATE TABLE IF NOT EXISTS `cost` (
  `coding` varchar(15) NOT NULL,
  `data` date NOT NULL,
  `WaterCost` bit(10) NOT NULL,
  `WaterCase` bit(1) NOT NULL,
  `ElectricityCost` bit(10) NOT NULL,
  `ElctricityCase` bit(1) NOT NULL,
  `GasCase` bit(11) NOT NULL,
  `GasCost` bit(1) NOT NULL,
  `ManageCase` bit(10) NOT NULL,
  `ManagerCost` bit(1) NOT NULL,
  PRIMARY KEY (`coding`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 数据导出被取消选择。

-- 导出  表 CommunitySystemInformation.FloorDetails 结构
CREATE TABLE IF NOT EXISTS `FloorDetails` (
  `coding` varchar(18) NOT NULL,
  `case` bit(1) NOT NULL,
  `number` bit(4) NOT NULL,
  `addressX` int NOT NULL,
  `addressY` int NOT NULL,
  `addressZ` int NOT NULL,
  `telnumber` bit(11) NOT NULL,
  PRIMARY KEY (`coding`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 数据导出被取消选择。

-- 导出  表 CommunitySystemInformation.Load 结构
CREATE TABLE IF NOT EXISTS `Load` (
  `acount` varchar(10) NOT NULL,
  `password` varchar(14) NOT NULL,
  `level` int NOT NULL,
  `Idcard` int NOT NULL,
  PRIMARY KEY (`Idcard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 数据导出被取消选择。

-- 导出  表 CommunitySystemInformation.Message 结构
CREATE TABLE IF NOT EXISTS `Message` (
  `message` text NOT NULL,
  `cording` varchar(18) NOT NULL,
  `reply` text NOT NULL,
  PRIMARY KEY (`cording`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 数据导出被取消选择。

-- 导出  表 CommunitySystemInformation.ResidentsInformation 结构
CREATE TABLE IF NOT EXISTS `ResidentsInformation` (
  `Idcard` int NOT NULL,
  `name` varchar(8) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `domicile` text NOT NULL,
  `addressX` int NOT NULL,
  `addressY` int NOT NULL,
  `addressZ` int NOT NULL,
  `coding` varchar(18) NOT NULL,
  `telnumber` bit(11) NOT NULL,
  PRIMARY KEY (`coding`),
  KEY `Idcard` (`Idcard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 数据导出被取消选择。

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
