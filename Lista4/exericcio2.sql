create database Escola;

use Escola;


create table Turma(
	id_turma int primary key auto_increment,
    nome VARCHAR (50) NOT NULL,
    sala int not null
    
);

create table Aluno(
	id_Aluno int primary key auto_increment,
    nome VARCHAR (50) NOT NULL,
    CPF VARCHAR (15) NOT NULL UNIQUE,
    enredereco VARCHAR (255) NOT NULL,
    telefone int not null,
    id_turma int not null,
    
    foreign key (id_turma) references Turma (id_turma)
    
);

create table Professor(
	id_professor int primary key auto_increment,
    nome varchar (50) not null,
    cpf int not null unique,
    telefone varchar(50) not null
    
);

create table Aula (
	id_aula int primary key auto_increment,
    materia varchar (50),
    id_professor int not null,
    
    foreign key (id_professor) references Professor (id_professor)
    
);


create table Aula_Aluno(

	id_aula int not null ,
    id_aluno int not null ,
    primary key(id_aula, id_aluno),
    
    foreign key (id_aula) references Aula (id_aula),
    foreign key (id_aluno) references Aluno (id_Aluno)
);

create table Professor_Turma(

id_professor int  not null,
id_turma int  not null,

primary key(id_professor, id_turma),
foreign key (id_professor) references Aula (id_professor),
foreign key (id_turma) references Turma (id_turma)

);


INSERT INTO Turma (nome, sala)
VALUES ("Quinta Serie", "5" ), ("Primeiro ano", "2"), ("Sexta serie", "3");
select * from Turma;


INSERT INTO Aluno (nome, cpf, enredereco, telefone, id_turma )
VALUES ("Fellipe", "69696987465", "Rua dos noia", "9989854", "1" ), ("Eduardo", "654742254", "Rua da ruas", "54774585", "2");
select * from Aluno;

INSERT INTO Professor (nome, cpf, telefone)
VALUES ("Cristiano", "14125451", "87854151" ), ("Willgne", "545472542", "542842"), ("Willian", "65151", "5422222222842");
select * from Professor;

INSERT INTO Aula (materia, id_professor)
VALUES ("Fisica", "1"), ("Quimica", "1");
select * from Aula;


INSERT INTO Aula_Aluno (id_aula, id_aluno)
VALUES ("1", "1"), ("2", "2"), ("1", "2");
select * from Aula_Aluno;

INSERT INTO Professor_Turma (id_professor, id_turma)
VALUES ("1", "1"), ("1", "2");
select * from Professor_Turma;


select * from Turma;
UPDATE Turma 
SET nome = 'Setima serie' 
WHERE id_turma = "1";

select * from Aluno;
UPDATE Aluno 
SET telefone = '7877777' 
WHERE id_aluno = "1";

select * from Professor;
UPDATE Professor
SET nome = 'Jorges' 
WHERE id_professor = "2";
 
 
select * from Aula;
UPDATE Aula
SET materia = 'Calculo Numerico' 
WHERE id_aula = "1";


select * from Aula_Aluno;
UPDATE Aula_Aluno
SET id_aluno= 2
WHERE id_aula = 2;

select * from Turma;
DELETE FROM Turma  WHERE sala=3;

select * from Aula_aluno;
DELETE FROM Aula_aluno   WHERE id_aula=2;

select * from Aula;
DELETE FROM Aula  WHERE id_professor=1;

select * from Professor;
DELETE FROM Professor  WHERE id_professor=1;

select * from Professor_turma;
DELETE FROM Professor_turma  WHERE id_professor=1;

