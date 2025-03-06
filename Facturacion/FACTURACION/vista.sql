CREATE  VIEW Cfd, as Select cliente.idCliente, cliente.rfc, cliente.nombre,cliente.apPaterno,
cliente.apMaterno,cliente.telefono,cliente.correo,cliente.calle,cliente.colonia,
cliente.municipio, cliente.cp,tienda.idTienda,tienda.rfc,tienda.razon_social,tienda.calle,tienda.num_Ext,
tienda.num_Int,tienda.colonia,tienda.municipio.tienda.estado,tienda.cp,tienda.correo,tienda.telefono,
venta.id_venta,venta.fecha_vent,venta.sub_total,venta.total,venta.iva FROM cliente 
INNER JOIN venta ON cliente.idCliente=venta.idCliente INNER JOIN venta.idTienda=tienda.idTienda;