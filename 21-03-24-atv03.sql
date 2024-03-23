CREATE DATABASE IF NOT EXISTS db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE IF NOT EXISTS tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    marca VARCHAR(255),
	tipo VARCHAR(50),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
    ('Medicamentos', 'Produtos para tratamento de saúde'),
    ('Cosméticos', 'Produtos de beleza e cuidados pessoais'),
    ('Higiene', 'Produtos de higiene pessoal'),
    ('Suplementos', 'Suplementos alimentares'),
    ('Bebidas', 'Bebidas e energéticos');

INSERT INTO tb_produtos (nome_produto, preco, marca, tipo, id_categoria) VALUES
    ('Chocolate branco', 10.00, 'Lacta', 'Chocolate', 1),
    ('Shampoo', 15.00, 'Dove', 'Cosméticos', 2),
    ('Toalha de Rosto', 5.00, 'Teka', 'Tecido', 3),
    ('Vitamina C', 30.00, 'sem marca', 'Vitaminas', 4),
    ('Água Mineral', 2.50, 'sem marca', 'Águas', 5),
    ('Protetor Solar', 55.00, 'Nivea', 'Cósméticos', 2),
    ('Multivitamínico', 60.00, 'sem marca', 'Vitaminas', 4),
    ('Creme Hidratante', 70.00, 'Dove', 'Cosméticos', 2);

SELECT nome_produto AS produto, preco FROM tb_produtos WHERE preco > 50.00;

SELECT nome_produto AS produto, preco FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT nome_produto AS produto_com_c FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT p.nome_produto AS produto, c.nome_categoria AS categoria FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id;

SELECT p.nome_produto AS produto, c.nome_categoria AS categoria FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id
WHERE c.nome_categoria = 'Cosméticos';

