-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2020 a las 06:34:08
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_de_datos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'configuroweb', '4b67deeb9aba04a5b54632ad19934f26', '2020-11-06 16:10:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) NOT NULL,
  `Section` varchar(5) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Primero', 1, 'A', '2017-06-06 16:52:33', '2020-11-10 02:06:28'),
(2, 'Segundo', 2, 'B', '2017-06-06 17:21:20', '2020-11-10 02:07:56'),
(4, 'Tercero', 3, 'B', '2017-06-07 09:20:23', '2020-11-10 02:08:37'),
(5, 'Cuarto', 4, 'B', '2017-06-07 09:35:08', '2020-11-10 02:09:18'),
(6, 'Quinto', 5, 'A', '2017-08-28 18:42:41', '2020-11-10 02:09:54'),
(7, 'Sexto', 6, 'A', '2017-08-28 18:52:00', '2020-11-10 02:10:30'),
(8, 'Séptimo', 7, 'B', '2017-08-28 19:21:05', '2020-11-10 02:10:55'),
(9, 'Octavo', 8, 'B', '2020-11-10 04:21:17', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(2, 1, 1, 2, 100, '2017-08-24 17:54:09', '2017-08-28 18:34:32'),
(3, 1, 1, 1, 80, '2017-08-24 17:54:09', '2017-08-28 18:34:25'),
(4, 1, 1, 5, 78, '2017-08-24 17:54:09', '2017-08-28 18:34:26'),
(5, 1, 1, 4, 60, '2017-08-24 17:54:09', '2017-08-28 18:34:26'),
(6, 2, 4, 2, 90, '2017-08-28 18:38:18', NULL),
(7, 2, 4, 1, 75, '2017-08-28 18:38:18', NULL),
(8, 2, 4, 5, 56, '2017-08-28 18:38:18', '2017-08-28 19:26:42'),
(9, 2, 4, 4, 80, '2017-08-28 18:38:18', '2017-08-28 19:26:42'),
(10, 4, 7, 2, 54, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(11, 4, 7, 1, 85, '2017-08-28 18:56:21', NULL),
(12, 4, 7, 5, 55, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(13, 4, 7, 7, 65, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(14, 5, 8, 2, 75, '2017-08-28 19:25:07', NULL),
(15, 5, 8, 1, 56, '2017-08-28 19:25:07', NULL),
(16, 5, 8, 5, 52, '2017-08-28 19:25:07', NULL),
(17, 5, 8, 4, 80, '2017-08-28 19:25:07', NULL),
(18, 6, 1, 2, 99, '2020-11-06 16:15:51', '2020-11-06 16:20:14'),
(19, 6, 1, 5, 90, '2020-11-06 16:15:51', '2020-11-06 16:20:14'),
(20, 6, 1, 4, 85, '2020-11-06 16:15:51', '2020-11-06 16:20:14'),
(21, 7, 2, 5, 100, '2020-11-09 01:15:55', NULL),
(22, 9, 9, 4, 95, '2020-11-10 04:37:44', NULL),
(23, 9, 9, 2, 95, '2020-11-10 04:37:44', '2020-11-10 04:42:49'),
(24, 9, 9, 1, 97, '2020-11-10 04:37:44', NULL),
(25, 9, 9, 5, 100, '2020-11-10 04:37:44', '2020-11-10 04:42:49'),
(26, 8, 9, 4, 85, '2020-11-10 04:44:16', NULL),
(27, 8, 9, 2, 75, '2020-11-10 04:44:16', NULL),
(28, 8, 9, 1, 89, '2020-11-10 04:44:16', NULL),
(29, 8, 9, 5, 52, '2020-11-10 04:44:16', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `RollId` varchar(100) NOT NULL,
  `StudentEmail` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'Cristina Méndez', '46456', 'cmendez@cweb.com', 'Female', '2014-06-17', 1, '2017-06-12 10:30:57', '2020-11-10 03:42:01', 1),
(2, 'Rafael García', '10861', 'rgarcia@cweb.com', 'Masculino', '2013-08-08', 4, '2017-08-19 19:18:28', '2020-11-10 03:41:28', 0),
(3, 'Juan Escobar', '2626', 'jescobar@cweb.com', 'Masculino', '2014-08-06', 6, '2017-08-28 18:45:31', '2020-11-10 03:41:41', 1),
(4, 'Rafael Pérez', '990', 'rperez@cweb.com', 'Masculino', '2001-02-03', 7, '2017-08-28 18:54:58', '2020-11-10 03:41:43', 1),
(5, 'Enrique Flórez', '122', 'eflorez@cweb.com', 'Masculino', '2014-05-12', 8, '2017-08-28 19:23:53', '2020-11-10 03:41:48', 1),
(6, 'Juan Carlo', '10', 'jcarlo@cweb.com', 'Masculino', '2020-11-06', 1, '2020-11-06 16:15:26', '2020-11-10 03:41:51', 1),
(7, 'Isabela Ramírez', '8100', 'iramirez@cweb.com', 'Femenino', '2012-06-06', 2, '2020-11-09 01:13:52', '2020-11-10 03:41:20', 1),
(8, 'Adrián Galán', '9871', 'agalan@cweb.com', 'Male', '2009-06-07', 9, '2020-11-10 04:29:53', NULL, 1),
(9, 'Francisco Morales', '9872', 'fmorales@cweb.com', 'Male', '2004-11-05', 9, '2020-11-10 04:36:14', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(3, 2, 5, 1, '2017-06-07 11:16:56', '2017-06-07 11:16:56'),
(4, 1, 2, 1, '2017-06-12 06:46:32', '2017-06-12 06:46:32'),
(5, 1, 4, 1, '2017-06-12 06:46:35', '2017-06-12 06:46:35'),
(6, 1, 5, 1, '2017-06-12 06:46:40', '2017-06-12 06:46:40'),
(8, 4, 4, 1, '2017-08-26 03:21:27', '2017-08-26 03:21:27'),
(10, 4, 1, 1, '2017-08-26 03:22:05', '2017-08-26 03:22:05'),
(12, 4, 2, 1, '2017-08-26 03:22:15', '2017-08-26 03:22:15'),
(13, 4, 5, 1, '2017-08-26 03:22:20', '2017-08-26 03:22:20'),
(14, 6, 1, 1, '2017-08-28 18:44:06', '2017-08-28 18:44:06'),
(15, 6, 2, 1, '2017-08-28 18:44:12', '2017-08-28 18:44:12'),
(16, 6, 4, 1, '2017-08-28 18:44:18', '2017-08-28 18:44:18'),
(17, 6, 6, 1, '2017-08-28 18:44:23', '2017-08-28 18:44:23'),
(18, 7, 1, 1, '2017-08-28 18:53:12', '2017-08-28 18:53:12'),
(19, 7, 7, 1, '2017-08-28 18:53:19', '2017-08-28 18:53:19'),
(20, 7, 2, 1, '2017-08-28 18:53:38', '2017-08-28 18:53:38'),
(21, 7, 6, 1, '2017-08-28 18:53:44', '2017-08-28 18:53:44'),
(22, 7, 5, 1, '2017-08-28 18:53:50', '2017-08-28 18:53:50'),
(23, 8, 1, 1, '2017-08-28 19:22:25', '2017-08-28 19:22:25'),
(24, 8, 2, 1, '2017-08-28 19:22:31', '2017-08-28 19:22:31'),
(25, 8, 4, 1, '2017-08-28 19:22:36', '2017-08-28 19:22:36'),
(26, 8, 6, 1, '2017-08-28 19:22:42', '2017-08-28 19:22:42'),
(27, 8, 5, 1, '2017-08-28 19:22:47', '2017-08-28 19:22:47'),
(28, 9, 1, 1, '2020-11-10 04:25:17', '2020-11-10 04:25:17'),
(29, 9, 2, 1, '2020-11-10 04:26:27', '2020-11-10 04:26:27'),
(30, 9, 4, 1, '2020-11-10 04:26:41', '2020-11-10 04:26:41'),
(31, 9, 5, 1, '2020-11-10 04:26:52', '2020-11-10 04:26:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Matemática', 'MATE01', '2017-06-07 09:23:57', '2020-11-09 20:14:13'),
(2, 'Inglés', 'ING02', '2017-06-07 09:24:25', '2020-11-09 20:14:50'),
(4, 'Ciencia', 'CIEN03', '2017-06-07 09:36:15', '2020-11-09 20:17:37'),
(5, 'Música', 'MUS04', '2017-06-07 09:36:23', '2020-11-09 20:30:26'),
(6, 'Estudios Sociales', 'ESSOC07', '2017-08-28 18:43:29', '2020-11-09 20:31:07'),
(7, 'Fíisica', 'FIS09', '2017-08-28 18:52:41', '2020-11-09 20:31:56'),
(8, 'Química', 'QUI11', '2017-08-28 19:21:46', '2020-11-09 20:33:15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indices de la tabla `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
