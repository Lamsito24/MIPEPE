-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-10-2024 a las 20:05:12
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `demo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id_alumno` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `matricula` varchar(50) DEFAULT NULL,
  `turno` varchar(50) DEFAULT NULL,
  `grado` varchar(20) DEFAULT NULL,
  `grupo` varchar(10) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `orientador` varchar(100) DEFAULT NULL,
  `vigencia` date DEFAULT NULL,
  `ultima_entrada` datetime DEFAULT NULL,
  `ultima_salida` datetime DEFAULT NULL,
  `faltas` int(11) DEFAULT NULL,
  `escuela` varchar(100) DEFAULT NULL,
  `ultima_asistencia` date DEFAULT NULL,
  `estado_asistencia` enum('Presente','Falta') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_alumno`, `nombre`, `matricula`, `turno`, `grado`, `grupo`, `correo`, `orientador`, `vigencia`, `ultima_entrada`, `ultima_salida`, `faltas`, `escuela`, `ultima_asistencia`, `estado_asistencia`) VALUES
(2, 'Juan Pérez', '2024001', 'Matutino', 'Segundo', 'B', 'juan.perez@example.com', 'María López', '2025-12-31', '2024-09-22 08:00:00', '2024-09-22 14:30:00', 2, 'TESOEM', '2024-09-22', 'Falta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credenciales`
--

