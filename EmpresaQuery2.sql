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
