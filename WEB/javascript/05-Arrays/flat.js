/* Retorna um novo array com todos os elementos
de um sub-array concatenados de forma recursiva de acordo
com a profundidade(depth) */

const arr = [1, 2, [3, 4], 5]
console.log(arr)

const arrayFlat = arr.flat()
console.log(arrayFlat)

console.log() //\n

// se tiver mais profundo, tem que ser específico a profundidade de concatenacao

const arr2 = [1, 2, [3, 4, [5, 6, [7, 8], 9], 10], 11, 12]
console.log(arr2)

console.log() // \n

console.log("flat(1)") // flat1
const arr2Flat = arr2.flat(1)
console.log(arr2Flat)

console.log() // \n

console.log("flat(2)") // flat2
const arr2Flat2 = arr2.flat(2)
console.log(arr2Flat2)

console.log() // \n

console.log("flat(3)") // flat3
const arr2Flat3 = arr2.flat(3)
console.log(arr2Flat3)