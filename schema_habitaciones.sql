-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.6-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para integracion_servicios
CREATE DATABASE IF NOT EXISTS `integracion_servicios` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `integracion_servicios`;

-- Volcando estructura para tabla integracion_servicios.habitaciones
CREATE TABLE IF NOT EXISTS `habitaciones` (
  `idHabitacion` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria',
  `cantidadCamas` int(11) NOT NULL COMMENT 'Cantidad de camas',
  `valorNoche` int(11) NOT NULL COMMENT 'Valor de la cama por noche',
  `isDisponible` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Indicador si cama esta o no disponible',
  PRIMARY KEY (`idHabitacion`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tabla de registro de habitaciones';

-- Volcando datos para la tabla integracion_servicios.habitaciones: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `habitaciones` DISABLE KEYS */;
INSERT INTO `habitaciones` (`idHabitacion`, `cantidadCamas`, `valorNoche`, `isDisponible`) VALUES
	(1, 2, 15000, 1),
	(2, 3, 25000, 1),
	(3, 1, 10000, 1),
	(4, 1, 30000, 1),
	(5, 1, 10000, 1),
	(6, 3, 50000, 0),
	(7, 2, 35000, 0),
	(8, 2, 15000, 1),
	(11, 2, 25000, 1),
	(12, 2, 25000, 1),
	(13, 3, 25000, 1),
	(14, 3, 25000, 1),
	(15, 3, 25000, 1),
	(16, 1, 26000, 1);
/*!40000 ALTER TABLE `habitaciones` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
