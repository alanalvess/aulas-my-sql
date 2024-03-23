CREATE DATABASE IF NOT EXISTS db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE IF NOT EXISTS tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    validade DATE,
    peso_kg DECIMAL(5, 2),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
    ('Aves', 'Produtos relacionados a aves e frangos'),
    ('Carnes Vermelhas', 'Produtos de carne bovina e suína'),
    ('Peixes', 'Produtos de peixes e frutos do mar'),
    ('Frutos do Mar', 'Produtos frescos de frutos do Mar'),
    ('Exóticos', 'Produtos de Animais Exóticos');

INSERT INTO tb_produtos (nome_produto, preco, validade, peso_kg, id_categoria) VALUES
    ('Peito de Frango', 20.00, '2024-04-25', 2.50, 1),
    ('Picanha', 80.00, '2024-04-25', 3.50, 2),
    ('Salmão', 60.00, '2024-04-25', 4.80, 3),
    ('Carangueijo', 45.00, '2024-04-25', 0.90, 4),
    ('Jacaré', 200.00, '2024-04-25', 0.50, 5),
    ('Coxa de Frango', 10.00, '2024-04-25', 5.00, 1),
    ('Tilápia', 40.00, '2024-04-25', 2.00, 3),
    ('Camarão', 30.00, '2024-04-25', 0.50, 4);

SELECT nome_produto AS produto, preco, peso_kg FROM tb_produtos WHERE preco > 50.00;

SELECT nome_produto AS produto, preco, peso_kg FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT nome_produto AS produto_com_c FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT p.nome_produto AS produto, c.nome_categoria AS categoria FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id;

SELECT p.nome_produto AS produto, c.nome_categoria AS categoria FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id
WHERE c.nome_categoria IN ('Aves');
