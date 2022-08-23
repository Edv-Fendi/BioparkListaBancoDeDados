CREATE DATABASE REVENDEDORA_CARROS;

use REVENDEDORA_CARROS;

CREATE TABLE CARROS (
Renavam VARCHAR(30) PRIMARY KEY,
placa varchar (15) UNIQUE NOT NULL,
marca varchar (50) NOT NULL,
modelo VARCHAR (20) NOT NULL,
ano_de_fabricação date not null,
ano_do_modelo date not null, 
cor varchar (50) not null, 
motor varchar (50) not null, 
número_de_portas int not null,
tipo_de_combustível varchar(50) not null,
preço float not null,
id_clientes int unique,

foreign key (id_clientes) references CLIENTES (ID_clientes)
);

CREATE TABLE CLIENTES (
ID_Clientes int primary key,
nome varchar (50) not null,
sobrenome varchar (50) not null,
telefone int not null unique, 
rua varchar (50) not null,
número int not null,
complemento varchar (50) not null,
bairro varchar (50) not null,
cidade varchar (50) not null, 
estado varchar (50) not null,
CEP varchar (15) not null 


);
CREATE TABLE FUNCIONARIOS (
ID_Funcionario int primary key,
nome varchar (50) not null,
sobrenome varchar (50) not null,
telefone int not null,
rua varchar (50) not null,
número int not null,
complemento varchar (50) not null,
bairro varchar (50) not null,
cidade varchar (50) not null, 
estado varchar (50) not null,
CEP varchar (15) not null,
data_admissao date not null,
salario float not null,
id_negocio int not null unique


);

CREATE TABLE NEGOCIO(
id_negocio int primary key,
preco float not null,
data_venda date,
foreign key (id_negocio) references Funcionarios (id_negocio)
);



