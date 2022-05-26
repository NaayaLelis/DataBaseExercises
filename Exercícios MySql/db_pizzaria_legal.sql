CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
borda VARCHAR (255),
sabor VARCHAR (255),
PRIMARY KEY (id)
);
SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (borda,sabor) VALUES ("Recheada","Catupiry") ; 
INSERT INTO tb_categorias (borda,sabor) VALUES ("Recheada","Chocolate");
INSERT INTO tb_categorias (borda,sabor) VALUES ("Recheada","Cheddar");
INSERT INTO tb_categorias (borda,sabor) VALUES ("Recheada","Beijinho");
INSERT INTO tb_categorias (borda,sabor) VALUES ("Comum","Comum");



CREATE TABLE tb_pizzas (
id BIGINT AUTO_INCREMENT,
preco DECIMAL (6,2),
sabor VARCHAR(255),
observacao VARCHAR (255),
massa VARCHAR (255),
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

SELECT *FROM tb_pizzas;

INSERT INTO tb_pizzas (preco,sabor, observacao, massa,categorias_id)
VALUES (35.99, "Calabresa c/ muçarela" , "s/ azeitona" , "Integral",2);

INSERT INTO tb_pizzas (preco,sabor, observacao, massa,categorias_id)
VALUES (45.95,"Cogumelos","sem bacon", "Frita",1);

INSERT INTO tb_pizzas (preco,sabor, observacao, massa, categorias_id)
VALUES (40.99,"Vegetariana","com alho frito", "Grossa",3);

INSERT INTO tb_pizzas (preco,sabor, observacao, massa, categorias_id)
VALUES (42.99,"Beijinho", "NULL","Frita",5);

INSERT INTO tb_pizzas (preco,sabor, observacao, massa, categorias_id)
VALUES (70.99,"Camarão", "NULL","Frita",1);

INSERT INTO tb_pizzas (preco,sabor, observacao, massa, categorias_id)
VALUES (30.99,"Marguerita", "Com cebola","Grossa",5);

INSERT INTO tb_pizzas (preco,sabor, observacao, massa, categorias_id)
VALUES (25.99,"Muçarela", "S/ cebola","Comum",2);

INSERT INTO tb_pizzas (preco,sabor, observacao, massa, categorias_id)
VALUES (60.99,"Nutella", "Com morango","Frita",4);



SELECT *FROM tb_pizzas WHERE preco>45.00;
SELECT *FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
SELECT *FROM tb_pizzas WHERE sabor LIKE "%M%";

SELECT *FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_categorias.id = tb_pizzas.categorias_id;

SELECT *FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_categorias.id = tb_pizzas.categorias_id WHERE categorias_id =1;


