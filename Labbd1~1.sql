-------- Eliminar las tablas si ya existen
drop table Trabaja;
drop table EmpresaDiscografica;
drop table Productor;

-- Crear la tabla EmpresaDiscografica
create table EmpresaDiscografica (
  codigo int, 
  nombre varchar2(100) not null, 
  tipo varchar2(50) not null,
  constraint pk_codigo primary key (codigo)
);

-- Crear la tabla Productor
create table Productor (
  numTarjetaP int,
  nombreArtistico varchar2(50) not null,
  aniosExp int not null,
  constraint pk_numTarjetaP primary key (numTarjetaP)
);

-- Crear la tabla Trabaja
create table Trabaja (
  codigo int,
  numTarjetaP int,
  fechaInicio date not null,
  fechaFin date, 
  constraint pk_trabajo primary key (codigo, numTarjetaP),
  constraint fk_codigo foreign key (codigo) references EmpresaDiscografica(codigo),
  constraint fk_numTarjetaP foreign key (numTarjetaP) references Productor(numTarjetaP)
);

-- Insertar empresas discográficas
insert into EmpresaDiscografica (codigo, nombre, tipo) values (1, 'Sony Music', 'Multinacional');
insert into EmpresaDiscografica (codigo, nombre, tipo) values (2, 'Universal Music', 'Multinacional');
insert into EmpresaDiscografica (codigo, nombre, tipo) values (3, 'Warner Music', 'Multinacional');
insert into EmpresaDiscografica (codigo, nombre, tipo) values (4, 'EMI Music', 'Multinacional');

-- Insertar productores
insert into Productor (numTarjetaP, nombreArtistico, aniosExp) values (101, 'Carlos Ruiz', 5);
insert into Productor (numTarjetaP, nombreArtistico, aniosExp) values (102, 'Ana González', 8);
insert into Productor (numTarjetaP, nombreArtistico, aniosExp) values (103, 'Luis Méndez', 2);
insert into Productor (numTarjetaP, nombreArtistico, aniosExp) values (104, 'Julia Pérez', 6);
insert into Productor (numTarjetaP, nombreArtistico, aniosExp) values (105, 'Mario Torres', 4);
insert into Productor (numTarjetaP, nombreArtistico, aniosExp) values (106, 'Sofía García', 7);
insert into Productor (numTarjetaP, nombreArtistico, aniosExp) values (107, 'David López', 3);
insert into Productor (numTarjetaP, nombreArtistico, aniosExp) values (108, 'Rosa Martínez', 9);
insert into Productor (numTarjetaP, nombreArtistico, aniosExp) values (109, 'Pedro Fernández', 5);
insert into Productor (numTarjetaP, nombreArtistico, aniosExp) values (110, 'Elena Sánchez', 10);

-- Insertar relaciones de trabajo en la tabla Trabaja
insert into Trabaja (codigo, numTarjetaP, fechaInicio, fechaFin) values (1, 101, to_date('2020-01-01', 'YYYY-MM-DD'), to_date('2021-01-01', 'YYYY-MM-DD'));
insert into Trabaja (codigo, numTarjetaP, fechaInicio, fechaFin) values (2, 101, to_date('2021-02-01', 'YYYY-MM-DD'), to_date('2022-02-01', 'YYYY-MM-DD'));

insert into Trabaja (codigo, numTarjetaP, fechaInicio, fechaFin) values (2, 102, to_date('2020-03-01', 'YYYY-MM-DD'), to_date('2021-03-01', 'YYYY-MM-DD'));
insert into Trabaja (codigo, numTarjetaP, fechaInicio, fechaFin) values (3, 102, to_date('2021-04-01', 'YYYY-MM-DD'), to_date('2022-04-01', 'YYYY-MM-DD'));

insert into Trabaja (codigo, numTarjetaP, fechaInicio, fechaFin) values (3, 103, to_date('2020-05-01', 'YYYY-MM-DD'), to_date('2021-05-01', 'YYYY-MM-DD'));
insert into Trabaja (codigo, numTarjetaP, fechaInicio, fechaFin) values (4, 103, to_date('2021-06-01', 'YYYY-MM-DD'), to_date('2022-06-01', 'YYYY-MM-DD'));

insert into Trabaja (codigo, numTarjetaP, fechaInicio, fechaFin) values (1, 104, to_date('2020-07-01', 'YYYY-MM-DD'), to_date('2021-07-01', 'YYYY-MM-DD'));
insert into Trabaja (codigo, numTarjetaP, fechaInicio, fechaFin) values (4, 104, to_date('2021-08-01', 'YYYY-MM-DD'), to_date('2022-08-01', 'YYYY-MM-DD'));

insert into Trabaja (codigo, numTarjetaP, fechaInicio, fechaFin) values (2, 105, to_date('2020-09-01', 'YYYY-MM-DD'), to_date('2021-09-01', 'YYYY-MM-DD'));
insert into Trabaja (codigo, numTarjetaP, fechaInicio, fechaFin) values (3, 105, to_date('2021-10-01', 'YYYY-MM-DD'), to_date('2022-10-01', 'YYYY-MM-DD'));

insert into Trabaja (codigo, numTarjetaP, fechaInicio, fechaFin) values (1, 106, to_date('2020-11-01', 'YYYY-MM-DD'), to_date('2021-11-01', 'YYYY-MM-DD'));
insert into Trabaja (codigo, numTarjetaP, fechaInicio, fechaFin) values (4, 106, to_date('2021-12-01', 'YYYY-MM-DD'), to_date('2022-12-01', 'YYYY-MM-DD'));

insert into Trabaja (codigo, numTarjetaP, fechaInicio, fechaFin) values (2, 107, to_date('2020-01-01', 'YYYY-MM-DD'), to_date('2021-01-01', 'YYYY-MM-DD'));
insert into Trabaja (codigo, numTarjetaP, fechaInicio, fechaFin) values (3, 107, to_date('2021-02-01', 'YYYY-MM-DD'), to_date('2022-02-01', 'YYYY-MM-DD'));

insert into Trabaja (codigo, numTarjetaP, fechaInicio, fechaFin) values (3, 108, to_date('2020-03-01', 'YYYY-MM-DD'), to_date('2021-03-01', 'YYYY-MM-DD'));
insert into Trabaja (codigo, numTarjetaP, fechaInicio, fechaFin) values (4, 108, to_date('2021-04-01', 'YYYY-MM-DD'), to_date('2022-04-01', 'YYYY-MM-DD'));

insert into Trabaja (codigo, numTarjetaP, fechaInicio, fechaFin) values (1, 109, to_date('2020-05-01', 'YYYY-MM-DD'), to_date('2021-05-01', 'YYYY-MM-DD'));
insert into Trabaja (codigo, numTarjetaP, fechaInicio, fechaFin) values (2, 109, to_date('2021-06-01', 'YYYY-MM-DD'), to_date('2022-06-01', 'YYYY-MM-DD'));

insert into Trabaja (codigo, numTarjetaP, fechaInicio, fechaFin) values (4, 110, to_date('2020-07-01', 'YYYY-MM-DD'), to_date('2021-07-01', 'YYYY-MM-DD'));
insert into Trabaja (codigo, numTarjetaP, fechaInicio, fechaFin) values (1, 110, to_date('2021-08-01', 'YYYY-MM-DD'), to_date('2022-08-01', 'YYYY-MM-DD'));