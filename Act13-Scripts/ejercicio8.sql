CREATE DATABASE db_colegio;
USE db_colegio;

CREATE TABLE estudiantes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_estudiante VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE,
    grado VARCHAR(10)
);

CREATE TABLE profesores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_profesor VARCHAR(100) NOT NULL,
    especialidad VARCHAR(50)
);

CREATE TABLE asignaturas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_asignatura VARCHAR(100) NOT NULL,
    id_profesor INT,
    FOREIGN KEY (id_profesor) REFERENCES profesores(id)
);
