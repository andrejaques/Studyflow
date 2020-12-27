/* Cria uma instância do array a partide do número de parâmetros informados */

console.log("Cria uma instância do array com os parâmetros informados")
const arr = Array.of(1, 2, 3)
console.log(arr)

console.log () // \n

// Aceita colocar números e funções
console.log("Aceita colocar números e funções")
let functionName = (name) => name
const persons = Array.of('Andre', 'Pedro', 'João', 517, functionName("Anna"))
console.log(persons)

console.log() // \n

// Se for colocado apenas um número, cria um array de tamanho do número
const arr2 = Array(6)
console.log(arr2)

console.log("observar que existem todos os itens vazios")
 arr2.push('Carro')
 arr2.splice(2, 2, "Moto", "Avião")
 console.log(arr2)

 console.log() // \n

// Apenas Array é semelhante a Array.of
const arr3 = Array("Joao", 3, "Ebi Camargo")
console.log(arr3)

