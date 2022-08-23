--  Exercicio 1 -- 
CREATE DATABASE Lista002;

-- Exercicio 2 -- 
CREATE TABLE Alunos(
 ID_Alunos INT PRIMARY KEY AUTO_INCREMENT,
 Nome VARCHAR (50),
 Telefone VARCHAR (50),
 Cidade VARCHAR (50)
 );
 
 -- Exercicio 3 --
 describe Alunos;
 
 -- Exercicio 4 --
 
 CREATE TABLE Alunos2(
 ID_Alunos2 INT PRIMARY KEY AUTO_INCREMENT,
 Nome VARCHAR (200),
 Telefone VARCHAR (50),
 Cidade VARCHAR (100)
 );
 
 -- Exercicio 5 -- 
CREATE TABLE Funcionarios(
 ID_Alunos2 INT PRIMARY KEY AUTO_INCREMENT,
 Nome VARCHAR (50),
 Telefone VARCHAR (50),
 Cidade VARCHAR (100),
 Endereco VARCHAR (50),
 Estado VARCHAR (25),
 CEP VARCHAR (8), 
 RG VARCHAR (15),
 CPF VARCHAR (11),
 Salario DOUBLE 
 
 );
 
-- Exercicio 6 -- 
CREATE TABLE Fornecedores(
 ID_Fornecedores INT PRIMARY KEY AUTO_INCREMENT,
 Nome VARCHAR (50),
 Telefone VARCHAR (50) NOT NULL,
 Cidade VARCHAR (100),
 Endereco VARCHAR (50),
 Estado VARCHAR (25),
 CEP VARCHAR (8), 
 CNPJ VARCHAR (14) NOT NULL,
 Email VARCHAR (100) NOT NULL,
 Salario DOUBLE 
 
 );
 
 -- Exercicio 7 -- 
 CREATE TABLE Livros(
 ID_Livros INT PRIMARY KEY AUTO_INCREMENT,
 Nome VARCHAR (50),
 Categoria VARCHAR (50),
 Resumo VARCHAR (255),
 PrecoCusto FLOAT,
 PrecoVenda FLOAT
 );
 
 --  Exercicio 8 -- 
DESCRIBE Alunos;
DESCRIBE Alunos2;
DESCRIBE Fornecedores;
DESCRIBE Funcionarios;
DESCRIBE Livros;
 
 -- Exercicio 9 --
 CREATE TABLE Estoque(
 ID_Estoque INT PRIMARY KEY AUTO_INCREMENT,
 Nome_Produto VARCHAR (50),
 Categoria VARCHAR (50),
 Quantidade FLOAT,
 Fornecedor FLOAT
 );
 
 -- Exercicio 10 -- 
 CREATE TABLE Notas(
 ID_Notas INT PRIMARY KEY AUTO_INCREMENT,
 Nome_Aluno VARCHAR (50),
 Bimestre VARCHAR (50)
 );
 
 -- Exercicio 11 -- 
 CREATE TABLE Caixa(
 ID_Caixa INT PRIMARY KEY AUTO_INCREMENT,
 Data_ TIMESTAMP,
 Descricao VARCHAR (200),
 Debito FLOAT,
 Credito FLOAT
 );
 
 
 CREATE TABLE ContasAPagar(
 ID_ContasAPagar INT PRIMARY KEY AUTO_INCREMENT,
 Data_Conta Date,
 Descricao VARCHAR (50),
 Valor FLOAT NOT NULL,
 Data_Pagamento FLOAT
 );
 
 -- Exercicio 12 -- 
 CREATE TABLE ContasAReceber(
 ID_ContasAReceber INT PRIMARY KEY AUTO_INCREMENT,
 Data_Conta DATE,
 Descricao VARCHAR (50),
 Valor FLOAT,
 Data_Recebimento FLOAT
 );
 
 -- Exercicio 13 -- 
 CREATE TABLE Filmes(
 ID_Filmes INT PRIMARY KEY AUTO_INCREMENT,
 Nome VARCHAR (100),
 Sinopse VARCHAR (100),
 Categoria VARCHAR (255),
 Diretor VARCHAR (100)
 );
 
-- Exercicio 14 -- 
 CREATE TABLE CDs(
 ID_Cds INT PRIMARY KEY AUTO_INCREMENT,
 Nome VARCHAR (100) NOT NULL,
 Cantor VARCHAR (100),
 Ano INT,
 QuantidadeMusicas int
 );
 
 -- Exercicio 15 -- 
 DROP TABLE Alunos2;
 
 
 -- Exercicio 16 -- 
 DESCRIBE Alunos2;
 
 -- Exercicio 17 --
 DROP TABLE Livros;
 
  -- Exercicio 18 --
 DROP TABLE ContasAPagar;
 
 -- Exercicio 19 -- 
 DROP TABLE ContasAReceber;
 
  -- Exercicio 20 --
 DROP TABLE Filmes;
 
 -- Exercicio 21 -- 
 DESCRIBE Alunos;
 DESCRIBE fornecedores;
 DESCRIBE estoque;
 DESCRIBE contasapagar;
 DESCRIBE cds;
 DESCRIBE caixa;
 DESCRIBE funcionarios;
 
 -- Exercicio 22 --
 ALTER TABLE alunos RENAME TO Super_alunos;
 
 -- Exercicio 23 -- 
 DESCRIBE Super_alunos;
 
 -- Exercicio 24 --
 ALTER TABLE estoque RENAME TO Produtos;
 
 -- Exercicio 25 --
 ALTER TABLE notas RENAME TO aprovados;
 
 -- Exercicio 26 --
 ALTER TABLE aprovados RENAME TO notas;
 
 -- Exercicio 28 -- 
 DROP TABLE notas;
 
  -- Exercicio 29 --
 ALTER TABLE Super_alunos RENAME TO Alunos;
 
   -- Exercicio 30 --
 ALTER TABLE Alunos RENAME TO Estudantes;
 
    -- Exercicio 31 --
 ALTER TABLE Estudantes RENAME TO Super_Estudantes;
 
 -- Exercicio 32 -- 
 DESCRIBE Super_estudantes;
 
 -- Exercicio 33 -- 
 DROP TABLE super_estudantes;
 
 -- Exercicio 34 -- 
 DESCRIBE super_estudantes;
 DESCRIBE alunos;
 
 -- Exercicio 35 --
-- Tabela  nao existe -- 

-- Exercicio 36 -- 
-- A tabela ja existe

-- Exercicio 37 -- 
ALTER TABLE caixa ADD observacao VARCHAR (200);

-- Exercicio 38 -- 
-- A tabela nao existe -- 

-- Exercicio 39 -- 
DESCRIBE caixa;

-- Exercicio 40 -- 
ALTER TABLE caixa ADD saldo float;
 
 
 



 

 
 
 
 
 
 