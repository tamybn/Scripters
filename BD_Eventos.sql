
--
-- Base de datos: `yevent`
--
DROP SCHEMA

IF EXISTS BD_Eventos;
	CREATE SCHEMA BD_Eventos COLLATE = utf8_general_ci;

USE BD_Eventos;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--


CREATE TABLE IF NOT EXISTS `events` (
  `cod_event` varchar(5) NOT NULL,
  `cod_tip_event` varchar(5) DEFAULT NULL,
  `cod_seat` varchar(5) DEFAULT NULL,
  `date_event` date DEFAULT NULL,
  `dir_event` varchar(100) DEFAULT NULL,
  `des_event` text,
  PRIMARY KEY (`cod_event`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `events`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_types`
--

CREATE TABLE IF NOT EXISTS `event_types` (
  `cod_type_event` varchar(5) NOT NULL,
  `des_event` text,
  `cod_event` varchar(5) NOT NULL,
  PRIMARY KEY (`cod_type_event`,`cod_event`),
  KEY `R_3` (`cod_event`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `event_types`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profiles`
--

CREATE TABLE IF NOT EXISTS `profiles` (
  `cod_profil` varchar(5) NOT NULL,
  `cod_user` varchar(5) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `tel_num` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`cod_profil`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `profiles`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `cod_reser` varchar(5) NOT NULL,
  `cod_event` varchar(5) NOT NULL,
  `cod_user` varchar(5) NOT NULL,
  `date_reser` date DEFAULT NULL,
  `cod_profil` varchar(5) NOT NULL,
  PRIMARY KEY (`cod_reser`,`cod_event`,`cod_user`,`cod_profil`),
  KEY `R_2` (`cod_event`),
  KEY `R_5` (`cod_user`,`cod_profil`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `reservation`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `cod_user` varchar(5) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cod_profil` varchar(5) NOT NULL,
  PRIMARY KEY (`cod_user`,`cod_profil`),
  KEY `R_6` (`cod_profil`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `user`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seats`
--

CREATE TABLE IF NOT EXISTS `seats` (
  `cod_seat` varchar(5) NOT NULL,
  `num_seat` varchar(5) DEFAULT NULL,
  `row_seat` varchar(10) DEFAULT NULL,
  `ind_seat` varchar(10) DEFAULT NULL,
  `cod_event` varchar(5) NOT NULL,
  PRIMARY KEY (`cod_seat`,`cod_event`),
  KEY `R_4` (`cod_event`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `zones`
--
