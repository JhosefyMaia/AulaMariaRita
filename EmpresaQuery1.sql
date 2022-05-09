create database Empresa0205
default character set utf8
default collate utf8_general_ci;

use Empresa0205;

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