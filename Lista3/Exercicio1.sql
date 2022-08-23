CREATE DATABASE CLINICA;

CREATE TABLE Medicos(
ID_Medicos INT PRIMARY KEY,
CRM VARCHAR (15) UNIQUE NOT NULL ,
Nome VARCHAR (40) NOT NULL,
Idade INT CHECK (Idade > 23),
Especialidade CHAR (20) DEFAULT 'Ortopedia',
CPF VARCHAR (15) UNIQUE NOT NULL,
Data_de_admissão DATE
);

CREATE TABLE Funcionarios(
id_funcionarios INT PRIMARY KEY,
matricula VARCHAR (15)  UNIQUE NOT NULL ,
nome VARCHAR (40) NOT NULL,
Data_Nascimento DATE NOT NULL,
Data_Admissao DATE NOT NULL,
Cargo  VARCHAR (40) NOT NULL DEFAULT 'Assistente Médico',
Salario FLOAT NOT NULL DEFAULT "510.00"

);

CREATE TABLE Pacientes(
id_Pacientes iNT PRIMARY KEY,
RG VARCHAR (15)   UNIQUE NOT NULL,
Nome VARCHAR (40) NOT NULL,
Data_Nascimento DATE,
Cidade CHAR (30) DEFAULT 'Itabuna',
Doenca VARCHAR (40) NOT NULL,
Plano_Saude VARCHAR (40) NOT NULL DEFAULT 'SUS'
);


 CREATE TABLE Sala(
 id_sala INT PRIMARY KEY,
 Numero_sala INT UNIQUE NOT NULL CHECK (Numero_sala > 1 AND Numero_sala < 50),
 Andar INT NOT NULL UNIQUE CHECK (Andar < 12),
 id_medico int not null,
 foreign key (id_medico) references Medicos (ID_Medicos)
 
);







CREATE TABLE Consultas(
id_medico INT PRIMARY KEY,
Codigo_Consulta INT UNIQUE NOT NULL,
Data_Horario DATETIME,
foreign key (id_medico) references Medicos (ID_Medicos),
foreign key (Codigo_Consulta) references Pacientes (id_Pacientes)
);

DESC CONSULTASconsultas


