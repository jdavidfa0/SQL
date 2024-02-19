create database factura2024;
show databases;
use factura2024;
create table Clientes(
CedulaCliente int primary key not null,
NombreCliente varchar(45) not null,
ApellidoCliente Varchar (45) not null,
FechaNac date not null);
show tables;
describe clientes;
insert into clientes(CedulaCliente,NombreCliente,ApellidoCliente,FechaNac)values(1034280111,"Jose","Fandiño",'2004-02-19');
select * from Proveedor;

insert into clientes(CedulaCliente,NombreCliente,ApellidoCliente,FechaNac)values(52365664,"Jimena","Jimenez",'1976-06-21');
insert into clientes(CedulaCliente,NombreCliente,ApellidoCliente,FechaNac)values(11253939,"Alfredo","Albaricoque",'1956-04-26');
insert into clientes(CedulaCliente,NombreCliente,ApellidoCliente,FechaNac)values(35333051,"Carla","Cifuentes",'1958-04-19');
insert into clientes(CedulaCliente,NombreCliente,ApellidoCliente,FechaNac)values(1001348666,"Pamela","Sanchez",'2001-12-17');
 update clientes set FechaNac='1978-06-26' where CedulaCliente = 52365664;
 
 create table Proveedor(
 NITPro int primary key not null,
 NombrePro varchar(45) not null,
 DireccionPro varchar (45) not null);
insert into Proveedor(NITPro,NombrePro,DireccionPro)values(5287742,"Agrocampo","Calle 75 c sur");
insert into Proveedor(NITPro,NombrePro,DireccionPro)values(557461,"VerdurasPacheco","Calle 85 #31-87");
insert into Proveedor(NITPro,NombrePro,DireccionPro)values(5451984,"SalsamentariaHolanda","Carrera 45 sur #33-22");
insert into Proveedor(NITPro,NombrePro,DireccionPro)values(654641,"FrutalesPaisas","Calle 175 #85-98");
update Proveedor set NombrePro='FrutalesPaisas' where NITPro= 654641;
 describe Productos;
 select * from Proveedor;
 
  
 create table Productos(
 CodProdu int primary key not null,
 NombreProdu varchar(45) not null,
 PrecioProdu int not null);

insert into Productos(CodProdu,NombreProdu,PrecioProdu)values(52,"Pechuga",500000);
insert into Productos(CodProdu,NombreProdu,PrecioProdu)values(53,"Tomate",250000);
insert into Productos(CodProdu,NombreProdu,PrecioProdu)values(54,"Salsas",320000);
insert into Productos(CodProdu,NombreProdu,PrecioProdu)values(55,"Pepino",120000);
insert into Productos(CodProdu,NombreProdu,PrecioProdu)values(56,"Platano",220000);
insert into Productos(CodProdu,NombreProdu,PrecioProdu)values(57,"Arroz",330000);
insert into Productos(CodProdu,NombreProdu,PrecioProdu)values(58,"Yuca",170000);
insert into Productos(CodProdu,NombreProdu,PrecioProdu)values(59,"Res",260000);
insert into Productos(CodProdu,NombreProdu,PrecioProdu)values(60,"Habichuela",80000);
insert into Productos(CodProdu,NombreProdu,PrecioProdu)values(61,"Lechuga",100000);

create table Factura(
codfactura int primary key not null,
valortotal decimal(6) not null,
fechafactura date not null,
cantproductos int not null,
CedulaCli int not null,
CodProdu int not null,
foreign key(CedulaCli) references Clientes(CedulaCliente),
foreign key(CodProdu) references Productos (CodProdu)
);


create table inventario(
codinventario int auto_increment primary key null,
CantDispo int not null,
FechaIngreso date not null,
FechaVenci date not null,
CodProducto int not null,
CodProveed int not null,
foreign key (CodProducto) references Productos(CodProdu),
foreign key (CodProveed) references Proveedor (NITPro)
); 

insert into Factura values(001,500000,'2024/02/18',2,1001348666,52);
insert into Factura values(002,250000,'2024/02/19',1,11253939,53);
insert into Factura values(003,120000,'2024/01/30',1,1034280111,55);
insert into Factura values(004,640000,'2024/01/16',2,35333051,54);
insert into Factura values(005,900000,'2024/02/17',2,1001348666,52);
insert into Factura values(006,750000,'2024/02/23',3,11253939,53);
insert into Factura values(007,240000,'2024/02/29',2,52365664,55);
insert into Factura values(008,960000,'2024/02/10',3,1034280111,54);
insert into Factura values(009,950000,'2024/02/18',4,1001348666,53);
insert into Factura values (010, 250000, '2024/02/21', 2, 52365664, 53);

insert into inventario values(1,170,'2024/02/18','2024/02/29',52,557461);
insert into inventario values(2,10,'2024/02/15','2024/02/20',59,5287742);
insert into inventario values(3,75,'2024/02/12','2024/03/29',53,654641);
insert into inventario values(4,25,'2024/02/02','2024/02/24',56,5287742);
insert into inventario values(5,110,'2024/02/13','2026/04/29',54,5451984);
insert into inventario values(6,96,'2024/02/15','2025/02/20',57,5287742);
insert into inventario values(7,135,'2024/02/18','2024/02/29',61,654641);
insert into inventario values(8,230,'2024/02/15','2024/05/20',58,557461);
insert into inventario values(9,187,'2024/02/12','2024/03/29',55,654641);
insert into inventario values(10,120,'2024/02/10','2024/04/20',60,5287742);

select*from inventario;
select FechaIngreso, CantDispo,NITPro, NombrePro from inventario inner join Proveedor on inventario.CodProveed =Proveedor.NITPro;
select codfactura, valortotal, CodProdu from Factura where valortotal>300000;
select distinct (codproveed), NombrePro, NombreProdu from inventario inner  join Proveedor on inventario.CodProveed= Proveedor.NITPro inner join Productos on Productos.CodProdu=inventario.CodProducto;





