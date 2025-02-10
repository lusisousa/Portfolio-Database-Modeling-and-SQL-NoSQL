#Inserindo cursos
INSERT INTO tbl_cursos (nome, duracao) VALUES 
('Análise e Desenvolvimento de Sistemas', 4),
('Engenharia de Software', 5),
('Ciência da Computação', 5);

#Inserindo alunos
INSERT INTO tbl_alunos (nome, cpf, data_nascimento, id_curso, logradouro, bairro, cep, cidade, estado, email) VALUES 
('João Silva', '12345678901', '2000-05-15', 1, 'Rua A, 123', 'Centro', '12345678', 'São Paulo', 'SP', 'joao@email.com'),
('Maria Oliveira', '98765432100', '1999-10-20', 2, 'Avenida B, 456', 'Bela Vista', '87654321', 'Rio de Janeiro', 'RJ', 'maria@email.com');

#Inserindo professores
INSERT INTO tbl_professores (nome, cpf, logradouro, bairro, cep, cidade, estado, email) VALUES 
('Carlos Mendes', '11223344556', 'Rua C, 789', 'Jardins', '11223344', 'São Paulo', 'SP', 'carlos@email.com'),
('Ana Souza', '22334455667', 'Avenida D, 321', 'Centro', '22334455', 'Belo Horizonte', 'MG', 'ana@email.com');

#Inserindo disciplinas
INSERT INTO tbl_disciplinas (nome, carga_horaria, id_curso) VALUES 
('Banco de Dados', 60, 1),
('Programação Orientada a Objetos', 80, 2);

#Inserindo turmas
INSERT INTO tbl_turmas (id_disciplina, id_professor) VALUES 
(1, 1),
(2, 2);

#Inserindo matrículas
INSERT INTO tbl_matriculas (id_aluno, id_turma) VALUES 
(1, 1),
(2, 2);

#Inserindo notas
INSERT INTO tbl_notas (id_matricula, nota) VALUES 
(1, 8.5),
(2, 9.0);

#Inserindo telefones de alunos
INSERT INTO tbl_telefones_alunos (id_aluno, telefone, tipo) VALUES 
(1, '11954763421', 'Celular'),
(2, '2143538765', 'Residencial');

#Inserindo telefones de professores
INSERT INTO tbl_telefones_professores (id_professor, telefone, tipo) VALUES 
(1, '11977657843', 'Comercial'),
(2, '31966789534', 'Celular');

SELECT * FROM tbl_cursos;
SELECT * FROM tbl_alunos;
SELECT * FROM tbl_professores;
SELECT * FROM tbl_disciplinas;
SELECT * FROM tbl_turmas;
SELECT * FROM tbl_matriculas;
SELECT * FROM tbl_notas;
SELECT * FROM tbl_telefones_alunos;
SELECT * FROM tbl_telefones_professores;


