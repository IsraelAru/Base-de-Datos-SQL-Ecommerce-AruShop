CREATE DATABASE IF NOT EXISTS AruShop;
use arushop;

-- DECLARACION DE TABLAS

CREATE TABLE IF NOT EXISTS clientes(
	id_clientes INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    dni VARCHAR(9) UNIQUE NOT NULL,
    correo_electronico VARCHAR(45) UNIQUE NOT NULL,
	telefono VARCHAR(11) NOT NULL
);

CREATE TABLE IF NOT EXISTS articulos(
	id_articulos INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre_articulo VARCHAR(30) NOT NULL,
    precio INT NOT NULL,
	cantidad_stock INT NOT NULL,
    descripcion VARCHAR(45)
);

CREATE TABLE IF NOT EXISTS ventas(
	id_ventas INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_clientes INT,
    fecha_de_venta DATETIME DEFAULT CURRENT_TIMESTAMP,
    total INT NOT NULL,
    FOREIGN KEY(id_clientes) REFERENCES clientes (id_clientes)
);

CREATE TABLE IF NOT EXISTS detalle_ventas(
	id_detalle_ventas INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_articulos INT,
    id_ventas INT,
    cantidad INT NOT NULL,
    precio INT NOT NULL,
    FOREIGN KEY(id_articulos) REFERENCES articulos (id_articulos),
    FOREIGN KEY(id_ventas) REFERENCES ventas (id_ventas)
);
