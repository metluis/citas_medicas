-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-11-2022 a las 09:07:25
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
--
-- Base de datos: `proyecto_final`
--
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `appointment`
--

CREATE TABLE `appointment` (
  `codcit` int(11) NOT NULL,
  `dates` date NOT NULL,
  `hour` time NOT NULL,
  `codpaci` int(11) NOT NULL,
  `coddoc` int(11) NOT NULL,
  `codespe` int(11) NOT NULL,
  `estado` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `appointment`
--

INSERT INTO `appointment` (`codcit`, `dates`, `hour`, `codpaci`, `coddoc`, `codespe`, `estado`, `fecha_create`) VALUES
(2, '2022-11-05', '09:00:00', 1, 2, 4, '1', '2022-11-05 05:57:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `codpaci` int(11) NOT NULL,
  `dnipa` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `nombrep` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apellidop` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `seguro` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `tele` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `sexo` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `clave` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cargo` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`codpaci`, `dnipa`, `nombrep`, `apellidop`, `seguro`, `tele`, `sexo`, `usuario`, `clave`, `cargo`, `estado`, `fecha_create`) VALUES
(1, '75745848', 'Javier', 'Martinez', 'Si', '999993939', 'Masculino', 'javi', 'admin', '2', '1', '2022-11-06 02:56:18'),
(2, '78584548', 'Renzo', 'Palacios', 'Si', '959595959', 'Masculino', 'reno', 'admin', '2', '1', '2022-11-06 06:30:20'),
(3, '74941256', 'ElBicho', 'Ronaldo', 'Si', '933871251', 'Masculino', 'bicho', 'admin', '2', '1', '2022-11-06 05:40:20'),
(4, '71724523', 'Jerson', 'Santana', 'Si', '954895951', 'Masculino', 'jerson', 'admin', '2', '1', '2022-11-06 05:10:20'),
(5, '69457135', 'Maritza', 'Cartagena', 'Si', '939521957', 'Femenino', 'mari', 'admin', '2', '1', '2022-11-06 05:30:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor`
--

CREATE TABLE `doctor` (
  `coddoc` int(3) NOT NULL,
  `dnidoc` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `nomdoc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apedoc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `codespe` int(11) NOT NULL,
  `sexo` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `telefo` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `fechanaci` date NOT NULL,
  `correo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `naciona` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `estado` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `doctor`
--

INSERT INTO `doctor` (`coddoc`, `dnidoc`, `nomdoc`, `apedoc`, `codespe`, `sexo`, `telefo`, `fechanaci`, `correo`, `naciona`, `estado`, `fecha_create`) VALUES
(2, '74747384', 'adrian', 'dipas', 4, 'Masculino', '998766554', '1995-09-09', 'prueba@gmail.com', 'Peruana(o)', '1', '2022-11-04 04:08:38'),
(3, '78493949', 'raul', 'sanchez', 3, 'Masculino', '928833573', '1987-08-30', 'prueba1@gmail.com', 'Peruana(o)', '1', '2022-11-04 01:43:25'),
(4, '73573145', 'camila', 'ventanilla', 3, 'Femenino', '918872135', '1992-03-07', 'prueba2@gmail.com', 'Peruana(o)', '1', '2022-11-04 01:43:24'),
(5, '72193947', 'raquel', 'samantha', 3, 'Femenino', '970523183', '1978-01-21', 'prueba3@gmail.com', 'Peruana(o)', '1', '2022-11-04 01:43:21');
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `codhor` int(11) NOT NULL,
  `nomhor` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `coddoc` int(3) NOT NULL,
  `estado` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`codhor`, `nomhor`, `coddoc`, `estado`, `fere`) VALUES
(2, 'solo martes', 2, '1', '2022-11-08 01:46:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `specialty`
--

CREATE TABLE `specialty` (
  `codespe` int(11) NOT NULL,
  `nombrees` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `specialty`
--

INSERT INTO `specialty` (`codespe`, `nombrees`, `fecha_create`) VALUES
(1, 'Nutricion', '2021-04-11 15:56:12'),
(2, 'MedicinaGeneral', '2022-04-11 03:09:36');

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `clave` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cargo` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `email`, `clave`, `cargo`) VALUES
(1, 'frank carbajal', 'zero', 'noahrebolt@gmail.com', 'administrador', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`codcit`),
  ADD KEY `codpaci` (`codpaci`,`coddoc`,`codespe`),
  ADD KEY `coddoc` (`coddoc`),
  ADD KEY `codespe` (`codespe`);

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`codpaci`);

--
-- Indices de la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`coddoc`),
  ADD KEY `codespe` (`codespe`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`codhor`),
  ADD KEY `coddoc` (`coddoc`);

--
-- Indices de la tabla `specialty`
--
ALTER TABLE `specialty`
  ADD PRIMARY KEY (`codespe`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `appointment`
--
ALTER TABLE `appointment`
  MODIFY `codcit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `codpaci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `doctor`
--
ALTER TABLE `doctor`
  MODIFY `coddoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `codhor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `specialty`
--
ALTER TABLE `specialty`
  MODIFY `codespe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`codpaci`) REFERENCES `customers` (`codpaci`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`coddoc`) REFERENCES `doctor` (`coddoc`),
  ADD CONSTRAINT `appointment_ibfk_3` FOREIGN KEY (`codespe`) REFERENCES `specialty` (`codespe`);

--
-- Filtros para la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`codespe`) REFERENCES `specialty` (`codespe`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`coddoc`) REFERENCES `doctor` (`coddoc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
