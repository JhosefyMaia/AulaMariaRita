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