-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2022 a las 04:32:58
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
-- Base de datos: `sdntt3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `Id_Administradores` int(10) NOT NULL,
  `Id_Status_Admin` int(2) NOT NULL,
  `Id_Tipo_Admin` int(2) NOT NULL,
  `Nombre_Admin` varchar(60) NOT NULL,
  `Apellido_P_Admin` varchar(60) NOT NULL,
  `Apellido_M_Admin` varchar(60) NOT NULL,
  `Fecha_ingreso` varchar(60) NOT NULL,
  `Nombre_Usuario` varchar(60) NOT NULL,
  `Password_Hash` varchar(60) NOT NULL,
  `Fecha_Ultimo_Cambio_Pass` varchar(60) NOT NULL,
  `Cant_dias_limit` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`Id_Administradores`, `Id_Status_Admin`, `Id_Tipo_Admin`, `Nombre_Admin`, `Apellido_P_Admin`, `Apellido_M_Admin`, `Fecha_ingreso`, `Nombre_Usuario`, `Password_Hash`, `Fecha_Ultimo_Cambio_Pass`, `Cant_dias_limit`) VALUES
(1, 2, 2, 'ipn', 'sdn', 'sdn', '2022-05-27 17:34:39', 'SDNTTROOT', 'root', '2022-05-27 17:34:39', 0),
(2, 2, 1, 'Jorge', 'Aguila', 'Ojeda', '27/5/2022', 'JorgeAguila', 'w2bKYl8Q', 'null', 0),
(3, 2, 2, 'Daniel', 'Gil', 'Quezada', '2022-05-28 05:57:49', 'DaniGil', 'TXbPcxoG', '1/6/2022', 0),
(4, 2, 2, 'Juan', 'Hernández', 'Elizalde', '2022-06-02 02:23:34', 'JuanH', '12345678', '1/6/2022', 0),
(5, 2, 2, 'Leticia', 'Henestrosa', 'Carrasco', '2022-06-02 02:40:10', 'LetiHen', 'ShVZJS8D', '2022-06-01 01:26:59', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores_servicios_log`
--

