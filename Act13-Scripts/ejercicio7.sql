CREATE DATABASE db_clinica;
USE db_clinica;

CREATE TABLE pacientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_paciente VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE,
    telefono VARCHAR(15)
);

CREATE TABLE doctores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_doctor VARCHAR(100) NOT NULL,
    especialidad VARCHAR(50),
    telefono VARCHAR(15)
);

CREATE TABLE citas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT,
    id_doctor INT,
    fecha_cita DATE,
    hora TIME,
    FOREIGN KEY (id_paciente) REFERENCES pacientes(id),
    FOREIGN KEY (id_doctor) REFERENCES doctores(id)
);
