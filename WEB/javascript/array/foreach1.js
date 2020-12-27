/* ForEach faz a interação com cada elemento dentro do array */

const highestScore = ['Zim', 'Lord Xant', 'JurgeMaster', 'Pato Bolado']

// Função para listar e enumerar cada componente do array

console.log("função para listar e enumerar cada componente do array")
highestScore.forEach(function(nome, indice) {
    console.log(`${indice + 1}) ${nome}`)
})

console.log() // \n

// Função para exibir apenas o nome

console.log("Função para exibir apenas o nome")

// método 01
console.log("Método 01")
highestScore.forEach(nome => console.log(nome))

console.log() // \n

console.log("método 02")
const exibirAprovados = aprovado => console.log(aprovado)
highestScore.forEach(exibirAprovados)