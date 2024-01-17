-- siempre agrega el ; al final
create database holamundo; /*Crear base de datos: con esto creamos la base de datos y a partir de esta podremos crear las tablas*/
show databases;
use holamundo; /*Cual es la BD que vamos a usar*/

-- Crear tabla
CREATE TABLE animals (
	id int,
  tipo varchar(255),
  estado varchar(255),
  PRIMARY KEY (id)
);

/*Insetar datos*/
-- INSERT INTO animals(tipo,estado) VALUES ("Chanchito","feliz"); 

--Modificar una tabla que ya ha sido creada
ALTER TABLE animals MODIFY COLUMN id int auto_increment;

--Agregar un nuevo atributo a la tabla
ALTER TABLE animals ADD COLUMN `especie` varchar after `estado`;

/*Crear la tabla con el yd primary key y que el id sea 
autoincrementable*/
SHOW CREATE TABLE animals;

CREATE TABLE `animals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;

/*Insetar datos*/
INSERT INTO animals(tipo,estado) VALUES ("Chanchito","feliz");
INSERT INTO animals(tipo,estado) VALUES ("dragon","feliz");
INSERT INTO animals(tipo,estado) VALUES ("perrito","feliz");
INSERT INTO animals(tipo,estado) VALUES ("perrito","triste");

/*Listar los registros que hemos ingresado*/
SELECT * FROM animals;
SELECT * FROM animals WHERE id = 1; /*selecciona el que el id sea 
exactamente igual a 1*/
SELECT * FROM animals WHERE estado="feliz" AND tipo="Chanchito"; 
/*selecciona el que el estado sea exactamente igual a "feliz" */

/*actalizar los registros*/
UPDATE animals SET estado = "triste" where id = 3; /* Cambia el
estado a triste el registro que tenga el id 3*/
UPDATE animals SET estado = "triste",tipo ="gatito" where id = 3;
SELECT * FROM animals;

/*eliminar registros*/
DELETE from animals where id = 3; -- usar el id siempre
SELECT * FROM animals;

UPDATE animals SET estado = "triste" where id = 2;

-- Eliminar la tabla completa
DROP TABLE animals;