
# Calculadora de Nota Final (Simulação de Questionários)

Este projeto foi desenvolvido para automatizar um processo utilizado com frequência no ambiente administrativo. A calculadora simula até 4 questionários, cada um com até 3 tentativas, permitindo calcular a média de notas por questionário e gerar automaticamente a nota final com base nas tentativas realizadas.

A lógica aplicada segue a mesma estrutura de planilhas internas utilizadas pela equipe, trazendo agilidade, precisão e facilidade para os colaboradores no dia a dia.

## 🔗 Acesse o Projeto
[👉 Clique aqui para abrir a Calculadora de Nota Final](https://nayrazanini.github.io/nayra.dev-portfolio/projetos/Projetos-de-Estudo/calculadora-notas.html)

## 🧠 Lógica Utilizada

- O sistema permite entrada de até 3 tentativas por questionário.
- Para cada questionário com notas preenchidas, é calculada a **média aritmética** das tentativas válidas.
- A **nota final** é a soma das médias dos questionários que foram respondidos.
- A interface é atualizada em tempo real conforme o usuário preenche os valores.

### Exemplo de cálculo:

Se o usuário preenche:

- **Q1:** 2.0 e 3.0 (média = 2.5)
- **Q2:** 1.0, 2.0 e 4.0 (média = 2.33)
- **Q3:** 2.0 e 1.0 (média = 1.50)


A nota final será: **6.33**

---

## 💻 Tecnologias Utilizadas

- **HTML5**: Estruturação da página
- **JavaScript (puro)**: Lógica de cálculo, manipulação de DOM
- **Tailwind CSS**: Estilização visual com classes utilitárias via CDN

---

## 📂 Estrutura do Projeto

```
calculadora-notas/
├── index.html     # Página principal com o layout e integração
├── script.js      # Lógica de cálculo das notas
```

---

## ✍️ Autoria

Projeto criado por **Náyra Zanini** como parte do portfólio pessoal em desenvolvimento de software e automação de processos administrativos.
