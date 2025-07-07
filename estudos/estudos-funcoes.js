
//a) Crie uma função verificarIdade que receba uma idade e diga se a pessoa é maior de idade ou não.


function verificarIdade (idade){
    if (idade >= 18){
        console.log("maior de idade")
    } else {
        console.log("menor de idade")
}
  

verificarIdade(20);

/* b) Crie uma função chamada verificarNota que receba um número de 0 a 10 representando a nota de um aluno.
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


/* c) Crie uma função chamada calcularIMC que receba dois parâmetros:

peso (em kg)

altura (em metros)

A função deve calcular o IMC com a fórmula: IMC = peso / (altura * altura)

E depois exibir no console a classificação de acordo com a tabela abaixo:

IMC	Classificação
Menor que 18.5	Abaixo do peso
Entre 18.5 e 24.9	Peso normal
Entre 25 e 29.9	Sobrepeso
30 ou mais	Obesidade

*/

function calcularIMC (peso, altura){
    let IMC = (peso/(altura*altura))
    if (IMC < 18.5){
        classificacao = ("Abaixo do peso")
    } else if (IMC >=18.5 && IMC <=24.9){
        classificacao = ("Peso Normal")
    } else if (IMC >=25 && IMC <=29.9){
        classificacao = ("Sobrepeso")
    } else{
        classificacao= ("Obesidade")
    }

}

calcularIMC (60, 1.65)
    console.log("Seu IMC É " + classificacao)
calcularIMC (30, 1.80)
    console.log("Seu IMC É " + classificacao)
calcularIMC (90, 1.50)
    console.log("Seu IMC É " + classificacao)