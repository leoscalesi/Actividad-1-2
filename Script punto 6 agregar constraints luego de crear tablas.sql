create database Alternativa

use  Alternativa


create table autores(
 idautor int not null,
 nombre varchar(70) not null,
 apellido varchar(70) not null,
 edad int check(edad >0)
)

create table libros(
 idlibro int not null,
 nombre varchar(70) not null,
 descripcion varchar(200) not null,
 nropaginas int check(nropaginas >0),
 autor int,
)

alter table Autores
add constraint PK_Autor primary key (idautor)

alter table libros
add constraint PK_Libro primary key (idlibro)

alter table libros
add constraint FK_Autor foreign key (autor) references autores(idautor)