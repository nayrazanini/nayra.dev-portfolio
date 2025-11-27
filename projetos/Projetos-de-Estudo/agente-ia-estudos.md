# 🧠 Agente de IA para Estudos — SQL  
### Projeto Completo de Engenharia de Requisitos, Casos de Uso, Testes e Prompt Mestre  
**Autora:** *Náyra Zanini*  
**Área:** Engenharia de Software • Banco de Dados • SQL • QA • Testes • Requisitos • IA Educacional

---

## 📘 Visão Geral do Projeto

Este projeto apresenta o planejamento completo de um **Agente de IA especializado em apoiar estudos**, porém com foco em SQL que é minha área atual. Ajudando na leitura, interpretação, criação e análise de consultas, além de explicar conceitos, gerar exercícios, revisar scripts complexos e produzir um **Prompt Mestre** (Dica do Professor Marcelo Nogueira) para revisão contínua.

É um projeto ideal para demonstrar domínio sobre:

- Engenharia de Requisitos  
- Casos de Uso (UML textual)  
- Qualidade de Software e Testes  
- SQL (consultas, joins, subconsultas, procedures, views)  
- Análise, depuração e otimização de scripts  
- BDD (Gherkin)  
- Didática aplicada à Inteligência Artificial  (Engenharia de Prompt)

---

## 🎯 Objetivo do Agente

Criar um assistente inteligente capaz de:

- Explicar consultas SQL de qualquer complexidade  
- Criar exercícios direcionados (JOIN, HAVING, CTE, Window Functions etc.)  
- Revisar e depurar scripts SQL  
- Gerar resumos para estudo  
- Identificar erros comuns de SQL  
- Ajudar a interpretar históricos escolares, tabelas, dados e relações (de acordo com seu trabalho real)  
- Criar um **Prompt Mestre** para continuar os estudos  
- Manter histórico e evolução das sessões de estudo
- Utilizar fontes na web para complementar a informação e concentrar as informações em um só lugar

---

## 🧩 Funcionalidades Principais

- 📚 Explicações completas sobre qualquer comando SQL  
- 📝 Geração de exercícios práticos com tabelas fictícias  
- 🗂 Criação de desafios com JOINS (INNER, LEFT, FULL, RIGHT)  
- 📊 Análise e explicação de consultas reais usadas em ambiente de trabalho  
- 🔎 Depuração de scripts complexos (procedures, triggers, funções)  
- 🧠 Identificação de erros: FROM faltando, ambiguidades, uso incorreto de GROUP BY etc.  
- 📤 Geração de resumos e Prompt Mestre  
- 💬 Interpretação de linguagem natural (“explique essa query”, “crie uma consulta que…”)  
- 💾 Histórico de estudo persistente  

---

## 🛠 Tecnologias (conceituais)

- Modelos de linguagem (LLMs) treinados para SQL  
- JavaScript para interface ou MVP  
- Armazenamento local (localStorage / IndexedDB)  
- Testes: Jest, Cypress e Cucumber  
- Técnicas de TDD/BDD para os exercícios SQL  

---

# 📜 1. Requisitos do Sistema

## ✔ Requisitos Funcionais (RF)

RF1 — Interpretar comandos SQL enviados pelo usuário.  
RF2 — Explicar consultas SQL passo a passo, detalhando cada cláusula.  
RF3 — Criar resumos de conteúdos SQL (joins, subconsultas, procedures).  
RF4 — Gerar exercícios de SQL com tabelas fictícias e gabarito.  
RF5 — Identificar possíveis erros de sintaxe ou lógica.  
RF6 — Gerar versões otimizadas de uma mesma consulta.  
RF7 — Manter histórico das consultas enviadas pelo usuário.  
RF8 — Adaptar nível de explicação (iniciante, intermediário, avançado).  
RF9 — Formatar respostas em Markdown quando solicitado.  
RF10 — Gerar automaticamente um **Prompt Mestre SQL** ao final da sessão.  

---

## ✔ Requisitos Não Funcionais (RNF)

RNF1 — Resposta clara, precisa e tecnicamente correta.  
RNF2 — Explicações estruturadas (SELECT → FROM → JOIN → WHERE → GROUP BY → HAVING → ORDER BY).  
RNF3 — Robustez para lidar com comandos incompletos ou ambíguos.  
RNF4 — Histórico salvo localmente ou via API.  
RNF5 — Agente deve ser resiliente à linguagem informal do usuário.

---

# 📂 2. Casos de Uso (CU)

---

## **User Case-01 — Interpretar e explicar consultas SQL**

**Ator:** Usuário  
**Objetivo:** Obter explicações claras sobre comandos SQL.

**Fluxo principal:**
1. Usuário envia: “Explique essa query:” seguido de um SELECT.  
2. Agente identifica todas as cláusulas.  
3. Explica passo a passo.  
4. Oferece versões alternativas ou otimizadas.

**Fluxos alternativos:**
- Query incompleta → agente solicita partes faltantes.  
- Query inválida → agente aponta erros.

---

## **User Case-02 — Gerar exercícios SQL**

1. Usuário pede: “Crie 5 exercícios de JOIN.”  
2. Agente cria tabelas fictícias (ex.: alunos, cursos, notas).  
3. Gera consultas para o usuário resolver.  
4. Oferece gabarito opcional.

---

## **User Case-03 — Analisar e depurar scripts**

1. Usuário cola uma procedure ou view.  
2. Agente identifica estrutura, valida sintaxe e aponta falhas comuns.  
3. Sugere melhorias, renomeação de colunas, índices e boas práticas.

---

## **User Case-04 — Criar resumos SQL**

1. Usuário pede: “Resuma tudo sobre JOINS.”  
2. Agente gera resumo (curto, médio e longo).  
3. Usuário salva no histórico.

---

## **User Case-05 — Gerar Prompt Mestre SQL**

1. Ao final da sessão, agente compila tudo o que foi estudado.  
2. Gera um Prompt Mestre específico para estudo futuro de SQL.  
3. Usuário pode exportar ou salvar.

---






