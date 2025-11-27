Feature: Gerar exercícios SQL
  Como estudante
  Quero que o agente gere exercícios com tabelas de exemplo
  Para praticar consultas e validar raciocínio

  Scenario: Gerar 3 exercícios sobre LEFT JOIN
    Given o usuário solicita "3 exercícios sobre LEFT JOIN - nível intermediário"
    When o agente gera os exercícios
    Then cada exercício deve conter: enunciado, tabela(s) de exemplo e gabarito
