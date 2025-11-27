# 🧪 Casos de Teste — Agente de IA para Estudos em SQL  
**Autora:** Náyra Zanini  
**Foco:** QA • Testes Funcionais • Testes SQL • BDD • TDD

---

# 🎯 Objetivo do Documento
Apresentar a matriz completa de casos de teste do projeto, incluindo:

- Testes funcionais  
- Testes negativos  
- Testes de robustez  
- Testes de performance  
- Testes de segurança  
- Testes de usabilidade  
- Testes orientados a SQL  


---

# 🧩 Matriz de Casos de Teste

| ID | RF | Título | Tipo | Prioridade |
|----|----|--------|------|-----------|
| CT-01 | RF1, RF2 | Explicação de query simples | Funcional | Alta |
| CT-02 | RF1, RF2 | Explicação de query com JOIN | Funcional | Alta |
| CT-03 | RF5 | Erro: falta GROUP BY | Negativo | Alta |
| CT-04 | RF4 | Geração de exercícios | Funcional | Alta |
| CT-05 | RF3 | Geração de resumos | Funcional | Média |
| CT-06 | RF6 | Sugestão de otimização | Funcional | Média |
| CT-07 | RF7 | Histórico: gravação | Funcional | Alta |
| CT-08 | RF8 | Explicação adaptada | Usabilidade | Média |
| CT-09 | RF9 | Resposta em Markdown | Funcional | Média |
| CT-10 | RF10 | Prompt Mestre | Funcional | Alta |
| CT-11 | RNF1 | Performance (latência < 3s) | Performance | Média |
| CT-12 | RNF2 | Ordem de explicação | Funcional | Alta |
| CT-13 | RNF3 | Query incompleta | Negativo | Alta |
| CT-14 | SEG | Acesso indevido ao histórico | Segurança | Alta |
| CT-15 | ROBO | Comando informal | Robustez | Média |

---

# 🧪 Casos de Teste Detalhados

---

## 🎯 **CT-02 — Explicação de Query com JOIN**

**Objetivo:** Verificar se o agente explica todas as cláusulas.  

**Entrada:**  
```sql
SELECT a.nome, c.nome_curso
FROM alunos a
INNER JOIN cursos c ON c.id = a.id_curso;