-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 13, 2024 at 05:00 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sigmaokna`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `borders`
--

CREATE TABLE `borders` (
  `Border_ID` int(11) NOT NULL,
  `Border_Name` text NOT NULL,
  `Border_Price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `borders`
--

INSERT INTO `borders` (`Border_ID`, `Border_Name`, `Border_Price`) VALUES
(1, 'Klasyczne drewno', 15),
(2, 'Plastik PVC', 5),
(3, 'Aluminium', 20),
(4, 'Kamienne', 120),
(5, 'Betonowe', 35);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `windows`
--

CREATE TABLE `windows` (
  `Window_ID` int(11) NOT NULL,
  `Window_Name` text NOT NULL,
  `Window_Price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `windows`
--

INSERT INTO `windows` (`Window_ID`, `Window_Name`, `Window_Price`) VALUES
(1, 'Jednowarstwowe', 200),
(2, 'Dwuwarstwowe', 300),
(3, 'Trzywarstwowe', 500),
(4, 'Kuloodporne 9mm', 1200),
(5, 'Kuloodporne 500 magnum', 5000);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `borders`
--
ALTER TABLE `borders`
  ADD PRIMARY KEY (`Border_ID`);

--
-- Indeksy dla tabeli `windows`
--
ALTER TABLE `windows`
  ADD PRIMARY KEY (`Window_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `borders`
--
ALTER TABLE `borders`
  MODIFY `Border_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `windows`
--
ALTER TABLE `windows`
  MODIFY `Window_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
