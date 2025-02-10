CREATE DATABASE db_faculdade;

USE db_faculdade;

#Tabela de Cursos
CREATE TABLE tbl_cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    duracao INT NOT NULL
);

#Tabela de Alunos
CREATE TABLE tbl_alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    id_curso INT,
    logradouro VARCHAR(150) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    cep CHAR(8) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado CHAR(2) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    FOREIGN KEY (id_curso) REFERENCES tbl_cursos(id_curso)
);

#Tabela de Professores
CREATE TABLE tbl_professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    logradouro VARCHAR(150) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    cep CHAR(8) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado CHAR(2) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

#Tabela de Disciplinas
CREATE TABLE tbl_disciplinas (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT NOT NULL,
    id_curso INT,
    FOREIGN KEY (id_curso) REFERENCES tbl_cursos(id_curso)
);

#Tabela de Turmas
CREATE TABLE tbl_turmas (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    id_disciplina INT NOT NULL,
    id_professor INT NOT NULL,
    FOREIGN KEY (id_disciplina) REFERENCES tbl_disciplinas(id_disciplina),
    FOREIGN KEY (id_professor) REFERENCES tbl_professores(id_professor)
);

#Tabela de Matriculas
CREATE TABLE tbl_matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_turma INT NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES tbl_alunos(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES tbl_turmas(id_turma)
);

#Tabela de Notas
CREATE TABLE tbl_notas (
    id_nota INT AUTO_INCREMENT PRIMARY KEY,
    id_matricula INT NOT NULL,
    nota DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (id_matricula) REFERENCES tbl_matriculas(id_matricula)
);

#Tabela para armazenar telefones dos alunos
CREATE TABLE tbl_telefones_alunos (
    id_telefone INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    tipo ENUM('Residencial', 'Celular', 'Comercial') NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES tbl_alunos(id_aluno) ON DELETE CASCADE
);

#Tabela para armazenar telefones dos professores
CREATE TABLE tbl_telefones_professores (
    id_telefone INT AUTO_INCREMENT PRIMARY KEY,
    id_professor INT NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    tipo ENUM('Residencial', 'Celular', 'Comercial') NOT NULL,
    FOREIGN KEY (id_professor) REFERENCES tbl_professores(id_professor) ON DELETE CASCADE
);


