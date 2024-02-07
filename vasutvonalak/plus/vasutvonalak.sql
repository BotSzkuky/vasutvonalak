-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Feb 07. 22:08
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `vasutvonalak`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `autazasido`
--

CREATE TABLE `autazasido` (
  `Id` int(11) NOT NULL,
  `indulas` varchar(255) NOT NULL,
  `erkezes` varchar(255) NOT NULL,
  `tavolsag` int(11) NOT NULL,
  `sebesseg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `erkezes`
--

CREATE TABLE `erkezes` (
  `Id` int(11) NOT NULL,
  `Varosok` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `erkezes`
--

INSERT INTO `erkezes` (`Id`, `Varosok`) VALUES
(2, 'Budapest'),
(3, 'Kecskemét');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `indulas`
--

CREATE TABLE `indulas` (
  `Id` int(11) NOT NULL,
  `Varosok` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `indulas`
--

INSERT INTO `indulas` (`Id`, `Varosok`) VALUES
(2, 'Budapest'),
(3, 'Kecskemét');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tavolsag`
--

CREATE TABLE `tavolsag` (
  `Id` int(11) NOT NULL,
  `indulas` varchar(255) NOT NULL,
  `erkezes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `autazasido`
--
ALTER TABLE `autazasido`
  ADD PRIMARY KEY (`Id`);

--
-- A tábla indexei `erkezes`
--
ALTER TABLE `erkezes`
  ADD PRIMARY KEY (`Id`);

--
-- A tábla indexei `indulas`
--
ALTER TABLE `indulas`
  ADD PRIMARY KEY (`Id`);

--
-- A tábla indexei `tavolsag`
--
ALTER TABLE `tavolsag`
  ADD PRIMARY KEY (`Id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `erkezes`
--
ALTER TABLE `erkezes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `indulas`
--
ALTER TABLE `indulas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
