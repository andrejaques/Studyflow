/* Buscadores de elementos em array */

const arr = [1, 2, 3, 4]
console.log(arr)

console.log()  // \n

/* find */ 
//retorna o primeiro item de um array que satisfaz a condição

console.log("Primeiro número divisível por 3. (arr.find()")
const firstDiv3 = arr.find(value => value % 3 === 0)
console.log(firstDiv3)

console.log() // \n

/* findIndex */ 
// Retorna o índice do primeiro item de um array que satisfaz a condição

console.log("Índice do primeiro número divisível por 3. (arr.findIndex())")
const fisrtIndexDiv3 = arr.findIndex(value => value % 3 === 0)
console.log(fisrtIndexDiv3)

/* filter */ 
// possui um arquivo separado explicando

console.log() // \n

/* indexOf */
// retorna o primeiro índice em que um elemento pode ser encontrado no array 

console.log("Novo array2")
const arr2 = [1, 2, 3, 4, 5, 6, 7, 2, 3, 7, 5]
console.log(arr2)

console.log() // \n

console.log("primeiro índice do elemento 3. (arr2.indexOf())")
const firstIndexOfItem = arr2.indexOf(3)

console.log(firstIndexOfItem)

console.log() // \n

/* lastIndexOf */
// retorna o último índice em que um elemento pode ser encontrado no array 

console.log("último índice do elemento 3. (arr2.lastIndexOf())")
const lastIndexOfItem = arr2.lastIndexOf(3)

console.log(lastIndexOfItem)

console.log() // \n

/* includes */
// Retorna um booleano verificando se determinado elemento existe no array

console.log("O número 1 está incluso no array? (arr2.includes())")
const hasItemOne = arr2.includes(1)
console.log(hasItemOne)
console.log("E o número 3?")
const hasItemThree = arr2.includes(3)
console.log(hasItemThree)

console.log() // \n

/* some */

// Retorna um booleano verificando se pelo menos um item do array satisfaz a condição 

console.log("Tem algum número par no arr2? (arr2.some())")

const hasSomeEvenNumber = arr.some(value => value % 2 === 0)
console.log(hasSomeEvenNumber)

console.log() // \n

/* every */

// Retorna um booleano verificando se todos os itens do array satisfazem a condição 

console.log("Todos os itens do arr2 são pares? (arr2.every())")

const hasEveryEvenNumber = arr.every(value => value % 2 === 0)
console.log(hasEveryEvenNumber)

console.log() // \n

/* sort */

// Ordena os elementos de um array de acordo com a condição

console.log("altera a ordem do arr2 para ficar do menor para o maior. (arr.sort)")

const sortedArray = arr2.sort()
console.log(sortedArray)

console.log() // \n

/* reverse */

// inverte a ordem dos elementos de um array

console.log("inverter a ordem dos elementos do array1. (arr.reverse)")

const invertedArray = arr.reverse()
console.log(invertedArray)

console.log() // \n

/* join */

// junta todos os elementos de um array, separados por um delimitador e retorna uma strin

console.log("concatenando todo o array e separando por ^^. arr.join('^^')")

const joinedArray = arr.join('^^')
console.log(joinedArray)

/* reduce tem aba própria explicando */

