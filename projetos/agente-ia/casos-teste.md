# Casos de Teste — Agente de IA (SQL)

| ID   | RF   | Título | Pré-condição | Passos (resumido) | Dados de Teste | Resultado Esperado | Prioridade | Tipo | Automatizável |
|------|------|--------|--------------|-------------------|----------------|--------------------|-----------:|------|---------------|
| CT-01 | RF1,RF2 | Explicar query simples | Agente ativo | Enviar query e validar resposta | SELECT id, nome FROM alunos; | Explicação cláusula por cláusula | Alta | Funcional | Sim |
| CT-02 | RF1,RF2 | Explicar query com JOIN | Agente ativo | Enviar query com JOIN | SELECT a.nome, c.nome_curso FROM alunos a INNER JOIN cursos c ON c.id = a.id_curso; | Explica JOIN e relacionamento | Alta | Funcional | Sim |
| CT-03 | RF5 | Detectar erro GROUP BY | Agente ativo | Enviar query com agregação sem GROUP BY | SELECT nome, COUNT(*) FROM alunos; | Mensagem indicando falta de GROUP BY | Alta | Negativo | Sim |
| CT-04 | RF3 | Gerar resumo curto/médio | Agente ativo | Enviar texto e pedir resumos | Texto sobre JOINs | Retorna 3 níveis de resumo | Média | Funcional | Sim |
| CT-05 | RF4 | Criar exercícios LEFT JOIN | Agente ativo | Pedir exercícios | Tema: LEFT JOIN | 3 exercícios com gabarito | Alta | Funcional | Sim |
