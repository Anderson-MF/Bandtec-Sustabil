create database sustabil;
use sustabil;

create table usuario(
id int primary key auto_increment,
email varchar (45),
empresa varchar (45),
senha varchar (45),
CNPJ char (14)
);

create table sensor(
idsensor int primary key auto_increment,
media decimal(2,2) check(media>=20 and media <=80),
fkusuario int,
foreign key(fkusuario) references usuario(id)
) auto_increment = 20
;


Create table Locsensor (
idLocsensor int primary key auto_increment,
cep char (9),
uf char(2),
fksensorloc int,
foreign key (fksensorloc) references sensor (idsensor)
) auto_increment = 30
;

create table umidade (
idUmidade int primary key auto_increment,
umidade int,
horario datetime,
indentificacao varchar (45),
fksensor int,
foreign key (fksensor) references sensor (idsensor)
) auto_increment = 2000
;
insert into umidade ( horario, indentificacao, fksensor) values
( '2019-12-12 17:00:00' ,'S2',20 ),
( '2019-2-23 12:00:00' ,'S1',21 ),
( '2020-2-9 13:00:00' ,'S2',21 ),
( '2020-2-9 17:00:00' ,'S3',21 ),
( '2020-2-9 15:00:00' ,'S1',22 ),
( '2020-2-9 11:00:00' ,'S2',22 ),
( '2020-2-9 09:00:00' ,'S3',22 );




drop database sustabil;
select * from empresa;
select * from funcionario;
select * from sensor;
select * from Locsensor;
select * from umidade;
select * from sensor, Locsensor where fksensorloc = idsensor;
select * from umidade, sensor where fksensor = idsensor;
