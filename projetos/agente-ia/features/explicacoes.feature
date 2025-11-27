Feature: Explicar consultas SQL
  Como estudante de SQL
  Quero que o agente explique queries
  Para entender cada cláusula e possíveis otimizações

  Scenario: Explicar uma query com INNER JOIN
    Dado o agente está disponível
    Quando o usuário envia a query:
      '''
      SELECT a.nome, c.nome_curso
      FROM alunos a
      INNER JOIN cursos c ON c.id = a.id_curso;
      '''
    Então a resposta deve conter explicação para SELECT, FROM e INNER JOIN
    E deve apresentar uma visualização do relacionamento entre tabelas
    E deve sugerir alternativas quando aplicável
