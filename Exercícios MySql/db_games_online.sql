CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255),
cor VARCHAR (255),
PRIMARY KEY (id)
);
SELECT * FROM tb_classes;

INSERT INTO tb_classes (tipo, cor)
VALUES ("Arqueiros","Verde");

INSERT INTO tb_classes (tipo, cor)
VALUES ("Elfos","Azul");

INSERT INTO tb_classes (tipo, cor)
VALUES ("Fada","Lilás");

INSERT INTO tb_classes (tipo, cor)
VALUES ("Bruxa","Dourada");

INSERT INTO tb_classes (tipo, cor)
VALUES ("Gnomo","Vermelho");


CREATE TABLE tb_personagens (
id BIGINT AUTO_INCREMENT,
ataque DECIMAL,
defesa DECIMAL,
nome VARCHAR(255),
jogo VARCHAR (255),
classes_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

SELECT *FROM tb_personagens;

INSERT INTO tb_personagens (ataque,defesa, nome, jogo, classes_id)
VALUES (2500.00, 1600.00, "Zara", "Dunia", 4);

INSERT INTO tb_personagens (ataque,defesa, nome, jogo, classes_id)
VALUES (500.00, 5000.00, "Dobby", "Harry Potter", 2);

INSERT INTO tb_personagens (ataque,defesa, nome, jogo, classes_id)
VALUES (3500.00, 600.00, "Zawadi", "Dunia", 4);

INSERT INTO tb_personagens (ataque,defesa, nome, jogo,classes_id)
VALUES (890.00, 1600.00, "Windy", "Magic Forrest", 5);

INSERT INTO tb_personagens (ataque,defesa, nome, jogo, classes_id)
VALUES (800,5500.00, "Zak", "Dunia", 1);

INSERT INTO tb_personagens (ataque,defesa, nome, jogo, classes_id)
VALUES (10300.00, 1600.00, "Malaika", "Dunia", 3);

INSERT INTO tb_personagens (ataque,defesa, nome, jogo, classes_id)
VALUES (780.00, 5000.00, "Hermione", "Harry Potter", 3);

INSERT INTO tb_personagens (ataque,defesa, nome, jogo, classes_id)
VALUES (2750.00, 3200.00, "Dong", "Magic Forrest", 1);

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classes_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classes_id WHERE classes_id =1;





