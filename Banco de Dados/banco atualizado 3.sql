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
nome VARCHAR (45),
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
momento datetime,
fksensor int,
foreign key (fksensor) references sensor (idsensor)
) auto_increment = 2000
;
