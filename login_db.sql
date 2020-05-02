-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-09-2018 a las 00:35:46
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `login_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funciones`
--

CREATE TABLE `funciones` (
  `Id_funciones` int(11) NOT NULL,
  `Id_usuario` int(11) NOT NULL,
  `Id_perfil` int(11) NOT NULL,
  `Id_privilegios` int(11) NOT NULL,
  `Funciones` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `Id_perfil` int(11) NOT NULL,
  `Id_usuario` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `privilegios`
--

CREATE TABLE `privilegios` (
  `Id_privilegios` int(11) NOT NULL,
  `Tipo_privilegio` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_usuario` int(11) NOT NULL,
  `Nombres` varchar(50) NOT NULL,
  `Apellidos` varchar(50) NOT NULL,
  `Edad` int(2) NOT NULL,
  `Sexo` varchar(10) NOT NULL,
  `Numero_de_telefono` int(8) NOT NULL,
  `Correo_electronico` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `repeat_password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_usuario`, `Nombres`, `Apellidos`, `Edad`, `Sexo`, `Numero_de_telefono`, `Correo_electronico`, `password`, `repeat_password`) VALUES
(1, 'Maria de los Ángeles', 'Salinas Solis', 16, 'Mujer', 78854563, 'maria.salinas@gmail.com', '123456789', '123456789'),
(2, 'Reina', 'Ramos', 26, 'Mujer', 75958632, 'reina.ramos@gmail.com', '789632145', '789632145'),
(3, 'Steven Gustavo', 'Lara', 18, 'Hombre', 73698456, 'steven.lara@gmail.com', '741258963', '741258963'),
(4, 'Monica Gabriela', 'Valdizon Alegria', 16, 'Mujer', 72862203, 'monica.valdizon@gmail.com', '147852369', '147852369');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `funciones`
--
ALTER TABLE `funciones`
  ADD PRIMARY KEY (`Id_funciones`),
  ADD KEY `Id_usuario` (`Id_usuario`),
  ADD KEY `Id_usuario_2` (`Id_usuario`),
  ADD KEY `Id_perfil` (`Id_perfil`),
  ADD KEY `Id_privilegios` (`Id_privilegios`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`Id_perfil`),
  ADD KEY `Id_usuario` (`Id_usuario`),
  ADD KEY `Nombre` (`Nombre`);

--
-- Indices de la tabla `privilegios`
--
ALTER TABLE `privilegios`
  ADD PRIMARY KEY (`Id_privilegios`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_usuario`);
ALTER TABLE `usuario` ADD FULLTEXT KEY `Nombres` (`Nombres`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `funciones`
--
ALTER TABLE `funciones`
  MODIFY `Id_funciones` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `Id_perfil` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `privilegios`
--
ALTER TABLE `privilegios`
  MODIFY `Id_privilegios` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
