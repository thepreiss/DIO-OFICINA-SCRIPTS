insert into fabricante (nome) values
('VW - VolksWagen'),
('Nissan'),
('BMW'),
('MINI'),
('Ford'),
('Audi'),
('Mercedes-Benz'),
('LAMBORGHINI'),
('Fiat'),
('Chevrolet');

insert into modelo (Titulo, idFabricante) values 
('Gol 1.0',1),
('Gol 1.6',1),
('Gol 1.8',1),
('Gol 2.0',1),
('UP! MPI',1),
('UP! TSI',1),
('Jetta 2.0',1),
('350z',2),
('370z',2),
('GT R',2),
('330i',3),
('M3',3),
('Ranger',5),
('Bronco',5),
('GT',5),
('Mustang',5),
('Raptor',5),
('A3 1.4',6),
('A3 1.8',7),
('A3 2.0',7),
('Sprinter 2.2',8),
('Urus',9),
('Uno',6),
('Argo',6),
('Onix',10),
('Monza',10),
('Camaro',10),
('Vectra A',10),
('Jetta 1.4',1);

insert into cliente (CPF,nome,logradouro,numeroLogradouro,cidade,UF,telefone,email,datanasc) values 
('484.152.333-29','Alessandra Maria Nina da Mota','Avenida Acoriana',805,'Sapucaia do Sul','RS','(51) 99632-1772','alessandra-damota77@vpsa.com.br','1999-09-22'),
('765.454.844-35','César Otávio Brito','Avenida São Mateus',755,'Salvador','BA','(71) 99498-8113',null,'1957-02-26'),
('432.554.511-59','Regina Rita Allana Almada','Rua Nossa Senhora da Fátima',10,'Caxias','MA','(99) 98186-6704','regina@gmail.com','2002-03-18'),
('055.771.442-72','Juan Elias Assis','Rua Córdoba',267,'Jabotão dos Guararapes','PE','(81) 99701-3829','juan-assis98@krika.com.br','1984-08-22'),
('788.669.996-36','Raimunda Tereza Gonçalves','Rua São Francisco de Assis',753,'Aracaju','SE','(79) 99256-8039','raimundaterezagoncalves@superigi.com.br','1975-02-01');

insert into veiculo(placa,cor,kmAtual,Cliente_CPF,idModelo,AnoModelo) values
('KOX-4718','Azul',20000,'055.771.442-72',1,2018),
('HZU-0691','Branco',2412,'765.454.844-35',8,2020),
('NEJ-0667','Laranja',912387,'432.554.511-59',1,1990),
('HRO-0491','Vermelho',10000,'484.152.333-29',13,2017),
('NER-3594','Dourado',10,'788.669.996-36',21,2006);

insert into TipoServico(Titulo) values 
('Projeto'),
('Preventiva'),
('Revisão'),
('Corretiva');

insert into ordemServico (dataEmissao,status,dataAprovacao,dataEntrega,valor,Veiculo_Placa,idTipoServico) values
('2022-09-25','Aprovada','2022-09-24',null,800.45,'NER-3594',3),
('2022-05-05','Reprovada',null,null,10.45,'HRO-0491',4),
('2022-03-01','Reprovada',null,null,60000.10,'NER-3594',1),
('2022-09-10','Em andamento','2022-09-01',null,2450.05,'HZU-0691',3),
('2021-01-01','Finalizada','2020-12-12','2021-01-02',8000.99,'KOX-4718',1);

insert into MaoDeObra (titulo,descricao,Valor) values
('Troca de peça simples','Troca em até 1 h',200),
('Troca de peça razoável','Troca em até 3 h',600),
('Troca de peça complicada','Troca em até 1 h',1200),
('Revisão','Veificar itens',50);

insert into MaoDeObraOS (NumeroOs,idMaoDeObra) values
(3,1),
(1,3),
(4,2),
(2,4),
(1,1),
(5,4);

insert into Mecanico (Nome,Endereco,Especialidade) values 
('Felipe','Juiz de Fora','Marretador'),
('Wash','Levy','Eletricista'),
('Alex','Rodeiro','Retifica'),
('Marcos','Muriae','Trocador de peça');

insert into Equipe (idMecanico,NumeroOS) values
(3,3),
(4,2),
(1,5),
(1,4),
(1,3),
(1,2),
(1,1);

insert into Peca (Titulo,Descricao,Valor,PartNumber) values
('FIltro 1N','Linha leve VW',10.00,'F2398F'),
('Parafuso','Linha leve todos',1.00,'P213S'),
('Óleo 5W40 Castrol 1 L','NORMA 808.88',50.10,'C2143149');

insert into PecaOS (idPeca,NumeroOS, Quantidade) values
(3,2,320),
(3,1,5);