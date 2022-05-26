CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
tipo VARCHAR (255),
formato VARCHAR (255),
PRIMARY KEY (id)
);
SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (tipo,formato) VALUES ("Gripe","Pastilhas") ; 
INSERT INTO tb_categorias (tipo,formato) VALUES ("Cólica","Em gotas");
INSERT INTO tb_categorias (tipo,formato) VALUES ("Dor de cabeça","Comprimido");
INSERT INTO tb_categorias (tipo,formato) VALUES ("Azia","Em pó");
INSERT INTO tb_categorias (tipo,formato) VALUES ("Anti-depressivos","Comprimido");



CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
preco DECIMAL (6,2),
faixaetaria VARCHAR(255),
permissoes VARCHAR (255),
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

SELECT *FROM tb_produtos;

INSERT INTO tb_produtos (nome, preco,faixaetaria,permissoes, categorias_id)
VALUES ("Vitamina C",15.99 ,"A partir dos 6 anos" , "S/ receita", 1);


INSERT INTO tb_produtos (nome, preco,faixaetaria,permissoes, categorias_id)
VALUES ("BuscoFem",20.00 ,"Todas idades" , "S/ receita", 2);


INSERT INTO tb_produtos (nome, preco,faixaetaria,permissoes, categorias_id)
VALUES ("Tylemax",9.50 ,"A partir dos 14 anos" , "S/ receita", 3);


INSERT INTO tb_produtos (nome, preco,faixaetaria,permissoes, categorias_id)
VALUES ("Estomazil",24.99 ,"A partir dos 15 anos" , "S/ receita", 4);

INSERT INTO tb_produtos (nome, preco,faixaetaria,permissoes, categorias_id)
VALUES (" Rivotril",50.99 ,"A partir dos 16 anos" , "Faixa preta", 5);


INSERT INTO tb_produtos (nome, preco,faixaetaria,permissoes, categorias_id)
VALUES ("Benegripe",14.80,"A partir dos 6 anos" , "S/ receita", 1);


INSERT INTO tb_produtos (nome, preco,faixaetaria,permissoes, categorias_id)
VALUES ("Luftafem",30.99 ,"Adultos" , "Faixa preta", 2);


INSERT INTO tb_produtos (nome, preco,faixaetaria,permissoes, categorias_id)
VALUES ("Acidazia",24.99 ,"A partir dos 16 anos" , "S/ receita", 4);


SELECT *FROM tb_produtos WHERE preco>50.00;
SELECT *FROM tb_produtos WHERE preco BETWEEN 5 AND 60;
SELECT *FROM tb_produtos WHERE nome LIKE "%c%";

SELECT *FROM tb_produtos INNER JOIN tb_categorias 
ON tb_categorias.id = tb_produtos.categorias_id;

SELECT *FROM tb_produtos INNER JOIN tb_categorias 
ON tb_categorias.id = tb_produtos.categorias_id WHERE categorias_id =4;