CREATE TABLE `administradores_servicios_log` (
  `Id_Administradores_Servicios_Log` int(100) NOT NULL,
  `Id_Status_Log` int(2) NOT NULL,
  `Id_Administradores` int(10) NOT NULL,
  `Id_Cat_Servicios` int(10) NOT NULL,
  `IP_Dispositivo_Orig` varchar(20) NOT NULL,
  `MAC_Dispositivo_Orig` varchar(30) NOT NULL,
  `IP_Dispositivos_Ant` varchar(20) DEFAULT NULL,
  `IP_Dispositivos_Desp` varchar(20) DEFAULT NULL,
  `Dir_MAC_Disp_Fin` varchar(30) DEFAULT NULL,
  `Fecha_Init_Serv` varchar(60) NOT NULL,
  `Fecha_Fin_Serv` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores_tareas_log`
--

CREATE TABLE `administradores_tareas_log` (
  `Id_Administradores_Tareas_Log` int(100) NOT NULL,
  `Id_Status_Log` int(2) NOT NULL,
  `Id_Administradores` int(10) NOT NULL,
  `Id_Cat_Tareas` int(10) NOT NULL,
  `IP_Dispositivo_Orig` varchar(20) NOT NULL,
  `MAC_Dispositivo_Orig` varchar(30) NOT NULL,
  `Id_Admin_Obj` int(10) DEFAULT NULL,
  `Fecha_Init_Serv` varchar(60) NOT NULL,
  `Fecha_Fin_Serv` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administradores_tareas_log`
--

INSERT INTO `administradores_tareas_log` (`Id_Administradores_Tareas_Log`, `Id_Status_Log`, `Id_Administradores`, `Id_Cat_Tareas`, `IP_Dispositivo_Orig`, `MAC_Dispositivo_Orig`, `Id_Admin_Obj`, `Fecha_Init_Serv`, `Fecha_Fin_Serv`) VALUES
(1, 3, 1, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-05-27 22:47:26', '2022-05-27 22:47:26'),
(2, 3, 1, 4, '127.0.0.1', 'Inalcanzable', NULL, '2022-05-27 22:49:51', '2022-05-27 22:49:51'),
(3, 3, 1, 5, '127.0.0.1', 'Inalcanzable', NULL, '2022-05-27 22:50:36', '2022-05-27 22:50:36'),
(4, 3, 1, 5, '127.0.0.1', 'Inalcanzable', NULL, '2022-05-27 22:51:10', '2022-05-27 22:51:10'),
(5, 3, 1, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-05-28 02:08:12', '2022-05-28 02:08:12'),
(6, 3, 1, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-05-28 02:08:14', '2022-05-28 02:08:14'),
(7, 3, 1, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-05-28 02:09:57', '2022-05-28 02:09:57'),
(8, 3, 1, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-05-28 02:10:06', '2022-05-28 02:10:06'),
(9, 3, 2, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-05-28 02:10:21', '2022-05-28 02:10:21'),
(10, 3, 2, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-05-28 02:10:26', '2022-05-28 02:10:26'),
(11, 3, 1, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-05-28 02:10:37', '2022-05-28 02:10:37'),
(12, 3, 2, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-05-28 05:53:02', '2022-05-28 05:53:02'),
(13, 3, 2, 4, '127.0.0.1', 'Inalcanzable', NULL, '2022-05-28 05:57:49', '2022-05-28 05:57:49'),
(14, 3, 2, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-01 04:01:34', '2022-06-01 04:01:34'),
(15, 3, 1, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-01 04:40:45', '2022-06-01 04:40:45'),
(16, 3, 1, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 00:17:47', '2022-06-02 00:17:47'),
(17, 3, 1, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 00:53:36', '2022-06-02 00:53:36'),
(18, 3, 3, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 00:53:46', '2022-06-02 00:53:46'),
(19, 3, 3, 3, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 00:54:25', '2022-06-02 00:54:25'),
(20, 3, 3, 3, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 00:56:37', '2022-06-02 00:56:37'),
(21, 3, 3, 3, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 00:58:00', '2022-06-02 00:58:00'),
(22, 3, 3, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 01:27:30', '2022-06-02 01:27:30'),
(23, 3, 2, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 01:30:22', '2022-06-02 01:30:22'),
(24, 3, 2, 4, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 02:23:34', '2022-06-02 02:23:34'),
(25, 3, 2, 4, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 02:40:10', '2022-06-02 02:40:10'),
(26, 3, 2, 5, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 02:41:28', '2022-06-02 02:41:28'),
(27, 3, 2, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 02:42:06', '2022-06-02 02:42:06'),
(28, 3, 4, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 04:17:31', '2022-06-02 04:17:31'),
(29, 3, 4, 3, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 04:24:01', '2022-06-02 04:24:01'),
(30, 3, 4, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 04:24:55', '2022-06-02 04:24:55'),
(31, 3, 5, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 04:25:20', '2022-06-02 04:25:20'),
(32, 3, 5, 3, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 04:25:43', '2022-06-02 04:25:43'),
(33, 3, 5, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 04:27:04', '2022-06-02 04:27:04'),
(34, 3, 5, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 04:27:27', '2022-06-02 04:27:27'),
(35, 3, 5, 3, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 06:27:14', '2022-06-02 06:27:14'),
(36, 3, 5, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 06:27:42', '2022-06-02 06:27:42'),
(37, 3, 5, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 06:28:08', '2022-06-02 06:28:08'),
(38, 3, 1, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 06:35:03', '2022-06-02 06:35:03'),
(39, 3, 5, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 06:35:23', '2022-06-02 06:35:23'),
(40, 3, 5, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 23:45:10', '2022-06-02 23:45:10'),
(41, 3, 4, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 23:47:19', '2022-06-02 23:47:19'),
(42, 3, 4, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 23:57:34', '2022-06-02 23:57:34'),
(43, 3, 4, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-02 23:59:57', '2022-06-02 23:59:57'),
(44, 3, 4, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-03 00:09:03', '2022-06-03 00:09:03'),
(45, 3, 4, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-03 00:09:17', '2022-06-03 00:09:17'),
(46, 3, 4, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-04 02:29:13', '2022-06-04 02:29:13'),
(47, 3, 5, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-04 02:30:21', '2022-06-04 02:30:21'),
(48, 3, 5, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-06 03:22:23', '2022-06-06 03:22:23'),
(49, 3, 5, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-06 03:26:05', '2022-06-06 03:26:05'),
(50, 3, 5, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-06 03:28:09', '2022-06-06 03:28:09'),
(51, 3, 5, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-06 03:36:26', '2022-06-06 03:36:26'),
(52, 3, 5, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-06 03:46:39', '2022-06-06 03:46:39'),
(53, 3, 5, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-06 03:51:49', '2022-06-06 03:51:49'),
(54, 3, 5, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-06 03:57:07', '2022-06-06 03:57:07'),
(55, 3, 5, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-06 03:58:19', '2022-06-06 03:58:19'),
(56, 3, 1, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-07 00:57:17', '2022-06-07 00:57:17'),
(57, 3, 1, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-07 01:52:11', '2022-06-07 01:52:11'),
(58, 3, 1, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-07 02:02:40', '2022-06-07 02:02:40'),
(59, 3, 1, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-07 02:05:50', '2022-06-07 02:05:50'),
(60, 3, 1, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-07 02:28:14', '2022-06-07 02:28:14'),
(61, 3, 1, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-07 02:41:13', '2022-06-07 02:41:13'),
(62, 3, 1, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-07 02:41:27', '2022-06-07 02:41:27'),
(63, 3, 1, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-07 02:43:19', '2022-06-07 02:43:19'),
(64, 3, 1, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-07 02:43:32', '2022-06-07 02:43:32'),
(65, 3, 1, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-07 02:43:48', '2022-06-07 02:43:48'),
(66, 3, 1, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-07 03:09:36', '2022-06-07 03:09:36'),
(67, 3, 5, 1, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-07 03:13:25', '2022-06-07 03:13:25'),
(68, 3, 5, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-07 03:14:06', '2022-06-07 03:14:06'),
(69, 3, 1, 2, '127.0.0.1', 'Inalcanzable', NULL, '2022-06-07 03:16:33', '2022-06-07 03:16:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_servicios`
--

CREATE TABLE `cat_servicios` (
  `Id_Cat_Servicios` int(10) NOT NULL,
  `Nom_Cat_Servicios` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cat_servicios`
--

INSERT INTO `cat_servicios` (`Id_Cat_Servicios`, `Nom_Cat_Servicios`) VALUES
(1, 'Monitorizacion'),
(2, 'Configuracion de Router'),
(3, 'Configuracion de Switch'),
(4, 'Configuracion de Servidor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_tareas`
--

CREATE TABLE `cat_tareas` (
  `Id_Cat_Tareas` int(10) NOT NULL,
  `Nom_Cat_Tareas` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cat_tareas`
--

INSERT INTO `cat_tareas` (`Id_Cat_Tareas`, `Nom_Cat_Tareas`) VALUES
(1, 'Iniciar Sesion'),
(2, 'Cerrar Sesion'),
(3, 'Modificar Datos Propios Administrador'),
(4, 'Alta Administrador'),
(5, 'Modificacion de Datos Administrador'),
(6, 'Eliminar Administrador'),
(7, 'Eliminar Privilegios'),
(8, 'Agregar Privilegios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_admin`
--

CREATE TABLE `status_admin` (
  `Id_Status_Admin` int(2) NOT NULL,
  `Nom_Tipo_Admin` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `status_admin`
--

INSERT INTO `status_admin` (`Id_Status_Admin`, `Nom_Tipo_Admin`) VALUES
(1, 'Activo'),
(2, 'Inactivo'),
(3, 'Fuera del sistema');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_log`
--

CREATE TABLE `status_log` (
  `Id_Status_Log` int(2) NOT NULL,
  `Nom_Status_Log` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `status_log`
--

INSERT INTO `status_log` (`Id_Status_Log`, `Nom_Status_Log`) VALUES
(1, 'En Ejecucion'),
(2, 'Error'),
(3, 'Completado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_admin`
--

CREATE TABLE `tipo_admin` (
  `Id_Tipo_Admin` int(2) NOT NULL,
  `Nom_Tipo_Admin` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_admin`
--

INSERT INTO `tipo_admin` (`Id_Tipo_Admin`, `Nom_Tipo_Admin`) VALUES
(1, 'Administrador'),
(2, 'SuperAdministrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_admin_cat_servicios`
--

CREATE TABLE `tipo_admin_cat_servicios` (
  `Id_Tipo_Admin_Servicios` int(10) NOT NULL,
  `Id_Administrador` int(2) NOT NULL,
  `Id_Cat_Servicios` int(2) NOT NULL,
  `Fecha_Ult_Mod` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_admin_cat_servicios`
--

INSERT INTO `tipo_admin_cat_servicios` (`Id_Tipo_Admin_Servicios`, `Id_Administrador`, `Id_Cat_Servicios`, `Fecha_Ult_Mod`) VALUES
(5, 2, 2, '2022-05-27 22:51:10'),
(6, 2, 3, '2022-05-27 22:51:10'),
(7, 2, 4, '2022-05-27 22:51:10'),
(8, 3, 1, '2022-05-28 05:57:49'),
(9, 3, 2, '2022-05-28 05:57:49'),
(10, 3, 3, '2022-05-28 05:57:49'),
(11, 3, 4, '2022-05-28 05:57:49'),
(15, 5, 1, '2022-06-02 02:40:10'),
(16, 5, 2, '2022-06-02 02:40:10'),
(17, 5, 3, '2022-06-02 02:40:10'),
(18, 5, 4, '2022-06-02 02:40:10'),
(19, 4, 2, '2022-06-02 02:41:28'),
(20, 4, 3, '2022-06-02 02:41:28'),
(21, 4, 4, '2022-06-02 02:41:28'),
(22, 4, 1, '2022-06-02 02:41:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_admin_cat_tareas`
--

CREATE TABLE `tipo_admin_cat_tareas` (
  `Id_Tipo_Admin_tareas` int(10) NOT NULL,
  `Id_Administrador` int(2) NOT NULL,
  `Id_Cat_Tareas` int(2) NOT NULL,
  `Fecha_Ult_Mod` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_admin_cat_tareas`
--

INSERT INTO `tipo_admin_cat_tareas` (`Id_Tipo_Admin_tareas`, `Id_Administrador`, `Id_Cat_Tareas`, `Fecha_Ult_Mod`) VALUES
(1, 5, 4, '2022-06-02 02:40:10'),
(2, 5, 5, '2022-06-02 02:40:10'),
(3, 5, 6, '2022-06-02 02:40:10'),
(4, 5, 7, '2022-06-02 02:40:10'),
(5, 5, 8, '2022-06-02 02:40:10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`Id_Administradores`),
  ADD KEY `Id_Status_Admin` (`Id_Status_Admin`),
  ADD KEY `Id_Tipo_Admin` (`Id_Tipo_Admin`);

--
-- Indices de la tabla `administradores_servicios_log`
--
ALTER TABLE `administradores_servicios_log`
  ADD PRIMARY KEY (`Id_Administradores_Servicios_Log`),
  ADD KEY `Id_Status_Log` (`Id_Status_Log`),
  ADD KEY `Id_Administradores` (`Id_Administradores`),
  ADD KEY `Id_Cat_Servicios` (`Id_Cat_Servicios`);

--
-- Indices de la tabla `administradores_tareas_log`
--
ALTER TABLE `administradores_tareas_log`
  ADD PRIMARY KEY (`Id_Administradores_Tareas_Log`),
  ADD KEY `Id_Status_Log` (`Id_Status_Log`),
  ADD KEY `Id_Administradores` (`Id_Administradores`),
  ADD KEY `Id_Cat_Tareas` (`Id_Cat_Tareas`),
  ADD KEY `Id_Admin_Obj` (`Id_Admin_Obj`);

--
-- Indices de la tabla `cat_servicios`
--
ALTER TABLE `cat_servicios`
  ADD PRIMARY KEY (`Id_Cat_Servicios`);

--
-- Indices de la tabla `cat_tareas`
--
ALTER TABLE `cat_tareas`
  ADD PRIMARY KEY (`Id_Cat_Tareas`);

--
-- Indices de la tabla `status_admin`
--
ALTER TABLE `status_admin`
  ADD PRIMARY KEY (`Id_Status_Admin`);

--
-- Indices de la tabla `status_log`
--
ALTER TABLE `status_log`
  ADD PRIMARY KEY (`Id_Status_Log`);

--
-- Indices de la tabla `tipo_admin`
--
ALTER TABLE `tipo_admin`
  ADD PRIMARY KEY (`Id_Tipo_Admin`);

--
-- Indices de la tabla `tipo_admin_cat_servicios`
--
ALTER TABLE `tipo_admin_cat_servicios`
  ADD PRIMARY KEY (`Id_Tipo_Admin_Servicios`),
  ADD KEY `Id_Administrador` (`Id_Administrador`),
  ADD KEY `Id_Cat_Servicios` (`Id_Cat_Servicios`);

--
-- Indices de la tabla `tipo_admin_cat_tareas`
--
ALTER TABLE `tipo_admin_cat_tareas`
  ADD PRIMARY KEY (`Id_Tipo_Admin_tareas`),
  ADD KEY `Id_Administrador` (`Id_Administrador`),
  ADD KEY `Id_Cat_Tareas` (`Id_Cat_Tareas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `Id_Administradores` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `administradores_servicios_log`
--
ALTER TABLE `administradores_servicios_log`
  MODIFY `Id_Administradores_Servicios_Log` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `administradores_tareas_log`
--
ALTER TABLE `administradores_tareas_log`
  MODIFY `Id_Administradores_Tareas_Log` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `cat_servicios`
--
ALTER TABLE `cat_servicios`
  MODIFY `Id_Cat_Servicios` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cat_tareas`
--
ALTER TABLE `cat_tareas`
  MODIFY `Id_Cat_Tareas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `status_admin`
--
ALTER TABLE `status_admin`
  MODIFY `Id_Status_Admin` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `status_log`
--
ALTER TABLE `status_log`
  MODIFY `Id_Status_Log` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_admin`
--
ALTER TABLE `tipo_admin`
  MODIFY `Id_Tipo_Admin` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_admin_cat_servicios`
--
ALTER TABLE `tipo_admin_cat_servicios`
  MODIFY `Id_Tipo_Admin_Servicios` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `tipo_admin_cat_tareas`
--
ALTER TABLE `tipo_admin_cat_tareas`
  MODIFY `Id_Tipo_Admin_tareas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD CONSTRAINT `administradores_ibfk_1` FOREIGN KEY (`Id_Status_Admin`) REFERENCES `status_admin` (`Id_Status_Admin`),
  ADD CONSTRAINT `administradores_ibfk_2` FOREIGN KEY (`Id_Tipo_Admin`) REFERENCES `tipo_admin` (`Id_Tipo_Admin`);

--
-- Filtros para la tabla `administradores_servicios_log`
--
ALTER TABLE `administradores_servicios_log`
  ADD CONSTRAINT `administradores_servicios_log_ibfk_1` FOREIGN KEY (`Id_Status_Log`) REFERENCES `status_log` (`Id_Status_Log`),
  ADD CONSTRAINT `administradores_servicios_log_ibfk_2` FOREIGN KEY (`Id_Administradores`) REFERENCES `administradores` (`Id_Administradores`),
  ADD CONSTRAINT `administradores_servicios_log_ibfk_3` FOREIGN KEY (`Id_Cat_Servicios`) REFERENCES `cat_servicios` (`Id_Cat_Servicios`);

--
-- Filtros para la tabla `administradores_tareas_log`
--
ALTER TABLE `administradores_tareas_log`
  ADD CONSTRAINT `administradores_tareas_log_ibfk_1` FOREIGN KEY (`Id_Status_Log`) REFERENCES `status_log` (`Id_Status_Log`),
  ADD CONSTRAINT `administradores_tareas_log_ibfk_2` FOREIGN KEY (`Id_Administradores`) REFERENCES `administradores` (`Id_Administradores`),
  ADD CONSTRAINT `administradores_tareas_log_ibfk_3` FOREIGN KEY (`Id_Cat_Tareas`) REFERENCES `cat_tareas` (`Id_Cat_Tareas`),
  ADD CONSTRAINT `administradores_tareas_log_ibfk_4` FOREIGN KEY (`Id_Admin_Obj`) REFERENCES `administradores` (`Id_Administradores`);

--
-- Filtros para la tabla `tipo_admin_cat_servicios`
--
ALTER TABLE `tipo_admin_cat_servicios`
  ADD CONSTRAINT `tipo_admin_cat_servicios_ibfk_1` FOREIGN KEY (`Id_Administrador`) REFERENCES `administradores` (`Id_Administradores`),
  ADD CONSTRAINT `tipo_admin_cat_servicios_ibfk_2` FOREIGN KEY (`Id_Cat_Servicios`) REFERENCES `cat_servicios` (`Id_Cat_Servicios`);

--
-- Filtros para la tabla `tipo_admin_cat_tareas`
--
ALTER TABLE `tipo_admin_cat_tareas`
  ADD CONSTRAINT `tipo_admin_cat_tareas_ibfk_1` FOREIGN KEY (`Id_Administrador`) REFERENCES `administradores` (`Id_Administradores`),
  ADD CONSTRAINT `tipo_admin_cat_tareas_ibfk_2` FOREIGN KEY (`Id_Cat_Tareas`) REFERENCES `cat_tareas` (`Id_Cat_Tareas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
