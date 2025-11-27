# 🧠 Agente de IA para Estudos — SQL
### Projeto Completo de Engenharia de Requisitos, Casos de Uso, Testes e Prompt Mestre  
**Autora:** Náyra Zanini  
**Origem:** Disciplina Metodologia de Desenvolvimento de Software (Pós-graduação)  
**Professor (ideia do Prompt Mestre):** Marcelo Nogueira

---

## 📘 Visão Geral do Projeto

Este repositório apresenta um projeto completo pensado para demonstrar habilidades de **QA aplicadas a SQL**. O agente foi projetado para interpretar comandos naturais, analisar consultas SQL reais, gerar explicações detalhadas, criar exercícios, depurar scripts e, ao final, construir um **Prompt Mestre SQL** (ideia sugerida pelo Professor Marcelo Nogueira).

O objetivo é demonstrar competências em:
- Engenharia de Requisitos
- SQL e Banco de Dados
- QA e Casos de Teste
- BDD (Gherkin)
- Engenharia de Prompt
- Documentação técnica
- Integração CI/CD (GitHub Actions)

---

## 🎯 Objetivo

Demonstrar, de forma prática e rastreável, como se realiza:
1. Levantamento de requisitos para um agente educacional focado em SQL.
2. Modelagem de casos de uso e critérios de aceitação.
3. Elaboração de casos de teste (manuais e automatizáveis).
4. Implementação gradual de testes (unit, integration, e2e).
5. Integração com CI (GitHub Actions) e evidências de execução.
6. Apresentação das evidências no portfólio (HTML) e LinkedIn.

---

## 🧩 Funcionalidades (resumo)

- Explicar consultas SQL cláusula por cláusula
- Dividir e explicar JOINs, subconsultas, CTEs, window functions
- Gerar exercícios com tabelas fictícias e gabarito
- Depurar scripts (procedures, triggers, functions)
- Sugerir otimizações e boas práticas
- Gerar resumos e o Prompt Mestre SQL
- Manter histórico de estudo
- Complementar respostas com fontes confiáveis da web (quando aplicável)

---

## 📂 Estrutura do repositório

```
/agente-ia-sql/
├─ README.md
├─ requisitos.md
├─ casos-uso.md
├─ casos-teste.md
├─ prompt-mestre-sql.md
├─ features/
│   ├─ explicacoes.feature
│   ├─ prompt-sql.feature
│   └─ exercicios.feature
├─ data/
│   ├─ schema.sql
│   └─ seed.sql
├─ src/
├─ tests/
│   ├─ unit/
│   │   └─ parse.test.js
│   ├─ integration/
│   │   └─ agent.integration.test.js
│   └─ e2e/
│       └─ agent.e2e.spec.js
├─ docs/
│   └─ evidence.md
└─ .github/workflows/
    ├─ ci.yml
    └─ pages.yml
```

---

## 🛠 Como rodar localmente (guia rápido)

Pré-requisitos: Node.js (>=16), Git, SQLite (opcional), npm/yarn.

1. Clone o repositório:
```bash
git clone https://github.com/SEU_USUARIO/agente-ia-sql.git
cd agente-ia-sql
```

2. Instale dependências (se houver `package.json`):
```bash
npm install
```

3. Criar banco de teste (SQLite/Postgres):
- Rodar `data/schema.sql` e `data/seed.sql` (ex.: via sqlite3 ou psql).

4. Executar testes unitários:
```bash
npm test
```

---

## 🚀 Próximos passos

- Implementar MVP do agente (API que parseia query e gera explicação)
- Criar a interface HTML do portfólio com as páginas de casos de uso e casos de teste
- Automatizar testes em CI e coletar evidências

