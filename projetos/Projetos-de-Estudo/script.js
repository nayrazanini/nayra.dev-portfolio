
document.addEventListener("DOMContentLoaded", () => {
    const container = document.getElementById("questionarios");

    for (let i = 1; i <= 4; i++) {
        const card = document.createElement("div");
        card.className = "bg-gray-800 p-4 rounded shadow";

        const titulo = document.createElement("h2");
        titulo.className = "text-lg font-bold text-red-400 mb-2";
        titulo.textContent = `QUESTIONÁRIO ${i}`;
        card.appendChild(titulo);

        for (let j = 1; j <= 3; j++) {
            const input = document.createElement("input");
            input.type = "number";
            input.step = "0.01";
            input.placeholder = `Tentativa ${j}`;
            input.className = "tentativa block w-full p-2 mb-2 rounded bg-gray-700 text-white";
            card.appendChild(input);
        }

        container.appendChild(card);
    }

    container.addEventListener("input", calcularNotaFinal);
});

function calcularNotaFinal() {
    const blocos = document.querySelectorAll("#questionarios > div");
    let notaFinal = 0;
    let questionariosRespondidos = 0;

    blocos.forEach(bloco => {
        const inputs = bloco.querySelectorAll("input");
        const valores = [...inputs].map(i => parseFloat(i.value)).filter(v => !isNaN(v));
        if (valores.length > 0) {
            const soma = valores.reduce((a, b) => a + b, 0);
            const media = soma / valores.length;
            notaFinal += media;
            questionariosRespondidos++;
        }
    });

    document.getElementById("notaFinal").textContent = `${notaFinal.toFixed(3)} (${questionariosRespondidos} questionários realizados)`;
}
