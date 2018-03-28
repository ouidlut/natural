-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018 年 3 朁E28 日 09:18
-- サーバのバージョン： 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epark_report_manage`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `accountdata`
--

CREATE TABLE `accountdata` (
  `No` bigint(20) NOT NULL DEFAULT '0',
  `OPNo` varchar(6) COLLATE cp932_bin DEFAULT NULL,
  `AccountId` varchar(50) CHARACTER SET utf8 NOT NULL,
  `WinPass` text CHARACTER SET utf8,
  `Pass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Name` text CHARACTER SET utf8,
  `Class` text CHARACTER SET utf8,
  `Level` text CHARACTER SET utf8,
  `Company` text CHARACTER SET utf8,
  `PriceGroup` text CHARACTER SET utf8,
  `PMO` text CHARACTER SET utf8,
  `Price1` int(11) DEFAULT '0',
  `Price2` int(11) DEFAULT '0',
  `Price3` int(11) DEFAULT '0',
  `Price4` int(11) DEFAULT '0',
  `Price5` int(11) DEFAULT '0',
  `Price6` int(11) DEFAULT '0',
  `Price7` int(11) DEFAULT '0',
  `Price8` int(11) DEFAULT '0',
  `Price9` int(11) DEFAULT '0',
  `Price10` int(11) DEFAULT '0',
  `Price11` int(11) DEFAULT '0',
  `Price12` int(11) DEFAULT '0',
  `NGFlg` text CHARACTER SET utf8,
  `ResetDate` date DEFAULT NULL,
  `LoginDate` date DEFAULT NULL,
  `LoginTime` time DEFAULT NULL,
  `CommonFlg` text CHARACTER SET utf8,
  `Note` text CHARACTER SET utf8,
  `EditDate` date DEFAULT NULL,
  `EditTime` time DEFAULT NULL,
  `EditName` text CHARACTER SET utf8,
  `EditSort` int(11) DEFAULT NULL,
  `AddDate` date DEFAULT NULL,
  `AddTime` time DEFAULT NULL,
  `AddName` text CHARACTER SET utf8,
  `Area` text CHARACTER SET utf8,
  `MailingList` text CHARACTER SET utf8,
  `EMail` text CHARACTER SET utf8,
  `authority` text CHARACTER SET utf8,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=cp932 COLLATE=cp932_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `accountid_opno`
--

CREATE TABLE `accountid_opno` (
  `AccountID` varchar(50) NOT NULL,
  `OPNo` varchar(6) DEFAULT NULL,
  `No` bigint(20) NOT NULL DEFAULT '0',
  `ID_OPNo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `accountingcord`
--

