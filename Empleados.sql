CREATE DATABASE bd_empleados;
USE bd_empleados;
create table emple(
 emp_no INTEGER PRIMARY KEY,
 apellido VARCHAR(50) NOT NULL,
 oficio VARCHAR(30),
 dir INTEGER,
 fecha_alt DATE,
 salario INTEGER,
 comision INTEGER,
 dept_no INTEGER
);
INSERT INTO emple VALUES (7369,'SÁNCHEZ', 'EMPLEADO', 7902,
'1990/12/17', 1040, NULL, 20);
INSERT INTO emple VALUES (7499,'ARROYO', 'VENDEDOR', 7698,
'1990/02/20', 1500, 390, 30);
INSERT INTO emple VALUES (7521,'SALA', 'VENDEDOR', 7698,
'1991/02/22', 1625, 650, 30);
INSERT INTO emple VALUES (7566,'JIMÉNEZ', 'DIRECTOR', 7839,
'1991/04/02', 2900, NULL, 20);
INSERT INTO emple VALUES (7654,'MARTÍN', 'VENDEDOR', 7698,
'1991/09/29', 1600, 1020, 30);
INSERT INTO emple VALUES (7698,'NEGRO', 'DIRECTOR', 7839,
'1991/05/01', 3005, NULL, 30);
INSERT INTO emple VALUES (7782,'CEREZO', 'DIRECTOR', 7839,
'1991/06/09', 2885, NULL, 10);
INSERT INTO emple VALUES (7788,'GIL', 'ANALISTA', 7566,
'1991/11/09', 3000, NULL, 20);
INSERT INTO emple VALUES (7839,'REY', 'PRESIDENTE', NULL,
'1991/11/17', 4100, NULL, 10);
INSERT INTO emple VALUES (7844,'TOVAR', 'VENDEDOR', 7698,
'1991/09/08', 1350, 0, 30);
INSERT INTO emple VALUES (7876,'ALONSO', 'EMPLEADO', 7788,
'1991/09/23', 1430, NULL, 20);
INSERT INTO emple VALUES (7900,'JIMENO', 'EMPLEADO', 7698,
'1991/12/03', 1335, NULL, 30);
INSERT INTO emple VALUES (7902,'FERNÁNDEZ','ANALISTA', 7566,
'1991/12/03', 3000, NULL, 20);
INSERT INTO emple VALUES (7934,'MUÑOZ', 'EMPLEADO', 7782,
'1992/01/23', 1690, NULL, 10);
create table depart(
 dept_no INTEGER,
 dnombre VARCHAR(30),
 loc VARCHAR(30)
);
INSERT INTO depart VALUES (10, 'CONTABILIDAD', 'SEVILLA');
INSERT INTO depart VALUES (20, 'INVESTIGACIÓN', 'MADRID');
INSERT INTO depart VALUES (30, 'VENTAS', 'BARCELONA');
INSERT INTO depart VALUES (40, 'PRODUCCIÓN', 'BILBAO');

select apellido,oficio, dept_no from emple;
select dept_no,dnombre,loc from depart;
select*from emple;
select*from emple order by apellido;
select*from emple order by dept_no desc;
select * from emple order by dept_no desc, apellido;
select dept_no, apellido from emple order by dept_no desc, apellido;
select *from emple where salario>2000;
select*from emple where oficio ='ANALISTA';
SELECT APELLIDO, OFICIO FROM EMPLE where dept_no =20;
select*from emple order by apellido;
select*from emple where oficio='VENDEDOR' order by apellido;
select * from emple where dept_no=20 and oficio ='EMPLEADO' order by apellido;
select * from emple where salario>2000 or dept_no=20;
select * from emple order by oficio,apelllido;
select*from emple where apellido like 'A%';
select*  from emple where apellido like '%Z';
select * from emple where apellido like 'A%' and oficio like '%E%';
select * from emple where salario between 1000 and 2000;
select* from emple where oficio ='VENDEDOR' and comision >1000;
select*from emple order by dept_no, apellido;
select emp_no,apellido from emple where apellido like '%z' and salario>2000;
select*from depart where loc like 'B%';
select * from emple where oficio ='EMPLEADO' and salario>1100 and dept_no=10;
select apellido from emple where comision is null;
select apellido, comision from emple where comision is null or comision =0;
select apellido from emple where comision is null and apellido like 'J%';
select apellido from emple where oficio in ('VENDEDOR', 'ANALISTA','EMPELADO');
select apellido, oficio, salario from emple where oficio not in ('ANALISTA','EMPLPEADO') AND salario>2000;
select apellido, oficio, salario from emple where oficio <>'ANALISTA' and oficio <> 'EMPLEADO' and salario<>2000;
select*from emple where salario between 2000 and 3000;
select apellido,salario,dept_no from emple where salario>2000 and (dept_no=10 or dept_no=30);
select apellido,salario,dept_no from emple where salario>2000 and dept_no in (10,30);
select apellido, emp_no from emple where salario not between 1000 and 2000;
select lower(apellido) from emple;
select concat ( apellido, ' ', oficio) empleao_oficio from emple order by 1;
select apellido, length(apellido) from emple order by length (apellido) desc;
select apellido, length (apellido) largo from emple order by 2 desc;
select distinct year (fecha_alt) año from emple;
select * from emple where year (fecha_alt )=1992;
select * from emple where monthname(fecha_alt)='February';
select apellido, fecha_alt from emple where month (fecha_alt)=2;
select apellido, geatest (salario, coalesce (comision,0)) from emple;
select apellido from emple where apellido like 'A%' and year (fecha_alt)=1990;
select * from emple where dept_no =10 and comision is null;


