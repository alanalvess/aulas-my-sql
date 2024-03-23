CREATE DATABASE IF NOT EXISTS db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE IF NOT EXISTS tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS tb_pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(255) NOT NULL,
    tamanho CHAR,
    numero_fatias INT,
    id_categoria INT,
    preco DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
    ('Salgada', 'Pizzas com ingredientes salgados'),
    ('Doce', 'Pizzas doces'),
    ('Vegetariana', 'Pizzas com ingredientes vegetarianos'),
    ('Calabresa', 'Pizzas com calabresa'),
    ('Frango com Catupiry', 'Pizzas com frango e catupiry');

INSERT INTO tb_pizzas (nome_pizza, tamanho, numero_fatias, id_categoria, preco) VALUES
    ('Margherita', 'G', 8, 1, 40.00),
    ('Pepperoni', 'G', 8, 1, 50.00),
    ('Quatro Queijos', 'P', 4, 1, 45.00),
    ('Chocolate com Morango', 'P', 4, 2, 35.00),
    ('Banana com Canela', 'P', 4, 2, 30.00),
    ('Vegetariana Especial', 'M', 6, 3, 55.00),
    ('Calabresa Tradicional', 'M', 6, 4, 42.00),
    ('Vegetariana Simples', 'P', 4, 3, 55.00),
    ('Frango com Catupiry', 'G', 8, 5, 48.00);

SELECT nome_pizza, preco FROM tb_pizzas WHERE preco > 45.00;

SELECT nome_pizza, preco FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT nome_pizza AS pizza_com_m FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

SELECT p.nome_pizza AS pizza, c.nome_categoria AS categoria FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id;

SELECT p.nome_pizza AS pizza, c.nome_categoria AS categoria FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id
WHERE c.nome_categoria = 'Doce';
