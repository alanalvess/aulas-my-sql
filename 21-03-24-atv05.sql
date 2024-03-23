CREATE DATABASE IF NOT EXISTS db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE IF NOT EXISTS tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    cor VARCHAR(50),
    setor VARCHAR(50),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
    ('Ferramentas', 'Produtos relacionados a ferramentas de construção'),
    ('Elétrica', 'Produtos elétricos para construção'),
    ('Hidráulica', 'Produtos relacionados a encanamento e tubulações'),
    ('Acabamento', 'Produtos de acabamento e decoração'),
    ('Materiais de Construção', 'Diversos materiais para construção');

INSERT INTO tb_produtos (nome_produto, preco, cor, setor, id_categoria) VALUES
    ('Martelo', 25.00, 'cinza', 'Ferramentas essenciais', 1),
    ('Fio Elétrico', 50.00, 'azul', 'Fiação', 2),
    ('Torneira', 30.00, 'branco', 'Lavanderia', 3),
    ('Tinta', 80.00, 'rosa', 'Pinturas internas', 4),
    ('Cimento', 40.00, 'cinza', 'Construção Geral', 5),
    ('Chave de Fenda', 150.00, 'verde', 'Ferramentas essenciais', 1),
    ('Lâmpada', 10.00, 'transparente', 'Utilidades para casa', 2),
    ('Revestimento Cerâmico', 120.00, 'branco', 'Pisos', 4);

SELECT nome_produto AS produto, preco FROM tb_produtos WHERE preco > 100.00;

SELECT nome_produto AS produto, preco FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT nome_produto FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT p.nome_produto AS produto, c.nome_categoria AS categoria FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id;

SELECT p.nome_produto AS produto, c.nome_categoria AS categoria FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id
WHERE c.nome_categoria = 'Hidráulica';
