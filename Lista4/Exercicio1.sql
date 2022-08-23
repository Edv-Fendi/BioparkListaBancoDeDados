CREATE DATABASE Controles_de_Livros;
 
 use Controles_de_Livros;
 
 Create Table Editoras (
	id_editora int primary key auto_increment ,
    nome varchar (50) not null,
    CNPJ int not null unique
    );
    
Create Table Autores (
	id_autor int primary Key auto_increment,
    nome varchar(50) not null,
    cpf int (15) not null unique
    
 );
 
 Create Table Categorias (
 id_categorias int primary key auto_increment,
 nome_categoria varchar (50) not null
 
 );
 
 Create Table Livros (
	id_livro int primary key auto_increment,
    nome varchar(50) not null,
    descricao varchar (255),
    id_editora int not null ,
    
   foreign key (id_editora) references Editoras (id_editora)
    
    
 );
 
 create table LivroAutor (
    id_autor int not null unique ,
    id_livro int not null unique ,
    primary key(id_livro, id_autor),
	foreign key (id_livro) references Livros (id_livro),
    foreign key (id_autor) references Autores (id_autor)
 );
 

create Table Livro_categoria (
	
	id_categorias int not null unique,
    id_livro int not null unique,
    primary key(id_livro, id_categorias),
    
    
    foreign key (id_livro) references Livros (id_livro),
    foreign key (id_categorias) references Categorias (id_categorias)
 
 );
 
INSERT INTO Editoras (Nome, CNPJ)
VALUES ("Nosso Livro", "45989852" );

INSERT INTO Editoras (Nome, CNPJ)
VALUES ("Livrao da Massa", "7777777" );

select * from Editoras;


INSERT INTO Autores (nome, cpf)
VALUES ("MC POZE", "87855451" );

INSERT INTO Autores (Nome, cpf)
VALUES ("Hariel", "666666" );

select * from Autores;


INSERT INTO Categorias (nome_categoria)
VALUES ("Romance");

INSERT INTO Categorias (nome_categoria)
VALUES ("Acao");

select * from Categorias;


INSERT INTO Livros (id_editora, nome, descricao)
VALUES ("1", "Harry Porra", "Harry potter quando fuma a pedra filosofal");

INSERT INTO Livros (id_editora, nome, descricao)
VALUES ("1", "Percy pirata", "Vou te roubei no mar");

select * from Livros;

select * from Editoras;
UPDATE Editoras 
 SET nome = 'Livradores' 
 WHERE id_editora = "1";
 
 
 select * from Categorias;
 UPDATE Categorias 
 SET nome_categoria = 'Ficcao' 
 WHERE id_categorias = "1";
 
 
 select * from Autores;
 UPDATE Autores 
 SET cpf = '875156' 
 WHERE id_autor = "1";
 
 select * from Livros;
 UPDATE Livros 
 SET descricao = "Harry nas pedras da vida"
 WHERE nome = "Harry Porra";
 
 select * from Editoras;
 DELETE FROM Editoras
 WHERE id_editora="2";
 
 
 select * from Livros;
 DELETE FROM Livros
 WHERE id_livro="2";
 
 
 select * from Autores;
 DELETE FROM Autores
 WHERE id_autor="2";
 
 select * from Categorias;
 DELETE FROM Categorias
 WHERE id_categorias="1";
 
 
 
 
 


 
 
 