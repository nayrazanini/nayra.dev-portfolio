# Casos de Uso — Agente de IA (SQL)

## CU-01 — Interpretar e explicar consultas SQL
**Ator:** Usuário  
**Pré-condições:** Agente ativo; usuário autenticado (se aplicável)  
**Fluxo principal:**  
1. Usuário envia a consulta SQL.  
2. Agente analisa sintaxe e semântica.  
3. Agente divide a query em blocos (SELECT, FROM, JOIN, WHERE, GROUP BY, HAVING, ORDER BY).  
4. Agente retorna explicação cláusula por cláusula, descreve relacionamentos e mostra exemplo de resultado.  
5. Agente oferece: sugestão de otimização, versão alternativa e pergunta se quer exercícios.

**Fluxos alternativos:** Query com erro de sintaxe -> CU-03; Query ambígua -> pede esclarecimento.

**Critérios de Aceitação (CA):** CA1: Resposta inclui explicação de cada cláusula. CA2: Se houver JOINs, apresentar visualização do relacionamento. CA3: Oferecer 1 alternativa/otimização quando aplicável.
