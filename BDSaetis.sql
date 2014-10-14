-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-06-2014 a las 19:17:19
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `saetis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicacion`
--

CREATE TABLE IF NOT EXISTS `aplicacion` (
  `APLICACION_A` varchar(50) NOT NULL,
  PRIMARY KEY (`APLICACION_A`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesor`
--

CREATE TABLE IF NOT EXISTS `asesor` (
  `NOMBRE_U` varchar(50) NOT NULL,
  `NOMBRES_A` varchar(50) NOT NULL,
  `APELLIDOS_A` varchar(50) NOT NULL,
  PRIMARY KEY (`NOMBRE_U`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=4096;

--
-- Volcado de datos para la tabla `asesor`
--

INSERT INTO `asesor` (`NOMBRE_U`, `NOMBRES_A`, `APELLIDOS_A`) VALUES
('akire', 'Patricia', 'Romero'),
('boris', 'Boris', 'Calancha'),
('leticia', 'Leticia', 'Blanco'),
('marcelo', 'Marcelo', 'Flores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion`
--

CREATE TABLE IF NOT EXISTS `asignacion` (
  `ID_R` int(11) NOT NULL,
  `EMISOR_A` varchar(30) NOT NULL,
  `RECEPTOR_A` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_R`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE IF NOT EXISTS `asistencia` (
  `ID_R` int(11) NOT NULL,
  `CODIGO_SOCIO_A` int(11) NOT NULL,
  `ASISTENCIA_A` tinyint(1) NOT NULL,
  `LICENCIA_A` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID_R`,`CODIGO_SOCIO_A`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criterio_evaluacion`
--

CREATE TABLE IF NOT EXISTS `criterio_evaluacion` (
  `ID_R` int(11) NOT NULL,
  `ID_C_E` int(11) NOT NULL,
  `CRITERIO_E` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`ID_R`,`ID_C_E`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=4096;

--
-- Volcado de datos para la tabla `criterio_evaluacion`
--

INSERT INTO `criterio_evaluacion` (`ID_R`, `ID_C_E`, `CRITERIO_E`) VALUES
(7, 1, 'Armonia en la especificacion de interfaz de Usuario'),
(8, 2, 'Calidad en el Modelamiento de Componentes'),
(9, 3, 'Amigabilidad de Uso del Proyecto a desarrollar'),
(10, 4, 'Cumplimiento de Documentación que se ha Ofrecido'),
(22, 5, 'criterio numero 20'),
(23, 6, 'criterio 20'),
(26, 7, 'Puntualidad en la asitencia'),
(45, 8, 'criterio 4'),
(62, 9, 'EQUIPO DE TRABAJO'),
(63, 10, 'TRABAJO DE EQUIPO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descripcion`
--

CREATE TABLE IF NOT EXISTS `descripcion` (
  `ID_R` int(11) NOT NULL,
  `DESCRIPCION_D` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_R`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=8192;

--
-- Volcado de datos para la tabla `descripcion`
--

INSERT INTO `descripcion` (`ID_R`, `DESCRIPCION_D`) VALUES
(1, 'Suba la propuesta en el siguiente formato: NombreEmpresa_ParteA.zip'),
(2, 'Suba la propuesta en el siguiente formato: NombreEmpresa_ParteB.zip'),
(3, 'Suba la Propuesta Modificada en el siguiente formato: NombreEmpresa_Modificada.zip'),
(27, 'Para su consideracion...<br>'),
(28, 'Para su consideracion<br>'),
(29, 'Pliego de especificaciones<br>'),
(30, 'Para su consideracion...'),
(31, 'PETIS'),
(32, 'BG'),
(33, 'Para su consideracion...'),
(46, 'Para su consideracion...'),
(65, 'Para su consideracion...'),
(66, 'LAS GE DEBEN PERSONALIZAR LOS ESPACIOS QUE ESTAN ENTRE &lt;&gt;<br>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE IF NOT EXISTS `documento` (
  `ID_D` int(11) NOT NULL AUTO_INCREMENT,
  `ID_R` int(11) NOT NULL,
  `TAMANIO_D` int(11) NOT NULL,
  `RUTA_D` varchar(100) NOT NULL,
  `VISUALIZABLE_D` tinyint(1) NOT NULL,
  `DESCARGABLE_D` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID_D`) USING BTREE,
  KEY `FK_REGISTRO_DOCUMENTO` (`ID_R`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`ID_D`, `ID_R`, `TAMANIO_D`, `RUTA_D`, `VISUALIZABLE_D`, `DESCARGABLE_D`) VALUES
(1, 4, 4444, '/Repositorio/freevalue/NC/freevalue_NC.pdf', 1, 1),
(2, 5, 4444, '/Repositorio/camaleon/NC/camaleon_NC.pdf', 1, 1),
(3, 6, 4444, '/Repositorio/camaleon/NC/camaleon_NC.pdf', 1, 1),
(4, 21, 6987, '/Repositorio/freevalue/saetis.sql', 1, 1),
(5, 25, 509872, '/Repositorio/freevalue/APNSetup.exe', 1, 1),
(7, 28, 1024, 'http://localhost/ProyectoSprint3/Repositorio/asesor/FETIS.pdf', 1, 1),
(8, 29, 1024, 'http://localhost/ProyectoSprint3/Repositorio/asesor/CPETIS2014.pdf', 1, 1),
(9, 30, 1024, '/Repositorio/Indesoft Inc/OC/Orden de Cambio_Indesoft Inc.pdf.pdf', 0, 0),
(10, 31, 1024, 'http://localhost/ProyectoSprint3/Repositorio/asesor/PETIS2014.pdf', 1, 1),
(11, 32, 1024, 'http://localhost/ProyectoSprint3/Repositorio/asesor/BOLETAGARANTIA.xls', 1, 1),
(12, 33, 1024, '/Repositorio/Arkano Corp/OC/Orden de Cambio_Arkano Corp.pdf.pdf', 0, 0),
(13, 46, 1024, '/Repositorio/Arkano Corp/OC/Orden de Cambio_Arkano Corp.pdf.pdf', 0, 0),
(14, 47, 4444, '/Repositorio/Agile Action/NC/Agile Action_NC.pdf', 1, 1),
(15, 50, 158159, '/Repositorio/freevalue/modelo1Sprint2.pdf', 1, 1),
(16, 51, 158159, '/Repositorio/freevalue/modelo1Sprint2.pdf', 1, 1),
(17, 52, 158159, '/Repositorio/freevalue/modelo1Sprint2.pdf', 1, 1),
(18, 53, 158159, '/Repositorio/freevalue/modelo1Sprint2.pdf', 1, 1),
(19, 54, 158159, '/Repositorio/freevalue/modelo1Sprint2.pdf', 1, 1),
(20, 55, 158159, '/Repositorio/freevalue/modelo1Sprint2.pdf', 1, 1),
(21, 56, 158159, '/Repositorio/freevalue/modelo1Sprint2.pdf', 1, 1),
(22, 57, 158159, '/Repositorio/freevalue/modelo1Sprint2.pdf', 1, 1),
(23, 58, 158159, '/Repositorio/freevalue/modelo1Sprint2.pdf', 1, 1),
(24, 59, 158159, '/Repositorio/freevalue/modelo1Sprint2.pdf', 1, 1),
(25, 60, 158159, '/Repositorio/freevalue/modelo1Sprint2.pdf', 1, 1),
(26, 61, 158159, '/Repositorio/freevalue/modelo1Sprint2.pdf', 1, 1),
(27, 65, 1024, '/Repositorio/Arkano Corp/OC/Orden de Cambio_Arkano Corp.pdf.pdf', 0, 0),
(28, 66, 1024, 'http://localhost/ProyectoSprint3/Repositorio/asesor/FETIS.pdf', 1, 1),
(29, 67, 4444, '/Repositorio/Agile Action/NC/Agile Action_NC.pdf', 1, 1),
(30, 68, 900245, '/Repositorio/freevalue/Enigmas de la II guerra mundial jesus hernandes.pdf', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrega`
--

CREATE TABLE IF NOT EXISTS `entrega` (
  `ID_R` int(11) NOT NULL,
  `ENTREGABLE_P` varchar(30) NOT NULL,
  `ENTREGADO_P` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID_R`,`ENTREGABLE_P`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entregable`
--

CREATE TABLE IF NOT EXISTS `entregable` (
  `NOMBRE_U` varchar(50) NOT NULL,
  `ENTREGABLE_E` char(30) NOT NULL,
  `DESCRIPCION_E` varchar(50) NOT NULL,
  PRIMARY KEY (`NOMBRE_U`,`ENTREGABLE_E`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE IF NOT EXISTS `estado` (
  `ESTADO_E` varchar(50) NOT NULL,
  PRIMARY KEY (`ESTADO_E`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=8192;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`ESTADO_E`) VALUES
('deshabilitado'),
('en proceso'),
('habilitado'),
('planificacion registrada'),
('registrar costo total proyecto'),
('registrar entregables'),
('registrar plan pagos'),
('registrar planificacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fecha_realizacion`
--

CREATE TABLE IF NOT EXISTS `fecha_realizacion` (
  `ID_R` int(11) NOT NULL,
  `FECHA_FR` date NOT NULL,
  PRIMARY KEY (`ID_R`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestion`
--

CREATE TABLE IF NOT EXISTS `gestion` (
  `ID_G` int(11) NOT NULL AUTO_INCREMENT,
  `FECHA_INICIO_G` date NOT NULL,
  `FECHA_FIN_G` date NOT NULL,
  PRIMARY KEY (`ID_G`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=8192 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `gestion`
--

INSERT INTO `gestion` (`ID_G`, `FECHA_INICIO_G`, `FECHA_FIN_G`) VALUES
(1, '2014-02-03', '2014-06-27'),
(2, '2014-07-28', '2014-12-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_empresa`
--

CREATE TABLE IF NOT EXISTS `grupo_empresa` (
  `NOMBRE_U` varchar(50) NOT NULL,
  `NOMBRE_CORTO_GE` char(50) NOT NULL,
  `NOMBRE_LARGO_GE` varchar(50) NOT NULL,
  `DIRECCION_GE` varchar(50) NOT NULL,
  PRIMARY KEY (`NOMBRE_U`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=4096;

--
-- Volcado de datos para la tabla `grupo_empresa`
--

INSERT INTO `grupo_empresa` (`NOMBRE_U`, `NOMBRE_CORTO_GE`, `NOMBRE_LARGO_GE`, `DIRECCION_GE`) VALUES
('Agile Action', 'Agile Action', 'Agile Action  ', 'Agile Action '),
('Akira soft', 'Akira Soft', 'Akira soft srl', 'Agile Action '),
('Arkano', 'Arkano', 'Arkano Corp', 'Arkano '),
('Bolivia soft', 'Bolivia Soft', 'Bolivia Soft SRL', 'Bolivia Soft'),
('camaleon', 'camaleon', 'Camaleon Soft', 'calle Republica'),
('colectivo', 'colectivo', 'Colectivo Soft', 'Av. 6 de Agosto'),
('freevalue', 'freevalue', 'Freevalue.srl', 'calle Jordan y Suipacha'),
('Hellsoft', 'Hellsoft', 'Hellsoft INC', 'Hellsoft INC'),
('Indesoft', 'Indesoft', 'Indesoft Inc', 'Indesoft'),
('Kdes', 'Kdes', 'Kdes LTA', 'Kdes'),
('Maveric', 'Maveric', 'Maveric SRL', 'Maveric'),
('trinidad', 'trinidad', 'Trinidad Soft SRL', 'Av. Circunvalacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion`
--

CREATE TABLE IF NOT EXISTS `inscripcion` (
  `NOMBRE_UA` varchar(50) NOT NULL,
  `NOMBRE_UGE` varchar(50) NOT NULL,
  `ID_G` int(11) NOT NULL,
  `CODIGO_P` int(11) NOT NULL,
  PRIMARY KEY (`NOMBRE_UGE`,`NOMBRE_UA`,`ID_G`,`CODIGO_P`) USING BTREE,
  KEY `FK_ASESOR__INSCRIPCION` (`NOMBRE_UA`) USING BTREE,
  KEY `FK_GESTION__INSCRIPCION` (`ID_G`) USING BTREE,
  KEY `FK_PROYECTO__INSCRIPCION` (`CODIGO_P`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=4096;

--
-- Volcado de datos para la tabla `inscripcion`
--

INSERT INTO `inscripcion` (`NOMBRE_UA`, `NOMBRE_UGE`, `ID_G`, `CODIGO_P`) VALUES
('leticia', 'Agile Action', 1, 1),
('boris', 'Arkano', 1, 1),
('leticia', 'Bolivia soft', 1, 1),
('leticia', 'camaleon', 1, 1),
('akire', 'colectivo', 1, 1),
('leticia', 'freevalue', 1, 1),
('boris', 'Hellsoft', 1, 1),
('boris', 'Indesoft', 1, 1),
('akire', 'Kdes', 1, 1),
('akire', 'Maveric', 1, 1),
('marcelo', 'trinidad', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE IF NOT EXISTS `mensaje` (
  `ID_R` int(11) NOT NULL,
  `ASUNTO_M` varchar(30) NOT NULL,
  `MENSAJE_M` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_R`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE IF NOT EXISTS `pago` (
  `ID_R` int(11) NOT NULL,
  `MONTO_P` decimal(10,0) NOT NULL,
  `PORCENTAJE_DEL_TOTAL_P` int(11) NOT NULL,
  PRIMARY KEY (`ID_R`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planificacion`
--

CREATE TABLE IF NOT EXISTS `planificacion` (
  `NOMBRE_U` varchar(50) NOT NULL,
  `ESTADO_E` varchar(50) NOT NULL,
  `FECHA_INICIO_P` date NOT NULL,
  `FECHA_FIN_P` date NOT NULL,
  PRIMARY KEY (`NOMBRE_U`) USING BTREE,
  KEY `FK_ESTADO__PLANIFICACION` (`ESTADO_E`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `planificacion`
--

INSERT INTO `planificacion` (`NOMBRE_U`, `ESTADO_E`, `FECHA_INICIO_P`, `FECHA_FIN_P`) VALUES
('freevalue', 'registrar planificacion', '2014-06-01', '2014-06-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plazo`
--

CREATE TABLE IF NOT EXISTS `plazo` (
  `ID_R` int(11) NOT NULL,
  `FECHA_INICIO_PL` date NOT NULL,
  `FECHA_FIN_PL` date NOT NULL,
  `HORA_INICIO_PL` time NOT NULL,
  `HORA_FIN_PL` time NOT NULL,
  PRIMARY KEY (`ID_R`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=8192;

--
-- Volcado de datos para la tabla `plazo`
--

INSERT INTO `plazo` (`ID_R`, `FECHA_INICIO_PL`, `FECHA_FIN_PL`, `HORA_INICIO_PL`, `HORA_FIN_PL`) VALUES
(1, '2014-07-04', '2014-06-30', '14:55:00', '14:25:00'),
(2, '2014-06-05', '2014-06-30', '12:00:00', '12:00:00'),
(3, '2014-06-01', '2014-06-30', '00:05:00', '23:45:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precio`
--

CREATE TABLE IF NOT EXISTS `precio` (
  `NOMBRE_U` varchar(50) NOT NULL,
  `PRECIO_P` decimal(10,0) NOT NULL,
  PRIMARY KEY (`NOMBRE_U`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE IF NOT EXISTS `proyecto` (
  `CODIGO_P` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE_P` varchar(50) NOT NULL,
  `DESCRIPCION_P` varchar(200) NOT NULL,
  PRIMARY KEY (`CODIGO_P`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=8192 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`CODIGO_P`, `NOMBRE_P`, `DESCRIPCION_P`) VALUES
(1, 'Sistema de Apoyo a TIS', 'Sistema de gestion, para el asesoramiento de la materia TIS'),
(2, 'Videoteca Virtual', 'Biblioteca de videos en linea');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE IF NOT EXISTS `registro` (
  `ID_R` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE_U` varchar(50) NOT NULL,
  `TIPO_T` varchar(50) NOT NULL,
  `ESTADO_E` varchar(50) NOT NULL,
  `NOMBRE_R` varchar(50) NOT NULL,
  `FECHA_R` date NOT NULL,
  `HORA_R` time NOT NULL,
  PRIMARY KEY (`ID_R`) USING BTREE,
  KEY `FK_ESTADO__REGISTRO` (`ESTADO_E`) USING BTREE,
  KEY `FK_TIPO__REGISTRO` (`TIPO_T`) USING BTREE,
  KEY `FK_USUARIO_REGISTRO` (`NOMBRE_U`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=8192 AUTO_INCREMENT=72 ;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`ID_R`, `NOMBRE_U`, `TIPO_T`, `ESTADO_E`, `NOMBRE_R`, `FECHA_R`, `HORA_R`) VALUES
(1, 'leticia', 'documento requerido', 'habilitado', 'Propuesta de Desarrollo parte A', '2014-06-05', '12:20:00'),
(2, 'leticia', 'documento requerido', 'habilitado', 'Propuesta de Desarrollo parte B', '2014-06-05', '12:24:00'),
(3, 'leticia', 'documento requerido', 'habilitado', 'Propuesta Modificada', '2014-06-08', '12:00:00'),
(4, 'freevalue', 'notificacion de conformidad', 'habilitado', 'freevalue_NC.pdf', '2014-06-08', '10:10:49'),
(5, 'camaleon', 'notificacion de conformidad', 'habilitado', 'camaleon_NC.pdf', '2014-06-08', '10:10:53'),
(6, 'camaleon', 'notificacion de conformidad', 'habilitado', 'camaleon_NC.pdf', '2014-06-08', '13:13:50'),
(7, 'leticia', 'criterio evaluacion', 'habilitado', 'criterio_evaluacion_1', '2014-03-27', '12:00:00'),
(8, 'leticia', 'criterio evaluacion', 'habilitado', 'criterio_evaluacion_2', '2014-03-31', '09:02:12'),
(9, 'leticia', 'criterio evaluacion', 'habilitado', 'criterio_evaluacion_3', '2014-04-09', '13:34:12'),
(10, 'leticia', 'criterio evaluacion', 'habilitado', 'criterio_evaluacion_4', '2014-05-07', '12:54:00'),
(21, 'freevalue', 'documento subido', 'habilitado', 'Propuesta de Desarrollo parte A', '2014-06-08', '14:14:51'),
(22, 'leticia', 'criterio evaluacion', 'habilitado', 'criterio_evaluacion_5', '2014-06-09', '12:15:26'),
(23, 'leticia', 'criterio evaluacion', 'habilitado', 'criterio_evaluacion_6', '2014-06-09', '12:15:38'),
(25, 'freevalue', 'documento subido', 'habilitado', 'APNSetup.exe', '2014-06-09', '14:14:32'),
(26, 'leticia', 'criterio evaluacion', 'habilitado', 'criterio_evaluacion_7', '2014-06-10', '11:39:04'),
(28, 'boris', 'publicaciones', 'habilitado', 'FETIS', '2014-06-11', '02:02:53'),
(29, 'boris', 'publicaciones', 'habilitado', 'PETIS', '2014-06-11', '02:02:54'),
(30, 'Indesoft', 'orden de cambio', 'habilitado', 'Orden de Cambio_Indesoft Inc.pdf', '2014-06-26', '21:25:00'),
(31, 'boris', 'publicaciones', 'habilitado', 'PETIS', '2014-06-11', '03:03:04'),
(32, 'boris', 'publicaciones', 'habilitado', 'Boleta de Garantia', '2014-06-11', '03:03:06'),
(33, 'Arkano', 'orden de cambio', 'habilitado', 'Orden de Cambio_Arkano Corp.pdf', '2014-06-28', '21:25:00'),
(45, 'leticia', 'criterio evaluacion', 'habilitado', 'criterio_evaluacion_8', '2014-06-11', '14:43:48'),
(46, 'Arkano', 'orden de cambio', 'habilitado', 'Orden de Cambio_Arkano Corp.pdf', '2014-06-17', '15:00:00'),
(47, 'Agile Action', 'notificacion de conformidad', 'habilitado', 'Agile Action_NC.pdf', '2014-06-11', '14:14:53'),
(48, 'freevalue', 'Orden de Cambio', 'habilitado', 'orden_cambioFreevalue.pdf', '2014-06-11', '12:00:00'),
(49, 'freevalue', 'Orden de Cambio', 'habilitado', 'documento_orden_cambio.pdf', '2014-06-10', '12:00:00'),
(50, 'freevalue', 'documento subido', 'habilitado', 'modelo1Sprint2.pdf', '2014-06-11', '19:19:03'),
(51, 'freevalue', 'documento subido', 'habilitado', 'modelo1Sprint2.pdf', '2014-06-11', '19:19:03'),
(52, 'freevalue', 'documento subido', 'habilitado', 'modelo1Sprint2.pdf', '2014-06-11', '19:19:03'),
(53, 'freevalue', 'documento subido', 'habilitado', 'modelo1Sprint2.pdf', '2014-06-11', '19:19:03'),
(54, 'freevalue', 'documento subido', 'habilitado', 'modelo1Sprint2.pdf', '2014-06-11', '19:19:03'),
(55, 'freevalue', 'documento subido', 'habilitado', 'modelo1Sprint2.pdf', '2014-06-11', '19:19:03'),
(56, 'freevalue', 'documento subido', 'habilitado', 'modelo1Sprint2.pdf', '2014-06-11', '19:19:03'),
(57, 'freevalue', 'documento subido', 'habilitado', 'modelo1Sprint2.pdf', '2014-06-11', '19:19:03'),
(58, 'freevalue', 'documento subido', 'habilitado', 'modelo1Sprint2.pdf', '2014-06-11', '19:19:03'),
(59, 'freevalue', 'documento subido', 'habilitado', 'modelo1Sprint2.pdf', '2014-06-11', '19:19:03'),
(60, 'freevalue', 'documento subido', 'habilitado', 'modelo1Sprint2.pdf', '2014-06-11', '19:19:03'),
(61, 'freevalue', 'documento subido', 'habilitado', 'modelo1Sprint2.pdf', '2014-06-11', '19:19:03'),
(62, 'leticia', 'criterio evaluacion', 'habilitado', 'criterio_evaluacion_9', '2014-06-11', '20:28:42'),
(63, 'leticia', 'criterio evaluacion', 'habilitado', 'criterio_evaluacion_10', '2014-06-11', '20:29:25'),
(65, 'Arkano', 'orden de cambio', 'habilitado', 'Orden de Cambio_Arkano Corp.pdf', '2014-06-11', '20:35:00'),
(66, 'leticia', 'publicaciones', 'habilitado', 'MODELO DE BOLETA DE GARANTIA', '2014-06-12', '01:01:47'),
(67, 'Agile Action', 'notificacion de conformidad', 'habilitado', 'Agile Action_NC.pdf', '2014-06-11', '19:19:50'),
(68, 'freevalue', 'documento subido', 'habilitado', 'Enigmas de la II guerra mundial jesus hernandes.pd', '2014-06-11', '20:20:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte`
--

CREATE TABLE IF NOT EXISTS `reporte` (
  `ID_R` int(11) NOT NULL,
  `ROL_RR` varchar(50) NOT NULL,
  `ACTIVIDAD_R` varchar(100) NOT NULL,
  `HECHO_R` tinyint(1) NOT NULL,
  `RESULTADO_R` varchar(200) NOT NULL,
  `CONCLUSION_R` varchar(200) NOT NULL,
  `OBSERVACION_R` varchar(200) NOT NULL,
  PRIMARY KEY (`ID_R`,`ROL_RR`) USING BTREE,
  KEY `FK_ROL_REPORTE__REPORTE` (`ROL_RR`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE IF NOT EXISTS `rol` (
  `ROL_R` varchar(50) NOT NULL,
  PRIMARY KEY (`ROL_R`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_aplicacion`
--

CREATE TABLE IF NOT EXISTS `rol_aplicacion` (
  `ROL_R` varchar(50) NOT NULL,
  `APLICACION_A` varchar(50) NOT NULL,
  PRIMARY KEY (`ROL_R`,`APLICACION_A`) USING BTREE,
  KEY `FK_APLICACION__ROL_APLICACION` (`APLICACION_A`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_reporte`
--

CREATE TABLE IF NOT EXISTS `rol_reporte` (
  `ROL_RR` varchar(50) NOT NULL,
  PRIMARY KEY (`ROL_RR`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rol_reporte`
--

INSERT INTO `rol_reporte` (`ROL_RR`) VALUES
('asesor'),
('cliente'),
('jefe de proyecto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesion`
--

CREATE TABLE IF NOT EXISTS `sesion` (
  `ID_S` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE_U` varchar(50) NOT NULL,
  `FECHA_S` date NOT NULL,
  `HORA_S` time NOT NULL,
  `ACTIVO_S` tinyint(1) NOT NULL,
  `IP_S` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_S`) USING BTREE,
  KEY `FK_USUARIO_SESION` (`NOMBRE_U`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socio`
--

CREATE TABLE IF NOT EXISTS `socio` (
  `CODIGO_S` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE_U` varchar(50) NOT NULL,
  `NOMBRES_S` varchar(50) NOT NULL,
  `APELLIDOS_S` varchar(50) NOT NULL,
  PRIMARY KEY (`CODIGO_S`) USING BTREE,
  KEY `FK_GRUPO_EMPRESA__SOCIO` (`NOMBRE_U`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=819 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `socio`
--

INSERT INTO `socio` (`CODIGO_S`, `NOMBRE_U`, `NOMBRES_S`, `APELLIDOS_S`) VALUES
(1, 'freevalue', 'Oscar Rolando', 'Gamboa Acho'),
(2, 'freevalue', 'Adelio Lester', 'Ayllon Machicado'),
(3, 'freevalue', 'Oscar Remmy', 'Torrez Salas'),
(4, 'freevalue', 'Ruddy Ariel', 'Marquina Escobar'),
(5, 'freevalue', 'Valeri Daniela', 'Crespo Gutierrez'),
(6, 'camaleon', 'Jimena', 'Salazar'),
(7, 'camaleon', 'Elmer', 'Perez'),
(8, 'camaleon', 'Marco', 'Mendoza'),
(9, 'camaleon', 'Marcela', 'Lllanos'),
(10, 'camaleon', 'Milton', 'Muriel'),
(11, 'colectivo', 'Pablo', 'Orellana'),
(12, 'colectivo', 'Rodrigo', 'Saucedo'),
(13, 'colectivo', 'Melani', 'Soria'),
(14, 'colectivo', 'Joel', 'Jimenez'),
(15, 'colectivo', 'Miguel', 'Claure'),
(16, 'trinidad', 'Maria', 'Vargas'),
(17, 'trinidad', 'Erick', 'Trujillo'),
(18, 'trinidad', 'Stefany', 'Acha'),
(19, 'trinidad', 'Edson', 'Lopez'),
(20, 'trinidad', 'Leonardo', 'Sanga');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE IF NOT EXISTS `tipo` (
  `TIPO_T` varchar(50) NOT NULL,
  PRIMARY KEY (`TIPO_T`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=8192;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`TIPO_T`) VALUES
('actividad planificacion'),
('criterio evaluacion'),
('documento requerido'),
('documento subido'),
('notificacion de conformidad'),
('Orden de Cambio'),
('pago planificacion'),
('publicaciones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `NOMBRE_U` varchar(50) NOT NULL,
  `ESTADO_E` varchar(50) NOT NULL,
  `PASSWORD_U` varchar(50) NOT NULL,
  `TELEFONO_U` varchar(8) NOT NULL,
  `CORREO_ELECTRONICO_U` varchar(50) NOT NULL,
  PRIMARY KEY (`NOMBRE_U`) USING BTREE,
  KEY `FK_ESTADO__USUARIO` (`ESTADO_E`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=2048;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`NOMBRE_U`, `ESTADO_E`, `PASSWORD_U`, `TELEFONO_U`, `CORREO_ELECTRONICO_U`) VALUES
('Agile Action', 'habilitado', 'agile', '45446546', 'agile@gmail.com'),
('Akira soft', 'habilitado', 'akira', '4565442', 'akira@gmail.com'),
('akire', 'habilitado', 'akire', '4444444', 'akire@gmail.com'),
('Arkano', 'habilitado', 'Arkano', '4545642', 'Arkano@gmail.com'),
('Bolivia soft', 'habilitado', 'bolsoft', '4224554', 'Boliviasoft@gmail.com'),
('boris', 'habilitado', 'boris', '4444444', 'boris@gmail.com'),
('camaleon', 'habilitado', 'camaleon', '4444444', 'camaleon@gmail.com'),
('colectivo', 'habilitado', 'colectivo', '4444444', 'colectivo@gmail.com'),
('freevalue', 'habilitado', 'freevalue', '4444444', 'freevaluecbba@gmail.com'),
('Hellsoft', 'habilitado', 'hell', '78541225', 'Hellsoft@gmail.com'),
('Indesoft', 'habilitado', 'Indesoft', '78542684', 'Indesoft'),
('Kdes', 'habilitado', 'Kdes', '75841335', 'Kdes@hotmail.com'),
('leticia', 'habilitado', 'leticia', '4444444', 'leticia@gmail.com'),
('marcelo', 'habilitado', 'marcelo', '4444444', 'marcelo@gmail.com'),
('Maveric', 'habilitado', 'Maveric', '74578441', 'Maveric@gmail.com'),
('trinidad', 'habilitado', 'trinidad', '4444444', 'trinidad@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE IF NOT EXISTS `usuario_rol` (
  `NOMBRE_U` varchar(50) NOT NULL,
  `ROL_R` varchar(50) NOT NULL,
  PRIMARY KEY (`NOMBRE_U`,`ROL_R`) USING BTREE,
  KEY `FK_ROL__USUARIO_ROL` (`ROL_R`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asesor`
--
ALTER TABLE `asesor`
  ADD CONSTRAINT `FK_USUARIO__ASESOR` FOREIGN KEY (`NOMBRE_U`) REFERENCES `usuario` (`NOMBRE_U`);

--
-- Filtros para la tabla `asignacion`
--
ALTER TABLE `asignacion`
  ADD CONSTRAINT `FK_REGISTRO__ASIGNACION` FOREIGN KEY (`ID_R`) REFERENCES `registro` (`ID_R`);

--
-- Filtros para la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `FK_REGISTRO__ASISTENCIA` FOREIGN KEY (`ID_R`) REFERENCES `registro` (`ID_R`);

--
-- Filtros para la tabla `criterio_evaluacion`
--
ALTER TABLE `criterio_evaluacion`
  ADD CONSTRAINT `FK_REGISTRO_CRITERIO_E` FOREIGN KEY (`ID_R`) REFERENCES `registro` (`ID_R`);

--
-- Filtros para la tabla `documento`
--
ALTER TABLE `documento`
  ADD CONSTRAINT `FK_REGISTRO_DOCUMENTO` FOREIGN KEY (`ID_R`) REFERENCES `registro` (`ID_R`);

--
-- Filtros para la tabla `entrega`
--
ALTER TABLE `entrega`
  ADD CONSTRAINT `FK_REGISTRO__PRESENTACION` FOREIGN KEY (`ID_R`) REFERENCES `registro` (`ID_R`);

--
-- Filtros para la tabla `entregable`
--
ALTER TABLE `entregable`
  ADD CONSTRAINT `FK_PLANIFICACION__ENTREGABLE` FOREIGN KEY (`NOMBRE_U`) REFERENCES `planificacion` (`NOMBRE_U`);

--
-- Filtros para la tabla `fecha_realizacion`
--
ALTER TABLE `fecha_realizacion`
  ADD CONSTRAINT `FK_REGISTRO__FECHA_REALIZACION` FOREIGN KEY (`ID_R`) REFERENCES `registro` (`ID_R`);

--
-- Filtros para la tabla `grupo_empresa`
--
ALTER TABLE `grupo_empresa`
  ADD CONSTRAINT `FK_USUARIO__GRUPO_EMPRESA` FOREIGN KEY (`NOMBRE_U`) REFERENCES `usuario` (`NOMBRE_U`);

--
-- Filtros para la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD CONSTRAINT `FK_ASESOR__INSCRIPCION` FOREIGN KEY (`NOMBRE_UA`) REFERENCES `asesor` (`NOMBRE_U`),
  ADD CONSTRAINT `FK_GESTION__INSCRIPCION` FOREIGN KEY (`ID_G`) REFERENCES `gestion` (`ID_G`),
  ADD CONSTRAINT `FK_GRUPO_EMPRESA__INSCRIPCION` FOREIGN KEY (`NOMBRE_UGE`) REFERENCES `grupo_empresa` (`NOMBRE_U`),
  ADD CONSTRAINT `FK_PROYECTO__INSCRIPCION` FOREIGN KEY (`CODIGO_P`) REFERENCES `proyecto` (`CODIGO_P`);

--
-- Filtros para la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD CONSTRAINT `FK_REGISTRO__MENSAJE` FOREIGN KEY (`ID_R`) REFERENCES `registro` (`ID_R`);

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `FK_REGISTRO__PAGO` FOREIGN KEY (`ID_R`) REFERENCES `registro` (`ID_R`);

--
-- Filtros para la tabla `planificacion`
--
ALTER TABLE `planificacion`
  ADD CONSTRAINT `FK_ESTADO__PLANIFICACION` FOREIGN KEY (`ESTADO_E`) REFERENCES `estado` (`ESTADO_E`),
  ADD CONSTRAINT `FK_GRUPO_EMPRESA__PLANIFICACION` FOREIGN KEY (`NOMBRE_U`) REFERENCES `grupo_empresa` (`NOMBRE_U`);

--
-- Filtros para la tabla `plazo`
--
ALTER TABLE `plazo`
  ADD CONSTRAINT `FK_REGISTRO__PLAZO` FOREIGN KEY (`ID_R`) REFERENCES `registro` (`ID_R`);

--
-- Filtros para la tabla `precio`
--
ALTER TABLE `precio`
  ADD CONSTRAINT `FK_PLANIFICACION__PRECIO` FOREIGN KEY (`NOMBRE_U`) REFERENCES `planificacion` (`NOMBRE_U`);

--
-- Filtros para la tabla `registro`
--
ALTER TABLE `registro`
  ADD CONSTRAINT `FK_ESTADO__REGISTRO` FOREIGN KEY (`ESTADO_E`) REFERENCES `estado` (`ESTADO_E`),
  ADD CONSTRAINT `FK_TIPO__REGISTRO` FOREIGN KEY (`TIPO_T`) REFERENCES `tipo` (`TIPO_T`),
  ADD CONSTRAINT `FK_USUARIO_REGISTRO` FOREIGN KEY (`NOMBRE_U`) REFERENCES `usuario` (`NOMBRE_U`);

--
-- Filtros para la tabla `reporte`
--
ALTER TABLE `reporte`
  ADD CONSTRAINT `FK_REGISTRO__REPORTE` FOREIGN KEY (`ID_R`) REFERENCES `registro` (`ID_R`),
  ADD CONSTRAINT `FK_ROL_REPORTE__REPORTE` FOREIGN KEY (`ROL_RR`) REFERENCES `rol_reporte` (`ROL_RR`);

--
-- Filtros para la tabla `rol_aplicacion`
--
ALTER TABLE `rol_aplicacion`
  ADD CONSTRAINT `FK_APLICACION__ROL_APLICACION` FOREIGN KEY (`APLICACION_A`) REFERENCES `aplicacion` (`APLICACION_A`),
  ADD CONSTRAINT `FK_ROL__ROL_APLICACION` FOREIGN KEY (`ROL_R`) REFERENCES `rol` (`ROL_R`);

--
-- Filtros para la tabla `sesion`
--
ALTER TABLE `sesion`
  ADD CONSTRAINT `FK_USUARIO_SESION` FOREIGN KEY (`NOMBRE_U`) REFERENCES `usuario` (`NOMBRE_U`);

--
-- Filtros para la tabla `socio`
--
ALTER TABLE `socio`
  ADD CONSTRAINT `FK_GRUPO_EMPRESA__SOCIO` FOREIGN KEY (`NOMBRE_U`) REFERENCES `grupo_empresa` (`NOMBRE_U`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_ESTADO__USUARIO` FOREIGN KEY (`ESTADO_E`) REFERENCES `estado` (`ESTADO_E`);

--
-- Filtros para la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `FK_ROL__USUARIO_ROL` FOREIGN KEY (`ROL_R`) REFERENCES `rol` (`ROL_R`),
  ADD CONSTRAINT `FK_USUARIO__USUARIO_ROL` FOREIGN KEY (`NOMBRE_U`) REFERENCES `usuario` (`NOMBRE_U`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
