create database bd_alumnos;

use bd_alumnos;

create table alumnos(
expediente integer primary key,
nombre varchar (50),
localidad varchar (50),
fecha_nac date,
direccion varchar (50),
curso integer,
nivel varchar(20),
faltas integer
 
);

insert into alumnos values(123456, 'Juan Miguel Soler Bakero', 'Murcia','1995/10/10', 'Gran Via,2, 4A', 1,'ESO',15);
insert into alumnos values(654321, 'Laura Gòmez Fernàndez', 'Lorca','1994/05/10', 'Junterones, 10, 5B', 2,'ESO',25);
insert into alumnos values(765432,'Beatriz Martinez Hernàndez', 'Murcia', '1993/05/05', 'Plaza Mayor, 6, 3B', 3, 'ESO', 5);
insert into alumnos values(987654, 'Diego Martin Llorente', 'Alhama de Murcia','1990/06/03', 'Diego de la Cierva, 5, 7A', 1,'BACHILLER',34);
insert into alumnos values(445544, 'Juan Francisco Cano Riquelme','Murcia', '1992/07/01', 'Plaza de Belluga, 3,4A',4,'ESO',13);
insert into alumnos values(223322,'Raquel Riquelme Rubio', 'Lorca', '1990/11/23', 'San Juan, 14, 3B', 1, 'BACHILLER', 7);
insert into alumnos values(9988877, 'Cristina Sanchez Bermejo','Murcia', '1995/03/19', 'Torre de Romo, 7', 1, 'ESO', 1);
insert into alumnos values(334455, 'Pedro Jesus Rodriguez Soler','Alhama de Murcia','1994/03/10', 'Camino de Badel,4', 2, 'ESO', 11 );
insert into alumnos values(334400,'Javier Ramànez Rodriguez', 'Murcia', '1993/05/27', 'Gran Via,  4, 3A', 3, 'ESO', 0);
insert into alumnos values(993322,'Gema Rubio Colero', 'Lorca', '1992/09/09', 'Plaza Fuentesanta,5,7A',1,'BACHILLER', 19);
insert into alumnos values(554411, 'Joaquin Hernàndez Gonzàles', 'Lorca', '1991/12/12', 'Junterones,4,5A', 2, 'BACHILLER', 14);

SELECT*from alumnos;
select nombre, localidad, fecha_nac from alumnos;
select nombre as "Nombre Y apellidos" from alumnos;
select nombre, faltas*2 as "Faltas de asistencia" from alumnos;
select * from alumnos where localidad in('Lorca');
select*from alumnos where localidad in ('Murcia','Alhama de Murcia');
select*from alumnos where localidad like 'Murcia' and curso like 1 and nivel in ('ESO');
select* from alumnos where localidad like 'Lorca' and nivel like 'BACHILLER' and curso like 2  and faltas>10;
select* from alumnos where localidad like 'Murcia' order by nombre;
select*from alumnos order by nivel, curso;
select* from alumnos where faltas >10 and curso between 1 and 2;
select* from alumnos where faltas<10 and curso between 3 and 4 and localidad like 'Murcia';
select distinct(curso) from alumnos;
select* from alumnos where faltas <>10 and curso  like 1 and nivel like'ESO';
select*from alumnos  where nombre like 'B%';
select*from alumnos where localidad like 'Murcia' and nombre like '%O';
select*from alumnos where curso like 1 and nivel like 'ESO' and nombre like '%U%';
select* from alumnos where faltas is null;
select*from alumnos where faltas between 10 and 20 order by nombre;
select*from alumnos where faltas between 10 and 20 and localidad like 'Murcia';
select*from alumnos where faltas between 10 and 20 and localidad like 'Murcia' and curso like 1 and nivel like 'ESO';
select*from alumnos where faltas<10 or faltas>20;
select*from alumnos where year (fecha_nac) between 1993 and 1994 order by nombre;
select*from alumnos where curso in (1,2);
select*from alumnos where curso in (3,4) and localidad in ('Murcia');
select*from alumnos where nivel not in ('ESO') order by curso,nombre desc;
select*from alumnos where curso IN (1,2) and nivel not in ('BACHILLER') order by nombre;
select*from alumnos where nombre like 'J%' and faltas >10 and nivel not in ('BACHILLER') order by curso,nombre;
select expediente, nombre, curso, nivel from alumnos where nivel not in ('BACHILLER') order by curso , nivel, nombre desc;
select upper(nombre) from alumnos where localidad like 'Murcia';
select upper(nombre), lower(localidad) from alumnos order by localidad;
select concat(nombre, '',localidad) Nombre_Localidad, replace( nivel,'BACHILLER', 'Bachillerato') as nivel from alumnos ;
select nombre , length(nombre)Tamaño_Nombre from alumnos;
select nombre, year(fecha_nac) Año_Nacimiento, month(fecha_nac) Mes_Nacimiento from alumnos;
select nombre, year(curdate())- year(fecha_nac) Edad_Alumno from alumnos;