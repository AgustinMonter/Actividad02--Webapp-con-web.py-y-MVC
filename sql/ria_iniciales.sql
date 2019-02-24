CREATE DATABASE agus_iniciales;
USE agus_iniciales;

CREATE TABLE clientes(
  id int(4) AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  apellidos varchar(50) NOT NULL,
  correo varchar(55) NOT NULL,
  telefono varchar(10) NULL
) ENGINE = InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE productos(
  codigo int(4) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(40) NOT NULL,
  marca varchar(25) NOT NULL,
  categoria varchar(50) NOT NULL,
  precio float(6,2) UNSIGNED NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET=latin1;

INSERT INTO clientes(nombre, apellidos, correo, telefono) VALUES
  ('Chanito','Perez', 'chanito@gmail','7752139867'),
  ('Lola', 'Labartola', 'lola@gmail','7758764909'),
  ('Panfilo','Lopez','panfilo@gmail','7750791176');

INSERT INTO productos(nombre, marca, categoria,precio) VALUES
  ('Papel','Dove','hogar',30.00),
  ('Leche','Alpura','hogar',20.00),
  ('Lampara','Desconosida','hogar',100.00);

SHOW TABLES;

SELECT * FROM clientes;

DESCRIBE clientes;

SELECT * FROM productos;

DESCRIBE productos;

CREATE USER 'agus'@'localhost' IDENTIFIED BY 'agus.2019';
GRANT ALL PRIVILEGES ON agus_iniciales.* TO 'agus'@'localhost';
FLUSH PRIVILEGES;
