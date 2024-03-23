CREATE DATABASE IF NOT EXISTS db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE IF NOT EXISTS tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS tb_cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    turno VARCHAR(15) NOT NULL,
    unidade_ensino VARCHAR(255) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
    ('Programação', 'Cursos relacionados a programação e desenvolvimento'),
    ('Design', 'Cursos de design gráfico e web'),
    ('Negócios', 'Cursos de empreendedorismo e gestão'),
    ('Idiomas', 'Cursos de línguas estrangeiras'),
    ('Saúde', 'Cursos relacionados à saúde e bem-estar');

INSERT INTO tb_cursos (nome_curso, preco, turno, unidade_ensino, id_categoria) VALUES
    ('Python for Beginners', 250.00, 'Manhã', 'Paulista', 1),
    ('Web Design Fundamentals', 180.00, 'Tarde', 'Consolação', 2),
    ('Entrepreneurship 101', 300.00, 'Manhã', 'Itaim', 3),
    ('Spanish Language Course', 550.00, 'Tarde', 'Paulista', 4),
    ('Yoga and Meditation', 80.00, 'Manhã', 'Paulista', 5),
    ('Java Programming', 980.00, 'Tarde', 'Consolação', 1),
    ('Graphic Design Masterclass', 520.00, 'Manhã', 'Paulista', 2),
    ('Business Analytics', 750.00, 'Tarde', 'Itaim', 3);

SELECT nome_curso AS curso, preco FROM tb_cursos WHERE preco > 500.00;

SELECT nome_curso AS curso, preco FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT nome_curso FROM tb_cursos WHERE nome_curso LIKE '%J%';

SELECT c.nome_categoria As categoria, p.nome_curso AS curso FROM tb_cursos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id;

SELECT c.nome_categoria As categoria, p.nome_curso AS curso FROM tb_cursos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id
WHERE c.nome_categoria = 'Programação';
