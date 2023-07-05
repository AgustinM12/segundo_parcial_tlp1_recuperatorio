-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-07-2023 a las 22:03:23
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reservadb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `codigo` varchar(255) NOT NULL DEFAULT '1688584864541',
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `dni` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `fecha_salida` date DEFAULT NULL,
  `fecha_llegada` date DEFAULT NULL,
  `costo` varchar(255) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT 1,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp(),
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `codigo`, `nombre`, `apellido`, `dni`, `telefono`, `fecha_salida`, `fecha_llegada`, `costo`, `estado`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, '1688585215309', 'John', 'Doe', '44876123', '3704563459', '2023-07-14', '2023-07-21', '1000', 0, '2023-07-05 19:27:17', '2023-07-05 19:59:28', NULL),
(2, '1688585746626', 'Agustin', 'Mazza', '44876666', '5604563459', '2023-07-22', '2023-07-18', '69000', 1, '2023-07-05 19:36:05', '2023-07-05 19:59:56', NULL),
(5, '1688585802633', 'John', 'Doe', '44876123', '03704563459', '2023-07-21', '2023-07-27', '0', 0, '2023-07-05 19:36:58', '2023-07-05 20:02:16', NULL),
(6, '1688586026389', 'John', 'Rambo', '44876123', '03704563459', '2023-07-09', '2023-07-21', '565656', 0, '2023-07-05 19:40:41', '2023-07-05 19:52:23', NULL),
(7, '1688586738674', 'John', 'Doe', '44876123', '03704563459', '2023-07-14', '2023-07-28', '10000', 1, '2023-07-05 19:52:35', '2023-07-05 19:57:32', NULL),
(11, '1688587135270', 'Lionel Andres', 'Messi', '44876123', '03704563459', '2023-07-08', '2023-07-27', '50000', 1, '2023-07-05 19:59:14', '2023-07-05 19:59:14', NULL),
(12, '1688587295889', 'Juan', 'Perez', '44873123', '3984563459', '2023-07-15', '2023-07-29', '45454', 1, '2023-07-05 20:02:03', '2023-07-05 20:02:03', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
