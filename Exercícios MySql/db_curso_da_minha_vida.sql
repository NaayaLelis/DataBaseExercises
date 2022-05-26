CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
tema VARCHAR (255),
sistema VARCHAR (255),
PRIMARY KEY (id)
);
SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (tema,sistema) VALUES ("Java","Online") ; 
INSERT INTO tb_categorias (tema,sistema) VALUES ("Github","Presencial") ; 
INSERT INTO tb_categorias (tema,sistema) VALUES ("React","Semipresencial") ; 
INSERT INTO tb_categorias (tema,sistema)  VALUES ("MysQl","Presencial") ; 
INSERT INTO tb_categorias (tema,sistema)  VALUES ("Phyton","Online") ;

CREATE TABLE tb_cursos (
id BIGINT AUTO_INCREMENT,
periodo VARCHAR (255),
preco DECIMAL (8,2),
duracao VARCHAR (255),
diploma VARCHAR (255),
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

SELECT *FROM tb_cursos;

INSERT INTO tb_cursos (periodo,preco, duracao,diploma,categorias_id)
VALUES ("Matutino", 550.00 ,"Um mês","curso livre", 1);

INSERT INTO tb_cursos (periodo,preco, duracao,diploma,categorias_id)
VALUES ("Vespertino", 6500.00 ,"Cinco meses","curso técnico", 2);

INSERT INTO tb_cursos (periodo,preco, duracao,diploma,categorias_id)
VALUES ("Noturno", 850.00 ,"Três meses","curso livre", 4);

INSERT INTO tb_cursos (periodo,preco, duracao,diploma,categorias_id)
VALUES ("Integral", 45000.00 ,"Um ano","Pós- graduação", 5);

INSERT INTO tb_cursos (periodo,preco, duracao,diploma,categorias_id)
VALUES ("Matutino", 0.0 ,"Uma semana","curso livre", 1);

INSERT INTO tb_cursos (periodo,preco, duracao,diploma,categorias_id)
VALUES ("Vespertino", 350.00 ,"Duas semanas","curso livre", 2);

INSERT INTO tb_cursos (periodo,preco, duracao,diploma,categorias_id)
VALUES ("Matutino", 17000.00 ,"4 anos","Bacharelado", 3);

INSERT INTO tb_cursos (periodo,preco, duracao,diploma,categorias_id)
VALUES ("Noturno", 750.00 ,"Dois meses","curso livre", 1);


SELECT *FROM tb_cursos WHERE preco>500;
SELECT *FROM tb_cursos WHERE preco BETWEEN 600 AND 1000;
SELECT *FROM tb_categorias WHERE tema LIKE "%j%";

SELECT *FROM tb_cursos INNER JOIN tb_categorias 
ON tb_categorias.id = tb_cursos.categorias_id;

SELECT *FROM tb_cursos INNER JOIN tb_categorias 
ON tb_categorias.id = tb_cursos.categorias_id WHERE categorias_id =1;
