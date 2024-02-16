create database Tienda2024;

use Tienda2024;

create table Fabricantes(
cod_fab integer auto_increment not null primary key,
nombre_fab varchar(50) not null,
dir_fab varchar(50),
ciu_fab varchar (50) not null,
pais_fab varchar(50)not null
); 

insert into Fabricantes values(1, 'Dell', 'CARRERA 7 113 43 OF 1401', 'Bogota', 'Colombia');
insert into Fabricantes values(2,'Kingstone','17600 Valley', 'Ciudad de Mexico', 'Mexico');
insert into Fabricantes values(3,'Logitech', '3930 North First Street','Florida', 'EEUU');
insert into Fabricantes values (4,'Lenovo','Los Condes', 'Santiago','Chile');
insert into Fabricantes values(5,'Acer', 'Carrera 15 #78-33 C.c Unilago', 'Bogota', 'Colombia');

create table Articulos(
cod_art int not null primary key,
nom_art varchar (50),
pre_art decimal not null,
codi_fab int not null,
foreign key (codi_fab)references Fabricantes(cod_fab)

);

insert into Articulos values (100,'Portatil',2000000,1);
insert into Articulos values (101, 'Disco Duro 1T', 250000,2);
insert into Articulos values (102,'Mouse Inalambrico', 25000,3);
insert into Articulos values (103, 'Memoria USB 2T',70000,5 );
insert into Articulos values (104, 'Portatil 512G ssd', 220000,4 );
insert into Articulos values (105,'Impresora Bluetooth', 300000, 5);
insert into Articulos values (106,'Teclado', 140000,3);
insert into Articulos values (107, 'Monitor 24', 700000,5);
insert into Articulos values(108, 'Antena Wffi', 50000, 2);
insert into Articulos values(109, 'Router', 60000, 3);
insert into Articulos values(110,'Adaptador USB', 70000, 3);


select count(*) from Articulos;
SELECT * from Articulos where nom_art like 'A%';
Select nom_art, pre_art from Articulos order by nom_art;
select * from Articulos where pre_art between 200000 and 1000000;
select cod_art, nom_art as noma from Articulos;
select*from Articulos as arti;

select nom_art, nombre_fab from Articulos inner join Fabricantes on  Fabricantes.cod_fab=Articulos.codi_fab;
select cod_art,nom_art,nombre_fab,ciu_fab from Fabricantes inner join Articulos on Fabricantes.cod_fab=Articulos.codi_fab;
select nom_art, pre_art from Articulos inner join Fabricantes on Fabricantes.cod_fab=Articulos.codi_fab where nombre_fab like 'Kingstone'order by pre_art desc;
select*from Articulos inner join Fabricantes on Fabricantes.cod_fab=Articulos.codi_fab;
select avg(pre_art) Promedio from Articulos inner join Fabricantes on Fabricantes.cod_fab=Articulos.codi_fab where nombre_fab = 'Acer';



