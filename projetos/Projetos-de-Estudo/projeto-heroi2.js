class heroi {
	constructor (nome, idade, tipo){
		this. nome = nome
		this. Idade = idade
		this. tipo = tipo
	}
	atacar (){
		let ataque;
	If (this.tipo === "mago") {
	ataque = "magia";
	} else if (this.tipo === "guerreiro"){
	Ataque = "espada"
	} else if (this.tipo === "monge"){
	ataque = "artes maciais"
	} else if (this.tipo === "ninja"){
	ataque = "shuriken"
	} else {
	Ataque = "ataque indefinido"
	}
	
	console.log (`o ${this.tipo} atacou usando {ataque}`)

}
