
// Classificador de Herói
let nome = "Spartacus"
let quantidadeXp = 0
let nivel = ""

    if (quantidadeXp <=1000) {
        nivel = "Ferro"
    }
    else if (quantidadeXp >=1001 && quantidadeXp <=2000){
        nivel = "Bronze"
    }
    else if (quantidadeXp >=2001 && quantidadeXp <=5000){
        nivel = "Prata"
    }
    else if (quantidadeXp >=5001 && quantidadeXp <= 7000){
        nivel = "ouro"
    }
    else if (quantidadeXp >=7001 && quantidadeXp <=8000){
        nivel = "platina"
    }
    else if (quantidadeXp >=8001 && quantidadeXp <=9000){
        nivel = "Ascendente"
    }
  else if (quantidadeXp >=9001 && quantidadeXp <= 10000){
         nivel = "Imortal"
  }
  else if (quantidadeXp >= 10000){
        nivel = "Radiante"
 }

 console.log ("O herói de " + nome + "está no " + nivel)