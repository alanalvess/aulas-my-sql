CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
   	sobrenome VARCHAR(255) NOT NULL,
    serie VARCHAR(10) NOT NULL,
	turma VARCHAR(5) NOT NULL,
    nota DECIMAL(10,2) NOT NULL,
    telefone VARCHAR(11),
	email VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(nome, sobrenome, serie, turma, nota, telefone) 
VALUES ('Felisberto', 'Silva', '1º Ano', 'A', 7.5, '11900000000'),
('Adalberto', 'Santos', '5º Ano', 'B', 5.0, '11900000000'),
('Beneditina', 'Rodrigues', '2º Ano', 'D', 2.0, '11900000000'),
('Rosimar', 'Angelino', '4º Ano', 'A', 10.0, '11900000000'),
('Natalino', 'Filho', '5º Ano', 'A', 9.0, '11900000000'),
('Josenildo', 'Filho', '7º Ano', 'D', 4.5, '11900000000'),
('Marinaldo', 'Filho', '2º Ano', 'D', 8.2, '11900000000'),
('Marilandia', 'Filho', '2º Ano', 'A', 9.1, '11900000000'),
('Joseclesio', 'Filho', '6º Ano', 'B', 3.6, '11900000000'),
('America', 'Norte', '6º Ano', 'C', 8.0, '11900000000');

SELECT nome, nota FROM tb_estudantes WHERE nota > 7;

SELECT nome, nota FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota = 7.2 WHERE id = 3;