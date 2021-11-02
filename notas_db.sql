
--
-- Estructura para la tabla usuarios
--

DROP DATABASE IF EXISTS notas_db;
CREATE DATABASE notas_db;
USE notas_db;

DROP TABLE IF EXISTS `usuarios`;
DROP TABLE IF EXISTS `notas`;
DROP TABLE IF EXISTS `categorias`;
DROP TABLE IF EXISTS `notascategorias`;

CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar (100) NOT NULL,
  `email` varchar (50) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `notas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo_nota` varchar (100) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_modificacion` date NOT NULL,
  `puede_borrar` tinyint NOT NULL,
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`id`),
  foreign key(`id_usuario`) references `usuarios`(`id`)
);

CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar (100) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `notascategorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_categoria` int,
  `id_nota` int NOT NULL ,
  PRIMARY KEY (`id`),
  foreign key(`id_categoria`) references `categorias`(`id`),
  foreign key(`id_nota`) references `notas`(`id`)
);

--
-- Se insertan datos en la tabla usuarios
--

INSERT INTO `usuarios` VALUES 
(1, 'Nota 1','luismoralesv.96@gmail.com'),
(2, 'Jose Perez','joseperez@gmail.com'),
(3, 'Gerardo Gomez','gerargogomez@gmail.com'),
(4, 'Patricia Lopez','patricialopez@gmail.com'),
(5, 'Jesus Navas','jesusnavas@gmail.com'),
(6, 'Liliana Guzman','lilianaguzman@gmail.com'),
(7, 'Jessica Hernandez','jessicahernandez@gmail.com'),
(8, 'Matias Luna','matiasluna@gmail.com'),
(9, 'Tabata Cruz','tabatacruz@gmail.com'),
(10, 'Andres Vera','andresvera@gmail.com')
;

--
-- Se insertan datos en la tabla categorias
--

INSERT INTO `categorias` VALUES 
(1, 'Personal'),
(2, 'Escuela'),
(3, 'Trabajo'),
(4, 'Universidad'),
(5, 'Hogar'),
(6, 'Programación'),
(7, 'Hobbies'),
(8, 'Pagos'),
(9, 'Compras'),
(10, 'Deudas')
;

--
-- Se insertan datos en la tabla notas
--
INSERT INTO `notas` VALUES 
(1, 'Actividades playground','Ponerme al corriente en mis actividades','2002/05/27','2002/06/12', 1, 3),
(2, 'Hacer sprint','Reunirme con mis compañeros a terminar el sprint','2020/01/30','2020/02/15', 0, 9),
(3, 'Programar en PHP','Hacer el programa en PHP','2013/04/17','2013/05/01', 0, 5),
(4, 'Investigar Laravel','Leer sobre migraciones','2008/11/08','2008/11/13', 0, 2),
(5, 'Crear base de datos','Definir el DER de la base de datos','2012/02/27','2012/04/24', 0, 4),
(6, 'Trabajar front-end','Ajustar detalles estéticos','2019/08/11','2019/09/01', 1, 6),
(7, 'Reparar computadora','Cambiar la bateria de la computadora','2014/06/22','2014/06/29', 0, 7),
(8, 'Aprender JS','Ver herramientas de JS para Front-End','2021/12/06','2021/12/09', 0, 8),
(9, 'Crear mi API','Crear el servicio que recibe un JSON','1996/03/04','1996/04/07', 1, 8),
(10, 'Aprender React','Conocer las bases de React','2003/10/10','2003/11/03', 1, 10)
;


--
-- Se insertan datos en la tabla notascategorias
--

INSERT INTO `notascategorias` VALUES 
(1, 4, 2),
(2, 2, 5),
(3, 5, 8),
(4, 5, 10),
(5, 7, 3),
(6, 9, 6),
(7, 10, 6),
(8, 10, 1),
(9, 3, 7),
(10, 5, 9)
;