CREATE TABLE `accountingcord` (
  `No` bigint(20) NOT NULL,
  `Accounting` text CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=cp932 COLLATE=cp932_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `businesstype`
--

CREATE TABLE `businesstype` (
  `No` bigint(20) NOT NULL,
  `BusinessType` text CHARACTER SET utf8,
  `Product` text CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=cp932 COLLATE=cp932_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `businesstypeback`
--

CREATE TABLE `businesstypeback` (
  `No` bigint(20) NOT NULL,
  `BusinessType` text CHARACTER SET utf8,
  `Product` text CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=cp932 COLLATE=cp932_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `dailydata`
--

CREATE TABLE `dailydata` (
  `No` bigint(20) NOT NULL,
  `OPNo` varchar(6) COLLATE cp932_bin NOT NULL,
  `YM` int(11) NOT NULL,
  `AccountId` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `ProjectCord` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `HouseName` text COLLATE cp932_bin,
  `Project` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `UploadF` int(1) DEFAULT '0',
  `Process1` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `Process2` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `Status` text CHARACTER SET utf8,
  `Note` text CHARACTER SET utf8,
  `Time1` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time2` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time3` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time4` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time5` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time6` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time7` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time8` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time9` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time10` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time11` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time12` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time13` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time14` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time15` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time16` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time17` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time18` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time19` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time20` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time21` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time22` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time23` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time24` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time25` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time26` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time27` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time28` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time29` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time30` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Time31` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `SubTime` decimal(10,2) DEFAULT NULL,
  `SubMoney` int(11) DEFAULT NULL,
  `ArticleNo` varchar(15) COLLATE cp932_bin NOT NULL,
  `StartDate` date DEFAULT '0000-00-00',
  `CancelDate` date DEFAULT '0000-00-00',
  `CloseDate` date DEFAULT '0000-00-00',
  `AddDate` date DEFAULT '0000-00-00',
  `AddTime` time DEFAULT '00:00:00',
  `EditDate` date DEFAULT '0000-00-00',
  `EditTime` time DEFAULT '00:00:00',
  `OP_ArticleNo` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp932 COLLATE=cp932_bin;

-- --------------------------------------------------------

--
-- ビュー用の代替構造 `gyoshu`
-- (See below for the actual view)
--
CREATE TABLE `gyoshu` (
`PriceGroup` text
,`Budget` varchar(100)
,`SubMoney` int(11)
,`SubTime` decimal(10,2)
,`BusinessType` text
,`YM` int(11)
);

-- --------------------------------------------------------

--
-- テーブルの構造 `holidaydata`
--

CREATE TABLE `holidaydata` (
  `No` bigint(20) NOT NULL,
  `HolidayYM` int(11) DEFAULT NULL,
  `AccountId` text CHARACTER SET utf8,
  `Name` text CHARACTER SET utf8,
  `Holiday1` text CHARACTER SET utf8,
  `Holiday2` text CHARACTER SET utf8,
  `Holiday3` text CHARACTER SET utf8,
  `Holiday4` text CHARACTER SET utf8,
  `Holiday5` text CHARACTER SET utf8,
  `Holiday6` text CHARACTER SET utf8,
  `Holiday7` text CHARACTER SET utf8,
  `Holiday8` text CHARACTER SET utf8,
  `Holiday9` text CHARACTER SET utf8,
  `Holiday10` text CHARACTER SET utf8,
  `Holiday11` text CHARACTER SET utf8,
  `Holiday12` text CHARACTER SET utf8,
  `Holiday13` text CHARACTER SET utf8,
  `Holiday14` text CHARACTER SET utf8,
  `Holiday15` text CHARACTER SET utf8,
  `Holiday16` text CHARACTER SET utf8,
  `Holiday17` text CHARACTER SET utf8,
  `Holiday18` text CHARACTER SET utf8,
  `Holiday19` text CHARACTER SET utf8,
  `Holiday20` text CHARACTER SET utf8,
  `Holiday21` text CHARACTER SET utf8,
  `Holiday22` text CHARACTER SET utf8,
  `Holiday23` text CHARACTER SET utf8,
  `Holiday24` text CHARACTER SET utf8,
  `Holiday25` text CHARACTER SET utf8,
  `Holiday26` text CHARACTER SET utf8,
  `Holiday27` text CHARACTER SET utf8,
  `Holiday28` text CHARACTER SET utf8,
  `Holiday29` text CHARACTER SET utf8,
  `Holiday30` text CHARACTER SET utf8,
  `Holiday31` text CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=cp932 COLLATE=cp932_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `manual_lock`
--

CREATE TABLE `manual_lock` (
  `lock_day` varchar(30) NOT NULL,
  `lock_flag` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `monthdata`
--

CREATE TABLE `monthdata` (
  `No` bigint(20) NOT NULL,
  `AccountId` tinytext CHARACTER SET utf8,
  `Name` tinytext CHARACTER SET utf8,
  `YM` int(11) DEFAULT NULL,
  `ProjectCord` text CHARACTER SET utf8,
  `Project` text CHARACTER SET utf8,
  `ArticleNo` varchar(15) COLLATE cp932_bin DEFAULT NULL,
  `ProcessF` int(11) DEFAULT NULL,
  `PTime` double DEFAULT NULL,
  `PMoney` int(11) DEFAULT NULL,
  `Time` double DEFAULT NULL,
  `Money` int(11) DEFAULT NULL,
  `UploadF` int(11) DEFAULT NULL,
  `PriceGroup` text CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=cp932 COLLATE=cp932_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `monthdata2`
--

CREATE TABLE `monthdata2` (
  `No` bigint(20) NOT NULL,
  `AccountId` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Name` tinytext CHARACTER SET utf8,
  `OPNo` varchar(6) COLLATE cp932_bin NOT NULL,
  `ArticleNo` varchar(20) COLLATE cp932_bin NOT NULL,
  `MemberY` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ProjectNo` bigint(20) DEFAULT NULL,
  `ProjectCord` text CHARACTER SET utf8,
  `Project` text CHARACTER SET utf8,
  `ProcessF` int(11) DEFAULT NULL,
  `Time1` double DEFAULT NULL,
  `Time2` double DEFAULT NULL,
  `Time3` double DEFAULT NULL,
  `Time4` double DEFAULT NULL,
  `Time5` double DEFAULT NULL,
  `Time6` double DEFAULT NULL,
  `Time7` double DEFAULT NULL,
  `Time8` double DEFAULT NULL,
  `Time9` double DEFAULT NULL,
  `Time10` double DEFAULT NULL,
  `Time11` double DEFAULT NULL,
  `Time12` double DEFAULT NULL,
  `Money1` int(11) DEFAULT NULL,
  `Money2` int(11) DEFAULT NULL,
  `Money3` int(11) DEFAULT NULL,
  `Money4` int(11) DEFAULT NULL,
  `Money5` int(11) DEFAULT NULL,
  `Money6` int(11) DEFAULT NULL,
  `Money7` int(11) DEFAULT NULL,
  `Money8` int(11) DEFAULT NULL,
  `Money9` int(11) DEFAULT NULL,
  `Money10` int(11) DEFAULT NULL,
  `Money11` int(11) DEFAULT NULL,
  `Money12` int(11) DEFAULT NULL,
  `TotalTime` double DEFAULT NULL,
  `TotalMoney` int(11) DEFAULT NULL,
  `PTime1` double DEFAULT NULL,
  `PTime2` double DEFAULT NULL,
  `PTime3` double DEFAULT NULL,
  `PTime4` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PTime5` double DEFAULT NULL,
  `PTime6` double DEFAULT NULL,
  `PTime7` double DEFAULT NULL,
  `PTime8` double DEFAULT NULL,
  `PTime9` double DEFAULT NULL,
  `PTime10` double DEFAULT NULL,
  `PTime11` double DEFAULT NULL,
  `PTime12` double DEFAULT NULL,
  `PMoney1` double DEFAULT NULL,
  `PMoney2` double DEFAULT NULL,
  `PMoney3` double DEFAULT NULL,
  `PMoney4` double DEFAULT NULL,
  `PMoney5` double DEFAULT NULL,
  `PMoney6` double DEFAULT NULL,
  `PMoney7` double DEFAULT NULL,
  `PMoney8` double DEFAULT NULL,
  `PMoney9` double DEFAULT NULL,
  `PMoney10` double DEFAULT NULL,
  `PMoney11` double DEFAULT NULL,
  `PMoney12` double DEFAULT NULL,
  `PTotalTime` double DEFAULT NULL,
  `PTotalMoney` int(11) DEFAULT NULL,
  `UploadF` int(11) DEFAULT NULL,
  `BusinessType` tinytext COLLATE cp932_bin,
  `Product` tinytext COLLATE cp932_bin,
  `PMO` tinytext COLLATE cp932_bin
) ENGINE=InnoDB DEFAULT CHARSET=cp932 COLLATE=cp932_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `monthdata2_copy`
--

CREATE TABLE `monthdata2_copy` (
  `No` bigint(20) NOT NULL,
  `AccountId` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Name` tinytext CHARACTER SET utf8,
  `MemberY` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ProjectNo` bigint(20) DEFAULT NULL,
  `ProjectCord` text CHARACTER SET utf8,
  `Project` text CHARACTER SET utf8,
  `ProcessF` int(11) DEFAULT NULL,
  `Time1` double DEFAULT NULL,
  `Time2` double DEFAULT NULL,
  `Time3` double DEFAULT NULL,
  `Time4` double DEFAULT NULL,
  `Time5` double DEFAULT NULL,
  `Time6` double DEFAULT NULL,
  `Time7` double DEFAULT NULL,
  `Time8` double DEFAULT NULL,
  `Time9` double DEFAULT NULL,
  `Time10` double DEFAULT NULL,
  `Time11` double DEFAULT NULL,
  `Time12` double DEFAULT NULL,
  `Money1` int(11) DEFAULT NULL,
  `Money2` int(11) DEFAULT NULL,
  `Money3` int(11) DEFAULT NULL,
  `Money4` int(11) DEFAULT NULL,
  `Money5` int(11) DEFAULT NULL,
  `Money6` int(11) DEFAULT NULL,
  `Money7` int(11) DEFAULT NULL,
  `Money8` int(11) DEFAULT NULL,
  `Money9` int(11) DEFAULT NULL,
  `Money10` int(11) DEFAULT NULL,
  `Money11` int(11) DEFAULT NULL,
  `Money12` int(11) DEFAULT NULL,
  `TotalTime` double DEFAULT NULL,
  `TotalMoney` int(11) DEFAULT NULL,
  `PTime1` double DEFAULT NULL,
  `PTime2` double DEFAULT NULL,
  `PTime3` double DEFAULT NULL,
  `PTime4` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PTime5` double DEFAULT NULL,
  `PTime6` double DEFAULT NULL,
  `PTime7` double DEFAULT NULL,
  `PTime8` double DEFAULT NULL,
  `PTime9` double DEFAULT NULL,
  `PTime10` double DEFAULT NULL,
  `PTime11` double DEFAULT NULL,
  `PTime12` double DEFAULT NULL,
  `PMoney1` double DEFAULT NULL,
  `PMoney2` double DEFAULT NULL,
  `PMoney3` double DEFAULT NULL,
  `PMoney4` double DEFAULT NULL,
  `PMoney5` double DEFAULT NULL,
  `PMoney6` double DEFAULT NULL,
  `PMoney7` double DEFAULT NULL,
  `PMoney8` double DEFAULT NULL,
  `PMoney9` double DEFAULT NULL,
  `PMoney10` double DEFAULT NULL,
  `PMoney11` double DEFAULT NULL,
  `PMoney12` double DEFAULT NULL,
  `PTotalTime` double DEFAULT NULL,
  `PTotalMoney` int(11) DEFAULT NULL,
  `UploadF` int(11) DEFAULT NULL,
  `BusinessType` tinytext COLLATE cp932_bin,
  `Product` tinytext COLLATE cp932_bin,
  `PMO` tinytext COLLATE cp932_bin
) ENGINE=InnoDB DEFAULT CHARSET=cp932 COLLATE=cp932_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `monthdata2_delete_before`
--

CREATE TABLE `monthdata2_delete_before` (
  `No` bigint(20) NOT NULL,
  `AccountId` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Name` tinytext CHARACTER SET utf8,
  `MemberY` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ProjectNo` bigint(20) DEFAULT NULL,
  `ProjectCord` text CHARACTER SET utf8,
  `Project` text CHARACTER SET utf8,
  `ProcessF` int(11) DEFAULT NULL,
  `Time1` double DEFAULT NULL,
  `Time2` double DEFAULT NULL,
  `Time3` double DEFAULT NULL,
  `Time4` double DEFAULT NULL,
  `Time5` double DEFAULT NULL,
  `Time6` double DEFAULT NULL,
  `Time7` double DEFAULT NULL,
  `Time8` double DEFAULT NULL,
  `Time9` double DEFAULT NULL,
  `Time10` double DEFAULT NULL,
  `Time11` double DEFAULT NULL,
  `Time12` double DEFAULT NULL,
  `Money1` int(11) DEFAULT NULL,
  `Money2` int(11) DEFAULT NULL,
  `Money3` int(11) DEFAULT NULL,
  `Money4` int(11) DEFAULT NULL,
  `Money5` int(11) DEFAULT NULL,
  `Money6` int(11) DEFAULT NULL,
  `Money7` int(11) DEFAULT NULL,
  `Money8` int(11) DEFAULT NULL,
  `Money9` int(11) DEFAULT NULL,
  `Money10` int(11) DEFAULT NULL,
  `Money11` int(11) DEFAULT NULL,
  `Money12` int(11) DEFAULT NULL,
  `TotalTime` double DEFAULT NULL,
  `TotalMoney` int(11) DEFAULT NULL,
  `PTime1` double DEFAULT NULL,
  `PTime2` double DEFAULT NULL,
  `PTime3` double DEFAULT NULL,
  `PTime4` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PTime5` double DEFAULT NULL,
  `PTime6` double DEFAULT NULL,
  `PTime7` double DEFAULT NULL,
  `PTime8` double DEFAULT NULL,
  `PTime9` double DEFAULT NULL,
  `PTime10` double DEFAULT NULL,
  `PTime11` double DEFAULT NULL,
  `PTime12` double DEFAULT NULL,
  `PMoney1` double DEFAULT NULL,
  `PMoney2` double DEFAULT NULL,
  `PMoney3` double DEFAULT NULL,
  `PMoney4` double DEFAULT NULL,
  `PMoney5` double DEFAULT NULL,
  `PMoney6` double DEFAULT NULL,
  `PMoney7` double DEFAULT NULL,
  `PMoney8` double DEFAULT NULL,
  `PMoney9` double DEFAULT NULL,
  `PMoney10` double DEFAULT NULL,
  `PMoney11` double DEFAULT NULL,
  `PMoney12` double DEFAULT NULL,
  `PTotalTime` double DEFAULT NULL,
  `PTotalMoney` int(11) DEFAULT NULL,
  `UploadF` int(11) DEFAULT NULL,
  `BusinessType` tinytext COLLATE cp932_bin,
  `Product` tinytext COLLATE cp932_bin,
  `PMO` tinytext COLLATE cp932_bin
) ENGINE=InnoDB DEFAULT CHARSET=cp932 COLLATE=cp932_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `monthdata2_delete_before2`
--

CREATE TABLE `monthdata2_delete_before2` (
  `No` bigint(20) NOT NULL,
  `AccountId` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Name` tinytext CHARACTER SET utf8,
  `MemberY` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ProjectNo` bigint(20) DEFAULT NULL,
  `ProjectCord` text CHARACTER SET utf8,
  `Project` text CHARACTER SET utf8,
  `ProcessF` int(11) DEFAULT NULL,
  `Time1` double DEFAULT NULL,
  `Time2` double DEFAULT NULL,
  `Time3` double DEFAULT NULL,
  `Time4` double DEFAULT NULL,
  `Time5` double DEFAULT NULL,
  `Time6` double DEFAULT NULL,
  `Time7` double DEFAULT NULL,
  `Time8` double DEFAULT NULL,
  `Time9` double DEFAULT NULL,
  `Time10` double DEFAULT NULL,
  `Time11` double DEFAULT NULL,
  `Time12` double DEFAULT NULL,
  `Money1` int(11) DEFAULT NULL,
  `Money2` int(11) DEFAULT NULL,
  `Money3` int(11) DEFAULT NULL,
  `Money4` int(11) DEFAULT NULL,
  `Money5` int(11) DEFAULT NULL,
  `Money6` int(11) DEFAULT NULL,
  `Money7` int(11) DEFAULT NULL,
  `Money8` int(11) DEFAULT NULL,
  `Money9` int(11) DEFAULT NULL,
  `Money10` int(11) DEFAULT NULL,
  `Money11` int(11) DEFAULT NULL,
  `Money12` int(11) DEFAULT NULL,
  `TotalTime` double DEFAULT NULL,
  `TotalMoney` int(11) DEFAULT NULL,
  `PTime1` double DEFAULT NULL,
  `PTime2` double DEFAULT NULL,
  `PTime3` double DEFAULT NULL,
  `PTime4` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PTime5` double DEFAULT NULL,
  `PTime6` double DEFAULT NULL,
  `PTime7` double DEFAULT NULL,
  `PTime8` double DEFAULT NULL,
  `PTime9` double DEFAULT NULL,
  `PTime10` double DEFAULT NULL,
  `PTime11` double DEFAULT NULL,
  `PTime12` double DEFAULT NULL,
  `PMoney1` double DEFAULT NULL,
  `PMoney2` double DEFAULT NULL,
  `PMoney3` double DEFAULT NULL,
  `PMoney4` double DEFAULT NULL,
  `PMoney5` double DEFAULT NULL,
  `PMoney6` double DEFAULT NULL,
  `PMoney7` double DEFAULT NULL,
  `PMoney8` double DEFAULT NULL,
  `PMoney9` double DEFAULT NULL,
  `PMoney10` double DEFAULT NULL,
  `PMoney11` double DEFAULT NULL,
  `PMoney12` double DEFAULT NULL,
  `PTotalTime` double DEFAULT NULL,
  `PTotalMoney` int(11) DEFAULT NULL,
  `UploadF` int(11) DEFAULT NULL,
  `BusinessType` tinytext COLLATE cp932_bin,
  `Product` tinytext COLLATE cp932_bin,
  `PMO` tinytext COLLATE cp932_bin
) ENGINE=InnoDB DEFAULT CHARSET=cp932 COLLATE=cp932_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `opcdmaster`
--

CREATE TABLE `opcdmaster` (
  `OPCD` varchar(4) NOT NULL,
  `CompanyName` text NOT NULL,
  `ItemCD` varchar(10) NOT NULL,
  `ItemName` text NOT NULL,
  `EparkCD` varchar(10) NOT NULL,
  `BusinessName` text NOT NULL,
  `Connect` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `pmo`
--

CREATE TABLE `pmo` (
  `No` bigint(20) NOT NULL,
  `PMO` text CHARACTER SET utf8,
  `Accounting` text CHARACTER SET utf8,
  `BusinessType` text CHARACTER SET utf8,
  `pmo_mail` varchar(100) COLLATE cp932_bin DEFAULT NULL COMMENT 'AccountIDからメールアドレスを取得'
) ENGINE=InnoDB DEFAULT CHARSET=cp932 COLLATE=cp932_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `pmo_new`
--

CREATE TABLE `pmo_new` (
  `No` bigint(20) NOT NULL,
  `PMO` text CHARACTER SET utf8,
  `Accounting` text CHARACTER SET utf8,
  `BusinessType` text CHARACTER SET utf8,
  `pmo_mail` varchar(100) COLLATE cp932_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp932 COLLATE=cp932_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `projectdata`
--

CREATE TABLE `projectdata` (
  `No` bigint(20) NOT NULL,
  `OPNo` varchar(6) COLLATE cp932_bin DEFAULT NULL,
  `ProjectY` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `ProjectCord` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `ArticleNo` varchar(30) CHARACTER SET utf8 NOT NULL,
  `HouseName` text COLLATE cp932_bin,
  `Project` text CHARACTER SET utf8,
  `Status` text CHARACTER SET utf8,
  `BusinessType` text CHARACTER SET utf8,
  `Custodian` text CHARACTER SET utf8,
  `Budget` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Accounting` text CHARACTER SET utf8,
  `PlanDate` date DEFAULT '0000-00-00',
  `StartDate` date DEFAULT '0000-00-00',
  `CloseDate` date DEFAULT '0000-00-00',
  `CancelDate` date DEFAULT '0000-00-00',
  `AddDate` date NOT NULL DEFAULT '0000-00-00',
  `AddTime` time NOT NULL DEFAULT '00:00:00',
  `AddName` text COLLATE cp932_bin,
  `EditDate` date NOT NULL DEFAULT '0000-00-00',
  `EditTime` time NOT NULL DEFAULT '00:00:00',
  `EditName` text COLLATE cp932_bin,
  `Note1` text COLLATE cp932_bin,
  `Note2` text COLLATE cp932_bin,
  `ApprovaFlg` varchar(3) COLLATE cp932_bin NOT NULL DEFAULT '承認',
  `Product` text COLLATE cp932_bin,
  `PMO` text COLLATE cp932_bin,
  `ProcessF` int(11) NOT NULL DEFAULT '0',
  `member_flag` varchar(1) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `OP_ArticleNo` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=cp932 COLLATE=cp932_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `projectdata_bu_20171219`
--

CREATE TABLE `projectdata_bu_20171219` (
  `No` bigint(20) NOT NULL,
  `OPNo` varchar(6) COLLATE cp932_bin DEFAULT NULL,
  `ProjectY` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `ProjectCord` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `ArticleNo` varchar(30) CHARACTER SET utf8 NOT NULL,
  `HouseName` text COLLATE cp932_bin,
  `Project` text CHARACTER SET utf8,
  `Status` text CHARACTER SET utf8,
  `BusinessType` text CHARACTER SET utf8,
  `Custodian` text CHARACTER SET utf8,
  `Budget` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Accounting` text CHARACTER SET utf8,
  `PlanDate` date DEFAULT '0000-00-00',
  `StartDate` date DEFAULT '0000-00-00',
  `CloseDate` date DEFAULT '0000-00-00',
  `CancelDate` date DEFAULT '0000-00-00',
  `AddDate` date NOT NULL DEFAULT '0000-00-00',
  `AddTime` time NOT NULL DEFAULT '00:00:00',
  `AddName` text COLLATE cp932_bin,
  `EditDate` date NOT NULL DEFAULT '0000-00-00',
  `EditTime` time NOT NULL DEFAULT '00:00:00',
  `EditName` text COLLATE cp932_bin,
  `Note1` text COLLATE cp932_bin,
  `Note2` text COLLATE cp932_bin,
  `ApprovaFlg` varchar(3) COLLATE cp932_bin NOT NULL DEFAULT '承認',
  `Product` text COLLATE cp932_bin,
  `PMO` text COLLATE cp932_bin,
  `ProcessF` int(11) NOT NULL DEFAULT '0',
  `member_flag` varchar(1) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `OP_ArticleNo` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=cp932 COLLATE=cp932_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `temp20171003`
--

CREATE TABLE `temp20171003` (
  `no` int(11) NOT NULL,
  `ArticleNo` varchar(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `temp20171006`
--

CREATE TABLE `temp20171006` (
  `no` int(11) NOT NULL,
  `ArticleNo` varchar(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `temp_project`
--

CREATE TABLE `temp_project` (
  `work_year` varchar(255) NOT NULL,
  `pj_code` varchar(255) NOT NULL,
  `work_type` varchar(255) NOT NULL,
  `pj_name` varchar(255) NOT NULL,
  `pmo` varchar(255) NOT NULL,
  `pay_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `temp_user`
--

CREATE TABLE `temp_user` (
  `employee_id` varchar(100) NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `pmo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `user_pmo`
--

CREATE TABLE `user_pmo` (
  `No` bigint(20) NOT NULL,
  `PMO` text CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=cp932 COLLATE=cp932_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `workcord`
--

CREATE TABLE `workcord` (
  `No` bigint(20) NOT NULL,
  `Process1` int(11) DEFAULT NULL,
  `Process2` text CHARACTER SET utf8,
  `WGroup1` text CHARACTER SET utf8,
  `WGroup2` text CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=cp932 COLLATE=cp932_bin;

-- --------------------------------------------------------

--
-- ビュー用の構造 `gyoshu`
--
DROP TABLE IF EXISTS `gyoshu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`hti`@`localhost` SQL SECURITY DEFINER VIEW `gyoshu`  AS  select `accountdata`.`PriceGroup` AS `PriceGroup`,`projectdata`.`Budget` AS `Budget`,`dailydata`.`SubMoney` AS `SubMoney`,`dailydata`.`SubTime` AS `SubTime`,`projectdata`.`BusinessType` AS `BusinessType`,`dailydata`.`YM` AS `YM` from ((`dailydata` left join `projectdata` on((`projectdata`.`ProjectCord` = `dailydata`.`ProjectCord`))) left join `accountdata` on((`accountdata`.`AccountId` = `dailydata`.`AccountId`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountdata`
--
ALTER TABLE `accountdata`
  ADD UNIQUE KEY `AccountId` (`AccountId`),
  ADD KEY `Pass` (`Pass`);

--
-- Indexes for table `accountingcord`
--
ALTER TABLE `accountingcord`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `businesstype`
--
ALTER TABLE `businesstype`
  ADD UNIQUE KEY `No` (`No`);

--
-- Indexes for table `businesstypeback`
--
ALTER TABLE `businesstypeback`
  ADD UNIQUE KEY `No` (`No`);

--
-- Indexes for table `dailydata`
--
ALTER TABLE `dailydata`
  ADD UNIQUE KEY `No` (`No`),
  ADD KEY `OP_ArticleNo` (`OP_ArticleNo`);

--
-- Indexes for table `manual_lock`
--
ALTER TABLE `manual_lock`
  ADD PRIMARY KEY (`lock_day`);

--
-- Indexes for table `monthdata`
--
ALTER TABLE `monthdata`
  ADD UNIQUE KEY `No` (`No`);

--
-- Indexes for table `monthdata2`
--
ALTER TABLE `monthdata2`
  ADD UNIQUE KEY `No` (`No`),
  ADD KEY `AccountId` (`AccountId`),
  ADD KEY `AccountId_2` (`AccountId`),
  ADD KEY `AccountId_3` (`AccountId`),
  ADD KEY `AccountId_4` (`AccountId`),
  ADD KEY `AccountId_5` (`AccountId`),
  ADD KEY `MemberY` (`MemberY`);

--
-- Indexes for table `monthdata2_copy`
--
ALTER TABLE `monthdata2_copy`
  ADD UNIQUE KEY `No` (`No`),
  ADD KEY `AccountId` (`AccountId`),
  ADD KEY `AccountId_2` (`AccountId`),
  ADD KEY `AccountId_3` (`AccountId`),
  ADD KEY `AccountId_4` (`AccountId`),
  ADD KEY `AccountId_5` (`AccountId`),
  ADD KEY `MemberY` (`MemberY`);

--
-- Indexes for table `monthdata2_delete_before`
--
ALTER TABLE `monthdata2_delete_before`
  ADD UNIQUE KEY `No` (`No`),
  ADD KEY `AccountId` (`AccountId`),
  ADD KEY `AccountId_2` (`AccountId`),
  ADD KEY `AccountId_3` (`AccountId`),
  ADD KEY `AccountId_4` (`AccountId`),
  ADD KEY `AccountId_5` (`AccountId`),
  ADD KEY `MemberY` (`MemberY`);

--
-- Indexes for table `monthdata2_delete_before2`
--
ALTER TABLE `monthdata2_delete_before2`
  ADD UNIQUE KEY `No` (`No`),
  ADD KEY `AccountId` (`AccountId`),
  ADD KEY `AccountId_2` (`AccountId`),
  ADD KEY `AccountId_3` (`AccountId`),
  ADD KEY `AccountId_4` (`AccountId`),
  ADD KEY `AccountId_5` (`AccountId`),
  ADD KEY `MemberY` (`MemberY`);

--
-- Indexes for table `pmo`
--
ALTER TABLE `pmo`
  ADD UNIQUE KEY `No` (`No`);

--
-- Indexes for table `projectdata`
--
ALTER TABLE `projectdata`
  ADD PRIMARY KEY (`OP_ArticleNo`,`ProjectY`) USING BTREE;

--
-- Indexes for table `projectdata_bu_20171219`
--
ALTER TABLE `projectdata_bu_20171219`
  ADD PRIMARY KEY (`OP_ArticleNo`);

--
-- Indexes for table `user_pmo`
--
ALTER TABLE `user_pmo`
  ADD UNIQUE KEY `No` (`No`);

--
-- Indexes for table `workcord`
--
ALTER TABLE `workcord`
  ADD UNIQUE KEY `No` (`No`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
