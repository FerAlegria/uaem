drop database facturacion;
create database facturacion;

use facturacion;

create table cliente(
	idCliente int auto_increment,
	rfc_C varchar(13),
	nombre varchar(20),
	apPaterno varchar (30),
	apMaterno varchar (30),
	telefono INTO(12),
	correo varchar(50),
	calle varchar(100),
	num_Ext varchar(10),
	num_Int varchar(10),
	colonia varchar(40),
	municipio varchar(40),
	cp int(5),
	PRIMARY KEY (idCliente)
)ENGINE=innoDB;
drop table venta;
create table venta(
	id_venta int(11) AUTO_INCREMENT,
	fecha_vent date,
	sub_total numeric(5,2),
	total numeric(7,2),
	iva numeric(5,2),
	idCliente int,
	idTienda int,
	PRIMARY KEY (id_venta),
	FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
	FOREIGN KEY (idTienda) REFERENCES tienda(idTienda)
)ENGINE=innodb;

create table producto(
	id_producto int(20) AUTO_INCREMENT,
	nombre varchar(30),
	fecha_cad date,
	cantidad int(5),
	precio numeric(5,2),
	marca varchar(50),
	PRIMARY KEY(id_producto)
)ENGINE=innodb;

create table tienda(
	idTienda int auto_increment,
	rfc_T varchar(13),
	razon_social varchar(50),
	calle varchar(100),
	num_Ext varchar(10),
	num_Int varchar(10),
	colonia varchar(40),
	municipio varchar(40),
	estado varchar(20),
	cp int(5),
	correo varchar(50),
	telefono int(12),
	PRIMARY KEY (idTienda)
)ENGINE=innodb;

create table nota(
	consecutivo int AUTO_INCREMENT,
	id_venta int(11), 
	id_producto int(20),
	subtotal numeric(6,2),
	cantidad int(20),
	PRIMARY KEY(consecutivo),
	FOREIGN KEY venta(id_venta) REFERENCES venta(id_venta),
	FOREIGN KEY producto(id_producto) REFERENCES producto(id_producto)
)ENGINE=innodb;
	
	 INSERT INTO nota (id_venta,id_producto,subtotal,cantidad) VALUES (1,1,150.99,30);
	 INSERT INTO venta(fecha_vent) VALUES ("2022-04-27");
	 /*meter datos en cliente y tienda y despues meter la de venta
	 pasar mysql php  a xml */
	 INSERT INTO cliente(idCliente,rfc_C,nombre,apPaterno,apMaterno,telefono,correo,calle,num_Ext,num_Int,colonia,municipio,cp) VALUES (3,"MIAK457878956","Gabriela","Martinez","Gonzales",55750310,"gabmatinez@gmail.com","san benito",4,9,"el nido","teoloyucan",55689);
	 INSERT INTO tienda(idTienda,rfc_T,razon_social,calle,num_Ext,num_Int,colonia,municipio,estado,cp,correo,telefono) VALUES (4,"MIAK780402LO7","S.A.C.V.","Emiliano Zapata",50,23,"Chimalhuacan","EL ORIENTE","ESTADO DE MEXICO",55897,"gapialter@gmail.com",55789641);
	 INSERT INTO producto(nombre,marca,fecha_cad,cantidad,precio) VALUES ("panque","marinela","2025-11-28",09,30.50),("gansito","marinela","2023-01-05",12,30.50);
	 INSERT INTO producto(nombre,marca,fecha_cad,cantidad,precio) VALUES ("barritas","marinela","2022-04-28",15,15.50),("chocorroles","marinela","2023-08-23",20,12.50);

La sintaxis para seleccionar los registros comunes entre tabla 1 y 2 para
que tengan correspondencias entre ambas tablas escribiriamos:

	SELECT tabla1.columna1,tabla1.columna2,tabla1.columna3,tabla2.columna1
	FROM tabla1 inner join tabla2 ON tabla1.columna1 = tabla2.columna1

	ALTER TABLE vENTA drop COLUMN ID_TIENDA;
	ALTER TABLE VENTA ADD COLUMN id_tienda varchar(13),
	ADD CONSTRAINT fk_id_tienda FOREIGN KEY(id_tienda) REFERENCES tienda(rfc);
	ALTER TABLE cliente ADD COLUMN idCliente int auto_increment, 
	ADD CONSTRAINT 'pk_id_cliente' PRIMARY KEY(idCliente);
/*03/05/22*/
UPDATE nota NV INNER JOIN(SELECT id_producto, precio FROM producto)P ON NV.id_producto=P.id_producto SET NV.subtotal=P.precio*NV.cantidad;0
UPDATE venta v INNER JOIN(SELECT id_venta,sum(sub_total) T FROM nota group by id_venta) S ON v.id_venta=S.id_venta SET v.sub_total=v.T, v.iva=v.sub_total*0.16, v.total=v.sub_total+v.iva;

CREATE  VIEW Cfd, as Select * FROM cliente.idCliente, cliente.rfc, cliente.nombre,cliente.apPaterno,
cliente.apMaterno,cliente.telefono,cliente.correo,cliente.calle,cliente.colonia,
cliente.municipio, cliente.cp,tienda.idTienda,tienda.rfc,tienda.razon_social,tienda.calle,tienda.num_Ext,
tienda.num_Int,tienda.colonia,tienda.municipio.tienda.estado,tienda.cp,tienda.correo,tienda.telefono,
venta.id_venta,venta.fecha_vent,venta.sub_total,venta.total,venta.iva FROM cliente 
INNER JOIN venta ON cliente.idCliente=venta.idCliente INNER JOIN venta.idTienda=tienda.idTienda;

