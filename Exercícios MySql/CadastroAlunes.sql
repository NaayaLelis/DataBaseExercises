CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_alunos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
serie VARCHAR (255),
turno VARCHAR (255),
nota DECIMAL (6,2),
idade BIGINT,
PRIMARY KEY (id)
);

SELECT* FROM tb_alunos;

INSERT INTO tb_alunos( nome, serie,  turno, nota, idade)
VALUES ("Luis Guilherme Pereira", "Terceiro colegial", "Noturno", 9.50, 17);

INSERT INTO tb_alunos( nome, serie,  turno, nota, idade)
VALUES ("Naaya Lelis", "Terceiro colegial", "Noturno", 7.50, 16);

INSERT INTO tb_alunos( nome, serie,  turno, nota, idade)
VALUES ("Amanda Farias", "Nono ano", "Vespertino", 5.90, 15);

INSERT INTO tb_alunos( nome, serie,  turno, nota, idade)
VALUES (" Guilherme Santos", "Segundo colegial", "Matutino", 6.50, 16);

INSERT INTO tb_alunos( nome, serie,  turno, nota, idade)
VALUES ("Ana Silva", "Quarta série", "Matutino", 8.50, 10);

INSERT INTO tb_alunos( nome, serie,  turno, nota, idade)
VALUES ("Yasmin Freitas", "Primeira série", "Vespertino", 6.30, 7);

INSERT INTO tb_alunos( nome, serie,  turno, nota, idade)
VALUES ("Maria Souza", "Segunda série", "Matutino", 9.30, 8);

INSERT INTO tb_alunos( nome, serie,  turno, nota, idade)
VALUES ("André Santos", "Terceiro colegial", "Noturno", 5.70, 17);

SELECT * FROM tb_alunos WHERE nota < 7.00;
SELECT * FROM tb_alunos WHERE nota > 7.00;

