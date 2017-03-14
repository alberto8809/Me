-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 11-03-2017 a las 21:49:31
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `metodologia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividadDeportiva`
--

CREATE TABLE `actividadDeportiva` (
  `id` int(11) NOT NULL,
  `nombreActividad` int(11) NOT NULL,
  `idAlumno` int(11) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `actividadDeportiva`
--

INSERT INTO `actividadDeportiva` (`id`, `nombreActividad`, `idAlumno`, `fecha`) VALUES
(1, 1, 1, '2017-03-01 00:00:00'),
(2, 2, 2, '2017-02-22 00:00:00'),
(3, 3, 2, '2017-02-08 00:00:00'),
(4, 4, 4, '2017-03-01 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividadRecreativa`
--

CREATE TABLE `actividadRecreativa` (
  `id` int(11) NOT NULL,
  `nombreActividad` int(11) NOT NULL,
  `idAlumno` int(11) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `actividadRecreativa`
--

INSERT INTO `actividadRecreativa` (`id`, `nombreActividad`, `idAlumno`, `fecha`) VALUES
(5, 1, 1, '2017-02-06 00:00:00'),
(6, 1, 2, '2017-02-07 00:00:00'),
(7, 3, 3, '2017-03-08 00:00:00'),
(8, 4, 4, '2017-02-01 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `matricula` int(15) NOT NULL,
  `apPaterno` varchar(50) NOT NULL,
  `apMaterno` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `licenciatura` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `taller` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `t1` varchar(4) DEFAULT NULL,
  `t2` varchar(4) DEFAULT NULL,
  `t3` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `matricula`, `apPaterno`, `apMaterno`, `nombre`, `licenciatura`, `taller`, `t1`, `t2`, `t3`) VALUES
(1, 34324567, 'Bautista', ' Garcia', 'Jorge', 'Biología Molecular', 'Ajedrez', 'X', '', ''),
(2, 34546789, 'Reyes', 'Romero', 'Emmanuel', 'Diseño', 'Tenis de Mesa', '', 'X', 'X'),
(3, 98765432, 'Esteban', 'Hernandez', 'Pablo', 'Diseño', 'Yoga', 'X', 'X', ''),
(4, 45454321, 'Quiroz', 'Palacios', 'Lorena', 'Humanidades', 'Futbol', 'X', '', ''),
(5, 67654567, 'Sánchez', 'Velazquez', 'Cesar', 'Socioterritoriales', 'Crossfit', '', 'X', ''),
(6, 98987676, 'Alcala', 'Guerrero', 'Joel', 'Derecho', 'Zumba', 'X', '', ''),
(7, 98767656, 'Simantra', 'Ruiz', 'Luna', 'Comunicación', 'Futbol', '', 'X', ''),
(8, 23233434, 'Flores', 'Amado', 'German', 'Computación', 'Yoga', '', '', 'X'),
(9, 87787676, 'De la cruz', 'Piedra', 'Alberto', 'Tecnologías y Sistemas de la Información', 'Zumba', 'X', '', 'X'),
(10, 125588, 'admin', 'admin', 'admin', 'admin', '', '', '', ''),
(14, 90909, 'Reyes', 'Dominguez', 'mario', 'TSI', 'hla', 'X', 'X', 'X'),
(15, 11111, 'Reyes', 'Dominguez', 'mario2', 'TSI', NULL, NULL, NULL, NULL),
(16, 12, 'Reyes', 'Dominguez', 'mario2', 'TSI', NULL, NULL, NULL, NULL),
(17, 8, 'Reyes', 'Dominguez', 'mzio', 'TSI', NULL, NULL, NULL, NULL),
(18, 78, 'Reyes', 'Dominguez', 'mario2', 'TSI', NULL, NULL, NULL, NULL),
(19, 78, 'Reyes', 'Dominguez', 'mario2', 'TSI', NULL, NULL, NULL, NULL),
(20, 78888, 'Reyes', 'Dominguez', 'mario2', 'TSI', NULL, NULL, NULL, NULL),
(21, 87897, 'jiji', 'ji', 'iji', 'ijijij', NULL, NULL, NULL, NULL),
(22, 5678, 'jiji', 'Dominguez', 'mario', 'TSI', NULL, NULL, NULL, NULL),
(23, 45678, 'Reyes', 'Dominguez', 'user.nombre', 'ijijij', NULL, NULL, NULL, NULL),
(24, 546789, 'jiji', 'ji', 'jose', 'TSI', NULL, NULL, NULL, NULL),
(25, 567890, 'Reyes', 'ji', 'mario2', 'TSI', NULL, NULL, NULL, NULL),
(26, 4324432, 'kjnkjn', 'kjnkjnkjn', 'mjmjk', 'jnjknkjn', NULL, NULL, NULL, NULL),
(27, 5678, 'jiji', 'kjnkjnkjn', 'mzio', 'TSI', NULL, NULL, NULL, NULL),
(28, 9090909, 'Reyes', 'kjnkjnkjn', 'jose', 'TSI', NULL, NULL, NULL, NULL),
(29, 2113066332, 'DOMINGUEZ', 'REYES', 'MARIO', 'COMPUTACIÓN', NULL, NULL, NULL, NULL),
(30, 21330904, 'REYES', 'DOMÃNGUEZ', 'ANA', 'INFORMACIÃ“N', NULL, NULL, NULL, NULL),
(31, 987766546, 'nada', 'nada', 'nada', 'COMPUTACIÃƒÂ“N', NULL, NULL, NULL, NULL),
(32, 1298, 'Reyes', 'DOMÃNGUEZ', 'mario', 'COMPUTACIÃ“N', NULL, NULL, NULL, NULL),
(33, 45543454, 'DOMINGUEZ', 'DOMÍNGUEZ', 'mzio', 'COMPUTACIÓN', NULL, NULL, NULL, NULL),
(34, 123456, 'Domínguez', 'DOMÍNGUEZ', 'Marioo', 'INFORMACIÓN', NULL, NULL, NULL, NULL),
(35, 0, 'Domínguez', 'DOMÍNGUEZ', 'Domínguez', 'Bbbbb', NULL, NULL, NULL, NULL),
(36, 0, 'Hjj', 'Hu', 'Hih', 'Hh', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventoOrganizado`
--

CREATE TABLE `eventoOrganizado` (
  `id` int(11) NOT NULL,
  `idActividad` int(11) DEFAULT NULL,
  `nTorneos` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ludoteca`
--

CREATE TABLE `Ludoteca` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `disponible` int(11) DEFAULT NULL,
  `tipo_juego` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Ludoteca`
--

INSERT INTO `Ludoteca` (`id`, `nombre`, `cantidad`, `disponible`, `tipo_juego`) VALUES
(1, 'Ajedrez', 10, 1, 'Mesa'),
(2, 'Scrabble', 2, 0, ''),
(3, 'Maratón', 5, 0, ''),
(4, 'Jenga', 5, 1, 'Mesa'),
(5, 'Pictionary', 8, 1, 'Mesa'),
(6, 'Monopoly', 5, 1, 'Mesa'),
(7, 'UNO', 5, 1, 'Mesa'),
(8, '100 mexicanos dijeron', 3, 1, 'Mesa'),
(9, 'rummy', 3, 0, ''),
(10, 'pastelazo', 5, 0, ''),
(11, 'Risk', 6, 0, ''),
(12, 'Twister', 8, 0, ''),
(13, 'Conecta4', 2, 0, ''),
(14, 'Balón de fútbol soccer', 10, 1, 'Balón'),
(15, 'Balón de americano', 10, 1, 'Balón'),
(16, 'Balón de basketball', 6, 1, 'Balón'),
(17, 'Balón de voleibol', 5, 1, 'Balón'),
(18, 'Raquetas de tenis de mesa(ping pong)', 6, 1, 'Mesa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proteccionCivil`
--

CREATE TABLE `proteccionCivil` (
  `id` int(11) NOT NULL,
  `nombreActividad` varchar(50) DEFAULT NULL,
  `idAlumno` int(11) DEFAULT NULL,
  `observaciones` mediumtext,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `representantes`
--

CREATE TABLE `representantes` (
  `id` int(11) NOT NULL,
  `idAlumno` int(11) NOT NULL,
  `idDisciplina` varchar(50) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicioMedico`
--

CREATE TABLE `servicioMedico` (
  `id` int(11) NOT NULL,
  `nombreServicio` varchar(50) DEFAULT NULL,
  `idAlumno` int(11) DEFAULT NULL,
  `fecha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Taller`
--

CREATE TABLE `Taller` (
  `id` int(11) NOT NULL,
  `nombreTaller` varchar(50) NOT NULL,
  `cupo` int(11) NOT NULL,
  `disponible` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Taller`
--

INSERT INTO `Taller` (`id`, `nombreTaller`, `cupo`, `disponible`) VALUES
(1, 'Taller Ajedrez', 10, 1),
(2, 'Taller Basquetbol', 10, 1),
(3, 'Taller de Crossfit', 25, 1),
(4, 'Taller de Fútbol', 50, 1),
(5, 'Taller de Tae kwon do', 15, 1),
(6, 'Taller de tenis de mesa', 25, 1),
(7, 'Taller de Yoga', 25, 1),
(8, 'Taller de Zumba', 25, 1),
(9, 'Gimnasio de crossfit', 50, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividadDeportiva`
--
ALTER TABLE `actividadDeportiva`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `actividadRecreativa`
--
ALTER TABLE `actividadRecreativa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eventoOrganizado`
--
ALTER TABLE `eventoOrganizado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Ludoteca`
--
ALTER TABLE `Ludoteca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proteccionCivil`
--
ALTER TABLE `proteccionCivil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `representantes`
--
ALTER TABLE `representantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicioMedico`
--
ALTER TABLE `servicioMedico`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Taller`
--
ALTER TABLE `Taller`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividadDeportiva`
--
ALTER TABLE `actividadDeportiva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `actividadRecreativa`
--
ALTER TABLE `actividadRecreativa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT de la tabla `eventoOrganizado`
--
ALTER TABLE `eventoOrganizado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Ludoteca`
--
ALTER TABLE `Ludoteca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `proteccionCivil`
--
ALTER TABLE `proteccionCivil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `representantes`
--
ALTER TABLE `representantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `servicioMedico`
--
ALTER TABLE `servicioMedico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Taller`
--
ALTER TABLE `Taller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
