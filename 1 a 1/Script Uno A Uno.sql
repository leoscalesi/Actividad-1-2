create database UnoAUno

use UnoAUno


create table Coches(
 idCoche bigint primary key identity(1,1),
 cantpuertas int not null check(cantpuertas > 1 and cantpuertas <= 5),
 longitud decimal not null check(longitud >0)
)

create table Motor(
 idCoche bigint primary key identity(1,1),
 idMotor bigint not null unique,
 potencia int not null check(potencia>0),
 consumoporkm decimal not null check(consumoporkm>0),
 foreign key (idCoche) references Coches(idCoche) 
)
 






