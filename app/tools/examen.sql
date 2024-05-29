-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2024 a las 15:43:58
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examen`
--
CREATE DATABASE IF NOT EXISTS `examen` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `examen`;

DELIMITER $$
--
-- Procedimientos
--
DROP PROCEDURE IF EXISTS `sp_crearCita`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_crearCita` (IN `_DESCRIPCION` VARCHAR(200))   BEGIN

INSERT INTO CITA (DESCRIPCION)
VALUES (_DESCRIPCION);

END$$

DROP PROCEDURE IF EXISTS `sp_EliminarCita`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_EliminarCita` (IN `_ID` INT)   BEGIN

DELETE FROM CITA WHERE ID = _ID;

END$$

DROP PROCEDURE IF EXISTS `sp_listarCita`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listarCita` ()   BEGIN 

SELECT *
FROM cita;

END$$

DROP PROCEDURE IF EXISTS `sp_modificarCita`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificarCita` (IN `_ID` INT, IN `_DESCRIPCION` VARCHAR(200))   BEGIN

UPDATE CITA SET DESCRIPCION = _DESCRIPCION
WHERE ID = _ID;

END$$

DROP PROCEDURE IF EXISTS `sp_mostrarCita`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mostrarCita` (IN `_ID` INT)   BEGIN

SELECT *
FROM CITA WHERE ID = _ID;

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--

DROP TABLE IF EXISTS `cita`;
CREATE TABLE `cita` (
  `ID` int(11) NOT NULL,
  `DESCRIPCION` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cita`
--

INSERT INTO `cita` (`ID`, `DESCRIPCION`) VALUES
(1, 'cita pediatra');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cita`
--
ALTER TABLE `cita`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cita`
--
ALTER TABLE `cita`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
