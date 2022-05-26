CREATE DATABASE db_construindo_vidas;
USE  db_construindo_vidas;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
setor VARCHAR (255),
areas VARCHAR (255),
PRIMARY KEY (id)
);
SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (setor,areas) VALUES ("Hidráulica","Interna") ; 
INSERT INTO tb_categorias (setor,areas) VALUES ("Elétrica","Interna") ; 
INSERT INTO tb_categorias (setor,areas) VALUES ("Construção","Externa") ; 
INSERT INTO tb_categorias (setor,areas) VALUES ("Ferramentas","Externa/Interna") ; 
INSERT INTO tb_categorias (setor,areas) VALUES ("Jardinagem","Externa") ;

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255),
marca VARCHAR (255),
preco DECIMAL (6,2),
qtidade BIGINT (255),
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

SELECT *FROM tb_produtos;

INSERT INTO tb_produtos (nome,marca,preco, qtidade,categorias_id)
VALUES ("Cimento", "Votorantim" , 50.00 , 800,3);

INSERT INTO tb_produtos (nome,marca,preco, qtidade,categorias_id)
VALUES ("Mangueira", "Jd.Feliz" , 120.00 , 500,5);

INSERT INTO tb_produtos (nome,marca,preco, qtidade,categorias_id)
VALUES ("Torneira", "Água Boa" , 80.00 , 1500,1);

INSERT INTO tb_produtos (nome,marca,preco, qtidade,categorias_id)
VALUES ("Lâmpada", "Luz feliz" , 30.00 , 2500,2);

INSERT INTO tb_produtos (nome,marca,preco, qtidade,categorias_id)
VALUES ("Viga", "Construir bem" , 1650.00 , 3000,3);

INSERT INTO tb_produtos (nome,marca,preco, qtidade,categorias_id)
VALUES ("Maquita", "Corte certo" , 350.00 , 350,4);

INSERT INTO tb_produtos (nome,marca,preco, qtidade,categorias_id)
VALUES ("Cortador de grama", "Grama boa" , 2500.00 , 200,5);

INSERT INTO tb_produtos (nome,marca,preco, qtidade,categorias_id)
VALUES ("Cano", "Tigre" , 350.00 , 600,1);

SELECT *FROM tb_produtos WHERE preco>100;
SELECT *FROM tb_produtos WHERE preco BETWEEN 70 AND 150;
SELECT *FROM tb_produtos WHERE nome LIKE "%c%";

SELECT *FROM tb_produtos INNER JOIN tb_categorias 
ON tb_categorias.id = tb_produtos.categorias_id;

SELECT *FROM tb_produtos INNER JOIN tb_categorias 
ON tb_categorias.id = tb_produtos.categorias_id WHERE categorias_id =5;
