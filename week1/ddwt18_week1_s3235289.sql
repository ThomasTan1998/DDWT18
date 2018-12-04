-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 21 nov 2018 om 12:24
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
-- Database: `ddwt18_week1`
--
CREATE DATABASE IF NOT EXISTS `ddwt18_week1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ddwt18_week1`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `series`
--

CREATE TABLE `series` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `creator` varchar(255) NOT NULL,
  `seasons` int(11) NOT NULL,
  `abstract` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `series`
--

INSERT INTO `series` (`id`, `name`, `creator`, `seasons`, `abstract`) VALUES
(1, 'koekeloere', 'gekkie', 5, 'hallo dit is tom, tom is een jongen'),
(1111, 'Breaking Bad', 'Vince Gilligan', 5, 'Een scheikundeleraar besluit zijn leven over een heel andere boeg te gooien als hij plots te horen krijgt dat hij terminaal ziek is. Hij gaat samen met een oud-leerling crystal meth produceren en verkopen om zijn gezin goed achter te kunnen laten.'),
(1112, 'House of cards', 'Beau Willimon', 6, 'A Congressman works with his equally conniving wife to exact revenge on the people who betrayed him.'),
(1113, 'Black Mirror', 'Charlie Brooker', 4, 'De wereld ontwikkelt zich in rap tempo en met name de technologische stappen op Internet zijn soms best beangstigend. Charlie Brooker schetste de grootste horrorscenario’s in Black Mirror. Vanaf het derde seizoen is dit een Netflix Original. In Black Mirr'),
(1114, 'Sherlock', 'Mark Gatiss', 4, 'In deze moderne vertolking van Sherlock nemen Benedict Cumberbatch en Martin Freeman de rollen van Sherlock Holmes en Dr. Watson op zich. De meest historische zaken lossen ze op, maar het gaat pas echt fout wanneer Moriarty zich ermee kom bemoeien, de gro'),
(1115, 'Jane the Virgin', 'Jennie Snyder Uman', 3, 'Een vrome, hardwerkende latina krijgt bij een doktersbezoek te horen dat ze per ongeluk kunstmatig geïnsemineerd is, wat haar hele leven overhoop gooit.'),
(1123, 'Best Night', 'Gekke Gerrit', 4, 'Hallo dit is\r\n'),
(1124, 'Jesusena', 'Gerrit', 3, 'Jusesuna wat een mooi verhaal'),
(1127, 'Best Night Ever', 'Gekke Gerrit', 9, 'Gekke Gerrit was op bezoek bij zijn tante');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `series`
--
ALTER TABLE `series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1129;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
