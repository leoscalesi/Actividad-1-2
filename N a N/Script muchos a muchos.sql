create database RelacionMuchosAMuchos

use RelacionMuchosAMuchos


create table Ventas(
 idVenta bigint primary key check(idVenta>0),
 importe money not null check(importe>0),
 fecha date not null check(fecha <=getdate())
)

create table Productos(
 idProducto int primary key check(idProducto>0),
 descripcion varchar(100),
 precioCompra money not null check(precioCompra>0),
 precioVenta money not null check(precioVenta>0)
)

create table DetalleVenta(
  idVenta bigint not null check(idVenta>0),
  idProducto int not null check(idProducto>0),
  primary key(idVenta,idProducto),
  foreign key (idVenta) references Ventas(idVenta),
  foreign key (idProducto) references Productos (idProducto)
)






