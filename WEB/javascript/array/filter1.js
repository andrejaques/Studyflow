/* Retorna um novo array com todos os elementos que satisfazem a condição */

const arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
console.log(arr)

console.log() // \n

console.log("todos os elementos divisíveis por 3")
const allValuesDiv3 = arr.filter(value => (value % 3) == 0)
console.log(allValuesDiv3)

console.log() // \n

/* exemplo mais completo */
const produtos = [
    { nome: 'Notebook', preco: 2499, fragil: true },
    { nome: 'iPad Pro', preco: 4199, fragil: true },
    { nome: 'Copo de Vidro', preco: 12.49, fragil: true },
    { nome: 'Copo de Plástico', preco: 18.99, fragil: false }
]

console.log(produtos.filter(function(p) {
    return false
}))

const caro = produto => produto.preco >= 500
const fragil = produto => produto.fragil

console.log(produtos.filter(caro).filter(fragil))