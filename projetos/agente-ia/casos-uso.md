CU-01 — Interpretar Consulta SQL

**Descrição:**  
O usuário envia uma consulta SQL e o agente retorna uma explicação detalhada.

**Ator:** Usuário  
**Pré-condições:** Query válida foi enviada.  
**Pós-condições:** A explicação é salva no histórico (opcional).

### Fluxo Principal
1. Usuário envia a query.  
2. O agente identifica: SELECT, FROM, JOIN, WHERE, GROUP BY, HAVING e ORDER BY.  
3. O agente explica cada cláusula individualmente.  
4. Mostra visualização do relacionamento entre tabelas (quando houver JOIN).  
5. Oferece: “Deseja exercícios sobre essa consulta?”

### Fluxos Alternativos
- FA1: Query incompleta → agente solicita parte faltante.  
- FA2: Query com erro → redireciona para CU-03 (depuração).  
- FA3: Query muito grande → agente oferece resumo da estrutura.

### Critérios de Aceitação
- CA1: Explicar todas as cláusulas presentes.  
- CA2: Identificar relacionamentos entre tabelas.  
- CA3: Oferecer pelo menos 1 alternativa/otimização.

---

# 🧠 UserCase-02 — Explicar Query Complexa

**Descrição:**  
Explica queries com CTEs, subconsultas, HAVING, PARTITION BY etc.

### Fluxo Principal
1. Usuário envia uma query complexa.  
2. Agente divide a query em blocos lógicos.  
3. Explica a ordem de execução real (SQL Execution Order).  
4. Mostra exemplos práticos.  
5. Indica erros comuns naquele tipo de consulta.

### Fluxos Alternativos
- FA1: Query contém funções de janela → agente explica PARTITION / ORDER BY.  
- FA2: Query com CTE → explica como cada CTE se conecta ao SELECT final.

### Critérios de Aceitação
- CA1: Explicação deve seguir a ordem correta de execução.  
- CA2: Devem existir exemplos ilustrativos.

---

# 🧠 UserCase-03 — Depurar Script SQL

**Descrição:**  
Usuário envia procedure/view/trigger e o agente identifica erros e sugere melhorias.

### Fluxo Principal
1. Usuário envia o script.  
2. Agente analisa estrutura e sintaxe.  
3. Destaca pontos de atenção.  
4. Sugere refatorações (ex.: remoção de SELECT *, ajuste de índices).  
5. Explica boas práticas.

### Critérios de Aceitação
- CA1: Erros devem ser identificados corretamente.  
- CA2: Sugestões precisam ser justificadas tecnicamente.

---

# 🧠 UserCase-04 — Gerar Exercícios SQL

### Fluxo Principal
1. Usuário escolhe tema (JOIN, CTE, GROUP BY etc.).  
2. Agente oferece 5 exercícios com:  
   - tabelas fictícias  
   - enunciado  
   - gabarito  
3. Usuário salva ou pede novos exercícios.

---

# 🧠 UserCase-05 — Gerar Resumo SQL

### Fluxo Principal
1. Usuário envia tema.  
2. Agente gera:  
   - Resumo curto  
   - Resumo médio  
   - Resumo longo  
3. Usuário escolhe o nível desejado.  

---

# 🧠 UserCase-06 — Criar Prompt Mestre SQL

### Fluxo Principal
1. Usuário termina sessão.  
2. Agente compila histórico.  
3. Gera Prompt Mestre completo com instruções de estudo.  
4. Salva no histórico.

---

# 🧠 UserCase-07 — Consultar Histórico

### Fluxo Principal
1. Usuário solicita “ver histórico”.  
2. Agente retorna lista das interações anteriores.

---

# 🧠 UserCase-08 — Ajustar Nível de Explicação

### Fluxo Principal
1. Usuário escolhe o nível desejado.  
2. Agente modifica complexidade da explicação.

---

# 🧠 UserCase-09 — Interpretar Comandos Naturais

Ex.: "cara, me explica esse select aí rapidinho”

Agente filtra ruídos e retorna resposta formal.

---

# 🧠 UserCase-10 — Sugerir Otimização de Query

Exemplo:  
Transformar subconsulta em JOIN; sugerir índice; remover SELECT *.

---

# ✔ Encerramento
Este documento serve como referência para o desenvolvimento do sistema e para demonstração no portfólio técnico.
