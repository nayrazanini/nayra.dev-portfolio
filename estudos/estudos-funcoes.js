
//Crie uma função verificarIdade que receba uma idade e diga se a pessoa é maior de idade ou não.


function verificarIdade (idade){
    if (idade >= 18){
        console.log("maior de idade")
    } else {
        console.log("menor de idade")
}
  

verificarIdade(20);

/* Crie uma função chamada verificarNota que receba um número de 0 a 10 representando a nota de um aluno.
A função deve seguir esta lógica:
Se a nota for maior ou igual a 7, exibir: "Aprovado"
Se a nota for maior ou igual a 5, mas menor que 7, exibir: "Recuperação"
Se a nota for menor que 5, exibir: "Reprovado"
Se a nota for maior que 10 ou menor que 0, exibir: "Nota inválida" */


function verificarNota(nota) {
  if (nota > 10 || nota < 0) {
    console.log("Nota Inválida");
  } else if (nota >= 7) {
    console.log("Aprovado");
  } else if (nota >= 5) {
    console.log("Recuperação");
  } else {
    console.log("Reprovado");
  }
}

// Exemplos:
verificarNota(10);  // Aprovado
verificarNota(6);   // Recuperação
verificarNota(3);   // Reprovado
verificarNota(11);  // Nota Inválida
