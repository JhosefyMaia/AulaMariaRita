create database Empresa2204
default character set utf8
default collate utf8_general_ci;

use Empresa2204;

create table Estado (
CodEstado int primary key auto_increment,
DescEstado varchar(30) not null,
uf varchar(3)
) default charset = utf8;

create table Cidade (
CodCidade int primary key auto_increment,
DescCidade varchar(30) not null,
CodEstado int,
foreign key (CodEstado) references Estado(CodEstado)
) default charset = utf8;

insert into Estado 
(CodEstado, DescEstado, Uf)
values
(default, 'Goias', 'GO');

insert into Cidade
(CodCidade, DescCidade, CodEstado)
values
(default, 'Aparecida de Goiania', '1'),
(default, 'Goiania', '1'),
(default, 'Anapolis', '1'),
(default, 'Belo Horizonte', '2'),
(default, 'Uberaba', '2');

use empresa2204;
create table Cliente(
CodCliente int primary key,
Nome varchar(75) not null,
DataNasc date,
Setor varchar (45),
Logradouro varchar(100),
CodCidade int,
foreign key (CodCidade) references Cidade(CodCidade));

create table Telefone(
CodCliente int,
Fone varchar (11),
primary key (CodCliente, Fone),
foreign key (CodCliente) references Cliente(CodCliente));

insert into Cliente
(CodCliente, Nome, DataNasc, Setor, Logradouro, CodCidade)
values
('101', 'Joao Dias', '1998/11/15', 'Setor Marista', 'Rua das Acacias', '1'),
('102', 'Maria Barbosa', '2000/07/02', 'Setor Bueno', 'Rua Jandira', '2'),
('103', 'Cassio Pablo', '1995/02/03', 'Buriti Sereno', 'Rua 15', '3'),
('104', 'Paulo Sergio', '1962/07/09', 'Garavelo', 'Rua Almeida', '4'),
('105', 'Bianca Dias', '1993/10/23', 'Cidade Livre', 'Rua Albertina', '5');
 select * from Cidade;
 