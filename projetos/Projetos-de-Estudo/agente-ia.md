# 🧠 Agente de IA para Estudos — SQL  
### Projeto Completo de Engenharia de Requisitos, Casos de Uso, Testes e Prompt Mestre  
**Autora:** *Náyra Zanini*  
**Área:** Engenharia de Software • Banco de Dados • SQL • QA • Testes • Requisitos • IA Educacional  
**Origem:** Projeto desenvolvido durante a disciplina *Metodologia de Desenvolvimento de Software*  
**Docente:** *Professor Marcelo Nogueira*  

---

## 📘 Visão Geral do Projeto

Este projeto nasceu durante as aulas da disciplina **Metodologia de Desenvolvimento de Software**, da minha Pós-Graduação em Engenharia de Software.  
Nas discussões sobre *concepção de sistemas*, *levantamento de requisitos*, *qualidade*, *modelagem* e *análise de processos*, surgiu a proposta de criar um sistema que unisse:

- uma necessidade real do meu cotidiano profissional (SQL),  
- práticas modernas de documentação e engenharia,  
- inteligência artificial aplicada à educação,  
- e um formato que pudesse ser facilmente ampliado no futuro.

Durante a aula, o professor **Marcelo Nogueira** sugeriu que criando um *Prompt Mestre* seria possível ampliar a autonomia do estudante e organizar o processo de aprendizagem — essa ideia se tornou uma **feature principal** do projeto e um diferencial no portfólio.

O Agente de IA para Estudos — SQL foi, então, concebido como um **projeto completo**, combinando:

- Engenharia de Requisitos  
- Modelagem de Casos de Uso  
- Qualidade e Testes  
- BDD  
- Engenharia de Prompt  
- Organização documental  
- Estrutura de portfólio profissional  

Todo o conteúdo técnico aprofundado (Casos de Uso, Testes, BDD e Prompt Mestre) está disponível em páginas HTML no meu portfólio.

---

## 🎯 Objetivo do Agente

Criar um assistente inteligente capaz de:

- Explicar consultas SQL de qualquer complexidade  
- Criar exercícios direcionados (JOIN, HAVING, CTE, Window Functions etc.)  
- Revisar e depurar scripts SQL reais  
- Gerar resumos estruturados  
- Identificar erros comuns de SQL e propor correções  
- Ajudar a interpretar tabelas e relações (utilizado diariamente no trabalho)  
- Criar um **Prompt Mestre SQL** para revisão contínua  
- Utilizar fontes confiáveis da web para complementar o aprendizado  
- Manter histórico e evolução das sessões de estudo

---

## 🧩 Funcionalidades Principais

- 📘 Explicação completa e passo a passo de queries SQL  
- 🧩 Divisão da query em SELECT, FROM, JOIN, WHERE, GROUP BY, HAVING e ORDER BY  
- 📊 Visualização de relacionamentos e compreensão de JOINs  
- 📝 Criação de exercícios SQL personalizados com tabelas fictícias  
- 🔍 Depuração de scripts (procedures, views, triggers)  
- 🧠 Identificação de erros e gargalos  
- 🔧 Sugestão de otimização e boas práticas  
- 📚 Resumos SQL (curto, médio, longo)  
- 🧾 Criação automática do **Prompt Mestre SQL** (concebido a partir da proposta do Professor Marcelo Nogueira)  
- 💬 Interpretação de linguagem natural  
- 💾 Histórico persistente  

---

## 🛠 Tecnologias (conceituais)

O projeto foi concebido considerando tecnologias como:

- Modelos de Linguagem (LLMs) especializados em SQL  
- JavaScript / Node.js  
- IndexedDB ou localStorage (persistência)  
- Jest, Cypress e Cucumber  
- TDD / BDD como métodos de construção  

---

# 📜 Requisitos do Sistema (Resumo)

### ✔ Requisitos Funcionais (RF)
- Interpretar comandos SQL  
- Explicar consultas cláusula por cláusula  
- Resumir tópicos SQL  
- Gerar exercícios personalizados  
- Identificar erros de sintaxe/lógica  
- Sugerir otimizações  
- Manter histórico  
- Adaptar nível de explicação  
- Formatar em Markdown  
- Criar o Prompt Mestre SQL  

### ✔ Requisitos Não Funcionais (RNF)
- Linguagem clara e técnica  
- Estruturas de explicação padronizadas  
- Robustez contra queries incompletas  
- Persistência local  
- Resiliência à linguagem informal  

---

# 📂 Casos de Uso (Resumo)

Os principais casos de uso do sistema:

1. Interpretar e explicar consultas SQL  
2. Gerar exercícios SQL  
3. Analisar e depurar scripts SQL  
4. Criar resumos SQL  
5. Gerar Prompt Mestre SQL  

---

# 🧪 Casos de Teste (Resumo)

Casos de teste essenciais:

- Explicação de query com JOIN  
- Identificação de erro por falta de GROUP BY  
- Geração de exercícios SQL  
- Depuração de scripts complexos  
- Geração do Prompt Mestre SQL  

---

# 🧬 BDD (Resumo)

Exemplo de cenário:

```gherkin
Feature: Gerar Prompt Mestre SQL
  Como estudante focado em SQL
  Quero que o agente gere um Prompt Mestre
  Para revisar conteúdo de forma contínua e estruturada






