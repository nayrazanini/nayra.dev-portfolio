-- Cursos
INSERT INTO cursos (id, codigo, nome_curso, descricao) VALUES
(1, 'ESW-2024', 'Engenharia de Software', 'Curso de Engenharia de Software - ênfase em práticas ágeis'),
(2, 'SI-2024', 'Sistemas de Informação', 'Curso de Sistemas de Informação'),
(3, 'BD-2024', 'Banco de Dados', 'Curso técnico em Banco de Dados');

-- Disciplinas
INSERT INTO disciplinas (id, codigo, nome_disciplina, carga_horaria) VALUES
(101, 'DB-FUND', 'Fundamentos de Banco de Dados', 60),
(102, 'SQL-AV', 'SQL Avançado', 80),
(103, 'ENG-PROJ', 'Engenharia de Projetos', 40);

-- Alunos (inclui nomes com acentos e emails nulos para testes)
INSERT INTO alunos (id, nome, email, id_curso, data_nascimento, ativo) VALUES
(1, 'Ana Silva', 'ana.silva@example.com', 1, '1995-03-12', 1),
(2, 'Bruno Souza', 'bruno.souza@example.com', 1, '1993-07-20', 1),
(3, 'Carla Dias', NULL, 2, '1998-11-05', 1),
(4, 'Diego Léo', 'diego.leo@example.com', 3, '1990-01-30', 0),  -- aluno inativo
(5, 'Érica M. Gonçalves', 'erica.g@example.com', 2, NULL, 1);

-- Matrículas
INSERT INTO matriculas (id, id_aluno, id_curso, semestre, status) VALUES
(1, 1, 1, '2025/1', 'matriculado'),
(2, 2, 1, '2025/1', 'matriculado'),
(3, 3, 2, '2024/2', 'matriculado'),
(4, 4, 3, '2023/2', 'trancado'),
(5, 5, 2, '2025/1', 'matriculado');

-- Notas (várias disciplinas, incluindo alguns casos limite)
INSERT INTO notas (id_aluno, id_disciplina, nota, data_avaliacao) VALUES
(1, 101, 8.50, '2025-05-10'),
(1, 102, 7.75, '2025-06-12'),
(2, 101, 6.00, '2025-05-10'),
(2, 102, 9.25, '2025-06-12'),
(3, 101, 9.00, '2024-12-20'),
(5, 102, 0.00, '2025-06-12'),   
(1, 103, 10.00, '2025-07-01');   

**Notas sobre o Script**

Contém variedade de casos: aluno sem email (NULL), aluno inativo, notas com 0.00 e 10.00 — úteis para testes negativos e de fronteira.

Há disciplinas separadas para permitir JOINs notas → disciplinas e notas → alunos.

Matrículas permitem testar consultas envolvendo histórico e status (matriculado, trancado).
