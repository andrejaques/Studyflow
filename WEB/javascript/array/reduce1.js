/* reduce retorna um novo tipo de dado iterando cada posição do array */

/*   sintax - array.reduce(function(acumulado, valorAtual) 
{
    return regra-para-o-reduce
}, valor-inicial-do-acumulado)

    sintax2 - array.reduce((acumulado, valorAtual) => acumulado + valorAtual, 0)
*/

const arr = [1, 2, 3, 4, 5]
console.log(arr)

console.log() // \n

console.log("soma de todos os números do array. (arr.reduce())")
const reducedArray = arr.reduce((total, value) => total += value, 0)
console.log(reducedArray)

console.log() // \n

/* exemplo mais elaborado */
const alunos = [
    { nome: 'João', nota: 7.3, bolsista: false },
    { nome: 'Maria', nota: 9.2, bolsista: true },
    { nome: 'Pedro', nota: 9.8, bolsista: false },
    { nome: 'Ana', nota: 8.7, bolsista: true }
]

console.log(alunos.map(a => a.nota))

console.log() // \n

const resultado = alunos.map(a => a.nota).reduce(function(acumulador, atual) {
    console.log(acumulador, atual)
    return acumulador + atual
}, 0)

console.log() // \n

console.log(resultado)