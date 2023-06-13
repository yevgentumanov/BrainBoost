-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 09-06-2023 a las 17:10:58
-- Versión del servidor: 10.11.4-MariaDB-1:10.11.4+maria~ubu2004
-- Versión de PHP: 8.1.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `brainboost`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intentos_preguntas`
--

CREATE TABLE `intentos_preguntas` (
  `id` int(11) NOT NULL,
  `id_intento_test` int(11) NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  `nota_pregunta` decimal(5,2) DEFAULT NULL,
  `respuestas` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intentos_tests`
--

CREATE TABLE `intentos_tests` (
  `id` int(11) NOT NULL,
  `id_test` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `intento` int(11) NOT NULL,
  `fecha_realizacion` date DEFAULT curdate(),
  `dificultad` int(11) NOT NULL,
  `modalidad` int(11) NOT NULL,
  `tiempo_inicio` time DEFAULT NULL,
  `tiempo_fin` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Disparadores `intentos_tests`
--
DELIMITER $$
CREATE TRIGGER `tr_incrementar_intentos` BEFORE INSERT ON `intentos_tests` FOR EACH ROW BEGIN
    DECLARE ultimo_intento INT;
    
    -- Obtiene el último intento para el mismo test y usuario
    SELECT MAX(intento) INTO ultimo_intento
    FROM intentos_tests
    WHERE id_test = NEW.id_test AND id_usuario = NEW.id_usuario;
    
    -- Incrementar el intento en 1
    SET NEW.intento = COALESCE(ultimo_intento, 0) + 1;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `nombre_materia` varchar(50) NOT NULL,
  `descripcion` varchar(1500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `id_test` int(11) NOT NULL,
  `tipo_pregunta` int(11) NOT NULL,
  `nombre_pregunta` varchar(300) NOT NULL,
  `datos_pregunta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`datos_pregunta`)),
  `retroalimentacion` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tests`
--

CREATE TABLE `tests` (
  `id` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `nombre_test` varchar(50) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `numero_visitas` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_usuario_creador` int(11) NOT NULL,
  `fecha_creacion` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `password` varbinary(64) DEFAULT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_intentos_tests`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_intentos_tests` (
`id` int(11)
,`id_test` int(11)
,`id_usuario` int(11)
,`intento` int(11)
,`fecha_realizacion` date
,`dificultad` int(11)
,`modalidad` int(11)
,`tiempo_inicio` time
,`tiempo_fin` time
,`nota_test` decimal(27,2)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `v_intentos_tests`
--
DROP TABLE IF EXISTS `v_intentos_tests`;

CREATE ALGORITHM=UNDEFINED DEFINER=`isen`@`%` SQL SECURITY DEFINER VIEW `v_intentos_tests`  AS SELECT `intentos_tests`.`id` AS `id`, `intentos_tests`.`id_test` AS `id_test`, `intentos_tests`.`id_usuario` AS `id_usuario`, `intentos_tests`.`intento` AS `intento`, `intentos_tests`.`fecha_realizacion` AS `fecha_realizacion`, `intentos_tests`.`dificultad` AS `dificultad`, `intentos_tests`.`modalidad` AS `modalidad`, `intentos_tests`.`tiempo_inicio` AS `tiempo_inicio`, `intentos_tests`.`tiempo_fin` AS `tiempo_fin`, sum(`intentos_preguntas`.`nota_pregunta`) AS `nota_test` FROM (`intentos_tests` join `intentos_preguntas` on(`intentos_tests`.`id` = `intentos_preguntas`.`id_intento_test`)) GROUP BY `intentos_tests`.`id` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `intentos_preguntas`
--
ALTER TABLE `intentos_preguntas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `i_intento_pregunta` (`id_intento_test`,`id_pregunta`),
  ADD KEY `id_pregunta` (`id_pregunta`);

--
-- Indices de la tabla `intentos_tests`
--
ALTER TABLE `intentos_tests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `i_tests_intento_usuario` (`id_test`,`id_usuario`,`intento`) USING BTREE,
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `i_tests_usuario` (`id_test`,`id_usuario`) USING BTREE;

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_materias_categorias` (`id_categoria`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i_preguntas` (`id_test`,`tipo_pregunta`) USING BTREE;

--
-- Indices de la tabla `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_test_unico` (`id_materia`,`nombre_test`),
  ADD UNIQUE KEY `i_tests` (`id_materia`,`nombre_test`) USING BTREE,
  ADD KEY `id_usuario_creador` (`id_usuario_creador`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `intentos_preguntas`
--
ALTER TABLE `intentos_preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `intentos_tests`
--
ALTER TABLE `intentos_tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `intentos_preguntas`
--
ALTER TABLE `intentos_preguntas`
  ADD CONSTRAINT `intentos_preguntas_ibfk_1` FOREIGN KEY (`id_pregunta`) REFERENCES `preguntas` (`id`),
  ADD CONSTRAINT `intentos_preguntas_ibfk_2` FOREIGN KEY (`id_intento_test`) REFERENCES `intentos_tests` (`id`);

--
-- Filtros para la tabla `intentos_tests`
--
ALTER TABLE `intentos_tests`
  ADD CONSTRAINT `intentos_tests_ibfk_1` FOREIGN KEY (`id_test`) REFERENCES `tests` (`id`),
  ADD CONSTRAINT `intentos_tests_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `FK_materias_categorias` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);

--
-- Filtros para la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD CONSTRAINT `preguntas_ibfk_1` FOREIGN KEY (`id_test`) REFERENCES `tests` (`id`);

--
-- Filtros para la tabla `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `tests_ibfk_1` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `tests_ibfk_2` FOREIGN KEY (`id_usuario_creador`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
