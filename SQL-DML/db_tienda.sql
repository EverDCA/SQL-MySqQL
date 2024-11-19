-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2024 a las 01:52:34
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL,
  `codigoEmpleado` varchar(50) DEFAULT NULL,
  `nombreCompleto` varchar(100) NOT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `fechaContratacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `salario` decimal(10,2) NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `codigoEmpleado`, `nombreCompleto`, `fechaNacimiento`, `fechaContratacion`, `salario`, `email`) VALUES
(1, 'EMP001', 'José Martínez', '1990-05-15', '2022-01-01 05:00:00', 15000.00, 'jose.martinez@example.com'),
(2, 'EMP002', 'Laura Sánchez', '1985-08-20', '2021-06-15 05:00:00', 17000.00, 'laura.sanchez@example.com'),
(3, 'EMP003', 'Carlos Gutiérrez', '1995-03-10', '2023-03-10 05:00:00', 14000.00, 'carlos.gutierrez@example.com'),
(4, 'EMP004', 'Mónica Ramírez', '1992-12-25', '2020-09-01 05:00:00', 16000.00, 'monica.ramirez@example.com'),
(5, 'EMP005', 'Andrea López', '1998-07-30', '2022-11-20 05:00:00', 13500.00, 'andrea.lopez@example.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleado`),
  ADD UNIQUE KEY `codigoEmpleado` (`codigoEmpleado`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idEmpleado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
