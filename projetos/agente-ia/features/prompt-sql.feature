Feature: Gerar Prompt Mestre SQL
  Como estudante focado em SQL
  Quero que o agente gere um Prompt Mestre
  Para revisar conteúdo de forma contínua e estruturada

  Scenario: Gerar Prompt Mestre ao final da sessão
    Given o usuário completou uma sessão com tópicos: "JOINs", "GROUP BY"
    When o usuário solicita "Gerar Prompt Mestre"
    Then o agente deve retornar um arquivo Markdown contendo contexto, tema, nível e 3 exercícios
    And o arquivo deve ser salvo no histórico
