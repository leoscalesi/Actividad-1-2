create database Relacion1AMuchos

use Relacion1AMuchos

create table autores(
 idautor int primary key identity(1,1),
 nombre varchar(70) not null,
 apellido varchar(70) not null,
 edad int check(edad >0)
)

create table libros(
 idlibro int primary key identity(1,1),
 nombre varchar(70) not null,
 descripcion varchar(200) not null,
 nropaginas int check(nropaginas >0),
 autor int,
 foreign key (autor) references autores(idautor)
)
