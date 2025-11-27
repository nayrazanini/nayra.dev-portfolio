-- Schema melhorado para Agente-IA-SQL
-- Compatível com PostgreSQL / SQLite (ANSI SQL básico)
-- Inclui restrições, chaves estrangeiras, índices e colunas de auditoria

-- Tabela de cursos
CREATE TABLE IF NOT EXISTS cursos (
  id INTEGER PRIMARY KEY,
  codigo VARCHAR(30) NOT NULL UNIQUE,
  nome_curso VARCHAR(200) NOT NULL,
  descricao TEXT,
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela de alunos
CREATE TABLE IF NOT EXISTS alunos (
  id INTEGER PRIMARY KEY,
  nome VARCHAR(150) NOT NULL,
  email VARCHAR(200) UNIQUE,
  id_curso INTEGER,
  data_nascimento DATE,
  ativo BOOLEAN DEFAULT TRUE,
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (id_curso) REFERENCES cursos(id) ON DELETE SET NULL
);

-- Tabela de disciplinas (para relacionar notas)
CREATE TABLE IF NOT EXISTS disciplinas (
  id INTEGER PRIMARY KEY,
  codigo VARCHAR(30) NOT NULL UNIQUE,
  nome_disciplina VARCHAR(200) NOT NULL,
  carga_horaria INTEGER,
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela notas (relaciona aluno x disciplina)
CREATE TABLE IF NOT EXISTS notas (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  id_aluno INTEGER NOT NULL,
  id_disciplina INTEGER NOT NULL,
  nota NUMERIC(5,2) NOT NULL,
  data_avaliacao DATE DEFAULT CURRENT_DATE,
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (id_aluno) REFERENCES alunos(id) ON DELETE CASCADE,
  FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id) ON DELETE CASCADE,
  CONSTRAINT nota_range CHECK (nota >= 0 AND nota <= 10)
);

-- Tabela matriculas (ex.: histórico / matrícula ativa)
CREATE TABLE IF NOT EXISTS matriculas (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  id_aluno INTEGER NOT NULL,
  id_curso INTEGER NOT NULL,
  semestre VARCHAR(10),
  status VARCHAR(30) DEFAULT 'matriculado',
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (id_aluno) REFERENCES alunos(id) ON DELETE CASCADE,
  FOREIGN KEY (id_curso) REFERENCES cursos(id) ON DELETE CASCADE
);

-- Índices para performance (exemplos)
CREATE INDEX IF NOT EXISTS idx_alunos_idcurso ON alunos(id_curso);
CREATE INDEX IF NOT EXISTS idx_notas_idaluno ON notas(id_aluno);
CREATE INDEX IF NOT EXISTS idx_notas_iddisciplina ON notas(id_disciplina);
CREATE INDEX IF NOT EXISTS idx_matriculas_aluno ON matriculas(id_aluno);


**Notas sobre o script**

Chaves estrangeiras: para garantir integridade referencial — ex.: notas.id_aluno só pode existir se o aluno existir.

Colunas de auditoria: criado_em e data_avaliacao ajudam em testes que verificam ordenação/timestamps.

Constraint em notas (nota_range) evita inserir notas fora do intervalo 0–10.

Índices simples criados para acelerar JOINs e buscas por id_aluno, id_disciplina, id_curso.

AUTOINCREMENT naquelas tabelas que podem ser criadas automaticamente.