# Requisitos — Agente de IA para Estudos (SQL)

## Requisitos Funcionais (RF)
RF1 — Interpretar comandos SQL enviados pelo usuário.  
RF2 — Explicar consultas SQL cláusula por cláusula.  
RF3 — Criar resumos de conteúdos SQL (joins, subconsultas, procedures).  
RF4 — Gerar exercícios de SQL com tabelas fictícias e gabarito.  
RF5 — Identificar possíveis erros de sintaxe ou lógica.  
RF6 — Gerar versões otimizadas de uma mesma consulta.  
RF7 — Manter histórico das consultas enviadas pelo usuário.  
RF8 — Adaptar nível de explicação (iniciante, intermediário, avançado).  
RF9 — Formatar respostas em Markdown quando solicitado.  
RF10 — Gerar automaticamente um Prompt Mestre SQL ao final da sessão.

## Requisitos Não Funcionais (RNF)
RNF1 — Resposta clara, precisa e tecnicamente correta.  
RNF2 — Explicações estruturadas (SELECT → FROM → JOIN → WHERE → GROUP BY → HAVING → ORDER BY).  
RNF3 — Robustez para lidar com comandos incompletos ou ambíguos.  
RNF4 — Histórico salvo localmente ou via API.  
RNF5 — Agente resiliente a “ruídos” da linguagem natural.
