-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 03-10-2024 a las 22:59:46
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `valoracity`
--
CREATE DATABASE IF NOT EXISTS `valoracity` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `valoracity`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

DROP TABLE IF EXISTS `ciudades`;
CREATE TABLE `ciudades` (
  `id` smallint(6) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `departamento_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id`, `nombre`, `departamento_id`) VALUES
(1, 'Leticia', 1),
(2, 'Puerto Nariño', 1),
(3, 'El Encanto', 1),
(4, 'La Pedrera', 1),
(5, 'La Chorrera', 1),
(6, 'Tarapacá', 1),
(7, 'Puerto Santander', 1),
(8, 'Mirití-Paraná', 1),
(9, 'Puerto Alegría', 1),
(10, 'Puerto Arica', 1),
(11, 'La Victoria', 1),
(12, 'Medellín', 2),
(13, 'Envigado', 2),
(14, 'Bello', 2),
(15, 'Itagüí', 2),
(16, 'Sabaneta', 2),
(17, 'La Estrella', 2),
(18, 'Caldas', 2),
(19, 'Copacabana', 2),
(20, 'Barbosa', 2),
(21, 'Girardota', 2),
(22, 'Briceno', 2),
(23, 'San Pedro de los Milagros', 2),
(24, 'Yarumal', 2),
(25, 'Bello', 2),
(26, 'Valledupar', 2),
(27, 'Rionegro', 2),
(28, 'Marinilla', 2),
(29, 'El Retiro', 2),
(30, 'Abejorral', 2),
(31, 'Sonsón', 2),
(32, 'Jardín', 2),
(33, 'Salgar', 2),
(34, 'Betania', 2),
(35, 'Tamesis', 2),
(36, 'Cáceres', 2),
(37, 'Dabeiba', 2),
(38, 'Mutatá', 2),
(39, 'Turbo', 2),
(40, 'Necoclí', 2),
(41, 'San Juan de Urabá', 2),
(42, 'Apartadó', 2),
(43, 'Chigorodó', 2),
(44, 'San Carlos', 2),
(45, 'San Francisco', 2),
(46, 'Anorí', 2),
(47, 'Bello', 2),
(48, 'Don Matías', 2),
(49, 'San Vicente', 2),
(50, 'Guatapé', 2),
(51, 'Cocorná', 2),
(52, 'El Santuario', 2),
(53, 'Zaragoza', 2),
(54, 'Rionegro', 2),
(55, 'La Ceja', 2),
(56, 'El Bagre', 2),
(57, 'Puerto Nare', 2),
(58, 'San Luis', 2),
(59, 'Guarne', 2),
(60, 'Carmen de Viboral', 2),
(61, 'Sonsón', 2),
(62, 'Arauca', 3),
(63, 'Saravena', 3),
(64, 'Tame', 3),
(65, 'Fortul', 3),
(66, 'Cravo Norte', 3),
(67, 'Arauquita', 3),
(68, 'Puerto Rondón', 3),
(69, 'La Araucana', 3),
(70, 'Santiago', 3),
(71, 'Barranquilla', 4),
(72, 'Soledad', 4),
(73, 'Puerto Colombia', 4),
(74, 'Malambo', 4),
(75, 'Sabanagrande', 4),
(76, 'Cartagena', 5),
(77, 'Magangué', 5),
(78, 'Turbaná', 5),
(79, 'Arjona', 5),
(80, 'Margarita', 5),
(81, 'Tunja', 6),
(82, 'Duitama', 6),
(83, 'Sogamoso', 6),
(84, 'Chiquinquirá', 6),
(85, 'Paipa', 6),
(86, 'Manizales', 7),
(87, 'Pereira', 7),
(88, 'Villamaría', 7),
(89, 'Chinchiná', 7),
(90, 'Marquetalia', 7),
(91, 'Florencia', 8),
(92, 'Morelia', 8),
(93, 'El Paujil', 8),
(94, 'San Vicente del Caguán', 8),
(95, 'La Montañita', 8),
(96, 'Yopal', 9),
(97, 'Aguazul', 9),
(98, 'Támara', 9),
(99, 'Nunchía', 9),
(100, 'Paz de Ariporo', 9),
(101, 'Popayán', 10),
(102, 'Santander de Quilichao', 10),
(103, 'El Tambo', 10),
(104, 'La Sierra', 10),
(105, 'Paes', 10),
(106, 'Valledupar', 11),
(107, 'La Paz', 11),
(108, 'Codazzi', 11),
(109, 'Gamarra', 11),
(110, 'Aguachica', 11),
(111, 'Quibdó', 12),
(112, 'Condoto', 12),
(113, 'Riosucio', 12),
(114, 'Istmina', 12),
(115, 'El Carmen de Atrato', 12),
(116, 'Montería', 13),
(117, 'Lorica', 13),
(118, 'Cereté', 13),
(119, 'Planeta Rica', 13),
(120, 'Sahagún', 13),
(121, 'Bogotá', 14),
(122, 'Soacha', 14),
(123, 'Chocontá', 14),
(124, 'Zipaquirá', 14),
(125, 'Cajicá', 14),
(126, 'Inírida', 15),
(127, 'La Guadalupe', 15),
(128, 'Barranco Minas', 15),
(129, 'Puerto Inírida', 15),
(130, 'San Felipe', 15),
(131, 'San José del Guaviare', 16),
(132, 'Calamar', 16),
(133, 'Miraflores', 16),
(134, 'El Retorno', 16),
(135, 'Guaviare', 16),
(136, 'Neiva', 17),
(137, 'Pitalito', 17),
(138, 'La Plata', 17),
(139, 'Garzón', 17),
(140, 'Campoalegre', 17),
(141, 'Riohacha', 18),
(142, 'Maicao', 18),
(143, 'Uribia', 18),
(144, 'Distracción', 18),
(145, 'Fonseca', 18),
(146, 'Santa Marta', 19),
(147, 'Ciénaga', 19),
(148, 'El Banco', 19),
(149, 'Fundación', 19),
(150, 'Santa Ana', 19),
(151, 'Villavicencio', 20),
(152, 'Acacías', 20),
(153, 'Cumaral', 20),
(154, 'Restrepo', 20),
(155, 'Puerto López', 20),
(156, 'Pasto', 21),
(157, 'Ipiales', 21),
(158, 'Tumaco', 21),
(159, 'La Unión', 21),
(160, 'Sandoná', 21),
(161, 'Cúcuta', 22),
(162, 'Ocaña', 22),
(163, 'Villa del Rosario', 22),
(164, 'Los Patios', 22),
(165, 'Salazar de las Palmas', 22),
(166, 'Mocoa', 23),
(167, 'Puerto Asís', 23),
(168, 'Villagarzón', 23),
(169, 'San Francisco', 23),
(170, 'Santiago', 23),
(171, 'Armenia', 24),
(172, 'Circasia', 24),
(173, 'Montenegro', 24),
(174, 'Salento', 24),
(175, 'Calarcá', 24),
(176, 'Pereira', 25),
(177, 'Dosquebradas', 25),
(178, 'Santa Rosa de Cabal', 25),
(179, 'La Virginia', 25),
(180, 'Marsella', 25),
(181, 'San Andrés', 26),
(182, 'Providencia', 26),
(183, 'Santa Catalina', 26),
(184, 'Johnny Cay', 26),
(185, 'Cayo Bolivar', 26),
(186, 'Bucaramanga', 27),
(187, 'Barrancabermeja', 27),
(188, 'Floridablanca', 27),
(189, 'Girón', 27),
(190, 'Pie de Cuesta', 27),
(191, 'Sincelejo', 28),
(192, 'Corozal', 28),
(193, 'Sampués', 28),
(194, 'Caimito', 28),
(195, 'Los Palmitos', 28),
(196, 'Ibagué', 29),
(197, 'Espinal', 29),
(198, 'Melgar', 29),
(199, 'El Espinal', 29),
(200, 'Fresno', 29),
(201, 'Cali', 30),
(202, 'Palmira', 30),
(203, 'Tuluá', 30),
(204, 'Buga', 30),
(205, 'Yumbo', 30),
(206, 'Mitú', 31),
(207, 'Carurú', 31),
(208, 'Papunaua', 31),
(209, 'Pirá Paraná', 31),
(210, 'Cuchilla', 31),
(211, 'Puerto Carreño', 32),
(212, 'Cumaribo', 32),
(213, 'Santa Rosalía', 32),
(214, 'La Primavera', 32),
(215, 'Mauro M. A. Capela', 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `ciudad_id` smallint(6) NOT NULL,
  `comentario` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `ciudad_id`, `comentario`) VALUES
