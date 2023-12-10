-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2023 at 01:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be20_cr6_bigeventsstavrosanagnostakis`
--
CREATE DATABASE IF NOT EXISTS `be20_cr6_bigeventsstavrosanagnostakis` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be20_cr6_bigeventsstavrosanagnostakis`;

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20231208124304', '2023-12-08 13:43:58', 51);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `description` longtext NOT NULL,
  `picture` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `url` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `date`, `description`, `picture`, `capacity`, `mail`, `phone_number`, `address`, `url`, `type`) VALUES
(1, 'FAK Austria Wien - Rapid Wien', '2023-12-10 15:00:00', 'Football game between the two city rivals for the Austrian Bundesliga', 'https://cdn.pixabay.com/photo/2016/12/30/10/58/san-siro-1940307_640.jpg', 25000, 'fakaustria@gmail.com', '+436557876', 'Generali-Arena Horrplatz 1. A-1100 Wien, Austria', 'http://atbundesliga/events/sports', 'Sports'),
(2, 'Tosca', '2023-12-30 18:00:00', 'Tosca is an opera in three acts by Giacomo Puccini to an Italian libretto by Luigi Illica and Giuseppe Giacosa.', 'https://cdn.pixabay.com/photo/2015/01/09/17/34/opera-594592_1280.jpg', 1500, 'operawien@gmail.com', '+4385377432', 'Opera House, Opernring 2, 1010 Wien, Austria', 'https://www.wiener-staatsoper.at/en/service/address', 'Theater'),
(3, 'Elektra', '2024-01-25 19:30:00', 'Elektra, is a one-act opera by Richard Strauss, to a German-language libretto by Hugo von Hofmannsthal, which he adapted from his 1903 drama Elektra.', 'https://cdn.pixabay.com/photo/2016/01/19/11/17/vienna-1148435_1280.jpg', 730, 'operalondon@gmail.com', '+47353756', 'Royal Opera House, Bow Street, London, WC2E, UK', 'https://www.roh.org.uk/visit/visitor-information', 'Theater'),
(4, 'Bruce Springsteen', '2024-02-10 18:30:00', 'Bruce Frederick Joseph Springsteen (born September 23, 1949) is an American rock singer, songwriter and guitarist. Nicknamed,The Boss, he has released 21 studio albums during a career spanning six decades, most of which feature his backing band, the E Street Band.', 'https://cdn.pixabay.com/photo/2015/11/22/19/04/crowd-1056764_640.jpg', 67215, 'puscasarena@mail.com', '+44763323', 'Stadium Puskas Arena, Budapest, 1146 Hungary', 'https://www.stadiumguide.com/new-puskas-ferenc-stadion/', 'Music'),
(5, 'Christmas Market Wien', '2023-12-24 14:00:00', 'The most famous and biggest christmas market in Europe', 'https://cdn.pixabay.com/photo/2019/12/19/10/56/christmas-market-4705885_640.jpg', 3000, 'rathauswien@gmail.com', '+43644327', 'Rathaus, Friedrich-Schmidt-Platz 1, 1010 Wien, Austria', 'Friedrich-Schmidt-Platz 1, 1010 Wien', 'Other'),
(6, 'Swan lake ballet', '2023-12-20 19:00:00', 'A ballet composed by Russian composer Pyotr Ilyich Tchaikovsky in 1875–76. It is now one of the most popular ballets of all time', 'https://cdn.pixabay.com/photo/2018/02/22/23/07/people-3174228_640.jpg', 4300, 'met@gmail.org', '+536443274', 'MET Opera, 30 Lincoln Center Plaza, 90210 New York City, USA', 'https://www.metopera.org/calendar/', 'Other'),
(7, 'Real Madrid - Barcelona', '2024-01-14 17:45:00', 'Spanish basketball cup game between two of the most famous teams', 'https://cdn.pixabay.com/photo/2016/07/27/01/36/basketball-1544370_640.jpg', 18000, 'realmadrid@gmail.es', '+496453465', 'S.Bernabeou stadium, Avenida Concha Espina, 28036 Madrid, Spain', 'https://www.realmadrid.com/', 'Sports'),
(8, 'Oasis', '2024-03-17 19:15:00', 'Music live concert with english band Oasis', 'https://cdn.pixabay.com/photo/2021/01/01/12/44/concert-5878452_640.jpg', 33000, 'boca@gmail.ar', '+796425362', 'La Bombonera stadium, Brandsen 805, C1161 CABA, Buenos Aires, Argentina', 'https://turismo.buenosaires.gob.ar/', 'Music'),
(9, 'Napoleon', '2023-12-10 16:30:00', 'Movie premiere in Paris Theater', 'https://cdn.pixabay.com/photo/2017/02/23/21/35/cinema-2093264_640.jpg', 840, 'paristheter@mail.fr', '+496443360', 'National Theater, 15 Rue Blanche, 75009 Paris, France', 'https://theter.paris.gob.fr/', 'Movies'),
(10, 'Pearl Jam', '2024-06-07 20:00:00', 'Live music concert by american group Pearl Jam', 'https://cdn.pixabay.com/photo/2016/11/29/07/36/audience-1868137_640.jpg', 18000, 'sahouse@mail.com', '+78003221134', 'S.A. Live House, Matroosfontein 32, 7490, Cape Town, South Africa', 'https://www.gov.za/about', 'Music'),
(11, 'Oppenheimer', '2023-12-12 17:30:00', 'Oppenheimer is an epic biographical thriller film[6] written and directed by Christopher Nolan. It stars Cillian Murphy as J. Robert Oppenheimer, the American theoretical physicist credited with being the \"father of the atomic bomb\" for his role in the Manhattan Project', 'https://cdn.pixabay.com/photo/2017/07/27/15/24/movie-2545676_640.jpg', 250, 'opencinema@mail.com', '+302310554432', 'ODEON cinema, Aristotelous sq. 10, Thessaloniki 546 23, Greece', 'https://www.filmfestival.gr/el/', 'Movies');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
