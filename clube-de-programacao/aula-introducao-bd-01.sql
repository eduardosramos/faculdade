-- Cria o banco de dados 'aulas'
CREATE DATABASE aulas;

-- Usa o banco de dados 'aulas'
USE aulas;

-- Cria a tabela 'aluno'
CREATE TABLE aluno (
    matricula INT(5),
    nome VARCHAR(80),
    sexo CHAR(1),
    dtnasc DATE
);

-- Adiciona a chave primária 'matricula' à tabela 'aluno'
ALTER TABLE aluno
ADD PRIMARY KEY (matricula);

-- Descreve a estrutura da tabela 'aluno'
DESCRIBE aluno;

-- Insere dados na tabela 'aluno'
INSERT INTO aluno (matricula, nome, sexo, dtnasc)
VALUES
    (1, 'maria', 'F', '2006-11-07'),
    (2, 'marcelo', 'M', '2006-11-08'),
    (3, 'rafael', 'M', '2006-11-09'),
    (4, 'bruna', 'F', '2007-05-01'),
    (5, 'renan', 'M', '2008-10-17'),
    (6, 'maju', 'F', '2007-03-15'),
    (7, 'bia', 'F', '2006-12-15');
    
INSERT INTO aluno (matricula, nome, sexo, dtnasc)
VALUES
    (8, 'vinicius', 'M', '2015-10-02');

INSERT INTO aluno (matricula, nome, sexo, dtnasc)
VALUES
    (9, 'silvano', 'M', '1990-10-03');

CREATE TABLE telefone (
    matricula INT(5),
    ddd VARCHAR(3),
    numero VARCHAR(10)
);

ALTER TABLE telefone
ADD PRIMARY KEY (matricula, numero);

ALTER TABLE telefone
ADD CONSTRAINT FK_telefone
FOREIGN KEY (matricula) REFERENCES aluno(matricula);
