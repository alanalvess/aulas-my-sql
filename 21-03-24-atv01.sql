CREATE DATABASE IF NOT EXISTS db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE IF NOT EXISTS tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    id_classe INT,
    nivel INT,
    poder_ataque INT,
    poder_defesa INT,
    origem VARCHAR(255),
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome_classe, descricao) VALUES
    ('Guerreiro', 'Classe de combate corpo a corpo'),
    ('Mago', 'Classe de lançadores de feitiços'),
    ('Arqueiro', 'Classe de atiradores de longa distância'),
    ('Ladrão', 'Classe especializada em furtividade'),
    ('Cavaleiro', 'Classe montada em cavalos');

INSERT INTO tb_personagens (nome, id_classe, nivel, poder_ataque, poder_defesa, origem) VALUES
    ('Herói', 1, 10, 2500, 1800, 'Guerreiros da Sorte'),
    ('Sorceress', 2, 8, 1800, 1200, 'Magos da Feitiçaria'),
    ('Legolas', 3, 12, 2800, 1500, 'Arqueiro da Floresta'),
    ('Rogue', 4, 6, 1500, 1000, 'Ladrões da Cidade'),
    ('Sir Galahad', 5, 15, 3200, 2200, 'Cavaleira da Realeza'),
    ('TesterC123', 5, 15, 3200, 2200, 'Cavaleira da Realeza'),
    ('Javeiro', 5, 15, 3200, 2200, 'Cavaleira da Realeza'),
    ('GoLand', 3, 12, 2800, 1500, 'Arqueiro da Floresta'),
    ('Sir Galahad C', 5, 15, 3200, 2200, 'Cavaleira da Realeza'),
    ('Sir Galahad A', 3, 12, 2800, 1500, 'Arqueiro da Floresta');

SELECT nome, poder_ataque AS ataque FROM tb_personagens WHERE poder_ataque > 2000;

SELECT nome, poder_defesa AS defesa FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT nome AS nomes_com_c FROM tb_personagens WHERE nome LIKE '%C%';

SELECT p.nome, c.nome_classe AS classe FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id;

SELECT p.nome, c.nome_classe AS classe FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id
WHERE c.nome_classe = 'Arqueiro';
