# AulaMariaRita
Aulas de banco de dados

create database Empresa2204
default character set utf8
default collate utf8_general_ci;

create table Estado (
CodEstado int primary key auto_increment,
DescEstado varchar(30) not null,
uf varchar(3)
) default charset = utf8;

create table Cidade (
CodCidade int primary key auto_increment,
DescCidade varchar(30) not null,
CodEstado int,
foreign key (CodEstado) references Estado (CodEstado)
) default charset = utf8;

create table Cliente (
CodCliente int primary key auto_increment,
Nome varchar(75) not null,
DataNasc date not null,
Logradouro varchar(100),
Complemento varchar(40),
Setor varchar(45),
CodCidade int,
foreign key (CodCidade) references Cidade(CodCidade));

create table Telefone (
CodCliente int,
Fone varchar(13),
primary key (CodCliente, Fone),
foreign key (CodCliente) references Cliente (CodCliente));

create table Email (
CodCliente int,
Email varchar(100),
primary key (CodCliente, Email),
foreign key (CodCliente) references Cliente (CodCliente));



select * from Estado;
select * from Cidade;
select * from Cliente;
select * from Telefone;

insert into Estado
(CodEstado, DescEstado, uf)
values
(default, 'Minas Gerais', 'MG'),
(default, 'Goias', 'GO');


insert into Cidade
(CodCidade, DescCidade, CodEstado)
values
(default, 'Aparecida de Goiania', '2'),
(default, 'Goiania', '2'),
(default, 'Anapolis', '2'),
(default, 'Belo Horizonte', '1'),
(default, 'Uberaba', '1');

insert into Cliente
(CodCliente, Nome, DataNasc, Logradouro, Complemento, Setor, CodCidade)
values
(default, 'Murillo Marques', '1991/04/21', 'Duque de Caxias', 'Lote 5', 'Serra Dourada', '1'),
(default, 'Rodrigo Silva', '1993/02/28', 'Vitoria', 'Lote 1', 'Araguaia', '2'),
(default, 'Pedro Henrique', '2001/02/15', 'Bela Vista', 'Lote 3' ,'Raul Seixas', '3'),
(default, 'Luiz Ostacio', '1996/11/29', 'Macaco Dourado', 'Lote 12', 'Papagaio Leal', '4'),
(default, 'Bruno Dias', '1895/12/01', 'Elefante Verde', 'Lote 7', 'Rodeio dos Reis', '5');

insert into Telefone
(CodCliente, Fone)
values
('1', '62 98145-9232'),
('2', '62 97845-8291'),
('3', '62 98451-7892'),
('4', '31 98874-2514'),
('5', '31 97391-4532');


insert into Email
(CodCliente, Email)
values
('1', 'MurilloMarques@gmail.com'),
('2', 'RodrigoSilva@gmail.com'),
('3', 'PedroHenrique@gmail.com'),
('4', 'LuizOstacio@gmail.com'),
('5', 'BrunoDias@gmail.com');

select DescEstado as Estado, uf as Sigla from Estado;

select DescEstado as Estado from Estado where
DescEstado like 'G%';

select DescCidade as Cidade from Cidade;

select DescCidade as Cidade from Cidade where DescCidade like 'A%';


select DescCidade as Cidade, DescEstado as Estado from Cidade c, Estado e
where c.CodEstado = e.CodEstado and DescEstado = 'Goias';

select Nome as Cliente from Cliente;

select Nome as Cliente from Cliente where Nome like 'J%';

select Nome as Cliente from Cliente where Nome like 'M%';

select Nome as Cliente from Cliente where Nome like 'L%';

select Nome as Cliente, DataNasc as 'Data de Nascimento' from Cliente where
year(DataNasc) < 2000;

select Nome as Cliente from Cliente c, Cidade ci where c.CodCidade = ci.CodCidade 
and DescCidade = 'Belo Horizonte';

select Nome as Cliente from Cliente c, Cidade ci where c.CodCidade = ci.CodCidade 
and DescCidade = 'Aparecida de Goiania';

select Nome as Cliente from Cliente where year(DataNasc) between 1990 and 2010;

select Nome as Cliente, Fone as Telefone from Cliente c, Telefone t where 
c.CodCliente = t.CodCliente;

select Nome as Cliente, Email as Email from Cliente c, Email e where
c.CodCliente = e.CodCliente;

select Nome as Cliente, Fone as Telefone, Email as Email from Cliente c, Telefone t, Email e where 
c.CodCliente = e.CodCliente and c.CodCliente = t.CodCliente;
