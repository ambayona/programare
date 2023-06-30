-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 30-06-2023 a las 16:19:28
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cerveceriax`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `subtitulo` text COLLATE utf8mb4_general_ci NOT NULL,
  `cuerpo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img_id` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(1, ' LA CERVECERIA', 'Las cerveceria se caracterizan por la calidad, el prestigio y por tener una amplia variedad de estilos para todos los tipos de clientes.', 'Algunas cervezas son más amigables, una especie de puerta de entrada al mundo de lo artesanal. Otras son robustas, fuertes, alcohólicas o lupuladas; son las del fanático cervecero, fiel a su estilo preferido. \r\n\r\nY también ofrecemos muchas cervezas súper innovadoras en cantidades limitadas, que le dan a nuestra propuesta una renovación y vida constante, además de permitirnos aprender y crear cervezas nuevas. ', 'svtg7ggqdmbf8hijywsw'),
(3, ' FRANQUICIAS', '¿Cómo nace el modelo de Franquicias de la Cerveceria?', ' Cuando iniciamos en Diciembre de 1998 no imaginamos que nuestro bar tendría tanta convocatoria; nuestro plan original no contemplaba abrir más puntos de venta de la marca, sino más bien comercializar con el formato tradicional cervecero, en barriles, latas y botellas.\r\n\r\nPero algo nos hizo cambiar de opinión. Muchos amigos y clientes veían potencial y querían llevar el concepto de la cerveceria a otras ciudades. Finalmente, en 2005 cedimos a la tentación; constituimos un equipo de trabajo para crear nuestro concepto de franquicias de manera profesional y rentable. Y mediados de ese año, inauguramos dos sucursales en La Plata y Tandil. \r\n\r\nEl éxito de éstas operaciones nos llevó en el tiempo a 1998, nos hizo descubrir un talento oculto, y el resto ya es historia...', ''),
(9, '   emma la gata', 'gatita', 'la gata emma', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'flavia', '25d55ad283aa400af464c76d713c07ad'),
(2, 'esteban', '25d55ad283aa400af464c76d713c07ad');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
