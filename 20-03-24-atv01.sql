CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
   	sobrenome VARCHAR(255) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
	idade INT,
    data_admissao DATE,
    telefone VARCHAR(11),
	email VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, sobrenome, salario, idade, data_admissao, telefone, email) 
VALUES ('Felisberto', 'Silva', 1500, 25, '2023-12-15', '11900000000', 'felisbertosilva@outlook.com'),
('Adalberto', 'Santos', 2500, 30, '2015-10-10', '11900000000', 'adalbertosantos@outlook.com'),
('Beneditina', 'Rodrigues', 1250, 20, '2024-01-09', '11900000000', 'beneditinarodrigues@gmail.com'),
('Rosimar', 'Angelino', 5000, 34, '2012-12-12', '11900000000', 'rosimarangelino@yahoo.com'),
('Natalino', 'Filho', 1500, 25, '2023-12-15', '11900000000', 'natalinofilho@bol.com'),
('America', 'Norte', 1500, 25, '2023-12-15', '11900000000', 'americanorte@terra.com');

SELECT nome, salario FROM tb_colaboradores WHERE salario > 2000;

SELECT nome, salario FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 3000 WHERE id = 1;