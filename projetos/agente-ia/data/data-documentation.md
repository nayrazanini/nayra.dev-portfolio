# 📁 Documentação da Pasta DATA — Base de Testes SQL  
**Projeto:** Agente de IA para Estudos — SQL  
**Autora:** Náyra Zanini  

---

## 🎯 Objetivo deste documento

A pasta **/data** contém os arquivos responsáveis pela **estrutura e carga inicial de dados** utilizados nos testes, análises, exercícios e exemplos SQL do projeto.

Ela é essencial porque permite:

- Criar um ambiente de testes **realista e controlado**  
- Executar consultas SQL que validam casos de teste  
- Reproduzir situações comuns do dia a dia de QA e analista de dados  
- Testar comportamento de JOINs, subconsultas, índices, constraints e validações  
- Criar exercícios SQL consistentes para o Agente de IA  

Este documento explica **por que cada tabela existe**, **como o schema foi desenhado**, **por que existem índices, FKs e constraints**, e **como os dados ajudam a construir testes reais**.

---

# 📌 Arquivos contidos em `/data`

| Arquivo | Função |
|--------|--------|
| `schema.sql` | Cria todas as tabelas, chaves estrangeiras, índices e estruturas do banco |
| `seed.sql` | Insere dados variados para testes funcionais, negativos e de performance |
| `data-documentation.md` | Explica a motivação, estrutura e uso dos dados do projeto |

---

# 🧱 1. SCHEMA.SQL — Estrutura do Banco

O arquivo `schema.sql` cria todas as tabelas necessárias para simular um ambiente educacional (similar ao ERP Lyceum, usado no meu trabalho).

## 🧩 Tabelas criadas

### ✔ Tabela **cursos**
Representa os cursos disponíveis.  
Permite testes envolvendo agrupamento, filtros e junções.

Colunas importantes:
- `codigo` (UNIQUE)
- `nome_curso`
- `descricao`

### ✔ Tabela **alunos**
Representa estudantes com atributos variados para gerar *casos reais*:

- Nome com acentuação  
- Alguns com email, outros sem → ideal para testar `NULL`  
- Coluna `ativo` (boolean) → permite criar casos de filtragem  

### ✔ Tabela **disciplinas**
Permite criar exercícios com JOINs utilizando notas, médias, CTEs etc.

### ✔ Tabela **notas**
Registra notas dos alunos.

Inclui:
- `nota` NUMERIC com **constraint CHECK (0 a 10)**  
  → Ideal para **testes negativos** (CT que tenta inserir 11).  
- Relacionamento 1:N com alunos e disciplinas  
- `data_avaliacao` para consultas temporais

### ✔ Tabela **matriculas**
Simula histórico de matrícula real:

- `semestre`
- `status` (matriculado, trancado, cancelado)  

Permite testar:
- filtros
- JOIN por curso
- consultas analíticas

---

# 🧠 2. O usi FOREIGN KEYS e CONSTRAINTS

Adicionar **FKs**, **índices**, **restrições** e **CHECKs** não foi apenas para deixar bonito, tem propósito direto na área de QA.

### 🟦 Benefícios práticos para QA:

### ✔ Testes negativos
Criar casos de:
- Insert inválido → deve gerar erro  
- Aluno com curso inexistente → erro de FK  
- Nota > 10 → violação de constraint  
- Email repetido → UNIQUE constraint  

### ✔ Testes de integridade
Permite validar:
- Cascades (delete aluno → notas associadas desaparecem?)  
- Consistência de dados  

### ✔ Testes de performance
Índices que permitem criar CTs como:
- Verificar diferença entre consultas com e sem index  
- Testar planos de execução  

### ✔ Testes analíticos
A base estruturada permite testar:
- GROUP BY  
- HAVING  
- Window functions  
- Subconsultas  
- CTEs  

---

# 🍏 3. SEED.SQL — Dados Inseridos

O arquivo `seed.sql` carrega dados com variedade suficiente para **todas as categorias de testes SQL**.

## Exemplos do que foi incluído:

### ✔ Alunos:
- Com nome sem acento, com acento, com email nulo  
- Um aluno **inativo** (status boolean) para testes de filtragem  
- `data_nascimento` opcional (NULL) para testes de NULL  

### ✔ Notas:
- Notas **0.00** e **10.00** (testes de limite)  
- Datas diferentes para testar ordenação  
- Notas por várias disciplinas  

### ✔ Cursos e disciplinas:
Essenciais para JOINs e análises relacionais.

### ✔ Matrículas:
Incluem:
- aluno trancado  
- aluno ativo  
- aluno com semestres diferentes  

---

# 🔍 4. Objetivo dentro do projeto

Este banco permite:

## ✔ Criar **Casos de Uso** reais
Ex.:  
CU-03 → depurar script que calcula média por disciplina  
CU-04 → gerar exercícios envolvendo 3 tabelas  

## ✔ Criar **Casos de Teste** ricos
Ex.:  
CT-03 → falta GROUP BY  
CT-14 → tentar inserir nota inválida  
CT-11 → medir performance  

## ✔ Criar **Exercícios SQL** no agente
Exercícios envolvendo:
- JOIN  
- CTE  
- subconsultas  
- funções de janela  
- agregações  

## ✔ Criar **consultas de depuração** 
Exemplos:
- Alunos sem email  
- Disciplinas sem notas  
- Matrículas trancadas  
- Ranking de notas  

---

# 🧪 5. Consultas de Validação Recomendada
Estas consultas servem para validar o banco, após importação:

### ✔ Contar alunos por curso
```sql
SELECT c.nome_curso, COUNT(a.id)
FROM cursos c
LEFT JOIN alunos a ON a.id_curso = c.id
GROUP BY c.nome_curso;
