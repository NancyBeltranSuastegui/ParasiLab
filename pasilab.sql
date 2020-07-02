-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2020 a las 16:35:46
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pasilab`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_personales`
--

CREATE TABLE `datos_personales` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes_relaciones`
--

CREATE TABLE `imagenes_relaciones` (
  `ruta_imagen` varchar(100) NOT NULL,
  `id_imagen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes_teorias`
--

CREATE TABLE `imagenes_teorias` (
  `id_tema` int(11) NOT NULL,
  `ruta_imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laberinto`
--

CREATE TABLE `laberinto` (
  `id_lab` int(11) NOT NULL,
  `ruta_imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `memoramas`
--

CREATE TABLE `memoramas` (
  `id_memo` int(11) NOT NULL,
  `ruta_imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_imagenes`
--

CREATE TABLE `relacion_imagenes` (
  `id_imagen` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rompecabezas`
--

CREATE TABLE `rompecabezas` (
  `id_romp` int(11) NOT NULL,
  `ruta_imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sopas`
--

CREATE TABLE `sopas` (
  `id_sopa` int(11) NOT NULL,
  `palabra` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teorias`
--

CREATE TABLE `teorias` (
  `id_tema` int(11) NOT NULL,
  `tema` varchar(50) NOT NULL,
  `informacion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_movil`
--

CREATE TABLE `usuarios_movil` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `contraseña` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos_personales`
--
ALTER TABLE `datos_personales`
  ADD KEY `FK_idusuario_idusuario` (`id_usuario`);

--
-- Indices de la tabla `imagenes_relaciones`
--
ALTER TABLE `imagenes_relaciones`
  ADD KEY `FK_idimagen_idimagen` (`id_imagen`);

--
-- Indices de la tabla `imagenes_teorias`
--
ALTER TABLE `imagenes_teorias`
  ADD KEY `FK_idtema_idtema` (`id_tema`);

--
-- Indices de la tabla `relacion_imagenes`
--
ALTER TABLE `relacion_imagenes`
  ADD PRIMARY KEY (`id_imagen`);

--
-- Indices de la tabla `rompecabezas`
--
ALTER TABLE `rompecabezas`
  ADD PRIMARY KEY (`id_romp`);

--
-- Indices de la tabla `sopas`
--
ALTER TABLE `sopas`
  ADD PRIMARY KEY (`id_sopa`);

--
-- Indices de la tabla `teorias`
--
ALTER TABLE `teorias`
  ADD PRIMARY KEY (`id_tema`);

--
-- Indices de la tabla `usuarios_movil`
--
ALTER TABLE `usuarios_movil`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `relacion_imagenes`
--
ALTER TABLE `relacion_imagenes`
  MODIFY `id_imagen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sopas`
--
ALTER TABLE `sopas`
  MODIFY `id_sopa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `teorias`
--
ALTER TABLE `teorias`
  MODIFY `id_tema` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios_movil`
--
ALTER TABLE `usuarios_movil`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `datos_personales`
--
ALTER TABLE `datos_personales`
  ADD CONSTRAINT `FK_idusuario_idusuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios_movil` (`id_usuario`);

--
-- Filtros para la tabla `imagenes_relaciones`
--
ALTER TABLE `imagenes_relaciones`
  ADD CONSTRAINT `FK_idimagen_idimagen` FOREIGN KEY (`id_imagen`) REFERENCES `relacion_imagenes` (`id_imagen`);

--
-- Filtros para la tabla `imagenes_teorias`
--
ALTER TABLE `imagenes_teorias`
  ADD CONSTRAINT `FK_idtema_idtema` FOREIGN KEY (`id_tema`) REFERENCES `teorias` (`id_tema`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
