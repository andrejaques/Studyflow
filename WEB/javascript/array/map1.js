/* Retorna um novo array a partir da expressão em cima de um array pre existente */

const nums = [1, 2, 3, 4, 5]
console.log(nums)

console.log() // \n

// Novo array, com cada valor dobrado
console.log("novo array com todos os valores dobrados")
let resultado = nums.map(function(e) {
    return e * 2
})

console.log(resultado)

console.log() // \n

// Aplicando mútiplas expresões simultaneamente
console.log("Aplicando multiplas expressões no mesmo map")

const soma10 = e => e + 10
const triplo = e => e * 3
const paraDinheiro = e => `R$ ${parseFloat(e).toFixed(2).replace('.', ',')}`

console.log("nums.map(soma10).map(triplo).map(paraDinheiro)")

console.log() // \n

resultado = nums.map(soma10).map(triplo).map(paraDinheiro)
console.log(resultado)