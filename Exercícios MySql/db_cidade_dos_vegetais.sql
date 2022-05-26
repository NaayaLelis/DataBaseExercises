CREATE DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
tipo VARCHAR (255),
descricao VARCHAR (255),
PRIMARY KEY (id)
);
SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (tipo,descricao) VALUES ("Fruta","orgânica") ; 
INSERT INTO tb_categorias (tipo,descricao) VALUES ("Legume","comuns");
INSERT INTO tb_categorias (tipo,descricao)VALUES ("Tempero","secos");
INSERT INTO tb_categorias (tipo,descricao) VALUES ("Erva","Fresca");
INSERT INTO tb_categorias (tipo,descricao) VALUES ("Ovo","Comum");



CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255),
preco DECIMAL (6,2),
qtidade VARCHAR(255),
setor VARCHAR (255),
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

SELECT *FROM tb_produtos;

INSERT INTO tb_produtos (nome,preco, qtidade, setor,categorias_id)
VALUES ("Sapoti", 17.60 , 200 , "Bancada",1);


INSERT INTO tb_produtos (nome,preco, qtidade, setor,categorias_id)
VALUES ("Abobrinha", 14.30 , 500 , "Bancada",2);


INSERT INTO tb_produtos (nome,preco, qtidade, setor,categorias_id)
VALUES ("Lemon Pepper", 5.90 , 250 , "Corredor",3);

INSERT INTO tb_produtos (nome,preco, qtidade, setor,categorias_id)
VALUES ("Coentro", 4.30 , 80 , "Refrigeração",4);

INSERT INTO tb_produtos (nome,preco, qtidade, setor,categorias_id)
VALUES ("Ovo", 13.50, 400 , "Corredor",5);


INSERT INTO tb_produtos (nome,preco, qtidade, setor,categorias_id)
VALUES ("Abacaxi", 6.80 , 100 , "Bancada",1);

INSERT INTO tb_produtos (nome,preco, qtidade, setor,categorias_id)
VALUES ("Berinjela", 6.70 , 80 , "Bancada",2);

INSERT INTO tb_produtos (nome,preco, qtidade, setor,categorias_id)
VALUES ("Chimichurri", 5.70 , 80 , "Bancada",3);

SELECT *FROM tb_produtos WHERE preco>50.00;
SELECT *FROM tb_produtos WHERE preco BETWEEN 50 AND 150;
SELECT *FROM tb_produtos WHERE nome LIKE "%c%";

SELECT *FROM tb_produtos INNER JOIN tb_categorias 
ON tb_categorias.id = tb_produtos.categorias_id;

SELECT *FROM tb_produtos INNER JOIN tb_categorias 
ON tb_categorias.id = tb_produtos.categorias_id WHERE categorias_id =3;
