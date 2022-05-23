SET SQL_SAFE_UPDATES = 1;
CREATE DATABASE db_colaboradores;

USE db_colaboradores;

CREATE TABLE tb_cadastro (

id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
cargo VARCHAR (255) NOT NULL,
salario DECIMAL (6,2),
endereco VARCHAR (255),
aniversario DATE,
PRIMARY KEY(id)
);

INSERT INTO tb_cadastro( nome, cargo, salario, endereco, aniversario)
VALUES ("Luis Guilherme Pereira", "Assisten jurídico",4500.00 , "Rua Dona Rosa Santana", "1994-01-26");

INSERT INTO tb_cadastro( nome, cargo, salario, endereco, aniversario)
VALUES ("Naaya Lelis", "Dev Jr",3450.00 , "Rua Professor Ferreira Paulino", "1994-02-01");

INSERT INTO tb_cadastro( nome, cargo, salario, endereco, aniversario)
VALUES ("Maria de Lourdes Freitas", "Gerente",9500.00 , "Rua José Maurício", "1956-01-01");

INSERT INTO tb_cadastro( nome, cargo, salario, endereco, aniversario)
VALUES ("Jailton Luiz Silva", "Representante Comercial",6350.00 , "Rua Luís Gama", "1967-04-16");

INSERT INTO tb_cadastro( nome, cargo, salario, endereco, aniversario)
VALUES ("João Dias Nascimento", "Serviços Gerais",1850.00, "Rua Fradique Coutinho", "1972-05-01");

SELECT *FROM tb_cadastro WHERE salario < 2000.00;
SELECT *FROM tb_cadastro WHERE salario > 2000.00;

SELECT salario, CONCAT('R$ ', FORMAT(salario, 2, 'pt_BR')) AS salário FROM tb_cadastro;
