-- Seed de exemplo
INSERT INTO cursos (id, nome_curso) VALUES
(1, 'Engenharia de Software'),
(2, 'Sistemas de Informação');

INSERT INTO alunos (id, nome, id_curso) VALUES
(1, 'Ana Silva', 1),
(2, 'Bruno Souza', 1),
(3, 'Carla Dias', 2);

INSERT INTO notas (id_aluno, id_disciplina, nota) VALUES
(1, 101, 8.5),
(2, 101, 7.0),
(3, 101, 9.0);
