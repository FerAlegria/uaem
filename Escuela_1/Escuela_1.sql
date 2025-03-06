CREATE DATABASE Escuela_1;
use database;

CREATE TABLE persona(
id int,
clave VARCHAR(10),
nombre VARCHAR(50),
domicilio VARCHAR(200),
telefono VARCHAR(15),
correo_electronico VARCHAR(45),
fecha_nacimiento DATE,
genero VARCHAR(10),
PRIMARY KEY (id)
)