CREATE DATABASE ESCOLA;
USE ESCOLA;

CREATE TABLE instrutores (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  valor_hora INTEGER UNSIGNED NULL,
  certificados VARCHAR(255) NULL,
  PRIMARY KEY(id)
);
CREATE TABLE cursos (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  requisito VARCHAR(255) NULL,
  carga_horaria SMALLINT UNSIGNED NULL,
  preco DOUBLE UNSIGNED NULL,
  PRIMARY KEY(id)
);
 
CREATE TABLE alunos (
  id INT NOT NULL AUTO_INCREMENT,
  cpf CHAR(11) NOT NULL,
  nome VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  fone CHAR(14) NOT NULL,
  data_nascimento DATE NULL,
  PRIMARY KEY(id)
);
 
CREATE TABLE turmas (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  instrutores_id INT NOT NULL,
  cursos_id INTEGER UNSIGNED NOT NULL,
  data_inicio DATE NULL,
  data_final DATE NULL,
  carga_horaria SMALLINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX turmas_FKIndex1(cursos_id),
  INDEX turmas_FKIndex2(instrutores_id),
  CONSTRAINT CURSO_TURMA_FK FOREIGN KEY(cursos_id)
    REFERENCES cursos(id),
  CONSTRAINT INSTRUTOR_TURMA_FK FOREIGN KEY(instrutores_id)
    REFERENCES instrutores(id)
);
 
CREATE TABLE matriculas (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  turmas_id INTEGER UNSIGNED NOT NULL,
  alunos_id INT NOT NULL,
  data_matricula DATE NULL,
  PRIMARY KEY(id),
   CONSTRAINT ALUNO_MATRICULA_FK FOREIGN KEY(alunos_id)
    REFERENCES alunos(id),
  CONSTRAINT TURMA_MATRICULA_FK FOREIGN KEY(turmas_id)
    REFERENCES turmas(id)
);

select * from Instrutores;
INSERT INTO Instrutores (nome, email, valor_hora)
VALUES ("Fellipe", "felipe@email.com", 1500), ("Eduardo", "eduardo@email.com", "2000"), ("Will", "will@email.com", "2050"), ("Cristiano", "cristiano@email.com", "2600"), ("Heloisa", "heloisa@email.com", "2800");

select * from Cursos;
INSERT INTO Cursos (nome, preco)
VALUES ("Matemagica", 1500), ("Portugol", 2000), ("Fisicos", 2050), ("Quimica", 2600), ("Banco", 2800);

select * from Alunos;
INSERT INTO Alunos (cpf, nome, email, fone)
VALUES ("03252665", "Cleber", "cleber@email.com", "4485845956"), ("5214887", "Josue", "josue@email.com", 458485896), ("8875815", "Bob", "bob@email.com", 482451), ("45752454285", "Mia", "mia@email.com", 478541525), ("466222554", "Lifa", "lifa@email.com", 988746321);

select * from Turmas;
INSERT INTO Turmas (instrutores_id, cursos_id)
VALUES (1, 3), (2, 4), (3, 5), (4, 2), (5, 1);

select * from Matriculas;
INSERT INTO Matriculas (turmas_id, alunos_id)
VALUES (1, 3), (2, 4), (3, 5), (4, 2), (5, 1);

select * from Instrutores;
UPDATE Instrutores
SET nome = 'Felipera' 
WHERE id = "1";

select * from Instrutores;
UPDATE Instrutores
SET email = 'Felipera@gmail.com' 
WHERE email = "felipe@email.com";

select * from Cursos;
UPDATE Cursos
SET nome = 'Matematica' 
WHERE nome = "Matemagica";

select * from Cursos;
UPDATE Cursos
SET nome = 'Portugues' 
WHERE nome = "Portugol";

select * from Turmas;
UPDATE TUrmas
SET cursos_id = 4 
WHERE instrutores_id = 1;

select * from Turmas;
UPDATE TUrmas
SET cursos_id = 2 
WHERE instrutores_id = 3;

select * from Matriculas;
DELETE FROM Matriculas WHERE id= 1;
select * from Matriculas;
DELETE FROM Matriculas WHERE id= 2;

select * from Cursos;
DELETE FROM Cursos  WHERE id= 3;

select * from Turmas;
DELETE FROM Turmas  WHERE id= 1;

select * from Instrutores;
DELETE FROM Instrutores  WHERE id= 1;