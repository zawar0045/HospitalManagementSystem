-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2024 at 02:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `addapoinment` (IN `pid` INT, IN `did` INT, IN `dattime` DATETIME)   begin
insert into  apoinment(P_ID,D_ID,datetime) value(pid,did,dattime);
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `addBill` (IN `pid` INT, IN `APID` INT, IN `Bill` DOUBLE)   begin
insert into 
bill(PID,AP_ID,Bill) value(pid,APID,Bill);
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `addDoctor` (IN `name` TEXT, IN `edu` TEXT, IN `disg` TEXT, IN `salary` DOUBLE)   begin
insert into doctor(Name,Edu,disg,salery) value(name,edu,disg,salary);
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `addpaitent` (IN `id` INT, IN `name` TEXT, IN `issue` TEXT, IN `age` INT, IN `phno` VARCHAR(12))   begin
insert into paitent(Doc_ID,Name,Issue,age,phno) value(id,name,issue,age,phno);
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteapoinment` (IN `IDD` INT)   begin
delete from apoinment where ID=IDD;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deletedoctor` (IN `name` TEXT)   begin
delete from Doctor where Name=name;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deletepaitent` (IN `name` TEXT)   begin
delete from Paitent where Name=name;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `searchDoctor` (IN `name` TEXT)   begin
select *from  Doctor where Name=name;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateapoinment` (IN `IDD` INT, `pid` INT, IN `did` INT, IN `dattime` DATETIME)   begin
update apoinment set  p_ID= pid ,D_ID=did, datetime=dattime where ID=IDD;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateDoctor` (IN `D_id` INT, IN `dname` TEXT, IN `dedu` TEXT, IN `ddisg` TEXT, IN `dsalery` DOUBLE)   begin
Update  Doctor set Name=dname,Edu=dedu,disg=ddisg,salery=dsalery where ID=D_id;

end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updatepaitent` (IN `pid` INT, IN `Did` INT, IN `name` TEXT, IN `issue` TEXT, IN `Page` INT, IN `Pphno` VARCHAR(15))   begin
update  Paitent set Doc_ID=Did,Name=name ,Issue=issue,age=Page,phno=Pphno where ID=pid;
end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `apoinment`
--

CREATE TABLE `apoinment` (
  `ID` int(11) NOT NULL,
  `p_ID` int(11) NOT NULL,
  `D_ID` int(11) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apoinment`
--

INSERT INTO `apoinment` (`ID`, `p_ID`, `D_ID`, `datetime`) VALUES
(1, 2, 1, '0000-00-00 00:00:00'),
(2, 2, 1, '2024-10-11 15:00:00'),
(3, 2, 2, '2024-10-12 09:00:00'),
(4, 2, 2, '2024-10-12 09:00:00'),
(5, 3, 5, '2024-10-12 09:00:00'),
(6, 3, 5, '2024-10-12 09:00:00'),
(7, 2, 5, '2024-10-12 09:05:00'),
(8, 2, 3, '2024-10-12 09:05:00'),
(9, 2, 2, '2024-10-12 09:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `ID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `AP_ID` int(11) NOT NULL,
  `Bill` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`ID`, `PID`, `AP_ID`, `Bill`) VALUES
(1, 1, 1, 12000);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Edu` text NOT NULL,
  `disg` text NOT NULL,
  `salery` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`ID`, `Name`, `Edu`, `disg`, `salery`) VALUES
(1, 'Saif', 'MBBS', 'Dinatologist', 150000),
(2, 'Ali', 'MBBS', 'dinatolgist', 32000),
(3, 'zawar', 'asd', 'das', 1200),
(4, 'moiz', 'asd', 'sad', 12000),
(5, 'Naem', 'asd', 'sad', 12000);

-- --------------------------------------------------------

--
-- Table structure for table `paitent`
--

CREATE TABLE `paitent` (
  `ID` int(11) NOT NULL,
  `Doc_ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Issue` text NOT NULL,
  `age` int(11) NOT NULL,
  `phno` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paitent`
--

INSERT INTO `paitent` (`ID`, `Doc_ID`, `Name`, `Issue`, `age`, `phno`) VALUES
(2, 2, 'moiz', 'head pain', 12, '3298479'),
(3, 3, 'faizan', 'head pain', 12, '4567209834');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apoinment`
--
ALTER TABLE `apoinment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `paitent` (`p_ID`),
  ADD KEY `d_ID` (`D_ID`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `paitent_ID` (`PID`),
  ADD KEY `AP_id` (`AP_ID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `paitent`
--
ALTER TABLE `paitent`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `doctor_ID` (`Doc_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apoinment`
--
ALTER TABLE `apoinment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `paitent`
--
ALTER TABLE `paitent`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apoinment`
--
ALTER TABLE `apoinment`
  ADD CONSTRAINT `d_ID` FOREIGN KEY (`D_ID`) REFERENCES `doctor` (`ID`),
  ADD CONSTRAINT `paitent` FOREIGN KEY (`p_ID`) REFERENCES `paitent` (`ID`);

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `AP_id` FOREIGN KEY (`AP_ID`) REFERENCES `apoinment` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
