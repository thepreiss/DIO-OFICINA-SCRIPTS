drop database if exists oficina;
create database oficina;

use oficina;

create table fabricante (
idFabricante int not null auto_increment primary key,
nome varchar(45) not null
);

create table modelo (
idModelo int not null auto_increment primary key,
Titulo varchar(45),
idFabricante int not null,
constraint fk_modelo_idFabricante foreign key (idFabricante) references fabricante (idFabricante)
);

create table cliente(
CPF varchar(14) not null primary key,
nome varchar(40) not null,
logradouro varchar(45) not null,
numeroLogradouro int,
cidade varchar(40) not null,
UF char(2) not null,
telefone varchar(16) not null,
email varchar(45),
datanasc date not null
);

create table veiculo(
placa char(8) not null primary key,
cor varchar(45) not null,
kmAtual int not null,
Cliente_CPF varchar(14),
idModelo int not null,
AnoModelo int not null,
constraint fk_veiculo_ClienteCPF foreign key (Cliente_CPF) references cliente(CPF), 
constraint fk_veiculo_idModelo foreign key (idModelo) references modelo(idModelo)
);

create table TipoServico(
idTipoServico int not null auto_increment primary key,
Titulo varchar(45)
);

create table ordemServico (
NumeroOS int not null auto_increment primary key,
dataEmissao date not null,
status enum('Aberto','Aprovada','Reprovada','Em andamento','Aguardando','Finalizada') default 'Aberto',
dataAprovacao date,
dataEntrega date,
valor float default 0,
Veiculo_Placa varchar(8) not null,
idTipoServico int not null,
constraint fk_OrdemServico_PlacaVeiculo foreign key (Veiculo_Placa) references veiculo (placa),
constraint fk_OrdemServico_idTipoServico foreign key (idTipoServico) references tipoServico (idTipoServico)
);

create table MaoDeObra (
idMaoDeObra int not null auto_increment primary key,
titulo varchar(45) not null,
descricao varchar(45) not null,
Valor float not null
);

create table MaoDeObraOS (
NumeroOs int not null,
idMaoDeObra int not null,
constraint fk_MaoDeObraOS_NumeroOs foreign key (NumeroOs) references OrdemServico (NumeroOS),
constraint fk_MaoDeObraOS_idMaoDeObra foreign key (idMaoDeObra) references MaoDeObra (idMaoDeObra)
);

create table Mecanico (
idMecanico int not null auto_increment primary key,
Nome varchar(45) not null,
Endereco varchar(45) not null,
Especialidade varchar(45)
);

create table Equipe (
idMecanico int not null,
NumeroOS int not null,
constraint fk_Equipe_idMecanico foreign key (idMecanico) references Mecanico (idMecanico),
constraint fk_Equipe_NumeroOS foreign key (NumeroOS) references OrdemServico (NumeroOS)
);

create table Peca (
idPeca int not null auto_increment primary key,
Titulo varchar(45) not null,
Descricao varchar(45) not null,
Valor float not null,
PartNumber varchar(45)
);

create table PecaOS (
idPeca int not null,
NumeroOS int not null,
Quantidade int default 1,
constraint fk_PecaOS_idPeca foreign key (idPeca) references peca (idPeca),
constraint fk_PecaOS_NumeroOS foreign key (NumeroOS) references OrdemServico (NumeroOS)
);