CREATE DATABASE IF NOT EXISTS paginaweb;

USE  paginaweb;

CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    ciudad VARCHAR(50) NOT NULL
);

INSERT INTO usuarios (nombre, apellido, ciudad) VALUES ('Juan', 'Perez', 'Santiago');
INSERT INTO usuarios (nombre, apellido, ciudad) VALUES ('Maria', 'Gonzalez', 'Valparaiso');
INSERT INTO usuarios (nombre, apellido, ciudad) VALUES ('Pedro', 'Martinez', 'Concepcion');

CREATE TABLE IF NOT EXISTS  productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_producto VARCHAR(100),
    descripcion TEXT,
    stock INT
);


INSERT INTO productos (id, nombre_producto, descripcion, stock) VALUES 
(1, 'Camisa', 'Camisa de algodon de manga larga', 100),
(2, 'Pantalon', 'Pantalon vaquero de corte recto', 80),
(3, 'Zapatos', 'Zapatos de cuero genuino', 50),
(4, 'Reloj', 'Reloj analogico de acero inoxidable', 30),
(5, 'Bolso', 'Bolso de piel sintetica con multiples compartimentos', 60);


GRANT ALL PRIVILEGES ON *.* TO 'richard'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
