-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-09-2020 a las 23:39:39
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mesnajesmail`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes_mail`
--

CREATE TABLE `mensajes_mail` (
  `idMensajesMail` int(11) NOT NULL,
  `destinatarios` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `asunto` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `adjuntos` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mensaje` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fechaRegistro` datetime NOT NULL,
  `fechaEnvio` datetime DEFAULT NULL,
  `enviado` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mensajes_mail`
--

INSERT INTO `mensajes_mail` (`idMensajesMail`, `destinatarios`, `asunto`, `adjuntos`, `mensaje`, `fechaRegistro`, `fechaEnvio`, `enviado`) VALUES
(1, 'mario.ramireza@suramexico.com', '1', NULL, 'ola', '2018-01-04 00:00:00', '2018-01-04 16:25:41', 1),
(2, 'mario.ramireza@suramexico.com', '2', NULL, 'ola ke ase', '2018-01-04 00:00:00', '2018-01-04 16:25:55', 1),
(3, 'mario.ramireza@suramexico.com', '3', NULL, 'ola ke ase?', '2018-01-04 09:23:11', '2018-01-04 16:25:59', 1),
(4, 'mario.ramireza@suramexico.com', '4', NULL, 'ASD', '2018-01-04 10:41:49', '2018-01-04 16:26:03', 1),
(5, 'mario.ramireza@suramexico.com', '5', NULL, 'ASDF', '2018-01-04 10:41:49', '2018-01-04 16:26:07', 1),
(6, 'mario.ramireza@suramexico.com', '6', NULL, 'ASDFG', '2018-01-04 10:41:49', '2018-01-04 16:26:14', 1),
(7, 'mario.ramireza@suramexico.com', '7', NULL, 'lo espero saludos', '2018-01-04 10:41:49', '2018-01-04 16:26:18', 1),
(8, 'mario.ramireza@suramexico.com', '8', NULL, 'cita el proximo lunes', '2018-01-04 10:41:49', '2018-01-04 16:26:21', 1),
(9, 'mario.ramireza@suramexico.com', 'Prueba de correo', NULL, 'Ola ke ase? probando el envio de korreo o ke ase?', '2018-01-04 16:32:11', '2018-01-04 16:32:27', 1),
(10, 'yessenia.gutierrez@suramexico.com', 'Prueba de correo', NULL, 'Ola ke ase? probando el envio de korreo o ke ase?', '2018-01-04 16:32:11', '2018-01-04 16:32:30', 1),
(11, 'mario.ramireza@suramexico.com', 'Prueba de correo', NULL, 'Ola ke ase? probando el envio de korreo o ke ase?', '2018-01-04 16:35:28', '2018-01-04 16:35:37', 1),
(12, 'mario.ramireza@suramexico.com', 'Prueba de correo', NULL, 'Ola ke ase? probando el envio de korreo o ke ase?', '2018-01-04 16:36:29', '2018-01-04 16:36:45', 1),
(13, 'mario.ramireza@suramexico.com', 'Prueba de correo', NULL, 'Ola ke ase? probando el envio de korreo o ke ase?', '2018-01-04 16:40:14', '2018-01-04 16:40:25', 1),
(14, 'mario.ramireza@suramexico.com', 'Prueba de correo', NULL, 'Ola ke ase? probando el envio de korreo o ke ase?', '2018-01-04 16:41:33', '2018-01-04 16:41:45', 1),
(15, 'mario.ramireza@suramexico.com', 'Prueba de correo', NULL, 'Ola ke ase? probando el envio de korreo o ke ase?', '2018-01-04 16:45:52', '2018-01-04 16:46:11', 1),
(16, 'mario.ramireza@suramexico.com', 'Prueba de correo', NULL, 'Ola ke ase? probando el envio de korreo o ke ase?', '2018-01-04 16:47:55', '2018-01-04 16:48:04', 2),
(17, 'mario.ramireza@suramexico.com', 'Prueba de correo', NULL, 'Ola ke ase? probando el envio de korreo o ke ase?', '2018-01-04 16:48:41', '2018-01-04 16:48:52', 1),
(18, 'mario.ramireza@suramexico.com', 'Prueba de correo', NULL, 'Ola ke ase? probando el envio de korreo o ke ase?', '2018-01-04 16:50:37', '2018-01-04 16:50:45', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mensajes_mail`
--
ALTER TABLE `mensajes_mail`
  ADD PRIMARY KEY (`idMensajesMail`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mensajes_mail`
--
ALTER TABLE `mensajes_mail`
  MODIFY `idMensajesMail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
