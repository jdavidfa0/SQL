create database bd_agenda;

use bd_agenda;

create table personas(
cod_hospital integer,
dni integer primary key,
apellidos varchar(50),
funcion varchar (30),
salario integer,
localidad varchar(20)
);



insert into personas values (1,12345678,'Garcia Hernandez, Eladio','DOCENTE',1200,'BOGOTÀ');
insert into personas values (1,87654321,'Fuentes Bermejo, Carlos','DIRECTOR',2000,'CALI');
insert into personas values (2,55544433,'Gonzales Marin, Alicia','DOCENTE',1200,'CALI');
insert into personas values (1,66655544,'Castillo Montes,Pedro','MEDICO',1700,'BOGOTÀ');
insert into personas values (2,22233322,'Tristàn Garcìa, Ana','MEDICO',1900,'BOGOTÀ');
insert into personas values (3,55544411,'Ruiz Hernàndez,Caridad','MEDICO',1900,'CALI');
insert into personas values (3,99988333,'Serrano Dìaz, Alejandro','DIRECTOR',2400,'CARTAGENA');
insert into personas values (4,33222111,'Mesa Del Castillo, Juan','MEDICO',2200,'BOGOTÀ');
insert into personas values (2,22233333,'Martìnes Molina, Andrès','MEDICO',1600,'CARTAGENA');
insert into personas values (4,55544412,'Jimènes Jimènez, Dolores','DOCENTE',1200,'CALI');
insert into personas values (4,22233311,'Martìnez Molina, Gloria','MEDICO',1600,'BOGOTÀ');

select * from personas;
select dni,apellidos, funcion from personas;
select apellidos, localidad from personas where localidad LIKE 'BOGOTÀ';
select apellidos, localidad from personas where localidad like 'BOGOTÀ' OR localidad like 'CALI';
select * from personas where localidad like 'BOGOTÀ' and salario>=1500;
select*from personas where localidad like 'BOGOTÀ' and salario >=1500 and funcion like 'DIRECTOR';
select * from personas where funcion like 'MEDICO' order by length (apellidos) desc;
SELECT DISTINCT (localidad) FROM personas;
select * from personas where salario>=1500 and funcion like 'MEDICO' order by salario desc;
select apellidos from personas where apellidos like 'M%';
select* from personas where apellidos like '%M%' and funcion like 'DOCENTE';
select * from personas where salario between 1500 and 2000;
select * from personas where funcion in('MEDICO','DIRECTOR');
select* from personas where funcion not in('DOCENTE') and salario>=1500 order by apellidos desc;
select* from personas where localidad in ('CALI','CARTAGENA') and cod_hospital like 1;
select upper (apellidos) from personas where cod_hospital like 1;
select apellidos, length(apellidos) from personas;
select lower(apellidos), lower(localidad) from personas where cod_hospital not in (1);
select * from personas where cod_hospital in (1,2) and salario>=1500;
select* from personas where cod_hospital not in (2) and localidad like 'CALI';

