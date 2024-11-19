-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2024 a las 01:51:59
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
-- Base de datos: `db_empresas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `idInventario` int NOT NULL,
  `codigoProducto` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text,
  `fechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cantidadProducto` int DEFAULT '0',
  `precioCompra` decimal(10,2) NOT NULL,
  `precioVenta` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`idInventario`, `codigoProducto`, `nombre`, `descripcion`, `fechaRegistro`, `cantidadProducto`, `precioCompra`, `precioVenta`) VALUES
(1, 'PROD001', 'Martillo', 'Martillo de acero para carpintería', '2024-11-19 01:38:16', 50, 15.00, 25.00),
(2, 'PROD002', 'Serrucho', 'Serrucho de 18 pulgadas con mango ergonómico', '2024-11-19 01:38:16', 30, 20.50, 35.00),
(3, 'PROD003', 'Taladro', 'Taladro eléctrico con múltiples brocas', '2024-11-19 01:38:16', 20, 45.00, 75.00),
(4, 'PROD004', 'Caja de clavos', 'Clavos de acero en caja de 500 unidades', '2024-11-19 01:38:16', 100, 10.00, 15.00),
(5, 'PROD005', 'Llave inglesa', 'Llave inglesa ajustable de acero inoxidable', '2024-11-19 01:38:16', 25, 12.50, 20.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`idInventario`),
  ADD UNIQUE KEY `codigoProducto` (`codigoProducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `idInventario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
