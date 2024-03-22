CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
   	preco DECIMAL(10, 2) NOT NULL,
    quantidade INT NOT NULL,
	categoria VARCHAR(50),
    cor VARCHAR(50),
    fornecedor VARCHAR(50),
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, preco, quantidade, categoria, cor, fornecedor) 
VALUES ('IPhone Pro Max', 10000.00, 20, 'Smartphone', 'Preto', 'Apple'),
('Galaxy Note 20', 10000.00, 10, 'Smartphone', 'Preto', 'Samsung'),
('Brastemp Frost Free', 5000.00, 30, 'Eletrodomésticos', 'Inox', 'Brastemp'),
('Gruarda Roupas Casal 6 Portas', 480.00, 40, 'Móveis', 'Branco', 'Móveis SA'),
('Sofá Cama 3 Lugares', 490.00, 40, 'Móveis', 'Marfim', 'Móveis SA'),
('Samsung 65 polegadas', 3000, 10, 'Eletrônicos', 'Preto', 'Samsung'),
('Xbox Series S', 4500, 20, 'Videogames', 'Preto', 'Microsoft'),
('Playstation 5', 4000, 20, 'Videogames', 'Preto', 'Sony'),
('Dell All In One', 3900, 5, 'Computador', 'Branco', 'Dell');

SELECT nome, preco FROM tb_produtos WHERE preco > 500;

SELECT nome, preco FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET nome = 'LG 65 Polegadas', fornecedor = 'LG' WHERE id = 6;