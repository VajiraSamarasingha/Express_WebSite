-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 15, 2023 at 03:46 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20270618_expressway`
--

-- --------------------------------------------------------

--
-- Table structure for table `busdetails`
--

CREATE TABLE `busdetails` (
  `BusNo` varchar(8) NOT NULL,
  `BusName` varchar(30) NOT NULL,
  `BusRoot` varchar(50) NOT NULL,
  `Contact` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `busdetails`
--

INSERT INTO `busdetails` (`BusNo`, `BusName`, `BusRoot`, `Contact`) VALUES
('SN01', 'Pehesara_Express', 'Makubura', '0786534567'),
('SN02', 'Ummda_Express', 'Kadawatha', '0767654345'),
('SN03', 'Kerala', 'Galle', '0775434567');

-- --------------------------------------------------------

--
-- Table structure for table `r01`
--

CREATE TABLE `r01` (
  `Rnum` int(10) NOT NULL,
  `Departuretime` varchar(20) NOT NULL,
  `ArrivalTime` varchar(20) NOT NULL,
  `Busno` varchar(20) NOT NULL,
  `Contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `r01`
--

INSERT INTO `r01` (`Rnum`, `Departuretime`, `ArrivalTime`, `Busno`, `Contact`) VALUES
(1, '4.00', '5.30', 'NT2345', '0777898654'),
(2, '4.30', '6.00', 'NT6565', '0716235622'),
(3, '5.00', '6.30', 'NT2342', '0764352415'),
(4, '5.30', '7.00', 'NT2343', '0764352343'),
(5, '6.00', '7.30', 'NT2349', '0764352419'),
(6, '6.30', '8.00', 'NT2322', '0723432321');

-- --------------------------------------------------------

--
-- Table structure for table `r02`
--

CREATE TABLE `r02` (
  `Rnum` int(10) NOT NULL,
  `Departuretime` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ArrivalTime` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Busno` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Contact` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `r02`
--

INSERT INTO `r02` (`Rnum`, `Departuretime`, `ArrivalTime`, `Busno`, `Contact`) VALUES
(1, '4.30', '5.30', 'NT4323', '0764353423'),
(2, '5.30', '6.30', 'NT4312', '0723453423'),
(3, '6.30', '7.30', 'NT6576', '0754345343'),
(4, '7.30', '8.30', 'NT6587', '0712323432'),
(5, '8.30', '9.30', 'NT8767', '076565678'),
(6, '10.00', '11.00', 'NT98765', '0723423212');

-- --------------------------------------------------------

--
-- Table structure for table `r03`
--

CREATE TABLE `r03` (
  `Rnum` int(10) NOT NULL,
  `Departuretime` varchar(20) NOT NULL,
  `ArrivalTime` varchar(20) NOT NULL,
  `Busno` varchar(20) NOT NULL,
  `Contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `r03`
--

INSERT INTO `r03` (`Rnum`, `Departuretime`, `ArrivalTime`, `Busno`, `Contact`) VALUES
(1, '4.00', '6.00', 'NT8574', '0764352415'),
(2, '5.00', '7.00', 'NT4785', '0764352417'),
(3, '6.00', '8.00', 'NT7124', '0764354578'),
(4, '7.00', '9.00', 'NT5245', '0764354558'),
(5, '8.00', '10.00', 'NT5874', '0764354474'),
(6, '10.00', '12.00', 'NT8745', '0764354458');

-- --------------------------------------------------------

--
-- Table structure for table `r04`
--

CREATE TABLE `r04` (
  `Rnum` int(10) NOT NULL,
  `Departuretime` varchar(20) NOT NULL,
  `ArrivalTime` varchar(20) NOT NULL,
  `Busno` varchar(20) NOT NULL,
  `Contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `r04`
--

INSERT INTO `r04` (`Rnum`, `Departuretime`, `ArrivalTime`, `Busno`, `Contact`) VALUES
(1, '4.00', '5.00', 'NT2342', '076254142'),
(2, '5.00', '6.00', 'NT2584', '0752541585'),
(3, '6.00', '7.00', 'NT2585', '0752541547'),
(4, '8.00', '9.00', 'NT2898', '0752541563'),
(5, '10.00', '11.00', 'NT6525', '0752541212'),
(6, '12.00', '13.00', 'NT0212', '0752541295');

-- --------------------------------------------------------

--
-- Table structure for table `rootdetails`
--

CREATE TABLE `rootdetails` (
  `RootNum` varchar(8) NOT NULL,
  `Distance` varchar(20) NOT NULL,
  `TicketPrice` varchar(20) NOT NULL,
  `StartL` varchar(50) NOT NULL,
  `EndL` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rootdetails`
--

INSERT INTO `rootdetails` (`RootNum`, `Distance`, `TicketPrice`, `StartL`, `EndL`) VALUES
('r01', '90km', '870/=', 'Makumbura', 'Galle'),
('r02', '40km', '380/=', 'Makumbura', 'Gampaha'),
('r03', '140km', '1280/=', 'Makumbura', 'Matara'),
('r04', '60km', '640/=', 'Makumbura', 'Panadura');

-- --------------------------------------------------------

--
-- Table structure for table `shedule`
--

CREATE TABLE `shedule` (
  `Timeslot_Num` varchar(8) NOT NULL,
  `ArrivalTime` varchar(8) NOT NULL,
  `DepartureTime` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shedule`
--

INSERT INTO `shedule` (`Timeslot_Num`, `ArrivalTime`, `DepartureTime`) VALUES
('TM01', '14.30', '09:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `busdetails`
--
ALTER TABLE `busdetails`
  ADD PRIMARY KEY (`BusNo`);

--
-- Indexes for table `r01`
--
ALTER TABLE `r01`
  ADD PRIMARY KEY (`Rnum`);

--
-- Indexes for table `r02`
--
ALTER TABLE `r02`
  ADD PRIMARY KEY (`Rnum`);

--
-- Indexes for table `r03`
--
ALTER TABLE `r03`
  ADD PRIMARY KEY (`Rnum`);

--
-- Indexes for table `r04`
--
ALTER TABLE `r04`
  ADD PRIMARY KEY (`Rnum`);

--
-- Indexes for table `rootdetails`
--
ALTER TABLE `rootdetails`
  ADD PRIMARY KEY (`RootNum`);

--
-- Indexes for table `shedule`
--
ALTER TABLE `shedule`
  ADD PRIMARY KEY (`Timeslot_Num`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
