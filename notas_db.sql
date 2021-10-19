
--
-- Estructura para la tabla usuarios
--

DROP DATABASE IF EXISTS notas_db;
CREATE DATABASE notas_db;
USE notas_db;

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar (100) NOT NULL,
  `email` varchar (50) NOT NULL,
  PRIMARY KEY (`id`)
);

--
-- Se insertan datos en la tabla usuarios
--

LOCK TABLES `usuarios` WRITE;
INSERT INTO `usuarios` VALUES ('Luis Morales Vera','luismoralesv.96@gmail.com');
UNLOCK TABLES;

