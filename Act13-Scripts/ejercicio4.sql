CREATE DATABASE db_ferreteria;
USE db_ferreteria;

CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_cliente VARCHAR(100) NOT NULL,
    telefono VARCHAR(15),
    email VARCHAR(100)
);
