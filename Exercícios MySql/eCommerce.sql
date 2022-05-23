CREATE DATABASE db_comerciodigital;
USE  db_comerciodigital;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
produto VARCHAR (255),
marca VARCHAR (255),
localizacao VARCHAR (255),
frete DECIMAL,
preco DECIMAL,
PRIMARY KEY(id)
);
SELECT *FROM tb_produtos;

INSERT INTO tb_produtos(produto, marca, localizacao, frete, preco)
VALUES ("Celular", "Samsung", "Recife-PE", 0.00 , 1299.00);

INSERT INTO tb_produtos(produto, marca, localizacao, frete, preco)
VALUES ("Notebook", "Acer", "São Paulo-SP", 70.00 , 4599.00);

INSERT INTO tb_produtos(produto, marca, localizacao, frete, preco)
VALUES ("Tênis", "Adidas", "Natal- RN", 0.00 , 450.00);

INSERT INTO tb_produtos(produto, marca, localizacao, frete, preco)
VALUES ("Boné", "Nike", "Belo Horizonte- MG", 35.00 , 78.00);

INSERT INTO tb_produtos(produto, marca, localizacao, frete, preco)
VALUES ("Shorts", "Adidas", "Natal- RN", 0.00 , 150.00);

INSERT INTO tb_produtos(produto, marca, localizacao, frete, preco)
VALUES ("Camiseta", "NBA", "Porto Alegre- RS", 0.00 , 275.00);

INSERT INTO tb_produtos(produto, marca, localizacao, frete, preco)
VALUES ("Calça", "Adidas", "São Paulo -SP", 0.00 , 350.00);

INSERT INTO tb_produtos(produto, marca, localizacao, frete, preco)
VALUES ("Bolsa", "Zumbiido", "Guarulhos- SP", 0.00 , 175.00);

SELECT *FROM tb_produtos;

SELECT *FROM tb_produtos WHERE preco < 500;
SELECT *FROM tb_produtos WHERE preco > 500;

UPDATE tb_produtos SET preco = 235.00 WHERE id= 6;

SELECT *FROM tb_produtos;

ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);

SELECT *FROM tb_produtos;

SELECT produto, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preço FROM tb_produtos;



