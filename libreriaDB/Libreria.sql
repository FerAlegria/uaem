CREATE DATABASE Libreria;
USE Libreria

CREATE TABLE autor(
idAutor bigint (20),
nombreCompleto VARCHAR (120),
fechaNacimiento date,
fechaMuerte date,
PRIMARY KEY (idAutor)
)ENGINE= InnoDB;

CREATE TABLE genero(
idGenero bigint (20),
nombre VARCHAR (75),
PRIMARY KEY(idGenero)
)ENGINE=InnoDB;

CREATE TABLE stock(
idStock bigint(20),
idLibro bigint(20),
totalStock int,
notas VARCHAR(255),
fechaActualizacion date,
PRIMARY KEY(idStock)
) ENGINE=InnoDB;

CREATE TABLE libro(
idLibro bigint (20),
titulo VARCHAR(255),
descripcion VARCHAR(255),
anioPublicacion year(4),
idAutor bigint(20),
idGenero bigint(20),
PRIMARY KEY (idLibro)
)ENGINE=InnoDB;
