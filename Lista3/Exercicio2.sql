CREATE DATABASE ELEICAO;

CREATE TABLE Cargo(

Codigo_Cargo INT PRIMARY KEY, 
Nome_Cargo VARCHAR (30) UNIQUE NOT NULL CHECK (Nome_Cargo != "Prefeito" AND Nome_Cargo != "Vereador"), 
Salario float not null default 17000.00,
Numero_Vagas int unique not null

);


CREATE TABLE Candidatos(
Id_Candidatos int primary key,
Numero_Candidato  int unique not null,
Nome  varchar (40) unique not null,
Codigo_Cargo int not null,
Codigo_Partido int not null,
id_partido int not null,
id_cargo int not null,
foreign key (id_partido) references Partidos (Id_partido),
foreign key (id_cargo) references Cargo (Codigo_Cargo)

);


CREATE TABLE Partidos (
Id_partido int primary key,
Codigo_Partido int UNIQUE NOT NULL,
Sigla char (5) UNIQUE NOT NULL,
Nome varchar (40) unique NOT NULL,
Numero int not null UNIQUE
);

CREATE TABLE Eleitor (
id_eleitor int primary key,
Titulo_Eleitor varchar (30) unique not null,
Zona_Eleitoral char (5) not null,
Sessao_Eleitoral char (5) not null,
Nome varchar (40) not null


);

CREATE TABLE Voto (
id_voto int primary key,
Titulo_Eleitor varchar (30) unique not null,
Numero_Candidato int not null,
id_candidatos int not null,
foreign key (id_candidatos) references Candidatos (Id_Candidatos)

);