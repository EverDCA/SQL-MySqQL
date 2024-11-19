CREATE DATABASE db_empresa;
USE db_empresa;

CREATE TABLE inventarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_producto VARCHAR(100) NOT NULL,
    cantidad INT NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    fecha_ingreso DATE
);
