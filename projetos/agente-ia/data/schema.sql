-- Schema de exemplo para testes
CREATE TABLE alunos (
  id INTEGER PRIMARY KEY,
  nome TEXT,
  id_curso INTEGER
);

CREATE TABLE cursos (
  id INTEGER PRIMARY KEY,
  nome_curso TEXT
);

CREATE TABLE notas (
  id_aluno INTEGER,
  id_disciplina INTEGER,
  nota REAL,
  PRIMARY KEY(id_aluno, id_disciplina)
);
