-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2022 a las 04:33:18
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `snmpdata`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_dispo`
--

CREATE TABLE `datos_dispo` (
  `idSolicitud` int(11) NOT NULL,
  `NombreDispo` varchar(300) DEFAULT NULL,
  `IPDispositivo` varchar(16) DEFAULT NULL,
  `OIDConsultado` varchar(300) DEFAULT NULL,
  `Memoria` varchar(50) DEFAULT NULL,
  `CPU` varchar(50) DEFAULT NULL,
  `AnchoB` varchar(50) DEFAULT NULL,
  `Storage` varchar(50) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datos_dispo`
--

INSERT INTO `datos_dispo` (`idSolicitud`, `NombreDispo`, `IPDispositivo`, `OIDConsultado`, `Memoria`, `CPU`, `AnchoB`, `Storage`, `Status`) VALUES
(1, 'Cisco IOS Software 7200 Software', '148.204.10.1', '1.3.6.1.2.1.1.1.0', '50000', '2000', NULL, '100000', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_snmp`
--

CREATE TABLE `datos_snmp` (
  `idSegmentoDatos` int(11) NOT NULL,
  `IPAgente` varchar(16) DEFAULT NULL,
  `UserNameAgente` varchar(100) DEFAULT NULL,
  `PassA` varchar(100) DEFAULT NULL,
  `PassX` varchar(100) DEFAULT NULL,
  `OIDaConsultar` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datos_snmp`
--

INSERT INTO `datos_snmp` (`idSegmentoDatos`, `IPAgente`, `UserNameAgente`, `PassA`, `PassX`, `OIDaConsultar`) VALUES
(1, '148.204.10.1', 'Admin', 'Palabra123456', ' ', '1.3.6.1.2.1.1.1.0');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos_dispo`
--
ALTER TABLE `datos_dispo`
  ADD PRIMARY KEY (`idSolicitud`);

--
-- Indices de la tabla `datos_snmp`
--
ALTER TABLE `datos_snmp`
  ADD PRIMARY KEY (`idSegmentoDatos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos_dispo`
--
ALTER TABLE `datos_dispo`
  MODIFY `idSolicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `datos_snmp`
--
ALTER TABLE `datos_snmp`
  MODIFY `idSegmentoDatos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