(1, 3, 'Es gigantesco'),
(2, 12, 'Muy hermosa'),
(3, 93, 'Muy bonito'),
(4, 121, 'Grande, mucho por hacer'),
(5, 105, 'Bonito'),
(6, 3, 'bonito'),
(7, 1, 'Lindo'),
(8, 121, 'Hermoso :D'),
(9, 12, ':D'),
(10, 118, ':P'),
(11, 105, 'Lindo lugar'),
(12, 111, 'Holi'),
(13, 121, 'WOW'),
(14, 71, 'Agua'),
(15, 25, 'Hermoso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE `departamentos` (
  `id` tinyint(4) NOT NULL,
  `nombre` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `nombre`) VALUES
(1, 'Amazonas'),
(2, 'Antioquia'),
(3, 'Arauca'),
(4, 'Atlántico'),
(5, 'Bolívar'),
(6, 'Boyacá'),
(7, 'Caldas'),
(8, 'Caquetá'),
(9, 'Casanare'),
(10, 'Cauca'),
(11, 'César'),
(12, 'Chocó'),
(13, 'Córdoba'),
(14, 'Cundinamarca'),
(15, 'Guainía'),
(16, 'Guaviare'),
(17, 'Huila'),
(18, 'La Guajira'),
(19, 'Magdalena'),
(20, 'Meta'),
(21, 'Nariño'),
(22, 'Norte de Santander'),
(23, 'Putumayo'),
(24, 'Quindío'),
(25, 'Risaralda'),
(26, 'San Andrés y Providencia'),
(27, 'Santander'),
(28, 'Sucre'),
(29, 'Tolima'),
(30, 'Valle del Cauca'),
(31, 'Vaupés'),
(32, 'Vichada');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ciudades_departamentos` (`departamento_id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Comentarios_Ciudades` (`ciudad_id`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD CONSTRAINT `FK_ciudades_departamentos` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`);

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `FK_Comentarios_Ciudades` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudades` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
