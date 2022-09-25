----- Recuperação com SELECT simples
select * from veiculo;

----- Filtros com Where Statement
select Cliente_CPF, AnoModelo from veiculo where kmAtual > 100000;

----- Expressões para gerar atributo derivado
select nome, concat(cidade,'-',UF) as Regiao, TIMESTAMPDIFF(YEAR,DataNasc,CURDATE()) as Idade from cliente;

----- Ordernação com order by
select nome, concat(cidade,'-',UF) as Regiao, TIMESTAMPDIFF(YEAR,DataNasc,CURDATE()) as Idade from cliente order by Idade;

----- Condição para grupo usando HAVING
select * from fabricante join modelo on fabricante.idFabricante = modelo.idFabricante group by fabricante.idFabricante having (fabricante.idFabricante = modelo.idFabricante) > 0;

----- JOIN enre tabelas
select * from fabricante join modelo on fabricante.idFabricante = modelo.idFabricante;