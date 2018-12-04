-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 28 nov 2018 om 15:31
-- Serverversie: 10.1.31-MariaDB
-- PHP-versie: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ddwt18_week2`
--
CREATE DATABASE IF NOT EXISTS `ddwt18_week2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ddwt18_week2`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `series`
--

CREATE TABLE `series` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `creator` varchar(255) NOT NULL,
  `seasons` int(11) NOT NULL,
  `abstract` varchar(255) NOT NULL,
  `user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `series`
--

INSERT INTO `series` (`id`, `name`, `creator`, `seasons`, `abstract`, `user`) VALUES
(1125, 'Koekeloere', 'Henk', 6, 'Een mooi verhaal', 902),
(1126, 'House of cards', 'Gekke Gerrit', 6, 'Francis Underwood is een man die er niet van houdt om tegengewerkt te worden. Als blijkt dat de door President Walker beloofde job als minister van Buitenlandse Zaken van de Verenigde Staten toch naar iemand anders gaat komt de duivel in Underwood naar bo', 902),
(1127, 'Thomas de Trein', 'Britt Allcroft, Philip D. Fehrle, Ross Hastings', 99, 'This popular series follows the adventures of Thomas the Tank Engine and all of his engine friends on the Island of Sodor.', 902),
(1128, 'Friends', 'Sirletonjojo', 6, 'Vrienden voor het leven\r\n', 903),
(1129, 'Breaking Bad', 'Vince Gilligan', 6, 'Een scheikundeleraar besluit zijn leven over een heel andere boeg te gooien als hij plots te horen krijgt dat hij terminaal ziek is. Hij gaat samen met een oud-leerling crystal meth produceren en verkopen om zijn gezin goed achter te kunnen laten.', 903),
(1130, 'Black Mirror', 'Charlie Brooker', 4, 'De wereld ontwikkelt zich in rap tempo en met name de technologische stappen op Internet zijn soms best beangstigend. Charlie Brooker schetste de grootste horrorscenario’s in Black Mirror. Vanaf het derde seizoen is dit een Netflix Original. In Black Mirr', 904);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstname`, `lastname`) VALUES
(891, 'gekkegerriieee', '$2y$10$qjoBiTcdCVoGaA86L45sW.G34OHlXZ83ClZyWcy6jUlBaemUIjK.i', 'Thomas', 'Tan'),
(892, 'Henkdebiel', '$2y$10$IJQuVaSaoASu7IyPRbM7WO5PYxGbY0npfcS5Wn3UrBH1IPrFmUDZ.', 'Thomas', 'Tan'),
(893, 'diegekkeman', '$2y$10$/Sf3WXQIykLd.4Wn.MRgzOqdhGmj5PlgT0EQwYaoZo0H5R2LNTsyW', 'Joris', 'De boskabouter'),
(894, 'Gijsenjemoeder', '$2y$10$yKBTyvymweotC5vU2/LgLOeMEx6OWm7cDlTvbpDAAIEpAGPSRk.am', 'Gijs', 'Danoe'),
(895, 'zoekachine', '$2y$10$mKSeMil3uSTP.iGloqpW8ey6HvjUIDjiWaRspMicMhDmUZRCVVp/m', 'Gekke', 'man'),
(896, 'mijnmama', '$2y$10$purx0vJPyI68xf1dLJPI2.rdtCLoGQCo.MHGSmbBtoH3yj01SWppC', 'Menneer', 'de uil'),
(897, 'Meneertje', '$2y$10$XTLWFC0LM7ThjTdv9VI5wuUZ1p97FHU8EeSINXsWWVxPCnybKb9O2', 'Jan', 'Slachter'),
(898, 'mevrouwDijksma', '$2y$10$j35fQNo2L/oTBzEZiitnruvuzmzLkwG9OA5FyTh/aeru6J5a.Mati', 'Sofie', 'Dijkstra'),
(899, 'Vliegendehollander', '$2y$10$B9rpj7MvErJBPLaN5GQJMOJUPVTQhe7.77tAS50UlHQEJ26SYZV2W', 'Erica', 'Terpstra'),
(900, 'Airlineeees', '$2y$10$YZEbnkVDmcpSRE1dEAvYae5U.nedFh2FFV4QuB00AhkS9jz2SB1Hq', 'Jesse', 'Vliegtuig'),
(902, 'Gijsje123', '$2y$10$NNmA679tvkl5HmM8Y3W1fegRnhWQikbnZyVDqYLXjvR6WiV/WQcJC', 'Gijs', 'Danoe'),
(903, 'ThomasTan', '$2y$10$HsCT4SX.PRbE6vfEBsgyR.44QwuwJ2dQ343fpY2WrRtqB0n3/BziK', 'Thomas', 'Tan'),
(904, 'Benjamin', '$2y$10$hnbaUroeQKOlm.bSAUVSMOcSSuMCIRuUN.IypHG2/9NXIrKsDzh36', 'Benjamin', 'Kleppe');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `user` (`user`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `series`
--
ALTER TABLE `series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1131;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=905;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `series`
--
ALTER TABLE `series`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
