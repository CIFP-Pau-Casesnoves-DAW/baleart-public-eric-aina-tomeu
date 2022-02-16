-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-02-2022 a las 16:43:26
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `baleart`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistes`
--

CREATE TABLE `artistes` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cognom1` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cognom2` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `imatges_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `artistes`
--



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `espais`
--

CREATE TABLE `espais` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8 NOT NULL,
  `telefon` varchar(9) CHARACTER SET utf8 DEFAULT NULL,
  `correuElectronic` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `adresa_municipi` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `adresa_CP` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `adresa_carrer` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `adresa_num` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `destacat` tinyint(1) NOT NULL DEFAULT 0,
  `tipusEspai_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `espais`
--



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `espais_exposicions`
--

CREATE TABLE `espais_exposicions` (
  `espais_id` int(11) NOT NULL,
  `exposicions_id` int(11) NOT NULL,
  `dataInici` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dataFi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `espais_exposicions`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `espais_idiomes`
--

CREATE TABLE `espais_idiomes` (
  `espais_id` int(11) NOT NULL,
  `idiomes_id` int(11) NOT NULL,
  `descripcio` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exposicions`
--

CREATE TABLE `exposicions` (
  `id` int(11) NOT NULL,
  `nomExposicio` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `exposicions`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exposicions_artistes`
--

CREATE TABLE `exposicions_artistes` (
  `exposicions_id` int(11) NOT NULL,
  `artistes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `exposicions_artistes`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exposicions_idiomes`
--

CREATE TABLE `exposicions_idiomes` (
  `exposicions_id` int(11) NOT NULL,
  `idiomes_id` int(11) NOT NULL,
  `descripcio` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `exposicions_idiomes`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exposicions_obres`
--

CREATE TABLE `exposicions_obres` (
  `exposicions_id` int(11) NOT NULL,
  `obres_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `exposicions_obres`
--



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idiomes`
--

CREATE TABLE `idiomes` (
  `id` int(11) NOT NULL,
  `idioma` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `idiomes`
--

INSERT INTO `idiomes` (`id`, `idioma`) VALUES
(1, 'Català'),
(2, 'Español'),
(3, 'English');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imatges`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imatges_espais`
--

CREATE TABLE `imatges_espais` (
  `imatges_id` int(11) NOT NULL,
  `espais_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `imatges_espais`
--



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imatges_exposicions`
--

CREATE TABLE `imatges_exposicions` (
  `imatges_id` int(11) NOT NULL,
  `exposicions_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `imatges_exposicions`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imatges_obres`
--

CREATE TABLE `imatges_obres` (
  `imatges_id` int(11) NOT NULL,
  `obres_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `imatges_obres`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modalitatsartistiques`
--

CREATE TABLE `modalitatsartistiques` (
  `id` int(11) NOT NULL,
  `nomModalitat` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `modalitatsartistiques`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obres`
--

CREATE TABLE `obres` (
  `id` int(11) NOT NULL,
  `titolObra` varchar(100) CHARACTER SET utf8 NOT NULL,
  `modalitatArtistica_id` int(11) DEFAULT NULL,
  `autor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `obres`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obres_idiomes`
--

CREATE TABLE `obres_idiomes` (
  `obres_id` int(11) NOT NULL,
  `idiomes_id` int(11) NOT NULL,
  `descripcio` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serveis`
--

CREATE TABLE `serveis` (
  `id` int(11) NOT NULL,
  `servei` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `serveis`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serveis_espais`
--

CREATE TABLE `serveis_espais` (
  `espais_id` int(11) NOT NULL,
  `serveis_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `serveis_espais`
--



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serveis_idiomes`
--

CREATE TABLE `serveis_idiomes` (
  `serveis_id` int(11) NOT NULL,
  `idiomes_id` int(11) NOT NULL,
  `descripcio` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipusespai`
--

CREATE TABLE `tipusespai` (
  `tipus` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipusespai`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuaris`
--

CREATE TABLE `usuaris` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cognom1` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cognom2` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `correuElectronic` varchar(50) CHARACTER SET utf8 NOT NULL,
  `imatges_id` int(11) DEFAULT NULL,
  `esAdministrador` tinyint(1) NOT NULL DEFAULT 0,
  `usuari` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contrasenya` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuaris`
--



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuaris_espais`
--

CREATE TABLE `usuaris_espais` (
  `usuaris_id` int(11) NOT NULL,
  `espais_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuaris_espais`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valoracions`
--

CREATE TABLE `valoracions` (
  `id` int(11) NOT NULL,
  `dataValoracio` timestamp NOT NULL DEFAULT current_timestamp(),
  `comentari` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `puntuacio` int(11) NOT NULL,
  `revisat` tinyint(1) DEFAULT NULL,
  `usuaris_id` int(11) DEFAULT NULL,
  `espais_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `valoracions`
--



--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistes`
--
ALTER TABLE `artistes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `espais`
--
ALTER TABLE `espais`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `espais_exposicions`
--
ALTER TABLE `espais_exposicions`
  ADD PRIMARY KEY (`espais_id`,`exposicions_id`,`dataInici`);

--
-- Indices de la tabla `espais_idiomes`
--
ALTER TABLE `espais_idiomes`
  ADD PRIMARY KEY (`espais_id`,`idiomes_id`,`descripcio`);

--
-- Indices de la tabla `exposicions`
--
ALTER TABLE `exposicions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `exposicions_artistes`
--
ALTER TABLE `exposicions_artistes`
  ADD PRIMARY KEY (`exposicions_id`,`artistes_id`);

--
-- Indices de la tabla `exposicions_idiomes`
--
ALTER TABLE `exposicions_idiomes`
  ADD PRIMARY KEY (`exposicions_id`,`idiomes_id`);

--
-- Indices de la tabla `exposicions_obres`
--
ALTER TABLE `exposicions_obres`
  ADD PRIMARY KEY (`exposicions_id`,`obres_id`);

--
-- Indices de la tabla `idiomes`
--
ALTER TABLE `idiomes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `imatges`
--
ALTER TABLE `imatges`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `imatges_espais`
--
ALTER TABLE `imatges_espais`
  ADD PRIMARY KEY (`imatges_id`,`espais_id`),
  ADD KEY `espais_id` (`espais_id`);

--
-- Indices de la tabla `imatges_exposicions`
--
ALTER TABLE `imatges_exposicions`
  ADD PRIMARY KEY (`imatges_id`,`exposicions_id`);

--
-- Indices de la tabla `imatges_obres`
--
ALTER TABLE `imatges_obres`
  ADD PRIMARY KEY (`imatges_id`,`obres_id`);

--
-- Indices de la tabla `modalitatsartistiques`
--
ALTER TABLE `modalitatsartistiques`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `obres`
--
ALTER TABLE `obres`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `obres_idiomes`
--
ALTER TABLE `obres_idiomes`
  ADD PRIMARY KEY (`obres_id`,`idiomes_id`,`descripcio`);

--
-- Indices de la tabla `serveis`
--
ALTER TABLE `serveis`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `serveis_espais`
--
ALTER TABLE `serveis_espais`
  ADD PRIMARY KEY (`serveis_id`,`espais_id`);

--
-- Indices de la tabla `serveis_idiomes`
--
ALTER TABLE `serveis_idiomes`
  ADD PRIMARY KEY (`serveis_id`,`idiomes_id`,`descripcio`);

--
-- Indices de la tabla `tipusespai`
--
ALTER TABLE `tipusespai`
  ADD PRIMARY KEY (`tipus`);

--
-- Indices de la tabla `usuaris`
--
ALTER TABLE `usuaris`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD UNIQUE KEY `usuari` (`usuari`);

--
-- Indices de la tabla `usuaris_espais`
--
ALTER TABLE `usuaris_espais`
  ADD PRIMARY KEY (`usuaris_id`,`espais_id`);

--
-- Indices de la tabla `valoracions`
--
ALTER TABLE `valoracions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistes`
--
ALTER TABLE `artistes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `espais`
--
ALTER TABLE `espais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `exposicions`
--
ALTER TABLE `exposicions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `idiomes`
--
ALTER TABLE `idiomes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `imatges`
--
ALTER TABLE `imatges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `modalitatsartistiques`
--
ALTER TABLE `modalitatsartistiques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `obres`
--
ALTER TABLE `obres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `serveis`
--
ALTER TABLE `serveis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuaris`
--
ALTER TABLE `usuaris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `valoracions`
--
ALTER TABLE `valoracions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `imatges_espais`
--
ALTER TABLE `imatges_espais`
  ADD CONSTRAINT `imatges_espais_ibfk_1` FOREIGN KEY (`imatges_id`) REFERENCES `imatges` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `imatges_espais_ibfk_2` FOREIGN KEY (`espais_id`) REFERENCES `espais` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