CREATE TABLE `credenciales` (
  `id` int(11) NOT NULL,
  `credencial` int(11) NOT NULL,
  `estado` enum('disponible','en uso') NOT NULL,
  `qr_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `credenciales`
--

INSERT INTO `credenciales` (`id`, `credencial`, `estado`, `qr_code`) VALUES
(1, 1, 'disponible', NULL),
(2, 2, 'disponible', NULL),
(3, 3, 'disponible', NULL),
(4, 4, 'disponible', NULL),
(5, 5, 'disponible', NULL),
(6, 6, 'disponible', NULL),
(7, 7, 'disponible', NULL),
(8, 8, 'disponible', NULL),
(9, 9, 'disponible', NULL),
(10, 10, 'disponible', NULL),
(11, 11, 'disponible', NULL),
(12, 12, 'disponible', NULL),
(13, 13, 'disponible', NULL),
(14, 14, 'disponible', NULL),
(15, 15, 'disponible', NULL),
(16, 16, 'disponible', NULL),
(17, 17, 'disponible', NULL),
(18, 18, 'disponible', NULL),
(19, 19, 'disponible', NULL),
(20, 20, 'disponible', NULL),
(21, 21, 'disponible', NULL),
(22, 22, 'disponible', NULL),
(23, 23, 'disponible', NULL),
(24, 24, 'disponible', NULL),
(25, 25, 'disponible', NULL),
(26, 26, 'disponible', NULL),
(27, 27, 'disponible', NULL),
(28, 28, 'disponible', NULL),
(29, 29, 'disponible', NULL),
(30, 30, 'disponible', NULL),
(31, 31, 'disponible', NULL),
(32, 32, 'disponible', NULL),
(33, 33, 'disponible', NULL),
(34, 34, 'disponible', NULL),
(35, 35, 'disponible', NULL),
(36, 36, 'disponible', NULL),
(37, 37, 'disponible', NULL),
(38, 38, 'disponible', NULL),
(39, 39, 'disponible', NULL),
(40, 40, 'disponible', NULL),
(41, 41, 'disponible', NULL),
(42, 42, 'disponible', NULL),
(43, 43, 'disponible', NULL),
(44, 44, 'disponible', NULL),
(45, 45, 'disponible', NULL),
(46, 46, 'disponible', NULL),
(47, 47, 'disponible', NULL),
(48, 48, 'disponible', NULL),
(49, 49, 'disponible', NULL),
(50, 50, 'disponible', NULL),
(51, 51, 'disponible', NULL),
(52, 52, 'disponible', NULL),
(53, 53, 'disponible', NULL),
(54, 54, 'disponible', NULL),
(55, 55, 'disponible', NULL),
(56, 56, 'disponible', NULL),
(57, 57, 'disponible', NULL),
(58, 58, 'disponible', NULL),
(59, 59, 'disponible', NULL),
(60, 60, 'disponible', NULL),
(61, 61, 'disponible', NULL),
(62, 62, 'disponible', NULL),
(63, 63, 'disponible', NULL),
(64, 64, 'disponible', NULL),
(65, 65, 'disponible', NULL),
(66, 66, 'disponible', NULL),
(67, 67, 'disponible', NULL),
(68, 68, 'disponible', NULL),
(69, 69, 'disponible', NULL),
(70, 70, 'disponible', NULL),
(71, 71, 'disponible', NULL),
(72, 72, 'disponible', NULL),
(73, 73, 'disponible', NULL),
(74, 74, 'disponible', NULL),
(75, 75, 'disponible', NULL),
(76, 76, 'disponible', NULL),
(77, 77, 'disponible', NULL),
(78, 78, 'disponible', NULL),
(79, 79, 'disponible', NULL),
(80, 80, 'disponible', NULL),
(81, 81, 'disponible', NULL),
(82, 82, 'disponible', NULL),
(83, 83, 'disponible', NULL),
(84, 84, 'disponible', NULL),
(85, 85, 'disponible', NULL),
(86, 86, 'disponible', NULL),
(87, 87, 'disponible', NULL),
(88, 88, 'disponible', NULL),
(89, 89, 'disponible', NULL),
(90, 90, 'disponible', NULL),
(91, 91, 'disponible', NULL),
(92, 92, 'disponible', NULL),
(93, 93, 'disponible', NULL),
(94, 94, 'disponible', NULL),
(95, 95, 'disponible', NULL),
(96, 96, 'disponible', NULL),
(97, 97, 'disponible', NULL),
(98, 98, 'disponible', NULL),
(99, 99, 'disponible', NULL),
(100, 100, 'disponible', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

CREATE TABLE `documentos` (
  `id` int(11) NOT NULL,
  `tipo_documento` varchar(100) DEFAULT NULL,
  `url_documento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faltas`
--

CREATE TABLE `faltas` (
  `id_falta` int(11) NOT NULL,
  `id_alumno` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `faltas`
--

INSERT INTO `faltas` (`id_falta`, `id_alumno`, `fecha`) VALUES
(1, 2, '2024-09-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `id` int(11) NOT NULL,
  `grupo` varchar(10) DEFAULT NULL,
  `grado` varchar(10) DEFAULT NULL,
  `turno` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_visitantes`
--

CREATE TABLE `historial_visitantes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `hora_entrada` datetime NOT NULL,
  `hora_salida` datetime DEFAULT NULL,
  `fecha_registro` date NOT NULL,
  `motivo` varchar(255) NOT NULL,
  `curp` varchar(18) NOT NULL,
  `credencial` int(11) NOT NULL,
  `qr_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historial_visitantes`
--

INSERT INTO `historial_visitantes` (`id`, `nombre`, `correo`, `telefono`, `hora_entrada`, `hora_salida`, `fecha_registro`, `motivo`, `curp`, `credencial`, `qr_code`) VALUES
(1, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '2024-10-04 17:45:00', '2024-10-08 11:51:22', '2024-10-04', 'Convivio', 'MOSL031124HDFSLSA9', 1, NULL),
(1, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '2024-10-04 17:45:40', '2024-10-08 11:51:22', '2024-10-04', 'Convivio', 'MOSL031124HDFSLSA9', 1, NULL),
(2, 'Fernando Christian Mosco Salazar', 'chicocongorraroja@gmail.com', '5530016917', '2024-10-04 17:46:19', '2024-10-04 17:46:48', '2024-10-04', 'informes', 'MOSF050723HDFSLRA1', 2, NULL),
(1, 'Fernando Christian Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '2024-10-04 18:38:05', '2024-10-08 11:51:22', '2024-10-04', 'Convivio', 'MOSL031124HDFSLSA9', 1, NULL),
(1, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '2024-10-04 19:57:32', '2024-10-08 11:51:22', '2024-10-04', 'Convivio', 'MOSL031124HDFSLSA9', 1, NULL),
(1, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '2024-10-04 20:12:48', '2024-10-08 11:51:22', '2024-10-04', 'Convivio', 'MOSL031124HDFSLSA9', 1, NULL),
(1, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '2024-10-07 18:07:41', '2024-10-08 11:51:22', '2024-10-07', 'Convivio', 'MOSL031124HDFSLSA9', 1, NULL),
(1, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '2024-10-07 18:27:36', '2024-10-08 11:51:22', '2024-10-07', 'Visita a cliente', 'MOSL031124HDFSLSA9', 1, NULL),
(1, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5530016917', '2024-10-07 18:31:05', '2024-10-08 11:51:22', '2024-10-07', 'Presentación de proyecto', 'MOSL031124HDFSLSA9', 1, NULL),
(1, 'Fernando Christian Mosco Salazar', 'chicocongorraroja@gmail.com', '5530016917', '2024-10-07 10:37:04', '2024-10-07 15:14:38', '2024-10-07', 'Revisión de trabajo', 'MOSF050723HDFSLRA1', 1, NULL),
(1, 'Fernando Christian Mosco Salazar', 'chicocongorraroja@gmail.com', '5530016917', '2024-10-07 15:14:31', '2024-10-07 15:14:38', '2024-10-07', 'Revisión de trabajo', 'MOSF050723HDFSLRA1', 1, NULL),
(1, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '2024-10-07 15:42:09', '2024-10-08 11:51:22', '2024-10-07', 'Reunión', 'MOSL031124HDFSLSA9', 1, 'qr_generado_1.png'),
(1, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '2024-10-08 11:05:25', '2024-10-08 11:51:22', '2024-10-08', 'Visita a cliente', 'MOSL031124HDFSLSA9', 1, 'qr_generado_1.png'),
(1, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '2024-10-08 11:20:48', '2024-10-08 11:51:22', '2024-10-08', 'Entrevista', 'MOSL031124HDFSLSA9', 1, 'http://localhost/Registro/Registros.php?credencial=1'),
(1, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '2024-10-08 11:42:13', '2024-10-08 11:51:22', '2024-10-08', 'Entrevista', 'MOSL031124HDFSLSA9', 1, 'http://localhost/Registro/Registros.php?credencial=1'),
(1, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '2024-10-08 11:50:40', '2024-10-08 11:51:22', '2024-10-08', 'Entrevista', 'MOSL031124HDFSLSA9', 1, 'http://localhost/Registro/Registros.php?credencial=1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padres`
--

CREATE TABLE `padres` (
  `id_padre` int(11) NOT NULL,
  `nombre_padre` varchar(100) DEFAULT NULL,
  `correo_padre` varchar(100) DEFAULT NULL,
  `telefono_padre` varchar(20) DEFAULT NULL,
  `direccion_padre` varchar(200) DEFAULT NULL,
  `id_alumno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `padres`
--

INSERT INTO `padres` (`id_padre`, `nombre_padre`, `correo_padre`, `telefono_padre`, `direccion_padre`, `id_alumno`) VALUES
(3, 'María Pérez', 'mariaperez@example.com', '55-8765-4321', 'Calle Falsa 456, Ciudad de México', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `id` int(11) NOT NULL,
  `nombre_completo` varchar(100) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `asistencias` int(11) DEFAULT NULL,
  `faltas` int(11) DEFAULT NULL,
  `permisos_otorgados` int(11) DEFAULT NULL,
  `permisos_solicitados` int(11) DEFAULT NULL,
  `turno` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitantes`
--

CREATE TABLE `visitantes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `hora_entrada` time NOT NULL,
  `hora_salida` time NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp(),
  `motivo` varchar(255) NOT NULL,
  `curp` varchar(18) NOT NULL,
  `credencial` int(2) DEFAULT NULL,
  `qr_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `visitantes`
--

INSERT INTO `visitantes` (`id`, `nombre`, `correo`, `telefono`, `hora_entrada`, `hora_salida`, `fecha_registro`, `motivo`, `curp`, `credencial`, `qr_code`) VALUES
(77, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '08:32:30', '08:33:39', '2024-10-04 06:32:30', 'Convivio', 'MOSL031124HDFSLSA9', NULL, NULL),
(78, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '17:13:16', '17:13:40', '2024-10-04 15:13:16', 'Convivio', 'MOSL031124HDFSLSA9', NULL, NULL),
(79, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '17:14:56', '17:15:09', '2024-10-04 15:14:56', 'Convivio', 'MOSL031124HDFSLSA9', NULL, NULL),
(80, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '17:21:32', '17:21:43', '2024-10-04 15:21:32', 'Convivio', 'MOSL031124HDFSLSA9', NULL, NULL),
(81, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '17:43:11', '17:43:25', '2024-10-04 15:43:11', 'Convivio', 'MOSL031124HDFSLSA9', NULL, NULL),
(82, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '17:45:00', '17:45:23', '2024-10-04 15:45:00', 'Convivio', 'MOSL031124HDFSLSA9', NULL, NULL),
(83, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '17:45:40', '17:46:41', '2024-10-04 15:45:40', 'Convivio', 'MOSL031124HDFSLSA9', NULL, NULL),
(84, 'Fernando Christian Mosco Salazar', 'chicocongorraroja@gmail.com', '5530016917', '17:46:19', '17:46:48', '2024-10-04 15:46:19', 'informes', 'MOSF050723HDFSLRA1', NULL, NULL),
(85, 'Fernando Christian Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '18:38:05', '18:38:28', '2024-10-04 16:38:05', 'Convivio', 'MOSL031124HDFSLSA9', NULL, NULL),
(86, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '19:57:32', '19:58:34', '2024-10-04 17:57:32', 'Convivio', 'MOSL031124HDFSLSA9', NULL, NULL),
(87, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '20:12:48', '20:13:01', '2024-10-04 18:12:48', 'Convivio', 'MOSL031124HDFSLSA9', NULL, NULL),
(88, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '18:07:41', '18:07:55', '2024-10-07 16:07:41', 'Convivio', 'MOSL031124HDFSLSA9', NULL, NULL),
(89, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '18:27:36', '18:27:57', '2024-10-07 16:27:36', 'Visita a cliente', 'MOSL031124HDFSLSA9', NULL, NULL),
(90, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5530016917', '18:31:05', '18:31:27', '2024-10-07 16:31:05', 'Presentación de proyecto', 'MOSL031124HDFSLSA9', NULL, NULL),
(91, 'Fernando Christian Mosco Salazar', 'chicocongorraroja@gmail.com', '5530016917', '10:37:04', '10:37:45', '2024-10-07 16:37:04', 'Revisión de trabajo', 'MOSF050723HDFSLRA1', NULL, NULL),
(92, 'Fernando Christian Mosco Salazar', 'chicocongorraroja@gmail.com', '5530016917', '15:14:31', '15:14:38', '2024-10-07 21:14:31', 'Revisión de trabajo', 'MOSF050723HDFSLRA1', NULL, NULL),
(93, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '15:42:09', '15:43:57', '2024-10-07 21:42:09', 'Reunión', 'MOSL031124HDFSLSA9', NULL, 'qr_generado_1.png'),
(94, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '11:05:25', '11:05:32', '2024-10-08 17:05:25', 'Visita a cliente', 'MOSL031124HDFSLSA9', NULL, 'qr_generado_1.png'),
(95, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '11:20:48', '11:21:00', '2024-10-08 17:20:48', 'Entrevista', 'MOSL031124HDFSLSA9', NULL, 'http://localhost/Registro/Registros.php?credencial=1'),
(96, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '11:42:13', '11:42:18', '2024-10-08 17:42:13', 'Entrevista', 'MOSL031124HDFSLSA9', NULL, 'http://localhost/Registro/Registros.php?credencial=1'),
(97, 'Luis Angel Mosco Salazar', 'luis.elpicom.s@gmail.com', '5571900878', '11:50:40', '11:51:22', '2024-10-08 17:50:40', 'Entrevista', 'MOSL031124HDFSLSA9', NULL, 'http://localhost/Registro/Registros.php?credencial=1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id_alumno`);

--
-- Indices de la tabla `credenciales`
--
ALTER TABLE `credenciales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `faltas`
--
ALTER TABLE `faltas`
  ADD PRIMARY KEY (`id_falta`),
  ADD KEY `id_alumno` (`id_alumno`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `padres`
--
ALTER TABLE `padres`
  ADD PRIMARY KEY (`id_padre`),
  ADD KEY `id_alumno` (`id_alumno`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `credencial` (`credencial`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `credenciales`
--
ALTER TABLE `credenciales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `faltas`
--
ALTER TABLE `faltas`
  MODIFY `id_falta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `padres`
--
ALTER TABLE `padres`
  MODIFY `id_padre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `faltas`
--
ALTER TABLE `faltas`
  ADD CONSTRAINT `faltas_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id_alumno`);

--
-- Filtros para la tabla `padres`
--
ALTER TABLE `padres`
  ADD CONSTRAINT `padres_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id_alumno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
